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

-- 食腐虫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='2462');

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

-- 塞克隆尼亚
UPDATE `creature_template` SET `MaxLevel`='40', `SpeedWalk`='1', `DamageMultiplier`='2', `ArmorMultiplier`='1', `MinMeleeDmg`='56', `MaxMeleeDmg`='74.3', `MinRangedDmg`='0', `MaxRangedDmg`='0', `Armor`='1964', `MeleeAttackPower`='136', `RangedAttackPower`='14', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000', `DamageSchool`='3', `MinLootGold`='0', `MaxLootGold`='0', `ResistanceFire`='0', `ResistanceNature`='0', `ResistanceFrost`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE (`Entry`='6239');

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
UPDATE `creature_template` SET `ExtraFlags`='64', `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7276');

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

-- 科卡尔入侵者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9524');

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

-- 奥妮克希亚
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='7800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='10184');

-- 骷髅守护者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10390');

-- 骷髅狂战士
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10391');

-- 时光寄生虫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10717');

-- 碎矛巨魔
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10919');

-- 奥妮克希亚雏龙
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='363', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11262');

-- 狂热者洛卡恩
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `MechanicImmuneMask`='617299803', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11347');

-- 狂热者扎斯
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `MechanicImmuneMask`='617297755', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11348');

-- 哈卡之子
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11357');

-- 拉扎什眼镜蛇
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11373');

-- 妖术师金度
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11380');

-- 血领主曼多基尔
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11382');

-- 上层精灵召唤者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='11466');

-- 拉格纳罗斯
UPDATE `creature_template` SET `DamageMultiplier`='18', `Armor`='7291', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11502');

-- 熔核巨人
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11658');

-- 熔核摧毁者
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='7491', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11659');

-- 火妖
UPDATE `creature_template` SET `DamageMultiplier`='32', `Armor`='6000', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11661');

-- 火妖祭祀
UPDATE `creature_template` SET `DamageMultiplier`='2', `Armor`='7123', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11662');

-- 火妖医师
UPDATE `creature_template` SET `DamageMultiplier`='17', `Armor`='7175', `MechanicImmuneMask`='617234267', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121', `AIName`='', `ScriptName`='npc_flamewaker_healer' WHERE (`Entry`='11663');

-- 火妖精英
UPDATE `creature_template` SET `DamageMultiplier`='19', `Armor`='7221', `MechanicImmuneMask`='617234267', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121', `AIName`='', `ScriptName`='npc_flamewaker_elite' WHERE (`Entry`='11664');

-- 熔岩歼灭者
UPDATE `creature_template` SET `DamageMultiplier`='27', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11665');

-- 火焰行者
UPDATE `creature_template` SET `DamageMultiplier`='15', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11666');

-- 烈焰守卫
UPDATE `creature_template` SET `DamageMultiplier`='15', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11667');

-- 火焰之王
UPDATE `creature_template` SET `DamageMultiplier`='16', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11668');

-- 烈焰小鬼
UPDATE `creature_template` SET `MechanicImmuneMask`='0' WHERE (`Entry`='11669');

-- 熔火恶犬
UPDATE `creature_template` SET `DamageMultiplier`='20', `Armor`='6500', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121', `AIName`='', `ScriptName`='npc_core_hound' WHERE (`Entry`='11671');

-- 熔火怒犬
UPDATE `creature_template` SET `DamageMultiplier`='19', `Armor`='7191', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11672');

-- 上古熔火恶犬
UPDATE `creature_template` SET `DamageMultiplier`='23', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11673');

-- 暮光地王
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`Entry`='11881');

-- 暮光唤石者
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`Entry`='11882');

-- 暮光主宰
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`Entry`='11883');

-- 玛格曼达
UPDATE `creature_template` SET `DamageMultiplier`='35', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11982');

-- 焚化者古雷曼格
UPDATE `creature_template` SET `DamageMultiplier`='45', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11988');

-- 管理者埃克索图斯
UPDATE `creature_template` SET `DamageMultiplier`='19', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12018');

-- 迦顿男爵
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12056');

-- 加尔
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12057');

-- 熔岩元素
UPDATE `creature_template` SET `DamageMultiplier`='17', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12076');

-- 萨弗隆先驱者
UPDATE `creature_template` SET `DamageMultiplier`='21', `Armor`='7340', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12098');

-- 火誓者
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12099');

-- 熔岩掠夺者
UPDATE `creature_template` SET `DamageMultiplier`='20', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12100');

-- 熔岩奔腾者
UPDATE `creature_template` SET `DamageMultiplier`='20', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12101');

-- 鲁西弗隆
UPDATE `creature_template` SET `DamageMultiplier`='33', `Armor`='6295', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12118');

-- 火妖护卫
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='6100', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12119');

-- 提里奥·弗丁
UPDATE `creature_template` SET `DamageMultiplier`='5' WHERE (`Entry`='12126');

-- 奥妮克希亚守卫
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='363', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12129');

-- 基赫纳斯
UPDATE `creature_template` SET `DamageMultiplier`='32', `Armor`='6295', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12259');

-- 沙斯拉尔
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='6295', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12264');

-- 抽笞者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='13022');

-- 米尔顿·比斯
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='13082');

-- 联盟医师
UPDATE `creature_template` SET `UnitFlags`='2' WHERE (`Entry`='13116');

-- 部落医师
UPDATE `creature_template` SET `UnitFlags`='2' WHERE (`Entry`='13117');

-- 拉格纳罗斯之焰
UPDATE `creature_template` SET `MinLevel`='60', `MaxLevel`='60', `FactionAlliance`='91', `FactionHorde`='91', `Scale`='0' WHERE (`Entry`='13148');

-- 腐蚀群居虫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='13160');

-- 诺克赛恩幼体
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='13696');

-- 暮光之王艾沃兰
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`Entry`='14479');

-- 高阶祭司温诺希斯
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14507');

-- 高阶祭司塞卡尔
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14509');

-- 高阶祭司玛尔里
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14510');

-- 高阶祭司娅尔罗
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14515');

-- 高阶祭司耶克里克
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14517');

-- 恐惧谷的灵魂
UPDATE `creature_template` SET `DamageMultiplier`='1', `MinMeleeDmg`='102', `MaxMeleeDmg`='138', `MinRangedDmg`='0', `MaxRangedDmg`='0', `MeleeAttackPower`='252', `RangedAttackPower`='26', `MeleeBaseAttackTime`='2000', `RangedBaseAttackTime`='2000' WHERE (`Entry`='14564');

-- 邪枝绑架者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='14748');

-- 觅血者前锋
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14750');

-- 祭品巨魔
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14826');

-- 哈卡
UPDATE `creature_template` SET `HealthMultiplier`='279.85', `DamageMultiplier`='1.5', `MinLevelHealth`='745804', `MaxLevelHealth`='745804', `Armor`='7291', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='0', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14834');

-- 寄居蛇
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14884');

-- 疯狂的觅血蝠
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14965');

-- 金度之影
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14986');

-- 强力治疗结界
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14987');

-- 奥根
UPDATE `creature_template` SET `DamageMultiplier`='1.5', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14988');

-- 玛尔里的爪牙
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='15041');

-- 祖利安徘徊者
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='15101');

-- 洗脑图腾
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121', `AIName`='' WHERE (`Entry`='15112');

-- 加兹兰卡
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='15114');

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
