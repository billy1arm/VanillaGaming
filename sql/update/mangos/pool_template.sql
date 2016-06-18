/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of pool_template
-- ----------------------------

-- 黑莲花
UPDATE `pool_template` SET `max_limit`='1', `description`='黑莲花-燃烧平原' WHERE (`entry`='942');
UPDATE `pool_template` SET `max_limit`='1', `description`='黑莲花-东瘟疫之地' WHERE (`entry`='944');
UPDATE `pool_template` SET `max_limit`='1', `description`='黑莲花-希利苏斯' WHERE (`entry`='945');
UPDATE `pool_template` SET `max_limit`='1', `description`='黑莲花-冬泉谷' WHERE (`entry`='946');

-- 布满灰尘的书籍
DELETE FROM `pool_template` WHERE `entry`='25505';
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('25505', '1', '厄运之槌 - 布满灰尘的书籍');
