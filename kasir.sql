-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql200.byetcluster.com
-- Generation Time: Feb 06, 2026 at 01:21 PM
-- Server version: 11.4.9-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_38060311_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barcode` varchar(50) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `harga_beli` decimal(10,2) NOT NULL,
  `satuan_beli` varchar(100) NOT NULL,
  `harga_jual` decimal(10,2) NOT NULL,
  `satuan_jual` varchar(100) NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barcode`, `nama_barang`, `harga_beli`, `satuan_beli`, `harga_jual`, `satuan_jual`, `stok`, `kategori`, `created_at`) VALUES
(1, '01', 'kapal api', '2500.00', 'pcs', '3000.00', 'pcs', 97, 'kopi', '2025-01-21 07:06:53'),
(2, '02', 'kopi gajah', '2000.00', 'pcs', '2500.00', 'pcs', 40, 'kopi', '2025-01-21 10:33:19'),
(4, '0', 'buku', '1000.00', 'pcs', '1500.00', 'pcs', 23, 'buku', '2025-01-23 06:28:13'),
(5, '1', 'class mild RedMax', '23000.00', 'pcs', '25000.00', 'pcs', 66, 'rokok', '2025-01-23 10:43:42'),
(6, '2', 'class mild', '28000.00', 'pcs', '30000.00', 'pcs', 74, 'rokok', '2025-01-23 10:44:46'),
(7, '3', 'sampoerna mild', '29000.00', 'pcs', '31000.00', 'pcs', 70, 'rokok', '2025-01-23 10:45:32'),
(8, '4', 'surya 16', '39000.00', 'pcs', '42000.00', 'pcs', 71, 'rokok', '2025-01-23 10:46:00'),
(9, '5', 'Sedap Soto', '2000.00', 'pcs', '3000.00', '0', 94, 'mie', '2025-01-28 13:25:36'),
(10, '6', 'sarimi', '1200.00', 'pcs', '2000.00', '0', 160, 'mie', '2025-02-01 04:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `kode_barcode` varchar(50) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_transaksi`, `kode_barcode`, `nama_barang`, `jumlah`, `total_harga`, `tanggal`) VALUES
(126, 'TRX6794f824d3b1e', '01', 'kapal api', 1, '3000.00', '2025-01-25 14:41:40'),
(127, 'TRX6794f824d3b1e', '02', 'kopi gajah', 1, '2500.00', '2025-01-25 14:41:40'),
(128, 'TRX6794f84242a19', '0', 'buku', 1, '1500.00', '2025-01-25 14:42:10'),
(129, 'TRX6794f84242a19', '1', 'class mild RedMax', 1, '25000.00', '2025-01-25 14:42:10'),
(130, 'TRX6794f84242a19', '2', 'class mild', 1, '30000.00', '2025-01-25 14:42:10'),
(131, 'TRX6794f91e1db09', '02', 'kopi gajah', 1, '2500.00', '2025-01-25 14:45:50'),
(132, 'TRX6794f91e1db09', '01', 'kapal api', 1, '3000.00', '2025-01-25 14:45:50'),
(133, 'TRX6794f91e1db09', '0', 'buku', 1, '1500.00', '2025-01-25 14:45:50'),
(134, 'TRX6794f91e1db09', '1', 'class mild RedMax', 1, '25000.00', '2025-01-25 14:45:50'),
(135, 'TRX6794f91e1db09', '2', 'class mild', 1, '30000.00', '2025-01-25 14:45:50'),
(136, 'TRX6794f91e1db09', '3', 'sampoerna mild', 1, '31000.00', '2025-01-25 14:45:50'),
(137, 'TRX6794f91e1db09', '4', 'surya 16', 1, '42000.00', '2025-01-25 14:45:50'),
(138, 'TRX67963e0436142', '0', 'buku', 1, '1500.00', '2025-01-26 13:52:04'),
(139, 'TRX67963e0436142', '1', 'class mild RedMax', 1, '25000.00', '2025-01-26 13:52:04'),
(140, 'TRX67964958ad252', '4', 'surya 16', 1, '42000.00', '2025-01-26 14:40:24'),
(141, 'TRX6796600818754', '0', 'buku', 4, '6000.00', '2025-01-26 16:17:12'),
(142, 'TRX679666abb2450', '01', 'kapal api', 100, '300000.00', '2025-01-26 16:45:31'),
(143, 'TRX679666abb2450', '0', 'buku', 3, '4500.00', '2025-01-26 16:45:31'),
(144, 'TRX679667d22fc0d', '01', 'kapal api', 100, '300000.00', '2025-01-26 16:50:26'),
(145, 'TRX67978eb216492', '01', 'kapal api', 1, '3000.00', '2025-01-27 13:48:34'),
(146, 'TRX67978eb216492', '02', 'kopi gajah', 1, '2500.00', '2025-01-27 13:48:34'),
(147, 'TRX67978eee1a5ab', '01', 'kapal api', 1, '3000.00', '2025-01-27 13:49:34'),
(148, 'TRX67978eee1a5ab', '02', 'kopi gajah', 1, '2500.00', '2025-01-27 13:49:34'),
(149, 'TRX6797916df3283', '0', 'buku', 1, '1500.00', '2025-01-27 14:00:13'),
(150, 'TRX6797916df3283', '4', 'surya 16', 1, '42000.00', '2025-01-27 14:00:14'),
(151, 'TRX67979191beaf9', '1', 'class mild RedMax', 1, '25000.00', '2025-01-27 14:00:49'),
(152, 'TRX679791c96c2b0', '01', 'kapal api', 1, '3000.00', '2025-01-27 14:01:45'),
(153, 'TRX6797c52b0cf02', '4', 'surya 16', 4, '168000.00', '2025-01-27 17:40:59'),
(154, 'TRX6797c52b0cf02', '3', 'sampoerna mild', 10, '310000.00', '2025-01-27 17:40:59'),
(155, 'TRX6797c59c584ce', '1', 'class mild RedMax', 5, '125000.00', '2025-01-27 17:42:52'),
(156, 'TRX6797c59c584ce', '2', 'class mild', 5, '150000.00', '2025-01-27 17:42:52'),
(157, 'TRX6797c59c584ce', '3', 'sampoerna mild', 5, '155000.00', '2025-01-27 17:42:52'),
(158, 'TRX6797c59c584ce', '4', 'surya 16', 5, '210000.00', '2025-01-27 17:42:52'),
(159, 'TRX67989b8397f23', '1', 'class mild RedMax', 1, '25000.00', '2025-01-28 08:55:31'),
(160, 'TRX6798d59887e9d', '0', 'buku', 1, '1500.00', '2025-01-28 13:03:20'),
(161, 'TRX6798d59887e9d', '4', 'surya 16', 1, '42000.00', '2025-01-28 13:03:20'),
(162, 'TRX679ab3b3dfff0', '4', 'surya 16', 1, '42000.00', '2025-01-29 23:03:16'),
(163, 'TRX679aceb21d80f', '4', 'surya 16', 1, '42000.00', '2025-01-30 00:58:26'),
(164, 'TRX679c37f4c7a8d', '0', 'buku', 1, '1500.00', '2025-01-31 02:39:48'),
(165, 'TRX679c37f4c7a8d', '4', 'surya 16', 1, '42000.00', '2025-01-31 02:39:48'),
(166, 'TRX679c37f4c7a8d', '5', 'Sedap Soto', 4, '12000.00', '2025-01-31 02:39:48'),
(167, 'TRX679c37f4c7a8d', '3', 'sampoerna mild', 1, '31000.00', '2025-01-31 02:39:48'),
(168, 'TRX679c387ed70be', '1', 'class mild RedMax', 1, '25000.00', '2025-01-31 02:42:06'),
(169, 'TRX679c387ed70be', '2', 'class mild', 1, '30000.00', '2025-01-31 02:42:06'),
(170, 'TRX679c387ed70be', '5', 'Sedap Soto', 1, '3000.00', '2025-01-31 02:42:06'),
(171, 'TRX679da70f393c7', '0', 'buku', 1, '1500.00', '2025-02-01 04:46:07'),
(172, 'TRX679da70f393c7', '5', 'Sedap Soto', 1, '3000.00', '2025-02-01 04:46:07'),
(173, 'TRX679da70f393c7', '2', 'class mild', 1, '30000.00', '2025-02-01 04:46:07'),
(174, 'TRX679da70f393c7', '4', 'surya 16', 1, '42000.00', '2025-02-01 04:46:07'),
(175, 'TRX67b5c01014f91', '1', 'class mild RedMax', 1, '25000.00', '2025-02-19 11:27:12'),
(176, 'TRX67b5c02ab51c6', '2', 'class mild', 1, '30000.00', '2025-02-19 11:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` enum('admin','kasir','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$B4mvhp2GCmZnOk.4XokmEe/wePLr3MIlIsuolKMpt8YdtLsDY1Nty', 'admin'),
(2, 'mega', '$2y$10$B4mvhp2GCmZnOk.4XokmEe/wePLr3MIlIsuolKMpt8YdtLsDY1Nty', 'admin'),
(3, 'coba', '$2y$10$B4mvhp2GCmZnOk.4XokmEe/wePLr3MIlIsuolKMpt8YdtLsDY1Nty', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `idx_kode_barcode_barang` (`kode_barcode`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kode_barcode_transaksi` (`kode_barcode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
