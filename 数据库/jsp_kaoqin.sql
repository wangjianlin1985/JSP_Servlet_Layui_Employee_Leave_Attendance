/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : jsp_kaoqin

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-01-08 19:57:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `basic`
-- ----------------------------
DROP TABLE IF EXISTS `basic`;
CREATE TABLE `basic` (
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basic
-- ----------------------------
INSERT INTO `basic` VALUES ('假期类别', '事假');
INSERT INTO `basic` VALUES ('假期类别', '产假');
INSERT INTO `basic` VALUES ('假期类别', '病假');
INSERT INTO `basic` VALUES ('出行方式', '大巴');
INSERT INTO `basic` VALUES ('出行方式', '火车');
INSERT INTO `basic` VALUES ('出行方式', '自驾');
INSERT INTO `basic` VALUES ('出行方式', '飞机');
INSERT INTO `basic` VALUES ('考勤时段', '上午上班');
INSERT INTO `basic` VALUES ('考勤时段', '上午下班');
INSERT INTO `basic` VALUES ('考勤时段', '下午上班');
INSERT INTO `basic` VALUES ('考勤时段', '下午下班');

-- ----------------------------
-- Table structure for `chuchaishenqing`
-- ----------------------------
DROP TABLE IF EXISTS `chuchaishenqing`;
CREATE TABLE `chuchaishenqing` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `chuchaishijian` varchar(255) DEFAULT NULL,
  `chuchaitianshu` varchar(255) DEFAULT NULL,
  `tongxingrenyuan` varchar(255) DEFAULT NULL,
  `mudidi` varchar(255) DEFAULT NULL,
  `chuxingfangshi` varchar(255) DEFAULT NULL,
  `shiyou` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuchaishenqing
-- ----------------------------
INSERT INTO `chuchaishenqing` VALUES ('1', '2018-06-24', '2', '杨一帆,王小铭', '南京', '南京', '学习');
INSERT INTO `chuchaishenqing` VALUES ('2', '2018-06-24', '1.5', '杨一帆', '南京', '南京', '学习');
INSERT INTO `chuchaishenqing` VALUES ('3', '2018-06-24', '1.25', '严小帅,宋小滑', '南通', '南通', '学习');
INSERT INTO `chuchaishenqing` VALUES ('4', '2018-06-24', '0.5', '琚小黑', '上海', '上海', '学习');
INSERT INTO `chuchaishenqing` VALUES ('5', '2018-06-24', '3', '琚小黑,宋小滑', '北京', '北京', '学习');
INSERT INTO `chuchaishenqing` VALUES ('6', '2018-06-10', '1.4', '王小铭,严小帅', '北京', '北京', '学习');

-- ----------------------------
-- Table structure for `jiabanshenqing`
-- ----------------------------
DROP TABLE IF EXISTS `jiabanshenqing`;
CREATE TABLE `jiabanshenqing` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(255) DEFAULT NULL,
  `shenqingshijian` varchar(255) DEFAULT NULL,
  `jiabanshijian` varchar(255) DEFAULT NULL,
  `jiabanshichang` varchar(255) DEFAULT NULL,
  `yuanyin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiabanshenqing
-- ----------------------------
INSERT INTO `jiabanshenqing` VALUES ('2', '琚小黑', '2018-06-24', '2018-06-27', '2.4', '加班呢');
INSERT INTO `jiabanshenqing` VALUES ('3', '杨一帆', '2018-06-24', '2018-06-27', '1.5', '加班呢');
INSERT INTO `jiabanshenqing` VALUES ('4', '严小帅', '2018-06-24', '2018-06-27', '2.6', '加班呢');
INSERT INTO `jiabanshenqing` VALUES ('5', '王少爷', '2018-06-24', '2018-06-27', '1.5', '加班呢');
INSERT INTO `jiabanshenqing` VALUES ('6', '宋小滑', '2018-06-24', '2018-06-28', '2.0', '加班呢');

-- ----------------------------
-- Table structure for `jiaqishenqing`
-- ----------------------------
DROP TABLE IF EXISTS `jiaqishenqing`;
CREATE TABLE `jiaqishenqing` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(255) DEFAULT NULL,
  `kaishishijian` varchar(255) DEFAULT NULL,
  `jieshushijian` varchar(255) DEFAULT NULL,
  `shichang` varchar(255) DEFAULT NULL,
  `jiaqileixing` varchar(255) DEFAULT NULL,
  `yuanyin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaqishenqing
-- ----------------------------
INSERT INTO `jiaqishenqing` VALUES ('1', '王小铭', '2018-06-24 10:35:34', '2018-06-28 00:00:00', '2.875', '事假', '有事');
INSERT INTO `jiaqishenqing` VALUES ('3', '琚小黑', '2018-06-25 10:00:00', '2018-06-27 08:00:00', '1.25', '病假', '感冒');
INSERT INTO `jiaqishenqing` VALUES ('4', '宋小滑', '2018-06-24 11:56:53', '2018-06-25 00:00:00', '0.25', '事假', '。。。');
INSERT INTO `jiaqishenqing` VALUES ('5', '王少爷', '2018-04-19 11:23:23', '2018-04-24 11:22:33', '0.25', '事假', '有事');
INSERT INTO `jiaqishenqing` VALUES ('6', '宋小滑', '2018-04-19 11:23:23', '2018-06-25 00:00:00', '1.25', '病假', '有事');
INSERT INTO `jiaqishenqing` VALUES ('7', '王小铭', '2020-01-10 00:00:00', '2020-01-10 00:00:00', '1.25', '事假', '12');
INSERT INTO `jiaqishenqing` VALUES ('8', '王小铭', '2020-01-11 00:00:00', '2020-01-30 00:00:00', '10.625', '事假', '啊');

-- ----------------------------
-- Table structure for `kaoqinjilu`
-- ----------------------------
DROP TABLE IF EXISTS `kaoqinjilu`;
CREATE TABLE `kaoqinjilu` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `kaoqinshijian` varchar(255) DEFAULT NULL,
  `leibie` varchar(255) DEFAULT NULL,
  `staff_name` varchar(255) DEFAULT NULL,
  `kaoqinshiduan` varchar(255) DEFAULT NULL,
  `shuoming` varchar(255) DEFAULT NULL,
  `jiluren` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kaoqinjilu
-- ----------------------------
INSERT INTO `kaoqinjilu` VALUES ('1', '2018-06-23', '早退', '王小铭', '下午下班', '测试', 'admin');
INSERT INTO `kaoqinjilu` VALUES ('2', '2018-06-23', '早退', '王小铭', '上午上班', '123', 'admin');
INSERT INTO `kaoqinjilu` VALUES ('3', '2018-06-25', '早退', '严小帅', '上午上班', '特殊情况', 'admin');
INSERT INTO `kaoqinjilu` VALUES ('4', '2018-06-25', '早会未到', '琚小黑', '上午上班', '特殊情况', 'admin');
INSERT INTO `kaoqinjilu` VALUES ('5', '2018-06-26', '早操未到', '王小铭', '下午下班', '特殊情况', 'admin');
INSERT INTO `kaoqinjilu` VALUES ('6', '2018-06-26', '会议缺席', '杨光', '下午下班', '特殊情况', 'admin');
INSERT INTO `kaoqinjilu` VALUES ('7', '2020-01-07', '早会未到', '严小帅', '上午下班', '1', 'admin');
INSERT INTO `kaoqinjilu` VALUES ('8', '2020-01-18', '漏签卡', '王少爷', '上午上班', '111', 'admin');
INSERT INTO `kaoqinjilu` VALUES ('9', '2020-01-13', '早退', '陆爱军', '上午上班', '2222', 'admin');
INSERT INTO `kaoqinjilu` VALUES ('10', '2020-01-08', '早退', '王小铭', '上午下班', 'a\'sas', 'admin');

-- ----------------------------
-- Table structure for `staff`
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('1', '杨一帆');
INSERT INTO `staff` VALUES ('2', '王小铭');
INSERT INTO `staff` VALUES ('3', '琚小黑');
INSERT INTO `staff` VALUES ('4', '严小帅');
INSERT INTO `staff` VALUES ('6', '宋小滑');
INSERT INTO `staff` VALUES ('7', '王少爷');

-- ----------------------------
-- Table structure for `tiaoxiushenqing`
-- ----------------------------
DROP TABLE IF EXISTS `tiaoxiushenqing`;
CREATE TABLE `tiaoxiushenqing` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(255) DEFAULT NULL,
  `shenqingshijian` varchar(255) DEFAULT NULL,
  `begin` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `tiaoxiushichang` varchar(255) DEFAULT NULL,
  `tiaoxiuyuanyin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiaoxiushenqing
-- ----------------------------
INSERT INTO `tiaoxiushenqing` VALUES ('2', '严小帅', '2018-06-25', '2018-06-26', '2018-06-28', '1.5', '调休');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin');
