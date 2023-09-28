-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 10:05 AM
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
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_moblie` varchar(12) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_moblie`, `user_email`, `user_address`) VALUES
('', 'as', 'as', 'as', 'sa'),
('CS0001', 'Kanoksak', '0615845402', 'nap_gg11@hotmail.com', 'Bankok'),
('CS0002', 'Jirayus Chompen', '0957314876', 'Jirayus@gmail.com', 'Bankok'),
('CS0003', 'Varakornkich namkhem', '0988424394', 'Varakornkich@gmail.com', 'Bankok'),
('CS0004', 'Nakarin Phichaichuang', '0947941740', 'Nakarin@gmail.com', 'Bankok'),
('CS0005', 'Chanin Imjinda', '0943178795', 'Chanin@gmail.com', 'Bankok'),
('CS0006', 'as', 'as', 'as', 'sa'),
('CS0007', 'uraiwan', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
