-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 05:38 AM
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
-- Database: `cloudproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `PageID` varchar(10) NOT NULL,
  `ID` varchar(32) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `CGPA` decimal(3,2) DEFAULT NULL,
  `Image` varchar(1000) NOT NULL,
  `Description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`PageID`, `ID`, `Name`, `Age`, `CGPA`, `Image`, `Description`) VALUES
('1A', '210101072', 'Elfares Howera', 22, 2.34, '66270c8afefb805c56fdeade_IMG_4011-p-800.jpg', 'I am aiming to improve it as much as I could this term.'),
('2B', '20221320560', 'Rawan Shawky', 21, 2.67, '66270e4c74b3b7edca1dcebc_WhatsApp%20Image%202024-04-22%20at%2022.38.45_1346d39e.jpg', 'I am currently studying other courses alongside my college field, these courses are UI/UX Design and Android Development'),
('3C', '22010011', 'Ibrahim Nasr', 20, 2.75, '66270e6ca6ed0dae215d8f96_435981975_3474376506041588_3733325720616212100_n.jpg', 'i am aiming to improve it as much as i could this term'),
('4D', '20221321296', 'Mohamed Hesham', 20, 2.42, '66270f00225836c80c3a6f88_sapiens%20(2)-p-800.png', 'i am aiming to improve it as much as i could this term.'),
('5E', '22010130', 'Abdelrahman Shawky', 21, 2.51, '66270ef18b702f5ab1a05a32_384468311_1429872604224837_3897637269601548646_n.jpg', 'i am aiming to improve it as much as i could this term.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`PageID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
