-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2023 at 09:57 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boutique`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(18, 'Legumes', '2023-07-28 15:09:30', '2023-07-28 15:09:30'),
(19, 'Ceriales', '2023-07-28 15:09:36', '2023-07-28 15:09:36'),
(20, 'Trusers', '2023-08-03 14:08:00', '2023-08-03 14:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `password`, `email`, `created_at`, `updated_at`) VALUES
(1, '$2y$10$kJcC8lGYmelNx8OKQP5Smubo0g57lUG8uZkAlYhgX4iMUjHMzasle', 'fcmtalamadjomadimani22@gmail.com', '2023-08-02 06:17:08', '2023-08-02 06:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

CREATE TABLE `commands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commands`
--

INSERT INTO `commands` (`id`, `name`, `address`, `cart`, `created_at`, `updated_at`) VALUES
(11, 'ISOIMI-DINI ALI', 'Moroni Comores', 'O:15:\"App\\Models\\Cart\":3:{s:5:\"items\";a:1:{i:2;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";i:2;s:12:\"product_name\";s:5:\"Papay\";s:13:\"product_price\";s:3:\"500\";s:13:\"product_image\";s:25:\"big-img-02_1690579198.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Papay\";s:13:\"product_price\";s:3:\"500\";s:16:\"product_category\";s:5:\"Fruit\";s:19:\"description_product\";s:168:\"Papaya is a melon-like fruit, which varies greatly in shape and size. The skin of unripe fruit is smooth, green, and thin and changes to deep orange or yellow when ripe\";s:13:\"product_image\";s:25:\"big-img-02_1690579198.jpg\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-07-28 21:19:58\";s:10:\"updated_at\";s:19:\"2023-07-28 21:19:58\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Papay\";s:13:\"product_price\";s:3:\"500\";s:16:\"product_category\";s:5:\"Fruit\";s:19:\"description_product\";s:168:\"Papaya is a melon-like fruit, which varies greatly in shape and size. The skin of unripe fruit is smooth, green, and thin and changes to deep orange or yellow when ripe\";s:13:\"product_image\";s:25:\"big-img-02_1690579198.jpg\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-07-28 21:19:58\";s:10:\"updated_at\";s:19:\"2023-07-28 21:19:58\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:500;}', '2023-07-28 16:07:37', '2023-07-28 16:07:37'),
(12, 'Bary Mamadu', 'Board, bazar Gazipur', 'O:15:\"App\\Models\\Cart\":3:{s:5:\"items\";a:1:{i:1;a:6:{s:3:\"qty\";s:1:\"2\";s:10:\"product_id\";i:1;s:12:\"product_name\";s:8:\"penaples\";s:13:\"product_price\";s:4:\"3002\";s:13:\"product_image\";s:29:\"gallery-img-07_1690579128.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:12:\"product_name\";s:8:\"penaples\";s:13:\"product_price\";s:4:\"3002\";s:16:\"product_category\";s:8:\"Ceriales\";s:19:\"description_product\";s:80:\"the fleshy or dry ripened ovary of a flowering plant enclosing the seed or seeds\";s:13:\"product_image\";s:29:\"gallery-img-07_1690579128.jpg\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-07-28 21:17:45\";s:10:\"updated_at\";s:19:\"2023-07-28 21:18:48\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:12:\"product_name\";s:8:\"penaples\";s:13:\"product_price\";s:4:\"3002\";s:16:\"product_category\";s:8:\"Ceriales\";s:19:\"description_product\";s:80:\"the fleshy or dry ripened ovary of a flowering plant enclosing the seed or seeds\";s:13:\"product_image\";s:29:\"gallery-img-07_1690579128.jpg\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-07-28 21:17:45\";s:10:\"updated_at\";s:19:\"2023-07-28 21:18:48\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:6004;}', '2023-08-02 06:18:22', '2023-08-02 06:18:22'),
(13, 'ISOIMI-DINI MADJOMA ALI', 'Moroni Comores oichili', 'O:15:\"App\\Models\\Cart\":3:{s:5:\"items\";a:2:{i:1;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";i:1;s:12:\"product_name\";s:8:\"penaples\";s:13:\"product_price\";s:4:\"3002\";s:13:\"product_image\";s:29:\"gallery-img-07_1690579128.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:12:\"product_name\";s:8:\"penaples\";s:13:\"product_price\";s:4:\"3002\";s:16:\"product_category\";s:8:\"Ceriales\";s:19:\"description_product\";s:80:\"the fleshy or dry ripened ovary of a flowering plant enclosing the seed or seeds\";s:13:\"product_image\";s:29:\"gallery-img-07_1690579128.jpg\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-07-28 21:17:45\";s:10:\"updated_at\";s:19:\"2023-07-28 21:18:48\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:12:\"product_name\";s:8:\"penaples\";s:13:\"product_price\";s:4:\"3002\";s:16:\"product_category\";s:8:\"Ceriales\";s:19:\"description_product\";s:80:\"the fleshy or dry ripened ovary of a flowering plant enclosing the seed or seeds\";s:13:\"product_image\";s:29:\"gallery-img-07_1690579128.jpg\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-07-28 21:17:45\";s:10:\"updated_at\";s:19:\"2023-07-28 21:18:48\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";i:2;s:12:\"product_name\";s:5:\"Papay\";s:13:\"product_price\";s:3:\"500\";s:13:\"product_image\";s:25:\"big-img-02_1690579198.jpg\";s:4:\"item\";O:18:\"App\\Models\\Product\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Papay\";s:13:\"product_price\";s:3:\"500\";s:16:\"product_category\";s:5:\"Fruit\";s:19:\"description_product\";s:168:\"Papaya is a melon-like fruit, which varies greatly in shape and size. The skin of unripe fruit is smooth, green, and thin and changes to deep orange or yellow when ripe\";s:13:\"product_image\";s:25:\"big-img-02_1690579198.jpg\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-07-28 21:19:58\";s:10:\"updated_at\";s:19:\"2023-07-28 21:19:58\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:2;s:12:\"product_name\";s:5:\"Papay\";s:13:\"product_price\";s:3:\"500\";s:16:\"product_category\";s:5:\"Fruit\";s:19:\"description_product\";s:168:\"Papaya is a melon-like fruit, which varies greatly in shape and size. The skin of unripe fruit is smooth, green, and thin and changes to deep orange or yellow when ripe\";s:13:\"product_image\";s:25:\"big-img-02_1690579198.jpg\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-07-28 21:19:58\";s:10:\"updated_at\";s:19:\"2023-07-28 21:19:58\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:3502;}', '2023-08-02 06:19:42', '2023-08-02 06:19:42');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_11_180858_create_categories_table', 1),
(6, '2023_07_14_052338_create_sliders_table', 2),
(7, '2023_07_14_215710_add_status_to_sliders', 3),
(9, '2023_07_26_210255_create_clientts_table', 5),
(10, '2023_07_26_210907_create_clients_table', 6),
(12, '2023_07_16_042417_create_products_table', 7),
(13, '2023_07_28_180708_create_clients_table', 7),
(14, '2023_07_28_210023_create_commands_table', 7);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_product` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_category`, `description_product`, `product_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'penaples', '3002', 'Ceriales', 'the fleshy or dry ripened ovary of a flowering plant enclosing the seed or seeds', 'gallery-img-07_1690579128.jpg', 1, '2023-07-28 15:17:45', '2023-07-28 15:18:48'),
(2, 'Papay', '500', 'Fruit', 'Papaya is a melon-like fruit, which varies greatly in shape and size. The skin of unripe fruit is smooth, green, and thin and changes to deep orange or yellow when ripe', 'big-img-02_1690579198.jpg', 1, '2023-07-28 15:19:58', '2023-07-28 15:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `description_1`, `description_2`, `images`, `created_at`, `updated_at`, `status`) VALUES
(8, 'fruit sucre 12 your users experience', 'To be strong by eating many kind of food', 'gallery-img-09_1690367173.jpg', '2023-07-14 15:48:19', '2023-07-26 04:26:13', 1),
(9, 'See how your users experience your website in realtime or view', 'trends to see any changes in performance over time.', 'gallery-img-03_1690225095.jpg', '2023-07-24 12:58:15', '2023-07-26 04:12:51', 1),
(11, 'description 1vh', 'Description 2hjjh', 'categories_img_03_1690367210.jpg', '2023-07-26 03:53:15', '2023-07-26 04:26:50', 1),
(12, 'je suis une description', 'Description 2hjjh', 'Screenshot (131)_1691093707.png', '2023-08-03 14:08:15', '2023-08-03 14:15:07', 1);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indexes for table `commands`
--
ALTER TABLE `commands`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commands`
--
ALTER TABLE `commands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
