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
DELETE FROM `reference_loot_template` WHERE `item`='1728';
-- INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('24091', '1728', '0', '1', '1', '1', '0');

-- 汉娜之刃
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='49.995' WHERE (`entry`='24091') AND (`item`='2801');

-- 烈焰披风
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='49.995' WHERE (`entry`='24091') AND (`item`='3475');

-- 祖尔格拉布祭祀共享掉落
DELETE FROM `reference_loot_template` WHERE `entry`='24721';

-- 拉格纳罗斯
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='0' WHERE (`entry`='34002') AND (`item`='24026');
UPDATE `reference_loot_template` SET `condition_id`='0' WHERE `entry`='34030';

-- 鲁西弗隆
UPDATE `reference_loot_template` SET `condition_id`='0' WHERE `entry`='34012';

-- 玛格曼达
UPDATE `reference_loot_template` SET `condition_id`='0' WHERE `entry`='34013';

-- 基赫纳斯
UPDATE `reference_loot_template` SET `condition_id`='0' WHERE `entry`='34014';

-- 加尔
UPDATE `reference_loot_template` SET `condition_id`='0' WHERE `entry`='34015';

-- 迦顿男爵
UPDATE `reference_loot_template` SET `condition_id`='0' WHERE `entry`='34027';

-- 焚化者古雷曼格
UPDATE `reference_loot_template` SET `condition_id`='0' WHERE `entry`='34028';

-- 维姆萨拉克
DELETE FROM `reference_loot_template` WHERE `entry`='95680';
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('95680', '12780', '100', '0', '1', '1', '4');
