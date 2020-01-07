/*
Navicat MySQL Data Transfer

Source Server         : databse
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : db1911

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2020-01-07 14:19:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `﻿did` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `repertory` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `gid` varchar(255) DEFAULT NULL,
  `sid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data
-- ----------------------------
INSERT INTO `data` VALUES ('1', '铁观音', '88', '1', '88', '67', '1', '1', '1', '茶叶阁');
INSERT INTO `data` VALUES ('2', '普洱', '90', '1', '90', '88', '1', '2', '1', '茶叶阁');
INSERT INTO `data` VALUES ('3', '挂面', '18', '1', '18', '40', '1', '3', '2', '陈克明官网');
INSERT INTO `data` VALUES ('4', '铁观音', '88', '1', '88', '67', '2', '1', '1', '茶叶阁');
INSERT INTO `data` VALUES ('5', '普洱', '90', '1', '90', '88', '2', '2', '1', '茶叶阁');
INSERT INTO `data` VALUES ('6', '挂面', '18', '1', '18', '40', '3', '3', '2', '陈克明官网');

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `url` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', '很仙的上衣蝴蝶结七分袖雪纺衫女2019秋季新款印花宽松洋气衬衫潮1', '23', '红色', null);
INSERT INTO `goodslist` VALUES ('2', '正品 BURBERRY/巴宝莉 彩虹条纹字母logo格纹衬衫 博柏利男女衬衣2', '45', '粉绿色', null);
INSERT INTO `goodslist` VALUES ('3', '克洛奇灯笼袖显瘦法式小众百搭衬衫女款复古白色洋气宽松长袖港味3', '67', '黄色', null);
INSERT INTO `goodslist` VALUES ('4', '很仙的上衣蝴蝶结七分袖雪纺衫女2019秋季新款印花宽松洋气衬衫潮2', '89', '红色', null);
INSERT INTO `goodslist` VALUES ('5', '正品 BURBERRY/巴宝莉 彩虹条纹字母logo格纹衬衫 博柏利男女衬衣3', '111', '粉绿色', null);
INSERT INTO `goodslist` VALUES ('6', '克洛奇灯笼袖显瘦法式小众百搭衬衫女款复古白色洋气宽松长袖港味4', '133', '黄色', 'http://localhost:1920/uploads/timg-1577694819043.jpg&http://localhost:1920/uploads/背景2-1577694819050.jpg&http://localhost:1920/uploads/背景3-1577694819104.jpg');
INSERT INTO `goodslist` VALUES ('7', '很仙的上衣蝴蝶结七分袖雪纺衫女2019秋季新款印花宽松洋气衬衫潮3', '', '', null);
INSERT INTO `goodslist` VALUES ('8', '正品 BURBERRY/巴宝莉 彩虹条纹字母logo格纹衬衫 博柏利男女衬衣4', '177', '粉绿色', null);
INSERT INTO `goodslist` VALUES ('9', '克洛奇灯笼袖显瘦法式小众百搭衬衫女款复古白色洋气宽松长袖港味5', '199', '黄色', null);
INSERT INTO `goodslist` VALUES ('11', '正品 BURBERRY/巴宝莉 彩虹条纹字母logo格纹衬衫 博柏利男女衬衣5', '243', '粉绿色', null);
INSERT INTO `goodslist` VALUES ('13', '很仙的上衣蝴蝶结七分袖雪纺衫女2019秋季新款印花宽松洋气衬衫潮5', '287', '红色', null);
INSERT INTO `goodslist` VALUES ('14', '正品 BURBERRY/巴宝莉 彩虹条纹字母logo格纹衬衫 博柏利男女衬衣6', '309', '粉绿色', null);
INSERT INTO `goodslist` VALUES ('15', '克洛奇灯笼袖显瘦法式小众百搭衬衫女款复古白色洋气宽松长袖港味7', '331', '黄色', null);
INSERT INTO `goodslist` VALUES ('16', '很仙的上衣蝴蝶结七分袖雪纺衫女2019秋季新款印花宽松洋气衬衫潮6', '353', '红色', null);
INSERT INTO `goodslist` VALUES ('17', '正品 BURBERRY/巴宝莉 彩虹条纹字母logo格纹衬衫 博柏利男女衬衣7', '375', '粉绿色', null);
INSERT INTO `goodslist` VALUES ('18', '克洛奇灯笼袖显瘦法式小众百搭衬衫女款复古白色洋气宽松长袖港味8', '397', '黄色', null);
INSERT INTO `goodslist` VALUES ('19', '很仙的上衣蝴蝶结七分袖雪纺衫女2019秋季新款印花宽松洋气衬衫潮7', '419', '红色', null);
INSERT INTO `goodslist` VALUES ('20', '正品 BURBERRY/巴宝莉 彩虹条纹字母logo格纹衬衫 博柏利男女衬衣8', '441', '粉绿色', null);
INSERT INTO `goodslist` VALUES ('21', '克洛奇灯笼袖显瘦法式小众百搭衬衫女款复古白色洋气宽松长袖港味9', '463', '黄色', null);
INSERT INTO `goodslist` VALUES ('22', '很仙的上衣蝴蝶结七分袖雪纺衫女2019秋季新款印花宽松洋气衬衫潮8', '485', '红色', null);
INSERT INTO `goodslist` VALUES ('23', '正品 BURBERRY/巴宝莉 彩虹条纹字母logo格纹衬衫 博柏利男女衬衣9', '507', '粉绿色', null);
INSERT INTO `goodslist` VALUES ('24', '克洛奇灯笼袖显瘦法式小众百搭衬衫女款复古白色洋气宽松长袖港味10', '529', '黄色', null);
INSERT INTO `goodslist` VALUES ('25', '很仙的上衣蝴蝶结七分袖雪纺衫女2019秋季新款印花宽松洋气衬衫潮9', '551', '红色', null);
INSERT INTO `goodslist` VALUES ('26', '正品 BURBERRY/巴宝莉 彩虹条纹字母logo格纹衬衫 博柏利男女衬衣10', '', '粉绿色', null);
INSERT INTO `goodslist` VALUES ('27', '王大锤', '1899', '黄色', null);
INSERT INTO `goodslist` VALUES ('28', '华为222', '100', '红色', null);
INSERT INTO `goodslist` VALUES ('29', '苹果手机', '8999', '红色', null);
INSERT INTO `goodslist` VALUES ('30', '苹果手机2', 'undefined', '红色', null);

-- ----------------------------
-- Table structure for goodslist2
-- ----------------------------
DROP TABLE IF EXISTS `goodslist2`;
CREATE TABLE `goodslist2` (
  `ï»¿gid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ï»¿gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist2
-- ----------------------------
INSERT INTO `goodslist2` VALUES ('1', 'å¾ˆä»™çš„ä¸Šè¡£è´è¶ç»“ä¸ƒåˆ†è¢–é›ªçººè¡«å¥³2019ç§‹å­£æ–°æ¬¾å°èŠ±å®½æ¾æ´‹æ°”è¡¬è¡«æ½®1', '23', 'çº¢è‰²');
INSERT INTO `goodslist2` VALUES ('2', 'æ­£å“ BURBERRY/å·´å®èŽ‰ å½©è™¹æ¡çº¹å­—æ¯logoæ ¼çº¹è¡¬è¡« åšæŸåˆ©ç”·å¥³è¡¬è¡£2', '45', 'ç²‰ç»¿è‰²');
INSERT INTO `goodslist2` VALUES ('3', 'å…‹æ´›å¥‡ç¯ç¬¼è¢–æ˜¾ç˜¦æ³•å¼å°ä¼—ç™¾æ­è¡¬è¡«å¥³æ¬¾å¤å¤ç™½è‰²æ´‹æ°”å®½æ¾é•¿è¢–æ¸¯å‘³3', '67', 'é»„è‰²');
INSERT INTO `goodslist2` VALUES ('4', 'å¾ˆä»™çš„ä¸Šè¡£è´è¶ç»“ä¸ƒåˆ†è¢–é›ªçººè¡«å¥³2019ç§‹å­£æ–°æ¬¾å°èŠ±å®½æ¾æ´‹æ°”è¡¬è¡«æ½®2', '89', 'çº¢è‰²');
INSERT INTO `goodslist2` VALUES ('5', 'æ­£å“ BURBERRY/å·´å®èŽ‰ å½©è™¹æ¡çº¹å­—æ¯logoæ ¼çº¹è¡¬è¡« åšæŸåˆ©ç”·å¥³è¡¬è¡£3', '111', 'ç²‰ç»¿è‰²');
INSERT INTO `goodslist2` VALUES ('6', 'å…‹æ´›å¥‡ç¯ç¬¼è¢–æ˜¾ç˜¦æ³•å¼å°ä¼—ç™¾æ­è¡¬è¡«å¥³æ¬¾å¤å¤ç™½è‰²æ´‹æ°”å®½æ¾é•¿è¢–æ¸¯å‘³4', '133', 'é»„è‰²');
INSERT INTO `goodslist2` VALUES ('7', 'å¾ˆä»™çš„ä¸Šè¡£è´è¶ç»“ä¸ƒåˆ†è¢–é›ªçººè¡«å¥³2019ç§‹å­£æ–°æ¬¾å°èŠ±å®½æ¾æ´‹æ°”è¡¬è¡«æ½®3', '155', 'çº¢è‰²');
INSERT INTO `goodslist2` VALUES ('8', 'æ­£å“ BURBERRY/å·´å®èŽ‰ å½©è™¹æ¡çº¹å­—æ¯logoæ ¼çº¹è¡¬è¡« åšæŸåˆ©ç”·å¥³è¡¬è¡£4', '177', 'ç²‰ç»¿è‰²');
INSERT INTO `goodslist2` VALUES ('9', 'å…‹æ´›å¥‡ç¯ç¬¼è¢–æ˜¾ç˜¦æ³•å¼å°ä¼—ç™¾æ­è¡¬è¡«å¥³æ¬¾å¤å¤ç™½è‰²æ´‹æ°”å®½æ¾é•¿è¢–æ¸¯å‘³5', '199', 'é»„è‰²');
INSERT INTO `goodslist2` VALUES ('10', 'å¾ˆä»™çš„ä¸Šè¡£è´è¶ç»“ä¸ƒåˆ†è¢–é›ªçººè¡«å¥³2019ç§‹å­£æ–°æ¬¾å°èŠ±å®½æ¾æ´‹æ°”è¡¬è¡«æ½®4', '221', 'çº¢è‰²');
INSERT INTO `goodslist2` VALUES ('11', 'æ­£å“ BURBERRY/å·´å®èŽ‰ å½©è™¹æ¡çº¹å­—æ¯logoæ ¼çº¹è¡¬è¡« åšæŸåˆ©ç”·å¥³è¡¬è¡£5', '243', 'ç²‰ç»¿è‰²');
INSERT INTO `goodslist2` VALUES ('12', 'å…‹æ´›å¥‡ç¯ç¬¼è¢–æ˜¾ç˜¦æ³•å¼å°ä¼—ç™¾æ­è¡¬è¡«å¥³æ¬¾å¤å¤ç™½è‰²æ´‹æ°”å®½æ¾é•¿è¢–æ¸¯å‘³6', '265', 'é»„è‰²');
INSERT INTO `goodslist2` VALUES ('13', 'å¾ˆä»™çš„ä¸Šè¡£è´è¶ç»“ä¸ƒåˆ†è¢–é›ªçººè¡«å¥³2019ç§‹å­£æ–°æ¬¾å°èŠ±å®½æ¾æ´‹æ°”è¡¬è¡«æ½®5', '287', 'çº¢è‰²');
INSERT INTO `goodslist2` VALUES ('14', 'æ­£å“ BURBERRY/å·´å®èŽ‰ å½©è™¹æ¡çº¹å­—æ¯logoæ ¼çº¹è¡¬è¡« åšæŸåˆ©ç”·å¥³è¡¬è¡£6', '309', 'ç²‰ç»¿è‰²');
INSERT INTO `goodslist2` VALUES ('15', 'å…‹æ´›å¥‡ç¯ç¬¼è¢–æ˜¾ç˜¦æ³•å¼å°ä¼—ç™¾æ­è¡¬è¡«å¥³æ¬¾å¤å¤ç™½è‰²æ´‹æ°”å®½æ¾é•¿è¢–æ¸¯å‘³7', '331', 'é»„è‰²');
INSERT INTO `goodslist2` VALUES ('16', 'å¾ˆä»™çš„ä¸Šè¡£è´è¶ç»“ä¸ƒåˆ†è¢–é›ªçººè¡«å¥³2019ç§‹å­£æ–°æ¬¾å°èŠ±å®½æ¾æ´‹æ°”è¡¬è¡«æ½®6', '353', 'çº¢è‰²');
INSERT INTO `goodslist2` VALUES ('17', 'æ­£å“ BURBERRY/å·´å®èŽ‰ å½©è™¹æ¡çº¹å­—æ¯logoæ ¼çº¹è¡¬è¡« åšæŸåˆ©ç”·å¥³è¡¬è¡£7', '375', 'ç²‰ç»¿è‰²');
INSERT INTO `goodslist2` VALUES ('18', 'å…‹æ´›å¥‡ç¯ç¬¼è¢–æ˜¾ç˜¦æ³•å¼å°ä¼—ç™¾æ­è¡¬è¡«å¥³æ¬¾å¤å¤ç™½è‰²æ´‹æ°”å®½æ¾é•¿è¢–æ¸¯å‘³8', '397', 'é»„è‰²');
INSERT INTO `goodslist2` VALUES ('19', 'å¾ˆä»™çš„ä¸Šè¡£è´è¶ç»“ä¸ƒåˆ†è¢–é›ªçººè¡«å¥³2019ç§‹å­£æ–°æ¬¾å°èŠ±å®½æ¾æ´‹æ°”è¡¬è¡«æ½®7', '419', 'çº¢è‰²');
INSERT INTO `goodslist2` VALUES ('20', 'æ­£å“ BURBERRY/å·´å®èŽ‰ å½©è™¹æ¡çº¹å­—æ¯logoæ ¼çº¹è¡¬è¡« åšæŸåˆ©ç”·å¥³è¡¬è¡£8', '441', 'ç²‰ç»¿è‰²');
INSERT INTO `goodslist2` VALUES ('21', 'å…‹æ´›å¥‡ç¯ç¬¼è¢–æ˜¾ç˜¦æ³•å¼å°ä¼—ç™¾æ­è¡¬è¡«å¥³æ¬¾å¤å¤ç™½è‰²æ´‹æ°”å®½æ¾é•¿è¢–æ¸¯å‘³9', '463', 'é»„è‰²');
INSERT INTO `goodslist2` VALUES ('22', 'å¾ˆä»™çš„ä¸Šè¡£è´è¶ç»“ä¸ƒåˆ†è¢–é›ªçººè¡«å¥³2019ç§‹å­£æ–°æ¬¾å°èŠ±å®½æ¾æ´‹æ°”è¡¬è¡«æ½®8', '485', 'çº¢è‰²');
INSERT INTO `goodslist2` VALUES ('23', 'æ­£å“ BURBERRY/å·´å®èŽ‰ å½©è™¹æ¡çº¹å­—æ¯logoæ ¼çº¹è¡¬è¡« åšæŸåˆ©ç”·å¥³è¡¬è¡£9', '507', 'ç²‰ç»¿è‰²');
INSERT INTO `goodslist2` VALUES ('24', 'å…‹æ´›å¥‡ç¯ç¬¼è¢–æ˜¾ç˜¦æ³•å¼å°ä¼—ç™¾æ­è¡¬è¡«å¥³æ¬¾å¤å¤ç™½è‰²æ´‹æ°”å®½æ¾é•¿è¢–æ¸¯å‘³10', '529', 'é»„è‰²');
INSERT INTO `goodslist2` VALUES ('25', 'å¾ˆä»™çš„ä¸Šè¡£è´è¶ç»“ä¸ƒåˆ†è¢–é›ªçººè¡«å¥³2019ç§‹å­£æ–°æ¬¾å°èŠ±å®½æ¾æ´‹æ°”è¡¬è¡«æ½®9', '551', 'çº¢è‰²');
INSERT INTO `goodslist2` VALUES ('26', 'æ­£å“ BURBERRY/å·´å®èŽ‰ å½©è™¹æ¡çº¹å­—æ¯logoæ ¼çº¹è¡¬è¡« åšæŸåˆ©ç”·å¥³è¡¬è¡£10', '573', 'ç²‰ç»¿è‰²');

-- ----------------------------
-- Table structure for html1911
-- ----------------------------
DROP TABLE IF EXISTS `html1911`;
CREATE TABLE `html1911` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `a1` text NOT NULL,
  `a2` text NOT NULL,
  `a3` text NOT NULL,
  `a4` text NOT NULL,
  `p-shop` text NOT NULL,
  `p-operate` text NOT NULL,
  `a5` text NOT NULL,
  `a6` text NOT NULL,
  `a7` text NOT NULL,
  `a8` text NOT NULL,
  `a9` text NOT NULL,
  `a10` text NOT NULL,
  `a11` text NOT NULL,
  `a12` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of html1911
-- ----------------------------
INSERT INTO `html1911` VALUES ('1', 'è”æƒ³(Lenovo)å°æ–°Pro13.3è‹±å¯¸å…¨é¢å±è¶…è½»è–„ç¬”è®°æœ¬ç”µè„‘(æ ‡åŽ‹é”é¾™R5-3550H 16G 512G 2.5K QHD 100%sRGB)é“¶', 'https://item.jd.com/100005171461.html', 'https://img11.360buyimg.com/n7/jfs/t1/77264/37/14467/77252/5dc0d91fEd250a779/d30ada1acc7efd2b.jpg', 'å·²æœ‰8ä¸‡+äººè¯„ä»·', 'è”æƒ³ç”µè„‘äº¬ä¸œè‡ªè¥æ——...', 'åŠ å…¥è´­ç‰©è½¦', 'è”æƒ³(Lenovo)å°æ–°Pro13.3è‹±å¯¸å…¨é¢å±è¶…è½»è–„ç¬”è®°æœ¬ç”µè„‘(æ ‡åŽ‹é”é¾™R5-3550H 16G 512G 2.5K QHD 100%sRGB)é“¶', '<div class=\"ssd-module M15707731610201 animate-M15707731610201\" data-id=\"M15707731610201\">\n        \n</div>\n<div class=\"ssd-module M15707731610542 animate-M15707731610542\" data-id=\"M15707731610542\">\n        \n</div>\n<div class=\"ssd-module M15707731610743 animate-M15707731610743\" data-id=\"M15707731610743\">\n        \n</div>\n<div class=\"ssd-module M15707731610935 animate-M15707731610935\" data-id=\"M15707731610935\">\n        \n</div>\n<div class=\"ssd-module M15707731611147 animate-M15707731611147\" data-id=\"M15707731611147\">\n        \n</div>\n<div class=\"ssd-module M15707731611398 animate-M15707731611398\" data-id=\"M15707731611398\">\n        \n</div>\n<div class=\"ssd-module M15707731611679 animate-M15707731611679\" data-id=\"M15707731611679\">\n        \n</div>\n<div class=\"ssd-module M157077316119210 animate-M157077316119210\" data-id=\"M157077316119210\">\n        \n</div>\n<div class=\"ssd-module M157077316123611 animate-M157077316123611\" data-id=\"M157077316123611\">\n        \n</div>\n<div class=\"ssd-module M157077316127412 animate-M157077316127412\" data-id=\"M157077316127412\">\n        \n</div>\n<div class=\"ssd-module M157077316132113 animate-M157077316132113\" data-id=\"M157077316132113\">\n        \n</div>\n<div class=\"ssd-module M157077316137215 animate-M157077316137215\" data-id=\"M157077316137215\">\n        \n</div>\n<div class=\"ssd-module M157077316142016 animate-M157077316142016\" data-id=\"M157077316142016\">\n        \n</div>\n<div class=\"ssd-module M157077316145517 animate-M157077316145517\" data-id=\"M157077316145517\">\n        \n</div>\n<div class=\"ssd-module M157077316148818 animate-M157077316148818\" data-id=\"M157077316148818\">\n        \n</div>\n<div class=\"ssd-module M157077316152119 animate-M157077316152119\" data-id=\"M157077316152119\">\n        \n</div>\n<div class=\"ssd-module M157077316156020 animate-M157077316156020\" data-id=\"M157077316156020\">\n        \n</div>\n<div class=\"ssd-module M157077316159121 animate-M157077316159121\" data-id=\"M157077316159121\">\n        \n</div>\n<div class=\"ssd-module M157077316165423 animate-M157077316165423\" data-id=\"M157077316165423\">\n        \n</div>', 'ï¿¥4999.00', 'äº¬ä¸œä»·ä¸ºå•†å“çš„é”€å”®ä»·ï¼Œæ˜¯æ‚¨æœ€ç»ˆå†³å®šæ˜¯å¦è´­ä¹°å•†å“çš„ä¾æ®ã€‚', 'å•†å“å±•ç¤ºçš„åˆ’æ¨ªçº¿ä»·æ ¼ä¸ºå‚è€ƒä»·ï¼Œå¹¶éžåŽŸä»·ï¼Œè¯¥ä»·æ ¼å¯èƒ½æ˜¯å“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·æˆ–ç”±å“ç‰Œä¾›åº”å•†æä¾›çš„æ­£å“é›¶å”®ä»·ï¼ˆå¦‚åŽ‚å•†æŒ‡å¯¼ä»·ã€å»ºè®®é›¶å”®ä»·ç­‰ï¼‰æˆ–è¯¥å•†å“åœ¨äº¬ä¸œå¹³å°ä¸Šæ›¾ç»å±•ç¤ºè¿‡çš„é”€å”®ä»·ï¼›ç”±äºŽåœ°åŒºã€æ—¶é—´çš„å·®å¼‚æ€§å’Œå¸‚åœºè¡Œæƒ…æ³¢åŠ¨ï¼Œå“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·ç­‰å¯èƒ½ä¼šä¸Žæ‚¨è´­ç‰©æ—¶å±•ç¤ºçš„ä¸ä¸€è‡´ï¼Œè¯¥ä»·æ ¼ä»…ä¾›æ‚¨å‚è€ƒã€‚', 'å†…å­˜å®¹é‡ï¼š16GB', 'ç³»ç»Ÿï¼šWindows 10', 'å•†å“ç¼–å·ï¼š100005171461');
INSERT INTO `html1911` VALUES ('2', 'è”æƒ³(Lenovo)æ‹¯æ•‘è€…Y7000P 2019è‹±ç‰¹å°”é…·ç¿i715.6è‹±å¯¸æ¸¸æˆç¬”è®°æœ¬ç”µè„‘(i7-9750H 16G 1T SSD GTX1660Ti 144Hz)', 'https://item.jd.com/100003688077.html', 'https://img12.360buyimg.com/n7/jfs/t1/79105/5/1549/275769/5cfe0819E05803cb2/d56d258b14bad253.jpg', 'å·²æœ‰20ä¸‡+äººè¯„ä»·', 'è”æƒ³ç”µè„‘äº¬ä¸œè‡ªè¥æ——...', 'åŠ å…¥è´­ç‰©è½¦', 'è”æƒ³(Lenovo)æ‹¯æ•‘è€…Y7000P 2019è‹±ç‰¹å°”é…·ç¿i715.6è‹±å¯¸æ¸¸æˆç¬”è®°æœ¬ç”µè„‘(i7-9750H 16G 1T SSD GTX1660Ti 144Hz)', '<div class=\"ssd-module M15601498772721 animate-M15601498772721\" data-id=\"M15601498772721\">\n        \n</div>\n<div class=\"ssd-module M15601498773302 animate-M15601498773302\" data-id=\"M15601498773302\">\n        \n</div>\n<div class=\"ssd-module M15601498773853 animate-M15601498773853\" data-id=\"M15601498773853\">\n        \n</div>\n<div class=\"ssd-module M15601498774684 animate-M15601498774684\" data-id=\"M15601498774684\">\n        \n</div>\n<div class=\"ssd-module M15601498775895 animate-M15601498775895\" data-id=\"M15601498775895\">\n        \n</div>\n<div class=\"ssd-module M15601498776636 animate-M15601498776636\" data-id=\"M15601498776636\">\n        \n</div>\n<div class=\"ssd-module M15601498777357 animate-M15601498777357\" data-id=\"M15601498777357\">\n        \n</div>\n<div class=\"ssd-module M15601498778118 animate-M15601498778118\" data-id=\"M15601498778118\">\n        \n</div>\n<div class=\"ssd-module M15601498778749 animate-M15601498778749\" data-id=\"M15601498778749\">\n        \n</div>\n<div class=\"ssd-module M156014987796410 animate-M156014987796410\" data-id=\"M156014987796410\">\n        \n</div>\n<div class=\"ssd-module M156014987804611 animate-M156014987804611\" data-id=\"M156014987804611\">\n        \n</div>\n<div class=\"ssd-module M156014987814912 animate-M156014987814912\" data-id=\"M156014987814912\">\n        \n</div>\n<div class=\"ssd-module M156014987824013 animate-M156014987824013\" data-id=\"M156014987824013\">\n        \n</div>\n<div class=\"ssd-module M156014987834514 animate-M156014987834514\" data-id=\"M156014987834514\">\n        \n</div>\n<div class=\"ssd-module M156014987845415 animate-M156014987845415\" data-id=\"M156014987845415\">\n        \n</div>\n<div class=\"ssd-module M156014987854316 animate-M156014987854316\" data-id=\"M156014987854316\">\n        \n</div>\n<div class=\"ssd-module M156014987860117 animate-M156014987860117\" data-id=\"M156014987860117\">\n        \n</div>\n<div class=\"ssd-module M156014987870918 animate-M156014987870918\" data-id=\"M156014987870918\">\n        \n</div>\n<div class=\"ssd-module M156014987880319 animate-M156014987880319\" data-id=\"M156014987880319\">\n        \n</div>\n<div class=\"ssd-module M156014987890220 animate-M156014987890220\" data-id=\"M156014987890220\">\n        \n</div>\n<div class=\"ssd-module M156014987896521 animate-M156014987896521\" data-id=\"M156014987896521\">\n        \n</div>\n<div class=\"ssd-module M156014987902022 animate-M156014987902022\" data-id=\"M156014987902022\">\n        \n</div>', 'ï¿¥9299.00', 'äº¬ä¸œä»·ä¸ºå•†å“çš„é”€å”®ä»·ï¼Œæ˜¯æ‚¨æœ€ç»ˆå†³å®šæ˜¯å¦è´­ä¹°å•†å“çš„ä¾æ®ã€‚', 'å•†å“å±•ç¤ºçš„åˆ’æ¨ªçº¿ä»·æ ¼ä¸ºå‚è€ƒä»·ï¼Œå¹¶éžåŽŸä»·ï¼Œè¯¥ä»·æ ¼å¯èƒ½æ˜¯å“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·æˆ–ç”±å“ç‰Œä¾›åº”å•†æä¾›çš„æ­£å“é›¶å”®ä»·ï¼ˆå¦‚åŽ‚å•†æŒ‡å¯¼ä»·ã€å»ºè®®é›¶å”®ä»·ç­‰ï¼‰æˆ–è¯¥å•†å“åœ¨äº¬ä¸œå¹³å°ä¸Šæ›¾ç»å±•ç¤ºè¿‡çš„é”€å”®ä»·ï¼›ç”±äºŽåœ°åŒºã€æ—¶é—´çš„å·®å¼‚æ€§å’Œå¸‚åœºè¡Œæƒ…æ³¢åŠ¨ï¼Œå“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·ç­‰å¯èƒ½ä¼šä¸Žæ‚¨è´­ç‰©æ—¶å±•ç¤ºçš„ä¸ä¸€è‡´ï¼Œè¯¥ä»·æ ¼ä»…ä¾›æ‚¨å‚è€ƒã€‚', 'å¾…æœºæ—¶é•¿ï¼šå°äºŽ5å°æ—¶', 'ç³»ç»Ÿï¼šWindows 10', 'å•†å“ç¼–å·ï¼š100003688077');
INSERT INTO `html1911` VALUES ('3', 'è”æƒ³(Lenovo)å°æ–°Air14è‹±å¯¸ AMDé”é¾™ç‰ˆ(å…¨æ–°12nm)è½»è–„ç¬”è®°æœ¬ç”µè„‘(R5-3500U 12G 512G PCIE IPS)è½»å¥¢ç°', 'https://item.jd.com/100004286189.html', 'https://img14.360buyimg.com/n7/jfs/t1/76479/5/10865/71531/5d831e66E2e2ebc53/d65c20d4a7fdff94.jpg', 'å·²æœ‰8ä¸‡+äººè¯„ä»·', 'è”æƒ³ç”µè„‘äº¬ä¸œè‡ªè¥æ——...', 'åŠ å…¥è´­ç‰©è½¦', 'è”æƒ³(Lenovo)å°æ–°Air14è‹±å¯¸ AMDé”é¾™ç‰ˆ(å…¨æ–°12nm)è½»è–„ç¬”è®°æœ¬ç”µè„‘(R5-3500U 12G 512G PCIE IPS)è½»å¥¢ç°', '<div class=\"ssd-module M15655824450551 animate-M15655824450551\" data-id=\"M15655824450551\">\n        \n</div>\n<div class=\"ssd-module M15655824450942 animate-M15655824450942\" data-id=\"M15655824450942\">\n        \n</div>\n<div class=\"ssd-module M15655824451113 animate-M15655824451113\" data-id=\"M15655824451113\">\n        \n</div>\n<div class=\"ssd-module M15655824451324 animate-M15655824451324\" data-id=\"M15655824451324\">\n        \n</div>\n<div class=\"ssd-module M15655824451585 animate-M15655824451585\" data-id=\"M15655824451585\">\n        \n</div>\n<div class=\"ssd-module M15655824451776 animate-M15655824451776\" data-id=\"M15655824451776\">\n        \n</div>\n<div class=\"ssd-module M15655824452007 animate-M15655824452007\" data-id=\"M15655824452007\">\n        \n</div>\n<div class=\"ssd-module M15655824452258 animate-M15655824452258\" data-id=\"M15655824452258\">\n        \n</div>\n<div class=\"ssd-module M156558244525710 animate-M156558244525710\" data-id=\"M156558244525710\">\n        \n</div>\n<div class=\"ssd-module M156558244529311 animate-M156558244529311\" data-id=\"M156558244529311\">\n        \n</div>\n<div class=\"ssd-module M156558244533312 animate-M156558244533312\" data-id=\"M156558244533312\">\n        \n</div>\n<div class=\"ssd-module M156558244536013 animate-M156558244536013\" data-id=\"M156558244536013\">\n        \n</div>\n<div class=\"ssd-module M156558244538614 animate-M156558244538614\" data-id=\"M156558244538614\">\n        \n</div>\n<div class=\"ssd-module M156558244543515 animate-M156558244543515\" data-id=\"M156558244543515\">\n        \n</div>', 'ï¿¥200.00,ï¿¥3999.00', 'äº¬ä¸œä»·ä¸ºå•†å“çš„é”€å”®ä»·ï¼Œæ˜¯æ‚¨æœ€ç»ˆå†³å®šæ˜¯å¦è´­ä¹°å•†å“çš„ä¾æ®ã€‚', 'å•†å“å±•ç¤ºçš„åˆ’æ¨ªçº¿ä»·æ ¼ä¸ºå‚è€ƒä»·ï¼Œå¹¶éžåŽŸä»·ï¼Œè¯¥ä»·æ ¼å¯èƒ½æ˜¯å“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·æˆ–ç”±å“ç‰Œä¾›åº”å•†æä¾›çš„æ­£å“é›¶å”®ä»·ï¼ˆå¦‚åŽ‚å•†æŒ‡å¯¼ä»·ã€å»ºè®®é›¶å”®ä»·ç­‰ï¼‰æˆ–è¯¥å•†å“åœ¨äº¬ä¸œå¹³å°ä¸Šæ›¾ç»å±•ç¤ºè¿‡çš„é”€å”®ä»·ï¼›ç”±äºŽåœ°åŒºã€æ—¶é—´çš„å·®å¼‚æ€§å’Œå¸‚åœºè¡Œæƒ…æ³¢åŠ¨ï¼Œå“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·ç­‰å¯èƒ½ä¼šä¸Žæ‚¨è´­ç‰©æ—¶å±•ç¤ºçš„ä¸ä¸€è‡´ï¼Œè¯¥ä»·æ ¼ä»…ä¾›æ‚¨å‚è€ƒã€‚', 'ç¡¬ç›˜å®¹é‡ï¼š512GB SSD', 'æ˜¾å¡ç±»åˆ«ï¼šé›†æˆæ˜¾å¡', 'å•†å“ç¼–å·ï¼š100004286189');
INSERT INTO `html1911` VALUES ('4', 'è”æƒ³(Lenovo)å°æ–°Air14è‹±å¯¸è‹±ç‰¹å°”é…·ç¿i5 è¶…è½»è–„ç¬”è®°æœ¬ç”µè„‘(I5-10210U 12G 512G MX250 72ï¼…NTSC)è½»å¥¢ç°', 'https://item.jd.com/100007539116.html', 'https://img11.360buyimg.com/n7/jfs/t1/54819/18/11218/246549/5d831d63Ef8285a0d/17a2be91b4d079dc.jpg', 'å·²æœ‰4.7ä¸‡+äººè¯„ä»·', 'è”æƒ³ç”µè„‘äº¬ä¸œè‡ªè¥æ——...', 'åŠ å…¥è´­ç‰©è½¦', 'è”æƒ³(Lenovo)å°æ–°Air14è‹±å¯¸è‹±ç‰¹å°”é…·ç¿i5 è¶…è½»è–„ç¬”è®°æœ¬ç”µè„‘(I5-10210U 12G 512G MX250 72ï¼…NTSC)è½»å¥¢ç°', '<div class=\"ssd-module M15665618270301 animate-M15665618270301\" data-id=\"M15665618270301\">\n        \n</div>\n<div class=\"ssd-module M15665618270912 animate-M15665618270912\" data-id=\"M15665618270912\">\n        \n</div>\n<div class=\"ssd-module M15665618271253 animate-M15665618271253\" data-id=\"M15665618271253\">\n        \n</div>\n<div class=\"ssd-module M15665618271444 animate-M15665618271444\" data-id=\"M15665618271444\">\n        \n</div>\n<div class=\"ssd-module M15665618271635 animate-M15665618271635\" data-id=\"M15665618271635\">\n        \n</div>\n<div class=\"ssd-module M15665618271916 animate-M15665618271916\" data-id=\"M15665618271916\">\n        \n</div>\n<div class=\"ssd-module M15665618272097 animate-M15665618272097\" data-id=\"M15665618272097\">\n        \n</div>\n<div class=\"ssd-module M15665618272318 animate-M15665618272318\" data-id=\"M15665618272318\">\n        \n</div>\n<div class=\"ssd-module M15665618272529 animate-M15665618272529\" data-id=\"M15665618272529\">\n        \n</div>\n<div class=\"ssd-module M156656182728310 animate-M156656182728310\" data-id=\"M156656182728310\">\n        \n</div>\n<div class=\"ssd-module M156656182733111 animate-M156656182733111\" data-id=\"M156656182733111\">\n        \n</div>\n<div class=\"ssd-module M156656182737112 animate-M156656182737112\" data-id=\"M156656182737112\">\n        \n</div>\n<div class=\"ssd-module M156656182741313 animate-M156656182741313\" data-id=\"M156656182741313\">\n        \n</div>\n<div class=\"ssd-module M156656182745415 animate-M156656182745415\" data-id=\"M156656182745415\">\n        \n</div>\n<div class=\"ssd-module M156656182748716 animate-M156656182748716\" data-id=\"M156656182748716\">\n        \n</div>\n<div class=\"ssd-module M156656182751318 animate-M156656182751318\" data-id=\"M156656182751318\">\n        \n</div>\n<div class=\"ssd-module M156656182754319 animate-M156656182754319\" data-id=\"M156656182754319\">\n        \n</div>', 'ï¿¥200.00,ï¿¥5199.00', 'äº¬ä¸œä»·ä¸ºå•†å“çš„é”€å”®ä»·ï¼Œæ˜¯æ‚¨æœ€ç»ˆå†³å®šæ˜¯å¦è´­ä¹°å•†å“çš„ä¾æ®ã€‚', 'å•†å“å±•ç¤ºçš„åˆ’æ¨ªçº¿ä»·æ ¼ä¸ºå‚è€ƒä»·ï¼Œå¹¶éžåŽŸä»·ï¼Œè¯¥ä»·æ ¼å¯èƒ½æ˜¯å“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·æˆ–ç”±å“ç‰Œä¾›åº”å•†æä¾›çš„æ­£å“é›¶å”®ä»·ï¼ˆå¦‚åŽ‚å•†æŒ‡å¯¼ä»·ã€å»ºè®®é›¶å”®ä»·ç­‰ï¼‰æˆ–è¯¥å•†å“åœ¨äº¬ä¸œå¹³å°ä¸Šæ›¾ç»å±•ç¤ºè¿‡çš„é”€å”®ä»·ï¼›ç”±äºŽåœ°åŒºã€æ—¶é—´çš„å·®å¼‚æ€§å’Œå¸‚åœºè¡Œæƒ…æ³¢åŠ¨ï¼Œå“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·ç­‰å¯èƒ½ä¼šä¸Žæ‚¨è´­ç‰©æ—¶å±•ç¤ºçš„ä¸ä¸€è‡´ï¼Œè¯¥ä»·æ ¼ä»…ä¾›æ‚¨å‚è€ƒã€‚', 'å¾…æœºæ—¶é•¿ï¼š7-9å°æ—¶', 'ç³»ç»Ÿï¼šWindows 10', 'å•†å“ç¼–å·ï¼š100007539116');
INSERT INTO `html1911` VALUES ('5', 'è”æƒ³(Lenovo)å°æ–°Pro13.3è‹±å¯¸è‹±ç‰¹å°”é…·ç¿i7å…¨é¢å±è¶…è½»è–„ç¬”è®°æœ¬ç”µè„‘(å…­æ ¸I7 16G 512G MX250 QHD 100%sRGB)', 'https://item.jd.com/100008535982.html', 'https://img12.360buyimg.com/n7/jfs/t1/52246/31/11250/80656/5d81fba9Eda62a18d/d7281d312556d98b.jpg', 'å·²æœ‰4.7ä¸‡+äººè¯„ä»·', 'è”æƒ³ç”µè„‘äº¬ä¸œè‡ªè¥æ——...', 'åŠ å…¥è´­ç‰©è½¦', 'è”æƒ³(Lenovo)å°æ–°Pro13.3è‹±å¯¸è‹±ç‰¹å°”é…·ç¿i7å…¨é¢å±è¶…è½»è–„ç¬”è®°æœ¬ç”µè„‘(å…­æ ¸I7 16G 512G MX250 QHD 100%sRGB)', '<div class=\"ssd-module M15693142813352 animate-M15693142813352\" data-id=\"M15693142813352\">\n        \n</div>\n<div class=\"ssd-module M15693142813483 animate-M15693142813483\" data-id=\"M15693142813483\">\n        \n</div>\n<div class=\"ssd-module M15693142813644 animate-M15693142813644\" data-id=\"M15693142813644\">\n        \n</div>\n<div class=\"ssd-module M15693142813846 animate-M15693142813846\" data-id=\"M15693142813846\">\n        \n</div>\n<div class=\"ssd-module M15693142814047 animate-M15693142814047\" data-id=\"M15693142814047\">\n        \n</div>\n<div class=\"ssd-module M15693142814238 animate-M15693142814238\" data-id=\"M15693142814238\">\n        \n</div>\n<div class=\"ssd-module M15693142814419 animate-M15693142814419\" data-id=\"M15693142814419\">\n        \n</div>\n<div class=\"ssd-module M156931428145710 animate-M156931428145710\" data-id=\"M156931428145710\">\n        \n</div>\n<div class=\"ssd-module M156931428148012 animate-M156931428148012\" data-id=\"M156931428148012\">\n        \n</div>\n<div class=\"ssd-module M156931428152214 animate-M156931428152214\" data-id=\"M156931428152214\">\n        \n</div>\n<div class=\"ssd-module M156931428155215 animate-M156931428155215\" data-id=\"M156931428155215\">\n        \n</div>\n<div class=\"ssd-module M156931428159116 animate-M156931428159116\" data-id=\"M156931428159116\">\n        \n</div>\n<div class=\"ssd-module M156931428161218 animate-M156931428161218\" data-id=\"M156931428161218\">\n        \n</div>\n<div class=\"ssd-module M156931428163619 animate-M156931428163619\" data-id=\"M156931428163619\">\n        \n</div>\n<div class=\"ssd-module M156931428166420 animate-M156931428166420\" data-id=\"M156931428166420\">\n        \n</div>\n<div class=\"ssd-module M156931428169721 animate-M156931428169721\" data-id=\"M156931428169721\">\n        \n</div>\n<div class=\"ssd-module M156931428171822 animate-M156931428171822\" data-id=\"M156931428171822\">\n        \n</div>\n<div class=\"ssd-module M156931428174424 animate-M156931428174424\" data-id=\"M156931428174424\">\n        \n</div>\n<div class=\"ssd-module M156931428176625 animate-M156931428176625\" data-id=\"M156931428176625\">\n        \n</div>', 'ï¿¥200.00,ï¿¥6999.00', 'äº¬ä¸œä»·ä¸ºå•†å“çš„é”€å”®ä»·ï¼Œæ˜¯æ‚¨æœ€ç»ˆå†³å®šæ˜¯å¦è´­ä¹°å•†å“çš„ä¾æ®ã€‚', 'å•†å“å±•ç¤ºçš„åˆ’æ¨ªçº¿ä»·æ ¼ä¸ºå‚è€ƒä»·ï¼Œå¹¶éžåŽŸä»·ï¼Œè¯¥ä»·æ ¼å¯èƒ½æ˜¯å“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·æˆ–ç”±å“ç‰Œä¾›åº”å•†æä¾›çš„æ­£å“é›¶å”®ä»·ï¼ˆå¦‚åŽ‚å•†æŒ‡å¯¼ä»·ã€å»ºè®®é›¶å”®ä»·ç­‰ï¼‰æˆ–è¯¥å•†å“åœ¨äº¬ä¸œå¹³å°ä¸Šæ›¾ç»å±•ç¤ºè¿‡çš„é”€å”®ä»·ï¼›ç”±äºŽåœ°åŒºã€æ—¶é—´çš„å·®å¼‚æ€§å’Œå¸‚åœºè¡Œæƒ…æ³¢åŠ¨ï¼Œå“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·ç­‰å¯èƒ½ä¼šä¸Žæ‚¨è´­ç‰©æ—¶å±•ç¤ºçš„ä¸ä¸€è‡´ï¼Œè¯¥ä»·æ ¼ä»…ä¾›æ‚¨å‚è€ƒã€‚', 'ç¡¬ç›˜å®¹é‡ï¼š512GB SSD', 'ç³»ç»Ÿï¼šWindows 10', 'å•†å“ç¼–å·ï¼š100008535982');
INSERT INTO `html1911` VALUES ('6', 'åŽç¡•(ASUS) é£žè¡Œå ¡åž’7 ä¹ä»£è‹±ç‰¹å°”é…·ç¿i7 120Hzé«˜é€Ÿå±æ¸¸æˆç¬”è®°æœ¬ç”µè„‘(i7-9750H 8G 512SSD GTX1650)é‡‘å±žç”µç«ž', 'https://item.jd.com/100005011366.html', 'https://img11.360buyimg.com/n7/jfs/t1/96285/10/1632/399722/5dc2e2dfE398e1953/76cead029b034c06.jpg', 'å·²æœ‰8.4ä¸‡+äººè¯„ä»·', 'åŽç¡•äº¬ä¸œè‡ªè¥å®˜æ–¹æ——...', 'åŠ å…¥è´­ç‰©è½¦', 'åŽç¡•(ASUS) é£žè¡Œå ¡åž’7 ä¹ä»£è‹±ç‰¹å°”é…·ç¿i7 120Hzé«˜é€Ÿå±æ¸¸æˆç¬”è®°æœ¬ç”µè„‘(i7-9750H 8G 512SSD GTX1650)é‡‘å±žç”µç«ž', '<div class=\"ssd-module M15553272182122 animate-M15553272182122\" data-id=\"M15553272182122\">\n        \n</div>\n<div class=\"ssd-module M15634152881241 animate-M15634152881241\" data-id=\"M15634152881241\">\n        \n</div>\n<div class=\"ssd-module M15553272182373 animate-M15553272182373\" data-id=\"M15553272182373\">\n        \n</div>\n<div class=\"ssd-module M15553272182604 animate-M15553272182604\" data-id=\"M15553272182604\">\n        \n</div>\n<div class=\"ssd-module M15553272182795 animate-M15553272182795\" data-id=\"M15553272182795\">\n        \n</div>\n<div class=\"ssd-module M15553272182996 animate-M15553272182996\" data-id=\"M15553272182996\">\n        \n</div>\n<div class=\"ssd-module M15553272183257 animate-M15553272183257\" data-id=\"M15553272183257\">\n        \n</div>\n<div class=\"ssd-module M15553272183468 animate-M15553272183468\" data-id=\"M15553272183468\">\n        \n</div>\n<div class=\"ssd-module M15553272183719 animate-M15553272183719\" data-id=\"M15553272183719\">\n        \n</div>\n<div class=\"ssd-module M155532721839410 animate-M155532721839410\" data-id=\"M155532721839410\">\n        \n</div>\n<div class=\"ssd-module M155532721841611 animate-M155532721841611\" data-id=\"M155532721841611\">\n        \n</div>\n<div class=\"ssd-module M155532721844612 animate-M155532721844612\" data-id=\"M155532721844612\">\n        \n</div>\n<div class=\"ssd-module M155532721847913 animate-M155532721847913\" data-id=\"M155532721847913\">\n        \n</div>\n<div class=\"ssd-module M155532721850414 animate-M155532721850414\" data-id=\"M155532721850414\">\n        \n</div>\n<div class=\"ssd-module M155532721853215 animate-M155532721853215\" data-id=\"M155532721853215\">\n        \n</div>\n<div class=\"ssd-module M155532721855716 animate-M155532721855716\" data-id=\"M155532721855716\">\n        \n</div>\n<div class=\"ssd-module M155532721859517 animate-M155532721859517\" data-id=\"M155532721859517\">\n        \n</div>\n<div class=\"ssd-module M155532721862518 animate-M155532721862518\" data-id=\"M155532721862518\">\n        \n</div>\n<div class=\"ssd-module M155532721865519 animate-M155532721865519\" data-id=\"M155532721865519\">\n        \n</div>\n<div class=\"ssd-module M15550558860951 animate-M15550558860951\" data-id=\"M15550558860951\">\n        \n</div>\n<div class=\"ssd-module M15550558861202 animate-M15550558861202\" data-id=\"M15550558861202\">\n        \n</div>\n<div class=\"ssd-module M15550558861513 animate-M15550558861513\" data-id=\"M15550558861513\">\n        \n</div>', 'ï¿¥6999.00', 'äº¬ä¸œä»·ä¸ºå•†å“çš„é”€å”®ä»·ï¼Œæ˜¯æ‚¨æœ€ç»ˆå†³å®šæ˜¯å¦è´­ä¹°å•†å“çš„ä¾æ®ã€‚', 'å•†å“å±•ç¤ºçš„åˆ’æ¨ªçº¿ä»·æ ¼ä¸ºå‚è€ƒä»·ï¼Œå¹¶éžåŽŸä»·ï¼Œè¯¥ä»·æ ¼å¯èƒ½æ˜¯å“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·æˆ–ç”±å“ç‰Œä¾›åº”å•†æä¾›çš„æ­£å“é›¶å”®ä»·ï¼ˆå¦‚åŽ‚å•†æŒ‡å¯¼ä»·ã€å»ºè®®é›¶å”®ä»·ç­‰ï¼‰æˆ–è¯¥å•†å“åœ¨äº¬ä¸œå¹³å°ä¸Šæ›¾ç»å±•ç¤ºè¿‡çš„é”€å”®ä»·ï¼›ç”±äºŽåœ°åŒºã€æ—¶é—´çš„å·®å¼‚æ€§å’Œå¸‚åœºè¡Œæƒ…æ³¢åŠ¨ï¼Œå“ç‰Œä¸“æŸœæ ‡ä»·ã€å•†å“åŠç‰Œä»·ç­‰å¯èƒ½ä¼šä¸Žæ‚¨è´­ç‰©æ—¶å±•ç¤ºçš„ä¸ä¸€è‡´ï¼Œè¯¥ä»·æ ¼ä»…ä¾›æ‚¨å‚è€ƒã€‚', 'å¾…æœºæ—¶é•¿ï¼šå°äºŽ5å°æ—¶', 'ç³»ç»Ÿï¼šWindows 10', 'å•†å“ç¼–å·ï¼š100005011366');

-- ----------------------------
-- Table structure for inf_cart
-- ----------------------------
DROP TABLE IF EXISTS `inf_cart`;
CREATE TABLE `inf_cart` (
  `cid` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `gprice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inf_cart
-- ----------------------------
INSERT INTO `inf_cart` VALUES ('1', '1', '1', '1', '普洱茶', '茶叶阁', '66.00');
INSERT INTO `inf_cart` VALUES ('2', '1', '4', '1', '铁观音', '茶叶阁', '77.00');
INSERT INTO `inf_cart` VALUES ('3', '2', '2', '1', '火锅料底', '麻辣香锅', '88.00');
INSERT INTO `inf_cart` VALUES ('4', '2', '3', '1', '鸡汤料底', '麻辣香锅', '99.00');
INSERT INTO `inf_cart` VALUES ('5', '1', '1', '2', '普洱茶', '茶叶阁', '66.00');
INSERT INTO `inf_cart` VALUES ('6', '1', '4', '2', '铁观音', '茶叶阁', '77.00');

-- ----------------------------
-- Table structure for inf_good
-- ----------------------------
DROP TABLE IF EXISTS `inf_good`;
CREATE TABLE `inf_good` (
  `gid` int(11) NOT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inf_good
-- ----------------------------
INSERT INTO `inf_good` VALUES ('1', '普洱茶', '1');
INSERT INTO `inf_good` VALUES ('2', '火锅料底', '2');
INSERT INTO `inf_good` VALUES ('3', '鸡汤料底', '2');
INSERT INTO `inf_good` VALUES ('4', '铁观音', '1');

-- ----------------------------
-- Table structure for inf_shop
-- ----------------------------
DROP TABLE IF EXISTS `inf_shop`;
CREATE TABLE `inf_shop` (
  `sid` int(11) NOT NULL,
  `sname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inf_shop
-- ----------------------------
INSERT INTO `inf_shop` VALUES ('1', '茶叶阁');
INSERT INTO `inf_shop` VALUES ('2', '麻辣香锅');

-- ----------------------------
-- Table structure for odergoods2
-- ----------------------------
DROP TABLE IF EXISTS `odergoods2`;
CREATE TABLE `odergoods2` (
  `did` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `repertory` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `gid` varchar(255) DEFAULT NULL,
  `sid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of odergoods2
-- ----------------------------
INSERT INTO `odergoods2` VALUES ('1', 'é“è§‚éŸ³', '88', '1', '88', '67', '1', '1', '1', 'èŒ¶å¶é˜');
INSERT INTO `odergoods2` VALUES ('2', 'æ™®æ´±', '90', '1', '90', '88', '1', '2', '1', 'èŒ¶å¶é˜');
INSERT INTO `odergoods2` VALUES ('3', 'æŒ‚é¢', '18', '1', '18', '40', '1', '3', '2', 'é™ˆå…‹æ˜Žå®˜ç½‘');
INSERT INTO `odergoods2` VALUES ('4', 'é“è§‚éŸ³', '88', '1', '88', '67', '2', '1', '1', 'èŒ¶å¶é˜');
INSERT INTO `odergoods2` VALUES ('5', 'æ™®æ´±', '90', '1', '90', '88', '2', '2', '1', 'èŒ¶å¶é˜');
INSERT INTO `odergoods2` VALUES ('6', 'æŒ‚é¢', '18', '1', '18', '40', '3', '3', '2', 'é™ˆå…‹æ˜Žå®˜ç½‘');

-- ----------------------------
-- Table structure for ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `ordergoods`;
CREATE TABLE `ordergoods` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `repertory` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordergoods
-- ----------------------------
INSERT INTO `ordergoods` VALUES ('2', 'è”æž', '20', '1', '20', '6', '1');
INSERT INTO `ordergoods` VALUES ('1', 'è¥¿ç“œ', '20', '1', '20', '5', '1');
INSERT INTO `ordergoods` VALUES ('3', 'è è', '10', '1', '10', '7', '1');
INSERT INTO `ordergoods` VALUES ('4', 'æ¡ƒå­', '5', '1', '5', '8', '1');
INSERT INTO `ordergoods` VALUES ('6', 'è‹¹æžœ', '6', '1', '6', '10', '3');
INSERT INTO `ordergoods` VALUES ('5', 'å“ˆå¯†ç“œ', '20', '1', '20', '9', '1');
INSERT INTO `ordergoods` VALUES ('7', 'è è', '20', '1', '20', '5', '1');
INSERT INTO `ordergoods` VALUES ('8', 'æ¡ƒå­', '20', '1', '20', '6', '1');
INSERT INTO `ordergoods` VALUES ('9', 'å“ˆå¯†ç“œ', '10', '1', '10', '7', '1');
INSERT INTO `ordergoods` VALUES ('10', 'è‹¹æžœ', '5', '1', '5', '8', '1');
INSERT INTO `ordergoods` VALUES ('11', 'è è', '20', '1', '20', '9', '1');
INSERT INTO `ordergoods` VALUES ('12', 'æ¡ƒå­', '6', '1', '6', '10', '3');
INSERT INTO `ordergoods` VALUES ('13', 'å“ˆå¯†ç“œ', '20', '1', '20', '5', '1');
INSERT INTO `ordergoods` VALUES ('14', 'è‹¹æžœ', '20', '1', '20', '6', '1');
INSERT INTO `ordergoods` VALUES ('15', 'è è', '10', '1', '10', '7', '1');
INSERT INTO `ordergoods` VALUES ('16', 'æ¡ƒå­', '5', '1', '5', '8', '1');
INSERT INTO `ordergoods` VALUES ('17', 'å“ˆå¯†ç“œ', '20', '1', '20', '9', '1');
INSERT INTO `ordergoods` VALUES ('18', 'è‹¹æžœ', '6', '1', '6', '10', '3');
INSERT INTO `ordergoods` VALUES ('19', 'è è', '5', '1', '5', '9', '1');
INSERT INTO `ordergoods` VALUES ('20', 'æ¡ƒå­', '20', '1', '20', '10', '3');
INSERT INTO `ordergoods` VALUES ('21', 'å“ˆå¯†ç“œ', '6', '1', '6', '10', '3');

-- ----------------------------
-- Table structure for total
-- ----------------------------
DROP TABLE IF EXISTS `total`;
CREATE TABLE `total` (
  `total` int(5) DEFAULT NULL,
  `priceall` int(5) DEFAULT NULL,
  `uid` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of total
-- ----------------------------
INSERT INTO `total` VALUES ('1', '20', '1');

-- ----------------------------
-- Table structure for userinf
-- ----------------------------
DROP TABLE IF EXISTS `userinf`;
CREATE TABLE `userinf` (
  `uid` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL,
  `regtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `adr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinf
-- ----------------------------
INSERT INTO `userinf` VALUES ('23', 'aaa', 'bbb', '2019-12-25 15:00:43', null);
INSERT INTO `userinf` VALUES ('24', '白素贞', '111111', '2019-12-25 15:03:03', null);
INSERT INTO `userinf` VALUES ('10', 'dumeng', '123456', '2019-11-05 15:07:42', null);
INSERT INTO `userinf` VALUES ('13', 'malin123', '123456', '2019-11-05 15:15:30', null);
INSERT INTO `userinf` VALUES ('14', 'malin789', '123456', '2019-11-05 15:17:21', null);
INSERT INTO `userinf` VALUES ('15', 'lige23', '123456', '2019-11-05 15:17:47', null);
INSERT INTO `userinf` VALUES ('16', 'jianye', '123456', '2019-12-30 16:12:42', 'http://localhost:1920/uploads/timg-1577693562882.jpg');
INSERT INTO `userinf` VALUES ('17', 'jianye', '123456', '2019-11-05 15:28:32', null);
INSERT INTO `userinf` VALUES ('20', 'dd', 'ddd', '2019-11-06 09:42:52', null);
INSERT INTO `userinf` VALUES ('21', '杰克', '222222', '2019-12-26 10:35:00', null);
INSERT INTO `userinf` VALUES ('22', 'ddd', 'ddd', '2019-11-06 16:34:04', null);
INSERT INTO `userinf` VALUES ('26', 'malin', '111111', '2019-12-30 11:25:45', null);
INSERT INTO `userinf` VALUES ('27', 'xiaoxin', '96e79218965eb72c92a549dd5a330112', '2019-12-30 11:27:20', null);
INSERT INTO `userinf` VALUES ('28', 'xiaoqing', '96e79218965eb72c92a549dd5a330112', '2019-12-30 11:31:49', null);
SET FOREIGN_KEY_CHECKS=1;
