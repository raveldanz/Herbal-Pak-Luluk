/*
SQLyog Community v13.3.1 (64 bit)
MySQL - 10.4.22-MariaDB : Database - herbal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`herbal` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `herbal`;

/*Table structure for table `pesanan` */

DROP TABLE IF EXISTS `pesanan`;

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `produk` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT 1,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_pesanan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pesanan` */

insert  into `pesanan`(`id_pesanan`,`nama`,`hp`,`alamat`,`produk`,`jumlah`,`tanggal`,`created_at`) values 
(1,'Budi Santoso','081234567890','Surabaya','Balsem Terapi Panas 40gr',2,'2025-01-10','2026-06-20 02:25:30'),
(2,'Siti Aminah','082345678901','Sidoarjo','Balsem Terapi Hangat 20gr',1,'2025-01-11','2026-06-20 02:25:30'),
(3,'Ahmad Fauzi','083456789012','Gresik','Kapsul Herbal',3,'2025-01-12','2026-06-20 02:25:30'),
(4,'Dewi Lestari','084567890123','Mojokerto','Minyak Terapi',1,'2025-01-13','2026-06-20 02:25:30');

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `produk` */

insert  into `produk`(`id_produk`,`nama_produk`,`kategori`,`harga`,`keterangan`) values 
(1,'Balsem Terapi Panas 40gr','Balsem',35000,'Meredakan pegal & nyeri otot'),
(2,'Balsem Terapi Hangat 20gr','Balsem',20000,'Sensasi hangat lembut sehari-hari'),
(3,'Balsem Terapi Panas 20gr','Balsem',20000,'Ukuran kecil praktis dibawa'),
(4,'Balsem Terapi Hangat 40gr','Balsem',35000,'Meredakan pegal ringan & nyeri sendi'),
(5,'Minyak Terapi','Minyak Terapi',60000,'Untuk pijat & perawatan tubuh'),
(6,'Minyak Kayu Putih','Minyak Angin',30000,'Meredakan masuk angin & perut kembung'),
(7,'Minyak Angin Aroma','Minyak Angin',20000,'Meredakan pusing & mual'),
(8,'Minyak Angin','Minyak Angin',18000,'Mengatasi gejala masuk angin'),
(9,'Kapsul Herbal','Kapsul',60000,'Suplemen herbal harian');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
