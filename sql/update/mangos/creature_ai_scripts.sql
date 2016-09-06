/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of creature_ai_scripts
-- ----------------------------

-- 奈塔拉什
DELETE FROM `creature_ai_scripts` WHERE `id`='198302';

-- 碧火欺诈者
UPDATE `creature_ai_scripts` SET `action1_param2`='5' WHERE (`id`='710703');

-- 巫医祖穆拉恩
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='7271';

-- 狂怒傀儡
UPDATE `creature_ai_scripts` SET `action1_param2`='0', `comment`='狂怒傀儡 - 施放-乱舞' WHERE (`id`='890602');

-- 恶疫食尸鬼
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='10405';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1040501', '10405', '1', '0', '100', '0', '0', '0', '0', '0', '11', '26047', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '恶疫食尸鬼 - 施放-新生');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1040502', '10405', '9', '0', '100', '1', '0', '5', '6300', '10100', '11', '15496', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '恶疫食尸鬼 - 施放-顺劈斩');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1040503', '10405', '9', '0', '100', '1', '11300', '20900', '11300', '27900', '11', '16458', '4', '33', '0', '0', '0', '0', '0', '0', '0', '0', '恶疫食尸鬼 - 施放-食尸鬼瘟疫');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1040504', '10405', '2', '0', '100', '1', '30', '0', '120000', '125000', '11', '8599', '0', '1', '1', '-106', '0', '0', '0', '0', '0', '0', '恶疫食尸鬼 - 施放-狂怒');

-- 鲜肉食尸鬼
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='10407';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1040701', '10407', '1', '0', '100', '0', '0', '0', '0', '0', '11', '26047', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '鲜肉食尸鬼 - 施放-新生');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1040702', '10407', '1', '0', '100', '0', '1000', '1000', '0', '0', '11', '8876', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '鲜肉食尸鬼 - 施放-痛击');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1040703', '10407', '9', '0', '100', '1', '0', '5', '18000', '25000', '11', '13738', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '鲜肉食尸鬼 - 施放-撕裂');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1040704', '10407', '9', '0', '100', '1', '0', '5', '9000', '16000', '11', '16172', '1', '33', '0', '0', '0', '0', '0', '0', '0', '0', '鲜肉食尸鬼 - 施放-裂颅');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1040705', '10407', '9', '0', '100', '1', '11300', '20900', '11300', '27900', '11', '16458', '4', '33', '0', '0', '0', '0', '0', '0', '0', '0', '鲜肉食尸鬼 - 施放-食尸鬼瘟疫');

-- 火妖
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='11661';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1166101', '11661', '9', '0', '100', '1', '0', '5', '5000', '9000', '11', '15502', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '火妖 - 施放-破甲攻击');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1166102', '11661', '0', '0', '100', '1', '5000', '8000', '7000', '9000', '11', '19730', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '火妖 - 施放-打击');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1166103', '11661', '9', '0', '100', '1', '0', '8', '9000', '12000', '11', '20277', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '火妖 - 施放-拉格纳罗斯之拳');

-- 火妖医师
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='11663';

-- 火妖精英
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='11664';

-- 熔岩歼灭者
DELETE FROM `creature_ai_scripts` WHERE `id`='1166502';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1166502', '11665', '0', '0', '100', '1', '5000', '5000', '5000', '5000', '13', '-100', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '熔岩歼灭者 - 切换目标');

-- 火焰行者
UPDATE `creature_ai_scripts` SET `action1_param1`='19637', `action1_param2`='4' WHERE (`id`='1166602');

-- 熔火恶犬
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='11671';

-- 暮光地王
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='11881';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188101', '11881', '9', '0', '100', '1', '5', '30', '3000', '3000', '11', '9483', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光地王 - 施放-投石');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188102', '11881', '13', '0', '100', '1', '6000', '6000', '0', '0', '11', '13728', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '暮光地王 - 施放-地震术');

-- 暮光唤石者
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='11882';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188201', '11882', '0', '0', '100', '1', '1000', '1000', '5000', '5000', '11', '9053', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光唤石者 - 施放-火球术');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188202', '11882', '9', '0', '100', '1', '0', '8', '15000', '15000', '11', '11020', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '暮光唤石者 - 施放-僵化');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188203', '11882', '4', '0', '100', '0', '0', '0', '0', '0', '12', '329', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光唤石者 - 施放-召唤石元素');

-- 暮光主宰
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='11883';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188301', '11883', '0', '0', '100', '1', '1000', '1000', '5000', '5000', '11', '9672', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光主宰 - 施放-寒冰箭');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188302', '11883', '9', '0', '100', '1', '0', '8', '25000', '25000', '11', '11831', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光主宰 - 施放-冰霜新星');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188303', '11883', '0', '0', '100', '1', '6000', '6000', '6000', '6000', '11', '12058', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光主宰 - 施放-闪电链');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188304', '11883', '0', '0', '100', '1', '8000', '8000', '8000', '8000', '11', '13339', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光主宰 - 施放-火焰冲击');

-- 熔岩奔腾者
UPDATE `creature_ai_scripts` SET `action1_param1`='25787', `comment`='熔岩奔腾者 - 施放 澎湃' WHERE (`id`='1210101');

-- 熔岩爪牙
UPDATE `creature_ai_scripts` SET `event_param1`='20000', `event_param2`='20000' WHERE (`id`='1226502');

-- 暮光之王艾沃兰
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='14479';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1447901', '14479', '0', '0', '100', '1', '6000', '6000', '6000', '6000', '11', '17439', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光之王艾沃兰 - 施放-暗影震击');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1447902', '14479', '0', '0', '100', '1', '1000', '1000', '5000', '5000', '11', '19816', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光之王艾沃兰 - 施放-火球术');

-- 金度之影
UPDATE `creature_ai_scripts` SET `action1_param1`='24458' WHERE (`id`='1498602');

-- 苍白圣殿骑士
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='15212';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1521201', '15212', '0', '0', '100', '1', '1000', '2000', '11000', '12000', '11', '25020', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '苍白圣殿骑士 - 施放-闪电盾');
