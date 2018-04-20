/*
Navicat MySQL Data Transfer

Source Server         : 192.168.10.200_3306
Source Server Version : 50721
Source Host           : 192.168.10.200:3306
Source Database       : adminlte-admin

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-20 11:15:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `deptName` varchar(100) NOT NULL COMMENT '部门名称',
  `deptDesc` varchar(300) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('9a329b597d754c4180c6b40cdfb0f565', '产品部', 'cpb');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `userName` varchar(50) NOT NULL COMMENT '用户',
  `title` varchar(300) DEFAULT NULL COMMENT '日志',
  `url` varchar(300) DEFAULT NULL COMMENT '地址',
  `params` text COMMENT '参数',
  `createTime` datetime DEFAULT NULL COMMENT '日志时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('ffbe58fb038d4e99b1bc8abac5ff4f44', 'admin', '用户登录成功', '/login/doLogin', '', '2018-04-15 11:38:37');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `menuName` varchar(50) NOT NULL COMMENT '菜单名称',
  `pid` varchar(50) NOT NULL COMMENT '父级菜单ID',
  `url` varchar(255) DEFAULT NULL COMMENT '连接地址',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `deep` int(11) DEFAULT NULL COMMENT '深度',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `resource` varchar(50) DEFAULT NULL COMMENT '资源名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0818e1c76bbd44eba3a698547ec4e637', '查询系统设置', '10', null, null, '0', '3', '010600', 'listSetting');
INSERT INTO `sys_menu` VALUES ('08bc9ae261454d43a3d7c59c7e38507c', '活动分类管理', '6bdc1683d3ad44128f1f80bdbf0580e7', 'act/class/1', 'fa-file', '1', '2', '0601', null);
INSERT INTO `sys_menu` VALUES ('0c9b5fc8b44b41d1871a8fc8300247ec', '删除菜单', '4', null, null, '4', '3', '010303', 'deleteMenu');
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', null, 'fa fa-cogs', '1', '1', '01', null);
INSERT INTO `sys_menu` VALUES ('10', '系统配置', '1', '/system/setting/page', ' fa-cog', '6', '2', '0106', 'setting');
INSERT INTO `sys_menu` VALUES ('1db9105008404a3485b6fac30dba3c0e', '查看角色列表', '3', null, null, '0', '3', '010200', 'listRole');
INSERT INTO `sys_menu` VALUES ('2', '用户管理', '1', '/system/user/list/1', 'fa-user-circle-o', '1', '2', '0101', 'user');
INSERT INTO `sys_menu` VALUES ('22e38e885f9b40b9aae6a36deb78e89c', '部门管理', '1', '/system/dept/list/1', 'fa-graduation-cap', '4', '2', '0104', 'dept');
INSERT INTO `sys_menu` VALUES ('2cf4fc34f42b40ed9325489629689f9a', '医生管理', '60610d001b0f471da0b1ce1ed14eeec5', 'doctor/doctor_manager', 'fa-file', '1', '2', '0701', null);
INSERT INTO `sys_menu` VALUES ('3', '角色管理', '1', '/system/role/list/1', 'fa-users', '2', '2', '0102', 'role');
INSERT INTO `sys_menu` VALUES ('363a778e78a346a68210b2590163a943', '编辑部门', '22e38e885f9b40b9aae6a36deb78e89c', null, null, '2', '3', '010402', 'editDept');
INSERT INTO `sys_menu` VALUES ('3da0154b4b4a4303bfc508f3d7e452db', '患者资讯管理', '476dbef5152040668acffbdb5683d49d', 'news/patient/1', 'fa-file', '3', '2', '0503', null);
INSERT INTO `sys_menu` VALUES ('3f26102ef0e04c3c9328cb97067cc5fa', '创建菜单', '4', null, null, '1', '3', '010301', 'addMenu');
INSERT INTO `sys_menu` VALUES ('3fb6a7a5935b4efabf3de82e7e1baeb6', '新增部门', '22e38e885f9b40b9aae6a36deb78e89c', null, null, '1', '3', '010401', 'addDept');
INSERT INTO `sys_menu` VALUES ('4', '菜单管理', '1', '/system/menu/list/1', 'fa-list', '3', '2', '0103', 'menu');
INSERT INTO `sys_menu` VALUES ('4253190001c1480fb0d631d64d150535', '编辑用户', '2', null, null, '2', '3', '010102', 'editUser');
INSERT INTO `sys_menu` VALUES ('42dd5ae31e3a43b3a197440e8ec19a94', '监控列表', 'f5a20c82110b4a3ea9e30ca01a038680', null, null, '1', '3', '010701', 'monitorList');
INSERT INTO `sys_menu` VALUES ('476dbef5152040668acffbdb5683d49d', '资讯管理', '0', null, 'fa-folder', '5', '1', '05', null);
INSERT INTO `sys_menu` VALUES ('488ef1eff57b4827acade7c0744278ce', '查看菜单列表', '4', null, null, '0', '3', '010300', 'listMenu');
INSERT INTO `sys_menu` VALUES ('4e816a9854714d24b0413d929d637a2b', '查看部门列表', '22e38e885f9b40b9aae6a36deb78e89c', null, null, '0', '3', '010400', 'listDept');
INSERT INTO `sys_menu` VALUES ('5', '业务日志', '1', '/system/log/list/1', 'fa-info-circle', '5', '2', '0105', 'log');
INSERT INTO `sys_menu` VALUES ('56596b28d126495db2c49fa5cf127a07', '医生资讯分类管理', '1', 'news/doctor/2', 'fa-file', '2', '2', '0502', null);
INSERT INTO `sys_menu` VALUES ('5d3dd56c16ff4e32aecae1b3228159c7', '查看日志列表', '5', null, null, '0', '3', '010500', 'listLog');
INSERT INTO `sys_menu` VALUES ('60610d001b0f471da0b1ce1ed14eeec5', '医生管理', '0', null, 'fa-folder', '7', '1', '07', null);
INSERT INTO `sys_menu` VALUES ('60dda993d87647f5989c15f14f866df9', '新增角色', '3', null, null, '1', '3', '010201', 'addRole');
INSERT INTO `sys_menu` VALUES ('649b484b58414d91aefa5a26143e6557', '删除用户', '2', null, null, '3', '3', '010103', 'deleteUser');
INSERT INTO `sys_menu` VALUES ('686630c7cb624cc786dcdc9958971a6b', '编辑角色', '3', null, null, '2', '3', '010202', 'editRole');
INSERT INTO `sys_menu` VALUES ('6bdc1683d3ad44128f1f80bdbf0580e7', '活动管理', '0', null, 'fa-folder', '6', '1', '06', null);
INSERT INTO `sys_menu` VALUES ('79d78b8357174cac8f44abd275dec597', '删除部门', '22e38e885f9b40b9aae6a36deb78e89c', null, null, '3', '3', '010403', 'deleteDept');
INSERT INTO `sys_menu` VALUES ('915c309ebe5047b68645b3eb777dd8c9', '操作系统设置', '10', null, null, '1', '3', '010601', 'doSetting');
INSERT INTO `sys_menu` VALUES ('a5ebf29168234406939856bc6890c86b', '角色授权', '3', null, null, '4', '3', '010204', 'authRole');
INSERT INTO `sys_menu` VALUES ('a73802e513cc4465883530ec8074abbb', '新增用户', '2', null, null, '1', '3', '010101', 'addUser');
INSERT INTO `sys_menu` VALUES ('b4e7232189b14cf3ba160cf7b0d3bf37', '删除角色', '3', null, null, '3', '3', '010203', 'deleteRole');
INSERT INTO `sys_menu` VALUES ('b9cd0a3916fb4c969ecb0157e46be1c0', '邀请医生统计', '60610d001b0f471da0b1ce1ed14eeec5', 'doctor/doctor', 'fa-file', '2', '2', '0702', null);
INSERT INTO `sys_menu` VALUES ('c6bfb8c2d70b4b57a7da69b8b20538a4', '医生资讯管理', '476dbef5152040668acffbdb5683d49d', 'news/doctor/1', 'fa-file', '1', '2', '0501', null);
INSERT INTO `sys_menu` VALUES ('d2bc30feb5474a1bb7e02d48d39a3f8a', '查看用户列表', '2', null, null, '0', '3', '010100', 'listUser');
INSERT INTO `sys_menu` VALUES ('d9c96546f5c74f87a86c3febed252f4b', '患者资讯分类管理', '476dbef5152040668acffbdb5683d49d', 'news/patient/2', 'fa-file', '4', '2', '0501', null);
INSERT INTO `sys_menu` VALUES ('dc5f478d98ed4297a8ae638fe90df050', '编辑菜单', '4', null, null, '3', '3', '010302', 'editMenu');
INSERT INTO `sys_menu` VALUES ('ee54fe93fd0b4255a22fefeb2b6de084', '活动banner管理', '6bdc1683d3ad44128f1f80bdbf0580e7', 'act/banner/1', 'fa-file', '3', '2', '0603', null);
INSERT INTO `sys_menu` VALUES ('f3e3b049dd9d4433a5a8dcaf78f38253', '活动内容管理', '6bdc1683d3ad44128f1f80bdbf0580e7', 'act/content/1', 'fa-file', '2', '2', '0602', null);
INSERT INTO `sys_menu` VALUES ('f5a20c82110b4a3ea9e30ca01a038680', '系统监控', '1', '/system/monitor/list', 'fa-eye', '7', '2', '0107', null);
INSERT INTO `sys_menu` VALUES ('f899f3d3baec4571b1c786717f9906fd', '批量删除角色', '3', null, null, '5', '3', '010205', 'deleteBatchRole');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `roleName` varchar(50) NOT NULL COMMENT '角色名称',
  `roleDesc` varchar(300) DEFAULT NULL COMMENT '角色描述',
  `roleState` int(2) DEFAULT '1' COMMENT '状态,1-启用,-1禁用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('6a2994e4788a44f0973b5ca6ac4b6d73', '运营人员', '', '1', '2018-04-12 18:41:40');
INSERT INTO `sys_role` VALUES ('b1f9ce5543a049be9f169a3f5e6b72a8', '超级管理员', '超级管理员', '1', '2017-09-14 15:02:16');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `roleId` varchar(50) NOT NULL COMMENT '角色主键',
  `menuId` varchar(50) NOT NULL COMMENT '菜单主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('0ecc3d807d83448499aacadd5cda5637', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'c6bfb8c2d70b4b57a7da69b8b20538a4');
INSERT INTO `sys_role_menu` VALUES ('11b76a04838c459f8f4d68a06763b802', 'b1f9ce5543a049be9f169a3f5e6b72a8', '1');
INSERT INTO `sys_role_menu` VALUES ('12804303f6114611aa65aff1b5f1b46c', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'f899f3d3baec4571b1c786717f9906fd');
INSERT INTO `sys_role_menu` VALUES ('1bb2062ec9ef49bab2224c87a8aa63b2', 'b1f9ce5543a049be9f169a3f5e6b72a8', '476dbef5152040668acffbdb5683d49d');
INSERT INTO `sys_role_menu` VALUES ('23502b6645f64f01925b485f161c51e3', 'b1f9ce5543a049be9f169a3f5e6b72a8', '3da0154b4b4a4303bfc508f3d7e452db');
INSERT INTO `sys_role_menu` VALUES ('26e96d1955114103b1cb571e1c2b4f86', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'd9c96546f5c74f87a86c3febed252f4b');
INSERT INTO `sys_role_menu` VALUES ('31c2e8d5040747948409a634adf60271', 'b1f9ce5543a049be9f169a3f5e6b72a8', '4e816a9854714d24b0413d929d637a2b');
INSERT INTO `sys_role_menu` VALUES ('31eb2b402c384dd180521dfc337394a0', 'b1f9ce5543a049be9f169a3f5e6b72a8', '488ef1eff57b4827acade7c0744278ce');
INSERT INTO `sys_role_menu` VALUES ('513e3804f2fc46bfb9f232c4c4b5f902', 'b1f9ce5543a049be9f169a3f5e6b72a8', '0c9b5fc8b44b41d1871a8fc8300247ec');
INSERT INTO `sys_role_menu` VALUES ('57779a5b40bd40b995c447f0a6e0a06b', '6a2994e4788a44f0973b5ca6ac4b6d73', '08bc9ae261454d43a3d7c59c7e38507c');
INSERT INTO `sys_role_menu` VALUES ('5dc5112fb7534884a72ba5ed3b7765c5', '6a2994e4788a44f0973b5ca6ac4b6d73', '3da0154b4b4a4303bfc508f3d7e452db');
INSERT INTO `sys_role_menu` VALUES ('5e0a6c9c570643958fab11b9f8a8ea08', 'b1f9ce5543a049be9f169a3f5e6b72a8', '2');
INSERT INTO `sys_role_menu` VALUES ('6446e167ca8847939e2c1e70fa73d82c', 'b1f9ce5543a049be9f169a3f5e6b72a8', '0818e1c76bbd44eba3a698547ec4e637');
INSERT INTO `sys_role_menu` VALUES ('68f5996eae5040379147e1d1e8ec6af2', 'b1f9ce5543a049be9f169a3f5e6b72a8', '60dda993d87647f5989c15f14f866df9');
INSERT INTO `sys_role_menu` VALUES ('6f038b4f8e614bd0b914152d97f81f9d', 'b1f9ce5543a049be9f169a3f5e6b72a8', '1db9105008404a3485b6fac30dba3c0e');
INSERT INTO `sys_role_menu` VALUES ('72d9b502291642fd90fb607e857971f3', 'b1f9ce5543a049be9f169a3f5e6b72a8', '363a778e78a346a68210b2590163a943');
INSERT INTO `sys_role_menu` VALUES ('74914c7a11ca4ef29847586f27b6c3ac', '6a2994e4788a44f0973b5ca6ac4b6d73', 'c6bfb8c2d70b4b57a7da69b8b20538a4');
INSERT INTO `sys_role_menu` VALUES ('78443a9336684248a93c32c3f1f39496', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'f3e3b049dd9d4433a5a8dcaf78f38253');
INSERT INTO `sys_role_menu` VALUES ('7ce360f268844051bec8d0954984e420', 'b1f9ce5543a049be9f169a3f5e6b72a8', '649b484b58414d91aefa5a26143e6557');
INSERT INTO `sys_role_menu` VALUES ('8064cce7aaea4b77b968e3985784e6c7', 'b1f9ce5543a049be9f169a3f5e6b72a8', '3f26102ef0e04c3c9328cb97067cc5fa');
INSERT INTO `sys_role_menu` VALUES ('80c0039fbe6047f7afb58f2b00a24c86', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'a73802e513cc4465883530ec8074abbb');
INSERT INTO `sys_role_menu` VALUES ('89acf71769434f738586530d99c16670', 'b1f9ce5543a049be9f169a3f5e6b72a8', '08bc9ae261454d43a3d7c59c7e38507c');
INSERT INTO `sys_role_menu` VALUES ('8be3a4fa4373481e8220f5402fd835fb', 'b1f9ce5543a049be9f169a3f5e6b72a8', '686630c7cb624cc786dcdc9958971a6b');
INSERT INTO `sys_role_menu` VALUES ('8c6e917c832d4ec986bf04bcc9597ddc', '6a2994e4788a44f0973b5ca6ac4b6d73', 'ee54fe93fd0b4255a22fefeb2b6de084');
INSERT INTO `sys_role_menu` VALUES ('9038826d16ca4766a7178f442641c29d', 'b1f9ce5543a049be9f169a3f5e6b72a8', '4253190001c1480fb0d631d64d150535');
INSERT INTO `sys_role_menu` VALUES ('968990cf0f994704870acdc5aeea401c', 'b1f9ce5543a049be9f169a3f5e6b72a8', '3fb6a7a5935b4efabf3de82e7e1baeb6');
INSERT INTO `sys_role_menu` VALUES ('9f3dead181134af9a4f47b52a89624f9', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'a5ebf29168234406939856bc6890c86b');
INSERT INTO `sys_role_menu` VALUES ('9ff2e24e7e2440088dbaf38ae1d70ffc', 'b1f9ce5543a049be9f169a3f5e6b72a8', '22e38e885f9b40b9aae6a36deb78e89c');
INSERT INTO `sys_role_menu` VALUES ('a2902ebf93864380afa099dc285e114e', '6a2994e4788a44f0973b5ca6ac4b6d73', '476dbef5152040668acffbdb5683d49d');
INSERT INTO `sys_role_menu` VALUES ('a33d29462c8e444b978b84e86909735f', 'b1f9ce5543a049be9f169a3f5e6b72a8', '915c309ebe5047b68645b3eb777dd8c9');
INSERT INTO `sys_role_menu` VALUES ('af1ac01b32c745c78bd76be55320885c', '6a2994e4788a44f0973b5ca6ac4b6d73', '6bdc1683d3ad44128f1f80bdbf0580e7');
INSERT INTO `sys_role_menu` VALUES ('b428c376eb874f498d10d0fe5206594a', '6a2994e4788a44f0973b5ca6ac4b6d73', 'f3e3b049dd9d4433a5a8dcaf78f38253');
INSERT INTO `sys_role_menu` VALUES ('b8b74f04f1334aa8bd8ff36ac86e2740', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'b4e7232189b14cf3ba160cf7b0d3bf37');
INSERT INTO `sys_role_menu` VALUES ('bab09fed55274315a8301967ff9b62b8', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'b9cd0a3916fb4c969ecb0157e46be1c0');
INSERT INTO `sys_role_menu` VALUES ('bbdf96df9dce4a8686706cdc647285ad', 'b1f9ce5543a049be9f169a3f5e6b72a8', '6bdc1683d3ad44128f1f80bdbf0580e7');
INSERT INTO `sys_role_menu` VALUES ('c80d0d9388e24215b4ef74217a1ae2d3', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'f5a20c82110b4a3ea9e30ca01a038680');
INSERT INTO `sys_role_menu` VALUES ('c975d90af2744184a6dcfdc05580fb77', 'b1f9ce5543a049be9f169a3f5e6b72a8', '42dd5ae31e3a43b3a197440e8ec19a94');
INSERT INTO `sys_role_menu` VALUES ('ccde45d14387403894ec750942f43d97', 'b1f9ce5543a049be9f169a3f5e6b72a8', '2cf4fc34f42b40ed9325489629689f9a');
INSERT INTO `sys_role_menu` VALUES ('ce284d07782e4be1ae463375e29fcd7c', 'b1f9ce5543a049be9f169a3f5e6b72a8', '79d78b8357174cac8f44abd275dec597');
INSERT INTO `sys_role_menu` VALUES ('d1b47beb8d1e406798ea9300216262e1', 'b1f9ce5543a049be9f169a3f5e6b72a8', '4');
INSERT INTO `sys_role_menu` VALUES ('d46e82e549674dd8ace014447cde2c4c', '6a2994e4788a44f0973b5ca6ac4b6d73', 'd9c96546f5c74f87a86c3febed252f4b');
INSERT INTO `sys_role_menu` VALUES ('d744e3c8705f4b6588e803a24763ea28', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'ee54fe93fd0b4255a22fefeb2b6de084');
INSERT INTO `sys_role_menu` VALUES ('e29b230a32a64ad49f74ca4b125ba3bf', 'b1f9ce5543a049be9f169a3f5e6b72a8', '3');
INSERT INTO `sys_role_menu` VALUES ('e6e60832ad7e47898bddd4557522c9ba', 'b1f9ce5543a049be9f169a3f5e6b72a8', '60610d001b0f471da0b1ce1ed14eeec5');
INSERT INTO `sys_role_menu` VALUES ('ed1f9e6e14e5469c8d36a14d4aa600a0', 'b1f9ce5543a049be9f169a3f5e6b72a8', '5d3dd56c16ff4e32aecae1b3228159c7');
INSERT INTO `sys_role_menu` VALUES ('effd1ee0b44444de84bd64f3d1466236', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'dc5f478d98ed4297a8ae638fe90df050');
INSERT INTO `sys_role_menu` VALUES ('f107a8e1de88458988be9b695c2e0158', 'b1f9ce5543a049be9f169a3f5e6b72a8', '10');
INSERT INTO `sys_role_menu` VALUES ('f10c93f9f4b145119ff0a11a688f1a6d', 'b1f9ce5543a049be9f169a3f5e6b72a8', 'd2bc30feb5474a1bb7e02d48d39a3f8a');
INSERT INTO `sys_role_menu` VALUES ('f8cc1cc16e4544b7a1d52f6e514a18fa', 'b1f9ce5543a049be9f169a3f5e6b72a8', '5');

-- ----------------------------
-- Table structure for sys_setting
-- ----------------------------
DROP TABLE IF EXISTS `sys_setting`;
CREATE TABLE `sys_setting` (
  `Id` varchar(50) NOT NULL COMMENT '主键',
  `sysKey` varchar(50) NOT NULL COMMENT 'KEY',
  `sysName` varchar(50) NOT NULL COMMENT '名称',
  `sysValue` varchar(300) DEFAULT NULL COMMENT '值',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `sysDesc` varchar(300) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统设置表';

-- ----------------------------
-- Records of sys_setting
-- ----------------------------
INSERT INTO `sys_setting` VALUES ('1', 'systemName', '系统名称', 'ahh-admin', '0', null);
INSERT INTO `sys_setting` VALUES ('2', 'systemSubName', '系统简称', '后台管理系统V1.0', '1', null);
INSERT INTO `sys_setting` VALUES ('3', 'bottomCopyright', '许可说明', 'Copyright © 2018 XXX管理有限公司. All rights reserved.', '2', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `userName` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `userState` int(2) NOT NULL DEFAULT '1' COMMENT '用户状态,1-启用,-1禁用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `userDesc` varchar(300) DEFAULT NULL COMMENT '描述',
  `userImg` varchar(300) DEFAULT 'http://news.mydrivers.com/Img/20110518/04481549.png' COMMENT '头像',
  `deptId` varchar(50) DEFAULT NULL COMMENT '部门主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('45300712cbc343d3998a065164b72067', 'zhangbaochun', '2512a468e49402cbf91e9b8ff422e855', '1', '2018-04-12 18:42:05', '', 'http://news.mydrivers.com/Img/20110518/04481549.png', '9a329b597d754c4180c6b40cdfb0f565');
INSERT INTO `sys_user` VALUES ('c79ba431f9f74dfbae585b87b0cde933', 'admin', '038bdaf98f2037b31f1e75b5b4c9b26e', '1', '2017-09-14 15:02:17', '', '/upload/2018-04-15/lldmpzm6djga9rdu5nuljj856tow5wjv.png', '9a329b597d754c4180c6b40cdfb0f565');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `Id` varchar(50) NOT NULL COMMENT '主键',
  `userId` varchar(50) NOT NULL COMMENT '用户主键',
  `roleId` varchar(50) NOT NULL COMMENT '角色主键',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('b63941907fd046fab09ce0930489bbe2', 'c79ba431f9f74dfbae585b87b0cde933', 'b1f9ce5543a049be9f169a3f5e6b72a8');
INSERT INTO `sys_user_role` VALUES ('cc57a825df4f4a15a417be1e58cc4ae7', '45300712cbc343d3998a065164b72067', '6a2994e4788a44f0973b5ca6ac4b6d73');
