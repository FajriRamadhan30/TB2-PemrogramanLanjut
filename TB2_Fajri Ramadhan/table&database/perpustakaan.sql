-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jul 2024 pada 16.13
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `konten` text DEFAULT NULL,
  `iktisar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `konten`, `iktisar`) VALUES
(1, 'Machine Learning Yearning', 'Andrew Ng', 'deeplearning.ai', 2019, 'Bab 1: Introduction\nBab 2: Setup\nBab 3: Error Analysis', 'Buku ini memberikan panduan praktis untuk membangun sistem pembelajaran mesin.'),
(6, 'Laravel for Developer', 'Jason Statham', 'laravel.com', 2022, 'Bab 1: Introduction\nBab 2: Setup\nBab 3: Error Analysis', 'Pembelajaran framework laravel bagi pemula'),
(7, 'Black Box AI for Coding', 'K. Mbappe', 'blackbox.com', 2023, 'Bab 1: Introduction\nBab 2: Setup\nBab 3: Error Analysis', 'Black box tutorial for programmer'),
(21, 'React JS for Front-End Engineer', 'Valentino Rossi', 'mercubuana.ac.id', 2021, 'Bab 1: Introduction\nBab 2: Setup\nBab 3: Error Analysis', 'React JS is Easy to learn'),
(22, 'Belajar FastAPI', 'Mr Tukul', 'tukuljalanjalan.id', 2021, 'Bab 1: Pendahuluan\nBab 2: Instalasi\nBab 3: Penggunaan Dasar', 'Buku ini membahas dasar-dasar penggunaan FastAPI.'),
(23, 'Cek Khodam Untuk Pemula', 'Limbad', 'cek_khodam.com', 2030, 'Bab 1: Pendahuluan\nBab 2: Instalasi\nBab 3: Penggunaan Dasar', 'Tuliskan nama anda, kami akan mengecek khodam pendamping anda');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
