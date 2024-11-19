-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 10:51 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawansi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id` int(11) NOT NULL,
  `NIP` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_absen`
--

INSERT INTO `tb_absen` (`id`, `NIP`, `nama`, `waktu`) VALUES
(3, '197238412', 'Abdul Muhlisin Sudirman', 'Friday, 12-05-2023 02:31:05 pm'),
(4, '19845678', 'Sarah Mutia', 'Thursday, 18-05-2023 07:54:45 am'),
(8, '1920392912', 'Budi Sanjaya', 'Thursday, 18-05-2023 07:52:25 am'),
(9, '19872345', 'Bagas Adi Pratama', 'Monday, 12-06-2023 12:58:40 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftar`
--

CREATE TABLE `tb_daftar` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_daftar`
--

INSERT INTO `tb_daftar` (`id`, `username`, `password`) VALUES
(2, 'admin', 'admin'),
(5, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id`, `jabatan`) VALUES
(3, 'KEPALA DINAS'),
(4, 'SEKRETARIAT'),
(5, 'BPKP'),
(6, 'BSPBE'),
(7, 'BPISKP'),
(8, 'BPI'),
(9, 'BSta');

-- --------------------------------------------------------

--
-- Table structure for table `tb_keterangan`
--

CREATE TABLE `tb_keterangan` (
  `id` int(11) NOT NULL,
  `NIP` varchar(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `alasan` text NOT NULL,
  `waktu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_keterangan`
--

INSERT INTO `tb_keterangan` (`id`, `NIP`, `nama`, `keterangan`, `alasan`, `waktu`) VALUES
(3, '197238412', 'Abdul Muhlisin Sudirman', 'Sakit', 'Saya Sakit Pak', 'Thursday, 18-05-2023 07:53:23 am'),
(8, '19872345', 'Bagas Adi Pratama', 'Izin', 'Mohon maaf bapak / ibu, untuk hari ini saya tidak bisa hadir, dikarenakan saya izin.', 'Thursday, 18-05-2023 07:55:20 am');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `NIP` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tmp_tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_tel` varchar(18) NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`NIP`, `username`, `password`, `nama`, `tmp_tgl_lahir`, `jenkel`, `agama`, `alamat`, `no_tel`, `jabatan`) VALUES
(19845678, 'sarah', '9e9d7a08e048e9d604b79460b54969c3', 'Sarah Mutia', 'Cianjur / 10-12-1992', 'Perempuan', 'Islam', 'Semarang', '08128384848', 'SEKRETARIAT'),
(19872345, 'bagas', 'ee776a18253721efe8a62e4abd29dc47', 'Bagas Adi Pratama', 'Jakarta / 10-01-1990', 'Laki-laki', 'Islam', 'Semarang', '0895628383333', 'BPI'),
(197238412, 'Abdul', 'd41d8cd98f00b204e9800998ecf8427e', 'Abdul Muhlisin Sudirman', 'Klaten / 19-09-1994', 'Laki-laki', 'Islam', 'Semarang', '0895635721923', 'KEPALA DINAS'),
(1920392912, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Budi Sanjaya', 'Bekasi / 10-12-1980', 'Laki-laki', 'Kristen', 'Semarang', '0895254859994', 'BSta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_daftar`
--
ALTER TABLE `tb_daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_keterangan`
--
ALTER TABLE `tb_keterangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`NIP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_absen`
--
ALTER TABLE `tb_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_daftar`
--
ALTER TABLE `tb_daftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_keterangan`
--
ALTER TABLE `tb_keterangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
