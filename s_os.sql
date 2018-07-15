-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2018 at 06:41 PM
-- Server version: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Bd_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `s_os`
--

CREATE TABLE `s_os` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `s_os`
--

INSERT INTO `s_os` (`id`, `category_id`, `name`, `price`, `description`) VALUES
(1, 2, 'Cliente AAAA', 650.80, 'Solicitação Cliente AAAA'),
(2, 2, 'Cliente BBBB', 600.00, 'Solicitação Cliente BBBB'),
(3, 2, 'Cliente CCCC', 350.00, 'Solicitação Cliente CCCC'),
(4, 2, 'Cliente DDDD', 400.00, 'Solicitação Cliente DDDD'),
(5, 2, 'Cliente EEEE', 500.20, 'Solicitação Cliente EEEE'),
(6, 2, 'Cliente FFFF', 280.00, 'Solicitação Cliente FFFF'),
(7, 2, 'Cliente GGGG', 200.00, 'Solicitação Cliente GGGG'),
(8, 2, 'Cliente HHHH', 198.80, 'Solicitação Cliente HHHH'),
(9, 2, 'Cliente IIII', 80.10, 'Solicitação Cliente IIII'),
(10, 2, 'Cliente JJJJ', 98.78, 'Solicitação Cliente JJJJ'),
(11, 2, 'Cliente KKKK', 24.80, 'Solicitação Cliente KKKK'),
(12, 2, 'Cliente LLLL', 4800.00, 'Solicitação Cliente LLLL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s_os`
--
ALTER TABLE `s_os`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `s_os`
--
ALTER TABLE `s_os`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
