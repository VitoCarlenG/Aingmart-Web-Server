-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 02:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aingmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya_pendaftaran` double NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`id`, `name`, `stok`, `harga`, `created_at`, `updated_at`) VALUES
(13, 'Milo (115 ml)', 40, 4000, '2021-12-05 10:11:31', '2021-12-05 11:10:29'),
(14, 'Pocari Sweat (500 ml)', 50, 5000, '2021-12-05 10:58:48', '2021-12-05 11:11:14'),
(15, 'Floridina (350 ml)', 50, 4500, '2021-12-05 10:59:24', '2021-12-05 11:11:52'),
(16, 'Teh Pucuk Harum (250 ml)', 80, 3500, '2021-12-05 10:59:47', '2021-12-05 11:12:08'),
(17, 'Ultra Milk (340 ml)', 50, 5000, '2021-12-05 11:00:23', '2021-12-05 11:12:26'),
(18, 'Buavita Mangga (280 ml)', 100, 6000, '2021-12-05 11:01:03', '2021-12-05 11:12:40'),
(19, 'Sprite (500 ml)', 60, 4000, '2021-12-05 11:01:46', '2021-12-05 11:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `makanans`
--

CREATE TABLE `makanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `makanans`
--

INSERT INTO `makanans` (`id`, `name`, `stok`, `harga`, `created_at`, `updated_at`) VALUES
(27, 'Indomie Kaldu Ayam (75 gram)', 99, 2000, '2021-12-05 10:48:29', '2021-12-05 11:18:05'),
(28, 'Oreo Vanilla (133 gram)', 50, 5000, '2021-12-05 10:51:26', '2021-12-05 11:17:45'),
(29, 'Pocky Cokelat (22 gram)', 20, 4000, '2021-12-05 10:51:49', '2021-12-05 11:20:04'),
(30, 'Cheetos Jagung Bakar (125 gram)', 40, 3000, '2021-12-05 10:52:21', '2021-12-05 11:19:56'),
(31, 'Fitbar Cokelat (22 gram)', 20, 4500, '2021-12-05 10:52:43', '2021-12-05 11:20:22'),
(32, 'Pringles Original (107 gram)', 30, 10000, '2021-12-05 10:54:01', '2021-12-05 11:20:48'),
(33, 'Yupi Love (120 gram)', 20, 8000, '2021-12-05 10:54:25', '2021-12-05 11:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(17, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(19, '2016_06_01_000004_create_oauth_clients_table', 1),
(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2021_10_25_143511_create_courses_table', 1),
(24, '2021_10_27_105425_create_students_table', 1),
(25, '2021_12_01_132505_create_makanans_table', 1),
(26, '2021_12_01_132725_create_minumans_table', 1),
(27, '2021_12_01_143817_create_minumen_table', 2),
(28, '2021_12_01_145228_create_vouchers_table', 3),
(29, '2021_12_01_145253_create_drinks_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0314a9d9cdfdd79dbca78c1bfd250047985c210da53b84bea5f4bc6998e1055c794ad53a570ab376', 6, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:02:50', '2021-12-02 13:02:50', '2022-12-02 20:02:50'),
('0e306cba0b2a924e173b7a09e33bc46e36f7fc8c410a4377e5e9d4d8266fbe3eeb640bb6b8651e2f', 6, 1, 'Authentication Token', '[]', 0, '2021-12-02 11:31:38', '2021-12-02 11:31:38', '2022-12-02 18:31:38'),
('0ebf88d933e02e2e106ee4796dfef75c8ee32109af133e7cacaa3a4ef6f79530be5eb872f1aed2e5', 30, 1, 'Authentication Token', '[]', 0, '2021-12-04 17:30:48', '2021-12-04 17:30:48', '2022-12-05 00:30:48'),
('14ef65ef0ee1cb50354422ee94892626935e9973d51d4070f0d27ab2d146bdb99aa8737add2190a1', 4, 1, 'Authentication Token', '[]', 0, '2021-12-01 10:05:43', '2021-12-01 10:05:43', '2022-12-01 17:05:43'),
('15d2f483b014e3a202f1e6856913d76f7d518e462f782155b1b74e8106861d883796caefe1e265a7', 1, 1, 'Authentication Token', '[]', 0, '2021-12-01 08:04:03', '2021-12-01 08:04:03', '2022-12-01 15:04:03'),
('18fd8eca0784427a4cfbb135714867cfce622f9575d2047d56df0ebc32efc08e2c838a425ef93461', 30, 1, 'Authentication Token', '[]', 0, '2021-12-04 17:27:32', '2021-12-04 17:27:32', '2022-12-05 00:27:32'),
('1abcaf22c820ba2f1424fe375f98154d72d2a6e63e7565ba68732e4d7852e3072156cc6fdbed8604', 1, 1, 'Authentication Token', '[]', 0, '2021-12-01 08:33:11', '2021-12-01 08:33:11', '2022-12-01 15:33:11'),
('22289106738bc5ab2d60b9b7f7df6e8af5dfafc9c0f55e97bdd91eadbf30f61e166c3f885f0f1f03', 21, 1, 'Authentication Token', '[]', 0, '2021-12-04 11:57:21', '2021-12-04 11:57:21', '2022-12-04 18:57:21'),
('342c4476d7c09ec43e2d26fb3468d042cb7374493cdb3d2b9839ad1fe8bbce604100ad7d5334f441', 30, 1, 'Authentication Token', '[]', 0, '2021-12-05 10:07:53', '2021-12-05 10:07:53', '2022-12-05 17:07:53'),
('359913014a9facf268ff9bbad643a18cfdef5f484014f5e4cfecefba1461cd834567db388324becd', 30, 1, 'Authentication Token', '[]', 0, '2021-12-04 17:25:05', '2021-12-04 17:25:05', '2022-12-05 00:25:05'),
('386322abb9e1e5c9fcf5310af94fbd939f0937d7574e1ddc17f89b96d5d0249a487e77b44af242b2', 6, 1, 'Authentication Token', '[]', 0, '2021-12-02 11:41:26', '2021-12-02 11:41:26', '2022-12-02 18:41:26'),
('3bb3107405e7df514798b86dcdf2017b738c39e0cddd320b529c703c9b27deca604681a6d078e4e2', 30, 1, 'Authentication Token', '[]', 0, '2021-12-04 17:19:50', '2021-12-04 17:19:50', '2022-12-05 00:19:50'),
('3ca5d6495aa5cd0dff69ff5c7ee5726e8e74ae6199312efc591c9b26ff20804f497311a77a9656d5', 21, 1, 'Authentication Token', '[]', 0, '2021-12-04 12:16:27', '2021-12-04 12:16:27', '2022-12-04 19:16:27'),
('424dedf928bb67ec633d1011891c7db33813a997e54c8ccf6b722c9a47aa75795cfe52d928ae046f', 30, 1, 'Authentication Token', '[]', 0, '2021-12-05 10:16:18', '2021-12-05 10:16:18', '2022-12-05 17:16:18'),
('46b3819f954f9af02ab6742a77a2baccb7f40e92def49f858ecca0fd02a956a7f79bb9edc18ab5d6', 25, 1, 'Authentication Token', '[]', 0, '2021-12-04 12:20:39', '2021-12-04 12:20:39', '2022-12-04 19:20:39'),
('47a4354908409de35af94f34f3f24bdd99389a06e9f25ab11906e79417d4f8323fbe4b0e07999708', 6, 1, 'Authentication Token', '[]', 0, '2021-12-02 11:40:16', '2021-12-02 11:40:16', '2022-12-02 18:40:16'),
('493a1ac67436b1e9bcb68d59ad575a5bce52f7d9e7ac5e9bcc9492b766d30a3b5ba0fe326153ca13', 7, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:41:05', '2021-12-02 13:41:05', '2022-12-02 20:41:05'),
('49f7b8ab3265a9d6108e4d81eec861ed0ea462ef1ca6a39d49e9cde4fd0c02637bf2cf47ca17c484', 19, 1, 'Authentication Token', '[]', 0, '2021-12-04 08:27:07', '2021-12-04 08:27:07', '2022-12-04 15:27:07'),
('4ab2b8dccf3467e4ac1ec4645ae943ea1f48a78df37e2d104cb73f30d942308d3af3479330375256', 18, 1, 'Authentication Token', '[]', 0, '2021-12-02 14:21:44', '2021-12-02 14:21:44', '2022-12-02 21:21:44'),
('53ba4168e5d2679e0b0260801c476bd7c5d795fce10c09b7a8e52d9644d5c8417415cff43c4ed4de', 19, 1, 'Authentication Token', '[]', 0, '2021-12-04 08:31:34', '2021-12-04 08:31:34', '2022-12-04 15:31:34'),
('53d3ab32ce2f37df5c96f6f0922461bd8f41b454cf5e8b661cdc0d39213dff73d53809abcf59fbdf', 6, 1, 'Authentication Token', '[]', 0, '2021-12-02 12:21:53', '2021-12-02 12:21:53', '2022-12-02 19:21:53'),
('57d718734218f0385cd3129a2600732c214cdf16ad8cca0fc368ba29db89bc7b57441cb61c258fd4', 30, 1, 'Authentication Token', '[]', 0, '2021-12-04 17:21:42', '2021-12-04 17:21:42', '2022-12-05 00:21:42'),
('6e919658ad3e9d449aa7a7bdf00adf460d67ecd6694cb7136d1d0110aade45338ce65391659e2035', 18, 1, 'Authentication Token', '[]', 0, '2021-12-02 14:20:23', '2021-12-02 14:20:23', '2022-12-02 21:20:23'),
('6ea6c9004d15cd48ca0db21690959c7e2e2188fa74d8a042c23a32dbd06712f1cf3a10054bbf4d6a', 26, 1, 'Authentication Token', '[]', 0, '2021-12-04 13:10:10', '2021-12-04 13:10:10', '2022-12-04 20:10:10'),
('6eda9a28469e72fbcea1f356aa0d9f239dbfdaf298583d54b90519a79455d6d4aa6dbddca9649dd6', 21, 1, 'Authentication Token', '[]', 0, '2021-12-04 12:01:40', '2021-12-04 12:01:40', '2022-12-04 19:01:40'),
('7122cc49372e40403b89f5d4250bfde881c85ad8e73c4286860a9c3669091b2b077f5844be07c257', 30, 1, 'Authentication Token', '[]', 0, '2021-12-05 10:04:28', '2021-12-05 10:04:28', '2022-12-05 17:04:28'),
('72d870224e4982689d2b299a26a1641db7ea761326d958ec6447e13a6bbaa91572043fd6aac2ba43', 19, 1, 'Authentication Token', '[]', 0, '2021-12-04 11:19:19', '2021-12-04 11:19:19', '2022-12-04 18:19:19'),
('76ae62b68a424480e785e71c082134dcd9912f9850ff435a8c038167eadc1b6f1f654ff9c3f3b482', 1, 1, 'Authentication Token', '[]', 0, '2021-12-01 07:27:53', '2021-12-01 07:27:53', '2022-12-01 14:27:53'),
('7b177d9b88e8f6cfa7714fff8f5b4abb94d7ec913c24cddb88d775f26e6f77fcf05fe62424335ebc', 30, 1, 'Authentication Token', '[]', 0, '2021-12-05 10:06:58', '2021-12-05 10:06:58', '2022-12-05 17:06:58'),
('7bb331a84d83d59aa1d7965db444bf44417013a9c6304ad469bcda7912cf531825a582937198bccd', 2, 1, 'Authentication Token', '[]', 0, '2021-12-01 10:03:02', '2021-12-01 10:03:02', '2022-12-01 17:03:02'),
('7f83cf028e9684710bc3c375dd9ce6d171dcaf05b7cd0142926aa4eee8e19b005193d10a645ce0a5', 29, 1, 'Authentication Token', '[]', 0, '2021-12-04 16:22:16', '2021-12-04 16:22:16', '2022-12-04 23:22:16'),
('846c76a27f8d2417fcb3990db20d1de445a134f91d89f5cb1b957d3b0b7530cda4f23697182d028e', 21, 1, 'Authentication Token', '[]', 0, '2021-12-04 11:50:56', '2021-12-04 11:50:56', '2022-12-04 18:50:56'),
('8630a0dc7e817d36206635f104803b4c1b4721040bd02df7f26bca560885f98e0fb1762180600c06', 19, 1, 'Authentication Token', '[]', 0, '2021-12-04 08:55:06', '2021-12-04 08:55:06', '2022-12-04 15:55:06'),
('88507792aac9dca4dd8f9cf0c8218b411c533c197ff4457eb995d372f67b40d1abee79a348b80cb0', 30, 1, 'Authentication Token', '[]', 0, '2021-12-05 09:12:39', '2021-12-05 09:12:39', '2022-12-05 16:12:39'),
('8b23d012987c336222a51aa5741d55056622465a4c3b57f94232fa204e8422aeb6fd9b65804be8fe', 6, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:17:51', '2021-12-02 13:17:51', '2022-12-02 20:17:51'),
('8e8df445364a482d0daf51bd484d9ba8d0122e468ad718a1b8f2fdb9267daa4fa3ef60ebe837a73a', 25, 1, 'Authentication Token', '[]', 0, '2021-12-04 12:23:13', '2021-12-04 12:23:13', '2022-12-04 19:23:13'),
('9276a3b58362c1d705b7815c2cf78dd20b4907f09a2370285a997783a5f950f4b558abc1c883ab0e', 4, 1, 'Authentication Token', '[]', 0, '2021-12-01 10:06:29', '2021-12-01 10:06:29', '2022-12-01 17:06:29'),
('929d0e268b17b3d0daae344f0b3c91ff64961c96a4a95a2b20ff8628bcb15b123f75829b08a02d7a', 26, 1, 'Authentication Token', '[]', 0, '2021-12-04 13:20:45', '2021-12-04 13:20:45', '2022-12-04 20:20:45'),
('9702e77cac3acb92cd3dbf7bcdf69d97e3fdf387700faec8cd7b6abcd0e7b09e7d25a2601a97dbc3', 18, 1, 'Authentication Token', '[]', 0, '2021-12-02 15:02:16', '2021-12-02 15:02:16', '2022-12-02 22:02:16'),
('a031260358788ea7d68af702b3110ef6c44011e7e3b05c8ac95ca7454f0878a98f25d3d1d7101a58', 21, 1, 'Authentication Token', '[]', 0, '2021-12-04 12:13:28', '2021-12-04 12:13:28', '2022-12-04 19:13:28'),
('a3b42f42876e2a7e04f7654309f05606888bdc27c77e4cc64d11259dd29d72f0319c318abee7ffab', 6, 1, 'Authentication Token', '[]', 0, '2021-12-02 12:52:12', '2021-12-02 12:52:12', '2022-12-02 19:52:12'),
('aa5ffcfb89dff88c96d3eabcfd75c70eb8309ed7ea2fa73d8bceeafb636c863f82f32f16b973b9fe', 25, 1, 'Authentication Token', '[]', 0, '2021-12-04 12:43:08', '2021-12-04 12:43:08', '2022-12-04 19:43:08'),
('aadce80b9722dbe49f7f6ce44ba2f0c40c10e71555e3895466917fb194d66ce3a06ca65dfbc6b9bb', 30, 1, 'Authentication Token', '[]', 0, '2021-12-04 17:31:58', '2021-12-04 17:31:58', '2022-12-05 00:31:58'),
('afde64ed2a0924fcca9549695eeffe790d3527120dd4b0036a4e43a265993a3fc2be977b8b67841b', 19, 1, 'Authentication Token', '[]', 0, '2021-12-04 10:17:11', '2021-12-04 10:17:11', '2022-12-04 17:17:11'),
('b95f18436512f24bbfe68d93105fa2b77d4dea88f0919141f0663f2a096287706c5a576af72892cf', 21, 1, 'Authentication Token', '[]', 0, '2021-12-04 11:50:55', '2021-12-04 11:50:55', '2022-12-04 18:50:55'),
('becb9f4652ae58ce13c1fad2d56209415aa09b336e144ed2bf462a0a3fb59bcf54cf082f1251b977', 6, 1, 'Authentication Token', '[]', 0, '2021-12-01 11:12:29', '2021-12-01 11:12:29', '2022-12-01 18:12:29'),
('c8739ccd5d409a384ab64f3218e4064df71c83843ed5ad06f834cd696bdc9892cd3c0446a7b38555', 19, 1, 'Authentication Token', '[]', 0, '2021-12-04 07:42:29', '2021-12-04 07:42:29', '2022-12-04 14:42:29'),
('c8eac03aa77744bb379e4b7bc3830c61d474a641bd5079b6774a9cfc2d5f4c3cf3abdcfe6831661e', 7, 1, 'Authentication Token', '[]', 0, '2021-12-02 13:37:13', '2021-12-02 13:37:13', '2022-12-02 20:37:13'),
('ca5bb17e7708cd075526247705351ba5ffa0120fdf4fca77d799619db0837811d8b0ca1416941a18', 6, 1, 'Authentication Token', '[]', 0, '2021-12-02 11:31:35', '2021-12-02 11:31:35', '2022-12-02 18:31:35'),
('cbd3809055c69ea1ae0183a15473b35e4bbbdbeef29cbcb339b33dc855449fc5c46b14d03afdc832', 2, 1, 'Authentication Token', '[]', 0, '2021-12-01 09:48:56', '2021-12-01 09:48:56', '2022-12-01 16:48:56'),
('cca549926d0008dcac18610b538e0307ca25b692fc7e4187767785cca51e65af7f05ecce9c1cc06f', 2, 1, 'Authentication Token', '[]', 0, '2021-12-01 09:48:39', '2021-12-01 09:48:39', '2022-12-01 16:48:39'),
('d4149ee27de7290e53424dcd6debb32ce7137348746193a80d2cb549a1b6ec5147330d2ba390f947', 30, 1, 'Authentication Token', '[]', 0, '2021-12-04 17:31:35', '2021-12-04 17:31:35', '2022-12-05 00:31:35'),
('e075bd6f9302d56d7b02fac6fb8f9aa863757d32150a62c9ceade7503136b8290a28e46d37b2bd2e', 4, 1, 'Authentication Token', '[]', 0, '2021-12-01 10:05:54', '2021-12-01 10:05:54', '2022-12-01 17:05:54'),
('e0a25a5c385de814aea907b91cdedbf7a2d6efa8c07669ad891e7ba933d0f0334e694904d13680cc', 6, 1, 'Authentication Token', '[]', 0, '2021-12-02 11:31:37', '2021-12-02 11:31:37', '2022-12-02 18:31:37'),
('e3a333b7df54cdd6dbef6b2bb9242e9ddca85b613be1a297ae5432fc43b63429f865ee144d17f24e', 19, 1, 'Authentication Token', '[]', 0, '2021-12-04 08:22:25', '2021-12-04 08:22:25', '2022-12-04 15:22:25'),
('ee78df834f6891fe518273c112f65c855de250a78b6c2d07108ff1bc9632ac5661065c49133615f9', 30, 1, 'Authentication Token', '[]', 0, '2021-12-05 10:05:34', '2021-12-05 10:05:34', '2022-12-05 17:05:34'),
('eef405ca0ee50527c67b6ee7bf72b67b741d67ae3cb4e4b4746139e4eb8e96163bbdd9a40e4a7b62', 6, 1, 'Authentication Token', '[]', 0, '2021-12-02 11:32:06', '2021-12-02 11:32:06', '2022-12-02 18:32:06'),
('f045a094d1a95431fa829c13681e78066a34c05fb2bbed5e2c53ab6f41769afaa448c6132acda05c', 19, 1, 'Authentication Token', '[]', 0, '2021-12-04 08:29:54', '2021-12-04 08:29:54', '2022-12-04 15:29:54'),
('f2b9a23a882339328d875ac326adcfccea808734231fd3e85a11e386a490a57229244ea579416b5c', 26, 1, 'Authentication Token', '[]', 0, '2021-12-04 15:06:07', '2021-12-04 15:06:07', '2022-12-04 22:06:07'),
('fa35a40b66df4266efd2c31a3d5552ef201984fd1279860097a0d9ccc92c3195f3d031c6d4361950', 25, 1, 'Authentication Token', '[]', 0, '2021-12-04 12:28:51', '2021-12-04 12:28:51', '2022-12-04 19:28:51'),
('fe852ee1d363bdccdf24e4e49976a4473fd4a50e6af25a2cdfb02326e7014e94833349312db05335', 30, 1, 'Authentication Token', '[]', 0, '2021-12-04 17:19:04', '2021-12-04 17:19:04', '2022-12-05 00:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'G2DO4REuQyfh5lTjWiGTdAqR1lFcyyOryJzlJnyC', NULL, 'http://localhost', 1, 0, 0, '2021-12-01 07:27:24', '2021-12-01 07:27:24'),
(2, NULL, 'Laravel Password Grant Client', 'wdTh2xL6bEtF64quKfc8e3kC8KbkE3xFG2ktSoJP', 'users', 'http://localhost', 0, 1, 0, '2021-12-01 07:27:24', '2021-12-01 07:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-01 07:27:24', '2021-12-01 07:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_murid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(30, 'vitos', 'xlhvitocarlen@gmail.com', '2021-12-05 05:18:56', '$2y$10$kHtT1zuc0JgP7d6RCEsd0Ohxsrb5MCIc5kX86BeAXa1dQKr2IvSlK', NULL, '2021-12-04 17:18:38', '2021-12-04 17:45:04'),
(31, 'tes', 'tes@gmail.com', NULL, '$2y$10$ygUKtkfX1fP5npafzUp8Z.x2ueocmE9wrCDoBMm9jk6ONJZNoBBGK', NULL, '2021-12-04 17:20:21', '2021-12-04 17:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `name`, `stok`, `harga`, `created_at`, `updated_at`) VALUES
(14, 'OVO (25.000)', 35, 26000, '2021-12-05 10:14:33', '2021-12-05 11:03:12'),
(15, 'Steam Wallet (10$)', 40, 150000, '2021-12-05 11:03:41', '2021-12-05 11:03:41'),
(16, 'Google Gift Card (20.000)', 100, 22500, '2021-12-05 11:04:30', '2021-12-05 11:04:30'),
(17, 'Pulsa Telkomsel (5.000)', 100, 6500, '2021-12-05 11:05:42', '2021-12-05 11:05:42'),
(18, 'Gemscool Cash (5.000)', 50, 52000, '2021-12-05 11:06:44', '2021-12-05 11:06:44'),
(19, 'Pulsa XL (5.000)', 99, 7000, '2021-12-05 11:07:11', '2021-12-05 11:07:11'),
(20, 'Valorant Point (1375 Points)', 50, 150000, '2021-12-05 11:09:19', '2021-12-05 11:09:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `makanans`
--
ALTER TABLE `makanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `makanans`
--
ALTER TABLE `makanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
