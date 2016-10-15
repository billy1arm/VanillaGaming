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

-- 暴怒的银背猩猩
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='1511');

-- 大领主泰兰·弗丁
UPDATE `creature_template` SET `PowerMultiplier`='20', `DamageMultiplier`='9.2', `MechanicImmuneMask`='617299803' WHERE (`Entry`='1842');

-- 黑暗院长加丁
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='1853');

-- 食腐虫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='2462');

-- 自爆绵羊
UPDATE `creature_template` SET `ScriptName`='npc_explosive_sheep' WHERE (`Entry`='2675');

-- 断牙
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE (`Entry`='2850');

-- 巴尔丹掘地工
UPDATE `creature_template` SET `FactionAlliance`='47', `FactionHorde`='47' WHERE (`Entry`='2989');

-- 巴尔丹鉴定官
UPDATE `creature_template` SET `FactionAlliance`='47', `FactionHorde`='47' WHERE (`Entry`='2990');

-- 石头看守者
UPDATE `creature_template` SET `UnitFlags`='2' WHERE (`Entry`='4857');

-- 沙怒暗影法师
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='5648');

-- 沙怒饮血者
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='5649');

-- 沙怒巫医
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='5650');

-- 伊兰尼库斯的阴影
UPDATE `creature_template` SET `UnitFlags`='0' WHERE (`Entry`='5709');

-- “跳跃者”塔克
UPDATE `creature_template` SET `SpeedWalk`='1.75', `SpeedRun`='2.5' WHERE (`Entry`='5842');

-- 守望堡士兵
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='5999');

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
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286', `AIName`='' WHERE (`Entry`='7271');

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
UPDATE `creature_template` SET `NpcFlags`='0', `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7604');

-- 拉文
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7605');

-- 欧罗·血眼
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7606');

-- 维格利
UPDATE `creature_template` SET `NpcFlags`='0', `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7607');

-- 穆尔塔
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7608');

-- 哈扎里寄生虫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='7769');

-- 祖穆拉恩结界
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1' WHERE (`Entry`='7785');

-- 祖穆拉恩骷髅
UPDATE `creature_template` SET `SpeedWalk`='0.888888', `SpeedRun`='1.14286' WHERE (`Entry`='7786');

-- 沙怒奴隶
UPDATE `creature_template` SET `ExtraFlags`='64', `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7787');

-- 沙怒苦工
UPDATE `creature_template` SET `ExtraFlags`='64', `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='7788');

-- 沙怒智障者
UPDATE `creature_template` SET `ExtraFlags`='64', `SpeedWalk`='1.6', `SpeedRun`='0.714286' WHERE (`Entry`='7789');

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

-- 格朗特
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.42857' WHERE (`Entry`='8303');

-- 沙怒侍僧
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='8876');

-- 沙怒狂热者
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='8877');

-- 铁怒预备兵
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='8901');

-- 无敌的潘佐尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='8923');

-- 铁炉堡公主茉艾拉·铜须
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='8929');

-- 傀儡统帅阿格曼奇
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='8983');

-- 贝尔加
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9016');

-- 伊森迪奥斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9017');

-- 审讯官格斯塔恩
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9018');

-- 达格兰·索瑞森大帝
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9019');

-- 控火师罗格雷恩
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9024');

-- 洛考尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9025');

-- 修行者高罗什
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9027');

-- 格里兹尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9028');

-- 剜眼者
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9029');

-- 破坏者奥科索尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9030');

-- 阿努希尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9031');

-- 爬行者赫杜姆
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9032');

-- 怒炉将军
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9033');

-- 典狱官斯迪尔基斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9041');

-- 弗诺斯·达克维尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9056');

-- 弗莱拉斯大使
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9156');

-- 欧莫克大王
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9196');

-- 尖石统帅
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9218');

-- 尖石屠夫
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9219');

-- 暗影猎手沃什加斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9236');

-- 指挥官沃恩
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9237');

-- 驯犬者格雷布玛尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9319');

-- 普拉格
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9499');

-- 法拉克斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9502');

-- 科卡尔入侵者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9524');

-- 霍尔雷·黑须
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9537');

-- 雷布里·斯库比格特
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9543');

-- 维姆萨拉克
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9568');

-- 班诺克·巨斧
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9596');

-- 军需官兹格雷斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9736');

-- 喷焰小鬼
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9776');

-- 灵焰小鬼
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9777');

-- 怒焰小鬼
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='9779');

-- 玛格姆斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='9938');

-- 杉达尔·沙掠者
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='10080');

-- 灰尘怨灵
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='10081');

-- 泽雷利斯
UPDATE `creature_template` SET `SpeedWalk`='1', `SpeedRun`='1.14286' WHERE (`Entry`='10082');

-- 奥妮克希亚
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='7800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='10184');

-- 哈雷肯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10220');

-- 索拉卡·火冠
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10264');

-- 奴役者基兹鲁尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10268');

-- 盖斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10339');

-- 水晶之牙
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10376');

-- 骷髅守护者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10390');

-- 骷髅狂战士
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10391');

-- 斯库尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10393');

-- 维克图斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10432');

-- 马杜克·布莱克波尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10433');

-- 巴瑟拉斯镇长
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10435');

-- 安娜丝塔丽男爵夫人
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10436');

-- 奈鲁布恩坎
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10437');

-- 苍白的玛勒基
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10438');

-- 吞咽者拉姆斯登
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10439');

-- 瑞文戴尔男爵
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10440');

-- 复生的尸体
UPDATE `creature_template` SET `ExtraFlags`='64', `LootId`='0' WHERE (`Entry`='10481');

-- 复活的畸形骷髅
UPDATE `creature_template` SET `ExtraFlags`='64', `LootId`='0' WHERE (`Entry`='10485');

-- 生病的食尸鬼
UPDATE `creature_template` SET `ExtraFlags`='64', `LootId`='0' WHERE (`Entry`='10495');

-- 伊露希亚·巴罗夫
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10502');

-- 詹迪斯·巴罗夫
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10503');

-- 阿雷克斯·巴罗夫领主
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10504');

-- 讲师玛丽希亚
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10505');

-- 传令官基尔图诺斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10506');

-- 拉文尼亚
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10507');

-- 莱斯·霜语
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10508');

-- 杰德
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10509');

-- 不可宽恕者
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10516');

-- 弗雷斯特恩
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10558');

-- 乌洛克
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10584');

-- 烟网蛛后
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10596');

-- 时光寄生虫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10717');

-- 悲惨的提米
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10808');

-- 石脊
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10809');

-- 档案管理员加尔福特
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10811');

-- 巴纳扎尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10813');

-- 古拉鲁克
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10899');

-- 博学者普克尔特
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10901');

-- 碎矛巨魔
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10919');

-- 腐烂虫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='10925');

-- 炮手威利
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='10997');

-- 红衣火枪手
UPDATE `creature_template` SET `ExtraFlags`='64', `MinLootGold`='0', `MaxLootGold`='0', `EquipmentTemplateId`='2407', `AIName`='', `ScriptName`='npc_crimson_rifleman' WHERE (`Entry`='11054');

-- 瑟尔林·卡斯迪诺夫教授
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11261');

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

-- 苏斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11467');

-- 托塞德林王子
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11486');

-- 卡雷迪斯镇长
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11487');

-- 伊琳娜·暗木
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11488');

-- 特迪斯·扭木
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11489');

-- 瑟雷姆·刺蹄
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11490');

-- 荒野变形者奥兹恩
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11492');

-- 伊莫塔尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11496');

-- 戈多克大王
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11501');

-- 拉格纳罗斯
UPDATE `creature_template` SET `DamageMultiplier`='18', `Armor`='7291', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11502');

-- 血骨傀儡
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='11622');

-- 熔核巨人
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11658');

-- 熔核摧毁者
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='7491', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='11659');

-- 火妖
UPDATE `creature_template` SET `DamageMultiplier`='32', `Armor`='6000', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121', `AIName`='', `ScriptName`='npc_flamewaker' WHERE (`Entry`='11661');

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

-- 米库提奥·污血
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='11886');

-- 地穴抢劫者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='11887');

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
UPDATE `creature_template` SET `DamageMultiplier`='30', `Armor`='6100', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121', `AIName`='', `ScriptName`='npc_flamewaker_protector' WHERE (`Entry`='12119');

-- 提里奥·弗丁
UPDATE `creature_template` SET `DamageMultiplier`='5' WHERE (`Entry`='12126');

-- 奥妮克希亚守卫
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='363', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='12129');

-- 瑟莱德丝公主
UPDATE `creature_template` SET `MechanicImmuneMask`='116080631' WHERE (`Entry`='12201');

-- 恶鞭掠夺者
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='12204');

-- 恶鞭女巫
UPDATE `creature_template` SET `ExtraFlags`='64' WHERE (`Entry`='12205');

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

-- 海多斯博恩
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='13280');

-- 诺克赛恩幼体
UPDATE `creature_template` SET `ExtraFlags`='64', `LootId`='0' WHERE (`Entry`='13696');

-- 卫兵芬古斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='14321');

-- 践踏者克雷格
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='14322');

-- 卫兵斯里基克
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='14323');

-- 观察者克鲁什
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='14324');

-- 克罗卡斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='14325');

-- 卫兵摩尔达
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='14326');

-- 蕾瑟塔蒂丝
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='14327');

-- 普希林
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='14354');

-- 暮光之王艾沃兰
UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`Entry`='14479');

-- 赫尔努拉斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='14506');

-- 高阶祭司温诺希斯
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14507');

-- 高阶祭司塞卡尔
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14509');

-- 高阶祭司玛尔里
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14510');

-- 高阶祭司娅尔罗
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121' WHERE (`Entry`='14515');

-- 死亡骑士达克雷尔
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='14516');

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
UPDATE `creature_template` SET `Armor`='6800', `ResistanceHoly`='121', `ResistanceFire`='121', `ResistanceNature`='121', `ResistanceFrost`='121', `ResistanceShadow`='121', `ResistanceArcane`='121', `ScriptName`='' WHERE (`Entry`='14987');

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

-- 布莱卡维尔上尉
DELETE FROM `creature_template` WHERE `Entry`='15440';
-- INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `GossipMenuId`, `EquipmentTemplateId`, `Civilian`, `AIName`, `ScriptName`) VALUES ('15440', 'Captain Blackanvil', 'Ironforge Brigade Captain', '60', '60', '15448', '0', '0', '0', '55', '55', '0', '0', '7', '3', '3', '0', '2', '0', '0', '0', '0', '1.3', '1.14286', '1', '1', '1', '1', '1', '1', '-1', '1', '24000', '24000', '0', '0', '351', '400', '92.3', '120.6', '0', '173', '100', '1250', '1400', '0', '1', '756', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '');

-- 莫尔·灰蹄
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='16080');

-- 伊萨利恩
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='16097');

-- 亚雷恩
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='16101');

-- 索托斯
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='16102');

-- 库尔莫克
UPDATE `creature_template` SET `MechanicImmuneMask`='617299803' WHERE (`Entry`='16118');

-- 赞助商人
DELETE FROM `creature_template` WHERE `Entry`='30000';
INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `GossipMenuId`, `EquipmentTemplateId`, `Civilian`, `AIName`, `ScriptName`) VALUES ('30000', '赞助商人', 'VanillaGaming', '63', '63', '2970', '0', '0', '0', '120', '120', '0', '0', '7', '3', '3', '0', '1', '6', '0', '0', '0', '1.2', '1.6', '8', '3', '138.697', '233.71', '10', '1', '1', '1', '462000', '462000', '612320', '612320', '571', '737', '220.81', '320.77', '0', '302', '100', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '652951551', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1745', '0', '', 'vip_scripts');

-- 团队训练假人
DELETE FROM `creature_template` WHERE `Entry`='30001';
INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `GossipMenuId`, `EquipmentTemplateId`, `Civilian`, `AIName`, `ScriptName`) VALUES ('30001', '团队训练假人', 'VanillaGaming', '63', '63', '3019', '0', '0', '0', '7', '7', '1.6', '0', '9', '3', '3', '0', '0', '131076', '0', '2', '0', '1', '1', '1', '3', '1', '1', '1', '1', '-1', '1', '8888888', '8888888', '0', '0', '0', '0', '1.76', '2.42', '8000', '0', '100', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16384', '90', '90', '90', '90', '90', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', 'npc_training_dummy');

-- 高级训练假人
DELETE FROM `creature_template` WHERE `Entry`='30002';
INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `GossipMenuId`, `EquipmentTemplateId`, `Civilian`, `AIName`, `ScriptName`) VALUES ('30002', '高级训练假人', 'VanillaGaming', '60', '60', '3019', '0', '0', '0', '7', '7', '1.4', '0', '9', '3', '1', '0', '0', '131076', '0', '2', '0', '1', '1', '1', '2', '1', '1', '1', '1', '-1', '1', '8888888', '8888888', '0', '0', '0', '0', '1.76', '2.42', '6000', '0', '100', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16384', '70', '70', '70', '70', '70', '70', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', 'npc_training_dummy');

-- 小塔克
DELETE FROM `creature_template` WHERE `Entry`='40000';
INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `MinLevel`, `MaxLevel`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`, `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateStats`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`, `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `PowerMultiplier`, `DamageMultiplier`, `DamageVariance`, `ArmorMultiplier`, `ExperienceMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`, `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`, `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `MechanicImmuneMask`, `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `GossipMenuId`, `EquipmentTemplateId`, `Civilian`, `AIName`, `ScriptName`) VALUES ('40000', '小塔克', '迅猛龙王子', '1', '1', '1337', '0', '0', '0', '1', '1', '0.25', '0', '1', '3', '3', '0', '1', '0', '0', '2', '0', '1', '1.14286', '1', '0', '1', '1', '1', '1', '-1', '1', '64', '64', '0', '0', '10', '11', '1.76', '2.42', '0', '5', '100', '2000', '2200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', 'npc_small_takk');
