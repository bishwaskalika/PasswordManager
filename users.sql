-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2017 at 05:01 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `bishwas`
--

CREATE TABLE `bishwas` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `details` varchar(500) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `title`, `details`, `added_date`) VALUES
(1, 'name1', 'name', '2017-11-24 15:23:45'),
(2, 'name', 'name', '2017-11-24 15:37:17'),
(3, 'name', 'name', '2017-11-24 15:37:26'),
(4, 'name', 'name', '2017-11-24 15:37:43'),
(5, 'name', 'name', '2017-11-24 15:37:46'),
(6, 'name', 'name', '2017-11-24 15:37:47'),
(7, 'name', 'name', '2017-11-24 15:38:29'),
(8, 'name', 'name', '2017-11-24 15:39:26'),
(9, 'name', 'name', '2017-11-24 15:39:39'),
(10, 'name', 'name', '2017-11-24 15:39:42'),
(11, 'name', 'name', '2017-11-24 15:41:46'),
(12, 'name', 'name', '2017-11-24 15:43:08'),
(13, 'name', 'name1', '2017-11-24 16:25:47'),
(14, 'name1', 'name1', '2017-11-24 16:26:49'),
(16, 'name1', 'name1', '2017-11-24 16:44:09'),
(17, 'name', 'namexc', '2017-11-24 16:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `password`
--

CREATE TABLE `password` (
  `id` int(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password`
--

INSERT INTO `password` (`id`, `title`, `email`, `username`, `password`, `added_date`) VALUES
(5, 'name', 'name@gmail.com', 'name', '', '2017-11-23 10:17:38'),
(6, 'name', 'name@gmail.com', 'name', 'a', '2017-11-23 10:19:06'),
(7, 'name', 'name@gmail.com', 'name', 'name', '2017-11-23 10:19:27'),
(8, 'bishwas', 'name@gmail.com', 'name', 'name', '2017-11-23 10:21:51'),
(10, 'name4', 'name@gmail.com', 'name', 'name', '2017-11-23 13:28:25'),
(11, 'name4b', 'name@gmail.com', 'name', 'name', '2017-11-23 13:29:36'),
(20, '1', '', '11', '1', '2017-11-23 14:09:33'),
(21, '1', 'bishwas.kalika@gmail.com', '11', '1', '2017-11-24 16:27:34'),
(22, '1', 'bishwas.kalika@gmail.com', '11', '1234', '2017-11-24 16:44:58'),
(23, '', '', '', '', '2017-11-26 02:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `enabled`) VALUES
('admin', 'admin', 1),
('bishwas', 'bishwas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `username`, `role`) VALUES
(2, 'admin', 'ROLE_ADMIN'),
(4, 'bishwas', 'ROLE_USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bishwas`
--
ALTER TABLE `bishwas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password`
--
ALTER TABLE `password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD UNIQUE KEY `uni_username_role` (`role`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bishwas`
--
ALTER TABLE `bishwas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `password`
--
ALTER TABLE `password`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
