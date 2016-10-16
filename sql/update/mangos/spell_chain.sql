/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of spell_chain
-- ----------------------------

-- 毒蝎钉刺
DELETE FROM `spell_chain` WHERE `first_spell`='3043';
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('3043', '0', '3043', '1', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('14275', '3043', '3043', '2', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('14276', '14275', '3043', '3', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('14277', '14276', '3043', '4', '0');

-- 强效光明祝福
UPDATE `spell_chain` SET `prev_spell`='19979', `first_spell`='19977', `rank`='4', `req_spell`='0' WHERE (`spell_id`='25890');

-- 正义圣印
DELETE FROM `spell_chain` WHERE `first_spell`='20154';
DELETE FROM `spell_chain` WHERE `first_spell`='21084';
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('21084', '0', '21084', '1', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('20287', '21084', '21084', '2', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('20288', '20287', '21084', '3', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('20289', '20288', '21084', '4', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('20290', '20289', '21084', '5', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('20291', '20290', '21084', '6', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('20292', '20291', '21084', '7', '0');
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES ('20293', '20292', '21084', '8', '0');

-- 强效智慧祝福
UPDATE `spell_chain` SET `spell_id`='25894', `prev_spell`='25290', `first_spell`='19742', `rank`='7', `req_spell`='0' WHERE (`spell_id`='25894');
UPDATE `spell_chain` SET `spell_id`='25918', `first_spell`='19742', `rank`='8', `req_spell`='0' WHERE (`spell_id`='25918');
