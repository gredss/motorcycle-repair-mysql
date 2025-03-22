-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 07, 2024 at 11:43 AM
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
-- Database: `aol_group12`
--

-- --------------------------------------------------------

--
-- Table structure for table `service_repair`
--

CREATE TABLE `service_repair` (
  `ID` int(11) NOT NULL,
  `Permohonan_Service_Perbaikan` varchar(255) NOT NULL,
  `S_P` char(1) NOT NULL,
  `Perkiraan_Biaya` decimal(10,2) NOT NULL,
  `Rekomendasi_Bengkel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_repair`
--

INSERT INTO `service_repair` (`ID`, `Permohonan_Service_Perbaikan`, `S_P`, `Perkiraan_Biaya`, `Rekomendasi_Bengkel`) VALUES
(2, 'Ganti oli depan', 'S', 50000.00, 'aki'),
(4, 'Ganti spakbor belakang', 'P', 120000.00, 'Bagian belakang motor perlu di servis total karena kecelakaan'),
(5, 'Ganti stop lamp', 'P', 300000.00, 'Bagian belakang motor perlu di servis total karena kecelakaan'),
(1, 'Perbaikan spion kanan', 'S', 20000.00, 'Periksa rem'),
(3, 'Service filter udara', 'S', 60000.00, 'kondisi ban');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `service_repair`
--
ALTER TABLE `service_repair`
  ADD PRIMARY KEY (`Permohonan_Service_Perbaikan`),
  ADD KEY `ID` (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `service_repair`
--
ALTER TABLE `service_repair`
  ADD CONSTRAINT `service_repair_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `vehicle_approval` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
