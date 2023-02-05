-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2023 at 09:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(255) NOT NULL,
  `isCorrect` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `option`, `isCorrect`, `created_at`, `updated_at`) VALUES
(1, 1, 'true', 1, '2023-02-04 11:35:41', '2023-02-04 11:35:41'),
(2, 1, 'false', 0, '2023-02-04 11:35:41', '2023-02-04 11:35:41'),
(3, 2, 'Strings', 0, NULL, NULL),
(4, 2, 'Arrays', 0, NULL, NULL),
(5, 2, 'Objects', 1, NULL, NULL),
(6, 2, 'Resources', 0, NULL, NULL),
(7, 3, 'To define a constant you have to use define() function.', 0, NULL, NULL),
(8, 3, 'To retrieve the value of a constant, you have to simply specify its name.', 0, NULL, NULL),
(9, 3, 'Both of the above.', 1, NULL, NULL),
(10, 3, 'None of the above.', 0, NULL, NULL),
(11, 4, 'Numeric Array', 0, NULL, NULL),
(12, 4, 'Associative Array', 1, NULL, NULL),
(14, 4, 'Multidimentional Array', 0, NULL, NULL),
(16, 4, 'None of the above.', 0, NULL, NULL),
(17, 5, '$_GET', 1, NULL, NULL),
(18, 5, '$GET', 0, NULL, NULL),
(19, 5, '$_POST', 0, NULL, NULL),
(20, 5, 'None of the above.', 0, NULL, NULL),
(21, 6, 'Mozilla Firefox', 0, NULL, NULL),
(22, 6, 'Opera', 0, NULL, NULL),
(23, 6, 'Both of the above.', 1, NULL, NULL),
(24, 6, 'None of the above.', 0, NULL, NULL),
(25, 7, 'nav', 0, NULL, NULL),
(26, 7, 'dialog', 1, NULL, NULL),
(27, 7, 'feature', 0, NULL, NULL),
(28, 7, 'footer', 0, NULL, NULL),
(29, 8, 'true', 1, NULL, NULL),
(30, 8, 'false', 0, NULL, NULL),
(31, 9, 'onchange', 0, NULL, NULL),
(32, 9, 'onedit', 0, NULL, NULL),
(33, 9, 'onformchange', 0, NULL, NULL),
(34, 9, 'onforminput', 1, NULL, NULL),
(35, 10, 'onbeforeload', 0, NULL, NULL),
(36, 10, 'onblur', 1, NULL, NULL),
(37, 10, 'onlostfocus', 0, NULL, NULL),
(38, 10, 'lostfocus', 0, NULL, NULL),
(39, 11, '%', 0, NULL, NULL),
(40, 11, 'cm', 1, NULL, NULL),
(41, 11, 'em', 0, NULL, NULL),
(42, 11, 'ex', 0, NULL, NULL),
(43, 12, 'background-attachment', 0, NULL, NULL),
(44, 12, 'background', 1, NULL, NULL),
(45, 12, 'background-repeat', 0, NULL, NULL),
(46, 12, 'background-position', 0, NULL, NULL),
(47, 13, 'font-size', 0, NULL, NULL),
(48, 13, 'font', 0, NULL, NULL),
(49, 13, 'font-variant', 0, NULL, NULL),
(50, 13, 'font-weight', 0, NULL, NULL),
(51, 14, ':link', 0, NULL, NULL),
(52, 14, ':visited', 0, NULL, NULL),
(53, 14, ':hover', 0, NULL, NULL),
(54, 14, ':active', 0, NULL, NULL),
(55, 15, 'crosshair', 0, NULL, NULL),
(56, 15, 'default', 0, NULL, NULL),
(57, 15, 'pointer', 0, NULL, NULL),
(58, 15, 'move', 0, NULL, NULL),
(59, 16, 'JavaScript variable names must begin with a letter or the underscore character', 0, NULL, NULL),
(60, 16, 'JavaScript variable names are case sensitive', 0, NULL, NULL),
(61, 16, 'Both of the above.', 1, NULL, NULL),
(62, 16, 'None of the above.', 0, NULL, NULL),
(63, 17, 'while()', 0, NULL, NULL),
(64, 17, 'loop()', 0, NULL, NULL),
(65, 17, 'forEach()', 0, NULL, NULL),
(66, 17, 'None of the above.', 0, NULL, NULL),
(67, 18, 'changeOrder(order)', 0, NULL, NULL),
(68, 18, 'order()', 0, NULL, NULL),
(69, 18, 'sort()', 1, NULL, NULL),
(70, 18, 'None of the above.', 0, NULL, NULL),
(71, 19, 'add()', 0, NULL, NULL),
(72, 19, 'merge()', 0, NULL, NULL),
(73, 19, 'concat()', 1, NULL, NULL),
(74, 19, 'append()', 0, NULL, NULL),
(75, 20, 'fixed()', 1, NULL, NULL),
(76, 20, 'big()', 0, NULL, NULL),
(77, 20, 'blink()', 0, NULL, NULL),
(78, 20, 'bold()', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_02_04_101624_create_questions_table', 1),
(4, '2023_02_04_101638_create_answers_table', 1),
(5, '2023_02_04_101655_create_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `created_at`, `updated_at`) VALUES
(1, 'Is PHP case sensitive?', '2023-02-04 11:35:11', '2023-02-04 11:35:11'),
(2, 'Which of the following type of variables are instances of programmer-defined classes?', NULL, NULL),
(3, 'Which of the following is correct about constants?', NULL, NULL),
(4, 'Which of the following array represents an array with strings as index?', NULL, NULL),
(5, 'Which of the following is used to get information sent via get method in PHP?', NULL, NULL),
(6, 'Which of the following browser supports HTML5 in its latest version?', NULL, NULL),
(7, 'Which of the following tag can be used to mark up a conversation in HTML5?', NULL, NULL),
(8, 'Can you use SVG tags directly in HTML5 without any plugin?', NULL, NULL),
(9, 'Which of the following attribute triggers events when a form gets user input?', NULL, NULL),
(10, 'Which of the following attribute triggers event when an element leaves a valid drop target?', NULL, NULL),
(11, 'Which of the following defines a measurement in centimeters?', NULL, NULL),
(12, 'Which of the following property is used as a shorthand to specify a number of other background properties?', NULL, NULL),
(13, 'Which of the following property is used as shorthand to specify a number of other font properties?', NULL, NULL),
(14, 'Which of the following property of a anchor element signifies visited hyperlinks?', NULL, NULL),
(15, ' Which of the following value of cursor shows it as a pointing hand?', NULL, NULL),
(16, 'Which of the following is true about variable naming conventions in JavaScript?', NULL, NULL),
(17, 'Which built-in method calls a function for each element in the array?', NULL, NULL),
(18, 'Which built-in method sorts the elements of an array?', NULL, NULL),
(19, 'Which of the following function of String object combines the text of two strings and returns a new string?', NULL, NULL),
(20, 'Which of the following function of String object causes a string to be displayed in fixed-pitch font as if it were in a <tt> tag?', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
