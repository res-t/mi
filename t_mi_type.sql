/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : t_mi

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-11-05 21:18:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_mi_type
-- ----------------------------
DROP TABLE IF EXISTS `t_mi_type`;
CREATE TABLE `t_mi_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '左边栏大分类id',
  `name` varchar(30) DEFAULT NULL COMMENT '分类名',
  `is_parent` int(11) DEFAULT NULL COMMENT '是否是大分类   1：是  0：否',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mi_type
-- ----------------------------
INSERT INTO `t_mi_type` VALUES ('1', '0', '手机 电话卡', '1', null);
INSERT INTO `t_mi_type` VALUES ('2', '0', '电视 盒子', '1', null);
INSERT INTO `t_mi_type` VALUES ('3', '0', '笔记本 平板', '1', null);
INSERT INTO `t_mi_type` VALUES ('4', '0', '家电 插线板', '1', null);
INSERT INTO `t_mi_type` VALUES ('5', '0', '出行 穿戴', '1', null);
INSERT INTO `t_mi_type` VALUES ('6', '0', '智能 路由器', '1', null);
INSERT INTO `t_mi_type` VALUES ('7', '0', '电源 配件', '1', null);
INSERT INTO `t_mi_type` VALUES ('8', '0', '健康 儿童', '1', null);
INSERT INTO `t_mi_type` VALUES ('9', '0', '耳机 音响', '1', null);
INSERT INTO `t_mi_type` VALUES ('10', '0', '生活 箱包', '1', null);
INSERT INTO `t_mi_type` VALUES ('11', '4', '米家互联网空调', '0', 'http://127.0.0.1:3000/img/kongtiaoguan140.png');
INSERT INTO `t_mi_type` VALUES ('12', '4', ' 净水器', '0', 'http://127.0.0.1:3000/img/jingshuiqi80haha.jpg');
INSERT INTO `t_mi_type` VALUES ('13', '4', '净水器滤芯', '0', 'http://127.0.0.1:3000/img/lvxinbashi.png');
INSERT INTO `t_mi_type` VALUES ('14', '4', '扫地机器人', '0', 'http://127.0.0.1:3000/img/jiqiren.jpg');
INSERT INTO `t_mi_type` VALUES ('15', '4', '扫地机配件', '0', 'http://127.0.0.1:3000/img/saodipeijian-80.jpg');
INSERT INTO `t_mi_type` VALUES ('16', '4', '空气净化器', '0', 'http://127.0.0.1:3000/img/jinghuaqi2S-80.jpg');
INSERT INTO `t_mi_type` VALUES ('17', '4', '电饭煲', '0', 'http://127.0.0.1:3000/img/yalidianfanbao-80.jpg');
INSERT INTO `t_mi_type` VALUES ('18', '4', '电磁炉', '0', 'http://127.0.0.1:3000/img/diancilu-80.jpg');
INSERT INTO `t_mi_type` VALUES ('19', '4', '厨房用具', '0', 'http://127.0.0.1:3000/img/tangguo-80.jpg');
INSERT INTO `t_mi_type` VALUES ('20', '4', ' 电水壶', '0', 'http://127.0.0.1:3000/img/dianshuihu-80.jpg');
INSERT INTO `t_mi_type` VALUES ('21', '4', '料理机', '0', 'http://127.0.0.1:3000/img/liaoliji80.jpg');
INSERT INTO `t_mi_type` VALUES ('22', '4', '滤水器', '0', 'http://127.0.0.1:3000/img/lvshuihu80.jpg');
INSERT INTO `t_mi_type` VALUES ('23', '4', '落地风扇', '0', 'http://127.0.0.1:3000/img/mijiadianfengshan80.png');
INSERT INTO `t_mi_type` VALUES ('24', '4', '投影仪', '0', 'http://127.0.0.1:3000/img/touyingyi80.jpg');
INSERT INTO `t_mi_type` VALUES ('25', '4', '灯具', '0', 'http://127.0.0.1:3000/img/xidingdeng-80.jpg');
INSERT INTO `t_mi_type` VALUES ('26', '4', '插线板', '0', 'http://127.0.0.1:3000/img/chaxianban80.jpg');
INSERT INTO `t_mi_type` VALUES ('27', '5', '手环手表', '0', 'http://127.0.0.1:3000/img/shouhuan3.jpg');
INSERT INTO `t_mi_type` VALUES ('28', '5', ' VR', '0', 'http://127.0.0.1:3000/img/VRyitiji80.jpg');
INSERT INTO `t_mi_type` VALUES ('29', '5', '平衡车', '0', 'http://127.0.0.1:3000/img/scooter-80.jpg');
INSERT INTO `t_mi_type` VALUES ('30', '5', '滑板车', '0', 'http://127.0.0.1:3000/img/scooter2-80.jpg');
INSERT INTO `t_mi_type` VALUES ('31', '5', '自行车', '0', 'http://127.0.0.1:3000/img/zxc80-80.jpg');
INSERT INTO `t_mi_type` VALUES ('32', '5', '车载逆变器', '0', 'http://127.0.0.1:3000/img/chezainibianqi80.jpg');
INSERT INTO `t_mi_type` VALUES ('33', '5', '平衡车配件', '0', 'http://127.0.0.1:3000/img/peijian80.jpg');
INSERT INTO `t_mi_type` VALUES ('34', '5', '智能后视镜', '0', 'http://127.0.0.1:3000/img/mirror-80.jpg');
INSERT INTO `t_mi_type` VALUES ('35', '5', '车载空气净化器', '0', 'http://127.0.0.1:3000/img/chezaikongjing.jpg');
INSERT INTO `t_mi_type` VALUES ('36', '6', '路由器', '0', 'http://127.0.0.1:3000/img/luyouqi4_80.jpg');
INSERT INTO `t_mi_type` VALUES ('37', '6', '对讲机', '0', 'http://127.0.0.1:3000/img/duijiangji.jpg');
INSERT INTO `t_mi_type` VALUES ('38', '6', ' 智能家庭', '0', 'http://127.0.0.1:3000/img/zhinengjiating80.jpg');
INSERT INTO `t_mi_type` VALUES ('39', '6', '无人机', '0', 'http://127.0.0.1:3000/img/wurenji80.jpg');
INSERT INTO `t_mi_type` VALUES ('40', '6', '摄像机', '0', 'http://127.0.0.1:3000/img/camera-head-80.jpg');
INSERT INTO `t_mi_type` VALUES ('41', '6', '照相机', '0', 'http://127.0.0.1:3000/img/camera-small-80.jpg');
INSERT INTO `t_mi_type` VALUES ('42', '7', '移动电源', '0', 'http://127.0.0.1:3000/img/dianyuan2.100080.jpg');
INSERT INTO `t_mi_type` VALUES ('43', '7', '数据线', '0', 'http://127.0.0.1:3000/img/shujuxian-80.jpg');
INSERT INTO `t_mi_type` VALUES ('44', '7', '车充', '0', 'http://127.0.0.1:3000/img/chezaichongdianqi80.jpg');
INSERT INTO `t_mi_type` VALUES ('45', '7', '充电器', '0', 'http://127.0.0.1:3000/img/xishouji.jpg');
INSERT INTO `t_mi_type` VALUES ('46', '7', ' 无线充', '0', 'http://127.0.0.1:3000/img/shujuxian-80.jpg');
INSERT INTO `t_mi_type` VALUES ('47', '7', '电池', '0', 'http://127.0.0.1:3000/img/7Battery1.jpg');
INSERT INTO `t_mi_type` VALUES ('48', '7', '自拍杆', '0', 'http://127.0.0.1:3000/img/zipaigan80.jpg');
INSERT INTO `t_mi_type` VALUES ('49', '7', '存储卡', '0', 'http://127.0.0.1:3000/img/baohu.jpg');
INSERT INTO `t_mi_type` VALUES ('50', '7', '手机壳', '0', 'http://127.0.0.1:3000/img/tiemo.jpg');
INSERT INTO `t_mi_type` VALUES ('51', '7', '手机贴膜', '0', 'http://127.0.0.1:3000/img/tiemo.jpg');
INSERT INTO `t_mi_type` VALUES ('52', '7', '手机支架', '0', 'http://127.0.0.1:3000/img/shoujizhijia80.jpg');
INSERT INTO `t_mi_type` VALUES ('53', '7', '平板配件', '0', 'http://127.0.0.1:3000/img/pingban80.jpg');
INSERT INTO `t_mi_type` VALUES ('54', '7', '黑鲨配件', '0', 'http://127.0.0.1:3000/img/heishashoubing80.jpg');
INSERT INTO `t_mi_type` VALUES ('55', '7', '其他配件', '0', 'http://127.0.0.1:3000/img/qitapeijian80.jpg');
INSERT INTO `t_mi_type` VALUES ('57', '8', ' 洗手机', '0', 'http://127.0.0.1:3000/img/xishouji.jpg');
INSERT INTO `t_mi_type` VALUES ('58', '8', ' 剃须刀', '0', 'http://127.0.0.1:3000/img/tixvdao80.jpg');
INSERT INTO `t_mi_type` VALUES ('59', '8', ' 牙刷', '0', 'http://127.0.0.1:3000/img/yashua80.jpg');
INSERT INTO `t_mi_type` VALUES ('60', '8', '体重秤', '0', 'http://127.0.0.1:3000/img/scale.jpg');
INSERT INTO `t_mi_type` VALUES ('61', '8', '血压计', '0', 'http://127.0.0.1:3000/img/xueyaji80.jpg');
INSERT INTO `t_mi_type` VALUES ('62', '8', '体温计', '0', 'http://127.0.0.1:3000/img/tiwenji80.jpg');
INSERT INTO `t_mi_type` VALUES ('63', '8', '早教启智', '0', 'http://127.0.0.1:3000/img/mitugushi-80.jpg');
INSERT INTO `t_mi_type` VALUES ('64', '8', '遥控电动', '0', 'http://127.0.0.1:3000/img/XIAOFEIJIBASHI.jpg');
INSERT INTO `t_mi_type` VALUES ('65', '8', '益智积木', '0', 'http://127.0.0.1:3000/img/toyblock2-80.jpg');
INSERT INTO `t_mi_type` VALUES ('66', '8', '儿童手表', '0', 'http://127.0.0.1:3000/img/shoubiao280.jpg');
INSERT INTO `t_mi_type` VALUES ('67', '8', '儿童滑板车', '0', 'http://127.0.0.1:3000/img/huabanche80.jpg');
INSERT INTO `t_mi_type` VALUES ('68', '8', '儿童书包', '0', 'http://127.0.0.1:3000/img/ertongshubao.80.jpg');
INSERT INTO `t_mi_type` VALUES ('69', '8', '米兔拉杆箱', '0', 'http://127.0.0.1:3000/img/laganxiang.jpg');
INSERT INTO `t_mi_type` VALUES ('70', '9', '线控耳机', '0', 'http://127.0.0.1:3000/img/erji80.jpg');
INSERT INTO `t_mi_type` VALUES ('71', '9', '蓝牙耳机', '0', 'http://127.0.0.1:3000/img/80xiangquan.jpg');
INSERT INTO `t_mi_type` VALUES ('72', '9', '头戴耳机', '0', 'http://127.0.0.1:3000/img/toudai80.jpg');
INSERT INTO `t_mi_type` VALUES ('73', '9', '品牌耳机', '0', 'http://127.0.0.1:3000/img/pinpai80.jpg');
INSERT INTO `t_mi_type` VALUES ('74', '9', ' 蓝牙音箱', '0', 'http://127.0.0.1:3000/img/xiaogangpao2-hei-80.jpg');
INSERT INTO `t_mi_type` VALUES ('75', '10', '双肩包', '0', 'http://127.0.0.1:3000/img/xiangbao-80.jpg');
INSERT INTO `t_mi_type` VALUES ('76', '10', '钱包', '0', 'http://127.0.0.1:3000/img/qianbao-80.jpg');
INSERT INTO `t_mi_type` VALUES ('77', '10', '收纳包', '0', 'http://127.0.0.1:3000/img/shounabao-80.jpg');
INSERT INTO `t_mi_type` VALUES ('78', '10', '旅行包', '0', 'http://127.0.0.1:3000/img/lvxingxiang.jpg');
INSERT INTO `t_mi_type` VALUES ('79', '10', '运动鞋', '0', 'http://127.0.0.1:3000/img/shenhuahui80.jpg');
INSERT INTO `t_mi_type` VALUES ('80', '10', '服饰', '0', 'http://127.0.0.1:3000/img/txv80.jpg');
INSERT INTO `t_mi_type` VALUES ('81', '10', '眼镜', '0', 'http://127.0.0.1:3000/img/tyj80.jpg');
INSERT INTO `t_mi_type` VALUES ('82', '10', '床垫', '0', 'http://127.0.0.1:3000/img/chuangdian-80-80.jpg');
INSERT INTO `t_mi_type` VALUES ('83', '10', '枕头', '0', 'http://127.0.0.1:3000/img/zhent.ou80.png');
INSERT INTO `t_mi_type` VALUES ('84', '10', '被子', '0', 'http://127.0.0.1:3000/img/beizi8.0..png');
INSERT INTO `t_mi_type` VALUES ('85', '10', '沙发', '0', 'http://127.0.0.1:3000/img/shafa.80.png');
INSERT INTO `t_mi_type` VALUES ('86', '10', '针织件套', '0', 'http://127.0.0.1:3000/img/sijiantao-80-80.jpg');
INSERT INTO `t_mi_type` VALUES ('87', '10', '首饰', '0', 'http://127.0.0.1:3000/img/jinmitu.jpg');
INSERT INTO `t_mi_type` VALUES ('88', '10', '螺丝刀', '0', 'http://127.0.0.1:3000/img/luosidao-80.jpg');
INSERT INTO `t_mi_type` VALUES ('89', '10', '保温杯', '0', 'http://127.0.0.1:3000/img/bbbbei.jpg');
INSERT INTO `t_mi_type` VALUES ('90', '10', '伞', '0', 'http://127.0.0.1:3000/img/umbrella.jpg');
INSERT INTO `t_mi_type` VALUES ('91', '10', '驱蚊器', '0', 'http://127.0.0.1:3000/img/quwenqi.jpg');
INSERT INTO `t_mi_type` VALUES ('92', '10', '尤克里里', '0', 'http://127.0.0.1:3000/img/ukelele.jpg');
INSERT INTO `t_mi_type` VALUES ('93', '10', '毛巾/浴巾', '0', 'http://127.0.0.1:3000/img/maojinmaojin.jpg');
INSERT INTO `t_mi_type` VALUES ('94', '10', '米兔', '0', 'http://127.0.0.1:3000/img/mitu-80.jpg');
INSERT INTO `t_mi_type` VALUES ('95', '10', '签字笔', '0', 'http://127.0.0.1:3000/img/qianzibi-80.jpg');
INSERT INTO `t_mi_type` VALUES ('96', '10', '笔记本', '0', 'http://127.0.0.1:3000/img/duoyongbijiben-80.jpg');
