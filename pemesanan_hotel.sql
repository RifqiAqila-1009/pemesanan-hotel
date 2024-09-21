-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 10:28 AM
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
-- Database: `pemesanan_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(11) NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `nomor_identitas` varchar(16) NOT NULL,
  `tipe_kamar` varchar(20) NOT NULL,
  `tanggal_pesan` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `breakfast` varchar(20) NOT NULL,
  `total_bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `nama_pemesan`, `jenis_kelamin`, `nomor_identitas`, `tipe_kamar`, `tanggal_pesan`, `durasi`, `breakfast`, `total_bayar`) VALUES
(1, '', 'laki', '', '', '0000-00-00', 0, '0', '0.00'),
(2, '', 'laki', '', '', '0000-00-00', 0, '0', '0.00'),
(3, 'Aqila', 'perempuan', '1111222233335555', 'Standar', '2024-09-20', 3, '1', '1.58'),
(4, 'Aqila', 'perempuan', '1111222233335555', 'Standar', '2024-09-20', 3, '0', '1.58'),
(5, 'Rifqi', 'Laki-laki', '6666999944442222', 'Standar', '2024-09-20', 3, 'No', '1.50'),
(6, 'Rifqi Aqila', 'Laki-laki', '9999888844442222', 'Deluxe', '2024-09-21', 3, 'Yes', '2.330.000'),
(7, 'Rifqi', 'Laki-laki', '9999444455551111', 'Family', '2024-09-27', 3, 'Yes', '2.780.000'),
(8, 'Rifqi', 'Laki-laki', '9999444455551111', 'Family', '2024-09-27', 3, 'Yes', '2.780.000'),
(9, 'Rifqi', 'Laki-laki', '5555444422221111', 'Standar', '2024-09-21', 3, 'No', '1.500.000'),
(10, 'Rifqi', 'Laki-laki', '9999555544447777', 'Standar', '2024-09-21', 4, 'Yes', '2.120.000'),
(11, 'Rifqi', 'Laki-laki', '9999888877776666', 'Standar', '2024-09-21', 5, 'Yes', '2.650.000'),
(12, 'Wielino', 'Laki-laki', '9999777755554444', 'Standar', '2024-09-21', 4, 'Yes', '2.120.000'),
(13, 'Claire', 'perempuan', '0000111122223333', 'Deluxe', '2024-09-22', 4, 'Yes', '3.020.000'),
(14, 'Noelle', 'perempuan', '0202020202020202', 'Family', '2024-09-21', 4, 'Yes', '3.560.000'),
(15, 'rifqi desu', 'Laki-laki', '7777111122224444', 'Deluxe', '2024-10-02', 5, 'Yes', '3.775.000'),
(16, 'rifqi akira', 'Laki-laki', '1234567890123456', 'Family', '2024-09-27', 3, 'Yes', '2.940.000'),
(17, 'www', 'Laki-laki', '1234567890098765', 'Family', '2024-09-20', 5, 'Yes', '4.450.000'),
(18, '3e79', 'perempuan', '7878787878787878', 'Family', '2024-02-17', 6, 'Yes', '5.340.000'),
(19, 'Yukine', 'perempuan', '1231231231231231', 'Family', '2045-12-05', 2, 'Yes', '1.960.000'),
(20, 'Yukine', 'perempuan', '1324567891234666', 'Deluxe', '2024-09-28', 5, 'Yes', '3.775.000'),
(21, 'rifqi aqila 1', 'Laki-laki', '8888444411115555', 'Deluxe', '2024-09-21', 4, 'Yes', '3.020.000'),
(22, 'rifqi', 'Laki-laki', '1234123412341234', 'Standar', '2024-09-27', 3, 'Yes', '1.740.000'),
(23, 'rifqi', 'Laki-laki', '1234123412341234', 'Deluxe', '2024-09-21', 2, 'No', '1.500.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
