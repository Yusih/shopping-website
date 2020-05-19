/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-07-06 14:05:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `bCName` varchar(255) DEFAULT NULL,
  `bName` varchar(255) DEFAULT NULL,
  `briefIntro` varchar(255) DEFAULT NULL,
  `reportType` varchar(255) DEFAULT NULL,
  `reportUrl` varchar(255) DEFAULT NULL,
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandPwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('草莓之家', 'strawberry', '都是草莓', 'ads', 'www.badu.com', '1', '123');
INSERT INTO `brand` VALUES ('梨梨梨', 'pear', '都是梨', 'ddd', 'www.bay.com', '2', '111');
INSERT INTO `brand` VALUES ('巧克力', 'choco', '很多巧克力', 'www', 'www.qwq.com', '3', '555');
INSERT INTO `brand` VALUES ('问问', 'ww', '                                                  请输入内容\r\n                  ', '', '', '37', '');
INSERT INTO `brand` VALUES ('问问', 'ww', '                                                  21232411\r\n                  ', 'ads', 'www.baii,com', '38', '123456');

-- ----------------------------
-- Table structure for `brandinformation`
-- ----------------------------
DROP TABLE IF EXISTS `brandinformation`;
CREATE TABLE `brandinformation` (
  `brandInforID` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) DEFAULT NULL,
  `brandLogo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brandInforID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brandinformation
-- ----------------------------
INSERT INTO `brandinformation` VALUES ('1', 'strawberry', 'http://localhost:8080/upload/s1.jpg');
INSERT INTO `brandinformation` VALUES ('2', 'pear', 'http://localhost:8080/upload/p1.jpg');
INSERT INTO `brandinformation` VALUES ('3', 'choco', 'http://localhost:8080/upload/c1.jpg');

-- ----------------------------
-- Table structure for `brandwallet`
-- ----------------------------
DROP TABLE IF EXISTS `brandwallet`;
CREATE TABLE `brandwallet` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `bNum` varchar(255) DEFAULT NULL,
  `bEmail` varchar(255) DEFAULT NULL,
  `bPwd` varchar(11) DEFAULT NULL,
  `bMoney` int(255) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brandwallet
-- ----------------------------
INSERT INTO `brandwallet` VALUES ('1', '草莓之家', '989898@163.com', '123', '60000');
INSERT INTO `brandwallet` VALUES ('2', '梨梨梨', '656565@162.com', '111', '52666');
INSERT INTO `brandwallet` VALUES ('3', '巧克力', '323232@qq.com', '555', '898');

-- ----------------------------
-- Table structure for `orderlist`
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `brandId` int(11) DEFAULT NULL,
  `orderNo` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `orderState` varchar(255) DEFAULT NULL,
  `orderTime` varchar(255) DEFAULT NULL,
  `trackingNo` varchar(255) DEFAULT NULL,
  `sellerId` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('1', '1', '75684894', 'GM102', 'paied', '2017-23-02', '46578990890', '1', 'extractor', '2', '$150', '$300');
INSERT INTO `orderlist` VALUES ('2', '1', 'OD2333', 'GM103', 'paied', '2018-24-03', '35261838930', '1', 'humidifier', '1', '$500', '$500');
INSERT INTO `orderlist` VALUES ('4', '1', 'OE5246', 'GM102', 'during', '2018-23-02', '12340876138', '2', 'extractor', '1', '$150', '$150');
INSERT INTO `orderlist` VALUES ('5', '1', 'OPE2139', 'GM103', 'finished', '2018-01-02', '12893764', '3', 'humidifier', '2', '$500', '$500');
INSERT INTO `orderlist` VALUES ('6', '1', 'AO1232', 'GM103', 'cancel', '2018-03-04', '43862384212', '3', 'humidifier', '2', '$500', '$1000');
INSERT INTO `orderlist` VALUES ('8', '2', 'EO1983', 'GM104', 'during', '2019-07-07', '13978432732', '1', 'cooker', '1', '$200', '$200');
INSERT INTO `orderlist` VALUES ('9', '2', 'AP78998', 'GM105', 'finished', '2018-01-02', '32891736981', '1', 'kettle', '4', '$100', '$400');
INSERT INTO `orderlist` VALUES ('10', '2', 'OE5246', 'GM105', 'cancel', '2018-23-02', '35261838930', '1', 'kettle', '3', '$100', '$300');
INSERT INTO `orderlist` VALUES ('21', '1', 'OD2333', 'GM103', 'paied', '2018-24-03', '32891736981', '1', 'humidifier', '1', '$500', '$500');
INSERT INTO `orderlist` VALUES ('22', '1', null, 'GM102', null, null, null, null, null, null, '150', null);

-- ----------------------------
-- Table structure for `picture`
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('1', 'image/1.jpg');
INSERT INTO `picture` VALUES ('2', 'image/2.jpg');
INSERT INTO `picture` VALUES ('3', 'image/3.jpg');
INSERT INTO `picture` VALUES ('4', 'image/4.jpg');
INSERT INTO `picture` VALUES ('5', 'image/s1.jpg');
INSERT INTO `picture` VALUES ('6', 'image/p1.jpg');
INSERT INTO `picture` VALUES ('7', 'image/c1.jpg');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `brandId` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `brandName` varchar(11) DEFAULT NULL,
  `proPic` varchar(255) DEFAULT NULL,
  `proName` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `proState` varchar(255) DEFAULT NULL,
  `proType` varchar(255) DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `upc` varchar(255) DEFAULT NULL,
  `ena` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `ebayDes` varchar(255) DEFAULT NULL,
  `AmazonDes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'GM102', '美的', 'http://localhost:8080/upload/1.jpg', 'juice extractor', '150', '10', '售卖中', '小电器', '100', '2545464471', '2545464471', '2019-12-31', '榨汁机', '榨汁机');
INSERT INTO `product` VALUES ('2', 'GM103', '格力', 'http://localhost:8080/upload/2.jpg', 'humidifier', '500', '9', '售卖中', '小电器', '502.5', '987456', '2022569', '2019-12-31', '加湿器', '加湿器');

-- ----------------------------
-- Table structure for `seller`
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `sellerId` int(11) NOT NULL AUTO_INCREMENT,
  `sName` varchar(255) DEFAULT NULL,
  `sEmail` varchar(255) DEFAULT NULL,
  `sPwd` varchar(255) DEFAULT NULL,
  `sPhone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sellerId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES ('1', '王华', '123456@qq.com', '12345', '15061108062');
INSERT INTO `seller` VALUES ('2', '李安', '456789@qq.com', '112233', '16710074439');
INSERT INTO `seller` VALUES ('3', '张志', '123789@qq.com', '445566', '15000835409');
INSERT INTO `seller` VALUES ('31', 'Jackson', 'ddd6@qq.com', '123455', '15061108061');
INSERT INTO `seller` VALUES ('32', '王华一', '123456@qq.com', '12345', '1506110801');

-- ----------------------------
-- Table structure for `sellerwallet`
-- ----------------------------
DROP TABLE IF EXISTS `sellerwallet`;
CREATE TABLE `sellerwallet` (
  `sellerId` int(11) NOT NULL AUTO_INCREMENT,
  `sName` varchar(255) NOT NULL DEFAULT '',
  `sEmail` varchar(255) NOT NULL,
  `sPwd` varchar(255) NOT NULL,
  `aMoney` int(11) DEFAULT NULL,
  PRIMARY KEY (`sellerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sellerwallet
-- ----------------------------
INSERT INTO `sellerwallet` VALUES ('1', '王华', '123456@qq.com', '12345', '6510');
INSERT INTO `sellerwallet` VALUES ('2', '李安', '456789@qq.com', '112233', '550');
INSERT INTO `sellerwallet` VALUES ('3', '张志', '123789@qq.com', '445566', '405');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'w12', '123456', '1', '2');
INSERT INTO `user` VALUES ('2', 'w13', '123456', '1', '2');
INSERT INTO `user` VALUES ('4', 'w1a', '123456', '2', '1');
INSERT INTO `user` VALUES ('7', 'wen', '1111', '2', '1');
INSERT INTO `user` VALUES ('8', 'cy', '1234556', '3', '3');
INSERT INTO `user` VALUES ('11', 'wen1', 'b59c67bf196a4758191e42f76670ceba', '3', '3');
INSERT INTO `user` VALUES ('12', '我的', '12345', '1', '1');

-- ----------------------------
-- Table structure for `walletwater`
-- ----------------------------
DROP TABLE IF EXISTS `walletwater`;
CREATE TABLE `walletwater` (
  `tranNum` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `createTime` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of walletwater
-- ----------------------------
INSERT INTO `walletwater` VALUES ('201907049', '20', '2017-8-10 09:12:10', 'secceed');
INSERT INTO `walletwater` VALUES ('987561115', '128', '2018-9-8 10:11:47', 'failed');
INSERT INTO `walletwater` VALUES ('365982233', '500', '2016-6-1 12:00:03', 'secceed');

-- ----------------------------
-- Table structure for `wishlist`
-- ----------------------------
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `wishName` varchar(255) DEFAULT NULL,
  `wishPic` varchar(255) DEFAULT NULL,
  `wishsku` varchar(255) DEFAULT NULL,
  `wishPrice` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wishlist
-- ----------------------------
