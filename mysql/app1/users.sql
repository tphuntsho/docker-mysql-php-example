-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2018 at 04:34 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'John Doe', 'john@devops.example.com'),
(2, 'Jane Doe', 'jane@devops.example.com'),
(3, 'Apple Doe', 'apple@devops.example.com'),
(4, 'Pema Dorji', 'pdorji@devops.example.com'),
(5, 'Charlie Doe', 'charlie@devops.example.com'),
(6, 'Charles Doe', 'charles@devops.example.com'),
(7, 'Dion Doe', 'dion@devops.example.com'),
(8, 'Dee Doe', 'dee@devops.example.com'),
(9, 'Emily Doe', 'emily@devops.example.com'),
(10, 'Tshering Lhamo', 'tshering@devops.example.com'),
(11, 'Frank Doe', 'frank@devops.example.com'),
(12, 'Gina Doe', 'gina@devops.example.com'),
(13, 'Hela Doe', 'hela@devops.example.com'),
(14, 'Hubert Doe', 'hubert@devops.example.com'),
(15, 'Ivy Doe', 'ivy@devops.example.com'),
(16, 'Ingrid Doe', 'ingrid@devops.example.com'),
(17, 'James Doe', 'james@devops.example.com'),
(18, 'Jace Doe', 'jace@devops.example.com'),
(19, 'Kate Doe', 'kate@devops.example.com'),
(19, 'Nidup Gyeltshen', 'nidup@devops.example.com'),
(19, 'Tshwang', 'tshewang@devops.example.com'),
(19, 'Chencho Tshering', 'chencho@devops.example.com'),
(20, 'Kapil', 'kapil@devops.example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
