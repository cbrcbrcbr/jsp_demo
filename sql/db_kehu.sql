/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : db_kehu

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2013-04-25 00:29:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ke`
-- ----------------------------
DROP TABLE IF EXISTS `ke`;
CREATE TABLE `ke` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kname` varchar(20) NOT NULL,
  `kage` int(11) NOT NULL,
  `ksex` varchar(20) NOT NULL,
  `kjob` varchar(20) NOT NULL,
  `kphone` varchar(20) NOT NULL,
  `kzhiwei` varchar(20) NOT NULL,
  `kjibie` varchar(20) NOT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ke
-- ----------------------------
INSERT INTO `ke` VALUES ('14', '小王', '53', '男', 'fs', '18711112433', '工程师', '小客户');
INSERT INTO `ke` VALUES ('15', '大王', '53', '男', 'fs', '18711112433', '工程师', '小客户');
INSERT INTO `ke` VALUES ('16', '黎明', '53', '男', 'fs', '18711112433', '工程师', '大客户');
INSERT INTO `ke` VALUES ('17', '刘德华', '53', '男', 'fs', '18711112433', '工程师', '大客户');
INSERT INTO `ke` VALUES ('18', '张曼玉', '53', '男', 'fs', '18711112433', '演员', '大客户');
INSERT INTO `ke` VALUES ('19', '谢霆锋', '43', '男', 'fs', '15866663325', '演员', '大客户');
INSERT INTO `ke` VALUES ('20', '赵本山', '43', '男', 'fs', '15866663325', '演员', '大客户');
INSERT INTO `ke` VALUES ('21', '胡锦涛', '43', '男', 'fs', '15866663325', '主席', '大客户');
INSERT INTO `ke` VALUES ('22', '刘翔', '43', '男', 'fs', '15866663325', '运动员', '大客户');
INSERT INTO `ke` VALUES ('23', '冯巩', '43', '男', 'fs', '15866663325', '小品演员', '大客户');
INSERT INTO `ke` VALUES ('24', '李东宝', '43', '男', 'fs', '15866663325', '演员', '大客户');
INSERT INTO `ke` VALUES ('25', '巩俐', '34', '女', '电话', '15944562147', '演员', '小客户');
INSERT INTO `ke` VALUES ('26', '巩俐他妈', '34', '女', '电话', '15944562147', '演员', '小客户');
INSERT INTO `ke` VALUES ('27', '小红', '34', '女', '电话', '15944562147', '演员', '小客户');
INSERT INTO `ke` VALUES ('28', '小黑', '34', '女', '电话', '15944562147', '演员', '小客户');
INSERT INTO `ke` VALUES ('29', '小白', '34', '女', '电话', '15944562147', '演员', '小客户');
INSERT INTO `ke` VALUES ('30', '小蓝', '34', '女', '电话', '15944562147', '演员', '大客户');
INSERT INTO `ke` VALUES ('31', '老人', '44', '男', '到底', '1875432645', '到底', '大客户');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upass` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'a');
INSERT INTO `user` VALUES ('2', 'a', 'a');
INSERT INTO `user` VALUES ('3', 'e', 'e');
INSERT INTO `user` VALUES ('4', 'sd', 'sd123');
INSERT INTO `user` VALUES ('5', 'aaa', 'a');
