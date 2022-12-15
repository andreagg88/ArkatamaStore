-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2022 pada 20.54
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_arkatama`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(120) NOT NULL,
  `keterangan_barang` varchar(225) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `stok_barang` int(6) NOT NULL,
  `kondisi_barang` varchar(35) NOT NULL,
  `gambar_barang` varchar(500) NOT NULL,
  `status_produk` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`id_barang`, `nama_barang`, `keterangan_barang`, `id_kategori`, `harga_barang`, `stok_barang`, `kondisi_barang`, `gambar_barang`, `status_produk`) VALUES
(1, 'Sepatu', 'Sepatu All Star', 1, 3000000, 12, 'Baru', 'sepatu.jpg', 'disetujui'),
(2, 'Sepatu Converse', 'Sepatu Converse Baru 2022', 1, 710000, 0, '', 'sepatu2.jpg', 'disetujui'),
(3, 'Sepatu Vans', 'Sepatu Vans Ori 100% 2022', 1, 1000000, 0, '', 'sepatu3.jpg', 'disetujui'),
(4, 'Sepatu Patrobas', 'Sepatu Patrobas Ori 2019', 1, 1300000, 0, '', 'sepatu4.jpg', 'disetujui'),
(5, 'Sepatu Sneakers', 'Sepatu New Sneakers Ori 2021', 1, 1700000, 0, '', 'sepatu5.jpg', 'disetujui'),
(15, 'Asus VivoBook 14 A413', 'New tahun 2022', 10, 13499000, 0, '', 'laptop1.jpg', 'disetujui'),
(16, 'Tester add', 'New tahun 2022', 11, 13499000, 0, '', '5585332.jpg', 'disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hero`
--

CREATE TABLE `tabel_hero` (
  `id_hero` int(11) NOT NULL,
  `gambar_hero` varchar(125) NOT NULL,
  `judul_hero` varchar(35) NOT NULL,
  `teks_hero` varchar(255) NOT NULL,
  `status_hero` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_hero`
--

INSERT INTO `tabel_hero` (`id_hero`, `gambar_hero`, `judul_hero`, `teks_hero`, `status_hero`) VALUES
(2, 'hero1.jpg', 'Selamat Datang di Arkatama Store', 'Digitalisasi Bisnis Anda bersama Arkatama, Perusahaan Konsultan IT dan Software House', 'disetujui'),
(3, 'hero2.png', 'Team Profesional Dibidangnya', 'Pengembangan Aplikasi dan Software Custom Sesuai Kebutuhan Pengguna', 'disetujui'),
(4, 'hero3.png', 'Raih Kemudahan Bisnis Anda', 'AMD Academy Merupakan Produk Layanan Arkatama Kepada Para Mitra Dalam Bidang Digital Marketing dan IT Training Center', 'disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kategori`
--

CREATE TABLE `tabel_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_kategori`
--

INSERT INTO `tabel_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Pakaian'),
(6, 'Jasa Software'),
(10, 'Handphone '),
(11, 'Jasa Web');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `foto_user` varchar(128) NOT NULL,
  `role_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `nama`, `email`, `password`, `foto_user`, `role_id`) VALUES
(1, 'Andre Agung', 'andre@gmail.com', '$2y$10$NTy8jMHNeotJWBdPl/z85uKtYUppjML5QEkAUhBTot7VQsgNR23VW', 'default.jpg', 1),
(2, 'Budi', 'budi@gmail.com', '$2y$10$NTy8jMHNeotJWBdPl/z85uKtYUppjML5QEkAUhBTot7VQsgNR23VW', 'default.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tabel_hero`
--
ALTER TABLE `tabel_hero`
  ADD PRIMARY KEY (`id_hero`);

--
-- Indeks untuk tabel `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tabel_hero`
--
ALTER TABLE `tabel_hero`
  MODIFY `id_hero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
