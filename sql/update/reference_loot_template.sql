/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of reference_loot_template
-- ----------------------------

-- 提布的炽炎长剑
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='0.01' WHERE (`entry`='24091') AND (`item`='1728');

-- 汉娜之刃
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='49.995' WHERE (`entry`='24091') AND (`item`='2801');

-- 烈焰披风
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='49.995' WHERE (`entry`='24091') AND (`item`='3475');

-- 维姆萨拉克
DELETE FROM `reference_loot_template` WHERE `entry`='95680';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('95680', '12780', '100', '0', '1', '1', '4');
