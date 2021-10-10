-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 10, 2021 at 08:32 PM
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
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'type of product name',
  `sub_tittle` varchar(255) NOT NULL,
  `brand_list` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`id`, `title`, `sub_tittle`, `brand_list`) VALUES
(1, 'Вікна', 'Найбільший асортимент різного профілю', '[\"ALUPLAST\" : \"4.5/5\", \"GEALAN\" : \"3.5/5\", \"Viknar’off\" : \"3.1/5\"]'),
(2, 'Двері', 'Найбільший асортимент різного профілю', '[\"ALUPLAST\" : \"4.5/5\", \"GEALAN\" : \"3.5/5\", \"Viknar’off\" : \"3.1/5\"]');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_table`
--

CREATE TABLE `gallery_table` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gallery_table`
--

INSERT INTO `gallery_table` (`id`, `title`, `source`) VALUES
(1, 'вул. Грушевського 14', '../gallery_1.png'),
(2, 'вул. Винниченка 54', '../photo_2021-02-22_00-39-15.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE `product_table` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL COMMENT 'name of product staff',
  `logo_img` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `manufacture_country` text,
  `price` int NOT NULL,
  `features` text NOT NULL,
  `features_body` longtext NOT NULL,
  `rating` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`id`, `category_id`, `product_name`, `logo_img`, `img`, `manufacture_country`, `price`, `features`, `features_body`, `rating`) VALUES
(1, 2, 'Fenster 400', ' vash-vybir.lutsk.ua/back/assets/img/logo/viknarof.png', '/back/assets/img/Fenster_400.png', 'НІМЕЧЧИНА', 5000, '{\"1\":\"3 камер\",\"2\":\"60 глибина\",\"3\":\"32 мм склопакет\"}', '3-камери в рамі та 2 камери в створці\r\nмонтажна ширина профілю 60 мм\r\nзовнішнє (Т) відкривання стулки\r\nвстановлення склопакетів і сендвіч панелей товщиною 24 мм та 32 мм\r\nармування в кутах стулок надійно зв’язано спеціальними зварними з’єднувачами (підсилювачами кутів) і утворює жорсткий суцільний контур\r\nчорний ущільнювач\r\nнаявне додаткове металеве підсилення зі сторони замка\r\nможливість вибору алюмінієвого порогу: холодний (20 мм), теплий (55 мм)\r\nстандартний колір ламінації золотий дуб, темний дуб, горіх, антрацит\r\n5 років гарантії', 1),
(2, 1, 'Gealan S 9000', '/back/assets/img/logo/viknarof.png', '/back/assets/img/Gealan_S_9000.png', 'НІМЕЧЧИНА', 1900, '{\"1\":\"6 камер\",\"2\":\"82.5 глибина\",\"3\":\"48 мм склопакет\"}', '6-камерна профільна система\r\nмонтажна ширина профілю 82,5 мм\r\nТ та Z відкривання стулки\r\nвстановлення склопакетів товщиною 32 мм, 44 мм та 48 мм\r\nквадратне армування в стулці та рамі\r\nармування в кутах стулок надійно зв’язано спеціальними зварними з’єднувачами (підсилювачами кутів) і утворює жорсткий суцільний контур\r\nсірий ущільнювач\r\nнаявне додаткове металеве підсилення зі сторони замка\r\nтеплий поріг 20 мм з можливістю встановлення розширювачів\r\n4 стандартних кольори ламінації\r\n15 років гарантії', 1),
(3, 2, 'Mega Line 600', '/back/assets/img/logo/viknarof.png', '/back/assets/img/mega_line_600.png', 'НІМЕЧЧИНА', 866, '{\"1\":\"5 камер\",\"2\":\"70 глибина\",\"3\":\"42 мм склопакет\"}', '5-камерна профільна система (4 камери в Z подібній стулці)\r\nмонтажна ширина профілю 70 мм\r\nзовнішнє та внутрішнє відкривання стулки\r\nвстановлення склопакетів товщиною 24 мм, 32 мм та 42 мм\r\nквадратне армування в стулці та рамі\r\nармування в кутах стулок надійно зв’язано спеціальними зварними з’єднувачами (підсилювачами кутів) і утворює жорсткий суцільний контур\r\nсірий ущільнювач\r\nнаявне додаткове металеве підсилення зі сторони замка\r\nможливість вибору алюмінієвого порогу: холодний (20 мм), теплий (55 мм)\r\n4 стандартних кольори ламінації\r\n7 років гарантії', 1),
(4, 2, 'ДВЕРІ LWS 3', ' vash-vybir.lutsk.ua/back/assets/img/logo/viknarof.png', 'vash-vybir.lutsk.ua/back/assets/img/LWS_3.png', 'УКРАЇНА', 1253, '{\"1\":\"3 камер\",\"2\":\"58 глибина\",\"3\":\"32 мм склопакет\"}', '3-камерна профільна система\r\nмонтажна ширина профілю 58 мм\r\nзовнішнє (Т) відкривання стулки\r\nвстановлення склопакетів і сендвіч панелей товщиною 24 мм та 32 мм\r\nармування в кутах стулок надійно зв’язано спеціальними зварними з’єднувачами (підсилювачами кутів) і утворює жорсткий суцільний контур\r\nчорний ущільнювач\r\nнаявне додаткове металеве підсилення зі сторони замка\r\nстандартний колір ламінації золотий дуб\r\n3 роки гарантії', 1),
(5, 2, 'ДВЕРІ Gealan S 8000', ' vash-vybir.lutsk.ua/back/assets/img/logo/gealan.png', 'vash-vybir.lutsk.ua/back/assets/img/Gealan_S_8000.png', 'НІМЕЧЧИНА', 1600, '{\"1\":\"6 камер\",\"2\":\"74 глибина\",\"3\":\"44 мм склопакет\"}', '6-камерна профільна система\r\nмонтажна ширина профілю 74 мм\r\nТ та Z відкривання стулки\r\nвстановлення склопакетів товщиною 24 мм та 44 мм і сендвіч панелей товщиною 44 мм\r\nквадратне армування в стулці та рамі\r\nармування в кутах стулок надійно зв’язано спеціальними зварними з’єднувачами (підсилювачами кутів) і утворює жорсткий суцільний контур\r\nсірий ущільнювач\r\nнаявне додаткове металеве підсилення зі сторони замка\r\nтеплий поріг 20 мм з можливістю встановлення розширювачів\r\n4 стандартних кольори ламінації\r\n15 років гарантії', 0),
(6, 2, 'Двері Fenster 500', 'vash-vybir.lutsk.ua/back/assets/img/logo/viknarof.png', 'vash-vybir.lutsk.ua/back/assets/img/Fenster_400.png', 'УКРАЇНА', 2100, '{\"1\":\"3 камер\",\"2\":\"60 глибина\",\"3\":\"32 мм склопакет\"}', '3-камери в рамі та 2 камери в створці\r\nмонтажна ширина профілю 60 мм\r\nзовнішнє (Т) відкривання стулки\r\nвстановлення склопакетів і сендвіч панелей товщиною до 32 мм\r\nармування в кутах стулок надійно зв’язано спеціальними зварними з’єднувачами (підсилювачами кутів) і утворює жорсткий суцільний контур\r\nчорний ущільнювач\r\nнаявне додаткове металеве підсилення зі сторони замка\r\nможливість вибору алюмінієвого порогу: холодний (20 мм), теплий (55 мм)\r\nстандартний колір ламінації золотий дуб, темний дуб, горіх, антрацит, махагон', 0),
(7, 1, 'Gealan S 8000', 'vash-vybir.lutsk.ua/back/assets/img/logo/viknarof.png', 'vash-vybir.lutsk.ua/back/assets/img/gealan-8000.png', 'УКРАЇНА', 2500, '{\"1\":\"6 камер\",\"2\":\"74 глибина\",\"3\":\"24.44мм склопакет\"}', 'Теплоізоляція 0,98 м2 °C/Вт\r\nШумоізоляція до 42 дБ\r\nМонтажна глибина 74 мм\r\nКількість камер 6\r\nВстановлення склопакетів 24, 44 мм\r\nКолір ущільнення сірий\r\nВиробник профілю Німеччина', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_table`
--
ALTER TABLE `gallery_table`
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
-- AUTO_INCREMENT for table `gallery_table`
--
ALTER TABLE `gallery_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_table`
--
ALTER TABLE `product_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
