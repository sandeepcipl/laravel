-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 28, 2018 at 12:31 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniteonlinedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_24_101752_create_pages_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_key`, `page_content`, `page_status`, `created_at`, `updated_at`) VALUES
(3, 'aa', 'sssssssssssssstttttttttt', 1, '2018-12-27 04:11:19', '2018-12-27 04:28:58'),
(4, 'aarrrrrrrrr', 'ssssssssssssss', 1, '2018-12-27 04:11:32', '2018-12-27 04:29:06'),
(5, 'g', 'gggggg', 1, '2018-12-27 04:12:57', '2018-12-27 04:12:57'),
(6, 'gfffffffff', 'ggggggfffffffffffffff', 1, '2018-12-27 04:13:01', '2018-12-27 04:13:01'),
(7, 'gg', 'hhhhhhh', 1, '2018-12-27 04:13:09', '2018-12-27 04:13:09'),
(8, 'qqe88', 'qqqqqqqqqqq', 1, '2018-12-27 04:13:18', '2018-12-27 04:26:19'),
(9, 'qqww', 'qqqqqqqqqqqw', 1, '2018-12-27 04:13:23', '2018-12-27 04:13:23'),
(10, 'qqww1', 'qqqqqqqqqqqw2', 1, '2018-12-27 04:13:27', '2018-12-27 04:13:27'),
(11, 'qqww1w', 'qqqqqqqqqqqw2', 1, '2018-12-27 04:13:31', '2018-12-27 04:13:31'),
(12, 'qqww1www', 'qqqqqqqqqqqw2', 1, '2018-12-27 04:13:33', '2018-12-27 04:13:33'),
(13, 'yyssssssssssss', 'qqqqqqqqqqqw2ssssssssss', 1, '2018-12-27 04:13:37', '2018-12-27 04:26:05'),
(14, 'yytttttt', 'qqqqqqqqqqqw2', 1, '2018-12-27 04:13:41', '2018-12-27 04:13:41'),
(15, 'yytttttt4', 'qqqqqqqqqqqw2', 1, '2018-12-27 04:13:45', '2018-12-27 04:13:45'),
(16, 'yytttttt44', 'qqqqqqqqqqqw2', 1, '2018-12-27 04:13:50', '2018-12-27 04:13:50'),
(17, 'tttttttttttt', 'tttttttttttt', 1, '2018-12-27 04:26:50', '2018-12-27 04:26:50'),
(18, 'sssss', 'ssssssssssssssssssssss', 1, '2018-12-27 04:28:45', '2018-12-27 04:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sandeeptcy', 'sandeeptcy@gmail.com', NULL, '$2y$10$Sqd2o4h84zefCpP4kTRcoO5dSRxld9zwqnimozeBlFK71sVC1nGO6', 'EUY3bsgvkEhFXE0nCvZTjxNgycEDWEMJLQO2ZqvShsJgtWWzdhe0Aj2ys82v', '2018-12-17 01:10:48', '2018-12-17 01:10:48'),
(2, 'sandeeptcy1', 'sandeeptcy1@gmail.com', NULL, '$2y$10$sL1vcDwpGy7jRLfbtGAcxOGsq2Zsx33J3xjs8ERJcma52PlcGYULa', NULL, '2018-12-17 03:31:35', '2018-12-17 03:31:35'),
(3, 'sandeeptcy333', 'sandeeptcysss@gmail.com', NULL, '$2y$10$RdN0K80pmKOwf5.258WHT.rVf55WrCsMTxw5TOkdEMNeASzjybbMG', NULL, '2018-12-17 07:05:40', '2018-12-17 07:05:40'),
(4, 'testuser', 'testuser@gmail.com', NULL, '$2y$10$njn.510achObIwlL/m0ER.HFm.ZG0SGMnqsj1m9n.0WypfQgoJXp.', NULL, '2018-12-24 03:57:21', '2018-12-24 03:57:21'),
(5, 'testuser1', 'testuser1@gmail.com', NULL, '$2y$10$2QJqoDuPgM/UO7Oyru0/BeePcZk6LEfgGg0wOmXYc2B2T64U9l3.S', NULL, '2018-12-24 03:59:06', '2018-12-24 03:59:06'),
(6, 'testuser2', 'testuser2testuser2@gmail.com', NULL, '$2y$10$/VHhR1R1RYrFuZiXrY3kwuJIIa1Z7uoA6NTfUsN3d6qMAvEpt1DcW', NULL, '2018-12-24 04:04:19', '2018-12-24 04:04:19'),
(7, 'testuser2', 'testuser23testuser2@gmail.com', NULL, '$2y$10$RBSCX69f1a441Uj3XEPc3eGmv9GPTv1pa75JfY3xZFNt7dWkH13VC', NULL, '2018-12-24 04:08:55', '2018-12-24 04:08:55'),
(8, 'testuser2s', 'testuser23ddtestuser2@gmail.com', NULL, '$2y$10$ff1rvRkZuqpp00tmFtdo..KS1K5861IT14uNCwf/kJz5WTRU/gTCS', NULL, '2018-12-24 04:09:19', '2018-12-24 04:09:19'),
(9, 'TESTabc', 'TESTabc@GMAIL.COM', NULL, '$2y$10$xZxHuipvzwsTfGI/0mxG9uzduh/1OurNcosKEW8S0Lj5xVHKejYay', NULL, '2018-12-24 04:38:38', '2018-12-24 04:38:38'),
(10, 'TESTabcSS', 'TESTabcSS@GMAIL.COM', NULL, '$2y$10$JrNmgdLbNITZ3Xo4hvNJVePjGjhvxsDB68dd1uR.hQ4QYq4Fl0rgW', NULL, '2018-12-24 04:41:20', '2018-12-24 04:41:20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
