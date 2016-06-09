/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of item_template
-- ----------------------------

-- 修理机器人74A型
UPDATE `item_template` SET `spellcooldown_1`='3600000' WHERE (`entry`='18232');
