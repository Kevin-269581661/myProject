-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-02-24 04:00:24
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xx`
--

-- --------------------------------------------------------

--
-- 表的结构 `xx_banner`
--

CREATE TABLE `xx_banner` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL COMMENT '轮播图url',
  `pid` int(11) DEFAULT NULL COMMENT '对应商品编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_banner`
--

INSERT INTO `xx_banner` (`id`, `img_url`, `pid`) VALUES
(1, 'http://127.0.0.1:3030/img/banner/banner01.jpg', 1),
(2, 'http://127.0.0.1:3030/img/banner/banner02.jpg', 2),
(3, 'http://127.0.0.1:3030/img/banner/banner03.jpg', 3),
(4, 'http://127.0.0.1:3030/img/banner/banner04.jpg', 4);

-- --------------------------------------------------------

--
-- 表的结构 `xx_cart`
--

CREATE TABLE `xx_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `count` int(11) DEFAULT NULL COMMENT '商品数量',
  `title` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `img_url` varchar(255) DEFAULT NULL COMMENT '商品主图url',
  `mark` varchar(150) DEFAULT NULL COMMENT '促销标签',
  `is_checked` varchar(10) DEFAULT '1' COMMENT '是否选中',
  `size` varchar(255) DEFAULT NULL COMMENT '商品规格合集',
  `new_price` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `old_price` decimal(10,0) DEFAULT NULL COMMENT '原价'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_cart`
--

INSERT INTO `xx_cart` (`id`, `user_id`, `product_id`, `count`, `title`, `img_url`, `mark`, `is_checked`, `size`, `new_price`, `old_price`) VALUES
(4, 1, 1, 8, '男式真皮休闲夹克1', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01.jpg', '特价', 'true', '黑色/M', '559.00', '799'),
(5, 1, 1, 3, '男式真皮休闲夹克1', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01.jpg', '特价', 'true', '黑色/L', '559.00', '799'),
(6, 1, 1, 1, '男式真皮休闲夹克1', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01.jpg', '特价', 'false', '黑色/XL', '559.00', '799');

-- --------------------------------------------------------

--
-- 表的结构 `xx_gongge`
--

CREATE TABLE `xx_gongge` (
  `id` int(11) NOT NULL,
  `title` varchar(10) DEFAULT NULL COMMENT '类名',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图标的url',
  `sid` int(11) DEFAULT NULL COMMENT '对应商品类别编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_gongge`
--

INSERT INTO `xx_gongge` (`id`, `title`, `img_url`, `sid`) VALUES
(1, '居家', 'http://127.0.0.1:3030/img/gongge/icon01.png', 1),
(2, '鞋包配饰', 'http://127.0.0.1:3030/img/gongge/icon02.png', 2),
(3, '服饰', 'http://127.0.0.1:3030/img/gongge/icon03.png', 3),
(4, '电器', 'http://127.0.0.1:3030/img/gongge/icon04.png', 4),
(5, '婴童', 'http://127.0.0.1:3030/img/gongge/icon05.png', 5),
(6, '饮食', 'http://127.0.0.1:3030/img/gongge/icon06.png', 6),
(7, '洗护', 'http://127.0.0.1:3030/img/gongge/icon07.png', 7),
(8, '餐厨', 'http://127.0.0.1:3030/img/gongge/icon08.png', 8),
(9, '文体', 'http://127.0.0.1:3030/img/gongge/icon09.png', 9),
(10, '特色区', 'http://127.0.0.1:3030/img/gongge/icon10.png', 10);

-- --------------------------------------------------------

--
-- 表的结构 `xx_hot`
--

CREATE TABLE `xx_hot` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL COMMENT '商品图的url',
  `title` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `info` varchar(20) DEFAULT NULL COMMENT '商品的介绍',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `pid` int(11) DEFAULT NULL COMMENT '对应商品编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xx_new_list`
--

CREATE TABLE `xx_new_list` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL COMMENT '商品图的url',
  `title` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `info` varchar(20) DEFAULT NULL COMMENT '商品的介绍',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `pid` int(11) DEFAULT NULL COMMENT '对应商品编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_new_list`
--

INSERT INTO `xx_new_list` (`id`, `img_url`, `title`, `info`, `price`, `pid`) VALUES
(1, 'http://127.0.0.1:3030/img/products/product01.png', '女式式舒适中筒袜', '“优质棉绒，细腻平纹，百搭配色。”', '45.00', 1),
(2, 'http://127.0.0.1:3030/img/products/product02.png', '百年传世珐琅锅 全家系列', '“质量很好，方便清洗，简单烹饪。”', '398.00', 2),
(3, 'http://127.0.0.1:3030/img/products/product03.png', '家用按摩器', '“给工作之余，身体的最好呵护。”', '125.00', 3),
(4, 'http://127.0.0.1:3030/img/products/product04.png', '可爱软萌抱枕', '“颜色多样，采用棉绒材质。”', '465.00', 4),
(5, 'http://127.0.0.1:3030/img/products/product05.png', '西班牙制造 高端按摩椅', '“海外精品，质量有保证。”', '2546.00', 5),
(6, 'http://127.0.0.1:3030/img/products/product06.png', '精致简约 苹果无线鼠标', '“独特设计，手感很舒适。”', '155.00', 6),
(7, 'http://127.0.0.1:3030/img/products/product07.png', '家用清洁器 电动清扫', '“打扫房间不再是一件麻烦事。”', '275.00', 7);

-- --------------------------------------------------------

--
-- 表的结构 `xx_products`
--

CREATE TABLE `xx_products` (
  `id` int(11) NOT NULL,
  `banner` varchar(900) DEFAULT NULL COMMENT '轮播图',
  `title` varchar(60) DEFAULT NULL COMMENT '商品名称',
  `sub_title` varchar(60) DEFAULT NULL COMMENT '商品副标题',
  `mark` varchar(20) DEFAULT NULL COMMENT '促销标签',
  `size_normal` varchar(500) DEFAULT NULL COMMENT '商品副规格',
  `color_count` int(11) DEFAULT '1' COMMENT '几种颜色'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_products`
--

INSERT INTO `xx_products` (`id`, `banner`, `title`, `sub_title`, `mark`, `size_normal`, `color_count`) VALUES
(1, 'http://127.0.0.1:3030/img/details/p03-d03.jpg|http://127.0.0.1:3030/img/details/p03-d01.jpg|http://127.0.0.1:3030/img/details/p03-d02.jpg|http://127.0.0.1:3030/img/details/p03-d04.jpg', '男式真皮休闲夹克1', '儒雅风度，小羊皮的真实质感', '特价|元旦优惠', NULL, 4),
(2, 'http://127.0.0.1:3030/img/details/product02-detail01.png|http://127.0.0.1:3030/img/details/product02-detail02.png', '家用按摩器2', '给工作之余，身体的最好呵护', NULL, NULL, 1),
(3, 'http://127.0.0.1:3030/img/details/product-detail-banner01.jpg|http://127.0.0.1:3030/img/details/product-detail-banner02.jpg|http://127.0.0.1:3030/img/details/product-detail-banner03.jpg|http://127.0.0.1:3030/img/details/product-detail-banner04.jpg', '女式式舒适中筒袜3', '优质棉绒，细腻平纹，百搭配色', '新品上架', NULL, 5),
(4, 'http://127.0.0.1:3030/img/details/p03-d03.jpg|http://127.0.0.1:3030/img/details/p03-d01.jpg|http://127.0.0.1:3030/img/details/p03-d02.jpg|http://127.0.0.1:3030/img/details/p03-d04.jpg', '男式真皮休闲夹克4', '儒雅风度，小羊皮的真实质感', '特价|元旦优惠', NULL, 2),
(5, 'http://127.0.0.1:3030/img/details/product02-detail01.png|http://127.0.0.1:3030/img/details/product02-detail02.png', '家用按摩器5', '给工作之余，身体的最好呵护', NULL, NULL, 1),
(6, 'http://127.0.0.1:3030/img/details/product-detail-banner01.jpg|http://127.0.0.1:3030/img/details/product-detail-banner02.jpg|http://127.0.0.1:3030/img/details/product-detail-banner03.jpg|http://127.0.0.1:3030/img/details/product-detail-banner04.jpg', '女式式舒适中筒袜6', '优质棉绒，细腻平纹，百搭配色', '新品上架', NULL, 1),
(7, 'http://127.0.0.1:3030/img/details/p03-d03.jpg|http://127.0.0.1:3030/img/details/p03-d01.jpg|http://127.0.0.1:3030/img/details/p03-d02.jpg|http://127.0.0.1:3030/img/details/p03-d04.jpg', '男式真皮休闲夹克7', '儒雅风度，小羊皮的真实质感', '特价|元旦优惠', NULL, 2),
(8, 'http://127.0.0.1:3030/img/details/product02-detail01.png|http://127.0.0.1:3030/img/details/product02-detail02.png', '家用按摩器8', '给工作之余，身体的最好呵护', NULL, NULL, 1),
(9, 'http://127.0.0.1:3030/img/details/product-detail-banner01.jpg|http://127.0.0.1:3030/img/details/product-detail-banner02.jpg|http://127.0.0.1:3030/img/details/product-detail-banner03.jpg|http://127.0.0.1:3030/img/details/product-detail-banner04.jpg', '女式式舒适中筒袜9', '优质棉绒，细腻平纹，百搭配色', '新品上架', NULL, 6),
(10, 'http://127.0.0.1:3030/img/details/p03-d03.jpg|http://127.0.0.1:3030/img/details/p03-d01.jpg|http://127.0.0.1:3030/img/details/p03-d02.jpg|http://127.0.0.1:3030/img/details/p03-d04.jpg', '男式真皮休闲夹克10', '儒雅风度，小羊皮的真实质感', '特价|元旦优惠', NULL, 1),
(11, 'http://127.0.0.1:3030/img/details/product02-detail01.png|http://127.0.0.1:3030/img/details/product02-detail02.png', '家用按摩器11', '给工作之余，身体的最好呵护', NULL, NULL, 4),
(12, 'http://127.0.0.1:3030/img/details/product-detail-banner01.jpg|http://127.0.0.1:3030/img/details/product-detail-banner02.jpg|http://127.0.0.1:3030/img/details/product-detail-banner03.jpg|http://127.0.0.1:3030/img/details/product-detail-banner04.jpg', '女式式舒适中筒袜12', '优质棉绒，细腻平纹，百搭配色', '新品上架', NULL, 1),
(13, 'http://127.0.0.1:3030/img/details/p03-d03.jpg|http://127.0.0.1:3030/img/details/p03-d01.jpg|http://127.0.0.1:3030/img/details/p03-d02.jpg|http://127.0.0.1:3030/img/details/p03-d04.jpg', '男式真皮休闲夹克13', '儒雅风度，小羊皮的真实质感', '特价|元旦优惠', NULL, 4),
(14, 'http://127.0.0.1:3030/img/details/product02-detail01.png|http://127.0.0.1:3030/img/details/product02-detail02.png', '家用按摩器14', '给工作之余，身体的最好呵护', NULL, NULL, 1),
(15, 'http://127.0.0.1:3030/img/details/product-detail-banner01.jpg|http://127.0.0.1:3030/img/details/product-detail-banner02.jpg|http://127.0.0.1:3030/img/details/product-detail-banner03.jpg|http://127.0.0.1:3030/img/details/product-detail-banner04.jpg', '女式式舒适中筒袜15', '优质棉绒，细腻平纹，百搭配色', '新品上架', NULL, 5),
(16, 'http://127.0.0.1:3030/img/details/p03-d03.jpg|http://127.0.0.1:3030/img/details/p03-d01.jpg|http://127.0.0.1:3030/img/details/p03-d02.jpg|http://127.0.0.1:3030/img/details/p03-d04.jpg', '男式真皮休闲夹克16', '儒雅风度，小羊皮的真实质感', '特价|元旦优惠', NULL, 2),
(17, 'http://127.0.0.1:3030/img/details/product02-detail01.png|http://127.0.0.1:3030/img/details/product02-detail02.png', '家用按摩器17', '给工作之余，身体的最好呵护', NULL, NULL, 1),
(18, 'http://127.0.0.1:3030/img/details/product-detail-banner01.jpg|http://127.0.0.1:3030/img/details/product-detail-banner02.jpg|http://127.0.0.1:3030/img/details/product-detail-banner03.jpg|http://127.0.0.1:3030/img/details/product-detail-banner04.jpg', '女式式舒适中筒袜17', '优质棉绒，细腻平纹，百搭配色', '新品上架', NULL, 1),
(19, 'http://127.0.0.1:3030/img/details/p03-d03.jpg|http://127.0.0.1:3030/img/details/p03-d01.jpg|http://127.0.0.1:3030/img/details/p03-d02.jpg|http://127.0.0.1:3030/img/details/p03-d04.jpg', '男式真皮休闲夹克19', '儒雅风度，小羊皮的真实质感', '特价|元旦优惠', NULL, 2),
(20, 'http://127.0.0.1:3030/img/details/product02-detail01.png|http://127.0.0.1:3030/img/details/product02-detail02.png', '家用按摩器20', '给工作之余，身体的最好呵护', NULL, NULL, 1),
(21, 'http://127.0.0.1:3030/img/details/product-detail-banner01.jpg|http://127.0.0.1:3030/img/details/product-detail-banner02.jpg|http://127.0.0.1:3030/img/details/product-detail-banner03.jpg|http://127.0.0.1:3030/img/details/product-detail-banner04.jpg', '女式式舒适中筒袜21', '优质棉绒，细腻平纹，百搭配色', '新品上架', NULL, 6),
(22, 'http://127.0.0.1:3030/img/details/p03-d03.jpg|http://127.0.0.1:3030/img/details/p03-d01.jpg|http://127.0.0.1:3030/img/details/p03-d02.jpg|http://127.0.0.1:3030/img/details/p03-d04.jpg', '男式真皮休闲夹克22', '儒雅风度，小羊皮的真实质感', '特价|元旦优惠', NULL, 1),
(23, 'http://127.0.0.1:3030/img/details/product02-detail01.png|http://127.0.0.1:3030/img/details/product02-detail02.png', '家用按摩器23', '给工作之余，身体的最好呵护', NULL, NULL, 4),
(24, 'http://127.0.0.1:3030/img/details/product-detail-banner01.jpg|http://127.0.0.1:3030/img/details/product-detail-banner02.jpg|http://127.0.0.1:3030/img/details/product-detail-banner03.jpg|http://127.0.0.1:3030/img/details/product-detail-banner04.jpg', '女式式舒适中筒袜24', '优质棉绒，细腻平纹，百搭配色', '新品上架', NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xx_product_size`
--

CREATE TABLE `xx_product_size` (
  `id` int(11) NOT NULL,
  `size_main` varchar(50) DEFAULT NULL COMMENT '主规格',
  `size_sub` varchar(500) DEFAULT NULL COMMENT '副规格',
  `img_url` varchar(255) DEFAULT NULL COMMENT '商品图片url',
  `new_price` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `old_price` decimal(10,0) DEFAULT NULL COMMENT '原价',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_product_size`
--

INSERT INTO `xx_product_size` (`id`, `size_main`, `size_sub`, `img_url`, `new_price`, `old_price`, `product_id`) VALUES
(1, '黑色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01\r\njpg', '559.00', '799', 1),
(2, '白色', 'M|L|XL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size02\r\npng', '559.00', '799', 1),
(3, '军绿色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size03\r\npng', '559.00', '799', 1),
(4, '简约版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size01\r\npng', '1400.00', '1560', 2),
(5, '全家用豪华大礼包版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size02\r\npng', '2600.00', '3560', 2),
(6, '黑色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 3),
(7, '米蓝色（两双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '16.00', NULL, 3),
(8, '白色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 3),
(9, '落叶黄（四双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '35.00', NULL, 3),
(10, '黑色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01\r\njpg', '559.00', '799', 4),
(11, '白色', 'M|L|XL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size02\r\npng', '559.00', '799', 4),
(12, '军绿色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size03\r\npng', '559.00', '799', 4),
(13, '简约版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size01\r\npng', '1400.00', '1560', 5),
(14, '全家用豪华大礼包版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size02\r\npng', '2600.00', '3560', 5),
(15, '黑色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 6),
(16, '米蓝色（两双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '16.00', NULL, 6),
(17, '白色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 6),
(18, '落叶黄（四双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '35.00', NULL, 6),
(19, '黑色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01\r\njpg', '559.00', '799', 7),
(20, '白色', 'M|L|XL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size02\r\npng', '559.00', '799', 7),
(21, '军绿色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size03\r\npng', '559.00', '799', 7),
(22, '简约版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size01\r\npng', '1400.00', '1560', 8),
(23, '全家用豪华大礼包版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size02\r\npng', '2600.00', '3560', 8),
(24, '黑色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 9),
(25, '米蓝色（两双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '16.00', NULL, 9),
(26, '白色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 9),
(27, '落叶黄（四双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '35.00', NULL, 9),
(28, '黑色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01\r\njpg', '559.00', '799', 10),
(29, '白色', 'M|L|XL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size02\r\npng', '559.00', '799', 10),
(30, '军绿色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size03\r\npng', '559.00', '799', 10),
(31, '简约版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size01\r\npng', '1400.00', '1560', 11),
(32, '全家用豪华大礼包版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size02\r\npng', '2600.00', '3560', 11),
(33, '黑色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 12),
(34, '米蓝色（两双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '16.00', NULL, 12),
(35, '白色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 12),
(36, '落叶黄（四双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '35.00', NULL, 12),
(37, '黑色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01\r\njpg', '559.00', '799', 13),
(38, '白色', 'M|L|XL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size02\r\npng', '559.00', '799', 13),
(39, '军绿色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size03\r\npng', '559.00', '799', 13),
(40, '简约版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size01\r\npng', '1400.00', '1560', 14),
(41, '全家用豪华大礼包版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size02\r\npng', '2600.00', '3560', 14),
(42, '黑色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 15),
(43, '米蓝色（两双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '16.00', NULL, 15),
(44, '白色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 15),
(45, '落叶黄（四双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '35.00', NULL, 15),
(46, '黑色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01\r\njpg', '559.00', '799', 16),
(47, '白色', 'M|L|XL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size02\r\npng', '559.00', '799', 16),
(48, '军绿色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size03\r\npng', '559.00', '799', 16),
(49, '简约版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size01\r\npng', '1400.00', '1560', 17),
(50, '全家用豪华大礼包版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size02\r\npng', '2600.00', '3560', 17),
(51, '黑色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 18),
(52, '米蓝色（两双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '16.00', NULL, 18),
(53, '白色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 18),
(54, '落叶黄（四双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '35.00', NULL, 18),
(55, '黑色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01\r\njpg', '559.00', '799', 19),
(56, '白色', 'M|L|XL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size02\r\npng', '559.00', '799', 19),
(57, '军绿色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size03\r\npng', '559.00', '799', 19),
(58, '简约版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size01\r\npng', '1400.00', '1560', 20),
(59, '全家用豪华大礼包版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size02\r\npng', '2600.00', '3560', 20),
(60, '黑色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 21),
(61, '米蓝色（两双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '16.00', NULL, 21),
(62, '白色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 21),
(63, '落叶黄（四双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '35.00', NULL, 21),
(64, '黑色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size01\r\njpg', '559.00', '799', 22),
(65, '白色', 'M|L|XL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size02\r\npng', '559.00', '799', 22),
(66, '军绿色', 'M|L|XL|XXL', 'http://127.0.0.1:3030/img/pro-size-img/pro01-size03\r\npng', '559.00', '799', 22),
(67, '简约版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size01\r\npng', '1400.00', '1560', 23),
(68, '全家用豪华大礼包版', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro02-size02\r\npng', '2600.00', '3560', 23),
(69, '黑色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 24),
(70, '米蓝色（两双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '16.00', NULL, 24),
(71, '白色（三双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size01\r\npng', '26.00', NULL, 24),
(72, '落叶黄（四双装）', NULL, 'http://127.0.0.1:3030/img/pro-size-img/pro03-size02\r\npng', '35.00', NULL, 24);

-- --------------------------------------------------------

--
-- 表的结构 `xx_show`
--

CREATE TABLE `xx_show` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `img_url` varchar(255) DEFAULT NULL COMMENT '商品图的url',
  `mark` varchar(20) DEFAULT NULL COMMENT '促销标签',
  `newPrice` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `oldPrice` decimal(10,2) DEFAULT NULL COMMENT '旧价',
  `des` varchar(20) DEFAULT NULL COMMENT '商品介绍',
  `color` varchar(10) DEFAULT NULL COMMENT '商品的颜色种类',
  `pid` int(11) DEFAULT NULL COMMENT '对应商品编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_show`
--

INSERT INTO `xx_show` (`id`, `title`, `img_url`, `mark`, `newPrice`, `oldPrice`, `des`, `color`, `pid`) VALUES
(1, '冬季特暖棉绒袜', 'http://127.0.0.1:3030/img/products/product01.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 1),
(2, '冬季特暖棉棉被', 'http://127.0.0.1:3030/img/products/product01.png', '打折', '56.00', '92.00', '保暖，舒适，质量好', '8', 2),
(3, '家用按摩器', 'http://127.0.0.1:3030/img/products/product01.png', '好货', '92.00', '152.00', '保暖，舒适，质量好', '8', 3),
(4, '冬季特暖棉绒袜1', 'http://127.0.0.1:3030/img/products/product02.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 4),
(5, '冬季特暖棉绒袜2', 'http://127.0.0.1:3030/img/products/product03.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 5),
(6, '冬季特暖棉绒袜3', 'http://127.0.0.1:3030/img/products/product04.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 6),
(7, '冬季特暖棉绒袜4', 'http://127.0.0.1:3030/img/products/product05.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 7),
(8, '冬季特暖棉绒袜5', 'http://127.0.0.1:3030/img/products/product06.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 8),
(9, '冬季特暖棉绒袜6', 'http://127.0.0.1:3030/img/products/product06.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 9),
(10, '冬季特暖棉绒袜7', 'http://127.0.0.1:3030/img/products/product01.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 10),
(11, '冬季特暖棉绒袜8', 'http://127.0.0.1:3030/img/products/product02.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 11),
(12, '冬季特暖棉绒袜9', 'http://127.0.0.1:3030/img/products/product03.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 12),
(13, '冬季特暖棉绒袜10', 'http://127.0.0.1:3030/img/products/product04.png', '圣诞特惠', '12.00', '52.00', '保暖，舒适，质量好', '8', 13);

-- --------------------------------------------------------

--
-- 表的结构 `xx_sorts`
--

CREATE TABLE `xx_sorts` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '类名称',
  `stable` varchar(50) DEFAULT NULL COMMENT '对应商品类别的表名',
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_sorts`
--

INSERT INTO `xx_sorts` (`id`, `title`, `stable`, `sid`) VALUES
(1, '冬季专区', 'pSort1', 1),
(2, '鞋包配饰', 'pSort2', 2),
(3, '服装', 'pSort3', 3),
(4, '电器', 'pSort4', 4),
(5, '洗护', 'pSort5', 5),
(6, '饮食', 'pSort6', 6),
(7, '餐厨', 'pSort7', 7),
(8, '婴童', 'pSort8', 8),
(9, '文体', 'pSort9', 9),
(10, '鞋包配饰', 'pSort10', 10),
(11, '冬季专区', 'pSort11', 11),
(12, '冬季专区', 'pSort12', 12),
(13, '冬季专区', 'pSort13', 13),
(14, '冬季专区', 'pSort14', 14);

-- --------------------------------------------------------

--
-- 表的结构 `xx_user`
--

CREATE TABLE `xx_user` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT NULL COMMENT '用户名',
  `upwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(255) DEFAULT 'http://127.0.0.1:3030/img/person/person01.png' COMMENT '头像url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xx_user`
--

INSERT INTO `xx_user` (`id`, `uname`, `upwd`, `email`, `avatar`) VALUES
(1, '17777777777', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'http://127.0.0.1:3030/img/person/person01.png'),
(2, '18888888888', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'http://127.0.0.1:3030/img/person/person01.png'),
(3, '18111111111', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'http://127.0.0.1:3030/img/person/person01.png'),
(4, '18888888887', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'http://127.0.0.1:3030/img/person/person01.png'),
(5, '18888888887', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'http://127.0.0.1:3030/img/person/person01.png'),
(6, '15555555555', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'http://127.0.0.1:3030/img/person/person01.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xx_banner`
--
ALTER TABLE `xx_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_cart`
--
ALTER TABLE `xx_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_gongge`
--
ALTER TABLE `xx_gongge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_hot`
--
ALTER TABLE `xx_hot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_new_list`
--
ALTER TABLE `xx_new_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_products`
--
ALTER TABLE `xx_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_product_size`
--
ALTER TABLE `xx_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_show`
--
ALTER TABLE `xx_show`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_sorts`
--
ALTER TABLE `xx_sorts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_user`
--
ALTER TABLE `xx_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `xx_banner`
--
ALTER TABLE `xx_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `xx_cart`
--
ALTER TABLE `xx_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `xx_gongge`
--
ALTER TABLE `xx_gongge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `xx_hot`
--
ALTER TABLE `xx_hot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xx_new_list`
--
ALTER TABLE `xx_new_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `xx_products`
--
ALTER TABLE `xx_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `xx_product_size`
--
ALTER TABLE `xx_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- 使用表AUTO_INCREMENT `xx_show`
--
ALTER TABLE `xx_show`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `xx_sorts`
--
ALTER TABLE `xx_sorts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `xx_user`
--
ALTER TABLE `xx_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
