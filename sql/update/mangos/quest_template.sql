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

-- 加文的爱好
UPDATE `quest_template` SET `SpecialFlags`='0' WHERE (`entry`='308');

-- 咕咕嘎！
UPDATE `quest_template` SET `Method`='0' WHERE (`entry`='3861');

-- 弗洛尔的屠龙技术纲要
UPDATE `quest_template` SET `RewSpellCast`='22925' WHERE (`entry`='7507');

-- 熔火之心的传送门
UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='7848');

-- 哈卡之心
UPDATE `quest_template` SET `RewSpellCast`='24425' WHERE (`entry`='8183');

-- 召唤
UPDATE `quest_template` SET `Type`='62' WHERE (`entry`='8315');

-- 峡谷之战
UPDATE `quest_template` SET `RewOrReqMoney`='0', `RewMoneyMaxLevel`='0' WHERE (`entry`='8368');
UPDATE `quest_template` SET `RewMoneyMaxLevel`='0' WHERE (`entry`='8389');
UPDATE `quest_template` SET `RewOrReqMoney`='0', `RewMoneyMaxLevel`='0' WHERE (`entry`='8426');
UPDATE `quest_template` SET `RewOrReqMoney`='0', `RewMoneyMaxLevel`='0' WHERE (`entry`='8427');
UPDATE `quest_template` SET `RewOrReqMoney`='0', `RewMoneyMaxLevel`='0' WHERE (`entry`='8428');
UPDATE `quest_template` SET `RewOrReqMoney`='0', `RewMoneyMaxLevel`='0' WHERE (`entry`='8429');
UPDATE `quest_template` SET `RewOrReqMoney`='0', `RewMoneyMaxLevel`='0' WHERE (`entry`='8430');
UPDATE `quest_template` SET `RewMoneyMaxLevel`='0' WHERE (`entry`='8431');
UPDATE `quest_template` SET `RewMoneyMaxLevel`='0' WHERE (`entry`='8432');
UPDATE `quest_template` SET `RewMoneyMaxLevel`='0' WHERE (`entry`='8433');
UPDATE `quest_template` SET `RewMoneyMaxLevel`='0' WHERE (`entry`='8434');
UPDATE `quest_template` SET `RewMoneyMaxLevel`='0' WHERE (`entry`='8435');

-- 死人的请求
UPDATE `quest_template` SET `RewItemId1`='0', `RewItemCount1`='0', `RewMoneyMaxLevel`='0' WHERE (`entry`='8945');

-- 生命的证据
UPDATE `quest_template` SET `RewMoneyMaxLevel`='0' WHERE (`entry`='8946');
