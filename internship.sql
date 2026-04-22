-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2026 at 11:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship`
--

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(15) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `age` int(3) NOT NULL,
  `location` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `fname`, `lname`, `age`, `location`) VALUES
(2, 'dina', 'izabayo', 20, 'nyaruguru'),
(4, 'cyiza', 'benitha', 31, 'nyaruguru'),
(8, 'chania', 'umwali', 21, 'nyabihu'),
(9, 'chania', 'umwamikazi', 20, 'nyabihu'),
(10, 'jjj', 'gg', 54, 'jhf'),
(11, 'jjj', 'gg', 54, 'jhf'),
(12, 'ff', 'hh', 4, 'dfghjk');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `update_at` date NOT NULL,
  `delete_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `fullname`, `email`, `password`, `usertype`, `update_at`, `delete_at`) VALUES
(2, 'dad', 'ddd23@gmail.com', '55', 'basic-user', '0000-00-00', '0000-00-00'),
(3, 'nduwabo', 'kami3@gmail.co', '20', 'basic-user', '2000-11-29', '2026-01-13'),
(4, 'keza nina', 'kezad23@gmail.c', '45', 'basic-user', '2019-01-18', '2029-01-01'),
(5, 'kagabo', 'kali23@gmail.co', '57', 'basic-user', '1899-11-29', '2026-01-13'),
(7, 'kami', 'kami3@gmail.co', '20', 'basic-user', '2000-11-29', '2026-01-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
