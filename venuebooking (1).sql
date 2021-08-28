-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 07:47 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venuebooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(10) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `email_id`, `Password`) VALUES
(101, 'c191251@ugrad.iiuc.ac.bd', '11223344'),
(102, 'c191273@ugrad.iiuc.ac.bd', '11223344'),
(103, 'c191283@ugrad.iiuc.ac.bd', '11223344');
(104, 'c191252@ugrad.iiuc.ac.bd', '11223344');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `V_ID` int(10) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `BookingDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`V_ID`, `Username`, `BookingDate`) VALUES
(1001, 'Maliha', '2020-12-23 16:18:00'),
(1002, 'Mohammad', '2020-12-03 09:00:00'),
(1003, 'Naim', '2020-12-24 11:27:32'),
(1004, 'SRayhan1', '2020-12-03 15:34:41'),
(1005, 'Ratul', '2020-12-24 13:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `Admin_id` int(10) NOT NULL,
  `Username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`Admin_id`, `Username`) VALUES
(101, 'Mohammad'),
(101, 'SRayhan1'),
(102, 'Maliha'),
(102, 'Naim'),
(103, 'Ratul');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `P_ID` int(10) NOT NULL,
  `V_ID` int(10) DEFAULT NULL,
  `P_date` datetime DEFAULT NULL,
  `P_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`P_ID`, `V_ID`, `P_date`, `P_status`) VALUES
(7001, 1003, '0000-00-00 00:00:00', 'pending'),
(7002, 1001, '0000-00-00 00:00:00', 'paid'),
(7003, 1002, '2020-11-02 05:08:14', 'paid'),
(7004, 1005, '0000-00-00 00:00:00', 'pending'),
(7005, 1004, '0000-00-00 00:00:00', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `P_ID` int(10) NOT NULL,
  `Username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`P_ID`, `Username`) VALUES
(7001, 'Naim'),
(7002, 'Maliha'),
(7003, 'Mohammad'),
(7004, 'Ratul'),
(7005, 'SRayhan1');

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE `takes` (
  `Admin_id` int(10) NOT NULL,
  `P_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`Admin_id`, `P_ID`) VALUES
(101, 7003),
(101, 7005),
(102, 7001),
(102, 7002),
(103, 7004);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Occupation` varchar(100) DEFAULT NULL,
  `Phone Number` int(11) DEFAULT NULL,
  `Username` varchar(200) NOT NULL,
  `Email Id` varchar(200) DEFAULT NULL,
  `Password` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Address`, `Occupation`, `Phone Number`, `Username`, `Email Id`, `Password`) VALUES
('Maliha Jahan', 'Muradpur,Chittagong', 'Housewife', 22222222, 'Maliha', 'maliha123@gmail.com', 'S202030#'),
('Mohammad Hossain', 'panchlaish,chittagong', 'police', 1111111111, 'Mohammad', 'Mohammad11@gmail.com', '10203040'),
('Naimul Islam', 'Wasa circle,chittagong', 'Businessman', 333333333, 'Naim', 'naim0123@gmail.com', '$4werety'),
('Ratul Kumar', 'Agrabad,chittagong', 'Professor', 444444444, 'Ratul', 'ratul111@gmail.com', 'serg$!23'),
('Sheikh Rayhan', 'Chawkbazar,chittagong', 'Businessman', 555555555, 'SRayhan1', 'rayhan22@gmail.com', '4050607@');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `V_ID` int(10) NOT NULL,
  `V_Name` varchar(200) NOT NULL,
  `V_address` varchar(200) NOT NULL,
  `Capacity` int(10) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`V_ID`, `V_Name`, `V_address`, `Capacity`, `Price`) VALUES
(1001, 'Paragon city community center', '11,13 Nabab Siraj Ud Daula road,Chattogram', 1300, '150000.00'),
(1002, 'Samabesh community center', '1215,East Nasirabad,Chattogram', 1000, '150000.00'),
(1003, 'Hafiz Park', '928, Nabab Siraj Ud Daula road,Chattogram', 1000, '120000.00'),
(1004, 'Sena kollan convention center', 'Chatteshwari road,Chattogram', 2000, '300000.00'),
(1005, 'Rima convention center', '80,Shahid Saifuddin Khaled road,Chattogram', 1200, '170000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`V_ID`,`Username`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `manages`
--
ALTER TABLE `manages`
  ADD PRIMARY KEY (`Admin_id`,`Username`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`P_ID`),
  ADD KEY `V_ID` (`V_ID`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`P_ID`,`Username`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `takes`
--
ALTER TABLE `takes`
  ADD PRIMARY KEY (`Admin_id`,`P_ID`),
  ADD KEY `P_ID` (`P_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`V_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`V_ID`) REFERENCES `venue` (`V_ID`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`V_ID`) REFERENCES `venue` (`V_ID`);

--
-- Constraints for table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `pays_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `payment` (`P_ID`),
  ADD CONSTRAINT `pays_ibfk_2` FOREIGN KEY (`P_ID`) REFERENCES `payment` (`P_ID`),
  ADD CONSTRAINT `pays_ibfk_3` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`);

--
-- Constraints for table `takes`
--
ALTER TABLE `takes`
  ADD CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`),
  ADD CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`P_ID`) REFERENCES `payment` (`P_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
