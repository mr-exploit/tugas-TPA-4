-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 04:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_retail`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(5, 'celana'),
(10, 'sepatu'),
(12, 'pakaian'),
(15, 'barang antik'),
(17, 'pakaian'),
(20, 'barang antik'),
(22, 'elektronik'),
(25, 'barang umum'),
(27, 'barang umum'),
(30, 'barang umum');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL DEFAULT '',
  `alamat` varchar(100) NOT NULL DEFAULT '',
  `nohp` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `nohp`) VALUES
(1, 'muhamad raffi', 'bumi sarana indah', '087888556235'),
(2, 'abie akbar', 'bumi sarana indah', '0874562184'),
(3, 'muhamad huesin abdul azis', 'citra pendawa asri blok g2, no5', '089621658854'),
(4, 'bella denisa', 'perumahan galaxy T3 no.5', '08234568456'),
(5, 'achamadianur kharisma putra', 'maetri indah blok 51 no.6', '08789521654'),
(6, 'rizky pratama kelana', 'maitri indah blok A no.6', '08765132188'),
(7, 'Sarah wijaya S', 'jalan baloi no.3', '0871235484'),
(8, 'Fauzan ananda rizky', 'jalan datok sri 5', '08745878792'),
(9, 'Alvino Hasan', 'Taman Lestari blok D4 no.6', '087561654984'),
(10, 'Yose Hendra Naibaho', 'legenda malaka blok A2 no.3 . batam center, kota batam', '087122365489'),
(11, 'Andre Maulana', 'Rosdale blok AA no.5', '08745165189'),
(12, 'Ruffian Azhari', 'perumahan cipta no.2 . Tanjung Pinang', '0871565489');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL DEFAULT '',
  `harga` int(11) NOT NULL,
  `stok_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok_produk`, `id_kategori`) VALUES
(1, 'uang kertas 100 lama', 50000, 10, 15),
(2, 'emas 1gr', 850000, 50, 25),
(3, 'vaseline 100gr', 50000, 100, 25),
(4, 'sepatu jordan size 42', 1500000, 15, 10),
(5, 'baju koko', 250000, 100, 12),
(6, 'teko kuno', 2500000, 2, 20),
(7, 'celana chino', 75000, 50, 5),
(8, 'baju batik', 150000, 200, 17),
(9, 'keyboard warna-warni', 150000, 40, 27),
(10, 'laptop thinkpad l440', 3500000, 30, 22),
(11, 'laptop macbook m1', 15000000, 10, 22),
(12, 'makanan kucing 100gr', 25000, 80, 27),
(13, 'karpet unyu-unyu', 150000, 30, 30),
(14, 'charge vivan 20w', 50000, 30, 22),
(15, 'monitor acher 22inchi', 1500000, 10, 22),
(16, 'tas sekolah kece badai', 150000, 40, 27),
(17, 'tas selempang', 50000, 100, 30),
(18, 'setrika', 225000, 15, 22);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_produk`, `jumlah_produk`, `tanggal_transaksi`) VALUES
(3, 1, 1, 3, '2023-05-25'),
(5, 1, 2, 2, '2023-05-25'),
(8, 1, 3, 30, '2023-05-25'),
(10, 1, 15, 1, '2023-05-25'),
(12, 4, 6, 1, '2023-05-25'),
(15, 3, 5, 15, '2023-05-25'),
(17, 5, 3, 20, '2023-05-25'),
(19, 6, 15, 1, '2023-05-25'),
(20, 7, 4, 1, '2023-05-25'),
(23, 8, 17, 15, '2023-05-25'),
(25, 9, 10, 10, '2023-05-25'),
(28, 10, 17, 50, '2023-05-25'),
(30, 6, 18, 3, '2023-05-25'),
(33, 6, 10, 5, '2023-05-25'),
(34, 2, 7, 15, '2023-05-25'),
(36, 11, 9, 12, '2023-05-25'),
(38, 1, 8, 100, '2023-05-25'),
(40, 12, 14, 14, '2023-05-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `kategori` (`id_kategori`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `pelanggan` (`id_pelanggan`),
  ADD KEY `produk` (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
