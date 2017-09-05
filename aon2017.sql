-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.18-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table aon2017.app
CREATE TABLE IF NOT EXISTS `app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` enum('ID','EN') NOT NULL,
  `vendor` tinyint(4) NOT NULL,
  `vendor_code` varchar(50) NOT NULL,
  `code` int(11) NOT NULL,
  `quesioner` varchar(200) NOT NULL,
  `com_1` text NOT NULL,
  `com_2` text NOT NULL,
  `dem_1` smallint(6) NOT NULL,
  `dem_1_group` tinyint(4) NOT NULL,
  `dem_2` tinyint(4) NOT NULL,
  `dem_3` tinyint(4) NOT NULL,
  `dem_4` tinyint(4) NOT NULL,
  `dem_5` tinyint(4) NOT NULL,
  `dem_6` tinyint(4) NOT NULL,
  `dem_7` tinyint(4) NOT NULL,
  `dem_8` tinyint(4) NOT NULL,
  `audit` enum('Y','') NOT NULL,
  `salah` enum('Y','') NOT NULL DEFAULT '',
  `user_create` int(11) NOT NULL,
  `date_create` datetime NOT NULL,
  `user_update` int(11) NOT NULL,
  `date_update` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dem_1` (`dem_1`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table aon2017.app: ~6 rows (approximately)
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` (`id`, `country`, `vendor`, `vendor_code`, `code`, `quesioner`, `com_1`, `com_2`, `dem_1`, `dem_1_group`, `dem_2`, `dem_3`, `dem_4`, `dem_5`, `dem_6`, `dem_7`, `dem_8`, `audit`, `salah`, `user_create`, `date_create`, `user_update`, `date_update`) VALUES
	(1, 'ID', 0, '', 1, '1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,6,6,6,', 'Satu hal yang akan anda ubah untuk membuat organisasi ini menjadi tempat kerja yang lebih baik', 'Apa yang paling anda sukai bekerja di organisasi ini', 40, 1, 1, 2, 3, 1, 2, 0, 0, '', '', 1, '2016-10-07 09:20:50', 1, '2017-09-05 21:20:08'),
	(2, 'ID', 0, '', 2, '1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, '2016-10-07 09:47:49', 0, '0000-00-00 00:00:00'),
	(3, 'ID', 0, '', 3, ',,,,,,,,,,3,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, '2016-10-07 09:47:55', 0, '0000-00-00 00:00:00'),
	(4, 'EN', 0, '', 1, ',,,4,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,', '', '', 0, 0, 14, 3, 8, 1, 4, 0, 0, '', '', 1, '2016-10-07 09:48:04', 1, '2017-09-05 21:42:38'),
	(5, 'ID', 0, '', 4, ',,,,,,,,,,,,,,,,,,,,3,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,', '', '', 5, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1, '2016-10-07 09:49:12', 1, '2016-10-10 19:28:13'),
	(6, 'ID', 0, '', 5, '1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,6,6,6,', 'Satu hal yang akan anda ubah untuk membuat organisasi ini menjadi tempat kerja yang lebih baik', 'Apa yang paling anda sukai bekerja di organisasi ini', 6, 2, 1, 4, 2, 2, 5, 1, 2, '', '', 1, '2016-10-11 08:29:05', 1, '2017-09-05 21:20:26');
/*!40000 ALTER TABLE `app` ENABLE KEYS */;


-- Dumping structure for table aon2017.divisi
CREATE TABLE IF NOT EXISTS `divisi` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `divisi_no` int(11) NOT NULL DEFAULT '0',
  `divisi` varchar(50) NOT NULL,
  `posisi_no` int(11) NOT NULL,
  `posisi` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  PRIMARY KEY (`code`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table aon2017.divisi: ~110 rows (approximately)
/*!40000 ALTER TABLE `divisi` DISABLE KEYS */;
INSERT INTO `divisi` (`code`, `divisi_no`, `divisi`, `posisi_no`, `posisi`, `country`) VALUES
	(3, 1, 'Business Services', 1, 'Balinusa', 'ID'),
	(4, 1, 'Business Services', 2, 'Jawa Tengah', 'ID'),
	(5, 1, 'Business Services', 3, 'Sumatera Tengah', 'ID'),
	(6, 1, 'Business Services', 4, 'Jawa Timur', 'ID'),
	(7, 1, 'Business Services', 5, 'Jakarta', 'ID'),
	(8, 1, 'Business Services', 6, 'Kalimantan', 'ID'),
	(9, 1, 'Business Services', 7, 'Makassar', 'ID'),
	(10, 1, 'Business Services', 8, 'National Office', 'ID'),
	(11, 1, 'Business Services', 9, 'Cibitung', 'ID'),
	(12, 1, 'Business Services', 10, 'Sumatera Utara', 'ID'),
	(13, 1, 'Business Services', 11, 'Papua Maluku', 'ID'),
	(14, 1, 'Business Services', 12, 'Sumatera Selatan', 'ID'),
	(15, 1, 'Business Services', 13, 'Jawa Barat', 'ID'),
	(16, 2, 'Finance & Governance', 1, 'Balinusa', 'ID'),
	(17, 2, 'Finance & Governance', 2, 'Jawa Tengah', 'ID'),
	(18, 2, 'Finance & Governance', 3, 'Sumatera Tengah', 'ID'),
	(19, 2, 'Finance & Governance', 4, 'Cikedokan', 'ID'),
	(20, 2, 'Finance & Governance', 5, 'Jawa Timur', 'ID'),
	(21, 2, 'Finance & Governance', 6, 'Jakarta', 'ID'),
	(22, 2, 'Finance & Governance', 7, 'Kalimantan', 'ID'),
	(23, 2, 'Finance & Governance', 8, 'Makassar', 'ID'),
	(24, 2, 'Finance & Governance', 9, 'National Office', 'ID'),
	(25, 2, 'Finance & Governance', 10, 'Cibitung', 'ID'),
	(26, 2, 'Finance & Governance', 11, 'Sumatera Utara', 'ID'),
	(27, 2, 'Finance & Governance', 12, 'Papua Maluku', 'ID'),
	(28, 2, 'Finance & Governance', 13, 'Sumatera Selatan', 'ID'),
	(29, 2, 'Finance & Governance', 14, 'Jawa Barat', 'ID'),
	(32, 3, 'Human Resources & Information Technology', 1, 'Balinusa', 'ID'),
	(33, 3, 'Human Resources & Information Technology', 2, 'Jawa Tengah', 'ID'),
	(34, 3, 'Human Resources & Information Technology', 3, 'Sumatera Tengah', 'ID'),
	(35, 3, 'Human Resources & Information Technology', 4, 'Cikedokan', 'ID'),
	(36, 3, 'Human Resources & Information Technology', 5, 'Jawa Timur', 'ID'),
	(37, 3, 'Human Resources & Information Technology', 6, 'Jakarta', 'ID'),
	(38, 3, 'Human Resources & Information Technology', 7, 'Kalimantan', 'ID'),
	(39, 3, 'Human Resources & Information Technology', 8, 'Makassar', 'ID'),
	(40, 3, 'Human Resources & Information Technology', 9, 'National Office', 'ID'),
	(41, 3, 'Human Resources & Information Technology', 10, 'Cibitung', 'ID'),
	(42, 3, 'Human Resources & Information Technology', 11, 'Sumatera Utara', 'ID'),
	(43, 3, 'Human Resources & Information Technology', 12, 'Sumatera Selatan', 'ID'),
	(44, 3, 'Human Resources & Information Technology', 13, 'Jawa Barat', 'ID'),
	(45, 4, 'Supply Chain', 1, 'Balinusa', 'ID'),
	(46, 4, 'Supply Chain', 2, 'Jawa Tengah', 'ID'),
	(47, 4, 'Supply Chain', 3, 'Sumatera Tengah', 'ID'),
	(48, 4, 'Supply Chain', 4, 'Cikedokan', 'ID'),
	(49, 4, 'Supply Chain', 5, 'Jawa Timur', 'ID'),
	(50, 4, 'Supply Chain', 6, 'Jakarta', 'ID'),
	(51, 4, 'Supply Chain', 7, 'Makassar', 'ID'),
	(52, 4, 'Supply Chain', 8, 'National Office', 'ID'),
	(53, 4, 'Supply Chain', 9, 'Cibitung', 'ID'),
	(54, 4, 'Supply Chain', 10, 'Sumatera Utara', 'ID'),
	(55, 4, 'Supply Chain', 11, 'Packaging Services', 'ID'),
	(56, 4, 'Supply Chain', 12, 'Sumatera Selatan', 'ID'),
	(57, 4, 'Supply Chain', 13, 'Jawa Barat', 'ID'),
	(58, 5, 'Sales General Trade', 1, 'Balinusa', 'ID'),
	(59, 5, 'Sales General Trade', 2, 'Jawa Tengah', 'ID'),
	(60, 5, 'Sales General Trade', 3, 'Sumatera Tengah', 'ID'),
	(61, 5, 'Sales General Trade', 4, 'Jawa Timur', 'ID'),
	(62, 5, 'Sales General Trade', 5, 'Jakarta', 'ID'),
	(63, 5, 'Sales General Trade', 6, 'Kalimantan', 'ID'),
	(64, 5, 'Sales General Trade', 7, 'Makassar', 'ID'),
	(65, 5, 'Sales General Trade', 8, 'National Office', 'ID'),
	(66, 5, 'Sales General Trade', 9, 'Sumatera Utara', 'ID'),
	(67, 5, 'Sales General Trade', 10, 'Papua Maluku', 'ID'),
	(68, 5, 'Sales General Trade', 11, 'Sumatera Selatan', 'ID'),
	(69, 5, 'Sales General Trade', 12, 'Jawa Barat', 'ID'),
	(70, 6, 'Sales Modern Trade', 1, 'Balinusa', 'ID'),
	(71, 6, 'Sales Modern Trade', 2, 'Jawa Tengah', 'ID'),
	(72, 6, 'Sales Modern Trade', 3, 'Sumatera Tengah', 'ID'),
	(73, 6, 'Sales Modern Trade', 4, 'Jawa Timur', 'ID'),
	(74, 6, 'Sales Modern Trade', 5, 'Jakarta', 'ID'),
	(75, 6, 'Sales Modern Trade', 6, 'Kalimantan', 'ID'),
	(76, 6, 'Sales Modern Trade', 7, 'Makassar', 'ID'),
	(77, 6, 'Sales Modern Trade', 8, 'National Office', 'ID'),
	(78, 6, 'Sales Modern Trade', 9, 'Sumatera Utara', 'ID'),
	(79, 6, 'Sales Modern Trade', 10, 'Sumatera Selatan', 'ID'),
	(80, 6, 'Sales Modern Trade', 11, 'Jawa Barat', 'ID'),
	(81, 7, 'Marketing', 1, 'National Office', 'ID'),
	(82, 8, 'Public Affair & Communication', 1, 'Balinusa', 'ID'),
	(83, 8, 'Public Affair & Communication', 2, 'Jawa Tengah', 'ID'),
	(84, 8, 'Public Affair & Communication', 3, 'Jawa Timur', 'ID'),
	(85, 8, 'Public Affair & Communication', 4, 'Jakarta', 'ID'),
	(86, 8, 'Public Affair & Communication', 5, 'National Office', 'ID'),
	(87, 8, 'Public Affair & Communication', 6, 'Cibitung', 'ID'),
	(88, 8, 'Public Affair & Communication', 7, 'Sumatera Utara', 'ID'),
	(89, 8, 'Public Affair & Communication', 8, 'Jawa Barat', 'ID'),
	(90, 1, 'Finance', 1, 'Accounts Payable', 'EN'),
	(91, 1, 'Finance', 2, 'Business Information Services', 'EN'),
	(92, 1, 'Finance', 3, 'Finance Administration', 'EN'),
	(93, 1, 'Finance', 4, 'Finance Services', 'EN'),
	(94, 1, 'Finance', 5, 'Legal, Security & Internal Audit', 'EN'),
	(95, 2, 'Human Resources', 1, 'HR Administration', 'EN'),
	(96, 2, 'Human Resources', 2, 'Employee Services', 'EN'),
	(97, 3, 'Marketing', 1, 'CDES', 'EN'),
	(98, 3, 'Marketing', 2, 'Graphics Design', 'EN'),
	(99, 3, 'Marketing', 3, 'Sign Shop', 'EN'),
	(100, 3, 'Marketing', 4, 'Sponsorship & Special Event', 'EN'),
	(101, 3, 'Marketing', 5, 'Key Accounts', 'EN'),
	(102, 3, 'Marketing', 6, 'RTM, Operations & Administration', 'EN'),
	(103, 4, 'Sales ROS', 1, 'ROS Route Sales ', 'EN'),
	(104, 5, 'Sales Highlands', 1, 'Highlands Route Sales ', 'EN'),
	(105, 6, 'Sales Momase', 1, 'Momase Route Sales ', 'EN'),
	(106, 7, 'Sales Port Moresby', 1, 'Port Moresby Route Sales', 'EN'),
	(107, 8, 'Sales Highlands', 1, 'Highlands Route Sales ', 'EN'),
	(108, 9, 'Supply Chain', 1, 'Distribution', 'EN'),
	(109, 9, 'Supply Chain', 2, 'Maintenance', 'EN'),
	(110, 9, 'Supply Chain', 3, 'Quality Control', 'EN'),
	(111, 9, 'Supply Chain', 4, 'Warehouse', 'EN'),
	(112, 9, 'Supply Chain', 5, 'Operations', 'EN'),
	(113, 9, 'Supply Chain', 6, 'S&OP, Procurement', 'EN'),
	(114, 9, 'Supply Chain', 7, 'Productions', 'EN');
/*!40000 ALTER TABLE `divisi` ENABLE KEYS */;


-- Dumping structure for table aon2017.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ip_login` varchar(50) NOT NULL,
  `user_agent` varchar(50) NOT NULL,
  `date_login` datetime NOT NULL,
  `user_create` varchar(50) NOT NULL,
  `date_create` datetime NOT NULL,
  `user_update` varchar(50) NOT NULL,
  `date_update` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table aon2017.user: ~19 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `fullname`, `username`, `password`, `level`, `status`, `ip_login`, `user_agent`, `date_login`, `user_create`, `date_create`, `user_update`, `date_update`) VALUES
	(1, 'Adam Prasetia', 'damz', 'A267796', 1, 1, '::1', 'Windows 7(Google Chrome 60.0.3112.113)', '2017-09-05 19:03:54', '', '2015-09-30 09:35:33', '1', '2015-09-30 15:07:19'),
	(2, 'Teguh Santoso', 'teguh', 'cleopatra', 1, 1, '::1', 'Windows 7(Google Chrome 60.0.3112.113)', '2017-09-04 15:49:01', '', '2015-09-30 09:35:52', '', '0000-00-00 00:00:00'),
	(7, 'Firman Rusbandy', 'firman', '10020', 3, 1, '192.168.10.178', 'Windows XP(Mozilla Firefox 41.0)', '2015-10-16 08:24:07', '1', '2015-10-08 14:35:06', '1', '2015-10-08 14:35:06'),
	(8, 'Julius', 'Julius', '11073', 3, 1, '192.168.10.175', 'Windows XP(Mozilla Firefox 14.0.1)', '2015-10-21 12:43:36', '1', '2015-10-08 14:41:32', '1', '2015-10-08 14:41:32'),
	(9, 'Asri Rahayu', 'asri', '15041', 3, 1, '192.168.10.177', 'Windows XP(Mozilla Firefox 37.0)', '2015-10-21 11:27:41', '1', '2015-10-08 15:24:11', '1', '2015-10-08 15:24:11'),
	(10, 'Alfiyani Dewi', 'alfiyani', 'aliyani', 3, 1, '192.168.10.176', 'Windows XP(Mozilla Firefox 24.0)', '2015-10-21 11:26:39', '1', '2015-10-08 15:24:22', '1', '2015-10-08 15:24:22'),
	(11, 'wiwi nurhaeni', 'wiwi', 'wiwi', 3, 1, '::1', 'Windows 7(Google Chrome 53.0.2785.116)', '2016-10-04 12:31:06', '', '2015-10-09 07:49:21', '', '0000-00-00 00:00:00'),
	(12, 'fathiah', 'thia', '230192', 3, 1, '192.168.10.154', 'Windows XP(Mozilla Firefox 20.0)', '2015-10-09 12:51:43', '', '2015-10-09 07:49:51', '', '0000-00-00 00:00:00'),
	(13, 'bogie septino', 'bogie', '130913', 3, 1, '192.168.10.65', 'Windows 7(Mozilla Firefox 41.0)', '2015-10-21 08:01:08', '', '2015-10-09 07:58:46', '', '0000-00-00 00:00:00'),
	(14, 'naila', 'nay', 'azmiprasetya', 3, 1, '192.168.10.155', 'Windows XP(Mozilla Firefox 13.0.1)', '2015-10-09 11:14:53', '', '2015-10-09 07:59:37', '', '0000-00-00 00:00:00'),
	(15, 'rahmat febriawan', 'febi', 'febi', 3, 1, '192.168.10.158', 'Windows XP(Mozilla Firefox 14.0.1)', '2015-10-09 13:02:13', '', '2015-10-09 08:29:54', '', '0000-00-00 00:00:00'),
	(16, 'Altobelly Giovanno', 'agiovanno', 'goodluck', 3, 1, '192.168.10.180', 'Windows XP(Mozilla Firefox 41.0)', '2015-10-27 07:41:31', '', '2015-10-09 09:45:10', '', '0000-00-00 00:00:00'),
	(17, 'wiwit ria meliyani', 'wiwit', '14147', 3, 1, '192.168.10.180', 'Windows XP(Mozilla Firefox 41.0)', '2015-10-15 14:26:56', '', '2015-10-09 10:02:47', '', '0000-00-00 00:00:00'),
	(18, 'De Admin', 'deadmin', 'deadmin123', 3, 1, '192.168.10.71', 'Windows 7(Mozilla Firefox 41.0)', '2015-10-22 07:13:19', '', '2015-10-09 18:21:28', '', '0000-00-00 00:00:00'),
	(19, 'Astri Leoni Agustin', 'leony', '200895', 3, 1, '192.168.10.60', 'Windows XP(Mozilla Firefox 41.0)', '2015-10-27 15:32:40', '', '2015-10-12 07:35:29', '', '0000-00-00 00:00:00'),
	(20, 'damara kartika sari', 'damara', '021293', 3, 1, '192.168.10.155', 'Windows XP(Mozilla Firefox 13.0.1)', '2015-10-13 15:36:12', '', '2015-10-13 07:23:58', '', '0000-00-00 00:00:00'),
	(21, 'shinta tri lestari', 'shinta15', 'shinta150991', 3, 1, '192.168.10.154', 'Windows XP(Mozilla Firefox 20.0)', '2015-10-13 07:38:44', '', '2015-10-13 07:26:55', '', '0000-00-00 00:00:00'),
	(22, 'gelin mandasari', 'gelin', 'pinkstar', 3, 1, '192.168.10.153', 'Windows XP(Mozilla Firefox 20.0)', '2015-10-13 07:53:53', '', '2015-10-13 07:53:38', '', '0000-00-00 00:00:00'),
	(23, 'Ratih Fadjarini', 'ratih', '14051', 3, 1, '192.168.10.156', 'Windows XP(Mozilla Firefox 41.0)', '2015-10-13 15:52:16', '', '2015-10-13 07:57:19', '', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
