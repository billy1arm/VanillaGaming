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

-- 酒吧老板凯利 --- 黑标美味朗姆酒
DELETE FROM `npc_vendor` WHERE (`entry`='2366') AND (`item`='21151');
-- INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `condition_id`) VALUES ('2366', '21151', '0', '0', '0');

-- 兰拉 --- 黑莲花
DELETE FROM `npc_vendor` WHERE (`entry`='14846') AND (`item`='13468');
-- INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `condition_id`) VALUES ('14846', '13468', '1', '43200', '0');

-- 维尔 --- 格罗姆之血
UPDATE `npc_vendor` SET `maxcount`='3', `incrtime`='43200' WHERE (`entry`='16015') AND (`item`='8846');

-- 维尔 --- 恶魔布
DELETE FROM `npc_vendor` WHERE (`entry`='16015') AND (`item`='14256');
-- INSERT INTO `x-mangos`.`npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `condition_id`) VALUES ('16015', '14256', '2', '7200', '0');
