-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 01:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api-transfer`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `bank_id`, `account_number`, `created_at`, `updated_at`) VALUES
(1, 4, 151, '9307786', '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(2, 1, 121, '7755337', '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(3, 5, 9, '8114618', '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(4, 2, 106, '6233855', '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(5, 4, 129, '7835109', '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(6, 8, 163, '5025164', '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(7, 3, 49, '2737329', '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(8, 10, 101, '6725926', '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(9, 8, 141, '7917004', '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(10, 10, 13, '5823762', '2023-06-17 11:04:50', '2023-06-17 11:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `fee` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `code`, `fee`, `created_at`, `updated_at`) VALUES
(1, 'BNI (Bank Negara Indonesia)', '009', '0.0000', NULL, NULL),
(2, 'BRI (Bank Rakyat Indonesia)', '002', '0.0000', NULL, NULL),
(3, 'BTN (Bank Tabungan Negara)', '200', '0.0000', NULL, NULL),
(4, 'Bank Mandiri', '008', '0.0000', NULL, NULL),
(5, 'BSI (Bank Syariah Indonesia Eks BRI Syariah)', '422', '0.0000', NULL, NULL),
(6, 'BSI (Bank Syariah Indonesia Eks BNI Syariah)', '427', '0.0000', NULL, NULL),
(7, 'BSI (Bank Syariah Indonesia Eks Mandiri Syariah)', '451', '0.0000', NULL, NULL),
(8, 'BCA (Bank Central Asia)', '014', '0.0000', NULL, NULL),
(9, 'Bank CIMB Niaga', '022', '0.0000', NULL, NULL),
(10, 'Bank CIMB Niaga Syariah', '022', '0.0000', NULL, NULL),
(11, 'Bank Muamalat', '147', '0.0000', NULL, NULL),
(12, 'Bank Danamon', '011', '0.0000', NULL, NULL),
(13, 'Bank OCBC NISP', '028', '0.0000', NULL, NULL),
(14, 'Bank Permata', '013', '0.0000', NULL, NULL),
(15, 'Bank Sinarmas', '153', '0.0000', NULL, NULL),
(16, 'Bank Mega', '426', '0.0000', NULL, NULL),
(17, 'Bank BII Maybank', '016', '0.0000', NULL, NULL),
(18, 'Bank Bukopin', '441', '0.0000', NULL, NULL),
(19, 'Bank BCA Syariah', '536', '0.0000', NULL, NULL),
(20, 'Bank Commonwealth', '950', '0.0000', NULL, NULL),
(21, 'Bank Citibank', '031', '0.0000', NULL, NULL),
(22, 'Bank BTPN', '213', '0.0000', NULL, NULL),
(23, 'Bank Jenius BTPN', '213', '0.0000', NULL, NULL),
(24, 'Bank Panin', '019', '0.0000', NULL, NULL),
(25, 'Bank Ekspor Indonesia', '003', '0.0000', NULL, NULL),
(26, 'Bank Arhta Niaga Kencana', '020', '0.0000', NULL, NULL),
(27, 'Bank Buana IND', '023', '0.0000', NULL, NULL),
(28, 'Bank Artha Graha', '037', '0.0000', NULL, NULL),
(29, 'Bank Bank Multicor', '036', '0.0000', NULL, NULL),
(30, 'Bank Sumitomo Mitsui Indonesia', '045', '0.0000', NULL, NULL),
(31, 'Bank DBS Indonesia', '046', '0.0000', NULL, NULL),
(32, 'Bank Resona Perdania', '047', '0.0000', NULL, NULL),
(33, 'Bank Mizuho Indonesia', '048', '0.0000', NULL, NULL),
(34, 'Bank Standard Chartered', '050', '0.0000', NULL, NULL),
(35, 'Bank Capital Indonesia', '054', '0.0000', NULL, NULL),
(36, 'Bank ABN Amro', '052', '0.0000', NULL, NULL),
(37, 'Bank Keppel Tatlee Buana', '053', '0.0000', NULL, NULL),
(38, 'Bank UOB Indonesia', '023', '0.0000', NULL, NULL),
(39, 'Bank Capital Indonesia', '054', '0.0000', NULL, NULL),
(40, 'Bank Woori Indonesia', '068', '0.0000', NULL, NULL),
(41, 'Bank Bumi Artha', '076', '0.0000', NULL, NULL),
(42, 'Bank Ekonomi', '087', '0.0000', NULL, NULL),
(43, 'Bank Haga', '089', '0.0000', NULL, NULL),
(44, 'Bank IFI', '093', '0.0000', NULL, NULL),
(45, 'Bank Century/Bank J Trust Indonesia', '095', '0.0000', NULL, NULL),
(46, 'Bank Mayapada', '097', '0.0000', NULL, NULL),
(47, 'Bank Nusantara Parahyangan', '145', '0.0000', NULL, NULL),
(48, 'Bank Swadesi', '146', '0.0000', NULL, NULL),
(49, 'Bank Mestika', '151', '0.0000', NULL, NULL),
(50, 'Bank Metro Express', '152', '0.0000', NULL, NULL),
(51, 'Bank Maspion', '157', '0.0000', NULL, NULL),
(52, 'Bank Hagakita', '159', '0.0000', NULL, NULL),
(53, 'Bank Ganesha', '161', '0.0000', NULL, NULL),
(54, 'Bank Windu Kentjana', '162', '0.0000', NULL, NULL),
(55, 'Bank Harmoni Internasional', '166', '0.0000', NULL, NULL),
(56, 'Bank QNB Kesawan (Bank QNB)', '167', '0.0000', NULL, NULL),
(57, 'Bank Swaguna', '405', '0.0000', NULL, NULL),
(58, 'Bank Bisnis Internasional', '459', '0.0000', NULL, NULL),
(59, 'Bank Sri Partha', '466', '0.0000', NULL, NULL),
(60, 'Bank DKI Jakarta', '111', '0.0000', NULL, NULL),
(61, 'Bank Jabar (Jawa Barat)', '110', '0.0000', NULL, NULL),
(62, 'Bank Jateng (Jawa Tengah)', '113', '0.0000', NULL, NULL),
(63, 'Bank Jatim (Jawa Timur)', '114', '0.0000', NULL, NULL),
(64, 'BPD DIY (Yogyakarta)', '112', '0.0000', NULL, NULL),
(65, 'BPD Jambi', '115', '0.0000', NULL, NULL),
(66, 'BPD Aceh', '116', '0.0000', NULL, NULL),
(67, 'BPD Aceh Syariah', '116', '0.0000', NULL, NULL),
(68, 'Bank Sumut (Sumatera Utara)', '117', '0.0000', NULL, NULL),
(69, 'Bank Nagari (Bank Sumbar)', '118', '0.0000', NULL, NULL),
(70, 'Bank Riau Kepri', '119', '0.0000', NULL, NULL),
(71, 'Bank Sumber Babel', '120', '0.0000', NULL, NULL),
(72, 'Bank Lampung', '121', '0.0000', NULL, NULL),
(73, 'Bank Kalsel (Kalimantan Selatan)', '122', '0.0000', NULL, NULL),
(74, 'Bank Kalbar (Kalimantan Barat)', '123', '0.0000', NULL, NULL),
(75, 'Bank Kaltim Tara (Kalimantan Timur dan Utara)', '124', '0.0000', NULL, NULL),
(76, 'Bank Kalteng (Kalimantan Tengah)', '125', '0.0000', NULL, NULL),
(77, 'Bank Sulselbar (Sulawesi Selatan dan Barat)', '126', '0.0000', NULL, NULL),
(78, 'Bank Sulutgo (Sulawesi Utara dan Gorontalo)', '127', '0.0000', NULL, NULL),
(79, 'Bank NTP', '128', '0.0000', NULL, NULL),
(80, 'Bank NTB Syariah', '128', '0.0000', NULL, NULL),
(81, 'Bank BPD Bali', '129', '0.0000', NULL, NULL),
(82, 'Bank NTT', '130', '0.0000', NULL, NULL),
(83, 'Bank Maluku Malut', '131', '0.0000', NULL, NULL),
(84, 'Bank Papua', '132', '0.0000', NULL, NULL),
(85, 'Bank Bengkulu', '133', '0.0000', NULL, NULL),
(86, 'Bank Sulteng (Sulawesi Tengah)', '134', '0.0000', NULL, NULL),
(87, 'Bank Sultra', '135', '0.0000', NULL, NULL),
(88, 'BPD Banten', '137', '0.0000', NULL, NULL),
(89, 'BNI (Bank Negara Indonesia)', '009', '0.0000', NULL, NULL),
(90, 'BRI (Bank Rakyat Indonesia)', '002', '0.0000', NULL, NULL),
(91, 'BTN (Bank Tabungan Negara)', '200', '0.0000', NULL, NULL),
(92, 'Bank Mandiri', '008', '0.0000', NULL, NULL),
(93, 'BSI (Bank Syariah Indonesia Eks BRI Syariah)', '422', '0.0000', NULL, NULL),
(94, 'BSI (Bank Syariah Indonesia Eks BNI Syariah)', '427', '0.0000', NULL, NULL),
(95, 'BSI (Bank Syariah Indonesia Eks Mandiri Syariah)', '451', '0.0000', NULL, NULL),
(96, 'BCA (Bank Central Asia)', '014', '0.0000', NULL, NULL),
(97, 'Bank CIMB Niaga', '022', '0.0000', NULL, NULL),
(98, 'Bank CIMB Niaga Syariah', '022', '0.0000', NULL, NULL),
(99, 'Bank Muamalat', '147', '0.0000', NULL, NULL),
(100, 'Bank Danamon', '011', '0.0000', NULL, NULL),
(101, 'Bank OCBC NISP', '028', '0.0000', NULL, NULL),
(102, 'Bank Permata', '013', '0.0000', NULL, NULL),
(103, 'Bank Sinarmas', '153', '0.0000', NULL, NULL),
(104, 'Bank Mega', '426', '0.0000', NULL, NULL),
(105, 'Bank BII Maybank', '016', '0.0000', NULL, NULL),
(106, 'Bank Bukopin', '441', '0.0000', NULL, NULL),
(107, 'Bank BCA Syariah', '536', '0.0000', NULL, NULL),
(108, 'Bank Commonwealth', '950', '0.0000', NULL, NULL),
(109, 'Bank Citibank', '031', '0.0000', NULL, NULL),
(110, 'Bank BTPN', '213', '0.0000', NULL, NULL),
(111, 'Bank Jenius BTPN', '213', '0.0000', NULL, NULL),
(112, 'Bank Panin', '019', '0.0000', NULL, NULL),
(113, 'Bank Ekspor Indonesia', '003', '0.0000', NULL, NULL),
(114, 'Bank Arhta Niaga Kencana', '020', '0.0000', NULL, NULL),
(115, 'Bank Buana IND', '023', '0.0000', NULL, NULL),
(116, 'Bank Artha Graha', '037', '0.0000', NULL, NULL),
(117, 'Bank Bank Multicor', '036', '0.0000', NULL, NULL),
(118, 'Bank Sumitomo Mitsui Indonesia', '045', '0.0000', NULL, NULL),
(119, 'Bank DBS Indonesia', '046', '0.0000', NULL, NULL),
(120, 'Bank Resona Perdania', '047', '0.0000', NULL, NULL),
(121, 'Bank Mizuho Indonesia', '048', '0.0000', NULL, NULL),
(122, 'Bank Standard Chartered', '050', '0.0000', NULL, NULL),
(123, 'Bank Capital Indonesia', '054', '0.0000', NULL, NULL),
(124, 'Bank ABN Amro', '052', '0.0000', NULL, NULL),
(125, 'Bank Keppel Tatlee Buana', '053', '0.0000', NULL, NULL),
(126, 'Bank UOB Indonesia', '023', '0.0000', NULL, NULL),
(127, 'Bank Capital Indonesia', '054', '0.0000', NULL, NULL),
(128, 'Bank Woori Indonesia', '068', '0.0000', NULL, NULL),
(129, 'Bank Bumi Artha', '076', '0.0000', NULL, NULL),
(130, 'Bank Ekonomi', '087', '0.0000', NULL, NULL),
(131, 'Bank Haga', '089', '0.0000', NULL, NULL),
(132, 'Bank IFI', '093', '0.0000', NULL, NULL),
(133, 'Bank Century/Bank J Trust Indonesia', '095', '0.0000', NULL, NULL),
(134, 'Bank Mayapada', '097', '0.0000', NULL, NULL),
(135, 'Bank Nusantara Parahyangan', '145', '0.0000', NULL, NULL),
(136, 'Bank Swadesi', '146', '0.0000', NULL, NULL),
(137, 'Bank Mestika', '151', '0.0000', NULL, NULL),
(138, 'Bank Metro Express', '152', '0.0000', NULL, NULL),
(139, 'Bank Maspion', '157', '0.0000', NULL, NULL),
(140, 'Bank Hagakita', '159', '0.0000', NULL, NULL),
(141, 'Bank Ganesha', '161', '0.0000', NULL, NULL),
(142, 'Bank Windu Kentjana', '162', '0.0000', NULL, NULL),
(143, 'Bank Harmoni Internasional', '166', '0.0000', NULL, NULL),
(144, 'Bank QNB Kesawan (Bank QNB)', '167', '0.0000', NULL, NULL),
(145, 'Bank Swaguna', '405', '0.0000', NULL, NULL),
(146, 'Bank Bisnis Internasional', '459', '0.0000', NULL, NULL),
(147, 'Bank Sri Partha', '466', '0.0000', NULL, NULL),
(148, 'Bank DKI Jakarta', '111', '0.0000', NULL, NULL),
(149, 'Bank Jabar (Jawa Barat)', '110', '0.0000', NULL, NULL),
(150, 'Bank Jateng (Jawa Tengah)', '113', '0.0000', NULL, NULL),
(151, 'Bank Jatim (Jawa Timur)', '114', '0.0000', NULL, NULL),
(152, 'BPD DIY (Yogyakarta)', '112', '0.0000', NULL, NULL),
(153, 'BPD Jambi', '115', '0.0000', NULL, NULL),
(154, 'BPD Aceh', '116', '0.0000', NULL, NULL),
(155, 'BPD Aceh Syariah', '116', '0.0000', NULL, NULL),
(156, 'Bank Sumut (Sumatera Utara)', '117', '0.0000', NULL, NULL),
(157, 'Bank Nagari (Bank Sumbar)', '118', '0.0000', NULL, NULL),
(158, 'Bank Riau Kepri', '119', '0.0000', NULL, NULL),
(159, 'Bank Sumber Babel', '120', '0.0000', NULL, NULL),
(160, 'Bank Lampung', '121', '0.0000', NULL, NULL),
(161, 'Bank Kalsel (Kalimantan Selatan)', '122', '0.0000', NULL, NULL),
(162, 'Bank Kalbar (Kalimantan Barat)', '123', '0.0000', NULL, NULL),
(163, 'Bank Kaltim Tara (Kalimantan Timur dan Utara)', '124', '0.0000', NULL, NULL),
(164, 'Bank Kalteng (Kalimantan Tengah)', '125', '0.0000', NULL, NULL),
(165, 'Bank Sulselbar (Sulawesi Selatan dan Barat)', '126', '0.0000', NULL, NULL),
(166, 'Bank Sulutgo (Sulawesi Utara dan Gorontalo)', '127', '0.0000', NULL, NULL),
(167, 'Bank NTP', '128', '0.0000', NULL, NULL),
(168, 'Bank NTB Syariah', '128', '0.0000', NULL, NULL),
(169, 'Bank BPD Bali', '129', '0.0000', NULL, NULL),
(170, 'Bank NTT', '130', '0.0000', NULL, NULL),
(171, 'Bank Maluku Malut', '131', '0.0000', NULL, NULL),
(172, 'Bank Papua', '132', '0.0000', NULL, NULL),
(173, 'Bank Bengkulu', '133', '0.0000', NULL, NULL),
(174, 'Bank Sulteng (Sulawesi Tengah)', '134', '0.0000', NULL, NULL),
(175, 'Bank Sultra', '135', '0.0000', NULL, NULL),
(176, 'BPD Banten', '137', '0.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_15_155000_create_banks_table', 1),
(6, '2023_06_15_161905_create_accounts_table', 1),
(7, '2023_06_15_162415_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_code` varchar(255) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `balance` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `account_id` int(11) NOT NULL,
  `virtual_account` varchar(255) NOT NULL,
  `expired` datetime NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_code`, `bank_id`, `balance`, `total`, `account_id`, `virtual_account`, `expired`, `description`, `created_at`, `updated_at`) VALUES
(1, 'TF23061782087', 72, '682703.0000', '751044.0000', 1, '50845602', '1976-12-10 22:00:46', NULL, '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(2, 'TF23061794705', 145, '480826.0000', '126139.0000', 7, '991495610', '2012-08-26 04:08:33', NULL, '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(3, 'TF23061729651', 136, '783350.0000', '486870.0000', 7, '444623050', '1991-10-11 17:38:39', NULL, '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(4, 'TF23061794873', 153, '151453.0000', '298766.0000', 6, '843932222', '1977-06-18 15:39:20', NULL, '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(5, 'TF23061769648', 139, '683861.0000', '730600.0000', 5, '584702881', '1975-07-24 12:22:19', NULL, '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(6, 'TF23061733635', 98, '468806.0000', '284074.0000', 4, '259870197', '2011-04-27 23:04:45', NULL, '2023-06-17 11:04:50', '2023-06-17 11:04:50'),
(7, 'TF23061722906', 7, '648350.0000', '791252.0000', 2, '759210904', '2006-05-08 23:11:13', NULL, '2023-06-17 11:04:51', '2023-06-17 11:04:51'),
(8, 'TF23061746829', 98, '271139.0000', '294867.0000', 8, '830835740', '1997-01-30 11:33:42', NULL, '2023-06-17 11:04:51', '2023-06-17 11:04:51'),
(9, 'TF23061774741', 124, '597645.0000', '905541.0000', 4, '472935611', '2000-11-15 23:50:31', NULL, '2023-06-17 11:04:51', '2023-06-17 11:04:51'),
(10, 'TF23061733056', 63, '739464.0000', '331808.0000', 3, '488418199', '2005-10-16 23:41:55', NULL, '2023-06-17 11:04:51', '2023-06-17 11:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Admin', 'admin@gmail.com', NULL, '$2y$10$yAhKus3HkdrfdepbHfbmEuvPjjEssIP/aniCF7Ct.gWKw0pjmouRm', NULL, '2023-06-17 11:04:50', '2023-06-17 11:04:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_user_id_index` (`user_id`),
  ADD KEY `accounts_bank_id_index` (`bank_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_bank_id_index` (`bank_id`),
  ADD KEY `transactions_account_id_index` (`account_id`);

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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
