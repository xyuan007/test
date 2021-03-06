#encoding: utf-8

import requests
import json,threading
from .Utils import xmlUtil,JsonUtil,FuncUtil
from .publicData import publicData
import logging.config

logging.config.fileConfig("logger.conf");
logger = logging.getLogger("xzs")

class httpExecuter:
    @staticmethod
    def executeHttpRequest(methodname,casename,casedata):
        res = {}
        pd = publicData.instance()

        configEle = xmlUtil.getConfigEleByMethod(r'%s\config\api.xml'%(pd.getMainDir()), methodname)
        url = configEle.find('url').text
        protocol = configEle.find('protocol').text
        output = casedata.get('output')

        logger.info('-------------------------------')
        logger.info('TestMethod,CaseName:%s,%s'%(methodname,casename))
        logger.info('Url:%s'%(url))
        logger.info('Data:%s'%(str(httpExecuter.__getBodyByCasedata(casedata,protocol))))

        if protocol == 'post':
            res = httpExecuter.__postExecute(url,casedata,protocol)
        elif protocol == 'get':
            res = httpExecuter.__getExecute(url,casedata,protocol)
        elif protocol == 'json':
            res = httpExecuter.__postJson(url,casedata,protocol)

        logger.info('Response:%s'%(res.text.replace('\n',"").replace('\r',"")))

        if res.status_code == 200:
            #输出output
            if output != None:
                outkey = casedata.get(output)
                outresult = None
                try:
                    outresult = JsonUtil.getJsonStrByPar(res.text,outkey)
                except NameError:
                    pass

                lock = threading.Lock()
                lock.acquire()
                try:
                    pd.setOutput('%s_%s' % (output, threading.currentThread().ident), outresult)
                finally:
                    lock.release()
        return res



    @staticmethod
    def __postExecute(url,casedata,protocol):
        r = requests.post(url, data=httpExecuter.__getBodyByCasedata(casedata,protocol), verify=False)
        return r

    @staticmethod
    def __getExecute(url,casedata,protocol):
        r = requests.get(url,params=httpExecuter.__getBodyByCasedata(casedata,protocol), verify=False)
        return r

    @staticmethod
    def __postJson(url,casedata,protocol):
        headers = {'Content-Type': 'application/json'}
        r = requests.post(url, headers=headers, data=json.dumps(httpExecuter.__getBodyByCasedata(casedata,protocol)), verify=False)
        return r

    #通过TestCase的节点生成Json数据
    @staticmethod
    def __getBodyByCasedata(casedata,protocol):
        body = {}
        for i in range(len(casedata)):
            if casedata[i].get('type') == None:
                if len(casedata[i].getchildren()) > 0:
                    res = httpExecuter.__getBodyByCasedata(casedata[i],protocol)
                    body[casedata[i].tag] = res
                #无子元素，直接拿值
                else:
                    body[casedata[i].tag] = casedata[i].text
            elif casedata[i].get('type') == "func":
                method = casedata[i].get('method')
                param = casedata[i].get('param')
                result = getattr(FuncUtil, method)(param)
                body[casedata[i].tag] = result
            elif casedata[i].get('type') == "array":
                if protocol == 'json':
                    # 有多个相同的子元素，以JSON数组处理
                    if len(casedata[i].getchildren()) > 0:
                        temparray = []
                        res = None
                        for j in range(len(casedata[i].getchildren())):
                            res = httpExecuter.__getBodyByCasedata(casedata[i][j],protocol)
                            temparray.append(res)
                        body[casedata[i].tag] = temparray
                    elif len(casedata[i].text) > 0:
                        body[casedata[i].tag] = casedata[i].text.split(',')
                    else:
                        body[casedata[i].tag] = []
                elif protocol == 'post':
                    if len(casedata[i].getchildren()) > 0:
                        prefix = casedata[i].tag + "[0]"
                        for j in range(len(casedata[i].getchildren())):
                            subobj = casedata[i].getchildren()[j]
                            body[prefix+'[' + subobj.tag + ']'] = subobj.text

        return body

