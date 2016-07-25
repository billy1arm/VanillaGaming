/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of quest_template
-- ----------------------------
	
-- 水之召唤
UPDATE `quest_template` SET `SrcItemId`='6637' WHERE (`entry`='63');

-- 弗洛尔的屠龙技术纲要
UPDATE `quest_template` SET `RewSpellCast`='22925' WHERE (`entry`='7507');

-- 熔火之心的传送门
UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='7848');

-- 召唤
UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='8315');

-- 死人的请求
UPDATE `quest_template` SET `RewItemId1`='0', `RewItemCount1`='0', `RewMoneyMaxLevel`='0' WHERE (`entry`='8945');

-- 生命的证据
UPDATE `quest_template` SET `RewMoneyMaxLevel`='0' WHERE (`entry`='8946');
