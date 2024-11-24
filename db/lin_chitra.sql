-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Nov 24, 2024 at 02:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lin_chitra`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `CategoryID` int(11) NOT NULL,
  `Barcode` varchar(50) NOT NULL,
  `ExpiredDate` date DEFAULT NULL,
  `Qty` int(11) NOT NULL,
  `UnitPriceIn` double NOT NULL,
  `UnitPriceOut` double NOT NULL,
  `ProductImage` varchar(50) DEFAULT 'default.png',
  `isDeleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`ProductID`, `ProductName`, `Description`, `CategoryID`, `Barcode`, `ExpiredDate`, `Qty`, `UnitPriceIn`, `UnitPriceOut`, `ProductImage`, `isDeleted`) VALUES
(1, 'OX', 'IN STOCK', 1, '123', '2024-11-02', 100, 10, 12, 'default.png', 0),
(2, 'OX', 'IN STOCK', 1, '123', '2024-11-02', 100, 10, 12, 'default.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
