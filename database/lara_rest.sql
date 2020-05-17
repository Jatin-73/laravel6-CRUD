-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 08:16 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `lat`, `lng`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'vastral', '19.20', '19.30', 1, '2020-05-04 07:28:07', '2020-05-04 07:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `device_id` bigint(20) UNSIGNED NOT NULL,
  `device_token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`device_id`, `device_token`, `device_type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOWMzMDE4ZDgwNjRjYjQ1NDYzNGVjYTI2YTQxMjgxMjhlOTUxNmQzYzE5YTY2MzQ1YTlkNzhiMWU2N2MzM2M2ODg3ZWQ5N2FhMDMzNzQ5NDciLCJpYXQiOjE1ODg1OTcwODYsIm5iZiI6MTU4ODU5NzA4NiwiZXhwIjoxNjIwMTMzMDg2LCJzdWIiOiIiLCJzY29wZXMiOltdfQ.Av9UCT-fuw7ZkZ91_F_BihpIYmmiCIkfW1aggmFQ-sPwOqiB3nxmk-nrxG5Rl4YxGI9n3_w6Wd1285PEAkdtj0MVSpVD_w89NXSyEAdr3UZqP3XIFTQMqokNuozgrkVQaOIQybeebjQdQMaOO7j7blLi-u2giiLYkJw1lbi27_M5URfHuKRouB2ydGxwhLPnDgbEeNCJSm9VS9Zh-sRsmVqvmH7OZZDqmvplEz_hSZ_moKZd_5jtva0kP4fDTBA99asG08fE8Yh_9JHEgmWrmfuDOYgi9M007zssE0V5_HKqWZTb3Z6zONkFwlFhyhDfSc0DuPgN5hvzijEKDnX6--UyzsRE5Sq8ipShdXz8hgqeBoFzSh4kY3lF1mb_dlBVqyoMAipp6-IDjqktARREgaps7E_NzhJ4cc7iXFn_1oH7W-0PArwfjvyzoHTJPyzhzRN6yM-g7hryZ-neVoCfSFveCeiwxIv5_JC4-7mXKWtMW6B6Dihn0se12sL1gCtXz52E6UhQCFBuE-IEA0EoffFE1pxZCf39nDw_3d5P2ALFyKLSlPcgv0i_4rubh5rKQHk3qAqBOvNH43pqu6ogVYmUtA_InGAGbr1jJOCeSic511wy4h3Qccy8LUno7uKlH213axIHnC-O6cSe-13LSQwfm_FmQA_A7eSM8rB2q-Y', 'Android', 1, '2020-05-04 07:28:07', '2020-05-04 07:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `lastname`, `department`, `phone`, `created_at`, `updated_at`) VALUES
(9, 'Jatin', 'Mohane', 'IT', '1234567890', '2020-05-05 04:59:59', '2020-05-13 05:37:38'),
(10, 'Mickey', 'Mohane', 'Test', '7228883394', '2020-05-05 06:07:03', '2020-05-05 06:07:03'),
(11, 'Raju', 'Patel', 'IT', '1234567891', '2020-05-05 06:09:22', '2020-05-08 09:16:18'),
(21, 'Rahul', 'Raj', 'IT', '7895641235', '2020-05-06 00:19:38', '2020-05-06 00:19:38'),
(23, 'Mahi', 'Mahi', 'IT', '1234324565', '2020-05-06 02:13:50', '2020-05-06 02:13:50'),
(24, 'TTTT', 'TTT', 'TTT', '1599511595', '2020-05-06 02:17:35', '2020-05-06 03:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_05_04_042650_create_addresses_table', 1),
(10, '2020_05_04_044339_create_devices_table', 1),
(11, '2020_05_05_045427_create_employees_table', 2),
(12, '2020_05_05_050631_create_employees_table', 3),
(13, '2020_05_08_033147_create_products_table', 4);

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
('9c3018d8064cb454634eca26a4128128e9516d3c19a66345a9d78b1e67c33c6887ed97aa03374947', NULL, 1, 'MyApp', '[]', 0, '2020-05-04 07:28:06', '2020-05-04 07:28:06', '2021-05-04 12:58:06');

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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '2YXOIFQWwGtgOM0nNnVYjGWtNesaCa8huYXPpkHE', 'http://localhost', 1, 0, 0, '2020-05-04 07:28:01', '2020-05-04 07:28:01'),
(2, NULL, 'Laravel Password Grant Client', 'eVvYld6O9ACkJE1qxrQG5QoFxOj2FWfIYs7ACf8P', 'http://localhost', 0, 1, 0, '2020-05-04 07:28:01', '2020-05-04 07:28:01');

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
(1, 1, '2020-05-04 07:28:01', '2020-05-04 07:28:01');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_title`, `product_description`, `product_review`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'Mobile', 'Apple iPhone 11 Pro Max', 'The latest and the greatest iPhone from Apple comes with such horsepower that even PCs can start sweating at this point.', 10, '2020-05-08 03:34:40', '2020-05-08 09:12:40'),
(7, 'Mobile', 'Samsung Galaxy S20 Plus', 'Samsung\'s Galaxy S series flagship phone from 2020 comes with the high-end industry features.', 10, '2020-05-08 03:35:27', '2020-05-08 03:35:27'),
(8, 'Mobile', 'Apple iPhone 11', 'Probably the most popular iPhone model of recent times, the iPhone 11 doesn&#039;t dig as deep a hole in your pocket.', 11, '2020-05-08 03:38:21', '2020-05-13 06:00:51'),
(9, 'Laptop', 'Realme X50 Pro 5G', 'Realme X50 Pro serves as a clear show of intent from a brand that has already established its presence in the mid-range and entry-level price segments', 11, '2020-05-08 03:39:52', '2020-05-08 03:39:52'),
(13, 'Mobile', 'Apple iPhone XR', 'iPhone XR has become one of the best-selling iPhones of all time and part of the reason for the handset\'s success is that it offers similar features to the brand\'s flagship at a much cheaper price.', 10, '2020-05-08 10:06:43', '2020-05-08 10:06:43'),
(14, 'Mobile', 'Test', 'Test', 10, '2020-05-08 10:08:35', '2020-05-08 10:08:35'),
(15, 'Mobile', 'Test', 'Test', 10, '2020-05-08 10:09:03', '2020-05-08 10:09:03'),
(16, 'Mobile', 'Test', 'Testing', 10, '2020-05-08 10:09:25', '2020-05-08 10:09:47'),
(17, 'Test', 'Test', 'Test', 11, '2020-05-08 10:11:30', '2020-05-08 10:11:30'),
(18, 'Test', 'Test', 'Test', 11, '2020-05-08 10:11:44', '2020-05-08 10:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` tinyint(4) NOT NULL,
  `fb_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `device_token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isadmin` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `notification` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `document_verified` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `image`, `name`, `mobile`, `roleId`, `fb_id`, `category_id`, `account_status`, `device_token`, `device_type`, `language`, `otp`, `isadmin`, `notification`, `document_verified`, `created_at`, `updated_at`) VALUES
(1, 'vishal', 'vishal123@gmail.com', '$2y$10$WEIuwuGX2H7u9hptKDnwNOn2B.wspkeAD.b9zfuPab.cu8DP.LQ0e', 'http://localhost:8000/user_document/slide01.jpg', 'vishal', '1234567890', 5, 'YsTndA5GXJ', '0', '1', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOWMzMDE4ZDgwNjRjYjQ1NDYzNGVjYTI2YTQxMjgxMjhlOTUxNmQzYzE5YTY2MzQ1YTlkNzhiMWU2N2MzM2M2ODg3ZWQ5N2FhMDMzNzQ5NDciLCJpYXQiOjE1ODg1OTcwODYsIm5iZiI6MTU4ODU5NzA4NiwiZXhwIjoxNjIwMTMzMDg2LCJzdWIiOiIiLCJzY29wZXMiOltdfQ.Av9UCT-fuw7ZkZ91_F_BihpIYmmiCIkfW1aggmFQ-sPwOqiB3nxmk-nrxG5Rl4YxGI9n3_w6Wd1285PEAkdtj0MVSpVD_w89NXSyEAdr3UZqP3XIFTQMqokNuozgrkVQaOIQybeebjQdQMaOO7j7blLi-u2giiLYkJw1lbi27_M5URfHuKRouB2ydGxwhLPnDgbEeNCJSm9VS9Zh-sRsmVqvmH7OZZDqmvplEz_hSZ_moKZd_5jtva0kP4fDTBA99asG08fE8Yh_9JHEgmWrmfuDOYgi9M007zssE0V5_HKqWZTb3Z6zONkFwlFhyhDfSc0DuPgN5hvzijEKDnX6--UyzsRE5Sq8ipShdXz8hgqeBoFzSh4kY3lF1mb_dlBVqyoMAipp6-IDjqktARREgaps7E_NzhJ4cc7iXFn_1oH7W-0PArwfjvyzoHTJPyzhzRN6yM-g7hryZ-neVoCfSFveCeiwxIv5_JC4-7mXKWtMW6B6Dihn0se12sL1gCtXz52E6UhQCFBuE-IEA0EoffFE1pxZCf39nDw_3d5P2ALFyKLSlPcgv0i_4rubh5rKQHk3qAqBOvNH43pqu6ogVYmUtA_InGAGbr1jJOCeSic511wy4h3Qccy8LUno7uKlH213axIHnC-O6cSe-13LSQwfm_FmQA_A7eSM8rB2q-Y', 'Android', 'en', '600787', '0', '0', 0, '2020-05-04 07:28:07', '2020-05-04 07:28:07'),
(10, 'Jatin', 'jatinmohane73@gmail.com', '$2y$10$qRWeQ5v.3u4Y5AhWOPCYiOZ1aw1iU9WfEesJunlIyOYKpwMrI2CPa', 'http://localhost:8000/user_document/slide01.jpg', 'Jatin', '7228883394', 1, '0123456789abcde', '0', '0', '4URY0Z0F6T', 'Android', 'en', '621992', '0', '0', 0, '2020-05-07 02:08:52', '2020-05-07 02:08:52'),
(11, 'Rahul', 'rahul123@gmail.com', '$2y$10$X9jHhQhXpd8UiBqVIrzbsOMqJsAQS6C3uAy6ax1k/9/F/lw8SxgFq', 'http://localhost:8000/user_document/slide01.jpg', 'Rahul', '1234567890', 1, '0123456789abcde', '0', '0', '4URY0Z0F6T', 'Android', 'en', '843184', '1', '0', 0, '2020-05-07 05:42:32', '2020-05-07 05:42:32'),
(12, 'Jay', 'jay123@gmail.com', '$2y$10$vusZItw4bavSb6jvuwPhVeV0NvNYfaS389L5fSg25AyHkq/Pu4kcm', 'http://localhost:8000/user_document/slide01.jpg', 'Jay', '1234567890', 1, '0123456789abcde', '0', '0', '4URY0Z0F6T', 'Android', 'en', '699394', '0', '0', 0, '2020-05-07 05:45:37', '2020-05-07 05:45:37'),
(13, 'Viaks', 'viaks123@gmail.com', '$2y$10$MpodMykJr4N46U9HiHNPIeJ1NCykAA29WPQk5HsjUQIHGrcR7Ztdq', 'http://localhost:8000/user_document/slide01.jpg', 'Viaks', '1234567890', 1, '0123456789abcde', '0', '0', '4URY0Z0F6T', 'Android', 'en', '114394', '0', '0', 0, '2020-05-07 23:44:52', '2020-05-07 23:44:52'),
(14, 'Abhi', 'abhi123@gmail.com', '$2y$10$b2c8n4MrrpV4qa8yZab82OZrHgoxBAwlvjV2cUk6KgS0OWSzSD.F2', 'http://localhost:8000/user_document/slide01.jpg', 'Abhi', '1234567890', 1, '0123456789abcde', '0', '0', '4URY0Z0F6T', 'Android', 'en', '648496', '0', '0', 0, '2020-05-07 23:47:11', '2020-05-07 23:47:11'),
(15, 'Admin', 'admin123@gmail.com', '$2y$10$5/2h1r6itBwJs06PH1EeVOm21gZtom0Llo.etHT19KjQ9xlmEPJ4.', 'http://localhost:8000/user_document/slide01.jpg', 'Admin', '1234567890', 1, '0123456789abcde', '0', '1', '4URY0Z0F6T', 'Android', 'en', '522167', '0', '0', 0, '2020-05-08 05:25:19', '2020-05-08 05:25:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`device_id`),
  ADD KEY `devices_user_id_foreign` (`user_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `device_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `devices`
--
ALTER TABLE `devices`
  ADD CONSTRAINT `devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
