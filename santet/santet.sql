-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 06:27 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `santet`
--

-- --------------------------------------------------------

--
-- Table structure for table `santet`
--

CREATE TABLE `santet` (
  `id` int(11) NOT NULL,
  `nama_korban` varchar(255) NOT NULL,
  `tanggal_lahir_korban` date NOT NULL,
  `muatan_santet` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `santet`
--

INSERT INTO `santet` (`id`, `nama_korban`, `tanggal_lahir_korban`, `muatan_santet`) VALUES
(1, 'fitri yuliana ika ', '2024-07-10', 'piring'),
(2, 'zahra', '2024-07-25', 'keris'),
(3, 'zahra', '2024-07-17', 'api'),
(4, 'fitri yuliana ika ', '2002-06-11', 'api');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `santet`
--
ALTER TABLE `santet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `santet`
--
ALTER TABLE `santet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
