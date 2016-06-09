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

-- 强效光明祝福
UPDATE `spell_chain` SET `prev_spell`='19979', `first_spell`='19977', `rank`='4', `req_spell`='0' WHERE (`spell_id`='25890');
