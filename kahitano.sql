-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 11:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kahitano`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant_certificate`
--

CREATE TABLE `applicant_certificate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `certificate_name` varchar(255) NOT NULL,
  `issuing_organization` varchar(255) NOT NULL,
  `issue_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `personal_info_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `issuing_organization` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `personal_info_id`, `name`, `issuing_organization`, `issue_date`, `created_at`, `updated_at`) VALUES
(6, 1, 'Cisco Certified Network Professional (CCNP) Security', 'Ciscos', '2024-11-29', '2024-12-05 09:52:34', '2024-12-05 09:52:34'),
(9, 2, 'Digital Literacy Training Department of Information And Communications Technology', 'Baliwag Municipality', '2024-11-15', '2024-12-05 13:04:23', '2024-12-05 13:04:23'),
(10, 2, 'Introduction to Cybersecurity Cisco Networking Academy', 'Cisco', '2024-11-28', '2024-12-05 13:04:23', '2024-12-05 13:04:23'),
(11, 2, 'Career Talk Australian College of Studies (ACOS', 'Baliwag Polytechnic College', '2024-11-23', '2024-12-05 13:04:23', '2024-12-05 13:04:23'),
(13, 3, 'Cisco Networking Academy: Introduction to Cybersecurity', 'Cisco', '2024-11-28', '2024-12-05 13:13:50', '2024-12-05 13:13:50'),
(14, 4, 'Cisco Networking Academy', 'Introduction to Cybersecurity', '2024-11-28', '2024-12-05 13:22:01', '2024-12-05 13:22:01'),
(16, 5, 'Cisco Networking Academy: Introduction to Cybersecurity', 'Cisco', '2024-11-28', '2024-12-05 13:29:49', '2024-12-05 13:29:49'),
(18, 6, 'Cisco Networking Academy', 'Cisco', '2024-11-28', '2024-12-05 13:35:39', '2024-12-05 13:35:39'),
(21, 7, 'Cisco Networking Academy', 'Cisco', '2024-11-18', '2024-12-05 13:44:20', '2024-12-05 13:44:20'),
(22, 7, 'Digital Literacy Training', 'Baliwag Municipality', '2024-11-15', '2024-12-05 13:44:21', '2024-12-05 13:44:21'),
(25, 8, 'Cisco Networking Academy', 'Cisco', '2024-11-28', '2024-12-05 13:51:12', '2024-12-05 13:51:12'),
(26, 8, 'Digital Literacy Training Department of Information And Communications Technology', 'Baliwag Municipality', '2024-11-15', '2024-12-05 13:51:12', '2024-12-05 13:51:12'),
(28, 10, 'Introduction to Cybersecurity Cisco Networking Academy', 'IITI', '2024-11-27', '2024-12-05 14:46:09', '2024-12-05 14:46:09'),
(29, 9, 'Introduction to Cybersecurity Cisco Networking Academy, November', 'IITI', '2024-11-27', '2024-12-05 14:47:12', '2024-12-05 14:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `personal_info_id` bigint(20) UNSIGNED NOT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `Educlevel` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `graduation_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `personal_info_id`, `degree`, `school_name`, `Educlevel`, `start_date`, `graduation_date`, `created_at`, `updated_at`) VALUES
(6, 1, 'Bachelor of Science and Information and Technology', 'Baliwag Polytechnic College', 'College', '2021-08-05', '2025-01-01', '2024-12-05 09:52:34', '2024-12-05 09:52:34'),
(7, 1, 'General Academic Strand', 'Asian Institute of Science and Technology', 'Senior High School', '2019-06-12', '2021-05-16', '2024-12-05 09:52:34', '2024-12-05 09:52:34'),
(10, 2, 'Bachelor of Science and Information and Technology', 'Baliwag Polytechnic College', 'College', '2021-08-05', NULL, '2024-12-05 13:04:22', '2024-12-05 13:04:22'),
(12, 3, 'Bachelor of Science and Information and Technology', 'Bachelor of Science in Information Technology  Dalubhasaang Politekniko ng Lungsod ng Baliwag', 'College', '2021-08-05', '2025-08-01', '2024-12-05 13:13:50', '2024-12-05 13:13:50'),
(13, 4, 'Bachelor of Science and Information and Technology', 'Baliwag Polytechnic College', 'College', '2021-08-05', '2025-08-05', '2024-12-05 13:22:01', '2024-12-05 13:22:01'),
(15, 5, 'Bachelor of Science and Information and Technology', 'Bachelor of Science in Information Technology  -Dalubhasaang Politekniko Lungsod ng Baliwag', 'Elementary', '2021-08-05', '2025-08-05', '2024-12-05 13:29:49', '2024-12-05 13:29:49'),
(17, 6, 'Bachelor of Science and Information and Technology', 'Baliwag Polytechnic College', 'College', '2021-08-05', '2025-08-05', '2024-12-05 13:35:38', '2024-12-05 13:35:38'),
(19, 7, 'Bachelor of Science and Information and Technology', 'Bachelor of Science in Information Technology Dalubhasaang Politekniko ng Lungsod ng Baliwag', 'College', '2021-08-05', '2025-08-05', '2024-12-05 13:44:20', '2024-12-05 13:44:20'),
(21, 8, 'Bachelor of Science and Information and Technology', 'Baliwag Polytechnic College', 'College', '2021-08-05', '2025-08-05', '2024-12-05 13:51:12', '2024-12-05 13:51:12'),
(23, 10, 'Bachelor of Science in Information Technology', 'Dalubhasaang Politekniko ng Lungsod ng Baliwag', 'College', '2021-05-08', '2025-10-06', '2024-12-05 14:46:09', '2024-12-05 14:46:09'),
(24, 9, 'Bachelor of Science in Information Technology', 'Dalubhasaang Politekniko ng Lungsod ng Baliwag', 'College', '2021-05-08', '2025-12-06', '2024-12-05 14:47:12', '2024-12-05 14:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(20, '0001_01_01_000000_create_users_table', 1),
(21, '0001_01_01_000001_create_cache_table', 1),
(22, '0001_01_01_000002_create_jobs_table', 1),
(23, '2024_11_29_044250_create_user_system_table', 1),
(25, '2024_11_29_000001_create_personal_infos_table', 2),
(26, '2024_11_29_131734_create_applicant_certificate_table', 2),
(27, '2024_11_29_150948_create_skills_table', 2),
(28, '2024_11_29_150949_create_work_experiences_table', 2),
(29, '2024_11_29_150950_create_educations_table', 2),
(30, '2024_11_29_150958_create_certificates_table', 2),
(31, '2024_12_02_162116_create__creator_resume', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_infos`
--

CREATE TABLE `personal_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `Objective` varchar(255) DEFAULT NULL,
  `Facebook` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Height` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `Marital_Status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_infos`
--

INSERT INTO `personal_infos` (`id`, `first_name`, `last_name`, `email`, `phone`, `linkedin_url`, `address`, `image`, `Objective`, `Facebook`, `BirthDate`, `Height`, `weight`, `Marital_Status`, `created_at`, `updated_at`) VALUES
(1, 'Jauie', 'Canon', 'jauiecanon@gmail.com', '09495689082', NULL, 'Villa, Leoncia Taal, Pulilan, Bulacan', 'uploads/images/1733416200.jpg', 'Motivated and detail-oriented Information Technology student seeking to apply technical skills and academic knowledge in software development, network management, or IT support.', NULL, '2002-09-29', '172', '64', 'Single', '2024-12-05 08:30:00', '2024-12-05 09:39:02'),
(2, 'Hanna Beatrice', 'Manalastas', 'hannamanalastas0613@gmail.com', '0950-922-0131', NULL, 'Makinabang, Baliwag, Bulacan', 'uploads/images/1733432164.jpg', 'Enthusiastic about utilizing the knowledge and skills obtained through my academic journey.', NULL, '2003-06-13', '152', '40', 'Single', '2024-12-05 12:56:04', '2024-12-05 12:59:50'),
(3, 'Bren', 'Balajadia', 'balajadiabren21@gmail.com', '09109044577', NULL, '052 Purok1, San Roque, San Luis, Pampanga', 'uploads/images/1733433130.jpg', 'I am a dedicated IT student focused on enhancing my skills and gaining real-world experience.', NULL, '2003-04-21', '166', '70', 'Single', '2024-12-05 13:12:10', '2024-12-05 13:13:50'),
(4, 'Anthony', 'Salvador', 'thonysalvado30@gmail.com', '09634178106', NULL, '015 Purok 2, Sto Tomas, San Luis, Pampanga', 'uploads/images/1733433721.jpg', 'As the Graphic Designer for San Juan National High School\'s official Facebook page, I was responsible for creating visually appealing and engaging content to represent the school online.', 'https://www.facebook.com/anthony.salvadorii.7', '2003-07-27', '147', '90', 'Single', '2024-12-05 13:22:01', '2024-12-05 13:22:01'),
(5, 'Jamier', 'Seda', 'jamierseda123@gmail.com', '09453305112', NULL, 'Tumana,Taal,Pulilan,Bulacan', 'uploads/images/1733434153.jpg', 'To utilize my technical skills and provide a professional service to customers by applying and honing my knowledge, and working.', NULL, '2021-08-01', '137', '45', 'Single', '2024-12-05 13:29:13', '2024-12-05 13:29:48'),
(6, 'Arvick', 'mercado', 'arvickmercado@gmail.com', '09153741727', NULL, '594 Sta.Lucia St., Pinagbarilan, Baliwag, Bulacan', 'uploads/images/1733434519.jpg', 'I am an IT student eager to learn and grow in the field of technology.', NULL, '2003-09-22', '139', '54', 'Single', '2024-12-05 13:35:19', '2024-12-05 13:35:38'),
(7, 'Josephine', 'Hipolito', 'josephinehipolito11@gmail.com', '09208024986', NULL, '306 Dela Merced St., Sto. Niño, Baliuag, Bulacan', 'uploads/images/1733435036.jpg', 'I am committed to establishing a solid career in the IT field and eager to embrace new opportunities that will enhance my knowledge and abilities.', NULL, '2002-11-11', '127', '57', 'Single', '2024-12-05 13:43:56', '2024-12-05 13:44:20'),
(8, 'Mariahgil Mae', 'Guillen', 'mhagill.guillenroja@gmail.com', '09352348566', NULL, '243 Purok 3 Sampaloc, San Rafael, Bulacan', 'uploads/images/1733435453.jpg', 'A motivated IT student seeking an opportunity to apply and enhance my technical skills in a professional environment.', NULL, '2001-12-14', '124', '52', 'Single', '2024-12-05 13:50:53', '2024-12-05 13:51:11'),
(9, 'Vien Adrian', 'Adriano', 'vienadrian1117@gmail.com', '09424192259', NULL, '280 Gil Carlos Street, Virgen Delas Flores, Baliuag, Bulacan', 'uploads/images/1733438365.jpg', 'To leverage my skills in software development, system administration, and network management to contribute to the growth and success of a dynamic organization.', NULL, '2002-12-11', '172', '73', 'Single', '2024-12-05 14:39:25', '2024-12-05 14:47:12'),
(10, 'Justine May', 'Del Rosario', 'delrosariojustinemay@gmail.com', '09976678021', NULL, '446 Tabon, Pulilan, Bulacan', 'uploads/images/1733438769.jpeg', 'I\'m committed to acquiring knowledge and abilities that will enable me to succeed in my chosen area.', 'https://www.facebook.com/JustineMay16', '2003-03-16', '153', '47', 'Single', '2024-12-05 14:46:09', '2024-12-05 14:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5YG0izdb33mOiBdZpgoNgcnStInBocWykXGkHJpE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSWVIRlYxVGd5amZDS2xtR0xnTFhmTE9BeU52U2xubExKRzU3MUQ1ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjQ6InVzZXIiO2E6NDp7czoyOiJpZCI7aToxO3M6OToiZmlyc3RuYW1lIjtzOjU6IkphdWllIjtzOjg6Imxhc3RuYW1lIjtzOjU6IkNhbm9uIjtzOjQ6InJvbGUiO3M6NToiYWRtaW4iO319', 1733438965),
('EEyQMYuzNXfp8cE8QVLh4FczBHvpQy0VCwMc07ij', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQm02eVRXQjMzdDlNQjdISjBvSFByblBwWDlMcHZFTzNjaWxBWkJIQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoidXNlciI7YTo0OntzOjI6ImlkIjtpOjE7czo5OiJmaXJzdG5hbWUiO3M6NToiSmF1aWUiO3M6ODoibGFzdG5hbWUiO3M6NToiQ2Fub24iO3M6NDoicm9sZSI7czo1OiJhZG1pbiI7fX0=', 1733436730);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `personal_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `personal_info_id`, `name`, `created_at`, `updated_at`) VALUES
(41, 1, 'Good In Programming(PHP, Laravel, JavaScript)', '2024-12-05 09:52:33', '2024-12-05 09:52:33'),
(42, 1, 'Good in Front End (Bootstrap, React Js, Html, Css)', '2024-12-05 09:52:33', '2024-12-05 09:52:33'),
(43, 1, 'Can troubleshoot both Software and Hardware', '2024-12-05 09:52:33', '2024-12-05 09:52:33'),
(44, 1, 'Good in Documentation', '2024-12-05 09:52:33', '2024-12-05 09:52:33'),
(45, 1, 'Good in editing Videos and Photos', '2024-12-05 09:52:33', '2024-12-05 09:52:33'),
(46, 1, 'Can use Office Tools (Word, PPT, Excel)', '2024-12-05 09:52:34', '2024-12-05 09:52:34'),
(47, 1, 'Device Repair (PCs, laptops, cellphones)', '2024-12-05 09:52:34', '2024-12-05 09:52:34'),
(48, 1, 'Good in Time Management and Project Organization', '2024-12-05 09:52:34', '2024-12-05 09:52:34'),
(57, 2, '‌Intermidiate computer literacy', '2024-12-05 13:04:22', '2024-12-05 13:04:22'),
(58, 2, '‌Microsoft Office Literate', '2024-12-05 13:04:22', '2024-12-05 13:04:22'),
(59, 2, 'Prototyping (low-fidelity) ‌UI/UX Design', '2024-12-05 13:04:22', '2024-12-05 13:04:22'),
(60, 2, '‌Strategic planning and scheduling', '2024-12-05 13:04:22', '2024-12-05 13:04:22'),
(61, 2, 'Verbal and written', '2024-12-05 13:04:22', '2024-12-05 13:04:22'),
(62, 2, 'communication Leadership Skill', '2024-12-05 13:04:22', '2024-12-05 13:04:22'),
(67, 3, 'Having a good relationship with co-workers', '2024-12-05 13:13:50', '2024-12-05 13:13:50'),
(68, 3, 'Responsible in doing task', '2024-12-05 13:13:50', '2024-12-05 13:13:50'),
(69, 3, 'Able to communicate well', '2024-12-05 13:13:50', '2024-12-05 13:13:50'),
(70, 3, 'Can work and multi-task efficiently', '2024-12-05 13:13:50', '2024-12-05 13:13:50'),
(71, 4, 'Organize person', '2024-12-05 13:22:01', '2024-12-05 13:22:01'),
(72, 4, 'Graphic Design', '2024-12-05 13:22:01', '2024-12-05 13:22:01'),
(73, 4, 'Resilience Creative thinking', '2024-12-05 13:22:01', '2024-12-05 13:22:01'),
(74, 4, 'Good in communication', '2024-12-05 13:22:01', '2024-12-05 13:22:01'),
(75, 4, 'Leadership skill', '2024-12-05 13:22:01', '2024-12-05 13:22:01'),
(80, 5, 'Good time management', '2024-12-05 13:29:48', '2024-12-05 13:29:48'),
(81, 5, 'Data Entry', '2024-12-05 13:29:49', '2024-12-05 13:29:49'),
(82, 5, 'Problem solving', '2024-12-05 13:29:49', '2024-12-05 13:29:49'),
(83, 5, 'Decision making', '2024-12-05 13:29:49', '2024-12-05 13:29:49'),
(88, 6, 'roblem solving and critical thinking', '2024-12-05 13:35:38', '2024-12-05 13:35:38'),
(89, 6, 'Flexible and goal oriented', '2024-12-05 13:35:38', '2024-12-05 13:35:38'),
(90, 6, 'Adaptability and quick learning', '2024-12-05 13:35:38', '2024-12-05 13:35:38'),
(91, 6, 'Time management and organization', '2024-12-05 13:35:38', '2024-12-05 13:35:38'),
(98, 7, 'Basic computer literacy skills', '2024-12-05 13:44:20', '2024-12-05 13:44:20'),
(99, 7, 'Proficient in Research Literacy', '2024-12-05 13:44:20', '2024-12-05 13:44:20'),
(100, 7, 'Creative Vision', '2024-12-05 13:44:20', '2024-12-05 13:44:20'),
(101, 7, 'Artistry and Design', '2024-12-05 13:44:20', '2024-12-05 13:44:20'),
(102, 7, 'Prototyping techniques', '2024-12-05 13:44:20', '2024-12-05 13:44:20'),
(103, 7, 'Calm and Focused Under Pressure', '2024-12-05 13:44:20', '2024-12-05 13:44:20'),
(109, 8, 'Leadership and Teamwork', '2024-12-05 13:51:11', '2024-12-05 13:51:11'),
(110, 8, 'Adaptability', '2024-12-05 13:51:12', '2024-12-05 13:51:12'),
(111, 8, 'Project Management and task prioritization', '2024-12-05 13:51:12', '2024-12-05 13:51:12'),
(112, 8, 'Creative', '2024-12-05 13:51:12', '2024-12-05 13:51:12'),
(113, 8, 'Attention to Detail', '2024-12-05 13:51:12', '2024-12-05 13:51:12'),
(119, 10, 'Excellent Communication Skills', '2024-12-05 14:46:09', '2024-12-05 14:46:09'),
(120, 10, 'Computer Skills', '2024-12-05 14:46:09', '2024-12-05 14:46:09'),
(121, 10, 'Web Development : HTML', '2024-12-05 14:46:09', '2024-12-05 14:46:09'),
(122, 9, '‌Technical proficiency', '2024-12-05 14:47:12', '2024-12-05 14:47:12'),
(123, 9, 'Analyzation skills', '2024-12-05 14:47:12', '2024-12-05 14:47:12'),
(124, 9, 'Problem Solving', '2024-12-05 14:47:12', '2024-12-05 14:47:12'),
(125, 9, 'Computer hardware and software', '2024-12-05 14:47:12', '2024-12-05 14:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_system`
--

CREATE TABLE `user_system` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(15) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_system`
--

INSERT INTO `user_system` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `number`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Jauie', 'Canon', 'jauiecanon', '$2y$12$BehdARbsV5xP5pOtYn9dYeNhAFS897sQwObhN18AUnCWBStsu6Fk.', 'jauiecanon@gmail.com', '09495689082', 'admin', '2024-12-05 08:39:55', '2024-12-05 08:39:55'),
(2, 'Vien Adrian', 'Adriano', 'vienadriano', '$2y$12$oj83Lvt3M8cRsb58fMArY.lRwDdyse0b9by65zUiS4u1QrgZEd882', 'hannamanalastas0613@gmail.com', '09509220131', 'admin', '2024-12-05 10:24:06', '2024-12-05 10:24:06'),
(3, 'Anthony', 'Salvador', 'anthonysalvador', '$2y$12$XLPwXebT6AUMEWonZHZMiuv/xXmDNhx8D2k9AoZGaA3wRC6R9Sjj6', 'thonybloom30@gmail.com', '09495689082', 'user', '2024-12-05 10:57:51', '2024-12-05 10:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `work_experiences`
--

CREATE TABLE `work_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `personal_info_id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `responsibilities` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_experiences`
--

INSERT INTO `work_experiences` (`id`, `personal_info_id`, `job_title`, `company_name`, `location`, `start_date`, `end_date`, `responsibilities`, `created_at`, `updated_at`) VALUES
(6, 1, 'Inventory Assistant', 'Orovet Farm', 'Paltao, Pulilan, Bulacan', '2024-06-01', '2024-08-20', '- Ensured accurate tracking and management of inventory levels to support seamless supply chain operations.\r\n\r\n- Conducted regular inventory checks and audits, minimizing discrepancies and maintaining 100% inventory accuracy.', '2024-12-05 09:52:34', '2024-12-05 09:52:34'),
(9, 2, 'Student Society on Information Technology Education Vice President', 'Baliwag Polytechnic College', 'Baliwag Bulacan', '2024-12-09', '2025-01-03', 'Responsible for overseeing academic programs, facility affairs, and educational programs.', '2024-12-05 13:04:22', '2024-12-05 13:04:22'),
(11, 4, 'Graphic Designer', 'Free Lancer', 'San Juan National High School FB Page', '2021-01-01', '2025-01-01', 'responsible for creating visually appealing and engaging content to represent the school online.', '2024-12-05 13:22:01', '2024-12-05 13:22:01'),
(17, 10, 'Youth Development Activities/Workshop', 'Baranggay Tabon', 'Tabon, Pulilan, Bulacan', '2023-08-08', '2023-09-08', 'Youth Development Activities/Workshop', '2024-12-05 14:46:09', '2024-12-05 14:46:09'),
(18, 9, 'CCTV Installer', 'Team XTIAN', 'Baliuag, Bulacan', '2018-08-08', '2025-04-06', 'Installed, tested, and maintained CCTV security systems for residential, commercial, and industrial properties. Managed wiring and installation of both analog and IP-based surveillance systems.', '2024-12-05 14:47:12', '2024-12-05 14:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `_creator_resume`
--

CREATE TABLE `_creator_resume` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `personal_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `CreatorResume` bigint(20) UNSIGNED DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `application_link` varchar(255) DEFAULT NULL,
  `link_type` varchar(255) DEFAULT NULL,
  `scheduled_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_creator_resume`
--

INSERT INTO `_creator_resume` (`id`, `personal_info_id`, `CreatorResume`, `Link`, `Status`, `application_link`, `link_type`, `scheduled_date`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'http://127.0.0.1:8000/view_cv/1', 'Completed', NULL, NULL, NULL, '2024-12-05 08:30:02', '2024-12-05 14:48:47'),
(2, 2, 3, NULL, 'Completed', NULL, NULL, NULL, '2024-12-05 12:56:04', '2024-12-05 14:48:51'),
(3, 3, 1, 'http://127.0.0.1:8000/view_cv/3', 'Applied', NULL, NULL, NULL, '2024-12-05 13:12:11', '2024-12-05 14:48:53'),
(4, 4, 1, 'http://127.0.0.1:8000/view_cv/4', 'Interview', NULL, NULL, NULL, '2024-12-05 13:22:01', '2024-12-05 14:48:56'),
(5, 5, 1, 'http://127.0.0.1:8000/view_cv/5', 'Created', NULL, NULL, NULL, '2024-12-05 13:29:14', '2024-12-05 13:29:14'),
(6, 6, 1, 'http://127.0.0.1:8000/view_cv/6', 'Rejected', NULL, NULL, NULL, '2024-12-05 13:35:20', '2024-12-05 14:49:05'),
(7, 7, 1, 'http://127.0.0.1:8000/view_cv/7', 'Interview', NULL, NULL, NULL, '2024-12-05 13:43:57', '2024-12-05 14:49:13'),
(8, 8, 1, 'http://127.0.0.1:8000/view_cv/8', 'Interview', NULL, NULL, NULL, '2024-12-05 13:50:54', '2024-12-05 14:49:17'),
(9, 9, 1, NULL, 'Applied', NULL, NULL, NULL, '2024-12-05 14:39:25', '2024-12-05 14:49:21'),
(10, 10, 1, NULL, 'Rejected', NULL, NULL, NULL, '2024-12-05 14:46:09', '2024-12-05 14:49:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant_certificate`
--
ALTER TABLE `applicant_certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicant_certificate_applicant_id_foreign` (`applicant_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_personal_info_id_foreign` (`personal_info_id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `educations_personal_info_id_foreign` (`personal_info_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_infos`
--
ALTER TABLE `personal_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_infos_email_unique` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_personal_info_id_foreign` (`personal_info_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_system`
--
ALTER TABLE `user_system`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_system_username_unique` (`username`),
  ADD UNIQUE KEY `user_system_email_unique` (`email`);

--
-- Indexes for table `work_experiences`
--
ALTER TABLE `work_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_experiences_personal_info_id_foreign` (`personal_info_id`);

--
-- Indexes for table `_creator_resume`
--
ALTER TABLE `_creator_resume`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_creator_resume_personal_info_id_foreign` (`personal_info_id`),
  ADD KEY `CreatorResume` (`CreatorResume`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant_certificate`
--
ALTER TABLE `applicant_certificate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_infos`
--
ALTER TABLE `personal_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_system`
--
ALTER TABLE `user_system`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work_experiences`
--
ALTER TABLE `work_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `_creator_resume`
--
ALTER TABLE `_creator_resume`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant_certificate`
--
ALTER TABLE `applicant_certificate`
  ADD CONSTRAINT `applicant_certificate_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `personal_infos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_personal_info_id_foreign` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_infos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `educations`
--
ALTER TABLE `educations`
  ADD CONSTRAINT `educations_personal_info_id_foreign` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_infos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_personal_info_id_foreign` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_infos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_experiences`
--
ALTER TABLE `work_experiences`
  ADD CONSTRAINT `work_experiences_personal_info_id_foreign` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_infos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `_creator_resume`
--
ALTER TABLE `_creator_resume`
  ADD CONSTRAINT `_creator_resume_ibfk_1` FOREIGN KEY (`CreatorResume`) REFERENCES `user_system` (`id`),
  ADD CONSTRAINT `_creator_resume_personal_info_id_foreign` FOREIGN KEY (`personal_info_id`) REFERENCES `personal_infos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
