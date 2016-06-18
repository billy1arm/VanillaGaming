/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of creature_linking_template
-- ----------------------------

-- 多彩精英卫士
UPDATE `creature_linking_template` SET `flag`='135' WHERE (`entry`='10814') AND (`map`='229');
	
-- 观察者克鲁什
UPDATE `creature_linking_template` SET `flag`='135' WHERE (`entry`='14324') AND (`map`='429');
