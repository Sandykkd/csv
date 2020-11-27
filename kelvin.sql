-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 06:38 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelvin`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`uid`, `name`, `email`, `gender`, `designation`, `dept`, `mobile`, `photo`, `createdAt`, `updatedAt`) VALUES
(2, 'rytrutut', 'fgh@gmail', 'Female', 'stud', 'cs', 1234567890, '1.png', '2020-11-27 17:29:36', '2020-11-27 17:29:36'),
(10, 'rytuy', 'fgh@gmail', 'Female', 'stud', 'ece', 1234567890, '10.png', '2020-11-27 17:29:36', '2020-11-27 17:29:36'),
(115, 'rytrut', 'fgh@gmail', 'male', 'stud', 'eee', 1234567890, '1.png', '2020-11-27 17:29:36', '2020-11-27 17:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `uid` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`uid`, `name`, `email`, `gender`, `designation`, `dept`, `mobile`, `photo`, `password`) VALUES
('007', 'MS DHONI', 'dhoni\"gmail.com', 'MALE', 'Cricketer', 'SPORTS', 9876543210, 'dhoni.jpg', '123456'),
('010', 'SACHIN', 'sachin@gmail.com', 'MALE', 'Cricketer', 'SPORTS', 9876543211, 'sachin.jpg', '1234567'),
('012', 'YUVRAJ', 'yuvraj@gmail.com', 'MALE', 'Cricketer', 'SPORTS', 9876543212, 'yuvraj.jpg', '12345678'),
('3', 'Santhiya D', 'santhiya.17cs@kct.ac.in', 'Female', 'student', 'cse', 8870151621, '3.png', 'abc123'),
('4', 'Santhiya D', 'santhiya.17cs@kct.ac.in', 'Female', 'student', 'cse', 8870151621, '4.png', 'abc123'),
('8', 'Santhiya D', 'santhiya.17cs@kct.ac.in', 'Female', 'student', 'cse', 8870151621, '8.png', 'abc123'),
('C00053', 'Vignesh V', 'vignesh.v.kciri@kct.ac.in', 'Male', 'Research Assistant', 'KCIRI', 9790043491, 'vignesh.jpg', 'abc123');

-- --------------------------------------------------------

--
-- Table structure for table `restpassword`
--

CREATE TABLE `restpassword` (
  `tokenid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `tokenExpire` datetime DEFAULT NULL,
  `token` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restpassword`
--

INSERT INTO `restpassword` (`tokenid`, `uid`, `tokenExpire`, `token`) VALUES
(1, '012', '2020-11-19 00:00:00', 'sdfgj'),
(2, '012', '2020-11-19 00:00:00', 'sdfgj');

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

CREATE TABLE `sample` (
  `Name` char(50) DEFAULT NULL,
  `Email` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_apr`
--

CREATE TABLE `temp_apr` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` float(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_aug`
--

CREATE TABLE `temp_aug` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` float(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_dec`
--

CREATE TABLE `temp_dec` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` decimal(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_feb`
--

CREATE TABLE `temp_feb` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` decimal(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_jan`
--

CREATE TABLE `temp_jan` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `temperature` decimal(10,0) NOT NULL,
  `distance` float DEFAULT NULL,
  `shift` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_jul`
--

CREATE TABLE `temp_jul` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` decimal(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_jun`
--

CREATE TABLE `temp_jun` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` decimal(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_mar`
--

CREATE TABLE `temp_mar` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` decimal(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_may`
--

CREATE TABLE `temp_may` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` decimal(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_nov`
--

CREATE TABLE `temp_nov` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` float(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_nov`
--

INSERT INTO `temp_nov` (`tempid`, `uid`, `checkin`, `checkout`, `temperature`, `distance`, `shift`) VALUES
(1, '3', '2020-11-25 09:00:29', '2020-11-28 09:30:36', 99, 7.7, '3'),
(2, '4', '2020-11-27 11:17:41', '2020-11-30 11:43:56', 96, 8.3, '2'),
(8, '8', '2020-11-27 09:55:55', '2020-11-27 12:00:37', 96, 7.7, '3'),
(9, 'C00053', '2020-11-27 05:27:52', '2020-11-27 21:49:52', 96, 7.7, '3');

-- --------------------------------------------------------

--
-- Table structure for table `temp_oct`
--

CREATE TABLE `temp_oct` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` decimal(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_sep`
--

CREATE TABLE `temp_sep` (
  `tempid` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL,
  `temperature` decimal(10,0) NOT NULL,
  `distance` float NOT NULL,
  `shift` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `restpassword`
--
ALTER TABLE `restpassword`
  ADD PRIMARY KEY (`tokenid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_apr`
--
ALTER TABLE `temp_apr`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_aug`
--
ALTER TABLE `temp_aug`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_dec`
--
ALTER TABLE `temp_dec`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `temp_feb`
--
ALTER TABLE `temp_feb`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_jan`
--
ALTER TABLE `temp_jan`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_jul`
--
ALTER TABLE `temp_jul`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_jun`
--
ALTER TABLE `temp_jun`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_mar`
--
ALTER TABLE `temp_mar`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_may`
--
ALTER TABLE `temp_may`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_nov`
--
ALTER TABLE `temp_nov`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_oct`
--
ALTER TABLE `temp_oct`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `temp_sep`
--
ALTER TABLE `temp_sep`
  ADD PRIMARY KEY (`tempid`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restpassword`
--
ALTER TABLE `restpassword`
  MODIFY `tokenid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp_apr`
--
ALTER TABLE `temp_apr`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_aug`
--
ALTER TABLE `temp_aug`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_dec`
--
ALTER TABLE `temp_dec`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_feb`
--
ALTER TABLE `temp_feb`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_jan`
--
ALTER TABLE `temp_jan`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_jul`
--
ALTER TABLE `temp_jul`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_jun`
--
ALTER TABLE `temp_jun`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_mar`
--
ALTER TABLE `temp_mar`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_may`
--
ALTER TABLE `temp_may`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_nov`
--
ALTER TABLE `temp_nov`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `temp_oct`
--
ALTER TABLE `temp_oct`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_sep`
--
ALTER TABLE `temp_sep`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `restpassword`
--
ALTER TABLE `restpassword`
  ADD CONSTRAINT `restpassword_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_apr`
--
ALTER TABLE `temp_apr`
  ADD CONSTRAINT `temp_apr_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_aug`
--
ALTER TABLE `temp_aug`
  ADD CONSTRAINT `temp_aug_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_feb`
--
ALTER TABLE `temp_feb`
  ADD CONSTRAINT `temp_feb_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_jan`
--
ALTER TABLE `temp_jan`
  ADD CONSTRAINT `temp_jan_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_jul`
--
ALTER TABLE `temp_jul`
  ADD CONSTRAINT `temp_jul_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_jun`
--
ALTER TABLE `temp_jun`
  ADD CONSTRAINT `temp_jun_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_mar`
--
ALTER TABLE `temp_mar`
  ADD CONSTRAINT `temp_mar_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_may`
--
ALTER TABLE `temp_may`
  ADD CONSTRAINT `temp_may_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_nov`
--
ALTER TABLE `temp_nov`
  ADD CONSTRAINT `temp_nov_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_oct`
--
ALTER TABLE `temp_oct`
  ADD CONSTRAINT `temp_oct_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);

--
-- Constraints for table `temp_sep`
--
ALTER TABLE `temp_sep`
  ADD CONSTRAINT `temp_sep_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `employee` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
