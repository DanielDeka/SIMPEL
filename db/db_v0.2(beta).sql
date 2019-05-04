-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2019 at 04:28 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensis`
--

CREATE TABLE `absensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` bigint(20) UNSIGNED DEFAULT NULL,
  `kehadiran` int(11) NOT NULL,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensis`
--

INSERT INTO `absensis` (`id`, `id_siswa`, `kehadiran`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 21, 1, NULL, '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(2, 22, 2, 'DBD', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(3, 23, 3, 'Lomba', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(4, 24, 1, NULL, '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(5, 25, 2, 'DBD', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(6, 26, 3, 'Lomba', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(7, 27, 1, NULL, '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(8, 28, 2, 'DBD', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(9, 29, 3, 'Lomba', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(10, 30, 1, NULL, '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(11, 31, 2, 'DBD', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(12, 32, 3, 'Lomba', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(13, 33, 1, NULL, '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(14, 34, 2, 'DBD', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(15, 35, 3, 'Lomba', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(16, 36, 1, NULL, '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(17, 37, 2, 'DBD', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(18, 38, 3, 'Lomba', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(19, 39, 1, NULL, '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(20, 40, 2, 'DBD', '2019-05-04 06:45:19', '2019-05-04 06:45:19'),
(21, 41, 3, 'Lomba', '2019-05-04 06:45:19', '2019-05-04 06:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nama`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin0', 'admin0@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46'),
(2, 'admin1', 'admin1@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46'),
(3, 'admin2', 'admin2@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46'),
(4, 'admin3', 'admin3@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46'),
(5, 'admin4', 'admin4@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46'),
(6, 'admin5', 'admin5@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46'),
(7, 'admin6', 'admin6@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46'),
(8, 'admin7', 'admin7@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46'),
(9, 'admin8', 'admin8@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46'),
(10, 'admin9', 'admin9@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46'),
(11, 'admin10', 'admin10@gmail.com', '12345678', '2019-05-04 06:23:46', '2019-05-04 06:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `gurus`
--

CREATE TABLE `gurus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gurus`
--

INSERT INTO `gurus` (`id`, `nama`, `email`, `password`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'guru 0', 'guru0@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54'),
(2, 'guru 1', 'guru1@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54'),
(3, 'guru 2', 'guru2@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54'),
(4, 'guru 3', 'guru3@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54'),
(5, 'guru 4', 'guru4@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54'),
(6, 'guru 5', 'guru5@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54'),
(7, 'guru 6', 'guru6@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54'),
(8, 'guru 7', 'guru7@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54'),
(9, 'guru 8', 'guru8@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54'),
(10, 'guru 9', 'guru9@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54'),
(11, 'guru 10', 'guru10@gmail.com', '12345678', '+6281234568975', '2019-05-04 06:23:54', '2019-05-04 06:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `komentars`
--

CREATE TABLE `komentars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_laporan` bigint(20) UNSIGNED DEFAULT NULL,
  `tipe` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentars`
--

INSERT INTO `komentars` (`id`, `isi`, `id_laporan`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 'terima kasih atas laporannya', 1, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(2, 'saya mau protes', 2, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(3, 'terima kasih atas laporannya', 3, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(4, 'saya mau protes', 4, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(5, 'terima kasih atas laporannya', 5, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(6, 'saya mau protes', 6, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(7, 'terima kasih atas laporannya', 7, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(8, 'saya mau protes', 8, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(9, 'terima kasih atas laporannya', 9, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(10, 'saya mau protes', 10, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(11, 'terima kasih atas laporannya', 11, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44'),
(12, 'saya mau protes', 12, 2, '2019-05-04 07:17:44', '2019-05-04 07:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `laporans`
--

CREATE TABLE `laporans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` bigint(20) UNSIGNED DEFAULT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporans`
--

INSERT INTO `laporans` (`id`, `id_siswa`, `judul`, `detail`, `waktu`, `created_at`, `updated_at`) VALUES
(1, 21, 'anak anda berkelahi', 'berkelahi dengan temannya', '2019-04-05 08:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(2, 22, 'anak anda suka menabung', 'suka sedekah', '2019-05-05 08:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(3, 23, 'anak anda nilainya bagus', 'nilainya lebih dari 90', '2019-05-05 09:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(4, 24, 'anak anda berkelahi', 'berkelahi dengan temannya', '2019-04-05 08:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(5, 25, 'anak anda suka menabung', 'suka sedekah', '2019-05-05 08:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(6, 26, 'anak anda nilainya bagus', 'nilainya lebih dari 90', '2019-05-05 09:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(7, 27, 'anak anda berkelahi', 'berkelahi dengan temannya', '2019-04-05 08:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(8, 28, 'anak anda suka menabung', 'suka sedekah', '2019-05-05 08:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(9, 29, 'anak anda nilainya bagus', 'nilainya lebih dari 90', '2019-05-05 09:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(10, 30, 'anak anda berkelahi', 'berkelahi dengan temannya', '2019-04-05 08:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(11, 31, 'anak anda suka menabung', 'suka sedekah', '2019-05-05 08:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44'),
(12, 32, 'anak anda nilainya bagus', 'nilainya lebih dari 90', '2019-05-05 09:00:00', '2019-05-04 07:11:44', '2019-05-04 07:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_04_063916_create_admins_table', 1),
(4, '2019_05_04_063944_create_gurus_table', 1),
(5, '2019_05_04_063954_create_ortus_table', 1),
(6, '2019_05_04_064003_create_pelajarans_table', 1),
(7, '2019_05_04_064231_create_siswas_table', 1),
(8, '2019_05_04_064232_create_rapors_table', 1),
(9, '2019_05_04_064233_create_absensis_table', 1),
(10, '2019_05_04_064235_create_nilais_table', 1),
(11, '2019_05_04_064241_create_laporans_table', 1),
(12, '2019_05_04_065040_create_komentars_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilais`
--

CREATE TABLE `nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` int(11) NOT NULL,
  `tipe` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pelajaran` bigint(20) UNSIGNED DEFAULT NULL,
  `id_rapor` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilais`
--

INSERT INTO `nilais` (`id`, `nama`, `nilai`, `tipe`, `id_pelajaran`, `id_rapor`, `created_at`, `updated_at`) VALUES
(1, 'Tugas Menggambar 1', 50, '1', 1, 1, '2019-05-04 06:40:08', '2019-05-04 06:40:08'),
(2, 'Tugas Menggambar 2', 50, '1', 2, 2, '2019-05-04 06:40:08', '2019-05-04 06:40:08'),
(3, 'Tugas Menggambar 3', 50, '1', 3, 3, '2019-05-04 06:40:08', '2019-05-04 06:40:08'),
(4, 'Tugas Menggambar 4', 50, '1', 4, 4, '2019-05-04 06:40:08', '2019-05-04 06:40:08'),
(5, 'Tugas Menggambar 5', 50, '1', 5, 5, '2019-05-04 06:40:08', '2019-05-04 06:40:08'),
(6, 'Tugas Menggambar 6', 50, '1', 6, 6, '2019-05-04 06:40:08', '2019-05-04 06:40:08'),
(7, 'Tugas Menggambar 7', 50, '1', 7, 7, '2019-05-04 06:40:08', '2019-05-04 06:40:08'),
(8, 'Tugas Menggambar 8', 50, '1', 8, 8, '2019-05-04 06:40:08', '2019-05-04 06:40:08'),
(9, 'Tugas Menggambar 9', 50, '1', 9, 9, '2019-05-04 06:40:08', '2019-05-04 06:40:08'),
(10, 'Tugas Menggambar 10', 50, '1', 10, 10, '2019-05-04 06:40:08', '2019-05-04 06:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `ortus`
--

CREATE TABLE `ortus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ortus`
--

INSERT INTO `ortus` (`id`, `nama`, `email`, `password`, `contact`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'ortu 0', 'ortu0@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(2, 'ortu 1', 'ortu1@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(3, 'ortu 2', 'ortu2@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(4, 'ortu 3', 'ortu3@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(5, 'ortu 4', 'ortu4@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(6, 'ortu 5', 'ortu5@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(7, 'ortu 6', 'ortu6@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(8, 'ortu 7', 'ortu7@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(9, 'ortu 8', 'ortu8@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(10, 'ortu 9', 'ortu9@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(11, 'ortu 10', 'ortu10@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:24:04', '2019-05-04 06:24:04'),
(12, 'ortu 11', 'ortu11@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(13, 'ortu 12', 'ortu12@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(14, 'ortu 13', 'ortu13@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(15, 'ortu 14', 'ortu14@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(16, 'ortu 15', 'ortu15@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(17, 'ortu 16', 'ortu16@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(18, 'ortu 17', 'ortu17@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(19, 'ortu 18', 'ortu18@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(20, 'ortu 19', 'ortu19@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(21, 'ortu 20', 'ortu20@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(22, 'ortu 21', 'ortu21@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(23, 'ortu 22', 'ortu22@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(24, 'ortu 23', 'ortu23@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(25, 'ortu 24', 'ortu24@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(26, 'ortu 25', 'ortu25@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(27, 'ortu 26', 'ortu26@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(28, 'ortu 27', 'ortu27@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(29, 'ortu 28', 'ortu28@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(30, 'ortu 29', 'ortu29@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(31, 'ortu 30', 'ortu30@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(32, 'ortu 31', 'ortu31@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(33, 'ortu 32', 'ortu32@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(34, 'ortu 33', 'ortu33@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(35, 'ortu 34', 'ortu34@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(36, 'ortu 35', 'ortu35@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(37, 'ortu 36', 'ortu36@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(38, 'ortu 37', 'ortu37@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(39, 'ortu 38', 'ortu38@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(40, 'ortu 39', 'ortu39@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(41, 'ortu 40', 'ortu40@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(42, 'ortu 41', 'ortu41@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(43, 'ortu 42', 'ortu42@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(44, 'ortu 43', 'ortu43@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(45, 'ortu 44', 'ortu44@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(46, 'ortu 45', 'ortu45@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(47, 'ortu 46', 'ortu46@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(48, 'ortu 47', 'ortu47@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(49, 'ortu 48', 'ortu48@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(50, 'ortu 49', 'ortu49@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(51, 'ortu 50', 'ortu50@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:27:48', '2019-05-04 06:27:48'),
(52, 'ortu 51', 'ortu51@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(53, 'ortu 52', 'ortu52@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(54, 'ortu 53', 'ortu53@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(55, 'ortu 54', 'ortu54@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(56, 'ortu 55', 'ortu55@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(57, 'ortu 56', 'ortu56@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(58, 'ortu 57', 'ortu57@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(59, 'ortu 58', 'ortu58@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(60, 'ortu 59', 'ortu59@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(61, 'ortu 60', 'ortu60@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(62, 'ortu 61', 'ortu61@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(63, 'ortu 62', 'ortu62@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(64, 'ortu 63', 'ortu63@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(65, 'ortu 64', 'ortu64@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(66, 'ortu 65', 'ortu65@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(67, 'ortu 66', 'ortu66@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(68, 'ortu 67', 'ortu67@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(69, 'ortu 68', 'ortu68@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(70, 'ortu 69', 'ortu69@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(71, 'ortu 70', 'ortu70@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(72, 'ortu 71', 'ortu71@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(73, 'ortu 72', 'ortu72@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(74, 'ortu 73', 'ortu73@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(75, 'ortu 74', 'ortu74@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(76, 'ortu 75', 'ortu75@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(77, 'ortu 76', 'ortu76@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(78, 'ortu 77', 'ortu77@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(79, 'ortu 78', 'ortu78@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(80, 'ortu 79', 'ortu79@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(81, 'ortu 80', 'ortu80@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(82, 'ortu 81', 'ortu81@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(83, 'ortu 82', 'ortu82@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(84, 'ortu 83', 'ortu83@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(85, 'ortu 84', 'ortu84@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(86, 'ortu 85', 'ortu85@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(87, 'ortu 86', 'ortu86@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(88, 'ortu 87', 'ortu87@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(89, 'ortu 88', 'ortu88@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(90, 'ortu 89', 'ortu89@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(91, 'ortu 90', 'ortu90@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(92, 'ortu 91', 'ortu91@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(93, 'ortu 92', 'ortu92@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(94, 'ortu 93', 'ortu93@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(95, 'ortu 94', 'ortu94@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(96, 'ortu 95', 'ortu95@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(97, 'ortu 96', 'ortu96@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(98, 'ortu 97', 'ortu97@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(99, 'ortu 98', 'ortu98@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(100, 'ortu 99', 'ortu99@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(101, 'ortu 100', 'ortu100@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(102, 'ortu 101', 'ortu101@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(103, 'ortu 102', 'ortu102@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(104, 'ortu 103', 'ortu103@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(105, 'ortu 104', 'ortu104@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(106, 'ortu 105', 'ortu105@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(107, 'ortu 106', 'ortu106@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(108, 'ortu 107', 'ortu107@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(109, 'ortu 108', 'ortu108@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(110, 'ortu 109', 'ortu109@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(111, 'ortu 110', 'ortu110@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(112, 'ortu 111', 'ortu111@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(113, 'ortu 112', 'ortu112@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(114, 'ortu 113', 'ortu113@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(115, 'ortu 114', 'ortu114@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(116, 'ortu 115', 'ortu115@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(117, 'ortu 116', 'ortu116@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(118, 'ortu 117', 'ortu117@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(119, 'ortu 118', 'ortu118@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(120, 'ortu 119', 'ortu119@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(121, 'ortu 120', 'ortu120@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(122, 'ortu 121', 'ortu121@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(123, 'ortu 122', 'ortu122@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(124, 'ortu 123', 'ortu123@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(125, 'ortu 124', 'ortu124@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(126, 'ortu 125', 'ortu125@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(127, 'ortu 126', 'ortu126@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(128, 'ortu 127', 'ortu127@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(129, 'ortu 128', 'ortu128@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(130, 'ortu 129', 'ortu129@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(131, 'ortu 130', 'ortu130@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(132, 'ortu 131', 'ortu131@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(133, 'ortu 132', 'ortu132@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(134, 'ortu 133', 'ortu133@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(135, 'ortu 134', 'ortu134@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(136, 'ortu 135', 'ortu135@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(137, 'ortu 136', 'ortu136@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(138, 'ortu 137', 'ortu137@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(139, 'ortu 138', 'ortu138@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(140, 'ortu 139', 'ortu139@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(141, 'ortu 140', 'ortu140@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(142, 'ortu 141', 'ortu141@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(143, 'ortu 142', 'ortu142@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(144, 'ortu 143', 'ortu143@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(145, 'ortu 144', 'ortu144@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(146, 'ortu 145', 'ortu145@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(147, 'ortu 146', 'ortu146@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(148, 'ortu 147', 'ortu147@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(149, 'ortu 148', 'ortu148@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(150, 'ortu 149', 'ortu149@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34'),
(151, 'ortu 150', 'ortu150@gmail.com', '12345678', '+6281234568975', 'Jalan Teknik Kimia', '2019-05-04 06:28:34', '2019-05-04 06:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelajarans`
--

CREATE TABLE `pelajarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelajarans`
--

INSERT INTO `pelajarans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Pelajaran 0', '2019-05-04 06:24:13', '2019-05-04 06:24:13'),
(2, 'Pelajaran 1', '2019-05-04 06:24:13', '2019-05-04 06:24:13'),
(3, 'Pelajaran 2', '2019-05-04 06:24:13', '2019-05-04 06:24:13'),
(4, 'Pelajaran 3', '2019-05-04 06:24:13', '2019-05-04 06:24:13'),
(5, 'Pelajaran 4', '2019-05-04 06:24:13', '2019-05-04 06:24:13'),
(6, 'Pelajaran 5', '2019-05-04 06:24:13', '2019-05-04 06:24:13'),
(7, 'Pelajaran 6', '2019-05-04 06:24:13', '2019-05-04 06:24:13'),
(8, 'Pelajaran 7', '2019-05-04 06:24:13', '2019-05-04 06:24:13'),
(9, 'Pelajaran 8', '2019-05-04 06:24:13', '2019-05-04 06:24:13'),
(10, 'Pelajaran 9', '2019-05-04 06:24:13', '2019-05-04 06:24:13'),
(11, 'Pelajaran 10', '2019-05-04 06:24:13', '2019-05-04 06:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `rapors`
--

CREATE TABLE `rapors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` bigint(20) UNSIGNED DEFAULT NULL,
  `semester` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rapors`
--

INSERT INTO `rapors` (`id`, `id_siswa`, `semester`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(2, 2, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(3, 3, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(4, 4, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(5, 5, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(6, 6, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(7, 7, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(8, 8, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(9, 9, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(10, 10, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(11, 11, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(12, 12, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(13, 13, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(14, 14, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(15, 15, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(16, 16, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(17, 17, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(18, 18, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(19, 19, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(20, 20, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(21, 21, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(22, 22, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(23, 23, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(24, 24, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(25, 25, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(26, 26, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(27, 27, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(28, 28, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(29, 29, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(30, 30, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(31, 31, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(32, 32, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(33, 33, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(34, 34, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(35, 35, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(36, 36, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(37, 37, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(38, 38, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(39, 39, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(40, 40, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(41, 41, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(42, 42, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(43, 43, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(44, 44, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(45, 45, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(46, 46, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(47, 47, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(48, 48, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(49, 49, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(50, 50, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(51, 51, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(52, 52, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(53, 53, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(54, 54, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(55, 55, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(56, 56, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(57, 57, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(58, 58, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(59, 59, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(60, 60, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(61, 61, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(62, 62, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(63, 63, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(64, 64, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(65, 65, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(66, 66, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(67, 67, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(68, 68, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(69, 69, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(70, 70, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(71, 71, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(72, 72, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(73, 73, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(74, 74, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(75, 75, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(76, 76, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(77, 77, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(78, 78, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(79, 79, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(80, 80, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(81, 81, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(82, 82, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(83, 83, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(84, 84, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(85, 85, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(86, 86, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(87, 87, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(88, 88, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(89, 89, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(90, 90, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(91, 91, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(92, 92, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(93, 93, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(94, 94, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(95, 95, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(96, 96, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(97, 97, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(98, 98, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(99, 99, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(100, 100, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(101, 101, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(102, 102, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(103, 103, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(104, 104, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(105, 105, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(106, 106, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(107, 107, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(108, 108, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(109, 109, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(110, 110, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(111, 111, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(112, 112, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(113, 113, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(114, 114, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(115, 115, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(116, 116, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(117, 117, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(118, 118, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(119, 119, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(120, 120, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(121, 121, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(122, 122, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(123, 123, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(124, 124, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(125, 125, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(126, 126, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(127, 127, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(128, 128, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(129, 129, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(130, 130, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(131, 131, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(132, 132, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(133, 133, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(134, 134, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(135, 135, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(136, 136, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(137, 137, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(138, 138, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(139, 139, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(140, 140, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(141, 141, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(142, 142, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(143, 143, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(144, 144, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(145, 145, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(146, 146, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(147, 147, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(148, 148, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(149, 149, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(150, 150, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59'),
(151, 151, 1, '2019-05-04 06:36:59', '2019-05-04 06:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ortu` bigint(20) UNSIGNED DEFAULT NULL,
  `id_guru` bigint(20) UNSIGNED DEFAULT NULL,
  `kelas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `nama`, `id_ortu`, `id_guru`, `kelas`, `created_at`, `updated_at`) VALUES
(1, 'Siswa 1', 1, 1, '1.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(2, 'Siswa 2', 2, 2, '1.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(3, 'Siswa 3', 3, 3, '1.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(4, 'Siswa 4', 4, 4, '2.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(5, 'Siswa 5', 5, 5, '2.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(6, 'Siswa 6', 6, 6, '2.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(7, 'Siswa 7', 7, 7, '3.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(8, 'Siswa 8', 8, 8, '3.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(9, 'Siswa 9', 9, 9, '3.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(10, 'Siswa 10', 10, 1, '1.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(11, 'Siswa 11', 11, 2, '1.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(12, 'Siswa 12', 12, 3, '1.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(13, 'Siswa 13', 13, 4, '2.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(14, 'Siswa 14', 14, 5, '2.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(15, 'Siswa 15', 15, 6, '2.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(16, 'Siswa 16', 16, 7, '3.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(17, 'Siswa 17', 17, 8, '3.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(18, 'Siswa 18', 18, 9, '3.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(19, 'Siswa 19', 19, 1, '1.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(20, 'Siswa 20', 20, 2, '1.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(21, 'Siswa 21', 21, 3, '1.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(22, 'Siswa 22', 22, 4, '2.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(23, 'Siswa 23', 23, 5, '2.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(24, 'Siswa 24', 24, 6, '2.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(25, 'Siswa 25', 25, 7, '3.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(26, 'Siswa 26', 26, 8, '3.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(27, 'Siswa 27', 27, 9, '3.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(28, 'Siswa 28', 28, 1, '1.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(29, 'Siswa 29', 29, 2, '1.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(30, 'Siswa 30', 30, 3, '1.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(31, 'Siswa 31', 31, 4, '2.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(32, 'Siswa 32', 32, 5, '2.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(33, 'Siswa 33', 33, 6, '2.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(34, 'Siswa 34', 34, 7, '3.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(35, 'Siswa 35', 35, 8, '3.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(36, 'Siswa 36', 36, 9, '3.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(37, 'Siswa 37', 37, 1, '1.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(38, 'Siswa 38', 38, 2, '1.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(39, 'Siswa 39', 39, 3, '1.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(40, 'Siswa 40', 40, 4, '2.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(41, 'Siswa 41', 41, 5, '2.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(42, 'Siswa 42', 42, 6, '2.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(43, 'Siswa 43', 43, 7, '3.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(44, 'Siswa 44', 44, 8, '3.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(45, 'Siswa 45', 45, 9, '3.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(46, 'Siswa 46', 46, 1, '1.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(47, 'Siswa 47', 47, 2, '1.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(48, 'Siswa 48', 48, 3, '1.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(49, 'Siswa 49', 49, 4, '2.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(50, 'Siswa 50', 50, 5, '2.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(51, 'Siswa 51', 51, 6, '2.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(52, 'Siswa 52', 52, 7, '3.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(53, 'Siswa 53', 53, 8, '3.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(54, 'Siswa 54', 54, 9, '3.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(55, 'Siswa 55', 55, 1, '1.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(56, 'Siswa 56', 56, 2, '1.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(57, 'Siswa 57', 57, 3, '1.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(58, 'Siswa 58', 58, 4, '2.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(59, 'Siswa 59', 59, 5, '2.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(60, 'Siswa 60', 60, 6, '2.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(61, 'Siswa 61', 61, 7, '3.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(62, 'Siswa 62', 62, 8, '3.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(63, 'Siswa 63', 63, 9, '3.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(64, 'Siswa 64', 64, 1, '1.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(65, 'Siswa 65', 65, 2, '1.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(66, 'Siswa 66', 66, 3, '1.C', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(67, 'Siswa 67', 67, 4, '2.A', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(68, 'Siswa 68', 68, 5, '2.B', '2019-05-04 06:33:46', '2019-05-04 06:33:46'),
(69, 'Siswa 69', 69, 6, '2.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(70, 'Siswa 70', 70, 7, '3.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(71, 'Siswa 71', 71, 8, '3.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(72, 'Siswa 72', 72, 9, '3.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(73, 'Siswa 73', 73, 1, '1.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(74, 'Siswa 74', 74, 2, '1.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(75, 'Siswa 75', 75, 3, '1.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(76, 'Siswa 76', 76, 4, '2.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(77, 'Siswa 77', 77, 5, '2.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(78, 'Siswa 78', 78, 6, '2.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(79, 'Siswa 79', 79, 7, '3.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(80, 'Siswa 80', 80, 8, '3.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(81, 'Siswa 81', 81, 9, '3.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(82, 'Siswa 82', 82, 1, '1.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(83, 'Siswa 83', 83, 2, '1.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(84, 'Siswa 84', 84, 3, '1.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(85, 'Siswa 85', 85, 4, '2.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(86, 'Siswa 86', 86, 5, '2.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(87, 'Siswa 87', 87, 6, '2.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(88, 'Siswa 88', 88, 7, '3.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(89, 'Siswa 89', 89, 8, '3.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(90, 'Siswa 90', 90, 9, '3.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(91, 'Siswa 91', 91, 1, '1.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(92, 'Siswa 92', 92, 2, '1.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(93, 'Siswa 93', 93, 3, '1.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(94, 'Siswa 94', 94, 4, '2.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(95, 'Siswa 95', 95, 5, '2.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(96, 'Siswa 96', 96, 6, '2.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(97, 'Siswa 97', 97, 7, '3.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(98, 'Siswa 98', 98, 8, '3.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(99, 'Siswa 99', 99, 9, '3.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(100, 'Siswa 100', 100, 1, '1.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(101, 'Siswa 101', 101, 2, '1.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(102, 'Siswa 102', 102, 3, '1.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(103, 'Siswa 103', 103, 4, '2.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(104, 'Siswa 104', 104, 5, '2.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(105, 'Siswa 105', 105, 6, '2.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(106, 'Siswa 106', 106, 7, '3.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(107, 'Siswa 107', 107, 8, '3.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(108, 'Siswa 108', 108, 9, '3.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(109, 'Siswa 109', 109, 1, '1.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(110, 'Siswa 110', 110, 2, '1.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(111, 'Siswa 111', 111, 3, '1.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(112, 'Siswa 112', 112, 4, '2.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(113, 'Siswa 113', 113, 5, '2.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(114, 'Siswa 114', 114, 6, '2.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(115, 'Siswa 115', 115, 7, '3.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(116, 'Siswa 116', 116, 8, '3.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(117, 'Siswa 117', 117, 9, '3.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(118, 'Siswa 118', 118, 1, '1.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(119, 'Siswa 119', 119, 2, '1.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(120, 'Siswa 120', 120, 3, '1.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(121, 'Siswa 121', 121, 4, '2.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(122, 'Siswa 122', 122, 5, '2.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(123, 'Siswa 123', 123, 6, '2.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(124, 'Siswa 124', 124, 7, '3.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(125, 'Siswa 125', 125, 8, '3.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(126, 'Siswa 126', 126, 9, '3.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(127, 'Siswa 127', 127, 1, '1.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(128, 'Siswa 128', 128, 2, '1.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(129, 'Siswa 129', 129, 3, '1.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(130, 'Siswa 130', 130, 4, '2.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(131, 'Siswa 131', 131, 5, '2.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(132, 'Siswa 132', 132, 6, '2.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(133, 'Siswa 133', 133, 7, '3.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(134, 'Siswa 134', 134, 8, '3.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(135, 'Siswa 135', 135, 9, '3.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(136, 'Siswa 136', 136, 1, '1.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(137, 'Siswa 137', 137, 2, '1.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(138, 'Siswa 138', 138, 3, '1.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(139, 'Siswa 139', 139, 4, '2.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(140, 'Siswa 140', 140, 5, '2.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(141, 'Siswa 141', 141, 6, '2.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(142, 'Siswa 142', 142, 7, '3.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(143, 'Siswa 143', 143, 8, '3.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(144, 'Siswa 144', 144, 9, '3.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(145, 'Siswa 145', 145, 1, '1.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(146, 'Siswa 146', 146, 2, '1.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(147, 'Siswa 147', 147, 3, '1.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(148, 'Siswa 148', 148, 4, '2.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(149, 'Siswa 149', 149, 5, '2.B', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(150, 'Siswa 150', 150, 6, '2.C', '2019-05-04 06:33:47', '2019-05-04 06:33:47'),
(151, 'Siswa 151', 151, 7, '3.A', '2019-05-04 06:33:47', '2019-05-04 06:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absensis_id_siswa_foreign` (`id_siswa`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gurus`
--
ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentars`
--
ALTER TABLE `komentars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komentars_id_laporan_foreign` (`id_laporan`);

--
-- Indexes for table `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporans_id_siswa_foreign` (`id_siswa`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilais`
--
ALTER TABLE `nilais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilais_id_pelajaran_foreign` (`id_pelajaran`),
  ADD KEY `nilais_id_rapor_foreign` (`id_rapor`);

--
-- Indexes for table `ortus`
--
ALTER TABLE `ortus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelajarans`
--
ALTER TABLE `pelajarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rapors`
--
ALTER TABLE `rapors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rapors_id_siswa_foreign` (`id_siswa`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswas_id_ortu_foreign` (`id_ortu`),
  ADD KEY `siswas_id_guru_foreign` (`id_guru`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gurus`
--
ALTER TABLE `gurus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `komentars`
--
ALTER TABLE `komentars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nilais`
--
ALTER TABLE `nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ortus`
--
ALTER TABLE `ortus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `pelajarans`
--
ALTER TABLE `pelajarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rapors`
--
ALTER TABLE `rapors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensis`
--
ALTER TABLE `absensis`
  ADD CONSTRAINT `absensis_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentars`
--
ALTER TABLE `komentars`
  ADD CONSTRAINT `komentars_id_laporan_foreign` FOREIGN KEY (`id_laporan`) REFERENCES `laporans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laporans`
--
ALTER TABLE `laporans`
  ADD CONSTRAINT `laporans_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilais`
--
ALTER TABLE `nilais`
  ADD CONSTRAINT `nilais_id_pelajaran_foreign` FOREIGN KEY (`id_pelajaran`) REFERENCES `pelajarans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilais_id_rapor_foreign` FOREIGN KEY (`id_rapor`) REFERENCES `rapors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rapors`
--
ALTER TABLE `rapors`
  ADD CONSTRAINT `rapors_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `siswas_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswas_id_ortu_foreign` FOREIGN KEY (`id_ortu`) REFERENCES `ortus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
