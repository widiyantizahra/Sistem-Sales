-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 24 Des 2024 pada 15.54
-- Versi server: 8.0.30
-- Versi PHP: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pkl_w`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobcard`
--

CREATE TABLE `jobcard` (
  `id` bigint UNSIGNED NOT NULL,
  `no_jobcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `kurs` int NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_po` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_date` date NOT NULL,
  `po_received` date NOT NULL,
  `totalbop` int NOT NULL,
  `totalsp` int NOT NULL,
  `totalbp` int NOT NULL,
  `no_form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `effective_date` date NOT NULL,
  `no_revisi` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jobcard`
--

INSERT INTO `jobcard` (`id`, `no_jobcard`, `date`, `kurs`, `customer_name`, `no_po`, `po_date`, `po_received`, `totalbop`, `totalsp`, `totalbp`, `no_form`, `effective_date`, `no_revisi`, `created_at`, `updated_at`) VALUES
(1, '12', '2024-10-23', 2324, 'fdsfsd', 'fsdfsd', '2024-10-23', '2024-10-23', 6436535, 35435, 453453435, 'hrgjyrh', '2024-10-23', 1, '2024-10-23 09:34:03', '2024-10-23 09:34:03'),
(2, 'polsub1234rr', '2024-10-23', 2324, 'fdsfsd', 'woilah', '2024-10-23', '2024-10-23', 6436535, 35435, 453453435, 'hrgjyrh', '2024-10-23', 1, '2024-10-23 02:34:03', '2024-10-23 02:34:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobcard_detail`
--

CREATE TABLE `jobcard_detail` (
  `id` bigint UNSIGNED NOT NULL,
  `jobcard_id` int NOT NULL,
  `qty` int NOT NULL,
  `unit_bop` int NOT NULL,
  `total_bop` int NOT NULL,
  `unit_sp` int NOT NULL,
  `total_sp` int NOT NULL,
  `unit_bp` int NOT NULL,
  `total_bp` int NOT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komisi`
--

CREATE TABLE `komisi` (
  `id` bigint UNSIGNED NOT NULL,
  `no_jobcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `no_po` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurs` decimal(20,2) NOT NULL,
  `totalbop` decimal(20,2) NOT NULL,
  `totalsp` decimal(20,2) NOT NULL,
  `totalbp` decimal(20,2) NOT NULL,
  `po_date` date NOT NULL,
  `po_received` date NOT NULL,
  `no_form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `effective_date` date NOT NULL,
  `no_revisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `komisi`
--

INSERT INTO `komisi` (`id`, `no_jobcard`, `customer_name`, `date`, `no_po`, `kurs`, `totalbop`, `totalsp`, `totalbp`, `po_date`, `po_received`, `no_form`, `effective_date`, `no_revisi`, `created_at`, `updated_at`) VALUES
(3, 'polsub1234rr', 'fdsfsd', '2024-10-23', 'woilah', 2324.00, 6436535.00, 35435.00, 453453435.00, '2024-10-23', '2024-10-23', 'hrgjyrh', '2024-10-23', '1', '2024-10-28 07:41:41', '2024-10-28 07:41:41'),
(4, '12', 'fdsfsd', '2024-10-23', 'fsdfsd', 2324.00, 6436535.00, 35435.00, 453453435.00, '2024-10-23', '2024-10-23', 'hrgjyrh', '2024-10-23', '1', '2024-10-28 08:05:07', '2024-10-28 08:05:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komisi_costumer`
--

CREATE TABLE `komisi_costumer` (
  `id` bigint UNSIGNED NOT NULL,
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_jobcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `no_po` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kurs` decimal(10,2) DEFAULT NULL,
  `gp` decimal(15,2) DEFAULT NULL,
  `it` decimal(15,2) DEFAULT NULL,
  `se` decimal(15,2) DEFAULT NULL,
  `as` decimal(15,2) DEFAULT NULL,
  `adm` decimal(15,2) DEFAULT NULL,
  `mng` decimal(15,2) DEFAULT NULL,
  `no_jo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bop` decimal(15,2) NOT NULL,
  `jo_date` date DEFAULT NULL,
  `sales_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_sp` decimal(15,2) DEFAULT NULL,
  `no_it` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `komisi_costumer`
--

INSERT INTO `komisi_costumer` (`id`, `no`, `no_jobcard`, `customer_name`, `date`, `no_po`, `kurs`, `gp`, `it`, `se`, `as`, `adm`, `mng`, `no_jo`, `bop`, `jo_date`, `sales_name`, `total_sp`, `no_it`, `created_at`, `updated_at`) VALUES
(13, 'IS.231224-001', 'JC.16112024-001', 'PT.PJB UBJOB REMBANG', '2024-11-16', '0049006162', 15000.00, 34200000.00, 10260000.00, 7182000.00, 1026000.00, 1026000.00, 1026000.00, '001JO-231224', 27000000.00, '2024-12-23', 'PJB', 61200000.00, 'IT-1223-001', '2024-12-23 06:28:31', '2024-12-23 06:28:31'),
(14, 'IS.231224-001', 'JC.19112024-002', 'PT.TAEKWANG INDONESIA', '2024-11-19', '1234567', 15000.00, 1000000.00, 300000.00, 210000.00, 30000.00, 30000.00, 30000.00, '002JO-231224', 1000000.00, '2024-12-23', 'TKW1', 2000000.00, 'IT-1223-0021', '2024-12-23 07:22:42', '2024-12-23 08:26:12'),
(15, 'IS.231224-001', 'JC.23122024-003', 'PT.ONDASHI', '2024-12-23', '3224', 23.00, 7000000.00, 2100000.00, 1470000.00, 210000.00, 210000.00, 210000.00, '003JO-231224', 7000000.00, '2024-12-23', 'yjfyf', 14000000.00, 'hfjf', '2024-12-23 08:49:24', '2024-12-23 08:49:24'),
(16, 'IS.241224-001', 'JC.16112024-001', 'PT.PJB UBJOB REMBANG', '2024-11-16', '0049006162', 15000.00, 34200000.00, 10260000.00, 7182000.00, 1026000.00, 1026000.00, 1026000.00, '001JO-241224', 27000000.00, '2024-12-24', 'PJB', 61200000.00, 'IT-1116-001', '2024-12-23 20:20:47', '2024-12-23 20:20:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komisi_m`
--

CREATE TABLE `komisi_m` (
  `id` bigint UNSIGNED NOT NULL,
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_jobcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `no_po` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kurs` decimal(10,2) DEFAULT NULL,
  `bop` decimal(20,2) NOT NULL,
  `gp` decimal(15,2) DEFAULT NULL,
  `it` decimal(15,2) DEFAULT NULL,
  `se` decimal(15,2) DEFAULT NULL,
  `as` decimal(15,2) DEFAULT NULL,
  `adm` decimal(15,2) DEFAULT NULL,
  `mng` decimal(15,2) DEFAULT NULL,
  `no_jo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jo_date` date DEFAULT NULL,
  `sales_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_sp` decimal(15,2) DEFAULT NULL,
  `no_it` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `komisi_m`
--

INSERT INTO `komisi_m` (`id`, `no`, `no_jobcard`, `customer_name`, `date`, `no_po`, `kurs`, `bop`, `gp`, `it`, `se`, `as`, `adm`, `mng`, `no_jo`, `jo_date`, `sales_name`, `total_sp`, `no_it`, `created_at`, `updated_at`) VALUES
(13, 'IS.231224-001', 'JC.16112024-001', 'PT.PJB UBJOB REMBANG', '2024-11-16', '0049006162', 15000.00, 27000000.00, 34200000.00, 6840000.00, 4788000.00, 684000.00, 684000.00, 684000.00, '001JO-231224', '2024-12-23', 'PJB', 61200000.00, 'IT-1223-001', '2024-12-23 06:28:31', '2024-12-23 06:28:31'),
(14, 'IS.231224-001', 'JC.19112024-002', 'PT.TAEKWANG INDONESIA', '2024-11-19', '1234567', 15000.00, 1000000.00, 1000000.00, 200000.00, 140000.00, 20000.00, 20000.00, 20000.00, '002JO-231224', '2024-12-23', 'TKW1', 2000000.00, 'IT-1223-0021', '2024-12-23 07:22:42', '2024-12-23 08:26:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_05_160412_add_profile_to_users_table', 2),
(5, '2024_10_28_142925_create_komisi_table', 3),
(6, '2024_10_29_134727_create_komisi_m_table', 4),
(7, '2024_11_20_125722_create_komisi_costumer_m_s_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3vVksWE05S7zIMkCpT0i2cDcDL1gnO1uP9jrZweR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV0g1RmdrZmxqcjNIbjVTWGk3a1hmQnVVYVBRbFpRMzFxVDE0YWR1ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZWdhd2FpL2tvbWlzaS9qb2JjYXJkcy9kZXRhaWxzP25vX2pvYmNhcmQ9SkMuMTkxMTIwMjQtMDAyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE2OiJsYXN0QWN0aXZpdHlUaW1lIjtPOjI1OiJJbGx1bWluYXRlXFN1cHBvcnRcQ2FyYm9uIjozOntzOjQ6ImRhdGUiO3M6MjY6IjIwMjQtMTItMjQgMDM6NDc6MzQuMTg4MTYzIjtzOjEzOiJ0aW1lem9uZV90eXBlIjtpOjM7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO319', 1735012054),
('vsZDRCoNVu3BHaz6nrwRTdmQhUEBTocvzNK1niBV', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiejU2Q3NsaWhKZEZqYW9Jb0VuSGlmNGQyV0dYU0QyV2w3T1VzSG9rZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kaXJla3R1ci9rLXVzZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTY6Imxhc3RBY3Rpdml0eVRpbWUiO086MjU6IklsbHVtaW5hdGVcU3VwcG9ydFxDYXJib24iOjM6e3M6NDoiZGF0ZSI7czoyNjoiMjAyNC0xMi0yNCAwMzoyODoyMi40ODk4MjEiO3M6MTM6InRpbWV6b25lX3R5cGUiO2k6MztzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7fX0=', 1735010902);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `role`, `active`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `profile`) VALUES
(1, 'pegawai', 'pegawai', '1', '1', 'pegawai@example.com', '2024-09-13 02:36:05', '$2y$12$j3HsJBJI5TjAbz/2HIeFpuj7ylyIDMnJGx3LQLHnKIiHnfzFfYI/m', 'NecL8XbioI4NJSif355vUmbThOfPQ1u9P8yotjaeOptw8M21kq2QJbPjdohy', '2024-09-13 02:36:05', '2024-12-23 08:40:08', 'avatars/mM3DJ4wwHlvKzy7yk9w9p9vjELso2EeyMQBm551F.jpg'),
(2, 'admin', 'admin', '0', '1', 'admin@cc.cc', '2024-09-13 02:36:06', '$2y$12$wC7yp09NNZmydLVzUYMum.RGKXVJ3fapmiB.A5SI/NrH24CivlmGu', '2FPKnqbXE5rKtCL0boszip0Cej0RQnpJ7zPaNSMiWGfUdZq419V5fLQk4ynG', '2024-09-13 02:36:06', '2024-10-28 07:15:51', 'avatars/LfowTaFZcT59M78AJon2SQId2dUZAIbXC1f34QZg.png'),
(9, '00001', 'cc0001', '0', '0', 'rtjajang@gmail.cim', NULL, '$2y$12$j8K6gGlDc9o7O9XQqMsKm.IEd7.7izBCv6h8PZmfVgJi/CVLdA.wG', NULL, '2024-10-29 08:17:52', '2024-10-29 08:22:05', 'avatars/1730215072_image-removebg-preview (5).png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobcard`
--
ALTER TABLE `jobcard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jobcard_no_jobcard_unique` (`no_jobcard`),
  ADD UNIQUE KEY `jobcard_no_po_unique` (`no_po`);

--
-- Indeks untuk tabel `jobcard_detail`
--
ALTER TABLE `jobcard_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komisi`
--
ALTER TABLE `komisi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `komisi_no_jobcard_unique` (`no_jobcard`);

--
-- Indeks untuk tabel `komisi_costumer`
--
ALTER TABLE `komisi_costumer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komisi_m`
--
ALTER TABLE `komisi_m`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobcard`
--
ALTER TABLE `jobcard`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jobcard_detail`
--
ALTER TABLE `jobcard_detail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komisi`
--
ALTER TABLE `komisi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `komisi_costumer`
--
ALTER TABLE `komisi_costumer`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `komisi_m`
--
ALTER TABLE `komisi_m`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
