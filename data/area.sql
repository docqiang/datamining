-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 08 月 17 日 22:44
-- 服务器版本: 5.5.40
-- PHP 版本: 5.4.33

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `foods`
--

-- --------------------------------------------------------

--
-- 表的结构 `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=181 ;

--
-- 转存表中的数据 `area`
--

INSERT INTO `area` (`id`, `name`, `lat`, `lon`) VALUES
(1, '七宝', '31.1572981', '121.3442488'),
(2, '陆家嘴', '31.2401881', '121.49786163434'),
(3, '八佰伴', '32.0966671', '118.782037'),
(4, '世纪公园', '31.2186996', '121.554338370879'),
(5, '上南地区', '-17.7993389', '177.4172058'),
(6, '外高桥', '48.2953664', '23.4466092'),
(7, '金桥', '31.2536983', '121.5866169'),
(8, '源深体育中心', '31.2350191', '121.5299034'),
(9, '张江', '25.3608012', '114.2244925'),
(10, '塘桥', '31.21163615', '121.5143028'),
(11, '川沙', '31.1888308', '121.6938288'),
(12, '南京西路', '31.2329605', '121.4653025'),
(13, '静安寺', '31.22492325', '121.443918366142'),
(14, '曹家渡', '35.842706', '139.802434'),
(15, '同乐坊', '31.24125575', '121.460476905871'),
(16, '长寿路', '31.2362238', '121.4257713'),
(17, '淮海路', '32.9618595', '117.3056991'),
(18, '新天地', '22.1963', '113.5368496'),
(19, '打浦桥', '31.2083024', '121.4639233'),
(20, '徐家汇', '31.1963101', '121.431354'),
(21, '衡山路', '31.2076988', '121.4429212'),
(22, '肇嘉浜路沿线', '31.203165', '121.4513091'),
(23, '音乐学院', '41.6552118', '123.4326953'),
(24, '龙华', '31.1766437', '121.4482038'),
(25, '上海南站', '31.1553974', '121.426713037579'),
(26, '光启城', '34.7134452', '137.2807465'),
(27, '虹桥', '31.2148941', '121.399434'),
(28, '天山', '33.9604263', '131.1866869'),
(29, '古北', '24.497158', '107.7824525'),
(30, '中山公园', '31.2198282', '121.411101379546'),
(31, '上海影城/新华路', '31.2045837', '121.425040673013'),
(32, '北新泾', '31.218802', '121.36812'),
(33, '虹桥镇', '32.0581491', '119.9968118'),
(34, '虹梅路', '31.1445748', '121.4062032'),
(35, '莘庄', '31.1110347', '121.3798759'),
(36, '南方商城', '35.6018793', '116.9780294'),
(37, '春申地区', '31.0809334', '121.3499205'),
(38, '老闵行', '31.0018463', '121.4212662'),
(39, '龙柏地区', '24.6313', '105.565'),
(40, '莘庄龙之梦', '24.78001075', '120.997192652006'),
(41, '浦江镇', '31.0930767', '121.4912727'),
(42, '华漕', '31.17134115', '121.43981495'),
(43, '颛桥', '31.0709557', '121.3948347'),
(44, '北桥', '31.0467862', '121.4067384'),
(45, '吴泾', '35.513041', '140.0896818'),
(46, '好爱广场', '31.0895484', '121.392964994358'),
(47, '虹桥枢纽', '22.31551745', '114.219108142356'),
(48, '三林地区', '34.29679', '134.076051018057'),
(49, '金杨地区', '24.997576', '110.4490267'),
(50, '康桥/周浦', '32.0198142', '102.0124033'),
(51, '惠南镇', '31.0497502', '121.7450868'),
(52, '东明', '31.2418968', '121.49526145'),
(53, '浦东机场', '41.5108185', '122.7523259'),
(54, '北蔡', '31.1909988', '121.5641594'),
(55, '三林镇', '31.1472727', '121.4979529'),
(56, '曹路', '31.273384', '121.6784979'),
(57, '新场', '31.0478433', '121.64473265'),
(58, '泥城', '31.1481571', '121.654392836367'),
(59, '南汇新城', '34.8243461', '137.39576815'),
(60, '航头', '31.035378', '121.5830009'),
(61, '高行', '31.14211625', '121.657438541994'),
(62, '迪士尼', '31.1434097', '121.663777495581'),
(63, '祝桥', '31.1196434', '121.7537648'),
(64, '世博源', '31.1864051', '121.487861094388'),
(65, '外滩', '31.2427994', '121.4857885'),
(66, '人民广场', '31.2314784', '121.470047014865'),
(67, '南京东路', '31.2391219', '121.4792304'),
(68, '城隍庙', '31.2278847', '121.487853615872'),
(69, '老西门', '31.2208816', '121.4784666'),
(70, '董家渡', '31.2168714', '121.5038347'),
(71, '真如', '31.2527094', '121.402647'),
(72, '武宁地区', '34.9276281', '135.6331693'),
(73, '月星环球港', '31.23511605', '121.407828260753'),
(74, '桃浦', '31.2949941', '121.389396'),
(75, '曹杨地区', '38.7041944', '0.0003616'),
(76, '梅川路', '31.2437631', '121.379955'),
(77, '火车站', '29.1018672', '119.6416686'),
(78, '大宁地区', '34.9276281', '135.6331693'),
(79, '彭浦新村', '31.3074959', '121.4439'),
(80, '闸北公园', '31.2724057', '121.455083681422'),
(81, '北区汽车站', '36.8539331', '119.4618878'),
(82, '大悦城', '35.643042', '138.916862'),
(83, '西藏北路/中兴路', '31.256359', '121.4640211'),
(84, '彭浦镇', '22.4532774', '120.4794846'),
(85, '曲阳地区', '24.997576', '110.4490267'),
(86, '虹口足球场', '31.2732666', '121.476384662597'),
(87, '四川北路', '31.2667917', '121.4780598'),
(88, '北外滩', '29.8793015', '121.556520364044'),
(89, '赤峰路', '31.28318515', '121.477939206022'),
(90, '控江地区', '5.1997266', '10.4720781'),
(91, '中原地区', '29.1022084', '118.4608993'),
(92, '黄兴公园', '31.2978687', '121.5288453'),
(93, '平凉路', '31.273847', '121.5434927'),
(94, '鞍山新村', '31.279132', '121.507681828552'),
(95, '大华地区', '23.0919535', '113.2279034'),
(96, '淞滨地区', '45.9326406', '127.5142947'),
(97, '庙行/共康', '31.3228963', '121.4360681'),
(98, '上海大学', '31.32235655', '121.384009410929'),
(99, '宝山城区', '23.0119071', '113.1169511'),
(100, '通河/泗塘', '23.812248', '106.7229181'),
(101, '顾村公园', '31.3462294', '121.368528811186'),
(102, '美兰湖', '31.4036902', '121.345322415943'),
(103, '月浦', '31.4223647', '121.4172924'),
(104, '杨行', '31.3668907', '121.4342225'),
(105, '高境', '31.3231588', '121.4775252'),
(106, '淞南', '31.3494982', '121.4855714'),
(107, '松江镇', '42.5724838', '128.329029'),
(108, '松江大学城', '31.0561744', '121.228173271742'),
(109, '佘山', '31.1062374', '121.22536185'),
(110, '九亭', '31.1393075', '121.314195'),
(111, '泗泾', '31.1204097', '121.25587975'),
(112, '新桥', '31.0612377', '121.3195712'),
(113, '开元地中海', '31.0394636', '121.213763958684'),
(114, '松东路', '31.0166962', '121.2514197'),
(115, '江学路', '31.0355241', '121.207636'),
(116, '荣乐中路', '31.0190327', '121.2222368'),
(117, '中山中路', '31.0088657', '121.2272505'),
(118, '人民北路', '31.0309685', '121.2172441'),
(119, '飞航广场', '21.9658461', '120.8076414'),
(120, '泰晤士小镇', '31.0359141', '121.191998902805'),
(121, '新松江路', '31.040884', '121.2022797'),
(122, '松江万达', '42.6982487', '0.4969969'),
(123, '嘉和广场', '29.057144', '118.3110201'),
(124, '南翔', '31.2973216', '121.3268011'),
(125, '安亭', '31.29036385', '121.157514761111'),
(126, '嘉定镇', '31.4325718', '121.2104533'),
(127, '江桥', '31.2610308', '121.3417595'),
(128, '丰庄', '31.244257', '121.3507007'),
(129, '罗宾森广场', '34.6807776', '135.5458167'),
(130, '博乐广场', '39.62153765', '118.169787912311'),
(131, '马陆', '31.3396006', '121.2827592'),
(132, '新源路', '31.2984731', '121.1506534'),
(133, '戬浜', '31.302203', '121.3244327'),
(134, '黄渡', '31.2958703', '121.2351783'),
(135, '嘉定新城', '31.33208115', '121.249823253405'),
(136, '外冈', '31.2564959', '121.3498022'),
(137, '朱家角', '31.1026547', '121.0446271'),
(138, '青浦城区', '31.1169833', '121.015885838255'),
(139, '重固', '35.534686', '136.192158'),
(140, '赵巷', '31.163113', '121.187692'),
(141, '华新', '22.5518513', '114.0825159'),
(142, '徐泾', '31.9907906', '117.4533184'),
(143, '南桥', '21.2723094', '110.3628344'),
(144, '西渡', '32.179301', '131.3124935'),
(145, '环城东路', '22.9374152', '113.3659767'),
(146, '易买得', '31.1543471', '121.5328855'),
(147, '环城南路', '30.6116992', '119.7085402'),
(148, '新都汇', '34.672128', '112.428098265961'),
(149, '南桥新城区', '36.1778564', '113.1093616'),
(150, '海湾旅游区', '30.8798941', '104.009822'),
(151, '金汇镇', '30.9913152', '121.4973658'),
(152, '奉城镇', '30.9155356', '121.6420842'),
(153, '金山卫', '30.7275685', '121.3131763'),
(154, '卫零路', '30.7318035', '121.3317144'),
(155, '蒙山路', '30.7311645', '121.3390576'),
(156, '卫清路', '34.5174124', '109.457442'),
(157, '金山嘴', '28.733456', '116.5616078'),
(158, '朱泾', '31.5121506', '117.242042'),
(159, '石化', '31.267876', '108.70459'),
(160, '金山新城', '34.8473922', '137.547008'),
(161, '朱行', '31.5121506', '117.242042'),
(162, '枫泾', '25.0372753', '109.4533248'),
(163, '亭林', '30.8967457', '121.3545056'),
(164, '廊下', '30.7928984', '121.1882438'),
(165, '城桥镇', '31.6298187', '121.393374'),
(166, '堡镇', '31.538873', '121.6138167'),
(167, '新河镇', '31.5852267', '121.5161406'),
(168, '庙镇', '31.7151444', '121.3439921'),
(169, '竖新镇', '31.6168584', '121.5994474'),
(170, '向化镇', '31.5227486', '121.7193425'),
(171, '三星镇', '31.7452937', '121.2834336'),
(172, '港沿镇', '31.5898668', '121.6519182'),
(173, '中兴镇', '31.5260114', '121.7535663'),
(174, '陈家镇', '31.528379', '121.8283859'),
(175, '绿华镇', '31.7631672', '121.2151974'),
(176, '港西镇', '31.6892293', '121.4112389'),
(177, '建设镇', '31.656486', '121.4509611'),
(178, '东平镇', '31.6775346', '121.5368094'),
(179, '长兴镇', '31.391859', '121.6895931'),
(180, '横沙乡', '31.3427721', '121.8375283');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;