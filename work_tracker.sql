-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2021 at 06:57 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `work_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `am_id` int(10) NOT NULL,
  `am_name` varchar(100) DEFAULT NULL,
  `am_certificate` varchar(100) DEFAULT NULL,
  `am_status` int(10) NOT NULL DEFAULT 0,
  `am_created_by` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `applied_events`
--

CREATE TABLE `applied_events` (
  `ea_id` int(11) NOT NULL,
  `ea_ev_id` int(10) NOT NULL DEFAULT 0,
  `ea_name` varchar(100) DEFAULT NULL,
  `ea_branch` varchar(20) DEFAULT NULL,
  `ea_usn` varchar(20) DEFAULT NULL,
  `ea_applied_date` date DEFAULT NULL,
  `ea_event_name` varchar(100) DEFAULT NULL,
  `ea_event_date` date DEFAULT NULL,
  `ea_venue` varchar(100) DEFAULT NULL,
  `ea_event_created_by` varchar(100) DEFAULT NULL,
  `ea_created_by` varchar(100) DEFAULT NULL,
  `ea_status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `et_id` int(20) NOT NULL,
  `et_name` varchar(100) DEFAULT NULL,
  `et_status` int(10) NOT NULL DEFAULT 0,
  `et_created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`et_id`, `et_name`, `et_status`, `et_created_by`, `created_at`, `updated_at`) VALUES
(1, 'Java event', 1, NULL, '2021-06-11 07:08:48', '2021-06-11 07:11:48'),
(2, 'Python Event', 1, NULL, '2021-06-11 07:11:57', '2021-06-11 08:21:56'),
(3, 'Java', 0, NULL, '2021-06-11 08:22:06', '2021-06-11 09:41:11'),
(4, 'Python', 0, NULL, '2021-06-11 09:54:15', '2021-06-11 09:54:15'),
(5, 'C', 0, NULL, '2021-06-11 09:54:20', '2021-06-11 09:54:20'),
(6, 'DS', 0, NULL, '2021-06-11 09:54:26', '2021-06-11 09:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `host_details`
--

CREATE TABLE `host_details` (
  `ev_id` int(20) NOT NULL,
  `ev_event_name` varchar(100) DEFAULT NULL,
  `ev_date` date DEFAULT NULL,
  `ev_start_time` varchar(20) DEFAULT NULL,
  `ev_end_time` varchar(20) DEFAULT NULL,
  `ev_event_details` text DEFAULT NULL,
  `ev_venue` varchar(100) DEFAULT NULL,
  `ev_count` int(10) NOT NULL DEFAULT 0,
  `ev_hosted_by` varchar(100) DEFAULT NULL,
  `ev_created_by` varchar(100) DEFAULT NULL,
  `ev_status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_profile`
--

CREATE TABLE `staff_profile` (
  `sf_id` int(20) NOT NULL,
  `sf_photo` varchar(100) DEFAULT NULL,
  `sf_name` varchar(100) DEFAULT NULL,
  `sf_email` varchar(100) DEFAULT NULL,
  `sf_mobile` varchar(20) DEFAULT NULL,
  `sf_password` varchar(50) DEFAULT NULL,
  `sf_gender` varchar(20) DEFAULT NULL,
  `sf_branch` varchar(20) DEFAULT NULL,
  `sf_skills` text DEFAULT NULL,
  `sf_strengths` text DEFAULT NULL,
  `sf_projects` text DEFAULT NULL,
  `sf_internship` text DEFAULT NULL,
  `sf_language_known` text DEFAULT NULL,
  `sf_place` varchar(100) DEFAULT NULL,
  `sf_dob` varchar(100) DEFAULT NULL,
  `sf_qualification` varchar(100) DEFAULT NULL,
  `sf_board_of_education` varchar(255) DEFAULT NULL,
  `sf_institution` varchar(255) DEFAULT NULL,
  `sf_address` varchar(255) DEFAULT NULL,
  `sf_status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_profile`
--

CREATE TABLE `student_profile` (
  `sp_id` int(20) NOT NULL,
  `sp_photo` varchar(100) DEFAULT NULL,
  `sp_name` varchar(100) DEFAULT NULL,
  `sp_email` varchar(100) DEFAULT NULL,
  `sp_mobile` varchar(100) DEFAULT NULL,
  `sp_password` varchar(100) DEFAULT NULL,
  `sp_gender` varchar(100) DEFAULT NULL,
  `sp_usn` varchar(100) DEFAULT NULL,
  `sp_branch` varchar(100) DEFAULT NULL,
  `sp_semester` varchar(100) DEFAULT NULL,
  `sp_cgpa` varchar(100) DEFAULT NULL,
  `sp_passing_year` varchar(255) DEFAULT NULL,
  `sp_skills` text DEFAULT NULL,
  `sp_strengths` text DEFAULT NULL,
  `sp_projects` text DEFAULT NULL,
  `sp_internship` text DEFAULT NULL,
  `sp_language_known` text DEFAULT NULL,
  `sp_address` text DEFAULT NULL,
  `sp_place` varchar(255) DEFAULT NULL,
  `sp_dob` varchar(255) DEFAULT NULL,
  `sp_qualification` varchar(255) DEFAULT NULL,
  `sp_board_of_education` varchar(255) DEFAULT NULL,
  `sp_institution` varchar(255) DEFAULT NULL,
  `sp_created_by` varchar(100) DEFAULT NULL,
  `sp_status` int(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `photo`, `name`, `email`, `mobile`, `email_verified_at`, `role`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin@gmail.com', '9999999999', NULL, 'Admin', '$2y$10$FqBwRrsU2EM77EDEwQGSCOVFi7AUK8imxScFI66s7UhAFq/usPDEa', 1, NULL, '2021-06-11 07:07:51', '2021-06-11 07:39:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`am_id`);

--
-- Indexes for table `applied_events`
--
ALTER TABLE `applied_events`
  ADD PRIMARY KEY (`ea_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`et_id`);

--
-- Indexes for table `host_details`
--
ALTER TABLE `host_details`
  ADD PRIMARY KEY (`ev_id`);

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
-- Indexes for table `staff_profile`
--
ALTER TABLE `staff_profile`
  ADD PRIMARY KEY (`sf_id`);

--
-- Indexes for table `student_profile`
--
ALTER TABLE `student_profile`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `am_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applied_events`
--
ALTER TABLE `applied_events`
  MODIFY `ea_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `et_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `host_details`
--
ALTER TABLE `host_details`
  MODIFY `ev_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_profile`
--
ALTER TABLE `staff_profile`
  MODIFY `sf_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_profile`
--
ALTER TABLE `student_profile`
  MODIFY `sp_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
