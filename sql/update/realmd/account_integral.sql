/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-realmd

Target Server Type    : MYSQL
File Encoding         : 65001
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account_integral
-- ----------------------------
DROP TABLE IF EXISTS `account_integral`;
CREATE TABLE `account_integral` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Account identifier',
  `pay` int(10) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `totalintegral` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Integral Systerm';
