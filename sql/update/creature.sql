/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of creature
-- ----------------------------

-- 鲁伯斯
UPDATE `creature` SET `spawntimesecs`='18000' WHERE (`id`='521');

-- 断牙
UPDATE `creature` SET `spawntimesecs`='10200' WHERE (`id`='2850');

-- 暮光复仇者
UPDATE `creature` SET `spawntimesecs`='600' WHERE (`id`='11880');

-- 暮光地王
UPDATE `creature` SET `spawntimesecs`='600' WHERE (`id`='11881');

-- 暮光唤石者
UPDATE `creature` SET `spawntimesecs`='600' WHERE (`id`='11882');
