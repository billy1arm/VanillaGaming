/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of gameobject_template
-- ----------------------------

-- 奥妮克希亚的蛋
UPDATE `gameobject_template` SET `data3`='17646' WHERE (`entry`='176511');

-- 毒蛇雕像
UPDATE `gameobject_template` SET `data2`='655360' WHERE (`entry`='177673');

-- 布满灰尘的书籍
UPDATE `gameobject_template` SET `size`='1.5' WHERE (`entry`='179547');
UPDATE `gameobject_template` SET `size`='1.5' WHERE (`entry`='179548');

-- 液态火焰
UPDATE `gameobject_template` SET `faction`='54', `flags`='64', `data2`='2', `data5`='1', `data6`='0' WHERE (`entry`='180125');

-- 詹迪斯·巴罗夫的日记
UPDATE `gameobject_template` SET `ScriptName`='' WHERE (`entry`='180794');
