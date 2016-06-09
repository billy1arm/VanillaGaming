/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of creature_template
-- ----------------------------

-- 祖尔法拉克阵亡英雄
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='7276');

-- 祖尔法拉克僵尸
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='7286');

-- 哈扎里寄生虫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='7769');

-- 喷焰小鬼
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9776');

-- 灵焰小鬼
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9777');

-- 骷髅守护者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10390');

-- 骷髅狂战士
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10391');

-- 联盟医师
UPDATE `creature_template` SET `UnitFlags`='2' WHERE (`Entry`='13116');

-- 部落医师
UPDATE `creature_template` SET `UnitFlags`='2' WHERE (`Entry`='13117');

-- 诺克赛恩幼体
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='13696');
