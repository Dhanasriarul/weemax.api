-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2023 at 09:32 PM
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
-- Database: `u133931126_v2_weemax`
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
(39, 105, 'Praveen ', '1/159, Valluvar Colony, North Soorankudy, Nagercoil, kanniyakumari, 629501', NULL, 'Nagercoil ', 'Tamilnadu ', '629501', '9894500195', 1, 'active', '2023-07-31 08:37:03', '2023-07-31 08:37:03'),
(40, 31, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '9840260412', 1, 'active', '2023-08-01 19:36:08', '2023-08-01 19:36:08'),
(41, 31, 'Vyzov .', 'No:748,Thamaraipakkam kootroad,', 'Thirumalai nagar,', 'Thiruvallur', 'TN', '601103', '9840260412', 1, 'active', '2023-08-01 19:36:23', '2023-08-01 19:36:23'),
(42, 116, 'Abdul Munazzir a m', 'Sana bakery, KSR COLLEGE opp, KSR Kalvi Nagar, Pallipalayam , Namakkal, Tamil Nadu', 'Sana bakery', 'Pallipalayam', 'Tamil Nadu', '637215', '8760667863', 1, 'active', '2023-08-02 17:24:36', '2023-08-02 17:24:36'),
(43, 121, 'Tharani', 'D/no10A eswaran compound subbarayan 2nd st samundipuram south ', NULL, 'Tirupur', 'Tamilnadu', '641603', '96553 26355', 1, 'active', '2023-08-03 11:02:58', '2023-08-03 11:02:58'),
(44, 32, 'Thrisha.B.V.', 'No.8,9th Street Rajiv Gandhi nagar, CRPF opp ', NULL, 'Avadi, Chennai ', 'Tamilnadu ', '600065', '8015752265', 1, 'active', '2023-08-05 05:29:33', '2023-08-05 05:29:33'),
(45, 2, 'Elakkiya V', 'Rmz one paramount ', 'Near commerzone,mugalivakkam, porur', 'Chennai', 'TAMIL NADU', '600125', '9087639742', 1, 'active', '2023-08-06 12:34:05', '2023-08-06 12:34:05'),
(46, 129, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'removed', '2023-08-08 16:41:17', '2023-08-08 16:41:27'),
(47, 129, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-08-08 17:02:46', '2023-08-08 17:02:46'),
(48, 119, 'SAKTHI HARIHARA PRABHU', 'Gemini press building, fire service station opposite', 'Naganampatty road, Oddanchatram ', 'Dindigul', 'Tamil Nadu', '624619', '7904980440', 1, 'active', '2023-08-17 15:14:49', '2023-08-17 15:14:49'),
(49, 136, 'Jeeva', '64, dhanam ladies hostel, poosala gangu street, chinmaya Nagar,Egmore ', NULL, 'Chennai ', 'Tamilnadu ', '600008', '7395894082', 1, 'active', '2023-08-17 15:44:40', '2023-08-17 15:44:40');

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
(1, 129, 12, 397, 1, 'removed', '2023-08-09 11:30:20', '2023-08-09 11:40:16'),
(2, 10, 12, 397, 1, 'active', '2023-08-09 11:42:29', '2023-08-09 11:42:29'),
(3, 129, 12, 397, 1, 'removed', '2023-08-10 13:26:52', '2023-08-10 14:08:49'),
(4, 129, 12, 397, 1, 'removed', '2023-08-10 14:12:07', '2023-08-10 15:20:41'),
(5, 7, 11, 391, 1, 'removed', '2023-08-10 17:42:08', '2023-08-15 04:21:24'),
(6, 32, 56, 216, 1, 'active', '2023-08-11 16:23:13', '2023-08-11 16:23:13'),
(7, 32, 57, 221, 1, 'active', '2023-08-11 16:23:53', '2023-08-11 16:23:53'),
(8, 32, 60, 236, 1, 'active', '2023-08-11 16:24:06', '2023-08-11 16:24:06'),
(9, 32, 61, 241, 1, 'active', '2023-08-11 16:24:16', '2023-08-11 16:24:16'),
(10, 32, 63, 251, 1, 'active', '2023-08-11 16:24:52', '2023-08-11 16:24:52'),
(11, 32, 54, 206, 1, 'active', '2023-08-11 16:25:34', '2023-08-11 16:25:34'),
(12, 129, 12, 397, 1, 'removed', '2023-08-11 17:32:40', '2023-08-11 17:33:55'),
(13, 31, 12, 397, 1, 'removed', '2023-08-14 20:09:23', '2023-08-14 20:10:31'),
(14, 7, 41, 141, 1, 'removed', '2023-08-15 04:21:21', '2023-08-15 04:22:15'),
(15, 108, 101, 389, 1, 'active', '2023-08-16 03:37:51', '2023-08-16 03:37:51'),
(16, 2, 40, 136, 1, 'removed', '2023-08-16 08:32:51', '2023-08-16 09:36:56'),
(17, 7, 38, 126, 1, 'removed', '2023-08-16 08:41:20', '2023-08-17 17:21:09'),
(18, 2, 40, 136, 1, 'removed', '2023-08-16 09:37:09', '2023-08-16 09:37:27'),
(19, 2, 40, 136, 1, 'removed', '2023-08-16 09:38:12', '2023-08-17 07:32:22'),
(20, 31, 11, 391, 1, 'active', '2023-08-16 16:44:49', '2023-08-16 16:44:49'),
(21, 2, 11, 391, 1, 'active', '2023-08-17 07:32:19', '2023-08-17 07:32:19'),
(22, 119, 38, 127, 1, 'active', '2023-08-17 15:13:34', '2023-08-17 15:13:34'),
(23, 119, 39, 132, 1, 'active', '2023-08-17 15:13:50', '2023-08-17 15:13:50'),
(24, 119, 39, 134, 1, 'active', '2023-08-17 15:13:54', '2023-08-17 15:13:54'),
(25, 136, 65, 262, 1, 'active', '2023-08-17 15:43:00', '2023-08-17 15:43:00'),
(26, 137, 56, 216, 1, 'active', '2023-08-17 15:50:49', '2023-08-17 15:50:49'),
(27, 29, 38, 126, 1, 'active', '2023-08-17 16:37:37', '2023-08-17 16:37:37'),
(28, 29, 12, 397, 1, 'active', '2023-08-17 16:46:58', '2023-08-17 16:46:58');

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

--
-- Dumping data for table `CancelOrder`
--

INSERT INTO `CancelOrder` (`cancelOrderId`, `orderId`, `orderItemId`, `userId`, `reason`, `refundMethod`, `refundData`, `status`, `createdAt`, `updatedAt`) VALUES
(10, 48, 52, 7, 'Wrong order ', 'bank', '{\"accountHolderName\":\"Sanjiv\",\"bankName\":\"Kvb\",\"accountNumber\":1126170000008030,\"ifscCode\":\"KVBL0001126\"}', 'requested', '2023-08-15 15:09:24', '2023-08-15 15:09:24');

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

--
-- Dumping data for table `ContactMessage`
--

INSERT INTO `ContactMessage` (`messageId`, `firstName`, `lastName`, `email`, `phoneNumber`, `message`, `comment`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Yugendiran', 'G', 'yyugi64@gmail.com', '08838669898', 'Test', NULL, 'submitted', '2023-08-03 13:53:02', '2023-08-03 14:01:50');

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
(11, 'yyugi64@gmail.com', 'email', 'da9d7c3aa7869e9709da96a890cb6ebe7f9aa0bc935c97de19da7704845e69b68b7b8f59-e8ae-430d-aebd-882650c450bd', 'used', '2023-07-29 16:09:47', '2023-07-29 10:29:55', '2023-07-29 10:30:26'),
(12, 'gayathrithangavel1910@gmail.com ', 'email', '4150aa21fe83abcf72487104f6c3085fd1a7b3faea36fccb36afdd88ffde3fb7cc019b0c-1358-4525-83cb-d370fc9b15c6', 'used', '2023-08-03 08:21:01', '2023-08-03 08:11:01', '2023-08-03 08:11:34'),
(13, 'gayathrithangavel1910@gmail.com ', 'email', '905d5a990b97b96c2bc9d04cf2f175550754826c5d3f522a828838fc40b09fbecc019b0c-1358-4525-83cb-d370fc9b15c6', 'pending', '2023-08-03 08:21:41', '2023-08-03 08:11:41', '2023-08-03 08:11:41'),
(14, 'yyugi64@gmail.com', 'email', '55fd5e108cac67063426869530f93a8b59c1313d431b2a023d32eae577e360e8232e9d76-b32a-4273-9273-d29bb1685414', 'used', '2023-08-08 20:45:50', '2023-08-08 15:06:04', '2023-08-08 15:07:15'),
(15, 'aravindanaravindan484@gmail.com ', 'email', '246611401ddd396f6e7fc8d8a3daa37842925ab1a008a1f86e85c8d69e0b5b67dd2ce17c-0736-436e-8d86-5a91436da8a7', 'used', '2023-08-13 13:53:29', '2023-08-13 13:43:29', '2023-08-13 13:44:08');

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
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'pending,used,expired',
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
(153, 'pm3377@email.com', 'email', '803631', 'pending', '2023-07-31 15:29:16', '2023-07-31 15:19:16', '2023-07-31 15:19:16'),
(154, 'aravindanaravindan484@gmail.com', 'email', '671812', 'used', '2023-08-02 04:30:37', '2023-08-02 04:20:37', '2023-08-02 04:21:17'),
(155, 'gokulnetworker@gmail.com', 'email', '852318', 'used', '2023-08-02 07:22:13', '2023-08-02 07:12:13', '2023-08-02 07:12:49'),
(156, 'gayathriannu13@gmail.com', 'email', '585831', 'used', '2023-08-02 08:50:42', '2023-08-02 08:40:42', '2023-08-02 08:41:08'),
(157, 'subhasree2052001@gmail.com', 'email', '793991', 'used', '2023-08-02 13:12:10', '2023-08-02 13:02:10', '2023-08-02 13:02:54'),
(158, 'arthi01shinu@gmail.com', 'email', '163627', 'pending', '2023-08-02 13:41:17', '2023-08-02 13:31:17', '2023-08-02 13:31:17'),
(159, 'arthi01shinu@gmail.com', 'email', '646939', 'used', '2023-08-02 13:41:47', '2023-08-02 13:31:47', '2023-08-02 13:35:18'),
(160, 'arthi01shinu@gmail.com', 'email', '705099', 'pending', '2023-08-02 13:42:02', '2023-08-02 13:32:02', '2023-08-02 13:32:02'),
(161, 'kalaiselvisenthi14@gmail.com', 'email', '650251', 'pending', '2023-08-02 14:08:42', '2023-08-02 13:58:43', '2023-08-02 13:58:43'),
(162, 'kalaiselvisenthil14@gmail.com', 'email', '075706', 'used', '2023-08-02 14:11:06', '2023-08-02 14:01:06', '2023-08-02 14:01:36'),
(163, 'muthu2012@gmail.com', 'email', '201493', 'used', '2023-08-02 16:22:21', '2023-08-02 16:12:22', '2023-08-02 16:12:46'),
(164, 'abdulmunazir@gmail.com', 'email', '645255', 'used', '2023-08-02 17:32:12', '2023-08-02 17:22:12', '2023-08-02 17:22:51'),
(165, 'kavinananth51@gmail.com', 'email', '616486', 'pending', '2023-08-03 01:13:50', '2023-08-03 01:03:50', '2023-08-03 01:03:50'),
(166, 'kavinananth51@gmail.com', 'email', '455043', 'pending', '2023-08-03 01:14:15', '2023-08-03 01:04:15', '2023-08-03 01:04:15'),
(167, 'kavinananth51@gmail.com', 'email', '512608', 'pending', '2023-08-03 01:14:29', '2023-08-03 01:04:29', '2023-08-03 01:04:29'),
(168, 'kavinananth51@gmail.com', 'email', '535776', 'pending', '2023-08-03 01:14:38', '2023-08-03 01:04:38', '2023-08-03 01:04:38'),
(169, 'kavinananth51@gmail.com', 'email', '735807', 'pending', '2023-08-03 01:14:54', '2023-08-03 01:04:54', '2023-08-03 01:04:54'),
(170, 'kavinananth51@gmail.com', 'email', '535417', 'pending', '2023-08-03 01:14:59', '2023-08-03 01:04:59', '2023-08-03 01:04:59'),
(171, 'kavinananth51@gmail.com', 'email', '284020', 'pending', '2023-08-03 01:15:01', '2023-08-03 01:05:01', '2023-08-03 01:05:01'),
(172, 'kavinananth51@gmail.com', 'email', '219129', 'pending', '2023-08-03 01:15:01', '2023-08-03 01:05:01', '2023-08-03 01:05:01'),
(173, 'kavinananth51@gmail.com', 'email', '549199', 'pending', '2023-08-03 01:15:01', '2023-08-03 01:05:01', '2023-08-03 01:05:01'),
(174, 'kavinananth51@gmail.com', 'email', '508190', 'pending', '2023-08-03 01:15:01', '2023-08-03 01:05:01', '2023-08-03 01:05:01'),
(175, 'kavinananth51@gmail.com', 'email', '799805', 'pending', '2023-08-03 01:15:02', '2023-08-03 01:05:02', '2023-08-03 01:05:02'),
(176, 'kavinananth51@gmail.com', 'email', '286681', 'pending', '2023-08-03 01:15:02', '2023-08-03 01:05:02', '2023-08-03 01:05:02'),
(177, 'kavinananth51@gmail.com', 'email', '629720', 'pending', '2023-08-03 01:15:07', '2023-08-03 01:05:07', '2023-08-03 01:05:07'),
(178, 'kavinananth51@gmail.com', 'email', '531613', 'pending', '2023-08-03 01:15:07', '2023-08-03 01:05:07', '2023-08-03 01:05:07'),
(179, 'kavinananth51@gmail.com', 'email', '437867', 'pending', '2023-08-03 01:15:07', '2023-08-03 01:05:07', '2023-08-03 01:05:07'),
(180, 'kavinananth51@gmail.com', 'email', '170206', 'pending', '2023-08-03 01:15:07', '2023-08-03 01:05:07', '2023-08-03 01:05:07'),
(181, 'kavinananth51@gmail.com', 'email', '482390', 'pending', '2023-08-03 01:15:07', '2023-08-03 01:05:07', '2023-08-03 01:05:07'),
(182, 'kavinananth51@gmail.com', 'email', '738828', 'pending', '2023-08-03 01:15:08', '2023-08-03 01:05:08', '2023-08-03 01:05:08'),
(183, 'kavinananth51@gmail.com', 'email', '260030', 'pending', '2023-08-03 01:15:08', '2023-08-03 01:05:08', '2023-08-03 01:05:08'),
(184, 'kavinananth51@gmail.com', 'email', '796977', 'pending', '2023-08-03 01:15:08', '2023-08-03 01:05:08', '2023-08-03 01:05:08'),
(185, 'kavinananth51@gmail.com', 'email', '655586', 'pending', '2023-08-03 01:15:08', '2023-08-03 01:05:08', '2023-08-03 01:05:08'),
(186, 'kavinananth51@gmail.com', 'email', '331831', 'pending', '2023-08-03 01:15:09', '2023-08-03 01:05:09', '2023-08-03 01:05:09'),
(187, 'kavinananth51@gmail.com', 'email', '303133', 'pending', '2023-08-03 01:15:09', '2023-08-03 01:05:09', '2023-08-03 01:05:09'),
(188, 'kavinananth51@gmail.com', 'email', '281998', 'pending', '2023-08-03 01:15:09', '2023-08-03 01:05:09', '2023-08-03 01:05:09'),
(189, 'gayathrithangavel1910@gmail.com', 'email', '367330', 'used', '2023-08-03 08:18:49', '2023-08-03 08:08:50', '2023-08-03 08:09:09'),
(190, 'sakthiharish499@gmail.com', 'email', '455529', 'used', '2023-08-03 09:42:24', '2023-08-03 09:32:24', '2023-08-03 09:32:55'),
(191, 'joysrenisha17@gmail.com', 'email', '691430', 'pending', '2023-08-03 10:14:49', '2023-08-03 10:04:49', '2023-08-03 10:04:49'),
(192, 'joysrenisha17@gmail.com', 'email', '115587', 'expired', '2023-08-03 10:15:37', '2023-08-03 10:05:37', '2023-08-03 10:36:19'),
(193, 'joysrenisha17@gmail.com', 'email', '763260', 'used', '2023-08-03 10:46:24', '2023-08-03 10:36:24', '2023-08-03 10:37:04'),
(194, 'tharanieswaran2002@gmail.com', 'email', '333091', 'used', '2023-08-03 11:04:55', '2023-08-03 10:54:55', '2023-08-03 10:55:31'),
(195, 'srs.erd71@gmail.com', 'email', '475542', 'used', '2023-08-04 12:24:19', '2023-08-04 12:14:19', '2023-08-04 12:15:01'),
(196, 'smartkiller8620@gmail.com', 'email', '733633', 'pending', '2023-08-04 15:22:28', '2023-08-04 15:12:28', '2023-08-04 15:12:28'),
(197, 'smartkiller8620@gmail.com', 'email', '899384', 'pending', '2023-08-04 15:22:52', '2023-08-04 15:12:52', '2023-08-04 15:12:52'),
(198, 'smartkiller8620@gmail.com', 'email', '814757', 'pending', '2023-08-04 15:27:01', '2023-08-04 15:17:01', '2023-08-04 15:17:01'),
(199, 'jokerprofessor287@gmail.com', 'email', '140098', 'used', '2023-08-04 15:41:17', '2023-08-04 15:31:18', '2023-08-04 15:31:42'),
(200, 'tharanirajkumar114@gmail.com', 'email', '047598', 'used', '2023-08-05 01:25:12', '2023-08-05 01:15:12', '2023-08-05 01:15:35'),
(201, 'Suryaasanjaykumar@gmail.com', 'email', '224778', 'used', '2023-08-05 05:31:26', '2023-08-05 05:21:26', '2023-08-05 05:22:29'),
(202, 'Kavinkumar9991@gmail.com', 'email', '579271', 'used', '2023-08-05 09:37:37', '2023-08-05 09:27:38', '2023-08-05 09:28:15'),
(203, 'divija0330@gmail.com', 'email', '041856', 'used', '2023-08-06 18:20:58', '2023-08-06 18:10:58', '2023-08-06 18:11:25'),
(204, 'yyugi64@gmail.com', 'email', '330797', 'used', '2023-08-08 20:39:54', '2023-08-08 15:00:09', '2023-08-08 15:04:48'),
(205, 'sgowthami2101@gmail.com', 'email', '625635', 'used', '2023-08-16 13:39:06', '2023-08-16 13:29:06', '2023-08-16 13:29:49'),
(206, 'prasanthhopezz@gmail.com', 'email', '029583', 'used', '2023-08-16 13:43:20', '2023-08-16 13:33:20', '2023-08-16 13:34:10'),
(207, 'aishudaishwarya1098@gmail.com', 'email', '526327', 'pending', '2023-08-16 14:18:54', '2023-08-16 14:08:54', '2023-08-16 14:08:54'),
(208, 'vickysanthosh96@gmail.com', 'email', '941137', 'used', '2023-08-16 14:33:45', '2023-08-16 14:23:45', '2023-08-16 14:24:13'),
(209, 'ajsreekumaran@gmail.com', 'email', '605536', 'used', '2023-08-17 08:45:09', '2023-08-17 08:35:09', '2023-08-17 08:35:38'),
(210, 'vishnuvaradhanmech@gmail.com', 'email', '315484', 'used', '2023-08-17 11:10:03', '2023-08-17 11:00:04', '2023-08-17 11:00:55'),
(211, 'jeevashanmugam0228@gmail.com', 'email', '558254', 'used', '2023-08-17 15:48:23', '2023-08-17 15:38:23', '2023-08-17 15:39:32'),
(212, 'rubikarubi23@gmail.com', 'email', '111325', 'used', '2023-08-17 15:57:24', '2023-08-17 15:47:24', '2023-08-17 15:47:55'),
(213, 'bhasith@eselfmade.in', 'email', '757852', 'used', '2023-08-17 17:36:18', '2023-08-17 17:26:18', '2023-08-17 17:26:45');

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
(3, 'biz', 'biz', NULL, 'deleted', '2023-07-23 17:18:14', '2023-08-17 06:11:04'),
(4, 'tshirt', 'tshirt', NULL, 'published', '2023-07-23 17:18:41', '2023-07-23 20:32:02'),
(5, 'shirt', 'shirt', NULL, 'published', '2023-07-23 17:18:54', '2023-07-23 19:48:26'),
(6, 'kurti', 'kurti', NULL, 'published', '2023-07-23 17:19:10', '2023-07-24 18:04:20'),
(7, 'shoe', 'shoe', NULL, 'published', '2023-07-23 17:19:23', '2023-07-24 18:04:17'),
(8, 'watch', 'watch', NULL, 'published', '2023-07-23 17:19:36', '2023-07-24 18:04:13'),
(9, 'product', 'product', NULL, 'published', '2023-07-23 17:19:50', '2023-07-24 18:04:09'),
(10, 'men-product', 'men-prodect', NULL, 'published', '2023-07-23 17:20:55', '2023-07-27 13:17:36'),
(11, 'women-product', 'women-prodect', NULL, 'published', '2023-07-23 17:21:18', '2023-07-27 13:17:46'),
(12, 't-shirt', 't-shirt', NULL, 'deleted', '2023-07-24 18:03:49', '2023-08-17 06:11:47'),
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
(26, '2023-08-02 04:05:32', '2023-08-02 04:05:32', '36e32c9b-c0ba-402f-824e-6c5f6d2e4486', '112959859467', '119757', 'Success', '', 'Credit Card', 'Visa', 'null', 'SUCCESS', 'INR', '355.63', 'Yugendiran G', 'No165a, 5th street, Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', 'India', '8838669898', 'yyugi64@gmail.com', 'Yugendiran G', 'No165a, 5th street, Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', 'India', '8838669898', '1', '32', '10', '', '', 'N', 'null', 'null', '0.0', '349.00', 'null', 'N', '0', '', '02/08/2023 09:35:09', 'INDIA', '6.63', '0.0'),
(28, '2023-08-07 07:03:02', '2023-08-07 07:03:02', '048b7474-dbb1-449d-afa5-a789fac8df40', '112965220164', '321975790805', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '749.00', 'Elakkiya V', 'Rmz one paramount , Near commerzone,mugalivakkam, porur', 'Chennai', 'TAMIL NADU', '600125', 'India', '9087639742', 'sakthiganesh533@gmail.com', 'Elakkiya V', 'Rmz one paramount , Near commerzone,mugalivakkam, porur', 'Chennai', 'TAMIL NADU', '600125', 'India', '9087639742', '1', '45', '2', '', '', 'N', 'null', 'null', '0.0', '749.00', '', 'N', '', '', '07/08/2023 12:32:57', '', '0.0', '0.0'),
(33, '2023-08-15 04:22:15', '2023-08-15 04:22:15', 'a6f774fa-7dde-450d-88db-0286fdfa1225', '112973293594', '322729317281', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '349.00', 'Sanjiv v', '136/10B, ganapathy nagar , Near mayavan malihi', 'Dharapuram', 'Tamilnadu', '638657', 'India', '9843959919', 'sanjivdpm2003@gmail.com', 'Sanjiv v', '136/10B, ganapathy nagar , Near mayavan malihi', 'Dharapuram', 'Tamilnadu', '638657', 'India', '9843959919', '1', '6', '7', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '15/08/2023 09:52:12', '', '0.0', '0.0');

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
  `sizeChartId` bigint(20) DEFAULT NULL,
  `productTitle` text NOT NULL,
  `description` longtext DEFAULT NULL,
  `mrpPrice` int(50) NOT NULL,
  `normalPrice` int(50) NOT NULL,
  `gst` int(50) NOT NULL,
  `hsn` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'draft' COMMENT 'published, archived, draft, deleted',
  `categoryId` bigint(20) NOT NULL,
  `subCategoryId` bigint(20) NOT NULL,
  `type` varchar(15) NOT NULL COMMENT 'dress,gadget,course',
  `inventorySlab` text NOT NULL,
  `referralBonus` int(50) DEFAULT 0,
  `refundFrom` int(50) DEFAULT 0,
  `refundTo` int(50) DEFAULT 0,
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

INSERT INTO `Product` (`productId`, `code`, `sizeChartId`, `productTitle`, `description`, `mrpPrice`, `normalPrice`, `gst`, `hsn`, `status`, `categoryId`, `subCategoryId`, `type`, `inventorySlab`, `referralBonus`, `refundFrom`, `refundTo`, `assetOne`, `assetTwo`, `assetThree`, `assetFour`, `createdAt`, `updatedAt`) VALUES
(1, '001', NULL, 'Shirt', 'shirt', 7000, 4999, 5, '001', 'deleted', 1, 1, 'dress', 'r1c1', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1wee logo.jpg', NULL, NULL, NULL, '2023-07-23 19:31:48', '2023-07-23 21:16:05'),
(2, '88', NULL, '88', '55', 66, 55, 5, '8', 'deleted', 2, 9, 'dress', '55', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1WhatsApp Image 2023-07-23 at 23.11.38.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1wa.jpg', NULL, NULL, '2023-07-23 19:38:35', '2023-07-23 19:38:48'),
(3, '002', NULL, 'shirt 2', 'shirt', 10000, 5000, 5, '001', 'deleted', 1, 1, 'dress', 'r1c2', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1weemax_official_1643976519075630.jpg', NULL, NULL, '2023-07-23 19:44:21', '2023-07-23 21:16:08'),
(4, '003', NULL, 'shirt 3', 'shirt', 100, 50, 5, '001', 'deleted', 1, 1, 'dress', 'r1c2', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5795__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5807-01.jpg', NULL, NULL, '2023-07-23 19:56:30', '2023-07-23 21:16:10'),
(5, 'test', NULL, 'Test', 'Test', 1, 1, 1, '113', 'deleted', 5, 18, 'dress', '1', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1J L-3 (1).jpg', NULL, NULL, NULL, '2023-07-24 03:25:49', '2023-07-24 08:31:52'),
(6, '123', NULL, 'Test2', 'asd', 1000, 800, 5, 'asdasd', 'deleted', 5, 18, 'dress', 'asdds', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1Havey Car VJX.png', NULL, NULL, NULL, '2023-07-24 06:44:04', '2023-07-24 08:31:55'),
(7, '001', NULL, 'shirt 1', 'shirt', 1000, 500, 5, '01010', 'deleted', 1, 1, 'dress', 'r1c1', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5748-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5751-01__02-01__02.jpg', NULL, '2023-07-24 06:56:13', '2023-07-24 08:31:58'),
(8, '001', NULL, 'Shirt 1', 'shirt', 20, 10, 5, '001', 'deleted', 1, 1, 'dress', 'r1c1', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5748-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5751-01__02-01__02.jpg', NULL, '2023-07-24 08:36:29', '2023-07-24 17:17:31'),
(9, '001', NULL, 'shirt 2', 'shirt', 20, 10, 5, '001', 'deleted', 1, 1, 'dress', 'r1c2', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5814__01-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5827-01__02.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5815-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5827-01.jpg', '2023-07-24 08:40:32', '2023-07-24 17:17:41'),
(10, '001', NULL, 'shirt 3', 'shirt', 20, 10, 5, '001', 'deleted', 1, 1, 'dress', 'r1d2', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5784-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5795__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5807-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5787-01.jpg', '2023-07-24 08:42:23', '2023-07-24 17:17:37'),
(11, 'MST001', 4, 'Cobalt Blue Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R1C1', 120, 100, 120, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5751-01__02-01__02.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5748-01.jpg', NULL, '2023-07-24 09:28:16', '2023-08-14 12:27:18'),
(12, 'MST002', 4, 'Buttercream Yellow Printed Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R2C1', 120, 100, 120, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5795__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5807-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5784-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5787-01.jpg', '2023-07-24 13:04:05', '2023-08-14 12:27:26'),
(13, 'MST003', 4, 'Cyan Blue Zebra Print Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\".', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R3C1', 120, 100, 120, 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367NIK_5817-01-02.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5815-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5827-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5814__01-01.jpeg.jpg', '2023-07-24 13:14:00', '2023-08-14 12:27:51'),
(14, 'MST004', NULL, 'Charcoal Grey Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\".', 1199, 850, 5, '6205', 'deleted', 1, 1, 'dress', 'R1R4C1', 0, 0, 0, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5836__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5836__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5842__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5845-01.jpg', '2023-07-24 13:20:35', '2023-07-24 13:57:22'),
(15, 'MST005', 4, 'Pastel Green Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\".', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R5C1', 120, 100, 120, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5857-01__01__01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5857-01.jpg', NULL, NULL, '2023-07-24 13:23:56', '2023-08-14 12:28:12'),
(16, 'MST006', 4, 'Snow White shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R6C1', 120, 100, 120, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5889-01-02.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5876-01__01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5871-01.jpg', NULL, '2023-07-24 13:28:21', '2023-08-14 12:28:36'),
(17, 'MST007', 4, 'Athens Grey shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R1C2', 120, 100, 120, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5921-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5898-01__01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5921-01.jpeg.jpg', NULL, '2023-07-24 13:31:43', '2023-08-14 12:28:55'),
(18, 'MST008', 4, 'Shadow Black Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R2C2', 120, 100, 120, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eAdobe_Express_20221105_0916180_1.png', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eAdobe_Express_20221105_0923320_1.png', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5560__01-02.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5567__01-01.jpeg.jpg', '2023-07-24 13:38:44', '2023-08-14 12:29:56'),
(19, 'MST009', 4, 'Black Floral Print Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R3C2', 120, 100, 120, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5583-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5588-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5599__01-01.jpeg.jpg', NULL, '2023-07-24 13:42:56', '2023-08-14 12:33:40'),
(20, 'MST0010', 4, 'Olive Green Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R4C2', 120, 100, 120, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5628-01-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5615-01__02.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5637-01-01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5615-01__01-1.jpg', '2023-07-24 13:47:45', '2023-08-14 12:33:56'),
(21, 'MST0011', 4, 'Bottle Green Print Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R5C2', 120, 100, 120, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5665-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5657__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5680-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5669-01.jpg', '2023-07-24 13:51:45', '2023-08-14 12:34:12'),
(22, 'MST004', 4, 'Charcoal Grey Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 850, 5, '6205', 'published', 1, 1, 'dress', 'R1R4C1', 120, 100, 120, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5729-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5716__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5720__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5701-01.jpg', '2023-07-24 14:00:40', '2023-08-14 12:35:44'),
(23, 'MST0012', 4, 'Satin Black Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R6C2', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e01.jpg', NULL, NULL, NULL, '2023-07-24 17:23:08', '2023-08-14 12:36:07'),
(24, 'MST0013', 4, 'White & Blue Stripe Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R1C3', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e02.jpg', NULL, NULL, NULL, '2023-07-24 17:26:09', '2023-08-14 12:36:22'),
(25, 'MST0014', 4, 'Pink & Grey Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R2C3', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e009.jpg', NULL, NULL, NULL, '2023-07-24 17:31:03', '2023-08-14 12:36:42'),
(26, 'MST0015', 4, 'Satin Navy Blue Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R3C3', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e09.jpg', NULL, NULL, NULL, '2023-07-24 17:33:16', '2023-08-14 12:36:54'),
(27, 'MST0016', 4, 'Elephant Grey Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R4C3', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e07.jpg', NULL, NULL, NULL, '2023-07-24 17:37:37', '2023-08-14 12:37:12'),
(28, 'MST0017', 4, 'Sandal Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R5C3', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e04.jpg', NULL, NULL, NULL, '2023-07-24 17:46:09', '2023-08-14 12:37:25'),
(29, 'MST0018', 4, 'Multi Color Check Shirt 01', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R6C3', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e007.jpg', NULL, NULL, NULL, '2023-07-24 17:59:08', '2023-08-14 12:37:39'),
(30, 'MST0019', 4, 'White & Black Leaf Print Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R1C1', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e006.jpg', NULL, NULL, NULL, '2023-07-24 18:01:49', '2023-08-14 12:38:00'),
(31, 'MST0020', 4, 'Coral Red Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R2C1', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e002.jpg', NULL, NULL, NULL, '2023-07-24 18:03:55', '2023-08-14 12:38:17'),
(32, 'MST0021', 4, 'Navy Blue Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R3C1', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e06.jpg', NULL, NULL, NULL, '2023-07-24 18:06:31', '2023-08-14 12:38:32'),
(33, 'MST0022', 4, 'Denim Blue Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R4C1', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e003.jpg', NULL, NULL, NULL, '2023-07-24 18:09:24', '2023-08-14 12:38:48'),
(34, 'MST0023', 4, 'Multi Color Check Shirt 02', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R5C1', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e001.jpg', NULL, NULL, NULL, '2023-07-24 18:12:26', '2023-08-14 12:39:04'),
(35, 'MST0024', 4, 'Forest Green Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R6C1', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e03.jpg', NULL, NULL, NULL, '2023-07-24 18:35:24', '2023-08-14 12:39:19'),
(36, 'MST0025', 4, 'Black & White Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R1C2', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e05.jpg', NULL, NULL, NULL, '2023-07-24 18:37:41', '2023-08-14 12:39:35'),
(37, 'MST0026', 4, 'Yale Blue Check shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 999, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R2C2', 80, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e08.jpg', NULL, NULL, NULL, '2023-07-24 18:40:41', '2023-08-14 12:39:59'),
(38, 'MTP001', 6, 'Break the Rules Tanktop', 'A cotton tank top is a lightweight and airy essential, crafted from comfy cotton for superior comfort and a relaxed fit, ideal for casual wear and active pursuits.', 399, 199, 5, '61091000', 'published', 1, 14, 'dress', 'R2R3C2', 20, 15, 20, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195365271.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195383236.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195386899.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195385168.webp.webp', '2023-07-24 19:28:40', '2023-08-14 12:44:33'),
(39, 'MTP002', 6, 'Train Insane Tanktop', 'A cotton tank top is a lightweight and airy essential, crafted from comfy cotton for superior comfort and a relaxed fit, ideal for casual wear and active pursuits.', 399, 199, 5, '61091000', 'published', 1, 14, 'dress', 'R2R4C2', 20, 15, 20, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-3.webp.webp', '2023-07-24 19:35:52', '2023-08-14 12:44:51'),
(40, 'MTT001', 6, 'Explore Olive Green T-Shirt', 'The smoothy cotton t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion.', 499, 299, 5, '61091000', 'published', 1, 2, 'dress', 'R2R5C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-3.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-4.webp.webp', '2023-07-24 20:24:57', '2023-08-14 12:45:12'),
(41, 'MTT002', 6, 'Inspiring White T-Shirt', 'The smoothy cotton half sleeve crew neck t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion.', 499, 299, 5, '61091000', 'published', 1, 2, 'dress', 'R2R6C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-3.webp.webp', '2023-07-24 20:29:56', '2023-08-14 12:45:33'),
(42, 'MTT003', 6, 'Blush Pink T-Shirt', 'The smoothy cotton half sleeve crew neck t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion.', 499, 299, 5, '61091000', 'published', 1, 2, 'dress', 'R2R1C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-3.webp.webp', '2023-07-24 20:37:41', '2023-08-14 12:45:57'),
(43, 'MTT004', 6, 'Sap Green T-Shirt', 'The smoothy cotton half sleeve crew neck t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion', 499, 299, 5, '61091000', 'published', 1, 2, 'dress', 'R2R2C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST67-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST67-3.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST67-2.webp.webp', NULL, '2023-07-24 20:40:51', '2023-08-14 12:46:14'),
(44, 'MJR001', 8, 'Red - Attitude Jogger', 'The Men\'s cotton jogger is the epitome of comfort, featuring a soft and cozy fabric blend that allows for unrestricted movement. With its trendy and athletic design, these joggers are a perfect choice for both lounging at home and stepping out in style.', 599, 399, 5, '61091000', 'published', 1, 4, 'dress', 'R2R3C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2Red Coloured Attitude jogger.png', NULL, NULL, NULL, '2023-07-24 20:48:00', '2023-08-17 10:00:53'),
(45, 'MJR002', 8, 'Black - Limitless Jogger', 'The Men\'s cotton jogger is the epitome of comfort, featuring a soft and cozy fabric blend that allows for unrestricted movement. With its trendy and athletic design, these joggers are a perfect choice for both lounging at home and stepping out in style.', 599, 399, 5, '61091000', 'published', 1, 4, 'dress', 'R2R4C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2Black Limitless Men\'s Jogger.png', NULL, NULL, NULL, '2023-07-24 20:51:27', '2023-08-17 10:01:27'),
(46, 'MJR003', 8, 'Blue - Hope Jogger', 'The Men\'s cotton jogger is the epitome of comfort, featuring a soft and cozy fabric blend that allows for unrestricted movement. With its trendy and athletic design, these joggers are a perfect choice for both lounging at home and stepping out in style.', 599, 399, 5, '61091000', 'published', 1, 4, 'dress', 'R2R5C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2Hope Printed Blue Coloured Jogger.png', NULL, NULL, NULL, '2023-07-24 20:53:31', '2023-08-17 10:02:05'),
(47, 'WKI001', 5, 'White Floral Printed Kurti', 'Versatile design and vibrant patterns of this cotton kurti makes it a perfect choice for both casual and semi-formal occasions. Elevate your style with this comfortable and chic kurti, ideal for the modern woman seeking both comfort and fashion.', 999, 650, 5, '6210', 'published', 2, 8, 'dress', 'R2R6C3', 80, 60, 80, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-3.webp.webp', '2023-07-24 21:04:47', '2023-08-14 12:50:08'),
(48, 'WKI002', 5, 'Pink Embroidery Kurti', 'Versatile design and vibrant patterns of this cotton kurti makes it a perfect choice for both casual and semi-formal occasions. Elevate your style with this comfortable and chic kurti, ideal for the modern woman seeking both comfort and fashion.', 999, 650, 5, '6210', 'published', 2, 8, 'dress', 'R3R1C1', 80, 60, 80, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-3.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-1.webp.webp', NULL, '2023-07-24 21:09:13', '2023-08-14 12:50:43'),
(49, 'WJN001', NULL, 'Dark Blue Slimfit Jeans', '\"Flattering and form-fitting, our women\'s slim fit jeans accentuate curves with a sleek, stylish silhouette, perfect for versatile everyday wear.\"', 999, 699, 5, '6205', 'published', 2, 11, 'dress', 'R3R2C1', 60, 50, 60, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815087.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815082.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815060.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815064.jpg', '2023-07-25 11:17:11', '2023-08-16 09:53:19'),
(50, 'WJN002', NULL, 'Light Blue Slim Jeans', '\"Flattering and form-fitting, our women\'s slim fit jeans accentuate curves with a sleek, stylish silhouette, perfect for versatile everyday wear.\"', 999, 699, 5, '6205', 'published', 2, 11, 'dress', 'R3R3C1', 60, 50, 60, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-AWJ001-5.webp.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-AWJ001-3.webp_1.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-AWJ001-1.webp_1.jpg', NULL, '2023-07-25 11:20:17', '2023-08-16 09:54:15'),
(51, 'WKI003', NULL, 'Mustard Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '6210', 'deleted', 2, 8, 'dress', 'R3R4C1', 0, 0, 0, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(4).jpg', '2023-07-25 11:41:04', '2023-07-25 12:06:17'),
(52, 'WKI004', 5, 'Celeste Blue Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '6210', 'published', 2, 8, 'dress', 'R3R5C1', 60, 50, 60, 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367TFFSET037 (4).jpg', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367TFFSET037 (5).jpg', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367TFFSET037 (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET037 (3).jpg', '2023-07-25 11:47:16', '2023-08-14 12:52:04'),
(53, 'WKI005', 5, 'Lavender Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '6210', 'published', 2, 8, 'dress', 'R3R6C1', 60, 50, 60, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (1).jpeg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (3).jpeg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (2).jpeg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (4).jpeg', '2023-07-25 11:52:18', '2023-08-14 12:52:21'),
(54, 'WKI003', 5, 'Mustard Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '6210', 'published', 2, 8, 'dress', 'R3R4C1', 60, 50, 60, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(1).jpg', '2023-07-25 12:36:25', '2023-08-14 12:52:43'),
(55, 'WKI006', 5, 'Pastel Pink Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '621142', 'published', 2, 8, 'dress', 'R3R1C2', 60, 50, 60, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (5).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (6).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (2).jpg', '2023-07-25 12:44:19', '2023-08-14 12:53:07'),
(56, 'WKI008', 5, 'Floral Red Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R3C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (7).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (3).jpg', '2023-07-25 12:56:01', '2023-08-14 12:53:32'),
(57, 'WKI009', 5, 'Floral Blue Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R4C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (6).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (2).jpg', '2023-07-25 13:05:27', '2023-08-14 12:53:51'),
(58, 'WKI0010', 5, 'Multicolor Stripe Single Kurti 01', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R5C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (7).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (2).jpg', '2023-07-25 13:09:40', '2023-08-14 12:54:07'),
(59, 'WKI0011', 5, 'Multicolor Stripe Single Kurti 02', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R6C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (5).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (4).jpg', '2023-07-25 13:13:32', '2023-08-14 12:54:34'),
(60, 'WKI0012', 5, 'Blue Leaf Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R1C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (7).jpg', '2023-07-25 13:17:29', '2023-08-14 12:54:56'),
(61, 'WKI0013', 5, 'Pink Leaf Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R2C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (7).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (4).jpg', '2023-07-25 13:21:02', '2023-08-14 12:55:16'),
(62, 'WKI0015', 5, 'Pastel Green Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"\n', 699, 399, 5, '621142', 'published', 2, 8, 'dress', 'R3R4C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (1).png', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (3).png', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (2).png', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (5).png', '2023-07-25 13:34:49', '2023-08-14 12:55:41'),
(63, 'WKI0016', 5, 'Sage Green Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 699, 399, 5, '621142', 'published', 2, 8, 'dress', 'R3R5C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2686.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2678.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2676.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2677.jpg', '2023-07-25 13:38:21', '2023-08-14 12:55:56'),
(64, 'WKI0017', 5, 'Mustard Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 699, 399, 5, '621142', 'published', 2, 8, 'dress', 'R3R6C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2761.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2764.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2752.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2760.jpg', '2023-07-25 13:41:21', '2023-08-14 12:57:02'),
(65, 'WKI0018', 5, 'Black Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 699, 399, 5, '621142', 'published', 2, 8, 'dress', 'R4R1C1', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK-021BLACK (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK-021BLACK (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK-021BLACK (1).jpg', NULL, '2023-07-25 13:47:19', '2023-08-14 12:57:48'),
(66, 'WKI0019', 5, 'Midnight Blue Ethnic Croptop+Skirt+Jacket', 'A stylish and comfortable ensemble, the Crepe Kurta Dupatta Pant set features a flowing crepe kurta, combined with matching dupatta and pants, perfect for a chic and effortless look. Elevate your fashion game with this versatile outfit that seamlessly blends traditional elements with modern flair.', 1499, 699, 5, '621142', 'published', 2, 8, 'dress', 'R4R2C1', 80, 60, 80, 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c7793673J1A9264 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9287 copy.jpg', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c7793673J1A9251 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9247 copy.jpg', '2023-07-25 13:55:32', '2023-08-14 12:58:15'),
(67, 'WKI0020', 5, 'Mustard Kurti+Pant+Dupatta', 'A stylish and comfortable ensemble, the Crepe Kurta Dupatta Pant set features a flowing crepe kurta, combined with matching dupatta and pants, perfect for a chic and effortless look. Elevate your fashion game with this versatile outfit that seamlessly blends traditional elements with modern flair.', 1499, 699, 5, '621142', 'published', 2, 8, 'dress', 'R4R3C1', 80, 60, 80, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A8995 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9019 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A8990 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A8978 copy.jpg', '2023-07-25 14:00:53', '2023-08-14 12:58:29'),
(68, 'WKI0021', 5, 'Peach Kurti+Pant+Dupatta', 'A stylish and comfortable ensemble, the Crepe Kurta Dupatta Pant set features a flowing crepe kurta, combined with matching dupatta and pants, perfect for a chic and effortless look. Elevate your fashion game with this versatile outfit that seamlessly blends traditional elements with modern flair.', 1499, 699, 5, '621142', 'published', 2, 8, 'dress', 'R4R4C1', 80, 60, 80, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9160 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9148 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9129 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9171 copy.jpg', '2023-07-25 14:04:57', '2023-08-14 12:58:49'),
(69, 'WKI0022JN22VI', 5, 'Hot Pink Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 5, '6210', 'published', 2, 8, 'dress', 'R4R5C1', 50, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273221535_650500316073172_1057424652865625554_n.webp', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48270218698_934656040748872_7189051524487323808_n.webp', NULL, NULL, '2023-07-26 10:21:54', '2023-08-14 12:59:19'),
(70, 'WKI0023JN22VI', 5, 'Pear Green Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 5, '6210', 'published', 2, 8, 'dress', 'R4R6C1', 50, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273174017_677635843260383_3335791871112175473_n.webp', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273179727_1333348870459799_7108494274014086981_n.webp', NULL, NULL, '2023-07-26 10:25:53', '2023-08-14 12:59:36'),
(71, 'WKI0024JN22VI', 5, 'Burgundy Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 5, '6210', 'published', 2, 8, 'dress', 'R4R1C2', 50, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG-20220202-WA0001.jpg', NULL, NULL, NULL, '2023-07-26 10:29:33', '2023-08-14 12:59:52'),
(72, 'WKI0025JN22V1', 5, 'White & Pink Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 5, '6210', 'published', 2, 8, 'dress', 'R4R2C2', 50, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG-20220202-WA0004.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273109448_727446118196962_4626285009224329447_n.webp', NULL, NULL, '2023-07-26 10:32:29', '2023-08-14 13:00:08'),
(73, 'WKI0026JN22VI', 5, 'Pistachio Single Embroidery Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 5, '6210', 'published', 2, 8, 'dress', 'R4R3C2', 50, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48260384354_144109791353346_7592957446100256937_n.webp', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273369741_1843917939134214_8986923250803387691_n.webp', NULL, NULL, '2023-07-26 10:39:55', '2023-08-14 13:00:23'),
(74, 'WKI0027JN22VI', 5, 'Black & White Stripe Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 550, 5, '6210', 'published', 2, 8, 'dress', 'R4R4C2', 50, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG-20220202-WA0003.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273138451_345107224130027_3611523701575332065_n.webp', NULL, NULL, '2023-07-26 10:42:30', '2023-08-14 13:00:39'),
(75, 'WKI007JLY23RA', 5, 'Black Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '621142', 'published', 2, 8, 'dress', 'R3R2C2', 60, 50, 60, 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8B1.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8B3.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8B4.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8WhatsApp Image 2023-07-26 at 16.15.59.jpg', '2023-07-26 10:49:38', '2023-08-14 13:01:17'),
(76, 'WKI0014JLY23RA', NULL, 'Black Floral Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'deleted', 2, 8, 'dress', 'R3R3C3', 0, 0, 0, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482.jpg', NULL, NULL, '2023-07-26 10:51:52', '2023-07-26 10:51:59'),
(77, 'WKI0014JLY23RA', 5, 'Black Floral Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R3C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4822.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4833.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4844.jpg', '2023-07-26 10:58:36', '2023-08-14 13:01:43'),
(78, 'WTT001JLY23SE', 7, 'Yellow Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R1C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fproducts-WHST19-1.webp.webp', NULL, NULL, NULL, '2023-07-26 19:02:08', '2023-08-14 13:03:04'),
(79, 'WTT002JLY23SE', 7, 'Peach Women\'s T-shirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R2C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fPeach Single & Happy Women\'s Half Sleeve T-shirt.png', NULL, NULL, NULL, '2023-07-26 19:04:36', '2023-08-14 13:02:08'),
(80, 'WTT003JLY23SE', 7, 'Cream Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R3C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fQ t shirt.webp', NULL, NULL, NULL, '2023-07-26 19:08:56', '2023-08-14 13:02:57'),
(81, 'WTT004OCT21TF', 7, 'White Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R4C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fwepik-export-20230726185547bgxX.png', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fwepik-export-202307261900160i6I.png', NULL, NULL, '2023-07-26 19:30:29', '2023-08-14 13:03:22'),
(82, 'WTT005OCT21TF', 7, 'Black Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R5C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230727_010221.png', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230727_010257.png', NULL, NULL, '2023-07-26 19:37:45', '2023-08-14 13:03:38'),
(83, 'WTT006OCT21TF', 7, 'Fluorescent Green Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R6C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fweemax_official_1643976519075630.jpg', NULL, NULL, NULL, '2023-07-26 19:52:05', '2023-08-14 13:03:53'),
(84, 'WTT007OCT21TF', 7, 'Red Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R5R1C1', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fweemax_official_1643976491775806.jpg', NULL, NULL, NULL, '2023-07-26 19:53:54', '2023-08-14 13:04:12'),
(85, 'MDI001OCT21SMA', NULL, 'Silver Jari Cotton Dhoti (2m)', '\"Unleash your inner regal charm with our Silver Border Dhoti, a stunning and traditional garment adorned with a shimmering silver border that adds a touch of opulence to any cultural celebration or special occasion.\"', 400, 250, 5, '52082910', 'published', 1, 6, 'dress', 'R5R2C1', 30, 20, 30, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230726_173543.jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_fb8d1350-87e4-40bb-a07f-94d9be8050ed_1080x.jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f3_c14ba2f6-524b-4437-8e83-ff96fe5f2b54_900x.jpg', NULL, '2023-07-26 20:14:02', '2023-08-16 09:55:07'),
(86, '212', NULL, 'shoe', 'ss', 1, 1, 5, '21', 'deleted', 1, 1, 'dress', '91', 0, 0, 0, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f3_c14ba2f6-524b-4437-8e83-ff96fe5f2b54_900x.jpg', NULL, NULL, NULL, '2023-07-26 20:55:37', '2023-07-27 08:31:42'),
(87, '444', NULL, 'sge', 'ssss', 1, 1, 5, '444', 'deleted', 2, 11, 'accessories', '22', 0, 0, 0, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230726_173543.jpg', NULL, NULL, NULL, '2023-07-27 07:07:11', '2023-07-27 08:31:46'),
(88, '001', NULL, 'pen', 'ttt', 1, 1, 5, '333', 'deleted', 4, 17, 'accessories', '2', 0, 0, 0, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fweemax_official_1643282691900876.jpg', NULL, NULL, NULL, '2023-07-27 07:16:19', '2023-07-27 08:31:49');
INSERT INTO `Product` (`productId`, `code`, `sizeChartId`, `productTitle`, `description`, `mrpPrice`, `normalPrice`, `gst`, `hsn`, `status`, `categoryId`, `subCategoryId`, `type`, `inventorySlab`, `referralBonus`, `refundFrom`, `refundTo`, `assetOne`, `assetTwo`, `assetThree`, `assetFour`, `createdAt`, `updatedAt`) VALUES
(89, 'WLG001SEP21GC', NULL, 'Black Stretchable Legging', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'draft', 2, 15, 'dress', 'R5R3C1', 0, 0, 0, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL5.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL6.webp', NULL, '2023-07-27 07:43:55', '2023-07-27 09:42:12'),
(90, 'WLG002SEP21GC', NULL, 'Yellow Stretchable Legging', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R4C1', 40, 30, 40, 'https://api.weemax.in/api/page/public/bbdad7af-d03f-48c9-ad8f-bb3eae4b3f3823.webp', 'https://api.weemax.in/api/page/public/bbdad7af-d03f-48c9-ad8f-bb3eae4b3f38ew.webp', NULL, NULL, '2023-07-27 07:48:14', '2023-08-16 09:55:41'),
(91, 'WLG001SEP21GC', NULL, 'White Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'draft', 2, 15, 'dress', 'R5RC1', 0, 0, 0, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_1.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_4.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_5.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_6.webp', '2023-07-27 07:52:33', '2023-07-27 07:52:33'),
(92, 'WLG004SEP21GC', NULL, 'Pink Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R6C1', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_3_acd41008-eb1d-48b3-a24f-f01bb9280990.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_4_fdea9f2c-527b-4262-aa1a-d642f097b165.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_5_d6d9c10b-dad7-46c9-b2ba-f1ee492615b3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_1_51909609-34f6-4b1c-9035-40e08901dded.webp', '2023-07-27 07:57:11', '2023-08-16 09:56:01'),
(93, 'WLG005SEP21GC', NULL, 'Red Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R1C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-460533135-red-MODEL.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-460533135-red-MODEL3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-460533135-red-MODEL2.webp', NULL, '2023-07-27 07:59:13', '2023-08-16 09:56:16'),
(94, 'WLG006SEP21GC', NULL, 'Royal Blue Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R2C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f2_69221e17-2599-4a70-b6cf-5da4b7a0e853.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f3_47be7f00-a889-4326-b12b-b3ee3d8b4c7d.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f4_4cb1d58a-3010-49bc-9b1c-674e3630723c.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5_d6d63e2d-3b2c-4ea6-8dd0-76a9eef8116a.webp', '2023-07-27 08:01:17', '2023-08-16 09:56:30'),
(95, 'WLG007SEP21GC', NULL, 'Mocassin Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R3C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_1.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_4.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_5.webp', '2023-07-27 08:03:22', '2023-08-16 09:56:47'),
(96, 'WLG008SEP21GC', NULL, 'Orange Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R4C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-464887137-orange-MODEL3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-464887137-orange-MODEL7.webp', NULL, NULL, '2023-07-27 08:05:28', '2023-08-16 09:57:04'),
(97, 'WKI0028JLY23RA', NULL, 'Cream Kurti+Pant Set', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti & Pant, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 999, 649, 5, '621142', 'published', 2, 8, 'dress', 'R4R5C2', 80, 60, 80, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (3).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (5).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (1).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (7).jpg', '2023-07-27 08:36:26', '2023-08-16 09:59:29'),
(98, 'WKI0029JLY23RA', 5, 'Garnet Pink Kurti & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 649, 5, '621142', 'published', 2, 8, 'dress', 'R4R6C2', 60, 50, 60, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (5).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (7).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (2).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (1).jpg', '2023-07-27 08:41:21', '2023-08-16 10:07:49'),
(99, 'MSE001AUG21BX', NULL, 'Men\'s White Casual Shoe', '\"Step into laid-back sophistication with our Men\'s Casual Shoe, a perfect fusion of style and ease, ensuring a seamless transition from day to night.\"', 1200, 750, 12, '6402', 'published', 1, 3, 'dress', 'COMMON', 70, 60, 70, 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8IMG-20210808-WA0006 (1).jpg', NULL, NULL, NULL, '2023-07-27 09:26:30', '2023-08-16 10:00:47'),
(100, 'MSE002NOV21BX', NULL, 'Men\'s Navy Blue Loafer', '\"Experience refined comfort and effortless style with our Loafers, a versatile footwear option that effortlessly transitions from formal events to casual outings, making them a must-have addition to your wardrobe.\"', 1200, 750, 12, '6402', 'published', 1, 3, 'dress', 'Common', 70, 60, 70, 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8026.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8023.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8025.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8024.jpg', '2023-07-27 09:30:16', '2023-08-16 10:01:02'),
(101, 'MWH001', NULL, 'Men\'s SS Analog Watch', '\"Timeless sophistication meets precision engineering in this sleek and stylish men\'s watch, the perfect blend of form and function for any occasion.\"', 999, 550, 18, '9102', 'published', 1, 5, 'accessories', 'Common', 60, 50, 60, 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49J-3.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49J-1.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49J-2.jpg', NULL, '2023-07-27 12:10:18', '2023-08-16 10:01:33'),
(102, 'WWH001', NULL, 'Women\'s SS Analog Watch', '\"Elegance meets precision with our women\'s analog watch, featuring a timeless design and reliable quartz movement for the perfect blend of style and functionality.\"', 999, 550, 18, '9102', 'published', 2, 12, 'accessories', 'Common', 60, 50, 60, 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49L-2.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49L-3.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49L-1.jpg', NULL, '2023-07-27 12:12:40', '2023-08-16 10:01:46'),
(103, 'CWH001', NULL, 'Couple\'s SS Analog Watch', '\"Embrace a shared journey with our couple\'s analog watch, crafted with precision engineering and a symmetrical design, symbolizing the timeless bond you share with your partner.\"', 1999, 999, 18, '9102', 'published', 4, 17, 'accessories', 'Common', 120, 100, 120, 'https://api.weemax.in/api/page/public/8a187a80-b0d8-4dcb-90af-ed834f0c534fJ L-3.jpg', NULL, NULL, NULL, '2023-07-27 12:20:51', '2023-08-16 10:02:09');

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
(41, 15, 'S', 'Pastel Green', '#7BB5C9', 2, 'active', '2023-07-24 13:23:56', '2023-08-01 14:48:09'),
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
(126, 38, 'S', 'Black', '#000000', 1, 'active', '2023-07-24 19:28:40', '2023-08-01 20:20:06'),
(127, 38, 'M', 'Black', '#000000', 2, 'active', '2023-07-24 19:28:40', '2023-07-27 14:35:44'),
(128, 38, 'XL', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40', '2023-07-24 19:28:40'),
(129, 38, 'L', 'Black', '#000000', 2, 'active', '2023-07-24 19:28:40', '2023-07-27 14:46:41'),
(130, 38, 'XXL', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40', '2023-07-24 19:28:40'),
(131, 39, 'S', 'Pantone Red', '#874930', 1, 'active', '2023-07-24 19:35:52', '2023-08-01 20:20:06'),
(132, 39, 'M', 'Pantone Red', '#874930', 2, 'active', '2023-07-24 19:35:52', '2023-07-27 12:58:13'),
(133, 39, 'XL', 'Pantone Red', '#874930', 2, 'active', '2023-07-24 19:35:52', '2023-07-28 08:45:54'),
(134, 39, 'L', 'Pantone Red', '#874930', 3, 'active', '2023-07-24 19:35:52', '2023-07-24 19:35:52'),
(135, 39, 'XXL', 'Pantone Red', '#874930', 3, 'active', '2023-07-24 19:35:52', '2023-07-24 19:35:52'),
(136, 40, 'S', 'Olive Green', '#2B352F', 2, 'active', '2023-07-24 20:24:57', '2023-07-30 20:02:03'),
(137, 40, 'L', 'Olive Green', '#2B352F', 2, 'active', '2023-07-24 20:24:57', '2023-07-27 16:46:34'),
(138, 40, 'XL', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(139, 40, 'XXL', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(140, 40, 'M', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(141, 41, 'S', 'White', '#FFFFFF', 1, 'active', '2023-07-24 20:29:56', '2023-08-15 04:22:15'),
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
(266, 66, 'S', 'Midnight Blue ', '#16385B', 3, 'active', '2023-07-25 13:55:32', '2023-08-07 07:03:02'),
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
(390, 11, 'S', 'Cobalt Blue', '#0852A7', 0, 'active', '2023-07-28 03:16:47', '2023-08-01 18:58:18'),
(391, 11, 'M', 'Cobalt Blue', '#0852A7', 6, 'active', '2023-07-28 03:16:50', '2023-07-28 03:17:11'),
(392, 11, 'L ', 'Cobalt Blue', '#0852A7', 0, 'active', '2023-07-28 03:16:51', '2023-07-28 03:17:02'),
(393, 11, 'XL', 'Cobalt Blue', '#0852A7', 5, 'removed', '2023-07-28 03:16:52', '2023-07-28 03:18:29'),
(394, 11, 'XXL', 'Cobalt Blue', '#0852A7', 4, 'removed', '2023-07-28 03:16:55', '2023-07-28 03:18:30'),
(395, 12, 'S', 'Buttercream Yellow', '#F5EEB8', 0, 'active', '2023-07-28 03:17:47', '2023-08-01 14:48:09'),
(396, 12, 'M', 'Buttercream Yellow', '#F5EEB8', 0, 'active', '2023-07-28 03:17:47', '2023-08-04 14:17:26'),
(397, 12, 'L', 'Buttercream Yellow', '#F5EEB8', 6, 'active', '2023-07-28 03:17:48', '2023-08-14 20:10:31'),
(398, 12, 'XL', 'Buttercream Yellow', '#F5EEB8', 3, 'active', '2023-07-28 03:17:48', '2023-07-28 03:18:07'),
(399, 12, 'XXL', 'Buttercream Yellow', '#F5EEB8', 2, 'active', '2023-07-28 03:17:49', '2023-07-28 03:18:09'),
(400, 11, 'L', 'Cobalt Blue', '#0852A7', 6, 'active', '2023-07-28 03:18:28', '2023-07-28 03:18:40'),
(401, 11, 'XL', 'Cobalt Blue', '#0852A7', 5, 'active', '2023-07-28 03:18:41', '2023-07-28 03:18:46'),
(402, 11, 'XXL', 'Cobalt Blue', '#0852A7', 3, 'active', '2023-07-28 03:18:47', '2023-07-28 15:34:25'),
(403, 77, 'S', 'Black', '#000000', 3, 'active', '2023-07-28 17:18:56', '2023-07-28 17:23:14'),
(404, 77, 'M', 'Black', '#000000', 4, 'active', '2023-07-28 17:18:58', '2023-07-28 17:19:15'),
(405, 77, 'L', 'Black', '#000000', 4, 'active', '2023-07-28 17:18:58', '2023-07-28 17:19:15'),
(406, 77, 'XL', 'Black', '#000000', 4, 'active', '2023-07-28 17:18:59', '2023-07-28 17:19:15'),
(407, 77, 'XXL', 'Black', '#000000', 4, 'active', '2023-07-28 17:19:00', '2023-07-28 17:19:16'),
(408, 11, 'S', 'Cobalt Blue', '#0852A7', 5, 'active', '2023-08-02 13:22:04', '2023-08-02 13:22:32'),
(409, 12, 'S', 'Buttercream Yellow', '#F5EEB8', 3, 'active', '2023-08-02 13:24:51', '2023-08-02 13:24:56'),
(410, 104, 'as', 'asd', '#CB8181', 3, 'active', '2023-08-11 14:22:56', '2023-08-11 14:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `ProductOrder`
--

CREATE TABLE `ProductOrder` (
  `orderId` bigint(20) NOT NULL,
  `orderUUID` text NOT NULL,
  `userId` bigint(20) NOT NULL,
  `addressId` bigint(20) NOT NULL,
  `productTotal` varchar(50) NOT NULL,
  `shippingCharge` varchar(50) NOT NULL,
  `taxes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`taxes`)),
  `subTotal` varchar(50) NOT NULL,
  `referralBonus` int(11) NOT NULL DEFAULT 0,
  `refundAmount` int(11) NOT NULL DEFAULT 0,
  `status` varchar(15) NOT NULL DEFAULT 'ordered' COMMENT 'ordered, dispatched, transit, delivered',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ProductOrder`
--

INSERT INTO `ProductOrder` (`orderId`, `orderUUID`, `userId`, `addressId`, `productTotal`, `shippingCharge`, `taxes`, `subTotal`, `referralBonus`, `refundAmount`, `status`, `createdAt`, `updatedAt`) VALUES
(1, '59f47cfc-592c-4ccc-a2b3-e725da5149b7', 1, 1, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 0, 0, 'delivered', '2023-07-27 12:58:13', '2023-08-15 08:39:57'),
(2, 'aca4ee70-8b18-4ae2-b048-84f550318e21', 2, 2, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 0, 0, 'delivered', '2023-07-27 13:07:27', '2023-08-15 08:39:59'),
(3, '18be0764-3620-44a9-81c1-7a4b57c778b2', 3, 3, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 0, 0, 'delivered', '2023-07-27 13:44:42', '2023-08-02 13:14:02'),
(4, '4dce29d0-832b-48c3-ac20-954a8a6cfafb', 7, 6, '550', '50', '{\"sgst\":41.95,\"cgst\":41.95}', '600', 0, 0, 'delivered', '2023-07-27 14:06:21', '2023-08-02 13:14:29'),
(5, '5ca99ce5-52ab-4139-90d2-584b177bf671', 8, 5, '470', '50', '{\"sgst\":11.19,\"cgst\":11.19}', '520', 0, 0, 'delivered', '2023-07-27 14:15:46', '2023-08-02 13:15:38'),
(6, '64fa186e-56b2-494d-86db-53f838393837', 4, 4, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 0, 0, 'delivered', '2023-07-27 14:35:44', '2023-08-15 08:40:03'),
(7, 'e77dad06-a3e7-4ae5-98dd-d4ee21ac4afa', 9, 11, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 0, 0, 'delivered', '2023-07-27 14:36:48', '2023-08-15 08:40:05'),
(8, '30bb8f84-a5e6-431e-a040-df3a35ef71b7', 14, 12, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 0, 0, 'delivered', '2023-07-27 14:46:41', '2023-08-02 13:17:36'),
(9, '2473345c-89c8-4409-91b6-7b8e12d3e891', 21, 13, '399', '50', '{\"sgst\":9.5,\"cgst\":9.5}', '449', 0, 0, 'delivered', '2023-07-27 16:36:13', '2023-08-02 13:14:34'),
(10, 'ef419ce6-b97e-40d0-b5e2-cf8ce41de0a4', 24, 14, '299', '50', '{\"igst\":14.24}', '349', 0, 0, 'delivered', '2023-07-27 16:46:34', '2023-08-15 08:40:09'),
(11, 'a93e4a63-d6e6-4997-b85d-09af1f49505b', 9, 16, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 0, 0, 'delivered', '2023-07-27 18:06:28', '2023-08-02 13:13:31'),
(12, 'c743abc5-0c29-4985-87fa-5f3671fce90c', 13, 21, '2198', '100', '{\"sgst\":52.33,\"cgst\":52.33}', '2298', 0, 0, 'delivered', '2023-07-28 08:45:54', '2023-08-02 13:17:23'),
(13, '60e44b29-c689-4b2e-a85d-6e07e391ab7b', 57, 29, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 0, 0, 'delivered', '2023-07-28 10:03:04', '2023-08-02 13:16:53'),
(14, 'f0a7c054-67fb-4b27-bd5b-5fe0cf21a76c', 76, 30, '1149', '50', '{\"sgst\":27.36,\"cgst\":27.36}', '1199', 0, 0, 'delivered', '2023-07-28 15:34:25', '2023-08-02 13:12:04'),
(15, '5c8a69d3-d91b-4bf7-a2c5-942cf13282dc', 72, 31, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 0, 0, 'delivered', '2023-07-28 17:23:14', '2023-08-02 13:12:45'),
(17, '8e5d2342-d732-4d8d-bd0c-b5c310f0822b', 100, 37, '850', '50', '{\"sgst\":20.24,\"cgst\":20.24}', '900', 0, 0, 'delivered', '2023-07-30 12:00:54', '2023-08-02 13:17:28'),
(20, '708a1302-91c9-471c-a9f2-f975657de80d', 7, 6, '699', '50', '{\"sgst\":16.64,\"cgst\":16.64}', '749', 0, 0, 'delivered', '2023-07-31 07:39:30', '2023-08-02 13:14:43'),
(27, '048b7474-dbb1-449d-afa5-a789fac8df40', 2, 45, '699', '50', '{\"sgst\":16.64,\"cgst\":16.64}', '749', 0, 0, 'delivered', '2023-08-07 07:03:02', '2023-08-15 08:40:14'),
(48, 'a6f774fa-7dde-450d-88db-0286fdfa1225', 7, 6, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 40, 39, 'ordered', '2023-08-15 04:22:15', '2023-08-15 04:22:15');

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
  `status` varchar(50) NOT NULL DEFAULT 'ordered' COMMENT 'ordered, canceled, returnRequested, returnApproved, returnCanceled, returned',
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
(12, 12, 13, 15, 1, 'XL', 'Pastel Green', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'returnApproved', 'normal', '2023-07-28 08:45:54'),
(13, 12, 13, 61, 1, 'S', 'Pink', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'returnApproved', 'normal', '2023-07-28 08:45:54'),
(14, 12, 13, 39, 1, 'XL', 'Pantone Red', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'returnApproved', 'normal', '2023-07-28 08:45:54'),
(15, 12, 13, 22, 1, 'XL', 'Charcoal Grey', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'returnApproved', 'normal', '2023-07-28 08:45:54'),
(16, 13, 57, 38, 1, 'S', 'Black', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-07-28 10:03:04'),
(17, 14, 76, 11, 1, 'XXL', 'Cobalt Blue', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-07-28 15:34:25'),
(18, 14, 76, 42, 1, 'XL', 'Blush pink', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-07-28 15:34:25'),
(19, 15, 72, 77, 1, 'S', 'Black', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-07-28 17:23:14'),
(22, 17, 100, 16, 1, 'XL', 'Snow White', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-07-30 12:00:54'),
(27, 20, 7, 29, 1, 'XL', 'Multi Color', '{\"sgst\":16.64,\"cgst\":16.64}', '699', 'ordered', 'normal', '2023-07-31 07:39:30'),
(36, 25, 10, 41, 1, 'S', 'White', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-08-02 04:05:32'),
(38, 27, 2, 66, 1, 'S', 'Midnight Blue ', '{\"sgst\":16.64,\"cgst\":16.64}', '699', 'ordered', 'normal', '2023-08-07 07:03:02'),
(39, 28, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-09 11:40:16'),
(40, 29, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'offer', '2023-08-10 14:08:49'),
(41, 30, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'offer', '2023-08-10 14:12:14'),
(42, 31, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'offer', '2023-08-10 14:17:52'),
(43, 32, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'offer', '2023-08-10 14:18:19'),
(44, 33, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'offer', '2023-08-10 14:20:33'),
(45, 34, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'offer', '2023-08-10 14:20:59'),
(46, 42, 129, 12, 2, 'L', 'Buttercream Yellow', '{\"sgst\":40.48,\"cgst\":40.48}', '1700', 'ordered', 'offer', '2023-08-10 14:37:53'),
(47, 43, 129, 12, 2, 'L', 'Buttercream Yellow', '{\"sgst\":40.48,\"cgst\":40.48}', '1700', 'ordered', 'offer', '2023-08-10 14:39:36'),
(48, 44, 129, 12, 2, 'L', 'Buttercream Yellow', '{\"sgst\":40.48,\"cgst\":40.48}', '1700', 'ordered', 'offer', '2023-08-10 14:40:29'),
(49, 45, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'returnApproved', 'normal', '2023-08-10 15:20:41'),
(50, 46, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-11 17:33:55'),
(51, 47, 31, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-14 20:10:31'),
(52, 48, 7, 41, 1, 'S', 'White', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'cancelled', 'normal', '2023-08-15 04:22:15');

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
(96, 107, 7, '2023-07-31 15:17:26'),
(97, 108, 10, '2023-08-02 04:20:37'),
(98, 109, 2, '2023-08-02 07:12:13'),
(99, 111, 3, '2023-08-02 13:02:10'),
(100, 113, 3, '2023-08-02 13:58:43'),
(101, 114, 3, '2023-08-02 14:01:06'),
(102, 115, 14, '2023-08-02 16:12:22'),
(103, 116, 3, '2023-08-02 17:22:12'),
(104, 117, 13, '2023-08-03 01:03:50'),
(105, 118, 2, '2023-08-03 08:08:50'),
(106, 120, 2, '2023-08-03 10:04:49'),
(107, 122, 8, '2023-08-04 12:14:19'),
(108, 123, 7, '2023-08-04 15:12:28'),
(109, 124, 7, '2023-08-04 15:31:18'),
(110, 125, 7, '2023-08-05 01:15:12'),
(111, 126, 14, '2023-08-05 05:21:26'),
(112, 127, 7, '2023-08-05 09:27:38'),
(113, 128, 2, '2023-08-06 18:10:58'),
(114, 129, 29, '2023-08-10 14:20:29'),
(115, 130, 81, '2023-08-16 13:29:06'),
(116, 131, 81, '2023-08-16 13:33:20'),
(117, 132, 81, '2023-08-16 14:08:54'),
(118, 133, 81, '2023-08-16 14:23:45'),
(119, 134, 3, '2023-08-17 08:35:09'),
(120, 136, 7, '2023-08-17 15:38:23'),
(121, 137, 2, '2023-08-17 15:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `ReturnOrder`
--

CREATE TABLE `ReturnOrder` (
  `returnOrderId` bigint(20) NOT NULL,
  `orderId` bigint(20) NOT NULL,
  `orderItemId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `productId` bigint(20) NOT NULL,
  `reason` text NOT NULL,
  `proofOne` text NOT NULL,
  `proofTwo` text NOT NULL,
  `refundMethod` varchar(50) NOT NULL COMMENT 'wallet,bank',
  `refundData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`refundData`)),
  `status` varchar(50) NOT NULL DEFAULT 'requested' COMMENT 'requested, approved, canceled, returned',
  `adminComment` text DEFAULT NULL,
  `rewardDeducted` varchar(5) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ReturnOrder`
--

INSERT INTO `ReturnOrder` (`returnOrderId`, `orderId`, `orderItemId`, `userId`, `productId`, `reason`, `proofOne`, `proofTwo`, `refundMethod`, `refundData`, `status`, `adminComment`, `rewardDeducted`, `createdAt`, `updatedAt`) VALUES
(13, 12, 12, 13, 15, 'Faded Colour', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'bank', '{\"accountHolderName\":\"Gunal Rajarathinam \",\"bankName\":\"Paytm Payments Bank\",\"accountNumber\":\"919345710012\",\"ifscCode\":\"PYTM0123456\"}', 'approved', NULL, 'yes', '2023-08-02 14:23:00', '2023-08-07 07:06:54'),
(14, 12, 13, 13, 61, 'No Kurti was delivered ', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'bank', '{\"accountHolderName\":\"Gunal Rajarathinam \",\"bankName\":\"Paytm Payments Bank\",\"accountNumber\":\"919345710012\",\"ifscCode\":\"PYTM0123456\"}', 'approved', NULL, 'yes', '2023-08-02 14:23:00', '2023-08-07 07:07:00'),
(15, 12, 14, 13, 39, 'Colour is not good material too', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'bank', '{\"accountHolderName\":\"Gunal Rajarathinam \",\"bankName\":\"Paytm Payments Bank\",\"accountNumber\":\"919345710012\",\"ifscCode\":\"PYTM0123456\"}', 'approved', NULL, 'yes', '2023-08-02 14:23:00', '2023-08-07 07:07:07'),
(16, 12, 15, 13, 22, 'Shirt Quality is not so much good what I expected ', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'bank', '{\"accountHolderName\":\"Gunal Rajarathinam \",\"bankName\":\"Paytm Payments Bank\",\"accountNumber\":\"919345710012\",\"ifscCode\":\"PYTM0123456\"}', 'approved', NULL, 'yes', '2023-08-02 14:23:00', '2023-08-11 15:02:24');

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
  `moveTo` varchar(50) NOT NULL COMMENT 'personal,refund	',
  `moveDate` varchar(30) DEFAULT NULL,
  `mode` varchar(50) NOT NULL COMMENT '	referral,refund	',
  `status` varchar(15) NOT NULL DEFAULT 'active' COMMENT 'pending,credited',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `RewardWallet`
--

INSERT INTO `RewardWallet` (`id`, `orderUUID`, `userId`, `buyerId`, `amount`, `moveTo`, `moveDate`, `mode`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'aca4ee70-8b18-4ae2-b048-84f550318e21', 1, 2, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 13:07:27', '2023-08-16 08:53:04'),
(2, '18be0764-3620-44a9-81c1-7a4b57c778b2', 2, 3, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 13:44:42', '2023-08-16 08:53:04'),
(3, '4dce29d0-832b-48c3-ac20-954a8a6cfafb', 2, 7, 100, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 14:06:21', '2023-08-16 08:53:04'),
(4, '5ca99ce5-52ab-4139-90d2-584b177bf671', 3, 8, 75, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 14:15:46', '2023-08-16 08:53:04'),
(5, '64fa186e-56b2-494d-86db-53f838393837', 2, 4, 25, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 14:35:44', '2023-08-16 08:53:04'),
(6, 'e77dad06-a3e7-4ae5-98dd-d4ee21ac4afa', 3, 9, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 14:36:48', '2023-08-16 08:53:04'),
(7, '30bb8f84-a5e6-431e-a040-df3a35ef71b7', 4, 14, 25, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 14:46:41', '2023-08-16 08:53:04'),
(8, '2473345c-89c8-4409-91b6-7b8e12d3e891', 7, 21, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 16:36:13', '2023-08-16 08:53:04'),
(9, 'ef419ce6-b97e-40d0-b5e2-cf8ce41de0a4', 3, 24, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 16:46:34', '2023-08-16 08:53:04'),
(10, 'a93e4a63-d6e6-4997-b85d-09af1f49505b', 3, 9, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 18:06:28', '2023-08-16 08:53:04'),
(11, 'c743abc5-0c29-4985-87fa-5f3671fce90c', 7, 13, 0, 'referral', '2023-08-12', 'referral', 'credited', '2023-07-28 08:45:54', '2023-08-16 08:53:04'),
(12, '60e44b29-c689-4b2e-a85d-6e07e391ab7b', 7, 57, 25, 'referral', '2023-08-12', 'referral', 'credited', '2023-07-28 10:03:04', '2023-08-16 08:53:04'),
(13, 'f0a7c054-67fb-4b27-bd5b-5fe0cf21a76c', 7, 76, 200, 'referral', '2023-08-12', 'referral', 'credited', '2023-07-28 15:34:25', '2023-08-16 08:53:04'),
(14, '5c8a69d3-d91b-4bf7-a2c5-942cf13282dc', 7, 72, 50, 'referral', '2023-08-12', 'referral', 'credited', '2023-07-28 17:23:14', '2023-08-16 08:53:04'),
(18, '8e5d2342-d732-4d8d-bd0c-b5c310f0822b', 2, 100, 150, 'referral', '2023-08-14', 'referral', 'credited', '2023-07-30 12:00:54', '2023-08-16 08:53:04'),
(26, '708a1302-91c9-471c-a9f2-f975657de80d', 2, 7, 100, 'referral', '2023-08-15', 'referral', 'credited', '2023-07-31 07:39:31', '2023-08-16 08:53:04'),
(46, '048b7474-dbb1-449d-afa5-a789fac8df40', 1, 2, 100, 'referral', '2023-08-22', 'referral', 'credited', '2023-08-07 07:03:02', '2023-08-16 08:53:04'),
(52, 'a6f774fa-7dde-450d-88db-0286fdfa1225', 2, 7, 40, 'referral', '2023-08-30', 'referral', 'pending', '2023-08-15 04:22:15', '2023-08-15 04:22:15'),
(53, 'a6f774fa-7dde-450d-88db-0286fdfa1225', 7, 7, 39, 'cashback', '2023-08-30', 'cashback', 'pending', '2023-08-15 04:22:15', '2023-08-16 08:53:51');

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
(30, 1, 'tit-1', '{\"textOne\":\"Welcome to\",\"textTwo\":\"Weemax\"}', 2, 'deleted', '2023-07-23 16:49:52', '2023-08-03 08:29:08'),
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
(70, 1, 'pro-slide-2', '{\"sectionTitle\":\"BEST SELLERS\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5742-01.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482.png\",\"route\":\"tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48sssss.jpg\",\"route\":\"shoe\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb483J1A9279 copy.jpg\",\"route\":\"kurti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tredsss.jpg\",\"route\":\"bottom\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48goods_64_457382 (1).avif\",\"route\":\"boxer\"}]}', 4, 'deleted', '2023-07-26 11:38:05', '2023-08-17 06:05:49'),
(71, 1, 'sec-t-sel', '[{\"name\":\"Shirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5795__01-01.jpeg.jpg\",\"route\":\"shirt\"},{\"name\":\"T-shirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tre6.jpg\",\"route\":\"tshirt\"},{\"name\":\"Jogger\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48Red Coloured Attitude jogger.png\",\"route\":\"bottom\"},{\"name\":\"Shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 21.50.51.jpg\",\"route\":\"shoe\"},{\"name\":\"Boxer\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48goods_64_457382 (1).avif\",\"route\":\"boxer\"},{\"name\":\"Watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"name\":\"Dhoti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG_20230726_173543.jpg\",\"route\":\"dhoti\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48KC016 (4).jpg\",\"route\":\"kurti\"},{\"name\":\"Women-Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tre4.jpg\",\"route\":\"women-tshirt\"},{\"name\":\"Leggings\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482_0082062d-5a63-433f-92b8-f5edd3550970.jpg\",\"route\":\"leggings\"},{\"name\":\"Women Jean\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481661493815087.jpg\",\"route\":\"women-jean\"}]', 0, 'published', '2023-07-26 12:16:32', '2023-08-17 05:55:40'),
(72, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4822-9-2022_maza2752.jpg\",\"route\":\"kurti\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48trd2.jpg\",\"route\":\"tshirt\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5817-01.jpg\",\"route\":\"shirt\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481661493815087.jpg\",\"route\":\"women-jean\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48J-3 (1).jpg\",\"route\":\"watch\"}}}', 6, 'published', '2023-07-26 12:34:29', '2023-08-16 15:35:56'),
(73, 1, 'card-1', '{\"sectionTitle\":\"Fashion Spotted!!\",\"items\":{\"one\":{\"name\":\"MEN\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48PUBG-Character-Transparent-Image.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"WOMEN\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb480cb035e5e38923a6515c34447267db80.jpg\",\"route\":\"women-prodect\"}}}', 5, 'deleted', '2023-07-26 12:42:34', '2023-07-27 07:06:26'),
(74, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48ee.jpg\",\"route\":\"kurti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48ba.jpg\",\"route\":\"biz\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4823.jpg\",\"route\":\"biz\"}]', 2, 'deleted', '2023-07-26 12:50:15', '2023-07-26 13:00:13'),
(75, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4820230726_182908_0000.png\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"shirt\"}]', 1, 'published', '2023-07-26 13:01:29', '2023-08-17 05:55:47'),
(76, 3, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4820230726_163216_0000.png\",\"route\":\"product\"}]', 0, 'published', '2023-07-26 13:05:17', '2023-07-26 13:05:17'),
(77, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"biz\"}]', 7, 'deleted', '2023-07-26 13:05:41', '2023-07-26 13:08:32'),
(78, 15, 'product-list-2', '{\"sectionTitle\":\"Joggers\",\"banners\":[{\"productId\":44},{\"productId\":45},{\"productId\":46}]}', 0, 'published', '2023-07-26 20:24:33', '2023-07-26 20:24:33'),
(79, 1, 'card-1', '{\"sectionTitle\":\"trending\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f49-497248_hinata-pictures-naruto-and-hinata-part-1.png\",\"route\":\"women-prodect\"}}}', 7, 'deleted', '2023-07-27 07:03:33', '2023-07-27 07:04:20'),
(80, 1, 'card-1', '{\"sectionTitle\":\"Street-style Quirky Cool\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f81-812427_19-jul-naruto-x-boruto-ninja-voltage-hinata.png\",\"route\":\"women-prodect\"}}}', 4, 'deleted', '2023-07-27 07:06:15', '2023-07-27 07:16:04'),
(81, 1, 'card-1', '{\"sectionTitle\":\"Street-style Quirky Cool\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fpngfind.com-boruto-png-812427.png\",\"route\":\"women-prodect\"}}}', 5, 'deleted', '2023-07-27 07:15:09', '2023-08-05 05:20:12'),
(82, 4, 'product-list-2', '{\"sectionTitle\":\"test\",\"banners\":[{\"productId\":86},{\"productId\":87},{\"productId\":88}]}', 1, 'deleted', '2023-07-27 07:18:32', '2023-07-27 09:45:11');
INSERT INTO `Section` (`sectionId`, `pageId`, `sectionKey`, `data`, `position`, `status`, `createdAt`, `updatedAt`) VALUES
(83, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fCollection (1).png\",\"route\":\"\"}]', 6, 'deleted', '2023-07-27 07:19:40', '2023-07-27 12:16:41'),
(84, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fCollection (1).png\",\"route\":\"\"}]', 5, 'published', '2023-07-27 07:20:39', '2023-08-17 06:27:21'),
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
(110, 1, 'grid-lay', '{\"sectionTitle\":\"category\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/91383c40-68ea-4e6c-bfbf-2e305ffd7168Adobe_Express_20230731_0027250_1.png\",\"route\":\"men-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/91383c40-68ea-4e6c-bfbf-2e305ffd7168Adobe_Express_20230731_0033190_1.png\",\"route\":\"womem-prodect\"}]}', 4, 'deleted', '2023-07-30 19:06:06', '2023-08-03 07:59:23'),
(111, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti + Dupatta Set\",\"banners\":[{\"productId\":52},{\"productId\":53},{\"productId\":54},{\"productId\":55},{\"productId\":75},{\"productId\":98}]}', 3, 'published', '2023-07-31 03:10:45', '2023-07-31 03:10:45'),
(112, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti+Pant+Dupatta Set\",\"banners\":[{\"productId\":66},{\"productId\":67},{\"productId\":68},{\"productId\":97}]}', 4, 'published', '2023-07-31 03:12:00', '2023-07-31 03:12:00'),
(113, 1, 'grid-lay', '{\"sectionTitle\":\"asdasd\",\"columns\":\"3\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0Frame 5.png\",\"route\":\"aasd\"}]}', 9, 'deleted', '2023-08-03 07:11:28', '2023-08-03 07:15:21'),
(114, 1, 'grid-lay', '{\"sectionTitle\":\"\",\"columns\":\"3\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0ic7defqune831dh9orwm.webp\",\"route\":\"asd\"}]}', 10, 'deleted', '2023-08-03 07:14:33', '2023-08-03 07:15:26'),
(115, 1, 'grid-lay', '{\"sectionTitle\":\"\",\"columns\":\"2\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c098e5aa77-517a-4b8e-a094-497c9ba6fb4844.jpg\",\"route\":\"womrn-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c098e5aa77-517a-4b8e-a094-497c9ba6fb4833.jpg\",\"route\":\"women prodect\"}]}', 9, 'deleted', '2023-08-03 07:58:11', '2023-08-03 07:58:41'),
(116, 1, 'card-4', '{\"sectionTitle\":\"3303\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0Adobe_Express_20230731_0027250_1.png\",\"route\":\"33\"}]}', 9, 'deleted', '2023-08-03 08:27:34', '2023-08-03 08:27:52'),
(117, 1, 'product-list-2', '{\"sectionTitle\":\"New Drop\",\"banners\":[{\"productId\":41},{\"productId\":12},{\"productId\":20},{\"productId\":48},{\"productId\":63},{\"productId\":97}]}', 3, 'published', '2023-08-03 08:34:59', '2023-08-05 05:19:47'),
(118, 1, 'grid-lay', '{\"sectionTitle\":\"\",\"columns\":\"2\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c098e5aa77-517a-4b8e-a094-497c9ba6fb4822.jpg\",\"route\":\"MENS \"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0angalo watch.png\",\"route\":\"WOMENS\"}]}', 7, 'deleted', '2023-08-03 08:50:34', '2023-08-03 08:53:44'),
(119, 1, 'grid-lay', '{\"sectionTitle\":\"Category\",\"columns\":\"3\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/b84f9167-c0e6-4eb4-a4af-6cbc95bcb1c41.png\",\"route\":\"men-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/b84f9167-c0e6-4eb4-a4af-6cbc95bcb1c42.png\",\"route\":\"women-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/b84f9167-c0e6-4eb4-a4af-6cbc95bcb1c43.png\",\"route\":\"watch\"}]}', 2, 'deleted', '2023-08-05 05:17:27', '2023-08-15 14:36:47'),
(120, 1, 'grid-lay', '{\"sectionTitle\":\"\",\"columns\":\"1\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee9220230816_183544_0000.png\",\"route\":\"\"}]}', 7, 'published', '2023-08-16 14:22:52', '2023-08-16 15:35:56'),
(121, 1, 'card-5', '{\"sectionTitle\":\"Test\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92ic7defqune831dh9orwm.webp\",\"route\":\"demo\",\"text\":\"Hello\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92WMD5M52LJFBEBIHNEEABHVB6LA.webp\",\"route\":\"asdad\",\"text\":\"ada\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92unnamed.webp\",\"route\":\"asd\",\"text\":\"asdasd\"}]}', 0, 'deleted', '2023-08-16 15:35:43', '2023-08-16 15:39:55'),
(122, 1, 'card-5', '{\"sectionTitle\":\"\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122651.png\",\"route\":\"women-prodect\",\"text\":\"\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122732.png\",\"route\":\"men-prodect\",\"text\":\"\"}]}', 8, 'deleted', '2023-08-17 05:48:45', '2023-08-17 05:50:01'),
(123, 1, 'card-5', '{\"sectionTitle\":\"\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122651.png\",\"route\":\"men-prodect\",\"text\":\"women\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122732.png\",\"route\":\"women-prodect\",\"text\":\"men\"}]}', 8, 'deleted', '2023-08-17 05:51:20', '2023-08-17 05:51:49'),
(124, 1, 'card-5', '{\"sectionTitle\":\"Category\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122732.png\",\"route\":\"men-prodect\",\"text\":\"MEN\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122651.png\",\"route\":\"women-prodect\",\"text\":\"WOMEN\"}]}', 8, 'deleted', '2023-08-17 05:54:15', '2023-08-17 05:55:04'),
(125, 1, 'card-5', '{\"sectionTitle\":\"Category\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122732.png\",\"route\":\"men-prodect\",\"text\":\"MEN\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122651.png\",\"route\":\"women-prodect\",\"text\":\"WOMEN\"}]}', 2, 'published', '2023-08-17 05:54:16', '2023-08-17 05:55:47'),
(126, 1, 'card-5', '{\"sectionTitle\":\"All Category\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92NIK_5588-01.jpg\",\"route\":\"shirt\",\"text\":\"Shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92tred1.jpg\",\"route\":\"tshirt\",\"text\":\"T-shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92Black Limitless Men\'s Jogger.png\",\"route\":\"bottom\",\"text\":\"Jogger\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-2.webp.webp\",\"route\":\"kurti\",\"text\":\"Kurti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-tshirt\",\"text\":\"Women-Tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee921661493815087.jpg\",\"route\":\"women-jean\",\"text\":\"Women-jean\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee9298e5aa77-517a-4b8e-a094-497c9ba6fb482_0082062d-5a63-433f-92b8-f5edd3550970.jpg\",\"route\":\"leggings\",\"text\":\"Leggings\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230726_173543.jpg\",\"route\":\"dhoti\",\"text\":\"Dhoti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92goods_64_457382 (1).avif\",\"route\":\"boxer\",\"text\":\"Boxer\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92J-3 (1).jpg\",\"route\":\"watch\",\"text\":\"Watch\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92sssss.jpg\",\"route\":\"shoe\",\"text\":\"Shoe\"}]}', 4, 'published', '2023-08-17 06:26:05', '2023-08-17 06:27:21');

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

--
-- Dumping data for table `SizeChart`
--

INSERT INTO `SizeChart` (`sizeChartId`, `sizeChartCode`, `img`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'asdsadasdasd', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0WMD5M52LJFBEBIHNEEABHVB6LA.webp', 'deleted', '2023-08-03 12:05:40', '2023-08-03 12:15:34'),
(2, 'Te', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0ic7defqune831dh9orwm.webp', 'deleted', '2023-08-03 12:16:36', '2023-08-07 07:09:47'),
(3, 'S', 'https://api.weemax.in/api/page/public/87cc4614-2b93-46ad-9b6a-14f7f3e6ed8bic7defqune831dh9orwm.webp', 'deleted', '2023-08-11 13:51:31', '2023-08-13 08:04:48'),
(4, 'MST SC 1', 'https://api.weemax.in/api/page/public/83d01311-a7fb-4f8d-a1bb-4e0ecae6f3ebshirt size chart.png', 'active', '2023-08-14 12:25:52', '2023-08-14 12:25:52'),
(5, 'WKI SC 1', 'https://api.weemax.in/api/page/public/83d01311-a7fb-4f8d-a1bb-4e0ecae6f3ebkurti size chart.png', 'active', '2023-08-14 12:26:15', '2023-08-14 12:26:15'),
(6, 'MTT SC 1', 'https://api.weemax.in/api/page/public/83d01311-a7fb-4f8d-a1bb-4e0ecae6f3ebMEN T SHIRT SC.png', 'active', '2023-08-14 12:42:54', '2023-08-14 12:42:54'),
(7, 'WTT SC 01', 'https://api.weemax.in/api/page/public/83d01311-a7fb-4f8d-a1bb-4e0ecae6f3ebWOMEN T SIRT SC .png', 'active', '2023-08-14 12:43:37', '2023-08-14 12:43:37'),
(8, 'MJR SC 1', 'https://api.weemax.in/api/page/public/83d01311-a7fb-4f8d-a1bb-4e0ecae6f3ebJOGGER SIZE CHART.jpg', 'active', '2023-08-14 13:06:05', '2023-08-14 13:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `testTrigger`
--

CREATE TABLE `testTrigger` (
  `id` int(11) NOT NULL,
  `time` varchar(50) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testTrigger`
--

INSERT INTO `testTrigger` (`id`, `time`, `dt`) VALUES
(17, '2023-08-12 00:08:00', '2023-08-12 00:00:00'),
(18, '2023-08-13 00:08:00', '2023-08-13 00:00:00'),
(19, '2023-08-14 00:08:00', '2023-08-14 00:00:00'),
(20, '2023-08-15 00:08:00', '2023-08-14 18:30:30'),
(21, '2023-08-15 00:08:00', '2023-08-15 00:00:01');

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
(1, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTQ4NzMzNywiZXhwIjoxNjkyNzgzMzM3fQ.1ZgRPXPtRoxCC6jjUSMU-OXb80MGxpUxHVCAOQS74_g', 'user', '2023-08-23 15:05:37', '2023-08-08 09:35:37', '2023-08-08 09:35:37'),
(2, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTQ4NzMzNywiZXhwIjoxNjk0MDc5MzM3fQ.FyLHbhfIj-5_WWH3nSTDStpl2Zdytv7q8DC983EPkps', 'user', '2023-09-07 15:05:37', '2023-08-08 09:35:37', '2023-08-08 09:35:37'),
(3, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTQ4Nzc3MSwiZXhwIjoxNjkyNzgzNzcxfQ.I1WaRP0f4nUpgzlUSqOWAvbD68BJATy36tYZnHwyL6o', 'user', '2023-08-23 15:12:51', '2023-08-08 09:42:51', '2023-08-08 09:42:51'),
(4, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTQ4Nzc3MSwiZXhwIjoxNjk0MDc5NzcxfQ.vcPNfgnnvLlY8BOTbOP8mfmNNyepYNDmemYPnjPcxvA', 'user', '2023-09-07 15:12:51', '2023-08-08 09:42:51', '2023-08-08 09:42:51'),
(5, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNDkxMCwiZXhwIjoxNjkyODAwOTEwfQ.4A84-aN05s4tEvDvOAWjeL0gY7LtY67B_-G0SGcxxz0', 'user', '2023-08-23 19:58:30', '2023-08-08 14:28:44', '2023-08-08 14:28:44'),
(6, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNDkxMCwiZXhwIjoxNjk0MDk2OTEwfQ.CrMylWfDxlRIyiuB9G4O3mLcBjNjaGudcp_IpmOVa3w', 'user', '2023-09-07 19:58:30', '2023-08-08 14:28:44', '2023-08-08 14:28:44'),
(7, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNjQ1MSwiZXhwIjoxNjkyODAyNDUxfQ.q6-VwggncrbN46KqFAXchLhPhobQcbCHasGm1ab_0JY', 'user', '2023-08-23 20:24:11', '2023-08-08 14:54:26', '2023-08-08 14:54:26'),
(8, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNjQ1MSwiZXhwIjoxNjk0MDk4NDUxfQ.kcZvfJn3j8-EO9wq5KQQoqGjYbQ9dsHyss4yjlPbNqo', 'user', '2023-09-07 20:24:11', '2023-08-08 14:54:26', '2023-08-08 14:54:26'),
(9, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNjQ3MiwiZXhwIjoxNjkyODAyNDcyfQ.ZvoK_AUQTIOkpLmOSfPLAYosI7jmjvA7J8DMEHOTxpc', 'user', '2023-08-23 20:24:32', '2023-08-08 14:54:47', '2023-08-08 14:54:47'),
(10, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNjQ3MiwiZXhwIjoxNjk0MDk4NDcyfQ.AwvNJD97US8R4iUsw3cAGc7_dtZ3LNqTtq5lKyYZlWc', 'user', '2023-09-07 20:24:32', '2023-08-08 14:54:47', '2023-08-08 14:54:47'),
(11, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MDcwNzQsImV4cCI6MTY5MjgwMzA3NH0.pwih2EDqSAFZwFGoh8WTLUk75C2gqMnZ7I5IZ7I1vyI', 'user', '2023-08-23 20:34:34', '2023-08-08 15:04:48', '2023-08-08 15:04:48'),
(12, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MDcwNzQsImV4cCI6MTY5NDA5OTA3NH0.wAndzb0L61LsHSv2w9hQ8iLzZ6cR9PSjx1euXEMriIs', 'user', '2023-09-07 20:34:34', '2023-08-08 15:04:48', '2023-08-08 15:04:48'),
(13, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MDcyMzAsImV4cCI6MTY5MjgwMzIzMH0.W9E1NWTaWJDN3B7Am84psh6RDgL-oZT9BHNYgI0ysdg', 'user', '2023-08-23 20:37:10', '2023-08-08 15:07:25', '2023-08-08 15:07:25'),
(14, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MDcyMzAsImV4cCI6MTY5NDA5OTIzMH0.HZMCuKV-wiQpMX2jMce_gWluKT-mi9h5b2fniyUmM8Q', 'user', '2023-09-07 20:37:10', '2023-08-08 15:07:25', '2023-08-08 15:07:25'),
(15, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MTI4MzQsImV4cCI6MTY5MjgwODgzNH0.7blfX3FUKTu31OvhpXf4HfEJ9jy3hg3MRlomM4OOdDs', 'user', '2023-08-23 22:10:34', '2023-08-08 16:40:48', '2023-08-08 16:40:48'),
(16, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MTI4MzQsImV4cCI6MTY5NDEwNDgzNH0.phlJyYTgDprZc6YhO2tfl9s3Yw85smdbEHRejx_jgco', 'user', '2023-09-07 22:10:34', '2023-08-08 16:40:48', '2023-08-08 16:40:48'),
(17, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTU4MDUzNiwiZXhwIjoxNjkyODc2NTM2fQ.057qD3BE8WYf-N9AAML6pbCaNJNqCR8ecT2-uVVhx-E', 'user', '2023-08-24 11:28:56', '2023-08-09 11:28:56', '2023-08-09 11:28:56'),
(18, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTU4MDUzNiwiZXhwIjoxNjk0MTcyNTM2fQ.VCjxkil_q2GA5mCwtoRTYUJS0C5ESt0IwNTVcOu8F1M', 'user', '2023-09-08 11:28:56', '2023-08-09 11:28:56', '2023-08-09 11:28:56'),
(19, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3MzY0NywiZXhwIjoxNjkyOTY5NjQ3fQ.X8Us4xNnoG9j4hhX6JWcQ4ZVQuM4RQculs2_d4JYvGg', 'user', '2023-08-25 13:20:47', '2023-08-10 13:20:47', '2023-08-10 13:20:47'),
(20, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3MzY0NywiZXhwIjoxNjk0MjY1NjQ3fQ.VUBSvjyYG0FyxSuG_t8A_soTZ_5lWGLavUIBaJt-Gvw', 'user', '2023-09-09 13:20:47', '2023-08-10 13:20:47', '2023-08-10 13:20:47'),
(21, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3MzkyMiwiZXhwIjoxNjkyOTY5OTIyfQ.K_uwlqhUm5FkxXsH23uoZ_cfUMO1yJh3Qo6EwaQ-9HI', 'user', '2023-08-25 18:55:22', '2023-08-10 13:25:42', '2023-08-10 13:25:42'),
(22, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3MzkyMiwiZXhwIjoxNjk0MjY1OTIyfQ.R2UJ0ocsP9YJY1ffq7FxDM44_xWpCT2yvBYO9UADKV0', 'user', '2023-09-09 18:55:22', '2023-08-10 13:25:42', '2023-08-10 13:25:42'),
(23, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3NzA3NywiZXhwIjoxNjkyOTczMDc3fQ.DPWMUgM78QL4pGQuKV0WW_q68gpVNc1Emy_tuT3CWXE', 'user', '2023-08-25 19:47:57', '2023-08-10 14:18:17', '2023-08-10 14:18:17'),
(24, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3NzA3NywiZXhwIjoxNjk0MjY5MDc3fQ.fWTNriC_0gOthtZwQScATb0GopdrGeV0bvZBh0m_ixU', 'user', '2023-09-09 19:47:57', '2023-08-10 14:18:17', '2023-08-10 14:18:17'),
(25, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY4MDc1OSwiZXhwIjoxNjkyOTc2NzU5fQ.2Y7F3RYa31-wFhESWOjRcA5Dm_GoLFULYMoBudCHiso', 'user', '2023-08-25 15:19:19', '2023-08-10 15:19:19', '2023-08-10 15:19:19'),
(26, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY4MDc1OSwiZXhwIjoxNjk0MjcyNzU5fQ.gp4xzwUbdv-NWyZF5Ioko62e-uyAImIBfN-DrJ7URUI', 'user', '2023-09-09 15:19:19', '2023-08-10 15:19:19', '2023-08-10 15:19:19'),
(27, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY5MDcwMiwiZXhwIjoxNjkyOTg2NzAyfQ.pS1FXqvfQNKAMb01Il0VVwHexZJ2COTDMHnw6HPGHUw', 'user', '2023-08-25 18:05:02', '2023-08-10 18:05:02', '2023-08-10 18:05:02'),
(28, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY5MDcwMiwiZXhwIjoxNjk0MjgyNzAyfQ.nvtwK_OUhU7eta3rcMozAGXlgJVWMcDxsgQ9xTcYKpw', 'user', '2023-09-09 18:05:02', '2023-08-10 18:05:02', '2023-08-10 18:05:02'),
(29, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MTc2MTY2MywiZXhwIjoxNjkzMDU3NjYzfQ.L1bRVvJqd6nSM0pebXrVM5RGlpcA6OTanziOTh4sWEA', 'admin', '2023-08-26 19:17:43', '2023-08-11 13:48:06', '2023-08-11 13:48:06'),
(30, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MTc2MTY2MywiZXhwIjoxNjkyNjI1NjYzfQ.SYnrnzqiB36MLzJzi4r_Bb7eRGqKIFRTpsWugshlhw4', 'admin', '2023-08-21 19:17:43', '2023-08-11 13:48:06', '2023-08-11 13:48:06'),
(31, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MTc2OTQxMywiZXhwIjoxNjkzMDY1NDEzfQ.2WLH2ebNs0rqtwJzWyb6V_zPNgvLC6om18uYz55HeII', 'admin', '2023-08-26 15:56:53', '2023-08-11 15:56:53', '2023-08-11 15:56:53'),
(32, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MTc2OTQxMywiZXhwIjoxNjkyNjMzNDEzfQ.bIoLWLUAYZaNt_k2-itVvgDa8ni4ogKstJa4js5M2e8', 'admin', '2023-08-21 15:56:53', '2023-08-11 15:56:53', '2023-08-11 15:56:53'),
(33, 32, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5MTc3MDg4MywiZXhwIjoxNjkzMDY2ODgzfQ.m5Xfxyae59a9J72I3wlGIujL4FXE_GN6D4BHqaZM-K0', 'user', '2023-08-26 16:21:23', '2023-08-11 16:21:23', '2023-08-11 16:21:23'),
(34, 32, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5MTc3MDg4MywiZXhwIjoxNjk0MzYyODgzfQ.1fmpYt9LiGWrmKh5o-KWzP8w8NgNPqdDs4DKXtsxiqU', 'user', '2023-09-10 16:21:23', '2023-08-11 16:21:23', '2023-08-11 16:21:23'),
(35, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTc3NTE0OCwiZXhwIjoxNjkzMDcxMTQ4fQ.VMDma_Tko588qSC71nCho9a8Bkz2c7amBimzAZGhFb0', 'user', '2023-08-26 17:32:28', '2023-08-11 17:32:28', '2023-08-11 17:32:28'),
(36, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTc3NTE0OCwiZXhwIjoxNjk0MzY3MTQ4fQ.U55lJKfMCI74snEIy0SwjOnBYHq52BEm04yrG4_bK8I', 'user', '2023-09-10 17:32:28', '2023-08-11 17:32:28', '2023-08-11 17:32:28'),
(37, 48, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ4LCJuYW1lIjoiTWFub2pNaXRodW4gUyIsImVtYWlsIjoibWFub2ptaXN0eW1hY0BnbWFpbC5jb20iLCJpYXQiOjE2OTE4OTg0NTcsImV4cCI6MTY5MzE5NDQ1N30.CVuiAJlmSJxKd15d6uRd8kiEuPH5WUVnZeopZyBbi7I', 'user', '2023-08-28 03:47:37', '2023-08-13 03:47:37', '2023-08-13 03:47:37'),
(38, 48, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ4LCJuYW1lIjoiTWFub2pNaXRodW4gUyIsImVtYWlsIjoibWFub2ptaXN0eW1hY0BnbWFpbC5jb20iLCJpYXQiOjE2OTE4OTg0NTcsImV4cCI6MTY5NDQ5MDQ1N30.r-wokVIJ_z7fz9uO7OQq6Nnj_vxOzFwmqec6YYjxwQQ', 'user', '2023-09-12 03:47:37', '2023-08-13 03:47:37', '2023-08-13 03:47:37'),
(39, 33, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMzLCJuYW1lIjoiU2F0aGl5YSBUIiwiZW1haWwiOiJzYXRoeWF0aGlydW11cnVnYW4yQGdtYWlsLmNvbSIsImlhdCI6MTY5MTkyNTMxOSwiZXhwIjoxNjkzMjIxMzE5fQ.CfPgOTAYRx71okpr39dqLfhGyf-7AHKwlnOuTXRB994', 'user', '2023-08-28 11:15:19', '2023-08-13 11:15:19', '2023-08-13 11:15:19'),
(40, 33, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMzLCJuYW1lIjoiU2F0aGl5YSBUIiwiZW1haWwiOiJzYXRoeWF0aGlydW11cnVnYW4yQGdtYWlsLmNvbSIsImlhdCI6MTY5MTkyNTMxOSwiZXhwIjoxNjk0NTE3MzE5fQ.fBb9vEj0wvX_MMiYlb7qJ74_NBlkPEJTaj4RiJUTeEw', 'user', '2023-09-12 11:15:19', '2023-08-13 11:15:19', '2023-08-13 11:15:19'),
(41, 108, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkxOTM0Mjk0LCJleHAiOjE2OTMyMzAyOTR9.OHX3CUA9_aKALjZdslk35jy2QwKBl4I5CmMc6EZ2Elo', 'user', '2023-08-28 13:44:54', '2023-08-13 13:44:54', '2023-08-13 13:44:54'),
(42, 108, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkxOTM0Mjk0LCJleHAiOjE2OTQ1MjYyOTR9.VdIjwFBXudIHDl68VcvM3tQ8w9RJD3EeuqUj0VH2c3g', 'user', '2023-09-12 13:44:54', '2023-08-13 13:44:54', '2023-08-13 13:44:54'),
(43, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjAzNDg2MSwiZXhwIjoxNjkzMzMwODYxfQ.a8shGQGX6w_E1Skhbz16fNUUyrap3rUbIrQ_e4nxrlQ', 'user', '2023-08-29 23:11:01', '2023-08-14 17:41:31', '2023-08-14 17:41:31'),
(44, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjAzNDg2MSwiZXhwIjoxNjk0NjI2ODYxfQ.yXJ3iyiMQIVO-gi8tRpT1CBtjf_fygvlIw9ukuT_zZ4', 'user', '2023-09-13 23:11:01', '2023-08-14 17:41:31', '2023-08-14 17:41:31'),
(45, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQyODc1LCJleHAiOjE2OTMzMzg4NzV9.6OFqTuiUlZ4fFL4wt-31_HU8g9_XFo6W-I2y6h3NXec', 'user', '2023-08-30 01:24:35', '2023-08-14 19:55:05', '2023-08-14 19:55:05'),
(46, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQyODc1LCJleHAiOjE2OTQ2MzQ4NzV9.RI3iApca4o2dqVlRzB5l_LjPLdnIfZIPmWDKpiVvlX0', 'user', '2023-09-14 01:24:35', '2023-08-14 19:55:05', '2023-08-14 19:55:05'),
(47, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIwNDMwODcsImV4cCI6MTY5MzMzOTA4N30._O6bsoQkdNoQL-wm-kQc1S1sV-hDdZ2C7kRJ9N57X8E', 'user', '2023-08-30 01:28:07', '2023-08-14 19:58:37', '2023-08-14 19:58:37'),
(48, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIwNDMwODcsImV4cCI6MTY5NDYzNTA4N30.3Dg0zHsXs2My3FkMPP9BdbyPEyu2kcMBYc0QJA41H4c', 'user', '2023-09-14 01:28:07', '2023-08-14 19:58:37', '2023-08-14 19:58:37'),
(49, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIwNDMxNDksImV4cCI6MTY5MzMzOTE0OX0.V0q5ixNFb2N5dhNcu35tUvMYixPYYRFu-p2eAbC0ySE', 'user', '2023-08-30 01:29:09', '2023-08-14 19:59:39', '2023-08-14 19:59:39'),
(50, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIwNDMxNDksImV4cCI6MTY5NDYzNTE0OX0.tmYYaXCy4GNUVVfbpIHLo4g0WfVU-5BVbwNR2tD_Gbg', 'user', '2023-09-14 01:29:09', '2023-08-14 19:59:39', '2023-08-14 19:59:39'),
(51, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQzNzU1LCJleHAiOjE2OTMzMzk3NTV9.uaa77DzpGuM0PTP1nLcL2BFe7RNQ-2JZQ_ZUHeYrGcc', 'user', '2023-08-29 20:09:15', '2023-08-14 20:09:15', '2023-08-14 20:09:15'),
(52, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQzNzU1LCJleHAiOjE2OTQ2MzU3NTV9.RpIvfpwTl7FCvtfYFrG9rzlQv6W9pHikwtdlHVih4y4', 'user', '2023-09-13 20:09:15', '2023-08-14 20:09:15', '2023-08-14 20:09:15'),
(53, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQ0MTUzLCJleHAiOjE2OTMzNDAxNTN9.Ezw9KzWtN--OumhrClHeObhRW7wXtbVueqeET21IblI', 'user', '2023-08-29 20:15:53', '2023-08-14 20:15:53', '2023-08-14 20:15:53'),
(54, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQ0MTUzLCJleHAiOjE2OTQ2MzYxNTN9.lbNMVdYmbzlwx_5vB-jemlG4ywo8qEuqkfyVSInqs4c', 'user', '2023-09-13 20:15:53', '2023-08-14 20:15:53', '2023-08-14 20:15:53'),
(55, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIwNzMzNDQsImV4cCI6MTY5MzM2OTM0NH0.W4GU4eNDcbfUYm3WJPJLbi3750uMlTGHGrd3ovHgflQ', 'user', '2023-08-30 04:22:24', '2023-08-15 04:22:24', '2023-08-15 04:22:24'),
(56, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIwNzMzNDQsImV4cCI6MTY5NDY2NTM0NH0.w8U2toog5zejUGItHOW3xadhctP7CTf1je86ZvPsDvs', 'user', '2023-09-14 04:22:24', '2023-08-15 04:22:24', '2023-08-15 04:22:24'),
(57, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjEwOTkzOSwiZXhwIjoxNjkzNDA1OTM5fQ.pZvBUYM5QYkYfLFn7Mc75awL-O8hlvagE7-aD31klJo', 'admin', '2023-08-30 14:32:19', '2023-08-15 14:32:19', '2023-08-15 14:32:19'),
(58, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjEwOTkzOSwiZXhwIjoxNjkyOTczOTM5fQ.0QeLwx3IB2R6EGuT4RIss9pYYc848OvbOZkMQ1_3e-8', 'admin', '2023-08-25 14:32:19', '2023-08-15 14:32:19', '2023-08-15 14:32:19'),
(59, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTA3NzUsImV4cCI6MTY5MzQwNjc3NX0.DlyHDJGmlN7gs7m2mjRqUE8wUmWbvu8d2OzFeUHmhJU', 'user', '2023-08-30 14:46:15', '2023-08-15 14:46:15', '2023-08-15 14:46:15'),
(60, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTA3NzUsImV4cCI6MTY5NDcwMjc3NX0.giOrUIk0e4ol4iC2yog-kjB021CS8TlcAbBznLnO-KU', 'user', '2023-09-14 14:46:15', '2023-08-15 14:46:15', '2023-08-15 14:46:15'),
(61, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTA3NzcsImV4cCI6MTY5MzQwNjc3N30.gI0xdmgIkm9IwOFfqzdetAZttVL1zAv6kzpBnuIHar4', 'user', '2023-08-30 14:46:17', '2023-08-15 14:46:17', '2023-08-15 14:46:17'),
(62, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTA3NzcsImV4cCI6MTY5NDcwMjc3N30.esE9KkqBs3xFJ8WrR7Tqv2Q4LdaMlvNOnWVBcUTrxDE', 'user', '2023-09-14 14:46:17', '2023-08-15 14:46:17', '2023-08-15 14:46:17'),
(63, 77, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc3LCJuYW1lIjoiTml0aGluICIsImVtYWlsIjoibml0aGlubmtpbmc5M0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTMyNDIsImV4cCI6MTY5MzQwOTI0Mn0.MEYXDPUNPvwLSS23lGsCPxXvqxVLSthcJTw_svkrYO8', 'user', '2023-08-30 15:27:22', '2023-08-15 15:27:22', '2023-08-15 15:27:22'),
(64, 77, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc3LCJuYW1lIjoiTml0aGluICIsImVtYWlsIjoibml0aGlubmtpbmc5M0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTMyNDIsImV4cCI6MTY5NDcwNTI0Mn0.cmW4hj3uwiH26huddcnE9XPq2WLnkI6NOKO1lIqP_p8', 'user', '2023-09-14 15:27:22', '2023-08-15 15:27:22', '2023-08-15 15:27:22'),
(65, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMjg4ODYsImV4cCI6MTY5MzQyNDg4Nn0.hSrYx8AG5Sm6kOna673433lY4C3rNFGRByMC77_74fU', 'user', '2023-08-30 19:48:06', '2023-08-15 19:48:06', '2023-08-15 19:48:06'),
(66, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMjg4ODYsImV4cCI6MTY5NDcyMDg4Nn0.adW-bOtXFEL5c5UbPYRTNvwXRc7PlhDZy0KUUq-GHRY', 'user', '2023-09-14 19:48:06', '2023-08-15 19:48:06', '2023-08-15 19:48:06'),
(67, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMjg4ODcsImV4cCI6MTY5MzQyNDg4N30.T0QkdW6Qj10vZfuB5ylDOZB8qXAi7B97vF54cmoXjAk', 'user', '2023-08-30 19:48:07', '2023-08-15 19:48:07', '2023-08-15 19:48:07'),
(68, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMjg4ODcsImV4cCI6MTY5NDcyMDg4N30.38aMD-xu1vlQDjWAsZnzgsmMFWs_JWHXNtBTfllJB70', 'user', '2023-09-14 19:48:07', '2023-08-15 19:48:07', '2023-08-15 19:48:07'),
(69, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2NjQ3LCJleHAiOjE2OTM0NTI2NDd9.bk_giOqWwRnH52y46MFMgYRsfjYsSBpikW9ipRaAwbA', 'user', '2023-08-31 03:30:47', '2023-08-16 03:30:47', '2023-08-16 03:30:47'),
(70, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2NjQ3LCJleHAiOjE2OTQ3NDg2NDd9.6hQ6tlQm3c1r7e2xao0J1NKQje4nQ_8tBTSFKTaHxUk', 'user', '2023-09-15 03:30:47', '2023-08-16 03:30:47', '2023-08-16 03:30:47'),
(71, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2NjQ3LCJleHAiOjE2OTM0NTI2NDd9.bk_giOqWwRnH52y46MFMgYRsfjYsSBpikW9ipRaAwbA', 'user', '2023-08-31 03:30:47', '2023-08-16 03:30:47', '2023-08-16 03:30:47'),
(72, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2NjQ3LCJleHAiOjE2OTQ3NDg2NDd9.6hQ6tlQm3c1r7e2xao0J1NKQje4nQ_8tBTSFKTaHxUk', 'user', '2023-09-15 03:30:47', '2023-08-16 03:30:47', '2023-08-16 03:30:47'),
(73, 108, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2OTg4LCJleHAiOjE2OTM0NTI5ODh9.BcLB3r3b2fcIt0LHnXet7XKH2N0Ubo5XSs9_PNhBas4', 'user', '2023-08-31 03:36:28', '2023-08-16 03:36:28', '2023-08-16 03:36:28'),
(74, 108, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2OTg4LCJleHAiOjE2OTQ3NDg5ODh9.NWJ_jk8B0IVLoNmV9eDRLnzUc3_HkBBBVHVJefGN4Rc', 'user', '2023-09-15 03:36:28', '2023-08-16 03:36:28', '2023-08-16 03:36:28'),
(75, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTcwMzU2LCJleHAiOjE2OTM0NjYzNTZ9.fGhdtGRoWBn-8hSPUbbhSpgW-LNYeK04yREBs3RuLZc', 'user', '2023-08-31 07:19:16', '2023-08-16 07:19:16', '2023-08-16 07:19:16'),
(76, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTcwMzU2LCJleHAiOjE2OTQ3NjIzNTZ9.J-hRLMF3X1lmfoawPT03qPnF0toKcqBDZv3O85lAIec', 'user', '2023-09-15 07:19:16', '2023-08-16 07:19:16', '2023-08-16 07:19:16'),
(77, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjE3NTcxOSwiZXhwIjoxNjkzNDcxNzE5fQ.OgSWBJ73ylQZeFNjW1ibdM1iePASJLiT22hiNHM4KSM', 'admin', '2023-08-31 08:48:39', '2023-08-16 08:48:39', '2023-08-16 08:48:39'),
(78, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjE3NTcxOSwiZXhwIjoxNjkzMDM5NzE5fQ.d2-Fs3-JnW5a64GJ65qAXBx6uxuMnOW8geD31oAq_Hc', 'admin', '2023-08-26 08:48:39', '2023-08-16 08:48:39', '2023-08-16 08:48:39'),
(79, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMTc4MTQxLCJleHAiOjE2OTM0NzQxNDF9.tpL_7NJWejR9XBsybx8FJ34BWInOSg7wR_QoYpoZvjo', 'user', '2023-08-31 09:29:01', '2023-08-16 09:29:01', '2023-08-16 09:29:01'),
(80, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMTc4MTQxLCJleHAiOjE2OTQ3NzAxNDF9.B6TG4i1YacsMypBMx6MhamalLUBU9qSDql1xv-7kSSc', 'user', '2023-09-15 09:29:01', '2023-08-16 09:29:01', '2023-08-16 09:29:01'),
(81, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxODM5OTAsImV4cCI6MTY5MzQ3OTk5MH0.tOqTIW7NiYNcngW5NbA0g6YX49MvqFzfUfxc-W_Xw7U', 'user', '2023-08-31 11:06:30', '2023-08-16 11:06:30', '2023-08-16 11:06:30'),
(82, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxODM5OTAsImV4cCI6MTY5NDc3NTk5MH0.RYCkYzxzaD_G-IBHd07TzFP_bWclOgOAPPHuMlzP3m8', 'user', '2023-09-15 11:06:30', '2023-08-16 11:06:30', '2023-08-16 11:06:30'),
(83, 81, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgxLCJuYW1lIjoiVW1hciBmYXJ1ayIsImVtYWlsIjoidW1hcmZhcnVrMTQzOTZAZ21haWwuY29tIiwiaWF0IjoxNjkyMTg4NDcxLCJleHAiOjE2OTM0ODQ0NzF9.P9jZygw02m19QAeDFnd8B1FxzpfdfxmySddwMcML02w', 'user', '2023-08-31 12:21:11', '2023-08-16 12:21:11', '2023-08-16 12:21:11'),
(84, 81, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgxLCJuYW1lIjoiVW1hciBmYXJ1ayIsImVtYWlsIjoidW1hcmZhcnVrMTQzOTZAZ21haWwuY29tIiwiaWF0IjoxNjkyMTg4NDcxLCJleHAiOjE2OTQ3ODA0NzF9.8w50BbgfKK4Y5rdJVQzRP6Ob2mdJsH-Naxiz0KhKaHk', 'user', '2023-09-15 12:21:11', '2023-08-16 12:21:11', '2023-08-16 12:21:11'),
(85, 130, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMCwibmFtZSI6Ikdvd3RoYW1pICIsImVtYWlsIjoic2dvd3RoYW1pMjEwMUBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTI1ODksImV4cCI6MTY5MzQ4ODU4OX0.850DXH2mVkgkMxsbS3g99QpiD-jJ09koH5HPrC7vJck', 'user', '2023-08-31 13:29:49', '2023-08-16 13:29:49', '2023-08-16 13:29:49'),
(86, 130, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMCwibmFtZSI6Ikdvd3RoYW1pICIsImVtYWlsIjoic2dvd3RoYW1pMjEwMUBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTI1ODksImV4cCI6MTY5NDc4NDU4OX0.FpAUKl7GdymchVM0tS-CqruwsvoQwqyy11QLCpk6GH4', 'user', '2023-09-15 13:29:49', '2023-08-16 13:29:49', '2023-08-16 13:29:49'),
(87, 131, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMSwibmFtZSI6IlByYXNhbnRoIiwiZW1haWwiOiJwcmFzYW50aGhvcGV6ekBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTI4NTAsImV4cCI6MTY5MzQ4ODg1MH0.bmEkdWtTiUXWsrzq2tO9_av13gpwtyoQUmV4zIYWxxU', 'user', '2023-08-31 13:34:10', '2023-08-16 13:34:10', '2023-08-16 13:34:10'),
(88, 131, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMSwibmFtZSI6IlByYXNhbnRoIiwiZW1haWwiOiJwcmFzYW50aGhvcGV6ekBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTI4NTAsImV4cCI6MTY5NDc4NDg1MH0.HjQ73N3N7t1Dx9NPY8qOhZRhtC6zM3rOVeKLsjvu_YU', 'user', '2023-09-15 13:34:10', '2023-08-16 13:34:10', '2023-08-16 13:34:10'),
(89, 133, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMywibmFtZSI6IlZJR05FU0ggUkFNS1VNQVIiLCJlbWFpbCI6InZpY2t5c2FudGhvc2g5NkBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTU4NTMsImV4cCI6MTY5MzQ5MTg1M30.9i5YGozxLyeGXa8U9iXx_abg8V67VcJNwr8pDiuwWzM', 'user', '2023-08-31 14:24:13', '2023-08-16 14:24:13', '2023-08-16 14:24:13'),
(90, 133, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMywibmFtZSI6IlZJR05FU0ggUkFNS1VNQVIiLCJlbWFpbCI6InZpY2t5c2FudGhvc2g5NkBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTU4NTMsImV4cCI6MTY5NDc4Nzg1M30.eVv01QM6eJ17eLe5u_-D01w3LkS7n9VJcT4YH_z8FA0', 'user', '2023-09-15 14:24:13', '2023-08-16 14:24:13', '2023-08-16 14:24:13'),
(91, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjE5OTkyNSwiZXhwIjoxNjkzNDk1OTI1fQ.qXgnBIYFeK-4H8Vn7uKKwB3hXh1H9pjre2pf94sbTnQ', 'admin', '2023-08-31 15:32:05', '2023-08-16 15:32:05', '2023-08-16 15:32:05'),
(92, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjE5OTkyNSwiZXhwIjoxNjkzMDYzOTI1fQ.EO37qug9KcEdKf5k4kTcJYs0Knr-L6JtctO5jR18MrA', 'admin', '2023-08-26 15:32:05', '2023-08-16 15:32:05', '2023-08-16 15:32:05'),
(93, 72, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2MDkwNSwiZXhwIjoxNjkzNTU2OTA1fQ.zJE9gMskQiy12RykJ275hvPcReo_1U1VluCAEGO0mg8', 'user', '2023-09-01 08:28:25', '2023-08-17 08:28:25', '2023-08-17 08:28:25'),
(94, 72, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2MDkwNSwiZXhwIjoxNjk0ODUyOTA1fQ.loEbfFI0cAWvBazuMhNsgCtVFlTodYxi_4y5hoE6R4w', 'user', '2023-09-16 08:28:25', '2023-08-17 08:28:25', '2023-08-17 08:28:25'),
(95, 134, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNCwibmFtZSI6IlNFTlRISUxLVU1BUiIsImVtYWlsIjoiYWpzcmVla3VtYXJhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTIyNjEzMzgsImV4cCI6MTY5MzU1NzMzOH0.6ntofRtWcw-URuvN8K-YNyC8mOTs8vAoiJVlRrKtcck', 'user', '2023-09-01 08:35:38', '2023-08-17 08:35:38', '2023-08-17 08:35:38'),
(96, 134, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNCwibmFtZSI6IlNFTlRISUxLVU1BUiIsImVtYWlsIjoiYWpzcmVla3VtYXJhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTIyNjEzMzgsImV4cCI6MTY5NDg1MzMzOH0.LVkKWvWXvopYL-lPnRgOm_K4muWE3TuXJCS7zgddUI4', 'user', '2023-09-16 08:35:38', '2023-08-17 08:35:38', '2023-08-17 08:35:38'),
(97, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2NjMyMSwiZXhwIjoxNjkzNTYyMzIxfQ.o_PZQEV4J1xkLaYIxDphvfsqV2N1BBiiPMbrWGN7XDI', 'user', '2023-09-01 09:58:41', '2023-08-17 09:58:41', '2023-08-17 09:58:41'),
(98, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2NjMyMSwiZXhwIjoxNjk0ODU4MzIxfQ.qJOGy2_rYFQ_rjjrMFEnEfvkZhZZcG-mP_Btxk1xeIc', 'user', '2023-09-16 09:58:41', '2023-08-17 09:58:41', '2023-08-17 09:58:41'),
(99, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMjY3MTgxLCJleHAiOjE2OTM1NjMxODF9.H5Ndd9yK0h6L4ZPmhie_2KzjIEbCjrMRHPa9tt1yJT8', 'user', '2023-09-01 10:13:01', '2023-08-17 10:13:01', '2023-08-17 10:13:01'),
(100, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMjY3MTgxLCJleHAiOjE2OTQ4NTkxODF9.ayDii5jjeeD4dH3x0WP7bj3fe_3pSU7Hne-SioxDdmY', 'user', '2023-09-16 10:13:01', '2023-08-17 10:13:01', '2023-08-17 10:13:01'),
(101, 13, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkyMjY3ODUzLCJleHAiOjE2OTM1NjM4NTN9.dcognxz9mXFxAHFggiF09XkSh02lzXWWadCsgXZx9wU', 'user', '2023-09-01 10:24:13', '2023-08-17 10:24:13', '2023-08-17 10:24:13'),
(102, 13, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkyMjY3ODUzLCJleHAiOjE2OTQ4NTk4NTN9.QbrSS94a-1nrko34N0mrOagjCW5-5xuMRyQvry367AM', 'user', '2023-09-16 10:24:13', '2023-08-17 10:24:13', '2023-08-17 10:24:13'),
(103, 61, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYxLCJuYW1lIjoiTGhla2hhIEJhbGFzdWJyYW1hbmlhbiIsImVtYWlsIjoibGhla2hhMDA3c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2ODU1MiwiZXhwIjoxNjkzNTY0NTUyfQ.UoafbJudB1CEMqIwEJIvtjj_L6wg-ghc6yJIYlVGqjk', 'user', '2023-09-01 10:35:52', '2023-08-17 10:35:52', '2023-08-17 10:35:52'),
(104, 61, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYxLCJuYW1lIjoiTGhla2hhIEJhbGFzdWJyYW1hbmlhbiIsImVtYWlsIjoibGhla2hhMDA3c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2ODU1MiwiZXhwIjoxNjk0ODYwNTUyfQ.FbXmzgF34vOvQ0Nya9aECoTTgsDbnCr7L3-CyijaXKw', 'user', '2023-09-16 10:35:52', '2023-08-17 10:35:52', '2023-08-17 10:35:52'),
(105, 135, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNSwibmFtZSI6IlZpc2hudXZhcmFkaGFuIE0gIiwiZW1haWwiOiJ2aXNobnV2YXJhZGhhbm1lY2hAZ21haWwuY29tIiwiaWF0IjoxNjkyMjcwMDU1LCJleHAiOjE2OTM1NjYwNTV9.SSZCw1FfNATbYg6l2wMpb-RybZe0O1oil_e3Tfed5J4', 'user', '2023-09-01 11:00:55', '2023-08-17 11:00:55', '2023-08-17 11:00:55'),
(106, 135, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNSwibmFtZSI6IlZpc2hudXZhcmFkaGFuIE0gIiwiZW1haWwiOiJ2aXNobnV2YXJhZGhhbm1lY2hAZ21haWwuY29tIiwiaWF0IjoxNjkyMjcwMDU1LCJleHAiOjE2OTQ4NjIwNTV9.L4Z9WVTZScpuLF0yI67j9FbiOP5qNgLhFMXbxSnqhsw', 'user', '2023-09-16 11:00:55', '2023-08-17 11:00:55', '2023-08-17 11:00:55'),
(107, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkyMjcwOTUxLCJleHAiOjE2OTM1NjY5NTF9.CNkC8RxNtl20loj762jfTveudVqSfzx_9PSZrSvjXys', 'user', '2023-09-01 11:15:51', '2023-08-17 11:15:51', '2023-08-17 11:15:51'),
(108, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkyMjcwOTUxLCJleHAiOjE2OTQ4NjI5NTF9.G9P7JqyeuOEgnSQDqqAu7W1sscgZuARa_oQs6HMLqGk', 'user', '2023-09-16 11:15:51', '2023-08-17 11:15:51', '2023-08-17 11:15:51'),
(109, 136, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNiwibmFtZSI6IkplZXZhIiwiZW1haWwiOiJqZWV2YXNoYW5tdWdhbTAyMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMjg2NzcyLCJleHAiOjE2OTM1ODI3NzJ9.7Bk0w4IPPi7r6n0_WJGwP1YB4j3-tBiap6a8U4Pgh-Q', 'user', '2023-09-01 15:39:32', '2023-08-17 15:39:32', '2023-08-17 15:39:32'),
(110, 136, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNiwibmFtZSI6IkplZXZhIiwiZW1haWwiOiJqZWV2YXNoYW5tdWdhbTAyMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMjg2NzcyLCJleHAiOjE2OTQ4Nzg3NzJ9._QPySTX81FvpNJ2sGymU8De95JtXpoae0HiDqoPwkt4', 'user', '2023-09-16 15:39:32', '2023-08-17 15:39:32', '2023-08-17 15:39:32'),
(111, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjI4NzE1MywiZXhwIjoxNjkzNTgzMTUzfQ.QrUV-dbYBuAyBb_M-7ucXIN-QUQl8x5QcjIxBQwmYNk', 'user', '2023-09-01 21:15:53', '2023-08-17 15:45:59', '2023-08-17 15:45:59'),
(112, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjI4NzE1MywiZXhwIjoxNjk0ODc5MTUzfQ.Vc3cDhQKp3HyL7asYfcs-4F_VIR2lzEqr94uzy4WFF8', 'user', '2023-09-16 21:15:53', '2023-08-17 15:45:59', '2023-08-17 15:45:59'),
(113, 137, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNywibmFtZSI6IlJ1YnkiLCJlbWFpbCI6InJ1YmlrYXJ1YmkyM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyODcyNzUsImV4cCI6MTY5MzU4MzI3NX0.66V7xtDH67LPGoo5q9CSLNz5aJNCzC-tLbb7V6dlrKA', 'user', '2023-09-01 15:47:55', '2023-08-17 15:47:55', '2023-08-17 15:47:55'),
(114, 137, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNywibmFtZSI6IlJ1YnkiLCJlbWFpbCI6InJ1YmlrYXJ1YmkyM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyODcyNzUsImV4cCI6MTY5NDg3OTI3NX0.xyfUZuqDj6PHPsTPXLfVdZTpAdXSciixwUverCD1y6I', 'user', '2023-09-16 15:47:55', '2023-08-17 15:47:55', '2023-08-17 15:47:55'),
(115, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIyODgxODMsImV4cCI6MTY5MzU4NDE4M30.d1EX9Z9uzd2Lb6IrRRW0Lr89y-o3kWkEd9qiVNdmWc8', 'user', '2023-09-01 21:33:03', '2023-08-17 16:03:09', '2023-08-17 16:03:09'),
(116, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIyODgxODMsImV4cCI6MTY5NDg4MDE4M30.Q2899bGbrl1C2SoykmBqhcJkv2pgAqmZb_givSpkeoI', 'user', '2023-09-16 21:33:03', '2023-08-17 16:03:09', '2023-08-17 16:03:09'),
(117, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTA4MDcsImV4cCI6MTY5MzU4NjgwN30.NR33ESYtTr32rA5YFGzgx9BD1VMT7zSj77fpzQxDvpg', 'user', '2023-09-01 16:46:47', '2023-08-17 16:46:47', '2023-08-17 16:46:47'),
(118, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTA4MDcsImV4cCI6MTY5NDg4MjgwN30.sIEcCMMGR8VGpNjtmPG7jjoAIPl3RzVrBOdLyqM5XPw', 'user', '2023-09-16 16:46:47', '2023-08-17 16:46:47', '2023-08-17 16:46:47'),
(119, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTEwMTMsImV4cCI6MTY5MzU4NzAxM30.RgEyA1ffiT5awgbEb3ReHtqOq_ABB7j_WsCwC-t3i4Y', 'user', '2023-09-01 16:50:13', '2023-08-17 16:50:13', '2023-08-17 16:50:13'),
(120, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTEwMTMsImV4cCI6MTY5NDg4MzAxM30.ZzqpsIyXQQLpbUh0suAvi_mIRi6dt3fsR4qIpjUJycM', 'user', '2023-09-16 16:50:13', '2023-08-17 16:50:13', '2023-08-17 16:50:13'),
(121, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTEwMTQsImV4cCI6MTY5MzU4NzAxNH0.2h1cp-vOfDoyd4dc8NzWzrzhgPDJWKzs4mQ8PghHy1o', 'user', '2023-09-01 16:50:14', '2023-08-17 16:50:14', '2023-08-17 16:50:14'),
(122, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTEwMTQsImV4cCI6MTY5NDg4MzAxNH0.uiqX-TzLP4VKZAUhfvfDU7GXYG1vQTNShl8FhGpaoaA', 'user', '2023-09-16 16:50:14', '2023-08-17 16:50:14', '2023-08-17 16:50:14'),
(123, 138, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTIyOTMyMDUsImV4cCI6MTY5MzU4OTIwNX0.N4Shv-LEvUGVZ1_pN4AOeT8iyxJwM2auMZ4QeV5w8yk', 'user', '2023-09-01 17:26:45', '2023-08-17 17:26:45', '2023-08-17 17:26:45'),
(124, 138, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTIyOTMyMDUsImV4cCI6MTY5NDg4NTIwNX0.0gvAqGxL9N2G9MMA370EjNPTlzZMa0JWlbf-bxCSaMA', 'user', '2023-09-16 17:26:45', '2023-08-17 17:26:45', '2023-08-17 17:26:45'),
(125, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjI5NTY2MiwiZXhwIjoxNjkzNTkxNjYyfQ.vrHmCwVaCdlaios9bZ77_6VSojHe7M7bDIdhG-o9O3s', 'admin', '2023-09-01 18:07:42', '2023-08-17 18:07:42', '2023-08-17 18:07:42'),
(126, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjI5NTY2MiwiZXhwIjoxNjkzMTU5NjYyfQ.HPKg142IiRWUy6Qp7h_nc-mYJTiihEiGjrVm6KL1nIk', 'admin', '2023-08-27 18:07:42', '2023-08-17 18:07:42', '2023-08-17 18:07:42');

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
(107, 'Panneer', 'pm3377@email.com', '9047062013', '1999-08-01', '$2b$12$4o9unUYO3WIMg8ghZUsdR.XgNovdjagGFIp3ZXR3KI1MMbx6HRdjS', 'PAN2013107', 0, '2023-07-31 15:17:26', '2023-07-31 15:17:26'),
(108, 'Aravindan E', 'aravindanaravindan484@gmail.com', '9150102475', '2001-06-18', '$2b$12$RfaYV4uAZ66Lvn7HphS3veDzn.1hELQgagW8eMQHyEOc/DPlMqgc2', 'ARA2475108', 1, '2023-08-02 04:20:37', '2023-08-13 13:44:08'),
(109, 'Gokul', 'gokulnetworker@gmail.com', '9688515696', '2001-04-29', '$2b$12$8nL9yQ3oK9/r8GHFqvsMKefoVix/7gxk3mziRve01C8ZvSeOdC2Te', 'GOK5696109', 1, '2023-08-02 07:12:13', '2023-08-02 07:12:49'),
(110, 'Gayathri ', 'gayathriannu13@gmail.com', '8668117239', '1999-10-19', '$2b$12$/un4XuBE69TeZ2I8FZO57.7LaBFu45xbRj6SgbRkTAZmfDHJKwpn6', 'GAY7239110', 1, '2023-08-02 08:40:42', '2023-08-02 08:41:08'),
(111, 'Subhasree S', 'subhasree2052001@gmail.com', '9789638613', '2001-05-20', '$2b$12$eGZxPEq61a5v5oBqG1o45.2fnrjm124qFhRwTEqt/BisJj1kfyPYK', 'SUB8613111', 1, '2023-08-02 13:02:10', '2023-08-02 13:02:54'),
(112, 'Arthi Kannan', 'arthi01shinu@gmail.com', '9176095422', '1999-11-01', '$2b$12$LkKhumrl32Y2Po7FcEJTAu6Tey9U706zDrjVflTb6klHzlVt.x7Tm', 'ART5422112', 1, '2023-08-02 13:31:17', '2023-08-02 13:35:18'),
(113, 'kalai', 'kalaiselvisenthi14@gmail.com', '7904629266', '2002-11-14', '$2b$12$v9.gKzmA/VKCUDvMIeX6oO1lRelaFofCUh6ZBU0XSqhWte8hIG/0m', 'KAL9266113', 0, '2023-08-02 13:58:43', '2023-08-02 13:58:43'),
(114, 'kalai', 'kalaiselvisenthil14@gmail.com', '7904629266', '2002-11-14', '$2b$12$LTIAVuT7eBDG2usf0R4tC.6jzaxlsmxy.BEvkfl.HDQuwYT7hhMAe', 'KAL9266114', 1, '2023-08-02 14:01:06', '2023-08-02 14:01:36'),
(115, 'Mythily N', 'muthu2012@gmail.com', '8610502837', '1990-04-10', '$2b$12$OHWvdNa5RhdLGbjLz9kmWeIu.cF/WP6exdYXGv0Am8GwFT5ItaEji', 'MYT2837115', 1, '2023-08-02 16:12:22', '2023-08-02 16:12:46'),
(116, 'Abdul Munazzir a m', 'abdulmunazir@gmail.com', '8760667863', '1997-03-04', '$2b$12$12wGKmdh8xA/2NWm3F4IBuSEl5/1o2g2ki9bYejB10muhhbRTqw3a', 'ABD7863116', 1, '2023-08-02 17:22:12', '2023-08-02 17:22:51'),
(117, 'KAVIANANTH A', 'kavinananth51@gmail.com', '6383959052', '2006-01-12', '$2b$12$gAcN8J6j/7RS2YJl0XmQpeVLUiEqzTvLfz0oZycYQNbDgPuRNcNFa', 'KAV9052117', 0, '2023-08-03 01:03:50', '2023-08-03 01:03:50'),
(118, 'Gayathri Thangavel ', 'gayathrithangavel1910@gmail.com', '8668117239', '1999-10-19', '$2b$12$Gjsd3WvUaBVlcBUk3r1WS.WqaIY5Hw.JGbC6/L9bRMpS.jUmlvXBC', 'GAY7239118', 1, '2023-08-03 08:08:50', '2023-08-03 08:11:34'),
(119, 'SAKTHI HARIHARA PRABHU', 'sakthiharish499@gmail.com', '7904980440', '2002-05-03', '$2b$12$seYEVoWd7yBbhXG7wW4Q4.Z2/FUNzn7Kkcqbpkm6U8GZolfhXyzC2', 'SAK0440119', 1, '2023-08-03 09:32:24', '2023-08-03 09:32:55'),
(120, 'Joys Renisha ', 'joysrenisha17@gmail.com', '8104386102', '2001-12-24', '$2b$12$jarzloH.rWjiDc8wI8CdReLUAobL3bzhcWz2WpARTMku4Cgm1Z5T.', 'JOY6102120', 1, '2023-08-03 10:04:49', '2023-08-03 10:37:04'),
(121, 'Tharani ', 'tharanieswaran2002@gmail.com', '9655326355', '2002-10-10', '$2b$12$vcTukMLRHX69Cw95kpTAgugPblA9tnZ3TluEpzaG5UX4pVXnRzab6', 'THA6355121', 1, '2023-08-03 10:54:55', '2023-08-03 10:55:31'),
(122, 'Senthil', 'srs.erd71@gmail.com', '9043394955', '1971-06-07', '$2b$12$HqPM3EovbWtaozc2n8kdDOMqm3PhIqI81a5jUhjHACm96895Vo/Q.', 'SEN4955122', 1, '2023-08-04 12:14:19', '2023-08-04 12:15:01'),
(123, 'Abdhullah ', 'smartkiller8620@gmail.com', '9445580925', '1986-05-09', '$2b$12$kCkmCEdqt8pmv5rwZ0t5AesW44Lcj1KYRKBQ0l.foOZFyzvEIbC5.', 'ABD0925123', 0, '2023-08-04 15:12:28', '2023-08-04 15:12:28'),
(124, 'Abdhullah. N', 'jokerprofessor287@gmail.com', '9445580925', '1986-05-09', '$2b$12$vV2s/lpRTjgay5oNfZT1bOyUbHbFoKJnsHvwaAZHPGzu8SBjEF0Za', 'ABD0925124', 1, '2023-08-04 15:31:18', '2023-08-04 15:31:42'),
(125, 'Tharani R', 'tharanirajkumar114@gmail.com', '9790435430', '2003-04-11', '$2b$12$zF0eMN0Ei5kYrbItTUh2zutHEzRtYsG9neYPRJivpeuuPLp7WpDZe', 'THA5430125', 1, '2023-08-05 01:15:12', '2023-08-05 01:15:35'),
(126, 'Suryaa sanjay v', 'Suryaasanjaykumar@gmail.com', '8524981535', '2001-09-06', '$2b$12$ZlCd41ugm206bQR02azIXu5LWH5TKb8uvHhuooYb7K.nUmDp.ue26', 'SUR1535126', 1, '2023-08-05 05:21:26', '2023-08-05 05:22:29'),
(127, 'Kavin Kumar', 'Kavinkumar9991@gmail.com', '9597690655', '2002-11-12', '$2b$12$6NyjmYcQ.wDuOwwmU1C3AeYpC40yrc2XTpHB10wDYOhBJBUA6/wda', 'KAV0655127', 1, '2023-08-05 09:27:38', '2023-08-05 09:28:15'),
(128, 'Divija', 'divija0330@gmail.com', '8778764576', '2001-04-03', '$2b$12$WjRbPb0ry4h8aN4pu8R8W.UEtZ9YmaqSxHF0QUyIrQtvLPSPy5t3W', 'DIV4576128', 1, '2023-08-06 18:10:58', '2023-08-06 18:11:25'),
(129, 'YYugi', 'yyugi64@gmail.com', '8838669898', '2003-10-28', '$2b$12$Tap7ZYz7lqz6lB6.xT46LO1orl1wcf4HCt.j9OZawro.egHHYPWkG', 'YUG9898129', 1, '2023-08-08 15:00:09', '2023-08-08 16:43:06'),
(130, 'Gowthami ', 'sgowthami2101@gmail.com', '6381709794', '2000-01-21', '$2b$12$7ftVD/QnGGroNEKxzsL7i.wAkWot8yxOkpIP4bcKSGHwDd4MxTldm', 'GOW9794130', 1, '2023-08-16 13:29:06', '2023-08-16 13:29:49'),
(131, 'Prasanth', 'prasanthhopezz@gmail.com', '6374741643', '1999-08-14', '$2b$12$pVBwQLW.5e3/dS1gjMKqTe1Uur/PvI3ZyZ7mVg.uNO2GAxl/EDl6q', 'PRA1643131', 1, '2023-08-16 13:33:20', '2023-08-16 13:34:10'),
(132, 'Aishwarya Raman ', 'aishudaishwarya1098@gmail.com', '6369418260', '1998-11-10', '$2b$12$ierj/RONwx5gYVtnTOvz3.aWeQI3oLoDrAnk9l9anzCuhjc/E7J8q', 'AIS8260132', 0, '2023-08-16 14:08:54', '2023-08-16 14:08:54'),
(133, 'VIGNESH RAMKUMAR', 'vickysanthosh96@gmail.com', '8838615022', '1996-10-15', '$2b$12$I8qUAaREFqIGU.1S9K.P3.poKSVo5KzV6PDb.lR.XbNxtk/79Yd.S', 'VIG5022133', 1, '2023-08-16 14:23:45', '2023-08-16 14:24:13'),
(134, 'SENTHILKUMAR', 'ajsreekumaran@gmail.com', '9578582656', '1995-08-15', '$2b$12$Za/N1uyznbQ6LO14VQVKsuINHiRfVelGL/n58BfS2.m2ad7Sy4FbS', 'SEN2656134', 1, '2023-08-17 08:35:09', '2023-08-17 08:35:38'),
(135, 'Vishnuvaradhan M ', 'vishnuvaradhanmech@gmail.com', '7092725231', '2002-06-28', '$2b$12$GNba1JIjQ9WqQE7gLIrgeOrtJQG7XRA3d3HamhAf9O.hK9diKkpri', 'VIS5231135', 1, '2023-08-17 11:00:04', '2023-08-17 11:00:55'),
(136, 'Jeeva', 'jeevashanmugam0228@gmail.com', '7395894082', '2003-02-28', '$2b$12$ND57nOmmsN97NM/5S.Nc/eHRcQIf.MVA1gJtR5PPAcV.FwPZdfbqW', 'JEE4082136', 1, '2023-08-17 15:38:23', '2023-08-17 15:39:32'),
(137, 'Ruby', 'rubikarubi23@gmail.com', '7904364692', '1998-04-23', '$2b$12$SsA1r2z5JPMS1XMDtXSFpO0ocgjFu66XVG.5sPxzpqwhTmr31QD9y', 'RUB4692137', 1, '2023-08-17 15:47:24', '2023-08-17 15:47:55'),
(138, 'Mohamed Bhasith', 'bhasith@eselfmade.in', '9787086036', '1997-07-18', '$2b$12$FXbhTvTUPH.VYEFW8c/xBO7DTIaHXaNTgs7KcT4FAO7SBPd5zN3VC', 'MOH6036138', 1, '2023-08-17 17:26:18', '2023-08-17 17:26:45');

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

--
-- Dumping data for table `WalletTransaction`
--

INSERT INTO `WalletTransaction` (`id`, `userId`, `wallet`, `amount`, `source`, `method`, `createdAt`) VALUES
(23, 1, 'referral', 50, 'rewardWallet', 'deposit', '2023-08-15 15:43:55'),
(24, 2, 'referral', 50, 'rewardWallet', 'deposit', '2023-08-15 15:44:40'),
(25, 2, 'referral', 100, 'rewardWallet', 'deposit', '2023-08-15 15:45:08'),
(26, 3, 'referral', 75, 'rewardWallet', 'deposit', '2023-08-15 15:46:02'),
(27, 2, 'referral', 25, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(28, 3, 'referral', 50, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(29, 4, 'referral', 25, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(30, 7, 'referral', 50, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(31, 3, 'referral', 50, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(32, 3, 'referral', 50, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(33, 7, 'referral', 0, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(34, 7, 'referral', 25, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(35, 7, 'referral', 200, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(36, 7, 'referral', 50, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(37, 2, 'referral', 150, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(38, 2, 'referral', 100, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(39, 1, 'referral', 100, 'rewardWallet', 'deposit', '2023-08-15 15:49:24'),
(40, 2, 'referral', 350, 'transfer', 'withdraw', '2023-08-16 09:00:26'),
(41, 2, 'cashback', 350, 'referralWallet', 'deposit', '2023-08-16 09:00:26'),
(42, 29, 'cashback', 350, 'referralWallet', 'deposit', '2023-08-16 09:00:26');

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
(9, 38, 42, 'active', '2023-08-01 07:51:39', '2023-08-01 07:51:39'),
(10, 114, 75, 'active', '2023-08-02 14:16:50', '2023-08-02 14:16:50'),
(11, 121, 48, 'active', '2023-08-03 10:56:47', '2023-08-03 10:56:47'),
(12, 121, 97, 'active', '2023-08-03 10:57:16', '2023-08-03 10:57:16'),
(13, 121, 79, 'active', '2023-08-03 10:59:56', '2023-08-03 10:59:56'),
(14, 34, 48, 'active', '2023-08-05 17:06:37', '2023-08-05 17:06:37'),
(15, 34, 13, 'active', '2023-08-05 17:08:24', '2023-08-05 17:08:24'),
(16, 10, 12, 'removed', '2023-08-08 14:55:56', '2023-08-08 14:55:58'),
(17, 10, 12, 'removed', '2023-08-08 14:55:59', '2023-08-08 14:57:06'),
(18, 10, 12, 'active', '2023-08-08 14:57:09', '2023-08-08 14:57:09'),
(19, 129, 12, 'active', '2023-08-09 11:29:21', '2023-08-09 11:29:21');

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
-- Indexes for table `ReturnOrder`
--
ALTER TABLE `ReturnOrder`
  ADD PRIMARY KEY (`returnOrderId`);

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
-- Indexes for table `testTrigger`
--
ALTER TABLE `testTrigger`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `addressId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `adminId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Basket`
--
ALTER TABLE `Basket`
  MODIFY `basketId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `CancelOrder`
--
ALTER TABLE `CancelOrder`
  MODIFY `cancelOrderId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ContactMessage`
--
ALTER TABLE `ContactMessage`
  MODIFY `messageId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ForgotPasswordToken`
--
ALTER TABLE `ForgotPasswordToken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Kyc`
--
ALTER TABLE `Kyc`
  MODIFY `kycId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Level`
--
ALTER TABLE `Level`
  MODIFY `levelId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Otp`
--
ALTER TABLE `Otp`
  MODIFY `otpId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `Page`
--
ALTER TABLE `Page`
  MODIFY `pageId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `paymentId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `PaymentMethod`
--
ALTER TABLE `PaymentMethod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `productId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `ProductCategory`
--
ALTER TABLE `ProductCategory`
  MODIFY `categoryId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ProductInventory`
--
ALTER TABLE `ProductInventory`
  MODIFY `inventoryId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `ProductOrder`
--
ALTER TABLE `ProductOrder`
  MODIFY `orderId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `ProductOrderItem`
--
ALTER TABLE `ProductOrderItem`
  MODIFY `orderItemId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `ProductSubCategory`
--
ALTER TABLE `ProductSubCategory`
  MODIFY `subCategoryId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Referral`
--
ALTER TABLE `Referral`
  MODIFY `referralId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `ReturnOrder`
--
ALTER TABLE `ReturnOrder`
  MODIFY `returnOrderId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `RewardWallet`
--
ALTER TABLE `RewardWallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `Section`
--
ALTER TABLE `Section`
  MODIFY `sectionId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `SizeChart`
--
ALTER TABLE `SizeChart`
  MODIFY `sizeChartId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testTrigger`
--
ALTER TABLE `testTrigger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Token`
--
ALTER TABLE `Token`
  MODIFY `tokenId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `userId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `WalletTransaction`
--
ALTER TABLE `WalletTransaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `Wishlist`
--
ALTER TABLE `Wishlist`
  MODIFY `wishlistId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Withdraw`
--
ALTER TABLE `Withdraw`
  MODIFY `withdrawId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
