-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Apr 09, 2020 at 09:41 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Housedetails`
--

-- --------------------------------------------------------

--
-- Table structure for table `Rentaldetails`
--

DROP TABLE IF EXISTS `Rentaldetails`;
CREATE TABLE IF NOT EXISTS `rentaldetails` (
  `name` varchar(30) NOT NULL,
  `ownername` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `flattype` varchar(5) NOT NULL,
  `flatarea` int(10) NOT NULL,
  `rent` int(10) NOT NULL,
  `phonenumber` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Rentaldetails`
--

INSERT INTO `Rentaldetails` (`name`, `ownername`, `address`, `flattype`, `flatarea`, `rent`, `phonenumber`) VALUES
('SunRise apartments', 'Ramu', 'Suryapet', '1BHK', 3000, 30000, '9784512543'),
('SunRise apartments', 'Ramu', 'Suryapet', '2BHK', 4000, 42000, '9784512543'),
('SunRise apartments', 'Ramu', 'Suryapet', '3BHK', 5000, 55000, '9784512543'),
('Dominic apartments', 'Shimbu', 'Kodad', '1BHK', 1000, 10000, '9584512543'),
('Dominic apartments', 'Shimbu', 'Suryapet', '2BHK', 2000, 30000, '9584512543'),
('Dominic apartments', 'Shimbu', 'Kodad', '3BHK', 3000, 40000, '9584512543'),
('Kushbu apartments', 'Shiva', 'LB Nagar', '1BHK', 1000, 15000, '9554512543'),
('Kushbu apartments', 'Shiva', 'Kothapet', '2BHK', 2000, 32000, '9554512543'),
('Kushbu apartments', 'Shiva', 'Dilsuknagar', '3BHK', 3000, 41000, '9554512543');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
