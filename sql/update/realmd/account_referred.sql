/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-realmd

Target Server Type    : MYSQL
File Encoding         : 65001
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account_referred
-- ----------------------------
DROP TABLE IF EXISTS `account_referred`;
CREATE TABLE `account_referred` (
  `accId1` bigint(20) unsigned NOT NULL COMMENT 'Referring Account',
  `accId2` bigint(20) unsigned NOT NULL COMMENT 'Referred Account',
  `finish` bigint(20) unsigned NOT NULL COMMENT 'Referr Finish',
  PRIMARY KEY (`accId2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Refer-A-Friend';
