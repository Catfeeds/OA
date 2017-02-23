/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : toa7

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2015-11-17 20:40:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `toa_ads`
-- ----------------------------
DROP TABLE IF EXISTS `toa_ads`;
CREATE TABLE `toa_ads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `adsurl` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_ads
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_app`
-- ----------------------------
DROP TABLE IF EXISTS `toa_app`;
CREATE TABLE `toa_app` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `user` text,
  `number` varchar(20) DEFAULT NULL,
  `untildate` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_app
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_app_log`
-- ----------------------------
DROP TABLE IF EXISTS `toa_app_log`;
CREATE TABLE `toa_app_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(20) DEFAULT NULL,
  `app_option_id` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_app_log
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_app_option`
-- ----------------------------
DROP TABLE IF EXISTS `toa_app_option`;
CREATE TABLE `toa_app_option` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_app_option
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_bbs`
-- ----------------------------
DROP TABLE IF EXISTS `toa_bbs`;
CREATE TABLE `toa_bbs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bbsclass` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `content` text,
  `issuedate` datetime DEFAULT NULL,
  `readnum` varchar(60) DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_bbs
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_bbsclass`
-- ----------------------------
DROP TABLE IF EXISTS `toa_bbsclass`;
CREATE TABLE `toa_bbsclass` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `classadmin` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_bbsclass
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_bbs_log`
-- ----------------------------
DROP TABLE IF EXISTS `toa_bbs_log`;
CREATE TABLE `toa_bbs_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bbsid` varchar(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  `content` text,
  `enddate` datetime DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_bbs_log
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_blog`
-- ----------------------------
DROP TABLE IF EXISTS `toa_blog`;
CREATE TABLE `toa_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL,
  `content` text,
  `number` int(10) DEFAULT NULL,
  `user` text,
  `type` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_blog
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_communication`
-- ----------------------------
DROP TABLE IF EXISTS `toa_communication`;
CREATE TABLE `toa_communication` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `person` varchar(20) DEFAULT NULL,
  `tel` varchar(80) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `fax` varchar(40) DEFAULT NULL,
  `mail` varchar(80) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_communication
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_conference`
-- ----------------------------
DROP TABLE IF EXISTS `toa_conference`;
CREATE TABLE `toa_conference` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` text,
  `appperson` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `attendance` text,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `conferenceroom` varchar(10) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `otype` varchar(10) DEFAULT NULL,
  `staffid` varchar(50) DEFAULT NULL,
  `recorduser` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_conference
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_conference_record`
-- ----------------------------
DROP TABLE IF EXISTS `toa_conference_record`;
CREATE TABLE `toa_conference_record` (
  `rid` int(10) NOT NULL AUTO_INCREMENT,
  `conferenceid` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `attendance` text,
  `conferenceroom` varchar(10) DEFAULT NULL,
  `recordperson` varchar(10) DEFAULT NULL,
  `appendix` varchar(200) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_conference_record
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_config`
-- ----------------------------
DROP TABLE IF EXISTS `toa_config`;
CREATE TABLE `toa_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `value` text,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_config
-- ----------------------------
INSERT INTO toa_config VALUES ('1', 'PHPOA协同网络办公系统', 'name');
INSERT INTO toa_config VALUES ('2', 'http://www.phpoa.cn/', 'web');
INSERT INTO toa_config VALUES ('3', '20', 'pagenum');
INSERT INTO toa_config VALUES ('4', '0', 'opendate');
INSERT INTO toa_config VALUES ('5', '24', 'enddate');
INSERT INTO toa_config VALUES ('6', '1', 'sworknum');
INSERT INTO toa_config VALUES ('7', '9:00', 'swork');
INSERT INTO toa_config VALUES ('8', '18:00', 'ework');
INSERT INTO toa_config VALUES ('9', '14:30', 'swork1');
INSERT INTO toa_config VALUES ('10', '18:30', 'ework1');
INSERT INTO toa_config VALUES ('11', '1', 'configwork');
INSERT INTO toa_config VALUES ('12', '0', 'configoffice');
INSERT INTO toa_config VALUES ('13', '1', 'configinfo');
INSERT INTO toa_config VALUES ('14', '0', 'configsms');
INSERT INTO toa_config VALUES ('15', '1', 'configflag');
INSERT INTO toa_config VALUES ('16', '0', 'mobile1');
INSERT INTO toa_config VALUES ('19', 'm.phpoa.cn|down.phpoa.cn|api.phpoa.cn', 'oaurl');
INSERT INTO toa_config VALUES ('20', '0', 'usernum');
INSERT INTO toa_config VALUES ('21', 'V2014.v201402', 'com_editionnum');
INSERT INTO toa_config VALUES ('22', '2014-09-04 20:03:08', 'crmdate');
INSERT INTO toa_config VALUES ('18', '0', 'configinfoview');
INSERT INTO toa_config VALUES ('23', '0', 'home');
INSERT INTO toa_config VALUES ('24', 'doc|docx|xlsx|jpg|gif|rar|txt|zip|pdf|xls|ppt|esp|cad|3ds|img|psd|pdf|ai|log|mdb|pot|csv|png', 'uploadtype');
INSERT INTO toa_config VALUES ('25', '系统维护中.....', 'closereason');

-- ----------------------------
-- Table structure for `toa_crm_business`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_business`;
CREATE TABLE `toa_crm_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(64) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `bid` varchar(16) DEFAULT NULL,
  `price` varchar(16) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_business
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_care`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_care`;
CREATE TABLE `toa_crm_care` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `cid` varchar(16) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `smsdate` varchar(16) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  `type2` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_care
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_company`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_company`;
CREATE TABLE `toa_crm_company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `number` varchar(64) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `bid` varchar(16) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_company
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_complaints`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_complaints`;
CREATE TABLE `toa_crm_complaints` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `cid` varchar(16) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `comdate` varchar(16) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_complaints
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_contact`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_contact`;
CREATE TABLE `toa_crm_contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `cid` varchar(16) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  `type1` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_contract`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_contract`;
CREATE TABLE `toa_crm_contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(64) DEFAULT NULL,
  `cid` varchar(16) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `price` varchar(16) DEFAULT NULL,
  `oid` varchar(16) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_contract
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_db`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_db`;
CREATE TABLE `toa_crm_db` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `inputname` varchar(64) DEFAULT NULL,
  `content` text,
  `type` varchar(32) DEFAULT NULL,
  `viewid` varchar(16) DEFAULT NULL,
  `formid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_db
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_flow`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_flow`;
CREATE TABLE `toa_crm_flow` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `flowname` varchar(64) DEFAULT NULL,
  `flownum` varchar(2) DEFAULT NULL,
  `flowuser` varchar(128) DEFAULT NULL,
  `modid` varchar(32) DEFAULT NULL,
  `flowkey` varchar(2) DEFAULT NULL,
  `flowkey1` varchar(2) DEFAULT NULL,
  `flowkey2` varchar(2) DEFAULT NULL,
  `flowkey3` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=1027 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_flow
-- ----------------------------
INSERT INTO toa_crm_flow VALUES ('1000', '申请人提交申请', '1', null, 'crm_price', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1002', '申请人提交申请', '1', null, 'crm_offer', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1003', '申请人提交申请', '1', null, 'crm_program', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1004', '申请人提交申请', '1', null, 'crm_contract', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1005', '申请人提交申请', '1', null, 'crm_order', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1007', '申请人提交申请', '1', null, 'crm_payment', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1026', '申请人提交申请', '1', null, 'crm_purchase', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1011', '负责人审批', '2', '', 'crm_offer', '2', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1012', '负责人审批', '2', '', 'crm_program', '2', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1013', '部门负责人审批', '2', '', 'crm_contract', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1014', '财务负责人审批', '3', '', 'crm_contract', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1015', '总经理审批', '4', '', 'crm_contract', '2', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1017', '部门负责人审批', '2', '', 'crm_order', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1018', '财务负责人审批', '3', '', 'crm_order', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1019', '总经理审批', '4', '', 'crm_order', '2', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1020', '财务负责人审批', '2', '', 'crm_price', '2', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1021', '部门负责人审批', '2', '', 'crm_payment', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1022', '财务负责人审批', '3', '', 'crm_payment', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1023', '总经理审批', '4', '', 'crm_payment', '1', '1', '2', '2');
INSERT INTO toa_crm_flow VALUES ('1024', '付款人支付款项', '5', '', 'crm_payment', '2', '1', '2', '2');

-- ----------------------------
-- Table structure for `toa_crm_form`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_form`;
CREATE TABLE `toa_crm_form` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `formname` varchar(128) DEFAULT NULL,
  `inputname` varchar(64) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `inputvalue` varchar(128) DEFAULT NULL,
  `inputtype` varchar(2) DEFAULT NULL,
  `inputvaluenum` text,
  `confirmation` varchar(2) DEFAULT NULL,
  `type1` varchar(32) DEFAULT NULL,
  `type2` varchar(2) DEFAULT NULL,
  `inputnumber` int(11) DEFAULT NULL,
  `w` int(11) DEFAULT NULL,
  `h` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_form
-- ----------------------------
INSERT INTO toa_crm_form VALUES ('183', '银行账号', 'toa_crm_company5031_130707152058', '0', '', '1', '', '2', 'crm_company', '0', '14', '0', '0');
INSERT INTO toa_crm_form VALUES ('182', '开户名称', 'toa_crm_company0773_130707152050', '0', '', '1', '', '2', 'crm_company', '0', '13', '0', '0');
INSERT INTO toa_crm_form VALUES ('181', '开户行', 'toa_crm_company8222_130707152032', '0', '', '1', '', '2', 'crm_company', '0', '12', '0', '0');
INSERT INTO toa_crm_form VALUES ('180', '企业法人', 'toa_crm_company3983_130707151936', '0', '', '1', '', '2', 'crm_company', '0', '7', '0', '0');
INSERT INTO toa_crm_form VALUES ('175', '所属行业', 'toa_crm_company5608_130707151553', '0', '', '5', '旅游/餐饮/娱乐/休闲/购物\r\n|机械设备/通用零部件\r\n|日常服务\r\n|纺织/皮革/服装/鞋帽\r\n|家具/生活用品/食品\r\n|通信/邮政/计算机/网络\r\n|医疗保健/社会福利\r\n|电子电器/仪器仪表\r\n|金融/保险/证券/投资\r\n|交通物流/运输设备\r\n|城建/房产/建材/装潢 \r\n|石油化工/橡胶塑料\r\n|钟表眼镜/工艺品/礼品 \r\n|造纸/纸品/印刷/包装 \r\n|新闻/出版/科研/教育 \r\n|农林牧渔 \r\n|广告/会展/商务办公/咨询业 \r\n|冶金冶炼/金属及非金属制品\r\n|贸易/批发/市场 \r\n|党政机关/社会团体', '2', 'crm_company', '0', '6', '0', '0');
INSERT INTO toa_crm_form VALUES ('184', '详细描述', 'toa_crm_company9083_130707152329', '0', '', '2', '', '2', 'crm_company', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('173', '客户状态', 'toa_crm_company3538_130707151232', '0', '', '5', '潜在客户|意向客户|失效客户|己成交客户|VIP客户', '2', 'crm_company', '1', '1', '0', '0');
INSERT INTO toa_crm_form VALUES ('179', '注册地址', 'toa_crm_company3337_130707151924', '0', '', '1', '', '2', 'crm_company', '0', '10', '0', '0');
INSERT INTO toa_crm_form VALUES ('178', '注册资本', 'toa_crm_company1407_130707151913', '0', '', '1', '', '2', 'crm_company', '0', '8', '0', '0');
INSERT INTO toa_crm_form VALUES ('177', '成立时间', 'toa_crm_company0785_130707151846', '3', '', '1', '', '2', 'crm_company', '0', '9', '0', '0');
INSERT INTO toa_crm_form VALUES ('176', '公司网站', 'toa_crm_company3616_130707151643', '0', '', '1', '', '2', 'crm_company', '0', '11', '0', '0');
INSERT INTO toa_crm_form VALUES ('172', '客户等级', 'toa_crm_company8701_130707151018', '0', '', '3', '一星|二星|三星|四星|五星', '2', 'crm_company', '1', '2', '0', '0');
INSERT INTO toa_crm_form VALUES ('171', '客户来源', 'toa_crm_company9793_130707150911', '0', '', '5', '电话来访|朋友介绍|广告推广|独立开发|促销活动|公开招标|互联网|客户介绍|代理商', '2', 'crm_company', '0', '3', '0', '0');
INSERT INTO toa_crm_form VALUES ('174', '所属区域', 'toa_crm_company4128_130707151505', '0', '', '1', '', '2', 'crm_company', '0', '5', '0', '0');
INSERT INTO toa_crm_form VALUES ('170', '客户类别', 'toa_crm_company8860_130707150634', '0', '', '3', '企业客户|个人客户', '2', 'crm_company', '0', '4', '0', '0');
INSERT INTO toa_crm_form VALUES ('152', '产品型号', 'toa_crm_product9202_130707144537', '0', '', '1', '', '2', 'crm_product', '0', '1', '0', '0');
INSERT INTO toa_crm_form VALUES ('153', '计量单位', 'toa_crm_product7824_130707144603', '0', '', '5', '台|套|只|个|公斤|斤|吨|箱|米|本|辆', '2', 'crm_product', '1', '2', '0', '0');
INSERT INTO toa_crm_form VALUES ('154', '生产厂商', 'toa_crm_product4814_130707144618', '0', '', '1', '', '2', 'crm_product', '0', '4', '0', '0');
INSERT INTO toa_crm_form VALUES ('155', '产地', 'toa_crm_product7603_130707144628', '0', '', '1', '', '2', 'crm_product', '0', '3', '0', '0');
INSERT INTO toa_crm_form VALUES ('156', '产品图片', 'toa_crm_product6674_130707144638', '1', '', '1', '', '2', 'crm_product', '0', '5', '0', '0');
INSERT INTO toa_crm_form VALUES ('157', '详细描述', 'toa_crm_product8295_130707144653', '0', '', '2', '', '2', 'crm_product', '0', '7', '0', '0');
INSERT INTO toa_crm_form VALUES ('158', '产品附件', 'toa_crm_product5070_130707144824', '2', '', '1', '', '2', 'crm_product', '0', '6', '0', '0');
INSERT INTO toa_crm_form VALUES ('159', '性别', 'toa_crm_contact4876_130707145252', '0', '', '3', '男|女', '2', 'crm_contact', '1', '1', '0', '0');
INSERT INTO toa_crm_form VALUES ('160', '生日', 'toa_crm_contact8440_130707145325', '3', '', '1', '', '2', 'crm_contact', '0', '2', '0', '0');
INSERT INTO toa_crm_form VALUES ('161', '手机', 'toa_crm_contact9124_130707145346', '0', '', '1', '', '2', 'crm_contact', '1', '4', '0', '0');
INSERT INTO toa_crm_form VALUES ('162', '办公电话', 'toa_crm_contact1165_130707145357', '0', '', '1', '', '2', 'crm_contact', '1', '5', '0', '0');
INSERT INTO toa_crm_form VALUES ('163', '职务', 'toa_crm_contact8466_130707145412', '0', '', '1', '', '2', 'crm_contact', '1', '3', '0', '0');
INSERT INTO toa_crm_form VALUES ('164', '传真', 'toa_crm_contact4245_130707145421', '0', '', '1', '', '2', 'crm_contact', '0', '6', '0', '0');
INSERT INTO toa_crm_form VALUES ('165', 'QQ/MSN', 'toa_crm_contact3648_130707145439', '0', '', '1', '', '2', 'crm_contact', '0', '7', '0', '0');
INSERT INTO toa_crm_form VALUES ('166', '邮箱', 'toa_crm_contact8837_130707145451', '0', '', '1', '', '2', 'crm_contact', '1', '8', '0', '0');
INSERT INTO toa_crm_form VALUES ('167', '邮编', 'toa_crm_contact9436_130707145500', '0', '', '1', '', '2', 'crm_contact', '0', '9', '0', '0');
INSERT INTO toa_crm_form VALUES ('168', '地址', 'toa_crm_contact6338_130707145511', '0', '', '1', '', '2', 'crm_contact', '0', '10', '0', '0');
INSERT INTO toa_crm_form VALUES ('169', '备注', 'toa_crm_contact9839_130707145550', '0', '', '2', '', '2', 'crm_contact', '0', '11', '0', '0');
INSERT INTO toa_crm_form VALUES ('185', '回访目的', 'toa_crm_service5957_130707153242', '0', '', '2', '', '2', 'crm_service', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('186', '回访结果描述', 'toa_crm_service1649_130707153314', '0', '', '2', '', '2', 'crm_service', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('187', '关怀内容', 'toa_crm_care6461_130707153428', '0', '', '2', '', '2', 'crm_care', '0', '3', '0', '0');
INSERT INTO toa_crm_form VALUES ('188', '关怀类型', 'toa_crm_care7981_130707153549', '0', '', '5', '节日|生日|店庆活动', '2', 'crm_care', '1', '1', '0', '0');
INSERT INTO toa_crm_form VALUES ('189', '关怀方式', 'toa_crm_care9689_130707153623', '0', '', '1', '', '2', 'crm_care', '0', '2', '0', '0');
INSERT INTO toa_crm_form VALUES ('190', '备注', 'toa_crm_care4970_130707153630', '0', '', '2', '', '2', 'crm_care', '0', '4', '0', '0');
INSERT INTO toa_crm_form VALUES ('191', '投诉类型', 'toa_crm_complaints2557_130707153839', '0', '', '5', '产品投诉|售后投诉|竟见反馈', '2', 'crm_complaints', '1', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('192', '投诉方式', 'toa_crm_complaints8348_130707154007', '0', '', '5', '上门|电话|邮箱|短信|QQ|传真|网站', '2', 'crm_complaints', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('193', '处理状态', 'toa_crm_complaints5024_130707154054', '0', '', '3', '待处理|处理中|己处理', '2', 'crm_complaints', '1', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('194', '紧急状态', 'toa_crm_complaints3652_130707154131', '0', '', '3', '急|不急|非常急', '2', 'crm_complaints', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('195', '投诉内容', 'toa_crm_complaints1143_130707154150', '0', '', '2', '', '2', 'crm_complaints', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('196', '反馈内容', 'toa_crm_complaints1197_130707154201', '0', '', '2', '', '2', 'crm_complaints', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('197', '备注', 'toa_crm_complaints8873_130707154211', '0', '', '2', '', '2', 'crm_complaints', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('198', '备注', 'toa_crm_stock3050_130707154314', '0', '', '2', '', '2', 'crm_stock', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('199', '备注', 'toa_crm_purchase9787_130707154411', '0', '', '2', '', '2', 'crm_purchase', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('200', '备注', 'toa_crm_offer3897_130707154536', '0', '', '2', '', '2', 'crm_offer', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('201', '方案内容', 'toa_crm_program8539_130707154722', '0', '', '2', '', '2', 'crm_program', '0', '3', '0', '0');
INSERT INTO toa_crm_form VALUES ('202', '客户反馈', 'toa_crm_program8689_130707154735', '0', '', '2', '', '2', 'crm_program', '0', '4', '0', '0');
INSERT INTO toa_crm_form VALUES ('203', '其它备注', 'toa_crm_program2617_130707154751', '0', '', '2', '', '2', 'crm_program', '0', '5', '0', '0');
INSERT INTO toa_crm_form VALUES ('204', '方案状态', 'toa_crm_program8897_130707154925', '0', '', '3', '准备中|己提交|未提交', '2', 'crm_program', '1', '1', '0', '0');
INSERT INTO toa_crm_form VALUES ('205', '附件上传', 'toa_crm_program8426_130707154948', '2', '', '1', '', '2', 'crm_program', '0', '2', '0', '0');
INSERT INTO toa_crm_form VALUES ('206', '合同描述', 'toa_crm_contract5029_130707155031', '0', '', '2', '', '2', 'crm_contract', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('207', '备注', 'toa_crm_order6622_130707155054', '0', '', '2', '', '2', 'crm_order', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('208', '备注', 'toa_crm_price7922_130707155103', '0', '', '2', '', '2', 'crm_price', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('209', '备注', 'toa_crm_payment7787_130707155114', '0', '', '2', '', '2', 'crm_payment', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('210', '银行账号', 'toa_crm_business5031_130707152058', '0', '', '1', '', '2', 'crm_business', '0', '14', '0', '0');
INSERT INTO toa_crm_form VALUES ('211', '开户名称', 'toa_crm_business0773_130707152050', '0', '', '1', '', '2', 'crm_business', '0', '13', '0', '0');
INSERT INTO toa_crm_form VALUES ('212', '开户行', 'toa_crm_business8222_130707152032', '0', '', '1', '', '2', 'crm_business', '0', '12', '0', '0');
INSERT INTO toa_crm_form VALUES ('213', '企业法人', 'toa_crm_business3983_130707151936', '0', '', '1', '', '2', 'crm_business', '0', '7', '0', '0');
INSERT INTO toa_crm_form VALUES ('214', '所属行业', 'toa_crm_business5608_130707151553', '0', '', '5', '旅游/餐饮/娱乐/休闲/购物\r\n|机械设备/通用零部件\r\n|日常服务\r\n|纺织/皮革/服装/鞋帽\r\n|家具/生活用品/食品\r\n|通信/邮政/计算机/网络\r\n|医疗保健/社会福利\r\n|电子电器/仪器仪表\r\n|金融/保险/证券/投资\r\n|交通物流/运输设备\r\n|城建/房产/建材/装潢 \r\n|石油化工/橡胶塑料\r\n|钟表眼镜/工艺品/礼品 \r\n|造纸/纸品/印刷/包装 \r\n|新闻/出版/科研/教育 \r\n|农林牧渔 \r\n|广告/会展/商务办公/咨询业 \r\n|冶金冶炼/金属及非金属制品\r\n|贸易/批发/市场 \r\n|党政机关/社会团体', '2', 'crm_business', '0', '6', '0', '0');
INSERT INTO toa_crm_form VALUES ('215', '详细描述', 'toa_crm_business9083_130707152329', '0', '', '2', '', '2', 'crm_business', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('216', '代理状态', 'toa_crm_business3538_130707151232', '0', '', '5', '意向代理|正式代理商|核心代理商|暂停合作', '2', 'crm_business', '1', '1', '0', '0');
INSERT INTO toa_crm_form VALUES ('217', '注册地址', 'toa_crm_business3337_130707151924', '0', '', '1', '', '2', 'crm_business', '0', '10', '0', '0');
INSERT INTO toa_crm_form VALUES ('218', '注册资本', 'toa_crm_business1407_130707151913', '0', '', '1', '', '2', 'crm_business', '0', '8', '0', '0');
INSERT INTO toa_crm_form VALUES ('219', '成立时间', 'toa_crm_business0785_130707151846', '3', '', '1', '', '2', 'crm_business', '0', '9', '0', '0');
INSERT INTO toa_crm_form VALUES ('220', '公司网站', 'toa_crm_business3616_130707151643', '0', '', '1', '', '2', 'crm_business', '0', '11', '0', '0');
INSERT INTO toa_crm_form VALUES ('221', '代理等级', 'toa_crm_business8701_130707151018', '0', '', '5', '普通代理|授权代理商|区域代理|区域代理[买断]|独家[买断]总代理', '2', 'crm_business', '1', '2', '0', '0');
INSERT INTO toa_crm_form VALUES ('222', '客户来源', 'toa_crm_business9793_130707150911', '0', '', '5', '电话来访|朋友介绍|广告推广|独立开发|促销活动|公开招标|互联网|客户介绍', '2', 'crm_business', '0', '3', '0', '0');
INSERT INTO toa_crm_form VALUES ('223', '代理区域', 'toa_crm_business4128_130707151505', '0', '', '1', '', '2', 'crm_business', '0', '5', '0', '0');
INSERT INTO toa_crm_form VALUES ('224', '客户类别', 'toa_crm_business8860_130707150634', '0', '', '3', '企业代理|个人代理', '2', 'crm_business', '1', '4', '0', '0');
INSERT INTO toa_crm_form VALUES ('225', '银行账号', 'toa_crm_supplier5031_130707152058', '0', '', '1', '', '2', 'crm_supplier', '0', '14', '0', '0');
INSERT INTO toa_crm_form VALUES ('226', '开户名称', 'toa_crm_supplier0773_130707152050', '0', '', '1', '', '2', 'crm_supplier', '0', '13', '0', '0');
INSERT INTO toa_crm_form VALUES ('227', '开户行', 'toa_crm_supplier8222_130707152032', '0', '', '1', '', '2', 'crm_supplier', '0', '12', '0', '0');
INSERT INTO toa_crm_form VALUES ('228', '企业法人', 'toa_crm_supplier3983_130707151936', '0', '', '1', '', '2', 'crm_supplier', '0', '7', '0', '0');
INSERT INTO toa_crm_form VALUES ('229', '所属行业', 'toa_crm_supplier5608_130707151553', '0', '', '5', '旅游/餐饮/娱乐/休闲/购物\r\n|机械设备/通用零部件\r\n|日常服务\r\n|纺织/皮革/服装/鞋帽\r\n|家具/生活用品/食品\r\n|通信/邮政/计算机/网络\r\n|医疗保健/社会福利\r\n|电子电器/仪器仪表\r\n|金融/保险/证券/投资\r\n|交通物流/运输设备\r\n|城建/房产/建材/装潢 \r\n|石油化工/橡胶塑料\r\n|钟表眼镜/工艺品/礼品 \r\n|造纸/纸品/印刷/包装 \r\n|新闻/出版/科研/教育 \r\n|农林牧渔 \r\n|广告/会展/商务办公/咨询业 \r\n|冶金冶炼/金属及非金属制品\r\n|贸易/批发/市场 \r\n|党政机关/社会团体', '2', 'crm_supplier', '0', '6', '0', '0');
INSERT INTO toa_crm_form VALUES ('230', '详细描述', 'toa_crm_supplier9083_130707152329', '0', '', '2', '', '2', 'crm_supplier', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('240', '联系人', 'toa_crm_supplier0942_130710181509', '0', '', '1', '', '2', 'crm_supplier', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('232', '注册地址', 'toa_crm_supplier3337_130707151924', '0', '', '1', '', '2', 'crm_supplier', '0', '10', '0', '0');
INSERT INTO toa_crm_form VALUES ('233', '注册资本', 'toa_crm_supplier1407_130707151913', '0', '', '1', '', '2', 'crm_supplier', '0', '8', '0', '0');
INSERT INTO toa_crm_form VALUES ('234', '成立时间', 'toa_crm_supplier0785_130707151846', '3', '', '1', '', '2', 'crm_supplier', '0', '9', '0', '0');
INSERT INTO toa_crm_form VALUES ('235', '公司网站', 'toa_crm_supplier3616_130707151643', '0', '', '1', '', '2', 'crm_supplier', '0', '11', '0', '0');
INSERT INTO toa_crm_form VALUES ('236', '等级', 'toa_crm_supplier8701_130707151018', '0', '', '3', '一星|二星|三星|四星|五星', '2', 'crm_supplier', '1', '2', '0', '0');
INSERT INTO toa_crm_form VALUES ('237', '来源', 'toa_crm_supplier9793_130707150911', '0', '', '5', '电话来访|朋友介绍|广告推广|独立开发|促销活动|公开招标|互联网|客户介绍|代理商', '2', 'crm_supplier', '1', '3', '0', '0');
INSERT INTO toa_crm_form VALUES ('238', '所属区域', 'toa_crm_supplier4128_130707151505', '0', '', '1', '', '2', 'crm_supplier', '0', '5', '0', '0');
INSERT INTO toa_crm_form VALUES ('239', '类别', 'toa_crm_supplier8860_130707150634', '0', '', '3', '企业客户|个人客户', '2', 'crm_supplier', '0', '4', '0', '0');
INSERT INTO toa_crm_form VALUES ('241', '性别', 'toa_crm_supplier6358_130710181526', '0', '', '3', '男|女', '2', 'crm_supplier', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('242', '职务', 'toa_crm_supplier5588_130710181535', '0', '', '1', '', '2', 'crm_supplier', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('243', '手机', 'toa_crm_supplier3656_130710181543', '0', '', '1', '', '2', 'crm_supplier', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('244', '办公电话', 'toa_crm_supplier8551_130710181551', '0', '', '1', '', '2', 'crm_supplier', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('245', '传真', 'toa_crm_supplier7569_130710181559', '0', '', '1', '', '2', 'crm_supplier', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('246', 'QQ/MSN', 'toa_crm_supplier2366_130710181610', '0', '', '1', '', '2', 'crm_supplier', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('247', '邮箱', 'toa_crm_supplier5022_130710181617', '0', '', '1', '', '2', 'crm_supplier', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('248', '邮编', 'toa_crm_supplier4276_130710181623', '0', '', '1', '', '2', 'crm_supplier', '0', '999', '0', '0');
INSERT INTO toa_crm_form VALUES ('249', '地址', 'toa_crm_supplier1241_130710181630', '0', '', '1', '', '2', 'crm_supplier', '0', '999', '0', '0');

-- ----------------------------
-- Table structure for `toa_crm_log`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_log`;
CREATE TABLE `toa_crm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewid` varchar(16) DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  `content2` text,
  `content1` text,
  `type` varchar(2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `modid` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_log
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_offer`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_offer`;
CREATE TABLE `toa_crm_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(64) DEFAULT NULL,
  `cid` varchar(16) DEFAULT NULL,
  `price` varchar(16) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_offer
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_order`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_order`;
CREATE TABLE `toa_crm_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(64) DEFAULT NULL,
  `cid` varchar(16) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `price` varchar(16) DEFAULT NULL,
  `oid` varchar(16) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_order
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_payment`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_payment`;
CREATE TABLE `toa_crm_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(64) DEFAULT NULL,
  `sid` varchar(16) DEFAULT NULL,
  `perid` varchar(16) DEFAULT NULL,
  `price` varchar(16) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_personnel`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_personnel`;
CREATE TABLE `toa_crm_personnel` (
  `perid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  `designationdate` datetime DEFAULT NULL,
  `approvaldate` datetime DEFAULT NULL,
  `lnstructions` varchar(255) DEFAULT NULL,
  `pertype` varchar(2) DEFAULT NULL,
  `viewid` varchar(16) DEFAULT NULL,
  `modid` varchar(32) DEFAULT NULL,
  `flowid` varchar(16) DEFAULT NULL,
  `appkey` varchar(2) DEFAULT NULL,
  `appkey1` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`perid`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_personnel
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_personnel_log`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_personnel_log`;
CREATE TABLE `toa_crm_personnel_log` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  `approvaldate` datetime DEFAULT NULL,
  `lnstructions` varchar(255) DEFAULT NULL,
  `pertype` varchar(2) DEFAULT NULL,
  `perid` varchar(16) DEFAULT NULL,
  `viewid` varchar(16) DEFAULT NULL,
  `modid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_personnel_log
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_pord_type`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_pord_type`;
CREATE TABLE `toa_crm_pord_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `father` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_pord_type
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_price`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_price`;
CREATE TABLE `toa_crm_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(64) DEFAULT NULL,
  `cid` varchar(16) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `price` varchar(16) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `viewid` varchar(16) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_price
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_product`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_product`;
CREATE TABLE `toa_crm_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_product
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_prod_view`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_prod_view`;
CREATE TABLE `toa_crm_prod_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(16) DEFAULT NULL,
  `price` varchar(16) DEFAULT NULL,
  `number` varchar(16) DEFAULT NULL,
  `unit` varchar(16) DEFAULT NULL,
  `viewid` varchar(255) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_prod_view
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_program`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_program`;
CREATE TABLE `toa_crm_program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(64) DEFAULT NULL,
  `cid` varchar(16) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_program
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_purchase`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_purchase`;
CREATE TABLE `toa_crm_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(64) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `pricenum` varchar(16) DEFAULT NULL,
  `sid` varchar(16) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_purchase
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_service`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_service`;
CREATE TABLE `toa_crm_service` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` varchar(16) DEFAULT NULL,
  `startdate` varchar(16) DEFAULT NULL,
  `enddate` varchar(16) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_service
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_stock`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_stock`;
CREATE TABLE `toa_crm_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stocknum` varchar(32) DEFAULT NULL,
  `pid` varchar(16) DEFAULT NULL,
  `unit` varchar(32) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_stock
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_crm_supplier`
-- ----------------------------
DROP TABLE IF EXISTS `toa_crm_supplier`;
CREATE TABLE `toa_crm_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(16) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_crm_supplier
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_department`
-- ----------------------------
DROP TABLE IF EXISTS `toa_department`;
CREATE TABLE `toa_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persno` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `father` varchar(10) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_department
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_document`
-- ----------------------------
DROP TABLE IF EXISTS `toa_document`;
CREATE TABLE `toa_document` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `documentid` varchar(50) DEFAULT NULL,
  `annex` varchar(255) DEFAULT NULL,
  `key` varchar(16) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `readuser` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_document
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_document_type`
-- ----------------------------
DROP TABLE IF EXISTS `toa_document_type`;
CREATE TABLE `toa_document_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `father` varchar(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_document_type
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_duty`
-- ----------------------------
DROP TABLE IF EXISTS `toa_duty`;
CREATE TABLE `toa_duty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user` text,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `content` text,
  `appendix` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `dkey` varchar(2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_duty
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_duty_log`
-- ----------------------------
DROP TABLE IF EXISTS `toa_duty_log`;
CREATE TABLE `toa_duty_log` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dutyid` varchar(255) DEFAULT NULL,
  `content` text,
  `progress` varchar(32) DEFAULT NULL,
  `appendix` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  `duid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_duty_log
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_duty_user`
-- ----------------------------
DROP TABLE IF EXISTS `toa_duty_user`;
CREATE TABLE `toa_duty_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dutyid` varchar(32) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `content` text,
  `appendix` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `dkey` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_duty_user
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_emailtype`
-- ----------------------------
DROP TABLE IF EXISTS `toa_emailtype`;
CREATE TABLE `toa_emailtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_emailtype
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_fileoffice`
-- ----------------------------
DROP TABLE IF EXISTS `toa_fileoffice`;
CREATE TABLE `toa_fileoffice` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) DEFAULT NULL,
  `fileid` varchar(64) DEFAULT NULL,
  `filetype` varchar(2) DEFAULT NULL,
  `officetype` varchar(2) DEFAULT NULL,
  `officeid` varchar(64) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `fileaddr` varchar(255) DEFAULT NULL,
  `uid` varchar(32) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_fileoffice
-- ----------------------------
INSERT INTO toa_fileoffice VALUES ('1', 'Tscx198900', '1', '1', '50', null, 'Tscx198900.xls', null, '1', '2015-02-22 16:35:59');
INSERT INTO toa_fileoffice VALUES ('2', 'Tscx128894', '2', '1', '50', null, 'Tscx128894.xls', null, '1', '2015-02-22 16:35:59');
INSERT INTO toa_fileoffice VALUES ('3', 'Tscx128893', '3', '1', '50', null, 'Tscx128893.xls', null, '1', '2015-02-22 16:45:16');
INSERT INTO toa_fileoffice VALUES ('4', 'Tscx118892', '4', '1', '50', null, 'Tscx118892.xls', null, '1', '2015-02-22 16:48:22');
INSERT INTO toa_fileoffice VALUES ('5', 'Tscx178888', '5', '1', '50', null, 'Tscx178888.doc', null, '1', '2015-02-22 16:49:25');

-- ----------------------------
-- Table structure for `toa_humancontract`
-- ----------------------------
DROP TABLE IF EXISTS `toa_humancontract`;
CREATE TABLE `toa_humancontract` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) DEFAULT NULL,
  `number` varchar(60) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `ckey` varchar(10) DEFAULT NULL,
  `signdate` varchar(60) DEFAULT NULL,
  `testdate` varchar(60) DEFAULT NULL,
  `testday` varchar(30) DEFAULT NULL,
  `testenddate` varchar(60) DEFAULT NULL,
  `signnum` varchar(30) DEFAULT NULL,
  `appendix` varchar(255) DEFAULT NULL,
  `content` text,
  `uid` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `signenddate` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_humancontract
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_human_db`
-- ----------------------------
DROP TABLE IF EXISTS `toa_human_db`;
CREATE TABLE `toa_human_db` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formname` varchar(255) DEFAULT NULL,
  `inputname` varchar(255) DEFAULT NULL,
  `inputvalue` text,
  `type` varchar(20) DEFAULT NULL,
  `inputtype` varchar(20) DEFAULT NULL,
  `inputvaluenum` text,
  `confirmation` varchar(10) DEFAULT NULL,
  `type1` varchar(10) DEFAULT NULL,
  `typeid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_human_db
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_human_form`
-- ----------------------------
DROP TABLE IF EXISTS `toa_human_form`;
CREATE TABLE `toa_human_form` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formname` varchar(255) DEFAULT NULL,
  `inputname` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `inputvalue` varchar(255) DEFAULT NULL,
  `inputtype` varchar(20) DEFAULT NULL,
  `inputvaluenum` text,
  `confirmation` varchar(10) DEFAULT NULL,
  `type1` varchar(10) DEFAULT NULL,
  `key1` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_human_form
-- ----------------------------
INSERT INTO toa_human_form VALUES ('2', '证照类型', 'toa_2_LICENSE_TYPE', '0', '', '5', '驾驶证|健康证|暂住证|技能证|其他', '1', '2', null);
INSERT INTO toa_human_form VALUES ('3', '证照编号', 'toa_2_LICENSE_NO', '0', '', '1', '', '1', '2', null);
INSERT INTO toa_human_form VALUES ('4', '证照名称', 'toa_2_LICENSE_NAME', '0', '', '1', '', '1', '2', null);
INSERT INTO toa_human_form VALUES ('5', '取证日期', 'toa_2_GET_LICENSE_DATE', '3', '', '1', '', '2', '2', null);
INSERT INTO toa_human_form VALUES ('6', '生效日期', 'toa_2_EFFECTIVE_DATE', '3', '', '1', '', '2', '2', null);
INSERT INTO toa_human_form VALUES ('7', '状态', 'toa_2_STATUS', '0', '', '5', '未生效|生效中|已到期', '2', '2', null);
INSERT INTO toa_human_form VALUES ('8', '到期日期', 'toa_2_EXPIRATION_PERIOD', '3', '', '1', '', '2', '2', null);
INSERT INTO toa_human_form VALUES ('9', '发证机构', 'toa_2_NOTIFIED_BODY', '0', '', '2', '', '2', '2', null);
INSERT INTO toa_human_form VALUES ('10', '备注', 'toa_2_REMARK', '0', '', '2', '', '2', '2', null);
INSERT INTO toa_human_form VALUES ('12', '所学专业', 'toa_3_MAJOR', '0', '', '1', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('13', '开始日期', 'toa_3_START_DATE', '3', '', '1', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('14', '结束日期', 'toa_3_END_DATE', '3', '', '1', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('15', '所获学历', 'toa_3_ACADEMY_DEGREE', '0', '', '1', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('16', '所获学位', 'toa_3_DEGREE', '0', '', '1', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('17', '曾任班干', 'toa_3_POSITION', '0', '', '1', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('18', '证明人', 'toa_3_WITNESS', '0', '', '1', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('19', '所在院校', 'toa_3_SCHOOL', '0', '', '2', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('20', '院校所在地', 'toa_3_SCHOOL_ADDRESS', '0', '', '2', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('21', '获奖情况', 'toa_3_AWARDING', '0', '', '2', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('22', '所获证书', 'toa_3_CERTIFICATES', '0', '', '2', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('23', '备注', 'toa_3_REMARK', '0', '', '2', '', '2', '3', null);
INSERT INTO toa_human_form VALUES ('25', '担任职务', 'toa_4_POST_OF_JOB', '0', '', '1', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('26', '所在部门', 'toa_4_WORK_BRANCH', '0', '', '1', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('27', '证明人', 'toa_4_WITNESS', '0', '', '1', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('28', '开始日期', 'toa_4_START_DATE', '3', '', '1', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('29', '结束日期', 'toa_4_END_DATE', '3', '', '1', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('30', '行业类别', 'toa_4_MOBILE', '0', '', '2', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('31', '工作单位', 'toa_4_WORK_UNIT', '0', '', '2', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('32', '工作内容', 'toa_4_WORK_CONTENT', '0', '', '2', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('33', '离职原因', 'toa_4_REASON_FOR_LEAVING', '0', '', '2', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('34', '主要业绩', 'toa_4_KEY_PERFORMANCE', '0', '', '2', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('35', '备注', 'toa_4_REMARK', '0', '', '2', '', '2', '4', null);
INSERT INTO toa_human_form VALUES ('37', '技能名称', 'toa_5_ABILITY_NAME', '0', '', '1', '', '1', '5', null);
INSERT INTO toa_human_form VALUES ('38', '特种作业', 'toa_5_SPECIAL_WORK', '0', '', '3', '是|否', '2', '5', null);
INSERT INTO toa_human_form VALUES ('39', '级别', 'toa_5_SKILLS_LEVEL', '0', '', '1', '', '2', '5', null);
INSERT INTO toa_human_form VALUES ('40', '技能证', 'toa_5_SKILLS_CERTIFICATE', '0', '', '3', '是|否', '2', '5', null);
INSERT INTO toa_human_form VALUES ('41', '发证日期', 'toa_5_ISSUE_DATE', '3', '', '1', '', '2', '5', null);
INSERT INTO toa_human_form VALUES ('42', '有效期', 'toa_5_EXPIRES', '0', '', '1', '', '2', '5', null);
INSERT INTO toa_human_form VALUES ('43', '到期日期', 'toa_5_EXPIRE_DATE', '3', '', '1', '', '2', '5', null);
INSERT INTO toa_human_form VALUES ('44', '发证机关/单位', 'toa_5_ISSUING_AUTHORITY', '0', '', '2', '', '2', '5', null);
INSERT INTO toa_human_form VALUES ('45', '备注', 'toa_5_REMARK', '0', '', '2', '', '2', '5', null);
INSERT INTO toa_human_form VALUES ('47', '成员姓名', 'toa_6_MEMBER', '0', '', '1', '', '1', '6', null);
INSERT INTO toa_human_form VALUES ('48', '与本人关系', 'toa_6_ELATIONSHIP', '0', '', '5', '姐弟|母子|兄弟|姐妹|父子|兄妹|其他', '2', '6', null);
INSERT INTO toa_human_form VALUES ('49', '出生日期', 'toa_6_BIRTHDAY', '3', '', '1', '', '2', '6', null);
INSERT INTO toa_human_form VALUES ('50', '政治面貌', 'toa_6_POLITICS', '0', '', '5', '共青团员|中共党员|中共预备党员|民主党派|无党派人士|群众', '2', '6', null);
INSERT INTO toa_human_form VALUES ('51', '职业', 'toa_6_JOB_OCCUPATION', '0', '', '1', '', '2', '6', null);
INSERT INTO toa_human_form VALUES ('52', '担任职务', 'toa_6_POST_OF_JOB', '0', '', '1', '', '2', '6', null);
INSERT INTO toa_human_form VALUES ('53', '联系电话（个人）', 'toa_6_PERSONAL_TEL', '0', '', '1', '', '2', '6', null);
INSERT INTO toa_human_form VALUES ('54', '联系电话（家庭）', 'toa_6_HOME_TEL', '0', '', '1', '', '2', '6', null);
INSERT INTO toa_human_form VALUES ('55', '联系电话（单位）', 'toa_6_OFFICE_TEL', '0', '', '1', '', '2', '6', null);
INSERT INTO toa_human_form VALUES ('56', '工作单位', 'toa_6_WORK_UNIT', '0', '', '2', '', '2', '6', null);
INSERT INTO toa_human_form VALUES ('57', '单位地址', 'toa_6_UNIT_ADDRESS', '0', '', '2', '', '2', '6', null);
INSERT INTO toa_human_form VALUES ('58', '家庭住址', 'toa_6_HOME_ADDRESS', '0', '', '2', '', '2', '6', null);
INSERT INTO toa_human_form VALUES ('59', '备注', 'toa_6_REMARK', '0', '', '2', '', '2', '6', null);
INSERT INTO toa_human_form VALUES ('61', '调动类型', 'toa_7_TRANSFER_TYPE', '0', '', '5', '晋升|平调|降级|借调|其他', '2', '7', null);
INSERT INTO toa_human_form VALUES ('62', '调动日期', 'toa_7_TRANSFER_DATE', '3', '', '1', '', '2', '7', null);
INSERT INTO toa_human_form VALUES ('63', '调动生效日期', 'toa_7_TRANSFER_EFFECTIVE_DATE', '0', '', '1', '', '2', '7', null);
INSERT INTO toa_human_form VALUES ('64', '调动前单位', 'toa_7_TRAN_COMPANY_BEFORE', '0', '', '1', '', '2', '7', null);
INSERT INTO toa_human_form VALUES ('65', '调动后单位', 'toa_7_TRAN_COMPANY_AFTER', '0', '', '1', '', '2', '7', null);
INSERT INTO toa_human_form VALUES ('66', '调动前职务', 'toa_7_TRAN_POSITION_BEFORE', '0', '', '1', '', '2', '7', null);
INSERT INTO toa_human_form VALUES ('67', '调动后职务', 'toa_7_TRAN_POSITION_AFTER', '0', '', '1', '', '2', '7', null);
INSERT INTO toa_human_form VALUES ('68', '调动前部门', 'toa_7_TRAN_DEPT_BEFORE', '4', '', '1', '', '2', '7', null);
INSERT INTO toa_human_form VALUES ('69', '调动后部门', 'toa_7_TRAN_DEPT_AFTER', '4', '', '1', '', '1', '7', null);
INSERT INTO toa_human_form VALUES ('70', '调动手续办理', 'toa_7_MATERIALS_CONDITION', '0', '', '2', '', '2', '7', null);
INSERT INTO toa_human_form VALUES ('71', '备注', 'toa_7_REMARK', '0', '', '2', '', '2', '7', null);
INSERT INTO toa_human_form VALUES ('73', '复职类型', 'toa_8_REAPPOINTMENT_TYPE', '0', '', '5', '调回|复员|其它', '2', '8', null);
INSERT INTO toa_human_form VALUES ('74', '申请日期', 'toa_8_APPLICATION_DATE', '3', '', '1', '', '2', '8', null);
INSERT INTO toa_human_form VALUES ('75', '担任职务', 'toa_8_NOW_POSITION', '0', '', '2', '', '2', '8', null);
INSERT INTO toa_human_form VALUES ('76', '拟复职日期', 'toa_8_REAPPOINTMENT_TIME_PLAN', '3', '', '1', '', '2', '8', null);
INSERT INTO toa_human_form VALUES ('77', '实际复职日期', 'toa_8_REAPPOINTMENT_TIME_FACT', '3', '', '1', '', '2', '8', null);
INSERT INTO toa_human_form VALUES ('78', '工资恢复日期', 'toa_8_FIRST_SALARY_TIME', '3', '', '1', '', '2', '8', null);
INSERT INTO toa_human_form VALUES ('79', '复职部门', 'toa_8_REAPPOINTMENT_DEPT', '4', '', '1', '', '2', '8', null);
INSERT INTO toa_human_form VALUES ('80', '复职手续办理', 'toa_8_MATERIALS_CONDITION', '0', '', '2', '', '2', '8', null);
INSERT INTO toa_human_form VALUES ('81', '复职说明', 'toa_8_REAPPOINTMENT_STATE', '0', '', '2', '', '2', '8', null);
INSERT INTO toa_human_form VALUES ('82', '备注', 'toa_8_REMARK', '0', '', '2', '', '2', '8', null);
INSERT INTO toa_human_form VALUES ('84', '批准人', 'toa_9_APPROVE_PERSON_NAME', '5', '', '1', '', '1', '9', null);
INSERT INTO toa_human_form VALUES ('85', '获取职称', 'toa_9_POST_NAME', '0', '', '1', '', '2', '9', null);
INSERT INTO toa_human_form VALUES ('86', '获取方式', 'toa_9_GET_METHOD', '0', '', '5', '业绩考核|考试|其它', '2', '9', null);
INSERT INTO toa_human_form VALUES ('87', '申报时间', 'toa_9_REPORT_TIME', '3', '', '1', '', '2', '9', null);
INSERT INTO toa_human_form VALUES ('88', '获取时间', 'toa_9_RECEIVE_TIME', '3', '', '1', '', '2', '9', null);
INSERT INTO toa_human_form VALUES ('89', '下次申报职称', 'toa_9_APPROVE_NEXT', '0', '', '1', '', '2', '9', null);
INSERT INTO toa_human_form VALUES ('90', '下次申报时间', 'toa_9_APPROVE_NEXT_TIME', '3', '', '1', '', '2', '9', null);
INSERT INTO toa_human_form VALUES ('91', '聘用职务', 'toa_9_EMPLOY_POST', '0', '', '1', '', '2', '9', null);
INSERT INTO toa_human_form VALUES ('92', '聘用单位', 'toa_9_EMPLOY_COMPANY', '0', '', '1', '', '2', '9', null);
INSERT INTO toa_human_form VALUES ('93', '聘用开始时间', 'toa_9_START_DATE', '3', '', '1', '', '2', '9', null);
INSERT INTO toa_human_form VALUES ('94', '聘用结束时间', 'toa_9_END_DATE', '3', '', '1', '', '2', '9', null);
INSERT INTO toa_human_form VALUES ('95', '评定详情', 'toa_9_REMARK', '0', '', '2', '', '2', '9', null);
INSERT INTO toa_human_form VALUES ('96', '关怀类型', 'toa_10_CARE_TYPE', '0', '', '5', '节日关怀|生日关怀|祝福|庆祝', '2', '10', null);
INSERT INTO toa_human_form VALUES ('97', '关怀开支费用', 'toa_10_CARE_FEES', '0', '', '2', '', '2', '10', null);
INSERT INTO toa_human_form VALUES ('159', '政治面貌', 'toa_1_57', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('99', '关怀日期', 'toa_10_CARE_DATE', '3', '', '1', '', '2', '10', null);
INSERT INTO toa_human_form VALUES ('100', '关怀效果', 'toa_10_CARE_EFFECTS', '0', '', '2', '', '2', '10', null);
INSERT INTO toa_human_form VALUES ('101', '参与人', 'toa_10_PARTICIPANTS', '5', '', '1', '', '2', '10', null);
INSERT INTO toa_human_form VALUES ('102', '关怀内容', 'toa_10_CARE_CONTENT', '0', '', '2', '', '2', '10', null);
INSERT INTO toa_human_form VALUES ('103', '姓名', 'toa_1_1', '0', '', '1', '', '1', '1', null);
INSERT INTO toa_human_form VALUES ('104', '英文名', 'toa_1_2', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('105', '性别', 'toa_1_3', '0', '', '3', '男|女', '2', '1', null);
INSERT INTO toa_human_form VALUES ('106', '身份证号', 'toa_1_4', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('107', '出生日期', 'toa_1_5', '3', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('108', '年龄', 'toa_1_6', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('109', '婚姻状况', 'toa_1_7', '0', '', '3', '己婚|未婚|离异|其它', '2', '1', null);
INSERT INTO toa_human_form VALUES ('110', '籍贯', 'toa_1_8', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('111', '民族', 'toa_1_9', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('112', '健康状况', 'toa_1_10', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('113', '年休假', 'toa_1_11', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('114', '入党时间', 'toa_1_13', '3', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('115', '户口类别', 'toa_1_14', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('116', '户口所在地', 'toa_1_15', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('117', '工种', 'toa_1_16', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('118', '行政级别', 'toa_1_17', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('119', '员工类型', 'toa_1_18', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('120', '职务', 'toa_1_19', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('121', '职称', 'toa_1_20', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('123', '入职时间', 'toa_1_21', '3', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('124', '职称级别', 'toa_1_22', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('125', '岗位', 'toa_1_23', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('126', '本单位工龄', 'toa_1_24', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('127', '起薪时间', 'toa_1_25', '3', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('128', '在职状态', 'toa_1_26', '0', '', '3', '是|否', '2', '1', null);
INSERT INTO toa_human_form VALUES ('129', '总工龄', 'toa_1_27', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('130', '参加工作时间', 'toa_1_28', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('131', '联系电话', 'toa_1_29', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('132', '手机号码', 'toa_1_30', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('133', '小灵通', 'toa_1_31', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('134', 'MSN', 'toa_1_32', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('135', '电子邮件', 'toa_1_33', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('136', '家庭地址', 'toa_1_34', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('137', 'QQ', 'toa_1_35', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('138', '其他联系方式', 'toa_1_36', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('139', '学历', 'toa_1_37', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('140', '学位', 'toa_1_38', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('141', '毕业时间', 'toa_1_39', '3', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('142', '毕业学校', 'toa_1_40', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('143', '专业', 'toa_1_41', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('144', '计算机水平', 'toa_1_42', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('145', '外语语种1', 'toa_1_43', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('146', '外语语种2', 'toa_1_44', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('147', '外语语种3', 'toa_1_45', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('148', '外语水平1', 'toa_1_46', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('149', '外语水平2', 'toa_1_47', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('150', '外语水平3', 'toa_1_48', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('151', '特长', 'toa_1_49', '0', '', '1', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('152', '职务情况', 'toa_1_50', '0', '', '2', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('153', '担保记录', 'toa_1_51', '0', '', '2', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('154', '社保缴纳情况', 'toa_1_52', '0', '', '2', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('155', '体检记录', 'toa_1_53', '0', '', '2', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('156', '备注', 'toa_1_54', '0', '', '2', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('157', '简历', 'toa_1_55', '0', '', '2', '', '2', '1', null);
INSERT INTO toa_human_form VALUES ('158', '照片', 'toa_1_56', '1', '', '1', '', '2', '1', null);

-- ----------------------------
-- Table structure for `toa_human_info`
-- ----------------------------
DROP TABLE IF EXISTS `toa_human_info`;
CREATE TABLE `toa_human_info` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `number` varchar(60) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_human_info
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_keytable`
-- ----------------------------
DROP TABLE IF EXISTS `toa_keytable`;
CREATE TABLE `toa_keytable` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `inputname` varchar(255) DEFAULT NULL,
  `inputvalue` varchar(255) DEFAULT NULL,
  `inputchecked` varchar(5) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `fatherid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=518 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_keytable
-- ----------------------------
INSERT INTO toa_keytable VALUES ('1', '系统管理权限设置', 'config_', '1', '1', '2', '10', '0');
INSERT INTO toa_keytable VALUES ('2', '系统设置', '0', '1', '1', '1', '999', '1');
INSERT INTO toa_keytable VALUES ('3', '允许', 'config_inc', '1', '1', '1', '1', '2');
INSERT INTO toa_keytable VALUES ('4', '禁止', 'config_inc', '0', '2', '1', '2', '2');
INSERT INTO toa_keytable VALUES ('5', '权限组设置', '0', '0', '1', '1', '999', '1');
INSERT INTO toa_keytable VALUES ('6', '允许', 'config_usergroup', '1', '1', '1', '1', '5');
INSERT INTO toa_keytable VALUES ('7', '禁止', 'config_usergroup', '0', '2', '1', '2', '5');
INSERT INTO toa_keytable VALUES ('8', '添加', 'config_usergroup_Increase', '1', '1', '2', '3', '5');
INSERT INTO toa_keytable VALUES ('9', '编辑', 'config_usergroup_edit', '1', '1', '2', '4', '5');
INSERT INTO toa_keytable VALUES ('10', '删除', 'config_usergroup_delete', '1', '1', '2', '5', '5');
INSERT INTO toa_keytable VALUES ('11', '账号设置', '0', '1', '1', '1', '999', '1');
INSERT INTO toa_keytable VALUES ('12', '允许', 'config_user', '1', '1', '1', '1', '11');
INSERT INTO toa_keytable VALUES ('13', '禁止', 'config_user', '0', '2', '1', '2', '11');
INSERT INTO toa_keytable VALUES ('14', '添加', 'config_user_Increase', '1', '1', '2', '3', '11');
INSERT INTO toa_keytable VALUES ('15', '编辑', 'config_user_edit', '1', '1', '2', '4', '11');
INSERT INTO toa_keytable VALUES ('16', '删除', 'config_user_delete', '1', '1', '2', '5', '11');
INSERT INTO toa_keytable VALUES ('17', '系统维护', '0', '0', '1', '1', '999', '1');
INSERT INTO toa_keytable VALUES ('18', '允许', 'config_log', '1', '1', '1', '1', '17');
INSERT INTO toa_keytable VALUES ('19', '禁止', 'config_log', '0', '2', '1', '2', '17');
INSERT INTO toa_keytable VALUES ('20', '清理', 'config_log_delete', '1', '1', '2', '3', '17');
INSERT INTO toa_keytable VALUES ('21', '数据备份', '0', '0', '1', '1', '999', '1');
INSERT INTO toa_keytable VALUES ('22', '允许备份', 'config_db', '1', '1', '2', '1', '21');
INSERT INTO toa_keytable VALUES ('23', '允许还原', 'config_db_old', '1', '1', '2', '2', '21');
INSERT INTO toa_keytable VALUES ('24', '个人办公', 'myuser_', '1', '1', '2', '1', '0');
INSERT INTO toa_keytable VALUES ('361', '行政办公', '0', '0', '1', '1', '4', '357');
INSERT INTO toa_keytable VALUES ('362', '人力资源', '0', '0', '1', '1', '5', '357');
INSERT INTO toa_keytable VALUES ('30', '短消息', '0', '0', '1', '1', '1', '24');
INSERT INTO toa_keytable VALUES ('31', '允许', 'office_info', '1', '1', '1', '1', '30');
INSERT INTO toa_keytable VALUES ('32', '禁止', 'office_info', '0', '2', '1', '2', '30');
INSERT INTO toa_keytable VALUES ('33', '发送', 'office_info_Increase', '1', '1', '2', '3', '30');
INSERT INTO toa_keytable VALUES ('34', '删除', 'office_info_delete', '1', '1', '2', '4', '30');
INSERT INTO toa_keytable VALUES ('35', '手机短信', '0', '0', '1', '1', '2', '24');
INSERT INTO toa_keytable VALUES ('36', '允许', 'office_sms', '1', '1', '1', '1', '35');
INSERT INTO toa_keytable VALUES ('37', '禁止', 'office_sms', '0', '2', '1', '2', '35');
INSERT INTO toa_keytable VALUES ('38', '发短信', 'office_sms_Increase', '1', '1', '2', '3', '35');
INSERT INTO toa_keytable VALUES ('39', '收短信', 'office_sms_read', '1', '1', '2', '4', '35');
INSERT INTO toa_keytable VALUES ('40', '删除', 'office_sms_delete', '1', '1', '2', '5', '35');
INSERT INTO toa_keytable VALUES ('41', '日程安排', '0', '0', '1', '1', '3', '24');
INSERT INTO toa_keytable VALUES ('42', '允许', 'date_workdate', '1', '1', '1', '1', '41');
INSERT INTO toa_keytable VALUES ('43', '禁止', 'date_workdate', '0', '2', '1', '2', '41');
INSERT INTO toa_keytable VALUES ('44', '添加', 'date_workdate_Increase', '1', '1', '2', '3', '41');
INSERT INTO toa_keytable VALUES ('45', '编辑', 'date_workdate_edit', '1', '1', '2', '4', '41');
INSERT INTO toa_keytable VALUES ('46', '删除', 'date_workdate_delete', '1', '1', '2', '5', '41');
INSERT INTO toa_keytable VALUES ('47', '工作日记', '0', '0', '1', '1', '4', '24');
INSERT INTO toa_keytable VALUES ('48', '允许', 'date_blog', '1', '1', '1', '1', '47');
INSERT INTO toa_keytable VALUES ('49', '禁止', 'date_blog', '0', '2', '1', '2', '47');
INSERT INTO toa_keytable VALUES ('50', '添加', 'date_blog_Increase', '1', '1', '2', '3', '47');
INSERT INTO toa_keytable VALUES ('51', '编辑', 'date_blog_edit', '1', '1', '2', '4', '47');
INSERT INTO toa_keytable VALUES ('52', '删除', 'date_blog_delete', '1', '1', '2', '5', '47');
INSERT INTO toa_keytable VALUES ('53', '工作计划', '0', '0', '1', '1', '5', '24');
INSERT INTO toa_keytable VALUES ('54', '允许', 'date_plan', '1', '1', '1', '1', '53');
INSERT INTO toa_keytable VALUES ('55', '禁止', 'date_plan', '0', '2', '1', '2', '53');
INSERT INTO toa_keytable VALUES ('56', '添加', 'date_plan_Increase', '1', '1', '2', '3', '53');
INSERT INTO toa_keytable VALUES ('57', '编辑', 'date_plan_edit', '1', '1', '2', '4', '53');
INSERT INTO toa_keytable VALUES ('58', '删除', 'date_plan_delete', '1', '1', '2', '5', '53');
INSERT INTO toa_keytable VALUES ('59', '通讯录', '0', '0', '1', '1', '6', '24');
INSERT INTO toa_keytable VALUES ('60', '允许', 'office_communication', '1', '1', '1', '1', '59');
INSERT INTO toa_keytable VALUES ('61', '禁止', 'office_communication', '0', '2', '1', '2', '59');
INSERT INTO toa_keytable VALUES ('62', '添加', 'office_communication_Increase', '1', '1', '2', '3', '59');
INSERT INTO toa_keytable VALUES ('63', '编辑', 'office_communication_edit', '1', '1', '2', '4', '59');
INSERT INTO toa_keytable VALUES ('64', '删除', 'office_communication_delete', '1', '1', '2', '5', '59');
INSERT INTO toa_keytable VALUES ('65', '个人文件柜', '0', '0', '1', '1', '7', '24');
INSERT INTO toa_keytable VALUES ('66', '允许', 'office_document_1', '1', '1', '1', '1', '65');
INSERT INTO toa_keytable VALUES ('67', '禁止', 'office_document_1', '0', '2', '1', '2', '65');
INSERT INTO toa_keytable VALUES ('68', '添加', 'office_document_Increase_1', '1', '1', '2', '3', '65');
INSERT INTO toa_keytable VALUES ('69', '编辑', 'office_document_edit_1', '1', '1', '2', '4', '65');
INSERT INTO toa_keytable VALUES ('70', '删除', 'office_document_delete_1', '1', '1', '2', '5', '65');
INSERT INTO toa_keytable VALUES ('344', '修改投票', 'app_update', '1', '1', '2', '4', '234');
INSERT INTO toa_keytable VALUES ('103', '知识交流', 'input_knowledge', '1', '1', '2', '9', '0');
INSERT INTO toa_keytable VALUES ('104', '知识管理', 'knowledge_', '1', '1', '2', '1', '103');
INSERT INTO toa_keytable VALUES ('105', '发布', 'knowledge_Increase', '1', '1', '2', '1', '104');
INSERT INTO toa_keytable VALUES ('106', '编辑', 'knowledge_read', '1', '1', '2', '2', '104');
INSERT INTO toa_keytable VALUES ('107', '删除', 'knowledge_delete', '1', '1', '2', '3', '104');
INSERT INTO toa_keytable VALUES ('108', '下载管理', '0', '0', '1', '1', '2', '103');
INSERT INTO toa_keytable VALUES ('109', '文件夹管理', 'office_document_type_4', '1', '1', '2', '6', '108');
INSERT INTO toa_keytable VALUES ('110', '下载发布', 'office_document_Increase_4', '1', '1', '2', '3', '108');
INSERT INTO toa_keytable VALUES ('111', '下载编辑', 'office_document_edit_4', '1', '1', '2', '4', '108');
INSERT INTO toa_keytable VALUES ('112', '下载删除', 'office_document_delete_4', '1', '1', '2', '5', '108');
INSERT INTO toa_keytable VALUES ('113', '规章制度', '0', '0', '1', '1', '3', '103');
INSERT INTO toa_keytable VALUES ('114', '目录管理', 'office_document_type_5', '1', '1', '2', '6', '113');
INSERT INTO toa_keytable VALUES ('115', '信息发布', 'office_document_Increase_5', '1', '1', '2', '3', '113');
INSERT INTO toa_keytable VALUES ('116', '信息编辑', 'office_document_edit_5', '1', '1', '2', '4', '113');
INSERT INTO toa_keytable VALUES ('117', '信息删除', 'office_document_delete_5', '1', '1', '2', '5', '113');
INSERT INTO toa_keytable VALUES ('118', '电子期刊', '0', '0', '1', '1', '4', '103');
INSERT INTO toa_keytable VALUES ('119', '允许', 'news_periodical', '1', '1', '1', '1', '118');
INSERT INTO toa_keytable VALUES ('120', '禁止', 'news_periodical', '0', '2', '1', '2', '118');
INSERT INTO toa_keytable VALUES ('121', '添加', 'news_periodical_Increase', '1', '1', '2', '3', '118');
INSERT INTO toa_keytable VALUES ('122', '编辑', 'news_periodical_edit', '1', '1', '2', '4', '118');
INSERT INTO toa_keytable VALUES ('123', '删除', 'news_periodical_delete', '1', '1', '2', '5', '118');
INSERT INTO toa_keytable VALUES ('124', '分类设置', 'news_periodical_type', '1', '1', '2', '6', '118');
INSERT INTO toa_keytable VALUES ('125', '公共文件柜', '0', '0', '1', '1', '5', '103');
INSERT INTO toa_keytable VALUES ('126', '文件夹管理', 'office_document_type_2', '1', '1', '2', '6', '125');
INSERT INTO toa_keytable VALUES ('127', '文件上传', 'office_document_Increase_2', '1', '1', '2', '3', '125');
INSERT INTO toa_keytable VALUES ('128', '文件修改', 'office_document_edit_2', '1', '1', '2', '4', '125');
INSERT INTO toa_keytable VALUES ('129', '文件删除', 'office_document_delete_2', '1', '1', '2', '5', '125');
INSERT INTO toa_keytable VALUES ('130', '网络硬盘', '0', '0', '1', '1', '6', '103');
INSERT INTO toa_keytable VALUES ('131', '文件夹管理', 'office_document_type_3', '1', '1', '2', '6', '130');
INSERT INTO toa_keytable VALUES ('132', '文件上传', 'office_document_Increase_3', '1', '1', '2', '3', '130');
INSERT INTO toa_keytable VALUES ('133', '文件编辑', 'office_document_edit_3', '1', '1', '2', '4', '130');
INSERT INTO toa_keytable VALUES ('134', '文件删除', 'office_document_delete_3', '1', '1', '2', '5', '130');
INSERT INTO toa_keytable VALUES ('135', '报表管理', '0', '0', '1', '1', '7', '103');
INSERT INTO toa_keytable VALUES ('136', '分类管理', 'office_document_type_6', '1', '1', '2', '6', '135');
INSERT INTO toa_keytable VALUES ('137', '报表上传', 'office_document_Increase_6', '1', '1', '2', '3', '135');
INSERT INTO toa_keytable VALUES ('138', '报表编辑', 'office_document_edit_6', '1', '1', '2', '4', '135');
INSERT INTO toa_keytable VALUES ('139', '报表删除', 'office_document_delete_6', '1', '1', '2', '5', '135');
INSERT INTO toa_keytable VALUES ('140', '行政办公', 'mana_', '1', '1', '2', '4', '0');
INSERT INTO toa_keytable VALUES ('141', '大事记', '0', '0', '1', '1', '5', '140');
INSERT INTO toa_keytable VALUES ('142', '允许', 'news_chronicle', '1', '1', '1', '1', '141');
INSERT INTO toa_keytable VALUES ('143', '禁止', 'news_chronicle', '0', '2', '1', '2', '141');
INSERT INTO toa_keytable VALUES ('144', '添加', 'news_chronicle_Increase', '1', '1', '2', '3', '141');
INSERT INTO toa_keytable VALUES ('145', '编辑', 'news_chronicle_edit', '1', '1', '2', '4', '141');
INSERT INTO toa_keytable VALUES ('146', '删除', 'news_chronicle_delete', '1', '1', '2', '5', '141');
INSERT INTO toa_keytable VALUES ('147', '分类设置', 'news_chronicle_type', '1', '1', '2', '6', '141');
INSERT INTO toa_keytable VALUES ('148', '新闻', '0', '0', '1', '1', '6', '140');
INSERT INTO toa_keytable VALUES ('149', '允许', 'news_new', '1', '1', '1', '1', '148');
INSERT INTO toa_keytable VALUES ('150', '禁止', 'news_new', '0', '2', '1', '2', '148');
INSERT INTO toa_keytable VALUES ('151', '添加', 'news_new_Increase', '1', '1', '2', '3', '148');
INSERT INTO toa_keytable VALUES ('152', '编辑', 'news_new_edit', '1', '1', '2', '4', '148');
INSERT INTO toa_keytable VALUES ('153', '删除', 'news_new_delete', '1', '1', '2', '5', '148');
INSERT INTO toa_keytable VALUES ('154', '分类设置', 'news_new_type', '1', '1', '2', '6', '148');
INSERT INTO toa_keytable VALUES ('155', '通知', '0', '0', '1', '1', '7', '140');
INSERT INTO toa_keytable VALUES ('156', '允许', 'news_notice', '1', '1', '1', '1', '155');
INSERT INTO toa_keytable VALUES ('157', '禁止', 'news_notice', '0', '2', '1', '2', '155');
INSERT INTO toa_keytable VALUES ('158', '添加', 'news_notice_Increase', '1', '1', '2', '3', '155');
INSERT INTO toa_keytable VALUES ('159', '编辑', 'news_notice_edit', '1', '1', '2', '4', '155');
INSERT INTO toa_keytable VALUES ('160', '删除', 'news_notice_delete', '1', '1', '2', '5', '155');
INSERT INTO toa_keytable VALUES ('161', '分类设置', 'news_notice_type', '1', '1', '2', '6', '155');
INSERT INTO toa_keytable VALUES ('162', '公告', '0', '0', '1', '1', '8', '140');
INSERT INTO toa_keytable VALUES ('164', '允许', 'news_cement', '1', '1', '1', '1', '162');
INSERT INTO toa_keytable VALUES ('165', '禁止', 'news_cement', '0', '2', '1', '2', '162');
INSERT INTO toa_keytable VALUES ('166', '添加', 'news_cement_Increase', '1', '1', '2', '3', '162');
INSERT INTO toa_keytable VALUES ('167', '编辑', 'news_cement_edit', '1', '1', '2', '4', '162');
INSERT INTO toa_keytable VALUES ('168', '删除', 'news_cement_delete', '1', '1', '2', '5', '162');
INSERT INTO toa_keytable VALUES ('169', '分类设置', 'news_cement_type', '1', '1', '2', '6', '162');
INSERT INTO toa_keytable VALUES ('181', '会议管理', '0', '1', '1', '2', '3', '140');
INSERT INTO toa_keytable VALUES ('182', '允许', 'istration_conference', '1', '1', '1', '1', '181');
INSERT INTO toa_keytable VALUES ('183', '禁止', 'istration_conference', '0', '2', '1', '2', '181');
INSERT INTO toa_keytable VALUES ('184', '会议申请', 'istration_conference_Increase', '1', '1', '2', '3', '181');
INSERT INTO toa_keytable VALUES ('185', '会议编辑', 'istration_conference_edit', '1', '1', '2', '4', '181');
INSERT INTO toa_keytable VALUES ('186', '会议删除', 'istration_conference_delete', '1', '1', '2', '5', '181');
INSERT INTO toa_keytable VALUES ('366', '知识交流', '0', '0', '1', '1', '9', '357');
INSERT INTO toa_keytable VALUES ('368', '工作计划', 'excel_6', '1', '1', '2', '6', '358');
INSERT INTO toa_keytable VALUES ('369', '通迅录', 'excel_7', '1', '1', '2', '7', '358');
INSERT INTO toa_keytable VALUES ('190', '会议室设置', 'istration_conference_type_sce', '1', '1', '2', '9', '181');
INSERT INTO toa_keytable VALUES ('191', '会议类型设置', 'istration_conference_type_type', '1', '1', '2', '10', '181');
INSERT INTO toa_keytable VALUES ('192', '人力资源', 'input_job', '1', '1', '2', '5', '0');
INSERT INTO toa_keytable VALUES ('193', '部门管理', '0', '1', '1', '1', '7', '1');
INSERT INTO toa_keytable VALUES ('194', '允许', 'department_', '1', '1', '1', '1', '193');
INSERT INTO toa_keytable VALUES ('195', '禁止', 'department_', '0', '2', '1', '2', '193');
INSERT INTO toa_keytable VALUES ('196', '岗位设置', '0', '1', '1', '1', '8', '1');
INSERT INTO toa_keytable VALUES ('197', '允许', 'position_', '1', '1', '1', '1', '196');
INSERT INTO toa_keytable VALUES ('198', '禁止', 'position_', '0', '2', '1', '2', '196');
INSERT INTO toa_keytable VALUES ('357', '报表权限设置', '0', '0', '1', '1', '12', '0');
INSERT INTO toa_keytable VALUES ('358', '个人办公', '0', '0', '1', '1', '1', '357');
INSERT INTO toa_keytable VALUES ('202', '人事合同', '0', '0', '1', '1', '5', '192');
INSERT INTO toa_keytable VALUES ('203', '添加', 'humancontract_i', '1', '2', '2', '3', '202');
INSERT INTO toa_keytable VALUES ('204', '编辑', 'humancontract_e', '1', '2', '2', '4', '202');
INSERT INTO toa_keytable VALUES ('205', '删除', 'humancontract_d', '1', '2', '2', '5', '202');
INSERT INTO toa_keytable VALUES ('206', '允许', 'humancontract_', '1', '1', '1', '1', '202');
INSERT INTO toa_keytable VALUES ('207', '禁止', 'humancontract_', '0', '2', '1', '2', '202');
INSERT INTO toa_keytable VALUES ('213', '培训管理', '0', '1', '1', '2', '2', '192');
INSERT INTO toa_keytable VALUES ('214', '培训管理', 'training_', '1', '2', '2', '1', '213');
INSERT INTO toa_keytable VALUES ('215', '培训记录', 'training_record', '1', '2', '2', '2', '213');
INSERT INTO toa_keytable VALUES ('216', '奖惩管理', '0', '0', '1', '1', '3', '192');
INSERT INTO toa_keytable VALUES ('217', '允许', 'rewards_', '1', '1', '1', '1', '216');
INSERT INTO toa_keytable VALUES ('218', '禁止', 'rewards_', '0', '2', '1', '2', '216');
INSERT INTO toa_keytable VALUES ('219', '考勤管理', '0', '0', '1', '1', '4', '192');
INSERT INTO toa_keytable VALUES ('220', '允许', 'registration_', '1', '1', '1', '1', '219');
INSERT INTO toa_keytable VALUES ('221', '禁止', 'registration_', '0', '2', '1', '2', '219');
INSERT INTO toa_keytable VALUES ('222', '导出报表', 'registration_excel', '1', '2', '2', '3', '219');
INSERT INTO toa_keytable VALUES ('223', '基础类别设置', '0', '0', '1', '1', '9', '192');
INSERT INTO toa_keytable VALUES ('224', '允许', 'office_type_r', '1', '1', '1', '1', '223');
INSERT INTO toa_keytable VALUES ('225', '禁止', 'office_type_r', '0', '2', '1', '2', '223');
INSERT INTO toa_keytable VALUES ('227', '论坛', 'input_bbs', '1', '1', '2', '1', '103');
INSERT INTO toa_keytable VALUES ('228', '论坛版块设置', 'bbsclass_', '1', '2', '2', '5', '227');
INSERT INTO toa_keytable VALUES ('229', '论坛使用', 'bbs_', '1', '2', '2', '4', '227');
INSERT INTO toa_keytable VALUES ('230', '贴子审批', 'bbs_key', '1', '2', '2', '3', '227');
INSERT INTO toa_keytable VALUES ('231', '发贴', 'bbs_add', '1', '2', '2', '1', '227');
INSERT INTO toa_keytable VALUES ('232', '删除', 'bbs_delete', '1', '2', '2', '6', '227');
INSERT INTO toa_keytable VALUES ('233', '编辑', 'bbs_edit', '1', '2', '2', '2', '227');
INSERT INTO toa_keytable VALUES ('234', '投票', '0', '1', '1', '2', '2', '140');
INSERT INTO toa_keytable VALUES ('235', '允许', 'app_', '1', '1', '1', '1', '234');
INSERT INTO toa_keytable VALUES ('236', '禁止', 'app_', '0', '2', '1', '2', '234');
INSERT INTO toa_keytable VALUES ('237', '发起投票', 'app_add', '1', '2', '2', '3', '234');
INSERT INTO toa_keytable VALUES ('238', '菜单设置', '0', '0', '1', '1', '999', '1');
INSERT INTO toa_keytable VALUES ('239', '允许', 'config_menu', '1', '1', '1', '1', '238');
INSERT INTO toa_keytable VALUES ('240', '拒绝', 'config_menu', '0', '2', '1', '2', '238');
INSERT INTO toa_keytable VALUES ('241', '权限管理', '0', '0', '1', '1', '999', '1');
INSERT INTO toa_keytable VALUES ('242', '允许', 'config_keytable', '1', '1', '1', '1', '241');
INSERT INTO toa_keytable VALUES ('243', '拒绝', 'config_keytable', '0', '2', '1', '2', '241');
INSERT INTO toa_keytable VALUES ('244', '短信账号', 'office_sms_channel', '1', '1', '2', '6', '35');
INSERT INTO toa_keytable VALUES ('245', '任务管理', '0', '0', '1', '1', '8', '24');
INSERT INTO toa_keytable VALUES ('246', '允许', 'office_duty', '1', '1', '1', '1', '245');
INSERT INTO toa_keytable VALUES ('247', '拒绝', 'office_duty', '0', '2', '1', '2', '245');
INSERT INTO toa_keytable VALUES ('248', '任务发布', 'office_duty_add', '1', '1', '2', '3', '245');
INSERT INTO toa_keytable VALUES ('249', '任务查看', 'office_duty_reda', '1', '1', '2', '4', '245');
INSERT INTO toa_keytable VALUES ('250', '任务日志', 'office_duty_sum', '1', '1', '2', '5', '245');
INSERT INTO toa_keytable VALUES ('251', '分类管理', 'office_document_type_1', '1', '1', '2', '6', '65');
INSERT INTO toa_keytable VALUES ('252', '允许', 'office_document_4', '1', '1', '1', '1', '108');
INSERT INTO toa_keytable VALUES ('253', '拒绝', 'office_document_4', '0', '2', '1', '2', '108');
INSERT INTO toa_keytable VALUES ('254', '允许', 'office_document_5', '1', '1', '1', '1', '113');
INSERT INTO toa_keytable VALUES ('255', '拒绝', 'office_document_5', '0', '2', '1', '2', '113');
INSERT INTO toa_keytable VALUES ('256', '允许', 'office_document_2', '1', '1', '1', '1', '125');
INSERT INTO toa_keytable VALUES ('257', '拒绝', 'office_document_2', '0', '2', '1', '2', '125');
INSERT INTO toa_keytable VALUES ('258', '允许', 'office_document_3', '1', '1', '1', '1', '130');
INSERT INTO toa_keytable VALUES ('259', '拒绝', 'office_document_3', '0', '2', '1', '2', '130');
INSERT INTO toa_keytable VALUES ('260', '允许', 'office_document_6', '1', '1', '1', '1', '135');
INSERT INTO toa_keytable VALUES ('261', '拒绝', 'office_document_6', '0', '2', '1', '2', '135');
INSERT INTO toa_keytable VALUES ('345', '删除投票', 'app_del', '1', '1', '2', '5', '234');
INSERT INTO toa_keytable VALUES ('370', '会议管理', 'excel_8', '1', '1', '2', '8', '358');
INSERT INTO toa_keytable VALUES ('371', '任务管理', 'excel_1', '1', '1', '2', '1', '358');
INSERT INTO toa_keytable VALUES ('372', '手机短信', 'excel_2', '1', '1', '2', '2', '358');
INSERT INTO toa_keytable VALUES ('373', '短消息', 'excel_3', '1', '1', '2', '3', '358');
INSERT INTO toa_keytable VALUES ('374', '日程安排', 'excel_4', '1', '1', '2', '4', '358');
INSERT INTO toa_keytable VALUES ('375', '工作日记', 'excel_5', '1', '1', '2', '5', '358');
INSERT INTO toa_keytable VALUES ('393', '考勤管理', 'excel_25', '1', '1', '2', '1', '362');
INSERT INTO toa_keytable VALUES ('398', '人事合同', 'excel_30', '1', '1', '2', '6', '362');
INSERT INTO toa_keytable VALUES ('399', '培训', 'excel_31', '1', '1', '2', '7', '362');
INSERT INTO toa_keytable VALUES ('400', '奖惩', 'excel_32', '1', '1', '2', '8', '362');
INSERT INTO toa_keytable VALUES ('407', '知识', 'excel_39', '1', '1', '2', '1', '366');
INSERT INTO toa_keytable VALUES ('408', '投票', 'excel_40', '1', '1', '2', '1', '366');
INSERT INTO toa_keytable VALUES ('409', '信息发布', 'excel_41', '0', '1', '2', '6', '361');
INSERT INTO toa_keytable VALUES ('410', '人事管理', '0', '0', '1', '1', '6', '192');
INSERT INTO toa_keytable VALUES ('411', '允许', 'human_list', '1', '1', '1', '1', '410');
INSERT INTO toa_keytable VALUES ('412', '禁止', 'human_list', '0', '1', '1', '2', '410');
INSERT INTO toa_keytable VALUES ('413', '人事管理', 'excel_50', '1', '1', '2', '9', '362');
INSERT INTO toa_keytable VALUES ('414', 'CRM系统', 'input_crm', '1', '1', '2', '3', '0');
INSERT INTO toa_keytable VALUES ('415', '客户管理', 'input_company', '1', '1', '2', '1', '414');
INSERT INTO toa_keytable VALUES ('416', '销售管理', 'input_offer', '1', '1', '2', '2', '414');
INSERT INTO toa_keytable VALUES ('417', '财务收支', 'input_price', '1', '1', '2', '3', '414');
INSERT INTO toa_keytable VALUES ('418', '采购管理', 'input_supplier', '1', '1', '2', '4', '414');
INSERT INTO toa_keytable VALUES ('419', '产品与库存', 'input_product', '1', '1', '2', '5', '414');
INSERT INTO toa_keytable VALUES ('420', '代理商管理', 'input_business', '1', '1', '2', '6', '414');
INSERT INTO toa_keytable VALUES ('421', '表单与流程设置', 'input_crmform', '1', '1', '2', '7', '414');
INSERT INTO toa_keytable VALUES ('422', '报表与统计', '0', '1', '1', '2', '8', '414');
INSERT INTO toa_keytable VALUES ('423', '允许', 'crm_charts', '1', '1', '1', '1', '422');
INSERT INTO toa_keytable VALUES ('424', '拒绝', 'crm_charts', '0', '1', '1', '2', '422');
INSERT INTO toa_keytable VALUES ('425', '表单管理', 'crm_form', '1', '1', '2', '999', '421');
INSERT INTO toa_keytable VALUES ('426', '流程管理', 'crm_flow', '1', '1', '2', '999', '421');
INSERT INTO toa_keytable VALUES ('427', '报价单管理', 'crm_offer', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('428', '报价单添加', 'crm_offer_add', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('429', '报价单编辑', 'crm_offer_edit', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('430', '报价单删除', 'crm_offer_del', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('431', '解决方案管理', 'crm_program', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('432', '解决方案添加', 'crm_program_add', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('433', '解决方案编辑', 'crm_program_edit', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('434', '解决方案删除', 'crm_program_del', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('435', '合同管理', 'crm_contract', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('436', '合同添加', 'crm_contract_add', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('437', '合同编辑', 'crm_contract_edit', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('438', '合同删除', 'crm_contract_del', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('439', '订单管理', 'crm_order', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('440', '订单添加', 'crm_order_add', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('441', '订单编辑', 'crm_order_edit', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('442', '订单删除', 'crm_order_del', '1', '1', '2', '999', '416');
INSERT INTO toa_keytable VALUES ('443', '代理商管理', 'crm_business', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('444', '代理商添加', 'crm_business_add', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('445', '代理商编辑', 'crm_business_edit', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('446', '代理商删除', 'crm_business_del', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('447', '联系人管理', 'crm_contact_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('448', '联系人添加', 'crm_contact_add_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('449', '联系人编辑', 'crm_contact_edit_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('450', '联系人删除', 'crm_contact_del_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('451', '客户投诉管理', 'crm_complaints_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('452', '客户投诉添加', 'crm_complaints_add_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('453', '客户投诉编辑', 'crm_complaints_edit_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('454', '客户投诉删除', 'crm_complaints_del_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('455', '客户关怀管理', 'crm_care_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('456', '客户关怀添加', 'crm_care_add_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('457', '客户关怀编辑', 'crm_care_edit_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('458', '客户关怀删除', 'crm_care_del_2', '1', '1', '2', '999', '420');
INSERT INTO toa_keytable VALUES ('459', '产品类别设置', 'crm_pord_type', '1', '1', '2', '999', '419');
INSERT INTO toa_keytable VALUES ('460', '产品信息管理', 'crm_product', '1', '1', '2', '999', '419');
INSERT INTO toa_keytable VALUES ('461', '库存管理', 'crm_stock', '1', '1', '2', '999', '419');
INSERT INTO toa_keytable VALUES ('462', '供应商管理', 'crm_supplier', '1', '1', '2', '999', '418');
INSERT INTO toa_keytable VALUES ('463', '供应商添加', 'crm_supplier_add', '1', '1', '2', '999', '418');
INSERT INTO toa_keytable VALUES ('464', '供应商编辑', 'crm_supplier_edit', '1', '1', '2', '999', '418');
INSERT INTO toa_keytable VALUES ('465', '供应商删除', 'crm_supplier_del', '1', '1', '2', '999', '418');
INSERT INTO toa_keytable VALUES ('466', '采购管理', 'crm_purchase', '1', '1', '2', '999', '418');
INSERT INTO toa_keytable VALUES ('467', '采购添加', 'crm_purchase_add', '1', '1', '2', '999', '418');
INSERT INTO toa_keytable VALUES ('468', '采购编辑', 'crm_purchase_edit', '1', '1', '2', '999', '418');
INSERT INTO toa_keytable VALUES ('469', '采购删除', 'crm_purchase_del', '1', '1', '2', '999', '418');
INSERT INTO toa_keytable VALUES ('470', '收款单管理', 'crm_price', '1', '1', '2', '999', '417');
INSERT INTO toa_keytable VALUES ('471', '收款单添加', 'crm_price_add', '1', '1', '2', '999', '417');
INSERT INTO toa_keytable VALUES ('472', '收款单编辑', 'crm_price_edit', '1', '1', '2', '999', '417');
INSERT INTO toa_keytable VALUES ('473', '收款单删除', 'crm_price_del', '1', '1', '2', '999', '417');
INSERT INTO toa_keytable VALUES ('474', '付款管理', 'crm_payment', '1', '1', '2', '999', '417');
INSERT INTO toa_keytable VALUES ('475', '付款添加', 'crm_payment_add', '1', '1', '2', '999', '417');
INSERT INTO toa_keytable VALUES ('476', '付款编辑', 'crm_payment_edit', '1', '1', '2', '999', '417');
INSERT INTO toa_keytable VALUES ('477', '付款删除', 'crm_payment_del', '1', '1', '2', '999', '417');
INSERT INTO toa_keytable VALUES ('478', '客户信息管理', 'crm_company', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('479', '客户信息添加', 'crm_company_add', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('480', '客户信息编辑', 'crm_company_edit', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('481', '客户信息删除', 'crm_company_del', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('482', '联系人管理', 'crm_contact_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('483', '联系人添加', 'crm_contact_add_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('484', '联系人编辑', 'crm_contact_edit_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('485', '联系人删除', 'crm_contact_del_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('486', '客户关怀管理', 'crm_care_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('487', '客户关怀添加', 'crm_care_add_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('488', '客户关怀编辑', 'crm_care_edit_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('489', '客户关怀删除', 'crm_care_del_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('490', '客户回访管理', 'crm_service', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('491', '客户回访添加', 'crm_service_add', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('492', '客户回访编辑', 'crm_service_edit', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('493', '客户回访删除', 'crm_service_del', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('494', '客户投诉管理', 'crm_complaints_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('495', '客户投诉添加', 'crm_complaints_add_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('496', '客户投诉编辑', 'crm_complaints_edit_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('497', '客户投诉删除', 'crm_complaints_del_1', '1', '1', '2', '999', '415');
INSERT INTO toa_keytable VALUES ('498', '报表导出权限', 'input_excel', '1', '1', '2', '999', '414');
INSERT INTO toa_keytable VALUES ('499', '客户信息', 'crm_company_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('500', '联系人', 'crm_contact_excel_1', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('501', '客户关怀', 'crm_care_excel_1', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('502', '客户回访', 'crm_service_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('503', '客户投诉', 'crm_complaints_excel_1', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('504', '报价单', 'crm_offer_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('505', '解决方案', 'crm_program_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('506', '合同', 'crm_contract_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('507', '订单', 'crm_order_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('508', '收款单', 'crm_price_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('509', '付款', 'crm_payment_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('510', '供应商', 'crm_supplier_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('511', '采购', 'crm_purchase_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('512', '产品信息', 'crm_product_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('513', '库存', 'crm_stock_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('514', '代理商', 'crm_business_excel', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('515', '联系人[代理商]', 'crm_contact_excel_2', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('516', '客户投诉[代理商]', 'crm_complaints_excel_2', '1', '1', '2', '999', '498');
INSERT INTO toa_keytable VALUES ('517', '客户关怀[代理商]', 'crm_care_excel_2', '1', '1', '2', '999', '498');

-- ----------------------------
-- Table structure for `toa_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `toa_knowledge`;
CREATE TABLE `toa_knowledge` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL,
  `content` text,
  `number` int(10) DEFAULT NULL,
  `categoryid` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `appendix` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `toa_loginlog`;
CREATE TABLE `toa_loginlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `logindate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_loginlog
-- ----------------------------
INSERT INTO toa_loginlog VALUES ('1', '1', 'admin', '127.0.0.1', '2015-11-17 20:18:11', '2015-11-17 20:18:11');

-- ----------------------------
-- Table structure for `toa_mailsignature`
-- ----------------------------
DROP TABLE IF EXISTS `toa_mailsignature`;
CREATE TABLE `toa_mailsignature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_mailsignature
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_menu`
-- ----------------------------
DROP TABLE IF EXISTS `toa_menu`;
CREATE TABLE `toa_menu` (
  `menuid` int(10) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(255) DEFAULT NULL,
  `menuurl` varchar(255) DEFAULT NULL,
  `fatherid` varchar(10) DEFAULT NULL,
  `menutype` varchar(10) DEFAULT NULL,
  `menunum` int(25) DEFAULT '9999',
  `menukey` varchar(10) DEFAULT NULL,
  `keytable` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=MyISAM AUTO_INCREMENT=304 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_menu
-- ----------------------------
INSERT INTO toa_menu VALUES ('3', '个人办公', 'home.php?mid=3', '0', '0', '1', '1', 'myuser_');
INSERT INTO toa_menu VALUES ('9', '知识交流', 'home.php?mid=9', '0', '0', '9', '1', 'input_knowledge');
INSERT INTO toa_menu VALUES ('10', '行政办公', 'home.php?mid=10', '0', '0', '4', '1', 'mana_');
INSERT INTO toa_menu VALUES ('11', '人力资源', 'home.php?mid=11', '0', '0', '5', '1', 'input_job');
INSERT INTO toa_menu VALUES ('17', '短消息', 'admin.php?ac=receive&fileurl=sms', '3', '2', '4', '0', 'office_info');
INSERT INTO toa_menu VALUES ('18', '手机短信', 'admin.php?ac=smsindex&fileurl=sms', '3', '2', '3', '0', 'office_sms');
INSERT INTO toa_menu VALUES ('19', '在线考勤', 'admin.php?ac=registration&fileurl=workbench', '3', '2', '1', '0', '');
INSERT INTO toa_menu VALUES ('20', '日程安排', 'admin.php?ac=workdate&fileurl=workbench', '3', '2', '5', '0', 'date_workdate');
INSERT INTO toa_menu VALUES ('21', '工作日志', 'admin.php?ac=blog&fileurl=workbench', '3', '2', '6', '0', 'date_blog');
INSERT INTO toa_menu VALUES ('22', '工作计划', 'admin.php?ac=plan&fileurl=workbench', '3', '2', '7', '0', 'date_plan');
INSERT INTO toa_menu VALUES ('23', '通迅录', 'admin.php?ac=index&fileurl=communication&type=1', '3', '2', '9', '', 'office_communication');
INSERT INTO toa_menu VALUES ('24', '个人文件柜', 'admin.php?ac=document&fileurl=knowledge&type=1', '3', '2', '8', '0', 'office_document_1');
INSERT INTO toa_menu VALUES ('25', '会议管理', 'admin.php?ac=conference&fileurl=administrative', '3', '2', '10', '0', '');
INSERT INTO toa_menu VALUES ('26', '新闻', 'admin.php?ac=news&fileurl=workbench&type=1', '3', '2', '14', '0', '');
INSERT INTO toa_menu VALUES ('27', '公告', 'admin.php?ac=news&fileurl=workbench&type=3', '3', '2', '11', '0', '');
INSERT INTO toa_menu VALUES ('28', '通知', 'admin.php?ac=news&fileurl=workbench&type=4', '3', '2', '12', '0', '');
INSERT INTO toa_menu VALUES ('29', '大事记', 'admin.php?ac=news&fileurl=workbench&type=5', '3', '2', '13', '0', '');
INSERT INTO toa_menu VALUES ('30', '电子期刊', 'admin.php?ac=news&fileurl=workbench&type=6', '3', '2', '15', '0', '');
INSERT INTO toa_menu VALUES ('31', '任务管理', 'admin.php?ac=duty&fileurl=duty', '3', '2', '2', '0', 'office_duty');
INSERT INTO toa_menu VALUES ('57', '个人设置', 'admin.php?ac=user&fileurl=member', '3', '0', '11', '', '');
INSERT INTO toa_menu VALUES ('58', '系统设置', 'home.php?mid=58', '0', '0', '12', '', 'config_');
INSERT INTO toa_menu VALUES ('64', '知识管理', 'admin.php?ac=know&fileurl=knowledge', '9', '2', '1', '', 'knowledge_');
INSERT INTO toa_menu VALUES ('65', '下载管理', 'admin.php?ac=document&fileurl=knowledge&type=4', '9', '2', '3', '', 'office_document_4');
INSERT INTO toa_menu VALUES ('66', '规章制度', 'admin.php?ac=document&fileurl=knowledge&type=5', '9', '2', '6', '', 'office_document_5');
INSERT INTO toa_menu VALUES ('67', '电子期刊', 'admin.php?ac=news&fileurl=administrative&type=6', '9', '2', '7', '', 'news_periodical');
INSERT INTO toa_menu VALUES ('68', '大事记管理', 'admin.php?ac=news&fileurl=administrative&type=5', '10', '2', '5', '', 'news_chronicle');
INSERT INTO toa_menu VALUES ('69', '新闻管理', 'admin.php?ac=news&fileurl=administrative&type=1', '10', '2', '4', '', 'news_new');
INSERT INTO toa_menu VALUES ('70', '通知管理', 'admin.php?ac=news&fileurl=administrative&type=4', '10', '2', '3', '', 'news_notice');
INSERT INTO toa_menu VALUES ('71', '公告管理', 'admin.php?ac=news&fileurl=administrative&type=3', '10', '2', '2', '', 'news_cement');
INSERT INTO toa_menu VALUES ('75', '会议申请及安排', 'admin.php?ac=conference&fileurl=administrative', '10', '0', '6', '0', 'istration_conference');
INSERT INTO toa_menu VALUES ('80', '人事合同', 'admin.php?ac=humancontract&fileurl=human', '11', '2', '2', '0', 'humancontract_');
INSERT INTO toa_menu VALUES ('82', '培训管理', 'admin.php?ac=training&fileurl=human', '11', '2', '3', '0', 'training_');
INSERT INTO toa_menu VALUES ('83', '奖惩记录', 'admin.php?ac=rewards&fileurl=human', '11', '2', '4', '0', 'rewards_');
INSERT INTO toa_menu VALUES ('84', '考勤管理', 'admin.php?ac=registration&fileurl=human', '11', '2', '1', '', 'registration_');
INSERT INTO toa_menu VALUES ('86', '个人信息', 'admin.php?ac=user&fileurl=member', '57', '2', '1', '', '');
INSERT INTO toa_menu VALUES ('87', '密码修改', 'admin.php?ac=password&fileurl=member', '57', '2', '2', '', '');
INSERT INTO toa_menu VALUES ('88', '个人收藏', 'admin.php?ac=eweb&fileurl=member', '57', '2', '3', '', '');
INSERT INTO toa_menu VALUES ('89', '个人系统日志', 'admin.php?ac=log&fileurl=member', '57', '2', '4', '', '');
INSERT INTO toa_menu VALUES ('90', '系统设置', 'admin.php?ac=config&fileurl=mana', '58', '2', '1', '', 'config_inc');
INSERT INTO toa_menu VALUES ('91', '权限设置', 'admin.php?ac=usergroup&fileurl=mana', '58', '2', '2', '', 'config_usergroup');
INSERT INTO toa_menu VALUES ('92', '账户设置', 'admin.php?ac=user&fileurl=mana', '58', '2', '5', '', 'config_user');
INSERT INTO toa_menu VALUES ('93', '系统维护', 'admin.php?ac=log&fileurl=mana', '58', '2', '8', '', 'config_log');
INSERT INTO toa_menu VALUES ('94', '数据备份', 'admin.php?ac=data&fileurl=mana', '58', '2', '9', '', 'config_db');
INSERT INTO toa_menu VALUES ('96', '论坛', 'admin.php?ac=bbs&fileurl=knowledge', '9', '2', '2', '0', 'input_bbs');
INSERT INTO toa_menu VALUES ('97', '投票', 'admin.php?ac=app&fileurl=knowledge', '10', '2', '1', '0', 'app_');
INSERT INTO toa_menu VALUES ('107', '公共文件柜', 'admin.php?ac=document&fileurl=knowledge&type=2', '9', '2', '4', '', 'office_document_2');
INSERT INTO toa_menu VALUES ('109', '网络硬盘', 'admin.php?ac=document&fileurl=knowledge&type=3', '9', '2', '5', '', 'office_document_3');
INSERT INTO toa_menu VALUES ('110', '报表管理', 'admin.php?ac=document&fileurl=knowledge&type=6', '9', '2', '8', '', 'office_document_6');
INSERT INTO toa_menu VALUES ('111', '菜单设置', 'admin.php?ac=menu&fileurl=mana', '58', '2', '6', '', 'config_menu');
INSERT INTO toa_menu VALUES ('128', '权限管理', 'admin.php?ac=keytable&fileurl=mana', '58', '2', '7', '0', 'config_keytable');
INSERT INTO toa_menu VALUES ('133', '基础类别设置', 'admin.php?ac=type&fileurl=office&otype=9&muid=133&numberid=134', '11', '0', '8', '0', 'office_type_r');
INSERT INTO toa_menu VALUES ('139', '人事合同类型', 'admin.php?ac=officeclass&fileurl=mana&do=bbsclass&otype=14', '133', '0', '6', '0', 'office_type_r');
INSERT INTO toa_menu VALUES ('140', '人事合同状态', 'admin.php?ac=officeclass&fileurl=mana&do=bbsclass&otype=15', '133', '0', '7', '0', 'office_type_r');
INSERT INTO toa_menu VALUES ('145', '招聘渠道', 'admin.php?ac=officeclass&fileurl=mana&do=bbsclass&otype=16', '133', '0', '8', '0', 'office_type_r');
INSERT INTO toa_menu VALUES ('146', '培训类型', 'admin.php?ac=officeclass&fileurl=mana&do=bbsclass&otype=17', '133', '0', '9', '0', 'office_type_r');
INSERT INTO toa_menu VALUES ('147', '培训形式', 'admin.php?ac=officeclass&fileurl=mana&do=bbsclass&otype=18', '133', '0', '10', '0', 'office_type_r');
INSERT INTO toa_menu VALUES ('148', '奖惩项目', 'admin.php?ac=officeclass&fileurl=mana&do=bbsclass&otype=19', '133', '0', '11', '0', 'office_type_r');
INSERT INTO toa_menu VALUES ('149', '论坛版块设置', 'admin.php?ac=bbs&do=bbsclass&fileurl=knowledge', '96', '0', '4', '0', 'bbsclass_');
INSERT INTO toa_menu VALUES ('150', '贴子列表', 'admin.php?ac=bbs&fileurl=knowledge', '96', '0', '2', '0', 'bbs_');
INSERT INTO toa_menu VALUES ('151', '发布贴子', 'admin.php?ac=bbs&do=add&fileurl=knowledge', '96', '0', '1', '0', 'bbs_add');
INSERT INTO toa_menu VALUES ('152', '贴子审批', 'admin.php?ac=bbs&fileurl=knowledge&ischeck=2', '96', '0', '3', '0', 'bbs_key');
INSERT INTO toa_menu VALUES ('197', '部门设置', 'admin.php?ac=department&fileurl=mana', '58', '2', '3', '0', 'department_');
INSERT INTO toa_menu VALUES ('198', '岗位设置', 'admin.php?ac=position&fileurl=mana', '58', '2', '4', '0', 'position_');
INSERT INTO toa_menu VALUES ('218', '会议室设置', 'admin.php?ac=officeclass&fileurl=mana&do=bbsclass&otype=1', '75', '2', '3', '0', 'istration_conference_type_sce');
INSERT INTO toa_menu VALUES ('219', '会议列表及审批', 'admin.php?ac=conference&fileurl=administrative', '75', '2', '2', '0', 'istration_conference_Increase');
INSERT INTO toa_menu VALUES ('220', '会议申请', 'admin.php?ac=conference&fileurl=administrative&do=add', '75', '2', '1', '0', 'istration_conference_Increase');
INSERT INTO toa_menu VALUES ('221', '会议类别设置', 'admin.php?ac=officeclass&fileurl=mana&do=bbsclass&otype=2', '75', '2', '4', '0', 'istration_conference_type_type');
INSERT INTO toa_menu VALUES ('234', '学历', 'admin.php?ac=officeclass&fileurl=mana&do=bbsclass&otype=10', '133', '0', '12', '0', 'office_type_r');
INSERT INTO toa_menu VALUES ('237', '人事管理', 'admin.php?ac=humanlist&fileurl=human&type=1', '11', '2', '7', '0', 'human_list');
INSERT INTO toa_menu VALUES ('238', '员工关怀', 'admin.php?ac=humanlist&fileurl=human&type=10', '237', '2', '10', '0', 'human_list');
INSERT INTO toa_menu VALUES ('239', '职称评定', 'admin.php?ac=humanlist&fileurl=human&type=9', '237', '2', '9', '0', 'human_list');
INSERT INTO toa_menu VALUES ('240', '复职管理', 'admin.php?ac=humanlist&fileurl=human&type=8', '237', '2', '8', '0', 'human_list');
INSERT INTO toa_menu VALUES ('241', '人事调动', 'admin.php?ac=humanlist&fileurl=human&type=7', '237', '2', '7', '0', 'human_list');
INSERT INTO toa_menu VALUES ('242', '社会关系', 'admin.php?ac=humanlist&fileurl=human&type=6', '237', '2', '6', '0', 'human_list');
INSERT INTO toa_menu VALUES ('243', '劳动技能', 'admin.php?ac=humanlist&fileurl=human&type=5', '237', '2', '5', '0', 'human_list');
INSERT INTO toa_menu VALUES ('244', '工作经历', 'admin.php?ac=humanlist&fileurl=human&type=4', '237', '2', '4', '0', 'human_list');
INSERT INTO toa_menu VALUES ('245', '学习经历', 'admin.php?ac=humanlist&fileurl=human&type=3', '237', '2', '3', '0', 'human_list');
INSERT INTO toa_menu VALUES ('246', '证照管理', 'admin.php?ac=humanlist&fileurl=human&type=2', '237', '2', '2', '0', 'human_list');
INSERT INTO toa_menu VALUES ('247', '人事档案管理', 'admin.php?ac=humanlist&fileurl=human&type=1', '237', '2', '1', '0', 'human_list');
INSERT INTO toa_menu VALUES ('248', '人事表单设置', 'admin.php?ac=human_form&fileurl=human&type1=1', '133', '0', '1', '0', 'office_type_r');
INSERT INTO toa_menu VALUES ('49', '产品与库存', 'admin.php?ac=crm_product&fileurl=crm', '7', '0', '5', '0', 'input_product');
INSERT INTO toa_menu VALUES ('286', '联系人', 'admin.php?ac=contact&fileurl=crm&type=2', '54', '0', '2', '0', 'crm_contact_2');
INSERT INTO toa_menu VALUES ('47', '销售管理', 'admin.php?ac=offer&fileurl=crm', '7', '0', '2', '0', 'input_offer');
INSERT INTO toa_menu VALUES ('46', '客户管理', 'admin.php?ac=company&fileurl=crm', '7', '0', '1', '0', 'input_company');
INSERT INTO toa_menu VALUES ('50', '采购管理', 'admin.php?ac=purchase&fileurl=crm', '7', '0', '4', '0', 'input_supplier');
INSERT INTO toa_menu VALUES ('7', 'CRM系统', 'home.php?mid=7', '0', '0', '3', '1', 'input_crm');
INSERT INTO toa_menu VALUES ('54', '代理商管理', 'admin.php?ac=business&fileurl=crm', '7', '0', '6', '0', 'input_business');
INSERT INTO toa_menu VALUES ('55', '财务收支', 'admin.php?ac=price&fileurl=crm', '7', '0', '3', '0', 'input_price');
INSERT INTO toa_menu VALUES ('156', '表单与流程设置', 'admin.php?ac=form&fileurl=crm', '7', '0', '8', '0', 'input_crmform');
INSERT INTO toa_menu VALUES ('157', '联系人', 'admin.php?ac=contact&fileurl=crm', '46', '2', '2', '0', 'crm_contact_1');
INSERT INTO toa_menu VALUES ('158', '客户关怀', 'admin.php?ac=care&fileurl=crm', '46', '2', '3', '0', 'crm_care_1');
INSERT INTO toa_menu VALUES ('159', '客户投诉', 'admin.php?ac=complaints&fileurl=crm', '46', '2', '5', '0', 'crm_complaints_1');
INSERT INTO toa_menu VALUES ('160', '报价单', 'admin.php?ac=offer&fileurl=crm', '47', '2', '1', '0', 'crm_offer');
INSERT INTO toa_menu VALUES ('161', '解决方案', 'admin.php?ac=program&fileurl=crm', '47', '2', '2', '0', 'crm_program');
INSERT INTO toa_menu VALUES ('162', '订单', 'admin.php?ac=order&fileurl=crm', '47', '2', '4', '0', 'crm_order');
INSERT INTO toa_menu VALUES ('163', '产品分类设置', 'admin.php?ac=prod&fileurl=crm&do=class', '49', '0', '1', '0', 'crm_pord_type');
INSERT INTO toa_menu VALUES ('164', '产品信息管理', 'admin.php?ac=prod&fileurl=crm', '49', '2', '2', '0', 'crm_product');
INSERT INTO toa_menu VALUES ('165', '供应商管理', 'admin.php?ac=supplier&fileurl=crm', '50', '2', '1', '0', 'crm_supplier');
INSERT INTO toa_menu VALUES ('166', '采购管理', 'admin.php?ac=purchase&fileurl=crm', '50', '2', '2', '0', 'crm_purchase');
INSERT INTO toa_menu VALUES ('287', '代理商投诉', 'admin.php?ac=complaints&fileurl=crm&type=2', '54', '2', '3', '0', 'crm_complaints_2');
INSERT INTO toa_menu VALUES ('288', '代理商信息', 'admin.php?ac=business&fileurl=crm', '54', '2', '1', '0', 'crm_business');
INSERT INTO toa_menu VALUES ('289', '客户关怀', 'admin.php?ac=care&fileurl=crm&type=2', '54', '0', '4', '0', 'crm_care_2');
INSERT INTO toa_menu VALUES ('171', '客户信息', 'admin.php?ac=company&fileurl=crm', '46', '2', '1', '0', 'crm_company');
INSERT INTO toa_menu VALUES ('172', '客户回访', 'admin.php?ac=service&fileurl=crm', '46', '2', '4', '0', 'crm_service');
INSERT INTO toa_menu VALUES ('173', '合同', 'admin.php?ac=contract&fileurl=crm', '47', '2', '3', '0', 'crm_contract');
INSERT INTO toa_menu VALUES ('290', '收款单', 'admin.php?ac=price&fileurl=crm', '55', '2', '1', '0', 'crm_price');
INSERT INTO toa_menu VALUES ('285', '库存管理', 'admin.php?ac=stock&fileurl=crm', '49', '2', '3', '0', 'crm_stock');
INSERT INTO toa_menu VALUES ('291', '付款单', 'admin.php?ac=payment&fileurl=crm', '55', '2', '2', '0', 'crm_payment');
INSERT INTO toa_menu VALUES ('292', '表单设置', 'admin.php?ac=form&fileurl=crm', '156', '0', '1', '0', 'crm_form');
INSERT INTO toa_menu VALUES ('293', '流程设置', 'admin.php?ac=flow&fileurl=crm', '156', '0', '2', '0', 'crm_flow');
INSERT INTO toa_menu VALUES ('294', '报表与统计', 'admin.php?ac=charts&fileurl=crm', '7', '0', '7', '0', 'crm_charts');
INSERT INTO toa_menu VALUES ('303', '内部邮件', 'admin.php?ac=email&fileurl=email', '3', '0', '2', '0', null);
INSERT INTO toa_menu VALUES ('235', '印鉴管理', 'admin.php?ac=seal&fileurl=member', '57', '2', '5', '0', '');
INSERT INTO toa_menu VALUES ('236', '红头文件管理', 'admin.php?ac=hongtou&fileurl=member', '57', '2', '999', '0', '');

-- ----------------------------
-- Table structure for `toa_news`
-- ----------------------------
DROP TABLE IF EXISTS `toa_news`;
CREATE TABLE `toa_news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(10) DEFAULT NULL,
  `receive` text,
  `phonereceive` varchar(200) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` text,
  `appendix` varchar(120) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `pic` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_news
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_news_read`
-- ----------------------------
DROP TABLE IF EXISTS `toa_news_read`;
CREATE TABLE `toa_news_read` (
  `rid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(30) DEFAULT NULL,
  `disdate` datetime DEFAULT NULL,
  `viewdate` datetime DEFAULT NULL,
  `evaluation` varchar(200) DEFAULT NULL,
  `dkey` varchar(10) DEFAULT NULL,
  `newsid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_news_read
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_news_type`
-- ----------------------------
DROP TABLE IF EXISTS `toa_news_type`;
CREATE TABLE `toa_news_type` (
  `nid` int(10) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(60) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `ntype` varchar(10) DEFAULT NULL,
  `ndate` datetime DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_news_type
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_ntkohtmlfile`
-- ----------------------------
DROP TABLE IF EXISTS `toa_ntkohtmlfile`;
CREATE TABLE `toa_ntkohtmlfile` (
  `id` mediumint(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(256) DEFAULT NULL,
  `filepath` varchar(256) DEFAULT NULL,
  `filesize` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_ntkohtmlfile
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_ntkoofficefile`
-- ----------------------------
DROP TABLE IF EXISTS `toa_ntkoofficefile`;
CREATE TABLE `toa_ntkoofficefile` (
  `id` mediumint(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(256) DEFAULT NULL,
  `filesize` mediumint(10) DEFAULT NULL,
  `otherdata` varchar(128) DEFAULT NULL,
  `filetype` varchar(64) DEFAULT NULL,
  `filenamedisk` varchar(256) DEFAULT NULL,
  `attachfilenamedisk` varchar(256) DEFAULT NULL,
  `attachfiledescribe` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_ntkoofficefile
-- ----------------------------
INSERT INTO toa_ntkoofficefile VALUES ('5', 'Tscx178888.doc', '54784', '', 'Word.Document', 'Tscx178888.doc', '', '');
INSERT INTO toa_ntkoofficefile VALUES ('4', 'Tscx118892.xls', '17920', '', 'Excel.Sheet', 'Tscx118892.xls', '', '');
INSERT INTO toa_ntkoofficefile VALUES ('3', 'Tscx128893.xls', '19968', '', 'Excel.Sheet', 'Tscx128893.xls', '', '');
INSERT INTO toa_ntkoofficefile VALUES ('2', 'Tscx128894.xls', '18944', '', 'Excel.Sheet', 'Tscx128894.xls', '', '');
INSERT INTO toa_ntkoofficefile VALUES ('1', 'Tscx198900.xls', '17920', '', 'Excel.Sheet', 'Tscx198900.xls', '', '');

-- ----------------------------
-- Table structure for `toa_ntkopdffile`
-- ----------------------------
DROP TABLE IF EXISTS `toa_ntkopdffile`;
CREATE TABLE `toa_ntkopdffile` (
  `id` mediumint(10) NOT NULL AUTO_INCREMENT,
  `pdffilename` varchar(256) DEFAULT NULL,
  `pdffilepath` varchar(256) DEFAULT NULL,
  `filesize` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_ntkopdffile
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_oalog`
-- ----------------------------
DROP TABLE IF EXISTS `toa_oalog`;
CREATE TABLE `toa_oalog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) DEFAULT NULL,
  `content` text,
  `title` varchar(255) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `contentid` varchar(20) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_oalog
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_office_type`
-- ----------------------------
DROP TABLE IF EXISTS `toa_office_type`;
CREATE TABLE `toa_office_type` (
  `oid` int(10) NOT NULL AUTO_INCREMENT,
  `oname` varchar(255) DEFAULT NULL,
  `otype` varchar(10) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_office_type
-- ----------------------------
INSERT INTO toa_office_type VALUES ('54', '劳务合同', '14', '1');
INSERT INTO toa_office_type VALUES ('55', '保密合同', '14', '1');
INSERT INTO toa_office_type VALUES ('56', '其它', '14', '1');
INSERT INTO toa_office_type VALUES ('57', '试用期', '15', '1');
INSERT INTO toa_office_type VALUES ('58', '己转证', '15', '1');
INSERT INTO toa_office_type VALUES ('59', '己解除', '15', '1');
INSERT INTO toa_office_type VALUES ('60', '网络招聘', '16', '1');
INSERT INTO toa_office_type VALUES ('61', '招聘会', '16', '1');
INSERT INTO toa_office_type VALUES ('62', '职介', '16', '1');
INSERT INTO toa_office_type VALUES ('63', '内部培训', '17', '1');
INSERT INTO toa_office_type VALUES ('64', '外部培训', '17', '1');
INSERT INTO toa_office_type VALUES ('65', '面授', '18', '1');
INSERT INTO toa_office_type VALUES ('66', '涵受', '18', '1');
INSERT INTO toa_office_type VALUES ('67', '其它', '18', '1');
INSERT INTO toa_office_type VALUES ('68', '迟到', '19', '1');
INSERT INTO toa_office_type VALUES ('69', '早退', '19', '1');
INSERT INTO toa_office_type VALUES ('70', '工作原因', '19', '1');
INSERT INTO toa_office_type VALUES ('71', '错误处份', '19', '1');
INSERT INTO toa_office_type VALUES ('72', '业绩奖励', '19', '1');
INSERT INTO toa_office_type VALUES ('73', '奖金', '19', '1');

-- ----------------------------
-- Table structure for `toa_online`
-- ----------------------------
DROP TABLE IF EXISTS `toa_online`;
CREATE TABLE `toa_online` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `startdate` datetime DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_online
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_phone_channel`
-- ----------------------------
DROP TABLE IF EXISTS `toa_phone_channel`;
CREATE TABLE `toa_phone_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `connection` text,
  `remainsum` varchar(30) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `connectionid` varchar(255) DEFAULT NULL,
  `pkey` varchar(5) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `toaid` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_phone_channel
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_phone_receive`
-- ----------------------------
DROP TABLE IF EXISTS `toa_phone_receive`;
CREATE TABLE `toa_phone_receive` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) DEFAULT NULL,
  `sendphone` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_phone_receive
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_phone_send`
-- ----------------------------
DROP TABLE IF EXISTS `toa_phone_send`;
CREATE TABLE `toa_phone_send` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) DEFAULT NULL,
  `receivephone` varchar(30) DEFAULT NULL,
  `sendperson` varchar(10) DEFAULT NULL,
  `receiveperson` varchar(30) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `channelid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_phone_send
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_plan`
-- ----------------------------
DROP TABLE IF EXISTS `toa_plan`;
CREATE TABLE `toa_plan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL,
  `content` text,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `otype` varchar(10) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `participation` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `completiondate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_plan
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `toa_plugin`;
CREATE TABLE `toa_plugin` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `company` varchar(32) DEFAULT NULL,
  `version` varchar(16) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `filename` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10018 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_plugin
-- ----------------------------
INSERT INTO toa_plugin VALUES ('10001', '工作流', 'PHPOA', 'v4.0', null, null, '1', 'workclass');
INSERT INTO toa_plugin VALUES ('10002', 'CRM系统', 'PHPOA', 'v2.0', '2015-11-17 20:19:23', null, '2', 'crm');
INSERT INTO toa_plugin VALUES ('10003', '办公用品', 'PHPOA', 'v2.0', null, null, '1', 'goods');
INSERT INTO toa_plugin VALUES ('10004', '图书管理', 'PHPOA', 'v2.0', null, null, '1', 'book');
INSERT INTO toa_plugin VALUES ('10005', '固定资产', 'PHPOA', 'v2.0', null, null, '1', 'property');
INSERT INTO toa_plugin VALUES ('10006', '招聘管理', 'PHPOA', 'v2.0', null, null, '1', 'jobs');
INSERT INTO toa_plugin VALUES ('10007', '人事管理', 'PHPOA', 'v2.0', '2015-11-17 20:18:50', null, '2', 'human');
INSERT INTO toa_plugin VALUES ('10009', '档案系统', 'PHPOA', 'v2.0', null, null, '1', 'file');
INSERT INTO toa_plugin VALUES ('10010', '项目管理', 'PHPOA', 'v2.0', null, null, '1', 'project');
INSERT INTO toa_plugin VALUES ('10011', '薪资管理', 'PHPOA', 'v1.0', null, null, '1', 'wage');
INSERT INTO toa_plugin VALUES ('10012', '手机管理', 'PHPOA', 'v2.0', null, null, '1', 'm');
INSERT INTO toa_plugin VALUES ('10013', 'OFFICE电子签章', '重庆软航', '暂无', '2015-11-17 20:19:53', null, '2', 'ntko');
INSERT INTO toa_plugin VALUES ('10014', '内部邮件', 'PHPOA', 'v1.0', '2015-11-17 20:19:43', null, '2', 'email');
INSERT INTO toa_plugin VALUES ('10015', '车辆管理', 'PHPOA', 'v1.0', null, null, '1', 'auto');
INSERT INTO toa_plugin VALUES ('10016', '公文系统', 'PHPOA', 'v4.0', null, null, '1', 'apps');
INSERT INTO toa_plugin VALUES ('10017', '企业微信', 'PHPOA', 'v1.0', null, null, '1', 'weixin');

-- ----------------------------
-- Table structure for `toa_popmail`
-- ----------------------------
DROP TABLE IF EXISTS `toa_popmail`;
CREATE TABLE `toa_popmail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pop3` varchar(32) DEFAULT NULL,
  `smtp` varchar(32) DEFAULT NULL,
  `pop3num` varchar(16) DEFAULT NULL,
  `smtpnum` varchar(16) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `mail` varchar(64) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_popmail
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_position`
-- ----------------------------
DROP TABLE IF EXISTS `toa_position`;
CREATE TABLE `toa_position` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `father` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_position
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_recemail`
-- ----------------------------
DROP TABLE IF EXISTS `toa_recemail`;
CREATE TABLE `toa_recemail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `receuser` varchar(16) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `appendix` text,
  `content` text,
  `type` varchar(2) DEFAULT NULL,
  `typeid` varchar(16) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `sendid` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_recemail
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_registration`
-- ----------------------------
DROP TABLE IF EXISTS `toa_registration`;
CREATE TABLE `toa_registration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `year` varchar(8) NOT NULL,
  `month` varchar(8) NOT NULL,
  `day` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_registration
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_registration_log`
-- ----------------------------
DROP TABLE IF EXISTS `toa_registration_log`;
CREATE TABLE `toa_registration_log` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` varchar(16) DEFAULT NULL,
  `hour` varchar(16) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `number` varchar(16) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_registration_log
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_rewards`
-- ----------------------------
DROP TABLE IF EXISTS `toa_rewards`;
CREATE TABLE `toa_rewards` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `project` varchar(10) DEFAULT NULL,
  `rewardsdate` varchar(30) DEFAULT NULL,
  `wagesmonth` varchar(30) DEFAULT NULL,
  `rewardskey` varchar(10) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_rewards
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_seal`
-- ----------------------------
DROP TABLE IF EXISTS `toa_seal`;
CREATE TABLE `toa_seal` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sealurl` varchar(255) DEFAULT NULL,
  `sealtitle` varchar(255) DEFAULT NULL,
  `uid` varchar(16) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `unionid` varchar(16) NOT NULL,
  `sealtype` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_seal
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_sendmail`
-- ----------------------------
DROP TABLE IF EXISTS `toa_sendmail`;
CREATE TABLE `toa_sendmail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `receuser` text,
  `ccuser` text,
  `bssuser` text,
  `webuser` text,
  `user` varchar(16) DEFAULT NULL,
  `appendix` text,
  `content` text,
  `type` varchar(2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_sendmail
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_session`
-- ----------------------------
DROP TABLE IF EXISTS `toa_session`;
CREATE TABLE `toa_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned DEFAULT '0',
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT '',
  `groupid` smallint(5) unsigned DEFAULT '3',
  `ip` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_session
-- ----------------------------
INSERT INTO toa_session VALUES ('1', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('2', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('3', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('4', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('5', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('6', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('7', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('8', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('9', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('10', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('11', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('12', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('13', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('14', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('15', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('16', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('17', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('18', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('19', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('20', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('21', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('22', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('23', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('24', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('25', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('26', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('27', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('28', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('29', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('30', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('31', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('32', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('33', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('34', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('35', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('36', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('37', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('38', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('39', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('40', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('41', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('42', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('43', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('44', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('45', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('46', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('47', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('48', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('49', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('50', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('51', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('52', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('53', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('54', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('55', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('56', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('57', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('58', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('59', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('60', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('61', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('62', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('63', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('64', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('65', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('66', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('67', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('68', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('69', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('70', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('71', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('72', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('73', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('74', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('75', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('76', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('77', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('78', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('79', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('80', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('81', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('82', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('83', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('84', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('85', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('86', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('87', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('88', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('89', '0', null, '', '3', '0');
INSERT INTO toa_session VALUES ('90', '0', null, '', '3', '0');

-- ----------------------------
-- Table structure for `toa_sms_receive`
-- ----------------------------
DROP TABLE IF EXISTS `toa_sms_receive`;
CREATE TABLE `toa_sms_receive` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sendperson` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `content` text,
  `receiveperson` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `smskey` varchar(10) DEFAULT NULL,
  `readdate` datetime DEFAULT NULL,
  `sendid` varchar(10) DEFAULT NULL,
  `online` varchar(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_sms_receive
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_sms_send`
-- ----------------------------
DROP TABLE IF EXISTS `toa_sms_send`;
CREATE TABLE `toa_sms_send` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `receiveperson` text,
  `content` text,
  `uid` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_sms_send
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_training`
-- ----------------------------
DROP TABLE IF EXISTS `toa_training`;
CREATE TABLE `toa_training` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `channel` varchar(10) DEFAULT NULL,
  `trform` varchar(10) DEFAULT NULL,
  `sponsor` varchar(255) DEFAULT NULL,
  `responsible` varchar(255) DEFAULT NULL,
  `participation` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `orgperson` varchar(255) DEFAULT NULL,
  `curriculum` varchar(255) DEFAULT NULL,
  `classhour` varchar(30) DEFAULT NULL,
  `startdate` varchar(30) DEFAULT NULL,
  `enddate` varchar(30) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `examination` varchar(255) DEFAULT NULL,
  `examinationdate` datetime DEFAULT NULL,
  `department` text,
  `user` text,
  `organizationinfo` text,
  `contactperson` text,
  `request` text,
  `appendix` varchar(255) DEFAULT NULL,
  `content` text,
  `type` varchar(10) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_training
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_training_record`
-- ----------------------------
DROP TABLE IF EXISTS `toa_training_record`;
CREATE TABLE `toa_training_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `trainingid` varchar(20) DEFAULT NULL,
  `price` varchar(60) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `training` varchar(30) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_training_record
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_upload`
-- ----------------------------
DROP TABLE IF EXISTS `toa_upload`;
CREATE TABLE `toa_upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `originalname` varchar(100) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `filetype` varchar(50) NOT NULL DEFAULT '',
  `fileext` char(10) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_upload
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_user`
-- ----------------------------
DROP TABLE IF EXISTS `toa_user`;
CREATE TABLE `toa_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `departmentid` varchar(10) DEFAULT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ischeck` varchar(2) DEFAULT NULL,
  `userkey` varchar(20) DEFAULT NULL,
  `groupid` varchar(2) DEFAULT NULL,
  `positionid` varchar(20) DEFAULT NULL,
  `loginip` text,
  `online` varchar(2) DEFAULT '0',
  `keytype` varchar(2) DEFAULT NULL,
  `keytypeuser` text,
  `numbers` int(11) DEFAULT '999',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_user
-- ----------------------------
INSERT INTO toa_user VALUES ('1', 'admin', '7fef6171469e80d32c0559f88b377245', null, '1', '2015-11-17 12:17:09', '1', 'RRA7eatF12', '1', null, null, '0', null, null, '999');

-- ----------------------------
-- Table structure for `toa_usergroup`
-- ----------------------------
DROP TABLE IF EXISTS `toa_usergroup`;
CREATE TABLE `toa_usergroup` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` varchar(100) NOT NULL,
  `purview` text NOT NULL,
  `type` enum('system','user') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_usergroup
-- ----------------------------
INSERT INTO toa_usergroup VALUES ('1', '系统管理组', 'a:318:{s:7:\"myuser_\";s:1:\"1\";s:11:\"office_info\";s:1:\"1\";s:20:\"office_info_Increase\";s:1:\"1\";s:12:\"office_info_\";s:1:\"1\";s:10:\"office_sms\";s:1:\"1\";s:19:\"office_sms_Increase\";s:1:\"1\";s:15:\"office_sms_read\";s:1:\"1\";s:11:\"office_sms_\";s:1:\"1\";s:18:\"office_sms_channel\";s:1:\"1\";s:13:\"date_workdate\";s:1:\"1\";s:22:\"date_workdate_Increase\";s:1:\"1\";s:18:\"date_workdate_edit\";s:1:\"1\";s:14:\"date_workdate_\";s:1:\"1\";s:9:\"date_blog\";s:1:\"1\";s:18:\"date_blog_Increase\";s:1:\"1\";s:14:\"date_blog_edit\";s:1:\"1\";s:10:\"date_blog_\";s:1:\"1\";s:9:\"date_plan\";s:1:\"1\";s:18:\"date_plan_Increase\";s:1:\"1\";s:14:\"date_plan_edit\";s:1:\"1\";s:10:\"date_plan_\";s:1:\"1\";s:20:\"office_communication\";s:1:\"1\";s:29:\"office_communication_Increase\";s:1:\"1\";s:25:\"office_communication_edit\";s:1:\"1\";s:21:\"office_communication_\";s:1:\"1\";s:17:\"office_document_1\";s:1:\"1\";s:26:\"office_document_Increase_1\";s:1:\"1\";s:22:\"office_document_edit_1\";s:1:\"1\";s:18:\"office_document__1\";s:1:\"1\";s:22:\"office_document_type_1\";s:1:\"1\";s:11:\"office_duty\";s:1:\"1\";s:15:\"office_duty_add\";s:1:\"1\";s:16:\"office_duty_reda\";s:1:\"1\";s:15:\"office_duty_sum\";s:1:\"1\";s:9:\"workclass\";s:1:\"1\";s:13:\"workclass_add\";s:1:\"1\";s:10:\"workclass_\";s:1:\"1\";s:15:\"workclass_admin\";s:1:\"1\";s:9:\"input_crm\";s:1:\"1\";s:13:\"input_company\";s:1:\"1\";s:11:\"crm_company\";s:1:\"1\";s:15:\"crm_company_add\";s:1:\"1\";s:16:\"crm_company_edit\";s:1:\"1\";s:15:\"crm_company_del\";s:1:\"1\";s:13:\"crm_contact_1\";s:1:\"1\";s:17:\"crm_contact_add_1\";s:1:\"1\";s:18:\"crm_contact_edit_1\";s:1:\"1\";s:17:\"crm_contact_del_1\";s:1:\"1\";s:10:\"crm_care_1\";s:1:\"1\";s:14:\"crm_care_add_1\";s:1:\"1\";s:15:\"crm_care_edit_1\";s:1:\"1\";s:14:\"crm_care_del_1\";s:1:\"1\";s:11:\"crm_service\";s:1:\"1\";s:15:\"crm_service_add\";s:1:\"1\";s:16:\"crm_service_edit\";s:1:\"1\";s:15:\"crm_service_del\";s:1:\"1\";s:16:\"crm_complaints_1\";s:1:\"1\";s:20:\"crm_complaints_add_1\";s:1:\"1\";s:21:\"crm_complaints_edit_1\";s:1:\"1\";s:20:\"crm_complaints_del_1\";s:1:\"1\";s:11:\"input_offer\";s:1:\"1\";s:9:\"crm_offer\";s:1:\"1\";s:13:\"crm_offer_add\";s:1:\"1\";s:14:\"crm_offer_edit\";s:1:\"1\";s:13:\"crm_offer_del\";s:1:\"1\";s:11:\"crm_program\";s:1:\"1\";s:15:\"crm_program_add\";s:1:\"1\";s:16:\"crm_program_edit\";s:1:\"1\";s:15:\"crm_program_del\";s:1:\"1\";s:12:\"crm_contract\";s:1:\"1\";s:16:\"crm_contract_add\";s:1:\"1\";s:17:\"crm_contract_edit\";s:1:\"1\";s:16:\"crm_contract_del\";s:1:\"1\";s:9:\"crm_order\";s:1:\"1\";s:13:\"crm_order_add\";s:1:\"1\";s:14:\"crm_order_edit\";s:1:\"1\";s:13:\"crm_order_del\";s:1:\"1\";s:11:\"input_price\";s:1:\"1\";s:9:\"crm_price\";s:1:\"1\";s:13:\"crm_price_add\";s:1:\"1\";s:14:\"crm_price_edit\";s:1:\"1\";s:13:\"crm_price_del\";s:1:\"1\";s:11:\"crm_payment\";s:1:\"1\";s:15:\"crm_payment_add\";s:1:\"1\";s:16:\"crm_payment_edit\";s:1:\"1\";s:15:\"crm_payment_del\";s:1:\"1\";s:14:\"input_supplier\";s:1:\"1\";s:12:\"crm_supplier\";s:1:\"1\";s:16:\"crm_supplier_add\";s:1:\"1\";s:17:\"crm_supplier_edit\";s:1:\"1\";s:16:\"crm_supplier_del\";s:1:\"1\";s:12:\"crm_purchase\";s:1:\"1\";s:16:\"crm_purchase_add\";s:1:\"1\";s:17:\"crm_purchase_edit\";s:1:\"1\";s:16:\"crm_purchase_del\";s:1:\"1\";s:13:\"input_product\";s:1:\"1\";s:13:\"crm_pord_type\";s:1:\"1\";s:11:\"crm_product\";s:1:\"1\";s:9:\"crm_stock\";s:1:\"1\";s:14:\"input_business\";s:1:\"1\";s:12:\"crm_business\";s:1:\"1\";s:16:\"crm_business_add\";s:1:\"1\";s:17:\"crm_business_edit\";s:1:\"1\";s:16:\"crm_business_del\";s:1:\"1\";s:13:\"crm_contact_2\";s:1:\"1\";s:17:\"crm_contact_add_2\";s:1:\"1\";s:18:\"crm_contact_edit_2\";s:1:\"1\";s:17:\"crm_contact_del_2\";s:1:\"1\";s:16:\"crm_complaints_2\";s:1:\"1\";s:20:\"crm_complaints_add_2\";s:1:\"1\";s:21:\"crm_complaints_edit_2\";s:1:\"1\";s:20:\"crm_complaints_del_2\";s:1:\"1\";s:10:\"crm_care_2\";s:1:\"1\";s:14:\"crm_care_add_2\";s:1:\"1\";s:15:\"crm_care_edit_2\";s:1:\"1\";s:14:\"crm_care_del_2\";s:1:\"1\";s:13:\"input_crmform\";s:1:\"1\";s:8:\"crm_form\";s:1:\"1\";s:8:\"crm_flow\";s:1:\"1\";s:10:\"crm_charts\";s:1:\"1\";s:11:\"input_excel\";s:1:\"1\";s:17:\"crm_company_excel\";s:1:\"1\";s:19:\"crm_contact_excel_1\";s:1:\"1\";s:16:\"crm_care_excel_1\";s:1:\"1\";s:17:\"crm_service_excel\";s:1:\"1\";s:22:\"crm_complaints_excel_1\";s:1:\"1\";s:15:\"crm_offer_excel\";s:1:\"1\";s:17:\"crm_program_excel\";s:1:\"1\";s:18:\"crm_contract_excel\";s:1:\"1\";s:15:\"crm_order_excel\";s:1:\"1\";s:15:\"crm_price_excel\";s:1:\"1\";s:17:\"crm_payment_excel\";s:1:\"1\";s:18:\"crm_supplier_excel\";s:1:\"1\";s:18:\"crm_purchase_excel\";s:1:\"1\";s:17:\"crm_product_excel\";s:1:\"1\";s:15:\"crm_stock_excel\";s:1:\"1\";s:18:\"crm_business_excel\";s:1:\"1\";s:19:\"crm_contact_excel_2\";s:1:\"1\";s:22:\"crm_complaints_excel_2\";s:1:\"1\";s:16:\"crm_care_excel_2\";s:1:\"1\";s:5:\"mana_\";s:1:\"1\";s:12:\"input_office\";s:1:\"1\";s:12:\"office_goods\";s:1:\"1\";s:14:\"goods_purchase\";s:1:\"1\";s:18:\"office_goods_stock\";s:1:\"1\";s:19:\"office_goods_record\";s:1:\"1\";s:16:\"office_goods_key\";s:1:\"1\";s:10:\"goods_type\";s:1:\"1\";s:4:\"app_\";s:1:\"1\";s:7:\"app_add\";s:1:\"1\";s:10:\"app_update\";s:1:\"1\";s:7:\"app_del\";s:1:\"1\";s:10:\"input_book\";s:1:\"1\";s:9:\"book_type\";s:1:\"1\";s:4:\"book\";s:1:\"1\";s:9:\"book_read\";s:1:\"1\";s:8:\"book_key\";s:1:\"1\";s:20:\"istration_conference\";s:1:\"1\";s:29:\"istration_conference_Increase\";s:1:\"1\";s:25:\"istration_conference_edit\";s:1:\"1\";s:29:\"istration_conference_type_sce\";s:1:\"1\";s:30:\"istration_conference_type_type\";s:1:\"1\";s:9:\"property_\";s:1:\"1\";s:21:\"property_depreciation\";s:1:\"1\";s:13:\"property_type\";s:1:\"1\";s:14:\"news_chronicle\";s:1:\"1\";s:23:\"news_chronicle_Increase\";s:1:\"1\";s:19:\"news_chronicle_edit\";s:1:\"1\";s:15:\"news_chronicle_\";s:1:\"1\";s:19:\"news_chronicle_type\";s:1:\"1\";s:8:\"news_new\";s:1:\"1\";s:17:\"news_new_Increase\";s:1:\"1\";s:13:\"news_new_edit\";s:1:\"1\";s:9:\"news_new_\";s:1:\"1\";s:13:\"news_new_type\";s:1:\"1\";s:11:\"news_notice\";s:1:\"1\";s:20:\"news_notice_Increase\";s:1:\"1\";s:16:\"news_notice_edit\";s:1:\"1\";s:12:\"news_notice_\";s:1:\"1\";s:16:\"news_notice_type\";s:1:\"1\";s:11:\"news_cement\";s:1:\"1\";s:20:\"news_cement_Increase\";s:1:\"1\";s:16:\"news_cement_edit\";s:1:\"1\";s:12:\"news_cement_\";s:1:\"1\";s:16:\"news_cement_type\";s:1:\"1\";s:9:\"input_job\";s:1:\"1\";s:10:\"input_jobs\";s:1:\"1\";s:10:\"job_demand\";s:1:\"1\";s:4:\"job_\";s:1:\"1\";s:10:\"job_talent\";s:1:\"1\";s:8:\"job_hire\";s:1:\"1\";s:9:\"training_\";s:1:\"1\";s:15:\"training_record\";s:1:\"1\";s:10:\"input_wage\";s:1:\"1\";s:4:\"wage\";s:1:\"1\";s:5:\"wage_\";s:1:\"1\";s:9:\"wage_type\";s:1:\"1\";s:8:\"wage_log\";s:1:\"1\";s:10:\"wage_basis\";s:1:\"1\";s:8:\"rewards_\";s:1:\"1\";s:13:\"registration_\";s:1:\"1\";s:18:\"registration_excel\";s:1:\"1\";s:14:\"humancontract_\";s:1:\"1\";s:15:\"humancontract_i\";s:1:\"1\";s:15:\"humancontract_e\";s:1:\"1\";s:15:\"humancontract_d\";s:1:\"1\";s:10:\"human_list\";s:1:\"1\";s:13:\"office_type_r\";s:1:\"1\";s:9:\"input_app\";s:1:\"1\";s:9:\"approval_\";s:1:\"1\";s:13:\"approval_mang\";s:1:\"1\";s:11:\"attachment_\";s:1:\"1\";s:15:\"attachment_type\";s:1:\"1\";s:10:\"input_file\";s:1:\"1\";s:5:\"file_\";s:1:\"1\";s:13:\"file_Increase\";s:1:\"1\";s:9:\"file_edit\";s:1:\"1\";s:9:\"file_read\";s:1:\"1\";s:13:\"file_read_key\";s:1:\"1\";s:9:\"file_type\";s:1:\"1\";s:18:\"file_type_Increase\";s:1:\"1\";s:14:\"file_type_edit\";s:1:\"1\";s:10:\"file_type_\";s:1:\"1\";s:13:\"input_project\";s:1:\"1\";s:8:\"project_\";s:1:\"1\";s:12:\"project_duty\";s:1:\"1\";s:14:\"project_config\";s:1:\"1\";s:15:\"input_knowledge\";s:1:\"1\";s:10:\"knowledge_\";s:1:\"1\";s:18:\"knowledge_Increase\";s:1:\"1\";s:14:\"knowledge_read\";s:1:\"1\";s:9:\"input_bbs\";s:1:\"1\";s:7:\"bbs_add\";s:1:\"1\";s:8:\"bbs_edit\";s:1:\"1\";s:7:\"bbs_key\";s:1:\"1\";s:4:\"bbs_\";s:1:\"1\";s:9:\"bbsclass_\";s:1:\"1\";s:17:\"office_document_4\";s:1:\"1\";s:26:\"office_document_Increase_4\";s:1:\"1\";s:22:\"office_document_edit_4\";s:1:\"1\";s:18:\"office_document__4\";s:1:\"1\";s:22:\"office_document_type_4\";s:1:\"1\";s:17:\"office_document_5\";s:1:\"1\";s:26:\"office_document_Increase_5\";s:1:\"1\";s:22:\"office_document_edit_5\";s:1:\"1\";s:18:\"office_document__5\";s:1:\"1\";s:22:\"office_document_type_5\";s:1:\"1\";s:15:\"news_periodical\";s:1:\"1\";s:24:\"news_periodical_Increase\";s:1:\"1\";s:20:\"news_periodical_edit\";s:1:\"1\";s:16:\"news_periodical_\";s:1:\"1\";s:20:\"news_periodical_type\";s:1:\"1\";s:17:\"office_document_2\";s:1:\"1\";s:26:\"office_document_Increase_2\";s:1:\"1\";s:22:\"office_document_edit_2\";s:1:\"1\";s:18:\"office_document__2\";s:1:\"1\";s:22:\"office_document_type_2\";s:1:\"1\";s:17:\"office_document_3\";s:1:\"1\";s:26:\"office_document_Increase_3\";s:1:\"1\";s:22:\"office_document_edit_3\";s:1:\"1\";s:18:\"office_document__3\";s:1:\"1\";s:22:\"office_document_type_3\";s:1:\"1\";s:17:\"office_document_6\";s:1:\"1\";s:26:\"office_document_Increase_6\";s:1:\"1\";s:22:\"office_document_edit_6\";s:1:\"1\";s:18:\"office_document__6\";s:1:\"1\";s:22:\"office_document_type_6\";s:1:\"1\";s:7:\"config_\";s:1:\"1\";s:11:\"department_\";s:1:\"1\";s:9:\"position_\";s:1:\"1\";s:10:\"config_inc\";s:1:\"1\";s:16:\"config_usergroup\";s:1:\"1\";s:25:\"config_usergroup_Increase\";s:1:\"1\";s:21:\"config_usergroup_edit\";s:1:\"1\";s:17:\"config_usergroup_\";s:1:\"1\";s:11:\"config_user\";s:1:\"1\";s:20:\"config_user_Increase\";s:1:\"1\";s:16:\"config_user_edit\";s:1:\"1\";s:12:\"config_user_\";s:1:\"1\";s:10:\"config_log\";s:1:\"1\";s:11:\"config_log_\";s:1:\"1\";s:9:\"config_db\";s:1:\"1\";s:13:\"config_db_old\";s:1:\"1\";s:11:\"config_menu\";s:1:\"1\";s:15:\"config_keytable\";s:1:\"1\";s:7:\"excel_1\";s:1:\"1\";s:7:\"excel_2\";s:1:\"1\";s:7:\"excel_3\";s:1:\"1\";s:7:\"excel_4\";s:1:\"1\";s:7:\"excel_5\";s:1:\"1\";s:7:\"excel_6\";s:1:\"1\";s:7:\"excel_7\";s:1:\"1\";s:7:\"excel_8\";s:1:\"1\";s:7:\"excel_9\";s:1:\"1\";s:8:\"excel_20\";s:1:\"1\";s:8:\"excel_21\";s:1:\"1\";s:8:\"excel_22\";s:1:\"1\";s:8:\"excel_23\";s:1:\"1\";s:8:\"excel_24\";s:1:\"1\";s:8:\"excel_41\";s:1:\"0\";s:8:\"excel_25\";s:1:\"1\";s:8:\"excel_26\";s:1:\"1\";s:8:\"excel_27\";s:1:\"1\";s:8:\"excel_28\";s:1:\"1\";s:8:\"excel_29\";s:1:\"1\";s:8:\"excel_30\";s:1:\"1\";s:8:\"excel_31\";s:1:\"1\";s:8:\"excel_32\";s:1:\"1\";s:8:\"excel_50\";s:1:\"1\";s:8:\"excel_51\";s:1:\"1\";s:8:\"excel_33\";s:1:\"1\";s:8:\"excel_34\";s:1:\"1\";s:8:\"excel_35\";s:1:\"1\";s:8:\"excel_36\";s:1:\"1\";s:8:\"excel_37\";s:1:\"1\";s:8:\"excel_38\";s:1:\"1\";s:8:\"excel_39\";s:1:\"1\";s:8:\"excel_40\";s:1:\"1\";}', 'system');
INSERT INTO toa_usergroup VALUES ('2', '管理组', 'a:249:{s:7:\"myuser_\";s:1:\"1\";s:11:\"office_info\";s:1:\"1\";s:20:\"office_info_Increase\";s:1:\"1\";s:10:\"office_sms\";s:1:\"1\";s:19:\"office_sms_Increase\";s:1:\"1\";s:15:\"office_sms_read\";s:1:\"1\";s:13:\"date_workdate\";s:1:\"1\";s:22:\"date_workdate_Increase\";s:1:\"1\";s:18:\"date_workdate_edit\";s:1:\"1\";s:9:\"date_blog\";s:1:\"1\";s:18:\"date_blog_Increase\";s:1:\"1\";s:14:\"date_blog_edit\";s:1:\"1\";s:9:\"date_plan\";s:1:\"1\";s:18:\"date_plan_Increase\";s:1:\"1\";s:14:\"date_plan_edit\";s:1:\"1\";s:20:\"office_communication\";s:1:\"1\";s:29:\"office_communication_Increase\";s:1:\"1\";s:25:\"office_communication_edit\";s:1:\"1\";s:17:\"office_document_1\";s:1:\"1\";s:26:\"office_document_Increase_1\";s:1:\"1\";s:22:\"office_document_edit_1\";s:1:\"1\";s:11:\"office_duty\";s:1:\"1\";s:15:\"office_duty_add\";s:1:\"1\";s:16:\"office_duty_reda\";s:1:\"1\";s:15:\"office_duty_sum\";s:1:\"1\";s:9:\"workclass\";s:1:\"1\";s:13:\"workclass_add\";s:1:\"1\";s:15:\"workclass_admin\";s:1:\"1\";s:9:\"input_crm\";s:1:\"1\";s:13:\"input_company\";s:1:\"1\";s:11:\"crm_company\";s:1:\"1\";s:16:\"crm_company_edit\";s:1:\"1\";s:13:\"crm_contact_1\";s:1:\"1\";s:17:\"crm_contact_add_1\";s:1:\"1\";s:18:\"crm_contact_edit_1\";s:1:\"1\";s:10:\"crm_care_1\";s:1:\"1\";s:14:\"crm_care_add_1\";s:1:\"1\";s:15:\"crm_care_edit_1\";s:1:\"1\";s:11:\"crm_service\";s:1:\"1\";s:15:\"crm_service_add\";s:1:\"1\";s:16:\"crm_service_edit\";s:1:\"1\";s:16:\"crm_complaints_1\";s:1:\"1\";s:20:\"crm_complaints_add_1\";s:1:\"1\";s:21:\"crm_complaints_edit_1\";s:1:\"1\";s:11:\"input_offer\";s:1:\"1\";s:9:\"crm_offer\";s:1:\"1\";s:13:\"crm_offer_add\";s:1:\"1\";s:14:\"crm_offer_edit\";s:1:\"1\";s:11:\"crm_program\";s:1:\"1\";s:15:\"crm_program_add\";s:1:\"1\";s:16:\"crm_program_edit\";s:1:\"1\";s:12:\"crm_contract\";s:1:\"1\";s:16:\"crm_contract_add\";s:1:\"1\";s:17:\"crm_contract_edit\";s:1:\"1\";s:9:\"crm_order\";s:1:\"1\";s:13:\"crm_order_add\";s:1:\"1\";s:14:\"crm_order_edit\";s:1:\"1\";s:11:\"input_price\";s:1:\"1\";s:9:\"crm_price\";s:1:\"1\";s:13:\"crm_price_add\";s:1:\"1\";s:14:\"crm_price_edit\";s:1:\"1\";s:11:\"crm_payment\";s:1:\"1\";s:15:\"crm_payment_add\";s:1:\"1\";s:16:\"crm_payment_edit\";s:1:\"1\";s:14:\"input_supplier\";s:1:\"1\";s:12:\"crm_supplier\";s:1:\"1\";s:16:\"crm_supplier_add\";s:1:\"1\";s:17:\"crm_supplier_edit\";s:1:\"1\";s:12:\"crm_purchase\";s:1:\"1\";s:16:\"crm_purchase_add\";s:1:\"1\";s:17:\"crm_purchase_edit\";s:1:\"1\";s:13:\"input_product\";s:1:\"1\";s:11:\"crm_product\";s:1:\"1\";s:9:\"crm_stock\";s:1:\"1\";s:14:\"input_business\";s:1:\"1\";s:12:\"crm_business\";s:1:\"1\";s:16:\"crm_business_add\";s:1:\"1\";s:17:\"crm_business_edit\";s:1:\"1\";s:13:\"crm_contact_2\";s:1:\"1\";s:17:\"crm_contact_add_2\";s:1:\"1\";s:18:\"crm_contact_edit_2\";s:1:\"1\";s:16:\"crm_complaints_2\";s:1:\"1\";s:20:\"crm_complaints_add_2\";s:1:\"1\";s:21:\"crm_complaints_edit_2\";s:1:\"1\";s:10:\"crm_care_2\";s:1:\"1\";s:14:\"crm_care_add_2\";s:1:\"1\";s:15:\"crm_care_edit_2\";s:1:\"1\";s:10:\"crm_charts\";s:1:\"1\";s:11:\"input_excel\";s:1:\"1\";s:17:\"crm_company_excel\";s:1:\"1\";s:19:\"crm_contact_excel_1\";s:1:\"1\";s:16:\"crm_care_excel_1\";s:1:\"1\";s:17:\"crm_service_excel\";s:1:\"1\";s:22:\"crm_complaints_excel_1\";s:1:\"1\";s:15:\"crm_offer_excel\";s:1:\"1\";s:17:\"crm_program_excel\";s:1:\"1\";s:18:\"crm_contract_excel\";s:1:\"1\";s:15:\"crm_order_excel\";s:1:\"1\";s:15:\"crm_price_excel\";s:1:\"1\";s:17:\"crm_payment_excel\";s:1:\"1\";s:18:\"crm_supplier_excel\";s:1:\"1\";s:18:\"crm_purchase_excel\";s:1:\"1\";s:17:\"crm_product_excel\";s:1:\"1\";s:15:\"crm_stock_excel\";s:1:\"1\";s:18:\"crm_business_excel\";s:1:\"1\";s:19:\"crm_contact_excel_2\";s:1:\"1\";s:22:\"crm_complaints_excel_2\";s:1:\"1\";s:16:\"crm_care_excel_2\";s:1:\"1\";s:12:\"input_office\";s:1:\"1\";s:12:\"office_goods\";s:1:\"1\";s:14:\"goods_purchase\";s:1:\"1\";s:18:\"office_goods_stock\";s:1:\"1\";s:19:\"office_goods_record\";s:1:\"1\";s:4:\"app_\";s:1:\"1\";s:7:\"app_add\";s:1:\"1\";s:10:\"app_update\";s:1:\"1\";s:10:\"input_book\";s:1:\"1\";s:4:\"book\";s:1:\"1\";s:9:\"book_read\";s:1:\"1\";s:8:\"book_key\";s:1:\"1\";s:20:\"istration_conference\";s:1:\"1\";s:29:\"istration_conference_Increase\";s:1:\"1\";s:25:\"istration_conference_edit\";s:1:\"1\";s:9:\"property_\";s:1:\"1\";s:21:\"property_depreciation\";s:1:\"1\";s:13:\"property_type\";s:1:\"1\";s:14:\"news_chronicle\";s:1:\"1\";s:23:\"news_chronicle_Increase\";s:1:\"1\";s:19:\"news_chronicle_edit\";s:1:\"1\";s:8:\"news_new\";s:1:\"1\";s:17:\"news_new_Increase\";s:1:\"1\";s:13:\"news_new_edit\";s:1:\"1\";s:11:\"news_notice\";s:1:\"1\";s:20:\"news_notice_Increase\";s:1:\"1\";s:16:\"news_notice_edit\";s:1:\"1\";s:11:\"news_cement\";s:1:\"1\";s:20:\"news_cement_Increase\";s:1:\"1\";s:16:\"news_cement_edit\";s:1:\"1\";s:9:\"input_job\";s:1:\"1\";s:10:\"input_jobs\";s:1:\"1\";s:10:\"job_demand\";s:1:\"1\";s:4:\"job_\";s:1:\"1\";s:10:\"job_talent\";s:1:\"1\";s:8:\"job_hire\";s:1:\"1\";s:9:\"training_\";s:1:\"1\";s:15:\"training_record\";s:1:\"1\";s:10:\"input_wage\";s:1:\"1\";s:4:\"wage\";s:1:\"1\";s:9:\"wage_type\";s:1:\"1\";s:8:\"wage_log\";s:1:\"1\";s:10:\"wage_basis\";s:1:\"1\";s:8:\"rewards_\";s:1:\"1\";s:13:\"registration_\";s:1:\"1\";s:18:\"registration_excel\";s:1:\"1\";s:14:\"humancontract_\";s:1:\"0\";s:15:\"humancontract_i\";s:1:\"1\";s:15:\"humancontract_e\";s:1:\"1\";s:10:\"human_list\";s:1:\"1\";s:13:\"office_type_r\";s:1:\"1\";s:9:\"input_app\";s:1:\"1\";s:9:\"approval_\";s:1:\"1\";s:11:\"attachment_\";s:1:\"1\";s:10:\"input_file\";s:1:\"1\";s:5:\"file_\";s:1:\"1\";s:13:\"file_Increase\";s:1:\"1\";s:9:\"file_edit\";s:1:\"1\";s:9:\"file_read\";s:1:\"1\";s:13:\"file_read_key\";s:1:\"1\";s:9:\"file_type\";s:1:\"1\";s:18:\"file_type_Increase\";s:1:\"1\";s:14:\"file_type_edit\";s:1:\"1\";s:13:\"input_project\";s:1:\"1\";s:8:\"project_\";s:1:\"1\";s:12:\"project_duty\";s:1:\"1\";s:14:\"project_config\";s:1:\"1\";s:15:\"input_knowledge\";s:1:\"1\";s:10:\"knowledge_\";s:1:\"1\";s:18:\"knowledge_Increase\";s:1:\"1\";s:14:\"knowledge_read\";s:1:\"1\";s:9:\"input_bbs\";s:1:\"1\";s:7:\"bbs_add\";s:1:\"1\";s:8:\"bbs_edit\";s:1:\"1\";s:7:\"bbs_key\";s:1:\"1\";s:4:\"bbs_\";s:1:\"1\";s:9:\"bbsclass_\";s:1:\"1\";s:17:\"office_document_4\";s:1:\"1\";s:26:\"office_document_Increase_4\";s:1:\"1\";s:22:\"office_document_edit_4\";s:1:\"1\";s:17:\"office_document_5\";s:1:\"1\";s:26:\"office_document_Increase_5\";s:1:\"1\";s:22:\"office_document_edit_5\";s:1:\"1\";s:15:\"news_periodical\";s:1:\"1\";s:24:\"news_periodical_Increase\";s:1:\"1\";s:20:\"news_periodical_edit\";s:1:\"1\";s:17:\"office_document_2\";s:1:\"1\";s:26:\"office_document_Increase_2\";s:1:\"1\";s:22:\"office_document_edit_2\";s:1:\"1\";s:17:\"office_document_3\";s:1:\"1\";s:26:\"office_document_Increase_3\";s:1:\"1\";s:22:\"office_document_edit_3\";s:1:\"1\";s:17:\"office_document_6\";s:1:\"1\";s:26:\"office_document_Increase_6\";s:1:\"1\";s:22:\"office_document_edit_6\";s:1:\"1\";s:7:\"config_\";s:1:\"1\";s:11:\"department_\";s:1:\"1\";s:9:\"position_\";s:1:\"1\";s:10:\"config_inc\";s:1:\"1\";s:16:\"config_usergroup\";s:1:\"1\";s:25:\"config_usergroup_Increase\";s:1:\"1\";s:21:\"config_usergroup_edit\";s:1:\"1\";s:11:\"config_user\";s:1:\"1\";s:20:\"config_user_Increase\";s:1:\"1\";s:16:\"config_user_edit\";s:1:\"1\";s:10:\"config_log\";s:1:\"1\";s:11:\"config_menu\";s:1:\"1\";s:15:\"config_keytable\";s:1:\"1\";s:7:\"excel_1\";s:1:\"1\";s:7:\"excel_2\";s:1:\"1\";s:7:\"excel_3\";s:1:\"1\";s:7:\"excel_4\";s:1:\"1\";s:7:\"excel_5\";s:1:\"1\";s:7:\"excel_6\";s:1:\"1\";s:7:\"excel_7\";s:1:\"1\";s:7:\"excel_8\";s:1:\"1\";s:7:\"excel_9\";s:1:\"1\";s:8:\"excel_20\";s:1:\"1\";s:8:\"excel_21\";s:1:\"1\";s:8:\"excel_22\";s:1:\"1\";s:8:\"excel_23\";s:1:\"1\";s:8:\"excel_24\";s:1:\"1\";s:8:\"excel_41\";s:1:\"0\";s:8:\"excel_25\";s:1:\"1\";s:8:\"excel_26\";s:1:\"1\";s:8:\"excel_27\";s:1:\"1\";s:8:\"excel_28\";s:1:\"1\";s:8:\"excel_29\";s:1:\"1\";s:8:\"excel_30\";s:1:\"1\";s:8:\"excel_31\";s:1:\"1\";s:8:\"excel_32\";s:1:\"1\";s:8:\"excel_50\";s:1:\"1\";s:8:\"excel_51\";s:1:\"1\";s:8:\"excel_33\";s:1:\"1\";s:8:\"excel_34\";s:1:\"1\";s:8:\"excel_35\";s:1:\"1\";s:8:\"excel_36\";s:1:\"1\";s:8:\"excel_37\";s:1:\"1\";s:8:\"excel_38\";s:1:\"1\";s:8:\"excel_39\";s:1:\"1\";s:8:\"excel_40\";s:1:\"1\";}', 'system');
INSERT INTO toa_usergroup VALUES ('3', '用户组', 'a:82:{s:11:\"department_\";s:1:\"0\";s:9:\"position_\";s:1:\"0\";s:10:\"config_inc\";s:1:\"0\";s:16:\"config_usergroup\";s:1:\"0\";s:11:\"config_user\";s:1:\"0\";s:10:\"config_log\";s:1:\"0\";s:11:\"config_menu\";s:1:\"0\";s:15:\"config_keytable\";s:1:\"0\";s:11:\"office_info\";s:1:\"1\";s:20:\"office_info_Increase\";s:1:\"1\";s:10:\"office_sms\";s:1:\"1\";s:19:\"office_sms_Increase\";s:1:\"1\";s:15:\"office_sms_read\";s:1:\"1\";s:13:\"date_workdate\";s:1:\"1\";s:22:\"date_workdate_Increase\";s:1:\"1\";s:18:\"date_workdate_edit\";s:1:\"1\";s:9:\"date_blog\";s:1:\"1\";s:18:\"date_blog_Increase\";s:1:\"1\";s:14:\"date_blog_edit\";s:1:\"1\";s:9:\"date_plan\";s:1:\"1\";s:18:\"date_plan_Increase\";s:1:\"1\";s:14:\"date_plan_edit\";s:1:\"1\";s:20:\"office_communication\";s:1:\"1\";s:29:\"office_communication_Increase\";s:1:\"1\";s:25:\"office_communication_edit\";s:1:\"1\";s:17:\"office_document_1\";s:1:\"1\";s:26:\"office_document_Increase_1\";s:1:\"1\";s:22:\"office_document_edit_1\";s:1:\"1\";s:11:\"office_duty\";s:1:\"1\";s:15:\"office_duty_add\";s:1:\"1\";s:16:\"office_duty_reda\";s:1:\"1\";s:15:\"office_duty_sum\";s:1:\"1\";s:20:\"istration_conference\";s:1:\"1\";s:29:\"istration_conference_Increase\";s:1:\"1\";s:25:\"istration_conference_edit\";s:1:\"1\";s:14:\"news_chronicle\";s:1:\"1\";s:23:\"news_chronicle_Increase\";s:1:\"1\";s:19:\"news_chronicle_edit\";s:1:\"1\";s:8:\"news_new\";s:1:\"1\";s:17:\"news_new_Increase\";s:1:\"1\";s:13:\"news_new_edit\";s:1:\"1\";s:11:\"news_notice\";s:1:\"1\";s:20:\"news_notice_Increase\";s:1:\"1\";s:16:\"news_notice_edit\";s:1:\"1\";s:11:\"news_cement\";s:1:\"1\";s:20:\"news_cement_Increase\";s:1:\"1\";s:16:\"news_cement_edit\";s:1:\"1\";s:9:\"training_\";s:1:\"1\";s:15:\"training_record\";s:1:\"1\";s:8:\"rewards_\";s:1:\"1\";s:13:\"registration_\";s:1:\"0\";s:14:\"humancontract_\";s:1:\"1\";s:15:\"humancontract_i\";s:1:\"1\";s:15:\"humancontract_e\";s:1:\"1\";s:13:\"office_type_r\";s:1:\"0\";s:18:\"knowledge_Increase\";s:1:\"1\";s:14:\"knowledge_read\";s:1:\"1\";s:17:\"office_document_4\";s:1:\"1\";s:26:\"office_document_Increase_4\";s:1:\"1\";s:22:\"office_document_edit_4\";s:1:\"1\";s:17:\"office_document_5\";s:1:\"1\";s:26:\"office_document_Increase_5\";s:1:\"1\";s:22:\"office_document_edit_5\";s:1:\"1\";s:15:\"news_periodical\";s:1:\"1\";s:24:\"news_periodical_Increase\";s:1:\"1\";s:20:\"news_periodical_edit\";s:1:\"1\";s:17:\"office_document_2\";s:1:\"1\";s:26:\"office_document_Increase_2\";s:1:\"1\";s:22:\"office_document_edit_2\";s:1:\"1\";s:17:\"office_document_3\";s:1:\"1\";s:26:\"office_document_Increase_3\";s:1:\"1\";s:22:\"office_document_edit_3\";s:1:\"1\";s:17:\"office_document_6\";s:1:\"1\";s:26:\"office_document_Increase_6\";s:1:\"1\";s:22:\"office_document_edit_6\";s:1:\"1\";s:7:\"bbs_add\";s:1:\"1\";s:8:\"bbs_edit\";s:1:\"1\";s:7:\"bbs_key\";s:1:\"1\";s:4:\"bbs_\";s:1:\"1\";s:4:\"app_\";s:1:\"1\";s:7:\"app_add\";s:1:\"1\";s:8:\"excel_41\";s:1:\"0\";}', 'system');

-- ----------------------------
-- Table structure for `toa_user_view`
-- ----------------------------
DROP TABLE IF EXISTS `toa_user_view`;
CREATE TABLE `toa_user_view` (
  `vid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `number` varchar(60) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `participationwork` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `fax` varchar(60) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `homemana` text,
  `homebg` varchar(64) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `home_txt` text,
  `hometype` varchar(2) DEFAULT NULL,
  `homemanaleft` text,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_user_view
-- ----------------------------
INSERT INTO toa_user_view VALUES ('1', '管理员', '1', null, null, null, null, null, null, null, null, null, null, null, '1:,\"220\",\"86\",\"97\",\"84\",\"90\",\"64\",\"19\",\"31\",\"87\",\"80\",\"91\",\"96\",\"219\",\"71\",\"65\",\"70\",\"88\",\"197\",\"218\",\"18\",\"82\",\"89\",\"107\",\"83\",\"198\",\"69\",\"221\",\"17\",|2:,\"68\",\"109\",\"92\",\"66\",\"111\",\"21\",\"128\",\"22\",\"67\",\"24\",\"110\",\"93\",\"94\",\"23\",\"25\",\"232\",\"27\",\"28\",\"29\",\"26\",\"30\"\"20\",', null, null, null, null, '\"17\",\"21\",\"20\",\"272\",\"31\",\"303\",');

-- ----------------------------
-- Table structure for `toa_web`
-- ----------------------------
DROP TABLE IF EXISTS `toa_web`;
CREATE TABLE `toa_web` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `weburl` varchar(120) DEFAULT NULL,
  `content` varchar(120) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_web
-- ----------------------------

-- ----------------------------
-- Table structure for `toa_workdate`
-- ----------------------------
DROP TABLE IF EXISTS `toa_workdate`;
CREATE TABLE `toa_workdate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otype` varchar(2) DEFAULT NULL,
  `startdate` varchar(32) DEFAULT NULL,
  `enddate` varchar(32) DEFAULT NULL,
  `content` text,
  `date` datetime DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `workdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toa_workdate
-- ----------------------------
