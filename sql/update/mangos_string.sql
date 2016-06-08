/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of mangos_string
-- ----------------------------

-- WPE
DELETE FROM `mangos_string` WHERE `entry`='11000';
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES ('11000', '[|cffff0000反外挂|r]: [|cff00ff00%s|r]玩家背包数据有问题.已封号,请联系GM检查处理', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
