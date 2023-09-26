-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 11:01 AM
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
-- Database: `dvd_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `aid` int(3) NOT NULL,
  `aname` varchar(20) NOT NULL,
  `alastname` varchar(30) NOT NULL,
  `abdate` varchar(20) NOT NULL,
  `movie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='actor detail'

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`aid`, `aname`, `alastname`, `abdate`, `movie`) VALUES
(1, 'Keanu', 'Reeves', 'September 2, 1964', 'John wick'),
(2, 'Vin', 'Diesel', 'July 18, 1967', 'Fast and furious'),
(3, 'Dwayne', 'johnson', 'May 2, 1972', 'Black Adam'),
(4, 'Ryan', 'Reynolds', 'October 23, 1976', 'Dead Pool'),
(5, 'Gal', 'Gadot', 'April 30, 1985', 'Wonder Women');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` int(3) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `mlastname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='member detail';

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `mname`, `mlastname`, `address`, `telephone`) VALUES
(101, 'Kanoksak', 'Klinfung', 'BKK', '0615845402'),
(102, 'Nakarin', 'Phichaichuang', 'BKK', '0947941740'),
(103, 'Varakornkich', 'Namkhem', 'BKK', '0988424394'),
(104, 'Jirayus', 'Chompen', 'BKK', '0957314876'),
(105, 'Chanin', 'Imjinda', 'BKK', '0943178795'),
(123, 'asd', 'asd', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(3) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `time` varchar(10) NOT NULL,
  `day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='product detail';

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `detail`, `time`, `day`) VALUES
(200, 'John wick', 'a legendary Belarusian-American ex-hitman who left the criminal underworld after falling in love with and marrying a woman named Helen.', '2:00', '2014-09-17'),
(201, 'Fast and furious', 'Just to make things even more complicated, the Fast and Furious franchise also features several high-speed prequels, sequels and midquels. Most of these shorts were created for DVD releases of the original movies, shining light on unknown areas of the high-speed saga’s timeline.', '3:00', '2001-09-19'),
(202, 'Black Adam', 'In 2600 BC, the tyrannical king Ahk-Ton of Kahndaq enslaves his people to mine the mythical metal Eternium, using it to forge the Crown of Sabbac to attain power and invincibility. After attempting to stage a revolt, a young slave boy is given the powers of Shazam by the Council of Wizards, transforming him into Kahndaq\'s heroic champion. He kills Ahk-Ton, ending his reign.\r\n\r\n', '2:50', '2022-11-09'),
(203, 'Dead Pool', 'A dead pool is a key plot element of the 1988 final installment of the Dirty Harry film series, The Dead Pool. Harry investigates the players, when several people listed in a game of dead pool die in suspicious circumstances.', '4:00', '1991-09-11'),
(204, 'Wonder Women', 'In present-day Paris, Diana Prince receives a photographic plate from Wayne Enterprises of herself and four men taken during World War I, prompting her to recall her past. The daughter of Queen Hippolyta, Diana is raised on the hidden island of Themyscira, home to the Amazons, women warriors created by the Olympian gods to protect mankind.', '2:30', '2017-08-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
