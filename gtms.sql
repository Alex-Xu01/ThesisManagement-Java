/*
Navicat MySQL Data Transfer

Source Server         : zzx
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : gtms

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2016-12-05 17:09:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_account`
-- ----------------------------
DROP TABLE IF EXISTS `tb_account`;
CREATE TABLE `tb_account` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(32) NOT NULL,
  `loginPwd` varchar(32) NOT NULL,
  `role` int(8) NOT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_account
-- ----------------------------
INSERT INTO `tb_account` VALUES ('1', 'admin', 'admin', '0', '1');
INSERT INTO `tb_account` VALUES ('4001', '5001', '5001', '1', '1');
INSERT INTO `tb_account` VALUES ('4002', '5002', '5002', '1', '1');
INSERT INTO `tb_account` VALUES ('4003', '5003', '5003', '1', '1');
INSERT INTO `tb_account` VALUES ('4004', '6001', '6001', '2', '1');
INSERT INTO `tb_account` VALUES ('4005', '6002', '6002', '2', '1');
INSERT INTO `tb_account` VALUES ('4006', '6003', '6003', '2', '1');

-- ----------------------------
-- Table structure for `tb_department`
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
-- Table structure for `tb_paperchoice`
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
  KEY `department_idc` (`depId`),
  CONSTRAINT `department_idc` FOREIGN KEY (`depId`) REFERENCES `tb_department` (`id`),
  CONSTRAINT `paperInfo_idc` FOREIGN KEY (`paperId`) REFERENCES `tb_paperinfo` (`id`),
  CONSTRAINT `student_idc` FOREIGN KEY (`studentId`) REFERENCES `tb_student` (`id`),
  CONSTRAINT `teacher_idc` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_paperchoice
-- ----------------------------
INSERT INTO `tb_paperchoice` VALUES ('2001', '1001', '5001', '6001', '3001', '1');
INSERT INTO `tb_paperchoice` VALUES ('2002', '1002', '5002', '6002', '3002', '1');
INSERT INTO `tb_paperchoice` VALUES ('2003', '1003', '5003', '6003', '3003', '1');

-- ----------------------------
-- Table structure for `tb_paperinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_paperinfo`;
CREATE TABLE `tb_paperinfo` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `subtitle` varchar(64) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `number` int(32) NOT NULL,
  `origin` varchar(128) NOT NULL,
  `desc` text,
  `verifyState` int(8) NOT NULL,
  `verifyMessage` text,
  `releaseDate` date NOT NULL,
  `teacherId` int(64) NOT NULL,
  `depId` int(64) NOT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_idi` (`teacherId`),
  KEY `department_idi` (`depId`),
  CONSTRAINT `department_idi` FOREIGN KEY (`depId`) REFERENCES `tb_department` (`id`),
  CONSTRAINT `teacher_idi` FOREIGN KEY (`teacherId`) REFERENCES `tb_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_paperinfo
-- ----------------------------
INSERT INTO `tb_paperinfo` VALUES ('1001', '新闻', null, '毕业设计', '5', '社会调查', null, '1', null, '2016-12-05', '5001', '3001', '1');
INSERT INTO `tb_paperinfo` VALUES ('1002', '计算', null, '毕业设计', '6', '生活实践', null, '1', null, '2016-12-04', '5002', '3002', '1');
INSERT INTO `tb_paperinfo` VALUES ('1003', '美术', null, '毕业论文', '7', '社会实践 ', null, '1', null, '2016-12-02', '5003', '3003', '1');

-- ----------------------------
-- Table structure for `tb_student`
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `picPath` varchar(64) NOT NULL,
  `depId` int(64) NOT NULL,
  `accountId` int(64) NOT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_ids` (`depId`),
  KEY `account_ids` (`accountId`),
  CONSTRAINT `account_ids` FOREIGN KEY (`accountId`) REFERENCES `tb_account` (`id`),
  CONSTRAINT `department_ids` FOREIGN KEY (`depId`) REFERENCES `tb_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('6001', '六一', '6111', '6001@.com', 'm', 'url', '3001', '4004', '1');
INSERT INTO `tb_student` VALUES ('6002', '六二', '6222', '6002@.com', 'm', 'url', '3002', '4005', '1');
INSERT INTO `tb_student` VALUES ('6003', '六三', '6333', '6003@.com', 'f', 'url', '3003', '4006', '1');

-- ----------------------------
-- Table structure for `tb_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `specialty` varchar(32) DEFAULT NULL,
  `depId` int(64) NOT NULL,
  `accountId` int(64) NOT NULL,
  `state` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_idt` (`depId`),
  KEY `account_idt` (`accountId`),
  CONSTRAINT `account_idt` FOREIGN KEY (`accountId`) REFERENCES `tb_account` (`id`),
  CONSTRAINT `department_idt` FOREIGN KEY (`depId`) REFERENCES `tb_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES ('5001', '五一', '5111', '5001@.com', '教授', '讲课', '3001', '4001', '1');
INSERT INTO `tb_teacher` VALUES ('5002', '五二', '5222', '5002@.com', '讲师', '演讲', '3002', '4002', '1');
INSERT INTO `tb_teacher` VALUES ('5003', '五三', '5333', '5003@.com', '副教授', '写作', '3003', '4003', '1');
