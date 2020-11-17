-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2020 at 10:19 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basefortest`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `urlname` varchar(255) NOT NULL,
  `mess` text NOT NULL,
  `ip` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `dateval` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `urlname`, `mess`, `ip`, `browser`, `dateval`) VALUES
(1, 'Killy', 'treehot11@gmail.com', 'https://getbootstrap.com', 'hello', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297363),
(2, 'Killy', 'treehot11@gmail.com', 'https://getbootstrap.com', 'hello', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297363),
(3, 'Killy', 'treehot11@gmail.com', 'https://getbootstrap.com', 'hello', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297363),
(4, 'Killy', 'treehot11@gmail.com', 'https://getbootstrap.com', 'hello', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297363),
(5, 'Killy', 'treehot11@gmail.com', 'https://getbootstrap.com', 'hello', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297363),
(6, 'Killy', 'treehot11@gmail.com', 'https://getbootstrap.com', 'hello', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297363),
(7, 'Killy', 'treehot11@gmail.com', 'https://getbootstrap.com', 'hello', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297363),
(9, 'Jason', 'treehot11@gmail.com', 'https://getbootstrap.com', 'nice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297388),
(10, 'Jason', 'treehot11@gmail.com', 'https://getbootstrap.com', 'nice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297388),
(11, 'Jason', 'treehot11@gmail.com', 'https://getbootstrap.com', 'nice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297388),
(12, 'Jason', 'treehot11@gmail.com', 'https://getbootstrap.com', 'nice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297388),
(13, 'Jason', 'treehot11@gmail.com', 'https://getbootstrap.com', 'nice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297388),
(14, 'Jason', 'treehot11@gmail.com', 'https://getbootstrap.com', 'nice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297388),
(15, 'Jason', 'treehot11@gmail.com', 'https://getbootstrap.com', 'nice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605297388),
(17, 'Dima', 'treehot@mail.ru', 'https://getbootstrap.com', 'dsdas', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605299726),
(18, 'Dima', 'treehot@mail.ru', 'https://getbootstrap.com', 'dsdas', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605299726),
(19, 'Dima', 'treehot@mail.ru', 'https://getbootstrap.com', 'dsdas', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605299726),
(20, 'Dima', 'treehot@mail.ru', 'https://getbootstrap.com', 'dsdas', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605299726),
(21, 'Dima', 'treehot@mail.ru', 'https://getbootstrap.com', 'dsdas', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605299726),
(22, 'Dima', 'treehot@mail.ru', 'https://getbootstrap.com', 'dsdas', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605299726),
(23, 'Dima', 'treehot@mail.ru', 'https://getbootstrap.com', 'dsdas', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605299726),
(24, 'Dima', 'treehot@mail.ru', 'https://getbootstrap.com', 'dsdas', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605299726),
(25, 'satelite', 'deametdon@mail.ru', 'https://getbootstrap.com', 'qqqqqqqqqq', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605301327),
(26, 'satelite', 'deametdon@mail.ru', 'https://getbootstrap.com', 'qqqqqqqqqq', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605301327),
(27, 'satelite', 'deametdon@mail.ru', 'https://getbootstrap.com', 'qqqqqqqqqq', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605301327),
(28, 'satelite', 'deametdon@mail.ru', 'https://getbootstrap.com', 'qqqqqqqqqq', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605301327),
(29, 'satelite', 'deametdon@mail.ru', 'https://getbootstrap.com', 'qqqqqqqqqq', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605301327),
(30, 'satelite', 'deametdon@mail.ru', 'https://getbootstrap.com', 'qqqqqqqqqq', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605301327),
(33, 'Dima', 'treehot11@gmail.com', 'https://getbootstrap.com', 'dasdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605314623),
(34, 'Dima', 'treehot11@gmail.com', 'https://getbootstrap.com', 'dasdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605314623),
(35, 'Dima', 'treehot11@gmail.com', 'https://getbootstrap.com', 'dasdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605314623),
(36, 'Dima', 'treehot11@gmail.com', 'https://getbootstrap.com', 'dasdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605314623),
(37, 'Dima', 'treehot11@gmail.com', 'https://getbootstrap.com', 'dasdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605314623),
(38, 'Dima', 'treehot11@gmail.com', 'https://getbootstrap.com', 'dasdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605314623),
(39, 'Dima', 'treehot11@gmail.com', 'https://getbootstrap.com', 'dasdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605314623),
(40, 'Dima', 'treehot11@gmail.com', 'https://getbootstrap.com', 'dasdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605314623),
(41, 'Lastattempt', 'treehot11@gmail.com', 'https://getbootstrap.com', 'heyehehehe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605349103),
(42, 'Lastattempt', 'treehot11@gmail.com', 'https://getbootstrap.com', 'heyehehehe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605349103),
(43, 'Lastattempt', 'treehot11@gmail.com', 'https://getbootstrap.com', 'heyehehehe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605349103),
(44, 'Lastattempt', 'treehot11@gmail.com', 'https://getbootstrap.com', 'heyehehehe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605349103),
(45, 'Lastattempt', 'treehot11@gmail.com', 'https://getbootstrap.com', 'heyehehehe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605349103),
(46, 'Lastattempt', 'treehot11@gmail.com', 'https://getbootstrap.com', 'heyehehehe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605349103),
(47, 'Lastattempt', 'treehot11@gmail.com', 'https://getbootstrap.com', 'heyehehehe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605349103),
(48, 'Lastattempt', 'treehot11@gmail.com', 'https://getbootstrap.com', 'heyehehehe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 1605349103);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
