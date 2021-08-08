-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2021 at 04:56 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kadakaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notification_key` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notification_key`, `created_at`, `updated_at`) VALUES
(1, 'AAAAQKN38X4:APA91bEcIzb5ZMry6L_tOJ3gbr7mZ1DC2h-TeOZBx9RfsV974O2mz9gcbFNwhu9Kbb6tE-ZuZrbz04hXhQEbgoe1gkZS0MGBowhm7j0t8nCXIhHewbY7mROvZgmChopeEJxrSTWerWRU', '2021-04-28 05:51:23', '2021-04-28 05:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `notification_store`
--

CREATE TABLE `notification_store` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `user_mearchant_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `orders_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `order_date_time` datetime DEFAULT NULL,
  `order_firebase_chat_id` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification_store`
--

INSERT INTO `notification_store` (`id`, `user_id`, `title`, `message`, `user_mearchant_id`, `order_id`, `orders_name`, `address`, `order_date_time`, `order_firebase_chat_id`, `created_at`, `updated_at`) VALUES
(1, '4', 'Order Placed!', ' shreyas user has placed new order 0107202101 on 01-07-2021 02:39 PM', '3', '1', '0107202101', NULL, '2021-07-01 14:39:04', '0107202101090904', '2021-07-01 16:09:05', '2021-07-01 16:09:05'),
(2, '4', 'Order Placed!', ' shreyas user has placed new order 0207202102 on 02-07-2021 04:13 PM', '3', '2', '0207202102', NULL, '2021-07-02 16:13:50', '0207202102104350', '2021-07-02 17:43:52', '2021-07-02 17:43:52'),
(3, '5', 'Order Placed!', ' Shanmugam User has placed new order 1207202101 on 12-07-2021 11:42 AM', '7', '3', '1207202101', NULL, '2021-07-12 11:42:35', '1207202101061235', '2021-07-12 13:12:39', '2021-07-12 13:12:39'),
(4, '7', 'Order Placed!', ' Shanmugam Merchant has placed new order 1407202101 on 14-07-2021 10:42 AM', '7', '4', '1407202101', NULL, '2021-07-14 10:42:06', '1407202101051206', '2021-07-14 12:12:07', '2021-07-14 12:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_mearchant_id` varchar(255) DEFAULT NULL,
  `orders_name` varchar(255) DEFAULT NULL,
  `orders_total_price` varchar(255) DEFAULT NULL,
  `order_image` varchar(255) DEFAULT NULL,
  `price_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=No Price False, 1=Yes Price True',
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=No Payment False, 1=Yes Payment True',
  `is_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=All, 1=Pending, 2=Completed',
  `order_date_time` datetime DEFAULT NULL,
  `order_firebase_chat_id` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_mearchant_id`, `orders_name`, `orders_total_price`, `order_image`, `price_status`, `payment_status`, `is_flag`, `order_date_time`, `order_firebase_chat_id`, `created_at`, `updated_at`) VALUES
(1, '4', '3', '0107202101', '500.0', 'uxgtl93yaxxx1pjrorxsbmjtoaobnw.jpg', 0, 0, 1, '2021-07-02 15:39:14', '0107202101090904', '2021-07-01 16:09:04', '2021-07-02 17:09:16'),
(2, '4', '3', '0207202102', '390.0', 's8lmojblc2phvqc57d8s3i0eedxico.jpg', 1, 0, 1, '2021-07-02 16:14:38', '0207202102104350', '2021-07-02 17:43:51', '2021-07-02 17:44:39'),
(3, '5', '7', '1207202101', '51320.0', 'uaqog5p5lgaxykt6ppnnwpob0sdr3r.jpg', 1, 1, 2, '2021-07-12 11:45:12', '1207202101061235', '2021-07-12 13:12:37', '2021-07-12 13:17:07'),
(4, '7', '7', '1407202101', '0.0', NULL, 0, 0, 1, '2021-07-14 10:42:33', '1407202101051206', '2021-07-14 12:12:06', '2021-07-14 12:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `firebase_chat_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_total_price` varchar(120) DEFAULT NULL,
  `item_price_per_kg` varchar(120) DEFAULT NULL,
  `item_weight` varchar(122) DEFAULT NULL,
  `unite` varchar(255) DEFAULT NULL,
  `unite_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `firebase_chat_id`, `order_id`, `item_name`, `item_total_price`, `item_price_per_kg`, `item_weight`, `unite`, `unite_name`, `created_at`, `updated_at`) VALUES
(5, '010720210109085101', '1', 'item 1', '400.0', '20', '20', '20', 'kg', '2021-07-02 17:09:16', '2021-07-02 17:09:16'),
(6, '010720210109090002', '1', 'item 2', '100.0', '10', '10', '10', 'kg', '2021-07-02 17:09:16', '2021-07-02 17:09:16'),
(9, '020720210210432301', '2', 'bdh', '240.0', '20', '12', '12', 'kg', '2021-07-02 17:44:39', '2021-07-02 17:44:39'),
(10, '020720210210433102', '2', 'hdj', '150.0', '30', '5', '5', 'kg', '2021-07-02 17:44:39', '2021-07-02 17:44:39'),
(13, '120720210106100201', '3', 'rice', '47320.0', '2366', '20', '20', 'kg', '2021-07-12 13:15:13', '2021-07-12 13:15:13'),
(14, '120720210106101002', '3', 'oil', '4000.0', '2000', '2', '2', 'lt', '2021-07-12 13:15:13', '2021-07-12 13:15:13'),
(17, '140720210105112201', '4', 'lemon 🌶 ', '', '', '500', '500', 'gm', '2021-07-14 12:12:33', '2021-07-14 12:12:33'),
(18, '140720210105115202', '4', '🍠 ', '', '', '5', '5', 'kg', '2021-07-14 12:12:33', '2021-07-14 12:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `mearchant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_verify` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0=No OTP Verify, 1=Yes OTP Verify',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_email_verify` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:Not Email Verify, 1:Yes Email Verify',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=Google, 2=Facebook ',
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `bank_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_type` tinyint(5) DEFAULT 1 COMMENT '1:Normal User, 2:Mearchant',
  `is_admin` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:Admin',
  `is_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=All, 1=Pending, 2=Completed',
  `online_offline_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 = Online, 0 = Offline',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:Active, 1:Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `mearchant_id`, `name`, `lastname`, `mobile`, `otp`, `otp_verify`, `email`, `is_email_verify`, `email_verified_at`, `password`, `social_type`, `social_id`, `user_profile`, `address`, `token`, `user_token`, `remember_token`, `amount`, `bank_holder_name`, `account_number`, `ifsc_code`, `branch_code`, `bank_name`, `is_type`, `is_admin`, `is_flag`, `online_offline_status`, `status`, `created_at`, `updated_at`) VALUES
(1, '0', 'Kadakaran', NULL, NULL, NULL, '0', 'kadakaran@gmail.com', 0, NULL, '$2y$10$VRAMRTSrDJxZwiDkNFcMzuwdyX7YonhIHWPXOxVvuZwxodY2fkc7W', 0, NULL, NULL, NULL, NULL, NULL, 'QWUbnZr5s71kEYdOjMmbaA0oeVubXCktLTxrsMmu8yL0B1W9Wggf2DJ8HpNo', '0', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL),
(2, '0', 'Brian', NULL, '9988554455', NULL, '0', 'vipulbhaidayani@gmail.com', 0, NULL, '$2y$10$M31tplpt1mw7vD0MK1M62uAyBhLJDW7/tzUYQ6iSmkdwKT5wCMVdO', 0, NULL, 'pe3e9eg73vxjkrq7cir91v8lezcoic.jpg', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, '2021-07-01 15:58:27', '2021-07-01 15:58:27'),
(3, '0', 'shreyas m', NULL, '8306020620', '841418', '1', NULL, 0, NULL, '$2y$10$gkuR6XeVcunoqXdXHQdHsuRNe/kyCrWc4Ia6.ShrAZWRJ6RLIGRuy', 0, NULL, NULL, NULL, 'e2G-3MutTJCzWhlviR4RIi:APA91bEIw9JlhIMTeTMfZCNaNy1d9-UEXyegav8axlLpRPy_284FOaYfcREcSlEjzaERPD511eOl4TJX7DeH_ybWgvMXIc5YZj-ikg8sRon6CG-cIC9AkgzvMZ_VRd6KhszzwZPiZ2ta', 'ol3DXeUGOWZ5KYj9sOjk7DDSkpaJmxDr3b9ZKv9f3', 'e2G-3MutTJCzWhlviR4RIi:APA91bEIw9JlhIMTeTMfZCNaNy1d9-UEXyegav8axlLpRPy_284FOaYfcREcSlEjzaERPD511eOl4TJX7DeH_ybWgvMXIc5YZj-ikg8sRon6CG-cIC9AkgzvMZ_VRd6KhszzwZPiZ2ta', '0', NULL, NULL, NULL, NULL, NULL, 2, 0, 1, 1, 0, '2021-07-01 16:06:37', '2021-07-02 19:08:40'),
(4, '0', 'shreyas user', NULL, '9033384899', '788191', '1', NULL, 0, NULL, '$2y$10$WJIsJdfX2AdhKlXY5qrP3.NR8POQ0zy.CQmU4gBGqH/Kv3gtuF1Au', 0, NULL, NULL, NULL, 'e2G-3MutTJCzWhlviR4RIi:APA91bEIw9JlhIMTeTMfZCNaNy1d9-UEXyegav8axlLpRPy_284FOaYfcREcSlEjzaERPD511eOl4TJX7DeH_ybWgvMXIc5YZj-ikg8sRon6CG-cIC9AkgzvMZ_VRd6KhszzwZPiZ2ta', '1a9vzGSqnQ7PtK7W7eIkE3hdFy20II46vlnDHiCK4', 'e2G-3MutTJCzWhlviR4RIi:APA91bEIw9JlhIMTeTMfZCNaNy1d9-UEXyegav8axlLpRPy_284FOaYfcREcSlEjzaERPD511eOl4TJX7DeH_ybWgvMXIc5YZj-ikg8sRon6CG-cIC9AkgzvMZ_VRd6KhszzwZPiZ2ta', '0', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, '2021-07-01 16:08:00', '2021-07-02 19:06:40'),
(5, '0', 'Shanmugam User', NULL, '8667789300', '522895', '1', NULL, 0, NULL, '$2y$10$AcTHFGQ4auVAauJ.pY0qFO/x4odF4ggWuRtZR5eX7NHpE6/U.f4pK', 0, NULL, '0ndrunsdkuuu6sbo3wbqle0rtjtgjk.jpg', 'chennai', 'dAHN7hVPTn6ZtX80trXzUe:APA91bGKUxLhufoTnHBxxpB9TqRqsjTmDsU-cRTnvibv_4btXk5w-ACwWQlf15wfs7G-O9jYxYC-AmF4-tXQzA-rC5OgxjLJ7wZMt1MQi9ybiYzR4Mzttns2RbbvlJ2NljFKQEBlyvN_', '8UHQQDzKxwHs0QfqjrOy7jcJ4ICo3evYbPuJbdZi5', 'dAHN7hVPTn6ZtX80trXzUe:APA91bGKUxLhufoTnHBxxpB9TqRqsjTmDsU-cRTnvibv_4btXk5w-ACwWQlf15wfs7G-O9jYxYC-AmF4-tXQzA-rC5OgxjLJ7wZMt1MQi9ybiYzR4Mzttns2RbbvlJ2NljFKQEBlyvN_', '0', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, 0, 0, '2021-07-06 10:30:36', '2021-07-14 04:50:21'),
(6, '0', 'vivek m', NULL, '8524125', NULL, '0', NULL, 0, NULL, '$2y$10$XAR.ZXPMe4e1.bbQYrJubuh3zm/VWggi3Vdn4KuHv4WCsHEaw66dK', 0, NULL, NULL, NULL, 'fY0CfAVdfsQeK0W3QnFV3du3APA91bGslU1s9w1tJIevzxcTRC99YGjgSfdyYJCb_YV_ZcGHS763Q7Nx1AJII8EnMzLkrXYBJ9kUwOL', '24UlZjPtGeTeC96xvQKcLvh4HNOLV22tvVJ277cR6', 'fY0CfAVdfsQeK0W3QnFV3du3APA91bGslU1s9w1tJIevzxcTRC99YGjgSfdyYJCb_YV_ZcGHS763Q7Nx1AJII8EnMzLkrXYBJ9kUwOL', '0', NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, '2021-07-08 16:38:51', '2021-07-08 16:38:51'),
(7, '0', 'Shanmugam Merchant', NULL, '8754992499', '334599', '1', NULL, 0, NULL, '$2y$10$1C8pExnW7XW5aO.1VaTiNeThB.ulBbJfGiMbE8OcLrr9t6tD9r5S6', 0, NULL, NULL, NULL, 'dAHN7hVPTn6ZtX80trXzUe:APA91bGKUxLhufoTnHBxxpB9TqRqsjTmDsU-cRTnvibv_4btXk5w-ACwWQlf15wfs7G-O9jYxYC-AmF4-tXQzA-rC5OgxjLJ7wZMt1MQi9ybiYzR4Mzttns2RbbvlJ2NljFKQEBlyvN_', 'cCrHJOpaJsE1iabNSiXsCypgW1NHP7qa4UdUYljF7', 'dAHN7hVPTn6ZtX80trXzUe:APA91bGKUxLhufoTnHBxxpB9TqRqsjTmDsU-cRTnvibv_4btXk5w-ACwWQlf15wfs7G-O9jYxYC-AmF4-tXQzA-rC5OgxjLJ7wZMt1MQi9ybiYzR4Mzttns2RbbvlJ2NljFKQEBlyvN_', '5182', NULL, NULL, NULL, NULL, NULL, 2, 0, 1, 1, 0, '2021-07-12 12:56:02', '2021-07-14 12:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `users_wallet_details`
--

CREATE TABLE `users_wallet_details` (
  `id` int(11) NOT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `amount_transfer` varchar(255) DEFAULT NULL,
  `money_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = Add Money, 1 = Withdraw Money',
  `money_date` varchar(255) DEFAULT NULL,
  `money_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = Pending, 1 = Success, 2 = Decline',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_wallet_details`
--

INSERT INTO `users_wallet_details` (`id`, `user_id`, `amount_transfer`, `money_type`, `money_date`, `money_status`, `created_at`, `updated_at`) VALUES
(1, '7', '50', 0, '2021-07-14 10:44:21', 0, '2021-07-14 12:14:21', '2021-07-19 08:10:03'),
(2, '6', '50', 1, '2021-07-14 10:44:21', 0, '2021-07-14 12:14:21', '2021-07-19 08:09:03'),
(3, '3', '50', 0, '2021-07-14 10:44:21', 0, '2021-07-14 12:14:21', '2021-07-19 08:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `version_setting`
--

CREATE TABLE `version_setting` (
  `id` int(11) NOT NULL,
  `app_version` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `version_setting`
--

INSERT INTO `version_setting` (`id`, `app_version`, `created_at`, `updated_at`) VALUES
(1, '1.0', '2021-04-15 09:00:18', '2021-04-15 03:37:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_store`
--
ALTER TABLE `notification_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_wallet_details`
--
ALTER TABLE `users_wallet_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `version_setting`
--
ALTER TABLE `version_setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_store`
--
ALTER TABLE `notification_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_wallet_details`
--
ALTER TABLE `users_wallet_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `version_setting`
--
ALTER TABLE `version_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
