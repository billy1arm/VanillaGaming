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

-- 大领主泰兰·弗丁
UPDATE `creature_template` SET `PowerMultiplier`='20', `DamageMultiplier`='9.2', `MechanicImmuneMask`='617299803' WHERE (`Entry`='1842');

-- 自爆绵羊
UPDATE `creature_template` SET `ScriptName`='npc_explosive_sheep' WHERE (`Entry`='2675');

-- 巴尔丹掘地工
UPDATE `creature_template` SET `FactionAlliance`='47', `FactionHorde`='47' WHERE (`Entry`='2989');

-- 巴尔丹鉴定官
UPDATE `creature_template` SET `FactionAlliance`='47', `FactionHorde`='47' WHERE (`Entry`='2990');

-- 沙怒暗影法师
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='5648');

-- 沙怒饮血者
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='5649');

-- 沙怒巫医
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='5650');

-- 伊兰尼库斯的阴影
UPDATE `creature_template` SET `UnitFlags`='0' WHERE (`Entry`='5709');

-- 熔岩喷射图腾
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE (`Entry`='6017');

-- 陷地图腾
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE (`Entry`='6066');

-- 沙怒暗影猎手
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7246');

-- 沙怒噬魂者
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7247');

-- 殉教者塞卡
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7272');

-- 祖尔法拉克阵亡英雄
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='7276');

-- 祖尔法拉克僵尸
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='7286');

-- 乌克兹·沙顶
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7267');

-- 沙怒守护者
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7268');

-- 圣甲虫
UPDATE `creature_template` SET `SpeedWalk`='0.8', `SpeedRun`='1' WHERE (`Entry`='7269');

-- 巫医祖穆拉恩
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7271');

-- 加兹瑞拉
UPDATE `creature_template` SET `SpeedWalk`='1.6', `SpeedRun`='1.42857' WHERE (`Entry`='7273');

-- 沙怒刽子手
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7274');

-- 暗影祭司塞瑟斯
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7275');

-- 祖尔法拉克阵亡英雄
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7276');

-- 祖尔法拉克僵尸
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7286');

-- 布莱中士
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7604');

-- 拉文
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7605');

-- 欧罗·血眼
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7606');

-- 维格利
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7607');

-- 穆尔塔
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7608');

-- 哈扎里寄生虫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='7769');

-- 祖穆拉恩结界
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE (`Entry`='7785');

-- 祖穆拉恩骷髅
UPDATE `creature_template` SET `SpeedWalk`='0.888888', `SpeedRun`='1.14286' WHERE (`Entry`='7786');

-- 沙怒奴隶
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7787');

-- 沙怒苦工
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7788');

-- 沙怒智障者
UPDATE `creature_template` SET `SpeedWalk`='1.6', `SpeedRun`='0.714286' WHERE (`Entry`='7789');

-- 水占师维蕾萨
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7795');

-- 耐克鲁姆
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7796');

-- 卢兹鲁
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7797');

-- 苏利萨斯沙行者
UPDATE `creature_template` SET `SpeedWalk`='1.11111', `SpeedRun`='1.14286' WHERE (`Entry`='8095');

-- 苏利萨斯憎恶
UPDATE `creature_template` SET `SpeedWalk`='1.11111', `SpeedRun`='1.14286' WHERE (`Entry`='8120');

-- 安图苏尔
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='8127');

-- 苏利萨斯幼崽
UPDATE `creature_template` SET `SpeedWalk`='1.11111', `SpeedRun`='1.14286' WHERE (`Entry`='8138');

-- 安图苏尔的仆从
UPDATE `creature_template` SET `SpeedWalk`='1.11111', `SpeedRun`='1.14286' WHERE (`Entry`='8156');

-- 强效治疗结界
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE (`Entry`='8179');

-- 沙怒侍僧
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='8876');

-- 沙怒狂热者
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='8877');

-- 喷焰小鬼
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9776');

-- 灵焰小鬼
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9777');

-- 怒焰小鬼
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9779');

-- 杉达尔·沙掠者
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='10080');

-- 灰尘怨灵
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='10081');

-- 泽雷利斯
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='10082');

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

-- 提里奥·弗丁
UPDATE `creature_template` SET `DamageMultiplier`='5' WHERE (`Entry`='12126');

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

-- 团队训练假人
DELETE FROM `creature_template` WHERE `Entry`='30001';
INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `GossipMenuId`, `EquipmentTemplateId`, `Civilian`, `AIName`, `ScriptName`) VALUES ('30001', '团队训练假人', 'VanillaGaming', '63', '63', '3019', '0', '0', '0', '7', '7', '1.6', '0', '9', '3', '3', '0', '0', '131076', '0', '2', '0', '1', '1', '1', '3', '1', '1', '1', '1', '-1', '1', '8888888', '8888888', '0', '0', '0', '0', '1.76', '2.42', '8000', '0', '100', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16384', '90', '90', '90', '90', '90', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', 'npc_training_dummy');

-- 高级训练假人
DELETE FROM `creature_template` WHERE `Entry`='30002';
INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `GossipMenuId`, `EquipmentTemplateId`, `Civilian`, `AIName`, `ScriptName`) VALUES ('30002', '高级训练假人', 'VanillaGaming', '60', '60', '3019', '0', '0', '0', '7', '7', '1.4', '0', '9', '3', '1', '0', '0', '131076', '0', '2', '0', '1', '1', '1', '2', '1', '1', '1', '1', '-1', '1', '8888888', '8888888', '0', '0', '0', '0', '1.76', '2.42', '6000', '0', '100', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16384', '70', '70', '70', '70', '70', '70', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', 'npc_training_dummy');
