-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 27, 2022 at 05:52 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `androidh_fluttertraining`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `answerText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerVideo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct` tinyint(2) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answerText`, `answerVideo`, `correct`, `created_at`, `updated_at`) VALUES
(33, 34, NULL, 'https://youtu.be/htVMgHrHJbE', NULL, '2022-12-23 14:19:03', '2022-12-23 14:19:03'),
(34, 34, NULL, 'https://youtu.be/htVMgHrHJbE', NULL, '2022-12-23 14:19:03', '2022-12-23 14:19:03'),
(35, 34, NULL, 'https://youtu.be/htVMgHrHJbE', NULL, '2022-12-23 14:19:03', '2022-12-23 14:19:03'),
(36, 34, NULL, 'https://youtu.be/ovVj-2cHKQI', 1, '2022-12-23 14:19:03', '2022-12-23 14:19:03'),
(37, 35, NULL, 'https://www.youtube.com/watch?v=lWA2pjMjpBs', 1, '2022-12-23 14:24:31', '2022-12-23 14:24:31'),
(38, 35, NULL, 'https://www.youtube.com/watch?v=yd8jh9QYfEs', NULL, '2022-12-23 14:24:31', '2022-12-23 14:24:31'),
(39, 35, NULL, 'https://www.youtube.com/watch?v=lWA2pjMjpBs', NULL, '2022-12-23 14:24:31', '2022-12-23 14:24:31'),
(40, 35, NULL, 'https://www.youtube.com/watch?v=lWA2pjMjpBs', NULL, '2022-12-23 14:24:31', '2022-12-23 14:24:31'),
(41, 37, 'Rihanna - Diamonds', NULL, 1, '2022-12-23 14:26:57', '2022-12-23 14:26:57'),
(42, 37, 'Eminem - Love The Way You Lie', NULL, NULL, '2022-12-23 14:26:57', '2022-12-23 14:26:57'),
(43, 37, 'Eminem - Love The Way You Lie', NULL, NULL, '2022-12-23 14:26:57', '2022-12-23 14:26:57'),
(44, 37, 'Eminem - Love The Way You Lie', NULL, NULL, '2022-12-23 14:26:57', '2022-12-23 14:26:57'),
(45, 37, 'Rihanna - Diamonds', NULL, 1, '2022-12-23 14:27:13', '2022-12-23 14:27:13'),
(46, 37, 'Eminem - Love The Way You Lie', NULL, NULL, '2022-12-23 14:27:13', '2022-12-23 14:27:13'),
(47, 37, 'Eminem - Love The Way You Lie', NULL, NULL, '2022-12-23 14:27:13', '2022-12-23 14:27:13'),
(48, 37, 'Eminem - Love The Way You Lie', NULL, NULL, '2022-12-23 14:27:13', '2022-12-23 14:27:13'),
(49, 38, 'In the end - Linkin Park', NULL, NULL, '2022-12-23 14:28:44', '2022-12-23 14:28:44'),
(50, 38, 'In the end - Linkin Park', NULL, NULL, '2022-12-23 14:28:44', '2022-12-23 14:28:44'),
(51, 38, 'In the end - Linkin Park', NULL, NULL, '2022-12-23 14:28:44', '2022-12-23 14:28:44'),
(52, 38, 'Numb - Linkin Park', NULL, 1, '2022-12-23 14:28:44', '2022-12-23 14:28:44'),
(53, 39, NULL, 'https://www.youtube.com/watch?v=gQlMMD8auMs', NULL, '2022-12-23 14:30:01', '2022-12-23 14:30:01'),
(54, 39, NULL, 'https://www.youtube.com/watch?v=gQlMMD8auMs', NULL, '2022-12-23 14:30:01', '2022-12-23 14:30:01'),
(55, 39, NULL, 'https://www.youtube.com/watch?v=8fN6rW19nQE', 1, '2022-12-23 14:30:01', '2022-12-23 14:30:01'),
(56, 39, NULL, 'https://www.youtube.com/watch?v=gQlMMD8auMs', NULL, '2022-12-23 14:30:01', '2022-12-23 14:30:01'),
(57, 40, NULL, 'https://www.youtube.com/watch?v=Mv9sGzKrz5w', NULL, '2022-12-23 14:30:57', '2022-12-23 14:30:57'),
(58, 40, NULL, 'https://www.youtube.com/watch?v=Mv9sGzKrz5w', NULL, '2022-12-23 14:30:57', '2022-12-23 14:30:57'),
(59, 40, NULL, 'https://www.youtube.com/watch?v=Mv9sGzKrz5w', NULL, '2022-12-23 14:30:57', '2022-12-23 14:30:57'),
(60, 40, NULL, 'https://www.youtube.com/watch?v=gQlMMD8auMs', 1, '2022-12-23 14:30:57', '2022-12-23 14:30:57'),
(61, 41, 'Attention - Charlie Puth', NULL, NULL, '2022-12-23 14:32:26', '2022-12-23 14:32:26'),
(62, 41, 'Tones and I - Dance Monkey', NULL, 1, '2022-12-23 14:32:26', '2022-12-23 14:32:26'),
(63, 41, 'Attention - Charlie Puth', NULL, NULL, '2022-12-23 14:32:26', '2022-12-23 14:32:26'),
(64, 41, 'Attention - Charlie Puth', NULL, NULL, '2022-12-23 14:32:26', '2022-12-23 14:32:26'),
(65, 42, NULL, 'https://www.youtube.com/watch?v=TlFKZAOH-fc&t=2s', NULL, '2022-12-23 14:36:22', '2022-12-23 14:36:22'),
(66, 42, NULL, 'https://www.youtube.com/watch?v=xDOk0ELS2bc', 1, '2022-12-23 14:36:22', '2022-12-23 14:36:22'),
(67, 42, NULL, 'https://www.youtube.com/watch?v=TlFKZAOH-fc&t=2s', NULL, '2022-12-23 14:36:22', '2022-12-23 14:36:22'),
(68, 42, NULL, 'https://www.youtube.com/watch?v=TlFKZAOH-fc&t=2s', NULL, '2022-12-23 14:36:22', '2022-12-23 14:36:22'),
(69, 43, NULL, 'https://www.youtube.com/watch?v=GAuTfX4TH94', NULL, '2022-12-23 14:38:16', '2022-12-23 14:38:16'),
(70, 43, NULL, 'https://www.youtube.com/watch?v=GAuTfX4TH94', NULL, '2022-12-23 14:38:16', '2022-12-23 14:38:16'),
(71, 43, NULL, 'https://www.youtube.com/watch?v=GAuTfX4TH94', NULL, '2022-12-23 14:38:16', '2022-12-23 14:38:16'),
(72, 43, NULL, 'https://www.youtube.com/watch?v=-9jdiRKhDvM', 1, '2022-12-23 14:38:16', '2022-12-23 14:38:16'),
(73, 45, NULL, 'https://www.youtube.com/watch?v=nwN1v7xqejg', 1, '2022-12-23 14:39:25', '2022-12-23 14:39:25'),
(74, 45, NULL, 'https://www.youtube.com/watch?v=23mP0ZTDCUY', NULL, '2022-12-23 14:39:25', '2022-12-23 14:39:25'),
(75, 45, NULL, 'https://www.youtube.com/watch?v=23mP0ZTDCUY', NULL, '2022-12-23 14:39:25', '2022-12-23 14:39:25'),
(76, 45, NULL, 'https://www.youtube.com/watch?v=23mP0ZTDCUY', NULL, '2022-12-23 14:39:25', '2022-12-23 14:39:25'),
(77, 46, 'Naruto', NULL, 1, '2022-12-23 14:41:35', '2022-12-23 14:41:35'),
(78, 46, 'Doraemon', NULL, NULL, '2022-12-23 14:41:35', '2022-12-23 14:41:35'),
(79, 46, 'Doraemon', NULL, NULL, '2022-12-23 14:41:35', '2022-12-23 14:41:35'),
(80, 46, 'Doraemon', NULL, NULL, '2022-12-23 14:41:35', '2022-12-23 14:41:35'),
(81, 47, 'Two Piece', NULL, NULL, '2022-12-23 14:43:11', '2022-12-23 14:43:11'),
(82, 47, 'Two Piece', NULL, NULL, '2022-12-23 14:43:11', '2022-12-23 14:43:11'),
(83, 47, 'One Piece', NULL, 1, '2022-12-23 14:43:11', '2022-12-23 14:43:11'),
(84, 47, 'Two Piece', NULL, NULL, '2022-12-23 14:43:11', '2022-12-23 14:43:11'),
(85, 48, 'Reborn', NULL, NULL, '2022-12-23 14:45:17', '2022-12-23 14:45:17'),
(86, 48, 'Reborn', NULL, NULL, '2022-12-23 14:45:17', '2022-12-23 14:45:17'),
(87, 48, 'Reborn', NULL, NULL, '2022-12-23 14:45:17', '2022-12-23 14:45:17'),
(88, 48, 'Conan', NULL, 1, '2022-12-23 14:45:17', '2022-12-23 14:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coure_id` int(11) NOT NULL,
  `contentname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `coure_id`, `contentname`, `video`, `image`, `content_text`, `created_at`, `updated_at`) VALUES
(20, 6, 'แก้ว45', 'https://streamable.com/4dw5qq', NULL, 'ของกิน', '2022-12-12 02:05:37', '2022-12-12 02:05:37'),
(21, 3, 'เขียว', 'https://streamable.com/4dw5qq', NULL, 'สีเขียว', '2022-12-18 23:42:14', '2022-12-18 23:42:14'),
(23, 2, 'จาน', 'จาน', NULL, 'ของใช้', '2022-12-23 01:49:37', '2022-12-23 01:49:37'),
(24, 11, 'Number', 'https://www.youtube.com/watch?v=fD1hi6NUOAI', NULL, 'sign language numbers', '2022-12-23 14:14:07', '2022-12-23 14:14:07'),
(25, 12, 'Rihanna - Don\'t Stop The Music', 'https://www.youtube.com/watch?v=yd8jh9QYfEs', NULL, 'Rihanna - Don\'t Stop The Music', '2022-12-23 14:15:05', '2022-12-23 14:15:05'),
(26, 11, 'ภาษามือ ตัวเลข', 'https://www.youtube.com/watch?v=7_lahB-irIY', NULL, 'ภาษามือ ตัวเลข', '2022-12-23 14:17:11', '2022-12-23 14:17:11'),
(27, 11, 'ภาษามือไทยขั้นพื้นฐาน', 'https://www.youtube.com/watch?v=T-0m-ST_Gpg', NULL, 'ภาษามือไทยขั้นพื้นฐาน', '2022-12-23 14:21:04', '2022-12-23 14:21:04'),
(28, 11, 'ภาษามือ ตัวเลข', 'https://www.youtube.com/watch?v=fD1hi6NUOAI', NULL, 'ภาษามือ ตัวเลข', '2022-12-23 14:22:24', '2022-12-23 14:22:24'),
(29, 12, 'Rihanna - Diamonds', 'https://www.youtube.com/watch?v=lWA2pjMjpBs', NULL, 'Rihanna - Diamonds', '2022-12-23 14:25:02', '2022-12-23 14:25:02'),
(30, 12, 'Numb  - Linkin Park', 'https://www.youtube.com/watch?v=kXYiU_JCYtU', NULL, 'Numb  - Linkin Park', '2022-12-23 14:27:44', '2022-12-23 14:27:44'),
(31, 12, 'Lady Gaga - Bloody Mary', 'https://www.youtube.com/watch?v=8fN6rW19nQE', NULL, 'Lady Gaga - Bloody Mary', '2022-12-23 14:29:37', '2022-12-23 14:29:37'),
(32, 12, 'BLACKPINK - ‘Pink Venom’', 'https://www.youtube.com/watch?v=gQlMMD8auMs', NULL, 'BLACKPINK - ‘Pink Venom’', '2022-12-23 14:30:15', '2022-12-23 14:30:15'),
(33, 12, 'Tones and I - Dance Monkey', 'https://www.youtube.com/watch?v=RiCK_ej0IWQ', NULL, 'Tones and I - Dance Monkey', '2022-12-23 14:31:48', '2022-12-23 14:31:48'),
(34, 13, 'โดราเอม่อน', 'https://www.youtube.com/watch?v=xDOk0ELS2bc', NULL, 'ไล่ไจแอนท์กลับไปซะ', '2022-12-23 14:35:34', '2022-12-23 14:35:34'),
(35, 13, 'Larva', 'https://www.youtube.com/watch?v=-9jdiRKhDvM', NULL, 'Larva', '2022-12-23 14:37:06', '2022-12-23 14:37:06'),
(36, 13, 'Tom and Jerry', 'https://www.youtube.com/watch?v=nwN1v7xqejg', NULL, 'Tom and Jerry', '2022-12-23 14:38:48', '2022-12-23 14:38:48'),
(37, 13, 'Naruto', 'https://www.youtube.com/watch?v=pPeACdLYbDk', NULL, 'Naruto run', '2022-12-23 14:40:39', '2022-12-23 14:40:39'),
(38, 13, 'One Piece', 'https://www.youtube.com/watch?v=w4pzcpXwXP0', NULL, 'One Piece', '2022-12-23 14:42:33', '2022-12-23 14:42:33'),
(39, 13, 'Conan', 'https://www.youtube.com/watch?v=VcRblMT5k8k', NULL, 'Conan', '2022-12-23 14:44:36', '2022-12-23 14:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `coures`
--

CREATE TABLE `coures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `couresname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coures`
--

INSERT INTO `coures` (`id`, `couresname`, `created_at`, `updated_at`) VALUES
(1, 'ทักทาย', '2022-11-11 08:10:30', '2022-11-11 08:10:30'),
(2, 'ของใช้', '2022-11-11 08:10:33', '2022-11-11 08:10:33'),
(3, 'สี', '2022-11-11 08:10:36', '2022-11-11 08:10:36'),
(4, 'ตัวเลข', '2022-11-11 08:10:39', '2022-11-11 08:10:39'),
(5, 'วัน-เดือน-ปี', '2022-11-18 08:49:38', '2022-11-18 08:49:38'),
(6, 'ของกิน', '2022-11-29 07:24:54', '2022-11-29 07:24:54'),
(7, 'ของเล่น', '2022-11-29 08:38:28', '2022-11-29 08:38:28'),
(8, 'ของอร่อย', '2022-12-14 03:53:06', '2022-12-14 03:53:06'),
(9, 'Fat', '2022-12-22 12:37:39', '2022-12-22 12:37:39'),
(10, 'color', '2022-12-23 14:10:57', '2022-12-23 14:10:57'),
(11, 'Number', '2022-12-23 14:12:12', '2022-12-23 14:12:12'),
(12, 'Music', '2022-12-23 14:14:02', '2022-12-23 14:14:02'),
(13, 'Cartoon', '2022-12-23 14:34:37', '2022-12-23 14:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(7, '2022_10_15_075636_create_coures_table', 2),
(8, '2022_10_15_081152_create_quiz_table', 2),
(15, '2022_11_11_150525_create_contents_table', 3),
(16, '2022_11_22_153119_create_questions_table', 3),
(17, '2022_11_23_150919_create_answers_table', 4),
(18, '2022_12_01_144048_create_users_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coure_id` int(11) NOT NULL,
  `questionText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `questionVideo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `coure_id`, `questionText`, `questionVideo`, `created_at`, `updated_at`) VALUES
(26, 2, 'สวัสดี', NULL, '2022-12-22 16:32:06', '2022-12-22 16:32:06'),
(32, 6, 'เงาะ', NULL, '2022-12-23 02:02:40', '2022-12-23 02:02:40'),
(33, 1, NULL, 'https://youtu.be/weH8zUM7TOM', '2022-12-23 03:12:34', '2022-12-23 03:12:34'),
(34, 12, 'สีเทา', NULL, '2022-12-23 14:18:00', '2022-12-23 14:18:00'),
(35, 12, 'Rihanna - Don\'t Stop The Music', NULL, '2022-12-23 14:24:05', '2022-12-23 14:24:05'),
(36, 11, 'เลข 1', NULL, '2022-12-23 14:25:04', '2022-12-23 14:25:04'),
(37, 12, NULL, 'https://www.youtube.com/watch?v=lWA2pjMjpBs', '2022-12-23 14:25:32', '2022-12-23 14:25:32'),
(38, 12, NULL, 'https://www.youtube.com/watch?v=kXYiU_JCYtU', '2022-12-23 14:28:09', '2022-12-23 14:28:09'),
(39, 12, 'Lady Gaga - Bloody Mary', NULL, '2022-12-23 14:29:47', '2022-12-23 14:29:47'),
(40, 12, 'BLACKPINK - ‘Pink Venom’', NULL, '2022-12-23 14:30:28', '2022-12-23 14:30:28'),
(41, 12, NULL, 'https://www.youtube.com/watch?v=RiCK_ej0IWQ', '2022-12-23 14:32:02', '2022-12-23 14:32:02'),
(42, 13, 'โดราเอม่อน', NULL, '2022-12-23 14:35:55', '2022-12-23 14:35:55'),
(43, 13, 'Larva', NULL, '2022-12-23 14:37:20', '2022-12-23 14:37:20'),
(45, 13, 'Tom and Jerry', NULL, '2022-12-23 14:39:01', '2022-12-23 14:39:01'),
(46, 13, NULL, 'https://www.youtube.com/watch?v=pPeACdLYbDk', '2022-12-23 14:40:56', '2022-12-23 14:40:56'),
(47, 13, NULL, 'https://www.youtube.com/watch?v=w4pzcpXwXP0', '2022-12-23 14:42:51', '2022-12-23 14:42:51'),
(48, 13, NULL, 'https://www.youtube.com/watch?v=VcRblMT5k8k', '2022-12-23 14:44:48', '2022-12-23 14:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_score`
--

CREATE TABLE `quiz_score` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coure_id` int(11) NOT NULL,
  `score` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passwords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `passwords`, `images`, `created_at`, `updated_at`) VALUES
(31, 'art', '6543', NULL, '2022-12-17 14:33:25', '2022-12-17 14:33:25'),
(33, 'kittipong', '4321', NULL, '2022-12-17 14:45:25', '2022-12-17 14:45:25'),
(34, 'tang', '12345', NULL, '2022-12-17 14:46:10', '2022-12-17 14:46:10'),
(35, 'yaowa', '55555', NULL, '2022-12-17 14:46:53', '2022-12-17 14:46:53'),
(36, 'asdf', '567', NULL, '2022-12-17 14:49:59', '2022-12-17 14:49:59'),
(37, 'oooo', 'iiiiii', NULL, '2022-12-17 14:50:24', '2022-12-17 14:50:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coures`
--
ALTER TABLE `coures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_score`
--
ALTER TABLE `quiz_score`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `coures`
--
ALTER TABLE `coures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `quiz_score`
--
ALTER TABLE `quiz_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
