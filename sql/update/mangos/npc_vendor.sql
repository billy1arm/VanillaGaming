/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of npc_vendor
-- ----------------------------

-- 维尔 --- 恶魔布
DELETE FROM `npc_vendor` WHERE (`entry`='16015') AND (`item`='14256');
-- INSERT INTO `x-mangos`.`npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `condition_id`) VALUES ('16015', '14256', '2', '7200', '0');
