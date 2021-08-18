-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Agu 2021 pada 06.48
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comics`
--

CREATE TABLE `comics` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `comics`
--

INSERT INTO `comics` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Hulk', 'hulk', 'Stan Lee', 'Marvel', 'hulk.jpg', NULL, NULL),
(2, 'Captain Marvel', 'captain-marvel', 'Stan Lee', 'Marvel', 'captain-marvel.jpg', NULL, NULL),
(3, 'Spiderman', 'spiderman', 'Stan Lee', 'marvel', 'spiderman.jpeg', '2021-07-11 09:28:53', '2021-07-11 09:28:53'),
(4, 'Deadpool', 'deadpool', 'Fabian Nicieza  ', 'Marvel Comics  ', 'deadpool.jpeg ', '2021-07-11 09:51:00', '2021-07-16 04:56:49'),
(17, 'Iron Man ', 'iron-man', 'Stan Lee ', 'Marvel Comics ', '1626429522_3c708365e3a4a4a28475.jpg', '2021-07-16 04:57:03', '2021-07-16 04:58:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-07-18-112425', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1626608255, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Yulia Alika Widiastuti', 'Gg. Krakatau No. 601, Payakumbuh 34023, Kalbar', '1985-01-19 23:01:43', '2021-07-18 08:05:28'),
(2, 'Harja Waluyo M.Pd', 'Ki. Ahmad Dahlan No. 990, Bandung 58428, NTB', '1990-05-25 14:51:45', '2021-07-18 08:05:28'),
(3, 'Oni Sudiati S.Farm', 'Ki. Sam Ratulangi No. 17, Padangsidempuan 83819, Jabar', '1989-01-16 06:21:37', '2021-07-18 08:05:28'),
(4, 'Chelsea Michelle Suartini', 'Dk. Pasir Koja No. 429, Dumai 91439, Kaltim', '2017-05-20 08:48:20', '2021-07-18 08:05:28'),
(5, 'Cemani Harsanto Simbolon M.Ak', 'Gg. Gading No. 290, Mataram 55249, Jatim', '2014-01-20 04:42:20', '2021-07-18 08:05:28'),
(6, 'Ira Purnawati', 'Jln. Cihampelas No. 266, Metro 16519, Sulsel', '2021-02-23 17:05:05', '2021-07-18 08:05:28'),
(7, 'Febi Palastri', 'Psr. Suniaraja No. 590, Mataram 19436, NTT', '2010-06-28 20:25:58', '2021-07-18 08:05:28'),
(8, 'Dewi Zulaika S.I.Kom', 'Jr. Basoka Raya No. 483, Palembang 12810, Banten', '2016-06-27 01:22:47', '2021-07-18 08:05:28'),
(9, 'Halima Mala Yulianti M.Ak', 'Gg. Ketandan No. 43, Cilegon 17550, Jateng', '2006-11-18 13:41:37', '2021-07-18 08:05:28'),
(10, 'Rahayu Mayasari', 'Kpg. Sam Ratulangi No. 848, Probolinggo 74288, Babel', '1972-07-08 07:12:20', '2021-07-18 08:05:28'),
(11, 'Novi Yolanda', 'Dk. Bayan No. 413, Manado 40732, Babel', '2007-12-23 14:36:18', '2021-07-18 08:05:28'),
(12, 'Yuliana Laksmiwati', 'Jr. Gedebage Selatan No. 371, Pekalongan 13572, Sulut', '2009-06-28 00:46:31', '2021-07-18 08:05:28'),
(13, 'Queen Halimah', 'Ki. Ters. Pasir Koja No. 900, Bekasi 16562, Sulsel', '1992-04-01 01:22:53', '2021-07-18 08:05:28'),
(14, 'Tina Namaga', 'Ds. Abdul. Muis No. 18, Ambon 65345, Bali', '2017-02-05 08:14:42', '2021-07-18 08:05:28'),
(15, 'Jane Ajeng Sudiati S.I.Kom', 'Gg. Gegerkalong Hilir No. 738, Serang 34293, Banten', '2016-04-16 10:45:46', '2021-07-18 08:05:28'),
(16, 'Jais Cemplunk Anggriawan', 'Gg. Yosodipuro No. 851, Padang 24976, Sumut', '1976-10-08 14:02:50', '2021-07-18 08:05:28'),
(17, 'Syahrini Yulianti', 'Kpg. Dago No. 142, Batam 80507, NTT', '1970-09-14 12:00:08', '2021-07-18 08:05:28'),
(18, 'Atma Prayoga', 'Psr. Jamika No. 4, Probolinggo 86190, NTT', '1970-08-01 18:42:50', '2021-07-18 08:05:28'),
(19, 'Widya Rina Nurdiyanti S.Psi', 'Kpg. Gremet No. 427, Blitar 57612, Aceh', '1995-12-11 18:26:17', '2021-07-18 08:05:28'),
(20, 'Harsana Gaman Najmudin S.Gz', 'Ds. Baranang No. 309, Pekalongan 17371, Babel', '2000-03-10 10:36:05', '2021-07-18 08:05:28'),
(21, 'Leo Pandu Napitupulu', 'Gg. Ciwastra No. 395, Banda Aceh 82170, Jabar', '2010-02-02 15:49:06', '2021-07-18 08:05:28'),
(22, 'Dewi Yunita Maryati S.H.', 'Ki. Jend. Sudirman No. 778, Subulussalam 44646, Lampung', '1991-12-31 07:28:13', '2021-07-18 08:05:28'),
(23, 'Raihan Prakasa', 'Kpg. Abdul. Muis No. 560, Palopo 51701, Sulteng', '1985-08-08 09:30:30', '2021-07-18 08:05:28'),
(24, 'Ian Mahendra', 'Jln. Jend. Sudirman No. 750, Subulussalam 62557, NTT', '1996-09-25 05:05:44', '2021-07-18 08:05:28'),
(25, 'Karta Prasetya M.Ak', 'Ki. Ki Hajar Dewantara No. 802, Payakumbuh 61510, Jateng', '1981-07-14 01:13:19', '2021-07-18 08:05:28'),
(26, 'Tira Rahayu', 'Ds. Bayam No. 445, Blitar 90150, Sulsel', '2012-12-06 22:16:18', '2021-07-18 08:05:28'),
(27, 'Edi Kayun Mahendra S.Psi', 'Jln. Babakan No. 19, Denpasar 39897, Sumbar', '2004-03-21 16:27:49', '2021-07-18 08:05:28'),
(28, 'Tirtayasa Respati Latupono', 'Ki. Tentara Pelajar No. 162, Palopo 45496, Papua', '1996-07-14 22:17:06', '2021-07-18 08:05:28'),
(29, 'Prabowo Cakrabuana Nugroho S.H.', 'Ki. Laksamana No. 745, Batam 19987, Kaltim', '1998-12-17 17:41:56', '2021-07-18 08:05:28'),
(30, 'Citra Hasanah', 'Ki. Rajawali No. 224, Tebing Tinggi 50552, Maluku', '1994-01-21 19:16:24', '2021-07-18 08:05:28'),
(31, 'Purwadi Sitompul', 'Ds. Moch. Yamin No. 602, Palu 87561, Sulsel', '1981-12-23 15:18:24', '2021-07-18 08:05:28'),
(32, 'Cemplunk Lazuardi', 'Jr. Bhayangkara No. 985, Denpasar 58638, Jatim', '1972-01-11 01:52:00', '2021-07-18 08:05:28'),
(33, 'Almira Farida S.Farm', 'Jln. Basoka Raya No. 853, Semarang 68756, Sulsel', '1983-07-31 16:08:20', '2021-07-18 08:05:28'),
(34, 'Tantri Ajeng Kusmawati', 'Kpg. Cut Nyak Dien No. 969, Manado 60205, Kaltara', '1991-03-10 04:05:11', '2021-07-18 08:05:28'),
(35, 'Ulva Handayani', 'Jr. Dipenogoro No. 683, Sorong 53587, Jatim', '2011-07-16 22:02:55', '2021-07-18 08:05:28'),
(36, 'Embuh Sitompul', 'Jln. Uluwatu No. 173, Medan 55608, Banten', '1991-02-03 11:26:44', '2021-07-18 08:05:28'),
(37, 'Paiman Luwar Narpati S.IP', 'Dk. Samanhudi No. 357, Administrasi Jakarta Pusat 88075, Sumbar', '1971-11-28 00:48:42', '2021-07-18 08:05:28'),
(38, 'Violet Ratna Wulandari', 'Kpg. Peta No. 266, Medan 77351, Sulsel', '1971-05-14 09:52:15', '2021-07-18 08:05:28'),
(39, 'Qori Laila Safitri S.T.', 'Jr. Sudiarto No. 845, Manado 45441, Babel', '1970-01-10 12:58:04', '2021-07-18 08:05:28'),
(40, 'Warji Maryadi Anggriawan', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 411, Banjarmasin 11054, Gorontalo', '1995-09-17 19:48:12', '2021-07-18 08:05:28'),
(41, 'Oni Pudjiastuti M.Pd', 'Psr. Tambun No. 342, Pontianak 92905, Lampung', '1977-11-24 16:22:34', '2021-07-18 08:05:28'),
(42, 'Darman Sihombing S.I.Kom', 'Gg. Yoga No. 40, Salatiga 45767, Banten', '1995-12-12 10:15:40', '2021-07-18 08:05:28'),
(43, 'Febi Chelsea Novitasari S.Pt', 'Ki. K.H. Maskur No. 14, Tanjung Pinang 14737, Sultra', '1998-09-11 11:59:29', '2021-07-18 08:05:28'),
(44, 'Qori Hariyah', 'Kpg. Basmol Raya No. 966, Metro 40269, Kaltara', '1973-10-16 16:32:38', '2021-07-18 08:05:28'),
(45, 'Vivi Haryanti M.Pd', 'Ki. Ronggowarsito No. 812, Pontianak 22213, Kalteng', '1974-04-06 16:11:31', '2021-07-18 08:05:28'),
(46, 'Latika Oktaviani', 'Gg. Sutarjo No. 952, Bitung 78638, Sulbar', '1974-04-04 03:37:42', '2021-07-18 08:05:28'),
(47, 'Gina Yuniar', 'Jr. Sutarjo No. 213, Magelang 47925, Pabar', '2005-10-06 09:22:49', '2021-07-18 08:05:28'),
(48, 'Oskar Ibun Dabukke', 'Kpg. Sugiono No. 490, Mojokerto 44564, DKI', '1971-04-30 22:16:33', '2021-07-18 08:05:28'),
(49, 'Lili Usamah', 'Gg. Salak No. 603, Serang 22394, Kalbar', '1977-05-14 03:07:05', '2021-07-18 08:05:28'),
(50, 'Yani Nasyiah', 'Ds. Achmad No. 664, Banjarbaru 84797, Sumsel', '1979-01-31 22:54:18', '2021-07-18 08:05:28'),
(51, 'Lanang Tampubolon S.I.Kom', 'Kpg. Tentara Pelajar No. 522, Lubuklinggau 92535, Jateng', '1993-05-10 22:26:36', '2021-07-18 08:05:28'),
(52, 'Kasiyah Yulia Namaga S.E.', 'Dk. Bagonwoto  No. 585, Sibolga 54929, Sumsel', '1996-03-29 18:13:18', '2021-07-18 08:05:28'),
(53, 'Mustika Mustofa', 'Psr. Batako No. 370, Bau-Bau 42217, Kalbar', '1975-11-06 15:59:17', '2021-07-18 08:05:28'),
(54, 'Dina Hassanah', 'Ki. Cikapayang No. 38, Tual 90027, Jatim', '1985-07-28 12:54:33', '2021-07-18 08:05:28'),
(55, 'Zelaya Maryati S.T.', 'Gg. Jamika No. 869, Pekalongan 28757, Bali', '2004-01-02 04:11:05', '2021-07-18 08:05:28'),
(56, 'Okto Maras Sihombing', 'Jln. Flora No. 843, Semarang 99393, Jambi', '2010-08-15 09:33:07', '2021-07-18 08:05:28'),
(57, 'Gabriella Yuniar', 'Ds. Ters. Pasir Koja No. 236, Sabang 74264, Kepri', '1999-11-06 18:42:10', '2021-07-18 08:05:28'),
(58, 'Puji Hasanah', 'Jr. Teuku Umar No. 619, Mataram 47764, Kalteng', '2003-12-09 10:38:16', '2021-07-18 08:05:28'),
(59, 'Halima Susanti M.Ak', 'Psr. Hasanuddin No. 344, Sungai Penuh 62496, Sumbar', '1990-10-30 14:35:41', '2021-07-18 08:05:28'),
(60, 'Gada Sidiq Mangunsong', 'Kpg. Veteran No. 719, Magelang 62732, Sulut', '2009-08-18 06:57:00', '2021-07-18 08:05:28'),
(61, 'Sari Handayani', 'Jr. Zamrud No. 845, Gorontalo 90746, NTT', '1990-01-03 23:00:01', '2021-07-18 08:05:28'),
(62, 'Queen Nuraini', 'Kpg. Cemara No. 58, Pangkal Pinang 62784, Jambi', '1970-05-20 19:01:50', '2021-07-18 08:05:28'),
(63, 'Galih Setiawan', 'Ki. Ki Hajar Dewantara No. 602, Kupang 81803, NTB', '2014-05-28 13:40:17', '2021-07-18 08:05:28'),
(64, 'Tedi Mustofa', 'Gg. Yos Sudarso No. 667, Serang 51352, Lampung', '1989-08-09 06:58:29', '2021-07-18 08:05:28'),
(65, 'Ani Hassanah S.Kom', 'Gg. Bahagia No. 658, Prabumulih 49310, DKI', '1999-07-06 22:10:20', '2021-07-18 08:05:28'),
(66, 'Jagaraga Saptono', 'Ds. Agus Salim No. 12, Lhokseumawe 68344, Sumbar', '1972-10-12 12:50:57', '2021-07-18 08:05:28'),
(67, 'Ina Gina Agustina', 'Gg. Baung No. 468, Palopo 28401, Sulteng', '1990-12-12 13:54:07', '2021-07-18 08:05:28'),
(68, 'Hesti Jane Haryanti S.Sos', 'Jln. Jamika No. 377, Tebing Tinggi 66739, Jatim', '1983-11-25 01:08:14', '2021-07-18 08:05:28'),
(69, 'Dina Nuraini S.I.Kom', 'Dk. Kali No. 875, Sungai Penuh 30943, Jabar', '1979-04-05 05:04:48', '2021-07-18 08:05:28'),
(70, 'Ciaobella Melani', 'Kpg. Labu No. 853, Sibolga 74356, Sulteng', '1999-07-14 23:56:09', '2021-07-18 08:05:28'),
(71, 'Melinda Yolanda', 'Jln. Bara Tambar No. 952, Batu 66761, Pabar', '1996-12-26 07:12:30', '2021-07-18 08:05:28'),
(72, 'Okto Opan Gunarto S.Pd', 'Gg. Ronggowarsito No. 49, Tual 83582, Papua', '1982-04-28 14:35:39', '2021-07-18 08:05:28'),
(73, 'Uda Purwadi Iswahyudi', 'Gg. Lumban Tobing No. 35, Pekanbaru 16142, Lampung', '2016-10-18 10:21:11', '2021-07-18 08:05:28'),
(74, 'Safina Aryani S.Pt', 'Jr. Ciwastra No. 897, Metro 14583, Pabar', '1989-08-28 04:27:01', '2021-07-18 08:05:28'),
(75, 'Rahayu Anggraini', 'Kpg. Babah No. 771, Pekalongan 13523, Bengkulu', '1997-03-08 20:02:15', '2021-07-18 08:05:28'),
(76, 'Olivia Mandasari', 'Dk. Flora No. 506, Pangkal Pinang 16929, Sulteng', '1989-12-02 14:44:44', '2021-07-18 08:05:28'),
(77, 'Zaenab Wijayanti', 'Dk. Kalimantan No. 745, Banda Aceh 88220, Maluku', '1987-08-08 20:41:03', '2021-07-18 08:05:28'),
(78, 'Daru Mahendra S.Pt', 'Kpg. Jamika No. 842, Tegal 12230, Sulut', '1986-05-01 14:24:08', '2021-07-18 08:05:28'),
(79, 'Salsabila Puspita M.Pd', 'Dk. Basmol Raya No. 899, Pangkal Pinang 26745, Sumbar', '2021-03-25 05:06:58', '2021-07-18 08:05:28'),
(80, 'Jinawi Murti Budiyanto', 'Gg. Baing No. 855, Pangkal Pinang 72958, Gorontalo', '1976-07-26 15:51:07', '2021-07-18 08:05:28'),
(81, 'Adhiarja Hutagalung', 'Jr. Sam Ratulangi No. 22, Administrasi Jakarta Utara 29481, NTT', '2016-05-14 02:22:18', '2021-07-18 08:05:28'),
(82, 'Ade Widiastuti', 'Jr. Bakit  No. 477, Lhokseumawe 70404, Maluku', '1976-05-01 04:14:57', '2021-07-18 08:05:28'),
(83, 'Puji Agustina', 'Gg. Yos Sudarso No. 749, Administrasi Jakarta Pusat 58434, Sulsel', '1978-05-08 14:39:18', '2021-07-18 08:05:28'),
(84, 'Zizi Pertiwi S.E.I', 'Psr. Eka No. 100, Cilegon 18321, Jateng', '2001-05-11 10:33:51', '2021-07-18 08:05:28'),
(85, 'Paris Hartati', 'Gg. S. Parman No. 246, Banjarbaru 16792, Pabar', '2010-04-02 20:13:00', '2021-07-18 08:05:28'),
(86, 'Jamalia Vanesa Usamah', 'Jln. Barasak No. 847, Palopo 47355, Kaltara', '2011-02-08 05:43:30', '2021-07-18 08:05:28'),
(87, 'Oskar Damu Saptono', 'Psr. Tubagus Ismail No. 87, Cimahi 97005, Jatim', '2014-11-08 15:45:10', '2021-07-18 08:05:28'),
(88, 'Vicky Azalea Melani', 'Jln. Sutan Syahrir No. 136, Makassar 35896, Lampung', '1994-08-26 08:35:42', '2021-07-18 08:05:28'),
(89, 'Rizki Jayeng Pradana S.Gz', 'Gg. Jagakarsa No. 960, Pariaman 17539, Jateng', '1970-01-06 05:33:53', '2021-07-18 08:05:28'),
(90, 'Pia Widiastuti S.Farm', 'Ds. Basuki Rahmat  No. 702, Mataram 57873, Maluku', '1985-11-09 04:25:07', '2021-07-18 08:05:28'),
(91, 'Rudi Maheswara', 'Ki. Gajah Mada No. 352, Ternate 26617, NTT', '2011-01-18 10:09:14', '2021-07-18 08:05:28'),
(92, 'Joko Hutagalung M.TI.', 'Kpg. Otto No. 758, Parepare 91658, Sumbar', '2018-12-30 17:41:19', '2021-07-18 08:05:28'),
(93, 'Syahrini Ina Namaga', 'Jr. Camar No. 316, Probolinggo 79356, Kaltim', '1975-08-11 09:14:53', '2021-07-18 08:05:28'),
(94, 'Usyi Pratiwi', 'Psr. Jamika No. 109, Sungai Penuh 88541, Bengkulu', '1999-04-26 08:32:52', '2021-07-18 08:05:28'),
(95, 'Hesti Wahyuni', 'Gg. Bass No. 43, Ambon 94615, Sulbar', '1984-04-22 11:07:36', '2021-07-18 08:05:28'),
(96, 'Cahyo Saragih S.Psi', 'Jln. Honggowongso No. 733, Surabaya 27812, Jabar', '1978-05-09 09:35:43', '2021-07-18 08:05:28'),
(97, 'Widya Palastri', 'Kpg. Cikapayang No. 710, Banjarmasin 60939, Malut', '2004-08-17 02:10:21', '2021-07-18 08:05:28'),
(98, 'Devi Paulin Zulaika S.IP', 'Jr. Bayan No. 250, Bengkulu 71752, DIY', '1986-10-04 00:38:32', '2021-07-18 08:05:28'),
(99, 'Bella Anggraini', 'Jln. Bara Tambar No. 314, Banjarmasin 59203, Gorontalo', '1992-07-27 17:13:51', '2021-07-18 08:05:28'),
(100, 'Kalim Zulkarnain S.T.', 'Jln. Kiaracondong No. 276, Tebing Tinggi 22731, Sulsel', '1979-08-16 04:35:55', '2021-07-18 08:05:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comics`
--
ALTER TABLE `comics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
