/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of dbscripts_on_creature_movement
-- ----------------------------

-- 布莱中士
DELETE FROM `dbscripts_on_creature_movement` WHERE `id`='760408';
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('760408', '0', '29', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Sergeant Bly - add gossip flag');
