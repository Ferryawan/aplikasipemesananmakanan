-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2021 at 12:25 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-catering`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `min_order` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pict` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_17_154239_create_roles_table', 1),
(4, '2017_08_17_154538_create_role_user_table', 1),
(5, '2017_08_22_121049_create_profiles_table', 1),
(6, '2017_08_27_082446_create_menus_table', 1),
(7, '2017_08_30_052150_create_order_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  `order_for` datetime NOT NULL,
  `delivery` tinyint(1) NOT NULL,
  `to_addr` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `pictures` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `phone`, `address`, `pictures`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, NULL, '2020-01-26 16:17:21', '2020-01-26 16:17:21'),
(2, 3, NULL, NULL, NULL, '2020-01-26 16:17:21', '2020-01-26 16:17:21'),
(3, 4, NULL, NULL, NULL, '2020-01-26 16:17:21', '2020-01-26 16:17:21'),
(4, 5, NULL, NULL, NULL, '2020-01-26 16:17:21', '2020-01-26 16:17:21'),
(5, 6, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(6, 7, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(7, 8, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(8, 9, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(9, 10, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(10, 11, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(11, 12, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(12, 13, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(13, 14, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(14, 15, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(15, 16, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(16, 17, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(17, 18, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(18, 19, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(19, 20, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(20, 21, NULL, NULL, NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-01-26 16:17:21', '2020-01-26 16:17:21'),
(2, 'customer', '2020-01-26 16:17:21', '2020-01-26 16:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@catering', '$2y$10$RFl6krcPZSLymAVWgQ3cHefrvlcuLoAgVKm33qF3WWxCcz04XfU.O', '55X0UrWsJyI5F97v9PYeNzpc94pIRKe85l8O9Qy8ckRx2mvNi7OtBp2bEnMs', '2020-01-26 16:17:21', '2021-04-09 17:25:01'),
(2, 'Example User 1', 'exuser-1@catering', '$2y$10$kAOIpo5Dwq6vCMpVYY9Np.t31zORG6ojAYcw3Qp9Kpi9rv2MuB0L.', 'cbvjp2v2332ynMSsCjYlSUB9EXd68yThd2iq9wRzzK37q5mhNHpDpPmxvNif', '2020-01-26 16:17:21', '2020-01-26 16:21:57'),
(3, 'Example User 2', 'exuser-2@catering', '$2y$10$.Pk2Acnm6iv6WrM9OnpLbeOEcrt7SoB3fUmBxbdbXXJSCpK7Nkyhm', NULL, '2020-01-26 16:17:21', '2020-01-26 16:17:21'),
(4, 'Example User 3', 'exuser-3@catering', '$2y$10$x9BgFgYlZD7ctQi/zJahnOKZo2M2NTH6eFAH2IUUGDbWGOtX7h/vG', NULL, '2020-01-26 16:17:21', '2020-01-26 16:17:21'),
(5, 'Example User 4', 'exuser-4@catering', '$2y$10$WwwX4NwlfD4egnTlDEFZZujWjNt43T0BEEXSnZZ5aJgjUKou0tlTi', NULL, '2020-01-26 16:17:21', '2020-01-26 16:17:21'),
(6, 'Example User 5', 'exuser-5@catering', '$2y$10$uFQTKPdKWIITQVR3LDoZpO2xZ6L7p9FOR95sP6F9321zhG5s5StNG', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(7, 'Example User 6', 'exuser-6@catering', '$2y$10$nJsShuyiVNaB2/BKdLYj4u0QAruKQEBVx1uWT.6VSaMnFZ/zoR4ku', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(8, 'Example User 7', 'exuser-7@catering', '$2y$10$JNcIliwlrRR/cvfz2mOpGu7ISZNez8t/WQb0Hz8FDn2hIL.pg0Flu', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(9, 'Example User 8', 'exuser-8@catering', '$2y$10$wMDMRDDFXg/S.OGTPmn7JuympjJE.GLBqVjYWjB5oNT91SqK6Pspm', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(10, 'Example User 9', 'exuser-9@catering', '$2y$10$Nlz8YByqgNHt4KaCZSmj9.uFN8qOos806Jccl1.VE4o3EdN8UkQVW', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(11, 'Example User 10', 'exuser-10@catering', '$2y$10$6IKkD.4PTy8KEIthA7hPROCsdlx/QJy2Mdo6ZQv/zvp6qxrfmzr4i', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(12, 'Example User 11', 'exuser-11@catering', '$2y$10$BGZC5WE/BUqd8Z4OcpGjSeOQPc/Xhbh1lCtoIvXXYaU3AA7Rnkg32', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(13, 'Example User 12', 'exuser-12@catering', '$2y$10$l.LZkJl28gDy8ElMYUosT.J3Da/AcfYorFxE5XUMzzH6L6zdTIr9u', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(14, 'Example User 13', 'exuser-13@catering', '$2y$10$B3IXSHvujJ1knnPpCWbjT.3jNOaTPygSF3rhOHpkj3pYuiOW3bE26', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(15, 'Example User 14', 'exuser-14@catering', '$2y$10$O5YN4Z6SV4RNH5vJVgAsVufvkl8vB52PmjQrsBk6lZtaPhco.1wJm', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(16, 'Example User 15', 'exuser-15@catering', '$2y$10$dotWve3PlxDqqTt80T6wN.ms7f2Ul8TQumm9OVuKgU5.d5PisFuqm', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(17, 'Example User 16', 'exuser-16@catering', '$2y$10$n5Xt20wiZcOmZXh04UDD1O8oJ5T4kOTK72cU6u2cuhZ/BFsWuwBom', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(18, 'Example User 17', 'exuser-17@catering', '$2y$10$MUEm73hUwqarb6XrG8acmeQbRydTv4JKjcHuJf6FDNyOpVOWVG0Qe', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(19, 'Example User 18', 'exuser-18@catering', '$2y$10$V3N/P5Cg7fm7/TjuSpPtvupTBe7INx3Oh/z0/04llCMnB3V9aeCIq', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(20, 'Example User 19', 'exuser-19@catering', '$2y$10$G6jdK6uQaulXpv0WG0sS0OH6HAPQm0stHMdno1VvNWAIryrXrUar6', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22'),
(21, 'Example User 20', 'exuser-20@catering', '$2y$10$OXuNtNNDY2O13jA1J1hNeuiwPGrdh6265EKdRj7lMG0sB9fZ8FH6m', NULL, '2020-01-26 16:17:22', '2020-01-26 16:17:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user_id_foreign` (`user_id`),
  ADD KEY `order_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`);

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
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
