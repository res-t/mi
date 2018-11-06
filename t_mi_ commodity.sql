/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : t_mi

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-11-05 21:18:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_mi_ commodity
-- ----------------------------
DROP TABLE IF EXISTS `t_mi_ commodity`;
CREATE TABLE `t_mi_ commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `type_id` int(11) DEFAULT NULL COMMENT '分类id',
  `name` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `sell_point` varchar(50) DEFAULT NULL COMMENT '商品卖点',
  `title` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `price` bigint(20) DEFAULT NULL COMMENT '单价',
  `num` int(10) DEFAULT NULL COMMENT '库存数量',
  `image` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `versions` varchar(50) DEFAULT NULL COMMENT '版本型号',
  `colour` varchar(20) DEFAULT NULL COMMENT '颜色',
  `priority` int(4) DEFAULT NULL COMMENT '显示优先级',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '最后更改人',
  `modified_time` datetime DEFAULT NULL COMMENT '最后更改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mi_ commodity
-- ----------------------------
INSERT INTO `t_mi_ commodity` VALUES ('1', '1', '小米8', '小米自营', '「11月1日早10点首卖」「订金预售用户可于10月31日0-24点支付尾款」磁动力滑盖全面屏 / 前后旗舰 AI 双摄 / 四曲面彩色陶瓷机身 / 高效 10W 无线充电', '3999', '1000', '', '8GB+256GB', '黑色', null, '2018-10-29 21:35:36', 'admin', 'admin', '2018-10-29 21:35:51');
