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

-- 纳迦探险者 --- 海蛇草
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='1907') AND (`item`='4029');

-- 灌木露水收集者 --- 饱满的露水腺
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE (`entry`='5481') AND (`item`='8428');

-- 堕落的水之魂 --- 剩余的最纯净的水
DELETE FROM `creature_loot_template` WHERE (`entry`='5894') AND (`item`='7811');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('5894', '7811', '-100', '0', '1', '1', '0');

-- 南海海盗 --- 南海海盗帽
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='7855') AND (`item`='20519');

-- 南海劫掠者 --- 南海海盗帽
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='7856') AND (`item`='20519');

-- 南海码头工人 --- 南海海盗帽
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='7857') AND (`item`='20519');

-- 南海流氓 --- 南海海盗帽
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='7858') AND (`item`='20519');

-- 安德雷·费尔比德 --- 南海海盗帽
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='7883') AND (`item`='20519');

-- 克雷格·尼哈鲁 --- 南海海盗帽
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='8203') AND (`item`='20519');

-- 幼双帆龙 --- 精细的双帆龙鳞片
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='9162') AND (`item`='11830');

-- 双帆龙 --- 精细的双帆龙鳞片
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='9163') AND (`item`='11830');

-- 老双帆龙 --- 精细的双帆龙鳞片
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='9164') AND (`item`='11830');

-- 小翼手龙 --- 精细的翼手龙鳞片
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='9165') AND (`item`='11831');

-- 翼手龙 --- 精细的翼手龙鳞片
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='9166') AND (`item`='11831');

-- 狂怒的翼手龙 --- 精细的翼手龙鳞片
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-80' WHERE (`entry`='9167') AND (`item`='11831');

-- 维姆萨拉克 --- 达基萨斯将军的命令
UPDATE `creature_loot_template` SET `item`='95680', `ChanceOrQuestChance`='100', `mincountOrRef`='-95680', `maxcount`='10', `condition_id`='0' WHERE (`entry`='9568') AND (`item`='12780');

-- 伊露希亚·巴罗夫
DELETE FROM `creature_loot_template` WHERE (`entry`='10502');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10502', '12753', '19', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10502', '12843', '100', '0', '1', '1', '237');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10502', '14047', '17', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10502', '20520', '48', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10502', '35031', '60', '1', '-35031', '1', '0');

-- 阿雷克斯·巴罗夫领主
DELETE FROM `creature_loot_template` WHERE (`entry`='10504');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10504', '35031', '60', '1', '-35031', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10504', '12843', '100', '0', '1', '1', '237');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10504', '14047', '17', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10504', '16722', '5', '2', '1', '1', '0');

-- 讲师玛丽希亚
DELETE FROM `creature_loot_template` WHERE (`entry`='10505');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10505', '12753', '17', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10505', '12843', '100', '0', '1', '1', '237');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10505', '14047', '18', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10505', '16710', '5', '2', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10505', '20520', '44', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10505', '35031', '60', '1', '-35031', '1', '0');

-- 拉文尼亚
DELETE FROM `creature_loot_template` WHERE (`entry`='10507');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10507', '6530', '11', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10507', '12753', '17', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10507', '12843', '100', '0', '1', '1', '237');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10507', '14047', '16', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10507', '16716', '4', '2', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10507', '20520', '44', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10507', '35031', '60', '1', '-35031', '1', '0');

-- 博学者普克尔特
DELETE FROM `creature_loot_template` WHERE (`entry`='10901');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10901', '6530', '11', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10901', '12753', '17', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10901', '12841', '35', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10901', '14047', '17', '0', '2', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10901', '16705', '17', '2', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10901', '20520', '44', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('10901', '35031', '60', '1', '-35031', '1', '0');

-- 瑟尔林·卡斯迪诺夫教授
DELETE FROM `creature_loot_template` WHERE (`entry`='11261');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('11261', '12843', '100', '0', '1', '1', '237');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('11261', '13523', '100', '0', '1', '1', '213');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('11261', '14047', '14', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('11261', '14617', '2', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('11261', '16684', '14', '2', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('11261', '35031', '60', '1', '-35031', '1', '0');

-- 血领主曼多基尔
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='11382') AND (`item`='34087');
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='11382') AND (`item`='34088');

-- 拉格纳罗斯
DELETE FROM `creature_loot_template` WHERE (`entry`='11502') AND (`item`='17204');
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='11502') AND (`item`='34002');

-- 玛格曼达
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.2', `groupid`='0' WHERE (`entry`='11982') AND (`item`='34011');
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='11982') AND (`item`='34013');

-- 焚化者古雷曼格
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.2', `groupid`='0' WHERE (`entry`='11988') AND (`item`='34011');
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='11988') AND (`item`='34028');

-- 鲁西弗隆
UPDATE `creature_loot_template` SET `condition_id`='0' WHERE `entry`='12118';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.2', `groupid`='0' WHERE (`entry`='12118') AND (`item`='34011');
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='12118') AND (`item`='34012');

-- 迦顿男爵
DELETE FROM `creature_loot_template` WHERE (`entry`='12056') AND (`item`='18563');
-- INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('12056', '18563', '3', '0', '1', '1', '0');
UPDATE `creature_loot_template` SET `condition_id`='0' WHERE `entry`='12056';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.2', `groupid`='0' WHERE (`entry`='12056') AND (`item`='34011');
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='12056') AND (`item`='34027');

-- 加尔
UPDATE `creature_loot_template` SET `item`='17782' WHERE (`entry`='12057') AND (`item`='18564');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.2', `groupid`='0' WHERE (`entry`='12057') AND (`item`='34011');
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='12057') AND (`item`='34015');

-- 萨弗隆先驱者
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='12098') AND (`item`='34029');

-- 基赫纳斯
UPDATE `creature_loot_template` SET `condition_id`='0' WHERE `entry`='12259';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.2', `groupid`='0' WHERE (`entry`='12259') AND (`item`='34011');
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='12259') AND (`item`='34014');

-- 沙斯拉尔
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.2', `groupid`='0' WHERE (`entry`='12264') AND (`item`='34011');
UPDATE `creature_loot_template` SET `groupid`='0' WHERE (`entry`='12264') AND (`item`='34026');

-- 高阶祭司温诺希斯
DELETE FROM `creature_loot_template` WHERE (`entry`='14507');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '12804', '24', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '19881', '-100', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '19900', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '19903', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '19904', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '19905', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '19906', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '19907', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '19943', '9', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22216', '-100', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22711', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22712', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22713', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22714', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22715', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22716', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22718', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22720', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22721', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '22722', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14507', '34086', '100', '0', '-34086', '1', '0');

-- 高阶祭司塞卡尔
DELETE FROM `creature_loot_template` WHERE (`entry`='14509');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '12804', '24', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '19768', '24', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '19881', '-100', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '19896', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '19897', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '19898', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '19899', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '19901', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '19902', '2', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '19943', '9', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '20260', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '20266', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '22711', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '22712', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '22713', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '22714', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '22715', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '22716', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '22718', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '22720', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '22721', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '22722', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14509', '34086', '100', '0', '-34086', '1', '0');

-- 高阶祭司玛尔里
DELETE FROM `creature_loot_template` WHERE (`entry`='14510');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '12804', '24', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '19871', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '19881', '-100', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '19919', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '19925', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '19927', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '19930', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '19943', '9', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '20032', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '22711', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '22712', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '22713', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '22714', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '22715', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '22716', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '22718', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '22720', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '22721', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '22722', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14510', '34086', '100', '0', '-34086', '1', '0');

-- 高阶祭司娅尔罗
DELETE FROM `creature_loot_template` WHERE (`entry`='14515');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '12804', '24', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '19881', '-100', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '19909', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '19910', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '19912', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '19913', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '19914', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '19922', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '19943', '9', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '22711', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '22712', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '22713', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '22714', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '22715', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '22716', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '22718', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '22720', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '22721', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '22722', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14515', '34086', '100', '0', '-34086', '1', '0');

-- 高阶祭司耶克里克
DELETE FROM `creature_loot_template` WHERE (`entry`='14517');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '12804', '24', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '19767', '24', '0', '1', '4', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '19881', '-100', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '19915', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '19918', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '19920', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '19923', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '19928', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '19943', '9', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '20262', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '20265', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '22711', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '22712', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '22713', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '22714', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '22715', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '22716', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '22718', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '22720', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '22721', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '22722', '0', '1', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14517', '34086', '100', '0', '-34086', '1', '0');

-- 南海绑匪 --- 南海海盗帽
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-6' WHERE (`entry`='15685') AND (`item`='20519');

-- 秘典：防护冰霜结界 V
DELETE FROM `creature_loot_template` WHERE (`item`='22890');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('6109', '22890', '5', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14887', '22890', '5', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14888', '22890', '5', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14889', '22890', '5', '0', '1', '1', '0');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('14890', '22890', '5', '0', '1', '1', '0');
