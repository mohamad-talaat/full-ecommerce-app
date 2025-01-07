-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2025 at 02:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `address_usersid` int(11) NOT NULL,
  `address_name` varchar(50) NOT NULL,
  `address_city` varchar(255) NOT NULL,
  `address_street` varchar(255) NOT NULL,
  `address_lat` double NOT NULL,
  `address_lang` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `address_usersid`, `address_name`, `address_city`, `address_street`, `address_lat`, `address_lang`) VALUES
(9, 2, 'mo', 'mo', 'mo', 12.222, 12.222),
(11, 2, 'mohamed', 'talaat', 'mo', 12.2225, 12.2226),
(12, 2, 'aaaa', 'aa', 'aa', 31.0371033, 0),
(13, 2, 'qqqqqqq', 'qqqqqqqq', 'qqqqqqqqqqq', 31.044647094930404, 30.47322303056717);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(6) NOT NULL,
  `cart_usersid` int(6) NOT NULL,
  `cart_itemsid` int(6) NOT NULL,
  `cart_orders` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cart_usersid`, `cart_itemsid`, `cart_orders`) VALUES
(2, 2, 5, '10'),
(3, 2, 9, '16'),
(4, 2, 9, '12'),
(5, 2, 9, '10'),
(8, 2, 10, '4'),
(11, 2, 10, '7'),
(12, 2, 10, '7'),
(13, 2, 10, '12'),
(14, 2, 2, '13'),
(15, 2, 2, '14'),
(16, 2, 2, '14'),
(17, 2, 2, '14'),
(18, 2, 10, '15'),
(20, 2, 10, '16'),
(21, 2, 10, '16'),
(22, 2, 2, '16'),
(23, 2, 2, '16'),
(24, 2, 10, '17'),
(25, 2, 10, '18'),
(26, 2, 10, '19'),
(27, 2, 10, '19'),
(28, 2, 2, '20'),
(29, 2, 2, '20'),
(30, 2, 10, '21'),
(31, 2, 10, '22'),
(32, 2, 10, '23'),
(33, 2, 2, '23'),
(34, 2, 10, '24'),
(35, 2, 10, '25'),
(36, 2, 10, '25'),
(37, 2, 10, '25'),
(38, 2, 5, '26'),
(39, 2, 5, '26'),
(40, 2, 5, '26');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cartview`
-- (See below for the actual view)
--
CREATE TABLE `cartview` (
`itemsprice` double
,`countitems` bigint(21)
,`cart_id` int(6)
,`cart_usersid` int(6)
,`cart_itemsid` int(6)
,`cart_orders` varchar(50)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_active` tinyint(4)
,`items_count` int(11)
,`items_categories` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(100) NOT NULL,
  `categories_name_ar` varchar(100) NOT NULL,
  `categories_image` varchar(255) NOT NULL,
  `categories_datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_name_ar`, `categories_image`, `categories_datetime`) VALUES
(1, 'laptop', 'لابتوب', 'laptop.svg', '2024-02-07 16:37:44'),
(2, 'mobile', 'موبايل', 'mobile.svg', '2024-02-07 16:37:44'),
(3, 'camera', 'كاميرا', 'camera.svg', '2024-02-07 16:38:39'),
(4, 'dress', 'فستلن ', 'dress.svg', '2024-02-07 16:38:39'),
(5, 'smartwatch', 'ساعة ذكية', 'smartwatch.svg', '2024-12-31 12:09:57'),
(6, 'headphones', 'سماعات', 'headphones.svg', '2024-12-31 12:09:57'),
(7, 'books', 'كتب', 'books.svg', '2024-12-31 12:09:57'),
(8, 'shoes', 'أحذية', 'shoes.svg', '2024-12-31 12:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_count` int(11) NOT NULL,
  `coupon_discount` smallint(6) NOT NULL DEFAULT 0,
  `coupon_expiredate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_name`, `coupon_count`, `coupon_discount`, `coupon_expiredate`) VALUES
(1, 'mo', 2, 50, '2025-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `delivery_name` varchar(50) NOT NULL,
  `delivery_email` varchar(50) NOT NULL,
  `delivery_password` varchar(50) NOT NULL,
  `delivery_phone` varchar(50) NOT NULL,
  `delivery_verfiycode` smallint(10) NOT NULL,
  `delivery_approve` tinyint(4) NOT NULL DEFAULT 0,
  `delivery_create` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `delivery_name`, `delivery_email`, `delivery_password`, `delivery_phone`, `delivery_verfiycode`, `delivery_approve`, `delivery_create`) VALUES
(5, 'demo', 'demo@gmail.com', '03696f3c7607912a08c57e67ca50b4460294585d', '01013280650', 31045, 0, '2025-01-02 12:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL,
  `favorite_usersid` int(11) NOT NULL,
  `favorite_itemsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `items_id` int(11) NOT NULL,
  `items_name` varchar(100) NOT NULL,
  `items_name_ar` varchar(100) NOT NULL,
  `items_desc` varchar(255) NOT NULL,
  `items_desc_ar` varchar(255) NOT NULL,
  `items_image` varchar(255) NOT NULL,
  `items_price` float NOT NULL,
  `items_discount` smallint(6) NOT NULL,
  `items_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `items_active` tinyint(4) NOT NULL DEFAULT 0,
  `items_count` int(11) NOT NULL,
  `items_categories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`items_id`, `items_name`, `items_name_ar`, `items_desc`, `items_desc_ar`, `items_image`, `items_price`, `items_discount`, `items_date`, `items_active`, `items_count`, `items_categories`) VALUES
(2, 'mobile nokia', 'موبايل نوكيا ', 'nokia mobile for the generation z ', 'موبايل من نوع نوكيا للجيل الحديث ', 'mobile.JPG', 400, 15, '2024-02-07 16:42:42', 0, 20, 2),
(5, 'Samsung Galaxy Watch 5', 'سامسونج جالكسي واتش 5', 'A powerful smartwatch with many features', 'ساعة ذكية قوية بالعديد من المميزات', 'smartwatch.png', 350, 5, '2024-12-31 12:09:57', 0, 50, 5),
(6, 'Sony WH-1000XM5', 'سوني WH-1000XM5', 'Premium noise-canceling headphones', 'سماعات رأس ممتازة بخاصية إلغاء الضوضاء', 'headphones.png', 400, 10, '2024-12-31 12:09:57', 0, 30, 6),
(7, 'The Lord of the Rings', 'سيد الخواتم', 'A classic fantasy book series', 'سلسلة كتب خيالية كلاسيكية', 'books.jpeg', 25, 0, '2024-12-31 12:09:57', 0, 100, 7),
(8, 'Nike Air Max 90', 'نايك إير ماكس 90', 'Comfortable and stylish running shoes', 'أحذية رياضية مريحة وأنيقة', 'shoes.PNG', 120, 20, '2024-12-31 12:09:57', 0, 70, 8),
(9, 'Apple watch ultra', 'ساعة ابل الترا', 'The best smart watch for apple', 'افضل ساعة ابل ذكية', 'applewatchultra.png', 900, 20, '2024-12-31 12:09:57', 0, 20, 5),
(10, 'laptop linuvo', 'أجهزة الكمبيوتر المحمولة لينوفو', '  for the generation z ', '  نوكيا للجيل الحديث ', 'laptop.PNG', 800, 30, '2024-02-07 16:42:42', 0, 20, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `items1view`
-- (See below for the actual view)
--
CREATE TABLE `items1view` (
`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_active` tinyint(4)
,`items_count` int(11)
,`items_categories` int(11)
,`categories_id` int(11)
,`categories_name` varchar(100)
,`categories_name_ar` varchar(100)
,`categories_image` varchar(255)
,`categories_datetime` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemstopselling`
-- (See below for the actual view)
--
CREATE TABLE `itemstopselling` (
`countitems` bigint(21)
,`cart_id` int(6)
,`cart_usersid` int(6)
,`cart_itemsid` int(6)
,`cart_orders` varchar(50)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_active` tinyint(4)
,`items_count` int(11)
,`items_categories` int(11)
,`itemspricedisount` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `myfavorite`
-- (See below for the actual view)
--
CREATE TABLE `myfavorite` (
`favorite_id` int(11)
,`favorite_usersid` int(11)
,`favorite_itemsid` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_active` tinyint(4)
,`items_count` int(11)
,`items_categories` int(11)
,`users_id` int(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `notification_title` varchar(50) NOT NULL,
  `notification_body` varchar(255) NOT NULL,
  `notification_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `notification_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_title`, `notification_body`, `notification_datetime`, `notification_userid`) VALUES
(1, 'Order Pending', 'The Order is Pending', '2024-12-31 16:01:03', 2),
(2, 'Order Confirmed', 'The Order in The Way', '2024-12-30 16:01:03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `orders_usersid` int(11) NOT NULL,
  `orders_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>delivery , 1=>recieve',
  `orders_address` int(11) NOT NULL,
  `orders_pricedelivery` int(11) NOT NULL DEFAULT 0,
  `orders_price` int(11) NOT NULL,
  `orders_coupon` int(11) NOT NULL DEFAULT 0,
  `orders_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `orders_totalprice` int(10) NOT NULL,
  `orders_paymentmethod` int(10) NOT NULL,
  `orders_status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `orders_usersid`, `orders_type`, `orders_address`, `orders_pricedelivery`, `orders_price`, `orders_coupon`, `orders_datetime`, `orders_totalprice`, `orders_paymentmethod`, `orders_status`) VALUES
(24, 2, 0, 9, 10, 560, 0, '2025-01-02 12:37:56', 570, 0, 0),
(25, 2, 1, 9, 0, 1680, 0, '2025-01-02 12:40:08', 1680, 1, 0),
(26, 2, 0, 11, 10, 998, 1, '2025-01-04 14:55:04', 509, 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ordersdetailsview`
-- (See below for the actual view)
--
CREATE TABLE `ordersdetailsview` (
`itemsprice` double
,`countitems` bigint(21)
,`cart_id` int(6)
,`cart_usersid` int(6)
,`cart_itemsid` int(6)
,`cart_orders` varchar(50)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_image` varchar(255)
,`items_price` float
,`items_discount` smallint(6)
,`items_date` timestamp
,`items_active` tinyint(4)
,`items_count` int(11)
,`items_categories` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ordersview`
-- (See below for the actual view)
--
CREATE TABLE `ordersview` (
`orders_id` int(11)
,`orders_usersid` int(11)
,`orders_type` tinyint(4)
,`orders_address` int(11)
,`orders_pricedelivery` int(11)
,`orders_price` int(11)
,`orders_coupon` int(11)
,`orders_datetime` datetime
,`orders_totalprice` int(10)
,`orders_paymentmethod` int(10)
,`orders_status` int(5)
,`address_id` int(11)
,`address_usersid` int(11)
,`address_city` varchar(255)
,`address_street` varchar(255)
,`address_lat` double
,`address_lang` double
);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `settings_hometitle` varchar(50) NOT NULL,
  `settings_homebody` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `settings_hometitle`, `settings_homebody`) VALUES
(1, 'Black Friday', 'discount 60%');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(100) NOT NULL,
  `users_name` varchar(100) NOT NULL,
  `users_email` varchar(100) NOT NULL,
  `users_password` varchar(50) NOT NULL,
  `users_phone` varchar(30) NOT NULL,
  `users_verfiycode` int(10) NOT NULL,
  `users_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `users_approve` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_email`, `users_password`, `users_phone`, `users_verfiycode`, `users_create`, `users_approve`) VALUES
(2, 'mo', 'm@gmail.com', '6a232106794453cea8e6fe36e862ad3130188170', '42345489', 22716, '2024-01-25 11:37:02', 1),
(69, 'moha', 'mo@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '484894948', 61465, '2024-02-15 08:30:49', 0),
(71, '', 'm1@gmail.com', '756190e6d0c7c8882791f65aecc43aed547c28db', '4265654564', 65135, '2024-12-23 09:03:07', 0),
(72, 'Ahmed Ali', 'ahmed@example.com', 'password123', '1234567890', 12345, '2024-12-31 12:09:57', 1),
(73, 'Sara Mohamed', 'sara@example.com', 'password456', '9876543210', 67890, '2024-12-31 12:09:57', 1),
(74, 'Omar Hassan', 'omar@example.com', 'password789', '5555555555', 13579, '2024-12-31 12:09:57', 0);

-- --------------------------------------------------------

--
-- Structure for view `cartview`
--
DROP TABLE IF EXISTS `cartview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cartview`  AS SELECT sum(`items`.`items_price` - `items`.`items_price` * `items`.`items_discount` / 100) AS `itemsprice`, count(`cart`.`cart_itemsid`) AS `countitems`, `cart`.`cart_id` AS `cart_id`, `cart`.`cart_usersid` AS `cart_usersid`, `cart`.`cart_itemsid` AS `cart_itemsid`, `cart`.`cart_orders` AS `cart_orders`, `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_image` AS `items_image`, `items`.`items_price` AS `items_price`, `items`.`items_discount` AS `items_discount`, `items`.`items_date` AS `items_date`, `items`.`items_active` AS `items_active`, `items`.`items_count` AS `items_count`, `items`.`items_categories` AS `items_categories` FROM (`cart` join `items` on(`items`.`items_id` = `cart`.`cart_itemsid`)) WHERE `cart`.`cart_orders` = 0 GROUP BY `cart`.`cart_itemsid`, `cart`.`cart_usersid`, `cart`.`cart_orders` ;

-- --------------------------------------------------------

--
-- Structure for view `items1view`
--
DROP TABLE IF EXISTS `items1view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `items1view`  AS SELECT `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_image` AS `items_image`, `items`.`items_price` AS `items_price`, `items`.`items_discount` AS `items_discount`, `items`.`items_date` AS `items_date`, `items`.`items_active` AS `items_active`, `items`.`items_count` AS `items_count`, `items`.`items_categories` AS `items_categories`, `categories`.`categories_id` AS `categories_id`, `categories`.`categories_name` AS `categories_name`, `categories`.`categories_name_ar` AS `categories_name_ar`, `categories`.`categories_image` AS `categories_image`, `categories`.`categories_datetime` AS `categories_datetime` FROM (`items` join `categories` on(`items`.`items_categories` = `categories`.`categories_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `itemstopselling`
--
DROP TABLE IF EXISTS `itemstopselling`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `itemstopselling`  AS SELECT count(`cart`.`cart_id`) AS `countitems`, `cart`.`cart_id` AS `cart_id`, `cart`.`cart_usersid` AS `cart_usersid`, `cart`.`cart_itemsid` AS `cart_itemsid`, `cart`.`cart_orders` AS `cart_orders`, `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_image` AS `items_image`, `items`.`items_price` AS `items_price`, `items`.`items_discount` AS `items_discount`, `items`.`items_date` AS `items_date`, `items`.`items_active` AS `items_active`, `items`.`items_count` AS `items_count`, `items`.`items_categories` AS `items_categories`, `items`.`items_price`- `items`.`items_price` * `items`.`items_discount` / 100 AS `itemspricedisount` FROM (`cart` join `items` on(`items`.`items_id` = `cart`.`cart_itemsid`)) WHERE `cart`.`cart_orders` <> 0 GROUP BY `cart`.`cart_itemsid` ;

-- --------------------------------------------------------

--
-- Structure for view `myfavorite`
--
DROP TABLE IF EXISTS `myfavorite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `myfavorite`  AS SELECT `favorite`.`favorite_id` AS `favorite_id`, `favorite`.`favorite_usersid` AS `favorite_usersid`, `favorite`.`favorite_itemsid` AS `favorite_itemsid`, `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_image` AS `items_image`, `items`.`items_price` AS `items_price`, `items`.`items_discount` AS `items_discount`, `items`.`items_date` AS `items_date`, `items`.`items_active` AS `items_active`, `items`.`items_count` AS `items_count`, `items`.`items_categories` AS `items_categories`, `users`.`users_id` AS `users_id` FROM ((`favorite` join `users` on(`users`.`users_id` = `favorite`.`favorite_usersid`)) join `items` on(`items`.`items_id` = `favorite`.`favorite_itemsid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `ordersdetailsview`
--
DROP TABLE IF EXISTS `ordersdetailsview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ordersdetailsview`  AS SELECT sum(`items`.`items_price` - `items`.`items_price` * `items`.`items_discount` / 100) AS `itemsprice`, count(`cart`.`cart_itemsid`) AS `countitems`, `cart`.`cart_id` AS `cart_id`, `cart`.`cart_usersid` AS `cart_usersid`, `cart`.`cart_itemsid` AS `cart_itemsid`, `cart`.`cart_orders` AS `cart_orders`, `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_image` AS `items_image`, `items`.`items_price` AS `items_price`, `items`.`items_discount` AS `items_discount`, `items`.`items_date` AS `items_date`, `items`.`items_active` AS `items_active`, `items`.`items_count` AS `items_count`, `items`.`items_categories` AS `items_categories` FROM (`cart` join `items` on(`items`.`items_id` = `cart`.`cart_itemsid`)) WHERE `cart`.`cart_orders` <> 0 GROUP BY `cart`.`cart_itemsid`, `cart`.`cart_usersid`, `cart`.`cart_orders` ;

-- --------------------------------------------------------

--
-- Structure for view `ordersview`
--
DROP TABLE IF EXISTS `ordersview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ordersview`  AS SELECT `orders`.`orders_id` AS `orders_id`, `orders`.`orders_usersid` AS `orders_usersid`, `orders`.`orders_type` AS `orders_type`, `orders`.`orders_address` AS `orders_address`, `orders`.`orders_pricedelivery` AS `orders_pricedelivery`, `orders`.`orders_price` AS `orders_price`, `orders`.`orders_coupon` AS `orders_coupon`, `orders`.`orders_datetime` AS `orders_datetime`, `orders`.`orders_totalprice` AS `orders_totalprice`, `orders`.`orders_paymentmethod` AS `orders_paymentmethod`, `orders`.`orders_status` AS `orders_status`, `address`.`address_id` AS `address_id`, `address`.`address_usersid` AS `address_usersid`, `address`.`address_city` AS `address_city`, `address`.`address_street` AS `address_street`, `address`.`address_lat` AS `address_lat`, `address`.`address_lang` AS `address_lang` FROM (`orders` left join `address` on(`address`.`address_id` = `orders`.`orders_address`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `address_ibfk_1` (`address_usersid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_itemsid` (`cart_itemsid`),
  ADD KEY `cart_usersid` (`cart_usersid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `favorite_itemsid` (`favorite_itemsid`),
  ADD KEY `favorite_usersid` (`favorite_usersid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`items_id`),
  ADD KEY `items_categories` (`items_categories`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `notification_userid` (`notification_userid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `orders_usersid` (`orders_usersid`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_email` (`users_email`),
  ADD UNIQUE KEY `users_phone` (`users_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`address_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cart_itemsid`) REFERENCES `items` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`cart_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`favorite_itemsid`) REFERENCES `items` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`favorite_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`items_categories`) REFERENCES `categories` (`categories_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`notification_userid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`orders_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
