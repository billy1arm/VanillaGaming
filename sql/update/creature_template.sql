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

-- 自爆绵羊
UPDATE `creature_template` SET `ScriptName`='npc_explosive_sheep' WHERE (`Entry`='2675');

-- 巴尔丹掘地工
UPDATE `creature_template` SET `FactionAlliance`='47', `FactionHorde`='47' WHERE (`Entry`='2989');

-- 巴尔丹鉴定官
UPDATE `creature_template` SET `FactionAlliance`='47', `FactionHorde`='47' WHERE (`Entry`='2990');

-- 伊兰尼库斯的阴影
UPDATE `creature_template` SET `UnitFlags`='0' WHERE (`Entry`='5709');

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

-- 怒焰小鬼
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9779');

-- 骷髅守护者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10390');

-- 骷髅狂战士
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10391');

-- 时光寄生虫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10717');

-- 碎矛巨魔
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10919');

-- 上层精灵召唤者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='11466');

-- 暮光地王
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`Entry`='11881');

-- 暮光唤石者
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`Entry`='11882');

-- 暮光主宰
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`Entry`='11883');

-- 米尔顿·比斯
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='13082');

-- 联盟医师
UPDATE `creature_template` SET `UnitFlags`='2' WHERE (`Entry`='13116');

-- 部落医师
UPDATE `creature_template` SET `UnitFlags`='2' WHERE (`Entry`='13117');

-- 诺克赛恩幼体
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='13696');

-- 暮光之王艾沃兰
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`Entry`='14479');

-- 邪枝绑架者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='14748');

-- 苍白圣殿骑士
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`Entry`='15212');

-- 赞助商人
DELETE FROM `creature_template` WHERE `Entry`='30000';
INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `GossipMenuId`, `EquipmentTemplateId`, `Civilian`, `AIName`, `ScriptName`) VALUES ('30000', '赞助商人', 'VanillaGaming', '63', '63', '2970', '0', '0', '0', '120', '120', '0', '0', '7', '3', '3', '0', '1', '6', '0', '0', '0', '1.2', '1.6', '8', '3', '138.697', '233.71', '10', '1', '1', '1', '462000', '462000', '612320', '612320', '571', '737', '220.81', '320.77', '0', '302', '100', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '652951551', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1745', '0', '', 'vip_scripts');
