-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 05:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokumens`
--

CREATE TABLE `dokumens` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `judul_dokumen` varchar(255) NOT NULL,
  `deskripsi_dokumen` text NOT NULL,
  `kategori_dokumen` varchar(255) NOT NULL,
  `validasi_dokumen` varchar(255) NOT NULL,
  `tahun_dokumen` year(4) NOT NULL,
  `dokumen_file` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokumens`
--

INSERT INTO `dokumens` (`id`, `created_by`, `judul_dokumen`, `deskripsi_dokumen`, `kategori_dokumen`, `validasi_dokumen`, `tahun_dokumen`, `dokumen_file`, `tags`, `status`, `created_at`, `updated_at`) VALUES
(63, 'Ketua Jurusan', 'Dokumen Pemberitahuan', 'Dokumen berisi pemberitahuan', 'Dokumen Tata Pamong', 'Ketua Jurusan', '2023', 'Dokumen Internal.pdf', 'tag', 'active', '2024-06-03 00:55:35', '2024-06-15 14:50:04'),
(64, 'Dosen', 'Dokumen Laporan', 'Dokumen berisi laporan kegiatan', 'Dokumen Tata Kelola', 'Ketua Jurusan', '2022', 'Use Case Diagram.pdf', 'dokumen', 'active', '2024-06-03 00:57:35', '2024-06-15 14:49:25'),
(65, 'Kaprodi', 'Dokumen Tujuan', 'Dokumen berisi tujuan', 'Dokumen Tujuan', 'Kaprodi', '2023', 'Dokumen Tujuan.pdf', 'Tujuan', 'active', '2024-06-02 17:57:35', '2024-06-16 12:58:46'),
(66, 'Dosen', 'Dokumen Strategi', 'Dokumen berisi strategi', 'Dokumen Strategi', 'Dosen', '2023', 'Dokumen Strategi.pdf', 'Strategi', 'active', '2024-06-02 17:58:35', '2024-06-16 12:59:01'),
(67, 'Adm', 'Dokumen Tata Pamong', 'Dokumen berisi tata pamong', 'Dokumen Tata Pamong', 'Adm', '2023', 'Dokumen Tata Pamong.pdf', 'Tata Pamong', 'active', '2024-06-02 17:59:35', '2024-06-16 12:59:23'),
(68, 'Mahasiswa', 'Dokumen Tata Kelola', 'Dokumen berisi tata kelola', 'Dokumen Tata Kelola', 'Mahasiswa', '2023', 'Dokumen Tata Kelola.pdf', 'Tata Kelola', 'active', '2024-06-02 18:00:35', '2024-06-16 12:59:42'),
(69, 'Admin', 'Dokumen Kerjasama', 'Dokumen berisi kerjasama', 'Dokumen Kerjasama', 'Admin', '2023', 'Dokumen Kerjasama.pdf', 'Kerjasama', 'active', '2024-06-02 18:01:35', '2024-06-16 12:59:59'),
(70, 'Ketua Jurusan', 'Dokumen Mahasiswa', 'Dokumen berisi mahasiswa', 'Dokumen Mahasiswa', 'Ketua Jurusan', '2023', 'Dokumen Mahasiswa.pdf', 'Mahasiswa', 'active', '2024-06-02 18:02:35', '2024-06-16 13:00:24'),
(71, 'Sekretaris Jurusan', 'Dokumen Sumber Daya Manusia', 'Dokumen berisi SDM', 'Dokumen Sumber Daya Manusia', 'Sekretaris Jurusan', '2023', 'Dokumen Sumber Daya Manusia.pdf', 'Sumber Daya Manusia', 'active', '2024-06-02 18:03:35', '2024-06-16 13:00:51'),
(72, 'Kaprodi', 'Dokumen Keuangan', 'Dokumen berisi keuangan', 'Dokumen Keuangan', 'Kaprodi', '2023', 'Dokumen Keuangan.pdf', 'Keuangan', 'active', '2024-06-02 18:04:35', '2024-06-16 13:01:46'),
(73, 'Dosen', 'Dokumen Sarana Prasarana', 'Dokumen berisi sarana dan prasarana', 'Dokumen Sarana Prasarana', 'Dosen', '2023', 'Dokumen Sarana Prasarana.pdf', 'Sarana Prasarana', 'active', '2024-06-02 18:05:35', '2024-06-16 13:05:00'),
(74, 'Adm', 'Dokumen Penelitian', 'Dokumen berisi penelitian', 'Dokumen Penelitian', 'Adm', '2023', 'Dokumen Penelitian.pdf', 'Penelitian', 'active', '2024-06-02 18:06:35', '2024-06-16 13:04:41'),
(75, 'Mahasiswa', 'Dokumen Pengabdian Kepada Masyarakat', 'Dokumen berisi pengabdian kepada masyarakat', 'Dokumen Pengabdian Kepada Masyarakat', 'Mahasiswa', '2023', 'Dokumen Pengabdian Kepada Masyarakat.pdf', 'Pengabdian Kepada Masyarakat', 'active', '2024-06-02 18:07:35', '2024-06-16 13:04:04'),
(77, 'Ketua Jurusan', 'Dokumen Capaian Tridarma', 'Dokumen berisi capaian tridarma', 'Dokumen Capaian Tridarma', 'Ketua Jurusan', '2023', 'Dokumen Capaian Tridarma.pdf', 'Capaian Tridarma', 'active', '2024-06-02 18:09:35', '2024-06-16 13:02:47'),
(78, 'Ketua Jurusan', 'Dokumen Pendidikan', 'Dokumen berisi pendidikan', 'Dokumen Pendidikan', 'Ketua Jurusan', '2023', 'Dokumen Pendidikan.pdf', 'Pendidikan', 'active', '2024-06-02 17:55:35', '2024-06-16 13:02:30'),
(79, 'Sekretaris Jurusan', 'Dokumen Visi Misi', 'Dokumen berisi visi dan misi', 'Dokumen Visi Misi', 'Sekretaris Jurusan', '2023', 'Dokumen Visi Misi.pdf', 'Visi Misi', 'active', '2024-06-02 17:56:35', '2024-06-16 13:02:12'),
(96, 'Admin', 'Dokumen Iuran', 'Dokumen berisi iuran', 'Dokumen Iuran', 'Admin', '2023', 'Dokumen Iuran.pdf', 'Iuran', 'active', '2024-06-16 21:02:24', '2024-06-16 21:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `draft`
--

CREATE TABLE `draft` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `judul_dokumen` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi_dokumen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kategori_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `validasi_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tahun_dokumen` year(4) NOT NULL,
  `dokumen_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `draft`
--

INSERT INTO `draft` (`id`, `created_by`, `judul_dokumen`, `deskripsi_dokumen`, `kategori_dokumen`, `validasi_dokumen`, `tahun_dokumen`, `dokumen_file`, `tags`, `status`, `updated_at`, `created_at`) VALUES
(31, 'Ketua Jurusan', 'Dokumen Contoh', 'Contoh', 'Dokumen Keuangan', 'Kelompok Bidang Keahlian', '2022', 'DAFTAR PUSTAKA.pdf', 'Contoh', 'draft', '2024-06-16 20:44:30', '2024-06-16 20:44:30'),
(33, 'Admin', 'Dokumen Contoh', 'Contoh', 'Dokumen Mahasiswa', 'Ketua Program Studi', '2021', 'BAB I.pdf', 'Contoh', 'draft', '2024-06-17 06:12:20', '2024-06-17 06:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dokumen_id` int(11) NOT NULL,
  `judul_dokumen` varchar(255) NOT NULL,
  `deskripsi_dokumen` text NOT NULL,
  `kategori_dokumen` varchar(255) NOT NULL,
  `validasi_dokumen` varchar(255) NOT NULL,
  `tahun_dokumen` int(11) NOT NULL,
  `dokumen_file` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `approved`, `password`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'super user', 'superuser@example.com', 1, '$2y$12$3U52mGDwQa42EB7wGtvEoev4OG3WqRFwtggZ1ynhrcg8OVNQfoNQO', 'Admin', '2024-05-08 17:52:21', '2024-06-13 10:56:47'),
(2, 'sinatra kusuma', 'Sinatra@example.com', 1, '$2y$12$I4qEzImPIfdsImeRGgRtXeXNYAKJrDernptgzYdGqgASki1KCpaSi', 'Mahasiswa', '2024-06-09 11:44:27', '2024-06-13 10:29:20'),
(9, 'Ketua Jurusan', 'kajur@example.com', 0, '$2y$12$MDzlIpHrNa/Vx347IPO6ROJJybcRXb5xyiGDN6tcrbcpmCbrSMS3q', 'Kajur', '2024-06-14 07:52:09', '2024-06-14 07:52:09'),
(10, 'Sekretaris Jurusan', 'sekjur@example.com', 0, '$2y$12$EXIc0IEb8MP4dY.YFcAbDO8uxs9DwzoYf31sQQu./hYZQUsYBWYqO', 'Sekjur', '2024-06-14 07:53:19', '2024-06-14 07:53:19'),
(11, 'Kaprodi', 'kaprodi@example.com', 1, '$2y$12$weC3nWpMLcMtrEXTj/mTr.TbvYKS3.Gnc6ZwzFt50ek/ED1Xop1q2', 'Kaprodi', '2024-06-14 07:55:14', '2024-06-16 11:03:45'),
(12, 'Dosen', 'dosen@example.com', 0, '$2y$12$da22xoMe/yEQdtymlouW7OXaQ/Iqw7NQyfNECnyGC3m7NGyGhuzBC', 'Dosen', '2024-06-14 08:00:20', '2024-06-14 08:00:20'),
(13, 'Adm', 'adm@example.com', 0, '$2y$12$DaVdHSAzSxjYs1F1z.JdWOUwRWMTipe2UvXg5myiZm2FMFU86x9ge', 'Adm', '2024-06-14 08:01:14', '2024-06-14 08:01:14'),
(14, 'Mahasiswa', 'mahasiswa@example.com', 0, '$2y$12$f4qq6Eym2PEL5ujNGjNHhODxikukUuR4ybOSP49jPAixaR88CE.2u', 'Mahasiswa', '2024-06-14 08:02:06', '2024-06-14 08:02:06'),
(15, 'Admin', 'admin@example.com', 1, '$2y$12$UWVkYaZzPqs5FEOETedIK.gAULspUIrtq23Bkqqdaksp4EZLzY.ia', 'Admin', '2024-06-14 08:02:41', '2024-06-16 11:14:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokumens`
--
ALTER TABLE `dokumens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `draft`
--
ALTER TABLE `draft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumen_id` (`dokumen_id`);

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
-- AUTO_INCREMENT for table `dokumens`
--
ALTER TABLE `dokumens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `draft`
--
ALTER TABLE `draft`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_ibfk_1` FOREIGN KEY (`dokumen_id`) REFERENCES `dokumens` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
