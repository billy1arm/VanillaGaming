/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of command
-- ----------------------------

-- 重置天赋
UPDATE `command` SET `security`='0' WHERE (`name`='reset talents');

-- 战友招募
DELETE FROM `command` WHERE `name`='raf info';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('raf info', '0', 'Syntax: .raf info - 显示玩家招募信息命令');
DELETE FROM `command` WHERE `name`='raf link';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('raf link', '0', 'Syntax: .raf link - 绑定招募关系命令');
