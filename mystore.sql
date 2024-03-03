-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 04:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tabel`
--

CREATE TABLE `admin_tabel` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Prime'),
(2, 'Nike'),
(3, 'PRAN'),
(4, 'Arong'),
(9, 'Best Buy'),
(10, 'huda beauty'),
(11, 'Realme');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Book'),
(2, 'Fruits'),
(3, 'Juices'),
(4, 'Vegetables'),
(5, 'Milk Products'),
(6, 'Shoes'),
(7, 'Groceries'),
(9, 'Electronic accessories'),
(10, 'Beauty Tools'),
(11, 'Huawei '),
(12, 'Mi watches');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 1, 1848643722, 12, 1, 'pending'),
(2, 1, 973037742, 10, 1, 'pending'),
(3, 1, 482711954, 9, 1, 'pending'),
(4, 1, 1260835235, 3, 1, 'pending'),
(5, 1, 364684634, 11, 1, 'pending'),
(6, 1, 1833600379, 10, 2, 'pending'),
(7, 1, 822486431, 4, 1, 'pending'),
(8, 1, 1421895071, 12, 1, 'pending'),
(9, 1, 358604445, 11, 1, 'pending'),
(10, 1, 951970787, 9, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keyword` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_img1` varchar(255) NOT NULL,
  `product_img2` varchar(255) NOT NULL,
  `product_img3` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keyword`, `category_id`, `brand_id`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `date`, `status`) VALUES
(1, 'chocolate', 'Dark chocolate is loaded with nutrients that can positively affect your health. Made from the seed of the cacao tree', 'chocolate,dark chocolate', 7, 9, 'choco2.jpg', 'choco3.jpg', 'chocolate.jpg', '400', '2022-08-17 05:42:38', 'true'),
(2, 'Earbuds', 'Magnetic Sports Headsets Stereo Music Earbuds Wireless Bluetooth Earphones for Mobile Phone', 'Wireless Earbuds,earbud,earphone', 11, 11, 'earbud.jpg', 'earbud2.jpg', 'earbud3.jpg', '3000', '2022-08-16 21:09:57', 'true'),
(3, 'Makeup tool', 'Huda Beauty Liquid Concealer 6 Colors Full Coverage Suit for All Color Skin Face / Eye Makeup Liquid Concealer', 'makeup,makeup kit,makeup tool', 10, 10, 'makeup.jpg', 'makeup2.jpg', 'makeup3.jpg', '1250', '2022-08-16 20:32:41', 'true'),
(4, 'Strawberry', 'The garden strawberry is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries', 'strawberry,red strawberry', 2, 9, 'straw3.jpg', 'straw2.jpg', 'straw.jpg', '300', '2022-08-16 20:36:28', 'true'),
(5, 'Mango', 'A mango is an edible stone fruit produced by the tropical tree Mangifera indica', 'mango,fresh mango', 2, 3, 'mango.jpg', 'mango3.jpg', 'mango5(1).jpg', '250', '2022-08-16 20:39:52', 'true'),
(6, 'Footwear for men', ' WEINBRENNER Casual Lace-up Shoe for Men', 'footwear,shoe', 6, 2, 'sh5.jpg', 'sh4.jpg', 'sh3.jpg', '2090', '2022-08-16 20:44:14', 'true'),
(7, 'Smart watch', 'Xiaomi Haylou LS02 Global Version Smart Watch For Man and Women', 'smart watch,handwear,watch', 12, 11, 'watch3.jpg', 'watch2.jpg', 'watch.jpg', '3080', '2022-08-16 20:48:30', 'true'),
(8, 'Iron', 'OSI6136 Iron Steam - 1600W - White and Purple', 'iron', 9, 1, 'iron2.jpg', 'iron3.jpg', 'iron.jpg', '3000', '2022-08-16 20:56:38', 'true'),
(9, 'Fruit juice', 'Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables', 'juice,fruit juice', 3, 3, 'j8.jpg', 'j3.jpg', 'j7.jpg', '100', '2022-08-16 21:08:03', 'true'),
(10, 'Book', ' You Can Win Book, Tumio Jitbe : Shiva Khera (Bengali Translated)', 'book,story book', 1, 9, 'book2.jpg', 'book.jpg', 'book3.jpg', '150', '2022-08-16 21:05:26', 'true'),
(11, 'Capsicum', 'Capsicum is a genus of flowering plants in the nightshade family Solanaceae, native to the Americas', 'capsicum', 4, 9, 'cp.jpg', 'cp-1.jpg', 'cp2.jpg', '230', '2022-08-16 21:13:24', 'true'),
(12, 'Liquid milk', 'Milk is a nutrient-rich liquid food produced by the mammary glands of mammals', 'milk,liquid milk', 5, 3, 'milk2(1).jpg', 'milk2(1).jpg', 'milk2.jpg', '590', '2022-08-16 21:18:55', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(1, 1, 3690, 1848643722, 3, '2022-08-16 21:21:09', 'Complete'),
(2, 1, 150, 973037742, 1, '2022-08-17 05:13:40', 'Complete'),
(3, 1, 500, 482711954, 2, '2022-08-17 06:48:59', 'Complete'),
(4, 1, 1250, 1260835235, 1, '2022-08-17 06:51:10', 'Complete'),
(5, 1, 230, 364684634, 1, '2022-08-17 07:51:52', 'Complete'),
(6, 1, 300, 1833600379, 1, '2022-08-17 07:45:35', 'pending'),
(7, 1, 700, 822486431, 2, '2022-08-17 07:47:50', 'pending'),
(8, 1, 3590, 1421895071, 2, '2022-08-17 07:50:26', 'pending'),
(9, 1, 230, 358604445, 1, '2022-08-17 08:04:19', 'pending'),
(10, 1, 100, 951970787, 1, '2022-08-17 08:05:20', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_mode`, `date`) VALUES
(1, 1, 1848643722, 3690, 'Select Payment Mode', '2022-08-16 21:21:09'),
(2, 1, 1848643722, 3690, 'Select Payment Mode', '2022-08-16 21:21:11'),
(3, 1, 1848643722, 3690, 'Cash on Delivary', '2022-08-16 21:21:17'),
(4, 1, 1848643722, 3690, 'Cash on Delivary', '2022-08-16 21:21:23'),
(5, 1, 1848643722, 3690, 'Payoffline', '2022-08-16 21:21:29'),
(6, 2, 973037742, 150, 'Payoffline', '2022-08-17 05:13:40'),
(7, 3, 482711954, 500, 'Bkash', '2022-08-17 06:48:59'),
(8, 3, 482711954, 500, 'Cash on Delivary', '2022-08-17 06:49:02'),
(9, 4, 1260835235, 1250, 'Select Payment Mode', '2022-08-17 06:51:10'),
(10, 4, 1260835235, 1250, 'Cash on Delivary', '2022-08-17 06:51:13'),
(11, 5, 364684634, 230, 'Payoffline', '2022-08-17 07:51:52'),
(12, 5, 364684634, 230, 'Payoffline', '2022-08-17 07:53:54'),
(13, 5, 364684634, 230, 'Bkash', '2022-08-17 07:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_name`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(1, 'srabonti', 'srabontideb23@gmail.com', '$2y$10$GzocFef3w63ptE30XOFiv.F.y2suqeUBi8y4yXRTFujhR65/XW8wK', 'srabonti.jpg', '::1', 'dhaka', '01882374273');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tabel`
--
ALTER TABLE `admin_tabel`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tabel`
--
ALTER TABLE `admin_tabel`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
