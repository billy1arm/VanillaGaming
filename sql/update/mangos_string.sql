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

-- VIP 系统
DELETE FROM `mangos_string` WHERE `entry`='11001';
DELETE FROM `mangos_string` WHERE `entry`='11002';
DELETE FROM `mangos_string` WHERE `entry`='11003';
DELETE FROM `mangos_string` WHERE `entry`='11004';
DELETE FROM `mangos_string` WHERE `entry`='11005';
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES ('11001', '[|cffff0000积分系统|r]当前可用积分:%u 累计充值积分:%u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES ('11002', '[|cffff0000积分系统|r]本次使用:%u积分', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES ('11003', '[|cffff0000积分系统|r]背包已满,请至少留出1个空位后再次购买', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES ('11004', '[|cffff0000积分系统|r]已有相同道具', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES ('11005', '[|cffff0000积分系统|r]积分不足(%u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
