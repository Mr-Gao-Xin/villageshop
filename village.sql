# Host: localhost  (Version: 5.5.53)
# Date: 2019-03-18 18:36:42
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "changel"
#

DROP TABLE IF EXISTS `changel`;
CREATE TABLE `changel` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `changel_name` varchar(255) DEFAULT NULL,
  `changel_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "changel"
#

/*!40000 ALTER TABLE `changel` DISABLE KEYS */;
INSERT INTO `changel` VALUES (1,'所有商品','0'),(2,'新鲜果蔬','1'),(3,'零食百货','2'),(4,'粮油干杂','3'),(5,'肉类水产','4'),(6,'火锅专区','5'),(7,'新人专享','6');
/*!40000 ALTER TABLE `changel` ENABLE KEYS */;

#
# Structure for table "msg"
#

DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL,
  `thing_name` varchar(255) DEFAULT NULL,
  `user_avr` varchar(255) DEFAULT NULL,
  `thing_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "msg"
#

/*!40000 ALTER TABLE `msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `msg` ENABLE KEYS */;

#
# Structure for table "order"
#

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `order_grade` varchar(255) DEFAULT NULL,
  `thing_id` varchar(255) DEFAULT NULL,
  `order_create_time` varchar(255) DEFAULT NULL,
  `order_pay_time` varchar(255) DEFAULT NULL,
  `order_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "order"
#

/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

#
# Structure for table "saller"
#

DROP TABLE IF EXISTS `saller`;
CREATE TABLE `saller` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `saller_id` varchar(255) DEFAULT NULL,
  `saller_name` varchar(255) DEFAULT NULL,
  `saller_avr` varchar(255) DEFAULT NULL,
  `saller_phone` varchar(255) DEFAULT NULL,
  `saller_addr` varchar(255) DEFAULT NULL,
  `saller_fensi` varchar(255) DEFAULT NULL,
  `salller_sall_num` varchar(255) DEFAULT NULL COMMENT '购买指数',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "saller"
#

/*!40000 ALTER TABLE `saller` DISABLE KEYS */;
/*!40000 ALTER TABLE `saller` ENABLE KEYS */;

#
# Structure for table "thing"
#

DROP TABLE IF EXISTS `thing`;
CREATE TABLE `thing` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `thing_id` varchar(255) DEFAULT NULL,
  `thing_pic` varchar(255) DEFAULT NULL,
  `thing_sel` varchar(255) DEFAULT NULL COMMENT '类型',
  `thing_num` varchar(255) DEFAULT NULL,
  `thing_time` varchar(255) DEFAULT NULL,
  `thing_addr` varchar(255) DEFAULT NULL,
  `thing_name` varchar(255) DEFAULT NULL,
  `thing_desc` varchar(255) DEFAULT NULL,
  `thing_focus` varchar(255) DEFAULT NULL COMMENT '商品关注度',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "thing"
#

/*!40000 ALTER TABLE `thing` DISABLE KEYS */;
/*!40000 ALTER TABLE `thing` ENABLE KEYS */;

#
# Structure for table "user_info"
#

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `weixin_info` varchar(255) DEFAULT NULL,
  `user_sex` varchar(255) DEFAULT NULL,
  `user_age` varchar(255) DEFAULT NULL,
  `user_addr` varchar(255) DEFAULT NULL,
  `user_grade` varchar(255) DEFAULT NULL COMMENT '用户积分',
  `user_reg_time` varchar(255) DEFAULT NULL,
  `user_last_login_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "user_info"
#

/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
