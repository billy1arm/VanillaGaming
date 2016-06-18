/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of dbscripts_on_event
-- ----------------------------

-- 文件大火
DELETE FROM `dbscripts_on_event` WHERE `id`='5258';
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('5258', '1', '9', '120441', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'respawn gobject');

-- 复活的守护者
DELETE FROM `dbscripts_on_event` WHERE `id`='5622';
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('5622', '2', '10', '11598', '300000', '0', '0', '0', '0', '0', '0', '0', '185.616', '-42.912', '75.4812', '4.45059', '通灵学院 - 召唤-复活的守护者');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('5622', '2', '10', '11598', '300000', '0', '0', '0', '0', '0', '0', '0', '177.746', '-42.7475', '75.4812', '4.88692', '通灵学院 - 召唤-复活的守护者');
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('5622', '2', '10', '11598', '300000', '0', '0', '0', '0', '0', '0', '0', '181.825', '-42.5812', '75.4812', '4.66003', '通灵学院 - 召唤-复活的守护者');
