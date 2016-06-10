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
