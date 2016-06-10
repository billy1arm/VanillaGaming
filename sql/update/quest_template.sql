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

-- 死人的请求
UPDATE `quest_template` SET `RewItemId1`='0', `RewItemCount1`='0', `RewMoneyMaxLevel`='0' WHERE (`entry`='8945');
