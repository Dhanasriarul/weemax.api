-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 12:33 PM
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
(10, 'men-product', 'men-product', NULL, 'published', '2023-07-23 17:20:55', '2023-07-24 18:04:05'),
(11, 'women-product', 'women-product', NULL, 'published', '2023-07-23 17:21:18', '2023-07-24 18:04:01'),
(12, 't-shirt', 't-shirt', NULL, 'published', '2023-07-24 18:03:49', '2023-07-24 18:03:57'),
(13, 'trending', 'trending', NULL, 'published', '2023-07-24 18:08:00', '2023-07-24 18:13:52'),
(14, 'women-tshirt', 'women-tshirt', NULL, 'published', '2023-07-26 11:40:38', '2023-07-26 11:41:02'),
(15, 'bottom', 'bottom', NULL, 'published', '2023-07-26 20:23:21', '2023-07-26 20:24:42'),
(16, 'boxer', 'boxer', NULL, 'deleted', '2023-07-27 12:24:22', '2023-07-27 12:24:46');

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
(13, 'MST003', 'Cyan Blue Zebra Print Shirt', '\"Comfy cotton shirt: Soft, breathable, and timeless which suits for any occasion\".', 1199, 850, 499, 5, '6205', 6, 'published', 1, 1, 'dress', 'R1R3C1', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5827-01__02.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5815-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5827-01.jpg', 'https://api.weemax.in/api/page/public/e7b63587-552b-4f77-8912-50da2646938eNIK_5814__01-01.jpeg.jpg', '2023-07-24 13:14:00', '2023-07-25 20:22:46'),
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
(52, 'WKI004', 'Celeste Blue Kurta & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 550, 350, 5, '6210', 3, 'published', 2, 8, 'dress', 'R3R5C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET037 (2).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET037 (4).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET037 (5).jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba2TFFSET037 (3).jpg', '2023-07-25 11:47:16', '2023-07-25 17:21:37'),
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
(66, 'WKI0019', 'Midnight Blue Ethnic Croptop+Skirt+Jacket', 'A stylish and comfortable ensemble, the Crepe Kurta Dupatta Pant set features a flowing crepe kurta, combined with matching dupatta and pants, perfect for a chic and effortless look. Elevate your fashion game with this versatile outfit that seamlessly blends traditional elements with modern flair.', 1499, 699, 449, 5, '621142', 4, 'published', 2, 8, 'dress', 'R4R2C1', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9251 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9287 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9264 copy.jpg', 'https://api.weemax.in/api/page/public/682ceb34-63be-492c-ac06-d4c903a30ba23J1A9247 copy.jpg', '2023-07-25 13:55:32', '2023-07-25 18:28:37'),
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
(77, 'WKI0014JLY23RA', 'Black Floral Printed Single Kurti', 'Effortlessly stylish and comfortable, our Crepe Kurti is the perfect choice for your everyday wardrobe.', 599, 299, 199, 5, '62044990', 3, 'published', 2, 8, 'dress', 'R3R3C3', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4822.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4833.jpg', 'https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4844.jpg', '2023-07-26 10:58:36', '2023-07-27 09:39:47'),
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
(89, 'WLG001SEP21GC', 'Black Stretchable Legging', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'draft', 2, 15, 'dress', 'R5R3C1', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL5.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-440535772-black-MODEL6.webp', NULL, '2023-07-27 07:43:55', '2023-07-27 09:42:12');
INSERT INTO `Product` (`productId`, `code`, `productTitle`, `description`, `mrpPrice`, `normalPrice`, `offerPrice`, `gst`, `hsn`, `coins`, `status`, `categoryId`, `subCategoryId`, `type`, `inventorySlab`, `assetOne`, `assetTwo`, `assetThree`, `assetFour`, `createdAt`, `updatedAt`) VALUES
(90, 'WLG002SEP21GC', 'Yellow Stretchable Legging', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R4C1', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-441020957-yellow-MODEL.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-441020957-yellow-MODEL2.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-441020957-yellow-MODEL3.webp', NULL, '2023-07-27 07:48:14', '2023-07-27 09:41:50'),
(91, 'WLG001SEP21GC', 'White Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'draft', 2, 15, 'dress', 'R5RC1', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_1.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_4.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_5.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f21CRE60163-603454_6.webp', '2023-07-27 07:52:33', '2023-07-27 07:52:33'),
(92, 'WLG004SEP21GC', 'Pink Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R6C1', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_3_acd41008-eb1d-48b3-a24f-f01bb9280990.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_4_fdea9f2c-527b-4262-aa1a-d642f097b165.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_5_d6d9c10b-dad7-46c9-b2ba-f1ee492615b3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f1_1_51909609-34f6-4b1c-9035-40e08901dded.webp', '2023-07-27 07:57:11', '2023-07-27 09:42:19'),
(93, 'WLG005SEP21GC', 'Red Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R1C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-460533135-red-MODEL.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-460533135-red-MODEL3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-78Wx98H-460533135-red-MODEL2.webp', NULL, '2023-07-27 07:59:13', '2023-07-27 09:42:55'),
(94, 'WLG006SEP21GC', 'Royal Blue Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R2C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f2_69221e17-2599-4a70-b6cf-5da4b7a0e853.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f3_47be7f00-a889-4326-b12b-b3ee3d8b4c7d.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f4_4cb1d58a-3010-49bc-9b1c-674e3630723c.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5_d6d63e2d-3b2c-4ea6-8dd0-76a9eef8116a.webp', '2023-07-27 08:01:17', '2023-07-27 09:43:06'),
(95, 'WLG007SEP21GC', 'Mocassin Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R3C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_1.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_4.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f5d26bac23FEW62454-219585_5.webp', '2023-07-27 08:03:22', '2023-07-27 09:43:13'),
(96, 'WLG008SEP21GC', 'Orange Stretchable Leggings', '\"Experience the perfect blend of comfort and versatility with our Leggings, designed to offer a flattering fit and unrestricted movement for a seamless addition to your everyday wardrobe.\"', 499, 280, 180, 5, '6104', 2, 'published', 2, 15, 'dress', 'R5R4C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-464887137-orange-MODEL3.webp', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f-473Wx593H-464887137-orange-MODEL7.webp', NULL, NULL, '2023-07-27 08:05:28', '2023-07-27 09:43:20'),
(97, 'WKI0028JLY23RA', 'Cream Kurti+Pant Set', '\"Experience a silky-smooth comfort with our one of a kind Rayon Kurti & Pant, designed to elevate your everyday style with a touch of exquisite uniqueness.\"', 999, 649, 379, 5, '621142', 4, 'published', 2, 8, 'dress', 'R4R5C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (3).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (5).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (1).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET001CREAM (7).jpg', '2023-07-27 08:36:26', '2023-07-27 09:43:30'),
(98, 'WKI0029JLY23RA', 'Garnet Pink Kurti & Dupatta Set', 'Classic crepe kurta and georgette dupatta, combining contemporary design and traditional flair for a timeless and sophisticated look.', 999, 649, 379, 5, '621142', 4, 'published', 2, 8, 'dress', 'R4R6C2', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (5).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (7).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (2).jpg', 'https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fTFFSET069F (1).jpg', '2023-07-27 08:41:21', '2023-07-27 09:43:38'),
(99, 'MSE001AUG21BX', 'Men\'s White Casual Shoe', '\"Step into laid-back sophistication with our Men\'s Casual Shoe, a perfect fusion of style and ease, ensuring a seamless transition from day to night.\"', 1200, 750, 450, 12, '6402', 5, 'published', 1, 3, 'dress', 'COMMON', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8IMG-20210808-WA0006 (1).jpg', NULL, NULL, NULL, '2023-07-27 09:26:30', '2023-07-27 09:43:44'),
(100, 'MSE002NOV21BX', 'Men\'s Navy Blue Loafer', '\"Experience refined comfort and effortless style with our Loafers, a versatile footwear option that effortlessly transitions from formal events to casual outings, making them a must-have addition to your wardrobe.\"', 1200, 750, 450, 12, '6402', 5, 'published', 1, 2, 'dress', 'Common', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8026.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8023.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8025.jpg', 'https://api.weemax.in/api/page/public/4582c678-7878-4749-8d08-aeda935e51b8024.jpg', '2023-07-27 09:30:16', '2023-07-27 09:43:50'),
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
(5, 'Test', 'active', '2023-07-24 03:24:36', '2023-07-24 03:24:36');

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
(25, 11, 'XL', 'Cobalt Blue', '#0852A7', 5, 'active', '2023-07-24 09:28:16', '2023-07-24 09:28:16'),
(26, 12, 'S', 'Buttercream Yellow', '#F5EEB8', 0, 'active', '2023-07-24 13:04:05', '2023-07-26 17:47:47'),
(27, 12, 'M', 'Buttercream Yellow', '#F5EEB8', 0, 'active', '2023-07-24 13:04:05', '2023-07-26 17:50:17'),
(28, 12, 'XL', 'Buttercream Yellow', '#F5EEB8', 3, 'active', '2023-07-24 13:04:05', '2023-07-24 13:04:05'),
(29, 12, 'XXL', 'Buttercream Yellow', '#F5EEB8', 2, 'active', '2023-07-24 13:04:05', '2023-07-24 13:04:05'),
(30, 12, 'L', 'Buttercream Yellow', '#F5EEB8', 7, 'active', '2023-07-24 13:04:05', '2023-07-24 13:04:05'),
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
(44, 15, 'XL', 'Pastel Green', '#7BB5C9', 1, 'active', '2023-07-24 13:23:56', '2023-07-24 13:23:56'),
(45, 15, 'XXL', 'Pastel Green', '#7BB5C9', 2, 'active', '2023-07-24 13:23:56', '2023-07-24 13:23:56'),
(46, 16, 'S', 'Snow White', '#F1F5F1', 7, 'active', '2023-07-24 13:28:21', '2023-07-24 13:28:21'),
(47, 16, 'M', 'Snow White', '#F1F5F1', 11, 'active', '2023-07-24 13:28:21', '2023-07-24 13:28:21'),
(48, 16, 'L', 'Snow White', '#F1F5F1', 13, 'active', '2023-07-24 13:28:21', '2023-07-24 13:28:21'),
(49, 16, 'XL', 'Snow White', '#F1F5F1', 6, 'active', '2023-07-24 13:28:21', '2023-07-24 13:28:21'),
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
(67, 20, 'M', 'Olive Green', '#1D2729', 5, 'active', '2023-07-24 13:47:45', '2023-07-24 13:47:45'),
(68, 20, 'XL', 'Olive Green', '#1D2729', 3, 'active', '2023-07-24 13:47:45', '2023-07-24 13:47:45'),
(69, 20, 'XXL', 'Olive Green', '#1D2729', 1, 'active', '2023-07-24 13:47:45', '2023-07-24 13:47:45'),
(70, 20, 'L', 'Olive Green', '#1D2729', 7, 'active', '2023-07-24 13:47:45', '2023-07-24 13:47:45'),
(71, 21, 'S', 'Bottle Green', '#19504D', 4, 'active', '2023-07-24 13:51:45', '2023-07-24 13:51:45'),
(72, 21, 'L', 'Bottle Green', '#19504D', 8, 'active', '2023-07-24 13:51:45', '2023-07-24 13:51:45'),
(73, 21, 'M', 'Bottle Green', '#19504D', 5, 'active', '2023-07-24 13:51:45', '2023-07-24 13:51:45'),
(74, 21, 'XL', 'Bottle Green', '#19504D', 5, 'active', '2023-07-24 13:51:45', '2023-07-24 13:51:45'),
(75, 21, 'XXL', 'Bottle Green', '#19504D', 2, 'active', '2023-07-24 13:51:45', '2023-07-24 13:51:45'),
(76, 22, 'S', 'Charcoal Grey', '#587293', 3, 'active', '2023-07-24 14:00:40', '2023-07-24 14:00:40'),
(77, 22, 'L', 'Charcoal Grey', '#587293', 7, 'active', '2023-07-24 14:00:40', '2023-07-24 14:00:40'),
(78, 22, 'M', 'Charcoal Grey', '#587293', 3, 'active', '2023-07-24 14:00:40', '2023-07-24 14:00:40'),
(79, 22, 'XL', 'Charcoal Grey', '#587293', 1, 'active', '2023-07-24 14:00:40', '2023-07-24 14:00:40'),
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
(115, 29, 'XL', 'Multi Color', '#AD9F80', 1, 'active', '2023-07-24 19:08:29', '2023-07-24 19:08:33'),
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
(126, 38, 'S', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40', '2023-07-24 19:28:40'),
(127, 38, 'M', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40', '2023-07-24 19:28:40'),
(128, 38, 'XL', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40', '2023-07-24 19:28:40'),
(129, 38, 'L', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40', '2023-07-24 19:28:40'),
(130, 38, 'XXL', 'Black', '#000000', 3, 'active', '2023-07-24 19:28:40', '2023-07-24 19:28:40'),
(131, 39, 'S', 'Pantone Red', '#874930', 3, 'active', '2023-07-24 19:35:52', '2023-07-24 19:35:52'),
(132, 39, 'M', 'Pantone Red', '#874930', 3, 'active', '2023-07-24 19:35:52', '2023-07-24 19:35:52'),
(133, 39, 'XL', 'Pantone Red', '#874930', 3, 'active', '2023-07-24 19:35:52', '2023-07-24 19:35:52'),
(134, 39, 'L', 'Pantone Red', '#874930', 3, 'active', '2023-07-24 19:35:52', '2023-07-24 19:35:52'),
(135, 39, 'XXL', 'Pantone Red', '#874930', 3, 'active', '2023-07-24 19:35:52', '2023-07-24 19:35:52'),
(136, 40, 'S', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(137, 40, 'L', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(138, 40, 'XL', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(139, 40, 'XXL', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(140, 40, 'M', 'Olive Green', '#2B352F', 3, 'active', '2023-07-24 20:24:57', '2023-07-24 20:24:57'),
(141, 41, 'S', 'White', '#FFFFFF', 3, 'active', '2023-07-24 20:29:56', '2023-07-24 20:29:56'),
(142, 41, 'L', 'White', '#FFFFFF', 3, 'active', '2023-07-24 20:29:56', '2023-07-24 20:29:56'),
(143, 41, 'M', 'White', '#FFFFFF', 3, 'active', '2023-07-24 20:29:56', '2023-07-24 20:29:56'),
(144, 41, 'XL', 'White', '#FFFFFF', 3, 'active', '2023-07-24 20:29:56', '2023-07-24 20:29:56'),
(145, 41, 'XXL', 'White', '#FFFFFF', 3, 'active', '2023-07-24 20:29:56', '2023-07-24 20:29:56'),
(146, 42, 'S', 'Blush pink', '#FFC2C5', 3, 'active', '2023-07-24 20:37:41', '2023-07-24 20:37:41'),
(147, 42, 'L', 'Blush pink', '#FFC2C5', 3, 'active', '2023-07-24 20:37:41', '2023-07-24 20:37:41'),
(148, 42, 'XL', 'Blush pink', '#FFC2C5', 3, 'active', '2023-07-24 20:37:41', '2023-07-24 20:37:41'),
(149, 42, 'M', 'Blush pink', '#FFC2C5', 3, 'active', '2023-07-24 20:37:41', '2023-07-24 20:37:41'),
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
(163, 45, 'M', 'Black', '#000000', 3, 'active', '2023-07-24 20:51:27', '2023-07-24 20:51:27'),
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
(241, 61, 'S', 'Pink', '#E03152', 4, 'active', '2023-07-25 13:21:02', '2023-07-25 13:21:02'),
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
(253, 63, 'M', 'Sage Green', '#9CC8BB', 4, 'active', '2023-07-25 13:38:21', '2023-07-25 13:38:21'),
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
(389, 101, 'Freesize', 'Stainless steel', '#FFFFFF', 50, 'active', '2023-07-27 12:22:42', '2023-07-27 12:22:50');

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
  `status` varchar(15) NOT NULL DEFAULT 'ordered' COMMENT 'ordered,canceled,returned',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `priceType` varchar(50) NOT NULL COMMENT 'normal,offer',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `moveDate` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'active' COMMENT 'pending,credited',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(30, 1, 'tit-1', '{\"textOne\":\"Welcome to\",\"textTwo\":\"Weemax\"}', 2, 'published', '2023-07-23 16:49:52', '2023-07-26 13:01:42'),
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
(70, 1, 'pro-slide-2', '{\"sectionTitle\":\"BEST SELLERS\",\"items\":[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5742-01.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482.png\",\"route\":\"tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48sssss.jpg\",\"route\":\"shoe\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48Cream Q Heart Women\'s Half Sleeve T-shirt.png\",\"route\":\"women-tshirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb483J1A9279 copy.jpg\",\"route\":\"kurti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tredsss.jpg\",\"route\":\"bottom\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48goods_64_457382 (1).avif\",\"route\":\"boxer\"}]}', 3, 'published', '2023-07-26 11:38:05', '2023-07-26 13:01:42'),
(71, 1, 'sec-t-sel', '[{\"name\":\"Shirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5795__01-01.jpeg.jpg\",\"route\":\"shirt\"},{\"name\":\"T-shirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tre6.jpg\",\"route\":\"tshirt\"},{\"name\":\"Jogger\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48Red Coloured Attitude jogger.png\",\"route\":\"bottom\"},{\"name\":\"Shoe\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 21.50.51.jpg\",\"route\":\"shoe\"},{\"name\":\"Boxer\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48goods_64_457382 (1).avif\",\"route\":\"boxer\"},{\"name\":\"Watch\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-23 at 23.20.12.jpg\",\"route\":\"watch\"},{\"name\":\"Dhoti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48IMG_20230726_173543.jpg\",\"route\":\"dhoti\"},{\"name\":\"Kurti\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48KC016 (4).jpg\",\"route\":\"kurti\"},{\"name\":\"Women-Tshirt\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48tre4.jpg\",\"route\":\"women-tshirt\"},{\"name\":\"Leggings\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb482_0082062d-5a63-433f-92b8-f5edd3550970.jpg\",\"route\":\"leggings\"},{\"name\":\"Women Jean\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481661493815087.jpg\",\"route\":\"women-jean\"}]', 0, 'published', '2023-07-26 12:16:32', '2023-07-26 12:16:59'),
(72, 1, 'lay-1', '{\"sectionTitle\":\"Youth must have!\",\"items\":{\"one\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4822-9-2022_maza2752.jpg\",\"route\":\"kurti\"},\"two\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48trd2.jpg\",\"route\":\"tshirt\"},\"three\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48NIK_5817-01.jpg\",\"route\":\"shirt\"},\"four\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb481661493815087.jpg\",\"route\":\"women-jean\"},\"five\":{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48J-3 (1).jpg\",\"route\":\"watch\"}}}', 6, 'published', '2023-07-26 12:34:29', '2023-07-27 12:16:45'),
(73, 1, 'card-1', '{\"sectionTitle\":\"Fashion Spotted!!\",\"items\":{\"one\":{\"name\":\"MEN\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48PUBG-Character-Transparent-Image.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"WOMEN\",\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb480cb035e5e38923a6515c34447267db80.jpg\",\"route\":\"women-prodect\"}}}', 5, 'deleted', '2023-07-26 12:42:34', '2023-07-27 07:06:26'),
(74, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48ee.jpg\",\"route\":\"kurti\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48ba.jpg\",\"route\":\"biz\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4823.jpg\",\"route\":\"biz\"}]', 2, 'deleted', '2023-07-26 12:50:15', '2023-07-26 13:00:13'),
(75, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4820230726_182908_0000.png\",\"route\":\"shirt\"},{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"shirt\"}]', 1, 'published', '2023-07-26 13:01:29', '2023-07-26 13:01:42'),
(76, 3, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb4820230726_163216_0000.png\",\"route\":\"product\"}]', 0, 'published', '2023-07-26 13:05:17', '2023-07-26 13:05:17'),
(77, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/98e5aa77-517a-4b8e-a094-497c9ba6fb48WhatsApp Image 2023-07-26 at 18.14.47.jpg\",\"route\":\"biz\"}]', 7, 'deleted', '2023-07-26 13:05:41', '2023-07-26 13:08:32'),
(78, 15, 'product-list-2', '{\"sectionTitle\":\"Joggers\",\"banners\":[{\"productId\":44},{\"productId\":45},{\"productId\":46}]}', 0, 'published', '2023-07-26 20:24:33', '2023-07-26 20:24:33'),
(79, 1, 'card-1', '{\"sectionTitle\":\"trending\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f49-497248_hinata-pictures-naruto-and-hinata-part-1.png\",\"route\":\"women-prodect\"}}}', 7, 'deleted', '2023-07-27 07:03:33', '2023-07-27 07:04:20'),
(80, 1, 'card-1', '{\"sectionTitle\":\"Street-style Quirky Cool\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8f81-812427_19-jul-naruto-x-boruto-ninja-voltage-hinata.png\",\"route\":\"women-prodect\"}}}', 4, 'deleted', '2023-07-27 07:06:15', '2023-07-27 07:16:04'),
(81, 1, 'card-1', '{\"sectionTitle\":\"Street-style Quirky Cool\",\"items\":{\"one\":{\"name\":\"Men\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fItachi-Uchiha-Transparent-PNG.png\",\"route\":\"men-prodect\"},\"two\":{\"name\":\"Women\",\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fpngfind.com-boruto-png-812427.png\",\"route\":\"women-prodect\"}}}', 4, 'published', '2023-07-27 07:15:09', '2023-07-27 07:19:48');
INSERT INTO `Section` (`sectionId`, `pageId`, `sectionKey`, `data`, `position`, `status`, `createdAt`, `updatedAt`) VALUES
(82, 4, 'product-list-2', '{\"sectionTitle\":\"test\",\"banners\":[{\"productId\":86},{\"productId\":87},{\"productId\":88}]}', 1, 'deleted', '2023-07-27 07:18:32', '2023-07-27 09:45:11'),
(83, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fCollection (1).png\",\"route\":\"\"}]', 6, 'deleted', '2023-07-27 07:19:40', '2023-07-27 12:16:41'),
(84, 1, 'ban-1', '[{\"imgSrc\":\"https://api.weemax.in/api/page/public/939cbec6-f3b4-4674-856a-e5dba6658b8fCollection (1).png\",\"route\":\"\"}]', 5, 'published', '2023-07-27 07:20:39', '2023-07-27 12:16:45'),
(85, 4, 'product-list-2', '{\"sectionTitle\":\"T-Shirts\",\"banners\":[{\"productId\":40},{\"productId\":41},{\"productId\":42},{\"productId\":43},{\"productId\":39},{\"productId\":38}]}', 0, 'published', '2023-07-27 09:48:10', '2023-07-27 09:48:10'),
(86, 7, 'product-list-2', '{\"sectionTitle\":\"Shoes\",\"banners\":[{\"productId\":99},{\"productId\":100}]}', 0, 'published', '2023-07-27 09:50:52', '2023-07-27 09:50:52'),
(87, 14, 'product-list-2', '{\"sectionTitle\":\"Women\'s T-Shirt\",\"banners\":[{\"productId\":78},{\"productId\":79},{\"productId\":80},{\"productId\":81},{\"productId\":82},{\"productId\":83},{\"productId\":84}]}', 0, 'published', '2023-07-27 09:53:16', '2023-07-27 09:53:16'),
(88, 14, 'product-list-2', '{\"sectionTitle\":\"Women\'s T-Shirt\",\"banners\":[{\"productId\":78},{\"productId\":79},{\"productId\":80},{\"productId\":81},{\"productId\":82},{\"productId\":83},{\"productId\":84}]}', 0, 'deleted', '2023-07-27 09:53:16', '2023-07-27 09:53:33'),
(89, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti\",\"banners\":[{\"productId\":47},{\"productId\":48},{\"productId\":56},{\"productId\":57},{\"productId\":58},{\"productId\":59},{\"productId\":60},{\"productId\":61},{\"productId\":62},{\"productId\":63},{\"productId\":64},{\"productId\":65},{\"productId\":69},{\"productId\":70},{\"productId\":71},{\"productId\":72},{\"productId\":73},{\"productId\":74},{\"productId\":77}]}', 0, 'published', '2023-07-27 10:43:39', '2023-07-27 10:43:39'),
(90, 6, 'product-list-2', '{\"sectionTitle\":\"Kurta + Dupatta Set\",\"banners\":[{\"productId\":52},{\"productId\":53},{\"productId\":54},{\"productId\":55},{\"productId\":75}]}', 1, 'published', '2023-07-27 10:45:10', '2023-07-27 10:45:10'),
(91, 6, 'product-list-2', '{\"sectionTitle\":\"Kurti + Pant + Dupatta Set\",\"banners\":[{\"productId\":66},{\"productId\":67},{\"productId\":68}]}', 2, 'published', '2023-07-27 10:46:48', '2023-07-27 10:46:48'),
(92, 8, 'product-list-2', '{\"sectionTitle\":\"Watch\",\"banners\":[{\"productId\":101},{\"productId\":102},{\"productId\":103}]}', 0, 'deleted', '2023-07-27 12:23:00', '2023-07-27 12:23:35'),
(93, 8, 'product-list-2', '{\"sectionTitle\":\"Watches\",\"banners\":[{\"productId\":101},{\"productId\":102},{\"productId\":103}]}', 1, 'published', '2023-07-27 12:23:24', '2023-07-27 12:23:24');

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

-- --------------------------------------------------------

--
-- Table structure for table `Withdraw`
--

CREATE TABLE `Withdraw` (
  `withdrawId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `amount` int(50) NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`details`)),
  `status` varchar(15) NOT NULL COMMENT 'initiated,deposited,rejected,canceled,requested',
  `initiatedOn` timestamp NULL DEFAULT NULL,
  `depositedOn` timestamp NULL DEFAULT NULL,
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
  MODIFY `addressId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `adminId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Basket`
--
ALTER TABLE `Basket`
  MODIFY `basketId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ContactMessage`
--
ALTER TABLE `ContactMessage`
  MODIFY `messageId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ForgotPasswordToken`
--
ALTER TABLE `ForgotPasswordToken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Kyc`
--
ALTER TABLE `Kyc`
  MODIFY `kycId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Level`
--
ALTER TABLE `Level`
  MODIFY `levelId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Otp`
--
ALTER TABLE `Otp`
  MODIFY `otpId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Page`
--
ALTER TABLE `Page`
  MODIFY `pageId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `paymentId` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `inventoryId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `ProductOrder`
--
ALTER TABLE `ProductOrder`
  MODIFY `orderId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ProductOrderItem`
--
ALTER TABLE `ProductOrderItem`
  MODIFY `orderItemId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ProductSubCategory`
--
ALTER TABLE `ProductSubCategory`
  MODIFY `subCategoryId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Referral`
--
ALTER TABLE `Referral`
  MODIFY `referralId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RewardWallet`
--
ALTER TABLE `RewardWallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Section`
--
ALTER TABLE `Section`
  MODIFY `sectionId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `Token`
--
ALTER TABLE `Token`
  MODIFY `tokenId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `userId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `WalletTransaction`
--
ALTER TABLE `WalletTransaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Wishlist`
--
ALTER TABLE `Wishlist`
  MODIFY `wishlistId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Withdraw`
--
ALTER TABLE `Withdraw`
  MODIFY `withdrawId` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
