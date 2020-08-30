/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : dormitories

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 20/08/2020 19:07:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action`  (
  `act_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍楼',
  `act_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `act_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操行详情',
  `act_evaluate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价',
  `act_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录日期',
  PRIMARY KEY (`act_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES (11, '1', '101', '查出危禁电器', '处于公开警告处罚', '2020-08-16');
INSERT INTO `action` VALUES (16, '1', '17', '17', '17', '2020-06-16');
INSERT INTO `action` VALUES (18, '2', '19', '19', '19', '2020-05-16');
INSERT INTO `action` VALUES (19, '3', '20', '20', '20', '2020-07-16');
INSERT INTO `action` VALUES (21, '6', '22', '22', '22', '2020-01-16');
INSERT INTO `action` VALUES (23, '5', '22', '22', '22', '2020-04-16');
INSERT INTO `action` VALUES (24, '4', '24', '24', '24', '2020-03-16');
INSERT INTO `action` VALUES (25, '8', '25', '25', '25', '2020-02-16');
INSERT INTO `action` VALUES (26, '9', '26', '26', '26', '2020-01-16');
INSERT INTO `action` VALUES (47, '1', '1', '1', '1', NULL);
INSERT INTO `action` VALUES (48, '1', '1', '1', '1', '2020/8/19');
INSERT INTO `action` VALUES (49, '2', '2', '2', '2', '2020/8/19');
INSERT INTO `action` VALUES (50, '3', '3', '3', '3', '2020/8/19');
INSERT INTO `action` VALUES (51, '4', '4', '4', '4', '2020/8/19');
INSERT INTO `action` VALUES (52, '5', '5', '5', '5', '2020/8/19');
INSERT INTO `action` VALUES (53, '6', '6', '6', '6', '2020/8/19');
INSERT INTO `action` VALUES (54, '7', '7', '7', '7', '2020/8/19');
INSERT INTO `action` VALUES (55, '1', '1', '1', '1', '2020-08-19');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `bld_id` int(11) NOT NULL AUTO_INCREMENT,
  `bld_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍楼名称',
  `bld_address` int(11) NULL DEFAULT 0 COMMENT '宿舍楼地址',
  `bld_college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属院系',
  `nums` int(11) NULL DEFAULT NULL COMMENT '统计',
  PRIMARY KEY (`bld_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES (6, '1', 0, '1001', NULL);
INSERT INTO `building` VALUES (7, '2', 0, '1002', NULL);
INSERT INTO `building` VALUES (8, '3', 0, '1003', NULL);
INSERT INTO `building` VALUES (9, '4', 0, '1004', NULL);
INSERT INTO `building` VALUES (10, '5', 0, '1005', NULL);
INSERT INTO `building` VALUES (11, '6', 0, '1006', NULL);
INSERT INTO `building` VALUES (12, '7', 0, '1007', NULL);
INSERT INTO `building` VALUES (13, '8', 0, '1008', NULL);
INSERT INTO `building` VALUES (14, '9', 0, '1009', NULL);
INSERT INTO `building` VALUES (15, '10', 0, '1010', NULL);

-- ----------------------------
-- Table structure for checkin
-- ----------------------------
DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin`  (
  `ch_id` int(11) NOT NULL AUTO_INCREMENT,
  `ch_stu_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `ch_stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住学生姓名',
  `ch_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住宿舍楼',
  `ch_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住宿舍号',
  `ch_bed` int(11) NULL DEFAULT NULL COMMENT '床位',
  `ch_state` int(11) NULL DEFAULT 0 COMMENT '当前状态',
  `nums` int(11) NULL DEFAULT NULL COMMENT '统计用的',
  PRIMARY KEY (`ch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 230 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkin
-- ----------------------------
INSERT INTO `checkin` VALUES (1, '20180022001', '小志', 'a栋', '101', 1, 0, NULL);
INSERT INTO `checkin` VALUES (2, '20180022002', '猪猪', 'a栋', '101', 2, 0, NULL);
INSERT INTO `checkin` VALUES (3, '20180022003', 'juju', 'b栋', '101', 1, 0, NULL);
INSERT INTO `checkin` VALUES (4, '20180022004', 'cc', 'b栋', '101', 2, 1, NULL);
INSERT INTO `checkin` VALUES (26, '20200022001', 'a', 'a栋', '201', 1, 0, NULL);
INSERT INTO `checkin` VALUES (27, '20190022001', 'b', 'b栋', '101', 3, 0, NULL);
INSERT INTO `checkin` VALUES (28, '20200022001', '海洋1号', '5', '101', 8, 0, NULL);
INSERT INTO `checkin` VALUES (29, '20200022002', '海洋2号', '5', '102', 6, 1, NULL);
INSERT INTO `checkin` VALUES (30, '20200022003', '海洋3号', '4', '103', 4, 1, NULL);
INSERT INTO `checkin` VALUES (31, '20200022004', '海洋4号', '9', '104', 4, 1, NULL);
INSERT INTO `checkin` VALUES (32, '20200022005', '海洋5号', '1', '105', 4, 1, NULL);
INSERT INTO `checkin` VALUES (33, '20200022006', '海洋6号', '3', '106', 6, 1, NULL);
INSERT INTO `checkin` VALUES (34, '20200022007', '海洋7号', '8', '107', 8, 0, NULL);
INSERT INTO `checkin` VALUES (35, '20200022008', '海洋8号', '2', '108', 6, 1, NULL);
INSERT INTO `checkin` VALUES (36, '20200022009', '海洋9号', '5', '109', 8, 0, NULL);
INSERT INTO `checkin` VALUES (37, '20200022010', '海洋10号', '4', '110', 6, 1, NULL);
INSERT INTO `checkin` VALUES (38, '20200022011', '海洋11号', '7', '111', 4, 1, NULL);
INSERT INTO `checkin` VALUES (39, '20200022012', '海洋12号', '3', '112', 4, 1, NULL);
INSERT INTO `checkin` VALUES (40, '20200022013', '海洋13号', '2', '113', 6, 1, NULL);
INSERT INTO `checkin` VALUES (41, '20200022014', '海洋14号', '4', '114', 4, 1, NULL);
INSERT INTO `checkin` VALUES (42, '20200022015', '海洋15号', '5', '115', 8, 0, NULL);
INSERT INTO `checkin` VALUES (43, '20200022016', '海洋16号', '9', '116', 8, 1, NULL);
INSERT INTO `checkin` VALUES (44, '20200022017', '海洋17号', '10', '117', 4, 0, NULL);
INSERT INTO `checkin` VALUES (45, '20200022018', '海洋18号', '4', '118', 8, 0, NULL);
INSERT INTO `checkin` VALUES (46, '20200022019', '海洋19号', '3', '119', 8, 1, NULL);
INSERT INTO `checkin` VALUES (47, '20200022020', '海洋20号', '7', '120', 4, 1, NULL);
INSERT INTO `checkin` VALUES (48, '20200022021', '海洋21号', '5', '121', 8, 0, NULL);
INSERT INTO `checkin` VALUES (49, '20200022022', '海洋22号', '7', '122', 8, 0, NULL);
INSERT INTO `checkin` VALUES (50, '20200022023', '海洋23号', '6', '123', 4, 0, NULL);
INSERT INTO `checkin` VALUES (51, '20200022024', '海洋24号', '8', '124', 4, 1, NULL);
INSERT INTO `checkin` VALUES (52, '20200022025', '海洋25号', '5', '125', 4, 1, NULL);
INSERT INTO `checkin` VALUES (53, '20200022026', '海洋26号', '2', '126', 6, 0, NULL);
INSERT INTO `checkin` VALUES (54, '20200022027', '海洋27号', '3', '127', 4, 0, NULL);
INSERT INTO `checkin` VALUES (55, '20200022028', '海洋28号', '2', '128', 8, 1, NULL);
INSERT INTO `checkin` VALUES (56, '20200022029', '海洋29号', '3', '129', 8, 0, NULL);
INSERT INTO `checkin` VALUES (57, '20200022030', '海洋30号', '10', '130', 4, 1, NULL);
INSERT INTO `checkin` VALUES (58, '20200022031', '海洋31号', '9', '131', 4, 0, NULL);
INSERT INTO `checkin` VALUES (59, '20200022032', '海洋32号', '1', '132', 8, 1, NULL);
INSERT INTO `checkin` VALUES (60, '20200022033', '海洋33号', '9', '133', 6, 0, NULL);
INSERT INTO `checkin` VALUES (61, '20200022034', '海洋34号', '4', '134', 8, 1, NULL);
INSERT INTO `checkin` VALUES (62, '20200022035', '海洋35号', '8', '135', 6, 0, NULL);
INSERT INTO `checkin` VALUES (63, '20200022036', '海洋36号', '7', '136', 4, 0, NULL);
INSERT INTO `checkin` VALUES (64, '20200022037', '海洋37号', '8', '137', 8, 0, NULL);
INSERT INTO `checkin` VALUES (66, '20200022039', '海洋39号', '4', '139', 8, 0, NULL);
INSERT INTO `checkin` VALUES (67, '20200022040', '海洋40号', '9', '140', 8, 0, NULL);
INSERT INTO `checkin` VALUES (68, '20200022041', '海洋41号', '10', '141', 8, 0, NULL);
INSERT INTO `checkin` VALUES (69, '20200022042', '海洋42号', '1', '142', 8, 1, NULL);
INSERT INTO `checkin` VALUES (70, '20200022043', '海洋43号', '6', '143', 4, 0, NULL);
INSERT INTO `checkin` VALUES (71, '20200022044', '海洋44号', '6', '144', 6, 0, NULL);
INSERT INTO `checkin` VALUES (72, '20200022045', '海洋45号', '10', '145', 8, 0, NULL);
INSERT INTO `checkin` VALUES (73, '20200022046', '海洋46号', '3', '146', 4, 1, NULL);
INSERT INTO `checkin` VALUES (74, '20200022047', '海洋47号', '1', '147', 4, 1, NULL);
INSERT INTO `checkin` VALUES (75, '20200022048', '海洋48号', '8', '148', 6, 1, NULL);
INSERT INTO `checkin` VALUES (76, '20200022049', '海洋49号', '7', '149', 8, 1, NULL);
INSERT INTO `checkin` VALUES (77, '20200022050', '海洋50号', '10', '150', 6, 1, NULL);
INSERT INTO `checkin` VALUES (78, '20200022051', '海洋51号', '5', '151', 8, 1, NULL);
INSERT INTO `checkin` VALUES (79, '20200022052', '海洋52号', '3', '152', 4, 0, NULL);
INSERT INTO `checkin` VALUES (80, '20200022053', '海洋53号', '9', '153', 4, 0, NULL);
INSERT INTO `checkin` VALUES (81, '20200022054', '海洋54号', '7', '154', 4, 0, NULL);
INSERT INTO `checkin` VALUES (82, '20200022055', '海洋55号', '2', '155', 4, 1, NULL);
INSERT INTO `checkin` VALUES (83, '20200022056', '海洋56号', '5', '156', 8, 0, NULL);
INSERT INTO `checkin` VALUES (84, '20200022057', '海洋57号', '9', '157', 4, 1, NULL);
INSERT INTO `checkin` VALUES (85, '20200022058', '海洋58号', '2', '158', 6, 1, NULL);
INSERT INTO `checkin` VALUES (86, '20200022059', '海洋59号', '1', '159', 8, 1, NULL);
INSERT INTO `checkin` VALUES (87, '20200022060', '海洋60号', '5', '160', 8, 0, NULL);
INSERT INTO `checkin` VALUES (88, '20200022061', '海洋61号', '4', '161', 8, 0, NULL);
INSERT INTO `checkin` VALUES (89, '20200022062', '海洋62号', '10', '162', 8, 1, NULL);
INSERT INTO `checkin` VALUES (90, '20200022063', '海洋63号', '9', '163', 6, 0, NULL);
INSERT INTO `checkin` VALUES (91, '20200022064', '海洋64号', '3', '164', 4, 0, NULL);
INSERT INTO `checkin` VALUES (92, '20200022065', '海洋65号', '8', '165', 8, 1, NULL);
INSERT INTO `checkin` VALUES (93, '20200022066', '海洋66号', '7', '166', 4, 0, NULL);
INSERT INTO `checkin` VALUES (94, '20200022067', '海洋67号', '4', '167', 4, 0, NULL);
INSERT INTO `checkin` VALUES (95, '20200022068', '海洋68号', '7', '168', 6, 1, NULL);
INSERT INTO `checkin` VALUES (96, '20200022069', '海洋69号', '2', '169', 8, 0, NULL);
INSERT INTO `checkin` VALUES (97, '20200022070', '海洋70号', '1', '170', 4, 1, NULL);
INSERT INTO `checkin` VALUES (98, '20200022071', '海洋71号', '8', '171', 4, 1, NULL);
INSERT INTO `checkin` VALUES (99, '20200022072', '海洋72号', '3', '172', 8, 1, NULL);
INSERT INTO `checkin` VALUES (100, '20200022073', '海洋73号', '1', '173', 8, 1, NULL);
INSERT INTO `checkin` VALUES (101, '20200022074', '海洋74号', '4', '174', 4, 1, NULL);
INSERT INTO `checkin` VALUES (102, '20200022075', '海洋75号', '7', '175', 8, 1, NULL);
INSERT INTO `checkin` VALUES (103, '20200022076', '海洋76号', '7', '176', 6, 0, NULL);
INSERT INTO `checkin` VALUES (104, '20200022077', '海洋77号', '4', '177', 4, 0, NULL);
INSERT INTO `checkin` VALUES (105, '20200022078', '海洋78号', '1', '178', 8, 1, NULL);
INSERT INTO `checkin` VALUES (106, '20200022079', '海洋79号', '8', '179', 8, 0, NULL);
INSERT INTO `checkin` VALUES (107, '20200022080', '海洋80号', '10', '180', 4, 1, NULL);
INSERT INTO `checkin` VALUES (108, '20200022081', '海洋81号', '10', '181', 6, 1, NULL);
INSERT INTO `checkin` VALUES (109, '20200022082', '海洋82号', '6', '182', 6, 0, NULL);
INSERT INTO `checkin` VALUES (110, '20200022083', '海洋83号', '2', '183', 8, 1, NULL);
INSERT INTO `checkin` VALUES (111, '20200022084', '海洋84号', '7', '184', 8, 0, NULL);
INSERT INTO `checkin` VALUES (112, '20200022085', '海洋85号', '8', '185', 8, 0, NULL);
INSERT INTO `checkin` VALUES (113, '20200022086', '海洋86号', '5', '186', 6, 1, NULL);
INSERT INTO `checkin` VALUES (114, '20200022087', '海洋87号', '7', '187', 8, 1, NULL);
INSERT INTO `checkin` VALUES (115, '20200022088', '海洋88号', '7', '188', 4, 0, NULL);
INSERT INTO `checkin` VALUES (116, '20200022089', '海洋89号', '10', '189', 6, 1, NULL);
INSERT INTO `checkin` VALUES (117, '20200022090', '海洋90号', '5', '190', 4, 0, NULL);
INSERT INTO `checkin` VALUES (118, '20200022091', '海洋91号', '5', '191', 8, 0, NULL);
INSERT INTO `checkin` VALUES (119, '20200022092', '海洋92号', '2', '192', 8, 1, NULL);
INSERT INTO `checkin` VALUES (120, '20200022093', '海洋93号', '7', '193', 8, 1, NULL);
INSERT INTO `checkin` VALUES (121, '20200022094', '海洋94号', '10', '194', 4, 0, NULL);
INSERT INTO `checkin` VALUES (128, '20200022001', '海洋1号', '2', '101', 4, 0, NULL);
INSERT INTO `checkin` VALUES (129, '20200022002', '海洋2号', '8', '102', 8, 0, NULL);
INSERT INTO `checkin` VALUES (130, '20200022003', '海洋3号', '5', '103', 8, 0, NULL);
INSERT INTO `checkin` VALUES (131, '20200022004', '海洋4号', '7', '104', 6, 1, NULL);
INSERT INTO `checkin` VALUES (132, '20200022005', '海洋5号', '6', '105', 8, 0, NULL);
INSERT INTO `checkin` VALUES (133, '20200022006', '海洋6号', '8', '106', 6, 0, NULL);
INSERT INTO `checkin` VALUES (134, '20200022007', '海洋7号', '7', '107', 4, 1, NULL);
INSERT INTO `checkin` VALUES (135, '20200022008', '海洋8号', '3', '108', 4, 0, NULL);
INSERT INTO `checkin` VALUES (136, '20200022009', '海洋9号', '8', '109', 6, 0, NULL);
INSERT INTO `checkin` VALUES (137, '20200022010', '海洋10号', '7', '110', 8, 1, NULL);
INSERT INTO `checkin` VALUES (138, '20200022011', '海洋11号', '8', '111', 8, 0, NULL);
INSERT INTO `checkin` VALUES (139, '20200022012', '海洋12号', '1', '112', 6, 1, NULL);
INSERT INTO `checkin` VALUES (140, '20200022013', '海洋13号', '9', '113', 8, 1, NULL);
INSERT INTO `checkin` VALUES (141, '20200022014', '海洋14号', '3', '114', 8, 0, NULL);
INSERT INTO `checkin` VALUES (142, '20200022015', '海洋15号', '6', '115', 6, 1, NULL);
INSERT INTO `checkin` VALUES (143, '20200022016', '海洋16号', '4', '116', 4, 1, NULL);
INSERT INTO `checkin` VALUES (144, '20200022017', '海洋17号', '6', '117', 4, 0, NULL);
INSERT INTO `checkin` VALUES (145, '20200022018', '海洋18号', '8', '118', 4, 1, NULL);
INSERT INTO `checkin` VALUES (146, '20200022019', '海洋19号', '2', '119', 6, 1, NULL);
INSERT INTO `checkin` VALUES (147, '20200022020', '海洋20号', '8', '120', 6, 0, NULL);
INSERT INTO `checkin` VALUES (148, '20200022021', '海洋21号', '1', '121', 4, 1, NULL);
INSERT INTO `checkin` VALUES (149, '20200022022', '海洋22号', '4', '122', 6, 1, NULL);
INSERT INTO `checkin` VALUES (150, '20200022023', '海洋23号', '6', '123', 8, 0, NULL);
INSERT INTO `checkin` VALUES (151, '20200022024', '海洋24号', '1', '124', 6, 1, NULL);
INSERT INTO `checkin` VALUES (152, '20200022025', '海洋25号', '9', '125', 8, 0, NULL);
INSERT INTO `checkin` VALUES (153, '20200022026', '海洋26号', '1', '126', 4, 0, NULL);
INSERT INTO `checkin` VALUES (154, '20200022027', '海洋27号', '4', '127', 8, 1, NULL);
INSERT INTO `checkin` VALUES (155, '20200022028', '海洋28号', '5', '128', 8, 1, NULL);
INSERT INTO `checkin` VALUES (156, '20200022029', '海洋29号', '7', '129', 4, 1, NULL);
INSERT INTO `checkin` VALUES (157, '20200022030', '海洋30号', '5', '130', 4, 1, NULL);
INSERT INTO `checkin` VALUES (158, '20200022031', '海洋31号', '7', '131', 6, 1, NULL);
INSERT INTO `checkin` VALUES (159, '20200022032', '海洋32号', '6', '132', 6, 0, NULL);
INSERT INTO `checkin` VALUES (160, '20200022033', '海洋33号', '6', '133', 8, 1, NULL);
INSERT INTO `checkin` VALUES (161, '20200022034', '海洋34号', '2', '134', 8, 0, NULL);
INSERT INTO `checkin` VALUES (162, '20200022035', '海洋35号', '8', '135', 8, 0, NULL);
INSERT INTO `checkin` VALUES (163, '20200022036', '海洋36号', '8', '136', 8, 1, NULL);
INSERT INTO `checkin` VALUES (164, '20200022037', '海洋37号', '3', '137', 6, 1, NULL);
INSERT INTO `checkin` VALUES (165, '20200022038', '海洋38号', '6', '138', 6, 1, NULL);
INSERT INTO `checkin` VALUES (166, '20200022039', '海洋39号', '2', '139', 8, 1, NULL);
INSERT INTO `checkin` VALUES (167, '20200022040', '海洋40号', '1', '140', 6, 1, NULL);
INSERT INTO `checkin` VALUES (168, '20200022041', '海洋41号', '1', '141', 8, 0, NULL);
INSERT INTO `checkin` VALUES (169, '20200022042', '海洋42号', '9', '142', 6, 1, NULL);
INSERT INTO `checkin` VALUES (170, '20200022043', '海洋43号', '8', '143', 8, 1, NULL);
INSERT INTO `checkin` VALUES (171, '20200022044', '海洋44号', '8', '144', 6, 1, NULL);
INSERT INTO `checkin` VALUES (172, '20200022045', '海洋45号', '3', '145', 4, 1, NULL);
INSERT INTO `checkin` VALUES (173, '20200022046', '海洋46号', '9', '146', 8, 1, NULL);
INSERT INTO `checkin` VALUES (174, '20200022047', '海洋47号', '3', '147', 6, 0, NULL);
INSERT INTO `checkin` VALUES (175, '20200022048', '海洋48号', '7', '148', 6, 1, NULL);
INSERT INTO `checkin` VALUES (176, '20200022049', '海洋49号', '5', '149', 6, 0, NULL);
INSERT INTO `checkin` VALUES (177, '20200022050', '海洋50号', '7', '150', 8, 1, NULL);
INSERT INTO `checkin` VALUES (178, '20200022051', '海洋51号', '5', '151', 8, 0, NULL);
INSERT INTO `checkin` VALUES (179, '20200022052', '海洋52号', '1', '152', 6, 1, NULL);
INSERT INTO `checkin` VALUES (180, '20200022053', '海洋53号', '7', '153', 6, 1, NULL);
INSERT INTO `checkin` VALUES (181, '20200022054', '海洋54号', '6', '154', 8, 1, NULL);
INSERT INTO `checkin` VALUES (182, '20200022055', '海洋55号', '10', '155', 8, 0, NULL);
INSERT INTO `checkin` VALUES (183, '20200022056', '海洋56号', '9', '156', 4, 0, NULL);
INSERT INTO `checkin` VALUES (184, '20200022057', '海洋57号', '9', '157', 8, 1, NULL);
INSERT INTO `checkin` VALUES (185, '20200022058', '海洋58号', '3', '158', 6, 0, NULL);
INSERT INTO `checkin` VALUES (186, '20200022059', '海洋59号', '7', '159', 8, 1, NULL);
INSERT INTO `checkin` VALUES (187, '20200022060', '海洋60号', '10', '160', 4, 0, NULL);
INSERT INTO `checkin` VALUES (188, '20200022061', '海洋61号', '4', '161', 8, 0, NULL);
INSERT INTO `checkin` VALUES (189, '20200022062', '海洋62号', '8', '162', 8, 0, NULL);
INSERT INTO `checkin` VALUES (190, '20200022063', '海洋63号', '9', '163', 6, 0, NULL);
INSERT INTO `checkin` VALUES (191, '20200022064', '海洋64号', '9', '164', 8, 0, NULL);
INSERT INTO `checkin` VALUES (192, '20200022065', '海洋65号', '10', '165', 8, 0, NULL);
INSERT INTO `checkin` VALUES (193, '20200022066', '海洋66号', '9', '166', 8, 0, NULL);
INSERT INTO `checkin` VALUES (194, '20200022067', '海洋67号', '3', '167', 6, 0, NULL);
INSERT INTO `checkin` VALUES (195, '20200022068', '海洋68号', '7', '168', 8, 1, NULL);
INSERT INTO `checkin` VALUES (196, '20200022069', '海洋69号', '8', '169', 8, 1, NULL);
INSERT INTO `checkin` VALUES (197, '20200022070', '海洋70号', '5', '170', 8, 0, NULL);
INSERT INTO `checkin` VALUES (198, '20200022071', '海洋71号', '9', '171', 8, 1, NULL);
INSERT INTO `checkin` VALUES (199, '20200022072', '海洋72号', '3', '172', 8, 1, NULL);
INSERT INTO `checkin` VALUES (200, '20200022073', '海洋73号', '10', '173', 8, 0, NULL);
INSERT INTO `checkin` VALUES (201, '20200022074', '海洋74号', '9', '174', 4, 0, NULL);
INSERT INTO `checkin` VALUES (202, '20200022075', '海洋75号', '6', '175', 8, 0, NULL);
INSERT INTO `checkin` VALUES (203, '20200022076', '海洋76号', '5', '176', 4, 0, NULL);
INSERT INTO `checkin` VALUES (204, '20200022077', '海洋77号', '9', '177', 8, 1, NULL);
INSERT INTO `checkin` VALUES (205, '20200022078', '海洋78号', '8', '178', 8, 1, NULL);
INSERT INTO `checkin` VALUES (206, '20200022079', '海洋79号', '8', '179', 4, 1, NULL);
INSERT INTO `checkin` VALUES (207, '20200022080', '海洋80号', '6', '180', 8, 1, NULL);
INSERT INTO `checkin` VALUES (208, '20200022081', '海洋81号', '3', '181', 6, 1, NULL);
INSERT INTO `checkin` VALUES (209, '20200022082', '海洋82号', '10', '182', 6, 0, NULL);
INSERT INTO `checkin` VALUES (210, '20200022083', '海洋83号', '7', '183', 6, 1, NULL);
INSERT INTO `checkin` VALUES (211, '20200022084', '海洋84号', '4', '184', 6, 0, NULL);
INSERT INTO `checkin` VALUES (212, '20200022085', '海洋85号', '2', '185', 8, 0, NULL);
INSERT INTO `checkin` VALUES (213, '20200022086', '海洋86号', '3', '186', 6, 0, NULL);
INSERT INTO `checkin` VALUES (214, '20200022087', '海洋87号', '3', '187', 6, 1, NULL);
INSERT INTO `checkin` VALUES (215, '20200022088', '海洋88号', '5', '188', 4, 1, NULL);
INSERT INTO `checkin` VALUES (216, '20200022089', '海洋89号', '3', '189', 6, 0, NULL);
INSERT INTO `checkin` VALUES (217, '20200022090', '海洋90号', '2', '190', 8, 0, NULL);
INSERT INTO `checkin` VALUES (218, '20200022091', '海洋91号', '6', '191', 4, 0, NULL);
INSERT INTO `checkin` VALUES (219, '20200022092', '海洋92号', '10', '192', 4, 1, NULL);
INSERT INTO `checkin` VALUES (220, '20200022093', '海洋93号', '3', '193', 8, 0, NULL);
INSERT INTO `checkin` VALUES (221, '20200022094', '海洋94号', '2', '194', 4, 0, NULL);
INSERT INTO `checkin` VALUES (222, '20200022095', '海洋95号', '5', '195', 6, 1, NULL);
INSERT INTO `checkin` VALUES (223, '20200022096', '海洋96号', '2', '196', 4, 1, NULL);
INSERT INTO `checkin` VALUES (224, '20200022097', '海洋97号', '5', '197', 6, 1, NULL);
INSERT INTO `checkin` VALUES (225, '20200022098', '海洋98号', '5', '198', 6, 0, NULL);
INSERT INTO `checkin` VALUES (226, '20200022099', '海洋99号', '9', '199', 6, 1, NULL);
INSERT INTO `checkin` VALUES (227, '20200022100', '海洋100号', '5', '200', 4, 1, NULL);
INSERT INTO `checkin` VALUES (228, '1', '1', '1', '101', 1, 0, NULL);
INSERT INTO `checkin` VALUES (229, '1', '1', '1', '101', 1, 0, NULL);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属专业',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `class_num` int(11) NULL DEFAULT NULL COMMENT '班级人数',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '1001001', '18级移动1班', 30);
INSERT INTO `class` VALUES (2, '1001002', '18级软件1班', 40);
INSERT INTO `class` VALUES (3, '1001002', '18级软件2班', 35);
INSERT INTO `class` VALUES (4, '1002003', '18级商务1班', 40);
INSERT INTO `class` VALUES (5, '1002003', '18级商务2班', 40);
INSERT INTO `class` VALUES (6, '1002004', '18级日语1班', 35);
INSERT INTO `class` VALUES (7, '1009005', '18级汽修1班', 40);
INSERT INTO `class` VALUES (8, '1009005', '18级汽修2班', 30);
INSERT INTO `class` VALUES (9, '1001001', '19级移动1班', 30);
INSERT INTO `class` VALUES (10, '1001001', '20级移动1班', 32);
INSERT INTO `class` VALUES (13, '1002003', '20级商务1班', 30);
INSERT INTO `class` VALUES (14, '1009005', '20级汽修1班', 35);
INSERT INTO `class` VALUES (15, '1002004', '20级日语1班', 30);

-- ----------------------------
-- Table structure for colleges
-- ----------------------------
DROP TABLE IF EXISTS `colleges`;
CREATE TABLE `colleges`  (
  `college_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院编号',
  `college_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院名称',
  `college_school` int(1) NULL DEFAULT 0 COMMENT '所在校区',
  PRIMARY KEY (`college_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of colleges
-- ----------------------------
INSERT INTO `colleges` VALUES (1, '1001', '人工智能学院', 1);
INSERT INTO `colleges` VALUES (2, '1002', '应用外国语学院', 1);
INSERT INTO `colleges` VALUES (3, '1003', '经济管理学院', 1);
INSERT INTO `colleges` VALUES (4, '1004', '机器人学院', 1);
INSERT INTO `colleges` VALUES (5, '1005', '工程技术学院', 1);
INSERT INTO `colleges` VALUES (6, '1006', '法律与行政学院', 1);
INSERT INTO `colleges` VALUES (7, '1007', '机电工程学院', 1);
INSERT INTO `colleges` VALUES (8, '1008', '文化传播与设计学院', 1);
INSERT INTO `colleges` VALUES (9, '1009', '汽车工程系', 2);
INSERT INTO `colleges` VALUES (10, '1010', '工商学部', 2);

-- ----------------------------
-- Table structure for enter
-- ----------------------------
DROP TABLE IF EXISTS `enter`;
CREATE TABLE `enter`  (
  `enter_id` int(11) NOT NULL AUTO_INCREMENT,
  `enter_stu_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `enter_stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `enter_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住宿舍楼',
  `enter_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住宿舍号',
  `enter_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入宿舍原因',
  `enter_audit` int(11) NULL DEFAULT 0 COMMENT '审核情况',
  PRIMARY KEY (`enter_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enter
-- ----------------------------
INSERT INTO `enter` VALUES (1, '20200022001', 'a', 'a栋', '201', '新生入学', 1);
INSERT INTO `enter` VALUES (2, '1', '1', '1', '1', '1', 1);
INSERT INTO `enter` VALUES (4, '3', '3', '3', '3', '3', 1);
INSERT INTO `enter` VALUES (5, '4', '4', '4', '4', '4', 1);
INSERT INTO `enter` VALUES (6, '5', '5', '5', '5', '5', 1);
INSERT INTO `enter` VALUES (7, '6', '6', '6', '6', '6', 1);
INSERT INTO `enter` VALUES (8, '5', '5', '5', '5', '5', 5);
INSERT INTO `enter` VALUES (9, '6', '6', '6', '6', '6', 6);
INSERT INTO `enter` VALUES (10, '11111', '1', '1', '1', '1', 1);
INSERT INTO `enter` VALUES (11, '11111', '1', '1', '1', '1', 1);
INSERT INTO `enter` VALUES (12, '1', '1', '1', '1', '1', 1);
INSERT INTO `enter` VALUES (13, '11111', '1111', '1', '1', '1', 0);

-- ----------------------------
-- Table structure for exits
-- ----------------------------
DROP TABLE IF EXISTS `exits`;
CREATE TABLE `exits`  (
  `exit_id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_stu_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `exit_stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `exit_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请宿舍楼',
  `exit_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请房间号',
  `exit_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请原因',
  `exit_audit` int(255) NULL DEFAULT 0 COMMENT '审核情况',
  PRIMARY KEY (`exit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exits
-- ----------------------------
INSERT INTO `exits` VALUES (1, '20180022001', '小志', 'a栋', '101', '毕业', 1);
INSERT INTO `exits` VALUES (15, '333', 'lin', '1', '101', '毕业', 1);
INSERT INTO `exits` VALUES (16, '444', 'zhan', '1', '102', '毕业', 1);

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `his_id` int(11) NOT NULL AUTO_INCREMENT,
  `his_stu_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `his_stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `his_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍楼',
  `his_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `his_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住日期',
  `his_state` int(1) NULL DEFAULT 0 COMMENT '入住状态',
  `his_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原因',
  `his_new_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住宿舍楼',
  `his_new_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住宿舍号',
  `his_isdelete` int(1) NULL DEFAULT 0 COMMENT '是否是撤销',
  PRIMARY KEY (`his_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (4, '20180022001', '小志', 'a栋', '101', '2018-09-01', 0, NULL, NULL, NULL, 0);
INSERT INTO `history` VALUES (5, '20180022002', '猪猪', 'a栋', '101', '2018-09-01', 0, NULL, NULL, NULL, 0);
INSERT INTO `history` VALUES (6, '20180022003', 'juju', 'b栋', '101', '2018-09-01', 0, NULL, NULL, NULL, 0);
INSERT INTO `history` VALUES (11, '121', 'llin', 'a', '102', '2020-08-08 17:24', 1, '入学', NULL, NULL, 0);
INSERT INTO `history` VALUES (12, '3333', '林涵', '1', '102', '2020-08-08 17:27', 1, '未知', '1', '103', 0);
INSERT INTO `history` VALUES (13, '3333', '林涵', '1', '102', '2020-08-08 17:27', 1, '未知', '1', '103', 1);
INSERT INTO `history` VALUES (14, '333', '林涵', '1', '101', '2020-08-08 17:28', 1, '毕业', NULL, NULL, 0);
INSERT INTO `history` VALUES (15, '333', 'lin', '1', '103', '2020-08-08 19:27', 0, '无', NULL, NULL, 0);
INSERT INTO `history` VALUES (16, '333', 'lin', '1', '101', '2020-08-08 19:27', 3, '无', '1', '103', 0);
INSERT INTO `history` VALUES (17, '333', 'lin', '1', '103', '2020-08-09 16:35', 0, '无', NULL, NULL, 0);
INSERT INTO `history` VALUES (18, '111', '4', '4', '4', '2020-08-09 16:36', 0, '4', NULL, NULL, 0);
INSERT INTO `history` VALUES (19, '29', '29', '29', '29', '2020-08-12 00:51', 3, '29', '29', '29', 1);
INSERT INTO `history` VALUES (20, '28', '28', '28', '28', '2020-08-18 21:45', 3, '28', '28', '28', 1);
INSERT INTO `history` VALUES (21, '27', '27', '27', '27', '2020-08-18 21:49', 3, '27', '27', '27', 1);
INSERT INTO `history` VALUES (22, '25', '25', '25', '25', '2020-08-18 21:54', 3, '25', '25', '25', 1);
INSERT INTO `history` VALUES (23, '2', '222', '2', '2', '2020-08-19 01:56', 3, '2', '2', '2', 0);
INSERT INTO `history` VALUES (24, '1', '1', '1', '1', '2020-08-19 02:04', 3, '1', '1', '1', 0);
INSERT INTO `history` VALUES (25, '1', '1', '1', '1', '2020-08-19 02:04', 3, '1', '1', '1', 1);
INSERT INTO `history` VALUES (26, '1', '1', '1', '1', '2020-08-19 02:20', 3, '1', '1', '1', 1);
INSERT INTO `history` VALUES (27, '2', '2', '2', '2', '2020-08-19 02:20', 3, '2', '2', '2', 1);
INSERT INTO `history` VALUES (28, '3', '3', '3', '3', '2020-08-19 02:20', 3, '3', '3', '3', 1);
INSERT INTO `history` VALUES (29, '5', '5', '5', '5', '2020-08-19 02:20', 3, '5', '5', '5', 1);
INSERT INTO `history` VALUES (30, '6', '6', '6', '6', '2020-08-19 02:20', 3, '6', '6', '6', 1);
INSERT INTO `history` VALUES (31, '7', '7', '7', '7', '2020-08-19 02:20', 3, '7', '7', '7', 1);
INSERT INTO `history` VALUES (32, '8', '8', '8', '8', '2020-08-19 02:20', 3, '8', '8', '8', 1);
INSERT INTO `history` VALUES (33, '9', '9', '9', '9', '2020-08-19 02:20', 3, '9', '9', '9', 1);
INSERT INTO `history` VALUES (34, '11', '11', '11', '11', '2020-08-19 02:20', 3, '11', '11', '11', 1);
INSERT INTO `history` VALUES (35, '12', '12', '12', '12', '2020-08-19 02:20', 3, '12', '12', '12', 1);
INSERT INTO `history` VALUES (36, '1', '1', '1', '1', '2020-08-19 02:28', 3, '1', '1', '1', 1);
INSERT INTO `history` VALUES (37, '2', '2', '2', '2', '2020-08-19 02:28', 3, '2', '2', '2', 1);
INSERT INTO `history` VALUES (38, '3', '3', '3', '3', '2020-08-19 02:28', 3, '3', '3', '3', 1);
INSERT INTO `history` VALUES (39, '5', '5', '5', '5', '2020-08-19 02:28', 3, '5', '5', '5', 1);
INSERT INTO `history` VALUES (40, '6', '6', '6', '6', '2020-08-19 02:28', 3, '6', '6', '6', 1);
INSERT INTO `history` VALUES (41, '7', '7', '7', '7', '2020-08-19 02:28', 3, '7', '7', '7', 1);
INSERT INTO `history` VALUES (42, '8', '8', '8', '8', '2020-08-19 02:28', 3, '8', '8', '8', 1);
INSERT INTO `history` VALUES (43, '9', '9', '9', '9', '2020-08-19 02:28', 3, '9', '9', '9', 1);
INSERT INTO `history` VALUES (44, '11', '11', '11', '11', '2020-08-19 02:28', 3, '11', '11', '11', 1);
INSERT INTO `history` VALUES (45, '12', '12', '12', '12', '2020-08-19 02:28', 3, '12', '12', '12', 1);
INSERT INTO `history` VALUES (46, '4', '4', '4', '4', '2020-08-19 11:58', 0, '4', NULL, NULL, 0);
INSERT INTO `history` VALUES (47, '6', '6', '6', '6', '2020-08-19 11:58', 0, '6', NULL, NULL, 0);
INSERT INTO `history` VALUES (48, '1', '1', '1', '1', '2020-08-19 11:58', 0, '1', NULL, NULL, 0);
INSERT INTO `history` VALUES (49, '5', '5', '5', '5', '2020-08-19 11:59', 0, '5', NULL, NULL, 0);
INSERT INTO `history` VALUES (50, '111', '1', '1', '1', '2020-08-19 11:59', 3, '1', '1', '1', 0);
INSERT INTO `history` VALUES (51, '1', '1', '1', '1', '2020-08-19 11:59', 0, '1', NULL, NULL, 0);
INSERT INTO `history` VALUES (52, '11111', '1', '1', '1', '2020-08-19 12:00', 0, '1', NULL, NULL, 0);
INSERT INTO `history` VALUES (53, '11111', '1', '1', '1', '2020-08-19 12:01', 0, '1', NULL, NULL, 0);
INSERT INTO `history` VALUES (54, '1', '1', '1', '1', '2020-08-19 13:15', 3, '1', '1', '1', 0);
INSERT INTO `history` VALUES (55, '111', '1', '1', '1', '2020-08-19 13:15', 3, '1', '1', '1', 0);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `log_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作的表',
  `log_type` int(2) NULL DEFAULT NULL COMMENT '操作类型',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作时间',
  `log_parameter` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2487 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (308, 'root', 'action', 0, '2020-08-17 09:19:25.595531', NULL);
INSERT INTO `log` VALUES (309, 'root', 'log', 0, '2020-08-17 09:19:28.883795', '[\"\",\"\",\"\"]');
INSERT INTO `log` VALUES (310, 'root', 'visits', 0, '2020-08-17 09:19:47.540758', NULL);
INSERT INTO `log` VALUES (311, 'root', 'valuables', 0, '2020-08-17 09:19:50.989022', NULL);
INSERT INTO `log` VALUES (312, 'root', 'action', 0, '2020-08-17 09:19:55.206741', NULL);
INSERT INTO `log` VALUES (313, 'root', 'repair', 0, '2020-08-17 09:19:56.18622', NULL);
INSERT INTO `log` VALUES (314, 'root', 'room', 0, '2020-08-17 09:19:56.196213', NULL);
INSERT INTO `log` VALUES (316, 'root', 'repair', 0, '2020-08-17 09:20:05.457481', NULL);
INSERT INTO `log` VALUES (317, 'root', 'log', 0, '2020-08-17 09:20:09.035574', '[\"\",\"\",\"\"]');
INSERT INTO `log` VALUES (318, 'root', 'repair', 0, '2020-08-17 09:20:16.821436', NULL);
INSERT INTO `log` VALUES (319, 'root', 'room', 0, '2020-08-17 09:20:16.821436', NULL);
INSERT INTO `log` VALUES (321, 'root', 'repair', 0, '2020-08-17 09:20:21.569166', NULL);
INSERT INTO `log` VALUES (322, 'root', 'action', 0, '2020-08-17 09:20:22.688563', NULL);
INSERT INTO `log` VALUES (323, 'root', 'stay', 0, '2020-08-17 09:20:23.807966', NULL);
INSERT INTO `log` VALUES (324, 'root', 'room', 0, '2020-08-17 09:20:23.807966', NULL);
INSERT INTO `log` VALUES (325, 'root', 'log', 0, '2020-08-17 09:20:24.627531', '[\"\",\"\",\"\"]');
INSERT INTO `log` VALUES (326, 'root', 'room', 0, '2020-08-17 09:20:54.448595', NULL);
INSERT INTO `log` VALUES (328, 'root', 'room', 0, '2020-08-17 09:20:59.616259', NULL);
INSERT INTO `log` VALUES (329, 'root', 'log', 0, '2020-08-17 09:21:00.909622', '[\"\",\"\",\"\"]');
INSERT INTO `log` VALUES (330, 'root', 'echart', 0, '2020-08-17 09:29:17.861878', NULL);
INSERT INTO `log` VALUES (331, 'root', 'echart', 0, '2020-08-17 09:29:17.851882', NULL);
INSERT INTO `log` VALUES (332, 'root', 'echart', 0, '2020-08-17 09:29:17.861878', NULL);
INSERT INTO `log` VALUES (333, 'root', 'echart', 0, '2020-08-17 09:29:17.871879', NULL);
INSERT INTO `log` VALUES (334, 'root', 'echart', 0, '2020-08-17 09:29:17.881867', NULL);
INSERT INTO `log` VALUES (335, 'root', 'log', 0, '2020-08-17 09:29:20.000738', '[\"\",\"\",\"\"]');
INSERT INTO `log` VALUES (336, 'root', 'history', 0, '2020-08-17 09:29:38.491698', NULL);
INSERT INTO `log` VALUES (337, 'root', 'visits', 0, '2020-08-17 09:29:39.651068', NULL);
INSERT INTO `log` VALUES (338, 'root', 'valuables', 0, '2020-08-17 09:29:40.080838', NULL);
INSERT INTO `log` VALUES (339, 'root', 'stay', 0, '2020-08-17 09:29:42.095151', NULL);
INSERT INTO `log` VALUES (340, 'root', 'room', 0, '2020-08-17 09:29:42.095151', NULL);
INSERT INTO `log` VALUES (341, 'root', 'action', 0, '2020-08-17 09:29:42.464953', NULL);
INSERT INTO `log` VALUES (342, 'root', 'stay', 0, '2020-08-17 09:29:43.527901', NULL);
INSERT INTO `log` VALUES (343, 'root', 'room', 0, '2020-08-17 09:29:43.537901', NULL);
INSERT INTO `log` VALUES (344, 'root', 'action', 0, '2020-08-17 09:29:43.99765', NULL);
INSERT INTO `log` VALUES (345, 'root', 'repair', 0, '2020-08-17 09:29:44.31748', NULL);
INSERT INTO `log` VALUES (346, 'root', 'room', 0, '2020-08-17 09:29:44.31748', NULL);
INSERT INTO `log` VALUES (347, 'root', 'room', 0, '2020-08-17 09:29:46.056553', NULL);
INSERT INTO `log` VALUES (348, 'root', 'checkin', 0, '2020-08-17 09:29:46.066547', NULL);
INSERT INTO `log` VALUES (349, 'root', 'room', 0, '2020-08-17 09:29:46.606265', NULL);
INSERT INTO `log` VALUES (350, 'root', 'enter', 0, '2020-08-17 09:29:47.066017', NULL);
INSERT INTO `log` VALUES (351, 'root', 'move', 0, '2020-08-17 09:29:47.385844', NULL);
INSERT INTO `log` VALUES (352, 'root', 'exits', 0, '2020-08-17 09:29:47.905576', NULL);
INSERT INTO `log` VALUES (353, 'root', 'room', 0, '2020-08-17 09:29:47.905576', NULL);
INSERT INTO `log` VALUES (354, 'root', 'school', 0, '2020-08-17 09:29:50.68414', NULL);
INSERT INTO `log` VALUES (355, 'root', 'school', 0, '2020-08-17 09:29:51.183821', NULL);
INSERT INTO `log` VALUES (356, 'root', 'colleges', 0, '2020-08-17 09:29:51.193828', NULL);
INSERT INTO `log` VALUES (357, 'root', 'school', 0, '2020-08-17 09:29:51.863457', NULL);
INSERT INTO `log` VALUES (358, 'root', 'school', 0, '2020-08-17 09:29:52.982901', NULL);
INSERT INTO `log` VALUES (359, 'root', 'colleges', 0, '2020-08-17 09:29:52.982901', NULL);
INSERT INTO `log` VALUES (360, 'root', 'colleges', 0, '2020-08-17 09:29:53.542566', NULL);
INSERT INTO `log` VALUES (361, 'root', 'major', 0, '2020-08-17 09:29:53.542566', NULL);
INSERT INTO `log` VALUES (362, 'root', 'major', 0, '2020-08-17 09:29:54.332142', NULL);
INSERT INTO `log` VALUES (363, 'root', 'class', 0, '2020-08-17 09:29:54.342152', NULL);
INSERT INTO `log` VALUES (364, 'root', 'echart', 0, '2020-08-17 09:29:55.89132', NULL);
INSERT INTO `log` VALUES (365, 'root', 'echart', 0, '2020-08-17 09:29:55.89132', NULL);
INSERT INTO `log` VALUES (366, 'root', 'echart', 0, '2020-08-17 09:29:55.90131', NULL);
INSERT INTO `log` VALUES (367, 'root', 'echart', 0, '2020-08-17 09:29:55.911301', NULL);
INSERT INTO `log` VALUES (368, 'root', 'echart', 0, '2020-08-17 09:29:55.911301', NULL);
INSERT INTO `log` VALUES (369, 'root', 'echart', 0, '2020-08-17 09:29:59.599588', NULL);
INSERT INTO `log` VALUES (370, 'root', 'echart', 0, '2020-08-17 09:29:59.92938', NULL);
INSERT INTO `log` VALUES (371, 'root', 'echart', 0, '2020-08-17 09:30:00.868881', NULL);
INSERT INTO `log` VALUES (372, 'root', 'echart', 0, '2020-08-17 09:30:01.358626', NULL);
INSERT INTO `log` VALUES (373, 'root', 'echart', 0, '2020-08-17 09:30:02.018293', NULL);
INSERT INTO `log` VALUES (374, 'root', 'echart', 0, '2020-08-17 09:30:02.697906', NULL);
INSERT INTO `log` VALUES (375, 'root', 'user', 0, '2020-08-17 09:30:06.905663', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (381, 'root', 'user', 0, '2020-08-17 09:30:26.63892', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (384, 'root', 'role', 1, '2020-08-17 09:30:28.744434', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (385, 'root', 'role', 1, '2020-08-17 09:31:14.828499', '[{\"roleId\":3,\"userId\":1}]');
INSERT INTO `log` VALUES (386, 'root', 'stay', 0, '2020-08-17 09:31:43.590652', NULL);
INSERT INTO `log` VALUES (387, 'root', 'room', 0, '2020-08-17 09:31:43.600641', NULL);
INSERT INTO `log` VALUES (388, 'root', 'move', 0, '2020-08-17 09:31:43.92047', NULL);
INSERT INTO `log` VALUES (389, 'root', 'log', 0, '2020-08-17 09:32:27.119943', '[\"\",\"\",\"\"]');
INSERT INTO `log` VALUES (390, 'root', 'echart', 0, '2020-08-17 09:32:33.31303', NULL);
INSERT INTO `log` VALUES (391, 'root', 'echart', 0, '2020-08-17 09:32:33.317019', NULL);
INSERT INTO `log` VALUES (392, 'root', 'echart', 0, '2020-08-17 09:32:33.326003', NULL);
INSERT INTO `log` VALUES (393, 'root', 'echart', 0, '2020-08-17 09:32:33.342949', NULL);
INSERT INTO `log` VALUES (394, 'root', 'echart', 0, '2020-08-17 09:32:33.342949', NULL);
INSERT INTO `log` VALUES (395, 'root', 'echart', 0, '2020-08-17 09:32:35.006397', NULL);
INSERT INTO `log` VALUES (396, 'root', 'echart', 0, '2020-08-17 09:32:35.713488', NULL);
INSERT INTO `log` VALUES (397, 'root', 'echart', 0, '2020-08-17 09:32:36.326608', NULL);
INSERT INTO `log` VALUES (398, 'root', 'move', 0, '2020-08-17 09:32:41.559529', NULL);
INSERT INTO `log` VALUES (399, 'root', 'exits', 0, '2020-08-17 09:32:59.940883', NULL);
INSERT INTO `log` VALUES (400, 'root', 'room', 0, '2020-08-17 09:32:59.940883', NULL);
INSERT INTO `log` VALUES (401, 'root', 'school', 0, '2020-08-17 09:33:00.780434', NULL);
INSERT INTO `log` VALUES (402, 'root', 'school', 0, '2020-08-17 09:33:01.650504', NULL);
INSERT INTO `log` VALUES (403, 'root', 'colleges', 0, '2020-08-17 09:33:01.650504', NULL);
INSERT INTO `log` VALUES (404, 'root', 'major', 0, '2020-08-17 09:33:02.20021', NULL);
INSERT INTO `log` VALUES (405, 'root', 'colleges', 0, '2020-08-17 09:33:02.20021', NULL);
INSERT INTO `log` VALUES (406, 'root', 'major', 0, '2020-08-17 09:33:02.609992', NULL);
INSERT INTO `log` VALUES (407, 'root', 'class', 0, '2020-08-17 09:33:02.609992', NULL);
INSERT INTO `log` VALUES (408, 'root', 'echart', 0, '2020-08-17 09:33:02.979795', NULL);
INSERT INTO `log` VALUES (409, 'root', 'echart', 0, '2020-08-17 09:33:02.979795', NULL);
INSERT INTO `log` VALUES (410, 'root', 'echart', 0, '2020-08-17 09:33:02.989791', NULL);
INSERT INTO `log` VALUES (411, 'root', 'echart', 0, '2020-08-17 09:33:02.989791', NULL);
INSERT INTO `log` VALUES (412, 'root', 'echart', 0, '2020-08-17 09:33:02.989791', NULL);
INSERT INTO `log` VALUES (413, 'root', 'user', 0, '2020-08-17 09:33:03.32961', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (414, 'root', 'role', 1, '2020-08-17 09:33:03.859326', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (415, 'root', 'permission', 1, '2020-08-17 09:33:04.169161', NULL);
INSERT INTO `log` VALUES (416, 'root', 'permission', 1, '2020-08-17 09:33:04.169161', NULL);
INSERT INTO `log` VALUES (417, 'root', 'room', 0, '2020-08-17 09:33:38.28841', NULL);
INSERT INTO `log` VALUES (418, 'root', 'checkin', 0, '2020-08-17 09:33:38.28841', NULL);
INSERT INTO `log` VALUES (419, 'root', 'echart', 0, '2020-08-17 09:35:36.601279', NULL);
INSERT INTO `log` VALUES (420, 'root', 'echart', 0, '2020-08-17 09:35:36.61127', NULL);
INSERT INTO `log` VALUES (421, 'root', 'echart', 0, '2020-08-17 09:35:36.61127', NULL);
INSERT INTO `log` VALUES (422, 'root', 'echart', 0, '2020-08-17 09:35:36.621265', NULL);
INSERT INTO `log` VALUES (423, 'root', 'echart', 0, '2020-08-17 09:35:36.621265', NULL);
INSERT INTO `log` VALUES (424, 'root', 'echart', 0, '2020-08-17 09:45:35.97796', NULL);
INSERT INTO `log` VALUES (425, 'root', 'echart', 0, '2020-08-17 09:45:35.97796', NULL);
INSERT INTO `log` VALUES (426, 'root', 'echart', 0, '2020-08-17 09:45:35.97796', NULL);
INSERT INTO `log` VALUES (427, 'root', 'echart', 0, '2020-08-17 09:45:35.997949', NULL);
INSERT INTO `log` VALUES (428, 'root', 'echart', 0, '2020-08-17 09:45:35.997949', NULL);
INSERT INTO `log` VALUES (429, 'root', 'user', 0, '2020-08-17 09:45:38.57659', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (430, 'root', 'role', 0, '2020-08-17 09:45:40.625495', '[4]');
INSERT INTO `log` VALUES (431, 'root', 'role', 1, '2020-08-17 09:45:40.625495', NULL);
INSERT INTO `log` VALUES (432, 'root', 'role', 1, '2020-08-17 09:45:44.744082', '[{\"id\":25,\"roleId\":1,\"userId\":4}]');
INSERT INTO `log` VALUES (433, 'root', 'role', 1, '2020-08-17 09:45:46.283262', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (434, 'root', 'role', 1, '2020-08-17 09:45:50.361104', '[{\"currentPage\":2,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (435, 'root', 'role', 1, '2020-08-17 09:45:50.880813', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (436, 'root', 'role', 1, '2020-08-17 09:45:52.130145', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (437, 'root', 'permission', 1, '2020-08-17 09:45:55.298469', NULL);
INSERT INTO `log` VALUES (438, 'root', 'permission', 1, '2020-08-17 09:45:55.298469', NULL);
INSERT INTO `log` VALUES (439, 'root', 'permission', 0, '2020-08-17 09:45:58.511996', '[\"6\"]');
INSERT INTO `log` VALUES (440, 'root', 'user', 0, '2020-08-17 09:46:25.043658', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (441, 'root', 'role', 1, '2020-08-17 09:46:37.067249', NULL);
INSERT INTO `log` VALUES (442, 'root', 'role', 0, '2020-08-17 09:46:37.067249', '[4]');
INSERT INTO `log` VALUES (443, 'root', 'echart', 0, '2020-08-18 03:09:52.511', NULL);
INSERT INTO `log` VALUES (444, 'root', 'echart', 0, '2020-08-18 03:09:52.499', NULL);
INSERT INTO `log` VALUES (445, 'root', 'echart', 0, '2020-08-18 03:09:52.499', NULL);
INSERT INTO `log` VALUES (446, 'root', 'echart', 0, '2020-08-18 03:09:52.543', NULL);
INSERT INTO `log` VALUES (447, 'root', 'echart', 0, '2020-08-18 03:09:52.731', NULL);
INSERT INTO `log` VALUES (448, 'root', 'valuables', 0, '2020-08-18 03:09:59.016', NULL);
INSERT INTO `log` VALUES (449, 'root', 'valuables', 0, '2020-08-18 03:10:06.186', NULL);
INSERT INTO `log` VALUES (450, 'root', 'statistics', 0, '2020-08-18 03:10:10.619', NULL);
INSERT INTO `log` VALUES (451, 'root', 'statistics', 0, '2020-08-18 03:10:10.621', NULL);
INSERT INTO `log` VALUES (452, 'root', 'statistics', 0, '2020-08-18 03:10:10.624', NULL);
INSERT INTO `log` VALUES (453, 'root', 'statistics', 0, '2020-08-18 03:10:10.639', NULL);
INSERT INTO `log` VALUES (454, 'root', 'statistics', 0, '2020-08-18 03:10:10.639', NULL);
INSERT INTO `log` VALUES (455, 'root', 'statistics', 0, '2020-08-18 03:10:10.647', NULL);
INSERT INTO `log` VALUES (456, 'root', 'statistics', 0, '2020-08-18 03:10:10.98', NULL);
INSERT INTO `log` VALUES (457, 'root', 'statistics', 0, '2020-08-18 03:10:10.983', NULL);
INSERT INTO `log` VALUES (458, 'root', 'statistics', 0, '2020-08-18 03:10:10.983', NULL);
INSERT INTO `log` VALUES (459, 'root', 'statistics', 0, '2020-08-18 03:10:20.179', NULL);
INSERT INTO `log` VALUES (460, 'root', 'statistics', 0, '2020-08-18 03:10:20.451', NULL);
INSERT INTO `log` VALUES (461, 'root', 'checkin', 0, '2020-08-18 03:10:25.659', NULL);
INSERT INTO `log` VALUES (462, 'root', 'room', 0, '2020-08-18 03:10:25.963', NULL);
INSERT INTO `log` VALUES (463, 'root', 'statistics', 0, '2020-08-18 03:10:33.99', NULL);
INSERT INTO `log` VALUES (464, 'root', 'statistics', 0, '2020-08-18 03:10:34.311', NULL);
INSERT INTO `log` VALUES (465, 'root', 'statistics', 0, '2020-08-18 03:10:34.314', NULL);
INSERT INTO `log` VALUES (466, 'root', 'statistics', 0, '2020-08-18 03:10:34.325', NULL);
INSERT INTO `log` VALUES (467, 'root', 'statistics', 0, '2020-08-18 03:10:34.329', NULL);
INSERT INTO `log` VALUES (468, 'root', 'statistics', 0, '2020-08-18 03:10:34.329', NULL);
INSERT INTO `log` VALUES (469, 'root', 'statistics', 0, '2020-08-18 03:10:34.341', NULL);
INSERT INTO `log` VALUES (470, 'root', 'statistics', 0, '2020-08-18 03:10:34.67', NULL);
INSERT INTO `log` VALUES (471, 'root', 'statistics', 0, '2020-08-18 03:10:34.672', NULL);
INSERT INTO `log` VALUES (472, 'root', 'user', 0, '2020-08-18 03:10:47.176', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (473, 'root', 'role', 1, '2020-08-18 03:10:47.995', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (474, 'root', 'permission', 1, '2020-08-18 03:10:49.805', NULL);
INSERT INTO `log` VALUES (475, 'root', 'permission', 1, '2020-08-18 03:10:49.81', NULL);
INSERT INTO `log` VALUES (476, 'root', 'role', 1, '2020-08-18 03:10:51.839', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (477, 'root', 'user', 0, '2020-08-18 03:10:52.656', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (478, 'root', 'role', 1, '2020-08-18 03:10:53.616', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (479, 'root', 'permission', 1, '2020-08-18 03:10:55.446', NULL);
INSERT INTO `log` VALUES (480, 'root', 'permission', 1, '2020-08-18 03:10:55.446', NULL);
INSERT INTO `log` VALUES (481, 'root', 'log', 0, '2020-08-18 03:10:57.128', '[\"\",\"\",\"\"]');
INSERT INTO `log` VALUES (482, 'root', 'log', 0, '2020-08-18 03:11:56.591', '[\"\",\"\",\"\"]');
INSERT INTO `log` VALUES (483, 'root', 'room', 0, '2020-08-18 03:12:57.288', NULL);
INSERT INTO `log` VALUES (484, 'root', 'checkin', 0, '2020-08-18 03:12:57.294', NULL);
INSERT INTO `log` VALUES (485, 'root', 'room', 0, '2020-08-18 03:12:57.793', NULL);
INSERT INTO `log` VALUES (486, 'root', 'enter', 0, '2020-08-18 03:12:59.056', NULL);
INSERT INTO `log` VALUES (487, 'root', 'move', 0, '2020-08-18 03:12:59.864', NULL);
INSERT INTO `log` VALUES (488, 'root', 'room', 0, '2020-08-18 03:13:01.102', NULL);
INSERT INTO `log` VALUES (489, 'root', 'exits', 0, '2020-08-18 03:13:01.102', NULL);
INSERT INTO `log` VALUES (490, 'root', 'school', 0, '2020-08-18 03:13:27.808', NULL);
INSERT INTO `log` VALUES (491, 'root', 'school', 0, '2020-08-18 03:13:28.582', NULL);
INSERT INTO `log` VALUES (492, 'root', 'colleges', 0, '2020-08-18 03:13:28.89', NULL);
INSERT INTO `log` VALUES (493, 'root', 'colleges', 0, '2020-08-18 03:13:31.186', NULL);
INSERT INTO `log` VALUES (494, 'root', 'major', 0, '2020-08-18 03:13:31.19', NULL);
INSERT INTO `log` VALUES (495, 'root', 'class', 0, '2020-08-18 03:13:33.387', NULL);
INSERT INTO `log` VALUES (496, 'root', 'major', 0, '2020-08-18 03:13:33.692', NULL);
INSERT INTO `log` VALUES (497, 'root', 'statistics', 0, '2020-08-18 03:13:34.823', NULL);
INSERT INTO `log` VALUES (498, 'root', 'statistics', 0, '2020-08-18 03:13:34.826', NULL);
INSERT INTO `log` VALUES (499, 'root', 'statistics', 0, '2020-08-18 03:13:34.843', NULL);
INSERT INTO `log` VALUES (500, 'root', 'statistics', 0, '2020-08-18 03:13:34.854', NULL);
INSERT INTO `log` VALUES (501, 'root', 'statistics', 0, '2020-08-18 03:13:34.856', NULL);
INSERT INTO `log` VALUES (502, 'root', 'statistics', 0, '2020-08-18 03:13:34.858', NULL);
INSERT INTO `log` VALUES (503, 'root', 'statistics', 0, '2020-08-18 03:13:35.165', NULL);
INSERT INTO `log` VALUES (504, 'root', 'statistics', 0, '2020-08-18 03:13:35.173', NULL);
INSERT INTO `log` VALUES (505, 'root', 'statistics', 0, '2020-08-18 03:13:35.192', NULL);
INSERT INTO `log` VALUES (506, 'root', 'statistics', 0, '2020-08-18 03:13:36.75', NULL);
INSERT INTO `log` VALUES (507, 'root', 'statistics', 0, '2020-08-18 03:13:37.004', NULL);
INSERT INTO `log` VALUES (508, 'root', 'statistics', 0, '2020-08-18 03:13:37.84', NULL);
INSERT INTO `log` VALUES (509, 'root', 'statistics', 0, '2020-08-18 03:13:38.687', NULL);
INSERT INTO `log` VALUES (510, 'root', 'statistics', 0, '2020-08-18 03:13:39.13', NULL);
INSERT INTO `log` VALUES (511, 'root', 'statistics', 0, '2020-08-18 03:13:39.98', NULL);
INSERT INTO `log` VALUES (512, 'root', 'statistics', 0, '2020-08-18 03:13:40.394', NULL);
INSERT INTO `log` VALUES (513, 'root', 'statistics', 0, '2020-08-18 03:13:55.044', NULL);
INSERT INTO `log` VALUES (514, 'root', 'statistics', 0, '2020-08-18 03:13:56.009', NULL);
INSERT INTO `log` VALUES (515, 'root', 'statistics', 0, '2020-08-18 03:13:56.71', NULL);
INSERT INTO `log` VALUES (516, 'root', 'statistics', 0, '2020-08-18 03:13:57.662', NULL);
INSERT INTO `log` VALUES (517, 'root', 'statistics', 0, '2020-08-18 03:13:58.046', NULL);
INSERT INTO `log` VALUES (518, 'root', 'statistics', 0, '2020-08-18 03:14:02.314', NULL);
INSERT INTO `log` VALUES (519, 'root', 'statistics', 0, '2020-08-18 03:14:02.583', NULL);
INSERT INTO `log` VALUES (520, 'root', 'statistics', 0, '2020-08-18 03:14:03.734', NULL);
INSERT INTO `log` VALUES (521, 'root', 'statistics', 0, '2020-08-18 03:14:05.58', NULL);
INSERT INTO `log` VALUES (522, 'root', 'statistics', 0, '2020-08-18 03:14:05.582', NULL);
INSERT INTO `log` VALUES (523, 'root', 'statistics', 0, '2020-08-18 03:14:05.834', NULL);
INSERT INTO `log` VALUES (524, 'root', 'statistics', 0, '2020-08-18 03:14:12.282', NULL);
INSERT INTO `log` VALUES (525, 'root', 'statistics', 0, '2020-08-18 03:14:13.206', NULL);
INSERT INTO `log` VALUES (526, 'root', 'statistics', 0, '2020-08-18 03:14:14.145', NULL);
INSERT INTO `log` VALUES (527, 'root', 'statistics', 0, '2020-08-18 03:14:21.83', NULL);
INSERT INTO `log` VALUES (528, 'root', 'statistics', 0, '2020-08-18 03:14:22.212', NULL);
INSERT INTO `log` VALUES (529, 'root', 'major', 0, '2020-08-18 03:14:29.281', NULL);
INSERT INTO `log` VALUES (530, 'root', 'class', 0, '2020-08-18 03:14:29.283', NULL);
INSERT INTO `log` VALUES (531, 'root', 'valuables', 0, '2020-08-18 03:14:30.074', NULL);
INSERT INTO `log` VALUES (532, 'root', 'statistics', 0, '2020-08-18 03:14:31.136', NULL);
INSERT INTO `log` VALUES (533, 'root', 'statistics', 0, '2020-08-18 03:14:31.138', NULL);
INSERT INTO `log` VALUES (534, 'root', 'statistics', 0, '2020-08-18 03:14:31.141', NULL);
INSERT INTO `log` VALUES (535, 'root', 'statistics', 0, '2020-08-18 03:14:31.141', NULL);
INSERT INTO `log` VALUES (536, 'root', 'statistics', 0, '2020-08-18 03:14:31.143', NULL);
INSERT INTO `log` VALUES (537, 'root', 'statistics', 0, '2020-08-18 03:14:31.143', NULL);
INSERT INTO `log` VALUES (538, 'root', 'statistics', 0, '2020-08-18 03:14:31.481', NULL);
INSERT INTO `log` VALUES (539, 'root', 'statistics', 0, '2020-08-18 03:14:31.483', NULL);
INSERT INTO `log` VALUES (540, 'root', 'statistics', 0, '2020-08-18 03:14:31.488', NULL);
INSERT INTO `log` VALUES (541, 'root', 'room', 0, '2020-08-18 03:14:32.4', NULL);
INSERT INTO `log` VALUES (542, 'root', 'checkin', 0, '2020-08-18 03:14:32.405', NULL);
INSERT INTO `log` VALUES (543, 'root', 'user', 0, '2020-08-18 03:14:32.991', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (544, 'root', 'role', 1, '2020-08-18 03:14:35.361', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (545, 'root', 'permission', 1, '2020-08-18 03:14:35.637', NULL);
INSERT INTO `log` VALUES (546, 'root', 'permission', 1, '2020-08-18 03:14:35.955', NULL);
INSERT INTO `log` VALUES (547, 'root', 'log', 0, '2020-08-18 03:14:36.524', '[\"\",\"\",\"\"]');
INSERT INTO `log` VALUES (548, 'root', 'room', 0, '2020-08-18 03:14:36.769', NULL);
INSERT INTO `log` VALUES (549, 'root', 'enter', 0, '2020-08-18 03:14:37.8', NULL);
INSERT INTO `log` VALUES (550, 'root', 'move', 0, '2020-08-18 03:14:38.76', NULL);
INSERT INTO `log` VALUES (551, 'root', 'exits', 0, '2020-08-18 03:14:39.066', NULL);
INSERT INTO `log` VALUES (552, 'root', 'room', 0, '2020-08-18 03:14:39.382', NULL);
INSERT INTO `log` VALUES (553, 'root', 'school', 0, '2020-08-18 03:14:39.893', NULL);
INSERT INTO `log` VALUES (554, 'root', 'school', 0, '2020-08-18 03:14:40.148', NULL);
INSERT INTO `log` VALUES (555, 'root', 'colleges', 0, '2020-08-18 03:14:40.416', NULL);
INSERT INTO `log` VALUES (556, 'root', 'major', 0, '2020-08-18 03:14:41.664', NULL);
INSERT INTO `log` VALUES (557, 'root', 'colleges', 0, '2020-08-18 03:14:41.977', NULL);
INSERT INTO `log` VALUES (558, 'root', 'major', 0, '2020-08-18 03:14:42.5', NULL);
INSERT INTO `log` VALUES (559, 'root', 'class', 0, '2020-08-18 03:14:42.5', NULL);
INSERT INTO `log` VALUES (560, 'root', 'user', 0, '2020-08-18 03:14:49.097', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (561, 'root', 'permission', 1, '2020-08-18 03:14:49.606', NULL);
INSERT INTO `log` VALUES (562, 'root', 'permission', 1, '2020-08-18 03:14:49.918', NULL);
INSERT INTO `log` VALUES (563, 'root', 'role', 1, '2020-08-18 03:14:50.591', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (564, 'root', 'role', 1, '2020-08-18 03:14:51.576', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (565, 'root', 'role', 1, '2020-08-18 03:14:55.315', '[{\"roleId\":12,\"userId\":1}]');
INSERT INTO `log` VALUES (566, 'root', 'user', 0, '2020-08-18 03:14:58.787', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (567, 'root', 'role', 1, '2020-08-18 03:15:00.889', NULL);
INSERT INTO `log` VALUES (568, 'root', 'role', 0, '2020-08-18 03:15:00.894', '[1]');
INSERT INTO `log` VALUES (569, 'root', 'role', 1, '2020-08-18 03:15:06.069', NULL);
INSERT INTO `log` VALUES (570, 'root', 'role', 0, '2020-08-18 03:15:06.368', '[1]');
INSERT INTO `log` VALUES (571, 'root', 'user', 0, '2020-08-18 03:15:19.328', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (572, 'root', 'role', 1, '2020-08-18 03:15:24.82', NULL);
INSERT INTO `log` VALUES (573, 'root', 'role', 0, '2020-08-18 03:15:24.821', '[2]');
INSERT INTO `log` VALUES (574, 'root', 'user', 0, '2020-08-18 07:45:34.137', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (575, 'root', 'role', 1, '2020-08-18 07:45:35.65', NULL);
INSERT INTO `log` VALUES (576, 'root', 'role', 0, '2020-08-18 07:45:35.65', '[1]');
INSERT INTO `log` VALUES (577, 'root', 'statistics', 0, '2020-08-18 07:45:49.048', NULL);
INSERT INTO `log` VALUES (578, 'root', 'statistics', 0, '2020-08-18 07:45:49.067', NULL);
INSERT INTO `log` VALUES (579, 'root', 'statistics', 0, '2020-08-18 07:45:49.068', NULL);
INSERT INTO `log` VALUES (580, 'root', 'statistics', 0, '2020-08-18 07:45:49.07', NULL);
INSERT INTO `log` VALUES (581, 'root', 'statistics', 0, '2020-08-18 07:45:49.076', NULL);
INSERT INTO `log` VALUES (582, 'root', 'statistics', 0, '2020-08-18 07:45:49.078', NULL);
INSERT INTO `log` VALUES (583, 'root', 'statistics', 0, '2020-08-18 07:45:49.41', NULL);
INSERT INTO `log` VALUES (584, 'root', 'statistics', 0, '2020-08-18 07:45:49.422', NULL);
INSERT INTO `log` VALUES (585, 'root', 'statistics', 0, '2020-08-18 07:45:49.423', NULL);
INSERT INTO `log` VALUES (586, 'root', 'user', 0, '2020-08-18 07:45:50.195', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (587, 'root', 'role', 0, '2020-08-18 07:46:01.272', '[1]');
INSERT INTO `log` VALUES (588, 'root', 'role', 1, '2020-08-18 07:46:01.272', NULL);
INSERT INTO `log` VALUES (589, 'root', 'role', 1, '2020-08-18 07:46:10.068', NULL);
INSERT INTO `log` VALUES (590, 'root', 'role', 0, '2020-08-18 07:46:10.386', '[1]');
INSERT INTO `log` VALUES (591, 'root', 'statistics', 0, '2020-08-18 07:46:32.041', NULL);
INSERT INTO `log` VALUES (592, 'root', 'statistics', 0, '2020-08-18 07:46:32.044', NULL);
INSERT INTO `log` VALUES (593, 'root', 'statistics', 0, '2020-08-18 07:46:32.046', NULL);
INSERT INTO `log` VALUES (594, 'root', 'statistics', 0, '2020-08-18 07:46:32.046', NULL);
INSERT INTO `log` VALUES (595, 'root', 'statistics', 0, '2020-08-18 07:46:32.049', NULL);
INSERT INTO `log` VALUES (596, 'root', 'statistics', 0, '2020-08-18 07:46:32.051', NULL);
INSERT INTO `log` VALUES (597, 'root', 'statistics', 0, '2020-08-18 07:46:32.39', NULL);
INSERT INTO `log` VALUES (598, 'root', 'statistics', 0, '2020-08-18 07:46:32.39', NULL);
INSERT INTO `log` VALUES (599, 'root', 'statistics', 0, '2020-08-18 07:46:32.397', NULL);
INSERT INTO `log` VALUES (600, 'root', 'user', 0, '2020-08-18 07:46:35.677', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (601, 'root', 'role', 1, '2020-08-18 07:46:38.225', NULL);
INSERT INTO `log` VALUES (602, 'root', 'role', 0, '2020-08-18 07:46:38.538', '[1]');
INSERT INTO `log` VALUES (603, 'root', 'role', 0, '2020-08-18 07:49:57.862', '[2]');
INSERT INTO `log` VALUES (604, 'root', 'role', 1, '2020-08-18 07:49:57.863', NULL);
INSERT INTO `log` VALUES (605, 'root', 'role', 1, '2020-08-18 07:50:02.766', NULL);
INSERT INTO `log` VALUES (606, 'root', 'role', 0, '2020-08-18 07:50:03.089', '[3]');
INSERT INTO `log` VALUES (607, 'root', 'role', 0, '2020-08-18 07:50:06.016', '[1]');
INSERT INTO `log` VALUES (608, 'root', 'role', 1, '2020-08-18 07:50:06.016', NULL);
INSERT INTO `log` VALUES (609, 'root', 'role', 1, '2020-08-18 07:50:10.932', NULL);
INSERT INTO `log` VALUES (610, 'root', 'role', 0, '2020-08-18 07:50:11.247', '[8]');
INSERT INTO `log` VALUES (611, 'root', 'role', 0, '2020-08-18 07:50:14.586', '[10]');
INSERT INTO `log` VALUES (612, 'root', 'role', 1, '2020-08-18 07:50:14.586', NULL);
INSERT INTO `log` VALUES (613, 'root', 'role', 1, '2020-08-18 07:50:19.429', NULL);
INSERT INTO `log` VALUES (614, 'root', 'role', 0, '2020-08-18 07:50:19.746', '[12]');
INSERT INTO `log` VALUES (615, 'root', 'role', 0, '2020-08-18 07:50:24.744', '[1]');
INSERT INTO `log` VALUES (616, 'root', 'role', 1, '2020-08-18 07:50:24.744', NULL);
INSERT INTO `log` VALUES (617, 'root', 'role', 1, '2020-08-18 07:50:29.801', NULL);
INSERT INTO `log` VALUES (618, 'root', 'role', 0, '2020-08-18 07:50:30.105', '[12]');
INSERT INTO `log` VALUES (619, 'root', 'user', 0, '2020-08-18 07:50:54.678', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (620, 'root', 'role', 1, '2020-08-18 07:50:58.098', NULL);
INSERT INTO `log` VALUES (621, 'root', 'role', 0, '2020-08-18 07:50:58.109', '[1]');
INSERT INTO `log` VALUES (622, 'root', 'role', 1, '2020-08-18 07:51:02.379', NULL);
INSERT INTO `log` VALUES (623, 'root', 'role', 0, '2020-08-18 07:51:02.379', '[1]');
INSERT INTO `log` VALUES (624, 'root', 'role', 0, '2020-08-18 07:51:38.016', '[1]');
INSERT INTO `log` VALUES (625, 'root', 'role', 1, '2020-08-18 07:51:38.017', NULL);
INSERT INTO `log` VALUES (626, 'root', 'role', 1, '2020-08-18 07:51:40.702', NULL);
INSERT INTO `log` VALUES (627, 'root', 'role', 0, '2020-08-18 07:51:41.002', '[2]');
INSERT INTO `log` VALUES (628, 'root', 'role', 1, '2020-08-18 07:51:48.242', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (629, 'root', 'user', 0, '2020-08-18 07:51:49.184', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (630, 'root', 'role', 1, '2020-08-18 07:51:50.104', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (631, 'root', 'role', 1, '2020-08-18 08:03:04.247', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (632, 'root', 'role', 1, '2020-08-18 08:13:13.057', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (633, 'root', 'role', 1, '2020-08-18 08:18:04.829', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (634, 'root', 'role', 1, '2020-08-18 08:18:07.543', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (635, 'root', 'user', 0, '2020-08-18 08:18:10.602', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (636, 'root', 'role', 1, '2020-08-18 08:18:13.053', NULL);
INSERT INTO `log` VALUES (637, 'root', 'user', 0, '2020-08-18 08:20:40.084', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (638, 'root', 'role', 1, '2020-08-18 08:20:41.587', NULL);
INSERT INTO `log` VALUES (639, 'root', 'role', 0, '2020-08-18 08:20:41.596', '[1]');
INSERT INTO `log` VALUES (640, 'root', 'user', 0, '2020-08-18 08:20:48.829', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (641, 'root', 'role', 1, '2020-08-18 08:20:50.734', NULL);
INSERT INTO `log` VALUES (642, 'root', 'role', 0, '2020-08-18 08:20:50.735', '[1]');
INSERT INTO `log` VALUES (643, 'root', 'user', 0, '2020-08-18 08:22:58.715', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (644, 'root', 'user', 0, '2020-08-18 08:23:34.999', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (645, 'root', 'role', 0, '2020-08-18 08:23:36.081', '[1]');
INSERT INTO `log` VALUES (646, 'root', 'role', 1, '2020-08-18 08:23:36.086', NULL);
INSERT INTO `log` VALUES (647, 'root', 'role', 1, '2020-08-18 08:23:43.471', NULL);
INSERT INTO `log` VALUES (648, 'root', 'role', 0, '2020-08-18 08:23:43.471', '[12]');
INSERT INTO `log` VALUES (649, 'root', 'role', 1, '2020-08-18 08:23:47.04', NULL);
INSERT INTO `log` VALUES (650, 'root', 'role', 0, '2020-08-18 08:23:47.361', '[1]');
INSERT INTO `log` VALUES (651, 'root', 'user', 0, '2020-08-18 08:23:52.219', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (652, 'root', 'role', 0, '2020-08-18 08:23:53.275', '[1]');
INSERT INTO `log` VALUES (653, 'root', 'role', 1, '2020-08-18 08:23:53.275', NULL);
INSERT INTO `log` VALUES (654, 'root', 'role', 0, '2020-08-18 08:23:59.031', '[1]');
INSERT INTO `log` VALUES (655, 'root', 'role', 1, '2020-08-18 08:23:59.031', NULL);
INSERT INTO `log` VALUES (656, 'root', 'role', 1, '2020-08-18 08:24:03.978', NULL);
INSERT INTO `log` VALUES (657, 'root', 'role', 0, '2020-08-18 08:24:04.308', '[1]');
INSERT INTO `log` VALUES (658, 'root', 'role', 0, '2020-08-18 08:24:20.896', '[1]');
INSERT INTO `log` VALUES (659, 'root', 'role', 1, '2020-08-18 08:24:20.897', NULL);
INSERT INTO `log` VALUES (660, 'root', 'user', 0, '2020-08-18 08:24:25.487', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (661, 'root', 'role', 1, '2020-08-18 08:24:26.634', NULL);
INSERT INTO `log` VALUES (662, 'root', 'role', 0, '2020-08-18 08:24:26.635', '[1]');
INSERT INTO `log` VALUES (663, 'root', 'echart', 0, '2020-08-18 08:24:58.603', NULL);
INSERT INTO `log` VALUES (664, 'root', 'echart', 0, '2020-08-18 08:24:58.605', NULL);
INSERT INTO `log` VALUES (665, 'root', 'echart', 0, '2020-08-18 08:24:58.607', NULL);
INSERT INTO `log` VALUES (666, 'root', 'echart', 0, '2020-08-18 08:24:58.61', NULL);
INSERT INTO `log` VALUES (667, 'root', 'echart', 0, '2020-08-18 08:24:58.618', NULL);
INSERT INTO `log` VALUES (668, 'root', 'user', 0, '2020-08-18 08:25:01.899', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (669, 'root', 'role', 0, '2020-08-18 08:25:03.507', '[1]');
INSERT INTO `log` VALUES (670, 'root', 'role', 1, '2020-08-18 08:25:03.507', NULL);
INSERT INTO `log` VALUES (671, 'root', 'user', 0, '2020-08-18 08:27:54.814', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (672, 'root', 'user', 0, '2020-08-18 08:27:55.414', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (673, 'root', 'user', 0, '2020-08-18 08:29:05.152', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (674, 'root', 'user', 0, '2020-08-18 08:29:05.339', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (675, 'root', 'user', 0, '2020-08-18 08:29:28.502', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (676, 'root', 'role', 1, '2020-08-18 08:29:32.96', NULL);
INSERT INTO `log` VALUES (677, 'root', 'role', 0, '2020-08-18 08:29:32.965', '[1]');
INSERT INTO `log` VALUES (678, 'root', 'role', 1, '2020-08-18 08:30:01.11', NULL);
INSERT INTO `log` VALUES (679, 'root', 'role', 0, '2020-08-18 08:30:01.113', '[1]');
INSERT INTO `log` VALUES (680, 'root', 'role', 1, '2020-08-18 08:30:05.615', NULL);
INSERT INTO `log` VALUES (681, 'root', 'role', 0, '2020-08-18 08:30:05.619', '[1]');
INSERT INTO `log` VALUES (682, 'root', 'role', 1, '2020-08-18 08:30:12.583', NULL);
INSERT INTO `log` VALUES (683, 'root', 'role', 0, '2020-08-18 08:30:12.587', '[2]');
INSERT INTO `log` VALUES (684, 'root', 'user', 0, '2020-08-18 08:30:53.935', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (685, 'root', 'user', 0, '2020-08-18 08:30:54.229', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (686, 'root', 'user', 0, '2020-08-18 08:30:57.725', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (687, 'root', 'role', 1, '2020-08-18 08:31:02.702', NULL);
INSERT INTO `log` VALUES (688, 'root', 'role', 0, '2020-08-18 08:31:02.705', '[1]');
INSERT INTO `log` VALUES (689, 'root', 'role', 1, '2020-08-18 08:31:07.815', NULL);
INSERT INTO `log` VALUES (690, 'root', 'role', 0, '2020-08-18 08:31:07.821', '[2]');
INSERT INTO `log` VALUES (691, 'root', 'role', 1, '2020-08-18 08:31:15.739', NULL);
INSERT INTO `log` VALUES (692, 'root', 'role', 0, '2020-08-18 08:31:15.74', '[12]');
INSERT INTO `log` VALUES (693, 'root', 'role', 0, '2020-08-18 08:33:55.79', '[1]');
INSERT INTO `log` VALUES (694, 'root', 'role', 1, '2020-08-18 08:33:55.795', NULL);
INSERT INTO `log` VALUES (695, 'root', 'role', 1, '2020-08-18 08:34:03.633', NULL);
INSERT INTO `log` VALUES (696, 'root', 'role', 0, '2020-08-18 08:34:03.94', '[2]');
INSERT INTO `log` VALUES (697, 'root', 'role', 0, '2020-08-18 08:34:06.847', '[7]');
INSERT INTO `log` VALUES (698, 'root', 'role', 1, '2020-08-18 08:34:06.848', NULL);
INSERT INTO `log` VALUES (699, 'root', 'user', 0, '2020-08-18 08:34:12.704', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (700, 'root', 'role', 0, '2020-08-18 08:34:17.152', '[1]');
INSERT INTO `log` VALUES (701, 'root', 'role', 1, '2020-08-18 08:34:17.152', NULL);
INSERT INTO `log` VALUES (702, 'root', 'user', 0, '2020-08-18 08:34:38.708', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (703, 'root', 'user', 0, '2020-08-18 08:34:38.976', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (704, 'root', 'user', 0, '2020-08-18 08:34:43.223', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (705, 'root', 'user', 0, '2020-08-18 08:34:43.23', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (706, 'root', 'user', 0, '2020-08-18 08:34:45.822', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (707, 'root', 'role', 1, '2020-08-18 08:34:47.861', NULL);
INSERT INTO `log` VALUES (708, 'root', 'role', 0, '2020-08-18 08:34:47.86', '[1]');
INSERT INTO `log` VALUES (709, 'root', 'role', 0, '2020-08-18 08:34:50.866', '[1]');
INSERT INTO `log` VALUES (710, 'root', 'role', 1, '2020-08-18 08:34:50.866', NULL);
INSERT INTO `log` VALUES (711, 'root', 'role', 1, '2020-08-18 08:34:53.991', NULL);
INSERT INTO `log` VALUES (712, 'root', 'role', 0, '2020-08-18 08:34:54.307', '[1]');
INSERT INTO `log` VALUES (713, 'root', 'role', 0, '2020-08-18 08:34:57.976', '[12]');
INSERT INTO `log` VALUES (714, 'root', 'role', 1, '2020-08-18 08:34:57.977', NULL);
INSERT INTO `log` VALUES (715, 'root', 'user', 0, '2020-08-18 08:36:26.034', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (716, 'root', 'user', 0, '2020-08-18 08:36:26.332', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (717, 'root', 'user', 0, '2020-08-18 08:36:29.419', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (718, 'root', 'role', 1, '2020-08-18 08:36:31.096', NULL);
INSERT INTO `log` VALUES (719, 'root', 'role', 0, '2020-08-18 08:36:31.098', '[1]');
INSERT INTO `log` VALUES (720, 'root', 'user', 0, '2020-08-18 08:38:23.767', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (721, 'root', 'user', 0, '2020-08-18 08:38:26.467', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (722, 'root', 'role', 1, '2020-08-18 08:38:28.848', NULL);
INSERT INTO `log` VALUES (723, 'root', 'role', 0, '2020-08-18 08:38:28.909', '[1]');
INSERT INTO `log` VALUES (724, 'root', 'role', 1, '2020-08-18 08:38:32.478', NULL);
INSERT INTO `log` VALUES (725, 'root', 'role', 0, '2020-08-18 08:38:32.525', '[1]');
INSERT INTO `log` VALUES (726, 'root', 'role', 1, '2020-08-18 08:38:36.586', NULL);
INSERT INTO `log` VALUES (727, 'root', 'role', 0, '2020-08-18 08:38:36.837', '[2]');
INSERT INTO `log` VALUES (728, 'root', 'user', 0, '2020-08-18 08:39:49.86', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (729, 'root', 'user', 0, '2020-08-18 08:39:50.193', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (730, 'root', 'user', 0, '2020-08-18 08:40:00.013', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (731, 'root', 'role', 1, '2020-08-18 08:40:01.944', NULL);
INSERT INTO `log` VALUES (732, 'root', 'role', 1, '2020-08-18 08:40:03.703', NULL);
INSERT INTO `log` VALUES (733, 'root', 'user', 0, '2020-08-18 08:40:29.799', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (734, 'root', 'user', 0, '2020-08-18 08:40:30.074', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (735, 'root', 'user', 0, '2020-08-18 08:40:40.734', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (736, 'root', 'role', 1, '2020-08-18 08:40:41.864', NULL);
INSERT INTO `log` VALUES (737, 'root', 'role', 0, '2020-08-18 08:40:41.926', '[1]');
INSERT INTO `log` VALUES (738, 'root', 'user', 0, '2020-08-18 08:41:33.751', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (739, 'root', 'user', 0, '2020-08-18 08:41:35.112', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (740, 'root', 'role', 1, '2020-08-18 08:41:41.327', NULL);
INSERT INTO `log` VALUES (741, 'root', 'role', 0, '2020-08-18 08:41:41.553', '[1]');
INSERT INTO `log` VALUES (742, 'root', 'user', 0, '2020-08-18 08:43:41.839', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (743, 'root', 'user', 0, '2020-08-18 08:43:42.112', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (744, 'root', 'user', 0, '2020-08-18 08:43:45.475', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (745, 'root', 'user', 0, '2020-08-18 08:43:57.514', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (746, 'root', 'role', 1, '2020-08-18 08:43:59.213', NULL);
INSERT INTO `log` VALUES (747, 'root', 'role', 0, '2020-08-18 08:43:59.295', '[1]');
INSERT INTO `log` VALUES (748, 'root', 'role', 1, '2020-08-18 08:44:03.825', NULL);
INSERT INTO `log` VALUES (749, 'root', 'role', 0, '2020-08-18 08:44:03.871', '[1]');
INSERT INTO `log` VALUES (750, 'root', 'role', 1, '2020-08-18 08:44:09.63', NULL);
INSERT INTO `log` VALUES (751, 'root', 'role', 0, '2020-08-18 08:44:09.909', '[1]');
INSERT INTO `log` VALUES (752, 'root', 'role', 1, '2020-08-18 08:44:13.591', NULL);
INSERT INTO `log` VALUES (753, 'root', 'role', 0, '2020-08-18 08:44:13.944', '[1]');
INSERT INTO `log` VALUES (754, 'root', 'role', 1, '2020-08-18 08:44:17.626', NULL);
INSERT INTO `log` VALUES (755, 'root', 'role', 0, '2020-08-18 08:44:17.888', '[12]');
INSERT INTO `log` VALUES (756, 'root', 'role', 1, '2020-08-18 08:44:23.358', NULL);
INSERT INTO `log` VALUES (757, 'root', 'role', 0, '2020-08-18 08:44:23.706', '[13]');
INSERT INTO `log` VALUES (758, 'root', 'role', 1, '2020-08-18 08:44:27.469', NULL);
INSERT INTO `log` VALUES (759, 'root', 'role', 0, '2020-08-18 08:44:27.729', '[15]');
INSERT INTO `log` VALUES (760, 'root', 'user', 0, '2020-08-18 08:45:32.153', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (761, 'root', 'user', 0, '2020-08-18 08:45:32.34', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (762, 'root', 'user', 0, '2020-08-18 08:45:36.357', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (763, 'root', 'role', 1, '2020-08-18 08:45:37.183', NULL);
INSERT INTO `log` VALUES (764, 'root', 'role', 0, '2020-08-18 08:45:37.245', '[1]');
INSERT INTO `log` VALUES (765, 'root', 'user', 0, '2020-08-18 08:45:57.214', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (766, 'root', 'user', 0, '2020-08-18 08:45:59.048', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (767, 'root', 'role', 1, '2020-08-18 08:46:00.332', NULL);
INSERT INTO `log` VALUES (768, 'root', 'role', 0, '2020-08-18 08:46:00.473', '[1]');
INSERT INTO `log` VALUES (769, 'root', 'user', 0, '2020-08-18 08:47:22.031', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (770, 'root', 'user', 0, '2020-08-18 08:47:22.337', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (771, 'root', 'user', 0, '2020-08-18 08:47:26.0', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (772, 'root', 'role', 1, '2020-08-18 08:47:27.063', NULL);
INSERT INTO `log` VALUES (773, 'root', 'role', 0, '2020-08-18 08:47:27.122', '[1]');
INSERT INTO `log` VALUES (774, 'root', 'user', 0, '2020-08-18 08:47:46.369', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (775, 'root', 'user', 0, '2020-08-18 08:47:46.658', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (776, 'root', 'user', 0, '2020-08-18 08:47:50.851', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (777, 'root', 'user', 0, '2020-08-18 08:47:50.877', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (778, 'root', 'user', 0, '2020-08-18 08:48:10.06', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (779, 'root', 'user', 0, '2020-08-18 08:48:10.523', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (780, 'root', 'user', 0, '2020-08-18 08:48:14.084', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (781, 'root', 'role', 1, '2020-08-18 08:48:16.754', NULL);
INSERT INTO `log` VALUES (782, 'root', 'role', 0, '2020-08-18 08:48:17.019', '[1]');
INSERT INTO `log` VALUES (783, 'root', 'user', 0, '2020-08-18 08:48:45.251', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (784, 'root', 'user', 0, '2020-08-18 08:48:45.799', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (785, 'root', 'user', 0, '2020-08-18 08:48:49.017', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (786, 'root', 'role', 1, '2020-08-18 08:48:50.51', NULL);
INSERT INTO `log` VALUES (787, 'root', 'role', 0, '2020-08-18 08:48:50.658', '[1]');
INSERT INTO `log` VALUES (788, 'root', 'user', 0, '2020-08-18 08:49:57.629', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (789, 'root', 'user', 0, '2020-08-18 08:49:57.966', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (790, 'root', 'user', 0, '2020-08-18 08:50:03.234', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (791, 'root', 'role', 1, '2020-08-18 08:50:04.369', NULL);
INSERT INTO `log` VALUES (792, 'root', 'role', 0, '2020-08-18 08:50:04.538', '[1]');
INSERT INTO `log` VALUES (793, 'root', 'user', 0, '2020-08-18 08:50:43.347', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (794, 'root', 'user', 0, '2020-08-18 08:50:45.276', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (795, 'root', 'role', 1, '2020-08-18 08:50:46.985', NULL);
INSERT INTO `log` VALUES (796, 'root', 'role', 0, '2020-08-18 08:50:47.05', '[1]');
INSERT INTO `log` VALUES (797, 'root', 'user', 0, '2020-08-18 08:51:12.47', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (798, 'root', 'user', 0, '2020-08-18 08:51:12.783', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (799, 'root', 'user', 0, '2020-08-18 08:51:15.273', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (800, 'root', 'role', 1, '2020-08-18 08:51:16.553', NULL);
INSERT INTO `log` VALUES (801, 'root', 'role', 0, '2020-08-18 08:51:16.665', '[1]');
INSERT INTO `log` VALUES (802, 'root', 'user', 0, '2020-08-18 08:51:35.431', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (803, 'root', 'user', 0, '2020-08-18 08:51:35.672', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (804, 'root', 'user', 0, '2020-08-18 08:51:38.85', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (805, 'root', 'role', 1, '2020-08-18 08:51:39.983', NULL);
INSERT INTO `log` VALUES (806, 'root', 'role', 0, '2020-08-18 08:51:40.334', '[1]');
INSERT INTO `log` VALUES (807, 'root', 'user', 0, '2020-08-18 08:54:17.269', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (808, 'root', 'user', 0, '2020-08-18 08:54:19.652', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (809, 'root', 'role', 1, '2020-08-18 08:54:22.069', NULL);
INSERT INTO `log` VALUES (810, 'root', 'role', 0, '2020-08-18 08:54:22.133', '[1]');
INSERT INTO `log` VALUES (811, 'root', 'user', 0, '2020-08-18 08:55:09.445', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (812, 'root', 'user', 0, '2020-08-18 08:55:09.782', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (813, 'root', 'user', 0, '2020-08-18 08:55:11.514', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (814, 'root', 'role', 1, '2020-08-18 08:55:12.624', NULL);
INSERT INTO `log` VALUES (815, 'root', 'role', 0, '2020-08-18 08:55:12.735', '[1]');
INSERT INTO `log` VALUES (816, 'root', 'role', 1, '2020-08-18 08:55:22.381', NULL);
INSERT INTO `log` VALUES (817, 'root', 'role', 0, '2020-08-18 08:55:22.627', '[1]');
INSERT INTO `log` VALUES (818, 'root', 'user', 0, '2020-08-18 08:57:12.469', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (819, 'root', 'user', 0, '2020-08-18 08:57:12.762', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (820, 'root', 'user', 0, '2020-08-18 08:57:18.977', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (821, 'root', 'user', 0, '2020-08-18 08:58:13.31', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (822, 'root', 'user', 0, '2020-08-18 08:58:13.579', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (823, 'root', 'user', 0, '2020-08-18 08:58:17.551', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (824, 'root', 'user', 0, '2020-08-18 08:58:17.845', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (825, 'root', 'user', 0, '2020-08-18 08:58:20.424', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (826, 'root', 'role', 1, '2020-08-18 08:58:21.708', NULL);
INSERT INTO `log` VALUES (827, 'root', 'role', 0, '2020-08-18 08:58:21.764', '[1]');
INSERT INTO `log` VALUES (828, 'root', 'role', 1, '2020-08-18 08:58:29.547', NULL);
INSERT INTO `log` VALUES (829, 'root', 'role', 0, '2020-08-18 08:58:29.803', '[1]');
INSERT INTO `log` VALUES (830, 'root', 'user', 0, '2020-08-18 09:01:23.969', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (831, 'root', 'role', 1, '2020-08-18 09:01:25.25', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (832, 'root', 'role', 1, '2020-08-18 09:01:37.228', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (833, 'root', 'role', 1, '2020-08-18 09:01:42.954', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (834, 'root', 'role', 1, '2020-08-18 09:01:43.965', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (835, 'root', 'role', 1, '2020-08-18 09:03:16.355', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (836, 'root', 'user', 0, '2020-08-18 09:03:18.455', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (837, 'root', 'role', 1, '2020-08-18 09:03:19.659', NULL);
INSERT INTO `log` VALUES (838, 'root', 'role', 0, '2020-08-18 09:03:19.928', '[1]');
INSERT INTO `log` VALUES (839, 'root', 'role', 1, '2020-08-18 09:03:24.279', NULL);
INSERT INTO `log` VALUES (840, 'root', 'role', 0, '2020-08-18 09:03:24.641', '[1]');
INSERT INTO `log` VALUES (841, 'root', 'echart', 0, '2020-08-18 09:11:19.722', NULL);
INSERT INTO `log` VALUES (842, 'root', 'echart', 0, '2020-08-18 09:11:19.901', NULL);
INSERT INTO `log` VALUES (843, 'root', 'echart', 0, '2020-08-18 09:11:19.912', NULL);
INSERT INTO `log` VALUES (844, 'root', 'echart', 0, '2020-08-18 09:11:19.913', NULL);
INSERT INTO `log` VALUES (845, 'root', 'echart', 0, '2020-08-18 09:11:19.934', NULL);
INSERT INTO `log` VALUES (846, 'root', 'user', 0, '2020-08-18 09:11:25.121', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (847, 'root', 'role', 1, '2020-08-18 09:11:27.094', NULL);
INSERT INTO `log` VALUES (848, 'root', 'role', 0, '2020-08-18 09:11:27.352', '[1]');
INSERT INTO `log` VALUES (849, 'root', 'role', 1, '2020-08-18 09:11:30.302', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (850, 'root', 'user', 0, '2020-08-18 09:11:39.618', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (851, 'root', 'role', 1, '2020-08-18 09:11:42.117', NULL);
INSERT INTO `log` VALUES (852, 'root', 'role', 0, '2020-08-18 09:11:42.483', '[4]');
INSERT INTO `log` VALUES (853, 'root', 'role', 1, '2020-08-18 09:11:52.122', '[{\"id\":26,\"roleId\":1,\"userId\":4}]');
INSERT INTO `log` VALUES (854, 'root', 'role', 1, '2020-08-18 09:11:53.956', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (855, 'root', 'role', 1, '2020-08-18 09:11:56.306', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (856, 'root', 'user', 0, '2020-08-18 09:16:45.459', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (857, 'root', 'role', 1, '2020-08-18 09:16:46.919', NULL);
INSERT INTO `log` VALUES (858, 'root', 'role', 0, '2020-08-18 09:16:47.283', '[1]');
INSERT INTO `log` VALUES (859, 'root', 'role', 1, '2020-08-18 09:16:51.182', NULL);
INSERT INTO `log` VALUES (860, 'root', 'role', 0, '2020-08-18 09:16:51.562', '[1]');
INSERT INTO `log` VALUES (861, 'root', 'role', 1, '2020-08-18 09:16:54.2', NULL);
INSERT INTO `log` VALUES (862, 'root', 'role', 0, '2020-08-18 09:16:54.563', '[2]');
INSERT INTO `log` VALUES (863, 'root', 'user', 0, '2020-08-18 09:19:44.118', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (864, 'root', 'room', 0, '2020-08-18 09:20:26.747', NULL);
INSERT INTO `log` VALUES (865, 'root', 'checkin', 0, '2020-08-18 09:20:26.756', NULL);
INSERT INTO `log` VALUES (866, 'root', 'checkin', 0, '2020-08-18 09:20:31.133', NULL);
INSERT INTO `log` VALUES (867, 'root', 'room', 0, '2020-08-18 09:20:31.436', NULL);
INSERT INTO `log` VALUES (868, 'root', 'room', 0, '2020-08-18 09:20:32.262', NULL);
INSERT INTO `log` VALUES (869, 'root', 'enter', 0, '2020-08-18 09:20:33.052', NULL);
INSERT INTO `log` VALUES (870, 'root', 'move', 0, '2020-08-18 09:20:34.675', NULL);
INSERT INTO `log` VALUES (871, 'root', 'exits', 0, '2020-08-18 09:20:35.841', NULL);
INSERT INTO `log` VALUES (872, 'root', 'room', 0, '2020-08-18 09:20:36.158', NULL);
INSERT INTO `log` VALUES (873, 'root', 'move', 0, '2020-08-18 09:20:36.712', NULL);
INSERT INTO `log` VALUES (874, 'root', 'exits', 0, '2020-08-18 09:20:39.057', NULL);
INSERT INTO `log` VALUES (875, 'root', 'room', 0, '2020-08-18 09:20:39.067', NULL);
INSERT INTO `log` VALUES (876, 'root', 'history', 0, '2020-08-18 09:20:40.487', NULL);
INSERT INTO `log` VALUES (877, 'root', 'visits', 0, '2020-08-18 09:20:41.653', NULL);
INSERT INTO `log` VALUES (878, 'root', 'valuables', 0, '2020-08-18 09:20:42.42', NULL);
INSERT INTO `log` VALUES (879, 'root', 'room', 0, '2020-08-18 09:20:43.616', NULL);
INSERT INTO `log` VALUES (880, 'root', 'stay', 0, '2020-08-18 09:20:43.617', NULL);
INSERT INTO `log` VALUES (881, 'root', 'action', 0, '2020-08-18 09:20:44.105', NULL);
INSERT INTO `log` VALUES (882, 'root', 'repair', 0, '2020-08-18 09:20:45.565', NULL);
INSERT INTO `log` VALUES (883, 'root', 'room', 0, '2020-08-18 09:20:45.567', NULL);
INSERT INTO `log` VALUES (884, 'root', 'school', 0, '2020-08-18 09:20:48.163', NULL);
INSERT INTO `log` VALUES (885, 'root', 'statistics', 0, '2020-08-18 09:20:50.185', NULL);
INSERT INTO `log` VALUES (886, 'root', 'statistics', 0, '2020-08-18 09:20:50.185', NULL);
INSERT INTO `log` VALUES (887, 'root', 'statistics', 0, '2020-08-18 09:20:50.188', NULL);
INSERT INTO `log` VALUES (888, 'root', 'statistics', 0, '2020-08-18 09:20:50.188', NULL);
INSERT INTO `log` VALUES (889, 'root', 'statistics', 0, '2020-08-18 09:20:50.188', NULL);
INSERT INTO `log` VALUES (890, 'root', 'statistics', 0, '2020-08-18 09:20:50.188', NULL);
INSERT INTO `log` VALUES (891, 'root', 'statistics', 0, '2020-08-18 09:20:50.534', NULL);
INSERT INTO `log` VALUES (892, 'root', 'statistics', 0, '2020-08-18 09:20:50.542', NULL);
INSERT INTO `log` VALUES (893, 'root', 'statistics', 0, '2020-08-18 09:20:50.567', NULL);
INSERT INTO `log` VALUES (894, 'root', 'user', 0, '2020-08-18 09:20:57.131', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (895, 'root', 'role', 1, '2020-08-18 09:20:58.714', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (896, 'root', 'permission', 1, '2020-08-18 09:21:00.132', NULL);
INSERT INTO `log` VALUES (897, 'root', 'permission', 1, '2020-08-18 09:21:00.439', NULL);
INSERT INTO `log` VALUES (898, 'root', 'role', 1, '2020-08-18 09:21:02.513', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (899, 'root', 'user', 0, '2020-08-18 09:21:02.763', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (900, 'root', 'role', 1, '2020-08-18 09:21:04.484', NULL);
INSERT INTO `log` VALUES (901, 'root', 'role', 0, '2020-08-18 09:21:04.854', '[1]');
INSERT INTO `log` VALUES (902, 'root', 'role', 1, '2020-08-18 09:21:07.066', NULL);
INSERT INTO `log` VALUES (903, 'root', 'role', 0, '2020-08-18 09:21:07.431', '[1]');
INSERT INTO `log` VALUES (904, 'root', 'role', 1, '2020-08-18 09:21:12.763', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (905, 'root', 'permission', 1, '2020-08-18 09:21:13.951', NULL);
INSERT INTO `log` VALUES (906, 'root', 'permission', 1, '2020-08-18 09:21:14.269', NULL);
INSERT INTO `log` VALUES (907, 'root', 'role', 1, '2020-08-18 09:21:16.105', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (908, 'root', 'permission', 1, '2020-08-18 09:21:28.727', NULL);
INSERT INTO `log` VALUES (909, 'root', 'permission', 1, '2020-08-18 09:21:28.728', NULL);
INSERT INTO `log` VALUES (910, 'root', 'role', 1, '2020-08-18 09:21:29.498', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (911, 'root', 'role', 1, '2020-08-18 09:23:48.521', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (912, 'root', 'user', 0, '2020-08-18 09:23:50.059', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (913, 'root', 'role', 1, '2020-08-18 09:23:51.33', NULL);
INSERT INTO `log` VALUES (914, 'root', 'role', 0, '2020-08-18 09:23:51.721', '[1]');
INSERT INTO `log` VALUES (915, 'root', 'role', 1, '2020-08-18 09:23:51.967', NULL);
INSERT INTO `log` VALUES (916, 'root', 'role', 0, '2020-08-18 09:23:52.072', '[1]');
INSERT INTO `log` VALUES (917, 'root', 'role', 1, '2020-08-18 09:23:59.783', NULL);
INSERT INTO `log` VALUES (918, 'root', 'role', 0, '2020-08-18 09:24:00.058', '[1]');
INSERT INTO `log` VALUES (919, 'root', 'role', 1, '2020-08-18 09:24:02.496', NULL);
INSERT INTO `log` VALUES (920, 'root', 'role', 0, '2020-08-18 09:24:02.855', '[1]');
INSERT INTO `log` VALUES (921, 'root', 'user', 0, '2020-08-18 09:24:23.203', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (922, 'root', 'role', 1, '2020-08-18 09:24:24.747', NULL);
INSERT INTO `log` VALUES (923, 'root', 'role', 0, '2020-08-18 09:24:24.828', '[1]');
INSERT INTO `log` VALUES (924, 'root', 'role', 1, '2020-08-18 09:24:24.896', NULL);
INSERT INTO `log` VALUES (925, 'root', 'role', 0, '2020-08-18 09:24:24.955', '[1]');
INSERT INTO `log` VALUES (926, 'root', 'role', 1, '2020-08-18 09:24:28.02', NULL);
INSERT INTO `log` VALUES (927, 'root', 'role', 0, '2020-08-18 09:24:28.391', '[2]');
INSERT INTO `log` VALUES (928, 'root', 'role', 1, '2020-08-18 09:24:30.486', NULL);
INSERT INTO `log` VALUES (929, 'root', 'role', 0, '2020-08-18 09:24:30.857', '[1]');
INSERT INTO `log` VALUES (930, 'root', 'user', 0, '2020-08-18 09:25:14.729', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (931, 'root', 'user', 0, '2020-08-18 09:27:15.982', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (932, 'root', 'user', 0, '2020-08-18 09:27:27.363', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (933, 'root', 'user', 0, '2020-08-18 09:28:09.591', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (934, 'root', 'role', 1, '2020-08-18 09:35:29.637', NULL);
INSERT INTO `log` VALUES (935, 'root', 'role', 0, '2020-08-18 09:35:29.892', '[1]');
INSERT INTO `log` VALUES (936, 'root', 'role', 1, '2020-08-18 09:35:30.031', NULL);
INSERT INTO `log` VALUES (937, 'root', 'role', 0, '2020-08-18 09:35:30.284', '[1]');
INSERT INTO `log` VALUES (938, 'root', 'role', 1, '2020-08-18 09:35:32.215', NULL);
INSERT INTO `log` VALUES (939, 'root', 'role', 0, '2020-08-18 09:35:32.592', '[2]');
INSERT INTO `log` VALUES (940, 'root', 'role', 1, '2020-08-18 09:35:34.715', NULL);
INSERT INTO `log` VALUES (941, 'root', 'role', 0, '2020-08-18 09:35:35.08', '[3]');
INSERT INTO `log` VALUES (942, 'root', 'role', 1, '2020-08-18 09:35:37.739', NULL);
INSERT INTO `log` VALUES (943, 'root', 'role', 0, '2020-08-18 09:35:38.126', '[12]');
INSERT INTO `log` VALUES (944, 'root', 'role', 1, '2020-08-18 09:35:41.858', NULL);
INSERT INTO `log` VALUES (945, 'root', 'role', 0, '2020-08-18 09:35:42.209', '[13]');
INSERT INTO `log` VALUES (946, 'root', 'role', 1, '2020-08-18 09:35:44.344', NULL);
INSERT INTO `log` VALUES (947, 'root', 'role', 0, '2020-08-18 09:35:44.714', '[15]');
INSERT INTO `log` VALUES (948, 'root', 'role', 1, '2020-08-18 09:35:46.417', NULL);
INSERT INTO `log` VALUES (949, 'root', 'role', 0, '2020-08-18 09:35:46.783', '[14]');
INSERT INTO `log` VALUES (950, 'root', 'role', 1, '2020-08-18 09:35:52.188', NULL);
INSERT INTO `log` VALUES (951, 'root', 'role', 0, '2020-08-18 09:35:52.561', '[1]');
INSERT INTO `log` VALUES (952, 'root', 'role', 1, '2020-08-18 09:35:54.951', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (953, 'root', 'role', 1, '2020-08-18 09:35:56.627', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (954, 'root', 'role', 1, '2020-08-18 09:35:59.326', '[{\"roleId\":2,\"userId\":1}]');
INSERT INTO `log` VALUES (955, 'root', 'role', 1, '2020-08-18 09:53:36.37', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (956, '20180022001', 'echart', 0, '2020-08-18 09:57:35.016', NULL);
INSERT INTO `log` VALUES (957, '20180022001', 'echart', 0, '2020-08-18 09:57:35.212', NULL);
INSERT INTO `log` VALUES (958, '20180022001', 'echart', 0, '2020-08-18 09:57:35.236', NULL);
INSERT INTO `log` VALUES (959, '20180022001', 'echart', 0, '2020-08-18 09:57:35.241', NULL);
INSERT INTO `log` VALUES (960, '20180022001', 'echart', 0, '2020-08-18 09:57:35.258', NULL);
INSERT INTO `log` VALUES (961, '20180022001', 'room', 0, '2020-08-18 10:02:11.652', NULL);
INSERT INTO `log` VALUES (962, '20180022001', 'checkin', 0, '2020-08-18 10:02:11.662', NULL);
INSERT INTO `log` VALUES (963, '20180022001', 'room', 0, '2020-08-18 10:04:10.395', NULL);
INSERT INTO `log` VALUES (964, '20180022001', 'enter', 0, '2020-08-18 10:04:10.71', NULL);
INSERT INTO `log` VALUES (965, '20180022001', 'move', 0, '2020-08-18 10:04:11.661', NULL);
INSERT INTO `log` VALUES (966, '20180022001', 'exits', 0, '2020-08-18 10:04:12.246', NULL);
INSERT INTO `log` VALUES (967, '20180022001', 'room', 0, '2020-08-18 10:04:12.548', NULL);
INSERT INTO `log` VALUES (968, '20180022001', 'move', 0, '2020-08-18 10:04:19.424', NULL);
INSERT INTO `log` VALUES (969, '20180022001', 'exits', 0, '2020-08-18 10:04:20.046', NULL);
INSERT INTO `log` VALUES (970, '20180022001', 'room', 0, '2020-08-18 10:04:20.356', NULL);
INSERT INTO `log` VALUES (971, '20180022001', 'move', 0, '2020-08-18 10:04:20.891', NULL);
INSERT INTO `log` VALUES (972, '20180022001', 'enter', 0, '2020-08-18 10:04:21.245', NULL);
INSERT INTO `log` VALUES (973, '20180022001', 'room', 0, '2020-08-18 10:04:22.017', NULL);
INSERT INTO `log` VALUES (974, '20180022001', 'enter', 0, '2020-08-18 10:04:22.343', NULL);
INSERT INTO `log` VALUES (975, '20180022001', 'room', 0, '2020-08-18 10:04:23.281', NULL);
INSERT INTO `log` VALUES (976, '20180022001', 'checkin', 0, '2020-08-18 10:04:23.29', NULL);
INSERT INTO `log` VALUES (977, '20180022001', 'move', 0, '2020-08-18 10:04:32.736', NULL);
INSERT INTO `log` VALUES (978, '20180022001', 'exits', 0, '2020-08-18 10:04:34.513', NULL);
INSERT INTO `log` VALUES (979, '20180022001', 'room', 0, '2020-08-18 10:04:34.517', NULL);
INSERT INTO `log` VALUES (980, '20180022001', 'move', 0, '2020-08-18 10:04:39.258', NULL);
INSERT INTO `log` VALUES (981, '20180022001', 'room', 0, '2020-08-18 10:04:40.451', NULL);
INSERT INTO `log` VALUES (982, '20180022001', 'enter', 0, '2020-08-18 10:04:41.433', NULL);
INSERT INTO `log` VALUES (983, '20180022001', 'room', 0, '2020-08-18 10:04:44.744', NULL);
INSERT INTO `log` VALUES (984, '20180022001', 'checkin', 0, '2020-08-18 10:04:44.751', NULL);
INSERT INTO `log` VALUES (985, '20180022001', 'enter', 0, '2020-08-18 10:04:54.185', NULL);
INSERT INTO `log` VALUES (986, '20180022001', 'room', 0, '2020-08-18 10:04:57.217', NULL);
INSERT INTO `log` VALUES (987, '20180022001', 'checkin', 0, '2020-08-18 10:04:57.227', NULL);
INSERT INTO `log` VALUES (988, '20180022001', 'enter', 0, '2020-08-18 10:04:58.738', NULL);
INSERT INTO `log` VALUES (989, '20180022001', 'room', 0, '2020-08-18 10:07:36.061', NULL);
INSERT INTO `log` VALUES (990, '20180022001', 'checkin', 0, '2020-08-18 10:07:36.065', NULL);
INSERT INTO `log` VALUES (991, '20180022001', 'room', 0, '2020-08-18 10:09:37.569', NULL);
INSERT INTO `log` VALUES (992, '20180022001', 'enter', 0, '2020-08-18 10:09:38.528', NULL);
INSERT INTO `log` VALUES (993, '20180022001', 'move', 0, '2020-08-18 10:09:40.146', NULL);
INSERT INTO `log` VALUES (994, '20180022001', 'exits', 0, '2020-08-18 10:09:41.301', NULL);
INSERT INTO `log` VALUES (995, '20180022001', 'room', 0, '2020-08-18 10:09:41.622', NULL);
INSERT INTO `log` VALUES (996, '20180022001', 'enter', 0, '2020-08-18 10:09:53.585', NULL);
INSERT INTO `log` VALUES (997, '20180022001', 'checkin', 0, '2020-08-18 10:09:58.136', NULL);
INSERT INTO `log` VALUES (998, '20180022001', 'room', 0, '2020-08-18 10:09:58.44', NULL);
INSERT INTO `log` VALUES (999, '20180022001', 'checkin', 0, '2020-08-18 10:10:05.747', '[29]');
INSERT INTO `log` VALUES (1000, '20180022001', 'students', 0, '2020-08-18 10:11:28.811', '[\"20180022001\"]');
INSERT INTO `log` VALUES (1001, '20180022001', 'checkin', 0, '2020-08-18 10:11:31.37', '[2]');
INSERT INTO `log` VALUES (1002, '20180022001', 'checkin', 0, '2020-08-18 10:11:42.251', '[37]');
INSERT INTO `log` VALUES (1003, '20180022001', 'enter', 0, '2020-08-18 10:13:55.267', NULL);
INSERT INTO `log` VALUES (1004, '20180022001', 'room', 0, '2020-08-18 10:14:35.543', NULL);
INSERT INTO `log` VALUES (1005, '20180022001', 'checkin', 0, '2020-08-18 10:14:35.543', NULL);
INSERT INTO `log` VALUES (1006, '20180022001', 'enter', 0, '2020-08-18 10:15:46.053', NULL);
INSERT INTO `log` VALUES (1007, '20180022001', 'checkin', 0, '2020-08-18 10:15:50.368', NULL);
INSERT INTO `log` VALUES (1008, '20180022001', 'room', 0, '2020-08-18 10:15:50.677', NULL);
INSERT INTO `log` VALUES (1009, '20180022001', 'room', 0, '2020-08-18 10:16:06.348', NULL);
INSERT INTO `log` VALUES (1010, '20180022001', 'enter', 0, '2020-08-18 10:16:06.597', NULL);
INSERT INTO `log` VALUES (1011, '20180022001', 'move', 0, '2020-08-18 10:16:06.996', NULL);
INSERT INTO `log` VALUES (1012, '20180022001', 'exits', 0, '2020-08-18 10:16:07.733', NULL);
INSERT INTO `log` VALUES (1013, '20180022001', 'room', 0, '2020-08-18 10:16:07.742', NULL);
INSERT INTO `log` VALUES (1014, 'root', 'echart', 0, '2020-08-18 11:49:09.159', NULL);
INSERT INTO `log` VALUES (1015, 'root', 'echart', 0, '2020-08-18 11:49:09.143', NULL);
INSERT INTO `log` VALUES (1016, 'root', 'echart', 0, '2020-08-18 11:49:09.143', NULL);
INSERT INTO `log` VALUES (1017, 'root', 'echart', 0, '2020-08-18 11:49:09.181', NULL);
INSERT INTO `log` VALUES (1018, 'root', 'echart', 0, '2020-08-18 11:49:09.352', NULL);
INSERT INTO `log` VALUES (1019, 'root', 'move', 0, '2020-08-18 11:58:36.339', NULL);
INSERT INTO `log` VALUES (1020, 'root', 'valuables', 0, '2020-08-18 11:59:30.262', NULL);
INSERT INTO `log` VALUES (1021, 'root', 'user', 0, '2020-08-18 12:00:09.03', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (1022, 'root', 'role', 1, '2020-08-18 12:00:09.885', NULL);
INSERT INTO `log` VALUES (1023, 'root', 'role', 0, '2020-08-18 12:00:09.95', '[1]');
INSERT INTO `log` VALUES (1024, 'root', 'role', 1, '2020-08-18 12:00:10.337', NULL);
INSERT INTO `log` VALUES (1025, 'root', 'role', 0, '2020-08-18 12:00:10.603', '[1]');
INSERT INTO `log` VALUES (1026, 'root', 'role', 1, '2020-08-18 12:00:12.897', NULL);
INSERT INTO `log` VALUES (1027, 'root', 'role', 0, '2020-08-18 12:00:13.262', '[2]');
INSERT INTO `log` VALUES (1028, 'root', 'role', 1, '2020-08-18 12:00:15.579', NULL);
INSERT INTO `log` VALUES (1029, 'root', 'role', 0, '2020-08-18 12:00:15.953', '[3]');
INSERT INTO `log` VALUES (1030, 'root', 'role', 1, '2020-08-18 12:01:08.212', NULL);
INSERT INTO `log` VALUES (1031, 'root', 'role', 0, '2020-08-18 12:01:08.571', '[1]');
INSERT INTO `log` VALUES (1032, 'root', 'enter', 0, '2020-08-18 12:01:16.337', NULL);
INSERT INTO `log` VALUES (1033, 'root', 'move', 0, '2020-08-18 12:01:17.002', NULL);
INSERT INTO `log` VALUES (1034, 'root', 'enter', 0, '2020-08-18 12:02:00.66', NULL);
INSERT INTO `log` VALUES (1035, 'root', 'move', 0, '2020-08-18 12:02:03.147', NULL);
INSERT INTO `log` VALUES (1036, 'root', 'valuables', 0, '2020-08-18 12:02:07.63', NULL);
INSERT INTO `log` VALUES (1037, 'root', 'visits', 0, '2020-08-18 12:02:11.579', NULL);
INSERT INTO `log` VALUES (1038, 'root', 'history', 0, '2020-08-18 12:02:14.043', NULL);
INSERT INTO `log` VALUES (1039, 'root', 'valuables', 0, '2020-08-18 12:03:49.103', NULL);
INSERT INTO `log` VALUES (1040, 'root', 'action', 0, '2020-08-18 12:03:51.29', NULL);
INSERT INTO `log` VALUES (1041, 'root', 'repair', 0, '2020-08-18 12:03:52.227', NULL);
INSERT INTO `log` VALUES (1042, 'root', 'room', 0, '2020-08-18 12:03:52.456', NULL);
INSERT INTO `log` VALUES (1043, 'root', 'user', 0, '2020-08-18 12:04:00.084', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (1044, 'root', 'role', 1, '2020-08-18 12:04:02.115', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (1045, 'root', 'permission', 1, '2020-08-18 12:04:02.709', NULL);
INSERT INTO `log` VALUES (1046, 'root', 'permission', 1, '2020-08-18 12:04:02.709', NULL);
INSERT INTO `log` VALUES (1047, 'root', 'valuables', 0, '2020-08-18 12:04:49.417', NULL);
INSERT INTO `log` VALUES (1048, 'root', 'echart', 0, '2020-08-18 12:05:22.259', NULL);
INSERT INTO `log` VALUES (1049, 'root', 'echart', 0, '2020-08-18 12:05:22.267', NULL);
INSERT INTO `log` VALUES (1050, 'root', 'echart', 0, '2020-08-18 12:05:22.271', NULL);
INSERT INTO `log` VALUES (1051, 'root', 'echart', 0, '2020-08-18 12:05:22.271', NULL);
INSERT INTO `log` VALUES (1052, 'root', 'echart', 0, '2020-08-18 12:05:22.482', NULL);
INSERT INTO `log` VALUES (1053, 'root', 'enter', 0, '2020-08-18 12:05:24.336', NULL);
INSERT INTO `log` VALUES (1054, 'root', 'move', 0, '2020-08-18 12:05:25.315', NULL);
INSERT INTO `log` VALUES (1055, 'root', 'move', 0, '2020-08-18 12:06:21.249', NULL);
INSERT INTO `log` VALUES (1056, 'root', 'move', 0, '2020-08-18 12:11:50.374', NULL);
INSERT INTO `log` VALUES (1057, 'root', 'move', 0, '2020-08-18 12:15:24.039', NULL);
INSERT INTO `log` VALUES (1058, 'root', 'move', 0, '2020-08-18 12:15:26.375', NULL);
INSERT INTO `log` VALUES (1059, 'root', 'move', 0, '2020-08-18 12:15:42.895', NULL);
INSERT INTO `log` VALUES (1060, 'root', 'move', 0, '2020-08-18 12:17:04.74', NULL);
INSERT INTO `log` VALUES (1061, 'root', 'move', 0, '2020-08-18 12:17:34.163', NULL);
INSERT INTO `log` VALUES (1062, 'root', 'move', 0, '2020-08-18 12:17:54.886', NULL);
INSERT INTO `log` VALUES (1063, 'root', 'move', 0, '2020-08-18 12:18:14.83', NULL);
INSERT INTO `log` VALUES (1064, 'root', 'valuables', 0, '2020-08-18 12:27:03.192', NULL);
INSERT INTO `log` VALUES (1065, 'root', 'move', 0, '2020-08-18 12:27:06.035', NULL);
INSERT INTO `log` VALUES (1066, 'root', 'move', 0, '2020-08-18 12:31:01.758', NULL);
INSERT INTO `log` VALUES (1067, 'root', 'move', 0, '2020-08-18 12:31:01.802', NULL);
INSERT INTO `log` VALUES (1068, 'root', 'move', 0, '2020-08-18 12:31:24.552', NULL);
INSERT INTO `log` VALUES (1069, 'root', 'move', 0, '2020-08-18 12:31:24.566', NULL);
INSERT INTO `log` VALUES (1070, 'root', 'move', 0, '2020-08-18 12:34:02.106', NULL);
INSERT INTO `log` VALUES (1071, 'root', 'move', 0, '2020-08-18 12:34:34.911', NULL);
INSERT INTO `log` VALUES (1072, 'root', 'move', 0, '2020-08-18 12:34:34.941', NULL);
INSERT INTO `log` VALUES (1073, 'root', 'move', 0, '2020-08-18 12:34:36.529', NULL);
INSERT INTO `log` VALUES (1074, 'root', 'move', 0, '2020-08-18 12:34:44.648', NULL);
INSERT INTO `log` VALUES (1075, 'root', 'move', 0, '2020-08-18 12:34:44.686', NULL);
INSERT INTO `log` VALUES (1076, 'root', 'move', 0, '2020-08-18 12:34:56.221', NULL);
INSERT INTO `log` VALUES (1077, 'root', 'move', 0, '2020-08-18 12:34:56.235', NULL);
INSERT INTO `log` VALUES (1078, 'root', 'move', 0, '2020-08-18 12:35:04.791', NULL);
INSERT INTO `log` VALUES (1079, 'root', 'move', 0, '2020-08-18 12:35:04.809', NULL);
INSERT INTO `log` VALUES (1080, 'root', 'move', 0, '2020-08-18 12:35:52.64', NULL);
INSERT INTO `log` VALUES (1081, 'root', 'move', 0, '2020-08-18 12:35:52.695', NULL);
INSERT INTO `log` VALUES (1082, 'root', 'move', 0, '2020-08-18 12:35:55.245', NULL);
INSERT INTO `log` VALUES (1083, 'root', 'move', 0, '2020-08-18 12:38:33.011', NULL);
INSERT INTO `log` VALUES (1084, 'root', 'move', 0, '2020-08-18 12:38:33.071', NULL);
INSERT INTO `log` VALUES (1085, 'root', 'move', 0, '2020-08-18 12:38:51.836', NULL);
INSERT INTO `log` VALUES (1086, 'root', 'move', 0, '2020-08-18 12:39:02.38', '[\"\"]');
INSERT INTO `log` VALUES (1087, 'root', 'move', 0, '2020-08-18 12:39:05.555', '[\"90\"]');
INSERT INTO `log` VALUES (1088, 'root', 'move', 0, '2020-08-18 12:39:42.077', NULL);
INSERT INTO `log` VALUES (1089, 'root', 'move', 0, '2020-08-18 12:39:42.106', NULL);
INSERT INTO `log` VALUES (1090, 'root', 'move', 0, '2020-08-18 12:39:43.705', NULL);
INSERT INTO `log` VALUES (1091, 'root', 'move', 0, '2020-08-18 12:39:52.771', NULL);
INSERT INTO `log` VALUES (1092, 'root', 'move', 0, '2020-08-18 12:40:35.01', NULL);
INSERT INTO `log` VALUES (1093, 'root', 'move', 0, '2020-08-18 12:40:35.114', NULL);
INSERT INTO `log` VALUES (1094, 'root', 'move', 0, '2020-08-18 12:40:44.647', NULL);
INSERT INTO `log` VALUES (1095, 'root', 'valuables', 0, '2020-08-18 12:41:01.139', NULL);
INSERT INTO `log` VALUES (1096, 'root', 'enter', 0, '2020-08-18 12:41:05.392', NULL);
INSERT INTO `log` VALUES (1097, 'root', 'move', 0, '2020-08-18 12:41:11.306', NULL);
INSERT INTO `log` VALUES (1098, 'root', 'repair', 0, '2020-08-18 12:44:08.659', NULL);
INSERT INTO `log` VALUES (1099, 'root', 'room', 0, '2020-08-18 12:44:08.845', NULL);
INSERT INTO `log` VALUES (1100, 'root', 'statistics', 0, '2020-08-18 12:44:13.326', NULL);
INSERT INTO `log` VALUES (1101, 'root', 'statistics', 0, '2020-08-18 12:44:13.658', NULL);
INSERT INTO `log` VALUES (1102, 'root', 'statistics', 0, '2020-08-18 12:44:13.663', NULL);
INSERT INTO `log` VALUES (1103, 'root', 'statistics', 0, '2020-08-18 12:44:13.667', NULL);
INSERT INTO `log` VALUES (1104, 'root', 'statistics', 0, '2020-08-18 12:44:13.678', NULL);
INSERT INTO `log` VALUES (1105, 'root', 'statistics', 0, '2020-08-18 12:44:13.694', NULL);
INSERT INTO `log` VALUES (1106, 'root', 'statistics', 0, '2020-08-18 12:44:13.705', NULL);
INSERT INTO `log` VALUES (1107, 'root', 'statistics', 0, '2020-08-18 12:44:14.015', NULL);
INSERT INTO `log` VALUES (1108, 'root', 'statistics', 0, '2020-08-18 12:44:14.032', NULL);
INSERT INTO `log` VALUES (1109, 'root', 'user', 0, '2020-08-18 12:44:15.089', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (1110, 'root', 'role', 1, '2020-08-18 12:44:15.959', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (1111, 'root', 'user', 0, '2020-08-18 12:44:16.999', '[{\"currentPage\":1,\"pageSize\":10}]');
INSERT INTO `log` VALUES (1112, 'root', 'role', 1, '2020-08-18 12:44:18.453', NULL);
INSERT INTO `log` VALUES (1113, 'root', 'role', 0, '2020-08-18 12:44:18.702', '[1]');
INSERT INTO `log` VALUES (1114, 'root', 'role', 1, '2020-08-18 12:44:18.813', NULL);
INSERT INTO `log` VALUES (1115, 'root', 'role', 0, '2020-08-18 12:44:19.083', '[1]');
INSERT INTO `log` VALUES (1116, 'root', 'role', 1, '2020-08-18 12:44:20.871', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (1117, 'root', 'permission', 1, '2020-08-18 12:44:24.131', NULL);
INSERT INTO `log` VALUES (1118, 'root', 'permission', 1, '2020-08-18 12:44:24.376', NULL);
INSERT INTO `log` VALUES (1119, 'root', 'move', 0, '2020-08-18 12:44:31.852', NULL);
INSERT INTO `log` VALUES (1120, 'root', 'move', 0, '2020-08-18 12:45:19.469', NULL);
INSERT INTO `log` VALUES (1121, 'root', 'move', 0, '2020-08-18 12:45:19.557', NULL);
INSERT INTO `log` VALUES (1122, 'root', 'move', 0, '2020-08-18 12:45:22.469', NULL);
INSERT INTO `log` VALUES (1123, 'root', 'move', 0, '2020-08-18 12:45:37.012', NULL);
INSERT INTO `log` VALUES (1124, 'root', 'move', 0, '2020-08-18 12:45:37.046', NULL);
INSERT INTO `log` VALUES (1125, 'root', 'move', 0, '2020-08-18 12:46:01.807', NULL);
INSERT INTO `log` VALUES (1126, 'root', 'move', 0, '2020-08-18 12:46:02.069', NULL);
INSERT INTO `log` VALUES (1127, 'root', 'move', 0, '2020-08-18 12:46:38.558', NULL);
INSERT INTO `log` VALUES (1128, 'root', 'move', 0, '2020-08-18 12:46:38.581', NULL);
INSERT INTO `log` VALUES (1129, 'root', 'move', 0, '2020-08-18 12:46:44.638', NULL);
INSERT INTO `log` VALUES (1130, 'root', 'move', 0, '2020-08-18 12:46:44.647', NULL);
INSERT INTO `log` VALUES (1131, 'root', 'move', 0, '2020-08-18 12:48:04.367', NULL);
INSERT INTO `log` VALUES (1132, 'root', 'move', 0, '2020-08-18 12:48:04.631', NULL);
INSERT INTO `log` VALUES (1133, 'root', 'move', 0, '2020-08-18 12:49:11.53', NULL);
INSERT INTO `log` VALUES (1134, 'root', 'move', 0, '2020-08-18 12:49:12.114', NULL);
INSERT INTO `log` VALUES (1135, 'root', 'room', 0, '2020-08-18 12:52:35.782', NULL);
INSERT INTO `log` VALUES (1136, 'root', 'exits', 0, '2020-08-18 12:52:35.785', NULL);
INSERT INTO `log` VALUES (1137, 'root', 'room', 0, '2020-08-18 12:52:38.134', NULL);
INSERT INTO `log` VALUES (1138, 'root', 'enter', 0, '2020-08-18 12:52:41.27', NULL);
INSERT INTO `log` VALUES (1139, 'root', 'move', 0, '2020-08-18 12:52:44.525', NULL);
INSERT INTO `log` VALUES (1140, 'root', 'enter', 0, '2020-08-18 12:52:47.118', NULL);
INSERT INTO `log` VALUES (1141, 'root', 'enter', 0, '2020-08-18 12:53:08.321', NULL);
INSERT INTO `log` VALUES (1142, 'root', 'enter', 0, '2020-08-18 12:53:09.446', NULL);
INSERT INTO `log` VALUES (1143, 'root', 'enter', 0, '2020-08-18 12:56:57.54', '[4]');
INSERT INTO `log` VALUES (1144, 'root', 'enter', 0, '2020-08-18 12:57:53.243', NULL);
INSERT INTO `log` VALUES (1145, 'root', 'enter', 0, '2020-08-18 12:57:57.637', NULL);
INSERT INTO `log` VALUES (1146, 'root', 'enter', 0, '2020-08-18 12:58:22.69', NULL);
INSERT INTO `log` VALUES (1147, 'root', 'enter', 0, '2020-08-18 12:58:33.543', NULL);
INSERT INTO `log` VALUES (1148, 'root', 'enter', 0, '2020-08-18 12:58:35.311', '[5]');
INSERT INTO `log` VALUES (1149, 'root', 'room', 0, '2020-08-18 13:08:35.493', NULL);
INSERT INTO `log` VALUES (1150, 'root', 'checkin', 0, '2020-08-18 13:08:35.74', NULL);
INSERT INTO `log` VALUES (1151, 'root', 'room', 0, '2020-08-18 13:08:36.054', NULL);
INSERT INTO `log` VALUES (1152, 'root', 'room', 0, '2020-08-18 13:09:26.533', NULL);
INSERT INTO `log` VALUES (1154, 'root', 'room', 0, '2020-08-18 13:09:46.956', NULL);
INSERT INTO `log` VALUES (1155, 'root', 'enter', 0, '2020-08-18 13:09:52.448', NULL);
INSERT INTO `log` VALUES (1156, 'root', 'enter', 0, '2020-08-18 13:09:53.927', NULL);
INSERT INTO `log` VALUES (1157, 'root', 'exits', 0, '2020-08-18 13:09:56.937', NULL);
INSERT INTO `log` VALUES (1158, 'root', 'room', 0, '2020-08-18 13:09:56.962', NULL);
INSERT INTO `log` VALUES (1159, 'root', 'enter', 0, '2020-08-18 13:09:58.71', NULL);
INSERT INTO `log` VALUES (1160, 'root', 'enter', 0, '2020-08-18 13:10:02.59', NULL);
INSERT INTO `log` VALUES (1161, 'root', 'enter', 0, '2020-08-18 13:10:04.809', NULL);
INSERT INTO `log` VALUES (1162, 'root', 'enter', 0, '2020-08-18 13:10:06.004', NULL);
INSERT INTO `log` VALUES (1163, 'root', 'enter', 0, '2020-08-18 13:10:07.803', NULL);
INSERT INTO `log` VALUES (1164, 'root', 'exits', 0, '2020-08-18 13:10:08.928', NULL);
INSERT INTO `log` VALUES (1165, 'root', 'room', 0, '2020-08-18 13:10:08.932', NULL);
INSERT INTO `log` VALUES (1166, 'root', 'enter', 0, '2020-08-18 13:10:12.002', NULL);
INSERT INTO `log` VALUES (1167, 'root', 'enter', 0, '2020-08-18 13:10:15.911', NULL);
INSERT INTO `log` VALUES (1168, 'root', 'enter', 0, '2020-08-18 13:10:17.88', NULL);
INSERT INTO `log` VALUES (1169, 'root', 'enter', 0, '2020-08-18 13:10:19.397', NULL);
INSERT INTO `log` VALUES (1170, 'root', 'enter', 0, '2020-08-18 13:10:19.699', NULL);
INSERT INTO `log` VALUES (1171, 'root', 'exits', 0, '2020-08-18 13:10:20.722', NULL);
INSERT INTO `log` VALUES (1172, 'root', 'room', 0, '2020-08-18 13:10:20.724', NULL);
INSERT INTO `log` VALUES (1173, 'root', 'history', 0, '2020-08-18 13:10:52.99', NULL);
INSERT INTO `log` VALUES (1174, 'root', 'visits', 0, '2020-08-18 13:10:54.805', NULL);
INSERT INTO `log` VALUES (1175, 'root', 'valuables', 0, '2020-08-18 13:10:58.533', NULL);
INSERT INTO `log` VALUES (1176, 'root', 'enter', 0, '2020-08-18 13:17:27.216', NULL);
INSERT INTO `log` VALUES (1177, 'root', 'enter', 0, '2020-08-18 13:17:27.751', NULL);
INSERT INTO `log` VALUES (1178, 'root', 'move', 0, '2020-08-18 13:22:31.757', NULL);
INSERT INTO `log` VALUES (1179, 'root', 'enter', 0, '2020-08-18 13:22:32.437', NULL);
INSERT INTO `log` VALUES (1180, 'root', 'enter', 0, '2020-08-18 13:28:11.428', NULL);
INSERT INTO `log` VALUES (1181, 'root', 'move', 0, '2020-08-18 13:28:17.779', NULL);
INSERT INTO `log` VALUES (1182, 'root', 'move', 0, '2020-08-18 13:30:15.094', NULL);
INSERT INTO `log` VALUES (1183, 'root', 'enter', 0, '2020-08-18 13:32:38.207', NULL);
INSERT INTO `log` VALUES (1184, 'root', 'echart', 0, '2020-08-18 13:35:19.459', NULL);
INSERT INTO `log` VALUES (1185, 'root', 'echart', 0, '2020-08-18 13:35:19.718', NULL);
INSERT INTO `log` VALUES (1186, 'root', 'echart', 0, '2020-08-18 13:35:19.718', NULL);
INSERT INTO `log` VALUES (1187, 'root', 'echart', 0, '2020-08-18 13:35:19.728', NULL);
INSERT INTO `log` VALUES (1188, 'root', 'echart', 0, '2020-08-18 13:35:19.791', NULL);
INSERT INTO `log` VALUES (1189, 'root', 'room', 0, '2020-08-18 13:35:23.569', NULL);
INSERT INTO `log` VALUES (1190, 'root', 'stay', 0, '2020-08-18 13:35:23.591', NULL);
INSERT INTO `log` VALUES (1191, 'root', 'action', 0, '2020-08-18 13:35:29.833', NULL);
INSERT INTO `log` VALUES (1192, 'root', 'valuables', 0, '2020-08-18 13:35:31.11', NULL);
INSERT INTO `log` VALUES (1193, 'root', 'enter', 0, '2020-08-18 13:35:34.51', NULL);
INSERT INTO `log` VALUES (1194, 'root', 'move', 0, '2020-08-18 13:35:34.856', NULL);
INSERT INTO `log` VALUES (1195, 'root', 'echart', 0, '2020-08-18 13:37:27.154', NULL);
INSERT INTO `log` VALUES (1196, 'root', 'echart', 0, '2020-08-18 13:37:27.348', NULL);
INSERT INTO `log` VALUES (1197, 'root', 'echart', 0, '2020-08-18 13:37:27.364', NULL);
INSERT INTO `log` VALUES (1198, 'root', 'echart', 0, '2020-08-18 13:37:27.375', NULL);
INSERT INTO `log` VALUES (1199, 'root', 'echart', 0, '2020-08-18 13:37:27.387', NULL);
INSERT INTO `log` VALUES (1200, 'root', 'enter', 0, '2020-08-18 13:37:29.977', NULL);
INSERT INTO `log` VALUES (1201, 'root', 'move', 0, '2020-08-18 13:37:30.235', NULL);
INSERT INTO `log` VALUES (1202, 'root', 'echart', 0, '2020-08-18 13:44:53.798', NULL);
INSERT INTO `log` VALUES (1203, 'root', 'echart', 0, '2020-08-18 13:44:53.807', NULL);
INSERT INTO `log` VALUES (1204, 'root', 'echart', 0, '2020-08-18 13:44:53.809', NULL);
INSERT INTO `log` VALUES (1205, 'root', 'echart', 0, '2020-08-18 13:44:53.811', NULL);
INSERT INTO `log` VALUES (1206, 'root', 'echart', 0, '2020-08-18 13:44:54.06', NULL);
INSERT INTO `log` VALUES (1207, 'root', 'valuables', 0, '2020-08-18 13:44:56.313', NULL);
INSERT INTO `log` VALUES (1208, 'root', 'move', 0, '2020-08-18 13:45:01.592', NULL);
INSERT INTO `log` VALUES (1209, 'root', 'move', 3, '2020-08-18 13:45:10.293', '[[\"28\"]]');
INSERT INTO `log` VALUES (1210, 'root', 'move', 0, '2020-08-18 13:45:14.227', NULL);
INSERT INTO `log` VALUES (1211, 'root', 'move', 0, '2020-08-18 13:47:09.361', NULL);
INSERT INTO `log` VALUES (1212, 'root', 'move', 0, '2020-08-18 13:47:56.128', NULL);
INSERT INTO `log` VALUES (1213, 'root', 'echart', 0, '2020-08-18 13:48:53.792', NULL);
INSERT INTO `log` VALUES (1214, 'root', 'echart', 0, '2020-08-18 13:48:53.796', NULL);
INSERT INTO `log` VALUES (1215, 'root', 'echart', 0, '2020-08-18 13:48:53.8', NULL);
INSERT INTO `log` VALUES (1216, 'root', 'echart', 0, '2020-08-18 13:48:53.81', NULL);
INSERT INTO `log` VALUES (1217, 'root', 'echart', 0, '2020-08-18 13:48:54.043', NULL);
INSERT INTO `log` VALUES (1218, 'root', 'move', 0, '2020-08-18 13:48:56.298', NULL);
INSERT INTO `log` VALUES (1219, 'root', 'valuables', 0, '2020-08-18 13:49:02.669', NULL);
INSERT INTO `log` VALUES (1220, 'root', 'move', 0, '2020-08-18 13:49:06.971', NULL);
INSERT INTO `log` VALUES (1221, 'root', 'move', 3, '2020-08-18 13:49:11.499', '[[\"27\"]]');
INSERT INTO `log` VALUES (1222, 'root', 'move', 0, '2020-08-18 13:49:11.824', NULL);
INSERT INTO `log` VALUES (1223, 'root', 'valuables', 0, '2020-08-18 13:49:15.454', NULL);
INSERT INTO `log` VALUES (1224, 'root', 'valuables', 3, '2020-08-18 13:49:21.909', '[[\"90\"]]');
INSERT INTO `log` VALUES (1225, 'root', 'valuables', 0, '2020-08-18 13:49:22.25', NULL);
INSERT INTO `log` VALUES (1226, 'root', 'valuables', 0, '2020-08-18 13:52:35.125', NULL);
INSERT INTO `log` VALUES (1227, NULL, 'login', 0, '2020-08-18 13:54:18.94', '{\"t\":[\"1597758857990\"]}');
INSERT INTO `log` VALUES (1228, NULL, 'login', 0, '2020-08-18 13:54:19.522', '{\"t\":[\"1597758857990\"]}');
INSERT INTO `log` VALUES (1229, NULL, 'login', 0, '2020-08-18 13:54:25.619', '{\"t\":[\"1597758865586\"]}');
INSERT INTO `log` VALUES (1230, NULL, 'login', 0, '2020-08-18 13:54:25.64', '{\"t\":[\"1597758865586\"]}');
INSERT INTO `log` VALUES (1231, NULL, 'login', 0, '2020-08-18 13:54:31.491', '{\"t\":[\"1597758871458\"]}');
INSERT INTO `log` VALUES (1232, NULL, 'login', 0, '2020-08-18 13:54:31.507', '{\"t\":[\"1597758871458\"]}');
INSERT INTO `log` VALUES (1233, NULL, 'login', 0, '2020-08-18 13:54:39.768', '{\"t\":[\"1597758879730\"]}');
INSERT INTO `log` VALUES (1234, NULL, 'login', 0, '2020-08-18 13:54:39.784', '{\"t\":[\"1597758879730\"]}');
INSERT INTO `log` VALUES (1235, NULL, 'my', 0, '2020-08-18 13:54:45.311', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1236, 'root', 'echart', 0, '2020-08-18 13:54:45.698', NULL);
INSERT INTO `log` VALUES (1237, 'root', 'echart', 0, '2020-08-18 13:54:45.699', NULL);
INSERT INTO `log` VALUES (1238, 'root', 'echart', 0, '2020-08-18 13:54:45.707', NULL);
INSERT INTO `log` VALUES (1239, 'root', 'echart', 0, '2020-08-18 13:54:45.738', NULL);
INSERT INTO `log` VALUES (1240, 'root', 'echart', 0, '2020-08-18 13:54:45.881', NULL);
INSERT INTO `log` VALUES (1241, 'root', 'valuables', 0, '2020-08-18 13:54:47.419', NULL);
INSERT INTO `log` VALUES (1242, 'root', 'move', 0, '2020-08-18 13:54:51.714', NULL);
INSERT INTO `log` VALUES (1243, 'root', 'move', 3, '2020-08-18 13:54:55.422', '[[\"25\"]]');
INSERT INTO `log` VALUES (1244, 'root', 'move', 0, '2020-08-18 13:54:55.792', NULL);
INSERT INTO `log` VALUES (1245, 'root', 'role', 1, '2020-08-18 13:58:05.657', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (1246, 'root', 'role', 1, '2020-08-18 13:58:06.69', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (1247, 'root', 'role', 1, '2020-08-18 13:58:09.292', '[{\"roleId\":2,\"userId\":1}]');
INSERT INTO `log` VALUES (1248, 'root', 'role', 1, '2020-08-18 13:59:37.033', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (1249, 'root', 'role', 1, '2020-08-18 13:59:40.655', '[{\"roleId\":1,\"userId\":1}]');
INSERT INTO `log` VALUES (1250, NULL, 'my', 0, '2020-08-18 14:06:16.506', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1251, 'root', 'role', 1, '2020-08-18 14:06:16.585', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (1252, 'root', 'move', 0, '2020-08-18 14:06:18.501', NULL);
INSERT INTO `log` VALUES (1253, 'root', 'move', 1, '2020-08-18 14:06:34.969', '{上传文件}');
INSERT INTO `log` VALUES (1254, 'root', 'move', 0, '2020-08-18 14:06:35.331', NULL);
INSERT INTO `log` VALUES (1255, 'root', 'role', 1, '2020-08-18 14:09:14.696', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (1256, 'root', 'role', 1, '2020-08-18 14:09:16.254', '[{\"currentPage\":2,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (1257, 'root', 'role', 1, '2020-08-18 14:09:19.075', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (1258, 'root', 'role', 1, '2020-08-18 14:09:23.51', '[{\"roleId\":9,\"userId\":1}]');
INSERT INTO `log` VALUES (1259, NULL, 'my', 0, '2020-08-18 14:15:30.0', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1260, 'root', 'action', 0, '2020-08-18 14:15:29.994', NULL);
INSERT INTO `log` VALUES (1261, NULL, 'login', 0, '2020-08-18 14:20:01.442', '{\"t\":[\"1597760400404\"]}');
INSERT INTO `log` VALUES (1262, NULL, 'login', 0, '2020-08-18 14:20:02.13', '{\"t\":[\"1597760400404\"]}');
INSERT INTO `log` VALUES (1263, NULL, 'my', 0, '2020-08-18 14:20:16.956', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1264, 'root', 'echart', 0, '2020-08-18 14:20:17.012', NULL);
INSERT INTO `log` VALUES (1265, 'root', 'echart', 0, '2020-08-18 14:20:17.265', NULL);
INSERT INTO `log` VALUES (1266, 'root', 'echart', 0, '2020-08-18 14:20:17.268', NULL);
INSERT INTO `log` VALUES (1267, 'root', 'echart', 0, '2020-08-18 14:20:17.281', NULL);
INSERT INTO `log` VALUES (1268, 'root', 'echart', 0, '2020-08-18 14:20:17.372', NULL);
INSERT INTO `log` VALUES (1269, 'root', 'action', 0, '2020-08-18 14:20:21.611', NULL);
INSERT INTO `log` VALUES (1270, 'root', 'action', 3, '2020-08-18 14:20:31.053', '[[\"31\"]]');
INSERT INTO `log` VALUES (1271, 'root', 'action', 0, '2020-08-18 14:20:31.278', NULL);
INSERT INTO `log` VALUES (1272, 'root', 'valuables', 0, '2020-08-18 14:20:40.711', NULL);
INSERT INTO `log` VALUES (1273, 'root', 'enter', 0, '2020-08-18 14:20:45.255', NULL);
INSERT INTO `log` VALUES (1274, 'root', 'enter', 0, '2020-08-18 14:20:47.293', '{\"enterId\":[\"2\"]}');
INSERT INTO `log` VALUES (1275, 'root', 'move', 0, '2020-08-18 14:20:50.059', NULL);
INSERT INTO `log` VALUES (1276, 'root', 'move', 0, '2020-08-18 14:20:51.294', '{\"moveId\":[\"4\"]}');
INSERT INTO `log` VALUES (1277, 'root', 'move', 0, '2020-08-18 14:22:15.423', '{\"moveId\":[\"4\"]}');
INSERT INTO `log` VALUES (1278, NULL, 'my', 0, '2020-08-18 14:22:21.098', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1279, 'root', 'move', 0, '2020-08-18 14:22:21.201', NULL);
INSERT INTO `log` VALUES (1280, 'root', 'move', 0, '2020-08-18 14:22:23.03', '{\"moveId\":[\"1\"]}');
INSERT INTO `log` VALUES (1281, 'root', 'enter', 0, '2020-08-18 14:22:42.233', NULL);
INSERT INTO `log` VALUES (1282, 'root', 'move', 0, '2020-08-18 14:22:42.774', NULL);
INSERT INTO `log` VALUES (1283, 'root', 'move', 0, '2020-08-18 14:22:46.576', '{\"moveId\":[\"4\"]}');
INSERT INTO `log` VALUES (1284, NULL, 'login', 0, '2020-08-18 14:25:38.467', '{\"t\":[\"1597760737526\"]}');
INSERT INTO `log` VALUES (1285, NULL, 'login', 0, '2020-08-18 14:25:39.052', '{\"t\":[\"1597760737526\"]}');
INSERT INTO `log` VALUES (1286, NULL, 'my', 0, '2020-08-18 14:25:50.549', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1287, 'root', 'echart', 0, '2020-08-18 14:25:50.598', NULL);
INSERT INTO `log` VALUES (1288, 'root', 'echart', 0, '2020-08-18 14:25:50.85', NULL);
INSERT INTO `log` VALUES (1289, 'root', 'echart', 0, '2020-08-18 14:25:50.856', NULL);
INSERT INTO `log` VALUES (1290, 'root', 'echart', 0, '2020-08-18 14:25:50.869', NULL);
INSERT INTO `log` VALUES (1291, 'root', 'echart', 0, '2020-08-18 14:25:50.997', NULL);
INSERT INTO `log` VALUES (1292, 'root', 'action', 0, '2020-08-18 14:25:54.189', NULL);
INSERT INTO `log` VALUES (1293, 'root', 'action', 3, '2020-08-18 14:26:01.96', '{\"actId\":[\"29\"]}');
INSERT INTO `log` VALUES (1294, 'root', 'action', 0, '2020-08-18 14:26:02.193', NULL);
INSERT INTO `log` VALUES (1295, 'root', 'repair', 0, '2020-08-18 14:28:01.931', NULL);
INSERT INTO `log` VALUES (1296, 'root', 'room', 0, '2020-08-18 14:28:01.935', NULL);
INSERT INTO `log` VALUES (1297, 'root', 'action', 0, '2020-08-18 14:28:02.284', NULL);
INSERT INTO `log` VALUES (1298, 'root', 'enter', 0, '2020-08-18 14:28:13.529', NULL);
INSERT INTO `log` VALUES (1299, 'root', 'action', 0, '2020-08-18 14:28:16.881', NULL);
INSERT INTO `log` VALUES (1300, 'root', 'action', 3, '2020-08-18 14:28:24.503', '{\"actId\":[\"32\"]}');
INSERT INTO `log` VALUES (1301, 'root', 'action', 0, '2020-08-18 14:28:24.743', NULL);
INSERT INTO `log` VALUES (1302, 'root', 'room', 0, '2020-08-18 14:28:34.1', NULL);
INSERT INTO `log` VALUES (1303, 'root', 'checkin', 0, '2020-08-18 14:28:34.104', NULL);
INSERT INTO `log` VALUES (1304, 'root', 'room', 0, '2020-08-18 14:28:35.14', NULL);
INSERT INTO `log` VALUES (1305, 'root', 'enter', 0, '2020-08-18 14:28:36.389', NULL);
INSERT INTO `log` VALUES (1306, 'root', 'move', 0, '2020-08-18 14:28:37.153', NULL);
INSERT INTO `log` VALUES (1307, 'root', 'move', 0, '2020-08-18 14:32:00.565', NULL);
INSERT INTO `log` VALUES (1308, 'root', 'move', 1, '2020-08-18 14:32:50.554', '{上传文件}');
INSERT INTO `log` VALUES (1309, 'root', 'move', 0, '2020-08-18 14:32:50.776', NULL);
INSERT INTO `log` VALUES (1310, 'root', 'move', 0, '2020-08-18 14:32:51.617', '{\"moveStuNo\":[\"\"]}');
INSERT INTO `log` VALUES (1311, 'root', 'move', 1, '2020-08-18 14:32:58.242', '{上传文件}');
INSERT INTO `log` VALUES (1312, 'root', 'move', 0, '2020-08-18 14:32:58.463', NULL);
INSERT INTO `log` VALUES (1313, NULL, 'my', 0, '2020-08-18 14:37:18.089', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1314, 'root', 'move', 0, '2020-08-18 14:37:18.181', NULL);
INSERT INTO `log` VALUES (1315, 'root', 'action', 0, '2020-08-18 14:37:23.361', NULL);
INSERT INTO `log` VALUES (1316, 'root', 'valuables', 0, '2020-08-18 14:37:26.671', NULL);
INSERT INTO `log` VALUES (1317, 'root', 'action', 0, '2020-08-18 14:37:38.656', NULL);
INSERT INTO `log` VALUES (1318, 'root', 'move', 0, '2020-08-18 14:37:42.647', NULL);
INSERT INTO `log` VALUES (1319, 'root', 'move', 0, '2020-08-18 14:39:34.531', NULL);
INSERT INTO `log` VALUES (1320, NULL, 'my', 0, '2020-08-18 14:39:34.534', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1321, 'root', 'valuables', 0, '2020-08-18 14:39:36.771', NULL);
INSERT INTO `log` VALUES (1322, 'root', 'valuables', 0, '2020-08-18 14:39:51.699', NULL);
INSERT INTO `log` VALUES (1323, NULL, 'login', 0, '2020-08-18 14:40:45.986', '{\"t\":[\"1597761645858\"]}');
INSERT INTO `log` VALUES (1324, NULL, 'login', 0, '2020-08-18 14:40:46.124', '{\"t\":[\"1597761645858\"]}');
INSERT INTO `log` VALUES (1325, NULL, 'login', 0, '2020-08-18 14:41:00.485', '{\"t\":[\"1597761660462\"]}');
INSERT INTO `log` VALUES (1326, NULL, 'login', 0, '2020-08-18 14:41:00.501', '{\"t\":[\"1597761660462\"]}');
INSERT INTO `log` VALUES (1327, NULL, 'my', 0, '2020-08-18 14:41:05.752', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1328, 'root', 'echart', 0, '2020-08-18 14:41:05.883', NULL);
INSERT INTO `log` VALUES (1329, 'root', 'echart', 0, '2020-08-18 14:41:06.071', NULL);
INSERT INTO `log` VALUES (1330, 'root', 'echart', 0, '2020-08-18 14:41:06.088', NULL);
INSERT INTO `log` VALUES (1331, 'root', 'echart', 0, '2020-08-18 14:41:06.09', NULL);
INSERT INTO `log` VALUES (1332, 'root', 'echart', 0, '2020-08-18 14:41:06.114', NULL);
INSERT INTO `log` VALUES (1333, 'root', 'valuables', 0, '2020-08-18 14:41:08.322', NULL);
INSERT INTO `log` VALUES (1334, 'root', 'move', 0, '2020-08-18 14:41:15.259', NULL);
INSERT INTO `log` VALUES (1335, 'root', 'valuables', 0, '2020-08-18 14:43:34.103', NULL);
INSERT INTO `log` VALUES (1336, 'root', 'action', 0, '2020-08-18 14:43:35.688', NULL);
INSERT INTO `log` VALUES (1337, 'root', 'statistics', 0, '2020-08-18 14:43:38.994', NULL);
INSERT INTO `log` VALUES (1338, 'root', 'statistics', 0, '2020-08-18 14:43:39.309', NULL);
INSERT INTO `log` VALUES (1339, 'root', 'statistics', 0, '2020-08-18 14:43:39.313', NULL);
INSERT INTO `log` VALUES (1340, 'root', 'statistics', 0, '2020-08-18 14:43:39.327', NULL);
INSERT INTO `log` VALUES (1341, 'root', 'statistics', 0, '2020-08-18 14:43:39.34', NULL);
INSERT INTO `log` VALUES (1342, 'root', 'statistics', 0, '2020-08-18 14:43:39.348', NULL);
INSERT INTO `log` VALUES (1343, 'root', 'statistics', 0, '2020-08-18 14:43:39.371', NULL);
INSERT INTO `log` VALUES (1344, 'root', 'statistics', 0, '2020-08-18 14:43:39.666', NULL);
INSERT INTO `log` VALUES (1345, 'root', 'statistics', 0, '2020-08-18 14:43:39.668', NULL);
INSERT INTO `log` VALUES (1346, 'root', 'user', 0, '2020-08-18 14:43:52.234', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1347, NULL, 'my', 0, '2020-08-18 14:44:56.923', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1348, 'root', 'user', 0, '2020-08-18 14:44:57.03', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1349, 'root', 'room', 0, '2020-08-18 14:45:02.885', NULL);
INSERT INTO `log` VALUES (1350, 'root', 'exits', 0, '2020-08-18 14:45:02.901', NULL);
INSERT INTO `log` VALUES (1351, 'root', 'action', 0, '2020-08-18 14:45:04.777', NULL);
INSERT INTO `log` VALUES (1352, 'root', 'move', 0, '2020-08-18 14:45:10.882', NULL);
INSERT INTO `log` VALUES (1353, 'root', 'enter', 0, '2020-08-18 14:46:45.644', NULL);
INSERT INTO `log` VALUES (1354, 'root', 'move', 0, '2020-08-18 14:46:46.491', NULL);
INSERT INTO `log` VALUES (1355, NULL, 'my', 0, '2020-08-18 14:48:02.422', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1356, 'root', 'move', 0, '2020-08-18 14:48:02.511', NULL);
INSERT INTO `log` VALUES (1357, 'root', 'room', 0, '2020-08-18 14:48:19.072', NULL);
INSERT INTO `log` VALUES (1358, 'root', 'checkin', 0, '2020-08-18 14:48:19.085', NULL);
INSERT INTO `log` VALUES (1359, 'root', 'enter', 0, '2020-08-18 14:48:35.362', NULL);
INSERT INTO `log` VALUES (1360, 'root', 'move', 0, '2020-08-18 14:48:35.677', NULL);
INSERT INTO `log` VALUES (1361, 'root', 'move', 0, '2020-08-18 14:51:41.416', NULL);
INSERT INTO `log` VALUES (1362, 'root', 'enter', 0, '2020-08-18 14:51:43.004', NULL);
INSERT INTO `log` VALUES (1363, 'root', 'move', 0, '2020-08-18 14:51:43.952', NULL);
INSERT INTO `log` VALUES (1364, 'root', 'move', 0, '2020-08-18 14:55:02.303', NULL);
INSERT INTO `log` VALUES (1365, 'root', 'move', 0, '2020-08-18 14:55:48.75', NULL);
INSERT INTO `log` VALUES (1366, NULL, 'my', 0, '2020-08-18 14:55:49.931', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1367, 'root', 'move', 0, '2020-08-18 14:55:50.048', NULL);
INSERT INTO `log` VALUES (1368, 'root', 'move', 0, '2020-08-18 14:57:12.383', NULL);
INSERT INTO `log` VALUES (1369, 'root', 'move', 0, '2020-08-18 14:58:37.593', NULL);
INSERT INTO `log` VALUES (1370, 'root', 'move', 0, '2020-08-18 15:02:08.119', NULL);
INSERT INTO `log` VALUES (1371, 'root', 'move', 0, '2020-08-18 15:02:17.214', NULL);
INSERT INTO `log` VALUES (1372, 'root', 'enter', 0, '2020-08-18 15:02:27.602', NULL);
INSERT INTO `log` VALUES (1373, 'root', 'move', 0, '2020-08-18 15:02:27.767', NULL);
INSERT INTO `log` VALUES (1374, 'root', 'move', 0, '2020-08-18 15:03:16.496', NULL);
INSERT INTO `log` VALUES (1375, 'root', 'move', 0, '2020-08-18 15:03:16.523', NULL);
INSERT INTO `log` VALUES (1376, 'root', 'enter', 0, '2020-08-18 15:03:18.722', NULL);
INSERT INTO `log` VALUES (1377, 'root', 'move', 0, '2020-08-18 15:03:19.568', NULL);
INSERT INTO `log` VALUES (1378, 'root', 'move', 0, '2020-08-18 15:03:21.821', NULL);
INSERT INTO `log` VALUES (1379, NULL, 'my', 0, '2020-08-18 15:03:21.828', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1380, 'root', 'move', 0, '2020-08-18 15:03:34.624', NULL);
INSERT INTO `log` VALUES (1381, 'root', 'move', 0, '2020-08-18 15:03:34.684', NULL);
INSERT INTO `log` VALUES (1382, NULL, 'my', 0, '2020-08-18 15:03:36.546', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1383, 'root', 'move', 0, '2020-08-18 15:03:36.631', NULL);
INSERT INTO `log` VALUES (1384, 'root', 'enter', 0, '2020-08-18 15:03:38.24', NULL);
INSERT INTO `log` VALUES (1385, 'root', 'move', 0, '2020-08-18 15:03:38.805', NULL);
INSERT INTO `log` VALUES (1386, NULL, 'login', 0, '2020-08-18 15:19:21.034', '{\"t\":[\"1597763960758\"]}');
INSERT INTO `log` VALUES (1387, NULL, 'login', 0, '2020-08-18 15:19:21.481', '{\"t\":[\"1597763960758\"]}');
INSERT INTO `log` VALUES (1388, NULL, 'my', 0, '2020-08-18 15:19:40.359', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1389, 'root', 'echart', 0, '2020-08-18 15:19:40.426', NULL);
INSERT INTO `log` VALUES (1390, 'root', 'echart', 0, '2020-08-18 15:19:40.677', NULL);
INSERT INTO `log` VALUES (1391, 'root', 'echart', 0, '2020-08-18 15:19:40.677', NULL);
INSERT INTO `log` VALUES (1392, 'root', 'echart', 0, '2020-08-18 15:19:40.723', NULL);
INSERT INTO `log` VALUES (1393, 'root', 'echart', 0, '2020-08-18 15:19:40.788', NULL);
INSERT INTO `log` VALUES (1394, 'root', 'room', 0, '2020-08-18 15:19:43.473', NULL);
INSERT INTO `log` VALUES (1395, 'root', 'checkin', 0, '2020-08-18 15:19:43.498', NULL);
INSERT INTO `log` VALUES (1396, 'root', 'enter', 0, '2020-08-18 15:19:47.411', NULL);
INSERT INTO `log` VALUES (1397, 'root', 'move', 0, '2020-08-18 15:19:47.669', NULL);
INSERT INTO `log` VALUES (1398, 'root', 'move', 0, '2020-08-18 15:20:14.714', NULL);
INSERT INTO `log` VALUES (1399, 'root', 'move', 0, '2020-08-18 15:21:51.154', NULL);
INSERT INTO `log` VALUES (1400, 'root', 'move', 0, '2020-08-18 15:22:43.064', NULL);
INSERT INTO `log` VALUES (1401, NULL, 'my', 0, '2020-08-18 15:22:43.089', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1402, 'root', 'action', 0, '2020-08-18 15:22:59.33', NULL);
INSERT INTO `log` VALUES (1403, 'root', 'valuables', 0, '2020-08-18 15:23:03.943', NULL);
INSERT INTO `log` VALUES (1404, 'root', 'move', 0, '2020-08-18 15:23:23.214', NULL);
INSERT INTO `log` VALUES (1405, 'root', 'enter', 0, '2020-08-18 15:23:28.669', NULL);
INSERT INTO `log` VALUES (1406, 'root', 'move', 0, '2020-08-18 15:23:29.618', NULL);
INSERT INTO `log` VALUES (1407, 'root', 'exits', 0, '2020-08-18 15:23:31.193', NULL);
INSERT INTO `log` VALUES (1408, 'root', 'room', 0, '2020-08-18 15:23:31.501', NULL);
INSERT INTO `log` VALUES (1409, 'root', 'move', 0, '2020-08-18 15:23:32.464', NULL);
INSERT INTO `log` VALUES (1410, 'root', 'exits', 0, '2020-08-18 15:23:32.712', NULL);
INSERT INTO `log` VALUES (1411, 'root', 'room', 0, '2020-08-18 15:23:33.05', NULL);
INSERT INTO `log` VALUES (1412, 'root', 'valuables', 0, '2020-08-18 15:23:35.048', NULL);
INSERT INTO `log` VALUES (1413, 'root', 'action', 0, '2020-08-18 15:23:43.044', NULL);
INSERT INTO `log` VALUES (1414, 'root', 'repair', 0, '2020-08-18 15:24:13.499', NULL);
INSERT INTO `log` VALUES (1415, 'root', 'room', 0, '2020-08-18 15:24:13.733', NULL);
INSERT INTO `log` VALUES (1416, 'root', 'action', 0, '2020-08-18 15:24:15.271', NULL);
INSERT INTO `log` VALUES (1417, 'root', 'repair', 0, '2020-08-18 15:24:17.333', NULL);
INSERT INTO `log` VALUES (1418, 'root', 'room', 0, '2020-08-18 15:24:17.342', NULL);
INSERT INTO `log` VALUES (1419, 'root', 'action', 0, '2020-08-18 15:24:18.108', NULL);
INSERT INTO `log` VALUES (1420, 'root', 'valuables', 0, '2020-08-18 15:24:28.086', NULL);
INSERT INTO `log` VALUES (1421, 'root', 'move', 0, '2020-08-18 15:24:54.683', NULL);
INSERT INTO `log` VALUES (1422, 'root', 'valuables', 0, '2020-08-18 15:24:57.404', NULL);
INSERT INTO `log` VALUES (1423, NULL, 'my', 0, '2020-08-18 15:24:57.407', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1424, 'root', 'move', 0, '2020-08-18 15:25:02.227', NULL);
INSERT INTO `log` VALUES (1425, 'root', 'move', 0, '2020-08-18 15:28:14.231', NULL);
INSERT INTO `log` VALUES (1426, 'root', 'move', 0, '2020-08-18 15:28:14.242', NULL);
INSERT INTO `log` VALUES (1427, 'root', 'enter', 0, '2020-08-18 15:28:18.857', NULL);
INSERT INTO `log` VALUES (1428, 'root', 'move', 0, '2020-08-18 15:28:19.794', NULL);
INSERT INTO `log` VALUES (1429, 'root', 'enter', 0, '2020-08-18 15:28:21.57', NULL);
INSERT INTO `log` VALUES (1430, 'root', 'room', 0, '2020-08-18 15:28:25.466', NULL);
INSERT INTO `log` VALUES (1431, 'root', 'checkin', 0, '2020-08-18 15:28:25.743', NULL);
INSERT INTO `log` VALUES (1432, 'root', 'room', 0, '2020-08-18 15:28:25.937', NULL);
INSERT INTO `log` VALUES (1433, 'root', 'room', 0, '2020-08-18 15:28:46.989', NULL);
INSERT INTO `log` VALUES (1434, 'root', 'checkin', 0, '2020-08-18 15:28:47.719', NULL);
INSERT INTO `log` VALUES (1435, 'root', 'room', 0, '2020-08-18 15:28:48.019', NULL);
INSERT INTO `log` VALUES (1436, 'root', 'move', 0, '2020-08-18 15:28:51.621', NULL);
INSERT INTO `log` VALUES (1437, 'root', 'enter', 0, '2020-08-18 15:28:53.935', NULL);
INSERT INTO `log` VALUES (1438, 'root', 'move', 0, '2020-08-18 15:28:56.045', NULL);
INSERT INTO `log` VALUES (1439, 'root', 'enter', 0, '2020-08-18 15:28:58.013', NULL);
INSERT INTO `log` VALUES (1440, 'root', 'move', 0, '2020-08-18 15:29:00.417', NULL);
INSERT INTO `log` VALUES (1441, 'root', 'enter', 0, '2020-08-18 15:29:01.46', NULL);
INSERT INTO `log` VALUES (1442, 'root', 'move', 0, '2020-08-18 15:29:26.646', NULL);
INSERT INTO `log` VALUES (1443, 'root', 'enter', 0, '2020-08-18 15:30:19.749', NULL);
INSERT INTO `log` VALUES (1444, 'root', 'move', 0, '2020-08-18 15:30:20.38', NULL);
INSERT INTO `log` VALUES (1445, 'root', 'exits', 0, '2020-08-18 15:30:24.27', NULL);
INSERT INTO `log` VALUES (1446, 'root', 'room', 0, '2020-08-18 15:30:24.58', NULL);
INSERT INTO `log` VALUES (1447, 'root', 'enter', 0, '2020-08-18 15:30:28.537', NULL);
INSERT INTO `log` VALUES (1448, 'root', 'move', 0, '2020-08-18 15:30:29.19', NULL);
INSERT INTO `log` VALUES (1449, 'root', 'move', 0, '2020-08-18 15:30:31.6', '{\"moveStuNo\":[\"\"]}');
INSERT INTO `log` VALUES (1450, 'root', 'move', 0, '2020-08-18 15:31:44.063', NULL);
INSERT INTO `log` VALUES (1451, 'root', 'move', 0, '2020-08-18 15:31:44.165', NULL);
INSERT INTO `log` VALUES (1452, NULL, 'my', 0, '2020-08-18 15:33:01.807', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1453, 'root', 'move', 0, '2020-08-18 15:33:01.902', NULL);
INSERT INTO `log` VALUES (1454, 'root', 'valuables', 0, '2020-08-18 15:33:07.068', NULL);
INSERT INTO `log` VALUES (1455, 'root', 'action', 0, '2020-08-18 15:33:18.819', NULL);
INSERT INTO `log` VALUES (1456, 'root', 'room', 0, '2020-08-18 15:34:31.562', NULL);
INSERT INTO `log` VALUES (1457, 'root', 'stay', 0, '2020-08-18 15:34:31.597', NULL);
INSERT INTO `log` VALUES (1458, 'root', 'action', 0, '2020-08-18 15:34:32.386', NULL);
INSERT INTO `log` VALUES (1459, NULL, 'my', 0, '2020-08-18 15:34:42.18', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1460, 'root', 'action', 0, '2020-08-18 15:34:42.181', NULL);
INSERT INTO `log` VALUES (1461, 'root', 'move', 0, '2020-08-18 15:34:46.714', NULL);
INSERT INTO `log` VALUES (1462, NULL, 'my', 0, '2020-08-18 15:40:08.04', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1463, 'root', 'move', 0, '2020-08-18 15:40:08.04', NULL);
INSERT INTO `log` VALUES (1464, 'root', 'enter', 0, '2020-08-18 15:40:09.571', NULL);
INSERT INTO `log` VALUES (1465, 'root', 'move', 0, '2020-08-18 15:40:10.444', NULL);
INSERT INTO `log` VALUES (1466, 'root', 'move', 0, '2020-08-18 15:42:15.525', NULL);
INSERT INTO `log` VALUES (1467, 'root', 'move', 0, '2020-08-18 15:42:33.855', NULL);
INSERT INTO `log` VALUES (1468, NULL, 'my', 0, '2020-08-18 15:42:33.853', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1469, NULL, 'my', 0, '2020-08-18 15:42:47.954', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1470, 'root', 'move', 0, '2020-08-18 15:42:48.042', NULL);
INSERT INTO `log` VALUES (1471, NULL, 'login', 0, '2020-08-18 15:43:12.157', '{\"t\":[\"1597765392075\"]}');
INSERT INTO `log` VALUES (1472, NULL, 'login', 0, '2020-08-18 15:43:12.315', '{\"t\":[\"1597765392075\"]}');
INSERT INTO `log` VALUES (1473, NULL, 'my', 0, '2020-08-18 15:43:22.211', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1474, 'root', 'echart', 0, '2020-08-18 15:43:22.356', NULL);
INSERT INTO `log` VALUES (1475, 'root', 'echart', 0, '2020-08-18 15:43:22.526', NULL);
INSERT INTO `log` VALUES (1476, 'root', 'echart', 0, '2020-08-18 15:43:22.547', NULL);
INSERT INTO `log` VALUES (1477, 'root', 'echart', 0, '2020-08-18 15:43:22.558', NULL);
INSERT INTO `log` VALUES (1478, 'root', 'echart', 0, '2020-08-18 15:43:22.56', NULL);
INSERT INTO `log` VALUES (1479, 'root', 'move', 0, '2020-08-18 15:43:24.541', NULL);
INSERT INTO `log` VALUES (1480, NULL, 'login', 0, '2020-08-18 15:44:46.669', '{\"t\":[\"1597765486619\"]}');
INSERT INTO `log` VALUES (1481, NULL, 'login', 0, '2020-08-18 15:44:46.818', '{\"t\":[\"1597765486619\"]}');
INSERT INTO `log` VALUES (1482, NULL, 'login', 0, '2020-08-18 15:44:54.231', '{\"t\":[\"1597765494210\"]}');
INSERT INTO `log` VALUES (1483, NULL, 'login', 0, '2020-08-18 15:44:54.247', '{\"t\":[\"1597765494210\"]}');
INSERT INTO `log` VALUES (1484, NULL, 'login', 0, '2020-08-18 15:44:55.179', '{\"t\":[\"1597765495154\"]}');
INSERT INTO `log` VALUES (1485, NULL, 'login', 0, '2020-08-18 15:44:55.197', '{\"t\":[\"1597765495154\"]}');
INSERT INTO `log` VALUES (1486, NULL, 'login', 0, '2020-08-18 15:45:02.824', '{\"t\":[\"1597765502801\"]}');
INSERT INTO `log` VALUES (1487, NULL, 'login', 0, '2020-08-18 15:45:02.837', '{\"t\":[\"1597765502801\"]}');
INSERT INTO `log` VALUES (1488, NULL, 'my', 0, '2020-08-18 15:45:09.725', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1489, 'root', 'echart', 0, '2020-08-18 15:45:10.058', NULL);
INSERT INTO `log` VALUES (1490, 'root', 'echart', 0, '2020-08-18 15:45:10.075', NULL);
INSERT INTO `log` VALUES (1491, 'root', 'echart', 0, '2020-08-18 15:45:10.079', NULL);
INSERT INTO `log` VALUES (1492, 'root', 'echart', 0, '2020-08-18 15:45:10.091', NULL);
INSERT INTO `log` VALUES (1493, 'root', 'echart', 0, '2020-08-18 15:45:10.307', NULL);
INSERT INTO `log` VALUES (1494, 'root', 'move', 0, '2020-08-18 15:45:12.45', NULL);
INSERT INTO `log` VALUES (1495, NULL, 'login', 0, '2020-08-18 15:45:43.967', '{\"t\":[\"1597765543921\"]}');
INSERT INTO `log` VALUES (1496, NULL, 'login', 0, '2020-08-18 15:45:44.005', '{\"t\":[\"1597765543921\"]}');
INSERT INTO `log` VALUES (1497, NULL, 'my', 0, '2020-08-18 15:45:54.239', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1498, 'root', 'echart', 0, '2020-08-18 15:45:54.367', NULL);
INSERT INTO `log` VALUES (1499, 'root', 'echart', 0, '2020-08-18 15:45:54.553', NULL);
INSERT INTO `log` VALUES (1500, 'root', 'echart', 0, '2020-08-18 15:45:54.573', NULL);
INSERT INTO `log` VALUES (1501, 'root', 'echart', 0, '2020-08-18 15:45:54.577', NULL);
INSERT INTO `log` VALUES (1502, 'root', 'echart', 0, '2020-08-18 15:45:54.59', NULL);
INSERT INTO `log` VALUES (1503, 'root', 'move', 0, '2020-08-18 15:45:56.283', NULL);
INSERT INTO `log` VALUES (1504, NULL, 'login', 0, '2020-08-18 15:46:44.87', '{\"t\":[\"1597765604824\"]}');
INSERT INTO `log` VALUES (1505, NULL, 'login', 0, '2020-08-18 15:46:44.999', '{\"t\":[\"1597765604824\"]}');
INSERT INTO `log` VALUES (1506, NULL, 'my', 0, '2020-08-18 15:46:55.419', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1507, 'root', 'echart', 0, '2020-08-18 15:46:55.719', NULL);
INSERT INTO `log` VALUES (1508, 'root', 'echart', 0, '2020-08-18 15:46:55.75', NULL);
INSERT INTO `log` VALUES (1509, 'root', 'echart', 0, '2020-08-18 15:46:55.757', NULL);
INSERT INTO `log` VALUES (1510, 'root', 'echart', 0, '2020-08-18 15:46:55.768', NULL);
INSERT INTO `log` VALUES (1511, 'root', 'echart', 0, '2020-08-18 15:46:56.001', NULL);
INSERT INTO `log` VALUES (1512, 'root', 'enter', 0, '2020-08-18 15:46:58.087', NULL);
INSERT INTO `log` VALUES (1513, 'root', 'move', 0, '2020-08-18 15:46:58.425', NULL);
INSERT INTO `log` VALUES (1514, NULL, 'login', 0, '2020-08-18 15:51:00.703', '{\"t\":[\"1597765860653\"]}');
INSERT INTO `log` VALUES (1515, NULL, 'login', 0, '2020-08-18 15:51:00.858', '{\"t\":[\"1597765860653\"]}');
INSERT INTO `log` VALUES (1516, NULL, 'my', 0, '2020-08-18 15:51:14.424', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1517, 'root', 'echart', 0, '2020-08-18 15:51:14.609', NULL);
INSERT INTO `log` VALUES (1518, 'root', 'echart', 0, '2020-08-18 15:51:14.761', NULL);
INSERT INTO `log` VALUES (1519, 'root', 'echart', 0, '2020-08-18 15:51:14.777', NULL);
INSERT INTO `log` VALUES (1520, 'root', 'echart', 0, '2020-08-18 15:51:14.78', NULL);
INSERT INTO `log` VALUES (1521, 'root', 'echart', 0, '2020-08-18 15:51:14.801', NULL);
INSERT INTO `log` VALUES (1522, 'root', 'move', 0, '2020-08-18 15:51:17.595', NULL);
INSERT INTO `log` VALUES (1523, NULL, 'my', 0, '2020-08-18 15:51:30.563', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1524, 'root', 'move', 0, '2020-08-18 15:51:30.671', NULL);
INSERT INTO `log` VALUES (1525, 'root', 'move', 0, '2020-08-18 15:51:56.423', NULL);
INSERT INTO `log` VALUES (1526, NULL, 'my', 0, '2020-08-18 15:52:25.71', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1527, 'root', 'move', 0, '2020-08-18 15:52:25.817', NULL);
INSERT INTO `log` VALUES (1528, NULL, 'my', 0, '2020-08-18 15:54:00.164', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1529, 'root', 'move', 0, '2020-08-18 15:54:00.218', NULL);
INSERT INTO `log` VALUES (1530, 'root', 'move', 0, '2020-08-18 15:54:59.044', NULL);
INSERT INTO `log` VALUES (1531, NULL, 'my', 0, '2020-08-18 15:55:01.173', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1532, 'root', 'move', 0, '2020-08-18 15:55:01.317', NULL);
INSERT INTO `log` VALUES (1533, 'root', 'move', 0, '2020-08-18 15:55:48.752', NULL);
INSERT INTO `log` VALUES (1534, NULL, 'my', 0, '2020-08-18 15:55:50.655', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1535, 'root', 'move', 0, '2020-08-18 15:55:50.864', NULL);
INSERT INTO `log` VALUES (1536, 'root', 'move', 0, '2020-08-18 15:56:44.653', NULL);
INSERT INTO `log` VALUES (1537, NULL, 'my', 0, '2020-08-18 15:56:45.535', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1538, 'root', 'move', 0, '2020-08-18 15:56:45.691', NULL);
INSERT INTO `log` VALUES (1539, 'root', 'move', 0, '2020-08-18 16:03:17.557', NULL);
INSERT INTO `log` VALUES (1540, 'root', 'move', 0, '2020-08-18 16:04:00.528', NULL);
INSERT INTO `log` VALUES (1541, 'root', 'move', 0, '2020-08-18 16:22:43.302', NULL);
INSERT INTO `log` VALUES (1542, NULL, 'my', 0, '2020-08-18 16:23:25.821', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1543, 'root', 'move', 0, '2020-08-18 16:23:25.89', NULL);
INSERT INTO `log` VALUES (1544, 'root', 'move', 0, '2020-08-18 16:24:46.453', NULL);
INSERT INTO `log` VALUES (1545, NULL, 'my', 0, '2020-08-18 16:24:50.165', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1546, 'root', 'move', 0, '2020-08-18 16:24:50.568', NULL);
INSERT INTO `log` VALUES (1547, 'root', 'move', 1, '2020-08-18 16:25:01.347', '{上传文件}');
INSERT INTO `log` VALUES (1548, 'root', 'move', 0, '2020-08-18 16:25:01.54', NULL);
INSERT INTO `log` VALUES (1549, 'root', 'room', 0, '2020-08-18 16:25:12.282', NULL);
INSERT INTO `log` VALUES (1550, 'root', 'exits', 0, '2020-08-18 16:25:12.286', NULL);
INSERT INTO `log` VALUES (1551, 'root', 'move', 0, '2020-08-18 16:25:15.813', NULL);
INSERT INTO `log` VALUES (1552, 'root', 'move', 1, '2020-08-18 16:25:27.467', '{上传文件}');
INSERT INTO `log` VALUES (1553, 'root', 'move', 0, '2020-08-18 16:25:27.682', NULL);
INSERT INTO `log` VALUES (1554, 'root', 'move', 0, '2020-08-18 16:25:59.909', NULL);
INSERT INTO `log` VALUES (1555, NULL, 'my', 0, '2020-08-18 16:26:07.841', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1556, 'root', 'move', 0, '2020-08-18 16:26:07.945', NULL);
INSERT INTO `log` VALUES (1557, 'root', 'enter', 0, '2020-08-18 16:26:10.984', NULL);
INSERT INTO `log` VALUES (1558, 'root', 'move', 0, '2020-08-18 16:26:11.319', NULL);
INSERT INTO `log` VALUES (1559, NULL, 'my', 0, '2020-08-18 16:27:06.739', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1560, 'root', 'move', 0, '2020-08-18 16:27:06.898', NULL);
INSERT INTO `log` VALUES (1561, NULL, 'login', 0, '2020-08-18 16:27:25.137', '{\"t\":[\"1597768044590\"]}');
INSERT INTO `log` VALUES (1562, NULL, 'login', 0, '2020-08-18 16:27:25.156', '{\"t\":[\"1597768044590\"]}');
INSERT INTO `log` VALUES (1563, NULL, 'my', 0, '2020-08-18 16:27:36.509', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1564, 'root', 'echart', 0, '2020-08-18 16:27:36.598', NULL);
INSERT INTO `log` VALUES (1565, 'root', 'echart', 0, '2020-08-18 16:27:36.835', NULL);
INSERT INTO `log` VALUES (1566, 'root', 'echart', 0, '2020-08-18 16:27:36.848', NULL);
INSERT INTO `log` VALUES (1567, 'root', 'echart', 0, '2020-08-18 16:27:36.857', NULL);
INSERT INTO `log` VALUES (1568, 'root', 'echart', 0, '2020-08-18 16:27:36.86', NULL);
INSERT INTO `log` VALUES (1569, 'root', 'move', 0, '2020-08-18 16:27:38.926', NULL);
INSERT INTO `log` VALUES (1570, 'root', 'move', 0, '2020-08-18 16:30:01.123', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1571, 'root', 'enter', 0, '2020-08-18 16:30:16.498', NULL);
INSERT INTO `log` VALUES (1572, 'root', 'move', 0, '2020-08-18 16:30:16.976', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1573, NULL, 'my', 0, '2020-08-18 16:30:19.456', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1574, 'root', 'move', 0, '2020-08-18 16:30:19.563', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1575, 'root', 'move', 0, '2020-08-18 16:30:51.393', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1576, NULL, 'my', 0, '2020-08-18 16:30:53.649', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1577, 'root', 'move', 0, '2020-08-18 16:30:53.666', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1578, 'root', 'move', 0, '2020-08-18 16:30:59.17', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1579, 'root', 'move', 0, '2020-08-18 16:31:00.984', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1580, 'root', 'move', 0, '2020-08-18 16:31:01.852', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1581, 'root', 'move', 0, '2020-08-18 16:31:03.462', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1582, 'root', 'move', 0, '2020-08-18 16:31:04.682', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1583, 'root', 'move', 0, '2020-08-18 16:31:06.286', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1584, 'root', 'move', 0, '2020-08-18 16:31:06.697', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1585, 'root', 'move', 0, '2020-08-18 16:35:20.108', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1586, 'root', 'enter', 0, '2020-08-18 16:35:25.962', NULL);
INSERT INTO `log` VALUES (1587, 'root', 'move', 0, '2020-08-18 16:35:26.554', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1588, 'root', 'move', 0, '2020-08-18 16:35:28.434', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1589, 'root', 'move', 0, '2020-08-18 16:35:29.362', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1590, 'root', 'visits', 0, '2020-08-18 16:40:59.772', NULL);
INSERT INTO `log` VALUES (1591, NULL, 'my', 0, '2020-08-18 16:41:49.591', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1592, 'root', 'valuables', 0, '2020-08-18 16:41:49.651', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1593, 'root', 'enter', 0, '2020-08-18 16:42:59.762', NULL);
INSERT INTO `log` VALUES (1594, 'root', 'move', 0, '2020-08-18 16:43:00.318', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1595, 'root', 'move', 0, '2020-08-18 16:43:02.059', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1596, 'root', 'move', 0, '2020-08-18 16:43:03.398', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1597, 'root', 'valuables', 0, '2020-08-18 16:43:06.071', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1598, 'root', 'valuables', 0, '2020-08-18 16:47:09.888', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1599, NULL, 'my', 0, '2020-08-18 16:50:38.431', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1600, 'root', 'valuables', 0, '2020-08-18 16:50:38.52', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1601, 'root', 'visits', 0, '2020-08-18 16:50:40.368', NULL);
INSERT INTO `log` VALUES (1602, 'root', 'history', 0, '2020-08-18 16:50:41.331', NULL);
INSERT INTO `log` VALUES (1603, 'root', 'visits', 0, '2020-08-18 16:50:42.165', NULL);
INSERT INTO `log` VALUES (1604, 'root', 'valuables', 0, '2020-08-18 16:50:42.909', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1605, 'root', 'valuables', 0, '2020-08-18 16:50:43.913', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1606, 'root', 'valuables', 0, '2020-08-18 16:50:45.427', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1607, 'root', 'valuables', 0, '2020-08-18 16:50:47.233', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1608, 'root', 'valuables', 0, '2020-08-18 16:50:48.59', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1609, 'root', 'valuables', 0, '2020-08-18 16:50:54.712', '{\"valId\":[\"91\"]}');
INSERT INTO `log` VALUES (1610, 'root', 'valuables', 0, '2020-08-18 16:50:54.964', NULL);
INSERT INTO `log` VALUES (1611, 'root', 'visits', 0, '2020-08-18 17:05:00.71', NULL);
INSERT INTO `log` VALUES (1612, 'root', 'move', 0, '2020-08-18 17:05:02.115', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1613, 'root', 'move', 0, '2020-08-18 17:05:05.185', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1614, 'root', 'move', 0, '2020-08-18 17:05:14.237', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1615, 'root', 'move', 1, '2020-08-18 17:06:14.174', '{上传文件}');
INSERT INTO `log` VALUES (1616, 'root', 'move', 0, '2020-08-18 17:06:14.411', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1617, 'root', 'move', 0, '2020-08-18 17:06:20.058', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1618, 'root', 'move', 1, '2020-08-18 17:06:30.046', '{上传文件}');
INSERT INTO `log` VALUES (1619, 'root', 'move', 0, '2020-08-18 17:06:30.303', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1620, 'root', 'move', 1, '2020-08-18 17:07:02.774', '{上传文件}');
INSERT INTO `log` VALUES (1621, 'root', 'move', 0, '2020-08-18 17:07:03.029', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1622, 'root', 'move', 1, '2020-08-18 17:07:12.051', '{上传文件}');
INSERT INTO `log` VALUES (1623, 'root', 'move', 0, '2020-08-18 17:07:12.299', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1624, 'root', 'move', 1, '2020-08-18 17:07:20.404', '{上传文件}');
INSERT INTO `log` VALUES (1625, 'root', 'move', 0, '2020-08-18 17:07:20.661', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1626, 'root', 'move', 1, '2020-08-18 17:07:29.938', '{上传文件}');
INSERT INTO `log` VALUES (1627, 'root', 'move', 0, '2020-08-18 17:07:30.195', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1628, 'root', 'move', 1, '2020-08-18 17:07:42.485', '{上传文件}');
INSERT INTO `log` VALUES (1629, 'root', 'move', 0, '2020-08-18 17:07:42.7', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1630, 'root', 'move', 1, '2020-08-18 17:07:57.842', '{上传文件}');
INSERT INTO `log` VALUES (1631, 'root', 'move', 0, '2020-08-18 17:07:58.08', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1632, 'root', 'move', 0, '2020-08-18 17:08:02.503', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1633, 'root', 'move', 0, '2020-08-18 17:09:20.846', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1634, 'root', 'move', 0, '2020-08-18 17:09:22.584', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1635, 'root', 'move', 0, '2020-08-18 17:09:29.64', '{\"moveId\":[\"43\"]}');
INSERT INTO `log` VALUES (1636, 'root', 'move', 0, '2020-08-18 17:09:29.903', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1637, 'root', 'move', 0, '2020-08-18 17:09:34.769', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1638, 'root', 'move', 0, '2020-08-18 17:09:35.718', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1639, 'root', 'move', 0, '2020-08-18 17:09:37.978', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1640, 'root', 'move', 0, '2020-08-18 17:09:38.926', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1641, 'root', 'move', 0, '2020-08-18 17:09:40.579', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1642, 'root', 'move', 0, '2020-08-18 17:09:41.717', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1643, 'root', 'move', 0, '2020-08-18 17:12:35.786', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1644, 'root', 'move', 0, '2020-08-18 17:12:37.806', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1645, 'root', 'move', 1, '2020-08-18 17:12:52.235', '{上传文件}');
INSERT INTO `log` VALUES (1646, 'root', 'move', 0, '2020-08-18 17:12:52.466', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1647, 'root', 'move', 0, '2020-08-18 17:12:53.469', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1648, 'root', 'move', 0, '2020-08-18 17:12:56.877', '{\"moveId\":[\"44\"]}');
INSERT INTO `log` VALUES (1649, 'root', 'move', 0, '2020-08-18 17:12:57.134', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1650, 'root', 'move', 0, '2020-08-18 17:16:13.791', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1651, 'root', 'move', 0, '2020-08-18 17:16:17.34', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1652, 'root', 'move', 1, '2020-08-18 17:16:25.158', '{上传文件}');
INSERT INTO `log` VALUES (1653, 'root', 'move', 0, '2020-08-18 17:16:25.391', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1654, 'root', 'move', 0, '2020-08-18 17:16:27.097', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1655, 'root', 'move', 0, '2020-08-18 17:16:31.058', '{\"moveId\":[\"45\"]}');
INSERT INTO `log` VALUES (1656, 'root', 'move', 0, '2020-08-18 17:16:31.307', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1657, 'root', 'move', 0, '2020-08-18 17:16:38.448', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1658, 'root', 'move', 0, '2020-08-18 17:16:39.414', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1659, 'root', 'move', 0, '2020-08-18 17:19:28.11', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1660, 'root', 'move', 0, '2020-08-18 17:19:29.936', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1661, 'root', 'move', 1, '2020-08-18 17:19:37.731', '{上传文件}');
INSERT INTO `log` VALUES (1662, 'root', 'move', 0, '2020-08-18 17:19:37.978', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1663, 'root', 'move', 0, '2020-08-18 17:19:39.76', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1664, 'root', 'move', 0, '2020-08-18 17:19:42.771', '{\"moveId\":[\"46\"]}');
INSERT INTO `log` VALUES (1665, 'root', 'move', 0, '2020-08-18 17:19:43.018', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1666, 'root', 'move', 0, '2020-08-18 17:20:33.403', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1667, 'root', 'move', 0, '2020-08-18 17:20:48.459', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1668, 'root', 'move', 0, '2020-08-18 17:20:49.939', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1669, 'root', 'move', 1, '2020-08-18 17:20:57.398', '{上传文件}');
INSERT INTO `log` VALUES (1670, 'root', 'move', 0, '2020-08-18 17:20:57.629', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1671, 'root', 'move', 0, '2020-08-18 17:20:59.157', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1672, 'root', 'move', 0, '2020-08-18 17:21:01.694', '{\"moveId\":[\"47\"]}');
INSERT INTO `log` VALUES (1673, 'root', 'move', 0, '2020-08-18 17:21:01.959', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1674, 'root', 'move', 0, '2020-08-18 17:21:05.036', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1675, 'root', 'move', 0, '2020-08-18 17:21:06.12', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1676, 'root', 'move', 0, '2020-08-18 17:21:07.986', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1677, 'root', 'move', 0, '2020-08-18 17:21:08.834', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1678, 'root', 'move', 0, '2020-08-18 17:27:03.033', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1679, 'root', 'move', 0, '2020-08-18 17:27:10.866', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1680, 'root', 'move', 0, '2020-08-18 17:27:17.692', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1681, 'root', 'move', 1, '2020-08-18 17:27:24.651', '{上传文件}');
INSERT INTO `log` VALUES (1682, 'root', 'move', 0, '2020-08-18 17:27:25.003', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1683, 'root', 'move', 0, '2020-08-18 17:27:26.573', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1684, 'root', 'move', 0, '2020-08-18 17:27:29.661', '{\"moveId\":[\"48\"]}');
INSERT INTO `log` VALUES (1685, 'root', 'move', 0, '2020-08-18 17:27:29.935', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1686, 'root', 'move', 0, '2020-08-18 17:32:39.278', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1687, 'root', 'move', 0, '2020-08-18 17:32:52.708', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1688, 'root', 'move', 0, '2020-08-18 17:32:57.814', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1689, 'root', 'move', 1, '2020-08-18 17:33:06.134', '{上传文件}');
INSERT INTO `log` VALUES (1690, 'root', 'move', 0, '2020-08-18 17:33:06.38', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1691, 'root', 'move', 0, '2020-08-18 17:33:07.74', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1692, 'root', 'move', 0, '2020-08-18 17:33:10.301', '{\"moveId\":[\"49\"]}');
INSERT INTO `log` VALUES (1693, 'root', 'move', 0, '2020-08-18 17:33:10.551', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1694, NULL, 'my', 0, '2020-08-18 17:33:31.879', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1695, 'root', 'move', 0, '2020-08-18 17:33:31.955', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1696, 'root', 'move', 0, '2020-08-18 17:33:34.827', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1697, 'root', 'move', 0, '2020-08-18 17:33:35.931', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1698, 'root', 'move', 0, '2020-08-18 17:33:37.013', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1699, 'root', 'move', 0, '2020-08-18 17:33:42.672', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1700, 'root', 'move', 0, '2020-08-18 17:33:43.063', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1701, 'root', 'move', 1, '2020-08-18 17:33:52.736', '{上传文件}');
INSERT INTO `log` VALUES (1702, 'root', 'move', 0, '2020-08-18 17:33:52.956', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1703, 'root', 'move', 0, '2020-08-18 17:33:54.787', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1704, 'root', 'move', 0, '2020-08-18 17:36:22.3', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1705, NULL, 'my', 0, '2020-08-18 17:36:23.403', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1706, 'root', 'move', 0, '2020-08-18 17:36:23.53', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1707, 'root', 'move', 0, '2020-08-18 17:36:24.64', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1708, 'root', 'move', 0, '2020-08-18 17:36:27.322', '{\"moveId\":[\"50\"]}');
INSERT INTO `log` VALUES (1709, 'root', 'move', 0, '2020-08-18 17:36:27.352', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1710, 'root', 'move', 0, '2020-08-18 17:36:31.143', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1711, 'root', 'move', 0, '2020-08-18 17:36:31.818', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1712, 'root', 'move', 0, '2020-08-18 17:36:35.892', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1713, 'root', 'move', 0, '2020-08-18 17:36:36.306', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1714, 'root', 'move', 0, '2020-08-18 17:36:37.764', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1715, 'root', 'move', 0, '2020-08-18 17:36:38.014', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1716, 'root', 'move', 0, '2020-08-18 17:36:39.757', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1717, 'root', 'move', 0, '2020-08-18 17:36:40.0', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1718, 'root', 'move', 0, '2020-08-18 17:36:40.651', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1719, 'root', 'move', 0, '2020-08-18 17:36:41.575', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1720, 'root', 'move', 1, '2020-08-18 17:37:17.187', '{上传文件}');
INSERT INTO `log` VALUES (1721, 'root', 'move', 0, '2020-08-18 17:37:17.548', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1722, 'root', 'move', 0, '2020-08-18 17:37:18.652', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1723, 'root', 'move', 0, '2020-08-18 17:37:21.46', '{\"moveId\":[\"51\"]}');
INSERT INTO `log` VALUES (1724, 'root', 'move', 0, '2020-08-18 17:37:21.715', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1725, 'root', 'move', 0, '2020-08-18 17:38:28.585', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1726, 'root', 'move', 0, '2020-08-18 17:38:30.882', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1727, 'root', 'move', 1, '2020-08-18 17:38:41.759', '{上传文件}');
INSERT INTO `log` VALUES (1728, 'root', 'move', 0, '2020-08-18 17:38:42.004', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1729, 'root', 'move', 0, '2020-08-18 17:38:42.898', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1730, 'root', 'move', 0, '2020-08-18 17:38:47.387', '{\"moveId\":[\"52\"]}');
INSERT INTO `log` VALUES (1731, 'root', 'move', 0, '2020-08-18 17:38:47.632', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1732, 'root', 'move', 0, '2020-08-18 17:40:17.562', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1733, 'root', 'move', 0, '2020-08-18 17:40:19.704', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1734, 'root', 'move', 1, '2020-08-18 17:40:27.08', '{上传文件}');
INSERT INTO `log` VALUES (1735, 'root', 'move', 0, '2020-08-18 17:40:27.325', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1736, 'root', 'move', 0, '2020-08-18 17:40:28.07', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1737, 'root', 'move', 0, '2020-08-18 17:40:30.537', '{\"moveId\":[\"53\"]}');
INSERT INTO `log` VALUES (1738, 'root', 'move', 0, '2020-08-18 17:40:30.792', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1739, 'root', 'move', 0, '2020-08-18 17:41:27.538', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1740, 'root', 'move', 0, '2020-08-18 17:41:29.669', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1741, 'root', 'move', 1, '2020-08-18 17:41:39.207', '{上传文件}');
INSERT INTO `log` VALUES (1742, 'root', 'move', 0, '2020-08-18 17:41:39.445', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1743, 'root', 'move', 0, '2020-08-18 17:41:40.586', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1744, 'root', 'move', 0, '2020-08-18 17:41:50.22', '{\"moveId\":[\"54\"]}');
INSERT INTO `log` VALUES (1745, 'root', 'move', 0, '2020-08-18 17:41:50.468', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1746, 'root', 'move', 1, '2020-08-18 17:42:28.084', '{上传文件}');
INSERT INTO `log` VALUES (1747, 'root', 'move', 0, '2020-08-18 17:42:28.313', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1748, 'root', 'move', 3, '2020-08-18 17:42:34.864', '[[\"55\"]]');
INSERT INTO `log` VALUES (1749, 'root', 'move', 0, '2020-08-18 17:51:20.725', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1750, 'root', 'move', 0, '2020-08-18 17:51:27.919', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1751, 'root', 'move', 1, '2020-08-18 17:51:35.07', '{上传文件}');
INSERT INTO `log` VALUES (1752, 'root', 'move', 0, '2020-08-18 17:51:35.331', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1753, 'root', 'move', 0, '2020-08-18 17:51:36.935', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1754, 'root', 'move', 3, '2020-08-18 17:51:42.608', '[[\"56\"]]');
INSERT INTO `log` VALUES (1755, 'root', 'move', 0, '2020-08-18 17:53:07.912', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1756, 'root', 'move', 0, '2020-08-18 17:53:08.146', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1757, 'root', 'move', 1, '2020-08-18 17:53:16.728', '{上传文件}');
INSERT INTO `log` VALUES (1758, 'root', 'move', 0, '2020-08-18 17:53:16.988', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1759, 'root', 'move', 0, '2020-08-18 17:53:18.781', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1760, 'root', 'move', 3, '2020-08-18 17:53:24.993', '[[\"57\"]]');
INSERT INTO `log` VALUES (1761, 'root', 'move', 0, '2020-08-18 17:53:49.311', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1762, 'root', 'move', 0, '2020-08-18 17:53:50.268', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1763, 'root', 'move', 1, '2020-08-18 17:53:57.366', '{上传文件}');
INSERT INTO `log` VALUES (1764, 'root', 'move', 0, '2020-08-18 17:53:57.625', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1765, 'root', 'move', 0, '2020-08-18 17:53:58.904', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1766, 'root', 'move', 3, '2020-08-18 17:54:04.403', '[[\"58\"]]');
INSERT INTO `log` VALUES (1767, 'root', 'move', 0, '2020-08-18 17:54:04.654', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1768, 'root', 'move', 0, '2020-08-18 17:54:42.724', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1769, 'root', 'move', 1, '2020-08-18 17:54:43.388', NULL);
INSERT INTO `log` VALUES (1770, 'root', 'move', 1, '2020-08-18 17:56:36.966', '{上传文件}');
INSERT INTO `log` VALUES (1771, 'root', 'move', 0, '2020-08-18 17:56:37.132', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1772, 'root', 'move', 0, '2020-08-18 18:00:03.638', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1773, 'root', 'move', 1, '2020-08-18 18:00:10.828', '{上传文件}');
INSERT INTO `log` VALUES (1774, 'root', 'move', 0, '2020-08-18 18:00:11.098', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1775, 'root', 'move', 0, '2020-08-18 18:00:13.829', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1776, 'root', 'move', 0, '2020-08-18 18:01:11.387', '{\"moveId\":[\"59\"]}');
INSERT INTO `log` VALUES (1777, 'root', 'move', 0, '2020-08-18 18:01:11.647', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1778, 'root', 'move', 0, '2020-08-18 18:01:16.605', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1779, 'root', 'move', 0, '2020-08-18 18:01:16.936', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1780, 'root', 'move', 1, '2020-08-18 18:01:24.274', '{上传文件}');
INSERT INTO `log` VALUES (1781, 'root', 'move', 0, '2020-08-18 18:01:24.532', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1782, 'root', 'move', 0, '2020-08-18 18:01:26.861', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1783, 'root', 'move', 3, '2020-08-18 18:01:37.335', '[[\"60\"]]');
INSERT INTO `log` VALUES (1784, 'root', 'move', 0, '2020-08-18 18:01:37.579', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1785, 'root', 'move', 1, '2020-08-18 18:02:00.635', '{上传文件}');
INSERT INTO `log` VALUES (1786, 'root', 'move', 0, '2020-08-18 18:02:00.87', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1787, 'root', 'move', 0, '2020-08-18 18:03:06.064', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1788, 'root', 'move', 1, '2020-08-18 18:04:11.895', '{上传文件}');
INSERT INTO `log` VALUES (1789, 'root', 'move', 0, '2020-08-18 18:04:12.129', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1790, 'root', 'move', 0, '2020-08-18 18:04:23.43', '{\"moveId\":[\"61\"]}');
INSERT INTO `log` VALUES (1791, 'root', 'move', 0, '2020-08-18 18:04:23.69', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1792, 'root', 'move', 0, '2020-08-18 18:04:25.572', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1793, 'root', 'move', 0, '2020-08-18 18:04:26.477', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1794, 'root', 'move', 1, '2020-08-18 18:04:36.725', '{上传文件}');
INSERT INTO `log` VALUES (1795, 'root', 'move', 0, '2020-08-18 18:04:37.088', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1796, 'root', 'move', 0, '2020-08-18 18:04:38.978', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1797, NULL, 'my', 0, '2020-08-18 18:10:43.299', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1798, 'root', 'move', 0, '2020-08-18 18:10:43.476', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1799, 'root', 'move', 0, '2020-08-18 18:10:45.284', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1800, NULL, 'my', 0, '2020-08-18 18:13:43.201', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1801, 'root', 'move', 0, '2020-08-18 18:13:43.568', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1802, 'root', 'move', 0, '2020-08-18 18:13:53.475', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1803, 'root', 'move', 0, '2020-08-18 18:13:55.085', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1804, 'root', 'move', 0, '2020-08-18 18:16:19.499', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1805, NULL, 'my', 0, '2020-08-18 18:16:21.425', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1806, 'root', 'move', 0, '2020-08-18 18:16:21.923', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1807, 'root', 'move', 0, '2020-08-18 18:16:23.854', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1808, NULL, 'my', 0, '2020-08-18 18:19:26.687', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1809, 'root', 'move', 0, '2020-08-18 18:19:26.88', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1810, 'root', 'move', 0, '2020-08-18 18:19:28.287', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1811, 'root', 'move', 3, '2020-08-18 18:19:32.119', '[[\"62\"]]');
INSERT INTO `log` VALUES (1812, 'root', 'move', 0, '2020-08-18 18:19:32.486', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1813, 'root', 'move', 1, '2020-08-18 18:19:45.726', '{上传文件}');
INSERT INTO `log` VALUES (1814, 'root', 'move', 0, '2020-08-18 18:19:45.946', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1815, 'root', 'move', 0, '2020-08-18 18:19:53.791', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1816, 'root', 'move', 1, '2020-08-18 18:20:06.041', '[[\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\"]]');
INSERT INTO `log` VALUES (1817, 'root', 'move', 0, '2020-08-18 18:20:06.182', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1818, NULL, 'my', 0, '2020-08-18 18:28:19.782', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1819, 'root', 'move', 0, '2020-08-18 18:28:19.929', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1820, 'root', 'move', 0, '2020-08-18 18:28:21.253', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1821, 'root', 'move', 0, '2020-08-18 18:28:27.516', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1822, 'root', 'move', 3, '2020-08-18 18:28:31.927', '[[\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\"]]');
INSERT INTO `log` VALUES (1823, 'root', 'move', 0, '2020-08-18 18:28:32.281', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1824, 'root', 'move', 0, '2020-08-18 18:29:36.127', '{\"moveId\":[\"63\"]}');
INSERT INTO `log` VALUES (1825, 'root', 'move', 0, '2020-08-18 18:29:36.38', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1826, 'root', 'move', 1, '2020-08-18 18:29:48.025', '{上传文件}');
INSERT INTO `log` VALUES (1827, 'root', 'move', 0, '2020-08-18 18:29:48.239', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1828, 'root', 'valuables', 0, '2020-08-18 18:31:25.575', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1829, 'root', 'valuables', 0, '2020-08-18 18:31:27.422', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1830, 'root', 'valuables', 0, '2020-08-18 18:31:28.57', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1831, 'root', 'valuables', 0, '2020-08-18 18:31:54.918', '{\"valId\":[\"88\"]}');
INSERT INTO `log` VALUES (1832, 'root', 'valuables', 0, '2020-08-18 18:31:55.192', NULL);
INSERT INTO `log` VALUES (1833, 'root', 'valuables', 0, '2020-08-18 18:31:59.601', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1834, 'root', 'valuables', 0, '2020-08-18 18:32:00.571', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1835, 'root', 'valuables', 0, '2020-08-18 18:35:18.092', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1836, 'root', 'valuables', 0, '2020-08-18 18:35:34.403', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1837, 'root', 'valuables', 0, '2020-08-18 18:35:36.069', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1838, 'root', 'valuables', 0, '2020-08-18 18:35:38.56', '{\"valId\":[\"89\"]}');
INSERT INTO `log` VALUES (1839, 'root', 'valuables', 0, '2020-08-18 18:35:38.826', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1840, 'root', 'valuables', 3, '2020-08-18 18:35:43.182', '[[\"74\",\"87\"]]');
INSERT INTO `log` VALUES (1841, 'root', 'valuables', 0, '2020-08-18 18:35:43.551', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1842, NULL, 'my', 0, '2020-08-18 18:35:50.635', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1843, 'root', 'valuables', 0, '2020-08-18 18:35:50.792', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1844, 'root', 'valuables', 0, '2020-08-18 18:35:53.72', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1845, 'root', 'valuables', 0, '2020-08-18 18:36:02.95', '{\"valId\":[\"69\"]}');
INSERT INTO `log` VALUES (1846, 'root', 'valuables', 0, '2020-08-18 18:36:03.208', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1847, 'root', 'valuables', 3, '2020-08-18 18:36:08.474', '[[\"59\",\"60\",\"61\",\"62\",\"63\",\"65\",\"66\",\"70\",\"71\"]]');
INSERT INTO `log` VALUES (1848, 'root', 'valuables', 0, '2020-08-18 18:36:08.699', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1849, NULL, 'my', 0, '2020-08-18 18:36:13.26', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1850, 'root', 'valuables', 0, '2020-08-18 18:36:13.378', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1851, 'root', 'valuables', 1, '2020-08-18 18:36:25.185', '{上传文件}');
INSERT INTO `log` VALUES (1852, 'root', 'valuables', 0, '2020-08-18 18:36:25.404', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1853, 'root', 'valuables', 3, '2020-08-18 18:36:32.482', '[[\"112\"]]');
INSERT INTO `log` VALUES (1854, 'root', 'valuables', 0, '2020-08-18 18:36:32.83', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1855, 'root', 'valuables', 1, '2020-08-18 18:36:48.647', '{上传文件}');
INSERT INTO `log` VALUES (1856, 'root', 'valuables', 0, '2020-08-18 18:36:48.871', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1857, 'root', 'valuables', 0, '2020-08-18 18:36:51.957', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1858, 'root', 'valuables', 0, '2020-08-18 18:36:52.943', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1859, 'root', 'action', 0, '2020-08-18 18:40:41.79', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1860, 'root', 'action', 0, '2020-08-18 18:40:43.685', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1861, 'root', 'action', 3, '2020-08-18 18:40:47.221', '{\"actId\":[\"30\"]}');
INSERT INTO `log` VALUES (1862, 'root', 'action', 0, '2020-08-18 18:40:47.57', NULL);
INSERT INTO `log` VALUES (1863, 'root', 'action', 0, '2020-08-18 18:40:51.668', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1864, 'root', 'action', 0, '2020-08-18 18:40:52.809', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1865, 'root', 'action', 3, '2020-08-18 18:40:58.352', '[[\"28\"]]');
INSERT INTO `log` VALUES (1866, 'root', 'action', 0, '2020-08-18 18:40:58.703', NULL);
INSERT INTO `log` VALUES (1867, 'root', 'action', 0, '2020-08-18 18:41:01.624', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1868, NULL, 'my', 0, '2020-08-18 18:41:12.075', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1869, 'root', 'action', 0, '2020-08-18 18:41:12.223', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1870, 'root', 'action', 1, '2020-08-18 18:41:20.895', '{上传文件}');
INSERT INTO `log` VALUES (1871, 'root', 'action', 0, '2020-08-18 18:41:21.148', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1873, 'root', 'action', 0, '2020-08-18 18:41:26.46', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1874, 'root', 'action', 1, '2020-08-18 18:41:32.369', '{上传文件}');
INSERT INTO `log` VALUES (1875, 'root', 'action', 0, '2020-08-18 18:41:32.731', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1876, 'root', 'action', 1, '2020-08-18 18:41:37.645', '{上传文件}');
INSERT INTO `log` VALUES (1877, 'root', 'action', 0, '2020-08-18 18:41:37.986', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1879, 'root', 'action', 0, '2020-08-18 18:41:41.845', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1880, 'root', 'valuables', 0, '2020-08-18 18:41:49.301', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1881, 'root', 'valuables', 0, '2020-08-18 18:41:50.977', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1882, 'root', 'valuables', 1, '2020-08-18 18:42:00.729', '{上传文件}');
INSERT INTO `log` VALUES (1883, 'root', 'valuables', 0, '2020-08-18 18:42:01.11', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1884, 'root', 'valuables', 0, '2020-08-18 18:42:03.845', '{\"valId\":[\"114\"]}');
INSERT INTO `log` VALUES (1885, 'root', 'valuables', 0, '2020-08-18 18:42:04.186', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1887, 'root', 'valuables', 0, '2020-08-18 18:42:08.785', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1888, 'root', 'valuables', 0, '2020-08-18 18:43:46.245', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1889, 'root', 'valuables', 1, '2020-08-18 18:43:57.725', '{上传文件}');
INSERT INTO `log` VALUES (1890, 'root', 'valuables', 0, '2020-08-18 18:43:57.935', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1892, 'root', 'valuables', 0, '2020-08-18 18:44:01.866', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1893, 'root', 'history', 0, '2020-08-18 18:44:08.704', NULL);
INSERT INTO `log` VALUES (1894, 'root', 'move', 0, '2020-08-18 18:44:10.969', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1895, 'root', 'move', 0, '2020-08-18 18:44:12.382', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1897, 'root', 'move', 0, '2020-08-18 18:44:19.613', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1898, 'root', 'move', 1, '2020-08-18 18:44:27.633', '{上传文件}');
INSERT INTO `log` VALUES (1899, 'root', 'move', 0, '2020-08-18 18:44:27.99', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1900, NULL, 'login', 0, '2020-08-19 00:19:03.425', '{\"t\":[\"1597796341833\"]}');
INSERT INTO `log` VALUES (1901, NULL, 'login', 0, '2020-08-19 00:19:04.686', '{\"t\":[\"1597796341833\"]}');
INSERT INTO `log` VALUES (1902, NULL, 'my', 0, '2020-08-19 00:23:40.838', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1903, 'root', 'echart', 0, '2020-08-19 00:23:40.891', NULL);
INSERT INTO `log` VALUES (1904, 'root', 'echart', 0, '2020-08-19 00:23:41.113', NULL);
INSERT INTO `log` VALUES (1905, 'root', 'echart', 0, '2020-08-19 00:23:41.135', NULL);
INSERT INTO `log` VALUES (1906, 'root', 'echart', 0, '2020-08-19 00:23:41.157', NULL);
INSERT INTO `log` VALUES (1907, 'root', 'echart', 0, '2020-08-19 00:23:41.275', NULL);
INSERT INTO `log` VALUES (1908, NULL, 'login', 0, '2020-08-19 00:24:04.509', '{\"t\":[\"1597796644458\"]}');
INSERT INTO `log` VALUES (1909, NULL, 'login', 0, '2020-08-19 00:24:04.706', '{\"t\":[\"1597796644458\"]}');
INSERT INTO `log` VALUES (1910, NULL, 'login', 0, '2020-08-19 00:24:15.802', '{\"t\":[\"1597796655764\"]}');
INSERT INTO `log` VALUES (1911, NULL, 'login', 0, '2020-08-19 00:24:15.823', '{\"t\":[\"1597796655764\"]}');
INSERT INTO `log` VALUES (1912, NULL, 'login', 0, '2020-08-19 00:24:17.261', '{\"t\":[\"1597796657228\"]}');
INSERT INTO `log` VALUES (1913, NULL, 'login', 0, '2020-08-19 00:24:17.276', '{\"t\":[\"1597796657228\"]}');
INSERT INTO `log` VALUES (1914, NULL, 'my', 0, '2020-08-19 00:24:25.675', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1915, 'root', 'echart', 0, '2020-08-19 00:24:25.803', NULL);
INSERT INTO `log` VALUES (1916, 'root', 'echart', 0, '2020-08-19 00:24:25.984', NULL);
INSERT INTO `log` VALUES (1917, 'root', 'echart', 0, '2020-08-19 00:24:25.989', NULL);
INSERT INTO `log` VALUES (1918, 'root', 'echart', 0, '2020-08-19 00:24:25.99', NULL);
INSERT INTO `log` VALUES (1919, 'root', 'echart', 0, '2020-08-19 00:24:26.027', NULL);
INSERT INTO `log` VALUES (1920, 'root', 'move', 0, '2020-08-19 00:24:31.771', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1921, 'root', 'move', 1, '2020-08-19 00:24:43.548', '[{\"moveAudit\":0,\"moveId\":66,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (1922, 'root', 'move', 0, '2020-08-19 00:24:43.789', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1923, 'root', 'move', 0, '2020-08-19 00:24:47.753', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1924, 'root', 'move', 0, '2020-08-19 00:24:49.946', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1925, 'root', 'move', 1, '2020-08-19 00:25:11.05', '[{\"moveAudit\":0,\"moveId\":67,\"moveNewBld\":\"2\",\"moveNewRoom\":\"2\",\"moveOldBld\":\"2\",\"moveOldRoom\":\"2\",\"moveReason\":\"2\",\"moveStuName\":\"2\",\"moveStuNo\":2}]');
INSERT INTO `log` VALUES (1926, 'root', 'move', 0, '2020-08-19 00:25:11.3', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1927, 'root', 'move', 0, '2020-08-19 00:25:15.185', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1928, 'root', 'move', 0, '2020-08-19 00:27:01.907', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1929, 'root', 'move', 0, '2020-08-19 00:27:04.197', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1930, NULL, 'my', 0, '2020-08-19 00:27:04.216', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1931, 'root', 'move', 0, '2020-08-19 00:27:07.246', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1932, 'root', 'move', 0, '2020-08-19 00:27:07.959', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1933, 'root', 'move', 1, '2020-08-19 00:27:15.869', '[{\"moveAudit\":0,\"moveId\":68,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (1934, 'root', 'move', 0, '2020-08-19 00:27:19.27', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1935, 'root', 'move', 0, '2020-08-19 00:27:20.726', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1936, 'root', 'move', 1, '2020-08-19 00:29:47.78', '[{\"moveAudit\":0,\"moveId\":69,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (1937, 'root', 'move', 0, '2020-08-19 00:31:01.988', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1938, 'root', 'move', 0, '2020-08-19 00:31:02.011', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1939, NULL, 'my', 0, '2020-08-19 00:31:03.76', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1940, 'root', 'move', 0, '2020-08-19 00:31:03.9', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1941, 'root', 'move', 1, '2020-08-19 00:31:10.822', '[{\"moveAudit\":0,\"moveId\":70,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (1942, 'root', 'move', 0, '2020-08-19 00:32:10.297', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1943, 'root', 'move', 0, '2020-08-19 00:32:10.352', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1944, NULL, 'my', 0, '2020-08-19 00:33:17.444', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1945, 'root', 'move', 0, '2020-08-19 00:33:17.9', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1946, 'root', 'move', 0, '2020-08-19 00:33:18.699', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1947, NULL, 'my', 0, '2020-08-19 00:33:18.742', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1948, 'root', 'move', 1, '2020-08-19 00:33:24.502', '[{\"moveAudit\":0,\"moveId\":71,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (1949, 'root', 'move', 0, '2020-08-19 00:33:51.436', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1950, 'root', 'move', 0, '2020-08-19 00:33:51.486', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1951, 'root', 'move', 1, '2020-08-19 00:33:57.442', '[{\"moveAudit\":0,\"moveId\":72,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (1952, 'root', 'move', 0, '2020-08-19 00:33:57.804', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1953, 'root', 'move', 0, '2020-08-19 00:34:00.647', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1954, 'root', 'move', 1, '2020-08-19 00:34:08.133', '[{\"moveAudit\":0,\"moveId\":73,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (1955, 'root', 'move', 0, '2020-08-19 00:34:08.381', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1956, 'root', 'move', 0, '2020-08-19 00:34:09.499', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1957, 'root', 'move', 1, '2020-08-19 00:34:15.919', '[{\"moveAudit\":0,\"moveId\":74,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (1958, 'root', 'move', 0, '2020-08-19 00:34:16.179', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1959, 'root', 'move', 0, '2020-08-19 00:34:17.961', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1960, 'root', 'move', 1, '2020-08-19 00:34:25.111', '[{\"moveAudit\":0,\"moveId\":75,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (1961, 'root', 'move', 0, '2020-08-19 00:34:25.375', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1962, NULL, 'my', 0, '2020-08-19 00:46:12.965', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1963, 'root', 'move', 0, '2020-08-19 00:46:13.185', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1964, 'root', 'move', 0, '2020-08-19 00:46:13.241', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1965, NULL, 'my', 0, '2020-08-19 00:46:13.297', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (1966, 'root', 'valuables', 0, '2020-08-19 00:46:16.887', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1967, 'root', 'valuables', 1, '2020-08-19 00:46:25.887', '[{\"valDate\":\"2020-08-19\",\"valId\":116,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1968, 'root', 'valuables', 0, '2020-08-19 00:46:26.239', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1969, 'root', 'valuables', 0, '2020-08-19 00:46:28.392', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1970, 'root', 'valuables', 1, '2020-08-19 00:47:57.514', '[{\"valDate\":\"2020-08-19\",\"valId\":117,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1971, 'root', 'valuables', 0, '2020-08-19 00:47:57.756', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1972, 'root', 'valuables', 1, '2020-08-19 00:48:02.28', '[{\"valDate\":\"2020-08-19\",\"valId\":118,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1973, 'root', 'valuables', 0, '2020-08-19 00:48:02.714', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1974, 'root', 'valuables', 1, '2020-08-19 00:48:04.041', '[{\"valDate\":\"2020-08-19\",\"valId\":119,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1975, 'root', 'valuables', 0, '2020-08-19 00:48:04.474', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1976, 'root', 'valuables', 1, '2020-08-19 00:48:06.213', '[{\"valDate\":\"2020-08-19\",\"valId\":120,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1977, 'root', 'valuables', 0, '2020-08-19 00:48:06.639', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1978, 'root', 'valuables', 1, '2020-08-19 00:48:08.566', '[{\"valDate\":\"2020-08-19\",\"valId\":121,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1979, 'root', 'valuables', 0, '2020-08-19 00:48:08.99', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1980, 'root', 'valuables', 1, '2020-08-19 00:48:10.324', '[{\"valDate\":\"2020-08-19\",\"valId\":122,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1981, 'root', 'valuables', 0, '2020-08-19 00:48:10.758', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1982, 'root', 'valuables', 1, '2020-08-19 00:48:12.452', '[{\"valDate\":\"2020-08-19\",\"valId\":123,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1983, 'root', 'valuables', 0, '2020-08-19 00:48:12.846', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1984, 'root', 'valuables', 1, '2020-08-19 00:48:14.116', '[{\"valDate\":\"2020-08-19\",\"valId\":124,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1985, 'root', 'valuables', 0, '2020-08-19 00:48:14.517', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1986, 'root', 'valuables', 1, '2020-08-19 00:48:16.634', '[{\"valDate\":\"2020-08-19\",\"valId\":125,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1987, 'root', 'valuables', 0, '2020-08-19 00:48:17.032', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1988, 'root', 'valuables', 0, '2020-08-19 00:48:20.102', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1989, 'root', 'valuables', 1, '2020-08-19 00:48:22.552', '[{\"valDate\":\"2020-08-19\",\"valId\":126,\"valName\":\"1\",\"valNum\":1,\"valPrice\":1.0,\"valRemark\":\"1\",\"valSpecs\":\"1\",\"valStuName\":\"1\"}]');
INSERT INTO `log` VALUES (1990, 'root', 'valuables', 0, '2020-08-19 00:48:22.818', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (1991, 'root', 'valuables', 0, '2020-08-19 00:48:25.633', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1992, 'root', 'valuables', 0, '2020-08-19 00:48:27.535', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1994, 'root', 'valuables', 0, '2020-08-19 00:48:33.205', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1995, 'root', 'valuables', 0, '2020-08-19 00:48:39.855', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1996, 'root', 'valuables', 0, '2020-08-19 00:48:41.262', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1997, 'root', 'valuables', 0, '2020-08-19 00:48:42.241', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (1998, 'root', 'valuables', 0, '2020-08-19 00:48:43.131', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (1999, 'root', 'valuables', 0, '2020-08-19 00:48:43.748', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2000, 'root', 'valuables', 0, '2020-08-19 00:48:47.656', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2002, 'root', 'valuables', 0, '2020-08-19 00:48:52.334', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2003, 'root', 'action', 0, '2020-08-19 00:48:57.818', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2004, NULL, 'my', 0, '2020-08-19 00:49:40.074', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2005, 'root', 'action', 0, '2020-08-19 00:49:40.201', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2006, 'root', 'move', 0, '2020-08-19 00:49:41.032', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2007, NULL, 'my', 0, '2020-08-19 00:49:41.062', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2008, 'root', 'action', 1, '2020-08-19 00:49:45.843', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":36,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2009, 'root', 'action', 0, '2020-08-19 00:49:46.071', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2010, 'root', 'action', 1, '2020-08-19 00:49:50.449', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":37,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2011, 'root', 'action', 0, '2020-08-19 00:49:50.821', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2012, 'root', 'action', 1, '2020-08-19 00:49:55.034', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":38,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2013, 'root', 'action', 0, '2020-08-19 00:49:55.41', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2014, 'root', 'action', 1, '2020-08-19 00:49:59.249', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":39,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2015, 'root', 'action', 0, '2020-08-19 00:49:59.597', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2016, 'root', 'action', 1, '2020-08-19 00:50:05.02', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":40,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2017, 'root', 'action', 0, '2020-08-19 00:50:05.387', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2018, 'root', 'action', 1, '2020-08-19 00:50:09.411', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":41,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2019, 'root', 'action', 0, '2020-08-19 00:50:09.779', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2020, 'root', 'action', 1, '2020-08-19 00:50:13.528', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":42,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2021, 'root', 'action', 0, '2020-08-19 00:50:13.903', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2022, 'root', 'action', 1, '2020-08-19 00:50:17.54', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":43,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2023, 'root', 'action', 0, '2020-08-19 00:50:17.903', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2024, 'root', 'action', 1, '2020-08-19 00:50:21.216', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":44,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2025, 'root', 'action', 0, '2020-08-19 00:50:21.58', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2026, 'root', 'action', 1, '2020-08-19 00:50:25.28', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":45,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2027, 'root', 'action', 0, '2020-08-19 00:50:25.64', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2028, 'root', 'action', 0, '2020-08-19 00:50:27.705', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2029, 'root', 'action', 1, '2020-08-19 00:50:32.771', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":46,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2030, 'root', 'action', 0, '2020-08-19 00:50:33.032', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (2031, 'root', 'action', 0, '2020-08-19 00:50:35.607', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2033, 'root', 'action', 0, '2020-08-19 00:50:39.34', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2035, 'root', 'action', 0, '2020-08-19 00:50:46.617', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2036, 'root', 'move', 0, '2020-08-19 00:50:51.976', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2037, 'root', 'move', 0, '2020-08-19 00:50:53.828', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2038, 'root', 'move', 0, '2020-08-19 00:50:55.212', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (2039, 'root', 'move', 0, '2020-08-19 00:50:56.404', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2040, 'root', 'move', 0, '2020-08-19 00:50:56.677', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2042, 'root', 'move', 0, '2020-08-19 00:51:00.711', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2043, 'root', 'move', 0, '2020-08-19 00:51:04.235', '{\"moveId\":[\"75\"]}');
INSERT INTO `log` VALUES (2044, 'root', 'move', 0, '2020-08-19 00:51:04.59', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2045, 'root', 'move', 0, '2020-08-19 00:51:15.214', '{\"moveId\":[\"4\"]}');
INSERT INTO `log` VALUES (2046, 'root', 'move', 0, '2020-08-19 00:51:17.479', '{\"moveId\":[\"32\"]}');
INSERT INTO `log` VALUES (2047, 'root', 'move', 0, '2020-08-19 00:51:22.847', '{\"moveId\":[\"31\"]}');
INSERT INTO `log` VALUES (2048, 'root', 'move', 1, '2020-08-19 00:51:30.805', '[{\"moveAudit\":0,\"moveId\":31,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":111}]');
INSERT INTO `log` VALUES (2049, 'root', 'move', 0, '2020-08-19 00:51:31.179', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2050, 'root', 'move', 1, '2020-08-19 00:51:38.388', '[{\"moveAudit\":0,\"moveId\":32,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":111}]');
INSERT INTO `log` VALUES (2051, 'root', 'move', 0, '2020-08-19 00:51:38.753', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2052, 'root', 'move', 1, '2020-08-19 00:51:43.395', '[{\"moveAudit\":0,\"moveId\":32,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1111}]');
INSERT INTO `log` VALUES (2053, 'root', 'move', 0, '2020-08-19 00:51:43.75', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2054, 'root', 'valuables', 0, '2020-08-19 00:51:50.946', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2055, 'root', 'valuables', 1, '2020-08-19 00:51:58.193', '[{\"valDate\":\"2020-08-16\",\"valId\":58,\"valName\":\"181\",\"valNum\":18,\"valPrice\":18.0,\"valRemark\":\"18\",\"valSpecs\":\"18\",\"valStuName\":\"18\"}]');
INSERT INTO `log` VALUES (2056, 'root', 'valuables', 0, '2020-08-19 00:51:58.436', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2057, 'root', 'action', 0, '2020-08-19 00:52:06.237', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2058, 'root', 'action', 1, '2020-08-19 00:52:12.012', '[{\"actBld\":\"101\",\"actDate\":\"2020-03-16\",\"actDetails\":\"27\",\"actEvaluate\":\"27\",\"actId\":27,\"actRoom\":\"27\"}]');
INSERT INTO `log` VALUES (2059, 'root', 'action', 0, '2020-08-19 00:52:12.256', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2060, 'root', 'action', 1, '2020-08-19 00:52:23.368', '[{\"actBld\":\"1\",\"actDetails\":\"1\",\"actEvaluate\":\"1\",\"actId\":47,\"actRoom\":\"1\"}]');
INSERT INTO `log` VALUES (2061, 'root', 'action', 0, '2020-08-19 00:52:23.615', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2062, NULL, 'my', 0, '2020-08-19 01:15:22.481', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2063, 'root', 'move', 0, '2020-08-19 01:15:22.566', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2064, 'root', 'move', 1, '2020-08-19 01:15:35.994', '[{\"moveAudit\":0,\"moveId\":76,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2065, 'root', 'move', 0, '2020-08-19 01:15:36.202', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2066, 'root', 'move', 1, '2020-08-19 01:15:43.68', '[{\"moveAudit\":0,\"moveId\":77,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2067, 'root', 'move', 0, '2020-08-19 01:15:43.929', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2068, 'root', 'move', 1, '2020-08-19 01:15:49.658', '[{\"moveAudit\":0,\"moveId\":78,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2069, 'root', 'move', 0, '2020-08-19 01:15:49.899', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2070, 'root', 'move', 1, '2020-08-19 01:15:55.555', '[{\"moveAudit\":0,\"moveId\":79,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2071, 'root', 'move', 0, '2020-08-19 01:15:55.925', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2072, 'root', 'move', 1, '2020-08-19 01:16:02.911', '[{\"moveAudit\":0,\"moveId\":80,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2073, 'root', 'move', 0, '2020-08-19 01:16:03.171', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2074, 'root', 'move', 1, '2020-08-19 01:16:08.689', '[{\"moveAudit\":0,\"moveId\":81,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2075, 'root', 'move', 0, '2020-08-19 01:16:08.958', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2076, 'root', 'move', 1, '2020-08-19 01:16:15.246', '[{\"moveAudit\":0,\"moveId\":82,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2077, 'root', 'move', 0, '2020-08-19 01:16:15.639', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2078, 'root', 'move', 1, '2020-08-19 01:16:24.316', '[{\"moveAudit\":0,\"moveId\":83,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2079, 'root', 'move', 0, '2020-08-19 01:16:24.58', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2080, 'root', 'move', 1, '2020-08-19 01:16:31.366', '[{\"moveAudit\":0,\"moveId\":84,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2081, 'root', 'move', 0, '2020-08-19 01:16:31.617', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2082, 'root', 'move', 1, '2020-08-19 01:16:37.686', '[{\"moveAudit\":0,\"moveId\":85,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2083, 'root', 'move', 0, '2020-08-19 01:16:37.943', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2084, 'root', 'move', 0, '2020-08-19 01:16:40.301', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2085, 'root', 'move', 1, '2020-08-19 01:16:46.375', '[{\"moveAudit\":0,\"moveId\":86,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2086, 'root', 'move', 0, '2020-08-19 01:16:46.629', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (2087, 'root', 'move', 0, '2020-08-19 01:16:48.124', '{\"moveId\":[\"86\"]}');
INSERT INTO `log` VALUES (2088, 'root', 'move', 1, '2020-08-19 01:16:55.029', '[{\"moveAudit\":0,\"moveId\":86,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":11}]');
INSERT INTO `log` VALUES (2089, 'root', 'move', 0, '2020-08-19 01:16:55.28', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (2090, 'root', 'move', 0, '2020-08-19 01:17:04.691', '{\"moveId\":[\"86\"]}');
INSERT INTO `log` VALUES (2091, 'root', 'move', 0, '2020-08-19 01:17:04.95', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2092, 'root', 'exits', 0, '2020-08-19 01:50:40.626', NULL);
INSERT INTO `log` VALUES (2093, 'root', 'room', 0, '2020-08-19 01:50:40.629', NULL);
INSERT INTO `log` VALUES (2094, 'root', 'valuables', 0, '2020-08-19 01:50:42.503', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2095, NULL, 'login', 0, '2020-08-19 03:10:53.393', '{\"t\":[\"1597806652531\"]}');
INSERT INTO `log` VALUES (2096, NULL, 'login', 0, '2020-08-19 03:10:53.905', '{\"t\":[\"1597806652531\"]}');
INSERT INTO `log` VALUES (2097, NULL, 'my', 0, '2020-08-19 03:11:07.275', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2098, 'root', 'echart', 0, '2020-08-19 03:11:07.607', NULL);
INSERT INTO `log` VALUES (2099, 'root', 'echart', 0, '2020-08-19 03:11:07.608', NULL);
INSERT INTO `log` VALUES (2100, 'root', 'echart', 0, '2020-08-19 03:11:07.624', NULL);
INSERT INTO `log` VALUES (2101, 'root', 'echart', 0, '2020-08-19 03:11:07.643', NULL);
INSERT INTO `log` VALUES (2102, 'root', 'echart', 0, '2020-08-19 03:11:07.848', NULL);
INSERT INTO `log` VALUES (2103, 'root', 'user', 0, '2020-08-19 03:11:11.491', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2104, 'root', 'room', 0, '2020-08-19 03:11:13.361', NULL);
INSERT INTO `log` VALUES (2105, 'root', 'checkin', 0, '2020-08-19 03:11:13.367', NULL);
INSERT INTO `log` VALUES (2106, 'root', 'checkin', 1, '2020-08-19 03:11:23.605', '{上传文件}');
INSERT INTO `log` VALUES (2107, NULL, 'my', 0, '2020-08-19 03:11:24.682', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2108, 'root', 'room', 0, '2020-08-19 03:11:24.787', NULL);
INSERT INTO `log` VALUES (2109, 'root', 'checkin', 0, '2020-08-19 03:11:24.794', NULL);
INSERT INTO `log` VALUES (2110, 'root', 'move', 0, '2020-08-19 03:11:52.115', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2111, 'root', 'move', 0, '2020-08-19 03:11:53.477', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2112, 'root', 'move', 0, '2020-08-19 03:11:54.482', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2113, 'root', 'move', 1, '2020-08-19 03:12:02.358', '[{\"moveAudit\":0,\"moveId\":87,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2114, 'root', 'move', 0, '2020-08-19 03:12:02.6', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (2115, NULL, 'my', 0, '2020-08-19 03:29:56.92', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2116, 'root', 'enter', 0, '2020-08-19 03:29:57.05', NULL);
INSERT INTO `log` VALUES (2117, 'root', 'enter', 1, '2020-08-19 03:30:07.819', '{上传文件}');
INSERT INTO `log` VALUES (2118, NULL, 'my', 0, '2020-08-19 03:30:08.524', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2119, 'root', 'enter', 0, '2020-08-19 03:30:08.623', NULL);
INSERT INTO `log` VALUES (2120, 'root', 'enter', 1, '2020-08-19 03:30:15.897', '{上传文件}');
INSERT INTO `log` VALUES (2121, NULL, 'my', 0, '2020-08-19 03:30:16.153', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2122, 'root', 'enter', 0, '2020-08-19 03:30:16.225', NULL);
INSERT INTO `log` VALUES (2123, 'root', 'enter', 1, '2020-08-19 03:30:27.523', '{上传文件}');
INSERT INTO `log` VALUES (2124, NULL, 'my', 0, '2020-08-19 03:30:27.749', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2125, 'root', 'enter', 0, '2020-08-19 03:30:27.822', NULL);
INSERT INTO `log` VALUES (2126, NULL, 'my', 0, '2020-08-19 03:35:31.186', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2127, 'root', 'enter', 0, '2020-08-19 03:35:31.28', NULL);
INSERT INTO `log` VALUES (2128, NULL, 'my', 0, '2020-08-19 03:35:31.308', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2129, 'root', 'move', 0, '2020-08-19 03:35:31.327', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2130, NULL, 'my', 0, '2020-08-19 03:35:55.047', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2131, 'root', 'enter', 0, '2020-08-19 03:35:55.136', NULL);
INSERT INTO `log` VALUES (2132, 'root', 'room', 0, '2020-08-19 03:35:57.229', NULL);
INSERT INTO `log` VALUES (2133, 'root', 'room', 0, '2020-08-19 03:35:59.598', NULL);
INSERT INTO `log` VALUES (2134, 'root', 'checkin', 0, '2020-08-19 03:35:59.603', NULL);
INSERT INTO `log` VALUES (2135, 'root', 'enter', 0, '2020-08-19 03:36:01.409', NULL);
INSERT INTO `log` VALUES (2136, 'root', 'room', 0, '2020-08-19 03:36:11.156', NULL);
INSERT INTO `log` VALUES (2137, 'root', 'checkin', 0, '2020-08-19 03:36:12.97', NULL);
INSERT INTO `log` VALUES (2138, 'root', 'room', 0, '2020-08-19 03:36:13.27', NULL);
INSERT INTO `log` VALUES (2139, 'root', 'valuables', 0, '2020-08-19 03:36:14.235', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2140, 'root', 'action', 0, '2020-08-19 03:36:14.501', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2141, 'root', 'move', 0, '2020-08-19 03:36:15.178', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2142, 'root', 'room', 0, '2020-08-19 03:36:17.38', NULL);
INSERT INTO `log` VALUES (2143, 'root', 'checkin', 0, '2020-08-19 03:36:17.385', NULL);
INSERT INTO `log` VALUES (2144, 'root', 'room', 0, '2020-08-19 03:36:18.168', NULL);
INSERT INTO `log` VALUES (2145, 'root', 'enter', 0, '2020-08-19 03:36:19.501', NULL);
INSERT INTO `log` VALUES (2146, 'root', 'move', 0, '2020-08-19 03:36:20.648', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2147, 'root', 'room', 0, '2020-08-19 03:36:22.027', NULL);
INSERT INTO `log` VALUES (2148, 'root', 'exits', 0, '2020-08-19 03:36:22.029', NULL);
INSERT INTO `log` VALUES (2149, 'root', 'room', 0, '2020-08-19 03:36:48.762', NULL);
INSERT INTO `log` VALUES (2150, 'root', 'checkin', 0, '2020-08-19 03:36:48.765', NULL);
INSERT INTO `log` VALUES (2151, 'root', 'move', 0, '2020-08-19 03:37:14.075', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2152, 'root', 'checkin', 0, '2020-08-19 03:37:16.68', NULL);
INSERT INTO `log` VALUES (2153, 'root', 'room', 0, '2020-08-19 03:37:16.974', NULL);
INSERT INTO `log` VALUES (2154, 'root', 'history', 0, '2020-08-19 03:37:23.769', NULL);
INSERT INTO `log` VALUES (2155, 'root', 'visits', 0, '2020-08-19 03:37:24.42', NULL);
INSERT INTO `log` VALUES (2156, 'root', 'valuables', 0, '2020-08-19 03:37:25.539', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2157, 'root', 'stay', 0, '2020-08-19 03:37:26.154', NULL);
INSERT INTO `log` VALUES (2158, 'root', 'room', 0, '2020-08-19 03:37:26.477', NULL);
INSERT INTO `log` VALUES (2159, 'root', 'action', 0, '2020-08-19 03:37:27.878', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2160, 'root', 'repair', 0, '2020-08-19 03:37:28.594', NULL);
INSERT INTO `log` VALUES (2161, 'root', 'room', 0, '2020-08-19 03:37:28.895', NULL);
INSERT INTO `log` VALUES (2162, 'root', 'school', 0, '2020-08-19 03:37:32.018', NULL);
INSERT INTO `log` VALUES (2163, 'root', 'school', 0, '2020-08-19 03:37:32.629', NULL);
INSERT INTO `log` VALUES (2164, 'root', 'colleges', 0, '2020-08-19 03:37:32.946', NULL);
INSERT INTO `log` VALUES (2165, 'root', 'colleges', 0, '2020-08-19 03:37:34.555', NULL);
INSERT INTO `log` VALUES (2166, 'root', 'major', 0, '2020-08-19 03:37:34.563', NULL);
INSERT INTO `log` VALUES (2167, 'root', 'class', 0, '2020-08-19 03:37:35.079', NULL);
INSERT INTO `log` VALUES (2168, 'root', 'major', 0, '2020-08-19 03:37:35.382', NULL);
INSERT INTO `log` VALUES (2169, 'root', 'statistics', 0, '2020-08-19 03:37:36.511', NULL);
INSERT INTO `log` VALUES (2170, 'root', 'statistics', 0, '2020-08-19 03:37:36.511', NULL);
INSERT INTO `log` VALUES (2171, 'root', 'statistics', 0, '2020-08-19 03:37:36.511', NULL);
INSERT INTO `log` VALUES (2172, 'root', 'statistics', 0, '2020-08-19 03:37:36.518', NULL);
INSERT INTO `log` VALUES (2173, 'root', 'statistics', 0, '2020-08-19 03:37:36.532', NULL);
INSERT INTO `log` VALUES (2174, 'root', 'statistics', 0, '2020-08-19 03:37:36.535', NULL);
INSERT INTO `log` VALUES (2175, 'root', 'statistics', 0, '2020-08-19 03:37:36.855', NULL);
INSERT INTO `log` VALUES (2176, 'root', 'statistics', 0, '2020-08-19 03:37:36.866', NULL);
INSERT INTO `log` VALUES (2177, 'root', 'statistics', 0, '2020-08-19 03:37:36.869', NULL);
INSERT INTO `log` VALUES (2178, 'root', 'user', 0, '2020-08-19 03:37:38.735', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2179, 'root', 'role', 1, '2020-08-19 03:37:39.41', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (2180, 'root', 'permission', 1, '2020-08-19 03:37:40.533', NULL);
INSERT INTO `log` VALUES (2181, 'root', 'permission', 1, '2020-08-19 03:37:40.536', NULL);
INSERT INTO `log` VALUES (2182, 'root', 'log', 0, '2020-08-19 03:37:42.844', '{\"logUser\":[\"\"],\"logTable\":[\"\"],\"logType\":[\"\"]}');
INSERT INTO `log` VALUES (2183, 'root', 'room', 0, '2020-08-19 03:38:54.141', NULL);
INSERT INTO `log` VALUES (2184, 'root', 'checkin', 0, '2020-08-19 03:38:54.148', NULL);
INSERT INTO `log` VALUES (2185, 'root', 'room', 0, '2020-08-19 03:38:54.9', NULL);
INSERT INTO `log` VALUES (2186, 'root', 'enter', 0, '2020-08-19 03:38:56.982', NULL);
INSERT INTO `log` VALUES (2187, 'root', 'exits', 0, '2020-08-19 03:38:57.6', NULL);
INSERT INTO `log` VALUES (2188, 'root', 'room', 0, '2020-08-19 03:38:57.913', NULL);
INSERT INTO `log` VALUES (2189, 'root', 'history', 0, '2020-08-19 03:38:58.538', NULL);
INSERT INTO `log` VALUES (2190, 'root', 'visits', 0, '2020-08-19 03:38:59.634', NULL);
INSERT INTO `log` VALUES (2191, 'root', 'stay', 0, '2020-08-19 03:39:01.039', NULL);
INSERT INTO `log` VALUES (2192, 'root', 'room', 0, '2020-08-19 03:39:01.043', NULL);
INSERT INTO `log` VALUES (2193, 'root', 'repair', 0, '2020-08-19 03:39:03.686', NULL);
INSERT INTO `log` VALUES (2194, 'root', 'room', 0, '2020-08-19 03:39:04.003', NULL);
INSERT INTO `log` VALUES (2195, 'root', 'school', 0, '2020-08-19 03:39:06.369', NULL);
INSERT INTO `log` VALUES (2196, 'root', 'school', 0, '2020-08-19 03:39:06.933', NULL);
INSERT INTO `log` VALUES (2197, 'root', 'colleges', 0, '2020-08-19 03:39:07.247', NULL);
INSERT INTO `log` VALUES (2198, 'root', 'major', 0, '2020-08-19 03:39:08.167', NULL);
INSERT INTO `log` VALUES (2199, 'root', 'colleges', 0, '2020-08-19 03:39:08.167', NULL);
INSERT INTO `log` VALUES (2200, 'root', 'room', 0, '2020-08-19 03:41:20.347', NULL);
INSERT INTO `log` VALUES (2201, 'root', 'checkin', 0, '2020-08-19 03:41:20.351', NULL);
INSERT INTO `log` VALUES (2202, 'root', 'checkin', 1, '2020-08-19 03:41:28.417', '{上传文件}');
INSERT INTO `log` VALUES (2203, NULL, 'my', 0, '2020-08-19 03:41:29.451', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2204, 'root', 'room', 0, '2020-08-19 03:41:29.545', NULL);
INSERT INTO `log` VALUES (2205, 'root', 'checkin', 0, '2020-08-19 03:41:29.551', NULL);
INSERT INTO `log` VALUES (2206, 'root', 'room', 0, '2020-08-19 03:41:32.162', NULL);
INSERT INTO `log` VALUES (2207, 'root', 'room', 1, '2020-08-19 03:41:42.877', '{上传文件}');
INSERT INTO `log` VALUES (2208, NULL, 'my', 0, '2020-08-19 03:41:43.487', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2209, 'root', 'room', 0, '2020-08-19 03:41:43.606', NULL);
INSERT INTO `log` VALUES (2210, 'root', 'enter', 0, '2020-08-19 03:41:45.449', NULL);
INSERT INTO `log` VALUES (2211, 'root', 'enter', 1, '2020-08-19 03:41:52.682', '{上传文件}');
INSERT INTO `log` VALUES (2212, NULL, 'my', 0, '2020-08-19 03:41:52.945', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2213, 'root', 'enter', 0, '2020-08-19 03:41:53.02', NULL);
INSERT INTO `log` VALUES (2214, 'root', 'move', 0, '2020-08-19 03:41:57.813', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2215, 'root', 'move', 1, '2020-08-19 03:42:05.213', '[{\"moveAudit\":0,\"moveId\":88,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2216, 'root', 'move', 0, '2020-08-19 03:42:05.45', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (2217, 'root', 'move', 0, '2020-08-19 03:47:54.047', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2218, 'root', 'move', 1, '2020-08-19 03:48:01.579', '[{\"moveAudit\":0,\"moveId\":89,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2219, 'root', 'move', 0, '2020-08-19 03:48:01.836', '{\"pageSize\":[\"10\"],\"currentPage\":[\"3\"]}');
INSERT INTO `log` VALUES (2220, 'root', 'enter', 0, '2020-08-19 03:58:27.107', NULL);
INSERT INTO `log` VALUES (2221, 'root', 'enter', 1, '2020-08-19 03:58:28.478', '{上传文件}');
INSERT INTO `log` VALUES (2222, 'root', 'enter', 0, '2020-08-19 03:58:29.636', NULL);
INSERT INTO `log` VALUES (2223, NULL, 'my', 0, '2020-08-19 03:58:29.64', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2224, 'root', 'enter', 1, '2020-08-19 03:58:31.925', '{上传文件}');
INSERT INTO `log` VALUES (2225, NULL, 'my', 0, '2020-08-19 03:58:32.508', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2226, 'root', 'enter', 0, '2020-08-19 03:58:32.617', NULL);
INSERT INTO `log` VALUES (2227, 'root', 'checkin', 0, '2020-08-19 03:58:37.771', NULL);
INSERT INTO `log` VALUES (2228, 'root', 'room', 0, '2020-08-19 03:58:38.096', NULL);
INSERT INTO `log` VALUES (2229, 'root', 'room', 0, '2020-08-19 03:58:43.931', NULL);
INSERT INTO `log` VALUES (2230, 'root', 'enter', 0, '2020-08-19 03:58:46.838', NULL);
INSERT INTO `log` VALUES (2231, 'root', 'enter', 1, '2020-08-19 03:58:50.103', '{上传文件}');
INSERT INTO `log` VALUES (2232, NULL, 'my', 0, '2020-08-19 03:58:50.364', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2233, 'root', 'enter', 0, '2020-08-19 03:58:50.449', NULL);
INSERT INTO `log` VALUES (2234, 'root', 'enter', 1, '2020-08-19 03:59:02.238', '{上传文件}');
INSERT INTO `log` VALUES (2235, NULL, 'my', 0, '2020-08-19 03:59:02.485', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2236, 'root', 'enter', 0, '2020-08-19 03:59:02.562', NULL);
INSERT INTO `log` VALUES (2237, NULL, 'my', 0, '2020-08-19 03:59:06.255', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2238, 'root', 'enter', 0, '2020-08-19 03:59:06.341', NULL);
INSERT INTO `log` VALUES (2239, 'root', 'move', 0, '2020-08-19 03:59:23.019', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2240, 'root', 'move', 1, '2020-08-19 03:59:24.787', '{上传文件}');
INSERT INTO `log` VALUES (2241, 'root', 'move', 0, '2020-08-19 03:59:25.134', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2242, 'root', 'move', 0, '2020-08-19 03:59:29.033', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2244, 'root', 'move', 0, '2020-08-19 03:59:36.799', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2245, 'root', 'move', 0, '2020-08-19 03:59:39.95', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2246, 'root', 'move', 0, '2020-08-19 03:59:40.988', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2247, 'root', 'enter', 0, '2020-08-19 03:59:46.617', NULL);
INSERT INTO `log` VALUES (2248, 'root', 'enter', 1, '2020-08-19 03:59:53.47', '{上传文件}');
INSERT INTO `log` VALUES (2249, NULL, 'my', 0, '2020-08-19 03:59:53.971', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2250, 'root', 'enter', 0, '2020-08-19 03:59:54.071', NULL);
INSERT INTO `log` VALUES (2251, 'root', 'enter', 0, '2020-08-19 04:00:21.269', '{\"enterId\":[\"4\"]}');
INSERT INTO `log` VALUES (2252, 'root', 'enter', 0, '2020-08-19 04:00:28.329', NULL);
INSERT INTO `log` VALUES (2253, NULL, 'my', 0, '2020-08-19 04:00:28.331', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2254, 'root', 'room', 0, '2020-08-19 04:00:33.216', NULL);
INSERT INTO `log` VALUES (2255, 'root', 'enter', 0, '2020-08-19 04:00:33.614', NULL);
INSERT INTO `log` VALUES (2256, 'root', 'enter', 0, '2020-08-19 04:00:38.796', '{\"enterId\":[\"10\"]}');
INSERT INTO `log` VALUES (2257, 'root', 'enter', 1, '2020-08-19 04:00:41.791', '{上传文件}');
INSERT INTO `log` VALUES (2258, NULL, 'my', 0, '2020-08-19 04:00:42.577', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2259, 'root', 'enter', 0, '2020-08-19 04:00:42.668', NULL);
INSERT INTO `log` VALUES (2260, 'root', 'enter', 0, '2020-08-19 04:01:01.051', '{\"enterId\":[\"10\"]}');
INSERT INTO `log` VALUES (2261, 'root', 'enter', 0, '2020-08-19 04:01:02.035', '{\"enterId\":[\"11\"]}');
INSERT INTO `log` VALUES (2262, 'root', 'enter', 1, '2020-08-19 04:01:09.424', '{上传文件}');
INSERT INTO `log` VALUES (2263, NULL, 'my', 0, '2020-08-19 04:01:09.97', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2264, 'root', 'enter', 0, '2020-08-19 04:01:10.061', NULL);
INSERT INTO `log` VALUES (2265, 'root', 'move', 0, '2020-08-19 04:01:12.44', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2266, 'root', 'move', 1, '2020-08-19 04:01:20.779', '[{\"moveAudit\":0,\"moveId\":32,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":11}]');
INSERT INTO `log` VALUES (2267, 'root', 'move', 0, '2020-08-19 04:01:21.041', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2268, 'root', 'enter', 0, '2020-08-19 04:01:23.703', NULL);
INSERT INTO `log` VALUES (2269, 'root', 'enter', 1, '2020-08-19 04:01:30.91', '{上传文件}');
INSERT INTO `log` VALUES (2270, NULL, 'my', 0, '2020-08-19 04:01:31.449', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2271, 'root', 'enter', 0, '2020-08-19 04:01:31.556', NULL);
INSERT INTO `log` VALUES (2272, 'root', 'enter', 0, '2020-08-19 04:01:41.836', '{\"enterId\":[\"13\"]}');
INSERT INTO `log` VALUES (2273, 'root', 'enter', 1, '2020-08-19 04:01:48.195', '{上传文件}');
INSERT INTO `log` VALUES (2274, NULL, 'my', 0, '2020-08-19 04:01:49.029', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2275, 'root', 'enter', 0, '2020-08-19 04:01:49.14', NULL);
INSERT INTO `log` VALUES (2276, 'root', 'statistics', 0, '2020-08-19 04:38:39.646', NULL);
INSERT INTO `log` VALUES (2277, 'root', 'statistics', 0, '2020-08-19 04:38:39.647', NULL);
INSERT INTO `log` VALUES (2278, 'root', 'statistics', 0, '2020-08-19 04:38:39.647', NULL);
INSERT INTO `log` VALUES (2279, 'root', 'statistics', 0, '2020-08-19 04:38:39.647', NULL);
INSERT INTO `log` VALUES (2280, 'root', 'statistics', 0, '2020-08-19 04:38:39.646', NULL);
INSERT INTO `log` VALUES (2281, 'root', 'statistics', 0, '2020-08-19 04:38:39.647', NULL);
INSERT INTO `log` VALUES (2282, 'root', 'statistics', 0, '2020-08-19 04:38:40.19', NULL);
INSERT INTO `log` VALUES (2283, 'root', 'statistics', 0, '2020-08-19 04:38:40.313', NULL);
INSERT INTO `log` VALUES (2284, 'root', 'statistics', 0, '2020-08-19 04:38:40.467', NULL);
INSERT INTO `log` VALUES (2285, 'root', 'user', 0, '2020-08-19 04:38:40.566', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2286, 'root', 'role', 1, '2020-08-19 04:38:43.096', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (2287, 'root', 'user', 0, '2020-08-19 04:38:43.966', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2288, 'root', 'role', 1, '2020-08-19 04:38:50.444', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (2289, 'root', 'permission', 1, '2020-08-19 04:38:51.066', NULL);
INSERT INTO `log` VALUES (2290, 'root', 'permission', 1, '2020-08-19 04:38:51.364', NULL);
INSERT INTO `log` VALUES (2291, 'root', 'user', 0, '2020-08-19 04:39:16.72', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2292, 'root', 'valuables', 0, '2020-08-19 04:39:25.07', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2293, NULL, 'login', 0, '2020-08-19 04:42:11.27', '{\"t\":[\"1597812130560\"]}');
INSERT INTO `log` VALUES (2294, NULL, 'login', 0, '2020-08-19 04:42:11.294', '{\"t\":[\"1597812130560\"]}');
INSERT INTO `log` VALUES (2295, NULL, 'login', 0, '2020-08-19 04:44:57.622', '{\"t\":[\"1597812297582\"]}');
INSERT INTO `log` VALUES (2296, NULL, 'login', 0, '2020-08-19 04:44:57.643', '{\"t\":[\"1597812297582\"]}');
INSERT INTO `log` VALUES (2297, NULL, 'login', 0, '2020-08-19 05:06:52.347', '{\"t\":[\"1597813611489\"]}');
INSERT INTO `log` VALUES (2298, NULL, 'login', 0, '2020-08-19 05:06:52.967', '{\"t\":[\"1597813611489\"]}');
INSERT INTO `log` VALUES (2299, NULL, 'login', 0, '2020-08-19 05:06:59.897', '{\"t\":[\"1597813619852\"]}');
INSERT INTO `log` VALUES (2300, NULL, 'login', 0, '2020-08-19 05:06:59.915', '{\"t\":[\"1597813619852\"]}');
INSERT INTO `log` VALUES (2301, NULL, 'my', 0, '2020-08-19 05:07:05.785', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2302, 'root', 'echart', 0, '2020-08-19 05:07:05.826', NULL);
INSERT INTO `log` VALUES (2303, 'root', 'echart', 0, '2020-08-19 05:07:06.056', NULL);
INSERT INTO `log` VALUES (2304, 'root', 'echart', 0, '2020-08-19 05:07:06.059', NULL);
INSERT INTO `log` VALUES (2305, 'root', 'echart', 0, '2020-08-19 05:07:06.06', NULL);
INSERT INTO `log` VALUES (2306, 'root', 'echart', 0, '2020-08-19 05:07:06.194', NULL);
INSERT INTO `log` VALUES (2307, 'root', 'statistics', 0, '2020-08-19 05:07:09.567', NULL);
INSERT INTO `log` VALUES (2308, 'root', 'statistics', 0, '2020-08-19 05:07:09.567', NULL);
INSERT INTO `log` VALUES (2309, 'root', 'statistics', 0, '2020-08-19 05:07:09.575', NULL);
INSERT INTO `log` VALUES (2310, 'root', 'statistics', 0, '2020-08-19 05:07:09.578', NULL);
INSERT INTO `log` VALUES (2311, 'root', 'statistics', 0, '2020-08-19 05:07:09.589', NULL);
INSERT INTO `log` VALUES (2312, 'root', 'statistics', 0, '2020-08-19 05:07:09.594', NULL);
INSERT INTO `log` VALUES (2313, 'root', 'statistics', 0, '2020-08-19 05:07:09.926', NULL);
INSERT INTO `log` VALUES (2314, 'root', 'statistics', 0, '2020-08-19 05:07:09.934', NULL);
INSERT INTO `log` VALUES (2315, 'root', 'statistics', 0, '2020-08-19 05:07:09.939', NULL);
INSERT INTO `log` VALUES (2316, 'root', 'user', 0, '2020-08-19 05:07:10.92', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2317, NULL, 'my', 0, '2020-08-19 05:08:52.82', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2318, 'root', 'user', 0, '2020-08-19 05:08:52.916', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2319, 'root', 'role', 1, '2020-08-19 05:08:54.468', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (2320, 'root', 'user', 0, '2020-08-19 05:08:55.53', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2321, 'root', 'role', 1, '2020-08-19 05:08:56.917', '[{\"currentPage\":1,\"pageSize\":10,\"title\":\"1\"}]');
INSERT INTO `log` VALUES (2322, 'root', 'user', 0, '2020-08-19 05:08:58.53', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2323, 'root', 'user', 0, '2020-08-19 05:10:32.217', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2324, 'root', 'user', 0, '2020-08-19 05:10:35.64', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2325, NULL, 'my', 0, '2020-08-19 05:10:35.636', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2326, 'root', 'user', 1, '2020-08-19 05:10:46.656', '[{\"accountNonExpired\":true,\"accountNonLocked\":true,\"credentialsNonExpired\":true,\"enabled\":true,\"password\":\"1\",\"sex\":1,\"userId\":0,\"userNickname\":\"1\",\"userPassword\":\"1\",\"userRoot\":1,\"userTell\":\"1\",\"username\":\"1\"}]');
INSERT INTO `log` VALUES (2327, 'root', 'user', 1, '2020-08-19 05:11:09.584', '[{\"accountNonExpired\":true,\"accountNonLocked\":true,\"credentialsNonExpired\":true,\"enabled\":true,\"password\":\"$2a$10$0RI7GSj1b3y46ubdaTDrWOd55m.RhNPq.y0Q8LAdGUBAdN/MEcOga\",\"sex\":1,\"userId\":16,\"userNickname\":\"22\",\"userPassword\":\"$2a$10$0RI7GSj1b3y46ubdaTDrWOd55m.RhNPq.y0Q8LAdGUBAdN/MEcOga\",\"userRoot\":22,\"userTell\":\"22\",\"username\":\"22\"}]');
INSERT INTO `log` VALUES (2328, 'root', 'user', 0, '2020-08-19 05:11:09.749', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2329, 'root', 'role', 1, '2020-08-19 05:11:20.863', NULL);
INSERT INTO `log` VALUES (2330, 'root', 'role', 0, '2020-08-19 05:11:21.112', '{\"userId\":[\"16\"]}');
INSERT INTO `log` VALUES (2331, 'root', 'role', 1, '2020-08-19 05:11:21.221', NULL);
INSERT INTO `log` VALUES (2332, 'root', 'role', 0, '2020-08-19 05:11:21.501', '{\"userId\":[\"16\"]}');
INSERT INTO `log` VALUES (2333, 'root', 'role', 1, '2020-08-19 05:11:24.647', '[{\"id\":27,\"roleId\":17,\"userId\":16}]');
INSERT INTO `log` VALUES (2334, 'root', 'user', 0, '2020-08-19 05:13:23.782', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2335, 'root', 'user', 0, '2020-08-19 05:13:27.126', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2336, 'root', 'user', 0, '2020-08-19 05:13:29.527', '{\"userId\":[\"16\"]}');
INSERT INTO `log` VALUES (2337, 'root', 'user', 0, '2020-08-19 05:13:29.887', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2338, 'root', 'user', 0, '2020-08-19 05:13:37.583', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2339, 'root', 'user', 0, '2020-08-19 05:13:38.266', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2340, 'root', 'user', 0, '2020-08-19 05:13:41.591', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2341, 'root', 'user', 0, '2020-08-19 05:13:52.639', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2342, 'root', 'user', 0, '2020-08-19 05:13:58.417', '{\"userId\":[\"15\"]}');
INSERT INTO `log` VALUES (2343, 'root', 'user', 0, '2020-08-19 05:13:58.68', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2344, 'root', 'move', 0, '2020-08-19 05:14:20.049', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2345, 'root', 'move', 0, '2020-08-19 05:14:35.033', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2346, 'root', 'move', 0, '2020-08-19 05:14:39.573', '{\"moveId\":[\"89\"]}');
INSERT INTO `log` VALUES (2347, 'root', 'move', 0, '2020-08-19 05:14:39.912', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2348, 'root', 'move', 0, '2020-08-19 05:14:41.832', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2349, 'root', 'move', 1, '2020-08-19 05:14:53.078', '[{\"moveAudit\":0,\"moveId\":90,\"moveNewBld\":\"3\",\"moveNewRoom\":\"3\",\"moveOldBld\":\"3\",\"moveOldRoom\":\"3\",\"moveReason\":\"3\",\"moveStuName\":\"3\",\"moveStuNo\":3}]');
INSERT INTO `log` VALUES (2350, 'root', 'move', 0, '2020-08-19 05:14:53.327', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2351, 'root', 'move', 0, '2020-08-19 05:15:08.1', '{\"moveId\":[\"90\"]}');
INSERT INTO `log` VALUES (2352, 'root', 'move', 0, '2020-08-19 05:15:08.335', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2353, 'root', 'move', 0, '2020-08-19 05:15:10.174', '{\"moveId\":[\"88\"]}');
INSERT INTO `log` VALUES (2354, 'root', 'move', 0, '2020-08-19 05:15:10.534', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2355, 'root', 'move', 0, '2020-08-19 05:15:12.126', '{\"moveId\":[\"87\"]}');
INSERT INTO `log` VALUES (2356, 'root', 'move', 0, '2020-08-19 05:15:12.462', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2357, 'root', 'move', 1, '2020-08-19 05:15:19.933', '[{\"moveAudit\":0,\"moveId\":91,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":1}]');
INSERT INTO `log` VALUES (2358, 'root', 'move', 0, '2020-08-19 05:15:20.304', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2359, 'root', 'move', 1, '2020-08-19 05:15:22.25', '{上传文件}');
INSERT INTO `log` VALUES (2360, 'root', 'move', 0, '2020-08-19 05:15:22.628', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2361, 'root', 'move', 1, '2020-08-19 05:15:27.832', '[{\"moveAudit\":1,\"moveId\":91,\"moveNewBld\":\"1\",\"moveNewRoom\":\"1\",\"moveOldBld\":\"1\",\"moveOldRoom\":\"1\",\"moveReason\":\"1\",\"moveStuName\":\"1\",\"moveStuNo\":111}]');
INSERT INTO `log` VALUES (2362, 'root', 'move', 0, '2020-08-19 05:15:28.191', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2366, 'root', 'user', 0, '2020-08-19 05:15:46.884', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2367, 'root', 'user', 0, '2020-08-19 05:15:49.272', '{\"userId\":[\"13\"]}');
INSERT INTO `log` VALUES (2368, 'root', 'user', 0, '2020-08-19 05:15:49.613', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2369, 'root', 'user', 1, '2020-08-19 05:15:58.909', '[{\"accountNonExpired\":true,\"accountNonLocked\":true,\"credentialsNonExpired\":true,\"enabled\":true,\"password\":\"$2a$10$n5FBcFFwkj1rGmX8tFvvEOnTPlTHaLjCm32j2ck2xrlemi7bC2lzG\",\"sex\":1,\"userId\":17,\"userNickname\":\"7\",\"userPassword\":\"$2a$10$n5FBcFFwkj1rGmX8tFvvEOnTPlTHaLjCm32j2ck2xrlemi7bC2lzG\",\"userRoot\":7,\"userTell\":\"7\",\"username\":\"7\"}]');
INSERT INTO `log` VALUES (2370, 'root', 'user', 0, '2020-08-19 05:15:59.273', '{\"pageSize\":[\"10\"],\"currentPage\":[\"2\"]}');
INSERT INTO `log` VALUES (2371, 'root', 'user', 0, '2020-08-19 05:16:04.936', '{\"userName\":[\"8\"],\"userTell\":[\"8\"]}');
INSERT INTO `log` VALUES (2372, 'root', 'user', 0, '2020-08-19 05:16:07.421', '{\"pageSize\":[\"10\"],\"currentPage\":[\"1\"]}');
INSERT INTO `log` VALUES (2377, NULL, 'my', 0, '2020-08-19 05:29:14.587', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2384, NULL, 'my', 0, '2020-08-19 05:35:06.735', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2388, NULL, 'my', 0, '2020-08-19 05:37:18.061', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2390, NULL, 'login', 0, '2020-08-19 05:39:32.932', '{\"t\":[\"1597815572266\"]}');
INSERT INTO `log` VALUES (2391, NULL, 'login', 0, '2020-08-19 05:39:32.964', '{\"t\":[\"1597815572266\"]}');
INSERT INTO `log` VALUES (2392, NULL, 'my', 0, '2020-08-19 05:39:46.455', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2412, NULL, 'my', 0, '2020-08-19 05:43:35.429', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2414, NULL, 'my', 0, '2020-08-19 05:44:17.055', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2415, NULL, 'my', 0, '2020-08-19 05:45:06.264', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2451, NULL, 'my', 0, '2020-08-19 06:21:03.502', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2466, NULL, 'my', 0, '2020-08-19 06:26:15.052', '{\"userId\":[\"1\"]}');
INSERT INTO `log` VALUES (2470, NULL, 'my', 0, '2020-08-19 06:26:29.965', '{\"userId\":[\"1\"]}');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `major_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业编号',
  `major_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名',
  `major_college` int(11) NULL DEFAULT NULL COMMENT '所属院系',
  `major_state` int(1) NULL DEFAULT 0 COMMENT '当前使用状态',
  PRIMARY KEY (`major_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '1001001', '移动应用开发', 1001, 1);
INSERT INTO `major` VALUES (2, '1001002', '软件开发', 1001, 1);
INSERT INTO `major` VALUES (3, '1002003', '商务英语', 1002, 1);
INSERT INTO `major` VALUES (4, '1002004', '日语', 1002, 1);
INSERT INTO `major` VALUES (5, '1009005', '汽修', 1009, 1);

-- ----------------------------
-- Table structure for move
-- ----------------------------
DROP TABLE IF EXISTS `move`;
CREATE TABLE `move`  (
  `move_id` int(11) NOT NULL AUTO_INCREMENT,
  `move_stu_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `move_stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请学生姓名',
  `move_old_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原宿舍楼',
  `move_old_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原宿舍号',
  `move_new_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请宿舍楼',
  `move_new_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请宿舍号',
  `move_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请调宿原因',
  `move_audit` int(11) NULL DEFAULT 0 COMMENT '审核情况',
  PRIMARY KEY (`move_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of move
-- ----------------------------
INSERT INTO `move` VALUES (1, '201900', 'b', 'a栋', '101', 'b栋', '101', 'a宿是男舍', 0);
INSERT INTO `move` VALUES (4, '2', '222', '2', '2', '2', '2', '2', 1);
INSERT INTO `move` VALUES (6, '3', '3', '3', '3', '3', '3', '3', 1);
INSERT INTO `move` VALUES (7, '4', '4', '4', '4', '4', '4', '4', 1);
INSERT INTO `move` VALUES (9, '6', '6', '6', '6', '6', '6', '6', 1);
INSERT INTO `move` VALUES (15, '9', '9', '9', '9', '9', '9', '9', 1);
INSERT INTO `move` VALUES (24, '24', '24', '24', '24', '24', '24', '24', 1);
INSERT INTO `move` VALUES (30, '30', '30', '30', '30', '30', '30', '30', 1);
INSERT INTO `move` VALUES (31, '111', '1', '1', '1', '1', '1', '1', 1);
INSERT INTO `move` VALUES (32, '11', '1', '1', '1', '1', '1', '1', 0);
INSERT INTO `move` VALUES (91, '111', '1', '1', '1', '1', '1', '1', 1);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `parent_id` mediumint(9) NULL DEFAULT NULL COMMENT '父权限id',
  `parent_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父权限名',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权标识符',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由地址',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权路径',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '序号',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型（0目录，1菜单，2按钮）',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `is_home` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 6, '顶级菜单', '入住人员管理', 'sys:checkin', '/checkin', '入住人员管理', '/manage/Checkin/Checkin', 0, '1', 'el-icon-s-custom', '机构管理', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (2, 6, '入宿相关管理', '宿舍房间管理', 'sys:room', '/room', '宿舍房间管理', '/manage/Room/Room', 1, '1', 'el-icon-s-home', 'undefined', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (3, 6, '入宿相关管理', '学生入宿管理', 'sys:enter', '/enter', '学生入宿管理', '/manage/Enter/Enter', 2, '1', 'el-icon-right', 'undefined', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (4, 6, '入宿相关管理', '学生调宿管理', 'sys:move', '/move', '学生调宿管理', '/manage/Move/Move', 3, '1', 'el-icon-top-right', 'undefined', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (5, 6, '入宿相关管理', '学生退宿管理', 'sys:exit', '/exit', '学生退宿管理', '/manage/Exit/Exit', 4, '1', 'el-icon-back', 'undefined', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (6, 0, '顶级菜单', '入宿相关管理', 'sys:manage', '/manage', '入宿相关管理', NULL, 0, '0', 'el-icon-s-order', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (7, 13, NULL, '历史住宿记录管理', 'sys:history', '/history', '历史住宿记录管理', '/register/History/History', 0, '1', 'el-icon-date', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (8, 13, '登记管理', '访客管理', 'sys:visit', '/visit', '访客管理', '/register/Visit/Visit', 1, '1', 'el-icon-document-copy', 'undefined', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (9, 13, NULL, '贵重物品放行管理', 'sys:valuables', '/valuables', '贵重物品放行管理', '/register/Valuables/Valuables', 2, '1', 'el-icon-s-goods', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (10, 13, NULL, '留宿管理', 'sys:stay', '/stay', '留宿管理', '/register/Stay/Stay', 3, '1', 'el-icon-bottom', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (11, 13, NULL, '操行记录管理', 'sys:action', '/action', '操行记录管理', '/register/Action/Action', 4, '1', 'el-icon-notebook-1', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (12, 13, NULL, '设施维护管理', 'sys:repair', '/repair', '设施维护管理', '/register/Repair/Repair', 5, '1', 'el-icon-suitcase-1', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (13, 0, '顶级菜单', '登记管理', 'sys:register', '/register', '登记管理', NULL, 1, '0', 'el-icon-edit-outline', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (14, 17, NULL, '学院相关设置', 'sys:college', '/college', '学院相关设置', '', 0, '1', 'el-icon-school', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (15, 17, NULL, '查询统计', 'sys:query', '/query', '查询统计', '/other/Query/Query', 1, '1', 'el-icon-pie-chart', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (16, 17, NULL, '用户与权限管理', 'sys:demo', '/demo', '用户与权限管理', '', 2, '1', 'el-icon-folder', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (17, 0, '顶级菜单', '其他操作', 'sys:other', '/other', '其他操作', NULL, 2, '0', 'el-icon-menu', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (18, 20, '系统工具', '操作日志', 'sys:log', '/log', '代码生成', '/system/Log/Log', 0, '1', 'el-icon-files', 'undefined', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (20, 0, '顶级菜单', '系统工具', 'sys:systemConfig', '/system', '系统工具', NULL, 3, '0', 'el-icon-receiving', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (21, 14, NULL, '校区设置', 'sys:school', '/school', '校区设置', '/other/College/School/School', 0, '1', 'el-icon-school', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (22, 14, NULL, '院系设置', 'sys:colleges', '/colleges', '院系设置', '/other/College/Colleges/Colleges', 1, '1', 'el-icon-school', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (23, 14, NULL, '专业设置', 'sys:major', '/major', '专业设置', '/other/College/Major/Major', 2, '1', 'el-icon-school', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (24, 14, NULL, '班级设置', 'sys:class', '/class', '班级设置', '/other/College/Class/Class', 3, '1', 'el-icon-school', NULL, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (25, 16, '用户与权限管理', '用户管理', 'sys:user', '/user', '用户管理', '/other/Role/User/User', 0, '1', 'el-icon-s-custom', 'undefined', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (26, 16, '用户与权限管理', '角色管理', 'sys:role', '/role', '角色管理', '/other/Role/Role/Role', 1, '1', 'el-icon-rank', 'undefined', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (27, 16, '用户与权限管理', '权限管理', 'sys:permission', '/permission', '权限管理', '/other/Role/Permission/Permission', 2, '1', 'el-icon-menu', 'undefined', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `rep_id` int(11) NOT NULL AUTO_INCREMENT,
  `rep_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `rep_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍楼',
  `rep_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `rep_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '维护设备详情',
  `rep_state` int(11) NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`rep_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES (1, '小志', 'a栋', '101', '空调制冷故障', 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色说明',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '拥有所有的权限', NULL, '2020-08-13 07:42:04.508');
INSERT INTO `role` VALUES (2, '普通管理员', '拥有查看的权限', NULL, NULL);
INSERT INTO `role` VALUES (3, '用户管理员', '用户管理员', NULL, NULL);
INSERT INTO `role` VALUES (6, '学生管理员', '学生管理员', NULL, NULL);
INSERT INTO `role` VALUES (7, '入住管理员', '入住管理员', '2020-08-13 07:44:50.175', NULL);
INSERT INTO `role` VALUES (8, '学院管理员', '学院管理员', '2020-08-13 07:45:31.653', NULL);
INSERT INTO `role` VALUES (9, '宿舍房间管理员', '宿舍房间管理员', '2020-08-13 07:45:42.96', '2020-08-15 13:07:56.426');
INSERT INTO `role` VALUES (10, '调宿管理员', '调宿管理员', '2020-08-13 07:46:25.98', '2020-08-13 07:48:12.046');
INSERT INTO `role` VALUES (11, '退宿管理员', '退宿管理员', '2020-08-13 07:46:51.071', NULL);
INSERT INTO `role` VALUES (12, '权限管理员', '权限管理员', '2020-08-13 07:47:24.291', NULL);
INSERT INTO `role` VALUES (20, '日志管理员', '日志管理员', '2020-08-19 08:14:13.845', NULL);

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `permission_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 1, 1);
INSERT INTO `role_permission` VALUES (2, 1, 2);
INSERT INTO `role_permission` VALUES (3, 1, 3);
INSERT INTO `role_permission` VALUES (4, 1, 4);
INSERT INTO `role_permission` VALUES (5, 1, 5);
INSERT INTO `role_permission` VALUES (6, 1, 6);
INSERT INTO `role_permission` VALUES (7, 1, 7);
INSERT INTO `role_permission` VALUES (8, 1, 8);
INSERT INTO `role_permission` VALUES (9, 1, 9);
INSERT INTO `role_permission` VALUES (10, 1, 10);
INSERT INTO `role_permission` VALUES (11, 1, 11);
INSERT INTO `role_permission` VALUES (12, 1, 12);
INSERT INTO `role_permission` VALUES (13, 1, 13);
INSERT INTO `role_permission` VALUES (14, 1, 14);
INSERT INTO `role_permission` VALUES (15, 1, 15);
INSERT INTO `role_permission` VALUES (16, 1, 16);
INSERT INTO `role_permission` VALUES (17, 1, 17);
INSERT INTO `role_permission` VALUES (18, 1, 18);
INSERT INTO `role_permission` VALUES (19, 1, 19);
INSERT INTO `role_permission` VALUES (20, 1, 20);
INSERT INTO `role_permission` VALUES (21, 1, 21);
INSERT INTO `role_permission` VALUES (22, 1, 22);
INSERT INTO `role_permission` VALUES (23, 1, 23);
INSERT INTO `role_permission` VALUES (24, 1, 24);
INSERT INTO `role_permission` VALUES (25, 1, 25);
INSERT INTO `role_permission` VALUES (26, 1, 26);
INSERT INTO `role_permission` VALUES (27, 1, 27);
INSERT INTO `role_permission` VALUES (31, 15, 26);
INSERT INTO `role_permission` VALUES (32, 15, 27);
INSERT INTO `role_permission` VALUES (33, 6, 1);
INSERT INTO `role_permission` VALUES (34, 6, 2);
INSERT INTO `role_permission` VALUES (35, 6, 3);
INSERT INTO `role_permission` VALUES (36, 6, 4);
INSERT INTO `role_permission` VALUES (37, 6, 5);
INSERT INTO `role_permission` VALUES (38, 6, 6);
INSERT INTO `role_permission` VALUES (39, 20, 20);
INSERT INTO `role_permission` VALUES (40, 20, 18);
INSERT INTO `role_permission` VALUES (41, 12, 17);
INSERT INTO `role_permission` VALUES (42, 12, 16);
INSERT INTO `role_permission` VALUES (43, 12, 25);
INSERT INTO `role_permission` VALUES (44, 12, 26);
INSERT INTO `role_permission` VALUES (45, 12, 27);
INSERT INTO `role_permission` VALUES (46, 11, 6);
INSERT INTO `role_permission` VALUES (47, 11, 5);
INSERT INTO `role_permission` VALUES (48, 10, 6);
INSERT INTO `role_permission` VALUES (49, 10, 4);
INSERT INTO `role_permission` VALUES (50, 9, 6);
INSERT INTO `role_permission` VALUES (51, 9, 2);
INSERT INTO `role_permission` VALUES (52, 8, 17);
INSERT INTO `role_permission` VALUES (53, 8, 14);
INSERT INTO `role_permission` VALUES (54, 8, 21);
INSERT INTO `role_permission` VALUES (55, 8, 22);
INSERT INTO `role_permission` VALUES (56, 8, 23);
INSERT INTO `role_permission` VALUES (57, 8, 24);
INSERT INTO `role_permission` VALUES (58, 7, 6);
INSERT INTO `role_permission` VALUES (59, 7, 1);
INSERT INTO `role_permission` VALUES (63, 2, 6);
INSERT INTO `role_permission` VALUES (64, 2, 1);
INSERT INTO `role_permission` VALUES (65, 2, 2);
INSERT INTO `role_permission` VALUES (66, 2, 3);
INSERT INTO `role_permission` VALUES (67, 2, 4);
INSERT INTO `role_permission` VALUES (68, 2, 5);
INSERT INTO `role_permission` VALUES (69, 2, 13);
INSERT INTO `role_permission` VALUES (70, 2, 7);
INSERT INTO `role_permission` VALUES (71, 2, 8);
INSERT INTO `role_permission` VALUES (72, 2, 9);
INSERT INTO `role_permission` VALUES (73, 2, 10);
INSERT INTO `role_permission` VALUES (74, 2, 11);
INSERT INTO `role_permission` VALUES (75, 2, 12);
INSERT INTO `role_permission` VALUES (76, 2, 17);
INSERT INTO `role_permission` VALUES (77, 2, 14);
INSERT INTO `role_permission` VALUES (78, 2, 21);
INSERT INTO `role_permission` VALUES (79, 2, 22);
INSERT INTO `role_permission` VALUES (80, 2, 23);
INSERT INTO `role_permission` VALUES (81, 2, 24);
INSERT INTO `role_permission` VALUES (82, 2, 15);
INSERT INTO `role_permission` VALUES (83, 3, 17);
INSERT INTO `role_permission` VALUES (84, 3, 16);
INSERT INTO `role_permission` VALUES (85, 3, 25);

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属宿舍楼',
  `room_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `room_type` int(11) NULL DEFAULT 0 COMMENT '房间类型',
  `room_cost` double NULL DEFAULT NULL COMMENT '宿舍费用',
  `room_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间分布',
  `room_state` int(11) NULL DEFAULT 0 COMMENT '当前状态',
  `nums` int(11) NULL DEFAULT NULL COMMENT '统计',
  PRIMARY KEY (`room_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, '1', '101', 0, 1200, 'a栋1楼', 2, NULL);
INSERT INTO `room` VALUES (2, '1', '102', 0, 1200, 'a栋1楼', 0, NULL);
INSERT INTO `room` VALUES (3, '1', '201', 0, 1800, 'a栋2楼', 2, NULL);
INSERT INTO `room` VALUES (4, '2', '101', 2, 800, 'b栋1楼', 2, NULL);
INSERT INTO `room` VALUES (6, '1', '103', 0, 1200, 'a1', 1, NULL);
INSERT INTO `room` VALUES (10, '1', '104', 1, NULL, '1', 2, NULL);
INSERT INTO `room` VALUES (11, '1', '105', 2, NULL, '1', 1, NULL);
INSERT INTO `room` VALUES (12, '1', '106', 1, NULL, '1', 0, NULL);
INSERT INTO `room` VALUES (13, '1', '107', 1, NULL, '1', 1, NULL);
INSERT INTO `room` VALUES (14, '1', '108', 1, NULL, '1', 1, NULL);
INSERT INTO `room` VALUES (15, '1', '109', 0, NULL, '1', 2, NULL);
INSERT INTO `room` VALUES (16, '1', '110', 0, NULL, '1', 2, NULL);
INSERT INTO `room` VALUES (17, '1', '111', 1, NULL, '2', 1, NULL);
INSERT INTO `room` VALUES (18, '1', '112', 0, NULL, '2', 2, NULL);
INSERT INTO `room` VALUES (19, '1', '113', 2, NULL, '2', 1, NULL);
INSERT INTO `room` VALUES (20, '1', '114', 0, NULL, '2', 0, NULL);
INSERT INTO `room` VALUES (21, '1', '115', 2, NULL, '2', 2, NULL);
INSERT INTO `room` VALUES (22, '1', '116', 1, NULL, '2', 2, NULL);
INSERT INTO `room` VALUES (23, '1', '117', 1, NULL, '2', 1, NULL);
INSERT INTO `room` VALUES (24, '1', '118', 1, NULL, '2', 0, NULL);
INSERT INTO `room` VALUES (25, '1', '119', 2, NULL, '2', 1, NULL);
INSERT INTO `room` VALUES (26, '1', '120', 0, NULL, '2', 0, NULL);
INSERT INTO `room` VALUES (27, '1', '121', 2, NULL, '3', 0, NULL);
INSERT INTO `room` VALUES (28, '1', '122', 0, NULL, '3', 2, NULL);
INSERT INTO `room` VALUES (29, '1', '123', 1, NULL, '3', 0, NULL);
INSERT INTO `room` VALUES (30, '1', '124', 1, NULL, '3', 2, NULL);
INSERT INTO `room` VALUES (31, '1', '125', 2, NULL, '3', 0, NULL);
INSERT INTO `room` VALUES (32, '1', '126', 2, NULL, '3', 0, NULL);
INSERT INTO `room` VALUES (33, '1', '127', 0, NULL, '3', 2, NULL);
INSERT INTO `room` VALUES (34, '1', '128', 0, NULL, '3', 0, NULL);
INSERT INTO `room` VALUES (35, '1', '129', 2, NULL, '3', 2, NULL);
INSERT INTO `room` VALUES (36, '1', '130', 2, NULL, '3', 2, NULL);
INSERT INTO `room` VALUES (37, '1', '131', 1, NULL, '4', 2, NULL);
INSERT INTO `room` VALUES (38, '1', '132', 2, NULL, '4', 0, NULL);
INSERT INTO `room` VALUES (39, '1', '133', 2, NULL, '4', 2, NULL);
INSERT INTO `room` VALUES (40, '1', '134', 0, NULL, '4', 2, NULL);
INSERT INTO `room` VALUES (41, '1', '135', 0, NULL, '4', 1, NULL);
INSERT INTO `room` VALUES (42, '1', '136', 1, NULL, '4', 2, NULL);
INSERT INTO `room` VALUES (43, '1', '137', 2, NULL, '4', 2, NULL);
INSERT INTO `room` VALUES (44, '1', '138', 0, NULL, '4', 0, NULL);
INSERT INTO `room` VALUES (45, '1', '139', 2, NULL, '4', 0, NULL);
INSERT INTO `room` VALUES (46, '1', '140', 1, NULL, '4', 0, NULL);
INSERT INTO `room` VALUES (47, '1', '141', 0, NULL, '5', 1, NULL);
INSERT INTO `room` VALUES (48, '1', '142', 2, NULL, '5', 1, NULL);
INSERT INTO `room` VALUES (49, '1', '143', 1, NULL, '5', 0, NULL);
INSERT INTO `room` VALUES (50, '1', '144', 2, NULL, '5', 1, NULL);
INSERT INTO `room` VALUES (51, '1', '145', 1, NULL, '5', 1, NULL);
INSERT INTO `room` VALUES (52, '1', '146', 0, NULL, '5', 2, NULL);
INSERT INTO `room` VALUES (53, '1', '147', 0, NULL, '5', 0, NULL);
INSERT INTO `room` VALUES (54, '1', '148', 1, NULL, '5', 2, NULL);
INSERT INTO `room` VALUES (55, '1', '149', 2, NULL, '5', 0, NULL);
INSERT INTO `room` VALUES (56, '1', '150', 2, NULL, '5', 1, NULL);
INSERT INTO `room` VALUES (57, '1', '151', 1, NULL, '6', 1, NULL);
INSERT INTO `room` VALUES (58, '1', '152', 0, NULL, '6', 1, NULL);
INSERT INTO `room` VALUES (59, '1', '153', 1, NULL, '6', 1, NULL);
INSERT INTO `room` VALUES (60, '1', '154', 2, NULL, '6', 1, NULL);
INSERT INTO `room` VALUES (61, '1', '155', 2, NULL, '6', 2, NULL);
INSERT INTO `room` VALUES (62, '1', '156', 1, NULL, '6', 2, NULL);
INSERT INTO `room` VALUES (63, '1', '157', 0, NULL, '6', 1, NULL);
INSERT INTO `room` VALUES (64, '1', '158', 2, NULL, '6', 1, NULL);
INSERT INTO `room` VALUES (65, '1', '159', 0, NULL, '6', 2, NULL);
INSERT INTO `room` VALUES (66, '1', '160', 2, NULL, '6', 2, NULL);
INSERT INTO `room` VALUES (67, '1', '161', 2, NULL, '7', 2, NULL);
INSERT INTO `room` VALUES (68, '1', '162', 2, NULL, '7', 2, NULL);
INSERT INTO `room` VALUES (69, '1', '163', 2, NULL, '7', 0, NULL);
INSERT INTO `room` VALUES (70, '1', '164', 0, NULL, '7', 1, NULL);
INSERT INTO `room` VALUES (71, '1', '165', 2, NULL, '7', 1, NULL);
INSERT INTO `room` VALUES (72, '1', '166', 2, NULL, '7', 1, NULL);
INSERT INTO `room` VALUES (73, '1', '167', 2, NULL, '7', 0, NULL);
INSERT INTO `room` VALUES (74, '1', '168', 1, NULL, '7', 1, NULL);
INSERT INTO `room` VALUES (75, '1', '169', 0, NULL, '7', 1, NULL);
INSERT INTO `room` VALUES (76, '1', '170', 1, NULL, '7', 1, NULL);
INSERT INTO `room` VALUES (77, '1', '171', 0, NULL, '8', 2, NULL);
INSERT INTO `room` VALUES (78, '1', '172', 0, NULL, '8', 2, NULL);
INSERT INTO `room` VALUES (79, '1', '173', 1, NULL, '8', 0, NULL);
INSERT INTO `room` VALUES (80, '1', '174', 1, NULL, '8', 1, NULL);
INSERT INTO `room` VALUES (81, '1', '175', 0, NULL, '8', 1, NULL);
INSERT INTO `room` VALUES (82, '1', '176', 1, NULL, '8', 1, NULL);
INSERT INTO `room` VALUES (83, '1', '177', 1, NULL, '8', 2, NULL);
INSERT INTO `room` VALUES (84, '1', '178', 0, NULL, '8', 0, NULL);
INSERT INTO `room` VALUES (85, '1', '179', 0, NULL, '8', 2, NULL);
INSERT INTO `room` VALUES (86, '1', '180', 1, NULL, '8', 0, NULL);
INSERT INTO `room` VALUES (87, '1', '181', 1, NULL, '9', 0, NULL);
INSERT INTO `room` VALUES (88, '1', '182', 0, NULL, '9', 0, NULL);
INSERT INTO `room` VALUES (89, '1', '183', 2, NULL, '9', 2, NULL);
INSERT INTO `room` VALUES (90, '1', '184', 0, NULL, '9', 2, NULL);
INSERT INTO `room` VALUES (91, '1', '185', 0, NULL, '9', 2, NULL);
INSERT INTO `room` VALUES (92, '1', '186', 0, NULL, '9', 0, NULL);
INSERT INTO `room` VALUES (93, '1', '187', 1, NULL, '9', 1, NULL);
INSERT INTO `room` VALUES (94, '1', '188', 1, NULL, '9', 2, NULL);
INSERT INTO `room` VALUES (95, '1', '189', 0, NULL, '9', 0, NULL);
INSERT INTO `room` VALUES (96, '1', '190', 0, NULL, '9', 0, NULL);
INSERT INTO `room` VALUES (97, '1', '191', 0, NULL, '10', 2, NULL);
INSERT INTO `room` VALUES (98, '1', '192', 2, NULL, '10', 0, NULL);
INSERT INTO `room` VALUES (99, '1', '193', 2, NULL, '10', 1, NULL);
INSERT INTO `room` VALUES (100, '1', '194', 0, NULL, '10', 2, NULL);
INSERT INTO `room` VALUES (101, '1', '195', 1, NULL, '10', 1, NULL);
INSERT INTO `room` VALUES (102, '1', '1', 0, 1, '1', 1, NULL);

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `sch_id` int(11) NOT NULL AUTO_INCREMENT,
  `sch_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '校区全称',
  `sch_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '校区地址',
  `sch_parent` int(1) NULL DEFAULT 1 COMMENT '子校区',
  PRIMARY KEY (`sch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES (1, '主校区', '广东省中山市', 1);
INSERT INTO `school` VALUES (2, '南校区', '广东省深圳市', 0);

-- ----------------------------
-- Table structure for stay
-- ----------------------------
DROP TABLE IF EXISTS `stay`;
CREATE TABLE `stay`  (
  `stay_id` int(11) NOT NULL AUTO_INCREMENT,
  `stay_stu_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `stay_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍楼',
  `stay_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `stay_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留宿日期',
  `stay_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留宿原因',
  `stay_audit` int(11) NULL DEFAULT 0 COMMENT '审核状态',
  PRIMARY KEY (`stay_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stay
-- ----------------------------
INSERT INTO `stay` VALUES (1, '20180022004', 'cc', 'b栋', '30', '留校工作', 1);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `stu_sex` int(11) NULL DEFAULT NULL COMMENT '性别',
  `stu_papers_type` int(11) NULL DEFAULT 0 COMMENT '证件性质',
  `stu_papers_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件号',
  `stu_grade` int(1) NULL DEFAULT NULL COMMENT '年级',
  `stu_education` int(11) NULL DEFAULT NULL COMMENT '学历',
  `stu_graduation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业时间',
  `stu_college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属院系',
  `stu_major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属专业',
  `stu_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `nums` int(11) NULL DEFAULT NULL COMMENT '统计',
  PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (1, '20180022001', '小志', 0, 0, 'xxxxx', 3, 0, '2021-06', '1001', '1001001', '18级移动1班', NULL);
INSERT INTO `students` VALUES (2, '20180022002', '猪猪', 0, 0, '2222222', 3, 0, '2021-06', '1002', '1002003', '18级商务2班', NULL);
INSERT INTO `students` VALUES (3, '20180022003', 'juju', 1, 1, '33333333', 3, 0, '2021-06', '1001', '1001002', '18级软件2班', NULL);
INSERT INTO `students` VALUES (4, '20180022004', 'cc', 1, 2, '000000000000000', 3, 0, '2021-06', '1001', '1001001', '18级移动1班', NULL);
INSERT INTO `students` VALUES (5, '20200022001', 'a', 0, 0, 'xxxxxxxxxxx', 1, 0, '2023-06', '1001', '1001001', '20级移动1班', NULL);
INSERT INTO `students` VALUES (6, '20190022001', 'b', 1, 0, '0000000000', 2, 0, '2022-06', '1001', '1001001', '19级移动1班', NULL);
INSERT INTO `students` VALUES (7, '20200022001', '海洋1号', 0, 0, '00000', 1, 0, '2023-06', '1002', '1002003', '20级商务1班', NULL);
INSERT INTO `students` VALUES (8, '20200022002', '海洋2号', 1, 0, '000', 1, 0, '2023-06', '1001', '1001001', '20级移动1班', NULL);
INSERT INTO `students` VALUES (9, '20200022003', '海洋3号', 0, 0, '0000000', 1, 0, '2023-06', '1002', '1002004', '20级日语1班', NULL);
INSERT INTO `students` VALUES (10, '20200022004', '海洋4号', 1, 0, '000000000', 1, 0, '2023-06', '1009', '1009005', '20级汽修1班', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `user_root` int(11) NULL DEFAULT NULL COMMENT '权限等级',
  `user_tell` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `user_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'tx.png' COMMENT '用户头像路径',
  `user_nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '用户' COMMENT '用户昵称',
  `sex` int(1) NULL DEFAULT 1 COMMENT '性别',
  `is_admin` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '1:管理员',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'root', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 5, '10086', 'tx.png', 'root', 1, '1');
INSERT INTO `user` VALUES (2, 'admin', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 4, '4444', 'tx.png', 'admin', 1, '0');
INSERT INTO `user` VALUES (3, 'student', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 1, '3333', 'tx.png', 'student', 1, '0');
INSERT INTO `user` VALUES (4, '20180022001', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 1, '12580', 'tx.png', '张大陆', 1, '0');
INSERT INTO `user` VALUES (7, '1', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 1, '1', 'tx.png', '1', 1, '0');
INSERT INTO `user` VALUES (8, '2', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 2, '2', 'tx.png', '2', 1, '0');
INSERT INTO `user` VALUES (9, '3', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 3, '3', 'tx.png', '3', 1, '0');
INSERT INTO `user` VALUES (10, '4', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 4, '4', 'tx.png', '4', 1, '0');
INSERT INTO `user` VALUES (11, '5', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 5, '5', 'tx.png', '5', 1, '0');
INSERT INTO `user` VALUES (12, '6', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 6, '6', 'tx.png', '6', 1, '0');
INSERT INTO `user` VALUES (17, '7', '$2a$10$WK3SjM1S0j5rSh1.3u2iruLWVxoUiX1Ve76cBAMO9S2rre4/mqJzS', 7, '7', 'tx.png', '7', 1, '0');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1);
INSERT INTO `user_role` VALUES (2, 2, 1);
INSERT INTO `user_role` VALUES (19, 14, 17);
INSERT INTO `user_role` VALUES (22, 13, 17);
INSERT INTO `user_role` VALUES (24, 15, 15);
INSERT INTO `user_role` VALUES (26, 4, 1);
INSERT INTO `user_role` VALUES (27, 16, 17);
INSERT INTO `user_role` VALUES (28, 12, 6);
INSERT INTO `user_role` VALUES (30, 3, 6);
INSERT INTO `user_role` VALUES (31, 7, 6);
INSERT INTO `user_role` VALUES (34, 8, 6);
INSERT INTO `user_role` VALUES (35, 9, 8);
INSERT INTO `user_role` VALUES (36, 10, 6);
INSERT INTO `user_role` VALUES (37, 11, 6);
INSERT INTO `user_role` VALUES (38, 17, 6);

-- ----------------------------
-- Table structure for valuables
-- ----------------------------
DROP TABLE IF EXISTS `valuables`;
CREATE TABLE `valuables`  (
  `val_id` int(11) NOT NULL AUTO_INCREMENT,
  `val_stu_name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `val_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品名',
  `val_num` int(11) NULL DEFAULT NULL COMMENT '物品数量',
  `val_price` double(11, 2) NULL DEFAULT NULL COMMENT '物品总价',
  `val_specs` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品规格',
  `val_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登记日期',
  `val_remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`val_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of valuables
-- ----------------------------
INSERT INTO `valuables` VALUES (1, '小志', '笔记本电脑', 2, 100001.00, '23寸X2', '2018-09-01', '笔记本两台');
INSERT INTO `valuables` VALUES (3, '猪猪', '台式电脑', 1, 5000.00, '24寸显示屏，以及30*40*70的机箱', '2018-09-01', '台式电脑一台');
INSERT INTO `valuables` VALUES (49, '2', '2', 1, 2.00, '2', '2020-08-08', '2');
INSERT INTO `valuables` VALUES (50, '3', '333', 1, 3.00, '3', '2020-08-08', '3');
INSERT INTO `valuables` VALUES (52, '11', '11', 11, 11.00, '11', '2020-08-09', '11');
INSERT INTO `valuables` VALUES (53, '13', '13', 13, 13.00, '13', '2020-08-11', '13');
INSERT INTO `valuables` VALUES (55, '15', '15', 15, 15.00, '15', '2020-08-13', '15');
INSERT INTO `valuables` VALUES (56, '16', '16', 16, 16.00, '16', '2020-08-14', '16');
INSERT INTO `valuables` VALUES (57, '17', '17', 17, 17.00, '17', '2020-08-15', '17');
INSERT INTO `valuables` VALUES (58, '18', '181', 18, 18.00, '18', '2020-08-16', '18');

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits`  (
  `vis_id` int(11) NOT NULL AUTO_INCREMENT,
  `vis_stu_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `vis_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vis_bld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所访宿舍楼',
  `vis_room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所访宿舍号',
  `vis_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来访原因',
  `vis_num` int(11) NULL DEFAULT NULL COMMENT '来访人数',
  `vis_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来访时间',
  `vis_leave` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '离开时间',
  `vis_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '无' COMMENT '备注',
  PRIMARY KEY (`vis_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES (4, '20180022001', NULL, '1', 'a301', '探亲', 5, '2020-08-09 17:16:00', '2020-08-09 15:35:48', '无');
INSERT INTO `visits` VALUES (5, '20180022002', NULL, '2', 'b101', '探病', 1, '2020-08-10 10:00:00', '2020-08-10 17:07:00', 'undefined');
INSERT INTO `visits` VALUES (6, '20180022003', NULL, '3', 'c101', '打扫', 2, '2020-08-11 13:04:00', '2020-08-11 16:00:00', 'undefined');
INSERT INTO `visits` VALUES (9, '20180022004', NULL, '1', 'a501', '打扫', 5, '2020-08-12 14:04:00', '2020-08-12 17:04:00', '无');
INSERT INTO `visits` VALUES (10, '20180022003', NULL, '2', 'b301-', '探病', 4, '2020-08-15 14:04:00', '2020-08-15 14:04:00', '无');
INSERT INTO `visits` VALUES (11, '20180022001', '', '1', 'a201', '探亲', 5, '2020-08-09 17:16:00', '2020-08-09 19:16:00', '无');
INSERT INTO `visits` VALUES (12, '20180022001', '', '1', 'a201', '探亲', 5, '2020-08-09 17:16:00', '2020-08-09 19:16:00', '无');
INSERT INTO `visits` VALUES (13, '20180022001', '', '1', 'a201', '探亲', 5, '2020-08-09 17:16:00', '2020-08-09 19:16:00', '无');
INSERT INTO `visits` VALUES (14, '20180022001', '', '1', 'a201', '探亲', 5, '2020-08-11 17:16:00', '2020-08-11 19:16:00', '无');
INSERT INTO `visits` VALUES (15, '20180022001', '', '1', 'a201', '探亲', 5, '2020-08-11 17:16:00', '2020-08-11 19:16:00', '无');
INSERT INTO `visits` VALUES (16, '20180022001', '', '1', 'a201', '探亲', 5, '2020-08-16 17:16:00', '2020-08-16 19:16:00', '无');
INSERT INTO `visits` VALUES (17, '20180022001', '', '1', 'a201', '探亲', 5, '2020-08-10 17:16:00', '2020-10-16 19:16:00', '无');
INSERT INTO `visits` VALUES (18, '20180022001', '', '1', 'a201', '探亲', 5, '2020-08-10 17:16:00', '2020-10-16 19:16:00', '无');
INSERT INTO `visits` VALUES (19, '20180022001', '', '1', 'a201', '探亲', 5, '2020-08-10 17:16:00', '2020-10-16 19:16:00', '无');
INSERT INTO `visits` VALUES (20, '20180022002', NULL, '1', 'a405', '探亲', 4, '2020-08-15 17:16:00', '2020-08-15 19:16:00', '无');

SET FOREIGN_KEY_CHECKS = 1;
