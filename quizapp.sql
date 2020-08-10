-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2020 at 10:10 AM
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
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint UNSIGNED NOT NULL,
  `question_id` int NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'backend programming', 1, '2020-07-22 14:06:15', '2020-07-22 14:06:15'),
(2, 1, 'front end programming', 0, '2020-07-22 14:06:15', '2020-07-22 14:06:15'),
(3, 1, 'software', 0, '2020-07-22 14:06:16', '2020-07-22 14:06:16'),
(4, 1, 'recreational', 0, '2020-07-22 14:06:16', '2020-07-22 14:06:16'),
(5, 2, '7.1', 0, '2020-07-22 14:06:58', '2020-07-22 14:06:58'),
(6, 2, '7.x', 1, '2020-07-22 14:06:58', '2020-07-22 14:06:58'),
(7, 2, '7.2', 0, '2020-07-22 14:06:58', '2020-07-22 14:06:58'),
(8, 2, '6.x', 0, '2020-07-22 14:06:59', '2020-07-22 14:06:59'),
(9, 3, 'backend programming language', 0, '2020-07-22 14:08:28', '2020-07-22 14:08:28'),
(10, 3, 'php framework', 0, '2020-07-22 14:08:28', '2020-07-22 14:08:28'),
(11, 3, 'hypertext protocol language', 1, '2020-07-22 14:08:28', '2020-07-22 14:08:28'),
(12, 3, 'used for web apps', 0, '2020-07-22 14:08:29', '2020-07-22 14:08:29'),
(21, 4, 'hypertext protocol', 1, '2020-07-22 14:11:42', '2020-07-22 14:11:42'),
(22, 4, 'backend programming', 0, '2020-07-22 14:11:42', '2020-07-22 14:11:42'),
(23, 4, 'hop text program', 0, '2020-07-22 14:11:43', '2020-07-22 14:11:43'),
(24, 4, 'backend programming language', 0, '2020-07-22 14:11:43', '2020-07-22 14:11:43'),
(25, 5, '7.1', 0, '2020-07-22 14:12:01', '2020-07-22 14:12:01'),
(26, 5, '7.4', 1, '2020-07-22 14:12:02', '2020-07-22 14:12:02'),
(27, 5, '6.8', 0, '2020-07-22 14:12:02', '2020-07-22 14:12:02'),
(28, 5, '7.2', 0, '2020-07-22 14:12:02', '2020-07-22 14:12:02');

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_07_19_100501_create_quizzes_table', 1),
(13, '2020_07_19_100545_create_questions_table', 1),
(14, '2020_07_19_100605_create_answers_table', 1),
(15, '2020_07_19_100947_create_quiz_user_table', 1),
(16, '2020_07_19_102605_create_results_table', 1);

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `quiz_id`, `created_at`, `updated_at`) VALUES
(1, 'which is laravel used for?', 1, '2020-07-22 14:06:15', '2020-07-22 14:06:15'),
(2, 'which is the latest version of laravel?', 1, '2020-07-22 14:06:58', '2020-07-22 14:06:58'),
(3, 'which is not correct about laravel', 1, '2020-07-22 14:08:28', '2020-07-22 14:08:28'),
(4, 'which is the meaning of php????', 2, '2020-07-22 14:09:09', '2020-07-22 14:11:41'),
(5, 'which is the latest version of php?', 2, '2020-07-22 14:10:09', '2020-07-22 14:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `minutes` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `description`, `minutes`, `created_at`, `updated_at`) VALUES
(1, 'Laravel test', 'laravel exam', 10, '2020-07-22 14:04:42', '2020-07-22 14:04:42'),
(2, 'PHP test', 'laravel questions', 9, '2020-07-22 14:04:58', '2020-07-22 14:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_user`
--

CREATE TABLE `quiz_user` (
  `id` bigint UNSIGNED NOT NULL,
  `quiz_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_user`
--

INSERT INTO `quiz_user` (`id`, `quiz_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, NULL, NULL),
(2, 2, 6, NULL, NULL),
(3, 2, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `answer_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `question_id`, `quiz_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 1, 1, '2020-07-22 18:23:46', '2020-07-22 18:23:46'),
(2, 8, 2, 1, 5, '2020-07-22 18:23:55', '2020-07-22 18:23:55'),
(3, 8, 3, 1, 11, '2020-07-22 18:24:02', '2020-07-22 18:24:02');

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
  `visible_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `visible_password`, `occupation`, `phone`, `address`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'timmy', 'erictumuti114@gmail.com', NULL, '$2y$10$e3901MxJ2E7VEXHExmLEjOqtOTglnKFe2SEq8Bzp0m3BWB2hpoK6u', '   erictumuti', 'web developer', '0712688274', 'nairobi', 0, NULL, '2020-07-22 11:49:26', '2020-07-22 11:53:58'),
(2, 'jelvy', 'jelvy@gmail.com', NULL, '$2y$10$6h0I.XXG9ZhAwsFhFh0apeejbfPPvl9SR9F8Pg7gYdyRAuuwN3Y6a', '   jelvy254', 'php developer', '0721208015', 'nairobi', 0, NULL, '2020-07-22 11:53:16', '2020-07-22 11:53:16'),
(4, 'john doe', 'johndoe114@gmail.com', NULL, '$2y$10$JWiLQaWUguQtEUIyFJHnfeHw.a.Y7uWQmwu07KGVAKGdW7xtuMkL.', '    johndoe123 ', 'front end developer', '072333', 'england', 0, NULL, '2020-07-22 12:05:53', '2020-07-22 12:05:53'),
(5, 'admin', 'admin1234@gmail.com', '2020-07-22 12:11:32', '$2y$10$b4ZnBwMsuTzNH7yynFEMu.3chz1F8a/8NuoYWp0gnY.3xxJl63lH.', 'password', 'CEO', '0741900443', 'Kenya', 1, NULL, '2020-07-22 12:11:32', '2020-07-22 12:11:32'),
(6, 'charles', 'charles@gmail.com', NULL, '$2y$10$.ncyk3s9G.QrnvoI8tqW6eqifYK7Ud3gBjZwF9JrCqOgosGgdVBaq', '   ', 'php developer', '0712688274', 'england', 0, NULL, '2020-07-22 12:14:03', '2020-07-22 12:18:56'),
(7, 'grace', 'grace@yahoo.com', NULL, '$2y$10$2i0qhMantA.RFAy6UwpUJeoAx3dk/aN2UKi03EU8Y8DIJBbVkgUp6', NULL, NULL, NULL, NULL, 0, NULL, '2020-07-22 12:37:37', '2020-07-22 12:37:37'),
(8, 'tdat', 'atuhor@gmail.com', NULL, '$2y$10$Eti5Xnd0Vn9jmLGaQ6Kq.eKJLSaeKhjxvmLosyMBhZYbRQ5YNtbmO', NULL, NULL, NULL, NULL, 0, NULL, '2020-07-22 12:38:45', '2020-07-22 12:38:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_user`
--
ALTER TABLE `quiz_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_user`
--
ALTER TABLE `quiz_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
