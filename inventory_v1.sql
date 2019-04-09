/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : easyinventory

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2019-04-04 08:08:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('383bb3c1037f32b95e1a16ebf1f1b915', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58', '1554273266', 'a:1:{s:9:\"user_data\";s:0:\"\";}');
INSERT INTO `ci_sessions` VALUES ('5d763580eef7abf8733b8008ae889f05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '1554304499', 'a:1:{s:9:\"user_data\";s:0:\"\";}');
INSERT INTO `ci_sessions` VALUES ('7b58c41d3c3bb0c2a2731975f9df193c', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', '1554274352', 'a:1:{s:9:\"user_data\";s:0:\"\";}');
INSERT INTO `ci_sessions` VALUES ('8709b37fb1b1b58c9688a290b1d33588', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 OPR/58', '1554339834', 'a:11:{s:9:\"user_data\";s:0:\"\";s:9:\"user_name\";s:5:\"admin\";s:4:\"name\";s:5:\"admin\";s:11:\"employee_id\";s:1:\"1\";s:17:\"employee_login_id\";s:1:\"1\";s:8:\"loggedin\";b:1;s:9:\"user_type\";s:1:\"1\";s:8:\"user_pic\";s:0:\"\";s:3:\"url\";s:15:\"admin/dashboard\";s:14:\"menu_active_id\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"0\";}s:13:\"business_info\";a:0:{}}');
INSERT INTO `ci_sessions` VALUES ('9638feb4554e9ed4c8c4c13e70b2aca3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '1554312402', 'a:1:{s:9:\"user_data\";s:0:\"\";}');

-- ----------------------------
-- Table structure for installer
-- ----------------------------
DROP TABLE IF EXISTS `installer`;
CREATE TABLE `installer` (
  `id` int(1) NOT NULL,
  `installer_flag` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of installer
-- ----------------------------
INSERT INTO `installer` VALUES ('1', '1');

-- ----------------------------
-- Table structure for tbl_attribute
-- ----------------------------
DROP TABLE IF EXISTS `tbl_attribute`;
CREATE TABLE `tbl_attribute` (
  `attribute_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_id` int(5) NOT NULL,
  `attribute_name` varchar(100) NOT NULL,
  `attribute_value` text NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_attribute_set
-- ----------------------------
DROP TABLE IF EXISTS `tbl_attribute_set`;
CREATE TABLE `tbl_attribute_set` (
  `attribute_set_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(100) NOT NULL,
  PRIMARY KEY (`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_attribute_set
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_business_profile
-- ----------------------------
DROP TABLE IF EXISTS `tbl_business_profile`;
CREATE TABLE `tbl_business_profile` (
  `business_profile_id` int(2) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `logo` varchar(150) DEFAULT NULL,
  `full_path` varchar(150) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  PRIMARY KEY (`business_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_business_profile
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_campaign
-- ----------------------------
DROP TABLE IF EXISTS `tbl_campaign`;
CREATE TABLE `tbl_campaign` (
  `campaign_id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(128) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `email_body` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(128) NOT NULL,
  PRIMARY KEY (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_campaign
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_campaign_result
-- ----------------------------
DROP TABLE IF EXISTS `tbl_campaign_result`;
CREATE TABLE `tbl_campaign_result` (
  `campaign_result_id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(10) NOT NULL,
  `campaign_name` varchar(128) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `send_by` varchar(128) NOT NULL,
  PRIMARY KEY (`campaign_result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_campaign_result
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `category_id` int(5) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES ('1', 'test', '2019-03-28 11:26:11');
INSERT INTO `tbl_category` VALUES ('2', 'Pakaian', '2019-03-31 13:06:46');
INSERT INTO `tbl_category` VALUES ('3', 'Elektronik', '2019-03-31 13:14:44');

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_code` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `discount` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES ('1', '44587441', 'Jojo', 'jojo@email.com', '079879789879', '<p>Jl Mawar Gang Sebelah</p>\r\n', '1');

-- ----------------------------
-- Table structure for tbl_damage_product
-- ----------------------------
DROP TABLE IF EXISTS `tbl_damage_product`;
CREATE TABLE `tbl_damage_product` (
  `damage_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_code` int(11) NOT NULL,
  `product_name` varchar(127) NOT NULL,
  `category` varchar(128) NOT NULL,
  `qty` int(5) NOT NULL,
  `note` text NOT NULL,
  `decrease` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0= no; 1= yes',
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`damage_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_damage_product
-- ----------------------------
INSERT INTO `tbl_damage_product` VALUES ('1', '1', '75298341', 'Lenovo IP 330-14AST-Laptop [AMD A4-9120/4GB/500GB/W10]Black Black', 'Elektronik > Komputer & Laptop', '1', 'Rusak Layarnya', '1', '31 March, 2019');

-- ----------------------------
-- Table structure for tbl_inventory
-- ----------------------------
DROP TABLE IF EXISTS `tbl_inventory`;
CREATE TABLE `tbl_inventory` (
  `inventory_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_id` int(5) NOT NULL,
  `product_quantity` int(5) NOT NULL,
  `notify_quantity` int(5) DEFAULT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_inventory
-- ----------------------------
INSERT INTO `tbl_inventory` VALUES ('1', '1', '19', '2');
INSERT INTO `tbl_inventory` VALUES ('2', '9', '5', '1');
INSERT INTO `tbl_inventory` VALUES ('3', '11', '5', '1');
INSERT INTO `tbl_inventory` VALUES ('4', '12', '4', '1');
INSERT INTO `tbl_inventory` VALUES ('5', '13', '6', '1');
INSERT INTO `tbl_inventory` VALUES ('6', '14', '6', '1');

-- ----------------------------
-- Table structure for tbl_invoice
-- ----------------------------
DROP TABLE IF EXISTS `tbl_invoice`;
CREATE TABLE `tbl_invoice` (
  `invoice_id` int(5) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_invoice
-- ----------------------------
INSERT INTO `tbl_invoice` VALUES ('1', '39200571', '1', '2019-03-31 16:25:02');
INSERT INTO `tbl_invoice` VALUES ('2', '34732152', '2', '2019-03-31 20:26:53');

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent` int(5) NOT NULL,
  `sort` int(5) NOT NULL,
  `flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('1', 'Dashboard', 'admin/dashboard', 'fa fa-dashboard', '0', '1', '1');
INSERT INTO `tbl_menu` VALUES ('2', 'Settings', '#', 'fa fa-cogs', '0', '15', '1');
INSERT INTO `tbl_menu` VALUES ('3', 'Business Profile', 'admin/settings/business_profile', 'glyphicon glyphicon-briefcase', '2', '1', '1');
INSERT INTO `tbl_menu` VALUES ('4', 'Employee Management', '#', 'entypo-users', '0', '20', '1');
INSERT INTO `tbl_menu` VALUES ('5', 'Employee List', 'admin/employee/employee_list', 'fa fa-users', '4', '1', '1');
INSERT INTO `tbl_menu` VALUES ('6', 'Add Employee', 'admin/employee/add_employee', 'entypo-user-add', '4', '2', '1');
INSERT INTO `tbl_menu` VALUES ('7', 'Barang', '#', 'glyphicon glyphicon-th-large', '0', '5', '1');
INSERT INTO `tbl_menu` VALUES ('8', 'Kategori', '#', 'glyphicon glyphicon-indent-left', '7', '4', '1');
INSERT INTO `tbl_menu` VALUES ('9', 'Kategori Barang', 'admin/product/category', 'glyphicon glyphicon-tag', '8', '1', '1');
INSERT INTO `tbl_menu` VALUES ('10', 'Sub Kategori', 'admin/product/subcategory', 'glyphicon glyphicon-tags', '8', '2', '1');
INSERT INTO `tbl_menu` VALUES ('13', 'Tambah Barang', 'admin/product/add_product', 'glyphicon glyphicon-plus', '7', '1', '1');
INSERT INTO `tbl_menu` VALUES ('14', 'Kelola Barang', 'admin/product/manage_product', 'glyphicon glyphicon-th-list', '7', '2', '1');
INSERT INTO `tbl_menu` VALUES ('17', 'Manage Tax Rules', 'admin/settings/tax', 'glyphicon glyphicon-credit-card', '2', '2', '1');
INSERT INTO `tbl_menu` VALUES ('18', 'Manage Purchase', '#', 'fa fa-truck', '0', '3', '0');
INSERT INTO `tbl_menu` VALUES ('19', 'Supplier', '#', 'glyphicon glyphicon-gift', '18', '1', '1');
INSERT INTO `tbl_menu` VALUES ('20', 'Add Supplier', 'admin/purchase/add_supplier', 'glyphicon glyphicon-plus', '19', '1', '1');
INSERT INTO `tbl_menu` VALUES ('21', 'Manage Supplier', 'admin/purchase/manage_supplier', 'glyphicon glyphicon-briefcase', '19', '2', '1');
INSERT INTO `tbl_menu` VALUES ('22', 'Purchase', '#', 'glyphicon glyphicon-credit-card', '18', '2', '1');
INSERT INTO `tbl_menu` VALUES ('23', 'New Purchase', 'admin/purchase/new_purchase', 'glyphicon glyphicon-shopping-cart', '22', '1', '1');
INSERT INTO `tbl_menu` VALUES ('24', 'Purchase History', 'admin/purchase/purchase_list', 'glyphicon glyphicon-th-list', '22', '2', '1');
INSERT INTO `tbl_menu` VALUES ('25', 'Customer', '', 'glyphicon glyphicon-user', '0', '7', '1');
INSERT INTO `tbl_menu` VALUES ('26', 'Add Customer', 'admin/customer/add_customer', 'glyphicon glyphicon-plus', '25', '1', '1');
INSERT INTO `tbl_menu` VALUES ('27', 'Manage Customer', 'admin/customer/manage_customer', 'glyphicon glyphicon-th-list', '25', '2', '1');
INSERT INTO `tbl_menu` VALUES ('28', 'Barang Rusak', 'admin/product/damage_product', 'glyphicon glyphicon-trash', '7', '3', '1');
INSERT INTO `tbl_menu` VALUES ('29', 'Cetak QR-Code', 'admin/product/print_barcode', 'glyphicon glyphicon-barcode', '7', '3', '1');
INSERT INTO `tbl_menu` VALUES ('30', 'Proses Barang', '#', 'glyphicon glyphicon-shopping-cart', '0', '6', '1');
INSERT INTO `tbl_menu` VALUES ('31', 'Permintaan Baru', 'admin/order/new_order', 'fa fa-cart-plus', '30', '1', '1');
INSERT INTO `tbl_menu` VALUES ('32', 'Kelola Permintaan', 'admin/order/manage_order', 'glyphicon glyphicon-th-list', '30', '2', '1');
INSERT INTO `tbl_menu` VALUES ('33', 'Kelola Struk', 'admin/order/manage_invoice', 'glyphicon glyphicon-list-alt', '30', '3', '1');
INSERT INTO `tbl_menu` VALUES ('34', 'Laporan', 'admin/report', 'glyphicon glyphicon-signal', '0', '8', '1');
INSERT INTO `tbl_menu` VALUES ('35', 'Laporan Pengeluaran', 'admin/report/sales_report', 'fa fa-bar-chart', '34', '1', '1');
INSERT INTO `tbl_menu` VALUES ('36', 'Purchase Report', 'admin/report/purchase_report', 'fa fa-line-chart', '34', '2', '0');
INSERT INTO `tbl_menu` VALUES ('37', 'Email Campaign', '#', 'glyphicon glyphicon-send', '0', '8', '1');
INSERT INTO `tbl_menu` VALUES ('38', 'New campaign', 'admin/campaign/new_campaign', 'glyphicon glyphicon-envelope', '37', '1', '1');
INSERT INTO `tbl_menu` VALUES ('39', 'Manage Campaign', 'admin/campaign/manage_campaign', 'glyphicon glyphicon-th-list', '37', '2', '1');
INSERT INTO `tbl_menu` VALUES ('40', 'Camaign Result', 'admin/campaign/campaign_result', 'glyphicon glyphicon-bullhorn', '37', '3', '1');

-- ----------------------------
-- Table structure for tbl_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(10) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(128) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(100) NOT NULL,
  `customer_address` text NOT NULL,
  `shipping_address` text NOT NULL,
  `sub_total` double NOT NULL,
  `discount` double NOT NULL,
  `discount_amount` double NOT NULL,
  `total_tax` double NOT NULL,
  `grand_total` double NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `payment_ref` varchar(120) NOT NULL,
  `order_status` int(2) NOT NULL DEFAULT '0' COMMENT '0= pending; 1= cancel; 2=confirm',
  `note` text NOT NULL,
  `sales_person` varchar(100) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('1', '61131751', '2019-03-31 16:25:02', '0', 'walking Client', '', '', '', '', '3700000', '0', '0', '370000', '4070000', 'cash', '', '2', '', 'admin');
INSERT INTO `tbl_order` VALUES ('2', '29970682', '2019-03-31 20:26:53', '0', 'walking Client', '', '', '', '', '3700000', '0', '0', '370000', '4070000', 'cash', '', '2', '', 'kasir');

-- ----------------------------
-- Table structure for tbl_order_details
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_details`;
CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `product_code` int(10) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `product_quantity` int(5) NOT NULL,
  `buying_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `product_tax` double NOT NULL,
  `sub_total` double NOT NULL,
  `price_option` varchar(100) NOT NULL,
  PRIMARY KEY (`order_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order_details
-- ----------------------------
INSERT INTO `tbl_order_details` VALUES ('1', '1', '75298341', 'Lenovo IP 330-14AST-Laptop [AMD A4-9120/4GB/500GB/W10]Black Black', '1', '3600000', '3700000', '370000', '3700000', 'general');
INSERT INTO `tbl_order_details` VALUES ('2', '2', '975346712', 'lucky', '1', '3600000', '3700000', '370000', '3700000', 'general');

-- ----------------------------
-- Table structure for tbl_product
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_note` text NOT NULL,
  `status` tinyint(2) DEFAULT '1' COMMENT '0=Inactive,1=Active',
  `subcategory_id` int(5) NOT NULL,
  `barcode_path` varchar(300) NOT NULL,
  `barcode` varchar(100) NOT NULL,
  `tax_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('1', '75298341', 'Lenovo IP 330-14AST-Laptop [AMD A4-9120/4GB/500GB/W10]Black Black', 'Sistem Operasi : Windows 10 Home\r\nLayar : 14 inch LED HD (1366x768) \r\nProsesor : AMD A4-9120 up to 2.2GHz\r\nTipe Grafis : AMD Radeon R3 Graphics\r\nMemory : 4 GB DDR4\r\nStorage : 500 GB HDD', '1', '3', 'C:\\xampp\\www\\easyinventory/img/barcode/75298341.jpg', 'img/barcode/75298341.jpg', '1');
INSERT INTO `tbl_product` VALUES ('9', '71712139', 'Lenovo', '', '1', '3', 'C:\\xampp\\www\\easyinventory/img/barcode/71712139.jpg', 'img/barcode/71712139.jpg', '1');
INSERT INTO `tbl_product` VALUES ('10', '689507210', 'test', '43', '1', '3', '', '', '1');
INSERT INTO `tbl_product` VALUES ('11', '88189711', 'love', 'love', '1', '3', 'C:\\xampp\\www\\easyinventory/img/qrcode/88189711.jpg', 'img/qrcode/88189711.jpg', '1');
INSERT INTO `tbl_product` VALUES ('12', '975346712', 'lucky', 'test', '1', '3', 'C:\\xampp\\www\\easyinventory/img/qrcode/975346712.png', 'img/qrcode/975346712.png', '1');
INSERT INTO `tbl_product` VALUES ('13', 't24324-3423413', '53w', '5', '1', '1', 'C:\\xampp\\www\\easyinventory/img/qrcode/t24324-3423413.png', 'img/qrcode/t24324-3423413.png', '1');
INSERT INTO `tbl_product` VALUES ('14', 'wqe444-5', 'ter', 'te', '1', '1', 'C:\\xampp\\www\\easyinventory/img/qrcode/wqe444-5.png', 'img/qrcode/wqe444-5.png', '1');

-- ----------------------------
-- Table structure for tbl_product_image
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_image`;
CREATE TABLE `tbl_product_image` (
  `product_image_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_id` int(5) NOT NULL,
  `image_path` varchar(300) NOT NULL,
  `filename` varchar(100) NOT NULL,
  PRIMARY KEY (`product_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_image
-- ----------------------------
INSERT INTO `tbl_product_image` VALUES ('1', '1', 'C:/xampp/www/easyinventory/img/uploads/lenovo_lenovo-ip-330-14ast-33id-laptop_full02.jpg', 'img/uploads/lenovo_lenovo-ip-330-14ast-33id-laptop_full02.jpg');

-- ----------------------------
-- Table structure for tbl_product_price
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_price`;
CREATE TABLE `tbl_product_price` (
  `product_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(5) NOT NULL,
  `buying_price` double NOT NULL,
  `selling_price` double NOT NULL,
  PRIMARY KEY (`product_price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_price
-- ----------------------------
INSERT INTO `tbl_product_price` VALUES ('1', '1', '3600000', '3755000');
INSERT INTO `tbl_product_price` VALUES ('2', '9', '3600000', '3755000');
INSERT INTO `tbl_product_price` VALUES ('3', '11', '3600000', '3755000');
INSERT INTO `tbl_product_price` VALUES ('4', '12', '3600000', '3755000');
INSERT INTO `tbl_product_price` VALUES ('5', '13', '3', '456');
INSERT INTO `tbl_product_price` VALUES ('6', '14', '646', '43534543');

-- ----------------------------
-- Table structure for tbl_product_tag
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_tag`;
CREATE TABLE `tbl_product_tag` (
  `product_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tag` varchar(100) NOT NULL,
  PRIMARY KEY (`product_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_tag
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_purchase
-- ----------------------------
DROP TABLE IF EXISTS `tbl_purchase`;
CREATE TABLE `tbl_purchase` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_number` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(128) NOT NULL,
  `grand_total` int(5) NOT NULL,
  `purchase_ref` varchar(128) NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_ref` varchar(128) NOT NULL,
  `purchase_by` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_purchase
-- ----------------------------
INSERT INTO `tbl_purchase` VALUES ('1', '51484931', '1', 'PT Lenovo Indonesia', '3600000', '', 'cash', '', 'admin', '2019-03-31 16:22:36');

-- ----------------------------
-- Table structure for tbl_purchase_product
-- ----------------------------
DROP TABLE IF EXISTS `tbl_purchase_product`;
CREATE TABLE `tbl_purchase_product` (
  `purchase_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `qty` int(5) NOT NULL,
  `unit_price` int(5) NOT NULL,
  `sub_total` int(5) NOT NULL,
  PRIMARY KEY (`purchase_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_purchase_product
-- ----------------------------
INSERT INTO `tbl_purchase_product` VALUES ('1', '1', '75298341', 'Lenovo IP 330-14AST-Laptop [AMD A4-9120/4GB/500GB/W10]Black Black', '1', '3600000', '3600000');

-- ----------------------------
-- Table structure for tbl_special_offer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_special_offer`;
CREATE TABLE `tbl_special_offer` (
  `special_offer_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_id` int(5) NOT NULL,
  `offer_price` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`special_offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_special_offer
-- ----------------------------
INSERT INTO `tbl_special_offer` VALUES ('1', '1', '3700000', '2019-03-31', '2019-04-06');
INSERT INTO `tbl_special_offer` VALUES ('2', '9', '3700000', '2019-03-31', '2019-04-06');
INSERT INTO `tbl_special_offer` VALUES ('3', '11', '3700000', '2019-03-03', '2019-04-06');
INSERT INTO `tbl_special_offer` VALUES ('4', '12', '3700000', '2019-02-24', '2019-04-06');
INSERT INTO `tbl_special_offer` VALUES ('5', '13', '77', '2019-04-02', '2019-04-30');
INSERT INTO `tbl_special_offer` VALUES ('6', '14', '323', '2019-04-09', '2019-04-30');

-- ----------------------------
-- Table structure for tbl_subcategory
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subcategory`;
CREATE TABLE `tbl_subcategory` (
  `subcategory_id` int(5) NOT NULL AUTO_INCREMENT,
  `category_id` int(5) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`subcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_subcategory
-- ----------------------------
INSERT INTO `tbl_subcategory` VALUES ('1', '1', 'test', '2019-03-28 11:26:19');
INSERT INTO `tbl_subcategory` VALUES ('2', '2', 'Kemeja', '2019-03-31 13:08:43');
INSERT INTO `tbl_subcategory` VALUES ('3', '3', 'Komputer & Laptop', '2019-03-31 13:14:58');

-- ----------------------------
-- Table structure for tbl_supplier
-- ----------------------------
DROP TABLE IF EXISTS `tbl_supplier`;
CREATE TABLE `tbl_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_supplier
-- ----------------------------
INSERT INTO `tbl_supplier` VALUES ('1', 'PT Lenovo Indonesia', 'Fahrul Romadhon', 'fahrul@email.com', '4234343434', '<p>&nbsp;Lantai 21, Wisma 46 Kota BNI, Jalan Jendral Sudirman No.1, RT.10/RW.9, Karet Tengsin, RT.10, RT.10/RW.9, Karet Tengsin, Tanahabang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10220</p>\r\n');

-- ----------------------------
-- Table structure for tbl_tag
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tag`;
CREATE TABLE `tbl_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(100) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_tag
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_tax
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tax`;
CREATE TABLE `tbl_tax` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_title` varchar(100) NOT NULL,
  `tax_rate` double NOT NULL,
  `tax_type` int(2) NOT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_tax
-- ----------------------------
INSERT INTO `tbl_tax` VALUES ('1', 'Pajak Elektronik', '10', '1');

-- ----------------------------
-- Table structure for tbl_tier_price
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tier_price`;
CREATE TABLE `tbl_tier_price` (
  `tier_price_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_id` int(5) NOT NULL,
  `tier_price` double NOT NULL,
  `quantity_above` int(5) NOT NULL,
  PRIMARY KEY (`tier_price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tier_price
-- ----------------------------
INSERT INTO `tbl_tier_price` VALUES ('1', '1', '3650000', '5');
INSERT INTO `tbl_tier_price` VALUES ('2', '9', '3650000', '5');
INSERT INTO `tbl_tier_price` VALUES ('3', '11', '3650000', '5');
INSERT INTO `tbl_tier_price` VALUES ('4', '12', '3650000', '5');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `image_path` varchar(128) NOT NULL,
  `flag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'admin', 'admin', 'admin@admin.com', '55677fc54be3b674770b697114ce0730300da0f6783202e2d17d7191ba68ec97cab4b61d3470f298d0ca2435111c29b8d5ad63058b725916336fdab9584829f4', '', '', '1');
INSERT INTO `tbl_user` VALUES ('2', 'kasir', 'kasir', 'kasir@email.com', 'a0c1df69e0c3b400081ce7275755aacd6b0bfada35741e011e9a8b03f50a575a92dcc58365a2e42116494a62cde2e892843e7f10f788362d36e4421ffdbfb93e', '', '', '0');

-- ----------------------------
-- Table structure for tbl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_login_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES ('1', '2', '1');
INSERT INTO `tbl_user_role` VALUES ('2', '2', '30');
INSERT INTO `tbl_user_role` VALUES ('3', '2', '31');
INSERT INTO `tbl_user_role` VALUES ('4', '2', '32');
INSERT INTO `tbl_user_role` VALUES ('5', '2', '33');
SET FOREIGN_KEY_CHECKS=1;
