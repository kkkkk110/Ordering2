/*
Navicat MySQL Data Transfer

Source Server         : aaa
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : ordering

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-30 14:13:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for menufile
-- ----------------------------
DROP TABLE IF EXISTS `menufile`;
CREATE TABLE `menufile` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `TeSe` varchar(255) DEFAULT NULL,
  `FenLei` varchar(255) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `VIPprice` varchar(10) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menufile
-- ----------------------------
INSERT INTO `menufile` VALUES ('0000000001', '甜梨布丁', 'No.0312', '咸甜适中 酸甜可口 ', '点心', '23.00', '20.00', 'timg1.jpg', '2017-08-25 15:31:46');
INSERT INTO `menufile` VALUES ('0000000002', '克力蛋糕', 'No.0311', '质嫩爽口 芳香四溢 ', '点心', '39.00', '29.00', 'timg2.jpg', '2017-08-25 15:32:35');
INSERT INTO `menufile` VALUES ('0000000003', '芒果摩芬', 'No.0314', '甘脆爽口 酸甜可口 ', '点心', '29.00', '23.00', 'timg3.jpg', '2017-08-25 15:33:20');
INSERT INTO `menufile` VALUES ('0000000004', '魔鬼蛋糕', 'No.0334', '香甜软糯 ', '点心', '40.00', '39.00', 'timg4.jpg', '2017-08-25 15:34:32');
INSERT INTO `menufile` VALUES ('0000000005', '丹麦奶酥', 'No.0319', '口感松软蜜甜', '点心', '33.00', '31.00', 'timg5.jpg', '2017-08-25 15:35:22');
INSERT INTO `menufile` VALUES ('0000000006', '舒芙蕾', 'No.0324', '入口时嫩嫩的，香气扑鼻', '点心', '30.00', '22.00', 'timg6.jpg', '2017-08-25 15:35:59');
INSERT INTO `menufile` VALUES ('0000000007', '丹麦奶酥', 'No.0344', '质嫩爽口 芳香四溢 ', '点心', '29.00', '25.00', 'timg7.jpg', '2017-08-25 15:38:37');
INSERT INTO `menufile` VALUES ('0000000008', '马卡龙', 'No.0377', '咸甜适中 酸甜可口 ', '点心', '38.00', '36.00', 'timg8.jpg', '2017-08-25 15:39:15');
INSERT INTO `menufile` VALUES ('0000000009', '意大利蛋白饼', 'No.0399', '香甜软糯 ', '点心', '35.00', '33.00', 'timg9.jpg', '2017-08-25 15:39:48');
INSERT INTO `menufile` VALUES ('0000000010', '加雷特酥饼', 'No.0334', '甘脆爽口 酸甜可口 ', '点心', '44.00', '38.00', 'timg10.jpg', '2017-08-25 15:40:15');
INSERT INTO `menufile` VALUES ('0000000011', '猫舌饼', 'No.0312', '质嫩爽口 芳香四溢 ', '点心', '32.00', '29.00', 'timg11.jpg', '2017-08-25 15:41:21');
INSERT INTO `menufile` VALUES ('0000000012', '蒙布朗乳酪蛋糕', 'No.0312', '咸甜适中 酸甜可口 ', '点心', '82.00', '79.00', 'timg12.jpg', '2017-08-25 15:41:59');
INSERT INTO `menufile` VALUES ('0000000013', '布朗尼', 'No.0353', '质嫩爽口 芳香四溢 ', '点心', '77.00', '70.00', 'timg13.jpg', '2017-08-25 15:42:28');
INSERT INTO `menufile` VALUES ('0000000014', '马爹利', 'No.0211', '酸甜可口，无苦涩味', '饮料', '99.00', '90.00', 'timg14.jpg', '2017-08-25 16:21:32');
INSERT INTO `menufile` VALUES ('0000000015', '蓝带马爹利', 'No.0212', '口感较好，无苦涩味', '饮料', '88.00', '77.00', 'timg15.jpg', '2017-08-25 16:22:13');
INSERT INTO `menufile` VALUES ('0000000016', '芝华士', 'No.0214', '香味浓郁，协调', '饮料', '79.00', '70.00', 'timg16.jpg', '2017-08-25 16:22:44');
INSERT INTO `menufile` VALUES ('0000000017', '黑方', 'No.0231', '无香味，带许杂味', '饮料', '89.00', '80.00', 'timg17.jpg', '2017-08-25 16:23:15');
INSERT INTO `menufile` VALUES ('0000000018', '红方', 'No.0232', '咸甜适中 酸甜可口 ', '饮料', '77.00', '60.00', 'timg18.jpg', '2017-08-25 16:23:47');
INSERT INTO `menufile` VALUES ('0000000019', ' \r\nCUTTYCARK ', 'No.0243', '咸甜适中 酸甜可口 ', '饮料', '87.00', '85.00', 'timg19.jpg', '2017-08-25 16:24:43');
INSERT INTO `menufile` VALUES ('0000000020', '波尔斯', 'No.0243', '香味浓郁，协调', '饮料', '66.00', '60.00', 'timg20.jpg', '2017-08-25 16:25:22');
INSERT INTO `menufile` VALUES ('0000000021', '威雀', 'No.0244', '口感较好，无苦涩味', '饮料', '50.00', '45.00', 'timg21.jpg', '2017-08-25 16:26:00');
INSERT INTO `menufile` VALUES ('0000000022', 'JACK DANIEL', 'No.0277', '无香味，带许杂味', '饮料', '30.00', '29.00', 'timg22.jpg', '2017-08-25 16:26:30');
INSERT INTO `menufile` VALUES ('0000000023', '龙舌兰', 'No.0243', '咸甜适中 酸甜可口 ', '饮料', '49.00', '40.00', 'timg23.jpg', '2017-08-25 16:27:05');
INSERT INTO `menufile` VALUES ('0000000024', '波马', 'No.0255', '咸甜适中 酸甜可口 ', '饮料', '50.00', '49.00', 'timg24.jpg', '2017-08-25 16:27:40');
INSERT INTO `menufile` VALUES ('0000000025', '将军', 'No.0255', '香味浓郁，协调', '饮料', '66.00', '59.00', 'timg25.jpg', '2017-08-25 16:28:10');
INSERT INTO `menufile` VALUES ('0000000026', '捷克丹尼', 'No.0254', '口感较好，无苦涩味', '饮料', '89.00', '80.00', 'timg26.jpg', '2017-08-25 16:28:44');
INSERT INTO `menufile` VALUES ('0000000027', '热柠檬茶', 'No.0288', '无香味，带许杂味', '饮料', '39.00', '30.00', 'timg27.jpg', '2017-08-25 16:29:21');
INSERT INTO `menufile` VALUES ('0000000029', '牛角面包', 'No.0488', '口感松软蜜甜', '面包', '29.00', '20.00', 'timg29.jpg', '2017-08-25 16:32:21');
INSERT INTO `menufile` VALUES ('0000000031', '列吧', 'No.0477', '质嫩爽口 芳香四溢 ', '面包', '33.00', '29.00', 'timg31.jpg', '2017-08-25 16:33:36');
INSERT INTO `menufile` VALUES ('0000000032', '夹馅面包', 'No.0492', '质嫩爽口 芳香四溢 ', '面包', '40.00', '38.00', 'timg32.jpg', '2017-08-25 16:34:13');
INSERT INTO `menufile` VALUES ('0000000033', '千层酥面包', 'No.0471', '质嫩爽口 芳香四溢 ', '面包', '38.00', '30.00', 'timg33.jpg', '2017-08-25 16:35:00');
INSERT INTO `menufile` VALUES ('0000000034', '金砖', 'No.0487', '质嫩爽口 芳香四溢 ', '面包', '38.00', '36.00', 'timg34.jpg', '2017-08-25 16:35:41');
INSERT INTO `menufile` VALUES ('0000000035', '富士山', 'No.0445', '质嫩爽口 芳香四溢 ', '面包', '34.00', '30.00', 'timg35.jpg', '2017-08-25 16:36:13');
INSERT INTO `menufile` VALUES ('0000000036', '奶油面包', 'No.0412', '咸甜适中 酸甜可口 ', '面包', '39.00', '37.00', 'timg36.jpg', '2017-08-25 16:36:58');
INSERT INTO `menufile` VALUES ('0000000037', '如玛格丽特', 'No.0445', '咸甜适中 酸甜可口 ', '面包', '44.00', '39.00', 'timg37.jpg', '2017-08-25 16:37:47');
INSERT INTO `menufile` VALUES ('0000000038', '瑞士卷', 'No.0465', '咸甜适中 酸甜可口 ', '面包', '39.00', '30.00', 'timg38.jpg', '2017-08-25 16:39:48');
INSERT INTO `menufile` VALUES ('0000000039', '法式火焰薄饼', 'No.0511', '凉舌渗齿，甜润适口', '西餐', '99.00', '90.00', 'timg39.jpg', '2017-08-25 16:40:15');
INSERT INTO `menufile` VALUES ('0000000040', '炸培根鸡肉卷', 'No.0513', '起皮掉酥', '西餐', '88.00', '80.00', 'timg40.jpg', '2017-08-25 16:43:10');
INSERT INTO `menufile` VALUES ('0000000041', '红烩牛肉', 'No.0588', '三分熟', '西餐', '109.00', '100.00', 'timg41.jpg', '2017-08-25 16:43:39');
INSERT INTO `menufile` VALUES ('0000000042', 'T骨牛扒', 'No.0598', '八分熟', '西餐', '199.00', '188.00', 'timg42.jpg', '2017-08-25 16:44:11');
INSERT INTO `menufile` VALUES ('0000000043', '烤牛肉三文治', 'No.0577', '七分熟', '西餐', '98.00', '90.00', 'timg43.jpg', '2017-08-25 16:44:56');
INSERT INTO `menufile` VALUES ('0000000044', '西冷牛排', 'No.0566', '九分熟', '西餐', '109.00', '107.00', 'timg44.jpg', '2017-08-25 16:45:43');
INSERT INTO `menufile` VALUES ('0000000045', '烩牛舌', 'No.0581', '原汁原味，以味浓著称', '西餐', '129.00', '119.00', 'timg45.jpg', '2017-08-25 16:46:25');
INSERT INTO `menufile` VALUES ('0000000046', '法式火焰薄饼', 'No.0667', '继承了英式菜简单、清淡的特点', '西餐', '139.00', '129.00', 'timg46.jpg', '2017-08-25 16:47:59');
INSERT INTO `menufile` VALUES ('0000000047', '意式烩大虾', 'No.0591', '以清淡典雅、原汁原味为特点', '西餐', '144.00', '100.00', 'timg47.jpg', '2017-08-25 16:48:46');
INSERT INTO `menufile` VALUES ('0000000048', '红烩肉杂饼', 'No.0534', '方法以烤、熏腌', '西餐', '120.00', '110.00', 'timg48.jpg', '2017-08-25 16:51:26');
INSERT INTO `menufile` VALUES ('0000000049', '海带芥末沙饼', 'No.0583', '选料注重海鲜及各式蔬菜', '西餐', '178.00', '170.00', 'timg49.jpg', '2017-08-25 16:51:58');
INSERT INTO `menufile` VALUES ('0000000050', '红烩肉杂拌', 'No.0516', '调味时较少用酒', '西餐', '178.00', '174.00', 'timg50.jpg', '2017-08-25 16:52:37');
INSERT INTO `menufile` VALUES ('0000000051', '八仙过海闹罗汉', 'No.0131', '椰滋阴润肺、除燥清热', '中餐', '88.00', '80.00', 'timg51.jpg', '2017-08-25 16:54:14');
INSERT INTO `menufile` VALUES ('0000000052', '白扒通天翅', 'No.0132', '补益脾胃、清热养阴。', '中餐', '99.00', '90.00', 'timg52.jpg', '2017-08-25 16:54:45');
INSERT INTO `menufile` VALUES ('0000000053', '油泼肉', 'No.0123', '助消化，利五脏', '中餐', '109.00', '102.00', 'timg55.jpg', '2017-08-25 16:55:21');
INSERT INTO `menufile` VALUES ('0000000054', '扳指干贝', 'No.0193', '莲子健脾益气', '点心', '190.00', '180.00', 'timg56.jpg', '2017-08-25 16:55:56');
INSERT INTO `menufile` VALUES ('0000000055', '客家盐焗鸡', 'No.0144', '百合安神清热养阴', '中餐', '120.00', '119.00', 'timg57.jpg', '2017-08-25 16:56:24');
INSERT INTO `menufile` VALUES ('0000000056', '茄汁鱼卷', 'No.0189', '清心安神；紫灵芝保肝护肝', '中餐', '99.00', '89.00', 'timg58.jpg', '2017-08-25 16:56:57');
INSERT INTO `menufile` VALUES ('0000000057', ' 荔枝肉', 'No.018843', '补中益气', '西餐', '88.00', '87.00', 'timg59.jpg', '2017-08-25 16:57:24');
INSERT INTO `menufile` VALUES ('0000000058', '龙身凤尾虾', 'No.0167', '降胆固醇，预防肝脏疾病', '中餐', '199.00', '189.00', 'timg60.jpg', '2017-08-25 16:57:57');
INSERT INTO `menufile` VALUES ('0000000059', '赛蟹羹', 'No.0135', '增强机体正气', '中餐', '122.00', '119.00', 'timg61.jpg', '2017-08-25 16:58:33');
INSERT INTO `menufile` VALUES ('0000000060', '香酥焖肉', 'No.0177', '防病健身', '中餐', '110.00', '109.00', 'timg62.jpg', '2017-08-25 16:59:10');
INSERT INTO `menufile` VALUES ('0000000061', '肉酿生麸', 'No.0135', '补益脾胃、清热养阴', '中餐', '178.00', '169.00', 'timg63.jpg', '2017-08-25 16:59:42');
INSERT INTO `menufile` VALUES ('0000000062', ' 荷叶粉蒸肉', 'No.0145', '百合安神清热养阴', '中餐', '88.00', '78.00', 'timg64.jpg', '2017-08-25 17:00:21');
INSERT INTO `menufile` VALUES ('0000000063', ' 蝴蝶飘', 'No.0153', '补中益气', '中餐', '99.00', '89.00', 'timg65.jpg', '2017-08-25 17:01:01');
INSERT INTO `menufile` VALUES ('0000000064', '辣子鸡丁', 'No.0178', '增强机体正气', '中餐', '108.00', '101.00', 'timg66.jpg', '2017-08-25 17:01:47');
INSERT INTO `menufile` VALUES ('0000000065', '油爆双脆', 'No.0189', '补中益气', '中餐', '138.00', '121.00', 'timg67.jpg', '2017-08-25 17:02:24');
INSERT INTO `menufile` VALUES ('0000000066', '叫化鸡', 'No.0166', '清心安神；紫灵芝保肝护肝', '中餐', '128.00', '120.00', 'timg68.jpg', '2017-08-25 17:02:56');
INSERT INTO `menufile` VALUES ('0000000067', '香露全鸡', 'No.0145', '百合安神清热养阴', '中餐', '120.00', '119.00', 'timg69.jpg', '2017-08-25 17:03:26');
INSERT INTO `menufile` VALUES ('0000000068', '干菜焖肉', 'No.0136', '补益脾胃、清热养阴', '中餐', '138.00', '120.00', 'timg70.jpg', '2017-08-25 17:04:06');
