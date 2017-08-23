-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 08 月 17 日 22:45
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
-- 表的结构 `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `area1` varchar(100) DEFAULT NULL,
  `area2` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `num` int(32) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=179373 ;

--
-- 转存表中的数据 `food`
--

INSERT INTO `food` (`id`, `area1`, `area2`, `title`, `num`, `price`) VALUES
(10959, '闵行区', '七宝', '新元素餐厅(七宝万科广场店)', 477, 127),
(10960, '闵行区', '七宝', '十六道牛味潮汕牛肉火锅(七宝店)', 1715, 108),
(10961, '闵行区', '七宝', '白雨果WhiteHugo', 0, 0),
(10962, '闵行区', '七宝', 'ZIRE孜苒(七宝宝龙店)', 403, 80),
(10963, '闵行区', '七宝', '阿拉人家上海菜(七宝万科广场店)', 404, 122),
(10964, '闵行区', '七宝', 'BANLANBEER斑蓝啤酒吧(七宝宝龙店)', 103, 117),
(10965, '闵行区', '七宝', '酒吞(七宝万科广场店)', 1317, 316),
(10966, '闵行区', '七宝', 'Rhythm美式餐厅', 225, 105),
(10967, '闵行区', '七宝', '月光下的毡房(中谊路店)', 443, 87),
(10968, '闵行区', '七宝', '舞泽?雪蟹和牛蒸涮锅(七宝万科广场店)', 437, 397);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
