/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of creature_model_info
-- ----------------------------

-- 赤红圣殿骑士
UPDATE `creature_model_info` SET `bounding_radius`='1', `combat_reach`='1' WHERE (`modelid`='1204');

-- 碧蓝圣殿骑士
UPDATE `creature_model_info` SET `bounding_radius`='1', `combat_reach`='1' WHERE (`modelid`='13749');

-- 苍白圣殿骑士
UPDATE `creature_model_info` SET `bounding_radius`='1', `combat_reach`='1' WHERE (`modelid`='14502');

-- 土色圣殿骑士
UPDATE `creature_model_info` SET `bounding_radius`='3', `combat_reach`='3' WHERE (`modelid`='14512');
