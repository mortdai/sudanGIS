-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2017 at 07:25 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sudangis`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `info_id` int(10) NOT NULL,
  `text` text NOT NULL,
  `local` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locals`
--

CREATE TABLE `locals` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `population` int(200) NOT NULL,
  `lat` float NOT NULL,
  `lng` float(10,7) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locals`
--

INSERT INTO `locals` (`id`, `name`, `address`, `population`, `lat`, `lng`, `type`) VALUES
(1, 'locality of Khartoum ', 'Khartoum State', 639598, 15.5007, 32.5598984, 'locality'),
(2, 'locality of Ombada', 'Khartoum State', 988163, 15.6859, 32.3199997, 'locality'),
(3, 'locality of Karary', 'Khartoum State', 714079, 15.676, 32.4962769, 'locality'),
(4, 'locality of Bahri', 'Khartoum State', 608817, 15.6569, 32.5485878, 'locality'),
(5, 'locality of Jabal Awliya', 'Khartoum State', 942429, 15.2286, 32.5259590, 'locality'),
(6, 'locality of Omdurman', 'Khartoum State', 513088, 15.6476, 32.4806900, 'locality'),
(7, 'locality of Sharq Elnil', 'Khartoum State', 868147, 15.626, 32.6729507, 'locality');

-- --------------------------------------------------------

--
-- Table structure for table `unvirsity`
--

CREATE TABLE `unvirsity` (
  `id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unvirsity`
--

INSERT INTO `unvirsity` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'Omdurman Islamic University', 'Khartoum State,Omdurman', 15.572852, 32.449554, 'governmental'),
(2, 'University of Khartoum', 'Khartoum State,Khartoum', 15.609365, 32.541710, 'governmental'),
(3, 'University of Bahri', 'Khartoum State,Bahri', 15.750436, 32.598068, 'governmental'),
(4, 'Sudan University of Science and Technology', ' Khartoum State,Khartoum', 15.599299, 32.512905, 'governmental'),
(5, 'Al Zaiem Al Azhari University', 'Khartoum State,Bahri', 15.637698, 32.526787, 'governmental'),
(6, 'Neelain University', 'Khartoum State,Khartoum', 15.602585, 32.514523, 'governmental'),
(7, 'University of the Holy Quran and Islamic Sciences', 'Khartoum State,Omdurman ', 15.633850, 32.491653, 'governmental');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `locals`
--
ALTER TABLE `locals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unvirsity`
--
ALTER TABLE `unvirsity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `info_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `locals`
--
ALTER TABLE `locals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `unvirsity`
--
ALTER TABLE `unvirsity`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
