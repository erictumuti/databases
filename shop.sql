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
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'laptop', 'laptop', 'laptop category', 'files/dell.jpeg', '2020-07-24 13:33:17', '2020-07-24 13:33:17'),
(2, 'mobile phone', 'mobile-phone', 'mobile phone category', 'files/oppo.jpeg', '2020-07-24 13:33:17', '2020-07-24 13:33:17'),
(3, 'book', 'book', 'book category', 'files/book2.jpeg', '2020-07-24 13:33:17', '2020-07-24 13:33:17');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_23_121423_create_categories_table', 1),
(5, '2020_07_23_164533_create_subcategories_table', 1),
(6, '2020_07_23_203852_create_products_table', 1),
(7, '2020_07_25_104138_create_orders_table', 2),
(8, '2020_07_26_220003_create_sliders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `created_at`, `updated_at`) VALUES
(1, 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:4;a:5:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"books\";s:5:\"price\";s:2:\"49\";s:3:\"qty\";s:1:\"4\";s:5:\"image\";s:18:\"product/book3.jpeg\";}}s:8:\"totalQty\";i:4;s:10:\"totalPrice\";i:196;}', '2020-07-25 20:04:08', '2020-07-25 20:04:08'),
(2, 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:1;a:5:{s:2:\"id\";i:1;s:4:\"name\";s:10:\"HP Laptops\";s:5:\"price\";s:3:\"827\";s:3:\"qty\";i:1;s:5:\"image\";s:19:\"product/Laptop3.jpg\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:827;}', '2020-07-25 20:05:44', '2020-07-25 20:05:44'),
(3, 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:3;a:5:{s:2:\"id\";i:3;s:4:\"name\";s:13:\"mobile phones\";s:5:\"price\";s:3:\"247\";s:3:\"qty\";i:1;s:5:\"image\";s:19:\"product/iphone.jpeg\";}i:7;a:5:{s:2:\"id\";i:7;s:4:\"name\";s:10:\"Blackberry\";s:5:\"price\";s:3:\"200\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/RxoURMsLfnoudKDx77SZIWJlHYe8Fb6CJltlaOpE.jpeg\";}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:447;}', '2020-07-25 20:08:31', '2020-07-25 20:08:31'),
(4, 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:4;a:5:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"books\";s:5:\"price\";s:2:\"49\";s:3:\"qty\";i:1;s:5:\"image\";s:18:\"product/book3.jpeg\";}i:2;a:5:{s:2:\"id\";i:2;s:4:\"name\";s:12:\"DELL Laptops\";s:5:\"price\";s:3:\"808\";s:3:\"qty\";i:1;s:5:\"image\";s:16:\"product/lap1.jpg\";}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:857;}', '2020-07-25 20:29:44', '2020-07-25 20:29:44'),
(5, 3, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:1;a:5:{s:2:\"id\";i:1;s:4:\"name\";s:10:\"HP Laptops\";s:5:\"price\";s:3:\"827\";s:3:\"qty\";i:1;s:5:\"image\";s:19:\"product/Laptop3.jpg\";}i:3;a:5:{s:2:\"id\";i:3;s:4:\"name\";s:13:\"mobile phones\";s:5:\"price\";s:3:\"247\";s:3:\"qty\";i:1;s:5:\"image\";s:19:\"product/iphone.jpeg\";}i:2;a:5:{s:2:\"id\";i:2;s:4:\"name\";s:12:\"DELL Laptops\";s:5:\"price\";s:3:\"808\";s:3:\"qty\";i:1;s:5:\"image\";s:16:\"product/lap1.jpg\";}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:1882;}', '2020-07-26 18:12:39', '2020-07-26 18:12:39');

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
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `description`, `price`, `image`, `additional_info`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'HP Laptops', 'This is the decsription of hp product', '827', 'product/Laptop3.jpg', 'This is additional info of hp', '2020-07-24 13:33:19', '2020-07-24 13:33:19'),
(2, 3, 1, 'DELL Laptops', 'This is the decsription of dell product', '808', 'product/lap1.jpg', 'This is additional info of dell', '2020-07-24 13:33:19', '2020-07-24 13:33:19'),
(3, 3, 4, 'mobile phones', 'This is the decsription of iphone product', '247', 'product/iphone.jpeg', 'This is additional info of iphone', '2020-07-24 13:33:19', '2020-07-24 13:33:19'),
(4, 3, 5, 'books', 'This is the decsription of books product', '49', 'product/book3.jpeg', 'This is additional info of books', '2020-07-24 13:33:19', '2020-07-24 13:33:19'),
(5, 2, 3, 'Oppo', 'sumsung', '20', 'public/product/rgCBQyNHXY1pkki2qmbGyqMrxxpk2xzXWFcDEp4O.jpeg', 'sumsung', '2020-07-24 13:37:48', '2020-07-24 15:44:16'),
(7, 2, 4, 'Blackberry', 'blackberry', '200', 'public/product/RxoURMsLfnoudKDx77SZIWJlHYe8Fb6CJltlaOpE.jpeg', 'blackberry', '2020-07-24 15:45:55', '2020-07-24 15:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'public/slider/cm8bjrI4jvVYMCEQQrl7cNQcnH5EYt1Z9k011Q2s.jpeg', '2020-07-26 19:20:23', '2020-07-26 19:20:23'),
(2, 'public/slider/ERtoIEVrXy1W5b3j2s1TWzK8c7ZcDQK1iji6tTnX.jpeg', '2020-07-26 19:23:46', '2020-07-26 19:23:46'),
(3, 'public/slider/VCSFT44jvrwLAFopPoT75N2wl0Edggg5NH9N2PAv.jpeg', '2020-07-26 19:24:00', '2020-07-26 19:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'dell pro', '2020-07-24 13:33:17', '2020-07-24 13:33:17'),
(2, 1, 'hp pro', '2020-07-24 13:33:18', '2020-07-24 13:33:18'),
(3, 2, '0ppo s2', '2020-07-24 13:33:18', '2020-07-24 13:33:18'),
(4, 2, 'oppo s3', '2020-07-24 13:33:18', '2020-07-24 13:33:18'),
(5, 3, 'novel', '2020-07-24 13:33:18', '2020-07-24 13:33:18');

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
  `phone_number` bigint DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` int NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone_number`, `address`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'laraAdmin', 'admin@gmail.com', '2020-07-24 13:33:20', '$2y$10$CjurRVKFuIk1NC53npQvuuqrSu6s1u/FkU/g6feTAzYv9UXA4qWjG', 712688274, 'Nairobi,Kenya', 1, NULL, '2020-07-24 13:33:20', '2020-07-24 13:33:20'),
(2, 'timmy', 'timmy@gmail.com', NULL, '$2y$10$MWqXs6i06w/60cuE/OGkXuXs0ijvRKcVlwt5G.vMa4jCRUcUXxXPC', NULL, NULL, 0, NULL, '2020-07-25 07:36:33', '2020-07-25 07:36:33'),
(3, 'eric tumuti', 'erictumuti114@gmail.com', NULL, '$2y$10$UXsqwK9yb9VSVBfdD0bOTevKPJBRNIhvI8KZIVbTaNgBNje2Bbq1i', NULL, NULL, 0, NULL, '2020-07-26 17:36:38', '2020-07-26 17:36:38');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
