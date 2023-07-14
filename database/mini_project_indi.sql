-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2023 pada 05.32
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini_project_indi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `KODE` varchar(255) NOT NULL,
  `NAMA` varchar(255) NOT NULL,
  `KATEGORI` varchar(255) NOT NULL,
  `HARGA` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`KODE`, `NAMA`, `KATEGORI`, `HARGA`, `created_at`, `updated_at`) VALUES
('BRG_1', 'PEN', 'ATK', '15000', '2023-07-13 20:13:12', '2023-07-13 20:13:12'),
('BRG_10', 'PIRING', 'RT', '35000', '2023-07-13 20:15:11', '2023-07-13 20:15:11'),
('BRG_2', 'PENSIL', 'ATK', '10000', '2023-07-13 20:13:29', '2023-07-13 20:13:29'),
('BRG_3', 'PAYUNG', 'RT', '70000', '2023-07-13 20:13:40', '2023-07-13 20:13:40'),
('BRG_4', 'PANCI', 'MASAK', '110000', '2023-07-13 20:13:52', '2023-07-13 20:13:52'),
('BRG_5', 'SAPU', 'RT', '40000', '2023-07-13 20:14:05', '2023-07-13 20:14:05'),
('BRG_6', 'KIPAS', 'ELEKTRONIK', '200000', '2023-07-13 20:14:22', '2023-07-13 20:14:22'),
('BRG_7', 'KUALI', 'MASAK', '120000', '2023-07-13 20:14:33', '2023-07-13 20:14:33'),
('BRG_8', 'SIKAT', 'RT', '30000', '2023-07-13 20:14:44', '2023-07-13 20:14:44'),
('BRG_9', 'GELAS', 'RT', '25000', '2023-07-13 20:14:57', '2023-07-13 20:14:57');

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
-- Struktur dari tabel `item_penjualan`
--

CREATE TABLE `item_penjualan` (
  `NOTA` varchar(255) NOT NULL,
  `KODE_BARANG` varchar(255) NOT NULL,
  `QTY` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `item_penjualan`
--

INSERT INTO `item_penjualan` (`NOTA`, `KODE_BARANG`, `QTY`, `created_at`, `updated_at`) VALUES
('NOTA_1', 'BRG_1', 2, '2023-07-13 20:16:06', '2023-07-13 20:16:06'),
('NOTA_1', 'BRG_2', 2, '2023-07-13 20:16:06', '2023-07-13 20:16:06'),
('NOTA_2', 'BRG_6', 1, '2023-07-13 20:26:02', '2023-07-13 20:26:02'),
('NOTA_3', 'BRG_4', 1, '2023-07-13 20:27:42', '2023-07-13 20:27:42'),
('NOTA_3', 'BRG_7', 1, '2023-07-13 20:27:42', '2023-07-13 20:27:42'),
('NOTA_3', 'BRG_6', 1, '2023-07-13 20:27:42', '2023-07-13 20:27:42'),
('NOTA_4', 'BRG_9', 2, '2023-07-13 20:28:29', '2023-07-13 20:28:29'),
('NOTA_4', 'BRG_10', 2, '2023-07-13 20:28:29', '2023-07-13 20:28:29'),
('NOTA_5', 'BRG_3', 1, '2023-07-13 20:28:57', '2023-07-13 20:28:57'),
('NOTA_6', 'BRG_7', 1, '2023-07-13 20:29:57', '2023-07-13 20:29:57'),
('NOTA_6', 'BRG_5', 1, '2023-07-13 20:29:57', '2023-07-13 20:29:57'),
('NOTA_6', 'BRG_3', 1, '2023-07-13 20:29:57', '2023-07-13 20:29:57'),
('NOTA_7', 'BRG_5', 1, '2023-07-13 20:30:53', '2023-07-13 20:30:53'),
('NOTA_7', 'BRG_6', 1, '2023-07-13 20:30:53', '2023-07-13 20:30:53'),
('NOTA_7', 'BRG_7', 1, '2023-07-13 20:30:53', '2023-07-13 20:30:53'),
('NOTA_7', 'BRG_8', 1, '2023-07-13 20:30:53', '2023-07-13 20:30:53'),
('NOTA_8', 'BRG_5', 1, '2023-07-13 20:31:32', '2023-07-13 20:31:32'),
('NOTA_8', 'BRG_9', 1, '2023-07-13 20:31:32', '2023-07-13 20:31:32'),
('NOTA_9', 'BRG_5', 1, '2023-07-13 20:32:08', '2023-07-13 20:32:08');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_10_093431_create_pelanggans_table', 1),
(6, '2023_07_10_094049_create_barangs_table', 1),
(7, '2023_07_10_094330_create_penjualans_table', 1),
(8, '2023_07_10_094338_create_item_penjualans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_PELANGGAN` varchar(255) NOT NULL,
  `NAMA` varchar(255) NOT NULL,
  `DOMISILI` varchar(255) NOT NULL,
  `JENIS_KELAMIN` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`ID_PELANGGAN`, `NAMA`, `DOMISILI`, `JENIS_KELAMIN`, `created_at`, `updated_at`) VALUES
('PELANGGAN_1', 'ANDI', 'JAK-UT', 'PRIA', '2023-07-13 20:10:00', '2023-07-13 20:10:00'),
('PELANGGAN_10', 'JONNY', 'JAK-SEL', 'WANITA', '2023-07-13 20:12:28', '2023-07-13 20:12:28'),
('PELANGGAN_2', 'BUDI', 'JAK-BAR', 'PRIA', '2023-07-13 20:10:20', '2023-07-13 20:10:20'),
('PELANGGAN_3', 'JOHAN', 'JAK-SEL', 'PRIA', '2023-07-13 20:10:34', '2023-07-13 20:10:34'),
('PELANGGAN_4', 'SINTHA', 'JAK-TIM', 'WANITA', '2023-07-13 20:11:00', '2023-07-13 20:11:00'),
('PELANGGAN_5', 'ANTO', 'JAK-UT', 'PRIA', '2023-07-13 20:11:12', '2023-07-13 20:11:12'),
('PELANGGAN_6', 'BUJANG', 'JAK-BAR', 'PRIA', '2023-07-13 20:11:24', '2023-07-13 20:11:24'),
('PELANGGAN_7', 'JOWAN', 'JAK-SEL', 'PRIA', '2023-07-13 20:11:39', '2023-07-13 20:11:39'),
('PELANGGAN_8', 'SINTIA', 'JAK-TIM', 'WANITA', '2023-07-13 20:11:56', '2023-07-13 20:11:56'),
('PELANGGAN_9', 'BUTET', 'JAK-BAR', 'WANITA', '2023-07-13 20:12:09', '2023-07-13 20:12:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `ID_NOTA` varchar(255) NOT NULL,
  `TGL` date NOT NULL,
  `KODE_PELANGGAN` varchar(255) NOT NULL,
  `SUB_TOTAL` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`ID_NOTA`, `TGL`, `KODE_PELANGGAN`, `SUB_TOTAL`, `created_at`, `updated_at`) VALUES
('NOTA_1', '2023-07-14', 'PELANGGAN_1', '50000', '2023-07-13 20:16:06', '2023-07-13 20:16:06'),
('NOTA_2', '2023-07-14', 'PELANGGAN_2', '200000', '2023-07-13 20:26:02', '2023-07-13 20:26:02'),
('NOTA_3', '2023-07-14', 'PELANGGAN_3', '430000', '2023-07-13 20:27:42', '2023-07-13 20:27:42'),
('NOTA_4', '2023-07-14', 'PELANGGAN_7', '120000', '2023-07-13 20:28:29', '2023-07-13 20:28:29'),
('NOTA_5', '2023-07-14', 'PELANGGAN_4', '70000', '2023-07-13 20:28:57', '2023-07-13 20:28:57'),
('NOTA_6', '2023-07-14', 'PELANGGAN_8', '230000', '2023-07-13 20:29:57', '2023-07-13 20:29:57'),
('NOTA_7', '2023-07-14', 'PELANGGAN_9', '390000', '2023-07-13 20:30:53', '2023-07-13 20:30:53'),
('NOTA_8', '2023-07-14', 'PELANGGAN_5', '65000', '2023-07-13 20:31:32', '2023-07-13 20:31:32'),
('NOTA_9', '2023-07-14', 'PELANGGAN_2', '40000', '2023-07-13 20:32:08', '2023-07-13 20:32:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KODE`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `item_penjualan`
--
ALTER TABLE `item_penjualan`
  ADD KEY `item_penjualan_nota_foreign` (`NOTA`),
  ADD KEY `item_penjualan_kode_barang_foreign` (`KODE_BARANG`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_PELANGGAN`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`ID_NOTA`),
  ADD KEY `penjualan_kode_pelanggan_foreign` (`KODE_PELANGGAN`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `item_penjualan`
--
ALTER TABLE `item_penjualan`
  ADD CONSTRAINT `item_penjualan_kode_barang_foreign` FOREIGN KEY (`KODE_BARANG`) REFERENCES `barang` (`KODE`),
  ADD CONSTRAINT `item_penjualan_nota_foreign` FOREIGN KEY (`NOTA`) REFERENCES `penjualan` (`ID_NOTA`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_kode_pelanggan_foreign` FOREIGN KEY (`KODE_PELANGGAN`) REFERENCES `pelanggan` (`ID_PELANGGAN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
