/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50529
Source Host           : 127.0.0.1:3306
Source Database       : wifisniffer_demo

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2015-07-06 11:20:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add permission', '1', 'add_permission');
INSERT INTO `auth_permission` VALUES ('2', 'Can change permission', '1', 'change_permission');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete permission', '1', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can add user', '3', 'add_user');
INSERT INTO `auth_permission` VALUES ('8', 'Can change user', '3', 'change_user');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete user', '3', 'delete_user');
INSERT INTO `auth_permission` VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('16', 'Can add site', '6', 'add_site');
INSERT INTO `auth_permission` VALUES ('17', 'Can change site', '6', 'change_site');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete site', '6', 'delete_site');
INSERT INTO `auth_permission` VALUES ('19', 'Can add log entry', '7', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('20', 'Can change log entry', '7', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete log entry', '7', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('22', 'Can add industry', '8', 'add_industry');
INSERT INTO `auth_permission` VALUES ('23', 'Can change industry', '8', 'change_industry');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete industry', '8', 'delete_industry');
INSERT INTO `auth_permission` VALUES ('25', 'Can add brand', '9', 'add_brand');
INSERT INTO `auth_permission` VALUES ('26', 'Can change brand', '9', 'change_brand');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete brand', '9', 'delete_brand');
INSERT INTO `auth_permission` VALUES ('28', 'Can add device', '10', 'add_device');
INSERT INTO `auth_permission` VALUES ('29', 'Can change device', '10', 'change_device');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete device', '10', 'delete_device');
INSERT INTO `auth_permission` VALUES ('31', 'Can add sniffer data', '11', 'add_snifferdata');
INSERT INTO `auth_permission` VALUES ('32', 'Can change sniffer data', '11', 'change_snifferdata');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete sniffer data', '11', 'delete_snifferdata');
INSERT INTO `auth_permission` VALUES ('34', 'Can add td tag', '12', 'add_tdtag');
INSERT INTO `auth_permission` VALUES ('35', 'Can change td tag', '12', 'change_tdtag');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete td tag', '12', 'delete_tdtag');
INSERT INTO `auth_permission` VALUES ('37', 'Can add guid to tag', '13', 'add_guidtotag');
INSERT INTO `auth_permission` VALUES ('38', 'Can change guid to tag', '13', 'change_guidtotag');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete guid to tag', '13', 'delete_guidtotag');
INSERT INTO `auth_permission` VALUES ('40', 'Can add device config', '14', 'add_deviceconfig');
INSERT INTO `auth_permission` VALUES ('41', 'Can change device config', '14', 'change_deviceconfig');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete device config', '14', 'delete_deviceconfig');
INSERT INTO `auth_permission` VALUES ('43', 'Can add sniffer user', '15', 'add_snifferuser');
INSERT INTO `auth_permission` VALUES ('44', 'Can change sniffer user', '15', 'change_snifferuser');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete sniffer user', '15', 'delete_snifferuser');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(75) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '广告主名称',
  `contact_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `industry_id` int(11) NOT NULL COMMENT '所属行业id',
  PRIMARY KEY (`id`),
  KEY `industry_id` (`industry_id`),
  CONSTRAINT `industry_id` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '平安银行', null, null, '1');
INSERT INTO `brand` VALUES ('2', '招商银行', null, null, '1');

-- ----------------------------
-- Table structure for customer_analysis
-- ----------------------------
DROP TABLE IF EXISTS `customer_analysis`;
CREATE TABLE `customer_analysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) DEFAULT NULL,
  `guid` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `enter_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `stay_time` smallint(255) DEFAULT NULL,
  `is_new` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=745 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of customer_analysis
-- ----------------------------
INSERT INTO `customer_analysis` VALUES ('61', '1', '61', '2015-07-01 10:00:00', '7', '1');
INSERT INTO `customer_analysis` VALUES ('62', '1', '62', '2015-07-01 10:00:00', '1', '1');
INSERT INTO `customer_analysis` VALUES ('63', '1', '63', '2015-07-01 10:00:00', '23', '1');
INSERT INTO `customer_analysis` VALUES ('64', '1', '64', '2015-07-01 10:00:00', '31', '1');
INSERT INTO `customer_analysis` VALUES ('65', '1', '65', '2015-07-01 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('66', '1', '66', '2015-07-01 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('67', '1', '67', '2015-07-01 10:00:00', '9', '1');
INSERT INTO `customer_analysis` VALUES ('68', '1', '68', '2015-07-01 10:00:00', '16', '1');
INSERT INTO `customer_analysis` VALUES ('69', '1', '69', '2015-07-01 10:00:00', '11', '1');
INSERT INTO `customer_analysis` VALUES ('70', '1', '70', '2015-07-01 10:00:00', '6', '1');
INSERT INTO `customer_analysis` VALUES ('71', '1', '71', '2015-07-01 10:00:00', '32', '1');
INSERT INTO `customer_analysis` VALUES ('72', '1', '72', '2015-07-01 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('73', '1', '73', '2015-07-01 10:00:00', '2', '1');
INSERT INTO `customer_analysis` VALUES ('74', '1', '74', '2015-07-01 10:00:00', '10', '1');
INSERT INTO `customer_analysis` VALUES ('75', '1', '75', '2015-07-01 10:00:00', '5', '1');
INSERT INTO `customer_analysis` VALUES ('76', '1', '76', '2015-07-01 10:00:00', '34', '1');
INSERT INTO `customer_analysis` VALUES ('77', '1', '77', '2015-07-01 10:00:00', '25', '1');
INSERT INTO `customer_analysis` VALUES ('78', '1', '78', '2015-07-01 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('79', '1', '79', '2015-07-01 10:00:00', '10', '1');
INSERT INTO `customer_analysis` VALUES ('80', '1', '80', '2015-07-01 10:00:00', '1', '1');
INSERT INTO `customer_analysis` VALUES ('81', '1', '81', '2015-07-01 10:00:00', '7', '1');
INSERT INTO `customer_analysis` VALUES ('82', '1', '82', '2015-07-01 10:00:00', '23', '1');
INSERT INTO `customer_analysis` VALUES ('83', '1', '83', '2015-07-01 10:00:00', '20', '1');
INSERT INTO `customer_analysis` VALUES ('84', '1', '84', '2015-07-01 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('85', '1', '85', '2015-07-01 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('86', '1', '86', '2015-07-01 10:00:00', '6', '1');
INSERT INTO `customer_analysis` VALUES ('87', '1', '87', '2015-07-01 10:00:00', '6', '1');
INSERT INTO `customer_analysis` VALUES ('88', '1', '88', '2015-07-01 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('89', '1', '89', '2015-07-01 10:00:00', '22', '1');
INSERT INTO `customer_analysis` VALUES ('90', '1', '90', '2015-07-01 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('91', '1', '91', '2015-07-01 10:00:00', '2', '1');
INSERT INTO `customer_analysis` VALUES ('92', '1', '92', '2015-07-01 10:00:00', '18', '1');
INSERT INTO `customer_analysis` VALUES ('93', '1', '93', '2015-07-01 10:00:00', '12', '1');
INSERT INTO `customer_analysis` VALUES ('94', '1', '94', '2015-07-01 10:00:00', '14', '1');
INSERT INTO `customer_analysis` VALUES ('95', '1', '95', '2015-07-01 10:00:00', '25', '1');
INSERT INTO `customer_analysis` VALUES ('96', '1', '96', '2015-07-01 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('97', '1', '97', '2015-07-01 10:00:00', '5', '1');
INSERT INTO `customer_analysis` VALUES ('98', '1', '98', '2015-07-01 10:00:00', '6', '1');
INSERT INTO `customer_analysis` VALUES ('99', '1', '99', '2015-07-01 10:00:00', '22', '1');
INSERT INTO `customer_analysis` VALUES ('100', '1', '100', '2015-07-01 10:00:00', '3', '1');
INSERT INTO `customer_analysis` VALUES ('101', '1', '101', '2015-07-02 10:00:00', '33', '1');
INSERT INTO `customer_analysis` VALUES ('102', '1', '102', '2015-07-02 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('103', '1', '103', '2015-07-02 10:00:00', '5', '1');
INSERT INTO `customer_analysis` VALUES ('104', '1', '104', '2015-07-02 10:00:00', '3', '1');
INSERT INTO `customer_analysis` VALUES ('105', '1', '105', '2015-07-02 10:00:00', '19', '1');
INSERT INTO `customer_analysis` VALUES ('106', '1', '106', '2015-07-02 10:00:00', '24', '1');
INSERT INTO `customer_analysis` VALUES ('107', '1', '107', '2015-07-02 10:00:00', '44', '1');
INSERT INTO `customer_analysis` VALUES ('108', '1', '108', '2015-07-02 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('109', '1', '109', '2015-07-02 10:00:00', '9', '1');
INSERT INTO `customer_analysis` VALUES ('110', '1', '110', '2015-07-02 10:00:00', '20', '1');
INSERT INTO `customer_analysis` VALUES ('111', '1', '111', '2015-07-02 10:00:00', '5', '1');
INSERT INTO `customer_analysis` VALUES ('112', '1', '112', '2015-07-02 10:00:00', '4', '1');
INSERT INTO `customer_analysis` VALUES ('113', '1', '113', '2015-07-02 10:00:00', '20', '1');
INSERT INTO `customer_analysis` VALUES ('114', '1', '114', '2015-07-02 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('115', '1', '115', '2015-07-02 10:00:00', '8', '1');
INSERT INTO `customer_analysis` VALUES ('116', '1', '116', '2015-07-02 10:00:00', '7', '1');
INSERT INTO `customer_analysis` VALUES ('117', '1', '117', '2015-07-02 10:00:00', '27', '1');
INSERT INTO `customer_analysis` VALUES ('118', '1', '118', '2015-07-02 10:00:00', '15', '1');
INSERT INTO `customer_analysis` VALUES ('119', '1', '119', '2015-07-02 10:00:00', '44', '1');
INSERT INTO `customer_analysis` VALUES ('120', '1', '120', '2015-07-02 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('121', '1', '121', '2015-07-02 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('122', '1', '122', '2015-07-02 10:00:00', '4', '1');
INSERT INTO `customer_analysis` VALUES ('123', '1', '123', '2015-07-02 10:00:00', '22', '1');
INSERT INTO `customer_analysis` VALUES ('124', '1', '124', '2015-07-02 10:00:00', '6', '1');
INSERT INTO `customer_analysis` VALUES ('125', '1', '125', '2015-07-02 10:00:00', '37', '1');
INSERT INTO `customer_analysis` VALUES ('126', '1', '126', '2015-07-02 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('127', '1', '127', '2015-07-02 10:00:00', '9', '1');
INSERT INTO `customer_analysis` VALUES ('128', '1', '128', '2015-07-02 10:00:00', '14', '1');
INSERT INTO `customer_analysis` VALUES ('129', '1', '129', '2015-07-02 10:00:00', '14', '1');
INSERT INTO `customer_analysis` VALUES ('130', '1', '130', '2015-07-02 10:00:00', '40', '1');
INSERT INTO `customer_analysis` VALUES ('131', '1', '131', '2015-07-02 10:00:00', '36', '1');
INSERT INTO `customer_analysis` VALUES ('171', '1', '171', '2015-07-02 10:00:00', '2', '1');
INSERT INTO `customer_analysis` VALUES ('172', '1', '172', '2015-07-02 10:00:00', '20', '1');
INSERT INTO `customer_analysis` VALUES ('173', '1', '173', '2015-07-02 10:00:00', '30', '1');
INSERT INTO `customer_analysis` VALUES ('174', '1', '174', '2015-07-02 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('175', '1', '175', '2015-07-02 10:00:00', '1', '1');
INSERT INTO `customer_analysis` VALUES ('176', '1', '176', '2015-07-02 10:00:00', '15', '1');
INSERT INTO `customer_analysis` VALUES ('177', '1', '177', '2015-07-02 10:00:00', '15', '1');
INSERT INTO `customer_analysis` VALUES ('178', '1', '178', '2015-07-02 10:00:00', '11', '1');
INSERT INTO `customer_analysis` VALUES ('179', '1', '179', '2015-07-02 10:00:00', '12', '1');
INSERT INTO `customer_analysis` VALUES ('180', '1', '180', '2015-07-02 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('181', '1', '181', '2015-07-02 10:00:00', '10', '1');
INSERT INTO `customer_analysis` VALUES ('182', '1', '182', '2015-07-02 10:00:00', '7', '1');
INSERT INTO `customer_analysis` VALUES ('183', '1', '183', '2015-07-02 10:00:00', '29', '1');
INSERT INTO `customer_analysis` VALUES ('184', '1', '184', '2015-07-02 10:00:00', '8', '1');
INSERT INTO `customer_analysis` VALUES ('185', '1', '185', '2015-07-02 10:00:00', '46', '1');
INSERT INTO `customer_analysis` VALUES ('186', '1', '186', '2015-07-02 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('187', '1', '187', '2015-07-02 10:00:00', '9', '1');
INSERT INTO `customer_analysis` VALUES ('201', '1', '201', '2015-07-05 10:00:00', '15', '1');
INSERT INTO `customer_analysis` VALUES ('202', '1', '202', '2015-07-05 10:00:00', '40', '1');
INSERT INTO `customer_analysis` VALUES ('203', '1', '203', '2015-07-05 10:00:00', '7', '1');
INSERT INTO `customer_analysis` VALUES ('204', '1', '204', '2015-07-05 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('205', '1', '205', '2015-07-05 10:00:00', '8', '1');
INSERT INTO `customer_analysis` VALUES ('206', '1', '206', '2015-07-05 10:00:00', '8', '1');
INSERT INTO `customer_analysis` VALUES ('228', '1', '228', '2015-07-05 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('229', '1', '229', '2015-07-05 10:00:00', '10', '1');
INSERT INTO `customer_analysis` VALUES ('230', '1', '230', '2015-07-05 10:00:00', '17', '1');
INSERT INTO `customer_analysis` VALUES ('231', '1', '231', '2015-07-05 10:00:00', '14', '1');
INSERT INTO `customer_analysis` VALUES ('232', '1', '232', '2015-07-05 10:00:00', '25', '1');
INSERT INTO `customer_analysis` VALUES ('233', '1', '233', '2015-07-05 10:00:00', '25', '1');
INSERT INTO `customer_analysis` VALUES ('234', '1', '234', '2015-07-05 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('235', '1', '235', '2015-07-05 10:00:00', '8', '1');
INSERT INTO `customer_analysis` VALUES ('236', '1', '236', '2015-07-05 10:00:00', '16', '1');
INSERT INTO `customer_analysis` VALUES ('237', '1', '237', '2015-07-05 10:00:00', '23', '1');
INSERT INTO `customer_analysis` VALUES ('238', '1', '238', '2015-07-05 10:00:00', '18', '1');
INSERT INTO `customer_analysis` VALUES ('239', '1', '239', '2015-07-05 10:00:00', '29', '1');
INSERT INTO `customer_analysis` VALUES ('240', '1', '240', '2015-07-05 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('241', '1', '241', '2015-07-05 10:00:00', '6', '1');
INSERT INTO `customer_analysis` VALUES ('242', '1', '242', '2015-07-05 10:00:00', '2', '1');
INSERT INTO `customer_analysis` VALUES ('243', '1', '243', '2015-07-05 10:00:00', '9', '1');
INSERT INTO `customer_analysis` VALUES ('244', '1', '244', '2015-07-05 10:00:00', '19', '1');
INSERT INTO `customer_analysis` VALUES ('245', '1', '245', '2015-07-05 10:00:00', '13', '1');
INSERT INTO `customer_analysis` VALUES ('246', '1', '246', '2015-07-05 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('247', '1', '247', '2015-07-05 10:00:00', '9', '1');
INSERT INTO `customer_analysis` VALUES ('248', '1', '248', '2015-07-05 10:00:00', '16', '1');
INSERT INTO `customer_analysis` VALUES ('249', '1', '249', '2015-07-05 10:00:00', '20', '1');
INSERT INTO `customer_analysis` VALUES ('250', '1', '250', '2015-07-05 10:00:00', '2', '1');
INSERT INTO `customer_analysis` VALUES ('251', '1', '251', '2015-07-05 10:00:00', '27', '1');
INSERT INTO `customer_analysis` VALUES ('252', '1', '252', '2015-07-05 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('253', '1', '253', '2015-07-05 10:00:00', '1', '1');
INSERT INTO `customer_analysis` VALUES ('254', '1', '254', '2015-07-05 10:00:00', '2', '1');
INSERT INTO `customer_analysis` VALUES ('255', '1', '255', '2015-07-05 10:00:00', '12', '1');
INSERT INTO `customer_analysis` VALUES ('293', '1', '293', '2015-07-05 10:00:00', '26', '1');
INSERT INTO `customer_analysis` VALUES ('294', '1', '294', '2015-07-05 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('295', '1', '295', '2015-07-05 10:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('296', '1', '296', '2015-07-05 10:00:00', '15', '1');
INSERT INTO `customer_analysis` VALUES ('319', '1', '19', '2015-07-03 10:00:00', '8', '0');
INSERT INTO `customer_analysis` VALUES ('320', '1', '20', '2015-07-03 10:00:00', '13', '0');
INSERT INTO `customer_analysis` VALUES ('321', '1', '21', '2015-07-03 10:00:00', '11', '0');
INSERT INTO `customer_analysis` VALUES ('322', '1', '22', '2015-07-03 10:00:00', '6', '0');
INSERT INTO `customer_analysis` VALUES ('323', '1', '23', '2015-07-03 10:00:00', '18', '0');
INSERT INTO `customer_analysis` VALUES ('324', '1', '24', '2015-07-03 10:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('325', '1', '25', '2015-07-03 10:00:00', '9', '0');
INSERT INTO `customer_analysis` VALUES ('326', '1', '26', '2015-07-03 10:00:00', '2', '0');
INSERT INTO `customer_analysis` VALUES ('350', '1', '50', '2015-07-03 10:00:00', '6', '0');
INSERT INTO `customer_analysis` VALUES ('351', '1', '101', '2015-07-04 16:00:00', '29', '0');
INSERT INTO `customer_analysis` VALUES ('352', '1', '102', '2015-07-04 16:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('353', '1', '103', '2015-07-04 16:00:00', '7', '0');
INSERT INTO `customer_analysis` VALUES ('354', '1', '104', '2015-07-04 16:00:00', '9', '0');
INSERT INTO `customer_analysis` VALUES ('355', '1', '105', '2015-07-04 16:00:00', '13', '0');
INSERT INTO `customer_analysis` VALUES ('356', '1', '106', '2015-07-04 16:00:00', '27', '0');
INSERT INTO `customer_analysis` VALUES ('357', '1', '107', '2015-07-04 16:00:00', '43', '0');
INSERT INTO `customer_analysis` VALUES ('358', '1', '108', '2015-07-04 16:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('359', '1', '109', '2015-07-04 16:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('360', '1', '110', '2015-07-04 16:00:00', '6', '0');
INSERT INTO `customer_analysis` VALUES ('361', '1', '111', '2015-07-04 16:00:00', '9', '0');
INSERT INTO `customer_analysis` VALUES ('362', '1', '112', '2015-07-04 16:00:00', '9', '0');
INSERT INTO `customer_analysis` VALUES ('363', '1', '113', '2015-07-04 16:00:00', '5', '0');
INSERT INTO `customer_analysis` VALUES ('364', '1', '114', '2015-07-04 16:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('365', '1', '115', '2015-07-04 16:00:00', '8', '0');
INSERT INTO `customer_analysis` VALUES ('366', '1', '116', '2015-07-04 16:00:00', '17', '0');
INSERT INTO `customer_analysis` VALUES ('367', '1', '117', '2015-07-04 16:00:00', '25', '0');
INSERT INTO `customer_analysis` VALUES ('368', '1', '118', '2015-07-04 16:00:00', '26', '0');
INSERT INTO `customer_analysis` VALUES ('369', '1', '119', '2015-07-04 16:00:00', '42', '0');
INSERT INTO `customer_analysis` VALUES ('370', '1', '120', '2015-07-04 16:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('371', '1', '121', '2015-07-04 16:00:00', '8', '0');
INSERT INTO `customer_analysis` VALUES ('372', '1', '122', '2015-07-04 16:00:00', '11', '0');
INSERT INTO `customer_analysis` VALUES ('373', '1', '123', '2015-07-04 16:00:00', '18', '0');
INSERT INTO `customer_analysis` VALUES ('374', '1', '124', '2015-07-04 16:00:00', '32', '0');
INSERT INTO `customer_analysis` VALUES ('375', '1', '125', '2015-07-04 16:00:00', '44', '0');
INSERT INTO `customer_analysis` VALUES ('376', '1', '126', '2015-07-04 16:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('377', '1', '127', '2015-07-04 16:00:00', '1', '0');
INSERT INTO `customer_analysis` VALUES ('601', '1', '301', '2015-07-04 12:00:00', '9', '1');
INSERT INTO `customer_analysis` VALUES ('602', '1', '302', '2015-07-04 12:00:00', '2', '1');
INSERT INTO `customer_analysis` VALUES ('603', '1', '303', '2015-07-04 12:00:00', '18', '1');
INSERT INTO `customer_analysis` VALUES ('604', '1', '304', '2015-07-04 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('605', '1', '305', '2015-07-04 12:00:00', '8', '1');
INSERT INTO `customer_analysis` VALUES ('606', '1', '306', '2015-07-04 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('607', '1', '307', '2015-07-04 12:00:00', '3', '1');
INSERT INTO `customer_analysis` VALUES ('608', '1', '308', '2015-07-04 12:00:00', '17', '1');
INSERT INTO `customer_analysis` VALUES ('609', '1', '309', '2015-07-04 12:00:00', '29', '1');
INSERT INTO `customer_analysis` VALUES ('610', '1', '310', '2015-07-04 12:00:00', '29', '1');
INSERT INTO `customer_analysis` VALUES ('611', '1', '311', '2015-07-04 12:00:00', '10', '1');
INSERT INTO `customer_analysis` VALUES ('612', '1', '312', '2015-07-04 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('613', '1', '313', '2015-07-04 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('614', '1', '314', '2015-07-04 12:00:00', '19', '1');
INSERT INTO `customer_analysis` VALUES ('615', '1', '315', '2015-07-04 12:00:00', '14', '1');
INSERT INTO `customer_analysis` VALUES ('616', '1', '316', '2015-07-04 12:00:00', '25', '1');
INSERT INTO `customer_analysis` VALUES ('617', '1', '317', '2015-07-04 12:00:00', '13', '1');
INSERT INTO `customer_analysis` VALUES ('618', '1', '318', '2015-07-04 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('619', '1', '319', '2015-07-04 12:00:00', '6', '1');
INSERT INTO `customer_analysis` VALUES ('620', '1', '320', '2015-07-04 12:00:00', '9', '1');
INSERT INTO `customer_analysis` VALUES ('621', '1', '321', '2015-07-04 12:00:00', '10', '1');
INSERT INTO `customer_analysis` VALUES ('622', '1', '322', '2015-07-04 12:00:00', '17', '1');
INSERT INTO `customer_analysis` VALUES ('623', '1', '323', '2015-07-04 12:00:00', '16', '1');
INSERT INTO `customer_analysis` VALUES ('624', '1', '324', '2015-07-04 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('625', '1', '325', '2015-07-04 12:00:00', '5', '1');
INSERT INTO `customer_analysis` VALUES ('626', '1', '301', '2015-07-01 12:00:00', '2', '0');
INSERT INTO `customer_analysis` VALUES ('627', '1', '302', '2015-07-01 12:00:00', '7', '0');
INSERT INTO `customer_analysis` VALUES ('628', '1', '303', '2015-07-01 12:00:00', '1', '0');
INSERT INTO `customer_analysis` VALUES ('629', '1', '304', '2015-07-01 12:00:00', '22', '0');
INSERT INTO `customer_analysis` VALUES ('630', '1', '305', '2015-07-01 12:00:00', '12', '0');
INSERT INTO `customer_analysis` VALUES ('631', '1', '306', '2015-07-01 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('632', '1', '307', '2015-07-01 12:00:00', '1', '0');
INSERT INTO `customer_analysis` VALUES ('633', '1', '308', '2015-07-01 12:00:00', '14', '0');
INSERT INTO `customer_analysis` VALUES ('634', '1', '309', '2015-07-01 12:00:00', '1', '0');
INSERT INTO `customer_analysis` VALUES ('635', '1', '310', '2015-07-01 12:00:00', '35', '0');
INSERT INTO `customer_analysis` VALUES ('636', '1', '311', '2015-07-01 12:00:00', '6', '0');
INSERT INTO `customer_analysis` VALUES ('637', '1', '312', '2015-07-01 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('638', '1', '313', '2015-07-01 12:00:00', '2', '0');
INSERT INTO `customer_analysis` VALUES ('639', '1', '314', '2015-07-01 12:00:00', '1', '0');
INSERT INTO `customer_analysis` VALUES ('640', '1', '315', '2015-07-01 12:00:00', '28', '0');
INSERT INTO `customer_analysis` VALUES ('641', '1', '316', '2015-07-01 12:00:00', '16', '0');
INSERT INTO `customer_analysis` VALUES ('642', '1', '317', '2015-07-01 12:00:00', '10', '0');
INSERT INTO `customer_analysis` VALUES ('643', '1', '318', '2015-07-01 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('644', '1', '319', '2015-07-01 12:00:00', '4', '0');
INSERT INTO `customer_analysis` VALUES ('645', '1', '320', '2015-07-01 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('646', '1', '321', '2015-07-01 12:00:00', '1', '0');
INSERT INTO `customer_analysis` VALUES ('647', '1', '322', '2015-07-01 12:00:00', '6', '0');
INSERT INTO `customer_analysis` VALUES ('648', '1', '323', '2015-07-01 12:00:00', '8', '0');
INSERT INTO `customer_analysis` VALUES ('649', '1', '324', '2015-07-01 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('650', '1', '325', '2015-07-01 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('651', '1', '301', '2015-07-05 12:00:00', '6', '0');
INSERT INTO `customer_analysis` VALUES ('652', '1', '302', '2015-07-05 12:00:00', '19', '0');
INSERT INTO `customer_analysis` VALUES ('653', '1', '303', '2015-07-05 12:00:00', '13', '0');
INSERT INTO `customer_analysis` VALUES ('654', '1', '304', '2015-07-05 12:00:00', '12', '0');
INSERT INTO `customer_analysis` VALUES ('655', '1', '305', '2015-07-05 12:00:00', '39', '0');
INSERT INTO `customer_analysis` VALUES ('656', '1', '306', '2015-07-05 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('657', '1', '307', '2015-07-05 12:00:00', '1', '0');
INSERT INTO `customer_analysis` VALUES ('658', '1', '308', '2015-07-05 12:00:00', '8', '0');
INSERT INTO `customer_analysis` VALUES ('659', '1', '309', '2015-07-05 12:00:00', '25', '0');
INSERT INTO `customer_analysis` VALUES ('660', '1', '310', '2015-07-05 12:00:00', '10', '0');
INSERT INTO `customer_analysis` VALUES ('661', '1', '311', '2015-07-05 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('662', '1', '312', '2015-07-05 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('663', '1', '313', '2015-07-05 12:00:00', '1', '0');
INSERT INTO `customer_analysis` VALUES ('664', '1', '314', '2015-07-05 12:00:00', '9', '0');
INSERT INTO `customer_analysis` VALUES ('665', '1', '315', '2015-07-05 12:00:00', '22', '0');
INSERT INTO `customer_analysis` VALUES ('666', '1', '316', '2015-07-05 12:00:00', '13', '0');
INSERT INTO `customer_analysis` VALUES ('667', '1', '317', '2015-07-05 12:00:00', '17', '0');
INSERT INTO `customer_analysis` VALUES ('668', '1', '318', '2015-07-05 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('669', '1', '301', '2015-07-02 12:00:00', '7', '0');
INSERT INTO `customer_analysis` VALUES ('670', '1', '302', '2015-07-02 12:00:00', '8', '0');
INSERT INTO `customer_analysis` VALUES ('671', '1', '303', '2015-07-02 12:00:00', '3', '0');
INSERT INTO `customer_analysis` VALUES ('672', '1', '304', '2015-07-02 12:00:00', '22', '0');
INSERT INTO `customer_analysis` VALUES ('673', '1', '305', '2015-07-02 12:00:00', '10', '0');
INSERT INTO `customer_analysis` VALUES ('674', '1', '306', '2015-07-02 12:00:00', '0', '0');
INSERT INTO `customer_analysis` VALUES ('675', '1', '307', '2015-07-02 12:00:00', '5', '0');
INSERT INTO `customer_analysis` VALUES ('676', '1', '308', '2015-07-02 12:00:00', '7', '0');
INSERT INTO `customer_analysis` VALUES ('677', '1', '309', '2015-07-02 12:00:00', '21', '0');
INSERT INTO `customer_analysis` VALUES ('678', '1', '310', '2015-07-02 12:00:00', '39', '0');
INSERT INTO `customer_analysis` VALUES ('679', '1', '301', '2015-07-03 12:00:00', '5', '0');
INSERT INTO `customer_analysis` VALUES ('680', '1', '302', '2015-07-03 12:00:00', '7', '0');
INSERT INTO `customer_analysis` VALUES ('681', '1', '303', '2015-07-03 12:00:00', '9', '0');
INSERT INTO `customer_analysis` VALUES ('682', '1', '304', '2015-07-03 12:00:00', '3', '0');
INSERT INTO `customer_analysis` VALUES ('712', '1', '301', '2015-07-03 12:00:00', '1', '1');
INSERT INTO `customer_analysis` VALUES ('713', '1', '302', '2015-07-03 12:00:00', '20', '1');
INSERT INTO `customer_analysis` VALUES ('714', '1', '303', '2015-07-03 12:00:00', '3', '1');
INSERT INTO `customer_analysis` VALUES ('715', '1', '304', '2015-07-03 12:00:00', '25', '1');
INSERT INTO `customer_analysis` VALUES ('716', '1', '305', '2015-07-03 12:00:00', '24', '1');
INSERT INTO `customer_analysis` VALUES ('717', '1', '306', '2015-07-03 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('718', '1', '307', '2015-07-03 12:00:00', '10', '1');
INSERT INTO `customer_analysis` VALUES ('719', '1', '308', '2015-07-03 12:00:00', '9', '1');
INSERT INTO `customer_analysis` VALUES ('720', '1', '309', '2015-07-03 12:00:00', '15', '1');
INSERT INTO `customer_analysis` VALUES ('721', '1', '310', '2015-07-03 12:00:00', '2', '1');
INSERT INTO `customer_analysis` VALUES ('722', '1', '311', '2015-07-03 12:00:00', '18', '1');
INSERT INTO `customer_analysis` VALUES ('723', '1', '312', '2015-07-03 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('724', '1', '313', '2015-07-03 12:00:00', '7', '1');
INSERT INTO `customer_analysis` VALUES ('725', '1', '314', '2015-07-03 12:00:00', '15', '1');
INSERT INTO `customer_analysis` VALUES ('726', '1', '315', '2015-07-03 12:00:00', '15', '1');
INSERT INTO `customer_analysis` VALUES ('727', '1', '316', '2015-07-03 12:00:00', '7', '1');
INSERT INTO `customer_analysis` VALUES ('728', '1', '317', '2015-07-03 12:00:00', '36', '1');
INSERT INTO `customer_analysis` VALUES ('729', '1', '318', '2015-07-03 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('730', '1', '319', '2015-07-03 12:00:00', '8', '1');
INSERT INTO `customer_analysis` VALUES ('731', '1', '320', '2015-07-03 12:00:00', '17', '1');
INSERT INTO `customer_analysis` VALUES ('732', '1', '321', '2015-07-03 12:00:00', '9', '1');
INSERT INTO `customer_analysis` VALUES ('733', '1', '322', '2015-07-03 12:00:00', '39', '1');
INSERT INTO `customer_analysis` VALUES ('734', '1', '323', '2015-07-03 12:00:00', '34', '1');
INSERT INTO `customer_analysis` VALUES ('735', '1', '324', '2015-07-03 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('736', '1', '325', '2015-07-03 12:00:00', '6', '1');
INSERT INTO `customer_analysis` VALUES ('737', '1', '326', '2015-07-03 12:00:00', '5', '1');
INSERT INTO `customer_analysis` VALUES ('738', '1', '327', '2015-07-03 12:00:00', '11', '1');
INSERT INTO `customer_analysis` VALUES ('739', '1', '328', '2015-07-03 12:00:00', '20', '1');
INSERT INTO `customer_analysis` VALUES ('740', '1', '329', '2015-07-03 12:00:00', '49', '1');
INSERT INTO `customer_analysis` VALUES ('741', '1', '330', '2015-07-03 12:00:00', '0', '1');
INSERT INTO `customer_analysis` VALUES ('742', '1', '331', '2015-07-03 12:00:00', '7', '1');
INSERT INTO `customer_analysis` VALUES ('743', '1', '332', '2015-07-03 12:00:00', '3', '1');
INSERT INTO `customer_analysis` VALUES ('744', '1', '333', '2015-07-03 12:00:00', '18', '1');

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `client_id` varchar(16) COLLATE utf8_bin NOT NULL COMMENT 'wifi sniffer 设备编号（设备标识）',
  `client_name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '门店名称',
  `client_location` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '门店地址',
  `status` tinyint(255) DEFAULT NULL COMMENT '设备状态',
  `brand_id` int(11) NOT NULL COMMENT '所属广告主id',
  `config_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('1', 'abc', '南大街支行', '陕西&&&西安&&&南大街1号', '1', '2', '1');
INSERT INTO `device` VALUES ('2', 'def', '高新路支行', '陕西&&&西安&&&高新路48号', '1', '2', '1');
INSERT INTO `device` VALUES ('4', 'xyz', '小寨支行', '陕西&&&西安&&&长安路99号', '1', '2', '1');

-- ----------------------------
-- Table structure for device_config
-- ----------------------------
DROP TABLE IF EXISTS `device_config`;
CREATE TABLE `device_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `rssi` smallint(255) DEFAULT NULL COMMENT '进店强度(rssi阈值)',
  `stay_interval` smallint(255) DEFAULT NULL COMMENT '停留判断间隔',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of device_config
-- ----------------------------
INSERT INTO `device_config` VALUES ('1', '12', '5');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('2', 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('3', 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('4', 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'session', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'site', 'sites', 'site');
INSERT INTO `django_content_type` VALUES ('7', 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('8', 'industry', 'console', 'industry');
INSERT INTO `django_content_type` VALUES ('9', 'brand', 'console', 'brand');
INSERT INTO `django_content_type` VALUES ('10', 'device', 'console', 'device');
INSERT INTO `django_content_type` VALUES ('11', 'sniffer data', 'console', 'snifferdata');
INSERT INTO `django_content_type` VALUES ('12', 'td tag', 'console', 'tdtag');
INSERT INTO `django_content_type` VALUES ('13', 'guid to tag', 'console', 'guidtotag');
INSERT INTO `django_content_type` VALUES ('14', 'device config', 'console', 'deviceconfig');
INSERT INTO `django_content_type` VALUES ('15', 'sniffer user', 'console', 'snifferuser');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('371zfwmbc3a95gydiao1gudxvyn9hg25', 0x5A4463784E4441794D6A67354F444D7A4E324A6A4E5459334E6A41305A4451334D4751774D7A4932596A5A6A4F4755344E6D5A6B5954703766513D3D, '2015-07-13 07:30:53');

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO `django_site` VALUES ('1', 'example.com', 'example.com');

-- ----------------------------
-- Table structure for guid_to_tag
-- ----------------------------
DROP TABLE IF EXISTS `guid_to_tag`;
CREATE TABLE `guid_to_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `guid` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户设备唯一标识',
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  `tag_value` decimal(8,4) DEFAULT NULL COMMENT '标签value',
  `tag_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '获取标签时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`guid`,`tag_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of guid_to_tag
-- ----------------------------
INSERT INTO `guid_to_tag` VALUES ('1', 'f8:a4:5f:53:23:0b', '275', '1.3651', '2015-06-29 14:58:46');
INSERT INTO `guid_to_tag` VALUES ('2', 'abc', '276', null, '2015-07-01 16:09:59');
INSERT INTO `guid_to_tag` VALUES ('3', 'b', '275', null, '2015-06-29 15:41:35');
INSERT INTO `guid_to_tag` VALUES ('4', 'c', '299', null, '2015-06-29 15:41:46');
INSERT INTO `guid_to_tag` VALUES ('5', 'd', '298', null, '2015-06-29 15:41:52');
INSERT INTO `guid_to_tag` VALUES ('6', 'a', '377', null, '2015-06-29 17:48:57');
INSERT INTO `guid_to_tag` VALUES ('7', 'e', '275', null, '2015-06-29 16:10:37');
INSERT INTO `guid_to_tag` VALUES ('8', 'a', '370', null, null);

-- ----------------------------
-- Table structure for industry
-- ----------------------------
DROP TABLE IF EXISTS `industry`;
CREATE TABLE `industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of industry
-- ----------------------------
INSERT INTO `industry` VALUES ('1', '银行');

-- ----------------------------
-- Table structure for sniffer_data
-- ----------------------------
DROP TABLE IF EXISTS `sniffer_data`;
CREATE TABLE `sniffer_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `device_id` int(11) NOT NULL COMMENT '设备标识（device表主键id）',
  `guid` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户设备唯一标识',
  `guid_type` tinyint(255) NOT NULL COMMENT '用户设备标识类型(1.mac 2.imei)',
  `rssi` smallint(255) NOT NULL COMMENT '信号强度',
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`id`),
  KEY `deivce_id` (`device_id`),
  CONSTRAINT `deivce_id` FOREIGN KEY (`device_id`) REFERENCES `device` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=871 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sniffer_data
-- ----------------------------
INSERT INTO `sniffer_data` VALUES ('1', '1', '1', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('2', '1', '2', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('3', '1', '3', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('4', '1', '4', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('5', '1', '5', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('6', '1', '6', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('7', '1', '7', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('8', '1', '8', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('9', '1', '9', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('10', '1', '10', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('11', '1', '11', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('12', '1', '12', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('13', '1', '13', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('14', '1', '14', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('15', '1', '15', '1', '7', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('16', '1', '16', '1', '16', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('17', '1', '17', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('18', '1', '18', '1', '18', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('19', '1', '19', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('20', '1', '20', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('21', '1', '21', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('22', '1', '22', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('23', '1', '23', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('24', '1', '24', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('25', '1', '25', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('26', '1', '26', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('27', '1', '27', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('28', '1', '28', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('29', '1', '29', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('30', '1', '30', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('31', '1', '31', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('32', '1', '32', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('33', '1', '33', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('34', '1', '34', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('35', '1', '35', '1', '11', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('36', '1', '36', '1', '10', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('37', '1', '37', '1', '13', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('38', '1', '38', '1', '18', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('39', '1', '39', '1', '15', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('40', '1', '40', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('41', '1', '41', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('42', '1', '42', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('43', '1', '43', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('44', '1', '44', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('45', '1', '45', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('46', '1', '46', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('47', '1', '47', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('48', '1', '48', '1', '7', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('49', '1', '49', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('50', '1', '50', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('51', '1', '51', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('52', '1', '52', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('53', '1', '53', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('54', '1', '54', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('55', '1', '55', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('56', '1', '56', '1', '8', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('57', '1', '57', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('58', '1', '58', '1', '18', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('59', '1', '59', '1', '12', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('60', '1', '60', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('61', '1', '61', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('62', '1', '62', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('63', '1', '63', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('64', '1', '64', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('65', '1', '65', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('66', '1', '66', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('67', '1', '67', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('68', '1', '68', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('69', '1', '69', '1', '9', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('70', '1', '70', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('71', '1', '71', '1', '11', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('72', '1', '72', '1', '7', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('73', '1', '73', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('74', '1', '74', '1', '7', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('75', '1', '75', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('76', '1', '76', '1', '7', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('77', '1', '77', '1', '15', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('78', '1', '78', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('79', '1', '79', '1', '14', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('80', '1', '80', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('81', '1', '81', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('82', '1', '82', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('83', '1', '83', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('84', '1', '84', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('85', '1', '85', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('86', '1', '86', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('87', '1', '87', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('88', '1', '88', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('89', '1', '89', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('90', '1', '90', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('91', '1', '91', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('92', '1', '92', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('93', '1', '93', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('94', '1', '94', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('95', '1', '95', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('96', '1', '96', '1', '10', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('97', '1', '97', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('98', '1', '98', '1', '8', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('99', '1', '99', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('100', '1', '100', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('101', '1', '101', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('102', '1', '102', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('103', '1', '103', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('104', '1', '104', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('105', '1', '105', '1', '5', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('106', '1', '106', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('107', '1', '107', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('108', '1', '108', '1', '7', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('109', '1', '109', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('110', '1', '110', '1', '8', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('111', '1', '111', '1', '8', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('112', '1', '112', '1', '9', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('113', '1', '113', '1', '12', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('114', '1', '114', '1', '6', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('115', '1', '115', '1', '4', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('116', '1', '116', '1', '12', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('117', '1', '117', '1', '4', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('118', '1', '118', '1', '12', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('119', '1', '119', '1', '13', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('120', '1', '120', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('121', '1', '121', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('122', '1', '122', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('123', '1', '123', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('124', '1', '124', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('125', '1', '125', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('126', '1', '126', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('127', '1', '127', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('128', '1', '128', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('129', '1', '129', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('130', '1', '130', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('131', '1', '131', '1', '6', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('132', '1', '132', '1', '12', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('133', '1', '133', '1', '11', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('134', '1', '134', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('135', '1', '135', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('136', '1', '136', '1', '11', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('137', '1', '137', '1', '10', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('138', '1', '138', '1', '7', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('139', '1', '139', '1', '18', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('140', '1', '140', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('141', '1', '141', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('142', '1', '142', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('143', '1', '143', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('144', '1', '144', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('145', '1', '145', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('146', '1', '146', '1', '4', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('147', '1', '147', '1', '6', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('148', '1', '148', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('149', '1', '149', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('150', '1', '150', '1', '5', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('151', '1', '151', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('152', '1', '152', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('153', '1', '153', '1', '6', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('154', '1', '154', '1', '11', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('155', '1', '155', '1', '10', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('156', '1', '156', '1', '5', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('157', '1', '157', '1', '15', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('158', '1', '158', '1', '6', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('159', '1', '159', '1', '11', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('160', '1', '160', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('161', '1', '161', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('162', '1', '162', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('163', '1', '163', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('164', '1', '164', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('165', '1', '165', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('166', '1', '166', '1', '6', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('167', '1', '167', '1', '4', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('168', '1', '168', '1', '6', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('169', '1', '169', '1', '9', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('170', '1', '170', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('171', '1', '171', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('172', '1', '172', '1', '11', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('173', '1', '173', '1', '7', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('174', '1', '174', '1', '12', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('175', '1', '175', '1', '9', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('176', '1', '176', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('177', '1', '177', '1', '17', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('178', '1', '178', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('179', '1', '179', '1', '16', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('180', '1', '180', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('181', '1', '181', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('182', '1', '182', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('183', '1', '183', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('184', '1', '184', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('185', '1', '185', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('186', '1', '186', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('187', '1', '187', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('188', '1', '188', '1', '8', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('189', '1', '189', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('190', '1', '190', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('191', '1', '191', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('192', '1', '192', '1', '4', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('193', '1', '193', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('194', '1', '194', '1', '14', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('195', '1', '195', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('196', '1', '196', '1', '9', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('197', '1', '197', '1', '8', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('198', '1', '198', '1', '18', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('199', '1', '199', '1', '12', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('200', '1', '200', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('201', '1', '201', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('202', '1', '202', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('203', '1', '203', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('204', '1', '204', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('205', '1', '205', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('206', '1', '206', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('207', '1', '207', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('208', '1', '208', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('209', '1', '209', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('210', '1', '210', '1', '9', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('211', '1', '211', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('212', '1', '212', '1', '9', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('213', '1', '213', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('214', '1', '214', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('215', '1', '215', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('216', '1', '216', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('217', '1', '217', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('218', '1', '218', '1', '11', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('219', '1', '219', '1', '11', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('220', '1', '220', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('221', '1', '221', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('222', '1', '222', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('223', '1', '223', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('224', '1', '224', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('225', '1', '225', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('226', '1', '226', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('227', '1', '227', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('228', '1', '228', '1', '8', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('229', '1', '229', '1', '9', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('230', '1', '230', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('231', '1', '231', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('232', '1', '232', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('233', '1', '233', '1', '13', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('234', '1', '234', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('235', '1', '235', '1', '15', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('236', '1', '236', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('237', '1', '237', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('238', '1', '238', '1', '17', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('239', '1', '239', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('240', '1', '240', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('241', '1', '241', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('242', '1', '242', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('243', '1', '243', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('244', '1', '244', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('245', '1', '245', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('246', '1', '246', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('247', '1', '247', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('248', '1', '248', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('249', '1', '249', '1', '8', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('250', '1', '250', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('251', '1', '251', '1', '8', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('252', '1', '252', '1', '10', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('253', '1', '253', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('254', '1', '254', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('255', '1', '255', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('256', '1', '256', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('257', '1', '257', '1', '13', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('258', '1', '258', '1', '10', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('259', '1', '259', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('260', '1', '260', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('261', '1', '261', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('262', '1', '262', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('263', '1', '263', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('264', '1', '264', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('265', '1', '265', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('266', '1', '266', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('267', '1', '267', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('268', '1', '268', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('269', '1', '269', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('270', '1', '270', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('271', '1', '271', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('272', '1', '272', '1', '11', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('273', '1', '273', '1', '10', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('274', '1', '274', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('275', '1', '275', '1', '10', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('276', '1', '276', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('277', '1', '277', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('278', '1', '278', '1', '11', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('279', '1', '279', '1', '14', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('280', '1', '280', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('281', '1', '281', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('282', '1', '282', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('283', '1', '283', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('284', '1', '284', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('285', '1', '285', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('286', '1', '286', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('287', '1', '287', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('288', '1', '288', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('289', '1', '289', '1', '9', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('290', '1', '290', '1', '10', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('291', '1', '291', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('292', '1', '292', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('293', '1', '293', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('294', '1', '294', '1', '11', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('295', '1', '295', '1', '11', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('296', '1', '296', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('297', '1', '297', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('298', '1', '298', '1', '14', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('299', '1', '299', '1', '17', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('300', '1', '300', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('301', '1', '301', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('302', '1', '302', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('303', '1', '303', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('304', '1', '304', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('305', '1', '305', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('306', '1', '306', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('307', '1', '307', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('308', '1', '308', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('309', '1', '309', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('310', '1', '310', '1', '10', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('311', '1', '311', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('312', '1', '312', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('313', '1', '313', '1', '10', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('314', '1', '314', '1', '13', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('315', '1', '315', '1', '15', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('316', '1', '316', '1', '15', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('317', '1', '317', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('318', '1', '318', '1', '14', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('319', '1', '319', '1', '14', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('320', '1', '320', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('321', '1', '321', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('322', '1', '322', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('323', '1', '323', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('324', '1', '324', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('325', '1', '325', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('326', '1', '326', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('327', '1', '327', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('328', '1', '328', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('329', '1', '329', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('330', '1', '330', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('331', '1', '331', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('332', '1', '332', '1', '11', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('333', '1', '333', '1', '7', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('334', '1', '334', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('335', '1', '335', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('336', '1', '336', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('337', '1', '337', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('338', '1', '338', '1', '12', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('339', '1', '339', '1', '19', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('340', '1', '340', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('341', '1', '341', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('342', '1', '342', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('343', '1', '343', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('344', '1', '344', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('345', '1', '345', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('346', '1', '346', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('347', '1', '347', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('348', '1', '348', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('349', '1', '349', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('350', '1', '350', '1', '10', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('351', '1', '351', '1', '11', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('352', '1', '352', '1', '7', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('353', '1', '353', '1', '8', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('354', '1', '354', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('355', '1', '355', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('356', '1', '356', '1', '12', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('357', '1', '357', '1', '10', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('358', '1', '358', '1', '10', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('359', '1', '359', '1', '13', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('360', '1', '360', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('361', '1', '361', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('362', '1', '362', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('363', '1', '363', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('364', '1', '364', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('365', '1', '365', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('366', '1', '366', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('367', '1', '367', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('368', '1', '368', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('369', '1', '369', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('370', '1', '370', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('371', '1', '371', '1', '11', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('372', '1', '372', '1', '11', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('373', '1', '373', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('374', '1', '374', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('375', '1', '375', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('376', '1', '376', '1', '12', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('377', '1', '377', '1', '14', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('378', '1', '378', '1', '11', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('379', '1', '379', '1', '7', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('380', '1', '380', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('381', '1', '381', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('382', '1', '382', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('383', '1', '383', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('384', '1', '384', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('385', '1', '385', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('386', '1', '386', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('387', '1', '387', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('388', '1', '388', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('389', '1', '389', '1', '8', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('390', '1', '390', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('391', '1', '391', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('392', '1', '392', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('393', '1', '393', '1', '10', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('394', '1', '394', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('395', '1', '395', '1', '8', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('396', '1', '396', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('397', '1', '397', '1', '11', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('398', '1', '398', '1', '18', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('399', '1', '399', '1', '15', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('400', '1', '400', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('401', '1', '401', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('402', '1', '402', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('403', '1', '403', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('404', '1', '404', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('405', '1', '405', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('406', '1', '406', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('407', '1', '407', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('408', '1', '408', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('409', '1', '409', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('410', '1', '410', '1', '7', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('411', '1', '411', '1', '10', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('412', '1', '412', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('413', '1', '413', '1', '9', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('414', '1', '414', '1', '6', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('415', '1', '415', '1', '13', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('416', '1', '416', '1', '12', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('417', '1', '417', '1', '11', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('418', '1', '418', '1', '7', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('419', '1', '419', '1', '11', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('420', '1', '420', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('421', '1', '421', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('422', '1', '422', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('423', '1', '423', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('424', '1', '424', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('425', '1', '425', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('426', '1', '426', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('427', '1', '427', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('428', '1', '428', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('429', '1', '429', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('430', '1', '430', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('431', '1', '431', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('432', '1', '432', '1', '10', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('433', '1', '433', '1', '11', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('434', '1', '434', '1', '11', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('435', '1', '435', '1', '12', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('436', '1', '436', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('437', '1', '437', '1', '9', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('438', '1', '438', '1', '12', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('439', '1', '439', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('440', '1', '440', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('441', '1', '441', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('442', '1', '442', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('443', '1', '443', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('444', '1', '444', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('445', '1', '445', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('446', '1', '446', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('447', '1', '447', '1', '6', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('448', '1', '448', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('449', '1', '449', '1', '9', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('450', '1', '450', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('451', '1', '451', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('452', '1', '452', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('453', '1', '453', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('454', '1', '454', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('455', '1', '455', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('456', '1', '456', '1', '15', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('457', '1', '457', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('458', '1', '458', '1', '12', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('459', '1', '459', '1', '18', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('460', '1', '460', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('461', '1', '461', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('462', '1', '462', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('463', '1', '463', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('464', '1', '464', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('465', '1', '465', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('466', '1', '466', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('467', '1', '467', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('468', '1', '468', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('469', '1', '469', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('470', '1', '470', '1', '9', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('471', '1', '471', '1', '9', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('472', '1', '472', '1', '7', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('473', '1', '473', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('474', '1', '474', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('475', '1', '475', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('476', '1', '476', '1', '14', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('477', '1', '477', '1', '12', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('478', '1', '478', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('479', '1', '479', '1', '19', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('480', '1', '480', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('481', '1', '481', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('482', '1', '482', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('483', '1', '483', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('484', '1', '484', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('485', '1', '485', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('486', '1', '486', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('487', '1', '487', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('488', '1', '488', '1', '6', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('489', '1', '489', '1', '9', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('490', '1', '490', '1', '7', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('491', '1', '491', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('492', '1', '492', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('493', '1', '493', '1', '13', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('494', '1', '494', '1', '6', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('495', '1', '495', '1', '13', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('496', '1', '496', '1', '15', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('497', '1', '497', '1', '10', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('498', '1', '498', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('499', '1', '499', '1', '6', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('500', '1', '500', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('501', '1', '1001', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('502', '1', '1002', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('503', '1', '1003', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('504', '1', '1004', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('505', '1', '1005', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('506', '1', '1006', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('507', '1', '1007', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('508', '1', '1008', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('509', '1', '1009', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('510', '1', '1010', '1', '9', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('511', '1', '1011', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('512', '1', '1012', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('513', '1', '1013', '1', '7', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('514', '1', '1014', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('515', '1', '1015', '1', '8', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('516', '1', '1016', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('517', '1', '1017', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('518', '1', '1018', '1', '8', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('519', '1', '1019', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('520', '1', '1020', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('521', '1', '1021', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('522', '1', '1022', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('523', '1', '1023', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('524', '1', '1024', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('525', '1', '1025', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('526', '1', '1026', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('527', '1', '1027', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('528', '1', '1028', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('529', '1', '1029', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('530', '1', '1030', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('531', '1', '1031', '1', '8', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('532', '1', '1032', '1', '10', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('533', '1', '1033', '1', '13', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('534', '1', '1034', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('535', '1', '1035', '1', '9', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('536', '1', '1036', '1', '10', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('537', '1', '1037', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('538', '1', '1038', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('539', '1', '1039', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('540', '1', '1040', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('541', '1', '1041', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('542', '1', '1042', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('543', '1', '1043', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('544', '1', '1044', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('545', '1', '1045', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('546', '1', '1046', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('547', '1', '1047', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('548', '1', '1048', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('549', '1', '1049', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('550', '1', '1050', '1', '9', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('551', '1', '1051', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('552', '1', '1052', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('553', '1', '1053', '1', '7', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('554', '1', '1054', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('555', '1', '1055', '1', '11', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('556', '1', '1056', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('557', '1', '1057', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('558', '1', '1058', '1', '5', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('559', '1', '1059', '1', '3', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('560', '1', '1060', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('561', '1', '1061', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('562', '1', '1062', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('563', '1', '1063', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('564', '1', '1064', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('565', '1', '1065', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('566', '1', '1066', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('567', '1', '1067', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('568', '1', '1068', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('569', '1', '1069', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('570', '1', '1070', '1', '7', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('571', '1', '1071', '1', '11', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('572', '1', '1072', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('573', '1', '1073', '1', '6', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('574', '1', '1074', '1', '14', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('575', '1', '1075', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('576', '1', '1076', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('577', '1', '1077', '1', '9', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('578', '1', '1078', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('579', '1', '1079', '1', '17', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('580', '1', '1080', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('581', '1', '1081', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('582', '1', '1082', '1', '1', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('583', '1', '1083', '1', '2', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('584', '1', '1084', '1', '0', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('585', '1', '1085', '1', '4', '2015-07-01 09:55:00');
INSERT INTO `sniffer_data` VALUES ('586', '1', '1001', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('587', '1', '1002', '1', '1', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('588', '1', '1003', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('589', '1', '1004', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('590', '1', '1005', '1', '4', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('591', '1', '1006', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('592', '1', '1007', '1', '6', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('593', '1', '1008', '1', '6', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('594', '1', '1009', '1', '6', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('595', '1', '1010', '1', '7', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('596', '1', '1011', '1', '10', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('597', '1', '1012', '1', '2', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('598', '1', '1013', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('599', '1', '1014', '1', '8', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('600', '1', '1015', '1', '4', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('601', '1', '1016', '1', '7', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('602', '1', '1017', '1', '3', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('603', '1', '1018', '1', '16', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('604', '1', '1019', '1', '17', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('605', '1', '1020', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('606', '1', '1021', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('607', '1', '1022', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('608', '1', '1023', '1', '0', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('609', '1', '1024', '1', '4', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('610', '1', '1025', '1', '4', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('611', '1', '1026', '1', '5', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('612', '1', '1027', '1', '7', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('613', '1', '1028', '1', '7', '2015-07-02 09:55:00');
INSERT INTO `sniffer_data` VALUES ('614', '1', '1001', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('615', '1', '1002', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('616', '1', '1003', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('617', '1', '1004', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('618', '1', '1005', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('619', '1', '1006', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('620', '1', '1007', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('621', '1', '1008', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('622', '1', '1009', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('623', '1', '1010', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('624', '1', '1011', '1', '10', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('625', '1', '1012', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('626', '1', '1013', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('627', '1', '1014', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('628', '1', '1015', '1', '9', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('629', '1', '1016', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('630', '1', '1017', '1', '8', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('631', '1', '1018', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('632', '1', '1019', '1', '14', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('633', '1', '1020', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('634', '1', '1021', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('635', '1', '1022', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('636', '1', '1023', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('637', '1', '1024', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('638', '1', '1025', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('639', '1', '1026', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('640', '1', '1027', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('641', '1', '1028', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('642', '1', '1029', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('643', '1', '1030', '1', '10', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('644', '1', '1031', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('645', '1', '1032', '1', '10', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('646', '1', '1033', '1', '12', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('647', '1', '1034', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('648', '1', '1035', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('649', '1', '1036', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('650', '1', '1037', '1', '16', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('651', '1', '1038', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('652', '1', '1039', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('653', '1', '1040', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('654', '1', '1041', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('655', '1', '1042', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('656', '1', '1043', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('657', '1', '1044', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('658', '1', '1045', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('659', '1', '1046', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('660', '1', '1047', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('661', '1', '1048', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('662', '1', '1049', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('663', '1', '1050', '1', '9', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('664', '1', '1051', '1', '10', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('665', '1', '1052', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('666', '1', '1053', '1', '13', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('667', '1', '1054', '1', '13', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('668', '1', '1055', '1', '12', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('669', '1', '1056', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('670', '1', '1057', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('671', '1', '1058', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('672', '1', '1059', '1', '19', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('673', '1', '1060', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('674', '1', '1061', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('675', '1', '1062', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('676', '1', '1063', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('677', '1', '1064', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('678', '1', '1065', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('679', '1', '1066', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('680', '1', '1067', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('681', '1', '1068', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('682', '1', '1069', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('683', '1', '1070', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('684', '1', '1071', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('685', '1', '1072', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('686', '1', '1073', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('687', '1', '1074', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('688', '1', '1075', '1', '9', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('689', '1', '1076', '1', '10', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('690', '1', '1077', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('691', '1', '1078', '1', '12', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('692', '1', '1079', '1', '16', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('693', '1', '1080', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('694', '1', '1081', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('695', '1', '1082', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('696', '1', '1083', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('697', '1', '1084', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('698', '1', '1085', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('699', '1', '1086', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('700', '1', '1087', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('701', '1', '1088', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('702', '1', '1089', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('703', '1', '1090', '1', '9', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('704', '1', '1091', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('705', '1', '1092', '1', '9', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('706', '1', '1093', '1', '12', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('707', '1', '1094', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('708', '1', '1095', '1', '14', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('709', '1', '1096', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('710', '1', '1097', '1', '8', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('711', '1', '1098', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('712', '1', '1099', '1', '5', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('713', '1', '1100', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('714', '1', '1101', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('715', '1', '1102', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('716', '1', '1103', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('717', '1', '1104', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('718', '1', '1105', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('719', '1', '1106', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('720', '1', '1107', '1', '4', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('721', '1', '1108', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('722', '1', '1109', '1', '9', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('723', '1', '1110', '1', '8', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('724', '1', '1111', '1', '2', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('725', '1', '1112', '1', '6', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('726', '1', '1113', '1', '7', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('727', '1', '1114', '1', '1', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('728', '1', '1115', '1', '14', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('729', '1', '1116', '1', '0', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('730', '1', '1117', '1', '8', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('731', '1', '1118', '1', '3', '2015-07-03 09:55:00');
INSERT INTO `sniffer_data` VALUES ('732', '1', '1001', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('733', '1', '1002', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('734', '1', '1003', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('735', '1', '1004', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('736', '1', '1005', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('737', '1', '1006', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('738', '1', '1007', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('739', '1', '1008', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('740', '1', '1009', '1', '7', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('741', '1', '1010', '1', '10', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('742', '1', '1011', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('743', '1', '1012', '1', '9', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('744', '1', '1013', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('745', '1', '1014', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('746', '1', '1015', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('747', '1', '1016', '1', '14', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('748', '1', '1017', '1', '13', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('749', '1', '1018', '1', '15', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('750', '1', '1019', '1', '12', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('751', '1', '1020', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('752', '1', '1021', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('753', '1', '1022', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('754', '1', '1023', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('755', '1', '1024', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('756', '1', '1025', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('757', '1', '1026', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('758', '1', '1027', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('759', '1', '1028', '1', '8', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('760', '1', '1029', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('761', '1', '1030', '1', '10', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('762', '1', '1031', '1', '7', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('763', '1', '1032', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('764', '1', '1033', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('765', '1', '1034', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('766', '1', '1035', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('767', '1', '1036', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('768', '1', '1037', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('769', '1', '1038', '1', '17', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('770', '1', '1039', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('771', '1', '1040', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('772', '1', '1041', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('773', '1', '1042', '1', '2', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('774', '1', '1043', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('775', '1', '1044', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('776', '1', '1045', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('777', '1', '1046', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('778', '1', '1047', '1', '3', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('779', '1', '1048', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('780', '1', '1049', '1', '8', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('781', '1', '1050', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('782', '1', '1051', '1', '5', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('783', '1', '1052', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('784', '1', '1053', '1', '9', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('785', '1', '1054', '1', '13', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('786', '1', '1055', '1', '4', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('787', '1', '1056', '1', '8', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('788', '1', '1057', '1', '10', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('789', '1', '1058', '1', '6', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('790', '1', '1059', '1', '18', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('791', '1', '1060', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('792', '1', '1061', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('793', '1', '1062', '1', '1', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('794', '1', '1063', '1', '0', '2015-07-04 09:55:00');
INSERT INTO `sniffer_data` VALUES ('795', '1', '1001', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('796', '1', '1002', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('797', '1', '1003', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('798', '1', '1004', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('799', '1', '1005', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('800', '1', '1006', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('801', '1', '1007', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('802', '1', '1008', '1', '7', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('803', '1', '1009', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('804', '1', '1010', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('805', '1', '1011', '1', '6', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('806', '1', '1012', '1', '10', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('807', '1', '1013', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('808', '1', '1014', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('809', '1', '1015', '1', '14', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('810', '1', '1016', '1', '16', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('811', '1', '1017', '1', '13', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('812', '1', '1018', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('813', '1', '1019', '1', '19', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('814', '1', '1020', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('815', '1', '1021', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('816', '1', '1022', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('817', '1', '1023', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('818', '1', '1024', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('819', '1', '1025', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('820', '1', '1026', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('821', '1', '1027', '1', '7', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('822', '1', '1028', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('823', '1', '1029', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('824', '1', '1030', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('825', '1', '1031', '1', '6', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('826', '1', '1032', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('827', '1', '1033', '1', '10', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('828', '1', '1034', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('829', '1', '1035', '1', '12', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('830', '1', '1036', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('831', '1', '1037', '1', '17', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('832', '1', '1038', '1', '14', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('833', '1', '1039', '1', '19', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('834', '1', '1040', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('835', '1', '1041', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('836', '1', '1042', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('837', '1', '1043', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('838', '1', '1044', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('839', '1', '1045', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('840', '1', '1046', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('841', '1', '1047', '1', '1', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('842', '1', '1048', '1', '7', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('843', '1', '1049', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('844', '1', '1050', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('845', '1', '1051', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('846', '1', '1052', '1', '10', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('847', '1', '1053', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('848', '1', '1054', '1', '6', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('849', '1', '1055', '1', '10', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('850', '1', '1056', '1', '6', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('851', '1', '1057', '1', '14', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('852', '1', '1058', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('853', '1', '1059', '1', '18', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('854', '1', '1060', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('855', '1', '1061', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('856', '1', '1062', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('857', '1', '1063', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('858', '1', '1064', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('859', '1', '1065', '1', '2', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('860', '1', '1066', '1', '6', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('861', '1', '1067', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('862', '1', '1068', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('863', '1', '1069', '1', '0', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('864', '1', '1070', '1', '8', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('865', '1', '1071', '1', '4', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('866', '1', '1072', '1', '3', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('867', '1', '1073', '1', '11', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('868', '1', '1074', '1', '10', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('869', '1', '1075', '1', '5', '2015-07-05 09:55:00');
INSERT INTO `sniffer_data` VALUES ('870', '1', '1076', '1', '16', '2015-07-05 09:55:00');

-- ----------------------------
-- Table structure for td_tag
-- ----------------------------
DROP TABLE IF EXISTS `td_tag`;
CREATE TABLE `td_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '标签属性名称',
  `code` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '标签属性编码',
  `parent_id` int(11) DEFAULT NULL COMMENT '父标签id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of td_tag
-- ----------------------------
INSERT INTO `td_tag` VALUES ('1', '游戏类型', '0101', '105');
INSERT INTO `td_tag` VALUES ('2', '游戏题材', '0102', '105');
INSERT INTO `td_tag` VALUES ('3', '美术风格', '0103', '105');
INSERT INTO `td_tag` VALUES ('4', '休闲时间', '010101', '1');
INSERT INTO `td_tag` VALUES ('5', '切东西', '01010101', '4');
INSERT INTO `td_tag` VALUES ('6', '找茬', '01010102', '4');
INSERT INTO `td_tag` VALUES ('7', '减压', '01010103', '4');
INSERT INTO `td_tag` VALUES ('8', '宠物', '01010104', '4');
INSERT INTO `td_tag` VALUES ('9', '答题', '01010105', '4');
INSERT INTO `td_tag` VALUES ('10', '捕鱼', '01010106', '4');
INSERT INTO `td_tag` VALUES ('11', '音乐舞蹈', '01010107', '4');
INSERT INTO `td_tag` VALUES ('12', '益智', '01010108', '4');
INSERT INTO `td_tag` VALUES ('13', '冒险解谜', '01010109', '4');
INSERT INTO `td_tag` VALUES ('14', '跑酷竞速', '010102', '1');
INSERT INTO `td_tag` VALUES ('15', '跑酷', '01010201', '14');
INSERT INTO `td_tag` VALUES ('16', '赛车', '01010202', '14');
INSERT INTO `td_tag` VALUES ('17', '摩托', '01010203', '14');
INSERT INTO `td_tag` VALUES ('18', '赛艇', '01010204', '14');
INSERT INTO `td_tag` VALUES ('19', '飞机', '01010205', '14');
INSERT INTO `td_tag` VALUES ('20', '宝石消除', '010103', '1');
INSERT INTO `td_tag` VALUES ('21', '方块', '01010301', '20');
INSERT INTO `td_tag` VALUES ('22', '宝石', '01010302', '20');
INSERT INTO `td_tag` VALUES ('23', '连连看', '01010303', '20');
INSERT INTO `td_tag` VALUES ('24', '祖玛', '01010304', '20');
INSERT INTO `td_tag` VALUES ('25', '泡泡龙', '01010305', '20');
INSERT INTO `td_tag` VALUES ('26', '卡通', '01010306', '20');
INSERT INTO `td_tag` VALUES ('27', '网络游戏', '010104', '1');
INSERT INTO `td_tag` VALUES ('28', '角色扮演', '01010401', '27');
INSERT INTO `td_tag` VALUES ('29', '动作竞技', '01010402', '27');
INSERT INTO `td_tag` VALUES ('30', '策略', '01010403', '27');
INSERT INTO `td_tag` VALUES ('31', '卡牌', '01010404', '27');
INSERT INTO `td_tag` VALUES ('32', '经营模拟', '01010405', '27');
INSERT INTO `td_tag` VALUES ('33', '动作射击', '010105', '1');
INSERT INTO `td_tag` VALUES ('34', '横版', '01010501', '33');
INSERT INTO `td_tag` VALUES ('35', '射击', '01010502', '33');
INSERT INTO `td_tag` VALUES ('36', '3D', '01010503', '33');
INSERT INTO `td_tag` VALUES ('37', '飞行', '01010504', '33');
INSERT INTO `td_tag` VALUES ('38', '坦克', '01010505', '33');
INSERT INTO `td_tag` VALUES ('39', '狙击', '01010506', '33');
INSERT INTO `td_tag` VALUES ('40', '扑克棋牌', '010106', '1');
INSERT INTO `td_tag` VALUES ('41', '斗地主', '01010601', '40');
INSERT INTO `td_tag` VALUES ('42', '棋类', '01010602', '40');
INSERT INTO `td_tag` VALUES ('43', '麻将', '01010603', '40');
INSERT INTO `td_tag` VALUES ('44', '桌游', '01010604', '40');
INSERT INTO `td_tag` VALUES ('45', '德州扑克', '01010605', '40');
INSERT INTO `td_tag` VALUES ('46', '纸牌', '01010606', '40');
INSERT INTO `td_tag` VALUES ('47', '儿童益智', '010107', '1');
INSERT INTO `td_tag` VALUES ('48', '拼图', '01010701', '47');
INSERT INTO `td_tag` VALUES ('49', '识字', '01010702', '47');
INSERT INTO `td_tag` VALUES ('50', '智力开发', '01010703', '47');
INSERT INTO `td_tag` VALUES ('51', '数学', '01010704', '47');
INSERT INTO `td_tag` VALUES ('52', '塔防守卫', '010108', '1');
INSERT INTO `td_tag` VALUES ('53', '闯关', '01010801', '52');
INSERT INTO `td_tag` VALUES ('54', '抢滩登陆', '01010802', '52');
INSERT INTO `td_tag` VALUES ('55', '体育格斗', '010109', '1');
INSERT INTO `td_tag` VALUES ('56', '街机', '01010901', '55');
INSERT INTO `td_tag` VALUES ('57', '篮球', '01010902', '55');
INSERT INTO `td_tag` VALUES ('58', '足球', '01010903', '55');
INSERT INTO `td_tag` VALUES ('59', '网球', '01010904', '55');
INSERT INTO `td_tag` VALUES ('60', '台球', '01010905', '55');
INSERT INTO `td_tag` VALUES ('61', '其他球类', '01010906', '55');
INSERT INTO `td_tag` VALUES ('62', '角色扮演', '010110', '1');
INSERT INTO `td_tag` VALUES ('63', '回合制', '01011001', '62');
INSERT INTO `td_tag` VALUES ('64', '即时战斗', '01011002', '62');
INSERT INTO `td_tag` VALUES ('65', 'ARPG', '01011003', '62');
INSERT INTO `td_tag` VALUES ('66', '经营策略', '010111', '1');
INSERT INTO `td_tag` VALUES ('67', '战棋', '01011101', '66');
INSERT INTO `td_tag` VALUES ('68', '经营', '01011102', '66');
INSERT INTO `td_tag` VALUES ('69', '农场家园', '01011103', '66');
INSERT INTO `td_tag` VALUES ('70', '养成类', '010112', '1');
INSERT INTO `td_tag` VALUES ('71', '宠物养成类', '01011201', '70');
INSERT INTO `td_tag` VALUES ('72', '恋爱养成', '01011202', '70');
INSERT INTO `td_tag` VALUES ('73', '挂机类', '010113', '1');
INSERT INTO `td_tag` VALUES ('74', '文字游戏', '010114', '1');
INSERT INTO `td_tag` VALUES ('75', '博彩类', '010115', '1');
INSERT INTO `td_tag` VALUES ('76', '三国', '010201', '2');
INSERT INTO `td_tag` VALUES ('77', '武侠', '010202', '2');
INSERT INTO `td_tag` VALUES ('78', '修仙玄幻', '010203', '2');
INSERT INTO `td_tag` VALUES ('79', '西游', '010204', '2');
INSERT INTO `td_tag` VALUES ('80', '水浒', '010205', '2');
INSERT INTO `td_tag` VALUES ('81', '中国古典神话', '010206', '2');
INSERT INTO `td_tag` VALUES ('82', '西方神话', '010207', '2');
INSERT INTO `td_tag` VALUES ('83', '80后日本动漫', '010208', '2');
INSERT INTO `td_tag` VALUES ('84', '二次元动漫', '010209', '2');
INSERT INTO `td_tag` VALUES ('85', '影视', '010210', '2');
INSERT INTO `td_tag` VALUES ('86', '综艺', '010211', '2');
INSERT INTO `td_tag` VALUES ('87', '军事战争', '010212', '2');
INSERT INTO `td_tag` VALUES ('88', '科幻', '010213', '2');
INSERT INTO `td_tag` VALUES ('89', '僵尸', '010214', '2');
INSERT INTO `td_tag` VALUES ('90', '魔兽', '010215', '2');
INSERT INTO `td_tag` VALUES ('91', '魔幻', '010216', '2');
INSERT INTO `td_tag` VALUES ('92', 'DOTA-LOL', '010217', '2');
INSERT INTO `td_tag` VALUES ('93', '航海', '010218', '2');
INSERT INTO `td_tag` VALUES ('94', '体育', '010219', '2');
INSERT INTO `td_tag` VALUES ('95', '水墨', '010301', '3');
INSERT INTO `td_tag` VALUES ('96', '日韩风', '010302', '3');
INSERT INTO `td_tag` VALUES ('97', '日式动漫', '010303', '3');
INSERT INTO `td_tag` VALUES ('98', '欧美动漫', '010304', '3');
INSERT INTO `td_tag` VALUES ('99', 'Q版画风', '010305', '3');
INSERT INTO `td_tag` VALUES ('100', '像素风格', '010306', '3');
INSERT INTO `td_tag` VALUES ('101', '暴力血腥', '010307', '3');
INSERT INTO `td_tag` VALUES ('102', '欧美魔幻', '010308', '3');
INSERT INTO `td_tag` VALUES ('103', '写实', '010309', '3');
INSERT INTO `td_tag` VALUES ('104', '中国动漫', '010310', '3');
INSERT INTO `td_tag` VALUES ('105', '游戏偏好', '01', null);
INSERT INTO `td_tag` VALUES ('106', '游戏付费额度', '0104', '105');
INSERT INTO `td_tag` VALUES ('107', '100以下', '010401', '106');
INSERT INTO `td_tag` VALUES ('108', '100-500', '010402', '106');
INSERT INTO `td_tag` VALUES ('109', '500-1000', '010403', '106');
INSERT INTO `td_tag` VALUES ('110', '1000-5000', '010404', '106');
INSERT INTO `td_tag` VALUES ('111', '5000以上', '010405', '106');
INSERT INTO `td_tag` VALUES ('112', '游戏付费意愿', '0105', '105');
INSERT INTO `td_tag` VALUES ('113', '高', '010501', '112');
INSERT INTO `td_tag` VALUES ('114', '低', '010502', '112');
INSERT INTO `td_tag` VALUES ('115', '应用兴趣', '02', null);
INSERT INTO `td_tag` VALUES ('116', '应用类别', '0201', '115');
INSERT INTO `td_tag` VALUES ('117', '网购', '020101', '116');
INSERT INTO `td_tag` VALUES ('118', '网上商城', '02010101', '117');
INSERT INTO `td_tag` VALUES ('119', '团购', '02010102', '117');
INSERT INTO `td_tag` VALUES ('120', '导购', '02010103', '117');
INSERT INTO `td_tag` VALUES ('121', '比价', '02010104', '117');
INSERT INTO `td_tag` VALUES ('122', '购物分享', '02010105', '117');
INSERT INTO `td_tag` VALUES ('123', '教育', '020102', '116');
INSERT INTO `td_tag` VALUES ('124', '早教', '02010201', '123');
INSERT INTO `td_tag` VALUES ('125', '课外辅导', '02010202', '123');
INSERT INTO `td_tag` VALUES ('126', '留学出国', '02010203', '123');
INSERT INTO `td_tag` VALUES ('127', '外语', '02010204', '123');
INSERT INTO `td_tag` VALUES ('128', '专业技能', '02010205', '123');
INSERT INTO `td_tag` VALUES ('129', '管理', '02010206', '123');
INSERT INTO `td_tag` VALUES ('130', '文化艺术', '02010207', '123');
INSERT INTO `td_tag` VALUES ('131', '图书音像', '02010208', '123');
INSERT INTO `td_tag` VALUES ('132', '考试', '02010209', '123');
INSERT INTO `td_tag` VALUES ('133', '方言', '02010210', '123');
INSERT INTO `td_tag` VALUES ('134', '课程管理', '02010211', '123');
INSERT INTO `td_tag` VALUES ('135', '阅读', '020103', '116');
INSERT INTO `td_tag` VALUES ('136', '胎教读物', '02010301', '135');
INSERT INTO `td_tag` VALUES ('137', '少儿读物', '02010302', '135');
INSERT INTO `td_tag` VALUES ('138', '小说', '02010303', '135');
INSERT INTO `td_tag` VALUES ('139', '期刊杂志', '02010304', '135');
INSERT INTO `td_tag` VALUES ('140', '漫画', '02010305', '135');
INSERT INTO `td_tag` VALUES ('141', '词典翻译', '02010306', '135');
INSERT INTO `td_tag` VALUES ('142', '阅读平台', '02010307', '135');
INSERT INTO `td_tag` VALUES ('143', '诗词名著', '02010308', '135');
INSERT INTO `td_tag` VALUES ('144', '笑话', '02010309', '135');
INSERT INTO `td_tag` VALUES ('145', '心理', '02010310', '135');
INSERT INTO `td_tag` VALUES ('146', '科普', '02010311', '135');
INSERT INTO `td_tag` VALUES ('147', '资讯', '020104', '116');
INSERT INTO `td_tag` VALUES ('148', '新闻', '02010401', '147');
INSERT INTO `td_tag` VALUES ('149', '娱乐', '02010402', '147');
INSERT INTO `td_tag` VALUES ('150', '学术', '02010403', '147');
INSERT INTO `td_tag` VALUES ('151', '体育', '02010404', '147');
INSERT INTO `td_tag` VALUES ('152', '财经', '02010405', '147');
INSERT INTO `td_tag` VALUES ('153', '科技', '02010406', '147');
INSERT INTO `td_tag` VALUES ('154', '游戏攻略', '02010407', '147');
INSERT INTO `td_tag` VALUES ('155', '社交', '020105', '116');
INSERT INTO `td_tag` VALUES ('156', '微博', '02010501', '155');
INSERT INTO `td_tag` VALUES ('157', '婚恋', '02010502', '155');
INSERT INTO `td_tag` VALUES ('158', '交友社区', '02010503', '155');
INSERT INTO `td_tag` VALUES ('159', '图片分享', '02010504', '155');
INSERT INTO `td_tag` VALUES ('160', '博客论坛', '02010505', '155');
INSERT INTO `td_tag` VALUES ('161', '通讯', '020106', '116');
INSERT INTO `td_tag` VALUES ('162', '即时通讯', '02010601', '161');
INSERT INTO `td_tag` VALUES ('163', '短信', '02010602', '161');
INSERT INTO `td_tag` VALUES ('164', '邮件', '02010603', '161');
INSERT INTO `td_tag` VALUES ('165', '电话', '02010604', '161');
INSERT INTO `td_tag` VALUES ('166', '影音', '020107', '116');
INSERT INTO `td_tag` VALUES ('167', '电台', '02010701', '166');
INSERT INTO `td_tag` VALUES ('168', '音乐', '02010702', '166');
INSERT INTO `td_tag` VALUES ('169', '视频', '02010703', '166');
INSERT INTO `td_tag` VALUES ('170', '秀场', '02010704', '166');
INSERT INTO `td_tag` VALUES ('171', '有声读物', '02010705', '166');
INSERT INTO `td_tag` VALUES ('172', '商旅出行', '020108', '116');
INSERT INTO `td_tag` VALUES ('173', '地图', '02010801', '172');
INSERT INTO `td_tag` VALUES ('174', '导航', '02010802', '172');
INSERT INTO `td_tag` VALUES ('175', '代驾', '02010803', '172');
INSERT INTO `td_tag` VALUES ('176', '打车', '02010804', '172');
INSERT INTO `td_tag` VALUES ('177', '租车', '02010805', '172');
INSERT INTO `td_tag` VALUES ('178', '航班', '02010806', '172');
INSERT INTO `td_tag` VALUES ('179', '公交', '02010807', '172');
INSERT INTO `td_tag` VALUES ('180', '火车', '02010808', '172');
INSERT INTO `td_tag` VALUES ('181', '酒店', '02010809', '172');
INSERT INTO `td_tag` VALUES ('182', '旅游资讯', '02010810', '172');
INSERT INTO `td_tag` VALUES ('183', '旅游产品', '02010811', '172');
INSERT INTO `td_tag` VALUES ('184', '游记分享', '02010812', '172');
INSERT INTO `td_tag` VALUES ('185', '长途客车', '02010813', '172');
INSERT INTO `td_tag` VALUES ('186', '家居', '020109', '116');
INSERT INTO `td_tag` VALUES ('187', '装潢', '02010901', '186');
INSERT INTO `td_tag` VALUES ('188', '家电', '02010902', '186');
INSERT INTO `td_tag` VALUES ('189', '家具', '02010903', '186');
INSERT INTO `td_tag` VALUES ('190', '家居用品', '02010904', '186');
INSERT INTO `td_tag` VALUES ('191', '智能家居', '02010905', '186');
INSERT INTO `td_tag` VALUES ('192', '健康', '020110', '116');
INSERT INTO `td_tag` VALUES ('193', '减肥', '02011001', '192');
INSERT INTO `td_tag` VALUES ('194', '运动健身', '02011002', '192');
INSERT INTO `td_tag` VALUES ('195', '养生', '02011003', '192');
INSERT INTO `td_tag` VALUES ('196', '医疗', '02011004', '192');
INSERT INTO `td_tag` VALUES ('197', '健康管理', '02011005', '192');
INSERT INTO `td_tag` VALUES ('198', '生活', '020111', '116');
INSERT INTO `td_tag` VALUES ('199', '拍照摄影', '02011101', '198');
INSERT INTO `td_tag` VALUES ('200', '文玩收藏', '02011102', '198');
INSERT INTO `td_tag` VALUES ('201', '外卖订餐', '02011103', '198');
INSERT INTO `td_tag` VALUES ('202', '占星运程', '02011104', '198');
INSERT INTO `td_tag` VALUES ('203', '优惠券', '02011105', '198');
INSERT INTO `td_tag` VALUES ('204', '点评', '02011106', '198');
INSERT INTO `td_tag` VALUES ('205', '食谱', '02011107', '198');
INSERT INTO `td_tag` VALUES ('206', '营业厅', '02011108', '198');
INSERT INTO `td_tag` VALUES ('207', '天气', '02011109', '198');
INSERT INTO `td_tag` VALUES ('208', '时钟', '02011110', '198');
INSERT INTO `td_tag` VALUES ('209', '快递', '02011111', '198');
INSERT INTO `td_tag` VALUES ('210', '日历', '02011112', '198');
INSERT INTO `td_tag` VALUES ('211', '记账', '02011113', '198');
INSERT INTO `td_tag` VALUES ('212', '车主服务', '02011114', '198');
INSERT INTO `td_tag` VALUES ('213', '便民服务', '02011115', '198');
INSERT INTO `td_tag` VALUES ('214', '时尚穿搭', '02011116', '198');
INSERT INTO `td_tag` VALUES ('215', '积分活动', '02011117', '198');
INSERT INTO `td_tag` VALUES ('216', '家政', '02011118', '198');
INSERT INTO `td_tag` VALUES ('217', '生活综合', '02011119', '198');
INSERT INTO `td_tag` VALUES ('218', '工作', '020112', '116');
INSERT INTO `td_tag` VALUES ('219', '招聘求职', '02011201', '218');
INSERT INTO `td_tag` VALUES ('220', '日程管理', '02011202', '218');
INSERT INTO `td_tag` VALUES ('221', '笔记', '02011203', '218');
INSERT INTO `td_tag` VALUES ('222', '备忘', '02011204', '218');
INSERT INTO `td_tag` VALUES ('223', '文件编辑', '02011205', '218');
INSERT INTO `td_tag` VALUES ('224', '名片', '02011206', '218');
INSERT INTO `td_tag` VALUES ('225', '通讯录', '02011207', '218');
INSERT INTO `td_tag` VALUES ('226', '网盘', '02011208', '218');
INSERT INTO `td_tag` VALUES ('227', '店铺管理', '02011209', '218');
INSERT INTO `td_tag` VALUES ('228', '工程制图', '02011210', '218');
INSERT INTO `td_tag` VALUES ('229', '手机工具', '020113', '116');
INSERT INTO `td_tag` VALUES ('230', '系统工具', '02011301', '229');
INSERT INTO `td_tag` VALUES ('231', '应用商店', '02011302', '229');
INSERT INTO `td_tag` VALUES ('232', '搜索', '02011303', '229');
INSERT INTO `td_tag` VALUES ('233', '输入法', '02011304', '229');
INSERT INTO `td_tag` VALUES ('234', '浏览器', '02011305', '229');
INSERT INTO `td_tag` VALUES ('235', '桌面美化', '02011306', '229');
INSERT INTO `td_tag` VALUES ('236', '阅读器', '02011307', '229');
INSERT INTO `td_tag` VALUES ('237', '实用工具', '02011308', '229');
INSERT INTO `td_tag` VALUES ('238', '编辑器', '02011309', '229');
INSERT INTO `td_tag` VALUES ('239', 'WIFI', '02011310', '229');
INSERT INTO `td_tag` VALUES ('240', '金融理财', '020114', '116');
INSERT INTO `td_tag` VALUES ('241', '财富管理', '02011401', '240');
INSERT INTO `td_tag` VALUES ('242', '货币基金', '02011402', '240');
INSERT INTO `td_tag` VALUES ('243', '直销银行', '02011403', '240');
INSERT INTO `td_tag` VALUES ('244', '直销保险', '02011404', '240');
INSERT INTO `td_tag` VALUES ('245', '证券', '02011405', '240');
INSERT INTO `td_tag` VALUES ('246', '期货', '02011406', '240');
INSERT INTO `td_tag` VALUES ('247', '外汇', '02011407', '240');
INSERT INTO `td_tag` VALUES ('248', '贵金属', '02011408', '240');
INSERT INTO `td_tag` VALUES ('249', '众酬融资', '02011409', '240');
INSERT INTO `td_tag` VALUES ('250', '彩票', '02011410', '240');
INSERT INTO `td_tag` VALUES ('251', '支付', '02011411', '240');
INSERT INTO `td_tag` VALUES ('252', '借贷', '02011412', '240');
INSERT INTO `td_tag` VALUES ('253', '房产', '020115', '116');
INSERT INTO `td_tag` VALUES ('254', '房屋咨询', '02011501', '253');
INSERT INTO `td_tag` VALUES ('255', '买房', '02011502', '253');
INSERT INTO `td_tag` VALUES ('256', '卖房', '02011503', '253');
INSERT INTO `td_tag` VALUES ('257', '租房', '02011504', '253');
INSERT INTO `td_tag` VALUES ('258', '母婴', '020116', '116');
INSERT INTO `td_tag` VALUES ('259', '怀孕备孕', '02011601', '258');
INSERT INTO `td_tag` VALUES ('260', '育儿', '02011602', '258');
INSERT INTO `td_tag` VALUES ('261', '母婴用品', '02011603', '258');
INSERT INTO `td_tag` VALUES ('262', '娱乐', '020117', '116');
INSERT INTO `td_tag` VALUES ('263', 'KTV', '02011701', '262');
INSERT INTO `td_tag` VALUES ('264', '演出', '02011702', '262');
INSERT INTO `td_tag` VALUES ('265', '电影', '02011703', '262');
INSERT INTO `td_tag` VALUES ('266', '汽车', '020118', '116');
INSERT INTO `td_tag` VALUES ('267', '汽车资讯', '02011801', '266');
INSERT INTO `td_tag` VALUES ('268', '买卖车', '02011802', '266');
INSERT INTO `td_tag` VALUES ('269', '个护美容', '020119', '116');
INSERT INTO `td_tag` VALUES ('270', '护肤', '02011901', '269');
INSERT INTO `td_tag` VALUES ('271', '美容美发美甲', '02011902', '269');
INSERT INTO `td_tag` VALUES ('272', '彩妆', '02011903', '269');
INSERT INTO `td_tag` VALUES ('273', '人口属性', '03', null);
INSERT INTO `td_tag` VALUES ('274', '性别', '0301', '273');
INSERT INTO `td_tag` VALUES ('275', '男', '030101', '274');
INSERT INTO `td_tag` VALUES ('276', '女', '030102', '274');
INSERT INTO `td_tag` VALUES ('277', '人生阶段', '0302', '273');
INSERT INTO `td_tag` VALUES ('278', '少年', '030201', '277');
INSERT INTO `td_tag` VALUES ('279', '青年', '030203', '277');
INSERT INTO `td_tag` VALUES ('280', '中年', '030204', '277');
INSERT INTO `td_tag` VALUES ('281', '老年', '030205', '277');
INSERT INTO `td_tag` VALUES ('282', '消费偏好', '04', null);
INSERT INTO `td_tag` VALUES ('283', '消费品类', '0401', '282');
INSERT INTO `td_tag` VALUES ('284', '消费定位', '0402', '282');
INSERT INTO `td_tag` VALUES ('285', '品牌国家', '0403', '282');
INSERT INTO `td_tag` VALUES ('286', '身份职业', '0303', '273');
INSERT INTO `td_tag` VALUES ('287', '大学生', '030301', '286');
INSERT INTO `td_tag` VALUES ('288', '婚育情况', '0304', '273');
INSERT INTO `td_tag` VALUES ('289', '未婚', '030401', '288');
INSERT INTO `td_tag` VALUES ('290', '已婚', '030402', '288');
INSERT INTO `td_tag` VALUES ('291', '车辆情况', '0305', '273');
INSERT INTO `td_tag` VALUES ('292', '有车', '030501', '291');
INSERT INTO `td_tag` VALUES ('293', '无车', '030502', '291');
INSERT INTO `td_tag` VALUES ('294', '珠宝手表', '040101', '283');
INSERT INTO `td_tag` VALUES ('295', '品牌手表', '04010101', '294');
INSERT INTO `td_tag` VALUES ('296', '时尚品牌', '040201', '284');
INSERT INTO `td_tag` VALUES ('297', '瑞士', '040301', '285');
INSERT INTO `td_tag` VALUES ('298', '服饰鞋帽', '040102', '283');
INSERT INTO `td_tag` VALUES ('299', '女装', '04010201', '298');
INSERT INTO `td_tag` VALUES ('300', '女鞋', '04010202', '298');
INSERT INTO `td_tag` VALUES ('301', '男装', '04010203', '298');
INSERT INTO `td_tag` VALUES ('302', '男鞋', '04010204', '298');
INSERT INTO `td_tag` VALUES ('303', '法国', '040302', '285');
INSERT INTO `td_tag` VALUES ('304', '香港', '040303', '285');
INSERT INTO `td_tag` VALUES ('305', '日本', '040304', '285');
INSERT INTO `td_tag` VALUES ('306', '高端品牌', '040202', '284');
INSERT INTO `td_tag` VALUES ('307', '美国', '040305', '285');
INSERT INTO `td_tag` VALUES ('308', '运动户外', '04010205', '298');
INSERT INTO `td_tag` VALUES ('309', '德国', '040306', '285');
INSERT INTO `td_tag` VALUES ('310', '内衣', '04010206', '298');
INSERT INTO `td_tag` VALUES ('311', '家居服装', '04010207', '298');
INSERT INTO `td_tag` VALUES ('312', '大众品牌', '040203', '284');
INSERT INTO `td_tag` VALUES ('313', '瑞典', '040307', '285');
INSERT INTO `td_tag` VALUES ('314', '配饰', '04010208', '298');
INSERT INTO `td_tag` VALUES ('315', '意大利', '040308', '285');
INSERT INTO `td_tag` VALUES ('316', '家居厨具', '040103', '283');
INSERT INTO `td_tag` VALUES ('317', '床上用品', '04010301', '316');
INSERT INTO `td_tag` VALUES ('318', '童装', '04010209', '298');
INSERT INTO `td_tag` VALUES ('319', '运动健康', '040104', '283');
INSERT INTO `td_tag` VALUES ('320', '户外装备', '04010401', '319');
INSERT INTO `td_tag` VALUES ('321', '中国大陆', '040309', '285');
INSERT INTO `td_tag` VALUES ('322', '箱包', '040105', '283');
INSERT INTO `td_tag` VALUES ('323', '女包', '04010501', '322');
INSERT INTO `td_tag` VALUES ('324', '台湾', '040310', '285');
INSERT INTO `td_tag` VALUES ('325', '母婴用品', '040106', '283');
INSERT INTO `td_tag` VALUES ('326', '婴儿服饰', '04010601', '325');
INSERT INTO `td_tag` VALUES ('327', '男包', '04010502', '322');
INSERT INTO `td_tag` VALUES ('328', '钱包', '04010503', '322');
INSERT INTO `td_tag` VALUES ('329', '数码', '040107', '283');
INSERT INTO `td_tag` VALUES ('330', '相机', '04010701', '329');
INSERT INTO `td_tag` VALUES ('331', '文化教育', '040108', '283');
INSERT INTO `td_tag` VALUES ('332', '办公文具', '04010801', '331');
INSERT INTO `td_tag` VALUES ('333', '珠宝饰品', '04010102', '294');
INSERT INTO `td_tag` VALUES ('334', '游泳用品', '04010402', '319');
INSERT INTO `td_tag` VALUES ('335', '加拿大', '040311', '285');
INSERT INTO `td_tag` VALUES ('336', '手机', '04010702', '329');
INSERT INTO `td_tag` VALUES ('337', '数码配件', '04010703', '329');
INSERT INTO `td_tag` VALUES ('338', '电脑', '04010704', '329');
INSERT INTO `td_tag` VALUES ('339', '奢侈品牌', '040204', '284');
INSERT INTO `td_tag` VALUES ('340', '化妆品', '040109', '283');
INSERT INTO `td_tag` VALUES ('341', '香氛精油', '04010901', '340');
INSERT INTO `td_tag` VALUES ('342', '功能包', '04010504', '322');
INSERT INTO `td_tag` VALUES ('343', '旅行箱', '04010505', '322');
INSERT INTO `td_tag` VALUES ('344', '彩妆', '04010902', '340');
INSERT INTO `td_tag` VALUES ('345', '护肤', '04010903', '340');
INSERT INTO `td_tag` VALUES ('346', '餐饮', '040110', '283');
INSERT INTO `td_tag` VALUES ('347', '家居装饰', '04010302', '316');
INSERT INTO `td_tag` VALUES ('348', '英国', '040312', '285');
INSERT INTO `td_tag` VALUES ('349', '工艺收藏', '04010802', '331');
INSERT INTO `td_tag` VALUES ('350', '韩国', '040313', '285');
INSERT INTO `td_tag` VALUES ('351', '奥地利', '040314', '285');
INSERT INTO `td_tag` VALUES ('352', '西班牙', '040315', '285');
INSERT INTO `td_tag` VALUES ('353', '家用电器', '040111', '283');
INSERT INTO `td_tag` VALUES ('354', '小家电', '04011101', '353');
INSERT INTO `td_tag` VALUES ('355', '卫浴产品', '04010303', '316');
INSERT INTO `td_tag` VALUES ('356', '孕妈用品', '04010602', '325');
INSERT INTO `td_tag` VALUES ('357', '童鞋', '04010210', '298');
INSERT INTO `td_tag` VALUES ('358', '挪威', '040316', '285');
INSERT INTO `td_tag` VALUES ('359', '厨房电器', '04011102', '353');
INSERT INTO `td_tag` VALUES ('360', '澳大利亚', '040317', '285');
INSERT INTO `td_tag` VALUES ('361', '休闲娱乐', '040112', '283');
INSERT INTO `td_tag` VALUES ('362', '儿童娱乐', '04011201', '361');
INSERT INTO `td_tag` VALUES ('363', 'SPA', '04011202', '361');
INSERT INTO `td_tag` VALUES ('364', '生活服务', '040113', '283');
INSERT INTO `td_tag` VALUES ('365', '美甲刺青', '04011301', '364');
INSERT INTO `td_tag` VALUES ('366', '地理位置', '06', null);
INSERT INTO `td_tag` VALUES ('367', '常去场所', '0601', '366');
INSERT INTO `td_tag` VALUES ('368', '高端场所', '060101', '367');
INSERT INTO `td_tag` VALUES ('369', '四五星级酒店', '06010101', '368');
INSERT INTO `td_tag` VALUES ('370', '高尔夫球会', '06010102', '368');
INSERT INTO `td_tag` VALUES ('371', '交通枢纽', '060102', '367');
INSERT INTO `td_tag` VALUES ('372', '飞机场', '06010201', '371');
INSERT INTO `td_tag` VALUES ('373', '科教文化', '060103', '367');
INSERT INTO `td_tag` VALUES ('374', '大学', '06010301', '373');
INSERT INTO `td_tag` VALUES ('375', '中学', '06010302', '373');
INSERT INTO `td_tag` VALUES ('376', '旅游景区', '060104', '367');
INSERT INTO `td_tag` VALUES ('377', '医院', '060105', '367');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(75) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `status` smallint(6) NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '654321', '0000-00-00 00:00:00', '1', 'test', '', '', '', '0', '1', '0000-00-00 00:00:00', '1', '测试用账号');
INSERT INTO `user` VALUES ('2', '123456', '0000-00-00 00:00:00', '1', 'admin', '', '', '', '0', '1', '0000-00-00 00:00:00', '0', '');

-- ----------------------------
-- Table structure for user_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `snifferuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `snifferuser_id` (`snifferuser_id`,`group_id`),
  KEY `user_groups_643ab336` (`snifferuser_id`),
  KEY `user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_7407a5cb` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `snifferuser_id_refs_id_720a3f16` FOREIGN KEY (`snifferuser_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_user_permissions`;
CREATE TABLE `user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `snifferuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `snifferuser_id` (`snifferuser_id`,`permission_id`),
  KEY `user_user_permissions_643ab336` (`snifferuser_id`),
  KEY `user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_88d28ac5` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `snifferuser_id_refs_id_ccc54e03` FOREIGN KEY (`snifferuser_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_user_permissions
-- ----------------------------
