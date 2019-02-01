-- --删除公开课相关记录，包括 公开课，报名记录，优惠券领取记录
DELETE FROM Tpo_PublicClass_SignUp where PublicID in ('999','1000','1001','1002','1003');
DELETE FROM Tpo_Discount_Receive_Record WHERE UnionId = 'olErev3DmPpgdDMktOmX_3V0R_zg';
DELETE FROM Tpo_PublicClass WHERE  PublicID in ('999','1000','1001','1002','1003');
-- --删除活动相关记录，包括活动，报名记录，班级，阶段，答疑间
DELETE FROM Tpo_PublicClass_Activities WHERE ActivityID in ('999','1000','1001','1002','1003','1004');
DELETE FROM Tpo_PublicClass_Activitity_SignUp where ActivityID in ('999','1000','1001','1002','1003','1004');
DELETE FROM Zhan_Operation_Activities_Group WHERE GroupID in ('999','1000','1001','1002','1003','1004');
DELETE FROM Tpo_PublicClass_Activitity_Moment WHERE ActivitityID in ('999','1000','1001','1002','1003','1004');
DELETE FROM Tpo_PublicClass_Activities_Course WHERE ID in ('999','1000','1001','1002','1003','1004');
DELETE FROM Zhan_Operation_Lesson WHERE ActivityId in ('999','1000','1001','1002','1003','1004');
DELETE FROM zhan_operation_microclass_advertisement WHERE ActivityId in ('999','1000','1001','1002','1003','1004');
-- --删除中奖记录
DELETE FROM Tpo_PublicClass_Activitity_Award WHERE ActivityID in ('999','1000','1001','1002','1003','1004');
DELETE FROM Tpo_PublicClass_Activitity_Award_Record WHERE ActivityID in ('999','1000','1001','1002','1003','1004');
-- --删除活动答题记录
DELETE FROM Zhan_Operation_Activities_Work WHERE ActivityID in ('999','1000','1001','1002','1003','1004');
-- --删除用户的积分记录
DELETE FROM Zhan_Operation_Points_TaskRecord WHERE PassportId in ('1863271','7791870');
DELETE FROM Zhan_Operation_Points_Tracing WHERE PassportId in ('1863271','7791870');
-- --删除用户数据
-- --原来的21905(7553767)-现在的531457(7791870)
-- --21915()-531404(8661563)
-- --现在的531059(1863271)
DELETE FROM Tpo_PublicClass_SignUp_Users WHERE signupuserid in ('531059','531457','531404') or unionid = '111';
-- --删除用户提问相关数据
DELETE FROM Zhan_Operation_Question_Label WHERE ActivityID in ('999','1000');
DELETE FROM Zhan_Operation_User_Question WHERE ActivityID in ('999','1000');
DELETE FROM Zhan_Operation_User_Question WHERE PassportId in ('1863271');
DELETE FROM Zhan_Operation_User_Question WHERE ID in ('999','1000');
DELETE FROM Zhan_Operation_Question_Follow WHERE PassportId in ('1863271');
-- --删除课程站数据
DELETE FROM Zhan_Operation_CourseMall_Campaign WHERE TeacherIds = '1359' or ID in ('34','35');
DELETE FROM Zhan_Operation_CourseMall_Course WHERE TeacherId = '1925' or ID IN ('29','30','31');
DELETE FROM Zhan_Operation_CourseMall_CourseDetail WHERE ID IN ('29','30');
DELETE FROM Zhan_Operation_CourseMall_CourseRelationship WHERE FullCourseID IN ('30','31');
-- --基础数据
-- --新建3个公开课:1000--正在直播，1001--明天直播，1002--已结束,1003--精品公开课(不能报名）
INSERT INTO Tpo_PublicClass (PublicID, PublicTitle, Description, PublicCategory, PublicType, PublicSubType, TeacherID, WebCastId, AssistantJoinUrl, OrganizerJoinUrl, AttendeeJoinUrl, AttendeeViewUrl, StartTime, EndTime, CreateTime,CreatedBy, UpdateTime, UpdatedBy, IsDeleted, QRCodeUrl, AdvertisingPositionUrl, SignUpLevel, BigPhotoUrl, ShowInPublic, SaleKeyWords, PublicSort)  VALUES ('1000', 'ToeflTest', '托福测试公开课', '0', '2', '250', '15153', '50f8d1a06d7a4e86a5ec07e94670e91e', '', '', '', '', DATE_SUB(NOW(),INTERVAL 2 HOUR), DATE_ADD(NOW(),INTERVAL 2 HOUR), '2016-12-07 15:51:36', '1', '2016-12-07 16:08:05',  '1', '0', 'QRCODEURL', '4adb77f584bf4ae5ad5c40a1cc1ab71e20161207160804413', '0', 'BigPhotoUrl', '1', 'SaleKeyWords','0');
INSERT INTO Tpo_PublicClass (PublicID, PublicTitle, Description, PublicCategory, PublicType, PublicSubType, TeacherID, WebCastId, AssistantJoinUrl, OrganizerJoinUrl, AttendeeJoinUrl, AttendeeViewUrl, StartTime, EndTime, CreateTime, CreatedBy, UpdateTime, UpdatedBy, IsDeleted, QRCodeUrl, AdvertisingPositionUrl, SignUpLevel, BigPhotoUrl, ShowInPublic, SaleKeyWords, PublicSort) VALUES ('1001', 'IeltsTest', '雅思测试公开课', '1', '3', '256', '15153', '50f8d1a06d7a4e86a5ec07e94670e91e', '', '', '', '', DATE_ADD(NOW(),INTERVAL 1 DAY), DATE_ADD(NOW(),INTERVAL 2 DAY), '2016-12-07 15:51:36', '1', '2016-12-07 16:08:05', '1', '0', 'QRCODEURL', '4adb77f584bf4ae5ad5c40a1cc1ab71e20161207160804413', '0', 'BigPhotoUrl', '1', 'SaleKeyWords','0');
INSERT INTO Tpo_PublicClass (PublicID, PublicTitle, Description, PublicCategory, PublicType, PublicSubType, TeacherID, WebCastId, AssistantJoinUrl, OrganizerJoinUrl, AttendeeJoinUrl, AttendeeViewUrl, StartTime, EndTime, CreateTime, CreatedBy, UpdateTime, UpdatedBy, IsDeleted, QRCodeUrl, AdvertisingPositionUrl, SignUpLevel, BigPhotoUrl, ShowInPublic, SaleKeyWords, PublicSort) VALUES ('1002', 'EndTest', '已结束的公开课', '0', '3', '256', '15153', '50f8d1a06d7a4e86a5ec07e94670e91e', '', '', '', '', '2017-12-07 12:00:00', '2017-12-07 15:00:00', '2016-12-07 15:51:36', '1', '2016-12-07 16:08:05', '1', '0', 'QRCODEURL', '4adb77f584bf4ae5ad5c40a1cc1ab71e20161207160804413', '0', 'BigPhotoUrl', '1', 'SaleKeyWords','0');
INSERT INTO Tpo_PublicClass (PublicID, PublicTitle, Description, PublicCategory, PublicType, PublicSubType, TeacherID, WebCastId, AssistantJoinUrl, OrganizerJoinUrl, AttendeeJoinUrl, AttendeeViewUrl, StartTime, EndTime, CreateTime,CreatedBy, UpdateTime, UpdatedBy, IsDeleted, QRCodeUrl, AdvertisingPositionUrl, SignUpLevel, BigPhotoUrl, ShowInPublic, SaleKeyWords, PublicSort)  VALUES ('1003', '精品公开课', '精品公开课', '0', '2', '250', '15153', '50f8d1a06d7a4e86a5ec07e94670e91e', '', '', '', '', DATE_SUB(NOW(),INTERVAL 2 HOUR), DATE_ADD(NOW(),INTERVAL 2 HOUR), '2016-12-07 15:51:36', '1', '2016-12-07 16:08:05',  '1', '0', 'QRCODEURL', '4adb77f584bf4ae5ad5c40a1cc1ab71e20161207160804413', '1', 'BigPhotoUrl', '1', 'SaleKeyWords','0');
-- --新建几个活动1000：托福活动-已开始，1001：雅思活动-未开始已开始报名，1002：托福活动-未开始未开始报名,1003:托福已结束，1004，雅思已开始
INSERT INTO Tpo_PublicClass_Activities (ActivityID, ActivityTitle, ActivityDescription, SignUpExpectCount, SignUpActualCount, StartTime, EndTime, CreateTime, CreatedBy, UpdateTime, UpdatedBy, IsDeleted, LinkUrl, ActivityCategory,ActivityShortDescription, ActivityTip, CoverImageUrl, ActivityType, AdvertiseStartTime, AdvertiseEndTime, AssistentWechatID, CheckCode, TeacherIds, QRCodeUrl, BindAccountUrl, ActivityItem, ActivityLabel, SuitCrowds, SolveProblems, RecruitVideo, RecruitImage, OpeningVideo, OpeningImage,ActivitySort, ActivityStatus) VALUES ('1000', 'ToeflTest', '托福活动-已开始已报名', '3000', '12',DATE_SUB(NOW(),INTERVAL 1 DAY), DATE_ADD(NOW(),INTERVAL 1 DAY), '2018-02-05 16:40:51', '1', '2018-02-07 10:55:10', '1', '0', '', '2', '活动短描述', '入群须知测试123', '59e98ae765144f38b5221d99bc92bbd820180205164128764', '9982', DATE_SUB(NOW(),INTERVAL 15 DAY), DATE_SUB(NOW(),INTERVAL 5 DAY), '7', '测试', '488', '', '3197558d421649b0ac0333331dea9db620180207105510', '9901', '', '目标,渴望老师指导', '不懂评分标准,题型区分不清,语法错误太多', '892db97b11d50e2c099b4c6964ccbe60', 'bc8f2887f2d1c55a3f5f3dd3f16fdd0e', '', '', 1, 1);
INSERT INTO Tpo_PublicClass_Activities (ActivityID, ActivityTitle, ActivityDescription, SignUpExpectCount, SignUpActualCount, StartTime, EndTime, CreateTime, CreatedBy, UpdateTime, UpdatedBy, IsDeleted, LinkUrl, ActivityCategory,ActivityShortDescription, ActivityTip, CoverImageUrl, ActivityType, AdvertiseStartTime, AdvertiseEndTime, AssistentWechatID, CheckCode, TeacherIds, QRCodeUrl, BindAccountUrl, ActivityItem, ActivityLabel, SuitCrowds, SolveProblems, RecruitVideo, RecruitImage, OpeningVideo, OpeningImage,ActivitySort, ActivityStatus) VALUES ('1001', 'IeltsTest1', '雅思活动-未开始已报名', '3000', '12',DATE_ADD(NOW(),INTERVAL 10 DAY), DATE_ADD(NOW(),INTERVAL 25 DAY), '2018-02-05 16:40:51', '1', '2018-02-07 10:55:10', '1', '0', '', '3', '活动短描述', '入群须知测试123', '59e98ae765144f38b5221d99bc92bbd820180205164128764', '9982', DATE_SUB(NOW(),INTERVAL 10 DAY), DATE_ADD(NOW(),INTERVAL 5 DAY), '7', '测试', '1359', '', '3197558d421649b0ac0333331dea9db620180207105510', '9911', '', '目标,渴望老师指导', '不懂评分标准,题型区分不清,语法错误太多', '892db97b11d50e2c099b4c6964ccbe60', 'bc8f2887f2d1c55a3f5f3dd3f16fdd0e', '', '', 1, 1);
INSERT INTO Tpo_PublicClass_Activities (ActivityID, ActivityTitle, ActivityDescription, SignUpExpectCount, SignUpActualCount, StartTime, EndTime, CreateTime, CreatedBy, UpdateTime, UpdatedBy, IsDeleted, LinkUrl, ActivityCategory,ActivityShortDescription, ActivityTip, CoverImageUrl, ActivityType, AdvertiseStartTime, AdvertiseEndTime, AssistentWechatID, CheckCode, TeacherIds, QRCodeUrl, BindAccountUrl, ActivityItem, ActivityLabel, SuitCrowds, SolveProblems, RecruitVideo, RecruitImage, OpeningVideo, OpeningImage,ActivitySort, ActivityStatus) VALUES ('1002', 'ToeflTest1', '托福活动-未开始未报名', '3000', '12',DATE_ADD(NOW(),INTERVAL 10 DAY), DATE_ADD(NOW(),INTERVAL 25 DAY), '2018-02-05 16:40:51', '1', '2018-02-07 10:55:10', '1', '0', '', '2', '活动短描述', '入群须知测试123', '59e98ae765144f38b5221d99bc92bbd820180205164128764', '9982', DATE_SUB(NOW(),INTERVAL 10 DAY), DATE_ADD(NOW(),INTERVAL 5 DAY), '7', '测试', '488', '', '3197558d421649b0ac0333331dea9db620180207105510', '9902', '', '目标,渴望老师指导', '不懂评分标准,题型区分不清,语法错误太多', '892db97b11d50e2c099b4c6964ccbe60', 'bc8f2887f2d1c55a3f5f3dd3f16fdd0e', '', '', 1, 1);
INSERT INTO Tpo_PublicClass_Activities (ActivityID, ActivityTitle, ActivityDescription, SignUpExpectCount, SignUpActualCount, StartTime, EndTime, CreateTime, CreatedBy, UpdateTime, UpdatedBy, IsDeleted, LinkUrl, ActivityCategory,ActivityShortDescription, ActivityTip, CoverImageUrl, ActivityType, AdvertiseStartTime, AdvertiseEndTime, AssistentWechatID, CheckCode, TeacherIds, QRCodeUrl, BindAccountUrl, ActivityItem, ActivityLabel, SuitCrowds, SolveProblems, RecruitVideo, RecruitImage, OpeningVideo, OpeningImage,ActivitySort, ActivityStatus) VALUES ('1003', 'ToeflTest2', '托福活动-已结束', '3000', '12',DATE_SUB(NOW(),INTERVAL 20 DAY), DATE_SUB(NOW(),INTERVAL 10 DAY), '2018-02-05 16:40:51', '1', '2018-02-07 10:55:10', '1', '0', '', '2', '活动短描述', '入群须知测试123', '59e98ae765144f38b5221d99bc92bbd820180205164128764', '9982', DATE_SUB(NOW(),INTERVAL 30 DAY), DATE_SUB(NOW(),INTERVAL 15 DAY), '7', '测试', '488', '', '3197558d421649b0ac0333331dea9db620180207105510', '9902', '', '目标,渴望老师指导', '不懂评分标准,题型区分不清,语法错误太多', '892db97b11d50e2c099b4c6964ccbe60', 'bc8f2887f2d1c55a3f5f3dd3f16fdd0e', '', '', 1, 1);
INSERT INTO Tpo_PublicClass_Activities (ActivityID, ActivityTitle, ActivityDescription, SignUpExpectCount, SignUpActualCount, StartTime, EndTime, CreateTime, CreatedBy, UpdateTime, UpdatedBy, IsDeleted, LinkUrl, ActivityCategory,ActivityShortDescription, ActivityTip, CoverImageUrl, ActivityType, AdvertiseStartTime, AdvertiseEndTime, AssistentWechatID, CheckCode, TeacherIds, QRCodeUrl, BindAccountUrl, ActivityItem, ActivityLabel, SuitCrowds, SolveProblems, RecruitVideo, RecruitImage, OpeningVideo, OpeningImage,ActivitySort, ActivityStatus) VALUES ('1004', 'IeltsTest', '雅思活动-已开始已报名', '3000', '12',DATE_SUB(NOW(),INTERVAL 1 DAY), DATE_ADD(NOW(),INTERVAL 5 DAY), '2018-02-05 16:40:51', '1', '2018-02-07 10:55:10', '1', '0', '', '3', '活动短描述', '入群须知测试123', '59e98ae765144f38b5221d99bc92bbd820180205164128764', '9982', DATE_SUB(NOW(),INTERVAL 15 DAY), DATE_SUB(NOW(),INTERVAL 5 DAY), '7', '测试', '1359', '', '3197558d421649b0ac0333331dea9db620180207105510', '9911', '', '目标,渴望老师指导', '不懂评分标准,题型区分不清,语法错误太多', '892db97b11d50e2c099b4c6964ccbe60', 'bc8f2887f2d1c55a3f5f3dd3f16fdd0e', '', '', 1, 1);
-- --531059报名活动1000，然后绑定了1000下的班级,写过晋级表单，晋级到第一阶段
-- --531059报名活动1001，1002，1003
INSERT INTO Tpo_PublicClass_Activitity_SignUp (ActivityID, ChannelCode, CreatedBy, CreateTime, SignUpUserID, IsAudit, TimeStamp, GroupName, GroupNickName, MomentID, Moment, CheckinCount, HomeworkCount, HomeworkAccuracy, PromotionCount, MicroClassCount) VALUES ('1000', 'LY2016111506', '1', '2017-01-07 16:20:57', '531059', '1', DEFAULT, '活动微信群', 'testName', 1000, '第1阶段', 0, 0, 0, 1, 0);
INSERT INTO Tpo_PublicClass_Activitity_SignUp (ActivityID, ChannelCode, CreatedBy, CreateTime, SignUpUserID, IsAudit, TimeStamp, GroupName, GroupNickName, MomentID, Moment, CheckinCount, HomeworkCount, HomeworkAccuracy, PromotionCount, MicroClassCount) VALUES ('1001', 'LY2016111506', '1', '2017-01-07 16:20:57', '531059', '1', DEFAULT, '', '', null, '', 0, 0, 0, 0, 0);
INSERT INTO Tpo_PublicClass_Activitity_SignUp (ActivityID, ChannelCode, CreatedBy, CreateTime, SignUpUserID, IsAudit, TimeStamp, GroupName, GroupNickName, MomentID, Moment, CheckinCount, HomeworkCount, HomeworkAccuracy, PromotionCount, MicroClassCount) VALUES ('1002', 'LY2016111506', '1', '2017-01-07 16:20:57', '531059', '1', DEFAULT, '', '', null, '', 0, 0, 0, 0, 0);
INSERT INTO Tpo_PublicClass_Activitity_SignUp (ActivityID, ChannelCode, CreatedBy, CreateTime, SignUpUserID, IsAudit, TimeStamp, GroupName, GroupNickName, MomentID, Moment, CheckinCount, HomeworkCount, HomeworkAccuracy, PromotionCount, MicroClassCount) VALUES ('1003', 'LY2016111506', '1', '2017-01-07 16:20:57', '531059', '1', DEFAULT, '', '', null, '', 0, 0, 0, 0, 0);
-- --531457(7791870)报名活动1000
INSERT INTO Tpo_PublicClass_Activitity_SignUp (ActivityID, ChannelCode, CreatedBy, CreateTime, SignUpUserID, IsAudit, TimeStamp, GroupName, GroupNickName, MomentID, Moment, CheckinCount, HomeworkCount, HomeworkAccuracy, PromotionCount, MicroClassCount) VALUES ('1000', 'LY2016111506', '1', '2017-01-07 16:20:57', '531457', '1', DEFAULT, '', '', null, '', 0, 0, 0, 0, 0);
-- --531059,531457报名1000的公开课
INSERT INTO Tpo_PublicClass_SignUp (PublicID, SignUpUserID, ChannelCode, IsSendMsg, CreateTime, CreatedBy, TimeStamp, IsView) VALUES ('1000', '531059', 'LY2016111506', '0', '2016-12-07 14:49:28', '1', DEFAULT, 0);
INSERT INTO Tpo_PublicClass_SignUp (PublicID, SignUpUserID, ChannelCode, IsSendMsg, CreateTime, CreatedBy, TimeStamp, IsView) VALUES ('1000', '531457', 'LY2016111506', '0', '2016-12-07 14:49:28', '1', DEFAULT, 0);
-- --新建活动的班级,1000有两个班级
INSERT INTO Zhan_Operation_Activities_Group (GroupID, GroupName, ActivityID, LinkUrlDivideClass, LinkUrlSignIn, DepartmentId, Remark, IsDeleted, CreateTime, CreatedBy, UpdateTime, UpdatedBy, TimeStamp) VALUES ('1000', '活动微信群', '1000', 'http://testDivideClassLink.com/?ActivityID=11414&GroupID=1', 'http://testSignInLink.com/?ActivityID=11414&GroupID=1', '10149', 'Group_Vincent', '0', '2018-02-28 17:29:13.540', '1', '2018-02-28 17:29:13.540', '1', DEFAULT);
INSERT INTO Zhan_Operation_Activities_Group (GroupID, GroupName, ActivityID, LinkUrlDivideClass, LinkUrlSignIn, DepartmentId, Remark, IsDeleted, CreateTime, CreatedBy, UpdateTime, UpdatedBy, TimeStamp) VALUES ('1002', '活动微信群1', '1000', 'http://testDivideClassLink.com/?ActivityID=11414&GroupID=1', 'http://testSignInLink.com/?ActivityID=11414&GroupID=1', '10149', 'Group_Vincent', '0', '2018-02-28 17:29:13.540', '1', '2018-02-28 17:29:13.540', '1', DEFAULT);
INSERT INTO Zhan_Operation_Activities_Group (GroupID, GroupName, ActivityID, LinkUrlDivideClass, LinkUrlSignIn, DepartmentId, Remark, IsDeleted, CreateTime, CreatedBy, UpdateTime, UpdatedBy, TimeStamp) VALUES ('1001', '活动测试群2', '1001', 'http://testDivideClassLink.com/?ActivityID=11414&GroupID=1', 'http://testSignInLink.com/?ActivityID=11414&GroupID=1', '10149', 'Group_Vincent', '0', '2018-02-28 17:29:13.540', '1', '2018-02-28 17:29:13.540', '1', DEFAULT);
INSERT INTO Zhan_Operation_Activities_Group (GroupID, GroupName, ActivityID, LinkUrlDivideClass, LinkUrlSignIn, DepartmentId, Remark, IsDeleted, CreateTime, CreatedBy, UpdateTime, UpdatedBy, TimeStamp) VALUES ('1003', '活动测试群3', '1003', 'http://testDivideClassLink.com/?ActivityID=11414&GroupID=1', 'http://testSignInLink.com/?ActivityID=11414&GroupID=1', '10149', 'Group_Vincent', '0', '2018-02-28 17:29:13.540', '1', '2018-02-28 17:29:13.540', '1', DEFAULT);
INSERT INTO Zhan_Operation_Activities_Group (GroupID, GroupName, ActivityID, LinkUrlDivideClass, LinkUrlSignIn, DepartmentId, Remark, IsDeleted, CreateTime, CreatedBy, UpdateTime, UpdatedBy, TimeStamp) VALUES ('1004', '活动微信群4', '1004', 'http://testDivideClassLink.com/?ActivityID=11414&GroupID=1', 'http://testSignInLink.com/?ActivityID=11414&GroupID=1', '10149', 'Group_Vincent', '0', '2018-02-28 17:29:13.540', '1', '2018-02-28 17:29:13.540', '1', DEFAULT);
-- --活动1000下新增阶段
INSERT INTO Tpo_PublicClass_Activitity_Moment (MomentId, ActivitityId, BeginDate, EndDate, MomentDescription, ReachHomeworkTimes, HasPromotionForm, SignClockCount) VALUES ( '1000', '1000', DATE_ADD(NOW(),INTERVAL 0 DAY), DATE_ADD(NOW(),INTERVAL 1 DAY), '', 0, 0, 0);
INSERT INTO Tpo_PublicClass_Activitity_Moment (MomentId, ActivitityId, BeginDate, EndDate, MomentDescription, ReachHomeworkTimes, HasPromotionForm, SignClockCount) VALUES ( '1001', '1001', DATE_ADD(NOW(),INTERVAL 0 DAY), DATE_ADD(NOW(),INTERVAL 1 DAY), '', 0, 0, 0);
-- --活动奖品列表
INSERT INTO Tpo_PublicClass_Activitity_Award (AwardId,AwardName, AwardWorth, AwardChance, AwardCount, LotteryCount, AwardImage, ActivityId, IsDefault, CreateTime, CreateBy, UpdateTime, UpdateBy, IsDelete) VALUES ('1000', '谢谢惠顾', '0', '99.00', '99999', '4', '24649a46bd63473bae1e45110787a1e020170807112718133', '1000', '1', '2017-12-23 14:13:24', '1', '2017-12-31 22:50:02', '1', '0');
INSERT INTO Tpo_PublicClass_Activitity_Award (AwardId,AwardName, AwardWorth, AwardChance, AwardCount, LotteryCount, AwardImage, ActivityId, IsDefault, CreateTime, CreateBy, UpdateTime, UpdateBy, IsDelete) VALUES ('1001', '一等奖', '100', '1.00', '1', '4', '24649a46bd63473bae1e45110787a1e020170807112718133', '1000', '0', '2017-12-23 14:13:24', '1', '2017-12-31 22:50:02', '1', '0');
-- --用户中奖记录
INSERT INTO Tpo_PublicClass_Activitity_Award_Record (AwardId, SignUpUserId, ActivityId, CreateTime, CreateBy) VALUES ('1000', '531059', '1000', '2017-08-30 13:55:05', '1');
INSERT INTO Tpo_PublicClass_Activitity_Award_Record (AwardId, SignUpUserId, ActivityId, CreateTime, CreateBy) VALUES ('1001', '531059', '1000', '2017-08-30 13:55:05', '1');
-- --课程数据
INSERT INTO Tpo_PublicClass_Activities_Course (ID,ActivityID, CourseType, StartTime, EndTime, VideoUrl, VideoID, CreateTime, CreatedBy, CourseCommand) VALUES ('1000','1000', '5', CONCAT(date_format(now(), '%Y-%m-%d') , ' 00:00:00'), CONCAT(date_format(now(), '%Y-%m-%d') , ' 23:59:00'), '', NULL, '2018-04-17 10:49:59.277', '1', '小站15153');
INSERT INTO Tpo_PublicClass_Activities_Course (ID,ActivityID, CourseType, StartTime, EndTime, VideoUrl, VideoID, CreateTime, CreatedBy, CourseCommand) VALUES ('1002','1000', '5', CONCAT(date_format(DATE_SUB(NOW(),INTERVAL 1 DAY), '%Y-%m-%d') , ' 00:00:00'), CONCAT(date_format(DATE_SUB(NOW(),INTERVAL 1 DAY), '%Y-%m-%d') , ' 23:59:00') , '', NULL, '2018-04-17 10:49:59.277', '1', '小站15153');
INSERT INTO Tpo_PublicClass_Activities_Course (ID,ActivityID, CourseType, StartTime, EndTime, VideoUrl, VideoID, CreateTime, CreatedBy, CourseCommand) VALUES ('1001','1000', '1', CONCAT(date_format(now(), '%Y-%m-%d') , ' 00:00:00'), CONCAT(date_format(now(), '%Y-%m-%d') , ' 23:59:00'), 'http://top2.zhan.com/weiketang/home/index.html?activity_id=25467&course_id=24556', '7', '2018-04-17 10:49:59', '1', '小站15154');
INSERT INTO Tpo_PublicClass_Activities_Course (ID,ActivityID, CourseType, StartTime, EndTime, VideoUrl, VideoID, CourseCommand, CreateTime, CreatedBy) VALUES ('1003', '1000', '3', CONCAT(date_format(now(), '%Y-%m-%d') , ' 00:00:00'), CONCAT(date_format(now(), '%Y-%m-%d'), ' 23:59:00'),'', '125', '', '2018-11-19 11:01:08', '1');
-- --答疑间数据
INSERT INTO Zhan_Operation_Lesson (Id, CourseId, ActivityId, LessonName, TeacherCommand, Guide, Introduction, CreateTime, CreateBy, UpdateTime, UpdateBy) VALUES ('1000', '1003', '1000', '1111', '1111', '', '', '2018-11-19 11:34:31', '1', '2018-11-19 11:34:38', '1');
-- --用户数据
INSERT INTO Tpo_PublicClass_SignUp_Users (signupuserid, passportid, unionid, openid, province, city, sex, country, language, headimgurl, subscribe_time, remark, groupid, qq, mobile, createtime, createdby, nickname, TrueName,WechatID, Guid, CallPhoneStatus, ClassIntention, ClassConsultant, Grade, ExamDate, TimeStamp, AssistentId, passportname, RegSource, subscribe_time_count, IncomingNum, SignPublicClass) VALUES ('531059', '1863271', 'olErev3DmPpgdDMktOmX_3V0R_zg', 'ocNX0jiQi0yMqTLFIKqjG_Z-v8CM', '上海', '浦东新区', '1', '中国', 'zh_C','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJKf4oDHVEb7ibCBRSibVj7dDJ89lbpU6HcVPH8icfNXlZXxzwicm2iclCqD7iae7SLwIcdMUYciaKy8tjWg/132','9816', 'true', '', '2342342', 'u8NedbU.LFzdvNbT7+CLkrmm', '2018-01-03 16:52:41', '1', '梁旭清', '', '234555', 'fe0e1cfe-445d-4bb7-8874-7fe0f13d3ff1', 0, 0, 0, 'A', '2018-01-20', DEFAULT, '1', 'passport_2567464390','PC', 0, 0, '');
INSERT INTO Tpo_PublicClass_SignUp_Users (signupuserid, passportid, unionid, openid, province, city, sex, country, language, headimgurl, subscribe_time, remark, groupid, qq, mobile, createtime, createdby, nickname, TrueName,WechatID, Guid, CallPhoneStatus, ClassIntention, ClassConsultant, Grade, ExamDate, TimeStamp, AssistentId, passportname, RegSource, subscribe_time_count, IncomingNum, SignPublicClass) VALUES ('531457', '7791870', 'olErev3DmPpgdDMktOmX_3V0R_zg', 'ocNX0jiQi0yMqTLFIKqjG_Z-1111', '上海', '浦东新区', '1', '中国', 'zh_C','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJKf4oDHVEb7ibCBRSibVj7dDJ89lbpU6HcVPH8icfNXlZXxzwicm2iclCqD7iae7SLwIcdMUYciaKy8tjWg/132','9816', 'true', '', '2342342', 'u8NedbU.LFzdvNbT7+CLkrmm', '2018-01-03 16:52:41', '1', '梁旭清', '', '234555', 'fe0e1cfe-445d-4bb7-8874-7fe0f13d3ff1', 0, 0, 0, 'A', '2018-01-20', DEFAULT, '1', 'passport_2567464390','PC', 0, 0, '');
INSERT INTO Tpo_PublicClass_SignUp_Users (signupuserid, passportid, unionid, openid, province, city, sex, country, language, headimgurl, subscribe_time, remark, groupid, qq, mobile, createtime, createdby, nickname, TrueName,WechatID, Guid, CallPhoneStatus, ClassIntention, ClassConsultant, Grade, ExamDate, TimeStamp, AssistentId, passportname, RegSource, subscribe_time_count, IncomingNum, SignPublicClass) VALUES ('531404', '8661563', 'olErev3DmPpgdDMktOmX_3V0R_zg', 'ocNX0jiQi0yMqTLFIKqjG_Z-2222', '上海', '浦东新区', '1', '中国', 'zh_C','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJKf4oDHVEb7ibCBRSibVj7dDJ89lbpU6HcVPH8icfNXlZXxzwicm2iclCqD7iae7SLwIcdMUYciaKy8tjWg/132','9816', 'true', '', '2342342', 'u8NedbU.LFzdvNbT7+CLkrmm', '2018-01-03 16:52:41', '1', 'dbx3519765', '', '234555', 'fe0e1cfe-445d-4bb7-8874-7fe0f13d3ff1', 0, 0, 0, 'A', '2018-01-20', DEFAULT, '1', 'passport_3451032170','PC', 0, 0, '');
-- --用户提问相关数据
INSERT INTO Zhan_Operation_Question_Label (Name, ActivityId, CreateTime, CreateBy, UpdateTime, UpdateBy, IsDeleted) VALUES ('作业', '1000', '2018-05-07 13:48:21', '1', '2018-05-07 13:48:21', '1', '0');
-- --用户提问
INSERT INTO Zhan_Operation_User_Question (Id, CourseId, ActivityId, SignUpUserId, PassportId, QuestionCategory, QuertionContent, QuestionLabel, Followers, HasHitKeyWord, HitKeyWords, IsDeleted, CreateTime, UpdateTime, HomeworkIndex, MomentIndex) VALUES ('1000', '1000', '1000', '531059', '1863271', '1', '你是', '24,25,29', '0', '0', '', '0', '2018-05-15 19:28:05', '2018-05-15 19:28:05', '1', '1');
-- --课程站活动
INSERT INTO Zhan_Operation_CourseMall_Campaign (Id, ActivityId, GoodsId, CampaignTitle, StartTime, EndTime, CampaignCategory, CampaignType, CampaignItem, TeacherIds, Url, OriginalCost, CurrentCost,IsOnline, IsDeleted, SourceType, CreateBy, CreateTime, UpdateBy, UpdateTime, AssistentWechatID, OnlineTime, OfflineTime, IsImportant, ImportTime) VALUES ('34', '2401', '152', '范霖老师--托福听力28天提分训练营--未来',DATE_ADD(NOW(),INTERVAL 10 DAY), DATE_ADD(NOW(),INTERVAL 20 DAY), '2', '9985', '9901', '1359', '502dd1e055d949f0bcf49e8c3441bb3320180928142521508', '1000.00', '100.00', '1', '0', '3', '1',DATE_SUB(NOW(),INTERVAL 3 DAY), '1', DATE_ADD(NOW(),INTERVAL 3 DAY), '15', DATE_ADD(NOW(),INTERVAL 10 DAY), DATE_ADD(NOW(),INTERVAL 20 DAY), '1', '2018-09-28 14:29:42');
INSERT INTO Zhan_Operation_CourseMall_Campaign (Id, ActivityId, GoodsId, CampaignTitle, StartTime, EndTime, CampaignCategory, CampaignType, CampaignItem, TeacherIds, Url, OriginalCost, CurrentCost,IsOnline, IsDeleted, SourceType, CreateBy, CreateTime, UpdateBy, UpdateTime, AssistentWechatID, OnlineTime, OfflineTime, IsImportant, ImportTime) VALUES ('35', '2402', '152', '范霖老师--托福听力28天提分训练营--当前',DATE_SUB(NOW(),INTERVAL 1 DAY), DATE_ADD(NOW(),INTERVAL 20 DAY), '2', '9985', '9901', '1359', '502dd1e055d949f0bcf49e8c3441bb3320180928142521508', '1000.00', '100.00', '1', '0', '3', '1',DATE_SUB(NOW(),INTERVAL 3 DAY), '1', DATE_ADD(NOW(),INTERVAL 3 DAY), '15', DATE_SUB(NOW(),INTERVAL 3 DAY), DATE_ADD(NOW(),INTERVAL 30 DAY), '1', '2018-09-28 14:29:42');
-- --课程站课程
INSERT INTO Zhan_Operation_CourseMall_Course (Id, ProductId, GoodsId, CourseCategory, CourseType, CourseSubType, TeacherId, StartTime, EndTime, AdvertisementStartTime, AdvertisementEndTime, CourseName, CourseTime,ExpirationDate, OriginalCost, CurrentCost, Keywords, Thumbnail, CoverImg, CoverVideo, IsOnline, IsDeleted, CreateBy, CreateTime, UpdateBy, UpdateTime, IsImportant, ImportTime) VALUES ('29', '40102', '153', '0', '3', '254', '1925', null, null, null, null, '王雪薇老师战神强化班', '', '', '1888.00', '100.00', '各科,加飞,刚刚,杰伦,王文哲', '', '', '', '1', '0', '1', '2018-09-28 14:32:16', '1', '2018-09-28 14:32:16','1', '2018-09-28 14:32:20');
INSERT INTO Zhan_Operation_CourseMall_Course (Id, ProductId, GoodsId, CourseCategory, CourseType, CourseSubType, TeacherId, StartTime, EndTime, AdvertisementStartTime, AdvertisementEndTime, CourseName, CourseTime,ExpirationDate, OriginalCost, CurrentCost, Keywords, Thumbnail, CoverImg, CoverVideo, IsOnline, IsDeleted, CreateBy, CreateTime, UpdateBy, UpdateTime, IsImportant, ImportTime) VALUES ('30', null, '154', '1', '3', null, '', null, null, null, null, '王雪薇老师全科', '', '', '2000.00', '100.00', '各科,加飞,刚刚,杰伦,王文哲', '', '', '', '1', '0', '1', '2018-09-28 14:32:16', '1', '2018-09-28 14:32:16','1', '2018-09-28 14:32:20');
INSERT INTO Zhan_Operation_CourseMall_Course (Id, ProductId, GoodsId, CourseCategory, CourseType, CourseSubType, TeacherId, StartTime, EndTime, AdvertisementStartTime, AdvertisementEndTime, CourseName, CourseTime,ExpirationDate, OriginalCost, CurrentCost, Keywords, Thumbnail, CoverImg, CoverVideo, IsOnline, IsDeleted, CreateBy, CreateTime, UpdateBy, UpdateTime, IsImportant, ImportTime) VALUES ('31', '40102', '155', '0', '3', '254', '17841', null, null, null, null, '雅思听力强化班', '', '', '1888.00', '100.00', '各科,加飞,刚刚,杰伦,王文哲', '', '', '', '1', '0', '1', '2018-09-28 14:32:16', '1', '2018-09-28 14:32:16','1', '2018-09-28 14:32:20');
-- --课程站课程详情
INSERT INTO Zhan_Operation_CourseMall_CourseDetail (Id, CourseId, CourseStyle, Lecturer, PeriodHours, VAS, PowerPoint, TeachingAims, Syllabus, UpdateBy, UpdateTime) VALUES ('29', '29', '间接+上课', '王雪薇', '100', '', '', '', '', '1', '2018-09-28 14:32:16');
INSERT INTO Zhan_Operation_CourseMall_CourseDetail (Id, CourseId, CourseStyle, Lecturer, PeriodHours, VAS, PowerPoint, TeachingAims, Syllabus, UpdateBy, UpdateTime) VALUES ('30', '30', '间接+上课', '王雪', '100', '', '', '', '', '1', '2018-09-28 14:32:16');
-- --课程站全科与单科关联
INSERT INTO Zhan_Operation_CourseMall_CourseRelationship (Id, FullCourseId, SingleCourseId, CreateBy, CreateTime) VALUES ('30', '30', '29', '1', '2018-09-28 14:34:59');
INSERT INTO Zhan_Operation_CourseMall_CourseRelationship (Id, FullCourseId, SingleCourseId, CreateBy, CreateTime) VALUES ('31', '30', '31', '1', '2018-09-28 14:34:59');
-- --微课堂文章
INSERT INTO zhan_operation_microclass_advertisement (Id,CourseId, ActivityId, ArticleTitle, ArticleUrl, ArticleImage, CreateTime, CreateBy, UpdateTime, UpdateBy) VALUES (1,'1001', '1000', 'TESTING', 'http://www.baidu.com', 'bb17bf5995aa4ef2a4be56fc9330d8ee', '2019-01-21 11:36:05', '1', '2019-01-21 11:42:14', '1');
commit;
