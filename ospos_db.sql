-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2014 at 11:07 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ospos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ospos_app_config`
--

CREATE TABLE IF NOT EXISTS `ospos_app_config` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', 'suntonpon@hotmail.com'),
('company', 'ปราณี ค้าส่ง'),
('currency_side', 'currency_side'),
('currency_symbol', '฿'),
('custom10_name', ''),
('custom1_name', ''),
('custom2_name', ''),
('custom3_name', ''),
('custom4_name', ''),
('custom5_name', ''),
('custom6_name', ''),
('custom7_name', ''),
('custom8_name', ''),
('custom9_name', ''),
('default_tax_1_name', '1'),
('default_tax_1_rate', '0'),
('default_tax_2_name', '2'),
('default_tax_2_rate', '0'),
('default_tax_rate', '8'),
('email', 'suntonpon@hotmail.com'),
('fax', '0'),
('language', 'Thai'),
('phone', '0910344556'),
('print_after_sale', '0'),
('return_policy', '1'),
('timezone', 'Asia/Bangkok'),
('website', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers`
--

CREATE TABLE IF NOT EXISTS `ospos_customers` (
  `person_id` int(10) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_employees`
--

CREATE TABLE IF NOT EXISTS `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `username` (`username`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`) VALUES
('admin', '439a6de57d475c1a0ba9bcb1c39f0af6', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_giftcards`
--

CREATE TABLE IF NOT EXISTS `ospos_giftcards` (
  `giftcard_id` int(11) NOT NULL AUTO_INCREMENT,
  `giftcard_number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `value` double(15,2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`giftcard_id`),
  UNIQUE KEY `giftcard_number` (`giftcard_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_inventory`
--

CREATE TABLE IF NOT EXISTS `ospos_inventory` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_items` int(11) NOT NULL DEFAULT '0',
  `trans_user` int(11) NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text NOT NULL,
  `trans_inventory` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`trans_id`),
  KEY `ospos_inventory_ibfk_1` (`trans_items`),
  KEY `ospos_inventory_ibfk_2` (`trans_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=237 ;

--
-- Dumping data for table `ospos_inventory`
--

INSERT INTO `ospos_inventory` (`trans_id`, `trans_items`, `trans_user`, `trans_date`, `trans_comment`, `trans_inventory`) VALUES
(158, 37, 1, '2014-04-01 22:10:55', 'Manual Edit of Quantity', 0),
(159, 35, 1, '2014-04-01 22:11:07', 'Manual Edit of Quantity', 0),
(160, 36, 1, '2014-04-01 22:11:15', 'Manual Edit of Quantity', 0),
(161, 34, 1, '2014-04-01 22:11:22', 'Manual Edit of Quantity', 0),
(162, 34, 1, '2014-04-01 22:11:24', 'Manual Edit of Quantity', 0),
(163, 35, 1, '2014-04-01 22:11:51', 'Manual Edit of Quantity', 0),
(164, 35, 1, '2014-04-01 22:11:53', 'Manual Edit of Quantity', 0),
(165, 37, 1, '2014-04-01 22:12:19', 'Manual Edit of Quantity', 0),
(166, 37, 1, '2014-04-02 04:31:42', 'Manual Edit of Quantity', 0),
(167, 35, 1, '2014-04-02 04:31:56', 'Manual Edit of Quantity', 0),
(168, 37, 1, '2014-04-02 04:32:22', 'REQS 101', -1),
(169, 74, 1, '2014-04-02 04:32:22', 'REQS 101', 10),
(170, 35, 1, '2014-04-02 04:32:22', 'REQS 101', -1),
(171, 75, 1, '2014-04-02 04:32:22', 'REQS 101', 10),
(172, 37, 1, '2014-04-02 04:32:56', 'REQS 102', -1),
(173, 74, 1, '2014-04-02 04:32:56', 'REQS 102', 10),
(174, 36, 1, '2014-04-02 04:32:57', 'REQS 102', -1),
(175, 74, 1, '2014-04-02 04:32:57', 'REQS 102', 1),
(176, 36, 1, '2014-04-02 04:33:39', 'REQS 103', -1),
(177, 74, 1, '2014-04-02 04:33:39', 'REQS 103', 1),
(178, 37, 1, '2014-04-02 04:33:39', 'REQS 103', -1),
(179, 74, 1, '2014-04-02 04:33:39', 'REQS 103', 10),
(180, 37, 1, '2014-04-02 04:35:02', 'RECV 24', 3),
(181, 36, 1, '2014-04-02 04:35:03', 'RECV 24', 2),
(182, 37, 1, '2014-04-02 04:35:58', 'REQS 104', -2),
(183, 74, 1, '2014-04-02 04:35:58', 'REQS 104', 20),
(184, 35, 1, '2014-04-02 04:35:58', 'REQS 104', -2),
(185, 75, 1, '2014-04-02 04:35:58', 'REQS 104', 20),
(186, 74, 1, '2014-04-02 04:37:27', 'POS 2', -5),
(187, 75, 1, '2014-04-02 04:37:27', 'POS 2', -5),
(188, 37, 1, '2014-04-02 12:31:38', 'REQS 105', -1),
(189, 76, 1, '2014-04-02 12:31:38', 'REQS 105', 10),
(190, 77, 1, '2014-04-02 12:35:56', 'Manual Edit of Quantity', 1),
(191, 77, 1, '2014-04-02 12:37:44', 'Manual Edit of Quantity', 0),
(192, 77, 1, '2014-04-02 12:37:45', 'Manual Edit of Quantity', 0),
(193, 37, 1, '2014-04-03 15:15:54', 'REQS 106', -1),
(194, 76, 1, '2014-04-03 15:15:54', 'REQS 106', 10),
(195, 35, 1, '2014-04-03 15:19:09', 'REQS 107', -2),
(196, 75, 1, '2014-04-03 15:19:09', 'REQS 107', 20),
(197, 37, 1, '2014-04-03 15:19:09', 'REQS 107', -2),
(198, 76, 1, '2014-04-03 15:19:09', 'REQS 107', 20),
(199, 34, 1, '2014-04-03 15:19:09', 'REQS 107', -1),
(200, 75, 1, '2014-04-03 15:19:09', 'REQS 107', 1),
(201, 78, 1, '2014-04-03 15:20:54', 'แก้ไขจำนวน', 10),
(202, 78, 1, '2014-04-03 15:21:12', 'REQS 108', -2),
(203, 79, 1, '2014-04-03 15:21:12', 'REQS 108', 2),
(204, 35, 1, '2014-04-04 04:35:49', 'POS 3', -5),
(205, 36, 1, '2014-04-04 04:35:49', 'POS 3', -1),
(206, 35, 1, '2014-04-04 04:37:06', 'RECV 25', 5),
(207, 36, 1, '2014-04-04 04:37:06', 'RECV 25', 1),
(208, 80, 1, '2014-04-04 09:54:05', 'แก้ไขจำนวน', 20),
(209, 81, 1, '2014-04-04 09:55:26', 'แก้ไขจำนวน', 20),
(210, 82, 1, '2014-04-04 09:56:37', 'แก้ไขจำนวน', 10),
(211, 82, 1, '2014-04-04 09:58:31', 'แก้ไขจำนวน', 0),
(212, 82, 1, '2014-04-04 09:58:32', 'แก้ไขจำนวน', 0),
(213, 82, 1, '2014-04-04 09:58:34', 'แก้ไขจำนวน', 0),
(214, 82, 1, '2014-04-04 09:59:40', 'REQS 109', -2),
(215, 83, 1, '2014-04-04 09:59:40', 'REQS 109', 24),
(216, 81, 1, '2014-04-04 09:59:40', 'REQS 109', -10),
(217, 84, 1, '2014-04-04 09:59:40', 'REQS 109', 10),
(218, 80, 1, '2014-04-04 15:12:54', '', 10),
(219, 80, 1, '2014-04-05 03:26:38', 'RECV 26', -1),
(220, 84, 1, '2014-04-05 03:33:38', 'POS 4', 0),
(221, 84, 1, '2014-04-05 18:45:25', 'POS 5', -1),
(222, 83, 1, '2014-04-05 18:45:25', 'POS 5', -1),
(223, 83, 1, '2014-04-05 18:48:29', 'POS 6', -1),
(224, 84, 1, '2014-04-05 18:50:23', 'POS 7', -1),
(225, 84, 1, '2014-04-05 19:01:59', 'POS 8', -3),
(226, 81, 1, '2014-04-06 16:50:06', 'REQS 110', -1),
(227, 84, 1, '2014-04-06 16:50:06', 'REQS 110', 1),
(228, 82, 1, '2014-04-06 16:52:51', 'RECV 27', 1),
(229, 80, 1, '2014-04-06 16:53:52', 'RECV 28', 1),
(230, 80, 1, '2014-04-15 11:51:38', 'POS 9', -10),
(231, 83, 1, '2014-04-15 12:11:52', 'POS 10', -1),
(232, 83, 1, '2014-04-15 12:12:45', 'POS 11', -1),
(233, 84, 1, '2014-04-15 12:15:55', 'POS 12', -1),
(234, 83, 1, '2014-04-16 12:41:33', 'แก้ไขจำนวน', 0),
(235, 83, 1, '2014-04-16 12:41:34', 'แก้ไขจำนวน', 0),
(236, 83, 1, '2014-04-16 12:41:44', 'แก้ไขจำนวน', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items`
--

CREATE TABLE IF NOT EXISTS `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` double(15,2) NOT NULL,
  `unit_price` double(15,2) NOT NULL,
  `quantity` double(15,2) NOT NULL DEFAULT '0.00',
  `reorder_level` double(15,2) NOT NULL DEFAULT '0.00',
  `location` varchar(255) NOT NULL,
  `item_id` int(10) NOT NULL AUTO_INCREMENT,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `stock_type` enum('sale_stock','warehouse') NOT NULL DEFAULT 'warehouse',
  `custom1` varchar(25) NOT NULL,
  `custom2` varchar(25) NOT NULL,
  `custom3` varchar(25) NOT NULL,
  `custom4` varchar(25) NOT NULL,
  `custom5` varchar(25) NOT NULL,
  `custom6` varchar(25) NOT NULL,
  `custom7` varchar(25) NOT NULL,
  `custom8` varchar(25) NOT NULL,
  `custom9` varchar(25) NOT NULL,
  `custom10` varchar(25) NOT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id` (`item_id`),
  KEY `ospos_items_ibfk_1` (`supplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `ospos_items`
--

INSERT INTO `ospos_items` (`name`, `category`, `supplier_id`, `item_number`, `description`, `cost_price`, `unit_price`, `quantity`, `reorder_level`, `location`, `item_id`, `allow_alt_description`, `is_serialized`, `deleted`, `stock_type`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`) VALUES
('Nokia 1280', 'Mobile phone', NULL, '6438158158412', '', 500.00, 700.00, 9.00, 0.00, '', 34, 0, 0, 1, 'warehouse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('(Pack)Nokia 1280', 'Mobile phone', NULL, '885909408535', '', 5000.00, 6000.00, 5.00, 1.00, '', 35, 0, 0, 1, 'warehouse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('Ipad power adapter', 'Mobile accessory', NULL, '04045510960', '', 1000.00, 1300.00, 10.00, 1.00, '', 36, 0, 0, 1, 'warehouse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('(Pack) Ipad power adapter', 'Mobile accessory', NULL, '02/25/14', 'test description', 5000.00, 6000.00, 4.00, 1.00, '', 37, 0, 0, 1, 'warehouse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('Ipad power adapter', 'Mobile accessory', NULL, '04045510960', '', 1000.00, 1300.00, 47.00, 1.00, '', 74, 0, 0, 1, 'sale_stock', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('Nokia 1280', 'Mobile phone', NULL, '6438158158412', '', 500.00, 700.00, 46.00, 0.00, '', 75, 0, 0, 1, 'sale_stock', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('Ipad power adapter', 'Mobile accessory', NULL, '04045510960', '', 1000.00, 1300.00, 40.00, 1.00, '', 76, 0, 0, 1, 'sale_stock', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('qw', 'Mobile phone', NULL, 'wqdq', '', 1.00, 1.00, 1.00, 1.00, '', 77, 0, 0, 1, 'warehouse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('test', 'Mobile accessory', NULL, '12345', '', 10.00, 10.00, 8.00, 10.00, '', 78, 0, 0, 1, 'warehouse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('test', 'Mobile accessory', NULL, '12345', '', 10.00, 10.00, 2.00, 10.00, '', 79, 0, 0, 1, 'sale_stock', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('ถุงมายองเยส', 'อาหาร', NULL, '8850328111740', '', 10.00, 15.00, 20.00, 1.00, '', 80, 0, 0, 0, 'warehouse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('แป้งใบไม้ทอง', 'อาหาร', NULL, '8850581124020', '', 50.00, 55.00, 9.00, 1.00, '', 81, 0, 0, 0, 'warehouse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('(ลัง)มายองเนส', 'อาหาร', NULL, '18850144204104', '', 200.00, 220.00, 9.00, 1.00, '', 82, 0, 0, 0, 'warehouse', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('ถุงมายองเยส', 'อาหาร', NULL, '8850328111740', '', 10.00, 15.00, 20.00, 1.00, '', 83, 0, 0, 0, 'sale_stock', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('แป้งใบไม้ทอง', 'อาหาร', NULL, '8850581124020', '', 50.00, 55.00, 5.00, 1.00, '', 84, 0, 0, 0, 'sale_stock', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items_taxes`
--

CREATE TABLE IF NOT EXISTS `ospos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` double(15,3) NOT NULL,
  PRIMARY KEY (`item_id`,`name`,`percent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_items_taxes`
--

INSERT INTO `ospos_items_taxes` (`item_id`, `name`, `percent`) VALUES
(77, '1', 0.000),
(77, '2', 0.000),
(78, '1', 0.000),
(78, '2', 0.000),
(80, '1', 0.000),
(80, '2', 0.000),
(81, '1', 0.000),
(81, '2', 0.000),
(82, '1', 0.000),
(82, '2', 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kits`
--

CREATE TABLE IF NOT EXISTS `ospos_item_kits` (
  `item_kit_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`item_kit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kit_items`
--

CREATE TABLE IF NOT EXISTS `ospos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` double(15,2) NOT NULL,
  PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  KEY `ospos_item_kit_items_ibfk_2` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_unit`
--

CREATE TABLE IF NOT EXISTS `ospos_item_unit` (
  `item_id` int(11) NOT NULL,
  `unit_quantity` int(11) NOT NULL,
  `related_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ospos_item_unit`
--

INSERT INTO `ospos_item_unit` (`item_id`, `unit_quantity`, `related_number`) VALUES
(34, 1, '6438158158412'),
(35, 10, '6438158158412'),
(36, 1, '04045510960'),
(37, 10, '04045510960'),
(77, 1, 'wqdqzcasdfcsfw'),
(78, 1, '12345'),
(80, 1, '8850328111740'),
(81, 1, '8850581124020'),
(82, 12, '8850328111740'),
(83, 1, '8850328111740');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_modules`
--

CREATE TABLE IF NOT EXISTS `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  UNIQUE KEY `name_lang_key` (`name_lang_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`) VALUES
('module_config', 'module_config_desc', 100, 'config'),
('module_customers', 'module_customers_desc', 10, 'customers'),
('module_employees', 'module_employees_desc', 80, 'employees'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards'),
('module_items', 'module_items_desc', 20, 'items'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits'),
('module_receivings', 'module_receivings_desc', 60, 'receivings'),
('module_reports', 'module_reports_desc', 50, 'reports'),
('module_sales', 'module_sales_desc', 70, 'sales'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_people`
--

CREATE TABLE IF NOT EXISTS `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('John', 'Doe', '555-555-5555', 'admin@pappastech.com', 'Address 1', '', '', '', '', '', '', 1),
('Bob', 'Smith', '585-555-1111', 'bsmith@nowhere.com', '123 Nowhere Street', 'Apt 4', 'Awesome', 'NY', '11111', 'USA', 'Awesome guy', 2),
('padungsak', 'suntonphon', '', 'suntonpon@hotmail.com', '', '', '', '', '', '', '', 3),
('padungsak', 'suntonphon', '', '', '', '', '', '', '', '', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_permissions`
--

CREATE TABLE IF NOT EXISTS `ospos_permissions` (
  `module_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  PRIMARY KEY (`module_id`,`person_id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`module_id`, `person_id`) VALUES
('config', 1),
('customers', 1),
('employees', 1),
('giftcards', 1),
('items', 1),
('item_kits', 1),
('receivings', 1),
('reports', 1),
('sales', 1),
('suppliers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings`
--

CREATE TABLE IF NOT EXISTS `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `receiving_id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`receiving_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `ospos_receivings`
--

INSERT INTO `ospos_receivings` (`receiving_time`, `supplier_id`, `employee_id`, `comment`, `receiving_id`, `payment_type`) VALUES
('2014-04-02 15:35:02', NULL, 1, '', 24, 'Cash'),
('2014-04-04 04:37:06', NULL, 1, '', 25, 'เงินสด'),
('2014-04-05 03:26:38', NULL, 1, '', 26, 'Cash'),
('2014-04-06 16:52:51', NULL, 1, 'Test comment', 27, 'Cash'),
('2014-04-06 16:53:52', NULL, 1, 'Test comment2', 28, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings_items`
--

CREATE TABLE IF NOT EXISTS `ospos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` int(10) NOT NULL DEFAULT '0',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` double(15,2) NOT NULL,
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_receivings_items`
--

INSERT INTO `ospos_receivings_items` (`receiving_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`) VALUES
(24, 36, '', '0', 2, 2, '1000.00', 1000.00, 0),
(24, 37, 'test description', '0', 1, 3, '5000.00', 5000.00, 0),
(25, 35, '', '', 1, 5, '5000.00', 5000.00, 0),
(25, 36, '', '', 2, 1, '1000.00', 1000.00, 0),
(26, 80, '', '', 1, -1, '10.00', 10.00, 0),
(27, 82, '', '', 1, 1, '200.00', 200.00, 0),
(28, 80, '', '', 1, 1, '10.00', 10.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_requisitions`
--

CREATE TABLE IF NOT EXISTS `ospos_requisitions` (
  `requisition_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `requisition_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`requisition_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `ospos_requisitions`
--

INSERT INTO `ospos_requisitions` (`requisition_time`, `employee_id`, `comment`, `requisition_id`) VALUES
('2014-04-02 15:32:22', 1, '', 101),
('2014-04-02 15:32:56', 1, '', 102),
('2014-04-02 15:33:39', 1, '', 103),
('2014-04-02 15:35:58', 1, '', 104),
('2014-04-02 23:31:38', 1, '', 105),
('2014-04-03 15:15:54', 1, '', 106),
('2014-04-03 15:19:09', 1, '', 107),
('2014-04-03 15:21:12', 1, '', 108),
('2014-04-04 09:59:40', 1, '', 109),
('2014-04-06 16:50:06', 1, '', 110);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_requisitions_items`
--

CREATE TABLE IF NOT EXISTS `ospos_requisitions_items` (
  `requisition_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `line` int(3) NOT NULL,
  `requisition_quantity` int(10) NOT NULL DEFAULT '0',
  `related_item_id` int(10) NOT NULL DEFAULT '0',
  `related_item_quantity` int(11) NOT NULL,
  `related_item_total_quantity` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`requisition_id`,`item_id`,`line`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_requisitions_items`
--

INSERT INTO `ospos_requisitions_items` (`requisition_id`, `item_id`, `line`, `requisition_quantity`, `related_item_id`, `related_item_quantity`, `related_item_total_quantity`) VALUES
(101, 35, 2, 1, 75, 10, 10),
(101, 37, 1, 1, 74, 10, 10),
(102, 36, 2, 1, 74, 1, 1),
(102, 37, 1, 1, 74, 10, 10),
(103, 36, 1, 1, 74, 1, 1),
(103, 37, 2, 1, 74, 10, 10),
(104, 35, 2, 2, 75, 10, 20),
(104, 37, 1, 2, 74, 10, 20),
(105, 37, 1, 1, 76, 10, 10),
(106, 37, 1, 1, 76, 10, 10),
(107, 34, 3, 1, 75, 1, 1),
(107, 35, 1, 2, 75, 10, 20),
(107, 37, 2, 2, 76, 10, 20),
(108, 78, 1, 2, 79, 1, 2),
(109, 81, 2, 10, 84, 1, 10),
(109, 82, 1, 2, 83, 12, 24),
(110, 81, 1, 1, 84, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales`
--

CREATE TABLE IF NOT EXISTS `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `sale_id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ospos_sales`
--

INSERT INTO `ospos_sales` (`sale_time`, `customer_id`, `employee_id`, `comment`, `sale_id`, `payment_type`) VALUES
('2014-04-02 04:37:27', NULL, 1, '0', 2, 'Cash: 10000.00฿<br />'),
('2014-04-04 04:35:49', NULL, 1, '0', 3, 'เงินสด: 31300.00฿<br />'),
('2014-04-05 18:45:25', NULL, 1, '0', 5, 'Cash: 70.00฿<br />'),
('2014-04-05 18:48:29', NULL, 1, '0', 6, 'Cash: 15.00฿<br />'),
('2014-04-05 18:50:23', NULL, 1, '0', 7, 'Cash: 100.00฿<br />'),
('2014-04-05 19:01:59', NULL, 1, '0', 8, 'Cash: 200.00฿<br />'),
('2014-04-15 11:51:38', NULL, 1, '0', 9, 'Cash: 150.00฿<br />'),
('2014-04-15 12:11:52', NULL, 1, '0', 10, 'Cash: 15.00฿<br />'),
('2014-04-15 12:12:45', NULL, 1, '0', 11, 'Cash: 15.00฿<br />Check: 0.00฿<br />'),
('2014-04-15 12:15:55', NULL, 1, '0', 12, 'เงินสด: 55.00฿<br />');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` double(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` double(15,2) NOT NULL,
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`,`item_id`,`line`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items`
--

INSERT INTO `ospos_sales_items` (`sale_id`, `item_id`, `description`, `serialnumber`, `line`, `quantity_purchased`, `item_cost_price`, `item_unit_price`, `discount_percent`) VALUES
(2, 74, '', '', 1, 5.00, '1000.00', 1300.00, 0),
(2, 75, '', '', 2, 5.00, '500.00', 700.00, 0),
(3, 35, '', '', 1, 5.00, '5000.00', 6000.00, 0),
(3, 36, '', '', 2, 1.00, '1000.00', 1300.00, 0),
(5, 83, '', '', 3, 1.00, '10.00', 15.00, 0),
(5, 84, '', '', 2, 1.00, '50.00', 55.00, 0),
(6, 83, '', '', 1, 1.00, '10.00', 15.00, 0),
(7, 84, '', '', 1, 1.00, '50.00', 55.00, 0),
(8, 84, '', '', 1, 3.00, '50.00', 55.00, 0),
(9, 80, '', '', 1, 10.00, '10.00', 15.00, 0),
(10, 83, '', '', 1, 1.00, '10.00', 15.00, 0),
(11, 83, '', '', 1, 1.00, '10.00', 15.00, 0),
(12, 84, '', '', 1, 1.00, '50.00', 55.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items_taxes`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` double(15,3) NOT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_items_taxes`
--

INSERT INTO `ospos_sales_items_taxes` (`sale_id`, `item_id`, `line`, `name`, `percent`) VALUES
(9, 80, 1, '1', 0.000),
(9, 80, 1, '2', 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_payments`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  PRIMARY KEY (`sale_id`,`payment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sales_payments`
--

INSERT INTO `ospos_sales_payments` (`sale_id`, `payment_type`, `payment_amount`) VALUES
(2, 'Cash', '10000.00'),
(3, 'เงินสด', '31300.00'),
(5, 'Cash', '70.00'),
(6, 'Cash', '15.00'),
(7, 'Cash', '100.00'),
(8, 'Cash', '200.00'),
(9, 'Cash', '150.00'),
(10, 'Cash', '15.00'),
(11, 'Cash', '15.00'),
(11, 'Check', '0.00'),
(12, 'เงินสด', '55.00');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_suspended` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `sale_id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_items`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_suspended_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` double(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` double(15,2) NOT NULL,
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sale_id`,`item_id`,`line`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_items_taxes`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_suspended_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` double(15,3) NOT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_payments`
--

CREATE TABLE IF NOT EXISTS `ospos_sales_suspended_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL,
  PRIMARY KEY (`sale_id`,`payment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sessions`
--

CREATE TABLE IF NOT EXISTS `ospos_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('2f7de6b3a11e097d30eca355ac32ed06', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; rv:28.0) Gecko/20100101 Firefox/28.0', 1397656887, 'a:5:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:9:"recv_mode";s:11:"requisition";s:8:"supplier";i:-1;s:8:"cartRecv";a:0:{}}'),
('6c07a9b2ed9f287652686eecd72e510b', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.4.9999.1836 Safari/537.31 BDSpark/26.4', 1397564116, 'a:5:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";s:8:"cartRecv";a:0:{}s:9:"recv_mode";s:7:"receive";s:8:"supplier";i:-1;}'),
('92ba8b6678328d3e207ba02d5b46f1ec', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; rv:28.0) Gecko/20100101 Firefox/28.0', 1397656020, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}'),
('c7e203e784f0a8aacd8f78fd263c5d0d', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.4.9999.1836 Safari/537.31 BDSpark/26.4', 1397652911, 'a:2:{s:9:"user_data";s:0:"";s:9:"person_id";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_suppliers`
--

CREATE TABLE IF NOT EXISTS `ospos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `account_number` (`account_number`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_suppliers`
--

INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `account_number`, `deleted`) VALUES
(3, 'Thomson reuters', NULL, 1),
(4, 'Toyota tusho electronic Thailand', NULL, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD CONSTRAINT `ospos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD CONSTRAINT `ospos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `ospos_employees` (`person_id`);

--
-- Constraints for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD CONSTRAINT `ospos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD CONSTRAINT `ospos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `ospos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_unit`
--
ALTER TABLE `ospos_item_unit`
  ADD CONSTRAINT `ospos_item_unit_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD CONSTRAINT `ospos_permissions_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_permissions_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `ospos_modules` (`module_id`);

--
-- Constraints for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD CONSTRAINT `ospos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD CONSTRAINT `ospos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`);

--
-- Constraints for table `ospos_requisitions_items`
--
ALTER TABLE `ospos_requisitions_items`
  ADD CONSTRAINT `ospos_requisitions_items_ibfk_1` FOREIGN KEY (`requisition_id`) REFERENCES `ospos_requisitions` (`requisition_id`),
  ADD CONSTRAINT `ospos_requisitions_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD CONSTRAINT `ospos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD CONSTRAINT `ospos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_items` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_sales_suspended`
--
ALTER TABLE `ospos_sales_suspended`
  ADD CONSTRAINT `ospos_sales_suspended_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_suspended_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_sales_suspended_items`
--
ALTER TABLE `ospos_sales_suspended_items`
  ADD CONSTRAINT `ospos_sales_suspended_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_sales_suspended_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended` (`sale_id`);

--
-- Constraints for table `ospos_sales_suspended_items_taxes`
--
ALTER TABLE `ospos_sales_suspended_items_taxes`
  ADD CONSTRAINT `ospos_sales_suspended_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended_items` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_suspended_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_suspended_payments`
--
ALTER TABLE `ospos_sales_suspended_payments`
  ADD CONSTRAINT `ospos_sales_suspended_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended` (`sale_id`);

--
-- Constraints for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD CONSTRAINT `ospos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
