/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of spell_script_target
-- ----------------------------

-- 孵化蜘蛛卵
DELETE FROM `spell_script_target` WHERE `entry`='24082';
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES ('24082', '0', '179985', '0');
