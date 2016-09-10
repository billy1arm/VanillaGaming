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

-- 矿工联盟的储物箱
UPDATE `gameobject` SET `spawntimesecs`='300' WHERE (`id`='271');

-- 提瑞斯法南瓜
UPDATE `gameobject` SET `spawntimesecs`='300' WHERE (`id`='375');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='2850');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='2852');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='2855');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='2857');

-- 被偷走的补给袋
UPDATE `gameobject` SET `spawntimesecs`='300' WHERE (`id`='3290');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='4149');
	
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

-- 瑟玛普拉格的保险箱
UPDATE `gameobject` SET `spawntimesecs`='5' WHERE (`id`='142477');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='153451');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='153453');

-- 坚固的箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='153454');

-- 坚固的大箱子
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='153464');

-- 大型秘银储物箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='153468');

-- 大型秘银储物箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='153469');

-- 黑暗宝箱
UPDATE `gameobject` SET `spawntimesecs`='86400' WHERE (`id`='160845');

-- 补给箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='166872');

-- 补给箱
UPDATE `gameobject` SET `spawntimesecs`='43200' WHERE (`id`='176224');

-- 香烟
UPDATE `gameobject` SET `spawntimesecs`='10800' WHERE (`id`='176248');

-- 天灾军团档案
UPDATE `gameobject` SET `spawntimesecs`='10' WHERE (`id`='176249');

-- 末日草
UPDATE `gameobject` SET `spawntimesecs`='300' WHERE (`id`='176753');

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
DELETE FROM `gameobject` WHERE `id`='176589';
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20263', '176589', '0', '-7751', '-2115', '133.439', '1.466', '0', '0', '0.669102', '0.74317', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20264', '176589', '0', '3152.23', '-3727', '133.804', '0.541', '0', '0', '0.267213', '0.963637', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20265', '176589', '1', '5680.18', '-4517', '766.4', '1.414', '0', '0', '0.649556', '0.760314', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20266', '176589', '0', '-7702', '-1532', '132.293', '-3', '0', '0', '-0.997495', '0.0707372', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20267', '176589', '1', '-7910', '1883.64', '11.901', '0.541', '0', '0', '0.267213', '0.963637', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20268', '176589', '0', '-7815', '-2063', '134.002', '1.371', '0', '0', '0.63306', '0.774103', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20269', '176589', '1', '8177.92', '-3885', '706.106', '0.419', '0', '0', '0.207971', '0.978135', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20270', '176589', '1', '5087.43', '-4799', '856.715', '4.659', '0', '0', '0.725729', '-0.687981', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20271', '176589', '0', '3026.97', '-3701', '130.465', '4.738', '0', '0', '0.697994', '-0.716103', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20272', '176589', '0', '-8113', '-1217', '136.675', '0.38', '0', '0', '0.188859', '0.982004', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20273', '176589', '1', '8124.4', '-3812', '701.824', '3.091', '0', '0', '0.99968', '0.0252936', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20274', '176589', '1', '-7908', '1898.56', '12.147', '3.895', '0', '0', '0.929882', '-0.367857', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20275', '176589', '0', '-7620.87', '-709.08', '182.742', '1.46608', '0', '0', '0.669132', '0.743144', '7200', '255', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20276', '176589', '1', '6480.53', '-5114', '766.217', '3.552', '0', '0', '0.97902', '-0.203767', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20277', '176589', '0', '2981.9', '-3740', '126.154', '3.121', '0', '0', '0.999947', '0.0102961', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20278', '176589', '1', '5731.28', '-4532', '761.863', '0.403', '0', '0', '0.200139', '0.979768', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20279', '176589', '0', '-7941', '-884.056', '130.403', '-2.40855', '0', '0', '-0.93358', '0.35837', '7200', '255', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20280', '176589', '0', '-7899', '-1346', '135.428', '6.184', '0', '0', '0.0495723', '-0.998771', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20281', '176589', '1', '6534.58', '-3914', '663.082', '4.449', '0', '0', '0.793837', '-0.608131', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20282', '176589', '0', '-7777', '-2699', '173.787', '-2', '0', '0', '-0.841471', '0.540302', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20283', '176589', '0', '3007.17', '-4888', '108.379', '2.128', '0', '0', '0.874304', '0.485379', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20284', '176589', '0', '-8006', '-2479', '135.256', '1.24', '0', '0', '0.581035', '0.813878', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20285', '176589', '0', '2067.25', '-4491', '74.347', '0.819', '0', '0', '0.398151', '0.91732', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20286', '176589', '1', '6536.91', '-5112', '769.792', '4.872', '0', '0', '0.648485', '-0.761227', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20287', '176589', '1', '5536.19', '-4971', '843.9', '4.667', '0', '0', '0.722971', '-0.690879', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20288', '176589', '0', '-7979', '-2509', '134.837', '1.616', '0', '0', '0.722907', '0.690946', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20289', '176589', '0', '-7987', '-1364', '132.401', '6.169', '0', '0', '0.0570616', '-0.998371', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20290', '176589', '1', '5554.61', '-4915', '837.844', '0.742', '0', '0', '0.362548', '0.931965', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20291', '176589', '1', '-8077.72', '960.008', '48.8815', '0.994339', '0', '0', '0.47694', '0.878936', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20292', '176589', '1', '-7886.15', '1178.26', '-1.58162', '0.355033', '0', '0', '0.176586', '0.984285', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20293', '176589', '0', '-7722', '-1626', '136.02', '3.487', '0', '0', '0.985124', '-0.171846', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20294', '176589', '0', '-7985', '-1308', '133.409', '-1', '0', '0', '-0.479426', '0.877583', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20295', '176589', '0', '-7801', '-2100', '133.439', '0.299', '0', '0', '0.148944', '0.988846', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20296', '176589', '0', '2038.93', '-4513', '73.623', '3.953', '0', '0', '0.918825', '-0.394665', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20297', '176589', '0', '-7922', '-1410', '137.799', '1.956', '0', '0', '0.829382', '0.558682', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20298', '176589', '1', '5713.17', '-4569', '764.981', '5.647', '0', '0', '0.312756', '-0.949834', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20299', '176589', '0', '1575.14', '-3213', '78.003', '4.924', '0', '0', '0.628476', '-0.777829', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20300', '176589', '1', '5014.98', '-4747', '857.683', '2.614', '0', '0', '0.965407', '0.260747', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20301', '176589', '1', '6596.97', '-3974', '664.124', '6.16', '0', '0', '0.0615538', '-0.998104', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20302', '176589', '1', '6607.47', '-3899', '658.772', '1.377', '0', '0', '0.63538', '0.7722', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20303', '176589', '0', '2424.83', '-5085', '84.331', '3.856', '0', '0', '0.936878', '-0.349656', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20304', '176589', '0', '2451.17', '-5143', '79.494', '5.216', '0', '0', '0.50863', '-0.860985', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20305', '176589', '0', '-7991', '-840', '132.058', '2.495', '0', '0', '0.948193', '0.317694', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20306', '176589', '1', '-8132', '291.22', '-10', '5.928', '0', '0', '0.176661', '-0.984272', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('20307', '176589', '0', '-8137', '-1187', '134.373', '5.209', '0', '0', '0.51164', '-0.8592', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('33420', '176589', '0', '-8237.66', '-1185.92', '142.557', '2.46091', '0', '0', '0.942641', '0.333809', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('45837', '176589', '0', '1663.37', '-5585.61', '102.194', '-0.087267', '0', '0', '-0.0436197', '0.999048', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('49139', '176589', '1', '6624.31', '-4034.23', '658.501', '-0.069813', '0', '0', '-0.0348994', '0.999391', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('49412', '176589', '1', '-6501.72', '1818.61', '3.57448', '-0.785398', '0', '0', '-0.382683', '0.92388', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('63727', '176589', '0', '1601.52', '-3254.44', '86.8639', '-1.76278', '0', '0', '-0.771624', '0.636079', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('63728', '176589', '0', '2052.08', '-4498.23', '74.777', '-1.76278', '0', '0', '-0.771624', '0.636079', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('65289', '176589', '0', '-7620.87', '-709.08', '182.742', '1.46608', '0', '0', '0.669132', '0.743144', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('65290', '176589', '0', '-8238.41', '-1756.23', '147.111', '1.5708', '0', '0', '0.707108', '0.707106', '7200', '100', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('86503', '176589', '0', '3151.6', '-3727.88', '-61.2898', '0.541051', '0', '0', '0.267238', '0.963631', '7200', '255', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('86504', '176589', '1', '6571.79', '-5104.69', '769.397', '2.86233', '0', '0', '0.990267', '0.139178', '7200', '255', '1');
-- INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('87316', '176589', '0', '2495.06', '-3827.97', '179.112', '3.07177', '0', '0', '0.999391', '0.0349043', '7200', '255', '1');


-- 毒蛇雕像
UPDATE `gameobject` SET `spawntimesecs`='10' WHERE (`guid`='177673');

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

-- 龙语傻瓜教程
DELETE FROM `gameobject` WHERE `guid`='120618';
DELETE FROM `gameobject` WHERE `guid`='500001';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES ('120618', '180665', '0', '-8340.24', '413.397', '124.49', '2.89435', '0', '0', '0.992368', '0.123309', '0', '100', '1');

--
-- 矿草刷新
--

-- 黄金参(390)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='176583');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='176638');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='180167');

-- 魔皇草(645)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1620');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='3727');

-- 阿尔萨斯之泪(132)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='142141');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='176642');

-- 银叶草(875)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1617');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='3725');

-- 金棘草(690)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='2046');

-- 野钢花(527)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1623');

-- 跌打草(1196)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1622');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='3730');

-- 荆棘藻(550)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='2045');

-- 紫莲花(295)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='142140');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='180165');

-- 石南草(600)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1621');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='3729');

-- 盲目草(183)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='142143');

-- 皇血草(389)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1624');

-- 火焰花(198)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='2866');

-- 活根草(371)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='2041');

-- 枯叶草(267)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='2042');

-- 幽灵菇(54)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='142144');

-- 宁神花(537)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1618');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='3724');

-- 太阳草(412)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='142142');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='176636');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='180164');

-- 墓地苔(110)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1628');

-- 地根草(501)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1619');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='3726');

-- 卡德加的胡须(484)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='2043');

-- 龙齿草(34)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='2044');

-- 瘟疫花
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='176587');
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='176641');

-- 山鼠草
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='176586');
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='176640');
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='180166');

-- 梦叶草
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='176584');
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='176639');
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='180168');

-- 格罗姆之血
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='142145');
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='176637');

-- 冰盖草
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='176588');

-- 黑铁矿脉(370)
UPDATE `gameobject` SET `spawntimesecs`='3600' WHERE (`id`='165658');

-- 锡矿(1519)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1732');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='2054');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='3764');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='103711');

-- 银矿(2021)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1733');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='105569');

-- 铜矿(1653)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1731');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='2055');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='3763');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='103713');

-- 铁矿石(1719)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1735');

-- 金矿石(2055)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='1734');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='150080');

-- 软泥覆盖的秘银矿脉(28)
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='123310');

-- 软泥覆盖的瑟银矿脉(18)
UPDATE `gameobject` SET `spawntimesecs`='10800' WHERE (`id`='123848');

-- 被软泥覆盖的金矿(1)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='73941');

-- 被软泥覆盖的富瑟银矿(30)
UPDATE `gameobject` SET `spawntimesecs`='10800' WHERE (`id`='177388');

-- 精铁矿脉(3)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='19903');

-- 秘银矿脉(1824)
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='2040');
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='150079');
UPDATE `gameobject` SET `spawntimesecs`='1800' WHERE (`id`='176645');

-- 真银矿石(1483)
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='2047');
UPDATE `gameobject` SET `spawntimesecs`='900' WHERE (`id`='150081');

-- 瑟银矿脉(913)
UPDATE `gameobject` SET `spawntimesecs`='10800' WHERE (`id`='324');
UPDATE `gameobject` SET `spawntimesecs`='10800' WHERE (`id`='150082');
UPDATE `gameobject` SET `spawntimesecs`='10800' WHERE (`id`='176643');

-- 火岩矿脉(58)
UPDATE `gameobject` SET `spawntimesecs`='120' WHERE (`id`='1610');
UPDATE `gameobject` SET `spawntimesecs`='120' WHERE (`id`='1667');

-- 次级血石矿脉(31)
UPDATE `gameobject` SET `spawntimesecs`='120' WHERE (`id`='2653');

-- 富瑟银矿(504)
UPDATE `gameobject` SET `spawntimesecs`='10800' WHERE (`id`='175404');

-- 火焰龙舌兰(16)
UPDATE `gameobject` SET `spawntimesecs`='180' WHERE (`id`='175928');

-- 哈卡瑟银矿脉(3)
UPDATE `gameobject` SET `spawntimesecs`='10800' WHERE (`id`='180215');

