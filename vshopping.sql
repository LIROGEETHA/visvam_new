-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 29, 2021 at 04:20 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '2021-06-09 16:21:18', '22-07-2021 07:28:32 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(14, 'Fruits & Vegetables', 'Fresh fruits and vegetables', '2021-07-05 15:33:02', NULL),
(15, 'Groceries', 'Food grains & cooking ingredients', '2021-07-05 15:35:41', NULL),
(16, 'Bakery', 'Bread, Bun, cake items', '2021-07-05 15:36:19', NULL),
(17, 'Dairy Products', 'Fresh dairy foods items', '2021-07-05 15:36:42', NULL),
(18, 'Personal care', 'self care products to lead healthy life', '2021-07-05 15:37:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy`
--

DROP TABLE IF EXISTS `deliveryboy`;
CREATE TABLE IF NOT EXISTS `deliveryboy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstnamedel` varchar(255) DEFAULT NULL,
  `lastnamedel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `vehicle` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliveryboy`
--

INSERT INTO `deliveryboy` (`id`, `firstnamedel`, `lastnamedel`, `email`, `contactno`, `vehicle`, `username`, `password`, `regDate`, `updationDate`, `role`) VALUES
(1, 'krishnan', 'krishnan', 'krishna123@gmail.com', 771234564, 'van', 'krishna123', 'f90d104f49ce20b157a5fb6bb3f61b35', '2021-07-07 16:08:24', NULL, 'deliveryboy'),
(2, 'aaa', 'bbb', 'geetha@gmail.com', 771235478, 'motorbike', 'aaa1', '39dc4f1ee693e5adabddd872247e451f', '2021-07-07 17:07:07', NULL, 'deliveryboy'),
(3, 'krishnan', 'ratha', 'ratha@gmail.com', 771235478, 'van', 'ratha123', 'bbd58c894976fa5839961c8b8c4d2e12', '2021-07-07 17:35:52', NULL, 'deliveryboy'),
(4, 'krishnan', 'ratha', 'ratha@gmail.com', 771235478, 'van', 'ratha123', 'bbd58c894976fa5839961c8b8c4d2e12', '2021-07-07 17:36:10', NULL, 'deliveryboy'),
(5, 'krishnan', 'ratha', 'ratha@gmail.com', 771235478, 'van', 'ratha123', 'bbd58c894976fa5839961c8b8c4d2e12', '2021-07-07 17:36:35', NULL, 'deliveryboy'),
(6, 'siva', 'sekar', 'siva@gmail.com', 771234564, 'van', 'siva1', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-08 10:42:27', NULL, 'deliveryboy'),
(7, 'rathan', 'rathan', 'ratha@gmail.com', 771234564, 'car', 'ratha', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-09 18:22:14', NULL, 'deliveryboy'),
(8, 'hari', 'krishna', 'hari@gmail.com', 771235478, 'car', 'hari', 'e1147fd112823aba54725f871bf2515e', '2021-07-11 08:38:08', NULL, 'deliveryboy'),
(9, 'sekar', 'selva', 'sekar@gmail.com', 775643278, 'motorbike', 'sekar', 'd747b5f97ef612a51dff4e418aedda43', '2021-07-13 04:48:20', NULL, 'deliveryboy'),
(10, 'shankee', 'shan', 'shan@gmail.com', 774807664, 'van', 'shan1', '2bbcc5e1686c36e052a3b07f83c9d3ce', '2021-07-15 05:29:57', NULL, 'deliveryboy');

-- --------------------------------------------------------

--
-- Table structure for table `leaverequest`
--

DROP TABLE IF EXISTS `leaverequest`;
CREATE TABLE IF NOT EXISTS `leaverequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) NOT NULL,
  `LeaveCause` varchar(250) NOT NULL,
  `LeaveType` varchar(50) NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `StartDate` varchar(50) NOT NULL,
  `EndDate` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leavetype`
--

DROP TABLE IF EXISTS `leavetype`;
CREATE TABLE IF NOT EXISTS `leavetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(255) NOT NULL,
  `Description` mediumtext NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(13, 8, '61', 1, '2021-07-05 16:11:59', NULL, 'Delivered'),
(14, 8, '61', 1, '2021-07-05 16:25:42', NULL, NULL),
(15, 10, '61', 1, '2021-07-12 11:02:44', 'COD', NULL),
(16, 10, '61', 1, '2021-07-12 11:02:44', 'COD', NULL),
(17, 10, '61', 1, '2021-07-12 11:08:23', 'COD', NULL),
(18, 10, '61', 1, '2021-07-12 12:07:56', 'COD', NULL),
(19, 10, '61', 1, '2021-07-12 12:15:05', 'COD', NULL),
(20, 10, '61', 1, '2021-07-12 13:55:24', 'COD', NULL),
(21, 10, '61', 1, '2021-07-12 13:58:25', 'COD', NULL),
(22, 10, '61', 1, '2021-07-15 15:19:36', 'COD', NULL),
(23, 10, '61', 1, '2021-07-21 17:30:29', 'COD', NULL),
(24, 10, '61', 1, '2021-07-22 14:05:30', 'COD', NULL),
(25, 10, '61', 1, '2021-07-22 14:30:44', 'COD', NULL),
(26, 10, '61', 1, '2021-07-23 13:35:00', 'COD', NULL),
(27, 11, '61', 1, '2021-07-23 13:42:13', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(9, 13, 'in Process', 'processing', '2021-07-05 17:27:17'),
(10, 13, 'in Process', 'processing', '2021-07-05 17:27:44'),
(11, 13, 'Delivered', 'delivered', '2021-07-14 06:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 61, 4, 5, 4, 'siva', 'good', 'best product ', '2021-07-14 09:15:36'),
(2, 61, 4, 5, 4, 'siva', 'good', 'best product ', '2021-07-14 09:20:37'),
(3, 61, 4, 5, 4, 'siva', 'good', 'best product ', '2021-07-14 09:23:44'),
(4, 61, 4, 5, 4, 'siva', 'good', 'best product ', '2021-07-14 09:24:54'),
(5, 61, 4, 5, 4, 'siva', 'good', 'best product ', '2021-07-14 09:26:10'),
(6, 61, 4, 5, 4, 'siva', 'good', 'best product ', '2021-07-14 09:28:57'),
(7, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 09:29:45'),
(8, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 13:59:35'),
(9, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:00:40'),
(10, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:01:05'),
(11, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:04:29'),
(12, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:08:57'),
(13, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:12:11'),
(14, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:18:42'),
(15, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:20:48'),
(16, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:21:28'),
(17, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:22:16'),
(18, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:23:29'),
(19, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:23:52'),
(20, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:25:05'),
(21, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:25:27'),
(22, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:32:17'),
(23, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:34:59'),
(24, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:35:52'),
(25, 61, 3, 4, 4, 'siva', 'best', 'nice', '2021-07-14 14:36:30'),
(26, 61, 4, 5, 4, 'siva', 'good', 'best product ', '2021-07-14 14:36:55'),
(27, 61, 4, 5, 4, 'siva', 'good', 'best product ', '2021-07-14 14:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productImage` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productImage`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(61, 14, 26, 'pumpkin-1kg', 'local store', 70, 80, 'pumpkin.jfif', 5, 'In Stock', '2021-07-05 16:07:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `reserve_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(11) NOT NULL,
  `del_id` varchar(11) NOT NULL,
  `firstnamedel` varchar(100) NOT NULL,
  `res_date` date NOT NULL,
  `del_date` date NOT NULL,
  `madetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`reserve_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(26, 14, 'fresh vegetables', '2021-07-05 15:37:41', NULL),
(27, 14, 'fresh fruits', '2021-07-05 15:37:47', NULL),
(28, 15, 'cooking ingredients and oil', '2021-07-05 15:37:55', NULL),
(29, 15, 'Drinks', '2021-07-05 15:38:02', NULL),
(30, 15, 'Drinks', '2021-07-05 15:38:13', NULL),
(31, 16, 'Bread', '2021-07-05 15:38:19', NULL),
(32, 17, 'cheese', '2021-07-05 15:38:30', NULL),
(33, 17, 'Milk', '2021-07-05 15:38:51', NULL),
(34, 18, 'Hair care', '2021-07-05 15:39:05', NULL),
(35, 18, 'Skin care', '2021-07-05 15:39:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, '', 0x3a3a3100000000000000000000000000, '2021-06-10 07:07:45', NULL, 0),
(27, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-12 17:06:30', NULL, 0),
(28, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-12 17:07:41', NULL, 0),
(29, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-12 17:08:00', NULL, 0),
(30, 'admin', 0x3a3a3100000000000000000000000000, '2021-06-12 17:09:03', NULL, 0),
(31, 'Jjjj', 0x3a3a3100000000000000000000000000, '2021-06-12 17:27:57', NULL, 0),
(32, 'siva1', 0x3a3a3100000000000000000000000000, '2021-07-08 10:45:31', NULL, 0),
(33, 'siva1', 0x3a3a3100000000000000000000000000, '2021-07-08 10:45:59', NULL, 0),
(34, 'krishna123', 0x3a3a3100000000000000000000000000, '2021-07-08 10:55:48', NULL, 0),
(35, 'krishna1', 0x3a3a3100000000000000000000000000, '2021-07-08 10:57:07', NULL, 0),
(36, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-08 10:57:22', NULL, 0),
(37, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-08 10:57:35', NULL, 0),
(38, 'krishna1', 0x3a3a3100000000000000000000000000, '2021-07-08 10:58:10', NULL, 0),
(39, 'krishna1', 0x3a3a3100000000000000000000000000, '2021-07-08 10:58:29', NULL, 0),
(40, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-08 11:02:29', NULL, 0),
(41, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-08 11:02:38', NULL, 0),
(42, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-08 11:09:19', NULL, 0),
(43, 'siva1', 0x3a3a3100000000000000000000000000, '2021-07-08 11:09:36', NULL, 0),
(44, 'siva1', 0x3a3a3100000000000000000000000000, '2021-07-08 11:11:06', '09-07-2021 11:08:48 PM', 0),
(45, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-09 17:29:15', NULL, 0),
(46, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-09 17:30:29', NULL, 0),
(47, 'krishna1', 0x3a3a3100000000000000000000000000, '2021-07-09 17:40:28', NULL, 0),
(48, 'krishna1', 0x3a3a3100000000000000000000000000, '2021-07-09 17:41:20', NULL, 0),
(49, '', 0x3a3a3100000000000000000000000000, '2021-07-09 17:41:26', NULL, 0),
(50, 'krishna1', 0x3a3a3100000000000000000000000000, '2021-07-09 17:44:31', NULL, 0),
(51, 'geetha', 0x3a3a3100000000000000000000000000, '2021-07-09 17:44:50', NULL, 0),
(52, 'siva1', 0x3a3a3100000000000000000000000000, '2021-07-09 18:18:18', NULL, 0),
(53, 'siva1', 0x3a3a3100000000000000000000000000, '2021-07-09 18:18:29', '09-07-2021 11:50:28 PM', 0),
(54, 'ratha', 0x3a3a3100000000000000000000000000, '2021-07-09 18:23:21', NULL, 0),
(55, 'sivsek', 0x3a3a3100000000000000000000000000, '2021-07-12 03:34:09', NULL, 0),
(56, 'hari', 0x3a3a3100000000000000000000000000, '2021-07-13 04:46:20', NULL, 0),
(57, 'hari', 0x3a3a3100000000000000000000000000, '2021-07-13 04:46:40', NULL, 0),
(58, 'sekar', 0x3a3a3100000000000000000000000000, '2021-07-13 04:48:53', NULL, 0),
(59, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-14 06:27:51', NULL, 0),
(60, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-14 06:28:04', NULL, 0),
(61, 'hari', 0x3a3a3100000000000000000000000000, '2021-07-14 06:36:36', NULL, 0),
(62, '', 0x3a3a3100000000000000000000000000, '2021-07-14 06:36:39', NULL, 0),
(63, 'shan1', 0x3a3a3100000000000000000000000000, '2021-07-15 13:37:57', NULL, 0),
(64, 'shan1', 0x3a3a3100000000000000000000000000, '2021-07-15 13:38:08', NULL, 0),
(65, 'sivasek', 0x3a3a3100000000000000000000000000, '2021-07-15 14:49:10', '15-07-2021 10:13:40 PM', 0),
(66, 'sivasek', 0x3a3a3100000000000000000000000000, '2021-07-15 17:06:26', NULL, 0),
(67, 'sivasek', 0x3a3a3100000000000000000000000000, '2021-07-15 17:06:39', '23-07-2021 07:08:44 PM', 0),
(68, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-21 17:23:29', NULL, 0),
(69, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-21 17:27:07', NULL, 0),
(70, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-22 13:57:51', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` varchar(255) DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` varchar(256) DEFAULT NULL,
  `billingAddress` longtext,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingPincode` varchar(256) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingCity`, `billingState`, `billingPincode`, `regDate`, `updationDate`, `username`, `role`) VALUES
(5, 'kowree parames', 'kowreesanjk06@gmail.com', 1234567890, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', '0', NULL, NULL, NULL, NULL, '2021-06-10 07:04:37', NULL, 'admin', 'admin'),
(6, 'kowree parames', 'kowreesanjk06@gmail.com', 1234567890, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', '0', NULL, NULL, NULL, NULL, '2021-06-10 07:06:42', NULL, 'kp', 'user'),
(7, 'vp', 'kowreesanjkv06@gmail.com', 1234567890, '81dc9bdb52d04dc20036dbd8313ed055', '', '', '', '0', NULL, NULL, NULL, NULL, '2021-06-10 07:30:47', NULL, 'vp', 'user'),
(8, 'krishna', 'krishna@gmail.com', 774807664, '243bd1ce0387f18005abfc43b001646a', '', '', '', '0', NULL, NULL, NULL, NULL, '2021-07-05 15:24:13', NULL, 'krishna1', 'user'),
(9, 'liro', 'geeth@gmail.com', 771235478, 'e3a61d85e02311c4b92de47041bbb6b2', '', '', '', '0', NULL, NULL, NULL, NULL, '2021-07-08 10:59:14', NULL, 'geetha', 'user'),
(10, 'siva', 'aaa@gmail.com', 775158739, '104827e490dbbdbd83866776079d2cd0', 'linganaker', 'linganaker', 'linganaker', '234', NULL, NULL, NULL, NULL, '2021-07-09 17:45:45', NULL, 'sivasek', 'user'),
(11, 'krishna krish', 'krish123@gmail.com', 771234565, 'b4e0a5e72e8a6a9348bc43a3e57cc21f', '23,main road', 'dehiwala', 'colombo', '123', NULL, NULL, NULL, NULL, '2021-07-23 13:40:56', NULL, 'krishna1234', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(5, 8, 61, '2021-07-05 17:09:10'),
(6, 10, 61, '2021-07-14 06:48:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
