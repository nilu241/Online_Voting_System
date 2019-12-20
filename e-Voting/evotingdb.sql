/*
Navicat MySQL Data Transfer

Source Server         : DataBase
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : evotingdb

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2018-01-09 22:34:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `fname` varchar(200) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `adhaar` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('sam', 'aa', 'aaa@gmail.com', '111', '2121122112', '4343433443', 'dsds gfggff', '1');
INSERT INTO `user` VALUES ('aaa', 'bbb', 'a@a.com', '11111', '7788995543', '9998776543', 'rrr', '2');
INSERT INTO `user` VALUES ('s', 'c', 's@gmail.com', '1', '1212211221', '1221212121', 'saassasasas', '3');
INSERT INTO `user` VALUES ('q', 'w', 'q@gmail.com', '2', '3223232323', '3443434331', 'fdfddfcvcv bbbv', '4');
INSERT INTO `user` VALUES ('sAm ', 'Choco', 'sam@gmail.com', '111', '2112212121', '1221211212', 'ddf bvvb hggh', '5');
INSERT INTO `user` VALUES ('ddd', 'www', 'd@gmail.com', '6', '554544554', '565665656', 'gfgffggf', '6');
INSERT INTO `user` VALUES ('a', 'b', 'a@gmail.com', '1', '122121121212', '1221121221', 'dssdsdsdsssdd', '7');
INSERT INTO `user` VALUES ('ssss', 'qqqq', 'f@gmail.com', '222', '121221211212', '2121212112', 'dsddssdds', '8');
INSERT INTO `user` VALUES ('sssss', 'qqqqqq', 'K@gmail.com', '666', '121212211212', '3443343434', 'dfdfdfdf', '9');
INSERT INTO `user` VALUES ('ssssdddd', 'bbbb', 'g@gmail.com', '1', '211221212112', '3232323223', 'dfffddfd xcxcxc', '10');
