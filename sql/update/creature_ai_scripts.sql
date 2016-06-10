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

-- 暮光地王
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='11881';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188101', '11881', '9', '0', '100', '1', '5', '30', '3000', '3000', '11', '9483', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光地王 - 施放-投石');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188102', '11881', '13', '0', '100', '1', '6000', '6000', '0', '0', '11', '13728', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '暮光地王 - 施放-地震术');

-- 暮光唤石者
DELETE FROM `creature_ai_scripts` WHERE `creature_id`='11882';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188201', '11882', '0', '0', '100', '1', '1000', '1000', '5000', '5000', '11', '9053', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光唤石者 - 施放-火球术');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188202', '11882', '9', '0', '100', '1', '0', '8', '15000', '15000', '11', '11020', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '暮光唤石者 - 施放-僵化');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES ('1188203', '11882', '4', '0', '100', '0', '0', '0', '0', '0', '12', '329', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '暮光唤石者 - 施放-召唤石元素');
