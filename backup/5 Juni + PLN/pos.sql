-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2020 at 06:07 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `approval`
--

CREATE TABLE `approval` (
  `pegawai_id` int(200) NOT NULL,
  `jenis_approval` varchar(200) NOT NULL,
  `pegawai_nama` varchar(200) NOT NULL,
  `pegawai_no_hp` varchar(200) NOT NULL,
  `pegawai_email` varchar(200) NOT NULL,
  `IMEI` int(10) NOT NULL,
  `kode_verifikasi` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tgl_req` date NOT NULL,
  `tgl_approve` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approval`
--

INSERT INTO `approval` (`pegawai_id`, `jenis_approval`, `pegawai_nama`, `pegawai_no_hp`, `pegawai_email`, `IMEI`, `kode_verifikasi`, `status`, `tgl_req`, `tgl_approve`) VALUES
(111222, 'Pulihkan Akun', 'Ahmad', '0822132132', 'deadsoul@admin', 145678, '', 'Request', '2020-02-11', '2020-02-14 08:34:25'),
(111223, 'Pemulihan Akun', 'Imanuel Septian', '082160921563', 'aweng@gmail.com', 856565432, '', 'Request', '2020-02-11', '2020-02-14 08:34:37'),
(111225, 'Lupa PIN', 'doni', '089862315', 'doni@gmail.com', 1678920, '839688', 'Finish', '2020-01-04', '2020-02-12 05:09:06'),
(111230, 'Buka Blokir', 'nadia', '089877641', 'nadia@nadia.com', 98756881, '771667', 'Finish', '2020-01-28', '2020-02-11 12:47:29'),
(111231, 'Lupa PIN', 'ADMIN', '081221104196', 'admin@admin.com', 0, '', 'Request', '2020-04-04', '0000-00-00 00:00:00'),
(111234, 'Lupa PIN', 'CIMAHI', '081221104196', 'admin@admin.com', 0, '415066', 'Finish', '2020-04-05', '2020-04-05 10:33:04'),
(111236, 'Lupa PIN', 'doni m', '089764512', 'doni@gmail.com', 0, '720665', 'Finish', '2020-04-15', '2020-04-15 04:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `jenis_id` int(11) NOT NULL,
  `jenis_nama` varchar(200) NOT NULL,
  `kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`jenis_id`, `jenis_nama`, `kategori_id`) VALUES
(5, 'Pulsa HP', 3),
(6, 'Paket Data', 3),
(10, 'Dalam Negeri', 1),
(11, 'Luar Negeri', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(7) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`) VALUES
(1, 'Kurir'),
(3, 'Pospay');

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `id_kurir` int(10) NOT NULL,
  `id_jenis` int(10) DEFAULT '0',
  `id_loket` int(10) DEFAULT '0',
  `tanggal` datetime DEFAULT NULL,
  `kiriman_jenis` varchar(50) DEFAULT NULL,
  `noref` varchar(50) DEFAULT '0',
  `kiriman_berat` varchar(50) DEFAULT NULL,
  `kiriman_isi` varchar(255) DEFAULT NULL,
  `tujuan_kodepos` varchar(50) DEFAULT NULL,
  `tujuan_prov` varchar(50) DEFAULT NULL,
  `tujuan_kota` varchar(50) DEFAULT NULL,
  `tujuan_kec` varchar(50) DEFAULT NULL,
  `tujuan_kel` varchar(50) DEFAULT NULL,
  `tarif_jenis` varchar(50) DEFAULT NULL,
  `tarif_ongkir` float DEFAULT '0',
  `pengirim_nama` varchar(255) DEFAULT '0',
  `pengirim_alamat` varchar(255) DEFAULT '0',
  `pengirim_kel` varchar(255) DEFAULT '0',
  `pengirim_kec` varchar(255) DEFAULT '0',
  `pengirim_kota` varchar(255) DEFAULT '0',
  `pengirim_kodepos` varchar(255) DEFAULT '0',
  `pengirim_hp` varchar(255) DEFAULT '0',
  `penerima_nama` varchar(255) DEFAULT '0',
  `penerima_alamat` varchar(255) DEFAULT '0',
  `penerima_prov` varchar(255) DEFAULT '0',
  `penerima_kota` varchar(255) DEFAULT '0',
  `penerima_kec` varchar(255) DEFAULT '0',
  `penerima_kel` varchar(255) DEFAULT '0',
  `penerima_kodepos` varchar(255) DEFAULT '0',
  `penerima_hp` varchar(255) DEFAULT '0',
  `penerima_pesan` varchar(255) DEFAULT '0',
  `kiriman_negara` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`id_kurir`, `id_jenis`, `id_loket`, `tanggal`, `kiriman_jenis`, `noref`, `kiriman_berat`, `kiriman_isi`, `tujuan_kodepos`, `tujuan_prov`, `tujuan_kota`, `tujuan_kec`, `tujuan_kel`, `tarif_jenis`, `tarif_ongkir`, `pengirim_nama`, `pengirim_alamat`, `pengirim_kel`, `pengirim_kec`, `pengirim_kota`, `pengirim_kodepos`, `pengirim_hp`, `penerima_nama`, `penerima_alamat`, `penerima_prov`, `penerima_kota`, `penerima_kec`, `penerima_kel`, `penerima_kodepos`, `penerima_hp`, `penerima_pesan`, `kiriman_negara`) VALUES
(1, 1, 111236, '2020-06-05 14:05:43', 'paket', '2020ORG51289871', '10', 'elektronik', '75313', '1', '1', '3', '1', '1', 10000, 'ahmad', 'jalan nangka', '2', '3', '1', '601013', '0812545463', 'mamat', 'jalan cibubur', '1', '1', '3', '1', '614121', '0853696354', 'Terimakasi telah berbelanja bersama kami', '0');

-- --------------------------------------------------------

--
-- Table structure for table `loket`
--

CREATE TABLE `loket` (
  `id` int(10) NOT NULL,
  `pin` int(10) DEFAULT '0',
  `kprk` int(10) DEFAULT '0',
  `norek` varchar(20) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `nohp` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `npwp` varchar(200) DEFAULT NULL,
  `kelamin` char(1) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `tglreg` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loket`
--

INSERT INTO `loket` (`id`, `pin`, `kprk`, `norek`, `nama`, `alamat`, `nohp`, `email`, `npwp`, `kelamin`, `tgllahir`, `agama`, `tglreg`, `status`) VALUES
(111233, 999999, 25000, '1', 'ERK', 'BANDUNG', '081221104196', 'admin@admin.com', '122222', 'L', '2020-04-04', 'Islam', '2020-04-04 17:59:33', NULL),
(111234, 111222, 27300, '981293014', 'CIMAHI xx', 'CIMAHI', '081221104196', 'admin@admin.com', '', 'L', '2020-04-04', 'Islam', '2020-04-05 10:12:07', 'Aktif'),
(111235, 222222, 10000, '737452149', 'Elisabeth', 'tembalang', '082160921563', 'elisabeth@gmail.com', '456329056902', 'P', '2019-04-10', 'Protestan', '2020-04-14 17:22:59', 'Aktif'),
(111236, 888888, 26200, '750444818', 'doni m', 'sipodang no.56', '089764512', 'doni@gmail.com', '12345678901', 'L', '2020-04-15', 'Islam', '2020-04-15 04:45:09', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `loket_saldo`
--

CREATE TABLE `loket_saldo` (
  `id` int(10) NOT NULL,
  `id_loket` int(10) DEFAULT '0',
  `saldo` float DEFAULT '0',
  `reward` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loket_saldo`
--

INSERT INTO `loket_saldo` (`id`, `id_loket`, `saldo`, `reward`) VALUES
(3, 111231, 3000000, 0),
(4, 111234, 972525, 0),
(5, 111235, 334000, 0),
(6, 111236, 155175, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pospay`
--

CREATE TABLE `pospay` (
  `id_pospay` int(10) NOT NULL,
  `id_jenis` int(10) DEFAULT '0',
  `id_loket` int(10) DEFAULT '0',
  `id_produk` int(10) DEFAULT '0',
  `tanggal` datetime DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `notl` varchar(20) DEFAULT NULL,
  `nominal` float DEFAULT '0',
  `admin` float DEFAULT '0',
  `total` float DEFAULT '0',
  `noref` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pospay`
--

INSERT INTO `pospay` (`id_pospay`, `id_jenis`, `id_loket`, `id_produk`, `tanggal`, `nohp`, `notl`, `nominal`, `admin`, `total`, `noref`) VALUES
(1, 1, 111231, 1, '2020-04-04 17:17:01', '081221104196', NULL, 25000, 2475, 27475, '2020ORG39783945'),
(2, 2, 111232, 4, '2020-04-04 17:24:04', '081221104196', NULL, 25000, 2475, 27475, '2020ORG69602959'),
(3, 1, 111234, 1, '2020-04-14 21:32:11', '081221104196', NULL, 25000, 2475, 27475, '2020ORG88663674'),
(4, 1, 111235, 3, '2020-04-14 17:24:23', '0878906543', NULL, 50000, 1000, 56000, '2020ORG12371663'),
(5, 2, 111235, 4, '2020-04-14 17:31:06', '087890012', NULL, 100000, 1000, 110000, '2020ORG00937217'),
(6, 1, 111236, 2, '2020-04-15 04:50:35', '08789065432', NULL, 50000, 1000, 51000, '2020ORG79054345'),
(7, 1, 111236, 1, '2020-06-03 07:26:04', '08125668899992', NULL, 25000, 2475, 27500, '2020ORG99833722'),
(8, 1, 111236, 1, '2020-06-05 07:49:58', '08125668899992', NULL, 25000, 2475, 27475, '2020ORG49194980'),
(9, 1, 111236, 2, '2020-06-05 08:35:43', '08125668899992', NULL, 50000, 2475, 52475, '2020ORG83240565'),
(11, 3, 111236, 7, '2020-06-05 09:20:01', NULL, '2020232003', 50000, 1221, 51000, '2020ORG99271866'),
(13, 3, 111236, 7, '2020-06-05 10:04:32', NULL, '2020661527', 25000, 2475, 27475, '2020ORG71457944'),
(14, 3, 111236, 7, '2020-06-05 10:05:21', NULL, '2020012080', 25000, 2475, 27475, '2020ORG50889373');

-- --------------------------------------------------------

--
-- Table structure for table `ref_kantor`
--

CREATE TABLE `ref_kantor` (
  `kodekantor` int(10) NOT NULL,
  `nama_kantor` varchar(200) NOT NULL,
  `regional_kode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kantor`
--

INSERT INTO `ref_kantor` (`kodekantor`, `nama_kantor`, `regional_kode`) VALUES
(10000, 'JAKARTAPUSAT', 10004),
(10900, 'SPP JAKARTA', 10004),
(11000, 'JAKARTABARAT', 10004),
(12000, 'JAKARTASELATAN', 10004),
(13000, 'JAKARTATIMUR', 10004),
(14000, 'JAKARTAUTARA', 10004),
(15000, 'TANGERANG', 10004),
(17000, 'BEKASI', 10004),
(25000, 'PADANG', 25004),
(25500, 'PARIAMAN', 25004),
(25600, 'PAINAN', 25004),
(26100, 'BUKITINGGI', 25004),
(26200, 'PAYAKUMBUH', 25004),
(26300, 'LUBUKSIKAPING', 25004),
(27100, 'PADANGPANJANG', 25004),
(27300, 'SOLOK', 25004),
(27400, 'SAWAHLUNTO', 25004),
(28000, 'PEKANBARU', 25004),
(28500, 'BANGKINANG', 25004),
(28800, 'DUMAI', 25004),
(29100, 'TANGJUNGPINANG', 25004),
(29200, 'TEMBILAHAN', 25004),
(29300, 'RENGAT', 25004),
(29400, 'BATAM', 25004);

-- --------------------------------------------------------

--
-- Table structure for table `ref_kecamatan`
--

CREATE TABLE `ref_kecamatan` (
  `id_kecamatan` int(10) NOT NULL,
  `id_kota` int(10) DEFAULT '0',
  `nama_kecamatan` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kecamatan`
--

INSERT INTO `ref_kecamatan` (`id_kecamatan`, `id_kota`, `nama_kecamatan`) VALUES
(1, 1, 'CIMAHI UTARA'),
(2, 1, 'CIMAHI TENGAH'),
(3, 1, 'CIMAHI SELATAN');

-- --------------------------------------------------------

--
-- Table structure for table `ref_kelurahan`
--

CREATE TABLE `ref_kelurahan` (
  `id_kelurahan` int(10) NOT NULL,
  `id_kecamatan` int(10) DEFAULT '0',
  `nama_kelurahan` varchar(100) DEFAULT '0',
  `kodepos` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kelurahan`
--

INSERT INTO `ref_kelurahan` (`id_kelurahan`, `id_kecamatan`, `nama_kelurahan`, `kodepos`) VALUES
(1, 1, 'CIBABAT', '40513'),
(2, 1, 'CIPAGERAN', '40511'),
(3, 1, 'CITEUREUP', '40512'),
(4, 1, 'PASIRKALIKI', '40514');

-- --------------------------------------------------------

--
-- Table structure for table `ref_kota`
--

CREATE TABLE `ref_kota` (
  `id_kota` int(10) NOT NULL,
  `id_provinsi` int(10) DEFAULT '0',
  `nama_kota` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kota`
--

INSERT INTO `ref_kota` (`id_kota`, `id_provinsi`, `nama_kota`) VALUES
(1, 1, 'KOTA CIMAHI');

-- --------------------------------------------------------

--
-- Table structure for table `ref_negara`
--

CREATE TABLE `ref_negara` (
  `id_negara` int(10) NOT NULL,
  `nama_negara` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_negara`
--

INSERT INTO `ref_negara` (`id_negara`, `nama_negara`) VALUES
(1, 'Amerika Serikat');

-- --------------------------------------------------------

--
-- Table structure for table `ref_produk_pospay`
--

CREATE TABLE `ref_produk_pospay` (
  `id_produk` int(10) NOT NULL,
  `nama_produk` varchar(50) DEFAULT '0',
  `admin` float DEFAULT '0',
  `jenis` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_produk_pospay`
--

INSERT INTO `ref_produk_pospay` (`id_produk`, `nama_produk`, `admin`, `jenis`) VALUES
(1, 'TELKOMSEL PRABAYAR', 2475, 1),
(2, 'INDOSAT  PRABAYAR', 2475, 1),
(3, 'XL PRABAYAR', 2475, 1),
(4, 'TELKOMSEL DATA', 2475, 2),
(5, 'XL PAKET DATA', 2475, 2),
(6, 'AXIS PAKET DATA', 2475, 2),
(7, 'TOKEN LISTRIK', 2475, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ref_provinsi`
--

CREATE TABLE `ref_provinsi` (
  `id_provinsi` int(10) NOT NULL,
  `nama_provinsi` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_provinsi`
--

INSERT INTO `ref_provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Jawa Barat');

-- --------------------------------------------------------

--
-- Table structure for table `ref_regional`
--

CREATE TABLE `ref_regional` (
  `regional_kode` int(20) NOT NULL,
  `regional_nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_regional`
--

INSERT INTO `ref_regional` (`regional_kode`, `regional_nama`) VALUES
(10004, 'Jakarta'),
(20004, 'Medan'),
(25004, 'Padang'),
(30004, 'Palembang'),
(40004, 'Bandung'),
(50004, 'Semarang'),
(60004, 'Surabaya'),
(70704, 'Banjarbaru'),
(80004, 'Denpasar'),
(90004, 'Makassar'),
(99004, 'Jayapura');

-- --------------------------------------------------------

--
-- Table structure for table `tarif_paket`
--

CREATE TABLE `tarif_paket` (
  `id_tarif` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT '0',
  `tarif` float DEFAULT '0',
  `jenis` int(11) DEFAULT '0' COMMENT '1=dalam negeri, 2=luar negeri',
  `kode` int(11) DEFAULT '0' COMMENT '1=dalam negeri, 2=luar negeri'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarif_paket`
--

INSERT INTO `tarif_paket` (`id_tarif`, `nama`, `tarif`, `jenis`, `kode`) VALUES
(1, 'PAKET KILAT KHUSUS (1 HARI)', 20000, 1, 240),
(2, 'PAKET KILAT KHUSUS (10 HARI)', 200000, 2, 299);

-- --------------------------------------------------------

--
-- Table structure for table `topup`
--

CREATE TABLE `topup` (
  `id` int(10) NOT NULL,
  `id_loket` int(10) DEFAULT '0',
  `tanggal` datetime DEFAULT NULL,
  `jumlah` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topup`
--

INSERT INTO `topup` (`id`, `id_loket`, `tanggal`, `jumlah`) VALUES
(1, 111231, '2020-04-04 15:31:00', 1000000),
(2, 111232, '2020-04-04 17:23:49', 1000000),
(3, 111232, '2020-04-04 17:29:20', 1000000),
(4, 25, '2020-04-04 17:29:53', 1000000),
(5, 25, '2020-04-04 17:30:00', 2000000),
(6, 25, '2020-04-04 17:30:15', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `pegawai_id` int(20) NOT NULL,
  `ref_regional` int(11) NOT NULL,
  `transaksi_tanggal` date NOT NULL,
  `transaksi_jenis` varchar(200) NOT NULL,
  `jenis_id` int(20) NOT NULL,
  `billnumber` varchar(200) NOT NULL,
  `no_transaksi` varchar(200) NOT NULL,
  `jmlLembar` int(20) NOT NULL,
  `nominal_tagihan` int(200) NOT NULL,
  `payment_code` varchar(200) NOT NULL,
  `jmlTrx` int(20) NOT NULL,
  `no_resi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `pegawai_id`, `ref_regional`, `transaksi_tanggal`, `transaksi_jenis`, `jenis_id`, `billnumber`, `no_transaksi`, `jmlLembar`, `nominal_tagihan`, `payment_code`, `jmlTrx`, `no_resi`) VALUES
(1, 111229, 10004, '2019-06-21', 'Pasca Bayar', 3, '201906218AI', '21ORG00000008', 1, 55000, '290621', 2, 'JB0007993055'),
(2, 111223, 25004, '2020-01-22', 'Pasca Bayar', 3, '202006232AI', '23ORG00005002', 2, 110000, '232370', 4, 'ZZ0007994901'),
(3, 111230, 10004, '2020-02-21', 'Dalam Negeri', 3, '201906219AI', '21ORG00000009', 2, 40000, '300621', 3, 'JS1320967817'),
(4, 111227, 25004, '2019-06-22', 'Paket Data', 3, '201906236AI', '22ORG00000006', 1, 50000, '270622', 2, 'JB0007993023'),
(5, 111228, 10004, '2020-02-22', 'PLN', 3, '201906227AI', '22ORG00000007', 3, 60000, '280622', 1, 'JC0007993010'),
(6, 111222, 25004, '2019-05-14', 'PDAM', 4, '2019051410AI', '14ORG00000010', 2, 35000, '220514', 1, 'JZ0007993064'),
(7, 111223, 25004, '2020-01-21', 'Pulsa HP', 4, '202006232AI', '23ORG00000002', 1, 10000, '232306', 2, 'JL0007994901'),
(8, 111224, 25004, '2020-01-23', 'PLN', 3, '202006233AI', '23ORG00000003', 2, 100000, '240623', 3, 'JO0007993723'),
(9, 111225, 10004, '2019-06-23', 'Luar Negeri', 3, '201906234AI', '23ORG00000004', 1, 80000, '250623', 2, 'JP7984934793'),
(10, 111226, 25004, '2020-02-04', 'PDAM', 4, '202006235AI', '23ORG00000005', 3, 150000, '260204', 1, 'JF0007993578'),
(11, 111222, 25004, '2020-02-20', 'Dalam Negeri', 3, '202001201AI', '20ORG00000001', 1, 20000, '220120', 1, 'JD0018951787'),
(12, 111224, 25004, '2020-02-04', 'PLN', 3, '202004021AI', '04ORG00000011', 1, 20000, '240204', 1, 'JK0007993011'),
(13, 111229, 10004, '2020-02-12', 'Multifinance', 3, '202006218AI', '12ORG00000008\r\n', 3, 25000, '118904', 3, 'JJ0007993090'),
(14, 111228, 10004, '2020-02-14', 'Luar Negeri', 11, '202006142AI', '14ORG00005002\r\n', 3, 340000, '000056', 3, 'BB7984934790'),
(23, 111231, 10000, '2020-04-04', 'Pulsa HP', 5, '2020353032', '2020ORG39783945', 1, 27475, '556178', 1, 'PP0000983622'),
(24, 111232, 17000, '2020-04-04', 'Paket Data', 6, '2020207414', '2020ORG69602959', 1, 27475, '835052', 1, 'PP0000366189'),
(25, 111234, 27300, '2020-04-14', 'Pulsa HP', 5, '2020630377', '2020ORG88663674', 1, 27475, '923444', 1, 'PP0000138567'),
(26, 111235, 10000, '2020-04-14', 'Pulsa HP', 5, '2020069582', '2020ORG12371663', 1, 56000, '476549', 1, 'PP0000017320'),
(27, 111235, 10000, '2020-04-14', 'Paket Data', 6, '2020512888', '2020ORG00937217', 1, 110000, '473159', 1, 'PP0000394854'),
(28, 111236, 26200, '2020-04-15', 'Pulsa HP', 5, '2020161015', '2020ORG79054345', 1, 51000, '792537', 1, 'PP0000954878'),
(29, 111236, 26200, '2020-06-03', 'Pulsa HP', 5, '2020106355', '2020ORG99833722', 1, 27500, '322043', 1, 'PP0000891281'),
(30, 111236, 26200, '2020-06-05', 'Pulsa HP', 5, '2020741960', '2020ORG49194980', 1, 27475, '535088', 1, 'PP0000505572'),
(31, 111236, 26200, '2020-06-05', 'Pulsa HP', 5, '2020142997', '2020ORG83240565', 1, 52475, '126484', 1, 'PP0000110445'),
(32, 111236, 26200, '2020-06-05', 'PLN', 3, '2020139090', '2020ORG23094853', 1, 102475, '705728', 1, 'PP0000031761'),
(33, 111236, 26200, '2020-06-05', 'PLN', 3, '2020444977', '2020ORG99271866', 3, 51000, '590387', 1, 'PP0000529453'),
(34, 111236, 26200, '2020-06-05', 'PLN', 3, '2020730639', '2020ORG48101496', 1, 52475, '660246', 1, 'PP0000683200'),
(35, 111236, 26200, '2020-06-05', 'PLN', 3, '2020760764', '2020ORG26763031', 1, 27475, '963069', 1, 'PP0000722317'),
(36, 111236, 26200, '2020-06-05', 'PLN', 3, '2020548253', '2020ORG71457944', 1, 27475, '219894', 1, 'PP0000581169'),
(37, 111236, 26200, '2020-06-05', 'PLN', 3, '2020178163', '2020ORG50889373', 1, 27475, '033339', 1, 'PP0000233294'),
(38, 111236, 26200, '2020-06-05', 'Dalam Negeri', 10, '2020931297', '2020ORG51289871', 1, 10000, '950600', 1, 'KR0000170173');

-- --------------------------------------------------------

--
-- Table structure for table `t_pegawailoket`
--

CREATE TABLE `t_pegawailoket` (
  `pegawai_id` int(200) NOT NULL,
  `pegawai_nama` varchar(200) NOT NULL,
  `KPRK` int(11) NOT NULL,
  `pegawai_no_hp` varchar(200) NOT NULL,
  `pegawai_email` varchar(200) NOT NULL,
  `pegawai_pos` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pegawailoket`
--

INSERT INTO `t_pegawailoket` (`pegawai_id`, `pegawai_nama`, `KPRK`, `pegawai_no_hp`, `pegawai_email`, `pegawai_pos`) VALUES
(111222, 'Ahmad', 25600, '0822132132', 'dermawan@admin', 97810023),
(111223, 'Imanuel Septian', 25000, '082160921563', 'aweng@gmail.com', 89011346),
(111224, 'Muhammad Akbar', 26100, '085678960', 'golem@golem.com', 90778431),
(111225, 'doni', 10900, '089862315', 'doni@gmail.com', 76538904),
(111226, 'kevin', 27300, '0821437890', 'kevin@gmail.com', 98057869),
(111227, 'M. Ilham', 26200, '089765301', 'esnacor@specialone.com', 87015578),
(111228, 'Mas Hestu', 10000, '08224563', 'meliodas@gmail.com', 17028896),
(111229, 'Estarossa', 12000, '08659020', 'king@king.com', 57891045),
(111230, 'nadia', 13000, '089877641', 'nadia@nadia.com', 90238806),
(111233, 'ERK', 25000, '081221104196', 'admin@admin.com', 39232247),
(111234, 'CIMAHI', 27300, '081221104196', 'admin@admin.com', 35077936),
(111235, 'Elisabeth', 10000, '082160921563', 'elisabeth@gmail.com', 98985366),
(111236, 'doni m', 26200, '089764512', 'doni@gmail.com', 11836342);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL,
  `user_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`, `user_level`) VALUES
(8, 'Mas Martin', 'martinn', '0192023a7bbd73250516f069df18b500', '1925912498_Avatar 03.jpg', 'administrator'),
(25, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', '1041934867_admin.png', 'administrator'),
(26, 'momon', 'momon', '15de21c670ae7c3f6f3f1f37029303c9', '1211853248_714029818_1041934867_admin.png', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `validasi`
--

CREATE TABLE `validasi` (
  `pegawai_id` int(10) NOT NULL,
  `pegawai_nama` varchar(200) NOT NULL,
  `KPRK` int(11) NOT NULL,
  `no_rek_giro` varchar(20) NOT NULL,
  `pegawai_no_hp` varchar(200) NOT NULL,
  `pegawai_email` varchar(200) NOT NULL,
  `pegawai_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `validasi`
--

INSERT INTO `validasi` (`pegawai_id`, `pegawai_nama`, `KPRK`, `no_rek_giro`, `pegawai_no_hp`, `pegawai_email`, `pegawai_level`) VALUES
(111222, 'Ahmad', 25600, '1676482554', '0822132132', 'dermawan@admin', 'Aktif'),
(111223, 'Imanuel Septian', 25000, '29184007', '082160921563', 'aweng@gmail.com', 'Tidak Aktif'),
(111224, 'Muhammad Akbar', 26100, '601370137', '085678960', 'golem@golem.com', 'Blokir'),
(111225, 'doni', 10900, '673650740', '089862315', 'doni@gmail.com', 'Blokir'),
(111226, 'kevin', 27300, '2120592478', '0821437890', 'kevin@gmail.com', 'Aktif'),
(111230, 'nadia', 13000, '960146765', '089877641', 'nadia@nadia.com', 'Blokir'),
(111233, 'ERK', 25000, '339134293', '081221104196', 'admin@admin.com', 'Tidak Aktif'),
(111234, 'CIMAHI', 27300, '981293014', '081221104196', 'admin@admin.com', 'Aktif'),
(111235, 'Elisabeth', 10000, '737452149', '082160921563', 'elisabeth@gmail.com', 'Aktif'),
(111236, 'doni m', 26200, '750444818', '089764512', 'doni@gmail.com', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`jenis_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indexes for table `loket`
--
ALTER TABLE `loket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loket_saldo`
--
ALTER TABLE `loket_saldo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pospay`
--
ALTER TABLE `pospay`
  ADD PRIMARY KEY (`id_pospay`);

--
-- Indexes for table `ref_kantor`
--
ALTER TABLE `ref_kantor`
  ADD PRIMARY KEY (`kodekantor`);

--
-- Indexes for table `ref_kecamatan`
--
ALTER TABLE `ref_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `ref_kelurahan`
--
ALTER TABLE `ref_kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- Indexes for table `ref_kota`
--
ALTER TABLE `ref_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `ref_negara`
--
ALTER TABLE `ref_negara`
  ADD PRIMARY KEY (`id_negara`);

--
-- Indexes for table `ref_produk_pospay`
--
ALTER TABLE `ref_produk_pospay`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `ref_provinsi`
--
ALTER TABLE `ref_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `ref_regional`
--
ALTER TABLE `ref_regional`
  ADD PRIMARY KEY (`regional_kode`);

--
-- Indexes for table `tarif_paket`
--
ALTER TABLE `tarif_paket`
  ADD PRIMARY KEY (`id_tarif`);

--
-- Indexes for table `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `t_pegawailoket`
--
ALTER TABLE `t_pegawailoket`
  ADD PRIMARY KEY (`pegawai_id`),
  ADD UNIQUE KEY `pegawai_nama` (`pegawai_nama`),
  ADD UNIQUE KEY `pegawai_nama_2` (`pegawai_nama`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `validasi`
--
ALTER TABLE `validasi`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval`
--
ALTER TABLE `approval`
  MODIFY `pegawai_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111237;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `jenis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id_kurir` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loket`
--
ALTER TABLE `loket`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111237;

--
-- AUTO_INCREMENT for table `loket_saldo`
--
ALTER TABLE `loket_saldo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pospay`
--
ALTER TABLE `pospay`
  MODIFY `id_pospay` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ref_kantor`
--
ALTER TABLE `ref_kantor`
  MODIFY `kodekantor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29401;

--
-- AUTO_INCREMENT for table `ref_kecamatan`
--
ALTER TABLE `ref_kecamatan`
  MODIFY `id_kecamatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ref_kelurahan`
--
ALTER TABLE `ref_kelurahan`
  MODIFY `id_kelurahan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ref_kota`
--
ALTER TABLE `ref_kota`
  MODIFY `id_kota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_negara`
--
ALTER TABLE `ref_negara`
  MODIFY `id_negara` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_produk_pospay`
--
ALTER TABLE `ref_produk_pospay`
  MODIFY `id_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ref_provinsi`
--
ALTER TABLE `ref_provinsi`
  MODIFY `id_provinsi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_regional`
--
ALTER TABLE `ref_regional`
  MODIFY `regional_kode` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99005;

--
-- AUTO_INCREMENT for table `tarif_paket`
--
ALTER TABLE `tarif_paket`
  MODIFY `id_tarif` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `topup`
--
ALTER TABLE `topup`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `t_pegawailoket`
--
ALTER TABLE `t_pegawailoket`
  MODIFY `pegawai_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111237;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `validasi`
--
ALTER TABLE `validasi`
  MODIFY `pegawai_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111237;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
