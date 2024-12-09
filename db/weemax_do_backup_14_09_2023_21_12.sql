-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: weemax-db-mysql-blr1-52012-do-user-14533212-0.b.db.ondigitalocean.com:25060
-- Generation Time: Sep 14, 2023 at 03:41 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weemax`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `addressId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `addressLineOne` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `addressLineTwo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `zipCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isTn` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`addressId`, `userId`, `name`, `addressLineOne`, `addressLineTwo`, `city`, `state`, `zipCode`, `phone`, `isTn`, `status`, `createdAt`) VALUES
(1, 1, 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore', NULL, 'COIMBATORE', 'Tamil Nadu', '641659', '8870354097', 1, 'active', '2023-07-27 12:57:34'),
(2, 2, 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore', NULL, 'COIMBATORE', 'Tamil Nadu', '641659', '8870354097', 1, 'active', '2023-07-27 13:04:01'),
(3, 3, 'Preetham ', 'L-54/2 second floor,kootapalli colony tiruchengode ', NULL, 'Tiruchengode ', 'Tamilnadu ', '637214', '6381469846', 1, 'active', '2023-07-27 13:24:57'),
(4, 4, 'Vignesh Arivazhagan', '6/95/3 , kollupalayam , bharathiyar nagar , eb office road , Coimbatore 641659', NULL, 'Coimbatore', 'Tamil Nadu', '641659', '9789413685', 1, 'active', '2023-07-27 13:54:28'),
(5, 8, 'Thilak Rs', '46/1 Gandhiji Street, Opposite To Carmel School', 'Kollampalayam, Karur Road', 'Erode', 'Tamil Nadu', '638002', '7010908103', 1, 'active', '2023-07-27 14:04:47'),
(6, 7, 'Sanjiv v', '136/10B, ganapathy nagar ', 'Near mayavan malihi', 'Dharapuram ', 'Tamilnadu ', '638657', '9843959919', 1, 'active', '2023-07-27 14:05:25'),
(7, 6, 'Nimrukthi Senthilkumar', 'L-54/2 second floor,Kootapalli colony, near sana bakery,', 'kootapalli', 'Tiruchengode', 'Tamil Nadu', '637214', '9361874148', 1, 'active', '2023-07-27 14:15:20'),
(8, 6, 'Nimrukthi Senthilkumar', 'L-54/2 second floor,Kootapalli colony, near sana bakery,', 'kootapalli', 'Tiruchengode', 'Tamil Nadu', '637214', '9361874148', 1, 'active', '2023-07-27 14:15:20'),
(9, 11, 'Dheshapriyan', '263/7b Sivanesan complex ', 'Rice mill road Moolapalayam', 'Erode', 'Tamil nadu', '638002', '9994447204', 1, 'active', '2023-07-27 14:24:13'),
(10, 11, 'Dheshapriyan', '263/7b Sivanesan complex ', 'Rice mill road Moolapalayam', 'Erode', 'Tamil nadu', '638002', '9994447204', 1, 'active', '2023-07-27 14:24:13'),
(11, 9, 'Poomalai Ahilan', 'WHP hostel ', 'OP main road, Annamalai nagar', 'Chidambaram ', 'Tamilnadu ', '608002', '6383677721', 1, 'active', '2023-07-27 14:32:13'),
(12, 14, 'Naveen Prabu S', '3/134, Kittampalayam , Karumathampatti', NULL, 'Coimbatore', 'Tamil Nadu', '641659', '9345622794', 1, 'active', '2023-07-27 14:45:33'),
(13, 21, 'Nalini', '136/10b Ganapathi Nagar ', 'Near Mayavan malihi', 'Dharapuram ', 'tamilnadu', '638657', '9843406636', 1, 'active', '2023-07-27 16:34:11'),
(14, 24, 'Mohamed Tariq', '27 Manjunatha residency, 2nd Cross Saptagiri Layout, channasandra, whitefield', NULL, 'Bengaluru', 'KARNATAKA', '560067', '7092339606', 0, 'active', '2023-07-27 16:45:27'),
(15, 25, 'Surya', '3/250d, Karuveppampatti', NULL, 'Tiruchengode', 'TamilNadu', '637211', '9842754367', 1, 'active', '2023-07-27 17:21:39'),
(16, 9, 'Poomalai Ahilan', '186/4, Kavin Harsha complex, 2nd Street ', 'Netaji nagr, Trichy road ', 'Namakkal', 'Tamilnadu ', '637001', '6383677721', 1, 'active', '2023-07-27 18:03:54'),
(17, 27, 'Karthikeyan V', '4/276-8-1, Gandhi Nagar, Thekkalur, Avinashi ', NULL, 'Tiruppur', 'Tamil Nadu', '641654', '9344439060', 1, 'active', '2023-07-27 18:36:09'),
(18, 27, 'Karthikeyan V', '4/276-8-1, Gandhi Nagar, Thekkalur, Avinashi ', NULL, 'Tiruppur', 'Tamil Nadu', '641654', '9344439060', 1, 'active', '2023-07-27 18:36:10'),
(19, 44, 'SARAVANAKUMAR S', 'SERAMPALAYAM, MUTHUR', 'KANGEYAM TALUK, TIRUPUR DISTRICT', 'TIRUPUR', 'TAMILNADU', '638105', '8838757171', 1, 'active', '2023-07-28 06:24:01'),
(20, 47, 'Kaviya', 'No 48 new magazine road ', 'Vyasapadi ', 'Chennai', 'Tamilnadu ', '600039', '9940076493', 1, 'active', '2023-07-28 07:28:16'),
(21, 13, 'R Gunal', '32,Sowdamman Kovil Street', 'NN Pettai Street', 'Dharapuram,Tiruppur', 'TamilNadu', '638656', '9345710012', 1, 'active', '2023-07-28 08:41:08'),
(22, 49, 'Hemalatha M', '13, srinagar colony, thirunagar extension', 'Srinivasapuram', 'Thanjavur', 'Tamilnadu', '613009', '7418884563', 1, 'active', '2023-07-28 08:48:56'),
(23, 49, 'Hemalatha M', '13, srinagar colony, thirunagar extension', 'Srinivasapuram', 'Thanjavur', 'Tamilnadu', '613009', '7418884563', 1, 'active', '2023-07-28 08:48:56'),
(24, 29, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-28 09:23:35'),
(25, 29, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-28 09:23:49'),
(26, 29, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-28 09:24:26'),
(27, 29, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-28 09:24:28'),
(28, 57, 'Akash', '48, J S garden, 3rd street, Nallur, Tirupur. ', NULL, 'Tirupur', 'Tamilnadu', '641606', '7708012111', 1, 'active', '2023-07-28 09:59:46'),
(29, 57, 'Akash', '48, J S garden, 3rd street, Nallur, Tirupur. ', NULL, 'Tirupur', 'Tamilnadu', '641606', '7708012111', 1, 'active', '2023-07-28 09:59:47'),
(30, 76, 'Arivu', '29/40 kannan nagar', 'Indian Bank opposite street', 'Dharapuram', 'Tamil nadu', '638656', '9047272600', 1, 'active', '2023-07-28 15:33:18'),
(31, 72, 'Joshika.S', 'No.18,Sri Sakthi Nagar, Near parambariyam hotel,Thondamuthur road, Coimbatore -46', NULL, 'Coimbatore ', 'Tamilnadu ', '641046', '7598243340', 1, 'active', '2023-07-28 16:42:21'),
(32, 10, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-29 06:43:07'),
(33, 31, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-07-29 10:37:10'),
(34, 98, 'Bhuvaneshwari', '3-1-9 maravanpalayathankadu', 'Tiruchengode (taluk) Namakkal (district)', 'Sankari. Icl town', 'Tamil Nadu', '637303', '9360152017', 1, 'removed', '2023-07-30 05:58:32'),
(35, 98, 'Bhuvaneshwari', '3-1-9 maravanpalayathankadu', 'Tiruchengode (taluk) Namakkal (district)', 'Sankari. Icl town', 'Tamil Nadu', '637303', '9360152017', 1, 'active', '2023-07-30 05:59:48'),
(36, 98, 'Bhuvaneshwari', '3-1-9 maravanpalayathankadu', 'Tiruchengode (taluk) Namakkal (district)', 'Sankari. Icl town', 'Tamil Nadu', '637303', '9360152017', 1, 'active', '2023-07-30 06:00:13'),
(37, 100, 'Raja', '2/73, pillayar Kovil street, Ramachiyamapalayam', 'Somanur ', 'Coimbatore', 'Tamil Nadu ', '641668', '8973773284', 1, 'active', '2023-07-30 11:52:10'),
(38, 101, 'Divya ', 'No:1, kumaran Street, ayappa Nagar, ayapakkam, chennai - 600 077', NULL, 'Chennai ', 'Tamil Nadu ', '600077', '9445355733', 1, 'active', '2023-07-30 14:40:33'),
(39, 105, 'Praveen ', '1/159, Valluvar Colony, North Soorankudy, Nagercoil, kanniyakumari, 629501', NULL, 'Nagercoil ', 'Tamilnadu ', '629501', '9894500195', 1, 'active', '2023-07-31 08:37:03'),
(40, 31, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '9840260412', 1, 'active', '2023-08-01 19:36:08'),
(41, 31, 'Vyzov .', 'No:748,Thamaraipakkam kootroad,', 'Thirumalai nagar,', 'Thiruvallur', 'TN', '601103', '9840260412', 1, 'active', '2023-08-01 19:36:23'),
(42, 116, 'Abdul Munazzir a m', 'Sana bakery, KSR COLLEGE opp, KSR Kalvi Nagar, Pallipalayam , Namakkal, Tamil Nadu', 'Sana bakery', 'Pallipalayam', 'Tamil Nadu', '637215', '8760667863', 1, 'active', '2023-08-02 17:24:36'),
(43, 121, 'Tharani', 'D/no10A eswaran compound subbarayan 2nd st samundipuram south ', NULL, 'Tirupur', 'Tamilnadu', '641603', '96553 26355', 1, 'active', '2023-08-03 11:02:58'),
(44, 32, 'Thrisha.B.V.', 'No.8,9th Street Rajiv Gandhi nagar, CRPF opp ', NULL, 'Avadi, Chennai ', 'Tamilnadu ', '600065', '8015752265', 1, 'active', '2023-08-05 05:29:33'),
(45, 2, 'Elakkiya V', 'Rmz one paramount ', 'Near commerzone,mugalivakkam, porur', 'Chennai', 'TAMIL NADU', '600125', '9087639742', 1, 'active', '2023-08-06 12:34:05'),
(46, 129, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'removed', '2023-08-08 16:41:17'),
(47, 129, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'active', '2023-08-08 17:02:46'),
(48, 119, 'SAKTHI HARIHARA PRABHU', 'Gemini press building, fire service station opposite', 'Naganampatty road, Oddanchatram ', 'Dindigul', 'Tamil Nadu', '624619', '7904980440', 1, 'active', '2023-08-17 15:14:49'),
(49, 136, 'Jeeva', '64, dhanam ladies hostel, poosala gangu street, chinmaya Nagar,Egmore ', NULL, 'Chennai ', 'Tamilnadu ', '600008', '7395894082', 1, 'active', '2023-08-17 15:44:40'),
(50, 129, 'Yugendiran G', 'No:165a, 5th street,', 'Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', '8838669898', 1, 'removed', '2023-08-21 03:01:23'),
(51, 159, 'Sabari', 'Krs towers 7th street extension gandhipuram', 'Cbe', 'Coimbatore ', 'Tamil nadu', '641001', '9500404215', 1, 'active', '2023-08-23 00:37:53'),
(52, 28, 'JEROME P', 'Orchid View, DLF Garden City, Semmanjeri', NULL, 'Chennai', 'Tamil Nadu', '600130', '9150457023', 1, 'active', '2023-08-23 02:46:48'),
(53, 161, 'Janaki', '4 Kapurthala plot ,opposite Haryana Bhagwan ', 'Copernicus marg , Mandi House  ', 'Central Delhi ', 'New Delhi ', '110001', '9650605977', 0, 'active', '2023-08-23 04:05:58'),
(54, 17, 'Darshini Balasubramaniam ', '21E,Vimal Residency, Vimal Nagar, Thondamuthur Rd, Vadavalli ', NULL, 'Coimbatore ', 'Tamilnadu ', '641041', '9443433822', 1, 'active', '2023-08-28 08:07:51'),
(55, 78, 'Priya', '29/40', 'Kannan nagar', 'Dharapuram', 'Tamil nadu', '638656', '9843882600', 1, 'active', '2023-08-28 15:31:43'),
(56, 171, 'Badrinath', 'Vanavarayar institute of agriculture ', 'Vettaikaranpudhur , Manakkadavu ', 'Pollachi ', 'Tamil nadu', '642001', '8012029181', 1, 'active', '2023-08-28 19:21:03'),
(57, 138, 'Mohamed Bhasith', 'saravanampatti', NULL, 'Coimbatore', 'Tamilnadu', '641035', '9787086036', 1, 'active', '2023-08-30 09:02:22'),
(58, 129, 'Yugendiran G', 'No:748,Thamaraipakkam kootroad,', 'Thirumalai nagar,', 'Thiruvallur', 'TN', '601103', '8838669898', 1, 'removed', '2023-08-31 16:44:49'),
(59, 92, 'Thaufeek ', 'Somanur ', 'Somanur', 'Coimbatore ', 'TamilNadu', '641668', '9629328548', 1, 'active', '2023-09-01 11:58:51'),
(60, 182, 'Amol', 'Sara City B3 708 Kharabwadi Chakan', 'Chakan Pune', 'Pune', 'Maharashtra ', '410501', 'amolr78@gmail.c', 0, 'active', '2023-09-03 01:41:06'),
(61, 108, 'Aravindan E', '5/454 Jai Bhim Nagar,', 'Thazhambur,', 'Chennai', 'Tamilnadu', '600130', '9150102475', 1, 'active', '2023-09-07 03:52:46'),
(62, 186, 'Vasanth ', 'Therasapuram ,sriperambuthur', 'Hudson hotel opposite ', 'Sriperambuthur', 'Tamilnadu ', '602105', '8248685277', 1, 'active', '2023-09-11 05:35:18'),
(63, 187, 'Ganeshkumar', '234,madathankattuthottam, Periyaputhur', 'Govindhapuram ', 'Dharapuram ', 'Tamil Nadu', '638657', '9600757816', 1, 'active', '2023-09-14 08:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `adminId` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`adminId`, `name`, `email`, `password`, `status`, `createdAt`) VALUES
(1, 'admin', 'admin@gmail.com', '$2b$12$yFJQn0yHa/anWzdvbPChVOxjGMLaGUazekUnr8JR2uCFelS07DpJO', 'active', '2023-07-11 15:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `Basket`
--

CREATE TABLE `Basket` (
  `basketId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `productId` bigint NOT NULL,
  `inventoryId` bigint NOT NULL,
  `quantity` int NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Basket`
--

INSERT INTO `Basket` (`basketId`, `userId`, `productId`, `inventoryId`, `quantity`, `status`, `createdAt`) VALUES
(1, 129, 12, 397, 1, 'removed', '2023-08-09 11:30:20'),
(2, 10, 12, 397, 1, 'active', '2023-08-09 11:42:29'),
(3, 129, 12, 397, 1, 'removed', '2023-08-10 13:26:52'),
(4, 129, 12, 397, 1, 'removed', '2023-08-10 14:12:07'),
(5, 7, 11, 391, 1, 'removed', '2023-08-10 17:42:08'),
(6, 32, 56, 216, 1, 'removed', '2023-08-11 16:23:13'),
(7, 32, 57, 221, 1, 'removed', '2023-08-11 16:23:53'),
(8, 32, 60, 236, 1, 'removed', '2023-08-11 16:24:06'),
(9, 32, 61, 241, 1, 'removed', '2023-08-11 16:24:16'),
(10, 32, 63, 251, 1, 'removed', '2023-08-11 16:24:52'),
(11, 32, 54, 206, 1, 'removed', '2023-08-11 16:25:34'),
(12, 129, 12, 397, 1, 'removed', '2023-08-11 17:32:40'),
(13, 31, 12, 397, 1, 'removed', '2023-08-14 20:09:23'),
(14, 7, 41, 141, 1, 'removed', '2023-08-15 04:21:21'),
(15, 108, 101, 389, 1, 'removed', '2023-08-16 03:37:51'),
(16, 2, 40, 136, 1, 'removed', '2023-08-16 08:32:51'),
(17, 7, 38, 126, 1, 'removed', '2023-08-16 08:41:20'),
(18, 2, 40, 136, 1, 'removed', '2023-08-16 09:37:09'),
(19, 2, 40, 136, 1, 'removed', '2023-08-16 09:38:12'),
(20, 31, 11, 391, 1, 'active', '2023-08-16 16:44:49'),
(21, 2, 11, 391, 1, 'removed', '2023-08-17 07:32:19'),
(22, 119, 38, 127, 1, 'removed', '2023-08-17 15:13:34'),
(23, 119, 39, 132, 1, 'removed', '2023-08-17 15:13:50'),
(24, 119, 39, 134, 1, 'removed', '2023-08-17 15:13:54'),
(25, 136, 65, 262, 1, 'active', '2023-08-17 15:43:00'),
(26, 137, 56, 216, 1, 'active', '2023-08-17 15:50:49'),
(27, 29, 38, 126, 1, 'removed', '2023-08-17 16:37:37'),
(28, 29, 12, 397, 1, 'removed', '2023-08-17 16:46:58'),
(29, 139, 64, 257, 1, 'active', '2023-08-18 02:15:20'),
(30, 140, 56, 216, 1, 'active', '2023-08-18 03:45:59'),
(31, 143, 13, 31, 1, 'active', '2023-08-18 07:31:38'),
(32, 144, 77, 403, 1, 'active', '2023-08-18 13:05:44'),
(33, 146, 65, 261, 1, 'active', '2023-08-18 15:47:28'),
(34, 147, 62, 246, 1, 'active', '2023-08-18 17:17:01'),
(35, 152, 47, 171, 1, 'removed', '2023-08-20 16:12:26'),
(36, 152, 47, 172, 1, 'active', '2023-08-20 16:12:40'),
(37, 152, 48, 178, 1, 'active', '2023-08-20 16:13:21'),
(38, 152, 68, 277, 1, 'active', '2023-08-20 16:14:39'),
(39, 156, 23, 81, 1, 'active', '2023-08-21 02:37:02'),
(40, 129, 12, 397, 1, 'removed', '2023-08-21 03:01:00'),
(41, 129, 12, 397, 1, 'removed', '2023-08-21 05:20:04'),
(42, 129, 12, 397, 1, 'removed', '2023-08-21 05:21:21'),
(43, 129, 12, 397, 1, 'removed', '2023-08-21 05:22:21'),
(44, 129, 12, 397, 1, 'removed', '2023-08-21 05:24:23'),
(45, 129, 12, 397, 1, 'removed', '2023-08-21 05:24:55'),
(46, 129, 12, 398, 1, 'removed', '2023-08-21 05:29:12'),
(47, 129, 12, 398, 1, 'removed', '2023-08-21 05:35:50'),
(48, 129, 12, 398, 1, 'removed', '2023-08-21 06:00:34'),
(49, 129, 12, 399, 1, 'removed', '2023-08-21 06:04:25'),
(50, 129, 20, 67, 1, 'removed', '2023-08-21 06:04:31'),
(51, 129, 41, 141, 1, 'removed', '2023-08-21 06:04:37'),
(52, 129, 12, 399, 1, 'removed', '2023-08-21 06:47:39'),
(53, 158, 41, 143, 1, 'active', '2023-08-22 17:50:10'),
(54, 2, 42, 149, 1, 'removed', '2023-08-22 18:41:10'),
(55, 2, 42, 149, 1, 'removed', '2023-08-22 18:43:06'),
(56, 2, 11, 391, 2, 'removed', '2023-08-22 20:56:47'),
(57, 159, 41, 142, 1, 'active', '2023-08-23 00:36:57'),
(58, 28, 40, 136, 1, 'active', '2023-08-23 02:46:11'),
(59, 161, 60, 238, 1, 'active', '2023-08-23 04:04:31'),
(60, 161, 61, 244, 1, 'active', '2023-08-23 04:06:58'),
(61, 32, 58, 226, 1, 'removed', '2023-08-26 04:51:50'),
(62, 129, 12, 409, 1, 'removed', '2023-08-26 20:25:27'),
(63, 129, 20, 67, 1, 'removed', '2023-08-26 20:28:17'),
(64, 129, 41, 142, 1, 'removed', '2023-08-26 20:32:01'),
(65, 170, 62, 250, 1, 'removed', '2023-08-27 11:54:37'),
(66, 170, 62, 246, 1, 'removed', '2023-08-27 11:55:48'),
(67, 170, 62, 250, 1, 'active', '2023-08-27 11:56:06'),
(68, 17, 48, 176, 1, 'removed', '2023-08-28 08:03:03'),
(69, 17, 48, 178, 1, 'removed', '2023-08-28 08:03:10'),
(70, 78, 58, 229, 2, 'removed', '2023-08-28 15:24:05'),
(71, 78, 93, 385, 2, 'removed', '2023-08-28 15:27:12'),
(72, 78, 11, 391, 1, 'removed', '2023-08-28 15:28:43'),
(73, 7, 11, 391, 2, 'removed', '2023-08-28 15:29:10'),
(74, 171, 39, 134, 1, 'active', '2023-08-28 19:17:39'),
(75, 2, 11, 391, 2, 'active', '2023-08-29 14:36:18'),
(76, 129, 20, 67, 1, 'removed', '2023-08-29 14:46:05'),
(77, 138, 41, 142, 1, 'active', '2023-08-30 09:02:04'),
(78, 14, 12, 409, 1, 'active', '2023-09-01 08:01:47'),
(79, 173, 20, 67, 1, 'active', '2023-09-01 08:19:40'),
(80, 7, 19, 61, 1, 'active', '2023-09-01 08:22:30'),
(81, 92, 13, 35, 1, 'active', '2023-09-01 11:56:50'),
(82, 11, 12, 412, 1, 'removed', '2023-09-02 11:38:52'),
(83, 11, 41, 142, 1, 'removed', '2023-09-02 11:40:32'),
(84, 11, 39, 131, 1, 'removed', '2023-09-02 11:41:04'),
(85, 11, 39, 134, 1, 'removed', '2023-09-02 11:41:21'),
(86, 182, 18, 57, 1, 'active', '2023-09-02 17:03:22'),
(87, 129, 12, 409, 1, 'removed', '2023-09-04 17:45:15'),
(88, 129, 12, 409, 1, 'removed', '2023-09-04 18:00:03'),
(89, 129, 12, 409, 1, 'removed', '2023-09-04 18:02:51'),
(90, 129, 12, 411, 1, 'removed', '2023-09-04 18:04:35'),
(91, 129, 12, 411, 1, 'removed', '2023-09-04 18:05:56'),
(92, 29, 12, 412, 1, 'removed', '2023-09-04 18:23:14'),
(93, 129, 12, 412, 1, 'active', '2023-09-04 18:26:35'),
(94, 29, 12, 412, 1, 'removed', '2023-09-04 18:34:39'),
(95, 29, 12, 412, 1, 'removed', '2023-09-04 18:39:06'),
(96, 129, 11, 424, 1, 'removed', '2023-09-05 23:01:00'),
(97, 129, 11, 424, 1, 'active', '2023-09-05 23:02:27'),
(98, 129, 11, 425, 1, 'active', '2023-09-05 23:02:36'),
(99, 184, 97, 364, 1, 'active', '2023-09-06 07:38:49'),
(100, 138, 12, 413, 1, 'active', '2023-09-06 16:02:07'),
(101, 21, 97, 361, 1, 'active', '2023-09-07 14:29:55'),
(102, 140, 53, 201, 1, 'active', '2023-09-10 23:54:00'),
(103, 186, 16, 48, 1, 'active', '2023-09-11 05:33:33'),
(104, 187, 12, 412, 1, 'active', '2023-09-14 08:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `CancelOrder`
--

CREATE TABLE `CancelOrder` (
  `cancelOrderId` bigint NOT NULL,
  `orderId` bigint NOT NULL,
  `orderItemId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refundMethod` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wallet' COMMENT 'wallet, bank',
  `refundData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'requested' COMMENT 'requested, initiated, credited',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CancelOrder`
--

INSERT INTO `CancelOrder` (`cancelOrderId`, `orderId`, `orderItemId`, `userId`, `reason`, `refundMethod`, `refundData`, `status`, `createdAt`) VALUES
(1, 63, 65, 129, 'sdf', 'wallet', NULL, 'requested', '2023-08-29 12:55:26'),
(14, 48, 52, 7, 'wrong order', 'wallet', NULL, 'requested', '2023-08-21 06:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `CareerRequest`
--

CREATE TABLE `CareerRequest` (
  `careerRequestId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `category` varchar(50) NOT NULL,
  `reason` text,
  `address` text NOT NULL,
  `referralCode` varchar(11) DEFAULT NULL,
  `mode` varchar(50) NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'pending' COMMENT 'pending, rejected, banned, approved',
  `requestedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approvedAt` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CareerRequest`
--

INSERT INTO `CareerRequest` (`careerRequestId`, `userId`, `category`, `reason`, `address`, `referralCode`, `mode`, `status`, `requestedAt`, `approvedAt`) VALUES
(1, 129, 'student', 'sdf', 'sdf', 'aasdad', 'offline', 'approved', '2023-09-06 19:27:38', '2023-09-06T18:30:00.000Z'),
(2, 2, 'business', 'Just fr money', '4/34, Kollupalayam, Coimbatore ', 'weemax', 'both', 'approved', '2023-09-06 19:55:27', '2023-09-06T18:30:00.000Z'),
(3, 7, 'student', 'R x4xr', 'Sanjiv', 'wwergg', 'online', 'approved', '2023-09-07 15:52:44', '2023-09-06T18:30:00.000Z'),
(4, 3, 'business', 'Own a brand ', 'L54/2 second floor Kootapalli colony Tiruchengode 637214', 'pree06', 'both', 'approved', '2023-09-10 15:17:42', '2023-09-09T18:30:00.000Z');

-- --------------------------------------------------------

--
-- Table structure for table `CareerVisits`
--

CREATE TABLE `CareerVisits` (
  `careerVisitsId` bigint NOT NULL,
  `code` varchar(11) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CareerVisits`
--

INSERT INTO `CareerVisits` (`careerVisitsId`, `code`, `date`, `time`, `createdAt`) VALUES
(6, 'PRE98463', '2023-09-10', '15:24:02', '2023-09-10 15:24:02'),
(7, 'PRE98463', '2023-09-10', '15:24:22', '2023-09-10 15:24:22'),
(8, 'PRE98463', '2023-09-10', '21:23:03', '2023-09-10 21:23:03'),
(9, 'PRE98463', '2023-09-10', '21:23:04', '2023-09-10 21:23:04'),
(10, 'PRE98463', '2023-09-11', '00:26:19', '2023-09-11 00:26:19'),
(11, 'PRE98463', '2023-09-11', '01:09:15', '2023-09-11 01:09:15'),
(12, 'PRE98463', '2023-09-11', '01:19:47', '2023-09-11 01:19:47'),
(13, 'PRE98463', '2023-09-11', '01:20:57', '2023-09-11 01:20:57'),
(14, 'PRE98463', '2023-09-11', '02:42:53', '2023-09-11 02:42:53'),
(15, 'PRE98463', '2023-09-11', '02:43:41', '2023-09-11 02:43:41'),
(16, 'PRE98463', '2023-09-11', '03:35:13', '2023-09-11 03:35:13'),
(17, 'PRE98463', '2023-09-11', '03:49:40', '2023-09-11 03:49:40'),
(18, 'PRE98463', '2023-09-11', '03:50:19', '2023-09-11 03:50:19'),
(19, 'PRE98463', '2023-09-11', '04:31:13', '2023-09-11 04:31:13'),
(20, 'PRE98463', '2023-09-11', '05:00:42', '2023-09-11 05:00:42'),
(21, 'PRE98463', '2023-09-11', '05:01:23', '2023-09-11 05:01:23'),
(22, 'PRE98463', '2023-09-11', '05:07:01', '2023-09-11 05:07:01'),
(23, 'PRE98463', '2023-09-11', '05:07:40', '2023-09-11 05:07:40'),
(24, 'PRE98463', '2023-09-11', '05:28:39', '2023-09-11 05:28:39'),
(25, 'pree06', '2023-09-11', '05:29:15', '2023-09-11 05:29:15'),
(26, 'pree06', '2023-09-11', '05:30:57', '2023-09-11 05:30:57'),
(27, 'PRE98463', '2023-09-11', '06:32:49', '2023-09-11 06:32:49'),
(28, 'PRE98463', '2023-09-11', '08:52:00', '2023-09-11 08:52:00'),
(29, 'PRE98463', '2023-09-11', '11:09:32', '2023-09-11 11:09:32'),
(30, 'weemax', '2023-09-13', '10:18:05', '2023-09-13 10:18:05'),
(31, 'weemax', '2023-09-13', '10:18:57', '2023-09-13 10:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `ContactMessage`
--

CREATE TABLE `ContactMessage` (
  `messageId` bigint NOT NULL,
  `firstName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'submitted' COMMENT 'submitted, resolved, pending',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ContactMessage`
--

INSERT INTO `ContactMessage` (`messageId`, `firstName`, `lastName`, `email`, `phoneNumber`, `message`, `comment`, `status`, `createdAt`) VALUES
(1, 'Yugendiran', 'G', 'yyugi64@gmail.com', '08838669898', 'Test', NULL, 'resolved', '2023-08-03 13:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `ForgotPasswordToken`
--

CREATE TABLE `ForgotPasswordToken` (
  `id` bigint NOT NULL,
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'email,phone',
  `token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending' COMMENT 'pending,expired,used',
  `expAt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ForgotPasswordToken`
--

INSERT INTO `ForgotPasswordToken` (`id`, `account`, `type`, `token`, `status`, `expAt`, `createdAt`) VALUES
(1, 'yyugi64@gmail.com', 'email', '7c90e653963e13dd5469d31b0610215f7e79a9a0c14e590c89abd570da546b931ce575fc-00e8-40b2-822c-78aef1b76cd1', 'used', '2023-07-27 22:45:19', '2023-07-27 22:35:19'),
(2, 'saipoongodik2012@gmail.com', 'email', '00fc1931605a7f66de931d117a747d96d1f46a2a4f5eb99afcb697f06c3093e9b7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 03:38:12', '2023-07-28 03:28:12'),
(3, 'naveenasrik@gmail.com', 'email', 'e14c00797673e5657eefbb6b698c3b8ad4420e84ffd779429362a043b70f1862b7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 06:52:04', '2023-07-28 06:42:04'),
(4, 'akashthozhan@gmail.com', 'email', '95d283aeb81e091b32b6c8ca77bc4cfdf5b5e38c483ef2808aaa491b03b1f593b7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 10:02:22', '2023-07-28 09:52:22'),
(5, 'bharath21official@gmail.com', 'email', '482d7464a6a6a1ad66d49285449fb1197c910280b8e236c07d7dc9133703528db7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 10:30:11', '2023-07-28 10:20:11'),
(6, 'Nithinnking93@gmail.com', 'email', '6b2330958722e580b1f41eaa0f3e66e34340d85a37d8ae1ee762d32a2266e842b7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 15:19:11', '2023-07-28 15:09:11'),
(7, 'Nithinnking93@gmail.com', 'email', '5bf39caa5cfbd920ea792eeb1f048db510b2ddcf36088f2d4a827afb89068fc8b7be9ae6-da50-4c19-b0dd-95974636280d', 'used', '2023-07-28 15:21:07', '2023-07-28 15:11:07'),
(8, 'nilegna.priya@gmail.com', 'email', 'e8968597f9252176fed1f76a518e40d23b0f0c1649f5c8f7f06e93b2c7f0d05b51682e7c-c600-4fbe-8356-ef30c05cede1', 'pending', '2023-07-29 02:35:56', '2023-07-29 02:25:56'),
(9, 'nilegna.priya@gmail.com', 'email', '8db488e61d249d9f09ea166541b7bfe9edb6976f769d41ac9c9b1d8f9be1714151682e7c-c600-4fbe-8356-ef30c05cede1', 'used', '2023-07-29 02:35:57', '2023-07-29 02:25:57'),
(10, 'nilegna.priya@gmail.com', 'email', '77dff49ee876629717d0767063c7a78cf43825bf417f3be2007c75fa6870431b51682e7c-c600-4fbe-8356-ef30c05cede1', 'pending', '2023-07-29 02:37:07', '2023-07-29 02:27:07'),
(11, 'yyugi64@gmail.com', 'email', 'da9d7c3aa7869e9709da96a890cb6ebe7f9aa0bc935c97de19da7704845e69b68b7b8f59-e8ae-430d-aebd-882650c450bd', 'used', '2023-07-29 16:09:47', '2023-07-29 10:29:55'),
(12, 'gayathrithangavel1910@gmail.com ', 'email', '4150aa21fe83abcf72487104f6c3085fd1a7b3faea36fccb36afdd88ffde3fb7cc019b0c-1358-4525-83cb-d370fc9b15c6', 'used', '2023-08-03 08:21:01', '2023-08-03 08:11:01'),
(13, 'gayathrithangavel1910@gmail.com ', 'email', '905d5a990b97b96c2bc9d04cf2f175550754826c5d3f522a828838fc40b09fbecc019b0c-1358-4525-83cb-d370fc9b15c6', 'pending', '2023-08-03 08:21:41', '2023-08-03 08:11:41'),
(14, 'yyugi64@gmail.com', 'email', '55fd5e108cac67063426869530f93a8b59c1313d431b2a023d32eae577e360e8232e9d76-b32a-4273-9273-d29bb1685414', 'used', '2023-08-08 20:45:50', '2023-08-08 15:06:04'),
(15, 'aravindanaravindan484@gmail.com ', 'email', '246611401ddd396f6e7fc8d8a3daa37842925ab1a008a1f86e85c8d69e0b5b67dd2ce17c-0736-436e-8d86-5a91436da8a7', 'used', '2023-08-13 13:53:29', '2023-08-13 13:43:29'),
(16, 'vyshuvenkatesan@gmail.com', 'email', '2943e3ca8f2be00d89d78d5b92b1b6970719870c1526a5af1120f4911dbe8351121f14e0-63d1-413b-a401-5c947aeede53', 'pending', '2023-08-26 05:06:36', '2023-08-26 04:56:36'),
(17, 'vyshuvenkatesan@gmail.com', 'email', '760dc9cd36cba0d4b275056428cdba17c97937ad91e8dcba8ed1611709b5a09d121f14e0-63d1-413b-a401-5c947aeede53', 'used', '2023-08-26 05:06:37', '2023-08-26 04:56:37'),
(18, 'hariprasanna082@gmail.com', 'email', '8d60509befeb9dc4e5fdf4f379dae0aa76920d2a9190d58f87fa641b21e1005e286a7820-d0f9-4024-ab30-a9abf8c43f17', 'used', '2023-08-27 10:26:34', '2023-08-27 10:16:34'),
(19, 'sathyathirumurugan2@gmail.com ', 'email', '0cff872cefbd243706e4a35801d29f2744eac7dc2410863aa1c149a5f40a95b55913a230-6fa2-4b6a-ba54-68609060e115', 'used', '2023-08-31 14:14:50', '2023-08-31 14:04:50'),
(20, 'sathyathirumurugan2@gmail.com ', 'email', 'fc4a89f2e585c49bb46024ed8f712f486d9276e5f1c38fd7bd6a83a19aad49c05913a230-6fa2-4b6a-ba54-68609060e115', 'pending', '2023-08-31 14:15:04', '2023-08-31 14:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `Kyc`
--

CREATE TABLE `Kyc` (
  `kycId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `bankHolderName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankIfscCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankAccNumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadharPhotoFront` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadharPhotoBack` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `panPhoto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passbookPhoto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending' COMMENT 'pending,approved,canceled',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Level`
--

CREATE TABLE `Level` (
  `levelId` bigint NOT NULL,
  `levelValue` int NOT NULL
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
  `otpId` bigint NOT NULL,
  `to` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'email,sms',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending' COMMENT 'pending,used,expired',
  `expAt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Otp`
--

INSERT INTO `Otp` (`otpId`, `to`, `type`, `code`, `status`, `expAt`, `createdAt`) VALUES
(1, 'weemaxecom@gmail.com', 'email', '011921', 'used', '2023-07-27 13:06:39', '2023-07-27 12:56:39'),
(2, 'sakthiganesh533@gmail.com', 'email', '041471', 'used', '2023-07-27 13:09:51', '2023-07-27 12:59:52'),
(3, 'preethamsenthilkumar2012@gmail.com', 'email', '836994', 'used', '2023-07-27 13:29:47', '2023-07-27 13:19:47'),
(4, 'vignesharivazhagan22@gmail.com', 'email', '360255', 'used', '2023-07-27 13:49:07', '2023-07-27 13:39:07'),
(5, 'nagukumar852@gmail.com', 'email', '057061', 'used', '2023-07-27 13:59:09', '2023-07-27 13:49:10'),
(6, 'nimrukthisenthilkumar001@gmail.com', 'email', '482253', 'used', '2023-07-27 14:00:44', '2023-07-27 13:50:44'),
(7, 'sanjivdpm2003@gmail.com', 'email', '575651', 'used', '2023-07-27 14:02:53', '2023-07-27 13:52:53'),
(8, 'thilaksenthilkumar16@gmail.com', 'email', '338188', 'used', '2023-07-27 14:05:45', '2023-07-27 13:55:45'),
(9, 'thilaksenthilkumar16@gmail.com', 'email', '310599', 'pending', '2023-07-27 14:06:16', '2023-07-27 13:56:16'),
(10, 'poomalahilan@gmail.com', 'email', '429785', 'used', '2023-07-27 14:17:55', '2023-07-27 14:07:55'),
(11, 'yyugi64@gmail.com', 'email', '584628', 'used', '2023-07-27 14:24:26', '2023-07-27 14:14:26'),
(12, 'dhesha77@gmail.com', 'email', '306115', 'used', '2023-07-27 14:26:21', '2023-07-27 14:16:21'),
(13, 'arunkumardhoni483@gmail.com', 'email', '012956', 'used', '2023-07-27 14:33:40', '2023-07-27 14:23:41'),
(14, 'gunalrajarathinam11@gmail.com', 'email', '151709', 'used', '2023-07-27 14:34:07', '2023-07-27 14:24:07'),
(15, 'naveenprabu21@gmail.com', 'email', '468215', 'used', '2023-07-27 14:48:43', '2023-07-27 14:38:43'),
(16, 'nowfilkaadharmaideennasarali@gmail.com', 'email', '593578', 'used', '2023-07-27 14:53:07', '2023-07-27 14:43:07'),
(17, 'hariprasanna082@gmail.com', 'email', '818868', 'used', '2023-07-27 14:53:26', '2023-07-27 14:43:26'),
(18, 'darshinibalu0@gmail.com', 'email', '603386', 'used', '2023-07-27 14:57:42', '2023-07-27 14:47:42'),
(19, 'manojkumars27062000@gmail.com', 'email', '803762', 'used', '2023-07-27 15:00:14', '2023-07-27 14:50:15'),
(20, 'hariharan112k@gmail.com', 'email', '637023', 'used', '2023-07-27 15:40:39', '2023-07-27 15:30:39'),
(21, 'er.rajkumartkn@gmail.com', 'email', '678229', 'used', '2023-07-27 16:16:02', '2023-07-27 16:06:02'),
(22, 'vadivelunalinidpm@gmail.com', 'email', '852947', 'used', '2023-07-27 16:30:31', '2023-07-27 16:20:31'),
(23, 'vadarsana@gmail.com', 'email', '094539', 'pending', '2023-07-27 16:35:24', '2023-07-27 16:25:24'),
(24, 'elakkiyavaradharajan20@gmail.com', 'email', '798692', 'used', '2023-07-27 16:35:54', '2023-07-27 16:25:54'),
(25, 'vadarsana@gmail.com', 'email', '785929', 'pending', '2023-07-27 16:42:20', '2023-07-27 16:32:20'),
(26, 'vadarsana@gmail.com', 'email', '245677', 'pending', '2023-07-27 16:42:28', '2023-07-27 16:32:28'),
(27, 'vadarsana@gmail.com', 'email', '197572', 'pending', '2023-07-27 16:42:44', '2023-07-27 16:32:45'),
(28, 'vadarsana@gmail.com', 'email', '200329', 'pending', '2023-07-27 16:44:10', '2023-07-27 16:34:10'),
(29, 'vadarsana@gmail.com', 'email', '638436', 'pending', '2023-07-27 16:44:14', '2023-07-27 16:34:14'),
(30, 'vadarsana@gmail.com', 'email', '041222', 'pending', '2023-07-27 16:44:18', '2023-07-27 16:34:18'),
(31, 'vadarsana@gmail.com', 'email', '467026', 'pending', '2023-07-27 16:44:19', '2023-07-27 16:34:19'),
(32, 'vadarsana@gmail.com', 'email', '531956', 'pending', '2023-07-27 16:44:21', '2023-07-27 16:34:21'),
(33, 'vadarsana@gmail.com', 'email', '339798', 'pending', '2023-07-27 16:44:21', '2023-07-27 16:34:21'),
(34, 'vadarsana@gmail.com', 'email', '496721', 'pending', '2023-07-27 16:44:22', '2023-07-27 16:34:22'),
(35, 'mohamed.tariq46@gmail.com', 'email', '779613', 'used', '2023-07-27 16:50:38', '2023-07-27 16:40:38'),
(36, 'suryarajavlt@gmail.com', 'email', '808765', 'pending', '2023-07-27 17:27:04', '2023-07-27 17:17:04'),
(37, 'suryarajavlt@gmail.com', 'email', '294690', 'used', '2023-07-27 17:27:24', '2023-07-27 17:17:25'),
(38, 'rajasusai914@gmail.com', 'email', '235330', 'used', '2023-07-27 17:59:59', '2023-07-27 17:49:59'),
(39, 'karthikeyanvenkatachalapathi5@gmail.com', 'email', '542026', 'used', '2023-07-27 18:31:31', '2023-07-27 18:21:31'),
(40, 'bharathjero2705@gmail.com', 'email', '736911', 'pending', '2023-07-27 22:28:37', '2023-07-27 22:18:37'),
(41, 'bharathjero2705@gmail.com', 'email', '624069', 'used', '2023-07-27 22:29:28', '2023-07-27 22:19:28'),
(42, 'yugendiran2829@gmail.com', 'email', '678567', 'used', '2023-07-27 22:48:13', '2023-07-27 22:38:13'),
(43, 'golspoh128@gmail.com', 'email', '381405', 'pending', '2023-07-27 22:53:49', '2023-07-27 22:43:49'),
(44, 'golspoh128@gmail.com', 'email', '993834', 'used', '2023-07-27 22:58:17', '2023-07-27 22:48:17'),
(45, 'thrishavengaiah823@gmail.com', 'email', '894246', 'used', '2023-07-28 00:40:07', '2023-07-28 00:30:07'),
(46, 'sathyathirumurugan2@gmail.com', 'email', '190914', 'used', '2023-07-28 00:42:54', '2023-07-28 00:32:54'),
(47, 'sathyathirumurugan2@gmail.com', 'email', '635776', 'pending', '2023-07-28 00:43:10', '2023-07-28 00:33:10'),
(48, 'bhuvisai21@gmail.com', 'email', '205462', 'used', '2023-07-28 02:02:22', '2023-07-28 01:52:22'),
(49, 'kavin7254@gmail.com', 'email', '316855', 'used', '2023-07-28 02:45:44', '2023-07-28 02:35:45'),
(50, 'sukeeswer3069@gmail.com', 'email', '182726', 'used', '2023-07-28 03:26:03', '2023-07-28 03:16:04'),
(51, 'saipoongodik2012@gmail.com', 'email', '708521', 'used', '2023-07-28 03:36:26', '2023-07-28 03:26:26'),
(52, 'mdeepakkumar0301@gmail.com', 'email', '769113', 'used', '2023-07-28 04:06:29', '2023-07-28 03:56:29'),
(53, 'sakthiveldb95@gmail.com', 'email', '059151', 'used', '2023-07-28 04:10:02', '2023-07-28 04:00:02'),
(54, 'gokultrz16@gmail.com', 'email', '553554', 'used', '2023-07-28 04:44:33', '2023-07-28 04:34:33'),
(55, 'svigneshtn29@gmail.com', 'email', '948508', 'used', '2023-07-28 05:42:28', '2023-07-28 05:32:28'),
(56, 'ananddn777@gmail.com', 'email', '054298', 'used', '2023-07-28 06:16:10', '2023-07-28 06:06:10'),
(57, 'harishjude@gmail.com', 'email', '846594', 'used', '2023-07-28 06:16:21', '2023-07-28 06:06:21'),
(58, 'saravanakumar022@gmail.com', 'email', '009865', 'used', '2023-07-28 06:30:00', '2023-07-28 06:20:00'),
(59, 'vyshuvenkatesan@gmail.com', 'email', '314225', 'used', '2023-07-28 06:48:44', '2023-07-28 06:38:44'),
(60, 'naveenasrik@gmail.com', 'email', '517353', 'used', '2023-07-28 06:50:10', '2023-07-28 06:40:10'),
(61, 'kaviyashankar2828@gmail.com', 'email', '908391', 'used', '2023-07-28 07:33:40', '2023-07-28 07:23:40'),
(62, 'manojmistymac@gmail.com', 'email', '587041', 'pending', '2023-07-28 08:49:04', '2023-07-28 08:39:04'),
(63, 'manojmistymac@gmail.com', 'email', '239876', 'pending', '2023-07-28 08:50:14', '2023-07-28 08:40:14'),
(64, 'manojmistymac@gmail.com', 'email', '647621', 'used', '2023-07-28 08:50:15', '2023-07-28 08:40:15'),
(65, 'hemamathi1902@gmail.com', 'email', '040934', 'used', '2023-07-28 08:54:53', '2023-07-28 08:44:53'),
(66, 'shankarishanmugam23@gmail.com', 'email', '685968', 'used', '2023-07-28 09:14:51', '2023-07-28 09:04:51'),
(67, 'geetha4771@gmail.com', 'email', '454726', 'pending', '2023-07-28 09:37:12', '2023-07-28 09:27:12'),
(68, 'srinathr20bct042@gmail.com', 'email', '342952', 'used', '2023-07-28 09:41:03', '2023-07-28 09:31:03'),
(69, 'mahajayanthmanoharan@gmail.com', 'email', '627493', 'used', '2023-07-28 09:41:11', '2023-07-28 09:31:11'),
(70, 'itsdkarthickhere@gmail.com', 'email', '310456', 'used', '2023-07-28 09:41:16', '2023-07-28 09:31:16'),
(71, 'sanjaychandran2307@gmail.com', 'email', '691157', 'pending', '2023-07-28 09:46:07', '2023-07-28 09:36:07'),
(72, 'sanjaychandran2307@gmail.com', 'email', '860811', 'used', '2023-07-28 09:46:24', '2023-07-28 09:36:24'),
(73, 'sanjaychandran2307@gmail.com', 'email', '913042', 'used', '2023-07-28 09:48:11', '2023-07-28 09:38:11'),
(74, 'manishaakrishnavel@gmail.com', 'email', '091587', 'used', '2023-07-28 09:57:19', '2023-07-28 09:47:20'),
(75, 'akashthozhan@gmail.com', 'email', '605197', 'used', '2023-07-28 10:00:33', '2023-07-28 09:50:33'),
(76, 'shankarishanmugam23@gmail.com', 'email', '292418', 'used', '2023-07-28 10:01:26', '2023-07-28 09:51:26'),
(77, 'bharath21official@gmail.com', 'email', '491002', 'used', '2023-07-28 10:27:52', '2023-07-28 10:17:52'),
(78, 'sabarikumar984@gmail.com', 'email', '925016', 'used', '2023-07-28 10:29:24', '2023-07-28 10:19:24'),
(79, 'rameshchandran2002@gmail.com', 'email', '009362', 'used', '2023-07-28 10:38:45', '2023-07-28 10:28:45'),
(80, 'lhekha007slm@gmail.com', 'email', '083658', 'used', '2023-07-28 10:41:41', '2023-07-28 10:31:41'),
(81, 'Pragathipragu29@gmail.com', 'email', '026794', 'used', '2023-07-28 10:41:48', '2023-07-28 10:31:48'),
(82, 'pswathikaa03@gmail.com', 'email', '558271', 'used', '2023-07-28 10:53:08', '2023-07-28 10:43:09'),
(83, 'yuvanpys007@gmail.com', 'email', '982492', 'used', '2023-07-28 10:55:28', '2023-07-28 10:45:28'),
(84, 'sakthivrajan@gmail.com', 'email', '384891', 'pending', '2023-07-28 11:33:50', '2023-07-28 11:23:50'),
(85, 'sakthiganeshvrajan@gmail.com', 'email', '473991', 'used', '2023-07-28 11:35:47', '2023-07-28 11:25:47'),
(86, 'anbuanbarasu@gmail.com', 'email', '372362', 'pending', '2023-07-28 11:53:24', '2023-07-28 11:43:24'),
(87, 'anbuanbarasu@gmail.com', 'email', '607951', 'pending', '2023-07-28 11:54:03', '2023-07-28 11:44:03'),
(88, 'priyankha1504slm@gmail.com', 'email', '825039', 'used', '2023-07-28 11:54:17', '2023-07-28 11:44:17'),
(89, 'kkavipriya174@gmail.com', 'email', '707030', 'pending', '2023-07-28 12:54:19', '2023-07-28 12:44:19'),
(90, 'jeeva7240@gmail.com', 'email', '555846', 'pending', '2023-07-28 12:55:22', '2023-07-28 12:45:22'),
(91, 'kkavipriya174@gmail.com', 'email', '706686', 'used', '2023-07-28 12:56:43', '2023-07-28 12:46:43'),
(92, 'indhumathi242002@gmail.com', 'email', '125563', 'used', '2023-07-28 13:22:25', '2023-07-28 13:12:26'),
(93, 'joshika702@gmail.com', 'email', '830606', 'used', '2023-07-28 13:53:47', '2023-07-28 13:43:47'),
(94, 'gnanasehar000@gmail.com', 'email', '162957', 'used', '2023-07-28 14:06:50', '2023-07-28 13:56:50'),
(95, 'gocoolrz@gmail.com', 'email', '708509', 'used', '2023-07-28 14:33:37', '2023-07-28 14:23:38'),
(96, 'mkanfan709@gmail.com', 'email', '760602', 'used', '2023-07-28 14:41:23', '2023-07-28 14:31:24'),
(97, 'arivalagan.dpm@gmail.com', 'email', '738397', 'used', '2023-07-28 15:14:51', '2023-07-28 15:04:51'),
(98, 'nithinnking93@gmail.com', 'email', '836424', 'used', '2023-07-28 15:16:32', '2023-07-28 15:06:32'),
(99, 'hariguru292@gmail.com', 'email', '643823', 'used', '2023-07-28 15:18:55', '2023-07-28 15:08:56'),
(100, '17vishwapriya@gmail.com', 'email', '984077', 'used', '2023-07-28 16:24:15', '2023-07-28 16:14:16'),
(101, 'vadivelu.dpm@gmail.com', 'email', '679719', 'pending', '2023-07-28 17:09:52', '2023-07-28 16:59:52'),
(102, 'vadivelu.dpm@gmail.com', 'email', '436219', 'pending', '2023-07-28 17:11:08', '2023-07-28 17:01:08'),
(103, 'umarfaruk14396@gmail.com', 'email', '345084', 'used', '2023-07-28 23:38:03', '2023-07-28 23:28:03'),
(104, 'suriyasurthin@gmail.com', 'email', '942910', 'used', '2023-07-29 01:08:33', '2023-07-29 00:58:33'),
(105, 'santhosh.santhosh1@cloud.com', 'email', '936233', 'pending', '2023-07-29 01:14:07', '2023-07-29 01:04:07'),
(106, 'santhosh.santhosh1@cloud.com', 'email', '515722', 'pending', '2023-07-29 01:14:50', '2023-07-29 01:04:50'),
(107, 'santhosh.santhosh1@cloud.com', 'email', '451176', 'pending', '2023-07-29 01:14:50', '2023-07-29 01:04:50'),
(108, 'santhosh.santhosh1@cloud.com', 'email', '550892', 'pending', '2023-07-29 01:14:51', '2023-07-29 01:04:51'),
(109, 'santhosh.santhosh1@cloud.com', 'email', '488938', 'pending', '2023-07-29 01:14:51', '2023-07-29 01:04:51'),
(110, 'santhosh.santhosh1@icloud.com', 'email', '539292', 'used', '2023-07-29 01:17:34', '2023-07-29 01:07:34'),
(111, 'angelinpriyaanand@gmail.com', 'email', '335998', 'pending', '2023-07-29 02:10:34', '2023-07-29 02:00:34'),
(112, 'angelinpriyaanand@gmail.com', 'email', '250161', 'pending', '2023-07-29 02:11:11', '2023-07-29 02:01:11'),
(113, 'angelinpriyaanand@gmail.com', 'email', '005190', 'pending', '2023-07-29 02:11:12', '2023-07-29 02:01:12'),
(114, 'angelinpriyaanand@gmail.com', 'email', '057209', 'pending', '2023-07-29 02:11:27', '2023-07-29 02:01:27'),
(115, 'nilegna.priya@gmail.com', 'email', '797062', 'used', '2023-07-29 02:15:29', '2023-07-29 02:05:29'),
(116, 'angelinpriyaanand@gmail.com', 'email', '461781', 'pending', '2023-07-29 02:28:54', '2023-07-29 02:18:54'),
(117, 'angelinpriyaanand@gmail.com', 'email', '545751', 'pending', '2023-07-29 02:28:54', '2023-07-29 02:18:54'),
(118, 'naveena8087@gmail.com', 'email', '917485', 'used', '2023-07-29 04:05:00', '2023-07-29 03:55:01'),
(119, 'naveena8087@gmail.com', 'email', '014882', 'pending', '2023-07-29 04:05:22', '2023-07-29 03:55:22'),
(120, 'naveena8087@gmail.com', 'email', '512011', 'pending', '2023-07-29 04:06:11', '2023-07-29 03:56:11'),
(121, 'naveena8087@gmail.com', 'email', '276681', 'pending', '2023-07-29 04:06:27', '2023-07-29 03:56:27'),
(122, 'dev@gmail.com', 'email', '343328', 'used', '2023-07-29 15:54:26', '2023-07-29 10:14:34'),
(123, 'dev2@gmail.com', 'email', '248648', 'used', '2023-07-29 16:00:07', '2023-07-29 10:20:15'),
(124, 'dev3@gmail.com', 'email', '606712', 'used', '2023-07-29 16:02:22', '2023-07-29 10:22:30'),
(125, 'dev@test.in', 'email', '822339', 'used', '2023-07-29 16:07:01', '2023-07-29 10:27:09'),
(126, 'Sovahtofficial@gmail.com', 'email', '011323', 'used', '2023-07-29 10:43:15', '2023-07-29 10:33:15'),
(127, 'felixice174@gmail.com', 'email', '083033', 'used', '2023-07-29 13:04:25', '2023-07-29 12:54:26'),
(128, 'fazilms643@gmail.com', 'email', '882334', 'used', '2023-07-29 14:52:36', '2023-07-29 14:42:36'),
(129, 'gajapriya8667@gmail.com', 'email', '178943', 'pending', '2023-07-29 15:23:04', '2023-07-29 15:13:04'),
(130, 'gajapriya8667@gmail.com', 'email', '265967', 'pending', '2023-07-29 15:23:37', '2023-07-29 15:13:37'),
(131, 'gajapriya8667@gmail.com', 'email', '872698', 'pending', '2023-07-29 15:55:58', '2023-07-29 15:45:58'),
(132, 'gokulsasi422@gmail.com', 'email', '717466', 'used', '2023-07-29 17:46:30', '2023-07-29 17:36:30'),
(133, 'gajapriya8667@gmail.com', 'email', '456575', 'pending', '2023-07-29 20:59:23', '2023-07-29 20:49:23'),
(134, 'gajapriya8667@gmail.com', 'email', '814392', 'pending', '2023-07-29 20:59:31', '2023-07-29 20:49:31'),
(135, 'ravibhuvana1177@gmail.com', 'email', '511144', 'used', '2023-07-30 05:42:54', '2023-07-30 05:32:54'),
(136, 'bhuvaneshwariravi06@gmail.com', 'email', '719857', 'used', '2023-07-30 06:01:36', '2023-07-30 05:51:37'),
(137, 'reshmakannan28@gmail.com', 'email', '702666', 'used', '2023-07-30 08:47:52', '2023-07-30 08:37:53'),
(138, 'raja16.smr@gmail.com', 'email', '403666', 'used', '2023-07-30 09:26:37', '2023-07-30 09:16:38'),
(139, 'divyashree75sa@gmail.com', 'email', '045248', 'pending', '2023-07-30 14:46:54', '2023-07-30 14:36:54'),
(140, 'divyashree75sa@gmail.com', 'email', '099790', 'used', '2023-07-30 14:47:10', '2023-07-30 14:37:10'),
(141, 'gokulanandhan19@hmail.com', 'email', '799547', 'pending', '2023-07-31 03:39:25', '2023-07-31 03:29:26'),
(142, 'gokulanandhan19@hmail.com', 'email', '064097', 'pending', '2023-07-31 03:40:20', '2023-07-31 03:30:20'),
(143, 'gokulanandhan19@hmail.com', 'email', '855904', 'pending', '2023-07-31 03:40:20', '2023-07-31 03:30:20'),
(144, 'gokulanandhan19@hmail.com', 'email', '095171', 'pending', '2023-07-31 03:41:32', '2023-07-31 03:31:32'),
(145, 'gokulanandhan19@hmail.com', 'email', '482271', 'pending', '2023-07-31 03:41:32', '2023-07-31 03:31:32'),
(146, 'gokulanandhan19@gmail.com', 'email', '442740', 'used', '2023-07-31 03:42:26', '2023-07-31 03:32:26'),
(147, 'arunprasath170777@gmail.com', 'email', '539252', 'used', '2023-07-31 06:07:51', '2023-07-31 05:57:51'),
(148, 'praveen2020raj@gmail.com', 'email', '744259', 'used', '2023-07-31 08:44:19', '2023-07-31 08:34:19'),
(149, 'vijeash15@gmail.com', 'email', '031032', 'used', '2023-07-31 12:06:00', '2023-07-31 11:56:00'),
(150, 'pm3377@email.com', 'email', '859123', 'pending', '2023-07-31 15:27:25', '2023-07-31 15:17:26'),
(151, 'pm3377@email.com', 'email', '786360', 'pending', '2023-07-31 15:27:55', '2023-07-31 15:17:55'),
(152, 'pm3377@email.com', 'email', '143439', 'pending', '2023-07-31 15:28:30', '2023-07-31 15:18:30'),
(153, 'pm3377@email.com', 'email', '803631', 'pending', '2023-07-31 15:29:16', '2023-07-31 15:19:16'),
(154, 'aravindanaravindan484@gmail.com', 'email', '671812', 'used', '2023-08-02 04:30:37', '2023-08-02 04:20:37'),
(155, 'gokulnetworker@gmail.com', 'email', '852318', 'used', '2023-08-02 07:22:13', '2023-08-02 07:12:13'),
(156, 'gayathriannu13@gmail.com', 'email', '585831', 'used', '2023-08-02 08:50:42', '2023-08-02 08:40:42'),
(157, 'subhasree2052001@gmail.com', 'email', '793991', 'used', '2023-08-02 13:12:10', '2023-08-02 13:02:10'),
(158, 'arthi01shinu@gmail.com', 'email', '163627', 'pending', '2023-08-02 13:41:17', '2023-08-02 13:31:17'),
(159, 'arthi01shinu@gmail.com', 'email', '646939', 'used', '2023-08-02 13:41:47', '2023-08-02 13:31:47'),
(160, 'arthi01shinu@gmail.com', 'email', '705099', 'pending', '2023-08-02 13:42:02', '2023-08-02 13:32:02'),
(161, 'kalaiselvisenthi14@gmail.com', 'email', '650251', 'pending', '2023-08-02 14:08:42', '2023-08-02 13:58:43'),
(162, 'kalaiselvisenthil14@gmail.com', 'email', '075706', 'used', '2023-08-02 14:11:06', '2023-08-02 14:01:06'),
(163, 'muthu2012@gmail.com', 'email', '201493', 'used', '2023-08-02 16:22:21', '2023-08-02 16:12:22'),
(164, 'abdulmunazir@gmail.com', 'email', '645255', 'used', '2023-08-02 17:32:12', '2023-08-02 17:22:12'),
(165, 'kavinananth51@gmail.com', 'email', '616486', 'pending', '2023-08-03 01:13:50', '2023-08-03 01:03:50'),
(166, 'kavinananth51@gmail.com', 'email', '455043', 'pending', '2023-08-03 01:14:15', '2023-08-03 01:04:15'),
(167, 'kavinananth51@gmail.com', 'email', '512608', 'pending', '2023-08-03 01:14:29', '2023-08-03 01:04:29'),
(168, 'kavinananth51@gmail.com', 'email', '535776', 'pending', '2023-08-03 01:14:38', '2023-08-03 01:04:38'),
(169, 'kavinananth51@gmail.com', 'email', '735807', 'pending', '2023-08-03 01:14:54', '2023-08-03 01:04:54'),
(170, 'kavinananth51@gmail.com', 'email', '535417', 'pending', '2023-08-03 01:14:59', '2023-08-03 01:04:59'),
(171, 'kavinananth51@gmail.com', 'email', '284020', 'pending', '2023-08-03 01:15:01', '2023-08-03 01:05:01'),
(172, 'kavinananth51@gmail.com', 'email', '219129', 'pending', '2023-08-03 01:15:01', '2023-08-03 01:05:01'),
(173, 'kavinananth51@gmail.com', 'email', '549199', 'pending', '2023-08-03 01:15:01', '2023-08-03 01:05:01'),
(174, 'kavinananth51@gmail.com', 'email', '508190', 'pending', '2023-08-03 01:15:01', '2023-08-03 01:05:01'),
(175, 'kavinananth51@gmail.com', 'email', '799805', 'pending', '2023-08-03 01:15:02', '2023-08-03 01:05:02'),
(176, 'kavinananth51@gmail.com', 'email', '286681', 'pending', '2023-08-03 01:15:02', '2023-08-03 01:05:02'),
(177, 'kavinananth51@gmail.com', 'email', '629720', 'pending', '2023-08-03 01:15:07', '2023-08-03 01:05:07'),
(178, 'kavinananth51@gmail.com', 'email', '531613', 'pending', '2023-08-03 01:15:07', '2023-08-03 01:05:07'),
(179, 'kavinananth51@gmail.com', 'email', '437867', 'pending', '2023-08-03 01:15:07', '2023-08-03 01:05:07'),
(180, 'kavinananth51@gmail.com', 'email', '170206', 'pending', '2023-08-03 01:15:07', '2023-08-03 01:05:07'),
(181, 'kavinananth51@gmail.com', 'email', '482390', 'pending', '2023-08-03 01:15:07', '2023-08-03 01:05:07'),
(182, 'kavinananth51@gmail.com', 'email', '738828', 'pending', '2023-08-03 01:15:08', '2023-08-03 01:05:08'),
(183, 'kavinananth51@gmail.com', 'email', '260030', 'pending', '2023-08-03 01:15:08', '2023-08-03 01:05:08'),
(184, 'kavinananth51@gmail.com', 'email', '796977', 'pending', '2023-08-03 01:15:08', '2023-08-03 01:05:08'),
(185, 'kavinananth51@gmail.com', 'email', '655586', 'pending', '2023-08-03 01:15:08', '2023-08-03 01:05:08'),
(186, 'kavinananth51@gmail.com', 'email', '331831', 'pending', '2023-08-03 01:15:09', '2023-08-03 01:05:09'),
(187, 'kavinananth51@gmail.com', 'email', '303133', 'pending', '2023-08-03 01:15:09', '2023-08-03 01:05:09'),
(188, 'kavinananth51@gmail.com', 'email', '281998', 'pending', '2023-08-03 01:15:09', '2023-08-03 01:05:09'),
(189, 'gayathrithangavel1910@gmail.com', 'email', '367330', 'used', '2023-08-03 08:18:49', '2023-08-03 08:08:50'),
(190, 'sakthiharish499@gmail.com', 'email', '455529', 'used', '2023-08-03 09:42:24', '2023-08-03 09:32:24'),
(191, 'joysrenisha17@gmail.com', 'email', '691430', 'pending', '2023-08-03 10:14:49', '2023-08-03 10:04:49'),
(192, 'joysrenisha17@gmail.com', 'email', '115587', 'expired', '2023-08-03 10:15:37', '2023-08-03 10:05:37'),
(193, 'joysrenisha17@gmail.com', 'email', '763260', 'used', '2023-08-03 10:46:24', '2023-08-03 10:36:24'),
(194, 'tharanieswaran2002@gmail.com', 'email', '333091', 'used', '2023-08-03 11:04:55', '2023-08-03 10:54:55'),
(195, 'srs.erd71@gmail.com', 'email', '475542', 'used', '2023-08-04 12:24:19', '2023-08-04 12:14:19'),
(196, 'smartkiller8620@gmail.com', 'email', '733633', 'pending', '2023-08-04 15:22:28', '2023-08-04 15:12:28'),
(197, 'smartkiller8620@gmail.com', 'email', '899384', 'pending', '2023-08-04 15:22:52', '2023-08-04 15:12:52'),
(198, 'smartkiller8620@gmail.com', 'email', '814757', 'pending', '2023-08-04 15:27:01', '2023-08-04 15:17:01'),
(199, 'jokerprofessor287@gmail.com', 'email', '140098', 'used', '2023-08-04 15:41:17', '2023-08-04 15:31:18'),
(200, 'tharanirajkumar114@gmail.com', 'email', '047598', 'used', '2023-08-05 01:25:12', '2023-08-05 01:15:12'),
(201, 'Suryaasanjaykumar@gmail.com', 'email', '224778', 'used', '2023-08-05 05:31:26', '2023-08-05 05:21:26'),
(202, 'Kavinkumar9991@gmail.com', 'email', '579271', 'used', '2023-08-05 09:37:37', '2023-08-05 09:27:38'),
(203, 'divija0330@gmail.com', 'email', '041856', 'used', '2023-08-06 18:20:58', '2023-08-06 18:10:58'),
(204, 'yyugi64@gmail.com', 'email', '330797', 'used', '2023-08-08 20:39:54', '2023-08-08 15:00:09'),
(205, 'sgowthami2101@gmail.com', 'email', '625635', 'used', '2023-08-16 13:39:06', '2023-08-16 13:29:06'),
(206, 'prasanthhopezz@gmail.com', 'email', '029583', 'used', '2023-08-16 13:43:20', '2023-08-16 13:33:20'),
(207, 'aishudaishwarya1098@gmail.com', 'email', '526327', 'pending', '2023-08-16 14:18:54', '2023-08-16 14:08:54'),
(208, 'vickysanthosh96@gmail.com', 'email', '941137', 'used', '2023-08-16 14:33:45', '2023-08-16 14:23:45'),
(209, 'ajsreekumaran@gmail.com', 'email', '605536', 'used', '2023-08-17 08:45:09', '2023-08-17 08:35:09'),
(210, 'vishnuvaradhanmech@gmail.com', 'email', '315484', 'used', '2023-08-17 11:10:03', '2023-08-17 11:00:04'),
(211, 'jeevashanmugam0228@gmail.com', 'email', '558254', 'used', '2023-08-17 15:48:23', '2023-08-17 15:38:23'),
(212, 'rubikarubi23@gmail.com', 'email', '111325', 'used', '2023-08-17 15:57:24', '2023-08-17 15:47:24'),
(213, 'bhasith@eselfmade.in', 'email', '757852', 'used', '2023-08-17 17:36:18', '2023-08-17 17:26:18'),
(214, 'svc1021@gmail.com', 'email', '552117', 'used', '2023-08-18 02:22:40', '2023-08-18 02:12:40'),
(215, 'keerthusakthi2934@gmail.com', 'email', '408375', 'used', '2023-08-18 03:53:21', '2023-08-18 03:43:21'),
(216, 'nsuganya100@gmail.com', 'email', '737487', 'used', '2023-08-18 06:42:39', '2023-08-18 06:32:39'),
(217, 'muthuvyrvesalon@gmail.com', 'email', '514231', 'pending', '2023-08-18 07:33:43', '2023-08-18 07:23:43'),
(218, 'muthuvurvesalon@gmail.com', 'email', '263621', 'used', '2023-08-18 07:36:29', '2023-08-18 07:26:30'),
(219, 'akshayacr.11.05.2005@gmail.com', 'email', '669707', 'pending', '2023-08-18 13:13:57', '2023-08-18 13:03:57'),
(220, 'akshayacr.11.05.2005@gmail.com', 'email', '862714', 'pending', '2023-08-18 13:14:19', '2023-08-18 13:04:19'),
(221, 'akshayacr.11.05.2005@gmail.com', 'email', '778448', 'used', '2023-08-18 13:14:25', '2023-08-18 13:04:25'),
(222, 'dssa@gmail.com', 'email', '098453', 'pending', '2023-08-18 20:12:18', '2023-08-18 14:32:26'),
(223, 'divyamani0004@gmail.com', 'email', '672089', 'used', '2023-08-18 15:56:44', '2023-08-18 15:46:44'),
(224, 'sahananirmala04@gmail.com', 'email', '237417', 'used', '2023-08-18 17:25:03', '2023-08-18 17:15:03'),
(225, 'ffc@d.f', 'email', '758196', 'pending', '2023-08-19 15:27:55', '2023-08-19 15:17:56'),
(226, 'gayathri.x.s@nielseniq.com', 'email', '908057', 'pending', '2023-08-19 15:59:10', '2023-08-19 15:49:10'),
(227, 'hilariouschubby@gmail.com', 'email', '150395', 'used', '2023-08-20 12:51:11', '2023-08-20 12:41:12'),
(228, 'nithinfalco93@gmail.com', 'email', '538711', 'used', '2023-08-20 14:43:03', '2023-08-20 14:33:04'),
(229, 'showminiammu2108@gmail.com', 'email', '726549', 'used', '2023-08-20 16:21:37', '2023-08-20 16:11:37'),
(230, 'annemonica124@gmail.com', 'email', '585420', 'used', '2023-08-20 18:08:11', '2023-08-20 17:58:11'),
(231, 'christyangeline719@gmail.com', 'email', '632424', 'used', '2023-08-21 00:21:21', '2023-08-21 00:11:21'),
(232, 'howru013@gmail.com', 'email', '505187', 'used', '2023-08-21 02:07:52', '2023-08-21 01:57:52'),
(233, 'kr48022@gmail.com', 'email', '637083', 'used', '2023-08-21 02:44:28', '2023-08-21 02:34:29'),
(234, 'prasatharun067@gmail.com', 'email', '442459', 'used', '2023-08-21 08:36:52', '2023-08-21 08:26:52'),
(235, 'sathishps1998@gmail.com', 'email', '066193', 'used', '2023-08-22 17:57:43', '2023-08-22 17:47:43'),
(236, 'sabarivasanps4215@gmail.com', 'email', '938686', 'used', '2023-08-23 00:46:02', '2023-08-23 00:36:02'),
(237, 'sandhiyasankar51@gmail.com', 'email', '423829', 'used', '2023-08-23 02:24:26', '2023-08-23 02:14:27'),
(238, 'janakirangaswami74@gmail.com', 'email', '612198', 'used', '2023-08-23 04:08:58', '2023-08-23 03:58:59'),
(239, 'arulananthamravi47723@gmail.com', 'email', '412670', 'used', '2023-08-25 17:19:14', '2023-08-25 17:09:15'),
(240, 'ajanani0903@gmail.com', 'email', '865238', 'used', '2023-08-26 08:55:36', '2023-08-26 08:45:37'),
(241, 'vimala422001@gmail.com', 'email', '857848', 'used', '2023-08-26 11:34:22', '2023-08-26 11:24:22'),
(242, 'test@gmail.com', 'email', '565410', 'pending', '2023-08-27 02:03:44', '2023-08-26 20:23:44'),
(243, 'test34234@gmail.com', 'email', '339183', 'pending', '2023-08-27 05:47:01', '2023-08-27 05:37:01'),
(244, 'sanjivv20bct038@skasc.ac.in', 'email', '363836', 'used', '2023-08-27 05:48:07', '2023-08-27 05:38:08'),
(245, 'baranishk58@gmail.com', 'email', '150083', 'used', '2023-08-27 05:50:19', '2023-08-27 05:40:19'),
(246, 'baranishk58@gmail.com', 'email', '716285', 'pending', '2023-08-27 05:50:41', '2023-08-27 05:40:41'),
(247, 'baranishk58@gmail.com', 'email', '514595', 'used', '2023-08-27 05:56:33', '2023-08-27 05:46:33'),
(248, 'growwithkani@gmail.com', 'email', '699789', 'used', '2023-08-27 10:38:34', '2023-08-27 10:28:34'),
(249, 'madhumathiyalagan1725@gmail.com', 'email', '661830', 'used', '2023-08-27 12:00:21', '2023-08-27 11:50:21'),
(250, 'badrinathmurugesan@gmail.com', 'email', '103993', 'used', '2023-08-28 19:26:42', '2023-08-28 19:16:42'),
(251, 'kalimuthuraja67@gmail.com', 'email', '261886', 'used', '2023-08-30 13:45:52', '2023-08-30 13:35:52'),
(252, 'dhineshrp10@gmail.com', 'email', '169944', 'used', '2023-08-31 15:34:16', '2023-08-31 15:24:16'),
(253, 'dev@lmes.in', 'email', '278850', 'pending', '2023-09-01 21:14:18', '2023-09-01 15:34:18'),
(254, 'asdad@gmail.com', 'email', '196264', 'pending', '2023-09-01 21:25:17', '2023-09-01 15:45:19'),
(255, 'sanjivvadivelu2003@gmail.com', 'email', '391179', 'pending', '2023-09-01 15:56:34', '2023-09-01 15:46:34'),
(256, 'adarshgroup@gmail.com', 'email', '863906', 'pending', '2023-09-01 15:58:45', '2023-09-01 15:48:45'),
(257, 'sdfsfsdfsdfdfs@gmail.com', 'email', '248859', 'pending', '2023-09-01 15:59:45', '2023-09-01 15:49:46'),
(258, 'sagarss.9991@gmail.com', 'email', '680290', 'pending', '2023-09-02 13:26:02', '2023-09-02 13:16:02'),
(259, 'manjunath9411@gmail.vom', 'email', '680335', 'pending', '2023-09-02 16:19:28', '2023-09-02 16:09:28'),
(260, 'manjunath9411@gmail.vom', 'email', '175554', 'pending', '2023-09-02 16:20:09', '2023-09-02 16:10:09'),
(261, 'manjunath9411@gmail.com', 'email', '910355', 'pending', '2023-09-02 16:29:21', '2023-09-02 16:19:21'),
(262, 'manjunath9411@gmail.com', 'email', '111234', 'used', '2023-09-02 16:29:47', '2023-09-02 16:19:47'),
(263, 'amolr78@gmail.com', 'email', '186508', 'used', '2023-09-02 17:10:50', '2023-09-02 17:00:50'),
(264, 'jeevepavi123@gmail.com', 'email', '702423', 'used', '2023-09-05 13:13:13', '2023-09-05 13:03:13'),
(265, 'jeevepavi123@gmail.com', 'email', '089749', 'pending', '2023-09-05 13:13:27', '2023-09-05 13:03:27'),
(266, 'arivuselvanips777@gmail.com', 'email', '408276', 'used', '2023-09-06 07:47:12', '2023-09-06 07:37:13'),
(267, 'selvamuthu.su@gmail.com', 'email', '177356', 'used', '2023-09-10 11:50:32', '2023-09-10 11:40:32'),
(268, 'kaththivasanth1999@gmail.com', 'email', '690796', 'used', '2023-09-11 05:41:51', '2023-09-11 05:31:52'),
(269, 'vgkumar8055@gmail.com', 'email', '442840', 'pending', '2023-09-14 08:57:33', '2023-09-14 08:47:33'),
(270, 'vgkumar8055@gmail.com', 'email', '037896', 'pending', '2023-09-14 08:58:11', '2023-09-14 08:48:11'),
(271, 'vgkumar8055@gmail.com', 'email', '527220', 'used', '2023-09-14 08:58:12', '2023-09-14 08:48:12'),
(272, 'ammukutti717@gmail.com', 'email', '715933', 'used', '2023-09-14 14:09:15', '2023-09-14 13:59:16'),
(273, 'keshavappp@gmail.com', 'email', '074773', 'used', '2023-09-14 14:43:36', '2023-09-14 14:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `Page`
--

CREATE TABLE `Page` (
  `pageId` bigint NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `route` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'draft' COMMENT 'published, archived, draft, deleted',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Page`
--

INSERT INTO `Page` (`pageId`, `name`, `route`, `query`, `status`, `createdAt`) VALUES
(1, 'Home', 'home', NULL, 'published', '2023-07-23 06:16:08'),
(2, 'Test', 'test', NULL, 'deleted', '2023-07-23 06:38:43'),
(3, 'biz', 'biz', NULL, 'deleted', '2023-07-23 17:18:14'),
(4, 'tshirt', 'tshirt', NULL, 'published', '2023-07-23 17:18:41'),
(5, 'shirt', 'shirt', NULL, 'published', '2023-07-23 17:18:54'),
(6, 'kurti', 'kurti', NULL, 'published', '2023-07-23 17:19:10'),
(7, 'shoe', 'shoe', NULL, 'published', '2023-07-23 17:19:23'),
(8, 'watch', 'watch', NULL, 'published', '2023-07-23 17:19:36'),
(9, 'product', 'product', NULL, 'published', '2023-07-23 17:19:50'),
(10, 'men-product', 'men-prodect', NULL, 'published', '2023-07-23 17:20:55'),
(11, 'women-product', 'women-prodect', NULL, 'published', '2023-07-23 17:21:18'),
(12, 't-shirt', 't-shirt', NULL, 'deleted', '2023-07-24 18:03:49'),
(13, 'leggings', 'leggings', NULL, 'published', '2023-07-24 18:08:00'),
(14, 'women-tshirt', 'women-tshirt', NULL, 'published', '2023-07-26 11:40:38'),
(15, 'bottom', 'bottom', NULL, 'published', '2023-07-26 20:23:21'),
(16, 'boxer', 'boxer', NULL, 'deleted', '2023-07-27 12:24:22'),
(17, 'dhoti', 'dhoti', NULL, 'published', '2023-07-27 19:29:29'),
(18, 'women-jean', 'women-jean', NULL, 'published', '2023-07-27 19:31:17'),
(19, 'boxer', 'boxer', NULL, 'published', '2023-07-30 16:59:40'),
(20, 'Test', 'test', NULL, 'published', '2023-08-31 16:42:15'),
(21, 'demo', 'xxx', NULL, 'deleted', '2023-08-31 17:13:42'),
(22, 'Yugi', 'yugi', NULL, 'published', '2023-09-06 19:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `paymentId` bigint NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_ref_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failure_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_message` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_tel` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_zip` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_tel` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_param1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_param2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_param3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_param4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_param5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vault` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mer_amount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eci_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retry` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bin_country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_fee` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_tax` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`paymentId`, `createdAt`, `order_id`, `tracking_id`, `bank_ref_no`, `order_status`, `failure_message`, `payment_mode`, `card_name`, `status_code`, `status_message`, `currency`, `amount`, `billing_name`, `billing_address`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `billing_tel`, `billing_email`, `delivery_name`, `delivery_address`, `delivery_city`, `delivery_state`, `delivery_zip`, `delivery_country`, `delivery_tel`, `merchant_param1`, `merchant_param2`, `merchant_param3`, `merchant_param4`, `merchant_param5`, `vault`, `offer_type`, `offer_code`, `discount_value`, `mer_amount`, `eci_value`, `retry`, `response_code`, `billing_notes`, `trans_date`, `bin_country`, `trans_fee`, `service_tax`) VALUES
(1, '2023-07-27 12:58:13', '59f47cfc-592c-4ccc-a2b3-e725da5149b7', '112954191837', '320826399497', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '249.00', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', 'weemaxecom@gmail.com', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', '1', '1', '1', '', '', 'N', 'null', 'null', '0.0', '249.00', '', 'N', '', '', '27/07/2023 18:28:07', '', '0.0', '0.0'),
(2, '2023-07-27 13:04:27', 'aca4ee70-8b18-4ae2-b048-84f550318e21', '112954199006', '320868185527', 'Failure', '', 'Unified Payments', 'UPI', '', 'Failed', 'INR', '349.00', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', 'sakthiganesh533@gmail.com', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', '1', '2', '2', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 18:34:25', '', '0.0', '0.0'),
(3, '2023-07-27 13:07:27', 'aca4ee70-8b18-4ae2-b048-84f550318e21', '112954199884', '320846588626', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '349.00', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', 'sakthiganesh533@gmail.com', 'SAKTHI GANESH V', '4/34,Kollupalayam, Kaniyur post, Coimbatore, null', 'COIMBATORE', 'Tamil Nadu', '641659', 'India', '8870354097', '1', '2', '2', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 18:37:23', '', '0.0', '0.0'),
(4, '2023-07-27 13:44:42', '18be0764-3620-44a9-81c1-7a4b57c778b2', '112954243139', '320893036853', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '349.00', 'Preetham', 'L-54/2 second floor,kootapalli colony tiruchengode , null', 'Tiruchengode', 'Tamilnadu', '637214', 'India', '6381469846', 'preethamsenthilkumar2012@gmail.com', 'Preetham', 'L-54/2 second floor,kootapalli colony tiruchengode , null', 'Tiruchengode', 'Tamilnadu', '637214', 'India', '6381469846', '1', '3', '3', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 19:14:35', '', '0.0', '0.0'),
(5, '2023-07-27 14:06:21', '4dce29d0-832b-48c3-ac20-954a8a6cfafb', '112954267086', '357456386406', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '600.00', 'Sanjiv v', '136/10B, ganapathy nagar , Near mayavan malihi', 'Dharapuram', 'Tamilnadu', '638657', 'India', '9843959919', 'sanjivdpm2003@gmail.com', 'Sanjiv v', '136/10B, ganapathy nagar , Near mayavan malihi', 'Dharapuram', 'Tamilnadu', '638657', 'India', '9843959919', '1', '6', '7', '', '', 'N', 'null', 'null', '0.0', '600.00', '', 'N', '', '', '27/07/2023 19:36:18', '', '0.0', '0.0'),
(6, '2023-07-27 14:15:46', '5ca99ce5-52ab-4139-90d2-584b177bf671', '112954275189', '320893136467', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '520.00', 'Thilak Rs', '46/1 Gandhiji Street, Opposite To Carmel School, Kollampalayam, Karur Road', 'Erode', 'Tamil Nadu', '638002', 'India', '7010908103', 'thilaksenthilkumar16@gmail.com', 'Thilak Rs', '46/1 Gandhiji Street, Opposite To Carmel School, Kollampalayam, Karur Road', 'Erode', 'Tamil Nadu', '638002', 'India', '7010908103', '1', '5', '8', '', '', 'N', 'null', 'null', '0.0', '520.00', '', 'N', '', '', '27/07/2023 19:45:42', '', '0.0', '0.0'),
(7, '2023-07-27 14:35:44', '64fa186e-56b2-494d-86db-53f838393837', '112954288073', '320893205796', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '249.00', 'Vignesh Arivazhagan', '6/95/3 , kollupalayam , bharathiyar nagar , eb office road , Coimbatore 641659, null', 'Coimbatore', 'Tamil Nadu', '641659', 'India', '9789413685', 'vignesharivazhagan22@gmail.com', 'Vignesh Arivazhagan', '6/95/3 , kollupalayam , bharathiyar nagar , eb office road , Coimbatore 641659, null', 'Coimbatore', 'Tamil Nadu', '641659', 'India', '9789413685', '1', '4', '4', '', '', 'N', 'null', 'null', '0.0', '249.00', '', 'N', '', '', '27/07/2023 20:05:38', '', '0.0', '0.0'),
(8, '2023-07-27 14:36:48', 'e77dad06-a3e7-4ae5-98dd-d4ee21ac4afa', '112954296203', '320893207754', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '349.00', 'Poomalai Ahilan', 'WHP hostel , OP main road, Annamalai nagar', 'Chidambaram', 'Tamilnadu', '608002', 'India', '6383677721', 'poomalahilan@gmail.com', 'Poomalai Ahilan', 'WHP hostel , OP main road, Annamalai nagar', 'Chidambaram', 'Tamilnadu', '608002', 'India', '6383677721', '1', '11', '9', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 20:06:23', '', '0.0', '0.0'),
(9, '2023-07-27 14:46:41', '30bb8f84-a5e6-431e-a040-df3a35ef71b7', '112954308301', '320840915714', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '249.00', 'Naveen Prabu S', '3/134, Kittampalayam , Karumathampatti, null', 'Coimbatore', 'Tamil Nadu', '641659', 'India', '9345622794', 'naveenprabu21@gmail.com', 'Naveen Prabu S', '3/134, Kittampalayam , Karumathampatti, null', 'Coimbatore', 'Tamil Nadu', '641659', 'India', '9345622794', '1', '12', '14', '', '', 'N', 'null', 'null', '0.0', '249.00', '', 'N', '', '', '27/07/2023 20:16:20', '', '0.0', '0.0'),
(10, '2023-07-27 16:36:13', '2473345c-89c8-4409-91b6-7b8e12d3e891', '112954403394', '320897147652', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '449.00', 'Nalini', '136/10b Ganapathi Nagar , Near Mayavan malihi', 'Dharapuram', 'tamilnadu', '638657', 'India', '9843406636', 'vadivelunalinidpm@gmail.com', 'Nalini', '136/10b Ganapathi Nagar , Near Mayavan malihi', 'Dharapuram', 'tamilnadu', '638657', 'India', '9843406636', '1', '13', '21', '', '', 'N', 'null', 'null', '0.0', '449.00', '', 'N', '', '', '27/07/2023 22:06:04', '', '0.0', '0.0'),
(11, '2023-07-27 16:46:34', 'ef419ce6-b97e-40d0-b5e2-cf8ce41de0a4', '112954412078', '320895172906', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '349.00', 'Mohamed Tariq', '27 Manjunatha residency, 2nd Cross Saptagiri Layout, channasandra, whitefield, null', 'Bengaluru', 'KARNATAKA', '560067', 'India', '7092339606', 'mohamed.tariq46@gmail.com', 'Mohamed Tariq', '27 Manjunatha residency, 2nd Cross Saptagiri Layout, channasandra, whitefield, null', 'Bengaluru', 'KARNATAKA', '560067', 'India', '7092339606', '0', '14', '24', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 22:16:32', '', '0.0', '0.0'),
(12, '2023-07-27 18:06:28', 'a93e4a63-d6e6-4997-b85d-09af1f49505b', '112954460519', '320893692034', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '349.00', 'Poomalai Ahilan', '186/4, Kavin Harsha complex, 2nd Street , Netaji nagr, Trichy road', 'Namakkal', 'Tamilnadu', '637001', 'India', '6383677721', 'poomalahilan@gmail.com', 'Poomalai Ahilan', '186/4, Kavin Harsha complex, 2nd Street , Netaji nagr, Trichy road', 'Namakkal', 'Tamilnadu', '637001', 'India', '6383677721', '1', '16', '9', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '27/07/2023 23:36:22', '', '0.0', '0.0'),
(13, '2023-07-28 08:45:54', 'c743abc5-0c29-4985-87fa-5f3671fce90c', '112954959466', '320995073022', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '2298.00', 'R Gunal', '32,Sowdamman Kovil Street, NN Pettai Street', 'DharapuramTiruppur', 'TamilNadu', '638656', 'India', '9345710012', 'gunalrajarathinam11@gmail.com', 'R Gunal', '32,Sowdamman Kovil Street, NN Pettai Street', 'DharapuramTiruppur', 'TamilNadu', '638656', 'India', '9345710012', '1', '21', '13', '', '', 'N', 'null', 'null', '0.0', '2298.00', '', 'N', '', '', '28/07/2023 14:15:21', '', '0.0', '0.0'),
(14, '2023-07-28 10:03:04', '60e44b29-c689-4b2e-a85d-6e07e391ab7b', '112955051152', '320974719460', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '249.00', 'Akash', '48, J S garden, 3rd street, Nallur, Tirupur. , null', 'Tirupur', 'Tamilnadu', '641606', 'India', '7708012111', 'akashthozhan@gmail.com', 'Akash', '48, J S garden, 3rd street, Nallur, Tirupur. , null', 'Tirupur', 'Tamilnadu', '641606', 'India', '7708012111', '1', '29', '57', '', '', 'N', 'null', 'null', '0.0', '249.00', '', 'N', '', '', '28/07/2023 15:32:54', '', '0.0', '0.0'),
(15, '2023-07-28 15:34:25', 'f0a7c054-67fb-4b27-bd5b-5fe0cf21a76c', '112955414720', '357548418499', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '1199.00', 'Arivu', '29/40 kannan nagar, Indian Bank opposite street', 'Dharapuram', 'Tamil nadu', '638656', 'India', '9047272600', 'arivalagan.dpm@gmail.com', 'Arivu', '29/40 kannan nagar, Indian Bank opposite street', 'Dharapuram', 'Tamil nadu', '638656', 'India', '9047272600', '1', '30', '76', '', '', 'N', 'null', 'null', '0.0', '1199.00', '', 'N', '', '', '28/07/2023 21:04:18', '', '0.0', '0.0'),
(16, '2023-07-28 17:23:14', '5c8a69d3-d91b-4bf7-a2c5-942cf13282dc', '112955497011', '320919423679', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '349.00', 'Joshika.S', 'No.18,Sri Sakthi Nagar, Near parambariyam hotel,Thondamuthur road, Coimbatore -46, null', 'Coimbatore', 'Tamilnadu', '641046', 'India', '7598243340', 'joshika702@gmail.com', 'Joshika.S', 'No.18,Sri Sakthi Nagar, Near parambariyam hotel,Thondamuthur road, Coimbatore -46, null', 'Coimbatore', 'Tamilnadu', '641046', 'India', '7598243340', '1', '31', '72', '', '', 'N', 'null', 'null', '0.0', '349.00', '', 'N', '', '', '28/07/2023 22:53:13', '', '0.0', '0.0'),
(18, '2023-07-30 12:00:54', '8e5d2342-d732-4d8d-bd0c-b5c310f0822b', '112956994901', '321101040910', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '900.00', 'Raja', '2/73, pillayar Kovil street, Ramachiyamapalayam, Somanur', 'Coimbatore', 'Tamil Nadu', '641668', 'India', '8973773284', 'raja16.smr@gmail.com', 'Raja', '2/73, pillayar Kovil street, Ramachiyamapalayam, Somanur', 'Coimbatore', 'Tamil Nadu', '641668', 'India', '8973773284', '1', '37', '100', '', '', 'N', 'null', 'null', '0.0', '900.00', '', 'N', '', '', '30/07/2023 17:30:50', '', '0.0', '0.0'),
(21, '2023-07-31 07:39:30', '708a1302-91c9-471c-a9f2-f975657de80d', '112957724562', '357828899486', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '749.00', 'Sanjiv v', '136/10B, ganapathy nagar , Near mayavan malihi', 'Dharapuram', 'Tamilnadu', '638657', 'India', '9843959919', 'sanjivdpm2003@gmail.com', 'Sanjiv v', '136/10B, ganapathy nagar , Near mayavan malihi', 'Dharapuram', 'Tamilnadu', '638657', 'India', '9843959919', '1', '6', '7', '', '', 'N', 'null', 'null', '0.0', '749.00', '', 'N', '', '', '31/07/2023 13:09:27', '', '0.0', '0.0'),
(26, '2023-08-02 04:05:32', '36e32c9b-c0ba-402f-824e-6c5f6d2e4486', '112959859467', '119757', 'Success', '', 'Credit Card', 'Visa', 'null', 'SUCCESS', 'INR', '355.63', 'Yugendiran G', 'No165a, 5th street, Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', 'India', '8838669898', 'yyugi64@gmail.com', 'Yugendiran G', 'No165a, 5th street, Thirumalai nagar,', 'Chennai', 'Tamilnadu', '600064', 'India', '8838669898', '1', '32', '10', '', '', 'N', 'null', 'null', '0.0', '349.00', 'null', 'N', '0', '', '02/08/2023 09:35:09', 'INDIA', '6.63', '0.0'),
(28, '2023-08-07 07:03:02', '048b7474-dbb1-449d-afa5-a789fac8df40', '112965220164', '321975790805', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '749.00', 'Elakkiya V', 'Rmz one paramount , Near commerzone,mugalivakkam, porur', 'Chennai', 'TAMIL NADU', '600125', 'India', '9087639742', 'sakthiganesh533@gmail.com', 'Elakkiya V', 'Rmz one paramount , Near commerzone,mugalivakkam, porur', 'Chennai', 'TAMIL NADU', '600125', 'India', '9087639742', '1', '45', '2', '', '', 'N', 'null', 'null', '0.0', '749.00', '', 'N', '', '', '07/08/2023 12:32:57', '', '0.0', '0.0'),
(36, '2023-08-26 02:51:23', '37d9d6b5-f4d7-44b6-9943-4d0d1892a291', '112984270120', '323878309800', 'Success', '', 'Unified Payments', 'UPI', '', 'Success-NA-0', 'INR', '647.00', 'SAKTHI HARIHARA PRABHU', 'Gemini press building, fire service station opposite, Naganampatty road, Oddanchatram', 'Dindigul', 'Tamil Nadu', '624619', 'India', '7904980440', 'sakthiharish499@gmail.com', 'SAKTHI HARIHARA PRABHU', 'Gemini press building, fire service station opposite, Naganampatty road, Oddanchatram', 'Dindigul', 'Tamil Nadu', '624619', 'India', '7904980440', '1', '48', '119', '0', '', 'N', 'null', 'null', '0.0', '647.00', '', 'N', '', '', '26/08/2023 08:21:21', '', '0.0', '0.0'),
(37, '2023-08-28 08:09:32', '6f6a23a4-ae60-495a-a6b7-c5c2402bdcb9', '112986100324', '360656563573', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '700.00', 'Darshini Balasubramaniam', '21E,Vimal Residency, Vimal Nagar, Thondamuthur Rd, Vadavalli , null', 'Coimbatore', 'Tamilnadu', '641041', 'India', '9443433822', 'darshinibalu0@gmail.com', 'Darshini Balasubramaniam', '21E,Vimal Residency, Vimal Nagar, Thondamuthur Rd, Vadavalli , null', 'Coimbatore', 'Tamilnadu', '641041', 'India', '9443433822', '1', '54', '17', '0', '', 'N', 'null', 'null', '0.0', '700.00', '', 'N', '', '', '28/08/2023 13:39:10', '', '0.0', '0.0'),
(38, '2023-08-28 16:55:04', '22ff23b3-ddb0-43c5-9f7a-c120f53d7bdb', '112986610560', '360668880401', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '1208.00', 'Priya', '29/40, Kannan nagar', 'Dharapuram', 'Tamil nadu', '638656', 'India', '9843882600', 'hariguru292@gmail.com', 'Priya', '29/40, Kannan nagar', 'Dharapuram', 'Tamil nadu', '638656', 'India', '9843882600', '1', '55', '78', '0', '', 'N', 'null', 'null', '0.0', '1208.00', '', 'N', '', '', '28/08/2023 22:25:01', '', '0.0', '0.0'),
(39, '2023-09-02 11:46:24', '4bb54cd7-3091-422e-9c5e-2d1a3fc90cea', '112991847597', '164017', 'Success', '', 'Credit Card', 'Visa', 'null', 'SUCCESS', 'INR', '1321.64', 'Dheshapriyan', '263/7b Sivanesan complex , Rice mill road Moolapalayam', 'Erode', 'Tamil nadu', '638002', 'India', '9994447204', 'dhesha77@gmail.com', 'Dheshapriyan', '263/7b Sivanesan complex , Rice mill road Moolapalayam', 'Erode', 'Tamil nadu', '638002', 'India', '9994447204', '1', '9', '11', '0', '', 'N', 'null', 'null', '0.0', '1297.00', 'null', 'N', '0', '', '02/09/2023 17:16:06', 'INDIA', '24.64', '0.0'),
(44, '2023-09-07 03:54:21', '318222d2-f646-4b83-b58b-2b8b79c1b0ce', '113001294088', '325092833090', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful-NA-0', 'INR', '600.00', 'Aravindan E', '5/454 Jai Bhim Nagar, Thazhambur,', 'Chennai', 'Tamilnadu', '600130', 'India', '9150102475', 'aravindanaravindan484@gmail.com', 'Aravindan E', '5/454 Jai Bhim Nagar, Thazhambur,', 'Chennai', 'Tamilnadu', '600130', 'India', '9150102475', '1', '61', '108', '0', '', 'N', 'null', 'null', '0.0', '600.00', '', 'N', '', '', '07/09/2023 09:24:18', '', '0.0', '0.0'),
(45, '2023-09-09 01:47:30', 'ffd9ba59-67a9-4ec4-bdf0-fa41c1da0eb0', '113003422214', '611007', 'Success', '', 'Debit Card', 'Visa Debit Card', 'null', 'SUCCESS', 'INR', '655.00', 'Thrisha.B.V', 'No.8,9th Street Rajiv Gandhi nagar, CRPF opp , null', 'Avadi Chennai', 'Tamilnadu', '600065', 'India', '8015752265', 'thrishavengaiah823@gmail.com', 'Thrisha.B.V', 'No.8,9th Street Rajiv Gandhi nagar, CRPF opp , null', 'Avadi Chennai', 'Tamilnadu', '600065', 'India', '8015752265', '1', '44', '32', '0', '', 'N', 'null', 'null', '0.0', '648.00', 'null', 'N', '0', '', '09/09/2023 07:17:28', 'INDIA', '7.0', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `PaymentMethod`
--

CREATE TABLE `PaymentMethod` (
  `id` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `paymentType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'credit_card, debit_card, upi',
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `productId` bigint NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sizeChartId` bigint DEFAULT NULL,
  `productTitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `mrpPrice` int NOT NULL,
  `normalPrice` int NOT NULL,
  `gst` int NOT NULL,
  `hsn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'draft' COMMENT 'published, archived, draft, deleted',
  `categoryId` bigint NOT NULL,
  `subCategoryId` bigint NOT NULL,
  `type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'dress,gadget,course',
  `inventorySlab` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `referralBonus` int DEFAULT '0',
  `refundFrom` int DEFAULT '0',
  `refundTo` int DEFAULT '0',
  `assetOne` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `assetTwo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `assetThree` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `assetFour` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`productId`, `code`, `sizeChartId`, `productTitle`, `description`, `mrpPrice`, `normalPrice`, `gst`, `hsn`, `status`, `categoryId`, `subCategoryId`, `type`, `inventorySlab`, `referralBonus`, `refundFrom`, `refundTo`, `assetOne`, `assetTwo`, `assetThree`, `assetFour`, `createdAt`) VALUES
(1, '001', NULL, 'Shirt', 'shirt', 7000, 4999, 5, '001', 'deleted', 1, 1, 'dress', 'r1c1', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1wee logo.jpg', NULL, NULL, NULL, '2023-07-23 19:31:48'),
(2, '88', NULL, '88', '55', 66, 55, 5, '8', 'deleted', 2, 9, 'dress', '55', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1WhatsApp Image 2023-07-23 at 23.11.38.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1wa.jpg', NULL, NULL, '2023-07-23 19:38:35'),
(3, '002', NULL, 'shirt 2', 'shirt', 10000, 5000, 5, '001', 'deleted', 1, 1, 'dress', 'r1c2', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1weemax_official_1643976519075630.jpg', NULL, NULL, '2023-07-23 19:44:21'),
(4, '003', NULL, 'shirt 3', 'shirt', 100, 50, 5, '001', 'deleted', 1, 1, 'dress', 'r1c2', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5795__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5807-01.jpg', NULL, NULL, '2023-07-23 19:56:30'),
(5, 'test', NULL, 'Test', 'Test', 1, 1, 1, '113', 'deleted', 5, 18, 'dress', '1', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1J L-3 (1).jpg', NULL, NULL, NULL, '2023-07-24 03:25:49'),
(6, '123', NULL, 'Test2', 'asd', 1000, 800, 5, 'asdasd', 'deleted', 5, 18, 'dress', 'asdds', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1Havey Car VJX.png', NULL, NULL, NULL, '2023-07-24 06:44:04'),
(7, '001', NULL, 'shirt 1', 'shirt', 1000, 500, 5, '01010', 'deleted', 1, 1, 'dress', 'r1c1', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5748-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5751-01__02-01__02.jpg', NULL, '2023-07-24 06:56:13'),
(8, '001', NULL, 'Shirt 1', 'shirt', 20, 10, 5, '001', 'deleted', 1, 1, 'dress', 'r1c1', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5748-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5751-01__02-01__02.jpg', NULL, '2023-07-24 08:36:29'),
(9, '001', NULL, 'shirt 2', 'shirt', 20, 10, 5, '001', 'deleted', 1, 1, 'dress', 'r1c2', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5814__01-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5827-01__02.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5815-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5827-01.jpg', '2023-07-24 08:40:32'),
(10, '001', NULL, 'shirt 3', 'shirt', 20, 10, 5, '001', 'deleted', 1, 1, 'dress', 'r1d2', 0, 0, 0, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5784-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5795__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5807-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5787-01.jpg', '2023-07-24 08:42:23'),
(11, 'MST001', 4, 'Cobalt Blue Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R1C1', 100, 70, 80, 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5742-01.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5751-01__02-01__02.jpg', 'https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1NIK_5748-01.jpg', NULL, '2023-07-24 09:28:16'),
(12, 'MST002', 4, 'Buttercream Yellow Printed Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R2C1', 100, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5795__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5807-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5784-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5787-01.jpg', '2023-07-24 13:04:05'),
(13, 'MST003', 4, 'Cyan Blue Zebra Print Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\".', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R3C1', 100, 70, 80, 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367NIK_5817-01-02.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5815-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5827-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5814__01-01.jpeg.jpg', '2023-07-24 13:14:00'),
(14, 'MST004', NULL, 'Charcoal Grey Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\".', 1199, 850, 5, '6205', 'deleted', 1, 1, 'dress', 'R1R4C1', 0, 0, 0, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5836__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5836__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5842__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5845-01.jpg', '2023-07-24 13:20:35'),
(15, 'MST005', 4, 'Pastel Green Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\".', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R5C1', 100, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5857-01__01__01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5857-01.jpg', NULL, NULL, '2023-07-24 13:23:56'),
(16, 'MST006', 4, 'Snow White shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R6C1', 100, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5889-01-02.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5876-01__01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5871-01.jpg', NULL, '2023-07-24 13:28:21'),
(17, 'MST007', 4, 'Athens Grey shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R1C2', 100, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5921-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5898-01__01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5921-01.jpeg.jpg', NULL, '2023-07-24 13:31:43'),
(18, 'MST008', 4, 'Shadow Black Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R2C2', 100, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eAdobe_Express_20221105_0916180_1.png', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eAdobe_Express_20221105_0923320_1.png', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5560__01-02.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5567__01-01.jpeg.jpg', '2023-07-24 13:38:44'),
(19, 'MST009', 4, 'Black Floral Print Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R3C2', 100, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5583-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5588-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5599__01-01.jpeg.jpg', NULL, '2023-07-24 13:42:56'),
(20, 'MST0010', 4, 'Olive Green Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R4C2', 100, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5628-01-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5615-01__02.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5637-01-01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5615-01__01-1.jpg', '2023-07-24 13:47:45'),
(21, 'MST0011', 4, 'Bottle Green Print Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R5C2', 100, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5665-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5657__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5680-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5669-01.jpg', '2023-07-24 13:51:45'),
(22, 'MST004', 4, 'Charcoal Grey Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\"', 1199, 799, 5, '6205', 'published', 1, 1, 'dress', 'R1R4C1', 100, 70, 80, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5729-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5716__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5720__01-01.jpeg.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5701-01.jpg', '2023-07-24 14:00:40'),
(23, 'MST0012', 4, 'Satin Black Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R6C2', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e01.jpg', NULL, NULL, NULL, '2023-07-24 17:23:08'),
(24, 'MST0013', 4, 'White & Blue Stripe Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R1C3', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e02.jpg', NULL, NULL, NULL, '2023-07-24 17:26:09'),
(25, 'MST0014', 4, 'Pink & Grey Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R2C3', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e009.jpg', NULL, NULL, NULL, '2023-07-24 17:31:03'),
(26, 'MST0015', 4, 'Satin Navy Blue Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R3C3', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e09.jpg', NULL, NULL, NULL, '2023-07-24 17:33:16'),
(27, 'MST0016', 4, 'Elephant Grey Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R4C3', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e07.jpg', NULL, NULL, NULL, '2023-07-24 17:37:37'),
(28, 'MST0017', 4, 'Sandal Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R5C3', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e04.jpg', NULL, NULL, NULL, '2023-07-24 17:46:09'),
(29, 'MST0018', 4, 'Multi Color Check Shirt 01', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R1R6C3', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e007.jpg', NULL, NULL, NULL, '2023-07-24 17:59:08'),
(30, 'MST0019', 4, 'White & Black Leaf Print Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R1C1', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e006.jpg', NULL, NULL, NULL, '2023-07-24 18:01:49'),
(31, 'MST0020', 4, 'Coral Red Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R2C1', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e002.jpg', NULL, NULL, NULL, '2023-07-24 18:03:55'),
(32, 'MST0021', 4, 'Navy Blue Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R3C1', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e06.jpg', NULL, NULL, NULL, '2023-07-24 18:06:31'),
(33, 'MST0022', 4, 'Denim Blue Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R4C1', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e003.jpg', NULL, NULL, NULL, '2023-07-24 18:09:24'),
(34, 'MST0023', 4, 'Multi Color Check Shirt 02', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R5C1', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e001.jpg', NULL, NULL, NULL, '2023-07-24 18:12:26'),
(35, 'MST0024', 4, 'Forest Green Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R6C1', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e03.jpg', NULL, NULL, NULL, '2023-07-24 18:35:24'),
(36, 'MST0025', 4, 'Black & White Check Shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R1C2', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e05.jpg', NULL, NULL, NULL, '2023-07-24 18:37:41'),
(37, 'MST0026', 4, 'Yale Blue Check shirt', 'A perfect blend of style, comfort and versatility. Crafted with premium cotton fabric, this classic wardrobe essential makes you effortlessly fashionable.', 1199, 699, 5, '6205', 'published', 1, 1, 'dress', 'R2R2C2', 70, 50, 60, 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938e08.jpg', NULL, NULL, NULL, '2023-07-24 18:40:41'),
(38, 'MTP001', 6, 'Break the Rules Tanktop', 'A cotton tank top is a lightweight and airy essential, crafted from comfy cotton for superior comfort and a relaxed fit, ideal for casual wear and active pursuits.', 399, 199, 5, '61091000', 'published', 1, 14, 'dress', 'R2R3C2', 20, 15, 20, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195365271.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195383236.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195386899.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2product-TTP081622195385168.webp.webp', '2023-07-24 19:28:40'),
(39, 'MTP002', 6, 'Train Insane Tanktop', 'A cotton tank top is a lightweight and airy essential, crafted from comfy cotton for superior comfort and a relaxed fit, ideal for casual wear and active pursuits.', 399, 199, 5, '61091000', 'published', 1, 14, 'dress', 'R2R4C2', 20, 15, 20, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-TTP10-3.webp.webp', '2023-07-24 19:35:52'),
(40, 'MTT001', 6, 'Explore Olive Green T-Shirt', 'The smoothy cotton t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion.', 499, 299, 5, '61091000', 'published', 1, 2, 'dress', 'R2R5C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-3.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST53-4.webp.webp', '2023-07-24 20:24:57'),
(41, 'MTT002', 6, 'Inspiring White T-Shirt', 'The smoothy cotton half sleeve crew neck t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion.', 499, 299, 5, '61091000', 'published', 1, 2, 'dress', 'R2R6C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST41-3.webp.webp', '2023-07-24 20:29:56'),
(42, 'MTT003', 6, 'Blush Pink T-Shirt', 'The smoothy cotton half sleeve crew neck t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion.', 499, 299, 5, '61091000', 'published', 1, 2, 'dress', 'R2R1C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST36-3.webp.webp', '2023-07-24 20:37:41'),
(43, 'MTT004', 6, 'Sap Green T-Shirt', 'The smoothy cotton half sleeve crew neck t-shirt offers a premium feel with its soft, breathable fabric. Its classic design and durable construction ensure both comfort and style for any occasion', 499, 299, 5, '61091000', 'published', 1, 2, 'dress', 'R2R2C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST67-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST67-3.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-HST67-2.webp.webp', NULL, '2023-07-24 20:40:51'),
(44, 'MJR001', 8, 'Red - Attitude Jogger', 'The Men\'s cotton jogger is the epitome of comfort, featuring a soft and cozy fabric blend that allows for unrestricted movement. With its trendy and athletic design, these joggers are a perfect choice for both lounging at home and stepping out in style.', 599, 399, 5, '61091000', 'published', 1, 4, 'dress', 'R2R3C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2Red Coloured Attitude jogger.png', NULL, NULL, NULL, '2023-07-24 20:48:00'),
(45, 'MJR002', 8, 'Black - Limitless Jogger', 'The Men\'s cotton jogger is the epitome of comfort, featuring a soft and cozy fabric blend that allows for unrestricted movement. With its trendy and athletic design, these joggers are a perfect choice for both lounging at home and stepping out in style.', 599, 399, 5, '61091000', 'published', 1, 4, 'dress', 'R2R4C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2Black Limitless Men\'s Jogger.png', NULL, NULL, NULL, '2023-07-24 20:51:27'),
(46, 'MJR003', 8, 'Grey Beleive Jogger', 'The Men\'s cotton jogger is the epitome of comfort, featuring a soft and cozy fabric blend that allows for unrestricted movement. With its trendy and athletic design, these joggers are a perfect choice for both lounging at home and stepping out in style.', 599, 399, 5, '61091000', 'published', 1, 4, 'dress', 'R2R5C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/78262bb8-8f3e-4e26-aa21-00cd160ec677grey .jpg', NULL, NULL, NULL, '2023-07-24 20:53:31'),
(47, 'WKI001', 5, 'White Floral Printed Kurti', 'Versatile design and vibrant patterns of this cotton kurti makes it a perfect choice for both casual and semi-formal occasions. Elevate your style with this comfortable and chic kurti, ideal for the modern woman seeking both comfort and fashion.', 999, 599, 5, '6210', 'published', 2, 8, 'dress', 'R2R6C3', 50, 40, 50, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-4.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-1.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR060-3.webp.webp', '2023-07-24 21:04:47'),
(48, 'WKI002', 5, 'Pink Embroidery Kurti', 'Versatile design and vibrant patterns of this cotton kurti makes it a perfect choice for both casual and semi-formal occasions. Elevate your style with this comfortable and chic kurti, ideal for the modern woman seeking both comfort and fashion.', 999, 599, 5, '6210', 'published', 2, 8, 'dress', 'R3R1C1', 50, 40, 50, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-2.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-3.webp.webp', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-1.webp.webp', NULL, '2023-07-24 21:09:13'),
(49, 'WJN001', NULL, 'Dark Blue Slimfit Jeans', '\"Flattering and form-fitting, our women\'s slim fit jeans accentuate curves with a sleek, stylish silhouette, perfect for versatile everyday wear.\"', 999, 699, 5, '6205', 'published', 2, 11, 'dress', 'R3R2C1', 60, 50, 60, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815087.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815082.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815060.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba21661493815064.jpg', '2023-07-25 11:17:11'),
(50, 'WJN002', NULL, 'Light Blue Slim Jeans', '\"Flattering and form-fitting, our women\'s slim fit jeans accentuate curves with a sleek, stylish silhouette, perfect for versatile everyday wear.\"', 999, 699, 5, '6205', 'published', 2, 11, 'dress', 'R3R3C1', 60, 50, 60, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-AWJ001-5.webp.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-AWJ001-3.webp_1.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2products-AWJ001-1.webp_1.jpg', NULL, '2023-07-25 11:20:17'),
(51, 'WKI003', NULL, 'Mustard Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '6210', 'deleted', 2, 8, 'dress', 'R3R4C1', 0, 0, 0, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(4).jpg', '2023-07-25 11:41:04'),
(52, 'WKI004', 5, 'Celeste Blue Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '6210', 'published', 2, 8, 'dress', 'R3R5C1', 60, 50, 60, 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367TFFSET037 (4).jpg', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367TFFSET037 (5).jpg', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c779367TFFSET037 (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET037 (3).jpg', '2023-07-25 11:47:16'),
(53, 'WKI005', 5, 'Lavender Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '6210', 'published', 2, 8, 'dress', 'R3R6C1', 60, 50, 60, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (1).jpeg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (3).jpeg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (2).jpeg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET004LAVENDER (4).jpeg', '2023-07-25 11:52:18'),
(54, 'WKI003', 5, 'Mustard Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '6210', 'published', 2, 8, 'dress', 'R3R4C1', 60, 50, 60, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET015MUSTERD(1).jpg', '2023-07-25 12:36:25'),
(55, 'WKI006', 5, 'Pastel Pink Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '621142', 'published', 2, 8, 'dress', 'R3R1C2', 60, 50, 60, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (5).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (6).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET070PINK (2).jpg', '2023-07-25 12:44:19'),
(56, 'WKI008', 5, 'Floral Red Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R3C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (7).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC016 (3).jpg', '2023-07-25 12:56:01'),
(57, 'WKI009', 5, 'Floral Blue Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R4C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (6).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC017 (2).jpg', '2023-07-25 13:05:27'),
(58, 'WKI0010', 5, 'Multicolor Stripe Single Kurti 01', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R5C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (7).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC018 (2).jpg', '2023-07-25 13:09:40'),
(59, 'WKI0011', 5, 'Multicolor Stripe Single Kurti 02', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R6C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (5).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC008 (4).jpg', '2023-07-25 13:13:32'),
(60, 'WKI0012', 5, 'Blue Leaf Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R1C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC031 (7).jpg', '2023-07-25 13:17:29'),
(61, 'WKI0013', 5, 'Pink Leaf Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R2C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (1).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (7).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2KC030 (4).jpg', '2023-07-25 13:21:02'),
(62, 'WKI0015', 5, 'Pastel Green Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"\n', 699, 399, 5, '621142', 'published', 2, 8, 'dress', 'R3R4C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (1).png', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (3).png', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (2).png', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK004GREEN (5).png', '2023-07-25 13:34:49'),
(63, 'WKI0016', 5, 'Sage Green Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 699, 399, 5, '621142', 'published', 2, 8, 'dress', 'R3R5C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2686.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2678.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2676.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2677.jpg', '2023-07-25 13:38:21'),
(64, 'WKI0017', 5, 'Mustard Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 699, 399, 5, '621142', 'published', 2, 8, 'dress', 'R3R6C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2761.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2764.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2752.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba222-9-2022_maza2760.jpg', '2023-07-25 13:41:21'),
(65, 'WKI0018', 5, 'Black Single Kurti', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 699, 399, 5, '621142', 'published', 2, 8, 'dress', 'R4R1C1', 40, 30, 40, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK-021BLACK (3).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK-021BLACK (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFF-CK-021BLACK (1).jpg', NULL, '2023-07-25 13:47:19'),
(66, 'WKI0019', 5, 'Midnight Blue Ethnic Croptop+Skirt+Jacket', 'A stylish and comfortable ensemble, the Crepe Kurta Dupatta Pant set features a flowing crepe kurta, combined with matching dupatta and pants, perfect for a chic and effortless look. Elevate your fashion game with this versatile outfit that seamlessly blends traditional elements with modern flair.', 1499, 699, 5, '621142', 'published', 2, 8, 'dress', 'R4R2C1', 80, 60, 80, 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c7793673J1A9264 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9287 copy.jpg', 'https://api.weemax.in/api/page/public/d11e324e-5902-41b7-a913-3d583c7793673J1A9251 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9247 copy.jpg', '2023-07-25 13:55:32'),
(67, 'WKI0020', 5, 'Mustard Kurti+Pant+Dupatta', 'A stylish and comfortable ensemble, the Crepe Kurta Dupatta Pant set features a flowing crepe kurta, combined with matching dupatta and pants, perfect for a chic and effortless look. Elevate your fashion game with this versatile outfit that seamlessly blends traditional elements with modern flair.', 1499, 699, 5, '621142', 'published', 2, 8, 'dress', 'R4R3C1', 80, 60, 80, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A8995 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9019 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A8990 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A8978 copy.jpg', '2023-07-25 14:00:53'),
(68, 'WKI0021', 5, 'Peach Kurti+Pant+Dupatta', 'A stylish and comfortable ensemble, the Crepe Kurta Dupatta Pant set features a flowing crepe kurta, combined with matching dupatta and pants, perfect for a chic and effortless look. Elevate your fashion game with this versatile outfit that seamlessly blends traditional elements with modern flair.', 1499, 699, 5, '621142', 'published', 2, 8, 'dress', 'R4R4C1', 80, 60, 80, 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9160 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9148 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9129 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9171 copy.jpg', '2023-07-25 14:04:57'),
(69, 'WKI0022JN22VI', 5, 'Hot Pink Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 499, 5, '6210', 'published', 2, 8, 'dress', 'R4R5C1', 40, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273221535_650500316073172_1057424652865625554_n.webp', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48270218698_934656040748872_7189051524487323808_n.webp', NULL, NULL, '2023-07-26 10:21:54'),
(70, 'WKI0023JN22VI', 5, 'Pear Green Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 499, 5, '6210', 'published', 2, 8, 'dress', 'R4R6C1', 40, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273174017_677635843260383_3335791871112175473_n.webp', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273179727_1333348870459799_7108494274014086981_n.webp', NULL, NULL, '2023-07-26 10:25:53'),
(71, 'WKI0024JN22VI', 5, 'Burgundy Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 499, 5, '6210', 'published', 2, 8, 'dress', 'R4R1C2', 40, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG-20220202-WA0001.jpg', NULL, NULL, NULL, '2023-07-26 10:29:33'),
(72, 'WKI0025JN22V1', 5, 'White & Pink Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 499, 5, '6210', 'published', 2, 8, 'dress', 'R4R2C2', 40, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG-20220202-WA0004.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273109448_727446118196962_4626285009224329447_n.webp', NULL, NULL, '2023-07-26 10:32:29'),
(73, 'WKI0026JN22VI', 5, 'Pistachio Single Embroidery Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 499, 5, '6210', 'published', 2, 8, 'dress', 'R4R3C2', 40, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48260384354_144109791353346_7592957446100256937_n.webp', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273369741_1843917939134214_8986923250803387691_n.webp', NULL, NULL, '2023-07-26 10:39:55'),
(74, 'WKI0027JN22VI', 5, 'Black & White Stripe Single Kurti', 'A chic and comfortable women\'s kurti, crafted from breathable cotton fabric, offering effortless style and all-day ease.\"', 899, 499, 5, '6210', 'published', 2, 8, 'dress', 'R4R4C2', 40, 40, 50, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG-20220202-WA0003.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48273138451_345107224130027_3611523701575332065_n.webp', NULL, NULL, '2023-07-26 10:42:30'),
(75, 'WKI007JLY23RA', 5, 'Black Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 5, '621142', 'published', 2, 8, 'dress', 'R3R2C2', 60, 50, 60, 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8B1.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8B3.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8B4.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8WhatsApp Image 2023-07-26 at 16.15.59.jpg', '2023-07-26 10:49:38'),
(76, 'WKI0014JLY23RA', NULL, 'Black Floral Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'deleted', 2, 8, 'dress', 'R3R3C3', 0, 0, 0, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482.jpg', NULL, NULL, '2023-07-26 10:51:52'),
(77, 'WKI0014JLY23RA', 5, 'Black Floral Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 5, '62044990', 'published', 2, 8, 'dress', 'R3R3C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4822.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4833.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4844.jpg', '2023-07-26 10:58:36'),
(78, 'WTT001JLY23SE', 7, 'Yellow Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R1C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fproducts-WHST19-1.webp.webp', NULL, NULL, NULL, '2023-07-26 19:02:08'),
(79, 'WTT002JLY23SE', 7, 'Peach Women\'s T-shirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R2C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fPeach Single & Happy Women\'s Half Sleeve T-shirt.png', NULL, NULL, NULL, '2023-07-26 19:04:36'),
(80, 'WTT003JLY23SE', 7, 'Boss Girl Meroon T- Shirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R3C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/78262bb8-8f3e-4e26-aa21-00cd160ec677meroon.jpg', NULL, NULL, NULL, '2023-07-26 19:08:56'),
(81, 'WTT004OCT21TF', 7, 'White Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R4C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fwepik-export-20230726185547bgxX.png', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fwepik-export-202307261900160i6I.png', NULL, NULL, '2023-07-26 19:30:29'),
(82, 'WTT005OCT21TF', 7, 'Black Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R5C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230727_010221.png', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230727_010257.png', NULL, NULL, '2023-07-26 19:37:45'),
(83, 'WTT006OCT21TF', 7, 'Fluorescent Green Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R6C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fweemax_official_1643976519075630.jpg', NULL, NULL, NULL, '2023-07-26 19:52:05'),
(84, 'WTT007OCT21TF', 7, 'Red Women\'s Tshirt', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R5R1C1', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fweemax_official_1643976491775806.jpg', NULL, NULL, NULL, '2023-07-26 19:53:54'),
(85, 'MDI001OCT21SMA', NULL, 'Silver Jari Cotton Dhoti (2m)', '\"Unleash your inner regal charm with our Silver Border Dhoti, a stunning and traditional garment adorned with a shimmering silver border that adds a touch of opulence to any cultural celebration or special occasion.\"', 400, 250, 5, '52082910', 'published', 1, 6, 'dress', 'R5R2C1', 30, 20, 30, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230726_173543.jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_fb8d1350-87e4-40bb-a07f-94d9be8050ed_1080x.jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f3_c14ba2f6-524b-4437-8e83-ff96fe5f2b54_900x.jpg', NULL, '2023-07-26 20:14:02'),
(86, '212', NULL, 'shoe', 'ss', 1, 1, 5, '21', 'deleted', 1, 1, 'dress', '91', 0, 0, 0, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f3_c14ba2f6-524b-4437-8e83-ff96fe5f2b54_900x.jpg', NULL, NULL, NULL, '2023-07-26 20:55:37'),
(87, '444', NULL, 'sge', 'ssss', 1, 1, 5, '444', 'deleted', 2, 11, 'accessories', '22', 0, 0, 0, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fIMG_20230726_173543.jpg', NULL, NULL, NULL, '2023-07-27 07:07:11'),
(88, '001', NULL, 'pen', 'ttt', 1, 1, 5, '333', 'deleted', 4, 17, 'accessories', '2', 0, 0, 0, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fweemax_official_1643282691900876.jpg', NULL, NULL, NULL, '2023-07-27 07:16:19'),
(89, 'WLG001SEP21GC', NULL, 'Black Stretchable Legging', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'draft', 2, 15, 'dress', 'R5R3C1', 0, 0, 0, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL5.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL6.webp', NULL, '2023-07-27 07:43:55'),
(90, 'WLG002SEP21GC', NULL, 'Yellow Stretchable Legging', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R4C1', 40, 30, 40, 'https://api.weemax.in/api/page/public/bbdad7af-d03f-48c9-ad8f-bb3eae4b3f3823.webp', 'https://api.weemax.in/api/page/public/bbdad7af-d03f-48c9-ad8f-bb3eae4b3f38ew.webp', NULL, NULL, '2023-07-27 07:48:14'),
(91, 'WLG001SEP21GC', NULL, 'White Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'draft', 2, 15, 'dress', 'R5RC1', 0, 0, 0, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_1.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_4.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_5.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_6.webp', '2023-07-27 07:52:33');
INSERT INTO `Product` (`productId`, `code`, `sizeChartId`, `productTitle`, `description`, `mrpPrice`, `normalPrice`, `gst`, `hsn`, `status`, `categoryId`, `subCategoryId`, `type`, `inventorySlab`, `referralBonus`, `refundFrom`, `refundTo`, `assetOne`, `assetTwo`, `assetThree`, `assetFour`, `createdAt`) VALUES
(92, 'WLG004SEP21GC', NULL, 'Pink Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R6C1', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_3_acd41008-eb1d-48b3-a24f-f01bb9280990.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_4_fdea9f2c-527b-4262-aa1a-d642f097b165.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_5_d6d9c10b-dad7-46c9-b2ba-f1ee492615b3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_1_51909609-34f6-4b1c-9035-40e08901dded.webp', '2023-07-27 07:57:11'),
(93, 'WLG005SEP21GC', NULL, 'Red Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R1C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-460533135-red-MODEL.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-460533135-red-MODEL3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-460533135-red-MODEL2.webp', NULL, '2023-07-27 07:59:13'),
(94, 'WLG006SEP21GC', NULL, 'Royal Blue Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R2C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f2_69221e17-2599-4a70-b6cf-5da4b7a0e853.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f3_47be7f00-a889-4326-b12b-b3ee3d8b4c7d.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f4_4cb1d58a-3010-49bc-9b1c-674e3630723c.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5_d6d63e2d-3b2c-4ea6-8dd0-76a9eef8116a.webp', '2023-07-27 08:01:17'),
(95, 'WLG007SEP21GC', NULL, 'Mocassin Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R3C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_1.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_4.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_5.webp', '2023-07-27 08:03:22'),
(96, 'WLG008SEP21GC', NULL, 'Orange Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 5, '6104', 'published', 2, 15, 'dress', 'R5R4C2', 40, 30, 40, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-464887137-orange-MODEL3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-464887137-orange-MODEL7.webp', NULL, NULL, '2023-07-27 08:05:28'),
(97, 'WKI0028JLY23RA', NULL, 'Cream Kurti+Pant Set', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti & Pant, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 999, 599, 5, '621142', 'published', 2, 8, 'dress', 'R4R5C2', 50, 40, 50, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (3).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (5).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (1).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (7).jpg', '2023-07-27 08:36:26'),
(98, 'WKI0029JLY23RA', 5, 'Garnet Pink Kurti & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 599, 5, '621142', 'published', 2, 8, 'dress', 'R4R6C2', 50, 40, 50, 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (5).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (7).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (2).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (1).jpg', '2023-07-27 08:41:21'),
(99, 'MSE001AUG21BX', NULL, 'Men\'s White Casual Shoe', '\"Step into laid-back sophistication with our Men\'s Casual Shoe, a perfect fusion of style and ease, ensuring a seamless transition from day to night.\"', 1200, 750, 12, '6402', 'published', 1, 3, 'dress', 'COMMON', 70, 60, 70, 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8IMG-20210808-WA0006 (1).jpg', NULL, NULL, NULL, '2023-07-27 09:26:30'),
(100, 'MSE002NOV21BX', NULL, 'Men\'s Navy Blue Loafer', '\"Experience refined comfort and effortless style with our Loafers, a versatile footwear option that effortlessly transitions from formal events to casual outings, making them a must-have addition to your wardrobe.\"', 1200, 750, 12, '6402', 'published', 1, 3, 'dress', 'Common', 70, 60, 70, 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8026.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8023.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8025.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8024.jpg', '2023-07-27 09:30:16'),
(101, 'MWH001', NULL, 'Men\'s SS Analog Watch', '\"Timeless sophistication meets precision engineering in this sleek and stylish men\'s watch, the perfect blend of form and function for any occasion.\"', 999, 550, 18, '9102', 'published', 1, 5, 'accessories', 'Common', 60, 50, 60, 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49J-3.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49J-1.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49J-2.jpg', NULL, '2023-07-27 12:10:18'),
(102, 'WWH001', NULL, 'Women\'s SS Analog Watch', '\"Elegance meets precision with our women\'s analog watch, featuring a timeless design and reliable quartz movement for the perfect blend of style and functionality.\"', 999, 550, 18, '9102', 'published', 2, 12, 'accessories', 'Common', 60, 50, 60, 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49L-2.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49L-3.jpg', 'https://api.weemax.in/api/page/public/4391560c-8e3e-43c1-99c7-353fffd2aa49L-1.jpg', NULL, '2023-07-27 12:12:40'),
(103, 'CWH001', NULL, 'Couple\'s SS Analog Watch', '\"Embrace a shared journey with our couple\'s analog watch, crafted with precision engineering and a symmetrical design, symbolizing the timeless bond you share with your partner.\"', 1999, 999, 18, '9102', 'published', 4, 17, 'accessories', 'Common', 120, 100, 120, 'https://api.weemax.in/api/page/public/8a187a80-b0d8-4dcb-90af-ed834f0c534fJ L-3.jpg', NULL, NULL, NULL, '2023-07-27 12:20:51'),
(105, 'MJR004', 8, 'Yellow Jogger', 'The Men\'s cotton jogger is the epitome of comfort, featuring a soft and cozy fabric blend that allows for unrestricted movement. With its trendy and athletic design, these joggers are a perfect choice for both lounging at home and stepping out in style.', 599, 399, 5, '61091000', 'published', 1, 4, 'dress', 'R2R3C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/78262bb8-8f3e-4e26-aa21-00cd160ec677YELLOW JR.jpg', NULL, NULL, NULL, '2023-08-24 12:03:34'),
(106, 'WTT004JLY23SE', 7, 'White color Q TSHIRT', '\"Indulge in unmatched comfort with our Women\'s Comfy Cotton T-Shirt, crafted from soft, breathable cotton for a luxurious and relaxed fit all day long.\"', 499, 299, 5, '61091000', 'published', 2, 9, 'dress', 'R4R3C3', 40, 30, 40, 'https://api.weemax.in/api/page/public/78262bb8-8f3e-4e26-aa21-00cd160ec677white.jpg', NULL, NULL, NULL, '2023-08-24 12:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `ProductCategory`
--

CREATE TABLE `ProductCategory` (
  `categoryId` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active' COMMENT 'active, deleted',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ProductCategory`
--

INSERT INTO `ProductCategory` (`categoryId`, `name`, `status`, `createdAt`) VALUES
(1, 'Men', 'active', '2023-07-23 19:08:17'),
(2, 'Women', 'active', '2023-07-23 19:10:06'),
(3, 'Foods & Beverages', 'active', '2023-07-23 19:11:46'),
(4, 'Others', 'active', '2023-07-23 19:21:00'),
(5, 'Test', 'deleted', '2023-07-24 03:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `ProductInventory`
--

CREATE TABLE `ProductInventory` (
  `inventoryId` bigint NOT NULL,
  `productId` bigint NOT NULL,
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colorCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active' COMMENT 'active,removed',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ProductInventory`
--

INSERT INTO `ProductInventory` (`inventoryId`, `productId`, `size`, `color`, `colorCode`, `quantity`, `status`, `createdAt`) VALUES
(1, 1, 's', 'red', '', 10, 'active', '2023-07-23 19:35:03'),
(2, 1, 'm', 'red', '', 10, 'active', '2023-07-23 19:35:34'),
(3, 1, 'l', 'red', '', 10, 'active', '2023-07-23 19:35:36'),
(4, 1, '', '', '', 0, 'removed', '2023-07-23 19:37:06'),
(5, 3, 's', 'red', '', 10, 'active', '2023-07-23 19:55:10'),
(6, 4, 's', 'red', '#4FCB19', 10, 'active', '2023-07-23 19:57:54'),
(7, 4, 'm', 'red', '#4FCB19', 10, 'active', '2023-07-23 19:58:00'),
(8, 5, 'S', 'red', '#F23535', 5, 'active', '2023-07-24 03:25:49'),
(9, 6, 'A', 'red', '#E83535', 5, 'active', '2023-07-24 06:44:04'),
(10, 7, 'S', 'blue', '#0C4F9E', 10, 'active', '2023-07-24 06:56:13'),
(11, 7, 'L', 'blue', '#0C4F9E', 10, 'active', '2023-07-24 06:56:13'),
(12, 7, 'M', 'blue', '#0C4F9E', 10, 'active', '2023-07-24 06:56:13'),
(13, 8, 's', 'blue ', '#1C69BB', 5, 'active', '2023-07-24 08:36:29'),
(14, 8, 'm', 'blue ', '#1C69BB', 10, 'active', '2023-07-24 08:36:29'),
(15, 8, 'l', 'blue ', '#1C69BB', 9, 'active', '2023-07-24 08:36:29'),
(16, 9, 's', 'pedestal', '#80E3FA', 8, 'active', '2023-07-24 08:40:32'),
(17, 9, 'm', 'pedestal', '#80E3FA', 12, 'active', '2023-07-24 08:40:32'),
(18, 9, 'l', 'pedestal', '#80E3FA', 12, 'active', '2023-07-24 08:40:32'),
(19, 10, 's', 'yellow', '#F3F5EA', 10, 'active', '2023-07-24 08:42:23'),
(20, 10, 'm', 'yellow', '#F3F5EA', 10, 'active', '2023-07-24 08:42:23'),
(21, 11, 'S', 'Cobalt Blue', '#0852A7', 0, 'removed', '2023-07-24 09:28:16'),
(22, 11, 'L', 'Cobalt Blue', '#0852A7', 0, 'removed', '2023-07-24 09:28:16'),
(23, 11, 'M', 'Cobalt Blue', '#0852A7', 0, 'removed', '2023-07-24 09:28:16'),
(24, 11, 'XXL', 'Cobalt Blue', '#0852A7', 0, 'removed', '2023-07-24 09:28:16'),
(25, 11, 'XL', 'Cobalt Blue', '#0852A7', 5, 'removed', '2023-07-24 09:28:16'),
(28, 12, 'XL', 'Buttercream Yellow', '#F5EEB8', 3, 'removed', '2023-07-24 13:04:05'),
(29, 12, 'XXL', 'Buttercream Yellow', '#F5EEB8', 2, 'removed', '2023-07-24 13:04:05'),
(30, 12, 'L', 'Buttercream Yellow', '#F5EEB8', 7, 'removed', '2023-07-24 13:04:05'),
(31, 13, 'S', 'Cyan Blue', '#B0E3FE', 2, 'active', '2023-07-24 13:14:00'),
(32, 13, 'M', 'Cyan Blue', '#B0E3FE', 5, 'active', '2023-07-24 13:14:00'),
(33, 13, 'L', 'Cyan Blue', '#B0E3FE', 7, 'active', '2023-07-24 13:14:00'),
(34, 13, 'XXL', 'Cyan Blue', '#B0E3FE', 2, 'active', '2023-07-24 13:14:00'),
(35, 13, 'XL', 'Cyan Blue', '#B0E3FE', 1, 'active', '2023-07-24 13:14:00'),
(37, 14, 'M', 'Charcoal Grey', '#5B928F', 5, 'active', '2023-07-24 13:20:35'),
(38, 14, 'L', 'Charcoal Grey', '#5B928F', 7, 'active', '2023-07-24 13:20:35'),
(39, 14, 'XL', 'Charcoal Grey', '#5B928F', 3, 'active', '2023-07-24 13:20:35'),
(40, 14, 'XXL', 'Charcoal Grey', '#5B928F', 1, 'active', '2023-07-24 13:20:35'),
(41, 15, 'S', 'Pastel Green', '#7BB5C9', 2, 'active', '2023-07-24 13:23:56'),
(42, 15, 'M', 'Pastel Green', '#7BB5C9', 5, 'active', '2023-07-24 13:23:56'),
(43, 15, 'L', 'Pastel Green', '#7BB5C9', 7, 'active', '2023-07-24 13:23:56'),
(45, 15, 'XXL', 'Pastel Green', '#7BB5C9', 2, 'active', '2023-07-24 13:23:56'),
(46, 16, 'S', 'Snow White', '#F1F5F1', 7, 'active', '2023-07-24 13:28:21'),
(47, 16, 'M', 'Snow White', '#F1F5F1', 11, 'active', '2023-07-24 13:28:21'),
(48, 16, 'L', 'Snow White', '#F1F5F1', 13, 'active', '2023-07-24 13:28:21'),
(49, 16, 'XL', 'Snow White', '#F1F5F1', 5, 'active', '2023-07-24 13:28:21'),
(50, 16, 'XXL', 'Snow White', '#F1F5F1', 1, 'active', '2023-07-24 13:28:21'),
(51, 17, 'S', 'Athens Grey', '#DCDDDD', 3, 'active', '2023-07-24 13:31:43'),
(52, 17, 'L', 'Athens Grey', '#DCDDDD', 7, 'active', '2023-07-24 13:31:43'),
(53, 17, 'M', 'Athens Grey', '#DCDDDD', 3, 'active', '2023-07-24 13:31:43'),
(56, 18, 'S', 'Shadow Black', '#1B1610', 5, 'active', '2023-07-24 13:38:44'),
(57, 18, 'M', 'Shadow Black', '#1B1610', 7, 'active', '2023-07-24 13:38:44'),
(58, 18, 'L', 'Shadow Black', '#1B1610', 11, 'active', '2023-07-24 13:38:44'),
(60, 18, 'XL', 'Shadow Black', '#1B1610', 6, 'active', '2023-07-24 13:38:44'),
(61, 19, 'S', 'Black', '#090808', 4, 'active', '2023-07-24 13:42:56'),
(62, 19, 'L', 'Black', '#090808', 9, 'active', '2023-07-24 13:42:56'),
(63, 19, 'M', 'Black', '#090808', 6, 'active', '2023-07-24 13:42:56'),
(64, 19, 'XL', 'Black', '#090808', 4, 'active', '2023-07-24 13:42:56'),
(65, 19, 'XXL', 'Black', '#090808', 2, 'active', '2023-07-24 13:42:56'),
(67, 20, 'S', 'Olive Green', '#1D2729', 3, 'active', '2023-07-24 13:47:45'),
(68, 20, 'M', 'Olive Green', '#1D2729', 5, 'active', '2023-07-24 13:47:45'),
(69, 20, 'L', 'Olive Green', '#1D2729', 9, 'active', '2023-07-24 13:47:45'),
(70, 20, 'XL', 'Olive Green', '#1D2729', 2, 'active', '2023-07-24 13:47:45'),
(71, 21, 'S', 'Bottle Green', '#19504D', 4, 'active', '2023-07-24 13:51:45'),
(72, 21, 'L', 'Bottle Green', '#19504D', 8, 'active', '2023-07-24 13:51:45'),
(73, 21, 'M', 'Bottle Green', '#19504D', 5, 'active', '2023-07-24 13:51:45'),
(74, 21, 'XL', 'Bottle Green', '#19504D', 5, 'active', '2023-07-24 13:51:45'),
(75, 21, 'XXL', 'Bottle Green', '#19504D', 2, 'active', '2023-07-24 13:51:45'),
(76, 22, 'S', 'Charcoal Grey', '#587293', 3, 'active', '2023-07-24 14:00:40'),
(77, 22, 'L', 'Charcoal Grey', '#587293', 7, 'active', '2023-07-24 14:00:40'),
(78, 22, 'M', 'Charcoal Grey', '#587293', 3, 'active', '2023-07-24 14:00:40'),
(80, 22, 'XXL', 'Charcoal Grey', '#587293', 1, 'active', '2023-07-24 14:00:40'),
(81, 23, 'S', 'Black', '#000000', 8, 'active', '2023-07-24 17:23:08'),
(82, 24, 'S', 'White ', '#FFFFFF', 10, 'active', '2023-07-24 17:26:09'),
(83, 25, 'S', 'Pink & Grey', '#DBC6C5', 6, 'active', '2023-07-24 17:31:03'),
(84, 26, 'S', 'Navy Blue', '#000080', 9, 'active', '2023-07-24 17:33:16'),
(85, 27, 'S', 'Elephant grey', '#25262B', 13, 'active', '2023-07-24 17:37:37'),
(86, 28, 'S', 'Sandal', '#C8AE96', 11, 'active', '2023-07-24 17:46:09'),
(87, 31, 'S', 'Coral Red', '#FF4040', 4, 'active', '2023-07-24 18:03:55'),
(88, 32, 'S', 'Navy Blue', '#283849', 1, 'active', '2023-07-24 18:06:31'),
(89, 33, 'S', 'Blue', '#0C234B', 2, 'active', '2023-07-24 18:09:24'),
(90, 34, 'S', 'Multi Color', '#8A7F74', 5, 'active', '2023-07-24 18:12:26'),
(91, 35, 'S', 'Forest Green', '#014421', 8, 'active', '2023-07-24 18:35:24'),
(92, 36, 'S', 'Black & White', '#646363', 3, 'active', '2023-07-24 18:37:41'),
(93, 37, 'S', 'Yale Blue', '#00008B', 5, 'active', '2023-07-24 18:40:41'),
(98, 24, 'M', 'White ', '#FFFFFF', 10, 'active', '2023-07-24 18:59:22'),
(99, 24, 'L', 'White ', '#FFFFFF', 23, 'active', '2023-07-24 18:59:57'),
(100, 24, 'XL', 'White ', '#FFFFFF', 10, 'active', '2023-07-24 19:00:00'),
(102, 25, 'M', 'Pink & Grey', '#DBC6C5', 3, 'active', '2023-07-24 19:01:02'),
(103, 25, 'L', 'Pink & Grey', '#DBC6C5', 2, 'active', '2023-07-24 19:01:20'),
(104, 25, 'XXL', 'Pink & Grey', '#DBC6C5', 1, 'active', '2023-07-24 19:01:28'),
(105, 26, 'L', 'Navy Blue', '#000080', 12, 'active', '2023-07-24 19:01:50'),
(106, 27, 'M', 'Elephant grey', '#25262B', 1, 'active', '2023-07-24 19:02:51'),
(107, 27, 'L', 'Elephant grey', '#25262B', 3, 'active', '2023-07-24 19:03:03'),
(108, 28, 'M', 'Sandal', '#C8AE96', 11, 'active', '2023-07-24 19:03:39'),
(109, 28, 'L', 'Sandal', '#C8AE96', 28, 'active', '2023-07-24 19:03:50'),
(110, 28, 'XL', 'Sandal', '#C8AE96', 15, 'active', '2023-07-24 19:04:07'),
(111, 29, 'S', 'Multi Color', '#AD9F80', 2, 'active', '2023-07-24 19:04:50'),
(112, 29, 'XXL', 'Multi Color', '#AD9F80', 3, 'removed', '2023-07-24 19:05:04'),
(113, 30, 'S', 'White', '#FFFBFB', 2, 'active', '2023-07-24 19:06:30'),
(114, 31, 'L', 'Coral Red', '#FF4040', 6, 'active', '2023-07-24 19:07:36'),
(116, 29, 'XXL', 'Multi Color', '#AD9F80', 3, 'active', '2023-07-24 19:08:34'),
(117, 32, 'M', 'Navy Blue', '#283849', 0, 'removed', '2023-07-24 19:08:51'),
(118, 33, 'L', 'Blue', '#0C234B', 1, 'active', '2023-07-24 19:09:38'),
(119, 33, 'XL', 'Blue', '#0C234B', 1, 'active', '2023-07-24 19:09:41'),
(120, 34, 'M', 'Multi Color', '#8A7F74', 4, 'active', '2023-07-24 19:10:15'),
(121, 34, 'L', 'Multi Color', '#8A7F74', 10, 'active', '2023-07-24 19:10:18'),
(122, 34, 'XL', 'Multi Color', '#8A7F74', 4, 'active', '2023-07-24 19:10:22'),
(123, 34, 'XXL', 'Multi Color', '#8A7F74', 3, 'active', '2023-07-24 19:10:28'),
(124, 36, 'L', 'Black & White', '#646363', 1, 'active', '2023-07-24 19:11:26'),
(125, 37, 'L', 'Yale Blue', '#00008B', 1, 'active', '2023-07-24 19:12:06'),
(127, 38, 'M', 'Black', '#000000', 1, 'active', '2023-07-24 19:28:40'),
(128, 38, 'XL', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40'),
(129, 38, 'L', 'Black', '#000000', 2, 'active', '2023-07-24 19:28:40'),
(130, 38, 'XXL', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40'),
(131, 39, 'S', 'Pantone Red', '#874930', 1, 'active', '2023-07-24 19:35:52'),
(132, 39, 'M', 'Pantone Red', '#874930', 1, 'active', '2023-07-24 19:35:52'),
(133, 39, 'XL', 'Pantone Red', '#874930', 2, 'active', '2023-07-24 19:35:52'),
(134, 39, 'L', 'Pantone Red', '#874930', 1, 'active', '2023-07-24 19:35:52'),
(135, 39, 'XXL', 'Pantone Red', '#874930', 3, 'active', '2023-07-24 19:35:52'),
(136, 40, 'S', 'Olive Green', '#2B352F', 2, 'active', '2023-07-24 20:24:57'),
(137, 40, 'L', 'Olive Green', '#2B352F', 2, 'active', '2023-07-24 20:24:57'),
(138, 40, 'XL', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57'),
(139, 40, 'XXL', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57'),
(140, 40, 'M', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57'),
(143, 41, 'M', 'White', '#FFFFFF', 2, 'active', '2023-07-24 20:29:56'),
(144, 41, 'XL', 'White', '#FFFFFF', 3, 'active', '2023-07-24 20:29:56'),
(145, 41, 'XXL', 'White', '#FFFFFF', 3, 'active', '2023-07-24 20:29:56'),
(146, 42, 'S', 'Blush pink', '#FFC2C5', 3, 'active', '2023-07-24 20:37:41'),
(147, 42, 'L', 'Blush pink', '#FFC2C5', 3, 'active', '2023-07-24 20:37:41'),
(148, 42, 'XL', 'Blush pink', '#FFC2C5', 2, 'active', '2023-07-24 20:37:41'),
(149, 42, 'M', 'Blush pink', '#FFC2C5', 1, 'active', '2023-07-24 20:37:41'),
(150, 42, 'XXL', 'Blush pink', '#FFC2C5', 3, 'active', '2023-07-24 20:37:41'),
(151, 43, 'S', 'Sap Green', '#4D5200', 3, 'active', '2023-07-24 20:40:51'),
(152, 43, 'L', 'Sap Green', '#4D5200', 3, 'active', '2023-07-24 20:40:51'),
(153, 43, 'M', 'Sap Green', '#4D5200', 3, 'active', '2023-07-24 20:40:51'),
(154, 43, 'XL', 'Sap Green', '#4D5200', 3, 'active', '2023-07-24 20:40:51'),
(155, 43, 'XXL', 'Sap Green', '#4D5200', 3, 'active', '2023-07-24 20:40:51'),
(156, 44, 'S', 'Red', '#E35C5C', 3, 'active', '2023-07-24 20:48:00'),
(157, 44, 'L', 'Red', '#E35C5C', 3, 'active', '2023-07-24 20:48:00'),
(158, 44, 'M', 'Red', '#E35C5C', 3, 'active', '2023-07-24 20:48:00'),
(159, 44, 'XXL', 'Red', '#E35C5C', 3, 'active', '2023-07-24 20:48:00'),
(160, 44, 'XL', 'Red', '#E35C5C', 3, 'active', '2023-07-24 20:48:00'),
(161, 45, 'S', 'Black', '#000000', 3, 'active', '2023-07-24 20:51:27'),
(162, 45, 'L', 'Black', '#000000', 3, 'active', '2023-07-24 20:51:27'),
(163, 45, 'M', 'Black', '#000000', 2, 'active', '2023-07-24 20:51:27'),
(164, 45, 'XL', 'Black', '#000000', 3, 'active', '2023-07-24 20:51:27'),
(165, 45, 'XXL', 'Black', '#000000', 3, 'active', '2023-07-24 20:51:27'),
(166, 46, 'S', 'grey', '#B2BEB5', 3, 'active', '2023-07-24 20:53:31'),
(167, 46, 'L', 'grey', '#B2BEB5', 3, 'active', '2023-07-24 20:53:31'),
(168, 46, 'XL', 'grey', '#B2BEB5', 3, 'active', '2023-07-24 20:53:31'),
(169, 46, 'M', 'grey', '#B2BEB5', 3, 'active', '2023-07-24 20:53:31'),
(170, 46, 'XXL', 'grey', '#B2BEB5', 3, 'active', '2023-07-24 20:53:31'),
(171, 47, 'S', 'White', '#FAF9F9', 3, 'active', '2023-07-24 21:04:47'),
(172, 47, 'M', 'White', '#FAF9F9', 3, 'active', '2023-07-24 21:04:47'),
(173, 47, 'L', 'White', '#FAF9F9', 3, 'active', '2023-07-24 21:04:47'),
(174, 47, 'XXL', 'White', '#FAF9F9', 2, 'active', '2023-07-24 21:04:47'),
(175, 47, 'XL', 'White', '#FAF9F9', 3, 'active', '2023-07-24 21:04:47'),
(176, 48, 'S', 'Pink', '#FADDDB', 3, 'active', '2023-07-24 21:09:13'),
(177, 48, 'L', 'Pink', '#FADDDB', 3, 'active', '2023-07-24 21:09:13'),
(178, 48, 'M', 'Pink', '#FADDDB', 2, 'active', '2023-07-24 21:09:13'),
(179, 48, 'XXL', 'Pink', '#FADDDB', 2, 'active', '2023-07-24 21:09:13'),
(180, 48, 'XL', 'Pink', '#FADDDB', 3, 'active', '2023-07-24 21:09:13'),
(181, 49, 'S', 'Dark Blue', '#283348', 2, 'active', '2023-07-25 11:17:11'),
(182, 49, 'XL', 'Dark Blue', '#283348', 2, 'active', '2023-07-25 11:17:11'),
(183, 49, 'M', 'Dark Blue', '#283348', 2, 'active', '2023-07-25 11:17:11'),
(184, 49, 'XXL', 'Dark Blue', '#283348', 1, 'active', '2023-07-25 11:17:11'),
(185, 49, 'L', 'Dark Blue', '#283348', 2, 'active', '2023-07-25 11:17:11'),
(186, 50, 'S', 'Light Blue', '#68D7E6', 2, 'active', '2023-07-25 11:20:17'),
(187, 50, 'L', 'Light Blue', '#68D7E6', 2, 'active', '2023-07-25 11:20:17'),
(188, 50, 'XL', 'Light Blue', '#68D7E6', 2, 'active', '2023-07-25 11:20:17'),
(189, 50, 'XXL', 'Light Blue', '#68D7E6', 1, 'active', '2023-07-25 11:20:17'),
(190, 50, 'M', 'Light Blue', '#68D7E6', 2, 'active', '2023-07-25 11:20:17'),
(191, 51, 'S', 'Mustard', '#CC9433', 4, 'active', '2023-07-25 11:41:04'),
(192, 51, 'L', 'Mustard', '#CC9433', 4, 'active', '2023-07-25 11:41:04'),
(193, 51, 'XXL', 'Mustard', '#CC9433', 4, 'active', '2023-07-25 11:41:04'),
(194, 51, 'XL', 'Mustard', '#CC9433', 4, 'active', '2023-07-25 11:41:04'),
(195, 51, 'M', 'Mustard', '#CC9433', 4, 'active', '2023-07-25 11:41:04'),
(196, 52, 'S', 'Celeste Blue', '#B0D4D2', 4, 'active', '2023-07-25 11:47:16'),
(197, 52, 'L', 'Celeste Blue', '#B0D4D2', 4, 'active', '2023-07-25 11:47:16'),
(198, 52, 'M', 'Celeste Blue', '#B0D4D2', 4, 'active', '2023-07-25 11:47:16'),
(199, 52, 'XL', 'Celeste Blue', '#B0D4D2', 4, 'active', '2023-07-25 11:47:16'),
(200, 52, 'XXL', 'Celeste Blue', '#B0D4D2', 4, 'active', '2023-07-25 11:47:16'),
(201, 53, 'L', 'Lavender', '#BFA6B9', 4, 'active', '2023-07-25 11:52:18'),
(202, 53, 'M', 'Lavender', '#BFA6B9', 4, 'active', '2023-07-25 11:52:18'),
(203, 53, 'XL', 'Lavender', '#BFA6B9', 4, 'active', '2023-07-25 11:52:18'),
(204, 53, 'XXL', 'Lavender', '#BFA6B9', 4, 'active', '2023-07-25 11:52:18'),
(205, 53, 'S', 'Lavender', '#BFA6B9', 4, 'active', '2023-07-25 11:52:18'),
(206, 54, 'S', 'Mustard', '#E2AC40', 4, 'active', '2023-07-25 12:36:25'),
(207, 54, 'L', 'Mustard', '#E2AC40', 4, 'active', '2023-07-25 12:36:25'),
(208, 54, 'XL', 'Mustard', '#E2AC40', 4, 'active', '2023-07-25 12:36:25'),
(209, 54, 'M', 'Mustard', '#E2AC40', 4, 'active', '2023-07-25 12:36:25'),
(210, 54, 'XXL', 'Mustard', '#E2AC40', 4, 'active', '2023-07-25 12:36:25'),
(211, 55, 'S', 'Pastel Pink', '#DAC0BF', 4, 'active', '2023-07-25 12:44:19'),
(212, 55, 'L', 'Pastel Pink', '#DAC0BF', 4, 'active', '2023-07-25 12:44:19'),
(213, 55, 'M', 'Pastel Pink', '#DAC0BF', 4, 'active', '2023-07-25 12:44:19'),
(214, 55, 'XL', 'Pastel Pink', '#DAC0BF', 4, 'active', '2023-07-25 12:44:19'),
(215, 55, 'XXL', 'Pastel Pink', '#DAC0BF', 4, 'active', '2023-07-25 12:44:19'),
(216, 56, 'S', 'Floral Red', '#D91637', 4, 'active', '2023-07-25 12:56:01'),
(217, 56, 'L', 'Floral Red', '#D91637', 4, 'active', '2023-07-25 12:56:01'),
(218, 56, 'M', 'Floral Red', '#D91637', 4, 'active', '2023-07-25 12:56:01'),
(219, 56, 'XL', 'Floral Red', '#D91637', 4, 'active', '2023-07-25 12:56:01'),
(220, 56, 'XXL', 'Floral Red', '#D91637', 4, 'active', '2023-07-25 12:56:01'),
(221, 57, 'S', 'Floral Blue', '#164D76', 4, 'active', '2023-07-25 13:05:27'),
(222, 57, 'L', 'Floral Blue', '#164D76', 4, 'active', '2023-07-25 13:05:27'),
(223, 57, 'XL', 'Floral Blue', '#164D76', 4, 'active', '2023-07-25 13:05:27'),
(224, 57, 'XXL', 'Floral Blue', '#164D76', 4, 'active', '2023-07-25 13:05:27'),
(225, 57, 'M', 'Floral Blue', '#164D76', 4, 'active', '2023-07-25 13:05:27'),
(226, 58, 'S', 'Multicolor', '#E68A3D', 3, 'active', '2023-07-25 13:09:40'),
(227, 58, 'M', 'Multicolor', '#E68A3D', 4, 'active', '2023-07-25 13:09:40'),
(228, 58, 'XXL', 'Multicolor', '#E68A3D', 4, 'active', '2023-07-25 13:09:40'),
(229, 58, 'L', 'Multicolor', '#E68A3D', 2, 'active', '2023-07-25 13:09:40'),
(230, 58, 'XL', 'Multicolor', '#E68A3D', 4, 'active', '2023-07-25 13:09:40'),
(231, 59, 'S', 'Multicolor', '#322C14', 4, 'active', '2023-07-25 13:13:32'),
(232, 59, 'M', 'Multicolor', '#322C14', 4, 'active', '2023-07-25 13:13:32'),
(233, 59, 'L', 'Multicolor', '#322C14', 4, 'active', '2023-07-25 13:13:32'),
(234, 59, 'XL', 'Multicolor', '#322C14', 4, 'active', '2023-07-25 13:13:32'),
(235, 59, 'XXL', 'Multicolor', '#322C14', 4, 'active', '2023-07-25 13:13:32'),
(236, 60, 'S', 'Blue', '#2A2C5C', 4, 'active', '2023-07-25 13:17:29'),
(237, 60, 'M', 'Blue', '#2A2C5C', 4, 'active', '2023-07-25 13:17:29'),
(238, 60, 'XXL', 'Blue', '#2A2C5C', 4, 'active', '2023-07-25 13:17:29'),
(239, 60, 'L', 'Blue', '#2A2C5C', 4, 'active', '2023-07-25 13:17:29'),
(240, 60, 'XL', 'Blue', '#2A2C5C', 4, 'active', '2023-07-25 13:17:29'),
(241, 61, 'S', 'Pink', '#E03152', 2, 'active', '2023-07-25 13:21:02'),
(242, 61, 'L', 'Pink', '#E03152', 4, 'active', '2023-07-25 13:21:02'),
(243, 61, 'M', 'Pink', '#E03152', 4, 'active', '2023-07-25 13:21:02'),
(244, 61, 'XXL', 'Pink', '#E03152', 4, 'active', '2023-07-25 13:21:02'),
(245, 61, 'XL', 'Pink', '#E03152', 4, 'active', '2023-07-25 13:21:02'),
(246, 62, 'S', 'Pastel Green', '#B6C7C1', 4, 'active', '2023-07-25 13:34:49'),
(247, 62, 'M', 'Pastel Green', '#B6C7C1', 4, 'active', '2023-07-25 13:34:49'),
(248, 62, 'XL', 'Pastel Green', '#B6C7C1', 4, 'active', '2023-07-25 13:34:49'),
(249, 62, 'XXL', 'Pastel Green', '#B6C7C1', 4, 'active', '2023-07-25 13:34:49'),
(250, 62, 'L', 'Pastel Green', '#B6C7C1', 4, 'active', '2023-07-25 13:34:49'),
(251, 63, 'S', 'Sage Green', '#9CC8BB', 4, 'active', '2023-07-25 13:38:21'),
(252, 63, 'XXL', 'Sage Green', '#9CC8BB', 4, 'active', '2023-07-25 13:38:21'),
(253, 63, 'M', 'Sage Green', '#9CC8BB', 3, 'active', '2023-07-25 13:38:21'),
(254, 63, 'L', 'Sage Green', '#9CC8BB', 4, 'active', '2023-07-25 13:38:21'),
(255, 63, 'XL', 'Sage Green', '#9CC8BB', 4, 'active', '2023-07-25 13:38:21'),
(256, 64, 'S', 'Mustard', '#F5BF41', 4, 'active', '2023-07-25 13:41:21'),
(257, 64, 'M', 'Mustard', '#F5BF41', 4, 'active', '2023-07-25 13:41:21'),
(258, 64, 'L', 'Mustard', '#F5BF41', 4, 'active', '2023-07-25 13:41:21'),
(259, 64, 'XXL', 'Mustard', '#F5BF41', 4, 'active', '2023-07-25 13:41:21'),
(260, 64, 'XL', 'Mustard', '#F5BF41', 4, 'active', '2023-07-25 13:41:21'),
(261, 65, 'S', 'Black', '#151515', 4, 'active', '2023-07-25 13:47:19'),
(262, 65, 'L', 'Black', '#151515', 4, 'active', '2023-07-25 13:47:19'),
(263, 65, 'M', 'Black', '#151515', 4, 'active', '2023-07-25 13:47:19'),
(264, 65, 'XL', 'Black', '#151515', 4, 'active', '2023-07-25 13:47:19'),
(265, 65, 'XXL', 'Black', '#151515', 4, 'active', '2023-07-25 13:47:19'),
(266, 66, 'S', 'Midnight Blue ', '#16385B', 3, 'active', '2023-07-25 13:55:32'),
(267, 66, 'M', 'Midnight Blue ', '#16385B', 4, 'active', '2023-07-25 13:55:33'),
(268, 66, 'L', 'Midnight Blue ', '#16385B', 4, 'active', '2023-07-25 13:55:33'),
(269, 66, 'XXL', 'Midnight Blue ', '#16385B', 4, 'active', '2023-07-25 13:55:33'),
(270, 66, 'XL', 'Midnight Blue ', '#16385B', 4, 'active', '2023-07-25 13:55:33'),
(271, 67, 'S', 'Mustard', '#DEA00D', 4, 'active', '2023-07-25 14:00:53'),
(272, 67, 'L', 'Mustard', '#DEA00D', 4, 'active', '2023-07-25 14:00:53'),
(273, 67, 'XL', 'Mustard', '#DEA00D', 4, 'active', '2023-07-25 14:00:53'),
(274, 67, 'M', 'Mustard', '#DEA00D', 4, 'active', '2023-07-25 14:00:53'),
(275, 67, 'XXL', 'Mustard', '#DEA00D', 4, 'active', '2023-07-25 14:00:53'),
(276, 68, 'S', 'Peach ', '#EA9A8F', 4, 'active', '2023-07-25 14:04:57'),
(277, 68, 'M', 'Peach ', '#EA9A8F', 4, 'active', '2023-07-25 14:04:57'),
(278, 68, 'XL', 'Peach ', '#EA9A8F', 4, 'active', '2023-07-25 14:04:57'),
(279, 68, 'XXL', 'Peach ', '#EA9A8F', 4, 'active', '2023-07-25 14:04:57'),
(280, 68, 'L', 'Peach ', '#EA9A8F', 4, 'active', '2023-07-25 14:04:57'),
(282, 69, 'M', 'Pink', '#F94465', 4, 'active', '2023-07-26 10:21:54'),
(283, 69, 'XL', 'Pink', '#F94465', 10, 'active', '2023-07-26 10:21:54'),
(284, 69, 'L', 'Pink', '#F94465', 3, 'active', '2023-07-26 10:21:54'),
(288, 70, 'L', 'Green', '#D8D4B7', 3, 'active', '2023-07-26 10:25:53'),
(289, 70, 'XL', 'Green', '#D8D4B7', 13, 'active', '2023-07-26 10:25:53'),
(290, 70, 'XXL', 'Green', '#D8D4B7', 9, 'active', '2023-07-26 10:25:53'),
(292, 71, 'L', 'Burgundy', '#87282E', 6, 'active', '2023-07-26 10:29:33'),
(293, 71, 'M', 'Burgundy', '#87282E', 4, 'active', '2023-07-26 10:29:33'),
(294, 71, 'XL', 'Burgundy', '#87282E', 13, 'active', '2023-07-26 10:29:33'),
(295, 71, 'XXL', 'Burgundy', '#87282E', 4, 'active', '2023-07-26 10:29:33'),
(296, 73, 'L', 'Pistachio', '#E6E7E1', 6, 'active', '2023-07-26 10:39:55'),
(297, 73, 'XL', 'Pistachio', '#E6E7E1', 8, 'active', '2023-07-26 10:39:55'),
(298, 73, 'XXL', 'Pistachio', '#E6E7E1', 8, 'active', '2023-07-26 10:39:55'),
(300, 73, 'M', 'Pistachio', '#E6E7E1', 11, 'active', '2023-07-26 10:39:55'),
(302, 74, 'M', 'Black', '#000000', 4, 'active', '2023-07-26 10:42:30'),
(303, 74, 'L', 'Black', '#000000', 6, 'active', '2023-07-26 10:42:30'),
(304, 74, 'XXL', 'Black', '#000000', 8, 'active', '2023-07-26 10:42:30'),
(305, 74, 'XL', 'Black', '#000000', 8, 'active', '2023-07-26 10:42:30'),
(306, 75, 'S', 'Black', '#000000', 4, 'active', '2023-07-26 10:49:38'),
(307, 75, 'L', 'Black', '#000000', 4, 'active', '2023-07-26 10:49:38'),
(308, 75, 'M', 'Black', '#000000', 4, 'active', '2023-07-26 10:49:38'),
(309, 75, 'XL', 'Black', '#000000', 4, 'active', '2023-07-26 10:49:38'),
(310, 75, 'XXL', 'Black', '#000000', 4, 'active', '2023-07-26 10:49:38'),
(311, 78, 'S', 'Yellow', '#EDE069', 3, 'active', '2023-07-26 19:02:08'),
(312, 78, 'M', 'Yellow', '#EDE069', 3, 'active', '2023-07-26 19:02:08'),
(313, 78, 'XXL', 'Yellow', '#EDE069', 3, 'active', '2023-07-26 19:02:08'),
(314, 78, 'L', 'Yellow', '#EDE069', 3, 'active', '2023-07-26 19:02:08'),
(315, 78, 'XL', 'Yellow', '#EDE069', 3, 'active', '2023-07-26 19:02:08'),
(316, 79, 'S', 'Peach', '#E38D90', 3, 'active', '2023-07-26 19:04:36'),
(317, 79, 'M', 'Peach', '#E38D90', 3, 'active', '2023-07-26 19:04:36'),
(318, 79, 'L', 'Peach', '#E38D90', 3, 'active', '2023-07-26 19:04:36'),
(319, 79, 'XL', 'Peach', '#E38D90', 3, 'active', '2023-07-26 19:04:36'),
(320, 79, 'XXL', 'Peach', '#E38D90', 3, 'active', '2023-07-26 19:04:36'),
(321, 80, 'S', 'Meroon', '#800000', 3, 'active', '2023-07-26 19:08:56'),
(322, 80, 'M', 'Meroon', '#800000', 3, 'active', '2023-07-26 19:08:56'),
(323, 80, 'XL', 'Meroon', '#800000', 3, 'active', '2023-07-26 19:08:56'),
(324, 80, 'L', 'Meroon', '#800000', 3, 'active', '2023-07-26 19:08:56'),
(325, 80, 'XXL', 'Meroon', '#800000', 3, 'active', '2023-07-26 19:08:56'),
(326, 81, 'S', 'White', '#FFFFFF', 4, 'active', '2023-07-26 19:30:29'),
(327, 81, 'M', 'White', '#FFFFFF', 15, 'active', '2023-07-26 19:30:29'),
(328, 81, 'L', 'White', '#FFFFFF', 9, 'active', '2023-07-26 19:30:29'),
(330, 81, 'XL', 'White', '#FFFFFF', 8, 'active', '2023-07-26 19:30:29'),
(331, 82, 'S', 'Black', '#000000', 3, 'active', '2023-07-26 19:37:45'),
(332, 82, 'L', 'Black', '#000000', 10, 'active', '2023-07-26 19:37:45'),
(333, 82, 'XL', 'Black', '#000000', 4, 'active', '2023-07-26 19:37:45'),
(334, 82, 'M', 'Black', '#000000', 5, 'active', '2023-07-26 19:37:45'),
(335, 83, 'S', 'Fluorescent Green', '#ECED54', 7, 'active', '2023-07-26 19:52:05'),
(336, 83, 'L', 'Fluorescent Green', '#ECED54', 6, 'active', '2023-07-26 19:52:05'),
(337, 83, 'XL', 'Fluorescent Green', '#ECED54', 16, 'active', '2023-07-26 19:52:05'),
(338, 83, 'M', 'Fluorescent Green', '#ECED54', 21, 'active', '2023-07-26 19:52:05'),
(339, 84, 'S', 'Red', '#E13232', 2, 'active', '2023-07-26 19:53:54'),
(340, 84, 'L', 'Red', '#E13232', 3, 'active', '2023-07-26 19:53:54'),
(341, 84, 'XL', 'Red', '#E13232', 3, 'active', '2023-07-26 19:53:54'),
(342, 84, 'M', 'Red', '#E13232', 15, 'active', '2023-07-26 19:53:54'),
(343, 85, 'Free Size', 'Silver', '#DADADA', 55, 'active', '2023-07-26 20:14:02'),
(346, 90, 'L', 'Yellow', '#F5BC22', 5, 'active', '2023-07-27 07:48:14'),
(347, 90, 'XL', 'Yellow', '#F5BC22', 5, 'active', '2023-07-27 07:48:14'),
(350, 92, 'L', 'Pink', '#E6679E', 5, 'active', '2023-07-27 07:57:11'),
(351, 92, 'XL', 'Pink', '#E6679E', 5, 'active', '2023-07-27 07:57:11'),
(352, 94, 'L', 'Royal Blue', '#23357C', 5, 'active', '2023-07-27 08:01:17'),
(353, 94, 'XL', 'Royal Blue', '#23357C', 5, 'active', '2023-07-27 08:01:17'),
(354, 95, 'L', 'Mocassin', '#A3760F', 5, 'active', '2023-07-27 08:03:22'),
(355, 95, 'XL', 'Mocassin', '#A3760F', 5, 'active', '2023-07-27 08:03:22'),
(356, 96, 'L', 'Orange', '#F66A18', 5, 'active', '2023-07-27 08:05:28'),
(357, 96, 'XL', 'Orange', '#F66A18', 5, 'active', '2023-07-27 08:05:28'),
(358, 86, 's', 'White', '#FFFFFF', 4, 'active', '2023-07-27 08:15:19'),
(359, 87, 's', 'White', '#FFFEFE', 11, 'active', '2023-07-27 08:15:41'),
(360, 88, 's', 'blue', '#B657FA', 8, 'active', '2023-07-27 08:16:03'),
(361, 97, 'S', 'Cream', '#DBD2C9', 5, 'active', '2023-07-27 08:36:26'),
(362, 97, 'M', 'Cream', '#DBD2C9', 5, 'active', '2023-07-27 08:36:26'),
(363, 97, 'L', 'Cream', '#DBD2C9', 5, 'active', '2023-07-27 08:36:26'),
(364, 97, 'XXL', 'Cream', '#DBD2C9', 5, 'active', '2023-07-27 08:36:26'),
(365, 97, 'XL', 'Cream', '#DBD2C9', 5, 'active', '2023-07-27 08:36:26'),
(366, 98, 'S', 'Pink', '#A74250', 4, 'active', '2023-07-27 08:41:21'),
(367, 98, 'L', 'Pink', '#A74250', 4, 'active', '2023-07-27 08:41:21'),
(368, 98, 'XL', 'Pink', '#A74250', 4, 'active', '2023-07-27 08:41:21'),
(369, 98, 'M', 'Pink', '#A74250', 4, 'active', '2023-07-27 08:41:21'),
(370, 98, 'XXL', 'Pink', '#A74250', 4, 'active', '2023-07-27 08:41:21'),
(371, 99, '7', 'White', '#FFFFFF', 6, 'active', '2023-07-27 09:26:30'),
(372, 99, '9', 'White', '#FFFFFF', 21, 'active', '2023-07-27 09:26:30'),
(373, 99, '8', 'White', '#FFFFFF', 2, 'active', '2023-07-27 09:26:30'),
(374, 99, '10', 'White', '#FFFFFF', 32, 'active', '2023-07-27 09:26:30'),
(375, 100, '7', 'Navy Blue', '#44556F', 8, 'active', '2023-07-27 09:30:16'),
(376, 100, '8', 'Navy Blue', '#44556F', 13, 'active', '2023-07-27 09:30:16'),
(377, 100, '9', 'Navy Blue', '#44556F', 18, 'active', '2023-07-27 09:30:16'),
(378, 100, '10', 'Navy Blue', '#44556F', 21, 'active', '2023-07-27 09:30:16'),
(380, 72, 'M', 'White', '#FBFBFB', 11, 'active', '2023-07-27 09:35:56'),
(381, 72, 'L', 'White', '#FBFBFB', 10, 'active', '2023-07-27 09:35:57'),
(382, 72, 'XL', 'White', '#FBFBFB', 15, 'active', '2023-07-27 09:35:58'),
(383, 72, 'XXL', 'White', '#FBFBFB', 6, 'active', '2023-07-27 09:35:59'),
(384, 93, 'L', 'Red', '#FB2F2F', 3, 'active', '2023-07-27 09:42:40'),
(385, 93, 'XL', 'Red', '#FB2F2F', 1, 'active', '2023-07-27 09:42:50'),
(386, 103, 'Freesize', 'Stainless steel', '#FFFFFF', 50, 'active', '2023-07-27 12:21:15'),
(387, 102, 'Freesize', 'Stainless steel', '#FFFFFF', 50, 'active', '2023-07-27 12:21:53'),
(388, 103, '', '', '', 0, 'removed', '2023-07-27 12:22:15'),
(389, 101, 'Freesize', 'Stainless steel', '#FFFFFF', 48, 'active', '2023-07-27 12:22:42'),
(390, 11, 'S', 'Cobalt Blue', '#0852A7', 0, 'removed', '2023-07-28 03:16:47'),
(391, 11, 'M', 'Cobalt Blue', '#0852A7', 6, 'removed', '2023-07-28 03:16:50'),
(392, 11, 'L ', 'Cobalt Blue', '#0852A7', 0, 'removed', '2023-07-28 03:16:51'),
(393, 11, 'XL', 'Cobalt Blue', '#0852A7', 5, 'removed', '2023-07-28 03:16:52'),
(394, 11, 'XXL', 'Cobalt Blue', '#0852A7', 4, 'removed', '2023-07-28 03:16:55'),
(400, 11, 'L', 'Cobalt Blue', '#0852A7', 6, 'removed', '2023-07-28 03:18:28'),
(401, 11, 'XL', 'Cobalt Blue', '#0852A7', 5, 'removed', '2023-07-28 03:18:41'),
(402, 11, 'XXL', 'Cobalt Blue', '#0852A7', 3, 'removed', '2023-07-28 03:18:47'),
(403, 77, 'S', 'Black', '#000000', 3, 'active', '2023-07-28 17:18:56'),
(404, 77, 'M', 'Black', '#000000', 4, 'active', '2023-07-28 17:18:58'),
(405, 77, 'L', 'Black', '#000000', 4, 'active', '2023-07-28 17:18:58'),
(406, 77, 'XL', 'Black', '#000000', 4, 'active', '2023-07-28 17:18:59'),
(407, 77, 'XXL', 'Black', '#000000', 4, 'active', '2023-07-28 17:19:00'),
(408, 11, 'S', 'Cobalt Blue', '#0852A7', 5, 'removed', '2023-08-02 13:22:04'),
(410, 104, 'as', 'asd', '#CB8181', 3, 'active', '2023-08-11 14:22:56'),
(412, 12, 'L', 'Buttercream Yellow', '#F5EEB8', 3, 'active', '2023-08-24 11:06:47'),
(413, 12, 'XL', 'Buttercream Yellow', '#F5EEB8', 3, 'active', '2023-08-24 11:06:48'),
(414, 12, 'XXL', 'Buttercream Yellow', '#F5EEB8', 2, 'active', '2023-08-24 11:06:49'),
(415, 106, 'S', 'WHITE', '#FFFFFF', 3, 'active', '2023-08-24 12:12:21'),
(416, 106, 'L', 'WHITE', '#FFFFFF', 3, 'active', '2023-08-24 12:12:21'),
(417, 106, 'XL', 'WHITE', '#FFFFFF', 3, 'active', '2023-08-24 12:12:21'),
(418, 106, 'M', 'WHITE', '#FFFFFF', 3, 'active', '2023-08-24 12:12:21'),
(419, 106, 'XXL', 'WHITE', '#FFFFFF', 3, 'active', '2023-08-24 12:12:21'),
(420, 11, 'M', 'Cobalt Blue', '#0852A7', 0, 'removed', '2023-08-31 13:32:44'),
(421, 105, 'Asd', 'Red', '#BE3636', 43, 'removed', '2023-08-31 13:33:05'),
(422, 11, '', '', '', 0, 'removed', '2023-08-31 13:35:38'),
(424, 11, 'S', 'Cobalt Blue', '#0852A7', 5, 'active', '2023-08-31 13:48:14'),
(425, 11, 'M', 'Cobalt Blue', '#0852A7', 6, 'active', '2023-08-31 13:48:25'),
(426, 11, 'L', 'Cobalt Blue', '#0852A7', 6, 'active', '2023-08-31 13:48:32'),
(427, 11, 'XL', 'Cobalt Blue', '#0852A7', 5, 'active', '2023-08-31 13:48:42'),
(428, 11, 'XXL', 'Cobalt Blue', '#0852A7', 5, 'active', '2023-08-31 13:48:52'),
(429, 11, '', '', '', 0, 'removed', '2023-08-31 14:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `ProductOrder`
--

CREATE TABLE `ProductOrder` (
  `orderId` bigint NOT NULL,
  `orderUUID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` bigint NOT NULL,
  `addressId` bigint NOT NULL,
  `productTotal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingCharge` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `subTotal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `referralBonus` int NOT NULL DEFAULT '0',
  `refundAmount` int NOT NULL DEFAULT '0',
  `cashbackReduction` int NOT NULL DEFAULT '0',
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered' COMMENT 'ordered, dispatched, transit, delivered',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ProductOrder`
--

INSERT INTO `ProductOrder` (`orderId`, `orderUUID`, `userId`, `addressId`, `productTotal`, `shippingCharge`, `taxes`, `subTotal`, `referralBonus`, `refundAmount`, `cashbackReduction`, `status`, `createdAt`) VALUES
(1, '59f47cfc-592c-4ccc-a2b3-e725da5149b7', 1, 1, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 0, 0, 0, 'delivered', '2023-07-27 12:58:13'),
(2, 'aca4ee70-8b18-4ae2-b048-84f550318e21', 2, 2, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 0, 0, 0, 'delivered', '2023-07-27 13:07:27'),
(3, '18be0764-3620-44a9-81c1-7a4b57c778b2', 3, 3, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 0, 0, 0, 'delivered', '2023-07-27 13:44:42'),
(4, '4dce29d0-832b-48c3-ac20-954a8a6cfafb', 7, 6, '550', '50', '{\"sgst\":41.95,\"cgst\":41.95}', '600', 0, 0, 0, 'delivered', '2023-07-27 14:06:21'),
(5, '5ca99ce5-52ab-4139-90d2-584b177bf671', 8, 5, '470', '50', '{\"sgst\":11.19,\"cgst\":11.19}', '520', 0, 0, 0, 'delivered', '2023-07-27 14:15:46'),
(6, '64fa186e-56b2-494d-86db-53f838393837', 4, 4, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 0, 0, 0, 'delivered', '2023-07-27 14:35:44'),
(7, 'e77dad06-a3e7-4ae5-98dd-d4ee21ac4afa', 9, 11, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 0, 0, 0, 'delivered', '2023-07-27 14:36:48'),
(8, '30bb8f84-a5e6-431e-a040-df3a35ef71b7', 14, 12, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 0, 0, 0, 'delivered', '2023-07-27 14:46:41'),
(9, '2473345c-89c8-4409-91b6-7b8e12d3e891', 21, 13, '399', '50', '{\"sgst\":9.5,\"cgst\":9.5}', '449', 0, 0, 0, 'delivered', '2023-07-27 16:36:13'),
(10, 'ef419ce6-b97e-40d0-b5e2-cf8ce41de0a4', 24, 14, '299', '50', '{\"igst\":14.24}', '349', 0, 0, 0, 'delivered', '2023-07-27 16:46:34'),
(11, 'a93e4a63-d6e6-4997-b85d-09af1f49505b', 9, 16, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 0, 0, 0, 'delivered', '2023-07-27 18:06:28'),
(12, 'c743abc5-0c29-4985-87fa-5f3671fce90c', 13, 21, '2198', '100', '{\"sgst\":52.33,\"cgst\":52.33}', '2298', 0, 0, 0, 'delivered', '2023-07-28 08:45:54'),
(13, '60e44b29-c689-4b2e-a85d-6e07e391ab7b', 57, 29, '199', '50', '{\"sgst\":4.74,\"cgst\":4.74}', '249', 0, 0, 0, 'delivered', '2023-07-28 10:03:04'),
(14, 'f0a7c054-67fb-4b27-bd5b-5fe0cf21a76c', 76, 30, '1149', '50', '{\"sgst\":27.36,\"cgst\":27.36}', '1199', 0, 0, 0, 'delivered', '2023-07-28 15:34:25'),
(15, '5c8a69d3-d91b-4bf7-a2c5-942cf13282dc', 72, 31, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 0, 0, 0, 'delivered', '2023-07-28 17:23:14'),
(17, '8e5d2342-d732-4d8d-bd0c-b5c310f0822b', 100, 37, '850', '50', '{\"sgst\":20.24,\"cgst\":20.24}', '900', 0, 0, 0, 'delivered', '2023-07-30 12:00:54'),
(20, '708a1302-91c9-471c-a9f2-f975657de80d', 7, 6, '699', '50', '{\"sgst\":16.64,\"cgst\":16.64}', '749', 0, 0, 0, 'delivered', '2023-07-31 07:39:30'),
(27, '048b7474-dbb1-449d-afa5-a789fac8df40', 2, 45, '699', '50', '{\"sgst\":16.64,\"cgst\":16.64}', '749', 0, 0, 0, 'delivered', '2023-08-07 07:03:02'),
(48, 'a6f774fa-7dde-450d-88db-0286fdfa1225', 7, 6, '299', '50', '{\"sgst\":7.12,\"cgst\":7.12}', '349', 40, 39, 0, 'ordered', '2023-08-15 04:22:15'),
(64, 'f7bd19ca-125a-449f-aad8-8a53c6fdc1d4', 2, 2, '299', '0', '{\"sgst\":7.12,\"cgst\":7.12}', '-50', 40, 40, 349, 'delivered', '2023-08-22 18:43:24'),
(65, '37d9d6b5-f4d7-44b6-9943-4d0d1892a291', 119, 48, '597', '0', '{\"sgst\":14.21,\"cgst\":14.21}', '597', 60, 54, 0, 'delivered', '2023-08-26 02:51:23'),
(66, '6f6a23a4-ae60-495a-a6b7-c5c2402bdcb9', 17, 54, '650', '0', '{\"sgst\":15.48,\"cgst\":15.48}', '650', 80, 69, 0, 'delivered', '2023-08-28 08:09:32'),
(67, '22ff23b3-ddb0-43c5-9f7a-c120f53d7bdb', 78, 55, '1158', '50', '{\"sgst\":27.57,\"cgst\":27.57}', '1208', 160, 144, 0, 'delivered', '2023-08-28 16:55:04'),
(68, '4bb54cd7-3091-422e-9c5e-2d1a3fc90cea', 11, 9, '1297', '0', '{\"sgst\":30.88,\"cgst\":30.88}', '1297', 160, 128, 0, 'transit', '2023-09-02 11:46:24'),
(77, '318222d2-f646-4b83-b58b-2b8b79c1b0ce', 108, 61, '550', '50', '{\"sgst\":41.95,\"cgst\":41.95}', '600', 60, 57, 0, 'transit', '2023-09-07 03:54:21'),
(78, 'ffd9ba59-67a9-4ec4-bdf0-fa41c1da0eb0', 32, 44, '598', '50', '{\"sgst\":14.24,\"cgst\":14.24}', '648', 80, 67, 0, 'ordered', '2023-09-09 01:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `ProductOrderItem`
--

CREATE TABLE `ProductOrderItem` (
  `orderItemId` bigint NOT NULL,
  `orderId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `productId` bigint NOT NULL,
  `quantity` int NOT NULL,
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `purchasePrice` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered' COMMENT 'ordered, canceled, returnRequested, returnApproved, returnCanceled, returned',
  `priceType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'normal,offer',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(52, 48, 7, 41, 1, 'S', 'White', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'cancelled', 'normal', '2023-08-15 04:22:15'),
(53, 49, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-21 05:10:36'),
(54, 50, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-21 05:20:45'),
(55, 51, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-21 05:21:30'),
(56, 52, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-21 05:22:41'),
(57, 53, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-21 05:24:35'),
(58, 54, 129, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-21 05:25:01'),
(59, 59, 129, 12, 1, 'XL', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-21 05:35:43'),
(60, 60, 129, 12, 1, 'XL', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-21 05:48:06'),
(61, 61, 129, 12, 1, 'XL', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'ordered', 'normal', '2023-08-21 06:01:11'),
(62, 62, 129, 12, 1, 'XXL', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'cancelled', 'normal', '2023-08-21 06:05:05'),
(63, 62, 129, 20, 1, 'S', 'Olive Green', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'cancelled', 'normal', '2023-08-21 06:05:05'),
(64, 62, 129, 41, 1, 'S', 'White', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'cancelled', 'normal', '2023-08-21 06:05:05'),
(65, 63, 129, 12, 1, 'XXL', 'Buttercream Yellow', '{\"sgst\":20.24,\"cgst\":20.24}', '850', 'cancelled', 'normal', '2023-08-21 06:47:45'),
(66, 64, 2, 42, 1, 'M', 'Blush pink', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-08-22 18:43:24'),
(67, 65, 119, 38, 1, 'M', 'Black', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-08-26 02:51:23'),
(68, 65, 119, 39, 1, 'M', 'Pantone Red', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-08-26 02:51:23'),
(69, 65, 119, 39, 1, 'L', 'Pantone Red', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-08-26 02:51:23'),
(70, 66, 17, 48, 1, 'M', 'Pink', '{\"sgst\":15.48,\"cgst\":15.48}', '650', 'ordered', 'normal', '2023-08-28 08:09:32'),
(71, 67, 78, 58, 2, 'L', 'Multicolor', '{\"sgst\":14.24,\"cgst\":14.24}', '598', 'ordered', 'normal', '2023-08-28 16:55:04'),
(72, 67, 78, 93, 2, 'XL', 'Red', '{\"sgst\":13.33,\"cgst\":13.33}', '560', 'ordered', 'normal', '2023-08-28 16:55:04'),
(73, 68, 11, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":19.02,\"cgst\":19.02}', '799', 'ordered', 'normal', '2023-09-02 11:46:24'),
(74, 68, 11, 41, 1, 'L', 'White', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-09-02 11:46:24'),
(75, 68, 11, 39, 1, 'L', 'Pantone Red', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-09-02 11:46:24'),
(76, 69, 129, 20, 1, 'S', 'Olive Green', '{\"sgst\":19.02,\"cgst\":19.02}', '799', 'ordered', 'normal', '2023-09-04 17:59:24'),
(77, 69, 129, 12, 1, 'S', 'Buttercream Yellow', '{\"sgst\":19.02,\"cgst\":19.02}', '799', 'ordered', 'normal', '2023-09-04 17:59:24'),
(78, 70, 129, 12, 1, 'S', 'Buttercream Yellow', '{\"sgst\":19.02,\"cgst\":19.02}', '799', 'ordered', 'normal', '2023-09-04 18:00:11'),
(79, 71, 129, 12, 1, 'S', 'Buttercream Yellow', '{\"sgst\":19.02,\"cgst\":19.02}', '799', 'ordered', 'normal', '2023-09-04 18:03:01'),
(80, 72, 129, 12, 1, 'M', 'Buttercream Yellow', '{\"sgst\":19.02,\"cgst\":19.02}', '799', 'ordered', 'normal', '2023-09-04 18:04:44'),
(81, 73, 129, 12, 1, 'M', 'Buttercream Yellow', '{\"sgst\":19.02,\"cgst\":19.02}', '799', 'ordered', 'normal', '2023-09-04 18:06:04'),
(82, 74, 29, 38, 1, 'S', 'Black', '{\"sgst\":4.74,\"cgst\":4.74}', '199', 'ordered', 'normal', '2023-09-04 18:28:34'),
(83, 74, 29, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":19.02,\"cgst\":19.02}', '799', 'ordered', 'normal', '2023-09-04 18:28:34'),
(84, 75, 29, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":19.02,\"cgst\":19.02}', '799', 'ordered', 'normal', '2023-09-04 18:35:54'),
(85, 76, 29, 12, 1, 'L', 'Buttercream Yellow', '{\"sgst\":19.02,\"cgst\":19.02}', '799', 'ordered', 'normal', '2023-09-04 18:40:00'),
(86, 77, 108, 101, 1, 'Freesize', 'Stainless steel', '{\"sgst\":41.95,\"cgst\":41.95}', '550', 'ordered', 'normal', '2023-09-07 03:54:21'),
(87, 78, 32, 61, 1, 'S', 'Pink', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-09-09 01:47:30'),
(88, 78, 32, 58, 1, 'S', 'Multicolor', '{\"sgst\":7.12,\"cgst\":7.12}', '299', 'ordered', 'normal', '2023-09-09 01:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `ProductSubCategory`
--

CREATE TABLE `ProductSubCategory` (
  `subCategoryId` bigint NOT NULL,
  `categoryId` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ProductSubCategory`
--

INSERT INTO `ProductSubCategory` (`subCategoryId`, `categoryId`, `name`, `status`, `createdAt`) VALUES
(1, 1, 'Shirt', 'active', '2023-07-23 19:09:52'),
(2, 1, 'T-Shirt', 'active', '2023-07-23 19:12:12'),
(3, 1, 'Shoe', 'active', '2023-07-23 19:12:24'),
(4, 1, 'Joggers', 'active', '2023-07-23 19:12:52'),
(5, 1, 'Watch', 'active', '2023-07-23 19:13:14'),
(6, 1, 'Dhoti', 'active', '2023-07-23 19:13:33'),
(7, 1, 'Boxers', 'active', '2023-07-23 19:13:58'),
(8, 2, 'Kurti', 'active', '2023-07-23 19:15:38'),
(9, 2, 'T-Shirt', 'active', '2023-07-23 19:15:47'),
(10, 2, 'Tank Top', 'deleted', '2023-07-23 19:16:12'),
(11, 2, 'Jeans', 'active', '2023-07-23 19:16:24'),
(12, 2, 'Watch', 'active', '2023-07-23 19:16:36'),
(13, 2, 'Western Tops', 'active', '2023-07-23 19:18:52'),
(14, 1, 'Tank Top', 'active', '2023-07-23 19:19:16'),
(15, 2, 'Leggings', 'active', '2023-07-23 19:19:44'),
(16, 3, 'Peanut Butter', 'active', '2023-07-23 19:20:51'),
(17, 4, 'Others', 'active', '2023-07-23 19:21:06'),
(18, 5, 'Test1', 'active', '2023-07-24 03:24:43');

-- --------------------------------------------------------

--
-- Table structure for table `Referral`
--

CREATE TABLE `Referral` (
  `referralId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `parentId` bigint NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(121, 137, 2, '2023-08-17 15:47:24'),
(122, 139, 7, '2023-08-18 02:12:40'),
(123, 140, 2, '2023-08-18 03:43:21'),
(124, 141, 7, '2023-08-18 06:32:39'),
(125, 142, 2, '2023-08-18 07:23:43'),
(126, 143, 2, '2023-08-18 07:26:30'),
(127, 144, 7, '2023-08-18 13:03:57'),
(128, 146, 7, '2023-08-18 15:46:44'),
(129, 147, 7, '2023-08-18 17:15:03'),
(130, 148, 2, '2023-08-19 15:17:56'),
(131, 149, 2, '2023-08-19 15:49:10'),
(132, 150, 3, '2023-08-20 12:41:12'),
(133, 151, 2, '2023-08-20 14:33:04'),
(134, 152, 2, '2023-08-20 16:11:37'),
(135, 153, 2, '2023-08-20 17:58:11'),
(136, 154, 2, '2023-08-21 00:11:21'),
(137, 155, 2, '2023-08-21 01:57:52'),
(138, 156, 2, '2023-08-21 02:34:29'),
(139, 157, 2, '2023-08-21 08:26:52'),
(140, 158, 2, '2023-08-22 17:47:43'),
(141, 159, 2, '2023-08-23 00:36:02'),
(142, 160, 2, '2023-08-23 02:14:27'),
(143, 161, 2, '2023-08-23 03:58:59'),
(144, 164, 2, '2023-08-26 11:24:22'),
(145, 165, 129, '2023-08-26 20:23:44'),
(146, 166, 7, '2023-08-27 05:37:01'),
(147, 167, 7, '2023-08-27 05:38:08'),
(148, 169, 7, '2023-08-27 10:28:34'),
(149, 170, 7, '2023-08-27 11:50:21'),
(150, 171, 7, '2023-08-28 19:16:42'),
(151, 172, 3, '2023-08-30 13:35:52'),
(152, 174, 129, '2023-09-01 15:34:18'),
(153, 175, 129, '2023-09-01 15:45:19'),
(154, 176, 7, '2023-09-01 15:46:34'),
(155, 177, 7, '2023-09-01 15:48:45'),
(156, 178, 129, '2023-09-01 15:49:46'),
(157, 179, 2, '2023-09-02 13:16:02'),
(158, 180, 2, '2023-09-02 16:09:28'),
(159, 181, 2, '2023-09-02 16:19:21'),
(160, 182, 2, '2023-09-02 17:00:50'),
(161, 184, 3, '2023-09-06 07:37:13'),
(162, 186, 3, '2023-09-11 05:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `ReturnOrder`
--

CREATE TABLE `ReturnOrder` (
  `returnOrderId` bigint NOT NULL,
  `orderId` bigint NOT NULL,
  `orderItemId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `productId` bigint NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proofOne` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proofTwo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refundMethod` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'wallet,bank',
  `refundData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'requested' COMMENT 'requested, approved, canceled, returned',
  `adminComment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rewardDeducted` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ReturnOrder`
--

INSERT INTO `ReturnOrder` (`returnOrderId`, `orderId`, `orderItemId`, `userId`, `productId`, `reason`, `proofOne`, `proofTwo`, `refundMethod`, `refundData`, `status`, `adminComment`, `rewardDeducted`, `createdAt`) VALUES
(13, 12, 12, 13, 15, 'Faded Colour', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'bank', '{\"accountHolderName\":\"Gunal Rajarathinam \",\"bankName\":\"Paytm Payments Bank\",\"accountNumber\":\"919345710012\",\"ifscCode\":\"PYTM0123456\"}', 'approved', NULL, 'yes', '2023-08-02 14:23:00'),
(14, 12, 13, 13, 61, 'No Kurti was delivered ', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'bank', '{\"accountHolderName\":\"Gunal Rajarathinam \",\"bankName\":\"Paytm Payments Bank\",\"accountNumber\":\"919345710012\",\"ifscCode\":\"PYTM0123456\"}', 'approved', NULL, 'yes', '2023-08-02 14:23:00'),
(15, 12, 14, 13, 39, 'Colour is not good material too', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'bank', '{\"accountHolderName\":\"Gunal Rajarathinam \",\"bankName\":\"Paytm Payments Bank\",\"accountNumber\":\"919345710012\",\"ifscCode\":\"PYTM0123456\"}', 'approved', NULL, 'yes', '2023-08-02 14:23:00'),
(16, 12, 15, 13, 22, 'Shirt Quality is not so much good what I expected ', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0image.jpg', 'bank', '{\"accountHolderName\":\"Gunal Rajarathinam \",\"bankName\":\"Paytm Payments Bank\",\"accountNumber\":\"919345710012\",\"ifscCode\":\"PYTM0123456\"}', 'approved', NULL, 'yes', '2023-08-02 14:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `RewardWallet`
--

CREATE TABLE `RewardWallet` (
  `id` bigint NOT NULL,
  `orderUUID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` bigint NOT NULL,
  `buyerId` bigint NOT NULL,
  `amount` int NOT NULL,
  `moveTo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'personal,refund	',
  `moveDate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '	referral,refund	',
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active' COMMENT 'pending,credited',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `RewardWallet`
--

INSERT INTO `RewardWallet` (`id`, `orderUUID`, `userId`, `buyerId`, `amount`, `moveTo`, `moveDate`, `mode`, `status`, `createdAt`) VALUES
(1, 'aca4ee70-8b18-4ae2-b048-84f550318e21', 1, 2, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 13:07:27'),
(2, '18be0764-3620-44a9-81c1-7a4b57c778b2', 2, 3, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 13:44:42'),
(3, '4dce29d0-832b-48c3-ac20-954a8a6cfafb', 2, 7, 100, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 14:06:21'),
(4, '5ca99ce5-52ab-4139-90d2-584b177bf671', 3, 8, 75, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 14:15:46'),
(5, '64fa186e-56b2-494d-86db-53f838393837', 2, 4, 25, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 14:35:44'),
(6, 'e77dad06-a3e7-4ae5-98dd-d4ee21ac4afa', 3, 9, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 14:36:48'),
(7, '30bb8f84-a5e6-431e-a040-df3a35ef71b7', 4, 14, 25, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 14:46:41'),
(8, '2473345c-89c8-4409-91b6-7b8e12d3e891', 7, 21, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 16:36:13'),
(9, 'ef419ce6-b97e-40d0-b5e2-cf8ce41de0a4', 3, 24, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 16:46:34'),
(10, 'a93e4a63-d6e6-4997-b85d-09af1f49505b', 3, 9, 50, 'referral', '2023-08-11', 'referral', 'credited', '2023-07-27 18:06:28'),
(11, 'c743abc5-0c29-4985-87fa-5f3671fce90c', 7, 13, 0, 'referral', '2023-08-12', 'referral', 'credited', '2023-07-28 08:45:54'),
(12, '60e44b29-c689-4b2e-a85d-6e07e391ab7b', 7, 57, 25, 'referral', '2023-08-12', 'referral', 'credited', '2023-07-28 10:03:04'),
(13, 'f0a7c054-67fb-4b27-bd5b-5fe0cf21a76c', 7, 76, 200, 'referral', '2023-08-12', 'referral', 'credited', '2023-07-28 15:34:25'),
(14, '5c8a69d3-d91b-4bf7-a2c5-942cf13282dc', 7, 72, 50, 'referral', '2023-08-12', 'referral', 'credited', '2023-07-28 17:23:14'),
(18, '8e5d2342-d732-4d8d-bd0c-b5c310f0822b', 2, 100, 150, 'referral', '2023-08-14', 'referral', 'credited', '2023-07-30 12:00:54'),
(26, '708a1302-91c9-471c-a9f2-f975657de80d', 2, 7, 100, 'referral', '2023-08-15', 'referral', 'credited', '2023-07-31 07:39:31'),
(46, '048b7474-dbb1-449d-afa5-a789fac8df40', 1, 2, 100, 'referral', '2023-08-22', 'referral', 'credited', '2023-08-07 07:03:02'),
(52, 'a6f774fa-7dde-450d-88db-0286fdfa1225', 2, 7, 0, 'referral', '2023-08-30', 'referral', 'credited', '2023-08-15 04:22:15'),
(53, 'a6f774fa-7dde-450d-88db-0286fdfa1225', 7, 7, 0, 'cashback', '2023-08-30', 'cashback', 'credited', '2023-08-15 04:22:15'),
(77, 'f7bd19ca-125a-449f-aad8-8a53c6fdc1d4', 1, 2, 40, 'referral', '2023-09-06', 'referral', 'pending', '2023-08-22 18:43:24'),
(78, 'f7bd19ca-125a-449f-aad8-8a53c6fdc1d4', 2, 2, 40, 'cashback', '2023-09-06', 'cashback', 'pending', '2023-08-22 18:43:24'),
(79, '37d9d6b5-f4d7-44b6-9943-4d0d1892a291', 119, 119, 54, 'cashback', '2023-09-10', 'cashback', 'pending', '2023-08-26 02:51:23'),
(80, '6f6a23a4-ae60-495a-a6b7-c5c2402bdcb9', 7, 17, 80, 'referral', '2023-09-12', 'referral', 'pending', '2023-08-28 08:09:32'),
(81, '6f6a23a4-ae60-495a-a6b7-c5c2402bdcb9', 17, 17, 69, 'cashback', '2023-09-12', 'cashback', 'pending', '2023-08-28 08:09:32'),
(82, '22ff23b3-ddb0-43c5-9f7a-c120f53d7bdb', 7, 78, 160, 'referral', '2023-09-12', 'referral', 'pending', '2023-08-28 16:55:04'),
(83, '22ff23b3-ddb0-43c5-9f7a-c120f53d7bdb', 78, 78, 144, 'cashback', '2023-09-12', 'cashback', 'pending', '2023-08-28 16:55:04'),
(84, '4bb54cd7-3091-422e-9c5e-2d1a3fc90cea', 3, 11, 160, 'referral', '2023-09-17', 'referral', 'pending', '2023-09-02 11:46:24'),
(85, '4bb54cd7-3091-422e-9c5e-2d1a3fc90cea', 11, 11, 128, 'cashback', '2023-09-17', 'cashback', 'pending', '2023-09-02 11:46:24'),
(99, '318222d2-f646-4b83-b58b-2b8b79c1b0ce', 10, 108, 60, 'cashback', '2023-09-22', 'referral', 'pending', '2023-09-07 03:54:21'),
(100, '318222d2-f646-4b83-b58b-2b8b79c1b0ce', 108, 108, 57, 'cashback', '2023-09-22', 'cashback', 'pending', '2023-09-07 03:54:21'),
(101, 'ffd9ba59-67a9-4ec4-bdf0-fa41c1da0eb0', 2, 32, 80, 'cashback', '2023-09-24', 'referral', 'pending', '2023-09-09 01:47:30'),
(102, 'ffd9ba59-67a9-4ec4-bdf0-fa41c1da0eb0', 32, 32, 67, 'cashback', '2023-09-24', 'cashback', 'pending', '2023-09-09 01:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `Section`
--

CREATE TABLE `Section` (
  `sectionId` bigint NOT NULL,
  `pageId` bigint NOT NULL,
  `sectionKey` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `position` int NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published' COMMENT 'published,draft,archived,deleted',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Section`
--

INSERT INTO `Section` (`sectionId`, `pageId`, `sectionKey`, `data`, `position`, `status`, `createdAt`) VALUES
(1, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"http://localhost:5000/api/page/public/a7124420-163e-4f54-926e-3672b03a662aNIK_5827-01.jpg\",\"route\":\"trending\"},{\"name\":\"Women\",\"imgSrc\":\"http://localhost:5000/api/page/public/a7124420-163e-4f54-926e-3672b03a662aWhatsApp Image 2023-07-23 at 11.58.22.jpg\",\"route\":\"women\"},{\"name\":\"Men\",\"imgSrc\":\"http://localhost:5000/api/page/public/a7124420-163e-4f54-926e-3672b03a662aNIK_5637-01-01-01.jpeg.jpg\",\"route\":\"men\"}]', 0, 'deleted', '2023-07-23 06:31:41'),
(2, 1, 'tit-1', '{\"textOne\":\"Welcome to\",\"textTwo\":\"WeeMax\"}', 1, 'deleted', '2023-07-23 06:34:18'),
(3, 2, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-1 (1).jpg\",\"route\":\"asdad\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-3.jpg\",\"route\":\"adad\"}]', 0, 'published', '2023-07-23 06:39:06'),
(4, 2, 'sec-t-sel', '[{\"name\":\"ad\",\"imgSrc\":\"http://localhost:5000/api/page/public/a7124420-163e-4f54-926e-3672b03a662aL-1 (1).jpg\",\"route\":\"ads\"}]', 1, 'published', '2023-07-23 06:39:14'),
(5, 2, 'tit-1', '{\"textOne\":\"asd\",\"textTwo\":\"asd\"}', 2, 'published', '2023-07-23 06:39:20'),
(6, 2, 'sec-h-1', '{\"title\":\"ad\",\"textOne\":\"asd\",\"textTwo\":\"ads\",\"buttonText\":\"asd\",\"route\":\"asd\"}', 3, 'published', '2023-07-23 06:39:26'),
(7, 2, 'pro-slide-1', '{\"sectionTitle\":\"asd\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e07.jpg\",\"route\":\"asd\",\"price\":\"asd\",\"label\":\"asd\",\"caption\":\"asd\"}]}', 4, 'published', '2023-07-23 06:39:38'),
(8, 2, 'pro-slide-2', '{\"sectionTitle\":\"ad\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-1 (1).jpg\",\"route\":\"asd\"}]}', 5, 'published', '2023-07-23 06:39:48'),
(9, 2, 'card-1', '{\"sectionTitle\":\"asd\",\"items\":{\"one\":{\"name\":\"asd\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eJ-1 (1).jpg\",\"route\":\"asd\"},\"two\":{\"name\":\"asd\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-2 (1).jpg\",\"route\":\"asd\"}}}', 6, 'published', '2023-07-23 06:40:01'),
(10, 2, 'card-2', '{\"sectionTitle\":\"asd\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-3.jpg\",\"route\":\"asd\"}]}', 7, 'published', '2023-07-23 06:40:15'),
(11, 2, 'card-4', '{\"sectionTitle\":\"asd\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-1 (1).jpg\",\"route\":\"asd\"}]}', 8, 'published', '2023-07-23 06:40:25'),
(12, 2, 'lay-1', '{\"sectionTitle\":\"asd\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-1 (1).jpg\",\"route\":\"asd\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eL-1 (1).jpg\",\"route\":\"asd\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e02.jpg\",\"route\":\"asd\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eJ-1 (1).jpg\",\"route\":\"asd\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eJ-2 (1).jpg\",\"route\":\"asd\"}}}', 9, 'published', '2023-07-23 06:40:53'),
(14, 1, 'grid-lay', '{\"sectionTitle\":\"Suggested For You\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e9ceb18f7-image-b.png\",\"route\":\"best-selling\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e1000012571476-Blue-LIGHTBLUE-1000012571476_04-2100.jpg\",\"route\":\"hot-now\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5e2f67452f-image-a.png\",\"route\":\"new-arrivals\"}]}', 3, 'deleted', '2023-07-23 06:55:37'),
(15, 1, 'card-2', '{\"sectionTitle\":\"Fashion Zone!\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5eWhatsApp Image 2023-07-23 at 12.29.28.jpg\",\"route\":\"fashion-zone\"}]}', 2, 'deleted', '2023-07-23 07:00:11'),
(16, 1, 'card-2', '{\"sectionTitle\":\"Fashion Zone!\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e5f87bd8-6d41-46dd-ba2b-d03129fafa5ebanner.png\",\"route\":\"fashion-zone\"}]}', 4, 'deleted', '2023-07-23 07:03:20'),
(17, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedban3.jpg\",\"route\":\"\"}]', 0, 'deleted', '2023-07-23 14:21:41'),
(18, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedban3.jpg\",\"route\":\"\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedWhatsApp Image 2023-07-23 at 19.12.45.jpg\",\"route\":\"\"}]', 0, 'deleted', '2023-07-23 14:22:37'),
(19, 1, 'card-1', '{\"sectionTitle\":\"best deals\",\"items\":{\"one\":{\"name\":\"women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedwomes.jpg\",\"route\":\"women\"},\"two\":{\"name\":\"men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedmenss.jpg\",\"route\":\"men\"}}}', 1, 'deleted', '2023-07-23 14:31:22'),
(20, 1, 'pro-slide-1', '{\"sectionTitle\":\"most trending\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtreed.jpg\",\"route\":\"sleave less\",\"price\":\"100\",\"label\":\"300\",\"caption\":\"buy now\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtredsss.jpg\",\"route\":\"tracks\",\"price\":\"200\",\"label\":\"400\",\"caption\":\"buy now\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtre8.jpg\",\"route\":\"tshirt\",\"price\":\"200\",\"label\":\"299\",\"caption\":\"buy now\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtre4.jpg\",\"route\":\"tshirt\",\"price\":\"100\",\"label\":\"200\",\"caption\":\"buy now\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtred1.jpg\",\"route\":\"tshirt\",\"price\":\"500\",\"label\":\"600\",\"caption\":\"buy now\"}]}', 2, 'deleted', '2023-07-23 14:35:31'),
(21, 1, 'pro-slide-2', '{\"sectionTitle\":\"new coming\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedmens.jpg\",\"route\":\"tsirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedimg gag.jpg\",\"route\":\"watch\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedimg foot wa.jpg\",\"route\":\"shoes\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedJ-3 (1).jpg\",\"route\":\"watch\"}]}', 3, 'deleted', '2023-07-23 14:37:38'),
(22, 1, 'grid-lay', '{\"sectionTitle\":\"fashion world\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedban5.jpg\",\"route\":\"fashion\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedban2.jpg\",\"route\":\"fashion\"}]}', 4, 'deleted', '2023-07-23 14:39:54'),
(23, 1, 'lay-1', '{\"sectionTitle\":\"youth must have\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedimg.jpg\",\"route\":\"tshirt\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedtre4.jpg\",\"route\":\"tsgii\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedwatch.jpg\",\"route\":\"asa\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedimg foot wa.jpg\",\"route\":\"saas\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedwomenn.jpg\",\"route\":\"asa\"}}}', 5, 'deleted', '2023-07-23 14:42:17'),
(24, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedbrand.jpg\",\"route\":\"brand\"}]', 6, 'deleted', '2023-07-23 14:43:02'),
(25, 1, 'pro-slide-2', '{\"sectionTitle\":\"test\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedJ L-3 (1).jpg\",\"route\":\"asd\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedJ-1 (1).jpg\",\"route\":\"asd\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedL-2 (1).jpg\",\"route\":\"sdf\"}]}', 7, 'deleted', '2023-07-23 15:06:44'),
(26, 1, 'grid-lay', '{\"sectionTitle\":\"555\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedbrand.jpg\",\"route\":\"555\"}]}', 7, 'deleted', '2023-07-23 15:17:52'),
(27, 1, 'card-1', '{\"sectionTitle\":\"Fashion zone!\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bednathan.png\",\"route\":\"men\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/e71815dd-0ed6-4c18-a53d-995cdeab1bedsam.png\",\"route\":\"women\"}}}', 1, 'deleted', '2023-07-23 15:25:27'),
(28, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449ba.jpg\",\"route\":\"biz\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f1044923.jpg\",\"route\":\"biz\"}]', 1, 'deleted', '2023-07-23 16:42:40'),
(29, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449a.jpg\",\"route\":\"t-shirt\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449e.jpg\",\"route\":\"shirt\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449qw.jpg\",\"route\":\"kurti\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449wa.jpg\",\"route\":\"watch\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449shoe.jpg\",\"route\":\"shoe\"}}}', 6, 'deleted', '2023-07-23 16:48:39'),
(30, 1, 'tit-1', '{\"textOne\":\"Welcome to\",\"textTwo\":\"Weemax\"}', 2, 'deleted', '2023-07-23 16:49:52'),
(31, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Collection (1).png\",\"route\":\"product\"}]', 5, 'deleted', '2023-07-23 17:04:51'),
(32, 1, 'card-1', '{\"sectionTitle\":\"Fashion sported\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449PUBG-Character-Transparent-Image.png\",\"route\":\"men-product\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490cb035e5e38923a6515c34447267db80.jpg\",\"route\":\"women-product\"}}}', 4, 'deleted', '2023-07-23 17:15:30'),
(33, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104492f67452f-image-a.png\",\"route\":\"https://weemax.in/account/biz/\"}]', 5, 'deleted', '2023-07-23 17:54:33'),
(34, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 1, 'deleted', '2023-07-23 17:57:00'),
(35, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(36, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(37, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(38, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(39, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(40, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(41, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(42, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(43, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(44, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(45, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 5, 'deleted', '2023-07-23 17:57:00'),
(46, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 6, 'deleted', '2023-07-23 17:57:00'),
(47, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 6, 'deleted', '2023-07-23 17:57:00'),
(48, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f104490020_01692118_2945_f001.avif\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Bottom\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"bottom\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-21 at 13.28.02.jpg\",\"route\":\"kurti\"},{\"name\":\"crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-product\"},{\"name\":\"shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}]', 6, 'deleted', '2023-07-23 17:57:00'),
(49, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5588-01.jpg\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449l-sm-bindiya-02-akhilam-original-imaggd9fxf7qntqm.webp\",\"route\":\"kurti\"},{\"name\":\"Crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Printed Crew Neck Tees.png\",\"route\":\"women-product\"},{\"name\":\"Track pant\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"track-pant\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"name\":\"Shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"}]', 7, 'deleted', '2023-07-23 18:05:04'),
(50, 1, 'sec-t-sel', '[{\"name\":\"Trending\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5588-01.jpg\",\"route\":\"trending\"},{\"name\":\"Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449l-sm-bindiya-02-akhilam-original-imaggd9fxf7qntqm.webp\",\"route\":\"kurti\"},{\"name\":\"Crop top\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Printed Crew Neck Tees.png\",\"route\":\"women-product\"},{\"name\":\"Track pant\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tredsss.jpg\",\"route\":\"track-pant\"},{\"name\":\"watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"name\":\"Shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"}]', 8, 'deleted', '2023-07-23 18:05:04'),
(51, 1, 'pro-slide-2', '{\"sectionTitle\":\"BEST SELLERS\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5615-01__02.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5807-01.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5665-01.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449NIK_5560__01-02.jpeg.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tred1.jpg\",\"route\":\"tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tre5.jpg\",\"route\":\"women-product\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tre4.jpg\",\"route\":\"women-product\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449tre9.jpg\",\"route\":\"track-pant\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449Black Limitless Men\'s Jogger.png\",\"route\":\"track-pant\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/29f46c76-c448-4c8f-aa21-e54394f10449trd2.jpg\",\"route\":\"tshirt\"}]}', 3, 'deleted', '2023-07-23 18:21:07'),
(52, 1, 'product-list-2', '{\"sectionTitle\":\"h\",\"banners\":[{\"productId\":1},{\"productId\":2},{\"productId\":3}]}', 7, 'deleted', '2023-07-23 18:21:29'),
(53, 1, 'product-list-2', '{\"sectionTitle\":\"dd\",\"banners\":[{\"productId\":1},{\"productId\":3}]}', 7, 'deleted', '2023-07-23 19:48:04'),
(54, 5, 'product-list-2', '{\"sectionTitle\":\"shirt\",\"banners\":[{\"productId\":1},{\"productId\":3}]}', 0, 'deleted', '2023-07-23 19:48:47'),
(55, 5, 'product-list-2', '{\"sectionTitle\":\"shirt 03\",\"banners\":[{\"productId\":4}]}', 1, 'deleted', '2023-07-23 19:59:37'),
(56, 4, 'product-list-2', '{\"sectionTitle\":\"Tshirt\",\"banners\":[{\"productId\":3}]}', 0, 'deleted', '2023-07-23 20:32:46'),
(57, 1, 'pro-slide-1', '{\"sectionTitle\":\"New arrivals\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1tre6.jpg\",\"route\":\"tshirt\",\"price\":\"299\",\"label\":\"Buy now\",\"caption\":\"Onion colored printed super smoothy crew neck T-shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1Black Limitless Men\'s Jogger.png\",\"route\":\"pant\",\"price\":\"399\",\"label\":\"Buy now\",\"caption\":\"Black limitless men\'s cotton jogger\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1trd2.jpg\",\"route\":\"tshirt\",\"price\":\"199\",\"label\":\"Buy now\",\"caption\":\"Super smoothy tank top\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/9f5b9b8b-301e-4630-bcec-2dd1d03945c1Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women product\",\"price\":\"299\",\"label\":\"Buy now\",\"caption\":\"Yellow super smoothy women\'s T-shirt\"}]}', 7, 'deleted', '2023-07-23 21:33:10'),
(58, 4, 'product-list-2', '{\"sectionTitle\":\"shirt\",\"banners\":[{\"productId\":8},{\"productId\":9},{\"productId\":10}]}', 0, 'deleted', '2023-07-24 08:44:14'),
(59, 5, 'product-list-2', '{\"sectionTitle\":\"SHIRT\",\"banners\":[{\"productId\":11}]}', 0, 'deleted', '2023-07-24 09:29:14'),
(60, 5, 'product-list-2', '{\"sectionTitle\":\"Shirts\",\"banners\":[{\"productId\":11},{\"productId\":12},{\"productId\":13},{\"productId\":14},{\"productId\":15},{\"productId\":16},{\"productId\":17},{\"productId\":18},{\"productId\":19},{\"productId\":20},{\"productId\":21}]}', 0, 'deleted', '2023-07-24 13:54:24'),
(61, 5, 'product-list-2', '{\"sectionTitle\":\"Shirts\",\"banners\":[{\"productId\":11},{\"productId\":12},{\"productId\":13},{\"productId\":15},{\"productId\":16},{\"productId\":17},{\"productId\":18},{\"productId\":19},{\"productId\":20},{\"productId\":21},{\"productId\":22}]}', 0, 'deleted', '2023-07-24 14:02:02'),
(62, 5, 'product-list-2', '{\"sectionTitle\":\"Shirts\",\"banners\":[{\"productId\":11},{\"productId\":12},{\"productId\":13},{\"productId\":15},{\"productId\":16},{\"productId\":17},{\"productId\":18},{\"productId\":19},{\"productId\":20},{\"productId\":21},{\"productId\":22},{\"productId\":23},{\"productId\":24},{\"productId\":25},{\"productId\":26},{\"productId\":27},{\"productId\":28},{\"productId\":29},{\"productId\":30},{\"productId\":31},{\"productId\":32},{\"productId\":33},{\"productId\":34},{\"productId\":35},{\"productId\":36},{\"productId\":37}]}', 0, 'published', '2023-07-24 19:14:58'),
(63, 4, 'product-list-2', '{\"sectionTitle\":\"T-Shirts\",\"banners\":[{\"productId\":40},{\"productId\":41},{\"productId\":42},{\"productId\":43},{\"productId\":38},{\"productId\":39},{\"productId\":44},{\"productId\":45},{\"productId\":46}]}', 0, 'deleted', '2023-07-25 17:26:50'),
(64, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti\",\"banners\":[{\"productId\":47},{\"productId\":48},{\"productId\":52},{\"productId\":53},{\"productId\":54},{\"productId\":55},{\"productId\":56},{\"productId\":57},{\"productId\":58},{\"productId\":59},{\"productId\":60},{\"productId\":61},{\"productId\":62},{\"productId\":63},{\"productId\":64},{\"productId\":65},{\"productId\":66},{\"productId\":67},{\"productId\":68}]}', 0, 'deleted', '2023-07-25 17:29:12'),
(65, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2tre6.jpg\",\"route\":\"tshirt\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2NIK_5588-01.jpg\",\"route\":\"shirt\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2l-sm-bindiya-02-akhilam-original-imaggd9fxf7qntqm.webp\",\"route\":\"kurti\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"}}}', 7, 'deleted', '2023-07-25 18:13:48'),
(66, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2tre6.jpg\",\"route\":\"tshirt\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2NIK_5588-01.jpg\",\"route\":\"shirt\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9287 copy.jpg\",\"route\":\"kurti\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}}}', 8, 'deleted', '2023-07-25 18:18:52'),
(67, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2tre6.jpg\",\"route\":\"tshirt\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.11.38.jpg\",\"route\":\"shoe\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2NIK_5588-01.jpg\",\"route\":\"shirt\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2womenn.jpg\",\"route\":\"kurti\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"}}}', 7, 'deleted', '2023-07-25 18:20:51'),
(68, 3, 'grid-lay', '{\"sectionTitle\":\"sasas\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48KC030 (1).jpg\",\"route\":\"kurti\"}]}', 0, 'deleted', '2023-07-26 10:30:58'),
(69, 3, 'card-4', '{\"sectionTitle\":\"aa\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48KC030 (1).jpg\",\"route\":\"aaa\"}]}', 0, 'deleted', '2023-07-26 10:32:42'),
(70, 1, 'pro-slide-2', '{\"sectionTitle\":\"BEST SELLERS\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5742-01.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482.png\",\"route\":\"tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48sssss.jpg\",\"route\":\"shoe\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb483J1A9279 copy.jpg\",\"route\":\"kurti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tredsss.jpg\",\"route\":\"bottom\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48goods_64_457382 (1).avif\",\"route\":\"boxer\"}]}', 4, 'deleted', '2023-07-26 11:38:05'),
(71, 1, 'sec-t-sel', '[{\"name\":\"Shirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5795__01-01.jpeg.jpg\",\"route\":\"shirt\"},{\"name\":\"T-shirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tre6.jpg\",\"route\":\"tshirt\"},{\"name\":\"Jogger\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48Red Coloured Attitude jogger.png\",\"route\":\"bottom\"},{\"name\":\"Shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 21.50.51.jpg\",\"route\":\"shoe\"},{\"name\":\"Boxer\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48goods_64_457382 (1).avif\",\"route\":\"boxer\"},{\"name\":\"Watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"name\":\"Dhoti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG_20230726_173543.jpg\",\"route\":\"dhoti\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48KC016 (4).jpg\",\"route\":\"kurti\"},{\"name\":\"Women-Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tre4.jpg\",\"route\":\"women-tshirt\"},{\"name\":\"Leggings\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482_0082062d-5a63-433f-92b8-f5edd3550970.jpg\",\"route\":\"leggings\"},{\"name\":\"Women Jean\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481661493815087.jpg\",\"route\":\"women-jean\"}]', 1, 'published', '2023-07-26 12:16:32'),
(72, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4822-9-2022_maza2752.jpg\",\"route\":\"kurti\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48trd2.jpg\",\"route\":\"tshirt\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5817-01.jpg\",\"route\":\"shirt\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481661493815087.jpg\",\"route\":\"women-jean\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48J-3 (1).jpg\",\"route\":\"watch\"}}}', 7, 'published', '2023-07-26 12:34:29'),
(73, 1, 'card-1', '{\"sectionTitle\":\"Fashion Spotted!!\",\"items\":{\"one\":{\"name\":\"MEN\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48PUBG-Character-Transparent-Image.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"WOMEN\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb480cb035e5e38923a6515c34447267db80.jpg\",\"route\":\"women-prodect\"}}}', 5, 'deleted', '2023-07-26 12:42:34'),
(74, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48ee.jpg\",\"route\":\"kurti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48ba.jpg\",\"route\":\"biz\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4823.jpg\",\"route\":\"biz\"}]', 2, 'deleted', '2023-07-26 12:50:15'),
(75, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4820230726_182908_0000.png\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"shirt\"}]', 0, 'published', '2023-07-26 13:01:29'),
(76, 3, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4820230726_163216_0000.png\",\"route\":\"product\"}]', 0, 'published', '2023-07-26 13:05:17'),
(77, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"biz\"}]', 7, 'deleted', '2023-07-26 13:05:41'),
(78, 15, 'product-list-2', '{\"sectionTitle\":\"Joggers\",\"banners\":[{\"productId\":44},{\"productId\":45},{\"productId\":46}]}', 0, 'published', '2023-07-26 20:24:33'),
(79, 1, 'card-1', '{\"sectionTitle\":\"trending\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f49-497248_hinata-pictures-naruto-and-hinata-part-1.png\",\"route\":\"women-prodect\"}}}', 7, 'deleted', '2023-07-27 07:03:33'),
(80, 1, 'card-1', '{\"sectionTitle\":\"Street-style Quirky Cool\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f81-812427_19-jul-naruto-x-boruto-ninja-voltage-hinata.png\",\"route\":\"women-prodect\"}}}', 4, 'deleted', '2023-07-27 07:06:15'),
(81, 1, 'card-1', '{\"sectionTitle\":\"Street-style Quirky Cool\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fpngfind.com-boruto-png-812427.png\",\"route\":\"women-prodect\"}}}', 5, 'deleted', '2023-07-27 07:15:09'),
(82, 4, 'product-list-2', '{\"sectionTitle\":\"test\",\"banners\":[{\"productId\":86},{\"productId\":87},{\"productId\":88}]}', 1, 'deleted', '2023-07-27 07:18:32'),
(83, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fCollection (1).png\",\"route\":\"\"}]', 6, 'deleted', '2023-07-27 07:19:40'),
(84, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fCollection (1).png\",\"route\":\"\"}]', 6, 'published', '2023-07-27 07:20:39'),
(85, 4, 'product-list-2', '{\"sectionTitle\":\"T-Shirts\",\"banners\":[{\"productId\":40},{\"productId\":41},{\"productId\":42},{\"productId\":43},{\"productId\":39},{\"productId\":38}]}', 0, 'published', '2023-07-27 09:48:10'),
(86, 7, 'product-list-2', '{\"sectionTitle\":\"Shoes\",\"banners\":[{\"productId\":99},{\"productId\":100}]}', 0, 'published', '2023-07-27 09:50:52'),
(87, 14, 'product-list-2', '{\"sectionTitle\":\"Women\'s T-Shirt\",\"banners\":[{\"productId\":78},{\"productId\":79},{\"productId\":80},{\"productId\":81},{\"productId\":82},{\"productId\":83},{\"productId\":84}]}', 0, 'published', '2023-07-27 09:53:16'),
(88, 14, 'product-list-2', '{\"sectionTitle\":\"Women\'s T-Shirt\",\"banners\":[{\"productId\":78},{\"productId\":79},{\"productId\":80},{\"productId\":81},{\"productId\":82},{\"productId\":83},{\"productId\":84}]}', 0, 'deleted', '2023-07-27 09:53:16'),
(89, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti\",\"banners\":[{\"productId\":47},{\"productId\":48},{\"productId\":56},{\"productId\":57},{\"productId\":58},{\"productId\":59},{\"productId\":60},{\"productId\":61},{\"productId\":62},{\"productId\":63},{\"productId\":64},{\"productId\":65},{\"productId\":69},{\"productId\":70},{\"productId\":71},{\"productId\":72},{\"productId\":73},{\"productId\":74},{\"productId\":77}]}', 0, 'published', '2023-07-27 10:43:39'),
(90, 6, 'product-list-2', '{\"sectionTitle\":\"Kurta + Dupatta Set\",\"banners\":[{\"productId\":52},{\"productId\":53},{\"productId\":54},{\"productId\":55},{\"productId\":75}]}', 1, 'deleted', '2023-07-27 10:45:10');
INSERT INTO `Section` (`sectionId`, `pageId`, `sectionKey`, `data`, `position`, `status`, `createdAt`) VALUES
(91, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti + Pant + Dupatta Set\",\"banners\":[{\"productId\":66},{\"productId\":67},{\"productId\":68}]}', 2, 'deleted', '2023-07-27 10:46:48'),
(92, 8, 'product-list-2', '{\"sectionTitle\":\"Watch\",\"banners\":[{\"productId\":101},{\"productId\":102},{\"productId\":103}]}', 0, 'deleted', '2023-07-27 12:23:00'),
(93, 8, 'product-list-2', '{\"sectionTitle\":\"Watches\",\"banners\":[{\"productId\":101},{\"productId\":102},{\"productId\":103}]}', 1, 'published', '2023-07-27 12:23:24'),
(94, 10, 'product-list-2', '{\"sectionTitle\":\"Men\'s Shirt\",\"banners\":[{\"productId\":11},{\"productId\":12},{\"productId\":13},{\"productId\":15},{\"productId\":16},{\"productId\":17},{\"productId\":18},{\"productId\":19},{\"productId\":20},{\"productId\":21},{\"productId\":22},{\"productId\":23},{\"productId\":24},{\"productId\":25},{\"productId\":26},{\"productId\":27},{\"productId\":28},{\"productId\":29},{\"productId\":30},{\"productId\":31},{\"productId\":32},{\"productId\":33},{\"productId\":34},{\"productId\":35},{\"productId\":36},{\"productId\":37}]}', 0, 'published', '2023-07-27 12:59:07'),
(95, 10, 'product-list-2', '{\"sectionTitle\":\"Men\'s T-Shirt\",\"banners\":[{\"productId\":40},{\"productId\":41},{\"productId\":42},{\"productId\":43}]}', 1, 'published', '2023-07-27 12:59:49'),
(96, 10, 'product-list-2', '{\"sectionTitle\":\"Men\'s Tank Tops\",\"banners\":[{\"productId\":38},{\"productId\":39}]}', 2, 'published', '2023-07-27 13:00:30'),
(97, 10, 'product-list-2', '{\"sectionTitle\":\"Men\'s Joggers\",\"banners\":[{\"productId\":45},{\"productId\":44},{\"productId\":46}]}', 3, 'published', '2023-07-27 13:01:10'),
(98, 10, 'product-list-2', '{\"sectionTitle\":\"Men\'s Watch\",\"banners\":[{\"productId\":101}]}', 4, 'published', '2023-07-27 13:02:03'),
(99, 10, 'product-list-2', '{\"sectionTitle\":\"Dhoti\",\"banners\":[{\"productId\":85}]}', 5, 'published', '2023-07-27 13:02:18'),
(100, 11, 'product-list-2', '{\"sectionTitle\":\"Kurti Tops\",\"banners\":[{\"productId\":47},{\"productId\":48},{\"productId\":56},{\"productId\":57},{\"productId\":58},{\"productId\":59},{\"productId\":60},{\"productId\":61},{\"productId\":62},{\"productId\":63},{\"productId\":64},{\"productId\":65},{\"productId\":69},{\"productId\":70},{\"productId\":71},{\"productId\":72},{\"productId\":73},{\"productId\":74},{\"productId\":77}]}', 0, 'published', '2023-07-27 14:55:29'),
(101, 11, 'product-list-2', '{\"sectionTitle\":\"Kurta + Dupatta Set\",\"banners\":[{\"productId\":52},{\"productId\":53},{\"productId\":54},{\"productId\":55},{\"productId\":75}]}', 1, 'published', '2023-07-27 14:57:41'),
(102, 11, 'product-list-2', '{\"sectionTitle\":\"Kurti + Pant + Dupatta Set\",\"banners\":[{\"productId\":66},{\"productId\":67},{\"productId\":68}]}', 2, 'published', '2023-07-27 14:58:42'),
(103, 11, 'product-list-2', '{\"sectionTitle\":\"Women\'s Jeans\",\"banners\":[{\"productId\":49},{\"productId\":50}]}', 3, 'published', '2023-07-27 14:59:22'),
(104, 11, 'product-list-2', '{\"sectionTitle\":\"Leggings\",\"banners\":[{\"productId\":89},{\"productId\":90},{\"productId\":91},{\"productId\":92},{\"productId\":93},{\"productId\":94},{\"productId\":95},{\"productId\":96}]}', 4, 'published', '2023-07-27 15:00:48'),
(105, 11, 'product-list-2', '{\"sectionTitle\":\"Women\'s T-Shirts\",\"banners\":[{\"productId\":78},{\"productId\":79},{\"productId\":80},{\"productId\":81},{\"productId\":82},{\"productId\":83},{\"productId\":84}]}', 5, 'published', '2023-07-27 15:02:49'),
(106, 11, 'product-list-2', '{\"sectionTitle\":\"Women\'s Watch\",\"banners\":[{\"productId\":102}]}', 6, 'published', '2023-07-27 15:04:15'),
(107, 17, 'product-list-2', '{\"sectionTitle\":\"Dhoti\",\"banners\":[{\"productId\":85}]}', 0, 'published', '2023-07-28 03:13:00'),
(108, 18, 'product-list-2', '{\"sectionTitle\":\"Women\'s Jeans\",\"banners\":[{\"productId\":49},{\"productId\":50}]}', 0, 'published', '2023-07-28 03:13:43'),
(109, 1, 'grid-lay', '{\"sectionTitle\":\"\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/be818235-568d-43ae-8c44-c5b3e889cedcre.jpg\",\"route\":\"men-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/be818235-568d-43ae-8c44-c5b3e889cedcban2.jpg\",\"route\":\"women-prodect\"}]}', 3, 'deleted', '2023-07-30 17:04:03'),
(110, 1, 'grid-lay', '{\"sectionTitle\":\"category\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/91383c40-68ea-4e6c-bfbf-2e305ffd7168Adobe_Express_20230731_0027250_1.png\",\"route\":\"men-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/91383c40-68ea-4e6c-bfbf-2e305ffd7168Adobe_Express_20230731_0033190_1.png\",\"route\":\"womem-prodect\"}]}', 4, 'deleted', '2023-07-30 19:06:06'),
(111, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti + Dupatta Set\",\"banners\":[{\"productId\":52},{\"productId\":53},{\"productId\":54},{\"productId\":55},{\"productId\":75},{\"productId\":98}]}', 3, 'published', '2023-07-31 03:10:45'),
(112, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti+Pant+Dupatta Set\",\"banners\":[{\"productId\":66},{\"productId\":67},{\"productId\":68},{\"productId\":97}]}', 4, 'published', '2023-07-31 03:12:00'),
(113, 1, 'grid-lay', '{\"sectionTitle\":\"asdasd\",\"columns\":\"3\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0Frame 5.png\",\"route\":\"aasd\"}]}', 9, 'deleted', '2023-08-03 07:11:28'),
(114, 1, 'grid-lay', '{\"sectionTitle\":\"\",\"columns\":\"3\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0ic7defqune831dh9orwm.webp\",\"route\":\"asd\"}]}', 10, 'deleted', '2023-08-03 07:14:33'),
(115, 1, 'grid-lay', '{\"sectionTitle\":\"\",\"columns\":\"2\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c098e5aa77-517a-4b8e-a094-497c9ba6fb4844.jpg\",\"route\":\"womrn-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c098e5aa77-517a-4b8e-a094-497c9ba6fb4833.jpg\",\"route\":\"women prodect\"}]}', 9, 'deleted', '2023-08-03 07:58:11'),
(116, 1, 'card-4', '{\"sectionTitle\":\"3303\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0Adobe_Express_20230731_0027250_1.png\",\"route\":\"33\"}]}', 9, 'deleted', '2023-08-03 08:27:34'),
(117, 1, 'product-list-2', '{\"sectionTitle\":\"New Drop\",\"banners\":[{\"productId\":41},{\"productId\":12},{\"productId\":20},{\"productId\":48},{\"productId\":63},{\"productId\":97}]}', 4, 'published', '2023-08-03 08:34:59'),
(118, 1, 'grid-lay', '{\"sectionTitle\":\"\",\"columns\":\"2\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c098e5aa77-517a-4b8e-a094-497c9ba6fb4822.jpg\",\"route\":\"MENS \"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0angalo watch.png\",\"route\":\"WOMENS\"}]}', 7, 'deleted', '2023-08-03 08:50:34'),
(119, 1, 'grid-lay', '{\"sectionTitle\":\"Category\",\"columns\":\"3\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/b84f9167-c0e6-4eb4-a4af-6cbc95bcb1c41.png\",\"route\":\"men-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/b84f9167-c0e6-4eb4-a4af-6cbc95bcb1c42.png\",\"route\":\"women-prodect\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/b84f9167-c0e6-4eb4-a4af-6cbc95bcb1c43.png\",\"route\":\"watch\"}]}', 2, 'deleted', '2023-08-05 05:17:27'),
(120, 1, 'grid-lay', '{\"sectionTitle\":\"\",\"columns\":\"1\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee9220230816_183544_0000.png\",\"route\":\"\"}]}', 8, 'published', '2023-08-16 14:22:52'),
(121, 1, 'card-5', '{\"sectionTitle\":\"Test\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92ic7defqune831dh9orwm.webp\",\"route\":\"demo\",\"text\":\"Hello\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92WMD5M52LJFBEBIHNEEABHVB6LA.webp\",\"route\":\"asdad\",\"text\":\"ada\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92unnamed.webp\",\"route\":\"asd\",\"text\":\"asdasd\"}]}', 0, 'deleted', '2023-08-16 15:35:43'),
(122, 1, 'card-5', '{\"sectionTitle\":\"\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122651.png\",\"route\":\"women-prodect\",\"text\":\"\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122732.png\",\"route\":\"men-prodect\",\"text\":\"\"}]}', 8, 'deleted', '2023-08-17 05:48:45'),
(123, 1, 'card-5', '{\"sectionTitle\":\"\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122651.png\",\"route\":\"men-prodect\",\"text\":\"women\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122732.png\",\"route\":\"women-prodect\",\"text\":\"men\"}]}', 8, 'deleted', '2023-08-17 05:51:20'),
(124, 1, 'card-5', '{\"sectionTitle\":\"Category\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122732.png\",\"route\":\"men-prodect\",\"text\":\"MEN\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122651.png\",\"route\":\"women-prodect\",\"text\":\"WOMEN\"}]}', 8, 'deleted', '2023-08-17 05:54:15'),
(125, 1, 'card-5', '{\"sectionTitle\":\"Category\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122732.png\",\"route\":\"men-prodect\",\"text\":\"MEN\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230816_122651.png\",\"route\":\"women-prodect\",\"text\":\"WOMEN\"}]}', 3, 'published', '2023-08-17 05:54:16'),
(126, 1, 'card-5', '{\"sectionTitle\":\"All Category\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92NIK_5588-01.jpg\",\"route\":\"shirt\",\"text\":\"Shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92tred1.jpg\",\"route\":\"tshirt\",\"text\":\"T-shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92Black Limitless Men\'s Jogger.png\",\"route\":\"bottom\",\"text\":\"Jogger\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-2.webp.webp\",\"route\":\"kurti\",\"text\":\"Kurti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-tshirt\",\"text\":\"Women-Tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee921661493815087.jpg\",\"route\":\"women-jean\",\"text\":\"Women-jean\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee9298e5aa77-517a-4b8e-a094-497c9ba6fb482_0082062d-5a63-433f-92b8-f5edd3550970.jpg\",\"route\":\"leggings\",\"text\":\"Leggings\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92IMG_20230726_173543.jpg\",\"route\":\"dhoti\",\"text\":\"Dhoti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92goods_64_457382 (1).avif\",\"route\":\"boxer\",\"text\":\"Boxer\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92J-3 (1).jpg\",\"route\":\"watch\",\"text\":\"Watch\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/666e943e-9084-4c13-b896-5475a5a0ee92sssss.jpg\",\"route\":\"shoe\",\"text\":\"Shoe\"}]}', 5, 'published', '2023-08-17 06:26:05'),
(127, 20, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/90fc8507-fd4c-489f-b2e8-6527284a59a2Snake_River_(5mb).jpg\",\"route\":\"dfgdfg\"}]', 0, 'deleted', '2023-08-31 16:43:36'),
(128, 20, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/d58e4eaf-7ed3-43e2-864d-df7f6d31ab58Snake_River_(5mb).jpg\",\"route\":\"asdad\"}]', 1, 'deleted', '2023-08-31 17:09:00'),
(129, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/8493278a-3c84-45cc-8178-540785a21204shop now 1 (1) (3).png\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/69ca4d62-1910-44e0-8b8f-67cbec640e2a2 (1).png\",\"route\":\"kurti\"}]', 2, 'published', '2023-08-31 17:09:03'),
(130, 20, 'sec-t-sel', '[{\"name\":\"www\",\"imgSrc\":\"https://api.weemax.in/api/page/public/2b6aaad4-898d-4b2d-b7e3-dae13a97ae4998e5aa77-517a-4b8e-a094-497c9ba6fb4844.jpg\",\"route\":\"www\"},{\"name\":\"www\",\"imgSrc\":\"https://api.weemax.in/api/page/public/09b68a1b-7108-43da-a336-dafc097dd4b498e5aa77-517a-4b8e-a094-497c9ba6fb4833.jpg\",\"route\":\"www\"},{\"name\":\"www\",\"imgSrc\":\"https://api.weemax.in/api/page/public/58b9987a-41a0-4a94-a570-3482e58cee6398e5aa77-517a-4b8e-a094-497c9ba6fb4822.jpg\",\"route\":\"www\"}]', 1, 'published', '2023-08-31 17:17:09'),
(131, 20, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/d9933f8b-3a34-4da3-9224-d621f128860bshop now 1 (1) (3).png\",\"route\":\"\"}]', 0, 'published', '2023-08-31 17:17:24'),
(132, 20, 'tit-1', '{\"textOne\":\"www\",\"textTwo\":\"www\"}', 2, 'published', '2023-08-31 17:17:34'),
(133, 20, 'tit-1', '{\"textOne\":\"www\",\"textTwo\":\"www\"}', 3, 'deleted', '2023-08-31 17:17:35'),
(134, 20, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/fd7e3c16-e529-445e-b3de-17b9dde4dd00Snake_River_(5mb).jpg\",\"route\":\"dsf\"}]', 4, 'deleted', '2023-08-31 17:17:35'),
(135, 20, 'sec-h-1', '{\"title\":\"www\",\"textOne\":\"www\",\"textTwo\":\"wwww\",\"buttonText\":\"www\",\"route\":\"www\"}', 5, 'published', '2023-08-31 17:17:48'),
(136, 20, 'sec-h-1', '{\"title\":\"www\",\"textOne\":\"www\",\"textTwo\":\"wwww\",\"buttonText\":\"www\",\"route\":\"www\"}', 6, 'deleted', '2023-08-31 17:17:48'),
(137, 20, 'pro-slide-1', '{\"sectionTitle\":\"ssss\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/1873a203-b8cf-4c34-99d5-cb61704c5c93ww.jpeg\",\"route\":\"www\",\"price\":\"111\",\"label\":\"222\",\"caption\":\"saleee\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/8dce7bf4-7e8a-41e9-97bc-2160c8e60e9798e5aa77-517a-4b8e-a094-497c9ba6fb482_0082062d-5a63-433f-92b8-f5edd3550970.jpg\",\"route\":\"www\",\"price\":\"111\",\"label\":\"121\",\"caption\":\"www\"}]}', 6, 'published', '2023-08-31 17:19:52'),
(138, 20, 'pro-slide-2', '{\"sectionTitle\":\"sasas\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/0fb5c204-1832-41d3-a966-102b06fba168ww.jpeg\",\"route\":\"shirt\"}]}', 7, 'published', '2023-08-31 17:20:14'),
(139, 20, 'card-1', '{\"sectionTitle\":\"sasasas\",\"items\":{\"one\":{\"name\":\"shirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/303523f8-5b76-4992-a50c-ea1bdbdc0139IMG_20230816_122732.png\",\"route\":\"shirt\"},\"two\":{\"name\":\"sas\",\"imgSrc\":\"https://api.weemax.in/api/page/public/59f2431c-1250-4bfa-823a-bda75610c3b4ww.jpeg\",\"route\":\"sas\"}}}', 8, 'published', '2023-08-31 17:20:46'),
(140, 20, 'card-2', '{\"sectionTitle\":\"saaaa\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/d662ac87-ce85-45dd-a995-540163ec75c8b37b8b8f39dca274afdfade54efe02ca.jpg\",\"route\":\"xsax\"}]}', 9, 'published', '2023-08-31 17:21:43'),
(141, 20, 'card-1', '{\"sectionTitle\":\"aaaaa\",\"items\":{\"one\":{\"name\":\"aaa\",\"imgSrc\":\"https://api.weemax.in/api/page/public/6f04d486-dff6-4554-8652-9f5855707293682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-2.webp.webp\",\"route\":\"aaa\"},\"two\":{\"name\":\"aaa\",\"imgSrc\":\"https://api.weemax.in/api/page/public/a9cb3451-afa3-4215-a916-9bf878bfbe8c682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-1.webp.webp\",\"route\":\"aaa\"}}}', 10, 'deleted', '2023-08-31 17:22:10'),
(142, 20, 'card-4', '{\"sectionTitle\":\"ssss\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/085b3ee4-1e98-4943-8a5a-4cfa8f839fc7shop now 1 (1) (3).png\",\"route\":\"\"}]}', 11, 'published', '2023-08-31 17:22:37'),
(143, 20, 'card-5', '{\"sectionTitle\":\"sasa\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/5eae657d-2980-4b15-907a-205fd800a8fa98e5aa77-517a-4b8e-a094-497c9ba6fb482_0082062d-5a63-433f-92b8-f5edd3550970.jpg\",\"route\":\"aaa\",\"text\":\"aaa\"}]}', 12, 'published', '2023-08-31 17:23:03'),
(144, 20, 'lay-1', '{\"sectionTitle\":\"asasas\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/cafe6569-47fc-4f5c-b4ba-48297f32a64f1661493815087.jpg\",\"route\":\"sas\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/d95d7c9a-2633-4472-ba28-4316a8e7c44cKC030 (1).jpg\",\"route\":\"asas\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/fa05b7ce-e63a-4cbf-93d3-60aa93fa50913J1A9279 copy.jpg\",\"route\":\"asas\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/45a9ef6c-4486-42b0-b72b-5c8a5c2ed4edww.jpeg\",\"route\":\"asas\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/6d79224b-d975-4503-b76a-72f350c76a5cWhatsApp Image 2023-08-19 at 12.39.14.jpg\",\"route\":\"asa\"}}}', 13, 'published', '2023-08-31 17:24:10'),
(145, 20, 'grid-lay', '{\"sectionTitle\":\"asasa\",\"columns\":\"3\",\"banners\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/7776dc8c-2925-40a1-b887-a60816220e81WhatsApp Image 2023-08-30 at 23.27.16.jpg\",\"route\":\"saa\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/15792d52-7a20-4bbd-b0e7-a0a7554a0c6f98e5aa77-517a-4b8e-a094-497c9ba6fb482_0082062d-5a63-433f-92b8-f5edd3550970.jpg\",\"route\":\"sas\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/1c0bcf15-0ae2-4ab3-a55c-e248b734be38682ceb34-63be-492c-ac06-d4c903a30ba2products-KUR059-2.webp.webp\",\"route\":\"asas\"}]}', 14, 'published', '2023-08-31 17:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `SizeChart`
--

CREATE TABLE `SizeChart` (
  `sizeChartId` bigint NOT NULL,
  `sizeChartCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active' COMMENT 'active, deleted',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SizeChart`
--

INSERT INTO `SizeChart` (`sizeChartId`, `sizeChartCode`, `img`, `status`, `createdAt`) VALUES
(1, 'asdsadasdasd', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0WMD5M52LJFBEBIHNEEABHVB6LA.webp', 'deleted', '2023-08-03 12:05:40'),
(2, 'Te', 'https://api.weemax.in/api/page/public/375b1458-a1b3-486d-aa1c-04ec4f7966c0ic7defqune831dh9orwm.webp', 'deleted', '2023-08-03 12:16:36'),
(3, 'S', 'https://api.weemax.in/api/page/public/87cc4614-2b93-46ad-9b6a-14f7f3e6ed8bic7defqune831dh9orwm.webp', 'deleted', '2023-08-11 13:51:31'),
(4, 'MST SC 1', 'https://api.weemax.in/api/page/public/83d01311-a7fb-4f8d-a1bb-4e0ecae6f3ebshirt size chart.png', 'active', '2023-08-14 12:25:52'),
(5, 'WKI SC 1', 'https://api.weemax.in/api/page/public/83d01311-a7fb-4f8d-a1bb-4e0ecae6f3ebkurti size chart.png', 'active', '2023-08-14 12:26:15'),
(6, 'MTT SC 1', 'https://api.weemax.in/api/page/public/83d01311-a7fb-4f8d-a1bb-4e0ecae6f3ebMEN T SHIRT SC.png', 'active', '2023-08-14 12:42:54'),
(7, 'WTT SC 01', 'https://api.weemax.in/api/page/public/83d01311-a7fb-4f8d-a1bb-4e0ecae6f3ebWOMEN T SIRT SC .png', 'active', '2023-08-14 12:43:37'),
(8, 'MJR SC 1', 'https://api.weemax.in/api/page/public/83d01311-a7fb-4f8d-a1bb-4e0ecae6f3ebJOGGER SIZE CHART.jpg', 'active', '2023-08-14 13:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `testTrigger`
--

CREATE TABLE `testTrigger` (
  `id` int NOT NULL,
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `tokenId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `tokenType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `loggedInBy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user',
  `expiresAt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Token`
--

INSERT INTO `Token` (`tokenId`, `userId`, `tokenType`, `token`, `loggedInBy`, `expiresAt`, `createdAt`) VALUES
(1, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTQ4NzMzNywiZXhwIjoxNjkyNzgzMzM3fQ.1ZgRPXPtRoxCC6jjUSMU-OXb80MGxpUxHVCAOQS74_g', 'user', '2023-08-23 15:05:37', '2023-08-08 09:35:37'),
(2, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTQ4NzMzNywiZXhwIjoxNjk0MDc5MzM3fQ.FyLHbhfIj-5_WWH3nSTDStpl2Zdytv7q8DC983EPkps', 'user', '2023-09-07 15:05:37', '2023-08-08 09:35:37'),
(3, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTQ4Nzc3MSwiZXhwIjoxNjkyNzgzNzcxfQ.I1WaRP0f4nUpgzlUSqOWAvbD68BJATy36tYZnHwyL6o', 'user', '2023-08-23 15:12:51', '2023-08-08 09:42:51'),
(4, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTQ4Nzc3MSwiZXhwIjoxNjk0MDc5NzcxfQ.vcPNfgnnvLlY8BOTbOP8mfmNNyepYNDmemYPnjPcxvA', 'user', '2023-09-07 15:12:51', '2023-08-08 09:42:51'),
(5, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNDkxMCwiZXhwIjoxNjkyODAwOTEwfQ.4A84-aN05s4tEvDvOAWjeL0gY7LtY67B_-G0SGcxxz0', 'user', '2023-08-23 19:58:30', '2023-08-08 14:28:44'),
(6, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNDkxMCwiZXhwIjoxNjk0MDk2OTEwfQ.CrMylWfDxlRIyiuB9G4O3mLcBjNjaGudcp_IpmOVa3w', 'user', '2023-09-07 19:58:30', '2023-08-08 14:28:44'),
(7, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNjQ1MSwiZXhwIjoxNjkyODAyNDUxfQ.q6-VwggncrbN46KqFAXchLhPhobQcbCHasGm1ab_0JY', 'user', '2023-08-23 20:24:11', '2023-08-08 14:54:26'),
(8, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNjQ1MSwiZXhwIjoxNjk0MDk4NDUxfQ.kcZvfJn3j8-EO9wq5KQQoqGjYbQ9dsHyss4yjlPbNqo', 'user', '2023-09-07 20:24:11', '2023-08-08 14:54:26'),
(9, 10, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNjQ3MiwiZXhwIjoxNjkyODAyNDcyfQ.ZvoK_AUQTIOkpLmOSfPLAYosI7jmjvA7J8DMEHOTxpc', 'user', '2023-08-23 20:24:32', '2023-08-08 14:54:47'),
(10, 10, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTUwNjQ3MiwiZXhwIjoxNjk0MDk4NDcyfQ.AwvNJD97US8R4iUsw3cAGc7_dtZ3LNqTtq5lKyYZlWc', 'user', '2023-09-07 20:24:32', '2023-08-08 14:54:47'),
(11, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MDcwNzQsImV4cCI6MTY5MjgwMzA3NH0.pwih2EDqSAFZwFGoh8WTLUk75C2gqMnZ7I5IZ7I1vyI', 'user', '2023-08-23 20:34:34', '2023-08-08 15:04:48'),
(12, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MDcwNzQsImV4cCI6MTY5NDA5OTA3NH0.wAndzb0L61LsHSv2w9hQ8iLzZ6cR9PSjx1euXEMriIs', 'user', '2023-09-07 20:34:34', '2023-08-08 15:04:48'),
(13, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MDcyMzAsImV4cCI6MTY5MjgwMzIzMH0.W9E1NWTaWJDN3B7Am84psh6RDgL-oZT9BHNYgI0ysdg', 'user', '2023-08-23 20:37:10', '2023-08-08 15:07:25'),
(14, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MDcyMzAsImV4cCI6MTY5NDA5OTIzMH0.HZMCuKV-wiQpMX2jMce_gWluKT-mi9h5b2fniyUmM8Q', 'user', '2023-09-07 20:37:10', '2023-08-08 15:07:25'),
(15, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MTI4MzQsImV4cCI6MTY5MjgwODgzNH0.7blfX3FUKTu31OvhpXf4HfEJ9jy3hg3MRlomM4OOdDs', 'user', '2023-08-23 22:10:34', '2023-08-08 16:40:48'),
(16, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6Ill1Z2VuZGlyYW4gRyIsImVtYWlsIjoieXl1Z2k2NEBnbWFpbC5jb20iLCJpYXQiOjE2OTE1MTI4MzQsImV4cCI6MTY5NDEwNDgzNH0.phlJyYTgDprZc6YhO2tfl9s3Yw85smdbEHRejx_jgco', 'user', '2023-09-07 22:10:34', '2023-08-08 16:40:48'),
(17, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTU4MDUzNiwiZXhwIjoxNjkyODc2NTM2fQ.057qD3BE8WYf-N9AAML6pbCaNJNqCR8ecT2-uVVhx-E', 'user', '2023-08-24 11:28:56', '2023-08-09 11:28:56'),
(18, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTU4MDUzNiwiZXhwIjoxNjk0MTcyNTM2fQ.VCjxkil_q2GA5mCwtoRTYUJS0C5ESt0IwNTVcOu8F1M', 'user', '2023-09-08 11:28:56', '2023-08-09 11:28:56'),
(19, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3MzY0NywiZXhwIjoxNjkyOTY5NjQ3fQ.X8Us4xNnoG9j4hhX6JWcQ4ZVQuM4RQculs2_d4JYvGg', 'user', '2023-08-25 13:20:47', '2023-08-10 13:20:47'),
(20, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3MzY0NywiZXhwIjoxNjk0MjY1NjQ3fQ.VUBSvjyYG0FyxSuG_t8A_soTZ_5lWGLavUIBaJt-Gvw', 'user', '2023-09-09 13:20:47', '2023-08-10 13:20:47'),
(21, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3MzkyMiwiZXhwIjoxNjkyOTY5OTIyfQ.K_uwlqhUm5FkxXsH23uoZ_cfUMO1yJh3Qo6EwaQ-9HI', 'user', '2023-08-25 18:55:22', '2023-08-10 13:25:42'),
(22, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3MzkyMiwiZXhwIjoxNjk0MjY1OTIyfQ.R2UJ0ocsP9YJY1ffq7FxDM44_xWpCT2yvBYO9UADKV0', 'user', '2023-09-09 18:55:22', '2023-08-10 13:25:42'),
(23, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3NzA3NywiZXhwIjoxNjkyOTczMDc3fQ.DPWMUgM78QL4pGQuKV0WW_q68gpVNc1Emy_tuT3CWXE', 'user', '2023-08-25 19:47:57', '2023-08-10 14:18:17'),
(24, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY3NzA3NywiZXhwIjoxNjk0MjY5MDc3fQ.fWTNriC_0gOthtZwQScATb0GopdrGeV0bvZBh0m_ixU', 'user', '2023-09-09 19:47:57', '2023-08-10 14:18:17'),
(25, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY4MDc1OSwiZXhwIjoxNjkyOTc2NzU5fQ.2Y7F3RYa31-wFhESWOjRcA5Dm_GoLFULYMoBudCHiso', 'user', '2023-08-25 15:19:19', '2023-08-10 15:19:19'),
(26, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY4MDc1OSwiZXhwIjoxNjk0MjcyNzU5fQ.gp4xzwUbdv-NWyZF5Ioko62e-uyAImIBfN-DrJ7URUI', 'user', '2023-09-09 15:19:19', '2023-08-10 15:19:19'),
(27, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY5MDcwMiwiZXhwIjoxNjkyOTg2NzAyfQ.pS1FXqvfQNKAMb01Il0VVwHexZJ2COTDMHnw6HPGHUw', 'user', '2023-08-25 18:05:02', '2023-08-10 18:05:02'),
(28, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTY5MDcwMiwiZXhwIjoxNjk0MjgyNzAyfQ.nvtwK_OUhU7eta3rcMozAGXlgJVWMcDxsgQ9xTcYKpw', 'user', '2023-09-09 18:05:02', '2023-08-10 18:05:02'),
(29, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MTc2MTY2MywiZXhwIjoxNjkzMDU3NjYzfQ.L1bRVvJqd6nSM0pebXrVM5RGlpcA6OTanziOTh4sWEA', 'admin', '2023-08-26 19:17:43', '2023-08-11 13:48:06'),
(30, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MTc2MTY2MywiZXhwIjoxNjkyNjI1NjYzfQ.SYnrnzqiB36MLzJzi4r_Bb7eRGqKIFRTpsWugshlhw4', 'admin', '2023-08-21 19:17:43', '2023-08-11 13:48:06'),
(31, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MTc2OTQxMywiZXhwIjoxNjkzMDY1NDEzfQ.2WLH2ebNs0rqtwJzWyb6V_zPNgvLC6om18uYz55HeII', 'admin', '2023-08-26 15:56:53', '2023-08-11 15:56:53'),
(32, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MTc2OTQxMywiZXhwIjoxNjkyNjMzNDEzfQ.bIoLWLUAYZaNt_k2-itVvgDa8ni4ogKstJa4js5M2e8', 'admin', '2023-08-21 15:56:53', '2023-08-11 15:56:53'),
(33, 32, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5MTc3MDg4MywiZXhwIjoxNjkzMDY2ODgzfQ.m5Xfxyae59a9J72I3wlGIujL4FXE_GN6D4BHqaZM-K0', 'user', '2023-08-26 16:21:23', '2023-08-11 16:21:23'),
(34, 32, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5MTc3MDg4MywiZXhwIjoxNjk0MzYyODgzfQ.1fmpYt9LiGWrmKh5o-KWzP8w8NgNPqdDs4DKXtsxiqU', 'user', '2023-09-10 16:21:23', '2023-08-11 16:21:23'),
(35, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTc3NTE0OCwiZXhwIjoxNjkzMDcxMTQ4fQ.VMDma_Tko588qSC71nCho9a8Bkz2c7amBimzAZGhFb0', 'user', '2023-08-26 17:32:28', '2023-08-11 17:32:28'),
(36, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MTc3NTE0OCwiZXhwIjoxNjk0MzY3MTQ4fQ.U55lJKfMCI74snEIy0SwjOnBYHq52BEm04yrG4_bK8I', 'user', '2023-09-10 17:32:28', '2023-08-11 17:32:28'),
(37, 48, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ4LCJuYW1lIjoiTWFub2pNaXRodW4gUyIsImVtYWlsIjoibWFub2ptaXN0eW1hY0BnbWFpbC5jb20iLCJpYXQiOjE2OTE4OTg0NTcsImV4cCI6MTY5MzE5NDQ1N30.CVuiAJlmSJxKd15d6uRd8kiEuPH5WUVnZeopZyBbi7I', 'user', '2023-08-28 03:47:37', '2023-08-13 03:47:37'),
(38, 48, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ4LCJuYW1lIjoiTWFub2pNaXRodW4gUyIsImVtYWlsIjoibWFub2ptaXN0eW1hY0BnbWFpbC5jb20iLCJpYXQiOjE2OTE4OTg0NTcsImV4cCI6MTY5NDQ5MDQ1N30.r-wokVIJ_z7fz9uO7OQq6Nnj_vxOzFwmqec6YYjxwQQ', 'user', '2023-09-12 03:47:37', '2023-08-13 03:47:37'),
(39, 33, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMzLCJuYW1lIjoiU2F0aGl5YSBUIiwiZW1haWwiOiJzYXRoeWF0aGlydW11cnVnYW4yQGdtYWlsLmNvbSIsImlhdCI6MTY5MTkyNTMxOSwiZXhwIjoxNjkzMjIxMzE5fQ.CfPgOTAYRx71okpr39dqLfhGyf-7AHKwlnOuTXRB994', 'user', '2023-08-28 11:15:19', '2023-08-13 11:15:19'),
(40, 33, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMzLCJuYW1lIjoiU2F0aGl5YSBUIiwiZW1haWwiOiJzYXRoeWF0aGlydW11cnVnYW4yQGdtYWlsLmNvbSIsImlhdCI6MTY5MTkyNTMxOSwiZXhwIjoxNjk0NTE3MzE5fQ.fBb9vEj0wvX_MMiYlb7qJ74_NBlkPEJTaj4RiJUTeEw', 'user', '2023-09-12 11:15:19', '2023-08-13 11:15:19'),
(41, 108, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkxOTM0Mjk0LCJleHAiOjE2OTMyMzAyOTR9.OHX3CUA9_aKALjZdslk35jy2QwKBl4I5CmMc6EZ2Elo', 'user', '2023-08-28 13:44:54', '2023-08-13 13:44:54'),
(42, 108, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkxOTM0Mjk0LCJleHAiOjE2OTQ1MjYyOTR9.VdIjwFBXudIHDl68VcvM3tQ8w9RJD3EeuqUj0VH2c3g', 'user', '2023-09-12 13:44:54', '2023-08-13 13:44:54'),
(43, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjAzNDg2MSwiZXhwIjoxNjkzMzMwODYxfQ.a8shGQGX6w_E1Skhbz16fNUUyrap3rUbIrQ_e4nxrlQ', 'user', '2023-08-29 23:11:01', '2023-08-14 17:41:31'),
(44, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjAzNDg2MSwiZXhwIjoxNjk0NjI2ODYxfQ.yXJ3iyiMQIVO-gi8tRpT1CBtjf_fygvlIw9ukuT_zZ4', 'user', '2023-09-13 23:11:01', '2023-08-14 17:41:31'),
(45, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQyODc1LCJleHAiOjE2OTMzMzg4NzV9.6OFqTuiUlZ4fFL4wt-31_HU8g9_XFo6W-I2y6h3NXec', 'user', '2023-08-30 01:24:35', '2023-08-14 19:55:05'),
(46, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQyODc1LCJleHAiOjE2OTQ2MzQ4NzV9.RI3iApca4o2dqVlRzB5l_LjPLdnIfZIPmWDKpiVvlX0', 'user', '2023-09-14 01:24:35', '2023-08-14 19:55:05'),
(47, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIwNDMwODcsImV4cCI6MTY5MzMzOTA4N30._O6bsoQkdNoQL-wm-kQc1S1sV-hDdZ2C7kRJ9N57X8E', 'user', '2023-08-30 01:28:07', '2023-08-14 19:58:37'),
(48, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIwNDMwODcsImV4cCI6MTY5NDYzNTA4N30.3Dg0zHsXs2My3FkMPP9BdbyPEyu2kcMBYc0QJA41H4c', 'user', '2023-09-14 01:28:07', '2023-08-14 19:58:37'),
(49, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIwNDMxNDksImV4cCI6MTY5MzMzOTE0OX0.V0q5ixNFb2N5dhNcu35tUvMYixPYYRFu-p2eAbC0ySE', 'user', '2023-08-30 01:29:09', '2023-08-14 19:59:39'),
(50, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIwNDMxNDksImV4cCI6MTY5NDYzNTE0OX0.tmYYaXCy4GNUVVfbpIHLo4g0WfVU-5BVbwNR2tD_Gbg', 'user', '2023-09-14 01:29:09', '2023-08-14 19:59:39'),
(51, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQzNzU1LCJleHAiOjE2OTMzMzk3NTV9.uaa77DzpGuM0PTP1nLcL2BFe7RNQ-2JZQ_ZUHeYrGcc', 'user', '2023-08-29 20:09:15', '2023-08-14 20:09:15'),
(52, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQzNzU1LCJleHAiOjE2OTQ2MzU3NTV9.RpIvfpwTl7FCvtfYFrG9rzlQv6W9pHikwtdlHVih4y4', 'user', '2023-09-13 20:09:15', '2023-08-14 20:09:15'),
(53, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQ0MTUzLCJleHAiOjE2OTMzNDAxNTN9.Ezw9KzWtN--OumhrClHeObhRW7wXtbVueqeET21IblI', 'user', '2023-08-29 20:15:53', '2023-08-14 20:15:53'),
(54, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMDQ0MTUzLCJleHAiOjE2OTQ2MzYxNTN9.lbNMVdYmbzlwx_5vB-jemlG4ywo8qEuqkfyVSInqs4c', 'user', '2023-09-13 20:15:53', '2023-08-14 20:15:53'),
(55, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIwNzMzNDQsImV4cCI6MTY5MzM2OTM0NH0.W4GU4eNDcbfUYm3WJPJLbi3750uMlTGHGrd3ovHgflQ', 'user', '2023-08-30 04:22:24', '2023-08-15 04:22:24'),
(56, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIwNzMzNDQsImV4cCI6MTY5NDY2NTM0NH0.w8U2toog5zejUGItHOW3xadhctP7CTf1je86ZvPsDvs', 'user', '2023-09-14 04:22:24', '2023-08-15 04:22:24'),
(57, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjEwOTkzOSwiZXhwIjoxNjkzNDA1OTM5fQ.pZvBUYM5QYkYfLFn7Mc75awL-O8hlvagE7-aD31klJo', 'admin', '2023-08-30 14:32:19', '2023-08-15 14:32:19'),
(58, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjEwOTkzOSwiZXhwIjoxNjkyOTczOTM5fQ.0QeLwx3IB2R6EGuT4RIss9pYYc848OvbOZkMQ1_3e-8', 'admin', '2023-08-25 14:32:19', '2023-08-15 14:32:19'),
(59, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTA3NzUsImV4cCI6MTY5MzQwNjc3NX0.DlyHDJGmlN7gs7m2mjRqUE8wUmWbvu8d2OzFeUHmhJU', 'user', '2023-08-30 14:46:15', '2023-08-15 14:46:15'),
(60, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTA3NzUsImV4cCI6MTY5NDcwMjc3NX0.giOrUIk0e4ol4iC2yog-kjB021CS8TlcAbBznLnO-KU', 'user', '2023-09-14 14:46:15', '2023-08-15 14:46:15'),
(61, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTA3NzcsImV4cCI6MTY5MzQwNjc3N30.gI0xdmgIkm9IwOFfqzdetAZttVL1zAv6kzpBnuIHar4', 'user', '2023-08-30 14:46:17', '2023-08-15 14:46:17'),
(62, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTA3NzcsImV4cCI6MTY5NDcwMjc3N30.esE9KkqBs3xFJ8WrR7Tqv2Q4LdaMlvNOnWVBcUTrxDE', 'user', '2023-09-14 14:46:17', '2023-08-15 14:46:17'),
(63, 77, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc3LCJuYW1lIjoiTml0aGluICIsImVtYWlsIjoibml0aGlubmtpbmc5M0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTMyNDIsImV4cCI6MTY5MzQwOTI0Mn0.MEYXDPUNPvwLSS23lGsCPxXvqxVLSthcJTw_svkrYO8', 'user', '2023-08-30 15:27:22', '2023-08-15 15:27:22'),
(64, 77, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc3LCJuYW1lIjoiTml0aGluICIsImVtYWlsIjoibml0aGlubmtpbmc5M0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMTMyNDIsImV4cCI6MTY5NDcwNTI0Mn0.cmW4hj3uwiH26huddcnE9XPq2WLnkI6NOKO1lIqP_p8', 'user', '2023-09-14 15:27:22', '2023-08-15 15:27:22'),
(65, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMjg4ODYsImV4cCI6MTY5MzQyNDg4Nn0.hSrYx8AG5Sm6kOna673433lY4C3rNFGRByMC77_74fU', 'user', '2023-08-30 19:48:06', '2023-08-15 19:48:06'),
(66, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMjg4ODYsImV4cCI6MTY5NDcyMDg4Nn0.adW-bOtXFEL5c5UbPYRTNvwXRc7PlhDZy0KUUq-GHRY', 'user', '2023-09-14 19:48:06', '2023-08-15 19:48:06'),
(67, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMjg4ODcsImV4cCI6MTY5MzQyNDg4N30.T0QkdW6Qj10vZfuB5ylDOZB8qXAi7B97vF54cmoXjAk', 'user', '2023-08-30 19:48:07', '2023-08-15 19:48:07'),
(68, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxMjg4ODcsImV4cCI6MTY5NDcyMDg4N30.38aMD-xu1vlQDjWAsZnzgsmMFWs_JWHXNtBTfllJB70', 'user', '2023-09-14 19:48:07', '2023-08-15 19:48:07'),
(69, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2NjQ3LCJleHAiOjE2OTM0NTI2NDd9.bk_giOqWwRnH52y46MFMgYRsfjYsSBpikW9ipRaAwbA', 'user', '2023-08-31 03:30:47', '2023-08-16 03:30:47'),
(70, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2NjQ3LCJleHAiOjE2OTQ3NDg2NDd9.6hQ6tlQm3c1r7e2xao0J1NKQje4nQ_8tBTSFKTaHxUk', 'user', '2023-09-15 03:30:47', '2023-08-16 03:30:47'),
(71, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2NjQ3LCJleHAiOjE2OTM0NTI2NDd9.bk_giOqWwRnH52y46MFMgYRsfjYsSBpikW9ipRaAwbA', 'user', '2023-08-31 03:30:47', '2023-08-16 03:30:47'),
(72, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2NjQ3LCJleHAiOjE2OTQ3NDg2NDd9.6hQ6tlQm3c1r7e2xao0J1NKQje4nQ_8tBTSFKTaHxUk', 'user', '2023-09-15 03:30:47', '2023-08-16 03:30:47'),
(73, 108, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2OTg4LCJleHAiOjE2OTM0NTI5ODh9.BcLB3r3b2fcIt0LHnXet7XKH2N0Ubo5XSs9_PNhBas4', 'user', '2023-08-31 03:36:28', '2023-08-16 03:36:28'),
(74, 108, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkyMTU2OTg4LCJleHAiOjE2OTQ3NDg5ODh9.NWJ_jk8B0IVLoNmV9eDRLnzUc3_HkBBBVHVJefGN4Rc', 'user', '2023-09-15 03:36:28', '2023-08-16 03:36:28'),
(75, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTcwMzU2LCJleHAiOjE2OTM0NjYzNTZ9.fGhdtGRoWBn-8hSPUbbhSpgW-LNYeK04yREBs3RuLZc', 'user', '2023-08-31 07:19:16', '2023-08-16 07:19:16'),
(76, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMTcwMzU2LCJleHAiOjE2OTQ3NjIzNTZ9.J-hRLMF3X1lmfoawPT03qPnF0toKcqBDZv3O85lAIec', 'user', '2023-09-15 07:19:16', '2023-08-16 07:19:16'),
(77, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjE3NTcxOSwiZXhwIjoxNjkzNDcxNzE5fQ.OgSWBJ73ylQZeFNjW1ibdM1iePASJLiT22hiNHM4KSM', 'admin', '2023-08-31 08:48:39', '2023-08-16 08:48:39'),
(78, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjE3NTcxOSwiZXhwIjoxNjkzMDM5NzE5fQ.d2-Fs3-JnW5a64GJ65qAXBx6uxuMnOW8geD31oAq_Hc', 'admin', '2023-08-26 08:48:39', '2023-08-16 08:48:39'),
(79, 31, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMTc4MTQxLCJleHAiOjE2OTM0NzQxNDF9.tpL_7NJWejR9XBsybx8FJ34BWInOSg7wR_QoYpoZvjo', 'user', '2023-08-31 09:29:01', '2023-08-16 09:29:01'),
(80, 31, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoiWXVnaSAtIHRlc3QiLCJlbWFpbCI6ImdvbHNwb2gxMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMTc4MTQxLCJleHAiOjE2OTQ3NzAxNDF9.B6TG4i1YacsMypBMx6MhamalLUBU9qSDql1xv-7kSSc', 'user', '2023-09-15 09:29:01', '2023-08-16 09:29:01'),
(81, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxODM5OTAsImV4cCI6MTY5MzQ3OTk5MH0.tOqTIW7NiYNcngW5NbA0g6YX49MvqFzfUfxc-W_Xw7U', 'user', '2023-08-31 11:06:30', '2023-08-16 11:06:30'),
(82, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIxODM5OTAsImV4cCI6MTY5NDc3NTk5MH0.RYCkYzxzaD_G-IBHd07TzFP_bWclOgOAPPHuMlzP3m8', 'user', '2023-09-15 11:06:30', '2023-08-16 11:06:30'),
(83, 81, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgxLCJuYW1lIjoiVW1hciBmYXJ1ayIsImVtYWlsIjoidW1hcmZhcnVrMTQzOTZAZ21haWwuY29tIiwiaWF0IjoxNjkyMTg4NDcxLCJleHAiOjE2OTM0ODQ0NzF9.P9jZygw02m19QAeDFnd8B1FxzpfdfxmySddwMcML02w', 'user', '2023-08-31 12:21:11', '2023-08-16 12:21:11'),
(84, 81, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjgxLCJuYW1lIjoiVW1hciBmYXJ1ayIsImVtYWlsIjoidW1hcmZhcnVrMTQzOTZAZ21haWwuY29tIiwiaWF0IjoxNjkyMTg4NDcxLCJleHAiOjE2OTQ3ODA0NzF9.8w50BbgfKK4Y5rdJVQzRP6Ob2mdJsH-Naxiz0KhKaHk', 'user', '2023-09-15 12:21:11', '2023-08-16 12:21:11'),
(85, 130, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMCwibmFtZSI6Ikdvd3RoYW1pICIsImVtYWlsIjoic2dvd3RoYW1pMjEwMUBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTI1ODksImV4cCI6MTY5MzQ4ODU4OX0.850DXH2mVkgkMxsbS3g99QpiD-jJ09koH5HPrC7vJck', 'user', '2023-08-31 13:29:49', '2023-08-16 13:29:49'),
(86, 130, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMCwibmFtZSI6Ikdvd3RoYW1pICIsImVtYWlsIjoic2dvd3RoYW1pMjEwMUBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTI1ODksImV4cCI6MTY5NDc4NDU4OX0.FpAUKl7GdymchVM0tS-CqruwsvoQwqyy11QLCpk6GH4', 'user', '2023-09-15 13:29:49', '2023-08-16 13:29:49'),
(87, 131, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMSwibmFtZSI6IlByYXNhbnRoIiwiZW1haWwiOiJwcmFzYW50aGhvcGV6ekBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTI4NTAsImV4cCI6MTY5MzQ4ODg1MH0.bmEkdWtTiUXWsrzq2tO9_av13gpwtyoQUmV4zIYWxxU', 'user', '2023-08-31 13:34:10', '2023-08-16 13:34:10'),
(88, 131, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMSwibmFtZSI6IlByYXNhbnRoIiwiZW1haWwiOiJwcmFzYW50aGhvcGV6ekBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTI4NTAsImV4cCI6MTY5NDc4NDg1MH0.HjQ73N3N7t1Dx9NPY8qOhZRhtC6zM3rOVeKLsjvu_YU', 'user', '2023-09-15 13:34:10', '2023-08-16 13:34:10'),
(89, 133, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMywibmFtZSI6IlZJR05FU0ggUkFNS1VNQVIiLCJlbWFpbCI6InZpY2t5c2FudGhvc2g5NkBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTU4NTMsImV4cCI6MTY5MzQ5MTg1M30.9i5YGozxLyeGXa8U9iXx_abg8V67VcJNwr8pDiuwWzM', 'user', '2023-08-31 14:24:13', '2023-08-16 14:24:13'),
(90, 133, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzMywibmFtZSI6IlZJR05FU0ggUkFNS1VNQVIiLCJlbWFpbCI6InZpY2t5c2FudGhvc2g5NkBnbWFpbC5jb20iLCJpYXQiOjE2OTIxOTU4NTMsImV4cCI6MTY5NDc4Nzg1M30.eVv01QM6eJ17eLe5u_-D01w3LkS7n9VJcT4YH_z8FA0', 'user', '2023-09-15 14:24:13', '2023-08-16 14:24:13'),
(91, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjE5OTkyNSwiZXhwIjoxNjkzNDk1OTI1fQ.qXgnBIYFeK-4H8Vn7uKKwB3hXh1H9pjre2pf94sbTnQ', 'admin', '2023-08-31 15:32:05', '2023-08-16 15:32:05'),
(92, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjE5OTkyNSwiZXhwIjoxNjkzMDYzOTI1fQ.EO37qug9KcEdKf5k4kTcJYs0Knr-L6JtctO5jR18MrA', 'admin', '2023-08-26 15:32:05', '2023-08-16 15:32:05'),
(93, 72, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2MDkwNSwiZXhwIjoxNjkzNTU2OTA1fQ.zJE9gMskQiy12RykJ275hvPcReo_1U1VluCAEGO0mg8', 'user', '2023-09-01 08:28:25', '2023-08-17 08:28:25'),
(94, 72, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2MDkwNSwiZXhwIjoxNjk0ODUyOTA1fQ.loEbfFI0cAWvBazuMhNsgCtVFlTodYxi_4y5hoE6R4w', 'user', '2023-09-16 08:28:25', '2023-08-17 08:28:25'),
(95, 134, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNCwibmFtZSI6IlNFTlRISUxLVU1BUiIsImVtYWlsIjoiYWpzcmVla3VtYXJhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTIyNjEzMzgsImV4cCI6MTY5MzU1NzMzOH0.6ntofRtWcw-URuvN8K-YNyC8mOTs8vAoiJVlRrKtcck', 'user', '2023-09-01 08:35:38', '2023-08-17 08:35:38'),
(96, 134, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNCwibmFtZSI6IlNFTlRISUxLVU1BUiIsImVtYWlsIjoiYWpzcmVla3VtYXJhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTIyNjEzMzgsImV4cCI6MTY5NDg1MzMzOH0.LVkKWvWXvopYL-lPnRgOm_K4muWE3TuXJCS7zgddUI4', 'user', '2023-09-16 08:35:38', '2023-08-17 08:35:38'),
(97, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2NjMyMSwiZXhwIjoxNjkzNTYyMzIxfQ.o_PZQEV4J1xkLaYIxDphvfsqV2N1BBiiPMbrWGN7XDI', 'user', '2023-09-01 09:58:41', '2023-08-17 09:58:41'),
(98, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2NjMyMSwiZXhwIjoxNjk0ODU4MzIxfQ.qJOGy2_rYFQ_rjjrMFEnEfvkZhZZcG-mP_Btxk1xeIc', 'user', '2023-09-16 09:58:41', '2023-08-17 09:58:41'),
(99, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMjY3MTgxLCJleHAiOjE2OTM1NjMxODF9.H5Ndd9yK0h6L4ZPmhie_2KzjIEbCjrMRHPa9tt1yJT8', 'user', '2023-09-01 10:13:01', '2023-08-17 10:13:01'),
(100, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkyMjY3MTgxLCJleHAiOjE2OTQ4NTkxODF9.ayDii5jjeeD4dH3x0WP7bj3fe_3pSU7Hne-SioxDdmY', 'user', '2023-09-16 10:13:01', '2023-08-17 10:13:01'),
(101, 13, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkyMjY3ODUzLCJleHAiOjE2OTM1NjM4NTN9.dcognxz9mXFxAHFggiF09XkSh02lzXWWadCsgXZx9wU', 'user', '2023-09-01 10:24:13', '2023-08-17 10:24:13'),
(102, 13, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzLCJuYW1lIjoiR3VuYWwiLCJlbWFpbCI6Imd1bmFscmFqYXJhdGhpbmFtMTFAZ21haWwuY29tIiwiaWF0IjoxNjkyMjY3ODUzLCJleHAiOjE2OTQ4NTk4NTN9.QbrSS94a-1nrko34N0mrOagjCW5-5xuMRyQvry367AM', 'user', '2023-09-16 10:24:13', '2023-08-17 10:24:13'),
(103, 61, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYxLCJuYW1lIjoiTGhla2hhIEJhbGFzdWJyYW1hbmlhbiIsImVtYWlsIjoibGhla2hhMDA3c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2ODU1MiwiZXhwIjoxNjkzNTY0NTUyfQ.UoafbJudB1CEMqIwEJIvtjj_L6wg-ghc6yJIYlVGqjk', 'user', '2023-09-01 10:35:52', '2023-08-17 10:35:52'),
(104, 61, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYxLCJuYW1lIjoiTGhla2hhIEJhbGFzdWJyYW1hbmlhbiIsImVtYWlsIjoibGhla2hhMDA3c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5MjI2ODU1MiwiZXhwIjoxNjk0ODYwNTUyfQ.FbXmzgF34vOvQ0Nya9aECoTTgsDbnCr7L3-CyijaXKw', 'user', '2023-09-16 10:35:52', '2023-08-17 10:35:52'),
(105, 135, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNSwibmFtZSI6IlZpc2hudXZhcmFkaGFuIE0gIiwiZW1haWwiOiJ2aXNobnV2YXJhZGhhbm1lY2hAZ21haWwuY29tIiwiaWF0IjoxNjkyMjcwMDU1LCJleHAiOjE2OTM1NjYwNTV9.SSZCw1FfNATbYg6l2wMpb-RybZe0O1oil_e3Tfed5J4', 'user', '2023-09-01 11:00:55', '2023-08-17 11:00:55'),
(106, 135, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNSwibmFtZSI6IlZpc2hudXZhcmFkaGFuIE0gIiwiZW1haWwiOiJ2aXNobnV2YXJhZGhhbm1lY2hAZ21haWwuY29tIiwiaWF0IjoxNjkyMjcwMDU1LCJleHAiOjE2OTQ4NjIwNTV9.L4Z9WVTZScpuLF0yI67j9FbiOP5qNgLhFMXbxSnqhsw', 'user', '2023-09-16 11:00:55', '2023-08-17 11:00:55'),
(107, 50, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkyMjcwOTUxLCJleHAiOjE2OTM1NjY5NTF9.CNkC8RxNtl20loj762jfTveudVqSfzx_9PSZrSvjXys', 'user', '2023-09-01 11:15:51', '2023-08-17 11:15:51'),
(108, 50, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUwLCJuYW1lIjoiU2hhbmthcmkiLCJlbWFpbCI6InNoYW5rYXJpc2hhbm11Z2FtMjNAZ21haWwuY29tIiwiaWF0IjoxNjkyMjcwOTUxLCJleHAiOjE2OTQ4NjI5NTF9.G9P7JqyeuOEgnSQDqqAu7W1sscgZuARa_oQs6HMLqGk', 'user', '2023-09-16 11:15:51', '2023-08-17 11:15:51'),
(109, 136, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNiwibmFtZSI6IkplZXZhIiwiZW1haWwiOiJqZWV2YXNoYW5tdWdhbTAyMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMjg2NzcyLCJleHAiOjE2OTM1ODI3NzJ9.7Bk0w4IPPi7r6n0_WJGwP1YB4j3-tBiap6a8U4Pgh-Q', 'user', '2023-09-01 15:39:32', '2023-08-17 15:39:32'),
(110, 136, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNiwibmFtZSI6IkplZXZhIiwiZW1haWwiOiJqZWV2YXNoYW5tdWdhbTAyMjhAZ21haWwuY29tIiwiaWF0IjoxNjkyMjg2NzcyLCJleHAiOjE2OTQ4Nzg3NzJ9._QPySTX81FvpNJ2sGymU8De95JtXpoae0HiDqoPwkt4', 'user', '2023-09-16 15:39:32', '2023-08-17 15:39:32'),
(111, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjI4NzE1MywiZXhwIjoxNjkzNTgzMTUzfQ.QrUV-dbYBuAyBb_M-7ucXIN-QUQl8x5QcjIxBQwmYNk', 'user', '2023-09-01 21:15:53', '2023-08-17 15:45:59'),
(112, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjI4NzE1MywiZXhwIjoxNjk0ODc5MTUzfQ.Vc3cDhQKp3HyL7asYfcs-4F_VIR2lzEqr94uzy4WFF8', 'user', '2023-09-16 21:15:53', '2023-08-17 15:45:59'),
(113, 137, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNywibmFtZSI6IlJ1YnkiLCJlbWFpbCI6InJ1YmlrYXJ1YmkyM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyODcyNzUsImV4cCI6MTY5MzU4MzI3NX0.66V7xtDH67LPGoo5q9CSLNz5aJNCzC-tLbb7V6dlrKA', 'user', '2023-09-01 15:47:55', '2023-08-17 15:47:55'),
(114, 137, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzNywibmFtZSI6IlJ1YnkiLCJlbWFpbCI6InJ1YmlrYXJ1YmkyM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyODcyNzUsImV4cCI6MTY5NDg3OTI3NX0.xyfUZuqDj6PHPsTPXLfVdZTpAdXSciixwUverCD1y6I', 'user', '2023-09-16 15:47:55', '2023-08-17 15:47:55'),
(115, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIyODgxODMsImV4cCI6MTY5MzU4NDE4M30.d1EX9Z9uzd2Lb6IrRRW0Lr89y-o3kWkEd9qiVNdmWc8', 'user', '2023-09-01 21:33:03', '2023-08-17 16:03:09'),
(116, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIyODgxODMsImV4cCI6MTY5NDg4MDE4M30.Q2899bGbrl1C2SoykmBqhcJkv2pgAqmZb_givSpkeoI', 'user', '2023-09-16 21:33:03', '2023-08-17 16:03:09'),
(117, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTA4MDcsImV4cCI6MTY5MzU4NjgwN30.NR33ESYtTr32rA5YFGzgx9BD1VMT7zSj77fpzQxDvpg', 'user', '2023-09-01 16:46:47', '2023-08-17 16:46:47'),
(118, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTA4MDcsImV4cCI6MTY5NDg4MjgwN30.sIEcCMMGR8VGpNjtmPG7jjoAIPl3RzVrBOdLyqM5XPw', 'user', '2023-09-16 16:46:47', '2023-08-17 16:46:47'),
(119, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTEwMTMsImV4cCI6MTY5MzU4NzAxM30.RgEyA1ffiT5awgbEb3ReHtqOq_ABB7j_WsCwC-t3i4Y', 'user', '2023-09-01 16:50:13', '2023-08-17 16:50:13'),
(120, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTEwMTMsImV4cCI6MTY5NDg4MzAxM30.ZzqpsIyXQQLpbUh0suAvi_mIRi6dt3fsR4qIpjUJycM', 'user', '2023-09-16 16:50:13', '2023-08-17 16:50:13'),
(121, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTEwMTQsImV4cCI6MTY5MzU4NzAxNH0.2h1cp-vOfDoyd4dc8NzWzrzhgPDJWKzs4mQ8PghHy1o', 'user', '2023-09-01 16:50:14', '2023-08-17 16:50:14'),
(122, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIyOTEwMTQsImV4cCI6MTY5NDg4MzAxNH0.uiqX-TzLP4VKZAUhfvfDU7GXYG1vQTNShl8FhGpaoaA', 'user', '2023-09-16 16:50:14', '2023-08-17 16:50:14'),
(123, 138, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTIyOTMyMDUsImV4cCI6MTY5MzU4OTIwNX0.N4Shv-LEvUGVZ1_pN4AOeT8iyxJwM2auMZ4QeV5w8yk', 'user', '2023-09-01 17:26:45', '2023-08-17 17:26:45'),
(124, 138, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTIyOTMyMDUsImV4cCI6MTY5NDg4NTIwNX0.0gvAqGxL9N2G9MMA370EjNPTlzZMa0JWlbf-bxCSaMA', 'user', '2023-09-16 17:26:45', '2023-08-17 17:26:45'),
(125, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjI5NTY2MiwiZXhwIjoxNjkzNTkxNjYyfQ.vrHmCwVaCdlaios9bZ77_6VSojHe7M7bDIdhG-o9O3s', 'admin', '2023-09-01 18:07:42', '2023-08-17 18:07:42'),
(126, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjI5NTY2MiwiZXhwIjoxNjkzMTU5NjYyfQ.HPKg142IiRWUy6Qp7h_nc-mYJTiihEiGjrVm6KL1nIk', 'admin', '2023-08-27 18:07:42', '2023-08-17 18:07:42'),
(127, 139, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOSwibmFtZSI6IlNuZWhhIiwiZW1haWwiOiJzdmMxMDIxQGdtYWlsLmNvbSIsImlhdCI6MTY5MjMyNDgyNywiZXhwIjoxNjkzNjIwODI3fQ.AjXx4MivGEjDZAp9Scgg7-mJEoiL841GDN9UAmovD4M', 'user', '2023-09-02 02:13:47', '2023-08-18 02:13:47'),
(128, 139, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOSwibmFtZSI6IlNuZWhhIiwiZW1haWwiOiJzdmMxMDIxQGdtYWlsLmNvbSIsImlhdCI6MTY5MjMyNDgyNywiZXhwIjoxNjk0OTE2ODI3fQ.F2lY38OwiCSIWW4vdwK5VBfYOCZOtk1ygLJ_X40XZew', 'user', '2023-09-17 02:13:47', '2023-08-18 02:13:47'),
(129, 140, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0MCwibmFtZSI6IktlZXJ0aGFuYSIsImVtYWlsIjoia2VlcnRodXNha3RoaTI5MzRAZ21haWwuY29tIiwiaWF0IjoxNjkyMzMwMjI5LCJleHAiOjE2OTM2MjYyMjl9.QhtxtoF8LzD5hpnwmgobTJCs7gQhbXKMV3g2s5j_GOc', 'user', '2023-09-02 03:43:49', '2023-08-18 03:43:49'),
(130, 140, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0MCwibmFtZSI6IktlZXJ0aGFuYSIsImVtYWlsIjoia2VlcnRodXNha3RoaTI5MzRAZ21haWwuY29tIiwiaWF0IjoxNjkyMzMwMjI5LCJleHAiOjE2OTQ5MjIyMjl9.y0Y9s7CBRrCggBdDrXq0Pc1eQxYPOWtvLHnuvVloFaM', 'user', '2023-09-17 03:43:49', '2023-08-18 03:43:49'),
(131, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzMzNTEsImV4cCI6MTY5MzYyOTM1MX0.4vSdBqszovVcc4jSJ-Qpb_n8Du0yfK7XtZ6-IBQ8bzQ', 'user', '2023-09-02 10:05:51', '2023-08-18 04:35:52'),
(132, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzMzNTEsImV4cCI6MTY5NDkyNTM1MX0.00Wv72zOoPx1_rLne7Hpu8Vu4bUO_0EYQg3xwdihqO0', 'user', '2023-09-17 10:05:51', '2023-08-18 04:35:52'),
(133, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzM4NjMsImV4cCI6MTY5MzYyOTg2M30.hHgEH0O9pzkSN8yrIp3mR1qHOTLpe-yOKG0rJxAV8iA', 'user', '2023-09-02 10:14:23', '2023-08-18 04:44:24'),
(134, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzM4NjMsImV4cCI6MTY5NDkyNTg2M30.gBL0sjicbrhzDXegiRWU5k6DUzHw5oaupfoc8oKx4zQ', 'user', '2023-09-17 10:14:23', '2023-08-18 04:44:24'),
(135, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzM4NjUsImV4cCI6MTY5MzYyOTg2NX0.Kx9yzUN700SJL51NasOP3GBi7cluY-QabaEtTVzeuO4', 'user', '2023-09-02 10:14:25', '2023-08-18 04:44:26'),
(136, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzM4NjUsImV4cCI6MTY5NDkyNTg2NX0.9GdCeaZ4hDReK9zghxmsPsQzrVGdBMGTlg3h7m0eMq4', 'user', '2023-09-17 10:14:25', '2023-08-18 04:44:26'),
(137, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzM4NjYsImV4cCI6MTY5MzYyOTg2Nn0.oqNEwAEzHBLzTlbp0QojfTobaJXZ6ZxTsAbJy_IatSg', 'user', '2023-09-02 10:14:26', '2023-08-18 04:44:27'),
(138, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzM4NjYsImV4cCI6MTY5NDkyNTg2Nn0.EsBBUGCh30QE8A17GU9RSmTd9QFMzG5pvWAYsgwnbMk', 'user', '2023-09-17 10:14:26', '2023-08-18 04:44:27'),
(139, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzM4NjcsImV4cCI6MTY5MzYyOTg2N30.L7AeuZMFaFh5wtefteTXuJvbSLHcMIJyagbMJyplbeI', 'user', '2023-09-02 10:14:27', '2023-08-18 04:44:28'),
(140, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzM4NjcsImV4cCI6MTY5NDkyNTg2N30.nKls7-CcnsG1WGLdOsQi8bmNZjDGTUroU6zgavikosE', 'user', '2023-09-17 10:14:27', '2023-08-18 04:44:28'),
(141, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzM4NjgsImV4cCI6MTY5MzYyOTg2OH0.Kwgn25QizbBuNUIdKOgn5rdU0y-54tY136TRX8gI0KA', 'user', '2023-09-02 10:14:28', '2023-08-18 04:44:29'),
(142, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzMzM4NjgsImV4cCI6MTY5NDkyNTg2OH0.DggmBpiQpnVwMPHaY-oxhFEoS2Js6TC6l9BhzLaWMok', 'user', '2023-09-17 10:14:28', '2023-08-18 04:44:29'),
(143, 141, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0MSwibmFtZSI6IlN1Z2FueWEuTiIsImVtYWlsIjoibnN1Z2FueWExMDBAZ21haWwuY29tIiwiaWF0IjoxNjkyMzQwNDE5LCJleHAiOjE2OTM2MzY0MTl9.p5VcTH9tgB_5FPB0BlTEg6D-IaR6lLYT_rC-Eouli-E', 'user', '2023-09-02 06:33:39', '2023-08-18 06:33:39'),
(144, 141, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0MSwibmFtZSI6IlN1Z2FueWEuTiIsImVtYWlsIjoibnN1Z2FueWExMDBAZ21haWwuY29tIiwiaWF0IjoxNjkyMzQwNDE5LCJleHAiOjE2OTQ5MzI0MTl9.8YKQwKdL2xNYelryTE514uMqPxF1TdUo8-n1i8cgSNE', 'user', '2023-09-17 06:33:39', '2023-08-18 06:33:39'),
(145, 143, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0MywibmFtZSI6Ik11dGh1IiwiZW1haWwiOiJtdXRodXZ1cnZlc2Fsb25AZ21haWwuY29tIiwiaWF0IjoxNjkyMzQzNjY1LCJleHAiOjE2OTM2Mzk2NjV9.IrzVkkWg6-m7ptiUHEPSFHaA3KgE-NzQGrU-IuK2Z1c', 'user', '2023-09-02 07:27:45', '2023-08-18 07:27:45'),
(146, 143, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0MywibmFtZSI6Ik11dGh1IiwiZW1haWwiOiJtdXRodXZ1cnZlc2Fsb25AZ21haWwuY29tIiwiaWF0IjoxNjkyMzQzNjY1LCJleHAiOjE2OTQ5MzU2NjV9.DISjPnP5tFx_UthfLwiIJ28GJ94BFOV2-5aDuUSgqss', 'user', '2023-09-17 07:27:45', '2023-08-18 07:27:45'),
(147, 47, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ3LCJuYW1lIjoiS2F2aXlhIFNoYW5rYXIiLCJlbWFpbCI6Imthdml5YXNoYW5rYXIyODI4QGdtYWlsLmNvbSIsImlhdCI6MTY5MjM1NzAxMiwiZXhwIjoxNjkzNjUzMDEyfQ.pSz1a9O0dwBBfSpoHt4cbF8UMeMwIqNeagSWMZ442n0', 'user', '2023-09-02 11:10:12', '2023-08-18 11:10:12'),
(148, 47, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ3LCJuYW1lIjoiS2F2aXlhIFNoYW5rYXIiLCJlbWFpbCI6Imthdml5YXNoYW5rYXIyODI4QGdtYWlsLmNvbSIsImlhdCI6MTY5MjM1NzAxMiwiZXhwIjoxNjk0OTQ5MDEyfQ.fMR-9K8_o3keYvY1FwtqW_W7eI_i_IcRbiKsp6N16fo', 'user', '2023-09-17 11:10:12', '2023-08-18 11:10:12'),
(149, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjM1ODMwOCwiZXhwIjoxNjkzNjU0MzA4fQ.7jcJ27KqCaxIIUBTQn-uM9PWMhaPccKo5U5fyljKEgY', 'admin', '2023-09-02 11:31:48', '2023-08-18 11:31:48'),
(150, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjM1ODMwOCwiZXhwIjoxNjkzMjIyMzA4fQ.NnV8kOLbW994CWil7ijloOL5dVeEROSaSRxjuqHc0wE', 'admin', '2023-08-28 11:31:48', '2023-08-18 11:31:48'),
(151, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjM1ODMwOCwiZXhwIjoxNjkzNjU0MzA4fQ.7jcJ27KqCaxIIUBTQn-uM9PWMhaPccKo5U5fyljKEgY', 'admin', '2023-09-02 11:31:48', '2023-08-18 11:31:48'),
(152, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MjM1ODMwOCwiZXhwIjoxNjkzMjIyMzA4fQ.NnV8kOLbW994CWil7ijloOL5dVeEROSaSRxjuqHc0wE', 'admin', '2023-08-28 11:31:48', '2023-08-18 11:31:48'),
(153, 144, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0NCwibmFtZSI6IkFrc2hheWEiLCJlbWFpbCI6ImFrc2hheWFjci4xMS4wNS4yMDA1QGdtYWlsLmNvbSIsImlhdCI6MTY5MjM2MzkwMywiZXhwIjoxNjkzNjU5OTAzfQ.JcEc3dXsJIz60xHwVi0oy69U1694RsQYHduBhlrgJSY', 'user', '2023-09-02 13:05:03', '2023-08-18 13:05:03'),
(154, 144, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0NCwibmFtZSI6IkFrc2hheWEiLCJlbWFpbCI6ImFrc2hheWFjci4xMS4wNS4yMDA1QGdtYWlsLmNvbSIsImlhdCI6MTY5MjM2MzkwMywiZXhwIjoxNjk0OTU1OTAzfQ.UJHwGGE63nsD-VsT_np5eECgpFRBqTgEuvJycNa7_Uo', 'user', '2023-09-17 13:05:03', '2023-08-18 13:05:03'),
(155, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjcyNjAsImV4cCI6MTY5MzY2MzI2MH0.WruoWukKbksbPABfpNhzD6PBetL2qE1GN22z_LxoT3o', 'user', '2023-09-02 19:31:00', '2023-08-18 14:01:08'),
(156, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjcyNjAsImV4cCI6MTY5NDk1OTI2MH0.qErbU1vk0W9Csbx6Uq1jdv97GV2rvXzUMTtGhc00XRo', 'user', '2023-09-17 19:31:00', '2023-08-18 14:01:08'),
(157, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjgwNDQsImV4cCI6MTY5MzY2NDA0NH0.SoRQ3E0EwGZy-tLwg6G4MhI2wM3x1HppH6LPxJsdMMk', 'user', '2023-09-02 19:44:04', '2023-08-18 14:14:12'),
(158, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjgwNDQsImV4cCI6MTY5NDk2MDA0NH0.qz6apuFdgACBLNOhn6l2pDwFAAjbf2rtlQOSR0XDcK0', 'user', '2023-09-17 19:44:04', '2023-08-18 14:14:12'),
(159, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjgwNTgsImV4cCI6MTY5MzY2NDA1OH0.3fuJZLRh_KX5XXNTK4MnmboRaf8ySoInlhTM3BFL1BM', 'user', '2023-09-02 19:44:18', '2023-08-18 14:14:26'),
(160, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjgwNTgsImV4cCI6MTY5NDk2MDA1OH0.T-WFLIDTJMswalXsdDfi7tWJtSDBl2ey_wMdwVm6Fc4', 'user', '2023-09-17 19:44:18', '2023-08-18 14:14:26'),
(161, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjgwNTksImV4cCI6MTY5MzY2NDA1OX0.aOTzpNkYWFR9s6eczi30qFIiQWPwSThUn24yRtMrl04', 'user', '2023-09-02 19:44:19', '2023-08-18 14:14:27'),
(162, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjgwNTksImV4cCI6MTY5NDk2MDA1OX0.auFMBu8ZWnNFF3wkHS277z018gbGhaAlHW4soJv-jdk', 'user', '2023-09-17 19:44:19', '2023-08-18 14:14:27'),
(163, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjgzMTMsImV4cCI6MTY5MzY2NDMxM30.tq7NCqfXQHfQOOKZD_fKYll1-Mx9-IUmGvvkmgzPzUw', 'user', '2023-09-02 19:48:33', '2023-08-18 14:18:41'),
(164, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjgzMTMsImV4cCI6MTY5NDk2MDMxM30.lZ1k6w4DYXRsJZ0WhpOG-FVtMB6oz5EjdqsDITsZXOs', 'user', '2023-09-17 19:48:33', '2023-08-18 14:18:41'),
(165, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg1MzgsImV4cCI6MTY5MzY2NDUzOH0.r2oBkcSO-udXRlM0yd82liJ5wCYFg0-ZE345NybSloY', 'user', '2023-09-02 19:52:18', '2023-08-18 14:22:26'),
(166, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg1MzgsImV4cCI6MTY5NDk2MDUzOH0._bfoK3RhT0gAjulMwNO0TAjNTwZrKnFKIugzpYAn4H4', 'user', '2023-09-17 19:52:18', '2023-08-18 14:22:26'),
(167, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg1OTYsImV4cCI6MTY5MzY2NDU5Nn0.Eidy0ZevFNPgsHZdAUtvMc9EsG2y3EO2FCEXL0CyftY', 'user', '2023-09-02 19:53:16', '2023-08-18 14:23:24'),
(168, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg1OTYsImV4cCI6MTY5NDk2MDU5Nn0.cetsQHd4qXurg7X0Pcm_Jx2SExInYjsCF0rR4ZEzjFs', 'user', '2023-09-17 19:53:16', '2023-08-18 14:23:24'),
(169, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg3NDMsImV4cCI6MTY5MzY2NDc0M30.-SArRPeMmrc6luhQJ6aJhX6NcGu7Nt-uWi0hXNHVw10', 'user', '2023-09-02 19:55:43', '2023-08-18 14:25:50'),
(170, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg3NDMsImV4cCI6MTY5NDk2MDc0M30.tBU07hRso-A-zdxcLa-JzHRnujCZr72uhF_KzZrtfaw', 'user', '2023-09-17 19:55:43', '2023-08-18 14:25:50'),
(171, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg4MTAsImV4cCI6MTY5MzY2NDgxMH0.LHvfzN2BUPzlhXS4ohLM4p3Xe2pPLeGBhahCh_H8PaY', 'user', '2023-09-02 19:56:50', '2023-08-18 14:26:58'),
(172, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg4MTAsImV4cCI6MTY5NDk2MDgxMH0.da5JK_hTi0qposbl4szSISBisc0T9HwdcyacYlWNeN0', 'user', '2023-09-17 19:56:50', '2023-08-18 14:26:58'),
(173, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg4MzksImV4cCI6MTY5MzY2NDgzOX0.suPif-7dipkDKq8bJbcIxMmBy8e1p6Zr6DyDcGCeS04', 'user', '2023-09-02 19:57:19', '2023-08-18 14:27:27');
INSERT INTO `Token` (`tokenId`, `userId`, `tokenType`, `token`, `loggedInBy`, `expiresAt`, `createdAt`) VALUES
(174, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg4MzksImV4cCI6MTY5NDk2MDgzOX0.AMhlJvJr7PDjH7YE45WZHW6XSXvt9LhVVfZNdrY4nAk', 'user', '2023-09-17 19:57:19', '2023-08-18 14:27:27'),
(175, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg4NjMsImV4cCI6MTY5MzY2NDg2M30.SHJnlXlf8NnsL37nSOVBZJgHdM7h2Jk8V43XvGL8I90', 'user', '2023-09-02 19:57:43', '2023-08-18 14:27:51'),
(176, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg4NjMsImV4cCI6MTY5NDk2MDg2M30.0a2gfTxC3qbSD8tQ0dZYa4BbKfWhMoe6WIVfpbmsFqM', 'user', '2023-09-17 19:57:43', '2023-08-18 14:27:51'),
(177, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg5MTAsImV4cCI6MTY5MzY2NDkxMH0.5l8sl2eAXlW_Mw6f8CIE_2jTFPxglzkwhXaVI30V_qI', 'user', '2023-09-02 19:58:30', '2023-08-18 14:28:38'),
(178, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg5MTAsImV4cCI6MTY5NDk2MDkxMH0.ZU06BXS_k6IxECt2GlLRtmgbG5opkk9a0h5M9P0DRUM', 'user', '2023-09-17 19:58:30', '2023-08-18 14:28:38'),
(179, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjg5OTMsImV4cCI6MTY5MzY2NDk5M30.kN3cK4Y_1YfYpwAdD4oO43XV8wCHpBjOaEEitvbi4g4', 'user', '2023-09-02 19:59:53', '2023-08-18 14:30:01'),
(180, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjkyMTAsImV4cCI6MTY5MzY2NTIxMH0.wjqXDWFhbsYfTujl6xqkdoaQseVVGl71HIpW8xnD-nQ', 'user', '2023-09-02 14:33:30', '2023-08-18 14:33:30'),
(181, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTIzNjkyMTAsImV4cCI6MTY5NDk2MTIxMH0.X6nh312lPgFNrYcbRAJN3yr2o1GT7qmL5gSiG0F84yY', 'user', '2023-09-17 14:33:30', '2023-08-18 14:33:30'),
(182, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjM3MjY1MSwiZXhwIjoxNjkzNjY4NjUxfQ.4Rn2hmKAhxMgbOeAd9Ubfgk11cAywtLH8Kc5BHRN4xs', 'user', '2023-09-02 15:30:51', '2023-08-18 15:30:51'),
(183, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjM3MjY1MSwiZXhwIjoxNjk0OTY0NjUxfQ.jVOef2UibSIG03CkqsB5vjWibyX2LxE44BCGLdqMYXs', 'user', '2023-09-17 15:30:51', '2023-08-18 15:30:51'),
(184, 146, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0NiwibmFtZSI6IlByaXlhIiwiZW1haWwiOiJkaXZ5YW1hbmkwMDA0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjM3MzYyOCwiZXhwIjoxNjkzNjY5NjI4fQ.pt1Gf1lr4XOgnqO_a5rkuVzlKDfiQ_-Y5wxjze0TsvI', 'user', '2023-09-02 15:47:08', '2023-08-18 15:47:08'),
(185, 146, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0NiwibmFtZSI6IlByaXlhIiwiZW1haWwiOiJkaXZ5YW1hbmkwMDA0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjM3MzYyOCwiZXhwIjoxNjk0OTY1NjI4fQ.ja4S7VVDLnHnvths1IRut9dbuAFcvVZeBdx0i6UQ_-U', 'user', '2023-09-17 15:47:08', '2023-08-18 15:47:08'),
(186, 147, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0NywibmFtZSI6IlNhaGFuYSBLIiwiZW1haWwiOiJzYWhhbmFuaXJtYWxhMDRAZ21haWwuY29tIiwiaWF0IjoxNjkyMzc4OTM3LCJleHAiOjE2OTM2NzQ5Mzd9.fUCd1sESGVWpw0gLngu5Zq0WtSRx3ouVfDpbbCtTreg', 'user', '2023-09-02 17:15:37', '2023-08-18 17:15:37'),
(187, 147, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0NywibmFtZSI6IlNhaGFuYSBLIiwiZW1haWwiOiJzYWhhbmFuaXJtYWxhMDRAZ21haWwuY29tIiwiaWF0IjoxNjkyMzc4OTM3LCJleHAiOjE2OTQ5NzA5Mzd9.9HOAZMhwsd659rQOkkagsisqM5nj3WCMIKTfGzyg-Xs', 'user', '2023-09-17 17:15:37', '2023-08-18 17:15:37'),
(188, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjQ0MTQwMiwiZXhwIjoxNjkzNzM3NDAyfQ.8rR-TN-Egzxosz846QXIvAvt9YRKHoVHjgFN4u2orq4', 'user', '2023-09-03 10:36:42', '2023-08-19 10:36:42'),
(189, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjQ0MTQwMiwiZXhwIjoxNjk1MDMzNDAyfQ.QaoD6tLOFtzNxxzAdhSfTxH1iq2W98u6LaRLhxF-UNk', 'user', '2023-09-18 10:36:42', '2023-08-19 10:36:42'),
(190, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjQ0MjY3MCwiZXhwIjoxNjkzNzM4NjcwfQ.Uv-W1IoVjMeJWRdTVQ7RHp1Db6CfVswZD9_kgRuus30', 'user', '2023-09-03 10:57:50', '2023-08-19 10:57:50'),
(191, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjQ0MjY3MCwiZXhwIjoxNjk1MDM0NjcwfQ.hI7M7faFwUMS3tzi4MXV7p8Z8-TqenNxEh23cGoz5C0', 'user', '2023-09-18 10:57:50', '2023-08-19 10:57:50'),
(192, 150, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MCwibmFtZSI6IlNob2Jpa2EiLCJlbWFpbCI6ImhpbGFyaW91c2NodWJieUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1MzUzNDcsImV4cCI6MTY5MzgzMTM0N30.RgUPiZULChCYeSua0aTc3xQVujIt4ELZIXs64w46rcQ', 'user', '2023-09-04 12:42:27', '2023-08-20 12:42:27'),
(193, 150, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MCwibmFtZSI6IlNob2Jpa2EiLCJlbWFpbCI6ImhpbGFyaW91c2NodWJieUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1MzUzNDcsImV4cCI6MTY5NTEyNzM0N30.SSal-VlE6z2JPTKWxsJOQmbQoUDci1vGfYONIx3RoZo', 'user', '2023-09-19 12:42:27', '2023-08-20 12:42:27'),
(194, 150, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MCwibmFtZSI6IlNob2Jpa2EiLCJlbWFpbCI6ImhpbGFyaW91c2NodWJieUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1MzUzNDcsImV4cCI6MTY5MzgzMTM0N30.RgUPiZULChCYeSua0aTc3xQVujIt4ELZIXs64w46rcQ', 'user', '2023-09-04 12:42:27', '2023-08-20 12:42:27'),
(195, 150, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MCwibmFtZSI6IlNob2Jpa2EiLCJlbWFpbCI6ImhpbGFyaW91c2NodWJieUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1MzUzNDcsImV4cCI6MTY5NTEyNzM0N30.SSal-VlE6z2JPTKWxsJOQmbQoUDci1vGfYONIx3RoZo', 'user', '2023-09-19 12:42:27', '2023-08-20 12:42:27'),
(196, 151, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MSwibmFtZSI6Ik5pdGhpbiIsImVtYWlsIjoibml0aGluZmFsY285M0BnbWFpbC5jb20iLCJpYXQiOjE2OTI1NDIwOTEsImV4cCI6MTY5MzgzODA5MX0.vrBFd_8ty6tF0fZh3gHjufz-fKA2E30QVKYeojdM8Wg', 'user', '2023-09-04 14:34:51', '2023-08-20 14:34:51'),
(197, 151, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MSwibmFtZSI6Ik5pdGhpbiIsImVtYWlsIjoibml0aGluZmFsY285M0BnbWFpbC5jb20iLCJpYXQiOjE2OTI1NDIwOTEsImV4cCI6MTY5NTEzNDA5MX0.tl1D0x5j7XsoX0TZenJKYJFt2ApmljTA-Z7-uR6SC8Q', 'user', '2023-09-19 14:34:51', '2023-08-20 14:34:51'),
(198, 14, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkyNTQyNjY4LCJleHAiOjE2OTM4Mzg2Njh9.3-BSdu-L4TjIduSurRWy32MqBqsOU8IHXeq1y3zHxeI', 'user', '2023-09-04 14:44:28', '2023-08-20 14:44:28'),
(199, 14, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkyNTQyNjY4LCJleHAiOjE2OTUxMzQ2Njh9.8X6Ada6sGrujmeuULZhYCO0tGWk0YBOPcFXSai334uc', 'user', '2023-09-19 14:44:28', '2023-08-20 14:44:28'),
(200, 5, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsIm5hbWUiOiJuYWdhdmFsbGkgcyIsImVtYWlsIjoibmFndWt1bWFyODUyQGdtYWlsLmNvbSIsImlhdCI6MTY5MjU0MzA3MiwiZXhwIjoxNjkzODM5MDcyfQ.ymS1G6eIg4CGu4EsN20E0XSQQFUCTgC0B-okBRz_O70', 'user', '2023-09-04 14:51:12', '2023-08-20 14:51:12'),
(201, 5, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsIm5hbWUiOiJuYWdhdmFsbGkgcyIsImVtYWlsIjoibmFndWt1bWFyODUyQGdtYWlsLmNvbSIsImlhdCI6MTY5MjU0MzA3MiwiZXhwIjoxNjk1MTM1MDcyfQ.wQe0VuKcRVPkmB3oFgHXw1s7-8EbakSl3aFrX6yPzXA', 'user', '2023-09-19 14:51:12', '2023-08-20 14:51:12'),
(202, 5, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsIm5hbWUiOiJuYWdhdmFsbGkgcyIsImVtYWlsIjoibmFndWt1bWFyODUyQGdtYWlsLmNvbSIsImlhdCI6MTY5MjU0MzA3MywiZXhwIjoxNjkzODM5MDczfQ.Q7IlhUEnJzPHsCSY3SNzGtyJOlF5LGYn-Psz1VddMeQ', 'user', '2023-09-04 14:51:13', '2023-08-20 14:51:13'),
(203, 5, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsIm5hbWUiOiJuYWdhdmFsbGkgcyIsImVtYWlsIjoibmFndWt1bWFyODUyQGdtYWlsLmNvbSIsImlhdCI6MTY5MjU0MzA3MywiZXhwIjoxNjk1MTM1MDczfQ.yP21QSVQlm-C4C20vIP3S6-GwVQ6hgx7h8Uywxt8Zr8', 'user', '2023-09-19 14:51:13', '2023-08-20 14:51:13'),
(204, 28, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI4LCJuYW1lIjoiSkVST01FIFAiLCJlbWFpbCI6ImJoYXJhdGhqZXJvMjcwNUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NDU2MjAsImV4cCI6MTY5Mzg0MTYyMH0.CGDtdOjCEAiZThwEkq-vCuz4E3EtUrLS5rL4fs8gHv0', 'user', '2023-09-04 15:33:40', '2023-08-20 15:33:40'),
(205, 28, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI4LCJuYW1lIjoiSkVST01FIFAiLCJlbWFpbCI6ImJoYXJhdGhqZXJvMjcwNUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NDU2MjAsImV4cCI6MTY5NTEzNzYyMH0.sdeNit1XB8RNYkm2Qw-LKSAcVkOZ5-T4OzWxtOtPvDA', 'user', '2023-09-19 15:33:40', '2023-08-20 15:33:40'),
(206, 28, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI4LCJuYW1lIjoiSkVST01FIFAiLCJlbWFpbCI6ImJoYXJhdGhqZXJvMjcwNUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NDU2MjEsImV4cCI6MTY5Mzg0MTYyMX0.c190J5hR74eXLrvE8B8qCnx5ckNnQcMJq59oMe7hqQw', 'user', '2023-09-04 15:33:41', '2023-08-20 15:33:41'),
(207, 28, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI4LCJuYW1lIjoiSkVST01FIFAiLCJlbWFpbCI6ImJoYXJhdGhqZXJvMjcwNUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NDU2MjEsImV4cCI6MTY5NTEzNzYyMX0.AMBYlGBRESGxoIi7Z0qMdbBpM1f9i5uxuLkbQloe3g4', 'user', '2023-09-19 15:33:41', '2023-08-20 15:33:41'),
(208, 152, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MiwibmFtZSI6IlNob3dtaW5pICIsImVtYWlsIjoic2hvd21pbmlhbW11MjEwOEBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NDc5MzEsImV4cCI6MTY5Mzg0MzkzMX0.3_txxcy-dY9FxSGUX9slYoDX-Pg4Rd60RrvKvMzfos4', 'user', '2023-09-04 16:12:11', '2023-08-20 16:12:11'),
(209, 152, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MiwibmFtZSI6IlNob3dtaW5pICIsImVtYWlsIjoic2hvd21pbmlhbW11MjEwOEBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NDc5MzEsImV4cCI6MTY5NTEzOTkzMX0.XjHajLIDskU43TIcw3ZdP5wcHZhmCP2vB1Iw-Y-3OMM', 'user', '2023-09-19 16:12:11', '2023-08-20 16:12:11'),
(210, 153, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MywibmFtZSI6IkFubmUgTW9uaWNhICIsImVtYWlsIjoiYW5uZW1vbmljYTEyNEBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NTQzMTIsImV4cCI6MTY5Mzg1MDMxMn0.sLPYOFWZm9ukXXDeb3Uiyjd2NA5WQ9cu_ao0yDSE8ow', 'user', '2023-09-04 17:58:32', '2023-08-20 17:58:32'),
(211, 153, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MywibmFtZSI6IkFubmUgTW9uaWNhICIsImVtYWlsIjoiYW5uZW1vbmljYTEyNEBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NTQzMTIsImV4cCI6MTY5NTE0NjMxMn0.4D2_HgKiW3hcKljamAtqWP8teVLjwB5bgUQOBl_NoPs', 'user', '2023-09-19 17:58:32', '2023-08-20 17:58:32'),
(212, 74, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NTU4NTAsImV4cCI6MTY5Mzg1MTg1MH0._fDETV4_ipZ3c5k0yIjTIPWShPgv7_B4iZ9BOJxKlN0', 'user', '2023-09-04 18:24:10', '2023-08-20 18:24:10'),
(213, 74, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NTU4NTAsImV4cCI6MTY5NTE0Nzg1MH0.8WkDAvI5aDvrrbYgps_55OfJUzv12l8kmix-8hrVkoU', 'user', '2023-09-19 18:24:10', '2023-08-20 18:24:10'),
(214, 74, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NTU5NDQsImV4cCI6MTY5Mzg1MTk0NH0.VoKIMiet8eMyDyuhTe64IeGWdFeoRJt1HmMwcprO-P4', 'user', '2023-09-04 18:25:44', '2023-08-20 18:25:44'),
(215, 74, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc0LCJuYW1lIjoiR29rdWwgIiwiZW1haWwiOiJnb2Nvb2xyekBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NTU5NDQsImV4cCI6MTY5NTE0Nzk0NH0.xLEvHaxfCkFIe2M4M1EKu6N_75v-3yJS9SALrqCq0Lg', 'user', '2023-09-19 18:25:44', '2023-08-20 18:25:44'),
(216, 119, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExOSwibmFtZSI6IlNBS1RISSBIQVJJSEFSQSBQUkFCSFUiLCJlbWFpbCI6InNha3RoaWhhcmlzaDQ5OUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NjYwMjMsImV4cCI6MTY5Mzg2MjAyM30.yblEu1gp4V4C88BJK3pRZ1AnHL_PfkxbJXC7k6FyhPM', 'user', '2023-09-04 21:13:43', '2023-08-20 21:13:43'),
(217, 119, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExOSwibmFtZSI6IlNBS1RISSBIQVJJSEFSQSBQUkFCSFUiLCJlbWFpbCI6InNha3RoaWhhcmlzaDQ5OUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NjYwMjMsImV4cCI6MTY5NTE1ODAyM30.4o9humKRcO0Lu6ZadY1AlDAOSux14n4ls7YRq9Pgg1M', 'user', '2023-09-19 21:13:43', '2023-08-20 21:13:43'),
(218, 154, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1NCwibmFtZSI6IkNocmlzdHkgQW5nZWxpbmUiLCJlbWFpbCI6ImNocmlzdHlhbmdlbGluZTcxOUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NzY3MDcsImV4cCI6MTY5Mzg3MjcwN30.oRWJau9MEF81uRHG7IpV43fk8saH-RTnIFW4mBBSS44', 'user', '2023-09-05 00:11:47', '2023-08-21 00:11:47'),
(219, 154, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1NCwibmFtZSI6IkNocmlzdHkgQW5nZWxpbmUiLCJlbWFpbCI6ImNocmlzdHlhbmdlbGluZTcxOUBnbWFpbC5jb20iLCJpYXQiOjE2OTI1NzY3MDcsImV4cCI6MTY5NTE2ODcwN30.EaK4jzeE9dyJO_dOqotAW2AvQ9vnMMvfCp-u5VdNz9Q', 'user', '2023-09-20 00:11:47', '2023-08-21 00:11:47'),
(220, 155, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1NSwibmFtZSI6IlZpc2hudSAiLCJlbWFpbCI6Imhvd3J1MDEzQGdtYWlsLmNvbSIsImlhdCI6MTY5MjU4MzExNSwiZXhwIjoxNjkzODc5MTE1fQ.VW9Jb65xixq8VfMaWVmuGvJbo1rAdV3jUsKWjhsCNm8', 'user', '2023-09-05 01:58:35', '2023-08-21 01:58:34'),
(221, 155, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1NSwibmFtZSI6IlZpc2hudSAiLCJlbWFpbCI6Imhvd3J1MDEzQGdtYWlsLmNvbSIsImlhdCI6MTY5MjU4MzExNSwiZXhwIjoxNjk1MTc1MTE1fQ.GXIBgfTJB69r6CnuLryQSi4s7DzE83WaEq7Ea860XDo', 'user', '2023-09-20 01:58:35', '2023-08-21 01:58:34'),
(222, 156, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1NiwibmFtZSI6IktyaXNobmFyYWogIiwiZW1haWwiOiJrcjQ4MDIyQGdtYWlsLmNvbSIsImlhdCI6MTY5MjU4NTMxMCwiZXhwIjoxNjkzODgxMzEwfQ.zgd0OjV1IQoUBG6ep1nn7i2mR4MP_prvQk_RfJ_YO6U', 'user', '2023-09-05 02:35:10', '2023-08-21 02:35:10'),
(223, 156, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1NiwibmFtZSI6IktyaXNobmFyYWogIiwiZW1haWwiOiJrcjQ4MDIyQGdtYWlsLmNvbSIsImlhdCI6MTY5MjU4NTMxMCwiZXhwIjoxNjk1MTc3MzEwfQ.W5QDO0mxQ2oL4orI1esSZp4gKQITkq4M-dywyBEhZgw', 'user', '2023-09-20 02:35:10', '2023-08-21 02:35:10'),
(224, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjU4Njc4OCwiZXhwIjoxNjkzODgyNzg4fQ.jCObf1dMLuBnMkGNfbtqZ9mgJBUm3m9jgyz1ANXx6lU', 'user', '2023-09-05 08:29:48', '2023-08-21 02:59:50'),
(225, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjU4Njc4OCwiZXhwIjoxNjk1MTc4Nzg4fQ.Z8NA2IPYO-YjHFtCwKDfB1GiBJexrfZtBE92c6VL4pQ', 'user', '2023-09-20 08:29:48', '2023-08-21 02:59:50'),
(226, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjU4NzE0MSwiZXhwIjoxNjkzODgzMTQxfQ.jRZSsQjnnQSfuwEUPnSzBda9_Ws5ub5S-ekne89b9NM', 'user', '2023-09-05 08:35:41', '2023-08-21 03:05:43'),
(227, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjU4NzE0MSwiZXhwIjoxNjk1MTc5MTQxfQ.cK7PnwjNb-brKdWhDV4TK7fij-pzhFHk0xN2Mrx2WhY', 'user', '2023-09-20 08:35:41', '2023-08-21 03:05:43'),
(228, 157, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1NywibmFtZSI6IkFydW5wcmFzYXRoIiwiZW1haWwiOiJwcmFzYXRoYXJ1bjA2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTI2MDY0MzIsImV4cCI6MTY5MzkwMjQzMn0.aTJLfaBWA1O849dyeGKvfUdCWIra2ZXG-nkIG_Kyk14', 'user', '2023-09-05 08:27:12', '2023-08-21 08:27:12'),
(229, 157, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1NywibmFtZSI6IkFydW5wcmFzYXRoIiwiZW1haWwiOiJwcmFzYXRoYXJ1bjA2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTI2MDY0MzIsImV4cCI6MTY5NTE5ODQzMn0.ulPg143yYqaFnyrG7fnsBpQSdN9XcOB6KO6MSoZ8VVg', 'user', '2023-09-20 08:27:12', '2023-08-21 08:27:12'),
(230, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTI2MjI0MTMsImV4cCI6MTY5MzkxODQxM30.Lo41iQKrmqx9nY_B_NcBLdNmARxb0Ghvc1A0UttOmFw', 'user', '2023-09-05 12:53:33', '2023-08-21 12:53:33'),
(231, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTI2MjI0MTMsImV4cCI6MTY5NTIxNDQxM30.v04amdSHwbwzpjRg73pmTVZNCoXEqLspS8PBdQbi3Aw', 'user', '2023-09-20 12:53:33', '2023-08-21 12:53:33'),
(232, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTI2MjI0MTQsImV4cCI6MTY5MzkxODQxNH0.-CVZBRdRau75exCJH9tYkn25JdARlhgnU7p-g9g99aY', 'user', '2023-09-05 12:53:34', '2023-08-21 12:53:34'),
(233, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTI2MjI0MTQsImV4cCI6MTY5NTIxNDQxNH0.YHOdbZNP6aiiPty2aWtEj7OKWq00jM211vDPvwxyE3c', 'user', '2023-09-20 12:53:34', '2023-08-21 12:53:34'),
(234, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjcxMzg2MiwiZXhwIjoxNjk0MDA5ODYyfQ._0j3GpbXsLmAQ8gviSEc3iW8rxB1_LLhrjPYBTdu6hE', 'user', '2023-09-06 14:17:42', '2023-08-22 14:17:42'),
(235, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MjcxMzg2MiwiZXhwIjoxNjk1MzA1ODYyfQ.j80ZOTluA2-0BqLJXxTE5UW5adVe-stOwmpHN6_CQ-Y', 'user', '2023-09-21 14:17:42', '2023-08-22 14:17:42'),
(236, 4, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkyNzIzMDc4LCJleHAiOjE2OTQwMTkwNzh9.7Z4EgGMmC_5ptMuPLUXqiywEYbCiGUtpJvKbIErG5WM', 'user', '2023-09-06 16:51:18', '2023-08-22 16:51:18'),
(237, 4, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJWaWduZXNoICIsImVtYWlsIjoidmlnbmVzaGFyaXZhemhhZ2FuMjJAZ21haWwuY29tIiwiaWF0IjoxNjkyNzIzMDc4LCJleHAiOjE2OTUzMTUwNzh9.c2qwkCjmnMLYk3eGfWm062dIUZzke2bUTi6aWA2MjoQ', 'user', '2023-09-21 16:51:18', '2023-08-22 16:51:18'),
(238, 158, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1OCwibmFtZSI6IlNhdGhpc2ggIiwiZW1haWwiOiJzYXRoaXNocHMxOTk4QGdtYWlsLmNvbSIsImlhdCI6MTY5MjcyNjUwNywiZXhwIjoxNjk0MDIyNTA3fQ.5hp1v0SFD9XVYNk9G4QXWWyrAUX80q1VpX4vyj4N7Mc', 'user', '2023-09-06 17:48:27', '2023-08-22 17:48:27'),
(239, 158, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1OCwibmFtZSI6IlNhdGhpc2ggIiwiZW1haWwiOiJzYXRoaXNocHMxOTk4QGdtYWlsLmNvbSIsImlhdCI6MTY5MjcyNjUwNywiZXhwIjoxNjk1MzE4NTA3fQ.AJ6NwMpihgegaZsoPre3ZeNvAyhP9XbEManvFCVunRE', 'user', '2023-09-21 17:48:27', '2023-08-22 17:48:27'),
(240, 159, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1OSwibmFtZSI6IlNhYmFyaSIsImVtYWlsIjoic2FiYXJpdmFzYW5wczQyMTVAZ21haWwuY29tIiwiaWF0IjoxNjkyNzUwOTg5LCJleHAiOjE2OTQwNDY5ODl9.AJeobWCRCW44OGFrXyW_JIL3FiIv3C6EMUtY38wyKVE', 'user', '2023-09-07 00:36:29', '2023-08-23 00:36:29'),
(241, 159, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1OSwibmFtZSI6IlNhYmFyaSIsImVtYWlsIjoic2FiYXJpdmFzYW5wczQyMTVAZ21haWwuY29tIiwiaWF0IjoxNjkyNzUwOTg5LCJleHAiOjE2OTUzNDI5ODl9.vnV9CmrLa0aSGNr_a-mp8MlaRmTDAmiGyr4gt93CK6o', 'user', '2023-09-22 00:36:29', '2023-08-23 00:36:29'),
(242, 160, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MCwibmFtZSI6IlNhbmRoaXlhICIsImVtYWlsIjoic2FuZGhpeWFzYW5rYXI1MUBnbWFpbC5jb20iLCJpYXQiOjE2OTI3NTY5MDksImV4cCI6MTY5NDA1MjkwOX0.oQVaAbsmba8kvLVNeAjiz9PMe2zriAWzZFaWVBbJ4ZA', 'user', '2023-09-07 02:15:09', '2023-08-23 02:15:09'),
(243, 160, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MCwibmFtZSI6IlNhbmRoaXlhICIsImVtYWlsIjoic2FuZGhpeWFzYW5rYXI1MUBnbWFpbC5jb20iLCJpYXQiOjE2OTI3NTY5MDksImV4cCI6MTY5NTM0ODkwOX0.xuLqyFLfZU2IQHicXxByPun4SBnqt6ynuqAWGAkr9xA', 'user', '2023-09-22 02:15:09', '2023-08-23 02:15:09'),
(244, 160, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MCwibmFtZSI6IlNhbmRoaXlhICIsImVtYWlsIjoic2FuZGhpeWFzYW5rYXI1MUBnbWFpbC5jb20iLCJpYXQiOjE2OTI3NTcwMDUsImV4cCI6MTY5NDA1MzAwNX0.uIEeWWrDQ5Dxkx6pzFGT7sAEwCusPzeQhVszICbF0Xw', 'user', '2023-09-07 02:16:45', '2023-08-23 02:16:45'),
(245, 160, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MCwibmFtZSI6IlNhbmRoaXlhICIsImVtYWlsIjoic2FuZGhpeWFzYW5rYXI1MUBnbWFpbC5jb20iLCJpYXQiOjE2OTI3NTcwMDUsImV4cCI6MTY5NTM0OTAwNX0.vtFpLIU7y-CMXDkEoVsm8WMGSwGMQpW0b6pV-2HBguY', 'user', '2023-09-22 02:16:45', '2023-08-23 02:16:45'),
(246, 161, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MSwibmFtZSI6IkphbmFraSIsImVtYWlsIjoiamFuYWtpcmFuZ2Fzd2FtaTc0QGdtYWlsLmNvbSIsImlhdCI6MTY5Mjc2MzE2OCwiZXhwIjoxNjk0MDU5MTY4fQ.uXLvo8-rDBTA4PwkWwLy7K9506l-b2kt5GTi1IIST0o', 'user', '2023-09-07 03:59:28', '2023-08-23 03:59:28'),
(247, 161, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MSwibmFtZSI6IkphbmFraSIsImVtYWlsIjoiamFuYWtpcmFuZ2Fzd2FtaTc0QGdtYWlsLmNvbSIsImlhdCI6MTY5Mjc2MzE2OCwiZXhwIjoxNjk1MzU1MTY4fQ.z5jfOWzfQ92lB44uCSXh1v6OMR-dFng5mj0cEx9mlEM', 'user', '2023-09-22 03:59:28', '2023-08-23 03:59:28'),
(248, 108, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkyNzg4Mzg1LCJleHAiOjE2OTQwODQzODV9.Of5A4KIjfOrOc9fzRU1-4pgtCu5URfvgg9VxBjhf_vQ', 'user', '2023-09-07 10:59:45', '2023-08-23 10:59:45'),
(249, 108, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkyNzg4Mzg1LCJleHAiOjE2OTUzODAzODV9.RAsvUVpGjl1xFnS9IELtHsYTG5U04gvyUnKvG7QB7G8', 'user', '2023-09-22 10:59:45', '2023-08-23 10:59:45'),
(250, 108, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkyNzg4Mzg1LCJleHAiOjE2OTQwODQzODV9.Of5A4KIjfOrOc9fzRU1-4pgtCu5URfvgg9VxBjhf_vQ', 'user', '2023-09-07 10:59:45', '2023-08-23 10:59:45'),
(251, 108, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwOCwibmFtZSI6IkFyYXZpbmRhbiBFIiwiZW1haWwiOiJhcmF2aW5kYW5hcmF2aW5kYW40ODRAZ21haWwuY29tIiwiaWF0IjoxNjkyNzg4Mzg1LCJleHAiOjE2OTUzODAzODV9.RAsvUVpGjl1xFnS9IELtHsYTG5U04gvyUnKvG7QB7G8', 'user', '2023-09-22 10:59:45', '2023-08-23 10:59:45'),
(252, 93, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkzLCJuYW1lIjoiRkVMSVgiLCJlbWFpbCI6ImZlbGl4aWNlMTc0QGdtYWlsLmNvbSIsImlhdCI6MTY5Mjc5OTIwOSwiZXhwIjoxNjk0MDk1MjA5fQ.ln56eqjhPi6SRA_CyL8NoRaWivO4zSHahTA6Xw0dmhw', 'user', '2023-09-07 14:00:09', '2023-08-23 14:00:09'),
(253, 93, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkzLCJuYW1lIjoiRkVMSVgiLCJlbWFpbCI6ImZlbGl4aWNlMTc0QGdtYWlsLmNvbSIsImlhdCI6MTY5Mjc5OTIwOSwiZXhwIjoxNjk1MzkxMjA5fQ.y_Qs2fE4eq9wOhZPF62JBmSK1NR_Kk8TPRJ-QxXjLdE', 'user', '2023-09-22 14:00:09', '2023-08-23 14:00:09'),
(254, 118, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExOCwibmFtZSI6IkdheWF0aHJpIFRoYW5nYXZlbCAiLCJlbWFpbCI6ImdheWF0aHJpdGhhbmdhdmVsMTkxMEBnbWFpbC5jb20iLCJpYXQiOjE2OTI5NzExMjQsImV4cCI6MTY5NDI2NzEyNH0.0y1Q28kN8C8sB2qY1sVCXyWiQvkn2DQRNXGkq2i8aUE', 'user', '2023-09-09 13:45:24', '2023-08-25 13:45:24'),
(255, 118, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExOCwibmFtZSI6IkdheWF0aHJpIFRoYW5nYXZlbCAiLCJlbWFpbCI6ImdheWF0aHJpdGhhbmdhdmVsMTkxMEBnbWFpbC5jb20iLCJpYXQiOjE2OTI5NzExMjQsImV4cCI6MTY5NTU2MzEyNH0.aAT2VQAsiZQkOmmnImjBxfI98D5_fBC2y_2Lm0dUiHo', 'user', '2023-09-24 13:45:24', '2023-08-25 13:45:24'),
(256, 162, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MiwibmFtZSI6IkFydWxhbmFudGhhbSB0IiwiZW1haWwiOiJhcnVsYW5hbnRoYW1yYXZpNDc3MjNAZ21haWwuY29tIiwiaWF0IjoxNjkyOTgzMzc5LCJleHAiOjE2OTQyNzkzNzl9.uJGpJ6fR1IX_nvAtXJ7x6QdNZ39C-h_MCtZsGpjKGOw', 'user', '2023-09-09 17:09:39', '2023-08-25 17:09:39'),
(257, 162, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MiwibmFtZSI6IkFydWxhbmFudGhhbSB0IiwiZW1haWwiOiJhcnVsYW5hbnRoYW1yYXZpNDc3MjNAZ21haWwuY29tIiwiaWF0IjoxNjkyOTgzMzc5LCJleHAiOjE2OTU1NzUzNzl9.aYzpjb-Wav09KvmvPIWuEmauLx_h4ee4zPxqLmsbxa8', 'user', '2023-09-24 17:09:39', '2023-08-25 17:09:39'),
(258, 32, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5MzAyNTQ0OSwiZXhwIjoxNjk0MzIxNDQ5fQ.q6dKArYBOF3FoZwAJPhCqVturTd1xUx1lM4gxBrSId4', 'user', '2023-09-10 04:50:49', '2023-08-26 04:50:49'),
(259, 32, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5MzAyNTQ0OSwiZXhwIjoxNjk1NjE3NDQ5fQ.ZySEdqvom6gqsDBHI_tV0F5ES-GM8N5KQRGNiVGLr6M', 'user', '2023-09-25 04:50:49', '2023-08-26 04:50:49'),
(260, 45, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ1LCJuYW1lIjoiVnl6c2hhbGkgIiwiZW1haWwiOiJ2eXNodXZlbmthdGVzYW5AZ21haWwuY29tIiwiaWF0IjoxNjkzMDI1ODM0LCJleHAiOjE2OTQzMjE4MzR9.XSmC4rk3xZu05N-ZKRB4HuGjUdWnE1pwbZr_XEusMEQ', 'user', '2023-09-10 04:57:14', '2023-08-26 04:57:14'),
(261, 45, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQ1LCJuYW1lIjoiVnl6c2hhbGkgIiwiZW1haWwiOiJ2eXNodXZlbmthdGVzYW5AZ21haWwuY29tIiwiaWF0IjoxNjkzMDI1ODM0LCJleHAiOjE2OTU2MTc4MzR9.4vRJvC2YKicWBfvVwvMAO49e_hyHV_qL2bhjoU2a9s8', 'user', '2023-09-25 04:57:14', '2023-08-26 04:57:14'),
(262, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwMzUzMTMsImV4cCI6MTY5NDMzMTMxM30.GPt0ggw94glemvMk01E-Va-6OIwm7CBZkuXXg-GG_fA', 'user', '2023-09-10 07:35:13', '2023-08-26 07:35:13'),
(263, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwMzUzMTMsImV4cCI6MTY5NTYyNzMxM30.rkCc9ncp60TDremz-FxL3-tf6ojz1_8cqOyEYWXEFvY', 'user', '2023-09-25 07:35:13', '2023-08-26 07:35:13'),
(264, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwMzUzMjIsImV4cCI6MTY5NDMzMTMyMn0.WZN5P06OmpAakbjKwo5EAaYpoh35M9IFhTuwLxzgnDU', 'user', '2023-09-10 07:35:22', '2023-08-26 07:35:22'),
(265, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwMzUzMjIsImV4cCI6MTY5NTYyNzMyMn0.53rMN5AgoPjoX_okL8t_ieDCUt_Xq-Rjx0pTliKn1Bs', 'user', '2023-09-25 07:35:22', '2023-08-26 07:35:22'),
(266, 163, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MywibmFtZSI6IkpBTkFOSSBBIiwiZW1haWwiOiJhamFuYW5pMDkwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwMzk3NzIsImV4cCI6MTY5NDMzNTc3Mn0.ik4xHFC07VJyfHSFTF2Etdjp7rslWNa4JGcUzg9tRfA', 'user', '2023-09-10 08:49:32', '2023-08-26 08:49:32'),
(267, 163, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MywibmFtZSI6IkpBTkFOSSBBIiwiZW1haWwiOiJhamFuYW5pMDkwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwMzk3NzIsImV4cCI6MTY5NTYzMTc3Mn0.HoQv6oeSZmQ35qdbzJPaM3XzyX-PdBoHqDouksfmK6c', 'user', '2023-09-25 08:49:32', '2023-08-26 08:49:32'),
(268, 163, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MywibmFtZSI6IkpBTkFOSSBBIiwiZW1haWwiOiJhamFuYW5pMDkwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwMzk5MTIsImV4cCI6MTY5NDMzNTkxMn0.5AtAZh2gZrcTsqpHx2jyL3uuONzzuLmOcFqTm9ck-bU', 'user', '2023-09-10 08:51:52', '2023-08-26 08:51:52'),
(269, 163, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2MywibmFtZSI6IkpBTkFOSSBBIiwiZW1haWwiOiJhamFuYW5pMDkwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwMzk5MTIsImV4cCI6MTY5NTYzMTkxMn0.6IgHU0Rh_zmCaq-P0OTZnGloRJT_oQe8m1Bbr1bnvqc', 'user', '2023-09-25 08:51:52', '2023-08-26 08:51:52'),
(270, 164, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2NCwibmFtZSI6IlZJTUFMQSBOIiwiZW1haWwiOiJ2aW1hbGE0MjIwMDFAZ21haWwuY29tIiwiaWF0IjoxNjkzMDQ5MTM1LCJleHAiOjE2OTQzNDUxMzV9.76wKsG66mLr_MbUNiuUrQwMvuOXA2G37rd5GZFv4DYw', 'user', '2023-09-10 11:25:35', '2023-08-26 11:25:35'),
(271, 164, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2NCwibmFtZSI6IlZJTUFMQSBOIiwiZW1haWwiOiJ2aW1hbGE0MjIwMDFAZ21haWwuY29tIiwiaWF0IjoxNjkzMDQ5MTM1LCJleHAiOjE2OTU2NDExMzV9.z5sKaWH_fp3z-75Vqqbu2ahwG7IHkdKCj3NAYVRajTc', 'user', '2023-09-25 11:25:35', '2023-08-26 11:25:35'),
(272, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzA3ODM5OCwiZXhwIjoxNjk0Mzc0Mzk4fQ.at4Ayk5OLtHu3e6F_gaFg0EgYWPVlfyd8yALUOxeG9c', 'user', '2023-09-10 19:33:18', '2023-08-26 19:33:18'),
(273, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzA3ODM5OCwiZXhwIjoxNjk1NjcwMzk4fQ.BO56zC9e3IU8Jygf3fGpnNHPw_ojkkzgG3RLvTtswoo', 'user', '2023-09-25 19:33:18', '2023-08-26 19:33:18'),
(274, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwNzg2ODgsImV4cCI6MTY5NDM3NDY4OH0.vy9bO52gmmFOtWgHAhNZ5j71VXSGQ4rw_7yPJ87yeQY', 'user', '2023-09-10 19:38:08', '2023-08-26 19:38:08'),
(275, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwNzg2ODgsImV4cCI6MTY5NTY3MDY4OH0.mGOjuyKUYQpLiuxBp2q4ee0bp0ewN9lwAfzTn3IPpRA', 'user', '2023-09-25 19:38:08', '2023-08-26 19:38:08'),
(276, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwNzg2ODksImV4cCI6MTY5NDM3NDY4OX0.DOmDU-mYCHmVg-7y6qR4eutP1VoKrHaokitf3RoiqtA', 'user', '2023-09-10 19:38:09', '2023-08-26 19:38:09'),
(277, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMwNzg2ODksImV4cCI6MTY5NTY3MDY4OX0.TuK3AOjZMofG16orJhHbzvktQfnR4CeMsJ5F0R5SXKc', 'user', '2023-09-25 19:38:09', '2023-08-26 19:38:09'),
(278, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzA3ODc2MCwiZXhwIjoxNjk0Mzc0NzYwfQ.jiOooEf-VqczyTfVezpDciq7B7y_xX9YhmRjLwQL9UA', 'user', '2023-09-10 19:39:20', '2023-08-26 19:39:20'),
(279, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzA3ODc2MCwiZXhwIjoxNjk1NjcwNzYwfQ.ds3ygexrCuof0unvb-qFl1j06iA4Qhin0H0Mfk5-8BY', 'user', '2023-09-25 19:39:20', '2023-08-26 19:39:20'),
(280, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzA4MTUxNiwiZXhwIjoxNjk0Mzc3NTE2fQ.-TKplw4UtMOQvC2qlQ7h8GKl8quGTtVYFbKcCdf9jcM', 'user', '2023-09-10 20:25:16', '2023-08-26 20:25:16'),
(281, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzA4MTUxNiwiZXhwIjoxNjk1NjczNTE2fQ.rujyL3VWFmBkKnNLJVcgX-Ysvmgd-89wh45qX4lMUpM', 'user', '2023-09-25 20:25:16', '2023-08-26 20:25:16'),
(282, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxMDc1MDEsImV4cCI6MTY5NDQwMzUwMX0.JwAvjmZjzcga5mYLmWJskhHhpTkAeIa1e3x2_ydxbSg', 'user', '2023-09-11 03:38:21', '2023-08-27 03:38:21'),
(283, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxMDc1MDEsImV4cCI6MTY5NTY5OTUwMX0.mqNW6T8lYnw3L2GoErTuAIk1lsOWx_AwArifiF8Opt0', 'user', '2023-09-26 03:38:21', '2023-08-27 03:38:21'),
(284, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxMDc1MDIsImV4cCI6MTY5NDQwMzUwMn0.O9iwPNazNM1BDMKNI6wW39AVtJ_fHDCbMUHR2fE5-O4', 'user', '2023-09-11 03:38:22', '2023-08-27 03:38:22'),
(285, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxMDc1MDIsImV4cCI6MTY5NTY5OTUwMn0.rzeBE4sk2ClAz818_jPuFT6MC0cYAy2c50AQr5ngDJ8', 'user', '2023-09-26 03:38:22', '2023-08-27 03:38:22'),
(286, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzExMjc1MCwiZXhwIjoxNjk0NDA4NzUwfQ.AMmYeluU8cdAYsC2dYC_dwzmkvXTiSSYScKeSb4Er4I', 'user', '2023-09-11 05:05:50', '2023-08-27 05:05:50'),
(287, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzExMjc1MCwiZXhwIjoxNjk1NzA0NzUwfQ.fazqL1xTbmweo49knLvCjru1BOuIFBpbuB4Wun0Zjgo', 'user', '2023-09-26 05:05:50', '2023-08-27 05:05:50'),
(288, 167, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2NywibmFtZSI6IlNhbmp1ICIsImVtYWlsIjoic2Fuaml2djIwYmN0MDM4QHNrYXNjLmFjLmluIiwiaWF0IjoxNjkzMTE0NzEzLCJleHAiOjE2OTQ0MTA3MTN9.mgj1iNSj9bmGPKzBlzihtQFH881K8GP2grXsHuy0M-U', 'user', '2023-09-11 05:38:33', '2023-08-27 05:38:33'),
(289, 167, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2NywibmFtZSI6IlNhbmp1ICIsImVtYWlsIjoic2Fuaml2djIwYmN0MDM4QHNrYXNjLmFjLmluIiwiaWF0IjoxNjkzMTE0NzEzLCJleHAiOjE2OTU3MDY3MTN9.LPbEG6o1sZ9cTPuiPJybYciZUaJ6txxiOCzeR2myZFw', 'user', '2023-09-26 05:38:33', '2023-08-27 05:38:33'),
(290, 168, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2OCwibmFtZSI6IkJBUkFOSVNIIiwiZW1haWwiOiJiYXJhbmlzaGs1OEBnbWFpbC5jb20iLCJpYXQiOjE2OTMxMTQ5NDEsImV4cCI6MTY5NDQxMDk0MX0.UDkasdylN1cCfzz6nys21Z1Mun9GisynxuBudIi0LFI', 'user', '2023-09-11 05:42:21', '2023-08-27 05:42:21'),
(291, 168, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2OCwibmFtZSI6IkJBUkFOSVNIIiwiZW1haWwiOiJiYXJhbmlzaGs1OEBnbWFpbC5jb20iLCJpYXQiOjE2OTMxMTQ5NDEsImV4cCI6MTY5NTcwNjk0MX0.NCf3YrHXLQ3eBPHXTYriRSdQOcbV6UwVFWon136fN9E', 'user', '2023-09-26 05:42:21', '2023-08-27 05:42:21'),
(292, 168, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2OCwibmFtZSI6IkJBUkFOSVNIIiwiZW1haWwiOiJiYXJhbmlzaGs1OEBnbWFpbC5jb20iLCJpYXQiOjE2OTMxMTUyMTksImV4cCI6MTY5NDQxMTIxOX0.Ovp-J2GeIh04PK-k9avkuBtQeJe-7WqHOl-e9D2lo-A', 'user', '2023-09-11 05:46:59', '2023-08-27 05:46:59'),
(293, 168, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2OCwibmFtZSI6IkJBUkFOSVNIIiwiZW1haWwiOiJiYXJhbmlzaGs1OEBnbWFpbC5jb20iLCJpYXQiOjE2OTMxMTUyMTksImV4cCI6MTY5NTcwNzIxOX0.rRGARnCI4YE1Y66vXFuMubMvS8Tez4ZVcPSFLhpavzY', 'user', '2023-09-26 05:46:59', '2023-08-27 05:46:59'),
(294, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxMTUzNzQsImV4cCI6MTY5NDQxMTM3NH0.L63Zp8zx2npbi_J5mhuvGduN2X0Fatp0oPzCKpwzV4w', 'user', '2023-09-11 05:49:34', '2023-08-27 05:49:34'),
(295, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxMTUzNzQsImV4cCI6MTY5NTcwNzM3NH0.we6LS1KoXyJcZhhl0C1LWeC34h-zdv9Fk7yJP8PlRLA', 'user', '2023-09-26 05:49:34', '2023-08-27 05:49:34'),
(296, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxMTYwOTYsImV4cCI6MTY5NDQxMjA5Nn0.L7Wwx_nCDrPlajmF6eHjt3UueaZN2kGtL5bWwSb_Wt0', 'user', '2023-09-11 06:01:36', '2023-08-27 06:01:36'),
(297, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxMTYwOTYsImV4cCI6MTY5NTcwODA5Nn0.JiO_OfjAjVew7A8lRBmp6WmWMkGuZqK_XvGP_-TLjYE', 'user', '2023-09-26 06:01:36', '2023-08-27 06:01:36'),
(298, 42, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQyLCJuYW1lIjoiQW5hbmQiLCJlbWFpbCI6ImFuYW5kZG43NzdAZ21haWwuY29tIiwiaWF0IjoxNjkzMTIwMzgwLCJleHAiOjE2OTQ0MTYzODB9.P3tibn-hfun2Kh63B06U-HYhaWhrVmoIhyjOuh8lRCU', 'user', '2023-09-11 07:13:00', '2023-08-27 07:13:00'),
(299, 42, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQyLCJuYW1lIjoiQW5hbmQiLCJlbWFpbCI6ImFuYW5kZG43NzdAZ21haWwuY29tIiwiaWF0IjoxNjkzMTIwMzgwLCJleHAiOjE2OTU3MTIzODB9.DIivl3g2brsrS7cqbpDp_b2JZXgz9V91WTVe3MSJN8s', 'user', '2023-09-26 07:13:00', '2023-08-27 07:13:00'),
(300, 16, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2LCJuYW1lIjoiSGFyaXByYXNhbm5hIiwiZW1haWwiOiJoYXJpcHJhc2FubmEwODJAZ21haWwuY29tIiwiaWF0IjoxNjkzMTMxNDUxLCJleHAiOjE2OTQ0Mjc0NTF9.91sL0Sr2KyUjoqF4DpiMSWB-zQVr5gQrxoBWacS78zY', 'user', '2023-09-11 10:17:31', '2023-08-27 10:17:31'),
(301, 16, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2LCJuYW1lIjoiSGFyaXByYXNhbm5hIiwiZW1haWwiOiJoYXJpcHJhc2FubmEwODJAZ21haWwuY29tIiwiaWF0IjoxNjkzMTMxNDUxLCJleHAiOjE2OTU3MjM0NTF9.3mA3ekrkRe1I8wE39lyG9hW_pJLi6BRoP29JGX0raCk', 'user', '2023-09-26 10:17:31', '2023-08-27 10:17:31'),
(302, 169, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2OSwibmFtZSI6Ikthbmltb3poaSAiLCJlbWFpbCI6Imdyb3d3aXRoa2FuaUBnbWFpbC5jb20iLCJpYXQiOjE2OTMxMzIxMzMsImV4cCI6MTY5NDQyODEzM30.PLjwdMhG9tuSMmpYnpWut042mkxqW4YVcTKf5DwAZSQ', 'user', '2023-09-11 10:28:53', '2023-08-27 10:28:53'),
(303, 169, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE2OSwibmFtZSI6Ikthbmltb3poaSAiLCJlbWFpbCI6Imdyb3d3aXRoa2FuaUBnbWFpbC5jb20iLCJpYXQiOjE2OTMxMzIxMzMsImV4cCI6MTY5NTcyNDEzM30.HpBKdN6ikW5mUbXVkkWkkyUzPtI-W9f1rMA731l6pu0', 'user', '2023-09-26 10:28:53', '2023-08-27 10:28:53'),
(304, 63, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYzLCJuYW1lIjoiU3dhdGhpIiwiZW1haWwiOiJwc3dhdGhpa2FhMDNAZ21haWwuY29tIiwiaWF0IjoxNjkzMTMyMjg4LCJleHAiOjE2OTQ0MjgyODh9.GHMH4AGoHmpcFo_EOt1unA04d6ZGynZ8OEHL-5-wb5Q', 'user', '2023-09-11 10:31:28', '2023-08-27 10:31:28'),
(305, 63, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYzLCJuYW1lIjoiU3dhdGhpIiwiZW1haWwiOiJwc3dhdGhpa2FhMDNAZ21haWwuY29tIiwiaWF0IjoxNjkzMTMyMjg4LCJleHAiOjE2OTU3MjQyODh9.fyAEQtjQud-nj7n8E2fT4GEBBfnLgyWATRfWdT45H7I', 'user', '2023-09-26 10:31:28', '2023-08-27 10:31:28'),
(306, 170, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MCwibmFtZSI6Ik1hZGh1bWl0aGEiLCJlbWFpbCI6Im1hZGh1bWF0aGl5YWxhZ2FuMTcyNUBnbWFpbC5jb20iLCJpYXQiOjE2OTMxMzcwNzUsImV4cCI6MTY5NDQzMzA3NX0.BLJ-OVMWskC-5UiEytoqvo-Z1b8USV10EjHWPhGbwr0', 'user', '2023-09-11 11:51:15', '2023-08-27 11:51:15'),
(307, 170, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MCwibmFtZSI6Ik1hZGh1bWl0aGEiLCJlbWFpbCI6Im1hZGh1bWF0aGl5YWxhZ2FuMTcyNUBnbWFpbC5jb20iLCJpYXQiOjE2OTMxMzcwNzUsImV4cCI6MTY5NTcyOTA3NX0.GwxYcTM-UpovOMm5Jnnqrun1_snUae6-J-6RHc8DcE4', 'user', '2023-09-26 11:51:15', '2023-08-27 11:51:15'),
(308, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxNDM2OTksImV4cCI6MTY5NDQzOTY5OX0.n3kTtVaNWDXPir33lBxg1xoLClmJ_txTr0qZuFsI1ng', 'user', '2023-09-11 13:41:39', '2023-08-27 13:41:39'),
(309, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxNDM2OTksImV4cCI6MTY5NTczNTY5OX0.kjW-acFOxUaotC06sR6ca5WeCZCRCvdZIk5lxYoTU90', 'user', '2023-09-26 13:41:39', '2023-08-27 13:41:39'),
(310, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxNDM2OTksImV4cCI6MTY5NDQzOTY5OX0.n3kTtVaNWDXPir33lBxg1xoLClmJ_txTr0qZuFsI1ng', 'user', '2023-09-11 13:41:39', '2023-08-27 13:41:39'),
(311, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxNDM2OTksImV4cCI6MTY5NTczNTY5OX0.kjW-acFOxUaotC06sR6ca5WeCZCRCvdZIk5lxYoTU90', 'user', '2023-09-26 13:41:39', '2023-08-27 13:41:39'),
(312, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxNDM3NzMsImV4cCI6MTY5NDQzOTc3M30.2TdC_bJ2ijlGq5eF8-8stC1iQlZ7s5Wn2ztN42U1FBY', 'user', '2023-09-11 13:42:53', '2023-08-27 13:42:53'),
(313, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxNDM3NzMsImV4cCI6MTY5NTczNTc3M30.Xa1M1LqT9RIEzAN4vq_NCauo6HtGuBuec8C3VoaUqDw', 'user', '2023-09-26 13:42:53', '2023-08-27 13:42:53'),
(314, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxNDM3NzQsImV4cCI6MTY5NDQzOTc3NH0.vh3DUabuhlevevBotL3oFMlnarhdud_zxdKXnW9PsRI', 'user', '2023-09-11 13:42:54', '2023-08-27 13:42:54'),
(315, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMxNDM3NzQsImV4cCI6MTY5NTczNTc3NH0.1oBVetwolK2EyQo69ygxVwb954Vgeint3x_u1iOwl0g', 'user', '2023-09-26 13:42:54', '2023-08-27 13:42:54'),
(316, 17, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3LCJuYW1lIjoiRGFyc2hpbmkgQmFsYXN1YnJhbWFuaWFtICIsImVtYWlsIjoiZGFyc2hpbmliYWx1MEBnbWFpbC5jb20iLCJpYXQiOjE2OTMyMDkxNzMsImV4cCI6MTY5NDUwNTE3M30.drr-_D9NRTxg320XLoehrQinxXhbD5oHZVfIJpNKhkY', 'user', '2023-09-12 07:52:53', '2023-08-28 07:52:53'),
(317, 17, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3LCJuYW1lIjoiRGFyc2hpbmkgQmFsYXN1YnJhbWFuaWFtICIsImVtYWlsIjoiZGFyc2hpbmliYWx1MEBnbWFpbC5jb20iLCJpYXQiOjE2OTMyMDkxNzMsImV4cCI6MTY5NTgwMTE3M30.nBzvWLXUo4KgfQPNfX9DDDUg_2llbhnQL_a7WXIKO60', 'user', '2023-09-27 07:52:53', '2023-08-28 07:52:53'),
(318, 17, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3LCJuYW1lIjoiRGFyc2hpbmkgQmFsYXN1YnJhbWFuaWFtICIsImVtYWlsIjoiZGFyc2hpbmliYWx1MEBnbWFpbC5jb20iLCJpYXQiOjE2OTMyMDkxNzQsImV4cCI6MTY5NDUwNTE3NH0.4gTWeR_2A67avI16jHaYIXdaZDuUZ-__IvRnEtIUGGA', 'user', '2023-09-12 07:52:54', '2023-08-28 07:52:54'),
(319, 17, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3LCJuYW1lIjoiRGFyc2hpbmkgQmFsYXN1YnJhbWFuaWFtICIsImVtYWlsIjoiZGFyc2hpbmliYWx1MEBnbWFpbC5jb20iLCJpYXQiOjE2OTMyMDkxNzQsImV4cCI6MTY5NTgwMTE3NH0.hbw4M6nB4hehtGc14KAkDzPfuAVq19tngBgc46VKQ50', 'user', '2023-09-27 07:52:54', '2023-08-28 07:52:54'),
(320, 78, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MzIzNTE5MCwiZXhwIjoxNjk0NTMxMTkwfQ.5jaizCUKQsAM39YDyXRjThYdxTnfeRiKCQoybqA6LpA', 'user', '2023-09-12 15:06:30', '2023-08-28 15:06:30'),
(321, 78, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MzIzNTE5MCwiZXhwIjoxNjk1ODI3MTkwfQ.h5DcQE54oQ2Ah67fViSi8mjFCGJhH9epYWxqxqRJjQw', 'user', '2023-09-27 15:06:30', '2023-08-28 15:06:30'),
(322, 78, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MzIzNTIyMywiZXhwIjoxNjk0NTMxMjIzfQ.icjrCtm8pezCW8d8aND-00vuKra4zNaziOHjMM2mqq4', 'user', '2023-09-12 15:07:03', '2023-08-28 15:07:03'),
(323, 78, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MzIzNTIyMywiZXhwIjoxNjk1ODI3MjIzfQ.zG3SEeDXp4o0p4BeXKf_jAHd-eSg_Kbi0mD1b-Hh3Zw', 'user', '2023-09-27 15:07:03', '2023-08-28 15:07:03'),
(324, 78, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MzIzNTQwMiwiZXhwIjoxNjk0NTMxNDAyfQ.9Omcu5z2OZAHBGGyIC5gkzPpIsM1rRt4lFBIoawnhwU', 'user', '2023-09-12 15:10:02', '2023-08-28 15:10:02'),
(325, 78, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MzIzNTQwMiwiZXhwIjoxNjk1ODI3NDAyfQ.UBaWPPEs_spr5Idt4HvxYOOz5FS0mFgUHFKOnRYTmxI', 'user', '2023-09-27 15:10:02', '2023-08-28 15:10:02'),
(326, 78, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MzI0MTY0NCwiZXhwIjoxNjk0NTM3NjQ0fQ.BTcAkP2eVqWjq2LX7yr98S23hQHhcDtnSmbMn795XEM', 'user', '2023-09-12 16:54:04', '2023-08-28 16:54:04'),
(327, 78, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MzI0MTY0NCwiZXhwIjoxNjk1ODMzNjQ0fQ.xZVJMl_kAnOGQ-nWXv24Cwh3zOWxPjV456YngK02lHk', 'user', '2023-09-27 16:54:04', '2023-08-28 16:54:04'),
(328, 78, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MzI0MTY0NSwiZXhwIjoxNjk0NTM3NjQ1fQ.P1NNlgRWeQliNVRGb_UoJIFbNmbH9xmndyP9FEzhJFM', 'user', '2023-09-12 16:54:05', '2023-08-28 16:54:05'),
(329, 78, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjc4LCJuYW1lIjoiUHJpeWEiLCJlbWFpbCI6ImhhcmlndXJ1MjkyQGdtYWlsLmNvbSIsImlhdCI6MTY5MzI0MTY0NSwiZXhwIjoxNjk1ODMzNjQ1fQ.vy-j7lcIy0c-OVkv6bXg5lpnot5zZp935zfi7Ja79s0', 'user', '2023-09-27 16:54:05', '2023-08-28 16:54:05'),
(330, 171, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MSwibmFtZSI6IkJhZHJpbmF0aCBNdXJ1Z2VzYW4iLCJlbWFpbCI6ImJhZHJpbmF0aG11cnVnZXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTMyNTAyMjcsImV4cCI6MTY5NDU0NjIyN30.locTwAuL9AoLbJhxn8pG0G2C42AaY_xPIWLxGfjcDUg', 'user', '2023-09-12 19:17:07', '2023-08-28 19:17:07'),
(331, 171, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MSwibmFtZSI6IkJhZHJpbmF0aCBNdXJ1Z2VzYW4iLCJlbWFpbCI6ImJhZHJpbmF0aG11cnVnZXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTMyNTAyMjcsImV4cCI6MTY5NTg0MjIyN30.wZKb4w3o8kVFH-xKrr887P-Q5JkUSswvtdmBB2tR20Y', 'user', '2023-09-27 19:17:07', '2023-08-28 19:17:07'),
(332, 171, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MSwibmFtZSI6IkJhZHJpbmF0aCBNdXJ1Z2VzYW4iLCJlbWFpbCI6ImJhZHJpbmF0aG11cnVnZXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTMyNTE1NjMsImV4cCI6MTY5NDU0NzU2M30.l1A3j_CfIZvpzfBeOnZm8LEfriE10AkYp2xUjJke2L4', 'user', '2023-09-12 19:39:23', '2023-08-28 19:39:23'),
(333, 171, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MSwibmFtZSI6IkJhZHJpbmF0aCBNdXJ1Z2VzYW4iLCJlbWFpbCI6ImJhZHJpbmF0aG11cnVnZXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTMyNTE1NjMsImV4cCI6MTY5NTg0MzU2M30.FlwIrn7WZ6J6wuq7z6FcbCCgiWClXKwIVOEOHF9t6No', 'user', '2023-09-27 19:39:23', '2023-08-28 19:39:23'),
(334, 171, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MSwibmFtZSI6IkJhZHJpbmF0aCBNdXJ1Z2VzYW4iLCJlbWFpbCI6ImJhZHJpbmF0aG11cnVnZXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTMyNTE1NjQsImV4cCI6MTY5NDU0NzU2NH0.i_JTERaDL5OHHf5lk0CWmfQ1yee3kcDT6LIveE7-8V4', 'user', '2023-09-12 19:39:24', '2023-08-28 19:39:24'),
(335, 171, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MSwibmFtZSI6IkJhZHJpbmF0aCBNdXJ1Z2VzYW4iLCJlbWFpbCI6ImJhZHJpbmF0aG11cnVnZXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTMyNTE1NjQsImV4cCI6MTY5NTg0MzU2NH0.aejmh8qz3xq8m2XHs9gfI-EFWlClIceWXm5JidqnY7M', 'user', '2023-09-27 19:39:24', '2023-08-28 19:39:24'),
(336, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMyOTE4MTYsImV4cCI6MTY5NDU4NzgxNn0.pJbhz9ONyeUbF4tPiXj6AZoKb0dtSn9UzigH954C1fE', 'user', '2023-09-13 06:50:16', '2023-08-29 06:50:16'),
(337, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMyOTE4MTYsImV4cCI6MTY5NTg4MzgxNn0.L5mmo8iser__Jth7nINLlE2Izl7ssPWZ6m0W1OpdGK0', 'user', '2023-09-28 06:50:16', '2023-08-29 06:50:16'),
(338, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMyOTE4MTcsImV4cCI6MTY5NDU4NzgxN30.kBeykJhRS1BqMORHHdBLai02ALc7qi4Za6eSsdc257U', 'user', '2023-09-13 06:50:17', '2023-08-29 06:50:17'),
(339, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMyOTE4MTcsImV4cCI6MTY5NTg4MzgxN30.I2RyDJ-Rba4dl4-cCuWI0wUMnx6TvqPG302LQlBxPx8', 'user', '2023-09-28 06:50:17', '2023-08-29 06:50:17'),
(340, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzMwODMyNSwiZXhwIjoxNjk0NjA0MzI1fQ.TLL7YrM7nn7d9zJ_-cl6USXY4FaHwHcngmK_TPj35ZY', 'admin', '2023-09-13 11:25:25', '2023-08-29 11:25:25'),
(341, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzMwODMyNSwiZXhwIjoxNjk0MTcyMzI1fQ.MdLXviR3x24uSoWFHtxb95XtJ3Art7kGHGqzy2VXJt4', 'admin', '2023-09-08 11:25:25', '2023-08-29 11:25:25'),
(342, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzMxMjY1MywiZXhwIjoxNjk0NjA4NjUzfQ.5fQwrN4udjp8Ug-dmvvRuC5pG8HK3VmUlMeDSc3JFnQ', 'user', '2023-09-13 18:07:33', '2023-08-29 12:37:32'),
(343, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzMxMjY1MywiZXhwIjoxNjk1OTA0NjUzfQ.bz7U0AHk0AVC3eqSQpnTJ33BsW73csw_r_ZqPsIuCHw', 'user', '2023-09-28 18:07:33', '2023-08-29 12:37:32');
INSERT INTO `Token` (`tokenId`, `userId`, `tokenType`, `token`, `loggedInBy`, `expiresAt`, `createdAt`) VALUES
(344, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzMxMzA5NiwiZXhwIjoxNjk0NjA5MDk2fQ.4ENLK5VdWjNRRbgpES8SH7LZ2jwk-Nb0JmXdLeY5kSY', 'user', '2023-09-13 18:14:56', '2023-08-29 12:44:56'),
(345, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzMxMzA5NiwiZXhwIjoxNjk1OTA1MDk2fQ.095UBLteNpljaxJSaypNkpWrrANwsOmfhSGWrvYVR00', 'user', '2023-09-28 18:14:56', '2023-08-29 12:44:56'),
(346, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzMxMzIzMiwiZXhwIjoxNjk0NjA5MjMyfQ.tYt0Ohe1ViVNw-2gfjmHHxrw-NFSf4EnN0NH8-d1qIM', 'user', '2023-09-13 18:17:12', '2023-08-29 12:47:12'),
(347, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzMxMzIzMiwiZXhwIjoxNjk1OTA1MjMyfQ.nxi1MFPen5811LPhmPFY4nDLwOyyM2TQjxTxo9HTvkc', 'user', '2023-09-28 18:17:12', '2023-08-29 12:47:12'),
(348, 92, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkyLCJuYW1lIjoiVGhhdWZlZWsiLCJlbWFpbCI6IlNvdmFodG9mZmljaWFsQGdtYWlsLmNvbSIsImlhdCI6MTY5MzMxNDU3MSwiZXhwIjoxNjk0NjEwNTcxfQ.0jD7EnbEeA1bjODBRV8I9hJG5VdcCq1k8qPfHWqucPI', 'user', '2023-09-13 13:09:31', '2023-08-29 13:09:31'),
(349, 92, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjkyLCJuYW1lIjoiVGhhdWZlZWsiLCJlbWFpbCI6IlNvdmFodG9mZmljaWFsQGdtYWlsLmNvbSIsImlhdCI6MTY5MzMxNDU3MSwiZXhwIjoxNjk1OTA2NTcxfQ.yhEDGMjg_kvQrzspefvpxQoUR1kEleEPurqm5s4YyZ8', 'user', '2023-09-28 13:09:31', '2023-08-29 13:09:31'),
(350, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzMTgwNzIsImV4cCI6MTY5NDYxNDA3Mn0.6_SFd1QpAEQjHPFjIzmWWAzPsvmsiXe2KlOvRv3TDWI', 'user', '2023-09-13 14:07:52', '2023-08-29 14:07:52'),
(351, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzMTgwNzIsImV4cCI6MTY5NTkxMDA3Mn0.p1_VHV7KZwWf2MUYY7OzDnK5dn4eHVb3aTw-892dg8A', 'user', '2023-09-28 14:07:52', '2023-08-29 14:07:52'),
(352, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzMTgwNzMsImV4cCI6MTY5NDYxNDA3M30.d5tVO_UFN7kmqQQrOxB36S0LLL1slookM0qA1282Zio', 'user', '2023-09-13 14:07:53', '2023-08-29 14:07:53'),
(353, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzMTgwNzMsImV4cCI6MTY5NTkxMDA3M30._daAQGGGErbeMOrUf-O6UfNYovgXw6lNikTVXC7Jc4U', 'user', '2023-09-28 14:07:53', '2023-08-29 14:07:53'),
(354, 21, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIxLCJuYW1lIjoidi4gbmFsaW5pIiwiZW1haWwiOiJ2YWRpdmVsdW5hbGluaWRwbUBnbWFpbC5jb20iLCJpYXQiOjE2OTMzMTg4ODIsImV4cCI6MTY5NDYxNDg4Mn0.nAXh4aXFD79328fCyntAwd78pmTpJwaDWG8plhR8VOU', 'user', '2023-09-13 14:21:22', '2023-08-29 14:21:22'),
(355, 21, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIxLCJuYW1lIjoidi4gbmFsaW5pIiwiZW1haWwiOiJ2YWRpdmVsdW5hbGluaWRwbUBnbWFpbC5jb20iLCJpYXQiOjE2OTMzMTg4ODIsImV4cCI6MTY5NTkxMDg4Mn0.ByQvz6SrXoV0Fki9FL3pMrF-ecqGjw3uQq871mJGN6M', 'user', '2023-09-28 14:21:22', '2023-08-29 14:21:22'),
(356, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzMTk0NjIsImV4cCI6MTY5NDYxNTQ2Mn0.JV1a7NJx3r5RQ5BxVAOHyubwzPyQQCgGXu6OvOBKSz0', 'user', '2023-09-13 14:31:02', '2023-08-29 14:31:02'),
(357, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzMTk0NjIsImV4cCI6MTY5NTkxMTQ2Mn0.Dh_xMRl3PJKn-ExXR90P5j97cP1OVT1Qk_yh_CNdbiw', 'user', '2023-09-28 14:31:02', '2023-08-29 14:31:02'),
(358, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzMyMDM1OSwiZXhwIjoxNjk0NjE2MzU5fQ.kVixpGIjFptu8mpGKh6BtLj5dOOUdw04lmQGZgJ8EkE', 'user', '2023-09-13 14:45:59', '2023-08-29 14:45:59'),
(359, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzMyMDM1OSwiZXhwIjoxNjk1OTEyMzU5fQ.cXF1JsQSByT7L9MFKd8d5sKRXHXvHMiA8VmUfekcoTY', 'user', '2023-09-28 14:45:59', '2023-08-29 14:45:59'),
(360, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzMyNTcwOSwiZXhwIjoxNjk0NjIxNzA5fQ.hgJ3D5MFnxVhfBE5z9AHNDB8mv1W9fAuJolHnXsK3jk', 'admin', '2023-09-13 16:15:09', '2023-08-29 16:15:09'),
(361, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzMyNTcwOSwiZXhwIjoxNjk0MTg5NzA5fQ.7vmIQL9IgeaPIZABMx4xsylmIPSYxHPcRfEkxeMvKO0', 'admin', '2023-09-08 16:15:09', '2023-08-29 16:15:09'),
(362, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzMyNTcxMCwiZXhwIjoxNjk0NjIxNzEwfQ.F59T0sNtB9PzD1Tej56cLhbpnZpoFvw3VqCXvyT58Ko', 'admin', '2023-09-13 16:15:10', '2023-08-29 16:15:10'),
(363, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzMyNTcxMCwiZXhwIjoxNjk0MTg5NzEwfQ.W0EAcp-nTZ9A4XXEXhnSL91P9rODN3airqfDaDqbiPM', 'admin', '2023-09-08 16:15:10', '2023-08-29 16:15:10'),
(364, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzMzE5OTYsImV4cCI6MTY5NDYyNzk5Nn0.THy5GzACjTv4Cb8E1mXyRe9r7oVolWpF8PQz3zY2jFI', 'user', '2023-09-13 17:59:56', '2023-08-29 17:59:56'),
(365, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzMzE5OTYsImV4cCI6MTY5NTkyMzk5Nn0.07OW1m-743xJ9_tnN1jK2I6wbiseyBO-zDyjRgLlJcI', 'user', '2023-09-28 17:59:56', '2023-08-29 17:59:56'),
(366, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzODEyNzQsImV4cCI6MTY5NDY3NzI3NH0.4KOOU9YU8nuLi1AOyLxW6cfXsFOsVgwOtXDzyUCaKZ0', 'user', '2023-09-14 07:41:14', '2023-08-30 07:41:14'),
(367, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzODEyNzQsImV4cCI6MTY5NTk3MzI3NH0.1vWTksbjKmkkktBcHoOuGJPeGhwPMOu8HICKoeT2z0A', 'user', '2023-09-29 07:41:14', '2023-08-30 07:41:14'),
(368, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzODEyNzQsImV4cCI6MTY5NDY3NzI3NH0.4KOOU9YU8nuLi1AOyLxW6cfXsFOsVgwOtXDzyUCaKZ0', 'user', '2023-09-14 07:41:14', '2023-08-30 07:41:14'),
(369, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTMzODEyNzQsImV4cCI6MTY5NTk3MzI3NH0.1vWTksbjKmkkktBcHoOuGJPeGhwPMOu8HICKoeT2z0A', 'user', '2023-09-29 07:41:14', '2023-08-30 07:41:14'),
(370, 172, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MiwibmFtZSI6IkthbGltdXRodXJhamEiLCJlbWFpbCI6ImthbGltdXRodXJhamE2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTM0MDI1ODEsImV4cCI6MTY5NDY5ODU4MX0.Vy7eKZ_Cp7150yX2aLHogoG2gL_MZjJJaPY-1dzEmw0', 'user', '2023-09-14 13:36:21', '2023-08-30 13:36:21'),
(371, 172, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MiwibmFtZSI6IkthbGltdXRodXJhamEiLCJlbWFpbCI6ImthbGltdXRodXJhamE2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTM0MDI1ODEsImV4cCI6MTY5NTk5NDU4MX0.WUmsnxbiyFDt8RQ9yFvwChCFWBTlVA2NAMDi4kws9QU', 'user', '2023-09-29 13:36:21', '2023-08-30 13:36:21'),
(372, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzQxNDQ5NSwiZXhwIjoxNjk0NzEwNDk1fQ.o4VQSaJXzjOasCSOpllUfww3vsYScZzZR5OdA1czVws', 'admin', '2023-09-14 16:54:55', '2023-08-30 16:54:55'),
(373, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzQxNDQ5NSwiZXhwIjoxNjk0Mjc4NDk1fQ.iFLhZxJ0UkXaIDCVov_FDnIQe7gp6ofBYh30R9hsoR8', 'admin', '2023-09-09 16:54:55', '2023-08-30 16:54:55'),
(374, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzQxNDQ5NSwiZXhwIjoxNjk0NzEwNDk1fQ.o4VQSaJXzjOasCSOpllUfww3vsYScZzZR5OdA1czVws', 'admin', '2023-09-14 16:54:55', '2023-08-30 16:54:55'),
(375, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzQxNDQ5NSwiZXhwIjoxNjk0Mjc4NDk1fQ.iFLhZxJ0UkXaIDCVov_FDnIQe7gp6ofBYh30R9hsoR8', 'admin', '2023-09-09 16:54:55', '2023-08-30 16:54:55'),
(376, 14, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkzNDU4OTM3LCJleHAiOjE2OTQ3NTQ5Mzd9.-DC0FcyhlvQ5dUOHGpdqAISJV4kHqlqzlKOiLaKvNoY', 'user', '2023-09-15 05:15:37', '2023-08-31 05:15:37'),
(377, 14, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0LCJuYW1lIjoiTmF2ZWVuIFByYWJ1IFMiLCJlbWFpbCI6Im5hdmVlbnByYWJ1MjFAZ21haWwuY29tIiwiaWF0IjoxNjkzNDU4OTM3LCJleHAiOjE2OTYwNTA5Mzd9.NtOxdUdJCj-ktXNj2aIQSd8ZU8WBECaqYtUPXSgvNDI', 'user', '2023-09-30 05:15:37', '2023-08-31 05:15:37'),
(378, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTM0Njk1OTMsImV4cCI6MTY5NDc2NTU5M30.h8XMqt7fBTt21fdTVDBrJmajgHLP6usVy32RKYnf9Cw', 'user', '2023-09-15 08:13:13', '2023-08-31 08:13:13'),
(379, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTM0Njk1OTMsImV4cCI6MTY5NjA2MTU5M30.-nWZ2N5CFFmDtsvHt_HKX0ucsZDbrMbqm49oiV2g3C0', 'user', '2023-09-30 08:13:13', '2023-08-31 08:13:13'),
(380, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzQ4MjkxOSwiZXhwIjoxNjk0Nzc4OTE5fQ.07nxeqsM50fNNOleTuAHQ1r0fqF1WbuAvVv03-Bs5zQ', 'admin', '2023-09-15 17:25:19', '2023-08-31 11:55:21'),
(381, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzQ4MjkxOSwiZXhwIjoxNjk0MzQ2OTE5fQ.GeJHRXE239eQOFCOMavIM4Oq3OExwAraOkBIT7Lrx_0', 'admin', '2023-09-10 17:25:19', '2023-08-31 11:55:21'),
(382, 33, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMzLCJuYW1lIjoiU2F0aGl5YSBUIiwiZW1haWwiOiJzYXRoeWF0aGlydW11cnVnYW4yQGdtYWlsLmNvbSIsImlhdCI6MTY5MzQ5MDgxNywiZXhwIjoxNjk0Nzg2ODE3fQ.bDwXkM9KoHZvhAVx8eyQqmyZUJwnBNUHZcyJDQns64c', 'user', '2023-09-15 14:06:57', '2023-08-31 14:06:57'),
(383, 33, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMzLCJuYW1lIjoiU2F0aGl5YSBUIiwiZW1haWwiOiJzYXRoeWF0aGlydW11cnVnYW4yQGdtYWlsLmNvbSIsImlhdCI6MTY5MzQ5MDgxNywiZXhwIjoxNjk2MDgyODE3fQ.DXr5K5Xk1ahnJ-Yc4nSCbPZFTVk90Mu7K7jne70RogY', 'user', '2023-09-30 14:06:57', '2023-08-31 14:06:57'),
(384, 173, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MywibmFtZSI6IkRoaW5lc2ggcnAiLCJlbWFpbCI6ImRoaW5lc2hycDEwQGdtYWlsLmNvbSIsImlhdCI6MTY5MzQ5NTQ4NywiZXhwIjoxNjk0NzkxNDg3fQ.QKMKxOwxYaytwt_USL_-dVDV1lgp5pCKafHrANLGwaI', 'user', '2023-09-15 15:24:47', '2023-08-31 15:24:47'),
(385, 173, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MywibmFtZSI6IkRoaW5lc2ggcnAiLCJlbWFpbCI6ImRoaW5lc2hycDEwQGdtYWlsLmNvbSIsImlhdCI6MTY5MzQ5NTQ4NywiZXhwIjoxNjk2MDg3NDg3fQ.LGbfZwIyLSJW3241-IS-STh2P-pA-6djEt8O0jEODiQ', 'user', '2023-09-30 15:24:47', '2023-08-31 15:24:47'),
(386, 173, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MywibmFtZSI6IkRoaW5lc2ggcnAiLCJlbWFpbCI6ImRoaW5lc2hycDEwQGdtYWlsLmNvbSIsImlhdCI6MTY5MzQ5NTY0NywiZXhwIjoxNjk0NzkxNjQ3fQ.OYMCXJzc_kbZm6b_qbp8eI97yjycLdtdobM9Sh157n4', 'user', '2023-09-15 15:27:27', '2023-08-31 15:27:27'),
(387, 173, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MywibmFtZSI6IkRoaW5lc2ggcnAiLCJlbWFpbCI6ImRoaW5lc2hycDEwQGdtYWlsLmNvbSIsImlhdCI6MTY5MzQ5NTY0NywiZXhwIjoxNjk2MDg3NjQ3fQ.whjaoToc3QdW7v7aXGLemMhc8T03TVPbuG8K7bHpRsQ', 'user', '2023-09-30 15:27:27', '2023-08-31 15:27:27'),
(388, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzQ5NjQ1MywiZXhwIjoxNjk0NzkyNDUzfQ.vTBixC164Crw6c6zJpeeEO8i6ncaE1H7oARELeAJsig', 'user', '2023-09-15 15:40:53', '2023-08-31 15:40:53'),
(389, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzQ5NjQ1MywiZXhwIjoxNjk2MDg4NDUzfQ.putgP1wB1fAr_E0dLb_E0oBy6e0szGom1ADrPndoEFo', 'user', '2023-09-30 15:40:53', '2023-08-31 15:40:53'),
(390, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkzNTQ4NTU3LCJleHAiOjE2OTQ4NDQ1NTd9.qC8yZsvBKCjQSnlP4BN0m78KqDHUNzVJsRrwLxqMfhM', 'user', '2023-09-16 06:09:17', '2023-09-01 06:09:17'),
(391, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkzNTQ4NTU3LCJleHAiOjE2OTYxNDA1NTd9.dVVS6gJRtXGuItMmThydvWaYBRD8DrqbkSR-ysFbkDU', 'user', '2023-10-01 06:09:17', '2023-09-01 06:09:17'),
(392, 3, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkzNTQ4NTU3LCJleHAiOjE2OTQ4NDQ1NTd9.qC8yZsvBKCjQSnlP4BN0m78KqDHUNzVJsRrwLxqMfhM', 'user', '2023-09-16 06:09:17', '2023-09-01 06:09:17'),
(393, 3, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsIm5hbWUiOiJQcmVldGhhbSBzZW50aGlsa3VtYXIgIiwiZW1haWwiOiJwcmVldGhhbXNlbnRoaWxrdW1hcjIwMTJAZ21haWwuY29tIiwiaWF0IjoxNjkzNTQ4NTU3LCJleHAiOjE2OTYxNDA1NTd9.dVVS6gJRtXGuItMmThydvWaYBRD8DrqbkSR-ysFbkDU', 'user', '2023-10-01 06:09:17', '2023-09-01 06:09:17'),
(394, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzU1MjY1MCwiZXhwIjoxNjk0ODQ4NjUwfQ.Ui4x8iGKLPcsmFs8qno413uHdaotpca6lNB9DiBj2FI', 'user', '2023-09-16 07:17:30', '2023-09-01 07:17:30'),
(395, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzU1MjY1MCwiZXhwIjoxNjk2MTQ0NjUwfQ.k9KrAnPMI33Vaxu6aQN0fT-f5FW2lBnUZbe6RKSy4-w', 'user', '2023-10-01 07:17:30', '2023-09-01 07:17:30'),
(396, 173, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MywibmFtZSI6IkRoaW5lc2ggcnAiLCJlbWFpbCI6ImRoaW5lc2hycDEwQGdtYWlsLmNvbSIsImlhdCI6MTY5MzU1NTc1MiwiZXhwIjoxNjk0ODUxNzUyfQ.maGvnUMUu_M48tdXL4RNHetEF6__keO8vIycrdcQcv4', 'user', '2023-09-16 08:09:12', '2023-09-01 08:09:12'),
(397, 173, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE3MywibmFtZSI6IkRoaW5lc2ggcnAiLCJlbWFpbCI6ImRoaW5lc2hycDEwQGdtYWlsLmNvbSIsImlhdCI6MTY5MzU1NTc1MiwiZXhwIjoxNjk2MTQ3NzUyfQ.KJbLFhlV4PcJpbUp_xjg2SCBIECmAzPz8Y1OmZVPAuM', 'user', '2023-10-01 08:09:12', '2023-09-01 08:09:12'),
(398, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTM1NTY2MDEsImV4cCI6MTY5NDg1MjYwMX0.0NvVGvco8rJn9T_F8NEgdg5pO-9h5pRrTIWopzg4lOg', 'user', '2023-09-16 08:23:21', '2023-09-01 08:23:21'),
(399, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTM1NTY2MDEsImV4cCI6MTY5NjE0ODYwMX0.cjeXL60pbNrsdq7t70jMWaAVDbPjbD8Fj07I9ADeuFo', 'user', '2023-10-01 08:23:21', '2023-09-01 08:23:21'),
(400, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzU2ODc1NiwiZXhwIjoxNjk0ODY0NzU2fQ.yv4uGYY-dJRhkJtWrpa3yA0fbjec4MhmERU7H5pUeag', 'admin', '2023-09-16 17:15:56', '2023-09-01 11:45:56'),
(401, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzU2ODc1NiwiZXhwIjoxNjk0NDMyNzU2fQ._O3aZuAzvY5Y19V4Ufv1kvm67AfuI4BMbu8fsMZ99sc', 'admin', '2023-09-11 17:15:56', '2023-09-01 11:45:56'),
(402, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTM1ODAxMjIsImV4cCI6MTY5NDg3NjEyMn0.aGbV59fKtvly7EmU48up3mFysZe4Al5B78hxv3gNeq4', 'user', '2023-09-16 14:55:22', '2023-09-01 14:55:22'),
(403, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTM1ODAxMjIsImV4cCI6MTY5NjE3MjEyMn0.MaACpBWoo-rjubARKxmfqEFeKDbdH9mC1K9quCMdn-8', 'user', '2023-10-01 14:55:22', '2023-09-01 14:55:22'),
(404, 2, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTM1ODAxMjMsImV4cCI6MTY5NDg3NjEyM30.W3vA8TWhUVXNK5tsum1jgC9tcTrd3fe-Cbt0c86zHWk', 'user', '2023-09-16 14:55:23', '2023-09-01 14:55:23'),
(405, 2, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJTQUtUSEkgR0FORVNIIFYiLCJlbWFpbCI6InNha3RoaWdhbmVzaDUzM0BnbWFpbC5jb20iLCJpYXQiOjE2OTM1ODAxMjMsImV4cCI6MTY5NjE3MjEyM30.y8nKBbFmmhv2SEubxMrcIiVaNxdSfuJGGEqY9CwQ9sI', 'user', '2023-10-01 14:55:23', '2023-09-01 14:55:23'),
(406, 7, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTM1ODMyMTMsImV4cCI6MTY5NDg3OTIxM30.eCdOgRaJfkE88bvU5iIkujJlgCYo2QpkrvWNpY_aXgc', 'user', '2023-09-16 15:46:53', '2023-09-01 15:46:53'),
(407, 7, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcsIm5hbWUiOiJTYW5qaXYgViIsImVtYWlsIjoic2Fuaml2ZHBtMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTM1ODMyMTMsImV4cCI6MTY5NjE3NTIxM30.YGR20TmnhKnk8ZHBXpqiN377djNehxxBIpTHmnZk_sU', 'user', '2023-10-01 15:46:53', '2023-09-01 15:46:53'),
(408, 11, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJuYW1lIjoiRGhlc2hhcHJpeWFuIFRoYW5hc2VrYXJhbiAiLCJlbWFpbCI6ImRoZXNoYTc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MzY1NDQ4OSwiZXhwIjoxNjk0OTUwNDg5fQ.QVxutUZsRCWZVOGDXKevlLf7KUK0Xuteh40LfkKbj2Y', 'user', '2023-09-17 11:34:49', '2023-09-02 11:34:49'),
(409, 11, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJuYW1lIjoiRGhlc2hhcHJpeWFuIFRoYW5hc2VrYXJhbiAiLCJlbWFpbCI6ImRoZXNoYTc3QGdtYWlsLmNvbSIsImlhdCI6MTY5MzY1NDQ4OSwiZXhwIjoxNjk2MjQ2NDg5fQ._mPRS9UPatN5sYVv8WINi3VB-kNk_peiW6vkS5wZsAw', 'user', '2023-10-02 11:34:49', '2023-09-02 11:34:49'),
(410, 181, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4MSwibmFtZSI6Ik1fUyBHT1dEQSIsImVtYWlsIjoibWFuanVuYXRoOTQxMUBnbWFpbC5jb20iLCJpYXQiOjE2OTM2NzE2MDksImV4cCI6MTY5NDk2NzYwOX0.KcQz4ZyimKIoW1sLM4S5j-scgSTrMgSwgZZU7Grhmb4', 'user', '2023-09-17 16:20:09', '2023-09-02 16:20:09'),
(411, 181, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4MSwibmFtZSI6Ik1fUyBHT1dEQSIsImVtYWlsIjoibWFuanVuYXRoOTQxMUBnbWFpbC5jb20iLCJpYXQiOjE2OTM2NzE2MDksImV4cCI6MTY5NjI2MzYwOX0.GmjaacbHdNDbv17l3y_1UAXBsdvaSuJdG_dJIkYz8jM', 'user', '2023-10-02 16:20:09', '2023-09-02 16:20:09'),
(412, 182, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4MiwibmFtZSI6IkFtb2wgUmFqZSIsImVtYWlsIjoiYW1vbHI3OEBnbWFpbC5jb20iLCJpYXQiOjE2OTM2NzQxMTMsImV4cCI6MTY5NDk3MDExM30.eVe9iLXwFnnoItrGrwHzD-J-gmj718v-7zP2VbS_lR8', 'user', '2023-09-17 17:01:53', '2023-09-02 17:01:53'),
(413, 182, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4MiwibmFtZSI6IkFtb2wgUmFqZSIsImVtYWlsIjoiYW1vbHI3OEBnbWFpbC5jb20iLCJpYXQiOjE2OTM2NzQxMTMsImV4cCI6MTY5NjI2NjExM30.wmN6G8Z_ar_-Y-1OTtrOn7fcZWcEXA8LYpk5W0pDAWo', 'user', '2023-10-02 17:01:53', '2023-09-02 17:01:53'),
(414, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5Mzc1MjE4MSwiZXhwIjoxNjk1MDQ4MTgxfQ.4vTzUuvjFKPcsxA8VOfStRtz1toGESroGF0UxYnnziE', 'user', '2023-09-18 20:13:01', '2023-09-03 14:43:07'),
(415, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5Mzc1MjE4MSwiZXhwIjoxNjk2MzQ0MTgxfQ.xG6hBkYcxcj6GDMl5M1Iu5o_KnkNvMmJjg3OyXHWETw', 'user', '2023-10-03 20:13:01', '2023-09-03 14:43:07'),
(416, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzgzMjQ3OSwiZXhwIjoxNjk1MTI4NDc5fQ.vkocbXZgxaNK0WOzN51SM-3cWA4SzkD_A5eEgaraOeg', 'admin', '2023-09-19 13:01:19', '2023-09-04 13:01:19'),
(417, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzgzMjQ3OSwiZXhwIjoxNjk0Njk2NDc5fQ.IDHZeOMthCiCooj70ZTYJgPvUGdNRA8pXgzgUtC0Krs', 'admin', '2023-09-14 13:01:19', '2023-09-04 13:01:19'),
(418, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzgzMjQ4MCwiZXhwIjoxNjk1MTI4NDgwfQ.Xw4C0N3mpXqdSbr2xqM5YlhzS9VPTYobyNydq6ke32w', 'admin', '2023-09-19 13:01:20', '2023-09-04 13:01:20'),
(419, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzgzMjQ4MCwiZXhwIjoxNjk0Njk2NDgwfQ.8lXvEkOUwgFEjzaxWCqY2WAuLRwDmu6D7d_ze5YvpaM', 'admin', '2023-09-14 13:01:20', '2023-09-04 13:01:20'),
(420, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTM4NDI4NDIsImV4cCI6MTY5NTEzODg0Mn0.4ijAXoTN3IvoYf0Sc9N5XNqiqiAm2CGNYwhjV5gonT8', 'user', '2023-09-19 15:54:02', '2023-09-04 15:54:02'),
(421, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTM4NDI4NDIsImV4cCI6MTY5NjQzNDg0Mn0.4mI2wyPrr4n1-tPOHizDVBrGJiF_GJLn91e0zN_hFqM', 'user', '2023-10-04 15:54:02', '2023-09-04 15:54:02'),
(422, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTM4NTE2ODAsImV4cCI6MTY5NTE0NzY4MH0.sA1e1aGfFca-EE9uGiPSyQBeRxZM9sOZaMfpuZajVdw', 'user', '2023-09-19 18:21:20', '2023-09-04 18:21:20'),
(423, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTM4NTE2ODAsImV4cCI6MTY5NjQ0MzY4MH0.jGMRCu9aDKVc8McLvyuGbHgGlSpQ4mn1vM_c_SWSgP4', 'user', '2023-10-04 18:21:20', '2023-09-04 18:21:20'),
(424, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5Mzg1MTY4NiwiZXhwIjoxNjk1MTQ3Njg2fQ.hLarRSLmxJY__u1QtaZQjjrux_IhCDBaLk3f1Fwz48o', 'user', '2023-09-19 18:21:26', '2023-09-04 18:21:26'),
(425, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5Mzg1MTY4NiwiZXhwIjoxNjk2NDQzNjg2fQ.GMTjKEj3aziyW22dNM5OdnTvR97GLMCvaQ9yftLF2iw', 'user', '2023-10-04 18:21:26', '2023-09-04 18:21:26'),
(426, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTM4NTE3ODIsImV4cCI6MTY5NTE0Nzc4Mn0.bB9RAR6i90zR1bHAndtlu2ouuiFSyStM20E2k8EytO0', 'user', '2023-09-19 18:23:02', '2023-09-04 18:23:02'),
(427, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTM4NTE3ODIsImV4cCI6MTY5NjQ0Mzc4Mn0.bXUeR6haBhpWakldhaWmVxBos3kk5zs_fCBYNc9W8Hc', 'user', '2023-10-04 18:23:02', '2023-09-04 18:23:02'),
(428, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTM4NTIwMTQsImV4cCI6MTY5NTE0ODAxNH0.E8ckNjDJ4UtZ5ofEpopNvxAeEGRo-3cFfuseQT1uKyM', 'user', '2023-09-19 18:26:54', '2023-09-04 18:26:54'),
(429, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTM4NTIwMTQsImV4cCI6MTY5NjQ0NDAxNH0.4DMuQ7jjPvTiWjJB45buNQbxKWQYPUx84hvZxK3KBPk', 'user', '2023-10-04 18:26:54', '2023-09-04 18:26:54'),
(430, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzkxNDEzNSwiZXhwIjoxNjk1MjEwMTM1fQ.f9EvVrVyaMwYZFinH8jirsFF0ggeaZ_FoJFmmgc1la0', 'user', '2023-09-20 17:12:15', '2023-09-05 11:42:24'),
(431, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzkxNDEzNSwiZXhwIjoxNjk2NTA2MTM1fQ.HK6_rokCTq72UK_oQqZLnH_smQaJa8h1k_aHwsVaZkA', 'user', '2023-10-05 17:12:15', '2023-09-05 11:42:24'),
(432, 183, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4MywibmFtZSI6IlBhdml0aHJhIFNlbHZhbiIsImVtYWlsIjoiamVldmVwYXZpMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5MzkxOTAzMywiZXhwIjoxNjk1MjE1MDMzfQ.5XgCqdKDYOCJaWKZH4-ZEovNPbEC1d9-zX8XlX4eKj4', 'user', '2023-09-20 13:03:53', '2023-09-05 13:03:53'),
(433, 183, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4MywibmFtZSI6IlBhdml0aHJhIFNlbHZhbiIsImVtYWlsIjoiamVldmVwYXZpMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5MzkxOTAzMywiZXhwIjoxNjk2NTExMDMzfQ.BRXElwRI0P8PVbUtd7Yqf3Z_3VuR3qsDV0xlh6eLELk', 'user', '2023-10-05 13:03:53', '2023-09-05 13:03:53'),
(434, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzkzMDIxMSwiZXhwIjoxNjk1MjI2MjExfQ.aPy5SiiTppQDMfG_g8B-qpgFvLtX_JlA1VeoOX2GUzY', 'admin', '2023-09-20 16:10:11', '2023-09-05 16:10:11'),
(435, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5MzkzMDIxMSwiZXhwIjoxNjk0Nzk0MjExfQ.my6zpbflEPZeZ9BKD0gnb2RPaGqiT6JQ7k62FBTnqL8', 'admin', '2023-09-15 16:10:11', '2023-09-05 16:10:11'),
(436, 29, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTM5Mzg4ODYsImV4cCI6MTY5NTIzNDg4Nn0.iZTT4VHpJBb9nozfDd0bowVVxs5B3AOlLooRU6coO-A', 'user', '2023-09-20 18:34:46', '2023-09-05 18:34:46'),
(437, 29, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoiWXVnZW5kaXJhbiBHIiwiZW1haWwiOiJ5dWdlbmRpcmFuMjgyOUBnbWFpbC5jb20iLCJpYXQiOjE2OTM5Mzg4ODYsImV4cCI6MTY5NjUzMDg4Nn0.hBJ_j_aE_aA058k-rVtCUEh3gNEGuUV4FDFtLyrWI9A', 'user', '2023-10-05 18:34:46', '2023-09-05 18:34:46'),
(438, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzkzODkxNiwiZXhwIjoxNjk1MjM0OTE2fQ.GvuWPkexwK3H1gejGKMJA8KwLwaUKQ6t57eg43vx1Bg', 'user', '2023-09-20 18:35:16', '2023-09-05 18:35:16'),
(439, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5MzkzODkxNiwiZXhwIjoxNjk2NTMwOTE2fQ.LYbM5zpJTUT1_xxiEcOYX4Yg_Wjv6DTbcePRH9nQcHc', 'user', '2023-10-05 18:35:16', '2023-09-05 18:35:16'),
(440, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5Mzk1MzcxMSwiZXhwIjoxNjk1MjQ5NzExfQ.KFSKrve_c-9FyHByxrypZEuC7EmSAoTZAZ1rCe2Hd88', 'admin', '2023-09-20 22:41:51', '2023-09-05 22:41:51'),
(441, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5Mzk1MzcxMSwiZXhwIjoxNjk0ODE3NzExfQ.coHuXlPUXHFH9ZVQBeYbqDTBpQfpORBK7kJxgh1CuWs', 'admin', '2023-09-15 22:41:51', '2023-09-05 22:41:51'),
(442, 184, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4NCwibmFtZSI6IkFyaXZ1c2VsdmFuIiwiZW1haWwiOiJhcml2dXNlbHZhbmlwczc3N0BnbWFpbC5jb20iLCJpYXQiOjE2OTM5ODU4NzMsImV4cCI6MTY5NTI4MTg3M30.e95L9hz7_R6U31ZH-eAbM_f2_7CqE1srpFObxJ73Kj4', 'user', '2023-09-21 07:37:53', '2023-09-06 07:37:53'),
(443, 184, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4NCwibmFtZSI6IkFyaXZ1c2VsdmFuIiwiZW1haWwiOiJhcml2dXNlbHZhbmlwczc3N0BnbWFpbC5jb20iLCJpYXQiOjE2OTM5ODU4NzMsImV4cCI6MTY5NjU3Nzg3M30._e_pY7Z6uSAE1tAjL73084_b1zYRKFjf6wBlTJLJr-c', 'user', '2023-10-06 07:37:53', '2023-09-06 07:37:53'),
(444, 138, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTQwMTYxMTcsImV4cCI6MTY5NTMxMjExN30.lt7haZeHqcD9XbMeF3QFw7iofyfeTg1EZ6Ynla0ztZQ', 'user', '2023-09-21 16:01:57', '2023-09-06 16:01:57'),
(445, 138, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTQwMTYxMTcsImV4cCI6MTY5NjYwODExN30.NCCfkXwKZezTRB4rzSOSxddOw-ts3X9_38RceFap1v8', 'user', '2023-10-06 16:01:57', '2023-09-06 16:01:57'),
(446, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5NDAyODI5NCwiZXhwIjoxNjk1MzI0Mjk0fQ.cbmHWtfo-i0eaXkZROUkFv1M9EZcQ9XabGTEUgGwfVE', 'user', '2023-09-22 00:54:54', '2023-09-06 19:24:56'),
(447, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5NDAyODI5NCwiZXhwIjoxNjk2NjIwMjk0fQ.vOZdk1UT-XbzBriYIHD6UbaMLWDlT5wjGsODqVEUago', 'user', '2023-10-07 00:54:54', '2023-09-06 19:24:56'),
(448, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDA3Nzg3MSwiZXhwIjoxNjk1MzczODcxfQ.tiu1M_86oQqBJC6YvWSzhlF35AZOhGpdXNDIw0GROCk', 'admin', '2023-09-22 09:11:11', '2023-09-07 09:11:11'),
(449, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDA3Nzg3MSwiZXhwIjoxNjk0OTQxODcxfQ.rxs6W-sftdEtH9hHxB96uK9RqLqvsJdhqQxUvkdeIT0', 'admin', '2023-09-17 09:11:11', '2023-09-07 09:11:11'),
(450, 129, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5NDEwMTgxNSwiZXhwIjoxNjk1Mzk3ODE1fQ.L5G_uSSP6ZgSlJJ-niOYuumDaHAWDWbl6udMTN1gFqI', 'user', '2023-09-22 15:50:15', '2023-09-07 15:50:15'),
(451, 129, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEyOSwibmFtZSI6IllZdWdpIiwiZW1haWwiOiJ5eXVnaTY0QGdtYWlsLmNvbSIsImlhdCI6MTY5NDEwMTgxNSwiZXhwIjoxNjk2NjkzODE1fQ.Yw0L1YZTcVkwD54BYwG7GTExGThEyjsngJQHDX2fTUk', 'user', '2023-10-07 15:50:15', '2023-09-07 15:50:15'),
(452, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDEwMjA2NywiZXhwIjoxNjk1Mzk4MDY3fQ.KBp57KzctYC4TPuWs0l-YwqG0dr30ybBym8-oZayzTU', 'admin', '2023-09-22 15:54:27', '2023-09-07 15:54:27'),
(453, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDEwMjA2NywiZXhwIjoxNjk0OTY2MDY3fQ.ZT7X_Pt2Ku95q5-fUxkpg1bdPI81Y7thtnK2Ahjk51I', 'admin', '2023-09-17 15:54:27', '2023-09-07 15:54:27'),
(454, 96, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk2LCJuYW1lIjoiR09LVUwgU0FTSUtVTUFSIiwiZW1haWwiOiJnb2t1bHNhc2k0MjJAZ21haWwuY29tIiwiaWF0IjoxNjk0MjQ0MDgwLCJleHAiOjE2OTU1NDAwODB9.kj9jSqM3yQrSPEucSNDGaJibJORU80azUb1GQEF9TBU', 'user', '2023-09-24 07:21:20', '2023-09-09 07:21:20'),
(455, 96, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjk2LCJuYW1lIjoiR09LVUwgU0FTSUtVTUFSIiwiZW1haWwiOiJnb2t1bHNhc2k0MjJAZ21haWwuY29tIiwiaWF0IjoxNjk0MjQ0MDgwLCJleHAiOjE2OTY4MzYwODB9.UR4ZGQsKZHEpxG-TJt79kn5nXFqF0qOc4Iz3ObIct6c', 'user', '2023-10-09 07:21:20', '2023-09-09 07:21:20'),
(456, 5, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsIm5hbWUiOiJuYWdhdmFsbGkgcyIsImVtYWlsIjoibmFndWt1bWFyODUyQGdtYWlsLmNvbSIsImlhdCI6MTY5NDMxMTQ3MiwiZXhwIjoxNjk1NjA3NDcyfQ.e3kQaiWviV1aHzp6wsFlChLVQ9VROz75t7Gq-GTAfNo', 'user', '2023-09-25 02:04:32', '2023-09-10 02:04:32'),
(457, 5, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjUsIm5hbWUiOiJuYWdhdmFsbGkgcyIsImVtYWlsIjoibmFndWt1bWFyODUyQGdtYWlsLmNvbSIsImlhdCI6MTY5NDMxMTQ3MiwiZXhwIjoxNjk2OTAzNDcyfQ.2bLm5hTqSUa50CvNp4ykzGdJNzkvghQOrW9rbV0cPJA', 'user', '2023-10-10 02:04:32', '2023-09-10 02:04:32'),
(458, 185, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4NSwibmFtZSI6IlNFTFZBTVVUSFUiLCJlbWFpbCI6InNlbHZhbXV0aHUuc3VAZ21haWwuY29tIiwiaWF0IjoxNjk0MzQ2MDk5LCJleHAiOjE2OTU2NDIwOTl9.CiP_t4IA4isFOzlotBjwzwbs5gRNXu36Jc3qtQUCSzo', 'user', '2023-09-25 11:41:39', '2023-09-10 11:41:39'),
(459, 185, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4NSwibmFtZSI6IlNFTFZBTVVUSFUiLCJlbWFpbCI6InNlbHZhbXV0aHUuc3VAZ21haWwuY29tIiwiaWF0IjoxNjk0MzQ2MDk5LCJleHAiOjE2OTY5MzgwOTl9.EjaJML2o36SryeyZ9D6-y0j0cPgaWb_EoudpKavzfyc', 'user', '2023-10-10 11:41:39', '2023-09-10 11:41:39'),
(460, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyMCwiZXhwIjoxNjk1NjUxMzIwfQ.pSdzuOhvzfnJ96P4OtPK9WHHR8pirM1qOUaJ0KOjB5Y', 'admin', '2023-09-25 14:15:20', '2023-09-10 14:15:20'),
(461, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyMCwiZXhwIjoxNjk1MjE5MzIwfQ.-eDcvfk_dphx7G1dI0U2NukEccxCibbZ1QsWmGl9MMQ', 'admin', '2023-09-20 14:15:20', '2023-09-10 14:15:20'),
(462, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyMSwiZXhwIjoxNjk1NjUxMzIxfQ.62wyPnWmgC0T1guhOGnlzUiqxTG5mBA0QeN0I9uJzAA', 'admin', '2023-09-25 14:15:21', '2023-09-10 14:15:21'),
(463, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyMSwiZXhwIjoxNjk1MjE5MzIxfQ.OVvfSf820E6pyqG07-uN-RkG-pIJQnTOnPbOlo3xS9Y', 'admin', '2023-09-20 14:15:21', '2023-09-10 14:15:21'),
(464, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyMywiZXhwIjoxNjk1NjUxMzIzfQ.xNuhMQlHFP-zOdP_J-Qv9WAJpbVglKIi6KcRyUcHriw', 'admin', '2023-09-25 14:15:23', '2023-09-10 14:15:23'),
(465, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyMywiZXhwIjoxNjk1MjE5MzIzfQ.Lo4E_wx0-h-OZwFgnhxFsWzJJiz-hjtWON8IqEeDwiI', 'admin', '2023-09-20 14:15:23', '2023-09-10 14:15:23'),
(466, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyNCwiZXhwIjoxNjk1NjUxMzI0fQ.DH6D6zfVdNwX6xSPKxywpqMk_YnVENAC-1QYy7vePMo', 'admin', '2023-09-25 14:15:24', '2023-09-10 14:15:24'),
(467, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyNCwiZXhwIjoxNjk1MjE5MzI0fQ.kTvCehoLntCd76nF_59iK23YCQ3cDYeaZ1FSMSGiCMY', 'admin', '2023-09-20 14:15:24', '2023-09-10 14:15:24'),
(468, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyNywiZXhwIjoxNjk1NjUxMzI3fQ.-kgNcjo_fycP2ENrmgt_YeY5yMr4t0KV3il_h3nL5ek', 'admin', '2023-09-25 14:15:27', '2023-09-10 14:15:27'),
(469, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyNywiZXhwIjoxNjk1MjE5MzI3fQ.cCNHHtA8eHyeDqvKXmuWeEr_kEgjF8OBPvK8lDE90Kk', 'admin', '2023-09-20 14:15:27', '2023-09-10 14:15:27'),
(470, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyOSwiZXhwIjoxNjk1NjUxMzI5fQ.c6EnOv8Y2H9APzNkTfm7zwa39mjI7APLzLa28hHo07Q', 'admin', '2023-09-25 14:15:29', '2023-09-10 14:15:29'),
(471, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMyOSwiZXhwIjoxNjk1MjE5MzI5fQ.KNbp_0PGEk9Qj_XGgJ43OuB1crB3KFORTD6f6bUTih8', 'admin', '2023-09-20 14:15:29', '2023-09-10 14:15:29'),
(472, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzMSwiZXhwIjoxNjk1NjUxMzMxfQ.vS-WVJUai9fHM-Z-XlVA_mMsboq3ounjKX7h-YS7oGc', 'admin', '2023-09-25 14:15:31', '2023-09-10 14:15:31'),
(473, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzMSwiZXhwIjoxNjk1MjE5MzMxfQ.vk-qCA3nVOMSqWcBYlAJVgufe3y9PTgaXDL79FNsPRE', 'admin', '2023-09-20 14:15:31', '2023-09-10 14:15:31'),
(474, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzMiwiZXhwIjoxNjk1NjUxMzMyfQ.8VwzUuFUU-8urf05Qq2JhHv25RgJ4CrkK7F27tX0mSA', 'admin', '2023-09-25 14:15:32', '2023-09-10 14:15:32'),
(475, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzMiwiZXhwIjoxNjk1MjE5MzMyfQ.IU8LHwr4s6VDZSp10yCZyxt40MVxm7JfYgpOyYztWFI', 'admin', '2023-09-20 14:15:32', '2023-09-10 14:15:32'),
(476, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNCwiZXhwIjoxNjk1NjUxMzM0fQ.8RBN5agc6MfOOOlMNYV8hiE5eokUmV7wHNeyBJHEGc4', 'admin', '2023-09-25 14:15:34', '2023-09-10 14:15:34'),
(477, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNCwiZXhwIjoxNjk1MjE5MzM0fQ.uoqRU8NaqoX8rT7g9DxPfNinvqw3aZqsQCJombgbCpk', 'admin', '2023-09-20 14:15:34', '2023-09-10 14:15:34'),
(478, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNCwiZXhwIjoxNjk1NjUxMzM0fQ.8RBN5agc6MfOOOlMNYV8hiE5eokUmV7wHNeyBJHEGc4', 'admin', '2023-09-25 14:15:34', '2023-09-10 14:15:34'),
(479, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNCwiZXhwIjoxNjk1MjE5MzM0fQ.uoqRU8NaqoX8rT7g9DxPfNinvqw3aZqsQCJombgbCpk', 'admin', '2023-09-20 14:15:34', '2023-09-10 14:15:34'),
(480, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNSwiZXhwIjoxNjk1NjUxMzM1fQ.ilh3pYidVaylRcdiy1gEJuw23PA1Swq9zX-dGDDFBig', 'admin', '2023-09-25 14:15:35', '2023-09-10 14:15:35'),
(481, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNSwiZXhwIjoxNjk1MjE5MzM1fQ.bN1cSdcGIbdBa8A5za__PBgWts-aZns1GKCN8A3-BBA', 'admin', '2023-09-20 14:15:35', '2023-09-10 14:15:35'),
(482, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNSwiZXhwIjoxNjk1NjUxMzM1fQ.ilh3pYidVaylRcdiy1gEJuw23PA1Swq9zX-dGDDFBig', 'admin', '2023-09-25 14:15:35', '2023-09-10 14:15:35'),
(483, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNSwiZXhwIjoxNjk1MjE5MzM1fQ.bN1cSdcGIbdBa8A5za__PBgWts-aZns1GKCN8A3-BBA', 'admin', '2023-09-20 14:15:35', '2023-09-10 14:15:35'),
(484, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNSwiZXhwIjoxNjk1NjUxMzM1fQ.ilh3pYidVaylRcdiy1gEJuw23PA1Swq9zX-dGDDFBig', 'admin', '2023-09-25 14:15:35', '2023-09-10 14:15:35'),
(485, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNSwiZXhwIjoxNjk1MjE5MzM1fQ.bN1cSdcGIbdBa8A5za__PBgWts-aZns1GKCN8A3-BBA', 'admin', '2023-09-20 14:15:35', '2023-09-10 14:15:35'),
(486, 1, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNSwiZXhwIjoxNjk1NjUxMzM1fQ.ilh3pYidVaylRcdiy1gEJuw23PA1Swq9zX-dGDDFBig', 'admin', '2023-09-25 14:15:35', '2023-09-10 14:15:35'),
(487, 1, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTY5NDM1NTMzNSwiZXhwIjoxNjk1MjE5MzM1fQ.bN1cSdcGIbdBa8A5za__PBgWts-aZns1GKCN8A3-BBA', 'admin', '2023-09-20 14:15:35', '2023-09-10 14:15:35'),
(488, 140, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0MCwibmFtZSI6IktlZXJ0aGFuYSIsImVtYWlsIjoia2VlcnRodXNha3RoaTI5MzRAZ21haWwuY29tIiwiaWF0IjoxNjk0Mzg5ODk4LCJleHAiOjE2OTU2ODU4OTh9.M6--C60CUOBLRZsp6BKMyiRgkMeI6DKO6O563YXUmGc', 'user', '2023-09-25 23:51:38', '2023-09-10 23:51:38'),
(489, 140, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE0MCwibmFtZSI6IktlZXJ0aGFuYSIsImVtYWlsIjoia2VlcnRodXNha3RoaTI5MzRAZ21haWwuY29tIiwiaWF0IjoxNjk0Mzg5ODk4LCJleHAiOjE2OTY5ODE4OTh9.o8aX9AeU_bxaTa8DQ6QCEkkvxjFm22Gn3hwdrTSdv9o', 'user', '2023-10-10 23:51:38', '2023-09-10 23:51:38'),
(490, 186, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4NiwibmFtZSI6InZhc2FudGggIiwiZW1haWwiOiJrYXRodGhpdmFzYW50aDE5OTlAZ21haWwuY29tIiwiaWF0IjoxNjk0NDEwMzkyLCJleHAiOjE2OTU3MDYzOTJ9.xnM0ZOl2SiDOj5gDe3lfNeuHy00SRtHqrL2DZ9wsI0g', 'user', '2023-09-26 05:33:12', '2023-09-11 05:33:12'),
(491, 186, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4NiwibmFtZSI6InZhc2FudGggIiwiZW1haWwiOiJrYXRodGhpdmFzYW50aDE5OTlAZ21haWwuY29tIiwiaWF0IjoxNjk0NDEwMzkyLCJleHAiOjE2OTcwMDIzOTJ9.afPrEvprPqsaj-1ImKsEFkvaK7oipYiJfIkIS2eslyU', 'user', '2023-10-11 05:33:12', '2023-09-11 05:33:12'),
(492, 32, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5NDQ3OTM5MSwiZXhwIjoxNjk1Nzc1MzkxfQ.99PfWkaKUHjBwz91-vXuiaerR4QnlLhR_HCAxSPbjt8', 'user', '2023-09-27 00:43:11', '2023-09-12 00:43:11'),
(493, 32, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5NDQ3OTM5MSwiZXhwIjoxNjk3MDcxMzkxfQ.7J49Ty1VaaOdKviP3mlZgFAXaDiAgnuN-O_vU45Hqc4', 'user', '2023-10-12 00:43:11', '2023-09-12 00:43:11'),
(494, 61, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYxLCJuYW1lIjoiTGhla2hhIEJhbGFzdWJyYW1hbmlhbiIsImVtYWlsIjoibGhla2hhMDA3c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5NDUwNTgwNCwiZXhwIjoxNjk1ODAxODA0fQ.Q-e5CrqcwGCrOHn3sc2oIvTbfU4OktTl2UffuhIIDGw', 'user', '2023-09-27 08:03:24', '2023-09-12 08:03:24'),
(495, 61, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjYxLCJuYW1lIjoiTGhla2hhIEJhbGFzdWJyYW1hbmlhbiIsImVtYWlsIjoibGhla2hhMDA3c2xtQGdtYWlsLmNvbSIsImlhdCI6MTY5NDUwNTgwNCwiZXhwIjoxNjk3MDk3ODA0fQ.dgcQBJ4Al9EKt9sq2KAPOfQY39kfbvbqe8C0f3rablM', 'user', '2023-10-12 08:03:24', '2023-09-12 08:03:24'),
(496, 138, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTQ1NzI5OTgsImV4cCI6MTY5NTg2ODk5OH0.bOGcSo7U2n1gzry9_skzNpMWvO_eP5AywoiUuqoO8uo', 'user', '2023-09-28 02:43:18', '2023-09-13 02:43:18'),
(497, 138, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTQ1NzI5OTgsImV4cCI6MTY5NzE2NDk5OH0.aVP42yiyH2ZkRtLUAMyU9HOLDq3FOBkk9W8S8gDm4es', 'user', '2023-10-13 02:43:18', '2023-09-13 02:43:18'),
(498, 138, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTQ1NzMwMDEsImV4cCI6MTY5NTg2OTAwMX0.5I5Xaeqe3ysXoHXeuVWGVMDtzkgl_DKSEZ1TJlSdXHo', 'user', '2023-09-28 02:43:21', '2023-09-13 02:43:21'),
(499, 138, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTQ1NzMwMDEsImV4cCI6MTY5NzE2NTAwMX0.Ky2G9TmYlK9WwVq4CWlrCuO3cqy3O8O1fYEYHA8tGB8', 'user', '2023-10-13 02:43:21', '2023-09-13 02:43:21'),
(500, 138, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTQ1NzMwMDEsImV4cCI6MTY5NTg2OTAwMX0.5I5Xaeqe3ysXoHXeuVWGVMDtzkgl_DKSEZ1TJlSdXHo', 'user', '2023-09-28 02:43:21', '2023-09-13 02:43:21'),
(501, 138, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEzOCwibmFtZSI6Ik1vaGFtZWQgQmhhc2l0aCIsImVtYWlsIjoiYmhhc2l0aEBlc2VsZm1hZGUuaW4iLCJpYXQiOjE2OTQ1NzMwMDEsImV4cCI6MTY5NzE2NTAwMX0.Ky2G9TmYlK9WwVq4CWlrCuO3cqy3O8O1fYEYHA8tGB8', 'user', '2023-10-13 02:43:21', '2023-09-13 02:43:21'),
(502, 72, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5NDU4NDk2NSwiZXhwIjoxNjk1ODgwOTY1fQ.WDQZdNnhgeGEqKR8OwhNlHk_Q6XG_N5Jl8FjePfN1X8', 'user', '2023-09-28 06:02:45', '2023-09-13 06:02:45'),
(503, 72, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5NDU4NDk2NSwiZXhwIjoxNjk3MTc2OTY1fQ.nRrJPCXaKe2fSZmhvfLEEybw92lerM81ufasC8UJ9ow', 'user', '2023-10-13 06:02:45', '2023-09-13 06:02:45'),
(504, 72, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5NDU4NTIwNSwiZXhwIjoxNjk1ODgxMjA1fQ.3eITkPaxuEcM5LTtcBeQDVaFd_UvTIx9W1cav9OUeyA', 'user', '2023-09-28 06:06:45', '2023-09-13 06:06:45'),
(505, 72, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5NDU4NTIwNSwiZXhwIjoxNjk3MTc3MjA1fQ.3yQfpb5TAiM2Rokh8gx_L8PRTfC-Ms6rXgCu4w45biA', 'user', '2023-10-13 06:06:45', '2023-09-13 06:06:45'),
(506, 72, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5NDU4NTIwNiwiZXhwIjoxNjk1ODgxMjA2fQ.4ECmYWy5cBWsnbYCQ0jvx9ul7eoyyK2SpcwEytt3NYE', 'user', '2023-09-28 06:06:46', '2023-09-13 06:06:46'),
(507, 72, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjcyLCJuYW1lIjoiSm9zaGlrYS5TIiwiZW1haWwiOiJqb3NoaWthNzAyQGdtYWlsLmNvbSIsImlhdCI6MTY5NDU4NTIwNiwiZXhwIjoxNjk3MTc3MjA2fQ.dZFfEKyljXN2R0Rjqx8iMdN6Vt9lUKo9qhL9UJsIiYQ', 'user', '2023-10-13 06:06:46', '2023-09-13 06:06:46'),
(508, 32, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5NDY2Mjk0NywiZXhwIjoxNjk1OTU4OTQ3fQ.T9EOwA_nkqfZZJmp4XeCJX5ivGcbugNv7YY8vcB5_Oo', 'user', '2023-09-29 03:42:27', '2023-09-14 03:42:27'),
(509, 32, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5NDY2Mjk0NywiZXhwIjoxNjk3MjU0OTQ3fQ.Ig6s_WFEe-JpIEA4KZ4iJPY76EKA2NclWyNTIZ5dfjw', 'user', '2023-10-14 03:42:27', '2023-09-14 03:42:27'),
(510, 32, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5NDY2MzAxMCwiZXhwIjoxNjk1OTU5MDEwfQ.I13wTg3GsUit0KE5w2qs_nYEA0PGV8DQQBvNpXC5bs8', 'user', '2023-09-29 03:43:30', '2023-09-14 03:43:30'),
(511, 32, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJuYW1lIjoiVGhyaXNoYSAuQi5WLiIsImVtYWlsIjoidGhyaXNoYXZlbmdhaWFoODIzQGdtYWlsLmNvbSIsImlhdCI6MTY5NDY2MzAxMCwiZXhwIjoxNjk3MjU1MDEwfQ.jhB1LluVcjcWrtxr0YDIorCdkfCx0qR3cRdwCDytJe4', 'user', '2023-10-14 03:43:30', '2023-09-14 03:43:30'),
(512, 187, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4NywibmFtZSI6IkdhbmVzaGt1bWFyIFYiLCJlbWFpbCI6InZna3VtYXI4MDU1QGdtYWlsLmNvbSIsImlhdCI6MTY5NDY4MTMzMywiZXhwIjoxNjk1OTc3MzMzfQ.vgm3lQQ9xPeiIzTCBzvfoTaCyPHWvTF_xi5oEijdLVE', 'user', '2023-09-29 08:48:53', '2023-09-14 08:48:53'),
(513, 187, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4NywibmFtZSI6IkdhbmVzaGt1bWFyIFYiLCJlbWFpbCI6InZna3VtYXI4MDU1QGdtYWlsLmNvbSIsImlhdCI6MTY5NDY4MTMzMywiZXhwIjoxNjk3MjczMzMzfQ.SizWm48VdxZOEehAfOE9WmIdHW0gtKG5fdDPyOnJwFM', 'user', '2023-10-14 08:48:53', '2023-09-14 08:48:53'),
(514, 152, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MiwibmFtZSI6IlNob3dtaW5pICIsImVtYWlsIjoic2hvd21pbmlhbW11MjEwOEBnbWFpbC5jb20iLCJpYXQiOjE2OTQ2ODI4MDgsImV4cCI6MTY5NTk3ODgwOH0.HE8LnW5_OvOlsOnAD6MyEpa-RuNPvPiJadiVyKtTTc0', 'user', '2023-09-29 09:13:28', '2023-09-14 09:13:28'),
(515, 152, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MiwibmFtZSI6IlNob3dtaW5pICIsImVtYWlsIjoic2hvd21pbmlhbW11MjEwOEBnbWFpbC5jb20iLCJpYXQiOjE2OTQ2ODI4MDgsImV4cCI6MTY5NzI3NDgwOH0.FZ1WqSx0f1w8s3vN6_YdydGcAwowzTQjqIiYoaqjx48', 'user', '2023-10-14 09:13:28', '2023-09-14 09:13:28'),
(516, 152, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MiwibmFtZSI6IlNob3dtaW5pICIsImVtYWlsIjoic2hvd21pbmlhbW11MjEwOEBnbWFpbC5jb20iLCJpYXQiOjE2OTQ2ODI4MTAsImV4cCI6MTY5NTk3ODgxMH0.uJKO4bLDmjveCLtDfvLdxnLzx5NnGWGvERLwdMjkla4', 'user', '2023-09-29 09:13:30', '2023-09-14 09:13:30'),
(517, 152, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1MiwibmFtZSI6IlNob3dtaW5pICIsImVtYWlsIjoic2hvd21pbmlhbW11MjEwOEBnbWFpbC5jb20iLCJpYXQiOjE2OTQ2ODI4MTAsImV4cCI6MTY5NzI3NDgxMH0.yTeL_RAR8U9LkATWpI_rLQxmhxCtoKK7Lv6VhDiQUx0', 'user', '2023-10-14 09:13:30', '2023-09-14 09:13:30'),
(518, 188, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4OCwibmFtZSI6Ik5hbmRoaW5pIG1haGVzaCBrdW1hciIsImVtYWlsIjoiYW1tdWt1dHRpNzE3QGdtYWlsLmNvbSIsImlhdCI6MTY5NDcwMDAyNSwiZXhwIjoxNjk1OTk2MDI1fQ.vQOdGOKmi7S7pzdLkFNYhsRdqHKX77Nh1hyJ8lIqvNc', 'user', '2023-09-29 14:00:25', '2023-09-14 14:00:25'),
(519, 188, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4OCwibmFtZSI6Ik5hbmRoaW5pIG1haGVzaCBrdW1hciIsImVtYWlsIjoiYW1tdWt1dHRpNzE3QGdtYWlsLmNvbSIsImlhdCI6MTY5NDcwMDAyNSwiZXhwIjoxNjk3MjkyMDI1fQ.Q0n9dIeIFpjE0inXM8PtlWMN3FCmyp9jb4nzRM31RRM', 'user', '2023-10-14 14:00:25', '2023-09-14 14:00:25'),
(520, 189, 'ACCESS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4OSwibmFtZSI6Iktlc2F2YXBwZXJ1bWFsICIsImVtYWlsIjoia2VzaGF2YXBwcEBnbWFpbC5jb20iLCJpYXQiOjE2OTQ3MDIwNDgsImV4cCI6MTY5NTk5ODA0OH0.Uf1rIEcHQ46SQcTLSdfN267w8uqnB9VQ723z6gupnTg', 'user', '2023-09-29 14:34:08', '2023-09-14 14:34:08'),
(521, 189, 'REFRESH', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE4OSwibmFtZSI6Iktlc2F2YXBwZXJ1bWFsICIsImVtYWlsIjoia2VzaGF2YXBwcEBnbWFpbC5jb20iLCJpYXQiOjE2OTQ3MDIwNDgsImV4cCI6MTY5NzI5NDA0OH0.93Dfi79q1d9R_DfWOd6qY_Inq_yT9DajihQfnE3tiR8', 'user', '2023-10-14 14:34:08', '2023-09-14 14:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `userId` bigint NOT NULL,
  `userName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `userEmail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dob` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `userPass` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `referralCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isVerified` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`userId`, `userName`, `userEmail`, `mobile`, `dob`, `userPass`, `referralCode`, `isVerified`, `createdAt`) VALUES
(1, 'Weemax', 'weemaxecom@gmail.com', '7604908579', '1997-03-10', '$2b$12$aGo2yOJFGZgX/BYbRI5Yc.bwKL24garKrZ4qY8sAtoa6SbxCWZ9kC', 'WEE85791', 1, '2023-07-27 12:56:39'),
(2, 'SAKTHI GANESH V', 'sakthiganesh533@gmail.com', '8870354097', '1997-03-10', '$2b$12$tuWNk6ccV5s1oJTxvJdMx.B5.2iHzuPM64YjyJLn3lWZv8vrodaa.', 'SAK40972', 1, '2023-07-27 12:59:52'),
(3, 'Preetham senthilkumar ', 'preethamsenthilkumar2012@gmail.com', '6381469846', '1999-05-06', '$2b$12$eYR3c8n.zKjIfp.ubWtzJ.aJrV1c0kQN3g1HTBgVuwNeN4vVViG0.', 'PRE98463', 1, '2023-07-27 13:19:47'),
(4, 'Vignesh ', 'vignesharivazhagan22@gmail.com', '9789413685', '2023-07-27', '$2b$12$aOv7iGBeYQwC1M8BaWV5Ou03ivW6P9VUPV9pCDpzEmmNtBQlrCG.2', 'VIG36854', 1, '2023-07-27 13:39:07'),
(5, 'nagavalli s', 'nagukumar852@gmail.com', '9842224654', '1973-07-31', '$2b$12$PWY6jcUl2dczB63mq/Knp.dAnQP4FBHxRVcWBRCqu7ZZsbJXjRo4C', 'NAG46545', 1, '2023-07-27 13:49:10'),
(6, 'Nimrukthi ', 'nimrukthisenthilkumar001@gmail.com', '9361874148', '2001-01-19', '$2b$12$lA7rSGf3/KziDtLzsgI4pOO/B6QX18wOmI5ZVCey8daODy961WveK', 'NIM41486', 1, '2023-07-27 13:50:44'),
(7, 'Sanjiv V', 'sanjivdpm2003@gmail.com', '9843959919', '2003-01-17', '$2b$12$Nqg6vKIVh30UFt37X3FrxOMYwxJwa0X7S1DcuH2AXBKt5JN1mF1VK', 'SAN99197', 1, '2023-07-27 13:52:53'),
(8, 'Thilak Rs', 'thilaksenthilkumar16@gmail.com', '7010908103', '1998-12-16', '$2b$12$c4yWvM8pP4RdXVZG02V7WOd6A6ay19f8DPbMYaXmHrdxvMYLT0y4i', 'THI81038', 1, '2023-07-27 13:55:45'),
(9, 'Poomalai Ahilan', 'poomalahilan@gmail.com', '6383677721', '1999-10-08', '$2b$12$NWfDeS5cKTO.T4tCC/wUuegElJsBUSN34zsYxrLzJou/YsZYp7pw2', 'POO77219', 1, '2023-07-27 14:07:55'),
(11, 'Dheshapriyan Thanasekaran ', 'dhesha77@gmail.com', '9994447204', '1999-03-10', '$2b$12$i64tbV7AMGpPkeSDwLu2ReZKb90MTJCyUXgsknzyLAtpdMA77m2J6', 'DHE720411', 1, '2023-07-27 14:16:21'),
(12, 'Arun', 'arunkumardhoni483@gmail.com', '7010993123', '2023-07-27', '$2b$12$oH5vpL9/jaB35FIQ8jKU2.Ly88r9PpuDu0t2sS8LvlUv9vp4.ZSsO', 'ARU312312', 1, '2023-07-27 14:23:41'),
(13, 'Gunal', 'gunalrajarathinam11@gmail.com', '9345710012', '2002-08-23', '$2b$12$ntT0z0NSidyVNv58KcmsteKd3E0CafRajCTf6HhmRuL1W6s5japTu', 'GUN001213', 1, '2023-07-27 14:24:07'),
(14, 'Naveen Prabu S', 'naveenprabu21@gmail.com', '9159651189', '1999-10-13', '$2b$12$IBaZNCtAP.wq/uTOnFLxXO4SKo3gewU2GCiMMIAeimpy6MwZAdykK', 'NAV118914', 1, '2023-07-27 14:38:43'),
(15, 'Kadhar maideen', 'nowfilkaadharmaideennasarali@gmail.com', '8940244770', '2002-11-11', '$2b$12$e1tLB6LWrLAJgmPaxBmGRe3OnaTZ3lAeTjuWzxbbeQEhbqMSi8HxO', 'KAD477015', 1, '2023-07-27 14:43:07'),
(16, 'Hariprasanna', 'hariprasanna082@gmail.com', '9123514756', '2002-04-06', '$2b$12$mzyMi4.subx1BO7bdcfNjuMiHi.5A.QrsQfJGlOQ.ZuXM045LdLfO', 'HAR475616', 1, '2023-07-27 14:43:26'),
(17, 'Darshini Balasubramaniam ', 'darshinibalu0@gmail.com', '9443433822', '2002-08-10', '$2b$12$t7lAxViEVpE6zvoyIOQqrOVmDlD2VLQxMOTrhb3HiGMzA/qJvbu9u', 'DAR382217', 1, '2023-07-27 14:47:42'),
(18, 'Manoj Kumar', 'manojkumars27062000@gmail.com', '9488386593', '2022-06-25', '$2b$12$y.dmG5m8MH8IiSY0W2uodOG2c0qP4aNDakdj4BOG.WSV9jFR5GUaK', 'MAN659318', 1, '2023-07-27 14:50:15'),
(19, 'Hari', 'hariharan112k@gmail.com', '9080514868', '1999-01-11', '$2b$12$Vgzh1YSAxo9o.Q.akqZEAO4SVSqpZ2xPEfISkGTH.0simmwaekqD.', 'HAR486819', 1, '2023-07-27 15:30:39'),
(20, 'Rajkumar N', 'er.rajkumartkn@gmail.com', '9345514914', '1999-05-19', '$2b$12$MFyb6B1/XMTUi0S.t0b84OP6x6dK1Lrxcc4D49ThcrogKlyqHX./W', 'RAJ491420', 1, '2023-07-27 16:06:02'),
(21, 'v. nalini', 'vadivelunalinidpm@gmail.com', '9843406636', '1980-11-24', '$2b$12$E4TYRJNzVv7zRrrkzrGHEeRmGyqx.HgLEgo1U4R7pQaWJNGmIatSC', 'V. 663621', 1, '2023-07-27 16:20:31'),
(22, 'Adarsana', 'vadarsana@gmail.com', '8610701614', '2007-01-24', '$2b$12$AIt0ywZ207gvEJjrC7PvUOatfoVQivs7Mu7kmF6ZacdcJPCIgMl0G', 'ADA161422', 0, '2023-07-27 16:25:24'),
(23, 'Elakkiya V', 'elakkiyavaradharajan20@gmail.com', '9087639742', '2000-09-19', '$2b$12$xEBDrYeEDkjchhkvqeuICOlBAebdeHBRqyJLAV011uOwoqq7CZxYG', 'ELA974223', 1, '2023-07-27 16:25:54'),
(24, 'Mohamed Tariq', 'mohamed.tariq46@gmail.com', '7092339606', '1999-05-24', '$2b$12$JedhGY1kMbDmihHWsceDR.Rb.oQpzmyU1wSlZsQCcmlYKxMSlBSKy', 'MOH960624', 1, '2023-07-27 16:40:38'),
(25, 'Surya', 'suryarajavlt@gmail.com', '9842754367', '1999-10-04', '$2b$12$5qAF9DfqWsI8YPiBOuCGFuin5OMDibxDWFNF6zMKWi6irxPdnukMe', 'SUR436725', 1, '2023-07-27 17:17:04'),
(26, 'Raja', 'rajasusai914@gmail.com', '8072210266', '1999-05-13', '$2b$12$AOJlP0PkvH4b9Vz93HvVHeaEFWjg4.yp2lbzJvYxIqMDxYMtIUJy6', 'RAJ026626', 1, '2023-07-27 17:49:59'),
(27, 'Karthikeyan V', 'karthikeyanvenkatachalapathi5@gmail.com', '9344439060', '2001-08-31', '$2b$12$U5yZzCEXxI..hfFZwRrTB.HQBrFts.2/HtwKRBw1p.VKIgHIBDwfS', 'KAR906027', 1, '2023-07-27 18:21:31'),
(28, 'JEROME P', 'bharathjero2705@gmail.com', '9150457023', '2002-05-27', '$2b$12$xriiJAiPbpbw0nAjZDdFru84wibgCRDOKF/.f0pbDdoeQZTUQA4Eq', 'JER702328', 1, '2023-07-27 22:18:37'),
(29, 'Yugendiran G', 'yugendiran2829@gmail.com', '8838669898', '2003-10-28', '$2b$12$lFFzarZZNUJMZsr9637svuQn1LGZRbcKK.Cib25OWypEteDnFrSaq', 'YUG989829', 1, '2023-07-27 22:38:13'),
(31, 'Yugi - test', 'golspoh128@gmail.com', '9112233449', '2003-10-28', '$2b$12$x1WWReAOZFCjpoxZBZDZG.8bfQ9VgrWr7JdQ1l6JW4bQ96e4tA9Eu', 'YUG344930', 1, '2023-07-27 22:48:17'),
(32, 'Thrisha .B.V.', 'thrishavengaiah823@gmail.com', '8015752265', '2003-10-08', '$2b$12$zyn6626NTqX0fTHG1reKYewbZ.EdK4m38oTubiJgeO8SXdP8aSdqS', 'THR226532', 1, '2023-07-28 00:30:07'),
(33, 'Sathiya T', 'sathyathirumurugan2@gmail.com', '8825446497', '2003-10-04', '$2b$12$3EhanGESFGCBXhf.0cfXU.yDVBmtdg/.ddkWEKFREjjZ3VWsxcod2', 'SAT649733', 1, '2023-07-28 00:32:54'),
(34, 'Bhuvi ', 'bhuvisai21@gmail.com', '8870420067', '1999-11-21', '$2b$12$Ua9dp4NnonIVdJmGJNuyS.RamE5r3SitGS.zVJK.ElIJ1Lc6q8lX6', 'BHU006734', 1, '2023-07-28 01:52:22'),
(35, 'Kavin', 'kavin7254@gmail.com', '6369395701', '2001-03-22', '$2b$12$zPjKgGVgLpB.iIVgroleieDdX2um9jluzQrVoXmHClxTDqj0VXk2e', 'KAV570135', 1, '2023-07-28 02:35:45'),
(36, 'Sukeeswer ', 'sukeeswer3069@gmail.com', '9344473330', '1997-04-28', '$2b$12$0UzfkpqO1EUgWqImNLhYIOI8OF84nPONUhDjDVGno26O3qOMzjtrS', 'SUK333036', 1, '2023-07-28 03:16:04'),
(37, 'K. R. Poongodi ', 'saipoongodik2012@gmail.com', '8675275951', '1978-04-08', '$2b$12$AtcTP5F23javA2PpBX8oT.WcNtjxnN6xx3SgZKRKmZ06a4InCf3Z2', 'K. 595137', 1, '2023-07-28 03:26:26'),
(38, 'Deepak Kumar M', 'mdeepakkumar0301@gmail.com', '8072721709', '1998-01-03', '$2b$12$cNBuiScjviKbc7lofit6ieREt0x0oOLSdc.Y3UAzoRuDeNh40BFEK', 'DEE170938', 1, '2023-07-28 03:56:29'),
(39, 'Sakthivel D B', 'sakthiveldb95@gmail.com', '7418595542', '1995-12-01', '$2b$12$vPZJ5u/XThyz0MfT0sPmmeSu6ZSJzsrL1Wm780GVsHqLvE5JQg88a', 'SAK554239', 1, '2023-07-28 04:00:02'),
(40, 'Gokul Anand', 'gokultrz16@gmail.com', '9840810383', '1996-12-16', '$2b$12$RytFvdKM4KarXQJy0FJ7iOBjBMWm8jW4jA8k6dJ7KNnYC/PW26GE.', 'GOK038340', 1, '2023-07-28 04:34:33'),
(41, 'Vignesh', 'svigneshtn29@gmail.com', '9944079313', '2003-03-04', '$2b$12$Fa0QVm/RQuk0F07Mrco.CeZqlYHolKGFJTNyB1jquzCgaTKApdLjq', 'VIG931341', 1, '2023-07-28 05:32:28'),
(42, 'Anand', 'ananddn777@gmail.com', '9944682764', '2023-07-05', '$2b$12$BOJ5K1qI0rsh/OW.zEvy8.t.CiqP/.HOcukApWibqZ8.Tspax8oKC', 'ANA276442', 1, '2023-07-28 06:06:10'),
(43, 'Harish', 'harishjude@gmail.com', '9790549739', '1999-01-31', '$2b$12$TDNIOwEBFKLbc4y.jTDgbew8.s2UU3lK5/sSuz0B3Jqg3iCAr23Ee', 'HAR973943', 1, '2023-07-28 06:06:21'),
(44, 'SARAVANAKUMAR S', 'saravanakumar022@gmail.com', '8838757171', '1992-03-07', '$2b$12$5HXopoLOl0BBODLkK0s17eJkX9W5y6nMuLE50IyjaYBndcEe2O89e', 'SAR717144', 1, '2023-07-28 06:20:00'),
(45, 'Vyzshali ', 'vyshuvenkatesan@gmail.com', '7094879901', '1999-11-25', '$2b$12$w.KiUaF5Lm3Jy3Bv8pX9IuamaM1VHTbXAPxDaXD/67YNWzp2YiFBe', 'VYZ990145', 1, '2023-07-28 06:38:44'),
(46, 'Naveena sri', 'naveenasrik@gmail.com', '6383671486', '2000-07-12', '$2b$12$uD7TdQ/sc.8mYudStwMUXuFetg95pW7t58o0Dy6qMhh.EjOSuCe/O', 'NAV148646', 1, '2023-07-28 06:40:10'),
(47, 'Kaviya Shankar', 'kaviyashankar2828@gmail.com', '9940076493', '2002-06-28', '$2b$12$JXnoZ90wIbW66Y6aHFfyKO23oAcQyLFceddulQQq8Zmmeur9BZpXa', 'KAV649347', 1, '2023-07-28 07:23:40'),
(48, 'ManojMithun S', 'manojmistymac@gmail.com', '9629222618', '1996-12-29', '$2b$12$uKACKGqhwmVgb7.aYukqP.0k0SDsOY9xVflG82/NdgM7XlVfGr2kK', 'MAN261848', 1, '2023-07-28 08:39:04'),
(49, 'Hemalatha', 'hemamathi1902@gmail.com', '7418884563', '1997-02-19', '$2b$12$VB364M1teFRSUprK3dXRGeqzijeZOcM7LeHCo5.ts/TqdVvpzBDrO', 'HEM456349', 1, '2023-07-28 08:44:53'),
(50, 'Shankari', 'shankarishanmugam23@gmail.com', '6380192941', '2003-03-30', '$2b$12$tPziSxupp.d9ovcGjJUyZOIwomX2jWx5/fR6hy.GU.fD8DHV4JLI6', 'SHA294150', 1, '2023-07-28 09:04:51'),
(51, 'Geetha', 'geetha4771@gmail.com', '9361239048', '1992-09-06', '$2b$12$fqrx5IcudgAiymvF6SknFOcYup7OexqrUIayGk5HMw3kHPBxbzZpq', 'GEE904851', 0, '2023-07-28 09:27:12'),
(52, 'srinath r', 'srinathr20bct042@gmail.com', '9159866144', '2002-06-04', '$2b$12$kwNpEWy7UnwDmLIyGrJ4p.gi0Z4C7dCswIspeeglfzPDeC06UG2SK', 'SRI614452', 1, '2023-07-28 09:31:03'),
(53, 'Maha jayanth ', 'mahajayanthmanoharan@gmail.com', '9360313286', '2002-12-07', '$2b$12$e04dnF1A6GwSoy9OJOpRhu3edg2Ln1Zu6bvoCDu9qNl./8yQHPMOu', 'MAH328653', 1, '2023-07-28 09:31:11'),
(54, 'Karthick ', 'itsdkarthickhere@gmail.com', '9080564808', '2002-06-13', '$2b$12$xw7ZlxC4WLanCajRWDSxSeZ0pGoihELWhaHBvjT4thMhuAHYlb9Ei', 'KAR480854', 1, '2023-07-28 09:31:16'),
(55, 'Sanjay ', 'sanjaychandran2307@gmail.com', '8667011722', '2000-07-23', '$2b$12$Wy0L3EtBy7569OO8f5PQcOop11TpxMT/ufWV8GP1GMsNI7eouwGrK', 'SAN172255', 1, '2023-07-28 09:36:07'),
(56, 'Manishaa K', 'manishaakrishnavel@gmail.com', '9566532219', '2003-01-20', '$2b$12$.HU2HTeKyjsz2LOVZzF76uMEg/TlQg/lcyEEJMug98dImFY.Ue71a', 'MAN221956', 1, '2023-07-28 09:47:20'),
(57, 'Akash T P', 'akashthozhan@gmail.com', '7708012111', '2002-03-06', '$2b$12$TFsG0le.bdRsyprXlrK8kuOuMklXBhpKTo17T0VuCAfjw4tejc7ca', 'AKA211157', 1, '2023-07-28 09:50:33'),
(58, 'Bharath TR', 'bharath21official@gmail.com', '9566853723', '2003-04-21', '$2b$12$BuAVyu6zoGdXW4oTXVCt6OnPQwxcB0LIKnSHiKtPyE1YSPZDAWVmO', 'BHA372358', 1, '2023-07-28 10:17:52'),
(59, 'Sabari', 'sabarikumar984@gmail.com', '8667321204', '2002-11-21', '$2b$12$VPOxXgyz/t8Ba9MLYu869uyPKC7DhDqTTVljvuUeZ0lnjtEitiZYu', 'SAB120459', 1, '2023-07-28 10:19:24'),
(60, 'Ramesh Chandran ', 'rameshchandran2002@gmail.com', '8104208603', '2002-06-03', '$2b$12$jrXFFszpHTKAw9K0Oup9Luu4zMMyK2NKRn4WbdvUyOPSfBn9wOfBi', 'RAM860360', 1, '2023-07-28 10:28:45'),
(61, 'Lhekha Balasubramanian', 'lhekha007slm@gmail.com', '8248212055', '2001-05-22', '$2b$12$r24Kuj6KSasgLZI6sDwLG.hkMO4xLspCNb0bn4AwI2roI2qndk3zm', 'LHE205561', 1, '2023-07-28 10:31:41'),
(62, 'Pragathi', 'Pragathipragu29@gmail.com', '9087809085', '2002-11-29', '$2b$12$01M2O7rLjFzC6uvTJgO5Y.l5xlGvqeeUVZFWnyfECOEIJC33.x0LG', 'PRA908562', 1, '2023-07-28 10:31:48'),
(63, 'Swathi', 'pswathikaa03@gmail.com', '9345074514', '2003-01-16', '$2b$12$h/Ts7w3PBhhe/WqImYt6We7r34MAKw1Rr53gfCeaptgt3u8fC5owS', 'SWA451463', 1, '2023-07-28 10:43:09'),
(64, 'Yuvan Shankar P ', 'yuvanpys007@gmail.com', '9865590909', '2002-08-18', '$2b$12$1r2OckqgVP8u7p8p1CQNk.ti2hwKcv9dU1OwfL3uJb8iwt4Z8e9BK', 'YUV090964', 1, '2023-07-28 10:45:28'),
(65, 'Suganthi V', 'sakthivrajan@gmail.com', '9894044691', '1997-03-10', '$2b$12$3OYrxoqnCHIrTPryuVnDyuA6yrUrwblFixTOJ13HEnff3B217/G4y', 'SUG469165', 0, '2023-07-28 11:23:50'),
(66, 'Suganthi V', 'sakthiganeshvrajan@gmail.com', '9894044691', '1997-03-10', '$2b$12$MTQI6pjVkFtk2IjIqjRlLumTlUe.D4E8N84aYE4YMZxOcQEANmb5G', 'SUG469166', 1, '2023-07-28 11:25:47'),
(67, 'Anbu', 'anbuanbarasu@gmail.com', '7708626788', '2001-10-16', '$2b$12$699MjWBgY2BmxyNTiq.1U.gcm4Bxdj0NkFGM3Yart0xHHOuYUkh3S', 'ANB678867', 0, '2023-07-28 11:43:24'),
(68, 'Priyankha', 'priyankha1504slm@gmail.com', '8870976466', '2004-11-15', '$2b$12$Z2l5oQlpwgjAkiwy9Mrs6ukfFp7DqTN1qT/0I5EBNGczOgFS7Uybq', 'PRI646668', 1, '2023-07-28 11:44:17'),
(69, 'Kavipriya ', 'kkavipriya174@gmail.com', '9363052591', '2002-11-11', '$2b$12$eDrunuXtKOkDFjmkZqh/hecYNqWMVItRfqTl/KMSP879yah9p55gS', 'KAV259169', 1, '2023-07-28 12:44:19'),
(70, 'Jeeva', 'jeeva7240@gmail.com', '8072336649', '2002-10-13', '$2b$12$nZ766XiS4VOp1V2e5V0kD.f2uA8Dr8aLi4PmN0SxDjevpYU0X7nLK', 'JEE664970', 0, '2023-07-28 12:45:22'),
(71, 'Indhumathi.R ', 'indhumathi242002@gmail.com', '9790258944', '2002-10-24', '$2b$12$cpGIHmktGBI72n0vr8QvhOC091/aV.h2sxaVHSPBn5VaW5zWLB1HO', 'IND894471', 1, '2023-07-28 13:12:26'),
(72, 'Joshika.S', 'joshika702@gmail.com', '7598243340', '2004-01-22', '$2b$12$3jpH7iZjj.H7jAxEnfnHceFfS.zMOxVsURTDe1IHUSkB9CM5nm2QC', 'JOS334072', 1, '2023-07-28 13:43:47'),
(73, 'Gnanasekar ', 'gnanasehar000@gmail.com', '6385648574', '1995-01-31', '$2b$12$7x.TXSE.p41OBHuRpBYo2Oi3QIC5zx5ShgGRTjPwUHEYqx3RyIt0q', 'GNA857473', 1, '2023-07-28 13:56:50'),
(74, 'Gokul ', 'gocoolrz@gmail.com', '8825813291', '1999-12-10', '$2b$12$qll5MlkOggwvu0uGWSGvTen89gnI8Ch6FfeLGZE2xzbmugX7d3b5W', 'GOK329174', 1, '2023-07-28 14:23:38'),
(75, 'Mani kandan', 'mkanfan709@gmail.com', '9790397886', '2000-02-01', '$2b$12$KxDbwOw8U/AXDraUQZyj9e/fRt4FZf69oY4UBAPF36KI9cnQa1gQK', 'MAN788675', 1, '2023-07-28 14:31:24'),
(76, 'Arivulagan . M', 'arivalagan.dpm@gmail.com', '9047272600', '1977-12-03', '$2b$12$X913bqBSFA3gdJm5HIqIveLCPJyleri4H5U7sp3AUJfSyzWybCcR.', 'ARI260076', 1, '2023-07-28 15:04:51'),
(77, 'Nithin ', 'nithinnking93@gmail.com', '9994350742', '2006-09-01', '$2b$12$Gqwy1vr4IWhttXPoTo50DunjnP4wMbm/23I2TyyptDVnGH3t1ewIS', 'NIT074277', 1, '2023-07-28 15:06:32'),
(78, 'Priya', 'hariguru292@gmail.com', '9843882600', '1987-01-03', '$2b$12$6FfRXF47YQgfc4kdIsRzAOGsgNl3TMcpthe05kac601Fus9lDsyEa', 'PRI260078', 1, '2023-07-28 15:08:56'),
(79, 'vishwa priya', '17vishwapriya@gmail.com', '9080979142', '2000-06-03', '$2b$12$hHK3kMnFXF3Ik50qeqLjfeKkMPXnyrzvxcLcmIE8groARpPoTfTrm', 'VIS914279', 1, '2023-07-28 16:14:16'),
(80, 'vadivelu ', 'vadivelu.dpm@gmail.com', '9843669919', '1979-07-31', '$2b$12$KESJMRboXKBnj3NwjLSx8ObCXP9egA6xyd.W9HH59BMCG.zogo5AG', 'VAD991980', 0, '2023-07-28 16:59:52'),
(81, 'Umar faruk', 'umarfaruk14396@gmail.com', '8667217726', '1999-11-28', '$2b$12$.mU9RGB6ln.ABdKa6x0VKe1r1awkf2qjsXyKiTtXZbbCNfw.7zzeq', 'UMA772681', 1, '2023-07-28 23:28:03'),
(82, 'Suriya Balasubramaniam', 'suriyasurthin@gmail.com', '9500752154', '1994-07-11', '$2b$12$S4fmbA6FqgssF/ZdXu1/xusQCIhDzub2mDjskE.pSJdAWPhcZUgsW', 'SUR215482', 1, '2023-07-29 00:58:33'),
(83, 'Santhosh', 'santhosh.santhosh1@cloud.com', '9629327543', '2005-08-02', '$2b$12$1hLqde2ETlepPcDxYDqLQOoLh.aECGYHcPdYaGOR/y6Fcx8ehO1qi', 'SAN754383', 0, '2023-07-29 01:04:07'),
(84, 'Santhosh Santhosh', 'santhosh.santhosh1@icloud.com', '9629327543', '2005-09-01', '$2b$12$IWkY5JsGK424GoLjjqI7EOasXv7E5YE7X6WDiCPlxmEJbSWdhkI/m', 'SAN754384', 1, '2023-07-29 01:07:34'),
(85, 'Angelin', 'angelinpriyaanand@gmail.com', '8939940491', '2020-03-28', '$2b$12$IxrQz6K1RPgXaEcUSMnJUuvi5oE6i1iRd9UU0oZwO/J2npDQ.DO6S', 'ANG049185', 0, '2023-07-29 02:00:34'),
(86, 'Angelin', 'nilegna.priya@gmail.com', '8939949491', '2002-03-09', '$2b$12$8ckoeKsYd4Zii9HuvuAwMu47XIhG/J22WhA3XIVdiTjr5ndThVlI.', 'ANG949186', 1, '2023-07-29 02:05:29'),
(87, 'Priya .v', 'naveena8087@gmail.com', '9025470979', '1998-03-30', '$2b$12$wGBPs4mdWGxn/KABcgscN.3sQt3Q.Evrk2MOz10Xrn28vxhyfpb32', 'PRI097987', 1, '2023-07-29 03:55:01'),
(88, 'Yugi - test', 'dev@gmail.com', '9112233449', '2003-10-28', '$2b$12$8Yv0UYSkJDAoSu6A9LzYbeFjM279miG8n.u95oItbNZIEPLz0O5Zu', 'YUG344988', 1, '2023-07-29 10:14:34'),
(89, 'Yugi  test', 'dev2@gmail.com', '8838669898', '2023-07-29', '$2b$12$Lnq13vGJjQYqjlz5/YTq4OqKFiqCvnGzSu5.j42MwllH2vcPbxdbi', 'YUG989889', 1, '2023-07-29 10:20:15'),
(90, 'Yugendiran G', 'dev3@gmail.com', '8838669898', '2023-07-29', '$2b$12$yRLL2usYaEy/xhUi6Rsm2.rnlShwKApBXq95/Xu2qERY/6XRMrNLS', 'YUG989890', 1, '2023-07-29 10:22:30'),
(91, 'test', 'dev@test.in', '8838669898', '2023-07-29', '$2b$12$CHIOF/TNCXsCiN6myOcBoOtCHmkzchkkGwsI.5OsNw.h.sTs9oNBW', 'TES989891', 1, '2023-07-29 10:27:09'),
(92, 'Thaufeek', 'Sovahtofficial@gmail.com', '9629428548', '2022-12-01', '$2b$12$QFrf9CiFbVV/TlZzY95Ope7amvtqmvoplBRetCnpqbsQCSpz3BAL2', 'THA854892', 1, '2023-07-29 10:33:15'),
(93, 'FELIX', 'felixice174@gmail.com', '9715346503', '2000-04-17', '$2b$12$GZO5HRG8vUlls6nmjbrPUefB6DB1Xun2XwX1inRvgJP7HqU6bIdvu', 'FEL650393', 1, '2023-07-29 12:54:26'),
(94, 'Mohamed Fazil J', 'fazilms643@gmail.com', '7010778242', '2002-12-28', '$2b$12$wsoRvdwUM85QMExB2uZ8bO89NjOOjQDvfct/KPvjZxJunwUes28jS', 'MOH824294', 1, '2023-07-29 14:42:36'),
(95, 'Gaja Priya Surendran ', 'gajapriya8667@gmail.com', '9566442047', '2002-05-05', '$2b$12$n2MvqBBNKSvDhuFpHwj1Ye2Z7aWJd3JMkwh0UJv3ZIpv94nLS7YZG', 'GAJ204795', 0, '2023-07-29 15:13:04'),
(96, 'GOKUL SASIKUMAR', 'gokulsasi422@gmail.com', '9944646391', '2000-10-31', '$2b$12$WMY6Z.oiokMg25Db/Vwwpe6g8KrBSABtxgyrq95KSYZ5Q/v.oNOAC', 'GOK639196', 1, '2023-07-29 17:36:30'),
(97, 'Ravi', 'ravibhuvana1177@gmail.com', '8072181765', '1976-10-24', '$2b$12$zvG5RO.I0uBKi0WUVrq3QOzk/tvxoqrnxpY0j6P5EqsSBQdsNJcrS', 'RAV176597', 1, '2023-07-30 05:32:54'),
(98, 'Bhuvaneshwari', 'bhuvaneshwariravi06@gmail.com', '9360152017', '2006-05-17', '$2b$12$LUUY9A6jd9r03Kjch7zHbejLtKV9RHGgQ8JhARdvQhQoUJj2Eo.5K', 'BHU201798', 1, '2023-07-30 05:51:37'),
(99, 'Reshma', 'reshmakannan28@gmail.com', '8754356300', '2002-12-28', '$2b$12$afKgD6LmaAkoajV6bST9WeW/q4TcmlOczHGjbaq.P5a7xVjuU6DUC', 'RES630099', 1, '2023-07-30 08:37:53'),
(100, 'Raja', 'raja16.smr@gmail.com', '8973773284', '1997-01-16', '$2b$12$mDvCL2u6bRr50yeJZ1P/X.X.K5VbDRXojPrhpuWGcQsFpDQGhGRhy', 'RAJ3284100', 1, '2023-07-30 09:16:38'),
(101, 'Divya ', 'divyashree75sa@gmail.com', '9445355733', '2002-05-07', '$2b$12$QwsjJKGw6fCjhrXIWg6mU.F1lTN/uTLpYAjGmn1xWG4ADRatBqNfm', 'DIV5733101', 1, '2023-07-30 14:36:54'),
(102, 'Gokul', 'gokulanandhan19@hmail.com', '9790086479', '1999-05-19', '$2b$12$w4OWcz7cHH.5cGL6VB.feOcNFbpq8a713HfvdYvvk4PB.eJttbH9.', 'GOK6479102', 0, '2023-07-31 03:29:26'),
(103, 'Gokul', 'gokulanandhan19@gmail.com', '9790086479', '1999-05-19', '$2b$12$RTA0gTN/hPnpVsCgLnTQWetZJrGj8reeT4n0Epg7rMMY8dTXLl0qq', 'GOK6479103', 1, '2023-07-31 03:32:26'),
(104, 'Arun', 'arunprasath170777@gmail.com', '9345780483', '2003-04-14', '$2b$12$Y/vFMgQOyexGl/mPsDlSVO3TiRKQttt78S/QPB7zNDgoQ6xt.e0Nq', 'ARU0483104', 1, '2023-07-31 05:57:51'),
(105, 'Praveen KN ', 'praveen2020raj@gmail.com', '9894500195', '2001-12-18', '$2b$12$0XxopUcIR8kTN.2t7.FA6eBug7EZVrWFnJhotFFUBCtZLC3tn9PNW', 'PRA0195105', 1, '2023-07-31 08:34:19'),
(106, 'Vijeash', 'vijeash15@gmail.com', '9597633676', '2003-05-15', '$2b$12$qyvC2pkgvylioYkFwQwc7.cxDqe0PBSGLjSmiYmNlF9oWgPkrseNu', 'VIJ3676106', 1, '2023-07-31 11:56:00'),
(107, 'Panneer', 'pm3377@email.com', '9047062013', '1999-08-01', '$2b$12$4o9unUYO3WIMg8ghZUsdR.XgNovdjagGFIp3ZXR3KI1MMbx6HRdjS', 'PAN2013107', 0, '2023-07-31 15:17:26'),
(108, 'Aravindan E', 'aravindanaravindan484@gmail.com', '9150102475', '2001-06-18', '$2b$12$RfaYV4uAZ66Lvn7HphS3veDzn.1hELQgagW8eMQHyEOc/DPlMqgc2', 'ARA2475108', 1, '2023-08-02 04:20:37'),
(109, 'Gokul', 'gokulnetworker@gmail.com', '9688515696', '2001-04-29', '$2b$12$8nL9yQ3oK9/r8GHFqvsMKefoVix/7gxk3mziRve01C8ZvSeOdC2Te', 'GOK5696109', 1, '2023-08-02 07:12:13'),
(110, 'Gayathri ', 'gayathriannu13@gmail.com', '8668117239', '1999-10-19', '$2b$12$/un4XuBE69TeZ2I8FZO57.7LaBFu45xbRj6SgbRkTAZmfDHJKwpn6', 'GAY7239110', 1, '2023-08-02 08:40:42'),
(111, 'Subhasree S', 'subhasree2052001@gmail.com', '9789638613', '2001-05-20', '$2b$12$eGZxPEq61a5v5oBqG1o45.2fnrjm124qFhRwTEqt/BisJj1kfyPYK', 'SUB8613111', 1, '2023-08-02 13:02:10'),
(112, 'Arthi Kannan', 'arthi01shinu@gmail.com', '9176095422', '1999-11-01', '$2b$12$LkKhumrl32Y2Po7FcEJTAu6Tey9U706zDrjVflTb6klHzlVt.x7Tm', 'ART5422112', 1, '2023-08-02 13:31:17'),
(113, 'kalai', 'kalaiselvisenthi14@gmail.com', '7904629266', '2002-11-14', '$2b$12$v9.gKzmA/VKCUDvMIeX6oO1lRelaFofCUh6ZBU0XSqhWte8hIG/0m', 'KAL9266113', 0, '2023-08-02 13:58:43'),
(114, 'kalai', 'kalaiselvisenthil14@gmail.com', '7904629266', '2002-11-14', '$2b$12$LTIAVuT7eBDG2usf0R4tC.6jzaxlsmxy.BEvkfl.HDQuwYT7hhMAe', 'KAL9266114', 1, '2023-08-02 14:01:06'),
(115, 'Mythily N', 'muthu2012@gmail.com', '8610502837', '1990-04-10', '$2b$12$OHWvdNa5RhdLGbjLz9kmWeIu.cF/WP6exdYXGv0Am8GwFT5ItaEji', 'MYT2837115', 1, '2023-08-02 16:12:22'),
(116, 'Abdul Munazzir a m', 'abdulmunazir@gmail.com', '8760667863', '1997-03-04', '$2b$12$12wGKmdh8xA/2NWm3F4IBuSEl5/1o2g2ki9bYejB10muhhbRTqw3a', 'ABD7863116', 1, '2023-08-02 17:22:12'),
(117, 'KAVIANANTH A', 'kavinananth51@gmail.com', '6383959052', '2006-01-12', '$2b$12$gAcN8J6j/7RS2YJl0XmQpeVLUiEqzTvLfz0oZycYQNbDgPuRNcNFa', 'KAV9052117', 0, '2023-08-03 01:03:50'),
(118, 'Gayathri Thangavel ', 'gayathrithangavel1910@gmail.com', '8668117239', '1999-10-19', '$2b$12$Gjsd3WvUaBVlcBUk3r1WS.WqaIY5Hw.JGbC6/L9bRMpS.jUmlvXBC', 'GAY7239118', 1, '2023-08-03 08:08:50'),
(119, 'SAKTHI HARIHARA PRABHU', 'sakthiharish499@gmail.com', '7904980440', '2002-05-03', '$2b$12$seYEVoWd7yBbhXG7wW4Q4.Z2/FUNzn7Kkcqbpkm6U8GZolfhXyzC2', 'SAK0440119', 1, '2023-08-03 09:32:24'),
(120, 'Joys Renisha ', 'joysrenisha17@gmail.com', '8104386102', '2001-12-24', '$2b$12$jarzloH.rWjiDc8wI8CdReLUAobL3bzhcWz2WpARTMku4Cgm1Z5T.', 'JOY6102120', 1, '2023-08-03 10:04:49'),
(121, 'Tharani ', 'tharanieswaran2002@gmail.com', '9655326355', '2002-10-10', '$2b$12$vcTukMLRHX69Cw95kpTAgugPblA9tnZ3TluEpzaG5UX4pVXnRzab6', 'THA6355121', 1, '2023-08-03 10:54:55'),
(122, 'Senthil', 'srs.erd71@gmail.com', '9043394955', '1971-06-07', '$2b$12$HqPM3EovbWtaozc2n8kdDOMqm3PhIqI81a5jUhjHACm96895Vo/Q.', 'SEN4955122', 1, '2023-08-04 12:14:19'),
(123, 'Abdhullah ', 'smartkiller8620@gmail.com', '9445580925', '1986-05-09', '$2b$12$kCkmCEdqt8pmv5rwZ0t5AesW44Lcj1KYRKBQ0l.foOZFyzvEIbC5.', 'ABD0925123', 0, '2023-08-04 15:12:28'),
(124, 'Abdhullah. N', 'jokerprofessor287@gmail.com', '9445580925', '1986-05-09', '$2b$12$vV2s/lpRTjgay5oNfZT1bOyUbHbFoKJnsHvwaAZHPGzu8SBjEF0Za', 'ABD0925124', 1, '2023-08-04 15:31:18'),
(125, 'Tharani R', 'tharanirajkumar114@gmail.com', '9790435430', '2003-04-11', '$2b$12$zF0eMN0Ei5kYrbItTUh2zutHEzRtYsG9neYPRJivpeuuPLp7WpDZe', 'THA5430125', 1, '2023-08-05 01:15:12'),
(126, 'Suryaa sanjay v', 'Suryaasanjaykumar@gmail.com', '8524981535', '2001-09-06', '$2b$12$ZlCd41ugm206bQR02azIXu5LWH5TKb8uvHhuooYb7K.nUmDp.ue26', 'SUR1535126', 1, '2023-08-05 05:21:26'),
(127, 'Kavin Kumar', 'Kavinkumar9991@gmail.com', '9597690655', '2002-11-12', '$2b$12$6NyjmYcQ.wDuOwwmU1C3AeYpC40yrc2XTpHB10wDYOhBJBUA6/wda', 'KAV0655127', 1, '2023-08-05 09:27:38'),
(128, 'Divija', 'divija0330@gmail.com', '8778764576', '2001-04-03', '$2b$12$WjRbPb0ry4h8aN4pu8R8W.UEtZ9YmaqSxHF0QUyIrQtvLPSPy5t3W', 'DIV4576128', 1, '2023-08-06 18:10:58'),
(129, 'YYugi', 'yyugi64@gmail.com', '8838669898', '2003-10-28', '$2b$12$Tap7ZYz7lqz6lB6.xT46LO1orl1wcf4HCt.j9OZawro.egHHYPWkG', 'YUG9898129', 1, '2023-08-08 15:00:09'),
(130, 'Gowthami ', 'sgowthami2101@gmail.com', '6381709794', '2000-01-21', '$2b$12$7ftVD/QnGGroNEKxzsL7i.wAkWot8yxOkpIP4bcKSGHwDd4MxTldm', 'GOW9794130', 1, '2023-08-16 13:29:06'),
(131, 'Prasanth', 'prasanthhopezz@gmail.com', '6374741643', '1999-08-14', '$2b$12$pVBwQLW.5e3/dS1gjMKqTe1Uur/PvI3ZyZ7mVg.uNO2GAxl/EDl6q', 'PRA1643131', 1, '2023-08-16 13:33:20'),
(132, 'Aishwarya Raman ', 'aishudaishwarya1098@gmail.com', '6369418260', '1998-11-10', '$2b$12$ierj/RONwx5gYVtnTOvz3.aWeQI3oLoDrAnk9l9anzCuhjc/E7J8q', 'AIS8260132', 0, '2023-08-16 14:08:54'),
(133, 'VIGNESH RAMKUMAR', 'vickysanthosh96@gmail.com', '8838615022', '1996-10-15', '$2b$12$I8qUAaREFqIGU.1S9K.P3.poKSVo5KzV6PDb.lR.XbNxtk/79Yd.S', 'VIG5022133', 1, '2023-08-16 14:23:45'),
(134, 'SENTHILKUMAR', 'ajsreekumaran@gmail.com', '9578582656', '1995-08-15', '$2b$12$Za/N1uyznbQ6LO14VQVKsuINHiRfVelGL/n58BfS2.m2ad7Sy4FbS', 'SEN2656134', 1, '2023-08-17 08:35:09'),
(135, 'Vishnuvaradhan M ', 'vishnuvaradhanmech@gmail.com', '7092725231', '2002-06-28', '$2b$12$GNba1JIjQ9WqQE7gLIrgeOrtJQG7XRA3d3HamhAf9O.hK9diKkpri', 'VIS5231135', 1, '2023-08-17 11:00:04'),
(136, 'Jeeva', 'jeevashanmugam0228@gmail.com', '7395894082', '2003-02-28', '$2b$12$ND57nOmmsN97NM/5S.Nc/eHRcQIf.MVA1gJtR5PPAcV.FwPZdfbqW', 'JEE4082136', 1, '2023-08-17 15:38:23'),
(137, 'Ruby', 'rubikarubi23@gmail.com', '7904364692', '1998-04-23', '$2b$12$SsA1r2z5JPMS1XMDtXSFpO0ocgjFu66XVG.5sPxzpqwhTmr31QD9y', 'RUB4692137', 1, '2023-08-17 15:47:24'),
(138, 'Mohamed Bhasith', 'bhasith@eselfmade.in', '9787086036', '1997-07-18', '$2b$12$FXbhTvTUPH.VYEFW8c/xBO7DTIaHXaNTgs7KcT4FAO7SBPd5zN3VC', 'MOH6036138', 1, '2023-08-17 17:26:18'),
(139, 'Sneha', 'svc1021@gmail.com', '9087227548', '2000-02-10', '$2b$12$Xdo5D5mAzbNlkNZHs.lwMeGNJZLurqK71W7h0FWSKFPGwkuqSxOu2', 'SNE7548139', 1, '2023-08-18 02:12:40'),
(140, 'Keerthana', 'keerthusakthi2934@gmail.com', '7825062934', '2004-03-18', '$2b$12$wSxihlIyZ9XwbF31P1PUTe3spdSylwFu9VcxB9IJEpQKIYBINWgOe', 'KEE2934140', 1, '2023-08-18 03:43:21'),
(141, 'Suganya.N', 'nsuganya100@gmail.com', '9786557959', '1991-01-10', '$2b$12$cUhHdEkURZOB8vEytfvDVuAAgvkTu/Gq0tuoDgBViG/U51h2ie8Iq', 'SUG7959141', 1, '2023-08-18 06:32:39'),
(142, 'Muthu', 'muthuvyrvesalon@gmail.com', '8825935428', '2001-11-01', '$2b$12$iB689vXAPBoyVXtAM3Vfxu8ZnP409r28UKGqF1N5Y93q99Vb3urwy', 'MUT5428142', 0, '2023-08-18 07:23:43'),
(143, 'Muthu', 'muthuvurvesalon@gmail.com', '8825935428', '2001-11-06', '$2b$12$XMnTFyb7/MTfNC1u1JPaZ.PQE2xpf1MzjIWM1Tdrq58c/EbDqneaO', 'MUT5428143', 1, '2023-08-18 07:26:30'),
(144, 'Akshaya', 'akshayacr.11.05.2005@gmail.com', '9940668949', '2005-05-11', '$2b$12$xZpIWlO.dgnzNM2Gd5aLgeZuFuFHrrc4q5T7aEFgAsgcGf3FBLpzW', 'AKS8949144', 1, '2023-08-18 13:03:57'),
(145, 'yugi', 'dssa@gmail.com', '9112233449', '2023-10-2003', '$2b$12$XWkcHFQH1WsAWEsIN75tL.NuYYg49gREpu49S/nhb/PvEt5MBAiQm', 'YUG3449145', 0, '2023-08-18 14:32:26'),
(146, 'Priya', 'divyamani0004@gmail.com', '6385545882', '2007-08-15', '$2b$12$AZiZWdCcdTfR/9P8FlCs/OVlVqKhQV1TpbGqug4zVgLTIRk.l4Kc2', 'PRI5882146', 1, '2023-08-18 15:46:44'),
(147, 'Sahana K', 'sahananirmala04@gmail.com', '8148446033', '2023-08-12', '$2b$12$UjDxcVE10IiMKcW6PFmjRuSPWv.fdwSDUmvvNmGdPS0mZk5ql8DGK', 'SAH6033147', 1, '2023-08-18 17:15:03'),
(148, 'Ddd', 'ffc@d.f', '4455566444', '2023-07-31', '$2b$12$oaxJY1uA6z49jOXq88gMLuu535fpBFW33XNGn6Xlj6lWlYoMNUHSC', 'DDD6444148', 0, '2023-08-19 15:17:56'),
(149, 'Gayathri Selvam', 'gayathri.x.s@nielseniq.com', '6381999687', '2000-10-09', '$2b$12$DtbCpz8oBEDF9UPlG.uiW.QXKn2GVhjwyUkxuAysvDG1o.RiobI0S', 'GAY9687149', 0, '2023-08-19 15:49:10'),
(150, 'Shobika', 'hilariouschubby@gmail.com', '7667642124', '1999-11-18', '$2b$12$WsHSJCIJa5/C5wXclRSkLOmbsVLxYoLkgaqT/x2X9Tg6RpotQBmdi', 'SHO2124150', 1, '2023-08-20 12:41:12'),
(151, 'Nithin', 'nithinfalco93@gmail.com', '9994350742', '2006-09-01', '$2b$12$ExspVR1hgEUPEHhB5sICvO8/vlyuiF8sLxI6ROUbG/m9EhFzV3Qju', 'NIT0742151', 1, '2023-08-20 14:33:04'),
(152, 'Showmini ', 'showminiammu2108@gmail.com', '7010085036', '2000-08-21', '$2b$12$wBdCAgU4LdyvA3woyfU4KeaYTVQlbanRORS6gA9FUOYF9iWomyz/W', 'SHO5036152', 1, '2023-08-20 16:11:37'),
(153, 'Anne Monica ', 'annemonica124@gmail.com', '9489302172', '1999-04-24', '$2b$12$lJSwRXvyUizNEyIxpe/yQ.7P4CAwGjs6sh56dFrqg9ZddfEXYdPOa', 'ANN2172153', 1, '2023-08-20 17:58:11'),
(154, 'Christy Angeline', 'christyangeline719@gmail.com', '8438016719', '2023-08-21', '$2b$12$z8dXcVRh/9vnOo86aQ1HLORWkWL.i/vbhz7BCpWHgqJj4k.weDdE6', 'CHR6719154', 1, '2023-08-21 00:11:21'),
(155, 'Vishnu ', 'howru013@gmail.com', '7502299446', '1998-10-24', '$2b$12$Q476iKNJl5sECtb3XRn6O.WcwsHMAKhEzSMXxy8yFY90lzCrKyEsy', 'VIS9446155', 1, '2023-08-21 01:57:52'),
(156, 'Krishnaraj ', 'kr48022@gmail.com', '9092630206', '2000-05-15', '$2b$12$fa0Wb1ehBzXmVucfr97Z.Oh2H1y3QNSJUuxHSNYql1jOxh.Nz3vpm', 'KRI0206156', 1, '2023-08-21 02:34:29'),
(157, 'Arunprasath', 'prasatharun067@gmail.com', '9994619168', '2001-04-25', '$2b$12$6k4Sr/TQF653Nn0G.PDyC.3AjN.OBL5LyOx3ujyIRFQ/ef6d1mFdC', 'ARU9168157', 1, '2023-08-21 08:26:52'),
(158, 'Sathish ', 'sathishps1998@gmail.com', '8807695485', '1998-03-29', '$2b$12$c79eC3BmxG0lQAh5IlY3U.ajZdjOB6mG3aYv8vmyd5hvI47zI/6kW', 'SAT5485158', 1, '2023-08-22 17:47:43'),
(159, 'Sabari', 'sabarivasanps4215@gmail.com', '9500404215', '2000-01-19', '$2b$12$iu7cOGrjoqrUcIm1Y4XGHuwfIUjlsHNVVVtPTdwsdeWbLV2qV.Fem', 'SAB4215159', 1, '2023-08-23 00:36:02'),
(160, 'Sandhiya ', 'sandhiyasankar51@gmail.com', '9361474954', '2002-07-30', '$2b$12$nC2VlxzgHcxWCouUxhLOAOkQYtxSwaHPtiEd6bNnuzXN4KmGPvYEu', 'SAN4954160', 1, '2023-08-23 02:14:27'),
(161, 'Janaki', 'janakirangaswami74@gmail.com', '9650605977', '2002-02-12', '$2b$12$2WDGkTKoXh3o4oyGenCtkefCWZYU82jjo8HYsW8cI//IOTcn07wvm', 'JAN5977161', 1, '2023-08-23 03:58:59'),
(162, 'Arulanantham t', 'arulananthamravi47723@gmail.com', '7550331042', '1998-02-08', '$2b$12$utqjHMOAptq1LprCHKqrneEAuX.O1H.NvQ1K7eQrIOZ7.hxNFNBuC', 'ARU1042162', 1, '2023-08-25 17:09:15'),
(163, 'JANANI A', 'ajanani0903@gmail.com', '8754173552', '2002-03-09', '$2b$12$/E4RiGZe7b5UV.KTgy6JvexVX0KXtfCe/11rV/uSAH7g0PKCU3mRG', 'JAN3552163', 1, '2023-08-26 08:45:37'),
(164, 'VIMALA N', 'vimala422001@gmail.com', '8870511084', '2001-02-04', '$2b$12$OWVKbuDeAnEfVPIK8pVxg.ZrkXpcDF2bT8th9X4F597xk7YctNaf2', 'VIM1084164', 1, '2023-08-26 11:24:22'),
(165, 'Test', 'test@gmail.com', '9112233449', '2023-08-09', '$2b$12$tc8XoNwivtyBS4kty7OvTOGJJs4Gwp6yMvzkCA/ieyJf6jIOdX.Lm', 'TES3449165', 0, '2023-08-26 20:23:44'),
(166, 'Test', 'test34234@gmail.com', '9112233449', '2023-08-07', '$2b$12$.uzZulL5.m3hRiuwoc69f.3KJrchhXljPPUN1H/QlNghanCbKceKK', 'TES3449166', 0, '2023-08-27 05:37:01'),
(167, 'Sanju ', 'sanjivv20bct038@skasc.ac.in', '9843959919', '2003-01-17', '$2b$12$Zkh0Pag.r1i8k8r31R8D/OEWd8n6.WqeC8P4JsXl7dTfuTwP7Nkza', 'SAN9919167', 1, '2023-08-27 05:38:08'),
(168, 'BARANISH', 'baranishk58@gmail.com', '8848861368', '2003-03-08', '$2b$12$wbNovUEbUaBCYvAobwTEpeHuAyOTclUMK9LSjdsdvDcNj/04hWirW', 'BAR1368168', 1, '2023-08-27 05:40:19'),
(169, 'Kanimozhi ', 'growwithkani@gmail.com', '9944177755', '1999-06-04', '$2b$12$YHVzXtHdZ87yvnhCE88N7.ir1moVRvxfuT3rZALQFNPs6joZKH97G', 'KAN7755169', 1, '2023-08-27 10:28:34'),
(170, 'Madhumitha', 'madhumathiyalagan1725@gmail.com', '7502444000', '2002-12-25', '$2b$12$6O/z85Pn/aOE7jbD7GH/wuQo.DNwQtHCfCj1T2lj5oiCs1CBin22S', 'MAD4000170', 1, '2023-08-27 11:50:21'),
(171, 'Badrinath Murugesan', 'badrinathmurugesan@gmail.com', '8012029181', '2002-12-07', '$2b$12$GrFlGtmcEtvZwTQT8iESH.uFU9pPVTe8scEIjq7h5vCWnmAvJKRNy', 'BAD9181171', 1, '2023-08-28 19:16:42'),
(172, 'Kalimuthuraja', 'kalimuthuraja67@gmail.com', '8072795865', '1982-05-02', '$2b$12$qf3hKi6H.nXxZ2Fpz/Sft.gthigrwrYgoCJo127QgrVcAcJXXIdum', 'KAL5865172', 1, '2023-08-30 13:35:52'),
(173, 'Dhinesh rp', 'dhineshrp10@gmail.com', '6374682212', '2004-01-17', '$2b$12$vPfC79vrY0PZJIRl808l3.zgYeiskofpEA6iekg7uQLjB5bf0rpl.', 'DHI2212173', 1, '2023-08-31 15:24:16'),
(174, 'asdasd', 'dev@lmes.in', '8838669898', '2023-09-12', '$2b$12$Hjm4JzYRunDo84ZcgnjeVOOr1i4EafT3uPGyS432QkK3W69XbAmKS', 'ASD9898174', 0, '2023-09-01 15:34:18'),
(175, 'Yugendiran G', 'asdad@gmail.com', '8838669898', '2023-09-18', '$2b$12$KYaBATQjZcL8svKVr7FwWewKlQvf9mUar4Rgae1Nv7IfzWh5zkrZ6', 'YUG9898175', 0, '2023-09-01 15:45:19'),
(176, 'Sanjiv', 'sanjivvadivelu2003@gmail.com', '9843959919', '2023-09-01', '$2b$12$JJV/hdS1Mns7HKdCekkoT.dCGuUHkZTV82gxjzgrYOD1jnXjhwNvi', 'SAN9919176', 0, '2023-09-01 15:46:34'),
(177, 'Sanju ', 'adarshgroup@gmail.com', '9843959919', '2023-09-01', '$2b$12$BMnyxH6nNBGAVJXyQoRCRuaXdxwrsQT3IA.chC3sr0C1RuqawHzbG', 'SAN9919177', 0, '2023-09-01 15:48:45'),
(178, 'Yugendiran G', 'sdfsfsdfsdfdfs@gmail.com', '8838669898', '2023-09-03', '$2b$12$Ik7fyeF64.U9K3ijJNhRketZWNdgDC3tfsYp/RT7aJ8qBbfpkw9cG', 'YUG9898178', 0, '2023-09-01 15:49:46'),
(179, 'Sagar ss', 'sagarss.9991@gmail.com', '8111984683', '1999-06-01', '$2b$12$bJ2li1vs07cvzJfixGTsSO9TdSowGoKHer1Eto.29IcpWxecTVzK6', 'SAG4683179', 0, '2023-09-02 13:16:02'),
(180, 'M_S GOWDA', 'manjunath9411@gmail.vom', '8147341370', '1996-09-16', '$2b$12$tyL12npxOWl7eVjJR3szN.rKdlG/At8nYLZ3HZNXPV2/mihMCK58m', 'M_S1370180', 0, '2023-09-02 16:09:28'),
(181, 'M_S GOWDA', 'manjunath9411@gmail.com', '8147341370', '1996-09-16', '$2b$12$QGWSXQL8Ci9air9/HriujeOTsoT.ngj8x089XTeaFwn4mQEMVpci.', 'M_S1370181', 1, '2023-09-02 16:19:21'),
(182, 'Amol Raje', 'amolr78@gmail.com', '8779765367', '1984-06-01', '$2b$12$GvlQLDvhtIEKxpQNLtUT2.H.41OaUw.AgIBtCeKOis1FhVsaiZJh6', 'AMO5367182', 1, '2023-09-02 17:00:50'),
(183, 'Pavithra Selvan', 'jeevepavi123@gmail.com', '9500522581', '1998-09-20', '$2b$12$Bf1/eTVv1jDQrVks33/ugu3NiTVfQgz8iqzJgGTL7Dhs7J4z38ZG6', 'PAV2581183', 1, '2023-09-05 13:03:13'),
(184, 'Arivuselvan', 'arivuselvanips777@gmail.com', '9994668290', '2001-12-24', '$2b$12$ZLEuemuVbrSzZG.DoUIzaO33S0qO5ztyVU2GstsfeuVj9LecGGe76', 'ARI8290184', 1, '2023-09-06 07:37:13'),
(185, 'SELVAMUTHU', 'selvamuthu.su@gmail.com', '9787910099', '1972-10-03', '$2b$12$y7NvpZm02IVJHEs6VejLYOn6mFnG4rBXOjQVTWdrBtr09bbb/hi16', 'SEL0099185', 1, '2023-09-10 11:40:32'),
(186, 'vasanth ', 'kaththivasanth1999@gmail.com', '8248685277', '1999-02-01', '$2b$12$xTgjGCBFF48zTY4z3scOUuiXYx1HVYYBf12uzVQu2U4dEMnFCC2lC', 'VAS5277186', 1, '2023-09-11 05:31:52'),
(187, 'Ganeshkumar V', 'vgkumar8055@gmail.com', '9600757816', '1995-06-08', '$2b$12$gtZk1Ya6EJL7/xO5.cu7ROy9cBlU3OiZzju9elYF5Mm/rXCzDPhrS', 'GAN7816187', 1, '2023-09-14 08:47:33'),
(188, 'Nandhini mahesh kumar', 'ammukutti717@gmail.com', '9655897242', '1995-03-22', '$2b$12$WPlBYZQwICKVSeztqwHpbeLFDuNDezeuVDt6L5b67by9QRVRbgVZO', 'NAN7242188', 1, '2023-09-14 13:59:16'),
(189, 'Kesavapperumal ', 'keshavappp@gmail.com', '8489644151', '1995-07-16', '$2b$12$Qn6RKf37Hxb4xPJ27/jDWOEOZe4EMVjlDIoy1lvD/2uf4oAn.KqCu', 'KES4151189', 1, '2023-09-14 14:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `WalletTransaction`
--

CREATE TABLE `WalletTransaction` (
  `id` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `wallet` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'personal,income',
  `amount` int NOT NULL,
  `source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'rewardWallet,incomeWallet,manual,transfer,withdraw',
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'deposit, withdraw',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(52, 2, 'cashback', 349, 'purchase', 'withdraw', '2023-08-22 18:43:24'),
(53, 119, 'cashback', 0, 'purchase', 'withdraw', '2023-08-26 02:51:23'),
(54, 17, 'cashback', 0, 'purchase', 'withdraw', '2023-08-28 08:09:32'),
(55, 78, 'cashback', 0, 'purchase', 'withdraw', '2023-08-28 16:55:04'),
(56, 2, 'referral', 0, 'rewardWallet', 'deposit', '2023-08-30 00:00:00'),
(57, 7, 'cashback', 0, 'rewardWallet', 'deposit', '2023-08-30 00:00:00'),
(58, 11, 'cashback', 0, 'purchase', 'withdraw', '2023-09-02 11:46:24'),
(77, 108, 'cashback', 0, 'purchase', 'withdraw', '2023-09-07 03:54:21'),
(78, 32, 'cashback', 0, 'purchase', 'withdraw', '2023-09-09 01:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `Wishlist`
--

CREATE TABLE `Wishlist` (
  `wishlistId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `productId` bigint NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active' COMMENT 'active, removed',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Wishlist`
--

INSERT INTO `Wishlist` (`wishlistId`, `userId`, `productId`, `status`, `createdAt`) VALUES
(1, 4, 38, 'active', '2023-07-27 13:53:50'),
(2, 9, 40, 'active', '2023-07-27 14:17:07'),
(3, 50, 20, 'removed', '2023-07-28 09:08:30'),
(4, 50, 20, 'active', '2023-07-28 09:08:38'),
(5, 50, 66, 'active', '2023-07-28 09:31:42'),
(6, 50, 75, 'removed', '2023-07-28 09:32:52'),
(7, 50, 53, 'active', '2023-07-28 09:33:35'),
(8, 50, 75, 'active', '2023-07-28 09:33:45'),
(9, 38, 42, 'active', '2023-08-01 07:51:39'),
(10, 114, 75, 'active', '2023-08-02 14:16:50'),
(11, 121, 48, 'active', '2023-08-03 10:56:47'),
(12, 121, 97, 'active', '2023-08-03 10:57:16'),
(13, 121, 79, 'active', '2023-08-03 10:59:56'),
(14, 34, 48, 'active', '2023-08-05 17:06:37'),
(15, 34, 13, 'active', '2023-08-05 17:08:24'),
(16, 10, 12, 'removed', '2023-08-08 14:55:56'),
(17, 10, 12, 'removed', '2023-08-08 14:55:59'),
(18, 10, 12, 'active', '2023-08-08 14:57:09'),
(19, 129, 12, 'active', '2023-08-09 11:29:21'),
(20, 140, 60, 'active', '2023-08-18 03:45:04'),
(21, 140, 56, 'active', '2023-08-18 03:46:15'),
(22, 140, 58, 'active', '2023-08-18 03:46:25'),
(23, 140, 77, 'active', '2023-08-18 03:48:24'),
(24, 171, 39, 'active', '2023-08-28 19:17:35'),
(25, 140, 53, 'active', '2023-09-10 23:54:00'),
(26, 186, 16, 'active', '2023-09-11 05:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `Withdraw`
--

CREATE TABLE `Withdraw` (
  `withdrawId` bigint NOT NULL,
  `userId` bigint NOT NULL,
  `amount` int NOT NULL,
  `details` json NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'requested' COMMENT 'initiated,deposited,rejected,canceled,requested	',
  `initiatedOn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `depositedOn` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `CareerRequest`
--
ALTER TABLE `CareerRequest`
  ADD PRIMARY KEY (`careerRequestId`),
  ADD UNIQUE KEY `careerRequestId` (`careerRequestId`,`userId`);

--
-- Indexes for table `CareerVisits`
--
ALTER TABLE `CareerVisits`
  ADD PRIMARY KEY (`careerVisitsId`);

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
  ADD PRIMARY KEY (`inventoryId`),
  ADD KEY `productId` (`productId`);

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
  MODIFY `addressId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `adminId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Basket`
--
ALTER TABLE `Basket`
  MODIFY `basketId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `CancelOrder`
--
ALTER TABLE `CancelOrder`
  MODIFY `cancelOrderId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `CareerRequest`
--
ALTER TABLE `CareerRequest`
  MODIFY `careerRequestId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `CareerVisits`
--
ALTER TABLE `CareerVisits`
  MODIFY `careerVisitsId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ContactMessage`
--
ALTER TABLE `ContactMessage`
  MODIFY `messageId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ForgotPasswordToken`
--
ALTER TABLE `ForgotPasswordToken`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Kyc`
--
ALTER TABLE `Kyc`
  MODIFY `kycId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Level`
--
ALTER TABLE `Level`
  MODIFY `levelId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Otp`
--
ALTER TABLE `Otp`
  MODIFY `otpId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `Page`
--
ALTER TABLE `Page`
  MODIFY `pageId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `paymentId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `PaymentMethod`
--
ALTER TABLE `PaymentMethod`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `productId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `ProductCategory`
--
ALTER TABLE `ProductCategory`
  MODIFY `categoryId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ProductInventory`
--
ALTER TABLE `ProductInventory`
  MODIFY `inventoryId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;

--
-- AUTO_INCREMENT for table `ProductOrder`
--
ALTER TABLE `ProductOrder`
  MODIFY `orderId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `ProductOrderItem`
--
ALTER TABLE `ProductOrderItem`
  MODIFY `orderItemId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `ProductSubCategory`
--
ALTER TABLE `ProductSubCategory`
  MODIFY `subCategoryId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Referral`
--
ALTER TABLE `Referral`
  MODIFY `referralId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `ReturnOrder`
--
ALTER TABLE `ReturnOrder`
  MODIFY `returnOrderId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `RewardWallet`
--
ALTER TABLE `RewardWallet`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `Section`
--
ALTER TABLE `Section`
  MODIFY `sectionId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `SizeChart`
--
ALTER TABLE `SizeChart`
  MODIFY `sizeChartId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testTrigger`
--
ALTER TABLE `testTrigger`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Token`
--
ALTER TABLE `Token`
  MODIFY `tokenId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `userId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `WalletTransaction`
--
ALTER TABLE `WalletTransaction`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `Wishlist`
--
ALTER TABLE `Wishlist`
  MODIFY `wishlistId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `Withdraw`
--
ALTER TABLE `Withdraw`
  MODIFY `withdrawId` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
