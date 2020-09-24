-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 22, 2020 at 01:11 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'labore', '2020-06-09 08:20:47', '2020-06-09 08:20:47'),
(2, 'animi', '2020-06-09 08:20:47', '2020-06-09 08:20:47'),
(3, 'quo', '2020-06-09 08:20:47', '2020-06-09 08:20:47'),
(4, 'optio', '2020-06-09 08:20:47', '2020-06-09 08:20:47'),
(5, 'quia', '2020-06-09 08:20:47', '2020-06-09 08:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(90, '2019_08_19_000000_create_failed_jobs_table', 1),
(91, '2020_05_18_103424_categories', 1),
(92, '2020_05_19_092800_create_products_table', 1),
(88, '2014_10_12_000000_create_users_table', 1),
(89, '2014_10_12_100000_create_password_resets_table', 1),
(93, '2020_06_09_110318_shoppingcart', 2),
(94, '2020_06_15_134316_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `user_id`, `cart`, `created_at`, `updated_at`) VALUES
(1, 'Marijn', 'Prins bernhardstraat 19', 1, 'O:8:\"App\\cart\":3:{s:5:\"items\";a:1:{i:3;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:448;s:4:\"item\";O:12:\"App\\products\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:4:\"name\";s:3:\"quo\";s:5:\"price\";d:448;s:11:\"description\";s:57:\"Repudiandae cumque culpa minus autem fugit voluptatum in.\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?34964\";s:11:\"category_id\";i:2;s:10:\"created_at\";s:19:\"2020-06-09 10:26:17\";s:10:\"updated_at\";s:19:\"2020-06-09 10:26:17\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:4:\"name\";s:3:\"quo\";s:5:\"price\";d:448;s:11:\"description\";s:57:\"Repudiandae cumque culpa minus autem fugit voluptatum in.\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?34964\";s:11:\"category_id\";i:2;s:10:\"created_at\";s:19:\"2020-06-09 10:26:17\";s:10:\"updated_at\";s:19:\"2020-06-09 10:26:17\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:14:\"total_quantity\";i:1;s:11:\"total_price\";d:448;}', '2020-06-15 12:28:21', '2020-06-15 12:28:21'),
(2, 'marijn', 'Prins bernhardstraat 19', 1, 'O:8:\"App\\cart\":3:{s:5:\"items\";a:3:{i:8;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:462;s:4:\"item\";O:12:\"App\\products\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:4:\"name\";s:6:\"minima\";s:5:\"price\";d:462;s:11:\"description\";s:92:\"Autem et aspernatur rerum excepturi explicabo ratione veritatis eum provident hic et maxime.\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?45186\";s:11:\"category_id\";i:4;s:10:\"created_at\";s:19:\"2020-06-09 10:26:17\";s:10:\"updated_at\";s:19:\"2020-06-09 10:26:17\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:4:\"name\";s:6:\"minima\";s:5:\"price\";d:462;s:11:\"description\";s:92:\"Autem et aspernatur rerum excepturi explicabo ratione veritatis eum provident hic et maxime.\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?45186\";s:11:\"category_id\";i:4;s:10:\"created_at\";s:19:\"2020-06-09 10:26:17\";s:10:\"updated_at\";s:19:\"2020-06-09 10:26:17\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:477;s:4:\"item\";O:12:\"App\\products\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"natus\";s:5:\"price\";d:477;s:11:\"description\";s:61:\"Dolores repellendus natus ullam omnis non cupiditate ea ipsa.\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?18164\";s:11:\"category_id\";i:3;s:10:\"created_at\";s:19:\"2020-06-09 10:26:17\";s:10:\"updated_at\";s:19:\"2020-06-09 10:26:17\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"natus\";s:5:\"price\";d:477;s:11:\"description\";s:61:\"Dolores repellendus natus ullam omnis non cupiditate ea ipsa.\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?18164\";s:11:\"category_id\";i:3;s:10:\"created_at\";s:19:\"2020-06-09 10:26:17\";s:10:\"updated_at\";s:19:\"2020-06-09 10:26:17\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:5;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:488;s:4:\"item\";O:12:\"App\\products\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:4:\"name\";s:7:\"ducimus\";s:5:\"price\";d:488;s:11:\"description\";s:71:\"Est et quis qui possimus aspernatur et soluta officia consequatur quae.\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?79085\";s:11:\"category_id\";i:5;s:10:\"created_at\";s:19:\"2020-06-09 10:26:17\";s:10:\"updated_at\";s:19:\"2020-06-09 10:26:17\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:4:\"name\";s:7:\"ducimus\";s:5:\"price\";d:488;s:11:\"description\";s:71:\"Est et quis qui possimus aspernatur et soluta officia consequatur quae.\";s:5:\"image\";s:46:\"https://lorempixel.com/640/480/technics/?79085\";s:11:\"category_id\";i:5;s:10:\"created_at\";s:19:\"2020-06-09 10:26:17\";s:10:\"updated_at\";s:19:\"2020-06-09 10:26:17\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:14:\"total_quantity\";i:3;s:11:\"total_price\";d:1427;}', '2020-06-16 07:32:48', '2020-06-16 07:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'natus', 477.00, 'Dolores repellendus natus ullam omnis non cupiditate ea ipsa.', 'https://lorempixel.com/640/480/technics/?18164', 3, '2020-06-09 08:26:17', '2020-06-09 08:26:17'),
(2, 'doloribus', 335.00, 'Quia eaque porro eos et distinctio rerum non minus quis id consequatur fugit.', 'https://lorempixel.com/640/480/technics/?23972', 2, '2020-06-09 08:26:17', '2020-06-09 08:26:17'),
(3, 'quo', 448.00, 'Repudiandae cumque culpa minus autem fugit voluptatum in.', 'https://lorempixel.com/640/480/technics/?34964', 2, '2020-06-09 08:26:17', '2020-06-09 08:26:17'),
(4, 'vitae', 115.00, 'Explicabo perspiciatis quia facilis nemo atque dolores rerum tempore rem laudantium.', 'https://lorempixel.com/640/480/technics/?71583', 1, '2020-06-09 08:26:17', '2020-06-09 08:26:17'),
(5, 'ducimus', 488.00, 'Est et quis qui possimus aspernatur et soluta officia consequatur quae.', 'https://lorempixel.com/640/480/technics/?79085', 5, '2020-06-09 08:26:17', '2020-06-09 08:26:17'),
(6, 'adipisci', 248.00, 'Tempore deleniti voluptatem dolore id itaque ad maxime maxime fuga cum.', 'https://lorempixel.com/640/480/technics/?41772', 1, '2020-06-09 08:26:17', '2020-06-09 08:26:17'),
(7, 'est', 87.00, 'Veniam qui veritatis esse et quae ab minima similique eaque repellat quia sit.', 'https://lorempixel.com/640/480/technics/?16257', 1, '2020-06-09 08:26:17', '2020-06-09 08:26:17'),
(8, 'minima', 462.00, 'Autem et aspernatur rerum excepturi explicabo ratione veritatis eum provident hic et maxime.', 'https://lorempixel.com/640/480/technics/?45186', 4, '2020-06-09 08:26:17', '2020-06-09 08:26:17'),
(9, 'quidem', 114.00, 'Est temporibus repellendus voluptates ut voluptas ipsa fuga provident.', 'https://lorempixel.com/640/480/technics/?36853', 1, '2020-06-09 08:26:17', '2020-06-09 08:26:17'),
(10, 'nam', 408.00, 'Dolores accusantium ea qui ut necessitatibus aliquam dolor vel molestiae error consequuntur.', 'https://lorempixel.com/640/480/technics/?15029', 3, '2020-06-09 08:26:17', '2020-06-09 08:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE IF NOT EXISTS `shoppingcart` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'marijn', '99038768@mydavinci.nl', NULL, '$2y$10$9Fthva2QcL0liRcYY9IjIOKm997JFJB5XORidak4q2E1stqogXLqC', '5LOE60Vigtfe9RJUNHcznrCIbLQXAEkGB3kc96ugrA8TanOAXWUElWYZ9VQL', '2020-06-15 12:04:25', '2020-06-15 12:04:25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
