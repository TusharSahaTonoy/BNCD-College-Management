-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2019 at 12:03 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bncd_db`
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

--
-- Dumping data for table `class_section_lists`
--

INSERT INTO `class_section_lists` (`id`, `class`, `group`, `section`, `created_at`, `updated_at`) VALUES
(1, '8', NULL, 'A', '2019-07-15 14:23:01', '2019-07-15 14:23:01'),
(2, '8', NULL, 'B', '2019-07-15 14:23:01', '2019-07-15 14:23:01'),
(3, '8', NULL, 'C', '2019-07-15 14:23:01', '2019-07-15 14:23:01'),
(4, '8', NULL, 'D', '2019-07-15 14:23:01', '2019-07-15 14:23:01'),
(5, '8', NULL, 'E', '2019-07-15 14:23:01', '2019-07-15 14:23:01'),
(6, '9', 'Science', 'A', '2019-07-16 05:00:03', '2019-07-16 05:00:03'),
(7, '9', 'Science', 'B', '2019-07-16 05:00:03', '2019-07-16 05:00:03'),
(8, '9', 'Science', 'C', '2019-07-16 05:00:04', '2019-07-16 05:00:04'),
(9, '7', NULL, 'A', '2019-07-17 04:50:47', '2019-07-17 04:50:47'),
(10, '7', NULL, 'B', '2019-07-17 04:50:47', '2019-07-17 04:50:47'),
(11, '7', NULL, 'C', '2019-07-17 04:50:47', '2019-07-17 04:50:47'),
(12, '7', NULL, 'D', '2019-07-17 04:50:47', '2019-07-17 04:50:47'),
(13, '11', 'Science', 'A', '2019-07-20 07:11:58', '2019-07-20 07:11:58'),
(14, '11', 'Science', 'B', '2019-07-20 07:11:58', '2019-07-20 07:11:58'),
(15, '11', 'Science', 'C', '2019-07-20 07:11:58', '2019-07-20 07:11:58');

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
(1, '8', NULL, 'aaa', '2019-07-15 14:40:07', '2019-07-15 14:40:07'),
(2, '8', NULL, 'bbb', '2019-07-15 14:40:08', '2019-07-15 14:40:08'),
(3, '8', NULL, 'ccc', '2019-07-15 14:40:08', '2019-07-15 14:40:08'),
(4, '9', 'Science', 'aaa', '2019-07-16 04:58:43', '2019-07-16 04:58:43'),
(5, '9', 'Science', 'bbb', '2019-07-16 04:58:43', '2019-07-16 04:58:43'),
(6, '9', 'Science', 'ccc', '2019-07-16 04:58:43', '2019-07-16 04:58:43'),
(7, '9', 'Science', 'ddd', '2019-07-16 04:58:43', '2019-07-16 04:58:43'),
(8, '7', NULL, 'aaa', '2019-07-17 04:53:12', '2019-07-17 04:53:12'),
(9, '7', NULL, 'bbb', '2019-07-17 04:53:13', '2019-07-17 04:53:13'),
(10, '7', NULL, 'cccc', '2019-07-17 04:53:13', '2019-07-17 04:53:13'),
(11, '7', NULL, 'ddd', '2019-07-17 04:53:13', '2019-07-17 04:53:13'),
(12, '11', 'Science', 'math', '2019-07-20 07:10:29', '2019-07-20 07:10:29'),
(13, '11', 'Science', 'english', '2019-07-20 07:10:29', '2019-07-20 07:10:29');

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
(15, '9111', 'Aomc', 'Bangladeshi', 'Islam', '2019-07-15', 's1563981070.jpg', NULL, NULL, 'S-9111', '2019-07-24 09:11:11', '2019-07-24 09:11:11');

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
(20, '8112', '8', NULL, 'aaa', 'A', '1231', 2, '2019-07-15', '2019-07-24 05:35:28', '2019-07-24 05:35:28');

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
  `nomination_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stu_office_infos`
--

INSERT INTO `stu_office_infos` (`id`, `class`, `group`, `section`, `roll`, `nomination_count`, `security_code`, `student_id`, `created_at`, `updated_at`) VALUES
(6, '7', 'Science', 'A', '111', NULL, NULL, '111', '2019-07-16 15:20:19', '2019-07-16 15:20:19'),
(7, '9', 'Science', 'A', '222', 'Tushar Saha', '12301', '222', '2019-07-19 06:14:16', '2019-07-19 06:14:16'),
(8, '9', 'Science', 'A', '333', NULL, '12451', '333', '2019-07-19 06:17:55', '2019-07-19 06:17:55'),
(9, '9', 'Science', 'A', '444', NULL, '6594', '444', '2019-07-19 07:05:53', '2019-07-19 07:05:53'),
(10, '8', NULL, 'A', '8111', NULL, '1230', '8111', '2019-07-20 04:42:10', '2019-07-20 04:42:10'),
(11, '8', NULL, 'A', '8112', NULL, NULL, '8112', '2019-07-20 04:45:25', '2019-07-20 04:45:25'),
(12, '9', 'Science', 'A', '9111', NULL, '1230', '9111', '2019-07-24 09:11:11', '2019-07-24 09:11:11');

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
(9, 'Qsmal', NULL, NULL, NULL, NULL, '01234567890', NULL, 'Awdas', NULL, NULL, NULL, NULL, '01234567890', NULL, '9111', 'P-9111', '2019-07-24 09:11:11', '2019-07-24 09:11:11');

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
(4, '7', 'Science', 'A', '12234', '111', '2019-07-16 15:20:19', '2019-07-16 15:20:19'),
(5, '9', 'Science', 'A', '1231', '222', '2019-07-19 06:14:16', '2019-07-19 06:14:16'),
(6, '9', 'Science', 'A', '1231', '333', '2019-07-19 06:17:55', '2019-07-19 06:17:55'),
(7, '9', 'Science', 'A', '1231', '444', '2019-07-19 07:05:53', '2019-07-19 07:05:53'),
(8, '8', NULL, 'A', '1231', '8111', '2019-07-20 04:42:10', '2019-07-20 04:42:10'),
(9, '8', NULL, 'A', '1231', '8112', '2019-07-20 04:45:26', '2019-07-20 04:45:26'),
(10, '9', 'Science', 'A', '1231', '9111', '2019-07-24 09:11:11', '2019-07-24 09:11:11');

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
(1, '8', NULL, 'aaa', '12.50', '0.50', '0.00', '0.00', '1.50', '50.50', '45.00', '0.00', '0.00', '0.00', '9.00', '15.00', '0.00', '8111', '1231', '2019-07-25 10:01:37', '2019-07-25 11:18:29'),
(2, '8', NULL, 'aaa', '0.00', '0.00', '65.00', '0.00', '53.00', '62.05', '15.00', '0.00', '0.00', '15.00', '10.00', '30.00', '0.00', '8112', '1231', '2019-07-25 10:01:37', '2019-07-25 11:18:29'),
(3, '8', NULL, 'ccc', '5.50', '0.00', '0.00', '42.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '8111', '1231', '2019-07-25 10:02:59', '2019-07-25 11:15:53'),
(4, '8', NULL, 'ccc', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '31.00', '0.00', '12.00', '0.00', '0.00', '0.00', '0.00', '8112', '1231', '2019-07-25 10:02:59', '2019-07-25 11:15:53'),
(5, '9', 'Science', 'aaa', '0.00', '10.00', '0.00', '65.00', '1.00', '0.00', '0.00', '0.00', '45.00', '0.00', '0.50', '10.00', '0.00', '222', '1231', '2019-07-25 10:04:07', '2019-07-25 11:18:47'),
(6, '9', 'Science', 'aaa', '0.00', '12.00', '0.00', '0.00', '0.00', '45.00', '7.00', '0.00', '0.00', '10.00', '10.00', '0.00', '0.00', '333', '1231', '2019-07-25 10:04:07', '2019-07-25 11:18:47'),
(7, '9', 'Science', 'aaa', '0.00', '0.00', '5.00', '0.00', '40.00', '63.50', '0.00', '54.00', '44.00', '0.00', '0.05', '10.00', '0.00', '444', '1231', '2019-07-25 10:04:07', '2019-07-25 11:18:47'),
(8, '9', 'Science', 'aaa', '0.00', '45.00', '0.00', '10.00', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '9111', '1231', '2019-07-25 10:04:07', '2019-07-25 11:18:47'),
(9, '9', 'Science', 'ccc', '0.00', '10.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '222', '1231', '2019-07-25 11:16:32', '2019-07-25 11:17:57'),
(10, '9', 'Science', 'ccc', '0.00', '0.00', '0.00', '10.00', '0.00', '0.00', '0.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '333', '1231', '2019-07-25 11:16:32', '2019-07-25 11:17:57'),
(11, '9', 'Science', 'ccc', '0.05', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '444', '1231', '2019-07-25 11:16:32', '2019-07-25 11:17:57'),
(12, '9', 'Science', 'ccc', '0.00', '0.00', '63.00', '0.00', '0.00', '0.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '9111', '1231', '2019-07-25 11:16:32', '2019-07-25 11:17:57');

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
  `teacher_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_teachers`
--

INSERT INTO `subject_teachers` (`id`, `class`, `group`, `subject`, `section`, `teacher_id`, `created_at`, `updated_at`) VALUES
(2, '8', NULL, 'aaa', 'A', '1231', '2019-07-16 07:02:55', '2019-07-16 07:02:55'),
(3, '8', NULL, 'ccc', 'A', '1231', '2019-07-16 07:02:55', '2019-07-16 07:02:55'),
(4, '9', 'Science', 'aaa', 'A', '1231', '2019-07-19 06:25:50', '2019-07-19 06:25:50'),
(5, '9', 'Science', 'ccc', 'A', '1231', '2019-07-19 06:25:50', '2019-07-19 06:25:50'),
(6, '9', 'Science', 'aaa', 'B', '1230', '2019-07-23 06:14:03', '2019-07-23 06:14:03'),
(7, '9', 'Science', 'bbb', 'B', '1230', '2019-07-23 06:14:04', '2019-07-23 06:14:04'),
(8, '9', 'Science', 'ccc', 'B', '1230', '2019-07-23 06:14:04', '2019-07-23 06:14:04'),
(9, '9', 'Science', 'ddd', 'B', '1230', '2019-07-23 06:14:04', '2019-07-23 06:14:04');

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
(53, 'admin2', 'Admin 2', '$2y$10$rckTzK/lWtMaOwSd7AbL0ek0AbYpC84DuMWRlRczDUS1UPh8NGKBC', 'admin', 'admin', NULL, '2019-07-25 14:05:18', '2019-07-25 14:05:18');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `class_subject_lists`
--
ALTER TABLE `class_subject_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stu_attendances`
--
ALTER TABLE `stu_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stu_parents`
--
ALTER TABLE `stu_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stu_school_infos`
--
ALTER TABLE `stu_school_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject_marks`
--
ALTER TABLE `subject_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subject_teachers`
--
ALTER TABLE `subject_teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
