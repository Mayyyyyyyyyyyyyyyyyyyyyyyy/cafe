-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2025 at 09:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe_amore_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_content`
--

CREATE TABLE `about_content` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `paragraphs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_content`
--

INSERT INTO `about_content` (`id`, `image_path`, `paragraphs`) VALUES
(1, 'slide1.jpg', '[\"Born from a simple love for coffee and community, Café Amore is more than just a coffee shop it\'s a place to connect, relax, and feel at home.\",\"We pour our hearts into every cup, using only the finest, ethically-sourced beans and the freshest local ingredients for our handcrafted drinks and pastries.\",\"Whether you\'re catching up with friends or simply unwinding, we invite you to enjoy our cozy atmosphere and savor the aroma of freshly brewed coffee.\"]');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_posted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_feedback`
--

CREATE TABLE `customer_feedback` (
  `id` int(11) NOT NULL,
  `quote` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_content`
--

CREATE TABLE `footer_content` (
  `id` int(11) NOT NULL,
  `about_text` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `facebook_url` varchar(255) NOT NULL,
  `instagram_url` varchar(255) NOT NULL,
  `twitter_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer_content`
--

INSERT INTO `footer_content` (`id`, `about_text`, `address`, `phone`, `email`, `facebook_url`, `instagram_url`, `twitter_url`) VALUES
(1, 'Your favorite spot for cozy brews and sweet bites. We pour our hearts into every cup.', '123 Coffee Lane, Brew City', '(123) 456-7890', 'contact@cafeamore.com', 'https://www.facebook.com/cafeamorefacebookpage', 'https://www.instagram.com/cafeamore', 'https://www.twitter.com/cafeamore');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `price`, `image`) VALUES
(1, 'Caramel Latte', 120.00, 'caramel_latte.webp'),
(2, 'Mocha Bliss', 130.00, 'mocha_bliss.jpg'),
(3, 'Vanilla Iced Coffee', 110.00, 'vanilla.webp'),
(4, 'Chocolate Muffin', 90.00, 'Chocolate-Muffin.jpg'),
(5, 'Strawberry Cheesecake', 150.00, 'Strawberry-cheesecake.jpg'),
(6, 'Classic Cappuccino', 115.00, 'ClassicCapichino.jfif'),
(7, 'Americano', 100.00, 'Americano.jfif'),
(8, 'Matcha Latte', 140.00, 'MatchaLatte.jfif'),
(9, 'Classic Croissant', 85.00, 'ClassicCriossant.jfif'),
(10, 'Blueberry Scone', 95.00, 'blueberry_scoine.jfif'),
(11, 'Espresso', 90.00, 'Espresso.jfif'),
(12, 'Caramel Macchiato', 135.00, 'caramel_machiatto.jfif'),
(13, 'Red Velvet Cake', 160.00, 'red-velvet.jfif'),
(14, 'Brownies & Bars', 120.00, 'menu_69366aa9e7437_Brownies & Bars.jpg'),
(15, 'Breakfast Sandwich', 100.00, 'menu_69366b0c8e8e8_Breakfast Sandwich.jpg'),
(16, 'Hot Chocolate', 130.00, 'menu_69366b5755c8a_Hot Chocolate.jpg'),
(17, 'Avocado Toast', 180.00, 'menu_69366bbf62c03_Avocado Toast.jpg'),
(18, 'Cappucino', 500.00, 'menu_693a89470146d_Americano.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `message`, `is_read`, `created_at`) VALUES
(11, NULL, 'new_order', 'New order placed for Mocha Bliss', 1, '2025-12-11 05:17:41'),
(12, 1, 'new_order_user', 'Your order for Mocha Bliss was successful.', 1, '2025-12-11 05:17:41'),
(13, NULL, 'new_order', 'New order placed for Strawberry Cheesecake', 1, '2025-12-11 05:17:57'),
(14, 1, 'new_order_user', 'Your order for Strawberry Cheesecake was successful.', 1, '2025-12-11 05:17:57'),
(15, NULL, 'new_order', 'New order placed for Caramel Latte', 1, '2025-12-11 05:29:56'),
(16, 2, 'new_order_user', 'Your order for Caramel Latte was successful.', 1, '2025-12-11 05:29:57'),
(17, NULL, 'new_order', 'New order placed for Chocolate Muffin', 1, '2025-12-11 05:30:12'),
(18, 2, 'new_order_user', 'Your order for Chocolate Muffin was successful.', 1, '2025-12-11 05:30:12'),
(19, NULL, 'new_order', 'New order placed for Classic Croissant', 1, '2025-12-11 05:30:22'),
(20, 2, 'new_order_user', 'Your order for Classic Croissant was successful.', 1, '2025-12-11 05:30:22'),
(21, NULL, 'new_message', 'New message from france', 1, '2025-12-11 05:31:19'),
(22, 2, 'message_sent', 'Your message has been sent successfully!', 1, '2025-12-11 05:31:19'),
(23, NULL, 'new_message', 'New message from france', 1, '2025-12-11 05:31:19'),
(24, 2, 'message_sent', 'Your message has been sent successfully!', 1, '2025-12-11 05:31:19'),
(25, NULL, 'new_order', 'New order placed for Caramel Latte', 1, '2025-12-11 05:34:42'),
(26, 3, 'new_order_user', 'Your order for Caramel Latte was successful.', 1, '2025-12-11 05:34:42'),
(27, NULL, 'new_order', 'New order placed for Caramel Latte', 1, '2025-12-11 05:34:43'),
(28, 3, 'new_order_user', 'Your order for Caramel Latte was successful.', 1, '2025-12-11 05:34:43'),
(29, NULL, 'new_order', 'New order placed for Caramel Latte', 1, '2025-12-11 05:35:02'),
(30, 3, 'new_order_user', 'Your order for Caramel Latte was successful.', 1, '2025-12-11 05:35:02'),
(31, NULL, 'new_order', 'New order placed for Caramel Latte', 1, '2025-12-11 05:35:09'),
(32, 3, 'new_order_user', 'Your order for Caramel Latte was successful.', 1, '2025-12-11 05:35:10'),
(33, NULL, 'new_message', 'New message from aria', 1, '2025-12-11 05:35:41'),
(34, 3, 'message_sent', 'Your message has been sent successfully!', 1, '2025-12-11 05:35:41'),
(35, NULL, 'new_order', 'New order placed for Hot Chocolate', 1, '2025-12-11 05:38:18'),
(36, 4, 'new_order_user', 'Your order for Hot Chocolate was successful.', 1, '2025-12-11 05:38:19'),
(37, NULL, 'new_order', 'New order placed for Hot Chocolate', 1, '2025-12-11 05:38:20'),
(38, 4, 'new_order_user', 'Your order for Hot Chocolate was successful.', 1, '2025-12-11 05:38:20'),
(39, NULL, 'new_message', 'New message from rafaela', 1, '2025-12-11 05:39:33'),
(40, 4, 'message_sent', 'Your message has been sent successfully!', 1, '2025-12-11 05:39:34'),
(41, NULL, 'new_order', 'New order placed for Vanilla Iced Coffee', 1, '2025-12-11 09:00:16'),
(42, 5, 'new_order_user', 'Your order for Vanilla Iced Coffee was successful.', 1, '2025-12-11 09:00:16'),
(43, NULL, 'new_order', 'New order placed for Vanilla Iced Coffee', 1, '2025-12-11 09:00:34'),
(44, 5, 'new_order_user', 'Your order for Vanilla Iced Coffee was successful.', 1, '2025-12-11 09:00:35'),
(45, NULL, 'new_order', 'New order placed for Vanilla Iced Coffee', 1, '2025-12-11 09:01:26'),
(46, 5, 'new_order_user', 'Your order for Vanilla Iced Coffee was successful.', 1, '2025-12-11 09:01:27'),
(47, NULL, 'new_message', 'New message from margielyn', 1, '2025-12-11 09:02:18'),
(48, 5, 'message_sent', 'Your message has been sent successfully!', 1, '2025-12-11 09:02:18'),
(49, NULL, 'new_menu_item', 'New menu item added: Cappucino', 1, '2025-12-11 09:05:11'),
(50, 3, 'new_menu_item_user', 'Check out our new item: Cappucino!', 1, '2025-12-11 09:05:11'),
(51, 1, 'new_menu_item_user', 'Check out our new item: Cappucino!', 1, '2025-12-11 09:05:11'),
(52, 2, 'new_menu_item_user', 'Check out our new item: Cappucino!', 1, '2025-12-11 09:05:12'),
(53, 5, 'new_menu_item_user', 'Check out our new item: Cappucino!', 1, '2025-12-11 09:05:13'),
(54, 4, 'new_menu_item_user', 'Check out our new item: Cappucino!', 1, '2025-12-11 09:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `payment_method` varchar(50) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `item_name`, `price`, `quantity`, `payment_method`, `order_date`) VALUES
(18, 1, 'Mocha Bliss', 130.00, 1, 'Gcash', '2025-12-11 05:17:41'),
(19, 1, 'Strawberry Cheesecake', 150.00, 1, 'Cash on Delivery', '2025-12-11 05:17:57'),
(20, 2, 'Caramel Latte', 120.00, 1, 'Cash on Delivery', '2025-12-11 05:29:56'),
(21, 2, 'Chocolate Muffin', 90.00, 1, 'Cash on Delivery', '2025-12-11 05:30:11'),
(22, 2, 'Classic Croissant', 85.00, 1, 'Cash on Delivery', '2025-12-11 05:30:22'),
(23, 3, 'Caramel Latte', 120.00, 1, 'Cash on Delivery', '2025-12-11 05:34:42'),
(24, 3, 'Caramel Latte', 120.00, 1, 'Cash on Delivery', '2025-12-11 05:34:43'),
(25, 3, 'Caramel Latte', 120.00, 1, 'Gcash', '2025-12-11 05:35:02'),
(26, 3, 'Caramel Latte', 120.00, 1, 'Cash on Delivery', '2025-12-11 05:35:09'),
(27, 4, 'Hot Chocolate', 130.00, 1, 'Cash on Delivery', '2025-12-11 05:38:18'),
(28, 4, 'Hot Chocolate', 130.00, 1, 'Cash on Delivery', '2025-12-11 05:38:20'),
(29, 5, 'Vanilla Iced Coffee', 110.00, 1, 'Cash on Delivery', '2025-12-11 09:00:14'),
(30, 5, 'Vanilla Iced Coffee', 110.00, 1, 'Gcash', '2025-12-11 09:00:34'),
(31, 5, 'Vanilla Iced Coffee', 110.00, 1, 'Credit Card', '2025-12-11 09:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` varchar(255) DEFAULT 'default-avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`, `profile_picture`) VALUES
(1, 'Ariean', 'q@gmail.com', '$2y$10$v1dV2l63KskEPsGQvi2PNeeifMqSLhw/H9bGpfzbmt1fSB9YL0V0K', 'user', '2025-12-07 02:52:29', 'default-avatar.png'),
(2, 'France', 'france@gmail.com', '$2y$10$mr3paPtrOdqyXNp4DZYJh.1RmuAAe5Ug09isya9wJk.urmrAyMz7i', 'user', '2025-12-11 05:28:46', 'default-avatar.png'),
(3, 'Aira', 'aira@gmail.com', '$2y$10$.RDPsCO5mAOR5PMDppfa/eeD3GoFUExU4y8Gr4lJW2hKoFlXfvY/K', 'user', '2025-12-11 05:34:25', 'default-avatar.png'),
(4, 'rafaela', 'rafaela@gmail.com', '$2y$10$QN3Vh27PsFxvui0q6q0cgOI17HPrS5QBOz.To5ijhFgCwIx/fw.CC', 'user', '2025-12-11 05:37:49', 'default-avatar.png'),
(5, 'Margielyn', 'margielyn@gmail.com', '$2y$10$Y0OlQzbUNVNhan.XLiMP6.QJMJWN25JzNsvWFjNC9Ofw3fYbyuO2W', 'user', '2025-12-11 07:11:29', 'default-avatar.png'),
(6, 'juandelacruz', 'juandelacruz@gmail.com', '$2y$10$Tt9ziZzFSxEMPzvBL7IE0.bfIQQQkfhDJrRsEEXXbFrdlNK7ZS802', 'user', '2025-12-11 09:09:45', 'default-avatar.png'),
(7, 'maine', 'may@gmail.com', '$2y$10$Cz59uxqcJSThjS9VOOoOWOUIl2KOlGMOKNxgGuM7qyogmAIg1PBRG', 'user', '2025-12-17 06:23:45', 'uploads/69424e4a14299-ai women.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_content`
--
ALTER TABLE `about_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_content`
--
ALTER TABLE `footer_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_index` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_content`
--
ALTER TABLE `about_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `footer_content`
--
ALTER TABLE `footer_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
