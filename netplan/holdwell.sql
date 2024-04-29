-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Apr 29, 2024 at 02:21 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `holdwell`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `p_name` varchar(255) NOT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `value1` decimal(10,3) DEFAULT NULL,
  `value2` decimal(10,3) DEFAULT NULL,
  `value3` decimal(10,3) DEFAULT NULL,
  `value4` decimal(10,3) DEFAULT NULL,
  `value5` decimal(10,3) DEFAULT NULL,
  `value6` decimal(10,3) DEFAULT NULL,
  `value7` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`p_name`, `serial_number`, `timestamp`, `value1`, `value2`, `value3`, `value4`, `value5`, `value6`, `value7`) VALUES
('AHL_BT40_A1_65', 'AB64204688', '2024-04-16 09:15:30', 14.457, 0.050, 0.206, 6.367, 92.042, -75.933, 14.457);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_category` varchar(255) DEFAULT NULL,
  `p_series01` varchar(255) DEFAULT NULL,
  `p_series02` varchar(255) DEFAULT NULL,
  `p_series03` varchar(255) DEFAULT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_info` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_category`, `p_series01`, `p_series02`, `p_series03`, `p_name`, `p_info`) VALUES
('anglehead', 'AHL', 'BT', 'A1', 'AHL_BT40_A1_65', ''),
('statictoolholder', 'THL', '', '', 'THL_MNZ_C1_4025', ''),
('driventoolholder', 'THM', '', '', 'THM_AAA_BB_0000', '');

-- --------------------------------------------------------

--
-- Table structure for table `sensor`
--

CREATE TABLE `sensor` (
  `s_no` int NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `SR_limit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sensor`
--

INSERT INTO `sensor` (`s_no`, `s_name`, `SR_limit`) VALUES
(1, 'IFM_VSA004', 'Holdwell_000'),
(2, 'PEE1', 'PEE1_000'),
(3, 'CME0', ''),
(4, 'CEJ0', '');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `t_no` int NOT NULL,
  `t_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`t_no`, `t_name`) VALUES
(1, '出力軸軸承'),
(2, '中座齒輪'),
(3, '下座齒輪');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`p_name`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_name`);

--
-- Indexes for table `sensor`
--
ALTER TABLE `sensor`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`t_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
