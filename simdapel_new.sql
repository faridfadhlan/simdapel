-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2016 at 09:50 AM
-- Server version: 10.1.9-MariaDB
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
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `id` int(11) NOT NULL,
  `nama_bidang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidang`
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
-- Table structure for table `data_inventori`
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
-- Dumping data for table `data_inventori`
--

INSERT INTO `data_inventori` (`id`, `no_cd`, `label_cd`, `nama_data`, `tahun`, `rincian`, `format`, `jumlah_rec`, `file_size`, `file_size_unit`, `keterangan`, `nama_layout`, `subjek_id`, `create_time`, `operator_id`) VALUES
(1, '10001', 'IMK_TW_2011', 'IMK Data 2011 Triwulanan ', '2011', 'imk', '', 0, 1849, '', '', '', 10, '2016-02-01 09:48:40', 18),
(2, '10002', 'IMK_TW_2012', 'IMK Data 2012 Triwulanan ', '2012', 'imk', '', 0, 27800, '', '', '', 10, '2016-02-01 09:48:41', 18),
(3, '10003', 'IMK_TW_2013', 'IMK Data 2013 Triwulanan ', '2013', 'imk', '', 0, 2367, '', '', '', 10, '2016-02-01 09:48:42', 18),
(4, '10004', 'IMK_TW_2014', 'IMK Data 2014 Triwulanan ', '2014', 'imk', '', 0, 405, '', '', '', 10, '2016-02-01 09:48:43', 18),
(5, '10005', 'IMK_TH_2014', 'IMK Data 2014 Tahunan', '2014', 'imk', '', 0, 405, '', '', '', 10, '2016-02-01 09:48:44', 18),
(6, '08001', 'PIPA_2012', 'PIPA 2012 Data', '2012', 'pipa', '', 0, 67174, '', '', '', 8, '2016-02-01 09:48:45', 18),
(7, '06001', 'PODES_2011', 'PODES 2011 Data', '2011', 'sav', '', 0, 6387, '', '', '', 6, '2016-02-01 09:48:46', 18),
(8, '06002', 'PODES_2014', 'PODES 2014 Data', '2014', 'bpod', '', 0, 69698, '', '', '', 6, '2016-02-01 09:48:47', 18),
(9, '07001', 'PPLS_2008', 'PPLS 2008 Data', '2008', 'dbf', '', 0, 497179, '', '', '', 7, '2016-02-01 09:48:48', 18),
(10, '07002', 'PPLS_2011', 'PPLS 2011 Data', '2011', 'zip', '', 0, 237877, '', '', '', 7, '2016-02-01 09:48:49', 18),
(11, '07003', 'PPLS_TNP2K_2012', 'PPLS TNP2K Data Aggregat Basis Data Terpadu 2012', '2012', 'xls', '', 0, 3743, '', '', '', 7, '2016-02-01 09:48:50', 18),
(12, '05001', 'SAK_ENTRY_2011', 'SAKERNAS 2011 Data Entry', '2011', 'dat', '', 0, 153037, '', '', '', 5, '2016-02-01 09:48:51', 18),
(13, '05002', 'SAK_ENTRY_2012', 'SAKERNAS 2012 Data Entry', '2012', 'dat', '', 0, 9676, '', '', '', 5, '2016-02-01 09:48:52', 18),
(14, '05003', 'SAK_LISTING_2012', 'SAKERNAS 2012 Data Listing', '2012', 'dat', '', 0, 1402, '', '', '', 5, '2016-02-01 09:48:53', 18),
(15, '05004', 'SAK_ENTRI_2013', 'SAKERNAS 2013 Data Entry', '2013', 'dat', '', 0, 75247, '', '', '', 5, '2016-02-01 09:48:54', 18),
(16, '05005', 'SAK_LISTING_2013', 'SAKERNAS 2013 Data Listing', '2013', 'dat', '', 0, 409654, '', '', '', 5, '2016-02-01 09:48:55', 18),
(17, '05006', 'SAK_ENTRI_2014', 'SAKERNAS 2014 Data Entry', '2014', 'bsak', '', 0, 2342, '', '', '', 5, '2016-02-01 09:48:56', 18),
(18, '05007', 'SP_2010', 'SP2010 Data', '2010', 'dbf', '', 0, 3220996, '', '', '', 2, '2016-02-01 09:48:57', 18),
(19, '09001', 'SPPLH_2013', 'SPPLH13 Data', '2013', 'dbf', '', 0, 30052, '', '', '', 9, '2016-02-01 09:48:58', 18),
(20, '04001', 'SSN_SBH_2012', 'SSN SBH 2012 Data', '2012', 'dbf', '', 0, 69107, '', '', '', 4, '2016-02-01 09:48:59', 18),
(21, '07004', 'PPLS_SOSIALISASI_2011', 'PPLS 2011 Media Sosialisasi', '2011', 'xls', '', 0, 218300, '', '', '', 7, '0000-00-00 00:00:00', 18),
(22, '11001', 'PSPK_RAKERNAS_2011', 'Rakernas PSPK2011', '2011', 'docx', '', 0, 146465, '', '', '', 11, '0000-00-00 00:00:00', 18);

-- --------------------------------------------------------

--
-- Table structure for table `data_kuesioner`
--

CREATE TABLE `data_kuesioner` (
  `id` int(11) NOT NULL,
  `subjek_id` int(11) DEFAULT NULL,
  `nama_kuesioner` varchar(255) NOT NULL,
  `nama_file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `data_subjek`
--

CREATE TABLE `data_subjek` (
  `id` int(11) NOT NULL,
  `kode` varchar(2) NOT NULL,
  `nama_subjek` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_subjek`
--

INSERT INTO `data_subjek` (`id`, `kode`, `nama_subjek`) VALUES
(1, '01', 'Sensus Ekonomi'),
(2, '02', 'Sensus Penduduk'),
(3, '03', 'Sensus Pertanian'),
(4, '04', 'Survei Sosial Ekonomi Nasional'),
(5, '05', 'Survei Angkatan Kerja Nasional'),
(6, '06', 'Potensi Desa'),
(7, '07', 'Pendataan Program Perlindungan Sosial'),
(8, '08', 'PIPA'),
(9, '09', 'Survei Perilaku Peduli Lingkungan Hidup'),
(10, '10', 'Survei Industri'),
(11, '11', 'Survei Pertanian');

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id` int(11) NOT NULL,
  `nama_unit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id`, `nama_unit`) VALUES
(1, 'Bidang IPDS'),
(2, 'Bidang NWAS'),
(3, 'Bidang Sosial'),
(4, 'Bidang Produksi'),
(5, 'Bidang Distribusi');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `nama_level`) VALUES
(1, 'admin'),
(2, 'user_bps'),
(3, 'user_non_bps'),
(4, 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL,
  `pegawai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id`, `username`, `password`, `level`, `pegawai_id`) VALUES
(1, 'farid', 'farid', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `unit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `unit_id`) VALUES
(1, '198909202012111001', 'Muhammad Farid Fadhlan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permohonan_data_bps`
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
-- Dumping data for table `permohonan_data_bps`
--

INSERT INTO `permohonan_data_bps` (`id`, `no_surat`, `data_diminta`, `pegawai_id`, `status_id`, `operator_id`, `data_inventori_id`, `create_time`) VALUES
(1, '', '', 12, NULL, 17, 4, '2016-01-31 11:58:02'),
(2, '12/22/BPS/2016', '', 6, NULL, 17, 6, '2016-01-31 12:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `permohonan_data_nonbps`
--

CREATE TABLE `permohonan_data_nonbps` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(100) DEFAULT NULL,
  `jenis_identitas` varchar(100) NOT NULL,
  `no_identitas` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `umur` int(2) NOT NULL,
  `jk` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `pendidikan_terakhir` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `nama_instansi` varchar(100) NOT NULL,
  `kategori_instansi` varchar(255) DEFAULT NULL,
  `nama_kepala` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `data_diminta` text NOT NULL,
  `pnbp` tinyint(11) NOT NULL,
  `proses_data` tinyint(1) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `operator_id` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pegawai_id` int(11) DEFAULT NULL,
  `data_inventori_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permohonan_data_nonbps`
--

INSERT INTO `permohonan_data_nonbps` (`id`, `no_surat`, `jenis_identitas`, `no_identitas`, `nama`, `umur`, `jk`, `pendidikan_terakhir`, `alamat`, `telp`, `pekerjaan`, `nama_instansi`, `kategori_instansi`, `nama_kepala`, `email`, `data_diminta`, `pnbp`, `proses_data`, `size`, `status_id`, `operator_id`, `create_time`, `pegawai_id`, `data_inventori_id`) VALUES
(2, '10254dfdfdf01df0d', '', '', '', 0, '', '', '', '', '', '', NULL, NULL, '', '', 0, NULL, NULL, NULL, 17, '0000-00-00 00:00:00', 4, 5),
(4, NULL, '1', '3374082009890002', 'Muhammad Farid Fadhlan', 27, 'Laki-laki', '3', 'Jl. Tabrani Ahmad', '081258733375', 'PNS', 'BPS', NULL, NULL, 'm.farid@bps.go.id', '', 0, NULL, NULL, 1, 17, '2016-02-01 00:00:00', NULL, 3),
(5, '12/584/02/2016', '', '', '', 0, NULL, '', 'Jl. Sutan Syahrir No. 145 Pontianak', '0561-4758412', '', 'Dinas Pertanian Provinsi Kalimantan Barat', '2', 'Sutop, SH, MM', '', '', 0, NULL, NULL, 1, 17, '2016-02-02 07:59:02', NULL, 6),
(6, '12/584/02/2016', '', '', '', 0, NULL, '', '', '', '', '', NULL, NULL, '', 'Tes', 0, NULL, NULL, NULL, 17, '2016-02-02 08:08:12', 6, 6),
(9, '11/22/33/2016', '', '', '', 0, NULL, '', 'Jl. Letjend Sutoyo', '0561-4758412', '', 'Dinas Sosial', '2', 'Suprapto', '', '', 1, NULL, NULL, 1, 17, '2016-02-02 09:39:37', NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `pl_company`
--

CREATE TABLE `pl_company` (
  `id` int(11) NOT NULL,
  `nama_company` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pl_company`
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
-- Table structure for table `pl_data`
--

CREATE TABLE `pl_data` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jumlah_media` int(11) NOT NULL,
  `duplikat` int(2) DEFAULT NULL,
  `manual` text,
  `tgl_terima` date DEFAULT NULL,
  `sn` text,
  `media_id` int(11) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL,
  `jenis_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL,
  `ket` text,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operator_id` int(11) DEFAULT NULL,
  `kontak_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pl_data`
--

INSERT INTO `pl_data` (`id`, `kode`, `nama`, `jumlah_media`, `duplikat`, `manual`, `tgl_terima`, `sn`, `media_id`, `license_id`, `jenis_id`, `company_id`, `tgl_expired`, `ket`, `create_time`, `operator_id`, `kontak_id`) VALUES
(1, '1001', 'SYMANTEC Server', 1, 1, 'null', '2015-01-01', '-', 3, 2, 1, 17, '2016-01-01', '-', '2016-02-01 09:15:29', 18, 18),
(2, '1002', 'Avast Pro Antivirus 6.0.1000', 1, 1, 'null', '2015-01-01', '', 4, 6, 1, 99, '2016-01-01', '', '2016-02-01 09:15:30', 18, 18),
(3, '1003', 'McAfee VirusScan Enterprise 8.5i Plus Patch 6', 1, 1, 'null', '2015-01-01', '', 4, 6, 1, 7, '2016-01-01', '', '2016-02-01 09:15:31', 18, 18),
(4, '2001', 'DPP 2013 Program', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:32', 18, 18),
(5, '2002', 'DPPNRT 2014 Program', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:33', 18, 18),
(6, '2003', 'IBS 2012', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:34', 18, 18),
(7, '2004', 'IHK Online', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:35', 18, 18),
(8, '2005', 'IMK Progam Entry', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:36', 18, 18),
(9, '2006', 'PIPA 2012 Program Entry', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:37', 18, 18),
(10, '2007', 'PODES 2011 Program Entry', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:38', 18, 18),
(11, '2008', 'PODES 2014 Program Entry', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:39', 18, 18),
(12, '2009', 'PPLS 2011 Program', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:40', 18, 18),
(13, '2010', 'PSPK2011 Program', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:41', 18, 18),
(14, '2011', 'PST Aplikasi', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:42', 18, 18),
(15, '2012', 'RPH Program Entry', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:43', 18, 18),
(16, '2013', 'SAKERNAS 2011 Program Entry', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:44', 18, 18),
(17, '2014', 'SAKERNAS 2011 Program Updating', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:45', 18, 18),
(18, '2015', 'SAKERNAS 2012 Program Entry', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:46', 18, 18),
(19, '2016', 'SAKERNAS 2012 Program Updating', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:47', 18, 18),
(20, '2017', 'SAKERNAS 2013 Program Entry', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:48', 18, 18),
(21, '2018', 'SAKERNAS 2014 Program Entry', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:49', 18, 18),
(22, '2019', 'SPPLH13 Program', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:50', 18, 18),
(23, '2020', 'SPSS11_5', 1, 1, 'null', '2015-01-01', '-', 3, 2, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:51', 18, 18),
(24, '2021', 'SPTI Program', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:52', 18, 18),
(25, '2022', 'SSN 2012 Program Updating', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:53', 18, 18),
(26, '2023', 'SSN SBH 2012 Program Entri', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:54', 18, 18),
(27, '2024', 'ST2013 Program', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:55', 18, 18),
(28, '2025', 'StatTransfer7', 1, 1, 'null', '2015-01-01', '-', 3, 2, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:56', 18, 18),
(29, '2026', 'STRPBS 2013', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:57', 18, 18),
(30, '2027', 'SUSENAS 2014 Program Entry', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:58', 18, 18),
(31, '2028', 'SUSENAS 2015 Program Updating', 1, 1, '1', '2015-01-01', '-', 3, 7, 2, 17, '2016-01-01', '-', '2016-02-01 09:15:59', 18, 18),
(32, '2029', 'Cspro40', 1, 1, 'null', '2015-01-01', '', 4, 7, 2, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(33, '2030', 'SIMAK_BMN_2011_MIGRASI', 1, 1, 'null', '2015-01-01', '', 4, 7, 2, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(34, '3001', 'Adobe Photoshop CS2', 1, 1, 'null', '2015-01-01', '-', 3, 2, 3, 1, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(35, '3002', 'ArcGIS 10', 1, 1, '1', '2015-01-01', '-', 3, 2, 3, 2, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(36, '3003', 'Flash', 1, 1, 'null', '2015-01-01', '-', 3, 2, 3, 99, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(37, '3004', 'Photoshop Cover Action 2', 1, 1, 'null', '2015-01-01', '-', 3, 2, 3, 1, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(38, '3005', 'Ulead.VideoStudio.11.Portable ON for WinXP', 1, 1, 'null', '2015-01-01', '-', 3, 2, 3, 17, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(39, '3006', 'Adobe Photoshop 7.0', 1, 1, 'null', '2015-01-01', '1045-0203-3247-2217-3566-6177', 4, 6, 3, 1, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(40, '3007', 'image web', 1, 1, 'null', '2015-01-01', '', 4, 6, 3, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(41, '3008', 'Joomla', 1, 1, 'null', '2015-01-01', '', 4, 6, 3, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(42, '5001', 'Team Viewer', 1, 1, 'null', '2015-01-01', '-', 3, 2, 5, 17, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(43, '6001', 'Microsoft Office 2003', 1, 1, 'null', '2015-01-01', 'GWH28-DGCMP-P6RC4-6J4MT-3HFDY', 4, 6, 6, 8, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(44, '6002', 'Microsoft Office 2007 Enterprise', 1, 1, 'null', '2015-01-01', 'KGFVY-7733B-8WCK9-KTG64-BC7D8', 4, 6, 6, 8, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(45, '6003', 'OFFICE97', 1, 1, 'null', '2015-01-01', '4156-0212207', 4, 6, 6, 8, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(46, '6004', 'Office 2010', 1, 1, 'null', '2015-01-01', 'TRT2Y-9PD2R-KKRYK-Y32BH-6HHWY', 4, 6, 6, 8, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(47, '6005', 'VB6', 1, 1, 'null', '2015-01-01', '422-1111111', 4, 6, 6, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(48, '12001', 'CANON_mp 258', 1, 1, 'null', '2015-01-01', '', 4, 2, 12, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(49, '12002', 'CANON_PIXMA MP198', 1, 1, 'null', '2015-01-01', '', 4, 2, 12, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(50, '12003', 'Driver ACER', 1, 1, 'null', '2015-01-01', '', 4, 6, 12, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(51, '12004', 'DRIVER PRINTRONIX', 1, 1, 'null', '2015-01-01', '', 4, 6, 12, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(52, '12005', 'HP LASERJET 1320', 1, 1, 'null', '2015-01-01', '', 4, 6, 12, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(53, '12006', 'HP LJ P4010_P451 (E)', 1, 1, 'null', '2015-01-01', '', 4, 6, 12, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(54, '12007', 'Scan Fujitsu Fi', 1, 1, 'null', '2015-01-01', '', 4, 6, 12, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(55, '12008', 'STELLHEAD', 1, 1, 'null', '2015-01-01', '', 4, 6, 12, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(56, '17001', 'adobe pro 9', 1, 1, 'null', '2015-01-01', '-', 3, 2, 17, 1, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(57, '17002', 'IMAGE BURNING', 1, 1, 'null', '2015-01-01', '', 4, 6, 17, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(58, '18001', 'WIN7', 1, 1, 'null', '2015-01-01', '-', 3, 2, 18, 17, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(59, '18002', 'Win8', 1, 1, 'null', '2015-01-01', '-', 3, 2, 18, 17, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(60, '18003', 'Cloning Server Kabupaten', 1, 1, 'null', '2015-01-01', '', 4, 7, 18, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(61, '18004', 'SPSS v16.0', 1, 1, 'null', '2015-01-01', '', 4, 6, 18, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(62, '19001', 'SPTK2013', 1, 1, 'null', '2015-01-01', '', 4, 6, 19, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(63, '19002', 'Visual Foxpro', 1, 1, 'null', '2015-01-01', '757-2573155', 4, 6, 19, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(64, '19003', 'windows server kabupaten', 1, 1, 'null', '2015-01-01', '', 4, 7, 19, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(65, '20001', 'Microsoft Office Visio 2007 - Eng', 1, 1, 'null', '2015-01-01', '-', 3, 2, 20, 8, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(66, '21001', 'Hiren'' Boot', 1, 1, 'null', '2015-01-01', '-', 3, 2, 21, 99, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(67, '21002', 'LG CDROM', 1, 1, 'null', '2015-01-01', '-', 3, 2, 21, 99, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(68, '21003', 'Program VCD Cutter v4.0_With_CRACK', 1, 1, 'null', '2015-01-01', '-', 3, 2, 21, 99, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(69, '99001', 'Flipping Book', 1, 1, 'null', '2015-01-01', '-', 3, 2, 99, 99, '2016-01-01', '-', '0000-00-00 00:00:00', 18, 18),
(70, '99002', 'Adobe Acrobat 6.0 Professional', 1, 1, 'null', '2015-01-01', '1118-1911-4821-7104-6966-4189', 4, 6, 99, 1, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(71, '99003', 'Ghost', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(72, '99004', 'GIS_LAT', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(73, '99005', 'GIS_PSPK', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(74, '99006', 'Handkey', 1, 1, 'null', '2015-01-01', '', 4, 7, 99, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(75, '99007', 'Installer Flipbook', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(76, '99008', 'Lat GIS', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(77, '99009', 'Macromedia Dreamweaver MX', 1, 1, 'null', '2015-01-01', 'WSW600-59791-91721-99978CD ', 4, 6, 99, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(78, '99010', 'MapObject2.1', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(79, '99011', 'Partitionmagic', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(80, '99012', 'PODES2011', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(81, '99013', 'Portable PDF Password Remover 3.0', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 99, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(82, '99014', 'Program IMK', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(83, '99015', 'REDATAM', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(84, '99016', 'SIMPEG', 1, 1, 'null', '2015-01-01', '', 4, 7, 99, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(85, '99017', 'TL-WN723N', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 3, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(86, '99018', 'Total Video Converter v3.01 + crack', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(87, '99019', 'VS', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18),
(88, '99020', 'vs6', 1, 1, 'null', '2015-01-01', '', 4, 6, 99, 17, '2016-01-01', '', '0000-00-00 00:00:00', 18, 18);

-- --------------------------------------------------------

--
-- Table structure for table `pl_instalasi`
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
-- Table structure for table `pl_jenis`
--

CREATE TABLE `pl_jenis` (
  `id` int(11) NOT NULL,
  `kode` char(2) NOT NULL,
  `nama_jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pl_jenis`
--

INSERT INTO `pl_jenis` (`id`, `kode`, `nama_jenis`) VALUES
(1, '01', 'Anti Virus'),
(2, '02', 'Aplikasi Database'),
(3, '03', 'Aplikasi Gambar/Grafik/Presentasi/GIS'),
(4, '04', 'Aplikasi Internet'),
(5, '05', 'Aplikasi Network'),
(6, '06', 'Aplikasi Pengolah Kata'),
(7, '07', 'Aplikasi Spreadsheet'),
(8, '08', 'Aplikasi Statistik/Demographi'),
(9, '09', 'Aplikasi Manajemen'),
(10, '10', 'Compiler'),
(11, '11', 'Demo'),
(12, '12', 'Driver'),
(13, '13', 'Driver Network'),
(14, '14', 'Expert System'),
(15, '15', 'Filling'),
(16, '16', 'Freeware'),
(17, '17', 'Image Prosessing'),
(18, '18', 'Sistem Operasi'),
(19, '19', 'Sistem Operasi Network'),
(20, '20', 'Suite'),
(21, '21', 'Utility'),
(99, '99', 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `pl_license`
--

CREATE TABLE `pl_license` (
  `id` int(11) NOT NULL,
  `nama_license` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pl_license`
--

INSERT INTO `pl_license` (`id`, `nama_license`) VALUES
(1, 'Single License'),
(2, 'Corporate License'),
(3, 'Shareware'),
(4, 'Public Domain'),
(5, 'Freeware'),
(6, 'No Lisence'),
(7, 'BPS RI');

-- --------------------------------------------------------

--
-- Table structure for table `pl_media`
--

CREATE TABLE `pl_media` (
  `id` int(11) NOT NULL,
  `nama_media` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pl_media`
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
-- Table structure for table `pl_transaksi`
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
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'administrator', NULL),
(2, 'user_bps', NULL),
(3, 'user_non_bps', NULL),
(4, 'operator', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'administrator', NULL),
(2, 'user_bps', NULL),
(3, 'user_non_bps', NULL),
(4, 'operator', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seksi`
--

CREATE TABLE `seksi` (
  `id` int(11) NOT NULL,
  `nama_seksi` varchar(50) NOT NULL,
  `bidang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seksi`
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
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `nama_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `nama_status`) VALUES
(1, 'completed'),
(2, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
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
(17, '197604091999011001', 'Hakim Azizi S.ST', 'hakim', 'hakim@bps.go.id', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', 'xlUVAR2ZqASjpWJLLo4orh1hpATd76E2Bwq7Vx7Mpo1Px0y55gX02yFJdoT7', 17, 4),
(18, '196005121981031002', 'Syarif Busri S.E.', 'busri', '', '$2y$10$AHABsyePbKWsCKro3R4qb.GvmO5F/ekF2Jo6Q3.S.efhaszh9nZHi', 'dxIke2fhhPq8yTxu25oRHuz3nX91CfabEbyBqfo2kVJ6ZWnsX6gbeyKRjfkI', 18, 2),
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
  ADD KEY `IX_Relationship59` (`status_id`),
  ADD KEY `data_inventori_id` (`data_inventori_id`);

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
  ADD KEY `IX_Relationship64` (`media_id`),
  ADD KEY `kontak_id` (`kontak_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `data_kuesioner`
--
ALTER TABLE `data_kuesioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_subjek`
--
ALTER TABLE `data_subjek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pl_company`
--
ALTER TABLE `pl_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `pl_data`
--
ALTER TABLE `pl_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `pl_instalasi`
--
ALTER TABLE `pl_instalasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pl_jenis`
--
ALTER TABLE `pl_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `pl_license`
--
ALTER TABLE `pl_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_inventori`
--
ALTER TABLE `data_inventori`
  ADD CONSTRAINT `Relationship51` FOREIGN KEY (`subjek_id`) REFERENCES `data_subjek` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship52` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_kuesioner`
--
ALTER TABLE `data_kuesioner`
  ADD CONSTRAINT `Relationship50` FOREIGN KEY (`subjek_id`) REFERENCES `data_subjek` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `Relationship63` FOREIGN KEY (`unit_id`) REFERENCES `instansi` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `permohonan_data_bps`
--
ALTER TABLE `permohonan_data_bps`
  ADD CONSTRAINT `Relasi1` FOREIGN KEY (`data_inventori_id`) REFERENCES `data_inventori` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship60` FOREIGN KEY (`operator_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship61` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship62` FOREIGN KEY (`pegawai_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `permohonan_data_nonbps`
--
ALTER TABLE `permohonan_data_nonbps`
  ADD CONSTRAINT `Relationship58` FOREIGN KEY (`operator_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship59` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `permohonan_data_nonbps_ibfk_1` FOREIGN KEY (`data_inventori_id`) REFERENCES `data_inventori` (`id`);

--
-- Constraints for table `pl_data`
--
ALTER TABLE `pl_data`
  ADD CONSTRAINT `Relationship44` FOREIGN KEY (`jenis_id`) REFERENCES `pl_jenis` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship45` FOREIGN KEY (`company_id`) REFERENCES `pl_company` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship46` FOREIGN KEY (`license_id`) REFERENCES `pl_license` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship54` FOREIGN KEY (`operator_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship64` FOREIGN KEY (`media_id`) REFERENCES `pl_media` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `relasikontakuser` FOREIGN KEY (`kontak_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pl_instalasi`
--
ALTER TABLE `pl_instalasi`
  ADD CONSTRAINT `Relationship53` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship55` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship56` FOREIGN KEY (`petugas_instalasi_id`) REFERENCES `pegawai` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Relationship57` FOREIGN KEY (`pl_data_id`) REFERENCES `pl_data` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pl_transaksi`
--
ALTER TABLE `pl_transaksi`
  ADD CONSTRAINT `Relationship49` FOREIGN KEY (`pl_data_id`) REFERENCES `pl_data` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `seksi`
--
ALTER TABLE `seksi`
  ADD CONSTRAINT `Relationship9` FOREIGN KEY (`bidang_id`) REFERENCES `bidang` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `Relationship7` FOREIGN KEY (`seksi_id`) REFERENCES `seksi` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `relasi2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
