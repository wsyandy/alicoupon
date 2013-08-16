-- phpMyAdmin SQL Dump
-- http://www.phpmyadmin.net
--
-- 生成日期: 2013 年 08 月 16 日 09:25

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `nnLriyRpgBmrqrmDyvDz`
--

-- --------------------------------------------------------

--
-- 表的结构 `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon` varchar(16) NOT NULL,
  `note` varchar(16) NOT NULL,
  `used` int(1) NOT NULL COMMENT '0(未检查)/1(已使用)',
  `use_id` varchar(64) NOT NULL DEFAULT '',
  `use_ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `coupon`
--

INSERT INTO `coupon` (`id`, `coupon`, `note`, `used`, `use_id`, `use_ip`) VALUES
(1, 'a27f1e2357a2', 's200j40', 1, 'ap6214f2r@aliyun.com', '180.121.129.155'),
(2, 'ead356754696', 's200j40', 1, 'b18289383088@aliyun.com', '36.1.118.17'),
(3, '781236e62c09', 's400j80', 1, 'b18289383088@aliyun.com', '36.1.118.17'),
(4, 'c0bcb717bd22', 's1000j200', 1, '', '183.129.237.18'),
(5, 'f6fc6d9edbcf', 's5000j1000', 1, '', '42.120.72.32'),
(6, 'ef6dc7d17e3c', 's3000j600', 0, 'csmod@aliyun.com', '113.91.55.76'),
(7, '4270c6708ffe', 's5000j1000', 1, '', '42.120.72.32'),
(8, '28a7878a6088', 's5000j1000', 0, 'csmod@aliyun.com', '113.91.55.76'),
(9, '053fd62e2404', 's5000j1000', 1, '', '101.226.65.111'),
(10, '22d423e5b21e', 's4000j800', 1, '', '61.183.207.6'),
(11, '46b95d3664ee', 's4000j800', 1, 'eeddaa@aliyun.com', '123.244.239.102'),
(12, '14c7853e8156', 's4000j800', 0, 'wuyun1860@aliyun.com', '183.14.25.138'),
(13, '6334efa8880f', 's3000j600', 1, '', '42.120.72.32'),
(14, '02b2e3a06a62', 's3000j600', 1, 'zxing@97md.net', '61.183.207.6'),
(15, '6c78e187343c', 's3000j600', 1, 'eeddaa@aliyun.com', '123.244.239.102');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
