-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 04:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(10, 'SolarWorld');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(57, 2, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1),
(148, 1, '::1', 26, 1),
(165, 90, '::1', 27, 1),
(166, 87, '::1', 27, 1),
(167, 92, '::1', 27, 1),
(168, 91, '::1', 27, 1),
(171, 82, '::1', 28, 1),
(172, 83, '::1', 28, 1),
(173, 88, '::1', 28, 1),
(174, 83, '::1', 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Store'),
(2, 'Off Grid Solar Systems '),
(3, 'Solar Inverters'),
(4, 'Solar Panel Stand'),
(5, 'Installation kits');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'puneethreddy951@gmail.com'),
(5, 'puneethreddy@gmail.com'),
(6, 'parvabarbhaya99@gmail.com'),
(7, 'heetdoshi97@gmail.com'),
(8, 'nigabhai@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 12, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'Puneeth', 'puneethreddy951@gmail.com', 'Bangalore, Kumbalagodu, Karnataka', 'Bangalore', 'Karnataka', 560074, 'pokjhgfcxc', '4321 2345 6788 7654', '12/90', 3, 77000, 1234),
(2, 26, 'Vipul Barbhaya', 'legitshopin@gmail.com', 'fsdfdsf', 'Kandivali East', 'MAHARASHTRA', 400101, 'oaraartra', '1838838383838383', '12/22', 1, 3500, 23),
(3, 27, 'xyz abc', 'qwerty@gmail.com', 'nxjksdncjksdnk', 'mumbai', 'mahrashtra', 400001, 'oaraartra', '4565 4456 6544 5665', '12/22', 6, 45010, 450),
(4, 30, 'netram  modi', 'netram@gmail.com', 'kandivali', 'mumbai', 'gujrat', 400111, 'netram', '4535 3535 3535 3535', '11/25', 1, 1500, 454),
(5, 31, 'Samkit Barbhaya', 'samkit@gmail.com', 'ghatkoper', 'Mumbai', 'Rajasthan', 744114, 'Samkit', '4787 5544 4477 7844', '11/25', 1, 1500, 455);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(92, 3, 84, 1, 6990),
(93, 3, 87, 1, 3000),
(94, 3, 83, 1, 4800),
(95, 3, 85, 1, 28000),
(96, 3, 82, 1, 1500),
(97, 3, 88, 1, 720),
(98, 4, 82, 1, 1500),
(99, 5, 82, 1, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(82, 4, 10, 'Loom solar 1 panel stand (180 watts)', 1500, 'Loom solar introduces portable solar mounting structure / solar panel stand to fix 1 nos. of solar panel. A solar panel from 125 watt ~ 180 watt of any brand and any make can be installed on a home roof. The portable solar panel stand is made of galvanized iron, the rust proof solar panel stand life is is more than 25 years. \r\n\r\nmade of galvanized iron which lasts for 25 years\r\n1 panel stand, supports 125 watts - 180 watts solar panel\r\neasy to install (do it yourself type)', 'product100.png', 'Loom solar 1 panel stand (180 watts)\r\nSolar Panel Stand'),
(83, 3, 10, 'Luminous solar nxg + hybrid inverter 750 - 12V\r\n', 4800, 'Luminous Solar 750 is starting range inverter with 400 VA / 320 watt Peak load handing capacity. It is an intelligent hybrid inverter with 20 Amp inbuilt Solar charge Controller. The Inverter Supports up to 400 Watts of solar Panels. It is suitable for running up to 320 watts of electrical appliances during power cuts. It always gives priority to solar for charging battery from solar panels.', 'product101.png', 'Luminous solar nxg + hybrid inverter 750 - 12V\r\n\r\nSolar Inverters'),
(84, 2, 10, 'Loom Solar 50 watt off grid solar system for mobile charging, lighting for villages', 6990, 'Loom solar presents off grid D.C. solution for consumers having no access of electricity in their homes. This solar energy system is specially designed for villages having sever power problem and they are using kerosene, emergency light for their power needs.. The dc system is sufficient enough to power 1 small hut to light and charge the mobile for full night.  ', 'product102.png', 'Loom Solar 50 watt off grid solar system for mobile charging, lighting for villages\r\nOff grid solar system'),
(85, 2, 10, '(AC Module) - Loom Solar 375 watt mono panel\r\n', 28000, 'Loom solar launches first time in India, Solar AC Module i.e. you can run your home appliances such as Fan, Television, Refrigerator, Air-cooler, Air Conditioner during the day directly from solar without Inverters, Batteries. The Solar AC module is designed to make every home solar powered in Metro city, big towns, Capital cities without hassles. ', 'product103.png', '(AC Module) - Loom Solar 375 watt mono panel\r\nOn grid solar system'),
(86, 2, 10, 'Loom Solar 1 kVA off grid solar system for home with 4-5 hours backup', 50000, 'This is a powerful  1 kVA off grid solar system that comes with an intelligent solar inverter having digital display, Lithium battery, and Mono perc solar panels. This is the best combo to have in a 2-3 bhk beautiful homes having 4-5 hours of power outage.\r\n\r\n ', 'product104.png', 'Loom Solar 1 kVA off grid solar system for home with 4-5 hours backup\r\nOf grid system'),
(87, 4, 10, 'Loom Solar 2 Panel Stand (180 watts)', 3000, 'Loom Solar introduces portable solar mounting structure / solar panel stand to fix 2 nos. . A solar panel from 100 ~ 180 of any brand and any make can be installed on a home roof. The portable solar panel stand is made of galvanized iron, the rust proof solar panel stand life is is more than 25 years.', 'product105.png', 'Loom Solar 2 Panel Stand (180 watts)\r\nSolar Stand'),
(88, 5, 10, ' HPL/Chint DC MCB 32 Amps, 2 Pole', 720, 'DC MCB is a protection device to safe panels from high surge current. This is installed before Inverter so that in case of high surge current, The Panel should remain safe. on 32 amps DC MCB, a solar panel having maximum current of 32 amps should be connected.', 'product106.png', 'HPL/Chint DC MCB 32 Amps, 2 Pole\r\nInstallation kits'),
(89, 2, 10, 'Loom Solar 1 kw off grid solar system for homes, with 8-10 Hours Backup\r\n', 95000, 'Luminous 1 kw solar system is designed to give power supply for 8-10 hours to 3-4 BHK homes in India having severe power cuts and unreliable electricity supply. It generates a power of 5000 watts during the day using sun power. ', 'product107.png', 'Loom Solar 1 kw off grid solar system for homes, with 8-10 Hours Backup\r\nOff Grid Solar System'),
(90, 3, 10, 'Microtek Solar Inverter msun 1235 Off Grid\r\n', 6300, 'Microtek MSUN 1235 is a off grid solar inverter which is designed to give power using solar panel. It is a starting model in microtek solar inverters with 30 amps chargers which supports a panel connectivity of 600 Wp. ', 'product108.png', 'Microtek Solar Inverter msun 1235 Off Grid'),
(91, 5, 10, '1 Panel Connector, 1- in -1 Wire Out\r\n', 200, 'MC4 connectors are used for connecting solar panels. MC4 connectors ensures solar panel wire does not disconnect accidentally when the cables are pulled.    \r\n\r\n1 panel MC4 T-type connector connects 1 solar panel from 10 watt to 400 watts. IP 67 rating makes it waterproof and dust proof for outdoor use. ', 'product109.png', '1 Panel Connector, 1- in -1 Wire Out\r\nInstallation kits'),
(92, 5, 10, 'L&T Single Phase Net Meter for 1-3kW Grid Connected Solar System\r\n', 15000, 'L&T Metering provides accurate and reliable solutions for residential meters. Single Phase Net meter is the integral component of grid connected solar system which shows the net consumption of power in the house. It indicates the difference between what is exported and imported from the grid.', 'product110.png', 'L&T Single Phase Net Meter for 1-3kW Grid Connected Solar System\r\nInstallation kit');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', 'puneeth', '9448121558', '123456789', 'sdcjns,djc'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'parva', 'barbhaya', 'legitshopin@gmail.com', 'Qwerty@99', '8422555452', 'mumbai', 'mumbai'),
(27, 'xyz', 'abc', 'qwerty@gmail.com', 'Qwerty@99', '9320582878', 'nxjksdncjksdnk', 'mumbai'),
(28, 'Parva', 'Barbhaya', 'parvabarbhaya@gmail.com', 'Qwerty@99', '8433555465', 'kandivali', 'mumbai'),
(29, 'aayushi', 'barbhaya', 'aayushibarbhaya@gmail.com', 'Aayushi@99', '8744455549', 'MAnhattan', 'mumbai'),
(30, 'netram ', 'modi', 'netram@gmail.com', 'Netram@99', '9322202020', 'kandivali', 'mumbai'),
(31, 'Samkit', 'Barbhaya', 'samkit@gmail.com', 'Samkit@99', '7888845456', 'ghatkoper', 'Mumbai');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(26, 'parva', 'barbhaya', 'legitshopin@gmail.com', 'Qwerty@99', '8422555452', 'mumbai', 'mumbai'),
(27, 'xyz', 'abc', 'qwerty@gmail.com', 'Qwerty@99', '9320582878', 'nxjksdncjksdnk', 'mumbai'),
(28, 'Parva', 'Barbhaya', 'parvabarbhaya@gmail.com', 'Qwerty@99', '8433555465', 'kandivali', 'mumbai'),
(29, 'aayushi', 'barbhaya', 'aayushibarbhaya@gmail.com', 'Aayushi@99', '8744455549', 'MAnhattan', 'mumbai'),
(30, 'netram ', 'modi', 'netram@gmail.com', 'Netram@99', '9322202020', 'kandivali', 'mumbai'),
(31, 'Samkit', 'Barbhaya', 'samkit@gmail.com', 'Samkit@99', '7888845456', 'ghatkoper', 'Mumbai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
