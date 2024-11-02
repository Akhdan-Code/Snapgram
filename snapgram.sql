-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Nov 2024 pada 13.58
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
-- Database: `snapgram`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `albums`
--

CREATE TABLE `albums` (
  `albumID` bigint(20) UNSIGNED NOT NULL,
  `namaAlbum` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggalDibuat` date NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `albums`
--

INSERT INTO `albums` (`albumID`, `namaAlbum`, `deskripsi`, `tanggalDibuat`, `userID`, `created_at`, `updated_at`) VALUES
(1, 'Furina De Fontaine', 'Endless Solo of Solitude', '2024-10-24', 1, '2024-10-24 06:17:13', '2024-10-24 06:28:57'),
(2, 'Kamisato Ayaka', 'Frostflake Heron', '2024-10-24', 1, '2024-10-24 06:28:20', '2024-10-24 06:28:20'),
(3, 'Hu-Tao', 'Fragrance in Thaw', '2024-10-24', 1, '2024-10-24 06:29:30', '2024-10-24 06:29:30'),
(5, 'Album 1', 'Helo', '2024-10-29', 4, '2024-10-28 22:38:33', '2024-10-28 22:38:33'),
(13, 'Nahida', 'Physic of Purity', '2024-11-01', 2, '2024-10-31 18:39:47', '2024-10-31 18:39:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `komentarID` bigint(20) UNSIGNED NOT NULL,
  `isiKomentar` text NOT NULL,
  `fotoID` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`komentarID`, `isiKomentar`, `fotoID`, `userID`, `created_at`, `updated_at`) VALUES
(1, 'Istri Gueh', 1, 1, '2024-10-24 06:26:16', '2024-10-24 06:26:16'),
(2, 'Wadidaw', 1, 2, '2024-10-24 19:47:49', '2024-10-24 19:47:49'),
(3, 'Wadidaw', 1, 3, '2024-10-28 21:39:02', '2024-10-28 21:39:02'),
(4, 'UwU', 2, 4, '2024-10-28 22:37:27', '2024-10-28 22:37:27'),
(5, 'cihuyyyy', 1, 4, '2024-10-28 22:58:02', '2024-10-28 22:58:02'),
(6, 'Keren', 1, 5, '2024-10-29 00:01:27', '2024-10-29 00:01:27'),
(7, 'Mantap', 1, 7, '2024-10-29 18:22:53', '2024-10-29 18:22:53'),
(8, 'WEE', 2, 1, '2024-10-31 18:33:56', '2024-10-31 18:33:56'),
(9, 'Cantik nya', 3, 2, '2024-10-31 18:41:20', '2024-10-31 18:41:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `likeID` bigint(20) UNSIGNED NOT NULL,
  `tanggalLike` date NOT NULL,
  `fotoID` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`likeID`, `tanggalLike`, `fotoID`, `userID`, `created_at`, `updated_at`) VALUES
(1, '2024-10-24', 2, 1, '2024-10-24 06:30:17', '2024-10-24 06:30:17'),
(2, '2024-10-24', 1, 1, '2024-10-24 06:30:20', '2024-10-24 06:30:20'),
(3, '2024-10-24', 3, 1, '2024-10-24 06:31:20', '2024-10-24 06:31:20'),
(5, '2024-10-25', 2, 2, '2024-10-24 19:47:29', '2024-10-24 19:47:29'),
(6, '2024-10-25', 3, 2, '2024-10-24 19:47:32', '2024-10-24 19:47:32'),
(7, '2024-10-29', 1, 3, '2024-10-28 21:39:09', '2024-10-28 21:39:09'),
(8, '2024-10-29', 2, 3, '2024-10-28 21:39:11', '2024-10-28 21:39:11'),
(9, '2024-10-29', 3, 3, '2024-10-28 21:39:14', '2024-10-28 21:39:14'),
(10, '2024-10-29', 1, 4, '2024-10-28 22:36:54', '2024-10-28 22:36:54'),
(11, '2024-10-29', 2, 4, '2024-10-28 22:36:57', '2024-10-28 22:36:57'),
(12, '2024-10-29', 3, 4, '2024-10-28 22:37:01', '2024-10-28 22:37:01'),
(14, '2024-10-29', 1, 5, '2024-10-29 00:01:19', '2024-10-29 00:01:19'),
(15, '2024-10-29', 2, 5, '2024-10-29 00:02:42', '2024-10-29 00:02:42'),
(16, '2024-10-29', 3, 5, '2024-10-29 00:02:44', '2024-10-29 00:02:44'),
(18, '2024-10-29', 1, 2, '2024-10-29 06:08:32', '2024-10-29 06:08:32'),
(20, '2024-10-30', 1, 7, '2024-10-29 18:22:44', '2024-10-29 18:22:44'),
(21, '2024-11-01', 13, 2, '2024-10-31 18:40:52', '2024-10-31 18:40:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_23_014717_create_albums_table', 1),
(5, '2024_10_23_120823_create_photos_table', 1),
(6, '2024_10_24_041640_create_likes_table', 1),
(7, '2024_10_24_120538_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `fotoID` bigint(20) UNSIGNED NOT NULL,
  `judulFoto` varchar(255) NOT NULL,
  `deskripsiFoto` text DEFAULT NULL,
  `tanggalUnggah` date NOT NULL,
  `lokasiFile` varchar(255) NOT NULL,
  `albumID` bigint(20) UNSIGNED NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `photos`
--

INSERT INTO `photos` (`fotoID`, `judulFoto`, `deskripsiFoto`, `tanggalUnggah`, `lokasiFile`, `albumID`, `userID`, `created_at`, `updated_at`) VALUES
(1, 'Furina :3', 'Aduhai Manis nya', '2024-10-24', 'photos/hSS9SgBLqFxo68uZv6iZXiVRIR81TsPgAYxDz9K1.jpg', 1, 1, '2024-10-24 06:17:45', '2024-10-24 06:17:45'),
(2, 'Hu Tao', 'Aduhai senyumannya manis bet', '2024-10-24', 'photos/VJbvDIJKfjDgpX99tW4pFqcY7tf7M81bx83H52de.jpg', 3, 1, '2024-10-24 06:30:12', '2024-10-24 06:30:12'),
(3, 'Ayaya', 'awwwww anggun nyee', '2024-10-24', 'photos/P97IqSW03gviSYj5EWbVeciowq1sm88zLYzZeWx7.jpg', 2, 1, '2024-10-24 06:31:09', '2024-10-24 06:33:15'),
(13, 'HBD Nahida', 'Panjang umur sehat selalu', '2024-11-01', 'photos/ogQtmxunHcnjDx50WBqyPHPI3LJdgMcqE1mpiAYM.jpg', 13, 2, '2024-10-31 18:40:48', '2024-10-31 18:40:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Yqs63SnWde0G5ae4tsrrALA284YP2k3y1CDvNOFV', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiU25ZeU53ZndaQWhEYTdYb3hOOW11S3plMUN1OU5zZHpqUWhLMHdseiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvbWUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FsYnVtcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1730425323);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `userID` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `namaLengkap` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`userID`, `username`, `email`, `namaLengkap`, `password`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Akhdan', 'akhdand45@gmail.com', 'Akhdan Dana Diaksa', '$2y$12$dvfROAGcNhS2C.L6wkH4Ju6HXqybslfCdji0X5qbVXAQNWBdeSZri', NULL, '2024-10-24 06:16:39', '2024-10-29 04:19:14'),
(2, 'Aether', 'aether15@gmail.com', 'Aether Binti Paimon', '$2y$12$e2Zhmc3krnwd0esaT8qPC.IgkC7J45zZs9DRY.HMyDzLZnglMXpGO', NULL, '2024-10-24 06:21:17', '2024-10-24 19:52:33'),
(3, 'ipal', NULL, NULL, '$2y$12$Cfeu7L4JTEoH38aGyFzrx.6.51W9z8qA37qfrL.UOS5f6nTFeI6I6', NULL, '2024-10-28 21:38:17', '2024-10-28 21:38:17'),
(4, 'Julius', 'adib9067@gmail.com', 'Julius Andreas', '$2y$12$8cYN2IUiEo03Oh3NS/ZinOywHY/DLHU4jSiI.dRGyXO/6qRWkNBVa', NULL, '2024-10-28 22:35:00', '2024-10-28 22:36:21'),
(5, 'Bu Riri', NULL, NULL, '$2y$12$sp4auHiVqtnG6xu8iXgO.epz3Gk8qFaeQUh0Pkd/snveXGHQJ4OzG', NULL, '2024-10-29 00:00:57', '2024-10-29 00:00:57'),
(6, 'Lero Lero', 'heri95605@gmail.com', 'Lero Bin Lero', '$2y$12$NJlKSWmH8BI1VRBoQglvieEci5IMnV.co4T1fmX.veAkokrfTy3/u', NULL, '2024-10-29 17:48:10', '2024-10-29 17:53:05'),
(7, 'harryawandaputra', 'harry@gmail.com', 'Harry Awanda Putra', '$2y$12$WFhzKfX7NVlwWH11Cudil.pAJg7CljZtoQr3MV.1FpuocHrUXXtPi', NULL, '2024-10-29 18:20:33', '2024-10-29 18:24:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`albumID`),
  ADD KEY `albums_userid_foreign` (`userID`);

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
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`komentarID`),
  ADD KEY `comments_fotoid_foreign` (`fotoID`),
  ADD KEY `comments_userid_foreign` (`userID`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeID`),
  ADD KEY `likes_fotoid_foreign` (`fotoID`),
  ADD KEY `likes_userid_foreign` (`userID`);

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
-- Indeks untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`fotoID`),
  ADD KEY `photos_albumid_foreign` (`albumID`),
  ADD KEY `photos_userid_foreign` (`userID`);

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
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `albums`
--
ALTER TABLE `albums`
  MODIFY `albumID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `komentarID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `likeID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `fotoID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `userID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_fotoid_foreign` FOREIGN KEY (`fotoID`) REFERENCES `photos` (`fotoID`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_fotoid_foreign` FOREIGN KEY (`fotoID`) REFERENCES `photos` (`fotoID`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_albumid_foreign` FOREIGN KEY (`albumID`) REFERENCES `albums` (`albumID`) ON DELETE CASCADE,
  ADD CONSTRAINT `photos_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
