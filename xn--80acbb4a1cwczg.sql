-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 05, 2021 at 05:20 PM
-- Server version: 8.0.24
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xn--80acbb4a1cwczg`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'type of product name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`id`, `name`) VALUES
(1, 'Вікна'),
(2, 'Двері');

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE `product_table` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `logo_img` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `manufacture_country` text,
  `price` int NOT NULL,
  `features` text NOT NULL,
  `features_body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`id`, `category_id`, `logo_img`, `img`, `manufacture_country`, `price`, `features`, `features_body`) VALUES
(1, 1, '../logo/rehau-logo.png', '../img/Fenster_400.png', 'НІМЕЧЧИНА', 5000, '{\"1\":\"5 камер\",\"2\":\"82.5 глибина\",\"3\":\"48 мм склопакет\"}', '6-камерна профільна система\r\nмонтажна ширина профілю 82,5 мм\r\nТ та Z відкривання стулки\r\nквадратне армування в стулці та рамі\r\nармування в кутах стулок надійно зв’язано спеціальними зварними з’єднувачами (підсилювачами кутів) і утворює жорсткий суцільний контур\r\nсірий ущільнювач\r\nнаявне додаткове металеве підсилення зі сторони замка\r\nтеплий поріг 20 мм з можливістю встановлення розширювачів\r\n4 стандартних кольори ламінаці');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_idx` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_table`
--
ALTER TABLE `product_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_table`
--
ALTER TABLE `product_table`
  ADD CONSTRAINT `fk_category_idx` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
