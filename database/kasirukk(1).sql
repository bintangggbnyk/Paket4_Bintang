-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Feb 2024 pada 06.02
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirukk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `Subtotal`) VALUES
(3, 1, 889, 8, '19000.00'),
(4, 2, 889, 10, '19000.00'),
(4, 3, 12, 2, '12000.00'),
(5, 4, 776, 9, '17000.00'),
(6, 5, 6543, 2, '140000.00'),
(7, 6, 1221, 3, '70000.00'),
(8, 7, 12, 9, '19000.00'),
(9, 8, 11, 9, '20000.00'),
(10, 9, 11, 10, '20000.00'),
(10, 10, 12, 10, '19000.00'),
(11, 11, 11, 10, '20000.00'),
(13, 13, 12, 5, '19000.00'),
(14, 15, 11, 4, '20000.00'),
(15, 16, 11, 6, '20000.00'),
(16, 17, 12, 1, '19000.00'),
(17, 18, 12, 9, '19000.00'),
(18, 20, 211, 4, '17000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL,
  `NoMeja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `NomorTelepon`, `NoMeja`) VALUES
(3, 'bintnang', '', 1),
(4, 'binlo', '', 3),
(5, 'ijd', '', 1),
(6, 'asdfghj', '', 2),
(7, 'uwguw', '', 3),
(8, 'woows3', '', 1),
(9, 'khgkh', '', 5),
(10, 'ggfgjf', '', 5),
(11, 'dfd', '', 2),
(12, 'sdsx', '', 1),
(13, 'tes', '', 2),
(14, 'haha', '', 12),
(15, 'dw', '', 1),
(16, 'dw', '', 1),
(17, 'bintang', '', 1),
(18, 'bintang', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`, `PelangganID`) VALUES
(1, '2024-02-27', '0.00', 0),
(2, '2024-02-27', '0.00', 0),
(3, '2024-02-27', '0.00', 0),
(4, '2024-02-27', '0.00', 0),
(5, '2024-02-27', '0.00', 0),
(6, '2024-02-27', '0.00', 0),
(7, '2024-02-27', '0.00', 0),
(8, '2024-02-28', '0.00', 0),
(9, '2024-02-28', '0.00', 0),
(10, '2024-02-28', '0.00', 0),
(11, '2024-02-28', '0.00', 0),
(12, '2024-02-28', '0.00', 0),
(13, '2024-02-28', '0.00', 0),
(14, '2024-02-28', '0.00', 0),
(15, '2024-02-28', '0.00', 0),
(16, '2024-02-28', '0.00', 0),
(17, '2024-02-28', '0.00', 0),
(18, '2024-02-28', '0.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `Terjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`, `foto`, `Terjual`) VALUES
(11, 'nasipadangrendang', '10000.00', 60, '28022024014453.jpg', 39),
(12, 'sate', '19000.00', 41, '28022024013037.jpg', 58),
(211, 'nasiremess', '17000.00', 5, '28022024040959.jpg', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `NamaUser` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Level` enum('Administrator','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`UserID`, `NamaUser`, `Password`, `Level`) VALUES
(413, 'bintang122', '202cb962ac59075b964b07152d234b70', 'Petugas'),
(423, 'petugas1', 'b53fe7751b37e40ff34d012c7774d65f', 'Petugas'),
(1013, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Administrator'),
(1222, 'bintang', '827ccb0eea8a706c4c34a16891f84e7b', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `DetailID` (`DetailID`),
  ADD KEY `ProdukID` (`ProdukID`),
  ADD KEY `PenjualanID` (`PenjualanID`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PelangganID` (`PelangganID`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `PelangganID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
