-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Feb 2016 pada 01.54
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simdapel_new`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `id` int(11) NOT NULL,
  `nama_bidang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bidang`
--

INSERT INTO `bidang` (`id`, `nama_bidang`) VALUES
(1, 'Kepala'),
(2, 'Tata Usaha'),
(3, 'Statistik Sosial'),
(4, 'Statistik Produksi'),
(5, 'Statistik Distribusi'),
(6, 'Neraca Wilayah dan Analisis Statistik'),
(7, 'Integrasi Pengolahan dan Diseminasi Statistik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_inventori`
--

CREATE TABLE `data_inventori` (
  `id` int(11) NOT NULL,
  `no_cd` varchar(255) NOT NULL,
  `label_cd` varchar(255) NOT NULL,
  `nama_data` varchar(255) NOT NULL,
  `tahun` char(4) NOT NULL,
  `rincian` varchar(255) DEFAULT NULL,
  `format` varchar(255) NOT NULL,
  `jumlah_rec` int(11) DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `file_size_unit` varchar(2) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `nama_layout` varchar(255) DEFAULT NULL,
  `subjek_id` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operator_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `data_inventori`
--

INSERT INTO `data_inventori` (`id`, `no_cd`, `label_cd`, `nama_data`, `tahun`, `rincian`, `format`, `jumlah_rec`, `file_size`, `file_size_unit`, `keterangan`, `nama_layout`, `subjek_id`, `create_time`, `operator_id`) VALUES
(1, '203199201', 'susenas 92', 'SSN92_53', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 20046, 8966, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(2, '203199201', 'susenas 92', 'SSN92_54', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 4651, 2081, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(3, '203199201', 'susenas 92', 'SSN92_61', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 12371, 5534, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(4, '203199201', 'susenas 92', 'SSN92_62', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 5015, 2244, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(5, '203199201', 'susenas 92', 'SSN92_63', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 9600, 4294, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(6, '203199201', 'susenas 92', 'SSN92_64', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 5019, 2245, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(7, '203199201', 'susenas 92', 'SSN92_71', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 5974, 2672, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(8, '203199201', 'susenas 92', 'SSN92_72', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 5473, 2448, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(9, '203199201', 'susenas 92', 'SSN92_73', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 20620, 9223, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(10, '203199201', 'susenas 92', 'SSN92_74', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 5761, 2577, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(11, '203199201', 'susenas 92', 'SSN92_81', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 10645, 4762, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(12, '203199201', 'susenas 92', 'SSN92_82', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 4501, 2014, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(13, '203199201', 'susenas 92', 'SSN92_KOR', '1992', 'kor', 'txt', 295345, 140174, 'KB', 'Data KOR SSN92', 'lay_ssn92_-kor.pdf', 3, '2016-01-18 11:31:13', 1),
(14, '203199301', 'susenas 93 M', 'SSN93_11', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 186912, 34864, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(15, '203199301', 'susenas 93 M', 'SSN93_12', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 284059, 52984, 'KB', 'Data MODUL Hasil', 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(16, '203199301', 'susenas 93 M', 'SSN93_13', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 171955, 32074, 'KB', 'MARK-UP', 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(17, '203199301', 'susenas 93 M', 'SSN93_14', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 154520, 28822, 'KB', 'Rec : 189', 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(18, '203199301', 'susenas 93 M', 'SSN93_15', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 106918, 19943, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(19, '203199301', 'susenas 93 M', 'SSN93_16', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 203875, 38028, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(20, '203199301', 'susenas 93 M', 'SSN93_17', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 95347, 17785, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(21, '203199301', 'susenas 93 M', 'SSN93_18', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 207158, 38640, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(22, '203199301', 'susenas 93 M', 'SSN93_31', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 302831, 56486, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(23, '203199301', 'susenas 93 M', 'SSN93_32', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 798066, 148859, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(24, '203199301', 'susenas 93 M', 'SSN93_33', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 734193, 136945, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(25, '203199302', 'susenas 93 M', 'SSN93_34', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 240287, 44820, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(26, '203199302', 'susenas 93 M', 'SSN93_35', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 862106, 160803, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(27, '203199302', 'susenas 93 M', 'SSN93_51', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 188833, 35222, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(28, '203199302', 'susenas 93 M', 'SSN93_52', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 207104, 38630, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(29, '203199302', 'susenas 93 M', 'SSN93_53', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 158769, 29615, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(30, '203199302', 'susenas 93 M', 'SSN93_54', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 60392, 11265, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(31, '203199302', 'susenas 93 M', 'SSN93_61', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 172879, 32246, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(32, '203199302', 'susenas 93 M', 'SSN93_62', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 106843, 19929, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(33, '203199302', 'susenas 93 M', 'SSN93_63', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 179022, 33992, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(34, '203199302', 'susenas 93 M', 'SSN93_64', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 116629, 21755, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(35, '203199302', 'susenas 93 M', 'SSN93_71', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 130526, 24347, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(36, '203199302', 'susenas 93 M', 'SSN93_72', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 108803, 20295, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(37, '203199302', 'susenas 93 M', 'SSN93_73', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 211593, 39468, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(38, '203199302', 'susenas 93 M', 'SSN93_74', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 106726, 19907, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(39, '203199302', 'susenas 93 M', 'SSN93_81', '1993', 'modul_konsumsi-pendapatan_ rt', 'txt', 102113, 19047, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(40, '203199201', 'susenas 92', 'SSN92_13', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 9719, 4347, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(41, '203199201', 'susenas 92', 'SSN92_14', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 7561, 3382, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(42, '203199201', 'susenas 92', 'SSN92_15', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 5241, 2345, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(43, '203199201', 'susenas 92', 'SSN92_16', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 12472, 5579, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(44, '203199201', 'susenas 92', 'SSN92_17', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 4523, 2023, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(45, '203199201', 'susenas 92', 'SSN92_18', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 10480, 4688, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(46, '203199201', 'susenas 92', 'SSN92_31', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 14108, 6311, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(47, '203199201', 'susenas 92', 'SSN92_32', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 47518, 21254, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(48, '203199201', 'susenas 92', 'SSN92_33', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 34040, 15225, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(49, '203199201', 'susenas 92', 'SSN92_34', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 8732, 3906, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(50, '203199201', 'susenas 92', 'SSN92_35', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 41977, 18775, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(51, '203199201', 'susenas 92', 'SSN92_51', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 8028, 3591, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(52, '203199201', 'susenas 92', 'SSN92_52', '1992', 'modul_kesehatan-pendidikan-perumahan', 'txt', 17356, 7763, 'KB', NULL, 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(53, '307909601', 'PODES 90_96', 'PODIN95_34', '1995', 'podes inti', 'txt', 437, 304, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(54, '307909601', 'PODES 90_96', 'PODIN95_35', '1995', 'podes inti', 'txt', 8427, 5835, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(55, '307909601', 'PODES 90_96', 'PODIN95_51', '1995', 'podes inti', 'txt', 640, 444, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(56, '307909601', 'PODES 90_96', 'PODIN95_52', '1995', 'podes inti', 'txt', 597, 414, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(57, '307909601', 'PODES 90_96', 'PODIN95_53', '1995', 'podes inti', 'txt', 1743, 1027, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(58, '307909601', 'PODES 90_96', 'PODIN95_54', '1995', 'podes inti', 'txt', 442, 307, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(59, '307909601', 'PODES 90_96', 'PODIN95_61', '1995', 'podes inti', 'txt', 1393, 965, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(60, '307909601', 'PODES 90_96', 'PODIN95_62', '1995', 'podes inti', 'txt', 1219, 845, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(61, '307909601', 'PODES 90_96', 'PODIN95_63', '1995', 'podes inti', 'txt', 2169, 1502, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(62, '307909601', 'PODES 90_96', 'PODIN95_64', '1995', 'podes inti', 'txt', 1115, 773, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(63, '307909601', 'PODES 90_96', 'PODIN95_71', '1995', 'podes inti', 'txt', 1441, 998, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(64, '307909601', 'PODES 90_96', 'PODIN95_72', '1995', 'podes inti', 'txt', 1383, 958, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(65, '307909601', 'PODES 90_96', 'PODIN95_73', '1995', 'podes inti', 'txt', 2711, 1878, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(66, '307909601', 'PODES 90_96', 'PODIN95_74', '1995', 'podes inti', 'txt', 847, 587, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(67, '307909601', 'PODES 90_96', 'PODIN95_81', '1995', 'podes inti', 'txt', 1517, 1051, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(68, '307909601', 'PODES 90_96', 'PODIN95_82', '1995', 'podes inti', 'txt', 2287, 1584, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(69, '103198601', 'SE 86', 'SE86_71S', '1986', 'se86_angkutan jalan raya', 'txt', 15220, 1695, 'KB', 'Ank. jl.raya rec.112', 'lay_se86_71.pdf', 3, '2016-01-18 11:31:13', 1),
(70, '215199301', 'TERNAK 93', 'TERNAK93_64_CL', '1993', 'peternakan', 'txt', 19256, 2050, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(71, '215199301', 'TERNAK 93', 'TERNAK93_71_CL', '1993', 'peternakan', 'txt', 38001, 1046, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(72, '215199301', 'TERNAK 93', 'TERNAK93_72_CL', '1993', 'peternakan', 'txt', 39588, 4214, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(73, '215199301', 'TERNAK 93', 'TERNAK93_73_CL', '1993', 'peternakan', 'txt', 97202, 10347, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(74, '215199301', 'TERNAK 93', 'TERNAK93_74_CL', '1993', 'peternakan', 'txt', 21641, 2304, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(75, '215199301', 'TERNAK 93', 'TERNAK93_81_CL', '1993', 'peternakan', 'txt', 18224, 1942, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(76, '215199301', 'TERNAK 93', 'TERNAK93_82_CL', '1993', 'peternakan', 'txt', 36782, 3916, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(77, '215199301', 'TERNAK 93', 'SSNAK_IND', '1993', 'peternakan', 'txt', 1455181, 162003, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(78, '215199301', 'TERNAK 93', 'TERNAK93_11_SS', '1993', 'peternakan', 'txt', 52730, 5871, 'KB', 'Rec. 112/22400', NULL, 3, '2016-01-18 11:31:13', 1),
(79, '215199301', 'TERNAK 93', 'TERNAK93_12_SS', '1993', 'peternakan', 'txt', 63192, 7036, 'KB', 'INFLATE', NULL, 3, '2016-01-18 11:31:13', 1),
(80, '215199301', 'TERNAK 93', 'TERNAK93_13_SS', '1993', 'peternakan', 'txt', 44068, 4907, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(81, '215199301', 'TERNAK 93', 'TERNAK93_14_SS', '1993', 'peternakan', 'txt', 24896, 2772, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(82, '215199301', 'TERNAK 93', 'TERNAK93_15_SS', '1993', 'peternakan', 'txt', 28073, 3126, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(83, '215199301', 'TERNAK 93', 'TERNAK93_16_SS', '1993', 'peternakan', 'txt', 35070, 3905, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(84, '215199301', 'TERNAK 93', 'TERNAK93_17_SS', '1993', 'peternakan', 'txt', 22501, 2455, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(85, '215199301', 'TERNAK 93', 'TERNAK93_18_SS', '1993', 'peternakan', 'txt', 47921, 5335, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(86, '215199301', 'TERNAK 93', 'TERNAK93_31_SS', '1993', 'peternakan', 'txt', 5552, 619, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(87, '215199301', 'TERNAK 93', 'TERNAK93_32_SS', '1993', 'peternakan', 'txt', 97762, 10884, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(88, '215199301', 'TERNAK 93', 'TERNAK93_33_SS', '1993', 'peternakan', 'txt', 143754, 16004, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(89, '215199301', 'TERNAK 93', 'TERNAK93_34_SS', '1993', 'peternakan', 'txt', 59253, 6597, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(90, '215199301', 'TERNAK 93', 'TERNAK93_35_SS', '1993', 'peternakan', 'txt', 183774, 19268, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(91, '215199301', 'TERNAK 93', 'TERNAK93_51_SS', '1993', 'peternakan', 'txt', 82650, 9202, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(92, '215199301', 'TERNAK 93', 'TERNAK93_52_SS', '1993', 'peternakan', 'txt', 60549, 6741, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(93, '215199301', 'TERNAK 93', 'TERNAK93_53_SS', '1993', 'peternakan', 'txt', 95807, 10667, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(94, '215199301', 'TERNAK 93', 'TERNAK93_54_SS', '1993', 'peternakan', 'txt', 43610, 4856, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(95, '215199301', 'TERNAK 93', 'TERNAK93_61_SS', '1993', 'peternakan', 'txt', 49169, 5474, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(96, '215199301', 'TERNAK 93', 'TERNAK93_62_SS', '1993', 'peternakan', 'txt', 20869, 2327, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(97, '215199301', 'TERNAK 93', 'TERNAK93_63_SS', '1993', 'peternakan', 'txt', 23690, 2638, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(98, '215199301', 'TERNAK 93', 'TERNAK93_64_SS', '1993', 'peternakan', 'txt', 19256, 2144, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(99, '215199301', 'TERNAK 93', 'TERNAK93_71_SS', '1993', 'peternakan', 'txt', 38001, 4231, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(100, '215199301', 'TERNAK 93', 'TERNAK93_72_SS', '1993', 'peternakan', 'txt', 39588, 4408, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(101, '215199301', 'TERNAK 93', 'TERNAK93_73_SS', '1993', 'peternakan', 'txt', 97202, 10882, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(102, '215199301', 'TERNAK 93', 'TERNAK93_74_SS', '1993', 'peternakan', 'txt', 21641, 2410, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(103, '215199301', 'TERNAK 93', 'TERNAK93_81_SS', '1993', 'peternakan', 'txt', 18244, 2032, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(104, '215199301', 'TERNAK 93', 'TERNAK93_82_SS', '1993', 'peternakan', 'txt', 36782, 4095, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(105, '215200301', 'TERNAK 2003', 'STU_12', '2003', 'peternakan', 'dbf', NULL, 51666, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(106, '215200301', 'TERNAK 2003', 'STU_13', '2003', 'peternakan', 'dbf', NULL, 30773, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(107, '215200301', 'TERNAK 2003', 'STU_14', '2003', 'peternakan', 'dbf', NULL, 34869, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(108, '215200301', 'TERNAK 2003', 'STU_15', '2003', 'peternakan', 'dbf', NULL, 19509, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(109, '215200301', 'TERNAK 2003', 'STU_16', '2003', 'peternakan', 'dbf', NULL, 24662, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(110, '215200301', 'TERNAK 2003', 'STU_17', '2003', 'peternakan', 'dbf', NULL, 14880, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(111, '215200301', 'TERNAK 2003', 'STU_18', '2003', 'peternakan', 'dbf', NULL, 44285, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(112, '215200301', 'TERNAK 2003', 'STU_19', '2003', 'peternakan', 'dbf', NULL, 7544, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(113, '215200301', 'TERNAK 2003', 'STU_31', '2003', 'peternakan', 'dbf', NULL, 2650, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(114, '215200301', 'TERNAK 2003', 'STU_32', '2003', 'peternakan', 'dbf', NULL, 56238, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(115, '215200301', 'TERNAK 2003', 'STU_33', '2003', 'peternakan', 'dbf', NULL, 90124, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(116, '215200301', 'TERNAK 2003', 'STU_34', '2003', 'peternakan', 'dbf', NULL, 10891, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(117, '215200301', 'TERNAK 2003', 'STU_35', '2003', 'peternakan', 'dbf', NULL, 109715, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(118, '215200301', 'TERNAK 2003', 'STU_36', '2003', 'peternakan', 'dbf', NULL, 16535, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(119, '215200301', 'TERNAK 2003', 'STU_51', '2003', 'peternakan', 'dbf', NULL, 18190, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(120, '215200301', 'TERNAK 2003', 'STU_52', '2003', 'peternakan', 'dbf', NULL, 30998, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(121, '215200301', 'TERNAK 2003', 'STU_53', '2003', 'peternakan', 'dbf', NULL, 41123, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(122, '215200301', 'TERNAK 2003', 'STU_61', '2003', 'peternakan', 'dbf', NULL, 29171, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(123, '302200503', 'IMPOR 2005', 'IMPD_05', '2005', 'Import', 'dbf', 1794514, 634700, 'KB', 'Bln. 1_3', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(124, '302200504', 'IMPOR 2005', 'IMPD_05', '2005', 'Import', 'dbf', 1827999, 647079, 'KB', 'Bln. 4_6', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(125, '302200505', 'IMPOR 2005', 'IMPD_05', '2005', 'Import', 'dbf', 1771258, 627078, 'KB', 'Bln. 7_9', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(126, '302200506', 'IMPOR 2005', 'IMPD_05', '2005', 'Import', 'dbf', 1575499, 557730, 'KB', 'Bln. 10_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(127, '302200507', 'IMPOR 2005', 'IMID_05', '2005', 'Import', 'dbf', 6965452, 785663, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(128, '302200601', 'IMPOR 2006', 'ISUM_06', '2006', 'Import', 'dbf', 1993089, 414566, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(129, '302200601', 'IMPOR 2006', 'ICTR_06', '2006', 'Import', 'dbf', 2725644, 528781, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(130, '302200601', 'IMPOR 2006', 'IMID_06', '2006', 'Import', 'dbf', 7290380, 823838, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(131, '302200601', 'IMPOR 2006', 'IMP_06', '2006', 'Import', 'dbf', 735934, 296601, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(132, '302200601', 'IMPOR 2006', 'IMPD_06', '2006', 'Import', 'dbf', 7294495, 2582264, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(133, '302200701', 'IMPOR 2007', 'ISUM_07', '2007', 'Import', 'dbf', NULL, 296601, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(134, '302200701', 'IMPOR 2007', 'ICTR_07', '2007', 'Import', 'dbf', NULL, 296601, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(135, '302200701', 'IMPOR 2007', 'IMID_07', '2007', 'Import', 'dbf', NULL, 296601, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(136, '302200701', 'IMPOR 2007', 'IMP_07', '2007', 'Import', 'dbf', NULL, 296601, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(137, '302200701', 'IMPOR 2007', 'IMPD_07', '2007', 'Import', 'dbf', NULL, 296601, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(138, '302200701', 'IMPOR 2007', 'ICHX_2007', '2007', 'Import', 'rar', NULL, 296601, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(139, '302200701', 'IMPOR 2007', 'ISHX_2007', '2007', 'Import', 'rar', NULL, 296601, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(140, '220849001', 'BIOSKOP 84_90', 'BIOS84', '1984', 'bioskop', 'txt', 304959, 12509, 'KB', 'REC. 46/4600', 'lay_bios8485.pdf', 3, '2016-01-18 11:31:13', 1),
(141, '220849001', 'BIOSKOP 84_90', 'BIOS85', '1985', 'bioskop', 'txt', 314358, 12894, 'KB', NULL, 'lay_bios8485.pdf', 3, '2016-01-18 11:31:13', 1),
(142, '220849001', 'BIOSKOP 84_90', 'BIOS86', '1986', 'bioskop', 'txt', 323534, 14850, 'KB', NULL, 'lay_bios8687.pdf', 3, '2016-01-18 11:31:13', 1),
(143, '220849001', 'BIOSKOP 84_90', 'BIOS87', '1987', 'bioskop', 'txt', 346604, 15909, 'KB', NULL, 'lay_bios8687.pdf', 3, '2016-01-18 11:31:13', 1),
(144, '220849001', 'BIOSKOP 84_90', 'BIOS88', '1988', 'bioskop', 'txt', 356305, 16702, 'KB', NULL, 'lay_bios8889.pdf', 3, '2016-01-18 11:31:13', 1),
(145, '220849001', 'BIOSKOP 84_90', 'BIOS89', '1989', 'bioskop', 'txt', 356348, 16704, 'KB', NULL, 'lay_bios8889.pdf', 3, '2016-01-18 11:31:13', 1),
(146, '220849001', 'BIOSKOP 84_90', 'BIOS90', '1990', 'bioskop', 'txt', 385773, 18084, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(147, '220849001', 'BIOSKOP 84_90', 'BIOS91', '1991', 'bioskop', 'txt', 258540, 16807, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(148, '221889001', 'HOTEL 88_90', 'HOTEL88', '1988', 'hotel', 'txt', 489470, 40152, 'KB', 'Rec. 82/8200', NULL, 3, '2016-01-18 11:31:13', 1),
(149, '221889001', 'HOTEL 88_90', 'HOTEL89', '1989', 'hotel', 'txt', 465776, 37299, 'KB', 'Rec. 80/3200', NULL, 3, '2016-01-18 11:31:13', 1),
(150, '221889001', 'HOTEL 88_90', 'HOTEL90', '1990', 'hotel', 'txt', 448507, 35916, 'KB', 'Rec. 80/8000', NULL, 3, '2016-01-18 11:31:13', 1),
(151, '222199101', 'WNA 91', 'WNA88_TRGAB12', '1988', 'warga negara asing', 'txt', 14873, 2528, 'KB', 'Rec. 172/1720', NULL, 3, '2016-01-18 11:31:13', 1),
(152, '222199101', 'WNA 91', 'WNA91', '1991', 'warga negara asing', 'txt', 7603, 1448, 'KB', 'Rec. 193/1930', NULL, 3, '2016-01-18 11:31:13', 1),
(153, '208980201', 'SUSI 1998_2002', 'SUSI98', '1998', 'survei usaha terintegrasi', 'txt', 88789, 76823, 'KB', NULL, 'lay_susi98.pdf', 3, '2016-01-18 11:31:13', 1),
(154, '208980201', 'SUSI 1998_2002', 'SUSI99', '1999', 'survei usaha terintegrasi', 'dbf', 85156, 82076, 'KB', NULL, 'lay_susi99.pdf', 3, '2016-01-18 11:31:13', 1),
(155, '208980201', 'SUSI 1998_2002', 'SUSI00', '2000', 'survei usaha terintegrasi', 'dbf', 54586, 42490, 'KB', NULL, 'lay_susi2000.pdf', 3, '2016-01-18 11:31:13', 1),
(156, '208980201', 'SUSI 1998_2002', 'SUSI01', '2001', 'survei usaha terintegrasi', 'dbf', 55712, 41952, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(157, '208980201', 'SUSI 1998_2002', 'SUSI02', '2002', 'survei usaha terintegrasi', 'dbf', 53959, 40632, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(158, '208200301', 'SUSI 2003', 'SUSI03', '2003', 'survei usaha terintegrasi', 'dbf', 42194, 62227, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(159, '208200401', 'SUSI 2004', 'SUSI04', '2004', 'survei usaha terintegrasi', 'dbf', 198335, 215386, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(160, '203199302', 'susenas 93 M', 'SSN93_82', '1993', 'modul konsumsi-pendapatan rt', 'txt', 69632, 12988, 'KB', NULL, 'lay_ssn93_mk.pdf', 3, '2016-01-18 11:31:13', 1),
(161, '203939601', 'susenas 93_96', 'SSN93_11_K', '1993', 'kor', 'txt', 55466, 7205, 'KB', 'Data KOR SSN93', 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(162, '203939601', 'susenas 93_96', 'SSN93_12_K', '1993', 'kor', 'txt', 86727, 11265, 'KB', 'Data KOR SSN93', 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(163, '203939601', 'susenas 93_96', 'SSN93_13_K', '1993', 'kor', 'txt', 51912, 6743, 'KB', 'Rec : 131', 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(164, '203939601', 'susenas 93_96', 'SSN93_14_K', '1993', 'kor', 'txt', 48880, 6349, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(165, '203939601', 'susenas 93_96', 'SSN93_15_K', '1993', 'kor', 'txt', 33621, 4367, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(166, '203939601', 'susenas 93_96', 'SSN93_16_K', '1993', 'kor', 'txt', 61476, 7985, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(167, '203939601', 'susenas 93_96', 'SSN93_17_K', '1993', 'kor', 'txt', 29765, 3866, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(168, '203939601', 'susenas 93_96', 'SSN93_18_K', '1993', 'kor', 'txt', 64207, 8340, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(169, '203939601', 'susenas 93_96', 'SSN93_31_K', '1993', 'kor', 'txt', 92181, 11973, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(170, '203939601', 'susenas 93_96', 'SSN93_32_K', '1993', 'kor', 'txt', 239894, 31159, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(171, '203939601', 'susenas 93_96', 'SSN93_33_K', '1993', 'kor', 'txt', 220090, 28586, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(172, '203939601', 'susenas 93_96', 'SSN93_34_K', '1993', 'kor', 'txt', 66501, 8638, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(173, '203939601', 'susenas 93_96', 'SSN93_35_K', '1993', 'kor', 'txt', 254047, 32997, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(174, '203939601', 'susenas 93_96', 'SSN93_51_K', '1993', 'kor', 'txt', 55714, 7237, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(175, '203939601', 'susenas 93_96', 'SSN93_52_K', '1993', 'kor', 'txt', 61651, 8008, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(176, '203939601', 'susenas 93_96', 'SSN93_53_K', '1993', 'kor', 'txt', 51926, 6745, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(177, '203939601', 'susenas 93_96', 'SSN93_54_K', '1993', 'kor', 'txt', 23932, 3109, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(178, '203939601', 'susenas 93_96', 'SSN93_61_K', '1993', 'kor', 'txt', 55386, 7194, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(179, '203939601', 'susenas 93_96', 'SSN93_62_K', '1993', 'kor', 'txt', 33215, 4315, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(180, '203939601', 'susenas 93_96', 'SSN93_63_K', '1993', 'kor', 'txt', 51745, 6271, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(181, '203939601', 'susenas 93_96', 'SSN93_64_K', '1993', 'kor', 'txt', 34135, 4434, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(182, '203939601', 'susenas 93_96', 'SSN93_71_K', '1993', 'kor', 'txt', 40320, 5237, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(183, '203939601', 'susenas 93_96', 'SSN93_72_K', '1993', 'kor', 'txt', 33892, 4402, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(184, '203939601', 'susenas 93_96', 'SSN93_73_K', '1993', 'kor', 'txt', 66730, 8668, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(185, '203939601', 'susenas 93_96', 'SSN93_74_K', '1993', 'kor', 'txt', 33271, 4322, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(186, '203939601', 'susenas 93_96', 'SSN93_81_K', '1993', 'kor', 'txt', 33378, 4336, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(187, '203939601', 'susenas 93_96', 'SSN93_82_K', '1993', 'kor', 'txt', 27516, 3574, 'KB', NULL, 'lay_ssn93_k.pdf', 3, '2016-01-18 11:31:13', 1),
(188, '203949601', 'susenas 93_96', 'SSN94_RMF', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 115558, 33743, 'KB', 'Rec : 297/24620', 'lay_ssn94.pdf', 3, '2016-01-18 11:31:13', 1),
(189, '203949601', 'susenas 93_96', 'SSN94_IDF', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 833029, 114705, 'KB', 'Rec : 039/27800', 'lay_ssn94.pdf', 3, '2016-01-18 11:31:13', 1),
(190, '203949601', 'susenas 94', 'SSN94_11_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1900, 116, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(191, '203939601', 'susenas 94', 'SSN94_12_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 2901, 176, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(192, '203939601', 'susenas 94', 'SSN94_13_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1707, 104, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(193, '203939601', 'susenas 94', 'SSN94_14_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1642, 100, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(194, '203939601', 'susenas 94', 'SSN94_15_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1138, 69, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(195, '203939601', 'susenas 94', 'SSN94_16_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 2035, 124, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(196, '203939601', 'susenas 94', 'SSN94_17_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1014, 62, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(197, '203939601', 'susenas 94', 'SSN94_18_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 2072, 126, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(198, '203939601', 'susenas 94', 'SSN94_31_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 8115, 492, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(199, '203939601', 'susenas 94', 'SSN94_32_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 8115, 492, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(200, '203939601', 'susenas 94', 'SSN94_33_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 6967, 422, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(201, '203939601', 'susenas 94', 'SSN94_34_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 2283, 139, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(202, '203939601', 'susenas 94', 'SSN94_35_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 8747, 530, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(203, '203939601', 'susenas 94', 'SSN94_51_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1901, 116, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(204, '203939601', 'susenas 94', 'SSN94_52_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 2165, 132, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(205, '203939601', 'susenas 94', 'SSN94_53_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1782, 108, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(206, '203939601', 'susenas 94', 'SSN94_54_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 893, 55, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(207, '203939601', 'susenas 94', 'SSN94_61_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1905, 116, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(208, '203939601', 'susenas 94', 'SSN94_62_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1138, 69, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(209, '203939601', 'susenas 94', 'SSN94_63_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1782, 108, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(210, '203939601', 'susenas 94', 'SSN94_64_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1131, 69, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(211, '203939601', 'susenas 94', 'SSN94_71_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1400, 85, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(212, '203939601', 'susenas 94', 'SSN94_72_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1142, 70, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(213, '203939601', 'susenas 94', 'SSN94_73_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 2234, 136, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(214, '203939601', 'susenas 94', 'SSN94_74_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1142, 70, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(215, '203939601', 'susenas 94', 'SSN94_81_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1132, 69, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(216, '203939601', 'susenas 94', 'SSN94_82_M_KSR', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 1020, 62, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(217, '203939601', 'susenas 93_96', 'SSN94_KESRA_IND', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 69403, 4203, 'KB', 'Rec : 60', 'lay_ssn94.pdf', 3, '2016-01-18 11:31:13', 1),
(218, '203939601', 'susenas 93_96', 'SSN94_RMT', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 115558, 33291, 'KB', 'Rec : 293/Sebelum di Inflate', 'lay_ssn94.pdf', 3, '2016-01-18 11:31:13', 1),
(219, '203939601', 'susenas 93_96', 'SSN94_MODUL', '1994', 'modul kesejahteraan rt-sosbud', 'txt', 5058, 1458, 'KB', 'Rec : 293/Data Orang Mati', 'lay_ssn94.pdf', 3, '2016-01-18 11:31:13', 1),
(220, '203939601', 'susenas 93_96', 'SSN94_INDVIDU', '1994', 'modul individu', 'txt', 833029, 114705, 'KB', 'Rec : 293/Sebelum di Inflate', 'lay_ssn94.pdf', 3, '2016-01-18 11:31:13', 1),
(221, '203939601', 'susenas 94', 'SSN95_K1', '1995', 'modul kesehatan', 'txt', 282804, 27342, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(222, '203939601', 'susenas 94', 'SSN95_K2', '1995', 'modul kesehatan', 'txt', 282804, 23475, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(223, '203939601', 'susenas 93_96', 'SSN95_PD1', '1995', 'modul pendidikan', 'txt', 273109, 28538, 'KB', 'Rec : 105/23100', 'lay_ssn95.pdf', 3, '2016-01-18 11:31:13', 1),
(224, '203939601', 'susenas 93_96', 'SSN95_PD2', '1995', 'modul pendidikan', 'txt', 282352, 35846, 'KB', 'Rec : 128/23040', 'lay_ssn95.pdf', 3, '2016-01-18 11:31:13', 1),
(225, '203949601', 'susenas 94', 'SSN95_PER', '1995', 'modul perumahan', 'txt', 65574, 8389, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(226, '203949601', 'susenas 94', 'SSN95_POM', '1995', 'modul pola makan', 'txt', 2754079, 86065, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(227, '203949601', 'susenas 94', 'SSN95_IND', '1995', 'modul individu', 'txt', 878981, 144208, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(228, '203949601', 'susenas 94', 'SSN95_RMT', '1995', 'modul rumah tangga', 'txt', 201448, 62166, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(229, '203199601', 'susenas 96 M', 'SSN96_11_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 183983, 34138, 'KB', 'Rec : 188/23500', 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(230, '203199601', 'susenas 96 M', 'SSN96_12_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 276560, 51315, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(231, '203199601', 'susenas 96 M', 'SSN96_13_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 176807, 32806, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(232, '203199601', 'susenas 96 M', 'SSN96_14_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 165044, 30624, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(233, '203199601', 'susenas 96 M', 'SSN96_15_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 112151, 20810, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(234, '203199601', 'susenas 96 M', 'SSN96_16_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 207033, 38415, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(235, '203199601', 'susenas 96 M', 'SSN96_17_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 96611, 17926, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(236, '203199601', 'susenas 96 M', 'SSN96_18_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 213938, 39696, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(237, '203199601', 'susenas 96 M', 'SSN96_31_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 295835, 54892, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(238, '203199601', 'susenas 96 M', 'SSN96_32_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 781296, 144968, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(239, '203199601', 'susenas 96 M', 'SSN96_33_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 711946, 132100, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(240, '203199602', 'susenas 96 M', 'SSN96_34_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 208226, 38636, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(241, '203199602', 'susenas 96 M', 'SSN96_35_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 852340, 158150, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(242, '203199602', 'susenas 96 M', 'SSN96_51_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 191710, 35572, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(243, '203199602', 'susenas 96 M', 'SSN96_52_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 207485, 38499, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(244, '203199602', 'susenas 96 M', 'SSN96_53_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 143438, 26615, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(245, '203199602', 'susenas 96 M', 'SSN96_54_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 67097, 125450, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(246, '203199602', 'susenas 96 M', 'SSN96_61_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 176659, 32779, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(247, '203199602', 'susenas 96 M', 'SSN96_62_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 114136, 21178, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(248, '203199602', 'susenas 96 M', 'SSN96_63_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 172047, 32035, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(249, '203199602', 'susenas 96 M', 'SSN96_64_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 118103, 21914, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(250, '203199602', 'susenas 96 M', 'SSN96_71_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 125005, 23195, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(251, '203199602', 'susenas 96 M', 'SSN96_72_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 106000, 19668, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(252, '203199602', 'susenas 96 M', 'SSN96_73_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 219547, 40737, 'KB', 'Rec : 188/23500', 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(253, '203199602', 'susenas 96 M', 'SSN96_74_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 109843, 20381, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(254, '203199602', 'susenas 96 M', 'SSN96_81_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 98843, 18258, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(255, '203199602', 'susenas 96 M', 'SSN96_82_INF', '1996', 'modul konsumsi-pengeluaran rt', 'txt', 71655, 13296, 'KB', NULL, 'lay-ssn96.pdf', 3, '2016-01-18 11:31:13', 1),
(256, '203979801', 'susenas 97', 'SSN97_kor_ind', '1997', 'kor', 'dbf', 887266, 146438, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(257, '203979801', 'susenas 97', 'SSN97_kor_rum', '1997', 'kor', 'dbf', 207351, 96795, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(258, '203979801', 'susenas 97', 'SSN98_kor_ind', '1998', 'kor', 'dbf', 879936, 153821, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(259, '203979801', 'susenas 97', 'SSN98_kor_r1', '1998', 'kor', 'dbf', 207625, 81714, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(260, '203979801', 'susenas 97', 'SSN98_kor_r2', '1998', 'kor', 'dbf', 207625, 46233, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(261, '203199801', 'susenas 98', 'SSN98_educ', '1998', 'modul pendidikan', 'dbf', 274687, 48825, 'KB', 'MODUL.dbf', NULL, 3, '2016-01-18 11:31:13', 1),
(262, '203199801', 'susenas 98', 'SSN98_gizi', '1998', 'modul gizi rumah tangga', 'dbf', 27043, 1718, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(263, '203199801', 'susenas 98', 'SSN98_Mkes_i2', '1998', 'modul kesehatan', 'dbf', 271915, 172609, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(264, '203199801', 'susenas 98', 'SSN98_Mkes_r', '1998', 'modul kesehatan', 'dbf', 65569, 5573, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(265, '203199801', 'susenas 98', 'SSN98_Mod_rmh', '1998', 'modul perumahan', 'dbf', 65312, 14802, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(266, '203199901', 'susenas 99', 'SSN99_kor_ind', '1999', 'kor', 'dbf', 864580, 157047, 'KB', 'KOR', 'lay_ssn99_k.pdf', 3, '2016-01-18 11:31:13', 1),
(267, '203199901', 'susenas 99', 'SSN99_kor_rum', '1999', 'kor', 'dbf', 205747, 101672, 'KB', NULL, 'lay_ssn99_k.pdf', 3, '2016-01-18 11:31:13', 1),
(268, '203199901', 'susenas 99', 'SSN99_m41', '1999', 'modul konsumsi-pengeluaran rt', 'dbf', 2403661, 413130, 'KB', 'MODUL dbf', 'lay_ssn99_m.pdf', 3, '2016-01-18 11:31:13', 1),
(269, '203199901', 'susenas 99', 'SSN99_m42', '1999', 'modul konsumsi-pengeluaran rt', 'dbf', 1936987, 215642, 'KB', NULL, 'lay_ssn99_m.pdf', 3, '2016-01-18 11:31:13', 1),
(270, '203199901', 'susenas 99', 'SSN99_m43', '1999', 'modul konsumsi-pengeluaran rt', 'dbf', 62209, 25760, 'KB', NULL, 'lay_ssn99_m.pdf', 3, '2016-01-18 11:31:13', 1),
(271, '203200001', 'susenas 2000', 'SSN00_K1', '2000', 'kor', 'dbf', 189339, 110760, 'KB', NULL, 'lay_ssn00_k.pdf', 3, '2016-01-18 11:31:13', 1),
(272, '203200001', 'susenas 2000', 'SSN00_K2', '2000', 'kor', 'dbf', 780141, 169136, 'KB', NULL, 'lay_ssn00_k.pdf', 3, '2016-01-18 11:31:13', 1),
(273, '203200001', 'susenas 2000', 'SSN00_K3', '2000', 'kor', 'dbf', 8561, 369, 'KB', NULL, 'lay_ssn00_k.pdf', 3, '2016-01-18 11:31:13', 1),
(274, '203200001', 'susenas 2000', 'SSN00_M1', '2000', 'modul sosial budaya-pendidikan', 'dbf', 59203, 7982, 'KB', NULL, 'lay_ssn2000_m.pdf', 3, '2016-01-18 11:31:13', 1),
(275, '203200001', 'susenas 2000', 'SSN00_M2', '2000', 'modul sosial budaya-pendidikan', 'dbf', 241195, 78913, 'KB', NULL, 'lay_ssn2000_m.pdf', 3, '2016-01-18 11:31:13', 1),
(276, '203200101', 'susenas 2001', 'id2001km', '2001', 'modul kesehatan-perumahan', 'dbf', 277432, 130595, 'KB', 'MODUL', 'lay_ssn2001_km.pdf', 3, '2016-01-18 11:31:13', 1),
(277, '203200101', 'susenas 2001', 'RT2001KM', '2001', 'modul kesehatan-perumahan', 'dbf', 69166, 45937, 'KB', NULL, 'lay_ssn2001_km.pdf', 3, '2016-01-18 11:31:13', 1),
(278, '203200101', 'susenas 2001', 'SSN01ki', '2001', 'kor', 'dbf', 889413, 283158, 'KB', 'KOR', 'lay_ssn2001_kor.pdf', 3, '2016-01-18 11:31:13', 1),
(279, '203200101', 'susenas 2001', 'SSN01kr', '2001', 'kor', 'dbf', 218586, 93278, 'KB', NULL, 'lay_ssn2001_kor.pdf', 3, '2016-01-18 11:31:13', 1),
(280, '203200201', 'susenas 2002', 'SSN02ki', '2002', 'kor', 'dbf', 862210, 175982, 'KB', 'KOR', 'lay_ssn2002_kor.pdf', 3, '2016-01-18 11:31:13', 1),
(281, '203200201', 'susenas 2002', 'SSN02kr', '2002', 'kor', 'dbf', 212646, 113595, 'KB', NULL, 'lay_ssn2002_kor.pdf', 3, '2016-01-18 11:31:13', 1),
(282, '203200301', 'susenas 2003', 'SSN03ki', '2003', 'kor', 'dbf', 895427, 188884, 'KB', 'KOR', 'lay_ssn2003_kor.pdf', 3, '2016-01-18 11:31:13', 1),
(283, '203200301', 'susenas 2003', 'SSN03kr', '2003', 'kor', 'dbf', 222791, 148604, 'KB', NULL, 'lay_ssn2003_kor.pdf', 3, '2016-01-18 11:31:13', 1),
(284, '203200301', 'susenas 2003', 'KORMOD.sav', '2003', 'modul sosial budaya-pendidikan', 'sav', 92482, 92482, 'KB', 'MODUL', NULL, 3, '2016-01-18 11:31:13', 1),
(285, '203200301', 'susenas 2003', 'RTt2003.sav', '2003', 'modul sosial budaya-pendidikan', 'sav', 3289, 3289, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(286, '203200401', 'susenas 2004', 'SSN04ki', '2004', 'kor', 'sav', 206382, 206406, 'KB', 'KOR', NULL, 3, '2016-01-18 11:31:13', 1),
(287, '203200401', 'susenas 2004', 'SSN04kr', '2004', 'kor', 'sav', 136633, 136587, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(288, '203200401', 'susenas 2004', 'MPK-BLOK4', '2004', 'modul pengeluaran-pendapatan rt', 'sav', 50592, 50959, 'KB', 'MODUL', NULL, 3, '2016-01-18 11:31:13', 1),
(289, '203200401', 'susenas 2004', 'MPK-BLOK7', '2004', 'modul pengeluaran-pendapatan rt', 'sav', 2355, 2355, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(290, '203200401', 'susenas 2004', 'MPK-BLOK8', '2004', 'modul pengeluaran-pendapatan rt', 'sav', 18042, 18044, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(291, '203200401', 'susenas 2004', 'MPK-BLOK56', '2004', 'modul pengeluaran-pendapatan rt', 'sav', 41154, 41145, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(292, '203200502', 'susenas 2005', 'SSN05ki', '2005', 'kor', 'dbf', 105209, 186996, 'KB', 'KOR', 'lay_ssn05_k.pdf', 3, '2016-01-18 11:31:13', 1),
(293, '203200502', 'susenas 2005', 'SSN05kr', '2005', 'kor', 'dbf', 257906, 219125, 'KB', NULL, 'lay_ssn05_k.pdf', 3, '2016-01-18 11:31:13', 1),
(294, '203200601', 'susenas 2006', 'SSN06ki', '2006', 'kor', 'dbf', 1107594, 204433, 'KB', 'KOR', 'lay_ssn06_k.pdf', 3, '2016-01-18 11:31:13', 1),
(295, '203200601', 'susenas 2006', 'SSN06kr', '2006', 'kor', 'dbf', 277202, 176775, 'KB', NULL, 'lay_ssn06_k.pdf', 3, '2016-01-18 11:31:13', 1),
(296, '203200601', 'susenas 2006', 'SSN06msbp_disability', '2006', 'modul sosial budaya-pendidikan', 'dbf', 23712, 2178, 'KB', 'MODUL', NULL, 3, '2016-01-18 11:31:13', 1),
(297, '203200601', 'susenas 2006', 'SSN06msbp_sosial', '2006', 'modul sosial budaya-pendidikan', 'dbf', 68670, 5568, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(298, '203200601', 'susenas 2006', 'SSN06msbp_pendidikan', '2006', 'modul sosial budaya-pendidikan', 'dbf', 268683, 185252, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(299, '307768601', 'PODES 76_86', 'PODES80_CLN', '1980', 'podes', 'txt', 944768, 114995, 'KB', NULL, 'lay_podes80.pdf', 3, '2016-01-18 11:31:13', 1),
(300, '307768601', 'PODES 76_86', 'PODES80_MASDES', '1980', 'podes', 'txt', 66310, 2332, 'KB', 'Rec. 236', 'lay_podes80.pdf', 3, '2016-01-18 11:31:13', 1),
(301, '307768601', 'PODES 76_86', 'PODES83', '1983', 'podes', 'txt', 63310, 73627, 'KB', NULL, 'lay_podes83.pdf', 3, '2016-01-18 11:31:13', 1),
(302, '307768601', 'PODES 76_86', 'PODES83_MASDES', '1983', 'podes', 'txt', 579950, 2738, 'KB', 'Rec. 34', 'lay_podes83.pdf', 3, '2016-01-18 11:31:13', 1),
(303, '307768601', 'PODES 76_86', 'PODES86', '1986', 'podes', 'txt', 68374, 46271, 'KB', 'Rec. 128', 'lay_podes86.pdf', 3, '2016-01-18 11:31:13', 1),
(304, '307768601', 'PODES 76_86', 'PODES86_MASDES', '1986', 'podes', 'txt', 401532, 2911, 'KB', 'Rec. 39', 'lay_podes86.pdf', 3, '2016-01-18 11:31:13', 1),
(305, '307909601', 'PODES 90_96', 'PODES90_IND', '1990', 'podes', 'txt', 607635, 80702, 'KB', 'Rec. 116', 'lay_podes90.pdf', 3, '2016-01-18 11:31:13', 1),
(306, '307909601', 'PODES 90_96', 'PODES90_MASDES', '1990', 'podes', 'txt', 73978, 3613, 'KB', 'Rec. 40', 'lay_podes90.pdf', 3, '2016-01-18 11:31:13', 1),
(307, '307909601', 'PODES 90_96', 'POD93-IN', '1993', 'podes', 'txt', 980325, 143603, 'KB', 'Rec. 48', 'lay_podes93.pdf', 3, '2016-01-18 11:31:13', 1),
(308, '307909601', 'PODES 90_96', 'POD93DM93', '1993', 'podes', 'txt', 589986, 65683, 'KB', NULL, 'lay_podes93.pdf', 3, '2016-01-18 11:31:13', 1),
(309, '307909601', 'PODES 90_96', 'PODES94_IND', '1994', 'podes', 'txt', 980325, 42488, 'KB', 'Rec. 134', 'lay_podesinti94.pdf', 3, '2016-01-18 11:31:13', 1),
(310, '307909601', 'PODES 90_96', 'PODES94_DATAKM', '1994', 'podes', 'txt', 84786, 6375, 'KB', 'Rec. 148', NULL, 3, '2016-01-18 11:31:13', 1),
(311, '307909601', 'PODES 90_96', 'PODES94_IDT', '1994', 'podes', 'txt', 84768, 6198, 'KB', 'Rec. 663', NULL, 3, '2016-01-18 11:31:13', 1),
(312, '307909601', 'PODES 90_96', 'PODES96', '1996', 'podes', 'txt', 66486, 66227, 'KB', 'Rec. 75', 'lay_podes96.pdf', 3, '2016-01-18 11:31:13', 1),
(313, '307200001', 'PODES 2000', 'PODES00', '2000', 'podes', 'dbf', 68783, 65775, 'KB', NULL, 'lay_podes00.pdf', 3, '2016-01-18 11:31:13', 1),
(314, '307200001', 'PODES 2000', 'PODES00_MASDES', '2000', 'podes', 'dbf', 73125, 2500, 'KB', NULL, 'lay_podes00.pdf', 3, '2016-01-18 11:31:13', 1),
(315, '307200301', 'PODES2003', 'PODES03', '2003', 'podes', 'dbf', 68816, 63986, 'KB', NULL, 'lay_podes03.pdf', 3, '2016-01-18 11:31:13', 1),
(316, '307200501', 'PODES2005', 'PODES05', '2005', 'podes', 'dbf', 209884, 74870, 'KB', NULL, 'lay_podes05.pdf', 3, '2016-01-18 11:31:13', 1),
(317, '307909601', 'PODES 90_96', 'PODIN95_11', '1995', 'podes inti', 'txt', 5638, 3904, 'KB', 'Rec. 707/17675', 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(318, '307909601', 'PODES 90_96', 'PODIN95_12', '1995', 'podes inti', 'txt', 5230, 3622, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(319, '307909601', 'PODES 90_96', 'PODIN95_13', '1995', 'podes inti', 'txt', 2180, 1510, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(320, '307909601', 'PODES 90_96', 'PODIN95_14', '1995', 'podes inti', 'txt', 1277, 885, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(321, '307909601', 'PODES 90_96', 'PODIN95_15', '1995', 'podes inti', 'txt', 1137, 788, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(322, '307909601', 'PODES 90_96', 'PODIN95_16', '1995', 'podes inti', 'txt', 2824, 1956, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(323, '307909601', 'PODES 90_96', 'PODIN95_17', '1995', 'podes inti', 'txt', 1137, 788, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(324, '307909601', 'PODES 90_96', 'PODIN95_18', '1995', 'podes inti', 'txt', 1992, 1380, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(325, '307909601', 'PODES 90_96', 'PODIN95_31', '1995', 'podes inti', 'txt', 265, 184, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(326, '307909601', 'PODES 90_96', 'PODIN95_32', '1995', 'podes inti', 'txt', 7144, 4947, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1);
INSERT INTO `data_inventori` (`id`, `no_cd`, `label_cd`, `nama_data`, `tahun`, `rincian`, `format`, `jumlah_rec`, `file_size`, `file_size_unit`, `keterangan`, `nama_layout`, `subjek_id`, `create_time`, `operator_id`) VALUES
(327, '307909601', 'PODES 90_96', 'PODIN95_33', '1995', 'podes inti', 'txt', 8513, 5895, 'KB', NULL, 'lay-podesinti95.pdf', 3, '2016-01-18 11:31:13', 1),
(328, '103198601', 'SE 86', 'SE86_62', '1986', 'se86_perdagangan besar', 'txt', 15532, 6902, 'KB', 'Perdabsr. BH   453', 'lay_se86_62.pdf', 3, '2016-01-18 11:31:13', 1),
(329, '103198601', 'SE 86', 'SE86_81A', '1986', 'se86_bpr', 'txt', 46607, 6099, 'KB', 'BPR  rec. 132', NULL, 3, '2016-01-18 11:31:13', 1),
(330, '103198601', 'SE 86', 'SE86_32T', '1986', 'se86_industri kecil', 'txt', 442337, 60908, 'KB', 'Ind. Kecil Rec. 139', 'lay_se86_32.pdf', 3, '2016-01-18 11:31:13', 1),
(331, '103198601', 'SE 86', 'SE86_IR', '1986', 'se86_industri kerajinan rumah tangga', 'txt', 443229, 54538, 'KB', 'Ind. Ker. RT rec.124', 'lay_se86_ir.pdf', 3, '2016-01-18 11:31:13', 1),
(332, '103198601', 'SE 86', 'SE86_31T', '1986', 'se86_industri besar sedang', 'txt', 140415, 22763, 'KB', 'Ind. B/S  rec.164', NULL, 3, '2016-01-18 11:31:13', 1),
(333, '103198601', 'SE 86', 'SE86_DP32', '1986', 'se86_perusahaan/usaha sektor industri kecil', 'txt', 96033, 15756, 'KB', 'Dir.Per.Ind.Kec. 166', NULL, 3, '2016-01-18 11:31:13', 1),
(334, '103198601', 'SE 86', 'SE86_UR', '1986', 'se86_usaha rumah tangga', 'txt', 194149, 26544, 'KB', 'Usah RT rec. 138', 'lay_se86_seur.pdf', 3, '2016-01-18 11:31:13', 1),
(335, '103199601', 'SE 96', 'SE96_PNDS6_11_82', '1996', 'se96_pnd_sektor 6', 'txt', 620985, 540000, 'KB', 'Sektor 6 Prop. 11 s/d 82', 'lay_se96_s06.pdf', 3, '2016-01-18 11:31:13', 1),
(336, '103199602', 'SE 96', 'SE96_PNDS6_32_35', '1996', 'se96_pnd_sektor 6', 'txt', 653188, 568000, 'KB', 'Sektor 6 Prop. 32 s/d 35', 'lay_se96_s06.pdf', 3, '2016-01-18 11:31:13', 1),
(337, '103199601', 'SE96_PNDS789', 'PND_S7', '1996', 'se96_pnd_sektor 7', 'txt', 220656, 201458, 'KB', 'Sektor 7', 'lay_se96_s7.pdf', 3, '2016-01-18 11:31:13', 1),
(338, '103199601', 'SE96_PNDS789', 'PND8_INDigi', '1996', 'se96_pnd_sektor 8', 'txt', 1833, 1636, 'KB', 'Sektor 8', NULL, 3, '2016-01-18 11:31:13', 1),
(339, '103199601', 'SE96_PNDS789', 'PND_S9', '1996', 'se96_pnd_sektor 9', 'txt', 284605, 256695, 'KB', 'Sektor 9', 'lay_se96_s09.pdf', 3, '2016-01-18 11:31:13', 1),
(340, '103199604', 'SE96_PND-S25', 'PND_S200', '1996', 'se96_pnd_sektor 2', 'txt', 32538, 29011, 'KB', 'Sektor 2', '', 3, '2016-01-18 11:31:13', 1),
(341, '103199604', 'SE96_PND-S25', 'IGIS3_1182', '1996', 'se96_pnd_sektor 3', 'txt', 492042, 449188, 'KB', 'Sektor 3', NULL, 3, '2016-01-18 11:31:13', 1),
(342, '103199604', 'SE96_PND-S25', 'PND_S400', '1996', 'se96_pnd_sektor 4', 'txt', 1028, 917, 'KB', 'Sektor 4', NULL, 3, '2016-01-18 11:31:13', 1),
(343, '103199604', 'SE96_PND-S25', 'PND_S500', '1996', 'se96_pnd_sektor 5', 'txt', 19710, 17574, 'KB', 'Sektor 5', 'lay_se96_s5.pdf', 3, '2016-01-18 11:31:13', 1),
(344, '103199605', 'SE 96', 'SE96_PD', '1996', 'se96_pnd_sektor 2_9', 'txt', 245489, 601799, 'KB', 'Sektor 2 s/d 9', 'lay_se96_pd.pdf', 3, '2016-01-18 11:31:13', 1),
(345, '103199606', 'SE96_L2R91', 'R911118', '1996', 'se96_L2', 'txt', 1434642, 130294, 'KB', 'Rec.91 Prop. 11-18', 'lay_se96L2_r91.pdf', 3, '2016-01-18 11:31:13', 1),
(346, '103199606', 'SE96_L2R91', 'R91SE31', '1996', 'se96_L2', 'txt', 845037, 76747, 'KB', NULL, 'lay_se96L2_r91.pdf', 3, '2016-01-18 11:31:13', 1),
(347, '103199607', 'SE96_L2R91', 'R91SE32', '1996', 'se96_L2', 'txt', 1773470, 161068, 'KB', NULL, 'lay_se96L2_r91.pdf', 3, '2016-01-18 11:31:13', 1),
(348, '103199607', 'SE96_L2R91', 'R91SE33', '1996', 'se96_L2', 'txt', 1507921, 136950, 'KB', NULL, 'lay_se96L2_r91.pdf', 3, '2016-01-18 11:31:13', 1),
(349, '103199607', 'SE96_L2R91', 'R91SE34', '1996', 'se96_L2', 'txt', 232053, 21076, 'KB', NULL, 'lay_se96L2_r91.pdf', 3, '2016-01-18 11:31:13', 1),
(350, '103199608', 'SE96_L2R91', 'R91SE35', '1996', 'se96_L2', 'txt', 1799093, 163395, 'KB', NULL, 'lay_se96L2_r91.pdf', 3, '2016-01-18 11:31:13', 1),
(351, '103199608', 'SE96_L2R91', 'R915164', '1996', 'se96_L2', 'txt', 918735, 83440, 'KB', NULL, 'lay_se96L2_r91.pdf', 3, '2016-01-18 11:31:13', 1),
(352, '103199608', 'SE96_L2R91', 'R917182', '1996', 'se96_L2', 'txt', 659002, 59851, 'KB', NULL, 'lay_se96L2_r91.pdf', 3, '2016-01-18 11:31:13', 1),
(353, '103199609', 'SE96_R415', 'SE11R415', '1996', 'se96_L2', 'txt', 118730, 48351, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(354, '103199609', 'SE96_R415', 'SE12R415', '1996', 'se96_L2', 'txt', 383845, 156313, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(355, '103199609', 'SE96_R415', 'SE13R415', '1996', 'se96_L2', 'txt', 195703, 79696, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(356, '103199609', 'SE96_R415', 'SE14R415', '1996', 'se96_L2', 'txt', 153528, 62521, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(357, '103199609', 'SE96_R415', 'SE15R415', '1996', 'se96_L2', 'txt', 83043, 33819, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(358, '103199609', 'SE96_R415', 'SE16R415', '1996', 'se96_L2', 'txt', 248724, 101288, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(359, '103199609', 'SE96_R415', 'SE17R415', '1996', 'se96_L2', 'txt', 47941, 19523, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(360, '103199609', 'SE96_R415', 'SE18R415', '1996', 'se96_L2', 'txt', 203115, 82714, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(361, '103199610', 'SE96_R415', 'R4153171', '1996', 'se96_L2', 'txt', 70985, 174311, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(362, '103199610', 'SE96_R415', 'R4153172', '1996', 'se96_L2', 'txt', 86954, 212252, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(363, '103199610', 'SE96_R415', 'R4153173', '1996', 'se96_L2', 'txt', 50900, 124990, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(364, '103199610', 'SE96_R415', 'R4153174', '1996', 'se96_L2', 'txt', 74386, 182664, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(365, '103199610', 'SE96_R415', 'R4153175', '1996', 'se96_L2', 'txt', 60900, 149548, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(366, '103199610', 'SE96_R415', 'R4153201', '1996', 'se96_L2', 'txt', 149543, 367223, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(367, '103199610', 'SE96_R415', 'SE34R415', '1996', 'se96_L2', 'txt', 94499, 232053, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(368, '103199611', 'SE96_R415', 'R4153206', '1996', 'se96_L2', 'txt', 322122, 131177, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(369, '103199611', 'SE96_R415', 'R4153209', '1996', 'se96_L2', 'txt', 265401, 108079, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(370, '103199611', 'SE96_R415', 'R4153214', '1996', 'se96_L2', 'txt', 193887, 78956, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(371, '103199611', 'SE96_R415', 'R4153218', '1996', 'se96_L2', 'txt', 306584, 124850, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(372, '103199611', 'SE96_R415', 'R4153271', '1996', 'se96_L2', 'txt', 318254, 129602, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(373, '103199612', 'SE96_R415', 'R4153301', '1996', 'se96_L2', 'txt', 271185, 101434, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(374, '103199612', 'SE96_R415', 'R4153306', '1996', 'se96_L2', 'txt', 211395, 86086, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(375, '103199612', 'SE96_R415', 'R4153311', '1996', 'se96_L2', 'txt', 197531, 80440, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(376, '103199612', 'SE96_R415', 'R4153316', '1996', 'se96_L2', 'txt', 180311, 73428, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(377, '103199612', 'SE96_R415', 'R4153321', '1996', 'se96_L2', 'txt', 180822, 73626, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(378, '103199612', 'SE96_R415', 'R4153326', '1996', 'se96_L2', 'txt', 219570, 89415, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(379, '103199612', 'SE96_R415', 'R4153371', '1996', 'se96_L2', 'txt', 247107, 100629, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(380, '103199613', 'SE96_R415', 'R4153501', '1996', 'se96_L2', 'txt', 189714, 77257, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(381, '103199613', 'SE96_R415', 'R4153506', '1996', 'se96_L2', 'txt', 282689, 114305, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(382, '103199613', 'SE96_R415', 'R4153510', '1996', 'se96_L2', 'txt', 239610, 97576, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(383, '103199613', 'SE96_R415', 'R4153515', '1996', 'se96_L2', 'txt', 293679, 119594, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(384, '103199613', 'SE96_R415', 'R4153521', '1996', 'se96_L2', 'txt', 179080, 72927, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(385, '103199613', 'SE96_R415', 'R4153526', '1996', 'se96_L2', 'txt', 108209, 44066, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(386, '103199613', 'SE96_R415', 'R4153571', '1996', 'se96_L2', 'txt', 192884, 78458, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(387, '103199614', 'SE96_R415', 'SE51R415', '1996', 'se96_L2', 'txt', 193960, 78986, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(388, '103199614', 'SE96_R415', 'SE52R415', '1996', 'se96_L2', 'txt', 161715, 65855, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(389, '103199609', 'SE96_R415', 'SE53R415', '1996', 'se96_L2', 'txt', 104267, 42461, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(390, '103199614', 'SE96_R415', 'SE54R415', '1996', 'se96_L2', 'txt', 15650, 6374, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(391, '103199614', 'SE96_R415', 'SE61R415', '1996', 'se96_L2', 'txt', 76708, 31238, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(392, '103199614', 'SE96_R415', 'SE62R415', '1996', 'se96_L2', 'txt', 73668, 30000, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(393, '103199614', 'SE96_R415', 'SE63R415', '1996', 'se96_L2', 'txt', 178557, 72722, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(394, '103199614', 'SE96_R415', 'SE64R415', '1996', 'se96_L2', 'txt', 114190, 46502, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(395, '103199614', 'SE96_R415', 'SE71R415', '1996', 'se96_L2', 'txt', 123443, 50270, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(396, '103199614', 'SE96_R415', 'SE72R415', '1996', 'se96_L2', 'txt', 65484, 26667, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(397, '103199614', 'SE96_R415', 'SE73R415', '1996', 'se96_L2', 'txt', 341245, 138965, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(398, '103199614', 'SE96_R415', 'SE74R415', '1996', 'se96_L2', 'txt', 44463, 18107, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(399, '103199614', 'SE96_R415', 'SE81R415', '1996', 'se96_L2', 'txt', 48314, 19675, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(400, '103199614', 'SE96_R415', 'SE82R415', '1996', 'se96_L2', 'txt', 36054, 14683, 'KB', NULL, 'lay_415se.pdf', 3, '2016-01-18 11:31:13', 1),
(401, '103199606', 'SE 96', 'SE96_PD_final', '1996', 'se96_PD', 'dbf', 169543, 494530, 'KB', NULL, 'lay_se96_gabung.pdf', 3, '2016-01-18 11:31:13', 1),
(402, '311909301', 'KUD 90', 'KUD90_IN', '1990', 'kud', 'txt', 81240, 68229, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(403, '311909301', 'KUD 90', 'KUD93_IN', '1993', 'kud', 'txt', 27672, 100636, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(404, '102198301', 'ST 83', 'ST83_RF110108', '1983', 'sensus pertanian', 'txt', 150628, 28979, 'KB', 'S = Pangan', 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(405, '102198301', 'ST 83', 'ST83_RF120111', '1983', 'sensus pertanian', 'txt', 374947, 72130, 'KB', 'Rec. 195', 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(406, '102198301', 'ST 83', 'ST83_RF130108', '1983', 'sensus pertanian', 'txt', 188473, 36259, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(407, '102198301', 'ST 83', 'ST83_RF140105', '1983', 'sensus pertanian', 'txt', 82124, 15811, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(408, '102198301', 'ST 83', 'ST83_RF150105', '1983', 'sensus pertanian', 'txt', 81986, 15773, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(409, '102198301', 'ST 83', 'ST83_RF160108', '1983', 'sensus pertanian', 'txt', 187952, 36159, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(410, '102198301', 'ST 83', 'ST83_RF170103', '1983', 'sensus pertanian', 'txt', 49335, 9492, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(411, '102198301', 'ST 83', 'ST83_RF180103', '1983', 'sensus pertanian', 'txt', 285046, 54838, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(412, '102198301', 'ST 83', 'ST83_RF320120', '1983', 'sensus pertanian', 'txt', 1644307, 159279, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(413, '102198303', 'ST 83', 'ST83_RF330129', '1983', 'sensus pertanian', 'txt', 1758021, 139922, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(414, '102198301', 'ST 83', 'ST83_RF340104', '1983', 'sensus pertanian', 'txt', 252399, 48558, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(415, '102198302', 'ST 83', 'ST83_RF350129', '1983', 'sensus pertanian', 'txt', 1831819, 352411, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(416, '102198302', 'ST 83', 'ST83_RF510108', '1983', 'sensus pertanian', 'txt', 180494, 34724, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(417, '102198302', 'ST 83', 'ST83_RF520106', '1983', 'sensus pertanian', 'txt', 168216, 32362, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(418, '102198302', 'ST 83', 'ST83_RF530112A', '1983', 'sensus pertanian', 'txt', 275643, 52796, 'KB', 'Rec. 195', 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(419, '102198302', 'ST 83', 'ST83_RF530112', '1983', 'sensus pertanian', 'txt', 1215, 234, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(420, '102198302', 'ST 83', 'ST83_RF610106', '1983', 'sensus pertanian', 'txt', 173842, 33445, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(421, '102198302', 'ST 83', 'ST83_RF620109', '1983', 'sensus pertanian', 'txt', 59195, 11389, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(422, '102198302', 'ST 83', 'ST83_RF630109', '1983', 'sensus pertanian', 'txt', 124948, 24038, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(423, '102198302', 'ST 83', 'ST83_RF640104', '1983', 'sensus pertanian', 'txt', 40023, 7700, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(424, '102198302', 'ST 83', 'ST83_RF710104', '1983', 'sensus pertanian', 'txt', 117812, 22666, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(425, '102198302', 'ST 83', 'ST83_RF720104', '1983', 'sensus pertanian', 'txt', 85347, 16420, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(426, '102198302', 'ST 83', 'ST83_RF730121', '1983', 'sensus pertanian', 'txt', 348252, 66998, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(427, '102198302', 'ST 83', 'ST83_RF740104', '1983', 'sensus pertanian', 'txt', 59690, 11352, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(428, '102198303', 'ST 83', 'ST83_RF810104', '1983', 'sensus pertanian', 'txt', 69690, 13408, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(429, '102198303', 'ST 83', 'ST83_RF820109', '1983', 'sensus pertanian', 'txt', 69030, 13281, 'KB', NULL, 'lay_st83s.pdf', 3, '2016-01-18 11:31:13', 1),
(430, '102199301', 'ST 93', 'ST93_11RF', '1993', 'ssppl', 'txt', 349353, 51858, 'KB', 'rec. size 150', 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(431, '102199301', 'ST 93', 'ST93_12RF', '1993', 'ssppl', 'txt', 574398, 85263, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(432, '102199301', 'ST 93', 'ST93_13RF', '1993', 'ssppl', 'txt', 437555, 64950, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(433, '102199301', 'ST 93', 'ST93_14RF', '1993', 'ssppl', 'txt', 224026, 33254, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(434, '102199301', 'ST 93', 'ST93_15RF', '1993', 'ssppl', 'txt', 248056, 36888, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(435, '102199301', 'ST 93', 'ST93_16RF', '1993', 'ssppl', 'txt', 393490, 58409, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(436, '102199301', 'ST 93', 'ST93_17RF', '1993', 'ssppl', 'txt', 166676, 24741, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(437, '102199301', 'ST 93', 'ST93_18RF', '1993', 'ssppl', 'txt', 269075, 39939, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(438, '102199301', 'ST 93', 'ST93_32RF', '1993', 'ssppl', 'txt', 1188134, 176364, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(439, '102199303', 'ST 93', 'ST93_33RF', '1993', 'ssppl', 'txt', 1175195, 174444, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(440, '102199301', 'ST 93', 'ST93_34RF', '1993', 'ssppl', 'txt', 256219, 38033, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(441, '102199302', 'ST 93', 'ST93_35RF', '1993', 'ssppl', 'txt', 1185878, 176029, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(442, '102199303', 'ST 93', 'ST93_51RF', '1993', 'ssppl', 'txt', 332148, 49304, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(443, '102199303', 'ST 93', 'ST93_52RF', '1993', 'ssppl', 'txt', 377081, 55973, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(444, '102199303', 'ST 93', 'ST93_53RF', '1993', 'ssppl', 'txt', 413741, 61415, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(445, '102199303', 'ST 93', 'ST93_54RF', '1993', 'ssppl', 'txt', 193278, 28690, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(446, '102199303', 'ST 93', 'ST93_61RF', '1993', 'ssppl', 'txt', 346765, 51473, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(447, '102199304', 'ST 93', 'ST93_62RF', '1993', 'ssppl', 'txt', 199538, 29619, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(448, '102199304', 'ST 93', 'ST93_63RF', '1993', 'ssppl', 'txt', 344125, 51082, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(449, '102199304', 'ST 93', 'ST93_64RF', '1993', 'ssppl', 'txt', 157494, 23379, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(450, '102199304', 'ST 93', 'ST93_71RF', '1993', 'ssppl', 'txt', 281102, 41727, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(451, '102199304', 'ST 93', 'ST93_72RF', '1993', 'ssppl', 'txt', 241787, 35891, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(452, '102199304', 'ST 93', 'ST93_73RF', '1993', 'ssppl', 'txt', 883705, 131175, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(453, '102199304', 'ST 93', 'ST93_74RF', '1993', 'ssppl', 'txt', 193121, 28667, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(454, '102199303', 'ST 93', 'ST93_81RF', '1993', 'ssppl', 'txt', 171839, 25508, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(455, '102199303', 'ST 93', 'ST93_82RF', '1993', 'ssppl', 'txt', 196371, 29149, 'KB', NULL, 'lay_st93_ssppl.pdf', 3, '2016-01-18 11:31:13', 1),
(456, '102199305', 'ST 93', 'ST93 _ L', '1993', 'sensus pertanian', 'txt', 33506, 26100, 'KB', NULL, 'lay-st93L.pdf', 3, '2016-01-18 11:31:13', 1),
(457, '102200301', 'ST2003_11_L2', 'ST_1100', '2003', 'sensus pertanian_L2', 'mdb.', 279491, 304807, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(458, '102200302', 'ST2003_12_L2', 'ST_1200', '2003', 'sensus pertanian_L2', 'mdb.', 2031038, 2211459, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(459, '102200303', 'ST2003_13_L2', 'ST_1300', '2003', 'sensus pertanian_L2', 'mdb.', 894052, 970260, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(460, '102200304', 'ST2003_14_L2', 'ST_1400', '2003', 'sensus pertanian_L2', 'mdb.', 992079, 1501233, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(461, '102200305', 'ST2003_15_L2', 'ST_1500', '2003', 'sensus pertanian_L2', 'mdb.', 537469, 834097, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(462, '102200306', 'ST2003_16_L2', 'ST_1600', '2003', 'sensus pertanian_L2', 'mdb.', 1214395, 1469480, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(463, '102200307', 'ST2003_17_L2', 'ST_1700', '2003', 'sensus pertanian_L2', 'mdb.', 338557, 368926, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(464, '102200308', 'ST2003_18_L2', 'ST_1800', '2003', 'sensus pertanian_L2', 'mdb.', 1523980, 2308911, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(465, '102200309', 'ST2003_19_L2', 'ST_1900', '2003', 'sensus pertanian_L2', 'mdb.', 200135, 324132, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(466, '102200310', 'ST2003_31_L2', 'ST_3100', '2003', 'sensus pertanian_L2', 'mdb.', 555673, 578179, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(467, '102200311', 'ST2003_32_L2', 'ST_3200', '2003', 'sensus pertanian_L2', 'mdb.', 6839219, 7125922, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(468, '102200312', 'ST2003_33_L2', 'ST_3300', '2003', 'sensus pertanian_L2', 'mdb.', 6483549, 7349002, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(469, '102200313', 'ST2003_34_L2', 'ST_3400', '2003', 'sensus pertanian_L2', 'mdb.', 644325, 719589, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(470, '102200314', 'ST2003_35_L2', 'ST_3500', '2003', 'sensus pertanian_L2', 'mdb.', 7757442, 8576139, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(471, '102200315', 'ST2003_36_L2', 'ST_3600', '2003', 'sensus pertanian_L2', 'mdb.', 1354877, 1987981, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(472, '102200316', 'ST2003_51_L2', 'ST_5100', '2003', 'sensus pertanian_L2', 'mdb.', 692720, 971345, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(473, '102200317', 'ST2003_52_L2', 'ST_5200', '2003', 'sensus pertanian_L2', 'mdb.', 1068027, 881873, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(474, '102200318', 'ST2003_53_L2', 'ST_5300', '2003', 'sensus pertanian_L2', 'mdb.', 793837, 989929, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(475, '102200319', 'ST2003_61_L2', 'ST_6100', '2003', 'sensus pertanian_L2', 'mdb.', 758906, 1163550, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(476, '102200320', 'ST2003_62_L2', 'ST_6200', '2003', 'sensus pertanian_L2', 'mdb.', 384860, 631533, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(477, '102200321', 'ST2003_63_L2', 'ST_6300', '2003', 'sensus pertanian_L2', 'mdb.', 660676, 1024901, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(478, '102200322', 'ST2003_64_L2', 'ST_6400', '2003', 'sensus pertanian_L2', 'mdb.', 472991, 576299, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(479, '102200323', 'ST2003_71_L2', 'ST_7100', '2003', 'sensus pertanian_L2', 'mdb.', 466052, 503001, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(480, '102200324', 'ST2003_72_L2', 'ST_7200', '2003', 'sensus pertanian_L2', 'mdb.', 487895, 533995, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(481, '102200325', 'ST2003_73_L2', 'ST_7300', '2003', 'sensus pertanian_L2', 'mdb.', 1502924, 2316328, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(482, '102200326', 'ST2003_74_L2', 'ST_7400', '2003', 'sensus pertanian_L2', 'mdb.', 398778, 438857, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(483, '102200327', 'ST2003_75_L2', 'ST_7500', '2003', 'sensus pertanian_L2', 'mdb.', 80393, 220880, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(484, '102200328', 'ST2003_81_L2', 'ST_8100', '2003', 'sensus pertanian_L2', 'mdb.', 248126, 270790, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(485, '102200329', 'ST2003_82_L2', 'ST_8200', '2003', 'sensus pertanian_L2', 'mdb.', 174021, 283373, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(486, '102200330', 'ST2003_94_L2', 'ST_9400', '2003', 'sensus pertanian_L2', 'mdb.', 490770, 814362, 'KB', NULL, 'lay-st03_L2.pdf', 3, '2016-01-18 11:31:13', 1),
(487, '205909301', 'SSPP 90', 'SSPP90IN', '1990', 'sensus sampel pendapatan rt petani', 'txt', 591904, 193641, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(488, '205909301', 'SSPP 90', 'SSPP93', '1993', 'sensus sampel pendapatan rt petani', 'txt', 1425771, 415000, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(489, '205199301', 'SSPP93', 'SSPP93_11', '1993', 'sensus sampel pendapatan rt petani', 'txt', 37051, 11072, 'KB', 'Rec : 304', 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(490, '205199301', 'SSPP93', 'SSPP93_12', '1993', 'sensus sampel pendapatan rt petani', 'txt', 59532, 17790, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(491, '205199301', 'SSPP93', 'SSPP93_13', '1993', 'sensus sampel pendapatan rt petani', 'txt', 43751, 13076, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(492, '205199301', 'SSPP93', 'SSPP93_14', '1993', 'sensus sampel pendapatan rt petani', 'txt', 30276, 9048, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(493, '205199301', 'SSPP93', 'SSPP93_15', '1993', 'sensus sampel pendapatan rt petani', 'txt', 29464, 8805, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(494, '205199301', 'SSPP93', 'SSPP93_16', '1993', 'sensus sampel pendapatan rt petani', 'txt', 45502, 13598, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(495, '205199301', 'SSPP93', 'SSPP93_17', '1993', 'sensus sampel pendapatan rt petani', 'txt', 22277, 6657, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(496, '205199301', 'SSPP93', 'SSPP93_18', '1993', 'sensus sampel pendapatan rt petani', 'txt', 60539, 18091, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(497, '205199301', 'SSPP93', 'SSPP93_31', '1993', 'sensus sampel pendapatan rt petani', 'txt', 12511, 3739, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(498, '205199301', 'SSPP93', 'SSPP93_32', '1993', 'sensus sampel pendapatan rt petani', 'txt', 112508, 33621, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(499, '205199301', 'SSPP93', 'SSPP93_33', '1993', 'sensus sampel pendapatan rt petani', 'txt', 138670, 41439, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(500, '205199301', 'SSPP93', 'SSPP93_34', '1993', 'sensus sampel pendapatan rt petani', 'txt', 68768, 20550, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(501, '205199301', 'SSPP93', 'SSPP93_35', '1993', 'sensus sampel pendapatan rt petani', 'txt', 148672, 44428, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(502, '205199301', 'SSPP93', 'SSPP93_51', '1993', 'sensus sampel pendapatan rt petani', 'txt', 49984, 14937, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(503, '205199301', 'SSPP93', 'SSPP93_52', '1993', 'sensus sampel pendapatan rt petani', 'txt', 137766, 41169, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(504, '205199301', 'SSPP93', 'SSPP93_53', '1993', 'sensus sampel pendapatan rt petani', 'txt', 70496, 21067, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(505, '205199301', 'SSPP93', 'SSPP93_54', '1993', 'sensus sampel pendapatan rt petani', 'txt', 29819, 8911, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(506, '205199301', 'SSPP93', 'SSPP93_61', '1993', 'sensus sampel pendapatan rt petani', 'txt', 37995, 11354, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(507, '205199301', 'SSPP93', 'SSPP93_62', '1993', 'sensus sampel pendapatan rt petani', 'txt', 24416, 7297, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(508, '205199301', 'SSPP93', 'SSPP93_63', '1993', 'sensus sampel pendapatan rt petani', 'txt', 34636, 10351, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(509, '205199301', 'SSPP93', 'SSPP93_64', '1993', 'sensus sampel pendapatan rt petani', 'txt', 22929, 6852, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(510, '205199301', 'SSPP93', 'SSPP93_71', '1993', 'sensus sampel pendapatan rt petani', 'txt', 33663, 10060, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(511, '205199301', 'SSPP93', 'SSPP93_72', '1993', 'sensus sampel pendapatan rt petani', 'txt', 31067, 9284, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(512, '205199301', 'SSPP93', 'SSPP93_73', '1993', 'sensus sampel pendapatan rt petani', 'txt', 59964, 17919, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(513, '205199301', 'SSPP93', 'SSPP93_74', '1993', 'sensus sampel pendapatan rt petani', 'txt', 26299, 7859, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(514, '205199301', 'SSPP93', 'SSPP93_81', '1993', 'sensus sampel pendapatan rt petani', 'txt', 29290, 8753, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(515, '205199301', 'SSPP93', 'SSPP93_82', '1993', 'sensus sampel pendapatan rt petani', 'txt', 27926, 8346, 'KB', NULL, 'lay_st93_sspp.pdf', 3, '2016-01-18 11:31:13', 1),
(516, '209199101', 'HORTI 91', 'HORTI_91', '1991', 'hortikultura', 'txt', 212769, 23272, 'KB', NULL, 'lay_horti91.pdf', 3, '2016-01-18 11:31:13', 1),
(517, '209199301', 'HORTI 93', 'HORTI93_11', '1993', 'hortikultura', 'txt', 58406, 8841, 'KB', 'Rec. 153/22950', 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(518, '209199301', 'HORTI 93', 'HORTI93_12', '1993', 'hortikultura', 'txt', 89425, 13537, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(519, '209199301', 'HORTI 93', 'HORTI93_13', '1993', 'hortikultura', 'txt', 75980, 11501, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(520, '209199301', 'HORTI 93', 'HORTI93_14', '1993', 'hortikultura', 'txt', 67359, 10196, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(521, '209199301', 'HORTI 93', 'HORTI93_15', '1993', 'hortikultura', 'txt', 62127, 9404, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(522, '209199301', 'HORTI 93', 'HORTI93_16', '1993', 'hortikultura', 'txt', 79939, 12101, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(523, '209199301', 'HORTI 93', 'HORTI93_17', '1993', 'hortikultura', 'txt', 36828, 5575, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(524, '209199301', 'HORTI 93', 'HORTI93_18', '1993', 'hortikultura', 'txt', 90974, 13771, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(525, '209199301', 'HORTI 93', 'HORTI93_31', '1993', 'hortikultura', 'txt', 16695, 2528, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(526, '209199301', 'HORTI 93', 'HORTI93_32', '1993', 'hortikultura', 'txt', 224386, 33965, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(527, '209199301', 'HORTI 93', 'HORTI93_33', '1993', 'hortikultura', 'txt', 299295, 45304, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(528, '209199301', 'HORTI 93', 'HORTI93_34', '1993', 'hortikultura', 'txt', 142216, 21527, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(529, '209199301', 'HORTI 93', 'HORTI93_35', '1993', 'hortikultura', 'txt', 255115, 38617, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(530, '209199301', 'HORTI 93', 'HORTI93_51', '1993', 'hortikultura', 'txt', 99613, 15079, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(531, '209199301', 'HORTI 93', 'HORTI93_52', '1993', 'hortikultura', 'txt', 67037, 10148, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(532, '209199301', 'HORTI 93', 'HORTI93_53', '1993', 'hortikultura', 'txt', 138739, 21001, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(533, '209199301', 'HORTI 93', 'HORTI93_54', '1993', 'hortikultura', 'txt', 54166, 8199, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(534, '209199301', 'HORTI 93', 'HORTI93_61', '1993', 'hortikultura', 'txt', 71137, 10768, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(535, '209199301', 'HORTI 93', 'HORTI93_62', '1993', 'hortikultura', 'txt', 50562, 7654, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(536, '209199301', 'HORTI 93', 'HORTI93_63', '1993', 'hortikultura', 'txt', 64343, 9740, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(537, '209199301', 'HORTI 93', 'HORTI93_64', '1993', 'hortikultura', 'txt', 48162, 7291, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(538, '209199301', 'HORTI 93', 'HORTI93_71', '1993', 'hortikultura', 'txt', 68144, 10315, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(539, '209199301', 'HORTI 93', 'HORTI93_72', '1993', 'hortikultura', 'txt', 60587, 9171, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(540, '209199301', 'HORTI 93', 'HORTI93_73', '1993', 'hortikultura', 'txt', 115575, 17495, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(541, '209199301', 'HORTI 93', 'HORTI93_74', '1993', 'hortikultura', 'txt', 56263, 8517, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(542, '209199301', 'HORTI 93', 'HORTI93_81', '1993', 'hortikultura', 'txt', 54313, 8222, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(543, '209199301', 'HORTI 93', 'HORTI93_82', '1993', 'hortikultura', 'txt', 84350, 12768, 'KB', NULL, 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(544, '209199301', 'HORTI 93', 'HORTI93_IND', '1993', 'hortikultura', 'txt', 2531736, 392419, 'KB', 'INDONESIA', 'lay_st93_ssh.pdf', 3, '2016-01-18 11:31:13', 1),
(545, '209200301', 'HORTI 2003', 'SHR_12', '2003', 'hortikultura', 'dbf', 2531736, 40153, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(546, '209200301', 'HORTI 2003', 'SHR_13', '2003', 'hortikultura', 'dbf', 2531736, 26189, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(547, '209200301', 'HORTI 2003', 'SHR_14', '2003', 'hortikultura', 'dbf', 2531736, 30478, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(548, '209200301', 'HORTI 2003', 'SHR_15', '2003', 'hortikultura', 'dbf', 2531736, 22081, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(549, '209200301', 'HORTI 2003', 'SHR_16', '2003', 'hortikultura', 'dbf', 2531736, 21876, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(550, '209200301', 'HORTI 2003', 'SHR_17', '2003', 'hortikultura', 'dbf', 2531736, 14860, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(551, '209200301', 'HORTI 2003', 'SHR_18', '2003', 'hortikultura', 'dbf', 2531736, 23699, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(552, '209200301', 'HORTI 2003', 'SHR_19', '2003', 'hortikultura', 'dbf', 2531736, 10616, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(553, '209200301', 'HORTI 2003', 'SHR_31', '2003', 'hortikultura', 'dbf', 2531736, 4456, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(554, '209200301', 'HORTI 2003', 'SHR_32', '2003', 'hortikultura', 'dbf', 2531736, 59265, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(555, '209200301', 'HORTI 2003', 'SHR_33', '2003', 'hortikultura', 'dbf', 2531736, 88023, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(556, '209200301', 'HORTI 2003', 'SHR_34', '2003', 'hortikultura', 'dbf', 2531736, 13963, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(557, '209200301', 'HORTI 2003', 'SHR_35', '2003', 'hortikultura', 'dbf', 2531736, 70725, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(558, '209200301', 'HORTI 2003', 'SHR_36', '2003', 'hortikultura', 'dbf', 2531736, 34213, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(559, '209200301', 'HORTI 2003', 'SHR_51', '2003', 'hortikultura', 'dbf', 2531736, 17301, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(560, '209200301', 'HORTI 2003', 'SHR_52', '2003', 'hortikultura', 'dbf', 2531736, 17817, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(561, '209200301', 'HORTI 2003', 'SHR_53', '2003', 'hortikultura', 'dbf', 2531736, 37646, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(562, '209200301', 'HORTI 2003', 'SHR_61', '2003', 'hortikultura', 'dbf', 2531736, 23973, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(563, '209200301', 'HORTI 2003', 'SHR_62', '2003', 'hortikultura', 'dbf', 2531736, 25968, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(564, '209200301', 'HORTI 2003', 'SHR_63', '2003', 'hortikultura', 'dbf', 2531736, 31408, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(565, '209200301', 'HORTI 2003', 'SHR_64', '2003', 'hortikultura', 'dbf', 2531736, 18157, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(566, '209200301', 'HORTI 2003', 'SHR_71', '2003', 'hortikultura', 'dbf', 2531736, 17489, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(567, '209200301', 'HORTI 2003', 'SHR_72', '2003', 'hortikultura', 'dbf', 2531736, 13893, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(568, '209200301', 'HORTI 2003', 'SHR_73', '2003', 'hortikultura', 'dbf', 2531736, 56328, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(569, '209200301', 'HORTI 2003', 'SHR_74', '2003', 'hortikultura', 'dbf', 2531736, 13434, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(570, '209200301', 'HORTI 2003', 'SHR_75', '2003', 'hortikultura', 'dbf', 2531736, 9715, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(571, '209200301', 'HORTI 2003', 'SHR_81', '2003', 'hortikultura', 'dbf', 2531736, 10772, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(572, '209200301', 'HORTI 2003', 'SHR_82', '2003', 'hortikultura', 'dbf', 2531736, 11653, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(573, '209200301', 'HORTI 2003', 'SHR_94', '2003', 'hortikultura', 'dbf', 2531736, 31473, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(574, '210199301', 'HUTAN 93', 'CLHUTANID93', '1993', 'hutan', 'txt', 132218, 16269, 'KB', NULL, 'lay_st93_sshut.pdf', 3, '2016-01-18 11:31:13', 1),
(575, '210199301', 'HUTAN 93', 'INFHUT93', '1993', 'hutan', 'txt', 131765, 16986, 'KB', NULL, 'lay_st93_sshut.pdf', 3, '2016-01-18 11:31:13', 1),
(576, '210200301', 'HUTAN 2003', 'SKH_12', '2003', 'hutan', 'dat.file', NULL, 16592, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(577, '210200301', 'HUTAN 2003', 'SKH_13', '2003', 'hutan', 'dat.file', NULL, 3308, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(578, '210200301', 'HUTAN 2003', 'SKH_14', '2003', 'hutan', 'dat.file', NULL, 10472, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(579, '210200301', 'HUTAN 2003', 'SKH_15', '2003', 'hutan', 'dat.file', NULL, 7460, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(580, '210200301', 'HUTAN 2003', 'SKH_16', '2003', 'hutan', 'dat.file', NULL, 10512, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(581, '210200301', 'HUTAN 2003', 'SKH_17', '2003', 'hutan', 'dat.file', NULL, 4560, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(582, '210200301', 'HUTAN 2003', 'SKH_19', '2003', 'hutan', 'dat.file', NULL, 1832, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(583, '210200301', 'HUTAN 2003', 'SKH_32', '2003', 'hutan', 'dat.file', NULL, 19392, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(584, '210200301', 'HUTAN 2003', 'SKH_33', '2003', 'hutan', 'dat.file', NULL, 34344, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(585, '210200301', 'HUTAN 2003', 'SKH_34', '2003', 'hutan', 'dat.file', NULL, 1840, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(586, '210200301', 'HUTAN 2003', 'SKH_35', '2003', 'hutan', 'dat.file', NULL, 35492, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(587, '210200301', 'HUTAN 2003', 'SKH_36', '2003', 'hutan', 'dat.file', NULL, 3884, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(588, '210200301', 'HUTAN 2003', 'SKH_51', '2003', 'hutan', 'dat.file', NULL, 4652, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(589, '210200301', 'HUTAN 2003', 'SKH_52', '2003', 'hutan', 'dat.file', NULL, 5984, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(590, '210200301', 'HUTAN 2003', 'SKH_53', '2003', 'hutan', 'dat.file', NULL, 10300, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(591, '210200301', 'HUTAN 2003', 'SKH_61', '2003', 'hutan', 'dat.file', NULL, 11792, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(592, '210200301', 'HUTAN 2003', 'SKH_62', '2003', 'hutan', 'dat.file', NULL, 13012, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(593, '210200301', 'HUTAN 2003', 'SKH_63', '2003', 'hutan', 'dat.file', NULL, 3192, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(594, '210200301', 'HUTAN 2003', 'SKH_64', '2003', 'hutan', 'dat.file', NULL, 8736, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(595, '210200301', 'HUTAN 2003', 'SKH_71', '2003', 'hutan', 'dat.file', NULL, 2624, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(596, '210200301', 'HUTAN 2003', 'SKH_72', '2003', 'hutan', 'dat.file', NULL, 7496, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(597, '210200301', 'HUTAN 2003', 'SKH_73', '2003', 'hutan', 'dat.file', NULL, 17900, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(598, '210200301', 'HUTAN 2003', 'SKH_74', '2003', 'hutan', 'dat.file', NULL, 5944, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(599, '210200301', 'HUTAN 2003', 'SKH_75', '2003', 'hutan', 'dat.file', NULL, 3112, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(600, '211199301', 'KEBUN 93', 'KEBUN93_11_CL', '1993', 'perkebunan', 'txt', 159094, 17401, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(601, '211199301', 'KEBUN 93', 'KEBUN93_12_CL', '1993', 'perkebunan', 'txt', 219761, 24037, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(602, '211199301', 'KEBUN 93', 'KEBUN93_13_CL', '1993', 'perkebunan', 'txt', 165683, 18122, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(603, '211199301', 'KEBUN 93', 'KEBUN93_14_CL', '1993', 'perkebunan', 'txt', 132209, 14461, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(604, '211199301', 'KEBUN 93', 'KEBUN93_15_CL', '1993', 'perkebunan', 'txt', 118255, 12935, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(605, '211199301', 'KEBUN 93', 'KEBUN93_16_CL', '1993', 'perkebunan', 'txt', 192130, 21015, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(606, '211199301', 'KEBUN 93', 'KEBUN93_17_CL', '1993', 'perkebunan', 'txt', 86790, 9493, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(607, '211199301', 'KEBUN 93', 'KEBUN93_18_CL', '1993', 'perkebunan', 'txt', 209603, 22926, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(608, '211199301', 'KEBUN 93', 'KEBUN93_32_CL', '1993', 'perkebunan', 'txt', 424263, 46404, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(609, '211199301', 'KEBUN 93', 'KEBUN93_33_CL', '1993', 'perkebunan', 'txt', 534740, 58488, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(610, '211199301', 'KEBUN 93', 'KEBUN93_34_CL', '1993', 'perkebunan', 'txt', 207443, 22690, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(611, '211199301', 'KEBUN 93', 'KEBUN93_35_CL', '1993', 'perkebunan', 'txt', 457882, 50081, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(612, '211199301', 'KEBUN 93', 'KEBUN93_51_CL', '1993', 'perkebunan', 'txt', 173233, 18948, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(613, '211199301', 'KEBUN 93', 'KEBUN93_52_CL', '1993', 'perkebunan', 'txt', 125055, 13678, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(614, '211199301', 'KEBUN 93', 'KEBUN93_53_CL', '1993', 'perkebunan', 'txt', 245033, 26801, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(615, '211199301', 'KEBUN 93', 'KEBUN93_54_CL', '1993', 'perkebunan', 'txt', 96279, 10531, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(616, '211199301', 'KEBUN 93', 'KEBUN93_61_CL', '1993', 'perkebunan', 'txt', 156406, 17107, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(617, '211199301', 'KEBUN 93', 'KEBUN93_62_CL', '1993', 'perkebunan', 'txt', 85131, 7554, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(618, '211199301', 'KEBUN 93', 'KEBUN93_63_CL', '1993', 'perkebunan', 'txt', 118565, 12969, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(619, '211199301', 'KEBUN 93', 'KEBUN93_64_CL', '1993', 'perkebunan', 'txt', 57716, 6313, 'KB', 'Rec : 110/22000', NULL, 3, '2016-01-18 11:31:13', 1),
(620, '211199301', 'KEBUN 93', 'KEBUN93_71_CL', '1993', 'perkebunan', 'txt', 146548, 16029, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(621, '211199301', 'KEBUN 93', 'KEBUN93_72_CL', '1993', 'perkebunan', 'txt', 128111, 14013, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(622, '211199301', 'KEBUN 93', 'KEBUN93_73_CL', '1993', 'perkebunan', 'txt', 232417, 25421, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(623, '211199301', 'KEBUN 93', 'KEBUN93_74_CL', '1993', 'perkebunan', 'txt', 121633, 13304, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(624, '211199301', 'KEBUN 93', 'KEBUN93_81_CL', '1993', 'perkebunan', 'txt', 139141, 15219, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(625, '211199301', 'KEBUN 93', 'KEBUN93_82_CL', '1993', 'perkebunan', 'txt', 72555, 7936, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(626, '211200301', 'KEBUN 2003', 'SKB_12', '2003', 'perkebunan', 'dbf', NULL, 84090, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(627, '211200301', 'KEBUN 2003', 'SKB_13', '2003', 'perkebunan', 'dbf', NULL, 35561, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(628, '211200301', 'KEBUN 2003', 'SKB_14', '2003', 'perkebunan', 'dbf', NULL, 34832, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(629, '211200301', 'KEBUN 2003', 'SKB_15', '2003', 'perkebunan', 'dbf', NULL, 30892, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(630, '211200301', 'KEBUN 2003', 'SKB_16', '2003', 'perkebunan', 'dbf', NULL, 26361, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(631, '211200301', 'KEBUN 2003', 'SKB_17', '2003', 'perkebunan', 'dbf', NULL, 16556, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(632, '211200301', 'KEBUN 2003', 'SKB_18', '2003', 'perkebunan', 'dbf', NULL, 44167, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(633, '211200301', 'KEBUN 2003', 'SKB_19', '2003', 'perkebunan', 'dbf', NULL, 15380, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(634, '211200301', 'KEBUN 2003', 'SKB_32', '2003', 'perkebunan', 'dbf', NULL, 60506, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(635, '211200301', 'KEBUN 2003', 'SKB_33', '2003', 'perkebunan', 'dbf', NULL, 118333, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(636, '211200301', 'KEBUN 2003', 'SKB_34', '2003', 'perkebunan', 'dbf', NULL, 10596, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(637, '211200301', 'KEBUN 2003', 'SKB_35', '2003', 'perkebunan', 'dbf', NULL, 103256, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(638, '211200301', 'KEBUN 2003', 'SKB_36', '2003', 'perkebunan', 'dbf', NULL, 14901, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(639, '211200301', 'KEBUN 2003', 'SKB_51', '2003', 'perkebunan', 'dbf', NULL, 18751, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(640, '211200301', 'KEBUN 2003', 'SKB_52', '2003', 'perkebunan', 'dbf', NULL, 19152, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(641, '211200301', 'KEBUN 2003', 'SKB_53', '2003', 'perkebunan', 'dbf', NULL, 52715, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(642, '211200301', 'KEBUN 2003', 'SKB_61', '2003', 'perkebunan', 'dbf', NULL, 38678, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(643, '211200301', 'KEBUN 2003', 'SKB_62', '2003', 'perkebunan', 'dbf', NULL, 27848, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(644, '211200301', 'KEBUN 2003', 'SKB_63', '2003', 'perkebunan', 'dbf', NULL, 24608, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(645, '211200301', 'KEBUN 2003', 'SKB_64', '2003', 'perkebunan', 'dbf', NULL, 27504, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(646, '211200301', 'KEBUN 2003', 'SKB_71', '2003', 'perkebunan', 'dbf', NULL, 17932, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(647, '211200301', 'KEBUN 2003', 'SKB_72', '2003', 'perkebunan', 'dbf', NULL, 22110, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(648, '211200301', 'KEBUN 2003', 'SKB_73', '2003', 'perkebunan', 'dbf', NULL, 74330, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(649, '211200301', 'KEBUN 2003', 'SKB_74', '2003', 'perkebunan', 'dbf', NULL, 19591, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(650, '211200301', 'KEBUN 2003', 'SKB_75', '2003', 'perkebunan', 'dbf', NULL, 7176, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(651, '211200301', 'KEBUN 2003', 'SKB_81', '2003', 'perkebunan', 'dbf', NULL, 15691, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(652, '211200301', 'KEBUN 2003', 'SKB_82', '2003', 'perkebunan', 'dbf', NULL, 22577, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(653, '211200301', 'KEBUN 2003', 'SKB_94', '2003', 'perkebunan', 'dbf', NULL, 44802, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(654, '102199302', 'ST 93', 'SBI93_CL_F', '1993', 'budidaya perikanan', 'txt', 8847, 26058, 'KB', 'klm sawah rec.3142', NULL, 3, '2016-01-18 11:31:13', 1),
(655, '102199302', 'ST 93', 'SBI93_CL_G', '1993', 'budidaya perikanan', 'txt', 11050, 33927, 'KB', 'tambak rec.3142', NULL, 3, '2016-01-18 11:31:13', 1),
(656, '102199302', 'ST 93', 'SBI93_CL_H', '1993', 'budidaya perikanan', 'txt', 1323, 4063, 'KB', 'per.umum rec.3142', NULL, 3, '2016-01-18 11:31:13', 1),
(657, '102199302', 'ST 93', 'SBI93_CL_I', '1993', 'budidaya perikanan', 'txt', 1985, 6095, 'KB', 'laut rec.3142', NULL, 3, '2016-01-18 11:31:13', 1),
(658, '213198301', 'SSKR 83', 'SSKR21', '1983', 'sensus sampel perkebunan rakyat', 'txt', 155723, 206000, 'KB', NULL, 'lay_st83_sskr.pdf', 3, '2016-01-18 11:31:13', 1),
(659, '213198301', 'SSKR 83', 'SSKR22', '1983', 'sensus sampel perkebunan rakyat', 'txt', 362446, 45306, 'KB', NULL, 'lay_st83_sskr.pdf', 3, '2016-01-18 11:31:13', 1),
(660, '213198301', 'SSKR 83', 'SSKR23', '1983', 'sensus sampel perkebunan rakyat', 'txt', 480895, 60112, 'KB', NULL, 'lay_st83_sskr.pdf', 3, '2016-01-18 11:31:13', 1),
(661, '213198301', 'SSKR 83', 'SSKR24', '1983', 'sensus sampel perkebunan rakyat', 'txt', 356532, 44567, 'KB', NULL, 'lay_st83_sskr.pdf', 3, '2016-01-18 11:31:13', 1),
(662, '213198301', 'SSKR 83', 'SSKR25', '1983', 'sensus sampel perkebunan rakyat', 'txt', 63618, 7953, 'KB', NULL, 'lay_st83_sskr.pdf', 3, '2016-01-18 11:31:13', 1),
(663, '213198301', 'SSKR 83', 'SSKR26', '1983', 'sensus sampel perkebunan rakyat', 'txt', 168952, 21119, 'KB', NULL, 'lay_st83_sskr.pdf', 3, '2016-01-18 11:31:13', 1),
(664, '213198301', 'SSKR 83', 'SSKR27', '1983', 'sensus sampel perkebunan rakyat', 'txt', 104229, 13029, 'KB', NULL, 'lay_st83_sskr.pdf', 3, '2016-01-18 11:31:13', 1);
INSERT INTO `data_inventori` (`id`, `no_cd`, `label_cd`, `nama_data`, `tahun`, `rincian`, `format`, `jumlah_rec`, `file_size`, `file_size_unit`, `keterangan`, `nama_layout`, `subjek_id`, `create_time`, `operator_id`) VALUES
(665, '214199301', 'SSPI93', 'SSPI93_11_18', '1993', 'sensus sampel rt penangkapan ikan', 'txt', 14654, 42932, 'KB', 'Rec. 2.998', 'lay_st93_sspi.pdf', 3, '2016-01-18 11:31:13', 1),
(666, '214199301', 'SSPI93', 'SSPI93_31_35', '1993', 'sensus sampel rt penangkapan ikan', 'txt', 15208, 44555, 'KB', NULL, 'lay_st93_sspi.pdf', 3, '2016-01-18 11:31:13', 1),
(667, '214199301', 'SSPI93', 'SSPI93_51_64', '1993', 'sensus sampel rt penangkapan ikan', 'txt', 13722, 40202, 'KB', NULL, 'lay_st93_sspi.pdf', 3, '2016-01-18 11:31:13', 1),
(668, '214199301', 'SSPI93', 'SSPI93_71_82', '1993', 'sensus sampel rt penangkapan ikan', 'txt', 15330, 44913, 'KB', NULL, 'lay_st93_sspi.pdf', 3, '2016-01-18 11:31:13', 1),
(669, '214199301', 'SSPI93', 'SSPI93_IND', '1993', 'sensus sampel rt penangkapan ikan', 'txt', 6292, 18434, 'KB', NULL, 'lay_st93_sspi.pdf', 3, '2016-01-18 11:31:13', 1),
(670, '214200301', 'SPI 2003', 'SPI_12', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 35467, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(671, '214200301', 'SPI 2003', 'SPI_13', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 27766, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(672, '214200301', 'SPI 2003', 'SPI_14', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 18862, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(673, '214200301', 'SPI 2003', 'SPI_15', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 14426, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(674, '214200301', 'SPI 2003', 'SPI_16', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 18018, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(675, '214200301', 'SPI 2003', 'SPI_17', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 17735, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(676, '214200301', 'SPI 2003', 'SPI_18', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 25460, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(677, '214200301', 'SPI 2003', 'SPI_19', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 18579, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(678, '214200301', 'SPI 2003', 'SPI_21', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 10711, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(679, '214200301', 'SPI 2003', 'SPI_31', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 8994, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(680, '214200301', 'SPI 2003', 'SPI_32', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 35430, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(681, '214200301', 'SPI 2003', 'SPI_33', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 28598, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(682, '214200301', 'SPI 2003', 'SPI_34', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 10760, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(683, '214200301', 'SPI 2003', 'SPI_35', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 35958, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(684, '214200301', 'SPI 2003', 'SPI_36', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 13459, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(685, '214200301', 'SPI 2003', 'SPI_51', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 22282, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(686, '214200301', 'SPI 2003', 'SPI_52', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 19914, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(687, '214200301', 'SPI 2003', 'SPI_53', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 19501, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(688, '214200301', 'SPI 2003', 'SPI_61', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 18300, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(689, '214200301', 'SPI 2003', 'SPI_62', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 14434, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(690, '214200301', 'SPI 2003', 'SPI_63', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 11677, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(691, '214200301', 'SPI 2003', 'SPI_64', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 20627, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(692, '214200301', 'SPI 2003', 'SPI_71', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 12095, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(693, '214200301', 'SPI 2003', 'SPI_72', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 19427, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(694, '214200301', 'SPI 2003', 'SPI_73', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 28712, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(695, '214200301', 'SPI 2003', 'SPI_74', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 16629, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(696, '214200301', 'SPI 2003', 'SPI_75', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 10665, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(697, '214200301', 'SPI 2003', 'SPI_76', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 896, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(698, '214200301', 'SPI 2003', 'SPI_81', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 13524, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(699, '214200301', 'SPI 2003', 'SPI_82', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 16617, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(700, '214200301', 'SPI 2003', 'SPI_94', '2003', 'survei rt usaha penangkapan ikan di laut', 'dat.file', NULL, 11345, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(701, '214200301', 'SPI 2003', 'TAHAP_1', '2003', 'survei rt usaha penangkapan ikan di laut', 'dbf', NULL, 175, 'KB', 'Inflate', NULL, 3, '2016-01-18 11:31:13', 1),
(702, '214200301', 'SPI 2003', 'TAHAP_2', '2003', 'survei rt usaha penangkapan ikan di laut', 'dbf', NULL, 166, 'KB', 'Inflate', NULL, 3, '2016-01-18 11:31:13', 1),
(703, '214200301', 'SPI 2003', 'TAHAP_3', '2003', 'survei rt usaha penangkapan ikan di laut', 'dbf', NULL, 158, 'KB', 'Inflate', NULL, 3, '2016-01-18 11:31:13', 1),
(704, '215199301', 'TERNAK 93', 'TERNAK93_11_CL', '1993', 'peternakan', 'txt', 52730, 5613, 'KB', 'Rec. 107/21400', NULL, 3, '2016-01-18 11:31:13', 1),
(705, '215199301', 'TERNAK 93', 'TERNAK93_12_CL', '1993', 'peternakan', 'txt', 63192, 6727, 'KB', 'Data Ternak per', NULL, 3, '2016-01-18 11:31:13', 1),
(706, '215199301', 'TERNAK 93', 'TERNAK93_13_CL', '1993', 'peternakan', 'txt', 44068, 4691, 'KB', 'Propinsi', NULL, 3, '2016-01-18 11:31:13', 1),
(707, '215199301', 'TERNAK 93', 'TERNAK93_14_CL', '1993', 'peternakan', 'txt', 24896, 2651, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(708, '215199301', 'TERNAK 93', 'TERNAK93_15_CL', '1993', 'peternakan', 'txt', 28073, 2989, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(709, '215199301', 'TERNAK 93', 'TERNAK93_16_CL', '1993', 'peternakan', 'txt', 35070, 3734, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(710, '215199301', 'TERNAK 93', 'TERNAK93_17_CL', '1993', 'peternakan', 'txt', 22051, 2348, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(711, '215199301', 'TERNAK 93', 'TERNAK93_18_CL', '1993', 'peternakan', 'txt', 47921, 5101, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(712, '215199301', 'TERNAK 93', 'TERNAK93_31_CL', '1993', 'peternakan', 'txt', 5552, 591, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(713, '215199301', 'TERNAK 93', 'TERNAK93_32_CL', '1993', 'peternakan', 'txt', 97762, 10407, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(714, '215199301', 'TERNAK 93', 'TERNAK93_33_CL', '1993', 'peternakan', 'txt', 143754, 15302, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(715, '215199301', 'TERNAK 93', 'TERNAK93_34_CL', '1993', 'peternakan', 'txt', 59253, 6308, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(716, '215199301', 'TERNAK 93', 'TERNAK93_35_CL', '1993', 'peternakan', 'txt', 183774, 19562, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(717, '215199301', 'TERNAK 93', 'TERNAK93_51_CL', '1993', 'peternakan', 'txt', 82650, 8798, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(718, '215199301', 'TERNAK 93', 'TERNAK93_52_CL', '1993', 'peternakan', 'txt', 60549, 6446, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(719, '215199301', 'TERNAK 93', 'TERNAK93_53_CL', '1993', 'peternakan', 'txt', 95087, 10199, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(720, '215199301', 'TERNAK 93', 'TERNAK93_53_CL', '1993', 'peternakan', 'txt', 95087, 10199, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(721, '215199301', 'TERNAK 93', 'TERNAK93_53_CL', '1993', 'peternakan', 'txt', 43610, 4643, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(722, '215199301', 'TERNAK 93', 'TERNAK93_53_CL', '1993', 'peternakan', 'txt', 43610, 4643, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(723, '215199301', 'TERNAK 93', 'TERNAK93_61_CL', '1993', 'peternakan', 'txt', 49169, 5234, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(724, '215199301', 'TERNAK 93', 'TERNAK93_62_CL', '1993', 'peternakan', 'txt', 20896, 2225, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(725, '215199301', 'TERNAK 93', 'TERNAK93_63_CL', '1993', 'peternakan', 'txt', 23690, 2522, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(726, '215200301', 'TERNAK 2003', 'STU_62', '2003', 'peternakan', 'dbf', NULL, 18976, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(727, '215200301', 'TERNAK 2003', 'STU_63', '2003', 'peternakan', 'dbf', NULL, 28356, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(728, '215200301', 'TERNAK 2003', 'STU_64', '2003', 'peternakan', 'dbf', NULL, 20865, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(729, '215200301', 'TERNAK 2003', 'STU_71', '2003', 'peternakan', 'dbf', NULL, 17018, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(730, '215200301', 'TERNAK 2003', 'STU_72', '2003', 'peternakan', 'dbf', NULL, 31666, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(731, '215200301', 'TERNAK 2003', 'STU_73', '2003', 'peternakan', 'dbf', NULL, 52056, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(732, '215200301', 'TERNAK 2003', 'STU_74', '2003', 'peternakan', 'dbf', NULL, 13856, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(733, '215200301', 'TERNAK 2003', 'STU_75', '2003', 'peternakan', 'dbf', NULL, 7135, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(734, '215200301', 'TERNAK 2003', 'STU_81', '2003', 'peternakan', 'dbf', NULL, 11972, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(735, '215200301', 'TERNAK 2003', 'STU_82', '2003', 'peternakan', 'dbf', NULL, 17661, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(736, '215200301', 'TERNAK 2003', 'STU_94', '2003', 'peternakan', 'dbf', NULL, 38895, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(737, '223200301', 'SBI 2003', 'SBI_12', '2003', 'budidaya ikan', 'dat.file', NULL, 35336, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(738, '223200301', 'SBI 2003', 'SBI_13', '2003', 'budidaya ikan', 'dat.file', NULL, 19550, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(739, '223200301', 'SBI 2003', 'SBI_14', '2003', 'budidaya ikan', 'dat.file', NULL, 21897, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(740, '223200301', 'SBI 2003', 'SBI_15', '2003', 'budidaya ikan', 'dat.file', NULL, 10510, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(741, '223200301', 'SBI 2003', 'SBI_16', '2003', 'budidaya ikan', 'dat.file', NULL, 19984, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(742, '223200301', 'SBI 2003', 'SBI_17', '2003', 'budidaya ikan', 'dat.file', NULL, 9420, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(743, '223200301', 'SBI 2003', 'SBI_18', '2003', 'budidaya ikan', 'dat.file', NULL, 19255, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(744, '223200301', 'SBI 2003', 'SBI_19', '2003', 'budidaya ikan', 'dat.file', NULL, 2334, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(745, '223200301', 'SBI 2003', 'SBI_31', '2003', 'budidaya ikan', 'dat.file', NULL, 3674, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(746, '223200301', 'SBI 2003', 'SBI_32', '2003', 'budidaya ikan', 'dat.file', NULL, 44015, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(747, '223200301', 'SBI 2003', 'SBI_33', '2003', 'budidaya ikan', 'dat.file', NULL, 74768, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(748, '223200301', 'SBI 2003', 'SBI_34', '2003', 'budidaya ikan', 'dat.file', NULL, 9289, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(749, '223200301', 'SBI 2003', 'SBI_35', '2003', 'budidaya ikan', 'dat.file', NULL, 75932, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(750, '223200301', 'SBI 2003', 'SBI_36', '2003', 'budidaya ikan', 'dat.file', NULL, 10940, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(751, '223200301', 'SBI 2003', 'SBI_51', '2003', 'budidaya ikan', 'dat.file', NULL, 10088, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(752, '223200301', 'SBI 2003', 'SBI_52', '2003', 'budidaya ikan', 'dat.file', NULL, 12402, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(753, '223200301', 'SBI 2003', 'SBI_53', '2003', 'budidaya ikan', 'dat.file', NULL, 10747, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(754, '223200301', 'SBI 2003', 'SBI_61', '2003', 'budidaya ikan', 'dat.file', NULL, 11730, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(755, '223200301', 'SBI 2003', 'SBI_62', '2003', 'budidaya ikan', 'dat.file', NULL, 10346, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(756, '223200301', 'SBI 2003', 'SBI_63', '2003', 'budidaya ikan', 'dat.file', NULL, 12292, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(757, '223200301', 'SBI 2003', 'SBI_64', '2003', 'budidaya ikan', 'dat.file', NULL, 17707, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(758, '223200301', 'SBI 2003', 'SBI_71', '2003', 'budidaya ikan', 'dat.file', NULL, 11309, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(759, '223200301', 'SBI 2003', 'SBI_72', '2003', 'budidaya ikan', 'dat.file', NULL, 9928, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(760, '223200301', 'SBI 2003', 'SBI_73', '2003', 'budidaya ikan', 'dat.file', NULL, 46563, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(761, '223200301', 'SBI 2003', 'SBI_74', '2003', 'budidaya ikan', 'dat.file', NULL, 10268, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(762, '223200301', 'SBI 2003', 'SBI_75', '2003', 'budidaya ikan', 'dat.file', NULL, 4595, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(763, '223200301', 'SBI 2003', 'SBI_81', '2003', 'budidaya ikan', 'dat.file', NULL, 4235, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(764, '223200301', 'SBI 2003', 'SBI_82', '2003', 'budidaya ikan', 'dat.file', NULL, 3923, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(765, '223200301', 'SBI 2003', 'SBI_94', '2003', 'budidaya ikan', 'dat.file', NULL, 6176, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(766, '224200301', 'PADI.SPD 2003', 'SPD_12', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 30576, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(767, '224200301', 'PADI.SPD 2003', 'SPD_13', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 19288, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(768, '224200301', 'PADI.SPD 2003', 'SPD_14', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 17154, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(769, '224200301', 'PADI.SPD 2003', 'SPD_15', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 12976, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(770, '224200301', 'PADI.SPD 2003', 'SPD_16', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 15638, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(771, '224200301', 'PADI.SPD 2003', 'SPD_17', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 7741, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(772, '224200301', 'PADI.SPD 2003', 'SPD_18', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 14430, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(773, '224200301', 'PADI.SPD 2003', 'SPD_19', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 5865, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(774, '224200301', 'PADI.SPD 2003', 'SPD_31', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 2068, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(775, '224200301', 'PADI.SPD 2003', 'SPD_32', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 41943, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(776, '224200301', 'PADI.SPD 2003', 'SPD_33', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 62251, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(777, '224200301', 'PADI.SPD 2003', 'SPD_34', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 7901, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(778, '224200301', 'PADI.SPD 2003', 'SPD_35', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 62226, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(779, '224200301', 'PADI.SPD 2003', 'SPD_36', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 11182, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(780, '224200301', 'PADI.SPD 2003', 'SPD_51', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 11005, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(781, '224200301', 'PADI.SPD 2003', 'SPD_52', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 11026, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(782, '224200301', 'PADI.SPD 2003', 'SPD_53', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 19648, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(783, '224200301', 'PADI.SPD 2003', 'SPD_61', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 15118, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(784, '224200301', 'PADI.SPD 2003', 'SPD_62', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 18722, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(785, '224200301', 'PADI.SPD 2003', 'SPD_63', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 14651, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(786, '224200301', 'PADI.SPD 2003', 'SPD_64', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 12087, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(787, '224200301', 'PADI.SPD 2003', 'SPD_71', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 6737, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(788, '224200301', 'PADI.SPD 2003', 'SPD_72', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 10264, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(789, '224200301', 'PADI.SPD 2003', 'SPD_73', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 32178, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(790, '224200301', 'PADI.SPD 2003', 'SPD_74', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 7225, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(791, '224200301', 'PADI.SPD 2003', 'SPD_75', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 4804, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(792, '224200301', 'PADI.SPD 2003', 'SPD_81', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 5103, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(793, '224200301', 'PADI.SPD 2003', 'SPD_82', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 3514, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(794, '224200301', 'PADI.SPD 2003', 'SPD_94', '2003', 'survei usaha rt tanaman padi', 'dat.file', NULL, 8658, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(795, '225200301', 'PALAWIJA.SPW 2003', 'SPW_12', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 74489, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(796, '225200301', 'PALAWIJA.SPW 2003', 'SPW_13', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 18038, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(797, '225200301', 'PALAWIJA.SPW 2003', 'SPW_14', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 22593, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(798, '225200301', 'PALAWIJA.SPW 2003', 'SPW_15', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 10067, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(799, '225200301', 'PALAWIJA.SPW 2003', 'SPW_16', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 17097, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(800, '225200301', 'PALAWIJA.SPW 2003', 'SPW_17', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 8028, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(801, '225200301', 'PALAWIJA.SPW 2003', 'SPW_18', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 22781, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(802, '225200301', 'PALAWIJA.SPW 2003', 'SPW_19', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 7188, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(803, '225200301', 'PALAWIJA.SPW 2003', 'SPW_31', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 3026, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(804, '225200301', 'PALAWIJA.SPW 2003', 'SPW_32', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 53936, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(805, '225200301', 'PALAWIJA.SPW 2003', 'SPW_33', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 82972, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(806, '225200301', 'PALAWIJA.SPW 2003', 'SPW_34', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 12894, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(807, '225200301', 'PALAWIJA.SPW 2003', 'SPW_35', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 99393, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(808, '225200301', 'PALAWIJA.SPW 2003', 'SPW_36', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 16662, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(809, '225200301', 'PALAWIJA.SPW 2003', 'SPW_51', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 15466, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(810, '225200301', 'PALAWIJA.SPW 2003', 'SPW_52', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 18264, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(811, '225200301', 'PALAWIJA.SPW 2003', 'SPW_53', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 34754, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(812, '225200301', 'PALAWIJA.SPW 2003', 'SPW_61', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 20885, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(813, '225200301', 'PALAWIJA.SPW 2003', 'SPW_62', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 15863, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(814, '225200301', 'PALAWIJA.SPW 2003', 'SPW_63', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 17932, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(815, '225200301', 'PALAWIJA.SPW 2003', 'SPW_64', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 21291, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(816, '225200301', 'PALAWIJA.SPW 2003', 'SPW_71', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 15183, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(817, '225200301', 'PALAWIJA.SPW 2003', 'SPW_72', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 18599, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(818, '225200301', 'PALAWIJA.SPW 2003', 'SPW_73', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 45903, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(819, '225200301', 'PALAWIJA.SPW 2003', 'SPW_74', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 12496, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(820, '225200301', 'PALAWIJA.SPW 2003', 'SPW_75', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 9695, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(821, '225200301', 'PALAWIJA.SPW 2003', 'SPW_81', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 9871, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(822, '225200301', 'PALAWIJA.SPW 2003', 'SPW_82', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 15077, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(823, '225200301', 'PALAWIJA.SPW 2003', 'SPW_94', '2003', 'survei usaha rt tanaman padi', 'dbf', NULL, 40378, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(824, '216859501', 'HP 85_95', 'HP85_1_CLN', '1985', 'harga produsen', 'txt', 517665, 17189, 'KB', 'Rec:32', 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(825, '216859501', 'HP 85_95', 'HP85_2_CLN', '1985', 'harga produsen', 'txt', 285547, 10597, 'KB', 'Rec:36', 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(826, '216859501', 'HP 85_95', 'HP86_2_CLN', '1986', 'harga produsen', 'txt', 296152, 1091, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(827, '216859501', 'HP 85_95', 'CLNHP186', '1986', 'harga produsen', 'txt', 307200, 11400, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(828, '216859501', 'HP 85_95', 'CLHP187J', '1987', 'harga produsen', 'txt', 528511, 19613, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(829, '216859501', 'HP 85_95', 'CLHP287J', '1987', 'harga produsen', 'txt', 329312, 12221, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(830, '216859501', 'HP 85_95', 'CHP187LJ', '1987', 'harga produsen', 'txt', 262511, 9229, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(831, '216859501', 'HP 85_95', 'CHP287LJ', '1987', 'harga produsen', 'txt', 155160, 5455, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(832, '216859501', 'HP 85_95', 'CLHP188J', '1988', 'harga produsen', 'txt', 508058, 18854, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(833, '216859501', 'HP 85_95', 'CLHP288J', '1988', 'harga produsen', 'txt', 318975, 11873, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(834, '216859501', 'HP 85_95', 'IHP188J', '1988', 'harga produsen', 'txt', 533646, 19804, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(835, '216859501', 'HP 85_95', 'IHP288J', '1988', 'harga produsen', 'txt', 275485, 10224, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(836, '216859501', 'HP 85_95', 'IHP188LJ', '1988', 'harga produsen', 'txt', 267682, 9934, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(837, '216859501', 'HP 85_95', 'IHP288LJ', '1988', 'harga produsen', 'txt', 156543, 5810, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(838, '216859501', 'HP 85_95', 'CHP188LJ', '1989', 'harga produsen', 'txt', 256756, 9027, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(839, '216859501', 'HP 85_95', 'CHP288LJ', '1989', 'harga produsen', 'txt', 96800, 3404, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(840, '216859501', 'HP 85_95', 'CLHP189J', '1989', 'harga produsen', 'txt', 540822, 20070, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(841, '216859501', 'HP 85_95', 'CLHP289J', '1989', 'harga produsen', 'txt', 299840, 11127, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(842, '216859501', 'HP 85_95', 'CHP189LJ', '1989', 'harga produsen', 'txt', 254481, 8947, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(843, '216859501', 'HP 85_95', 'CHP289LJ', '1989', 'harga produsen', 'txt', 148334, 5215, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(844, '216859501', 'HP 85_95', 'IHP189LJ', '1989', 'harga produsen', 'txt', 215823, 3103, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(845, '216859501', 'HP 85_95', 'IHP289LJ', '1989', 'harga produsen', 'txt', 128473, 4768, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(846, '216859501', 'HP 85_95', 'CLHP190J', '1990', 'harga produsen', 'txt', 528519, 19614, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(847, '216859501', 'HP 85_95', 'CLHP290J', '1990', 'harga produsen', 'txt', 320096, 11879, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(848, '216859501', 'HP 85_95', 'CHP190LJ', '1990', 'harga produsen', 'txt', 236254, 8768, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(849, '216859501', 'HP 85_95', 'CHP290LJ', '1990', 'harga produsen', 'txt', 164596, 6109, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(850, '216859501', 'HP 85_95', 'IHP190LJ', '1990', 'harga produsen', 'txt', 228673, 8468, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(851, '216859501', 'HP 85_95', 'IHP290LJ', '1990', 'harga produsen', 'txt', 124575, 4623, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(852, '216859501', 'HP 85_95', 'CLHP191J', '1991', 'harga produsen', 'txt', 428073, 19065, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(853, '216859501', 'HP 85_95', 'CLHP291J', '1991', 'harga produsen', 'txt', 312925, 11613, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(854, '216969801', 'HP 96_98', 'CHP191LJ', '1991', 'harga produsen', 'txt', 224988, 8350, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(855, '216969801', 'HP 96_98', 'CHP291LJ', '1991', 'harga produsen', 'txt', 123424, 4581, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(856, '216969801', 'HP 96_98', 'IHP191LJ', '1991', 'harga produsen', 'txt', 199138, 7390, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(857, '216969801', 'HP 96_98', 'IHP291LJ', '1991', 'harga produsen', 'txt', 91557, 3398, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(858, '216969801', 'HP 96_98', 'CLHP192J', '1992', 'harga produsen', 'txt', 535946, 19889, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(859, '216969801', 'HP 96_98', 'CLHP292J', '1992', 'harga produsen', 'txt', 320058, 11878, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(860, '216969801', 'HP 96_98', 'CHP192LJ', '1992', 'harga produsen', 'txt', 251937, 9350, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(861, '216969801', 'HP 96_98', 'CHP292LJ', '1992', 'harga produsen', 'txt', 139238, 5168, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(862, '216969801', 'HP 96_98', 'IHP192LJ', '1992', 'harga produsen', 'txt', 259359, 9625, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(863, '216969801', 'HP 96_98', 'IHP292LJ', '1992', 'harga produsen', 'txt', 148622, 5516, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(864, '216859501', 'HP 85_95', 'IHP193J', '1993', 'harga produsen', 'txt', 481050, 17852, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(865, '216859501', 'HP 85_95', 'IHP293J', '1993', 'harga produsen', 'txt', 298487, 11077, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(866, '216859501', 'HP 85_95', 'CLHP193J', '1993', 'harga produsen', 'txt', 555874, 20629, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(867, '216859501', 'HP 85_95', 'CLHP293J', '1993', 'harga produsen', 'txt', 339120, 12585, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(868, '216859501', 'HP 85_95', 'CHP193LJ', '1993', 'harga produsen', 'txt', 259308, 9623, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(869, '216859501', 'HP 85_95', 'CHP293LJ', '1993', 'harga produsen', 'txt', 143619, 5330, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(870, '216859501', 'HP 85_95', 'IHP193LJ', '1993', 'harga produsen', 'txt', 262380, 9754, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(871, '216859501', 'HP 85_95', 'IHP293LJ', '1993', 'harga produsen', 'txt', 151724, 5631, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(872, '216859501', 'HP 85_95', 'CLHP194J', '1994', 'harga produsen', 'txt', 533879, 19812, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(873, '216859501', 'HP 85_95', 'CLHP294J', '1994', 'harga produsen', 'txt', 317627, 11787, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(874, '216859501', 'HP 85_95', 'CHP194LJ', '1994', 'harga produsen', 'txt', 260977, 9685, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(875, '216859501', 'HP 85_95', 'CHP294LJ', '1994', 'harga produsen', 'txt', 150910, 5601, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(876, '216969801', 'HP 96_98', 'IHP194LJ', '1994', 'harga produsen', 'txt', 191125, 7093, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(877, '216969801', 'HP 96_98', 'IHP294LJ', '1994', 'harga produsen', 'txt', 109090, 4049, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(878, '216969801', 'HP 96_98', 'CLHP195J', '1995', 'harga produsen', 'txt', 208013, 15320, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(879, '216969801', 'HP 96_98', 'CLHP295J', '1995', 'harga produsen', 'txt', 121672, 9106, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(880, '216969801', 'HP 96_98', 'CHP195LJ', '1995', 'harga produsen', 'txt', 412815, 7720, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(881, '216969801', 'HP 96_98', 'CHP295LJ', '1995', 'harga produsen', 'txt', 245358, 4516, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(882, '216969801', 'HP 96_98', 'IHP195LJ', '1995', 'harga produsen', 'txt', 227394, 8439, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(883, '216969801', 'HP 96_98', 'IHP295LJ', '1995', 'harga produsen', 'txt', 122178, 4534, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(884, '216969801', 'HP 96_98', 'CLHP196J', '1996', 'harga produsen', 'txt', 555429, 20612, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(885, '216969801', 'HP 96_98', 'CLHP296J', '1996', 'harga produsen', 'txt', 318426, 11817, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(886, '216969801', 'HP 96_98', 'CHP196LJ', '1996', 'harga produsen', 'txt', 273442, 10148, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(887, '216969801', 'HP 96_98', 'CHP296LJ', '1996', 'harga produsen', 'txt', 157391, 5841, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(888, '216969801', 'HP 96_98', 'CLHP197J', '1997', 'harga produsen', 'txt', 565892, 21000, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(889, '216969801', 'HP 96_98', 'CLHP297J', '1997', 'harga produsen', 'txt', 320410, 11891, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(890, '216969801', 'HP 96_98', 'CHP197LJ', '1997', 'harga produsen', 'txt', 281444, 10445, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(891, '216969801', 'HP 96_98', 'CHP297LJ', '1997', 'harga produsen', 'txt', 160307, 5949, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(892, '216969801', 'HP 96_98', 'CLHP198J', '1998', 'harga produsen', 'txt', 363596, 13493, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(893, '216969801', 'HP 96_98', 'CLHP298J', '1998', 'harga produsen', 'txt', 210280, 7804, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(894, '216969801', 'HP 96_98', 'CHP198LJ', '1998', 'harga produsen', 'txt', 184851, 6860, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(895, '216969801', 'HP 96_98', 'CHP298LJ', '1998', 'harga produsen', 'txt', 102663, 3810, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(896, '216969801', 'HP 96_98', 'IHP198J', '1998', 'harga produsen', 'txt', 360199, 13367, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(897, '216969801', 'HP 96_98', 'IHP298J', '1998', 'harga produsen', 'txt', 215085, 7982, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(898, '216969801', 'HP 96_98', 'IHP198LJ', '1998', 'harga produsen', 'txt', 181750, 6745, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(899, '216969801', 'HP 96_98', 'IHP298LJ', '1998', 'harga produsen', 'txt', 106208, 3942, 'KB', NULL, 'lay_hp.pdf', 3, '2016-01-18 11:31:13', 1),
(900, '217759501', 'INDUSTRI 75_95', 'IND75', '1975', 'industri besar', 'txt', 7469, 10445, 'KB', 'Rec:1430', NULL, 3, '2016-01-18 11:31:13', 1),
(901, '217759501', 'INDUSTRI 75_95', 'IND76', '1976', 'industri besar', 'txt', 7258, 10150, 'KB', 'Rec:1430', NULL, 3, '2016-01-18 11:31:13', 1),
(902, '217759501', 'INDUSTRI 75_95', 'IND77', '1977', 'industri besar', 'txt', 7656, 10707, 'KB', 'Rec:1430', NULL, 3, '2016-01-18 11:31:13', 1),
(903, '217759501', 'INDUSTRI 75_95', 'IND78', '1978', 'industri besar', 'txt', 7832, 10953, 'KB', 'Rec:1430', NULL, 3, '2016-01-18 11:31:13', 1),
(904, '217759501', 'INDUSTRI 75_95', 'IND79', '1979', 'industri besar', 'txt', 7960, 11132, 'KB', 'Rec:1430', NULL, 3, '2016-01-18 11:31:13', 1),
(905, '217759501', 'INDUSTRI 75_95', 'IND80', '1980', 'industri besar', 'txt', 8088, 11311, 'KB', 'Rec:1430', 'lay_ind80.pdf', 3, '2016-01-18 11:31:13', 1),
(906, '217759501', 'INDUSTRI 75_95', 'IND81', '1981', 'industri besar', 'txt', 7942, 11107, 'KB', 'Rec:1430', NULL, 3, '2016-01-18 11:31:13', 1),
(907, '217759501', 'INDUSTRI 75_95', 'IND82', '1982', 'industri besar', 'txt', 8050, 11216, 'KB', 'Rec:1430', NULL, 3, '2016-01-18 11:31:13', 1),
(908, '217759501', 'INDUSTRI 75_95', 'IND83', '1983', 'industri besar', 'txt', 7919, 11075, 'KB', 'Rec:1430', NULL, 3, '2016-01-18 11:31:13', 1),
(909, '217759501', 'INDUSTRI 75_95', 'IND84', '1984', 'industri besar', 'txt', 8006, 11196, 'KB', 'Rec:1430', NULL, 3, '2016-01-18 11:31:13', 1),
(910, '217759501', 'INDUSTRI 75_95', 'IND85', '1985', 'industri besar', 'txt', 12909, 18053, 'KB', 'Rec:1430', NULL, 3, '2016-01-18 11:31:13', 1),
(911, '217759501', 'INDUSTRI 75_95', 'IND86', '1986', 'industri besar', 'txt', 12765, 17852, 'KB', 'Rec:1430', 'lay_ind86.pdf', 3, '2016-01-18 11:31:13', 1),
(912, '217759501', 'INDUSTRI 75_95', 'IND87', '1987', 'industri besar', 'txt', 12778, 17870, 'KB', 'Rec:1430', 'lay_ind87.pdf', 3, '2016-01-18 11:31:13', 1),
(913, '217759501', 'INDUSTRI 75_95', 'IND88', '1988', 'industri besar', 'txt', 14664, 20636, 'KB', 'Rec:1439', NULL, 3, '2016-01-18 11:31:13', 1),
(914, '217759501', 'INDUSTRI 75_95', 'IND89', '1989', 'industri besar', 'txt', 14676, 20653, 'KB', 'idem', NULL, 3, '2016-01-18 11:31:13', 1),
(915, '217759501', 'INDUSTRI 75_95', 'IND90', '1990', 'industri besar', 'txt', 12430, 17553, 'KB', 'Rec:1444', 'lay_ind90.pdf', 3, '2016-01-18 11:31:13', 1),
(916, '217759501', 'INDUSTRI 75_95', 'IND91', '1991', 'industri besar', 'txt', 16494, 23260, 'KB', 'Rec:1442', 'lay_ind91.pdf', 3, '2016-01-18 11:31:13', 1),
(917, '217759501', 'INDUSTRI 75_95', 'INDBS92', '1992', 'industri besar', 'txt', 17648, 40846, 'KB', 'Rec:2368', 'lay_ind92.pdf', 3, '2016-01-18 11:31:13', 1),
(918, '217759501', 'INDUSTRI 75_95', 'INDBS93', '1993', 'industri besar', 'txt', 18163, 50729, 'KB', 'Rec:2846', 'lay_ind93.pdf', 3, '2016-01-18 11:31:13', 1),
(919, '217759501', 'INDUSTRI 75_95', 'IND94-BS', '1994', 'industri besar', 'txt', 19017, 58741, 'KB', 'Rec:3161', 'lay_ind94.pdf', 3, '2016-01-18 11:31:13', 1),
(920, '217759501', 'INDUSTRI 75_95', 'IND95-CL', '1995', 'industri besar', 'txt', 107755, 92118, 'KB', NULL, 'lay_ind95.pdf', 3, '2016-01-18 11:31:13', 1),
(921, '217960001', 'INDUSTRI96_2000', 'MFG96E', '1996', 'industri besar', 'ssd.file', NULL, 45535, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(922, '217960001', 'INDUSTRI96_2000', 'MFG97E', '1997', 'industri besar', 'ssd.file', NULL, 40735, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(923, '217960001', 'INDUSTRI96_2000', 'IND98', '1998', 'industri besar', 'dbf', 21423, 41262, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(924, '217960001', 'INDUSTRI96_2000', 'IND99', '1999', 'industri besar', 'sd.file', NULL, 29457, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(925, '217960001', 'INDUSTRI96_2000', 'IND2000', '2000', 'industri besar', 'dbf', 22174, 40824, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(926, '217200301', 'INDUSTRI 2003', 'IND2003', '2003', 'industri besar', 'dbf', 20324, 32515, 'KB', NULL, 'lay_ind2003.pdf', 3, '2016-01-18 11:31:13', 1),
(927, '217200401', 'INDUSTRI 2004', 'IND2004', '2004', 'industri besar', 'dbf', 20685, 40849, 'KB', NULL, 'lay_ind2004.pdf', 3, '2016-01-18 11:31:13', 1),
(928, '217200501', 'INDUSTRI 2005', 'IND2005', '2005', 'industri besar', 'dbf', 16383, 18995, 'KB', NULL, 'lay_ind2005.pdf', 3, '2016-01-18 11:31:13', 1),
(929, '218909501', 'IKR 91_95', 'IK90', '1990', 'industri kecil', 'txt', 3014, 1784, 'KB', 'INDKECIL91 Rec:604', NULL, 3, '2016-01-18 11:31:13', 1),
(930, '218909501', 'IKR 91_95', 'IKR91INF', '1991', 'industri kecil', 'txt', 206328, 36068, 'KB', 'Rec:177', NULL, 3, '2016-01-18 11:31:13', 1),
(931, '218909501', 'IKR 91_95', 'IKR91IND', '1991', 'industri kecil', 'txt', 206328, 34859, 'KB', 'Rec:171', NULL, 3, '2016-01-18 11:31:13', 1),
(932, '218909501', 'IKR 91_95', 'IK93', '1993', 'industri kecil', 'txt', 2847, 1655, 'KB', 'INDKECIL93 Rec:593', NULL, 3, '2016-01-18 11:31:13', 1),
(933, '218909501', 'IKR 91_95', 'RFIKR93', '1993', 'industri kecil', 'txt', 159540, 28512, 'KB', 'Rec:181', NULL, 3, '2016-01-18 11:31:13', 1),
(934, '218909501', 'IKR 91_95', 'IKR93SOR', '1993', 'industri kecil', 'txt', 159540, 28512, 'KB', 'Rec:181', NULL, 3, '2016-01-18 11:31:13', 1),
(935, '218909501', 'IKR 91_95', 'IKR94-CL', '1994', 'industri kecil', 'txt', 317682, 59876, 'KB', 'Rec:191/22920', NULL, 3, '2016-01-18 11:31:13', 1),
(936, '218909501', 'IKR 91_95', 'IKR95-CL', '1995', 'industri kecil', 'txt', 283544, 68671, 'KB', 'Rec:246/22878', NULL, 3, '2016-01-18 11:31:13', 1),
(937, '219198901', 'SBH 89', 'SBH89RFA', '1989', 'survei biaya hidup', 'txt', 1091914, 207933, 'KB', 'Rec. 193', 'lay_sbh89.pdf', 3, '2016-01-18 11:31:13', 1),
(938, '219198901', 'SBH 89', 'SBH89RFB', '1989', 'survei biaya hidup', 'txt', 1420699, 264370, 'KB', NULL, 'lay_sbh89.pdf', 3, '2016-01-18 11:31:13', 1),
(939, '219198901', 'SBH 89', 'SBH89RFC', '1989', 'survei biaya hidup', 'txt', 879058, 167399, 'KB', NULL, 'lay_sbh89.pdf', 3, '2016-01-18 11:31:13', 1),
(940, '219198901', 'SBH 89', 'SBH89RFD', '1989', 'survei biaya hidup', 'txt', 695339, 132414, 'KB', NULL, 'lay_sbh89.pdf', 3, '2016-01-18 11:31:13', 1),
(941, '219198901', 'SBH96', 'SBH96RF1', '1996', 'survei biaya hidup', 'txt', 59508, 38065, 'KB', NULL, 'lay_sbh96.pdf', 3, '2016-01-18 11:31:13', 1),
(942, '219198901', 'SBH96', 'SBH96RF2', '1996', 'survei biaya hidup', 'txt', 59508, 38995, 'KB', NULL, 'lay_sbh96.pdf', 3, '2016-01-18 11:31:13', 1),
(943, '219198901', 'SBH96', 'SBH96RF3', '1996', 'survei biaya hidup', 'txt', 59508, 24931, 'KB', NULL, 'lay_sbh96.pdf', 3, '2016-01-18 11:31:13', 1),
(944, '301759301', 'EKSPOR 75_93', 'EXP75', '1975', 'Export', 'txt', 83898, 9341, 'KB', 'Rec:112', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(945, '301759301', 'EKSPOR 75_93', 'EXP76', '1976', 'Export', 'txt', 95062, 10584, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(946, '301759301', 'EKSPOR 75_93', 'EXP77', '1977', 'Export', 'txt', 87039, 9690, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(947, '301759301', 'EKSPOR 75_93', 'EXP78', '1978', 'Export', 'txt', 92006, 10243, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(948, '301759301', 'EKSPOR 75_93', 'EXP79', '1979', 'Export', 'txt', 114745, 12775, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(949, '301759301', 'EKSPOR 75_93', 'EXP80', '1980', 'Export', 'txt', 113808, 12671, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(950, '301759301', 'EKSPOR 75_93', 'EXP81', '1981', 'Export', 'txt', 98414, 17492, 'KB', 'Rec:180', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(951, '301759301', 'EKSPOR 75_93', 'EXP82', '1982', 'Export', 'txt', 91489, 13402, 'KB', 'Rec:148', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(952, '301759301', 'EKSPOR 75_93', 'EXP83', '1983', 'Export', 'txt', 103126, 15107, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(953, '301759301', 'EKSPOR 75_93', 'EXP84', '1984', 'Export', 'txt', 113333, 17598, 'KB', 'Rec:157', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(954, '301759301', 'EKSPOR 75_93', 'EXP85', '1985', 'Export', 'txt', 114105, 17718, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(955, '301759301', 'EKSPOR 75_93', 'EXP86', '1986', 'Export', 'txt', 128902, 21400, 'KB', 'Rec:168', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(956, '301759301', 'EKSPOR 75_93', 'EXP87', '1987', 'Export', 'txt', 170072, 28384, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(957, '301759301', 'EKSPOR 75_93', 'EXP88', '1988', 'Export', 'txt', 222458, 36932, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(958, '301759301', 'EKSPOR 75_93', 'EXP89', '1989', 'Export', 'txt', 280506, 43830, 'KB', 'Rec:158', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(959, '301759301', 'EKSPOR 75_93', 'EXP90', '1990', 'Export', 'txt', 336083, 52513, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(960, '301759301', 'EKSPOR 75_93', 'EXP91', '1991', 'Export', 'txt', 422807, 51739, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(961, '301759301', 'EKSPOR 75_93', 'EXP92', '1992', 'Export', 'txt', 658795, 108727, 'KB', 'Rec:167', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(962, '301759301', 'EKSPOR 75_93', 'EXP93', '1993', 'Export', 'txt', 818101, 135019, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(963, '301949701', 'EKSPOR 94_97', 'EXP94', '1994', 'Export', 'txt', 870997, 143749, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(964, '301949701', 'EKSPOR 94_97', 'EXP95', '1995', 'Export', 'txt', 929687, 153435, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(965, '301949701', 'EKSPOR 94_97', 'EXP96', '1996', 'Export', 'txt', 989441, 163297, 'KB', 'idem', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(966, '301949701', 'EKSPOR 94_97', 'EXP97', '1997', 'Export', 'txt', 1006903, 166179, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(967, '301199801', 'EKSPOR 98', 'EXP98', '1998', 'Export', 'dbf', 1044423, 201524, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(968, '301199801', 'EKSPOR 98', 'ESUM_98', '1998', 'Export', 'dbf', 701607, 149142, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(969, '301199801', 'EKSPOR 98', 'ECTR_98', '1998', 'Export', 'dbf', 762981, 145382, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(970, '301199901', 'EKSPOR 99', 'ECTR_99', '1999', 'Export', 'dbf', 1016932, 308289, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(971, '301199901', 'EKSPOR 99', 'ESUM_99', '1999', 'Export', 'dbf', 1388060, 296019, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(972, '301199902', 'EKSPOR 99', 'EXP_99', '1999', 'Export', 'dbf', 1077578, 328069, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(973, '301199902', 'EKSPOR 99', 'EXPD_99', '1999', 'Export', 'dbf', 1347881, 291152, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(974, '301200001', 'EKSPOR 2000', 'EXP_00', '2000', 'Export', 'dbf', 1200869, 379491, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(975, '301200001', 'EKSPOR 2000', 'EXPD_00', '2000', 'Export', 'dbf', 1568029, 293197, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(976, '301200002', 'EKSPOR 2000', 'ESUM_00', '2000', 'Export', 'dbf', 1731423, 384394, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(977, '301200003', 'EKSPOR 2000', 'ECTR_00', '2000', 'Export', 'dbf', 1858245, 371655, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(978, '301200101', 'EKSPOR 2001', 'EXP_01', '2001', 'Export', 'dbf', 1176788, 374297, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(979, '301200102', 'EKSPOR 2001', 'EXPD_01', '2001', 'Export', 'dbf', 1761963, 368965, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(980, '301200103', 'EKSPOR 2001', 'ECTR_01', '2001', 'Export', 'dbf', 1916976, 383401, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(981, '301200104', 'EKSPOR 2001', 'ESUM_01', '2001', 'Export', 'dbf', 1785749, 396346, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(982, '301200201', 'EKSPOR 2002', 'EXP_02', '2002', 'Export', 'dbf', 1214367, 374081, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(983, '301200201', 'EKSPOR 2002', 'EXPD_02', '2002', 'Export', 'dbf', 1929355, 418896, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(984, '301200202', 'EKSPOR 2002', 'ECTR_02', '2002', 'Export', 'dbf', 1863242, 371941, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(985, '301200202', 'EKSPOR 2002', 'ESUM_02', '2002', 'Export', 'dbf', 1739524, 385525, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(986, '301200301', 'EKSPOR 2003', 'EXP_03', '2003', 'Export', 'dbf', 1196184, 318534, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(987, '301200301', 'EKSPOR 2003', 'ESUM_03', '2003', 'Export', 'dbf', 1722206, 376071, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(988, '301200302', 'EKSPOR 2003', 'EXPD_03', '2003', 'Export', 'dbf', 1887214, 358507, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(989, '301200302', 'EKSPOR 2003', 'ECTR_03', '2003', 'Export', 'dbf', 1850407, 363317, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(990, '301200401', 'EKSPOR 2004', 'EXP_04', '2004', 'Export', 'dbf', 1357659, 374994, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(991, '301200402', 'EKSPOR 2004', 'EXPD_04', '2004', 'Export', 'dbf', 2106081, 702391, 'KB', 'Bln. 1_9', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(992, '301200402', 'EKSPOR 2004', 'EXPD_04', '2004', 'Export', 'dbf', 2106081, 702391, 'KB', 'Bln. 1_9', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(993, '301200403', 'EKSPOR 2004', 'EXPD_04', '2004', 'Export', 'dbf', 871993, 313919, 'KB', 'Bln. 10_12', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(994, '301200403', 'EKSPOR 2004', 'EXPD_04', '2004', 'Export', 'dbf', 871993, 313919, 'KB', 'Bln. 10_12', 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(995, '301200404', 'EKSPOR 2004', 'EXID_04', '2004', 'Export', 'dbf', 2978043, 465615, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(996, '301200405', 'EKSPOR 2004', 'ECTR_04', '2004', 'Export', 'dbf', 1841485, 386391, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(997, '301200406', 'EKSPOR 2004', 'ESUM_04', '2004', 'Export', 'dbf', 1866360, 402846, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(998, '301200501', 'EKSPOR 2005', 'EXP_05', '2005', 'Export', 'dbf', 1292297, 382140, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(999, '301200502', 'EKSPOR 2005', 'ESUM_05', '2005', 'Export', 'dbf', 1757734, 376165, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(1000, '301200502', 'EKSPOR 2005', 'ECTR_05', '2005', 'Export', 'dbf', 1845285, 354301, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(1001, '301200503', 'EKSPOR 2005', 'EXPD_05', '2005', 'Export', 'dbf', 386534, 885885, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1);
INSERT INTO `data_inventori` (`id`, `no_cd`, `label_cd`, `nama_data`, `tahun`, `rincian`, `format`, `jumlah_rec`, `file_size`, `file_size_unit`, `keterangan`, `nama_layout`, `subjek_id`, `create_time`, `operator_id`) VALUES
(1002, '301200504', 'EKSPOR 2005', 'EXID_05', '2005', 'Export', 'dbf', 3036983, 554878, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(1003, '301200601', 'EKSPOR 2006', 'ECTR_06', '2006', 'Export', 'dbf', 1890359, 362955, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(1004, '301200601', 'EKSPOR 2006', 'ESUM_06', '2006', 'Export', 'dbf', 1802761, 385800, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(1005, '301200601', 'EKSPOR 2006', 'EXP_06', '2006', 'Export', 'dbf', 1552123, 415986, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(1006, '301200601', 'EKSPOR 2006', 'EXPD_06', '2006', 'Export', 'dbf', 3985325, 984386, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(1007, '301200601', 'EKSPOR 2006', 'EXID_06', '2006', 'Export', 'dbf', 3985322, 613746, 'KB', NULL, 'lay_exp.pdf', 3, '2016-01-18 11:31:13', 1),
(1008, '302758301', 'IMPOR 75_83', 'IMP75', '1975', 'Import', 'txt', 326997, 64506, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1009, '302758301', 'IMPOR 75_83', 'IMP76', '1976', 'Import', 'txt', 321142, 63351, 'KB', 'Rec:194', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1010, '302758301', 'IMPOR 75_83', 'IMP77', '1977', 'Import', 'txt', 208144, 39841, 'KB', 'Rec:197', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1011, '302758301', 'IMPOR 75_83', 'IMP78', '1978', 'Import', 'txt', 311842, 60603, 'KB', 'idem', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1012, '302758301', 'IMPOR 75_83', 'IMP79', '1979', 'Import', 'txt', 343923, 66837, 'KB', 'idem', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1013, '302758301', 'IMPOR 75_83', 'IMP80', '1980', 'Import', 'txt', 431904, 83935, 'KB', 'Rec:180', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1014, '302758301', 'IMPOR 75_83', 'IMP81', '1981', 'Import', 'txt', 470808, 83679, 'KB', 'idem', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1015, '302758301', 'IMPOR 75_83', 'IMP82', '1982', 'Import', 'txt', 498485, 88545, 'KB', 'Rec:184', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1016, '302758301', 'IMPOR 75_83', 'IMP83', '1983', 'Import', 'txt', 446557, 81113, 'KB', 'Rec:183', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1017, '302848901', 'IMPOR 84_89', 'IMP84', '1984', 'Import', 'txt', 444538, 80313, 'KB', 'idem', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1018, '302848901', 'IMPOR 84_89', 'IMP85', '1985', 'Import', 'txt', 329505, 59549, 'KB', 'Rec. 183', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1019, '302848901', 'IMPOR 84_89', 'IMP86', '1986', 'Import', 'txt', 355393, 79131, 'KB', 'Rec. 226', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1020, '302848901', 'IMPOR 84_89', 'IMP87', '1987', 'Import', 'txt', 404573, 90081, 'KB', 'idem', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1021, '302848901', 'IMPOR 84_89', 'IMP88', '1988', 'Import', 'txt', 460730, 102585, 'KB', 'idem', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1022, '302848901', 'IMPOR 84_89', 'IMP89', '1989', 'Import', 'txt', 626312, 111316, 'KB', 'Rec. 234', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1023, '302909501', 'IMPOR 90', 'IMP90', '1990', 'Import', 'txt', 942212, 167464, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1024, '302919601', 'IMPOR 91', 'IMP91', '1991', 'Import', 'txt', 1069841, 190148, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1025, '302199801', 'IMPOR 92', 'IMP92', '1992', 'Import', 'txt', 1278252, 270879, 'KB', 'Rec. 215', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1026, '302939401', 'IMPOR 93', 'IMP93', '1993', 'Import', 'txt', 1424221, 301813, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1027, '302939401', 'IMPOR 93', 'IMP94', '1994', 'Import', 'txt', 1563090, 170480, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1028, '302909501', 'IMPOR 90', 'IMP95', '1995', 'Import', 'txt', 1656670, 351072, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1029, '302919601', 'IMPOR 91', 'IMP96', '1996', 'Import', 'txt', 1660621, 353276, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1030, '302199701', 'IMPOR 97', 'IMP97_A', '1997', 'Import', 'txt', 1538000, 325924, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1031, '302199701', 'IMPOR 97', 'IMP97_B', '1997', 'Import', 'txt', 1140717, 241734, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1032, '302199802', 'IMPOR 98', 'IMP98', '1998', 'Import', 'dbf', 1801427, 350779, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1033, '302199803', 'IMPOR 98', 'ISUM98', '1998', 'Import', 'dbf', 1425079, 294258, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1034, '302199803', 'IMPOR 98', 'ICTR98', '1998', 'Import', 'dbf', 1622747, 310661, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1035, '302199901', 'IMPOR 99', 'IMP99', '1999', 'Import', 'dbf', 449265, 173432, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1036, '302199902', 'IMPOR 99', 'IMPD99', '1999', 'Import', 'dbf', 2620245, 843663, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1037, '302199903', 'IMPOR 99', 'ISUM99', '1999', 'Import', 'dbf', 1589675, 328106, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1038, '302199903', 'IMPOR 99', 'ICTR99', '1999', 'Import', 'dbf', 1734866, 353020, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1039, '302200001', 'IMPOR 2000', 'IMP_00', '2000', 'Import', 'dbf', 585337, 233566, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1040, '302200002', 'IMPOR 2000', 'IMPD_00', '2000', 'Import', 'dbf', 3880044, 410359, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1041, '302200003', 'IMPOR 2000', 'ISUM_00', '2000', 'Import', 'dbf', 1775957, 383595, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1042, '302200003', 'IMPOR 2000', 'ICTR_00', '2000', 'Import', 'dbf', 2330278, 454104, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1043, '302200101', 'IMPOR 2001', 'IMP_01', '2001', 'Import', 'dbf', 590190, 215701, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1044, '302200101', 'IMPOR 2001', 'ISUM_01', '2001', 'Import', 'dbf', 1851186, 399865, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1045, '302200102', 'IMPOR 2001', 'IMPD_01', '2001', 'Import', 'dbf', 1716330, 573259, 'KB', 'Bln. 1_5', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1046, '302200102', 'IMPOR 2001', 'IMPD_01', '2001', 'Import', 'dbf', 1716330, 573259, 'KB', 'Bln. 1_5', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1047, '302200102', 'IMPOR 2001', 'IMPD_01', '2001', 'Import', 'dbf', 1716330, 573259, 'KB', 'Bln. 1_5', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1048, '302200103', 'IMPOR 2001', 'IMPD_01', '2001', 'Import', 'dbf', 1579701, 527625, 'KB', 'Bln. 6_10', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1049, '302200103', 'IMPOR 2001', 'IMPD_01', '2001', 'Import', 'dbf', 1579701, 527625, 'KB', 'Bln. 6_10', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1050, '302200103', 'IMPOR 2001', 'IMPD_01', '2001', 'Import', 'dbf', 1579701, 527625, 'KB', 'Bln. 6_10', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1051, '302200104', 'IMPOR 2001', 'IMPD_01', '2001', 'Import', 'dbf', 529677, 176914, 'KB', 'Bl. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1052, '302200104', 'IMPOR 2001', 'IMPD_01', '2001', 'Import', 'dbf', 529677, 176914, 'KB', 'Bl. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1053, '302200104', 'IMPOR 2001', 'IMPD_01', '2001', 'Import', 'dbf', 529677, 176914, 'KB', 'Bl. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1054, '302200104', 'IMPOR 2001', 'ICTR_01', '2001', 'Import', 'dbf', 2303252, 451918, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1055, '302200201', 'IMPOR 2002', 'IMP_02', '2002', 'Import', 'dbf', 614813, 235563, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1056, '302200201', 'IMPOR 2002', 'ISUM_02', '2002', 'Import', 'dbf', 1777927, 383341, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1057, '302200202', 'IMPOR 2002', 'IMPD_02', '2002', 'Import', 'dbf', 1802285, 601956, 'KB', 'Bln. 1 _6', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1058, '302200202', 'IMPOR 2002', 'IMPD_02', '2002', 'Import', 'dbf', 1802285, 601956, 'KB', 'Bln. 1 _6', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1059, '302200203', 'IMPOR 2002', 'IMPD_02', '2002', 'Import', 'dbf', 2020672, 619606, 'KB', 'Bln. 7_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1060, '302200203', 'IMPOR 2002', 'IMPD_02', '2002', 'Import', 'dbf', 2020672, 619606, 'KB', 'Bln. 7_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1061, '302200204', 'IMPOR 2002', 'ICTR_02', '2002', 'Import', 'dbf', 2244335, 451625, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1062, '302200301', 'IMPOR 2003', 'IMP_03', '2003', 'Import', 'dbf', 594940, 831999, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1063, '302200301', 'IMPOR 2003', 'ICTR_03', '2003', 'Import', 'dbf', 2271268, 450478, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1064, '302200302', 'IMPOR 2003', 'IMPD_03', '2003', 'Import', 'dbf', 2682903, 674043, 'KB', 'Bln. 1_10', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1065, '302200302', 'IMPOR 2003', 'IMPD_03', '2003', 'Import', 'dbf', 2682903, 674043, 'KB', 'Bln. 1_10', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1066, '302200303', 'IMPOR 2003', 'IMPD_03', '2003', 'Import', 'dbf', 490541, 157956, 'KB', 'Bln. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1067, '302200303', 'IMPOR 2003', 'IMPD_03', '2003', 'Import', 'dbf', 490541, 157956, 'KB', 'Bln. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1068, '302200303', 'IMPOR 2003', 'ISUM_03', '2003', 'Import', 'dbf', 1818605, 384897, 'KB', 'Bln. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1069, '302200401', 'IMPOR 2004', 'IMP_04', '2004', 'Import', 'dbf', 760634, 234718, 'KB', 'Bln. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1070, '302200401', 'IMPOR 2004', 'ISUM_04', '2004', 'Import', 'dbf', 1555274, 390595, 'KB', 'Bln. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1071, '302200402', 'IMPOR 2004', 'IMPD_04', '2004', 'Import', 'dbf', 6049358, 612395, 'KB', 'Bln. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1072, '302200405', 'IMPOR 2004', 'IMID_04', '2004', 'Import', 'dbf', 5391694, 669310, 'KB', 'Bln. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1073, '302200406', 'IMPOR 2004', 'ICTR_04', '2004', 'Import', 'dbf', 2346233, 470020, 'KB', 'Bln. 11_12', 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1074, '302200501', 'IMPOR 2005', 'IMP_05', '2005', 'Import', 'dbf', 723684, 284489, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1075, '302200501', 'IMPOR 2005', 'ISUM_05', '2005', 'Import', 'dbf', 2029495, 422237, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1076, '302200502', 'IMPOR 2005', 'ICTR_05', '2005', 'Import', 'dbf', 2715956, 526902, 'KB', NULL, 'lay-imp.pdf', 3, '2016-01-18 11:31:13', 1),
(1077, '203859001', 'susenas 85_90', 'SSN89_BAL', '1989', 'modul balita', 'txt', 14217, 1694, 'KB', 'Balita          Rec : 120', 'lay_ssn89.pdf', 3, '2016-01-18 11:31:13', 1),
(1078, '203859001', 'susenas 85_90', 'SSN89_PER', '1989', 'modul perumahan', 'txt', 32744, 5852, 'KB', 'Perumahan  Rec : 181', 'lay_ssn89.pdf', 3, '2016-01-18 11:31:13', 1),
(1079, '203859001', 'susenas 85â€¦90', 'SSN89_IND', '1989', 'modul individu', 'txt', 148024, 3470, 'KB', 'Individu        Rec :   22', 'lay_ssn89.pdf', 3, '2016-01-18 11:31:13', 1),
(1080, '203199001', 'susenas 90 M', 'SSN90_11_18', '1990', 'modul konsumsi-pengeluaran rt', 'txt', 815077, 161583, 'KB', 'Prop 11-18  Rec : 201', 'lay_ssn90.pdf', 3, '2016-01-18 11:31:13', 1),
(1081, '203199001', 'susenas 90 M', 'SSN90_31_32', '1990', 'modul konsumsi-pengeluaran rt', 'txt', 612419, 121408, 'KB', 'Prop 31-32', 'lay_ssn90.pdf', 3, '2016-01-18 11:31:13', 1),
(1082, '203199001', 'susenas 90 M', 'SSN90_33_34', '1990', 'modul konsumsi-pengeluaran rt', 'txt', 578447, 114680, 'KB', 'Prop 33-34', 'lay_ssn90.pdf', 3, '2016-01-18 11:31:13', 1),
(1083, '203199001', 'susenas 90 M', 'SSN90_35', '1990', 'modul konsumsi-pengeluaran rt', 'txt', 566084, 112222, 'KB', 'Prop 35', 'lay_ssn90.pdf', 3, '2016-01-18 11:31:13', 1),
(1084, '203199001', 'susenas 90 M', 'SSN90_51_64', '1990', 'modul konsumsi-pengeluaran rt', 'txt', 688652, 136520, 'KB', 'Prop 51-64', 'lay_ssn90.pdf', 3, '2016-01-18 11:31:13', 1),
(1085, '203199001', 'susenas 90 M', 'SSN90_71_82', '1990', 'modul konsumsi-pengeluaran rt', 'txt', 412647, 81750, 'KB', 'Prop 71-82', 'lay_ssn90.pdf', 3, '2016-01-18 11:31:13', 1),
(1086, '203199001', 'susenas 90 M', 'SSN90_TINF', '1990', 'modul demografi-kesehatan', 'txt', 259225, 33416, 'KB', 'INDONESIA', '', 3, '2016-01-18 11:31:13', 1),
(1087, '203199201', 'susenas 92', 'SSN91_TRA', '1991', 'modul sosbud-perjalanan-kesra', 'txt', 71963, 12088, 'KB', 'Perjalanan Rec : 170', 'lay_ssn91.pdf', 3, '2016-01-18 11:31:13', 1),
(1088, '203199201', 'susenas 92', 'SSN92_11', '1992', 'modul kesehatan-pendidikan-perumahan', 'txt', 8994, 4023, 'KB', 'Data MODUL', 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(1089, '203199201', 'susenas 92', 'SSN92_12', '1992', 'modul kesehatan-pendidikan-perumahan', 'txt', 16966, 7589, 'KB', 'Rec : 456', 'lay_ssn92.pdf', 3, '2016-01-18 11:31:13', 1),
(1090, '41000', 'SDKI 92', 'SDKI92', '1992', 'survei demografi & kesehatan indonesia', 'txt', 119112, 20473, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(1091, '101197001', 'SP_ADV 71', 'SP71_01', '1971', 'sensus penduduk', 'txt', 86506, 4224, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1092, '101197001', 'SP_ADV 71', 'SP71_02', '1971', 'sensus penduduk', 'txt', 337487, 16479, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1093, '101197001', 'SP_ADV 71', 'SP71_03', '1971', 'sensus penduduk', 'txt', 124092, 6060, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1094, '101197001', 'SP_ADV 71', 'SP71_04', '1971', 'sensus penduduk', 'txt', 73810, 3605, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1095, '101197001', 'SP_ADV 71', 'SP71_05', '1971', 'sensus penduduk', 'txt', 77026, 3762, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1096, '101197001', 'SP_ADV 71', 'SP71_06', '1971', 'sensus penduduk', 'txt', 131917, 6442, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1097, '101197001', 'SP_ADV 71', 'SP71_07', '1971', 'sensus penduduk', 'txt', 34491, 1685, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1098, '101197001', 'SP_ADV 71', 'SP71_08', '1971', 'sensus penduduk', 'txt', 96211, 4698, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1099, '101197001', 'SP_ADV 71', 'SP71_09', '1971', 'sensus penduduk', 'txt', 261468, 12767, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1100, '101197001', 'SP_ADV 71', 'SP71_10', '1971', 'sensus penduduk', 'txt', 764500, 37330, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1101, '101197001', 'SP_ADV 71', 'SP71_11', '1971', 'sensus penduduk', 'txt', 787599, 38457, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1102, '101197001', 'SP_ADV 71', 'SP71_12', '1971', 'sensus penduduk', 'txt', 93855, 4583, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1103, '101197001', 'SP_ADV 71', 'SP71_14', '1971', 'sensus penduduk', 'txt', 101884, 4975, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1104, '101197001', 'SP_ADV 71', 'SP71_15', '1971', 'sensus penduduk', 'txt', 91172, 4452, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1105, '101197001', 'SP_ADV 71', 'SP71_17', '1971', 'sensus penduduk', 'txt', 51849, 2532, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1106, '101197001', 'SP_ADV 71', 'SP71_18', '1971', 'sensus penduduk', 'txt', 51339, 2507, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1107, '101197001', 'SP_ADV 71', 'SP71_19', '1971', 'sensus penduduk', 'txt', 108965, 5321, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1108, '101197001', 'SP_ADV 71', 'SP71_20', '1971', 'sensus penduduk', 'txt', 30428, 1486, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1109, '101197001', 'SP_ADV 71', 'SP71_21', '1971', 'sensus penduduk', 'txt', 79324, 3874, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1110, '101197001', 'SP_ADV 71', 'SP71_22', '1971', 'sensus penduduk', 'txt', 39026, 1906, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1111, '101197001', 'SP_ADV 71', 'SP71_24', '1971', 'sensus penduduk', 'txt', 44535, 2175, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1112, '101197001', 'SP_ADV 71', 'SP71_25', '1971', 'sensus penduduk', 'txt', 65374, 3193, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1113, '101197001', 'SP_ADV 71', 'SP71_26', '1971', 'sensus penduduk', 'txt', 24938, 1218, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1114, '101197001', 'SP_ADV 71', 'SP71_IND', '1971', 'sensus penduduk', 'txt', 4947508, 177889, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1115, '101198001', 'SP_80', 'SP80_11', '1980', 'sensus penduduk', 'txt', 148110, 28494, 'KB', 'Rec : 195', 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1116, '101198001', 'SP_80', 'SP80_12_1', '1980', 'sensus penduduk', 'txt', 255462, 49147, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1117, '101198001', 'SP_80', 'SP80_12_2', '1980', 'sensus penduduk', 'txt', 228068, 43877, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1118, '101198001', 'SP_80', 'SP80_13', '1980', 'sensus penduduk', 'txt', 206539, 39735, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1119, '101198001', 'SP_80', 'SP80_14', '1980', 'sensus penduduk', 'txt', 128188, 24662, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1120, '101198001', 'SP_80', 'SP80_15', '1980', 'sensus penduduk', 'txt', 89381, 17196, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1121, '101198001', 'SP_80', 'SP80_16', '1980', 'sensus penduduk', 'txt', 258613, 49753, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1122, '101198001', 'SP_80', 'SP80_17', '1980', 'sensus penduduk', 'txt', 42731, 8221, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1123, '101198001', 'SP_80', 'SP80_18', '1980', 'sensus penduduk', 'txt', 269104, 51771, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1124, '101198001', 'SP_80', 'SP80_31', '1980', 'sensus penduduk', 'txt', 355338, 68361, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1125, '101198001', 'SP_80', 'SP80_32_1', '1980', 'sensus penduduk', 'txt', 229604, 44172, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1126, '101198001', 'SP_80', 'SP80_32_2', '1980', 'sensus penduduk', 'txt', 174702, 33610, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1127, '101198001', 'SP_80', 'SP80_32_3', '1980', 'sensus penduduk', 'txt', 167187, 32164, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1128, '101198001', 'SP_80', 'SP80_32_4', '1980', 'sensus penduduk', 'txt', 271815, 52293, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1129, '101198001', 'SP_80', 'SP80_32_5', '1980', 'sensus penduduk', 'txt', 234093, 45036, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1130, '101198001', 'SP_80', 'SP80_32_6', '1980', 'sensus penduduk', 'txt', 247121, 47542, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1131, '101198001', 'SP_80', 'SP80_32_7', '1980', 'sensus penduduk', 'txt', 236755, 45548, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1132, '101198001', 'SP_80', 'SP80_32_8', '1980', 'sensus penduduk', 'txt', 47866, 22676, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1133, '101198001', 'SP_80', 'SP80_33_1', '1980', 'sensus penduduk', 'txt', 239422, 46061, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1134, '101198001', 'SP_80', 'SP80_33_2', '1980', 'sensus penduduk', 'txt', 198997, 38284, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1135, '101198001', 'SP_80', 'SP80_33_3', '1980', 'sensus penduduk', 'txt', 203753, 39199, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1136, '101198001', 'SP_80', 'SP80_33_4', '1980', 'sensus penduduk', 'txt', 188815, 36325, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1137, '101198001', 'SP_80', 'SP80_33_5', '1980', 'sensus penduduk', 'txt', 161460, 31063, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1138, '101198001', 'SP_80', 'SP80_33_6', '1980', 'sensus penduduk', 'txt', 162620, 31286, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1139, '101198001', 'SP_80', 'SP80_33_7', '1980', 'sensus penduduk', 'txt', 267947, 51549, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1140, '101198001', 'SP_80', 'SP80_33_8', '1980', 'sensus penduduk', 'txt', 116132, 22342, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1141, '101198001', 'SP_80', 'SP80_34', '1980', 'sensus penduduk', 'txt', 167785, 40928, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1142, '101198001', 'SP_80', 'SP80_35_1', '1980', 'sensus penduduk', 'txt', 161135, 31000, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1143, '101198001', 'SP_80', 'SP80_35_2', '1980', 'sensus penduduk', 'txt', 322077, 61953, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1144, '101198001', 'SP_80', 'SP80_35_3', '1980', 'sensus penduduk', 'txt', 284949, 54820, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1145, '101198001', 'SP_80', 'SP80_35_4', '1980', 'sensus penduduk', 'txt', 212739, 40928, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1146, '101198001', 'SP_80', 'SP80_35_5', '1980', 'sensus penduduk', 'txt', 189702, 36496, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1147, '101198001', 'SP_80', 'SP80_35_6', '1980', 'sensus penduduk', 'txt', 222385, 42784, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1148, '101198001', 'SP_80', 'SP80_35_7', '1980', 'sensus penduduk', 'txt', 214582, 41282, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1149, '101198001', 'SP_80', 'SP80_35_8', '1980', 'sensus penduduk', 'txt', 190994, 36744, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1150, '101198001', 'SP_80', 'SP80_51', '1980', 'sensus penduduk', 'txt', 147827, 28440, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1151, '101198001', 'SP_80', 'SP80_52', '1980', 'sensus penduduk', 'txt', 164748, 31695, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1152, '101198001', 'SP_80', 'SP80_53', '1980', 'sensus penduduk', 'txt', 165041, 31752, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1153, '101198001', 'SP_80', 'SP80_61', '1980', 'sensus penduduk', 'txt', 138084, 26565, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1154, '101198001', 'SP_80', 'SP80_62', '1980', 'sensus penduduk', 'txt', 52030, 10010, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1155, '101198001', 'SP_80', 'SP80_63', '1980', 'sensus penduduk', 'txt', 110625, 21283, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1156, '101198001', 'SP_80', 'SP80_64', '1980', 'sensus penduduk', 'txt', 73995, 14236, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1157, '101198001', 'SP_80', 'SP80_71', '1980', 'sensus penduduk', 'txt', 130539, 25114, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1158, '101198001', 'SP_80', 'SP80_72', '1980', 'sensus penduduk', 'txt', 70560, 13575, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1159, '101198001', 'SP_80', 'SP80_73', '1980', 'sensus penduduk', 'txt', 344239, 62256, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1160, '101198001', 'SP_80', 'SP80_74', '1980', 'sensus penduduk', 'txt', 54438, 10473, 'KB', NULL, 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1161, '101198001', 'SP_80', 'SP80_81', '1980', 'sensus penduduk', 'txt', 76692, 14755, 'KB', 'TOTAL REC :', 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1162, '101198001', 'SP_80', 'SP80_82', '1980', 'sensus penduduk', 'txt', 63938, 12301, 'KB', '8.758.927', 'lay_sp80.pdf', 3, '2016-01-18 11:31:13', 1),
(1163, '101199001', 'SP_90', 'SP90_SR11', '1990', 'sensus penduduk', 'txt', 291514, 70617, 'KB', 'Rec.size 246', 'lay-sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1164, '101199001', 'SP_90', 'SP90_12', '1990', 'sensus penduduk', 'txt', 691055, 167365, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1165, '101199001', 'SP_90', 'SP90_13', '1990', 'sensus penduduk', 'txt', 378602, 91693, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1166, '101199001', 'SP_90', 'SP90_14', '1990', 'sensus penduduk', 'txt', 230801, 55898, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1167, '101199001', 'SP_90', 'SP90_15', '1990', 'sensus penduduk', 'txt', 153075, 37037, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1168, '101199001', 'SP_90', 'SP90_16', '1990', 'sensus penduduk', 'txt', 403823, 97816, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1169, '101199001', 'SP_90', 'SP90_17', '1990', 'sensus penduduk', 'txt', 107124, 25975, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1170, '101199001', 'SP_90', 'SP90_18', '1990', 'sensus penduduk', 'txt', 309263, 74915, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1171, '101199001', 'SP_90', 'SP90_31', '1990', 'sensus penduduk', 'txt', 670029, 162273, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1172, '101199003', 'SP_90', 'SP90_32', '1990', 'sensus penduduk', 'txt', 1716431, 415684, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1173, '101199002', 'SP_90', 'SP90_33', '1990', 'sensus penduduk', 'txt', 1515628, 367082, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1174, '101199002', 'SP_90', 'SP90_34', '1990', 'sensus penduduk', 'txt', 180051, 43067, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1175, '101199004', 'SP_90', 'SP90_35', '1990', 'sensus penduduk', 'txt', 1732078, 419488, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1176, '101199004', 'SP_90', 'SP90_51', '1990', 'sensus penduduk', 'txt', 219473, 53154, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1177, '101199004', 'SP_90', 'SP90_52', '1990', 'sensus penduduk', 'txt', 212253, 51406, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1178, '101199004', 'SP_90', 'SP90_53', '1990', 'sensus penduduk', 'txt', 373431, 90456, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1179, '101199004', 'SP_90', 'SP90_54', '1990', 'sensus penduduk', 'txt', 64119, 15529, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1180, '101199005', 'SP_90', 'SP90_61', '1990', 'sensus penduduk', 'txt', 249146, 60341, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1181, '101199005', 'SP_90', 'SP90_62', '1990', 'sensus penduduk', 'txt', 157591, 38167, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1182, '101199005', 'SP_90', 'SP90_63', '1990', 'sensus penduduk', 'txt', 261270, 63227, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1183, '101199005', 'SP_90', 'SP90_64', '1990', 'sensus penduduk', 'txt', 168773, 40875, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1184, '101199005', 'SP_90', 'SP90_71', '1990', 'sensus penduduk', 'txt', 169947, 41160, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1185, '101199005', 'SP_90', 'SP90_72', '1990', 'sensus penduduk', 'txt', 142050, 34403, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1186, '101199005', 'SP_90', 'SP90_73', '1990', 'sensus penduduk', 'txt', 626396, 151706, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1187, '101199005', 'SP_90', 'SP90_74', '1990', 'sensus penduduk', 'txt', 123823, 29989, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1188, '101199005', 'SP_90', 'SP90_81', '1990', 'sensus penduduk', 'txt', 142781, 34580, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1189, '101199005', 'SP_90', 'SP90_82', '1990', 'sensus penduduk', 'txt', 193088, 42764, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1190, '101199006', 'SP_90', 'SP90_11_31_CLN', '1990', 'sensus penduduk', 'txt', 3235268, 419000, 'KB', 'Rec. 134', 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1191, '101199007', 'SP_90', 'SP90_32_34_CLN', '1990', 'sensus penduduk', 'txt', 3412110, 442000, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1192, '101199008', 'SP_90', 'SP90_35_82_CLN', '1990', 'sensus penduduk', 'txt', 4836309, 627000, 'KB', NULL, 'lay_sp90.pdf', 3, '2016-01-18 11:31:13', 1),
(1193, '207199501', 'SKIA 95', 'SKIA95', '1995', 'survei kesehatan ibu & anak', 'txt', 173723, 28163, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(1194, '41004', 'SKIA95', 'SKIA95_SAMPEL1', '1995', 'survei kesehatan ibu & anak', 'txt', 8086, 822, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(1195, '41004', 'SKIA95', 'SKIA95_RUTA', '1995', 'survei kesehatan ibu & anak', 'txt', 8086, 1043, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(1196, '101197101', 'SP_ADV 71', 'SPADV80_831', '1980', 'sensus penduduk 1980 advance', 'txt', 177857, 34217, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1197, '101197101', 'SP_ADV 71', 'SPADV80_832', '1980', 'sensus penduduk 1980 advance', 'txt', 156684, 30144, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1198, '101197101', 'SP_ADV 71', 'SPADV80_833', '1980', 'sensus penduduk 1980 advance', 'txt', 141599, 27242, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1199, '101197101', 'SP_ADV 71', 'SPADV80_834', '1980', 'sensus penduduk 1980 advance', 'txt', 85453, 16440, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1200, '101197101', 'SP_ADV 71', 'SPADV80_835', '1980', 'sensus penduduk 1980 advance', 'txt', 164347, 31618, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1201, '101197101', 'SP_ADV 71', 'SPADV80_890', '1980', 'sensus penduduk 1980 advance', 'txt', 143330, 27575, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1202, '101197101', 'SP_ADV 71', 'SPADV80_810', '1980', 'sensus penduduk 1980 advance', 'txt', 146936, 28268, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1203, '101197101', 'SP_ADV 71', 'SP90-ADV', '1990', 'sensus penduduk 1990 advance', 'txt', 1113687, 205554, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1204, '201768501', 'SUPAS 76', 'SUPAS76', '1976', 'supas', 'txt', 15220, 52484, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1205, '201768501', 'SUPAS 76', 'SUPAS85_1', '1985', 'supas', 'txt', 15532, 32211, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1206, '201768501', 'SUPAS 76', 'SUPAS85_2', '1985', 'supas', 'txt', 5355, 30793, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1207, '201768501', 'SUPAS 76', 'SUPAS85_3', '1985', 'supas', 'txt', 46607, 27408, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1208, '201768501', 'SUPAS 76', 'SUPAS85_4', '1985', 'supas', 'txt', 442337, 25595, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1209, '201768501', 'SUPAS 76', 'SUPAS85_5', '1985', 'supas', 'txt', 443229, 29418, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1210, '201768501', 'SUPAS 76', 'SUPAS85_6', '1985', 'supas', 'txt', 140415, 36399, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1211, '201768501', 'SUPAS 76', 'SUPAS85_7', '1985', 'supas', 'txt', 96033, 34993, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1212, '201199501', 'SUPAS 95', 'SUPAS95', '1995', 'supas', 'txt', 1465637, 810000, 'KB', NULL, 'lay_supas95.pdf', 3, '2016-01-18 11:31:13', 1),
(1213, '201200501', 'SUPAS2005', 'SUPAS2005', '2005', 'supas', 'dbf', 1090892, 229050, 'KB', NULL, 'lay_supas2005', 3, '2016-01-18 11:31:13', 1),
(1214, '202769601', 'SAKERNAS 76', 'SAKER76', '1976', 'sakernas', 'txt', 304541, 29146, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1215, '202769601', 'SAKERNAS 76', 'SAKER77', '1977', 'sakernas', 'txt', 198645, 19787, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1216, '202769601', 'SAKERNAS 76', 'SAKER86', '1986', 'sakernas', 'txt', 230654, 16444, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1217, '202769601', 'SAKERNAS 76', 'SAKER87', '1987', 'sakernas', 'txt', 229507, 16362, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1218, '202769601', 'SAKERNAS 76', 'SAKER88', '1988', 'sakernas', 'txt', 234621, 16726, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1219, '202769601', 'SAKERNAS 76', 'SAKER89', '1989', 'sakernas', 'txt', 59132, 16199, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1220, '202769601', 'SAKERNAS 76', 'SAKER90', '1990', 'sakernas', 'txt', 291095, 21037, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1221, '202769601', 'SAKERNAS 76', 'SAKER91', '1991', 'sakernas', 'txt', 282334, 20404, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1222, '202769601', 'SAKERNAS 76', 'SAKER92', '1992', 'sakernas', 'txt', 282542, 20419, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1223, '202769601', 'SAKERNAS 76', 'SAKER93', '1993', 'sakernas', 'txt', 279784, 20435, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1224, '202769601', 'SAKERNAS 76', 'SAKER94', '1994', 'sakernas', 'txt', 483885, 40754, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1225, '202769601', 'SAKERNAS 76', 'SAKER96', '1996', 'sakernas', 'txt', 247199, 20520, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1226, '202970001', 'SAKERNAS 1997_2000', 'SAKER97', '1997', 'sakernas', 'txt', 21439, 25930, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(1227, '202970001', 'SAKERNAS 1997_2000', 'SAKER98', '1998', 'sakernas', 'dbf', 163517, 16450, 'KB', NULL, NULL, 3, '2016-01-18 11:31:13', 1),
(1228, '202970001', 'SAKERNAS 1997_2000', 'SAKER99', '1999', 'sakernas', 'dbf', 155572, 14587, 'KB', NULL, 'lay_sak99.pdf', 3, '2016-01-18 11:31:13', 1),
(1229, '202970001', 'SAKERNAS 1997_2000', 'SAKER00', '2000', 'sakernas', 'sav', 7528, 7528, 'KB', NULL, 'lay_sak2000.pdf', 3, '2016-01-18 11:31:13', 1),
(1230, '202030401', 'SAKERNAS 2003', 'SAK03.rev', '2003', 'sakernas', 'dbf', 232466, 30877, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1231, '202030401', 'SAKERNAS 2003', 'SAK2004', '2004', 'sakernas', 'dbf', 237290, 29432, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1232, '202200501', 'SAKERNAS 2005', 'SAK2005.feb', '2005', 'sakernas', 'dbf', 215775, 28028, 'KB', NULL, 'lay_sak05feb.pdf', 3, '2016-01-18 11:31:13', 1),
(1233, '202200502', 'SAKERNAS 2005', 'SAK2005.nov', '2005', 'sakernas', 'dbf', 202633, 26519, 'KB', NULL, 'lay_sak05nov.pdf', 3, '2016-01-18 11:31:13', 1),
(1234, '202200601', 'SAKERNAS 2006', 'SAK2006.feb', '2006', 'sakernas', 'dbf', 206354, 25797, 'KB', NULL, 'lay_sak06feb.pdf', 3, '2016-01-18 11:31:13', 1),
(1235, '202200601', 'SAKERNAS 2006', 'SAK2006.agt', '2006', 'sakernas', 'dbf', 193696, 24593, 'KB', NULL, 'lay_sak06feb.pdf', 3, '2016-01-18 11:31:13', 1),
(1236, '203788001', 'susenas 78', 'SSN78_1', '1978', 'modul angkatan kerja-sosial budaya', 'txt', 134121, 20695, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1237, '203788001', 'susenas 78', 'SSN78_2', '1978', 'modul angkatan kerja-sosial budaya', 'txt', 198613, 30646, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1238, '203788001', 'susenas 78', 'SSN78_3', '1978', 'modul angkatan kerja-sosial budaya', 'txt', 135451, 20900, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1239, '203788001', 'susenas 78', 'SSN78_4', '1978', 'modul angkatan kerja-sosial budaya', 'txt', 138259, 21333, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1240, '203788001', 'susenas 78', 'SSN79_EXT', '1979', 'modul usaha perdagangan rt', 'txt', 130836, 12394, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1241, '203788001', 'susenas 78', 'SSN79_SRT_R178', '1979', 'modul usaha perdagangan rt', 'txt', 434795, 12724, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1242, '203788001', 'susenas 78', 'SSN79_SRT_R179', '1979', 'modul usaha perdagangan rt', 'txt', 499347, 25477, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1243, '203788001', 'susenas 78', 'SSN79_SRT_R279', '1979', 'modul usaha perdagangan rt', 'txt', 217140, 29259, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1244, '203788001', 'susenas 78', 'SSN80_SRT_SG21', '1980', 'modul demografi-angkatan kerja-kesehatan', 'txt', 285221, 22840, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1245, '203788001', 'susenas 78', 'SSN80_SGS_KON', '1980', 'modul konsumsi-pengeluaran rt', 'txt', 2751411, 217641, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1246, '203788001', 'susenas 78', 'SSN80_11_18_CLN', '1980', 'modul usaha-pendapatan rt', 'txt', 144709, 17806, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1247, '203788001', 'susenas 78', 'SSN80_31_35_CLN', '1980', 'modul usaha-pendapatan rt', 'txt', 341416, 42011, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1248, '203788001', 'susenas 78', 'SSN80_51_82_CLN', '1980', 'modul usaha-pendapatan rt', 'txt', 110324, 13576, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1249, '203788001', 'susenas 78', 'SSN80_61_64_CLN', '1980', 'modul usaha-pendapatan rt', 'txt', 40088, 4933, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1250, '203788001', 'susenas 78', 'SSN80_71_74_CLN', '1980', 'modul usaha-pendapatan rt', 'txt', 72894, 8970, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1251, '203818201', 'susenas 81', 'SSN81_KON', '1981', 'modul konsumsi-pengl. Rt', 'txt', 1135979, 151982, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1252, '203818201', 'susenas 81', 'SSN81_IND2', '1981', 'modul demografi-sosial-kesehatan', 'txt', 1895574, 233828, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1253, '203818201', 'susenas 81', 'SSN81_IND3', '1981', 'modul demografi-sosial-kesehatan', 'txt', 918158, 122840, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1254, '203818201', 'susenas 81', 'SSN81_IND4', '1981', 'modul demografi-sosial-kesehatan', 'txt', 557300, 74561, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1255, '203818201', 'susenas 81', 'REF-SSN82', '1982', 'modul demografi-angkatan kerja', 'txt', 357062, 61719, 'KB', '', '', 3, '2016-01-18 11:31:13', 1),
(1256, '203198401', 'susenas 84', 'SN4-INF1', '1984', 'modul konsumsi-pengeluaran rt', 'txt', 885913, 150536, 'KB', 'Konsum & Pengel RT', 'lay_ssn84.pdf', 3, '2016-01-18 11:31:13', 1),
(1257, '203198401', 'susenas 84', 'SN4-INF2', '1984', 'modul konsumsi-pengeluaran rt', 'txt', 1494042, 253871, 'KB', 'PROP 31-35', 'lay_ssn84.pdf', 3, '2016-01-18 11:31:13', 1),
(1258, '203198401', 'susenas 84', 'SSNINF3', '1984', 'modul konsumsi-pengeluaran rt', 'txt', 489317, 83146, 'KB', 'PROP 51-54', '', 3, '2016-01-18 11:31:13', 1),
(1259, '203198401', 'susenas 84', 'SSN4INF4', '1984', 'modul konsumsi-pengeluaran rt', 'txt', 740892, 125894, 'KB', 'PROP 61-74', 'lay_ssn84.pdf', 3, '2016-01-18 11:31:13', 1),
(1260, '203859001', 'susenas 85_90', 'SSN86', '1986', 'modul balita', 'txt', 198645, 19787, 'KB', 'BALITA', 'lay_ssn86.pdf', 3, '2016-01-18 11:31:13', 1),
(1261, '203198701', 'susenas 87 M', 'SSN87_11_18', '1987', 'modul konsumsi-pengeluaran rt', 'txt', 928221, 184920, 'KB', 'Konsumsi & Pengel RT', 'lay_ssn87mk.pdf', 3, '2016-01-18 11:31:13', 1),
(1262, '203198701', 'susenas 87 M', 'SSN87_31_35', '1987', 'modul konsumsi-pengeluaran rt', 'txt', 1534408, 305429, 'KB', 'Prop : 31-35', 'lay_ssn87mk.pdf', 3, '2016-01-18 11:31:13', 1),
(1263, '203198701', 'susenas 87 M', 'SSN87_51_64', '1987', 'modul konsumsi-pengeluaran rt', 'txt', 952829, 189822, 'KB', 'Prop : 51-64', 'lay_ssn87mk.pdf', 3, '2016-01-18 11:31:13', 1),
(1264, '203198701', 'susenas 87 M', 'SSN87_71_82', '1987', 'modul konsumsi-pengeluaran rt', 'txt', 469192, 93472, 'KB', 'Prop : 71-82', 'lay_ssn87mk.pdf', 3, '2016-01-18 11:31:13', 1),
(1265, '203198701', 'susenas 87 M', 'SSN87_MATCHS1', '1987', 'modul demografi-kesehatan-sosbud', 'txt', 534868, 106556, 'KB', 'SOSBUD Rec : 202', 'lay_ssn87_s1.pdf', 3, '2016-01-18 11:31:13', 1),
(1266, '203859001', 'susenas 85_90', 'SSN89_PEN', '1989', 'modul pendidikan', 'txt', 81350, 10169, 'KB', 'Pendidikan  Rec : 126', 'lay_ssn89.pdf', 3, '2016-01-18 11:31:13', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kuesioner`
--

CREATE TABLE `data_kuesioner` (
  `id` int(11) NOT NULL,
  `subjek_id` int(11) DEFAULT NULL,
  `nama_kuesioner` varchar(255) NOT NULL,
  `nama_file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_subjek`
--

CREATE TABLE `data_subjek` (
  `id` int(11) NOT NULL,
  `nama_subjek` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `data_subjek`
--

INSERT INTO `data_subjek` (`id`, `nama_subjek`) VALUES
(1, 'Sensus Ekonomi'),
(2, 'Sensus Penduduk'),
(3, 'Survei Misalkan Pertanian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `instansi`
--

CREATE TABLE `instansi` (
  `id` int(11) NOT NULL,
  `nama_unit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `instansi`
--

INSERT INTO `instansi` (`id`, `nama_unit`) VALUES
(1, 'Bidang IPDS'),
(2, 'Bidang NWAS'),
(3, 'Bidang Sosial'),
(4, 'Bidang Produksi'),
(5, 'Bidang Distribusi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id`, `nama_level`) VALUES
(1, 'admin'),
(2, 'user_bps'),
(3, 'user_non_bps'),
(4, 'operator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `operator`
--

CREATE TABLE `operator` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL,
  `pegawai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `operator`
--

INSERT INTO `operator` (`id`, `username`, `password`, `level`, `pegawai_id`) VALUES
(1, 'farid', 'farid', 'admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `unit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `unit_id`) VALUES
(1, '198909202012111001', 'Muhammad Farid Fadhlan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permohonan_data_bps`
--

CREATE TABLE `permohonan_data_bps` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `data_diminta` text NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `operator_id` int(11) DEFAULT NULL,
  `data_inventori_id` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `permohonan_data_bps`
--

INSERT INTO `permohonan_data_bps` (`id`, `no_surat`, `data_diminta`, `pegawai_id`, `status_id`, `operator_id`, `data_inventori_id`, `create_time`) VALUES
(1, '', '', 12, NULL, 17, 4, '2016-01-31 11:58:02'),
(2, '12/22/BPS/2016', '', 6, NULL, 17, 6, '2016-01-31 12:28:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permohonan_data_nonbps`
--

CREATE TABLE `permohonan_data_nonbps` (
  `id` int(11) NOT NULL,
  `jenis_identitas` varchar(100) NOT NULL,
  `no_identitas` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `umur` int(2) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') NOT NULL,
  `pendidikan_terakhir` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `instansi_pekerjaan` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `data_diminta` text NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `operator_id` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pl_company`
--

CREATE TABLE `pl_company` (
  `id` int(11) NOT NULL,
  `nama_company` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pl_company`
--

INSERT INTO `pl_company` (`id`, `nama_company`) VALUES
(1, 'Adobe'),
(2, 'ESRI'),
(3, 'Computers Ass. Inc.'),
(4, 'Cheyenne'),
(5, 'Top Speed Corp.'),
(6, 'MapInfo Corp.'),
(7, 'McAfee'),
(8, 'Microsoft'),
(9, 'NOVELL INC.'),
(10, 'Oracle'),
(11, 'Power Soft Corp.'),
(12, 'LIANTS'),
(13, 'SAS INST.'),
(14, 'Shazam'),
(15, 'SPSS'),
(16, 'Sybase Inc.'),
(17, 'BPS'),
(18, 'Dell'),
(19, 'Axway');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pl_data`
--

CREATE TABLE `pl_data` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jumlah_media` int(11) NOT NULL,
  `manual` text,
  `tgl_terima` date DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL,
  `jenis_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL,
  `ket` text,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operator_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pl_data`
--

INSERT INTO `pl_data` (`id`, `kode`, `nama`, `jumlah_media`, `manual`, `tgl_terima`, `media_id`, `license_id`, `jenis_id`, `company_id`, `tgl_expired`, `ket`, `create_time`, `operator_id`) VALUES
(1, '1001', 'AntiVirus UFO', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '2016-01-15 16:27:44', 1),
(2, '1002', 'Central Point Anti Virus Ver. 2.1 (CPAV)', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:45', 1),
(3, '1003', 'CPAV Ver. 1.4', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:46', 1),
(4, '1004', 'Fprot 2.2.6', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '2016-01-15 16:27:47', 1),
(5, '1005', 'Intel LANDesk Virus Protect Ver. 2.1', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '2016-01-15 16:27:48', 1),
(6, '1006', 'Pedoman Proteksi Thd Virus Komp', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:49', 1),
(7, '1007', 'Virex-PC', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:50', 1),
(8, '1008', 'Intel LANDesk Virus Protect Ver. 2.1', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:51', 1),
(9, '1009', 'Map Pro 10 (Micro Data Anti Virus)', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:52', 1),
(10, '1010', 'Total Virus Defense Suite Ver. 4.5', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:53', 1),
(11, '1011', 'Anti Virus Boot Sector', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '2016-01-15 16:27:54', 1),
(12, '1012', 'PCRX', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '2016-01-15 16:27:55', 1),
(13, '1013', 'Virus scan Thin Client & Expo Suite V 6.0.6 English', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:56', 1),
(14, '1014', 'Mc Afee Ver. 7.0', 1, '2', '2005-03-29', 3, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:57', 1),
(15, '1015', 'Network Total Virus Defense Suite', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:58', 1),
(16, '1016', 'Total Virus', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '2016-01-15 16:27:59', 1),
(17, '1017', 'Mc Afee 8.0i & Open Office 1.1.3', 1, '2', '2005-03-29', 3, 4, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(18, '1018', 'Symantec Endpoint Protection (Enterprise Solution) Ver 11.0', 2, '2', '2008-03-12', 3, 2, 1, NULL, '0000-00-00', 'Salah satu produk symantec untuk antivirus (semacam norton) release tahun 2008. situs di www.symantec.com', '0000-00-00 00:00:00', 1),
(19, '1019', 'AVG 8.0/ Grisoft Anti Virus', 1, '2', '2008-12-19', 3, 2, 1, NULL, '0000-00-00', 'Anti Virus Grisoft, Licence validity 36 bulan / 3 tahun dengan 500 user untuk BPS. Untuk internet security dan Anti Virus. penerapannya untuk client dan server', '0000-00-00 00:00:00', 1),
(20, '1020', 'NORTON 360 version 2.0', 1, '2', '2008-12-22', 3, 2, 1, NULL, '0000-00-00', '3 user PCs , Aktivasi Code, Product Key : TGCWX-TPV3G-HTXWM-RTY3R-P7TG9', '0000-00-00 00:00:00', 1),
(21, '1021', 'MCAFEE TOTAL PROTECTION 2009', 3, '2', '2008-12-22', 3, 2, 1, 7, '0000-00-00', '3 USERS LICENSED; PRODUCT ACT : TDK TAHU, BAHASA JEPANG/CHINA', '0000-00-00 00:00:00', NULL),
(22, '1022', 'NORTON ANTIVIRUS 2009 WITH ANTYSPYWARE', 1, '2', '2008-12-22', 3, 2, 1, NULL, '0000-00-00', '3 USERS, UNTIL 15 DAYS THEN ACT CODE : VF9HY-Q49WT-8M7F9-86CBW-23FTQ', '0000-00-00 00:00:00', 1),
(23, '1023', 'KASPERSKY ANTIVIRUS 2009', 1, '2', '2008-12-22', 3, 2, 1, NULL, '0000-00-00', '3 USERS; ACT CODE : YDQRX-8J4YG-4Y9RY-WJW28', '0000-00-00 00:00:00', 1),
(24, '1024', 'F-Secure', 1, '2', '2009-03-11', 3, 1, 1, NULL, '0000-00-00', '1 licence for 3 pc', '0000-00-00 00:00:00', 1),
(25, '1025', 'Microsoft Forefront', 1, '2', '2009-03-11', 3, 5, 1, NULL, '0000-00-00', 'Produk Anti Virus milik microsoft (Microsoft Forefront) limited trial & beta Software', '0000-00-00 00:00:00', 1),
(26, '2001', 'Borland dBASE IV Ver. 2.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(27, '2002', 'Cognos Series 7 Notice Server Administration for PC', 1, '2', '2009-03-11', 3, 2, 1, NULL, '0000-00-00', 'Cognos adalah Aplikasi Software untuk membuat datawarehouse berisi suplementary software, server administration, authoring, dan documentation aplikasi ini berjalan di bawah sistem operasi server berbasis Unix (Sun Solaris, HP-UX, IBM-AIX) Satu Set 7 CD', '0000-00-00 00:00:00', 1),
(28, '2003', 'Cognos Series 7 Supplementary Software for PC', 1, '2', '2009-03-11', 3, 2, 1, NULL, '0000-00-00', 'Cognos adalah Aplikasi Software untuk membuat datawarehouse berisi suplementary software, server administration, authoring, dan documentation aplikasi ini berjalan di bawah sistem operasi server berbasis Unix (Sun Solaris, HP-UX, IBM-AIX)', '0000-00-00 00:00:00', 1),
(29, '2004', 'Cognos for IBM AIX server', 1, '2', '2009-03-11', 3, 2, 1, NULL, '0000-00-00', 'Cognos adalah Aplikasi Software untuk membuat datawarehouse berisi suplementary software, server administration, authoring, dan documentation aplikasi ini berjalan di bawah sistem operasi server berbasis Unix (Sun Solaris, HP-UX, IBM-AIX)', '0000-00-00 00:00:00', 1),
(30, '2005', 'Sybase Enterprise Application Studio 3.5', 2, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(31, '2006', 'TopSpeed ODBC Driver 3.0', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(32, '2007', 'Database Foundation Engine 1.10', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(33, '2008', 'Dbase III + System', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(34, '2009', 'FoxPro 2.0 System', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(35, '2010', 'HyperACCESS Ver. 2.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(36, '2011', 'Informix Ver. 4.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(37, '2012', 'Open Desktop', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(38, '2013', 'Oracle', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(39, '2014', 'Turbo Prolog', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(40, '2015', 'Informix - SE', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(41, '2016', 'Data Base', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(42, '2017', 'Cognos for Solaris Server', 1, '2', '2009-03-11', 3, 2, 1, NULL, '0000-00-00', 'Cognos adalah Aplikasi Software untuk membuat datawarehouse berisi suplementary software, server administration, authoring, dan documentation aplikasi ini berjalan di bawah sistem operasi server berbasis Unix (Sun Solaris, HP-UX, IBM-AIX)', '0000-00-00 00:00:00', 1),
(43, '2018', 'Cognos for HP-UX Server', 1, '2', '2009-03-11', 3, 2, 1, NULL, '0000-00-00', 'Cognos adalah Aplikasi Software untuk membuat datawarehouse berisi suplementary software, server administration, authoring, dan documentation aplikasi ini berjalan di bawah sistem operasi server berbasis Unix (Sun Solaris, HP-UX, IBM-AIX)', '0000-00-00 00:00:00', 1),
(44, '2019', 'Cognos Series 7 Documentation', 1, '2', '2009-03-11', 3, 2, 1, NULL, '0000-00-00', 'Cognos adalah Aplikasi Software untuk membuat datawarehouse berisi suplementary software, server administration, authoring, dan documentation aplikasi ini berjalan di bawah sistem operasi server berbasis Unix (Sun Solaris, HP-UX, IBM-AIX)', '0000-00-00 00:00:00', 1),
(45, '2020', 'Cognos Authority for PC', 1, '2', '2009-03-11', 3, 2, 1, NULL, '0000-00-00', 'Cognos adalah Aplikasi Software untuk membuat datawarehouse berisi suplementary software, server administration, authoring, dan documentation aplikasi ini berjalan di bawah sistem operasi server berbasis Unix (Sun Solaris, HP-UX, IBM-AIX)', '0000-00-00 00:00:00', 1),
(46, '3001', 'Adobe PageMaker Ver. 6.5', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(47, '3002', 'Aldus Freehand 3.1', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(48, '3003', 'Aldus PageMaker Ver 5.0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(49, '3004', 'Aldus Persuassion Ver. 2.0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(50, '3005', 'Aldus Photostyler Ver. 2.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(51, '3006', 'Arc/Edit Version 3.4D Plus', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(52, '3007', 'Aldus Persuassion Ver. 2.1 for Windows', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(53, '3008', 'ArcView GIS 3.3', 1, '2', '2005-06-14', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(54, '3009', 'Arc/Plot', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(55, '3010', 'ArcView', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(56, '3011', 'ArcView GIS Ver 3.0', 1, '1', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(57, '3012', 'AutoCAD Release 12', 1, '1', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(58, '3013', 'AutoCad Release 9', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(59, '3014', 'Corel Draw Ver. 3.0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(60, '3015', 'Corel Draw Ver. 4.0', 2, '1', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(61, '3016', 'Paint Shop Pro 3.11', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(62, '3017', 'Paint Shop Pro 4.1', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(63, '3018', 'PC Story Board 2.0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(64, '3019', 'POPMAP for Windows', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(65, '3020', 'Visio 10', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(66, '3021', 'Software for Image Doc Ver 1.0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(67, '3022', 'Blinker 3.0 for Clipper & Blinker 3.01 For UpGrade', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(68, '3023', 'Harvard Graphic V 2.3.0', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(69, '3024', 'AutoCAD Release 12, Bonus CD', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(70, '3025', 'Adobe Acrobat 4.0 Distiler for Windows', 1, '1', NULL, 3, NULL, 1, NULL, NULL, 'Program aplikasi PDF Creator produk Adobe versi 4.0', '0000-00-00 00:00:00', 1),
(71, '3026', 'Corel Draw 9', 3, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(72, '3027', 'IMAGE PROCESSOR', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(73, '3028', 'ARC VIEW Geographic Exploration sy', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(74, '3029', 'ARC Info Starter Kit', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(75, '3030', 'ARC Shell Marcos', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(76, '3031', 'Visio 2000', 2, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(77, '3032', 'CorelCAD (Trial Version)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(78, '3033', 'Corel Draw 4', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(79, '3034', 'MAP X Press 2.0', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(80, '3035', 'Victor Image Processing', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(81, '3036', 'MapInfo Prof. Ver. 6. 0 The world''s premier desktop mapping software', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(82, '3037', 'Corel WEB Graphics Suite', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(83, '3038', 'CD Designer Ver. 5.42d plus Rimage Printer Drivers', 1, '1', NULL, 3, 4, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(84, '3039', 'Adobe Acrobat 5.0 for Windows', 1, '1', '2005-06-14', 1, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(85, '3040', 'Adobe Acrobat 8 Professional', 1, '1', '2007-01-22', 3, 1, 1, NULL, '0000-00-00', 'Aplikasi untuk membuat file dalam bentuk format pdf. Dilengkapi pula dengan link antar file dan antar kalimat. Pengadaan tahun 2006', '0000-00-00 00:00:00', 1),
(86, '3041', 'Ebook maker', 1, '2', '2007-01-22', 4, 1, 1, NULL, '0000-00-00', 'Digunakan untuk membuat buku elektronik / elektronik book Product: EbookMaker Download Link: http://www.antssoft.com/download/ebookmaker.zip RegName: Marlina Kamil RegCode: 5171-7F39-BC2F-AA66-FFF7-3DF5-7065-4CC4-F4D2-6E2E , Pengadaan tahun 2006', '0000-00-00 00:00:00', 1),
(87, '3042', 'Visio 2003', 1, '2', '2007-10-30', 3, 1, 1, NULL, '0000-00-00', 'Kelanjutan dari visio 2000, menjadi versi 2003', '0000-00-00 00:00:00', 1),
(88, '3043', 'Adobe Creative Suite 3 Design Premium', 3, '2', '2008-02-18', 5, 1, 1, NULL, '0000-00-00', 'Aplikasi pengolah gambar atau desain, biasa digunakan untuk aplikasi internet', '0000-00-00 00:00:00', 1),
(89, '4001', 'HTML Editor for Windows 3.1 & 95', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(90, '4002', 'COREL DRAW 5.0', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(91, '4003', 'Mapscan Automatic Map Data Entry Soft', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(92, '4004', 'Icon Maker Kit', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(93, '4005', 'Internet Assistant for MS-Word 2.0z', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(94, '4006', 'Internet Assistant for MS-Word 6.0 (W 3.1)', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(95, '4007', 'Navigating, The Internet Deluxe Edition', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(96, '4008', 'Netscape 3.0 16 bit', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(97, '4009', 'Homesite 1-2 ( Shareware )', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(98, '4010', 'Macromedia Studio MX', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(99, '4011', 'Microsoft Aplication Internet Explorer 3.02', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(100, '4012', 'Dev-Info 5 (Admins + Users)', 1, '2', '2009-03-10', 3, 6, 1, NULL, '0000-00-00', 'Software Aplikasi Web berbasis data (sistem berbasis Arc View dan VBScript)', '0000-00-00 00:00:00', 1),
(101, '6001', 'AmiPro Ver 3.0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(102, '6002', 'Microsoft Works Ver. 3.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(103, '6003', 'Pegasus Mail 3.22', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(104, '6004', 'Ventura', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(105, '6005', 'Word Perfect Ver. 6.1', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(106, '6006', 'WP Ver 5.1', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(107, '6007', 'WS Ver 4', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(108, '6008', 'WS Ver 5', 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(109, '6009', 'WS Ver 7', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(110, '6010', 'MS Windows 2.3', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(111, '6011', 'WS 6', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(112, '6012', 'WordPerfect Office 2000 Standard', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(113, '7001', 'Lotus Freelance Graphic Rel. 4.0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(114, '7002', 'Q Pro4 ( Instalation AN)', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(115, '7003', 'POPMAP Integrated Mapping Software', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(116, '7004', 'PB 4.0 Installation', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(117, '7005', 'Page maker Ver. 3.0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(118, '7006', 'Quatro', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(119, '7007', 'QPRO I', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(120, '7008', 'QPRO II', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(121, '7009', 'QPRO III', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(122, '7010', 'Lotus 1, 2, 3, Ver. 2', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(123, '7011', 'Page Maker', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(124, '7012', 'Borland Qpro Ver. 2.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(125, '7013', 'Borland Quattro Pro Ver. 5.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(126, '8001', 'IMPS Ver. 4.0 for Windows', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(127, '8002', 'SAS Modul Versi 6.10', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(128, '8003', 'Shazam Ver. 8.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(129, '8004', 'Sopercross for windows', 1, '1', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(130, '8005', 'SPSS/PC+ Base Ver 5.0.25', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(131, '8006', 'SPSS/PC+ Graphics Ver 5.0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(132, '8007', 'SPSS/PC+ Network Disk Ver 5.02', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(133, '8008', 'SPSS-PC for IBM XT', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(134, '8009', 'Super Star dan atau NestorReader 5.0 (32bit)', 1, '1', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(135, '8010', 'Supercross for Windows 3', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(136, '8011', 'Supercross ver. 3.2c', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(137, '8012', 'Supercross ver. 3.2d', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(138, '8013', 'Supercross ver. 3.3', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(139, '8014', 'Supercross ver. 3.3b', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(140, '8015', 'SAS System Rel. 6.12 & Solutions@Work Preview Edition', 2, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(141, '8016', 'SPSS 7.5.1 for Windows 95', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(142, '8017', 'SAS Ver. 8', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(143, '8018', 'Super Star 1.1.25', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(144, '8019', 'Super Table 3.6.25', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(145, '8020', 'Super Mart Builder 3.2.2', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(146, '8021', 'SPSS Ver 7.5.15 for windows 95', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(147, '8022', 'BPS SSPPL Agricultural DB', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(148, '8023', 'People', 1, NULL, NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(149, '8024', 'Worker', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(150, '8025', 'PC - Edit, XTABLE, POPMAP', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(151, '8026', 'STATPAC Execution Disk', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(152, '8027', 'SPSS 10.0 for Windows and Smart Viewer', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(153, '8028', 'Beyond 20/20 Publisher''s Edition Ver. 5.2', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(154, '8029', 'SPSS 9.0 for Windows', 1, NULL, NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(155, '8030', 'SPSS 10.0.5 for Windows', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(156, '8031', 'Beyond 20/20 Professional Browser Ver. 5.2', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(157, '8032', 'BEYOND 20/20 PUBLISHER 5.2', 3, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(158, '8033', 'SuperSTAR 1.1 Update 2 (1.1.21) Release dan Microsoft Visual FoxPro 5.0a for Windows', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(159, '8034', 'Super Star 1.1.25, SuperMart Builder 3.2.2, Super Table 3.2.2', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(160, '8035', 'Super Star 1.1.25 Super Table 3.6.25 SuperMart Builder 3.2.2', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(161, '8036', 'SPSS 14.0 and AMOS 6.0', 2, '1', '2006-01-17', 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(162, '9001', 'Microsoft Project 2000', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(163, '9002', 'Microsoft Office XP Small Business Sys Update Data', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(164, '9003', 'DocuWorks 6.1', 1, '2', '2008-02-18', 3, 2, 1, NULL, '0000-00-00', 'Document Handling Software dalam mengelola dokumen hasil scan, printer, maupun fotocopy dikolaborasikan dengan FujiXerox Hardware', '0000-00-00 00:00:00', 1),
(165, '10001', 'Basic Compiler', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(166, '10002', 'SPSS Ver 6.1', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(167, '10003', 'WINDOWS Ver', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(168, '10004', 'Borland C++ Ver. 4.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(169, '10005', 'Borland Turbo Assembler Ver. 4.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(170, '10006', 'CA-Realia COBOL Ver. 4.2', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(171, '10007', 'Fortran 77', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(172, '10008', 'Fortran Ver. 5.1', 1, '1', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(173, '10009', 'Macro Focus Cobol', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(174, '10010', 'Turbo Assembler Ver 2,0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(175, '10011', 'Turbo Pascal 1.5 for Windows', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(176, '10012', 'Digital Research ( Fortran L 77 )', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(177, '10013', 'Power Builder 5.0 Workplace Infobase Volume 4', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(178, '10014', 'RM / COBOL', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(179, '10015', 'Clarion 5 Web Edition', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(180, '10016', 'Clarion 2003', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(181, '10017', 'Clarion 5B Web Edition', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(182, '10018', 'Microsoft Visual C++ Version 5.0 Professional Edition', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(183, '10019', 'Microsoft Visual Basic 5.0 Enterprise Edition', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(184, '10020', 'MS Visual C++ 6.0 DELUXE LEARNING EDITION', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(185, '10021', 'MS Visual Basic 6.0 Professional Edition', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(186, '10022', 'Microsoft Visual Basic Ver 4.00 Professional Edition <ms95>', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(187, '10023', 'Microsoft Visual FoxPro 5.0 for Windows', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(188, '10024', 'Clarion Prof. Edition 2.003', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(189, '10025', 'MS Visual C ++ Prof. Edit', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(190, '10026', 'PASCAL', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(191, '10027', 'CA -Visual Objects 2.0 Prof. Edition', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(192, '10028', 'Power Builder Ver. 5. 0 & Object Cycle', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(193, '10029', 'Clarion 5 Report Writer Ver. 5B', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(194, '10030', 'Clarion 5.5 Update', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(195, '10031', 'PowerBuilder 5.0 QuickStart', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(196, '10032', 'MS Visual.Net 2003', 4, '2', '2005-06-14', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(197, '10033', 'POWER BUILDER V. 9', 1, NULL, NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(198, '10034', 'Microsoft Visual FoxPro Professional 9.0', 1, '2', '2007-01-22', 3, 1, 1, NULL, '0000-00-00', 'Aplikasi Pemrograman Database / Database Development System Versi 9.0, Pengadaan Tahun 2006', '0000-00-00 00:00:00', 1),
(199, '10035', 'Visual Studio .Net 2005 & MSDN Library', 5, '2', '2009-03-12', 3, 2, 1, NULL, '0000-00-00', 'Berisi program visual studio .net 2005 (VB.Net 2005, C# 2005 dan semua aplikasi visual studio berbasis .Net 2005) SN:JPVWC-CD724-2QMP6-7WFB8-Y7GRQ', '0000-00-00 00:00:00', 1),
(200, '12001', 'Acer VGA Utilities & Driver', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(201, '12002', 'EN 2000 Driver for Network Card', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(202, '12003', 'DBASE IV V.2.0 for Dos', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(203, '12004', 'Ms Visual C++ 1.0 Prof Edition', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(204, '12005', 'Epson Printer Software Pack', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(205, '12006', 'HP Copier Ver 1.0 for MS-Windows', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(206, '12007', 'HP DeskJet 1200C;HP PaintJet XL 300', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(207, '12008', 'HP DeskJet Driver', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(208, '12009', 'HP DeskScan II Ver 2.4', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(209, '12010', 'HP Jet admin & jet print', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(210, '12011', 'SN 2000 Disk & Driver for Network Card', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(211, '12012', 'COREL DRIVE VERSION 2.0', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(212, '12013', 'Ready Link Driver Set', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(213, '12014', 'Video Drivers', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(214, '12015', 'CD Rom device driver 2.10', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(215, '12016', 'HP LaserJet 1100 / 1100A', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(216, '12017', 'Acer LAN /e Netware Driver Disket', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(217, '12018', 'DESKSCAN 4 C', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(218, '12019', 'Corel Driver I Panasonic', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(219, '12020', 'Sesi Driver', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(220, '12021', 'Compaq TFT5010 Flat Panel Monitor Ver. 1.0: Software & User''s Guide', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(221, '12022', 'HP Laser Jet', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(222, '12023', 'Compaq 7000 / 4000 Rack Series Products Audio Visual', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(223, '12024', 'Compaq 9000 Rack Series Products Audio Visual', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(224, '12025', 'Compaq Systems Reference Library Release 2.60', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(225, '12026', 'Compaq Storage Manag.Solutions Instalation Guide', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(226, '12027', 'Compaq Tape Drive Supplemental Driver CD / Installation Instruction Drivers for Compaq Tape Drives', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(227, '12028', 'Compaq Veritas Data Protection Solutions For Novell Netware', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(228, '12029', 'Compaq Veritas Japanese Data Protection Solutions for MS Windows NT', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(229, '12030', 'Compaq ARC Serve IT Resource Guide & Device Support CD', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(230, '12031', 'Compaq Management Release 4.40', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(231, '12032', 'HP LaserJet 1160/1320/1320n/1320tn/1320nw', 1, '2', '2005-03-29', 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(232, '12033', 'hp LaserJet 1200 series', 1, '2', '2005-06-14', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(233, '12034', 'Compaq Restore CD Ver. 1.1', 1, '1', '2005-02-08', 3, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(234, '12035', 'XEROX PHASER 3428D (XP & Vista) + Driver WinSCP', 1, '2', '2008-07-16', 3, 4, 1, NULL, '0000-00-00', 'DRIVER PRINTER 3428D XEROX PHASER UNTUK WINDOWS XP DAN WINDOWS VISTA', '0000-00-00 00:00:00', 1),
(235, '12036', 'HP Laserjet 1320 for Vista', 1, '2', '2009-02-04', 3, 6, 1, NULL, '0000-00-00', 'Driver Printer Laserjet 1320 untuk PC berbasis Windows Vista', '0000-00-00 00:00:00', 1),
(236, '12037', 'Kodak i-Series Scanner V2.17 (Scanner Brightness and Contrast Control Software)', 1, '2', '2009-03-10', 3, 4, 1, NULL, '0000-00-00', 'PASANGAN KODAK i SERIES i640', '0000-00-00 00:00:00', 1),
(237, '12038', 'Kodak i-Series Scanner V4.02 (Scanner Firmware, Drivers and User Guide)', 1, '2', '2009-03-10', 3, 4, 1, NULL, '0000-00-00', '(Scanner Firmware, Drivers and User Guide) i640', '0000-00-00 00:00:00', 1),
(238, '12039', 'fi-5900C Fujitsu (Drivers and Documentation) (Twain and ISIS)', 1, '2', '2009-03-10', 3, 4, 1, NULL, '0000-00-00', 'Driver Scanner Fujitsu fi-5900C', '0000-00-00 00:00:00', 1),
(239, '12040', 'Fujitsu Driver fi-6140/6240', 1, '2', '2009-03-10', 3, 4, 1, NULL, '0000-00-00', 'Driver Tambahan fujitsu (terutama untuk setting ISIS Fujitsu fi-5900C)', '0000-00-00 00:00:00', 1),
(240, '12041', 'Driver Xerox DC 1085', 1, '2', '2009-03-11', 3, 4, 1, NULL, '0000-00-00', 'Driver Printer Xerox', '0000-00-00 00:00:00', 1),
(241, '12042', 'VRS 4.2 (Virtual Rescan)', 1, '2', '2009-03-11', 3, 4, 1, NULL, '0000-00-00', 'Virtual Re-scan untuk setting scanner kodak (membuat image lebih tajam)', '0000-00-00 00:00:00', 1),
(242, '12043', 'Canon (CanoScan Setup CD)', 1, '2', '2009-03-11', 3, 4, 1, NULL, '0000-00-00', 'Driver scanner canon CanoScan Lide20/ Lide30', '0000-00-00 00:00:00', 1),
(243, '12044', 'VRS 4.10 SP2 FOR FUJITSU', 1, '2', '2009-03-11', 3, 4, 1, NULL, '0000-00-00', 'Virtual reScan untuk scanner fujitsu', '0000-00-00 00:00:00', 1),
(244, '13001', 'SVEC', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(245, '14001', 'Exsys Professional Tutorial Dos', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(246, '14002', 'Exsys Professional Development Runtime', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(247, '14003', 'Exsys Professional Editor', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(248, '17001', 'CRC - Test Program ( analyzer-crc )', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(249, '17002', 'Nestor Reader 5.2i', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(250, '17003', 'Nestor Reader 5.0', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(251, '17004', 'Neurascript Indicius Version 4.0.5', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(252, '17005', 'Ascent Capture Version 5. 51', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(253, '17006', 'Neurascript Indicius V. 4. 0. 2', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(254, '17007', 'Register / T', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(255, '17008', 'Omnipage pro for windows 95', 7, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(256, '17009', 'Image Ghost Compaq CDR < remove meta scan p. Adaptec', 2, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(257, '17010', 'Rimage', 1, '2', '2005-03-29', 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(258, '17011', 'Omni Page 15', 1, '1', '2006-01-17', 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(259, '17012', 'Roxio Easy Media Creator Suite 9', 2, '2', '2007-02-28', 2, 1, 1, NULL, '0000-00-00', 'Aplikasi media cd dan dvd', '0000-00-00 00:00:00', 1),
(260, '17013', 'Abbyy FineReader OCR 8.0', 1, '1', '2008-02-18', 3, 1, 1, NULL, '0000-00-00', 'Aplikasi pengolah dokumen hasil scan support dalam bentuk PDF, Word, Excel, XML, HTML, PowerPoint/ software recognizing images reader', '0000-00-00 00:00:00', 1),
(261, '17014', 'Kodak Capture Software', 1, '2', '2009-03-11', 3, 4, 1, NULL, '0000-00-00', 'Piranti tambahan dari kodak scanner i-6400', '0000-00-00 00:00:00', 1),
(262, '18001', 'AT-1500 Installation Software', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(263, '18002', 'Boot Disk', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(264, '18003', 'DOS Ver 3,3', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(265, '18004', 'DOS Ver 5', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(266, '18005', 'MS Windows 95, step by step', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(267, '18006', 'MS_Windows 95', 1, '1', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(268, '18007', 'MS-DOS Ver. 6.2', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(269, '18008', 'Windows 95 Upgrade', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(270, '18009', 'MS DOS 6.21', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(271, '18010', 'MS SQL Server 6.5 Developer Edition', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(272, '18011', 'MS Select MAC APSS 1', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(273, '18012', 'MS Select Publisher 98', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(274, '18013', 'MS Select Aplication Pool Off', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(275, '18014', 'MS Select APPL_PC APPS 1', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(276, '18015', 'MS Select APPL - Project 98', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(277, '18016', 'MS Select Apps-Combo Office 97 Standard', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(278, '18017', 'MS Select APPL-PC APPS Combo', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(279, '18018', 'MS Select APPL- OFFICE 97 SERVICE', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(280, '18019', 'Win 98', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(281, '18020', 'Microsoft Transaction Server', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(282, '18021', 'MSDN Library Visual Studio 6.0', 2, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(283, '18022', 'MS Visual Studio 6.0 Plus Pack', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(284, '18023', 'Microsoft Office 2000 Professional', 2, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(285, '18024', 'MSDE for Visual Studio 6.0', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(286, '18025', 'Boot Window 95', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(287, '18026', 'Windows 3. 11', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(288, '18027', 'Microsoft Window 3.0', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(289, '18028', 'Windows XP', 1, '1', NULL, 3, 1, 1, NULL, NULL, 'bajakan', '0000-00-00 00:00:00', 1),
(290, '18029', 'Microsoft Application Pool', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(291, '18030', 'Microsoft Windows 95', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(292, '18031', 'Microsoft Office 2000 Personal', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(293, '18032', 'Microsoft Windows 4.0', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(294, '18033', 'Microsoft Windows NT 4.0 Service Pack 4', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(295, '18034', 'Microsoft Windows95 Application PC APPS Combo 6A108 Visual Studio', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(296, '18035', 'Microsoft Application PC APPS Combo 6A105 Visual Basic For Windows', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(297, '18036', 'Outlook 98 Deployment Kit', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(298, '18037', 'MS Application Pool Visual Interdev English', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(299, '18038', 'MS Application PC APPS Combo 7A125', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(300, '18039', 'MS Application PC APPS Combo 6A106 Visual C ++', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(301, '18040', 'Compaq Veritas Data Protection Solutions for Microsoft Windows NT', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(302, '18041', 'Compaq ARC Serve IT Solutions for Microsoft Windows NT English', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(303, '18042', 'Compaq ARC Serve IT Solutions For Microsoft Windows NT Japanese', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(304, '18043', 'MSDE for Visual Studio 6 Developer Training', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(305, '18044', 'Compaq CD for Microsoft Windows 2000 Professional', 1, '2', '2005-03-29', 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(306, '18045', 'Microsoft Windows NT 4 Service Pack 6a', 1, '2', '2005-03-29', 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(307, '18046', 'SQL Server 7.0', 1, '1', '2005-03-29', 3, 4, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(308, '19001', 'Intel LANDesk Manager', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(309, '19002', 'Netware 3.11', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(310, '19003', 'Novell Netware 4.1', 1, '1', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(311, '19004', 'Novell Netware Ver. 4.01', 1, '1', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(312, '19005', 'Optivity 5.0 Network Management System', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(313, '19006', 'SCO merge multiuser license', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(314, '19007', 'SCO open server network Rl. 3.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(315, '19008', 'Show Partner (FX)', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(316, '19009', 'Novell IntranetWare', 4, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(317, '19010', 'Microsoft Windows NT 4.0 Service Pack 4/Microsoft Windows NT Server NetShow Services', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(318, '19011', 'LAN WORK PLACE 5', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(319, '19012', 'Cubie Netware 2.1 X', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(320, '19013', 'MS Developer Network Library Visual Studio 97', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(321, '19014', 'Compaq ARC Serve IT Solutions for Novell Netware', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(322, '19015', 'Windows 2000 Advanced Server', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(323, '19016', 'Microsoft Windows Server 2003 Enterprise', 1, '2', '2005-06-14', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(324, '21001', '4 Dos Utility', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(325, '21002', 'Axis Installation Utilities', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(326, '21003', 'Dr. Solomons Toolkit', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(327, '21004', 'Norton Utilities Ver. 8.0', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(328, '21005', 'PC Tool Pro 9', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(329, '21006', 'Power Chute Plus for NCR Unix Ver 4.22', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(330, '21007', 'Power Doctorx Ver. 1.2', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(331, '21008', 'Copypro cd Rep. Ver 2-1', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(332, '21009', 'ICL Utilities Disc Personal Comp', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(333, '21010', 'Exsys Professional Utilities', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(334, '21011', 'VGA Utilities Acer', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(335, '21012', 'Epson ESC / Printer Software', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(336, '21013', 'Easy CD - Pro Software (CD Label, CD Backup, ECD Pro 31, ECD Pro 95)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(337, '21014', 'ICL Utilities Disc Personal Comp', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(338, '21015', 'SHGEN', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(339, '21016', 'OS 2 Util', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(340, '21017', 'Norton Utilities, SuperDAT 4270xdat', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(341, '21018', 'CR Recovery ACER/ GHOST Volume 2', 1, '2', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(342, '21019', 'ACER Empowering People/ CR Recovery', 4, '2', '2005-03-29', 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(343, '21020', 'Produk Recovery CD for 6824-KAW/CD Recovery IBM P4B', 4, '2', '2005-03-29', 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(344, '21021', 'Bar Code Printer', 1, '2', '2006-01-17', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(345, '21022', 'Norton Partition Magic v8.0', 1, '1', '2007-01-22', 3, 1, 1, NULL, '0000-00-00', 'Aplikasi management harddisk untuk membagi menjadi beberapa partisi secara virtual, pengadaan tahun 2006', '0000-00-00 00:00:00', 1),
(346, '21023', 'Recover My Files Data Recovery Software', 1, '2', '2007-01-22', 4, 1, 1, NULL, '0000-00-00', 'Aplikasi penyelamatan data, dapat merecovery harddisk dan mengembalikan data yanga sudah terformat. Pengadaan tahun 2006. If you have not yet downloaded Recover My Files you can download it here: http://download.getdata.com/RecoverMyFiles-Setup.exe or via our website at www.recovermyfiles.com. Once it is downloaded, run the setup file and follow the on-screen installation instructions. Once it is installed, enter your registration details. We highly recommend that you keep Recover My Files up to date by regularly click the "Update" button or visiting http://www.recovermyfiles.com to download the latest version.', '0000-00-00 00:00:00', 1),
(347, '21024', 'SCREEN SAVER TOOLKIT 4.5', 1, '2', '2007-01-22', 3, 1, 1, NULL, '0000-00-00', 'Aplikasi untuk membuat screen saver. Untuk register ke http://www.stardustsoftware.com/account/.., pengadaan tahun 2006', '0000-00-00 00:00:00', 1),
(348, '21025', 'Norton Ghost 2003', 1, '2', '2008-02-18', 3, 6, 1, NULL, '0000-00-00', 'Untuk membuat backup image PC /Ghost', '0000-00-00 00:00:00', 1),
(349, '21026', 'System Mechanic 7 Professional', 1, '2', '2008-02-18', 3, 1, 1, NULL, '0000-00-00', 'Tools untuk memperbaiki registry komputer, dsb. Mempunyai lisensi up to three komputer', '0000-00-00 00:00:00', 1),
(350, '21027', 'Crystal Reports XI Client', 2, '2', '2008-02-18', 3, 1, 1, NULL, '0000-00-00', 'Lisensi berupa Product Activation Number. Merupakan aplikasi untuk pembuatan laporan/report database', '0000-00-00 00:00:00', 1),
(351, '21028', 'Crystal Reports XI Server Application', 2, '2', '2008-02-18', 3, 1, 1, NULL, '0000-00-00', 'Lisensi berupa Product Activation Number. Merupakan aplikasi untuk pembuatan laporan/report database', '0000-00-00 00:00:00', 1),
(352, '21029', '(Get Data) Recover My Files', 1, '2', '2008-12-19', 3, 2, 1, NULL, '0000-00-00', 'License yang dipunyai BPS 35 user', '0000-00-00 00:00:00', 1),
(353, '21030', 'TuneUp Utilities 2009', 1, '2', '2008-12-19', 3, 2, 1, NULL, '0000-00-00', 'Untuk 35 User BPS. Repair, accelerates dan cleans registry maupun file yang tidak terpakai. Untuk optimalisasi windows', '0000-00-00 00:00:00', 1),
(354, '21031', 'NORTON GHOST 14.0', 1, '2', '2008-12-22', 3, 2, 1, NULL, '0000-00-00', '3 USERS, ACT CODE : 00-9884-2113-025572', '0000-00-00 00:00:00', 1),
(355, '21032', 'Roxio Creator 2009', 1, '2', '2009-03-04', 3, 1, 1, NULL, '0000-00-00', 'Aplikasi Burning CD/DVD for music, sharing file, video, and photo', '0000-00-00 00:00:00', 1),
(356, '99001', 'Always SYS', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(357, '99002', 'Development Sys', 1, '1', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(358, '99003', 'Dida v 1.52 for Windows 3.1', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(359, '99004', 'Fascinator', 1, '-', NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(360, '99005', 'Hot Dog Pro for Windows 95', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(361, '99006', 'Nine Track', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(362, '99007', 'Paradox Ver. 3.0', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(363, '99008', 'Symphony', 1, '-', NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(364, '99009', 'Real Cob', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(365, '99010', 'Form Tool Gold F/Win', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(366, '99011', 'Page Keeper Ver 2.01', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(367, '99012', 'Understanding', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(368, '99013', 'Windows NT 4.0 Option Pack', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(369, '99014', 'CD Recordable CDM 74SY', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(370, '99015', 'Product Data Sheet ''97', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(371, '99016', 'Dynamic DB (DDB )', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(372, '99017', 'Australian Bureau of Stat.', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(373, '99018', 'Kodak Bitonal Scanners 3500, 3510, 3520', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(374, '99019', 'Dicom Scan 1.10 A', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(375, '99020', 'Asia Soft', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(376, '99021', 'GEAR Release 4.01/3.31 Multi-OS Desktop Version', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(377, '99022', 'Computer Associates Ver 2.0', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(378, '99023', 'IAOS Proceeding', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(379, '99024', 'The SynOptics Technical Source', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(380, '99025', 'Development Tools & Languages Infobase Vol. 4 (Power Builder 5.0)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(381, '99026', 'Compuser VE. Ver. 2.0.1', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(382, '99027', 'XYZ Type On Call 4.1', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(383, '99028', 'Story Board', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(384, '99029', 'Up Grade Kit', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(385, '99030', 'Starter Kit', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(386, '99031', 'Gallery', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(387, '99032', 'Help', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(388, '99033', 'Requester', 1, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(389, '99034', 'Power Net SNMP Manager V 1.0 for HP Open View for Windows', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1);
INSERT INTO `pl_data` (`id`, `kode`, `nama`, `jumlah_media`, `manual`, `tgl_terima`, `media_id`, `license_id`, `jenis_id`, `company_id`, `tgl_expired`, `ket`, `create_time`, `operator_id`) VALUES
(390, '99035', 'SAGENT Solution Ver. 4', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(391, '99036', 'Custom Module', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(392, '99037', 'DICom SCANNER VER 6.1', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(393, '99038', 'Superdat dan DAT Libraries v4122', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(394, '99039', 'Space Time', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(395, '99040', 'Kumpulan Software Hasil Copy dari Disket', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(396, '99041', 'Service / T Computer Associates', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(397, '99042', 'Microsoft NT Service Pack 6 a', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(398, '99043', 'CELL Switching Software Module', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(399, '99044', 'APC PowerChute plus', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(400, '99045', 'APC Mag CD Personal Computer Red Hat Linux 6.2', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(401, '99046', 'Compaq Rack Builder Pro Configuration Tool Rel. 2.5', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(402, '99047', 'DOCUMENTATION QUESTIONARES BPS Statistics Indonesia', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(403, '99048', 'JAPAN STATISTICAL YEARBOOK 1995 CD-ROM For windows 3.1', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(404, '99049', 'Statistical Thirty-eihth issue Yearbook CD_ROM', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(405, '99050', 'SURVEY OF CURRENT BUSINESS 1994', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(406, '99051', 'Video Soft', 1, '1', NULL, 3, NULL, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(407, '99052', 'CHIP 06 2002', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(408, '99053', 'CHIP 04 2002 (500 Program PDA, 50 Benchmark Tools, Spiderman Special)', 1, '1', NULL, 3, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(409, '99054', 'CHIP 03 2002 (Lord of the Rings-Special, Utak Atik Otak 2, Video Editing Tools)', 1, '1', NULL, 3, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(410, '99055', 'CHIP 08 2001', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(411, '99056', 'CHIP 11 2001', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(412, '99057', 'CHIP 01 2003 (3D Animation Training Class, PC-Health Tools & Utility, Microsoft Updates)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(413, '99058', 'CHIP 02 2003 (CHIP-Cam Movie Ekslusif, KaZaA Tools & Utilities, Software Video Editing)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(414, '99059', 'CHIP 03 2003 (CHIP-Cam & Movie Tutorial, NOKIA Tools & Utilities, Aplikasi Photo Editing)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(415, '99060', 'CHIP 04 2003 (GPS Software, Tools, & Utilies, VHS to VCD Tools, Software DVD Burner)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(416, '99061', 'CHIP 07 2003 (Windows XP Creativity Fun Pack, Wireless LAN Tools, PC Tuning Tools)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(417, '99062', 'CHIP 08 2003 (Photo Management Software, Proxy Tools & Utilities, XBOX Support Software)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(418, '99063', 'CHIP 10 2003 (Macromedia Flash MX Pro 2004, PPC Networking Tools, PC Security Tools)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(419, '99064', 'CHIP 11 2003 (Freeware Picture Editing, Digital Photo Software, OpenOffice.org 1.1)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(420, '99065', 'CHIP 12 2003 (Athlon 64 Overclocking Tools, Networking Security Tools, Solusi Backup Total)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(421, '99066', 'CHIP-CD 10/99 (Neoplanet Browser & Skin, Utility Home & Leisure, Tools Search-Engine)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(422, '99067', 'CHIP-CD 2/2000 (Windows 2000 Tools, Driver Printer Shortcut Tools, Download Manager, Password Recovery)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(423, '99068', 'CHIP-CD 8/99 (Tools CD-Audio; 3D Overclocking-Tools; Tools, Plug-In, Skin MP3; Program Web-Design)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(424, '99069', 'CHIP-CD 9/99', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(425, '99070', 'CHIP-CD 11/99 (8 Upgrade-Tools, Natal & Lebaran Spesial)', 1, '1', NULL, 3, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(426, '99071', 'CHIP-CD 7/99 (Program Simulasi Komputer, Internet Security-Tools)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(427, '99072', 'CHIP-CD 10/2000', 1, '1', NULL, 3, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(428, '99073', 'CHIP-CD 6/2000', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(429, '99074', 'Infokomputer Internet Vol. II No. 2 Mar - April 2000 (Norton Antivirus 2000 v6.0, Dreamweaver 3.0, 3Dmark 2000)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(430, '99075', 'Internet Vol. II No. 4 Juli - Agustus 2000 (Netobjects Fusion 5.0, Win.NT 4.0 Service Pack 5, Dial Up Constructor 3.6, Euro 2000)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(431, '99076', 'Internet Vol. II No. 5 Agustus - Sept 2000 (Linux Router Project 2.94, IP Subnet Calculator 2.02, Internet Neighborhood 3.1, MPEG4 DVD Video Codec)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(432, '99077', 'Internet Vol. II No. 6 Sept - Okt 2000 (Windows ME, Tryout UMPTN, Ulead Photo Explorer 6.0, Photoimpact 5, Netscape Communicator 4.75, Bizguard 1.5)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(433, '99078', 'Internet Vol. II No. 9 Des 2000 - Jan 2001 (BullsEye 2, Cod3D, Ulead Smartsaver 2.0)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(434, '99079', 'Internet Vol. III No. 1 Jan - Feb 2001 (Games Plus)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(435, '99080', 'Internet Vol. III No. 5 Mei - Juni 2001 (13 Antivirus & 28 Program Remover)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(436, '99081', 'Internet Vol. III No. 6 Juni - Juli 2001 (Tweak Tools & Data Protection)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(437, '99082', 'Internet Vol. III No. 9 Sept - Okt 2001 (Web Development Tools)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(438, '99083', 'Internet Vol. III No. 10 Okt - Nov 2001 (Program Emulator)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(439, '99084', 'Internet Vol. III No. 11 Nov - Des 2001 (Backup, Restore & PHAT Linux)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(440, '99085', 'Internet Vol. IV No. 3 Maret - April 2002 (13 Image Editor)', 2, '1', NULL, 3, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(441, '99086', 'Info Komputer Vol. 7 Mei 2003 (Tutorial Interaktif CorelDraw)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(442, '99087', 'Info Komputer Vol. 13 Desember 2003 (Tutorial Interaktif Teknik Edit & Efek Video Adobe Premiere)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(443, '99088', 'Info Komputer Vol. 8 Juni 2003 (Tutorial Interaktif 3DSMax)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(444, '99089', 'Info Komputer Vol. 10 Agustus 2003 (Tutorial Interaktif Adobe Photoshop)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(445, '99090', 'Info Komputer Vol. 13 November 2003 (Tutorial Interaktif Adobe Premiere Pro)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(446, '99091', 'Info Komputer Vol. 6 April 2003 (Tutorial Interaktif Sound Editing dengan Premiere)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(447, '99092', 'Info Komputer Vol. 11 September 2003 (Tutorial Interaktif Adobe After Effects Sesi 1)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(448, '99093', 'Info Komputer Vol. 12 Oktober 2003 (Tutorial Interaktif Adobe After Effects Sesi 2)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(449, '99094', 'CHIP Gold-CD 07 2002 (Program Antivirus Pilihan, Macromedia Studio MX, OpenOffice.org 1.0.0)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(450, '99095', 'Info Komputer Vol. 5 Maret 2003 ( Membangun Jaringan Kecil)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(451, '99096', 'Info Komputer Vol. 9 Juli 2003 (Tutorial Interaktif Macromedia Dreamweaver)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(452, '99097', 'Mikrodata Vol. 4 Seri 17', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(453, '99098', 'Mikrodata Vol. 3 Seri 17', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(454, '99099', 'Mikrodata Vol. 10 Seri 16', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(455, '99100', 'Mikrodata Vol. 9 Seri 16', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(456, '99101', 'Webmaster Pro (Menguasai Aplikasi Web tanpa Pemrograman)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(457, '99102', 'Flash 5 Weekend Crash Course', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(458, '99103', 'Java Weekend Crash Course', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(459, '99104', 'CD InfoNET Vol. IV No. 07 Juli-Agustus 2002', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(460, '99105', 'Anti Virus Media no.05', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(461, '99106', 'Anti Virus Media no.06', 1, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(462, '99107', 'Anti Virus Media no.07', 1, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(463, '99108', 'Anti Virus Media no.08', 1, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(464, '99109', 'Anti Virus Media no.09', 1, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(465, '99110', 'Anti Virus Media no.10', 1, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(466, '99111', 'Anti Virus Media no.11', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(467, '99112', 'Pemrograman Windows API dgn MS Visual Basic', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(468, '99113', 'Mikrodata Media Penggemar Komp. Vol. 1 Seri 15', 1, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(469, '99114', 'Mikrodata Media Penggemar Komp. Vol. 2 Seri 15', 1, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(470, '99115', 'Mikrodata Media Penggemar Komp. Vol. 3 Seri 15', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(471, '99116', 'Mikrodata Media Penggemar Komp. Vol. 1 Seri 16', 1, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(472, '99117', 'Mikrodata Media Penggemar Komp. Vol. 2 Seri 16', 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(473, '99118', 'HOT DOG PRO for WIN 95 Support Files', 1, NULL, NULL, 1, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(474, '99119', 'HOT DOG PRO for WIN 95 Installation Files', 1, NULL, NULL, 1, 4, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(475, '99120', 'RED HAT LINUX Tip Server dan Sistem Operasi', 1, '1', NULL, 3, 2, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(476, '99121', 'CHIP 10 2001 (Spyware Removal Tools, System Recovery Tools, PC Tuning Tools)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(477, '99122', 'CHIP 09 2003 (Password Recovery Tools, PC Video Recorder, Spam Killer Tools)', 1, '1', NULL, 3, 1, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(478, '99123', 'Dasar Pemrograman WEB Dinamis Menggunakan PHP', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(479, '99124', 'Beralih Ke Pemrograman Visual Basic. Net', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(480, '99125', 'Manajemen Database dengan MySQL', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(481, '99126', 'Tip dan Trik Macromedia Flash MX dengn Action Script', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(482, '99127', 'Ste by Step Visual BAsic 6.0 Profesional', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(483, '99128', 'Web Database Development Step by step', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(484, '99129', 'Info Komputer April 2004 (Bedah NoteBook Centrino / VCD)', 1, '2', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(485, '99130', 'Info Komputer Vol. 25 Desember 2004 (Tutorial Dreamweaver MX, Membuat Frame, Behavior Layer, Kontrol Animasi Layer)', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(486, '99131', 'CHIP 02 2004 (Audio Cleaning Tools, P2P Sharing Tools, PDF Applications)', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(487, '99132', 'CHIP 10 2004 (Pocket PC & Symbian 60 Series, Hard Disk Utility, Wallpaper & Screensaver)', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(488, '99133', 'Info Komputer Vol. 18 Mei 2004 (Tutorial Creative Animation 1 Macromedia Flash MX)', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(489, '99134', 'CHIP 03 2004 (Pengolah Video Clip, File Manager Software, E-mail Client Support)', 1, '1', '2005-03-29', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(490, '99135', 'Singkat Tepat Jelas Desain Web dengan Adobe Go Live 5.0', 1, '1', '2005-03-29', 1, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(491, '99136', 'Info Komputer Vol. 15 Februari 2004 (Tutorial Interaktif Fireworks)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(492, '99137', 'Info Komputer Vol. 16 Maret 2004 (Tutorial Interaktif Fireworks Bag. II)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(493, '99138', 'Info Komputer Vol. 17 April 2004 (Tutorial Interaktif Fireworks Bag. III)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(494, '99139', 'Info Komputer Vol. 19 Juni 2004 (Tutorial Interaktif Creative Animation 2 Flash MX)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(495, '99140', 'Info Komputer Vol. 20 Juli 2004 (Tutorial Interaktif Creative Animation 3 Flash MX)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(496, '99141', 'Info Komputer Vol. 21 Agustus 2004 (Tutorial Interaktif Creative Animation 4 Flash MX)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(497, '99142', 'Info Komputer Vol. 22 September 2004 (Tutorial Interaktif Creative Animation 5 Flash MX)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(498, '99143', 'Info Komputer Vol. 23 Oktober 2004 (Tutorial Interaktif Dreamweaver MX)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(499, '99144', 'Info Komputer Vol. 24 November 2004 (Tutorial Interaktif Dreamweaver MX, Web Site 2)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(500, '99145', 'Info Komputer Vol. 14 Januari 2004 (Tutorial Interaktif Adobe Photoshop, Teknik Seleksi & Mewarnai Gambar)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(501, '99146', 'Info Komputer Vol. 27 Januari 2005 (Tutorial Interaktif Dreamweaver MX 4)', 1, '2', '2006-04-20', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(502, '99147', 'Info Komputer Vol. 29 Maret 2005 (Tutorial Interaktif MS Word 2003)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(503, '99148', 'Info Komputer Vol. 30 April 2005 (Tutorial Interaktif Power Point 2003, Tip-Trik Spreadsheet, Contoh Tip Fungsi Terbilang)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(504, '99149', 'Info Komputer Vol. 31 Mei 2005 (Tutorial Interaktif Power Point 2003)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(505, '99150', 'Info Komputer Vol. 32 Juni 2005 (Tutorial Interaktif Swift 3D Bagian 1)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(506, '99151', 'Info Komputer Vol. 33 Juli 2005 (Tutorial Interaktif Swift 3D Bagian 2)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(507, '99152', 'Info Komputer Vol. 34 Agustus 2005 (Tutorial Interaktif Swift 3D Bagian 3)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(508, '99153', 'Info Komputer Vol. 35 September 2005 (Tutorial Interaktif Swishmax)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(509, '99154', 'Info Komputer Vol. 37 November 2005 (OpenOffice.org 1.1.4, Tip Interaktif MS Publisher, CorelDraw)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(510, '99155', 'Info Komputer Vol. 38 Desember 2005 (OpenOffice 2.0, Tip Interaktif FreeHand MX, CorelDraw)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(511, '99156', 'CHIP-CD 1/2000', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(512, '99157', 'CHIP-CD 4/2000 (Tuning Tools utk Meningkatkan Performa dan Kinerja PC, Internet Messenger, DVD-Player)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(513, '99158', 'CHIP-CD 8/2000', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(514, '99159', 'CHIP-CD 2/2001', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(515, '99160', 'CHIP-CD 4/2001', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(516, '99161', 'CHIP 09 2001 (Download Manager, Virus Removal Tools, Photo Editing Tools)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(517, '99162', 'CHIP 06 2002 (FIFA-World Cup 2002, E-mail Client Alternatif, Graphic Plug-Ins)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(518, '99163', 'CHIP 01 2004 (Digital Camera Software, Spesial: 101 Freeware Tools, 02 XDA II Tools)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(519, '99164', 'CHIP 04 2004 (80 MB Software Pocket PC, Flash Movie Tools, Divine Kids Games)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(520, '99165', 'CHIP 05 2004 (Symbian Special Software, Software Burning Gratis, Audio Management Tools)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(521, '99166', 'CHIP 06 2004 (Software Pengolah Gambar, Networking Tool, CHIP-Cam: Tip & Trik)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(522, '99167', 'CHIP 07 2004 (Software Antivirus, Freeware Photo Tools, Tweaking Software)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(523, '99168', 'CHIP 08 2004 (DVD Duplikator, Aplikasi Smartphone, HTML Tools)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(524, '99169', 'CHIP 09 2004 (PPC & Symbian 60 Series, PC System Tools, Encryption Tools)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(525, '99170', 'CHIP 2005 Spesial Networking', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(526, '99171', 'Internet Vol. II No. 7 Okt - Nov 2000 (Top MP 3 Player & Skin)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(527, '99172', 'Internet Vol. III No. 2 Feb - Maret 2001 (22 Software Update)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(528, '99173', 'Internet Vol. III No. 3 Maret - April 2001 (Audio Video Editing Tools)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(529, '99174', 'Internet Vol. III No. 7 Juli - Agust 2001 (Multimedia Tools)', 1, '2', '2006-04-21', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(530, '99175', 'PC Magazine April 2004, CD Edisi Internet (Browser, Chatting, Communication, Download, Email, Tool & Security)', 1, '2', '2006-04-27', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(531, '99176', 'PC Magazine September 2004, Utility (Data Management, Disk Tool, Miscellaneous Tool, Security Tool, sYSTEM tOOL)', 1, '2', '2006-04-27', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(532, '99177', 'Mikrodata Computer & Programming Vol. 4 Seri 16 (Microsoft NET Framework SDK Beta 1)', 1, '2', '2006-04-27', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(533, '99178', 'Mikrodata Computer & Programming Vol. 5 Seri 16 (Microsoft SmartTags SDK for Office XP, Microsoft IE 6.0 for Win98/ME/NT/Win2000)', 1, '2', '2006-04-27', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(534, '99179', 'Info Komputer Vol. 39 Januari 2006 (Kumpulan Codec, Tutorial Interaktif PowerPoint & PhotoShop CS)', 1, '2', '2006-04-27', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(535, '99180', 'Info Komputer Vol. 40 Februari 2006 (Tutorial Interaktif Image Editing, Flash, PowerPoint)', 1, '2', '2006-04-27', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(536, '99181', 'PC Media 03/2006 (PC Media Antivirus, Cross Racing Championship)', 2, '2', '2006-04-27', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(537, '99182', 'PC Media 11/2005 (Moto GP 3: Ultimate Racing Technology)', 2, '2', '2006-05-01', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(538, '99183', 'PC Media 12/2005 (Visual Basic 2005 Express Edition Beta 2, Dragon Shard)', 3, '2', '2006-05-01', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(539, '99184', 'Esensi-esensi Bahasa Pemrograman Java', 1, '2', '2006-05-01', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(540, '99185', 'Dasar Pemrograman Python', 1, '2', '2006-05-01', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(541, '99186', 'Dasar Aplikasi Database MySQL Delphi', 1, '2', '2006-05-01', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(542, '99187', 'Kriptografi Keamanan Internet dan Jaringan Telekomunikasi', 1, '2', '2006-05-01', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(543, '99188', 'Pengembangan Aplikasi Sistem Informasi Akademik Berbasis SMS dengan Java', 1, '2', '2006-05-01', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(544, '99189', 'Aplikasi E-commerce dengan Java Servlet dan JSP', 1, '2', '2006-05-01', 1, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(545, '99190', 'Microsoft Windows NT Workstation Versi 4.0 Step by Step', 1, '2', '2006-05-01', 1, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(546, '99191', 'The Companion Disk to the Guide to Multimedia Presentations (International Version)', 1, '2', '2006-05-15', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(547, '99192', 'Komputer & Troubleshooting', 1, '2', '2006-07-03', 3, 6, 1, NULL, NULL, NULL, '0000-00-00 00:00:00', 1),
(548, '99193', 'TTTTeknologi Pemrograman Mobile Commerce', 1, NULL, '2006-07-03', 3, 6, 1, 1, '0000-00-00', '', '0000-00-00 00:00:00', 1),
(549, '1026', 'BPS Antivirus Luar Biasa', 1, 'p', '2015-02-13', 3, 7, 1, 17, '0000-00-00', 'Uji Coba SIMDAPEL', '0000-00-00 00:00:00', 1),
(550, '12344', 'X', 1, '', '2016-01-11', 3, 1, 1, 11, '2016-01-05', '', '2016-01-18 11:31:13', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pl_instalasi`
--

CREATE TABLE `pl_instalasi` (
  `id` int(11) NOT NULL,
  `pl_data_id` int(11) DEFAULT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `tgl_instalasi` date NOT NULL,
  `banyak_perangkat` int(11) NOT NULL,
  `keterangan` text,
  `petugas_instalasi_id` int(11) DEFAULT NULL,
  `operator_id` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pl_jenis`
--

CREATE TABLE `pl_jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pl_jenis`
--

INSERT INTO `pl_jenis` (`id`, `nama_jenis`) VALUES
(1, 'Anti Virus'),
(2, 'Aplikasi Database'),
(3, 'Aplikasi Gambar/Grafik/Presentasi/GIS'),
(4, 'Aplikasi Internet'),
(5, 'Aplikasi Network'),
(6, 'Aplikasi Pengolah Kata'),
(7, 'Aplikasi Spreadsheet'),
(8, 'Aplikasi Statistik/Demographi'),
(9, 'Aplikasi Manajemen'),
(10, 'Compiler'),
(11, 'Demo'),
(12, 'Driver'),
(13, 'Driver Network'),
(14, 'Expert System'),
(15, 'Filling'),
(16, 'Freeware'),
(17, 'Image Prosessing'),
(18, 'Sistem Operasi'),
(19, 'Sistem Operasi Network'),
(20, 'Suite'),
(21, 'Utility'),
(99, 'Lainnya'),
(100, 'Office');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pl_license`
--

CREATE TABLE `pl_license` (
  `id` int(11) NOT NULL,
  `nama_license` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pl_license`
--

INSERT INTO `pl_license` (`id`, `nama_license`) VALUES
(1, 'Single License'),
(2, 'Corporate License'),
(3, 'Shareware'),
(4, 'Public Domain'),
(5, 'Freeware'),
(6, 'No Lisence'),
(7, 'BPS RI'),
(8, 'Opensource');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pl_media`
--

CREATE TABLE `pl_media` (
  `id` int(11) NOT NULL,
  `nama_media` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pl_media`
--

INSERT INTO `pl_media` (`id`, `nama_media`) VALUES
(1, 'Diskette 3.5"'),
(2, 'Diskette 5.25"'),
(3, 'CD-ROM'),
(4, 'File (FTP Media)'),
(5, 'DVD'),
(6, 'Axway');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pl_transaksi`
--

CREATE TABLE `pl_transaksi` (
  `id` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_targetkembali` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `pegawai_id` int(11) NOT NULL,
  `operator_id` int(11) DEFAULT NULL,
  `keterangan` text,
  `pl_data_id` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'administrator', NULL),
(2, 'user_bps', NULL),
(3, 'user_non_bps', NULL),
(4, 'operator', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'administrator', NULL),
(2, 'user_bps', NULL),
(3, 'user_non_bps', NULL),
(4, 'operator', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `seksi`
--

CREATE TABLE `seksi` (
  `id` int(11) NOT NULL,
  `nama_seksi` varchar(50) NOT NULL,
  `bidang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `seksi`
--

INSERT INTO `seksi` (`id`, `nama_seksi`, `bidang_id`) VALUES
(1, 'Bina Program', 2),
(2, 'Kepegawaian dan Hukum', 2),
(3, 'Keuangan', 2),
(4, 'Urusan Dalam', 2),
(5, 'Statistik Kependudukan', 3),
(6, 'Statistik Ketahanan Sosial', 3),
(7, 'Statistik Kesejahteraan Rakyat', 3),
(8, 'Statistik Pertanian', 4),
(9, 'Statistik Industri', 4),
(10, 'Statistik Pertambangan, Energi dan Konstruksi', 4),
(11, 'Statistik Harga Konsumen dan Harga Perdagangan Bes', 5),
(12, 'Statistik Keuangan dan Harga Produsen', 5),
(13, 'Statistik Niaga dan Jasa', 5),
(14, 'Neraca Produksi', 6),
(15, 'Neraca Konsumsi', 6),
(16, 'Analisis Statistik Lintas Sektoral', 6),
(17, 'Integrasi Pengolahan Data', 7),
(18, 'Jaringan dan Rujukan Statistik', 7),
(19, 'Diseminasi dan Layanan Statistik', 7),
(20, 'Kepala Bagian', 2),
(21, 'Kepala Bidang', 3),
(22, 'Kepala Bidang', 4),
(23, 'Kepala Bidang', 5),
(24, 'Kepala Bidang', 6),
(25, 'Kepala Bidang', 7),
(26, 'Kepala Provinsi', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `nama_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nip` char(18) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `seksi_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nip`, `nama`, `username`, `email`, `password`, `remember_token`, `seksi_id`, `role_id`) VALUES
(1, '196811051994012001', 'Ika Novia Satriana SE, MM', 'ika', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', 'cwFtBZaGwgfRP0UlrRMUmM5Quxpyzq6IYfQgRPjlqb84BGVRceEHlTcxSZcM', 1, 3),
(2, '196604131986032002', 'Faridawati', 'faridawati', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 2, 2),
(3, '196903221994012001', 'Ir.  Elly Nurmawati  M.M.', 'elly', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 3, 2),
(4, '195807271981031004', 'Suryadi S  S.H.', 'suryadi', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 4, 2),
(5, '197911262002121006', 'Imam Setia Harnomo SST, M.Stat', 'imam', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 5, 2),
(6, '196509051992031004', 'Muhammad Yani SE', 'yani', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 6, 2),
(7, '198104212003122001', 'Rika Kartini S.ST', 'rika', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 7, 2),
(8, '196703151994011001', 'Ir. Triyanto Widiarso MMA.', 'dimas', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 8, 2),
(9, '198310072006022002', 'Retno Pertiwi SST.,M.Si', 'retno', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 9, 2),
(10, '197506241994031001', 'M. Yun Imran SE', 'yun', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 10, 2),
(11, '196705291994012001', 'Parmiatun SE', 'bunda', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 11, 2),
(12, '196003161979121001', 'Abdul Kadir SE', 'kadir', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 12, 2),
(13, '198307072007012012', 'Fitri Wahyu Yuliasih SST', 'fitri', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', 'cVzqaAPaAUZ9VmLMq73or8aIfOwDZyoIp4412W718w9REfpdJAVnWehbw6BM', 13, 2),
(14, '197206121994122001', 'Sri Suyatmi S.Si, M.Si', 'sri', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 14, 2),
(15, '197608171999011001', 'Agus Hartanto, SE, M.Eng M.Sc', 'agus', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 15, 2),
(16, '196611111994012001', 'Tri Setiani SE, M.M.', 'tri', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 16, 2),
(17, '197604091999011001', 'Hakim Azizi S.ST', 'hakim', 'hakim@bps.go.id', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', 'w1Jof9CrWZ1sMsIugIRiKll6ki3HPE2UUpMNLKWWTzdFJ962vtMG8jXZcOAf', 17, 4),
(18, '196005121981031002', 'Syarif Busri S.E.', 'busri', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '1fqQBRKTOSL1HCp0I3PNEW9FaPNxhM5R0vftUf2hrHYtljsHDINqYqQv2NJl', 18, 2),
(19, '197612121999032001', 'Heny Sucihati S.ST', 'heny', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 19, 2),
(20, '196509101994021001', 'Ir. Jamaludin ?MM', 'jamaludin', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 20, 2),
(21, '196309041991031002', 'Duaksa Aritonang SE, MM', 'duaksa', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', 'F9hY3ovkJfArfP0xgnoEnfD3lLVAZsrs6nT7SySniPC8Zv7eVshlhVqTpUmm', 21, 2),
(22, '196703211992032002', 'Sari Mariani SE', 'mariani', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 22, 2),
(23, '195804261983021001', 'Edi Rahman Asmara S.Si, M.M', 'edi', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 23, 2),
(24, '196603041992032001', 'Ir. Martalena M.M.', 'martalena', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '', 24, 2),
(25, '197101211993121002', 'Sudiyanto S.Si., MM', 'sudiyanto', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', '6WGXzzET4akFffsIO22AXadUx5yqgZwUW1nLbbnvOYH5gy2csi79lJqG9NrD', 25, 2),
(26, '196405111992031003', 'Ir. Pitono MAP', 'pitono', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', 'pJ3oJqNqMl9u1HKmjEHkjE4ii3PZ2Ex4m9Y3Wa6k4wStxsdosGXKqKiqUKar', 26, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_inventori`
--
ALTER TABLE `data_inventori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Relationship51` (`subjek_id`),
  ADD KEY `IX_Relationship52` (`operator_id`);

--
-- Indexes for table `data_kuesioner`
--
ALTER TABLE `data_kuesioner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Relationship50` (`subjek_id`);

--
-- Indexes for table `data_subjek`
--
ALTER TABLE `data_subjek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Relationship63` (`unit_id`);

--
-- Indexes for table `permohonan_data_bps`
--
ALTER TABLE `permohonan_data_bps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Relationship60` (`operator_id`),
  ADD KEY `IX_Relationship61` (`status_id`),
  ADD KEY `IX_Relationship62` (`pegawai_id`),
  ADD KEY `data_inventori_id` (`data_inventori_id`);

--
-- Indexes for table `permohonan_data_nonbps`
--
ALTER TABLE `permohonan_data_nonbps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Relationship58` (`operator_id`),
  ADD KEY `IX_Relationship59` (`status_id`);

--
-- Indexes for table `pl_company`
--
ALTER TABLE `pl_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_data`
--
ALTER TABLE `pl_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Relationship44` (`jenis_id`),
  ADD KEY `IX_Relationship45` (`company_id`),
  ADD KEY `IX_Relationship46` (`license_id`),
  ADD KEY `IX_Relationship54` (`operator_id`),
  ADD KEY `IX_Relationship64` (`media_id`);

--
-- Indexes for table `pl_instalasi`
--
ALTER TABLE `pl_instalasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Relationship53` (`operator_id`),
  ADD KEY `IX_Relationship55` (`pegawai_id`),
  ADD KEY `IX_Relationship56` (`petugas_instalasi_id`),
  ADD KEY `IX_Relationship57` (`pl_data_id`);

--
-- Indexes for table `pl_jenis`
--
ALTER TABLE `pl_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_license`
--
ALTER TABLE `pl_license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_media`
--
ALTER TABLE `pl_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_transaksi`
--
ALTER TABLE `pl_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Relationship49` (`pl_data_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seksi`
--
ALTER TABLE `seksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Relationship9` (`bidang_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_Relationship7` (`seksi_id`),
  ADD KEY `IX_Relationship8` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang`
--
ALTER TABLE `bidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `data_inventori`
--
ALTER TABLE `data_inventori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1267;
--
-- AUTO_INCREMENT for table `data_kuesioner`
--
ALTER TABLE `data_kuesioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_subjek`
--
ALTER TABLE `data_subjek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permohonan_data_bps`
--
ALTER TABLE `permohonan_data_bps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permohonan_data_nonbps`
--
ALTER TABLE `permohonan_data_nonbps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pl_company`
--
ALTER TABLE `pl_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `pl_data`
--
ALTER TABLE `pl_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;
--
-- AUTO_INCREMENT for table `pl_instalasi`
--
ALTER TABLE `pl_instalasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pl_jenis`
--
ALTER TABLE `pl_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `pl_license`
--
ALTER TABLE `pl_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pl_media`
--
ALTER TABLE `pl_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pl_transaksi`
--
ALTER TABLE `pl_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `seksi`
--
ALTER TABLE `seksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_inventori`
--
ALTER TABLE `data_inventori`
  ADD CONSTRAINT `Relationship51` FOREIGN KEY (`subjek_id`) REFERENCES `data_subjek` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship52` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_kuesioner`
--
ALTER TABLE `data_kuesioner`
  ADD CONSTRAINT `Relationship50` FOREIGN KEY (`subjek_id`) REFERENCES `data_subjek` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `Relationship63` FOREIGN KEY (`unit_id`) REFERENCES `instansi` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permohonan_data_bps`
--
ALTER TABLE `permohonan_data_bps`
  ADD CONSTRAINT `Relasi1` FOREIGN KEY (`data_inventori_id`) REFERENCES `data_inventori` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship60` FOREIGN KEY (`operator_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship61` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship62` FOREIGN KEY (`pegawai_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permohonan_data_nonbps`
--
ALTER TABLE `permohonan_data_nonbps`
  ADD CONSTRAINT `Relationship58` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship59` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pl_data`
--
ALTER TABLE `pl_data`
  ADD CONSTRAINT `Relationship44` FOREIGN KEY (`jenis_id`) REFERENCES `pl_jenis` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship45` FOREIGN KEY (`company_id`) REFERENCES `pl_company` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship46` FOREIGN KEY (`license_id`) REFERENCES `pl_license` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship54` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship64` FOREIGN KEY (`media_id`) REFERENCES `pl_media` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pl_instalasi`
--
ALTER TABLE `pl_instalasi`
  ADD CONSTRAINT `Relationship53` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship55` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship56` FOREIGN KEY (`petugas_instalasi_id`) REFERENCES `pegawai` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship57` FOREIGN KEY (`pl_data_id`) REFERENCES `pl_data` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pl_transaksi`
--
ALTER TABLE `pl_transaksi`
  ADD CONSTRAINT `Relationship49` FOREIGN KEY (`pl_data_id`) REFERENCES `pl_data` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `seksi`
--
ALTER TABLE `seksi`
  ADD CONSTRAINT `Relationship9` FOREIGN KEY (`bidang_id`) REFERENCES `bidang` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `Relationship7` FOREIGN KEY (`seksi_id`) REFERENCES `seksi` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `relasi2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
