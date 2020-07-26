-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2020 at 08:23 PM
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
-- Database: `dbrestapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_token`
--

CREATE TABLE `akses_token` (
  `id_akses_token` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `access_token` text NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_token`
--

INSERT INTO `akses_token` (`id_akses_token`, `id_user`, `access_token`, `ip_address`) VALUES
(1, 6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NiwidXNlcm5hbWUiOiJqb2tvIiwiZW1haWwiOiJqb2tvQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjAtMDQtMDNUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNTg2MDE3ODg4LCJleHAiOjE1ODYwMTkzMjh9.Lg9lam07EAYeoyo_ald-urEBPnh19yjKcbtHMyeRnb4', '192.168.0.102'),
(2, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MSwidXNlcm5hbWUiOiJhbmRpa2EiLCJlbWFpbCI6ImFuZGlrYUBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIwLTA0LTAzVDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTU4NjAxODExNiwiZXhwIjoxNTg2MDE5NTU2fQ.YICCHuehYn4w2p-igZzKUsBvqn-T-bjfKzaNjGT01qk', '192.168.0.102'),
(3, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6NywidXNlcm5hbWUiOiJpcHVuZyIsImVtYWlsIjoiaXB1bmdAZ21haWwuY29tIiwicGFzc3dvcmQiOiIyMDJjYjk2MmFjNTkwNzViOTY0YjA3MTUyZDIzNGI3MCIsInJvbGUiOjIsInRhbmdnYWxfZGFmdGFyIjoiMjAyMC0wNC0wM1QxNzowMDowMC4wMDBaIn1dLCJpYXQiOjE1ODYwMTg4NzAsImV4cCI6MTU4NjAyMDMxMH0.WZGBWO4SbjeVxxqzDXg7_3Rlvih0sGkZ9HPo1qwgOA0', '192.168.0.102'),
(4, 8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6OCwidXNlcm5hbWUiOiJkYW5pIiwiZW1haWwiOiJkYW5pQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjozLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjAtMDQtMDNUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNTg2MDE4OTcxLCJleHAiOjE1ODYwMjA0MTF9.XfeSK62cmfS8GB1mQUV67q9GqF-6xA1u-4iJ-e79UAY', '192.168.0.102'),
(5, 8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6OCwidXNlcm5hbWUiOiJkYW5pIiwiZW1haWwiOiJkYW5pQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjozLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjAtMDQtMDNUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNTg2MDE5MTM2LCJleHAiOjE1ODYwMjA1NzZ9.w-LRI_BsWi8uY5lghR_P4i8TkXD4yIFFQiy20urj5Yg', '192.168.0.102'),
(6, 9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6OSwidXNlcm5hbWUiOiJqdW5hIiwiZW1haWwiOiJqdW5hQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiMjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzAiLCJyb2xlIjoyLCJ0YW5nZ2FsX2RhZnRhciI6IjIwMjAtMDQtMDRUMTc6MDA6MDAuMDAwWiJ9XSwiaWF0IjoxNTg2MDE5Njk5LCJleHAiOjE1ODYwMjExMzl9.HpxNtwAiV9ur6CXC0PYe6Sr_G1JWfwVzRBCsH109aRU', '192.168.0.102'),
(7, 10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MTAsInVzZXJuYW1lIjoiaGFkaSIsImVtYWlsIjoiaGFkaUBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjIwMmNiOTYyYWM1OTA3NWI5NjRiMDcxNTJkMjM0YjcwIiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIwLTA0LTA0VDE3OjAwOjAwLjAwMFoifV0sImlhdCI6MTU4NjAxOTk1NSwiZXhwIjoxNTg2MDIxMzk1fQ.i3wHsX9F7HNVOi0u3URxMvUJ10ZPjTV7LLfSTOwN7gY', '192.168.0.102');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `tanggal_krs` date NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `tanggal_krs`, `id_matakuliah`, `id_mahasiswa`) VALUES
(1, '2020-03-29', 1, 5),
(2, '2020-03-29', 2, 5),
(3, '2020-03-29', 3, 5),
(4, '2020-03-29', 4, 5),
(5, '2020-03-29', 3, 9),
(6, '2020-03-29', 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `jurusan`) VALUES
(3, 190704060, 'Latifah Iriyani', 'Sistem Informasi'),
(4, 190704061, 'Fia Anisa', 'Sistem Informasi'),
(5, 190704062, 'Axel Haryanto', 'Sistem Informasi'),
(6, 190704063, 'Muhammad Anandra', 'Sistem Informasi'),
(7, 190704064, 'Nicholas Saputra', 'Sistem Informasi'),
(8, 190704065, 'Angel Merici', 'Sistem Informasi'),
(9, 190704066, 'Nadia Nathania', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(11) NOT NULL,
  `matakuliah` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `matakuliah`, `sks`) VALUES
(1, 'Algoritma Dasar', 3),
(2, 'Proyek Perangkat Lunak', 3),
(3, 'Pemrograman Website', 3),
(4, 'Manajemen Proyek ', 3),
(5, 'Basis Data', 3),
(6, 'Sistem Operasi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(11) NOT NULL,
  `tanggal_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `tanggal_daftar`) VALUES
(1, 'andika', 'andika@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2020-04-04'),
(6, 'joko', 'joko@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2020-04-04'),
(7, 'ipung', 'ipung@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2020-04-04'),
(8, 'dani', 'dani@gmail.com', '202cb962ac59075b964b07152d234b70', 3, '2020-04-04'),
(9, 'juna', 'juna@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2020-04-05'),
(10, 'hadi', 'hadi@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '2020-04-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_token`
--
ALTER TABLE `akses_token`
  ADD PRIMARY KEY (`id_akses_token`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matakuliah` (`id_matakuliah`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_token`
--
ALTER TABLE `akses_token`
  MODIFY `id_akses_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akses_token`
--
ALTER TABLE `akses_token`
  ADD CONSTRAINT `akses_token_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id_matakuliah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
