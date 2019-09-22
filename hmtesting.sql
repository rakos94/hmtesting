-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.22-0ubuntu18.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hmtesting
CREATE DATABASE IF NOT EXISTS `hmtesting` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `hmtesting`;

-- Dumping structure for table hmtesting.bantuan
CREATE TABLE IF NOT EXISTS `bantuan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `asker_user_id` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `judul` varchar(250) DEFAULT '',
  `jumlah_bantuan` decimal(17,8) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- Dumping data for table hmtesting.bantuan: ~12 rows (approximately)
/*!40000 ALTER TABLE `bantuan` DISABLE KEYS */;
INSERT INTO `bantuan` (`id`, `asker_user_id`, `tanggal`, `judul`, `jumlah_bantuan`, `detail`, `created_at`, `updated_at`) VALUES
	(70, 1, '2017-11-20', 'Pengobatan anak sakit', 6500000.00000000, 'Pengobatan anak sakit', '2018-05-14 16:34:27', '2018-05-14 16:34:31'),
	(71, 2, '2018-04-15', 'Penyembuhan kaki bengkak', 2500000.00000000, 'Penyembuhan kaki bengkak', '2018-05-14 16:35:15', '2018-05-14 16:35:19'),
	(72, 3, '2017-10-20', 'Kebutuhan anak sekolah', 6800000.00000000, 'Kebutuhan anak sekolah', '2018-05-14 16:37:34', '2018-05-14 16:37:38'),
	(73, 4, '2017-09-19', 'Bantuan untuk tetangga', 16000000.00000000, 'bantuan untuk tetangga', '2018-05-14 16:38:19', '2018-05-14 16:38:23'),
	(74, 5, '2018-01-18', 'Bantuan kursi roda', 3500000.00000000, 'Bantuan kursi roda', '2018-05-14 16:41:06', '2018-05-14 16:41:20'),
	(75, 6, '2018-01-18', 'Anak Sakit', 5000000.00000000, NULL, '2018-05-14 16:41:09', '2018-05-14 16:41:23'),
	(76, 7, '2018-01-18', 'Membantu Ibu', 4000000.00000000, NULL, '2018-05-14 16:41:12', '2018-05-14 16:41:26'),
	(77, 8, '2018-01-18', 'Biaya rumah sakit', 3000000.00000000, 'Biaya rumah sakit', '2018-05-14 16:41:15', '2018-05-14 16:41:29'),
	(78, 9, '2018-01-18', 'Bantuan seragam sekolah', 2000000.00000000, NULL, '2018-05-14 16:41:18', '2018-05-14 16:41:32'),
	(79, 80, '2018-03-05', 'Pengobatan Anak sakit', 6500000.00000000, NULL, '2018-05-14 16:44:09', '2018-05-14 16:44:17'),
	(80, 81, '2018-02-05', 'Penyembuhan kaki bengkak', 2500000.00000000, 'Penyembuhan kaki bengkak', '2018-05-14 16:44:12', '2018-05-14 16:44:20'),
	(81, 82, '2018-04-05', 'Kebutuhan Anak sekolah', 6800000.00000000, NULL, '2018-05-14 16:44:14', '2018-05-14 16:44:23');
/*!40000 ALTER TABLE `bantuan` ENABLE KEYS */;

-- Dumping structure for table hmtesting.bantuan_giver
CREATE TABLE IF NOT EXISTS `bantuan_giver` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bantuan_id` bigint(20) DEFAULT NULL,
  `giver_user_id` bigint(20) DEFAULT '0',
  `tanggal_dibantu` date DEFAULT NULL,
  `nilai_bantuan` decimal(17,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

-- Dumping data for table hmtesting.bantuan_giver: ~15 rows (approximately)
/*!40000 ALTER TABLE `bantuan_giver` DISABLE KEYS */;
INSERT INTO `bantuan_giver` (`id`, `bantuan_id`, `giver_user_id`, `tanggal_dibantu`, `nilai_bantuan`, `created_at`, `updated_at`) VALUES
	(70, 1, 3, '2018-05-02', 500000.00000000, '2018-05-14 16:46:07', '2018-05-14 16:46:11'),
	(71, 1, 4, '2018-05-03', 500000.00000000, '2018-05-14 16:47:55', '2018-05-14 16:47:59'),
	(72, 2, 5, '2018-05-04', 2000000.00000000, '2018-05-14 16:53:47', '2018-05-14 16:53:51'),
	(73, 2, 2, '2018-05-04', 200000.00000000, '2018-05-14 16:54:20', '2018-05-14 16:54:24'),
	(74, 3, 1, '2018-05-05', 3100000.00000000, '2018-05-14 16:54:55', '2018-05-14 16:54:59'),
	(75, 4, 1, '2018-05-05', 500000.00000000, '2018-05-14 16:57:10', '2018-05-14 16:57:14'),
	(76, 4, 2, '2018-05-06', 500000.00000000, '2018-05-14 16:57:36', '2018-05-14 16:57:39'),
	(77, 4, 3, '2018-05-07', 500000.00000000, '2018-05-14 16:57:57', '2018-05-14 16:58:01'),
	(78, 4, 4, '2018-05-08', 500000.00000000, '2018-05-14 16:58:31', '2018-05-14 16:58:36'),
	(79, 79, 5, '2018-05-09', 5500000.00000000, '2018-05-14 17:00:01', '2018-05-14 17:00:05'),
	(80, 79, 1, '2018-05-10', 1000000.00000000, '2018-05-14 17:00:41', '2018-05-14 17:00:46'),
	(81, 80, 2, '2018-05-11', 2500000.00000000, '2018-05-14 17:01:23', '2018-05-14 17:01:27'),
	(82, 81, 3, '2018-05-12', 3000000.00000000, '2018-05-14 17:02:01', '2018-05-14 17:02:05'),
	(83, 81, 4, '2018-05-13', 2500000.00000000, '2018-05-14 17:02:35', '2018-05-14 17:02:39'),
	(84, 81, 5, '2018-05-14', 1300000.00000000, '2018-05-14 17:02:55', '2018-05-14 17:02:59');
/*!40000 ALTER TABLE `bantuan_giver` ENABLE KEYS */;

-- Dumping structure for table hmtesting.user_asker
CREATE TABLE IF NOT EXISTS `user_asker` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(200) DEFAULT '',
  `password` varchar(250) DEFAULT '',
  `active` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

-- Dumping data for table hmtesting.user_asker: ~13 rows (approximately)
/*!40000 ALTER TABLE `user_asker` DISABLE KEYS */;
INSERT INTO `user_asker` (`id`, `name`, `email`, `password`, `active`, `created_at`, `updated_at`) VALUES
	(1, 'Anton', 'anton@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:24:49', '2018-05-14 16:24:54'),
	(2, 'Budi', 'budi@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:24:56', '2018-05-14 16:25:00'),
	(3, 'Chandra', 'c@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:26:39', '2018-05-14 16:26:44'),
	(4, 'Daniel', 'd@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:26:46', '2018-05-14 16:26:50'),
	(5, 'Emma', 'e@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:26:54', '2018-05-14 16:26:59'),
	(6, 'Faiz', 'f@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:27:02', '2018-05-14 16:27:27'),
	(7, 'Gupta', 'g@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:27:06', '2018-05-14 16:27:24'),
	(8, 'Heru', 'h@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:27:10', '2018-05-14 16:27:20'),
	(9, 'Indah', 'i@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:27:13', '2018-05-14 16:27:17'),
	(10, 'Joni', 'j@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:27:42', '2018-05-14 16:27:46'),
	(80, 'Tono', 't@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:29:06', '2018-05-14 16:29:16'),
	(81, 'Siti', 's@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:29:10', '2018-05-14 16:29:19'),
	(82, 'Rendra', 'r@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:29:13', '2018-05-14 16:29:23');
/*!40000 ALTER TABLE `user_asker` ENABLE KEYS */;

-- Dumping structure for table hmtesting.user_giver
CREATE TABLE IF NOT EXISTS `user_giver` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(200) DEFAULT '',
  `password` varchar(250) DEFAULT '',
  `active` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table hmtesting.user_giver: ~8 rows (approximately)
/*!40000 ALTER TABLE `user_giver` DISABLE KEYS */;
INSERT INTO `user_giver` (`id`, `name`, `email`, `password`, `active`, `created_at`, `updated_at`) VALUES
	(1, 'Lina', 'l@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:32:30', '2018-05-14 16:32:45'),
	(2, 'Maria', 'm@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:32:33', '2018-05-14 16:32:48'),
	(3, 'Nina', 'n@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:32:36', '2018-05-14 16:32:51'),
	(4, 'Opick', 'o@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:32:39', '2018-05-14 16:32:54'),
	(5, 'Peter', 'p@honestmining.com', '$2y$10$rWeDU93JzjL8mk/zCmdo7u9Hm9uGaZxkz8BHIuMdT0VpsvRSxOYm6', 1, '2018-05-14 16:32:42', '2018-05-14 16:32:57'),
	(11, 'kamal f', 'rakos94@gmail.com', '$2y$10$YEjGJ7RkuxHYGtwVozoDh.k15bnBxxSlJVS.4ym1CIYFzGPgtYKNa', 0, '2019-09-22 09:57:10', '2019-09-22 09:57:10'),
	(12, 'admin', 'admin@admin.com', '$2y$10$RJI50Y2QOXrVYMcLHMGBuOVs.xtKieiNtqGB5s4fq9nVufNiNSIzO', 0, '2019-09-22 10:17:01', '2019-09-22 10:17:01'),
	(13, 'admin', 'admin2@admin.com', '$2y$10$90Zzuiv8.F.CZgLAEJWMCOp4wejZxaEbfy8nkaho/VFDB8DB7Fhh.', 0, '2019-09-22 10:18:02', '2019-09-22 10:18:02');
/*!40000 ALTER TABLE `user_giver` ENABLE KEYS */;

-- Dumping structure for table hmtesting.user_saldo
CREATE TABLE IF NOT EXISTS `user_saldo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `saldo` decimal(18,8) unsigned NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table hmtesting.user_saldo: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_saldo` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_saldo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
