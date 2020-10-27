-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2020 at 12:29 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `comic`
--

CREATE TABLE `comic` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comic`
--

INSERT INTO `comic` (`id`, `title`, `slug`, `author`, `publisher`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'Dragon Ball', 'dragonball', 'Akira Toriyama', 'Shueisha', 'dragonball.png', NULL, NULL),
(2, 'Doraemon', 'doraemon', 'Fujiko Fujio', 'Shogakukan', 'doraemon.jpg', NULL, '2020-10-13 12:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-10-18-022359', 'App\\Database\\Migrations\\People', 'default', 'App', 1602988340, 1);

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(12) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Rendy Mansur', 'Ds. Arifin No. 309, Kupang 85454, Riau', '1971-03-07 10:42:26', '2020-10-17 23:00:51'),
(2, 'Almira Palastri', 'Ki. Uluwatu No. 376, Jayapura 36373, KalSel', '2020-10-11 09:21:43', '2020-10-17 23:00:51'),
(3, 'Ratna Permata', 'Ki. Yap Tjwan Bing No. 145, Padang 91406, Lampung', '2002-05-03 19:15:46', '2020-10-17 23:00:52'),
(4, 'Hadi Tamba', 'Kpg. Umalas No. 374, Ambon 89843, Maluku', '2015-03-16 21:46:44', '2020-10-17 23:00:52'),
(5, 'Mahmud Saragih', 'Kpg. Babah No. 908, Padang 64907, BaBel', '1972-10-22 10:09:59', '2020-10-17 23:00:52'),
(6, 'Anastasia Fathonah Mayasari', 'Dk. Bakau No. 150, Bukittinggi 71057, KalSel', '2016-06-10 18:42:35', '2020-10-17 23:00:52'),
(7, 'Alambana Jagapati Prasetyo M.TI.', 'Ki. Sadang Serang No. 821, Administrasi Jakarta Utara 98628, DIY', '1994-03-14 13:20:34', '2020-10-17 23:00:52'),
(8, 'Kania Melani', 'Ds. Qrisdoren No. 104, Salatiga 64842, JaBar', '2004-10-11 21:02:37', '2020-10-17 23:00:52'),
(9, 'Danang Suwarno', 'Ki. Bakau No. 247, Metro 95905, Lampung', '2010-06-15 12:37:56', '2020-10-17 23:00:52'),
(10, 'Najwa Wulan Nurdiyanti S.Farm', 'Kpg. Raden No. 5, Pagar Alam 45949, Bengkulu', '2004-02-18 02:22:38', '2020-10-17 23:00:52'),
(11, 'Natalia Lailasari', 'Gg. Karel S. Tubun No. 246, Mojokerto 24899, SulTeng', '1986-10-03 15:23:25', '2020-10-17 23:00:52'),
(12, 'Daliman Cakrabirawa Putra M.Farm', 'Gg. Sudirman No. 248, Batu 34871, SulUt', '1979-05-30 13:50:34', '2020-10-17 23:00:52'),
(13, 'Raharja Ramadan', 'Dk. Orang No. 590, Tarakan 10693, MalUt', '1970-01-06 20:28:38', '2020-10-17 23:00:52'),
(14, 'Rachel Maryati S.I.Kom', 'Psr. Tangkuban Perahu No. 439, Probolinggo 29224, Maluku', '1986-10-04 19:25:05', '2020-10-17 23:00:52'),
(15, 'Damu Narpati', 'Jr. Jaksa No. 482, Jayapura 49533, KalSel', '2008-04-29 20:16:21', '2020-10-17 23:00:52'),
(16, 'Zamira Pertiwi M.Kom.', 'Kpg. Bambon No. 994, Sawahlunto 34537, KalBar', '2012-06-02 12:11:47', '2020-10-17 23:00:52'),
(17, 'Salwa Tina Farida', 'Kpg. Basoka No. 534, Makassar 65773, Bali', '1978-10-17 05:49:08', '2020-10-17 23:00:52'),
(18, 'Bella Irma Prastuti', 'Ki. Pahlawan No. 168, Banjarmasin 88957, KepR', '1988-05-21 16:49:01', '2020-10-17 23:00:52'),
(19, 'Rafid Emin Wasita', 'Kpg. Wahid Hasyim No. 127, Blitar 69001, Papua', '2015-09-10 21:39:25', '2020-10-17 23:00:52'),
(20, 'Cemani Prayoga', 'Jr. Jakarta No. 880, Tangerang Selatan 11050, KepR', '2005-02-02 21:16:22', '2020-10-17 23:00:52'),
(21, 'Kenzie Rajasa', 'Jln. Barat No. 812, Pangkal Pinang 41472, SulTeng', '1983-08-22 23:06:37', '2020-10-17 23:00:52'),
(22, 'Maimunah Hamima Hastuti', 'Kpg. Elang No. 119, Sorong 21189, SulTeng', '2009-03-22 14:21:22', '2020-10-17 23:00:52'),
(23, 'Hardi Prasetya', 'Gg. Basuki No. 944, Bogor 35599, SulUt', '2015-10-07 07:34:44', '2020-10-17 23:00:52'),
(24, 'Endra Latupono', 'Ki. Yosodipuro No. 341, Mataram 80369, KalSel', '1999-12-07 14:55:54', '2020-10-17 23:00:52'),
(25, 'Nabila Nuraini', 'Ki. Elang No. 948, Lhokseumawe 55268, KalBar', '1978-08-19 19:21:11', '2020-10-17 23:00:52'),
(26, 'Sakura Riyanti S.Ked', 'Psr. Yos Sudarso No. 199, Probolinggo 37417, NTB', '1987-11-07 11:43:43', '2020-10-17 23:00:52'),
(27, 'Kenari Dabukke', 'Kpg. Elang No. 948, Mataram 11780, NTB', '1991-12-15 08:57:07', '2020-10-17 23:00:52'),
(28, 'Tira Mandasari S.Psi', 'Kpg. Supomo No. 971, Pariaman 31014, Maluku', '1994-03-09 13:23:43', '2020-10-17 23:00:52'),
(29, 'Nasim Putra S.Pd', 'Ki. Juanda No. 310, Solok 22729, PapBar', '2008-02-19 04:48:06', '2020-10-17 23:00:52'),
(30, 'Janet Usyi Kusmawati', 'Psr. Flora No. 481, Padangpanjang 59851, PapBar', '2011-09-24 23:18:16', '2020-10-17 23:00:52'),
(31, 'Dinda Lailasari', 'Dk. Baan No. 891, Tebing Tinggi 48564, SulTra', '2016-08-01 20:52:33', '2020-10-17 23:00:52'),
(32, 'Ani Kayla Hartati S.E.I', 'Ki. Abdul. Muis No. 177, Pematangsiantar 95675, JaBar', '2013-08-09 20:32:37', '2020-10-17 23:00:52'),
(33, 'Cemeti Dadap Hidayat', 'Jr. Warga No. 490, Kediri 81957, JaBar', '2010-02-12 23:01:25', '2020-10-17 23:00:52'),
(34, 'Talia Astuti M.M.', 'Dk. Imam Bonjol No. 742, Balikpapan 94087, Gorontalo', '2012-07-07 09:05:43', '2020-10-17 23:00:52'),
(35, 'Ellis Pudjiastuti', 'Jln. Raden Saleh No. 414, Batam 35508, SumSel', '1970-04-06 11:46:12', '2020-10-17 23:00:52'),
(36, 'Raihan Mandala S.E.I', 'Jr. Bambon No. 881, Dumai 35500, Lampung', '1983-01-04 14:08:00', '2020-10-17 23:00:52'),
(37, 'Jinawi Martani Prabowo S.Farm', 'Jr. Badak No. 84, Langsa 64229, BaBel', '1978-11-13 18:13:24', '2020-10-17 23:00:52'),
(38, 'Belinda Rahayu', 'Gg. Tubagus Ismail No. 92, Serang 89426, Riau', '1989-09-19 08:17:48', '2020-10-17 23:00:52'),
(39, 'Oman Kala Prasetya', 'Ds. Bahagia  No. 748, Metro 87869, KalSel', '2013-06-16 07:00:34', '2020-10-17 23:00:53'),
(40, 'Septi Riyanti', 'Gg. Panjaitan No. 238, Sorong 21371, MalUt', '1997-05-27 04:30:45', '2020-10-17 23:00:53'),
(41, 'Wardi Tamba M.Kom.', 'Jln. Yap Tjwan Bing No. 239, Metro 33380, Lampung', '2019-10-05 13:00:27', '2020-10-17 23:00:53'),
(42, 'Balapati Megantara', 'Ki. Yogyakarta No. 879, Sukabumi 18705, Maluku', '2009-01-21 12:56:39', '2020-10-17 23:00:53'),
(43, 'Kanda Dimas Budiman M.M.', 'Dk. Sadang Serang No. 462, Tual 55491, JaBar', '2011-03-12 21:56:54', '2020-10-17 23:00:53'),
(44, 'Lala Suryatmi M.Ak', 'Ds. Cikutra Barat No. 367, Madiun 72289, SumUt', '1987-07-23 01:47:08', '2020-10-17 23:00:53'),
(45, 'Gatot Enteng Tampubolon S.Pt', 'Dk. Wora Wari No. 680, Bekasi 40406, KalSel', '2016-03-29 03:02:43', '2020-10-17 23:00:53'),
(46, 'Wakiman Habibi', 'Jln. Peta No. 736, Sabang 59026, DKI', '2005-09-09 11:48:31', '2020-10-17 23:00:53'),
(47, 'Gada Santoso', 'Kpg. Banda No. 233, Surakarta 96393, KalBar', '1972-06-04 15:29:40', '2020-10-17 23:00:53'),
(48, 'Jaga Santoso', 'Jln. Imam Bonjol No. 415, Kupang 91950, DIY', '2019-09-09 03:42:42', '2020-10-17 23:00:53'),
(49, 'Daliman Budiyanto', 'Psr. Nanas No. 650, Bandar Lampung 59370, DKI', '2020-10-09 22:22:54', '2020-10-17 23:00:53'),
(50, 'Ana Dewi Riyanti M.M.', 'Kpg. Thamrin No. 543, Magelang 56381, Gorontalo', '2008-12-31 15:13:17', '2020-10-17 23:00:53'),
(51, 'Hardi Prima Mangunsong S.IP', 'Dk. Mahakam No. 772, Administrasi Jakarta Pusat 62368, DIY', '2006-08-18 21:41:45', '2020-10-17 23:00:54'),
(52, 'Wardaya Prayoga S.IP', 'Kpg. Supono No. 916, Tasikmalaya 65324, DIY', '1983-08-08 14:11:09', '2020-10-17 23:00:54'),
(53, 'Vicky Kusmawati', 'Jln. Surapati No. 515, Surakarta 86033, Gorontalo', '2013-08-04 04:14:29', '2020-10-17 23:00:54'),
(54, 'Sabrina Hassanah', 'Ki. Urip Sumoharjo No. 429, Sawahlunto 71562, Banten', '1990-12-11 14:18:12', '2020-10-17 23:00:54'),
(55, 'Daniswara Manullang', 'Jln. Basudewo No. 857, Tomohon 86343, JaTim', '1997-04-10 05:21:27', '2020-10-17 23:00:54'),
(56, 'Himawan Hakim', 'Psr. Umalas No. 341, Cimahi 37246, DKI', '2004-11-27 01:06:43', '2020-10-17 23:00:54'),
(57, 'Cengkal Jailani', 'Dk. Batako No. 290, Bandar Lampung 68950, Banten', '1992-07-26 07:53:48', '2020-10-17 23:00:54'),
(58, 'Wisnu Gatra Zulkarnain S.Ked', 'Ds. Baabur Royan No. 348, Administrasi Jakarta Selatan 81083, JaTeng', '2010-08-03 08:37:44', '2020-10-17 23:00:54'),
(59, 'Wahyu Kasim Putra S.T.', 'Jr. Hasanuddin No. 987, Kotamobagu 15436, JaTeng', '1985-09-15 09:42:22', '2020-10-17 23:00:54'),
(60, 'Gaduh Mumpuni Wibisono M.M.', 'Kpg. Bhayangkara No. 277, Tomohon 81915, Bengkulu', '1986-12-12 19:27:48', '2020-10-17 23:00:54'),
(61, 'Jais Sihombing', 'Jr. Yoga No. 647, Tanjung Pinang 31817, JaTeng', '2013-03-02 08:13:03', '2020-10-17 23:00:54'),
(62, 'Pardi Waluyo Jailani S.Pt', 'Kpg. Salak No. 309, Sawahlunto 38244, KalTim', '1981-03-10 19:37:58', '2020-10-17 23:00:54'),
(63, 'Gandewa Saragih', 'Jln. Kalimantan No. 220, Semarang 51197, Maluku', '2015-10-28 03:03:17', '2020-10-17 23:00:54'),
(64, 'Amalia Purnawati S.Pt', 'Ds. W.R. Supratman No. 444, Metro 88687, JaTeng', '1983-06-05 22:59:30', '2020-10-17 23:00:54'),
(65, 'Rini Hasanah', 'Kpg. Pacuan Kuda No. 31, Prabumulih 78786, PapBar', '2000-11-09 23:32:11', '2020-10-17 23:00:54'),
(66, 'Icha Namaga S.Pt', 'Psr. Lada No. 73, Mojokerto 31292, Riau', '2009-12-01 16:05:24', '2020-10-17 23:00:54'),
(67, 'Mila Ami Hariyah', 'Gg. Bhayangkara No. 456, Mojokerto 73422, Bengkulu', '2009-11-28 12:48:08', '2020-10-17 23:00:54'),
(68, 'Winda Hana Riyanti M.TI.', 'Ds. Ters. Buah Batu No. 131, Tanjungbalai 87471, KalSel', '2001-12-01 06:53:32', '2020-10-17 23:00:54'),
(69, 'Budi Mustofa', 'Jln. Tubagus Ismail No. 699, Sukabumi 12523, KalSel', '1994-07-14 23:46:54', '2020-10-17 23:00:54'),
(70, 'Elon Iswahyudi', 'Psr. Jambu No. 643, Padangsidempuan 36777, JaTeng', '2011-11-20 08:00:45', '2020-10-17 23:00:54'),
(71, 'Paris Paris Suartini', 'Jln. Moch. Yamin No. 47, Langsa 69550, SumSel', '2018-05-30 23:41:59', '2020-10-17 23:00:54'),
(72, 'Lidya Permata', 'Jln. Bakti No. 120, Batu 13662, KalTim', '2011-03-20 23:51:51', '2020-10-17 23:00:54'),
(73, 'Puti Jane Suartini M.M.', 'Jln. Sutarjo No. 37, Bau-Bau 33735, Aceh', '2013-04-14 23:20:22', '2020-10-17 23:00:54'),
(74, 'Ayu Maria Andriani S.Gz', 'Psr. Jend. Sudirman No. 11, Jayapura 18229, JaTeng', '1986-04-17 07:12:14', '2020-10-17 23:00:54'),
(75, 'Kezia Laksita', 'Dk. Eka No. 774, Dumai 14173, Riau', '1973-10-24 07:59:10', '2020-10-17 23:00:54'),
(76, 'Ciaobella Ilsa Widiastuti S.Kom', 'Ki. Nangka No. 454, Sabang 45239, BaBel', '1974-03-18 18:31:32', '2020-10-17 23:00:54'),
(77, 'Kezia Usamah', 'Dk. Abdul. Muis No. 369, Palangka Raya 44229, Bengkulu', '2015-02-13 03:00:19', '2020-10-17 23:00:54'),
(78, 'Sari Zamira Kuswandari S.Ked', 'Jln. Karel S. Tubun No. 204, Sungai Penuh 88529, KalTim', '2001-07-16 05:27:18', '2020-10-17 23:00:54'),
(79, 'Ganep Karman Santoso', 'Ki. Padma No. 32, Jayapura 71462, KalSel', '2003-04-28 12:51:17', '2020-10-17 23:00:54'),
(80, 'Jelita Usamah', 'Psr. Baing No. 696, Tual 77521, BaBel', '1994-08-20 23:51:01', '2020-10-17 23:00:54'),
(81, 'Anastasia Maya Kuswandari S.Pd', 'Jln. Warga No. 441, Medan 43291, DIY', '2011-01-16 04:11:27', '2020-10-17 23:00:54'),
(82, 'Dimas Joko Firgantoro S.Pt', 'Psr. Nakula No. 907, Malang 76917, Papua', '1976-07-30 15:39:23', '2020-10-17 23:00:54'),
(83, 'Bahuraksa Marbun', 'Psr. Suprapto No. 609, Langsa 23201, JaTim', '2012-03-03 22:14:22', '2020-10-17 23:00:54'),
(84, 'Lasmanto Dongoran', 'Jln. Kebangkitan Nasional No. 563, Administrasi Jakarta Barat 30704, JaTeng', '1974-05-04 11:05:24', '2020-10-17 23:00:54'),
(85, 'Tiara Kartika Astuti S.Gz', 'Ds. Abang No. 744, Langsa 48939, NTT', '1999-11-02 21:14:41', '2020-10-17 23:00:54'),
(86, 'Rizki Winarno S.Farm', 'Ki. Imam No. 964, Prabumulih 46206, NTT', '2017-07-26 23:53:13', '2020-10-17 23:00:54'),
(87, 'Nalar Wacana S.Sos', 'Jr. Salam No. 29, Bandung 76643, Aceh', '2003-05-17 23:25:49', '2020-10-17 23:00:55'),
(88, 'Fathonah Kartika Usada S.I.Kom', 'Psr. Ketandan No. 171, Banda Aceh 16361, NTT', '1999-12-01 16:13:20', '2020-10-17 23:00:55'),
(89, 'Gandi Mursita Wacana', 'Jr. Babah No. 338, Tangerang Selatan 61260, SumBar', '1984-08-18 22:46:59', '2020-10-17 23:00:55'),
(90, 'Bakiono Sinaga S.Pd', 'Psr. Ki Hajar Dewantara No. 323, Padangpanjang 32750, Lampung', '1978-07-06 06:51:21', '2020-10-17 23:00:55'),
(91, 'Kamaria Karimah Pratiwi', 'Jln. Rajiman No. 918, Bima 85095, Jambi', '1984-11-22 10:10:39', '2020-10-17 23:00:55'),
(92, 'Prabawa Thamrin', 'Dk. Madrasah No. 191, Madiun 77304, KalUt', '1994-08-16 00:37:04', '2020-10-17 23:00:55'),
(93, 'Usyi Padma Anggraini', 'Jr. Sadang Serang No. 106, Banjar 78454, SulSel', '2009-01-02 19:09:51', '2020-10-17 23:00:55'),
(94, 'Tira Rahayu', 'Jln. Baranang Siang No. 967, Solok 17679, Maluku', '1980-09-23 08:56:32', '2020-10-17 23:00:55'),
(95, 'Gatot Sihotang S.E.', 'Gg. Baik No. 648, Pasuruan 58414, Bali', '1989-02-20 18:43:58', '2020-10-17 23:00:55'),
(96, 'Ajeng Wulandari S.IP', 'Jr. Sam Ratulangi No. 761, Ambon 51818, SulSel', '1977-07-17 16:43:15', '2020-10-17 23:00:55'),
(97, 'Umaya Saragih', 'Kpg. Samanhudi No. 226, Pontianak 92250, Lampung', '1982-08-31 11:05:21', '2020-10-17 23:00:55'),
(98, 'Wage Manullang M.TI.', 'Gg. Bass No. 671, Manado 44936, KalBar', '1998-03-23 18:53:17', '2020-10-17 23:00:55'),
(99, 'Usyi Hasna Hariyah', 'Psr. Rajiman No. 63, Bitung 35286, JaTeng', '1998-01-30 11:22:12', '2020-10-17 23:00:55'),
(100, 'Hendra Gunarto', 'Ki. Bacang No. 252, Salatiga 69678, Bengkulu', '2014-12-04 01:11:45', '2020-10-17 23:00:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comic`
--
ALTER TABLE `comic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comic`
--
ALTER TABLE `comic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
