-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2020 at 12:12 PM
-- Server version: 8.0.20-0ubuntu0.20.04.1
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `fleets`
--

CREATE TABLE `fleets` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crew` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `armament` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fleets`
--

INSERT INTO `fleets` (`id`, `name`, `class`, `crew`, `image`, `value`, `status`, `armament`, `created_at`, `updated_at`) VALUES
(1, 'Devastator', 'Star Destroyer', 35000, 'https:\\url.to.image', 1999.99, 'operational', '[{\"title\":\"Turbo Laser\",\"qty\":\"60\"},{\"title\":\"Ion Cannons\",\"qty\":\"60\"},{\"title\":\"Tractor Beam\",\"qty\":\"10\"}]', '2020-07-15 10:05:48', '2020-07-15 10:05:48'),
(3, 'Charlie Mega', 'Charlie Mega', 35000, 'https:\\url.to.image', 1999.99, 'operational', '[{\"title\":\"MBT Turbo Laser\",\"qty\":\"60\"},{\"title\":\"MBT Ion Cannons\",\"qty\":\"60\"},{\"title\":\"MBT Tractor Beam\",\"qty\":\"10\"}]', '2020-07-15 10:22:29', '2020-07-15 10:22:29'),
(4, 'Charlie Mega', 'Charlie Mega', 35000, 'https:\\url.to.image', 1999.99, 'operational', '[{\"title\":\"MBT Turbo Laser\",\"qty\":\"60\"},{\"title\":\"MBT Ion Cannons\",\"qty\":\"60\"},{\"title\":\"MBT Tractor Beam\",\"qty\":\"10\"}]', '2020-07-15 10:42:48', '2020-07-15 10:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2020_07_14_143841_create_users_table', 1),
(12, '2020_07_15_085849_create_fleet_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'teddybak@hotmail.com', '$2y$10$0N39X.JUjBRja3W30OIsZeOhGgdjNjLWbKAGsttAyEwu1DsC5tawK', 'DrAkV9ad9xT4KpQ1Hf1OyufBlUMuDtbqJnijLySWqrTG0Kgp1gjGmsYWvSnh', NULL, '2020-07-15 10:37:43', '2020-07-15 10:37:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fleets`
--
ALTER TABLE `fleets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `fleets`
--
ALTER TABLE `fleets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
