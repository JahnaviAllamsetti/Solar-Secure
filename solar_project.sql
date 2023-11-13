-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 09:08 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solar_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `products_ids` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cost`, `name`, `email`, `status`, `city`, `address`, `phone`, `date`, `products_ids`) VALUES
(1, 40.00, 'Jahnavi Allamsetti', 'allamsetti_j@ee.iitr.ac.in', 'not paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-01 21:32:33', ''),
(2, 20.00, 'Jahnavi Allamsetti', 'allamsetti_j@ee.iitr.ac.in', 'not paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-03 12:14:41', ',1'),
(3, 20.00, 'Jahnavi Allamsetti', 'allamsetti_j@ee.iitr.ac.in', 'not paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-03 12:46:44', ',1'),
(4, 15.00, 'Allamsetti Jahnavi', 'allamsetti_j@ee.iitr.ac.in', 'not paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-03 12:53:42', ',2'),
(5, 36.00, 'Jahnavi Allamsetti', 'allamsetti_j@ee.iitr.ac.in', 'not paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-03 13:37:04', ',4'),
(1688374677496, 20.00, 'Jahnavi Allamsetti', 'allamsetti_j@ee.iitr.ac.in', 'not paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-03 14:27:57', ',1'),
(1688375027566, 20.00, 'Jahnavi', 'allamsetti_j@ee.iitr.ac.in', 'paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-03 14:33:47', ',1'),
(1688375820946, 20.00, 'Jahnavi Allamsetti', 'allamsetti_j@ee.iitr.ac.in', 'paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-03 14:47:00', ',1'),
(1688452931279, 20.00, 'Allamsetti Jahnavi', 'allamsetti_j@ee.iitr.ac.in', 'not paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-04 12:12:11', ',1'),
(1688453165844, 20.00, 'Jahnavi Allamsetti', 'allamsetti_j@ee.iitr.ac.in', 'paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-04 12:16:05', ',1'),
(1688453793672, 20.00, 'Jahnavi', 'allamsetti_j@ee.iitr.ac.in', 'paid', 'Visakhpatnam', 'Flat No 2A, Lakshmi Narayani Nilayam, Near Aarif Nursin', '7981149361', '2023-07-04 12:26:33', ',1');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_image`, `product_quantity`, `order_date`) VALUES
(1, 1688374677496, 1, 'Delicious Pizza', 20.00, 'f1.png', 1, '2023-07-03'),
(2, 1688375027566, 1, 'Delicious Pizza', 20.00, 'f1.png', 1, '2023-07-03'),
(3, 1688375820946, 1, 'Delicious Pizza', 20.00, 'f1.png', 1, '2023-07-03'),
(4, 1688452931279, 1, 'Delicious Pizza', 20.00, 'f1.png', 1, '2023-07-04'),
(5, 1688453165844, 1, 'Delicious Pizza', 20.00, 'f1.png', 1, '2023-07-04'),
(6, 1688453793672, 1, 'Delicious Pizza', 20.00, 'f1.png', 1, '2023-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `transaction_id` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `transaction_id`, `date`) VALUES
(1, 1688375027566, '10440392JF517560M', '2023-07-03 14:37:02'),
(2, 1688375820946, '185315426K925804W', '2023-07-03 14:47:15'),
(3, 1688453165844, '1WL10122L3016094J', '2023-07-04 12:17:27'),
(4, 1688453793672, '22R13535HE864862L', '2023-07-04 12:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float(8,2) NOT NULL,
  `sale_price` float(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `image` text NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `sale_price`, `quantity`, `image`, `category`, `type`) VALUES
(1, 'Delicious Pizza', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', 20.00, NULL, 1, 'f1.png', 'Pizza', NULL),
(2, 'Delicious Burger', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', 15.00, NULL, 1, 'f2.png', 'Burger', NULL),
(3, 'Delicious Pizza', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', 17.00, NULL, 1, 'f3.png', 'Pizza', NULL),
(4, 'Delicious Pasta', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', 18.00, NULL, 1, 'f4.png', 'Pasta', NULL),
(5, 'French Fries', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', 10.00, NULL, 1, 'f5.png', 'French Fries', NULL),
(6, 'Delicious Pizza', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', 15.00, NULL, 1, 'f6.png', 'Pizza', NULL),
(7, 'Tasty Burger', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', 12.00, NULL, 1, 'f7.png', 'Burger', NULL),
(8, 'Tasty Burger', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', 14.00, NULL, 1, 'f8.png', 'Burger', NULL),
(9, 'Delicious Pasta', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', 10.00, NULL, 1, 'f9.png', 'Pasta', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1688453793673;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
