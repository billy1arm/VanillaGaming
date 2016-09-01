/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of pool_gameobject
-- ----------------------------

-- 次级血石矿脉
DELETE FROM `pool_gameobject` WHERE `description`like'Lesser Bloodstone Deposit%';

-- 黑莲花
UPDATE `pool_gameobject` SET `description`='黑莲花-燃烧平原' WHERE (`description`='Burning Steppes - Black Lotus');
UPDATE `pool_gameobject` SET `description`='黑莲花-东瘟疫之地' WHERE (`description`like'Black Lotus zone 139%');
UPDATE `pool_gameobject` SET `description`='黑莲花-希利苏斯' WHERE (`description`like'Black Lotus zone 1377%');
UPDATE `pool_gameobject` SET `description`='黑莲花-冬泉谷' WHERE (`description`like'Black Lotus zone 618%');
