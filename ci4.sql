-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Okt 2020 pada 19.03
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
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
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(16, 'Komarudin', 'komarudin', 'k', 's', 'default.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
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
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-10-11-145255', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1602429066, 1);

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
(1, 'Galar Nyoman Suwarno', 'Jr. Bhayangkara No. 954, Palu 76610, Lampung', '1986-02-26 09:08:19', '2020-10-11 10:58:54'),
(2, 'Lembah Latif Hutasoit S.Psi', 'Gg. Raya Setiabudhi No. 402, Surakarta 44240, KalSel', '1988-06-26 03:49:57', '2020-10-11 10:58:54'),
(3, 'Shania Usada S.IP', 'Psr. Peta No. 229, Banda Aceh 36047, DIY', '1978-05-06 17:04:17', '2020-10-11 10:58:54'),
(4, 'Vega Gunarto', 'Kpg. Kartini No. 133, Malang 60490, JaTeng', '2019-06-19 09:33:48', '2020-10-11 10:58:54'),
(5, 'Lurhur Siregar', 'Jr. Teuku Umar No. 30, Subulussalam 30802, Lampung', '2020-04-01 09:17:40', '2020-10-11 10:58:54'),
(6, 'Endah Nurdiyanti', 'Ds. Cikutra Timur No. 301, Sukabumi 86227, KalSel', '1985-08-14 05:03:48', '2020-10-11 10:58:54'),
(7, 'Abyasa Warsa Mahendra M.Ak', 'Ki. Dipenogoro No. 345, Binjai 53513, KalTim', '2012-03-11 11:50:30', '2020-10-11 10:58:54'),
(8, 'Usman Maulana', 'Gg. HOS. Cjokroaminoto (Pasirkaliki) No. 288, Singkawang 38328, Riau', '2003-08-08 22:51:19', '2020-10-11 10:58:54'),
(9, 'Shania Ellis Zulaika', 'Gg. Barat No. 831, Samarinda 67977, Jambi', '1999-12-22 19:42:38', '2020-10-11 10:58:54'),
(10, 'Kiandra Rini Novitasari', 'Ki. Bara Tambar No. 905, Singkawang 42208, PapBar', '1983-10-01 21:38:13', '2020-10-11 10:58:54'),
(11, 'Qori Shakila Wahyuni', 'Ds. Thamrin No. 368, Bontang 60104, NTT', '1990-04-26 00:17:50', '2020-10-11 10:58:54'),
(12, 'Yuni Safitri S.Sos', 'Jln. Gardujati No. 202, Kendari 33463, Gorontalo', '1994-11-11 00:37:30', '2020-10-11 10:58:54'),
(13, 'Clara Andriani', 'Dk. Ekonomi No. 751, Serang 21468, Bali', '2005-06-09 12:52:12', '2020-10-11 10:58:54'),
(14, 'Ajiman Lazuardi', 'Ds. Umalas No. 700, Palembang 70640, PapBar', '1974-06-08 03:40:49', '2020-10-11 10:58:54'),
(15, 'Lukman Hidayat S.T.', 'Gg. Sudirman No. 464, Tanjung Pinang 78680, KalBar', '2013-09-09 18:17:00', '2020-10-11 10:58:54'),
(16, 'Kenzie Nardi Ramadan S.I.Kom', 'Dk. Achmad Yani No. 158, Langsa 47321, Papua', '1998-03-01 22:08:50', '2020-10-11 10:58:54'),
(17, 'Maya Prastuti', 'Ds. Hang No. 969, Solok 44532, SumUt', '2009-06-23 20:41:16', '2020-10-11 10:58:54'),
(18, 'Damar Marpaung S.E.I', 'Psr. Bayan No. 280, Tasikmalaya 60794, Aceh', '2012-07-22 05:52:52', '2020-10-11 10:58:54'),
(19, 'Omar Dabukke', 'Gg. Fajar No. 886, Padang 98922, SumBar', '1991-10-23 22:05:26', '2020-10-11 10:58:54'),
(20, 'Najwa Kania Wijayanti', 'Ki. Yos Sudarso No. 665, Makassar 58566, Aceh', '2003-12-28 22:01:21', '2020-10-11 10:58:54'),
(21, 'Ghaliyati Alika Rahayu', 'Kpg. Bahagia  No. 279, Pagar Alam 85653, DKI', '1976-06-10 21:55:39', '2020-10-11 10:58:54'),
(22, 'Chandra Marwata Rajata', 'Dk. Ki Hajar Dewantara No. 968, Administrasi Jakarta Barat 20223, Bali', '1997-06-25 10:18:48', '2020-10-11 10:58:54'),
(23, 'Gatra Wijaya', 'Jr. Basuki Rahmat  No. 810, Tanjungbalai 53088, Riau', '2003-10-04 14:08:51', '2020-10-11 10:58:54'),
(24, 'Laila Suryatmi', 'Gg. Baladewa No. 609, Palangka Raya 51627, SumBar', '1986-05-14 14:53:04', '2020-10-11 10:58:54'),
(25, 'Karimah Suartini', 'Gg. Bass No. 850, Metro 67196, NTB', '2003-08-19 18:49:10', '2020-10-11 10:58:54'),
(26, 'Asmianto Reksa Budiyanto', 'Kpg. Abang No. 13, Tual 21443, DKI', '2008-06-08 00:41:27', '2020-10-11 10:58:54'),
(27, 'Vicky Zulaika', 'Dk. Uluwatu No. 279, Tomohon 86784, KalUt', '2001-11-14 17:53:11', '2020-10-11 10:58:54'),
(28, 'Ghaliyati Haryanti', 'Kpg. Gardujati No. 171, Samarinda 84796, SumBar', '2004-10-06 06:37:32', '2020-10-11 10:58:54'),
(29, 'Daru Hasta Rajasa M.Ak', 'Gg. Rumah Sakit No. 556, Administrasi Jakarta Selatan 20572, SulBar', '2017-11-26 19:02:19', '2020-10-11 10:58:54'),
(30, 'Clara Padmasari', 'Ds. Taman No. 845, Pontianak 92556, Riau', '1982-09-25 15:21:15', '2020-10-11 10:58:54'),
(31, 'Iriana Septi Sudiati M.TI.', 'Kpg. Bagonwoto  No. 299, Banjarmasin 29697, KalUt', '1970-05-23 04:08:34', '2020-10-11 10:58:54'),
(32, 'Adhiarja Nyana Wibowo', 'Gg. B.Agam Dlm No. 271, Cimahi 34915, Bali', '1981-06-27 12:55:43', '2020-10-11 10:58:54'),
(33, 'Labuh Rajasa', 'Kpg. Flora No. 648, Bima 84191, SulBar', '2003-05-18 20:30:17', '2020-10-11 10:58:54'),
(34, 'Enteng Prasetyo S.E.I', 'Jr. Kiaracondong No. 306, Administrasi Jakarta Timur 75506, KalSel', '1975-04-03 06:48:58', '2020-10-11 10:58:54'),
(35, 'Nova Kamila Hariyah', 'Dk. Gajah No. 641, Pematangsiantar 14901, MalUt', '1974-10-29 02:40:52', '2020-10-11 10:58:54'),
(36, 'Teddy Cemplunk Thamrin', 'Psr. Dago No. 28, Bukittinggi 72622, BaBel', '2004-08-02 19:58:02', '2020-10-11 10:58:54'),
(37, 'Winda Lili Maryati', 'Ki. Abdul No. 335, Tangerang 49646, BaBel', '1989-04-22 03:50:31', '2020-10-11 10:58:54'),
(38, 'Radit Asman Pradipta', 'Ds. Salak No. 819, Bontang 26694, SulTeng', '1992-03-23 11:56:49', '2020-10-11 10:58:54'),
(39, 'Elvina Laksmiwati M.TI.', 'Gg. Suharso No. 294, Tebing Tinggi 52640, Jambi', '2004-05-07 15:47:32', '2020-10-11 10:58:54'),
(40, 'Ulya Usamah', 'Ki. Lada No. 486, Gorontalo 16626, Gorontalo', '1991-10-18 03:29:09', '2020-10-11 10:58:54'),
(41, 'Darimin Suwarno', 'Kpg. Halim No. 982, Magelang 33743, Bali', '1972-04-29 21:15:23', '2020-10-11 10:58:54'),
(42, 'Lalita Kania Usada S.Sos', 'Gg. Baranang Siang Indah No. 930, Tebing Tinggi 72882, SumBar', '1970-10-31 20:53:06', '2020-10-11 10:58:54'),
(43, 'Jarwa Viktor Adriansyah', 'Gg. Basmol Raya No. 630, Prabumulih 94278, KalBar', '1994-03-14 15:51:37', '2020-10-11 10:58:54'),
(44, 'Tiara Suartini', 'Jr. Bayam No. 339, Jayapura 49842, PapBar', '1982-08-06 08:45:22', '2020-10-11 10:58:54'),
(45, 'Nadia Lestari', 'Gg. Bara No. 281, Binjai 40184, Gorontalo', '1970-03-16 12:16:37', '2020-10-11 10:58:54'),
(46, 'Oman Estiawan Ardianto', 'Ki. Pacuan Kuda No. 839, Tanjung Pinang 17008, SulUt', '1984-10-22 10:56:02', '2020-10-11 10:58:54'),
(47, 'Rosman Sihotang S.H.', 'Psr. Nanas No. 451, Prabumulih 67684, NTT', '1992-04-30 19:52:19', '2020-10-11 10:58:54'),
(48, 'Hani Kartika Hariyah S.Psi', 'Dk. Ahmad Dahlan No. 974, Probolinggo 83066, SulBar', '1970-09-01 04:12:29', '2020-10-11 10:58:54'),
(49, 'Tri Prayogo Kuswoyo', 'Psr. Tentara Pelajar No. 696, Malang 39147, NTB', '2001-03-02 02:30:50', '2020-10-11 10:58:54'),
(50, 'Edison Prabowo', 'Ki. Agus Salim No. 555, Pangkal Pinang 73500, SulBar', '1997-07-01 22:25:39', '2020-10-11 10:58:54'),
(51, 'Betania Eva Riyanti S.Psi', 'Dk. Moch. Yamin No. 16, Ambon 53188, KalUt', '2006-09-30 08:53:42', '2020-10-11 10:58:54'),
(52, 'Cinta Hasanah', 'Psr. Baha No. 87, Probolinggo 87645, KalTim', '1981-07-20 03:29:54', '2020-10-11 10:58:54'),
(53, 'Syahrini Ina Purwanti', 'Jr. Bara Tambar No. 842, Pagar Alam 87942, KalSel', '1983-12-02 11:55:57', '2020-10-11 10:58:54'),
(54, 'Siti Lestari', 'Psr. Veteran No. 716, Bau-Bau 73071, Gorontalo', '1982-07-24 19:49:45', '2020-10-11 10:58:54'),
(55, 'Ade Melani', 'Gg. Sutami No. 894, Banjarbaru 33624, BaBel', '2012-09-26 21:39:27', '2020-10-11 10:58:54'),
(56, 'Mujur Saragih M.TI.', 'Dk. Suryo Pranoto No. 711, Payakumbuh 79291, Jambi', '2008-08-08 16:26:23', '2020-10-11 10:58:54'),
(57, 'Dacin Maheswara', 'Psr. Taman No. 54, Pematangsiantar 25611, MalUt', '1984-12-29 09:41:58', '2020-10-11 10:58:54'),
(58, 'Lidya Mandasari', 'Jr. Karel S. Tubun No. 648, Bau-Bau 39149, SumUt', '1974-06-04 09:25:17', '2020-10-11 10:58:54'),
(59, 'Unjani Handayani', 'Ki. Astana Anyar No. 595, Cirebon 74122, KepR', '1993-01-12 18:39:45', '2020-10-11 10:58:54'),
(60, 'Nabila Novitasari', 'Ki. Flora No. 242, Pematangsiantar 90481, KalUt', '1994-11-13 22:56:26', '2020-10-11 10:58:54'),
(61, 'Irma Mayasari S.Farm', 'Jln. S. Parman No. 476, Sukabumi 68410, Aceh', '1979-07-21 03:27:53', '2020-10-11 10:58:54'),
(62, 'Gawati Keisha Nasyiah S.Ked', 'Psr. Bata Putih No. 626, Subulussalam 91695, Banten', '1991-04-18 09:34:14', '2020-10-11 10:58:54'),
(63, 'Ajiono Raden Prasetya S.Gz', 'Psr. Abdul Rahmat No. 43, Palangka Raya 48402, Maluku', '1978-05-31 03:46:54', '2020-10-11 10:58:54'),
(64, 'Nova Susanti', 'Psr. Otista No. 402, Pagar Alam 40933, MalUt', '1983-11-26 04:33:30', '2020-10-11 10:58:54'),
(65, 'Kardi Kusumo', 'Dk. Jaksa No. 879, Cilegon 88158, KalTim', '1996-07-25 20:14:35', '2020-10-11 10:58:55'),
(66, 'Halima Pudjiastuti', 'Jr. Barasak No. 23, Administrasi Jakarta Timur 60892, MalUt', '1991-10-20 01:26:40', '2020-10-11 10:58:55'),
(67, 'Malika Rahimah M.Ak', 'Dk. Tubagus Ismail No. 143, Pariaman 29273, KepR', '1982-08-04 13:14:58', '2020-10-11 10:58:55'),
(68, 'Agnes Kuswandari', 'Dk. Sutan Syahrir No. 702, Bontang 90010, JaBar', '1994-02-01 01:19:47', '2020-10-11 10:58:55'),
(69, 'Mulyono Najmudin', 'Ki. Rajiman No. 223, Gorontalo 94860, SulUt', '1985-08-29 09:45:05', '2020-10-11 10:58:55'),
(70, 'Ida Aryani M.Farm', 'Gg. Wahidin Sudirohusodo No. 416, Tangerang 19285, NTB', '2000-10-30 23:57:45', '2020-10-11 10:58:55'),
(71, 'Hesti Yuniar', 'Gg. Nakula No. 765, Tual 59471, Papua', '2000-05-04 11:22:04', '2020-10-11 10:58:55'),
(72, 'Sarah Hassanah S.Kom', 'Ki. Haji No. 813, Tarakan 71326, KalUt', '1980-01-06 15:32:14', '2020-10-11 10:58:55'),
(73, 'Halima Safitri', 'Ki. Bakaru No. 759, Bandar Lampung 33511, SulTeng', '1994-08-10 17:23:50', '2020-10-11 10:58:55'),
(74, 'Irfan Hardiansyah', 'Dk. Barasak No. 499, Palembang 55021, SulTeng', '2004-12-27 22:19:34', '2020-10-11 10:58:55'),
(75, 'Simon Dadap Halim', 'Gg. Dahlia No. 628, Pasuruan 56473, SulTra', '1980-09-14 18:49:34', '2020-10-11 10:58:55'),
(76, 'Jumadi Gaman Nashiruddin S.Gz', 'Gg. Yohanes No. 446, Magelang 95429, JaTeng', '2014-03-19 04:24:52', '2020-10-11 10:58:55'),
(77, 'Ira Yuniar', 'Jr. Untung Suropati No. 826, Jayapura 76595, KalBar', '2011-11-30 15:01:50', '2020-10-11 10:58:55'),
(78, 'Laras Oktaviani', 'Ki. Haji No. 480, Magelang 96583, JaTim', '2009-05-24 06:28:52', '2020-10-11 10:58:55'),
(79, 'Ami Yulianti', 'Gg. Daan No. 703, Mojokerto 27107, PapBar', '2015-05-29 02:35:31', '2020-10-11 10:58:55'),
(80, 'Rachel Widiastuti', 'Gg. Raden Saleh No. 109, Pangkal Pinang 12133, Lampung', '2000-09-28 22:54:36', '2020-10-11 10:58:55'),
(81, 'Hairyanto Siregar', 'Jln. Bambu No. 272, Kediri 53082, SulUt', '1971-02-22 09:22:55', '2020-10-11 10:58:55'),
(82, 'Cinta Suartini', 'Gg. Krakatau No. 898, Bekasi 14524, SulTra', '1978-06-19 08:41:19', '2020-10-11 10:58:55'),
(83, 'Estiawan Siregar M.Farm', 'Ds. Karel S. Tubun No. 162, Sungai Penuh 23530, Bengkulu', '1986-10-31 11:50:17', '2020-10-11 10:58:55'),
(84, 'Gading Jinawi Wibisono', 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 94, Bima 98710, PapBar', '1988-04-20 11:48:16', '2020-10-11 10:58:55'),
(85, 'Natalia Rahmawati', 'Jln. Ters. Jakarta No. 850, Cimahi 90731, Banten', '1986-11-13 04:23:30', '2020-10-11 10:58:55'),
(86, 'Naradi Okta Hardiansyah', 'Psr. Suharso No. 23, Salatiga 66932, Bali', '1981-01-11 11:06:37', '2020-10-11 10:58:55'),
(87, 'Genta Puspita', 'Ki. Wahid Hasyim No. 249, Denpasar 71457, Banten', '2007-01-31 18:42:19', '2020-10-11 10:58:55'),
(88, 'Karen Samiah Wulandari S.Farm', 'Gg. Abdul No. 221, Tidore Kepulauan 22080, KalSel', '1991-02-17 07:07:35', '2020-10-11 10:58:55'),
(89, 'Wulan Hartati M.Kom.', 'Ds. Acordion No. 70, Bontang 32357, JaTim', '1991-03-23 06:30:31', '2020-10-11 10:58:55'),
(90, 'Lantar Tampubolon', 'Ki. Sadang Serang No. 641, Batam 88602, SulSel', '1984-08-07 13:10:06', '2020-10-11 10:58:55'),
(91, 'Heru Waluyo', 'Jln. Soekarno Hatta No. 357, Tomohon 91519, Aceh', '1978-01-28 01:46:55', '2020-10-11 10:58:55'),
(92, 'Padmi Yolanda', 'Jln. Baranangsiang No. 247, Padangpanjang 38818, SumBar', '1978-12-15 22:47:14', '2020-10-11 10:58:55'),
(93, 'Dimas Martana Thamrin', 'Ds. Bambon No. 124, Pekanbaru 99267, SulUt', '2012-01-18 05:06:48', '2020-10-11 10:58:55'),
(94, 'Mahfud Wacana', 'Ds. Kusmanto No. 49, Administrasi Jakarta Selatan 91677, DIY', '1985-04-26 14:45:16', '2020-10-11 10:58:55'),
(95, 'Jaya Pradana', 'Jr. Sugiyopranoto No. 584, Pariaman 90903, SulSel', '1991-02-26 13:25:57', '2020-10-11 10:58:55'),
(96, 'Mumpuni Samosir', 'Psr. Wahidin Sudirohusodo No. 58, Metro 99755, JaTeng', '1993-03-08 05:51:34', '2020-10-11 10:58:55'),
(97, 'Kartika Widiastuti', 'Gg. Baranangsiang No. 389, Lhokseumawe 30842, SulSel', '1976-08-04 06:46:47', '2020-10-11 10:58:55'),
(98, 'Laswi Jailani', 'Gg. Bakhita No. 187, Blitar 89720, DKI', '2003-05-24 20:44:08', '2020-10-11 10:58:55'),
(99, 'Kamila Purwanti', 'Gg. K.H. Maskur No. 831, Blitar 99804, Banten', '2012-01-21 17:12:18', '2020-10-11 10:58:55'),
(100, 'Unggul Gunarto', 'Gg. Asia Afrika No. 70, Administrasi Jakarta Utara 59616, NTT', '1992-07-09 01:35:26', '2020-10-11 10:58:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
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
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
