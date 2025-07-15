-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2025 at 07:21 PM
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
-- Database: `belajar1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counts`
--

CREATE TABLE `counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis` varchar(25) DEFAULT NULL,
  `angka1` decimal(10,2) DEFAULT NULL,
  `angka2` decimal(10,2) DEFAULT NULL,
  `hasil` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counts`
--

INSERT INTO `counts` (`id`, `jenis`, `angka1`, `angka2`, `hasil`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'tambah', 12.50, 1.10, 13.60, '2025-06-22 21:01:40', '2025-06-23 01:33:17', NULL),
(4, 'tambah', 2.00, 5.00, 7.00, '2025-06-22 21:04:35', '2025-06-23 00:30:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Ruben Amorim', '0938908123', 'Jakarta', '2025-07-02 19:58:18', '2025-07-02 19:58:18'),
(2, 'Bakrie', '342123112113', 'Bekasi', '2025-07-02 19:58:43', '2025-07-02 19:58:43'),
(3, 'Yono', '098023174112', 'Mampang', '2025-07-13 22:11:33', '2025-07-13 22:11:33');

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
-- Table structure for table `jobs`
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
-- Table structure for table `job_batches`
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
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2025-07-03 00:32:00', '2025-07-03 00:32:00'),
(2, 'Operator', '2025-07-03 00:32:07', '2025-07-03 00:32:07'),
(3, 'Leader', '2025-07-03 00:32:20', '2025-07-03 00:32:20');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2025_06_23_022059_create_counts_table', 2),
(6, '2025_06_25_063805_create_services_table', 3),
(7, '2025_06_30_012530_create_levels_table', 4),
(8, '2025_06_30_072344_create_customers_table', 4),
(9, '2025_07_01_020043_create_trans_orders_table', 4),
(10, '2025_07_01_021252_create_trans_details_table', 4),
(11, '2025_06_25_064052_create_service_table', 5),
(12, '2025_06_30_012531_create_levels_table', 6),
(13, '2025_07_03_041353_create_personal_access_tokens_table', 6);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'api_token', '6063002d1634f1b931408b18fe47f52a99a62998a8be2d54a2019fa1c125aeaa', '[\"*\"]', '2025-07-10 00:21:45', NULL, '2025-07-08 21:16:49', '2025-07-10 00:21:45'),
(2, 'App\\Models\\User', 1, 'api_token', '904ab3106ee7ea59eccd5602f20222015503136d5d6c871b6a1610509fe15584', '[\"*\"]', NULL, NULL, '2025-07-09 00:39:13', '2025-07-09 00:39:13'),
(3, 'App\\Models\\User', 1, 'api_token', '4f9da1b4a85bd51aaa385b0ce25760161fed96975c02c5d9a51f4af3ab380d0f', '[\"*\"]', NULL, NULL, '2025-07-09 00:39:26', '2025-07-09 00:39:26'),
(4, 'App\\Models\\User', 1, 'api_token', 'b3588162c664ad10f14fbec70e7c323027ea84a1ffdf9ce39c433fcb1937394b', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:48', '2025-07-09 00:41:48'),
(5, 'App\\Models\\User', 1, 'api_token', '8f4210b57b46f0ea1e28d50e1be5386684d28196846fb777df79e67fe6c0d061', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:48', '2025-07-09 00:41:48'),
(6, 'App\\Models\\User', 1, 'api_token', '066b0be6cbaa1d368d87822c1948930518fe35a396bdff3c9492156b4b1ea5d8', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:49', '2025-07-09 00:41:49'),
(7, 'App\\Models\\User', 1, 'api_token', '354e260df128756cf6bba6e5d5f4fa965a8e818d68361b76cf00d659763a683c', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:51', '2025-07-09 00:41:51'),
(8, 'App\\Models\\User', 1, 'api_token', '102a9c2009fc9bf92897bad56727abc118f2d6c06b52eb772b815499669bd984', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:51', '2025-07-09 00:41:51'),
(9, 'App\\Models\\User', 1, 'api_token', '407c69489cca0eb792eec73cd90f97c59de6e40e617a1d42ecbdbbdeb476830a', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:52', '2025-07-09 00:41:52'),
(10, 'App\\Models\\User', 1, 'api_token', '8ceb0cca73777a0eab2e828b8319830c61e79b1c90601ea346e194c89201d17d', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:52', '2025-07-09 00:41:52'),
(11, 'App\\Models\\User', 1, 'api_token', '9fa77be0b6e7cff8ed453d37f6dca994e5ee8651ed0249463d7c6ac7be562b09', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:53', '2025-07-09 00:41:53'),
(12, 'App\\Models\\User', 1, 'api_token', 'ca0d21c7dc1a595e5891476280eb5f121bcd96d29eefb15f17e6ba162ff50725', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:53', '2025-07-09 00:41:53'),
(13, 'App\\Models\\User', 1, 'api_token', '256e23d3e88bf00f42fed8cc7b2d7af7456aea45936d030984dfc3c3ca1939d6', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:54', '2025-07-09 00:41:54'),
(14, 'App\\Models\\User', 1, 'api_token', 'b677b4c1e97a7489ea92927664caabe0c2281e36ff659d5d37a7290f473bb827', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:54', '2025-07-09 00:41:54'),
(15, 'App\\Models\\User', 1, 'api_token', '44c12f2bcbe6df5a470c4c37a0d912e45f01a92502ba104cb68b00c92e59b442', '[\"*\"]', NULL, NULL, '2025-07-09 00:41:54', '2025-07-09 00:41:54'),
(16, 'App\\Models\\User', 1, 'api_token', 'd4e9f22b2a1746329d1890956dc0d3087de75229d3074a4d12bdc27cfce543da', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:05', '2025-07-09 00:42:05'),
(17, 'App\\Models\\User', 1, 'api_token', 'ccd97922a8ceb139a4f37fb4adf0edd32ca3d79875c1e54fadb20f69e2af14ba', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:07', '2025-07-09 00:42:07'),
(18, 'App\\Models\\User', 1, 'api_token', 'c71a90930ebaaffc82748adccb4d101421ead6aedfdb8c2694eaffb7e587d44f', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:08', '2025-07-09 00:42:08'),
(19, 'App\\Models\\User', 1, 'api_token', 'c4cfe0907895ec2cb7e5abe2280e8112614aafa93e72078567f2d2bbbd19c119', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:08', '2025-07-09 00:42:08'),
(20, 'App\\Models\\User', 1, 'api_token', '66f03c9b4eb0f8bdc4b738a56a8821f0077d57710654c545cbefd3beced1957d', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:08', '2025-07-09 00:42:08'),
(21, 'App\\Models\\User', 1, 'api_token', 'e8276987cad7903e4163975974067c18f40a03631943c197064db11663e2ee98', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:17', '2025-07-09 00:42:17'),
(22, 'App\\Models\\User', 1, 'api_token', '6571eb3848ed8e08e0454826bd9d02f7a28c0f5fd26171dba994b1307b510b2f', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:17', '2025-07-09 00:42:17'),
(23, 'App\\Models\\User', 1, 'api_token', '9b5fc38b7de10aec41a0bae45c4b45764545d0888b6b7e833e8adf0cd3edd981', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:18', '2025-07-09 00:42:18'),
(24, 'App\\Models\\User', 1, 'api_token', '36c3cc2d7fed8b32886fd658f42b16f36f77376da7e2eac70bb48f5af0ca8e03', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:18', '2025-07-09 00:42:18'),
(25, 'App\\Models\\User', 1, 'api_token', 'eda09a4a7fe081dfd18ccc00226f2f03b36d2e07bcc48d587bc1f38f7124c4d7', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:19', '2025-07-09 00:42:19'),
(26, 'App\\Models\\User', 1, 'api_token', '28a1a4097b96440f83afba76575b5418ecaa25faf4c63c2bc25379e51301d6f6', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:19', '2025-07-09 00:42:19'),
(27, 'App\\Models\\User', 1, 'api_token', 'cbdbf267178db1bc6e2df168e25cac6bfa7fe5a9c432bc3941ea38f95a1dbec9', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:20', '2025-07-09 00:42:20'),
(28, 'App\\Models\\User', 1, 'api_token', '396c4054206ca233da03d6fcc9e90123a7a6c05ab12432568ce869f574055bb8', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:20', '2025-07-09 00:42:20'),
(29, 'App\\Models\\User', 1, 'api_token', '7e921577cfe3ab8c28e7d77bc67118a9a08ae12b6369d622f2761b5af1807e57', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:21', '2025-07-09 00:42:21'),
(30, 'App\\Models\\User', 1, 'api_token', '6226b8abab5a386185679f904b13c09700e4227755412c6b86deb08aa9cec378', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:21', '2025-07-09 00:42:21'),
(31, 'App\\Models\\User', 1, 'api_token', '819de7d841d0e82bd86318e411aebcc15308989f03709c354141bb2a1bcf5de3', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:25', '2025-07-09 00:42:25'),
(32, 'App\\Models\\User', 1, 'api_token', 'c38849af4f646a9f449f420fd3c669bcee0990c9c734bea976d66eab0fe77861', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:26', '2025-07-09 00:42:26'),
(33, 'App\\Models\\User', 1, 'api_token', '834f1579aa4b915f162fcea56656dfd6ac5d9e17978b7127460ddb912962cd4b', '[\"*\"]', NULL, NULL, '2025-07-09 00:42:26', '2025-07-09 00:42:26'),
(34, 'App\\Models\\User', 1, 'api_token', 'abe420af7c77885eb26866204dfb2f72885adda37d104b9106d01217e0728531', '[\"*\"]', NULL, NULL, '2025-07-09 00:44:51', '2025-07-09 00:44:51'),
(35, 'App\\Models\\User', 1, 'api_token', '0c52bff47b76278fea7689add91c1fbd45216ebafee24349a7543bab5813f1b7', '[\"*\"]', NULL, NULL, '2025-07-09 00:44:52', '2025-07-09 00:44:52'),
(36, 'App\\Models\\User', 1, 'api_token', '58dc5b0215d9aa5126707d8188d715202b67becd00dea1dac442ca108e0a8f13', '[\"*\"]', NULL, NULL, '2025-07-09 00:44:53', '2025-07-09 00:44:53'),
(37, 'App\\Models\\User', 1, 'api_token', '6f204c782aac546740a97d5a9e9c5a004ebc3f155709bf2c87e3cd44c6497e1c', '[\"*\"]', NULL, NULL, '2025-07-09 00:45:05', '2025-07-09 00:45:05'),
(38, 'App\\Models\\User', 1, 'api_token', '8a8072e5c3897e728df7e3aabf6daf8e7adbe85d077ab5c74d7c086c32333132', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:15', '2025-07-09 00:48:15'),
(39, 'App\\Models\\User', 1, 'api_token', '3cba70c462e6a34f92591d34a0a8686a12f2cbdf96d8d908ef9f653fdbab6376', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:16', '2025-07-09 00:48:16'),
(40, 'App\\Models\\User', 1, 'api_token', 'a1bb109d8c7acc242a41df0b6d63ff180c5c42f4aade5176203847b0db7db24c', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:16', '2025-07-09 00:48:16'),
(41, 'App\\Models\\User', 1, 'api_token', '207cf13737139b1ede99f905817a1910b0777725578f8a6a48437aa59fc3f5c2', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:17', '2025-07-09 00:48:17'),
(42, 'App\\Models\\User', 1, 'api_token', '12084d82ffbe7a9d54f62b8c4b1b6f91674ad64e320c2521e3fd9221928901fe', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:17', '2025-07-09 00:48:17'),
(43, 'App\\Models\\User', 1, 'api_token', '053f8ebe076e4e6608bcb1472a4da0657d84c1b4ba3c7f88df2fe899b973c0e1', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:18', '2025-07-09 00:48:18'),
(44, 'App\\Models\\User', 1, 'api_token', '4fa9a5aaa421148bbe0fa1f0a313cc98ec5a7365841c8d3638ad43a8c76c293a', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:18', '2025-07-09 00:48:18'),
(45, 'App\\Models\\User', 1, 'api_token', '2ef9706160f920f778ae125515093a5832e2374a1b02c062f8c837c9b66fb997', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:27', '2025-07-09 00:48:27'),
(46, 'App\\Models\\User', 1, 'api_token', 'c29e9d7cd677e66038331c811fb76a69113801dbc36d8b166891a5cc613158be', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:27', '2025-07-09 00:48:27'),
(47, 'App\\Models\\User', 1, 'api_token', 'a2487461d7df1b8ad1e410755081e247bf0bb668c3e728b4fdea9d9ac7d50744', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:28', '2025-07-09 00:48:28'),
(48, 'App\\Models\\User', 1, 'api_token', '61a68777fd51268536080898ffbbef424249c3d4ed748498090e6a27b6c153cf', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:28', '2025-07-09 00:48:28'),
(49, 'App\\Models\\User', 1, 'api_token', '5c1e00ede55016c659c36bdaa390c31d18988a6e3f4913a2a96ae2e99228baa2', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:31', '2025-07-09 00:48:31'),
(50, 'App\\Models\\User', 1, 'api_token', 'a76d58716fc30871618ff51d17f63483b68a67a2395caed74816a584cf3350be', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:31', '2025-07-09 00:48:31'),
(51, 'App\\Models\\User', 1, 'api_token', '208ace340b5ca75d90133e0134d5f2511823410269a95bee7ddcc4873b9c89c2', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:32', '2025-07-09 00:48:32'),
(52, 'App\\Models\\User', 1, 'api_token', '6b43c4a9155d83053c84d85edc53feccc1c4fb81f4402c895671f846ec073e06', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:43', '2025-07-09 00:48:43'),
(53, 'App\\Models\\User', 1, 'api_token', '1815ad83e4a856959d166669ccd6e42c3ff5df8a61dbd5e4a74cba62df8a58d7', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:43', '2025-07-09 00:48:43'),
(54, 'App\\Models\\User', 1, 'api_token', '24158e0e776c3b03b07ed7114b3cd916017e1b4de4b761d1e9556ff0422503f4', '[\"*\"]', NULL, NULL, '2025-07-09 00:48:44', '2025-07-09 00:48:44'),
(55, 'App\\Models\\User', 1, 'api_token', 'f05c1c31022712179b472c1a0df4d092414e18f2437a4855cb67b93e61a1401d', '[\"*\"]', NULL, NULL, '2025-07-09 00:52:44', '2025-07-09 00:52:44'),
(56, 'App\\Models\\User', 1, 'api_token', '6b7c0511ceaf63b5e43aedbef48d7e1e1be1234e0639aacbd72eb3f366c14f11', '[\"*\"]', NULL, NULL, '2025-07-09 00:52:51', '2025-07-09 00:52:51'),
(57, 'App\\Models\\User', 1, 'api_token', 'cb11310eabae9c9740fb93e7fd23a86aeeac101cbfc8793e6ec668e421eb7409', '[\"*\"]', NULL, NULL, '2025-07-09 00:52:52', '2025-07-09 00:52:52'),
(58, 'App\\Models\\User', 1, 'api_token', '6760c34228fc60ab43c887a0a28852bd35e27236339e1fc1d2bd20de43ceafd7', '[\"*\"]', NULL, NULL, '2025-07-09 00:52:52', '2025-07-09 00:52:52'),
(59, 'App\\Models\\User', 1, 'api_token', '669777bea5adccbdd5ced5049ddd3a1cd7a696247cdf92ff360a667e6bb208ff', '[\"*\"]', NULL, NULL, '2025-07-09 00:53:04', '2025-07-09 00:53:04'),
(60, 'App\\Models\\User', 1, 'api_token', '3c5f223a128ec2a1f223979cd2d305362c835a3294f7e8461d6abb98925923ab', '[\"*\"]', NULL, NULL, '2025-07-09 00:53:05', '2025-07-09 00:53:05'),
(61, 'App\\Models\\User', 1, 'api_token', '0a0d2259d7701e346533b6254390c075774ed0d0cad46bb85faeb362f0a35897', '[\"*\"]', NULL, NULL, '2025-07-09 00:53:05', '2025-07-09 00:53:05'),
(62, 'App\\Models\\User', 1, 'api_token', 'a56d8be0a7db527c1a1f2874793668b17fb3d4167c6ba6587f0e603d751d679f', '[\"*\"]', NULL, NULL, '2025-07-09 00:54:22', '2025-07-09 00:54:22'),
(63, 'App\\Models\\User', 1, 'api_token', '70eb90549197cb18ea8a30fe85ac1f4b443308c680920a9735eecdc6cd64bec9', '[\"*\"]', NULL, NULL, '2025-07-09 00:54:23', '2025-07-09 00:54:23'),
(64, 'App\\Models\\User', 1, 'api_token', '26626d35bafd2f8dd2b144c06eaf3b7e3d1e01f56229b9988e3854caac8936e9', '[\"*\"]', NULL, NULL, '2025-07-09 00:54:23', '2025-07-09 00:54:23'),
(65, 'App\\Models\\User', 1, 'api_token', '10e8b002462cca543307b9f5a95968fb029babeb134260a7ec5f2defd5c6c97f', '[\"*\"]', NULL, NULL, '2025-07-09 00:54:24', '2025-07-09 00:54:24'),
(66, 'App\\Models\\User', 1, 'api_token', 'f4f8b839d6ebe14b77beeaa486aea84595323ecf894cb1a5ae4f9e02e9ea0450', '[\"*\"]', NULL, NULL, '2025-07-09 01:09:11', '2025-07-09 01:09:11'),
(67, 'App\\Models\\User', 1, 'api_token', '37d709baa9aa955386c2f1a501776dfd10a9091031b5eaefa5602835a6e587ee', '[\"*\"]', '2025-07-10 00:09:28', NULL, '2025-07-09 19:31:58', '2025-07-10 00:09:28'),
(68, 'App\\Models\\User', 1, 'api_token', '56933d2675634afce6a52694e46898d953cc08dac5cc6a9c4692ace085e33e29', '[\"*\"]', NULL, NULL, '2025-07-09 23:40:31', '2025-07-09 23:40:31'),
(69, 'App\\Models\\User', 1, 'api_token', 'd4b128299199f51df2b76660e8f424e2cd04c5b9a83f6cb2eaa99f18252d5719', '[\"*\"]', NULL, NULL, '2025-07-09 23:42:05', '2025-07-09 23:42:05'),
(70, 'App\\Models\\User', 1, 'api_token', '06f5e83232ef353bf2308d0507485fa5f72d65128a5961e438ab3d366056165e', '[\"*\"]', '2025-07-10 00:19:59', NULL, '2025-07-10 00:05:43', '2025-07-10 00:19:59'),
(71, 'App\\Models\\User', 1, 'api_token', '8aff7f76d73900fe193affef5eef720181d234a6c9d52612512ae64faf96a77d', '[\"*\"]', NULL, NULL, '2025-07-10 00:15:16', '2025-07-10 00:15:16'),
(72, 'App\\Models\\User', 7, 'api_token', 'a27e59bd754863030c7d0ecd0c1e6747b528c3ed8852e2bae6a816448811f022', '[\"*\"]', '2025-07-10 00:22:57', NULL, '2025-07-10 00:22:45', '2025-07-10 00:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fLQtrkTYfIHINoQFQsl9EfWbjDPJhjoGabR22WFg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ2dQVEhVVVdURmdSbkdYaDlyVXdadzhJRlZxbXZScmcwdW83QlZ4aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFucyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1752599626);

-- --------------------------------------------------------

--
-- Table structure for table `trans_details`
--

CREATE TABLE `trans_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_trans` bigint(20) UNSIGNED NOT NULL,
  `id_service` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trans_details`
--

INSERT INTO `trans_details` (`id`, `id_trans`, `id_service`, `qty`, `subtotal`, `note`, `created_at`, `updated_at`) VALUES
(6, 6, 3, 2, 10000, NULL, '2025-07-15 08:48:30', '2025-07-15 08:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `trans_orders`
--

CREATE TABLE `trans_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(30) NOT NULL,
  `order_end_date` date NOT NULL,
  `order_status` tinyint(4) DEFAULT 0,
  `order_pay` int(11) DEFAULT NULL,
  `order_change` int(11) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trans_orders`
--

INSERT INTO `trans_orders` (`id`, `id_customer`, `order_code`, `order_end_date`, `order_status`, `order_pay`, `order_change`, `total`, `created_at`, `updated_at`) VALUES
(6, 2, 'TR-15072025-001', '2025-07-15', 0, 30000, 20000, 10000, '2025-07-15 08:48:30', '2025-07-15 10:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_services`
--

CREATE TABLE `type_of_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(35) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_of_services`
--

INSERT INTO `type_of_services` (`id`, `service_name`, `price`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cuci Dan Setrika', 5000, 'Regular', '2025-07-02 19:55:40', '2025-07-02 19:55:40', NULL),
(2, 'Hanya Cuci', 4000, 'Regular', '2025-07-02 19:56:58', '2025-07-02 19:56:58', NULL),
(3, 'Hanya Setrika', 5000, 'Regular', '2025-07-02 19:57:23', '2025-07-02 19:57:23', NULL),
(4, 'Selimut, Karpet, Mantel, Sprei', 35000, 'Regular', '2025-07-02 19:57:38', '2025-07-02 19:57:38', NULL);

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
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$w0V3SNB3tYx8XHOdKJ1q8uD6cxREu8M1457KGSanZbfg1X/tx/usO', NULL, '2025-06-24 20:47:24', '2025-06-24 20:47:24'),
(7, 'bakrie', 'bakrie@gmail.com', NULL, '$2y$12$03DZsZpJVobII0ZzsOSGbOu0M9tPVq0NkSiBmRp8LneHifCMcG0/O', NULL, '2025-07-03 21:25:15', '2025-07-03 21:25:15'),
(8, 'ruben', 'ruben@gmail.com', NULL, '$2y$12$plXO48Mif.EDAGd5TkEcNu5PZdyGwkGU.kdAys7YB6QsMZhEaarcy', NULL, '2025-07-03 21:50:06', '2025-07-03 21:50:06'),
(9, 'ferguson', 'ferguson@gmail.com', NULL, '$2y$12$nk7LidwoDQtttPPw9CebruEyVtKHysH4a3Z.Gq89HKveoK2uAL8Ue', NULL, '2025-07-04 00:26:04', '2025-07-04 00:26:04'),
(10, 'ferguson12', 'ferguson12@gmail.com', NULL, '$2y$12$5tcXhQklVI/Xu.F2lCTPl.ci9e5cS10oNepkab3FfNmd0qDyIVy3.', NULL, '2025-07-04 00:29:02', '2025-07-04 00:29:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `counts`
--
ALTER TABLE `counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `trans_details`
--
ALTER TABLE `trans_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trans_details_id_trans_foreign` (`id_trans`),
  ADD KEY `trans_details_id_service_foreign` (`id_service`);

--
-- Indexes for table `trans_orders`
--
ALTER TABLE `trans_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trans_orders_id_customer_foreign` (`id_customer`);

--
-- Indexes for table `type_of_services`
--
ALTER TABLE `type_of_services`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `counts`
--
ALTER TABLE `counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `trans_details`
--
ALTER TABLE `trans_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trans_orders`
--
ALTER TABLE `trans_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type_of_services`
--
ALTER TABLE `type_of_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `trans_details`
--
ALTER TABLE `trans_details`
  ADD CONSTRAINT `trans_details_id_service_foreign` FOREIGN KEY (`id_service`) REFERENCES `type_of_services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trans_details_id_trans_foreign` FOREIGN KEY (`id_trans`) REFERENCES `trans_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trans_orders`
--
ALTER TABLE `trans_orders`
  ADD CONSTRAINT `trans_orders_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
