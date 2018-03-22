/*
 Navicat Premium Data Transfer

 Source Server         : eson
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : jldschool

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 22/03/2018 13:49:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `bnum` int(128) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `roid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
BEGIN;
INSERT INTO `book` VALUES (1, '三国演义', 100, 'img/books/sgyy.jpg', 1);
INSERT INTO `book` VALUES (2, '水浒传', 100, 'img/books/shz.jpg', 1);
INSERT INTO `book` VALUES (3, '西游记', 100, 'img/books/xyj.jpg', 1);
INSERT INTO `book` VALUES (4, '红楼梦', 100, 'img/books/hlm.jpg', 1);
INSERT INTO `book` VALUES (5, 'English', 100, 'img/books/abc.jpg', 2);
INSERT INTO `book` VALUES (6, 'German', 100, 'img/books/dy.jpg', 2);
INSERT INTO `book` VALUES (7, 'Japanese', 100, 'img/books/japan.jpg', 2);
INSERT INTO `book` VALUES (8, 'French', 100, 'img/books/fr.jpg', 2);
INSERT INTO `book` VALUES (9, 'ThinkingJava', 100, 'img/books/thinkingjava.jpg', 3);
INSERT INTO `book` VALUES (10, 'ComputerNetWorking', 100, 'img/books/cpnet.jpg', 3);
INSERT INTO `book` VALUES (11, 'Html&CSS', 100, 'img/books/fhtml.jpg', 3);
INSERT INTO `book` VALUES (12, 'Java虚拟机', 100, 'img/books/jvm.jpg', 3);
INSERT INTO `book` VALUES (13, 'Java并发编程', 100, 'img/books/p.jpg', 3);
INSERT INTO `book` VALUES (14, 'JSP', 100, 'img/books/serjsp.jpg', 3);
INSERT INTO `book` VALUES (15, '算法导论', 100, 'img/books/suanfa.jpg', 3);
INSERT INTO `book` VALUES (16, 'TCP/IP', 100, 'img/books/tcpip.jpg', 3);
INSERT INTO `book` VALUES (17, '汇编语言', 100, 'img/books/hb.jpg', 3);
INSERT INTO `book` VALUES (18, '电机学', 100, 'img/books/djx.jpg', 4);
INSERT INTO `book` VALUES (19, '电路', 100, 'img/books/dl.jpg', 4);
INSERT INTO `book` VALUES (20, '电力电子技术', 100, 'img/books/dz.jpg', 4);
INSERT INTO `book` VALUES (21, '信号与系统', 100, 'img/books/sys.jpg', 4);
INSERT INTO `book` VALUES (22, 'The Principle of Relativity', 100, 'img/books/xdl.jpg', 5);
INSERT INTO `book` VALUES (23, '数学分析', 100, 'img/books/math.jpg', 5);
INSERT INTO `book` VALUES (24, 'Vector Calculus', 100, 'img/books/mt.jpg', 5);
INSERT INTO `book` VALUES (25, 'Introduction to Quantum Mechanics', 100, 'img/books/itq.jpg', 5);
INSERT INTO `book` VALUES (26, '管理学', 100, 'img/books/glx.jpg', 6);
INSERT INTO `book` VALUES (27, '营销管理', 100, 'img/books/yxgl.jpg', 6);
INSERT INTO `book` VALUES (28, '人力资源管理', 100, 'img/books/rlgl.jpg', 6);
INSERT INTO `book` VALUES (29, '5年高考&3年模拟', 100, 'img/books/ks.jpg', 7);
INSERT INTO `book` VALUES (30, '机械设计图册', 100, 'img/books/jxsj.jpg', 8);
COMMIT;

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(20) unsigned DEFAULT NULL,
  `book_name` varchar(128) DEFAULT NULL,
  `btime` datetime DEFAULT NULL,
  `retime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id` (`user_id`),
  KEY `fk_name` (`book_name`),
  CONSTRAINT `fk_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_name` FOREIGN KEY (`book_name`) REFERENCES `book` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow
-- ----------------------------
BEGIN;
INSERT INTO `borrow` VALUES (3, 2, '红楼梦', '2017-02-01 10:00:00', '2017-03-01 10:00:00');
INSERT INTO `borrow` VALUES (4, 2, '水浒传', '2017-02-01 10:00:00', '2017-03-01 10:00:00');
COMMIT;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(32) DEFAULT NULL,
  `peimission_sign` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
BEGIN;
INSERT INTO `permission` VALUES (1, '用户新增', 'user:create', NULL);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) DEFAULT NULL,
  `role_sign` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, 'admin', 'admin', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(20) unsigned DEFAULT NULL,
  `permission_id` int(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
BEGIN;
INSERT INTO `role_permission` VALUES (1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(20) DEFAULT NULL,
  `role_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
BEGIN;
INSERT INTO `user_role` VALUES (1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `sex` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'admin', '5f405d775083572dc7eeb4cfb68d8081', 'eson', '男');
INSERT INTO `users` VALUES (2, '123', 'afceb57e07dd945e29e4bb78712873ab', '激动撒', '男');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
