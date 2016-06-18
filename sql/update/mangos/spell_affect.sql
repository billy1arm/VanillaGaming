/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of spell_affect
-- ----------------------------

-- 强化回春治疗
DELETE FROM `spell_affect` WHERE `entry`='27853';
INSERT INTO `spell_affect` (`entry`, `effectId`, `SpellFamilyMask`) VALUES ('27853', '0', '16');
