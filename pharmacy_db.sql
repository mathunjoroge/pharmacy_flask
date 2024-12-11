-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2024 at 07:09 AM
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
-- Database: `pharmacy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` int(3) NOT NULL,
  `serve` varchar(1600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `product_id` int(10) NOT NULL,
  `quantity` int(10) DEFAULT NULL,
  `expirydate` varchar(20) DEFAULT NULL,
  `batch_no` varchar(25) DEFAULT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`product_id`, `quantity`, `expirydate`, `batch_no`, `date`) VALUES
(1, 63, '04-2026', 'entry_batch_1', '2026-05-20'),
(2, 56, '04-2026', 'entry_batch_1', '2026-05-20'),
(3, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(4, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(5, 8, '04-2026', 'entry_batch_1', '2026-05-20'),
(6, 19, '04-2026', 'entry_batch_1', '2026-05-20'),
(7, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(8, -40, '04-2026', 'entry_batch_1', '2026-05-20'),
(9, 25, '04-2026', 'entry_batch_1', '2026-05-20'),
(10, 85, '04-2026', 'entry_batch_1', '2026-05-20'),
(11, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(12, 0, '04-2026', 'entry_batch_1', '2026-05-20'),
(13, 0, '04-2026', 'entry_batch_1', '2026-05-20'),
(14, 12, '04-2026', 'entry_batch_1', '2026-05-20'),
(15, 13, '04-2026', 'entry_batch_1', '2026-05-20'),
(16, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(17, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(18, 190, '04-2026', 'entry_batch_1', '2026-05-20'),
(19, 6, '04-2026', 'entry_batch_1', '2026-05-20'),
(20, 521, '04-2026', 'entry_batch_1', '2026-05-20'),
(21, -5, '04-2026', 'entry_batch_1', '2026-05-20'),
(22, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(23, 9, '04-2026', 'entry_batch_1', '2026-05-20'),
(24, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(25, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(26, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(27, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(28, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(29, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(30, 180, '04-2026', 'entry_batch_1', '2026-05-20'),
(31, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(32, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(33, 140, '04-2026', 'entry_batch_1', '2026-05-20'),
(34, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(35, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(36, 15, '04-2026', 'entry_batch_1', '2026-05-20'),
(37, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(38, -1, '04-2026', 'entry_batch_1', '2026-05-20'),
(39, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(40, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(41, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(42, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(43, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(44, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(45, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(46, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(47, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(48, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(49, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(50, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(51, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(52, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(53, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(54, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(55, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(56, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(57, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(58, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(59, 162, '04-2026', 'entry_batch_1', '2026-05-20'),
(60, 25, '04-2026', 'entry_batch_1', '2026-05-20'),
(61, 790, '04-2026', 'entry_batch_1', '2026-05-20'),
(62, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(63, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(64, 75, '04-2026', 'entry_batch_1', '2026-05-20'),
(65, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(66, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(67, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(68, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(69, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(70, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(71, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(72, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(73, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(74, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(75, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(76, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(77, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(78, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(79, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(80, 35, '04-2026', 'entry_batch_1', '2026-05-20'),
(81, 19, '04-2026', 'entry_batch_1', '2026-05-20'),
(82, 200, '04-2026', 'entry_batch_1', '2026-05-20'),
(83, 300, '04-2026', 'entry_batch_1', '2026-05-20'),
(84, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(85, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(86, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(87, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(88, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(89, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(90, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(91, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(92, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(93, 200, '04-2026', 'entry_batch_1', '2026-05-20'),
(94, 15, '04-2026', 'entry_batch_1', '2026-05-20'),
(95, 9, '04-2026', 'entry_batch_1', '2026-05-20'),
(96, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(97, 20, '04-2026', 'entry_batch_1', '2026-05-20'),
(98, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(99, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(100, 8, '04-2026', 'entry_batch_1', '2026-05-20'),
(101, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(102, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(103, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(104, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(105, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(106, 60, '04-2026', 'entry_batch_1', '2026-05-20'),
(107, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(108, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(109, 179, '04-2026', 'entry_batch_1', '2026-05-20'),
(110, 147, '04-2026', 'entry_batch_1', '2026-05-20'),
(111, 90, '04-2026', 'entry_batch_1', '2026-05-20'),
(112, 60, '04-2026', 'entry_batch_1', '2026-05-20'),
(113, 59, '04-2026', 'entry_batch_1', '2026-05-20'),
(114, 49, '04-2026', 'entry_batch_1', '2026-05-20'),
(115, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(116, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(117, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(118, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(119, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(120, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(121, 14, '04-2026', 'entry_batch_1', '2026-05-20'),
(122, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(123, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(124, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(125, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(126, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(127, 300, '04-2026', 'entry_batch_1', '2026-05-20'),
(128, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(129, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(130, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(131, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(132, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(133, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(134, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(135, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(136, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(137, 0, '04-2026', 'entry_batch_1', '2026-05-20'),
(138, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(139, 0, '04-2026', 'entry_batch_1', '2026-05-20'),
(140, 39, '04-2026', 'entry_batch_1', '2026-05-20'),
(141, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(142, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(143, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(144, 0, '04-2026', 'entry_batch_1', '2026-05-20'),
(145, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(146, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(147, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(148, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(149, 0, '04-2026', 'entry_batch_1', '2026-05-20'),
(150, 20, '04-2026', 'entry_batch_1', '2026-05-20'),
(151, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(152, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(153, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(154, 174, '04-2026', 'entry_batch_1', '2026-05-20'),
(155, 60, '04-2026', 'entry_batch_1', '2026-05-20'),
(156, 60, '04-2026', 'entry_batch_1', '2026-05-20'),
(157, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(158, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(159, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(160, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(161, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(162, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(163, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(164, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(165, 70, '04-2026', 'entry_batch_1', '2026-05-20'),
(166, 28, '04-2026', 'entry_batch_1', '2026-05-20'),
(167, 27, '04-2026', 'entry_batch_1', '2026-05-20'),
(168, 25, '04-2026', 'entry_batch_1', '2026-05-20'),
(169, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(170, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(171, 96, '04-2026', 'entry_batch_1', '2026-05-20'),
(172, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(173, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(174, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(175, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(176, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(177, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(178, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(179, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(180, 12, '04-2026', 'entry_batch_1', '2026-05-20'),
(181, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(182, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(183, 9, '04-2026', 'entry_batch_1', '2026-05-20'),
(184, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(185, 0, '04-2026', 'entry_batch_1', '2026-05-20'),
(186, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(187, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(188, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(189, 16, '04-2026', 'entry_batch_1', '2026-05-20'),
(190, 96, '04-2026', 'entry_batch_1', '2026-05-20'),
(191, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(192, 70, '04-2026', 'entry_batch_1', '2026-05-20'),
(193, 11, '04-2026', 'entry_batch_1', '2026-05-20'),
(194, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(195, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(196, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(197, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(198, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(199, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(200, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(201, 94, '04-2026', 'entry_batch_1', '2026-05-20'),
(202, 90, '04-2026', 'entry_batch_1', '2026-05-20'),
(203, 0, '04-2026', 'entry_batch_1', '2026-05-20'),
(204, 50, '04-2026', 'entry_batch_1', '2026-05-20'),
(205, 150, '04-2026', 'entry_batch_1', '2026-05-20'),
(206, 42, '04-2026', 'entry_batch_1', '2026-05-20'),
(207, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(208, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(209, 96, '04-2026', 'entry_batch_1', '2026-05-20'),
(210, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(211, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(212, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(213, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(214, 199, '04-2026', 'entry_batch_1', '2026-05-20'),
(215, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(216, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(217, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(218, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(219, 8, '04-2026', 'entry_batch_1', '2026-05-20'),
(220, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(221, 78, '04-2026', 'entry_batch_1', '2026-05-20'),
(222, 0, '03-2026', 'entry_batch_1', '2026-05-20'),
(223, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(224, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(225, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(226, 48, '04-2026', 'entry_batch_1', '2026-05-20'),
(227, 24, '04-2026', 'entry_batch_1', '2026-05-20'),
(228, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(229, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(230, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(231, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(232, 11, '04-2026', 'entry_batch_1', '2026-05-20'),
(233, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(234, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(235, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(236, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(237, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(238, 43, '04-2026', 'entry_batch_1', '2026-05-20'),
(239, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(240, 0, '04-2026', 'entry_batch_1', '2026-05-20'),
(241, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(242, 199, '04-2026', 'entry_batch_1', '2026-05-20'),
(243, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(244, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(245, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(246, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(247, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(248, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(249, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(250, 28, '04-2026', 'entry_batch_1', '2026-05-20'),
(251, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(252, 28, '04-2026', 'entry_batch_1', '2026-05-20'),
(253, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(254, 97, '04-2026', 'entry_batch_1', '2026-05-20'),
(255, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(256, 1000, '04-2026', 'entry_batch_1', '2026-05-20'),
(257, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(258, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(259, 70, '02-2026', 'entry_batch_1', '2026-05-20'),
(260, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(261, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(262, 150, '04-2026', 'entry_batch_1', '2026-05-20'),
(263, 250, '04-2026', 'entry_batch_1', '2026-05-20'),
(264, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(265, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(266, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(233, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(267, 50, '04-2026', 'entry_batch_1', '2026-05-20'),
(268, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(269, 12, '04-2026', 'entry_batch_1', '2026-05-20'),
(270, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(271, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(272, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(273, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(274, 70, '04-2026', 'entry_batch_1', '2026-05-20'),
(275, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(276, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(277, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(278, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(279, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(280, 29, '04-2026', 'entry_batch_1', '2026-05-20'),
(281, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(282, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(283, 72, '04-2026', 'entry_batch_1', '2026-05-20'),
(284, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(285, 20, '04-2026', 'entry_batch_1', '2026-05-20'),
(286, 90, '04-2026', 'entry_batch_1', '2026-05-20'),
(287, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(288, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(289, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(290, 20, '04-2026', 'entry_batch_1', '2026-05-20'),
(291, 8, '04-2026', 'entry_batch_1', '2026-05-20'),
(292, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(293, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(294, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(295, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(296, 6, '04-2026', 'entry_batch_1', '2026-05-20'),
(297, 36, '04-2026', 'entry_batch_1', '2026-05-20'),
(298, 280, '04-2026', 'entry_batch_1', '2026-05-20'),
(299, 150, '04-2026', 'entry_batch_1', '2026-05-20'),
(300, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(301, 140, '04-2026', 'entry_batch_1', '2026-05-20'),
(302, 40, '04-2026', 'entry_batch_1', '2026-05-20'),
(303, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(304, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(305, 90, '04-2026', 'entry_batch_1', '2026-05-20'),
(306, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(307, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(308, 83, '04-2026', 'entry_batch_1', '2026-05-20'),
(309, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(310, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(311, 48, '04-2026', 'entry_batch_1', '2026-05-20'),
(312, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(313, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(314, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(315, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(316, 84, '04-2026', 'entry_batch_1', '2026-05-20'),
(317, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(318, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(319, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(222, 0, '03-2026', 'entry_batch_1', '2026-05-20'),
(320, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(321, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(322, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(323, 80, '04-2026', 'entry_batch_1', '2026-05-20'),
(324, 17, '04-2026', 'entry_batch_1', '2026-05-20'),
(325, 90, '04-2026', 'entry_batch_1', '2026-05-20'),
(326, 50, '04-2026', 'entry_batch_1', '2026-05-20'),
(327, 58, '04-2026', 'entry_batch_1', '2026-05-20'),
(328, 40, '04-2026', 'entry_batch_1', '2026-05-20'),
(329, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(330, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(331, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(332, 2, '04-2026', 'entry_batch_1', '2026-05-20'),
(333, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(334, 20, '04-2026', 'entry_batch_1', '2026-05-20'),
(335, 90, '04-2026', 'entry_batch_1', '2026-05-20'),
(336, 5, '04-2026', 'entry_batch_1', '2026-05-20'),
(337, 50, '04-2026', 'entry_batch_1', '2026-05-20'),
(338, 10, '04-2026', 'entry_batch_1', '2026-05-20'),
(339, 195, '04-2026', 'entry_batch_1', '2026-05-20'),
(340, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(341, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(342, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(343, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(344, 12, '04-2026', 'entry_batch_1', '2026-05-20'),
(345, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(346, 4, '04-2026', 'entry_batch_1', '2026-05-20'),
(347, 1, '04-2026', 'entry_batch_1', '2026-05-20'),
(348, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(349, 350, '04-2026', 'entry_batch_1', '2026-05-20'),
(350, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(351, 70, '04-2026', 'entry_batch_1', '2026-05-20'),
(352, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(353, 3, '04-2026', 'entry_batch_1', '2026-05-20'),
(354, 100, '04-2026', 'entry_batch_1', '2026-05-20'),
(355, 30, '04-2026', 'entry_batch_1', '2026-05-20'),
(356, 15, '04-2026', 'entry_batch_1', '2026-05-20'),
(373, 50, '05-2026', 'entry_batch_1', '2024-05-30'),
(374, 50, '05-2026', 'entry_batch_1', '2024-05-31'),
(380, 3, '2026-06', 'entry_batch_1', '2024-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bincard`
--

CREATE TABLE `bincard` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `date` varchar(500) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `prod_id` int(10) NOT NULL,
  `cashier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(10) NOT NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='categories table';

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`) VALUES
(21, 'ace inhibitors'),
(14, 'antiepileptics'),
(4, 'antifungals'),
(5, 'antihistamines'),
(15, 'antimuscarinic drugs'),
(6, 'beta-blockers'),
(8, 'biguanides'),
(13, 'calcium channel blokers'),
(20, 'cephalosporins'),
(18, 'corticosteroids'),
(9, 'cough suppressants'),
(1, 'cytotoxic antibiotics'),
(17, 'dermatological agents'),
(7, 'floroquinolone antibacterials'),
(2, 'immunosuppressants'),
(10, 'laxatives'),
(3, 'macrolides'),
(11, 'NSAIDs'),
(19, 'opiod analgesics'),
(23, 'penicillins'),
(12, 'proton pump inhibitors'),
(16, 'sympathomimetics'),
(22, 'vitamins/minerals');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(10) NOT NULL,
  `date2` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount2` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `confirm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`) VALUES
(1, 'john doe', 'kisumu', '39289235'),
(2, 'jane doe', 'kisumu', '124587'),
(3, 'meds', 'kisumu', '39289235'),
(4, 'njoroge', 'kisumu', '8748465'),
(5, 'kemsa', 'kisumu', '4465'),
(6, 'machaveli', 'NY', '322'),
(7, 'peporoni', 'NY', '748465'),
(8, 'peporoni', 'kisumu', '4556');

-- --------------------------------------------------------

--
-- Table structure for table `deviation`
--

CREATE TABLE `deviation` (
  `id` int(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `batch_no` varchar(20) NOT NULL,
  `orqty` varchar(10) NOT NULL,
  `deviation` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `deviation`
--

INSERT INTO `deviation` (`id`, `date`, `product_id`, `batch_no`, `orqty`, `deviation`) VALUES
(1, '02/24/24', 291, 'entry batch', '8', '-5'),
(2, '02/24/24', 215, 'L0577', '100', '-98'),
(3, '02/24/24', 206, 'entry_batch_1', '29', '-14'),
(4, '02/24/24', 206, 'entry_batch_1', '29', '-14'),
(5, '02/24/24', 206, 'entry_batch_1', '29', '-14'),
(6, '02/24/24', 206, 'entry_batch_1', '29', '-14'),
(7, '02/24/24', 144, 'entry_batch_1', '9', '-6'),
(8, '02/24/24', 203, 'entry_batch_1', '90', '-80'),
(9, '02/24/24', 139, 'entry_batch_1', '99', '-79'),
(10, '02/24/24', 137, 'entry_batch_1', '99', '-79');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `idno` varchar(12) NOT NULL,
  `qualifications` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `amount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenselist`
--

CREATE TABLE `expenselist` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `date` varchar(10) NOT NULL,
  `addedby` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) NOT NULL,
  `date` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `recorded` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expiries`
--

CREATE TABLE `expiries` (
  `transaction_id` int(10) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `batch` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expiries`
--

INSERT INTO `expiries` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `price`, `discount`, `date`, `batch`) VALUES
(1, '26713220', '238', '1', '6', '0', '6', '', '2024-04-01', 'entry_batch_1'),
(2, '26713220', '238', '2', '12', '-12', '6', '', '2024-04-01', 'entry_batch_1');

-- --------------------------------------------------------

--
-- Table structure for table `expiriestt`
--

CREATE TABLE `expiriestt` (
  `transaction_id` int(10) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expiriestt`
--

INSERT INTO `expiriestt` (`transaction_id`, `invoice_number`, `cashier`, `date`, `amount`, `profit`) VALUES
(1, '26713220', 'admin', '2024-04-01', '18', '-18');

-- --------------------------------------------------------

--
-- Table structure for table `loginusers`
--

CREATE TABLE `loginusers` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `groupid` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentid` int(10) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount2` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `confirm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pending`
--

CREATE TABLE `pending` (
  `transaction_id` int(10) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` int(10) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `cashier` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `batch` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pending`
--

INSERT INTO `pending` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `price`, `discount`, `date`, `cashier`, `type`, `batch`) VALUES
(1, 'INV-3490260', 222, '3', '1150', NULL, '383.33333333333', NULL, '2024-02-24', NULL, NULL, 'TE3060');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_details`
--

CREATE TABLE `pharmacy_details` (
  `id` int(1) NOT NULL,
  `pharmacy_name` varchar(30) NOT NULL,
  `slogan` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacy_details`
--

INSERT INTO `pharmacy_details` (`id`, `pharmacy_name`, `slogan`, `contact`, `email`, `location`) VALUES
(2, 'M&C Pharmacy', 'wish you best', '0722000000', 'example@example.com', 'physical address');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `gen_name` varchar(512) DEFAULT NULL,
  `product_name` varchar(512) DEFAULT NULL,
  `qty` int(10) DEFAULT 0,
  `o_price` int(11) DEFAULT NULL,
  `markup` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `instock` int(10) DEFAULT 0,
  `expiry_date` varchar(512) DEFAULT NULL,
  `maxdiscre` varchar(512) DEFAULT NULL,
  `maxdiscpr` varchar(512) DEFAULT NULL,
  `maxdiscws` varchar(512) DEFAULT NULL,
  `maxdiscwsp` varchar(512) DEFAULT NULL,
  `product_code` varchar(512) DEFAULT NULL,
  `level` int(10) NOT NULL,
  `promotionqty` int(11) DEFAULT 0,
  `promotion_number` int(11) DEFAULT 0,
  `category_id` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `gen_name`, `product_name`, `qty`, `o_price`, `markup`, `price`, `instock`, `expiry_date`, `maxdiscre`, `maxdiscpr`, `maxdiscws`, `maxdiscwsp`, `product_code`, `level`, `promotionqty`, `promotion_number`, `category_id`) VALUES
(1, 'Aceclofenac 100mg', 'zofen 100mg', 165, 10, 4.5, 20, 0, '', '0.9', '10', '0.85', '15', 'ZOFEN 100MG', 49, 3, 1, 1),
(2, 'ACYCLOVIR', 'UNIVIR 400MG', 56, 9, 2.7777777777777777, 25, 2, '', '0.9', '10', '0.85', '15', 'UNIVIR 200MG', 10, 0, 0, 1),
(3, 'ACYCLOVIR', 'ACYCLOVIR 5% CREAM 20GM', 5, 50, 9, 450, 5, '', '0.9', '10', '0.85', '15', 'ACYCLOVIR 5% CREAM 10GM', 3, 0, 0, 1),
(4, 'ACYCLOVIR', 'ACIHERPIN', 6, 8, 1.875, 15, 4, '', '0.9', '10', '0.85', '15', 'ACIHERPIN', 0, 0, 0, 1),
(5, 'ALBENDAZOLE', 'ABZ SUSP 10ML', 8, 39, 1.2820512820512822, 50, 20, '', '0.9', '10', '0.85', '15', 'ABZ SUSP 10ML', 0, 0, 0, 1),
(6, 'ALBENDAZOLE', 'ABZ 400MG', 19, 28, 1.7857142857142858, 50, 30, '', '0.9', '10', '0.85', '15', 'ABZ 400MG', 0, 0, 0, 1),
(7, 'AMBROXOL/SALBUTAMOL', 'BROZELIN EXPECTORANT 100ML', 1, 275, 1.6363636363636365, 450, 3, '', '0.9', '10', '0.85', '15', 'BROZELIN EXPECTORANT 100ML', 0, 0, 0, 1),
(8, 'AMLODIPINE', 'AMLODAWA 5MG', 20, 4, 2.5, 10, -22, '', '0.9', '10', '0.85', '15', 'AMLODAWA 5MG', 0, 0, 0, 1),
(9, 'AMLODIPINE', 'AMLODAWA 10MG', 25, 4, 3.75, 15, 1, '', '0.9', '10', '0.85', '15', 'AMLODAWA 10MG', 0, 0, 0, 1),
(10, 'AMOXICILLIN', 'AMOXICLLIN GENERIC 500MG', 100, 4, 2.5, 10, -10, '', '0.9', '10', '0.85', '15', 'AMOXICLLIN GENERIC 500MG', 0, 0, 0, 1),
(11, 'AMOXICILLIN', 'AMOXCILLIN GENERIC 250 MG', 100, 3, 3.3333333333333335, 10, 3, '', '0.9', '10', '0.85', '15', 'AMOXCILLIN GENERIC 250 MG', 0, 0, 0, 1),
(12, 'AMOXICILLIN', 'ALIMOX SYP 100ML', 0, 30, 10, 300, 20, '', '0.9', '10', '0.85', '15', 'ALIMOX SYP 100ML', 0, 0, 0, 1),
(13, 'AMOXICILLIN', 'ALIMOX SYP 60ML', 0, 42, 3.5714285714285716, 150, 1, '', '0.9', '10', '0.85', '15', 'ALIMOX SYP 60ML', 0, 0, 0, 1),
(14, 'AMOXYCLAV', 'AUGUMENTIN 1GM', 12, 3399, 1.3386290085319212, 4550, 3, '', '0.9', '10', '0.85', '15', 'AUGUMENTIN 1GM', 0, 0, 0, 1),
(15, 'AMOXYCLAV', 'AUGMENTIN 625MG', 13, 1880, 1.3563829787234043, 2550, 3, '', '0.9', '10', '0.85', '15', 'AUGMENTIN 625MG', 0, 0, 0, 1),
(16, 'AMOXYCLAV', 'CLAXY 1GM', 10, 259, 2.1235521235521237, 550, 3, '', '0.9', '10', '0.85', '15', 'CLAXY 1GM', 0, 0, 0, 1),
(17, 'AMOXYCLAV', 'CLAXCY 625MG', 10, 149, 2.348993288590604, 350, 6, '', '0.9', '10', '0.85', '15', 'CLAXCY 625MG', 0, 0, 0, 1),
(18, 'ANTACID', 'STOMACID', 190, 1, 10, 10, 2, '', '0.9', '10', '0.85', '15', 'STOMACID', 0, 0, 0, 1),
(19, 'ARTEMETHER/LUMEFANTRINE', 'LONART-DS', 6, 152, 3.289473684210526, 500, 5, '', '0.9', '10', '0.85', '15', 'LONART-DS', 0, 0, 0, 1),
(20, 'COFANART 20/120 (A/L TABS)', 'ARTEMETHER/LUMEFANTRINE', 521, 50, 2, 100, 30, '', '0.9', '10', '0.85', '15', 'ARTEMETHER/LUMEFANTRINE', 48, 0, 0, 1),
(21, 'ARTEMISININ/ PIPEERAQUINE', 'ARTEQUICK TABS', 1, 520, 1.4423076923076923, 750, -3, '', '0.9', '10', '0.85', '15', 'ARTEQUICK TABS', 0, 0, 0, 1),
(22, 'ARTESUNATE', 'GSUNATE 60MG', 1, 100, 2, 200, 5, '', '0.9', '10', '0.85', '15', 'GSUNATE 60MG', 0, 0, 0, 1),
(23, 'ARTHEMETER LUMEFANTRINE', 'LONART 20/120 POWDER FOR ORAL', 9, 205, 2.1951219512195124, 450, 10, '', '0.9', '10', '0.85', '15', 'LONART 20/120 POWDER FOR ORAL', 0, 0, 0, 1),
(24, 'ARTHEMETER LUMEFANTRINE', 'CO-ARTESAINE SUSP 120ML', 1, 598, 1.4214046822742474, 850, 2, '', '0.9', '10', '0.85', '15', 'CO-ARTESAINE SUSP 120ML', 0, 0, 0, 1),
(25, 'ARTHEMETER LUMEFANTRINE', 'CO-ARTESAINE SUSP 60ML', 2, 425, 1.5294117647058822, 650, 2, '', '0.9', '10', '0.85', '15', 'CO-ARTESAINE SUSP 60ML', 0, 0, 0, 1),
(26, 'ARTOVASTATIN', 'TORVAST 20MG', 30, 3, 8.333333333333334, 25, 1, '', '0.9', '10', '0.85', '15', 'TORVAST 20MG', 0, 0, 0, 1),
(27, 'ASPIRIN', 'BAYER CARDIO ASPIRIN 100MG', 30, 7, 2.142857142857143, 15, 2, '', '0.9', '10', '0.85', '15', 'BAYER CARDIO ASPIRIN 100MG', 0, 0, 0, 1),
(28, 'ASPIRIN 75MG', 'ASCARD 75MG', 30, 107, 1.4018691588785046, 150, 3, '', '0.9', '10', '0.85', '15', 'ASCARD 75MG', 0, 0, 0, 1),
(29, 'ASPRIN/PCM/CAFFEINE', 'ACTION', 100, 325, 0.03076923076923077, 10, 3, '', '0.9', '10', '0.85', '15', 'ACTION', 0, 0, 0, 1),
(30, 'ASPRIN/PCM/CAFFEINE', 'SONAMOJA', 180, 291, 0.03436426116838488, 10, 2, '', '0.9', '10', '0.85', '15', 'SONAMOJA', 0, 0, 0, 1),
(31, 'ASPRIN/PCM/CAFFEINE', 'HEDEX', 100, 339, 0.029498525073746, 10, 3, '', '0.9', '10', '0.85', '15', 'HEDEX', 0, 0, 0, 1),
(32, 'ASRIN/PCM/CAFFEINE', 'MARAMOJA', 100, 355, 0.028169014084507, 10, 3, '', '0.9', '10', '0.85', '15', 'MARAMOJA', 0, 0, 0, 1),
(33, 'ATENOLOL', 'CARDINOL 50MG', 140, 127, 0.11811023622047, 15, 5, '', '0.9', '10', '0.85', '15', 'CARDINOL 50MG', 0, 0, 0, 1),
(34, 'ATROPINE', 'ATROPINE 1% EYE DROPS 5ML- ATROP', 1, 219, 2.0547945205479, 450, 2, '', '0.9', '10', '0.85', '15', 'ATROPINE 1% EYE DROPS 5ML- ATROP', 0, 0, 0, 1),
(35, 'ATROPINE INJ', 'ATROMED 1MG/ML', 10, 70, 2.1428571428571, 150, 10, '', '0.9', '10', '0.85', '15', 'ATROMED 1MG/ML', 0, 0, 0, 1),
(36, 'AZITHROMYCIN', 'IZZITHREE SUSP 15ML', 15, 39, 3.8461538461538, 150, 15, '', '0.9', '10', '0.85', '15', 'IZZITHREE SUSP 15ML', 0, 0, 0, 1),
(37, 'AZITHROMYCIN', 'AGYCIN 500MG', 2, 57, 2.6315789473684, 150, 15, '', '0.9', '10', '0.85', '15', 'AGYCIN 500MG', 0, 0, 0, 1),
(38, 'BECLOMETHASONE', 'BECLOMIN OINTMENT 15MG', 5, 152, 1.9736842105263, 300, -1, '', '0.9', '10', '0.85', '15', 'BECLOMIN OINTMENT 15MG', 0, 0, 0, 1),
(39, 'BENZATHINE PENICILLIN INJ', 'BENAPEN X-PEN 1M', 1, 14, 7.1428571428571, 100, 50, '', '0.9', '10', '0.85', '15', 'BENAPEN X-PEN 1M', 0, 0, 0, 1),
(40, 'BENZATHINE PENICILLIN INJ', 'MEDUR X-PEN 2.4 IU', 1, 33, 4.5454545454545, 150, 15, '', '0.9', '10', '0.85', '15', 'MEDUR X-PEN 2.4 IU', 0, 0, 0, 1),
(41, 'BENZOYL PEROXIDE', 'PERNEX A.C 5% 20GM', 4, 417, 1.5587529976019, 650, 2, '', '0.9', '10', '0.85', '15', 'PERNEX A.C 5% 20GM', 2, 0, 0, 1),
(42, 'BETAMETHASONE', 'MEDIVEN CREAM 15GM', 1, 48, 3.125, 150, 10, '', '0.9', '10', '0.85', '15', 'MEDIVEN CREAM 15GM', 0, 0, 0, 1),
(43, 'BETAMETHASONE', 'MEDIVEN OINTMENT 15GM', 1, 48, 3.125, 150, 5, '', '0.9', '10', '0.85', '15', 'MEDIVEN OINTMENT 15GM', 0, 0, 0, 1),
(44, 'BISACODYL', 'DULCOLAX 5MG', 30, 17, 1.4705882352941, 25, 1, '', '0.9', '10', '0.85', '15', 'DULCOLAX 5MG', 0, 0, 0, 1),
(45, 'BISACODYL', 'BISPANOL 5MG', 100, 1, 10, 10, 2, '', '0.9', '10', '0.85', '15', 'BISPANOL 5MG', 0, 0, 0, 1),
(46, 'BROMOHEXINE/DEXTROMETHOPHAN', 'ZEDEX COUGH SYRUP 100ML', 3, 179, 1.9553072625698, 350, 5, '', '0.9', '10', '0.85', '15', 'ZEDEX COUGH SYRUP 100ML', 0, 0, 0, 1),
(47, 'BROMOHEXINE/PSEUDOEPHEDRINE', 'SOLVIN PLUS SYP 120ML', 2, 299, 1.505016722408, 450, 2, '', '0.9', '10', '0.85', '15', 'SOLVIN PLUS SYP 120ML', 0, 0, 0, 1),
(48, 'BROMOHEXINE/TERBUTALINE', 'BRO-ZEDEX SYRUP 100ML', 1, 179, 1.9553072625698, 350, 5, '', '0.9', '10', '0.85', '15', 'BRO-ZEDEX SYRUP 100ML', 0, 0, 0, 1),
(49, 'CALCIUM ANTACID', 'ENO', 100, 7, 2.1428571428571, 15, 1, '', '0.9', '10', '0.85', '15', 'ENO', 0, 0, 0, 1),
(50, 'CANNULAS', 'IV CANNULA G24 YELLOW', 1, 12, 1.6666666666667, 20, 30, '', '0.9', '10', '0.85', '15', 'IV CANNULA G24 YELLOW', 0, 0, 0, 1),
(51, 'CANNULAS', 'IV CANNULA G22 BLUE', 1, 11, 1.8181818181818, 20, 30, '', '0.9', '10', '0.85', '15', 'IV CANNULA G22 BLUE', 0, 0, 0, 1),
(52, 'CANNULAS', 'IV CANNULA G18 GREEN', 1, 11, 1.8181818181818, 20, 10, '', '0.9', '10', '0.85', '15', 'IV CANNULA G18 GREEN', 0, 0, 0, 1),
(53, 'CANNULAS', 'IV CANNULA G20 PINK', 1, 11, 1.8181818181818, 20, 10, '', '0.9', '10', '0.85', '15', 'IV CANNULA G20 PINK', 0, 0, 0, 1),
(54, 'CEFADROXIL', 'ADORA DRY SUSP', 1, 270, 1.6666666666667, 450, 2, '', '0.9', '10', '0.85', '15', 'ADORA DRY SUSP', 0, 0, 0, 1),
(55, 'CEFPODOXIME', 'MONOCEF-O 200MG', 10, 770, 1.3636363636364, 1050, 3, '', '0.9', '10', '0.85', '15', 'MONOCEF-O 200MG', 0, 0, 0, 1),
(56, 'CEFTRIAXONE', 'MEDIXONE 1GM INJ', 1, 40, 2.5, 100, 2, '', '0.9', '10', '0.85', '15', 'MEDIXONE 1GM INJ', 0, 0, 0, 1),
(57, 'CEFUROXIME', '(EVOROX SUSPENSION)', 5, 219, 2.0547945205479, 450, 5, '', '0.9', '10', '0.85', '15', '(EVOROX SUSPENSION)', 0, 0, 0, 1),
(58, 'CEFUROXIME', 'PULMOCEF 500MG', 5, 303, 1.4851485148515, 450, 3, '', '0.9', '10', '0.85', '15', 'PULMOCEF 500MG', 0, 0, 0, 1),
(59, 'CELESTAMINE', 'ZOLEBET TABS', 162, 8, 1.875, 15, 1, '', '0.9', '10', '0.85', '15', 'ZOLEBET TABS', 0, 0, 0, 1),
(60, 'CETRIZINE', 'ZYCET SYP 60ML', 25, 18, 3.3333333333333, 60, 15, '', '0.9', '10', '0.85', '15', 'ZYCET SYP 60ML', 0, 0, 0, 1),
(61, 'CETRIZINE', 'cetrizet 10mg\r\n', 790, 2, 2.5, 5, 10, '', '0.9', '10', '0.85', '15', 'ZYCET TABLETS', 100, 0, 0, 1),
(62, 'CHLORHEXIDINE', 'REMIDINE MOUTH WASH 100ML', 4, 215, 1.6279069767442, 350, 5, '', '0.9', '10', '0.85', '15', 'REMIDINE MOUTH WASH 100ML', 0, 0, 0, 1),
(63, 'CHLORHEXIDINE', 'CHX GEL', 4, 70, 1.4285714285714, 100, 5, '', '0.9', '10', '0.85', '15', 'CHX GEL', 0, 0, 0, 1),
(64, 'CHLORZOXAZONE/PCM', 'MYOSPAZ', 75, 19, 1.3157894736842, 25, 10, '', '0.9', '10', '0.85', '15', 'MYOSPAZ', 0, 0, 0, 1),
(65, 'CINCHOCAINE/HYDROCORTISONE/NEOMYCIN', 'ANUSTAT OINTMENR 15GM', 5, 428, 1.4018691588785, 600, 5, '', '0.9', '10', '0.85', '15', 'ANUSTAT OINTMENR 15GM', 0, 0, 0, 1),
(66, 'CIPROFLOXACIN', 'CIPROFLOXACIN 500MG', 100, 4, 2.5, 10, 5, '', '0.9', '10', '0.85', '15', 'CIPROFLOXACIN 500MG', 0, 0, 0, 1),
(67, 'CIPROFLOXACIN/DEXAMETHASONE', 'CEPROLENE D EYE/EAR DROPS 5ML', 1, 269, 1.4126394052045, 380, 5, '', '0.9', '10', '0.85', '15', 'CEPROLENE D EYE/EAR DROPS 5ML', 0, 0, 0, 1),
(68, 'CLARITHROMYCIN', 'AZICLAR 500MG', 10, 239, 1.673640167364, 400, 2, '', '0.9', '10', '0.85', '15', 'AZICLAR 500MG', 0, 0, 0, 1),
(69, 'CLOTRIMAZOLE', 'CANDID CREAM 20GM', 2, 243, 1.440329218107, 350, 2, '', '0.9', '10', '0.85', '15', 'CANDID CREAM 20GM', 0, 0, 0, 1),
(70, 'CLOTRIMAZOLE', 'BULKOT CREAM 20GM', 1, 22, 4.5454545454545, 100, 3, '', '0.9', '10', '0.85', '15', 'BULKOT CREAM 20GM', 0, 0, 0, 1),
(71, 'CLOTRIMAZOLE PESSARIES', 'CANDID V3 VAGINAL INSERTS', 5, 330, 1.5151515151515, 500, 5, '', '0.9', '10', '0.85', '15', 'CANDID V3 VAGINAL INSERTS', 0, 0, 0, 1),
(72, 'CLOTRIMAZOLE PESSARIES', 'CANDID V6 VAGINAL INSERTS', 2, 372, 1.4784946236559, 550, 3, '', '0.9', '10', '0.85', '15', 'CANDID V6 VAGINAL INSERTS', 0, 0, 0, 1),
(73, 'CLOTRIMAZOLE POWDER', 'CANDID DUSTING POWDER 30GM', 5, 234, 1.4957264957265, 350, 5, '', '0.9', '10', '0.85', '15', 'CANDID DUSTING POWDER 30GM', 0, 0, 0, 1),
(74, 'CLOTRIMAZOLE/ BECLOMETHASONE', 'CANDID - B CREAM 15GM', 1, 183, 1.6393442622951, 300, 5, '', '0.9', '10', '0.85', '15', 'CANDID - B CREAM 15GM', 0, 0, 0, 1),
(75, 'CLOTRIMAZOLE/ BECLOMETHASONE', 'CLOZOLE B CREAM 15GM', 1, 71, 2.112676056338, 150, 10, '', '0.9', '10', '0.85', '15', 'CLOZOLE B CREAM 15GM', 0, 0, 0, 1),
(76, 'CLOTRIMAZOLE/ BECLOMETHASONE', 'CLOB B CREAM 15MG', 1, 73, 2.0547945205479, 150, 10, '', '0.9', '10', '0.85', '15', 'CLOB B CREAM 15MG', 0, 0, 0, 1),
(77, 'CLOTRIMAZOLE/BECLOMETHASON/NEOMYCIN', 'BULKOT MIXI', 1, 105, 1.9047619047619, 200, 3, '', '0.9', '10', '0.85', '15', 'BULKOT MIXI', 0, 0, 0, 1),
(78, 'CLOTRIMAZOLE/BETAMETHASONE/NEOMYCIN', 'FUNBACT- A CREAM 30GM', 1, 125, 2, 250, 2, '', '0.9', '10', '0.85', '15', 'FUNBACT- A CREAM 30GM', 0, 0, 0, 1),
(79, 'CONDOMS', 'TRUST CLASSIC DISPENSER', 1, 21, 2.3809523809524, 50, 2, '', '0.9', '10', '0.85', '15', 'TRUST CLASSIC DISPENSER', 0, 0, 0, 1),
(80, 'CONDOMS', 'TRUST STUDDED DISPENSER', 35, 32, 2.34375, 75, 2, '', '0.9', '10', '0.85', '15', 'TRUST STUDDED DISPENSER', 0, 0, 0, 1),
(81, 'CO-TRIMOXAZOLE', 'SEPTRIN 50ML', 19, 23, 4.3478260869565, 100, 20, '', '0.9', '10', '0.85', '15', 'SEPTRIN 50ML', 0, 0, 0, 1),
(82, 'CO-TRIMOXAZOLE', 'UNITRIM 480MG', 200, 2, 2.5, 5, 2, '', '0.9', '10', '0.85', '15', 'UNITRIM 480MG', 0, 0, 0, 1),
(83, 'CO-TRIMOXAZOLE (SEPTRIN)', 'UNITRIM DS 960MG', 300, 3, 3.3333333333333, 10, 2, '', '0.9', '10', '0.85', '15', 'UNITRIM DS 960MG', 0, 0, 0, 1),
(84, 'CPIROFLOXACIN SOLUTION', 'CEPROLENE  EYE/EAR DROPS 5ML', 1, 180, 1.3888888888889, 250, 5, '', '0.9', '10', '0.85', '15', 'CEPROLENE  EYE/EAR DROPS 5ML', 0, 0, 0, 1),
(85, 'CYPROHEPATIDINE', 'TRES-ORIX FORTE ORAL SUSPENSION', 2, 509, 1.3752455795678, 700, 4, '', '0.9', '10', '0.85', '15', 'TRES-ORIX FORTE ORAL SUSPENSION', 0, 0, 0, 1),
(86, 'CYPROHEPATIDINE', 'TRIMETABOL ORAL SOLUTION 150ML', 2, 765, 1.3725490196078, 1050, 2, '', '0.9', '10', '0.85', '15', 'TRIMETABOL ORAL SOLUTION 150ML', 0, 0, 0, 1),
(87, 'CYPROHEPATIDINE', 'APPEVITE SYRUP', 1, 179, 1.6759776536313, 300, 2, '', '0.9', '10', '0.85', '15', 'APPEVITE SYRUP', 0, 0, 0, 1),
(88, 'CYPROHEPATIDINE', 'CYPRO - B SYP 200ML', 1, 275, 1.4545454545455, 400, 5, '', '0.9', '10', '0.85', '15', 'CYPRO - B SYP 200ML', 0, 0, 0, 1),
(89, 'DEXAMETHASONE', 'DEXSONA 4MG/1ML', 1, 6, 8.3333333333333, 50, 10, '', '0.9', '10', '0.85', '15', 'DEXSONA 4MG/1ML', 0, 0, 0, 1),
(90, 'DEXAMETHASONE / NEOMYCIN', 'DEXTRACIN EYE/EAR DROP', 1, 200, 1.75, 350, 3, '', '0.9', '10', '0.85', '15', 'DEXTRACIN EYE/EAR DROP', 0, 0, 0, 1),
(91, 'DICLOFENAC', 'VOLINI GEL 30GM', 5, 149, 1.6778523489933, 250, 5, '', '0.9', '10', '0.85', '15', 'VOLINI GEL 30GM', 0, 0, 0, 1),
(92, 'DICLOFENAC', 'COMNAC SR 100MG', 100, 2, 5, 10, 3, '', '0.9', '10', '0.85', '15', 'COMNAC SR 100MG', 0, 0, 0, 1),
(93, 'DICLOFENAC', 'RHEUMAC 50MG', 200, 2, 2.5, 5, 3, '', '0.9', '10', '0.85', '15', 'RHEUMAC 50MG', 0, 0, 0, 1),
(94, 'DICLOFENAC GEL', 'VONAC GEL 20GM', 15, 17, 5.8823529411765, 100, 15, '', '0.9', '10', '0.85', '15', 'VONAC GEL 20GM', 0, 0, 0, 1),
(95, 'DICLOFENAC/PCM/CHLORXAZONE', 'FLAMORYL S', 9, 12, 2.0833333333333, 25, 1, '', '0.9', '10', '0.85', '15', 'FLAMORYL S', 0, 0, 0, 1),
(96, 'DICYCLOVERINE/PARACEMATOL', 'CYCLOPAM SUSP 30ML', 3, 127, 1.9685039370079, 250, 5, '', '0.9', '10', '0.85', '15', 'CYCLOPAM SUSP 30ML', 0, 0, 0, 1),
(97, 'DICYCLOVERINE/PARACEMATOL', 'CYCLOPAM-P', 20, 13, 1.5384615384615, 20, 6, '', '0.9', '10', '0.85', '15', 'CYCLOPAM-P', 0, 0, 0, 1),
(98, 'DIGOXIN', 'DIGOMET 125MCG', 100, 3, 3.3333333333333, 10, 2, '', '0.9', '10', '0.85', '15', 'DIGOMET 125MCG', 0, 0, 0, 1),
(99, 'DIGOXIN', 'DIGOXIN BP 0.25MG', 100, 3, 3.3333333333333, 10, 2, '', '0.9', '10', '0.85', '15', 'DIGOXIN BP 0.25MG', 0, 0, 0, 1),
(100, 'DIHYDROARTEMESININ', 'P-ALAXIN', 8, 199, 1.7587939698492, 350, 5, '', '0.9', '10', '0.85', '15', 'P-ALAXIN', 0, 0, 0, 1),
(101, 'DIHYDROARTEMESININ', 'P-ALAXIN SUSP 80ML', 5, 245, 1.6326530612245, 400, 5, '', '0.9', '10', '0.85', '15', 'P-ALAXIN SUSP 80ML', 0, 0, 0, 1),
(102, 'DOMPERIDONE', 'MOTINORM 10MG', 100, 450, 1.3333333333333, 600, 1, '', '0.9', '10', '0.85', '15', 'MOTINORM 10MG', 0, 0, 0, 1),
(103, 'DOXYCYCLINE', 'CAREDOXY 100MG', 100, 2, 5, 10, 3, '', '0.9', '10', '0.85', '15', 'CAREDOXY 100MG', 0, 0, 0, 1),
(104, 'ELASTOPLAST', 'FABRIC PLASTER', 30, 129, 1.3333333333333, 172, 1, '', '0.9', '10', '0.85', '15', 'FABRIC PLASTER', 0, 0, 0, 1),
(105, 'ENALAPRIL', 'ENALAPRIL 10MG', 100, 1, 10, 10, 2, '', '0.9', '10', '0.85', '15', 'ENALAPRIL 10MG', 0, 0, 0, 1),
(106, 'ENALAPRIL', 'ACEPRIL-5MG', 60, 1, 8, 8, 5, '', '0.9', '10', '0.85', '15', 'ACEPRIL-5MG', 0, 0, 0, 1),
(107, 'ERYTHROMYCIN', 'ERLGYL 500MG', 100, 8, 1.875, 15, 2, '', '0.9', '10', '0.85', '15', 'ERLGYL 500MG', 0, 0, 0, 1),
(108, 'ERYTHROMYCIN', 'ERYSTAR SYRUP 100ML', 1, 56, 2.6785714285714, 150, 10, '', '0.9', '10', '0.85', '15', 'ERYSTAR SYRUP 100ML', 0, 0, 0, 1),
(109, 'ESOMEPRAZOLE', 'ZOMEP-ES 20MG', 179, 4, 3.75, 15, 5, '', '0.9', '10', '0.85', '15', 'ZOMEP-ES 20MG', 0, 0, 0, 1),
(110, 'ESOMEPRAZOLE', 'ZOMEP-ES 40MG', 147, 4, 5, 20, 5, '', '0.9', '10', '0.85', '15', 'ZOMEP-ES 40MG', 0, 0, 0, 1),
(111, 'ETAMSYLATE', 'SYLENT', 90, 47, 1.3829787234043, 65, 5, '', '0.9', '10', '0.85', '15', 'SYLENT', 0, 0, 0, 1),
(112, 'ETEROCOXIB', 'ETRIB 60MG', 60, 13, 1.5384615384615, 20, 2, '', '0.9', '10', '0.85', '15', 'ETRIB 60MG', 0, 0, 0, 1),
(113, 'ETEROCOXIB', 'ETRIB 90MG', 59, 17, 1.4705882352941, 25, 2, '', '0.9', '10', '0.85', '15', 'ETRIB 90MG', 0, 0, 0, 1),
(114, 'FACEMASK', 'PROTO-MASK DISPOSABLE FACE MASK', 49, 2, 10, 20, 3, '', '0.9', '10', '0.85', '15', 'PROTO-MASK DISPOSABLE FACE MASK', 0, 0, 0, 1),
(115, 'FERRIC AMMONIUM CITRATE', 'BYOFER-12 BLOOD BUILDER 200ML', 1, 199, 1.7587939698492, 350, 3, '', '0.9', '10', '0.85', '15', 'BYOFER-12 BLOOD BUILDER 200ML', 0, 0, 0, 1),
(116, 'FERRIC AMMONIUM CITRTE', 'RANFERON BLOOD BUILDER 200ML', 1, 319, 1.41065830721, 450, 3, '', '0.9', '10', '0.85', '15', 'RANFERON BLOOD BUILDER 200ML', 0, 0, 0, 1),
(117, 'FLUCLOXACILLIN', 'FLUCLOXACILLIN 500MG GENERIC', 100, 8, 1.875, 15, 3, '', '0.9', '10', '0.85', '15', 'FLUCLOXACILLIN 500MG GENERIC', 0, 0, 0, 1),
(118, 'FLUCLOXACILLIN', 'DAWA-FLOX 250 MG', 100, 5, 2, 10, 2, '', '0.9', '10', '0.85', '15', 'DAWA-FLOX 250 MG', 0, 0, 0, 1),
(119, 'FLUCLOXACILLIN', 'FLOXAMED 500MG W/O WFI', 1, 36, 1.6666666666667, 60, 12, '', '0.9', '10', '0.85', '15', 'FLOXAMED 500MG W/O WFI', 0, 0, 0, 1),
(120, 'FLUCLOXACILLIN', 'ELYFLOX SYRUP 100ML', 1, 78, 1.9230769230769, 150, 5, '', '0.9', '10', '0.85', '15', 'ELYFLOX SYRUP 100ML', 0, 0, 0, 1),
(121, 'FLUCONAZOLE', 'DICONAZOL 200MG', 14, 134, 1.3358208955224, 179, 1, '', '0.9', '10', '0.85', '15', 'DICONAZOL 200MG', 0, 0, 0, 1),
(122, 'FOLIC ACID', 'FOLISURE 5MG', 100, 38, 1.3421052631579, 51, 1, '', '0.9', '10', '0.85', '15', 'FOLISURE 5MG', 0, 0, 0, 1),
(123, 'FUROSIMIDE', 'FRUSEMIDE -LASIX GENERIC', 100, 69, 1.3333333333333, 92, 1, '', '0.9', '10', '0.85', '15', 'FRUSEMIDE -LASIX GENERIC', 0, 0, 0, 1),
(124, 'GRISEOFLUVIN', 'GRISOLAB 125MG', 100, 349, 1.3323782234957, 465, 3, '', '0.9', '10', '0.85', '15', 'GRISOLAB 125MG', 0, 0, 0, 1),
(125, 'GRISEOFLUVIN', 'GRISOLAB 250MG', 100, 539, 1.3320964749536, 718, 3, '', '0.9', '10', '0.85', '15', 'GRISOLAB 250MG', 0, 0, 0, 1),
(126, 'GRISEOFLUVIN', 'GRISACTIN 500MG', 100, 759, 1.3333333333333, 1012, 3, '', '0.9', '10', '0.85', '15', 'GRISACTIN 500MG', 0, 0, 0, 1),
(127, 'HYDROCHLOROTHIAZIDE', 'HCTZ 50MG', 300, 182, 1.3351648351648, 243, 3, '', '0.9', '10', '0.85', '15', 'HCTZ 50MG', 0, 0, 0, 1),
(128, 'HYDROCHLOROTHIAZIDE', 'HCTZ 25MG', 100, 171, 1.3333333333333, 228, 3, '', '0.9', '10', '0.85', '15', 'HCTZ 25MG', 0, 0, 0, 1),
(129, 'HYDROCORTISONE CREAM', 'HYDROCUROM CREAM 15GM', 1, 28, 1.3214285714286, 37, 20, '', '0.9', '10', '0.85', '15', 'HYDROCUROM CREAM 15GM', 0, 0, 0, 1),
(130, 'HYDROCORTISONE INJ', 'LABROHYDRO INJ 100MG', 1, 40, 1.325, 53, 30, '', '0.9', '10', '0.85', '15', 'LABROHYDRO INJ 100MG', 0, 0, 0, 1),
(131, 'HYDROGEN PEROXIDE', 'HYDROGEN PEROXIDE 6%(200ML)', 1, 23, 1.3478260869565, 31, 5, '', '0.9', '10', '0.85', '15', 'HYDROGEN PEROXIDE 6%(200ML)', 0, 0, 0, 1),
(132, 'HYDROXYUREA', 'HYDROSTAT 500MG', 100, 2430, 1.3329218106996, 3239, 1, '', '0.9', '10', '0.85', '15', 'HYDROSTAT 500MG', 0, 0, 0, 1),
(133, 'HYOSCINE BUYLBROMIDE', 'BISPANOL', 100, 249, 1.3333333333333, 332, 1, '', '0.9', '10', '0.85', '15', 'BISPANOL', 0, 0, 0, 1),
(134, 'HYPERMELLOSE', 'LUBTEAR EYE DROPS', 1, 259, 1.3320463320463, 345, 3, '', '0.9', '10', '0.85', '15', 'LUBTEAR EYE DROPS', 0, 0, 0, 1),
(135, 'HYSOCINE', 'BUSCOPAN SYP 60ML', 1, 50, 1.34, 67, 3, '', '0.9', '10', '0.85', '15', 'BUSCOPAN SYP 60ML', 0, 0, 0, 1),
(136, 'IBUPROFEN', 'PROFEN 200MG', 100, 85, 1.3294117647059, 113, 2, '', '0.9', '10', '0.85', '15', 'PROFEN 200MG', 0, 0, 0, 1),
(137, 'IBUPROFEN', 'TROFEN SYRUP 60ML', 0, 20, 1.35, 27, 20, '', '0.9', '10', '0.85', '15', 'TROFEN SYRUP 60ML', 0, 0, 0, 1),
(138, 'IBUPROFEN', 'INFEN 400MG', 100, 145, 1.3310344827586, 193, 1, '', '0.9', '10', '0.85', '15', 'INFEN 400MG', 0, 0, 0, 1),
(139, 'IBUPROFEN', 'TROFEN SYRUP 100ML', 0, 27, 1.3333333333333, 36, 20, '', '0.9', '10', '0.85', '15', 'TROFEN SYRUP 100ML', 0, 0, 0, 1),
(140, 'IBUPROFEN/PARACETAMOL', 'BRUSTAN TABLETS', 39, 88, 1.3295454545455, 117, 3, '', '0.9', '10', '0.85', '15', 'BRUSTAN TABLETS', 0, 0, 0, 1),
(141, 'IBUPROFEN/PARACETAMOL', 'BRUSTAN SUSPENSION 100ML', 1, 242, 1.3347107438017, 323, 3, '', '0.9', '10', '0.85', '15', 'BRUSTAN SUSPENSION 100ML', 0, 0, 0, 1),
(142, 'INSULIN', 'MIXTARD 30 INSULIN 100IU/ML(10ML)', 1, 713, 1.3323983169705, 950, 2, '', '0.9', '10', '0.85', '15', 'MIXTARD 30 INSULIN 100IU/ML(10ML)', 0, 0, 0, 1),
(143, 'INSULIN SYRINGES', 'BD MICROFINE 1ML', 10, 212, 1.3349056603774, 283, 2, '', '0.9', '10', '0.85', '15', 'BD MICROFINE 1ML', 0, 0, 0, 1),
(144, 'IODINE', 'TINCTURE OF IODINE 25ML', 0, 30, 1.3333333333333, 40, 5, '', '0.9', '10', '0.85', '15', 'TINCTURE OF IODINE 25ML', 0, 0, 0, 1),
(145, 'KETOCONAZOLE', 'HITORAL 200MG', 100, 359, 1.3342618384401, 479, 1, '', '0.9', '10', '0.85', '15', 'HITORAL 200MG', 0, 0, 0, 1),
(146, 'LEVOFLOXACIN', 'LIVOTA 750MG', 10, 199, 1.3316582914573, 265, 2, '', '0.9', '10', '0.85', '15', 'LIVOTA 750MG', 0, 0, 0, 1),
(147, 'LEVOFLOXACIN', 'MLEVO-500', 10, 70, 1.3285714285714, 93, 3, '', '0.9', '10', '0.85', '15', 'MLEVO-500', 0, 0, 0, 1),
(148, 'LEVOLUKAST/MONTELUKAST', 'L MONTUS KID', 10, 300, 1.3333333333333, 400, 2, '', '0.9', '10', '0.85', '15', 'L MONTUS KID', 0, 0, 0, 1),
(149, 'LEVONGESTEROL', 'POSTINOR 2 PILLS ORIGINALS', 0, 142, 1.330985915493, 189, 10, '', '0.9', '10', '0.85', '15', 'POSTINOR 2 PILLS ORIGINALS', 0, 0, 0, 1),
(150, 'LEVONGESTEROL', 'SAFE-72 0.75MG', 20, 20, 1.35, 27, 20, '', '0.9', '10', '0.85', '15', 'SAFE-72 0.75MG', 0, 0, 0, 1),
(151, 'LEVONOGESTROL/ETHYL ESTRADIOL', 'MICROGYNON FE', 10, 155, 1.6129032258065, 250, 3, '', '0.9', '10', '0.85', '15', 'MICROGYNON FE', 1, 0, 0, 1),
(152, 'LINCOMYCIN', 'LINCOMYCIN 500MG', 10, 159, 1.3333333333333, 212, 10, '', '0.9', '10', '0.85', '15', 'LINCOMYCIN 500MG', 0, 0, 0, 1),
(153, 'LOPERAMIDE', 'IMMOBULK 2MG', 4, 10, 1.3, 13, 20, '', '0.9', '10', '0.85', '15', 'IMMOBULK 2MG', 0, 0, 0, 1),
(154, 'LOSARTAN', 'LOSARTAS HT', 174, 872, 1.3325688073394, 1162, 5, '', '0.9', '10', '0.85', '15', 'LOSARTAS HT', 0, 0, 0, 1),
(155, 'LOSARTAN 50/AMLODIPINE 5', 'AMLOZAAR TABS', 60, 1699, 1.3331371394938, 2265, 2, '', '0.9', '10', '0.85', '15', 'AMLOZAAR TABS', 0, 0, 0, 1),
(156, 'LOSARTAN 50/AMLODIPINE 5/HCTZ 12.5MG', 'AMLOZAAR H', 60, 1931, 1.332988089073, 2574, 2, '', '0.9', '10', '0.85', '15', 'AMLOZAAR H', 0, 0, 0, 1),
(157, 'MAGNESIA MILK', 'CATOXYMAG -N SUSPENSION 200ML', 1, 285, 1.3333333333333, 380, 3, '', '0.9', '10', '0.85', '15', 'CATOXYMAG -N SUSPENSION 200ML', 0, 0, 0, 1),
(158, 'MEBENDAZOLE', 'NATOA 100MG', 100, 90, 1.3333333333333, 120, 1, '', '0.9', '10', '0.85', '15', 'NATOA 100MG', 0, 0, 0, 1),
(159, 'MEFENAMIC ACID', 'MEFENAMIC ACID 500MG', 100, 333, 1.3333333333333, 444, 1, '', '0.9', '10', '0.85', '15', 'MEFENAMIC ACID 500MG', 0, 0, 0, 1),
(160, 'MELOXICAM', 'MELOSTAR 7.5 MG', 100, 139, 1.3309352517986, 185, 2, '', '0.9', '10', '0.85', '15', 'MELOSTAR 7.5 MG', 0, 0, 0, 1),
(161, 'MELOXICAM', 'MELOXEE 15 MG', 100, 245, 1.334693877551, 327, 2, '', '0.9', '10', '0.85', '15', 'MELOXEE 15 MG', 0, 0, 0, 1),
(162, 'MENTHOL', 'NAUMA BALM 20gm', 1, 50, 1.34, 67, 10, '', '0.9', '10', '0.85', '15', 'NAUMA BALM 20gm', 0, 0, 0, 1),
(163, 'MENTHOL', 'DEEP HEAT RUB 15GM', 1, 209, 1.3349282296651, 279, 2, '', '0.9', '10', '0.85', '15', 'DEEP HEAT RUB 15GM', 0, 0, 0, 1),
(164, 'MENTHOL', 'DEEP HEAT SPRAY 150ML', 1, 679, 1.3328424153166, 905, 2, '', '0.9', '10', '0.85', '15', 'DEEP HEAT SPRAY 150ML', 0, 0, 0, 1),
(165, 'METFORMIN', 'GLUDOWN 500MG', 70, 2, 2.5, 5, 5, '', '0.9', '10', '0.85', '15', 'GLUDOWN 500MG', 20, 0, 0, 1),
(166, 'METFORMIN', 'GLUCOMET 850MG', 28, 209, 1.3349282296651, 279, 2, '', '0.9', '10', '0.85', '15', 'GLUCOMET 850MG', 0, 0, 0, 1),
(167, 'METFORMIN', 'GLUCOMET 500MG', 27, 105, 1.3333333333333, 140, 3, '', '0.9', '10', '0.85', '15', 'GLUCOMET 500MG', 0, 0, 0, 1),
(168, 'METHYLPROGESTERONE', 'LYDIA CONTRACEPTIVE', 25, 2375, 1.3330526315789, 3166, 1, '', '0.9', '10', '0.85', '15', 'LYDIA CONTRACEPTIVE', 0, 0, 0, 1),
(169, 'METOCLOPROMIDE', 'MELASIL 10MG', 100, 75, 1.3333333333333, 100, 1, '', '0.9', '10', '0.85', '15', 'MELASIL 10MG', 0, 0, 0, 1),
(170, 'METRONIDAZOLE', 'FLAGYL GENERIC 200MG', 100, 75, 1.3333333333333, 100, 3, '', '0.9', '10', '0.85', '15', 'FLAGYL GENERIC 200MG', 0, 0, 0, 1),
(171, 'METRONIDAZOLE', 'FLAGYL GENERIC 400MG', 96, 129, 1.3333333333333, 172, 3, '', '0.9', '10', '0.85', '15', 'FLAGYL GENERIC 400MG', 0, 0, 0, 1),
(172, 'METRONIDAZOLE', 'EFLARON SUSPENSION 60 ML', 1, 30, 1.3333333333333, 40, 3, '', '0.9', '10', '0.85', '15', 'EFLARON SUSPENSION 60 ML', 0, 0, 0, 1),
(173, 'METRONIDAZOLE', 'BETAGYL SUSPENSION 120ML', 1, 40, 1.325, 53, 20, '', '0.9', '10', '0.85', '15', 'BETAGYL SUSPENSION 120ML', 0, 0, 0, 1),
(174, 'MILK OF MAGNESIA', 'RELCER GEL', 1, 293, 1.3344709897611, 391, 3, '', '0.9', '10', '0.85', '15', 'RELCER GEL', 0, 0, 0, 1),
(175, 'MILK OF MAGNESIA', 'ULGICID ANTACID SUSP MINT 200ML', 3, 339, 1.3333333333333, 452, 3, '', '0.9', '10', '0.85', '15', 'ULGICID ANTACID SUSP MINT 200ML', 0, 0, 0, 1),
(176, 'MOXIFLOXACIN', 'APDROPS EYE DROPS 5ML', 1, 626, 1.332268370607, 834, 2, '', '0.9', '10', '0.85', '15', 'APDROPS EYE DROPS 5ML', 0, 0, 0, 1),
(177, 'MOXIFLOXACIN/DEXAMETHASONE', 'APDROPS DX EYE DROPS 5ML', 1, 748, 1.3328877005348, 997, 2, '', '0.9', '10', '0.85', '15', 'APDROPS DX EYE DROPS 5ML', 0, 0, 0, 1),
(178, 'NEEDLES', 'DISPOSABLE NEEDLES G18', 100, 144, 1.3333333333333, 192, 2, '', '0.9', '10', '0.85', '15', 'DISPOSABLE NEEDLES G18', 0, 0, 0, 1),
(179, 'NIFEDIPINE', 'CALCIGARD RETARD 20MG', 100, 135, 1.3333333333333, 180, 5, '', '0.9', '10', '0.85', '15', 'CALCIGARD RETARD 20MG', 0, 0, 0, 1),
(180, 'NON STERILE GAUZE BANDAGES', '\"WOW BANDAGES 3\"\"\"', 12, 85, 1.3294117647059, 113, 10, '', '0.9', '10', '0.85', '15', '\"WOW BANDAGES 3\"\"\"', 0, 0, 0, 1),
(181, 'NYSTATIN', 'NYSTATIN ORAL DROPS 30ML', 1, 55, 1.3272727272727, 73, 5, '', '0.9', '10', '0.85', '15', 'NYSTATIN ORAL DROPS 30ML', 0, 0, 0, 1),
(182, 'OMEPRAZOLE', 'OM 20MG', 100, 115, 1.3304347826087, 153, 3, '', '0.9', '10', '0.85', '15', 'OM 20MG', 0, 0, 0, 1),
(183, 'ONDANSETRON', 'EMITOSS 4MG', 9, 275, 1.3345454545455, 367, 3, '', '0.9', '10', '0.85', '15', 'EMITOSS 4MG', 0, 0, 0, 1),
(184, 'PARACETAMOL', 'PARACETAMOL INFUSION 100ML', 1, 67, 1.3283582089552, 89, 10, '', '0.9', '10', '0.85', '15', 'PARACETAMOL INFUSION 100ML', 0, 0, 0, 1),
(185, 'PARACETAMOL', 'BETAMOL SYRUP 60ML', 0, 20, 1.35, 27, 20, '', '0.9', '10', '0.85', '15', 'BETAMOL SYRUP 60ML', 0, 0, 0, 1),
(186, 'PARACETAMOL', 'MICROMOL SYRUP 100ML', 1, 30, 1.3333333333333, 40, 20, '', '0.9', '10', '0.85', '15', 'MICROMOL SYRUP 100ML', 0, 0, 0, 1),
(187, 'PARACETAMOL', 'CALPOL SUSPENSION 100ML', 1, 320, 1.334375, 427, 2, '', '0.9', '10', '0.85', '15', 'CALPOL SUSPENSION 100ML', 0, 0, 0, 1),
(188, 'PARACETAMOL', 'CALPOL SUSPENSION 60ML', 1, 216, 1.3333333333333, 288, 2, '', '0.9', '10', '0.85', '15', 'CALPOL SUSPENSION 60ML', 0, 0, 0, 1),
(189, 'PCM', 'CIPLADON 500MG', 16, 325, 1.3323076923077, 433, 3, '', '0.9', '10', '0.85', '15', 'CIPLADON 500MG', 0, 0, 0, 1),
(190, 'PCM', 'PANADOL XTRA', 96, 615, 1.3333333333333, 820, 2, '', '0.9', '10', '0.85', '15', 'PANADOL XTRA', 0, 0, 0, 1),
(191, 'PCM', 'PANADOL ADVANCE', 100, 555, 1.3333333333333, 740, 2, '', '0.9', '10', '0.85', '15', 'PANADOL ADVANCE', 0, 0, 0, 1),
(192, 'PCM', 'PARACETAMOL 500MG', 70, 85, 1.3294117647059, 113, 5, '', '0.9', '10', '0.85', '15', 'PARACETAMOL 500MG', 0, 0, 0, 1),
(193, 'PCM/CAFFEINE/PSUEDOEPHEDRINE/CHLORPHENIRAMINE', 'COLD CAPS ORIGINAL', 11, 115, 1.3304347826087, 153, 5, '', '0.9', '10', '0.85', '15', 'COLD CAPS ORIGINAL', 0, 0, 0, 1),
(194, 'PCM/CAFFEINE/PSUEDOEPHEDRINE/CHLORPHENIRAMINE', 'FLUGONE', 10, 111, 1.3333333333333, 148, 20, '', '0.9', '10', '0.85', '15', 'FLUGONE', 0, 0, 0, 1),
(195, 'PIRITON', 'CPM SYYRUP 100ML', 1, 26, 1.3461538461538, 35, 20, '', '0.9', '10', '0.85', '15', 'CPM SYYRUP 100ML', 0, 0, 0, 1),
(196, 'PIROXICAM', 'CAROXICAM 20MG', 100, 80, 1.3375, 107, 1, '', '0.9', '10', '0.85', '15', 'CAROXICAM 20MG', 0, 0, 0, 1),
(197, 'PLASTER', '\"ZINC OXIDE ADHESIVE PLASTER 3\"\"\"', 1, 75, 1.3333333333333, 100, 3, '', '0.9', '10', '0.85', '15', '\"ZINC OXIDE ADHESIVE PLASTER 3\"\"\"', 0, 0, 0, 1),
(198, 'PLASTER', '\"ZINC OXIDE ADHESIVE PLASTER 6\"\"\"', 1, 145, 1.3310344827586, 193, 3, '', '0.9', '10', '0.85', '15', '\"ZINC OXIDE ADHESIVE PLASTER 6\"\"\"', 0, 0, 0, 1),
(199, 'POVIDONE IODINE', 'BETADINE MOUTHWASH 125ML', 1, 459, 1.3333333333333, 612, 3, '', '0.9', '10', '0.85', '15', 'BETADINE MOUTHWASH 125ML', 0, 0, 0, 1),
(200, 'PREDNISOLONE', 'P-SOLONE 1% EYE DROPS', 1, 66, 1.3333333333333, 88, 3, '', '0.9', '10', '0.85', '15', 'P-SOLONE 1% EYE DROPS', 0, 0, 0, 1),
(201, 'PREDNISOLONE', 'OLSOLONE', 94, 69, 1.3333333333333, 92, 5, '', '0.9', '10', '0.85', '15', 'OLSOLONE', 0, 0, 0, 1),
(202, 'PROPRANOLOL', 'INDERAL 40MG', 90, 7, 1.4285714285714, 10, 2, '', '0.9', '10', '0.85', '15', 'INDERAL 40MG', 10, 0, 0, 1),
(203, 'QUININE', 'S-QUIN INJ 300MG/ML (2ML)', 0, 25, 1.32, 33, 10, '', '0.9', '10', '0.85', '15', 'S-QUIN INJ 300MG/ML (2ML)', 0, 0, 0, 1),
(204, 'RABEPRAZOLE/DOMPERIDONE', 'ROBIDOM', 50, 2800, 1.3328571428571, 3732, 1, '', '0.9', '10', '0.85', '15', 'ROBIDOM', 0, 0, 0, 1),
(205, 'RANFERON', 'RANFERON CAPSULES', 150, 325, 1.3323076923077, 433, 5, '', '0.9', '10', '0.85', '15', 'RANFERON CAPSULES', 0, 0, 0, 1),
(206, 'RINGERS LACTATE', 'TROPINCTA RINGERS LACTATE', 42, 63, 1.3333333333333, 84, 15, '', '0.9', '10', '0.85', '15', 'TROPINCTA RINGERS LACTATE', 0, 0, 0, 1),
(207, 'SALBUTAMOL', 'SALBUTAMOL INHALER', 5, 325, 1.3323076923077, 433, 5, '', '0.9', '10', '0.85', '15', 'SALBUTAMOL INHALER', 0, 0, 0, 1),
(208, 'SILDENAFIL', 'KIFARU 50MG', 4, 15, 1.3333333333333, 20, 30, '', '0.9', '10', '0.85', '15', 'KIFARU 50MG', 0, 0, 0, 1),
(209, 'SILDENAFIL', 'NELGRA 100MG', 96, 45, 0.55555555555556, 25, 30, '', '0.9', '10', '0.85', '15', 'NELGRA 100MG', 0, 0, 0, 1),
(210, 'SILDENAFIL', 'MTM 100MG', 4, 45, 1.3333333333333, 60, 5, '', '0.9', '10', '0.85', '15', 'MTM 100MG', 0, 0, 0, 1),
(211, 'SILDENAFIL', 'MTM 50MG', 4, 35, 1.3428571428571, 47, 3, '', '0.9', '10', '0.85', '15', 'MTM 50MG', 0, 0, 0, 1),
(212, 'SILVER SULPHADIAZINE', 'BURNIMED CREAM', 1, 20, 1.35, 27, 10, '', '0.9', '10', '0.85', '15', 'BURNIMED CREAM', 0, 0, 0, 1),
(213, 'SODIUM HYDROGEN CITRATE', 'CITAL LIQUID', 1, 259, 1.3320463320463, 345, 5, '', '0.9', '10', '0.85', '15', 'CITAL LIQUID', 0, 0, 0, 1),
(214, 'SPIRONOLACTONE', 'SPILLAR 25MG', 199, 450, 1.3333333333333, 600, 1, '', '0.9', '10', '0.85', '15', 'SPILLAR 25MG', 0, 0, 0, 1),
(215, 'SUCRALFATE', 'SUCRAFIL-0--GEL', 1, 290, 1.3344827586207, 387, 2, '', '0.9', '10', '0.85', '15', 'SUCRAFIL-0--GEL', 0, 0, 0, 1),
(216, 'SYRINGES', 'DISPOSABLE SYRINGES 5ML W/O', 100, 299, 1.3344481605351, 399, 1, '', '0.9', '10', '0.85', '15', 'DISPOSABLE SYRINGES 5ML W/O', 0, 0, 0, 1),
(217, 'SYRINGES', 'DISPOSABLE SYRINGES 10ML W/O', 100, 499, 1.3326653306613, 665, 1, '', '0.9', '10', '0.85', '15', 'DISPOSABLE SYRINGES 10ML W/O', 0, 0, 0, 1),
(218, 'SYRINGES', 'DISPOSABLE SYRINGES 20ML', 100, 799, 1.3329161451815, 1065, 1, '', '0.9', '10', '0.85', '15', 'DISPOSABLE SYRINGES 20ML', 0, 0, 0, 1),
(219, 'TADALAFIL', 'CIATUFF 20GM', 8, 1399, 1.3330950679056, 1865, 3, '', '0.9', '10', '0.85', '15', 'CIATUFF 20GM', 0, 0, 0, 1),
(220, 'TETRACYCLINE', 'RACYCLINE 250MG', 100, 199, 1.3316582914573, 265, 1, '', '0.9', '10', '0.85', '15', 'RACYCLINE 250MG', 0, 0, 0, 1),
(221, 'TRANEXAMIC ACID', 'STOP', 78, 600, 1.3333333333333, 800, 5, '', '0.9', '10', '0.85', '15', 'STOP', 0, 0, 0, 1),
(222, 'TRIOKIT', 'TRIOKIT', 0, 383, 2.9582245430809, 1133, 3, '', '0.9', '10', '0.85', '15', 'TRIOKIT', 0, 0, 0, 1),
(223, 'ZINC SULPHATE', 'JUNIOR ZINC 20MG', 100, 99, 1.3333333333333, 132, 1, '', '0.9', '10', '0.85', '15', 'JUNIOR ZINC 20MG', 0, 0, 0, 1),
(224, NULL, 'ADSORBED TETANUS VACCINE BP 0.5ML', 1, 99, 1.3333333333333, 132, 10, '', '0.9', '10', '0.85', '15', 'ADSORBED TETANUS VACCINE BP 0.5ML', 0, 0, 0, 1),
(225, NULL, 'PREGNACARE ORIGINAL', 30, 679, 1.3328424153166, 905, 3, '', '0.9', '10', '0.85', '15', 'PREGNACARE ORIGINAL', 0, 0, 0, 1),
(226, NULL, 'HCG RAPID PREGNANCY TEST STRIP', 48, 299, 1.3344481605351, 399, 1, '', '0.9', '10', '0.85', '15', 'HCG RAPID PREGNANCY TEST STRIP', 0, 0, 0, 1),
(227, NULL, 'MALARIA PF STRIPS-COMMON BUFFER', 24, 999, 1.3333333333333, 1332, 1, '', '0.9', '10', '0.85', '15', 'MALARIA PF STRIPS-COMMON BUFFER', 0, 0, 0, 1),
(228, NULL, 'DISPOSABLE NEEDLES G21', 100, 120, 1.3333333333333, 160, 2, '', '0.9', '10', '0.85', '15', 'DISPOSABLE NEEDLES G21', 0, 0, 0, 1),
(229, NULL, 'OSTEOCARE ORIGINAL', 30, 600, 1.3333333333333, 800, 3, '', '0.9', '10', '0.85', '15', 'OSTEOCARE ORIGINAL', 0, 0, 0, 1),
(230, NULL, 'METHYLATED SPIRIT 500ML', 1, 70, 1.3285714285714, 93, 5, '', '0.9', '10', '0.85', '15', 'METHYLATED SPIRIT 500ML', 0, 0, 0, 1),
(231, NULL, 'SURGICAL SPIRIT 500ML', 5, 99, 1.3333333333333, 132, 5, '', '0.9', '10', '0.85', '15', 'SURGICAL SPIRIT 500ML', 0, 0, 0, 1),
(232, NULL, 'GLUCOSE POWDER', 11, 158, 1.3354430379747, 211, 1, '', '0.9', '10', '0.85', '15', 'GLUCOSE POWDER', 0, 0, 0, 1),
(233, NULL, 'SALIMIA LINIMENT 50 M', 1, 71, 2.0704225352113, 147, 2, '', '0.9', '10', '0.85', '15', 'SALIMIA LINIMENT 50 M', 0, 0, 0, 1),
(234, NULL, 'COTTON WOOL 100GM', 1, 60, 1.3333333333333, 80, 5, '', '0.9', '10', '0.85', '15', 'COTTON WOOL 100GM', 0, 0, 0, 1),
(235, NULL, 'COTTON WOOL 200GM', 1, 93, 1.3333333333333, 124, 5, '', '0.9', '10', '0.85', '15', 'COTTON WOOL 200GM', 0, 0, 0, 1),
(236, NULL, 'NORMAL SALINE SOLUTION 500ML', 1, 63, 1.3333333333333, 84, 20, '', '0.9', '10', '0.85', '15', 'NORMAL SALINE SOLUTION 500ML', 0, 0, 0, 1),
(237, NULL, 'GENTIAN VIOLET', 1, 20, 1.35, 27, 5, '', '0.9', '10', '0.85', '15', 'GENTIAN VIOLET', 0, 0, 0, 1),
(238, NULL, 'WATER FOR INJECTION', 43, 6, 1.3333333333333, 8, 50, '', '0.9', '10', '0.85', '15', 'WATER FOR INJECTION', 0, 0, 0, 1),
(239, NULL, 'DEXTROSE 5% SOLUTION', 1, 63, 1.3333333333333, 84, 15, '', '0.9', '10', '0.85', '15', 'DEXTROSE 5% SOLUTION', 0, 0, 0, 1),
(240, NULL, 'PROBETA -N EYE/EAR DROPS', 0, 106, 1.3301886792453, 141, 5, '', '0.9', '10', '0.85', '15', 'PROBETA -N EYE/EAR DROPS', 0, 0, 0, 1),
(241, NULL, 'METHYLATED SPIRIT 70%', 1, 31, 1.3225806451613, 41, 5, '', '0.9', '10', '0.85', '15', 'METHYLATED SPIRIT 70%', 0, 0, 0, 1),
(242, NULL, 'SURGICAL BLADES S23', 199, 439, 1.3325740318907, 585, 1, '', '0.9', '10', '0.85', '15', 'SURGICAL BLADES S23', 0, 0, 0, 1),
(243, NULL, 'ORS 500ML', 1, 9, 1.3333333333333, 12, 30, '', '0.9', '10', '0.85', '15', 'ORS 500ML', 0, 0, 0, 1),
(244, NULL, 'GOOD MORNING LUNG TONIC', 10, 78, 1.3205128205128, 103, 15, '', '0.9', '10', '0.85', '15', 'GOOD MORNING LUNG TONIC', 0, 0, 0, 1),
(245, NULL, 'CADIPHEN EXPECTORANT', 1, 105, 1.3333333333333, 140, 3, '', '0.9', '10', '0.85', '15', 'CADIPHEN EXPECTORANT', 0, 0, 0, 1),
(246, NULL, 'CADISTIN EXPEXTORANT 100ML', 3, 105, 1.3333333333333, 140, 3, '', '0.9', '10', '0.85', '15', 'CADISTIN EXPEXTORANT 100ML', 0, 0, 0, 1),
(247, NULL, 'TRIMEX SYRUP - DIABETIC 100ML', 1, 179, 1.3351955307263, 239, 3, '', '0.9', '10', '0.85', '15', 'TRIMEX SYRUP - DIABETIC 100ML', 0, 0, 0, 1),
(248, NULL, 'MULTIVITAMIN SYRUP 60ML', 1, 18, 1.3333333333333, 24, 15, '', '0.9', '10', '0.85', '15', 'MULTIVITAMIN SYRUP 60ML', 0, 0, 0, 1),
(249, NULL, 'SCOTTS EMULSION REGULAR 100ML', 2, 393, 1.3333333333333, 524, 2, '', '0.9', '10', '0.85', '15', 'SCOTTS EMULSION REGULAR 100ML', 0, 0, 0, 1),
(250, NULL, 'PEPSOL CAPS', 28, 990, 1.3333333333333, 1320, 2, '', '0.9', '10', '0.85', '15', 'PEPSOL CAPS', 0, 0, 0, 1),
(251, NULL, 'KYL LUBRICATING GEL', 1, 200, 1.335, 267, 3, '', '0.9', '10', '0.85', '15', 'KYL LUBRICATING GEL', 0, 0, 0, 1),
(252, NULL, 'PREGNACARE PLUS', 28, 1719, 1.3327515997673, 2291, 3, '', '0.9', '10', '0.85', '15', 'PREGNACARE PLUS', 0, 0, 0, 1),
(253, NULL, 'OTOREX EAR DROPS', 1, 260, 1.3346153846154, 347, 3, '', '0.9', '10', '0.85', '15', 'OTOREX EAR DROPS', 0, 0, 0, 1),
(254, NULL, 'ALCOHOL SWABS STERILE', 97, 139, 1.3309352517986, 185, 2, '', '0.9', '10', '0.85', '15', 'ALCOHOL SWABS STERILE', 0, 0, 0, 1),
(255, 'BENZYL PEROXIDE', 'PERNEX A.C 5% 20GM', 1, 417, 1.3333333333333, 556, 2, '', '0.9', '10', '0.85', '15', 'PERNEX A.C 5% 20GM', 0, 0, 0, 1),
(256, 'test gen', '8621', 1000, 100, 1.5, 150, 1000, '02-2026', '0.9', '10', '0.85', '15', 'test brand', 3, 0, 0, 1),
(257, 'ENEMA', '', 2, 186, 1.6129032258065, 300, 2, '02-2026', '0.9', '10', '0.85', '15', 'KLEEN ENEMA SOL 135ML', 0, 0, 0, 1),
(258, 'DICLOFENAC/PCM/CXZ', '', 100, 675, 1.3333333333333, 900, 100, '02-2026', '0.9', '10', '0.85', '15', 'LOBAK', 5, 0, 0, 1),
(260, 'CADITIN EXPECTORANT', '', 3, 105, 1.4285714285714, 150, 3, '02-2026', '0.9', '10', '0.85', '15', 'CADITIN EXPECTORANT', 1, 0, 0, 1),
(261, 'GOOD MORNING LUNG TONIC 60ML', '', 10, 78, 1.5384615384615, 120, 10, '02-2026', '0.9', '10', '0.85', '15', 'LUNG TONIC', 2, 0, 0, 1),
(262, 'ARTOVASTATIN 20MG', '8646', 150, 3, 3.3333333333333, 10, 150, '02-2026', '0.9', '10', '0.85', '15', 'ATRONA', 30, 0, 0, 1),
(263, 'F-TAB ', '', 250, 149, 3.3557046979866, 500, 200, '02-2026', '0.9', '10', '0.85', '15', 'THEOPHYLLINE/EPHEDRINE', 30, 0, 0, 1),
(264, 'DICLOFENAC RUB', 'FASTUM GELL 20G', 2, 400, 1.325, 530, 2, '02-2026', '0.9', '10', '0.85', '15', 'FASTUM GELL 20G', 2, 0, 0, 1),
(265, 'DICLOFENAC GELL', '20', 2, 400, 1.325, 530, 2, '02-2026', '0.9', '10', '0.85', '15', 'FASTUM GELL 20G', 1, 0, 0, 1),
(266, 'MONTELUKAST 4MG TABS', '65', 30, 13, 1.5384615384615, 20, 30, '02-2026', '0.9', '10', '0.85', '15', 'MONTICALST 4MG TABS', 5, 0, 0, 1),
(267, 'LORHISTINA 10MG TABS 30\'S', '6', 50, 180, 1.3888888888889, 250, 60, '02-2026', '0.9', '10', '0.85', '15', 'LORATIDINE', 10, 0, 0, 1),
(268, 'METCOS INJECTION', '142', 10, 15, 2, 30, 10, '02-2026', '0.9', '10', '0.85', '15', 'METOCLOPRAMIDE', 2, 0, 0, 1),
(269, 'MIXTARD VIALS 10ML', '143', 12, 679, 1.39911634757, 950, 12, '02-2026', '0.9', '10', '0.85', '15', 'SOLUBLE INSULIN', 2, 0, 0, 1),
(270, 'PHENYTOIN 100MG TABD', 'PHENYTOIN TABS', 100, 2, 2.5, 5, 100, '02-2026', '0.9', '10', '0.85', '15', 'PHENYTOIN TABS', 10, 0, 0, 1),
(271, 'AMTEL 40/5', '80', 1, 2300, 1.3695652173913, 3150, 1, '02-2026', '0.9', '10', '0.85', '15', 'AMLODIPINE/TELMISARTAN', 1, 0, 0, 1),
(272, 'KLEEN ENEMA', '72', 2, 186, 1.3440860215054, 250, 2, '02-2026', '0.9', '10', '0.85', '15', 'KLEEN ENEMA SOL 135ML', 1, 0, 0, 1),
(273, 'LOBAK', '16', 100, 675, 1.7777777777778, 1200, 100, '02-2026', '0.9', '10', '0.85', '15', 'DICLOFENAC/CZX/PCM', 20, 0, 0, 1),
(274, 'TREVIAMET 50/500 35S', '433', 70, 62, 1.3709677419355, 85, 70, '02-2026', '0.9', '10', '0.85', '15', 'SITAGLIPTIN/METFORMIN', 35, 0, 0, 1),
(275, 'ATRONA 20MG 30\'S', '227', 30, 3, 1.6666666666667, 5, 30, '02-2026', '0.9', '10', '0.85', '15', 'ATORVASTATIN', 5, 0, 0, 1),
(276, 'FASTUM GEL', '7', 2, 149, 1.6778523489933, 250, 2, '02-2026', '0.9', '10', '0.85', '15', 'KETOPROFEN', 1, 0, 0, 1),
(277, 'MONTIKALST 4MG TABS 10S', '212', 30, 12, 1.6666666666667, 20, 30, '02-2026', '0.9', '10', '0.85', '15', 'MONTELUKAST', 10, 0, 0, 1),
(278, 'LAMIKOT 250MG TABLETS 30S', '5', 30, 22, 1.5909090909091, 35, 30, '02-2026', '0.9', '10', '0.85', '15', 'TERBINAFINE', 5, 0, 0, 1),
(279, 'GLUCOTIM 0.5% EYE DROPS 5ML', '422', 5, 90, 1.6666666666667, 150, 5, '02-2026', '0.9', '10', '0.85', '15', 'TIMOLOL', 2, 0, 0, 1),
(280, 'L-MONTUS', '6', 29, 43, 1.3953488372093, 60, 29, '02-2026', '0.9', '10', '0.85', '15', 'LEOCETRIZINE/MONTELUKAST', 5, 0, 0, 1),
(281, 'SABULIN TABS 100\'S', '9', 100, 4, 1.25, 5, 100, '02-2026', '0.9', '10', '0.85', '15', 'SALBUTAMOL TABS', 5, 0, 0, 1),
(282, 'ASCORBIC ACID (DAWA)', '35', 100, 1, 5, 5, 100, '02-2026', '0.9', '10', '0.85', '15', 'ASCORBIC ACID ', 10, 0, 0, 1),
(283, 'LOZENGES', '76', 72, 7, 1.4285714285714, 10, 72, '02-2026', '0.9', '10', '0.85', '15', 'FRICKS HERBAL LOZENGES', 6, 0, 0, 1),
(284, 'IFAS TABS 100S', '210', 100, 1, 5, 5, 100, '02-2026', '0.9', '10', '0.85', '15', 'FERROLIC LF', 30, 0, 0, 1),
(285, 'PREGAB-75MG CAPS 10s', '820', 20, 7, 2.1428571428571, 15, 20, '02-2026', '0.9', '10', '0.85', '15', 'PREGABALIN', 5, 0, 0, 1),
(286, 'PREGAB-75MG CAPS 30s', '372', 90, 7, 2.1428571428571, 15, 90, '02-2026', '0.9', '10', '0.85', '15', 'PREGABALIN', 10, 0, 0, 1),
(287, 'LIQUID PARAFFIN 50ML', '', 3, 30, 1.6666666666667, 50, 3, '02-2026', '0.9', '10', '0.85', '15', 'LIQUID PARAFFIN ', 1, 0, 0, 1),
(288, 'CREPE BANDAGE 4\'', '', 1, 33, 1.5151515151515, 50, 1, '02-2026', '0.9', '10', '0.85', '15', 'CREPE BANDAGE 6\'x4.5M', 1, 0, 0, 1),
(289, 'MATERNITY PADS REGULAR 10\'S GOLD', '', 3, 115, 1.7391304347826, 200, 3, '02-2026', '0.9', '10', '0.85', '15', 'MATERNITY PADS', 1, 0, 0, 1),
(290, 'DICLOFENAC 75MG/3ML INJECTION 3ML', '7', 20, 6, 8.3333333333333, 50, 20, '02-2026', '0.9', '10', '0.85', '15', 'DICLOFENAC INJECTION', 5, 0, 0, 1),
(291, 'ACNESTAR CREAM', '', 8, 90, 2.2222222222222, 200, 3, '02-2026', '0.9', '10', '0.85', '15', 'TRETINOIN', 1, 0, 0, 1),
(292, 'EVAC SOLUTION 100ML', '', 5, 200, 1.5, 300, 5, '02-2026', '0.9', '10', '0.85', '15', 'LACTULOSE', 2, 0, 0, 1),
(293, 'LUNAHIST SYRUP 60ML', '', 4, 40, 1.5, 60, 5, '02-2026', '0.9', '10', '0.85', '15', 'CHLORPHENIRAMINE', 1, 0, 0, 1),
(294, 'BONNISAN LIQUID 120ML', '', 1, 390, 1.4102564102564, 550, 2, '02-2026', '0.9', '10', '0.85', '15', 'BONNISAAN LIQUID', 1, 0, 0, 1),
(295, 'NUTRIVITA SYRUP 100ML', '', 2, 130, 1.9230769230769, 250, 2, '02-2026', '0.9', '10', '0.85', '15', 'NUTRIVITA SYRUP', 1, 0, 0, 1),
(296, 'BECLOMIN OINTMENT 15 GM', '', 6, 166, 1.5060240963855, 250, 6, '02-2026', '0.9', '10', '0.85', '15', 'BETAMETHASONE', 1, 0, 0, 1),
(297, 'CARDITAN 50MG TABLETS 28S', '21', 36, 7, 1.4285714285714, 10, 36, '02-2026', '0.9', '10', '0.85', '15', 'LOSARTAN', 10, 0, 0, 1),
(298, 'CARDITAN H TABS 28s', '21', 280, 9, 1.6666666666667, 15, 280, '02-2026', '0.9', '10', '0.85', '15', 'LOSARTAN/HCTZ', 10, 0, 0, 1),
(299, 'CELEMAC TABS 30S', '6', 150, 7, 2.1428571428571, 15, 150, '02-2026', '0.9', '10', '0.85', '15', 'CELESTAMINE', 10, 0, 0, 1),
(300, 'CLINDAMICIN 300MG', '', 100, 14, 1.4285714285714, 20, 100, '02-2026', '0.9', '10', '0.85', '15', 'CLINDAMYCIN 300MG', 10, 0, 0, 1),
(301, 'NOGLUC 5MG', '', 140, 5, 2, 10, 140, '02-2026', '0.9', '10', '0.85', '15', 'GLIBENCLAMIDE', 28, 0, 0, 1),
(302, 'CENTUAR NEURO FORTE TABS 20\'S', '35', 40, 13, 1.5384615384615, 20, 40, '02-2026', '0.9', '10', '0.85', '15', 'NEURO FORTE TABLETS', 20, 0, 0, 1),
(303, 'VENTOLIN INHALER 200DS', '', 5, 660, 1.3636363636364, 900, 5, '02-2026', '0.9', '10', '0.85', '15', 'SALBUTAMOL INHALER', 2, 0, 0, 1),
(304, 'AEROCORT INHALER 200D', '236', 5, 1190, 1.3445378151261, 1600, 5, '02-2026', '0.9', '10', '0.85', '15', 'BECLOMETHASONE/LEVOSALBUTAMOL', 1, 0, 0, 1),
(305, 'PRICKERS', '', 90, 1, 5, 5, 90, '02-2026', '0.9', '10', '0.85', '15', 'BLOOD LANCETS', 10, 0, 0, 1),
(306, 'BRAIPORIN 500MG TABS 10\'S ', '', 4, 20, 1.4, 28, 20, '02-2026', '0.9', '10', '0.85', '15', 'SODIUM VALPROATE', 10, 0, 0, 1),
(307, 'NASAL DROPS', '', 3, 550, 1.3636363636364, 750, 3, '02-2026', '0.9', '10', '0.85', '15', 'ORTIVINE 0.05% PEAD NASAL DROPS', 1, 0, 0, 1),
(308, 'vit b6,b9,b12', 'NEUROCARE', 89, 53, 1.3207547169811, 70, 84, '02-2026', '0.9', '10', '0.85', '15', 'NEUROCARE CAPS', 10, 0, 0, 1),
(309, 'GRABACIN POWDER 10GM', '', 5, 110, 1.3636363636364, 150, 5, '02-2026', '0.9', '10', '0.85', '15', 'GRABACIN ', 1, 0, 0, 1),
(310, 'MINIMUM 10 INJ', '7', 10, 5, 3, 15, 10, '02-2026', '0.9', '10', '0.85', '15', 'DICLOFENAC INJECTION', 5, 0, 0, 1),
(311, 'ENO LEMON 48\'S', '217', 48, 15, 1.3333333333333, 20, 48, '02-2026', '0.9', '10', '0.85', '15', 'ENO SATCHETS', 10, 0, 0, 1),
(312, 'LITTLES GRIPE WATER 100ML', '', 3, 36, 1.3888888888889, 50, 3, '02-2026', '0.9', '10', '0.85', '15', 'GRIPE WATER', 1, 0, 0, 1),
(313, 'BULKOT MIXI', '', 5, 112, 1.3392857142857, 150, 5, '02-2026', '0.9', '10', '0.85', '15', 'BECLOMETHASONE/NEOMYCIN/CLOTRIMAZOLE', 2, 0, 0, 1),
(314, 'ASTYMIN SYRUP 200ML', '35', 3, 440, 1.3636363636364, 600, 3, '02-2026', '0.9', '10', '0.85', '15', 'ASTYMIN ', 1, 0, 0, 1),
(315, 'CALAMINE LOTION', '', 3, 36, 1.3888888888889, 50, 3, '02-2026', '0.9', '10', '0.85', '15', 'CALAMINE LOTION', 1, 0, 0, 1),
(316, 'GLUCOMET 500MG', '888', 84, 4, 1.25, 5, 84, '02-2026', '0.9', '10', '0.85', '15', 'METFORMIN', 28, 0, 0, 1),
(317, 'BETAMETHASONE/GENTA/CLOTRIMAZOLE', '', 4, 127, 1.5748031496063, 200, 4, '02-2026', '0.9', '10', '0.85', '15', 'XTRADERM', 1, 0, 0, 1),
(318, 'SECNIDA FORTE TABS 2S', '', 10, 29, 1.7241379310345, 50, 10, '02-2026', '0.9', '10', '0.85', '15', 'SECNIDAZOLE ', 5, 0, 0, 1),
(319, 'NITROFURANTOIN 100MG TABS 100\'S', '', 100, 2, 5, 10, 100, '02-2026', '0.9', '10', '0.85', '15', 'NITROFURANTOIN', 10, 0, 0, 1),
(320, 'LACTULOSE', '', 10, 200, 1.375, 275, 10, '02-2026', '0.9', '10', '0.85', '15', 'LACTULOSE', 2, 0, 0, 1),
(321, 'CHLOPHEMED INJ 10MG/ML', '', 10, 8, 1.875, 15, 10, '02-2026', '0.9', '10', '0.85', '15', 'CHLORPHENIRAMINE', 2, 0, 0, 1),
(322, 'ABNAL 10ML', '', 2, 27, 1.8518518518519, 50, 2, '02-2026', '0.9', '10', '0.85', '15', 'NORMAL SALINE NADAL DROPS', 1, 0, 0, 1),
(323, 'DOLOACT', '7', 80, 18, 1.3888888888889, 25, 80, '02-2026', '0.9', '10', '0.85', '15', 'DICLOFENAC/CZX/PCM', 25, 0, 0, 1),
(324, 'XTRASAFE TEST STRIPS 25\'S', '', 17, 80, 3.125, 250, 17, '02-2026', '0.9', '10', '0.85', '15', 'HIV TEST STRIPS', 5, 0, 0, 1),
(325, 'EMANZEN FORTE TABS 30\'S', '16', 90, 9, 1.6666666666667, 15, 90, '03-2026', '0.9', '10', '0.85', '15', 'SERROTIPEPTIDASE', 30, 0, 0, 1),
(326, 'ACECLOFENAC', '7', 50, 29, 1.3793103448276, 40, 50, '03-2026', '0.9', '10', '0.85', '15', 'ZULU', 10, 0, 0, 1),
(327, 'ZULU MR', '7', 58, 35, 1.4285714285714, 50, 58, '03-2026', '0.9', '10', '0.85', '15', 'ACECLOFENAC/CXZ/PCM', 10, 0, 0, 1),
(328, 'ZULU SP', '7', 40, 35, 1.3428571428571, 47, 40, '03-2026', '0.9', '10', '0.85', '15', 'ACECLOFENA/SERROTIPEPTIDASE', 10, 0, 0, 1),
(329, 'ZUPRICIN OINTMENT 15 GM', '96', 3, 500, 1.4, 700, 3, '03-2026', '0.9', '10', '0.85', '15', 'MUPIROCIN OINTMENT', 1, 0, 0, 1),
(330, 'TAMSULOSIN O.4MG', '115', 10, 56, 1.3392857142857, 75, 10, '03-2026', '0.9', '10', '0.85', '15', 'PROSTAFLO - OD', 10, 0, 0, 1),
(331, 'OJEN-OZ', '56', 30, 27, 1.3333333333333, 36, 30, '03-2026', '0.9', '10', '0.85', '15', 'OFLOXACIN/ORNIDAZOLE', 10, 0, 0, 1),
(332, 'ETEROCOXIB OINTMENT 30GMS', '7', 2, 500, 1.33, 665, 2, '03-2026', '0.9', '10', '0.85', '15', 'ETFLAM GEL', 1, 0, 0, 1),
(333, 'VITAMIN B6', '35', 100, 2, 2.5, 5, 100, '03-2026', '0.9', '10', '0.85', '15', 'PYRIDOXINE 50MG ', 10, 0, 0, 1),
(334, 'CELECOXIB 200, PCM 325, CXZ 250MG', '7', 20, 86, 1.3372093023256, 115, 20, '03-2026', '0.9', '10', '0.85', '15', 'BEECOX MR', 10, 0, 0, 1),
(335, 'CYPRO B PLUS TABS 30\'S', '6', 90, 13, 1.5384615384615, 20, 90, '03-2026', '0.9', '10', '0.85', '15', 'CYPROHEPATIDINE ', 10, 0, 0, 1),
(336, 'MALODAR', '73', 5, 37, 1.3513513513514, 50, 5, '03-2026', '0.9', '10', '0.85', '15', 'PYRIMETHAMINE/SULFADOXINE', 2, 0, 0, 1),
(337, 'FLATAMEAL DS TABS 10\'S', '90', 50, 7, 1.4285714285714, 10, 50, '03-2026', '0.9', '10', '0.85', '15', 'ANTIACID', 20, 0, 0, 1),
(338, 'FLAGYL INJ 100ML', '64', 10, 35, 1.4285714285714, 50, 10, '03-2026', '0.9', '10', '0.85', '15', 'METRONIDAZOLE', 2, 0, 0, 1),
(339, 'BISPANOL 100\'S', '', 195, 3, 3.3333333333333, 10, 195, '03-2026', '0.9', '10', '0.85', '15', 'HYOSCINE TABS', 25, 0, 0, 1),
(340, 'TETMOSOL SOAP', '', 3, 188, 1.3563829787234, 255, 3, '03-2026', '0.9', '10', '0.85', '15', 'TETMOSOL SOAP', 1, 0, 0, 1),
(341, 'BETASONE S OINTMENT 15GM', '', 3, 90, 1.3333333333333, 120, 3, '03-2026', '0.9', '10', '0.85', '15', 'BETAMETHASONE/SALISYLIC ACID', 1, 0, 0, 1),
(342, 'WHITEFIELD SKIN OINTMENT', '182', 3, 23, 3.2608695652174, 75, 3, '03-2026', '0.9', '10', '0.85', '15', 'BENZOIC/SALYCILIC ACID', 1, 0, 0, 1),
(343, 'DENTOGEL 10GM', '364', 3, 188, 1.3563829787234, 255, 3, '03-2026', '0.9', '10', '0.85', '15', 'CHOLINE SALICYLATE, BENZALKONIUM, LIDOCAINE', 1, 0, 0, 1),
(344, 'EMAMI MENTHO-PLUS BALM 9GM', '7', 12, 42, 1.4285714285714, 60, 12, '03-2026', '0.9', '10', '0.85', '15', 'MENTHOL', 5, 0, 0, 1),
(345, 'BETADINE ANTISEPTIC SOLUTION 125 ML', '368', 3, 365, 1.3698630136986, 500, 3, '03-2026', '0.9', '10', '0.85', '15', 'IODINE', 1, 0, 0, 1),
(346, 'CREPE BANDAGEE 6\'', '115', 4, 35, 1.4285714285714, 50, 4, '03-2026', '0.9', '10', '0.85', '15', 'CREPE BANDAGE 6\'x4.5M', 1, 0, 0, 1),
(347, 'DAKTARIN GEL 40G', '368', 1, 1270, 1.3385826771654, 1700, 1, '03-2026', '0.9', '10', '0.85', '15', 'MICONAZOLE GEL', 1, 0, 0, 1),
(348, 'AMITRIPTYLLINE 25MG COSMOS (DDA)', '424', 100, 2, 5, 10, 100, '03-2026', '0.9', '10', '0.85', '15', 'AMITRIPTYLLINE', 10, 0, 0, 1),
(349, 'POWDERED GLOVES M 100\'S', '235', 350, 350, 1.4285714285714, 500, 350, '03-2026', '0.9', '10', '0.85', '15', 'GLOVES', 100, 0, 0, 1),
(350, 'AMOXYCLAV 1.2G INJECTION', '135', 3, 195, 1.4102564102564, 275, 3, '03-2026', '0.9', '10', '0.85', '15', 'AMOXICILLIN/CLAVULANIC', 1, 0, 0, 1),
(351, 'EROVITA BLOOD', '251', 70, 80, 1.875, 150, 70, '03-2026', '0.9', '10', '0.85', '15', 'HIV SELF TEST KIT', 10, 0, 0, 1),
(352, 'CRIPTON TABS 2.5MG 30\'S', '328', 30, 42, 1.3333333333333, 56, 30, '03-2026', '0.9', '10', '0.85', '15', 'BRIMOCRIPTINE 2.5MG', 10, 0, 0, 1),
(353, 'CREPE BANDAGE 3\'', '72', 3, 27, 1.4814814814815, 40, 3, '03-2026', '0.9', '10', '0.85', '15', 'CREPE BANDAGE 3\'', 1, 0, 0, 1),
(354, 'FRANOL TABS', '50', 100, 2, 2.5, 5, 100, '03-2026', '0.9', '10', '0.85', '15', 'THEPHYLLINE/EPHEDRINE', 10, 0, 0, 1),
(355, 'DICLOFENAC 75MG/3ML INJECTION 3ML', '7', 30, 6, 2.5, 15, 30, '03-2026', '0.9', '10', '0.85', '15', 'DICLOFENAC INJECTION', 10, 0, 0, 1),
(356, 'EFFERVESCENT PARACETMOL 1000MG', '2755', 15, 38, 1.3421052631579, 51, 15, '03-2026', '0.9', '10', '0.85', '15', 'CIPLADON 1 G', 8, 0, 0, 1),
(377, 'test product2', 'mat', 3, 20, 1.5, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 10, 0, 0, 21),
(378, 'test product2', 'mat', 3, 20, 2.5, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 30, 0, 0, 4),
(379, 'test product2', 'mat', 3, 2, 1.5, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, 4),
(380, 'test product2', 'mat', 3, 20, 1.5, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, 18);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `reason` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `product_id`, `reason`) VALUES
(4, 2, 'test'),
(5, 3, 'Short Expiry'),
(6, 1, 'short expiry');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `transaction_id` int(10) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` int(10) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` decimal(20,0) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `batch` varchar(20) NOT NULL,
  `exp_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`transaction_id`, `invoice`, `product`, `qty`, `price`, `date`, `batch`, `exp_date`) VALUES
(56, '39186506314595', 1, 50, 600, '2024-06-07', 'zf2023', '2027-03-07'),
(57, '39186506314595', 3, 60, 500, '2024-06-07', 'zf2023', '2027-06-07'),
(58, '39186506314595', 7, 50, 600, '2024-06-07', 'sddf4546', '2026-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(10) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases2`
--

CREATE TABLE `purchases2` (
  `transaction_id` int(10) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoicesupp` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `cashier` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `price`, `date`, `cashier`) VALUES
(1, '1245877', '1', '10', '2000', '200', '2024-04-14', 'admin'),
(2, '00792220', '1', '10', '2000', '200', '2024-04-28', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` int(10) NOT NULL,
  `employee` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `amount` varchar(11) NOT NULL,
  `paidby` varchar(30) NOT NULL,
  `rmks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(10) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `cashtendered` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `balance` varchar(100) NOT NULL DEFAULT '0',
  `paid` varchar(3) NOT NULL,
  `customer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `cashtendered`, `name`, `balance`, `paid`, `customer`) VALUES
(1, 'INV-3053323', 'Esha', '2024-02-22', 'cash', '200', '143', '0', '', '', '0', ''),
(2, 'INV-4303557', 'clifford', '2024-02-22', 'cash', '50', '-442', '0', '', '', '0', ''),
(3, 'INV-03334233', 'clifford', '2024-02-22', 'cash', '120', '63', '0', '', '', '0', ''),
(4, 'INV-30223732', 'Esha', '2024-02-22', 'cash', '10', '6', '0', '', '', '0', ''),
(5, 'INV-5338296', 'clifford', '2024-02-22', 'cash', '120', '82', '0', '', '', '0', ''),
(6, 'INV-23239', 'clifford', '2024-02-22', 'cash', '350', '201', '0', '', '', '0', ''),
(7, 'INV-240322', 'Esha', '2024-02-24', 'cash', '20', '12', '0', NULL, '0', '0', NULL),
(8, 'INV-2328823', 'Esha', '2024-02-24', 'cash', '112', '32', '0', NULL, '0', '0', NULL),
(9, 'INV-222033', 'Esha', '2024-02-24', 'cash', '', '', '0', NULL, '0', '0', NULL),
(10, 'INV-0933383', 'Esha', '2024-02-25', 'cash', '50', '-249', '0', NULL, '0', '0', NULL),
(11, 'INV-92032240', 'Esha', '2024-02-25', 'cash', '60', '-1140', '0', NULL, '0', '0', NULL),
(12, 'INV-3303', 'Esha', '2024-02-24', 'cash', '200', '-1650', '0', NULL, '0', '0', NULL),
(13, 'INV-3303', 'Esha', '2024-02-24', 'cash', '200', '-1650', '0', NULL, '0', '0', NULL),
(14, 'INV-23232232', 'Esha', '2024-02-24', 'cash', '100', '-570', '0', NULL, '0', '0', NULL),
(15, 'INV-883322', 'Esha', '2024-02-24', 'cash', '20', '-1210', '0', NULL, '0', '0', NULL),
(16, 'INV-202322', 'Esha', '2024-02-24', 'cash', '110', '-889', '0', NULL, '0', '0', NULL),
(17, 'INV-2233243', 'Esha', '2024-02-24', 'cash', '60', '20', '0', NULL, '0', '0', NULL),
(18, 'INV-0423823', 'Esha', '2024-02-24', 'cash', '150', '44', '0', NULL, '0', '0', NULL),
(19, 'INV-7002333', 'Esha', '2024-02-24', 'cash', '100', '-1700', '0', NULL, '0', '0', NULL),
(20, 'INV-92323773', 'Esha', '2024-02-24', 'cash', '', '', '0', NULL, '0', '0', NULL),
(21, 'INV-22829', 'Esha', '2024-02-24', 'cash', '168', '48', '0', NULL, '0', '0', NULL),
(22, 'INV-82063020', 'clifford', '2024-02-27', 'cash', '410', '-1269', '0', NULL, '0', '0', NULL),
(23, 'INV-8222332', 'Esha', '2024-03-01', 'cash', '20', '-138', '0', NULL, '0', '0', NULL),
(24, 'INV-35232730', 'Esha', '2024-03-01', 'cash', '20', '0', '0', NULL, '0', '0', NULL),
(25, 'INV-32083', 'Esha', '2024-03-01', 'cash', '140', '34.9965', '0', NULL, '0', '0', NULL),
(26, 'INV-306223', 'clifford', '2024-03-05', 'cash', '100', '55', '0', NULL, '0', '0', NULL),
(27, 'INV-342393', 'Esha', '2024-03-05', 'cash', '500', '301', '0', NULL, '0', '0', NULL),
(28, 'INV-2033052', 'Esha', '2024-03-06', 'cash', '100', '82', '0', NULL, '0', '0', NULL),
(29, 'INV-362298', 'Esha', '2024-03-06', 'cash', '50', '-20', '0', NULL, '0', '0', NULL),
(30, 'INV-3224', 'Esha', '2024-03-07', 'cash', '943', '-1157', '0', NULL, '0', '0', NULL),
(31, 'INV-373330', 'clifford', '2024-03-07', 'cash', '650', '-162', '0', NULL, '0', '0', NULL),
(32, 'INV-33033', 'clifford', '2024-03-07', 'cash', '100', '-1600', '0', NULL, '0', '0', NULL),
(33, 'INV-3620253', 'clifford', '2024-03-07', 'cash', '150', '52', '0', NULL, '0', '0', NULL),
(34, 'INV-2334022', 'Esha', '2024-03-07', 'cash', '30', '-245', '0', NULL, '0', '0', NULL),
(35, 'INV-322562', 'Esha', '2024-03-07', 'cash', '50', '-249', '0', NULL, '0', '0', NULL),
(36, 'INV-25228', 'Esha', '2024-03-07', 'cash', '50', '27', '0', NULL, '0', '0', NULL),
(37, '40021472', 'admin', '2024-03-17', 'cash', '20', '10', '0', NULL, '0', '0', NULL),
(38, '45794714', 'admin', '2024-03-20', 'cash', '20', '10', '0', NULL, '0', '0', NULL),
(39, '76882180', 'admin', '2024-03-29', 'cash', '152', '102', '0', 'john doe', '0', '0', NULL),
(40, '76882180', 'admin', '2024-03-29', 'cash', '152', '102', '0', 'john doe', '0', '0', NULL),
(41, '17761127', 'mathu', '2024-08-03', 'cash', '210', '153', '0', NULL, '0', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(10) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `profit` varchar(100) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `batch` varchar(20) NOT NULL,
  `balance` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `price`, `discount`, `date`, `batch`, `balance`) VALUES
(1, 'INV-052272', '1', '', '', '', '', '', '2024-02-20', 'entry_batch_1', '49'),
(2, 'INV-052272', '1', '10', '200', '100', '20', '0', '2024-02-20', 'entry_batch_1', '19'),
(3, 'INV-0333233', '95', '5', '1219.695', '304.695', '243.939', '0', '2024-02-20', 'entry_batch_1', '5'),
(4, 'INV-9230', '95', '', '', '', '', '', '2024-02-20', 'entry_batch_1', '5'),
(5, 'INV-5442225', '95', '1', '243.939', '60.939', '243.939', '0', '2024-02-20', 'entry_batch_1', '-1'),
(6, 'INV-3338293', '96', '1', '159.96', '39.96', '159.96', '0', '2024-02-21', 'entry_batch_1', '9'),
(7, 'INV-3300', '1', '', '', '', '', '', '2024-02-21', 'entry_batch_1', '19'),
(8, 'INV-3300', '1', '', '', '', '', '', '2024-02-21', 'entry_batch_1', '18'),
(9, 'INV-3053323', '60', '1', '50', '32', '50', '0', '2024-02-22', 'entry_batch_1', '0'),
(10, 'INV-3053323', '36', '1', '150', '111', '150', '0', '2024-02-22', 'entry_batch_1', '0'),
(11, 'INV-333233', '61', '10', '50', '30', '5', '0', '2024-02-22', 'entry_batch_1', '955'),
(12, 'INV-4303557', '79', '', '', '', '', '', '2024-02-22', 'entry_batch_1', '24'),
(13, 'INV-03334233', '37', '1', '120', '63', '120', '0', '2024-02-22', 'entry_batch_1', '2'),
(14, 'INV-30223732', '61', '2', '10', '6', '5', '0', '2024-02-22', 'entry_batch_1', '953'),
(15, 'INV-5338296', '12', '1', '100', '70', '100', '0', '2024-02-22', 'entry_batch_1', '0'),
(16, 'INV-5338296', '61', '', '', '', '', '', '2024-02-22', 'entry_batch_1', '956'),
(17, 'INV-5338296', '61', '4', '20', '12', '5', '0', '2024-02-22', 'entry_batch_1', '-4'),
(18, 'INV-32620562', '20', '1', '100', '50', '100', '0', '2024-02-22', 'entry_batch_1', '0'),
(19, 'INV-23239', '91', '1', '350', '201', '350', '0', '2024-02-22', 'entry_batch_1', '0'),
(20, 'INV-22322', '61', '4', '20', '12', '5', '0', '2024-02-23', 'entry_batch_1', '-4'),
(21, 'INV-52392020', '165', '10', '50', '30', '5', '0', '2024-02-23', 'entry_batch_1', '90'),
(22, 'INV-3352027', '20', '1', '100', '50', '100', '0', '2024-02-23', 'entry_batch_1', '524'),
(23, 'INV-2399', '20', '1', '100', '50', '100', '0', '2024-02-23', 'entry_batch_1', '523'),
(24, 'INV-2399', '61', '4', '20', '12', '5', '0', '2024-02-23', 'entry_batch_1', '-4'),
(25, 'INV-2399', '165', '10', '50', '30', '5', '0', '2024-02-23', 'entry_batch_1', '80'),
(26, 'INV-20802', '153', '1', '50', '40', '50', '0', '2024-02-23', 'entry_batch_1', '5'),
(27, 'INV-33230222', '61', '4', '20', '12', '5', '0', '2024-02-24', 'entry_batch_1', '-4'),
(28, 'INV-33230222', '153', '1', '50', '40', '50', '0', '2024-02-24', 'entry_batch_1', '4'),
(29, 'INV-33230222', '165', '10', '50', '30', '5', '0', '2024-02-24', 'entry_batch_1', '70'),
(30, 'INV-33230222', '20', '1', '100', '50', '100', '0', '2024-02-24', 'entry_batch_1', '522'),
(31, 'INV-240322', '61', '4', '20', '12', '5', '0', '2024-02-24', 'entry_batch_1', '-4'),
(32, 'INV-2328823', '306', '4', '112', '32', '28', '0', '2024-02-24', '433AHO4', '16'),
(33, 'INV-0933383', '226', '1', '50', '-249', '50', '0', '2024-02-25', 'entry_batch_1', '49'),
(34, 'INV-92032240', '221', '2', '60', '-1140', '30', '0', '2024-02-25', 'entry_batch_1', '78'),
(35, 'INV-3303', '64', '', '', '', '', '', '2024-02-24', 'entry_batch_1', '10'),
(36, 'INV-3303', '64', '10', '200', '-1650', '20', '0', '2024-02-24', 'entry_batch_1', '-10'),
(37, 'INV-23232232', '121', '5', '100', '-570', '20', '0', '2024-02-24', '230290', '14'),
(38, 'INV-883322', '190', '2', '20', '-1210', '10', '0', '2024-02-24', 'entry_batch_1', '98'),
(39, 'INV-202322', '227', '1', '110', '-889', '110', '0', '2024-02-24', 'entry_batch_1', '24'),
(40, 'INV-2233243', '293', '1', '60', '20', '60', '0', '2024-02-24', '84914', '4'),
(41, 'INV-0423823', '240', '1', '150', '44', '150', '0', '2024-02-24', 'entry_batch_1', '0'),
(42, 'INV-7002333', '267', '10', '100', '-1700', '10', '0', '2024-02-24', '231219', '50'),
(43, 'INV-22829', '61', '', '', '', '', '', '2024-02-24', 'BPL380A', '0'),
(44, 'INV-22829', '306', '6', '168', '48', '28', '0', '2024-02-24', '433AHO4', '10'),
(45, 'INV-82063020', '193', '1', '200', '85', '200', '0', '2024-02-27', 'entry_batch_1', NULL),
(46, 'INV-82063020', '80', '2', '150', '-1372', '75', '0', '2024-02-27', 'Z8EIW004', NULL),
(47, 'INV-82063020', '13', '1', '60', '18', '60', '0', '2024-02-27', 'entry_batch_1', NULL),
(48, 'INV-8222332', '232', '1', '20', '-138', '20', '0', '2024-03-01', 'entry_batch_1', NULL),
(49, 'INV-35232730', '', '1', '20', '0', '20', '0', '2024-03-01', '', NULL),
(50, 'INV-32083', '167', '1', '139.9965', '34.9965', '139.9965', '0', '2024-03-01', 'entry_batch_1', NULL),
(51, 'INV-306223', '209', '1', '100', '55', '100', '0', '2024-03-05', 'entry_batch_1', NULL),
(52, 'INV-342393', '100', '1', '500', '301', '500', '0', '2024-03-05', 'entry_batch_1', NULL),
(53, 'INV-2033052', '60', '1', '100', '82', '100', '0', '2024-03-06', 'entry_batch_1', NULL),
(54, 'INV-362298', '202', '10', '50', '-20', '5', '0', '2024-03-06', 'entry_batch_1', NULL),
(55, 'INV-3224', '59', '10', '100', '20', '10', '0', '2024-03-07', 'entry_batch_1', NULL),
(56, 'INV-3224', '114', '1', '5', '3', '5', '0', '2024-03-07', 'entry_batch_1', NULL),
(57, 'INV-3224', '171', '4', '20', '-496', '5', '0', '2024-03-07', 'entry_batch_1', NULL),
(58, 'INV-3224', '61', '10', '50', '30', '5', '0', '2024-03-07', 'entry_batch_1', NULL),
(59, 'INV-3224', '306', '6', '168', '48', '28', '0', '2024-03-07', 'entry_batch_1', NULL),
(60, 'INV-3224', '250', '1', '50', '-940', '50', '0', '2024-03-07', 'entry_batch_1', NULL),
(61, 'INV-3224', '72', '1', '550', '178', '550', '0', '2024-03-07', 'entry_batch_1', NULL),
(62, 'INV-373330', '294', '1', '600', '210', '600', '0', '2024-03-07', 'entry_batch_1', NULL),
(63, 'INV-373330', '201', '6', '30', '-384', '5', '0', '2024-03-07', 'entry_batch_1', NULL),
(64, 'INV-373330', '61', '4', '20', '12', '5', '0', '2024-03-07', 'entry_batch_1', NULL),
(65, 'INV-33033', '192', '20', '100', '-1600', '5', '0', '2024-03-07', 'entry_batch_1', NULL),
(66, 'INV-3620253', '185', '1', '50', '30', '50', '0', '2024-03-07', 'entry_batch_1', NULL),
(67, 'INV-3620253', '5', '2', '100', '22', '50', '0', '2024-03-07', 'entry_batch_1', NULL),
(68, 'INV-2334022', '183', '1', '30', '-245', '30', '0', '2024-03-07', 'entry_batch_1', NULL),
(69, 'INV-322562', '226', '1', '50', '-249', '50', '0', '2024-03-07', 'entry_batch_1', NULL),
(70, 'INV-25228', '81', '1', '50', '27', '50', '0', '2024-03-07', 'entry_batch_1', NULL),
(71, '40021472', '1', '1', '20', '10', '20', '0', '2024-03-17', 'entry_batch_1', NULL),
(72, '45794714', '1', '1', '20', '10', '20', '0', '2024-03-20', 'entry_batch_1', NULL),
(73, '76882180', '106', '10', '80', '70', '8', '0', '2024-03-29', 'entry_batch_1', '60'),
(75, '76882180', '1', '4', '72', '32', '18', '10', '2024-03-29', 'entry_batch_1', '80'),
(76, '26713220', '238', '1', '6', '0', '6', '', '2004-01-24', 'entry_batch_1', NULL),
(77, '26713220', '238', '2', '12', '-12', '6', '', '2004-01-24', 'entry_batch_1', NULL),
(78, '15012711', '1', '12', '240', '120', '20', '0', '2024-04-30', 'entry_batch_1', '168'),
(79, '39912794076228', '4', '1', NULL, NULL, '15', '0', '2024-05-22', 'entry_batch_1', NULL),
(80, '74593099925064', '7', '1', NULL, NULL, '449', '0', '2024-05-22', 'entry_batch_1', NULL),
(81, '67902122462173', '5', '1', NULL, NULL, '50', '0', '2024-05-22', 'entry_batch_1', NULL),
(82, '67902122462173', '4', '1', NULL, NULL, '15', '0', '2024-05-22', 'entry_batch_1', NULL),
(83, '67902122462173', '14', '1', NULL, NULL, '4549', '0', '2024-05-22', 'entry_batch_1', NULL),
(84, '27076030407813', '2', '2', NULL, NULL, '25', '0', '2024-05-23', 'entry_batch_1', NULL),
(85, '27076030407813', '2', '2', NULL, NULL, '25', '0', '2024-05-23', 'entry_batch_1', NULL),
(86, '27076030407813', '2', '2', NULL, NULL, '25', '0', '2024-05-23', 'entry_batch_1', NULL),
(87, '27076030407813', '1', '2', NULL, NULL, '20.0', '0', '2024-05-23', 'entry_batch_1', NULL),
(88, '27076030407813', '1', '2', NULL, NULL, '20.0', '0', '2024-05-23', 'entry_batch_1', NULL),
(89, '27076030407813', '1', '2', NULL, NULL, '20.0', '0', '2024-05-24', 'entry_batch_1', NULL),
(90, '27076030407813', '1', '2', NULL, NULL, '20.0', '0', '2024-05-24', 'entry_batch_1', NULL),
(91, '27076030407813', '1', '2', NULL, NULL, '20.0', '0', '2024-05-24', 'entry_batch_1', NULL),
(92, '75434819459706', '4', '2', NULL, NULL, '15', '0', '2024-05-24', 'entry_batch_1', NULL),
(93, '75434819459706', '2', '1', NULL, NULL, '25', '0', '2024-05-24', 'entry_batch_1', NULL),
(94, '75434819459706', '10', '1', NULL, NULL, '10.0', '0', '2024-05-24', 'entry_batch_1', NULL),
(95, '75434819459706', '9', '10', NULL, NULL, '15.0', '0', '2024-05-24', 'entry_batch_1', NULL),
(96, '30065820988314', '2', '1', NULL, NULL, '25', '0', '2024-05-24', 'entry_batch_1', NULL),
(97, 'None', '8', '1', NULL, NULL, '10.0', '0', '2024-05-24', 'entry_batch_1', NULL),
(98, '30065820988314', '3', '1', NULL, NULL, '450.0', '0', '2024-05-24', 'entry_batch_1', NULL),
(99, '68740028450442', '10', '12', NULL, NULL, '10.0', '0', '2024-05-24', 'entry_batch_1', NULL),
(100, 'None', '15', '2', NULL, NULL, '2549', '0', '2024-05-24', 'entry_batch_1', NULL),
(101, 'None', '15', '2', NULL, NULL, '2549', '0', '2024-05-24', 'entry_batch_1', NULL),
(106, '33855208966249', '21', '1', NULL, NULL, '750', '0', '2024-05-25', 'entry_batch_1', NULL),
(107, '33855208966249', '8', '10', NULL, NULL, '10.0', '0', '2024-05-25', 'entry_batch_1', NULL),
(108, '33855208966249', '38', '1', NULL, NULL, '299', '0', '2024-05-25', 'entry_batch_1', NULL),
(109, '33855208966249', '308', '1', NULL, NULL, '69', '0', '2024-05-25', 'entry_batch_1', NULL),
(110, '53851547135277', '4', '1', NULL, NULL, '15', '0', '2024-05-26', 'entry_batch_1', NULL),
(111, '53851547135277', '10', '15', NULL, NULL, '10', '0', '2024-05-26', 'entry_batch_1', NULL),
(112, '61804664839724', '1', '2', NULL, NULL, '20', '0', '2024-05-26', 'entry_batch_1', NULL),
(113, '35034182095854', '2', '1', NULL, NULL, '25', '0', '2024-05-26', 'entry_batch_1', NULL),
(114, '46739835660200', '9', '2', NULL, NULL, '15', '0', '2024-05-26', 'entry_batch_1', NULL),
(115, '30818133455562', '190', '2', NULL, NULL, '820', '0', '2024-05-26', 'entry_batch_1', NULL),
(116, '87343568233697', '20', '1', NULL, NULL, '100', '0', '2024-05-26', 'entry_batch_1', NULL),
(117, '66124537792935', '14', '2', NULL, NULL, '4550', '0', '2024-05-26', 'entry_batch_1', NULL),
(118, '44294758838182', '6', '1', NULL, NULL, '50', '0', '2024-05-26', 'entry_batch_1', NULL),
(119, '15773509961285', '4', '1', NULL, NULL, '15', '0', '2024-05-26', 'entry_batch_1', NULL),
(120, '41954850452506', '192', '10', NULL, NULL, '113', '0', '2024-05-26', 'entry_batch_1', NULL),
(121, '15282919776435', '58', '5', NULL, NULL, '450', '0', '2024-05-26', 'entry_batch_1', NULL),
(122, '37541396268409', '4', '1', NULL, NULL, '15', '0', '2024-05-27', 'entry_batch_1', NULL),
(123, '36892369771346', '15', '1', NULL, NULL, '2550', '0', '2024-05-27', 'entry_batch_1', NULL),
(124, '53327416636382', '1', '10', NULL, NULL, '45', '0', '2024-06-07', 'entry_batch_1', NULL),
(125, '17761127', '1', '3', '135', '105', '45', '0', '2024-08-03', 'entry_batch_1', NULL),
(126, '17761127', '2', '3', '75', '48', '25', '0', '2024-08-03', 'entry_batch_1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_bonus`
--

CREATE TABLE `sales_order_bonus` (
  `id` int(11) NOT NULL,
  `invoice` int(11) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `profit` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `has_bonus` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`) VALUES
(1, 'KENTONS', 'KISUMU', 'JANET', '0114075463'),
(4, 'KRISHNA PHARMACEUTICALS', 'KISUMU', 'GEOFFREY OSANO', '0712161154'),
(3, 'PHILMED ', 'KISUMU', 'RACHEL', '0704229303'),
(2, 'VICTORIA HEALTHCARE', 'KISUMU', 'DR.DENNIS', '0728377831 / 0750861800');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(10) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(100) NOT NULL,
  `supplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`, `contact_person`) VALUES
(1, 'KENTONS', 'KISUMU', 'JANET', '0114075463'),
(2, 'VICTORIA HEALTHCARE', 'KISUMU', 'DR.DENNIS', '0728377831 / 0750861800'),
(3, 'PHILMED ', 'KISUMU', 'RACHEL', '0704229303'),
(4, 'KRISHNA PHARMACEUTICALS', 'KISUMU', 'GEOFFREY OSANO', '0712161154'),
(5, 'test supplier', 'kisumu', '39289235', 'john doe'),
(10, 'test supplier2', 'kisumu', '000000', 'john doe'),
(12, 'test supplier3', 'kisumu', '232342', 'john doe'),
(13, 'test supplier34', 'kisumu', '2323428', 'john doe'),
(14, 'test supplier44', 'kisumu', '39289235', 'john doe');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`, `level`) VALUES
(1, 'admin', 'ec6a6536ca304edf844d1d248a4f08dc', 'mathu', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bincard`
--
ALTER TABLE `bincard`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_name` (`customer_name`,`contact`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expiries`
--
ALTER TABLE `expiries`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `expiriestt`
--
ALTER TABLE `expiriestt`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `pending`
--
ALTER TABLE `pending`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `pharmacy_details`
--
ALTER TABLE `pharmacy_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `purchases2`
--
ALTER TABLE `purchases2`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order_bonus`
--
ALTER TABLE `sales_order_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD UNIQUE KEY `suplier_name` (`suplier_name`,`suplier_contact`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`,`supplier_contact`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expiries`
--
ALTER TABLE `expiries`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expiriestt`
--
ALTER TABLE `expiriestt`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending`
--
ALTER TABLE `pending`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pharmacy_details`
--
ALTER TABLE `pharmacy_details`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases2`
--
ALTER TABLE `purchases2`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `sales_order_bonus`
--
ALTER TABLE `sales_order_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
