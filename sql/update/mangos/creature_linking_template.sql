/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of creature_linking_template
-- ----------------------------

-- 多彩精英卫士
UPDATE `creature_linking_template` SET `flag`='135' WHERE (`entry`='10814') AND (`map`='229');

-- 火妖
UPDATE `creature_linking_template` SET `flag`='1159' WHERE (`entry`='11661') AND (`map`='409');

-- 火妖祭祀
UPDATE `creature_linking_template` SET `flag`='1159' WHERE (`entry`='11662') AND (`map`='409');

-- 火妖医师
UPDATE `creature_linking_template` SET `flag`='1159' WHERE (`entry`='11663') AND (`map`='409');

-- 火妖精英
UPDATE `creature_linking_template` SET `flag`='1159' WHERE (`entry`='11664') AND (`map`='409');

-- 熔火恶犬
DELETE FROM `creature_linking_template` WHERE `entry`='11671';
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES ('11671', '409', '11982', '1024', '0');

-- 熔火怒犬
UPDATE `creature_linking_template` SET `flag`='1191' WHERE (`entry`='11672') AND (`map`='409');

-- 火誓者
UPDATE `creature_linking_template` SET `flag`='1159' WHERE (`entry`='12099') AND (`map`='409');

-- 火妖护卫
UPDATE `creature_linking_template` SET `flag`='1671' WHERE (`entry`='12119') AND (`map`='409');

-- 观察者克鲁什
UPDATE `creature_linking_template` SET `flag`='135' WHERE (`entry`='14324') AND (`map`='429');
