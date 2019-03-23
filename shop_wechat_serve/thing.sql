# Host: localhost  (Version: 5.5.53)
# Date: 2019-03-23 11:14:57
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

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
  `thing_price` varchar(255) DEFAULT NULL,
  `thing_lay_price` varchar(255) DEFAULT NULL,
  `thing_now_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "thing"
#

/*!40000 ALTER TABLE `thing` DISABLE KEYS */;
INSERT INTO `thing` VALUES (2,'2','O1CN019DwLFe1y9zZ4LUFoF_!!1910146537.jpg_430x430q90.jpg','2','100','2019-2-10','河南安阳','云南新鲜冬茸500g 菌菇煲汤熬汤食材新鲜蔬菜 产地直发','原生态种植，鲜嫩爽滑','0','99','699','10'),(3,'3','TB2vz36dirpK1RjSZFhXXXSdXXa_!!1910146537.jpg_430x430q90.jpg','2','100','2019-3-10','新疆','新疆阿克苏冰糖心苹果4.5kg原箱果径80mm以上 水果新鲜当季一箱','色泽红润 甘甜可口','0','49','699','10'),(4,'4','TB2Yp.oo3nH8KJjSspcXXb3QFXa_!!725677994.jpg_430x430q90.jpg','3','100','2019-4-20','安徽','喜之郎什锦果汁果冻360g/袋休闲零食小吃婚庆用品','方便实惠','0','45','699','10'),(5,'5','TB2lr3xfXuWBuNjSspnXXX1NVXa_!!725677994.jpg_430x430q90.jpg','3','100','2019-3-20','北京','亿滋太平梳打饼干苏打饼干奶盐味 清淡400g零食16小包分享装','好吃','0','58','699','10'),(6,'6','O1CN0128vIcDS5e7uukjE_!!725677994.jpg_430x430q90.jpg','4','100','2019-3','黑龙江','金龙鱼 盘锦大米 蟹稻共生10kg 东北大米 人气爆款','蟹稻共生 晶莹饱满 热销爆款','0','99','699','10'),(7,'7','O1CN01zqLLEm28vIdI9MTZb_!!725677994.jpg_430x430q90.jpg','4','100','2019-3','吉林','金龙鱼 非转基因黄金比例食用调和油5L 食用油','新老包装 发货随机赠送400ml小油','0','123','699','10'),(8,'8','O1CN01vOjpTk28rdUFZSXlQ_!!2200627707986.jpg_430x430q90.jpg','5','100','2019','郑州','良品铺子香酥小黄鱼干188g即食舟山特产零食小包装','优选原料 香酥入骨 肉质细腻 鲜美可口','0','10','699','10'),(9,'9','O1CN01fzWHf828rdULYkubB_!!2200627707986.jpg_430x430q90.jpg','5','100','2019','郑州','良品铺子虾仁鱼饼92g/袋香辣味鲜虾海鲜休闲零食风味小吃鱼','优质','0','9','699','10'),(10,'10','O1CN01BNElzK28vIdYCOa8u_!!725677994.jpg_430x430q90.jpg','6','100','2019','郑州','午餐肉罐头198g*3 方便速食 早餐 涮火锅组合装','午餐肉组合大包装','0','23','699','10'),(11,'11','TB215dxCH1YBuNjSszeXXablFXa_!!725677994.jpg_430x430q90.jpg','6','100','2019','郑州','番茄牛腩自煮火锅方便自热懒人即食速食小火锅365g','海底捞','0','99','699','10'),(12,'12','O1CN01JDIh7c28vIeqFMvMk_!!0-item_pic.jpg_430x430q90.jpg','7','100','2019','郑州','海飞丝洗发水/露750ml怡神冰凉型 去屑去油控油男女士正品','洗发水','0','39','699','10'),(13,'13','TB2C9MecnqWBKNjSZFxXXcpLpXa_!!725677994.jpg_430x430q90.jpg','7','100','2019','郑州','乐事无限薯片三连罐104g*3罐休闲食品零食小吃礼包膨化2倍起购','胡谝','0','36','699','10'),(14,'13','O1CN01hMoZUY28vIe6w6ytq_!!725677994.jpg_430x430q90.jpg','7','100','2019','郑州','达利园花生牛奶核桃味250ml*12包节日礼盒牛奶整箱营养蛋白饮料','核桃','0','66','699','10');
/*!40000 ALTER TABLE `thing` ENABLE KEYS */;
