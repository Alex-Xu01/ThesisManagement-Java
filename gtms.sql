/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : gtms

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-12-19 10:32:43
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
) ENGINE=InnoDB AUTO_INCREMENT=5015 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_account
-- ----------------------------
INSERT INTO `tb_account` VALUES ('1', 'admin', 'aa', '0', '1');
INSERT INTO `tb_account` VALUES ('1000', 'sss', 'aaa', '1', '1');
INSERT INTO `tb_account` VALUES ('4002', '5002', '5002', '1', '1');
INSERT INTO `tb_account` VALUES ('4003', '5003', '5003', '1', '1');
INSERT INTO `tb_account` VALUES ('4004', '6001', '6001', '2', '1');
INSERT INTO `tb_account` VALUES ('4005', '6002', '6002', '2', '1');
INSERT INTO `tb_account` VALUES ('4006', '6003', '6003', '2', '1');
INSERT INTO `tb_account` VALUES ('5002', 'teacher', 't', '1', '1');
INSERT INTO `tb_account` VALUES ('5007', 'student', 'ss', '2', '1');
INSERT INTO `tb_account` VALUES ('5013', '123', '132', '1', '1');
INSERT INTO `tb_account` VALUES ('5014', '111', '111', '2', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES ('3001', '新闻传播', '3111', 'A区', '1');
INSERT INTO `tb_department` VALUES ('3002', '计算机', '3222', 'B区', '1');
INSERT INTO `tb_department` VALUES ('3003', '软件', '3333', 'C区', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3017 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_paperchoice
-- ----------------------------
INSERT INTO `tb_paperchoice` VALUES ('3012', '1021', '5004', '5007', '3001', '1');
INSERT INTO `tb_paperchoice` VALUES ('3013', '1016', '5002', '0', '3002', '1');
INSERT INTO `tb_paperchoice` VALUES ('3014', '1016', '5002', '6004', '3002', '1');
INSERT INTO `tb_paperchoice` VALUES ('3015', '1001', '5001', '6004', '3001', '1');
INSERT INTO `tb_paperchoice` VALUES ('3016', '1006', '5002', '6004', '3002', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=1032 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_paperinfo
-- ----------------------------
INSERT INTO `tb_paperinfo` VALUES ('1001', '新闻', null, '毕业设计', '3', '社会调查', null, '1', null, '2016-12-05', '5001', '3001', '1');
INSERT INTO `tb_paperinfo` VALUES ('1002', '计算', null, '毕业设计', '2', '生活实践', null, '1', null, '2016-12-04', '5002', '3002', '1');
INSERT INTO `tb_paperinfo` VALUES ('1003', '美术', null, '毕业论文', '86', '社会实践 ', null, '1', null, '2016-12-02', '5003', '3003', '1');
INSERT INTO `tb_paperinfo` VALUES ('1004', 'teacher', 'sub', '毕业设计', '0', '生产实践', 'last time.', '1', 'aaaa', '2016-12-09', '5004', '3002', '0');
INSERT INTO `tb_paperinfo` VALUES ('1006', 'paperinfo.', 'ss', 'graduationThesis', '2', 'practice', '', '1', 'pass', '2016-12-09', '5002', '3002', '0');
INSERT INTO `tb_paperinfo` VALUES ('1014', 'ss', 'ss', '毕业设计', '0', '自拟', '', '0', '', '2016-12-12', '5002', '3002', '0');
INSERT INTO `tb_paperinfo` VALUES ('1015', 'title', 'subtitle', '毕业论文', '0', '', '', '1', 'aaaa', '2016-12-12', '5002', '3002', '0');
INSERT INTO `tb_paperinfo` VALUES ('1016', 'test', 'test', '毕业论文', '8', '', '', '1', '', '2016-12-12', '5002', '3002', '0');
INSERT INTO `tb_paperinfo` VALUES ('1022', 'bbb', 'bbb', '毕业论文', '10', '生产实践', '', '0', '', '2016-12-13', '5004', '3001', '0');
INSERT INTO `tb_paperinfo` VALUES ('1023', 'ccc', 'cc', '毕业论文', '10', '自拟', '', '0', '', '2016-12-13', '5004', '3001', '0');
INSERT INTO `tb_paperinfo` VALUES ('1024', 'ddd', 'ddd', '毕业设计', '10', '生产实践', '', '0', '', '2016-12-13', '5004', '3001', '0');
INSERT INTO `tb_paperinfo` VALUES ('1025', 'eee', 'eee', '毕业设计', '20', '生产实践', '', '0', '', '2016-12-13', '5004', '3001', '0');
INSERT INTO `tb_paperinfo` VALUES ('1026', 'fff', 'fff', '毕业设计', '20', '生产实践', '', '0', '', '2016-12-13', '5004', '3001', '0');
INSERT INTO `tb_paperinfo` VALUES ('1027', 'ggg', 'ggg', '毕业设计', '20', '生产实践', 'ggg', '0', '', '2016-12-13', '5004', '3001', '0');
INSERT INTO `tb_paperinfo` VALUES ('1028', 'hhh', 'hhh', '毕业论文', '20', '科学研究', '', '0', '', '2016-12-16', '5004', '3001', '0');
INSERT INTO `tb_paperinfo` VALUES ('1029', 'iii', 'iii', '毕业论文', '10', '自拟', '', '0', '', '2016-12-16', '5004', '3001', '0');
INSERT INTO `tb_paperinfo` VALUES ('1030', 'jjj', 'jjj', '毕业设计', '10', '生产实践', '', '0', '', '2016-12-16', '5004', '3001', '0');
INSERT INTO `tb_paperinfo` VALUES ('1031', 'aaa', 'aaa', '毕业设计', '0', '生产实践', '', '1', '666', '2016-12-16', '5004', '3001', '0');

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
  `picPath` varchar(64) DEFAULT NULL,
  `depId` int(64) DEFAULT NULL,
  `accountId` int(64) NOT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_ids` (`depId`),
  KEY `account_ids` (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=6006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('6001', '六一', '6111', '6001@.com', 'm', 'url', '3001', '4004', '1');
INSERT INTO `tb_student` VALUES ('6002', '六二', '6222', '6002@.com', 'm', 'url', '3002', '4005', '1');
INSERT INTO `tb_student` VALUES ('6003', '六三', '6333', '6003@.com', 'f', 'url', '3003', '4006', '1');
INSERT INTO `tb_student` VALUES ('6004', 'lushen', '123465', 'as', 'M', 'ss', '3001', '5007', '1');
INSERT INTO `tb_student` VALUES ('6005', null, null, null, null, null, null, '5014', '1');

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
INSERT INTO `tb_teacher` VALUES ('5001', '五一', '2111', '2001', 'sss', 'aaa', '3001', '1000', '1');
INSERT INTO `tb_teacher` VALUES ('5002', '五二', '5222', '5002@.com', '讲师', '演讲', '3002', '4002', '1');
INSERT INTO `tb_teacher` VALUES ('5003', '五三', '5333', '5003@.com', '副教授', '写作', '3003', '4003', '1');
INSERT INTO `tb_teacher` VALUES ('5004', 'lg', '2111111', 'lgn@163.com', 'ddd', 'sss', '3001', '5002', '1');
INSERT INTO `tb_teacher` VALUES ('5005', null, null, null, null, null, null, '5013', '1');
