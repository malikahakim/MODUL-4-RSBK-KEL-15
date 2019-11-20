-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2019 at 04:53 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kel15`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` bigint(15) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `id_penjurusan` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `id_penjurusan`) VALUES
(21120116120001, 'Kinemon', 4),
(21120116120002, 'Rioo', 4),
(21120116120003, 'Kiri', 2),
(21120116120005, 'asdd', 2),
(21120116120015, 'Favo Perdana HS', 1),
(21120116120017, 'Septi Nurna Alfiani', 3),
(21120116120020, 'Usman Ralih M', 3),
(21120116120022, 'Irnawaty I', 4),
(21120116120024, 'Demara Ramadhani', 2),
(21120116120027, 'Martin Johan gans', 4),
(21120116120077, 'Kelompok 77', 4),
(21120116130044, 'Veronika P', 4),
(21120116130046, 'Nadia F', 1),
(21120116130065, 'Adam Maulidani', 1),
(21120116140068, 'Fanny Hasbi', 1),
(21120116140069, 'Rio Lutfi A', 4),
(21120116140072, 'Dimas Luhur', 1),
(21120116140078, 'Jeremy Karisma', 1),
(21120116140087, 'M. Taqiyuddin', 3),
(21120116140088, 'Atha Dwira P', 4);

-- --------------------------------------------------------

--
-- Table structure for table `penjurusan`
--

CREATE TABLE `penjurusan` (
  `id` int(50) NOT NULL,
  `nama_penjurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjurusan`
--

INSERT INTO `penjurusan` (`id`, `nama_penjurusan`) VALUES
(1, 'Software'),
(2, 'Jaringan'),
(3, 'Embedded System'),
(4, 'Multimedia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `id_penjurusan` (`id_penjurusan`);

--
-- Indexes for table `penjurusan`
--
ALTER TABLE `penjurusan`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_penjurusan`) REFERENCES `penjurusan` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
