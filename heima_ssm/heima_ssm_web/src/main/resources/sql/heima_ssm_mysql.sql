/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : heima_ssm

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-07-02 10:55:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `phonenum` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('E61D65F673D54F68B0861025C69773DB', '张三', '小三', '18888888888', 'zs@163.com');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(32) NOT NULL,
  `ordernum` varchar(20) DEFAULT NULL,
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `peoplecount` int(11) DEFAULT NULL,
  `orderdesc` varchar(500) DEFAULT NULL,
  `paytype` int(11) DEFAULT NULL,
  `orderstatus` int(11) DEFAULT NULL,
  `productid` varchar(32) DEFAULT NULL,
  `memberid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('0E7231DC797C486290E8713CA3C6ECCC', '12345', '2019-06-07 20:39:57', '2', '没什么', '0', '1', '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('2FF351C4AC744E2092DCF08CFD314420', '67890', '2019-06-07 20:39:57', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('3081770BC3984EF092D9E99760FDABDE', '55555', '2019-06-07 20:39:57', '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('55F9AF582D5A4DB28FB4EC3199385762', '33333', '2019-06-07 20:39:57', '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('5DC6A48DD4E94592AE904930EA866AFA', '54321', '2019-06-07 20:39:57', '2', '没什么', '0', '1', '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('96CC8BD43C734CC2ACBFF09501B4DD5D', '22222', '2019-06-07 20:39:57', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('A0657832D93E4B10AE88A2D4B70B1A28', '98765', '2019-06-07 20:39:57', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('CA005CF1BE3C4EF68F88ABC7DF30E976', '44444', '2019-06-07 20:39:57', '2', '没什么', '0', '1', '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
INSERT INTO `orders` VALUES ('E4DD4C45EED84870ABA83574A801083E', '11111', '2019-06-07 20:39:57', '2', '没什么', '0', '1', '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');

-- ----------------------------
-- Table structure for order_traveller
-- ----------------------------
DROP TABLE IF EXISTS `order_traveller`;
CREATE TABLE `order_traveller` (
  `orderid` varchar(32) NOT NULL,
  `travellerid` varchar(32) NOT NULL,
  PRIMARY KEY (`orderid`,`travellerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_traveller
-- ----------------------------
INSERT INTO `order_traveller` VALUES ('0E7231DC797C486290E8713CA3C6ECCC', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('2FF351C4AC744E2092DCF08CFD314420', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('3081770BC3984EF092D9E99760FDABDE', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('55F9AF582D5A4DB28FB4EC3199385762', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('5DC6A48DD4E94592AE904930EA866AFA', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('96CC8BD43C734CC2ACBFF09501B4DD5D', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('A0657832D93E4B10AE88A2D4B70B1A28', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
INSERT INTO `order_traveller` VALUES ('CA005CF1BE3C4EF68F88ABC7DF30E976', 'EE7A71FB6945483FBF91543DBE851960');
INSERT INTO `order_traveller` VALUES ('E4DD4C45EED84870ABA83574A801083E', 'EE7A71FB6945483FBF91543DBE851960');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` varchar(32) NOT NULL,
  `permissionname` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('980826c8997011e9b4ae001e64bf0ff3', '查看所有用户', '/user/findAll');
INSERT INTO `permission` VALUES ('b612fea1997011e9b4ae001e64bf0ff3', '删除用户', '/user/deleteById');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` varchar(32) NOT NULL,
  `productnum` varchar(500) DEFAULT NULL,
  `productname` varchar(500) DEFAULT NULL,
  `cityname` varchar(50) DEFAULT NULL,
  `departuretime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `productprice` double DEFAULT NULL,
  `productdesc` varchar(500) DEFAULT NULL,
  `productstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('12B7ABF2A4C544568B0A7C69F36BF8B7', 'itcast-001', '【旅展 半价特惠 重走丝路•漫游宁夏 双飞4天送iphone】银川西部影视城 穆民新村 中卫沙坡头【品美酒 回族学唱花儿 感悟民俗】', '上海', '2019-06-30 18:36:57', '999', '走进【宁夏沙坡头】，感受西北大漠风情、体会“大漠孤烟直，长河落日圆”的塞上风光！', '1');
INSERT INTO `product` VALUES ('676C5BD1D35E429A8C2E114939C5685A', 'itcast-002', '【官网专享 立减¥500 张家界天门山+大峡谷+凤凰古城+玻璃栈道+玻璃桥 高铁4天 无自费5钻】印象鲵宴-赶年宴+2晚蓝湾博格酒店', '上海', '2019-06-30 11:14:39', '1799', '官网专线，顶级品质！全程超豪华住宿，2晚入住超豪华铂金-蓝湾博格国际酒店，独家尊享金马VIP贵宾专用楼层。', '1');
INSERT INTO `product` VALUES ('7d5685c19ae511e9b7fd001e64bf0ff3', 'itcast-005', '【莽山+森林温泉+东江湖高铁3天 纯玩贵宾团4钻】湖南郴州 鬼子寨 天台山 猴王寨 自然博物馆【醉美4A郴州莽山·雾漫5A东江湖】', '上海', '2019-06-30 11:16:45', '1199', '全程 不进“旅游特色”购物场所，行摄布置撒网、捕鱼的场景，享用游水三文鱼+野生东江鱼', '1');
INSERT INTO `product` VALUES ('7d568c559ae511e9b7fd001e64bf0ff3', 'itcast-004', '【春节 莽山+东江湖+冰雪森林温泉 高铁3天 贵宾团】年夜欢迎晚宴+温泉养身宴+特色火锅+湘南风味餐+莽山农家菜', '上海', '2019-06-30 11:16:45', '1999', '独家首创“画中游”游览方式—-徒步醉美小东江景区，颁发徒步证书；特别赠送：美味·东江鱼品尝装礼盒！', '1');
INSERT INTO `product` VALUES ('7d568ef09ae511e9b7fd001e64bf0ff3', 'itcast-006', '【立减¥400 桃花季包列 西藏拉萨+日喀则+林芝 双卧12天】青藏铁路 布达拉宫 东方瑞士鲁朗 圣湖羊卓雍措 扎什伦布寺', '上海', '2019-06-30 11:16:45', '5599', '【包列进藏】乘坐世界最先进的青藏列车，观世界坐标级景观带，有氧车厢进入西藏，由低海拔至高海拔逐步适应，安全保障。畅享拉林高等级公路沿途“颜值担当”雪域江南风光！', '1');
INSERT INTO `product` VALUES ('7d5691419ae511e9b7fd001e64bf0ff3', 'itcast-007', '【立减¥200 桃花季包列 西藏拉萨+林芝桃花季双卧10天】青藏铁路景观带 布达拉宫 东方瑞士鲁朗 嘎拉桃花村', '上海', '2019-06-30 11:16:45', '4399', '【包列进藏】乘坐世界最先进的青藏列车，观世界坐标级景观带，有氧车厢进入西藏，由低海拔至高海拔逐步适应，安全保障。畅享拉林高等级公路沿途“颜值担当”雪域江南风光！', '1');
INSERT INTO `product` VALUES ('7d56935e9ae511e9b7fd001e64bf0ff3', 'itcast-008', '【¥999/2人 广西北海双飞4天 南航往返】北海银滩 北海海景大道 北部湾广场 侨港镇 南迈渔村', '上海', '2019-06-30 11:16:45', '999', '南航飞机直达北海不用1个半小时，畅游真正“天下第一滩”北海十里银滩！漫步北海老街，探秘南迈渔村！', '1');
INSERT INTO `product` VALUES ('7d56955b9ae511e9b7fd001e64bf0ff3', 'itcast-009', '【¥1999秒杀 新疆乌鲁木齐+天山天池+鄯善+火焰山 双飞5天 超贵团】库姆塔格沙漠 坎儿井', '上海', '2019-06-30 11:16:45', '1999', '升级一晚超豪华酒店！鄯善沙漠哈密瓜的故乡，沙漠中的绿洲吐 鲁 番，畅游天山天池！', '1');
INSERT INTO `product` VALUES ('7d5697449ae511e9b7fd001e64bf0ff3', 'itcast-010', '【越南下龙湾+巡洲岛+吉婆岛+河内 高铁5天 纯玩贵宾团】0购物0自费 尊享1晚国际品牌超豪华酒店+1晚巡洲岛豪华海边度假酒店海景房', '上海', '2019-06-30 11:16:45', '1899', '畅游·下龙湾，登陆巡洲岛，游恬静的北越明珠吉婆岛！尊享1晚国际品牌超豪华酒店+1晚巡洲岛豪华海边度假酒店海景房', '1');
INSERT INTO `product` VALUES ('7d5699389ae511e9b7fd001e64bf0ff3', 'itcast-011', '【江西井冈山双飞4天】笔架山 游菖蒲古村 穿红军服走红军路', '上海', '2019-06-30 11:16:45', '1199', '广州直飞井冈山机场，车程劲省2小时；乘坐十公里长的亚洲第一索道——笔架山索道；', '1');
INSERT INTO `product` VALUES ('7d569b2f9ae511e9b7fd001e64bf0ff3', 'itcast-012', '【官网专享 5折预售 越南下龙湾+河内+芒街 高铁4天 高级团】双导游服务 免收服务小费【越超值·美食越南】', '北京', '2019-06-30 11:16:45', '1199', '双导游服务，免收服务小费，周全照顾贴心服务随心出游！品尝越南特色国宝美食，升级一餐越式炸鸡火锅宴！', '1');
INSERT INTO `product` VALUES ('7d569d079ae511e9b7fd001e64bf0ff3', 'itcast-013', '【官网专享 送箱 ¥1099秒杀 华东五市+乌镇+南浔 双飞6天 南京进上海出】升级1晚豪华酒店 漫步西湖【水墨江南】', '北京', '2019-06-30 11:16:45', '1099', '升级入住1晚豪华酒店；畅玩江南两大经典水乡——乌镇水乡和南浔水乡，体验这里的历史文化底蕴、清丽婉约的水乡古镇风貌。', '1');
INSERT INTO `product` VALUES ('7d569ee29ae511e9b7fd001e64bf0ff3', 'itcast-014', '【湘西360°全景 张家界高铁5天】韶山 天子山 袁家界 天门山 玻璃栈道 大峡谷景区玻璃桥 凤凰古城', '北京', '2019-06-30 11:16:45', '2099', '挑战天门山玻璃栈道、大峡谷玻璃桥，享侗族才家合拢宴 ，特色蘑菇宴，土家风味宴，游览韶山毛主席故里！', '1');
INSERT INTO `product` VALUES ('7d56a0b09ae511e9b7fd001e64bf0ff3', 'itcast-015', '梅州 双飞3天2晚 自由行套票【含广州直飞梅州早对晚含税往返机票+2晚梅州市区酒店】', '北京', '2019-06-30 11:16:45', '999', '含广州直飞梅州早对晚含税往返机票+2晚梅州市区酒店！', '1');
INSERT INTO `product` VALUES ('7d56a48d9ae511e9b7fd001e64bf0ff3', 'itcast-016', '【宁夏银川 双飞4天】 银川中华回乡文化园 中卫沙坡头 宁夏回族自治区博物馆 西关清真寺', '北京', '2019-06-30 11:16:45', '1299', '中卫升级1晚豪华酒店！走进【宁夏沙坡头】，感受西北大漠风情、体会“大漠孤烟直，长河落日圆”的塞上风光！', '1');
INSERT INTO `product` VALUES ('7d56a6809ae511e9b7fd001e64bf0ff3', 'itcast-018', '【¥1099秒杀 约惠华东五市+乌镇+木渎+灵山大佛 双飞6天 无锡进上海出】升级2晚豪华酒店', '北京', '2019-06-30 11:16:45', '1099', '畅玩乌镇水乡和木渎水乡，游览上海迪士尼小镇，其中升级入住2晚豪华酒店，品尝杭州特色宴“乾隆御茶宴”，送品尝金秋肥美大闸蟹一只！', '1');
INSERT INTO `product` VALUES ('7d56aa189ae511e9b7fd001e64bf0ff3', 'itcast-019', '【¥1099秒杀 特惠华东五市+乌镇+木渎+灵山大佛 双飞6天 上海进杭州出】升级2晚豪华酒店', '上海', '2019-06-30 11:16:45', '1099', '升级两晚豪华酒店，畅游双水乡乌镇+木渎古镇，南京中山陵，杭州西湖！', '1');
INSERT INTO `product` VALUES ('7d56ac359ae511e9b7fd001e64bf0ff3', 'itcast-020', '【莽山+森林温泉+东江湖高铁3天 纯玩顶贵团5钻】湖南郴州 鬼子寨 天台山 猴王寨 自然博物馆【醉美4A郴州莽山·雾漫5A东江湖】', '上海', '2019-06-30 11:16:45', '1499', '全程 不进“旅游特色”购物场所，行摄布置撒网、捕鱼的场景，享用游水三文鱼+野生东江鱼', '1');
INSERT INTO `product` VALUES ('7d56ae119ae511e9b7fd001e64bf0ff3', 'itcast-017', '【莽山+森林温泉+东江湖高铁3天 纯玩超贵团4+5钻】湖南郴州 鬼子寨 天台山 猴王寨 自然博物馆【醉美4A郴州莽山·雾漫5A东江湖】', '北京', '2019-06-30 11:16:45', '1399', '全程 不进“旅游特色”购物场所，行摄布置撒网、捕鱼的场景，享用游水三文鱼+野生东江鱼', '1');
INSERT INTO `product` VALUES ('7d56afde9ae511e9b7fd001e64bf0ff3', 'itcast-021', '【豪叹喜来登 桂林 阳朔西街高铁4天纯玩 高级团】漓江 西山公园 象鼻山 银子岩', '上海', '2019-06-30 11:16:45', '1299', '1晚指定入住福朋喜来登酒店，船游全程大漓江，游览世界溶洞奇观银子岩', '1');
INSERT INTO `product` VALUES ('7d56b1b69ae511e9b7fd001e64bf0ff3', 'itcast-022', '【海南三亚+兴隆+海口+蜈支洲岛+西岛+亚龙湾+天涯海角双飞4天 超贵团】海口/三亚进 三亚/海口出 不走回头路【经典皇牌 至尊双岛】', '上海', '2019-06-30 11:16:45', '1899', '不走回头路，劲省4小时车程，升级三亚一晚超豪华度假酒店，畅游天涯海角+亚龙湾沙滩+椰田古寨！', '1');
INSERT INTO `product` VALUES ('9F71F01CB448476DAFB309AA6DF9497F', 'itcast-003', '【春节 湖南郴州莽山+东江湖+冰雪森林温泉 高铁3天 顶贵团】欢迎年宴+温泉养生宴+农家菜【金狗闹郴晚·冰天雪地泡温泉】', '上海', '2019-06-30 11:14:47', '2399', '莽山景区入住“森林中的皇宫”之美誉的莽山森林温泉酒店；市区入住享“酒店就是景区”美誉的国际奢华品牌酒店---温德姆至尊豪庭酒店！', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(32) NOT NULL,
  `rolename` varchar(50) DEFAULT NULL,
  `roledesc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('570fb9fc996f11e9b4ae001e64bf0ff3', 'CTO', '首席技术官');
INSERT INTO `role` VALUES ('5de78f95996f11e9b4ae001e64bf0ff3', 'HR', '人力资源顾问');
INSERT INTO `role` VALUES ('607e3b70996f11e9b4ae001e64bf0ff3', 'CSP', '客服专员');
INSERT INTO `role` VALUES ('7cecf0a3995711e9b4ae001e64bf0ff3', 'CEO', '首席执行官');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `permissionid` varchar(32) NOT NULL,
  `roleid` varchar(32) NOT NULL,
  PRIMARY KEY (`permissionid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('980826c8997011e9b4ae001e64bf0ff3', '7cecf0a3995711e9b4ae001e64bf0ff3');
INSERT INTO `role_permission` VALUES ('b612fea1997011e9b4ae001e64bf0ff3', '7cecf0a3995711e9b4ae001e64bf0ff3');

-- ----------------------------
-- Table structure for syslog
-- ----------------------------
DROP TABLE IF EXISTS `syslog`;
CREATE TABLE `syslog` (
  `id` varchar(32) NOT NULL,
  `visittime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `executiontime` int(11) DEFAULT NULL,
  `method` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of syslog
-- ----------------------------
INSERT INTO `syslog` VALUES ('edec470c9b2011e9b7fd001e64bf0ff3', '2019-06-30 18:22:14', 'admin', '192.168.23.48', 'http://192.168.23.73/product/findAll.do', '249', 'findAll');
INSERT INTO `syslog` VALUES ('ef4957329b2011e9b7fd001e64bf0ff3', '2019-06-30 18:22:16', 'admin', '192.168.23.48', 'http://192.168.23.73/product/findAll.do', '25', 'findAll');
INSERT INTO `syslog` VALUES ('efc334ca9bec11e993f2001e64bf0ff3', '2019-07-01 18:42:34', 'admin', '192.168.23.47', 'http://192.168.23.72/product/seacher_lucene.do', '49', 'seacher_lucene');
INSERT INTO `syslog` VALUES ('f2709e119b2011e9b7fd001e64bf0ff3', '2019-06-30 18:22:22', 'admin', '192.168.23.46', 'http://192.168.23.73/product/findAll.do', '25', 'findAll');

-- ----------------------------
-- Table structure for traveller
-- ----------------------------
DROP TABLE IF EXISTS `traveller`;
CREATE TABLE `traveller` (
  `id` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `phonenum` varchar(20) DEFAULT NULL,
  `credentialstype` int(11) DEFAULT NULL,
  `credentialsnum` varchar(50) DEFAULT NULL,
  `travellertype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of traveller
-- ----------------------------
INSERT INTO `traveller` VALUES ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '张龙', '男', '13333333333', '0', '123456789009876543', '0');
INSERT INTO `traveller` VALUES ('EE7A71FB6945483FBF91543DBE851960', '张小龙', '男', '15555555555', '0', '987654321123456789', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(32) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phonenum` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('642fbff3995611e9b4ae001e64bf0ff3', 'admin@qq.com', 'admin', '123', '18888888888', '1');
INSERT INTO `users` VALUES ('cb160adc997411e9b4ae001e64bf0ff3', 'tom@qq.com', 'tom', '123', '16666666666', '1');

-- ----------------------------
-- Table structure for users_role
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role` (
  `userid` varchar(32) NOT NULL,
  `roleid` varchar(32) NOT NULL,
  PRIMARY KEY (`userid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES ('642fbff3995611e9b4ae001e64bf0ff3', '570fb9fc996f11e9b4ae001e64bf0ff3');
INSERT INTO `users_role` VALUES ('642fbff3995611e9b4ae001e64bf0ff3', '5de78f95996f11e9b4ae001e64bf0ff3');
INSERT INTO `users_role` VALUES ('642fbff3995611e9b4ae001e64bf0ff3', '607e3b70996f11e9b4ae001e64bf0ff3');
INSERT INTO `users_role` VALUES ('642fbff3995611e9b4ae001e64bf0ff3', '7cecf0a3995711e9b4ae001e64bf0ff3');
INSERT INTO `users_role` VALUES ('cb160adc997411e9b4ae001e64bf0ff3', '607e3b70996f11e9b4ae001e64bf0ff3');
