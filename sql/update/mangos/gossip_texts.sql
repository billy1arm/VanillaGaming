/*
Navicat MySQL Data Transfer

Source Server         : VanillaGaming
Source Database       : z-mangos

Target Server Type    : MYSQL
File Encoding         : 65001
*/

-- ----------------------------
-- Updates of gossip_texts
-- ----------------------------

-- 机械打手4100型
DELETE FROM `gossip_texts` WHERE `entry`='-3000111';
INSERT INTO `gossip_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `comment`) VALUES ('-3000111', 'Turn the key to start the machine.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'threshwackonator  GOSSIP_ITEM_TURN_KEY');
