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

-- 苍白圣殿骑士
UPDATE `creature_model_info` SET `bounding_radius`='1', `combat_reach`='1' WHERE (`modelid`='14502');
