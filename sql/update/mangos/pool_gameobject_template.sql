/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of pool_gameobject_template
-- ----------------------------

-- 布满灰尘的书籍
DELETE FROM `pool_gameobject_template` WHERE `id`='179548';
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES ('179548', '25505', '0', '厄运之槌 - 布满灰尘的书籍');
