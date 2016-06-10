/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of creature_loot_template
-- ----------------------------
	
-- 堕落的水之魂 --- 剩余的最纯净的水
DELETE FROM `creature_loot_template` WHERE (`entry`='5894') AND (`item`='7811');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('5894', '7811', '-100', '0', '1', '1', '0');
