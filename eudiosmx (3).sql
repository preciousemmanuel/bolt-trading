-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 12:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eudiosmx`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bitcoin` float DEFAULT 0,
  `etherium` float DEFAULT 0,
  `litecoin` float DEFAULT 0,
  `dogecoin` float NOT NULL DEFAULT 0,
  `bnb` float NOT NULL DEFAULT 0,
  `xrp` float NOT NULL DEFAULT 0,
  `plan` varchar(255) DEFAULT NULL,
  `usd` float DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `bitcoin`, `etherium`, `litecoin`, `dogecoin`, `bnb`, `xrp`, `plan`, `usd`, `status`) VALUES
(9, 19, 0.0212332, 0, 0, 0, 0, 0, 'Standard', 100, 0),
(10, 20, 0.008909, 1.9909, 0, 0, 0, 0, NULL, 20, 1),
(12, 22, 0, 0, 0, 0, 0, 0, NULL, NULL, 0),
(13, 23, 0, 0, 0, 0, 0, 0, NULL, NULL, 0),
(14, 24, 0, 0, 0, 0, 0, 0, NULL, NULL, 0),
(15, 25, 0, 0, 0, 0, 0, 0, NULL, NULL, 0),
(16, 26, 0.00002573, 0, 0, 0, 0, 0, NULL, NULL, 0),
(17, 27, 0.00197133, 0, 0, 0, 0, 0, NULL, 101, 1),
(18, 28, 0.0218786, 0, 0, 0, 0, 0, NULL, 1000, 1),
(19, 30, 0, 0.003, 0, 0, 0, 0, NULL, 10, 0),
(20, 31, 0, 0, 0, 0, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_farming`
--

CREATE TABLE `accounts_farming` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bitcoin` varchar(255) DEFAULT '0.000',
  `etherium` varchar(255) DEFAULT '0.000',
  `litecoin` varchar(255) DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_farming`
--

INSERT INTO `accounts_farming` (`id`, `user_id`, `bitcoin`, `etherium`, `litecoin`) VALUES
(9, 19, '0.000', '0.000', '0.000'),
(10, 20, '0.000', '0.000', '0.000'),
(12, 22, '0.000', '0.000', '0.000'),
(13, 23, '0.000', '0.000', '0.000'),
(14, 24, '0.000', '0.000', '0.000'),
(15, 25, '0.000', '0.000', '0.000'),
(16, 26, '0.000', '0.000', '0.000'),
(17, 27, '0.000', '0.000', '0.000'),
(18, 28, '0.000', '0.000', '0.000'),
(19, 30, '0.000', '0.000', '0.000'),
(20, 31, '0.000', '0.000', '0.000');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(2, 'admin', 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wallet` varchar(255) NOT NULL,
  `wallet_amount` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `deposit_method` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `transaction_memo` varchar(255) DEFAULT NULL,
  `date_confirmed` datetime DEFAULT NULL,
  `crypto_amount` varchar(255) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `contract_duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `ref`, `user_id`, `wallet`, `wallet_amount`, `amount`, `deposit_method`, `created_at`, `status`, `transaction_memo`, `date_confirmed`, `crypto_amount`, `payment_method`, `contract_duration`) VALUES
(3, '97235', 19, 'Bitcoin', NULL, '1', '', '2020-09-26 17:46:09', 'approved', NULL, '2020-02-02 00:00:00', '0.00009314', 'Bitcoin', NULL),
(4, '76409', 19, 'Bitcoin', NULL, '1', '', '2020-09-26 21:47:18', 'approved', NULL, NULL, '0.00009306', 'Bitcoin', NULL),
(5, '72553', 19, 'Bitcoin', NULL, '1000', '', '2020-09-26 21:47:43', 'approved', NULL, NULL, '0.0093053', 'Bitcoin', NULL),
(6, '65442', 19, 'Bitcoin', NULL, '1000', '', '2021-01-15 22:51:44', 'pending', NULL, '2021-07-24 00:00:00', '0.02731318', 'Bitcoin', NULL),
(7, '56413', 19, 'Bitcoin', NULL, '100', '', '2021-01-15 22:53:55', 'pending', NULL, '2021-08-22 00:00:00', '0.00272699', 'Bitcoin', NULL),
(8, '49049', 19, 'Bitcoin', NULL, '100', '', '2021-01-15 22:56:13', 'approved', NULL, NULL, '0.00272561', 'Bitcoin', NULL),
(9, '78368', 19, 'Bitcoin', NULL, '1000000', '', '2021-01-19 07:58:16', 'approved', NULL, NULL, '0.00002689', 'Bitcoin', NULL),
(10, '8643', 19, 'Bitcoin', NULL, '100', '', '2021-02-10 19:55:36', 'approved', NULL, '2021-02-10 00:00:00', '0.00221104', 'Bitcoin', NULL),
(11, '93237', 19, 'Litecoin', NULL, '5', '', '2021-03-27 11:13:12', 'pending', NULL, NULL, '0.028', 'Litecoin', NULL),
(12, '75527', 19, 'Dogecoin', NULL, '1', '', '2021-03-27 11:16:00', 'pending', NULL, '2021-03-27 00:00:00', '18.376', 'Dogecoin', NULL),
(13, '24528', 19, 'Bitcoin', NULL, '1', '', '2021-03-28 12:22:54', 'approved', NULL, NULL, '0.001', 'Ethereum', NULL),
(15, '49645', 22, '', NULL, '', '', '2021-05-19 09:31:43', 'approved', NULL, NULL, '', '', NULL),
(16, '65906', 26, 'Bitcoin', NULL, '1', '', '2021-06-17 15:35:29', 'approved', NULL, '2021-06-17 00:00:00', '0.00002573', 'Bitcoin', NULL),
(17, '20152', 19, 'Ethereum', NULL, '100', '', '2021-06-18 23:06:07', 'pending', NULL, NULL, '0.045', 'Ethereum', NULL),
(18, '82472', 19, 'Litecoin', NULL, '20', '', '2021-06-18 23:06:58', 'pending', NULL, NULL, '0.129', 'Litecoin', NULL),
(20, '14211', 27, 'Bitcoin', NULL, '1', NULL, '2021-09-05 15:11:11', 'approved', NULL, '2021-09-05 00:00:00', '0.00001988', 'Bitcoin', NULL),
(21, '88193', 27, 'Bitcoin', NULL, '100', NULL, '2021-09-06 13:28:01', 'approved', NULL, '2021-09-06 00:00:00', '0.00195145', 'Bitcoin', NULL),
(22, '45534', 28, 'Bitcoin', NULL, '1000', NULL, '2021-09-11 17:34:16', 'approved', NULL, '2021-09-11 00:00:00', '0.02187857', 'Bitcoin', NULL),
(23, '17389', 30, 'Ethereum', NULL, '10', NULL, '2021-12-13 20:18:12', 'approved', NULL, '2021-12-14 00:00:00', '0.003', 'Ethereum', NULL),
(24, '20491', 20, 'Ripple', NULL, '1', NULL, '2021-12-14 20:01:39', 'pending', NULL, NULL, '1.249', 'Ripple', NULL),
(25, '39053', 30, 'Bitcoin', NULL, '1', NULL, '2021-12-15 06:35:32', 'pending', NULL, NULL, '0.00002075', 'Bitcoin', NULL),
(26, '', 31, '', NULL, NULL, NULL, '2023-05-22 09:19:21', 'pending', NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deposits_new`
--

CREATE TABLE `deposits_new` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bitcoin` float DEFAULT 0,
  `etherium` float DEFAULT 0,
  `litecoin` float DEFAULT 0,
  `dogecoin` float NOT NULL DEFAULT 0,
  `bnb` float NOT NULL DEFAULT 0,
  `xrp` float NOT NULL DEFAULT 0,
  `usd` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposits_new`
--

INSERT INTO `deposits_new` (`id`, `user_id`, `bitcoin`, `etherium`, `litecoin`, `dogecoin`, `bnb`, `xrp`, `usd`) VALUES
(9, 19, 0.00427318, 0, 0, 0, 0, 0, NULL),
(10, 20, 9.00089, 5.19909, 0, 0, 0, 0, 16),
(11, 22, 0, 0, 0, 0, 0, 0, NULL),
(12, 23, 0, 0, 0, 0, 0, 0, NULL),
(13, 24, 0, 0, 0, 0, 0, 0, NULL),
(14, 25, 0, 0, 0, 0, 0, 0, NULL),
(15, 26, 0, 0, 0, 0, 0, 0, NULL),
(16, 27, 0.000591399, 0.555, 0, 0, 0, 0.99, 110.3),
(17, 28, 0.0089, 0.0999, 0, 0, 0, 0, 400),
(18, 30, 0.003, 0.8999, 0, 0, 0, 0.988, 11);

-- --------------------------------------------------------

--
-- Table structure for table `deposit_farm`
--

CREATE TABLE `deposit_farm` (
  `id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wallet` varchar(255) NOT NULL,
  `wallet_amount` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `deposit_method` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `transaction_memo` varchar(255) DEFAULT NULL,
  `date_confirmed` datetime DEFAULT NULL,
  `crypto_amount` varchar(255) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposit_farm`
--

INSERT INTO `deposit_farm` (`id`, `ref`, `user_id`, `wallet`, `wallet_amount`, `amount`, `deposit_method`, `created_at`, `status`, `transaction_memo`, `date_confirmed`, `crypto_amount`, `payment_method`) VALUES
(5, '23822', 19, 'Bitcoin', NULL, '1', '', '2020-09-27 03:32:51', 'pending', NULL, '2020-03-03 00:00:00', '359.41', 'Etherium');

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bitcoin` float DEFAULT 0,
  `etherium` float DEFAULT 0,
  `litecoin` float DEFAULT 0,
  `dogecoin` float NOT NULL DEFAULT 0,
  `bnb` float NOT NULL DEFAULT 0,
  `xrp` float NOT NULL DEFAULT 0,
  `usd` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `user_id`, `bitcoin`, `etherium`, `litecoin`, `dogecoin`, `bnb`, `xrp`, `usd`) VALUES
(9, 19, 0.00427318, 0, 0, 0, 0, 0, NULL),
(10, 20, 9.00089, 5.19909, 0, 0, 0, 0, 16),
(11, 22, 0, 0, 0, 0, 0, 0, NULL),
(12, 23, 0, 0, 0, 0, 0, 0, NULL),
(13, 24, 0, 0, 0, 0, 0, 0, NULL),
(14, 25, 0, 0, 0, 0, 0, 0, NULL),
(15, 26, 0, 0, 0, 0, 0, 0, NULL),
(16, 27, 0.000591399, 0.555, 0, 0, 0, 0.99, 110.3),
(17, 28, 0.0089, 0.0999, 0, 0, 0, 0, 400),
(18, 30, 0.003, 0.8999, 0, 0, 0, 0.988, 11),
(19, 31, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `earnings_history`
--

CREATE TABLE `earnings_history` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `bitcoin` float DEFAULT NULL,
  `etherium` float DEFAULT NULL,
  `litecoin` float DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `dogecoin` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `earnings_history`
--

INSERT INTO `earnings_history` (`id`, `amount`, `bitcoin`, `etherium`, `litecoin`, `user_id`, `created_at`, `dogecoin`) VALUES
(1, 10, 0.00212332, 0, 0, 19, '2021-07-10 14:42:16', NULL),
(2, 10, 0.00212332, 0, 0, 19, '2021-07-10 19:16:31', NULL),
(3, 10, 0.00212332, 0, 0, 19, '2021-07-10 14:42:16', NULL),
(4, 10, 0.00212332, 0, 0, 19, '2021-07-10 19:16:31', NULL),
(5, 200, 3.00988, 0.0908873, 0.99, 10, '2022-02-23 11:38:39', 0.007),
(6, 21, 3.00988, 0.0908873, 0.99, 10, '2022-02-23 11:41:10', 0.007),
(8, 10, 5, 5, 0, 20, '2022-02-28 11:18:27', 0),
(9, 14, 9, 5, 0, 20, '2022-02-28 11:23:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `earnings_old`
--

CREATE TABLE `earnings_old` (
  `id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wallet` varchar(255) NOT NULL,
  `wallet_amount` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `deposit_method` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `transaction_memo` varchar(255) DEFAULT NULL,
  `date_confirmed` datetime DEFAULT NULL,
  `crypto_amount` varchar(255) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `earnings_old`
--

INSERT INTO `earnings_old` (`id`, `ref`, `user_id`, `wallet`, `wallet_amount`, `amount`, `deposit_method`, `created_at`, `status`, `transaction_memo`, `date_confirmed`, `crypto_amount`, `payment_method`) VALUES
(3, '97235', 19, 'Bitcoin', NULL, '1', '', '2020-09-26 17:46:09', 'pending', NULL, '2020-02-02 00:00:00', '0.00009314', 'Bitcoin');

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bitcoin` decimal(10,2) NOT NULL DEFAULT 0.00,
  `etherium` decimal(10,2) NOT NULL DEFAULT 0.00,
  `litecoin` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `farm`
--

INSERT INTO `farm` (`id`, `user_id`, `bitcoin`, `etherium`, `litecoin`) VALUES
(1, 19, '0.00', '29.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `player_one` int(11) NOT NULL,
  `player_two` int(11) DEFAULT NULL,
  `game_id` varchar(255) NOT NULL,
  `game_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'WAITING',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `player_one_upload` text DEFAULT NULL,
  `player_two_upload` text DEFAULT NULL,
  `winner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `player_one`, `player_two`, `game_id`, `game_type`, `status`, `created_at`, `player_one_upload`, `player_two_upload`, `winner`) VALUES
(1, 27, 28, '229561946', '50', 'COMPLETE', '2021-09-06 17:56:53', 'uploads/WhatsApp Image 2021-08-27 at 7.50.51 AM.jpeg', NULL, 27),
(5, 29, NULL, '489456801', '100', 'WAITING', '2021-09-16 18:58:08', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(225) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `isVerified` int(11) NOT NULL,
  `vcode` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL,
  `referal` varchar(255) DEFAULT NULL,
  `referal_clearal` varchar(10) DEFAULT NULL,
  `referal_link` varchar(255) DEFAULT NULL,
  `resetcode` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `phone`, `password`, `isVerified`, `vcode`, `created_at`, `image`, `referal`, `referal_clearal`, `referal_link`, `resetcode`, `username`, `usertype`, `address`) VALUES
(20, 'Precious Emmanuel', NULL, 'emmaprechi5@gmail.com', '', '123', 1, 'adcd97aee38024cf580409df8ff9b447', '2020-09-14 22:21:56', 'uploads/team2.jpg', '', NULL, 'Precious-Emmanuel9634', 'a8a5d22acb383aae55937a6936e120b0', '', 'user', NULL),
(22, '', NULL, '', '', '', 1, 'dc7daffa1ecbb49742ec3f1646f76f04', '2021-02-08 21:18:37', NULL, '', NULL, '8534', NULL, '', 'user', NULL),
(23, 'Precious Emmanuel', NULL, 'emmaprechi22@gmail.com', '', '1', 1, 'f0716095e731ef88a54661b5041006b6', '2021-04-30 20:04:23', NULL, '', NULL, 'Precious-Emmanuel4307', NULL, '', 'user', NULL),
(24, 'Precious Emmanuel', NULL, 'emmaprechi100@gmail.com', '', '123', 1, '7722489ab3023fe6a637ba4fb568efe1', '2021-05-17 04:29:06', NULL, '', NULL, 'Precious-Emmanuel6383', NULL, '', 'user', NULL),
(25, 'Precious Emmanuel', NULL, 'emmaprechi1000@gmail.com', '', '123', 1, 'f74d36ac2995966d36a8c7c29c0167fa', '2021-05-17 04:29:34', NULL, '', NULL, 'Precious-Emmanuel6412', NULL, '', 'user', NULL),
(26, 'Precious Emmanuels', NULL, 'emmaprechi2@gmail.com', '', '123', 1, '83630f232671763415650a4dc0cb03b7', '2021-06-17 13:23:41', NULL, '', NULL, 'Precious-Emmanuel2377', NULL, '', 'user', NULL),
(27, 'dd', NULL, 'preciousemmanuel32@gmail.com', NULL, '123', 1, '2d883da03ea85945ccb60376a12f52b5', '2021-08-21 19:56:19', NULL, '', NULL, 'dd1335', NULL, 'root', 'user', NULL),
(28, 'Alissons', NULL, 'emmaprechi@gmail.com3', NULL, '123', 1, '4ced8f520ccd08904253bb09740a1c9e', '2021-09-11 16:33:45', NULL, '', NULL, 'Alisson1012', NULL, 'emmaprechi', 'user', NULL),
(29, 'James', NULL, 'emmaprechi@gmail.com', NULL, '123', 1, NULL, '2021-09-16 18:58:08', NULL, NULL, NULL, 'James7169', '704cddc91e28d1a5517518b2f12bc321', 'admin', 'admin', NULL),
(30, 'Ema', NULL, 'root@e.com', NULL, '123', 1, '43de90bf77895a6438d765cb27ced88a', '2021-12-13 18:05:06', 'uploads/team1.jpg', '', NULL, '4609', NULL, '', 'user', NULL),
(31, 'Precious', 'Emmanuel', 'emmaprechi67@gmail.com', NULL, '1234', 0, '62f159a345b831fe51dd7762eb576278', '2023-05-22 09:19:21', 'uploads/user.png', '', NULL, 'Precious3700', NULL, '', 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `crypto_amount` varchar(255) NOT NULL,
  `withdrawal_method` varchar(255) NOT NULL,
  `wallet_address` varchar(255) NOT NULL,
  `wallet_email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `wallet` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `pin` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `user_id`, `amount`, `crypto_amount`, `withdrawal_method`, `wallet_address`, `wallet_email`, `created_at`, `wallet`, `status`, `pin`) VALUES
(5, 19, '100', '0.00919412', 'Bitcoin', '555555ff', 'peee', '2020-10-01 11:27:47', 'Bitcoin', 'pending', NULL),
(6, 19, '1', '0.00003002', '', '555555ff', 'emmaprechi@gmail.com', '2021-01-28 22:28:49', 'Bitcoin', 'pending', NULL),
(7, 19, '1', '0.00003002', 'Bitcoin', '555555ff', 'emmaprechi@gmail.com', '2021-01-28 22:31:20', 'Bitcoin', 'pending', NULL),
(8, 19, '1', '0.00002708', 'Bitcoin', '555555ff', 'emmaprechi@gmail.com', '2021-01-29 11:15:18', 'Bitcoin', 'approved', NULL),
(9, 19, '1', '0.000047048', 'Bitcoin', '12333', 'emmaprechi@gmail.com', '2021-01-29 14:40:17', 'Bitcoin', 'pending', NULL),
(10, 19, '1', '0.00002223', 'Bitcoin', '6770099', 'emmaprechi@gmail.com', '2021-02-10 22:06:45', 'Bitcoin', 'pending', NULL),
(11, 19, '1', '0.00001841', 'Bitcoin', '12333', 'ee', '2021-03-27 13:08:56', 'Bitcoin', 'pending', NULL),
(13, 19, '10', '0.03525', 'Litecoin', '12345', '333', '2021-05-16 21:39:04', 'Litecoin', 'pending', NULL),
(14, 20, '1', '0.00002121', 'Bitcoin', 'ww', 'emmaprechi@gmail.com', '2021-12-14 08:35:06', 'Bitcoin', 'pending', '9999'),
(15, 20, '1', '0.0000211', 'Bitcoin', 'ww', 'emmaprechi@gmail.com', '2021-12-14 08:54:21', 'Bitcoin', 'pending', '9999'),
(16, 20, '1', '0.00002579', 'Bitcoin', 'ww', 'emmaprechi@gmail.com', '2022-03-08 19:56:23', 'Bitcoin', 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_farming`
--

CREATE TABLE `withdraw_farming` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `crypto_amount` varchar(255) NOT NULL,
  `withdrawal_method` varchar(255) NOT NULL,
  `wallet_address` varchar(255) NOT NULL,
  `wallet_email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `wallet` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_farming`
--
ALTER TABLE `accounts_farming`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits_new`
--
ALTER TABLE `deposits_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_farm`
--
ALTER TABLE `deposit_farm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earnings_history`
--
ALTER TABLE `earnings_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earnings_old`
--
ALTER TABLE `earnings_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farm`
--
ALTER TABLE `farm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_farming`
--
ALTER TABLE `withdraw_farming`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `accounts_farming`
--
ALTER TABLE `accounts_farming`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `deposits_new`
--
ALTER TABLE `deposits_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deposit_farm`
--
ALTER TABLE `deposit_farm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `earnings_history`
--
ALTER TABLE `earnings_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `earnings_old`
--
ALTER TABLE `earnings_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `withdraw_farming`
--
ALTER TABLE `withdraw_farming`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
