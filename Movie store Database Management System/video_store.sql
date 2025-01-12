-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2024 at 08:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `Dependent_ID` int(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Member_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`Dependent_ID`, `Name`, `Member_ID`) VALUES
(1001, 'Alice Smith', 111),
(1002, 'Bob Smith', 112),
(1003, 'Carol Smith', 113),
(1004, 'David Smith', 114),
(1005, 'Eve Smith', 115),
(1006, 'Frank Smith', 116),
(1007, 'Grace Smith', 117),
(1008, 'Hank Smith', 118),
(1009, 'Ivy Smith', 119),
(1010, 'Jack Smith', 120),
(1011, 'Kara Smith', 121),
(1012, 'Leo Smith', 122),
(1013, 'Mona Smith', 123),
(1014, 'Nina Smith', 124),
(1015, 'Oscar Smith', 125);

-- --------------------------------------------------------

--
-- Table structure for table `includes`
--

CREATE TABLE `includes` (
  `Movie_ID` int(10) DEFAULT NULL,
  `Rental_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `includes`
--

INSERT INTO `includes` (`Movie_ID`, `Rental_ID`) VALUES
(1, 5001),
(2, 5002),
(3, 5003),
(4, 5004),
(5, 5005),
(6, 5006),
(7, 5007),
(8, 5008),
(9, 5009),
(10, 5010),
(11, 5011),
(12, 5012),
(13, 5013),
(14, 5014),
(15, 5015);

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

CREATE TABLE `makes` (
  `Rental_ID` int(10) DEFAULT NULL,
  `Member_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `makes`
--

INSERT INTO `makes` (`Rental_ID`, `Member_ID`) VALUES
(5002, 112),
(5003, 113),
(5004, 114),
(5005, 115),
(5006, 111),
(5007, 112),
(5008, 113),
(5009, 114),
(5010, 115),
(5011, 111),
(5012, 112),
(5013, 113),
(5014, 114),
(5015, 115);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Member_ID` int(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Phone_number` varchar(30) DEFAULT NULL,
  `Credit_Card_Info` varchar(30) DEFAULT NULL,
  `Membership_Type` varchar(30) DEFAULT NULL,
  `Favorite_Category` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Member_ID`, `Name`, `Phone_number`, `Credit_Card_Info`, `Membership_Type`, `Favorite_Category`) VALUES
(111, 'Alice Johnson', '555-1111', '1234-5678-9012-3456', 'Premium', 'Action'),
(112, 'Bob Brown', '555-1112', '2345-6789-0123-4567', 'Standard', 'Adventure'),
(113, 'Carol White', '555-1113', '3456-7890-1234-5678', 'Premium', 'Comedy'),
(114, 'David Smith', '555-1114', '4567-8901-2345-6789', 'Standard', 'Action'),
(115, 'Eva Green', '555-1115', '5678-9012-3456-7890', 'Premium', 'Adventure'),
(116, 'Frank Harris', '555-1116', '6789-0123-4567-8901', 'Standard', 'Comedy'),
(117, 'Grace Lewis', '555-1117', '7890-1234-5678-9012', 'Premium', 'Action'),
(118, 'Hank Turner', '555-1118', '8901-2345-6789-0123', 'Standard', 'Adventure'),
(119, 'Ivy Adams', '555-1119', '9012-3456-7890-1234', 'Premium', 'Comedy'),
(120, 'Jack Wilson', '555-1120', '0123-4567-8901-2345', 'Standard', 'Action'),
(121, 'Kara Evans', '555-1121', '1234-5678-9012-3457', 'Premium', 'Adventure'),
(122, 'Leo Thompson', '555-1122', '2345-6789-0123-4568', 'Standard', 'Comedy'),
(123, 'Mona Clark', '555-1123', '3456-7890-1234-5679', 'Premium', 'Action'),
(124, 'Nina Scott', '555-1124', '4567-8901-2345-6780', 'Standard', 'Adventure'),
(125, 'Oscar Moore', '555-1125', '5678-9012-3456-7891', 'Premium', 'Comedy');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `Movie_ID` int(10) NOT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `Format` varchar(30) DEFAULT NULL,
  `Genre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Movie_ID`, `Title`, `Format`, `Genre`) VALUES
(1, 'Action Blast', 'VHS', 'Action'),
(2, 'New Movie Title', 'VHS', 'Comedy'),
(3, 'Comedy Nights', 'DVD', 'Comedy'),
(4, 'Thrilling Chase', 'VHS', 'Action'),
(5, 'Heroic Quest', 'VCD', 'Adventure'),
(6, 'Laugh Riot', 'DVD', 'Comedy'),
(7, 'Battlefield Glory', 'VHS', 'Action'),
(8, 'Lost Kingdom', 'VCD', 'Adventure'),
(9, 'Funny Moments', 'DVD', 'Comedy'),
(10, 'Ultimate Showdown', 'VHS', 'Action'),
(11, 'Mystic Journey', 'VCD', 'Adventure'),
(12, 'Stand-Up Special', 'DVD', 'Comedy'),
(13, 'Explosive Action', 'VHS', 'Action'),
(14, 'Hidden Treasures', 'VCD', 'Adventure'),
(15, 'Jokes Galore', 'DVD', 'Comedy'),
(16, 'Inseption', 'DVD', 'Action');

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `Rental_ID` int(10) NOT NULL,
  `Rental_Date` varchar(10) DEFAULT NULL,
  `Return_Date` varchar(10) DEFAULT NULL,
  `Member_ID` int(10) DEFAULT NULL,
  `Movie_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`Rental_ID`, `Rental_Date`, `Return_Date`, `Member_ID`, `Movie_ID`) VALUES
(5001, '2024-08-01', '2024-08-07', 111, 1),
(5002, '2024-08-02', '2024-08-08', 112, 2),
(5003, '2024-08-03', '2024-08-09', 113, 3),
(5004, '2024-08-04', '2024-08-10', 114, 4),
(5005, '2024-08-05', '2024-08-11', 115, 5),
(5006, '2024-08-06', '2024-08-12', 111, 6),
(5007, '2024-08-07', '2024-08-13', 112, 7),
(5008, '2024-08-08', '2024-08-14', 113, 8),
(5009, '2024-08-09', '2024-08-15', 114, 9),
(5010, '2024-08-10', '2024-08-16', 115, 10),
(5011, '2024-08-11', '2024-08-17', 111, 11),
(5012, '2024-08-12', '2024-08-18', 112, 12),
(5013, '2024-08-13', '2024-08-19', 113, 13),
(5014, '2024-08-14', '2024-08-20', 114, 14),
(5015, '2024-08-15', '2024-08-21', 115, 15);

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `Movie_ID` int(10) DEFAULT NULL,
  `Member_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`Movie_ID`, `Member_ID`) VALUES
(1, 111),
(2, 112),
(3, 113),
(4, 114),
(5, 115),
(6, 116),
(7, 117),
(8, 118),
(9, 119),
(10, 120),
(11, 121),
(12, 122),
(13, 123),
(14, 124),
(15, 125);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`Dependent_ID`),
  ADD KEY `Member_ID` (`Member_ID`);

--
-- Indexes for table `includes`
--
ALTER TABLE `includes`
  ADD KEY `Movie_ID` (`Movie_ID`),
  ADD KEY `Rental_ID` (`Rental_ID`);

--
-- Indexes for table `makes`
--
ALTER TABLE `makes`
  ADD KEY `Rental_ID` (`Rental_ID`),
  ADD KEY `Member_ID` (`Member_ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Member_ID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`Movie_ID`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`Rental_ID`),
  ADD KEY `Member_ID` (`Member_ID`),
  ADD KEY `Movie_ID` (`Movie_ID`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD KEY `Movie_ID` (`Movie_ID`),
  ADD KEY `Member_ID` (`Member_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dependent`
--
ALTER TABLE `dependent`
  ADD CONSTRAINT `dependent_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`Member_ID`);

--
-- Constraints for table `includes`
--
ALTER TABLE `includes`
  ADD CONSTRAINT `includes_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `movie` (`Movie_ID`),
  ADD CONSTRAINT `includes_ibfk_2` FOREIGN KEY (`Rental_ID`) REFERENCES `rental` (`Rental_ID`);

--
-- Constraints for table `makes`
--
ALTER TABLE `makes`
  ADD CONSTRAINT `makes_ibfk_1` FOREIGN KEY (`Rental_ID`) REFERENCES `rental` (`Rental_ID`),
  ADD CONSTRAINT `makes_ibfk_2` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`Member_ID`);

--
-- Constraints for table `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`Member_ID`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`Movie_ID`) REFERENCES `movie` (`Movie_ID`);

--
-- Constraints for table `rents`
--
ALTER TABLE `rents`
  ADD CONSTRAINT `rents_ibfk_1` FOREIGN KEY (`Movie_ID`) REFERENCES `movie` (`Movie_ID`),
  ADD CONSTRAINT `rents_ibfk_2` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`Member_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
