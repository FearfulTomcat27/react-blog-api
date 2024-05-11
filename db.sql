/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : react-blog-js

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 11/05/2024 23:40:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postId` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mood` tinyint(1) DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `date` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of comments
-- ----------------------------
BEGIN;
INSERT INTO `comments` (`id`, `postId`, `name`, `mood`, `comment`, `date`, `avatar`) VALUES (1, 1, 'yuyong', 1, '文章的结构安排得相当合理，从导入到深入逐步展开，使读者能够循序渐进地理解主题。尤其是在...方面的讨论，非常具有启发性。不过，如果能够在...方面加入更多的实例或案例分析，可能会使文章的论证更为丰富和完整。总的来说，这是一篇值得一读的好文章，推荐给对...感兴趣的朋友们。', '2024-04-10', 'https://1.gravatar.com/avatar/5d315dad31249a77558b6434ef1e5820');
INSERT INTO `comments` (`id`, `postId`, `name`, `mood`, `comment`, `date`, `avatar`) VALUES (2, 1, 'yuyong', 1, '我对文章中提到的...有些保留意见。虽然作者的论点很有说服力，并且提供了一系列的数据支持，但我觉得在...的分析上略显片面。可能在考虑...的同时，也应该从...的角度进一步探讨。不过，整体来看，这篇文章仍然是一篇很棒的作品，让我获益匪浅。', '2024-04-10', 'https://1.gravatar.com/avatar/5d315dad31249a77558b6434ef1e5820');
INSERT INTO `comments` (`id`, `postId`, `name`, `mood`, `comment`, `date`, `avatar`) VALUES (6, 2, 'yuyong', 0, '烂透了!', '2024-04-11', 'https://1.gravatar.com/avatar/5d315dad31249a77558b6434ef1e5820');
INSERT INTO `comments` (`id`, `postId`, `name`, `mood`, `comment`, `date`, `avatar`) VALUES (10, 3, '喻勇', 0, '虽然有好有坏，但我还是觉得差多一点', '2024-05-07 15:57:56', 'https://1.gravatar.com/avatar/5d315dad31249a77558b6434ef1e5820');
INSERT INTO `comments` (`id`, `postId`, `name`, `mood`, `comment`, `date`, `avatar`) VALUES (11, 3, '喻勇', 1, '古今中外七言第一!', '2024-05-09 23:30:57', 'https://1.gravatar.com/avatar/5d315dad31249a77558b6434ef1e5820');
COMMIT;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
INSERT INTO `posts` (`id`, `title`, `content`, `date`) VALUES (1, '出师表', '先帝创业未半而中道崩殂，今天下三分，益州疲弊，此诚危急存亡之秋也。然侍卫之臣不懈于内，忠志之士忘身于外者，盖追先帝之殊遇，欲报之于陛下也。诚宜开张圣听，以光先帝遗德，恢弘志士之气，不宜妄自菲薄，引喻失义，以塞忠谏之路也。宫中府中，俱为一体，陟罚臧否，不宜异同。若有作奸犯科及为忠善者，宜付有司论其刑赏，以昭陛下平明之理，不宜偏私，使内外异法也。侍中、侍郎郭攸之、费祎、董允等，此皆良实，志虑忠纯，是以先帝简拔以遗陛下。愚以为宫中之事，事无大小，悉以咨之，然后施行，必能裨补阙漏，有所广益。将军向宠，性行淑均，晓畅军事，试用于昔日，先帝称之曰能，是以众议举宠为督。愚以为营中之事，悉以咨之，必能使行阵和睦，优劣得所。亲贤臣，远小人，此先汉所以兴隆也；亲小人，远贤臣，此后汉所以倾颓也。先帝在时，每与臣论此事，未尝不叹息痛恨于桓、灵也。侍中、尚书、长史、参军，此悉贞良死节之臣，愿陛下亲之信之，则汉室之隆，可计日而待也。臣本布衣，躬耕于南阳，苟全性命于乱世，不求闻达于诸侯。先帝不以臣卑鄙，猥自枉屈，三顾臣于草庐之中，咨臣以当世之事，由是感激，遂许先帝以驱驰。后值倾覆，受任于败军之际，奉命于危难之间，尔来二十有一年矣。先帝知臣谨慎，故临崩寄臣以大事也。受命以来，夙夜忧叹，恐托付不效，以伤先帝之明，故五月渡泸，深入不毛。今南方已定，兵甲已足，当奖率三军，北定中原，庶竭驽钝，攘除奸凶，兴复汉室，还于旧都。此臣所以报先帝而忠陛下之职分也。至于斟酌损益，进尽忠言，则攸之、祎、允之任也。愿陛下托臣以讨贼兴复之效，不效，则治臣之罪，以告先帝之灵。若无兴德之言，则责攸之、祎、允等之慢，以彰其咎；陛下亦宜自谋，以咨诹善道，察纳雅言，深追先帝遗诏，臣不胜受恩感激。今当远离，临表涕零，不知所言。', '2024-04-10');
INSERT INTO `posts` (`id`, `title`, `content`, `date`) VALUES (2, '醉中赠符载', '白社会中尝共醉，青云路上未相逢。时人莫小池中水，浅处无妨有卧龙。', '2024-04-11');
INSERT INTO `posts` (`id`, `title`, `content`, `date`) VALUES (3, '登高', '风急天高猿啸哀，渚清沙白鸟飞回。无边落木萧萧下，不尽长江滚滚来。万里悲秋常作客，百年多病独登台。艰难苦恨繁霜鬓，潦倒新停浊酒杯。', '2024-04-12');
INSERT INTO `posts` (`id`, `title`, `content`, `date`) VALUES (4, '欧洲冠军联赛', '欧洲冠军联赛是欧洲足球协会联盟主办的年度足球比赛，代表欧洲俱乐部足球最高荣誉和水平，被认为是全世界最高素质、最具影响力以及最高水平的俱乐部赛事，亦是世界上奖金最高的足球赛事和体育赛事之一。\"', '2024-05-09 23:14:06');
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postId` int DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tags
-- ----------------------------
BEGIN;
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (1, 1, '三国演义');
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (2, 1, '历史');
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (3, 2, '古文');
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (4, 2, '诗词');
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (5, 3, '古文');
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (6, 3, '诗词');
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (7, 4, '欧冠');
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (8, 4, '足球');
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (9, 4, '国际足球');
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (35, 4, '测试');
INSERT INTO `tags` (`id`, `postId`, `tag`) VALUES (36, 4, 'test');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `username`, `email`, `password`, `avatar`, `role`) VALUES (1, 'yuyong', '1471335448@qq.com', '123456', 'https://1.gravatar.com/avatar/5d315dad31249a77558b6434ef1e5820', 'admin');
INSERT INTO `user` (`id`, `username`, `email`, `password`, `avatar`, `role`) VALUES (2, 'admin', '1471335448@qq.com', '$2a$10$1POMV1WUuSU1rUMfopiKPOXADpKXu5W6Dt.0WCJ.2.q6N7ov6doX6', 'https://1.gravatar.com/avatar/5d315dad31249a77558b6434ef1e5820', 'admin');
INSERT INTO `user` (`id`, `username`, `email`, `password`, `avatar`, `role`) VALUES (3, 'FearfulTomcat27', '1471335448@qq.com', '123456', 'https://1.gravatar.com/avatar/5d315dad31249a77558b6434ef1e5820', 'user');
INSERT INTO `user` (`id`, `username`, `email`, `password`, `avatar`, `role`) VALUES (9, '32131231', '123121@qq.com', '123125125', 'https://1.gravatar.com/avatar/db63cb8d6e22e2799de1f53ad8697bfd', 'user');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
