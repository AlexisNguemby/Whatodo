-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2025 at 05:41 PM
-- Server version: 8.0.41
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whatodo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `description`, `created_at`) VALUES
(2, 31, 'koiyu', '2025-03-06 00:21:47'),
(3, 31, 'koiyu', '2025-03-06 00:22:38'),
(4, 31, 'koiyu', '2025-03-06 00:22:53'),
(5, 31, 'koiyu', '2025-03-06 00:23:28'),
(6, 32, 'Cherchez les gosses', '2025-03-06 00:25:08'),
(7, 23, 'faire repas', '2025-03-06 11:36:53'),
(8, 23, 'faire repas', '2025-03-06 11:58:34'),
(9, 23, 'gtghtthh', '2025-03-06 11:59:07'),
(10, 23, 'caca', '2025-03-06 11:59:28'),
(11, 23, 'TEST', '2025-03-06 12:00:51'),
(12, 23, 'RRRR', '2025-03-06 12:01:33'),
(13, 23, 'le fefrefrffgttehht  tehhteryhrheyhjhyrjyjyjj', '2025-03-06 12:01:49'),
(14, 23, 'ee', '2025-03-06 12:13:33'),
(15, 23, 'eeee', '2025-03-06 12:13:38'),
(16, 23, 'eeee', '2025-03-06 12:20:10'),
(17, 23, '1', '2025-03-06 12:20:27'),
(18, 23, '1', '2025-03-06 12:20:52'),
(19, 23, '1', '2025-03-06 12:21:23'),
(20, 32, 'Acheter Cadeau', '2025-03-06 12:23:16'),
(21, 32, 'test', '2025-03-06 12:32:41'),
(22, 32, 'eeee', '2025-03-06 12:32:57'),
(23, 32, 'fgf', '2025-03-06 12:34:53'),
(24, 32, 'K', '2025-03-06 12:38:11'),
(25, 1, 'teete', '2025-03-06 12:42:57'),
(26, 1, 'tt(ytyht', '2025-03-06 12:43:11'),
(27, 1, 'tyhthth', '2025-03-06 12:43:14'),
(28, 1, 'thhthhth', '2025-03-06 12:43:16'),
(29, 1, 'ththjtyjh', '2025-03-06 12:43:18'),
(30, 1, 'uu', '2025-03-06 12:43:36'),
(31, 1, ':;:', '2025-03-06 12:44:04'),
(32, 1, 'rrrr', '2025-03-06 12:44:25'),
(33, 1, 'rrrr', '2025-03-06 12:45:01'),
(34, 1, 'rrrr', '2025-03-06 12:45:27'),
(35, 1, 'rerreeeeeeeeeeeeeeeeeerfghhyjtu,,uj,;', '2025-03-06 12:45:33'),
(36, 1, 'rerreeeeeeeeeeeeeeeeeerfghhyjtu,,uj,;', '2025-03-06 12:47:25'),
(37, 1, 'eee', '2025-03-06 12:47:28'),
(38, 1, 'test1', '2025-03-06 12:47:32'),
(39, 1, 'test2', '2025-03-06 12:47:42'),
(40, 1, 'test3', '2025-03-06 12:47:55'),
(41, 1, 'ee', '2025-03-06 13:06:16'),
(42, 1, 'eee', '2025-03-06 13:06:20'),
(43, 1, 'koilhh', '2025-03-06 13:06:25'),
(44, 1, 'koilhh', '2025-03-06 13:06:57'),
(45, 1, 'koilhh', '2025-03-06 13:07:17'),
(46, 1, 'koilhh', '2025-03-06 13:14:34'),
(47, 1, 'koilhh', '2025-03-06 13:14:34'),
(48, 1, 'koilhh', '2025-03-06 13:16:44'),
(49, 1, 'koilhh', '2025-03-06 13:19:28'),
(50, 1, 'march pls', '2025-03-06 13:19:39'),
(51, 23, 'dogwater', '2025-03-06 13:42:31'),
(52, 23, 'dogwater', '2025-03-06 13:45:48'),
(53, 23, 'dogwater', '2025-03-06 13:46:27'),
(54, 23, 'dogwater', '2025-03-06 13:46:53'),
(55, 23, 'dogwater', '2025-03-06 13:47:19'),
(56, 23, 'dogwater', '2025-03-06 13:48:15'),
(57, 23, 'dogwater', '2025-03-06 13:48:58'),
(61, 23, '<label><input type=\"checkbox\" name=\"choices[]\" value=\"option1\"> Option 1</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option2\"> Option 2</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option3\"> Option 3</label><br>\r\n        <button type=\"submit\">Terminer</button>\r\n<label><input type=\"checkbox\" name=\"choices[]\" value=\"option1\"> Option 1</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option2\"> Option 2</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option3\"> Option 3</label><br>\r\n        <button type=\"submit\">Terminer</button>\r\n<label><input type=\"checkbox\" name=\"choices[]\" value=\"option1\"> Option 1</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option2\"> Option 2</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option3\"> Option 3</label><br>\r\n        <button type=\"submit\">Terminer</button>\r\n', '2025-03-06 13:51:00'),
(62, 23, '<label><input type=\"checkbox\" name=\"choices[]\" value=\"option1\"> Option 1</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option2\"> Option 2</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option3\"> Option 3</label><br>\r\n        <button type=\"submit\">Terminer</button>\r\n<label><input type=\"checkbox\" name=\"choices[]\" value=\"option1\"> Option 1</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option2\"> Option 2</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option3\"> Option 3</label><br>\r\n        <button type=\"submit\">Terminer</button>\r\n<label><input type=\"checkbox\" name=\"choices[]\" value=\"option1\"> Option 1</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option2\"> Option 2</label><br>\r\n        <label><input type=\"checkbox\" name=\"choices[]\" value=\"option3\"> Option 3</label><br>\r\n        <button type=\"submit\">Terminer</button>\r\n', '2025-03-06 13:51:03'),
(63, 23, 'j', '2025-03-06 13:51:06'),
(64, 1, 'jouer au jeux', '2025-03-06 13:56:20'),
(65, 1, 'pipi', '2025-03-06 13:56:44'),
(66, 1, 'pipi', '2025-03-06 13:57:28'),
(67, 1, 'eee', '2025-03-06 13:57:30'),
(68, 1, 'singe', '2025-03-06 13:57:55'),
(69, 1, 'singe', '2025-03-06 14:00:30'),
(70, 1, 'oops', '2025-03-06 14:00:38'),
(71, 1, 'idk', '2025-03-16 22:43:05'),
(72, 1, 'idk', '2025-03-16 22:45:02'),
(73, 1, 'idk', '2025-03-16 22:45:18'),
(74, 1, 'idk', '2025-03-16 22:52:27'),
(75, 1, 'idk', '2025-03-16 22:52:50'),
(76, 1, 'idk', '2025-03-16 22:53:25'),
(77, 1, 'idk', '2025-03-16 22:53:46'),
(78, 1, 'idk', '2025-03-16 22:54:47'),
(79, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 22:56:49'),
(80, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 22:57:23'),
(81, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 22:58:15'),
(82, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 22:58:32'),
(83, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 22:59:50'),
(84, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 23:01:36'),
(85, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 23:01:51'),
(86, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 23:02:07'),
(87, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 23:03:57'),
(88, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 23:04:05'),
(89, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 23:04:11'),
(90, 1, 'kkkkkkkkkkkkkkkk', '2025-03-16 23:04:44'),
(91, 1, 'Lolpk', '2025-03-16 23:40:39'),
(92, 1, 'Lolpk', '2025-03-16 23:44:54'),
(93, 1, 'Lolpk', '2025-03-16 23:58:20'),
(94, 1, 'Lolpk', '2025-03-16 23:59:40'),
(95, 1, 'Lolpk', '2025-03-17 00:00:22'),
(96, 1, 'Lolpk', '2025-03-17 00:02:06'),
(97, 1, 'Lolpk', '2025-03-17 00:03:18'),
(98, 1, 'Lolpk', '2025-03-17 00:04:02'),
(99, 1, 'Lolpk', '2025-03-17 00:04:31'),
(100, 1, 'Lolpk', '2025-03-17 00:05:02'),
(101, 1, 'Lolpk', '2025-03-17 00:06:17'),
(102, 1, 'Lolpk', '2025-03-17 00:07:29'),
(103, 1, 'Lolpk', '2025-03-17 00:12:05'),
(104, 1, 'Lolpk', '2025-03-17 00:12:41'),
(105, 1, 'eee', '2025-03-17 00:12:44'),
(106, 1, 'eee', '2025-03-17 00:14:34'),
(107, 1, 'eee', '2025-03-17 00:15:50'),
(108, 1, 'eee', '2025-03-17 00:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'admin', 'alexisnguemby@yahoo.fr', '$2y$10$7fAQiNojZt.URlEoD9XosuX7Pk6CsXnObqvkmmle/PULzY2.J.xte', '2025-03-05 21:24:13'),
(3, 'caca', 'alexisguemby@yahoo.fr', '$2y$10$IonP.jAiumUn1PzLyaZpfuTy63cHPdMehLjkZzJ3Sar8BMkJAHdSq', '2025-03-05 21:28:26'),
(7, 'pipi', 'xisguemby@yahoo.fr', '$2y$10$O0.0LD9zZB0ZSgOhBUPE.u1ht1jnz24ckl0ahxJIwW1vdn3WoGqXu', '2025-03-05 21:29:52'),
(9, 'test', 'uemby@yahoo.fr', '$2y$10$4.kBKOmud/X/BJxxslBwyuM8u0CJ7VUp1nupWrL4hmyjkCsguI6Mq', '2025-03-05 21:37:14'),
(10, 'moi', 'eeeenguemby@yahoo.fr', '$2y$10$VP/W13m0o.FDUzG3TBvnAePocwLe1ulcGzmoKIQi97bMjQSyr4Fv.', '2025-03-05 21:39:18'),
(11, 'toi', 'eeenguemby@yahoo.fr', '$2y$10$Yen3HbtMI.asyfJvchB9G.OGvTKZ4iEag/NcKbR50Vm.M2FO.dloW', '2025-03-05 21:46:58'),
(12, 'az', 'alexisaznguemby@yahoo.fr', '$2y$10$IUghcu6A3PfoAHTgpg/bzOQrTcBlD5ZTIWECWPzZyvT9K6WmH.Wt2', '2025-03-05 21:58:13'),
(13, 'ouula', 'taagan@mai.com', '$2y$10$golDHYWc9rpFcIFU0WCc3OAMMUI9DIWP0CjHD8Dnfe.EdNVCzrTI.', '2025-03-05 22:01:12'),
(14, 'alex', 'ngnguemby@yahoo.fr', '$2y$10$YPqkp/JREn9FVKXm6h2tCucSlY.n2xnMxMZ3sRSfYJ.tAA5wFahga', '2025-03-05 22:07:23'),
(15, 'ez', 'eeenzguemby@yahoo.fr', '$2y$10$jJ4wZLaWJHvLGnMNXUUnTOIBKDI70uifom1y5tBJgDiQxESXyFSAi', '2025-03-05 22:16:06'),
(16, 'fg', 'ffgy@yahoo.fr', '$2y$10$YkBGKOMOp9MF.rjdIX35eubu32LIOC3AM5Deegjw8l.kCFku6jIZa', '2025-03-05 22:17:04'),
(17, 'qs', 'qsnguemby@yahoo.fr', '$2y$10$aeTnr0.V3TxvoLbcUmECKu4bMbKr3/DNhJFlt4EMnNcxi.KwhfjBi', '2025-03-05 22:22:22'),
(19, 'sansf', 'sansf@gmail.com', '$2y$10$k137rcMt5N1uMcnxIIQxlOt/ZnO1t5RYaXSV45j.G6wiyzqWfT0..', '2025-03-05 22:31:18'),
(21, 'sans', 'sans@gmail.com', '$2y$10$n5GmztxgbrIktK1Q/I4Crue/y7mHlwXeTBkqCe55Mkk1I1cTDAiei', '2025-03-05 22:31:46'),
(22, 'de', 'dezdded@gmail.com', '$2y$10$ZIAm.Ng38HyqZ9Wa7VfrX.qe.WZxi4aQOrZnGw0YDuHtBrl58FLP.', '2025-03-05 22:35:16'),
(23, 'user', 'user@user.com', '$2y$10$2Hx/gX5ayyfTiGXE4k/Ul.haBJaRYblI4yvJt2HQ219U8Or1iftgW', '2025-03-05 22:36:45'),
(24, 'rt', 'rtfrg@gmail.com', '$2y$10$/93iPYPay0VN4A45PyC3/Ofv5pIUp6nbWDmG0BRO1MIC4qJJtImV6', '2025-03-05 23:46:04'),
(25, 'sq', 'stealmycreation@gmail.com', '$2y$10$WFUa7mR7/XUmxFIUa/vCj.DavLbYueRZCjcMuJK2acZ9YPMgHyXjG', '2025-03-06 00:01:11'),
(26, 'sf', 'ycreation@gmail.com', '$2y$10$aHPKl/ZxE7/Y/cUW8UIm7.Uh.bIjO1gTmOhEw7kqCsfGsC6ny6uNu', '2025-03-06 00:02:16'),
(27, 'st', 'eeguemby@yahoo.fr', '$2y$10$TGJ1GtEsrxDe0lFCC.IxAe4PJOV2p8sxR3nXgd7Yg0ezXw1Dd3nWS', '2025-03-06 00:05:30'),
(28, 'rtyuuiio', 'rtyuuiio@rtyuuiio', '$2y$10$FP1BbQUSRv0VVdb/vfUEG.MZSp.ccnIUB44T8g/K7UQwAFK4KGeRe', '2025-03-06 00:06:59'),
(30, 'tr', 'rtyuuiio@rtyuuiio.fr', '$2y$10$3ysssmvigwOKhNLO.qJh8eAXYNtUdGWxIdQyBcAUvIVvTZI95/LfW', '2025-03-06 00:07:25'),
(31, 'roi', 'alexisnguemtttttby@yahoo.fr', '$2y$10$lzw1BQ/APMJFFCsyOZC7FuPjUxAqn4geCZkEvjDYn.PWoDZBte.h.', '2025-03-06 00:09:30'),
(32, 'LOIC', 'LOICnguemby@yahoo.fr', '$2y$10$p73CQL3wixFUgh9Z2sCn1.aOAZ2FeAPU1jMCpLRhNdNBYhpkUsvF6', '2025-03-06 00:24:15');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
ALTER TABLE tasks ADD COLUMN status ENUM('pending', 'completed') DEFAULT 'pending';
