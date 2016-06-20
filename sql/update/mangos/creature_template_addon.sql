/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of creature_template_addon
-- ----------------------------

-- 裂隙怒灵
DELETE FROM `creature_template_addon` WHERE `entry`='6492';

-- 拉格纳罗斯
DELETE FROM `creature_template_addon` WHERE `entry`='11502';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11502', '0', '0', '1', '16', '0', '0', '7942');

-- 熔核巨人
DELETE FROM `creature_template_addon` WHERE `entry`='11658';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11658', '0', '0', '1', '16', '0', '0', '7941 7942');

-- 熔核摧毁者
DELETE FROM `creature_template_addon` WHERE `entry`='11659';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11659', '0', '0', '1', '16', '0', '0', '7941 7942');

-- 熔岩歼灭者
DELETE FROM `creature_template_addon` WHERE `entry`='11665';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11665', '0', '0', '1', '16', '0', '0', '7941');

-- 火焰行者
DELETE FROM `creature_template_addon` WHERE `entry`='11666';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11666', '0', '0', '1', '16', '0', '0', '7942');

-- 烈焰守卫
DELETE FROM `creature_template_addon` WHERE `entry`='11667';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11667', '0', '0', '1', '16', '0', '0', '7942');

-- 火焰之王
DELETE FROM `creature_template_addon` WHERE `entry`='11668';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11668', '0', '0', '1', '16', '0', '0', '7942');

-- 烈焰小鬼
DELETE FROM `creature_template_addon` WHERE `entry`='11669';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11669', '0', '0', '1', '16', '0', '0', '7942');

-- 熔火恶犬
DELETE FROM `creature_template_addon` WHERE `entry`='11671';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11671', '0', '0', '1', '16', '0', '0', '7942');

-- 上古熔火恶犬
UPDATE `creature_template_addon` SET `auras`='7941 18950' WHERE (`entry`='11673');

-- 玛格曼达
DELETE FROM `creature_template_addon` WHERE `entry`='11982';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11982', '0', '0', '1', '16', '0', '0', '7942');

-- 焚化者古雷曼格
DELETE FROM `creature_template_addon` WHERE `entry`='11988';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('11988', '0', '0', '1', '16', '0', '0', '7941 7942');

-- 迦顿男爵
DELETE FROM `creature_template_addon` WHERE `entry`='12056';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('12056', '0', '0', '1', '16', '0', '0', '7942');

-- 加尔
DELETE FROM `creature_template_addon` WHERE `entry`='12057';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('12057', '0', '0', '1', '16', '0', '0', '7941');

-- 熔岩元素
DELETE FROM `creature_template_addon` WHERE `entry`='12076';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('12076', '0', '0', '1', '16', '0', '0', '7941');

-- 火誓者
DELETE FROM `creature_template_addon` WHERE `entry`='12099';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('12099', '0', '0', '1', '16', '0', '0', '7941');

-- 熔岩掠夺者
DELETE FROM `creature_template_addon` WHERE `entry`='12100';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('12100', '0', '0', '1', '16', '0', '0', '7941');

-- 熔岩奔腾者
UPDATE `creature_template_addon` SET `auras`='7941' WHERE (`entry`='12101');

-- 烈焰之子
DELETE FROM `creature_template_addon` WHERE `entry`='12143';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('12143', '0', '0', '1', '16', '0', '0', '7942');

-- 熔岩爪牙
DELETE FROM `creature_template_addon` WHERE `entry`='12265';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES ('12265', '0', '0', '1', '16', '0', '0', '7942');
