-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2025 at 09:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bogsydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `userID` int(6) NOT NULL,
  `rentID` int(6) NOT NULL,
  `vidName` varchar(50) NOT NULL,
  `vidCategory` varchar(3) NOT NULL,
  `vidPrice` int(100) NOT NULL,
  `rentDate` date NOT NULL,
  `dueDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `userID` int(6) NOT NULL,
  `rentID` int(6) NOT NULL,
  `vidTitle` varchar(20) NOT NULL,
  `vidCat` varchar(4) NOT NULL,
  `dueDate` date NOT NULL,
  `returnDate` date NOT NULL,
  `overDueFee` int(10) NOT NULL,
  `returnID` int(6) NOT NULL,
  `fee` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`userID`, `rentID`, `vidTitle`, `vidCat`, `dueDate`, `returnDate`, `overDueFee`, `returnID`, `fee`) VALUES
(1, 3, 'pedro 3', 'DVD', '0000-00-00', '2025-02-19', 0, 1, 50),
(1, 5, 'BOLD', 'DVD', '0000-00-00', '2025-02-19', 0, 2, 50),
(1, 6, 'boleres', 'DVD', '0000-00-00', '2025-02-19', 0, 3, 50),
(1, 4, 'Pedro penduko 23', 'VCD', '0000-00-00', '2025-02-19', 0, 4, 25),
(1, 7, 'boleres', 'DVD', '0000-00-00', '2025-02-19', 0, 5, 50),
(1, 1, 'Pedro Penduko', 'VCD', '0000-00-00', '2025-02-19', 0, 6, 25),
(1, 2, 'Pedro Penduko', 'VCD', '0000-00-00', '2025-02-19', 0, 7, 25),
(1, 8, 'One Piece', 'DVD', '0000-00-00', '2025-02-19', 0, 8, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(6) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `midName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `phoneNum` int(11) NOT NULL,
  `adDress` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `firstName`, `midName`, `lastName`, `phoneNum`, `adDress`) VALUES
(1, 'Nathanielskie', 'Abuzo', 'Nazareno', 123456789, 'Purok Anahaw'),
(2, 'sample3', 'wqe', 'qwe', 0, 'qwe'),
(3, 'sampl3', 'wqe', 'qwe', 0, 'ambot'),
(4, 'nathaniel', 'abuzo', 'nazareno', 2147483647, '1234'),
(5, 'Nathaniel', 'Abuzo', 'Nazareno', 2147483647, '123'),
(6, '32', '32', '32', 32, '32'),
(7, '12', '12', '12', 12, '121'),
(8, '12', '12', '12', 12, '121'),
(9, '12', '12', '12', 12, '121'),
(10, 'Nathanie', 'Nathanie', 'Nathanie', 12, 'Purok Anahaw'),
(11, 'Nathaniel ', 'abuzo', 'nazareno', 12, 'purok anahaw'),
(12, 'mc', 'jess', 'diabordo', 98, '12');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `vidID` int(11) NOT NULL,
  `vidName` varchar(20) NOT NULL,
  `vidCat` varchar(4) NOT NULL,
  `vidPrice` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`vidID`, `vidName`, `vidCat`, `vidPrice`) VALUES
(15, 'One Piece', 'DVD', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rentID`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`returnID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`vidID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `rentID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
  MODIFY `returnID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `vidID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
