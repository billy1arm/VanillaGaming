/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of command
-- ----------------------------

-- 重置天赋
UPDATE `command` SET `security`='0' WHERE (`name`='reset talents');
