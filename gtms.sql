/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : gtms

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-12-24 17:41:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_account
-- ----------------------------
DROP TABLE IF EXISTS `tb_account`;
CREATE TABLE `tb_account` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(32) NOT NULL,
  `loginPwd` varchar(32) NOT NULL,
  `role` int(8) NOT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_account
-- ----------------------------
INSERT INTO `tb_account` VALUES ('1', 'admin', '111111', '0', '1');
INSERT INTO `tb_account` VALUES ('1000', 'tt1', '111111', '1', '1');
INSERT INTO `tb_account` VALUES ('1001', 'tt2', '111111', '1', '1');
INSERT INTO `tb_account` VALUES ('1002', 'tt3', '111111', '1', '1');
INSERT INTO `tb_account` VALUES ('1003', 'tt4', '111111', '1', '1');
INSERT INTO `tb_account` VALUES ('1004', 'tt5', '111111', '1', '1');
INSERT INTO `tb_account` VALUES ('1005', 'tt6', '111111', '1', '1');
INSERT INTO `tb_account` VALUES ('2000', 'ss1', '111111', '2', '1');
INSERT INTO `tb_account` VALUES ('2001', 'ss2', '111111', '2', '1');
INSERT INTO `tb_account` VALUES ('2002', 'ss3', '111111', '2', '1');
INSERT INTO `tb_account` VALUES ('2003', 'ss4', '111111', '2', '1');
INSERT INTO `tb_account` VALUES ('2004', 'ss5', '111111', '2', '1');
INSERT INTO `tb_account` VALUES ('2005', 'ss6', '111111', '2', '1');
INSERT INTO `tb_account` VALUES ('2006', 'ss7', '111111', '2', '1');
INSERT INTO `tb_account` VALUES ('2007', 'ss8', '111111', '2', '1');
INSERT INTO `tb_account` VALUES ('2008', 'ss9', '111111', '2', '1');

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES ('3000', '新闻传播学院', '022-3000', 'A区', '1');
INSERT INTO `tb_department` VALUES ('3001', '计算机与信息工程学院', '022-3001', 'B区', '1');
INSERT INTO `tb_department` VALUES ('3002', '软件工程学院', '022-3002', 'C区', '1');
INSERT INTO `tb_department` VALUES ('3003', '教育科学学院', '022-3003', 'D区', '1');
INSERT INTO `tb_department` VALUES ('3004', '美术与设计学院', '022-3004', 'E区', '1');
INSERT INTO `tb_department` VALUES ('3005', '音乐与影视学院', '022-3005', 'F区', '1');

-- ----------------------------
-- Table structure for tb_paperchoice
-- ----------------------------
DROP TABLE IF EXISTS `tb_paperchoice`;
CREATE TABLE `tb_paperchoice` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `paperId` int(64) NOT NULL,
  `teacherId` int(64) NOT NULL,
  `studentId` int(64) NOT NULL,
  `depId` int(64) NOT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paperInfo_idc` (`paperId`),
  KEY `teacher_idc` (`teacherId`),
  KEY `student_idc` (`studentId`),
  KEY `department_idc` (`depId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_paperchoice
-- ----------------------------
INSERT INTO `tb_paperchoice` VALUES ('1', '1000', '5000', '6000', '3000', '1');
INSERT INTO `tb_paperchoice` VALUES ('2', '1001', '5001', '6001', '3001', '1');
INSERT INTO `tb_paperchoice` VALUES ('3', '1002', '5002', '6002', '3002', '1');
INSERT INTO `tb_paperchoice` VALUES ('4', '1003', '5003', '6003', '3003', '1');
INSERT INTO `tb_paperchoice` VALUES ('5', '1004', '5004', '6004', '3004', '1');
INSERT INTO `tb_paperchoice` VALUES ('6', '1005', '5005', '6004', '3005', '1');

-- ----------------------------
-- Table structure for tb_paperinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_paperinfo`;
CREATE TABLE `tb_paperinfo` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `subtitle` varchar(64) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `numbers` int(32) NOT NULL,
  `origin` varchar(128) NOT NULL,
  `content` text,
  `verifyState` int(8) NOT NULL,
  `verifyMessage` text,
  `releaseDate` date NOT NULL,
  `teacherId` int(64) NOT NULL,
  `depId` int(64) NOT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_idi` (`teacherId`),
  KEY `department_idi` (`depId`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_paperinfo
-- ----------------------------
INSERT INTO `tb_paperinfo` VALUES ('1000', '金融危机条件下商业银行的风险控制探析', '之副标题', '毕业设计', '1', '自拟', '这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-24', '5000', '3000', '1');
INSERT INTO `tb_paperinfo` VALUES ('1001', '江西洪都航空工业有限公司可持续发展能力分析及探讨', '之副标题', '毕业论文', '3', '生产实践', '这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-05', '5001', '3001', '1');
INSERT INTO `tb_paperinfo` VALUES ('1002', '红四方集团公司融资现状及存在的问题', '之副标题', '毕业设计', '2', '科学研究', '这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-04', '5002', '3002', '1');
INSERT INTO `tb_paperinfo` VALUES ('1003', '新能源汽车行业投资分析—以奇瑞公司为例', '之副标题', '毕业论文', '2', '自拟', '这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-02', '5003', '3003', '1');
INSERT INTO `tb_paperinfo` VALUES ('1004', '安徽天康股份有限公司营运能力分析', '之副标题', '毕业设计', '2', '生产实践', '这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-09', '5004', '3004', '1');
INSERT INTO `tb_paperinfo` VALUES ('1005', '县乡公共卫生机构财务状况的探析—以临泉县为例', '之副标题', '毕业论文', '3', '科学研究', '这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-20', '5005', '3005', '1');
INSERT INTO `tb_paperinfo` VALUES ('1006', '文化影视产业的投资决策—华谊兄弟传媒公司的案例分析', '之副标题', '毕业设计', '3', '自拟', '这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-09', '5000', '3000', '1');
INSERT INTO `tb_paperinfo` VALUES ('1007', '合肥平安保险有限公司现金流量表分析', '之副标题', '毕业论文', '4', '生产实践', '这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-12', '5001', '3001', '1');
INSERT INTO `tb_paperinfo` VALUES ('1008', '蒙牛乳业股份有限公司盈利能力分析', '之副标题', '毕业设计', '4', '科学研究', '这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-12', '5002', '3002', '1');
INSERT INTO `tb_paperinfo` VALUES ('1009', '安徽六国化工股份有限公司可持续发展能力分析及探讨', '之副标题', '毕业论文', '4', '自拟', '这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-12', '5003', '3003', '1');
INSERT INTO `tb_paperinfo` VALUES ('1010', '中国航空产业盈利能力及投资策略分析', '之副标题', '毕业设计', '3', '生产实践', '这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-13', '5004', '3004', '1');
INSERT INTO `tb_paperinfo` VALUES ('1011', '芜湖市技术创新支撑政策对其制造业的创新投资及盈利能力影响探析', '之副标题', '毕业论文', '2', '科学研究', '这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-13', '5005', '3005', '1');
INSERT INTO `tb_paperinfo` VALUES ('1012', '中航三鑫股份有限公司可持续发展能力分析及探讨', '之副标题', '毕业设计', '2', '自拟', '这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。', '0', null, '2016-12-13', '5000', '3000', '1');
INSERT INTO `tb_paperinfo` VALUES ('1013', '巢湖银鱼产业发展现状及其盈利能力分析', '之副标题', '毕业论文', '3', '生产实践', '这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。', '2', '有待改善，未通过', '2016-12-13', '5001', '3001', '1');
INSERT INTO `tb_paperinfo` VALUES ('1014', '安徽安纳达钛业股份有限公司盈利能力及业绩评价探究', '之副标题', '毕业设计', '4', '科学研究', '这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。', '0', null, '2016-12-13', '5002', '3002', '1');
INSERT INTO `tb_paperinfo` VALUES ('1015', '江西洪都航空工业有限公司盈利能力探讨及分析', '之副标题', '毕业论文', '4', '自拟', '这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。', '2', '有待改善，未通过', '2016-12-13', '5003', '3003', '1');
INSERT INTO `tb_paperinfo` VALUES ('1016', '中航电测仪器股份有限公司偿债能力分析及风险防范探讨', '之副标题', '毕业设计', '3', '生产实践', '这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。', '0', null, '2016-12-16', '5004', '3004', '1');
INSERT INTO `tb_paperinfo` VALUES ('1017', '安徽铜峰电子股份有限公司盈利能力和业绩评价探究', '之副标题', '毕业论文', '3', '科学研究', '这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。这是一条科学研究的题目描述，是关于这条论文的一段描述信息。', '0', null, '2016-12-16', '5005', '3005', '1');
INSERT INTO `tb_paperinfo` VALUES ('1018', '合肥市技术创新支撑政策对其制造业的创新投资及盈利能力影响探析', '之副标题', '毕业设计', '3', '自拟', '这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。这是一条自拟的题目描述，是关于这条论文的一段描述信息。', '0', null, '2016-12-16', '5000', '3000', '1');
INSERT INTO `tb_paperinfo` VALUES ('1019', '安徽海螺集团有限责任公司可持续发展能力分析及探讨', '之副标题', '毕业论文', '-1', '生产实践', '这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。这是一条生产实践的题目描述，是关于这条论文的一段描述信息。', '1', '论题很好，通过', '2016-12-16', '5001', '3001', '1');

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `picPath` varchar(256) DEFAULT NULL,
  `depId` int(64) DEFAULT NULL,
  `accountId` int(64) NOT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_ids` (`depId`),
  KEY `account_ids` (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=6010 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('6000', '谭盐盐', '6000', '6000@126.com', 'f', 'http://ww2.sinaimg.cn/large/8a757cdfjw8f9okevptibj20e70e83yu.jpg', '3000', '2000', '1');
INSERT INTO `tb_student` VALUES ('6001', '杰尼龟', '6111', '6001@126.com', 'f', 'http://ww2.sinaimg.cn/large/005CbUOgjw8f35bd5nqf6j30hs0hsgmr.jpg', '3001', '2001', '1');
INSERT INTO `tb_student` VALUES ('6002', '太阳', '6222', '6002@163.com', 'm', 'http://ww3.sinaimg.cn/large/005DKMdDgw1fa1dovltlaj30e10l3q4r.jpg', '3002', '2002', '1');
INSERT INTO `tb_student` VALUES ('6003', '囧晶', '6333', '6003@qq.com', 'f', 'http://ww2.sinaimg.cn/large/b3bde04fjw1f1l3zgyb7fj20hs0hsdi4.jpg', '3003', '2003', '1');
INSERT INTO `tb_student` VALUES ('6004', '郑秀晶', '6444', '6004@sina.com', 'f', 'http://ww2.sinaimg.cn/large/b3bde04fjw1et2p662n0uj20wb18gwns.jpg', '3004', '2004', '1');
INSERT INTO `tb_student` VALUES ('6005', '徐莅辉', '13116103880', 'xlh_xxw@126.com', 'm', 'http://ww2.sinaimg.cn/mw690/6c93af04jw8f8jqq156caj20ku0k2gm7.jpg', '3005', '2005', '1');
INSERT INTO `tb_student` VALUES ('6006', '赵霁', '6666', '6006@outlook.com', 'f', 'http://ww2.sinaimg.cn/large/4c56c594jw1ezdct93d7rj20vw16idn7.jpg', '3000', '2006', '1');
INSERT INTO `tb_student` VALUES ('6007', '桂纶镁', '6777', '6007@gmail.com', 'f', 'http://ww3.sinaimg.cn/large/6324eb11jw1exhz7s0vt0j20go0m8n02.jpg', '3001', '2007', '1');
INSERT INTO `tb_student` VALUES ('6008', 'AlexXu', '1310011905', '6008@126.com', 'm', 'http://ww3.sinaimg.cn/large/67e01e50jw1e1dxmh1pwkj.jpg', '3002', '2008', '1');
INSERT INTO `tb_student` VALUES ('6009', '林宥嘉', '6999', '6009@163.com', 'm', 'http://ww3.sinaimg.cn/large/6c93af04jw8f3qqz7xuidj20ku0kuac6.jpg', '3003', '2009', '1');

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `specialty` varchar(32) DEFAULT NULL,
  `depId` int(64) DEFAULT NULL,
  `accountId` int(64) NOT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_idt` (`depId`),
  KEY `account_idt` (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=5006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES ('5000', '张三', '13100000000', '5000@sina.com', '教授', '会话', '3000', '1000', '1');
INSERT INTO `tb_teacher` VALUES ('5001', '李四', '13100000001', '5001@126..com', '讲师', '演讲', '3001', '1001', '1');
INSERT INTO `tb_teacher` VALUES ('5002', '王五', '13100000002', '5002@163.com', '副教授', '写作', '3002', '1002', '1');
INSERT INTO `tb_teacher` VALUES ('5003', '赵六', '13100000003', '5003@163.com', '讲师', '摄影', '3003', '1003', '1');
INSERT INTO `tb_teacher` VALUES ('5004', '钱七', '13100000004', '5004@126.com', '副教授', '美术', '3004', '1004', '1');
INSERT INTO `tb_teacher` VALUES ('5005', '孙八', '13100000005', '5005@qq.com', '教授', '心理', '3005', '1005', '1');
