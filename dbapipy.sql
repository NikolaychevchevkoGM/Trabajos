-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 02:21 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apipy`
--

-- --------------------------------------------------------

--
-- Table structure for table `personas`
--

CREATE TABLE `personas` (
  `id_P` int(11) NOT NULL,
  `tip_doc` varchar(80) NOT NULL,
  `numD` varchar(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `lastN` varchar(100) NOT NULL,
  `tel` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personas`
--

INSERT INTO `personas` (`id_P`, `tip_doc`, `numD`, `nombre`, `lastN`, `tel`) VALUES
(1, 'Cedula', '1111111111', 'Nicolay', 'Guapacha Martinez', '3158832083'),
(3, 'Cedula', '23332233311', 'Josecito', 'Lupes', '245 3453121'),
(6, 'Cedula', '11111133333', 'Nicol', 'Rmairez Velez', '222 222 222'),
(11, 'Tarjeta de identidad', '88888888888', 'Messi', 'Gomelo', '22023411'),
(12, 'c.c.', '6545362', 'johany', 'palomino', '300xxxx'),
(13, 'cedula', '55555555555', 'Dimaria', 'Angel ', '22314153233'),
(14, 'Visa Estudiantil', '1324465781', 'Kevin', 'Dugman barney', '222 222 242');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_P`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personas`
--
ALTER TABLE `personas`
  MODIFY `id_P` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
