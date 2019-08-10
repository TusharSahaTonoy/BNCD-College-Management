-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2019 at 01:12 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datatech_myschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_attendances`
--

CREATE TABLE `class_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `att_list` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_section_lists`
--

CREATE TABLE `class_section_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_lists`
--

CREATE TABLE `class_subject_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_subject_lists`
--

INSERT INTO `class_subject_lists` (`id`, `class`, `group`, `subject`, `created_at`, `updated_at`) VALUES
(6, '7', NULL, 'Bangla', '2019-07-27 02:30:31', '2019-07-27 02:30:31'),
(7, '7', NULL, 'English', '2019-07-27 02:30:31', '2019-07-27 02:30:31'),
(8, '7', NULL, 'Math', '2019-07-27 02:30:31', '2019-07-27 02:30:31'),
(9, '7', NULL, 'Science', '2019-07-27 02:30:31', '2019-07-27 02:30:31'),
(10, '8', NULL, 'Bangla', '2019-07-28 02:06:37', '2019-07-28 02:06:37'),
(11, '8', NULL, 'Engilsh', '2019-07-28 02:06:37', '2019-07-28 02:06:37'),
(12, '12', 'Science', 'ict', '2019-07-30 14:31:52', '2019-07-30 14:31:52'),
(13, '12', 'Science', 'ictt', '2019-07-30 14:31:52', '2019-07-30 14:31:52'),
(14, '11', 'Science', 'Bangla', '2019-07-30 22:48:22', '2019-07-30 22:48:22'),
(15, '11', 'Science', 'Bangla1', '2019-07-30 22:48:22', '2019-07-30 22:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `mark_distributions`
--

CREATE TABLE `mark_distributions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `final` int(11) NOT NULL,
  `attendance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_14_015418_create_teachers_table', 2),
(4, '2019_07_14_072906_create_students_table', 3),
(5, '2019_07_14_084636_create_stu_main_guardians_table', 4),
(7, '2019_07_14_084758_create_stu_local_guardians_table', 4),
(8, '2019_07_14_084850_create_stu_school_infos_table', 4),
(13, '2019_07_14_084713_create_stu_parents_table', 5),
(14, '2019_07_14_085522_create_subject_teachers_table', 6),
(15, '2019_07_14_085811_create_class_attendances_table', 6),
(16, '2019_07_14_085835_create_class_section_lists_table', 6),
(17, '2019_07_14_085904_create_class_subject_lists_table', 6),
(19, '2019_07_14_142736_create_stu_office_infos_table', 7),
(20, '2019_07_19_040045_create_workers_table', 8),
(21, '2019_07_20_063957_create_stu_attendances_table', 8),
(22, '2019_07_23_110012_create_subject_marks_table', 9),
(23, '2019_07_23_113552_create_mark_distributions_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `student_name`, `nationality`, `religion`, `date_of_birth`, `image`, `emergency1`, `emergency2`, `user_id`, `created_at`, `updated_at`) VALUES
(9, '111', 'Coma', 'Bangladeshi', 'Islam', '2014-05-10', 's123.jpg', '0123456789', NULL, 'S-111', '2019-07-16 15:20:19', '2019-07-16 15:20:19'),
(10, '222', 'Faruk khan', 'Bangladesh', 'Islam', '1998-06-14', 's142.png', '0123466799', NULL, 'S-222', '2019-07-19 06:14:16', '2019-07-19 06:14:16'),
(11, '333', 'Lomon h', 'Bangladeshi', 'Hindu', '1990-02-06', '1.jpg', '012345678900', NULL, 'S-333', '2019-07-19 06:17:55', '2019-07-19 06:17:55'),
(12, '444', 'Dalim mia', 'Bangladeshi', 'Islam', '2000-12-05', 's452.jpg', '0123456789', NULL, 'S-444', '2019-07-19 07:05:53', '2019-07-19 07:05:53'),
(13, '8111', 'Alom q', 'Bangladeshi', 'Islam', '2006-02-06', 's42.jpg', '01234567890', NULL, 'S-8111', '2019-07-20 04:42:10', '2019-07-20 04:42:10'),
(14, '8112', 'Manik Sha', 'Bangladeshi', 'Islam', '2007-02-12', 's1234.jpg', '01234567890', NULL, 'S-8112', '2019-07-20 04:45:25', '2019-07-20 04:45:25'),
(15, '9111', 'Aomc', 'Bangladeshi', 'Islam', '2019-07-15', 's1563981070.jpg', NULL, NULL, 'S-9111', '2019-07-24 09:11:11', '2019-07-24 09:11:11'),
(16, '12111', 'Amoxbc', 'Bangladeshi', 'Islam', '2019-07-20', 's1564126806.png', NULL, NULL, 'S-12111', '2019-07-26 01:40:06', '2019-07-26 01:40:06'),
(17, '12000', 'Amoxbc', 'Bangladeshi', 'Islam', '2019-07-21', 's1564127775.png', NULL, NULL, 'S-12000', '2019-07-26 01:56:15', '2019-07-26 01:56:15'),
(18, '7112', 'Glam', 'Bangladeshi', 'Islam', '2000-09-28', 's1564219027.png', NULL, NULL, 'S-7112', '2019-07-27 03:17:07', '2019-07-27 03:17:07'),
(19, '7113', 'Colam', 'Bangladeshi', 'Islam', '2002-10-30', 's1564303314.jpg', NULL, NULL, 'S-7113', '2019-07-28 02:41:55', '2019-07-28 02:41:55'),
(20, '1', 'Sajeeb', 'Bangladesh', 'Islam', '1998-03-16', 's1564483489.jpeg', '01333333333', '01333333333', 'S-1', '2019-07-30 14:44:49', '2019-07-30 14:44:49'),
(21, '5', 'r', 'Bangladesh', 'Islam', '2123-05-05', 's1564483575.jpg', '01333333333', '01333333333', 'S-5', '2019-07-30 14:46:15', '2019-07-30 14:46:15'),
(22, '666', 'y', 'Bangladesh', 'Islam', '2001-02-25', 's1564483821.jpg', '01333333333', '01333333333', 'S-666', '2019-07-30 14:50:21', '2019-07-30 14:50:21'),
(23, '325', 'G', 'Bangladesh', 'Islam', '2005-02-02', 's1564483910.jpg', '01333333333', '01333333333', 'S-325', '2019-07-30 14:51:50', '2019-07-30 14:51:50'),
(24, '9', 'S', 'Bangladesh', 'Islam', '2005-02-25', 's1564483999.jpg', '01333333333', '01333333333', 'S-9', '2019-07-30 14:53:19', '2019-07-30 14:53:19'),
(25, '1234', 'b', 'Bangladesh', 'Islam', '2005-02-25', 's1564484075.jpg', '01333333333', '01333333333', 'S-1234', '2019-07-30 14:54:35', '2019-07-30 14:54:35'),
(26, '65', 'm', 'Bangladesh', 'Islam', '2009-02-25', 's1564484145.jpg', '01333333333', '01333333333', 'S-65', '2019-07-30 14:55:45', '2019-07-30 14:55:45'),
(27, '20', 'u', 'Bangladesh', 'Islam', '2008-02-25', 's1564484214.jpg', '01333333333', '01333333333', 'S-20', '2019-07-30 14:56:54', '2019-07-30 14:56:54'),
(28, '6', 'p', 'Bangladesh', 'Islam', '2001-02-25', 's1564484278.jpg', '01333333333', '01333333333', 'S-6', '2019-07-30 14:57:58', '2019-07-30 14:57:58'),
(29, '10', 'n', 'Bangladesh', 'Islam', '2003-01-20', 's1564484361.jpg', '01333333333', '01333333333', 'S-10', '2019-07-30 14:59:21', '2019-07-30 14:59:21'),
(30, '11', 'h', 'Bangladesh', 'Islam', '2003-02-25', 's1564484435.jpg', '01333333333', '01333333333', 'S-11', '2019-07-30 15:00:35', '2019-07-30 15:00:35'),
(31, '13', 'v', 'Bangladesh', 'Islam', '2060-02-25', 's1564484502.jpg', '01333333333', '01333333333', 'S-13', '2019-07-30 15:01:42', '2019-07-30 15:01:42'),
(32, '14', 'j', 'Bangladesh', 'Islam', '2006-02-20', 's1564484583.jpg', '01333333333', '01333333333', 'S-14', '2019-07-30 15:03:03', '2019-07-30 15:03:03'),
(33, '15', 'x', 'Bangladesh', 'Islam', '2003-02-25', 's1564484639.jpg', '01333333333', '01333333333', 'S-15', '2019-07-30 15:03:59', '2019-07-30 15:03:59'),
(34, '17', 'k', 'Bangladesh', 'Islam', '2003-02-25', 's1564484734.jpg', '01333333333', '01333333333', 'S-17', '2019-07-30 15:05:34', '2019-07-30 15:05:34'),
(35, '19', 'g', 'Bangladesh', 'Islam', '2008-02-25', 's1564484802.jpg', '01333333333', '01333333333', 'S-19', '2019-07-30 15:06:42', '2019-07-30 15:06:42'),
(36, '25', 'Q', 'Bangladesh', 'Islam', '2200-02-02', 's1564484901.jpg', '01333333333', '01333333333', 'S-25', '2019-07-30 15:08:21', '2019-07-30 15:08:21'),
(37, '26', 'i', 'Bangladesh', 'Islam', '2001-02-25', 's1564485035.jpg', '01333333333', '01333333333', 'S-26', '2019-07-30 15:10:35', '2019-07-30 15:10:35'),
(38, '31', 'oo', 'Bangladesh', 'Islam', '2003-02-25', 's1564485122.jpg', '01333333333', '01333333333', 'S-31', '2019-07-30 15:12:02', '2019-07-30 15:12:02'),
(39, '100', 'Y', 'Bangladesh', 'Islam', '2001-02-25', 's1564485290.jpg', '01333333333', '01333333333', 'S-100', '2019-07-30 15:14:50', '2019-07-30 15:14:50'),
(40, '101', 'H', 'Bangladesh', 'Islam', '2003-02-25', 's1564485369.jpg', '01333333333', '01333333333', 'S-101', '2019-07-30 15:16:09', '2019-07-30 15:16:09'),
(41, '102', 'W', 'Bangladesh', 'Islam', '2008-02-25', 's1564485469.jpg', '01333333333', '01333333333', 'S-102', '2019-07-30 15:17:49', '2019-07-30 15:17:49'),
(42, '103', 'O', 'Bangladesh', 'Islam', '2000-02-25', 's1564485546.jpg', '01333333333', '01333333333', 'S-103', '2019-07-30 15:19:06', '2019-07-30 15:19:06'),
(43, '105', 'S', 'Bangladesh', 'Islam', '2003-02-25', 's1564485612.jpg', '01333333333', '01333333333', 'S-105', '2019-07-30 15:20:12', '2019-07-30 15:20:12'),
(44, '110', 'd', 'Bangladesh', 'Islam', '2003-02-25', 's1564485703.jpg', '01333333333', '01333333333', 'S-110', '2019-07-30 15:21:43', '2019-07-30 15:21:43'),
(45, '112', 'pp', 'Bangladesh', 'Islam', '2008-02-25', 's1564485822.jpg', '01333333333', '01333333333', 'S-112', '2019-07-30 15:23:42', '2019-07-30 15:23:42'),
(46, '113', 'uu', 'Bangladesh', 'Islam', '2000-02-25', 's1564485878.jpg', '01333333333', '01333333333', 'S-113', '2019-07-30 15:24:38', '2019-07-30 15:24:38'),
(47, '114', 'ii', 'Bangladesh', 'Islam', '2009-02-25', 's1564485966.jpg', '01333333333', '01333333333', 'S-114', '2019-07-30 15:26:06', '2019-07-30 15:26:06'),
(48, '115', 'ww', 'Bangladesh', 'Islam', '2009-02-25', 's1564486043.jpg', '01333333333', '01333333333', 'S-115', '2019-07-30 15:27:23', '2019-07-30 15:27:23'),
(49, '9001', 'bb', 'Bangladesh', 'Islam', '2009-02-25', 's1564486193.jpg', '01333333333', '01333333333', 'S-9001', '2019-07-30 15:29:53', '2019-07-30 15:29:53'),
(50, '9002', 'll', 'Bangladesh', 'Islam', '2005-02-25', 's1564486259.jpg', '01333333333', '01333333333', 'S-9002', '2019-07-30 15:31:00', '2019-07-30 15:31:00'),
(51, '9003', 'Kk', 'Bangladesh', 'Islam', '2010-01-25', 's1564486358.jpg', '01333333333', '01333333333', 'S-9003', '2019-07-30 15:32:38', '2019-07-30 15:32:38'),
(52, '9004', 'zz', 'Bangladesh', 'Islam', '2004-10-23', 's1564486442.jpg', '01333333333', '01333333333', 'S-9004', '2019-07-30 15:34:02', '2019-07-30 15:34:02'),
(53, '9005', 'gg', 'Bangladesh', 'Islam', '2004-02-25', 's1564486543.jpg', '01333333333', '01333333333', 'S-9005', '2019-07-30 15:35:43', '2019-07-30 15:35:43'),
(54, '8001', 'vv', 'Bangladesh', 'Islam', '2009-02-25', 's1564486670.jpg', '01333333333', '01333333333', 'S-8001', '2019-07-30 15:37:50', '2019-07-30 15:37:50'),
(55, '8002', 'rr', 'Bangladesh', 'Islam', '2022-02-02', 's1564486817.jpg', '01333333333', '01333333333', 'S-8002', '2019-07-30 15:40:18', '2019-07-30 15:40:18'),
(56, '8003', 'zz', 'Bangladesh', 'Islam', '20014-02-25', 's1564486888.jpg', '01333333333', '01333333333', 'S-8003', '2019-07-30 15:41:28', '2019-07-30 15:41:28'),
(57, '8004', 'zzz', 'Bangladesh', 'Islam', '52000-02-02', 's1564486960.jpg', '01333333333', '01333333333', 'S-8004', '2019-07-30 15:42:40', '2019-07-30 15:42:40'),
(58, '7001', 'cc', 'Bangladesh', 'Islam', '2000-02-25', 's1564487017.jpg', '01333333333', '01333333333', 'S-7001', '2019-07-30 15:43:37', '2019-07-30 15:43:37'),
(59, '7002', 'jj', 'Bangladesh', 'Islam', '2000-02-25', 's1564487110.jpg', '01333333333', '01333333333', 'S-7002', '2019-07-30 15:45:10', '2019-07-30 15:45:10'),
(60, '7003', 'tt', 'Bangladesh', 'Islam', '2000-02-25', 's1564487171.jpg', '01333333333', '01333333333', 'S-7003', '2019-07-30 15:46:11', '2019-07-30 15:46:11'),
(61, '7004', 'uu', 'Bangladesh', 'Islam', '2000-02-25', 's1564487237.jpg', '01333333333', '01333333333', 'S-7004', '2019-07-30 15:47:17', '2019-07-30 15:47:17'),
(62, '6001', 'ff', 'Bangladesh', 'Islam', '20000-02-25', 's1564487333.jpg', '01333333333', '01333333333', 'S-6001', '2019-07-30 15:48:53', '2019-07-30 15:48:53'),
(63, '6002', 'mm', 'Bangladesh', 'Islam', '2000-02-20', 's1564487429.jpg', '01333333333', '01333333333', 'S-6002', '2019-07-30 15:50:29', '2019-07-30 15:50:29'),
(64, '6003', 'vv', 'Bangladesh', 'Islam', '2019-12-31', 's1564487571.jpg', '01333333333', '01333333333', 'S-6003', '2019-07-30 15:52:51', '2019-07-30 15:52:51'),
(65, '6004', 'ee', 'Bangladesh', 'Islam', '2019-12-31', 's1564487701.jpg', '01333333333', '01333333333', 'S-6004', '2019-07-30 15:55:01', '2019-07-30 15:55:01'),
(66, '5001', 'w', 'Bangladesh', 'Islam', '2019-12-31', 's1564487868.jpg', '01333333333', '01333333333', 'S-5001', '2019-07-30 15:57:48', '2019-07-30 15:57:48'),
(67, '5002', 'dd', 'Bangladesh', 'Islam', '2019-12-31', 's1564487922.jpg', '01333333333', '01333333333', 'S-5002', '2019-07-30 15:58:43', '2019-07-30 15:58:43'),
(68, '5003', 'vb', 'Bangladesh', 'Islam', '2019-12-31', 's1564487983.jpg', '01333333333', '01333333333', 'S-5003', '2019-07-30 15:59:43', '2019-07-30 15:59:43'),
(69, '5004', 'nm', 'Bangladesh', 'Islam', '2019-12-31', 's1564488047.jpg', '01333333333', '01333333333', 'S-5004', '2019-07-30 16:00:47', '2019-07-30 16:00:47'),
(70, '4001', 'cc', 'Bangladesh', 'Islam', '2019-12-31', 's1564488118.jpg', '01333333333', '01333333333', 'S-4001', '2019-07-30 16:01:58', '2019-07-30 16:01:58'),
(71, '4002', 'bb', 'Bangladesh', 'Islam', '2019-12-31', 's1564488190.jpg', '01333333333', '01333333333', 'S-4002', '2019-07-30 16:03:10', '2019-07-30 16:03:10'),
(72, '4003', 'mn', 'Bangladesh', 'Islam', '2019-12-01', 's1564488261.jpg', '01333333333', '01333333333', 'S-4003', '2019-07-30 16:04:21', '2019-07-30 16:04:21'),
(73, '4004', 'dd', 'Bangladesh', 'Islam', '2019-12-31', 's1564488323.jpg', '01333333333', '01333333333', 'S-4004', '2019-07-30 16:05:23', '2019-07-30 16:05:23'),
(74, '4005', 'Golam', 'Bangladesh', 'Islam', '2019-12-31', 's1564488399.jpg', '01333333333', '01333333333', 'S-4005', '2019-07-30 16:06:40', '2019-07-30 16:06:40'),
(75, '5005', 'yT', 'Bangladesh', 'Islam', '2019-12-31', 's1564488545.jpg', '01333333333', '01333333333', 'S-5005', '2019-07-30 16:09:05', '2019-07-30 16:09:05'),
(76, '6005', 'bb', 'Bangladesh', 'Islam', '2019-12-31', 's1564488610.jpg', '01333333333', '01333333333', 'S-6005', '2019-07-30 16:10:10', '2019-07-30 16:10:10'),
(77, '7005', 'Rr', 'Bangladesh', 'Islam', '2019-12-31', 's1564488687.jpg', '01333333333', '01333333333', 'S-7005', '2019-07-30 16:11:27', '2019-07-30 16:11:27'),
(78, '8005', 'ss', 'Bangladesh', 'Islam', '2019-12-31', 's1564488796.jpg', '01333333333', '01333333333', 'S-8005', '2019-07-30 16:13:16', '2019-07-30 16:13:16'),
(79, '10233', 'Demo', 'bangladehsi', 'Islam', '2015-10-06', 's1564903037.png', '01724808055', '01724808055', 'S-10233', '2019-08-04 11:17:17', '2019-08-04 11:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `stu_attendances`
--

CREATE TABLE `stu_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendance` tinyint(4) NOT NULL,
  `att_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stu_attendances`
--

INSERT INTO `stu_attendances` (`id`, `student_id`, `class`, `group`, `subject`, `section`, `teacher_id`, `attendance`, `att_date`, `created_at`, `updated_at`) VALUES
(1, '222', '9', 'Science', 'aaa', 'A', '1231', 1, '2019-07-20', '2019-07-20 02:04:28', '2019-07-20 02:04:28'),
(2, '333', '9', 'Science', 'aaa', 'A', '1231', 0, '2019-07-20', '2019-07-20 02:04:28', '2019-07-20 02:04:28'),
(3, '444', '9', 'Science', 'aaa', 'A', '1231', 2, '2019-07-20', '2019-07-20 02:04:28', '2019-07-20 02:04:28'),
(4, '222', '9', 'Science', 'ccc', 'A', '1231', 1, '2019-07-21', '2019-07-20 02:07:17', '2019-07-20 02:07:17'),
(5, '333', '9', 'Science', 'ccc', 'A', '1231', 0, '2019-07-21', '2019-07-20 02:07:17', '2019-07-20 02:07:17'),
(6, '444', '9', 'Science', 'ccc', 'A', '1231', 1, '2019-07-21', '2019-07-20 02:07:17', '2019-07-20 02:07:17'),
(7, '222', '9', 'Science', 'aaa', 'A', '1231', 1, '2019-07-22', '2019-07-20 03:21:20', '2019-07-20 03:21:20'),
(8, '333', '9', 'Science', 'aaa', 'A', '1231', 0, '2019-07-22', '2019-07-20 03:21:20', '2019-07-20 03:21:20'),
(9, '444', '9', 'Science', 'aaa', 'A', '1231', 1, '2019-07-22', '2019-07-20 03:21:20', '2019-07-20 03:21:20'),
(10, '222', '9', 'Science', 'ccc', 'A', '1231', 0, '2019-07-20', '2019-07-20 03:23:41', '2019-07-20 03:23:41'),
(11, '333', '9', 'Science', 'ccc', 'A', '1231', 1, '2019-07-20', '2019-07-20 03:23:41', '2019-07-20 03:23:41'),
(12, '444', '9', 'Science', 'ccc', 'A', '1231', 1, '2019-07-20', '2019-07-20 03:23:41', '2019-07-20 03:23:41'),
(13, '8111', '8', NULL, 'aaa', 'A', '1231', 0, '2019-07-21', '2019-07-20 05:55:08', '2019-07-20 05:55:08'),
(14, '8112', '8', NULL, 'aaa', 'A', '1231', 1, '2019-07-21', '2019-07-20 05:55:08', '2019-07-20 05:55:08'),
(15, '8111', '8', NULL, 'ccc', 'A', '1231', 1, '2019-07-20', '2019-07-20 05:55:28', '2019-07-20 05:55:28'),
(16, '8112', '8', NULL, 'ccc', 'A', '1231', 1, '2019-07-20', '2019-07-20 05:55:28', '2019-07-20 05:55:28'),
(17, '8111', '8', NULL, 'aaa', 'A', '1231', 2, '2019-07-23', '2019-07-21 14:54:51', '2019-07-21 14:54:51'),
(18, '8112', '8', NULL, 'aaa', 'A', '1231', 2, '2019-07-23', '2019-07-21 14:54:51', '2019-07-21 14:54:51'),
(19, '8111', '8', NULL, 'aaa', 'A', '1231', 1, '2019-07-15', '2019-07-24 05:35:28', '2019-07-24 05:35:28'),
(20, '8112', '8', NULL, 'aaa', 'A', '1231', 2, '2019-07-15', '2019-07-24 05:35:28', '2019-07-24 05:35:28'),
(21, '8111', '8', NULL, 'aaa', 'A', '1231', 0, '2019-07-18', '2019-07-29 18:59:38', '2019-07-29 18:59:38'),
(22, '8112', '8', NULL, 'aaa', 'A', '1231', 1, '2019-07-18', '2019-07-29 18:59:38', '2019-07-29 18:59:38'),
(23, '1', '11', 'Science', 'Bangla', 'A', '10222', 1, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(24, '666', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(25, '325', '11', 'Science', 'Bangla', 'A', '10222', 2, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(26, '9', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(27, '1234', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(28, '65', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(29, '20', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(30, '6', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(31, '10', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(32, '11', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(33, '13', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(34, '14', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(35, '15', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(36, '17', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(37, '19', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(38, '26', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32'),
(39, '31', '11', 'Science', 'Bangla', 'A', '10222', 0, '2019-01-01', '2019-08-02 18:55:32', '2019-08-02 18:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `stu_local_guardians`
--

CREATE TABLE `stu_local_guardians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reletion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_int` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stu_main_guardians`
--

CREATE TABLE `stu_main_guardians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reletion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_int` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stu_office_infos`
--

CREATE TABLE `stu_office_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admission_date` date NOT NULL,
  `nomination_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stu_office_infos`
--

INSERT INTO `stu_office_infos` (`id`, `class`, `group`, `section`, `roll`, `admission_date`, `nomination_count`, `security_code`, `student_id`, `created_at`, `updated_at`) VALUES
(6, '7', NULL, 'A', '111', '0000-00-00', NULL, NULL, '111', '2019-07-16 15:20:19', '2019-07-16 15:20:19'),
(7, '9', 'Science', 'A', '222', '0000-00-00', 'Tushar Saha', '12301', '222', '2019-07-19 06:14:16', '2019-07-19 06:14:16'),
(8, '9', 'Science', 'A', '333', '0000-00-00', NULL, '12451', '333', '2019-07-19 06:17:55', '2019-07-19 06:17:55'),
(9, '9', 'Science', 'A', '444', '0000-00-00', NULL, '6594', '444', '2019-07-19 07:05:53', '2019-07-19 07:05:53'),
(10, '8', NULL, 'A', '8111', '0000-00-00', NULL, '1230', '8111', '2019-07-20 04:42:10', '2019-07-20 04:42:10'),
(11, '8', NULL, 'A', '8112', '0000-00-00', NULL, NULL, '8112', '2019-07-20 04:45:25', '2019-07-20 04:45:25'),
(12, '9', 'Science', 'A', '9111', '0000-00-00', NULL, '1230', '9111', '2019-07-24 09:11:11', '2019-07-24 09:11:11'),
(13, '12', 'Science', 'C', '12111', '0000-00-00', NULL, '1520', '12111', '2019-07-26 01:40:07', '2019-07-26 01:40:07'),
(14, '12', 'Commerce', 'B', '12000', '0000-00-00', NULL, '1230', '12000', '2019-07-26 01:56:16', '2019-07-26 01:56:16'),
(15, '7', NULL, 'B', '7112', '0000-00-00', NULL, '12032', '7112', '2019-07-27 03:17:07', '2019-07-27 03:17:07'),
(16, '7', NULL, 'A', '7113', '0000-00-00', '012025', '15201', '7113', '2019-07-28 02:41:55', '2019-07-28 02:41:55'),
(17, '11', 'Science', 'A', '1', '0000-00-00', '001', '25', '1', '2019-07-30 14:44:49', '2019-07-30 14:44:49'),
(18, '11', 'Science', 'B', '5', '0000-00-00', '5', '5', '5', '2019-07-30 14:46:15', '2019-07-30 14:46:15'),
(19, '11', 'Science', 'A', '666', '0000-00-00', '78', '36', '666', '2019-07-30 14:50:21', '2019-07-30 14:50:21'),
(20, '11', 'Science', 'A', '325', '0000-00-00', '123', '12', '325', '2019-07-30 14:51:50', '2019-07-30 14:51:50'),
(21, '11', 'Science', 'A', '9', '0000-00-00', '789', '30', '9', '2019-07-30 14:53:19', '2019-07-30 14:53:19'),
(22, '11', 'Science', 'A', '1234', '0000-00-00', '56', '89', '1234', '2019-07-30 14:54:35', '2019-07-30 14:54:35'),
(23, '11', 'Science', 'A', '65', '0000-00-00', '1', '25', '65', '2019-07-30 14:55:45', '2019-07-30 14:55:45'),
(24, '11', 'Science', 'A', '20', '0000-00-00', '1', '25', '20', '2019-07-30 14:56:54', '2019-07-30 14:56:54'),
(25, '11', 'Science', 'A', '6', '0000-00-00', '1', '25', '6', '2019-07-30 14:57:58', '2019-07-30 14:57:58'),
(26, '11', 'Science', 'A', '10', '0000-00-00', '1', '25', '10', '2019-07-30 14:59:21', '2019-07-30 14:59:21'),
(27, '11', 'Science', 'A', '11', '0000-00-00', '1', '25', '11', '2019-07-30 15:00:35', '2019-07-30 15:00:35'),
(28, '11', 'Science', 'A', '13', '0000-00-00', '1', '25', '13', '2019-07-30 15:01:42', '2019-07-30 15:01:42'),
(29, '11', 'Science', 'A', '14', '0000-00-00', '1', '25', '14', '2019-07-30 15:03:03', '2019-07-30 15:03:03'),
(30, '11', 'Science', 'A', '15', '0000-00-00', '1', '25', '15', '2019-07-30 15:03:59', '2019-07-30 15:03:59'),
(31, '11', 'Science', 'A', '17', '0000-00-00', '1', '25', '17', '2019-07-30 15:05:34', '2019-07-30 15:05:34'),
(32, '11', 'Science', 'A', '19', '0000-00-00', '1', '25', '19', '2019-07-30 15:06:42', '2019-07-30 15:06:42'),
(33, '11', NULL, 'A', '25', '0000-00-00', '1', '25', '25', '2019-07-30 15:08:21', '2019-07-30 15:08:21'),
(34, '11', 'Science', 'A', '26', '0000-00-00', '1', '20', '26', '2019-07-30 15:10:35', '2019-07-30 15:10:35'),
(35, '11', 'Science', 'A', '31', '0000-00-00', '1', '25', '31', '2019-07-30 15:12:02', '2019-07-30 15:12:02'),
(36, '12', 'Science', 'A', '100', '0000-00-00', '1', '20', '100', '2019-07-30 15:14:50', '2019-07-30 15:14:50'),
(37, '12', 'Science', 'A', '101', '0000-00-00', '1', '20', '101', '2019-07-30 15:16:09', '2019-07-30 15:16:09'),
(38, '12', 'Science', 'A', '102', '0000-00-00', '1', '20', '102', '2019-07-30 15:17:49', '2019-07-30 15:17:49'),
(39, '12', 'Science', 'A', '103', '0000-00-00', '1', '20', '103', '2019-07-30 15:19:06', '2019-07-30 15:19:06'),
(40, '12', 'Science', 'A', '105', '0000-00-00', '1', '20', '105', '2019-07-30 15:20:12', '2019-07-30 15:20:12'),
(41, '10', 'Science', 'A', '110', '0000-00-00', '1', '20', '110', '2019-07-30 15:21:44', '2019-07-30 15:21:44'),
(42, '10', NULL, 'A', '112', '0000-00-00', '1', '20', '112', '2019-07-30 15:23:42', '2019-07-30 15:23:42'),
(43, '10', 'Science', 'A', '113', '0000-00-00', '1', '20', '113', '2019-07-30 15:24:38', '2019-07-30 15:24:38'),
(44, '10', 'Science', 'A', '114', '0000-00-00', '1', '20', '114', '2019-07-30 15:26:06', '2019-07-30 15:26:06'),
(45, '10', 'Science', 'A', '115', '0000-00-00', '1', '20', '115', '2019-07-30 15:27:23', '2019-07-30 15:27:23'),
(46, '9', 'Science', 'A', '9001', '0000-00-00', '1', '20', '9001', '2019-07-30 15:29:53', '2019-07-30 15:29:53'),
(47, '9', 'Science', 'A', '9002', '0000-00-00', '1', '20', '9002', '2019-07-30 15:31:00', '2019-07-30 15:31:00'),
(48, '9', 'Science', 'A', '9003', '0000-00-00', '1', '20', '9003', '2019-07-30 15:32:38', '2019-07-30 15:32:38'),
(49, '9', 'Science', 'A', '9004', '0000-00-00', '1', '20', '9004', '2019-07-30 15:34:02', '2019-07-30 15:34:02'),
(50, '9', 'Science', 'A', '9005', '0000-00-00', '1', '20', '9005', '2019-07-30 15:35:43', '2019-07-30 15:35:43'),
(51, '8', NULL, 'B', '8001', '0000-00-00', '1', '20', '8001', '2019-07-30 15:37:50', '2019-07-30 15:37:50'),
(52, '8', NULL, 'B', '8002', '0000-00-00', '1', '20', '8002', '2019-07-30 15:40:18', '2019-07-30 15:40:18'),
(53, '8', NULL, 'A', '8003', '0000-00-00', '1', '20', '8003', '2019-07-30 15:41:28', '2019-07-30 15:41:28'),
(54, '8', NULL, 'B', '8004', '0000-00-00', '1', '20', '8004', '2019-07-30 15:42:40', '2019-07-30 15:42:40'),
(55, '7', NULL, 'C', '7001', '0000-00-00', '1', '20', '7001', '2019-07-30 15:43:37', '2019-07-30 15:43:37'),
(56, '7', NULL, 'B', '7002', '0000-00-00', '1', '20', '7002', '2019-07-30 15:45:10', '2019-07-30 15:45:10'),
(57, '7', NULL, 'G', '7003', '0000-00-00', '1', '20', '7003', '2019-07-30 15:46:11', '2019-07-30 15:46:11'),
(58, '7', NULL, 'F', '7004', '0000-00-00', '1', '20', '7004', '2019-07-30 15:47:17', '2019-07-30 15:47:17'),
(59, '6', NULL, 'B', '6001', '0000-00-00', '1', '20', '6001', '2019-07-30 15:48:53', '2019-07-30 15:48:53'),
(60, '6', NULL, 'C', '6002', '0000-00-00', '1', '20', '6002', '2019-07-30 15:50:29', '2019-07-30 15:50:29'),
(61, '6', NULL, 'B', '6003', '0000-00-00', 'Sm Nahiduzzaman Sajeeb', '20', '6003', '2019-07-30 15:52:51', '2019-07-30 15:52:51'),
(62, '6', NULL, 'B', '6004', '0000-00-00', '1', '20', '6004', '2019-07-30 15:55:01', '2019-07-30 15:55:01'),
(63, '5', NULL, 'A', '5001', '0000-00-00', '1', '20', '5001', '2019-07-30 15:57:48', '2019-07-30 15:57:48'),
(64, '5', NULL, 'A', '5002', '0000-00-00', '1', '20', '5002', '2019-07-30 15:58:43', '2019-07-30 15:58:43'),
(65, '5', NULL, 'A', '5003', '0000-00-00', '1', '20', '5003', '2019-07-30 15:59:43', '2019-07-30 15:59:43'),
(66, '5', NULL, 'B', '5004', '0000-00-00', '1', '20', '5004', '2019-07-30 16:00:47', '2019-07-30 16:00:47'),
(67, '4', NULL, 'B', '4001', '0000-00-00', '1', '20', '4001', '2019-07-30 16:01:58', '2019-07-30 16:01:58'),
(68, '4', NULL, 'C', '4002', '0000-00-00', '1', '23', '4002', '2019-07-30 16:03:10', '2019-07-30 16:03:10'),
(69, '4', NULL, 'A', '4003', '0000-00-00', '1', '20', '4003', '2019-07-30 16:04:21', '2019-07-30 16:04:21'),
(70, '4', NULL, 'C', '4004', '0000-00-00', '1', '12', '4004', '2019-07-30 16:05:23', '2019-07-30 16:05:23'),
(71, '4', NULL, 'C', '4005', '0000-00-00', '1', '52', '4005', '2019-07-30 16:06:40', '2019-07-30 16:06:40'),
(72, '5', NULL, 'B', '5005', '0000-00-00', '1', '20', '5005', '2019-07-30 16:09:05', '2019-07-30 16:09:05'),
(73, '6', NULL, 'A', '6005', '0000-00-00', '1', '20', '6005', '2019-07-30 16:10:10', '2019-07-30 16:10:10'),
(74, '7', NULL, 'C', '7005', '0000-00-00', '1', '11', '7005', '2019-07-30 16:11:27', '2019-07-30 16:11:27'),
(75, '8', NULL, 'A', '8005', '0000-00-00', '1', '11', '8005', '2019-07-30 16:13:16', '2019-07-30 16:13:16'),
(76, '1', NULL, 'A', '10233', '0000-00-00', '123', 'fghgf', '10233', '2019-08-04 11:17:17', '2019-08-04 11:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `stu_parents`
--

CREATE TABLE `stu_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_occu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_ins` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_occu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_ins` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stu_parents`
--

INSERT INTO `stu_parents` (`id`, `father_name`, `father_occu`, `father_position`, `father_ins`, `father_income`, `father_mobile`, `father_image`, `mother_name`, `mother_occu`, `mother_position`, `mother_ins`, `mother_income`, `mother_mobile`, `mother_image`, `student_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'asdf sefsd', 'Teacher', NULL, NULL, '12000', '0133456789', NULL, 'asefsesd', 'H. Wife', NULL, NULL, NULL, '0123456789', NULL, '111', 'P-111', '2019-07-16 15:20:20', '2019-07-16 15:20:20'),
(4, 'Konal Khan', 'B man', NULL, 'Co. ltd', '30000', '01234566789', NULL, 'Flanm Khan', 'H wife', '12345678900', NULL, NULL, '012345678900', NULL, '222', 'P-222', '2019-07-19 06:14:16', '2019-07-19 06:14:16'),
(5, 'Dolam h', 'B man', NULL, 'Ltd', '160000', '01234567890', NULL, 'Gomana H', NULL, NULL, NULL, NULL, '01234567890', NULL, '333', 'P-333', '2019-07-19 06:17:55', '2019-07-19 06:17:55'),
(6, 'Solim Mia', 'Engineer', NULL, 'Tech ltd', '500000', '0123456789', NULL, 'Volamna Begom', NULL, NULL, NULL, NULL, '01234567990', NULL, '444', 'P-444', '2019-07-19 07:05:54', '2019-07-19 07:05:54'),
(7, 'Dalam Q', 'Employee', NULL, NULL, '30000', '01234567890', NULL, 'Ramola', 'H. Wife', NULL, NULL, NULL, '01234567890', NULL, '8111', 'P-8111', '2019-07-20 04:42:10', '2019-07-20 04:42:10'),
(8, 'Samal Sha', 'B Man', NULL, NULL, '60000', '0123456789', NULL, 'Rafija', 'Teacher', NULL, NULL, '80000', '01234567980', NULL, '8112', 'P-8112', '2019-07-20 04:45:26', '2019-07-20 04:45:26'),
(9, 'Qsmal', NULL, NULL, NULL, NULL, '01234567890', NULL, 'Awdas', NULL, NULL, NULL, NULL, '01234567890', NULL, '9111', 'P-9111', '2019-07-24 09:11:11', '2019-07-24 09:11:11'),
(10, 'asdf sefsd', NULL, NULL, NULL, NULL, '01234567890', NULL, 'asefsesd', 'H. Wife', NULL, NULL, NULL, '01234567890', NULL, '12111', 'P-12111', '2019-07-26 01:40:07', '2019-07-26 01:40:07'),
(11, 'Samal Sha', 'B Man', NULL, NULL, NULL, '01234567890', NULL, 'Mbaeefa', 'H. Wife', NULL, NULL, NULL, '01234567890', NULL, '12000', 'P-12000', '2019-07-26 01:56:16', '2019-07-26 01:56:16'),
(12, 'Fomals', NULL, NULL, NULL, NULL, '01234567890', NULL, 'Aalisa', NULL, NULL, NULL, NULL, '01234567890', NULL, '7112', 'P-7112', '2019-07-27 03:17:07', '2019-07-27 03:17:07'),
(13, 'Dalam Q', 'B Man', NULL, NULL, '30000', '01234567890', NULL, 'Mbaeefa', NULL, NULL, NULL, NULL, '01234567890', NULL, '7113', 'P-7113', '2019-07-28 02:41:55', '2019-07-28 02:41:55'),
(14, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '1', 'P-1', '2019-07-30 14:44:49', '2019-07-30 14:44:49'),
(15, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '5', 'P-5', '2019-07-30 14:46:15', '2019-07-30 14:46:15'),
(16, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '666', 'P-666', '2019-07-30 14:50:21', '2019-07-30 14:50:21'),
(17, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '325', 'P-325', '2019-07-30 14:51:50', '2019-07-30 14:51:50'),
(18, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '9', 'P-9', '2019-07-30 14:53:19', '2019-07-30 14:53:19'),
(19, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '1234', 'P-1234', '2019-07-30 14:54:37', '2019-07-30 14:54:37'),
(20, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '65', 'P-65', '2019-07-30 14:55:45', '2019-07-30 14:55:45'),
(21, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '20', 'P-20', '2019-07-30 14:56:55', '2019-07-30 14:56:55'),
(22, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '6', 'P-6', '2019-07-30 14:57:58', '2019-07-30 14:57:58'),
(23, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '10', 'P-10', '2019-07-30 14:59:22', '2019-07-30 14:59:22'),
(24, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '11', 'P-11', '2019-07-30 15:00:35', '2019-07-30 15:00:35'),
(25, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '13', 'P-13', '2019-07-30 15:01:42', '2019-07-30 15:01:42'),
(26, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '14', 'P-14', '2019-07-30 15:03:03', '2019-07-30 15:03:03'),
(27, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '15', 'P-15', '2019-07-30 15:04:00', '2019-07-30 15:04:00'),
(28, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '17', 'P-17', '2019-07-30 15:05:34', '2019-07-30 15:05:34'),
(29, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', NULL, 'f', '50000', '01333333333', NULL, '19', 'P-19', '2019-07-30 15:06:42', '2019-07-30 15:06:42'),
(30, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '25', 'P-25', '2019-07-30 15:08:21', '2019-07-30 15:08:21'),
(31, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '26', 'P-26', '2019-07-30 15:10:35', '2019-07-30 15:10:35'),
(32, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '31', 'P-31', '2019-07-30 15:12:02', '2019-07-30 15:12:02'),
(33, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '100', 'P-100', '2019-07-30 15:14:50', '2019-07-30 15:14:50'),
(34, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '101', 'P-101', '2019-07-30 15:16:09', '2019-07-30 15:16:09'),
(35, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '102', 'P-102', '2019-07-30 15:17:49', '2019-07-30 15:17:49'),
(36, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '103', 'P-103', '2019-07-30 15:19:06', '2019-07-30 15:19:06'),
(37, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '105', 'P-105', '2019-07-30 15:20:12', '2019-07-30 15:20:12'),
(38, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '110', 'P-110', '2019-07-30 15:21:44', '2019-07-30 15:21:44'),
(39, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '112', 'P-112', '2019-07-30 15:23:42', '2019-07-30 15:23:42'),
(40, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '113', 'P-113', '2019-07-30 15:24:38', '2019-07-30 15:24:38'),
(41, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '114', 'P-114', '2019-07-30 15:26:06', '2019-07-30 15:26:06'),
(42, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '115', 'P-115', '2019-07-30 15:27:23', '2019-07-30 15:27:23'),
(43, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '9001', 'P-9001', '2019-07-30 15:29:53', '2019-07-30 15:29:53'),
(44, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '9002', 'P-9002', '2019-07-30 15:31:00', '2019-07-30 15:31:00'),
(45, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '9003', 'P-9003', '2019-07-30 15:32:38', '2019-07-30 15:32:38'),
(46, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '9004', 'P-9004', '2019-07-30 15:34:02', '2019-07-30 15:34:02'),
(47, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '9005', 'P-9005', '2019-07-30 15:35:43', '2019-07-30 15:35:43'),
(48, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '8001', 'P-8001', '2019-07-30 15:37:50', '2019-07-30 15:37:50'),
(49, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '8002', 'P-8002', '2019-07-30 15:40:18', '2019-07-30 15:40:18'),
(50, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '8003', 'P-8003', '2019-07-30 15:41:28', '2019-07-30 15:41:28'),
(51, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '8004', 'P-8004', '2019-07-30 15:42:40', '2019-07-30 15:42:40'),
(52, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '7001', 'P-7001', '2019-07-30 15:43:37', '2019-07-30 15:43:37'),
(53, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '7002', 'P-7002', '2019-07-30 15:45:10', '2019-07-30 15:45:10'),
(54, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '7003', 'P-7003', '2019-07-30 15:46:11', '2019-07-30 15:46:11'),
(55, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '7004', 'P-7004', '2019-07-30 15:47:17', '2019-07-30 15:47:17'),
(56, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '6001', 'P-6001', '2019-07-30 15:48:53', '2019-07-30 15:48:53'),
(57, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '6002', 'P-6002', '2019-07-30 15:50:29', '2019-07-30 15:50:29'),
(58, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '6003', 'P-6003', '2019-07-30 15:52:51', '2019-07-30 15:52:51'),
(59, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '6004', 'P-6004', '2019-07-30 15:55:01', '2019-07-30 15:55:01'),
(60, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '5001', 'P-5001', '2019-07-30 15:57:49', '2019-07-30 15:57:49'),
(61, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '5002', 'P-5002', '2019-07-30 15:58:43', '2019-07-30 15:58:43'),
(62, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '5003', 'P-5003', '2019-07-30 15:59:43', '2019-07-30 15:59:43'),
(63, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '5004', 'P-5004', '2019-07-30 16:00:47', '2019-07-30 16:00:47'),
(64, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '4001', 'P-4001', '2019-07-30 16:01:58', '2019-07-30 16:01:58'),
(65, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '4002', 'P-4002', '2019-07-30 16:03:10', '2019-07-30 16:03:10'),
(66, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '4003', 'P-4003', '2019-07-30 16:04:21', '2019-07-30 16:04:21'),
(67, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '4004', 'P-4004', '2019-07-30 16:05:23', '2019-07-30 16:05:23'),
(68, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '4005', 'P-4005', '2019-07-30 16:06:40', '2019-07-30 16:06:40'),
(69, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '5005', 'P-5005', '2019-07-30 16:09:05', '2019-07-30 16:09:05'),
(70, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '6005', 'P-6005', '2019-07-30 16:10:10', '2019-07-30 16:10:10'),
(71, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '7005', 'P-7005', '2019-07-30 16:11:27', '2019-07-30 16:11:27'),
(72, 'd', 'Job', 'officer', 'S', '300000', '01333333333', NULL, 'd', 'f', 'f', 'f', '50000', '01333333333', NULL, '8005', 'P-8005', '2019-07-30 16:13:16', '2019-07-30 16:13:16'),
(73, 'x', 'x', 'x', 'x', '10000', '01724808054', NULL, 'x', 'x', 'x', 'x', '120000', '01724808049', NULL, '10233', 'P-10233', '2019-08-04 11:17:17', '2019-08-04 11:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `stu_school_infos`
--

CREATE TABLE `stu_school_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guide_teacher` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stu_school_infos`
--

INSERT INTO `stu_school_infos` (`id`, `class`, `group`, `section`, `guide_teacher`, `student_id`, `created_at`, `updated_at`) VALUES
(4, '7', NULL, 'A', '12234', '111', '2019-07-16 15:20:19', '2019-07-16 15:20:19'),
(5, '9', 'Science', 'A', '1231', '222', '2019-07-19 06:14:16', '2019-07-19 06:14:16'),
(6, '9', 'Science', 'A', '1231', '333', '2019-07-19 06:17:55', '2019-07-19 06:17:55'),
(7, '9', 'Science', 'A', '1231', '444', '2019-07-19 07:05:53', '2019-07-19 07:05:53'),
(8, '8', NULL, 'A', '1231', '8111', '2019-07-20 04:42:10', '2019-07-20 04:42:10'),
(9, '8', NULL, 'A', '1231', '8112', '2019-07-20 04:45:26', '2019-07-20 04:45:26'),
(10, '9', 'Science', 'A', '1231', '9111', '2019-07-24 09:11:11', '2019-07-24 09:11:11'),
(11, '12', 'Science', 'C', '1230', '12111', '2019-07-26 01:40:07', '2019-07-26 01:40:07'),
(12, '12', 'Commerce', 'B', '10222', '12000', '2019-07-26 01:56:16', '2019-07-26 01:56:16'),
(13, '7', NULL, 'B', '10111', '7112', '2019-07-27 03:17:07', '2019-07-27 03:17:07'),
(14, '7', NULL, 'A', '1230', '7113', '2019-07-28 02:41:55', '2019-07-28 02:41:55'),
(15, '11', 'Science', 'A', '10111', '1', '2019-07-30 14:44:49', '2019-07-30 14:44:49'),
(16, '11', 'Science', 'B', '10111', '5', '2019-07-30 14:46:15', '2019-07-30 14:46:15'),
(17, '11', 'Science', 'A', '10222', '666', '2019-07-30 14:50:21', '2019-07-30 14:50:21'),
(18, '11', 'Science', 'A', '10111', '325', '2019-07-30 14:51:50', '2019-07-30 14:51:50'),
(19, '11', 'Science', 'A', '10111', '9', '2019-07-30 14:53:19', '2019-07-30 14:53:19'),
(20, '11', 'Science', 'A', '10111', '1234', '2019-07-30 14:54:35', '2019-07-30 14:54:35'),
(21, '11', 'Science', 'A', '10111', '65', '2019-07-30 14:55:45', '2019-07-30 14:55:45'),
(22, '11', 'Science', 'A', '10111', '20', '2019-07-30 14:56:54', '2019-07-30 14:56:54'),
(23, '11', 'Science', 'A', '1231', '6', '2019-07-30 14:57:58', '2019-07-30 14:57:58'),
(24, '11', 'Science', 'A', '1231', '10', '2019-07-30 14:59:21', '2019-07-30 14:59:21'),
(25, '11', 'Science', 'A', '1231', '11', '2019-07-30 15:00:35', '2019-07-30 15:00:35'),
(26, '11', 'Science', 'A', '10111', '13', '2019-07-30 15:01:42', '2019-07-30 15:01:42'),
(27, '11', 'Science', 'A', '10111', '14', '2019-07-30 15:03:03', '2019-07-30 15:03:03'),
(28, '11', 'Science', 'A', '10222', '15', '2019-07-30 15:03:59', '2019-07-30 15:03:59'),
(29, '11', 'Science', 'A', '10222', '17', '2019-07-30 15:05:34', '2019-07-30 15:05:34'),
(30, '11', 'Science', 'A', '1231', '19', '2019-07-30 15:06:42', '2019-07-30 15:06:42'),
(31, '11', NULL, 'A', '1231', '25', '2019-07-30 15:08:21', '2019-07-30 15:08:21'),
(32, '11', 'Science', 'A', '1231', '26', '2019-07-30 15:10:35', '2019-07-30 15:10:35'),
(33, '11', 'Science', 'A', '1231', '31', '2019-07-30 15:12:02', '2019-07-30 15:12:02'),
(34, '12', 'Science', 'A', '10111', '100', '2019-07-30 15:14:50', '2019-07-30 15:14:50'),
(35, '12', 'Science', 'A', '10111', '101', '2019-07-30 15:16:09', '2019-07-30 15:16:09'),
(36, '12', 'Science', 'A', '10222', '102', '2019-07-30 15:17:49', '2019-07-30 15:17:49'),
(37, '12', 'Science', 'A', '10111', '103', '2019-07-30 15:19:06', '2019-07-30 15:19:06'),
(38, '12', 'Science', 'A', '1231', '105', '2019-07-30 15:20:12', '2019-07-30 15:20:12'),
(39, '10', 'Science', 'A', '1231', '110', '2019-07-30 15:21:44', '2019-07-30 15:21:44'),
(40, '10', NULL, 'A', '10111', '112', '2019-07-30 15:23:42', '2019-07-30 15:23:42'),
(41, '10', 'Science', 'A', '12234', '113', '2019-07-30 15:24:38', '2019-07-30 15:24:38'),
(42, '10', 'Science', 'A', '1231', '114', '2019-07-30 15:26:06', '2019-07-30 15:26:06'),
(43, '10', 'Science', 'A', '1231', '115', '2019-07-30 15:27:23', '2019-07-30 15:27:23'),
(44, '9', 'Science', 'A', '1231', '9001', '2019-07-30 15:29:53', '2019-07-30 15:29:53'),
(45, '9', 'Science', 'A', '1230', '9002', '2019-07-30 15:31:00', '2019-07-30 15:31:00'),
(46, '9', 'Science', 'A', '1231', '9003', '2019-07-30 15:32:38', '2019-07-30 15:32:38'),
(47, '9', 'Science', 'A', '10111', '9004', '2019-07-30 15:34:02', '2019-07-30 15:34:02'),
(48, '9', 'Science', 'A', '10111', '9005', '2019-07-30 15:35:43', '2019-07-30 15:35:43'),
(49, '8', NULL, 'B', '10111', '8001', '2019-07-30 15:37:50', '2019-07-30 15:37:50'),
(50, '8', NULL, 'B', '1231', '8002', '2019-07-30 15:40:18', '2019-07-30 15:40:18'),
(51, '8', NULL, 'A', '1231', '8003', '2019-07-30 15:41:28', '2019-07-30 15:41:28'),
(52, '8', NULL, 'B', '1231', '8004', '2019-07-30 15:42:40', '2019-07-30 15:42:40'),
(53, '7', NULL, 'C', '1231', '7001', '2019-07-30 15:43:37', '2019-07-30 15:43:37'),
(54, '7', NULL, 'B', '1231', '7002', '2019-07-30 15:45:10', '2019-07-30 15:45:10'),
(55, '7', NULL, 'G', '12234', '7003', '2019-07-30 15:46:11', '2019-07-30 15:46:11'),
(56, '7', NULL, 'F', '12234', '7004', '2019-07-30 15:47:17', '2019-07-30 15:47:17'),
(57, '6', NULL, 'B', '12234', '6001', '2019-07-30 15:48:53', '2019-07-30 15:48:53'),
(58, '6', NULL, 'C', '1231', '6002', '2019-07-30 15:50:29', '2019-07-30 15:50:29'),
(59, '6', NULL, 'B', '12234', '6003', '2019-07-30 15:52:51', '2019-07-30 15:52:51'),
(60, '6', NULL, 'B', '1231', '6004', '2019-07-30 15:55:01', '2019-07-30 15:55:01'),
(61, '5', NULL, 'A', '1231', '5001', '2019-07-30 15:57:48', '2019-07-30 15:57:48'),
(62, '5', NULL, 'A', '12234', '5002', '2019-07-30 15:58:43', '2019-07-30 15:58:43'),
(63, '5', NULL, 'A', '1231', '5003', '2019-07-30 15:59:43', '2019-07-30 15:59:43'),
(64, '5', NULL, 'B', '1231', '5004', '2019-07-30 16:00:47', '2019-07-30 16:00:47'),
(65, '4', NULL, 'B', '1231', '4001', '2019-07-30 16:01:58', '2019-07-30 16:01:58'),
(66, '4', NULL, 'C', '1231', '4002', '2019-07-30 16:03:10', '2019-07-30 16:03:10'),
(67, '4', NULL, 'A', '12234', '4003', '2019-07-30 16:04:21', '2019-07-30 16:04:21'),
(68, '4', NULL, 'C', '1231', '4004', '2019-07-30 16:05:23', '2019-07-30 16:05:23'),
(69, '4', NULL, 'C', '12234', '4005', '2019-07-30 16:06:40', '2019-07-30 16:06:40'),
(70, '5', NULL, 'B', '12234', '5005', '2019-07-30 16:09:05', '2019-07-30 16:09:05'),
(71, '6', NULL, 'A', '1231', '6005', '2019-07-30 16:10:10', '2019-07-30 16:10:10'),
(72, '7', NULL, 'C', '1231', '7005', '2019-07-30 16:11:27', '2019-07-30 16:11:27'),
(73, '8', NULL, 'A', '1231', '8005', '2019-07-30 16:13:16', '2019-07-30 16:13:16'),
(74, '1', NULL, 'A', '10222', '10233', '2019-08-04 11:17:17', '2019-08-04 11:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `subject_marks`
--

CREATE TABLE `subject_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz1_cq` decimal(8,2) NOT NULL,
  `quiz1_mcq` decimal(8,2) NOT NULL,
  `quiz2_cq` decimal(8,2) NOT NULL,
  `quiz2_mcq` decimal(8,2) NOT NULL,
  `mid_cq` decimal(8,2) NOT NULL,
  `mid_mcq` decimal(8,2) NOT NULL,
  `quiz3_cq` decimal(8,2) NOT NULL,
  `quiz3_mcq` decimal(8,2) NOT NULL,
  `quiz4_cq` decimal(8,2) NOT NULL,
  `quiz4_mcq` decimal(8,2) NOT NULL,
  `final_cq` decimal(8,2) NOT NULL,
  `final_mcq` decimal(8,2) NOT NULL,
  `att_mark` decimal(8,2) NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_marks`
--

INSERT INTO `subject_marks` (`id`, `class`, `group`, `subject`, `quiz1_cq`, `quiz1_mcq`, `quiz2_cq`, `quiz2_mcq`, `mid_cq`, `mid_mcq`, `quiz3_cq`, `quiz3_mcq`, `quiz4_cq`, `quiz4_mcq`, `final_cq`, `final_mcq`, `att_mark`, `student_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(49, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(50, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '666', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(51, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '325', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(52, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '9', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(53, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1234', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(54, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '65', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(55, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '20', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(56, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '6', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(57, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '10', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(58, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '11', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(59, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '13', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(60, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '14', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(61, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '15', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(62, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '17', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(63, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '19', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(64, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '26', '10222', '2019-08-04 18:23:35', '2019-08-04 18:23:35'),
(65, '11', 'Science', 'Bangla', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '31', '10222', '2019-08-04 18:23:36', '2019-08-04 18:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `subject_teachers`
--

CREATE TABLE `subject_teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_teachers`
--

INSERT INTO `subject_teachers` (`id`, `class`, `group`, `subject`, `section`, `teacher_id`, `created_at`, `updated_at`) VALUES
(10, '7', NULL, 'Bangla', 'A', '10111', '2019-07-27 05:48:23', '2019-07-28 02:37:23'),
(11, '7', NULL, 'Bangla', 'B', '10111', '2019-07-27 05:48:24', '2019-07-28 02:37:23'),
(12, '7', NULL, 'English', 'A', NULL, '2019-07-27 06:16:31', '2019-07-27 06:16:31'),
(13, '7', NULL, 'English', 'B', NULL, '2019-07-27 06:16:32', '2019-07-27 06:16:32'),
(14, '11', 'Science', 'Bangla', 'A', '10222', '2019-07-30 22:49:11', '2019-07-31 06:05:24'),
(15, '11', 'Science', 'Bangla', 'B', NULL, '2019-07-30 22:49:11', '2019-07-30 22:49:11'),
(16, '12', 'Science', 'ict', 'C', '10222', '2019-08-02 22:17:56', '2019-08-02 22:18:34'),
(17, '12', 'Science', 'ict', 'A', NULL, '2019-08-02 22:17:56', '2019-08-02 22:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher_id`, `teacher_name`, `email`, `phone`, `department`, `join_year`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '1231', 'Gomal monis', NULL, NULL, NULL, '2010', NULL, 'T-1231', '2019-07-14 05:37:28', '2019-07-25 15:02:36'),
(3, '12234', 'Teacher1', 'test@email.com', '01230456789', 'Science', '2010', NULL, 'T-12234', '2019-07-16 07:28:57', '2019-07-25 14:45:29'),
(4, '1230', 'Teache2', NULL, NULL, 'Science', '2010', NULL, 'T-1230', '2019-07-16 07:41:56', '2019-07-16 07:41:56'),
(5, '10111', 'Galib Sorkar', 'galib@email.com', '01234567890', NULL, '2005', NULL, 'T-10111', '2019-07-21 11:30:49', '2019-07-21 11:30:49'),
(6, '10222', 'Mokam', 'test@email.com', NULL, 'Science', '2010', NULL, 'T-10222', '2019-07-21 14:48:59', '2019-07-25 14:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `password`, `type`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', '$2y$10$HhvsI8u5pFNIoTPbsg/gLOsUKsgU8B18O15kU4gc2a0bztlEJhQCm', 'admin', 'admin', NULL, '2019-07-13 11:14:13', '2019-07-13 11:14:13'),
(3, 'Superadmin', 'Super Admin', '$2y$10$PEFmvKugKwf1PEaTzYAO0eaqT0MyOiS8cD/3Dvj2.2SgoHr2w8YY6', 'superadmin', 'superadmin', NULL, '2019-07-13 17:11:47', '2019-07-13 17:11:47'),
(13, 'T-1231', 'Gomal monis', '$2y$10$VjeUpzrSUfP5D9JWsxY7FOb9wvc0VMXaTMyJVC4zAdGvaC61ft1Ma', 'teacher', 'subject_teacher', NULL, '2019-07-14 05:37:27', '2019-07-25 15:02:36'),
(33, 'T-12234', 'Teacher1', '$2y$10$FeyBquoDRyD/zBiKzj0Hkec4ZWREEX0UN/tCckyAyUwsQoTVQij9S', 'teacher', 'principal', NULL, '2019-07-16 07:28:57', '2019-07-16 07:28:57'),
(34, 'T-1230', 'Teache2', '$2y$10$BJeBWgYvCPh4WfRsXdcoueOqHhN76FkVYVo96ak/.15Tn1/sZIK0O', 'teacher', 'vice_principal', NULL, '2019-07-16 07:41:56', '2019-07-16 07:41:56'),
(37, 'S-111', 'Coma', '$2y$10$eU2kdMMK4Q7gVKS9qgnR5OQ.k6no1My9h/vJ9onwa.7HIjef9vzdS', 'student', 'none', NULL, '2019-07-16 15:20:19', '2019-07-16 15:20:19'),
(38, 'P-111', 'Parents', '$2y$10$Q8SPXXG95H1rU4.ibRF5qumFH1LCcXAkpZQ0yHLy.cmedj2C18X6.', 'parents', 'none', NULL, '2019-07-16 15:20:20', '2019-07-16 15:20:20'),
(39, 'S-222', 'Faruk khan', '$2y$10$9ZCiM/mkpLIiI1vlyGelL.J.Rt6y64/5/1xVVZMYuRstMVq8R24Li', 'student', 'none', NULL, '2019-07-19 06:14:15', '2019-07-19 06:14:15'),
(40, 'P-222', 'Parents', '$2y$10$vGPeR3NBOQs4fVMHddtnuODqaXbwnzxk9y9nGU9DRr5zBot4FYZmi', 'parents', 'none', NULL, '2019-07-19 06:14:16', '2019-07-19 06:14:16'),
(41, 'S-333', 'Lomon h', '$2y$10$v.YfCbFOELcH.zOf0Q7AieKX7U5LsnNq3bm1A1PiOM00uKf7fR78q', 'student', 'none', NULL, '2019-07-19 06:17:55', '2019-07-19 06:17:55'),
(42, 'P-333', 'Parents', '$2y$10$w2yrp/tvW7/r5OQtserOfODZGiBXnDet7Q9Gd6JJR1wkDfTWQD2qW', 'parents', 'none', NULL, '2019-07-19 06:17:55', '2019-07-19 06:17:55'),
(43, 'S-444', 'Dalim mia', '$2y$10$uCh915LRN2ALWOru21J.RexY/0UYxrou4ToA9Ew1gUFtiT2VFNzyO', 'student', 'none', NULL, '2019-07-19 07:05:53', '2019-07-19 07:05:53'),
(44, 'P-444', 'Parents', '$2y$10$UGjBZQoP5yWj2ZG92MQ.zubZaxlaUh.AHKvgyNm9eJCxpiw99Com.', 'parents', 'none', NULL, '2019-07-19 07:05:53', '2019-07-19 07:05:53'),
(45, 'S-8111', 'Alom q', '$2y$10$xbXJ7e1.uK09s2jICKhu6.VVGzUXXX7EIWzLWaJT9zSMQSsI4y0Xa', 'student', 'none', NULL, '2019-07-20 04:42:10', '2019-07-20 04:42:10'),
(46, 'P-8111', 'Parents', '$2y$10$dBLQnUjrMxq3dBdBRJnEYu9MW0hz8QfDcIZoxec1Ab7p/lWq0.bIW', 'parents', 'none', NULL, '2019-07-20 04:42:10', '2019-07-20 04:42:10'),
(47, 'S-8112', 'Manik Sha', '$2y$10$T.pmxoFpjo4xSvjMf0CS1uQi8KJQG8ePy.vAzkSokAc3e./PVn4Lq', 'student', 'none', NULL, '2019-07-20 04:45:25', '2019-07-20 04:45:25'),
(48, 'P-8112', 'Parents', '$2y$10$lzNXw110NqBVcdgdrbQqOeO1Sh40Kk9OuydTlZNhU/vww6rB2S/.K', 'parents', 'none', NULL, '2019-07-20 04:45:26', '2019-07-20 04:45:26'),
(49, 'T-10111', 'Galib Sorkar', '$2y$10$t/rKjxLktaxwzIUmucUvSOq5/R1vnTyxGI1hehw9fHUG8WamBnzT2', 'teacher', 'co_odinator', NULL, '2019-07-21 11:30:49', '2019-07-21 11:30:49'),
(50, 'T-10222', 'Mokam', '$2y$10$Z5XuWjdKaTD3zzZ3fKjMvuFS/vrQC/CCif2XbOAd5K9gZRuvvEkSC', 'teacher', 'subject_teacher', NULL, '2019-07-21 14:48:58', '2019-07-21 14:48:58'),
(51, 'S-9111', 'Aomc', '$2y$10$PdDYKENG2R8wVwUrOofXou/9nMy5CHUM4ASLOUk1cLzGaKl/YGmAW', 'student', 'none', NULL, '2019-07-24 09:11:10', '2019-07-24 09:11:10'),
(52, 'P-9111', 'Parents', '$2y$10$6wBlB8b22e7wEgc4P6N9u.R9.c4HJC7Exs8QQQygTvMkL1lcUxfOi', 'parents', 'none', NULL, '2019-07-24 09:11:11', '2019-07-24 09:11:11'),
(53, 'admin2', 'Admin 2', '$2y$10$rckTzK/lWtMaOwSd7AbL0ek0AbYpC84DuMWRlRczDUS1UPh8NGKBC', 'admin', 'admin', NULL, '2019-07-25 14:05:18', '2019-07-25 14:05:18'),
(54, 'S-12111', 'Amoxbc', '$2y$10$Jb30m1HX4vh.4bZRaL3Bs./lBSy/UpGsn318o7mpdDUq/S6N0iaDi', 'student', 'none', NULL, '2019-07-26 01:40:06', '2019-07-26 01:40:06'),
(55, 'P-12111', 'Parents', '$2y$10$hBNTTZy5Xb2CJAX8ngnT8.Pu82D9dKYNb3hvibJI1VgGvsZS3NVIi', 'parents', 'none', NULL, '2019-07-26 01:40:07', '2019-07-26 01:40:07'),
(56, 'S-12000', 'Amoxbc', '$2y$10$ViOZ3JqLs9nOVK7fNUCChOxDJJef0.mMQJcUQnR9VjJ7HoRfu1dPy', 'student', 'none', NULL, '2019-07-26 01:56:15', '2019-07-26 01:56:15'),
(57, 'P-12000', 'Parents', '$2y$10$SvwZHtsDp2aG0ZkWaOyAluLScEo8Jx0LIxYJUuyEdenG9rJ6cWGuS', 'parents', 'none', NULL, '2019-07-26 01:56:16', '2019-07-26 01:56:16'),
(58, 'S-7112', 'Glam', '$2y$10$Im2oBGRW2IpsYmgleViztO3WjaQ/v2WHoKtnTxbUyV92Y6XIZaxqS', 'student', 'none', NULL, '2019-07-27 03:17:07', '2019-07-27 03:17:07'),
(59, 'P-7112', 'Parents', '$2y$10$WEt2JTBbtDeGwBU4Ril8suPMFP0O58rkj9YKqrUDYKWtOHj5ZB/Mi', 'parents', 'none', NULL, '2019-07-27 03:17:07', '2019-07-27 03:17:07'),
(60, 'S-7113', 'Colam', '$2y$10$nAlHCxrwYczM2d9.Qkbr2ecbVsorM50ML.2L9YlEl4Z1QWp4u4tBa', 'student', 'none', NULL, '2019-07-28 02:41:55', '2019-07-28 02:41:55'),
(61, 'P-7113', 'Parents', '$2y$10$2NnFAds4tFM28TLpCmKynefjABSxFg1/jiqE64NK7MT/PtpSbUxqW', 'parents', 'none', NULL, '2019-07-28 02:41:55', '2019-07-28 02:41:55'),
(62, 'S-1', 'Sajeeb', '$2y$10$uqpkSJVIgZyfJ6zXf43zvOI1bj0OIDAh/Zf461YkUpJAnHaFQZO9.', 'student', 'none', NULL, '2019-07-30 14:44:49', '2019-07-30 14:44:49'),
(63, 'P-1', 'Parents', '$2y$10$BS6waNz3IkCT48.xQi123e1Y/Z2gibn3b0/CnXAj2twY5BUbyIH76', 'parents', 'none', NULL, '2019-07-30 14:44:49', '2019-07-30 14:44:49'),
(64, 'S-5', 'r', '$2y$10$awUntKSoxK5NLIUqGwrHiOtKOsW8nT2EBd2ybGrqQ1gpIEZq4bgei', 'student', 'none', NULL, '2019-07-30 14:46:15', '2019-07-30 14:46:15'),
(65, 'P-5', 'Parents', '$2y$10$UJSA7DzyADp.CUBXYWjwZejVC3aNXcchvmwYG9PBk2.AAYRg0vhZy', 'parents', 'none', NULL, '2019-07-30 14:46:15', '2019-07-30 14:46:15'),
(66, 'S-666', 'y', '$2y$10$N4ReT0PvcDB2y9NG9rRCROZZcuGHwJCmij.91.2LpqYEa/rUsHjfy', 'student', 'none', NULL, '2019-07-30 14:50:21', '2019-07-30 14:50:21'),
(67, 'P-666', 'Parents', '$2y$10$9Z9APOrKsKARiDsh41lmIOjMRM9Z.OAWvoS7Sw0BwbHP3rrFqQchu', 'parents', 'none', NULL, '2019-07-30 14:50:21', '2019-07-30 14:50:21'),
(68, 'S-325', 'G', '$2y$10$j2nGBshWkMWdayYJcz4tDu4vipS2UffbQNDlyKPmCZ1fDJiE8NT9O', 'student', 'none', NULL, '2019-07-30 14:51:50', '2019-07-30 14:51:50'),
(69, 'P-325', 'Parents', '$2y$10$j66DkQIUHppz2RRh/PsNp.QjPrwi2nZItgIoaIK1lSdxduP4iv5Ta', 'parents', 'none', NULL, '2019-07-30 14:51:50', '2019-07-30 14:51:50'),
(70, 'S-9', 'S', '$2y$10$WxJ8auApZDDCuKn8Q4jNIO.SMqGv4Y7mIN8cAGqOMdbyCIFKoff.e', 'student', 'none', NULL, '2019-07-30 14:53:19', '2019-07-30 14:53:19'),
(71, 'P-9', 'Parents', '$2y$10$XK/Q/F4pAtb6yxcfY2HwK.gFsIuUEr0NZX80T5J7VptmuzJzXcO5u', 'parents', 'none', NULL, '2019-07-30 14:53:19', '2019-07-30 14:53:19'),
(72, 'S-1234', 'b', '$2y$10$KV3dhFYRRZl8RWuc3Kq6lepFI1L8L3jIojD.63ZAZaFbfXFxYT/3W', 'student', 'none', NULL, '2019-07-30 14:54:35', '2019-07-30 14:54:35'),
(73, 'P-1234', 'Parents', '$2y$10$EN1CS5FhbjGv6JdCMiwCjuRzZQptpQ0pWi/UEkQmrfZ2j9TPBJMYa', 'parents', 'none', NULL, '2019-07-30 14:54:35', '2019-07-30 14:54:35'),
(74, 'S-65', 'm', '$2y$10$h57KU4is2odHQ6RtS4C/NuX5UiPvBeqhvvC/IZL0c5Xds59M3htci', 'student', 'none', NULL, '2019-07-30 14:55:45', '2019-07-30 14:55:45'),
(75, 'P-65', 'Parents', '$2y$10$NGsEC6DYmc4SFC.ZUW5gU.MBxGknx6A7L9v74BjRS8mIgZej08912', 'parents', 'none', NULL, '2019-07-30 14:55:45', '2019-07-30 14:55:45'),
(76, 'S-20', 'u', '$2y$10$YNr1Sz7lpmjt/HfylROZWePd1kQT65lIWizc2pNQvQnQJDbPlmv/O', 'student', 'none', NULL, '2019-07-30 14:56:54', '2019-07-30 14:56:54'),
(77, 'P-20', 'Parents', '$2y$10$QGg3z/UPYqIit4rpmeaDhuZdpPDZo2w.uiEv2.FL2qxx3N7hxFYbq', 'parents', 'none', NULL, '2019-07-30 14:56:55', '2019-07-30 14:56:55'),
(78, 'S-6', 'p', '$2y$10$QJXGGSCY7Z4Lsf8YeL9pyOkuabp46U131q1.bELermqVFwN47lTSG', 'student', 'none', NULL, '2019-07-30 14:57:58', '2019-07-30 14:57:58'),
(79, 'P-6', 'Parents', '$2y$10$Sg9mM1/wmSFxqehMmIRWUenRdz5AWOn6HYADKIDrWX1Qdz5NVCJx6', 'parents', 'none', NULL, '2019-07-30 14:57:58', '2019-07-30 14:57:58'),
(80, 'S-10', 'n', '$2y$10$C9L3I9r1c7zmF0HntWpVBuHpx3Xokm4/V2/wYqLb0ZBE.PHflSKvC', 'student', 'none', NULL, '2019-07-30 14:59:21', '2019-07-30 14:59:21'),
(81, 'P-10', 'Parents', '$2y$10$/YMF9Gw7RA8HNaZa789IPuqHGmxaDgWiWoFTq2OltAie6IeIOA7fK', 'parents', 'none', NULL, '2019-07-30 14:59:22', '2019-07-30 14:59:22'),
(82, 'S-11', 'h', '$2y$10$TH2LgEM65qqiyfHNjCBQG.jULOAHS1WpnIpvx3VPGtuzFkyNaUO/.', 'student', 'none', NULL, '2019-07-30 15:00:35', '2019-07-30 15:00:35'),
(83, 'P-11', 'Parents', '$2y$10$KC2KkaShtTW3zYBtu1abWugR20r2oRBzBagtEg01ixBfGQQ2hptKS', 'parents', 'none', NULL, '2019-07-30 15:00:35', '2019-07-30 15:00:35'),
(84, 'S-13', 'v', '$2y$10$BoOnOquyemSjqNZnxRLcQePLf9/N6euMvD/LipuS16CXAAshYpFei', 'student', 'none', NULL, '2019-07-30 15:01:42', '2019-07-30 15:01:42'),
(85, 'P-13', 'Parents', '$2y$10$RgU3gyf.tgLDKTUOW5nItOc5pst5QwkBIjd9hTk3MGw/zQyegz44.', 'parents', 'none', NULL, '2019-07-30 15:01:42', '2019-07-30 15:01:42'),
(86, 'S-14', 'j', '$2y$10$lI17d6PbUj/18r/I7ZkKuenKDNVNICZ5fWWP0p6l9cmGQ7rGn5Kv6', 'student', 'none', NULL, '2019-07-30 15:03:03', '2019-07-30 15:03:03'),
(87, 'P-14', 'Parents', '$2y$10$XlYRepmIT/H4LysHx84ctumayb4cCt9nySuPBSpZnOR56wuDFsxae', 'parents', 'none', NULL, '2019-07-30 15:03:03', '2019-07-30 15:03:03'),
(88, 'S-15', 'x', '$2y$10$jw.1BOU2Ai5b90/JsCJiWO6H0iUpizc2HOFV7Kvbb7q1mmsVrj4kq', 'student', 'none', NULL, '2019-07-30 15:03:59', '2019-07-30 15:03:59'),
(89, 'P-15', 'Parents', '$2y$10$07a2UjDjkmGyH9P3VD.0geEwW0SVg7UN5jgJCCIE7cEdPUz8fhaI.', 'parents', 'none', NULL, '2019-07-30 15:04:00', '2019-07-30 15:04:00'),
(90, 'S-17', 'k', '$2y$10$3PA8463Mhxwe0II6GSmeH.ddqmu7Cp2hlL2wxfWzMYNA8dOtdQvV.', 'student', 'none', NULL, '2019-07-30 15:05:34', '2019-07-30 15:05:34'),
(91, 'P-17', 'Parents', '$2y$10$SxGRL51sHouk5LmLE/GXceKr.OGb3YyRErp706tRWwSsITcThLDGC', 'parents', 'none', NULL, '2019-07-30 15:05:34', '2019-07-30 15:05:34'),
(92, 'S-19', 'g', '$2y$10$jZqxVuGRinQooG0Sdke7we4MYQxmhLn6NceBRKF5MWI6nEnVhxvCq', 'student', 'none', NULL, '2019-07-30 15:06:42', '2019-07-30 15:06:42'),
(93, 'P-19', 'Parents', '$2y$10$rdfAcfWAF6HDBm8wlGhjNOfpSnqfh7jonnK6YIy/NTYIz648yafl2', 'parents', 'none', NULL, '2019-07-30 15:06:42', '2019-07-30 15:06:42'),
(94, 'S-25', 'Q', '$2y$10$rm3lNPhLM/UzB/dz0TQhFO9.ZMRm65NlUrsM4WxWCGqN9cSNlQpaa', 'student', 'none', NULL, '2019-07-30 15:08:21', '2019-07-30 15:08:21'),
(95, 'P-25', 'Parents', '$2y$10$pws5f8t1ZqLZyYLJ4gs6T.zSE9ZVrnUZxzZ7UOlgSKojfSEzqNr2C', 'parents', 'none', NULL, '2019-07-30 15:08:21', '2019-07-30 15:08:21'),
(96, 'S-26', 'i', '$2y$10$1gf/xOL0.4.iVG1MY9DlI.b22NctCkeXFcF2UQEcDP3of1zVjXERO', 'student', 'none', NULL, '2019-07-30 15:10:35', '2019-07-30 15:10:35'),
(97, 'P-26', 'Parents', '$2y$10$iA4PR2nUOyeZG0IWbJL1EOtCN0JDM6SKCNGX90DLlI4UjhkWG4bcC', 'parents', 'none', NULL, '2019-07-30 15:10:35', '2019-07-30 15:10:35'),
(98, 'S-31', 'oo', '$2y$10$aqJWtU4yVbCYOr2SgmAW/OAZvCRd1uvVmtTehKUlNM7pIHrUNZ8fC', 'student', 'none', NULL, '2019-07-30 15:12:02', '2019-07-30 15:12:02'),
(99, 'P-31', 'Parents', '$2y$10$X.lmLFsAdkNEBVEZFAvADO/9/wHzdCmxArZ4YgOz3775wOBcpDuIu', 'parents', 'none', NULL, '2019-07-30 15:12:02', '2019-07-30 15:12:02'),
(100, 'S-100', 'Y', '$2y$10$jnFzF/Kq4yINHgnSgzzkDeF/xaRJH0tIElF.3ly2xvwGl8aCbyknC', 'student', 'none', NULL, '2019-07-30 15:14:50', '2019-07-30 15:14:50'),
(101, 'P-100', 'Parents', '$2y$10$Cqs926AqN6CGN1FcnN6NnuCktL1UY.65Y53aW.QvoE050mIbaBuIG', 'parents', 'none', NULL, '2019-07-30 15:14:50', '2019-07-30 15:14:50'),
(102, 'S-101', 'H', '$2y$10$Cb8I0t7pG80j8fB/JjdVpeoIXRjXv/0Lv0jKScnBg9zp0beqaAEfu', 'student', 'none', NULL, '2019-07-30 15:16:09', '2019-07-30 15:16:09'),
(103, 'P-101', 'Parents', '$2y$10$mm5eWbNg.RtvOgCzE82Ue.eTb5RvJNRHJoZ8bz6DgXI8Cjm4JjO62', 'parents', 'none', NULL, '2019-07-30 15:16:09', '2019-07-30 15:16:09'),
(104, 'S-102', 'W', '$2y$10$8//ys93n8lyamJ3NgvclUe1iYL./XqXsnxSoa21bnlBl7wegJ7Jji', 'student', 'none', NULL, '2019-07-30 15:17:49', '2019-07-30 15:17:49'),
(105, 'P-102', 'Parents', '$2y$10$TL2jMUWOkC4sb4iALPKIEeQqd0DPQuxuXhb8wK5aKBuP/zsGOvysO', 'parents', 'none', NULL, '2019-07-30 15:17:49', '2019-07-30 15:17:49'),
(106, 'S-103', 'O', '$2y$10$hVxgBdcF9ScDIqWnsUtuC.ZAzroWlxJxKhX317Q2CQRmCFSsF4v5q', 'student', 'none', NULL, '2019-07-30 15:19:06', '2019-07-30 15:19:06'),
(107, 'P-103', 'Parents', '$2y$10$5zsxtrSpDouIW0iAu/r1.usmCIfvbnOx98l67H/zyFbWA7Dop37XC', 'parents', 'none', NULL, '2019-07-30 15:19:06', '2019-07-30 15:19:06'),
(108, 'S-105', 'S', '$2y$10$tJa65154Pa/FcAvrULP/COgPF8bqV52NQ6tqn1qxK4/ninKJrPh2a', 'student', 'none', NULL, '2019-07-30 15:20:12', '2019-07-30 15:20:12'),
(109, 'P-105', 'Parents', '$2y$10$O8QX.bLwzhUGvZC/.RXWTujgV8AfOyWyBGG4kh2CsMU9kYCMRWcl.', 'parents', 'none', NULL, '2019-07-30 15:20:12', '2019-07-30 15:20:12'),
(110, 'S-110', 'd', '$2y$10$un4OpRrTsV69U4gnZ2WvgOZLU/GqJs3jKHGYKycmEKg.JfFIQs9Pe', 'student', 'none', NULL, '2019-07-30 15:21:43', '2019-07-30 15:21:43'),
(111, 'P-110', 'Parents', '$2y$10$SLVvc57ipFoXvMz7kIOQ0.Bg93D3EyrO0DC0xGypAiVnLNbdFt6G2', 'parents', 'none', NULL, '2019-07-30 15:21:44', '2019-07-30 15:21:44'),
(112, 'S-112', 'pp', '$2y$10$V2fQAilVkLisYUJ4nac48u9Qz7l0fnJEJ9Z1mgcjdAuYEtm37WkYq', 'student', 'none', NULL, '2019-07-30 15:23:42', '2019-07-30 15:23:42'),
(113, 'P-112', 'Parents', '$2y$10$D07UnOnjxM/ksrMFnsmomuslmLnytF1gFzbVGIqZwlqBYcqO1nEkO', 'parents', 'none', NULL, '2019-07-30 15:23:42', '2019-07-30 15:23:42'),
(114, 'S-113', 'uu', '$2y$10$FOMtjx/tnyCjGEwdXqXt4Oh8UOGQBRzeSMUyOzf8SoJPFhMONxrGW', 'student', 'none', NULL, '2019-07-30 15:24:38', '2019-07-30 15:24:38'),
(115, 'P-113', 'Parents', '$2y$10$YVJLO/N/7QSV8FYmHvNtD.zl5P9h.ULsJ2FINy4wZdVbAubRPKOF6', 'parents', 'none', NULL, '2019-07-30 15:24:38', '2019-07-30 15:24:38'),
(116, 'S-114', 'ii', '$2y$10$OZfORQAwTwHFrZBbzyw4OeRHhEi9NR4zELzPbtYhKGkc1U0Tih/MG', 'student', 'none', NULL, '2019-07-30 15:26:06', '2019-07-30 15:26:06'),
(117, 'P-114', 'Parents', '$2y$10$X92h5AiubgX0XEX20e9TOe7fnGNYZhmfW87g22ZAd5qAKR/kxTo86', 'parents', 'none', NULL, '2019-07-30 15:26:06', '2019-07-30 15:26:06'),
(118, 'S-115', 'ww', '$2y$10$4OdQXi.7NV6rFh8qkaQMoe8VQHUxFw6REvh/ByuQnd/DO7S6uA6S2', 'student', 'none', NULL, '2019-07-30 15:27:23', '2019-07-30 15:27:23'),
(119, 'P-115', 'Parents', '$2y$10$rYKvCD1SaZ6zQZ8ZOnnVKejPk4Vf4LfaiVJcPP4n2yO5eB4zgppiK', 'parents', 'none', NULL, '2019-07-30 15:27:23', '2019-07-30 15:27:23'),
(120, 'S-9001', 'bb', '$2y$10$VENAlb9fpgNp/L2JnXUXc.Fp1WZQaVkExBNiDBftb9TpaD3QFH7wK', 'student', 'none', NULL, '2019-07-30 15:29:53', '2019-07-30 15:29:53'),
(121, 'P-9001', 'Parents', '$2y$10$GdVxSFxiFfNOqEDanAhqreehCs5mV3w7QzdP49aljB0xbfoJCUHQW', 'parents', 'none', NULL, '2019-07-30 15:29:53', '2019-07-30 15:29:53'),
(122, 'S-9002', 'll', '$2y$10$k.4Mv3BXJqFYbBXXbO23puJOtIOM0qwHYYbv/ELp5iyVHTMuCHsKC', 'student', 'none', NULL, '2019-07-30 15:30:59', '2019-07-30 15:30:59'),
(123, 'P-9002', 'Parents', '$2y$10$hTTx6aBsXbLBc5XrAPfeyuiwOgRRa4j8dW7CIhDYLHK7n9z.EpDkG', 'parents', 'none', NULL, '2019-07-30 15:31:00', '2019-07-30 15:31:00'),
(124, 'S-9003', 'Kk', '$2y$10$AJamL.R0m35jd4437bOkvuBqzDc7Nkt42HMmn1WuD1728G0ON45b6', 'student', 'none', NULL, '2019-07-30 15:32:38', '2019-07-30 15:32:38'),
(125, 'P-9003', 'Parents', '$2y$10$njWvlUE3iuWAfEmis21EEeHzJm9HyXaI29Yu8h.Me1g3ajRqm7VYO', 'parents', 'none', NULL, '2019-07-30 15:32:38', '2019-07-30 15:32:38'),
(126, 'S-9004', 'zz', '$2y$10$LmY.z3K3vLfOvzymJRyj8.sfWq2K7fFvBxmuYk.cxBB.0hpRIJf/W', 'student', 'none', NULL, '2019-07-30 15:34:02', '2019-07-30 15:34:02'),
(127, 'P-9004', 'Parents', '$2y$10$EBAe2cw8nZcvC0nWQWW8ye0HsOdUo7tJZ5/t.zXntYQjc4L5rzRNy', 'parents', 'none', NULL, '2019-07-30 15:34:02', '2019-07-30 15:34:02'),
(128, 'S-9005', 'gg', '$2y$10$fZPFi6T19e8R/R6Ovpm76ufpXjiq5D4dv09kzsI5Wt2Z8z/lT4oh.', 'student', 'none', NULL, '2019-07-30 15:35:43', '2019-07-30 15:35:43'),
(129, 'P-9005', 'Parents', '$2y$10$mxTD0Ud3olqg.QK6k3E1QOZY0NWgiRA4LQRwLHuLRnK/UEjdMg.T6', 'parents', 'none', NULL, '2019-07-30 15:35:43', '2019-07-30 15:35:43'),
(130, 'S-8001', 'vv', '$2y$10$1eOeLe4yMJIs6DKCQu6VwuBmB5zTogWJHJNlwIY25CcdvGqgzTx0G', 'student', 'none', NULL, '2019-07-30 15:37:50', '2019-07-30 15:37:50'),
(131, 'P-8001', 'Parents', '$2y$10$b7AKVhesl2SwBcH4J9YpmeDPixp4n0xZPUX5.XVQsM8DaDEzMYjNO', 'parents', 'none', NULL, '2019-07-30 15:37:50', '2019-07-30 15:37:50'),
(132, 'S-8002', 'rr', '$2y$10$EJmAgvDBXZ8KmGNJHIfrReVgzteN.R3xSUOIBh96JfFypT2hi/tKG', 'student', 'none', NULL, '2019-07-30 15:40:18', '2019-07-30 15:40:18'),
(133, 'P-8002', 'Parents', '$2y$10$Y6m31E.9gc3plWuZm5eZAux7cMz9MUjBkWrcaIDjHgiS.fRrv9q.y', 'parents', 'none', NULL, '2019-07-30 15:40:18', '2019-07-30 15:40:18'),
(134, 'S-8003', 'zz', '$2y$10$MLPDYTFQdkiJ5WyUXJKkjO/ziwTD23hpoMs2nz/.7KiFpwVbGmfF.', 'student', 'none', NULL, '2019-07-30 15:41:28', '2019-07-30 15:41:28'),
(135, 'P-8003', 'Parents', '$2y$10$1XdOY6t1Wx8AL7t.A3fZbeTxmaDzZUIzZhWoQaKHb6dPJi0HMpisS', 'parents', 'none', NULL, '2019-07-30 15:41:28', '2019-07-30 15:41:28'),
(136, 'S-8004', 'zzz', '$2y$10$8iYO9/crvSHO7RRN3OZifuaxTEdODNqiZ9Mu/LYofChKaqRO4PvAG', 'student', 'none', NULL, '2019-07-30 15:42:40', '2019-07-30 15:42:40'),
(137, 'P-8004', 'Parents', '$2y$10$OxKj7ASMjqwhQwZD00J.5OJuylXT.MOQZ2wEYE4yeZyNwBMhGLzZm', 'parents', 'none', NULL, '2019-07-30 15:42:40', '2019-07-30 15:42:40'),
(138, 'S-7001', 'cc', '$2y$10$GJ5Csy1xiyiZA.eeKspR6.AykkTB1Xgc/GAfMWaBa6o8XmdAe/Ed2', 'student', 'none', NULL, '2019-07-30 15:43:37', '2019-07-30 15:43:37'),
(139, 'P-7001', 'Parents', '$2y$10$HHCdQPU6iC2dSe9HtdCHzOpO4Nu8t9n90ZM11g3tBgBcZu/hDIg5O', 'parents', 'none', NULL, '2019-07-30 15:43:37', '2019-07-30 15:43:37'),
(140, 'S-7002', 'jj', '$2y$10$XDVhUJLNbwgTHQbj3iSivuxA4hjHQWkSgAN2iz3BvqY9ye9b3f2VW', 'student', 'none', NULL, '2019-07-30 15:45:10', '2019-07-30 15:45:10'),
(141, 'P-7002', 'Parents', '$2y$10$nAF/EKm40i93VoS21qENbeBsw8XGAJV6WdVpUBRhUOaXoAxwNsd3G', 'parents', 'none', NULL, '2019-07-30 15:45:10', '2019-07-30 15:45:10'),
(142, 'S-7003', 'tt', '$2y$10$zUEATHIVhzrH1WVFdp5tneti0rpC4X.ZWle/71A44JRfTe0pisypO', 'student', 'none', NULL, '2019-07-30 15:46:11', '2019-07-30 15:46:11'),
(143, 'P-7003', 'Parents', '$2y$10$G99Qk2mosfBYCYK2yMpVheJGtG4IpuNOvHX99j4.uj.1tUKP6t6Gi', 'parents', 'none', NULL, '2019-07-30 15:46:11', '2019-07-30 15:46:11'),
(144, 'S-7004', 'uu', '$2y$10$sPlQpSm11lRUjzS5dIOVVujgK/qXGLQnBOOvOGWBHPCGg/NbxpXYe', 'student', 'none', NULL, '2019-07-30 15:47:17', '2019-07-30 15:47:17'),
(145, 'P-7004', 'Parents', '$2y$10$yYoA7vZKH1IuZ7pkYomPl.FlM3uoMeaFgk1zLckfx40MpahuKA.Wa', 'parents', 'none', NULL, '2019-07-30 15:47:17', '2019-07-30 15:47:17'),
(146, 'S-6001', 'ff', '$2y$10$70u105X1C7L.1RvGRUkxrO1yNa.tphap7S/zTXGFVNx6ZuIxxiMXu', 'student', 'none', NULL, '2019-07-30 15:48:53', '2019-07-30 15:48:53'),
(147, 'P-6001', 'Parents', '$2y$10$VFyUGEjNwmqnHZ.L0f1XMOkxhOjJkkKPhJmWOClZ4S2p6g7YgqI4O', 'parents', 'none', NULL, '2019-07-30 15:48:53', '2019-07-30 15:48:53'),
(148, 'S-6002', 'mm', '$2y$10$KxRRzrZon4sKGHwdeonlXeDmmvNY4bFZD8xtVwpcq7Pg2AVYZS03.', 'student', 'none', NULL, '2019-07-30 15:50:29', '2019-07-30 15:50:29'),
(149, 'P-6002', 'Parents', '$2y$10$gV9j.cWveipUGFmb.nwJmekb1Y4yUMFIrtlewTiGDLmKjdOyYyYJ2', 'parents', 'none', NULL, '2019-07-30 15:50:29', '2019-07-30 15:50:29'),
(150, 'S-6003', 'vv', '$2y$10$M704y2cwzhbplCFP0sSryu57AsYCSYWkqosTwV40bphA40KRIpurG', 'student', 'none', NULL, '2019-07-30 15:52:51', '2019-07-30 15:52:51'),
(151, 'P-6003', 'Parents', '$2y$10$C.9Vn6rd2VHUmZO/S3ko1eR8xKTWum6VNRIxeHJXUKO9041o3uVV6', 'parents', 'none', NULL, '2019-07-30 15:52:51', '2019-07-30 15:52:51'),
(152, 'S-6004', 'ee', '$2y$10$AmZjw9CxeDIejn0OrVYaSuGdYR2zGuLpAwq6Z/utGeDKstbIvMjNW', 'student', 'none', NULL, '2019-07-30 15:55:01', '2019-07-30 15:55:01'),
(153, 'P-6004', 'Parents', '$2y$10$.2DjkE4AfCtTDFS/ilkRjeSE0ztwfH06K9J0u3TuhjQCDHaTA.wc2', 'parents', 'none', NULL, '2019-07-30 15:55:01', '2019-07-30 15:55:01'),
(154, 'S-5001', 'w', '$2y$10$Mw.COf6YJGsirX/ndcNlIOxjVGZ1Mue96gx6KUcbq6bwUR3h9m0YS', 'student', 'none', NULL, '2019-07-30 15:57:48', '2019-07-30 15:57:48'),
(155, 'P-5001', 'Parents', '$2y$10$08pFxg0RtAhxRtmN3OubZ.25eksqXvfi/Hc.w7M00OUwXGjwljXDC', 'parents', 'none', NULL, '2019-07-30 15:57:49', '2019-07-30 15:57:49'),
(156, 'S-5002', 'dd', '$2y$10$jo2HDjPKWxp.d0JvJOPi1uhlNoU4/aFlTZKGs62Fsbvb.6TMhoIAm', 'student', 'none', NULL, '2019-07-30 15:58:43', '2019-07-30 15:58:43'),
(157, 'P-5002', 'Parents', '$2y$10$WYXYNY2b/VlVpZ1YLIqQaOTmpy24i.2f.KYB8j0uWikB8Z8//pQ4y', 'parents', 'none', NULL, '2019-07-30 15:58:43', '2019-07-30 15:58:43'),
(158, 'S-5003', 'vb', '$2y$10$xFOA7brU0.7EUULDOFe7Pev..p0tV5Iln090udt8ml5R2Ues5EgHu', 'student', 'none', NULL, '2019-07-30 15:59:43', '2019-07-30 15:59:43'),
(159, 'P-5003', 'Parents', '$2y$10$AYadWRobaMq2H8oiMUat5Oo5X4gvEuDLv45Xcgxjl6ZR6PpXsMjS.', 'parents', 'none', NULL, '2019-07-30 15:59:43', '2019-07-30 15:59:43'),
(160, 'S-5004', 'nm', '$2y$10$wRpAsp6y3XWeGkwKCOkf/eQEE9dQHXnFbxZgjd/TANJNiUiEvcByu', 'student', 'none', NULL, '2019-07-30 16:00:47', '2019-07-30 16:00:47'),
(161, 'P-5004', 'Parents', '$2y$10$fagsGQccSxx89Nm3xPItOOKCtqr3mJqCrKr2kk8yZwAKquPmOruNS', 'parents', 'none', NULL, '2019-07-30 16:00:47', '2019-07-30 16:00:47'),
(162, 'S-4001', 'cc', '$2y$10$aGhyFk4CceZSAeWDFUw6/OxljIKeRp8yTXPUqetetgb.AZhn5u17q', 'student', 'none', NULL, '2019-07-30 16:01:58', '2019-07-30 16:01:58'),
(163, 'P-4001', 'Parents', '$2y$10$Dk9Uks55TV5xW1By0MXvYeE/HpCIFmjISwTvLW2APVLdcqEBOvb/i', 'parents', 'none', NULL, '2019-07-30 16:01:58', '2019-07-30 16:01:58'),
(164, 'S-4002', 'bb', '$2y$10$tdWoUR0pxmD1dc2tMSUr7OxypsnO4FeFp9mTgF31D8oJpLAfEdeAC', 'student', 'none', NULL, '2019-07-30 16:03:10', '2019-07-30 16:03:10'),
(165, 'P-4002', 'Parents', '$2y$10$lIXd9aFCNK2x4b/hjVokWuUuaU.VbbEkIDmnB7SuovXxJDr4ZG7/G', 'parents', 'none', NULL, '2019-07-30 16:03:10', '2019-07-30 16:03:10'),
(166, 'S-4003', 'mn', '$2y$10$qpTPCpX1q6AbtnTDvnUAcOgPt1znkP5gPSMbVsABaBZh/An9cDdnC', 'student', 'none', NULL, '2019-07-30 16:04:21', '2019-07-30 16:04:21'),
(167, 'P-4003', 'Parents', '$2y$10$22FbQq7bG95EGdICH77yJOsC5EocqLK3VWzA40YJsjabvalVEfckK', 'parents', 'none', NULL, '2019-07-30 16:04:21', '2019-07-30 16:04:21'),
(168, 'S-4004', 'dd', '$2y$10$xMlgkE4FVXFPCOcfJF0SieZgoe7lswqlEHP1PXMxBU4ojIEe02Xsq', 'student', 'none', NULL, '2019-07-30 16:05:23', '2019-07-30 16:05:23'),
(169, 'P-4004', 'Parents', '$2y$10$8JS5HWImYnZ24K.yN4Jq.uNl.3S5LPkMjb4v1QVD9HjE9S4I6FBiS', 'parents', 'none', NULL, '2019-07-30 16:05:23', '2019-07-30 16:05:23'),
(170, 'S-4005', 'Golam', '$2y$10$iPIDodK2asLXDMACCLJ9p.0S/L.JnIWSOlDKw4OtleK9o0LeU/hoW', 'student', 'none', NULL, '2019-07-30 16:06:40', '2019-07-30 16:06:40'),
(171, 'P-4005', 'Parents', '$2y$10$EEMcbNoRI9QkDuuVrR4hjeMs4k6RGSD8x5mXtwQdhvxCfjc/bihge', 'parents', 'none', NULL, '2019-07-30 16:06:40', '2019-07-30 16:06:40'),
(172, 'S-5005', 'yT', '$2y$10$49ml/zNOwYV9VcbdsakLzeGr/XEBgGAsZe2crYNbm6A9HkBJRawVu', 'student', 'none', NULL, '2019-07-30 16:09:05', '2019-07-30 16:09:05'),
(173, 'P-5005', 'Parents', '$2y$10$nXmqCwf9CSs5gDf9Yz9gQ.qa/AfiMeVB2.BXgh1pJk2R7O.BUlgCy', 'parents', 'none', NULL, '2019-07-30 16:09:05', '2019-07-30 16:09:05'),
(174, 'S-6005', 'bb', '$2y$10$LO9vu0ujLlTHEgyWXY9s8OP0APekcSBzYdhcTh4JtLTBJ9S9E0bce', 'student', 'none', NULL, '2019-07-30 16:10:10', '2019-07-30 16:10:10'),
(175, 'P-6005', 'Parents', '$2y$10$qh.VsMqaR60dJ3QNshR.0OVUUJnZoe0Ftu4gS.HK5trVy1KeOdVlC', 'parents', 'none', NULL, '2019-07-30 16:10:10', '2019-07-30 16:10:10'),
(176, 'S-7005', 'Rr', '$2y$10$boUMkcQGVzvIDum1tLVSKugpEEuUV1kESz9LudDrKAfdRyydkIsjG', 'student', 'none', NULL, '2019-07-30 16:11:27', '2019-07-30 16:11:27'),
(177, 'P-7005', 'Parents', '$2y$10$Y/k9WgY7SHblxLmicC6NjOMHuSvVAm70paDf0t5DqmK.bNRFnkZ3e', 'parents', 'none', NULL, '2019-07-30 16:11:27', '2019-07-30 16:11:27'),
(178, 'S-8005', 'ss', '$2y$10$/nYNTFhFZzjQ/qQZQGfdC.3lyYMR6Pa8xVgWAMv1DvPWYqEBt7n7K', 'student', 'none', NULL, '2019-07-30 16:13:16', '2019-07-30 16:13:16'),
(179, 'P-8005', 'Parents', '$2y$10$7dwy3X6s.Hnthh77WWE6qe.LKiTTFlAIVtshsaQP7K9Y0f2FXx02O', 'parents', 'none', NULL, '2019-07-30 16:13:16', '2019-07-30 16:13:16'),
(180, 'S-10233', 'Demo', '$2y$10$LE0/vtWxdEod1SC7xz.KgOgXGg6clm3dmMOG1q9naosVwiBgcCzam', 'student', 'none', NULL, '2019-08-04 11:17:17', '2019-08-04 11:17:17'),
(181, 'P-10233', 'Parents', '$2y$10$yF42E0e3iD8ys9XMTidX5ey4fBh60hb40K8mb6KrbpuPKBqjkaEPe', 'parents', 'none', NULL, '2019-08-04 11:17:17', '2019-08-04 11:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_attendances`
--
ALTER TABLE `class_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_attendances_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `class_section_lists`
--
ALTER TABLE `class_section_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject_lists`
--
ALTER TABLE `class_subject_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_distributions`
--
ALTER TABLE `mark_distributions`
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
  ADD KEY `password_resets_user_id_index` (`user_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

--
-- Indexes for table `stu_attendances`
--
ALTER TABLE `stu_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stu_attendances_teacher_id_foreign` (`teacher_id`),
  ADD KEY `stu_attendances_student_id_foreign` (`student_id`);

--
-- Indexes for table `stu_local_guardians`
--
ALTER TABLE `stu_local_guardians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stu_local_guardians_student_id_unique` (`student_id`);

--
-- Indexes for table `stu_main_guardians`
--
ALTER TABLE `stu_main_guardians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stu_main_guardians_student_id_unique` (`student_id`);

--
-- Indexes for table `stu_office_infos`
--
ALTER TABLE `stu_office_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stu_office_infos_student_id_unique` (`student_id`);

--
-- Indexes for table `stu_parents`
--
ALTER TABLE `stu_parents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stu_parents_student_id_unique` (`student_id`),
  ADD KEY `stu_parents_user_id_foreign` (`user_id`);

--
-- Indexes for table `stu_school_infos`
--
ALTER TABLE `stu_school_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stu_school_infos_student_id_unique` (`student_id`),
  ADD KEY `stu_school_infos_guide_teacher_foreign` (`guide_teacher`);

--
-- Indexes for table `subject_marks`
--
ALTER TABLE `subject_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_marks_teacher_id_foreign` (`teacher_id`),
  ADD KEY `subject_marks_student_id_foreign` (`student_id`);

--
-- Indexes for table `subject_teachers`
--
ALTER TABLE `subject_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_teachers_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_id_unique` (`user_id`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workers_user_id_unique` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_attendances`
--
ALTER TABLE `class_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_section_lists`
--
ALTER TABLE `class_section_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_subject_lists`
--
ALTER TABLE `class_subject_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mark_distributions`
--
ALTER TABLE `mark_distributions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `stu_attendances`
--
ALTER TABLE `stu_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `stu_local_guardians`
--
ALTER TABLE `stu_local_guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stu_main_guardians`
--
ALTER TABLE `stu_main_guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stu_office_infos`
--
ALTER TABLE `stu_office_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `stu_parents`
--
ALTER TABLE `stu_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `stu_school_infos`
--
ALTER TABLE `stu_school_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `subject_marks`
--
ALTER TABLE `subject_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `subject_teachers`
--
ALTER TABLE `subject_teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class_attendances`
--
ALTER TABLE `class_attendances`
  ADD CONSTRAINT `class_attendances_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `stu_attendances`
--
ALTER TABLE `stu_attendances`
  ADD CONSTRAINT `stu_attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stu_attendances_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE CASCADE;

--
-- Constraints for table `stu_local_guardians`
--
ALTER TABLE `stu_local_guardians`
  ADD CONSTRAINT `stu_local_guardians_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `stu_main_guardians`
--
ALTER TABLE `stu_main_guardians`
  ADD CONSTRAINT `stu_main_guardians_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `stu_office_infos`
--
ALTER TABLE `stu_office_infos`
  ADD CONSTRAINT `stu_office_infos_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `stu_parents`
--
ALTER TABLE `stu_parents`
  ADD CONSTRAINT `stu_parents_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stu_parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `stu_school_infos`
--
ALTER TABLE `stu_school_infos`
  ADD CONSTRAINT `stu_school_infos_guide_teacher_foreign` FOREIGN KEY (`guide_teacher`) REFERENCES `teachers` (`teacher_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stu_school_infos_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_marks`
--
ALTER TABLE `subject_marks`
  ADD CONSTRAINT `subject_marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_marks_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_teachers`
--
ALTER TABLE `subject_teachers`
  ADD CONSTRAINT `subject_teachers_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `workers`
--
ALTER TABLE `workers`
  ADD CONSTRAINT `workers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
