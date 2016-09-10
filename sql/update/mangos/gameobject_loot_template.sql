/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of gameobject_loot_template
-- ----------------------------

-- 管理者埃克索图斯
UPDATE `gameobject_loot_template` SET `groupid`='0' WHERE (`entry`='16719') AND (`item`='12000');

-- 奥术水晶
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0.1' WHERE `item`='12363';
