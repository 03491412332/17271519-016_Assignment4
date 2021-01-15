-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 05:30 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapisdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursedrop_apps`
--

CREATE TABLE `coursedrop_apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rollNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semesterNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semesterTerm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semesterYear` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseChs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `superRemarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'waiting',
  `hodRemarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'waiting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coursedrop_apps`
--

INSERT INTO `coursedrop_apps` (`id`, `name`, `rollNo`, `semesterNo`, `semesterTerm`, `semesterYear`, `courseName`, `courseCode`, `courseChs`, `superRemarks`, `hodRemarks`, `created_at`, `updated_at`) VALUES
(1, 'Ghulam', '17272517-098', '8', 'Summer', '2011', 'Mad', '654', '3', 'approved', 'approved', '2021-01-13 02:39:19', '2021-01-13 02:51:25'),
(2, 'mughal', '123456-908', '8', 'Spring', '2012', 'Mad', '349', '3', 'waiting', 'waiting', '2021-01-13 04:02:25', '2021-01-13 04:02:25'),
(3, 'Ali', '4555577766', '1', 'Spring', '2004', 'AI', '321', '1', 'waiting', 'waiting', '2021-01-13 04:09:00', '2021-01-13 04:09:00'),
(4, 'ali', '222332225', '1', 'Spring', '2004', 'Cc', '324', '1', 'waiting', 'waiting', '2021-01-13 04:10:10', '2021-01-13 04:10:10'),
(5, 'dasti', '173766657-890', '1', 'Spring', '2011', 'AI', '432', '3', 'waiting', 'waiting', '2021-01-13 04:14:54', '2021-01-13 04:14:54'),
(6, 'mughal g', '1234565432', '1', 'Spring', '2004', 'Ai', '543', '1', 'waiting', 'waiting', '2021-01-13 04:26:46', '2021-01-13 04:26:46'),
(7, 'ghulam g', '17275645-088', '7', 'Summer', '2012', 'AI', '430', '3', 'waiting', 'waiting', '2021-01-13 09:30:29', '2021-01-13 09:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `hods`
--

CREATE TABLE `hods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2021_01_06_131027_create_course_drop_apps', 3),
(38, '2021_01_05_190729_create_students', 4),
(39, '2021_01_06_052758_create_hods', 4),
(40, '2021_01_06_052848_create_supervisors', 4),
(41, '2021_01_07_154837_create_coursedrop_apps', 4);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rollNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `rollNo`, `password`, `created_at`, `updated_at`) VALUES
(1, 'dastgeer', 'dastgeer@gmail.com', '12345', '2021-01-13 02:38:31', '2021-01-13 02:38:31'),
(2, 'Hamza Mughal', '17271519-021', '12345', '2021-01-13 06:14:54', '2021-01-13 06:14:54'),
(3, 'Naveed Mughal', '17271519-021', '12345', '2021-01-13 06:15:22', '2021-01-13 06:15:22'),
(4, 'Ali Mughal', '17271519-021', '12345', '2021-01-13 06:16:57', '2021-01-13 06:16:57'),
(5, 'ghulam', 'dastgeer@gmail.com', '12345', '2021-01-14 14:52:51', '2021-01-14 14:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursedrop_apps`
--
ALTER TABLE `coursedrop_apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hods`
--
ALTER TABLE `hods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursedrop_apps`
--
ALTER TABLE `coursedrop_apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hods`
--
ALTER TABLE `hods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
