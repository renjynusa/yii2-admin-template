-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 09:30 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tav_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `nama_tabel` varchar(500) NOT NULL,
  `id_tabel` int(11) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(1, 0, 'Login', 1642576042.364, 'DEVELOPER', 'Login'),
(2, 4, 'yii\\db\\Command::execute', 1642576042.3642, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1642576042.364, \'DEVELOPER\', \'Login\')'),
(3, 0, 'Login', 1642732880.9644, 'DEVELOPER', 'Login'),
(4, 4, 'yii\\db\\Command::execute', 1642732880.9645, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1642732880.9644, \'DEVELOPER\', \'Login\')'),
(5, 4, 'yii\\db\\Command::execute', 1642732901.4685, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Dokter\', \'tbl-dokter\', 2, \'user\', 0, 4)'),
(6, 4, 'yii\\db\\Command::execute', 1642732907.4504, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'6\''),
(7, 4, 'yii\\db\\Command::execute', 1642732907.4555, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 6)'),
(8, 4, 'yii\\db\\Command::execute', 1642732907.4588, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 6)'),
(9, 4, 'yii\\db\\Command::execute', 1642732907.4651, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 6)'),
(10, 4, 'yii\\db\\Command::execute', 1642732925.4935, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'6\''),
(11, 4, 'yii\\db\\Command::execute', 1642732925.5064, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 6)'),
(12, 4, 'yii\\db\\Command::execute', 1642732925.509, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 6)'),
(13, 4, 'yii\\db\\Command::execute', 1642732925.5115, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 6)'),
(14, 4, 'yii\\db\\Command::execute', 1642732945.2315, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Pasien\', \'tbl-pasien\', 2, \'user\', 0, 5)'),
(15, 4, 'yii\\db\\Command::execute', 1642732949.5425, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'7\''),
(16, 4, 'yii\\db\\Command::execute', 1642732949.5487, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 7)'),
(17, 4, 'yii\\db\\Command::execute', 1642732949.5523, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 7)'),
(18, 4, 'yii\\db\\Command::execute', 1642732949.5549, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 7)'),
(19, 4, 'yii\\db\\Command::execute', 1642732967.809, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Obat\', \'tbl-obat\', 2, \'database\', 0, 6)'),
(20, 4, 'yii\\db\\Command::execute', 1642732974.0375, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'8\''),
(21, 4, 'yii\\db\\Command::execute', 1642732974.0441, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 8)'),
(22, 4, 'yii\\db\\Command::execute', 1642732974.0469, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 8)'),
(23, 4, 'yii\\db\\Command::execute', 1642732974.0493, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 8)'),
(24, 4, 'yii\\db\\Command::execute', 1642732987.7625, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'8\''),
(25, 4, 'yii\\db\\Command::execute', 1642732987.7716, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 8)'),
(26, 4, 'yii\\db\\Command::execute', 1642732987.7738, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 8)'),
(27, 4, 'yii\\db\\Command::execute', 1642732987.7755, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 8)'),
(28, 4, 'yii\\db\\Command::execute', 1642733030.7493, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'PEMERIKSAAN\', \'tbl-pemeriksaan\', 0, \'data\', 0, 3)'),
(29, 4, 'yii\\db\\Command::execute', 1642733035.0591, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'9\''),
(30, 4, 'yii\\db\\Command::execute', 1642733035.0649, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 9)'),
(31, 4, 'yii\\db\\Command::execute', 1642733035.0672, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 9)'),
(32, 4, 'yii\\db\\Command::execute', 1642733035.0703, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 9)'),
(33, 4, 'yii\\db\\Command::execute', 1642734766.0569, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`) VALUES (\'Rendy\', \'Mata\', \'Semarang\', \'123123213\', \'Aktif\')'),
(34, 4, 'yii\\db\\Command::execute', 1642736135.2064, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`) VALUES (\'Renaa\', \'Jantung\', \'Semarang\', \'089676-98783\', \'Aktif\')'),
(35, 4, 'yii\\db\\Command::execute', 1642736529.3796, 'DEVELOPER', 'UPDATE `tbl_dokter` SET `specialist`=\'\' WHERE `id_dokter`=1'),
(36, 4, 'yii\\db\\Command::execute', 1642736950.7164, 'DEVELOPER', 'INSERT INTO `tbl_obat` (`kode_obat`, `nama_obat`, `keterangan`, `status`) VALUES (\'asedq12asda\', \'test\', \'test\', 1)'),
(37, 4, 'yii\\db\\Command::execute', 1642738279.6179, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`kode_rm`, `nama_pasien`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `jenis_pengobatan`, `status`) VALUES (\'asdasd12dasd\', \'Rendy\', \'Pria\', \'Semarang\', \'2021-12-30\', \'Semarang\', \'1231asd12e\', \'BPJS\', \'Aktif\')'),
(38, 4, 'yii\\db\\Command::execute', 1642738390.418, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`tanggal_daftar`, `kode_rm`, `nama_pasien`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `jenis_pengobatan`, `status`) VALUES (\'2022-01-21\', \'asdac1231\', \'Rendy\', \'Pria\', \'Seasdad\', \'2022-01-18\', \'asda\', \'123asda\', \'BPJS\', \'Aktif\')'),
(39, 4, 'yii\\db\\Command::execute', 1642770533.251, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=4, `icon`=\'user-md\', `status`=0 WHERE `id_menu`=6'),
(40, 4, 'yii\\db\\Command::execute', 1642770559.7774, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=5, `icon`=\'hospital-user\', `status`=0 WHERE `id_menu`=7'),
(41, 4, 'yii\\db\\Command::execute', 1642770585.6266, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=5, `icon`=\'user-friends\', `status`=0 WHERE `id_menu`=7'),
(42, 4, 'yii\\db\\Command::execute', 1642770613.0893, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=6, `icon`=\'tablets\', `status`=0 WHERE `id_menu`=8'),
(43, 4, 'yii\\db\\Command::execute', 1642770629.5405, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=3, `icon`=\'stethoscope\', `status`=0 WHERE `id_menu`=9'),
(44, 4, 'yii\\db\\Command::execute', 1642770648.5026, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Laporan\', \'laporan\', 0, \'file\', 0, 4)'),
(45, 4, 'yii\\db\\Command::execute', 1642770653.416, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'10\''),
(46, 4, 'yii\\db\\Command::execute', 1642770653.4219, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 10)'),
(47, 4, 'yii\\db\\Command::execute', 1642770653.4238, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 10)'),
(48, 4, 'yii\\db\\Command::execute', 1642770653.4251, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 10)'),
(49, 4, 'yii\\db\\Command::execute', 1642770662.2982, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `nama_menu`=\'LAPORAN\', `url`=\'#\', `id_parent`=0, `no_urut`=4, `status`=0 WHERE `id_menu`=10'),
(50, 4, 'yii\\db\\Command::execute', 1642770688.8411, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=3, `status`=0 WHERE `id_menu`=9'),
(51, 4, 'yii\\db\\Command::execute', 1642770701.9971, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=3, `status`=0 WHERE `id_menu`=9'),
(52, 4, 'yii\\db\\Command::execute', 1642771768.7788, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`tanggal_periksa`, `kode_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `diagnosa`, `status`) VALUES (\'2022-01-21\', \'asdasxawea23e\', 1, 2, \'- asdasd\\r\\n- sdfsdfsd\', \'- sdfsd\\r\\n- sdfsdfsd\', 0)'),
(53, 4, 'yii\\db\\Command::execute', 1642782045.0415, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'OBAT-OBATAN\', \'#\', 0, \'tablets\', 0, 5)'),
(54, 4, 'yii\\db\\Command::execute', 1642782047.9992, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'11\''),
(55, 4, 'yii\\db\\Command::execute', 1642782048.004, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 11)'),
(56, 4, 'yii\\db\\Command::execute', 1642782048.0064, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 11)'),
(57, 4, 'yii\\db\\Command::execute', 1642782048.0083, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 11)'),
(58, 4, 'yii\\db\\Command::execute', 1642782134.0597, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Obat\', \'tbl-obat\', 11, \'book-medical\', 0, 1)'),
(59, 4, 'yii\\db\\Command::execute', 1642782136.9833, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'12\''),
(60, 4, 'yii\\db\\Command::execute', 1642782136.9881, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 12)'),
(61, 4, 'yii\\db\\Command::execute', 1642782136.9902, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 12)'),
(62, 4, 'yii\\db\\Command::execute', 1642782136.994, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 12)'),
(63, 4, 'yii\\db\\Command::execute', 1642782199.3862, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=8'),
(64, 4, 'yii\\db\\Command::execute', 1642782317.2258, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `id_pasien`=1, `id_dokter`=2, `status`=0 WHERE `id_pemeriksaan`=1'),
(65, 4, 'yii\\db\\Command::execute', 1642782346.3046, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `id_pasien`=1, `id_dokter`=2, `status`=1 WHERE `id_pemeriksaan`=1'),
(66, 4, 'yii\\db\\Command::execute', 1642804612.9551, 'DEVELOPER', 'UPDATE `tbl_obat` SET `nama_obat`=\'BODREX\', `status`=1 WHERE `id_obat`=1'),
(67, 4, 'yii\\db\\Command::execute', 1642804630.2158, 'DEVELOPER', 'INSERT INTO `tbl_obat` (`kode_obat`, `nama_obat`, `keterangan`, `status`) VALUES (\'asad123123\', \'PANADOL\', \'OK\', 0)'),
(68, 4, 'yii\\db\\Command::execute', 1642804641.7738, 'DEVELOPER', 'UPDATE `tbl_obat` SET `status`=0 WHERE `id_obat`=2'),
(69, 4, 'yii\\db\\Command::execute', 1642804666.137, 'DEVELOPER', 'UPDATE `tbl_obat` SET `status`=1 WHERE `id_obat`=2'),
(70, 4, 'yii\\db\\Command::execute', 1642805129.6812, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`) VALUES (1, 1)'),
(71, 4, 'yii\\db\\Command::execute', 1642807321.9773, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=2, `total_harga`=10000 WHERE `id_detail`=1'),
(72, 4, 'yii\\db\\Command::execute', 1642807603.694, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=2 WHERE `id_detail`=1'),
(73, 4, 'yii\\db\\Command::execute', 1642807891.0505, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`tanggal_periksa`, `kode_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `diagnosa`, `status`) VALUES (\'2022-01-22\', \'asdqawd12\', 2, 2, \'asdasd\', \'asdasd\', 1)'),
(74, 4, 'yii\\db\\Command::execute', 1642807895.9725, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (2, 2, 1)'),
(75, 4, 'yii\\db\\Command::execute', 1642808596.6054, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=5, `total_harga`=25000 WHERE `id_detail`=1'),
(76, 4, 'yii\\db\\Command::execute', 1642812018.2112, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (2, 1, 1)'),
(77, 4, 'yii\\db\\Command::execute', 1642812036.1663, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=5, `total_harga`=35000 WHERE `id_detail`=3'),
(78, 4, 'yii\\db\\Command::execute', 1642812128.302, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=0, `total_harga`=0 WHERE `id_detail`=1'),
(79, 4, 'yii\\db\\Command::execute', 1642812135.5781, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=1, `total_harga`=7000 WHERE `id_detail`=3'),
(80, 4, 'yii\\db\\Command::execute', 1642812180.5285, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=3, `total_harga`=21000 WHERE `id_detail`=3'),
(81, 4, 'yii\\db\\Command::execute', 1642812221.612, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=5, `total_harga`=35000 WHERE `id_detail`=3'),
(82, 4, 'yii\\db\\Command::execute', 1642812254.9545, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=6, `total_harga`=42000 WHERE `id_detail`=3'),
(83, 4, 'yii\\db\\Command::execute', 1642812744.6091, 'DEVELOPER', 'DELETE FROM `tbl_pemeriksaan_detail` WHERE `id_detail`=1'),
(84, 4, 'yii\\db\\Command::execute', 1642812936.1857, 'DEVELOPER', 'DELETE FROM `tbl_pemeriksaan_detail` WHERE `id_detail`=3'),
(85, 4, 'yii\\db\\Command::execute', 1642812941.1076, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (2, 1, 1)'),
(86, 4, 'yii\\db\\Command::execute', 1642830595.4538, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=5, `total_harga`=35000 WHERE `id_detail`=4'),
(87, 4, 'yii\\db\\Command::execute', 1642830614.3573, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (1, 1, 1)'),
(88, 4, 'yii\\db\\Command::execute', 1642830622.9325, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=2, `total_harga`=10000 WHERE `id_detail`=5'),
(89, 4, 'yii\\db\\Command::execute', 1642831051.0625, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=1'),
(90, 4, 'yii\\db\\Command::execute', 1642832694.5829, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=5 WHERE `id_obat`=2'),
(91, 4, 'yii\\db\\Command::execute', 1642832694.5897, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 1, 5, \'2022-01-22\', 1)'),
(92, 4, 'yii\\db\\Command::execute', 1642832694.5927, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=4 WHERE `id_obat`=1'),
(93, 4, 'yii\\db\\Command::execute', 1642832694.5942, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (1, 1, 2, \'2022-01-22\', 1)'),
(94, 4, 'yii\\db\\Command::execute', 1642832694.6016, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=1'),
(95, 0, 'Login', 1642835626.185, 'DEVELOPER', 'Login'),
(96, 4, 'yii\\db\\Command::execute', 1642835626.1852, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1642835626.185, \'DEVELOPER\', \'Login\')'),
(97, 4, 'yii\\db\\Command::execute', 1642841995.0437, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Satuan\', \'tbl-satuan\', 2, \'adjust\', 0, 6)'),
(98, 4, 'yii\\db\\Command::execute', 1642841998.132, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'13\''),
(99, 4, 'yii\\db\\Command::execute', 1642841998.1377, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 13)'),
(100, 4, 'yii\\db\\Command::execute', 1642841998.1394, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 13)'),
(101, 4, 'yii\\db\\Command::execute', 1642841998.1407, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 13)'),
(102, 4, 'yii\\db\\Command::execute', 1642842255.2326, 'DEVELOPER', 'INSERT INTO `tbl_satuan` (`nama_satuan`, `status`) VALUES (\'BOTOL\', 1)'),
(103, 4, 'yii\\db\\Command::execute', 1642842320.3128, 'DEVELOPER', 'UPDATE `tbl_satuan` SET `nama_satuan`=\'TABLET\', `status`=1 WHERE `id_satuan`=1'),
(104, 4, 'yii\\db\\Command::execute', 1642842329.1267, 'DEVELOPER', 'INSERT INTO `tbl_satuan` (`nama_satuan`, `status`) VALUES (\'BOTOL\', 1)'),
(105, 4, 'yii\\db\\Command::execute', 1642842585.5596, 'DEVELOPER', 'INSERT INTO `tbl_obat` (`kode_obat`, `nama_obat`, `keterangan`, `status`) VALUES (\'asdasd12312\', \'OSKADON\', \'OK\', 1)'),
(106, 4, 'yii\\db\\Command::execute', 1642842942.5687, 'DEVELOPER', 'UPDATE `tbl_obat` SET `id_satuan`=2, `status`=1 WHERE `id_obat`=3'),
(107, 4, 'yii\\db\\Command::execute', 1642843035.245, 'DEVELOPER', 'UPDATE `tbl_obat` SET `id_satuan`=2, `tanggal_kadaluarsa`=\'2022-01-28\', `status`=1 WHERE `id_obat`=3'),
(108, 4, 'yii\\db\\Command::execute', 1642843992.18, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=4, `total_harga`=28000 WHERE `id_detail`=2'),
(109, 4, 'yii\\db\\Command::execute', 1642933240.7668, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=10 WHERE `id_obat`=1'),
(110, 4, 'yii\\db\\Command::execute', 1642933240.7927, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-01-23\', 1, 1, 6)'),
(111, 4, 'yii\\db\\Command::execute', 1642936019.5332, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=10 WHERE `id_obat`=2'),
(112, 4, 'yii\\db\\Command::execute', 1642936019.5404, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `status`, `id_obat`, `qty`) VALUES (\'2022-01-23\', 1, 2, 5)'),
(113, 4, 'yii\\db\\Command::execute', 1642936081.089, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=5 WHERE `id_obat`=3'),
(114, 4, 'yii\\db\\Command::execute', 1642936081.0915, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-01-23\', 3, 1, 5)'),
(115, 4, 'yii\\db\\Command::execute', 1642978471.8219, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=10 WHERE `id_obat`=3'),
(116, 4, 'yii\\db\\Command::execute', 1642978471.8242, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `status`, `id_obat`, `qty`) VALUES (\'2022-01-24\', 1, 3, 5)'),
(117, 4, 'yii\\db\\Command::execute', 1643025449.8683, 'DEVELOPER', 'INSERT INTO `tbl_obat` (`kode_obat`, `nama_obat`, `id_satuan`, `keterangan`, `tanggal_kadaluarsa`, `status`) VALUES (\'123123\', \'PARAMEX\', 1, \'OK\', \'2022-01-27\', 1)'),
(118, 4, 'yii\\db\\Command::execute', 1643025547.1735, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=55 WHERE `id_obat`=4'),
(119, 4, 'yii\\db\\Command::execute', 1643025547.1774, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-01-24\', 4, 1, 55)'),
(120, 4, 'yii\\db\\Command::execute', 1643025580.1619, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=67 WHERE `id_obat`=4'),
(121, 4, 'yii\\db\\Command::execute', 1643025580.1652, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-01-24\', 4, 1, 12)'),
(122, 4, 'yii\\db\\Command::execute', 1643025618.8259, 'DEVELOPER', 'DELETE FROM `tbl_pemeriksaan_detail` WHERE `id_detail`=2'),
(123, 4, 'yii\\db\\Command::execute', 1643025623.5691, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (4, 2, 1)'),
(124, 4, 'yii\\db\\Command::execute', 1643027008.4691, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=1, `qty`=5, `keterangan`=\'ok\' WHERE `id_detail`=6'),
(125, 4, 'yii\\db\\Command::execute', 1643027079.066, 'DEVELOPER', 'DELETE FROM `tbl_pemeriksaan_detail` WHERE `id_detail`=6'),
(126, 4, 'yii\\db\\Command::execute', 1643027141.5565, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (1, 2, 1)'),
(127, 4, 'yii\\db\\Command::execute', 1643027156.0563, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `qty`=5, `total_harga`=25000 WHERE `id_detail`=7'),
(128, 4, 'yii\\db\\Command::execute', 1643027173.0732, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=1, `qty`=5, `keterangan`=\'Diminum 3x Sehari\' WHERE `id_detail`=7'),
(129, 4, 'yii\\db\\Command::execute', 1643027179.9224, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=5 WHERE `id_obat`=1'),
(130, 4, 'yii\\db\\Command::execute', 1643027179.9373, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (1, 2, 5, \'2022-01-24\', 1)'),
(131, 4, 'yii\\db\\Command::execute', 1643027179.9529, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=2'),
(132, 0, 'Login', 1643061580.8713, 'DEVELOPER', 'Login'),
(133, 4, 'yii\\db\\Command::execute', 1643061580.8715, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643061580.8713, \'DEVELOPER\', \'Login\')'),
(134, 4, 'yii\\db\\Command::execute', 1643062857.1747, 'DEVELOPER', 'UPDATE `tbl_obat` SET `id_satuan`=1, `produsen`=\'PHAPROS\', `harga`=5000, `status`=1 WHERE `id_obat`=1'),
(135, 4, 'yii\\db\\Command::execute', 1643063668.7433, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nik`=\'1231231231\' WHERE `id_pasien`=1'),
(136, 4, 'yii\\db\\Command::execute', 1643063692.1719, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`tanggal_daftar`, `nama_pasien`, `nik`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `jenis_pengobatan`, `status`) VALUES (\'2022-01-25\', \'Ren\', \'112321312\', \'Pria\', \'se\', \'2022-01-26\', \'asdasda\', \'12312312\', \'BPJS\', \'Aktif\')'),
(137, 4, 'yii\\db\\Command::execute', 1643065160.0737, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`tanggal_periksa`, `kode_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `tekanan_darah`, `suhu_badan`, `tindakan`, `terapi`, `diagnosa`, `saran`, `status`) VALUES (\'2022-01-25\', \'123qwe\', 1, 2, \'SAKIT HATI\', \'110\', \'23\', \'YA\', \'YA\', \'BODOH\', \'TIDUR\', 1)'),
(138, 4, 'yii\\db\\Command::execute', 1643066049.635, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (1, 3, 1)'),
(139, 4, 'yii\\db\\Command::execute', 1643066065.9937, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=1, `qty`=5, `keterangan`=\'ok\' WHERE `id_detail`=8'),
(140, 4, 'yii\\db\\Command::execute', 1643066076.6307, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=1, `qty`=5, `keterangan`=\'Diminum sebelum makan\' WHERE `id_detail`=8'),
(141, 4, 'yii\\db\\Command::execute', 1643066087.1724, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=0 WHERE `id_obat`=1'),
(142, 4, 'yii\\db\\Command::execute', 1643066087.1805, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (1, 3, 5, \'2022-01-25\', 1)'),
(143, 4, 'yii\\db\\Command::execute', 1643066087.1908, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=3'),
(144, 0, 'Login', 1643080545.163, 'DEVELOPER', 'Login'),
(145, 4, 'yii\\db\\Command::execute', 1643080545.1631, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643080545.163, \'DEVELOPER\', \'Login\')'),
(146, 4, 'yii\\db\\Command::execute', 1643080796.7944, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'5\''),
(147, 4, 'yii\\db\\Command::execute', 1643080796.7996, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 5)'),
(148, 4, 'yii\\db\\Command::execute', 1643080796.8018, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 5)'),
(149, 4, 'yii\\db\\Command::execute', 1643080796.8033, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 5)'),
(150, 4, 'yii\\db\\Command::execute', 1643092040.5413, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nik`=\'\', `status_vaksin`=\'Sudah Vaksin 2\' WHERE `id_pasien`=2'),
(151, 0, 'Login', 1643364459.5159, 'DEVELOPER', 'Login'),
(152, 4, 'yii\\db\\Command::execute', 1643364459.516, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643364459.5159, \'DEVELOPER\', \'Login\')'),
(153, 4, 'yii\\db\\Command::execute', 1643408728.8563, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`tanggal_daftar`, `nama_pasien`, `nik`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`) VALUES (\'2022-01-29\', \'Rendy\', \'123123\', \'Pria\', \'Semarang\', \'31/07/2025\', \'asd\', \'12312\', \'Sudah Vaksin 3\', \'Aktif\')'),
(154, 4, 'yii\\db\\Command::execute', 1643410269.6632, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`tanggal_daftar`, `nama_pasien`, `nik`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`) VALUES (\'2022-01-29\', \'fsdf\', \'4312312\', \'Pria\', \'123asd\', \'2022-01-11\', \'asda\', \'123123\', \'Sudah Vaksin 2\', \'Aktif\')'),
(155, 4, 'yii\\db\\Command::execute', 1643411013.424, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`) VALUES (\'asdas\', \'asdasd\', \'12e1ddsad\', \'12312312\', \'Aktif\')'),
(156, 4, 'yii\\db\\Command::execute', 1643411056.0641, 'DEVELOPER', 'UPDATE `system_role` SET `nama_role`=\'PARAMEDIC\' WHERE `id_system_role`=3'),
(157, 4, 'yii\\db\\Command::execute', 1643411066.668, 'DEVELOPER', 'INSERT INTO `system_role` (`nama_role`) VALUES (\'DOKTER\')'),
(158, 4, 'yii\\db\\Command::execute', 1643411096.3456, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=77 WHERE `id_obat`=4'),
(159, 4, 'yii\\db\\Command::execute', 1643411096.3483, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-01-29\', 4, 1, 10)'),
(160, 4, 'yii\\db\\Command::execute', 1643411122.918, 'DEVELOPER', 'INSERT INTO `tbl_obat` (`kode_obat`, `nama_obat`, `produsen`, `harga`, `id_satuan`, `keterangan`, `tanggal_kadaluarsa`, `status`) VALUES (\'123123\', \'test\', \'test\', 3444, 1, \'ok\', \'2022-01-20\', 1)'),
(161, 4, 'yii\\db\\Command::execute', 1643411129.7594, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=90 WHERE `id_obat`=5'),
(162, 4, 'yii\\db\\Command::execute', 1643411129.7615, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-01-29\', 5, 1, 90)'),
(163, 4, 'yii\\db\\Command::execute', 1643413633.9472, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`tanggal_daftar`, `nama_pasien`, `nik`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`) VALUES (\'2022-01-29\', \'12asdasdas\', \'12312\', \'Pria\', \'123asd\', \'2022-01-12\', \'asdasdas\', \'123123\', \'Sudah Vaksin 2\', \'Aktif\')'),
(164, 4, 'yii\\db\\Command::execute', 1643415545.6199, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`tanggal_periksa`, `kode_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `tekanan_darah`, `suhu_badan`, `status`) VALUES (\'2022-01-29\', \'asdasd\', 3, 3, \'asdq12\', \'12\', \'12\', 1)'),
(165, 4, 'yii\\db\\Command::execute', 1643542662.4145, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'dokter\', \'202cb962ac59075b964b07152d234b70\', \'DOKTER\', \'avatar5.png\')'),
(166, 4, 'yii\\db\\Command::execute', 1643542670.7671, 'DEVELOPER', 'DELETE FROM `user_role` WHERE `id_login`=\'3\''),
(167, 4, 'yii\\db\\Command::execute', 1643542670.7729, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (4, 3)'),
(168, 4, 'yii\\db\\Command::execute', 1643543257.2674, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'paramedic\', \'202cb962ac59075b964b07152d234b70\', \'PARAMEDIC\', \'avatar5.png\')'),
(169, 4, 'yii\\db\\Command::execute', 1643543259.6207, 'DEVELOPER', 'DELETE FROM `user_role` WHERE `id_login`=\'4\''),
(170, 4, 'yii\\db\\Command::execute', 1643543259.6261, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (3, 4)'),
(171, 4, 'yii\\db\\Command::execute', 1643544655.6345, 'DEVELOPER', 'INSERT INTO `tbl_obat` (`kode_obat`, `nama_obat`, `produsen`, `harga`, `id_satuan`, `keterangan`, `tanggal_kadaluarsa`, `status`) VALUES (\'asdasd12312\', \'123\', \'123\', 123, 1, \'123123\', \'2022-01-27\', 1)'),
(172, 4, 'yii\\db\\Command::execute', 1643546336.8732, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tanggal_daftar`) VALUES (\'Conner Schmidt\', \'2022-01-30\')'),
(173, 4, 'yii\\db\\Command::execute', 1643546336.8754, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Irving Dicki\' WHERE `id_pasien`=1'),
(174, 4, 'yii\\db\\Command::execute', 1643546336.877, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Dallin Langosh\' WHERE `id_pasien`=1'),
(175, 4, 'yii\\db\\Command::execute', 1643546336.8786, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Tevin Lang\' WHERE `id_pasien`=1'),
(176, 4, 'yii\\db\\Command::execute', 1643546336.8799, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Selmer Denesik PhD\' WHERE `id_pasien`=1'),
(177, 4, 'yii\\db\\Command::execute', 1643546336.8811, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Rolando Rutherford\' WHERE `id_pasien`=1'),
(178, 4, 'yii\\db\\Command::execute', 1643546336.8823, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Quinn Goodwin\' WHERE `id_pasien`=1'),
(179, 4, 'yii\\db\\Command::execute', 1643546336.8834, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Dr. Owen Dickens\' WHERE `id_pasien`=1'),
(180, 4, 'yii\\db\\Command::execute', 1643546336.8847, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Selmer Herzog\' WHERE `id_pasien`=1'),
(181, 4, 'yii\\db\\Command::execute', 1643546336.8859, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Tyshawn Hegmann\' WHERE `id_pasien`=1'),
(182, 4, 'yii\\db\\Command::execute', 1643546336.8871, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Rocio Gutkowski\' WHERE `id_pasien`=1'),
(183, 4, 'yii\\db\\Command::execute', 1643546367.9517, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tanggal_daftar`) VALUES (\'Jesse Goldner\', \'2022-01-30\')'),
(184, 4, 'yii\\db\\Command::execute', 1643546367.9542, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Ernie Weber\' WHERE `id_pasien`=2'),
(185, 4, 'yii\\db\\Command::execute', 1643546367.9573, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Tito Hermann Sr.\' WHERE `id_pasien`=2'),
(186, 4, 'yii\\db\\Command::execute', 1643546367.9586, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Eddie Howe DVM\' WHERE `id_pasien`=2'),
(187, 4, 'yii\\db\\Command::execute', 1643546367.9598, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Maverick Kovacek\' WHERE `id_pasien`=2'),
(188, 4, 'yii\\db\\Command::execute', 1643546367.9613, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Dr. Walton Upton III\' WHERE `id_pasien`=2'),
(189, 4, 'yii\\db\\Command::execute', 1643546367.9625, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Melvina McGlynn\' WHERE `id_pasien`=2'),
(190, 4, 'yii\\db\\Command::execute', 1643546367.9635, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Geovanny Kshlerin IV\' WHERE `id_pasien`=2'),
(191, 4, 'yii\\db\\Command::execute', 1643546367.9647, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Roman Cummings\' WHERE `id_pasien`=2'),
(192, 4, 'yii\\db\\Command::execute', 1643546367.9664, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Cory Dicki Sr.\' WHERE `id_pasien`=2'),
(193, 4, 'yii\\db\\Command::execute', 1643546367.9678, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Rashad Russel MD\' WHERE `id_pasien`=2'),
(194, 4, 'yii\\db\\Command::execute', 1643546391.9377, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tanggal_daftar`) VALUES (\'Antone Jerde DDS\', \'2022-01-30\')'),
(195, 4, 'yii\\db\\Command::execute', 1643546391.94, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Ernest Hettinger\' WHERE `id_pasien`=3'),
(196, 4, 'yii\\db\\Command::execute', 1643546391.9422, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Gavin Mann\' WHERE `id_pasien`=3'),
(197, 4, 'yii\\db\\Command::execute', 1643546391.9433, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Dr. Joaquin Kihn\' WHERE `id_pasien`=3'),
(198, 4, 'yii\\db\\Command::execute', 1643546391.944, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Dedrick Swaniawski\' WHERE `id_pasien`=3'),
(199, 4, 'yii\\db\\Command::execute', 1643546391.9446, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Ezekiel Lowe\' WHERE `id_pasien`=3'),
(200, 4, 'yii\\db\\Command::execute', 1643546391.9452, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Dr. Andrew Beatty II\' WHERE `id_pasien`=3'),
(201, 4, 'yii\\db\\Command::execute', 1643546391.9463, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Danial Friesen IV\' WHERE `id_pasien`=3'),
(202, 4, 'yii\\db\\Command::execute', 1643546391.947, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Kale Hauck V\' WHERE `id_pasien`=3'),
(203, 4, 'yii\\db\\Command::execute', 1643546391.948, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Dr. Trevor Kerluke V\' WHERE `id_pasien`=3'),
(204, 4, 'yii\\db\\Command::execute', 1643546391.9492, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Prof. Keven Toy\' WHERE `id_pasien`=3'),
(205, 4, 'yii\\db\\Command::execute', 1643546574.0949, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tanggal_daftar`) VALUES (\'Mckenzie Muller\', \'2022-01-30\')'),
(206, 4, 'yii\\db\\Command::execute', 1643546574.0972, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Gillian McKenzie\' WHERE `id_pasien`=4'),
(207, 4, 'yii\\db\\Command::execute', 1643546574.0999, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Antwan Wiegand\' WHERE `id_pasien`=4'),
(208, 4, 'yii\\db\\Command::execute', 1643546574.1012, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Percival Herzog\' WHERE `id_pasien`=4'),
(209, 4, 'yii\\db\\Command::execute', 1643546574.1022, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Arnold Schiller II\' WHERE `id_pasien`=4'),
(210, 4, 'yii\\db\\Command::execute', 1643546574.1033, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Jamal Russel\' WHERE `id_pasien`=4'),
(211, 4, 'yii\\db\\Command::execute', 1643546574.1045, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Geoffrey Kohler\' WHERE `id_pasien`=4'),
(212, 4, 'yii\\db\\Command::execute', 1643546574.1054, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Donnell Senger\' WHERE `id_pasien`=4'),
(213, 4, 'yii\\db\\Command::execute', 1643546574.1063, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Jasen Padberg III\' WHERE `id_pasien`=4'),
(214, 4, 'yii\\db\\Command::execute', 1643546574.1072, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Roy Reichert\' WHERE `id_pasien`=4'),
(215, 4, 'yii\\db\\Command::execute', 1643546574.1082, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Alexys Ziemann\' WHERE `id_pasien`=4'),
(216, 4, 'yii\\db\\Command::execute', 1643546577.7473, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tanggal_daftar`) VALUES (\'Eino Padberg III\', \'2022-01-30\')'),
(217, 4, 'yii\\db\\Command::execute', 1643546577.7494, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Arnoldo Fisher V\' WHERE `id_pasien`=5'),
(218, 4, 'yii\\db\\Command::execute', 1643546577.7514, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Casimer Ortiz\' WHERE `id_pasien`=5'),
(219, 4, 'yii\\db\\Command::execute', 1643546577.7531, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Christophe Zboncak\' WHERE `id_pasien`=5'),
(220, 4, 'yii\\db\\Command::execute', 1643546577.7545, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Jessy Auer\' WHERE `id_pasien`=5'),
(221, 4, 'yii\\db\\Command::execute', 1643546577.7553, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Keyon Walker\' WHERE `id_pasien`=5'),
(222, 4, 'yii\\db\\Command::execute', 1643546577.7567, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Sanford Tromp\' WHERE `id_pasien`=5'),
(223, 4, 'yii\\db\\Command::execute', 1643546577.7584, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Prof. Austin Feest Sr.\' WHERE `id_pasien`=5'),
(224, 4, 'yii\\db\\Command::execute', 1643546577.7598, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Destin O\\\'Keefe\' WHERE `id_pasien`=5'),
(225, 4, 'yii\\db\\Command::execute', 1643546577.7605, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Agustin Kovacek\' WHERE `id_pasien`=5'),
(226, 4, 'yii\\db\\Command::execute', 1643546577.7619, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Keanu Dietrich\' WHERE `id_pasien`=5'),
(227, 4, 'yii\\db\\Command::execute', 1643546668.735, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tanggal_daftar`) VALUES (\'Alexie Kreiger I\', \'2022-01-30\')'),
(228, 4, 'yii\\db\\Command::execute', 1643546668.7371, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Prof. Trey Grant\' WHERE `id_pasien`=6'),
(229, 4, 'yii\\db\\Command::execute', 1643546668.7389, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Wendell Morissette\' WHERE `id_pasien`=6'),
(230, 4, 'yii\\db\\Command::execute', 1643546668.7408, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Tom Veum III\' WHERE `id_pasien`=6'),
(231, 4, 'yii\\db\\Command::execute', 1643546668.7425, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Harley Conn IV\' WHERE `id_pasien`=6'),
(232, 4, 'yii\\db\\Command::execute', 1643546668.7444, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Prof. Joseph Reichel\' WHERE `id_pasien`=6'),
(233, 4, 'yii\\db\\Command::execute', 1643546668.7461, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Hester Roob I\' WHERE `id_pasien`=6'),
(234, 4, 'yii\\db\\Command::execute', 1643546668.7476, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Favian Hegmann II\' WHERE `id_pasien`=6'),
(235, 4, 'yii\\db\\Command::execute', 1643546668.7494, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Dr. Zackery McLaughlin\' WHERE `id_pasien`=6'),
(236, 4, 'yii\\db\\Command::execute', 1643546668.751, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Prof. Jeremy Roberts\' WHERE `id_pasien`=6'),
(237, 4, 'yii\\db\\Command::execute', 1643547114.5949, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `tanggal_daftar`) VALUES (\'Prof. Seamus Cole\', \'Randiville\', \'15919 Carroll Cliff Apt. 494\\nSouth Janaburgh, NM 19705\', \'2022-01-30\')'),
(238, 4, 'yii\\db\\Command::execute', 1643547114.5972, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Diego Rogahn\', `tempat_lahir`=\'Mertzport\', `alamat`=\'1864 Erick Park Apt. 339\\nSouth Niafort, MN 78023\' WHERE `id_pasien`=7'),
(239, 4, 'yii\\db\\Command::execute', 1643547114.5989, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Presley Zboncak\', `tempat_lahir`=\'Corrineberg\', `alamat`=\'50304 Monahan Land Suite 609\\nPort Rockystad, VA 16856-8134\' WHERE `id_pasien`=7'),
(240, 4, 'yii\\db\\Command::execute', 1643547114.6002, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Maximillian Stiedemann\', `tempat_lahir`=\'Watersburgh\', `alamat`=\'286 Hane Village\\nKaleyborough, DC 17731-8045\' WHERE `id_pasien`=7'),
(241, 4, 'yii\\db\\Command::execute', 1643547114.602, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Quentin Rohan\', `tempat_lahir`=\'Port Kelli\', `alamat`=\'4920 Haven Grove Apt. 242\\nNorth Vinnie, AK 58154-0437\' WHERE `id_pasien`=7'),
(242, 4, 'yii\\db\\Command::execute', 1643547114.6034, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Prof. Arch Schmidt\', `tempat_lahir`=\'New Sageshire\', `alamat`=\'94656 Marvin Ways\\nSouth Adolph, DE 41784\' WHERE `id_pasien`=7'),
(243, 4, 'yii\\db\\Command::execute', 1643547114.6045, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Diamond Kuhn\', `tempat_lahir`=\'East Kennahaven\', `alamat`=\'983 Smith Gardens\\nNorth Cathryn, ID 51797\' WHERE `id_pasien`=7'),
(244, 4, 'yii\\db\\Command::execute', 1643547114.6059, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Guillermo Trantow\', `tempat_lahir`=\'Emmanuelbury\', `alamat`=\'1771 Kemmer Prairie\\nNew Jane, ID 43686-4428\' WHERE `id_pasien`=7'),
(245, 4, 'yii\\db\\Command::execute', 1643547114.6071, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Emery Ziemann\', `tempat_lahir`=\'East Dimitri\', `alamat`=\'6372 Stanton Falls\\nNew Robbmouth, IL 98360\' WHERE `id_pasien`=7'),
(246, 4, 'yii\\db\\Command::execute', 1643547114.6082, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Mr. Walter Corwin\', `tempat_lahir`=\'Lake Bertaborough\', `alamat`=\'4343 Lura Spring Suite 003\\nMuellerchester, LA 63718\' WHERE `id_pasien`=7'),
(247, 4, 'yii\\db\\Command::execute', 1643547121.9727, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `tanggal_daftar`) VALUES (\'Tyrique Shanahan\', \'West Lottie\', \'4362 Dare Extension\\nWest Christbury, AZ 09314\', \'2022-01-30\')'),
(248, 4, 'yii\\db\\Command::execute', 1643547121.9765, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Ellis Reynolds\', `tempat_lahir`=\'South Ansley\', `alamat`=\'62181 Charlene Mountain\\nLake Myriamberg, NV 74840-9590\' WHERE `id_pasien`=8'),
(249, 4, 'yii\\db\\Command::execute', 1643547121.9785, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Prof. Quentin Mertz IV\', `tempat_lahir`=\'Whiteland\', `alamat`=\'264 Wyman Road\\nKrisstad, NE 30729-6609\' WHERE `id_pasien`=8'),
(250, 4, 'yii\\db\\Command::execute', 1643547121.9803, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Dewitt Littel\', `tempat_lahir`=\'Stoltenbergfurt\', `alamat`=\'3914 Edison Cliff\\nPalmashire, VT 93761\' WHERE `id_pasien`=8'),
(251, 4, 'yii\\db\\Command::execute', 1643547121.9819, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Lewis Stokes\', `tempat_lahir`=\'Thomaschester\', `alamat`=\'279 Napoleon Ridges\\nSouth Freeda, ME 62703-6068\' WHERE `id_pasien`=8'),
(252, 4, 'yii\\db\\Command::execute', 1643547121.9835, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Adolph Steuber\', `tempat_lahir`=\'New Nedraburgh\', `alamat`=\'345 Morar Loaf Apt. 945\\nJohannaview, TX 39931\' WHERE `id_pasien`=8'),
(253, 4, 'yii\\db\\Command::execute', 1643547121.9851, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Godfrey King\', `tempat_lahir`=\'Loismouth\', `alamat`=\'4829 Lakin Roads\\nDarefurt, OK 57473\' WHERE `id_pasien`=8'),
(254, 4, 'yii\\db\\Command::execute', 1643547121.9867, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Prof. Vern Gusikowski\', `tempat_lahir`=\'Herminiofort\', `alamat`=\'486 Schimmel Valleys\\nSouth Demondland, WA 02437-7453\' WHERE `id_pasien`=8'),
(255, 4, 'yii\\db\\Command::execute', 1643547121.9884, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Prof. Colt Gorczany\', `tempat_lahir`=\'Port Kale\', `alamat`=\'309 Nicolas Parkways Apt. 936\\nSteveland, AR 66488-3318\' WHERE `id_pasien`=8'),
(256, 4, 'yii\\db\\Command::execute', 1643547121.9903, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `nama_pasien`=\'Dr. Dejuan Mante\', `tempat_lahir`=\'Jacobimouth\', `alamat`=\'891 Simonis Route\\nO\\\'Connellfort, TN 61191\' WHERE `id_pasien`=8'),
(257, 4, 'yii\\db\\Command::execute', 1643547285.9886, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Vince Zieme\', \'Rosannaland\', \'85905 Ernser Junctions Apt. 233\\nNorth Grahamchester, WA 61421-1896\', \'1-460-585-1845 x3534\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(258, 4, 'yii\\db\\Command::execute', 1643547285.991, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Jorge Mraz\', \'Kubview\', \'57800 Tromp Mountains\\nNew Garrisonchester, TN 48282-9263\', \'(202) 971-4253\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(259, 4, 'yii\\db\\Command::execute', 1643547285.9926, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Alden Sawayn\', \'West Alainabury\', \'44545 Jennyfer Turnpike\\nVeumberg, TN 39596\', \'723.299.9664 x9297\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(260, 4, 'yii\\db\\Command::execute', 1643547285.9939, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Dr. Stephon Larson III\', \'Damienville\', \'17582 Ari Way\\nLake Keithland, MA 03601\', \'1-667-677-8790 x0667\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(261, 4, 'yii\\db\\Command::execute', 1643547285.9955, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Prof. Abraham Schiller IV\', \'East Cobytown\', \'14769 Goldner Fort Apt. 452\\nNew Baby, ND 98287\', \'530-367-1868\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(262, 4, 'yii\\db\\Command::execute', 1643547285.9973, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Mr. Jaleel Lakin MD\', \'Lorenzofort\', \'6909 Dayne Turnpike Apt. 285\\nNorth Gerson, NY 32398\', \'+1.407.662.9193\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(263, 4, 'yii\\db\\Command::execute', 1643547285.9987, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Fredy Nolan DVM\', \'North Maximohaven\', \'6981 Colten Mountain Apt. 625\\nSouth Ephraim, NY 16938\', \'449-259-5663 x4205\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(264, 4, 'yii\\db\\Command::execute', 1643547286.0001, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Johann Beatty\', \'West Rosemary\', \'516 Abernathy Point Suite 808\\nPort Kathleenborough, AK 94301\', \'479-777-1231 x0671\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(265, 4, 'yii\\db\\Command::execute', 1643547286.0015, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Cletus Mayert\', \'Howellside\', \'34220 Kiley Crest\\nJermainmouth, CO 84681-0654\', \'712.925.5969 x6406\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(266, 4, 'yii\\db\\Command::execute', 1643547286.0029, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Adolphus Hintz I\', \'Wisozkshire\', \'1416 Williamson Flat\\nEast Ernestineborough, AK 64674-0243\', \'1-416-355-3524\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(267, 4, 'yii\\db\\Command::execute', 1643547646.6235, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Grayce Kirlin\', \'dCyBQVT\', \'Minervafurt\', \'5807 Ledner Ramp\\nEast Noemiefort, AZ 73071-5045\', \'823-352-5044 x130\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(268, 4, 'yii\\db\\Command::execute', 1643547646.6255, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Camren Marquardt\', \'xDbzWpa\', \'East Casey\', \'769 Jerde Cliffs Suite 581\\nNew Kennedy, GA 96838\', \'1-871-669-8026 x465\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(269, 4, 'yii\\db\\Command::execute', 1643547646.6271, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Prof. Logan Lehner\', \'jaT7xic\', \'Donnellyborough\', \'947 Carolanne Centers\\nEast Mayfort, ND 22870-2288\', \'+1 (369) 602-6979\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(270, 4, 'yii\\db\\Command::execute', 1643547646.6284, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Darien Russel\', \'CwidSwg\', \'New Aldenville\', \'4272 Watsica Port Apt. 823\\nNew Heloisefort, MO 31844-9588\', \'(448) 248-9105\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(271, 4, 'yii\\db\\Command::execute', 1643547646.6297, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Uriel Spencer DVM\', \'SzKbg2l\', \'Johnathonshire\', \'283 Leopold Forks\\nMadilynhaven, NH 51048\', \'335-715-7646 x108\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(272, 4, 'yii\\db\\Command::execute', 1643547646.6309, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Prof. Dillan Casper II\', \'lRL9zEm\', \'East Lottie\', \'9666 Lucienne Springs\\nRitchieside, OR 78088-9081\', \'220.970.2116 x2394\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(273, 4, 'yii\\db\\Command::execute', 1643547646.632, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Savion Kirlin\', \'xdzFHnw\', \'North Mireyaland\', \'8113 Hilpert Crescent\\nKlingshire, SD 96206-9927\', \'351.416.9683 x5369\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(274, 4, 'yii\\db\\Command::execute', 1643547646.6333, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Rowan Kub\', \'UgQLyZw\', \'Lubowitzmouth\', \'6831 Juliet Loop Suite 312\\nLurlinestad, SC 08645\', \'(728) 800-9089\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(275, 4, 'yii\\db\\Command::execute', 1643547646.6349, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Jeremy Heaney\', \'4YRL5Xd\', \'Lake Amandaview\', \'85772 Cielo Pines Suite 838\\nBergnaumfurt, MN 44419-4073\', \'1-206-502-3762 x74864\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(276, 4, 'yii\\db\\Command::execute', 1643547646.6363, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Frank Shields DVM\', \'FIjJqKn\', \'Lockmanberg\', \'2315 Hickle Causeway Apt. 052\\nPort Rudyport, IA 51267-3993\', \'+1 (995) 888-8351\', \'2022-01-30\', \'2022-01-30\', \'Sudah vaksin 1\')'),
(277, 0, 'Login', 1643547829.8279, 'DOKTER', 'Login'),
(278, 4, 'yii\\db\\Command::execute', 1643547829.828, 'DOKTER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643547829.8279, \'DOKTER\', \'Login\')'),
(279, 0, 'Login', 1643547838.1649, 'ADMIN', 'Login'),
(280, 4, 'yii\\db\\Command::execute', 1643547838.165, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643547838.1649, \'ADMIN\', \'Login\')'),
(281, 4, 'yii\\db\\Command::execute', 1643548021.9853, 'ADMIN', 'INSERT INTO `tbl_pasien` (`tanggal_daftar`, `nama_pasien`, `nik`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`) VALUES (\'2022-01-30\', \'Rendy\', \'123123\', \'Pria\', \'Semarang\', \'1985-07-18\', \'Simongan\', \'09867867856\', \'Sudah Vaksin 3\', \'Aktif\')'),
(282, 4, 'yii\\db\\Command::execute', 1643548359.3162, 'ADMIN', 'INSERT INTO `tbl_obat` (`kode_obat`, `nama_obat`, `produsen`, `harga`, `id_satuan`, `keterangan`, `tanggal_kadaluarsa`, `status`) VALUES (\'123123\', \'Paracetamol\', \'Phapros\', 123123, 1, \'Diminum Setelah Makan\', \'2022-02-05\', 1)'),
(283, 4, 'yii\\db\\Command::execute', 1643548431.7394, 'ADMIN', 'UPDATE `tbl_obat` SET `stok_now`=10 WHERE `id_obat`=1'),
(284, 4, 'yii\\db\\Command::execute', 1643548431.7412, 'ADMIN', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-01-30\', 1, 1, 10)'),
(285, 4, 'yii\\db\\Command::execute', 1643549251.0798, 'ADMIN', 'UPDATE `tbl_obat` SET `id_satuan`=1, `tanggal_kadaluarsa`=\'2022-03-04\', `harga`=123123, `status`=1 WHERE `id_obat`=1'),
(286, 0, 'Login', 1643557480.8235, 'DEVELOPER', 'Login'),
(287, 4, 'yii\\db\\Command::execute', 1643557480.8237, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643557480.8235, \'DEVELOPER\', \'Login\')'),
(288, 4, 'yii\\db\\Command::execute', 1643581591.3603, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'General Beer\', \'2474384\', \'North Riverland\', \'5378 Reynolds Grove\\nTannerview, WV 46030\', \'+1.748.310.5296\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(289, 4, 'yii\\db\\Command::execute', 1643581591.3724, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Mr. Garrison Baumbach\', \'4966958\', \'New Arnoldton\', \'72893 Brown Viaduct\\nLake Karson, KY 54344\', \'+17603422291\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(290, 4, 'yii\\db\\Command::execute', 1643581591.3741, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Buster Boehm\', \'5796348\', \'Port Brendon\', \'32207 Allison Grove Suite 473\\nAlethafort, PA 99914\', \'1-264-406-9083\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(291, 4, 'yii\\db\\Command::execute', 1643581591.3763, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Nico Bashirian\', \'8721288\', \'Schinnerport\', \'5921 Era Cove\\nSouth Halliemouth, MO 19610-0747\', \'(261) 463-0475\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(292, 4, 'yii\\db\\Command::execute', 1643581591.3777, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Abe Kris\', \'7953917\', \'Reillyborough\', \'8130 Marvin Wall Suite 162\\nSouth Hiramland, SC 14833-2786\', \'1-357-421-5032 x98202\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(293, 4, 'yii\\db\\Command::execute', 1643581591.3791, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Zander Barrows\', \'9914668\', \'East Forrestfurt\', \'95939 Sheldon Estate\\nNew Sedrick, NH 46872-0737\', \'1-638-270-1789\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(294, 4, 'yii\\db\\Command::execute', 1643581591.3806, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Dominic Dare\', \'5626121\', \'Lake Brownburgh\', \'352 Donnie Mews Apt. 435\\nBusterstad, DE 02370-4090\', \'(993) 776-2994\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(295, 4, 'yii\\db\\Command::execute', 1643581591.3819, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Jerod Jaskolski\', \'2828478\', \'Masonchester\', \'930 Orin Light\\nWest Orlandoton, IN 47987-2755\', \'+1-823-244-4050\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(296, 4, 'yii\\db\\Command::execute', 1643581591.383, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Cole Beier\', \'6868134\', \'Hermanchester\', \'82832 Tre Groves Suite 656\\nCasperburgh, WY 75956\', \'+14875979640\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(297, 4, 'yii\\db\\Command::execute', 1643581591.3842, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Estevan Brakus\', \'7893679\', \'Langworthville\', \'87588 Dillan Curve\\nBeckerville, CT 51730\', \'731-875-8674 x3328\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(298, 4, 'yii\\db\\Command::execute', 1643582224.7679, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`) VALUES (\'Dr. Ahmad\', \'Umum\', \'Jl. Ahmad yani\', \'024531284\', \'Aktif\')'),
(299, 4, 'yii\\db\\Command::execute', 1643582335.9885, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`tanggal_periksa`, `kode_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `tekanan_darah`, `suhu_badan`, `status`) VALUES (\'2022-01-31\', \'RM-123123\', 1, 1, \'Pusing 7 keliling\', \'120\', \'37\', 1)'),
(300, 4, 'yii\\db\\Command::execute', 1643582419.8288, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`tanggal_periksa`, `kode_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `tekanan_darah`, `suhu_badan`) VALUES (\'2022-01-31\', \'RM-09885\', 4, 1, \'Sesak nafas\', \'110\', \'35\')'),
(301, 0, 'Login', 1643583524.1107, 'DOKTER', 'Login'),
(302, 4, 'yii\\db\\Command::execute', 1643583524.1109, 'DOKTER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643583524.1107, \'DOKTER\', \'Login\')'),
(303, 4, 'yii\\db\\Command::execute', 1643583554.7313, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'9\''),
(304, 4, 'yii\\db\\Command::execute', 1643583554.7375, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 9)'),
(305, 4, 'yii\\db\\Command::execute', 1643583554.7397, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 9)'),
(306, 4, 'yii\\db\\Command::execute', 1643583554.7415, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 9)'),
(307, 4, 'yii\\db\\Command::execute', 1643583554.7428, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 9)'),
(308, 4, 'yii\\db\\Command::execute', 1643583567.7579, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'11\''),
(309, 4, 'yii\\db\\Command::execute', 1643583567.7666, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 11)'),
(310, 4, 'yii\\db\\Command::execute', 1643583567.7686, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 11)'),
(311, 4, 'yii\\db\\Command::execute', 1643583567.7701, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 11)'),
(312, 4, 'yii\\db\\Command::execute', 1643583567.7716, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 11)'),
(313, 4, 'yii\\db\\Command::execute', 1643583572.6313, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'12\''),
(314, 4, 'yii\\db\\Command::execute', 1643583572.6371, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 12)'),
(315, 4, 'yii\\db\\Command::execute', 1643583572.6387, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 12)'),
(316, 4, 'yii\\db\\Command::execute', 1643583572.6398, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 12)'),
(317, 4, 'yii\\db\\Command::execute', 1643583572.641, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 12)'),
(318, 4, 'yii\\db\\Command::execute', 1643583766.06, 'DEVELOPER', 'DELETE FROM `user_role` WHERE `id_login`=\'1\''),
(319, 4, 'yii\\db\\Command::execute', 1643583766.0657, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 1)'),
(320, 4, 'yii\\db\\Command::execute', 1643583766.067, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (4, 1)'),
(321, 4, 'yii\\db\\Command::execute', 1643583766.0675, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (3, 1)'),
(322, 4, 'yii\\db\\Command::execute', 1643583766.0679, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (2, 1)'),
(323, 4, 'yii\\db\\Command::execute', 1643583781.0169, 'DEVELOPER', 'DELETE FROM `user_role` WHERE `id_login`=\'2\''),
(324, 4, 'yii\\db\\Command::execute', 1643583781.0267, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (4, 2)'),
(325, 4, 'yii\\db\\Command::execute', 1643583781.0275, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (3, 2)'),
(326, 4, 'yii\\db\\Command::execute', 1643583781.028, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (2, 2)'),
(327, 0, 'Login', 1643583802.2174, 'DEVELOPER', 'Login'),
(328, 4, 'yii\\db\\Command::execute', 1643583802.2175, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643583802.2174, \'DEVELOPER\', \'Login\')'),
(329, 4, 'yii\\db\\Command::execute', 1643584871.279, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `diagnosa`=\'Mengidap Stresss\', `tindakan`=\'Istirahat\', `terapi`=\'Pijat kepala\', `saran`=\'Makan dan minum teratur\' WHERE `id_pemeriksaan`=2'),
(330, 4, 'yii\\db\\Command::execute', 1643584920.8418, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `status`=1 WHERE `id_pemeriksaan`=2'),
(331, 4, 'yii\\db\\Command::execute', 1643585210.8619, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=1, `status`=1 WHERE `id_pemeriksaan`=2'),
(332, 4, 'yii\\db\\Command::execute', 1643585340.1566, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (1, 2, 1)'),
(333, 4, 'yii\\db\\Command::execute', 1643585550.6005, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=1, `qty`=5, `keterangan`=\'3 x sehari\\r\\njangan makan buah  !\' WHERE `id_detail`=1'),
(334, 4, 'yii\\db\\Command::execute', 1643585690.7215, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=6 WHERE `id_obat`=1'),
(335, 4, 'yii\\db\\Command::execute', 1643585690.7282, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (1, 2, 5, \'2022-01-31\', 1)'),
(336, 4, 'yii\\db\\Command::execute', 1643585690.7345, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=2'),
(337, 4, 'yii\\db\\Command::execute', 1643586762.6203, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `status`=1 WHERE `id_pemeriksaan`=1'),
(338, 0, 'Login', 1643587541.8712, 'PARAMEDIC', 'Login'),
(339, 4, 'yii\\db\\Command::execute', 1643587541.8713, 'PARAMEDIC', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643587541.8712, \'PARAMEDIC\', \'Login\')'),
(340, 4, 'yii\\db\\Command::execute', 1643589714.1267, 'DOKTER', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=3, `diagnosa`=\'Demam\', `tindakan`=\'Rujukan ke Rs. Kariadi\', `terapi`=\'Minum Susu\', `saran`=\'Izin kerja . bed rest 5 hari\' WHERE `id_pemeriksaan`=1'),
(341, 0, 'Login', 1643596029.4082, 'DEVELOPER', 'Login'),
(342, 4, 'yii\\db\\Command::execute', 1643596029.4083, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643596029.4082, \'DEVELOPER\', \'Login\')'),
(343, 4, 'yii\\db\\Command::execute', 1643596050.4277, 'DEVELOPER', 'UPDATE `login` SET `foto`=NULL WHERE `id_login`=2'),
(344, 4, 'yii\\db\\Command::execute', 1643596058.5368, 'DEVELOPER', 'DELETE FROM `user_role` WHERE `id_login`=\'2\''),
(345, 4, 'yii\\db\\Command::execute', 1643596058.5381, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 2)'),
(346, 4, 'yii\\db\\Command::execute', 1643596058.5386, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (4, 2)'),
(347, 4, 'yii\\db\\Command::execute', 1643596058.539, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (3, 2)'),
(348, 4, 'yii\\db\\Command::execute', 1643596058.5393, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (2, 2)'),
(349, 0, 'Login', 1643596699.616, 'ADMIN', 'Login'),
(350, 4, 'yii\\db\\Command::execute', 1643596699.6162, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643596699.616, \'ADMIN\', \'Login\')'),
(351, 4, 'yii\\db\\Command::execute', 1643596713.1851, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Jace Flatley\', \'7982133\', \'East Leifport\', \'83895 Amara Circles Suite 347\\nDougberg, AL 23454\', \'+1-415-921-0820\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(352, 4, 'yii\\db\\Command::execute', 1643596713.1878, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Damion Rogahn\', \'5931946\', \'Haleymouth\', \'601 Rodriguez Motorway\\nShanontown, OK 10699-9526\', \'(969) 392-5944 x58932\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(353, 4, 'yii\\db\\Command::execute', 1643596713.1888, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Bill Towne\', \'4582333\', \'New Arjuntown\', \'22555 Hansen Burgs Suite 537\\nNorth Deltafurt, NY 65021\', \'+1.260.696.9136\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(354, 4, 'yii\\db\\Command::execute', 1643596713.1897, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Norval Eichmann\', \'1122445\', \'Sipesview\', \'384 Kathryne Village Suite 314\\nKassulkeborough, OR 65650\', \'+1.310.931.8339\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(355, 4, 'yii\\db\\Command::execute', 1643596713.1914, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Lukas Kshlerin DVM\', \'8699863\', \'Port Althea\', \'6221 Mohr Prairie Suite 290\\nPort Emileberg, ND 04957\', \'1-573-687-9273 x98995\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(356, 4, 'yii\\db\\Command::execute', 1643596713.1923, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Mr. Jordon Kilback\', \'1411583\', \'Muhammadville\', \'8504 Becker Pines Suite 886\\nLethaport, RI 05870-8256\', \'915.874.5413 x22962\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(357, 4, 'yii\\db\\Command::execute', 1643596713.1933, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Giles Runolfsdottir\', \'7998157\', \'New Sashaville\', \'9230 Mueller Crescent\\nSouth Delphia, CO 95202-0628\', \'+1 (337) 527-0705\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(358, 4, 'yii\\db\\Command::execute', 1643596713.1942, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Laverna Pacocha\', \'3627318\', \'East Colin\', \'241 Karina Island\\nNorth Hillardborough, AR 97285-0242\', \'278-291-9318 x911\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(359, 4, 'yii\\db\\Command::execute', 1643596713.195, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Dr. Benjamin Grant DDS\', \'5594796\', \'South Rodrickton\', \'335 Clemens Fords\\nGradystad, SD 89816-2826\', \'1-792-592-8708\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(360, 4, 'yii\\db\\Command::execute', 1643596713.196, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Carol Dach\', \'2451118\', \'West Calista\', \'297 Karlee Divide Suite 068\\nSouth Corbinside, AZ 25322-3792\', \'(261) 940-7570 x660\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(361, 4, 'yii\\db\\Command::execute', 1643596723.2081, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Harvey Jakubowski MD\', \'1775734\', \'West Yasmin\', \'2607 Hauck Estate\\nValeriefurt, CA 73152-2310\', \'1-997-926-9158\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(362, 4, 'yii\\db\\Command::execute', 1643596723.2096, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Pete Wyman\', \'6424874\', \'Stoltenbergchester\', \'84735 Wilderman Station Apt. 221\\nPfefferville, AL 44155-7442\', \'1-841-348-4926 x86524\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(363, 4, 'yii\\db\\Command::execute', 1643596723.2108, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Tyrese Hills\', \'7869144\', \'Lizethchester\', \'2636 Kayleigh Port\\nMaggioview, MN 00592\', \'1-439-976-3370 x25832\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(364, 4, 'yii\\db\\Command::execute', 1643596723.2117, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Monroe Wolff\', \'5149645\', \'Cronamouth\', \'8666 Stroman Square Suite 027\\nEast Delphaton, ID 61373-3519\', \'+1-964-692-7069\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(365, 4, 'yii\\db\\Command::execute', 1643596723.2127, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Eldon Keeling\', \'8978395\', \'Gottliebside\', \'49148 Margaretta Stream Apt. 714\\nEast Daphney, MT 80618\', \'+1.579.759.8102\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(366, 4, 'yii\\db\\Command::execute', 1643596723.2136, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Trent Hegmann\', \'2349241\', \'North Valentine\', \'467 Jackson Circles\\nNew Kevintown, WY 06586\', \'(227) 629-5216 x135\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(367, 4, 'yii\\db\\Command::execute', 1643596723.2145, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Noe Krajcik\', \'6973931\', \'East Margaritaland\', \'3241 Schulist Plains Apt. 018\\nWest Katherineton, TX 65239\', \'406.227.7337\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(368, 4, 'yii\\db\\Command::execute', 1643596723.2153, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Oliver Farrell\', \'2243132\', \'Fadeltown\', \'7518 Sasha Inlet Apt. 916\\nWittingmouth, IA 27286-0251\', \'1-431-972-2753 x61962\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(369, 4, 'yii\\db\\Command::execute', 1643596723.2162, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Devante Beer II\', \'7774364\', \'Bergnaumville\', \'6852 McKenzie Lake\\nPort Michaelachester, CO 08502-5024\', \'1-709-549-4807 x16100\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(370, 4, 'yii\\db\\Command::execute', 1643596723.2171, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Xander Barton\', \'1257178\', \'Generalmouth\', \'127 Jarred Roads\\nTyreseview, FL 62244\', \'+16769281664\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(371, 4, 'yii\\db\\Command::execute', 1643596725.2786, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Roel Wuckert\', \'9474435\', \'Zboncakview\', \'8610 Nicolas Flat\\nSouth Ernestoton, MT 85388-0108\', \'(259) 948-1278\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(372, 4, 'yii\\db\\Command::execute', 1643596725.2798, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Jermain Blanda\', \'3218444\', \'West Isobel\', \'41692 Gustave Mount Suite 470\\nWizaberg, RI 16553\', \'1-301-450-9093\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(373, 4, 'yii\\db\\Command::execute', 1643596725.2807, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Maximillian Carter DDS\', \'4174127\', \'Lake Granville\', \'19762 Nader Estates\\nRaquelchester, MN 57738\', \'238-260-2622\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(374, 4, 'yii\\db\\Command::execute', 1643596725.2815, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Mateo Quitzon\', \'9594623\', \'North Emmettfort\', \'311 Michaela Square Suite 712\\nOctaviafort, CA 55037-2714\', \'1-582-333-9184 x4340\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(375, 4, 'yii\\db\\Command::execute', 1643596725.2824, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Johnpaul Ledner\', \'1146959\', \'Maurineburgh\', \'11863 Bradtke Trail\\nPatrickfurt, IA 11453\', \'963.462.7225 x5070\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(376, 4, 'yii\\db\\Command::execute', 1643596725.2833, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Howard Buckridge\', \'2241126\', \'Port Coreneburgh\', \'88515 Madilyn Field\\nBoyleland, NV 98994\', \'+1-506-278-4135\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(377, 4, 'yii\\db\\Command::execute', 1643596725.2841, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Thaddeus Bahringer II\', \'8562197\', \'Torphychester\', \'83131 Torphy Drive\\nSteuberstad, KY 77288-8288\', \'+1-668-420-8022\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(378, 4, 'yii\\db\\Command::execute', 1643596725.285, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Major Quitzon\', \'1277153\', \'North Simeon\', \'4229 Thora Hollow\\nKuhlmanshire, NE 32329\', \'1-650-854-6944 x47342\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(379, 4, 'yii\\db\\Command::execute', 1643596725.2858, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Casimir McGlynn\', \'5191922\', \'Port Maybell\', \'88247 Maida Freeway Suite 569\\nEast Penelopeton, SD 54208-3198\', \'(627) 602-8540 x222\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(380, 4, 'yii\\db\\Command::execute', 1643596725.2866, 'ADMIN', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `tempat_lahir`, `alamat`, `telp`, `tanggal_lahir`, `tanggal_daftar`, `status_vaksin`) VALUES (\'Mr. Richie Baumbach IV\', \'3356313\', \'Lake Lynn\', \'3033 Dale Island Apt. 296\\nNorth Horacioshire, IN 64529\', \'+1 (381) 981-4667\', \'2022-01-31\', \'2022-01-31\', \'Sudah vaksin 1\')'),
(381, 0, 'Login', 1643599464.4327, 'ADMIN', 'Login'),
(382, 4, 'yii\\db\\Command::execute', 1643599464.4328, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643599464.4327, \'ADMIN\', \'Login\')'),
(383, 0, 'Login', 1643599665.7394, 'DEVELOPER', 'Login'),
(384, 4, 'yii\\db\\Command::execute', 1643599665.7395, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643599665.7394, \'DEVELOPER\', \'Login\')'),
(385, 4, 'yii\\db\\Command::execute', 1643599825.2162, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`tanggal_periksa`, `kode_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `tekanan_darah`, `suhu_badan`) VALUES (\'2022-01-31\', \'3\', 5, 1, \'e\', \'55\', \'55\')'),
(386, 4, 'yii\\db\\Command::execute', 1643599840.2558, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `status`=1 WHERE `id_pemeriksaan`=3'),
(387, 4, 'yii\\db\\Command::execute', 1643599861.0493, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (1, 3, 1)'),
(388, 4, 'yii\\db\\Command::execute', 1643599876.8772, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=1, `diagnosa`=\'oke\', `tindakan`=\'OKE\', `terapi`=\'OW\', `saran`=\'FF\' WHERE `id_pemeriksaan`=3'),
(389, 4, 'yii\\db\\Command::execute', 1643599895.0525, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (1, 3, 0, \'2022-01-31\', 1)'),
(390, 4, 'yii\\db\\Command::execute', 1643599895.0555, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=3'),
(391, 4, 'yii\\db\\Command::execute', 1643599949.1933, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=453 WHERE `id_obat`=1'),
(392, 4, 'yii\\db\\Command::execute', 1643599949.1954, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-01-31\', 1, 1, 444)'),
(393, 4, 'yii\\db\\Command::execute', 1643599964.8144, 'DEVELOPER', 'UPDATE `tbl_obat` SET `id_satuan`=1, `tanggal_kadaluarsa`=\'2022-02-23\', `harga`=123123, `limit_warning`=10, `status`=1 WHERE `id_obat`=1'),
(394, 0, 'Login', 1643609626.1756, 'ADMIN', 'Login'),
(395, 4, 'yii\\db\\Command::execute', 1643609626.1757, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643609626.1756, \'ADMIN\', \'Login\')'),
(396, 4, 'yii\\db\\Command::execute', 1643612069.6104, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `tekanan_darah`, `suhu_badan`) VALUES (\'RM31012022004\', \'2022-01-31\', 2, 1, \'Sakit punggung\', \'110\', \'34\')'),
(397, 0, 'Login', 1643612092.284, 'DEVELOPER', 'Login'),
(398, 4, 'yii\\db\\Command::execute', 1643612092.2841, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643612092.284, \'DEVELOPER\', \'Login\')'),
(399, 4, 'yii\\db\\Command::execute', 1643616391.9717, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`tanggal_daftar`, `nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`) VALUES (\'2022-01-31\', \'Rendy\', \'431231\', \'ADM HR\', \'Staff\', \'Pria\', \'Semarang\', \'2022-01-05\', \'Ngemplak Simongan\', \'0567853452\', \'Sudah Vaksin 2\', \'Aktif\')'),
(400, 4, 'yii\\db\\Command::execute', 1643617698.2261, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'2022-01-09\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-01-31\')'),
(401, 4, 'yii\\db\\Command::execute', 1643617698.41, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643617698.2261, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'2022-01-09\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-01-31\\\')\')'),
(402, 4, 'yii\\db\\Command::execute', 1643617801.0384, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'2022-01-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-01-31\')'),
(403, 4, 'yii\\db\\Command::execute', 1643617801.0502, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643617801.0384, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'2022-01-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-01-31\\\')\')'),
(404, 4, 'yii\\db\\Command::execute', 1643618236.7251, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'2022-01-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-01-31\')'),
(405, 4, 'yii\\db\\Command::execute', 1643618236.741, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643618236.7251, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'2022-01-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-01-31\\\')\')'),
(406, 4, 'yii\\db\\Command::execute', 1643618507.0404, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'2022-01-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-01-31\')'),
(407, 4, 'yii\\db\\Command::execute', 1643618507.0571, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643618507.0404, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'2022-01-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-01-31\\\')\')'),
(408, 4, 'yii\\db\\Command::execute', 1643618632.4637, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'2022-01-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-01-31\')'),
(409, 4, 'yii\\db\\Command::execute', 1643618632.4809, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643618632.4637, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'2022-01-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-01-31\\\')\')'),
(410, 4, 'yii\\db\\Command::execute', 1643619349.9465, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'2022-01-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-01-31\')'),
(411, 4, 'yii\\db\\Command::execute', 1643619349.9592, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643619349.9465, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'2022-01-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-01-31\\\')\')'),
(412, 4, 'yii\\db\\Command::execute', 1643619381.0483, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'1995-11-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-01-31\')'),
(413, 4, 'yii\\db\\Command::execute', 1643619381.0626, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643619381.0483, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'1995-11-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-01-31\\\')\')'),
(414, 4, 'yii\\db\\Command::execute', 1643620357.9084, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'1995-11-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-01-31\')'),
(415, 4, 'yii\\db\\Command::execute', 1643620357.9251, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643620357.9084, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'1995-11-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-01-31\\\')\')'),
(416, 4, 'yii\\db\\Command::execute', 1643620847.8297, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'1995-11-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-01-31\')'),
(417, 4, 'yii\\db\\Command::execute', 1643620847.8465, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643620847.8297, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'1995-11-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-01-31\\\')\')'),
(418, 0, 'Login', 1643621813.3918, 'DEVELOPER', 'Login'),
(419, 4, 'yii\\db\\Command::execute', 1643621813.3919, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643621813.3918, \'DEVELOPER\', \'Login\')'),
(420, 4, 'yii\\db\\Command::execute', 1643621841.7884, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'1995-11-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-01-31\')'),
(421, 4, 'yii\\db\\Command::execute', 1643621841.7924, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643621841.7884, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'1995-11-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-01-31\\\')\')'),
(422, 0, 'Login', 1643682036.0568, 'DEVELOPER', 'Login'),
(423, 4, 'yii\\db\\Command::execute', 1643682036.0569, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643682036.0568, \'DEVELOPER\', \'Login\')'),
(424, 0, 'Login', 1643726221.6358, 'DEVELOPER', 'Login'),
(425, 4, 'yii\\db\\Command::execute', 1643726221.6359, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643726221.6358, \'DEVELOPER\', \'Login\')'),
(426, 4, 'yii\\db\\Command::execute', 1643726251.1036, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `departemen`=\'ADM Fin.& Acct.\', `jabatan`=\'Staff\', `alamat`=\'5921 Era Cove\\r\\nSouth Halliemouth, MO 19610-0747\', `status_vaksin`=\'Sudah Vaksin 2\' WHERE `id_pasien`=4'),
(427, 4, 'yii\\db\\Command::execute', 1643726278.2284, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `departemen`=\'ADM HR\', `jabatan`=\'Staff\', `alamat`=\'5378 Reynolds Grove\\r\\nTannerview, WV 46030\', `status_vaksin`=\'Sudah Vaksin 3\' WHERE `id_pasien`=1'),
(428, 4, 'yii\\db\\Command::execute', 1643726405.7454, 'DEVELOPER', 'UPDATE `tbl_pasien` SET `departemen`=\'ADM Gen.Mgt\', `jabatan`=\'Staff\', `alamat`=\'8130 Marvin Wall Suite 162\\r\\nSouth Hiramland, SC 14833-2786\', `status_vaksin`=\'Sudah Vaksin 2\' WHERE `id_pasien`=5'),
(429, 0, 'Login', 1643728535.7155, 'DEVELOPER', 'Login'),
(430, 4, 'yii\\db\\Command::execute', 1643728535.7156, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643728535.7155, \'DEVELOPER\', \'Login\')'),
(431, 4, 'yii\\db\\Command::execute', 1643728809.6321, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'1995-11-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-02-01\')'),
(432, 4, 'yii\\db\\Command::execute', 1643728809.6428, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643728809.6321, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'1995-11-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-02-01\\\')\')'),
(433, 4, 'yii\\db\\Command::execute', 1643728845.1869, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'1995-11-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-02-01\')'),
(434, 4, 'yii\\db\\Command::execute', 1643728845.2001, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\r\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1643728845.1869, \'DEVELOPER\', \'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\\\'Rena\\\', \\\'123123123\\\', \\\'MFG Production\\\', \\\'Staff\\\', \\\'Pria\\\', \\\'Semarang\\\', \\\'1995-11-10\\\', \\\'Manyaran\\\', \\\'096785123\\\', \\\'Sudah Vaksin 2\\\', \\\'Aktif\\\', \\\'2022-02-01\\\')\')'),
(435, 4, 'yii\\db\\Command::execute', 1643729610.571, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Rena\', \'123123123\', \'MFG Production\', \'Staff\', \'Pria\', \'Semarang\', \'1995-11-10\', \'Manyaran\', \'096785123\', \'Sudah Vaksin 2\', \'Aktif\', \'2022-02-01\')'),
(436, 4, 'yii\\db\\Command::execute', 1643729610.5732, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(437, 4, 'yii\\db\\Command::execute', 1643729610.5744, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(438, 4, 'yii\\db\\Command::execute', 1643729610.5759, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(439, 4, 'yii\\db\\Command::execute', 1643729610.5769, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(440, 4, 'yii\\db\\Command::execute', 1643729610.578, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(441, 4, 'yii\\db\\Command::execute', 1643729610.5789, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(442, 4, 'yii\\db\\Command::execute', 1643729610.5799, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(443, 4, 'yii\\db\\Command::execute', 1643729610.5808, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(444, 4, 'yii\\db\\Command::execute', 1643729610.5819, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(445, 4, 'yii\\db\\Command::execute', 1643729610.5834, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(446, 4, 'yii\\db\\Command::execute', 1643729610.5847, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(447, 4, 'yii\\db\\Command::execute', 1643729610.5856, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(448, 4, 'yii\\db\\Command::execute', 1643729610.5864, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(449, 4, 'yii\\db\\Command::execute', 1643729610.5872, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(450, 4, 'yii\\db\\Command::execute', 1643729610.5879, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(451, 4, 'yii\\db\\Command::execute', 1643729610.5887, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(452, 4, 'yii\\db\\Command::execute', 1643729610.5897, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(453, 4, 'yii\\db\\Command::execute', 1643729610.5907, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(454, 4, 'yii\\db\\Command::execute', 1643729610.5917, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(455, 4, 'yii\\db\\Command::execute', 1643729610.5927, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(456, 4, 'yii\\db\\Command::execute', 1643729610.5936, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(457, 4, 'yii\\db\\Command::execute', 1643729610.5944, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(458, 4, 'yii\\db\\Command::execute', 1643729610.5954, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(459, 4, 'yii\\db\\Command::execute', 1643730302.4135, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Nama Pasien\', \'NIK\', \'Departemen\', \'Jabatan\', \'Jenis Kelamin\', \'Tempat Lahir\', \'1970-01-01\', \'Alamat\', \'Telp\', \'Status Vaksin\', \'Status Pasien\', \'2022-02-01\')'),
(460, 4, 'yii\\db\\Command::execute', 1643730302.4154, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Ray\', \'123123\', \'MFG Purchasing\', \'R&D QC/QA\', \'Wanita \', \'Semarang\', \'1998-12-12\', \'Semarang\', \'096785124\', \'Sudah Vaksin 3\', \'Aktif\', \'2022-02-01\')'),
(461, 4, 'yii\\db\\Command::execute', 1643730302.4166, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Dea\', \'312312\', \'R&D QC/QA\', \'R&D QC/QA\', \'Wanita \', \'Semarang\', \'1999-07-23\', \'Ngemplak\', \'096785125\', \'Sudah Vaksin 3\', \'Aktif\', \'2022-02-01\')'),
(462, 4, 'yii\\db\\Command::execute', 1643730302.4176, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(463, 4, 'yii\\db\\Command::execute', 1643730302.4186, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(464, 4, 'yii\\db\\Command::execute', 1643730302.4195, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(465, 4, 'yii\\db\\Command::execute', 1643730302.4205, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(466, 4, 'yii\\db\\Command::execute', 1643730302.4218, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(467, 4, 'yii\\db\\Command::execute', 1643730302.4229, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(468, 4, 'yii\\db\\Command::execute', 1643730302.4239, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(469, 4, 'yii\\db\\Command::execute', 1643730302.4249, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(470, 4, 'yii\\db\\Command::execute', 1643730302.4259, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(471, 4, 'yii\\db\\Command::execute', 1643730302.4269, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(472, 4, 'yii\\db\\Command::execute', 1643730302.4278, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(473, 4, 'yii\\db\\Command::execute', 1643730302.4289, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(474, 4, 'yii\\db\\Command::execute', 1643730302.4299, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(475, 4, 'yii\\db\\Command::execute', 1643730302.4309, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(476, 4, 'yii\\db\\Command::execute', 1643730302.4318, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(477, 4, 'yii\\db\\Command::execute', 1643730302.4328, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(478, 4, 'yii\\db\\Command::execute', 1643730302.434, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(479, 4, 'yii\\db\\Command::execute', 1643730302.4353, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(480, 4, 'yii\\db\\Command::execute', 1643730302.4365, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(481, 4, 'yii\\db\\Command::execute', 1643730302.4375, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(482, 4, 'yii\\db\\Command::execute', 1643730302.4386, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(483, 4, 'yii\\db\\Command::execute', 1643730302.4395, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(484, 4, 'yii\\db\\Command::execute', 1643730302.4406, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'\', \'\', \'\', \'\', \'\', \'\', \'1970-01-01\', \'\', \'\', \'\', \'\', \'2022-02-01\')'),
(485, 4, 'yii\\db\\Command::execute', 1643730447.8761, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Nama Pasien\', \'NIK\', \'Departemen\', \'Jabatan\', \'Jenis Kelamin\', \'Tempat Lahir\', \'1970-01-01\', \'Alamat\', \'Telp\', \'Status Vaksin\', \'Status Pasien\', \'2022-02-01\')'),
(486, 4, 'yii\\db\\Command::execute', 1643730447.8785, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Ray\', \'123123\', \'MFG Purchasing\', \'R&D QC/QA\', \'Wanita \', \'Semarang\', \'1998-12-12\', \'Semarang\', \'096785124\', \'Sudah Vaksin 3\', \'Aktif\', \'2022-02-01\')'),
(487, 4, 'yii\\db\\Command::execute', 1643730447.88, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Dea\', \'312312\', \'R&D QC/QA\', \'R&D QC/QA\', \'Wanita \', \'Semarang\', \'1999-07-23\', \'Ngemplak\', \'096785125\', \'Sudah Vaksin 3\', \'Aktif\', \'2022-02-01\')'),
(488, 4, 'yii\\db\\Command::execute', 1643730484.2235, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Ray\', \'123123\', \'MFG Purchasing\', \'R&D QC/QA\', \'Wanita \', \'Semarang\', \'1998-12-12\', \'Semarang\', \'096785124\', \'Sudah Vaksin 3\', \'Aktif\', \'2022-02-01\')'),
(489, 4, 'yii\\db\\Command::execute', 1643730484.2255, 'DEVELOPER', 'INSERT INTO `tbl_pasien` (`nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`, `tanggal_daftar`) VALUES (\'Dea\', \'312312\', \'R&D QC/QA\', \'R&D QC/QA\', \'Wanita \', \'Semarang\', \'1999-07-23\', \'Ngemplak\', \'096785125\', \'Sudah Vaksin 3\', \'Aktif\', \'2022-02-01\')'),
(490, 4, 'yii\\db\\Command::execute', 1643929726.4791, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'ren\', \'202cb962ac59075b964b07152d234b70\', \'ren\', \'1643929726_PARAMEDIC.png\')'),
(491, 4, 'yii\\db\\Command::execute', 1643929755.153, 'DEVELOPER', 'DELETE FROM `login` WHERE `id_login`=5'),
(492, 4, 'yii\\db\\Command::execute', 1643929788.5351, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'rendy\', \'202cb962ac59075b964b07152d234b70\', \'ren\', \'1643929788_DOKTER.png\')'),
(493, 4, 'yii\\db\\Command::execute', 1643929812.2111, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'test\', \'202cb962ac59075b964b07152d234b70\', \'test\', \'avatar5.png\')'),
(494, 4, 'yii\\db\\Command::execute', 1643930277.0303, 'DEVELOPER', 'UPDATE `login` SET `foto`=\'1643930277_xlarge.png\' WHERE `id_login`=7'),
(495, 4, 'yii\\db\\Command::execute', 1643930310.8643, 'DEVELOPER', 'DELETE FROM `login` WHERE `id_login`=7'),
(496, 4, 'yii\\db\\Command::execute', 1643930314.1085, 'DEVELOPER', 'DELETE FROM `login` WHERE `id_login`=6'),
(497, 0, 'Login', 1643930980.9951, 'PARAMEDIC', 'Login'),
(498, 4, 'yii\\db\\Command::execute', 1643930980.9952, 'PARAMEDIC', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643930980.9951, \'PARAMEDIC\', \'Login\')'),
(499, 4, 'yii\\db\\Command::execute', 1643930993.6896, 'PARAMEDIC', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=4, `diagnosa`=\'ok\', `tindakan`=\'ok\', `terapi`=\'ok\', `saran`=\'ok\', `status`=1 WHERE `id_pemeriksaan`=4'),
(500, 4, 'yii\\db\\Command::execute', 1643931169.5139, 'PARAMEDIC', 'UPDATE `tbl_pemeriksaan` SET `status`=2 WHERE `id_pemeriksaan`=4'),
(501, 4, 'yii\\db\\Command::execute', 1643931180.6465, 'PARAMEDIC', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (1, 4, 1)'),
(502, 4, 'yii\\db\\Command::execute', 1643931188.0744, 'PARAMEDIC', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (2, 4, 1)'),
(503, 4, 'yii\\db\\Command::execute', 1643931206.0354, 'PARAMEDIC', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=1, `qty`=5, `keterangan`=\'\' WHERE `id_detail`=3'),
(504, 4, 'yii\\db\\Command::execute', 1643931212.4534, 'PARAMEDIC', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=2, `qty`=6, `keterangan`=\'\' WHERE `id_detail`=4'),
(505, 4, 'yii\\db\\Command::execute', 1643931749.6017, 'PARAMEDIC', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `tekanan_darah`, `suhu_badan`) VALUES (\'RM04022022001\', \'2022-02-04\', 2, 1, \'QWE\', \'\', \'\')'),
(506, 0, 'Login', 1643964335.4252, 'DEVELOPER', 'Login'),
(507, 4, 'yii\\db\\Command::execute', 1643964335.4254, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643964335.4252, \'DEVELOPER\', \'Login\')'),
(508, 4, 'yii\\db\\Command::execute', 1643964411.4672, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'By Paramedis\', \'by-paramedis\', 9, \'database\', 0, 1)'),
(509, 4, 'yii\\db\\Command::execute', 1643964418.2155, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'14\''),
(510, 4, 'yii\\db\\Command::execute', 1643964418.2208, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 14)'),
(511, 4, 'yii\\db\\Command::execute', 1643964418.2237, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 14)'),
(512, 4, 'yii\\db\\Command::execute', 1643964418.2255, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 14)'),
(513, 4, 'yii\\db\\Command::execute', 1643964486.2609, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'By Dokter\', \'by-dokter\', 9, \'user-md\', 0, 2)'),
(514, 4, 'yii\\db\\Command::execute', 1643964490.1554, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'15\''),
(515, 4, 'yii\\db\\Command::execute', 1643964490.1608, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 15)'),
(516, 4, 'yii\\db\\Command::execute', 1643964490.1638, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 15)'),
(517, 4, 'yii\\db\\Command::execute', 1643964490.1661, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 15)'),
(518, 0, 'Login', 1643964557.9395, 'DEVELOPER', 'Login'),
(519, 4, 'yii\\db\\Command::execute', 1643964557.9397, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643964557.9395, \'DEVELOPER\', \'Login\')'),
(520, 4, 'yii\\db\\Command::execute', 1643964625.1179, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=9, `no_urut`=1, `icon`=\'user-nurse\', `status`=0 WHERE `id_menu`=14'),
(521, 4, 'yii\\db\\Command::execute', 1643964789.0634, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Pemeriksaan\', \'tbl-pemeriksaan\', 9, \'plus-circle\', 0, 3)'),
(522, 4, 'yii\\db\\Command::execute', 1643964794.987, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'16\''),
(523, 4, 'yii\\db\\Command::execute', 1643964794.9924, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 16)'),
(524, 4, 'yii\\db\\Command::execute', 1643964794.9968, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 16)'),
(525, 4, 'yii\\db\\Command::execute', 1643964794.9987, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 16)'),
(526, 4, 'yii\\db\\Command::execute', 1643964795.0007, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 16)'),
(527, 4, 'yii\\db\\Command::execute', 1643964808.827, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=3, `status`=0 WHERE `id_menu`=9'),
(528, 0, 'Login', 1643966543.7832, 'DEVELOPER', 'Login'),
(529, 4, 'yii\\db\\Command::execute', 1643966543.7833, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643966543.7832, \'DEVELOPER\', \'Login\')'),
(530, 4, 'yii\\db\\Command::execute', 1643967584.9636, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`) VALUES (\'RM04022022001\', \'2022-02-04\', 1, 1, \'Pusing\', \'120/30\', \'120/20\', \'32\')'),
(531, 4, 'yii\\db\\Command::execute', 1643968419.6615, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=1, `diagnosa`=\'ok\', `tindakan`=\'ok\', `terapi`=\'ok\', `saran`=\'ok\', `status`=2 WHERE `id_pemeriksaan`=1'),
(532, 4, 'yii\\db\\Command::execute', 1643968457.9337, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (1, 1, 1)'),
(533, 4, 'yii\\db\\Command::execute', 1643968466.0888, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=1, `qty`=2, `keterangan`=\'\' WHERE `id_detail`=1'),
(534, 4, 'yii\\db\\Command::execute', 1643968469.7732, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (3, 1, 1)'),
(535, 4, 'yii\\db\\Command::execute', 1643968474.987, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=3, `qty`=2, `keterangan`=\'\' WHERE `id_detail`=2'),
(536, 4, 'yii\\db\\Command::execute', 1643968478.4032, 'DEVELOPER', 'DELETE FROM `tbl_pemeriksaan_detail` WHERE `id_detail`=2'),
(537, 4, 'yii\\db\\Command::execute', 1643968966.1111, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`) VALUES (\'20220204002\', \'2022-02-04\', 2, 1, \'ok\', \'120/30\', \'120/20\', \'32\')'),
(538, 4, 'yii\\db\\Command::execute', 1643968969.1368, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `status`=1 WHERE `id_pemeriksaan`=2'),
(539, 0, 'Login', 1643968984.0548, 'DOKTER', 'Login'),
(540, 4, 'yii\\db\\Command::execute', 1643968984.055, 'DOKTER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643968984.0548, \'DOKTER\', \'Login\')'),
(541, 0, 'Login', 1643969059.9724, 'PARAMEDIC', 'Login'),
(542, 4, 'yii\\db\\Command::execute', 1643969059.9725, 'PARAMEDIC', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643969059.9724, \'PARAMEDIC\', \'Login\')'),
(543, 4, 'yii\\db\\Command::execute', 1643969094.0571, 'PARAMEDIC', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=4, `status`=1 WHERE `id_pemeriksaan`=2'),
(544, 0, 'Login', 1643969110.661, 'DOKTER', 'Login'),
(545, 4, 'yii\\db\\Command::execute', 1643969110.6612, 'DOKTER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643969110.661, \'DOKTER\', \'Login\')'),
(546, 4, 'yii\\db\\Command::execute', 1643969477.3653, 'DOKTER', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=3, `diagnosa`=\'ok\', `tindakan`=\'ok\', `terapi`=\'ok\', `saran`=\'ok\', `status`=2 WHERE `id_pemeriksaan`=2'),
(547, 4, 'yii\\db\\Command::execute', 1643969646.1704, 'DOKTER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (2, 2, 1)'),
(548, 4, 'yii\\db\\Command::execute', 1643969651.9916, 'DOKTER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=2, `qty`=2, `keterangan`=\'\' WHERE `id_detail`=3'),
(549, 4, 'yii\\db\\Command::execute', 1643969656.1924, 'DOKTER', 'UPDATE `tbl_obat` SET `stok_now`=10 WHERE `id_obat`=2'),
(550, 4, 'yii\\db\\Command::execute', 1643969656.2004, 'DOKTER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 2, 2, \'2022-02-04\', 1)'),
(551, 4, 'yii\\db\\Command::execute', 1643969656.2085, 'DOKTER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=2'),
(552, 4, 'yii\\db\\Command::execute', 1643969905.3698, 'DOKTER', 'UPDATE `tbl_obat` SET `stok_now`=455 WHERE `id_obat`=1'),
(553, 4, 'yii\\db\\Command::execute', 1643969905.3718, 'DOKTER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-02-04\', 1, 1, 2)'),
(554, 4, 'yii\\db\\Command::execute', 1643969952.3914, 'DOKTER', 'UPDATE `tbl_obat` SET `stok_now`=15 WHERE `id_obat`=3'),
(555, 4, 'yii\\db\\Command::execute', 1643969952.394, 'DOKTER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `status`, `id_obat`, `qty`) VALUES (\'2022-02-04\', 1, 3, 2)'),
(556, 0, 'Login', 1643970484.194, 'DEVELOPER', 'Login'),
(557, 4, 'yii\\db\\Command::execute', 1643970484.1941, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643970484.194, \'DEVELOPER\', \'Login\')'),
(558, 4, 'yii\\db\\Command::execute', 1643970571.0191, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'SURAT KELUAR\', \'surat-keluar\', 0, \'envelope-open-text\', 0, 6)'),
(559, 4, 'yii\\db\\Command::execute', 1643970575.0289, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'17\''),
(560, 4, 'yii\\db\\Command::execute', 1643970575.0336, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 17)'),
(561, 4, 'yii\\db\\Command::execute', 1643970575.0368, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 17)'),
(562, 4, 'yii\\db\\Command::execute', 1643970575.0433, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 17)'),
(563, 4, 'yii\\db\\Command::execute', 1643970575.0453, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 17)'),
(564, 4, 'yii\\db\\Command::execute', 1643970617.3687, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'17\''),
(565, 4, 'yii\\db\\Command::execute', 1643970617.3775, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 17)'),
(566, 4, 'yii\\db\\Command::execute', 1643970617.3794, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 17)'),
(567, 4, 'yii\\db\\Command::execute', 1643970617.3808, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 17)'),
(568, 4, 'yii\\db\\Command::execute', 1643970617.382, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 17)'),
(569, 4, 'yii\\db\\Command::execute', 1643970657.5213, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Surat Keterangan\', \'surat-keluar\', 17, \'paper-plane\', 0, 1)'),
(570, 4, 'yii\\db\\Command::execute', 1643970660.8747, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'18\''),
(571, 4, 'yii\\db\\Command::execute', 1643970660.8791, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 18)'),
(572, 4, 'yii\\db\\Command::execute', 1643970660.8808, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 18)'),
(573, 4, 'yii\\db\\Command::execute', 1643970660.8824, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 18)'),
(574, 4, 'yii\\db\\Command::execute', 1643970660.8862, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 18)'),
(575, 4, 'yii\\db\\Command::execute', 1643970671.0484, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=5, `status`=0 WHERE `id_menu`=17'),
(576, 4, 'yii\\db\\Command::execute', 1643973077.0079, 'DEVELOPER', 'INSERT INTO `surat_keluar` (`id_pemeriksaan`, `status`, `jenis_surat`, `jenis_dispensasi`, `start_date`, `end_date`, `catatan`) VALUES (2, 1, \'Dispensasi\', \'Karena Cidera\', \'2022-02-01\', \'2022-03-23\', \'Istirahat hingga benar\\\" pulih\')'),
(577, 4, 'yii\\db\\Command::execute', 1643974198.2469, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (2, 1, 1)'),
(578, 4, 'yii\\db\\Command::execute', 1643974203.6707, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=2, `qty`=6, `keterangan`=\'\' WHERE `id_detail`=4'),
(579, 4, 'yii\\db\\Command::execute', 1643974207.6992, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=453 WHERE `id_obat`=1'),
(580, 4, 'yii\\db\\Command::execute', 1643974207.7179, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (1, 1, 2, \'2022-02-04\', 1)'),
(581, 4, 'yii\\db\\Command::execute', 1643974207.7219, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=4 WHERE `id_obat`=2'),
(582, 4, 'yii\\db\\Command::execute', 1643974207.7234, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 1, 6, \'2022-02-04\', 1)'),
(583, 4, 'yii\\db\\Command::execute', 1643974207.731, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=1'),
(584, 4, 'yii\\db\\Command::execute', 1643980688.7201, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Setting Tujuan\', \'surat-tertuju\', 0, \'user-tie\', 0, 7)'),
(585, 4, 'yii\\db\\Command::execute', 1643980704.8479, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=17, `no_urut`=7, `status`=0 WHERE `id_menu`=19'),
(586, 4, 'yii\\db\\Command::execute', 1643980710.6649, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'19\''),
(587, 4, 'yii\\db\\Command::execute', 1643980710.7098, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 19)'),
(588, 4, 'yii\\db\\Command::execute', 1643980710.7659, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 19)'),
(589, 4, 'yii\\db\\Command::execute', 1643980710.7735, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 19)'),
(590, 4, 'yii\\db\\Command::execute', 1643980710.7805, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 19)'),
(591, 4, 'yii\\db\\Command::execute', 1643981151.08, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'19\''),
(592, 4, 'yii\\db\\Command::execute', 1643981151.0936, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 19)'),
(593, 4, 'yii\\db\\Command::execute', 1643981151.0956, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 19)'),
(594, 4, 'yii\\db\\Command::execute', 1643981151.0975, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 19)'),
(595, 4, 'yii\\db\\Command::execute', 1643981151.0991, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 19)'),
(596, 0, 'Login', 1643985550.2347, 'PARAMEDIC', 'Login'),
(597, 4, 'yii\\db\\Command::execute', 1643985550.235, 'PARAMEDIC', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643985550.2347, \'PARAMEDIC\', \'Login\')'),
(598, 4, 'yii\\db\\Command::execute', 1643986444.9946, 'PARAMEDIC', 'INSERT INTO `surat_tertuju` (`status`, `nama`, `email`) VALUES (1, \'cek \', \'qwe12edqws\')'),
(599, 4, 'yii\\db\\Command::execute', 1643986533.8267, 'PARAMEDIC', 'UPDATE `surat_tertuju` SET `nama`=\'Dept. Head a\' WHERE `id`=1'),
(600, 4, 'yii\\db\\Command::execute', 1643986543.5744, 'PARAMEDIC', 'UPDATE `surat_tertuju` SET `nama`=\'Dept. Head\' WHERE `id`=1'),
(601, 4, 'yii\\db\\Command::execute', 1643986621.9561, 'PARAMEDIC', 'DELETE FROM `surat_tertuju` WHERE `id`=4'),
(602, 0, 'Login', 1643986722.4122, 'DEVELOPER', 'Login'),
(603, 4, 'yii\\db\\Command::execute', 1643986722.4124, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643986722.4122, \'DEVELOPER\', \'Login\')'),
(604, 4, 'yii\\db\\Command::execute', 1643986744.0746, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'2\''),
(605, 4, 'yii\\db\\Command::execute', 1643986744.0833, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 2)'),
(606, 4, 'yii\\db\\Command::execute', 1643986744.0872, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 2)'),
(607, 4, 'yii\\db\\Command::execute', 1643986744.0927, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 2)'),
(608, 4, 'yii\\db\\Command::execute', 1643986744.0946, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 2)'),
(609, 4, 'yii\\db\\Command::execute', 1643986751.7218, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'7\''),
(610, 4, 'yii\\db\\Command::execute', 1643986751.7297, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 7)'),
(611, 4, 'yii\\db\\Command::execute', 1643986751.7321, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (4, 7)'),
(612, 4, 'yii\\db\\Command::execute', 1643986751.7342, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 7)'),
(613, 4, 'yii\\db\\Command::execute', 1643986751.7362, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 7)'),
(614, 0, 'Login', 1643986761.4601, 'DEVELOPER', 'Login'),
(615, 4, 'yii\\db\\Command::execute', 1643986761.4603, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643986761.4601, \'DEVELOPER\', \'Login\')'),
(616, 0, 'Login', 1643986771.3036, 'PARAMEDIC', 'Login'),
(617, 4, 'yii\\db\\Command::execute', 1643986771.3037, 'PARAMEDIC', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643986771.3036, \'PARAMEDIC\', \'Login\')'),
(618, 0, 'Login', 1643986799.9248, 'DEVELOPER', 'Login'),
(619, 4, 'yii\\db\\Command::execute', 1643986799.9249, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643986799.9248, \'DEVELOPER\', \'Login\')'),
(620, 4, 'yii\\db\\Command::execute', 1643986898.9142, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'5\''),
(621, 4, 'yii\\db\\Command::execute', 1643986898.9233, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 5)'),
(622, 4, 'yii\\db\\Command::execute', 1643986898.9257, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 5)'),
(623, 0, 'Login', 1643986923.7105, 'PARAMEDIC', 'Login'),
(624, 4, 'yii\\db\\Command::execute', 1643986923.7106, 'PARAMEDIC', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643986923.7105, \'PARAMEDIC\', \'Login\')'),
(625, 0, 'Login', 1643991486.1669, 'DOKTER', 'Login'),
(626, 4, 'yii\\db\\Command::execute', 1643991486.1671, 'DOKTER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643991486.1669, \'DOKTER\', \'Login\')'),
(627, 0, 'Login', 1643992288.0366, 'DEVELOPER', 'Login'),
(628, 4, 'yii\\db\\Command::execute', 1643992288.0368, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1643992288.0366, \'DEVELOPER\', \'Login\')'),
(629, 4, 'yii\\db\\Command::execute', 1643992308.4678, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Setting\', \'setting\', 2, \'cogs\', 0, 7)'),
(630, 4, 'yii\\db\\Command::execute', 1643992312.7466, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'20\''),
(631, 4, 'yii\\db\\Command::execute', 1643992312.7526, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 20)'),
(632, 4, 'yii\\db\\Command::execute', 1643992312.7546, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 20)'),
(633, 4, 'yii\\db\\Command::execute', 1643992407.1855, 'DEVELOPER', 'UPDATE `setting` SET `password`=\'UkVOSllOVVNBMDA=\', `foto`=\'1598935038_GSS.png\' WHERE `id_setting`=1'),
(634, 4, 'yii\\db\\Command::execute', 1644101919.9073, 'DEVELOPER', 'INSERT INTO `tbl_satuan` (`nama_satuan`) VALUES (\'PCS\')'),
(635, 4, 'yii\\db\\Command::execute', 1644102168.1161, 'DEVELOPER', 'INSERT INTO `tbl_obat` (`id_satuan`, `kode_obat`, `nama_obat`, `produsen`, `harga`, `keterangan`, `tanggal_kadaluarsa`, `limit_warning`, `status`) VALUES (1, \'5673\', \'BETADINE\', \'KIMIA FARMA\', 10000, \'OBAT LUKA\', \'2022-11-11\', 10, 1)'),
(636, 4, 'yii\\db\\Command::execute', 1644102168.1189, 'DEVELOPER', 'INSERT INTO `tbl_obat` (`id_satuan`, `kode_obat`, `nama_obat`, `produsen`, `harga`, `keterangan`, `tanggal_kadaluarsa`, `limit_warning`, `status`) VALUES (3, \'4312\', \'PARAMEX\', \'PHAPROS\', 5000, \'OBAT HALAL\', \'2025-10-09\', 10, 1)'),
(637, 4, 'yii\\db\\Command::execute', 1644104421.3278, 'DEVELOPER', 'UPDATE `tbl_dokter` SET `ttd_digital`=\'1644104421_DOKTER.png\' WHERE `id_dokter`=1'),
(638, 4, 'yii\\db\\Command::execute', 1644104941.6278, 'DEVELOPER', 'UPDATE `tbl_dokter` SET `ttd_digital`=\'1644104941_ttd.png\' WHERE `id_dokter`=1'),
(639, 4, 'yii\\db\\Command::execute', 1644107501.8255, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`) VALUES (\'20220206001\', \'2022-02-06\', 1, 1, \'asd\', \'12\', \'12\', \'12\')'),
(640, 4, 'yii\\db\\Command::execute', 1644107505.206, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=1, `status`=1 WHERE `id_pemeriksaan`=3'),
(641, 4, 'yii\\db\\Command::execute', 1644107629.8276, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`) VALUES (\'20220206002\', \'2022-02-06\', 2, 1, \'asd\', \'11\', \'11\', \'11\')'),
(642, 4, 'yii\\db\\Command::execute', 1644107635.1518, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=1, `diagnosa`=\'as\', `tindakan`=\'as\', `terapi`=\'as\', `saran`=\'as\', `status`=2 WHERE `id_pemeriksaan`=4'),
(643, 4, 'yii\\db\\Command::execute', 1644107939.3413, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `id_pemeriksaan`, `status`) VALUES (1, 3, 1)'),
(644, 4, 'yii\\db\\Command::execute', 1644108272.48, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (2, \'ok\', 3, 3, 1)'),
(645, 4, 'yii\\db\\Command::execute', 1644108391.5408, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat`=2, `qty`=4 WHERE `id_detail`=6'),
(646, 4, 'yii\\db\\Command::execute', 1644108884.5137, 'DEVELOPER', 'UPDATE `setting` SET `nama`=\'PT. INDOFOOD .\', `password`=\'VWtWT1NsbE9WVk5CTURBPQ==\' WHERE `id_setting`=1'),
(647, 4, 'yii\\db\\Command::execute', 1644110938.487, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `diagnosa`=\'Gejala awal infeksi virus Corona atau COVID-19 bisa menyerupai gejala flu, yaitu demam, pilek, batuk kering, sakit tenggorokan, dan sakit kepala. Setelah itu, gejala dapat hilang dan sembuh atau malah memberat.\', `tindakan`=\'Gejala awal infeksi virus Corona atau COVID-19 bisa menyerupai gejala flu, yaitu demam, pilek, batuk kering, sakit tenggorokan, dan sakit kepala. Setelah itu, gejala dapat hilang dan sembuh atau malah memberat.\', `terapi`=\'Gejala awal infeksi virus Corona atau COVID-19 bisa menyerupai gejala flu, yaitu demam, pilek, batuk kering, sakit tenggorokan, dan sakit kepala. Setelah itu, gejala dapat hilang dan sembuh atau malah memberat.\', `saran`=\'Gejala awal infeksi virus Corona atau COVID-19 bisa menyerupai gejala flu, yaitu demam, pilek, batuk kering, sakit tenggorokan, dan sakit kepala. Setelah itu, gejala dapat hilang dan sembuh atau malah memberat.\' WHERE `id_pemeriksaan`=3'),
(648, 4, 'yii\\db\\Command::execute', 1644110943.712, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (1, 3, 0, \'2022-02-06\', 1)'),
(649, 4, 'yii\\db\\Command::execute', 1644110943.7171, 'DEVELOPER', 'UPDATE `tbl_obat` SET `stok_now`=0 WHERE `id_obat`=2'),
(650, 4, 'yii\\db\\Command::execute', 1644110943.7189, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 3, 4, \'2022-02-06\', 1)'),
(651, 4, 'yii\\db\\Command::execute', 1644110943.8464, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=3'),
(652, 4, 'yii\\db\\Command::execute', 1644111257.1349, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`) VALUES (\'cek\', \'sdfsdf\', \'sdfsdf\', \'23423423\', \'Aktif\')'),
(653, 4, 'yii\\db\\Command::execute', 1644111398.3828, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\'asd\', \'qwdas\', \'dqwasd\', \'123123\', \'Aktif\', \'empty.jpg\')'),
(654, 0, 'Login', 1644124743.5066, 'ADMIN', 'Login'),
(655, 4, 'yii\\db\\Command::execute', 1644124743.5067, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644124743.5066, \'ADMIN\', \'Login\')'),
(656, 0, 'Login', 1644124770.5643, 'DEVELOPER', 'Login'),
(657, 4, 'yii\\db\\Command::execute', 1644124770.5644, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644124770.5643, \'DEVELOPER\', \'Login\')'),
(658, 4, 'yii\\db\\Command::execute', 1644124781.2273, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'3\''),
(659, 4, 'yii\\db\\Command::execute', 1644124781.2434, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 3)'),
(660, 4, 'yii\\db\\Command::execute', 1644124792.6894, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'20\''),
(661, 4, 'yii\\db\\Command::execute', 1644124792.6971, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 20)'),
(662, 4, 'yii\\db\\Command::execute', 1644124811.6029, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'16\''),
(663, 4, 'yii\\db\\Command::execute', 1644124811.6149, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 16)'),
(664, 4, 'yii\\db\\Command::execute', 1644124811.6176, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 16)'),
(665, 4, 'yii\\db\\Command::execute', 1644124811.6192, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 16)'),
(666, 4, 'yii\\db\\Command::execute', 1644124851.049, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'17\''),
(667, 4, 'yii\\db\\Command::execute', 1644124851.0586, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 17)'),
(668, 0, 'Login', 1644124865.2863, 'ADMIN', 'Login'),
(669, 4, 'yii\\db\\Command::execute', 1644124865.2864, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644124865.2863, \'ADMIN\', \'Login\')'),
(670, 0, 'Login', 1644124894.6482, 'DEVELOPER', 'Login'),
(671, 4, 'yii\\db\\Command::execute', 1644124894.6483, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644124894.6482, \'DEVELOPER\', \'Login\')'),
(672, 4, 'yii\\db\\Command::execute', 1644124918.7516, 'DEVELOPER', 'DELETE FROM `user_role` WHERE `id_login`=\'2\''),
(673, 4, 'yii\\db\\Command::execute', 1644124918.76, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (4, 2)'),
(674, 4, 'yii\\db\\Command::execute', 1644124918.7618, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (3, 2)'),
(675, 4, 'yii\\db\\Command::execute', 1644124918.7623, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (2, 2)'),
(676, 0, 'Login', 1644124929.3414, 'ADMIN', 'Login'),
(677, 4, 'yii\\db\\Command::execute', 1644124929.3415, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644124929.3414, \'ADMIN\', \'Login\')'),
(678, 4, 'yii\\db\\Command::execute', 1644126610.9414, 'ADMIN', 'INSERT INTO `tbl_pasien` (`tanggal_daftar`, `nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`) VALUES (\'2022-02-06\', \'asdasd\', \'1231\', \'ADM Gen.Mgt\', \'asda\', \'Pria\', \'asdasd\', \'2022-02-23\', \'asdas\', \'12312\', \'Sudah Vaksin 3\', \'Aktif\')'),
(679, 4, 'yii\\db\\Command::execute', 1644126687.3425, 'ADMIN', 'INSERT INTO `tbl_pasien` (`tanggal_daftar`, `nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`) VALUES (\'2022-02-06\', \'asdas\', \'123\', \'ADM Gen.Mgt\', \'asasd\', \'Wanita\', \'asdas\', \'2022-03-02\', \'dasdasd\', \'123123\', \'Sudah Vaksin 2\', \'Aktif\')'),
(680, 4, 'yii\\db\\Command::execute', 1644126765.4549, 'ADMIN', 'INSERT INTO `tbl_pasien` (`tanggal_daftar`, `nama_pasien`, `nik`, `departemen`, `jabatan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `status_vaksin`, `status`) VALUES (\'2022-02-06\', \'Rendy\', \'11111111\', \'ADM Gen.Mgt\', \'Staff\', \'Wanita\', \'Semarang\', \'2022-02-15\', \'Saemarang\', \'12212312\', \'Sudah Vaksin 2\', \'Aktif\')'),
(681, 0, 'Login', 1644126926.1873, 'PARAMEDIC', 'Login'),
(682, 4, 'yii\\db\\Command::execute', 1644126926.1874, 'PARAMEDIC', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644126926.1873, \'PARAMEDIC\', \'Login\')'),
(683, 0, 'Login', 1644126936.3438, 'DEVELOPER', 'Login'),
(684, 4, 'yii\\db\\Command::execute', 1644126936.344, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644126936.3438, \'DEVELOPER\', \'Login\')'),
(685, 4, 'yii\\db\\Command::execute', 1644127333.7652, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\'081232323\', \'202cb962ac59075b964b07152d234b70\', \'Dr. Rendy, Spk\', NULL, \'avatar5.png\')'),
(686, 4, 'yii\\db\\Command::execute', 1644127333.7816, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644127333.7652, \'DEVELOPER\', \'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\\\'081232323\\\', \\\'202cb962ac59075b964b07152d234b70\\\', \\\'Dr. Rendy, Spk\\\', NULL, \\\'avatar5.png\\\')\')'),
(687, 4, 'yii\\db\\Command::execute', 1644127343.6964, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\'081232323\', \'202cb962ac59075b964b07152d234b70\', \'Dr. Rendy, Spk\', NULL, \'avatar5.png\')'),
(688, 4, 'yii\\db\\Command::execute', 1644127343.8823, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644127343.6964, \'DEVELOPER\', \'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\\\'081232323\\\', \\\'202cb962ac59075b964b07152d234b70\\\', \\\'Dr. Rendy, Spk\\\', NULL, \\\'avatar5.png\\\')\')'),
(689, 4, 'yii\\db\\Command::execute', 1644127501.7244, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\'Dr. Rendy, Spk\', \'Kelamin\', \'Semarang\', \'081232323\', \'Aktif\', \'empty.jpg\')');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(690, 4, 'yii\\db\\Command::execute', 1644127501.7272, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\'081232323\', \'202cb962ac59075b964b07152d234b70\', \'Dr. Rendy, Spk\', 4, \'avatar5.png\')'),
(691, 4, 'yii\\db\\Command::execute', 1644127501.7582, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644127501.7244, \'DEVELOPER\', \'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\\\'Dr. Rendy, Spk\\\', \\\'Kelamin\\\', \\\'Semarang\\\', \\\'081232323\\\', \\\'Aktif\\\', \\\'empty.jpg\\\')\')'),
(692, 4, 'yii\\db\\Command::execute', 1644127501.7608, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644127501.7272, \'DEVELOPER\', \'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\\\'081232323\\\', \\\'202cb962ac59075b964b07152d234b70\\\', \\\'Dr. Rendy, Spk\\\', 4, \\\'avatar5.png\\\')\')'),
(693, 4, 'yii\\db\\Command::execute', 1644127550.8206, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\'Dr. Rendy, Spk\', \'Kelamin\', \'Semarang\', \'081234234\', \'Aktif\', \'empty.jpg\')'),
(694, 4, 'yii\\db\\Command::execute', 1644127550.8252, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\'081234234\', \'202cb962ac59075b964b07152d234b70\', \'Dr. Rendy, Spk\', 5, \'avatar5.png\')'),
(695, 4, 'yii\\db\\Command::execute', 1644127550.8486, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644127550.8206, \'DEVELOPER\', \'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\\\'Dr. Rendy, Spk\\\', \\\'Kelamin\\\', \\\'Semarang\\\', \\\'081234234\\\', \\\'Aktif\\\', \\\'empty.jpg\\\')\')'),
(696, 4, 'yii\\db\\Command::execute', 1644127550.8502, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644127550.8252, \'DEVELOPER\', \'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\\\'081234234\\\', \\\'202cb962ac59075b964b07152d234b70\\\', \\\'Dr. Rendy, Spk\\\', 5, \\\'avatar5.png\\\')\')'),
(697, 4, 'yii\\db\\Command::execute', 1644127562.1278, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\'Dr. Rendy, Spk\', \'Kelamin\', \'Semarang\', \'081234234\', \'Aktif\', \'empty.jpg\')'),
(698, 4, 'yii\\db\\Command::execute', 1644127562.1318, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\'081234234\', \'202cb962ac59075b964b07152d234b70\', \'Dr. Rendy, Spk\', 6, \'avatar5.png\')'),
(699, 4, 'yii\\db\\Command::execute', 1644127562.1534, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644127562.1278, \'DEVELOPER\', \'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\\\'Dr. Rendy, Spk\\\', \\\'Kelamin\\\', \\\'Semarang\\\', \\\'081234234\\\', \\\'Aktif\\\', \\\'empty.jpg\\\')\')'),
(700, 4, 'yii\\db\\Command::execute', 1644127562.1549, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644127562.1318, \'DEVELOPER\', \'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\\\'081234234\\\', \\\'202cb962ac59075b964b07152d234b70\\\', \\\'Dr. Rendy, Spk\\\', 6, \\\'avatar5.png\\\')\')'),
(701, 4, 'yii\\db\\Command::execute', 1644128212.9934, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\'Dr. Rendy, Spk\', \'Kelamin\', \'asdsa\', \'12312\', \'Aktif\', \'empty.jpg\')'),
(702, 4, 'yii\\db\\Command::execute', 1644128213.0038, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\'asdasd\', \'4297f44b13955235245b2497399d7a93\', \'Dr. Rendy, Spk\', 7, \'avatar5.png\')'),
(703, 4, 'yii\\db\\Command::execute', 1644128213.0282, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (4, 10)'),
(704, 4, 'yii\\db\\Command::execute', 1644128279.4259, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\'Dr. Rendy, Spk\', \'Kelamin\', \'Semarang\', \'09123123123\', \'Aktif\', \'empty.jpg\')'),
(705, 4, 'yii\\db\\Command::execute', 1644128279.429, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\'rendy\', \'6c14da109e294d1e8155be8aa4b1ce8e\', \'Dr. Rendy, Spk\', 8, \'avatar5.png\')'),
(706, 4, 'yii\\db\\Command::execute', 1644128279.4525, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (4, 11)'),
(707, 0, 'Login', 1644128374.0833, 'DEVELOPER', 'Login'),
(708, 4, 'yii\\db\\Command::execute', 1644128374.0835, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644128374.0833, \'DEVELOPER\', \'Login\')'),
(709, 4, 'yii\\db\\Command::execute', 1644128401.2568, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\'Rendy\', \'Kelamin\', \'asdasd\', \'123weqwed\', \'Aktif\', \'empty.jpg\')'),
(710, 4, 'yii\\db\\Command::execute', 1644128411.1008, 'DEVELOPER', 'INSERT INTO `tbl_dokter` (`nama_dokter`, `specialist`, `alamat`, `telp`, `status`, `ttd_digital`) VALUES (\'Rendy\', \'Kelamin\', \'asdasd\', \'123weqwed\', \'Aktif\', \'empty.jpg\')'),
(711, 4, 'yii\\db\\Command::execute', 1644128411.1036, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_dokter`, `foto`) VALUES (\'ren\', \'202cb962ac59075b964b07152d234b70\', \'Rendy\', 10, \'avatar5.png\')'),
(712, 4, 'yii\\db\\Command::execute', 1644128411.1231, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (4, 12)'),
(713, 0, 'Login', 1644128432.4352, 'Rendy', 'Login'),
(714, 4, 'yii\\db\\Command::execute', 1644128432.4353, 'Rendy', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644128432.4352, \'Rendy\', \'Login\')'),
(715, 0, 'Login', 1644128607.9662, 'Dr. Rendy', 'Login'),
(716, 4, 'yii\\db\\Command::execute', 1644128607.9663, 'Dr. Rendy', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644128607.9662, \'Dr. Rendy\', \'Login\')'),
(717, 0, 'Login', 1644128753.7346, 'Dr. Rendy', 'Login'),
(718, 4, 'yii\\db\\Command::execute', 1644128753.7348, 'Dr. Rendy', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644128753.7346, \'Dr. Rendy\', \'Login\')'),
(719, 4, 'yii\\db\\Command::execute', 1644130595.1985, 'Dr. Rendy', 'UPDATE `tbl_obat` SET `stok_now`=100 WHERE `id_obat`=1'),
(720, 4, 'yii\\db\\Command::execute', 1644130595.2056, 'Dr. Rendy', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-02-06\', 1, 1, 100)'),
(721, 4, 'yii\\db\\Command::execute', 1644130709.3654, 'Dr. Rendy', 'UPDATE `tbl_obat` SET `stok_now`=200 WHERE `id_obat`=1'),
(722, 4, 'yii\\db\\Command::execute', 1644130709.3745, 'Dr. Rendy', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `qty`) VALUES (\'2022-02-06\', 1, 1, 100)'),
(723, 4, 'yii\\db\\Command::execute', 1644131047.6115, 'Dr. Rendy', 'UPDATE `tbl_obat` SET `stok_now`=300 WHERE `id_obat`=1'),
(724, 4, 'yii\\db\\Command::execute', 1644131047.6172, 'Dr. Rendy', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`) VALUES (\'2022-02-06\', 1, 1, \'2022-03-01\', 100)'),
(725, 0, 'Login', 1644133762.7939, 'DEVELOPER', 'Login'),
(726, 4, 'yii\\db\\Command::execute', 1644133762.7942, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644133762.7939, \'DEVELOPER\', \'Login\')'),
(727, 4, 'yii\\db\\Command::execute', 1644135465.455, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (3, \'ok\', 5, 4, 1)'),
(728, 4, 'yii\\db\\Command::execute', 1644135882.1122, 'DEVELOPER', 'DELETE FROM `tbl_pemeriksaan_detail` WHERE `id_detail`=7'),
(729, 4, 'yii\\db\\Command::execute', 1644135891.6202, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (3, \'ok\', 5, 4, 1)'),
(730, 4, 'yii\\db\\Command::execute', 1644136360.5972, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan_detail` SET `id_obat_masuk`=4, `qty`=10, `keterangan`=\'sip\' WHERE `id_detail`=8'),
(731, 4, 'yii\\db\\Command::execute', 1644137110.3473, 'DEVELOPER', 'UPDATE `tbl_obat_masuk` SET `qty`=90 WHERE `id_obat_masuk`=4'),
(732, 4, 'yii\\db\\Command::execute', 1644137110.3638, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (4, 4, 10, \'2022-02-06\', 1)'),
(733, 4, 'yii\\db\\Command::execute', 1644137110.3795, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=4'),
(734, 4, 'yii\\db\\Command::execute', 1644137783.281, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `status`, `id_obat`, `tanggal_kadaluarsa`, `qty`) VALUES (\'2022-02-06\', 1, 2, \'2022-03-11\', 100)'),
(735, 4, 'yii\\db\\Command::execute', 1644137794.486, 'DEVELOPER', 'UPDATE `tbl_obat_masuk` SET `id_obat`=1, `qty`=100, `tanggal_kadaluarsa`=\'2023-03-31\' WHERE `id_obat_masuk`=3'),
(736, 4, 'yii\\db\\Command::execute', 1644141867.3534, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`) VALUES (\'2022-02-06\', 3, 1, \'2022-02-10\', 8)'),
(737, 4, 'yii\\db\\Command::execute', 1644142970.7196, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `status`, `id_obat`, `tanggal_kadaluarsa`, `qty`, `stok_now`) VALUES (\'2022-02-06\', 1, 2, \'2022-03-10\', 50, 50)'),
(738, 4, 'yii\\db\\Command::execute', 1644142996.993, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`, `stok_now`) VALUES (\'2022-02-06\', 2, 1, \'2022-02-17\', 50, 50)'),
(739, 4, 'yii\\db\\Command::execute', 1644143462.7672, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`) VALUES (\'20220206003\', \'2022-02-06\', 1, 1, \'cek\', \'12\', \'12\', \'12\')'),
(740, 4, 'yii\\db\\Command::execute', 1644143473.0488, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=1, `diagnosa`=\'ok\', `tindakan`=\'ok\', `terapi`=\'ok\', `saran`=\'ok\', `status`=2 WHERE `id_pemeriksaan`=5'),
(741, 4, 'yii\\db\\Command::execute', 1644144311.6223, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (3, \'ok\', 50, 5, 1)'),
(742, 4, 'yii\\db\\Command::execute', 1644144323.5185, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (8, \'ok\', 10, 5, 1)'),
(743, 4, 'yii\\db\\Command::execute', 1644144345.6393, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (7, \'ok\', 5, 5, 1)'),
(744, 4, 'yii\\db\\Command::execute', 1644144354.4375, 'DEVELOPER', 'UPDATE `tbl_obat_masuk` SET `stok_now`=50 WHERE `id_obat_masuk`=3'),
(745, 4, 'yii\\db\\Command::execute', 1644144354.4496, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (3, 5, 50, \'2022-02-06\', 1)'),
(746, 4, 'yii\\db\\Command::execute', 1644144354.4529, 'DEVELOPER', 'UPDATE `tbl_obat_masuk` SET `stok_now`=40 WHERE `id_obat_masuk`=8'),
(747, 4, 'yii\\db\\Command::execute', 1644144354.455, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (8, 5, 10, \'2022-02-06\', 1)'),
(748, 4, 'yii\\db\\Command::execute', 1644144354.4573, 'DEVELOPER', 'UPDATE `tbl_obat_masuk` SET `stok_now`=3 WHERE `id_obat_masuk`=7'),
(749, 4, 'yii\\db\\Command::execute', 1644144354.4597, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (7, 5, 5, \'2022-02-06\', 1)'),
(750, 4, 'yii\\db\\Command::execute', 1644144354.4699, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=5'),
(751, 4, 'yii\\db\\Command::execute', 1644148744.0839, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`) VALUES (\'20220206001\', \'2022-02-06\', 1, 1, \'Sakit Kepala\', \'120\', \'110\', \'30\')'),
(752, 4, 'yii\\db\\Command::execute', 1644148756.6344, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=1, `status`=1 WHERE `id_pemeriksaan`=1'),
(753, 4, 'yii\\db\\Command::execute', 1644148815.164, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`, `stok_now`) VALUES (\'2022-02-06\', 1, 1, \'2025-02-05\', 100, 100)'),
(754, 4, 'yii\\db\\Command::execute', 1644148950.3944, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`, `stok_now`) VALUES (\'2022-02-06\', 1, 1, \'2024-07-10\', 50, 50)'),
(755, 4, 'yii\\db\\Command::execute', 1644149091.0757, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (2, \'Setelah makan\', 10, 1, 1)'),
(756, 4, 'yii\\db\\Command::execute', 1644149138.3672, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `diagnosa`=\'COVID\', `tindakan`=\'KARANTINA\', `terapi`=\'-\', `saran`=\'JANGAN KELUAR RUMAH\' WHERE `id_pemeriksaan`=1'),
(757, 4, 'yii\\db\\Command::execute', 1644149148.0861, 'DEVELOPER', 'UPDATE `tbl_obat_masuk` SET `stok_now`=40 WHERE `id_obat_masuk`=2'),
(758, 4, 'yii\\db\\Command::execute', 1644149148.0964, 'DEVELOPER', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 1, 10, \'2022-02-06\', 1)'),
(759, 4, 'yii\\db\\Command::execute', 1644149148.1063, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=1'),
(760, 0, 'Login', 1644211916.6275, 'DEVELOPER', 'Login'),
(761, 4, 'yii\\db\\Command::execute', 1644211916.6278, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644211916.6275, \'DEVELOPER\', \'Login\')'),
(762, 4, 'yii\\db\\Command::execute', 1644213249.5805, 'DEVELOPER', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`) VALUES (\'20220207001\', \'2022-02-07\', 1, 1, \'ok\', \'12\', \'12\', \'12\')'),
(763, 4, 'yii\\db\\Command::execute', 1644213388.6844, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `id_penanggungjawab`=1, `status`=1 WHERE `id_pemeriksaan`=2'),
(764, 0, 'Login', 1644286457.6697, 'PARAMEDIC', 'Login'),
(765, 4, 'yii\\db\\Command::execute', 1644286457.6699, 'PARAMEDIC', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644286457.6697, \'PARAMEDIC\', \'Login\')'),
(766, 0, 'Login', 1644287260.465, 'DEVELOPER', 'Login'),
(767, 4, 'yii\\db\\Command::execute', 1644287260.4652, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644287260.465, \'DEVELOPER\', \'Login\')'),
(768, 4, 'yii\\db\\Command::execute', 1644287417.0616, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Paramedis\', \'tbl-paramedis\', 2, \'user-nurse\', 0, 8)'),
(769, 4, 'yii\\db\\Command::execute', 1644287425.0398, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'21\''),
(770, 4, 'yii\\db\\Command::execute', 1644287425.0455, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 21)'),
(771, 4, 'yii\\db\\Command::execute', 1644287425.0479, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 21)'),
(772, 4, 'yii\\db\\Command::execute', 1644287428.0603, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'21\''),
(773, 4, 'yii\\db\\Command::execute', 1644287428.099, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 21)'),
(774, 4, 'yii\\db\\Command::execute', 1644287428.1011, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 21)'),
(775, 4, 'yii\\db\\Command::execute', 1644287428.1025, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 21)'),
(776, 4, 'yii\\db\\Command::execute', 1644287590.1987, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Data Jenis Obat\', \'tbl-jenis-obat\', 2, \'buffer\', 0, 9)'),
(777, 4, 'yii\\db\\Command::execute', 1644287596.3246, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'22\''),
(778, 4, 'yii\\db\\Command::execute', 1644287596.3294, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 22)'),
(779, 4, 'yii\\db\\Command::execute', 1644287596.3319, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 22)'),
(780, 4, 'yii\\db\\Command::execute', 1644287596.3344, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 22)'),
(781, 4, 'yii\\db\\Command::execute', 1644287642.7021, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=2, `no_urut`=9, `icon`=\'circle\', `status`=0 WHERE `id_menu`=22'),
(782, 4, 'yii\\db\\Command::execute', 1644287695.7734, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Data Satuan Obat\', `id_parent`=2, `no_urut`=7, `status`=0 WHERE `id_menu`=13'),
(783, 4, 'yii\\db\\Command::execute', 1644289364.0289, 'DEVELOPER', 'INSERT INTO `tbl_jenis_obat` (`nama_jenis`, `status`) VALUES (\'Antibiotik\', 1)'),
(784, 4, 'yii\\db\\Command::execute', 1644289393.4498, 'DEVELOPER', 'INSERT INTO `tbl_jenis_obat` (`nama_jenis`, `status`) VALUES (\'Anestesi\', 1)'),
(785, 4, 'yii\\db\\Command::execute', 1644289401.9889, 'DEVELOPER', 'UPDATE `tbl_jenis_obat` SET `nama_jenis`=\'Anestesi s\', `status`=1 WHERE `id_jenis`=2'),
(786, 4, 'yii\\db\\Command::execute', 1644289407.4685, 'DEVELOPER', 'UPDATE `tbl_jenis_obat` SET `nama_jenis`=\'Anestesi\', `status`=1 WHERE `id_jenis`=2'),
(787, 4, 'yii\\db\\Command::execute', 1644289422.6305, 'DEVELOPER', 'UPDATE `tbl_satuan` SET `nama_satuan`=\'KAPSUL\', `status`=1 WHERE `id_satuan`=3'),
(788, 4, 'yii\\db\\Command::execute', 1644289456.86, 'DEVELOPER', 'INSERT INTO `tbl_satuan` (`nama_satuan`, `status`) VALUES (\'KAPLET\', 1)'),
(789, 4, 'yii\\db\\Command::execute', 1644307234.4683, 'DEVELOPER', 'INSERT INTO `tbl_paramedis` (`nama_paramedis`, `alamat`, `telp`, `status`) VALUES (\'Rendy\', \'Semarang\', \'0967867786\', 1)'),
(790, 4, 'yii\\db\\Command::execute', 1644307234.4941, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_paramedis`, `foto`) VALUES (\'rendy\', \'202cb962ac59075b964b07152d234b70\', \'Rendy\', 1, \'avatar5.png\')'),
(791, 4, 'yii\\db\\Command::execute', 1644307234.8771, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644307234.4683, \'DEVELOPER\', \'INSERT INTO `tbl_paramedis` (`nama_paramedis`, `alamat`, `telp`, `status`) VALUES (\\\'Rendy\\\', \\\'Semarang\\\', \\\'0967867786\\\', 1)\')'),
(792, 4, 'yii\\db\\Command::execute', 1644307234.8828, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644307234.4941, \'DEVELOPER\', \'INSERT INTO `login` (`username`, `password`, `nama`, `id_paramedis`, `foto`) VALUES (\\\'rendy\\\', \\\'202cb962ac59075b964b07152d234b70\\\', \\\'Rendy\\\', 1, \\\'avatar5.png\\\')\')'),
(793, 4, 'yii\\db\\Command::execute', 1644308248.6428, 'DEVELOPER', 'INSERT INTO `tbl_paramedis` (`nama_paramedis`, `alamat`, `telp`, `status`) VALUES (\'Rendy\', \'Semarang\', \'0967867786\', 1)'),
(794, 4, 'yii\\db\\Command::execute', 1644308435.9544, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_paramedis`, `foto`) VALUES (\'renren\', \'202cb962ac59075b964b07152d234b70\', \'Rendy\', NULL, \'avatar5.png\')'),
(795, 4, 'yii\\db\\Command::execute', 1644308435.9746, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`)\n                VALUES (4, \'yii\\\\db\\\\Command::execute\', 1644308435.9544, \'DEVELOPER\', \'INSERT INTO `login` (`username`, `password`, `nama`, `id_paramedis`, `foto`) VALUES (\\\'renren\\\', \\\'202cb962ac59075b964b07152d234b70\\\', \\\'Rendy\\\', NULL, \\\'avatar5.png\\\')\')'),
(796, 4, 'yii\\db\\Command::execute', 1644308578.973, 'DEVELOPER', 'UPDATE `system_role` SET `nama_role`=\'PARAMEDIS\' WHERE `id_system_role`=3'),
(797, 4, 'yii\\db\\Command::execute', 1644308609.9807, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_paramedis`, `foto`) VALUES (\'rena\', \'202cb962ac59075b964b07152d234b70\', \'RENDY\', NULL, \'avatar5.png\')'),
(798, 4, 'yii\\db\\Command::execute', 1644308699.3898, 'DEVELOPER', 'INSERT INTO `tbl_paramedis` (`nama_paramedis`, `alamat`, `telp`, `status`) VALUES (\'rendy\', \'123qedas\', \'123123\', 1)'),
(799, 4, 'yii\\db\\Command::execute', 1644308699.3925, 'DEVELOPER', 'INSERT INTO `login` (`username`, `password`, `nama`, `id_paramedis`, `foto`) VALUES (\'rena\', \'202cb962ac59075b964b07152d234b70\', \'rendy\', 3, \'avatar5.png\')'),
(800, 4, 'yii\\db\\Command::execute', 1644308699.4173, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (3, 17)'),
(801, 4, 'yii\\db\\Command::execute', 1644309109.7396, 'DEVELOPER', 'UPDATE `tbl_paramedis` SET `ttd_digital`=\'1644309109_PARAMEDIC.png\' WHERE `id_paramedis`=3'),
(802, 0, 'Login', 1644309153.7264, 'rendy', 'Login'),
(803, 4, 'yii\\db\\Command::execute', 1644309153.7266, 'rendy', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644309153.7264, \'rendy\', \'Login\')'),
(804, 4, 'yii\\db\\Command::execute', 1644309179.7801, 'rendy', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`) VALUES (\'20220208001\', \'2022-02-08\', 2, 8, \'ok\', \'12\', \'12\', \'12\')'),
(805, 0, 'Login', 1644309217.0339, 'DEVELOPER', 'Login'),
(806, 4, 'yii\\db\\Command::execute', 1644309217.034, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644309217.0339, \'DEVELOPER\', \'Login\')'),
(807, 0, 'Login', 1644309247.9048, 'rendy', 'Login'),
(808, 4, 'yii\\db\\Command::execute', 1644309247.9049, 'rendy', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644309247.9048, \'rendy\', \'Login\')'),
(809, 4, 'yii\\db\\Command::execute', 1644309363.2113, 'rendy', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_penanggungjawab`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`) VALUES (\'20220208002\', \'2022-02-08\', 17, 2, 8, \'qwe\', \'12\', \'12\', \'12\')'),
(810, 4, 'yii\\db\\Command::execute', 1644309653.8483, 'rendy', 'UPDATE `tbl_pemeriksaan` SET `status`=1 WHERE `id_pemeriksaan`=4'),
(811, 0, 'Login', 1644309663.8188, 'Dr. Rendy', 'Login'),
(812, 4, 'yii\\db\\Command::execute', 1644309663.819, 'Dr. Rendy', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644309663.8188, \'Dr. Rendy\', \'Login\')'),
(813, 4, 'yii\\db\\Command::execute', 1644309678.4705, 'Dr. Rendy', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (2, \'\', 2, 4, 1)'),
(814, 4, 'yii\\db\\Command::execute', 1644309686.9576, 'Dr. Rendy', 'UPDATE `tbl_pemeriksaan` SET `diagnosa`=\'asd\', `tindakan`=\'asd\', `terapi`=\'asd\', `saran`=\'asd\' WHERE `id_pemeriksaan`=4'),
(815, 4, 'yii\\db\\Command::execute', 1644309695.1638, 'Dr. Rendy', 'UPDATE `tbl_obat_masuk` SET `stok_now`=38 WHERE `id_obat_masuk`=2'),
(816, 4, 'yii\\db\\Command::execute', 1644309695.1752, 'Dr. Rendy', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 4, 2, \'2022-02-08\', 1)'),
(817, 4, 'yii\\db\\Command::execute', 1644309695.1883, 'Dr. Rendy', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=4'),
(818, 0, 'Login', 1644309708.847, 'rendy', 'Login'),
(819, 4, 'yii\\db\\Command::execute', 1644309708.8472, 'rendy', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644309708.847, \'rendy\', \'Login\')'),
(820, 4, 'yii\\db\\Command::execute', 1644313062.9932, 'rendy', 'INSERT INTO `surat_keluar` (`id_pemeriksaan`, `status`, `tanggal_buat`, `jenis_surat`, `jenis_dispensasi`, `start_date`, `end_date`, `catatan`) VALUES (4, 1, \'2022-02-08\', \'Dispensasi\', \'ok\', \'2022-02-16\', \'2022-04-14\', \'ok\')'),
(821, 0, 'Login', 1644313072.4297, 'DEVELOPER', 'Login'),
(822, 4, 'yii\\db\\Command::execute', 1644313072.4299, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644313072.4297, \'DEVELOPER\', \'Login\')'),
(823, 4, 'yii\\db\\Command::execute', 1644313182.6821, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'17\''),
(824, 4, 'yii\\db\\Command::execute', 1644313182.6906, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 17)'),
(825, 4, 'yii\\db\\Command::execute', 1644313182.6929, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (3, 17)'),
(826, 4, 'yii\\db\\Command::execute', 1644313182.696, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 17)'),
(827, 4, 'yii\\db\\Command::execute', 1644313582.8278, 'DEVELOPER', 'UPDATE `surat_keluar` SET `jenis_surat`=\'Cuti Hamil\' WHERE `id_surat`=1'),
(828, 4, 'yii\\db\\Command::execute', 1644314095.0345, 'DEVELOPER', 'UPDATE `surat_keluar` SET `jenis_surat`=\'Dispensasi\' WHERE `id_surat`=1'),
(829, 4, 'yii\\db\\Command::execute', 1644318548.8839, 'DEVELOPER', 'UPDATE `tbl_pemeriksaan` SET `diagnosa`=\'ok\', `tindakan`=\'ok\', `terapi`=\'ok\', `saran`=\'ok\', `status`=2 WHERE `id_pemeriksaan`=3'),
(830, 0, 'Login', 1644320034.6948, 'PARAMEDIC', 'Login'),
(831, 4, 'yii\\db\\Command::execute', 1644320034.6951, 'PARAMEDIC', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644320034.6948, \'PARAMEDIC\', \'Login\')'),
(832, 4, 'yii\\db\\Command::execute', 1644327447.2529, 'PARAMEDIC', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (2, \'\', 1, 3, 1)'),
(833, 4, 'yii\\db\\Command::execute', 1644327457.1144, 'PARAMEDIC', 'UPDATE `tbl_obat_masuk` SET `stok_now`=37 WHERE `id_obat_masuk`=2'),
(834, 4, 'yii\\db\\Command::execute', 1644327457.1466, 'PARAMEDIC', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 3, 1, \'2022-02-08\', 1)'),
(835, 4, 'yii\\db\\Command::execute', 1644327457.159, 'PARAMEDIC', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=3'),
(836, 4, 'yii\\db\\Command::execute', 1644327474.8404, 'PARAMEDIC', 'INSERT INTO `surat_keluar` (`id_pemeriksaan`, `status`, `tanggal_buat`, `jenis_surat`, `jenis_dispensasi`, `start_date`, `end_date`, `catatan`) VALUES (3, 1, \'2022-02-08\', \'Dispensasi\', \'ok\', \'2022-02-15\', \'2022-02-15\', \'ok\')'),
(837, 0, 'Login', 1644327646.5499, 'PARAMEDIC', 'Login'),
(838, 4, 'yii\\db\\Command::execute', 1644327646.5501, 'PARAMEDIC', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644327646.5499, \'PARAMEDIC\', \'Login\')'),
(839, 0, 'Login', 1644328050.9234, 'rendy', 'Login'),
(840, 4, 'yii\\db\\Command::execute', 1644328050.9237, 'rendy', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644328050.9234, \'rendy\', \'Login\')'),
(841, 4, 'yii\\db\\Command::execute', 1644328064.1866, 'rendy', 'UPDATE `tbl_paramedis` SET `ttd_digital`=\'1644328064_ttd.png\' WHERE `id_paramedis`=3'),
(842, 4, 'yii\\db\\Command::execute', 1644328115.8582, 'rendy', 'UPDATE `tbl_paramedis` SET `ttd_digital`=\'1644328115_tdg.png\' WHERE `id_paramedis`=3'),
(843, 4, 'yii\\db\\Command::execute', 1644328129.2898, 'rendy', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_penanggungjawab`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`) VALUES (\'20220208003\', \'2022-02-08\', 3, 2, 1, \'qwe\', \'12\', \'12\', \'12\')'),
(844, 4, 'yii\\db\\Command::execute', 1644328132.6015, 'rendy', 'UPDATE `tbl_pemeriksaan` SET `status`=1 WHERE `id_pemeriksaan`=5'),
(845, 4, 'yii\\db\\Command::execute', 1644328151.237, 'rendy', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (2, \'\', 1, 5, 1)'),
(846, 4, 'yii\\db\\Command::execute', 1644328157.936, 'rendy', 'UPDATE `tbl_pemeriksaan` SET `diagnosa`=\'qwe\', `tindakan`=\'qwe\', `terapi`=\'qwe\', `saran`=\'qwe\' WHERE `id_pemeriksaan`=5'),
(847, 4, 'yii\\db\\Command::execute', 1644328164.2248, 'rendy', 'UPDATE `tbl_obat_masuk` SET `stok_now`=36 WHERE `id_obat_masuk`=2'),
(848, 4, 'yii\\db\\Command::execute', 1644328164.2357, 'rendy', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 5, 1, \'2022-02-08\', 1)'),
(849, 4, 'yii\\db\\Command::execute', 1644328164.2465, 'rendy', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=5'),
(850, 4, 'yii\\db\\Command::execute', 1644328184.3641, 'rendy', 'INSERT INTO `surat_keluar` (`id_pemeriksaan`, `status`, `tanggal_buat`, `jenis_surat`, `jenis_dispensasi`, `start_date`, `end_date`, `catatan`) VALUES (5, 1, \'2022-02-08\', \'Dispensasi\', \'123\', \'2022-02-15\', \'2022-02-16\', \'123\')'),
(851, 4, 'yii\\db\\Command::execute', 1644329266.1316, 'rendy', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_penanggungjawab`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`, `oksigen`) VALUES (\'20220208004\', \'2022-02-08\', 3, 2, 8, \'12\', \'12\', \'12\', \'12\', \'12\')'),
(852, 4, 'yii\\db\\Command::execute', 1644329334.8504, 'rendy', 'UPDATE `tbl_pemeriksaan` SET `diagnosa`=\'asd\', `tindakan`=\'asd\', `terapi`=\'asd\', `saran`=\'asd\', `status`=2 WHERE `id_pemeriksaan`=6'),
(853, 4, 'yii\\db\\Command::execute', 1644329339.104, 'rendy', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (2, \'\', 1, 6, 1)'),
(854, 4, 'yii\\db\\Command::execute', 1644329343.4157, 'rendy', 'UPDATE `tbl_obat_masuk` SET `stok_now`=35 WHERE `id_obat_masuk`=2'),
(855, 4, 'yii\\db\\Command::execute', 1644329343.431, 'rendy', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 6, 1, \'2022-02-08\', 1)'),
(856, 4, 'yii\\db\\Command::execute', 1644329343.4546, 'rendy', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=6'),
(857, 4, 'yii\\db\\Command::execute', 1644368522.6286, 'rendy', 'INSERT INTO `tbl_jenis_obat` (`nama_jenis`, `status`) VALUES (\'Perede nyeri\', 1)'),
(858, 4, 'yii\\db\\Command::execute', 1644368522.6571, 'rendy', 'INSERT INTO `tbl_satuan` (`nama_satuan`, `status`) VALUES (\'5\', 1)'),
(859, 4, 'yii\\db\\Command::execute', 1644368522.6584, 'rendy', 'INSERT INTO `tbl_obat` (`jenis_obat`, `id_satuan`, `nama_obat`, `produsen`, `harga`, `keterangan`, `limit_warning`, `status`) VALUES (3, 5, \'betadine\', \'phapros\', 5000, \'ok\', 5, 1)'),
(860, 4, 'yii\\db\\Command::execute', 1644368647.55, 'rendy', 'INSERT INTO `tbl_obat` (`jenis_obat`, `nama_obat`, `produsen`, `harga`, `id_satuan`, `keterangan`, `limit_warning`, `status`) VALUES (2, \'test\', \'PHAPROS\', 5000, 4, \'ok\', 13, 1)'),
(861, 4, 'yii\\db\\Command::execute', 1644368828.1523, 'rendy', 'UPDATE `tbl_obat` SET `id_satuan`=4, `jenis_obat`=1, `harga`=5000, `limit_warning`=13, `status`=1 WHERE `id_obat`=7'),
(862, 4, 'yii\\db\\Command::execute', 1644368842.1996, 'rendy', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`, `stok_now`) VALUES (\'2022-02-09\', 7, 1, \'2022-02-17\', 50, 50)'),
(863, 4, 'yii\\db\\Command::execute', 1644372394.4419, 'rendy', 'INSERT INTO `tbl_obat` (`jenis_obat`, `nama_obat`, `produsen`, `harga`, `id_satuan`, `keterangan`, `limit_warning`, `status`) VALUES (1, \'Paracetamol\', \'Kimia Farma\', 5000, 1, \'ok\', 50, 1)'),
(864, 4, 'yii\\db\\Command::execute', 1644372408.9482, 'rendy', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`, `stok_now`) VALUES (\'2022-02-09\', 1, 1, \'2022-08-09\', 50, 50)'),
(865, 4, 'yii\\db\\Command::execute', 1644377750.9153, 'rendy', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_penanggungjawab`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`, `oksigen`) VALUES (\'20220209001\', \'2022-02-09\', 3, 2, 1, \'123\', \'120\', \'120/20\', \'12\', \'12\')'),
(866, 4, 'yii\\db\\Command::execute', 1644377791.7018, 'rendy', 'UPDATE `tbl_pemeriksaan` SET `diagnosa`=\'asd\', `tindakan`=\'asd\', `terapi`=\'asd\', `saran`=\'asd\', `status`=2 WHERE `id_pemeriksaan`=1'),
(867, 4, 'yii\\db\\Command::execute', 1644377795.8653, 'rendy', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (2, \'\', 1, 1, 1)'),
(868, 4, 'yii\\db\\Command::execute', 1644377814.6571, 'rendy', 'UPDATE `tbl_obat_masuk` SET `stok_now`=49 WHERE `id_obat_masuk`=2'),
(869, 4, 'yii\\db\\Command::execute', 1644377814.6773, 'rendy', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 1, 1, \'2022-02-09\', 1)'),
(870, 4, 'yii\\db\\Command::execute', 1644377814.6865, 'rendy', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=1'),
(871, 4, 'yii\\db\\Command::execute', 1644388241.4052, 'rendy', 'UPDATE `tbl_paramedis` SET `nama_paramedis`=\'Rendy  aa\', `alamat`=\'123 aa\', `telp`=\'12312312\', `status`=1 WHERE `id_paramedis`=3'),
(872, 4, 'yii\\db\\Command::execute', 1644389738.1736, 'rendy', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_penanggungjawab`, `id_pasien`, `id_dokter`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`, `oksigen`) VALUES (\'20220209002\', \'2022-02-09\', 3, 1, 1, \'Demam\', \'120\', \'80\', \'32\', \'12\')'),
(873, 4, 'yii\\db\\Command::execute', 1644389758.0454, 'rendy', 'UPDATE `tbl_pemeriksaan` SET `diagnosa`=\'Demam\', `tindakan`=\'Rehat\', `terapi`=\'Rehat\', `saran`=\'Rehat\', `status`=2 WHERE `id_pemeriksaan`=2'),
(874, 0, 'Login', 1644448048.1567, 'DEVELOPER', 'Login'),
(875, 4, 'yii\\db\\Command::execute', 1644448048.1569, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644448048.1567, \'DEVELOPER\', \'Login\')'),
(876, 4, 'yii\\db\\Command::execute', 1644463158.5021, 'DEVELOPER', 'UPDATE `tbl_obat_masuk` SET `qty`=100, `tanggal_kadaluarsa`=\'2022-08-18\' WHERE `id_obat_masuk`=1'),
(877, 4, 'yii\\db\\Command::execute', 1644464581.1614, 'DEVELOPER', 'UPDATE `tbl_obat_masuk` SET `qty`=200, `tanggal_kadaluarsa`=\'2022-08-27\', `stok_now`=200 WHERE `id_obat_masuk`=1'),
(878, 4, 'yii\\db\\Command::execute', 1644464593.2569, 'DEVELOPER', 'DELETE FROM `tbl_obat_masuk` WHERE `id_obat_masuk`=1'),
(879, 4, 'yii\\db\\Command::execute', 1644465020.9309, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `status`, `id_obat`, `tanggal_kadaluarsa`, `qty`, `stok_now`) VALUES (\'2022-02-10\', 1, 1, \'2022-03-10\', 123, 123)'),
(880, 4, 'yii\\db\\Command::execute', 1644465114.5438, 'DEVELOPER', 'UPDATE `tbl_obat_masuk` SET `id_obat`=1, `tanggal_masuk`=\'2022-02-12\', `qty`=100, `tanggal_kadaluarsa`=\'2022-04-09\', `stok_now`=100 WHERE `id_obat_masuk`=3'),
(881, 4, 'yii\\db\\Command::execute', 1644465119.8285, 'DEVELOPER', 'DELETE FROM `tbl_obat_masuk` WHERE `id_obat_masuk`=3'),
(882, 4, 'yii\\db\\Command::execute', 1644498622.3366, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`, `stok_now`) VALUES (\'2022-02-10\', 1, 1, \'2022-03-07\', 1212, 1212)'),
(883, 4, 'yii\\db\\Command::execute', 1644498952.6487, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`, `trash_item_expired_date`, `stok_now`) VALUES (\'2022-02-10\', 1, 1, \'2022-03-07\', 100, \'2021-09-01\', 100)'),
(884, 4, 'yii\\db\\Command::execute', 1644499054.996, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`, `trash_item_expired_date`, `stok_now`) VALUES (\'2022-02-10\', 1, 1, \'2022-08-20\', 100, \'2022-02-01\', 100)'),
(885, 4, 'yii\\db\\Command::execute', 1644499410.1491, 'DEVELOPER', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `id_obat`, `status`, `tanggal_kadaluarsa`, `qty`, `trash_item_expired_date`, `stok_now`) VALUES (\'2022-02-10\', 1, 1, \'2022-09-24\', 100, \'2022-03-01\', 100)'),
(886, 0, 'Login', 1644500861.1225, 'Dr. Ahmad', 'Login'),
(887, 4, 'yii\\db\\Command::execute', 1644500861.1226, 'Dr. Ahmad', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644500861.1225, \'Dr. Ahmad\', \'Login\')'),
(888, 4, 'yii\\db\\Command::execute', 1644501715.4843, 'Dr. Ahmad', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_penanggungjawab`, `id_dokter`, `id_pasien`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`, `oksigen`) VALUES (\'20220210001\', \'2022-02-10\', 0, 1, 1, \'ok\', \'12\', \'23\', \'12\', \'12\')'),
(889, 4, 'yii\\db\\Command::execute', 1644501936.5883, 'Dr. Ahmad', 'INSERT INTO `tbl_pemeriksaan` (`kode_periksa`, `tanggal_periksa`, `id_penanggungjawab`, `id_dokter`, `status`, `id_pasien`, `keluhan`, `sistolik`, `diastolik`, `suhu_badan`, `oksigen`) VALUES (\'20220210002\', \'2022-02-10\', 0, 1, 1, 2, \'as\', \'12\', \'23\', \'23\', \'12\')'),
(890, 4, 'yii\\db\\Command::execute', 1644502276.1033, 'Dr. Ahmad', 'UPDATE `tbl_pemeriksaan` SET `diagnosa`=\'ok\', `tindakan`=\'ok\', `terapi`=\'ok\', `saran`=\'ok\' WHERE `id_pemeriksaan`=4'),
(891, 4, 'yii\\db\\Command::execute', 1644502282.8396, 'Dr. Ahmad', 'INSERT INTO `tbl_pemeriksaan_detail` (`id_obat_masuk`, `keterangan`, `qty`, `id_pemeriksaan`, `status`) VALUES (2, \'\', 1, 4, 1)'),
(892, 4, 'yii\\db\\Command::execute', 1644502287.5575, 'Dr. Ahmad', 'UPDATE `tbl_obat_masuk` SET `stok_now`=99 WHERE `id_obat_masuk`=2'),
(893, 4, 'yii\\db\\Command::execute', 1644502287.5639, 'Dr. Ahmad', 'INSERT INTO `tbl_obat_keluar` (`id_obat_masuk`, `id_pemeriksaan`, `qty`, `tanggal_keluar`, `status`) VALUES (2, 4, 1, \'2022-02-10\', 1)'),
(894, 4, 'yii\\db\\Command::execute', 1644502287.5716, 'Dr. Ahmad', 'UPDATE `tbl_pemeriksaan` SET `selesai_proses`=1 WHERE `id_pemeriksaan`=4'),
(895, 0, 'Login', 1644502432.8909, 'Dr. Ahmad', 'Login'),
(896, 4, 'yii\\db\\Command::execute', 1644502432.891, 'Dr. Ahmad', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644502432.8909, \'Dr. Ahmad\', \'Login\')'),
(897, 4, 'yii\\db\\Command::execute', 1644502688.8437, 'Dr. Ahmad', 'UPDATE `tbl_obat_masuk` SET `qty`=100, `tanggal_kadaluarsa`=\'2022-09-08\', `stok_now`=100, `trash_item_expired_date`=\'2022-03-01\' WHERE `id_obat_masuk`=1'),
(898, 4, 'yii\\db\\Command::execute', 1644502711.6965, 'Dr. Ahmad', 'UPDATE `tbl_obat_masuk` SET `qty`=100, `tanggal_kadaluarsa`=\'2022-10-13\', `stok_now`=100, `trash_item_expired_date`=\'2022-04-01\' WHERE `id_obat_masuk`=1'),
(899, 4, 'yii\\db\\Command::execute', 1644502791.9241, 'Dr. Ahmad', 'INSERT INTO `tbl_obat_masuk` (`tanggal_masuk`, `status`, `id_obat`, `tanggal_kadaluarsa`, `qty`, `trash_item_expired_date`, `stok_now`) VALUES (\'2022-02-10\', 1, 1, \'2022-08-25\', 100, \'2022-02-01\', 100)'),
(900, 4, 'yii\\db\\Command::execute', 1644502820.8221, 'Dr. Ahmad', 'UPDATE `tbl_obat_masuk` SET `id_obat`=1, `qty`=100, `tanggal_kadaluarsa`=\'2022-09-08\', `stok_now`=100, `trash_item_expired_date`=\'2022-03-01\' WHERE `id_obat_masuk`=3'),
(901, 4, 'yii\\db\\Command::execute', 1644503444.7938, 'Dr. Ahmad', 'UPDATE `tbl_obat_masuk` SET `status`=0 WHERE `id_obat_masuk`=1'),
(902, 4, 'yii\\db\\Command::execute', 1644503799.4901, 'Dr. Ahmad', 'INSERT INTO `surat_keluar` (`id_pemeriksaan`, `status`, `tanggal_buat`, `jenis_surat`, `jenis_dispensasi`, `start_date`, `end_date`, `catatan`) VALUES (4, 1, \'2022-02-10\', \'Dispensasi\', \'ok\', \'2022-02-28\', \'2022-03-10\', \'ok\')'),
(903, 0, 'Login', 1644503810.3656, 'DEVELOPER', 'Login'),
(904, 4, 'yii\\db\\Command::execute', 1644503810.3657, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1644503810.3656, \'DEVELOPER\', \'Login\')'),
(905, 0, 'Login', 1646620620.33, 'ADMIN', 'Login'),
(906, 4, 'yii\\db\\Command::execute', 1646620620.3301, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1646620620.33, \'ADMIN\', \'Login\')'),
(907, 0, 'Login', 1646622077.2836, 'ADMIN', 'Login'),
(908, 4, 'yii\\db\\Command::execute', 1646622077.2839, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1646622077.2836, \'ADMIN\', \'Login\')'),
(909, 0, 'Login', 1646622146.3393, 'DEVELOPER', 'Login'),
(910, 4, 'yii\\db\\Command::execute', 1646622146.3395, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1646622146.3393, \'DEVELOPER\', \'Login\')'),
(911, 4, 'yii\\db\\Command::execute', 1646622185.1247, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=22'),
(912, 4, 'yii\\db\\Command::execute', 1646622190.3243, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=13'),
(913, 4, 'yii\\db\\Command::execute', 1646622452.1983, 'DEVELOPER', 'DELETE FROM `login` WHERE `id_login`=3'),
(914, 4, 'yii\\db\\Command::execute', 1646622455.3688, 'DEVELOPER', 'DELETE FROM `login` WHERE `id_login`=4'),
(915, 4, 'yii\\db\\Command::execute', 1646622463.7291, 'DEVELOPER', 'DELETE FROM `login` WHERE `id_login`=13'),
(916, 4, 'yii\\db\\Command::execute', 1646622466.2842, 'DEVELOPER', 'DELETE FROM `login` WHERE `id_login`=17'),
(917, 4, 'yii\\db\\Command::execute', 1646622473.2056, 'DEVELOPER', 'DELETE FROM `system_role` WHERE `id_system_role`=4'),
(918, 4, 'yii\\db\\Command::execute', 1646622476.2647, 'DEVELOPER', 'DELETE FROM `system_role` WHERE `id_system_role`=3'),
(919, 4, 'yii\\db\\Command::execute', 1646622553.7886, 'DEVELOPER', 'DELETE FROM `user_role` WHERE `id_login`=\'1\''),
(920, 4, 'yii\\db\\Command::execute', 1646622553.7963, 'DEVELOPER', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 1)'),
(921, 0, 'Login', 1646623816.2436, 'ADMIN', 'Login'),
(922, 4, 'yii\\db\\Command::execute', 1646623816.2437, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1646623816.2436, \'ADMIN\', \'Login\')'),
(923, 0, 'Login', 1646636806.043, 'DEVELOPER', 'Login'),
(924, 4, 'yii\\db\\Command::execute', 1646636806.0432, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1646636806.043, \'DEVELOPER\', \'Login\')'),
(925, 4, 'yii\\db\\Command::execute', 1646636899.1565, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Kategori\', \'tbl-kategori\', 2, \'list-alt\', 0, 10)'),
(926, 4, 'yii\\db\\Command::execute', 1646636902.2305, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'23\''),
(927, 4, 'yii\\db\\Command::execute', 1646636902.2381, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 23)'),
(928, 4, 'yii\\db\\Command::execute', 1646636902.2414, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 23)'),
(929, 4, 'yii\\db\\Command::execute', 1646636920.5648, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Merk\', \'tbl-merk\', 2, \'list-alt\', 0, 11)'),
(930, 4, 'yii\\db\\Command::execute', 1646636923.0834, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'24\''),
(931, 4, 'yii\\db\\Command::execute', 1646636923.1031, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 24)'),
(932, 4, 'yii\\db\\Command::execute', 1646636923.1409, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 24)'),
(933, 4, 'yii\\db\\Command::execute', 1646636996.4792, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Mobil\', \'tbl-mobil\', 0, \'car\', 0, 3)'),
(934, 4, 'yii\\db\\Command::execute', 1646636998.8362, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'25\''),
(935, 4, 'yii\\db\\Command::execute', 1646636998.8438, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 25)'),
(936, 4, 'yii\\db\\Command::execute', 1646636998.8468, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 25)'),
(937, 4, 'yii\\db\\Command::execute', 1646638387.3595, 'DEVELOPER', 'INSERT INTO `tbl_kategori` (`nama_kategori`, `status`) VALUES (\'Off-Road\', 1)'),
(938, 4, 'yii\\db\\Command::execute', 1646638471.141, 'DEVELOPER', 'INSERT INTO `tbl_kategori` (`nama_kategori`, `status`) VALUES (\'Sports Car\', 1)'),
(939, 4, 'yii\\db\\Command::execute', 1646639063.3055, 'DEVELOPER', 'UPDATE `tbl_kategori` SET `status`=0 WHERE `id_kategori`=1'),
(940, 4, 'yii\\db\\Command::execute', 1646639188.6789, 'DEVELOPER', 'UPDATE `tbl_kategori` SET `status`=1 WHERE `id_kategori`=1'),
(941, 4, 'yii\\db\\Command::execute', 1646639447.4557, 'DEVELOPER', 'INSERT INTO `tbl_merk` (`nama_merk`, `status`) VALUES (\'Toyota\', 1)'),
(942, 4, 'yii\\db\\Command::execute', 1646639452.1921, 'DEVELOPER', 'UPDATE `tbl_merk` SET `status`=0 WHERE `id_merk`=1'),
(943, 4, 'yii\\db\\Command::execute', 1646641131.0606, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=25, `no_urut`=10, `status`=0 WHERE `id_menu`=23'),
(944, 4, 'yii\\db\\Command::execute', 1646641140.9413, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=25, `no_urut`=11, `status`=0 WHERE `id_menu`=24'),
(945, 4, 'yii\\db\\Command::execute', 1646641204.6389, 'DEVELOPER', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Mobil\', \'tbl-mobil\', 25, \'cars\', 0, 12)'),
(946, 4, 'yii\\db\\Command::execute', 1646641207.6923, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'26\''),
(947, 4, 'yii\\db\\Command::execute', 1646641207.6969, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 26)'),
(948, 4, 'yii\\db\\Command::execute', 1646641207.6989, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 26)'),
(949, 4, 'yii\\db\\Command::execute', 1646641236.8536, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=25, `no_urut`=12, `icon`=\'car\', `status`=0 WHERE `id_menu`=26'),
(950, 4, 'yii\\db\\Command::execute', 1646641243.1461, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=25, `no_urut`=1, `status`=0 WHERE `id_menu`=26'),
(951, 4, 'yii\\db\\Command::execute', 1646641264.4488, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `nama_menu`=\'Master Mobil\', `url`=\'#\', `id_parent`=0, `no_urut`=3, `status`=0 WHERE `id_menu`=25'),
(952, 4, 'yii\\db\\Command::execute', 1646641326.8577, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=3, `icon`=\'bus\', `status`=0 WHERE `id_menu`=25'),
(953, 4, 'yii\\db\\Command::execute', 1646641354.5537, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=3, `icon`=\'car\', `status`=0 WHERE `id_menu`=25'),
(954, 4, 'yii\\db\\Command::execute', 1646643443.2234, 'DEVELOPER', 'UPDATE `tbl_merk` SET `status`=1 WHERE `id_merk`=1'),
(955, 4, 'yii\\db\\Command::execute', 1646644148.834, 'DEVELOPER', 'INSERT INTO `tbl_mobil` (`kode_mobil`, `merk_mobil`, `kategori_mobil`, `type_mobil`, `tahun`, `no_polisi`, `transmisi`, `tipe_body`, `isi_silinder`, `no_rangka`, `no_mesin`, `warna_eksterior`, `warna_interior`, `bahan_interior`, `bahan_bakar`, `odometer`, `pajak_berlaku`, `kepemilikan`, `tangan_pertama`, `km_service_terakhir`, `tgl_service_terakhir`, `status`) VALUES (\'abc123\', 1, 1, \'abc123\', 123, \'abc123\', \'Manual\', \'abc123\', \'abc123\', \'abc123\', \'abc123\', \'abc123\', \'abc123\', \'abc123\', \'abc123\', \'abc123\', \'abc123\', \'abc123\', \'abc123\', \'abc123\', \'2022-03-07\', 1)'),
(956, 4, 'yii\\db\\Command::execute', 1646644984.5121, 'DEVELOPER', 'UPDATE `tbl_mobil` SET `merk_mobil`=1, `kategori_mobil`=1, `tahun`=123, `status`=0 WHERE `id_mobil`=1');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(957, 4, 'yii\\db\\Command::execute', 1646645001.5739, 'DEVELOPER', 'UPDATE `tbl_mobil` SET `merk_mobil`=1, `kategori_mobil`=1, `tahun`=123, `status`=1 WHERE `id_mobil`=1'),
(958, 4, 'yii\\db\\Command::execute', 1646645060.5927, 'DEVELOPER', 'UPDATE `tbl_mobil` SET `merk_mobil`=1, `kategori_mobil`=1, `tahun`=123, `pajak_berlaku`=\'1901-11-30\', `status`=1 WHERE `id_mobil`=1'),
(959, 4, 'yii\\db\\Command::execute', 1646645483.4077, 'DEVELOPER', 'UPDATE `tbl_mobil` SET `merk_mobil`=1, `kategori_mobil`=1, `tahun`=123, `pajak_berlaku`=\'2022-03-31\', `status`=1 WHERE `id_mobil`=1'),
(960, 0, 'Login', 1646701529.7451, 'DEVELOPER', 'Login'),
(961, 4, 'yii\\db\\Command::execute', 1646701529.7452, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1646701529.7451, \'DEVELOPER\', \'Login\')'),
(962, 4, 'yii\\db\\Command::execute', 1646702718.3982, 'DEVELOPER', 'UPDATE `tbl_mobil` SET `kode_mobil`=\'38360039408\', `merk_mobil`=1, `kategori_mobil`=2, `type_mobil`=\'Yaris 1.5 S\', `tahun`=2015, `no_polisi`=\'B XXXX XXX\', `transmisi`=\'Automatic\', `tipe_body`=\'Micro/Minibus\', `isi_silinder`=\'1,500 CC\', `no_rangka`=\'MHFKTXFXXFXXXXXXX\', `no_mesin`=\'XNZZXXXXXX\', `warna_eksterior`=\'Merah\', `warna_interior`=\'Hitam\', `bahan_interior`=\'Sarung Jok\', `bahan_bakar`=\'Bensin\', `odometer`=\'57,XXX KM\', `pajak_berlaku`=\'2022-03-01\', `kepemilikan`=\'Pribadi\', `tangan_pertama`=\'-\', `km_service_terakhir`=\'54,XXX KM\', `tgl_service_terakhir`=\'2022-03-01\', `status`=1 WHERE `id_mobil`=1'),
(963, 4, 'yii\\db\\Command::execute', 1646718248.5725, 'DEVELOPER', 'INSERT INTO `tbl_mobil_gambar` (`id_mobil`, `gambar`) VALUES (1, \'1646718248CommandLineI.png\')'),
(964, 4, 'yii\\db\\Command::execute', 1646718311.4455, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `nama_menu`=\'MASTER MOBIL\', `id_parent`=0, `no_urut`=3, `status`=0 WHERE `id_menu`=25'),
(965, 4, 'yii\\db\\Command::execute', 1646718384.0355, 'DEVELOPER', 'INSERT INTO `tbl_mobil_gambar` (`id_mobil`, `gambar`) VALUES (1, \'HTML & CSS Latihan I.png\')'),
(966, 4, 'yii\\db\\Command::execute', 1646718464.5147, 'DEVELOPER', 'INSERT INTO `tbl_mobil_gambar` (`id_mobil`, `gambar`) VALUES (1, \'1646718464HTML&CSSLatihanII.png\')'),
(967, 4, 'yii\\db\\Command::execute', 1646723592.2931, 'DEVELOPER', 'DELETE FROM `tbl_mobil_gambar` WHERE `id_mobil_gambar`=3'),
(968, 4, 'yii\\db\\Command::execute', 1646723625.151, 'DEVELOPER', 'DELETE FROM `tbl_mobil_gambar` WHERE `id_mobil_gambar`=2'),
(969, 4, 'yii\\db\\Command::execute', 1646723643.3452, 'DEVELOPER', 'DELETE FROM `tbl_mobil_gambar` WHERE `id_mobil_gambar`=1'),
(970, 4, 'yii\\db\\Command::execute', 1646725287.169, 'DEVELOPER', 'INSERT INTO `tbl_mobil_gambar` (`id_mobil`, `gambar`) VALUES (1, \'1646725287oli-woodman-fwYZ3B_QQco-unsplash.jpg\')'),
(971, 4, 'yii\\db\\Command::execute', 1646725416.6081, 'DEVELOPER', 'INSERT INTO `tbl_mobil_gambar` (`id_mobil`, `gambar`) VALUES (1, \'1646725416lance-asper-N9Pf2J656aQ-unsplash.jpg\')'),
(972, 4, 'yii\\db\\Command::execute', 1646725460.4178, 'DEVELOPER', 'DELETE FROM `tbl_mobil_gambar` WHERE `id_mobil_gambar`=5'),
(973, 4, 'yii\\db\\Command::execute', 1646725464.2493, 'DEVELOPER', 'DELETE FROM `tbl_mobil_gambar` WHERE `id_mobil_gambar`=4'),
(974, 4, 'yii\\db\\Command::execute', 1646725478.6139, 'DEVELOPER', 'INSERT INTO `tbl_mobil_gambar` (`id_mobil`, `gambar`) VALUES (1, \'1646725478oli-woodman-fwYZ3B_QQco-unsplash.jpg\')'),
(975, 4, 'yii\\db\\Command::execute', 1646725786.3239, 'DEVELOPER', 'INSERT INTO `tbl_mobil_gambar` (`id_mobil`, `gambar`) VALUES (1, \'1646725786lance-asper-N9Pf2J656aQ-unsplash.jpg\')'),
(976, 4, 'yii\\db\\Command::execute', 1646725804.0619, 'DEVELOPER', 'INSERT INTO `tbl_mobil_gambar` (`id_mobil`, `gambar`) VALUES (1, \'1646725804dhiva-krishna-X16zXcbxU4U-unsplash.jpg\')'),
(977, 4, 'yii\\db\\Command::execute', 1646725816.2649, 'DEVELOPER', 'INSERT INTO `tbl_mobil_gambar` (`id_mobil`, `gambar`) VALUES (1, \'1646725816joey-banks-YApiWyp0lqo-unsplash.jpg\')'),
(978, 4, 'yii\\db\\Command::execute', 1646725826.2261, 'DEVELOPER', 'INSERT INTO `tbl_mobil_gambar` (`id_mobil`, `gambar`) VALUES (1, \'1646725826campbell-3ZUsNJhi_Ik-unsplash.jpg\')'),
(979, 4, 'yii\\db\\Command::execute', 1646726334.638, 'DEVELOPER', 'INSERT INTO `tbl_mobil` (`kode_mobil`, `merk_mobil`, `kategori_mobil`, `type_mobil`, `tahun`, `no_polisi`, `transmisi`, `tipe_body`, `isi_silinder`, `no_rangka`, `no_mesin`, `warna_eksterior`, `warna_interior`, `bahan_interior`, `bahan_bakar`, `odometer`, `pajak_berlaku`, `kepemilikan`, `tangan_pertama`, `km_service_terakhir`, `tgl_service_terakhir`, `status`) VALUES (\'adwawd\', 1, 1, \'awdawd\', 123123, \'awdawd\', \'Manual\', \'dawdadw\', \'awd\', \'awda\', \'wdaw\', \'dawd\', \'awd\', \'awdawda\', \'wdawd\', \'awdawdaw\', \'2022-03-08\', \'awdawd\', \'awdawd\', \'awdawdawd\', \'2022-03-24\', 1)'),
(980, 4, 'yii\\db\\Command::execute', 1646726337.8121, 'DEVELOPER', 'DELETE FROM `tbl_mobil` WHERE `id_mobil`=2'),
(981, 4, 'yii\\db\\Command::execute', 1646726385.4883, 'DEVELOPER', 'INSERT INTO `tbl_mobil` (`kode_mobil`, `merk_mobil`, `kategori_mobil`, `type_mobil`, `tahun`, `no_polisi`, `transmisi`, `tipe_body`, `isi_silinder`, `no_rangka`, `no_mesin`, `warna_eksterior`, `warna_interior`, `bahan_interior`, `bahan_bakar`, `odometer`, `pajak_berlaku`, `kepemilikan`, `tangan_pertama`, `km_service_terakhir`, `tgl_service_terakhir`, `status`) VALUES (\'awdawd\', 1, 1, \'awdawd\', 12312, \'awdawd123\', \'Manual\', \'dawd123\', \'32442cc42c\', \'c424cc24\', \'c2c42432\', \'c424c2c42\', \'c424c243\', \'34cc22cc\', \'c2c23234\', \'423233c4\', \'2022-03-24\', \'c2442c234\', \'2334242c\', \'c24324342\', \'2022-03-31\', 1)'),
(982, 4, 'yii\\db\\Command::execute', 1646726394.4426, 'DEVELOPER', 'DELETE FROM `tbl_mobil` WHERE `id_mobil`=3'),
(983, 4, 'yii\\db\\Command::execute', 1646727491.0688, 'DEVELOPER', 'UPDATE `tbl_mobil` SET `merk_mobil`=1, `kategori_mobil`=2, `tahun`=2015, `status`=1 WHERE `id_mobil`=1'),
(984, 4, 'yii\\db\\Command::execute', 1646727539.032, 'DEVELOPER', 'DELETE FROM `tbl_mobil_gambar` WHERE `id_mobil_gambar`=10'),
(985, 4, 'yii\\db\\Command::execute', 1646727541.9561, 'DEVELOPER', 'DELETE FROM `tbl_mobil_gambar` WHERE `id_mobil_gambar`=9'),
(986, 4, 'yii\\db\\Command::execute', 1646727545.5877, 'DEVELOPER', 'DELETE FROM `tbl_mobil_gambar` WHERE `id_mobil_gambar`=8'),
(987, 4, 'yii\\db\\Command::execute', 1646727549.4162, 'DEVELOPER', 'DELETE FROM `tbl_mobil_gambar` WHERE `id_mobil_gambar`=7'),
(988, 4, 'yii\\db\\Command::execute', 1646727553.0974, 'DEVELOPER', 'DELETE FROM `tbl_mobil_gambar` WHERE `id_mobil_gambar`=6'),
(989, 4, 'yii\\db\\Command::execute', 1646727557.3515, 'DEVELOPER', 'UPDATE `tbl_mobil` SET `merk_mobil`=1, `kategori_mobil`=2, `tahun`=2015, `status`=1 WHERE `id_mobil`=1'),
(990, 0, 'Login', 1646876234.6866, 'ADMIN', 'Login'),
(991, 4, 'yii\\db\\Command::execute', 1646876234.6868, 'ADMIN', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1646876234.6866, \'ADMIN\', \'Login\')'),
(992, 0, 'Login', 1646876264.5227, 'DEVELOPER', 'Login'),
(993, 4, 'yii\\db\\Command::execute', 1646876264.5229, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1646876264.5227, \'DEVELOPER\', \'Login\')'),
(994, 4, 'yii\\db\\Command::execute', 1646969516.0408, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `url`=\'#\', `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(995, 4, 'yii\\db\\Command::execute', 1646969967.2381, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(996, 4, 'yii\\db\\Command::execute', 1646971111.2627, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(997, 4, 'yii\\db\\Command::execute', 1646971140.6486, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(998, 4, 'yii\\db\\Command::execute', 1646971284.1269, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(999, 4, 'yii\\db\\Command::execute', 1646971309.8518, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(1000, 4, 'yii\\db\\Command::execute', 1646971331.4979, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(1001, 4, 'yii\\db\\Command::execute', 1646971343.1022, 'DEVELOPER', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'1\''),
(1002, 4, 'yii\\db\\Command::execute', 1646971343.1127, 'DEVELOPER', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 1)'),
(1003, 4, 'yii\\db\\Command::execute', 1646971551.0922, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(1004, 4, 'yii\\db\\Command::execute', 1646971559.2375, 'DEVELOPER', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=1, `status`=0 WHERE `id_menu`=1'),
(1005, 4, 'yii\\db\\Command::execute', 1646971564.4092, 'DEVELOPER', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=1'),
(1006, 4, 'yii\\db\\Command::execute', 1646971590.5826, 'DEVELOPER', 'DELETE FROM `system_role` WHERE `id_system_role`=2'),
(1007, 4, 'yii\\db\\Command::execute', 1646971596.6044, 'DEVELOPER', 'DELETE FROM `login` WHERE `id_login`=2'),
(1008, 4, 'yii\\db\\Command::execute', 1646972207.918, 'DEVELOPER', 'INSERT INTO `tbl_merk` (`nama_merk`, `status`) VALUES (\'TEST\', 1)'),
(1009, 0, 'Login', 1646972325.7487, 'DEVELOPER', 'Login'),
(1010, 4, 'yii\\db\\Command::execute', 1646972325.7488, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1646972325.7487, \'DEVELOPER\', \'Login\')'),
(1011, 0, 'Login', 1646984853.1955, 'DEVELOPER', 'Login'),
(1012, 4, 'yii\\db\\Command::execute', 1646984853.1956, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1646984853.1955, \'DEVELOPER\', \'Login\')'),
(1013, 4, 'yii\\db\\Command::execute', 1646989258.0395, 'DEVELOPER', 'UPDATE `tbl_mobil` SET `merk_mobil`=1, `kategori_mobil`=2, `tahun`=2015, `status`=1 WHERE `id_mobil`=1'),
(1014, 0, 'Login', 1649402752.6892, 'DEVELOPER', 'Login'),
(1015, 4, 'yii\\db\\Command::execute', 1649402752.6894, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1649402752.6892, \'DEVELOPER\', \'Login\')'),
(1016, 0, 'Login', 1649402769.3139, 'DEVELOPER', 'Login'),
(1017, 4, 'yii\\db\\Command::execute', 1649402769.3141, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1649402769.3139, \'DEVELOPER\', \'Login\')'),
(1018, 0, 'Login', 1649402815.7539, 'DEVELOPER', 'Login'),
(1019, 4, 'yii\\db\\Command::execute', 1649402815.7541, 'DEVELOPER', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1649402815.7539, \'DEVELOPER\', \'Login\')');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_dokter` int(11) DEFAULT NULL,
  `id_paramedis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`, `nama`, `foto`, `id_dokter`, `id_paramedis`) VALUES
(1, 'developer', '202cb962ac59075b964b07152d234b70', 'DEVELOPER', 'img_avatar.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_navigasi`
--

CREATE TABLE `menu_navigasi` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_navigasi`
--

INSERT INTO `menu_navigasi` (`id_menu`, `nama_menu`, `url`, `id_parent`, `no_urut`, `icon`, `status`) VALUES
(2, 'MASTER DATA', '#', 0, 2, 'database', 0),
(3, 'Menu Navigasi', 'menu-navigasi', 2, 1, 'navicon', 0),
(4, 'Login', 'login', 2, 2, 'user', 0),
(5, 'Hak Akses', 'systemrole', 2, 3, 'universal-access', 0),
(20, 'Setting', 'setting', 2, 9, 'cogs', 0),
(23, 'Kategori', 'tbl-kategori', 25, 10, 'list-alt', 0),
(24, 'Merk', 'tbl-merk', 25, 11, 'list-alt', 0),
(25, 'MASTER MOBIL', '#', 0, 3, 'car', 0),
(26, 'Mobil', 'tbl-mobil', 25, 1, 'car', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_navigasi_role`
--

CREATE TABLE `menu_navigasi_role` (
  `id_menu_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_navigasi_role`
--

INSERT INTO `menu_navigasi_role` (`id_menu_role`, `id_menu`, `id_system_role`) VALUES
(3, 4, 1),
(6, 4, 2),
(82, 2, 1),
(83, 2, 4),
(84, 2, 3),
(85, 2, 2),
(90, 5, 1),
(91, 5, 2),
(94, 3, 1),
(95, 20, 1),
(111, 23, 1),
(112, 23, 2),
(113, 24, 1),
(114, 24, 2),
(115, 25, 1),
(116, 25, 2),
(117, 26, 1),
(118, 26, 2),
(120, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nama_usaha` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `fax` varchar(200) NOT NULL,
  `npwp` varchar(200) NOT NULL,
  `direktur` varchar(200) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama`, `nama_usaha`, `email`, `password`, `alamat`, `telepon`, `fax`, `npwp`, `direktur`, `foto`) VALUES
(1, 'PT. INDOFOOD .', 'PERUSAHAAN', 'rendynusa00@gmail.com', 'VWtWT1NsbE9WVk5CTURBPQ==', 'Jl.kawasan industri', '-', '-', '-', '-', '1598935038_GSS.png');

-- --------------------------------------------------------

--
-- Table structure for table `system_role`
--

CREATE TABLE `system_role` (
  `id_system_role` int(11) NOT NULL,
  `nama_role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_role`
--

INSERT INTO `system_role` (`id_system_role`, `nama_role`) VALUES
(1, 'DEVELOPER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `status`) VALUES
(1, 'Off-Road', 1),
(2, 'Sports Car', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategoris`
--

CREATE TABLE `tbl_kategoris` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `id_merk` int(11) NOT NULL,
  `nama_merk` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_merk`
--

INSERT INTO `tbl_merk` (`id_merk`, `nama_merk`, `status`) VALUES
(1, 'Toyota', 1),
(2, 'TEST', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mobil`
--

CREATE TABLE `tbl_mobil` (
  `id_mobil` int(11) NOT NULL,
  `kode_mobil` varchar(200) NOT NULL,
  `merk_mobil` int(11) NOT NULL,
  `kategori_mobil` int(11) NOT NULL,
  `type_mobil` varchar(200) NOT NULL,
  `tahun` int(11) NOT NULL,
  `no_polisi` varchar(200) NOT NULL,
  `transmisi` enum('Manual','Automatic') NOT NULL,
  `tipe_body` varchar(200) NOT NULL,
  `isi_silinder` varchar(200) NOT NULL,
  `no_rangka` varchar(200) NOT NULL,
  `no_mesin` varchar(200) NOT NULL,
  `warna_eksterior` varchar(200) NOT NULL,
  `warna_interior` varchar(200) NOT NULL,
  `bahan_interior` varchar(200) NOT NULL,
  `bahan_bakar` varchar(200) NOT NULL,
  `odometer` varchar(200) NOT NULL,
  `pajak_berlaku` date NOT NULL,
  `kepemilikan` varchar(200) NOT NULL,
  `tangan_pertama` varchar(200) NOT NULL,
  `km_service_terakhir` varchar(200) NOT NULL,
  `tgl_service_terakhir` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mobil`
--

INSERT INTO `tbl_mobil` (`id_mobil`, `kode_mobil`, `merk_mobil`, `kategori_mobil`, `type_mobil`, `tahun`, `no_polisi`, `transmisi`, `tipe_body`, `isi_silinder`, `no_rangka`, `no_mesin`, `warna_eksterior`, `warna_interior`, `bahan_interior`, `bahan_bakar`, `odometer`, `pajak_berlaku`, `kepemilikan`, `tangan_pertama`, `km_service_terakhir`, `tgl_service_terakhir`, `status`) VALUES
(1, '38360039408', 1, 2, 'Yaris 1.5 S', 2015, 'B XXXX XXX', 'Automatic', 'Micro/Minibus', '1,500 CC', 'MHFKTXFXXFXXXXXXX', 'XNZZXXXXXX', 'Merah', 'Hitam', 'Sarung Jok', 'Bensin', '57,XXX KM', '2022-03-01', 'Pribadi', '-', '54,XXX KM', '2022-03-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mobil_gambar`
--

CREATE TABLE `tbl_mobil_gambar` (
  `id_mobil_gambar` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id_user_role` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL,
  `id_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id_user_role`, `id_system_role`, `id_login`) VALUES
(23, 1, 1),
(18, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  ADD PRIMARY KEY (`id_menu_role`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_system_role` (`id_system_role`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `system_role`
--
ALTER TABLE `system_role`
  ADD PRIMARY KEY (`id_system_role`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_kategoris`
--
ALTER TABLE `tbl_kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indexes for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `tbl_mobil_gambar`
--
ALTER TABLE `tbl_mobil_gambar`
  ADD PRIMARY KEY (`id_mobil_gambar`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_user_role`),
  ADD KEY `id_system_role` (`id_system_role`),
  ADD KEY `id_login` (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  MODIFY `id_menu_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_role`
--
ALTER TABLE `system_role`
  MODIFY `id_system_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_kategoris`
--
ALTER TABLE `tbl_kategoris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `id_merk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_mobil_gambar`
--
ALTER TABLE `tbl_mobil_gambar`
  MODIFY `id_mobil_gambar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_user_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
