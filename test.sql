-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2020 at 08:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `book_title` varchar(100) DEFAULT NULL,
  `authorname` varchar(100) DEFAULT NULL,
  `ISBN` varchar(100) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `date_issue` varchar(100) DEFAULT NULL,
  `date_due` varchar(50) DEFAULT NULL,
  `date_return` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `authorname`, `ISBN`, `Category`, `date_issue`, `date_due`, `date_return`, `reg_date`) VALUES
(1, 'Shoharab Rustom', 'Jafor Iqbal', '005656', 'Thriller', NULL, NULL, NULL, '2020-10-10 06:33:56'),
(2, 'Misir ali', 'Homayun ahmend', '005656ss', 'Mystery', NULL, NULL, NULL, '2020-10-10 06:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `street` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `age` varchar(30) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `Name`, `Address`, `street`, `city`, `Email`, `phone`, `age`, `reg_date`) VALUES
(1, 'Munem Sahriar', '560/F, North Halisahar, Chittagong, Bangladesh', 'besides ba', 'Chittagong', 'munemsah@gmail.com', '01832444434', '21', '2020-10-10 05:48:05'),
(2, 'Shah', '560/F, North Halisahar, Chittagong, Bangladesh', 'besides ba', 'Chittagong', 'munempuc@gmail.com', '+8801812124415', '21', '2020-10-10 05:50:25'),
(3, 'Munem Sahriar', '560/F, North Halisahar, Chittagong, Bangladesh', 'besides ba', 'Chittagong', 'munemsah@gmail.com', '01832444434', '21', '2020-10-10 05:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `member2`
--

CREATE TABLE `member2` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `book_title` varchar(100) DEFAULT NULL,
  `authorname` varchar(100) DEFAULT NULL,
  `ISBN` varchar(100) DEFAULT NULL,
  `date_issue` varchar(100) DEFAULT NULL,
  `date_due` varchar(50) DEFAULT NULL,
  `date_return` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member2`
--
ALTER TABLE `member2`
  ADD PRIMARY KEY (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member2`
--
ALTER TABLE `member2`
  MODIFY `book_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
