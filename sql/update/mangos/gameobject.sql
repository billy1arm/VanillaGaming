/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of gameobject
-- ----------------------------

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='2850');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='2852');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='2855');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='2857');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='4149');
	
-- 坚固的大箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='74448');

-- 坚固的大箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='75298');

-- 坚固的大箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='75299');

-- 坚固的大箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='75300');

-- 大型秘银储物箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='131978');

-- 坚固的大箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='153464');

-- 大型秘银储物箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='153468');

-- 大型秘银储物箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='153469');

-- 补给箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='166872');

-- 补给箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='176224');

-- 香烟
UPDATE `gameobject` SET `spawntimesecs`='10800' WHERE (`id`='176248');

-- 天灾军团档案
UPDATE `gameobject` SET `spawntimesecs`='10' WHERE (`id`='176249');

-- 文件大火
DELETE FROM `gameobject` WHERE `guid`='120441';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('120441', '176295', '329', '3458.88', '-3106.35', '137.889', '3.14159', '0', '0', '1', '0', '-30', '100', '1');

-- 补给箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='176304');

-- 补给箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='176307');

-- 补给箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='176308');

-- 补给箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='176309');

-- 黑莲花
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='176589');

-- 布满灰尘的书籍
DELETE FROM `gameobject` WHERE `id`='179547';
DELETE FROM `gameobject` WHERE `id`='179548';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('30236', '179548', '429', '836.333', '493.379', '37.3182', '0.296705', '0', '0', '0.147809', '0.989016', '7200', '0', '1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('30237', '179548', '429', '512.784', '588.036', '-25.4023', '3.28124', '0', '0', '-0.997563', '0.0697661', '7200', '0', '1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('30238', '179548', '429', '288.206', '341.155', '2.85296', '5.49779', '0', '0', '-0.382683', '0.92388', '7200', '0', '1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('30239', '179548', '429', '-144.464', '742.017', '-24.5804', '3.85718', '0', '0', '-0.936671', '0.35021', '7200', '0', '1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('30240', '179548', '429', '-86.3983', '569.308', '28.6079', '1.78023', '0', '0', '0.777145', '0.629321', '7200', '0', '1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('30241', '179548', '429', '285.164', '-431.063', '-119.962', '4.69494', '0', '0', '-0.71325', '0.70091', '7200', '0', '1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('30242', '179548', '429', '-10.1152', '-353.771', '-54.0434', '3.78737', '0', '0', '-0.948323', '0.317306', '7200', '0', '1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('30243', '179548', '429', '118.018', '-261.472', '-4.14639', '0.087266', '0', '0', '0.0436192', '0.999048', '7200', '0', '1');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('30244', '179548', '429', '4.49781', '-437.567', '16.4125', '4.13643', '0', '0', '-0.878817', '0.47716', '7200', '0', '1');
	
-- 石鳞鳗群
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='180712');

-- 水晶尘土堆
DELETE FROM `gameobject` WHERE `id`='181597';

-- 水晶尘喷孔
DELETE FROM `gameobject` WHERE `id`='181598';

--
-- 矿草刷新
--

-- 黄金参(390)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='176583');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='176638');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='180167');

-- 魔皇草(645)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1620');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='3727');

-- 阿尔萨斯之泪(132)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='142141');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='176642');

-- 银叶草(875)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1617');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='3725');

-- 金棘草(690)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2046');

-- 野钢花(527)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1623');

-- 跌打草(1196)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1622');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='3730');

-- 荆棘藻(550)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2045');

-- 紫莲花(295)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='142140');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='180165');

-- 石南草(600)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1621');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='3729');

-- 盲目草(183)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='142143');

-- 皇血草(389)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1624');

-- 火焰花(198)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2866');

-- 活根草(371)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2041');

-- 枯叶草(267)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2042');

-- 幽灵菇(54)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='142144');

-- 宁神花(537)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1618');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='3724');

-- 太阳草(412)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='142142');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='176636');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='180164');

-- 墓地苔(110)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1628');

-- 地根草(501)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1619');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='3726');

-- 卡德加的胡须(484)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2043');

-- 龙齿草(34)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2044');

-- 瘟疫花
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='176587');
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='176641');

-- 山鼠草
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='176586');
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='176640');
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='180166');

-- 梦叶草
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='176584');
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='176639');
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='180168');

-- 格罗姆之血
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='142145');
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='176637');

-- 冰盖草
UPDATE `gameobject` SET `spawntimesecs`='7200' WHERE (`id`='176588');

-- 黑铁矿脉(370)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='165658');

-- 锡矿(1519)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1732');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2054');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='3764');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='103711');

-- 银矿(2021)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1733');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='105569');

-- 铜矿(1653)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1731');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2055');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='3763');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='103713');

-- 铁矿石(1719)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1735');

-- 金矿石(2055)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1734');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='150080');

-- 软泥覆盖的秘银矿脉(28)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='123310');

-- 软泥覆盖的瑟银矿脉(18)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='123848');

-- 被软泥覆盖的金矿(1)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='73941');

-- 被软泥覆盖的富瑟银矿(30)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='177388');

-- 精铁矿脉(3)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='19903');

-- 秘银矿脉(1824)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2040');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='150079');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='176645');

-- 真银矿石(1483)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='2047');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='150081');

-- 瑟银矿脉(913)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='324');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='150082');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='176643');

-- 火岩矿脉(58)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1610');
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='1667');

-- 次级血石矿脉(31)
UPDATE `gameobject` SET `spawntimesecs`='120' WHERE (`id`='2653');

-- 富瑟银矿(504)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='175404');

-- 哈卡瑟银矿脉(3)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='180215');

