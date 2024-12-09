-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 02:13 PM
-- Server version: 10.6.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u133931126_weemax`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `addressId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `addressLineOne` text NOT NULL,
  `addressLineTwo` text DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipCode` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `isTn` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`addressId`, `userId`, `name`, `addressLineOne`, `addressLineTwo`, `city`, `state`, `zipCode`, `phone`, `isTn`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore', NULL, 'COIMBATORE', 'Tamil Nadu', '641659', '8870354097', 1, 'active', '2023-07-27 12:57:34', '2023-07-27 12:57:34'),
(2, 2, 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore', NULL, 'COIMBATORE', 'Tamil Nadu', '641659', '8870354097', 1, 'active', '2023-07-27 13:04:01', '2023-07-27 13:04:01'),
(3, 3, 'Preetham ', 'L-54/2 second floor,kootapalli colony tiruchengode ', NULL, 'Tiruchengode ', 'Tamilnadu ', '637214', '6381469846', 1, 'active', '2023-07-27 13:24:57', '2023-07-27 13:24:57'),
(4, 4, 'Vignesh Arivazhagan', '6/95/3 , kollupalayam , bharathiyar nagar , eb office road , Coimbatore 641659', NULL, 'Coimbatore', 'Tamil Nadu', '641659', '9789413685', 1, 'active', '2023-07-27 13:54:28', '2023-07-27 13:54:28'),
(5, 8, 'Thilak Rs', '46/1 Gandhiji Street, Opposite To Carmel School', 'Kollampalayam, Karur Road', 'Erode', 'Tamil Nadu', '638002', '7010908103', 1, 'active', '2023-07-27 14:04:47', '2023-07-27 14:04:47'),
(6, 7, 'Sanjiv v', '136/10B, ganapathy nagar ', 'Near mayavan malihi', 'Dharapuram ', 'Tamilnadu ', '638657', '9843959919', 1, 'active', '2023-07-27 14:05:25', '2023-07-27 14:05:25'),
(7, 6, 'Nimrukthi Senthilkumar', 'L-54/2 second floor,Kootapalli colony, near sana bakery,', 'kootapalli', 'Tiruchengode', 'Tamil Nadu', '637214', '9361874148', 1, 'active', '2023-07-27 14:15:20', '2023-07-27 14:15:20'),
(8, 6, 'Nimrukthi Senthilkumar', 'L-54/2 second floor,Kootapalli colony, near sana bakery,', 'kootapalli', 'Tiruchengode', 'Tamil Nadu', '637214', '9361874148', 1, 'active', '2023-07-27 14:15:20', '2023-07-27 14:15:20'),
(9, 11, 'Dheshapriyan', '263/7b Sivanesan complex ', 'Rice mill road Moolapalayam', 'Erode', 'Tamil nadu', '638002', '9994447204', 1, 'active', '2023-07-27 14:24:13', '2023-07-27 14:24:13'),
(10, 11, 'Dheshapriyan', '263/7b Sivanesan complex ', 'Rice mill road Moolapalayam', 'Erode', 'Tamil nadu', '638002', '9994447204', 1, 'active', '2023-07-27 14:24:13', '2023-07-27 14:24:13'),
(11, 9, 'Poomalai Ahilan', 'WHP hostel ', 'OP main road, Annamalai nagar', 'Chidambaram ', 'Tamilnadu ', '608002', '6383677721', 1, 'active', '2023-07-27 14:32:13', '2023-07-27 14:32:13'),
(12, 14, 'Naveen Prabu S', '3/134, Kittampalayam , Karumathampatti', NULL, 'Coimbatore', 'Tamil Nadu', '641659', '9345622794', 1, 'active', '2023-07-27 14:45:33', '2023-07-27 14:45:33'),
(13, 21, 'Nalini', '136/10b Ganapathi Nagar ', 'Near Mayavan malihi', 'Dharapuram ', 'tamilnadu', '638657', '9843406636', 1, 'active', '2023-07-27 16:34:11', '2023-07-27 16:34:11'),
(14, 24, 'Mohamed Tariq', '27 Manjunatha residency, 2nd Cross Saptagiri Layout, channasandra, whitefield', NULL, 'Bengaluru', 'KARNATAKA', '560067', '7092339606', 0, 'active', '2023-07-27 16:45:27', '2023-07-27 16:45:27'),
(15, 25, 'Surya', '3/250d, Karuveppampatti', NULL, 'Tiruchengode', 'TamilNadu', '637211', '9842754367', 1, 'active', '2023-07-27 17:21:39', '2023-07-27 17:21:39'),
(16, 9, 'Poomalai Ahilan', '186/4, Kavin Harsha complex, 2nd Street ', 'Netaji nagr, Trichy road ', 'Namakkal', 'Tamilnadu ', '637001', '6383677721', 1, 'active', '2023-07-27 18:03:54', '2023-07-27 18:03:54'),
(17, 27, 'Karthikeyan V', '4/276-8-1, Gandhi Nagar, Thekkalur, Avinashi ', NULL, 'Tiruppur', 'Tamil Nadu', '641654', '9344439060', 1, 'active', '2023-07-27 18:36:09', '2023-07-27 18:36:09'),
(18, 27, 'Karthikeyan V', '4/276-8-1, Gandhi Nagar, Thekkalur, Avinashi ', NULL, 'Tiruppur', 'Tamil Nadu', '641654', '9344439060', 1, 'active', '2023-07-27 18:36:10', '2023-07-27 18:36:10'),
(19, 44, 'SARAVANAKUMAR S', 'SERAMPALAYAM, MUTHUR', 'KANGEYAM TALUK, TIRUPUR DISTRICT', 'TIRUPUR', 'TAMILNADU', '638105', '8838757171', 1, 'active', '2023-07-28 06:24:01', '2023-07-28 06:24:01'),
(20, 47, 'Kaviya', 'No 48 new magazine road ', 'Vyasapadi ', 'Chennai', 'Tamilnadu ', '600039', '9940076493', 1, 'active', '2023-07-28 07:28:16', '2023-07-28 07:28:16'),
(21, 13, 'R Gunal', '32,Sowdamman Kovil Street', 'NN Pettai Street', 'Dharapuram,Tiruppur', 'TamilNadu', '638656', '9345710012', 1, 'active', '2023-07-28 08:41:08', '2023-07-28 08:41:08'),
(22, 49, 'Hemalatha M', '13, srinagar colony, thirunagar extension', 'Srinivasapuram', 'Thanjavur', 'Tamilnadu', '613009', '7418884563', 1, 'active', '2023-07-28 08:48:56', '2023-07-28 08:48:56'),
(23, 49, 'Hemalatha M', '13, srinagar colony, thirunagar extension', 'Srinivasapuram', 'Thanjavur', 'Tamilnadu', '613009', '7418884563', 1, 'active', '2023-07-28 08:48:56', '2023-07-28 08:48:56'),
(24, 29, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-28 09:23:35', '2023-07-28 09:23:35'),
(25, 29, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-28 09:23:49', '2023-07-28 09:23:49'),
(26, 29, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-28 09:24:26', '2023-07-28 09:24:26'),
(27, 29, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-28 09:24:28', '2023-07-28 09:24:28'),
(28, 57, 'Akash', '48, J S garden, 3rd street, Nallur, Tirupur. ', NULL, 'Tirupur', 'Tamilnadu', '641606', '7708012111', 1, 'active', '2023-07-28 09:59:46', '2023-07-28 09:59:46'),
(29, 57, 'Akash', '48, J S garden, 3rd street, Nallur, Tirupur. ', NULL, 'Tirupur', 'Tamilnadu', '641606', '7708012111', 1, 'active', '2023-07-28 09:59:47', '2023-07-28 09:59:47'),
(30, 76, 'Arivu', '29/40 kannan nagar', 'Indian Bank opposite street', 'Dharapuram', 'Tamil nadu', '638656', '9047272600', 1, 'active', '2023-07-28 15:33:18', '2023-07-28 15:33:18'),
(31, 72, 'Joshika.S', 'No.18,Sri Sakthi Nagar, Near parambariyam hotel,Thondamuthur road, Coimbatore -46', NULL, 'Coimbatore ', 'Tamilnadu ', '641046', '7598243340', 1, 'active', '2023-07-28 16:42:21', '2023-07-28 16:42:21'),
(32, 10, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-29 06:43:07', '2023-07-29 06:43:07'),
(33, 31, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-29 10:37:10', '2023-07-29 10:37:10'),
(34, 98, 'Bhuvaneshwari', '3-1-9 maravanpalayathankadu', 'Tiruchengode (taluk) Namakkal (district)', 'Sankari. Icl town', 'Tamil Nadu', '637303', '9360152017', 1, 'removed', '2023-07-30 05:58:32', '2023-07-30 05:59:32'),
(35, 98, 'Bhuvaneshwari', '3-1-9 maravanpalayathankadu', 'Tiruchengode (taluk) Namakkal (district)', 'Sankari. Icl town', 'Tamil Nadu', '637303', '9360152017', 1, 'active', '2023-07-30 05:59:48', '2023-07-30 05:59:48'),
(36, 98, 'Bhuvaneshwari', '3-1-9 maravanpalayathankadu', 'Tiruchengode (taluk) Namakkal (district)', 'Sankari. Icl town', 'Tamil Nadu', '637303', '9360152017', 1, 'active', '2023-07-30 06:00:13', '2023-07-30 06:00:13'),
(37, 100, 'Raja', '2/73, pillayar Kovil street, Ramachiyamapalayam', 'Somanur ', 'Coimbatore', 'Tamil Nadu ', '641668', '8973773284', 1, 'active', '2023-07-30 11:52:10', '2023-07-30 11:52:10'),
(38, 101, 'Divya ', 'No:1, kumaran Street, ayappa Nagar, ayapakkam, chennai - 600 077', NULL, 'Chennai ', 'Tamil Nadu ', '600077', '9445355733', 1, 'active', '2023-07-30 14:40:33', '2023-07-30 14:40:33'),
(39, 105, 'Praveen ', '1/159, Valluvar Colony, North Soorankudy, Nagercoil, kanniyakumari, 629501', NULL, 'Nagercoil ', 'Tamilnadu ', '629501', '9894500195', 1, 'active', '2023-07-31 08:37:03', '2023-07-31 08:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `adminId` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`adminId`, `name`, `email`, `password`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'admin@gmail.com', '$2b$12$yFJQn0yHa/anWzdvbPChVOxjGMLaGUazekUnr8JR2uCFelS07DpJO', 'active', '2023-07-11 15:33:14', '2023-07-11 15:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `Basket`
--

CREATE TABLE `Basket` (
  `basketId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `inventoryId` bigint(20) NOT NULL,
  `quantity` int(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Basket`
--

INSERT INTO `Basket` (`basketId`, `userId`, `productId`, `inventoryId`, `quantity`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 39, 132, 1, 'removed', '2023-07-27 12:57:18', '2023-07-27 12:58:13'),
(2, 2, 42, 149, 1, 'removed', '2023-07-27 13:02:59', '2023-07-27 13:07:27'),
(3, 3, 41, 143, 1, 'removed', '2023-07-27 13:42:33', '2023-07-27 13:44:42'),
(4, 4, 38, 127, 1, 'removed', '2023-07-27 13:53:53', '2023-07-27 14:35:44'),
(5, 7, 101, 389, 1, 'removed', '2023-07-27 14:02:05', '2023-07-27 14:06:21'),
(6, 8, 45, 161, 1, 'removed', '2023-07-27 14:04:08', '2023-07-27 14:12:32'),
(7, 6, 84, 342, 1, 'active', '2023-07-27 14:09:36', '2023-07-27 14:09:36'),
(8, 8, 45, 163, 1, 'removed', '2023-07-27 14:12:28', '2023-07-27 14:15:46'),
(9, 11, 40, 137, 1, 'active', '2023-07-27 14:22:47', '2023-07-27 14:22:47'),
(10, 13, 15, 44, 1, 'removed', '2023-07-27 14:25:55', '2023-07-28 08:45:54'),
(11, 9, 41, 142, 1, 'removed', '2023-07-27 14:29:04', '2023-07-27 14:36:48'),
(12, 14, 38, 129, 1, 'removed', '2023-07-27 14:44:00', '2023-07-27 14:46:41'),
(13, 21, 63, 253, 1, 'removed', '2023-07-27 16:33:00', '2023-07-27 16:36:13'),
(14, 24, 40, 137, 1, 'removed', '2023-07-27 16:44:17', '2023-07-27 16:46:34'),
(15, 25, 15, 42, 1, 'active', '2023-07-27 17:19:57', '2023-07-27 17:19:57'),
(16, 9, 41, 142, 1, 'removed', '2023-07-27 17:57:25', '2023-07-27 18:06:28'),
(17, 27, 42, 146, 1, 'active', '2023-07-27 18:28:06', '2023-07-27 18:28:06'),
(18, 1, 11, 25, 1, 'removed', '2023-07-27 21:35:41', '2023-07-27 21:39:14'),
(19, 1, 99, 371, 1, 'removed', '2023-07-27 21:39:10', '2023-07-27 21:44:11'),
(20, 32, 59, 232, 1, 'active', '2023-07-28 00:33:20', '2023-07-28 00:33:20'),
(21, 32, 48, 177, 1, 'removed', '2023-07-28 00:33:44', '2023-07-28 00:34:03'),
(22, 32, 48, 178, 1, 'active', '2023-07-28 00:34:00', '2023-07-28 00:34:00'),
(23, 32, 57, 225, 1, 'active', '2023-07-28 00:35:08', '2023-07-28 00:35:08'),
(24, 32, 12, 30, 1, 'active', '2023-07-28 00:36:39', '2023-07-28 00:36:39'),
(25, 44, 16, 48, 1, 'active', '2023-07-28 06:23:06', '2023-07-28 06:23:06'),
(26, 47, 75, 306, 1, 'active', '2023-07-28 07:27:13', '2023-07-28 07:27:13'),
(27, 13, 61, 241, 1, 'removed', '2023-07-28 08:35:47', '2023-07-28 08:45:54'),
(28, 13, 39, 133, 1, 'removed', '2023-07-28 08:37:43', '2023-07-28 08:45:54'),
(29, 13, 22, 79, 1, 'removed', '2023-07-28 08:39:46', '2023-07-28 08:45:54'),
(30, 7, 101, 389, 1, 'removed', '2023-07-28 08:44:54', '2023-07-28 17:20:25'),
(31, 49, 57, 221, 1, 'active', '2023-07-28 08:47:39', '2023-07-28 08:47:39'),
(32, 48, 45, 162, 1, 'active', '2023-07-28 08:56:24', '2023-07-28 08:56:24'),
(33, 50, 20, 67, 1, 'removed', '2023-07-28 09:34:22', '2023-07-28 09:37:43'),
(34, 14, 15, 41, 1, 'active', '2023-07-28 09:36:03', '2023-07-28 09:36:03'),
(35, 57, 38, 126, 1, 'removed', '2023-07-28 09:57:45', '2023-07-28 10:03:04'),
(36, 14, 11, 390, 1, 'removed', '2023-07-28 14:00:29', '2023-07-28 14:00:34'),
(37, 2, 20, 67, 1, 'removed', '2023-07-28 14:33:37', '2023-07-28 14:33:48'),
(38, 78, 102, 387, 1, 'active', '2023-07-28 15:14:29', '2023-07-28 15:14:29'),
(39, 78, 45, 164, 1, 'active', '2023-07-28 15:16:06', '2023-07-28 15:16:06'),
(40, 76, 11, 402, 1, 'removed', '2023-07-28 15:19:24', '2023-07-28 15:34:25'),
(41, 76, 42, 148, 1, 'removed', '2023-07-28 15:21:48', '2023-07-28 15:34:25'),
(42, 7, 77, 403, 1, 'removed', '2023-07-28 17:20:23', '2023-07-30 19:16:25'),
(43, 72, 77, 403, 1, 'removed', '2023-07-28 17:22:41', '2023-07-28 17:23:14'),
(44, 44, 12, 395, 1, 'removed', '2023-07-29 00:17:58', '2023-07-29 00:18:03'),
(45, 10, 11, 390, 1, 'active', '2023-07-29 06:42:50', '2023-07-29 06:43:34'),
(46, 10, 12, 395, 1, 'active', '2023-07-29 10:35:40', '2023-07-29 10:35:40'),
(47, 31, 11, 390, 1, 'removed', '2023-07-29 10:36:51', '2023-07-29 10:38:19'),
(48, 31, 12, 395, 1, 'removed', '2023-07-29 10:36:59', '2023-07-29 10:38:19'),
(49, 97, 48, 176, 1, 'active', '2023-07-30 05:40:46', '2023-07-30 05:40:46'),
(50, 98, 68, 276, 1, 'active', '2023-07-30 06:08:12', '2023-07-30 06:08:12'),
(51, 100, 16, 49, 1, 'removed', '2023-07-30 11:47:14', '2023-07-30 12:00:54'),
(52, 100, 16, 50, 1, 'removed', '2023-07-30 11:47:28', '2023-07-30 11:47:55'),
(53, 2, 11, 390, 1, 'removed', '2023-07-30 11:53:52', '2023-07-30 18:42:29'),
(54, 7, 12, 395, 1, 'removed', '2023-07-30 11:57:15', '2023-07-30 19:16:27'),
(55, 7, 15, 41, 1, 'removed', '2023-07-30 11:57:58', '2023-07-30 19:16:30'),
(56, 100, 12, 398, 1, 'active', '2023-07-30 12:34:19', '2023-07-30 12:34:19'),
(57, 101, 78, 312, 1, 'active', '2023-07-30 14:38:40', '2023-07-30 14:38:40'),
(58, 10, 39, 131, 1, 'active', '2023-07-30 19:57:08', '2023-07-30 19:57:08'),
(59, 31, 39, 131, 1, 'removed', '2023-07-30 19:57:56', '2023-07-30 20:02:03'),
(60, 31, 40, 136, 1, 'removed', '2023-07-30 19:58:11', '2023-07-30 20:02:03'),
(61, 31, 11, 390, 1, 'removed', '2023-07-31 05:44:14', '2023-07-31 05:45:42'),
(62, 31, 12, 395, 1, 'removed', '2023-07-31 05:44:23', '2023-07-31 05:45:42'),
(63, 7, 29, 115, 1, 'removed', '2023-07-31 07:38:46', '2023-07-31 07:39:30'),
(64, 105, 103, 386, 1, 'active', '2023-07-31 08:35:23', '2023-07-31 08:35:23'),
(65, 7, 40, 136, 2, 'active', '2023-07-31 19:34:19', '2023-07-31 19:34:32'),
(66, 31, 11, 390, 1, 'removed', '2023-08-01 12:03:29', '2023-08-01 12:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `CancelOrder`
--

CREATE TABLE `CancelOrder` (
  `cancelOrderId` bigint(20) NOT NULL,
  `orderId` bigint(20) NOT NULL,
  `orderItemId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `reason` text NOT NULL,
  `refundMethod` varchar(15) NOT NULL DEFAULT 'wallet' COMMENT 'wallet, bank',
  `refundData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`refundData`)),
  `status` varchar(50) NOT NULL DEFAULT 'requested' COMMENT 'requested, initiated, credited',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ContactMessage`
--

CREATE TABLE `ContactMessage` (
  `messageId` bigint(20) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `comment` text DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'submitted' COMMENT 'submitted, resolved, pending',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ForgotPasswordToken`
--

CREATE TABLE `ForgotPasswordToken` (
  `id` bigint(20) NOT NULL,
  `account` varchar(50) NOT NULL,
  `type` varchar(25) NOT NULL COMMENT 'email,phone',
  `token` longtext NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'pending,expired,used',
  `expAt` varchar(50) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ForgotPasswordToken`
--

INSERT INTO `ForgotPasswordToken` (`id`, `account`, `type`, `token`, `status`, `expAt`, `createdAt`, `updatedAt`) VALUES
(1, 'yyugi64@gmail.com', 'email', '7c90e653963e13dd5469d31b0610215f7e79a9a0c14e590c89abd570da546b931ce575fc-00e8-40b2-822c-78aef1b76cd1', 'used', '2023-07-27 22:45:19', '2023-07-27 22:35:19', '2023-07-27 22:37:04'),
(2, 'saipoongodik2012@gmail.com', 'email', '00fc1931605a7f66de931d117a747d96d1f46a2a4f5eb99afcb697f06c3093e9b7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 03:38:12', '2023-07-28 03:28:12', '2023-07-28 03:29:05'),
(3, 'naveenasrik@gmail.com', 'email', 'e14c00797673e5657eefbb6b698c3b8ad4420e84ffd779429362a043b70f1862b7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 06:52:04', '2023-07-28 06:42:04', '2023-07-28 06:43:11'),
(4, 'akashthozhan@gmail.com', 'email', '95d283aeb81e091b32b6c8ca77bc4cfdf5b5e38c483ef2808aaa491b03b1f593b7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 10:02:22', '2023-07-28 09:52:22', '2023-07-28 09:53:07'),
(5, 'bharath21official@gmail.com', 'email', '482d7464a6a6a1ad66d49285449fb1197c910280b8e236c07d7dc9133703528db7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 10:30:11', '2023-07-28 10:20:11', '2023-07-28 10:20:41'),
(6, 'Nithinnking93@gmail.com', 'email', '6b2330958722e580b1f41eaa0f3e66e34340d85a37d8ae1ee762d32a2266e842b7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 15:19:11', '2023-07-28 15:09:11', '2023-07-28 15:10:10'),
(7, 'Nithinnking93@gmail.com', 'email', '5bf39caa5cfbd920ea792eeb1f048db510b2ddcf36088f2d4a827afb89068fc8b7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 15:21:07', '2023-07-28 15:11:07', '2023-07-28 15:11:53'),
(8, 'nilegna.priya@gmail.com', 'email', 'e8968597f9252176fed1f76a518e40d23b0f0c1649f5c8f7f06e93b2c7f0d05b51682e7c-c600-4fbe-8356-ef30c05cede1', 'pending', '2023-07-29 02:35:56', '2023-07-29 02:25:56', '2023-07-29 02:25:56'),
(9, 'nilegna.priya@gmail.com', 'email', '8db488e61d249d9f09ea166541b7bfe9edb6976f769d41ac9c9b1d8f9be1714151682e7c-c600-4fbe-8356-ef30c05cede1', 'used', '2023-07-29 02:35:57', '2023-07-29 02:25:57', '2023-07-29 02:26:33'),
(10, 'nilegna.priya@gmail.com', 'email', '77dff49ee876629717d0767063c7a78cf43825bf417f3be2007c75fa6870431b51682e7c-c600-4fbe-8356-ef30c05cede1', 'pending', '2023-07-29 02:37:07', '2023-07-29 02:27:07', '2023-07-29 02:27:07'),
(11, 'yyugi64@gmail.com', 'email', 'da9d7c3aa7869e9709da96a890cb6ebe7f9aa0bc935c97de19da7704845e69b68b7b8f59-e8ae-430d-aebd-882650c450bd', 'used', '2023-07-29 16:09:47', '2023-07-29 10:29:55', '2023-07-29 10:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `Kyc`
--

CREATE TABLE `Kyc` (
  `kycId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `bankHolderName` varchar(50) NOT NULL,
  `bankName` varchar(50) NOT NULL,
  `bankIfscCode` varchar(50) NOT NULL,
  `bankAccNumber` varchar(50) NOT NULL,
  `aadharPhotoFront` text NOT NULL,
  `aadharPhotoBack` text NOT NULL,
  `panPhoto` text NOT NULL,
  `passbookPhoto` text NOT NULL,
  `message` longtext DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'pending' COMMENT 'pending,approved,canceled',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Level`
--

CREATE TABLE `Level` (
  `levelId` bigint(20) NOT NULL,
  `levelValue` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Level`
--

INSERT INTO `Level` (`levelId`, `levelValue`) VALUES
(1, 25),
(2, 5),
(3, 4),
(4, 3),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Otp`
--

CREATE TABLE `Otp` (
  `otpId` bigint(20) NOT NULL,
  `to` varchar(50) NOT NULL,
  `type` varchar(25) NOT NULL COMMENT 'email,sms',
  `code` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'pending,used',
  `expAt` varchar(50) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Otp`
--

INSERT INTO `Otp` (`otpId`, `to`, `type`, `code`, `status`, `expAt`, `createdAt`, `updatedAt`) VALUES
(1, 'weemaxecom@gmail.com', 'email', '011921', 'used', '2023-07-27 13:06:39', '2023-07-27 12:56:39', '2023-07-27 12:56:53'),
(2, 'sakthiganesh533@gmail.com', 'email', '041471', 'used', '2023-07-27 13:09:51', '2023-07-27 12:59:52', '2023-07-27 13:00:08'),
(3, 'preethamsenthilkumar2012@gmail.com', 'email', '836994', 'used', '2023-07-27 13:29:47', '2023-07-27 13:19:47', '2023-07-27 13:20:15'),
(4, 'vignesharivazhagan22@gmail.com', 'email', '360255', 'used', '2023-07-27 13:49:07', '2023-07-27 13:39:07', '2023-07-27 13:39:34'),
(5, 'nagukumar852@gmail.com', 'email', '057061', 'used', '2023-07-27 13:59:09', '2023-07-27 13:49:10', '2023-07-27 13:49:34'),
(6, 'nimrukthisenthilkumar001@gmail.com', 'email', '482253', 'used', '2023-07-27 14:00:44', '2023-07-27 13:50:44', '2023-07-27 13:51:17'),
(7, 'sanjivdpm2003@gmail.com', 'email', '575651', 'used', '2023-07-27 14:02:53', '2023-07-27 13:52:53', '2023-07-27 13:53:17'),
(8, 'thilaksenthilkumar16@gmail.com', 'email', '338188', 'used', '2023-07-27 14:05:45', '2023-07-27 13:55:45', '2023-07-27 13:57:27'),
(9, 'thilaksenthilkumar16@gmail.com', 'email', '310599', 'pending', '2023-07-27 14:06:16', '2023-07-27 13:56:16', '2023-07-27 13:56:16'),
(10, 'poomalahilan@gmail.com', 'email', '429785', 'used', '2023-07-27 14:17:55', '2023-07-27 14:07:55', '2023-07-27 14:08:22'),
(11, 'yyugi64@gmail.com', 'email', '584628', 'used', '2023-07-27 14:24:26', '2023-07-27 14:14:26', '2023-07-27 14:14:43'),
(12, 'dhesha77@gmail.com', 'email', '306115', 'used', '2023-07-27 14:26:21', '2023-07-27 14:16:21', '2023-07-27 14:17:06'),
(13, 'arunkumardhoni483@gmail.com', 'email', '012956', 'used', '2023-07-27 14:33:40', '2023-07-27 14:23:41', '2023-07-27 14:24:24'),
(14, 'gunalrajarathinam11@gmail.com', 'email', '151709', 'used', '2023-07-27 14:34:07', '2023-07-27 14:24:07', '2023-07-27 14:24:22'),
(15, 'naveenprabu21@gmail.com', 'email', '468215', 'used', '2023-07-27 14:48:43', '2023-07-27 14:38:43', '2023-07-27 14:39:09'),
(16, 'nowfilkaadharmaideennasarali@gmail.com', 'email', '593578', 'used', '2023-07-27 14:53:07', '2023-07-27 14:43:07', '2023-07-27 14:43:33'),
(17, 'hariprasanna082@gmail.com', 'email', '818868', 'used', '2023-07-27 14:53:26', '2023-07-27 14:43:26', '2023-07-27 14:43:52'),
(18, 'darshinibalu0@gmail.com', 'email', '603386', 'used', '2023-07-27 14:57:42', '2023-07-27 14:47:42', '2023-07-27 14:48:15'),
(19, 'manojkumars27062000@gmail.com', 'email', '803762', 'used', '2023-07-27 15:00:14', '2023-07-27 14:50:15', '2023-07-27 14:51:28'),
(20, 'hariharan112k@gmail.com', 'email', '637023', 'used', '2023-07-27 15:40:39', '2023-07-27 15:30:39', '2023-07-27 15:31:24'),
(21, 'er.rajkumartkn@gmail.com', 'email', '678229', 'used', '2023-07-27 16:16:02', '2023-07-27 16:06:02', '2023-07-27 16:06:26'),
(22, 'vadivelunalinidpm@gmail.com', 'email', '852947', 'used', '2023-07-27 16:30:31', '2023-07-27 16:20:31', '2023-07-27 16:21:10'),
(23, 'vadarsana@gmail.com', 'email', '094539', 'pending', '2023-07-27 16:35:24', '2023-07-27 16:25:24', '2023-07-27 16:25:24'),
(24, 'elakkiyavaradharajan20@gmail.com', 'email', '798692', 'used', '2023-07-27 16:35:54', '2023-07-27 16:25:54', '2023-07-27 16:27:34'),
(25, 'vadarsana@gmail.com', 'email', '785929', 'pending', '2023-07-27 16:42:20', '2023-07-27 16:32:20', '2023-07-27 16:32:20'),
(26, 'vadarsana@gmail.com', 'email', '245677', 'pending', '2023-07-27 16:42:28', '2023-07-27 16:32:28', '2023-07-27 16:32:28'),
(27, 'vadarsana@gmail.com', 'email', '197572', 'pending', '2023-07-27 16:42:44', '2023-07-27 16:32:45', '2023-07-27 16:32:45'),
(28, 'vadarsana@gmail.com', 'email', '200329', 'pending', '2023-07-27 16:44:10', '2023-07-27 16:34:10', '2023-07-27 16:34:10'),
(29, 'vadarsana@gmail.com', 'email', '638436', 'pending', '2023-07-27 16:44:14', '2023-07-27 16:34:14', '2023-07-27 16:34:14'),
(30, 'vadarsana@gmail.com', 'email', '041222', 'pending', '2023-07-27 16:44:18', '2023-07-27 16:34:18', '2023-07-27 16:34:18'),
(31, 'vadarsana@gmail.com', 'email', '467026', 'pending', '2023-07-27 16:44:19', '2023-07-27 16:34:19', '2023-07-27 16:34:19'),
(32, 'vadarsana@gmail.com', 'email', '531956', 'pending', '2023-07-27 16:44:21', '2023-07-27 16:34:21', '2023-07-27 16:34:21'),
(33, 'vadarsana@gmail.com', 'email', '339798', 'pending', '2023-07-27 16:44:21', '2023-07-27 16:34:21', '2023-07-27 16:34:21'),
(34, 'vadarsana@gmail.com', 'email', '496721', 'pending', '2023-07-27 16:44:22', '2023-07-27 16:34:22', '2023-07-27 16:34:22'),
(35, 'mohamed.tariq46@gmail.com', 'email', '779613', 'used', '2023-07-27 16:50:38', '2023-07-27 16:40:38', '2023-07-27 16:40:59'),
(36, 'suryarajavlt@gmail.com', 'email', '808765', 'pending', '2023-07-27 17:27:04', '2023-07-27 17:17:04', '2023-07-27 17:17:04'),
(37, 'suryarajavlt@gmail.com', 'email', '294690', 'used', '2023-07-27 17:27:24', '2023-07-27 17:17:25', '2023-07-27 17:17:59'),
(38, 'rajasusai914@gmail.com', 'email', '235330', 'used', '2023-07-27 17:59:59', '2023-07-27 17:49:59', '2023-07-27 17:50:34'),
(39, 'karthikeyanvenkatachalapathi5@gmail.com', 'email', '542026', 'used', '2023-07-27 18:31:31', '2023-07-27 18:21:31', '2023-07-27 18:22:09'),
(40, 'bharathjero2705@gmail.com', 'email', '736911', 'pending', '2023-07-27 22:28:37', '2023-07-27 22:18:37', '2023-07-27 22:18:37'),
(41, 'bharathjero2705@gmail.com', 'email', '624069', 'used', '2023-07-27 22:29:28', '2023-07-27 22:19:28', '2023-07-27 22:19:54'),
(42, 'yugendiran2829@gmail.com', 'email', '678567', 'used', '2023-07-27 22:48:13', '2023-07-27 22:38:13', '2023-07-27 22:42:35'),
(43, 'golspoh128@gmail.com', 'email', '381405', 'pending', '2023-07-27 22:53:49', '2023-07-27 22:43:49', '2023-07-27 22:43:49'),
(44, 'golspoh128@gmail.com', 'email', '993834', 'used', '2023-07-27 22:58:17', '2023-07-27 22:48:17', '2023-07-27 22:48:35'),
(45, 'thrishavengaiah823@gmail.com', 'email', '894246', 'used', '2023-07-28 00:40:07', '2023-07-28 00:30:07', '2023-07-28 00:30:36'),
(46, 'sathyathirumurugan2@gmail.com', 'email', '190914', 'used', '2023-07-28 00:42:54', '2023-07-28 00:32:54', '2023-07-28 00:33:42'),
(47, 'sathyathirumurugan2@gmail.com', 'email', '635776', 'pending', '2023-07-28 00:43:10', '2023-07-28 00:33:10', '2023-07-28 00:33:10'),
(48, 'bhuvisai21@gmail.com', 'email', '205462', 'used', '2023-07-28 02:02:22', '2023-07-28 01:52:22', '2023-07-28 01:52:47'),
(49, 'kavin7254@gmail.com', 'email', '316855', 'used', '2023-07-28 02:45:44', '2023-07-28 02:35:45', '2023-07-28 02:36:14'),
(50, 'sukeeswer3069@gmail.com', 'email', '182726', 'used', '2023-07-28 03:26:03', '2023-07-28 03:16:04', '2023-07-28 03:16:40'),
(51, 'saipoongodik2012@gmail.com', 'email', '708521', 'used', '2023-07-28 03:36:26', '2023-07-28 03:26:26', '2023-07-28 03:27:09'),
(52, 'mdeepakkumar0301@gmail.com', 'email', '769113', 'used', '2023-07-28 04:06:29', '2023-07-28 03:56:29', '2023-07-28 03:58:24'),
(53, 'sakthiveldb95@gmail.com', 'email', '059151', 'used', '2023-07-28 04:10:02', '2023-07-28 04:00:02', '2023-07-28 04:00:32'),
(54, 'gokultrz16@gmail.com', 'email', '553554', 'used', '2023-07-28 04:44:33', '2023-07-28 04:34:33', '2023-07-28 04:35:13'),
(55, 'svigneshtn29@gmail.com', 'email', '948508', 'used', '2023-07-28 05:42:28', '2023-07-28 05:32:28', '2023-07-28 05:32:57'),
(56, 'ananddn777@gmail.com', 'email', '054298', 'used', '2023-07-28 06:16:10', '2023-07-28 06:06:10', '2023-07-28 06:06:48'),
(57, 'harishjude@gmail.com', 'email', '846594', 'used', '2023-07-28 06:16:21', '2023-07-28 06:06:21', '2023-07-28 06:06:53'),
(58, 'saravanakumar022@gmail.com', 'email', '009865', 'used', '2023-07-28 06:30:00', '2023-07-28 06:20:00', '2023-07-28 06:21:55'),
(59, 'vyshuvenkatesan@gmail.com', 'email', '314225', 'used', '2023-07-28 06:48:44', '2023-07-28 06:38:44', '2023-07-28 06:39:08'),
(60, 'naveenasrik@gmail.com', 'email', '517353', 'used', '2023-07-28 06:50:10', '2023-07-28 06:40:10', '2023-07-28 06:40:43'),
(61, 'kaviyashankar2828@gmail.com', 'email', '908391', 'used', '2023-07-28 07:33:40', '2023-07-28 07:23:40', '2023-07-28 07:24:29'),
(62, 'manojmistymac@gmail.com', 'email', '587041', 'pending', '2023-07-28 08:49:04', '2023-07-28 08:39:04', '2023-07-28 08:39:04'),
(63, 'manojmistymac@gmail.com', 'email', '239876', 'pending', '2023-07-28 08:50:14', '2023-07-28 08:40:14', '2023-07-28 08:40:14'),
(64, 'manojmistymac@gmail.com', 'email', '647621', 'used', '2023-07-28 08:50:15', '2023-07-28 08:40:15', '2023-07-28 08:42:56'),
(65, 'hemamathi1902@gmail.com', 'email', '040934', 'used', '2023-07-28 08:54:53', '2023-07-28 08:44:53', '2023-07-28 08:45:17'),
(66, 'shankarishanmugam23@gmail.com', 'email', '685968', 'used', '2023-07-28 09:14:51', '2023-07-28 09:04:51', '2023-07-28 09:06:00'),
(67, 'geetha4771@gmail.com', 'email', '454726', 'pending', '2023-07-28 09:37:12', '2023-07-28 09:27:12', '2023-07-28 09:27:12'),
(68, 'srinathr20bct042@gmail.com', 'email', '342952', 'used', '2023-07-28 09:41:03', '2023-07-28 09:31:03', '2023-07-28 09:31:56'),
(69, 'mahajayanthmanoharan@gmail.com', 'email', '627493', 'used', '2023-07-28 09:41:11', '2023-07-28 09:31:11', '2023-07-28 09:31:45'),
(70, 'itsdkarthickhere@gmail.com', 'email', '310456', 'used', '2023-07-28 09:41:16', '2023-07-28 09:31:16', '2023-07-28 09:32:08'),
(71, 'sanjaychandran2307@gmail.com', 'email', '691157', 'pending', '2023-07-28 09:46:07', '2023-07-28 09:36:07', '2023-07-28 09:36:07'),
(72, 'sanjaychandran2307@gmail.com', 'email', '860811', 'used', '2023-07-28 09:46:24', '2023-07-28 09:36:24', '2023-07-28 09:38:04'),
(73, 'sanjaychandran2307@gmail.com', 'email', '913042', 'used', '2023-07-28 09:48:11', '2023-07-28 09:38:11', '2023-07-28 09:38:28'),
(74, 'manishaakrishnavel@gmail.com', 'email', '091587', 'used', '2023-07-28 09:57:19', '2023-07-28 09:47:20', '2023-07-28 09:48:16'),
(75, 'akashthozhan@gmail.com', 'email', '605197', 'used', '2023-07-28 10:00:33', '2023-07-28 09:50:33', '2023-07-28 09:51:10'),
(76, 'shankarishanmugam23@gmail.com', 'email', '292418', 'used', '2023-07-28 10:01:26', '2023-07-28 09:51:26', '2023-07-28 09:51:53'),
(77, 'bharath21official@gmail.com', 'email', '491002', 'used', '2023-07-28 10:27:52', '2023-07-28 10:17:52', '2023-07-28 10:18:22'),
(78, 'sabarikumar984@gmail.com', 'email', '925016', 'used', '2023-07-28 10:29:24', '2023-07-28 10:19:24', '2023-07-28 10:20:04'),
(79, 'rameshchandran2002@gmail.com', 'email', '009362', 'used', '2023-07-28 10:38:45', '2023-07-28 10:28:45', '2023-07-28 10:30:03'),
(80, 'lhekha007slm@gmail.com', 'email', '083658', 'used', '2023-07-28 10:41:41', '2023-07-28 10:31:41', '2023-07-28 10:32:31'),
(81, 'Pragathipragu29@gmail.com', 'email', '026794', 'used', '2023-07-28 10:41:48', '2023-07-28 10:31:48', '2023-07-28 10:32:23'),
(82, 'pswathikaa03@gmail.com', 'email', '558271', 'used', '2023-07-28 10:53:08', '2023-07-28 10:43:09', '2023-07-28 10:43:53'),
(83, 'yuvanpys007@gmail.com', 'email', '982492', 'used', '2023-07-28 10:55:28', '2023-07-28 10:45:28', '2023-07-28 10:46:21'),
(84, 'sakthivrajan@gmail.com', 'email', '384891', 'pending', '2023-07-28 11:33:50', '2023-07-28 11:23:50', '2023-07-28 11:23:50'),
(85, 'sakthiganeshvrajan@gmail.com', 'email', '473991', 'used', '2023-07-28 11:35:47', '2023-07-28 11:25:47', '2023-07-28 11:26:36'),
(86, 'anbuanbarasu@gmail.com', 'email', '372362', 'pending', '2023-07-28 11:53:24', '2023-07-28 11:43:24', '2023-07-28 11:43:24'),
(87, 'anbuanbarasu@gmail.com', 'email', '607951', 'pending', '2023-07-28 11:54:03', '2023-07-28 11:44:03', '2023-07-28 11:44:03'),
(88, 'priyankha1504slm@gmail.com', 'email', '825039', 'used', '2023-07-28 11:54:17', '2023-07-28 11:44:17', '2023-07-28 11:45:01'),
(89, 'kkavipriya174@gmail.com', 'email', '707030', 'pending', '2023-07-28 12:54:19', '2023-07-28 12:44:19', '2023-07-28 12:44:19'),
(90, 'jeeva7240@gmail.com', 'email', '555846', 'pending', '2023-07-28 12:55:22', '2023-07-28 12:45:22', '2023-07-28 12:45:22'),
(91, 'kkavipriya174@gmail.com', 'email', '706686', 'used', '2023-07-28 12:56:43', '2023-07-28 12:46:43', '2023-07-28 12:47:03'),
(92, 'indhumathi242002@gmail.com', 'email', '125563', 'used', '2023-07-28 13:22:25', '2023-07-28 13:12:26', '2023-07-28 13:13:12'),
(93, 'joshika702@gmail.com', 'email', '830606', 'used', '2023-07-28 13:53:47', '2023-07-28 13:43:47', '2023-07-28 13:44:28'),
(94, 'gnanasehar000@gmail.com', 'email', '162957', 'used', '2023-07-28 14:06:50', '2023-07-28 13:56:50', '2023-07-28 13:59:44'),
(95, 'gocoolrz@gmail.com', 'email', '708509', 'used', '2023-07-28 14:33:37', '2023-07-28 14:23:38', '2023-07-28 14:24:07'),
(96, 'mkanfan709@gmail.com', 'email', '760602', 'used', '2023-07-28 14:41:23', '2023-07-28 14:31:24', '2023-07-28 14:34:09'),
(97, 'arivalagan.dpm@gmail.com', 'email', '738397', 'used', '2023-07-28 15:14:51', '2023-07-28 15:04:51', '2023-07-28 15:05:16'),
(98, 'nithinnking93@gmail.com', 'email', '836424', 'used', '2023-07-28 15:16:32', '2023-07-28 15:06:32', '2023-07-28 15:07:09'),
(99, 'hariguru292@gmail.com', 'email', '643823', 'used', '2023-07-28 15:18:55', '2023-07-28 15:08:56', '2023-07-28 15:10:04'),
(100, '17vishwapriya@gmail.com', 'email', '984077', 'used', '2023-07-28 16:24:15', '2023-07-28 16:14:16', '2023-07-28 16:14:51'),
(101, 'vadivelu.dpm@gmail.com', 'email', '679719', 'pending', '2023-07-28 17:09:52', '2023-07-28 16:59:52', '2023-07-28 16:59:52'),
(102, 'vadivelu.dpm@gmail.com', 'email', '436219', 'pending', '2023-07-28 17:11:08', '2023-07-28 17:01:08', '2023-07-28 17:01:08'),
(103, 'umarfaruk14396@gmail.com', 'email', '345084', 'used', '2023-07-28 23:38:03', '2023-07-28 23:28:03', '2023-07-28 23:28:57'),
(104, 'suriyasurthin@gmail.com', 'email', '942910', 'used', '2023-07-29 01:08:33', '2023-07-29 00:58:33', '2023-07-29 00:59:03'),
(105, 'santhosh.santhosh1@cloud.com', 'email', '936233', 'pending', '2023-07-29 01:14:07', '2023-07-29 01:04:07', '2023-07-29 01:04:07'),
(106, 'santhosh.santhosh1@cloud.com', 'email', '515722', 'pending', '2023-07-29 01:14:50', '2023-07-29 01:04:50', '2023-07-29 01:04:50'),
(107, 'santhosh.santhosh1@cloud.com', 'email', '451176', 'pending', '2023-07-29 01:14:50', '2023-07-29 01:04:50', '2023-07-29 01:04:50'),
(108, 'santhosh.santhosh1@cloud.com', 'email', '550892', 'pending', '2023-07-29 01:14:51', '2023-07-29 01:04:51', '2023-07-29 01:04:51'),
(109, 'santhosh.santhosh1@cloud.com', 'email', '488938', 'pending', '2023-07-29 01:14:51', '2023-07-29 01:04:51', '2023-07-29 01:04:51'),
(110, 'santhosh.santhosh1@icloud.com', 'email', '539292', 'used', '2023-07-29 01:17:34', '2023-07-29 01:07:34', '2023-07-29 01:08:04'),
(111, 'angelinpriyaanand@gmail.com', 'email', '335998', 'pending', '2023-07-29 02:10:34', '2023-07-29 02:00:34', '2023-07-29 02:00:34'),
(112, 'angelinpriyaanand@gmail.com', 'email', '250161', 'pending', '2023-07-29 02:11:11', '2023-07-29 02:01:11', '2023-07-29 02:01:11'),
(113, 'angelinpriyaanand@gmail.com', 'email', '005190', 'pending', '2023-07-29 02:11:12', '2023-07-29 02:01:12', '2023-07-29 02:01:12'),
(114, 'angelinpriyaanand@gmail.com', 'email', '057209', 'pending', '2023-07-29 02:11:27', '2023-07-29 02:01:27', '2023-07-29 02:01:27'),
(115, 'nilegna.priya@gmail.com', 'email', '797062', 'used', '2023-07-29 02:15:29', '2023-07-29 02:05:29', '2023-07-29 02:06:08'),
(116, 'angelinpriyaanand@gmail.com', 'email', '461781', 'pending', '2023-07-29 02:28:54', '2023-07-29 02:18:54', '2023-07-29 02:18:54'),
(117, 'angelinpriyaanand@gmail.com', 'email', '545751', 'pending', '2023-07-29 02:28:54', '2023-07-29 02:18:54', '2023-07-29 02:18:54'),
(118, 'naveena8087@gmail.com', 'email', '917485', 'used', '2023-07-29 04:05:00', '2023-07-29 03:55:01', '2023-07-29 03:57:02'),
(119, 'naveena8087@gmail.com', 'email', '014882', 'pending', '2023-07-29 04:05:22', '2023-07-29 03:55:22', '2023-07-29 03:55:22'),
(120, 'naveena8087@gmail.com', 'email', '512011', 'pending', '2023-07-29 04:06:11', '2023-07-29 03:56:11', '2023-07-29 03:56:11'),
(121, 'naveena8087@gmail.com', 'email', '276681', 'pending', '2023-07-29 04:06:27', '2023-07-29 03:56:27', '2023-07-29 03:56:27'),
(122, 'dev@gmail.com', 'email', '343328', 'used', '2023-07-29 15:54:26', '2023-07-29 10:14:34', '2023-07-29 10:17:03'),
(123, 'dev2@gmail.com', 'email', '248648', 'used', '2023-07-29 16:00:07', '2023-07-29 10:20:15', '2023-07-29 10:20:34'),
(124, 'dev3@gmail.com', 'email', '606712', 'used', '2023-07-29 16:02:22', '2023-07-29 10:22:30', '2023-07-29 10:22:50'),
(125, 'dev@test.in', 'email', '822339', 'used', '2023-07-29 16:07:01', '2023-07-29 10:27:09', '2023-07-29 10:27:23'),
(126, 'Sovahtofficial@gmail.com', 'email', '011323', 'used', '2023-07-29 10:43:15', '2023-07-29 10:33:15', '2023-07-29 10:33:37'),
(127, 'felixice174@gmail.com', 'email', '083033', 'used', '2023-07-29 13:04:25', '2023-07-29 12:54:26', '2023-07-29 12:55:26'),
(128, 'fazilms643@gmail.com', 'email', '882334', 'used', '2023-07-29 14:52:36', '2023-07-29 14:42:36', '2023-07-29 14:43:17'),
(129, 'gajapriya8667@gmail.com', 'email', '178943', 'pending', '2023-07-29 15:23:04', '2023-07-29 15:13:04', '2023-07-29 15:13:04'),
(130, 'gajapriya8667@gmail.com', 'email', '265967', 'pending', '2023-07-29 15:23:37', '2023-07-29 15:13:37', '2023-07-29 15:13:37'),
(131, 'gajapriya8667@gmail.com', 'email', '872698', 'pending', '2023-07-29 15:55:58', '2023-07-29 15:45:58', '2023-07-29 15:45:58'),
(132, 'gokulsasi422@gmail.com', 'email', '717466', 'used', '2023-07-29 17:46:30', '2023-07-29 17:36:30', '2023-07-29 17:37:00'),
(133, 'gajapriya8667@gmail.com', 'email', '456575', 'pending', '2023-07-29 20:59:23', '2023-07-29 20:49:23', '2023-07-29 20:49:23'),
(134, 'gajapriya8667@gmail.com', 'email', '814392', 'pending', '2023-07-29 20:59:31', '2023-07-29 20:49:31', '2023-07-29 20:49:31'),
(135, 'ravibhuvana1177@gmail.com', 'email', '511144', 'used', '2023-07-30 05:42:54', '2023-07-30 05:32:54', '2023-07-30 05:33:13'),
(136, 'bhuvaneshwariravi06@gmail.com', 'email', '719857', 'used', '2023-07-30 06:01:36', '2023-07-30 05:51:37', '2023-07-30 05:52:25'),
(137, 'reshmakannan28@gmail.com', 'email', '702666', 'used', '2023-07-30 08:47:52', '2023-07-30 08:37:53', '2023-07-30 08:38:24'),
(138, 'raja16.smr@gmail.com', 'email', '403666', 'used', '2023-07-30 09:26:37', '2023-07-30 09:16:38', '2023-07-30 09:17:03'),
(139, 'divyashree75sa@gmail.com', 'email', '045248', 'pending', '2023-07-30 14:46:54', '2023-07-30 14:36:54', '2023-07-30 14:36:54'),
(140, 'divyashree75sa@gmail.com', 'email', '099790', 'used', '2023-07-30 14:47:10', '2023-07-30 14:37:10', '2023-07-30 14:37:45'),
(141, 'gokulanandhan19@hmail.com', 'email', '799547', 'pending', '2023-07-31 03:39:25', '2023-07-31 03:29:26', '2023-07-31 03:29:26'),
(142, 'gokulanandhan19@hmail.com', 'email', '064097', 'pending', '2023-07-31 03:40:20', '2023-07-31 03:30:20', '2023-07-31 03:30:20'),
(143, 'gokulanandhan19@hmail.com', 'email', '855904', 'pending', '2023-07-31 03:40:20', '2023-07-31 03:30:20', '2023-07-31 03:30:20'),
(144, 'gokulanandhan19@hmail.com', 'email', '095171', 'pending', '2023-07-31 03:41:32', '2023-07-31 03:31:32', '2023-07-31 03:31:32'),
(145, 'gokulanandhan19@hmail.com', 'email', '482271', 'pending', '2023-07-31 03:41:32', '2023-07-31 03:31:32', '2023-07-31 03:31:32'),
(146, 'gokulanandhan19@gmail.com', 'email', '442740', 'used', '2023-07-31 03:42:26', '2023-07-31 03:32:26', '2023-07-31 03:33:00'),
(147, 'arunprasath170777@gmail.com', 'email', '539252', 'used', '2023-07-31 06:07:51', '2023-07-31 05:57:51', '2023-07-31 05:58:26'),
(148, 'praveen2020raj@gmail.com', 'email', '744259', 'used', '2023-07-31 08:44:19', '2023-07-31 08:34:19', '2023-07-31 08:34:56'),
(149, 'vijeash15@gmail.com', 'email', '031032', 'used', '2023-07-31 12:06:00', '2023-07-31 11:56:00', '2023-07-31 11:56:54'),
(150, 'pm3377@email.com', 'email', '859123', 'pending', '2023-07-31 15:27:25', '2023-07-31 15:17:26', '2023-07-31 15:17:26'),
(151, 'pm3377@email.com', 'email', '786360', 'pending', '2023-07-31 15:27:55', '2023-07-31 15:17:55', '2023-07-31 15:17:55'),
(152, 'pm3377@email.com', 'email', '143439', 'pending', '2023-07-31 15:28:30', '2023-07-31 15:18:30', '2023-07-31 15:18:30'),
(153, 'pm3377@email.com', 'email', '803631', 'pending', '2023-07-31 15:29:16', '2023-07-31 15:19:16', '2023-07-31 15:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `Page`
--

CREATE TABLE `Page` (
  `pageId` bigint(20) NOT NULL,
  `name` longtext NOT NULL,
  `route` longtext NOT NULL,
  `query` longtext DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'draft' COMMENT 'published, archived, draft, deleted',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Page`
--

INSERT INTO `Page` (`pageId`, `name`, `route`, `query`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Home', 'home', NULL, 'published', '2023-07-23 06:16:08', '2023-07-23 06:16:17'),
(2, 'Test', 'test', NULL, 'deleted', '2023-07-23 06:38:43', '2023-07-23 16:36:19'),
(3, 'biz', 'biz', NULL, 'published', '2023-07-23 17:18:14', '2023-07-26 10:31:21'),
(4, 'tshirt', 'tshirt', NULL, 'published', '2023-07-23 17:18:41', '2023-07-23 20:32:02'),
(5, 'shirt', 'shirt', NULL, 'published', '2023-07-23 17:18:54', '2023-07-23 19:48:26'),
(6, 'kurti', 'kurti', NULL, 'published', '2023-07-23 17:19:10', '2023-07-24 18:04:20'),
(7, 'shoe', 'shoe', NULL, 'published', '2023-07-23 17:19:23', '2023-07-24 18:04:17'),
(8, 'watch', 'watch', NULL, 'published', '2023-07-23 17:19:36', '2023-07-24 18:04:13'),
(9, 'product', 'product', NULL, 'published', '2023-07-23 17:19:50', '2023-07-24 18:04:09'),
(10, 'men-product', 'men-prodect', NULL, 'published', '2023-07-23 17:20:55', '2023-07-27 13:17:36'),
(11, 'women-product', 'women-prodect', NULL, 'published', '2023-07-23 17:21:18', '2023-07-27 13:17:46'),
(12, 't-shirt', 't-shirt', NULL, 'published', '2023-07-24 18:03:49', '2023-07-24 18:03:57'),
(13, 'leggings', 'leggings', NULL, 'published', '2023-07-24 18:08:00', '2023-07-27 19:29:08'),
(14, 'women-tshirt', 'women-tshirt', NULL, 'published', '2023-07-26 11:40:38', '2023-07-26 11:41:02'),
(15, 'bottom', 'bottom', NULL, 'published', '2023-07-26 20:23:21', '2023-07-26 20:24:42'),
(16, 'boxer', 'boxer', NULL, 'deleted', '2023-07-27 12:24:22', '2023-07-27 12:24:46'),
(17, 'dhoti', 'dhoti', NULL, 'published', '2023-07-27 19:29:29', '2023-07-27 19:33:00'),
(18, 'women-jean', 'women-jean', NULL, 'published', '2023-07-27 19:31:17', '2023-07-27 19:33:05'),
(19, 'boxer', 'boxer', NULL, 'published', '2023-07-30 16:59:40', '2023-07-30 17:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `paymentId` bigint(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_id` varchar(50) DEFAULT NULL,
  `tracking_id` varchar(50) DEFAULT NULL,
  `bank_ref_no` varchar(50) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL,
  `failure_message` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `card_name` varchar(50) DEFAULT NULL,
  `status_code` varchar(50) DEFAULT NULL,
  `status_message` varchar(100) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `billing_name` varchar(100) DEFAULT NULL,
  `billing_address` varchar(100) DEFAULT NULL,
  `billing_city` varchar(50) DEFAULT NULL,
  `billing_state` varchar(50) DEFAULT NULL,
  `billing_zip` varchar(10) DEFAULT NULL,
  `billing_country` varchar(50) DEFAULT NULL,
  `billing_tel` varchar(15) DEFAULT NULL,
  `billing_email` varchar(100) DEFAULT NULL,
  `delivery_name` varchar(100) DEFAULT NULL,
  `delivery_address` varchar(100) DEFAULT NULL,
  `delivery_city` varchar(50) DEFAULT NULL,
  `delivery_state` varchar(50) DEFAULT NULL,
  `delivery_zip` varchar(10) DEFAULT NULL,
  `delivery_country` varchar(50) DEFAULT NULL,
  `delivery_tel` varchar(15) DEFAULT NULL,
  `merchant_param1` varchar(255) DEFAULT NULL,
  `merchant_param2` varchar(255) DEFAULT NULL,
  `merchant_param3` varchar(255) DEFAULT NULL,
  `merchant_param4` varchar(255) DEFAULT NULL,
  `merchant_param5` varchar(255) DEFAULT NULL,
  `vault` varchar(50) DEFAULT NULL,
  `offer_type` varchar(50) DEFAULT NULL,
  `offer_code` varchar(50) DEFAULT NULL,
  `discount_value` varchar(50) DEFAULT NULL,
  `mer_amount` varchar(50) DEFAULT NULL,
  `eci_value` varchar(50) DEFAULT NULL,
  `retry` varchar(50) DEFAULT NULL,
  `response_code` varchar(50) DEFAULT NULL,
  `billing_notes` varchar(255) DEFAULT NULL,
  `trans_date` varchar(50) DEFAULT NULL,
  `bin_country` varchar(50) DEFAULT NULL,
  `trans_fee` varchar(50) DEFAULT NULL,
  `service_tax` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`paymentId`, `createdAt`, `updatedAt`, `order_id`, `tracking_id`, `bank_ref_no`, `order_status`, `failure_message`, `payment_mode`, `card_name`, `status_code`, `status_message`, `currency`, `amount`, `billing_name`, `billing_address`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `billing_tel`, `billing_email`, `delivery_name`, `delivery_address`, `delivery_city`, `delivery_state`, `delivery_zip`, `delivery_country`, `delivery_tel`, `merchant_param1`, `merchant_param2`, `merchant_param3`, `merchant_param4`, `merchant_param5`, `vault`, `offer_type`, `offer_code`, `discount_value`, `mer_amount`, `eci_value`, `retry`, `response_code`, `billing_notes`, `trans_date`, `bin_country`, `trans_fee`, `service_tax`) VALUES
(1, '2023-07-27 12:58:13', '2023-07-27 12:58:13', '59f47cfc-592c-4ccc-a2b3-e725da5149b7', '112954191837', '320826399497', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '249.00', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', 'weemaxecom@gmail.com', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', '1', '1', '1', '', '', 'N', 'null', 'null', '0.0', '249.00', '', 'N', '', '', '27/07/2023 18:28:07', '', '0.0', '0.0'),
(2, '2023-07-27 13:04:27', '2023-07-27 13:04:27', 'aca4ee70-8b18-4ae2-b048-84f550318e21', '112954199006', '320868185527', 'Failure', '', 'Unified Payments', 'UPI', '', 'Failed', 'INR', '349.00', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', 'sakthiganesh533@gmail.com', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', '1', '2', '2', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 18:34:25', '', '0.0', '0.0'),
(3, '2023-07-27 13:07:27', '2023-07-27 13:07:27', 'aca4ee70-8b18-4ae2-b048-84f550318e21', '112954199884', '320846588626', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '349.00', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', 'sakthiganesh533@gmail.com', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', '1', '2', '2', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 18:37:23', '', '0.0', '0.0'),
(4, '2023-07-27 13:44:42', '2023-07-27 13:44:42', '18be0764-3620-44a9-81c1-7a4b57c778b2', '112954243139', '320893036853', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '349.00', 'Preetham', 'L-54/2 second floor,kootapalli colony tiruchengode , null', 'Tiruchengode', 'Tamilnadu', '637214', 'India', '6381469846', 'preethamsenthilkumar2012@gmail.com', 'Preetham', 'L-54/2 second floor,kootapalli colony tiruchengode , null', 'Tiruchengode', 'Tamilnadu', '637214', 'India', '6381469846', '1', '3', '3', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 19:14:35', '', '0.0', '0.0'),
(5, '2023-07-27 14:06:21', '2023-07-27 14:06:21', '4dce29d0-832b-48c3-ac20-954a8a6cfafb', '112954267086', '357456386406', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '600.00', 'Sanjiv v', '136/10B, ganapathy nagar , Near mayavan malihi', 'Dharapuram', 'Tamilnadu', '638657', 'India', '9843959919', 'sanjivdpm2003@gmail.com', 'Sanjiv v', '136/10B, ganapathy nagar , Near mayavan malihi', 'Dharapuram', 'Tamilnadu', '638657', 'India', '9843959919', '1', '6', '7', '', '', 'N', 'null', 'null', '0.0', '600.00', '', 'N', '', '', '27/07/2023 19:36:18', '', '0.0', '0.0'),
(6, '2023-07-27 14:15:46', '2023-07-27 14:15:46', '5ca99ce5-52ab-4139-90d2-584b177bf671', '112954275189', '320893136467', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '520.00', 'Thilak Rs', '46/1 Gandhiji Street, Opposite To Carmel School, Kollampalayam, Karur Road', 'Erode', 'Tamil Nadu', '638002', 'India', '7010908103', 'thilaksenthilkumar16@gmail.com', 'Thilak Rs', '46/1 Gandhiji Street, Opposite To Carmel School, Kollampalayam, Karur Road', 'Erode', 'Tamil Nadu', '638002', 'India', '7010908103', '1', '5', '8', '', '', 'N', 'null', 'null', '0.0', '520.00', '', 'N', '', '', '27/07/2023 19:45:42', '', '0.0', '0.0'),
(7, '2023-07-27 14:35:44', '2023-07-27 14:35:44', '64fa186e-56b2-494d-86db-53f838393837', '112954288073', '320893205796', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '249.00', 'Vignesh Arivazhagan', '6/95/3 , kollupalayam , bharathiyar nagar , eb office road , Coimbatore 641659, null', 'Coimbatore', 'Tamil Nadu', '641659', 'India', '9789413685', 'vignesharivazhagan22@gmail.com', 'Vignesh Arivazhagan', '6/95/3 , kollupalayam , bharathiyar nagar , eb office road , Coimbatore 641659, null', 'Coimbatore', 'Tamil Nadu', '641659', 'India', '9789413685', '1', '4', '4', '', '', 'N', 'null', 'null', '0.0', '249.00', '', 'N', '', '', '27/07/2023 20:05:38', '', '0.0', '0.0'),
(8, '2023-07-27 14:36:48', '2023-07-27 14:36:48', 'e77dad06-a3e7-4ae5-98dd-d4ee21ac4afa', '112954296203', '320893207754', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '349.00', 'Poomalai Ahilan', 'WHP hostel , OP main road, Annamalai nagar', 'Chidambaram', 'Tamilnadu', '608002', 'India', '6383677721', 'poomalahilan@gmail.com', 'Poomalai Ahilan', 'WHP hostel , OP main road, Annamalai nagar', 'Chidambaram', 'Tamilnadu', '608002', 'India', '6383677721', '1', '11', '9', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 20:06:23', '', '0.0', '0.0'),
(9, '2023-07-27 14:46:41', '2023-07-27 14:46:41', '30bb8f84-a5e6-431e-a040-df3a35ef71b7', '112954308301', '320840915714', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '249.00', 'Naveen Prabu S', '3/134, Kittampalayam , Karumathampatti, null', 'Coimbatore', 'Tamil Nadu', '641659', 'India', '9345622794', 'naveenprabu21@gmail.com', 'Naveen Prabu S', '3/134, Kittampalayam , Karumathampatti, null', 'Coimbatore', 'Tamil Nadu', '641659', 'India', '9345622794', '1', '12', '14', '', '', 'N', 'null', 'null', '0.0', '249.00', '', 'N', '', '', '27/07/2023 20:16:20', '', '0.0', '0.0'),
(10, '2023-07-27 16:36:13', '2023-07-27 16:36:13', '2473345c-89c8-4409-91b6-7b8e12d3e891', '112954403394', '320897147652', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '449.00', 'Nalini', '136/10b Ganapathi Nagar , Near Mayavan malihi', 'Dharapuram', 'tamilnadu', '638657', 'India', '9843406636', 'vadivelunalinidpm@gmail.com', 'Nalini', '136/10b Ganapathi Nagar , Near Mayavan malihi', 'Dharapuram', 'tamilnadu', '638657', 'India', '9843406636', '1', '13', '21', '', '', 'N', 'null', 'null', '0.0', '449.00', '', 'N', '', '', '27/07/2023 22:06:04', '', '0.0', '0.0'),
(11, '2023-07-27 16:46:34', '2023-07-27 16:46:34', 'ef419ce6-b97e-40d0-b5e2-cf8ce41de0a4', '112954412078', '320895172906', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '349.00', 'Mohamed Tariq', '27 Manjunatha residency, 2nd Cross Saptagiri Layout, channasandra, whitefield, null', 'Bengaluru', 'KARNATAKA', '560067', 'India', '7092339606', 'mohamed.tariq46@gmail.com', 'Mohamed Tariq', '27 Manjunatha residency, 2nd Cross Saptagiri Layout, channasandra, whitefield, null', 'Bengaluru', 'KARNATAKA', '560067', 'India', '7092339606', '0', '14', '24', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 22:16:32', '', '0.0', '0.0'),
(12, '2023-07-27 18:06:28', '2023-07-27 18:06:28', 'a93e4a63-d6e6-4997-b85d-09af1f49505b', '112954460519', '320893692034', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '349.00', 'Poomalai Ahilan', '186/4, Kavin Harsha complex, 2nd Street , Netaji nagr, Trichy road', 'Namakkal', 'Tamilnadu', '637001', 'India', '6383677721', 'poomalahilan@gmail.com', 'Poomalai Ahilan', '186/4, Kavin Harsha complex, 2nd Street , Netaji nagr, Trichy road', 'Namakkal', 'Tamilnadu', '637001', 'India', '6383677721', '1', '16', '9', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 23:36:22', '', '0.0', '0.0'),
(13, '2023-07-28 08:45:54', '2023-07-28 08:45:54', 'c743abc5-0c29-4985-87fa-5f3671fce90c', '112954959466', '320995073022', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '2298.00', 'R Gunal', '32,Sowdamman Kovil Street, NN Pettai Street', 'DharapuramTiruppur', 'TamilNadu', '638656', 'India', '9345710012', 'gunalrajarathinam11@gmail.com', 'R Gunal', '32,Sowdamman Kovil Street, NN Pettai Street', 'DharapuramTiruppur', 'TamilNadu', '638656', 'India', '9345710012', '1', '21', '13', '', '', 'N', 'null', 'null', '0.0', '2298.00', '', 'N', '', '', '28/07/2023 14:15:21', '', '0.0', '0.0'),
(14, '2023-07-28 10:03:04', '2023-07-28 10:03:04', '60e44b29-c689-4b2e-a85d-6e07e391ab7b', '112955051152', '320974719460', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '249.00', 'Akash', '48, J S garden, 3rd street, Nallur, Tirupur. , null', 'Tirupur', 'Tamilnadu', '641606', 'India', '7708012111', 'akashthozhan@gmail.com', 'Akash', '48, J S garden, 3rd street, Nallur, Tirupur. , null', 'Tirupur', 'Tamilnadu', '641606', 'India', '7708012111', '1', '29', '57', '', '', 'N', 'null', 'null', '0.0', '249.00', '', 'N', '', '', '28/07/2023 15:32:54', '', '0.0', '0.0'),
(15, '2023-07-28 15:34:25', '2023-07-28 15:34:25', 'f0a7c054-67fb-4b27-bd5b-5fe0cf21a76c', '112955414720', '357548418499', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '1199.00', 'Arivu', '29/40 kannan nagar, Indian Bank opposite street', 'Dharapuram', 'Tamil nadu', '638656', 'India', '9047272600', 'arivalagan.dpm@gmail.com', 'Arivu', '29/40 kannan nagar, Indian Bank opposite street', 'Dharapuram', 'Tamil nadu', '638656', 'India', '9047272600', '1', '30', '76', '', '', 'N', 'null', 'null', '0.0', '1199.00', '', 'N', '', '', '28/07/2023 21:04:18', '', '0.0', '0.0'),
(16, '2023-07-28 17:23:14', '2023-07-28 17:23:14', '5c8a69d3-d91b-4bf7-a2c5-942cf13282dc', '112955497011', '320919423679', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '349.00', 'Joshika.S', 'No.18,Sri Sakthi Nagar, Near parambariyam hotel,Thondamuthur road, Coimbatore -46, null', 'Coimbatore', 'Tamilnadu', '641046', 'India', '7598243340', 'joshika702@gmail.com', 'Joshika.S', 'No.18,Sri Sakthi Nagar, Near parambariyam hotel,Thondamuthur road, Coimbatore -46, null', 'Coimbatore', 'Tamilnadu', '641046', 'India', '7598243340', '1', '31', '72', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '28/07/2023 22:53:13', '', '0.0', '0.0'),
(18, '2023-07-30 12:00:54', '2023-07-30 12:00:54', '8e5d2342-d732-4d8d-bd0c-b5c310f0822b', '112956994901', '321101040910', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '900.00', 'Raja', '2/73, pillayar Kovil street, Ramachiyamapalayam, Somanur', 'Coimbatore', 'Tamil Nadu', '641668', 'India', '8973773284', 'raja16.smr@gmail.com', 'Raja', '2/73, pillayar Kovil street, Ramachiyamapalayam, Somanur', 'Coimbatore', 'Tamil Nadu', '641668', 'India', '8973773284', '1', '37', '100', '', '', 'N', 'null', 'null', '0.0', '900.00', '', 'N', '', '', '30/07/2023 17:30:50', '', '0.0', '0.0'),
(21, '2023-07-31 07:39:30', '2023-07-31 07:39:30', '708a1302-91c9-471c-a9f2-f975657de80d', '112957724562', '357828899486', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '749.00', 'Sanjiv v', '136/10B, ganapathy nagar , Near mayavan malihi', 'Dharapuram', 'Tamilnadu', '638657', 'India', '9843959919', 'sanjivdpm2003@gmail.com', 'Sanjiv v', '136/10B, ganapathy nagar , Near mayavan malihi', 'Dharapuram', 'Tamilnadu', '638657', 'India', '9843959919', '1', '6', '7', '', '', 'N', 'null', 'null', '0.0', '749.00', '', 'N', '', '', '31/07/2023 13:09:27', '', '0.0', '0.0'),
(22, '2023-08-01 12:04:44', '2023-08-01 12:04:44', '58d061ed-8120-413c-afd6-85d8b0314143', '112959334141', '321357997988', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '1.00', 'Yugendiran G', 'No165a, 5th street, Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', 'India', '8838669898', 'golspoh128@gmail.com', 'Yugendiran G', 'No165a, 5th street, Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', 'India', '8838669898', '1', '33', '31', '', '', 'N', 'null', 'null', '0.0', '1.00', '', 'N', '', '', '01/08/2023 17:34:34', '', '0.0', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `PaymentMethod`
--

CREATE TABLE `PaymentMethod` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `paymentType` varchar(50) NOT NULL COMMENT 'credit_card, debit_card, upi',
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`details`)),
  `status` varchar(50) NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `productId` bigint(20) NOT NULL,
  `code` varchar(50) NOT NULL,
  `productTitle` text NOT NULL,
  `description` longtext DEFAULT NULL,
  `mrpPrice` int(50) NOT NULL,
  `normalPrice` int(50) NOT NULL,
  `offerPrice` int(50) NOT NULL,
  `gst` int(50) NOT NULL,
  `hsn` varchar(50) NOT NULL,
  `coins` int(50) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'draft' COMMENT 'published, archived, draft, deleted',
  `categoryId` bigint(20) NOT NULL,
  `subCategoryId` bigint(20) NOT NULL,
  `type` varchar(15) NOT NULL COMMENT 'dress,gadget,course',
  `inventorySlab` text NOT NULL,
  `assetOne` text NOT NULL,
  `assetTwo` text DEFAULT NULL,
  `assetThree` text DEFAULT NULL,
  `assetFour` text DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`productId`, `code`, `productTitle`, `description`, `mrpPrice`, `normalPrice`, `offerPrice`, `gst`, `hsn`, `coins`, `status`, `categoryId`, `subCategoryId`, `type`, `inventorySlab`, `assetOne`, `assetTwo`, `assetThree`, `assetFour`, `createdAt`, `updatedAt`) VALUES
(1, '001', 'Shirt', 'shirt', 7000, 4999, 2750, 5, '001', 10, 'deleted', 1, 1, 'dress', 'r1c1', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1wee logo.jpg', NULL, NULL, NULL, '2023-07-23 19:31:48', '2023-07-23 21:16:05'),
(2, '88', '88', '55', 66, 55, 88, 5, '8', 55, 'deleted', 2, 9, 'dress', '55', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1WhatsApp Image 2023-07-23 at 23.11.38.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1wa.jpg', NULL, NULL, '2023-07-23 19:38:35', '2023-07-23 19:38:48'),
(3, '002', 'shirt 2', 'shirt', 10000, 5000, 2500, 5, '001', 100, 'deleted', 1, 1, 'dress', 'r1c2', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1weemax_official_1643976519075630.jpg', NULL, NULL, '2023-07-23 19:44:21', '2023-07-23 21:16:08'),
(4, '003', 'shirt 3', 'shirt', 100, 50, 25, 5, '001', 100, 'deleted', 1, 1, 'dress', 'r1c2', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5795__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5807-01.jpg', NULL, NULL, '2023-07-23 19:56:30', '2023-07-23 21:16:10'),
(5, 'test', 'Test', 'Test', 1, 1, 1, 1, '113', 5, 'deleted', 5, 18, 'dress', '1', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1J L-3 (1).jpg', NULL, NULL, NULL, '2023-07-24 03:25:49', '2023-07-24 08:31:52'),
(6, '123', 'Test2', 'asd', 1000, 800, 700, 5, 'asdasd', 12, 'deleted', 5, 18, 'dress', 'asdds', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1Havey Car VJX.png', NULL, NULL, NULL, '2023-07-24 06:44:04', '2023-07-24 08:31:55'),
(7, '001', 'shirt 1', 'shirt', 1000, 500, 250, 5, '01010', 20, 'deleted', 1, 1, 'dress', 'r1c1', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5748-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5751-01__02-01__02.jpg', NULL, '2023-07-24 06:56:13', '2023-07-24 08:31:58'),
(8, '001', 'Shirt 1', 'shirt', 20, 10, 5, 5, '001', 100, 'deleted', 1, 1, 'dress', 'r1c1', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5748-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5751-01__02-01__02.jpg', NULL, '2023-07-24 08:36:29', '2023-07-24 17:17:31'),
(9, '001', 'shirt 2', 'shirt', 20, 10, 5, 5, '001', 50, 'deleted', 1, 1, 'dress', 'r1c2', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5814__01-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5827-01__02.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5815-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5827-01.jpg', '2023-07-24 08:40:32', '2023-07-24 17:17:41'),
(10, '001', 'shirt 3', 'shirt', 20, 10, 5, 5, '001', 10, 'deleted', 1, 1, 'dress', 'r1d2', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5784-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5795__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5807-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5787-01.jpg', '2023-07-24 08:42:23', '2023-07-24 17:17:37'),
(11, 'MST001', 'Cobalt Blue Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R1C1', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5751-01__02-01__02.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5748-01.jpg', NULL, '2023-07-24 09:28:16', '2023-07-26 18:39:35'),
(12, 'MST002', 'Buttercream Yellow Printed Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R2C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5795__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5807-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5784-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5787-01.jpg', '2023-07-24 13:04:05', '2023-07-24 19:56:31'),
(13, 'MST003', 'Cyan Blue Zebra Print Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\".', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R3C1', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367NIK_5817-01-02.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5815-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5827-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5814__01-01.jpeg.jpg', '2023-07-24 13:14:00', '2023-07-28 03:21:09'),
(14, 'MST004', 'Charcoal Grey Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\".', 1199, 850, 450, 5, '6205', 6, 'deleted', 1, 1, 'dress', 'R1R4C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5836__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5836__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5842__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5845-01.jpg', '2023-07-24 13:20:35', '2023-07-24 13:57:22'),
(15, 'MST005', 'Pastel Green Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\".', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R5C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5857-01__01__01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5857-01.jpg', NULL, NULL, '2023-07-24 13:23:56', '2023-07-24 19:56:45'),
(16, 'MST006', 'Snow White shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R6C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5889-01-02.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5876-01__01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5871-01.jpg', NULL, '2023-07-24 13:28:21', '2023-07-24 19:56:55'),
(17, 'MST007', 'Athens Grey shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R1C2', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5921-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5898-01__01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5921-01.jpeg.jpg', NULL, '2023-07-24 13:31:43', '2023-07-24 19:57:16'),
(18, 'MST008', 'Shadow Black Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R2C2', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eAdobe_Express_20221105_0916180_1.png', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eAdobe_Express_20221105_0923320_1.png', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5560__01-02.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5567__01-01.jpeg.jpg', '2023-07-24 13:38:44', '2023-07-24 19:57:25'),
(19, 'MST009', 'Black Floral Print Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R3C2', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5583-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5588-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5599__01-01.jpeg.jpg', NULL, '2023-07-24 13:42:56', '2023-07-24 19:57:35'),
(20, 'MST0010', 'Olive Green Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R4C2', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5628-01-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5615-01__02.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5637-01-01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5615-01__01-1.jpg', '2023-07-24 13:47:45', '2023-07-24 19:57:46'),
(21, 'MST0011', 'Bottle Green Print Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R5C2', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5665-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5657__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5680-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5669-01.jpg', '2023-07-24 13:51:45', '2023-07-24 19:58:08'),
(22, 'MST004', 'Charcoal Grey Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R4C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5729-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5716__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5720__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5701-01.jpg', '2023-07-24 14:00:40', '2023-07-24 19:58:00'),
(23, 'MST0012', 'Satin Black Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R1R6C2', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e01.jpg', NULL, NULL, NULL, '2023-07-24 17:23:08', '2023-07-24 18:59:10'),
(24, 'MST0013', 'White & Blue Stripe Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R1R1C3', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e02.jpg', NULL, NULL, NULL, '2023-07-24 17:26:09', '2023-07-24 19:00:51'),
(25, 'MST0014', 'Pink & Grey Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R1R2C3', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e009.jpg', NULL, NULL, NULL, '2023-07-24 17:31:03', '2023-07-24 19:01:42'),
(26, 'MST0015', 'Satin Navy Blue Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R1R3C3', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e09.jpg', NULL, NULL, NULL, '2023-07-24 17:33:16', '2023-07-24 19:02:23'),
(27, 'MST0016', 'Elephant Grey Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R1R4C3', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e07.jpg', NULL, NULL, NULL, '2023-07-24 17:37:37', '2023-07-24 19:03:24'),
(28, 'MST0017', 'Sandal Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R1R5C3', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e04.jpg', NULL, NULL, NULL, '2023-07-24 17:46:09', '2023-07-24 19:04:13'),
(29, 'MST0018', 'Multi Color Check Shirt 01', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R1R6C3', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e007.jpg', NULL, NULL, NULL, '2023-07-24 17:59:08', '2023-07-24 19:05:45'),
(30, 'MST0019', 'White & Black Leaf Print Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R2R1C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e006.jpg', NULL, NULL, NULL, '2023-07-24 18:01:49', '2023-07-24 19:06:59'),
(31, 'MST0020', 'Coral Red Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R2R2C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e002.jpg', NULL, NULL, NULL, '2023-07-24 18:03:55', '2023-07-24 19:08:11'),
(32, 'MST0021', 'Navy Blue Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R2R3C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e06.jpg', NULL, NULL, NULL, '2023-07-24 18:06:31', '2023-07-24 19:09:13'),
(33, 'MST0022', 'Denim Blue Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R2R4C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e003.jpg', NULL, NULL, NULL, '2023-07-24 18:09:24', '2023-07-24 19:09:47'),
(34, 'MST0023', 'Multi Color Check Shirt 02', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R2R5C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e001.jpg', NULL, NULL, NULL, '2023-07-24 18:12:26', '2023-07-24 19:10:33'),
(35, 'MST0024', 'Forest Green Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R2R6C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e03.jpg', NULL, NULL, NULL, '2023-07-24 18:35:24', '2023-07-24 19:10:55'),
(36, 'MST0025', 'Black & White Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R2R1C2', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e05.jpg', NULL, NULL, NULL, '2023-07-24 18:37:41', '2023-07-24 19:11:29'),
(37, 'MST0026', 'Yale Blue Check shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 399, 5, '6205', 4, 'published', 1, 1, 'dress', 'R2R2C2', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e08.jpg', NULL, NULL, NULL, '2023-07-24 18:40:41', '2023-07-24 19:12:09'),
(38, 'MTP001', 'Break the Rules Tanktop', 'A cotton tank top is a lightweight and airy essential, crafted from comfy cotton for superior comfort and a relaxed fit, ideal for casual wear and active pursuits.', 399, 199, 150, 5, '61091000', 1, 'published', 1, 14, 'dress', 'R2R3C2', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195365271.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195383236.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195386899.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195385168.webp.webp', '2023-07-24 19:28:40', '2023-07-25 17:19:44'),
(39, 'MTP002', 'Train Insane Tanktop', 'A cotton tank top is a lightweight and airy essential, crafted from comfy cotton for superior comfort and a relaxed fit, ideal for casual wear and active pursuits.', 399, 199, 150, 5, '61091000', 1, 'published', 1, 14, 'dress', 'R2R4C2', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-3.webp.webp', '2023-07-24 19:35:52', '2023-07-25 17:19:52'),
(40, 'MTT001', 'Explore Olive Green T-Shirt', 'The smoothy cotton t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion.', 499, 299, 199, 5, '61091000', 2, 'published', 1, 2, 'dress', 'R2R5C2', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-3.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-4.webp.webp', '2023-07-24 20:24:57', '2023-07-25 17:20:07'),
(41, 'MTT002', 'Inspiring White T-Shirt', 'The smoothy cotton half sleeve crew neck t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion.', 499, 299, 199, 5, '61091000', 2, 'published', 1, 2, 'dress', 'R2R6C2', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-3.webp.webp', '2023-07-24 20:29:56', '2023-07-25 17:20:14'),
(42, 'MTT003', 'Blush Pink T-Shirt', 'The smoothy cotton half sleeve crew neck t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion.', 499, 299, 199, 5, '61091000', 2, 'published', 1, 2, 'dress', 'R2R1C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-3.webp.webp', '2023-07-24 20:37:41', '2023-07-25 17:20:23'),
(43, 'MTT004', 'Sap Green T-Shirt', 'The smoothy cotton half sleeve crew neck t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion', 499, 299, 199, 5, '61091000', 2, 'published', 1, 2, 'dress', 'R2R2C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST67-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST67-3.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST67-2.webp.webp', NULL, '2023-07-24 20:40:51', '2023-07-25 17:20:29'),
(44, 'MJR001', 'Red - Attitude Jogger', 'The Men\'s cotton jogger is the epitome of comfort, featuring a soft and cozy fabric blend that allows for unrestricted movement. With its trendy and athletic design, these joggers are a perfect choice for both lounging at home and stepping out in style.', 599, 470, 280, 5, '61091000', 3, 'published', 1, 4, 'dress', 'R2R3C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2Red Coloured Attitude jogger.png', NULL, NULL, NULL, '2023-07-24 20:48:00', '2023-07-25 17:20:37'),
(45, 'MJR002', 'Black - Limitless Jogger', 'The Men\'s cotton jogger is the epitome of comfort, featuring a soft and cozy fabric blend that allows for unrestricted movement. With its trendy and athletic design, these joggers are a perfect choice for both lounging at home and stepping out in style.', 599, 470, 280, 5, '61091000', 3, 'published', 1, 4, 'dress', 'R2R4C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2Black Limitless Men\'s Jogger.png', NULL, NULL, NULL, '2023-07-24 20:51:27', '2023-07-25 17:20:50'),
(46, 'MJR003', 'Blue - Hope Jogger', 'The Men\'s cotton jogger is the epitome of comfort, featuring a soft and cozy fabric blend that allows for unrestricted movement. With its trendy and athletic design, these joggers are a perfect choice for both lounging at home and stepping out in style.', 599, 470, 280, 5, '61091000', 3, 'published', 1, 4, 'dress', 'R2R5C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2Hope Printed Blue Coloured Jogger.png', NULL, NULL, NULL, '2023-07-24 20:53:31', '2023-07-25 17:20:59'),
(47, 'WKI001', 'White Floral Printed Kurti', 'Versatile design and vibrant patterns of this cotton kurti makes it a perfect choice for both casual and semi-formal occasions. Elevate your style with this comfortable and chic kurti, ideal for the modern woman seeking both comfort and fashion.', 999, 650, 399, 5, '6210', 4, 'published', 2, 8, 'dress', 'R2R6C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-3.webp.webp', '2023-07-24 21:04:47', '2023-07-25 17:21:07'),
(48, 'WKI002', 'Pink Embroidery Kurti', 'Versatile design and vibrant patterns of this cotton kurti makes it a perfect choice for both casual and semi-formal occasions. Elevate your style with this comfortable and chic kurti, ideal for the modern woman seeking both comfort and fashion.', 999, 650, 399, 5, '6210', 4, 'published', 2, 8, 'dress', 'R3R1C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-3.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-1.webp.webp', NULL, '2023-07-24 21:09:13', '2023-07-25 17:21:12'),
(49, 'WJN001', 'Dark Blue Slimfit Jeans', '\"Flattering and form-fitting, our women\'s slim fit jeans accentuate curves with a sleek, stylish silhouette, perfect for versatile everyday wear.\"', 1199, 740, 450, 5, '6205', 4, 'published', 2, 11, 'dress', 'R3R2C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815087.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815082.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815060.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815064.jpg', '2023-07-25 11:17:11', '2023-07-25 17:21:20'),
(50, 'WJN002', 'Light Blue Slim Jeans', '\"Flattering and form-fitting, our women\'s slim fit jeans accentuate curves with a sleek, stylish silhouette, perfect for versatile everyday wear.\"', 1199, 740, 450, 5, '6205', 4, 'published', 2, 11, 'dress', 'R3R3C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-AWJ001-5.webp.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-AWJ001-3.webp_1.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-AWJ001-1.webp_1.jpg', NULL, '2023-07-25 11:20:17', '2023-07-25 17:21:29'),
(51, 'WKI003', 'Mustard Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 350, 5, '6210', 3, 'deleted', 2, 8, 'dress', 'R3R4C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(4).jpg', '2023-07-25 11:41:04', '2023-07-25 12:06:17'),
(52, 'WKI004', 'Celeste Blue Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 350, 5, '6210', 3, 'published', 2, 8, 'dress', 'R3R5C1', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367TFFSET037 (4).jpg', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367TFFSET037 (5).jpg', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367TFFSET037 (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET037 (3).jpg', '2023-07-25 11:47:16', '2023-07-28 17:12:36'),
(53, 'WKI005', 'Lavender Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 350, 5, '6210', 3, 'published', 2, 8, 'dress', 'R3R6C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (1).jpeg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (3).jpeg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (2).jpeg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (4).jpeg', '2023-07-25 11:52:18', '2023-07-25 17:21:44'),
(54, 'WKI003', 'Mustard Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 350, 5, '6210', 3, 'published', 2, 8, 'dress', 'R3R4C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(1).jpg', '2023-07-25 12:36:25', '2023-07-25 17:21:52'),
(55, 'WKI006', 'Pastel Pink Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 350, 5, '621142', 3, 'published', 2, 8, 'dress', 'R3R1C2', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (5).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (6).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (2).jpg', '2023-07-25 12:44:19', '2023-07-25 17:22:03'),
(56, 'WKI008', 'Floral Red Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 199, 5, '62044990', 2, 'published', 2, 8, 'dress', 'R3R3C2', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (7).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (3).jpg', '2023-07-25 12:56:01', '2023-07-25 17:22:12'),
(57, 'WKI009', 'Floral Blue Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 199, 5, '62044990', 2, 'published', 2, 8, 'dress', 'R3R4C2', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (6).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (2).jpg', '2023-07-25 13:05:27', '2023-07-25 17:22:20'),
(58, 'WKI0010', 'Multicolor Stripe Single Kurti 01', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 199, 5, '62044990', 2, 'published', 2, 8, 'dress', 'R3R5C2', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (7).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (2).jpg', '2023-07-25 13:09:40', '2023-07-25 17:22:27'),
(59, 'WKI0011', 'Multicolor Stripe Single Kurti 02', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 199, 5, '62044990', 2, 'published', 2, 8, 'dress', 'R3R6C2', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (5).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (4).jpg', '2023-07-25 13:13:32', '2023-07-25 17:22:34'),
(60, 'WKI0012', 'Blue Leaf Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 199, 5, '62044990', 2, 'published', 2, 8, 'dress', 'R3R1C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (7).jpg', '2023-07-25 13:17:29', '2023-07-25 17:22:40'),
(61, 'WKI0013', 'Pink Leaf Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 199, 5, '62044990', 2, 'published', 2, 8, 'dress', 'R3R2C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (7).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (4).jpg', '2023-07-25 13:21:02', '2023-07-25 17:22:47'),
(62, 'WKI0015', 'Pastel Green Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"\n', 699, 399, 280, 5, '621142', 2, 'published', 2, 8, 'dress', 'R3R4C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (1).png', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (3).png', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (2).png', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (5).png', '2023-07-25 13:34:49', '2023-07-25 17:22:54'),
(63, 'WKI0016', 'Sage Green Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 699, 399, 280, 5, '621142', 2, 'published', 2, 8, 'dress', 'R3R5C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2686.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2678.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2676.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2677.jpg', '2023-07-25 13:38:21', '2023-07-25 17:23:01'),
(64, 'WKI007', 'Mustard Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 699, 399, 280, 5, '621142', 2, 'published', 2, 8, 'dress', 'R3R6C3', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2761.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2764.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2752.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2760.jpg', '2023-07-25 13:41:21', '2023-07-25 17:23:08'),
(65, 'WKI0018', 'Black Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 999, 499, 350, 5, '621142', 2, 'published', 2, 8, 'dress', 'R4R1C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK-021BLACK (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK-021BLACK (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK-021BLACK (1).jpg', NULL, '2023-07-25 13:47:19', '2023-07-25 17:23:18'),
(66, 'WKI0019', 'Midnight Blue Ethnic Croptop+Skirt+Jacket', 'A stylish and comfortable ensemble, the Crepe Kurta Dupatta Pant set features a flowing crepe kurta, combined with matching dupatta and pants, perfect for a chic and effortless look. Elevate your fashion game with this versatile outfit that seamlessly blends traditional elements with modern flair.', 1499, 699, 449, 5, '621142', 4, 'published', 2, 8, 'dress', 'R4R2C1', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c7793673J1A9264 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9287 copy.jpg', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c7793673J1A9251 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9247 copy.jpg', '2023-07-25 13:55:32', '2023-07-28 17:11:40'),
(67, 'WKI0020', 'Mustard Kurti+Pant+Dupatta', 'A stylish and comfortable ensemble, the Crepe Kurta Dupatta Pant set features a flowing crepe kurta, combined with matching dupatta and pants, perfect for a chic and effortless look. Elevate your fashion game with this versatile outfit that seamlessly blends traditional elements with modern flair.', 1499, 699, 449, 5, '621142', 4, 'published', 2, 8, 'dress', 'R4R3C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A8995 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9019 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A8990 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A8978 copy.jpg', '2023-07-25 14:00:53', '2023-07-25 18:28:44'),
(68, 'WKI0021', 'Peach Kurti+Pant+Dupatta', 'A stylish and comfortable ensemble, the Crepe Kurta Dupatta Pant set features a flowing crepe kurta, combined with matching dupatta and pants, perfect for a chic and effortless look. Elevate your fashion game with this versatile outfit that seamlessly blends traditional elements with modern flair.', 1499, 699, 449, 5, '621142', 4, 'published', 2, 8, 'dress', 'R4R4C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9160 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9148 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9129 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9171 copy.jpg', '2023-07-25 14:04:57', '2023-07-25 18:28:59'),
(69, 'WKI0022JN22VI', 'Hot Pink Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 350, 5, '6210', 3, 'published', 2, 8, 'dress', 'R4R5C1', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273221535_650500316073172_1057424652865625554_n.webp', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48270218698_934656040748872_7189051524487323808_n.webp', NULL, NULL, '2023-07-26 10:21:54', '2023-07-27 09:34:58'),
(70, 'WKI0023JN22VI', 'Pear Green Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 350, 5, '6210', 3, 'published', 2, 8, 'dress', 'R4R6C1', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273174017_677635843260383_3335791871112175473_n.webp', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273179727_1333348870459799_7108494274014086981_n.webp', NULL, NULL, '2023-07-26 10:25:53', '2023-07-27 09:35:03'),
(71, 'WKI0024JN22VI', 'Burgundy Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 350, 5, '6210', 3, 'published', 2, 8, 'dress', 'R4R1C2', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG-20220202-WA0001.jpg', NULL, NULL, NULL, '2023-07-26 10:29:33', '2023-07-27 09:35:09'),
(72, 'WKI0025JN22V1', 'White & Pink Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 350, 5, '6210', 3, 'published', 2, 8, 'dress', 'R4R2C2', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG-20220202-WA0004.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273109448_727446118196962_4626285009224329447_n.webp', NULL, NULL, '2023-07-26 10:32:29', '2023-07-27 09:35:21'),
(73, 'WKI0026JN22VI', 'Pistachio Single Embroidery Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 350, 5, '6210', 3, 'published', 2, 8, 'dress', 'R4R3C2', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48260384354_144109791353346_7592957446100256937_n.webp', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273369741_1843917939134214_8986923250803387691_n.webp', NULL, NULL, '2023-07-26 10:39:55', '2023-07-27 09:36:59'),
(74, 'WKI0027JN22VI', 'Black & White Stripe Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 350, 5, '6210', 3, 'published', 2, 8, 'dress', 'R4R4C2', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG-20220202-WA0003.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273138451_345107224130027_3611523701575332065_n.webp', NULL, NULL, '2023-07-26 10:42:30', '2023-07-27 09:37:08'),
(75, 'WKI007JLY23RA', 'Black Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 350, 5, '621142', 3, 'published', 2, 8, 'dress', 'R3R2C2', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8B1.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8B3.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8B4.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8WhatsApp Image 2023-07-26 at 16.15.59.jpg', '2023-07-26 10:49:38', '2023-07-27 09:39:29'),
(76, 'WKI0014JLY23RA', 'Black Floral Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 199, 5, '62044990', 2, 'deleted', 2, 8, 'dress', 'R3R3C3', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482.jpg', NULL, NULL, '2023-07-26 10:51:52', '2023-07-26 10:51:59'),
(77, 'WKI0014JLY23RA', 'Black Floral Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 199, 5, '62044990', 2, 'published', 2, 8, 'dress', 'R3R3C3', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4822.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4833.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4844.jpg', '2023-07-26 10:58:36', '2023-07-28 17:10:19'),
(78, 'WTT001JLY23SE', 'Yellow Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 199, 5, '61091000', 2, 'published', 2, 9, 'dress', 'R4R1C3', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fproducts-WHST19-1.webp.webp', NULL, NULL, NULL, '2023-07-26 19:02:08', '2023-07-27 09:39:58'),
(79, 'WTT002JLY23SE', 'Peach Women\'s T-shirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 199, 5, '61091000', 2, 'published', 2, 9, 'dress', 'R4R2C3', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fPeach Single & Happy Women\'s Half Sleeve T-shirt.png', NULL, NULL, NULL, '2023-07-26 19:04:36', '2023-07-27 09:40:04'),
(80, 'WTT003JLY23SE', 'Cream Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 199, 5, '61091000', 2, 'published', 2, 9, 'dress', 'R4R3C3', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fQ t shirt.webp', NULL, NULL, NULL, '2023-07-26 19:08:56', '2023-07-27 09:40:10'),
(81, 'WTT004OCT21TF', 'White Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 199, 5, '61091000', 2, 'published', 2, 9, 'dress', 'R4R4C3', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fwepik-export-20230726185547bgxX.png', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fwepik-export-202307261900160i6I.png', NULL, NULL, '2023-07-26 19:30:29', '2023-07-27 09:40:20'),
(82, 'WTT005OCT21TF', 'Black Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 199, 5, '61091000', 2, 'published', 2, 9, 'dress', 'R4R5C3', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230727_010221.png', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230727_010257.png', NULL, NULL, '2023-07-26 19:37:45', '2023-07-27 09:40:31'),
(83, 'WTT006OCT21TF', 'Fluorescent Green Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 199, 5, '61091000', 2, 'published', 2, 9, 'dress', 'R4R6C3', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fweemax_official_1643976519075630.jpg', NULL, NULL, NULL, '2023-07-26 19:52:05', '2023-07-27 09:40:39'),
(84, 'WTT007OCT21TF', 'Red Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 199, 5, '61091000', 2, 'published', 2, 9, 'dress', 'R5R1C1', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fweemax_official_1643976491775806.jpg', NULL, NULL, NULL, '2023-07-26 19:53:54', '2023-07-27 09:40:55'),
(85, 'MDI001OCT21SMA', 'Silver Jari Cotton Dhoti (2m)', '\"Unleash your inner regal charm with our Silver Border Dhoti, a stunning and traditional garment adorned with a shimmering silver border that adds a touch of opulence to any cultural celebration or special occasion.\"', 499, 280, 180, 5, '52082910', 2, 'published', 1, 6, 'dress', 'R5R2C1', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230726_173543.jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_fb8d1350-87e4-40bb-a07f-94d9be8050ed_1080x.jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f3_c14ba2f6-524b-4437-8e83-ff96fe5f2b54_900x.jpg', NULL, '2023-07-26 20:14:02', '2023-07-27 09:41:04'),
(86, '212', 'shoe', 'ss', 1, 1, 1, 5, '21', 100, 'deleted', 1, 1, 'dress', '91', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f3_c14ba2f6-524b-4437-8e83-ff96fe5f2b54_900x.jpg', NULL, NULL, NULL, '2023-07-26 20:55:37', '2023-07-27 08:31:42'),
(87, '444', 'sge', 'ssss', 1, 1, 1, 5, '444', 105, 'deleted', 2, 11, 'accessories', '22', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230726_173543.jpg', NULL, NULL, NULL, '2023-07-27 07:07:11', '2023-07-27 08:31:46'),
(88, '001', 'pen', 'ttt', 1, 1, 1, 5, '333', 10, 'deleted', 4, 17, 'accessories', '2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fweemax_official_1643282691900876.jpg', NULL, NULL, NULL, '2023-07-27 07:16:19', '2023-07-27 08:31:49'),
(89, 'WLG001SEP21GC', 'Black Stretchable Legging', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'draft', 2, 15, 'dress', 'R5R3C1', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL5.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL6.webp', NULL, '2023-07-27 07:43:55', '2023-07-27 09:42:12'),
(90, 'WLG002SEP21GC', 'Yellow Stretchable Legging', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R4C1', 'https://api.weemax.in/api/page/public/bbdad7af-d03f-48c9-ad8f-bb3eae4b3f3823.webp', 'https://api.weemax.in/api/page/public/bbdad7af-d03f-48c9-ad8f-bb3eae4b3f38ew.webp', NULL, NULL, '2023-07-27 07:48:14', '2023-07-29 09:22:51');
INSERT INTO `Product` (`productId`, `code`, `productTitle`, `description`, `mrpPrice`, `normalPrice`, `offerPrice`, `gst`, `hsn`, `coins`, `status`, `categoryId`, `subCategoryId`, `type`, `inventorySlab`, `assetOne`, `assetTwo`, `assetThree`, `assetFour`, `createdAt`, `updatedAt`) VALUES
(91, 'WLG001SEP21GC', 'White Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'draft', 2, 15, 'dress', 'R5RC1', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_1.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_4.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_5.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_6.webp', '2023-07-27 07:52:33', '2023-07-27 07:52:33'),
(92, 'WLG004SEP21GC', 'Pink Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R6C1', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_3_acd41008-eb1d-48b3-a24f-f01bb9280990.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_4_fdea9f2c-527b-4262-aa1a-d642f097b165.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_5_d6d9c10b-dad7-46c9-b2ba-f1ee492615b3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_1_51909609-34f6-4b1c-9035-40e08901dded.webp', '2023-07-27 07:57:11', '2023-07-27 09:42:19'),
(93, 'WLG005SEP21GC', 'Red Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R1C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-460533135-red-MODEL.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-460533135-red-MODEL3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-460533135-red-MODEL2.webp', NULL, '2023-07-27 07:59:13', '2023-07-27 09:42:55'),
(94, 'WLG006SEP21GC', 'Royal Blue Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R2C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f2_69221e17-2599-4a70-b6cf-5da4b7a0e853.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f3_47be7f00-a889-4326-b12b-b3ee3d8b4c7d.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f4_4cb1d58a-3010-49bc-9b1c-674e3630723c.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5_d6d63e2d-3b2c-4ea6-8dd0-76a9eef8116a.webp', '2023-07-27 08:01:17', '2023-07-27 09:43:06'),
(95, 'WLG007SEP21GC', 'Mocassin Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R3C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_1.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_4.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_5.webp', '2023-07-27 08:03:22', '2023-07-27 09:43:13'),
(96, 'WLG008SEP21GC', 'Orange Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R4C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-464887137-orange-MODEL3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-464887137-orange-MODEL7.webp', NULL, NULL, '2023-07-27 08:05:28', '2023-07-27 09:43:20'),
(97, 'WKI0028JLY23RA', 'Cream Kurti+Pant Set', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti & Pant, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 999, 649, 379, 5, '621142', 4, 'published', 2, 8, 'dress', 'R4R5C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (3).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (5).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (1).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (7).jpg', '2023-07-27 08:36:26', '2023-07-27 09:43:30'),
(98, 'WKI0029JLY23RA', 'Garnet Pink Kurti & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 649, 379, 5, '621142', 4, 'published', 2, 8, 'dress', 'R4R6C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (5).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (7).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (2).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (1).jpg', '2023-07-27 08:41:21', '2023-07-27 09:43:38'),
(99, 'MSE001AUG21BX', 'Men\'s White Casual Shoe', '\"Step into laid-back sophistication with our Men\'s Casual Shoe, a perfect fusion of style and ease, ensuring a seamless transition from day to night.\"', 1200, 750, 450, 12, '6402', 5, 'published', 1, 3, 'dress', 'COMMON', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8IMG-20210808-WA0006 (1).jpg', NULL, NULL, NULL, '2023-07-27 09:26:30', '2023-07-27 09:43:44'),
(100, 'MSE002NOV21BX', 'Men\'s Navy Blue Loafer', '\"Experience refined comfort and effortless style with our Loafers, a versatile footwear option that effortlessly transitions from formal events to casual outings, making them a must-have addition to your wardrobe.\"', 1200, 750, 450, 12, '6402', 5, 'published', 1, 3, 'dress', 'Common', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8026.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8023.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8025.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8024.jpg', '2023-07-27 09:30:16', '2023-07-29 09:27:17'),
(101, 'MWH001', 'Men\'s SS Analog Watch', '\"Timeless sophistication meets precision engineering in this sleek and stylish men\'s watch, the perfect blend of form and function for any occasion.\"', 999, 550, 299, 18, '9102', 4, 'published', 1, 5, 'accessories', 'Common', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49J-3.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49J-1.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49J-2.jpg', NULL, '2023-07-27 12:10:18', '2023-07-27 12:13:22'),
(102, 'WWH001', 'Women\'s SS Analog Watch', '\"Elegance meets precision with our women\'s analog watch, featuring a timeless design and reliable quartz movement for the perfect blend of style and functionality.\"', 999, 550, 299, 18, '9102', 4, 'published', 2, 12, 'accessories', 'Common', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49L-2.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49L-3.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49L-1.jpg', NULL, '2023-07-27 12:12:40', '2023-07-27 12:13:10'),
(103, 'CWH001', 'Couple\'s SS Analog Watch', '\"Embrace a shared journey with our couple\'s analog watch, crafted with precision engineering and a symmetrical design, symbolizing the timeless bond you share with your partner.\"', 1999, 999, 550, 18, '9102', 6, 'published', 4, 17, 'accessories', 'Common', 'https://api.weemax.in/api/page/public/8a187a80-b0d8-4dcb-90af-ed834f0c534fJ L-3.jpg', NULL, NULL, NULL, '2023-07-27 12:20:51', '2023-07-27 12:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `ProductCategory`
--

CREATE TABLE `ProductCategory` (
  `categoryId` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active' COMMENT 'active, deleted',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ProductCategory`
--

INSERT INTO `ProductCategory` (`categoryId`, `name`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Men', 'active', '2023-07-23 19:08:17', '2023-07-23 19:08:49'),
(2, 'Women', 'active', '2023-07-23 19:10:06', '2023-07-23 19:10:06'),
(3, 'Foods & Beverages', 'active', '2023-07-23 19:11:46', '2023-07-23 19:11:46'),
(4, 'Others', 'active', '2023-07-23 19:21:00', '2023-07-23 19:21:00'),
(5, 'Test', 'deleted', '2023-07-24 03:24:36', '2023-07-29 09:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `ProductInventory`
--

CREATE TABLE `ProductInventory` (
  `inventoryId` bigint(20) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `colorCode` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'active' COMMENT 'active,removed',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ProductInventory`
--

INSERT INTO `ProductInventory` (`inventoryId`, `productId`, `size`, `color`, `colorCode`, `quantity`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 's', 'red', '', 10, 'active', '2023-07-23 19:35:03', '2023-07-23 19:35:54'),
(2, 1, 'm', 'red', '', 10, 'active', '2023-07-23 19:35:34', '2023-07-23 19:35:58'),
(3, 1, 'l', 'red', '', 10, 'active', '2023-07-23 19:35:36', '2023-07-23 19:36:02'),
(4, 1, '', '', '', 0, 'removed', '2023-07-23 19:37:06', '2023-07-23 19:37:11'),
(5, 3, 's', 'red', '', 10, 'active', '2023-07-23 19:55:10', '2023-07-23 19:55:14'),
(6, 4, 's', 'red', '#4FCB19', 10, 'active', '2023-07-23 19:57:54', '2023-07-23 20:03:58'),
(7, 4, 'm', 'red', '#4FCB19', 10, 'active', '2023-07-23 19:58:00', '2023-07-23 20:03:58'),
(8, 5, 'S', 'red', '#F23535', 5, 'active', '2023-07-24 03:25:49', '2023-07-24 03:25:49'),
(9, 6, 'A', 'red', '#E83535', 5, 'active', '2023-07-24 06:44:04', '2023-07-24 06:44:04'),
(10, 7, 'S', 'blue', '#0C4F9E', 10, 'active', '2023-07-24 06:56:13', '2023-07-24 06:56:13'),
(11, 7, 'L', 'blue', '#0C4F9E', 10, 'active', '2023-07-24 06:56:13', '2023-07-24 06:56:13'),
(12, 7, 'M', 'blue', '#0C4F9E', 10, 'active', '2023-07-24 06:56:13', '2023-07-24 06:56:13'),
(13, 8, 's', 'blue ', '#1C69BB', 5, 'active', '2023-07-24 08:36:29', '2023-07-24 11:35:59'),
(14, 8, 'm', 'blue ', '#1C69BB', 10, 'active', '2023-07-24 08:36:29', '2023-07-24 08:36:29'),
(15, 8, 'l', 'blue ', '#1C69BB', 9, 'active', '2023-07-24 08:36:29', '2023-07-24 11:25:10'),
(16, 9, 's', 'pedestal', '#80E3FA', 8, 'active', '2023-07-24 08:40:32', '2023-07-24 10:46:09'),
(17, 9, 'm', 'pedestal', '#80E3FA', 12, 'active', '2023-07-24 08:40:32', '2023-07-24 08:40:32'),
(18, 9, 'l', 'pedestal', '#80E3FA', 12, 'active', '2023-07-24 08:40:32', '2023-07-24 08:40:32'),
(19, 10, 's', 'yellow', '#F3F5EA', 10, 'active', '2023-07-24 08:42:23', '2023-07-24 08:42:23'),
(20, 10, 'm', 'yellow', '#F3F5EA', 10, 'active', '2023-07-24 08:42:23', '2023-07-24 08:42:23'),
(21, 11, 'S', 'Cobalt Blue', '#0852A7', 0, 'active', '2023-07-24 09:28:16', '2023-07-25 18:47:23'),
(22, 11, 'L', 'Cobalt Blue', '#0852A7', 0, 'active', '2023-07-24 09:28:16', '2023-07-26 14:38:48'),
(23, 11, 'M', 'Cobalt Blue', '#0852A7', 0, 'active', '2023-07-24 09:28:16', '2023-07-26 17:50:17'),
(24, 11, 'XXL', 'Cobalt Blue', '#0852A7', 0, 'active', '2023-07-24 09:28:16', '2023-07-27 10:05:24'),
(25, 11, 'XL', 'Cobalt Blue', '#0852A7', 5, 'removed', '2023-07-24 09:28:16', '2023-07-28 03:16:49'),
(26, 12, 'S', 'Buttercream Yellow', '#F5EEB8', 0, 'active', '2023-07-24 13:04:05', '2023-07-26 17:47:47'),
(27, 12, 'M', 'Buttercream Yellow', '#F5EEB8', 0, 'active', '2023-07-24 13:04:05', '2023-07-26 17:50:17'),
(28, 12, 'XL', 'Buttercream Yellow', '#F5EEB8', 3, 'removed', '2023-07-24 13:04:05', '2023-07-28 03:17:42'),
(29, 12, 'XXL', 'Buttercream Yellow', '#F5EEB8', 2, 'removed', '2023-07-24 13:04:05', '2023-07-28 03:17:44'),
(30, 12, 'L', 'Buttercream Yellow', '#F5EEB8', 7, 'removed', '2023-07-24 13:04:05', '2023-07-28 03:17:45'),
(31, 13, 'S', 'Cyan Blue', '#B0E3FE', 2, 'active', '2023-07-24 13:14:00', '2023-07-26 14:38:48'),
(32, 13, 'M', 'Cyan Blue', '#B0E3FE', 5, 'active', '2023-07-24 13:14:00', '2023-07-24 13:14:00'),
(33, 13, 'L', 'Cyan Blue', '#B0E3FE', 7, 'active', '2023-07-24 13:14:00', '2023-07-24 13:14:00'),
(34, 13, 'XXL', 'Cyan Blue', '#B0E3FE', 2, 'active', '2023-07-24 13:14:00', '2023-07-24 13:14:00'),
(35, 13, 'XL', 'Cyan Blue', '#B0E3FE', 1, 'active', '2023-07-24 13:14:00', '2023-07-24 13:14:00'),
(36, 14, 'S', 'Charcoal Grey', '#5B928F', 0, 'active', '2023-07-24 13:20:35', '2023-07-24 13:20:35'),
(37, 14, 'M', 'Charcoal Grey', '#5B928F', 5, 'active', '2023-07-24 13:20:35', '2023-07-24 13:20:35'),
(38, 14, 'L', 'Charcoal Grey', '#5B928F', 7, 'active', '2023-07-24 13:20:35', '2023-07-24 13:20:35'),
(39, 14, 'XL', 'Charcoal Grey', '#5B928F', 3, 'active', '2023-07-24 13:20:35', '2023-07-24 13:20:35'),
(40, 14, 'XXL', 'Charcoal Grey', '#5B928F', 1, 'active', '2023-07-24 13:20:35', '2023-07-24 13:20:35'),
(41, 15, 'S', 'Pastel Green', '#7BB5C9', 3, 'active', '2023-07-24 13:23:56', '2023-07-24 13:23:56'),
(42, 15, 'M', 'Pastel Green', '#7BB5C9', 5, 'active', '2023-07-24 13:23:56', '2023-07-24 13:23:56'),
(43, 15, 'L', 'Pastel Green', '#7BB5C9', 7, 'active', '2023-07-24 13:23:56', '2023-07-24 13:23:56'),
(44, 15, 'XL', 'Pastel Green', '#7BB5C9', 0, 'active', '2023-07-24 13:23:56', '2023-07-28 08:45:54'),
(45, 15, 'XXL', 'Pastel Green', '#7BB5C9', 2, 'active', '2023-07-24 13:23:56', '2023-07-24 13:23:56'),
(46, 16, 'S', 'Snow White', '#F1F5F1', 7, 'active', '2023-07-24 13:28:21', '2023-07-24 13:28:21'),
(47, 16, 'M', 'Snow White', '#F1F5F1', 11, 'active', '2023-07-24 13:28:21', '2023-07-24 13:28:21'),
(48, 16, 'L', 'Snow White', '#F1F5F1', 13, 'active', '2023-07-24 13:28:21', '2023-07-24 13:28:21'),
(49, 16, 'XL', 'Snow White', '#F1F5F1', 5, 'active', '2023-07-24 13:28:21', '2023-07-30 12:00:54'),
(50, 16, 'XXL', 'Snow White', '#F1F5F1', 1, 'active', '2023-07-24 13:28:21', '2023-07-24 13:28:21'),
(51, 17, 'S', 'Athens Grey', '#DCDDDD', 3, 'active', '2023-07-24 13:31:43', '2023-07-24 13:31:43'),
(52, 17, 'L', 'Athens Grey', '#DCDDDD', 7, 'active', '2023-07-24 13:31:43', '2023-07-24 13:31:43'),
(53, 17, 'M', 'Athens Grey', '#DCDDDD', 3, 'active', '2023-07-24 13:31:43', '2023-07-24 13:31:43'),
(54, 17, 'XL', 'Athens Grey', '#DCDDDD', 0, 'active', '2023-07-24 13:31:43', '2023-07-24 13:31:43'),
(55, 17, 'XXL', 'Athens Grey', '#DCDDDD', 0, 'active', '2023-07-24 13:31:43', '2023-07-24 13:31:43'),
(56, 18, 'S', 'Shadow Black', '#1B1610', 5, 'active', '2023-07-24 13:38:44', '2023-07-24 13:38:44'),
(57, 18, 'M', 'Shadow Black', '#1B1610', 7, 'active', '2023-07-24 13:38:44', '2023-07-24 13:38:44'),
(58, 18, 'L', 'Shadow Black', '#1B1610', 11, 'active', '2023-07-24 13:38:44', '2023-07-24 13:38:44'),
(59, 18, 'XXL', 'Shadow Black', '#1B1610', 0, 'active', '2023-07-24 13:38:44', '2023-07-24 13:38:44'),
(60, 18, 'XL', 'Shadow Black', '#1B1610', 6, 'active', '2023-07-24 13:38:44', '2023-07-24 13:38:44'),
(61, 19, 'S', 'Black', '#090808', 4, 'active', '2023-07-24 13:42:56', '2023-07-24 13:42:56'),
(62, 19, 'L', 'Black', '#090808', 9, 'active', '2023-07-24 13:42:56', '2023-07-24 13:42:56'),
(63, 19, 'M', 'Black', '#090808', 6, 'active', '2023-07-24 13:42:56', '2023-07-24 13:42:56'),
(64, 19, 'XL', 'Black', '#090808', 4, 'active', '2023-07-24 13:42:56', '2023-07-24 13:42:56'),
(65, 19, 'XXL', 'Black', '#090808', 2, 'active', '2023-07-24 13:42:56', '2023-07-24 13:42:56'),
(66, 20, 'S', 'Olive Green', '#1D2729', 0, 'active', '2023-07-24 13:47:45', '2023-07-24 13:47:45'),
(67, 20, 'S', 'Olive Green', '#1D2729', 5, 'active', '2023-07-24 13:47:45', '2023-07-28 03:23:12'),
(68, 20, 'M', 'Olive Green', '#1D2729', 5, 'active', '2023-07-24 13:47:45', '2023-07-28 03:23:15'),
(69, 20, 'L', 'Olive Green', '#1D2729', 9, 'active', '2023-07-24 13:47:45', '2023-07-28 03:23:18'),
(70, 20, 'XL', 'Olive Green', '#1D2729', 2, 'active', '2023-07-24 13:47:45', '2023-07-28 03:23:20'),
(71, 21, 'S', 'Bottle Green', '#19504D', 4, 'active', '2023-07-24 13:51:45', '2023-07-24 13:51:45'),
(72, 21, 'L', 'Bottle Green', '#19504D', 8, 'active', '2023-07-24 13:51:45', '2023-07-24 13:51:45'),
(73, 21, 'M', 'Bottle Green', '#19504D', 5, 'active', '2023-07-24 13:51:45', '2023-07-24 13:51:45'),
(74, 21, 'XL', 'Bottle Green', '#19504D', 5, 'active', '2023-07-24 13:51:45', '2023-07-24 13:51:45'),
(75, 21, 'XXL', 'Bottle Green', '#19504D', 2, 'active', '2023-07-24 13:51:45', '2023-07-24 13:51:45'),
(76, 22, 'S', 'Charcoal Grey', '#587293', 3, 'active', '2023-07-24 14:00:40', '2023-07-24 14:00:40'),
(77, 22, 'L', 'Charcoal Grey', '#587293', 7, 'active', '2023-07-24 14:00:40', '2023-07-24 14:00:40'),
(78, 22, 'M', 'Charcoal Grey', '#587293', 3, 'active', '2023-07-24 14:00:40', '2023-07-24 14:00:40'),
(79, 22, 'XL', 'Charcoal Grey', '#587293', 0, 'active', '2023-07-24 14:00:40', '2023-07-28 08:45:54'),
(80, 22, 'XXL', 'Charcoal Grey', '#587293', 1, 'active', '2023-07-24 14:00:40', '2023-07-24 14:00:40'),
(81, 23, 'S', 'Black', '#000000', 8, 'active', '2023-07-24 17:23:08', '2023-07-24 17:23:08'),
(82, 24, 'S', 'White ', '#FFFFFF', 10, 'active', '2023-07-24 17:26:09', '2023-07-24 17:26:09'),
(83, 25, 'S', 'Pink & Grey', '#DBC6C5', 6, 'active', '2023-07-24 17:31:03', '2023-07-27 09:42:42'),
(84, 26, 'S', 'Navy Blue', '#000080', 9, 'active', '2023-07-24 17:33:16', '2023-07-24 17:33:16'),
(85, 27, 'S', 'Elephant grey', '#25262B', 13, 'active', '2023-07-24 17:37:37', '2023-07-24 17:37:37'),
(86, 28, 'S', 'Sandal', '#C8AE96', 11, 'active', '2023-07-24 17:46:09', '2023-07-24 17:46:09'),
(87, 31, 'S', 'Coral Red', '#FF4040', 4, 'active', '2023-07-24 18:03:55', '2023-07-24 18:03:55'),
(88, 32, 'S', 'Navy Blue', '#283849', 1, 'active', '2023-07-24 18:06:31', '2023-07-24 18:06:31'),
(89, 33, 'S', 'Blue', '#0C234B', 2, 'active', '2023-07-24 18:09:24', '2023-07-24 18:09:24'),
(90, 34, 'S', 'Multi Color', '#8A7F74', 5, 'active', '2023-07-24 18:12:26', '2023-07-24 18:12:26'),
(91, 35, 'S', 'Forest Green', '#014421', 8, 'active', '2023-07-24 18:35:24', '2023-07-24 18:35:24'),
(92, 36, 'S', 'Black & White', '#646363', 3, 'active', '2023-07-24 18:37:41', '2023-07-24 18:37:41'),
(93, 37, 'S', 'Yale Blue', '#00008B', 5, 'active', '2023-07-24 18:40:41', '2023-07-24 18:40:41'),
(94, 23, 'M', 'Black', '#000000', 0, 'active', '2023-07-24 18:41:41', '2023-07-24 18:41:43'),
(95, 23, 'L', 'Black', '#000000', 0, 'active', '2023-07-24 18:41:56', '2023-07-24 18:41:57'),
(96, 23, 'XL', 'Black', '#000000', 0, 'active', '2023-07-24 18:58:30', '2023-07-24 18:58:36'),
(97, 23, 'XXL', 'Black', '#000000', 0, 'active', '2023-07-24 18:58:50', '2023-07-24 18:58:52'),
(98, 24, 'M', 'White ', '#FFFFFF', 10, 'active', '2023-07-24 18:59:22', '2023-07-24 18:59:45'),
(99, 24, 'L', 'White ', '#FFFFFF', 23, 'active', '2023-07-24 18:59:57', '2023-07-24 18:59:59'),
(100, 24, 'XL', 'White ', '#FFFFFF', 10, 'active', '2023-07-24 19:00:00', '2023-07-24 19:00:13'),
(101, 24, 'XXL', 'White ', '#FFFFFF', 0, 'active', '2023-07-24 19:00:14', '2023-07-24 19:00:17'),
(102, 25, 'M', 'Pink & Grey', '#DBC6C5', 3, 'active', '2023-07-24 19:01:02', '2023-07-24 19:01:19'),
(103, 25, 'L', 'Pink & Grey', '#DBC6C5', 2, 'active', '2023-07-24 19:01:20', '2023-07-24 19:01:27'),
(104, 25, 'XXL', 'Pink & Grey', '#DBC6C5', 1, 'active', '2023-07-24 19:01:28', '2023-07-24 19:01:32'),
(105, 26, 'L', 'Navy Blue', '#000080', 12, 'active', '2023-07-24 19:01:50', '2023-07-24 19:02:03'),
(106, 27, 'M', 'Elephant grey', '#25262B', 1, 'active', '2023-07-24 19:02:51', '2023-07-24 19:03:02'),
(107, 27, 'L', 'Elephant grey', '#25262B', 3, 'active', '2023-07-24 19:03:03', '2023-07-24 19:03:12'),
(108, 28, 'M', 'Sandal', '#C8AE96', 11, 'active', '2023-07-24 19:03:39', '2023-07-24 19:03:49'),
(109, 28, 'L', 'Sandal', '#C8AE96', 28, 'active', '2023-07-24 19:03:50', '2023-07-24 19:04:00'),
(110, 28, 'XL', 'Sandal', '#C8AE96', 15, 'active', '2023-07-24 19:04:07', '2023-07-24 19:04:11'),
(111, 29, 'S', 'Multi Color', '#AD9F80', 2, 'active', '2023-07-24 19:04:50', '2023-07-24 19:05:43'),
(112, 29, 'XXL', 'Multi Color', '#AD9F80', 3, 'removed', '2023-07-24 19:05:04', '2023-07-24 19:08:27'),
(113, 30, 'S', 'White', '#FFFBFB', 2, 'active', '2023-07-24 19:06:30', '2023-07-24 19:06:58'),
(114, 31, 'L', 'Coral Red', '#FF4040', 6, 'active', '2023-07-24 19:07:36', '2023-07-24 19:08:10'),
(115, 29, 'XL', 'Multi Color', '#AD9F80', 0, 'active', '2023-07-24 19:08:29', '2023-07-31 07:39:30'),
(116, 29, 'XXL', 'Multi Color', '#AD9F80', 3, 'active', '2023-07-24 19:08:34', '2023-07-24 19:08:37'),
(117, 32, 'M', 'Navy Blue', '#283849', 0, 'removed', '2023-07-24 19:08:51', '2023-07-24 19:09:12'),
(118, 33, 'L', 'Blue', '#0C234B', 1, 'active', '2023-07-24 19:09:38', '2023-07-24 19:09:41'),
(119, 33, 'XL', 'Blue', '#0C234B', 1, 'active', '2023-07-24 19:09:41', '2023-07-24 19:09:46'),
(120, 34, 'M', 'Multi Color', '#8A7F74', 4, 'active', '2023-07-24 19:10:15', '2023-07-24 19:10:18'),
(121, 34, 'L', 'Multi Color', '#8A7F74', 10, 'active', '2023-07-24 19:10:18', '2023-07-24 19:10:21'),
(122, 34, 'XL', 'Multi Color', '#8A7F74', 4, 'active', '2023-07-24 19:10:22', '2023-07-24 19:10:27'),
(123, 34, 'XXL', 'Multi Color', '#8A7F74', 3, 'active', '2023-07-24 19:10:28', '2023-07-24 19:10:32'),
(124, 36, 'L', 'Black & White', '#646363', 1, 'active', '2023-07-24 19:11:26', '2023-07-24 19:11:28'),
(125, 37, 'L', 'Yale Blue', '#00008B', 1, 'active', '2023-07-24 19:12:06', '2023-07-24 19:12:08'),
(126, 38, 'S', 'Black', '#000000', 2, 'active', '2023-07-24 19:28:40', '2023-07-28 10:03:04'),
(127, 38, 'M', 'Black', '#000000', 2, 'active', '2023-07-24 19:28:40', '2023-07-27 14:35:44'),
(128, 38, 'XL', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40', '2023-07-24 19:28:40'),
(129, 38, 'L', 'Black', '#000000', 2, 'active', '2023-07-24 19:28:40', '2023-07-27 14:46:41'),
(130, 38, 'XXL', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40', '2023-07-24 19:28:40'),
(131, 39, 'S', 'Pantone Red', '#874930', 2, 'active', '2023-07-24 19:35:52', '2023-07-30 20:02:03'),
(132, 39, 'M', 'Pantone Red', '#874930', 2, 'active', '2023-07-24 19:35:52', '2023-07-27 12:58:13'),
(133, 39, 'XL', 'Pantone Red', '#874930', 2, 'active', '2023-07-24 19:35:52', '2023-07-28 08:45:54'),
(134, 39, 'L', 'Pantone Red', '#874930', 3, 'active', '2023-07-24 19:35:52', '2023-07-24 19:35:52'),
(135, 39, 'XXL', 'Pantone Red', '#874930', 3, 'active', '2023-07-24 19:35:52', '2023-07-24 19:35:52'),
(136, 40, 'S', 'Olive Green', '#2B352F', 2, 'active', '2023-07-24 20:24:57', '2023-07-30 20:02:03'),
(137, 40, 'L', 'Olive Green', '#2B352F', 2, 'active', '2023-07-24 20:24:57', '2023-07-27 16:46:34'),
(138, 40, 'XL', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(139, 40, 'XXL', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(140, 40, 'M', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(141, 41, 'S', 'White', '#FFFFFF', 3, 'active', '2023-07-24 20:29:56', '2023-07-24 20:29:56'),
(142, 41, 'L', 'White', '#FFFFFF', 1, 'active', '2023-07-24 20:29:56', '2023-07-27 18:06:28'),
(143, 41, 'M', 'White', '#FFFFFF', 2, 'active', '2023-07-24 20:29:56', '2023-07-27 13:44:42'),
(144, 41, 'XL', 'White', '#FFFFFF', 3, 'active', '2023-07-24 20:29:56', '2023-07-24 20:29:56'),
(145, 41, 'XXL', 'White', '#FFFFFF', 3, 'active', '2023-07-24 20:29:56', '2023-07-24 20:29:56'),
(146, 42, 'S', 'Blush pink', '#FFC2C5', 3, 'active', '2023-07-24 20:37:41', '2023-07-24 20:37:41'),
(147, 42, 'L', 'Blush pink', '#FFC2C5', 3, 'active', '2023-07-24 20:37:41', '2023-07-24 20:37:41'),
(148, 42, 'XL', 'Blush pink', '#FFC2C5', 2, 'active', '2023-07-24 20:37:41', '2023-07-28 15:34:25'),
(149, 42, 'M', 'Blush pink', '#FFC2C5', 2, 'active', '2023-07-24 20:37:41', '2023-07-27 13:07:27'),
(150, 42, 'XXL', 'Blush pink', '#FFC2C5', 3, 'active', '2023-07-24 20:37:41', '2023-07-24 20:37:41'),
(151, 43, 'S', 'Sap Green', '#4D5200', 3, 'active', '2023-07-24 20:40:51', '2023-07-24 20:40:51'),
(152, 43, 'L', 'Sap Green', '#4D5200', 3, 'active', '2023-07-24 20:40:51', '2023-07-24 20:40:51'),
(153, 43, 'M', 'Sap Green', '#4D5200', 3, 'active', '2023-07-24 20:40:51', '2023-07-24 20:40:51'),
(154, 43, 'XL', 'Sap Green', '#4D5200', 3, 'active', '2023-07-24 20:40:51', '2023-07-24 20:40:51'),
(155, 43, 'XXL', 'Sap Green', '#4D5200', 3, 'active', '2023-07-24 20:40:51', '2023-07-24 20:40:51'),
(156, 44, 'S', 'Red', '#E35C5C', 3, 'active', '2023-07-24 20:48:00', '2023-07-24 20:48:00'),
(157, 44, 'L', 'Red', '#E35C5C', 3, 'active', '2023-07-24 20:48:00', '2023-07-24 20:48:00'),
(158, 44, 'M', 'Red', '#E35C5C', 3, 'active', '2023-07-24 20:48:00', '2023-07-24 20:48:00'),
(159, 44, 'XXL', 'Red', '#E35C5C', 3, 'active', '2023-07-24 20:48:00', '2023-07-24 20:48:00'),
(160, 44, 'XL', 'Red', '#E35C5C', 3, 'active', '2023-07-24 20:48:00', '2023-07-24 20:48:00'),
(161, 45, 'S', 'Black', '#000000', 3, 'active', '2023-07-24 20:51:27', '2023-07-24 20:51:27'),
(162, 45, 'L', 'Black', '#000000', 3, 'active', '2023-07-24 20:51:27', '2023-07-24 20:51:27'),
(163, 45, 'M', 'Black', '#000000', 2, 'active', '2023-07-24 20:51:27', '2023-07-27 14:15:46'),
(164, 45, 'XL', 'Black', '#000000', 3, 'active', '2023-07-24 20:51:27', '2023-07-24 20:51:27'),
(165, 45, 'XXL', 'Black', '#000000', 3, 'active', '2023-07-24 20:51:27', '2023-07-24 20:51:27'),
(166, 46, 'S', 'Blue', '#3F63C7', 3, 'active', '2023-07-24 20:53:31', '2023-07-24 20:53:31'),
(167, 46, 'L', 'Blue', '#3F63C7', 3, 'active', '2023-07-24 20:53:31', '2023-07-24 20:53:31'),
(168, 46, 'XL', 'Blue', '#3F63C7', 3, 'active', '2023-07-24 20:53:31', '2023-07-24 20:53:31'),
(169, 46, 'M', 'Blue', '#3F63C7', 3, 'active', '2023-07-24 20:53:31', '2023-07-24 20:53:31'),
(170, 46, 'XXL', 'Blue', '#3F63C7', 3, 'active', '2023-07-24 20:53:31', '2023-07-24 20:53:31'),
(171, 47, 'S', 'White', '#FAF9F9', 3, 'active', '2023-07-24 21:04:47', '2023-07-24 21:04:47'),
(172, 47, 'M', 'White', '#FAF9F9', 3, 'active', '2023-07-24 21:04:47', '2023-07-24 21:04:47'),
(173, 47, 'L', 'White', '#FAF9F9', 3, 'active', '2023-07-24 21:04:47', '2023-07-24 21:04:47'),
(174, 47, 'XXL', 'White', '#FAF9F9', 2, 'active', '2023-07-24 21:04:47', '2023-07-24 21:04:47'),
(175, 47, 'XL', 'White', '#FAF9F9', 3, 'active', '2023-07-24 21:04:47', '2023-07-24 21:04:47'),
(176, 48, 'S', 'Pink', '#FADDDB', 3, 'active', '2023-07-24 21:09:13', '2023-07-24 21:09:13'),
(177, 48, 'L', 'Pink', '#FADDDB', 3, 'active', '2023-07-24 21:09:13', '2023-07-24 21:09:13'),
(178, 48, 'M', 'Pink', '#FADDDB', 3, 'active', '2023-07-24 21:09:13', '2023-07-24 21:09:13'),
(179, 48, 'XXL', 'Pink', '#FADDDB', 2, 'active', '2023-07-24 21:09:13', '2023-07-24 21:09:13'),
(180, 48, 'XL', 'Pink', '#FADDDB', 3, 'active', '2023-07-24 21:09:13', '2023-07-24 21:09:13'),
(181, 49, 'S', 'Dark Blue', '#283348', 2, 'active', '2023-07-25 11:17:11', '2023-07-25 11:17:11'),
(182, 49, 'XL', 'Dark Blue', '#283348', 2, 'active', '2023-07-25 11:17:11', '2023-07-25 11:17:11'),
(183, 49, 'M', 'Dark Blue', '#283348', 2, 'active', '2023-07-25 11:17:11', '2023-07-25 11:17:11'),
(184, 49, 'XXL', 'Dark Blue', '#283348', 1, 'active', '2023-07-25 11:17:11', '2023-07-25 11:17:11'),
(185, 49, 'L', 'Dark Blue', '#283348', 2, 'active', '2023-07-25 11:17:11', '2023-07-25 11:17:11'),
(186, 50, 'S', 'Light Blue', '#68D7E6', 2, 'active', '2023-07-25 11:20:17', '2023-07-25 11:20:17'),
(187, 50, 'L', 'Light Blue', '#68D7E6', 2, 'active', '2023-07-25 11:20:17', '2023-07-25 11:20:17'),
(188, 50, 'XL', 'Light Blue', '#68D7E6', 2, 'active', '2023-07-25 11:20:17', '2023-07-25 11:20:17'),
(189, 50, 'XXL', 'Light Blue', '#68D7E6', 1, 'active', '2023-07-25 11:20:17', '2023-07-25 11:20:17'),
(190, 50, 'M', 'Light Blue', '#68D7E6', 2, 'active', '2023-07-25 11:20:17', '2023-07-25 11:20:17'),
(191, 51, 'S', 'Mustard', '#CC9433', 4, 'active', '2023-07-25 11:41:04', '2023-07-25 11:41:04'),
(192, 51, 'L', 'Mustard', '#CC9433', 4, 'active', '2023-07-25 11:41:04', '2023-07-25 11:41:04'),
(193, 51, 'XXL', 'Mustard', '#CC9433', 4, 'active', '2023-07-25 11:41:04', '2023-07-25 11:41:04'),
(194, 51, 'XL', 'Mustard', '#CC9433', 4, 'active', '2023-07-25 11:41:04', '2023-07-25 11:41:04'),
(195, 51, 'M', 'Mustard', '#CC9433', 4, 'active', '2023-07-25 11:41:04', '2023-07-25 11:41:04'),
(196, 52, 'S', 'Celeste Blue', '#B0D4D2', 4, 'active', '2023-07-25 11:47:16', '2023-07-25 11:47:16'),
(197, 52, 'L', 'Celeste Blue', '#B0D4D2', 4, 'active', '2023-07-25 11:47:16', '2023-07-25 11:47:16'),
(198, 52, 'M', 'Celeste Blue', '#B0D4D2', 4, 'active', '2023-07-25 11:47:16', '2023-07-25 11:47:16'),
(199, 52, 'XL', 'Celeste Blue', '#B0D4D2', 4, 'active', '2023-07-25 11:47:16', '2023-07-25 11:47:16'),
(200, 52, 'XXL', 'Celeste Blue', '#B0D4D2', 4, 'active', '2023-07-25 11:47:16', '2023-07-25 11:47:16'),
(201, 53, 'L', 'Lavender', '#BFA6B9', 4, 'active', '2023-07-25 11:52:18', '2023-07-25 11:52:18'),
(202, 53, 'M', 'Lavender', '#BFA6B9', 4, 'active', '2023-07-25 11:52:18', '2023-07-25 11:52:18'),
(203, 53, 'XL', 'Lavender', '#BFA6B9', 4, 'active', '2023-07-25 11:52:18', '2023-07-25 11:52:18'),
(204, 53, 'XXL', 'Lavender', '#BFA6B9', 4, 'active', '2023-07-25 11:52:18', '2023-07-25 11:52:18'),
(205, 53, 'S', 'Lavender', '#BFA6B9', 4, 'active', '2023-07-25 11:52:18', '2023-07-25 11:52:18'),
(206, 54, 'S', 'Mustard', '#E2AC40', 4, 'active', '2023-07-25 12:36:25', '2023-07-25 12:36:25'),
(207, 54, 'L', 'Mustard', '#E2AC40', 4, 'active', '2023-07-25 12:36:25', '2023-07-25 12:36:25'),
(208, 54, 'XL', 'Mustard', '#E2AC40', 4, 'active', '2023-07-25 12:36:25', '2023-07-25 12:36:25'),
(209, 54, 'M', 'Mustard', '#E2AC40', 4, 'active', '2023-07-25 12:36:25', '2023-07-25 12:36:25'),
(210, 54, 'XXL', 'Mustard', '#E2AC40', 4, 'active', '2023-07-25 12:36:25', '2023-07-25 12:36:25'),
(211, 55, 'S', 'Pastel Pink', '#DAC0BF', 4, 'active', '2023-07-25 12:44:19', '2023-07-25 12:44:19'),
(212, 55, 'L', 'Pastel Pink', '#DAC0BF', 4, 'active', '2023-07-25 12:44:19', '2023-07-25 12:44:19'),
(213, 55, 'M', 'Pastel Pink', '#DAC0BF', 4, 'active', '2023-07-25 12:44:19', '2023-07-25 12:44:19'),
(214, 55, 'XL', 'Pastel Pink', '#DAC0BF', 4, 'active', '2023-07-25 12:44:19', '2023-07-25 12:44:19'),
(215, 55, 'XXL', 'Pastel Pink', '#DAC0BF', 4, 'active', '2023-07-25 12:44:19', '2023-07-25 12:44:19'),
(216, 56, 'S', 'Floral Red', '#D91637', 4, 'active', '2023-07-25 12:56:01', '2023-07-25 12:56:01'),
(217, 56, 'L', 'Floral Red', '#D91637', 4, 'active', '2023-07-25 12:56:01', '2023-07-25 12:56:01'),
(218, 56, 'M', 'Floral Red', '#D91637', 4, 'active', '2023-07-25 12:56:01', '2023-07-25 12:56:01'),
(219, 56, 'XL', 'Floral Red', '#D91637', 4, 'active', '2023-07-25 12:56:01', '2023-07-25 12:56:01'),
(220, 56, 'XXL', 'Floral Red', '#D91637', 4, 'active', '2023-07-25 12:56:01', '2023-07-25 12:56:01'),
(221, 57, 'S', 'Floral Blue', '#164D76', 4, 'active', '2023-07-25 13:05:27', '2023-07-25 13:05:27'),
(222, 57, 'L', 'Floral Blue', '#164D76', 4, 'active', '2023-07-25 13:05:27', '2023-07-25 13:05:27'),
(223, 57, 'XL', 'Floral Blue', '#164D76', 4, 'active', '2023-07-25 13:05:27', '2023-07-25 13:05:27'),
(224, 57, 'XXL', 'Floral Blue', '#164D76', 4, 'active', '2023-07-25 13:05:27', '2023-07-25 13:05:27'),
(225, 57, 'M', 'Floral Blue', '#164D76', 4, 'active', '2023-07-25 13:05:27', '2023-07-25 13:05:27'),
(226, 58, 'S', 'Multicolor', '#E68A3D', 4, 'active', '2023-07-25 13:09:40', '2023-07-25 13:09:40'),
(227, 58, 'M', 'Multicolor', '#E68A3D', 4, 'active', '2023-07-25 13:09:40', '2023-07-25 13:09:40'),
(228, 58, 'XXL', 'Multicolor', '#E68A3D', 4, 'active', '2023-07-25 13:09:40', '2023-07-25 13:09:40'),
(229, 58, 'L', 'Multicolor', '#E68A3D', 4, 'active', '2023-07-25 13:09:40', '2023-07-25 13:09:40'),
(230, 58, 'XL', 'Multicolor', '#E68A3D', 4, 'active', '2023-07-25 13:09:40', '2023-07-25 13:09:40'),
(231, 59, 'S', 'Multicolor', '#322C14', 4, 'active', '2023-07-25 13:13:32', '2023-07-25 13:13:32'),
(232, 59, 'M', 'Multicolor', '#322C14', 4, 'active', '2023-07-25 13:13:32', '2023-07-25 13:13:32'),
(233, 59, 'L', 'Multicolor', '#322C14', 4, 'active', '2023-07-25 13:13:32', '2023-07-25 13:13:32'),
(234, 59, 'XL', 'Multicolor', '#322C14', 4, 'active', '2023-07-25 13:13:32', '2023-07-25 13:13:32'),
(235, 59, 'XXL', 'Multicolor', '#322C14', 4, 'active', '2023-07-25 13:13:32', '2023-07-25 13:13:32'),
(236, 60, 'S', 'Blue', '#2A2C5C', 4, 'active', '2023-07-25 13:17:29', '2023-07-25 13:17:29'),
(237, 60, 'M', 'Blue', '#2A2C5C', 4, 'active', '2023-07-25 13:17:29', '2023-07-25 13:17:29'),
(238, 60, 'XXL', 'Blue', '#2A2C5C', 4, 'active', '2023-07-25 13:17:29', '2023-07-25 13:17:29'),
(239, 60, 'L', 'Blue', '#2A2C5C', 4, 'active', '2023-07-25 13:17:29', '2023-07-25 13:17:29'),
(240, 60, 'XL', 'Blue', '#2A2C5C', 4, 'active', '2023-07-25 13:17:29', '2023-07-25 13:17:29'),
(241, 61, 'S', 'Pink', '#E03152', 3, 'active', '2023-07-25 13:21:02', '2023-07-28 08:45:54'),
(242, 61, 'L', 'Pink', '#E03152', 4, 'active', '2023-07-25 13:21:02', '2023-07-25 13:21:02'),
(243, 61, 'M', 'Pink', '#E03152', 4, 'active', '2023-07-25 13:21:02', '2023-07-25 13:21:02'),
(244, 61, 'XXL', 'Pink', '#E03152', 4, 'active', '2023-07-25 13:21:02', '2023-07-25 13:21:02'),
(245, 61, 'XL', 'Pink', '#E03152', 4, 'active', '2023-07-25 13:21:02', '2023-07-25 13:21:02'),
(246, 62, 'S', 'Pastel Green', '#B6C7C1', 4, 'active', '2023-07-25 13:34:49', '2023-07-25 13:34:49'),
(247, 62, 'M', 'Pastel Green', '#B6C7C1', 4, 'active', '2023-07-25 13:34:49', '2023-07-25 13:34:49'),
(248, 62, 'XL', 'Pastel Green', '#B6C7C1', 4, 'active', '2023-07-25 13:34:49', '2023-07-25 13:34:49'),
(249, 62, 'XXL', 'Pastel Green', '#B6C7C1', 4, 'active', '2023-07-25 13:34:49', '2023-07-25 13:34:49'),
(250, 62, 'L', 'Pastel Green', '#B6C7C1', 4, 'active', '2023-07-25 13:34:49', '2023-07-25 13:34:49'),
(251, 63, 'S', 'Sage Green', '#9CC8BB', 4, 'active', '2023-07-25 13:38:21', '2023-07-25 13:38:21'),
(252, 63, 'XXL', 'Sage Green', '#9CC8BB', 4, 'active', '2023-07-25 13:38:21', '2023-07-25 13:38:21'),
(253, 63, 'M', 'Sage Green', '#9CC8BB', 3, 'active', '2023-07-25 13:38:21', '2023-07-27 16:36:13'),
(254, 63, 'L', 'Sage Green', '#9CC8BB', 4, 'active', '2023-07-25 13:38:21', '2023-07-25 13:38:21'),
(255, 63, 'XL', 'Sage Green', '#9CC8BB', 4, 'active', '2023-07-25 13:38:21', '2023-07-25 13:38:21'),
(256, 64, 'S', 'Mustard', '#F5BF41', 4, 'active', '2023-07-25 13:41:21', '2023-07-25 13:41:21'),
(257, 64, 'M', 'Mustard', '#F5BF41', 4, 'active', '2023-07-25 13:41:21', '2023-07-25 13:41:21'),
(258, 64, 'L', 'Mustard', '#F5BF41', 4, 'active', '2023-07-25 13:41:21', '2023-07-25 13:41:21'),
(259, 64, 'XXL', 'Mustard', '#F5BF41', 4, 'active', '2023-07-25 13:41:21', '2023-07-25 13:41:21'),
(260, 64, 'XL', 'Mustard', '#F5BF41', 4, 'active', '2023-07-25 13:41:21', '2023-07-25 13:41:21'),
(261, 65, 'S', 'Black', '#151515', 4, 'active', '2023-07-25 13:47:19', '2023-07-25 13:47:19'),
(262, 65, 'L', 'Black', '#151515', 4, 'active', '2023-07-25 13:47:19', '2023-07-25 13:47:19'),
(263, 65, 'M', 'Black', '#151515', 4, 'active', '2023-07-25 13:47:19', '2023-07-25 13:47:19'),
(264, 65, 'XL', 'Black', '#151515', 4, 'active', '2023-07-25 13:47:19', '2023-07-25 13:47:19'),
(265, 65, 'XXL', 'Black', '#151515', 4, 'active', '2023-07-25 13:47:19', '2023-07-25 13:47:19'),
(266, 66, 'S', 'Midnight Blue ', '#16385B', 4, 'active', '2023-07-25 13:55:32', '2023-07-25 13:55:32'),
(267, 66, 'M', 'Midnight Blue ', '#16385B', 4, 'active', '2023-07-25 13:55:33', '2023-07-25 13:55:33'),
(268, 66, 'L', 'Midnight Blue ', '#16385B', 4, 'active', '2023-07-25 13:55:33', '2023-07-25 13:55:33'),
(269, 66, 'XXL', 'Midnight Blue ', '#16385B', 4, 'active', '2023-07-25 13:55:33', '2023-07-25 13:55:33'),
(270, 66, 'XL', 'Midnight Blue ', '#16385B', 4, 'active', '2023-07-25 13:55:33', '2023-07-25 13:55:33'),
(271, 67, 'S', 'Mustard', '#DEA00D', 4, 'active', '2023-07-25 14:00:53', '2023-07-25 14:00:53'),
(272, 67, 'L', 'Mustard', '#DEA00D', 4, 'active', '2023-07-25 14:00:53', '2023-07-25 14:00:53'),
(273, 67, 'XL', 'Mustard', '#DEA00D', 4, 'active', '2023-07-25 14:00:53', '2023-07-25 14:00:53'),
(274, 67, 'M', 'Mustard', '#DEA00D', 4, 'active', '2023-07-25 14:00:53', '2023-07-25 14:00:53'),
(275, 67, 'XXL', 'Mustard', '#DEA00D', 4, 'active', '2023-07-25 14:00:53', '2023-07-25 14:00:53'),
(276, 68, 'S', 'Peach ', '#EA9A8F', 4, 'active', '2023-07-25 14:04:57', '2023-07-25 14:04:57'),
(277, 68, 'M', 'Peach ', '#EA9A8F', 4, 'active', '2023-07-25 14:04:57', '2023-07-25 14:04:57'),
(278, 68, 'XL', 'Peach ', '#EA9A8F', 4, 'active', '2023-07-25 14:04:57', '2023-07-25 14:04:57'),
(279, 68, 'XXL', 'Peach ', '#EA9A8F', 4, 'active', '2023-07-25 14:04:57', '2023-07-25 14:04:57'),
(280, 68, 'L', 'Peach ', '#EA9A8F', 4, 'active', '2023-07-25 14:04:57', '2023-07-25 14:04:57'),
(281, 69, 'S', 'Pink', '#F94465', 0, 'active', '2023-07-26 10:21:54', '2023-07-26 10:21:54'),
(282, 69, 'M', 'Pink', '#F94465', 4, 'active', '2023-07-26 10:21:54', '2023-07-26 10:21:54'),
(283, 69, 'XL', 'Pink', '#F94465', 10, 'active', '2023-07-26 10:21:54', '2023-07-26 10:21:54'),
(284, 69, 'L', 'Pink', '#F94465', 3, 'active', '2023-07-26 10:21:54', '2023-07-26 10:21:54'),
(285, 69, 'XXL', 'Pink', '#F94465', 0, 'active', '2023-07-26 10:21:54', '2023-07-26 10:21:54'),
(286, 70, 'S', 'Green', '#D8D4B7', 0, 'active', '2023-07-26 10:25:53', '2023-07-26 10:25:53'),
(287, 70, 'M', 'Green', '#D8D4B7', 0, 'active', '2023-07-26 10:25:53', '2023-07-26 10:25:53'),
(288, 70, 'L', 'Green', '#D8D4B7', 3, 'active', '2023-07-26 10:25:53', '2023-07-26 10:25:53'),
(289, 70, 'XL', 'Green', '#D8D4B7', 13, 'active', '2023-07-26 10:25:53', '2023-07-26 10:25:53'),
(290, 70, 'XXL', 'Green', '#D8D4B7', 9, 'active', '2023-07-26 10:25:53', '2023-07-26 10:25:53'),
(291, 71, 'S', 'Burgundy', '#87282E', 0, 'active', '2023-07-26 10:29:33', '2023-07-26 10:29:33'),
(292, 71, 'L', 'Burgundy', '#87282E', 6, 'active', '2023-07-26 10:29:33', '2023-07-26 10:29:33'),
(293, 71, 'M', 'Burgundy', '#87282E', 4, 'active', '2023-07-26 10:29:33', '2023-07-26 10:29:33'),
(294, 71, 'XL', 'Burgundy', '#87282E', 13, 'active', '2023-07-26 10:29:33', '2023-07-26 10:29:33'),
(295, 71, 'XXL', 'Burgundy', '#87282E', 4, 'active', '2023-07-26 10:29:33', '2023-07-26 10:29:33'),
(296, 73, 'L', 'Pistachio', '#E6E7E1', 6, 'active', '2023-07-26 10:39:55', '2023-07-26 10:39:55'),
(297, 73, 'XL', 'Pistachio', '#E6E7E1', 8, 'active', '2023-07-26 10:39:55', '2023-07-26 10:39:55'),
(298, 73, 'XXL', 'Pistachio', '#E6E7E1', 8, 'active', '2023-07-26 10:39:55', '2023-07-26 10:39:55'),
(299, 73, 'S', 'Pistachio', '#E6E7E1', 0, 'active', '2023-07-26 10:39:55', '2023-07-26 10:39:55'),
(300, 73, 'M', 'Pistachio', '#E6E7E1', 11, 'active', '2023-07-26 10:39:55', '2023-07-26 10:39:55'),
(301, 74, 'S', 'Black', '#000000', 0, 'active', '2023-07-26 10:42:30', '2023-07-26 10:42:30'),
(302, 74, 'M', 'Black', '#000000', 4, 'active', '2023-07-26 10:42:30', '2023-07-26 10:42:30'),
(303, 74, 'L', 'Black', '#000000', 6, 'active', '2023-07-26 10:42:30', '2023-07-26 10:42:30'),
(304, 74, 'XXL', 'Black', '#000000', 8, 'active', '2023-07-26 10:42:30', '2023-07-26 10:42:30'),
(305, 74, 'XL', 'Black', '#000000', 8, 'active', '2023-07-26 10:42:30', '2023-07-26 10:42:30'),
(306, 75, 'S', 'Black', '#000000', 4, 'active', '2023-07-26 10:49:38', '2023-07-26 10:49:38'),
(307, 75, 'L', 'Black', '#000000', 4, 'active', '2023-07-26 10:49:38', '2023-07-26 10:49:38'),
(308, 75, 'M', 'Black', '#000000', 4, 'active', '2023-07-26 10:49:38', '2023-07-26 10:49:38'),
(309, 75, 'XL', 'Black', '#000000', 4, 'active', '2023-07-26 10:49:38', '2023-07-26 10:49:38'),
(310, 75, 'XXL', 'Black', '#000000', 4, 'active', '2023-07-26 10:49:38', '2023-07-26 10:49:38'),
(311, 78, 'S', 'Yellow', '#EDE069', 3, 'active', '2023-07-26 19:02:08', '2023-07-26 19:02:08'),
(312, 78, 'M', 'Yellow', '#EDE069', 3, 'active', '2023-07-26 19:02:08', '2023-07-26 19:02:08'),
(313, 78, 'XXL', 'Yellow', '#EDE069', 3, 'active', '2023-07-26 19:02:08', '2023-07-26 19:02:08'),
(314, 78, 'L', 'Yellow', '#EDE069', 3, 'active', '2023-07-26 19:02:08', '2023-07-26 19:02:08'),
(315, 78, 'XL', 'Yellow', '#EDE069', 3, 'active', '2023-07-26 19:02:08', '2023-07-26 19:02:08'),
(316, 79, 'S', 'Peach', '#E38D90', 3, 'active', '2023-07-26 19:04:36', '2023-07-26 19:04:36'),
(317, 79, 'M', 'Peach', '#E38D90', 3, 'active', '2023-07-26 19:04:36', '2023-07-26 19:04:36'),
(318, 79, 'L', 'Peach', '#E38D90', 3, 'active', '2023-07-26 19:04:36', '2023-07-26 19:04:36'),
(319, 79, 'XL', 'Peach', '#E38D90', 3, 'active', '2023-07-26 19:04:36', '2023-07-26 19:04:36'),
(320, 79, 'XXL', 'Peach', '#E38D90', 3, 'active', '2023-07-26 19:04:36', '2023-07-26 19:04:36'),
(321, 80, 'S', 'Cream', '#E6DDC0', 3, 'active', '2023-07-26 19:08:56', '2023-07-26 19:08:56'),
(322, 80, 'M', 'Cream', '#E6DDC0', 3, 'active', '2023-07-26 19:08:56', '2023-07-26 19:08:56'),
(323, 80, 'XL', 'Cream', '#E6DDC0', 3, 'active', '2023-07-26 19:08:56', '2023-07-26 19:08:56'),
(324, 80, 'L', 'Cream', '#E6DDC0', 3, 'active', '2023-07-26 19:08:56', '2023-07-26 19:08:56'),
(325, 80, 'XXL', 'Cream', '#E6DDC0', 3, 'active', '2023-07-26 19:08:56', '2023-07-26 19:08:56'),
(326, 81, 'S', 'White', '#FFFFFF', 4, 'active', '2023-07-26 19:30:29', '2023-07-26 19:30:29'),
(327, 81, 'M', 'White', '#FFFFFF', 15, 'active', '2023-07-26 19:30:29', '2023-07-26 19:30:29'),
(328, 81, 'L', 'White', '#FFFFFF', 9, 'active', '2023-07-26 19:30:29', '2023-07-26 19:30:29'),
(329, 81, 'XXL', 'White', '#FFFFFF', 0, 'active', '2023-07-26 19:30:29', '2023-07-26 19:30:29'),
(330, 81, 'XL', 'White', '#FFFFFF', 8, 'active', '2023-07-26 19:30:29', '2023-07-26 19:30:29'),
(331, 82, 'S', 'Black', '#000000', 3, 'active', '2023-07-26 19:37:45', '2023-07-26 19:37:45'),
(332, 82, 'L', 'Black', '#000000', 10, 'active', '2023-07-26 19:37:45', '2023-07-26 19:37:45'),
(333, 82, 'XL', 'Black', '#000000', 4, 'active', '2023-07-26 19:37:45', '2023-07-26 19:37:45'),
(334, 82, 'M', 'Black', '#000000', 5, 'active', '2023-07-26 19:37:45', '2023-07-26 19:37:45'),
(335, 83, 'S', 'Fluorescent Green', '#ECED54', 7, 'active', '2023-07-26 19:52:05', '2023-07-26 19:52:05'),
(336, 83, 'L', 'Fluorescent Green', '#ECED54', 6, 'active', '2023-07-26 19:52:05', '2023-07-26 19:52:05'),
(337, 83, 'XL', 'Fluorescent Green', '#ECED54', 16, 'active', '2023-07-26 19:52:05', '2023-07-26 19:52:05'),
(338, 83, 'M', 'Fluorescent Green', '#ECED54', 21, 'active', '2023-07-26 19:52:05', '2023-07-26 19:52:05'),
(339, 84, 'S', 'Red', '#E13232', 2, 'active', '2023-07-26 19:53:54', '2023-07-26 19:53:54'),
(340, 84, 'L', 'Red', '#E13232', 3, 'active', '2023-07-26 19:53:54', '2023-07-26 19:53:54'),
(341, 84, 'XL', 'Red', '#E13232', 3, 'active', '2023-07-26 19:53:54', '2023-07-26 19:53:54'),
(342, 84, 'M', 'Red', '#E13232', 15, 'active', '2023-07-26 19:53:54', '2023-07-26 19:53:54'),
(343, 85, 'Free Size', 'Silver', '#DADADA', 55, 'active', '2023-07-26 20:14:02', '2023-07-26 20:14:02'),
(344, 89, 'L', 'Black', '#000000', 0, 'active', '2023-07-27 07:43:55', '2023-07-27 09:41:28'),
(345, 89, 'XL', 'Black', '#000000', 0, 'active', '2023-07-27 07:43:55', '2023-07-27 09:41:30'),
(346, 90, 'L', 'Yellow', '#F5BC22', 5, 'active', '2023-07-27 07:48:14', '2023-07-27 07:48:14'),
(347, 90, 'XL', 'Yellow', '#F5BC22', 5, 'active', '2023-07-27 07:48:14', '2023-07-27 07:48:14'),
(348, 91, 'L', 'White', '#F6F4FC', 0, 'active', '2023-07-27 07:52:33', '2023-07-27 07:52:33'),
(349, 91, 'XL', 'White', '#F6F4FC', 0, 'active', '2023-07-27 07:52:33', '2023-07-27 07:52:33'),
(350, 92, 'L', 'Pink', '#E6679E', 5, 'active', '2023-07-27 07:57:11', '2023-07-27 07:57:11'),
(351, 92, 'XL', 'Pink', '#E6679E', 5, 'active', '2023-07-27 07:57:11', '2023-07-27 07:57:11'),
(352, 94, 'L', 'Royal Blue', '#23357C', 5, 'active', '2023-07-27 08:01:17', '2023-07-27 08:01:17'),
(353, 94, 'XL', 'Royal Blue', '#23357C', 5, 'active', '2023-07-27 08:01:17', '2023-07-27 08:01:17'),
(354, 95, 'L', 'Mocassin', '#A3760F', 5, 'active', '2023-07-27 08:03:22', '2023-07-27 08:03:22'),
(355, 95, 'XL', 'Mocassin', '#A3760F', 5, 'active', '2023-07-27 08:03:22', '2023-07-27 08:03:22'),
(356, 96, 'L', 'Orange', '#F66A18', 5, 'active', '2023-07-27 08:05:28', '2023-07-27 08:05:28'),
(357, 96, 'XL', 'Orange', '#F66A18', 5, 'active', '2023-07-27 08:05:28', '2023-07-27 08:05:28'),
(358, 86, 's', 'White', '#FFFFFF', 4, 'active', '2023-07-27 08:15:19', '2023-07-27 08:20:19'),
(359, 87, 's', 'White', '#FFFEFE', 11, 'active', '2023-07-27 08:15:41', '2023-07-27 08:24:48'),
(360, 88, 's', 'blue', '#B657FA', 8, 'active', '2023-07-27 08:16:03', '2023-07-27 08:28:49'),
(361, 97, 'S', 'Cream', '#DBD2C9', 5, 'active', '2023-07-27 08:36:26', '2023-07-27 08:36:26'),
(362, 97, 'M', 'Cream', '#DBD2C9', 5, 'active', '2023-07-27 08:36:26', '2023-07-27 08:36:26'),
(363, 97, 'L', 'Cream', '#DBD2C9', 5, 'active', '2023-07-27 08:36:26', '2023-07-27 08:36:26'),
(364, 97, 'XXL', 'Cream', '#DBD2C9', 5, 'active', '2023-07-27 08:36:26', '2023-07-27 08:36:26'),
(365, 97, 'XL', 'Cream', '#DBD2C9', 5, 'active', '2023-07-27 08:36:26', '2023-07-27 08:36:26'),
(366, 98, 'S', 'Pink', '#A74250', 4, 'active', '2023-07-27 08:41:21', '2023-07-27 08:41:21'),
(367, 98, 'L', 'Pink', '#A74250', 4, 'active', '2023-07-27 08:41:21', '2023-07-27 08:41:21'),
(368, 98, 'XL', 'Pink', '#A74250', 4, 'active', '2023-07-27 08:41:21', '2023-07-27 08:41:21'),
(369, 98, 'M', 'Pink', '#A74250', 4, 'active', '2023-07-27 08:41:21', '2023-07-27 08:41:21'),
(370, 98, 'XXL', 'Pink', '#A74250', 4, 'active', '2023-07-27 08:41:21', '2023-07-27 08:41:21'),
(371, 99, '7', 'White', '#FFFFFF', 6, 'active', '2023-07-27 09:26:30', '2023-07-27 09:26:30'),
(372, 99, '9', 'White', '#FFFFFF', 21, 'active', '2023-07-27 09:26:30', '2023-07-27 09:26:30'),
(373, 99, '8', 'White', '#FFFFFF', 2, 'active', '2023-07-27 09:26:30', '2023-07-27 09:26:30'),
(374, 99, '10', 'White', '#FFFFFF', 32, 'active', '2023-07-27 09:26:30', '2023-07-27 09:26:30'),
(375, 100, '7', 'Navy Blue', '#44556F', 8, 'active', '2023-07-27 09:30:16', '2023-07-27 09:30:16'),
(376, 100, '8', 'Navy Blue', '#44556F', 13, 'active', '2023-07-27 09:30:16', '2023-07-27 09:30:16'),
(377, 100, '9', 'Navy Blue', '#44556F', 18, 'active', '2023-07-27 09:30:16', '2023-07-27 09:30:16'),
(378, 100, '10', 'Navy Blue', '#44556F', 21, 'active', '2023-07-27 09:30:16', '2023-07-27 09:30:16'),
(379, 72, 'S', 'White', '#FBFBFB', 0, 'active', '2023-07-27 09:35:53', '2023-07-27 09:36:31'),
(380, 72, 'M', 'White', '#FBFBFB', 11, 'active', '2023-07-27 09:35:56', '2023-07-27 09:36:25'),
(381, 72, 'L', 'White', '#FBFBFB', 10, 'active', '2023-07-27 09:35:57', '2023-07-27 09:36:27'),
(382, 72, 'XL', 'White', '#FBFBFB', 15, 'active', '2023-07-27 09:35:58', '2023-07-27 09:36:28'),
(383, 72, 'XXL', 'White', '#FBFBFB', 6, 'active', '2023-07-27 09:35:59', '2023-07-27 09:36:29'),
(384, 93, 'L', 'Red', '#FB2F2F', 3, 'active', '2023-07-27 09:42:40', '2023-07-27 09:42:54'),
(385, 93, 'XL', 'Red', '#FB2F2F', 3, 'active', '2023-07-27 09:42:50', '2023-07-27 09:42:54'),
(386, 103, 'Freesize', 'Stainless steel', '#FFFFFF', 50, 'active', '2023-07-27 12:21:15', '2023-07-27 12:21:30'),
(387, 102, 'Freesize', 'Stainless steel', '#FFFFFF', 50, 'active', '2023-07-27 12:21:53', '2023-07-27 12:22:03'),
(388, 103, '', '', '', 0, 'removed', '2023-07-27 12:22:15', '2023-07-27 12:22:18'),
(389, 101, 'Freesize', 'Stainless steel', '#FFFFFF', 49, 'active', '2023-07-27 12:22:42', '2023-07-27 14:06:21'),
(390, 11, 'S', 'Cobalt Blue', '#0852A7', 2, 'active', '2023-07-28 03:16:47', '2023-08-01 12:04:44'),
(391, 11, 'M', 'Cobalt Blue', '#0852A7', 6, 'active', '2023-07-28 03:16:50', '2023-07-28 03:17:11'),
(392, 11, 'L ', 'Cobalt Blue', '#0852A7', 0, 'active', '2023-07-28 03:16:51', '2023-07-28 03:17:02'),
(393, 11, 'XL', 'Cobalt Blue', '#0852A7', 5, 'removed', '2023-07-28 03:16:52', '2023-07-28 03:18:29'),
(394, 11, 'XXL', 'Cobalt Blue', '#0852A7', 4, 'removed', '2023-07-28 03:16:55', '2023-07-28 03:18:30'),
(395, 12, 'S', 'Buttercream Yellow', '#F5EEB8', 1, 'active', '2023-07-28 03:17:47', '2023-07-31 05:45:42'),
(396, 12, 'M', 'Buttercream Yellow', '#F5EEB8', 2, 'active', '2023-07-28 03:17:47', '2023-07-28 03:18:03'),
(397, 12, 'L', 'Buttercream Yellow', '#F5EEB8', 7, 'active', '2023-07-28 03:17:48', '2023-07-28 03:18:05'),
(398, 12, 'XL', 'Buttercream Yellow', '#F5EEB8', 3, 'active', '2023-07-28 03:17:48', '2023-07-28 03:18:07'),
(399, 12, 'XXL', 'Buttercream Yellow', '#F5EEB8', 2, 'active', '2023-07-28 03:17:49', '2023-07-28 03:18:09'),
(400, 11, 'L', 'Cobalt Blue', '#0852A7', 6, 'active', '2023-07-28 03:18:28', '2023-07-28 03:18:40'),
(401, 11, 'XL', 'Cobalt Blue', '#0852A7', 5, 'active', '2023-07-28 03:18:41', '2023-07-28 03:18:46'),
(402, 11, 'XXL', 'Cobalt Blue', '#0852A7', 3, 'active', '2023-07-28 03:18:47', '2023-07-28 15:34:25'),
(403, 77, 'S', 'Black', '#000000', 3, 'active', '2023-07-28 17:18:56', '2023-07-28 17:23:14'),
(404, 77, 'M', 'Black', '#000000', 4, 'active', '2023-07-28 17:18:58', '2023-07-28 17:19:15'),
(405, 77, 'L', 'Black', '#000000', 4, 'active', '2023-07-28 17:18:58', '2023-07-28 17:19:15'),
(406, 77, 'XL', 'Black', '#000000', 4, 'active', '2023-07-28 17:18:59', '2023-07-28 17:19:15'),
(407, 77, 'XXL', 'Black', '#000000', 4, 'active', '2023-07-28 17:19:00', '2023-07-28 17:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `ProductOrder`
--

CREATE TABLE `ProductOrder` (
  `orderId` bigint(20) NOT NULL,
  `orderUUID` text NOT NULL,
  `userId` bigint(20) NOT NULL,
  `coins` int(50) NOT NULL,
  `addressId` bigint(20) NOT NULL,
  `productTotal` varchar(50) NOT NULL,
  `shippingCharge` varchar(50) NOT NULL,
  `taxes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`taxes`)),
  `subTotal` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'ordered' COMMENT 'ordered, dispatched, transit, delivered',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ProductOrder`
--

INSERT INTO `ProductOrder` (`orderId`, `orderUUID`, `userId`, `coins`, `addressId`, `productTotal`, `shippingCharge`, `taxes`, `subTotal`, `status`, `createdAt`, `updatedAt`) VALUES
(1, '59f47cfc-592c-4ccc-a2b3-e725da5149b7', 1, 1, 1, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 'transit', '2023-07-27 12:58:13', '2023-08-01 05:32:04'),
(2, 'aca4ee70-8b18-4ae2-b048-84f550318e21', 2, 2, 2, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 'transit', '2023-07-27 13:07:27', '2023-08-01 05:32:06'),
(3, '18be0764-3620-44a9-81c1-7a4b57c778b2', 3, 2, 3, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 'transit', '2023-07-27 13:44:42', '2023-08-01 05:32:08'),
(4, '4dce29d0-832b-48c3-ac20-954a8a6cfafb', 7, 4, 6, '550', '50', '{\"sgst\":41.95,\"cgst\":41.95}', '600', 'transit', '2023-07-27 14:06:21', '2023-08-01 05:32:11'),
(5, '5ca99ce5-52ab-4139-90d2-584b177bf671', 8, 3, 5, '470', '50', '{\"sgst\":11.19,\"cgst\":11.19}', '520', 'transit', '2023-07-27 14:15:46', '2023-08-01 05:32:13'),
(6, '64fa186e-56b2-494d-86db-53f838393837', 4, 1, 4, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 'transit', '2023-07-27 14:35:44', '2023-08-01 05:32:15'),
(7, 'e77dad06-a3e7-4ae5-98dd-d4ee21ac4afa', 9, 2, 11, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 'transit', '2023-07-27 14:36:48', '2023-08-01 05:32:17'),
(8, '30bb8f84-a5e6-431e-a040-df3a35ef71b7', 14, 1, 12, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 'transit', '2023-07-27 14:46:41', '2023-08-01 05:32:20'),
(9, '2473345c-89c8-4409-91b6-7b8e12d3e891', 21, 2, 13, '399', '50', '{\"sgst\":9.5,\"cgst\":9.5}', '449', 'transit', '2023-07-27 16:36:13', '2023-08-01 05:32:22'),
(10, 'ef419ce6-b97e-40d0-b5e2-cf8ce41de0a4', 24, 2, 14, '299', '50', '{\"igst\":14.24}', '349', 'transit', '2023-07-27 16:46:34', '2023-08-01 05:32:25'),
(11, 'a93e4a63-d6e6-4997-b85d-09af1f49505b', 9, 2, 16, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 'transit', '2023-07-27 18:06:28', '2023-08-01 05:32:27'),
(12, 'c743abc5-0c29-4985-87fa-5f3671fce90c', 13, 15, 21, '2198', '100', '{\"sgst\":52.33,\"cgst\":52.33}', '2298', 'transit', '2023-07-28 08:45:54', '2023-08-01 05:32:28'),
(13, '60e44b29-c689-4b2e-a85d-6e07e391ab7b', 57, 1, 29, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 'transit', '2023-07-28 10:03:04', '2023-08-01 05:32:31'),
(14, 'f0a7c054-67fb-4b27-bd5b-5fe0cf21a76c', 76, 8, 30, '1149', '50', '{\"sgst\":27.36,\"cgst\":27.36}', '1199', 'transit', '2023-07-28 15:34:25', '2023-08-01 05:32:33'),
(15, '5c8a69d3-d91b-4bf7-a2c5-942cf13282dc', 72, 2, 31, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 'transit', '2023-07-28 17:23:14', '2023-08-01 05:32:35'),
(17, '8e5d2342-d732-4d8d-bd0c-b5c310f0822b', 100, 6, 37, '850', '50', '{\"sgst\":20.24,\"cgst\":20.24}', '900', 'transit', '2023-07-30 12:00:54', '2023-08-01 05:32:37'),
(20, '708a1302-91c9-471c-a9f2-f975657de80d', 7, 4, 6, '699', '50', '{\"sgst\":16.64,\"cgst\":16.64}', '749', 'transit', '2023-07-31 07:39:30', '2023-08-01 05:32:39'),
(21, '58d061ed-8120-413c-afd6-85d8b0314143', 31, 6, 33, '850', '50', '{\"sgst\":20.24,\"cgst\":20.24}', '900', 'ordered', '2023-08-01 12:04:44', '2023-08-01 12:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `ProductOrderItem`
--

CREATE TABLE `ProductOrderItem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `quantity` int(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `taxes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`taxes`)),
  `purchasePrice` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'ordered' COMMENT 'ordered, canceled, returned',
  `priceType` varchar(50) NOT NULL COMMENT 'normal,offer',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ProductOrderItem`
--

INSERT INTO `ProductOrderItem` (`orderItemId`, `orderId`, `userId`, `productId`, `quantity`, `size`, `color`, `taxes`, `purchasePrice`, `status`, `priceType`, `createdAt`) VALUES
(1, 1, 1, 39, 1, 'M', 'Pantone Red', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-07-27 12:58:13'),
(2, 2, 2, 42, 1, 'M', 'Blush pink', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-07-27 13:07:27'),
(3, 3, 3, 41, 1, 'M', 'White', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-07-27 13:44:42'),
(4, 4, 7, 101, 1, 'Freesize', 'Stainless steel', '{\"sgst\":41.95,\"cgst\":41.95}', '550', 'ordered', 'normal', '2023-07-27 14:06:21'),
(5, 5, 8, 45, 1, 'M', 'Black', '{\"sgst\":11.19,\"cgst\":11.19}', '470', 'ordered', 'normal', '2023-07-27 14:15:46'),
(6, 6, 4, 38, 1, 'M', 'Black', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-07-27 14:35:44'),
(7, 7, 9, 41, 1, 'L', 'White', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-07-27 14:36:48'),
(8, 8, 14, 38, 1, 'L', 'Black', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-07-27 14:46:41'),
(9, 9, 21, 63, 1, 'M', 'Sage Green', '{\"sgst\":9.5,\"cgst\":9.5}', '399', 'ordered', 'normal', '2023-07-27 16:36:13'),
(10, 10, 24, 40, 1, 'L', 'Olive Green', '{\"igst\":14.24}', '299', 'ordered', 'normal', '2023-07-27 16:46:34'),
(11, 11, 9, 41, 1, 'L', 'White', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-07-27 18:06:28'),
(12, 12, 13, 15, 1, 'XL', 'Pastel Green', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-07-28 08:45:54'),
(13, 12, 13, 61, 1, 'S', 'Pink', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-07-28 08:45:54'),
(14, 12, 13, 39, 1, 'XL', 'Pantone Red', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-07-28 08:45:54'),
(15, 12, 13, 22, 1, 'XL', 'Charcoal Grey', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-07-28 08:45:54'),
(16, 13, 57, 38, 1, 'S', 'Black', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-07-28 10:03:04'),
(17, 14, 76, 11, 1, 'XXL', 'Cobalt Blue', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-07-28 15:34:25'),
(18, 14, 76, 42, 1, 'XL', 'Blush pink', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-07-28 15:34:25'),
(19, 15, 72, 77, 1, 'S', 'Black', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-07-28 17:23:14'),
(22, 17, 100, 16, 1, 'XL', 'Snow White', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-07-30 12:00:54'),
(27, 20, 7, 29, 1, 'XL', 'Multi Color', '{\"sgst\":16.64,\"cgst\":16.64}', '699', 'ordered', 'normal', '2023-07-31 07:39:30'),
(28, 21, 31, 11, 1, 'S', 'Cobalt Blue', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-01 12:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `ProductSubCategory`
--

CREATE TABLE `ProductSubCategory` (
  `subCategoryId` bigint(20) NOT NULL,
  `categoryId` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ProductSubCategory`
--

INSERT INTO `ProductSubCategory` (`subCategoryId`, `categoryId`, `name`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Shirt', 'active', '2023-07-23 19:09:52', '2023-07-23 19:09:52'),
(2, 1, 'T-Shirt', 'active', '2023-07-23 19:12:12', '2023-07-23 19:12:12'),
(3, 1, 'Shoe', 'active', '2023-07-23 19:12:24', '2023-07-23 19:12:24'),
(4, 1, 'Joggers', 'active', '2023-07-23 19:12:52', '2023-07-23 19:12:52'),
(5, 1, 'Watch', 'active', '2023-07-23 19:13:14', '2023-07-23 19:13:14'),
(6, 1, 'Dhoti', 'active', '2023-07-23 19:13:33', '2023-07-23 19:13:33'),
(7, 1, 'Boxers', 'active', '2023-07-23 19:13:58', '2023-07-23 19:13:58'),
(8, 2, 'Kurti', 'active', '2023-07-23 19:15:38', '2023-07-23 19:15:57'),
(9, 2, 'T-Shirt', 'active', '2023-07-23 19:15:47', '2023-07-23 19:15:47'),
(10, 2, 'Tank Top', 'deleted', '2023-07-23 19:16:12', '2023-07-23 19:17:02'),
(11, 2, 'Jeans', 'active', '2023-07-23 19:16:24', '2023-07-23 19:16:24'),
(12, 2, 'Watch', 'active', '2023-07-23 19:16:36', '2023-07-23 19:16:36'),
(13, 2, 'Western Tops', 'active', '2023-07-23 19:18:52', '2023-07-23 19:18:52'),
(14, 1, 'Tank Top', 'active', '2023-07-23 19:19:16', '2023-07-23 19:19:16'),
(15, 2, 'Leggings', 'active', '2023-07-23 19:19:44', '2023-07-23 19:19:44'),
(16, 3, 'Peanut Butter', 'active', '2023-07-23 19:20:51', '2023-07-23 19:20:51'),
(17, 4, 'Others', 'active', '2023-07-23 19:21:06', '2023-07-23 19:21:06'),
(18, 5, 'Test1', 'active', '2023-07-24 03:24:43', '2023-07-24 03:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `Referral`
--

CREATE TABLE `Referral` (
  `referralId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `parentId` bigint(20) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Referral`
--

INSERT INTO `Referral` (`referralId`, `userId`, `parentId`, `createdAt`) VALUES
(1, 2, 1, '2023-07-27 12:59:52'),
(2, 3, 2, '2023-07-27 13:19:47'),
(3, 4, 2, '2023-07-27 13:39:07'),
(4, 5, 3, '2023-07-27 13:49:10'),
(5, 6, 3, '2023-07-27 13:50:44'),
(6, 8, 3, '2023-07-27 13:55:45'),
(7, 7, 2, '2023-07-27 13:59:09'),
(8, 9, 3, '2023-07-27 14:07:55'),
(9, 10, 7, '2023-07-27 14:14:26'),
(10, 11, 3, '2023-07-27 14:16:21'),
(11, 12, 2, '2023-07-27 14:23:41'),
(12, 13, 7, '2023-07-27 14:24:07'),
(13, 14, 4, '2023-07-27 14:38:43'),
(14, 15, 7, '2023-07-27 14:43:07'),
(15, 16, 7, '2023-07-27 14:43:26'),
(16, 17, 7, '2023-07-27 14:47:42'),
(17, 18, 3, '2023-07-27 14:50:15'),
(18, 19, 3, '2023-07-27 15:30:39'),
(19, 20, 3, '2023-07-27 16:06:02'),
(20, 21, 7, '2023-07-27 16:20:31'),
(21, 23, 2, '2023-07-27 16:25:54'),
(22, 24, 3, '2023-07-27 16:40:38'),
(23, 25, 3, '2023-07-27 17:17:04'),
(24, 26, 3, '2023-07-27 17:49:59'),
(25, 27, 14, '2023-07-27 18:21:31'),
(26, 28, 2, '2023-07-27 22:18:37'),
(27, 29, 10, '2023-07-27 22:38:13'),
(29, 31, 29, '2023-07-27 22:48:17'),
(30, 32, 2, '2023-07-28 00:30:07'),
(31, 33, 2, '2023-07-28 00:32:54'),
(32, 34, 2, '2023-07-28 01:52:22'),
(33, 35, 2, '2023-07-28 02:35:45'),
(34, 36, 3, '2023-07-28 03:16:04'),
(35, 37, 3, '2023-07-28 03:26:26'),
(36, 38, 3, '2023-07-28 03:56:29'),
(37, 39, 2, '2023-07-28 04:00:02'),
(38, 40, 3, '2023-07-28 04:34:33'),
(39, 41, 7, '2023-07-28 05:32:28'),
(40, 42, 7, '2023-07-28 06:06:10'),
(41, 43, 3, '2023-07-28 06:06:21'),
(42, 44, 14, '2023-07-28 06:20:00'),
(43, 45, 3, '2023-07-28 06:38:44'),
(44, 46, 3, '2023-07-28 06:40:10'),
(45, 47, 3, '2023-07-28 07:23:40'),
(46, 48, 2, '2023-07-28 08:39:04'),
(47, 49, 2, '2023-07-28 08:44:53'),
(48, 50, 13, '2023-07-28 09:04:51'),
(49, 51, 7, '2023-07-28 09:27:12'),
(50, 53, 7, '2023-07-28 09:31:11'),
(51, 54, 13, '2023-07-28 09:31:16'),
(52, 55, 13, '2023-07-28 09:36:07'),
(53, 56, 13, '2023-07-28 09:47:20'),
(54, 57, 7, '2023-07-28 09:50:33'),
(55, 59, 7, '2023-07-28 10:19:24'),
(56, 60, 13, '2023-07-28 10:28:45'),
(57, 61, 2, '2023-07-28 10:31:41'),
(58, 62, 7, '2023-07-28 10:31:48'),
(59, 63, 13, '2023-07-28 10:43:09'),
(60, 64, 7, '2023-07-28 10:45:28'),
(61, 65, 2, '2023-07-28 11:23:50'),
(62, 66, 2, '2023-07-28 11:25:47'),
(63, 67, 7, '2023-07-28 11:43:24'),
(64, 68, 2, '2023-07-28 11:44:17'),
(65, 69, 13, '2023-07-28 12:44:19'),
(66, 70, 7, '2023-07-28 12:45:22'),
(67, 71, 13, '2023-07-28 13:12:26'),
(68, 72, 7, '2023-07-28 13:43:47'),
(69, 73, 7, '2023-07-28 13:56:50'),
(70, 75, 7, '2023-07-28 14:31:24'),
(71, 76, 7, '2023-07-28 15:04:51'),
(72, 77, 2, '2023-07-28 15:06:32'),
(73, 78, 7, '2023-07-28 15:08:56'),
(74, 79, 3, '2023-07-28 16:14:16'),
(75, 80, 7, '2023-07-28 16:59:52'),
(76, 81, 2, '2023-07-28 23:28:03'),
(77, 82, 7, '2023-07-29 00:58:33'),
(78, 83, 13, '2023-07-29 01:04:07'),
(79, 85, 3, '2023-07-29 02:00:34'),
(80, 86, 3, '2023-07-29 02:05:29'),
(81, 87, 3, '2023-07-29 03:55:01'),
(82, 88, 10, '2023-07-29 10:14:34'),
(83, 92, 2, '2023-07-29 10:33:15'),
(84, 93, 4, '2023-07-29 12:54:26'),
(85, 94, 7, '2023-07-29 14:42:36'),
(86, 95, 3, '2023-07-29 15:13:04'),
(87, 96, 2, '2023-07-29 17:36:30'),
(88, 97, 3, '2023-07-30 05:32:54'),
(89, 98, 3, '2023-07-30 05:51:37'),
(90, 99, 7, '2023-07-30 08:37:53'),
(91, 100, 2, '2023-07-30 09:16:38'),
(92, 102, 3, '2023-07-31 03:29:26'),
(93, 104, 7, '2023-07-31 05:57:51'),
(94, 105, 7, '2023-07-31 08:34:19'),
(95, 106, 7, '2023-07-31 11:56:00'),
(96, 107, 7, '2023-07-31 15:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `RewardWallet`
--

CREATE TABLE `RewardWallet` (
  `id` bigint(20) NOT NULL,
  `orderUUID` text NOT NULL,
  `userId` bigint(20) NOT NULL,
  `buyerId` bigint(20) NOT NULL,
  `amount` int(50) NOT NULL,
  `moveTo` varchar(50) NOT NULL COMMENT 'personal,income',
  `moveDate` varchar(30) DEFAULT NULL,
  `mode` varchar(50) NOT NULL COMMENT 'referral,squad',
  `status` varchar(15) NOT NULL DEFAULT 'active' COMMENT 'pending,credited',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `RewardWallet`
--

INSERT INTO `RewardWallet` (`id`, `orderUUID`, `userId`, `buyerId`, `amount`, `moveTo`, `moveDate`, `mode`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'aca4ee70-8b18-4ae2-b048-84f550318e21', 1, 2, 50, 'personal', '2023-08-11', 'referral', 'pending', '2023-07-27 13:07:27', '2023-07-29 06:32:43'),
(2, '18be0764-3620-44a9-81c1-7a4b57c778b2', 2, 3, 50, 'personal', '2023-08-11', 'referral', 'pending', '2023-07-27 13:44:42', '2023-07-29 06:32:43'),
(3, '4dce29d0-832b-48c3-ac20-954a8a6cfafb', 2, 7, 100, 'personal', '2023-08-11', 'referral', 'pending', '2023-07-27 14:06:21', '2023-07-29 06:32:43'),
(4, '5ca99ce5-52ab-4139-90d2-584b177bf671', 3, 8, 75, 'personal', '2023-08-11', 'referral', 'pending', '2023-07-27 14:15:46', '2023-07-29 06:32:43'),
(5, '64fa186e-56b2-494d-86db-53f838393837', 2, 4, 25, 'personal', '2023-08-11', 'referral', 'pending', '2023-07-27 14:35:44', '2023-07-29 06:32:43'),
(6, 'e77dad06-a3e7-4ae5-98dd-d4ee21ac4afa', 3, 9, 50, 'personal', '2023-08-11', 'referral', 'pending', '2023-07-27 14:36:48', '2023-07-29 06:32:43'),
(7, '30bb8f84-a5e6-431e-a040-df3a35ef71b7', 4, 14, 25, 'personal', '2023-08-11', 'referral', 'pending', '2023-07-27 14:46:41', '2023-07-29 06:32:43'),
(8, '2473345c-89c8-4409-91b6-7b8e12d3e891', 7, 21, 50, 'personal', '2023-08-11', 'referral', 'pending', '2023-07-27 16:36:13', '2023-07-29 06:32:43'),
(9, 'ef419ce6-b97e-40d0-b5e2-cf8ce41de0a4', 3, 24, 50, 'personal', '2023-08-11', 'referral', 'pending', '2023-07-27 16:46:34', '2023-07-29 06:32:43'),
(10, 'a93e4a63-d6e6-4997-b85d-09af1f49505b', 3, 9, 50, 'personal', '2023-08-11', 'referral', 'pending', '2023-07-27 18:06:28', '2023-07-29 06:32:43'),
(11, 'c743abc5-0c29-4985-87fa-5f3671fce90c', 7, 13, 375, 'personal', '2023-08-12', 'referral', 'pending', '2023-07-28 08:45:54', '2023-07-29 23:04:39'),
(12, '60e44b29-c689-4b2e-a85d-6e07e391ab7b', 7, 57, 25, 'personal', '2023-08-12', 'referral', 'pending', '2023-07-28 10:03:04', '2023-07-29 23:04:41'),
(13, 'f0a7c054-67fb-4b27-bd5b-5fe0cf21a76c', 7, 76, 200, 'personal', '2023-08-12', 'referral', 'pending', '2023-07-28 15:34:25', '2023-07-29 23:04:43'),
(14, '5c8a69d3-d91b-4bf7-a2c5-942cf13282dc', 7, 72, 50, 'personal', '2023-08-12', 'referral', 'pending', '2023-07-28 17:23:14', '2023-07-29 23:04:45'),
(18, '8e5d2342-d732-4d8d-bd0c-b5c310f0822b', 2, 100, 150, 'personal', '2023-08-14', 'referral', 'pending', '2023-07-30 12:00:54', '2023-07-30 12:00:54'),
(19, '8e5d2342-d732-4d8d-bd0c-b5c310f0822b', 1, 100, 30, 'personal', 'pending', 'squad', 'pending', '2023-07-30 12:00:54', '2023-07-30 12:00:54'),
(26, '708a1302-91c9-471c-a9f2-f975657de80d', 2, 7, 100, 'personal', '2023-08-15', 'referral', 'pending', '2023-07-31 07:39:31', '2023-07-31 07:39:31'),
(27, '708a1302-91c9-471c-a9f2-f975657de80d', 1, 7, 20, 'personal', 'pending', 'squad', 'pending', '2023-07-31 07:39:31', '2023-07-31 07:39:31'),
(28, '58d061ed-8120-413c-afd6-85d8b0314143', 7, 31, 24, 'personal', 'pending', 'squad', 'pending', '2023-08-01 12:04:44', '2023-08-01 12:04:44'),
(29, '58d061ed-8120-413c-afd6-85d8b0314143', 2, 31, 18, 'personal', 'pending', 'squad', 'pending', '2023-08-01 12:04:44', '2023-08-01 12:04:44'),
(30, '58d061ed-8120-413c-afd6-85d8b0314143', 1, 31, 12, 'personal', 'pending', 'squad', 'pending', '2023-08-01 12:04:44', '2023-08-01 12:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `Section`
--

CREATE TABLE `Section` (
  `sectionId` bigint(20) NOT NULL,
  `pageId` bigint(20) NOT NULL,
  `sectionKey` varchar(50) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `position` int(50) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'published' COMMENT 'published,draft,archived,deleted',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Section`
--

INSERT INTO `Section` (`sectionId`, `pageId`, `sectionKey`, `data`, `position`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"http://localhost:5000/api/page/public/a7124420-163e-4f54-926e-3672b03a662aNIK_5827-01.jpg\",\"route\":\"trending\"},{\"name\":\"Women\",\"imgSrc\":\"http://localhost:5000/api/page/public/a7124420-163e-4f54-926e-3672b03a662aWhatsApp Image 2023-07-23 at 11.58.22.jpg\",\"route\":\"women\"},{\"name\":\"Men\",\"imgSrc\":\"http://localhost:5000/api/page/public/a7124420-163e-4f54-926e-3672b03a662aNIK_5637-01-01-01.jpeg.jpg\",\"route\":\"men\"}]', 0, 'deleted', '2023-07-23 06:31:41', '2023-07-23 14:19:26'),
(2, 1, 'tit-1', '{\"textOne\":\"Welcome to\",\"textTwo\":\"WeeMax\"}', 1, 'deleted', '2023-07-23 06:34:18', '2023-07-23 14:19:29'),
(3, 2, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-1 (1).jpg\",\"route\":\"asdad\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-3.jpg\",\"route\":\"adad\"}]', 0, 'published', '2023-07-23 06:39:06', '2023-07-23 06:39:06'),
(4, 2, 'sec-t-sel', '[{\"name\":\"ad\",\"imgSrc\":\"http://localhost:5000/api/page/public/a7124420-163e-4f54-926e-3672b03a662aL-1 (1).jpg\",\"route\":\"ads\"}]', 1, 'published', '2023-07-23 06:39:14', '2023-07-23 06:39:14'),
(5, 2, 'tit-1', '{\"textOne\":\"asd\",\"textTwo\":\"asd\"}', 2, 'published', '2023-07-23 06:39:20', '2023-07-23 06:39:20'),
(6, 2, 'sec-h-1', '{\"title\":\"ad\",\"textOne\":\"asd\",\"textTwo\":\"ads\",\"buttonText\":\"asd\",\"route\":\"asd\"}', 3, 'published', '2023-07-23 06:39:26', '2023-07-23 06:39:26'),
(7, 2, 'pro-slide-1', '{\"sectionTitle\":\"asd\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e07.jpg\",\"route\":\"asd\",\"price\":\"asd\",\"label\":\"asd\",\"caption\":\"asd\"}]}', 4, 'published', '2023-07-23 06:39:38', '2023-07-23 06:39:38'),
(8, 2, 'pro-slide-2', '{\"sectionTitle\":\"ad\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-1 (1).jpg\",\"route\":\"asd\"}]}', 5, 'published', '2023-07-23 06:39:48', '2023-07-23 06:39:48'),
(9, 2, 'card-1', '{\"sectionTitle\":\"asd\",\"items\":{\"one\":{\"name\":\"asd\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eJ-1 (1).jpg\",\"route\":\"asd\"},\"two\":{\"name\":\"asd\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-2 (1).jpg\",\"route\":\"asd\"}}}', 6, 'published', '2023-07-23 06:40:01', '2023-07-23 06:40:01'),
(10, 2, 'card-2', '{\"sectionTitle\":\"asd\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-3.jpg\",\"route\":\"asd\"}]}', 7, 'published', '2023-07-23 06:40:15', '2023-07-23 06:40:15'),
(11, 2, 'card-4', '{\"sectionTitle\":\"asd\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-1 (1).jpg\",\"route\":\"asd\"}]}', 8, 'published', '2023-07-23 06:40:25', '2023-07-23 06:40:25'),
(12, 2, 'lay-1', '{\"sectionTitle\":\"asd\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-1 (1).jpg\",\"route\":\"asd\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-1 (1).jpg\",\"route\":\"asd\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e02.jpg\",\"route\":\"asd\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eJ-1 (1).jpg\",\"route\":\"asd\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eJ-2 (1).jpg\",\"route\":\"asd\"}}}', 9, 'published', '2023-07-23 06:40:53', '2023-07-23 06:40:53'),
(13, 2, 'grid-lay', '{\"sectionTitle\":\"asd\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eJ-3 (1).jpg\",\"route\":\"asd\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e04.jpg\",\"route\":\"sd\"}]}', 10, 'published', '2023-07-23 06:41:19', '2023-07-23 06:41:19'),
(14, 1, 'grid-lay', '{\"sectionTitle\":\"Suggested For You\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e9ceb18f7-image-b.png\",\"route\":\"best-selling\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e1000012571476-Blue-LIGHTBLUE-1000012571476_04-2100.jpg\",\"route\":\"hot-now\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e2f67452f-image-a.png\",\"route\":\"new-arrivals\"}]}', 3, 'deleted', '2023-07-23 06:55:37', '2023-07-23 14:19:33'),
(15, 1, 'card-2', '{\"sectionTitle\":\"Fashion Zone!\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eWhatsApp Image 2023-07-23 at 12.29.28.jpg\",\"route\":\"fashion-zone\"}]}', 2, 'deleted', '2023-07-23 07:00:11', '2023-07-23 07:02:13'),
(16, 1, 'card-2', '{\"sectionTitle\":\"Fashion Zone!\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5ebanner.png\",\"route\":\"fashion-zone\"}]}', 4, 'deleted', '2023-07-23 07:03:20', '2023-07-23 14:19:35'),
(17, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedban3.jpg\",\"route\":\"\"}]', 0, 'deleted', '2023-07-23 14:21:41', '2023-07-23 14:22:03'),
(18, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedban3.jpg\",\"route\":\"\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedWhatsApp Image 2023-07-23 at 19.12.45.jpg\",\"route\":\"\"}]', 0, 'deleted', '2023-07-23 14:22:37', '2023-07-23 16:35:58'),
(19, 1, 'card-1', '{\"sectionTitle\":\"best deals\",\"items\":{\"one\":{\"name\":\"women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedwomes.jpg\",\"route\":\"women\"},\"two\":{\"name\":\"men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedmenss.jpg\",\"route\":\"men\"}}}', 1, 'deleted', '2023-07-23 14:31:22', '2023-07-23 15:26:05'),
(20, 1, 'pro-slide-1', '{\"sectionTitle\":\"most trending\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtreed.jpg\",\"route\":\"sleave less\",\"price\":\"100\",\"label\":\"300\",\"caption\":\"buy now\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtredsss.jpg\",\"route\":\"tracks\",\"price\":\"200\",\"label\":\"400\",\"caption\":\"buy now\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtre8.jpg\",\"route\":\"tshirt\",\"price\":\"200\",\"label\":\"299\",\"caption\":\"buy now\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtre4.jpg\",\"route\":\"tshirt\",\"price\":\"100\",\"label\":\"200\",\"caption\":\"buy now\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtred1.jpg\",\"route\":\"tshirt\",\"price\":\"500\",\"label\":\"600\",\"caption\":\"buy now\"}]}', 2, 'deleted', '2023-07-23 14:35:31', '2023-07-23 15:27:05'),
(21, 1, 'pro-slide-2', '{\"sectionTitle\":\"new coming\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedmens.jpg\",\"route\":\"tsirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedimg gag.jpg\",\"route\":\"watch\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedimg foot wa.jpg\",\"route\":\"shoes\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedJ-3 (1).jpg\",\"route\":\"watch\"}]}', 3, 'deleted', '2023-07-23 14:37:38', '2023-07-23 15:27:07'),
(22, 1, 'grid-lay', '{\"sectionTitle\":\"fashion world\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedban5.jpg\",\"route\":\"fashion\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedban2.jpg\",\"route\":\"fashion\"}]}', 4, 'deleted', '2023-07-23 14:39:54', '2023-07-23 15:27:13'),
(23, 1, 'lay-1', '{\"sectionTitle\":\"youth must have\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedimg.jpg\",\"route\":\"tshirt\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtre4.jpg\",\"route\":\"tsgii\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedwatch.jpg\",\"route\":\"asa\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedimg foot wa.jpg\",\"route\":\"saas\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedwomenn.jpg\",\"route\":\"asa\"}}}', 5, 'deleted', '2023-07-23 14:42:17', '2023-07-23 15:19:11'),
(24, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedbrand.jpg\",\"route\":\"brand\"}]', 6, 'deleted', '2023-07-23 14:43:02', '2023-07-23 15:18:27'),
(25, 1, 'pro-slide-2', '{\"sectionTitle\":\"test\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedJ L-3 (1).jpg\",\"route\":\"asd\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedJ-1 (1).jpg\",\"route\":\"asd\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedL-2 (1).jpg\",\"route\":\"sdf\"}]}', 7, 'deleted', '2023-07-23 15:06:44', '2023-07-23 15:15:19'),
(26, 1, 'grid-lay', '{\"sectionTitle\":\"555\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedbrand.jpg\",\"route\":\"555\"}]}', 7, 'deleted', '2023-07-23 15:17:52', '2023-07-23 15:18:24'),
(27, 1, 'card-1', '{\"sectionTitle\":\"Fashion zone!\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bednathan.png\",\"route\":\"men\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedsam.png\",\"route\":\"women\"}}}', 1, 'deleted', '2023-07-23 15:25:27', '2023-07-23 16:36:00'),
(28, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449ba.jpg\",\"route\":\"biz\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f1044923.jpg\",\"route\":\"biz\"}]', 1, 'deleted', '2023-07-23 16:42:40', '2023-07-26 12:50:42'),
(29, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449a.jpg\",\"route\":\"t-shirt\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449e.jpg\",\"route\":\"shirt\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449qw.jpg\",\"route\":\"kurti\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449wa.jpg\",\"route\":\"watch\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449shoe.jpg\",\"route\":\"shoe\"}}}', 6, 'deleted', '2023-07-23 16:48:39', '2023-07-25 18:21:20'),
(30, 1, 'tit-1', '{\"textOne\":\"Welcome to\",\"textTwo\":\"Weemax\"}', 2, 'published', '2023-07-23 16:49:52', '2023-07-30 17:57:06'),
(31, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Collection (1).png\",\"route\":\"product\"}]', 5, 'deleted', '2023-07-23 17:04:51', '2023-07-27 07:19:54'),
(32, 1, 'card-1', '{\"sectionTitle\":\"Fashion sported\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449PUBG-Character-Transparent-Image.png\",\"route\":\"men-product\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490cb035e5e38923a6515c34447267db80.jpg\",\"route\":\"women-product\"}}}', 4, 'deleted', '2023-07-23 17:15:30', '2023-07-26 12:43:28'),
(33, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104492f67452f-image-a.png\",\"route\":\"https://weemax.in/account/biz/\"}]', 5, 'deleted', '2023-07-23 17:54:33', '2023-07-23 17:55:11'),
(34, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 1, 'deleted', '2023-07-23 17:57:00', '2023-07-26 12:17:24'),
(35, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:07:16'),
(36, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:08:13'),
(37, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:08:03'),
(38, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:08:06'),
(39, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:07:44'),
(40, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:08:00'),
(41, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:07:37'),
(42, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:07:39'),
(43, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:07:32'),
(44, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:07:28'),
(45, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:07:35'),
(46, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 6, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:07:04'),
(47, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 6, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:07:23'),
(48, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 6, 'deleted', '2023-07-23 17:57:00', '2023-07-23 18:07:01'),
(49, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5588-01.jpg\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449l-sm-bindiya-02-akhilam-original-imaggd9fxf7qntqm.webp\",\"route\":\"kurti\"},{\"name\":\"Crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Printed Crew Neck Tees.png\",\"route\":\"women-product\"},{\"name\":\"Track pant\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"track-pant\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"name\":\"Shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"}]', 7, 'deleted', '2023-07-23 18:05:04', '2023-07-23 18:06:54'),
(50, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5588-01.jpg\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449l-sm-bindiya-02-akhilam-original-imaggd9fxf7qntqm.webp\",\"route\":\"kurti\"},{\"name\":\"Crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Printed Crew Neck Tees.png\",\"route\":\"women-product\"},{\"name\":\"Track pant\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"track-pant\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"name\":\"Shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"}]', 8, 'deleted', '2023-07-23 18:05:04', '2023-07-23 18:06:50'),
(51, 1, 'pro-slide-2', '{\"sectionTitle\":\"BEST SELLERS\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5615-01__02.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5807-01.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5665-01.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5560__01-02.jpeg.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tre5.jpg\",\"route\":\"women-product\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tre4.jpg\",\"route\":\"women-product\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tre9.jpg\",\"route\":\"track-pant\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Black Limitless Men\'s Jogger.png\",\"route\":\"track-pant\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449trd2.jpg\",\"route\":\"tshirt\"}]}', 3, 'deleted', '2023-07-23 18:21:07', '2023-07-26 11:39:32'),
(52, 1, 'product-list-2', '{\"sectionTitle\":\"h\",\"banners\":[{\"productId\":1},{\"productId\":2},{\"productId\":3}]}', 7, 'deleted', '2023-07-23 18:21:29', '2023-07-23 18:25:16'),
(53, 1, 'product-list-2', '{\"sectionTitle\":\"dd\",\"banners\":[{\"productId\":1},{\"productId\":3}]}', 7, 'deleted', '2023-07-23 19:48:04', '2023-07-23 20:37:14'),
(54, 5, 'product-list-2', '{\"sectionTitle\":\"shirt\",\"banners\":[{\"productId\":1},{\"productId\":3}]}', 0, 'deleted', '2023-07-23 19:48:47', '2023-07-23 21:36:48'),
(55, 5, 'product-list-2', '{\"sectionTitle\":\"shirt 03\",\"banners\":[{\"productId\":4}]}', 1, 'deleted', '2023-07-23 19:59:37', '2023-07-23 21:36:50'),
(56, 4, 'product-list-2', '{\"sectionTitle\":\"Tshirt\",\"banners\":[{\"productId\":3}]}', 0, 'deleted', '2023-07-23 20:32:46', '2023-07-23 21:36:40'),
(57, 1, 'pro-slide-1', '{\"sectionTitle\":\"New arrivals\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1tre6.jpg\",\"route\":\"tshirt\",\"price\":\"299\",\"label\":\"Buy now\",\"caption\":\"Onion colored printed super smoothy crew neck T-shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1Black Limitless Men\'s Jogger.png\",\"route\":\"pant\",\"price\":\"399\",\"label\":\"Buy now\",\"caption\":\"Black limitless men\'s cotton jogger\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1trd2.jpg\",\"route\":\"tshirt\",\"price\":\"199\",\"label\":\"Buy now\",\"caption\":\"Super smoothy tank top\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women product\",\"price\":\"299\",\"label\":\"Buy now\",\"caption\":\"Yellow super smoothy women\'s T-shirt\"}]}', 7, 'deleted', '2023-07-23 21:33:10', '2023-07-23 21:34:14'),
(58, 4, 'product-list-2', '{\"sectionTitle\":\"shirt\",\"banners\":[{\"productId\":8},{\"productId\":9},{\"productId\":10}]}', 0, 'deleted', '2023-07-24 08:44:14', '2023-07-25 17:24:06'),
(59, 5, 'product-list-2', '{\"sectionTitle\":\"SHIRT\",\"banners\":[{\"productId\":11}]}', 0, 'deleted', '2023-07-24 09:29:14', '2023-07-24 13:53:14'),
(60, 5, 'product-list-2', '{\"sectionTitle\":\"Shirts\",\"banners\":[{\"productId\":11},{\"productId\":12},{\"productId\":13},{\"productId\":14},{\"productId\":15},{\"productId\":16},{\"productId\":17},{\"productId\":18},{\"productId\":19},{\"productId\":20},{\"productId\":21}]}', 0, 'deleted', '2023-07-24 13:54:24', '2023-07-24 14:01:11'),
(61, 5, 'product-list-2', '{\"sectionTitle\":\"Shirts\",\"banners\":[{\"productId\":11},{\"productId\":12},{\"productId\":13},{\"productId\":15},{\"productId\":16},{\"productId\":17},{\"productId\":18},{\"productId\":19},{\"productId\":20},{\"productId\":21},{\"productId\":22}]}', 0, 'deleted', '2023-07-24 14:02:02', '2023-07-24 19:12:53'),
(62, 5, 'product-list-2', '{\"sectionTitle\":\"Shirts\",\"banners\":[{\"productId\":11},{\"productId\":12},{\"productId\":13},{\"productId\":15},{\"productId\":16},{\"productId\":17},{\"productId\":18},{\"productId\":19},{\"productId\":20},{\"productId\":21},{\"productId\":22},{\"productId\":23},{\"productId\":24},{\"productId\":25},{\"productId\":26},{\"productId\":27},{\"productId\":28},{\"productId\":29},{\"productId\":30},{\"productId\":31},{\"productId\":32},{\"productId\":33},{\"productId\":34},{\"productId\":35},{\"productId\":36},{\"productId\":37}]}', 0, 'published', '2023-07-24 19:14:58', '2023-07-24 19:14:58'),
(63, 4, 'product-list-2', '{\"sectionTitle\":\"T-Shirts\",\"banners\":[{\"productId\":40},{\"productId\":41},{\"productId\":42},{\"productId\":43},{\"productId\":38},{\"productId\":39},{\"productId\":44},{\"productId\":45},{\"productId\":46}]}', 0, 'deleted', '2023-07-25 17:26:50', '2023-07-27 09:46:07'),
(64, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti\",\"banners\":[{\"productId\":47},{\"productId\":48},{\"productId\":52},{\"productId\":53},{\"productId\":54},{\"productId\":55},{\"productId\":56},{\"productId\":57},{\"productId\":58},{\"productId\":59},{\"productId\":60},{\"productId\":61},{\"productId\":62},{\"productId\":63},{\"productId\":64},{\"productId\":65},{\"productId\":66},{\"productId\":67},{\"productId\":68}]}', 0, 'deleted', '2023-07-25 17:29:12', '2023-07-27 10:37:15'),
(65, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2tre6.jpg\",\"route\":\"tshirt\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2NIK_5588-01.jpg\",\"route\":\"shirt\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2l-sm-bindiya-02-akhilam-original-imaggd9fxf7qntqm.webp\",\"route\":\"kurti\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"}}}', 7, 'deleted', '2023-07-25 18:13:48', '2023-07-25 18:21:17'),
(66, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2tre6.jpg\",\"route\":\"tshirt\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2NIK_5588-01.jpg\",\"route\":\"shirt\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9287 copy.jpg\",\"route\":\"kurti\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}}}', 8, 'deleted', '2023-07-25 18:18:52', '2023-07-25 18:21:10'),
(67, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2tre6.jpg\",\"route\":\"tshirt\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2NIK_5588-01.jpg\",\"route\":\"shirt\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2womenn.jpg\",\"route\":\"kurti\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}}}', 7, 'deleted', '2023-07-25 18:20:51', '2023-07-26 12:34:38'),
(68, 3, 'grid-lay', '{\"sectionTitle\":\"sasas\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48KC030 (1).jpg\",\"route\":\"kurti\"}]}', 0, 'deleted', '2023-07-26 10:30:58', '2023-07-26 10:32:17'),
(69, 3, 'card-4', '{\"sectionTitle\":\"aa\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48KC030 (1).jpg\",\"route\":\"aaa\"}]}', 0, 'deleted', '2023-07-26 10:32:42', '2023-07-26 11:10:36'),
(70, 1, 'pro-slide-2', '{\"sectionTitle\":\"BEST SELLERS\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5742-01.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482.png\",\"route\":\"tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48sssss.jpg\",\"route\":\"shoe\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb483J1A9279 copy.jpg\",\"route\":\"kurti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tredsss.jpg\",\"route\":\"bottom\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48goods_64_457382 (1).avif\",\"route\":\"boxer\"}]}', 5, 'published', '2023-07-26 11:38:05', '2023-07-30 19:06:34'),
(71, 1, 'sec-t-sel', '[{\"name\":\"Shirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5795__01-01.jpeg.jpg\",\"route\":\"shirt\"},{\"name\":\"T-shirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tre6.jpg\",\"route\":\"tshirt\"},{\"name\":\"Jogger\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48Red Coloured Attitude jogger.png\",\"route\":\"bottom\"},{\"name\":\"Shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 21.50.51.jpg\",\"route\":\"shoe\"},{\"name\":\"Boxer\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48goods_64_457382 (1).avif\",\"route\":\"boxer\"},{\"name\":\"Watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"name\":\"Dhoti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG_20230726_173543.jpg\",\"route\":\"dhoti\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48KC016 (4).jpg\",\"route\":\"kurti\"},{\"name\":\"Women-Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tre4.jpg\",\"route\":\"women-tshirt\"},{\"name\":\"Leggings\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482_0082062d-5a63-433f-92b8-f5edd3550970.jpg\",\"route\":\"leggings\"},{\"name\":\"Women Jean\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481661493815087.jpg\",\"route\":\"women-jean\"}]', 0, 'published', '2023-07-26 12:16:32', '2023-07-30 17:04:51'),
(72, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4822-9-2022_maza2752.jpg\",\"route\":\"kurti\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48trd2.jpg\",\"route\":\"tshirt\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5817-01.jpg\",\"route\":\"shirt\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481661493815087.jpg\",\"route\":\"women-jean\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48J-3 (1).jpg\",\"route\":\"watch\"}}}', 8, 'published', '2023-07-26 12:34:29', '2023-07-30 19:06:34'),
(73, 1, 'card-1', '{\"sectionTitle\":\"Fashion Spotted!!\",\"items\":{\"one\":{\"name\":\"MEN\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48PUBG-Character-Transparent-Image.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"WOMEN\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb480cb035e5e38923a6515c34447267db80.jpg\",\"route\":\"women-prodect\"}}}', 5, 'deleted', '2023-07-26 12:42:34', '2023-07-27 07:06:26'),
(74, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48ee.jpg\",\"route\":\"kurti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48ba.jpg\",\"route\":\"biz\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4823.jpg\",\"route\":\"biz\"}]', 2, 'deleted', '2023-07-26 12:50:15', '2023-07-26 13:00:13'),
(75, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4820230726_182908_0000.png\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"shirt\"}]', 1, 'published', '2023-07-26 13:01:29', '2023-07-30 17:57:06'),
(76, 3, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4820230726_163216_0000.png\",\"route\":\"product\"}]', 0, 'published', '2023-07-26 13:05:17', '2023-07-26 13:05:17'),
(77, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"biz\"}]', 7, 'deleted', '2023-07-26 13:05:41', '2023-07-26 13:08:32'),
(78, 15, 'product-list-2', '{\"sectionTitle\":\"Joggers\",\"banners\":[{\"productId\":44},{\"productId\":45},{\"productId\":46}]}', 0, 'published', '2023-07-26 20:24:33', '2023-07-26 20:24:33'),
(79, 1, 'card-1', '{\"sectionTitle\":\"trending\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f49-497248_hinata-pictures-naruto-and-hinata-part-1.png\",\"route\":\"women-prodect\"}}}', 7, 'deleted', '2023-07-27 07:03:33', '2023-07-27 07:04:20'),
(80, 1, 'card-1', '{\"sectionTitle\":\"Street-style Quirky Cool\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f81-812427_19-jul-naruto-x-boruto-ninja-voltage-hinata.png\",\"route\":\"women-prodect\"}}}', 4, 'deleted', '2023-07-27 07:06:15', '2023-07-27 07:16:04'),
(81, 1, 'card-1', '{\"sectionTitle\":\"Street-style Quirky Cool\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fpngfind.com-boruto-png-812427.png\",\"route\":\"women-prodect\"}}}', 6, 'published', '2023-07-27 07:15:09', '2023-07-30 19:06:34');
INSERT INTO `Section` (`sectionId`, `pageId`, `sectionKey`, `data`, `position`, `status`, `createdAt`, `updatedAt`) VALUES
(82, 4, 'product-list-2', '{\"sectionTitle\":\"test\",\"banners\":[{\"productId\":86},{\"productId\":87},{\"productId\":88}]}', 1, 'deleted', '2023-07-27 07:18:32', '2023-07-27 09:45:11'),
(83, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fCollection (1).png\",\"route\":\"\"}]', 6, 'deleted', '2023-07-27 07:19:40', '2023-07-27 12:16:41'),
(84, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fCollection (1).png\",\"route\":\"\"}]', 7, 'published', '2023-07-27 07:20:39', '2023-07-30 19:06:34'),
(85, 4, 'product-list-2', '{\"sectionTitle\":\"T-Shirts\",\"banners\":[{\"productId\":40},{\"productId\":41},{\"productId\":42},{\"productId\":43},{\"productId\":39},{\"productId\":38}]}', 0, 'published', '2023-07-27 09:48:10', '2023-07-27 09:48:10'),
(86, 7, 'product-list-2', '{\"sectionTitle\":\"Shoes\",\"banners\":[{\"productId\":99},{\"productId\":100}]}', 0, 'published', '2023-07-27 09:50:52', '2023-07-27 09:50:52'),
(87, 14, 'product-list-2', '{\"sectionTitle\":\"Women\'s T-Shirt\",\"banners\":[{\"productId\":78},{\"productId\":79},{\"productId\":80},{\"productId\":81},{\"productId\":82},{\"productId\":83},{\"productId\":84}]}', 0, 'published', '2023-07-27 09:53:16', '2023-07-27 09:53:16'),
(88, 14, 'product-list-2', '{\"sectionTitle\":\"Women\'s T-Shirt\",\"banners\":[{\"productId\":78},{\"productId\":79},{\"productId\":80},{\"productId\":81},{\"productId\":82},{\"productId\":83},{\"productId\":84}]}', 0, 'deleted', '2023-07-27 09:53:16', '2023-07-27 09:53:33'),
(89, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti\",\"banners\":[{\"productId\":47},{\"productId\":48},{\"productId\":56},{\"productId\":57},{\"productId\":58},{\"productId\":59},{\"productId\":60},{\"productId\":61},{\"productId\":62},{\"productId\":63},{\"productId\":64},{\"productId\":65},{\"productId\":69},{\"productId\":70},{\"productId\":71},{\"productId\":72},{\"productId\":73},{\"productId\":74},{\"productId\":77}]}', 0, 'published', '2023-07-27 10:43:39', '2023-07-27 10:43:39'),
(90, 6, 'product-list-2', '{\"sectionTitle\":\"Kurta + Dupatta Set\",\"banners\":[{\"productId\":52},{\"productId\":53},{\"productId\":54},{\"productId\":55},{\"productId\":75}]}', 1, 'deleted', '2023-07-27 10:45:10', '2023-07-31 03:08:28'),
(91, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti + Pant + Dupatta Set\",\"banners\":[{\"productId\":66},{\"productId\":67},{\"productId\":68}]}', 2, 'deleted', '2023-07-27 10:46:48', '2023-07-31 03:10:52'),
(92, 8, 'product-list-2', '{\"sectionTitle\":\"Watch\",\"banners\":[{\"productId\":101},{\"productId\":102},{\"productId\":103}]}', 0, 'deleted', '2023-07-27 12:23:00', '2023-07-27 12:23:35'),
(93, 8, 'product-list-2', '{\"sectionTitle\":\"Watches\",\"banners\":[{\"productId\":101},{\"productId\":102},{\"productId\":103}]}', 1, 'published', '2023-07-27 12:23:24', '2023-07-27 12:23:24'),
(94, 10, 'product-list-2', '{\"sectionTitle\":\"Men\'s Shirt\",\"banners\":[{\"productId\":11},{\"productId\":12},{\"productId\":13},{\"productId\":15},{\"productId\":16},{\"productId\":17},{\"productId\":18},{\"productId\":19},{\"productId\":20},{\"productId\":21},{\"productId\":22},{\"productId\":23},{\"productId\":24},{\"productId\":25},{\"productId\":26},{\"productId\":27},{\"productId\":28},{\"productId\":29},{\"productId\":30},{\"productId\":31},{\"productId\":32},{\"productId\":33},{\"productId\":34},{\"productId\":35},{\"productId\":36},{\"productId\":37}]}', 0, 'published', '2023-07-27 12:59:07', '2023-07-27 12:59:07'),
(95, 10, 'product-list-2', '{\"sectionTitle\":\"Men\'s T-Shirt\",\"banners\":[{\"productId\":40},{\"productId\":41},{\"productId\":42},{\"productId\":43}]}', 1, 'published', '2023-07-27 12:59:49', '2023-07-27 12:59:49'),
(96, 10, 'product-list-2', '{\"sectionTitle\":\"Men\'s Tank Tops\",\"banners\":[{\"productId\":38},{\"productId\":39}]}', 2, 'published', '2023-07-27 13:00:30', '2023-07-27 13:00:30'),
(97, 10, 'product-list-2', '{\"sectionTitle\":\"Men\'s Joggers\",\"banners\":[{\"productId\":45},{\"productId\":44},{\"productId\":46}]}', 3, 'published', '2023-07-27 13:01:10', '2023-07-27 13:01:10'),
(98, 10, 'product-list-2', '{\"sectionTitle\":\"Men\'s Watch\",\"banners\":[{\"productId\":101}]}', 4, 'published', '2023-07-27 13:02:03', '2023-07-27 13:02:03'),
(99, 10, 'product-list-2', '{\"sectionTitle\":\"Dhoti\",\"banners\":[{\"productId\":85}]}', 5, 'published', '2023-07-27 13:02:18', '2023-07-27 13:02:18'),
(100, 11, 'product-list-2', '{\"sectionTitle\":\"Kurti Tops\",\"banners\":[{\"productId\":47},{\"productId\":48},{\"productId\":56},{\"productId\":57},{\"productId\":58},{\"productId\":59},{\"productId\":60},{\"productId\":61},{\"productId\":62},{\"productId\":63},{\"productId\":64},{\"productId\":65},{\"productId\":69},{\"productId\":70},{\"productId\":71},{\"productId\":72},{\"productId\":73},{\"productId\":74},{\"productId\":77}]}', 0, 'published', '2023-07-27 14:55:29', '2023-07-27 14:55:29'),
(101, 11, 'product-list-2', '{\"sectionTitle\":\"Kurta + Dupatta Set\",\"banners\":[{\"productId\":52},{\"productId\":53},{\"productId\":54},{\"productId\":55},{\"productId\":75}]}', 1, 'published', '2023-07-27 14:57:41', '2023-07-27 14:57:41'),
(102, 11, 'product-list-2', '{\"sectionTitle\":\"Kurti + Pant + Dupatta Set\",\"banners\":[{\"productId\":66},{\"productId\":67},{\"productId\":68}]}', 2, 'published', '2023-07-27 14:58:42', '2023-07-27 14:58:42'),
(103, 11, 'product-list-2', '{\"sectionTitle\":\"Women\'s Jeans\",\"banners\":[{\"productId\":49},{\"productId\":50}]}', 3, 'published', '2023-07-27 14:59:22', '2023-07-27 14:59:22'),
(104, 11, 'product-list-2', '{\"sectionTitle\":\"Leggings\",\"banners\":[{\"productId\":89},{\"productId\":90},{\"productId\":91},{\"productId\":92},{\"productId\":93},{\"productId\":94},{\"productId\":95},{\"productId\":96}]}', 4, 'published', '2023-07-27 15:00:48', '2023-07-27 15:00:48'),
(105, 11, 'product-list-2', '{\"sectionTitle\":\"Women\'s T-Shirts\",\"banners\":[{\"productId\":78},{\"productId\":79},{\"productId\":80},{\"productId\":81},{\"productId\":82},{\"productId\":83},{\"productId\":84}]}', 5, 'published', '2023-07-27 15:02:49', '2023-07-27 15:02:49'),
(106, 11, 'product-list-2', '{\"sectionTitle\":\"Women\'s Watch\",\"banners\":[{\"productId\":102}]}', 6, 'published', '2023-07-27 15:04:15', '2023-07-27 15:04:15'),
(107, 17, 'product-list-2', '{\"sectionTitle\":\"Dhoti\",\"banners\":[{\"productId\":85}]}', 0, 'published', '2023-07-28 03:13:00', '2023-07-28 03:13:00'),
(108, 18, 'product-list-2', '{\"sectionTitle\":\"Women\'s Jeans\",\"banners\":[{\"productId\":49},{\"productId\":50}]}', 0, 'published', '2023-07-28 03:13:43', '2023-07-28 03:13:43'),
(109, 1, 'grid-lay', '{\"sectionTitle\":\"\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/be818235-568d-43ae-8c44-c5b3e889cedcre.jpg\",\"route\":\"men-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/be818235-568d-43ae-8c44-c5b3e889cedcban2.jpg\",\"route\":\"women-prodect\"}]}', 3, 'deleted', '2023-07-30 17:04:03', '2023-07-30 19:06:42'),
(110, 1, 'grid-lay', '{\"sectionTitle\":\"category\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/91383c40-68ea-4e6c-bfbf-2e305ffd7168Adobe_Express_20230731_0027250_1.png\",\"route\":\"men-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/91383c40-68ea-4e6c-bfbf-2e305ffd7168Adobe_Express_20230731_0033190_1.png\",\"route\":\"womem-prodect\"}]}', 4, 'published', '2023-07-30 19:06:06', '2023-07-30 19:06:34'),
(111, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti + Dupatta Set\",\"banners\":[{\"productId\":52},{\"productId\":53},{\"productId\":54},{\"productId\":55},{\"productId\":75},{\"productId\":98}]}', 3, 'published', '2023-07-31 03:10:45', '2023-07-31 03:10:45'),
(112, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti+Pant+Dupatta Set\",\"banners\":[{\"productId\":66},{\"productId\":67},{\"productId\":68},{\"productId\":97}]}', 4, 'published', '2023-07-31 03:12:00', '2023-07-31 03:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `SizeChart`
--

CREATE TABLE `SizeChart` (
  `sizeChartId` bigint(20) NOT NULL,
  `sizeChartCode` varchar(50) NOT NULL,
  `img` longtext NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active' COMMENT 'active, deleted',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Token`
--

CREATE TABLE `Token` (
  `tokenId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `tokenType` varchar(50) NOT NULL,
  `token` text NOT NULL,
  `loggedInBy` varchar(50) NOT NULL DEFAULT 'user',
  `expiresAt` varchar(50) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Token`
--

INSERT INTO `Token` (`tokenId`, `userId`, `tokenType`, `token`, `loggedInBy`, `expiresAt`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJXZWVtYXgiLCJlbWFpbCI6IndlZW1heGVjb21AZ21haWwuY29tIiwiaWF0IjoxNjkwNDYyNjIwLCJleHAiOjE2OTE3NTg2MjB9.mH-Q--nUYOH1Aqazyzjs5huBpFGxqnI9CKQr3PX7Fps', 'user', '2023-08-11 12:57:00', '2023-07-27 12:57:00', '2023-07-27 12:57:00'),
(2, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJXZWVtYXgiLCJlbWFpbCI6IndlZW1heGVjb21AZ21haWwuY29tIiwiaWF0IjoxNjkwNDYyNjIwLCJleHAiOjE2OTMwNTQ2MjB9.DoRC8URdKwUN_CNXjqm7E-oh_FctlP6rtS-f7VeeoJs', 'user', '2023-08-26 12:57:00', '2023-07-27 12:57:00', '2023-07-27 12:57:00'),
(3, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjI4MTEsImV4cCI6MTY5MTc1ODgxMX0.UWl6Y2VYPS-oCzQh7PdBm6TvTzZ6LMMvhiZ-vV0Gpz0', 'user', '2023-08-11 13:00:11', '2023-07-27 13:00:12', '2023-07-27 13:00:12'),
(4, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjI4MTEsImV4cCI6MTY5MzA1NDgxMX0.t9UukYSpi9luwwGnQYxWpVX9Nl_BHBi9qWnVOgyHUAk', 'user', '2023-08-26 13:00:11', '2023-07-27 13:00:12', '2023-07-27 13:00:12'),
(5, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY0MDI2LCJleHAiOjE2OTE3NjAwMjZ9.1vj02fSiU8IKy5KlaCyBIuE3Xjp3iUldkAOpa41BSjM', 'user', '2023-08-11 13:20:26', '2023-07-27 13:20:26', '2023-07-27 13:20:26'),
(6, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY0MDI2LCJleHAiOjE2OTMwNTYwMjZ9.uTD6CNNxNz-hXxlgkrr1Dwf0RX4Gi-oaNbT6oetB1og', 'user', '2023-08-26 13:20:26', '2023-07-27 13:20:26', '2023-07-27 13:20:26'),
(7, 4, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY1MjAzLCJleHAiOjE2OTE3NjEyMDN9.g-QzUVjR-9SfGrf619S8dyihqua9NEaUpcADlvLj57E', 'user', '2023-08-11 13:40:03', '2023-07-27 13:40:03', '2023-07-27 13:40:03'),
(8, 4, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY1MjAzLCJleHAiOjE2OTMwNTcyMDN9.5IfDPVqtRWMc8LEG8hL8RraOrs09bUgR9dU-0UuYB9o', 'user', '2023-08-26 13:40:03', '2023-07-27 13:40:03', '2023-07-27 13:40:03'),
(9, 4, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY1NDk2LCJleHAiOjE2OTE3NjE0OTZ9.UwU2DS1cCEJ8VjWbhmNnjZerWo5HGfF4MgG24EKWzcY', 'user', '2023-08-11 13:44:56', '2023-07-27 13:44:56', '2023-07-27 13:44:56'),
(10, 4, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY1NDk2LCJleHAiOjE2OTMwNTc0OTZ9.vNzVjjk_58wHcd9cBrHyxmXnksMXzvFR3unHyYMcTXw', 'user', '2023-08-26 13:44:56', '2023-07-27 13:44:56', '2023-07-27 13:44:56'),
(11, 4, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY1NDk3LCJleHAiOjE2OTE3NjE0OTd9.VUIBw3s63_kCoL722W0lE1hGA_tGgAh4Ai9I8Oghsls', 'user', '2023-08-11 13:44:57', '2023-07-27 13:44:57', '2023-07-27 13:44:57'),
(12, 4, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY1NDk3LCJleHAiOjE2OTMwNTc0OTd9.s3kkJxziXFiuoUhH3DOKWclb64apqoPMd8mzVkKFYIE', 'user', '2023-08-26 13:44:57', '2023-07-27 13:44:57', '2023-07-27 13:44:57'),
(13, 5, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsIm5hbWUiOiJuYWdhdmFsbGkgcyIsImVtYWlsIjoibmFndWt1bWFyODUyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ2NTc4OCwiZXhwIjoxNjkxNzYxNzg4fQ.hCFzV_NJh0tspWXzzM4gw8rpfec7MsLjECXG3xkQl3w', 'user', '2023-08-11 13:49:48', '2023-07-27 13:49:48', '2023-07-27 13:49:48'),
(14, 5, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsIm5hbWUiOiJuYWdhdmFsbGkgcyIsImVtYWlsIjoibmFndWt1bWFyODUyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ2NTc4OCwiZXhwIjoxNjkzMDU3Nzg4fQ.XhUpJU4SdSPpOA8mUfyPxjsGHIIhrbk1DjEC57Dvtro', 'user', '2023-08-26 13:49:48', '2023-07-27 13:49:48', '2023-07-27 13:49:48'),
(15, 6, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYsIm5hbWUiOiJOaW1ydWt0aGkgIiwiZW1haWwiOiJuaW1ydWt0aGlzZW50aGlsa3VtYXIwMDFAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY1OTM3LCJleHAiOjE2OTE3NjE5Mzd9.2hebUSTLJXBNMz4mJ6l0GoP-W_BKz3tSXW6gxN6gPUo', 'user', '2023-08-11 13:52:17', '2023-07-27 13:52:17', '2023-07-27 13:52:17'),
(16, 6, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYsIm5hbWUiOiJOaW1ydWt0aGkgIiwiZW1haWwiOiJuaW1ydWt0aGlzZW50aGlsa3VtYXIwMDFAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY1OTM3LCJleHAiOjE2OTMwNTc5Mzd9.YWcSX0STEWNMorHUpjWSh3kjI7FRCgAmiNXkhiwDQTM', 'user', '2023-08-26 13:52:17', '2023-07-27 13:52:17', '2023-07-27 13:52:17'),
(17, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjYwMDIsImV4cCI6MTY5MTc2MjAwMn0.4RBxU88FlRDOUIpfa_cgBn_1sS-FVjFdI3ef051WxWY', 'user', '2023-08-11 13:53:22', '2023-07-27 13:53:22', '2023-07-27 13:53:22'),
(18, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjYwMDIsImV4cCI6MTY5MzA1ODAwMn0._eR4sE7jYkkEBqnfIp_hylo32zbpWKQldtUo0a0vV6A', 'user', '2023-08-26 13:53:22', '2023-07-27 13:53:22', '2023-07-27 13:53:22'),
(19, 8, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgsIm5hbWUiOiJUaGlsYWsgUnMiLCJlbWFpbCI6InRoaWxha3NlbnRoaWxrdW1hcjE2QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ2NjI1NSwiZXhwIjoxNjkxNzYyMjU1fQ.rvxOTxUqegM_PR7RBBriWq3PV3cYEQFel5iv5qsJevg', 'user', '2023-08-11 13:57:35', '2023-07-27 13:57:35', '2023-07-27 13:57:35'),
(20, 8, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgsIm5hbWUiOiJUaGlsYWsgUnMiLCJlbWFpbCI6InRoaWxha3NlbnRoaWxrdW1hcjE2QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ2NjI1NSwiZXhwIjoxNjkzMDU4MjU1fQ.GwrzCc97Es8Oxl3H7r6CZ1LJgCkNnPbOMKnqS51EXqg', 'user', '2023-08-26 13:57:35', '2023-07-27 13:57:35', '2023-07-27 13:57:35'),
(21, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY2Mzk3LCJleHAiOjE2OTE3NjIzOTd9.VvD3NXmLpDHD565ywZAgC6Kr66q0pudbUBFOch9fTtA', 'user', '2023-08-11 13:59:57', '2023-07-27 13:59:57', '2023-07-27 13:59:57'),
(22, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY2Mzk3LCJleHAiOjE2OTMwNTgzOTd9.uGPchZFy_WvNz_nNcIwYplQtK13_pT7YixnjWZJxhHE', 'user', '2023-08-26 13:59:57', '2023-07-27 13:59:57', '2023-07-27 13:59:57'),
(23, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY2Mzk3LCJleHAiOjE2OTE3NjIzOTd9.VvD3NXmLpDHD565ywZAgC6Kr66q0pudbUBFOch9fTtA', 'user', '2023-08-11 13:59:57', '2023-07-27 13:59:57', '2023-07-27 13:59:57'),
(24, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY2Mzk3LCJleHAiOjE2OTMwNTgzOTd9.uGPchZFy_WvNz_nNcIwYplQtK13_pT7YixnjWZJxhHE', 'user', '2023-08-26 13:59:57', '2023-07-27 13:59:57', '2023-07-27 13:59:57'),
(25, 6, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYsIm5hbWUiOiJOaW1ydWt0aGkgIiwiZW1haWwiOiJuaW1ydWt0aGlzZW50aGlsa3VtYXIwMDFAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY2ODg4LCJleHAiOjE2OTE3NjI4ODh9.suFmzNbsg7ahmK4Y7rx-A1W2EfhY0zbGETGMHzSM3zg', 'user', '2023-08-11 14:08:08', '2023-07-27 14:08:08', '2023-07-27 14:08:08'),
(26, 6, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYsIm5hbWUiOiJOaW1ydWt0aGkgIiwiZW1haWwiOiJuaW1ydWt0aGlzZW50aGlsa3VtYXIwMDFAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY2ODg4LCJleHAiOjE2OTMwNTg4ODh9.hGbGQXOoS3R0jhV8uLPK9qsvlpLFRdi-EtlXIjYpDvo', 'user', '2023-08-26 14:08:08', '2023-07-27 14:08:08', '2023-07-27 14:08:08'),
(27, 9, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksIm5hbWUiOiJQb29tYWxhaSBBaGlsYW4iLCJlbWFpbCI6InBvb21hbGFoaWxhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjY5MTUsImV4cCI6MTY5MTc2MjkxNX0.QtG2H9ZNKNTPa1oGFeAIxexGR1o06gHvN2fT3jWQfwE', 'user', '2023-08-11 14:08:35', '2023-07-27 14:08:35', '2023-07-27 14:08:35'),
(28, 9, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksIm5hbWUiOiJQb29tYWxhaSBBaGlsYW4iLCJlbWFpbCI6InBvb21hbGFoaWxhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjY5MTUsImV4cCI6MTY5MzA1ODkxNX0.YUMB3O4DPvoYFA792UCHQGanuLBU2NoU5ZYrwzVONJU', 'user', '2023-08-26 14:08:35', '2023-07-27 14:08:35', '2023-07-27 14:08:35'),
(29, 9, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksIm5hbWUiOiJQb29tYWxhaSBBaGlsYW4iLCJlbWFpbCI6InBvb21hbGFoaWxhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjY5MjAsImV4cCI6MTY5MTc2MjkyMH0.zWM39e1mU5CrN_4kSDnMAKM5U79jIXPV67OTKJBHhZo', 'user', '2023-08-11 14:08:40', '2023-07-27 14:08:40', '2023-07-27 14:08:40'),
(30, 9, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksIm5hbWUiOiJQb29tYWxhaSBBaGlsYW4iLCJlbWFpbCI6InBvb21hbGFoaWxhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjY5MjAsImV4cCI6MTY5MzA1ODkyMH0.EYCVlPEYMfSJtX39fq5nTMccJEFkg4YTALaenYv4WPY', 'user', '2023-08-26 14:08:40', '2023-07-27 14:08:40', '2023-07-27 14:08:40'),
(31, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjcwOTUsImV4cCI6MTY5MTc2MzA5NX0.IZK9mnVHdvaXtrhyY7q3JdI8bJmDQmTDdoPNuB4x7G0', 'user', '2023-08-11 14:11:35', '2023-07-27 14:11:35', '2023-07-27 14:11:35'),
(32, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjcwOTUsImV4cCI6MTY5MzA1OTA5NX0.h4RnFuoUmxg7ekRyGjgcvIbQxbnu4jgdUL0q92wrykk', 'user', '2023-08-26 14:11:35', '2023-07-27 14:11:35', '2023-07-27 14:11:35'),
(33, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjcxMjgsImV4cCI6MTY5MTc2MzEyOH0.8U_iPKOE-1NFH8sQgOjmcqG7omM2Jn2GsCktL7pAc_s', 'user', '2023-08-11 14:12:08', '2023-07-27 14:12:08', '2023-07-27 14:12:08'),
(34, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjcxMjgsImV4cCI6MTY5MzA1OTEyOH0.e42veJqFZ-cJaqJ5B_7bVQSWMnvsvhgVyeobS_UoJGw', 'user', '2023-08-26 14:12:08', '2023-07-27 14:12:08', '2023-07-27 14:12:08'),
(35, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ2NzI5NywiZXhwIjoxNjkxNzYzMjk3fQ.0m8bC07B-yAu5JV62muceJ1NGZpQEkJPz_WK4PmnQAc', 'user', '2023-08-11 14:14:57', '2023-07-27 14:14:57', '2023-07-27 14:14:57'),
(36, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ2NzI5NywiZXhwIjoxNjkzMDU5Mjk3fQ.0QBY3T4x4NaKweSB_vmpzkWoSuO4EMp5tX1_dDHW5NM', 'user', '2023-08-26 14:14:57', '2023-07-27 14:14:57', '2023-07-27 14:14:57'),
(37, 11, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJuYW1lIjoiRGhlc2hhcHJpeWFuIFRoYW5hc2VrYXJhbiAiLCJlbWFpbCI6ImRoZXNoYTc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ2NzQzNCwiZXhwIjoxNjkxNzYzNDM0fQ.QX5ozvCdwo-aGi2CWcormtYBgrkhP0VscBIW5Z9Ufc8', 'user', '2023-08-11 14:17:14', '2023-07-27 14:17:14', '2023-07-27 14:17:14'),
(38, 11, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJuYW1lIjoiRGhlc2hhcHJpeWFuIFRoYW5hc2VrYXJhbiAiLCJlbWFpbCI6ImRoZXNoYTc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ2NzQzNCwiZXhwIjoxNjkzMDU5NDM0fQ.LYUbcJtp0aF0eOfML8YSQRheaKMNnK6Wz9MeeSM9ekU', 'user', '2023-08-26 14:17:14', '2023-07-27 14:17:14', '2023-07-27 14:17:14'),
(39, 4, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY3ODYxLCJleHAiOjE2OTE3NjM4NjF9.difCDDYvlT4MiHYBQ0eIX7Z-mR26n6FpTDbr3ju8JME', 'user', '2023-08-11 14:24:21', '2023-07-27 14:24:21', '2023-07-27 14:24:21'),
(40, 4, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY3ODYxLCJleHAiOjE2OTMwNTk4NjF9.DDiXLqHKF9RnjcbvvuecKHaVvN_zHlgEQ3y-BnpH9g8', 'user', '2023-08-26 14:24:21', '2023-07-27 14:24:21', '2023-07-27 14:24:21'),
(41, 13, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY3ODczLCJleHAiOjE2OTE3NjM4NzN9.P4_SZCPusDx_O92Rr7Kp-QfLbnA7HVDEm5dzQ7lwcWM', 'user', '2023-08-11 14:24:33', '2023-07-27 14:24:33', '2023-07-27 14:24:33'),
(42, 13, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY3ODczLCJleHAiOjE2OTMwNTk4NzN9.3ydjqgMfmrQt-bWMi2bXO5oDzoTC27Fl66RMdBp1Epk', 'user', '2023-08-26 14:24:33', '2023-07-27 14:24:33', '2023-07-27 14:24:33'),
(43, 12, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyLCJuYW1lIjoiQXJ1biIsImVtYWlsIjoiYXJ1bmt1bWFyZGhvbmk0ODNAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY3ODgzLCJleHAiOjE2OTE3NjM4ODN9.0dc71rlhx96sP6o0QB8my8atmACpQgM1IY9D13KLwpI', 'user', '2023-08-11 14:24:43', '2023-07-27 14:24:43', '2023-07-27 14:24:43'),
(44, 12, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyLCJuYW1lIjoiQXJ1biIsImVtYWlsIjoiYXJ1bmt1bWFyZGhvbmk0ODNAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY3ODgzLCJleHAiOjE2OTMwNTk4ODN9.0we75_GMMnOxhM7wgXUiVizVDRnAtk6mU8vI6COA2DM', 'user', '2023-08-26 14:24:43', '2023-07-27 14:24:43', '2023-07-27 14:24:43'),
(45, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ2ODM0MywiZXhwIjoxNjkxNzY0MzQzfQ.3nsBO4Pdk-3d7QlumyJ4N8FpJX5ehStUToo50JB5ZSY', 'user', '2023-08-11 14:32:23', '2023-07-27 14:32:23', '2023-07-27 14:32:23'),
(46, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ2ODM0MywiZXhwIjoxNjkzMDYwMzQzfQ.WeaXyfvQpK2QF1h3WCJ80pET4X5PY6sjpc20Ae9sAPc', 'user', '2023-08-26 14:32:23', '2023-07-27 14:32:23', '2023-07-27 14:32:23'),
(47, 14, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY4Nzc1LCJleHAiOjE2OTE3NjQ3NzV9.cO5OZFJXs7-JbZ_L27_CSX1zGhU2nZ-Mf0DiHpYpjkU', 'user', '2023-08-11 14:39:35', '2023-07-27 14:39:35', '2023-07-27 14:39:35'),
(48, 14, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY4Nzc1LCJleHAiOjE2OTMwNjA3NzV9._r9_kn_VazuLMZdyn7hzEgW9L-tcZq9mNUoFsAhglBs', 'user', '2023-08-26 14:39:35', '2023-07-27 14:39:35', '2023-07-27 14:39:35'),
(49, 15, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1LCJuYW1lIjoiS2FkaGFyIG1haWRlZW4iLCJlbWFpbCI6Im5vd2ZpbGthYWRoYXJtYWlkZWVubmFzYXJhbGlAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY5MDM1LCJleHAiOjE2OTE3NjUwMzV9.-uqE85D_MLQTJY1Y0QbCFjmyR7BOpE3cg-9lFOM4kg0', 'user', '2023-08-11 14:43:55', '2023-07-27 14:43:55', '2023-07-27 14:43:55'),
(50, 15, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1LCJuYW1lIjoiS2FkaGFyIG1haWRlZW4iLCJlbWFpbCI6Im5vd2ZpbGthYWRoYXJtYWlkZWVubmFzYXJhbGlAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY5MDM1LCJleHAiOjE2OTMwNjEwMzV9.bPBanjZColekWtZgIE9E4yailPS2LN2IMKOY7kFe1Do', 'user', '2023-08-26 14:43:55', '2023-07-27 14:43:55', '2023-07-27 14:43:55'),
(51, 16, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2LCJuYW1lIjoiSGFyaXByYXNhbm5hIiwiZW1haWwiOiJoYXJpcHJhc2FubmEwODJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY5MDQ1LCJleHAiOjE2OTE3NjUwNDV9.Ss6B0TTYFAbx8L26eF8u4p5IYVPsyGt-2UmWR2I0s0o', 'user', '2023-08-11 14:44:05', '2023-07-27 14:44:05', '2023-07-27 14:44:05'),
(52, 16, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2LCJuYW1lIjoiSGFyaXByYXNhbm5hIiwiZW1haWwiOiJoYXJpcHJhc2FubmEwODJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY5MDQ1LCJleHAiOjE2OTMwNjEwNDV9.Mii5V8x2AIyr1QCRk_yhDWKRVKaxioo9qwYG_WgsypU', 'user', '2023-08-26 14:44:05', '2023-07-27 14:44:05', '2023-07-27 14:44:05'),
(53, 17, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3LCJuYW1lIjoiRGFyc2hpbmkgQmFsYXN1YnJhbWFuaWFtICIsImVtYWlsIjoiZGFyc2hpbmliYWx1MEBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjkzMTAsImV4cCI6MTY5MTc2NTMxMH0.lBYhZcLrZeBGiSZIgffRlX9k69SGiO2mGVGPKwKpPGk', 'user', '2023-08-11 14:48:30', '2023-07-27 14:48:30', '2023-07-27 14:48:30'),
(54, 17, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3LCJuYW1lIjoiRGFyc2hpbmkgQmFsYXN1YnJhbWFuaWFtICIsImVtYWlsIjoiZGFyc2hpbmliYWx1MEBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NjkzMTAsImV4cCI6MTY5MzA2MTMxMH0.G0taywVHfLNmLxkyNMyVON6fyPvcz4xqsekpVdAOHeQ', 'user', '2023-08-26 14:48:30', '2023-07-27 14:48:30', '2023-07-27 14:48:30'),
(55, 18, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4LCJuYW1lIjoiTWFub2ogS3VtYXIiLCJlbWFpbCI6Im1hbm9qa3VtYXJzMjcwNjIwMDBAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY5NTI5LCJleHAiOjE2OTE3NjU1Mjl9.bXo4MAc0w_B8W56-P4ZMFw1wi26nfCdlgkDb0xDwwJs', 'user', '2023-08-11 14:52:09', '2023-07-27 14:52:09', '2023-07-27 14:52:09'),
(56, 18, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4LCJuYW1lIjoiTWFub2ogS3VtYXIiLCJlbWFpbCI6Im1hbm9qa3VtYXJzMjcwNjIwMDBAZ21haWwuY29tIiwiaWF0IjoxNjkwNDY5NTI5LCJleHAiOjE2OTMwNjE1Mjl9.3sbbfYiHSq9F_b_gqSbRQNxfEfIQhtd2xO9eRd4TjMo', 'user', '2023-08-26 14:52:09', '2023-07-27 14:52:09', '2023-07-27 14:52:09'),
(57, 19, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE5LCJuYW1lIjoiSGFyaSIsImVtYWlsIjoiaGFyaWhhcmFuMTEya0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzE5MDEsImV4cCI6MTY5MTc2NzkwMX0.2e-yz2hJGT5yKH-ghEibcjFQEs9mH2UAaG8EFOgCLx0', 'user', '2023-08-11 15:31:41', '2023-07-27 15:31:41', '2023-07-27 15:31:41'),
(58, 19, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE5LCJuYW1lIjoiSGFyaSIsImVtYWlsIjoiaGFyaWhhcmFuMTEya0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzE5MDEsImV4cCI6MTY5MzA2MzkwMX0.9wG1c8RcM4ABJVmna62M2cRty5ZJoOy3ytQoW-WKpVA', 'user', '2023-08-26 15:31:41', '2023-07-27 15:31:41', '2023-07-27 15:31:41'),
(59, 20, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIwLCJuYW1lIjoiUmFqa3VtYXIgTiIsImVtYWlsIjoiZXIucmFqa3VtYXJ0a25AZ21haWwuY29tIiwiaWF0IjoxNjkwNDczOTk2LCJleHAiOjE2OTE3Njk5OTZ9.wt167yu8mvx29QitLGpkO7mGU6qL9XiG_0QqHeOHpdE', 'user', '2023-08-11 16:06:36', '2023-07-27 16:06:36', '2023-07-27 16:06:36'),
(60, 20, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIwLCJuYW1lIjoiUmFqa3VtYXIgTiIsImVtYWlsIjoiZXIucmFqa3VtYXJ0a25AZ21haWwuY29tIiwiaWF0IjoxNjkwNDczOTk2LCJleHAiOjE2OTMwNjU5OTZ9.zu6legPD1MHjBjwWy1ZnZrZew9-fMts7xCYb98lV2Ck', 'user', '2023-08-26 16:06:36', '2023-07-27 16:06:36', '2023-07-27 16:06:36'),
(61, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDc0NDM5LCJleHAiOjE2OTE3NzA0Mzl9.J23vvMw9yRz242WHDzJDSNbQTL0SRPDNhlh3H67S0P8', 'user', '2023-08-11 16:13:59', '2023-07-27 16:13:59', '2023-07-27 16:13:59'),
(62, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNDc0NDM5LCJleHAiOjE2OTMwNjY0Mzl9.YoZB_xTOFHLuKPUHDTjD1-qj64F4Kt3nA6mRkFOgT5I', 'user', '2023-08-26 16:13:59', '2023-07-27 16:13:59', '2023-07-27 16:13:59'),
(63, 21, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIxLCJuYW1lIjoidi4gbmFsaW5pIiwiZW1haWwiOiJ2YWRpdmVsdW5hbGluaWRwbUBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzQ5MzYsImV4cCI6MTY5MTc3MDkzNn0.Lyt-lGprWpZgljE1JzMUtdQRpJu2VCw9Nj8X75D3AXk', 'user', '2023-08-11 16:22:16', '2023-07-27 16:22:16', '2023-07-27 16:22:16'),
(64, 21, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIxLCJuYW1lIjoidi4gbmFsaW5pIiwiZW1haWwiOiJ2YWRpdmVsdW5hbGluaWRwbUBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzQ5MzYsImV4cCI6MTY5MzA2NjkzNn0.ULEzuwUej9k-llifen8vMgbS4FYM1zd8kZdPytIceCc', 'user', '2023-08-26 16:22:16', '2023-07-27 16:22:16', '2023-07-27 16:22:16'),
(65, 23, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIzLCJuYW1lIjoiRWxha2tpeWEgViIsImVtYWlsIjoiZWxha2tpeWF2YXJhZGhhcmFqYW4yMEBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzUyNzYsImV4cCI6MTY5MTc3MTI3Nn0.dKbo4cPjI4qKfD6s7Yn61g87fdEqKYYeQ4ArYWY6qio', 'user', '2023-08-11 16:27:56', '2023-07-27 16:27:56', '2023-07-27 16:27:56'),
(66, 23, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIzLCJuYW1lIjoiRWxha2tpeWEgViIsImVtYWlsIjoiZWxha2tpeWF2YXJhZGhhcmFqYW4yMEBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzUyNzYsImV4cCI6MTY5MzA2NzI3Nn0.jg9qtQSahzD3hbi8cVLiQnuBpVPmMlafQsmBwlm-JEY', 'user', '2023-08-26 16:27:56', '2023-07-27 16:27:56', '2023-07-27 16:27:56'),
(67, 21, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIxLCJuYW1lIjoidi4gbmFsaW5pIiwiZW1haWwiOiJ2YWRpdmVsdW5hbGluaWRwbUBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzU0OTYsImV4cCI6MTY5MTc3MTQ5Nn0.9gmZpqSbDlzd9e9qIqHEev7p9oRhKICJ64_L76WiRUw', 'user', '2023-08-11 16:31:36', '2023-07-27 16:31:36', '2023-07-27 16:31:36'),
(68, 21, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIxLCJuYW1lIjoidi4gbmFsaW5pIiwiZW1haWwiOiJ2YWRpdmVsdW5hbGluaWRwbUBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzU0OTYsImV4cCI6MTY5MzA2NzQ5Nn0.GCHXYnb_FPubxz59UTyJCVqzRs84hB-BlojWlPHH5nE', 'user', '2023-08-26 16:31:36', '2023-07-27 16:31:36', '2023-07-27 16:31:36'),
(69, 11, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJuYW1lIjoiRGhlc2hhcHJpeWFuIFRoYW5hc2VrYXJhbiAiLCJlbWFpbCI6ImRoZXNoYTc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ3NTYyMCwiZXhwIjoxNjkxNzcxNjIwfQ.MYNHbWOxqWYozm5RBwOSMQvZAPFi83_lF_vYC_VGY6Q', 'user', '2023-08-11 16:33:40', '2023-07-27 16:33:40', '2023-07-27 16:33:40'),
(70, 11, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJuYW1lIjoiRGhlc2hhcHJpeWFuIFRoYW5hc2VrYXJhbiAiLCJlbWFpbCI6ImRoZXNoYTc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ3NTYyMCwiZXhwIjoxNjkzMDY3NjIwfQ.d_D1nBrr_jC24wAUIME9PSvECKDLHtDlXWSWdHs5VcY', 'user', '2023-08-26 16:33:40', '2023-07-27 16:33:40', '2023-07-27 16:33:40'),
(71, 11, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJuYW1lIjoiRGhlc2hhcHJpeWFuIFRoYW5hc2VrYXJhbiAiLCJlbWFpbCI6ImRoZXNoYTc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ3NTYyMSwiZXhwIjoxNjkxNzcxNjIxfQ.FIfGE-IjY_Z1jXoB-Nrr7iHdidezDpn6CmygmWvZSbY', 'user', '2023-08-11 16:33:41', '2023-07-27 16:33:41', '2023-07-27 16:33:41'),
(72, 11, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJuYW1lIjoiRGhlc2hhcHJpeWFuIFRoYW5hc2VrYXJhbiAiLCJlbWFpbCI6ImRoZXNoYTc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ3NTYyMSwiZXhwIjoxNjkzMDY3NjIxfQ._XN6jOWrMYFDq3mf1Bxlo0jkbtjLOT3KKK4-QJr0UoU', 'user', '2023-08-26 16:33:41', '2023-07-27 16:33:41', '2023-07-27 16:33:41'),
(73, 24, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI0LCJuYW1lIjoiTW9oYW1lZCBUYXJpcSIsImVtYWlsIjoibW9oYW1lZC50YXJpcTQ2QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ3NjA4MywiZXhwIjoxNjkxNzcyMDgzfQ.twJaMk5zh7seMF42PlOy186I6B-znY_j2HD1EHSWEAk', 'user', '2023-08-11 16:41:23', '2023-07-27 16:41:23', '2023-07-27 16:41:23'),
(74, 24, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI0LCJuYW1lIjoiTW9oYW1lZCBUYXJpcSIsImVtYWlsIjoibW9oYW1lZC50YXJpcTQ2QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ3NjA4MywiZXhwIjoxNjkzMDY4MDgzfQ.50kVOTRD0EyA3-TpuxUg7QxgseZdwoirPAprzWZmjD4', 'user', '2023-08-26 16:41:23', '2023-07-27 16:41:23', '2023-07-27 16:41:23'),
(75, 25, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI1LCJuYW1lIjoiU3VyeWEiLCJlbWFpbCI6InN1cnlhcmFqYXZsdEBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzgyOTUsImV4cCI6MTY5MTc3NDI5NX0.aujflpw95cMaYnnLLNztFQKirzjofS453IpwJMh2PeQ', 'user', '2023-08-11 17:18:15', '2023-07-27 17:18:15', '2023-07-27 17:18:15'),
(76, 25, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI1LCJuYW1lIjoiU3VyeWEiLCJlbWFpbCI6InN1cnlhcmFqYXZsdEBnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzgyOTUsImV4cCI6MTY5MzA3MDI5NX0.hZ_pB6-yL-bxeq-QF2GFU5zfSSA6ZfjooOIsUqICj0M', 'user', '2023-08-26 17:18:15', '2023-07-27 17:18:15', '2023-07-27 17:18:15'),
(77, 14, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkwNDc4MzM5LCJleHAiOjE2OTE3NzQzMzl9.ZVfKusDsR0kDQZkyJFAq5oYeO2ic6Z6fyE8VkFXiPbo', 'user', '2023-08-11 17:18:59', '2023-07-27 17:18:59', '2023-07-27 17:18:59'),
(78, 14, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkwNDc4MzM5LCJleHAiOjE2OTMwNzAzMzl9.uOTqLWXcbruH3rywP-aaA4PH1Hwe8msvoD4PMGW5qyI', 'user', '2023-08-26 17:18:59', '2023-07-27 17:18:59', '2023-07-27 17:18:59'),
(79, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzkyNDIsImV4cCI6MTY5MTc3NTI0Mn0.rZC77bm6NZCb-18BF4QnnllwUQXjWCNM20uzGuiklFY', 'user', '2023-08-11 17:34:02', '2023-07-27 17:34:02', '2023-07-27 17:34:02'),
(80, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0NzkyNDIsImV4cCI6MTY5MzA3MTI0Mn0.iCbYlVLhhfMoEjVzXUAhZrj1fQR90N1SA6RByJ9VQNA', 'user', '2023-08-26 17:34:02', '2023-07-27 17:34:02', '2023-07-27 17:34:02'),
(81, 23, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIzLCJuYW1lIjoiRWxha2tpeWEgViIsImVtYWlsIjoiZWxha2tpeWF2YXJhZGhhcmFqYW4yMEBnbWFpbC5jb20iLCJpYXQiOjE2OTA0Nzk3MjIsImV4cCI6MTY5MTc3NTcyMn0.GTvY7fE1ssnxM-yZ0T5z1UoVs4cHlYnuqPVl4Lu9xUU', 'user', '2023-08-11 17:42:02', '2023-07-27 17:42:02', '2023-07-27 17:42:02'),
(82, 23, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIzLCJuYW1lIjoiRWxha2tpeWEgViIsImVtYWlsIjoiZWxha2tpeWF2YXJhZGhhcmFqYW4yMEBnbWFpbC5jb20iLCJpYXQiOjE2OTA0Nzk3MjIsImV4cCI6MTY5MzA3MTcyMn0.xsl8CriFtlwdr0-zTbG_ESBMTyg4Y6xSGqyNny26YOQ', 'user', '2023-08-26 17:42:02', '2023-07-27 17:42:02', '2023-07-27 17:42:02'),
(83, 9, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksIm5hbWUiOiJQb29tYWxhaSBBaGlsYW4iLCJlbWFpbCI6InBvb21hbGFoaWxhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTA0Nzk3NDIsImV4cCI6MTY5MTc3NTc0Mn0.9NOkZQsda3yxsmsvARxaXFW1m-108c2SpF7ikfovXeQ', 'user', '2023-08-11 17:42:22', '2023-07-27 17:42:22', '2023-07-27 17:42:22'),
(84, 9, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjksIm5hbWUiOiJQb29tYWxhaSBBaGlsYW4iLCJlbWFpbCI6InBvb21hbGFoaWxhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTA0Nzk3NDIsImV4cCI6MTY5MzA3MTc0Mn0.MolnFnvEihTrOiO_kEgTRwXCWrXBN-EWelMfCo6CPBU', 'user', '2023-08-26 17:42:22', '2023-07-27 17:42:22', '2023-07-27 17:42:22'),
(85, 26, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI2LCJuYW1lIjoiUmFqYSIsImVtYWlsIjoicmFqYXN1c2FpOTE0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ4MDI1NiwiZXhwIjoxNjkxNzc2MjU2fQ.FExhl_ONNfNzbHlTX8CjPKZi9pflfNBpm9fWUBsDdXs', 'user', '2023-08-11 17:50:56', '2023-07-27 17:50:56', '2023-07-27 17:50:56'),
(86, 26, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI2LCJuYW1lIjoiUmFqYSIsImVtYWlsIjoicmFqYXN1c2FpOTE0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ4MDI1NiwiZXhwIjoxNjkzMDcyMjU2fQ.uZ50NIysrFVN-khMcXNnwts_uBLjG8bXDgv7QCbf2zI', 'user', '2023-08-26 17:50:56', '2023-07-27 17:50:56', '2023-07-27 17:50:56'),
(87, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0ODE0MTcsImV4cCI6MTY5MTc3NzQxN30.UWxx_HYwVsQmj1VBPf8JvsP_n5EBsQgKsCbFvGDOsQs', 'user', '2023-08-11 23:40:17', '2023-07-27 18:10:21', '2023-07-27 18:10:21'),
(88, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0ODE0MTcsImV4cCI6MTY5MzA3MzQxN30.rrFdBuBGg30iQUs85AdbXyJbIo4G4M6pWykteJnQhQM', 'user', '2023-08-26 23:40:17', '2023-07-27 18:10:21', '2023-07-27 18:10:21'),
(89, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0ODE2NDMsImV4cCI6MTY5MTc3NzY0M30.kDlgeFlT-_cOdopI2w1ViXTs6steS8Y941ojKUpGG9g', 'user', '2023-08-11 18:14:03', '2023-07-27 18:14:03', '2023-07-27 18:14:03'),
(90, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0ODE2NDMsImV4cCI6MTY5MzA3MzY0M30.7YtArgEuQ5PSAKBIYn7GZ9AwFI9fzCnl0B6q8E1pmus', 'user', '2023-08-26 18:14:03', '2023-07-27 18:14:03', '2023-07-27 18:14:03'),
(91, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0ODIwODMsImV4cCI6MTY5MTc3ODA4M30.LqQJw4ijCRfEDth6UeypExbBrc012SOUOdK0A3MLWXg', 'user', '2023-08-11 23:51:23', '2023-07-27 18:21:27', '2023-07-27 18:21:27'),
(92, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0ODIwODMsImV4cCI6MTY5MzA3NDA4M30.K274xXH01Jnx4BP1F8swuw5fvUhOeX1eUQweOUnqxoA', 'user', '2023-08-26 23:51:23', '2023-07-27 18:21:27', '2023-07-27 18:21:27'),
(93, 27, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI3LCJuYW1lIjoiS2FydGhpa2V5YW4gViIsImVtYWlsIjoia2FydGhpa2V5YW52ZW5rYXRhY2hhbGFwYXRoaTVAZ21haWwuY29tIiwiaWF0IjoxNjkwNDgyMTM5LCJleHAiOjE2OTE3NzgxMzl9.9lhWpa4Mwd4ZXRLrlmvngnk0GewKlRt-k19ASygUGG8', 'user', '2023-08-11 18:22:19', '2023-07-27 18:22:19', '2023-07-27 18:22:19'),
(94, 27, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI3LCJuYW1lIjoiS2FydGhpa2V5YW4gViIsImVtYWlsIjoia2FydGhpa2V5YW52ZW5rYXRhY2hhbGFwYXRoaTVAZ21haWwuY29tIiwiaWF0IjoxNjkwNDgyMTM5LCJleHAiOjE2OTMwNzQxMzl9.BaRV-VhttT8qFVlgww0jjfwGKOJ7okKVR4MWpW5cFjk', 'user', '2023-08-26 18:22:19', '2023-07-27 18:22:19', '2023-07-27 18:22:19'),
(95, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0ODIxNzUsImV4cCI6MTY5MTc3ODE3NX0.RZN1kUl_3jeJwCVG7855TSQipUrqXyMeEeRf7Oa54cY', 'user', '2023-08-11 23:52:55', '2023-07-27 18:22:59', '2023-07-27 18:22:59'),
(96, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0ODIxNzUsImV4cCI6MTY5MzA3NDE3NX0.n3x8v8OBrKiciPGeQnK1puhmH1nmWq0_-tsqjV5bRoQ', 'user', '2023-08-26 23:52:55', '2023-07-27 18:22:59', '2023-07-27 18:22:59'),
(97, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0ODY1NzUsImV4cCI6MTY5MTc4MjU3NX0.Por6zUx08q7ibevlnnSfL5IwOitoap6SRc-r_DO52YU', 'user', '2023-08-11 19:36:15', '2023-07-27 19:36:15', '2023-07-27 19:36:15'),
(98, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0ODY1NzUsImV4cCI6MTY5MzA3ODU3NX0.3dcLPYTjQrRsCvHV4ir5OuVCuABIJpfhs_3fwWbpj8I', 'user', '2023-08-26 19:36:15', '2023-07-27 19:36:15', '2023-07-27 19:36:15'),
(99, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJXZWVtYXgiLCJlbWFpbCI6IndlZW1heGVjb21AZ21haWwuY29tIiwiaWF0IjoxNjkwNDkzNzEwLCJleHAiOjE2OTE3ODk3MTB9.FhnYmp-WRQ4NXi5XlaX70qQuILoOv2FRsjeaQtFwanE', 'user', '2023-08-11 21:35:10', '2023-07-27 21:35:10', '2023-07-27 21:35:10'),
(100, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJXZWVtYXgiLCJlbWFpbCI6IndlZW1heGVjb21AZ21haWwuY29tIiwiaWF0IjoxNjkwNDkzNzEwLCJleHAiOjE2OTMwODU3MTB9.lzWbLpHQbgpnqMbZEKd3qhK4oWjJqTdVrzkdw_lexaU', 'user', '2023-08-26 21:35:10', '2023-07-27 21:35:10', '2023-07-27 21:35:10'),
(101, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0OTQyNzYsImV4cCI6MTY5MTc5MDI3Nn0.4bVdsBQF1ty69130C9-gBCDBsYZ_5rmFNIrrr94zVps', 'user', '2023-08-11 21:44:36', '2023-07-27 21:44:36', '2023-07-27 21:44:36'),
(102, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0OTQyNzYsImV4cCI6MTY5MzA4NjI3Nn0.adf_mra2sC2WLgB-H_-3oflwqs1ipOqO1GLnEHOobIg', 'user', '2023-08-26 21:44:36', '2023-07-27 21:44:36', '2023-07-27 21:44:36'),
(103, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJXZWVtYXgiLCJlbWFpbCI6IndlZW1heGVjb21AZ21haWwuY29tIiwiaWF0IjoxNjkwNDk0Mjk2LCJleHAiOjE2OTE3OTAyOTZ9.bDttn7NPWP9OYW5C63ap2jRbh_KvXz5tcu-6sZF6kfA', 'user', '2023-08-11 21:44:56', '2023-07-27 21:44:56', '2023-07-27 21:44:56'),
(104, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJXZWVtYXgiLCJlbWFpbCI6IndlZW1heGVjb21AZ21haWwuY29tIiwiaWF0IjoxNjkwNDk0Mjk2LCJleHAiOjE2OTMwODYyOTZ9.m8KHp1fKdZw7rKFs4BsE5ETKNiknSWWliWBDlBZANSc', 'user', '2023-08-26 21:44:56', '2023-07-27 21:44:56', '2023-07-27 21:44:56'),
(105, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0OTQzNTEsImV4cCI6MTY5MTc5MDM1MX0.c8xYayIgXgD9AB1i-v1E2mdt0U8tr2pzU71WeeYjeLU', 'user', '2023-08-11 21:45:51', '2023-07-27 21:45:51', '2023-07-27 21:45:51'),
(106, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA0OTQzNTEsImV4cCI6MTY5MzA4NjM1MX0.uJAVU7AFM9UcU59E1kUjQ-VsL9WDx2cjWfFt5L3b63s', 'user', '2023-08-26 21:45:51', '2023-07-27 21:45:51', '2023-07-27 21:45:51'),
(107, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ5NTA2OCwiZXhwIjoxNjkxNzkxMDY4fQ.z2Tu1ZXfWvpyvmrwnnPE27N7S5RiQbx8ghrZBlNS0wg', 'user', '2023-08-11 21:57:48', '2023-07-27 21:57:48', '2023-07-27 21:57:48'),
(108, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ5NTA2OCwiZXhwIjoxNjkzMDg3MDY4fQ.o2uoMNaStW-u3wsdfOIMto2WCrO4DtFWMtzvoHmS080', 'user', '2023-08-26 21:57:48', '2023-07-27 21:57:48', '2023-07-27 21:57:48'),
(109, 28, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI4LCJuYW1lIjoiSkVST01FIFAiLCJlbWFpbCI6ImJoYXJhdGhqZXJvMjcwNUBnbWFpbC5jb20iLCJpYXQiOjE2OTA0OTY0NTIsImV4cCI6MTY5MTc5MjQ1Mn0.BGJDB8mPSoXgmgs5zszyvhNfJ4jdhAWyS-oBjNC2m6g', 'user', '2023-08-11 22:20:52', '2023-07-27 22:20:52', '2023-07-27 22:20:52'),
(110, 28, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI4LCJuYW1lIjoiSkVST01FIFAiLCJlbWFpbCI6ImJoYXJhdGhqZXJvMjcwNUBnbWFpbC5jb20iLCJpYXQiOjE2OTA0OTY0NTIsImV4cCI6MTY5MzA4ODQ1Mn0.ZkKbewLn1URf7Hym4_wZ6yd0jy5los8-D0oIsIdD6eQ', 'user', '2023-08-26 22:20:52', '2023-07-27 22:20:52', '2023-07-27 22:20:52'),
(111, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ5NzQyOSwiZXhwIjoxNjkxNzkzNDI5fQ.F0rP9bBYzGtfOhtOaQroJe7_Lf0fPv8c5l4bUJj0T84', 'user', '2023-08-11 22:37:09', '2023-07-27 22:37:09', '2023-07-27 22:37:09'),
(112, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDQ5NzQyOSwiZXhwIjoxNjkzMDg5NDI5fQ.S9IEI5CA2zeADjBB3kaFwNysKcYApwCw3cMOmgXhXB0', 'user', '2023-08-26 22:37:09', '2023-07-27 22:37:09', '2023-07-27 22:37:09'),
(113, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTA0OTc3NTcsImV4cCI6MTY5MTc5Mzc1N30.JSJ6awwy_Jsl7SICQWYarlI0PflAuOmCdrosm2wV5yA', 'user', '2023-08-11 22:42:37', '2023-07-27 22:42:37', '2023-07-27 22:42:37'),
(114, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTA0OTc3NTcsImV4cCI6MTY5MzA4OTc1N30.jfujlg2vVqnc7dyYkX5OJS-x4RD49fDYo6UaAEMyxzQ', 'user', '2023-08-26 22:42:37', '2023-07-27 22:42:37', '2023-07-27 22:42:37'),
(115, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNDk4MTE3LCJleHAiOjE2OTE3OTQxMTd9.ZZrt9-5Tsxzg-KucyxuemrFex-xPFDPjsuhZgMf6ZLU', 'user', '2023-08-11 22:48:37', '2023-07-27 22:48:37', '2023-07-27 22:48:37'),
(116, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNDk4MTE3LCJleHAiOjE2OTMwOTAxMTd9.Pdx_q4ddCBUV2Wq5abHgEPujo8mUzi9NTH03z69buyc', 'user', '2023-08-26 22:48:37', '2023-07-27 22:48:37', '2023-07-27 22:48:37'),
(117, 32, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUwNDI0OCwiZXhwIjoxNjkxODAwMjQ4fQ.5_bkEQzac9Oz8Z5OsKDn2ml_BhZzwl5783aCYiD4VGA', 'user', '2023-08-12 00:30:48', '2023-07-28 00:30:48', '2023-07-28 00:30:48'),
(118, 32, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUwNDI0OCwiZXhwIjoxNjkzMDk2MjQ4fQ.Pi8hk5z3KBZR7m8b2iub7xDMZcMuuA4QzPG8AUKcSHg', 'user', '2023-08-27 00:30:48', '2023-07-28 00:30:48', '2023-07-28 00:30:48'),
(119, 33, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMzLCJuYW1lIjoiU2F0aGl5YSBUIiwiZW1haWwiOiJzYXRoeWF0aGlydW11cnVnYW4yQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUwNDQzNywiZXhwIjoxNjkxODAwNDM3fQ.mcI5ykUw2zeYDqIxlbgmjEd4oESk3sNA5V8o-Ghn8xs', 'user', '2023-08-12 00:33:57', '2023-07-28 00:33:57', '2023-07-28 00:33:57'),
(120, 33, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMzLCJuYW1lIjoiU2F0aGl5YSBUIiwiZW1haWwiOiJzYXRoeWF0aGlydW11cnVnYW4yQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUwNDQzNywiZXhwIjoxNjkzMDk2NDM3fQ.ROyc2Uhgh0_a8xdNJxA8pwu6U-VCHV00Awj8KkOR7J0', 'user', '2023-08-27 00:33:57', '2023-07-28 00:33:57', '2023-07-28 00:33:57'),
(121, 34, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM0LCJuYW1lIjoiQmh1dmkgIiwiZW1haWwiOiJiaHV2aXNhaTIxQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUwOTE5NiwiZXhwIjoxNjkxODA1MTk2fQ.p0CnI1NyrW7m1qjfm2eoT4-svR1DucZND3-ZvYSSkVs', 'user', '2023-08-12 01:53:16', '2023-07-28 01:53:16', '2023-07-28 01:53:16'),
(122, 34, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM0LCJuYW1lIjoiQmh1dmkgIiwiZW1haWwiOiJiaHV2aXNhaTIxQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUwOTE5NiwiZXhwIjoxNjkzMTAxMTk2fQ.XH28Jt_2oDl5YITsaQPUBQiU2QgxOprLvsDPtsmA9Kg', 'user', '2023-08-27 01:53:16', '2023-07-28 01:53:16', '2023-07-28 01:53:16'),
(123, 35, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM1LCJuYW1lIjoiS2F2aW4iLCJlbWFpbCI6ImthdmluNzI1NEBnbWFpbC5jb20iLCJpYXQiOjE2OTA1MTE4MzYsImV4cCI6MTY5MTgwNzgzNn0.iodxn08BB9-A0WpnQl6TnYtBiUocTI9iUIs-sZEcAi8', 'user', '2023-08-12 02:37:16', '2023-07-28 02:37:16', '2023-07-28 02:37:16'),
(124, 35, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM1LCJuYW1lIjoiS2F2aW4iLCJlbWFpbCI6ImthdmluNzI1NEBnbWFpbC5jb20iLCJpYXQiOjE2OTA1MTE4MzYsImV4cCI6MTY5MzEwMzgzNn0.vKqp5FQPqMPEGUh6ETtWS-TvBU13tu0PO7q0OUBUVUs', 'user', '2023-08-27 02:37:16', '2023-07-28 02:37:16', '2023-07-28 02:37:16'),
(125, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNTEzNTM3LCJleHAiOjE2OTE4MDk1Mzd9.j0mMdCPKQEEuAIjgP5-kaB7UGcxqwVjpf0Vvm8RdISs', 'user', '2023-08-12 03:05:37', '2023-07-28 03:05:37', '2023-07-28 03:05:37'),
(126, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNTEzNTM3LCJleHAiOjE2OTMxMDU1Mzd9.x-xi3K4V93uL7yxevrVlm5-SdkrI4AUFy0HKbE1o-KU', 'user', '2023-08-27 03:05:37', '2023-07-28 03:05:37', '2023-07-28 03:05:37'),
(127, 36, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM2LCJuYW1lIjoiU3VrZWVzd2VyICIsImVtYWlsIjoic3VrZWVzd2VyMzA2OUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1MTQyMzEsImV4cCI6MTY5MTgxMDIzMX0.kccrGYs7dBG5M34xH5mKCCwiIFmy4iKiS4xaGRbdmDU', 'user', '2023-08-12 03:17:11', '2023-07-28 03:17:11', '2023-07-28 03:17:11'),
(128, 36, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM2LCJuYW1lIjoiU3VrZWVzd2VyICIsImVtYWlsIjoic3VrZWVzd2VyMzA2OUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1MTQyMzEsImV4cCI6MTY5MzEwNjIzMX0.JnvUSiPjMKaDUZpA7vw6VIx9_kmII8iYsVJHzlwF1Gw', 'user', '2023-08-27 03:17:11', '2023-07-28 03:17:11', '2023-07-28 03:17:11'),
(129, 37, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM3LCJuYW1lIjoiSy4gUi4gUG9vbmdvZGkgIiwiZW1haWwiOiJzYWlwb29uZ29kaWsyMDEyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUxNDk4MCwiZXhwIjoxNjkxODEwOTgwfQ.kIizbKHwHOeuN2gmwGJdV24RDgC5Wf2wJrBihpZzdzw', 'user', '2023-08-12 03:29:40', '2023-07-28 03:29:40', '2023-07-28 03:29:40'),
(130, 37, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM3LCJuYW1lIjoiSy4gUi4gUG9vbmdvZGkgIiwiZW1haWwiOiJzYWlwb29uZ29kaWsyMDEyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUxNDk4MCwiZXhwIjoxNjkzMTA2OTgwfQ.budoM-00UnnQ3DlyT5L-dphSxEm3snC8iCO1tIfPR84', 'user', '2023-08-27 03:29:40', '2023-07-28 03:29:40', '2023-07-28 03:29:40'),
(131, 14, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE1MTc3LCJleHAiOjE2OTE4MTExNzd9.9QFBn15K4l0zUWU-NQEIIUlLwqO1oBCm1PatFIMBRBg', 'user', '2023-08-12 03:32:57', '2023-07-28 03:32:57', '2023-07-28 03:32:57'),
(132, 14, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE1MTc3LCJleHAiOjE2OTMxMDcxNzd9.gn4kIuhBi7peKijJC7jFUKuNHxjTt66kD5xR4yXiRO4', 'user', '2023-08-27 03:32:57', '2023-07-28 03:32:57', '2023-07-28 03:32:57'),
(133, 38, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM4LCJuYW1lIjoiRGVlcGFrIEt1bWFyIE0iLCJlbWFpbCI6Im1kZWVwYWtrdW1hcjAzMDFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE2NzE0LCJleHAiOjE2OTE4MTI3MTR9.5O6yVJ08IuBGOhKHrY0XdWPtKU-E59E2dJGJr3xuDVw', 'user', '2023-08-12 03:58:34', '2023-07-28 03:58:34', '2023-07-28 03:58:34'),
(134, 38, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM4LCJuYW1lIjoiRGVlcGFrIEt1bWFyIE0iLCJlbWFpbCI6Im1kZWVwYWtrdW1hcjAzMDFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE2NzE0LCJleHAiOjE2OTMxMDg3MTR9.k1uphZahLr-KwxNzVF-0HMXVW4yZjdYETDiHttPyvlQ', 'user', '2023-08-27 03:58:34', '2023-07-28 03:58:34', '2023-07-28 03:58:34'),
(135, 39, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM5LCJuYW1lIjoiU2FrdGhpdmVsIEQgQiIsImVtYWlsIjoic2FrdGhpdmVsZGI5NUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1MTY4MzksImV4cCI6MTY5MTgxMjgzOX0.VBvSoOvV8tyfTdAt3zGaIYAeIcHeW4JBRDQ33ci9rlw', 'user', '2023-08-12 04:00:39', '2023-07-28 04:00:39', '2023-07-28 04:00:39'),
(136, 39, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM5LCJuYW1lIjoiU2FrdGhpdmVsIEQgQiIsImVtYWlsIjoic2FrdGhpdmVsZGI5NUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1MTY4MzksImV4cCI6MTY5MzEwODgzOX0.Vztp3083EhawF8ya_48_PYclAKemZlQBtUfwfrt28OU', 'user', '2023-08-27 04:00:39', '2023-07-28 04:00:39', '2023-07-28 04:00:39'),
(137, 38, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM4LCJuYW1lIjoiRGVlcGFrIEt1bWFyIE0iLCJlbWFpbCI6Im1kZWVwYWtrdW1hcjAzMDFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE2ODU4LCJleHAiOjE2OTE4MTI4NTh9.NdA4-rRT9ql2a8ose0F3e1IgMF4iUlSF8Wjdln-GW1k', 'user', '2023-08-12 04:00:58', '2023-07-28 04:00:58', '2023-07-28 04:00:58'),
(138, 38, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM4LCJuYW1lIjoiRGVlcGFrIEt1bWFyIE0iLCJlbWFpbCI6Im1kZWVwYWtrdW1hcjAzMDFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE2ODU4LCJleHAiOjE2OTMxMDg4NTh9.ECwA8k9BsaG-8qAUS2CixbTtclnCNuujxwCsAJquZdY', 'user', '2023-08-27 04:00:58', '2023-07-28 04:00:58', '2023-07-28 04:00:58'),
(139, 40, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQwLCJuYW1lIjoiR29rdWwgQW5hbmQiLCJlbWFpbCI6Imdva3VsdHJ6MTZAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE4OTM4LCJleHAiOjE2OTE4MTQ5Mzh9.U8UydKoleZns3hlqioaxztYjtfRUB8MRBRRShFwNRUM', 'user', '2023-08-12 04:35:38', '2023-07-28 04:35:38', '2023-07-28 04:35:38'),
(140, 40, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQwLCJuYW1lIjoiR29rdWwgQW5hbmQiLCJlbWFpbCI6Imdva3VsdHJ6MTZAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE4OTM4LCJleHAiOjE2OTMxMTA5Mzh9.Ua4x-6Wd8KIGpiz8zSlDFYA4kHcNXsy9PWmw5EEx03g', 'user', '2023-08-27 04:35:38', '2023-07-28 04:35:38', '2023-07-28 04:35:38'),
(141, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE5MTY5LCJleHAiOjE2OTE4MTUxNjl9.n11UcQCJP9iex97Tgjygxw0R-QRd1L3iyPPLEZhQukw', 'user', '2023-08-12 04:39:29', '2023-07-28 04:39:29', '2023-07-28 04:39:29'),
(142, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE5MTY5LCJleHAiOjE2OTMxMTExNjl9.YoYungdcv8LVvY1DKG0cP7v45xzS30fV41Ci3Td0DQc', 'user', '2023-08-27 04:39:29', '2023-07-28 04:39:29', '2023-07-28 04:39:29'),
(143, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE5MTY5LCJleHAiOjE2OTE4MTUxNjl9.n11UcQCJP9iex97Tgjygxw0R-QRd1L3iyPPLEZhQukw', 'user', '2023-08-12 04:39:29', '2023-07-28 04:39:29', '2023-07-28 04:39:29'),
(144, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE5MTY5LCJleHAiOjE2OTMxMTExNjl9.YoYungdcv8LVvY1DKG0cP7v45xzS30fV41Ci3Td0DQc', 'user', '2023-08-27 04:39:29', '2023-07-28 04:39:29', '2023-07-28 04:39:29'),
(145, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE5MTY5LCJleHAiOjE2OTE4MTUxNjl9.n11UcQCJP9iex97Tgjygxw0R-QRd1L3iyPPLEZhQukw', 'user', '2023-08-12 04:39:29', '2023-07-28 04:39:29', '2023-07-28 04:39:29'),
(146, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwNTE5MTY5LCJleHAiOjE2OTMxMTExNjl9.YoYungdcv8LVvY1DKG0cP7v45xzS30fV41Ci3Td0DQc', 'user', '2023-08-27 04:39:29', '2023-07-28 04:39:29', '2023-07-28 04:39:29'),
(147, 41, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQxLCJuYW1lIjoiVmlnbmVzaCIsImVtYWlsIjoic3ZpZ25lc2h0bjI5QGdtYWlsLmNvbSIsImlhdCI6MTY5MDUyMjQxMCwiZXhwIjoxNjkxODE4NDEwfQ.Lf31hOc7ndxf53eGDDa_tR7gAHmHK5PoT3JNLOdy2qc', 'user', '2023-08-12 05:33:30', '2023-07-28 05:33:30', '2023-07-28 05:33:30'),
(148, 41, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQxLCJuYW1lIjoiVmlnbmVzaCIsImVtYWlsIjoic3ZpZ25lc2h0bjI5QGdtYWlsLmNvbSIsImlhdCI6MTY5MDUyMjQxMCwiZXhwIjoxNjkzMTE0NDEwfQ.YS7ucX7057CCtINTQxDOfQKwuCy-Rhktevc2oimjrFg', 'user', '2023-08-27 05:33:30', '2023-07-28 05:33:30', '2023-07-28 05:33:30'),
(149, 42, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQyLCJuYW1lIjoiQW5hbmQiLCJlbWFpbCI6ImFuYW5kZG43NzdAZ21haWwuY29tIiwiaWF0IjoxNjkwNTI0NDE2LCJleHAiOjE2OTE4MjA0MTZ9.-Puj83DTGrs-UPXSmUIm9JCj7zwll5NX-YyVaIkGUB8', 'user', '2023-08-12 06:06:56', '2023-07-28 06:06:56', '2023-07-28 06:06:56'),
(150, 42, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQyLCJuYW1lIjoiQW5hbmQiLCJlbWFpbCI6ImFuYW5kZG43NzdAZ21haWwuY29tIiwiaWF0IjoxNjkwNTI0NDE2LCJleHAiOjE2OTMxMTY0MTZ9.c_nfTCyi2zTyyf9IJLfm8CZ1hvtm0NYKeVqpgOBYVd0', 'user', '2023-08-27 06:06:56', '2023-07-28 06:06:56', '2023-07-28 06:06:56'),
(151, 43, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQzLCJuYW1lIjoiSGFyaXNoIiwiZW1haWwiOiJoYXJpc2hqdWRlQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUyNDQxNiwiZXhwIjoxNjkxODIwNDE2fQ.EGMlcYip_G2n5Aoy28g9N4hy3lRzVMKRM6sac9jqHzE', 'user', '2023-08-12 06:06:56', '2023-07-28 06:06:56', '2023-07-28 06:06:56'),
(152, 43, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQzLCJuYW1lIjoiSGFyaXNoIiwiZW1haWwiOiJoYXJpc2hqdWRlQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUyNDQxNiwiZXhwIjoxNjkzMTE2NDE2fQ.1c_0PN8F1xARbRKanwSWhRDiVob-jgBanSWJeymkJfw', 'user', '2023-08-27 06:06:56', '2023-07-28 06:06:56', '2023-07-28 06:06:56'),
(153, 42, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQyLCJuYW1lIjoiQW5hbmQiLCJlbWFpbCI6ImFuYW5kZG43NzdAZ21haWwuY29tIiwiaWF0IjoxNjkwNTI0NTYyLCJleHAiOjE2OTE4MjA1NjJ9.yUAZwmqB7xf5jnkoQAp73jVz0x_3bOBDtxqPXmFSWP4', 'user', '2023-08-12 06:09:22', '2023-07-28 06:09:22', '2023-07-28 06:09:22'),
(154, 42, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQyLCJuYW1lIjoiQW5hbmQiLCJlbWFpbCI6ImFuYW5kZG43NzdAZ21haWwuY29tIiwiaWF0IjoxNjkwNTI0NTYyLCJleHAiOjE2OTMxMTY1NjJ9.LxxgImG1kgCKZhXrWwxB-J32nRLw3yAnWMrjRKnInUM', 'user', '2023-08-27 06:09:22', '2023-07-28 06:09:22', '2023-07-28 06:09:22'),
(155, 14, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTI1MjQxLCJleHAiOjE2OTE4MjEyNDF9.jThr9io79RdMuH2UDwJT-zLqw2b-Ro1VOIiwLom_4z4', 'user', '2023-08-12 06:20:41', '2023-07-28 06:20:41', '2023-07-28 06:20:41');
INSERT INTO `Token` (`tokenId`, `userId`, `tokenType`, `token`, `loggedInBy`, `expiresAt`, `createdAt`, `updatedAt`) VALUES
(156, 14, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTI1MjQxLCJleHAiOjE2OTMxMTcyNDF9.RhPQM25A27BFD4xzfjM7zpdS2AGdUyczPaeQbqd8jaY', 'user', '2023-08-27 06:20:41', '2023-07-28 06:20:41', '2023-07-28 06:20:41'),
(157, 44, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ0LCJuYW1lIjoiU0FSQVZBTkFLVU1BUiBTIiwiZW1haWwiOiJzYXJhdmFuYWt1bWFyMDIyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUyNTMzOSwiZXhwIjoxNjkxODIxMzM5fQ.9jSlrd-UfKEgvHOwVl5Ah9cRt0N-MReTkhkYPQSEdyk', 'user', '2023-08-12 06:22:19', '2023-07-28 06:22:19', '2023-07-28 06:22:19'),
(158, 44, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ0LCJuYW1lIjoiU0FSQVZBTkFLVU1BUiBTIiwiZW1haWwiOiJzYXJhdmFuYWt1bWFyMDIyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUyNTMzOSwiZXhwIjoxNjkzMTE3MzM5fQ.jjYSubxob7CtRWcua1I83pqFmjyGCmedWchl3Y77708', 'user', '2023-08-27 06:22:19', '2023-07-28 06:22:19', '2023-07-28 06:22:19'),
(159, 45, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ1LCJuYW1lIjoiVnl6c2hhbGkgIiwiZW1haWwiOiJ2eXNodXZlbmthdGVzYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNTI2MzYyLCJleHAiOjE2OTE4MjIzNjJ9.pJyqRZNkEHhK9zeEqSsapGSAPnP-4SJ2LZYLzTxj1Dc', 'user', '2023-08-12 06:39:22', '2023-07-28 06:39:22', '2023-07-28 06:39:22'),
(160, 45, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ1LCJuYW1lIjoiVnl6c2hhbGkgIiwiZW1haWwiOiJ2eXNodXZlbmthdGVzYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNTI2MzYyLCJleHAiOjE2OTMxMTgzNjJ9.KCvKb5I33TV3FIjwgq66yrkiYQrtYY-uJ_pCkpaWTCw', 'user', '2023-08-27 06:39:22', '2023-07-28 06:39:22', '2023-07-28 06:39:22'),
(161, 46, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ2LCJuYW1lIjoiTmF2ZWVuYSBzcmkiLCJlbWFpbCI6Im5hdmVlbmFzcmlrQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUyNjYxNCwiZXhwIjoxNjkxODIyNjE0fQ.ECzXaDpjC9831ch3eGTfClFGJkpp3ZC08elJzFsLAUM', 'user', '2023-08-12 06:43:34', '2023-07-28 06:43:34', '2023-07-28 06:43:34'),
(162, 46, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ2LCJuYW1lIjoiTmF2ZWVuYSBzcmkiLCJlbWFpbCI6Im5hdmVlbmFzcmlrQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUyNjYxNCwiZXhwIjoxNjkzMTE4NjE0fQ.VhGhf3TkL_GHVIGBXTKhuG4iAtcRbwPLwlyIDVm4Qs8', 'user', '2023-08-27 06:43:34', '2023-07-28 06:43:34', '2023-07-28 06:43:34'),
(163, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1MjgzOTAsImV4cCI6MTY5MTgyNDM5MH0.mGLCOnHzYWxxuu4uAYPWFuusJr9l6szkiVXibSwJNXE', 'user', '2023-08-12 07:13:10', '2023-07-28 07:13:10', '2023-07-28 07:13:10'),
(164, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1MjgzOTAsImV4cCI6MTY5MzEyMDM5MH0.OIZEdtG5eMpSnS6z7fj14mSWrRpO1ZE_WDyf5POHx2s', 'user', '2023-08-27 07:13:10', '2023-07-28 07:13:10', '2023-07-28 07:13:10'),
(165, 47, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ3LCJuYW1lIjoiS2F2aXlhIFNoYW5rYXIiLCJlbWFpbCI6Imthdml5YXNoYW5rYXIyODI4QGdtYWlsLmNvbSIsImlhdCI6MTY5MDUyOTA4NywiZXhwIjoxNjkxODI1MDg3fQ.9y_IRLvdXHzCADsNgB6b24ZUAPnwqGQeIgiBO4T5hzw', 'user', '2023-08-12 07:24:47', '2023-07-28 07:24:47', '2023-07-28 07:24:47'),
(166, 47, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ3LCJuYW1lIjoiS2F2aXlhIFNoYW5rYXIiLCJlbWFpbCI6Imthdml5YXNoYW5rYXIyODI4QGdtYWlsLmNvbSIsImlhdCI6MTY5MDUyOTA4NywiZXhwIjoxNjkzMTIxMDg3fQ.hNH8cheWGocLQ1YC-5T3z0moVCxI0IIyAi6SBnLe1A8', 'user', '2023-08-27 07:24:47', '2023-07-28 07:24:47', '2023-07-28 07:24:47'),
(167, 36, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM2LCJuYW1lIjoiU3VrZWVzd2VyICIsImVtYWlsIjoic3VrZWVzd2VyMzA2OUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzAxNTgsImV4cCI6MTY5MTgyNjE1OH0.SPCLZPTwYKoTJup_K-IJ5oZyRJVX50qUh41qEsHjX4s', 'user', '2023-08-12 07:42:38', '2023-07-28 07:42:38', '2023-07-28 07:42:38'),
(168, 36, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM2LCJuYW1lIjoiU3VrZWVzd2VyICIsImVtYWlsIjoic3VrZWVzd2VyMzA2OUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzAxNTgsImV4cCI6MTY5MzEyMjE1OH0.PRbeWnZl8UGJD5xxqnXfuPdBluxM6ux5egYIqH5Gp4U', 'user', '2023-08-27 07:42:38', '2023-07-28 07:42:38', '2023-07-28 07:42:38'),
(169, 13, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTMyOTQwLCJleHAiOjE2OTE4Mjg5NDB9.P_SvFZ3ddxJ3zHUHEr8GY6lRtFnZvfv8IX5G9i72nRE', 'user', '2023-08-12 08:29:00', '2023-07-28 08:29:00', '2023-07-28 08:29:00'),
(170, 13, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTMyOTQwLCJleHAiOjE2OTMxMjQ5NDB9.L-2bceDNOT7H_cICLqQAzCWK9Xc9xVVY3S6vNwtlHhU', 'user', '2023-08-27 08:29:00', '2023-07-28 08:29:00', '2023-07-28 08:29:00'),
(171, 13, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTMyOTQxLCJleHAiOjE2OTE4Mjg5NDF9.wQptsbVJl0TYi3loVLIibRr1luvrLGaumQwzZlZWMrg', 'user', '2023-08-12 08:29:01', '2023-07-28 08:29:01', '2023-07-28 08:29:01'),
(172, 13, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTMyOTQxLCJleHAiOjE2OTMxMjQ5NDF9.utQpiVtuIwf6mALCmA0ZTKgslozgVhmicLvF9okrhGs', 'user', '2023-08-27 08:29:01', '2023-07-28 08:29:01', '2023-07-28 08:29:01'),
(173, 13, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTMzMjEyLCJleHAiOjE2OTE4MjkyMTJ9.fLnShC9IYryRqrvMyrYLxHYwU7G3jNnAm1T8_ZhBZe0', 'user', '2023-08-12 08:33:32', '2023-07-28 08:33:32', '2023-07-28 08:33:32'),
(174, 13, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwNTMzMjEyLCJleHAiOjE2OTMxMjUyMTJ9.X9n2ydOOnV7zzXuWRPB2XEu0w6zO7mHiPMOwOur7Mok', 'user', '2023-08-27 08:33:32', '2023-07-28 08:33:32', '2023-07-28 08:33:32'),
(175, 48, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ4LCJuYW1lIjoiTWFub2pNaXRodW4gUyIsImVtYWlsIjoibWFub2ptaXN0eW1hY0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzM4MDIsImV4cCI6MTY5MTgyOTgwMn0.93_V8a7MT3XPxjhSrbzkdKm-ZOtDivVs5szRN3w_lA4', 'user', '2023-08-12 08:43:22', '2023-07-28 08:43:22', '2023-07-28 08:43:22'),
(176, 48, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ4LCJuYW1lIjoiTWFub2pNaXRodW4gUyIsImVtYWlsIjoibWFub2ptaXN0eW1hY0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzM4MDIsImV4cCI6MTY5MzEyNTgwMn0.Tn0wpJikIoB2pGmSYVTt-rLsISYnBsND8aloRbKRrmA', 'user', '2023-08-27 08:43:22', '2023-07-28 08:43:22', '2023-07-28 08:43:22'),
(177, 48, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ4LCJuYW1lIjoiTWFub2pNaXRodW4gUyIsImVtYWlsIjoibWFub2ptaXN0eW1hY0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzM4MDIsImV4cCI6MTY5MTgyOTgwMn0.93_V8a7MT3XPxjhSrbzkdKm-ZOtDivVs5szRN3w_lA4', 'user', '2023-08-12 08:43:22', '2023-07-28 08:43:22', '2023-07-28 08:43:22'),
(178, 48, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ4LCJuYW1lIjoiTWFub2pNaXRodW4gUyIsImVtYWlsIjoibWFub2ptaXN0eW1hY0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzM4MDIsImV4cCI6MTY5MzEyNTgwMn0.Tn0wpJikIoB2pGmSYVTt-rLsISYnBsND8aloRbKRrmA', 'user', '2023-08-27 08:43:22', '2023-07-28 08:43:22', '2023-07-28 08:43:22'),
(179, 49, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ5LCJuYW1lIjoiSGVtYWxhdGhhIiwiZW1haWwiOiJoZW1hbWF0aGkxOTAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUzMzk1MCwiZXhwIjoxNjkxODI5OTUwfQ.sf7SIwHuZcPq7onIo-XHGUm3GS1WLXlqJP5LfkMDhvM', 'user', '2023-08-12 08:45:50', '2023-07-28 08:45:50', '2023-07-28 08:45:50'),
(180, 49, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ5LCJuYW1lIjoiSGVtYWxhdGhhIiwiZW1haWwiOiJoZW1hbWF0aGkxOTAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUzMzk1MCwiZXhwIjoxNjkzMTI1OTUwfQ.fZ8KF1kRgJIAPACESLH9vbTljNAlcY0E8xivvK46cNM', 'user', '2023-08-27 08:45:50', '2023-07-28 08:45:50', '2023-07-28 08:45:50'),
(181, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1MTkyLCJleHAiOjE2OTE4MzExOTJ9._oS_qrb_gR4eohwb6wV0Gbrks_c8OrDQKaczIbiz2DQ', 'user', '2023-08-12 09:06:32', '2023-07-28 09:06:32', '2023-07-28 09:06:32'),
(182, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1MTkyLCJleHAiOjE2OTMxMjcxOTJ9.2Z8Rj1Xg-F6LM12nfo7dd6wQ0qEySdNw87JLMJbBfIc', 'user', '2023-08-27 09:06:32', '2023-07-28 09:06:32', '2023-07-28 09:06:32'),
(183, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1NzQ5LCJleHAiOjE2OTE4MzE3NDl9.z6dsjuvQAMhWILpl9hLzwR2ErWG7PeKks4m9XeMveQI', 'user', '2023-08-12 09:15:49', '2023-07-28 09:15:49', '2023-07-28 09:15:49'),
(184, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1NzQ5LCJleHAiOjE2OTMxMjc3NDl9.gbXKJBxSSwfssC9TBflCvD3GWGWvz0astpCks-2RaZ4', 'user', '2023-08-27 09:15:49', '2023-07-28 09:15:49', '2023-07-28 09:15:49'),
(185, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1NzUwLCJleHAiOjE2OTE4MzE3NTB9.gIKOuJofre92WGIkyjkBTrTVKQO6E3kJ0QDCCGYZm34', 'user', '2023-08-12 09:15:50', '2023-07-28 09:15:50', '2023-07-28 09:15:50'),
(186, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1NzUwLCJleHAiOjE2OTMxMjc3NTB9.ArjZsPX6vlQaSPxGWU3NkgvxwytKz7C4su1DrDaXmMs', 'user', '2023-08-27 09:15:50', '2023-07-28 09:15:50', '2023-07-28 09:15:50'),
(187, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1NzUxLCJleHAiOjE2OTE4MzE3NTF9.ecPpsYdHzDroWL_r8ithsiFI0BNn9S7ls2yfiAbtFp8', 'user', '2023-08-12 09:15:51', '2023-07-28 09:15:51', '2023-07-28 09:15:51'),
(188, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1NzUxLCJleHAiOjE2OTMxMjc3NTF9.IlqBBBgicA0IIqNi2-z-kHt6EmtOjHz_fUBJFzvaum8', 'user', '2023-08-27 09:15:51', '2023-07-28 09:15:51', '2023-07-28 09:15:51'),
(189, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1NzYzLCJleHAiOjE2OTE4MzE3NjN9.4i5Anm4QzWVeur8e2iRPvgBNU5pSzQc87_mmkv_DfI4', 'user', '2023-08-12 09:16:03', '2023-07-28 09:16:03', '2023-07-28 09:16:03'),
(190, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1NzYzLCJleHAiOjE2OTMxMjc3NjN9.vcJSVbxMVha6KMyYrxRfKXY0gVycVpuLAoGP3zrzhJk', 'user', '2023-08-27 09:16:03', '2023-07-28 09:16:03', '2023-07-28 09:16:03'),
(191, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1NzgzLCJleHAiOjE2OTE4MzE3ODN9.RkXir7DLacvX69Z1IUU3LKXwG5H7kWDZ5oRQby1vi4A', 'user', '2023-08-12 09:16:23', '2023-07-28 09:16:23', '2023-07-28 09:16:23'),
(192, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1NzgzLCJleHAiOjE2OTMxMjc3ODN9.ikoKqPMhQRIqYCfDptd1STH24Dy8-TbVLHPuoUs5HR8', 'user', '2023-08-27 09:16:23', '2023-07-28 09:16:23', '2023-07-28 09:16:23'),
(193, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1ODI5LCJleHAiOjE2OTE4MzE4Mjl9.xWtavDscySt8j8JNskloj0bDmMhwOzU6OvqBsFXv4VI', 'user', '2023-08-12 09:17:09', '2023-07-28 09:17:09', '2023-07-28 09:17:09'),
(194, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM1ODI5LCJleHAiOjE2OTMxMjc4Mjl9.03ImtIzyLppAPD-NpZBaGIehQdSKE47KzqanomjBGCg', 'user', '2023-08-27 09:17:09', '2023-07-28 09:17:09', '2023-07-28 09:17:09'),
(195, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzYyMDAsImV4cCI6MTY5MTgzMjIwMH0.6ki8jur9IFjBGmBvk7_8FryBWColX-XJbpyEAxqMVEc', 'user', '2023-08-12 09:23:20', '2023-07-28 09:23:20', '2023-07-28 09:23:20'),
(196, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzYyMDAsImV4cCI6MTY5MzEyODIwMH0.nDVdzxFVdxBk5FEWZn6d8E2cPLufJ-6bhkPzhmdRx3w', 'user', '2023-08-27 09:23:20', '2023-07-28 09:23:20', '2023-07-28 09:23:20'),
(197, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM2NDA5LCJleHAiOjE2OTE4MzI0MDl9.qGCHB6eugPCREDcNUBm1WkD0jlN-IxHs-QoBXOAoEAs', 'user', '2023-08-12 09:26:49', '2023-07-28 09:26:49', '2023-07-28 09:26:49'),
(198, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM2NDA5LCJleHAiOjE2OTMxMjg0MDl9.f52Tcelx_NiAmgY0QSulsSqiGJBoy8rl-u07kTF7Eq8', 'user', '2023-08-27 09:26:49', '2023-07-28 09:26:49', '2023-07-28 09:26:49'),
(199, 52, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUyLCJuYW1lIjoic3JpbmF0aCByIiwiZW1haWwiOiJzcmluYXRocjIwYmN0MDQyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUzNjcyMCwiZXhwIjoxNjkxODMyNzIwfQ.NlMFLa730pg59Wv8u4b7zkp_hHPVN0ESCUKGi3MPNWI', 'user', '2023-08-12 09:32:00', '2023-07-28 09:32:00', '2023-07-28 09:32:00'),
(200, 52, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUyLCJuYW1lIjoic3JpbmF0aCByIiwiZW1haWwiOiJzcmluYXRocjIwYmN0MDQyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUzNjcyMCwiZXhwIjoxNjkzMTI4NzIwfQ.Orf5cIvaRFUUqsxV6miDdXh7Gw6VkCWQnBEhSTXVrpY', 'user', '2023-08-27 09:32:00', '2023-07-28 09:32:00', '2023-07-28 09:32:00'),
(201, 54, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU0LCJuYW1lIjoiS2FydGhpY2sgIiwiZW1haWwiOiJpdHNka2FydGhpY2toZXJlQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUzNjc0MCwiZXhwIjoxNjkxODMyNzQwfQ.ee3AGwqXXYqVzU10KoxiAYgXcsQxvaRQUWH_UjMAg0I', 'user', '2023-08-12 09:32:20', '2023-07-28 09:32:20', '2023-07-28 09:32:20'),
(202, 54, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU0LCJuYW1lIjoiS2FydGhpY2sgIiwiZW1haWwiOiJpdHNka2FydGhpY2toZXJlQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUzNjc0MCwiZXhwIjoxNjkzMTI4NzQwfQ.el7STg_r4MaFazQntn5mQSdMHydzRrvrAp0nQBmc4OU', 'user', '2023-08-27 09:32:20', '2023-07-28 09:32:20', '2023-07-28 09:32:20'),
(203, 53, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUzLCJuYW1lIjoiTWFoYSBqYXlhbnRoICIsImVtYWlsIjoibWFoYWpheWFudGhtYW5vaGFyYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNTM2NzQzLCJleHAiOjE2OTE4MzI3NDN9.fqB5rHglgbZzi-Vce-5ksHlvpQstZhJpM71Zw6AcckE', 'user', '2023-08-12 09:32:23', '2023-07-28 09:32:23', '2023-07-28 09:32:23'),
(204, 53, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUzLCJuYW1lIjoiTWFoYSBqYXlhbnRoICIsImVtYWlsIjoibWFoYWpheWFudGhtYW5vaGFyYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNTM2NzQzLCJleHAiOjE2OTMxMjg3NDN9.XuHBOpaNzQoGEGGVmG8UEgyiyvC-NFIDXUgo3ZFkH_w', 'user', '2023-08-27 09:32:23', '2023-07-28 09:32:23', '2023-07-28 09:32:23'),
(205, 55, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU1LCJuYW1lIjoiU2FuamF5ICIsImVtYWlsIjoic2FuamF5Y2hhbmRyYW4yMzA3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDUzNzExNiwiZXhwIjoxNjkxODMzMTE2fQ.TxA8tTF-vRUiwfctzgEZq1ZZ8HLAreUuRYoQmIk2rYc', 'user', '2023-08-12 09:38:36', '2023-07-28 09:38:36', '2023-07-28 09:38:36'),
(206, 55, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU1LCJuYW1lIjoiU2FuamF5ICIsImVtYWlsIjoic2FuamF5Y2hhbmRyYW4yMzA3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDUzNzExNiwiZXhwIjoxNjkzMTI5MTE2fQ.E7B3IT7oT3LTAAbGnXKP9t8twoENyW4SFPY9_0y7GX4', 'user', '2023-08-27 09:38:36', '2023-07-28 09:38:36', '2023-07-28 09:38:36'),
(207, 56, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU2LCJuYW1lIjoiTWFuaXNoYWEgSyIsImVtYWlsIjoibWFuaXNoYWFrcmlzaG5hdmVsQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUzNzcxNiwiZXhwIjoxNjkxODMzNzE2fQ.Vhu7shHLp7yZKrAwwdVTLfXTTjm0WyE4Zf7dKuuLz3w', 'user', '2023-08-12 09:48:36', '2023-07-28 09:48:36', '2023-07-28 09:48:36'),
(208, 56, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU2LCJuYW1lIjoiTWFuaXNoYWEgSyIsImVtYWlsIjoibWFuaXNoYWFrcmlzaG5hdmVsQGdtYWlsLmNvbSIsImlhdCI6MTY5MDUzNzcxNiwiZXhwIjoxNjkzMTI5NzE2fQ.ol-v8t9p1Z0N28UD8AIKRoV9Cb25vCtjJTPPzeeb8MQ', 'user', '2023-08-27 09:48:36', '2023-07-28 09:48:36', '2023-07-28 09:48:36'),
(209, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM3OTE3LCJleHAiOjE2OTE4MzM5MTd9.dk91NRtcv7EvdIfNP52gIP86iX-x7Wo-yOLCt9tZES8', 'user', '2023-08-12 09:51:57', '2023-07-28 09:51:57', '2023-07-28 09:51:57'),
(210, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM3OTE3LCJleHAiOjE2OTMxMjk5MTd9.cjamKBtAhqlat8tmGPsdHLg4vyDvp0hbgisbEzQ2zac', 'user', '2023-08-27 09:51:57', '2023-07-28 09:51:57', '2023-07-28 09:51:57'),
(211, 57, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNTM4MDA4LCJleHAiOjE2OTE4MzQwMDh9.QFR9aJhq4OgNw5AO67E89xnM4g40drFspYK63PjxOpA', 'user', '2023-08-12 09:53:28', '2023-07-28 09:53:28', '2023-07-28 09:53:28'),
(212, 57, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNTM4MDA4LCJleHAiOjE2OTMxMzAwMDh9.fRmEVr-_fYlWgVYdirrrzsPahFoWtzJPG5n8B8RF7Og', 'user', '2023-08-27 09:53:28', '2023-07-28 09:53:28', '2023-07-28 09:53:28'),
(213, 57, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNTM4MDA4LCJleHAiOjE2OTE4MzQwMDh9.QFR9aJhq4OgNw5AO67E89xnM4g40drFspYK63PjxOpA', 'user', '2023-08-12 09:53:28', '2023-07-28 09:53:28', '2023-07-28 09:53:28'),
(214, 57, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNTM4MDA4LCJleHAiOjE2OTMxMzAwMDh9.fRmEVr-_fYlWgVYdirrrzsPahFoWtzJPG5n8B8RF7Og', 'user', '2023-08-27 09:53:28', '2023-07-28 09:53:28', '2023-07-28 09:53:28'),
(215, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzgzNTMsImV4cCI6MTY5MTgzNDM1M30.6fogmRag14--SrVACyPcJHgRqBfXIx6qNd6F_kAWM3s', 'user', '2023-08-12 09:59:13', '2023-07-28 09:59:13', '2023-07-28 09:59:13'),
(216, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzgzNTMsImV4cCI6MTY5MzEzMDM1M30.b3r4gClN_ZpqUiLUX9YgiLbK5Tn3lJ0swm-OrMfdRSY', 'user', '2023-08-27 09:59:13', '2023-07-28 09:59:13', '2023-07-28 09:59:13'),
(217, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzgzNTQsImV4cCI6MTY5MTgzNDM1NH0.9bK7v7IeSQDbuBqxpaeG2pgY_wcQHghbFtlmIzYM2Yc', 'user', '2023-08-12 09:59:14', '2023-07-28 09:59:14', '2023-07-28 09:59:14'),
(218, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1MzgzNTQsImV4cCI6MTY5MzEzMDM1NH0.Hwko0g61KGmYQsLO0QOOdWGGDhMqhTQDkEPvMVKG8r8', 'user', '2023-08-27 09:59:14', '2023-07-28 09:59:14', '2023-07-28 09:59:14'),
(219, 58, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU4LCJuYW1lIjoiQmhhcmF0aCBUUiIsImVtYWlsIjoiYmhhcmF0aDIxb2ZmaWNpYWxAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM5NTEzLCJleHAiOjE2OTE4MzU1MTN9.CNs_A3SOSse8ZKaVWD6wYhfgYOhZNNToC25tiuwdQCA', 'user', '2023-08-12 10:18:33', '2023-07-28 10:18:33', '2023-07-28 10:18:33'),
(220, 58, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU4LCJuYW1lIjoiQmhhcmF0aCBUUiIsImVtYWlsIjoiYmhhcmF0aDIxb2ZmaWNpYWxAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM5NTEzLCJleHAiOjE2OTMxMzE1MTN9.BdcYgCo5mzWqWqQ41JDjVj83y86socnzu8CfqG8YOxo', 'user', '2023-08-27 10:18:33', '2023-07-28 10:18:33', '2023-07-28 10:18:33'),
(221, 58, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU4LCJuYW1lIjoiQmhhcmF0aCBUUiIsImVtYWlsIjoiYmhhcmF0aDIxb2ZmaWNpYWxAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM5NTI2LCJleHAiOjE2OTE4MzU1MjZ9.bpWY3RA6Vezu4CCG67FSClR1_f7xIdoP2ghfjg8tJF0', 'user', '2023-08-12 10:18:46', '2023-07-28 10:18:46', '2023-07-28 10:18:46'),
(222, 58, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU4LCJuYW1lIjoiQmhhcmF0aCBUUiIsImVtYWlsIjoiYmhhcmF0aDIxb2ZmaWNpYWxAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM5NTI2LCJleHAiOjE2OTMxMzE1MjZ9.qzufLADwY6TRTEzWgJrFX3SStVd60At4LXDqosKSnfo', 'user', '2023-08-27 10:18:46', '2023-07-28 10:18:46', '2023-07-28 10:18:46'),
(223, 59, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU5LCJuYW1lIjoiU2FiYXJpIiwiZW1haWwiOiJzYWJhcmlrdW1hcjk4NEBnbWFpbC5jb20iLCJpYXQiOjE2OTA1Mzk2MjEsImV4cCI6MTY5MTgzNTYyMX0.1pLDN1V9ABZGNtDAJJDzBRCZW_z63V-X6UJaxtTUhMI', 'user', '2023-08-12 10:20:21', '2023-07-28 10:20:21', '2023-07-28 10:20:21'),
(224, 59, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU5LCJuYW1lIjoiU2FiYXJpIiwiZW1haWwiOiJzYWJhcmlrdW1hcjk4NEBnbWFpbC5jb20iLCJpYXQiOjE2OTA1Mzk2MjEsImV4cCI6MTY5MzEzMTYyMX0.wzovzbzV4T3WuWKFhJm_UVyPuUc48fz-e4Vv5ZVWhh0', 'user', '2023-08-27 10:20:21', '2023-07-28 10:20:21', '2023-07-28 10:20:21'),
(225, 58, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU4LCJuYW1lIjoiQmhhcmF0aCBUUiIsImVtYWlsIjoiYmhhcmF0aDIxb2ZmaWNpYWxAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM5NjUwLCJleHAiOjE2OTE4MzU2NTB9.jWD5Nd0_crm7-yRlCShuymV3nFvhDz3rZAfXNK2BGDk', 'user', '2023-08-12 10:20:50', '2023-07-28 10:20:50', '2023-07-28 10:20:50'),
(226, 58, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU4LCJuYW1lIjoiQmhhcmF0aCBUUiIsImVtYWlsIjoiYmhhcmF0aDIxb2ZmaWNpYWxAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM5NjUwLCJleHAiOjE2OTMxMzE2NTB9.2mm2GdZpEpCEAI-0PfACO2fzxX3uyL_9sTvF7tPuMfk', 'user', '2023-08-27 10:20:50', '2023-07-28 10:20:50', '2023-07-28 10:20:50'),
(227, 58, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU4LCJuYW1lIjoiQmhhcmF0aCBUUiIsImVtYWlsIjoiYmhhcmF0aDIxb2ZmaWNpYWxAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM5NjU1LCJleHAiOjE2OTE4MzU2NTV9.Qsg_SkuHwVh8Rpp2l1vSYxmZ1OId0GEvrl7fP3R3Dy8', 'user', '2023-08-12 10:20:55', '2023-07-28 10:20:55', '2023-07-28 10:20:55'),
(228, 58, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU4LCJuYW1lIjoiQmhhcmF0aCBUUiIsImVtYWlsIjoiYmhhcmF0aDIxb2ZmaWNpYWxAZ21haWwuY29tIiwiaWF0IjoxNjkwNTM5NjU1LCJleHAiOjE2OTMxMzE2NTV9.OG5wJtQDR5fivY9XnLunP3go_woysuzfqLIztLKqtlQ', 'user', '2023-08-27 10:20:55', '2023-07-28 10:20:55', '2023-07-28 10:20:55'),
(229, 60, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYwLCJuYW1lIjoiUmFtZXNoIENoYW5kcmFuICIsImVtYWlsIjoicmFtZXNoY2hhbmRyYW4yMDAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0MDIyOCwiZXhwIjoxNjkxODM2MjI4fQ.4mJcSBb83STcF5JEZAqTrMI9wvxqcnPZcmNlGBaHZsE', 'user', '2023-08-12 10:30:28', '2023-07-28 10:30:29', '2023-07-28 10:30:29'),
(230, 60, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYwLCJuYW1lIjoiUmFtZXNoIENoYW5kcmFuICIsImVtYWlsIjoicmFtZXNoY2hhbmRyYW4yMDAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0MDIyOCwiZXhwIjoxNjkzMTMyMjI4fQ.q58-ymSoAHEqCyZDymZxzdkAFkfbhLsXlvdwNzQUbIw', 'user', '2023-08-27 10:30:28', '2023-07-28 10:30:29', '2023-07-28 10:30:29'),
(231, 62, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYyLCJuYW1lIjoiUHJhZ2F0aGkiLCJlbWFpbCI6IlByYWdhdGhpcHJhZ3UyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDAzNTgsImV4cCI6MTY5MTgzNjM1OH0.ORl7MuyWmxTR7CyHWk6tL-IvK-ed8kH4P9vdTToQI30', 'user', '2023-08-12 10:32:38', '2023-07-28 10:32:38', '2023-07-28 10:32:38'),
(232, 62, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYyLCJuYW1lIjoiUHJhZ2F0aGkiLCJlbWFpbCI6IlByYWdhdGhpcHJhZ3UyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDAzNTgsImV4cCI6MTY5MzEzMjM1OH0.qjQV_EU0SVqvO13OR-5hnDBFPuv4BzftBeFEq-qUrIQ', 'user', '2023-08-27 10:32:38', '2023-07-28 10:32:38', '2023-07-28 10:32:38'),
(233, 61, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYxLCJuYW1lIjoiTGhla2hhIEJhbGFzdWJyYW1hbmlhbiIsImVtYWlsIjoibGhla2hhMDA3c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0MDM2OCwiZXhwIjoxNjkxODM2MzY4fQ.1730YuwE26W-wSoHIFzdk1vNHqkqJ7-ZW6qvQZpx3VQ', 'user', '2023-08-12 10:32:48', '2023-07-28 10:32:48', '2023-07-28 10:32:48'),
(234, 61, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYxLCJuYW1lIjoiTGhla2hhIEJhbGFzdWJyYW1hbmlhbiIsImVtYWlsIjoibGhla2hhMDA3c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0MDM2OCwiZXhwIjoxNjkzMTMyMzY4fQ.GEQVoW1gB2PXa7T4QeDvkdx-P52ZZ981ofYoBuskegE', 'user', '2023-08-27 10:32:48', '2023-07-28 10:32:48', '2023-07-28 10:32:48'),
(235, 63, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYzLCJuYW1lIjoiU3dhdGhpIiwiZW1haWwiOiJwc3dhdGhpa2FhMDNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTQxMDU0LCJleHAiOjE2OTE4MzcwNTR9.FOU_9uYrrc9HQrTuWhMM31M4CRTJXcMPyybpKUOAy8U', 'user', '2023-08-12 10:44:14', '2023-07-28 10:44:14', '2023-07-28 10:44:14'),
(236, 63, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYzLCJuYW1lIjoiU3dhdGhpIiwiZW1haWwiOiJwc3dhdGhpa2FhMDNAZ21haWwuY29tIiwiaWF0IjoxNjkwNTQxMDU0LCJleHAiOjE2OTMxMzMwNTR9.TLnFXGwubRLVQrBOPnz33GH23bxD8hNDYuc6F_MkyV8', 'user', '2023-08-27 10:44:14', '2023-07-28 10:44:14', '2023-07-28 10:44:14'),
(237, 64, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY0LCJuYW1lIjoiWXV2YW4gU2hhbmthciBQICIsImVtYWlsIjoieXV2YW5weXMwMDdAZ21haWwuY29tIiwiaWF0IjoxNjkwNTQxMTkzLCJleHAiOjE2OTE4MzcxOTN9.g4Zo1Z2aJA_HiIua7dsyqELxyqRvzP5-qNDmvkm0iRk', 'user', '2023-08-12 10:46:33', '2023-07-28 10:46:33', '2023-07-28 10:46:33'),
(238, 64, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY0LCJuYW1lIjoiWXV2YW4gU2hhbmthciBQICIsImVtYWlsIjoieXV2YW5weXMwMDdAZ21haWwuY29tIiwiaWF0IjoxNjkwNTQxMTkzLCJleHAiOjE2OTMxMzMxOTN9.gzMhwNbtSj7hd3nOh95Ip09Xv_8Cp5ASxqYxThA-ZC8', 'user', '2023-08-27 10:46:33', '2023-07-28 10:46:33', '2023-07-28 10:46:33'),
(239, 61, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYxLCJuYW1lIjoiTGhla2hhIEJhbGFzdWJyYW1hbmlhbiIsImVtYWlsIjoibGhla2hhMDA3c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0MTc4MCwiZXhwIjoxNjkxODM3NzgwfQ.o-Vq9cV-LxVa-dQLCseO5uZq_Q3UZivxVOcIOhf22N0', 'user', '2023-08-12 10:56:20', '2023-07-28 10:56:20', '2023-07-28 10:56:20'),
(240, 61, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYxLCJuYW1lIjoiTGhla2hhIEJhbGFzdWJyYW1hbmlhbiIsImVtYWlsIjoibGhla2hhMDA3c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0MTc4MCwiZXhwIjoxNjkzMTMzNzgwfQ.hfT_gZjTDL1ylBBKG1AA47i5w1ZHCcXro-0jkCWE5QM', 'user', '2023-08-27 10:56:20', '2023-07-28 10:56:20', '2023-07-28 10:56:20'),
(241, 66, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY2LCJuYW1lIjoiU3VnYW50aGkgViIsImVtYWlsIjoic2FrdGhpZ2FuZXNodnJhamFuQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0MzY0MiwiZXhwIjoxNjkxODM5NjQyfQ.MhRcbiBR6bzF_STvwFtQEm6_kKEwvYGXE4dw4GcUaq4', 'user', '2023-08-12 11:27:22', '2023-07-28 11:27:22', '2023-07-28 11:27:22'),
(242, 66, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY2LCJuYW1lIjoiU3VnYW50aGkgViIsImVtYWlsIjoic2FrdGhpZ2FuZXNodnJhamFuQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0MzY0MiwiZXhwIjoxNjkzMTM1NjQyfQ.CvA3suDynofUomiCzQeX8HyV2IWSoKNUFmJYiq5mqkM', 'user', '2023-08-27 11:27:22', '2023-07-28 11:27:22', '2023-07-28 11:27:22'),
(243, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDQ2MDIsImV4cCI6MTY5MTg0MDYwMn0.thM2eY4fTP_FevTgF3EfUCFqoEuoCZXalOCTBJi7MNs', 'user', '2023-08-12 17:13:22', '2023-07-28 11:43:24', '2023-07-28 11:43:24'),
(244, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDQ2MDIsImV4cCI6MTY5MzEzNjYwMn0.1fy2Ul8XiQigySIzUQC7GjOV4UHYE5x4LUsYkVdrQas', 'user', '2023-08-27 17:13:22', '2023-07-28 11:43:24', '2023-07-28 11:43:24'),
(245, 68, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY4LCJuYW1lIjoiUHJpeWFua2hhIiwiZW1haWwiOiJwcml5YW5raGExNTA0c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0NDcwNiwiZXhwIjoxNjkxODQwNzA2fQ.Y3YMgkMCvd-NnS0IgYx4WAMCOMgrkE4ZA-4cj45fip4', 'user', '2023-08-12 11:45:06', '2023-07-28 11:45:06', '2023-07-28 11:45:06'),
(246, 68, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY4LCJuYW1lIjoiUHJpeWFua2hhIiwiZW1haWwiOiJwcml5YW5raGExNTA0c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0NDcwNiwiZXhwIjoxNjkzMTM2NzA2fQ.g7wm80sQOv-glsOn1l2Z_1nuMHgpg09lGel82adfR5w', 'user', '2023-08-27 11:45:06', '2023-07-28 11:45:06', '2023-07-28 11:45:06'),
(247, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDQ3ODEsImV4cCI6MTY5MTg0MDc4MX0.DUY5VKL1u-8AiVjzdYmN6uonWbEz_vZfoCBSjOxTluM', 'user', '2023-08-12 17:16:21', '2023-07-28 11:46:23', '2023-07-28 11:46:23'),
(248, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDQ3ODEsImV4cCI6MTY5MzEzNjc4MX0.Y5HliWfWNOf-gkqcHqE5quzVCc7Vu6DLtSv2SVPiFBU', 'user', '2023-08-27 17:16:21', '2023-07-28 11:46:23', '2023-07-28 11:46:23'),
(249, 68, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY4LCJuYW1lIjoiUHJpeWFua2hhIiwiZW1haWwiOiJwcml5YW5raGExNTA0c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0NTEyNCwiZXhwIjoxNjkxODQxMTI0fQ.oGOVg77lhYFhhiXwGaf1CA9sWIF8c2ZW0zvX8fHr_SA', 'user', '2023-08-12 11:52:04', '2023-07-28 11:52:04', '2023-07-28 11:52:04'),
(250, 68, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY4LCJuYW1lIjoiUHJpeWFua2hhIiwiZW1haWwiOiJwcml5YW5raGExNTA0c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0NTEyNCwiZXhwIjoxNjkzMTM3MTI0fQ.Ht3TrgKuSg-V16Y_60KmDbTOIyUAGjFF6Gef4Y5S3Ag', 'user', '2023-08-27 11:52:04', '2023-07-28 11:52:04', '2023-07-28 11:52:04'),
(251, 68, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY4LCJuYW1lIjoiUHJpeWFua2hhIiwiZW1haWwiOiJwcml5YW5raGExNTA0c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0NTE1NiwiZXhwIjoxNjkxODQxMTU2fQ.D8IsRgxRhNioBE6LeYE-erHS0pMJ_hGfy99zODKXWMQ', 'user', '2023-08-12 11:52:36', '2023-07-28 11:52:36', '2023-07-28 11:52:36'),
(252, 68, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY4LCJuYW1lIjoiUHJpeWFua2hhIiwiZW1haWwiOiJwcml5YW5raGExNTA0c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU0NTE1NiwiZXhwIjoxNjkzMTM3MTU2fQ.iY1UlaxAL7ZjW-JDIFcEI0NQP0Ncb2lweVso5C1DreE', 'user', '2023-08-27 11:52:36', '2023-07-28 11:52:36', '2023-07-28 11:52:36'),
(253, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDY5MTEsImV4cCI6MTY5MTg0MjkxMX0.KnCO7fjsckk6ZIWI5yQ3U6UDpvzN0S7C6V8qSr1Hsr4', 'user', '2023-08-12 17:51:51', '2023-07-28 12:21:53', '2023-07-28 12:21:53'),
(254, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDY5MTEsImV4cCI6MTY5MzEzODkxMX0.YdUBweKSe-x5nFtOoCdxy63h-CGCKu_HJdj6QkzFOak', 'user', '2023-08-27 17:51:51', '2023-07-28 12:21:53', '2023-07-28 12:21:53'),
(255, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDc4NzksImV4cCI6MTY5MTg0Mzg3OX0.cYa9wHGd_XO7sdrNy0NKVaeiD-R7p15NdODlQvVsBmg', 'user', '2023-08-12 18:07:59', '2023-07-28 12:38:01', '2023-07-28 12:38:01'),
(256, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDc4NzksImV4cCI6MTY5MzEzOTg3OX0.zoswM4vqHhuGVub__b99pU4BByPvYh0GHf6M7JTk-IM', 'user', '2023-08-27 18:07:59', '2023-07-28 12:38:01', '2023-07-28 12:38:01'),
(257, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDgyMzAsImV4cCI6MTY5MTg0NDIzMH0.m1tVXodoVuaSxFBfzmdOLckpORHIZXDIUsRtWAc6CBg', 'user', '2023-08-12 12:43:50', '2023-07-28 12:43:50', '2023-07-28 12:43:50'),
(258, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDgyMzAsImV4cCI6MTY5MzE0MDIzMH0.KmsXrPOyDmoLqUbaNK36LeepitvDdloOU1OEzOhJ3ak', 'user', '2023-08-27 12:43:50', '2023-07-28 12:43:50', '2023-07-28 12:43:50'),
(259, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDgzMzcsImV4cCI6MTY5MTg0NDMzN30.PH8SEENmSxWTkN4xklZn1EDbSxebOJE9_quJoNLrXvA', 'user', '2023-08-12 12:45:37', '2023-07-28 12:45:37', '2023-07-28 12:45:37'),
(260, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDgzMzcsImV4cCI6MTY5MzE0MDMzN30.GpOHOrh3FW3k_NMNMhSVIUMfJ8rQg3E_sP9yDzTQIUU', 'user', '2023-08-27 12:45:37', '2023-07-28 12:45:37', '2023-07-28 12:45:37'),
(261, 69, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY5LCJuYW1lIjoiS2F2aXByaXlhICIsImVtYWlsIjoia2thdmlwcml5YTE3NEBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDg0MzQsImV4cCI6MTY5MTg0NDQzNH0.umXxmRdpU63Je1GjVUJOHOgC45azsYjREQa7hbx4CdY', 'user', '2023-08-12 12:47:14', '2023-07-28 12:47:14', '2023-07-28 12:47:14'),
(262, 69, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY5LCJuYW1lIjoiS2F2aXByaXlhICIsImVtYWlsIjoia2thdmlwcml5YTE3NEBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDg0MzQsImV4cCI6MTY5MzE0MDQzNH0.hqnnoKPDaiNIgtEIV1dksI0exbJoYBlInrP0zorz59M', 'user', '2023-08-27 12:47:14', '2023-07-28 12:47:14', '2023-07-28 12:47:14'),
(263, 71, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcxLCJuYW1lIjoiSW5kaHVtYXRoaS5SICIsImVtYWlsIjoiaW5kaHVtYXRoaTI0MjAwMkBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDk5OTgsImV4cCI6MTY5MTg0NTk5OH0.98NSwYS7uv_o9PdhLNJMd7uJ3IZETmlmWKCtWZCyhSU', 'user', '2023-08-12 13:13:18', '2023-07-28 13:13:18', '2023-07-28 13:13:18'),
(264, 71, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcxLCJuYW1lIjoiSW5kaHVtYXRoaS5SICIsImVtYWlsIjoiaW5kaHVtYXRoaTI0MjAwMkBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NDk5OTgsImV4cCI6MTY5MzE0MTk5OH0.tC4P6VkVnFnPKpxD9L-u8P1gpP8tJ2p-6pHUiLvg75Y', 'user', '2023-08-27 13:13:18', '2023-07-28 13:13:18', '2023-07-28 13:13:18'),
(265, 72, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU1MTg5MCwiZXhwIjoxNjkxODQ3ODkwfQ.71ErvkqecCUDyfS6BrC82nRgM0M20z1UI1NpBaiTUx4', 'user', '2023-08-12 13:44:50', '2023-07-28 13:44:50', '2023-07-28 13:44:50'),
(266, 72, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU1MTg5MCwiZXhwIjoxNjkzMTQzODkwfQ.vxxPby7psTrNWkUPpMcdoTVE1y_hBS3goqT0gOCPv7Q', 'user', '2023-08-27 13:44:50', '2023-07-28 13:44:50', '2023-07-28 13:44:50'),
(267, 73, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjczLCJuYW1lIjoiR25hbmFzZWthciAiLCJlbWFpbCI6ImduYW5hc2VoYXIwMDBAZ21haWwuY29tIiwiaWF0IjoxNjkwNTUyODExLCJleHAiOjE2OTE4NDg4MTF9._vncezsdIw194vu84eUpZ5wpfG1XPIaEgmuCHeP2IHo', 'user', '2023-08-12 14:00:11', '2023-07-28 14:00:11', '2023-07-28 14:00:11'),
(268, 73, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjczLCJuYW1lIjoiR25hbmFzZWthciAiLCJlbWFpbCI6ImduYW5hc2VoYXIwMDBAZ21haWwuY29tIiwiaWF0IjoxNjkwNTUyODExLCJleHAiOjE2OTMxNDQ4MTF9.QA79ExFfzZBzczCYt2vyTTDuS7EdQZ7oRgBlHFtW4Vw', 'user', '2023-08-27 14:00:11', '2023-07-28 14:00:11', '2023-07-28 14:00:11'),
(269, 73, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjczLCJuYW1lIjoiR25hbmFzZWthciAiLCJlbWFpbCI6ImduYW5hc2VoYXIwMDBAZ21haWwuY29tIiwiaWF0IjoxNjkwNTUyODU3LCJleHAiOjE2OTE4NDg4NTd9.L9_JBA0n23zzW9LWD31Q1jmD8F-DIU1g6uGQcvConiU', 'user', '2023-08-12 14:00:57', '2023-07-28 14:00:57', '2023-07-28 14:00:57'),
(270, 73, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjczLCJuYW1lIjoiR25hbmFzZWthciAiLCJlbWFpbCI6ImduYW5hc2VoYXIwMDBAZ21haWwuY29tIiwiaWF0IjoxNjkwNTUyODU3LCJleHAiOjE2OTMxNDQ4NTd9.vfjr4kP6jThb0biQB1wtkjsDbs2X20a1rOvhLy8gTno', 'user', '2023-08-27 14:00:57', '2023-07-28 14:00:57', '2023-07-28 14:00:57'),
(271, 74, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NTQyNjQsImV4cCI6MTY5MTg1MDI2NH0.zTCmbP6aASULzEUjr_Qtw_oQpNaRvTiFLg2v09QPZ4U', 'user', '2023-08-12 14:24:24', '2023-07-28 14:24:25', '2023-07-28 14:24:25'),
(272, 74, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NTQyNjQsImV4cCI6MTY5MzE0NjI2NH0.SZMTsW9QDXU7c26OX4qybgkXZARpkDIsRRkWN_nRsCA', 'user', '2023-08-27 14:24:24', '2023-07-28 14:24:25', '2023-07-28 14:24:25'),
(273, 74, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NTQyNjUsImV4cCI6MTY5MTg1MDI2NX0.ULK6dWJB1c4bYo-PdGdgaef_rO92vOwE5IyURR-D004', 'user', '2023-08-12 14:24:25', '2023-07-28 14:24:25', '2023-07-28 14:24:25'),
(274, 74, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NTQyNjUsImV4cCI6MTY5MzE0NjI2NX0.h4DAJDxsKUSLUjUEc9UAGfd7IyNGuFuib0dx57AGl5o', 'user', '2023-08-27 14:24:25', '2023-07-28 14:24:25', '2023-07-28 14:24:25'),
(275, 74, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NTQyNjUsImV4cCI6MTY5MTg1MDI2NX0.ULK6dWJB1c4bYo-PdGdgaef_rO92vOwE5IyURR-D004', 'user', '2023-08-12 14:24:25', '2023-07-28 14:24:25', '2023-07-28 14:24:25'),
(276, 74, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NTQyNjUsImV4cCI6MTY5MzE0NjI2NX0.h4DAJDxsKUSLUjUEc9UAGfd7IyNGuFuib0dx57AGl5o', 'user', '2023-08-27 14:24:25', '2023-07-28 14:24:25', '2023-07-28 14:24:25'),
(277, 74, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NTQyNjUsImV4cCI6MTY5MTg1MDI2NX0.ULK6dWJB1c4bYo-PdGdgaef_rO92vOwE5IyURR-D004', 'user', '2023-08-12 14:24:25', '2023-07-28 14:24:25', '2023-07-28 14:24:25'),
(278, 74, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTA1NTQyNjUsImV4cCI6MTY5MzE0NjI2NX0.h4DAJDxsKUSLUjUEc9UAGfd7IyNGuFuib0dx57AGl5o', 'user', '2023-08-27 14:24:25', '2023-07-28 14:24:25', '2023-07-28 14:24:25'),
(279, 75, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc1LCJuYW1lIjoiTWFuaSBrYW5kYW4iLCJlbWFpbCI6Im1rYW5mYW43MDlAZ21haWwuY29tIiwiaWF0IjoxNjkwNTU0ODYxLCJleHAiOjE2OTE4NTA4NjF9.OOP2E0Dny_uqRCIitS5xYG9uzgzN6g2i3gPg8kmnCi0', 'user', '2023-08-12 14:34:21', '2023-07-28 14:34:21', '2023-07-28 14:34:21'),
(280, 75, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc1LCJuYW1lIjoiTWFuaSBrYW5kYW4iLCJlbWFpbCI6Im1rYW5mYW43MDlAZ21haWwuY29tIiwiaWF0IjoxNjkwNTU0ODYxLCJleHAiOjE2OTMxNDY4NjF9.-prdRywJFkdnJhjAYn_VT70THKshKyCrcEVXKUY_xTw', 'user', '2023-08-27 14:34:21', '2023-07-28 14:34:21', '2023-07-28 14:34:21'),
(281, 76, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc2LCJuYW1lIjoiQXJpdnVsYWdhbiAuIE0iLCJlbWFpbCI6ImFyaXZhbGFnYW4uZHBtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU1Njc1NCwiZXhwIjoxNjkxODUyNzU0fQ.d6Sz454gCHb70FxIf2EkMrPHq2f-hY9nsBmbHy81W1k', 'user', '2023-08-12 15:05:54', '2023-07-28 15:05:54', '2023-07-28 15:05:54'),
(282, 76, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc2LCJuYW1lIjoiQXJpdnVsYWdhbiAuIE0iLCJlbWFpbCI6ImFyaXZhbGFnYW4uZHBtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU1Njc1NCwiZXhwIjoxNjkzMTQ4NzU0fQ.btLreIsYSqc72eVm5MTpiZ8UNVPu_EHp9OtYFRXOXcE', 'user', '2023-08-27 15:05:54', '2023-07-28 15:05:54', '2023-07-28 15:05:54'),
(283, 78, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU1NzA1OSwiZXhwIjoxNjkxODUzMDU5fQ.pLAr2UKhbNHVVXGwCA0alABHZxlGT3Iy3nY-wcKMrp8', 'user', '2023-08-12 15:10:59', '2023-07-28 15:10:59', '2023-07-28 15:10:59'),
(284, 78, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU1NzA1OSwiZXhwIjoxNjkzMTQ5MDU5fQ.JPE6k_I_WeohwPlxO8xoLuZBca6E-a55KUAtNG9E2qw', 'user', '2023-08-27 15:10:59', '2023-07-28 15:10:59', '2023-07-28 15:10:59'),
(285, 77, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc3LCJuYW1lIjoiTml0aGluICIsImVtYWlsIjoibml0aGlubmtpbmc5M0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NTcxNTksImV4cCI6MTY5MTg1MzE1OX0.VDsCtGTX9oCIVxa6_T9awXYsYSYiDz1QwzVv2IWZqKk', 'user', '2023-08-12 15:12:39', '2023-07-28 15:12:39', '2023-07-28 15:12:39'),
(286, 77, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc3LCJuYW1lIjoiTml0aGluICIsImVtYWlsIjoibml0aGlubmtpbmc5M0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NTcxNTksImV4cCI6MTY5MzE0OTE1OX0.6l4ud88d5vigYZvT9OJVY0CvajvIEAbAWqkjV7PDCus', 'user', '2023-08-27 15:12:39', '2023-07-28 15:12:39', '2023-07-28 15:12:39'),
(287, 4, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNTU3OTcwLCJleHAiOjE2OTE4NTM5NzB9.oUVOPcu3k3ncLfMq3W6-LoiAQelElU2ey7OdJ7Qyys0', 'user', '2023-08-12 15:26:10', '2023-07-28 15:26:10', '2023-07-28 15:26:10'),
(288, 4, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNTU3OTcwLCJleHAiOjE2OTMxNDk5NzB9.7w9IYU-ZokDGyfmjG-3S8UUTjtDlur1fMthR8ePQano', 'user', '2023-08-27 15:26:10', '2023-07-28 15:26:10', '2023-07-28 15:26:10'),
(289, 79, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc5LCJuYW1lIjoidmlzaHdhIHByaXlhIiwiZW1haWwiOiIxN3Zpc2h3YXByaXlhQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU2MDg5NSwiZXhwIjoxNjkxODU2ODk1fQ.izhN--X4BDcQYS4NKjHJoSQSx8MnXZadkQVD9rl8zyI', 'user', '2023-08-12 16:14:55', '2023-07-28 16:14:55', '2023-07-28 16:14:55'),
(290, 79, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc5LCJuYW1lIjoidmlzaHdhIHByaXlhIiwiZW1haWwiOiIxN3Zpc2h3YXByaXlhQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU2MDg5NSwiZXhwIjoxNjkzMTUyODk1fQ.92bBa0VVEYwYwSneqB3Wue9yaaG97eChPqdai2AxccM', 'user', '2023-08-27 16:14:55', '2023-07-28 16:14:55', '2023-07-28 16:14:55'),
(291, 72, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU2MzUxMSwiZXhwIjoxNjkxODU5NTExfQ.bNVverf7WmCVqCouwZSCbD9DzUjYtku392e938B0Rmc', 'user', '2023-08-12 16:58:31', '2023-07-28 16:58:31', '2023-07-28 16:58:31'),
(292, 72, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU2MzUxMSwiZXhwIjoxNjkzMTU1NTExfQ.yK1kL0C-zaeJUzLI4cz6dzP0KgKtuDSzcAV5ylvpHNg', 'user', '2023-08-27 16:58:31', '2023-07-28 16:58:31', '2023-07-28 16:58:31'),
(293, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NjM4NjcsImV4cCI6MTY5MTg1OTg2N30.-o_NswND9-4A4-jL_-3pF9MqxmQpZLHqFr1KGlZPqP4', 'user', '2023-08-12 17:04:27', '2023-07-28 17:04:27', '2023-07-28 17:04:27'),
(294, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NjM4NjcsImV4cCI6MTY5MzE1NTg2N30.91aoLiU5i0ntgV8csQp45topIkKiPqRFxuOGyeAz9gM', 'user', '2023-08-27 17:04:27', '2023-07-28 17:04:27', '2023-07-28 17:04:27'),
(295, 72, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU2NDk0MywiZXhwIjoxNjkxODYwOTQzfQ.c8hZbKNq-Eqfy3EzOVl9DzeacV0kHyAauUmyQjPag84', 'user', '2023-08-12 17:22:23', '2023-07-28 17:22:23', '2023-07-28 17:22:23'),
(296, 72, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU2NDk0MywiZXhwIjoxNjkzMTU2OTQzfQ.rOiEIHKu1woWczo2tGqQ9yN-gGTOQ8T_NFqWQYvNJBU', 'user', '2023-08-27 17:22:23', '2023-07-28 17:22:23', '2023-07-28 17:22:23'),
(297, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NjUyNTUsImV4cCI6MTY5MTg2MTI1NX0.FQKFWeY0pCoordjDa6-GrWIVE3O7oW3OTGqH5p_YsY8', 'user', '2023-08-12 17:27:35', '2023-07-28 17:27:35', '2023-07-28 17:27:35'),
(298, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA1NjUyNTUsImV4cCI6MTY5MzE1NzI1NX0.02S0YIuxRoJh0J7fSIWlJWVPoWrKC4CYdnM2-qg52ow', 'user', '2023-08-27 17:27:35', '2023-07-28 17:27:35', '2023-07-28 17:27:35'),
(299, 81, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgxLCJuYW1lIjoiVW1hciBCYXJ1ayIsImVtYWlsIjoidW1hcmZhcnVrMTQzOTZAZ21haWwuY29tIiwiaWF0IjoxNjkwNTg2OTU3LCJleHAiOjE2OTE4ODI5NTd9.1LO5whQ_Ts6rJ91KOQYvMWx77dy6nWueLNQoAY0x9jY', 'user', '2023-08-12 23:29:17', '2023-07-28 23:29:17', '2023-07-28 23:29:17'),
(300, 81, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgxLCJuYW1lIjoiVW1hciBCYXJ1ayIsImVtYWlsIjoidW1hcmZhcnVrMTQzOTZAZ21haWwuY29tIiwiaWF0IjoxNjkwNTg2OTU3LCJleHAiOjE2OTMxNzg5NTd9.7yOr06aP68sw-g9jCV2Up4aNlzF4F4PTNAU1LcoQOEc', 'user', '2023-08-27 23:29:17', '2023-07-28 23:29:17', '2023-07-28 23:29:17'),
(301, 44, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ0LCJuYW1lIjoiU0FSQVZBTkFLVU1BUiBTIiwiZW1haWwiOiJzYXJhdmFuYWt1bWFyMDIyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU4OTg2MiwiZXhwIjoxNjkxODg1ODYyfQ.NePx-9enJg06Cuizaep20wW3gk_qiCyQZfEkwHLIR1A', 'user', '2023-08-13 00:17:42', '2023-07-29 00:17:42', '2023-07-29 00:17:42'),
(302, 44, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ0LCJuYW1lIjoiU0FSQVZBTkFLVU1BUiBTIiwiZW1haWwiOiJzYXJhdmFuYWt1bWFyMDIyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDU4OTg2MiwiZXhwIjoxNjkzMTgxODYyfQ.zcjyp8xaIHRoqTF8rna4UEj9k9AB9eOzfOibqcTUXZI', 'user', '2023-08-28 00:17:42', '2023-07-29 00:17:42', '2023-07-29 00:17:42'),
(303, 82, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgyLCJuYW1lIjoiU3VyaXlhIEJhbGFzdWJyYW1hbmlhbSIsImVtYWlsIjoic3VyaXlhc3VydGhpbkBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTIzNTIsImV4cCI6MTY5MTg4ODM1Mn0.-s--qMrh5Y2AXAxoZm2Us1arx2J1ZVKTE0WMQiFFju4', 'user', '2023-08-13 00:59:12', '2023-07-29 00:59:12', '2023-07-29 00:59:12'),
(304, 82, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgyLCJuYW1lIjoiU3VyaXlhIEJhbGFzdWJyYW1hbmlhbSIsImVtYWlsIjoic3VyaXlhc3VydGhpbkBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTIzNTIsImV4cCI6MTY5MzE4NDM1Mn0.awnx-5oWW_FLvL4yIXmamiHkYXPufieCSiJdvtlOW6g', 'user', '2023-08-28 00:59:12', '2023-07-29 00:59:12', '2023-07-29 00:59:12'),
(305, 84, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg0LCJuYW1lIjoiU2FudGhvc2ggU2FudGhvc2giLCJlbWFpbCI6InNhbnRob3NoLnNhbnRob3NoMUBpY2xvdWQuY29tIiwiaWF0IjoxNjkwNTkyOTM3LCJleHAiOjE2OTE4ODg5Mzd9._mvl2WYgfB9qYSBHd8YbrsHfCJht8hRDNvYih225L_A', 'user', '2023-08-13 01:08:57', '2023-07-29 01:08:57', '2023-07-29 01:08:57'),
(306, 84, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg0LCJuYW1lIjoiU2FudGhvc2ggU2FudGhvc2giLCJlbWFpbCI6InNhbnRob3NoLnNhbnRob3NoMUBpY2xvdWQuY29tIiwiaWF0IjoxNjkwNTkyOTM3LCJleHAiOjE2OTMxODQ5Mzd9.1JCx7xYM9SZ3ogCpSopXF2iSnYvD4ALv-x-KxZ-Nbgk', 'user', '2023-08-28 01:08:57', '2023-07-29 01:08:57', '2023-07-29 01:08:57'),
(307, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTYzODcsImV4cCI6MTY5MTg5MjM4N30.uY8pH_QgXm8zN1MHt4AtlyJpFdwgg4S8HAss9hMgYFY', 'user', '2023-08-13 02:06:27', '2023-07-29 02:06:27', '2023-07-29 02:06:27'),
(308, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTYzODcsImV4cCI6MTY5MzE4ODM4N30.A-MbS3IAUDJYeO8mDE_K-tLbyW4SBJRL1Sha8ILmeEM', 'user', '2023-08-28 02:06:27', '2023-07-29 02:06:27', '2023-07-29 02:06:27'),
(309, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTY0MTIsImV4cCI6MTY5MTg5MjQxMn0.7krhbQWhMMZ1qwh47BBfsiVPGCk1l2loSaPURLrTG6M', 'user', '2023-08-13 02:06:52', '2023-07-29 02:06:52', '2023-07-29 02:06:52'),
(310, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTY0MTIsImV4cCI6MTY5MzE4ODQxMn0.s7KyXdDW7KNfgf6U0bQhd8HzjvqAtlE_l4Uq644HMmE', 'user', '2023-08-28 02:06:52', '2023-07-29 02:06:52', '2023-07-29 02:06:52'),
(311, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTY0ODgsImV4cCI6MTY5MTg5MjQ4OH0.4bhKu36rXqmRXdGC6JDgTeiOm6l40rRUcbIsXyascRo', 'user', '2023-08-13 02:08:08', '2023-07-29 02:08:08', '2023-07-29 02:08:08');
INSERT INTO `Token` (`tokenId`, `userId`, `tokenType`, `token`, `loggedInBy`, `expiresAt`, `createdAt`, `updatedAt`) VALUES
(312, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTY0ODgsImV4cCI6MTY5MzE4ODQ4OH0.y_6lbq3hobCTJlBr1seKln6bk7YyzNZ9Lbc7MVZkYSM', 'user', '2023-08-28 02:08:08', '2023-07-29 02:08:08', '2023-07-29 02:08:08'),
(313, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTY4MDIsImV4cCI6MTY5MTg5MjgwMn0.flXdj6G91BRDXWPT6_CajWMVX1iN8eS1Jk5iDDIedow', 'user', '2023-08-13 02:13:22', '2023-07-29 02:13:22', '2023-07-29 02:13:22'),
(314, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTY4MDIsImV4cCI6MTY5MzE4ODgwMn0.lsVQq-JhJOZ1OY8DqMrLtPvaF8t_BeYXfNAb1k9CNzE', 'user', '2023-08-28 02:13:22', '2023-07-29 02:13:22', '2023-07-29 02:13:22'),
(315, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTY4MDIsImV4cCI6MTY5MTg5MjgwMn0.flXdj6G91BRDXWPT6_CajWMVX1iN8eS1Jk5iDDIedow', 'user', '2023-08-13 02:13:22', '2023-07-29 02:13:22', '2023-07-29 02:13:22'),
(316, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTY4MDIsImV4cCI6MTY5MzE4ODgwMn0.lsVQq-JhJOZ1OY8DqMrLtPvaF8t_BeYXfNAb1k9CNzE', 'user', '2023-08-28 02:13:22', '2023-07-29 02:13:22', '2023-07-29 02:13:22'),
(317, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTY4MDIsImV4cCI6MTY5MTg5MjgwMn0.flXdj6G91BRDXWPT6_CajWMVX1iN8eS1Jk5iDDIedow', 'user', '2023-08-13 02:13:22', '2023-07-29 02:13:22', '2023-07-29 02:13:22'),
(318, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTY4MDIsImV4cCI6MTY5MzE4ODgwMn0.lsVQq-JhJOZ1OY8DqMrLtPvaF8t_BeYXfNAb1k9CNzE', 'user', '2023-08-28 02:13:22', '2023-07-29 02:13:22', '2023-07-29 02:13:22'),
(319, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc1MDYsImV4cCI6MTY5MTg5MzUwNn0.QA-_myjJcibDVjeedfzbhLohfFM1UqR2ojcLjV2PnQw', 'user', '2023-08-13 02:25:06', '2023-07-29 02:25:06', '2023-07-29 02:25:06'),
(320, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc1MDYsImV4cCI6MTY5MzE4OTUwNn0.DSegl6mMiDDNIR5sc11B34gDU_v2Ex_huhuvzIBAJxo', 'user', '2023-08-28 02:25:06', '2023-07-29 02:25:06', '2023-07-29 02:25:06'),
(321, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc2MTIsImV4cCI6MTY5MTg5MzYxMn0.U95l64pDrqNqGqbtVUO4RuKN-uLnQKivMVZCcRp3ojM', 'user', '2023-08-13 02:26:52', '2023-07-29 02:26:52', '2023-07-29 02:26:52'),
(322, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc2MTIsImV4cCI6MTY5MzE4OTYxMn0.MEbKmHiVDDg8GXN-aZ64K_Ja4pcnOSm_TYteCGLm2To', 'user', '2023-08-28 02:26:52', '2023-07-29 02:26:52', '2023-07-29 02:26:52'),
(323, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc2MTMsImV4cCI6MTY5MTg5MzYxM30.v-Bktgr9htcO2CUPDjZn3w9WBpsbQwTJp9o7fSSAUfc', 'user', '2023-08-13 02:26:53', '2023-07-29 02:26:53', '2023-07-29 02:26:53'),
(324, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc2MTMsImV4cCI6MTY5MzE4OTYxM30.bc5s2FuTcWWfpKI3q3wopAyWSqH9KRRTg7_VwVmS-68', 'user', '2023-08-28 02:26:53', '2023-07-29 02:26:53', '2023-07-29 02:26:53'),
(325, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc3MTYsImV4cCI6MTY5MTg5MzcxNn0.VvgaGZJG851BWVz5J3o5ZB1NcmkvNiPpzsE8g9OvZ_o', 'user', '2023-08-13 02:28:36', '2023-07-29 02:28:36', '2023-07-29 02:28:36'),
(326, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc3MTYsImV4cCI6MTY5MzE4OTcxNn0.02OyfYWuUQOQs_7WFu_39XW7IaCa7NSE-HqhWtvv5jw', 'user', '2023-08-28 02:28:36', '2023-07-29 02:28:36', '2023-07-29 02:28:36'),
(327, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc3MTYsImV4cCI6MTY5MTg5MzcxNn0.VvgaGZJG851BWVz5J3o5ZB1NcmkvNiPpzsE8g9OvZ_o', 'user', '2023-08-13 02:28:36', '2023-07-29 02:28:36', '2023-07-29 02:28:36'),
(328, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc3MTYsImV4cCI6MTY5MzE4OTcxNn0.02OyfYWuUQOQs_7WFu_39XW7IaCa7NSE-HqhWtvv5jw', 'user', '2023-08-28 02:28:36', '2023-07-29 02:28:36', '2023-07-29 02:28:36'),
(329, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc3NDMsImV4cCI6MTY5MTg5Mzc0M30.UHc45Xc15KDWmlw2I5QlyCVadU_hpmZ5rJmPQpOAXwI', 'user', '2023-08-13 02:29:03', '2023-07-29 02:29:03', '2023-07-29 02:29:03'),
(330, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc3NDMsImV4cCI6MTY5MzE4OTc0M30.Sa4fZ7kfh2SpxVSRhu5_M2uVkGkpugbo5GlRPtOtCY8', 'user', '2023-08-28 02:29:03', '2023-07-29 02:29:03', '2023-07-29 02:29:03'),
(331, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc4MDcsImV4cCI6MTY5MTg5MzgwN30.IDuF13d0ByOcjQzvF5MT-T3uMOBmVSEkfc4dY9WoLk4', 'user', '2023-08-13 02:30:07', '2023-07-29 02:30:07', '2023-07-29 02:30:07'),
(332, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc4MDcsImV4cCI6MTY5MzE4OTgwN30.2J6SvDRpnJHZKeGpCSNXOT4Uf0RIhYHd6I1l6RFoiRM', 'user', '2023-08-28 02:30:07', '2023-07-29 02:30:07', '2023-07-29 02:30:07'),
(333, 86, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc4MDgsImV4cCI6MTY5MTg5MzgwOH0.99UwK9TWXxklqL1Lka5xdpSpkaPvknaeJvVI0MbDEdU', 'user', '2023-08-13 02:30:08', '2023-07-29 02:30:08', '2023-07-29 02:30:08'),
(334, 86, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg2LCJuYW1lIjoiQW5nZWxpbiIsImVtYWlsIjoibmlsZWduYS5wcml5YUBnbWFpbC5jb20iLCJpYXQiOjE2OTA1OTc4MDgsImV4cCI6MTY5MzE4OTgwOH0.HZBBgQXH3onRUQYVQ1IExl2GCOn8dNGyGDnOyQCosHg', 'user', '2023-08-28 02:30:08', '2023-07-29 02:30:08', '2023-07-29 02:30:08'),
(335, 87, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg3LCJuYW1lIjoiUHJpeWEgLnYiLCJlbWFpbCI6Im5hdmVlbmE4MDg3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYwMzAzMCwiZXhwIjoxNjkxODk5MDMwfQ.JAUz8zRBMxhCwjpa_JygOKnP09dZFgwh4m8LY_X_dcs', 'user', '2023-08-13 03:57:10', '2023-07-29 03:57:10', '2023-07-29 03:57:10'),
(336, 87, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjg3LCJuYW1lIjoiUHJpeWEgLnYiLCJlbWFpbCI6Im5hdmVlbmE4MDg3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYwMzAzMCwiZXhwIjoxNjkzMTk1MDMwfQ.V1A18jZfEK9wRY4ySTOn36-r1e_upQmh7saaQT_-52s', 'user', '2023-08-28 03:57:10', '2023-07-29 03:57:10', '2023-07-29 03:57:10'),
(337, 39, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM5LCJuYW1lIjoiU2FrdGhpdmVsIEQgQiIsImVtYWlsIjoic2FrdGhpdmVsZGI5NUBnbWFpbC5jb20iLCJpYXQiOjE2OTA2MDM3MTgsImV4cCI6MTY5MTg5OTcxOH0.o-B1jKdjkOH6aiJQqdB2MzYUJNyJQKvzPwNaVeqwd3A', 'user', '2023-08-13 04:08:38', '2023-07-29 04:08:38', '2023-07-29 04:08:38'),
(338, 39, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM5LCJuYW1lIjoiU2FrdGhpdmVsIEQgQiIsImVtYWlsIjoic2FrdGhpdmVsZGI5NUBnbWFpbC5jb20iLCJpYXQiOjE2OTA2MDM3MTgsImV4cCI6MTY5MzE5NTcxOH0.XMD9YVWoTPKswJuTXcKbV4QekWp9A_jI-7sq1h0_tJM', 'user', '2023-08-28 04:08:38', '2023-07-29 04:08:38', '2023-07-29 04:08:38'),
(339, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYxMjg3OSwiZXhwIjoxNjkxOTA4ODc5fQ.50AOEBIIS5PkkgL3KNhbwpRyvA_u8U-AfPHJlYKpuJ0', 'user', '2023-08-13 06:41:19', '2023-07-29 06:41:19', '2023-07-29 06:41:19'),
(340, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYxMjg3OSwiZXhwIjoxNjkzMjA0ODc5fQ.gt7nZoEBRGhdub6OcSoi0j7YXO8Yjd9__0nbSBRd8nI', 'user', '2023-08-28 06:41:19', '2023-07-29 06:41:19', '2023-07-29 06:41:19'),
(341, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYxMzE2NiwiZXhwIjoxNjkxOTA5MTY2fQ.l0KWjxHnKV4LpxCI0R5QHmFm6C2o-jKjgPI7GHWxobE', 'user', '2023-08-13 06:46:06', '2023-07-29 06:46:06', '2023-07-29 06:46:06'),
(342, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYxMzE2NiwiZXhwIjoxNjkzMjA1MTY2fQ.sRakYITyqAdiaOOmHOHa9nQBYVbadcLpbBpFeQTmIjg', 'user', '2023-08-28 06:46:06', '2023-07-29 06:46:06', '2023-07-29 06:46:06'),
(343, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYyMDk0NSwiZXhwIjoxNjkxOTE2OTQ1fQ._nFmt4F8ptEKxQiyBApRLfOAwDfr6FLfeZGBrc8gp-A', 'user', '2023-08-13 08:55:45', '2023-07-29 08:55:45', '2023-07-29 08:55:45'),
(344, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYyMDk0NSwiZXhwIjoxNjkzMjEyOTQ1fQ.Mg3D9afsq0AKAoROudjY-oWd6dGTLe5-UE3fnWpWxQE', 'user', '2023-08-28 08:55:45', '2023-07-29 08:55:45', '2023-07-29 08:55:45'),
(345, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA2MjEwMjAsImV4cCI6MTY5MTkxNzAyMH0.gTEJ49jfID3sNVDqOH4NQ5xFZaMP7IqHRXJHo9X0PGQ', 'user', '2023-08-13 08:57:00', '2023-07-29 08:57:00', '2023-07-29 08:57:00'),
(346, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA2MjEwMjAsImV4cCI6MTY5MzIxMzAyMH0.CD1LEf6rUXLTMyVatT4nL13K1K8Z0WKHpb--pHwuulg', 'user', '2023-08-28 08:57:00', '2023-07-29 08:57:00', '2023-07-29 08:57:00'),
(347, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA2MjE0NTYsImV4cCI6MTY5MTkxNzQ1Nn0.3tl5RepPKzXoF3GW2rp45GKtT1Pwcvxhl3pIwG_pG9k', 'user', '2023-08-13 09:04:16', '2023-07-29 09:04:16', '2023-07-29 09:04:16'),
(348, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA2MjE0NTYsImV4cCI6MTY5MzIxMzQ1Nn0.-U8ohaOyRmj5XcoBarj7jE0wMY8lOKFzPoV4Y4SV7Yk', 'user', '2023-08-28 09:04:16', '2023-07-29 09:04:16', '2023-07-29 09:04:16'),
(349, 66, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY2LCJuYW1lIjoiU3VnYW50aGkgViIsImVtYWlsIjoic2FrdGhpZ2FuZXNodnJhamFuQGdtYWlsLmNvbSIsImlhdCI6MTY5MDYyMjI3NywiZXhwIjoxNjkxOTE4Mjc3fQ.rDXKXXVsVbB0W0-CJMCVPeYFMbJduKmP0wMSpe4I7VQ', 'user', '2023-08-13 09:17:57', '2023-07-29 09:17:57', '2023-07-29 09:17:57'),
(350, 66, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY2LCJuYW1lIjoiU3VnYW50aGkgViIsImVtYWlsIjoic2FrdGhpZ2FuZXNodnJhamFuQGdtYWlsLmNvbSIsImlhdCI6MTY5MDYyMjI3NywiZXhwIjoxNjkzMjE0Mjc3fQ.kXHzFXpKLZHOOrLjKZg7A3MNfhj5srlaYTuPQG7ZdZ4', 'user', '2023-08-28 09:17:57', '2023-07-29 09:17:57', '2023-07-29 09:17:57'),
(351, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA2MjIzOTksImV4cCI6MTY5MTkxODM5OX0.Z3zpBaYP3BfBl_8iz_qikIuV_1b8Yr-TukevpJdI18g', 'user', '2023-08-13 09:19:59', '2023-07-29 09:19:59', '2023-07-29 09:19:59'),
(352, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA2MjIzOTksImV4cCI6MTY5MzIxNDM5OX0.TePSmUawxjid1bus8XNYamRvhAPvkoMPo6BswBvewMY', 'user', '2023-08-28 09:19:59', '2023-07-29 09:19:59', '2023-07-29 09:19:59'),
(353, 0, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2OTA2MjU4MTUsImV4cCI6MTY5MTkyMTgxNX0.uj3YXdiqYZr82F0xpwavy6CzVM6F7ckgdszvRkd6iS4', 'user', '2023-08-13 15:46:55', '2023-07-29 10:17:03', '2023-07-29 10:17:03'),
(354, 0, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2OTA2MjU4MTUsImV4cCI6MTY5MzIxNzgxNX0.DNGp8-H7--eaQhkV8J9_TsoXHHe1MuI6I6bDNgLBs2k', 'user', '2023-08-28 15:46:55', '2023-07-29 10:17:03', '2023-07-29 10:17:03'),
(355, 0, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2OTA2MjYwMjUsImV4cCI6MTY5MTkyMjAyNX0.3UZFpimGG9LLWT1Sisci5fjwWs9fbc8ETBBfT_HjSaM', 'user', '2023-08-13 15:50:25', '2023-07-29 10:20:34', '2023-07-29 10:20:34'),
(356, 0, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2OTA2MjYwMjUsImV4cCI6MTY5MzIxODAyNX0.WIX3fGRmH5wGqnu3dnhhKXnnfG61Oud10Wql6FYXGGI', 'user', '2023-08-28 15:50:25', '2023-07-29 10:20:34', '2023-07-29 10:20:34'),
(357, 0, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2OTA2MjYxNjEsImV4cCI6MTY5MTkyMjE2MX0.cktisN3SU4DRcX1xs1w887q8QJ2tlEwMf2lmt9QWFM4', 'user', '2023-08-13 15:52:41', '2023-07-29 10:22:50', '2023-07-29 10:22:50'),
(358, 0, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2OTA2MjYxNjEsImV4cCI6MTY5MzIxODE2MX0.7Fkp2c0zwpJMpk3QxrVON-75PUwz7-g5koQ_EQO0tbM', 'user', '2023-08-28 15:52:41', '2023-07-29 10:22:50', '2023-07-29 10:22:50'),
(359, 91, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkxLCJuYW1lIjoidGVzdCIsImVtYWlsIjoiZGV2QHRlc3QuaW4iLCJpYXQiOjE2OTA2MjY0MzQsImV4cCI6MTY5MTkyMjQzNH0.1BRPgd4Lg1EUJiwwFB_rPOgrBtADSu1c1ENpENam6Rg', 'user', '2023-08-13 15:57:14', '2023-07-29 10:27:23', '2023-07-29 10:27:23'),
(360, 91, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkxLCJuYW1lIjoidGVzdCIsImVtYWlsIjoiZGV2QHRlc3QuaW4iLCJpYXQiOjE2OTA2MjY0MzQsImV4cCI6MTY5MzIxODQzNH0.tRSQGnneLQn_hL3gax55rbc-8VaTwfjZg8QdwAIjOj0', 'user', '2023-08-28 15:57:14', '2023-07-29 10:27:23', '2023-07-29 10:27:23'),
(361, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYyNjYyOSwiZXhwIjoxNjkxOTIyNjI5fQ.DBuY6zCv5TRy4Ny_I0pCSWkz1KOBsmgreA0rInqr1UI', 'user', '2023-08-13 10:30:29', '2023-07-29 10:30:29', '2023-07-29 10:30:29'),
(362, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYyNjYyOSwiZXhwIjoxNjkzMjE4NjI5fQ.7O_GmgbtI3Y7YwzpjyyKRpsnYC2cggH0IbK7VTUJ1ps', 'user', '2023-08-28 10:30:29', '2023-07-29 10:30:29', '2023-07-29 10:30:29'),
(363, 92, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkyLCJuYW1lIjoiVGhhdWZlZWsiLCJlbWFpbCI6IlNvdmFodG9mZmljaWFsQGdtYWlsLmNvbSIsImlhdCI6MTY5MDYyNjgxNywiZXhwIjoxNjkxOTIyODE3fQ.Bvjk8rWm0Be5d9lrLMtnq0UUcxsAbuAqoFn-OdFsjzQ', 'user', '2023-08-13 10:33:37', '2023-07-29 10:33:37', '2023-07-29 10:33:37'),
(364, 92, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkyLCJuYW1lIjoiVGhhdWZlZWsiLCJlbWFpbCI6IlNvdmFodG9mZmljaWFsQGdtYWlsLmNvbSIsImlhdCI6MTY5MDYyNjgxNywiZXhwIjoxNjkzMjE4ODE3fQ.bJz4IAJfKe7gYyTUKUHRB_kYiqP5L_5gPzgI5yE3pf0', 'user', '2023-08-28 10:33:37', '2023-07-29 10:33:37', '2023-07-29 10:33:37'),
(365, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYyNjg3MCwiZXhwIjoxNjkxOTIyODcwfQ.LZ3-5WIpe7DPVrCEPKCNhNIyX2FT--hkLqeCSWyBOXQ', 'user', '2023-08-13 10:34:30', '2023-07-29 10:34:30', '2023-07-29 10:34:30'),
(366, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYyNjg3MCwiZXhwIjoxNjkzMjE4ODcwfQ.F4TxTtugo2KKgUq70uyHdb3Xvd6J-QlEWn6XUIyBCyE', 'user', '2023-08-28 10:34:30', '2023-07-29 10:34:30', '2023-07-29 10:34:30'),
(367, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjI2OTk4LCJleHAiOjE2OTE5MjI5OTh9.odGGXQx68uo1Kd1syrn-e26xh9rr_UOQJylx8vLeDWs', 'user', '2023-08-13 10:36:38', '2023-07-29 10:36:38', '2023-07-29 10:36:38'),
(368, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjI2OTk4LCJleHAiOjE2OTMyMTg5OTh9.Ftb4L3rCX84Ufmqff1bHAHmIcDTHhhDPDO6E4aMOOss', 'user', '2023-08-28 10:36:38', '2023-07-29 10:36:38', '2023-07-29 10:36:38'),
(369, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjI3MTc4LCJleHAiOjE2OTE5MjMxNzh9.eTCFwRb2bHokHFvZP9vxx4L08zdtZIcJLKSMj7n6Ay4', 'user', '2023-08-13 10:39:38', '2023-07-29 10:39:38', '2023-07-29 10:39:38'),
(370, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjI3MTc4LCJleHAiOjE2OTMyMTkxNzh9.myvTazSXhQALETIc2WzXkNXCkKWhwje9RXVZNMCyMok', 'user', '2023-08-28 10:39:38', '2023-07-29 10:39:38', '2023-07-29 10:39:38'),
(371, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjI4Njc1LCJleHAiOjE2OTE5MjQ2NzV9.WDpGePLDIdmrCBTQEFa6MZSBQWVcPdh1yAARJeJ7TzQ', 'user', '2023-08-13 11:04:35', '2023-07-29 11:04:35', '2023-07-29 11:04:35'),
(372, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjI4Njc1LCJleHAiOjE2OTMyMjA2NzV9.HgLBgjNJndCHCqcsgnNnPNyycr5LQFDASBuLfwZfUSY', 'user', '2023-08-28 11:04:35', '2023-07-29 11:04:35', '2023-07-29 11:04:35'),
(373, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA2MzA4OTIsImV4cCI6MTY5MTkyNjg5Mn0.VR4YF_Fl2m0anMo06fosiiTU5rB7DwMU_REkJ1eL1p4', 'user', '2023-08-13 11:41:32', '2023-07-29 11:41:32', '2023-07-29 11:41:32'),
(374, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA2MzA4OTIsImV4cCI6MTY5MzIyMjg5Mn0.M4oLvY_HPPBPACrLV10N1J6G8943ulbuJXbYx6lPhbU', 'user', '2023-08-28 11:41:32', '2023-07-29 11:41:32', '2023-07-29 11:41:32'),
(375, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA2MzE1MzIsImV4cCI6MTY5MTkyNzUzMn0.jMEPkt7JGWidiK9Ys7U_wFxycFoi2gZLK3xlIjX340c', 'user', '2023-08-13 17:22:12', '2023-07-29 11:52:21', '2023-07-29 11:52:21'),
(376, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA2MzE1MzIsImV4cCI6MTY5MzIyMzUzMn0.FykNvRPI2CZQ8fveL2tN8vDjmGh7pbxK6A-FH8pNswA', 'user', '2023-08-28 17:22:12', '2023-07-29 11:52:21', '2023-07-29 11:52:21'),
(377, 37, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM3LCJuYW1lIjoiSy4gUi4gUG9vbmdvZGkgIiwiZW1haWwiOiJzYWlwb29uZ29kaWsyMDEyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDYzMTg4NSwiZXhwIjoxNjkxOTI3ODg1fQ.yArcNQHl0NHd8iM8dDIJ0FedtPn2kxEelMlNsGCd_7s', 'user', '2023-08-13 11:58:05', '2023-07-29 11:58:05', '2023-07-29 11:58:05'),
(378, 37, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM3LCJuYW1lIjoiSy4gUi4gUG9vbmdvZGkgIiwiZW1haWwiOiJzYWlwb29uZ29kaWsyMDEyQGdtYWlsLmNvbSIsImlhdCI6MTY5MDYzMTg4NSwiZXhwIjoxNjkzMjIzODg1fQ.twH0IeqpLpvRII1nkM5_Wi5Z0Hm5YR7hn3xKgtN-co8', 'user', '2023-08-28 11:58:05', '2023-07-29 11:58:05', '2023-07-29 11:58:05'),
(379, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjMyMTk5LCJleHAiOjE2OTE5MjgxOTl9.jxp2A7v1cLmkjj4HfZn5pud6CSRydwKs1LF6LidgqLM', 'user', '2023-08-13 17:33:19', '2023-07-29 12:03:27', '2023-07-29 12:03:27'),
(380, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjMyMTk5LCJleHAiOjE2OTMyMjQxOTl9.r7Bl0NxbX816_6s2s9uZoE9AzNm-AhgSaFLzPgGLVa4', 'user', '2023-08-28 17:33:19', '2023-07-29 12:03:27', '2023-07-29 12:03:27'),
(381, 93, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkzLCJuYW1lIjoiRkVMSVgiLCJlbWFpbCI6ImZlbGl4aWNlMTc0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYzNTMyNiwiZXhwIjoxNjkxOTMxMzI2fQ.oznwkJF9k3VkbR8lOkLWAnRp7EMBAiVWl4oXH33xsP8', 'user', '2023-08-13 12:55:26', '2023-07-29 12:55:26', '2023-07-29 12:55:26'),
(382, 93, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkzLCJuYW1lIjoiRkVMSVgiLCJlbWFpbCI6ImZlbGl4aWNlMTc0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYzNTMyNiwiZXhwIjoxNjkzMjI3MzI2fQ.astDvfuiT24SaUavGvxnM3UZsGmyXqxcWHnmbvxsdX8', 'user', '2023-08-28 12:55:26', '2023-07-29 12:55:26', '2023-07-29 12:55:26'),
(383, 93, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkzLCJuYW1lIjoiRkVMSVgiLCJlbWFpbCI6ImZlbGl4aWNlMTc0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYzNTUwNywiZXhwIjoxNjkxOTMxNTA3fQ.t4n_4nvhXVhRlGd95lfTgOjflbWGg8l5QxapSLfh3pE', 'user', '2023-08-13 12:58:27', '2023-07-29 12:58:27', '2023-07-29 12:58:27'),
(384, 93, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkzLCJuYW1lIjoiRkVMSVgiLCJlbWFpbCI6ImZlbGl4aWNlMTc0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDYzNTUwNywiZXhwIjoxNjkzMjI3NTA3fQ.4PsMJSKHB2CcqTnRl8isUsplAr2LFJDlWknQdNv4y-w', 'user', '2023-08-28 12:58:27', '2023-07-29 12:58:27', '2023-07-29 12:58:27'),
(385, 94, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk0LCJuYW1lIjoiTW9oYW1lZCBGYXppbCBKIiwiZW1haWwiOiJmYXppbG1zNjQzQGdtYWlsLmNvbSIsImlhdCI6MTY5MDY0MTc5NywiZXhwIjoxNjkxOTM3Nzk3fQ.TQTxyhhDIPhvNw88hGlH6iHEqmNMiaoTUQfE6VC_2Zw', 'user', '2023-08-13 14:43:17', '2023-07-29 14:43:17', '2023-07-29 14:43:17'),
(386, 94, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk0LCJuYW1lIjoiTW9oYW1lZCBGYXppbCBKIiwiZW1haWwiOiJmYXppbG1zNjQzQGdtYWlsLmNvbSIsImlhdCI6MTY5MDY0MTc5NywiZXhwIjoxNjkzMjMzNzk3fQ.NKBVYkFBuLTc744Di39re6jdRMRWFTVVrD9i0_kuHyo', 'user', '2023-08-28 14:43:17', '2023-07-29 14:43:17', '2023-07-29 14:43:17'),
(387, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjUwODA3LCJleHAiOjE2OTE5NDY4MDd9.eb4u--JzZ0svsWzYZr9YL10bGe1EompaXvv06ku8i74', 'user', '2023-08-13 22:43:27', '2023-07-29 17:13:37', '2023-07-29 17:13:37'),
(388, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjUwODA3LCJleHAiOjE2OTMyNDI4MDd9.QWn984tYHTn1Z79mnaDfjTL_6JOxSBHORfIKkiuChKg', 'user', '2023-08-28 22:43:27', '2023-07-29 17:13:37', '2023-07-29 17:13:37'),
(389, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjUwOTA0LCJleHAiOjE2OTE5NDY5MDR9.u8iKTuuHomIVRe8JpVxWcz2HLI4VnmPYt1k4XCNW87w', 'user', '2023-08-13 22:45:04', '2023-07-29 17:15:14', '2023-07-29 17:15:14'),
(390, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNjUwOTA0LCJleHAiOjE2OTMyNDI5MDR9.BNrnPFFo85k7NHup1DSj5mRlDZtJ5vNnUYcLmJzd15o', 'user', '2023-08-28 22:45:04', '2023-07-29 17:15:14', '2023-07-29 17:15:14'),
(391, 96, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk2LCJuYW1lIjoiR09LVUwgU0FTSUtVTUFSIiwiZW1haWwiOiJnb2t1bHNhc2k0MjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNjUyMjIwLCJleHAiOjE2OTE5NDgyMjB9.OoUTLoSQjxb1YEgNljmJBIoPde75DEnoQtgcLA6FkPw', 'user', '2023-08-13 17:37:00', '2023-07-29 17:37:00', '2023-07-29 17:37:00'),
(392, 96, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk2LCJuYW1lIjoiR09LVUwgU0FTSUtVTUFSIiwiZW1haWwiOiJnb2t1bHNhc2k0MjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNjUyMjIwLCJleHAiOjE2OTMyNDQyMjB9.mybdk-9GmrtlKVUBkVwj6N__P9Fre5m65fDNoigKgJY', 'user', '2023-08-28 17:37:00', '2023-07-29 17:37:00', '2023-07-29 17:37:00'),
(393, 96, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk2LCJuYW1lIjoiR09LVUwgU0FTSUtVTUFSIiwiZW1haWwiOiJnb2t1bHNhc2k0MjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNjUyMjU0LCJleHAiOjE2OTE5NDgyNTR9.Ncq-h9UsCC-qPuhilfRd2ZXyCjRyIWxOHaARkaByeF0', 'user', '2023-08-13 17:37:34', '2023-07-29 17:37:34', '2023-07-29 17:37:34'),
(394, 96, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk2LCJuYW1lIjoiR09LVUwgU0FTSUtVTUFSIiwiZW1haWwiOiJnb2t1bHNhc2k0MjJAZ21haWwuY29tIiwiaWF0IjoxNjkwNjUyMjU0LCJleHAiOjE2OTMyNDQyNTR9.gBcIKd-H3YLOcEPSv2WgMtYuLqZHnYks53wYFJn1Y2Q', 'user', '2023-08-28 17:37:34', '2023-07-29 17:37:34', '2023-07-29 17:37:34'),
(395, 81, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgxLCJuYW1lIjoiVW1hciBmYXJ1ayIsImVtYWlsIjoidW1hcmZhcnVrMTQzOTZAZ21haWwuY29tIiwiaWF0IjoxNjkwNjY0MTU5LCJleHAiOjE2OTE5NjAxNTl9.Bvfu2q9wpF_2lvc5YcfDjH1MKICM876QpuKUJKzwOWA', 'user', '2023-08-13 20:55:59', '2023-07-29 20:55:59', '2023-07-29 20:55:59'),
(396, 81, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgxLCJuYW1lIjoiVW1hciBmYXJ1ayIsImVtYWlsIjoidW1hcmZhcnVrMTQzOTZAZ21haWwuY29tIiwiaWF0IjoxNjkwNjY0MTU5LCJleHAiOjE2OTMyNTYxNTl9.gjRd6gGpcTGCKRj5o4RkJR21o0Ov3N6H9t7ZcW1vv4k', 'user', '2023-08-28 20:55:59', '2023-07-29 20:55:59', '2023-07-29 20:55:59'),
(397, 97, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk3LCJuYW1lIjoiUmF2aSIsImVtYWlsIjoicmF2aWJodXZhbmExMTc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDY5NTE5MywiZXhwIjoxNjkxOTkxMTkzfQ.__N3Fw3IhYOh62klT3NmP6ppRt0eoLn1IcX78sOE7sw', 'user', '2023-08-14 05:33:13', '2023-07-30 05:33:13', '2023-07-30 05:33:13'),
(398, 97, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk3LCJuYW1lIjoiUmF2aSIsImVtYWlsIjoicmF2aWJodXZhbmExMTc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDY5NTE5MywiZXhwIjoxNjkzMjg3MTkzfQ.wm3wWIXPXvmRGm34P_NA9CDfcnY_W3bv4un4wcnK1cs', 'user', '2023-08-29 05:33:13', '2023-07-30 05:33:13', '2023-07-30 05:33:13'),
(399, 98, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk4LCJuYW1lIjoiQmh1dmFuZXNod2FyaSIsImVtYWlsIjoiYmh1dmFuZXNod2FyaXJhdmkwNkBnbWFpbC5jb20iLCJpYXQiOjE2OTA2OTYzNDUsImV4cCI6MTY5MTk5MjM0NX0.cP-wxU9AXFXRPbcc2V736m4s5tTFIlABKGD98AiOMP4', 'user', '2023-08-14 05:52:25', '2023-07-30 05:52:25', '2023-07-30 05:52:25'),
(400, 98, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk4LCJuYW1lIjoiQmh1dmFuZXNod2FyaSIsImVtYWlsIjoiYmh1dmFuZXNod2FyaXJhdmkwNkBnbWFpbC5jb20iLCJpYXQiOjE2OTA2OTYzNDUsImV4cCI6MTY5MzI4ODM0NX0.a2rsvEi3r7CcLOwkKQy3FW-LIG-tO2n9aq3CfP0RlOw', 'user', '2023-08-29 05:52:25', '2023-07-30 05:52:25', '2023-07-30 05:52:25'),
(401, 99, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk5LCJuYW1lIjoiUmVzaG1hIiwiZW1haWwiOiJyZXNobWFrYW5uYW4yOEBnbWFpbC5jb20iLCJpYXQiOjE2OTA3MDYzMDQsImV4cCI6MTY5MjAwMjMwNH0.Z3Z9WGSupSJXgaQdLb13hYOTO4_4Itf95AYuXuF3PQE', 'user', '2023-08-14 08:38:24', '2023-07-30 08:38:24', '2023-07-30 08:38:24'),
(402, 99, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk5LCJuYW1lIjoiUmVzaG1hIiwiZW1haWwiOiJyZXNobWFrYW5uYW4yOEBnbWFpbC5jb20iLCJpYXQiOjE2OTA3MDYzMDQsImV4cCI6MTY5MzI5ODMwNH0.TutxrUjgMxrZMOsWc_bDSkli5EfdFEXUwukkNwl0FmA', 'user', '2023-08-29 08:38:24', '2023-07-30 08:38:24', '2023-07-30 08:38:24'),
(403, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA3MDY0NTIsImV4cCI6MTY5MjAwMjQ1Mn0.TqFtcrBx5yUEaX90Xug1rDxklNxbp-6f2zFtmhDANQ8', 'user', '2023-08-14 08:40:52', '2023-07-30 08:40:52', '2023-07-30 08:40:52'),
(404, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA3MDY0NTIsImV4cCI6MTY5MzI5ODQ1Mn0.2e8eQjqerOhmg3meBlj71AX3iPhKFNIr612ED3n78iU', 'user', '2023-08-29 08:40:52', '2023-07-30 08:40:52', '2023-07-30 08:40:52'),
(405, 68, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY4LCJuYW1lIjoiUHJpeWFua2hhIiwiZW1haWwiOiJwcml5YW5raGExNTA0c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDcwNzQzMiwiZXhwIjoxNjkyMDAzNDMyfQ.2M4dCetlAbIF71T10LO0UVnMFhzQm4c13a958ndGQv4', 'user', '2023-08-14 08:57:12', '2023-07-30 08:57:12', '2023-07-30 08:57:12'),
(406, 68, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjY4LCJuYW1lIjoiUHJpeWFua2hhIiwiZW1haWwiOiJwcml5YW5raGExNTA0c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MDcwNzQzMiwiZXhwIjoxNjkzMjk5NDMyfQ.oIqqLNWN4joFKEI_0zksU_SeNCevxfqPjUGRX7i_gLU', 'user', '2023-08-29 08:57:12', '2023-07-30 08:57:12', '2023-07-30 08:57:12'),
(407, 100, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwMCwibmFtZSI6IlJhamEiLCJlbWFpbCI6InJhamExNi5zbXJAZ21haWwuY29tIiwiaWF0IjoxNjkwNzA4NjIzLCJleHAiOjE2OTIwMDQ2MjN9.fmH75t9Hh3VeH_zrmEw7VHHsubuhNH3bJdBl2I7I9mg', 'user', '2023-08-14 09:17:03', '2023-07-30 09:17:03', '2023-07-30 09:17:03'),
(408, 100, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwMCwibmFtZSI6IlJhamEiLCJlbWFpbCI6InJhamExNi5zbXJAZ21haWwuY29tIiwiaWF0IjoxNjkwNzA4NjIzLCJleHAiOjE2OTMzMDA2MjN9.EH23JIWfYmhIREYOXqJRiT6DImsLbujFLc-4OEvrviM', 'user', '2023-08-29 09:17:03', '2023-07-30 09:17:03', '2023-07-30 09:17:03'),
(409, 57, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNzEwMTcxLCJleHAiOjE2OTIwMDYxNzF9.uaGO3n8EzRVOdqTXsxr3K6QtV2qvoUhwl0c-pkYVBo8', 'user', '2023-08-14 09:42:51', '2023-07-30 09:42:51', '2023-07-30 09:42:51'),
(410, 57, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNzEwMTcxLCJleHAiOjE2OTMzMDIxNzF9.04A6bNAHKxQaf1xAJVkqA9eNfdIDbufgV_4OECmW93w', 'user', '2023-08-29 09:42:51', '2023-07-30 09:42:51', '2023-07-30 09:42:51'),
(411, 57, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNzEwMTcxLCJleHAiOjE2OTIwMDYxNzF9.uaGO3n8EzRVOdqTXsxr3K6QtV2qvoUhwl0c-pkYVBo8', 'user', '2023-08-14 09:42:51', '2023-07-30 09:42:51', '2023-07-30 09:42:51'),
(412, 57, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNzEwMTcxLCJleHAiOjE2OTMzMDIxNzF9.04A6bNAHKxQaf1xAJVkqA9eNfdIDbufgV_4OECmW93w', 'user', '2023-08-29 09:42:51', '2023-07-30 09:42:51', '2023-07-30 09:42:51'),
(413, 57, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNzEwMTcxLCJleHAiOjE2OTIwMDYxNzF9.uaGO3n8EzRVOdqTXsxr3K6QtV2qvoUhwl0c-pkYVBo8', 'user', '2023-08-14 09:42:51', '2023-07-30 09:42:51', '2023-07-30 09:42:51'),
(414, 57, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNzEwMTcxLCJleHAiOjE2OTMzMDIxNzF9.04A6bNAHKxQaf1xAJVkqA9eNfdIDbufgV_4OECmW93w', 'user', '2023-08-29 09:42:51', '2023-07-30 09:42:51', '2023-07-30 09:42:51'),
(415, 57, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNzEwMTcyLCJleHAiOjE2OTIwMDYxNzJ9.lpatGwqYpsSYwCK6F5wHQDtqzSQ9q0QVfbj4X45Wtzc', 'user', '2023-08-14 09:42:52', '2023-07-30 09:42:52', '2023-07-30 09:42:52'),
(416, 57, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNzEwMTcyLCJleHAiOjE2OTMzMDIxNzJ9.a7IwighEVk8gzMttFBDP-NYXJE7ULeA7fTfWY-Uh5yc', 'user', '2023-08-29 09:42:52', '2023-07-30 09:42:52', '2023-07-30 09:42:52'),
(417, 57, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNzEwMTcyLCJleHAiOjE2OTIwMDYxNzJ9.lpatGwqYpsSYwCK6F5wHQDtqzSQ9q0QVfbj4X45Wtzc', 'user', '2023-08-14 09:42:52', '2023-07-30 09:42:52', '2023-07-30 09:42:52'),
(418, 57, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwNzEwMTcyLCJleHAiOjE2OTMzMDIxNzJ9.a7IwighEVk8gzMttFBDP-NYXJE7ULeA7fTfWY-Uh5yc', 'user', '2023-08-29 09:42:52', '2023-07-30 09:42:52', '2023-07-30 09:42:52'),
(419, 101, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwMSwibmFtZSI6IkRpdnlhICIsImVtYWlsIjoiZGl2eWFzaHJlZTc1c2FAZ21haWwuY29tIiwiaWF0IjoxNjkwNzI3ODY1LCJleHAiOjE2OTIwMjM4NjV9.pE-9xbX7Ierd4hoSZOnT7EB3NloVi5Q6-_JUAvTE-bw', 'user', '2023-08-14 14:37:45', '2023-07-30 14:37:45', '2023-07-30 14:37:45'),
(420, 101, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwMSwibmFtZSI6IkRpdnlhICIsImVtYWlsIjoiZGl2eWFzaHJlZTc1c2FAZ21haWwuY29tIiwiaWF0IjoxNjkwNzI3ODY1LCJleHAiOjE2OTMzMTk4NjV9.hFhuQxC4ldFMc0MTlxoacgFpvJZJtqWUIkQWjuCKw1k', 'user', '2023-08-29 14:37:45', '2023-07-30 14:37:45', '2023-07-30 14:37:45'),
(421, 13, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwNzQzMzQ0LCJleHAiOjE2OTIwMzkzNDR9.0NIlfNn9Jigb_werQ4YKJP39rd3V-lCHbHxFhRxP8uE', 'user', '2023-08-14 18:55:44', '2023-07-30 18:55:45', '2023-07-30 18:55:45'),
(422, 13, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwNzQzMzQ0LCJleHAiOjE2OTMzMzUzNDR9.8Dv4UjLnnnVq1t4pal-GCoE029twqtMBq1GQiyh-P9o', 'user', '2023-08-29 18:55:44', '2023-07-30 18:55:45', '2023-07-30 18:55:45'),
(423, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDc0NzAwOSwiZXhwIjoxNjkyMDQzMDA5fQ.Tq73ay-c48umsKf-v5pJJ4yhHgNH7HBRXFwm1Y0hKxo', 'user', '2023-08-14 19:56:49', '2023-07-30 19:56:49', '2023-07-30 19:56:49'),
(424, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MDc0NzAwOSwiZXhwIjoxNjkzMzM5MDA5fQ.hw8IdwvKQPNNqCe2i2fpFkEY2rPgtIUAhBgq-QyGMOo', 'user', '2023-08-29 19:56:49', '2023-07-30 19:56:49', '2023-07-30 19:56:49'),
(425, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNzQ3MDU3LCJleHAiOjE2OTIwNDMwNTd9.aoIrqW_fn3yFH0ew6OmIiWVDYf8aO-kWkPJgk3FCbWY', 'user', '2023-08-14 19:57:37', '2023-07-30 19:57:37', '2023-07-30 19:57:37'),
(426, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNzQ3MDU3LCJleHAiOjE2OTMzMzkwNTd9.92l9SjiY4UP2viwIo9hEK4dhYGaBzgructihTSpruRM', 'user', '2023-08-29 19:57:37', '2023-07-30 19:57:37', '2023-07-30 19:57:37'),
(427, 103, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwMywibmFtZSI6Ikdva3VsIiwiZW1haWwiOiJnb2t1bGFuYW5kaGFuMTlAZ21haWwuY29tIiwiaWF0IjoxNjkwNzc0MzgwLCJleHAiOjE2OTIwNzAzODB9.IjYRE0dwZcjhc9a6-txajQAxTR4EwQinTcO9m782wHs', 'user', '2023-08-15 03:33:00', '2023-07-31 03:33:00', '2023-07-31 03:33:00'),
(428, 103, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwMywibmFtZSI6Ikdva3VsIiwiZW1haWwiOiJnb2t1bGFuYW5kaGFuMTlAZ21haWwuY29tIiwiaWF0IjoxNjkwNzc0MzgwLCJleHAiOjE2OTMzNjYzODB9.04MpaHvkYuCUArPynIZHymQaVfrLI-eS7LZUpfrMnMA', 'user', '2023-08-30 03:33:00', '2023-07-31 03:33:00', '2023-07-31 03:33:00'),
(429, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNzgxNzY3LCJleHAiOjE2OTIwNzc3Njd9.pGy0KY4Yikfgu-LwnHk623rueEzjZXnMOp9TnNGSHlc', 'user', '2023-08-15 11:06:07', '2023-07-31 05:36:09', '2023-07-31 05:36:09'),
(430, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNzgxNzY3LCJleHAiOjE2OTMzNzM3Njd9.rVHL8guV5oB4Ix4Zm2MXZJKOkNgumbEfDEFXAf78DIA', 'user', '2023-08-30 11:06:07', '2023-07-31 05:36:09', '2023-07-31 05:36:09'),
(431, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNzgyMDIyLCJleHAiOjE2OTIwNzgwMjJ9.y7HiJiCiQ1hh2ztDN_gbFrMEemxvHSaN24A4_3XUGAU', 'user', '2023-08-15 11:10:22', '2023-07-31 05:40:23', '2023-07-31 05:40:23'),
(432, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNzgyMDIyLCJleHAiOjE2OTMzNzQwMjJ9.vEdD60tk43SldyNQ53MpD7coWo5LIFYpUBOe8Xj7roY', 'user', '2023-08-30 11:10:22', '2023-07-31 05:40:23', '2023-07-31 05:40:23'),
(433, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNzgyMjM0LCJleHAiOjE2OTIwNzgyMzR9.EdBcTrTduKXYF_JrvbvKdB5bkZn8TNs8egxFN_S6E8k', 'user', '2023-08-15 05:43:54', '2023-07-31 05:43:54', '2023-07-31 05:43:54'),
(434, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNzgyMjM0LCJleHAiOjE2OTMzNzQyMzR9.-9ijcZ4rGK-pI8MeTaTsNdr8qIG971m9IDF7Y-mmOkI', 'user', '2023-08-30 05:43:54', '2023-07-31 05:43:54', '2023-07-31 05:43:54'),
(435, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNzgyNjA1LCJleHAiOjE2OTIwNzg2MDV9.TT-XKEV5BTA6PjybLmuffj7aJAa_B34rXu3hITn4hBM', 'user', '2023-08-15 05:50:05', '2023-07-31 05:50:05', '2023-07-31 05:50:05'),
(436, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwNzgyNjA1LCJleHAiOjE2OTMzNzQ2MDV9.HVpvFyWOitMhQDWMyNC83vZxqbG0MgDa6HyGkTY-5aQ', 'user', '2023-08-30 05:50:05', '2023-07-31 05:50:05', '2023-07-31 05:50:05'),
(437, 104, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwNCwibmFtZSI6IkFydW4iLCJlbWFpbCI6ImFydW5wcmFzYXRoMTcwNzc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDc4MzEwNiwiZXhwIjoxNjkyMDc5MTA2fQ.DI8wdsBrK_IznTmcCa6T0K6EOLplYMBdNwQQk7Evdio', 'user', '2023-08-15 05:58:26', '2023-07-31 05:58:26', '2023-07-31 05:58:26'),
(438, 104, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwNCwibmFtZSI6IkFydW4iLCJlbWFpbCI6ImFydW5wcmFzYXRoMTcwNzc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MDc4MzEwNiwiZXhwIjoxNjkzMzc1MTA2fQ.Je67DnDMz--adocV3bZjoKkKMd2TVS7u2ZVLImhsm2M', 'user', '2023-08-30 05:58:26', '2023-07-31 05:58:26', '2023-07-31 05:58:26'),
(439, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MDc4ODgyNCwiZXhwIjoxNjkyMDg0ODI0fQ.-HOZvUrZhAPj_oBoSmBxV8oNsA9g60540O4UhdUfrdE', 'admin', '2023-08-15 13:03:44', '2023-07-31 07:33:45', '2023-07-31 07:33:45'),
(440, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MDc4ODgyNCwiZXhwIjoxNjkxNjUyODI0fQ.EFgV1LL_PH0Hvb_zCS2qFZmXTI76-WUIWH_kmoPuCaU', 'admin', '2023-08-10 13:03:44', '2023-07-31 07:33:45', '2023-07-31 07:33:45'),
(441, 105, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwNSwibmFtZSI6IlByYXZlZW4gS04gIiwiZW1haWwiOiJwcmF2ZWVuMjAyMHJhakBnbWFpbC5jb20iLCJpYXQiOjE2OTA3OTI0OTYsImV4cCI6MTY5MjA4ODQ5Nn0.cTOagJS7ivq8MiCjf_-VL6byGku5kElUpee826Qrodw', 'user', '2023-08-15 08:34:56', '2023-07-31 08:34:56', '2023-07-31 08:34:56'),
(442, 105, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwNSwibmFtZSI6IlByYXZlZW4gS04gIiwiZW1haWwiOiJwcmF2ZWVuMjAyMHJhakBnbWFpbC5jb20iLCJpYXQiOjE2OTA3OTI0OTYsImV4cCI6MTY5MzM4NDQ5Nn0.6bngAnalv2qgiVK-g9PsIREQhOjZDISU0d4MDMFSXfc', 'user', '2023-08-30 08:34:56', '2023-07-31 08:34:56', '2023-07-31 08:34:56'),
(443, 24, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI0LCJuYW1lIjoiTW9oYW1lZCBUYXJpcSIsImVtYWlsIjoibW9oYW1lZC50YXJpcTQ2QGdtYWlsLmNvbSIsImlhdCI6MTY5MDgwNDA4NywiZXhwIjoxNjkyMTAwMDg3fQ.Ay2cac-U9U0R1IH9X8rLMkD22nmgFb-I2gVJftwFLBg', 'user', '2023-08-15 11:48:07', '2023-07-31 11:48:07', '2023-07-31 11:48:07'),
(444, 24, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI0LCJuYW1lIjoiTW9oYW1lZCBUYXJpcSIsImVtYWlsIjoibW9oYW1lZC50YXJpcTQ2QGdtYWlsLmNvbSIsImlhdCI6MTY5MDgwNDA4NywiZXhwIjoxNjkzMzk2MDg3fQ.X_-Zh7H-zKkExOl_mrSoOkfvSdUbmqm9RW2XkL63xtU', 'user', '2023-08-30 11:48:07', '2023-07-31 11:48:07', '2023-07-31 11:48:07'),
(445, 106, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwNiwibmFtZSI6IlZpamVhc2giLCJlbWFpbCI6InZpamVhc2gxNUBnbWFpbC5jb20iLCJpYXQiOjE2OTA4MDQ2MTQsImV4cCI6MTY5MjEwMDYxNH0.nqkxdM4K-rwoWmuSgPj9oL1ondoLKQEBDjt41ExUoSY', 'user', '2023-08-15 11:56:54', '2023-07-31 11:56:54', '2023-07-31 11:56:54'),
(446, 106, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwNiwibmFtZSI6IlZpamVhc2giLCJlbWFpbCI6InZpamVhc2gxNUBnbWFpbC5jb20iLCJpYXQiOjE2OTA4MDQ2MTQsImV4cCI6MTY5MzM5NjYxNH0.Wq3BLXqfvV3p8a4RhnV9UWcQFAsIgCIxUVAXj7j6EB4', 'user', '2023-08-30 11:56:54', '2023-07-31 11:56:54', '2023-07-31 11:56:54'),
(447, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA4MDgyODgsImV4cCI6MTY5MjEwNDI4OH0.zECsj93_ZiIcNSaS5umMaNsDGk6ta1v94btOKAwuH4c', 'user', '2023-08-15 12:58:08', '2023-07-31 12:58:08', '2023-07-31 12:58:08'),
(448, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA4MDgyODgsImV4cCI6MTY5MzQwMDI4OH0.mriwq9cHGB2ulxEHpGiCXMNsXhMYpG48XAocuYm-Dvk', 'user', '2023-08-30 12:58:08', '2023-07-31 12:58:08', '2023-07-31 12:58:08'),
(449, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA4MDgyODgsImV4cCI6MTY5MjEwNDI4OH0.zECsj93_ZiIcNSaS5umMaNsDGk6ta1v94btOKAwuH4c', 'user', '2023-08-15 12:58:08', '2023-07-31 12:58:08', '2023-07-31 12:58:08'),
(450, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA4MDgyODgsImV4cCI6MTY5MzQwMDI4OH0.mriwq9cHGB2ulxEHpGiCXMNsXhMYpG48XAocuYm-Dvk', 'user', '2023-08-30 12:58:08', '2023-07-31 12:58:08', '2023-07-31 12:58:08'),
(451, 13, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwODE0NDQyLCJleHAiOjE2OTIxMTA0NDJ9.yfzZaiRAvP9VVCDpG7YBL2KIKGoCpv9ar9oYYVOFOtY', 'user', '2023-08-15 14:40:42', '2023-07-31 14:40:42', '2023-07-31 14:40:42'),
(452, 13, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwODE0NDQyLCJleHAiOjE2OTM0MDY0NDJ9.ZmFPaGdx6VtuJey0Ht2ITJE1FFsffv3KOj-zGF9AZZ8', 'user', '2023-08-30 14:40:42', '2023-07-31 14:40:42', '2023-07-31 14:40:42'),
(453, 57, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwODMwMDc0LCJleHAiOjE2OTIxMjYwNzR9.LMHac_ELp6JYOSM4RSvn6E3ItOp5-vstzyc_Ia5AaB0', 'user', '2023-08-15 19:01:14', '2023-07-31 19:01:14', '2023-07-31 19:01:14'),
(454, 57, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwODMwMDc0LCJleHAiOjE2OTM0MjIwNzR9.qIRdSF6cFu35V50YwzJ0u7ZMWKXiRfoyLTX0xfB8s1A', 'user', '2023-08-30 19:01:14', '2023-07-31 19:01:14', '2023-07-31 19:01:14'),
(455, 57, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwODMwMDc0LCJleHAiOjE2OTIxMjYwNzR9.LMHac_ELp6JYOSM4RSvn6E3ItOp5-vstzyc_Ia5AaB0', 'user', '2023-08-15 19:01:14', '2023-07-31 19:01:14', '2023-07-31 19:01:14'),
(456, 57, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjU3LCJuYW1lIjoiQWthc2ggVCBQIiwiZW1haWwiOiJha2FzaHRob3poYW5AZ21haWwuY29tIiwiaWF0IjoxNjkwODMwMDc0LCJleHAiOjE2OTM0MjIwNzR9.qIRdSF6cFu35V50YwzJ0u7ZMWKXiRfoyLTX0xfB8s1A', 'user', '2023-08-30 19:01:14', '2023-07-31 19:01:14', '2023-07-31 19:01:14'),
(457, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwODcwNjk5LCJleHAiOjE2OTIxNjY2OTl9.E4b7MT69dRC10z5Q5bfn7ESQw04J9wIXt8Qcr8T2Xpg', 'user', '2023-08-16 06:18:19', '2023-08-01 06:18:19', '2023-08-01 06:18:19'),
(458, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwODcwNjk5LCJleHAiOjE2OTM0NjI2OTl9.ncQr3a8R1YJTauMABFIlSRFd9p8j3EkMFlj--koEkdg', 'user', '2023-08-31 06:18:19', '2023-08-01 06:18:19', '2023-08-01 06:18:19'),
(459, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwODcwNjk5LCJleHAiOjE2OTIxNjY2OTl9.E4b7MT69dRC10z5Q5bfn7ESQw04J9wIXt8Qcr8T2Xpg', 'user', '2023-08-16 06:18:19', '2023-08-01 06:18:19', '2023-08-01 06:18:19'),
(460, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwODcwNjk5LCJleHAiOjE2OTM0NjI2OTl9.ncQr3a8R1YJTauMABFIlSRFd9p8j3EkMFlj--koEkdg', 'user', '2023-08-31 06:18:19', '2023-08-01 06:18:19', '2023-08-01 06:18:19'),
(461, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwODcwOTE1LCJleHAiOjE2OTIxNjY5MTV9.t0MDhgC2iHIUNp_eMKiDp6byYV8m18f5BZN3NVeGG4o', 'user', '2023-08-16 06:21:55', '2023-08-01 06:21:55', '2023-08-01 06:21:55'),
(462, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwODcwOTE1LCJleHAiOjE2OTM0NjI5MTV9.fxKxumZL_iGM6fbxAKXX0wocjmcmhj5yKkcCdRNDXuU', 'user', '2023-08-31 06:21:55', '2023-08-01 06:21:55', '2023-08-01 06:21:55'),
(463, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA4NzA5MzYsImV4cCI6MTY5MjE2NjkzNn0.z636SWwMn9V7eZJ3qyB3trTIL-Z26ueaeVulJZERZFo', 'user', '2023-08-16 06:22:16', '2023-08-01 06:22:16', '2023-08-01 06:22:16'),
(464, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTA4NzA5MzYsImV4cCI6MTY5MzQ2MjkzNn0.rT-bsDH7-7oXgeC7CH9OMw1U8UH4JLwR2tCWh-l2Fi4', 'user', '2023-08-31 06:22:16', '2023-08-01 06:22:16', '2023-08-01 06:22:16'),
(465, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwODcxMTMyLCJleHAiOjE2OTIxNjcxMzJ9.rZtFbGFI1tKuKz7DCU9pgTGrpTgXU8c5ncHO6tJQYo0', 'user', '2023-08-16 06:25:32', '2023-08-01 06:25:32', '2023-08-01 06:25:32'),
(466, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkwODcxMTMyLCJleHAiOjE2OTM0NjMxMzJ9.S4tbtV8mqwKTYN4QlsvHK-uqUp69U0SAH_5GLzM7Luo', 'user', '2023-08-31 06:25:32', '2023-08-01 06:25:32', '2023-08-01 06:25:32'),
(467, 38, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM4LCJuYW1lIjoiRGVlcGFrIEt1bWFyIE0iLCJlbWFpbCI6Im1kZWVwYWtrdW1hcjAzMDFAZ21haWwuY29tIiwiaWF0IjoxNjkwODc1ODAwLCJleHAiOjE2OTIxNzE4MDB9.nv90w4bGhOa1l6_9qHHmJFrHpyM4Oyaw_gmBRWmrJ8w', 'user', '2023-08-16 07:43:20', '2023-08-01 07:43:20', '2023-08-01 07:43:20'),
(468, 38, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM4LCJuYW1lIjoiRGVlcGFrIEt1bWFyIE0iLCJlbWFpbCI6Im1kZWVwYWtrdW1hcjAzMDFAZ21haWwuY29tIiwiaWF0IjoxNjkwODc1ODAwLCJleHAiOjE2OTM0Njc4MDB9.F5r4X_UUqQ5ouijMkiBmRK6nDKwI2n_pf406lx0-zb8', 'user', '2023-08-31 07:43:20', '2023-08-01 07:43:20', '2023-08-01 07:43:20'),
(469, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwODc5NzQwLCJleHAiOjE2OTIxNzU3NDB9.N-_HxMcyyfUGWdmDR5gbP_ao3-4mBvVTdVrha3hnEC0', 'user', '2023-08-16 08:49:00', '2023-08-01 08:49:00', '2023-08-01 08:49:00'),
(470, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwODc5NzQwLCJleHAiOjE2OTM0NzE3NDB9.KBpzeF_xrSHODSo3NNgWtbhG17Wo-j0RxVf-Z5SzpUg', 'user', '2023-08-31 08:49:00', '2023-08-01 08:49:00', '2023-08-01 08:49:00'),
(471, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwODkxMzMxLCJleHAiOjE2OTIxODczMzF9.sSxahdG9pz9pt5SoowT9c3sA79QEtYfh4FjUwUJmq2s', 'user', '2023-08-16 12:02:11', '2023-08-01 12:02:11', '2023-08-01 12:02:11');
INSERT INTO `Token` (`tokenId`, `userId`, `tokenType`, `token`, `loggedInBy`, `expiresAt`, `createdAt`, `updatedAt`) VALUES
(472, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkwODkxMzMxLCJleHAiOjE2OTM0ODMzMzF9.ir16oIN0_J-9GBbGAVfjnA8owNvvR-A2PhMQX4mfvVM', 'user', '2023-08-31 12:02:11', '2023-08-01 12:02:11', '2023-08-01 12:02:11'),
(473, 13, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwODk0ODQ1LCJleHAiOjE2OTIxOTA4NDV9.n303Vt_5Ob3n_GL4J9vrLLta3x51HlGzjWAhzzfC6lg', 'user', '2023-08-16 13:00:45', '2023-08-01 13:00:45', '2023-08-01 13:00:45'),
(474, 13, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkwODk0ODQ1LCJleHAiOjE2OTM0ODY4NDV9.9tfcdSzfRM7-O6Mux_hj8g519F8seWR34pLi_Mp77FU', 'user', '2023-08-31 13:00:45', '2023-08-01 13:00:45', '2023-08-01 13:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `userId` bigint(20) NOT NULL,
  `userName` text NOT NULL,
  `userEmail` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `userPass` text NOT NULL,
  `referralCode` varchar(50) NOT NULL,
  `isVerified` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`userId`, `userName`, `userEmail`, `mobile`, `dob`, `userPass`, `referralCode`, `isVerified`, `createdAt`, `updatedAt`) VALUES
(1, 'Weemax', 'weemaxecom@gmail.com', '7604908579', '1997-03-10', '$2b$12$aGo2yOJFGZgX/BYbRI5Yc.bwKL24garKrZ4qY8sAtoa6SbxCWZ9kC', 'WEE85791', 1, '2023-07-27 12:56:39', '2023-07-27 12:56:53'),
(2, 'SAKTHI GANESH V', 'sakthiganesh533@gmail.com', '8870354097', '1997-03-10', '$2b$12$tuWNk6ccV5s1oJTxvJdMx.B5.2iHzuPM64YjyJLn3lWZv8vrodaa.', 'SAK40972', 1, '2023-07-27 12:59:52', '2023-07-27 13:00:08'),
(3, 'Preetham senthilkumar ', 'preethamsenthilkumar2012@gmail.com', '6381469846', '1999-05-06', '$2b$12$eYR3c8n.zKjIfp.ubWtzJ.aJrV1c0kQN3g1HTBgVuwNeN4vVViG0.', 'PRE98463', 1, '2023-07-27 13:19:47', '2023-07-27 13:20:15'),
(4, 'Vignesh ', 'vignesharivazhagan22@gmail.com', '9789413685', '2023-07-27', '$2b$12$aOv7iGBeYQwC1M8BaWV5Ou03ivW6P9VUPV9pCDpzEmmNtBQlrCG.2', 'VIG36854', 1, '2023-07-27 13:39:07', '2023-07-27 13:39:34'),
(5, 'nagavalli s', 'nagukumar852@gmail.com', '9842224654', '1973-07-31', '$2b$12$PWY6jcUl2dczB63mq/Knp.dAnQP4FBHxRVcWBRCqu7ZZsbJXjRo4C', 'NAG46545', 1, '2023-07-27 13:49:10', '2023-07-27 13:49:34'),
(6, 'Nimrukthi ', 'nimrukthisenthilkumar001@gmail.com', '9361874148', '2001-01-19', '$2b$12$lA7rSGf3/KziDtLzsgI4pOO/B6QX18wOmI5ZVCey8daODy961WveK', 'NIM41486', 1, '2023-07-27 13:50:44', '2023-07-27 13:51:17'),
(7, 'Sanjiv V', 'sanjivdpm2003@gmail.com', '9843959919', '2003-01-17', '$2b$12$Nqg6vKIVh30UFt37X3FrxOMYwxJwa0X7S1DcuH2AXBKt5JN1mF1VK', 'SAN99197', 1, '2023-07-27 13:52:53', '2023-07-27 13:53:17'),
(8, 'Thilak Rs', 'thilaksenthilkumar16@gmail.com', '7010908103', '1998-12-16', '$2b$12$c4yWvM8pP4RdXVZG02V7WOd6A6ay19f8DPbMYaXmHrdxvMYLT0y4i', 'THI81038', 1, '2023-07-27 13:55:45', '2023-07-27 13:57:27'),
(9, 'Poomalai Ahilan', 'poomalahilan@gmail.com', '6383677721', '1999-10-08', '$2b$12$NWfDeS5cKTO.T4tCC/wUuegElJsBUSN34zsYxrLzJou/YsZYp7pw2', 'POO77219', 1, '2023-07-27 14:07:55', '2023-07-27 14:08:22'),
(10, 'Yugendiran G', 'yyugi64@gmail.com', '8838669898', '2003-10-28', '$2b$12$IgjulZc/ipYDHpPZs4pX..0F01RoyNDUKkM/Qjj1hyebY9fG6zSoq', 'YUG989810', 1, '2023-07-27 14:14:26', '2023-07-29 10:30:26'),
(11, 'Dheshapriyan Thanasekaran ', 'dhesha77@gmail.com', '9994447204', '1999-03-10', '$2b$12$i64tbV7AMGpPkeSDwLu2ReZKb90MTJCyUXgsknzyLAtpdMA77m2J6', 'DHE720411', 1, '2023-07-27 14:16:21', '2023-07-27 14:17:06'),
(12, 'Arun', 'arunkumardhoni483@gmail.com', '7010993123', '2023-07-27', '$2b$12$oH5vpL9/jaB35FIQ8jKU2.Ly88r9PpuDu0t2sS8LvlUv9vp4.ZSsO', 'ARU312312', 1, '2023-07-27 14:23:41', '2023-07-27 14:24:24'),
(13, 'Gunal', 'gunalrajarathinam11@gmail.com', '9345710012', '2002-08-23', '$2b$12$ntT0z0NSidyVNv58KcmsteKd3E0CafRajCTf6HhmRuL1W6s5japTu', 'GUN001213', 1, '2023-07-27 14:24:07', '2023-07-27 14:24:22'),
(14, 'Naveen Prabu S', 'naveenprabu21@gmail.com', '9159651189', '1999-10-13', '$2b$12$IBaZNCtAP.wq/uTOnFLxXO4SKo3gewU2GCiMMIAeimpy6MwZAdykK', 'NAV118914', 1, '2023-07-27 14:38:43', '2023-07-27 14:39:09'),
(15, 'Kadhar maideen', 'nowfilkaadharmaideennasarali@gmail.com', '8940244770', '2002-11-11', '$2b$12$e1tLB6LWrLAJgmPaxBmGRe3OnaTZ3lAeTjuWzxbbeQEhbqMSi8HxO', 'KAD477015', 1, '2023-07-27 14:43:07', '2023-07-27 14:43:33'),
(16, 'Hariprasanna', 'hariprasanna082@gmail.com', '9123514756', '2002-04-06', '$2b$12$ukMabHsL8haNyV9WV8VyQejYwG06nUcLocei24LETSejmDUxjyr2.', 'HAR475616', 1, '2023-07-27 14:43:26', '2023-07-27 14:43:52'),
(17, 'Darshini Balasubramaniam ', 'darshinibalu0@gmail.com', '9443433822', '2002-08-10', '$2b$12$t7lAxViEVpE6zvoyIOQqrOVmDlD2VLQxMOTrhb3HiGMzA/qJvbu9u', 'DAR382217', 1, '2023-07-27 14:47:42', '2023-07-27 14:48:15'),
(18, 'Manoj Kumar', 'manojkumars27062000@gmail.com', '9488386593', '2022-06-25', '$2b$12$y.dmG5m8MH8IiSY0W2uodOG2c0qP4aNDakdj4BOG.WSV9jFR5GUaK', 'MAN659318', 1, '2023-07-27 14:50:15', '2023-07-27 14:51:28'),
(19, 'Hari', 'hariharan112k@gmail.com', '9080514868', '1999-01-11', '$2b$12$Vgzh1YSAxo9o.Q.akqZEAO4SVSqpZ2xPEfISkGTH.0simmwaekqD.', 'HAR486819', 1, '2023-07-27 15:30:39', '2023-07-27 15:31:24'),
(20, 'Rajkumar N', 'er.rajkumartkn@gmail.com', '9345514914', '1999-05-19', '$2b$12$MFyb6B1/XMTUi0S.t0b84OP6x6dK1Lrxcc4D49ThcrogKlyqHX./W', 'RAJ491420', 1, '2023-07-27 16:06:02', '2023-07-27 16:06:26'),
(21, 'v. nalini', 'vadivelunalinidpm@gmail.com', '9843406636', '1980-11-24', '$2b$12$E4TYRJNzVv7zRrrkzrGHEeRmGyqx.HgLEgo1U4R7pQaWJNGmIatSC', 'V. 663621', 1, '2023-07-27 16:20:31', '2023-07-27 16:21:10'),
(22, 'Adarsana', 'vadarsana@gmail.com', '8610701614', '2007-01-24', '$2b$12$AIt0ywZ207gvEJjrC7PvUOatfoVQivs7Mu7kmF6ZacdcJPCIgMl0G', 'ADA161422', 0, '2023-07-27 16:25:24', '2023-07-27 16:25:24'),
(23, 'Elakkiya V', 'elakkiyavaradharajan20@gmail.com', '9087639742', '2000-09-19', '$2b$12$xEBDrYeEDkjchhkvqeuICOlBAebdeHBRqyJLAV011uOwoqq7CZxYG', 'ELA974223', 1, '2023-07-27 16:25:54', '2023-07-27 16:27:34'),
(24, 'Mohamed Tariq', 'mohamed.tariq46@gmail.com', '7092339606', '1999-05-24', '$2b$12$JedhGY1kMbDmihHWsceDR.Rb.oQpzmyU1wSlZsQCcmlYKxMSlBSKy', 'MOH960624', 1, '2023-07-27 16:40:38', '2023-07-27 16:40:59'),
(25, 'Surya', 'suryarajavlt@gmail.com', '9842754367', '1999-10-04', '$2b$12$5qAF9DfqWsI8YPiBOuCGFuin5OMDibxDWFNF6zMKWi6irxPdnukMe', 'SUR436725', 1, '2023-07-27 17:17:04', '2023-07-27 17:17:59'),
(26, 'Raja', 'rajasusai914@gmail.com', '8072210266', '1999-05-13', '$2b$12$AOJlP0PkvH4b9Vz93HvVHeaEFWjg4.yp2lbzJvYxIqMDxYMtIUJy6', 'RAJ026626', 1, '2023-07-27 17:49:59', '2023-07-27 17:50:34'),
(27, 'Karthikeyan V', 'karthikeyanvenkatachalapathi5@gmail.com', '9344439060', '2001-08-31', '$2b$12$U5yZzCEXxI..hfFZwRrTB.HQBrFts.2/HtwKRBw1p.VKIgHIBDwfS', 'KAR906027', 1, '2023-07-27 18:21:31', '2023-07-27 18:22:09'),
(28, 'JEROME P', 'bharathjero2705@gmail.com', '9150457023', '2002-05-27', '$2b$12$xriiJAiPbpbw0nAjZDdFru84wibgCRDOKF/.f0pbDdoeQZTUQA4Eq', 'JER702328', 1, '2023-07-27 22:18:37', '2023-07-27 22:19:54'),
(29, 'Yugendiran G', 'yugendiran2829@gmail.com', '8838669898', '2003-10-28', '$2b$12$lFFzarZZNUJMZsr9637svuQn1LGZRbcKK.Cib25OWypEteDnFrSaq', 'YUG989829', 1, '2023-07-27 22:38:13', '2023-07-27 22:42:35'),
(31, 'Yugi - test', 'golspoh128@gmail.com', '9112233449', '2003-10-28', '$2b$12$x1WWReAOZFCjpoxZBZDZG.8bfQ9VgrWr7JdQ1l6JW4bQ96e4tA9Eu', 'YUG344930', 1, '2023-07-27 22:48:17', '2023-07-27 22:48:35'),
(32, 'Thrisha .B.V.', 'thrishavengaiah823@gmail.com', '8015752265', '2003-10-08', '$2b$12$zyn6626NTqX0fTHG1reKYewbZ.EdK4m38oTubiJgeO8SXdP8aSdqS', 'THR226532', 1, '2023-07-28 00:30:07', '2023-07-28 00:30:36'),
(33, 'Sathiya T', 'sathyathirumurugan2@gmail.com', '8825446497', '2003-10-04', '$2b$12$TrLaNpJWgX4W7hZDtubF/egTAePAqa8.m/FN8an8XpvPlJ.nAYPVe', 'SAT649733', 1, '2023-07-28 00:32:54', '2023-07-28 00:33:42'),
(34, 'Bhuvi ', 'bhuvisai21@gmail.com', '8870420067', '1999-11-21', '$2b$12$Ua9dp4NnonIVdJmGJNuyS.RamE5r3SitGS.zVJK.ElIJ1Lc6q8lX6', 'BHU006734', 1, '2023-07-28 01:52:22', '2023-07-28 01:52:47'),
(35, 'Kavin', 'kavin7254@gmail.com', '6369395701', '2001-03-22', '$2b$12$zPjKgGVgLpB.iIVgroleieDdX2um9jluzQrVoXmHClxTDqj0VXk2e', 'KAV570135', 1, '2023-07-28 02:35:45', '2023-07-28 02:36:14'),
(36, 'Sukeeswer ', 'sukeeswer3069@gmail.com', '9344473330', '1997-04-28', '$2b$12$0UzfkpqO1EUgWqImNLhYIOI8OF84nPONUhDjDVGno26O3qOMzjtrS', 'SUK333036', 1, '2023-07-28 03:16:04', '2023-07-28 03:16:40'),
(37, 'K. R. Poongodi ', 'saipoongodik2012@gmail.com', '8675275951', '1978-04-08', '$2b$12$AtcTP5F23javA2PpBX8oT.WcNtjxnN6xx3SgZKRKmZ06a4InCf3Z2', 'K. 595137', 1, '2023-07-28 03:26:26', '2023-07-28 03:29:05'),
(38, 'Deepak Kumar M', 'mdeepakkumar0301@gmail.com', '8072721709', '1998-01-03', '$2b$12$cNBuiScjviKbc7lofit6ieREt0x0oOLSdc.Y3UAzoRuDeNh40BFEK', 'DEE170938', 1, '2023-07-28 03:56:29', '2023-07-28 03:58:24'),
(39, 'Sakthivel D B', 'sakthiveldb95@gmail.com', '7418595542', '1995-12-01', '$2b$12$vPZJ5u/XThyz0MfT0sPmmeSu6ZSJzsrL1Wm780GVsHqLvE5JQg88a', 'SAK554239', 1, '2023-07-28 04:00:02', '2023-07-28 04:00:32'),
(40, 'Gokul Anand', 'gokultrz16@gmail.com', '9840810383', '1996-12-16', '$2b$12$RytFvdKM4KarXQJy0FJ7iOBjBMWm8jW4jA8k6dJ7KNnYC/PW26GE.', 'GOK038340', 1, '2023-07-28 04:34:33', '2023-07-28 04:35:13'),
(41, 'Vignesh', 'svigneshtn29@gmail.com', '9944079313', '2003-03-04', '$2b$12$Fa0QVm/RQuk0F07Mrco.CeZqlYHolKGFJTNyB1jquzCgaTKApdLjq', 'VIG931341', 1, '2023-07-28 05:32:28', '2023-07-28 05:32:57'),
(42, 'Anand', 'ananddn777@gmail.com', '9944682764', '2023-07-05', '$2b$12$BOJ5K1qI0rsh/OW.zEvy8.t.CiqP/.HOcukApWibqZ8.Tspax8oKC', 'ANA276442', 1, '2023-07-28 06:06:10', '2023-07-28 06:06:48'),
(43, 'Harish', 'harishjude@gmail.com', '9790549739', '1999-01-31', '$2b$12$TDNIOwEBFKLbc4y.jTDgbew8.s2UU3lK5/sSuz0B3Jqg3iCAr23Ee', 'HAR973943', 1, '2023-07-28 06:06:21', '2023-07-28 06:06:53'),
(44, 'SARAVANAKUMAR S', 'saravanakumar022@gmail.com', '8838757171', '1992-03-07', '$2b$12$5HXopoLOl0BBODLkK0s17eJkX9W5y6nMuLE50IyjaYBndcEe2O89e', 'SAR717144', 1, '2023-07-28 06:20:00', '2023-07-28 06:21:55'),
(45, 'Vyzshali ', 'vyshuvenkatesan@gmail.com', '7094879901', '1999-11-25', '$2b$12$KgRFmJOiM5pyn1uLLbSC4uRB6kZSnVKI2MccKld/tTOAorE0/l7kO', 'VYZ990145', 1, '2023-07-28 06:38:44', '2023-07-28 06:39:08'),
(46, 'Naveena sri', 'naveenasrik@gmail.com', '6383671486', '2000-07-12', '$2b$12$uD7TdQ/sc.8mYudStwMUXuFetg95pW7t58o0Dy6qMhh.EjOSuCe/O', 'NAV148646', 1, '2023-07-28 06:40:10', '2023-07-28 06:43:11'),
(47, 'Kaviya Shankar', 'kaviyashankar2828@gmail.com', '9940076493', '2002-06-28', '$2b$12$JXnoZ90wIbW66Y6aHFfyKO23oAcQyLFceddulQQq8Zmmeur9BZpXa', 'KAV649347', 1, '2023-07-28 07:23:40', '2023-07-28 07:24:29'),
(48, 'ManojMithun S', 'manojmistymac@gmail.com', '9629222618', '1996-12-29', '$2b$12$uKACKGqhwmVgb7.aYukqP.0k0SDsOY9xVflG82/NdgM7XlVfGr2kK', 'MAN261848', 1, '2023-07-28 08:39:04', '2023-07-28 08:42:56'),
(49, 'Hemalatha', 'hemamathi1902@gmail.com', '7418884563', '1997-02-19', '$2b$12$VB364M1teFRSUprK3dXRGeqzijeZOcM7LeHCo5.ts/TqdVvpzBDrO', 'HEM456349', 1, '2023-07-28 08:44:53', '2023-07-28 08:45:17'),
(50, 'Shankari', 'shankarishanmugam23@gmail.com', '6380192941', '2003-03-30', '$2b$12$tPziSxupp.d9ovcGjJUyZOIwomX2jWx5/fR6hy.GU.fD8DHV4JLI6', 'SHA294150', 1, '2023-07-28 09:04:51', '2023-07-28 09:06:00'),
(51, 'Geetha', 'geetha4771@gmail.com', '9361239048', '1992-09-06', '$2b$12$fqrx5IcudgAiymvF6SknFOcYup7OexqrUIayGk5HMw3kHPBxbzZpq', 'GEE904851', 0, '2023-07-28 09:27:12', '2023-07-28 09:27:12'),
(52, 'srinath r', 'srinathr20bct042@gmail.com', '9159866144', '2002-06-04', '$2b$12$kwNpEWy7UnwDmLIyGrJ4p.gi0Z4C7dCswIspeeglfzPDeC06UG2SK', 'SRI614452', 1, '2023-07-28 09:31:03', '2023-07-28 09:31:56'),
(53, 'Maha jayanth ', 'mahajayanthmanoharan@gmail.com', '9360313286', '2002-12-07', '$2b$12$e04dnF1A6GwSoy9OJOpRhu3edg2Ln1Zu6bvoCDu9qNl./8yQHPMOu', 'MAH328653', 1, '2023-07-28 09:31:11', '2023-07-28 09:31:45'),
(54, 'Karthick ', 'itsdkarthickhere@gmail.com', '9080564808', '2002-06-13', '$2b$12$xw7ZlxC4WLanCajRWDSxSeZ0pGoihELWhaHBvjT4thMhuAHYlb9Ei', 'KAR480854', 1, '2023-07-28 09:31:16', '2023-07-28 09:32:08'),
(55, 'Sanjay ', 'sanjaychandran2307@gmail.com', '8667011722', '2000-07-23', '$2b$12$Wy0L3EtBy7569OO8f5PQcOop11TpxMT/ufWV8GP1GMsNI7eouwGrK', 'SAN172255', 1, '2023-07-28 09:36:07', '2023-07-28 09:38:04'),
(56, 'Manishaa K', 'manishaakrishnavel@gmail.com', '9566532219', '2003-01-20', '$2b$12$.HU2HTeKyjsz2LOVZzF76uMEg/TlQg/lcyEEJMug98dImFY.Ue71a', 'MAN221956', 1, '2023-07-28 09:47:20', '2023-07-28 09:48:16'),
(57, 'Akash T P', 'akashthozhan@gmail.com', '7708012111', '2002-03-06', '$2b$12$TFsG0le.bdRsyprXlrK8kuOuMklXBhpKTo17T0VuCAfjw4tejc7ca', 'AKA211157', 1, '2023-07-28 09:50:33', '2023-07-28 09:53:07'),
(58, 'Bharath TR', 'bharath21official@gmail.com', '9566853723', '2003-04-21', '$2b$12$BuAVyu6zoGdXW4oTXVCt6OnPQwxcB0LIKnSHiKtPyE1YSPZDAWVmO', 'BHA372358', 1, '2023-07-28 10:17:52', '2023-07-28 10:20:41'),
(59, 'Sabari', 'sabarikumar984@gmail.com', '8667321204', '2002-11-21', '$2b$12$VPOxXgyz/t8Ba9MLYu869uyPKC7DhDqTTVljvuUeZ0lnjtEitiZYu', 'SAB120459', 1, '2023-07-28 10:19:24', '2023-07-28 10:20:04'),
(60, 'Ramesh Chandran ', 'rameshchandran2002@gmail.com', '8104208603', '2002-06-03', '$2b$12$jrXFFszpHTKAw9K0Oup9Luu4zMMyK2NKRn4WbdvUyOPSfBn9wOfBi', 'RAM860360', 1, '2023-07-28 10:28:45', '2023-07-28 10:30:03'),
(61, 'Lhekha Balasubramanian', 'lhekha007slm@gmail.com', '8248212055', '2001-05-22', '$2b$12$r24Kuj6KSasgLZI6sDwLG.hkMO4xLspCNb0bn4AwI2roI2qndk3zm', 'LHE205561', 1, '2023-07-28 10:31:41', '2023-07-28 10:32:31'),
(62, 'Pragathi', 'Pragathipragu29@gmail.com', '9087809085', '2002-11-29', '$2b$12$01M2O7rLjFzC6uvTJgO5Y.l5xlGvqeeUVZFWnyfECOEIJC33.x0LG', 'PRA908562', 1, '2023-07-28 10:31:48', '2023-07-28 10:32:23'),
(63, 'Swathi', 'pswathikaa03@gmail.com', '9345074514', '2003-01-16', '$2b$12$h/Ts7w3PBhhe/WqImYt6We7r34MAKw1Rr53gfCeaptgt3u8fC5owS', 'SWA451463', 1, '2023-07-28 10:43:09', '2023-07-28 10:43:53'),
(64, 'Yuvan Shankar P ', 'yuvanpys007@gmail.com', '9865590909', '2002-08-18', '$2b$12$1r2OckqgVP8u7p8p1CQNk.ti2hwKcv9dU1OwfL3uJb8iwt4Z8e9BK', 'YUV090964', 1, '2023-07-28 10:45:28', '2023-07-28 10:46:21'),
(65, 'Suganthi V', 'sakthivrajan@gmail.com', '9894044691', '1997-03-10', '$2b$12$3OYrxoqnCHIrTPryuVnDyuA6yrUrwblFixTOJ13HEnff3B217/G4y', 'SUG469165', 0, '2023-07-28 11:23:50', '2023-07-28 11:23:50'),
(66, 'Suganthi V', 'sakthiganeshvrajan@gmail.com', '9894044691', '1997-03-10', '$2b$12$MTQI6pjVkFtk2IjIqjRlLumTlUe.D4E8N84aYE4YMZxOcQEANmb5G', 'SUG469166', 1, '2023-07-28 11:25:47', '2023-07-28 11:26:36'),
(67, 'Anbu', 'anbuanbarasu@gmail.com', '7708626788', '2001-10-16', '$2b$12$699MjWBgY2BmxyNTiq.1U.gcm4Bxdj0NkFGM3Yart0xHHOuYUkh3S', 'ANB678867', 0, '2023-07-28 11:43:24', '2023-07-28 11:43:24'),
(68, 'Priyankha', 'priyankha1504slm@gmail.com', '8870976466', '2004-11-15', '$2b$12$Z2l5oQlpwgjAkiwy9Mrs6ukfFp7DqTN1qT/0I5EBNGczOgFS7Uybq', 'PRI646668', 1, '2023-07-28 11:44:17', '2023-07-28 11:45:01'),
(69, 'Kavipriya ', 'kkavipriya174@gmail.com', '9363052591', '2002-11-11', '$2b$12$eDrunuXtKOkDFjmkZqh/hecYNqWMVItRfqTl/KMSP879yah9p55gS', 'KAV259169', 1, '2023-07-28 12:44:19', '2023-07-28 12:47:03'),
(70, 'Jeeva', 'jeeva7240@gmail.com', '8072336649', '2002-10-13', '$2b$12$nZ766XiS4VOp1V2e5V0kD.f2uA8Dr8aLi4PmN0SxDjevpYU0X7nLK', 'JEE664970', 0, '2023-07-28 12:45:22', '2023-07-28 12:45:22'),
(71, 'Indhumathi.R ', 'indhumathi242002@gmail.com', '9790258944', '2002-10-24', '$2b$12$cpGIHmktGBI72n0vr8QvhOC091/aV.h2sxaVHSPBn5VaW5zWLB1HO', 'IND894471', 1, '2023-07-28 13:12:26', '2023-07-28 13:13:12'),
(72, 'Joshika.S', 'joshika702@gmail.com', '7598243340', '2004-01-22', '$2b$12$3jpH7iZjj.H7jAxEnfnHceFfS.zMOxVsURTDe1IHUSkB9CM5nm2QC', 'JOS334072', 1, '2023-07-28 13:43:47', '2023-07-28 13:44:28'),
(73, 'Gnanasekar ', 'gnanasehar000@gmail.com', '6385648574', '1995-01-31', '$2b$12$7x.TXSE.p41OBHuRpBYo2Oi3QIC5zx5ShgGRTjPwUHEYqx3RyIt0q', 'GNA857473', 1, '2023-07-28 13:56:50', '2023-07-28 13:59:44'),
(74, 'Gokul ', 'gocoolrz@gmail.com', '8825813291', '1999-12-10', '$2b$12$qll5MlkOggwvu0uGWSGvTen89gnI8Ch6FfeLGZE2xzbmugX7d3b5W', 'GOK329174', 1, '2023-07-28 14:23:38', '2023-07-28 14:24:07'),
(75, 'Mani kandan', 'mkanfan709@gmail.com', '9790397886', '2000-02-01', '$2b$12$KxDbwOw8U/AXDraUQZyj9e/fRt4FZf69oY4UBAPF36KI9cnQa1gQK', 'MAN788675', 1, '2023-07-28 14:31:24', '2023-07-28 14:34:09'),
(76, 'Arivulagan . M', 'arivalagan.dpm@gmail.com', '9047272600', '1977-12-03', '$2b$12$X913bqBSFA3gdJm5HIqIveLCPJyleri4H5U7sp3AUJfSyzWybCcR.', 'ARI260076', 1, '2023-07-28 15:04:51', '2023-07-28 15:05:16'),
(77, 'Nithin ', 'nithinnking93@gmail.com', '9994350742', '2006-09-01', '$2b$12$Gqwy1vr4IWhttXPoTo50DunjnP4wMbm/23I2TyyptDVnGH3t1ewIS', 'NIT074277', 1, '2023-07-28 15:06:32', '2023-07-28 15:11:53'),
(78, 'Priya', 'hariguru292@gmail.com', '9843882600', '1987-01-03', '$2b$12$6FfRXF47YQgfc4kdIsRzAOGsgNl3TMcpthe05kac601Fus9lDsyEa', 'PRI260078', 1, '2023-07-28 15:08:56', '2023-07-28 15:10:04'),
(79, 'vishwa priya', '17vishwapriya@gmail.com', '9080979142', '2000-06-03', '$2b$12$hHK3kMnFXF3Ik50qeqLjfeKkMPXnyrzvxcLcmIE8groARpPoTfTrm', 'VIS914279', 1, '2023-07-28 16:14:16', '2023-07-28 16:14:51'),
(80, 'vadivelu ', 'vadivelu.dpm@gmail.com', '9843669919', '1979-07-31', '$2b$12$KESJMRboXKBnj3NwjLSx8ObCXP9egA6xyd.W9HH59BMCG.zogo5AG', 'VAD991980', 0, '2023-07-28 16:59:52', '2023-07-28 16:59:52'),
(81, 'Umar faruk', 'umarfaruk14396@gmail.com', '8667217726', '1999-11-28', '$2b$12$.mU9RGB6ln.ABdKa6x0VKe1r1awkf2qjsXyKiTtXZbbCNfw.7zzeq', 'UMA772681', 1, '2023-07-28 23:28:03', '2023-07-28 23:30:21'),
(82, 'Suriya Balasubramaniam', 'suriyasurthin@gmail.com', '9500752154', '1994-07-11', '$2b$12$S4fmbA6FqgssF/ZdXu1/xusQCIhDzub2mDjskE.pSJdAWPhcZUgsW', 'SUR215482', 1, '2023-07-29 00:58:33', '2023-07-29 00:59:03'),
(83, 'Santhosh', 'santhosh.santhosh1@cloud.com', '9629327543', '2005-08-02', '$2b$12$1hLqde2ETlepPcDxYDqLQOoLh.aECGYHcPdYaGOR/y6Fcx8ehO1qi', 'SAN754383', 0, '2023-07-29 01:04:07', '2023-07-29 01:04:07'),
(84, 'Santhosh Santhosh', 'santhosh.santhosh1@icloud.com', '9629327543', '2005-09-01', '$2b$12$IWkY5JsGK424GoLjjqI7EOasXv7E5YE7X6WDiCPlxmEJbSWdhkI/m', 'SAN754384', 1, '2023-07-29 01:07:34', '2023-07-29 01:08:04'),
(85, 'Angelin', 'angelinpriyaanand@gmail.com', '8939940491', '2020-03-28', '$2b$12$IxrQz6K1RPgXaEcUSMnJUuvi5oE6i1iRd9UU0oZwO/J2npDQ.DO6S', 'ANG049185', 0, '2023-07-29 02:00:34', '2023-07-29 02:00:34'),
(86, 'Angelin', 'nilegna.priya@gmail.com', '8939949491', '2002-03-09', '$2b$12$8ckoeKsYd4Zii9HuvuAwMu47XIhG/J22WhA3XIVdiTjr5ndThVlI.', 'ANG949186', 1, '2023-07-29 02:05:29', '2023-07-29 02:26:33'),
(87, 'Priya .v', 'naveena8087@gmail.com', '9025470979', '1998-03-30', '$2b$12$wGBPs4mdWGxn/KABcgscN.3sQt3Q.Evrk2MOz10Xrn28vxhyfpb32', 'PRI097987', 1, '2023-07-29 03:55:01', '2023-07-29 03:57:02'),
(88, 'Yugi - test', 'dev@gmail.com', '9112233449', '2003-10-28', '$2b$12$8Yv0UYSkJDAoSu6A9LzYbeFjM279miG8n.u95oItbNZIEPLz0O5Zu', 'YUG344988', 1, '2023-07-29 10:14:34', '2023-07-29 10:17:03'),
(89, 'Yugi  test', 'dev2@gmail.com', '8838669898', '2023-07-29', '$2b$12$Lnq13vGJjQYqjlz5/YTq4OqKFiqCvnGzSu5.j42MwllH2vcPbxdbi', 'YUG989889', 1, '2023-07-29 10:20:15', '2023-07-29 10:20:34'),
(90, 'Yugendiran G', 'dev3@gmail.com', '8838669898', '2023-07-29', '$2b$12$yRLL2usYaEy/xhUi6Rsm2.rnlShwKApBXq95/Xu2qERY/6XRMrNLS', 'YUG989890', 1, '2023-07-29 10:22:30', '2023-07-29 10:22:50'),
(91, 'test', 'dev@test.in', '8838669898', '2023-07-29', '$2b$12$CHIOF/TNCXsCiN6myOcBoOtCHmkzchkkGwsI.5OsNw.h.sTs9oNBW', 'TES989891', 1, '2023-07-29 10:27:09', '2023-07-29 10:27:23'),
(92, 'Thaufeek', 'Sovahtofficial@gmail.com', '9629428548', '2022-12-01', '$2b$12$QFrf9CiFbVV/TlZzY95Ope7amvtqmvoplBRetCnpqbsQCSpz3BAL2', 'THA854892', 1, '2023-07-29 10:33:15', '2023-07-29 10:33:37'),
(93, 'FELIX', 'felixice174@gmail.com', '9715346503', '2000-04-17', '$2b$12$GZO5HRG8vUlls6nmjbrPUefB6DB1Xun2XwX1inRvgJP7HqU6bIdvu', 'FEL650393', 1, '2023-07-29 12:54:26', '2023-07-29 12:55:26'),
(94, 'Mohamed Fazil J', 'fazilms643@gmail.com', '7010778242', '2002-12-28', '$2b$12$wsoRvdwUM85QMExB2uZ8bO89NjOOjQDvfct/KPvjZxJunwUes28jS', 'MOH824294', 1, '2023-07-29 14:42:36', '2023-07-29 14:43:17'),
(95, 'Gaja Priya Surendran ', 'gajapriya8667@gmail.com', '9566442047', '2002-05-05', '$2b$12$n2MvqBBNKSvDhuFpHwj1Ye2Z7aWJd3JMkwh0UJv3ZIpv94nLS7YZG', 'GAJ204795', 0, '2023-07-29 15:13:04', '2023-07-29 15:13:04'),
(96, 'GOKUL SASIKUMAR', 'gokulsasi422@gmail.com', '9944646391', '2000-10-31', '$2b$12$WMY6Z.oiokMg25Db/Vwwpe6g8KrBSABtxgyrq95KSYZ5Q/v.oNOAC', 'GOK639196', 1, '2023-07-29 17:36:30', '2023-07-29 17:37:00'),
(97, 'Ravi', 'ravibhuvana1177@gmail.com', '8072181765', '1976-10-24', '$2b$12$zvG5RO.I0uBKi0WUVrq3QOzk/tvxoqrnxpY0j6P5EqsSBQdsNJcrS', 'RAV176597', 1, '2023-07-30 05:32:54', '2023-07-30 05:33:13'),
(98, 'Bhuvaneshwari', 'bhuvaneshwariravi06@gmail.com', '9360152017', '2006-05-17', '$2b$12$LUUY9A6jd9r03Kjch7zHbejLtKV9RHGgQ8JhARdvQhQoUJj2Eo.5K', 'BHU201798', 1, '2023-07-30 05:51:37', '2023-07-30 05:52:25'),
(99, 'Reshma', 'reshmakannan28@gmail.com', '8754356300', '2002-12-28', '$2b$12$afKgD6LmaAkoajV6bST9WeW/q4TcmlOczHGjbaq.P5a7xVjuU6DUC', 'RES630099', 1, '2023-07-30 08:37:53', '2023-07-30 08:38:24'),
(100, 'Raja', 'raja16.smr@gmail.com', '8973773284', '1997-01-16', '$2b$12$mDvCL2u6bRr50yeJZ1P/X.X.K5VbDRXojPrhpuWGcQsFpDQGhGRhy', 'RAJ3284100', 1, '2023-07-30 09:16:38', '2023-07-30 09:17:03'),
(101, 'Divya ', 'divyashree75sa@gmail.com', '9445355733', '2002-05-07', '$2b$12$QwsjJKGw6fCjhrXIWg6mU.F1lTN/uTLpYAjGmn1xWG4ADRatBqNfm', 'DIV5733101', 1, '2023-07-30 14:36:54', '2023-07-30 14:37:45'),
(102, 'Gokul', 'gokulanandhan19@hmail.com', '9790086479', '1999-05-19', '$2b$12$w4OWcz7cHH.5cGL6VB.feOcNFbpq8a713HfvdYvvk4PB.eJttbH9.', 'GOK6479102', 0, '2023-07-31 03:29:26', '2023-07-31 03:29:26'),
(103, 'Gokul', 'gokulanandhan19@gmail.com', '9790086479', '1999-05-19', '$2b$12$RTA0gTN/hPnpVsCgLnTQWetZJrGj8reeT4n0Epg7rMMY8dTXLl0qq', 'GOK6479103', 1, '2023-07-31 03:32:26', '2023-07-31 03:33:00'),
(104, 'Arun', 'arunprasath170777@gmail.com', '9345780483', '2003-04-14', '$2b$12$Y/vFMgQOyexGl/mPsDlSVO3TiRKQttt78S/QPB7zNDgoQ6xt.e0Nq', 'ARU0483104', 1, '2023-07-31 05:57:51', '2023-07-31 05:58:26'),
(105, 'Praveen KN ', 'praveen2020raj@gmail.com', '9894500195', '2001-12-18', '$2b$12$0XxopUcIR8kTN.2t7.FA6eBug7EZVrWFnJhotFFUBCtZLC3tn9PNW', 'PRA0195105', 1, '2023-07-31 08:34:19', '2023-07-31 08:34:56'),
(106, 'Vijeash', 'vijeash15@gmail.com', '9597633676', '2003-05-15', '$2b$12$qyvC2pkgvylioYkFwQwc7.cxDqe0PBSGLjSmiYmNlF9oWgPkrseNu', 'VIJ3676106', 1, '2023-07-31 11:56:00', '2023-07-31 11:56:54'),
(107, 'Panneer', 'pm3377@email.com', '9047062013', '1999-08-01', '$2b$12$4o9unUYO3WIMg8ghZUsdR.XgNovdjagGFIp3ZXR3KI1MMbx6HRdjS', 'PAN2013107', 0, '2023-07-31 15:17:26', '2023-07-31 15:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `WalletTransaction`
--

CREATE TABLE `WalletTransaction` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `wallet` varchar(15) NOT NULL COMMENT 'personal,income',
  `amount` int(50) NOT NULL,
  `source` varchar(50) DEFAULT NULL COMMENT 'rewardWallet,incomeWallet,manual,transfer,withdraw',
  `method` varchar(50) NOT NULL COMMENT 'deposit, withdraw',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Wishlist`
--

CREATE TABLE `Wishlist` (
  `wishlistId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `status` text NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Wishlist`
--

INSERT INTO `Wishlist` (`wishlistId`, `userId`, `productId`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 4, 38, 'active', '2023-07-27 13:53:50', '2023-07-27 13:53:50'),
(2, 9, 40, 'active', '2023-07-27 14:17:07', '2023-07-27 14:17:07'),
(3, 50, 20, 'removed', '2023-07-28 09:08:30', '2023-07-28 09:08:35'),
(4, 50, 20, 'active', '2023-07-28 09:08:38', '2023-07-28 09:08:38'),
(5, 50, 66, 'active', '2023-07-28 09:31:42', '2023-07-28 09:31:42'),
(6, 50, 75, 'removed', '2023-07-28 09:32:52', '2023-07-28 09:33:44'),
(7, 50, 53, 'active', '2023-07-28 09:33:35', '2023-07-28 09:33:35'),
(8, 50, 75, 'active', '2023-07-28 09:33:45', '2023-07-28 09:33:45'),
(9, 38, 42, 'active', '2023-08-01 07:51:39', '2023-08-01 07:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `Withdraw`
--

CREATE TABLE `Withdraw` (
  `withdrawId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `amount` int(50) NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`details`)),
  `status` varchar(15) NOT NULL DEFAULT 'requested' COMMENT 'initiated,deposited,rejected,canceled,requested',
  `initiatedOn` varchar(30) DEFAULT NULL,
  `depositedOn` varchar(30) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`addressId`);

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `Basket`
--
ALTER TABLE `Basket`
  ADD PRIMARY KEY (`basketId`);

--
-- Indexes for table `CancelOrder`
--
ALTER TABLE `CancelOrder`
  ADD PRIMARY KEY (`cancelOrderId`);

--
-- Indexes for table `ContactMessage`
--
ALTER TABLE `ContactMessage`
  ADD PRIMARY KEY (`messageId`);

--
-- Indexes for table `ForgotPasswordToken`
--
ALTER TABLE `ForgotPasswordToken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Kyc`
--
ALTER TABLE `Kyc`
  ADD PRIMARY KEY (`kycId`);

--
-- Indexes for table `Level`
--
ALTER TABLE `Level`
  ADD PRIMARY KEY (`levelId`);

--
-- Indexes for table `Otp`
--
ALTER TABLE `Otp`
  ADD PRIMARY KEY (`otpId`);

--
-- Indexes for table `Page`
--
ALTER TABLE `Page`
  ADD PRIMARY KEY (`pageId`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `PaymentMethod`
--
ALTER TABLE `PaymentMethod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `ProductCategory`
--
ALTER TABLE `ProductCategory`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `ProductInventory`
--
ALTER TABLE `ProductInventory`
  ADD PRIMARY KEY (`inventoryId`);

--
-- Indexes for table `ProductOrder`
--
ALTER TABLE `ProductOrder`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `ProductOrderItem`
--
ALTER TABLE `ProductOrderItem`
  ADD PRIMARY KEY (`orderItemId`);

--
-- Indexes for table `ProductSubCategory`
--
ALTER TABLE `ProductSubCategory`
  ADD PRIMARY KEY (`subCategoryId`);

--
-- Indexes for table `Referral`
--
ALTER TABLE `Referral`
  ADD PRIMARY KEY (`referralId`);

--
-- Indexes for table `RewardWallet`
--
ALTER TABLE `RewardWallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Section`
--
ALTER TABLE `Section`
  ADD PRIMARY KEY (`sectionId`);

--
-- Indexes for table `SizeChart`
--
ALTER TABLE `SizeChart`
  ADD PRIMARY KEY (`sizeChartId`);

--
-- Indexes for table `Token`
--
ALTER TABLE `Token`
  ADD PRIMARY KEY (`tokenId`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `WalletTransaction`
--
ALTER TABLE `WalletTransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wishlist`
--
ALTER TABLE `Wishlist`
  ADD PRIMARY KEY (`wishlistId`);

--
-- Indexes for table `Withdraw`
--
ALTER TABLE `Withdraw`
  ADD PRIMARY KEY (`withdrawId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Address`
--
ALTER TABLE `Address`
  MODIFY `addressId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `adminId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Basket`
--
ALTER TABLE `Basket`
  MODIFY `basketId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `CancelOrder`
--
ALTER TABLE `CancelOrder`
  MODIFY `cancelOrderId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ContactMessage`
--
ALTER TABLE `ContactMessage`
  MODIFY `messageId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ForgotPasswordToken`
--
ALTER TABLE `ForgotPasswordToken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Kyc`
--
ALTER TABLE `Kyc`
  MODIFY `kycId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Level`
--
ALTER TABLE `Level`
  MODIFY `levelId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Otp`
--
ALTER TABLE `Otp`
  MODIFY `otpId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `Page`
--
ALTER TABLE `Page`
  MODIFY `pageId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `paymentId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `PaymentMethod`
--
ALTER TABLE `PaymentMethod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `productId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `ProductCategory`
--
ALTER TABLE `ProductCategory`
  MODIFY `categoryId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ProductInventory`
--
ALTER TABLE `ProductInventory`
  MODIFY `inventoryId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT for table `ProductOrder`
--
ALTER TABLE `ProductOrder`
  MODIFY `orderId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ProductOrderItem`
--
ALTER TABLE `ProductOrderItem`
  MODIFY `orderItemId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ProductSubCategory`
--
ALTER TABLE `ProductSubCategory`
  MODIFY `subCategoryId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Referral`
--
ALTER TABLE `Referral`
  MODIFY `referralId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `RewardWallet`
--
ALTER TABLE `RewardWallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Section`
--
ALTER TABLE `Section`
  MODIFY `sectionId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `SizeChart`
--
ALTER TABLE `SizeChart`
  MODIFY `sizeChartId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Token`
--
ALTER TABLE `Token`
  MODIFY `tokenId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `userId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `WalletTransaction`
--
ALTER TABLE `WalletTransaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Wishlist`
--
ALTER TABLE `Wishlist`
  MODIFY `wishlistId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Withdraw`
--
ALTER TABLE `Withdraw`
  MODIFY `withdrawId` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
