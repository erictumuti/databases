-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2020 at 10:11 AM
-- Server version: 8.0.20-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photoshare`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `description`, `slug`, `image`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'technology', 'technology album', 'technology', 'CxWYc9snZSMbbURVLtRtQ28BUxPXyPMwTerkp6yM.jpeg', 4, 1, '2020-08-08 02:26:44', '2020-08-08 02:26:44'),
(5, 'Wildlife', 'wildlife album', 'wildlife', 'iuhbMZXMlSUJ6cXcuSuIvjoUfBUWeyRaQXlYKIqw.jpeg', 2, 1, '2020-08-08 02:28:03', '2020-08-08 02:28:03'),
(6, 'creative', 'creative album', 'creative', 'oQWW3NdMQmy9NBv5Rt50ywExY8yAMN0LSAW5IITx.jpeg', 9, 1, '2020-08-08 02:28:41', '2020-08-08 02:28:41'),
(7, 'Underwater', 'underwater album', 'underwater', 'GOMCxkv5kyNrhS9jyoofdEgQ8U5TE32JambSiqLe.jpeg', 6, 1, '2020-08-08 02:29:29', '2020-08-08 02:29:29'),
(8, 'foods', 'foods album', 'foods', 'omlxfCIWjQcmRUdrGt2l5Rel5TQ6DBdpyy9s2oGQ.jpeg', 5, 1, '2020-08-08 16:34:01', '2020-08-08 16:34:01'),
(9, 'landscape album', 'landscape album', 'landscape-album', 'sT3B86QJ1yZXkSs5XqK0Rj67XJNsEx80Elrn6q1u.jpeg', 8, 2, '2020-08-09 11:06:20', '2020-08-09 11:06:20'),
(10, 'animal album', 'animal album', 'animal-album', 'xrfMkRQW893v3JdaFP1WjD7PM9TUznub1vMaaG3h.jpeg', 5, 2, '2020-08-09 11:07:42', '2020-08-09 11:07:42'),
(11, 'architecture album', 'architecture album', 'architecture-album', 'XrvMfCWjtjw5QCjEfCtJ0BZCn1OgpmgXl8O7DEiC.jpeg', 10, 3, '2020-08-09 11:12:54', '2020-08-09 11:12:54'),
(12, 'nature album', 'nature album', 'nature-album', 'hBvKBMr0iLB7GJVaw0rXoBDO8z4eOzu5T6iGQCkY.jpeg', 1, 3, '2020-08-09 11:13:40', '2020-08-09 11:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nature', '2020-08-07 04:48:03', '2020-08-07 04:48:03'),
(2, 'Wildlife', '2020-08-07 04:48:03', '2020-08-07 04:48:03'),
(3, 'People', '2020-08-07 04:48:04', '2020-08-07 04:48:04'),
(4, 'Technology', '2020-08-07 04:48:04', '2020-08-07 04:48:04'),
(5, 'Animals', '2020-08-07 04:48:04', '2020-08-07 04:48:04'),
(6, 'Underwater', '2020-08-07 04:48:04', '2020-08-07 04:48:04'),
(7, 'Night', '2020-08-07 04:48:04', '2020-08-07 04:48:04'),
(8, 'Landscape', '2020-08-07 04:48:04', '2020-08-07 04:48:04'),
(9, 'Creative', '2020-08-07 04:48:05', '2020-08-07 04:48:05'),
(10, 'Architecture', '2020-08-07 04:48:05', '2020-08-07 04:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint UNSIGNED NOT NULL,
  `follower_id` int NOT NULL,
  `following_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `follower_id`, `following_id`, `created_at`, `updated_at`) VALUES
(9, 1, 2, NULL, NULL),
(15, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `album_id`, `created_at`, `updated_at`) VALUES
(15, 'IaisWsX6OhaoAsZ2xNQc1vN91CbEI9FzqhYBbWgM.jpeg', 4, '2020-08-08 16:23:35', '2020-08-08 16:23:35'),
(16, '00W8EroQOWyvwnwHXQTxCpt2cciFwbSPCMm5Ziny.jpeg', 4, '2020-08-08 16:23:35', '2020-08-08 16:23:35'),
(17, 'eSLhohMVBIWiLA188dStkQ0T7o1NPPf1DVQF5ILv.jpeg', 4, '2020-08-08 16:23:36', '2020-08-08 16:23:36'),
(18, '71Zt6heHdOwtfOPAr2apw9zyKNj8OknhHT6sIi0O.jpeg', 4, '2020-08-08 16:23:36', '2020-08-08 16:23:36'),
(19, 'niHH6lyWz6z3YjGZJLPzrc6lhhRJKbrJQ9iyPbvz.jpeg', 4, '2020-08-08 16:23:36', '2020-08-08 16:23:36'),
(20, 'j34QzJNOV9AHXDH1ST9aYlgRMWzmnn4fu8ktFUjh.jpeg', 4, '2020-08-08 16:23:36', '2020-08-08 16:23:36'),
(21, 'w0aKkJ1iporcJR1VYBCMpcuIOB0FOFud6sPiuNcW.jpeg', 8, '2020-08-08 16:34:59', '2020-08-08 16:34:59'),
(27, 'nhhyAJULdhPkJTiFGEdCbD2SVM2PJp0phkINHVLg.jpeg', 8, '2020-08-08 17:40:28', '2020-08-08 17:40:28'),
(28, 'DujTwSa569DgSItngurn0bvfR9PfYeAC63GWxNZS.jpeg', 8, '2020-08-08 17:40:28', '2020-08-08 17:40:28'),
(29, 'hiJLCmuig2njat2aiQ2BsApSMw41CVevroVeKeXj.jpeg', 8, '2020-08-08 17:40:28', '2020-08-08 17:40:28'),
(30, 'asx3T4zNl4GxmO1fDQZcp2NVy7kHlsTClYS1LS8M.jpeg', 8, '2020-08-08 17:40:28', '2020-08-08 17:40:28'),
(31, '56WIXSe00kbJWB2iTOfoRAjCnll2HNi9QNKhCt9I.jpeg', 8, '2020-08-08 17:40:29', '2020-08-08 17:40:29'),
(33, 'UfrybcesPv9B4sTiDkPYcN0zQYuIzu2wboITiR7h.jpeg', 9, '2020-08-09 11:08:16', '2020-08-09 11:08:16'),
(34, 'XrfuDSotZakzk5Bq05qS52sUgvBO4DB8zXlVFExM.jpeg', 9, '2020-08-09 11:08:16', '2020-08-09 11:08:16'),
(35, 'np5olR0oFrU3mt5ndhtJHlehJ2uRFUhFfKFz8zlR.jpeg', 9, '2020-08-09 11:08:16', '2020-08-09 11:08:16'),
(36, 'oPOBDRgtDiIhMRJAuceHxTBATrvtgI9UsaRW0WFP.jpeg', 9, '2020-08-09 11:08:16', '2020-08-09 11:08:16'),
(37, 'TiSBahDFdyzkfqhnC2tzKD1WkneHlg2OxbF3xdyy.jpeg', 9, '2020-08-09 11:08:17', '2020-08-09 11:08:17'),
(38, 'b9R6cSij3Y3YZinT9rHlelr8QRMvTsfWLtllircp.jpeg', 9, '2020-08-09 11:08:17', '2020-08-09 11:08:17'),
(39, 'VMUACBpfCUVkTLebvgpljlWboWU4WTQNAJm1S0Yr.jpeg', 9, '2020-08-09 11:08:17', '2020-08-09 11:08:17'),
(40, 'ryDKWgqsUL5FUEhUOnWbi7OXb3PD0QeyIdcaBbPD.jpeg', 10, '2020-08-09 11:08:44', '2020-08-09 11:08:44'),
(41, '3VS28lNAoJCMgTUITWKHfgizmVdo8ar3WqNBxQub.jpeg', 10, '2020-08-09 11:08:44', '2020-08-09 11:08:44'),
(42, 'vMuA1288MEkN6lPAAtKgpsIckFgQOMCjWzz3rREM.jpeg', 10, '2020-08-09 11:08:45', '2020-08-09 11:08:45'),
(43, 'Z1RJScABfRB7iaIK38hJZsLAzJYYBoVqyfqgUqFL.jpeg', 10, '2020-08-09 11:08:45', '2020-08-09 11:08:45'),
(44, '8g0T0bT0ezI0EIzo32GQSAcYqIHSBms3U3k6pabO.jpeg', 10, '2020-08-09 11:08:45', '2020-08-09 11:08:45'),
(45, 'EN1lgIJqe8srJXQMPTKxc0nmsv36c1ARcz8RXoYc.jpeg', 10, '2020-08-09 11:08:45', '2020-08-09 11:08:45'),
(46, 'd1FBIX8dFDFvHD2ckbl280Dm7zu4u4uBtGeuiSTY.jpeg', 10, '2020-08-09 11:08:46', '2020-08-09 11:08:46'),
(47, 'BbqXByZlZLv0nk8lG3IwAzvlGrFe50nJ81W9M8pr.jpeg', 11, '2020-08-09 11:14:11', '2020-08-09 11:14:11'),
(48, '0OV95Gbb8B6Y2iCWqZeoEWsJQrJAKt1hF25xlTmA.jpeg', 11, '2020-08-09 11:14:12', '2020-08-09 11:14:12'),
(49, '2PhTwgZyNACHm03j48ROaGcjjxWwbfJB6J5mTPM3.jpeg', 11, '2020-08-09 11:14:12', '2020-08-09 11:14:12'),
(50, '1NwaDR3EakUdbSrhZXdGp9pTxtlqk3swHVqVMZUc.jpeg', 11, '2020-08-09 11:14:12', '2020-08-09 11:14:12'),
(51, 'tAs9ZD683nbZ74hbbw1gNT9c8Nb3cCO9RvZ5DG9m.jpeg', 11, '2020-08-09 11:14:12', '2020-08-09 11:14:12'),
(52, 'WqplJ1j8GJAotjHb4bJbcodd0ZQulMGKq2zOwVlo.jpeg', 11, '2020-08-09 11:14:13', '2020-08-09 11:14:13'),
(53, 'QeRhUDvpzOQyMV7YhCi5kTUPrbAticIdoYVQ3WU3.jpeg', 11, '2020-08-09 11:14:13', '2020-08-09 11:14:13'),
(54, '8Ra3g3JX0jq4rGBkob0TxZS86GiJv1xHrAeIsU37.jpeg', 11, '2020-08-09 11:14:13', '2020-08-09 11:14:13'),
(55, '2ugAcmOUu2Z4yIAqpFWFtSaFKeg8HlyxV1QPuD98.jpeg', 11, '2020-08-09 11:14:13', '2020-08-09 11:14:13'),
(56, 'SnxjdA6Re2wnlSNn7IcJ4DbPDQHGEOXAqsQDCaA7.jpeg', 12, '2020-08-09 11:14:46', '2020-08-09 11:14:46'),
(57, 'Mgg8wvAGkNcNwfrRUx9FqZeDWro9Lh5Smooh5le0.jpeg', 12, '2020-08-09 11:14:46', '2020-08-09 11:14:46'),
(58, 'EMzjuvRRFdxUZLX6NC4eBaAs7zTz4tN5hpCV17DY.jpeg', 12, '2020-08-09 11:14:46', '2020-08-09 11:14:46'),
(59, 'v7OHhU7DtmLFtlEQJNvHRjZkYiP66ty0gAnHvhSa.jpeg', 12, '2020-08-09 11:14:46', '2020-08-09 11:14:46'),
(60, 'ukViucNOaQmXuh1Fj3TdTPjjRL2DLxBLmlZEb6qA.jpeg', 12, '2020-08-09 11:14:47', '2020-08-09 11:14:47'),
(61, 'SmyEH4IBP0oytA1vEIP1GwAW84MwzEnwJE6Hd64K.jpeg', 12, '2020-08-09 11:14:47', '2020-08-09 11:14:47'),
(62, '1uSsycwQqkb1KOZjSrMXQ2MaCiuCwiZo4aKIE7eE.jpeg', 12, '2020-08-09 11:14:47', '2020-08-09 11:14:47');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_28_180908_create_albums_table', 1),
(5, '2020_07_28_180942_create_images_table', 1),
(6, '2020_07_28_181111_create_categories_table', 1),
(7, '2020_07_28_181129_create_followers_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `bgpic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `bgpic`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'eric tumuti', 'erictumuti114@gmail.com', NULL, '$2y$10$fE1zICcimUo0qM1aHg/EzOd7CYsn1yI.dobOqP2fN0R30oKhPN9d6', '1596786861.jpg', NULL, NULL, '2020-08-07 04:53:28', '2020-08-07 04:54:21'),
(2, 'timmy', 'timmy@gmail.com', NULL, '$2y$10$X6aw/VTO9zdObc0dDFndUuhGzEqyIQWg4ZzUmx0fzkREaFn0UGlOe', 'default.png', NULL, NULL, '2020-08-08 19:59:40', '2020-08-08 19:59:40'),
(3, 'maina', 'charles@gmail.com', NULL, '$2y$10$/uG.hFDezVV6LD59BPXf4.pz3YGCynqEn4sPQ1Ug2rEOBa.j.S0LW', 'default.png', NULL, NULL, '2020-08-09 10:19:45', '2020-08-09 10:19:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
