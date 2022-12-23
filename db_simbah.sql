-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 18, 2022 at 03:00 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simbah`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `busuk` int(11) NOT NULL,
  `rusak` int(11) NOT NULL,
  `berat_buah` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `id_supplier` int(12) DEFAULT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `kode_barang`, `nama_barang`, `harga_beli`, `harga_jual`, `stok`, `busuk`, `rusak`, `berat_buah`, `image`, `id_supplier`, `deskripsi`) VALUES
(26, 'A001', 'Alpukat Mentega', 25000, 28000, 100, 0, 0, 600, 'Alpukat Mentega.jpg', 5, 'Alpukat mentega memiliki daging buah lembut dan bersih. Bermanfaat untuk mengontrol kolestrol dalam tubuh. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Untuk penyimpanan disimpan di suhu ruang atau lemari pendingin'),
(27, 'A002', 'Anggur Ungu', 30000, 33000, 100, 0, 0, 100, 'Anggur Ungu.jpg', 5, 'Anggur amur terdapat 69 kalori (2% lemak, 94% karb, 4% prot.) Bermanfaat untuk memperbaiki kesehatan gigi, membantu mineralisasi gigi dan mencegah pendarahan akar gigi. Dikemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin'),
(28, 'A003', 'Anggur Hijau', 20000, 23000, 100, 0, 0, 100, 'Anggur Hijau.jpg', 5, 'Anggur muscat(hijau) terdapat 124 kalori (0% lemak, 99% karb, 1% prot.). Bermanfaat untuk meningkatkan kesehatan tulang dan otot, menurunkan tekanan darah. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Untuk penyimpanan disimpan di suhu ruang atau lemari pendingin'),
(29, 'A004', 'Anggur Merah', 34000, 37000, 100, 0, 0, 100, 'Anggur Merah.jpg', 5, 'Anggur swenson (merah) terdapat 3 kalori (2% lemak, 94% karb, 4% prot). Bermanfaat untuk menurunkan resiko diabetes, membantu menurunkan berat badan. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Untuk penyimpanan disimpan di suhu ruang atau lemari pendingin'),
(30, 'A005', 'Apel Fuji', 29000, 32000, 100, 0, 0, 125, 'Apel Fuji.jpg', 5, 'Apel fuji memiliki ciri berkulit kemerahan dengan warna daging buah kekuningan. Bermanfaat untuk Meningkatkan sistem kekebalan tubuh, Mengendalikan berat badan. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Untuk penyimpanan disimpan di suhu ruang atau lemari pendingin.'),
(31, 'A006', 'Apel Hijau', 18000, 21000, 100, 0, 0, 125, 'Apel Hijau.jpg', 5, 'Apel malang atau apel hijau berwarna hijau muda kekuningan, tekstur dagingnya agak keras dengan sedikit kandungan air. Bermanfaat untuk membantu mengendalikan kadar gula dalam darah. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Untuk penyimpanan disimpan di suhu ruang atau lemari pendingin'),
(32, 'B001', 'Belimbing Madu', 12000, 15000, 100, 0, 0, 900, 'Belimbing Madu.jpg', 5, 'Apel malang atau apel hijau berwarna hijau muda kekuningan, tekstur dagingnya agak keras dengan sedikit kandungan air. Bermanfaat untuk membantu mengendalikan kadar gula dalam darah. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Untuk penyimpanan disimpan di suhu ruang atau lemari pendingin.'),
(33, 'B002', 'Belimbing Wuluh', 4000, 7000, 100, 0, 0, 20, 'Belimbing Wuluh.jpg', 5, 'Belimbing wuluh berbentuk lonjong dan memiliki rasa masam. Bermanfaat untuk meningkatkan daya tahan tubuh, menurunkan tekanan darah tinggi. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin'),
(34, 'B003', 'Bengkoang', 13000, 16000, 100, 0, 0, 500, 'Bengkoang.jpg', 5, 'Bengkoang mengandung kalsium, magnesium, tembaga, fosfor, dan zat besi. Bermanfaat untuk meningkatkan kepadatan tulang serta membantu menyembuhkan dan memicu pertumbuhan tulang baru yang rusak. Simpan pada suhu ruang atau lemari pendingin. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman.'),
(35, 'B004', 'Blewah', 5000, 8000, 100, 0, 0, 1000, 'Blewah.jpg', 5, 'Blewah berwarna jingga dan memiliki bercak hijau. Bermanfaat untuk menurunkan berat badan. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin'),
(36, 'B005', 'Blueberry', 100000, 105000, 100, 0, 0, 100, 'Blueberry.jpg', 5, 'Blueberry memiliki ukuran 5-15 milimeter, di setiap ujung buah terdapat bentuk mahkota. Bermanfaat untuk meningkatkan kesahatan otak. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin'),
(37, 'B006', 'Buah Naga', 20000, 25000, 100, 0, 0, 700, 'Buah Naga.jpg', 5, 'Buah naga warna kuning pada kulit buah dan putih pada daging buah. Bermanfaat untuk Mengurangi risiko kanker, Meningkatkan kesehatan jantung. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin'),
(38, 'B007', 'Buah Naga Merah', 23000, 26000, 100, 0, 0, 700, 'Buah Naga Merah.jpg', 5, 'Buah naga merah kulitnya memiliki sisik berukuran besar, warna kulitnya merah keunguan, cenderung merah jambu. Bermanfaat untuk mengontrol kadar gula darah, meningkatkan sistem kekebalan tubuh. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(39, 'D001', 'Delima', 21000, 24000, 100, 0, 0, 500, 'Delima.jpg', 5, 'Delima Berbentuk bulat, berdiameter antara 15-25 cm, dan kulit buahnya keras. Bermanfaat untuk mengurangi kadar kolestrol jahat. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(40, 'D002', 'Duku', 20000, 23000, 100, 0, 0, 200, 'Duku.jpg', 5, 'Duku dagingnya berwarna putih dan memiliki rasa yang sangat manis Bermanfaat untuk membantu proses pengolahan karbohidrat menjadi energi dan menjaga keselarasan fungsi sistem saraf. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin'),
(41, 'D003', 'Durian Montong', 60000, 70000, 100, 0, 0, 5000, 'Durian Montong.jpg', 5, 'Durian montong bentuk bulat, lonjong, atau bulat telur. Ukuran diameter buah durian ialah sekitar 20 â€“ 25 cm. Bermanfaat untuk menjaga kesehatan sistem pencernaan. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman.'),
(42, 'J001', 'Jambu Air', 10000, 13000, 100, 0, 0, 500, 'Jambu Air.jpg', 5, 'Jambu air memiliki kandungan antijamur, antibakteri, dan antiperadangan. Bermanfaat untuk membantu atasi masalah kulit wajah, seperti jerawat. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin'),
(43, 'J002', 'Jambu Kristal', 5000, 8000, 100, 0, 0, 700, 'Jambu Kristal.jpg', 5, 'Jambu kristal  dari daun, kulit, maupun daging buahnya, mengandung flavonoid yang bersifat antibakteri. Bermanfaat untuk membantu meredakan batuk dan flu. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin'),
(44, 'J003', 'Jambu Kristal Merah', 7000, 10000, 100, 0, 0, 700, 'Jambu Kristal Merah.jpg', 5, 'Jambu kristal merah Berwarna merah segar, dagingnya sangat tebal Bermanfaat untuk mengurangi lender di tenggorokan. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(45, 'J004', 'Jambu Monyet', 180000, 20000, 100, 0, 0, 700, 'Jambu Monyet.jpg', 5, 'Jambu monyet memilik Buah jambu monyet yakni kacang mete mengandung lemak yang baik untuk meningkatkan kesehatan jantung, dan menurunkan kadar trigliserida tinggi yang dikaitkan dengan peningkatan risiko penyakit jantung. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(46, 'J005', 'Jeruk Mandarin', 55000, 58000, 100, 0, 0, 800, 'Jeruk Mandarin.jpg', 5, 'Jeruk mandarin kulitnya mengkilap dengan warna oranye terang. Bermanfaat untuk meningkatkan fungsi otak. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(47, 'J006', 'Jeruk Nipis', 10000, 13000, 100, 0, 0, 400, 'Jeruk Nipis.jpg', 5, 'Jeruk nipis memiliki kulit keras, berwarna hijau tua atau kuning, ukurannya bulat sebesar bola bekel. Bermanfaat untuk Menurunkan berat badan. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(48, 'K001', 'Kacang Tanah', 7000, 10000, 100, 0, 0, 500, 'Kacang Tanah.jpg', 5, 'Kacang tanah mengandung energi sebesar 525 kilokalori, protein 27,9 gram, karbohidrat 17,4 gram, lemak 42,7 gram, kalsium 315 miligram, fosfor 456 miligram, dan zat besi 5,7 miligram. Bermanfaat untuk Menjaga kesehatan jantung, meningkatkan metabolisme lemak dan karbohidrat. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman.'),
(49, 'K002', 'Klengkeng', 15000, 18000, 100, 0, 0, 400, 'Klengkeng.jpg', 5, 'Kelengkeng, 50-100 gram buah terdapat 150-250 kalori. Bermanfaat untuk Meningkatkan daya tahan tubuh. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(50, 'K003', 'Kiwi', 36000, 40000, 100, 0, 0, 600, 'Kiwi.jpg', 5, 'Kiwi mengandungan vitamin C. Bermanfaat untuk meningkatkan daya tahan tubuh, menurunkan tekanan darah. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(51, 'K004', 'Kurma Tunisia', 19000, 23000, 100, 0, 0, 200, 'Kurma Tunisia.jpg', 5, 'Kurma tunisia minaa mengandung karbohidrat, serat, protein, vitamin B6, besi, magnesium, dan kalium. Bermanfaat untuk Membantu Mencukupi Kebutuhan Gizi Menjaga Kesehatan Mata dan Kulit. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman.'),
(52, 'L001', 'Leci', 42000, 45000, 100, 0, 0, 400, 'Leci.jpg', 5, 'Leci memiliki bentuk yang sangat bervariasi, dari bulat lonjong sampai berbentuk hati, panjangnya 5 cm. Bermanfaat untuk Menurunkan darah tinggi, menjaga kekebalan tubuh. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(53, 'L002', 'Lemon', 27000, 30000, 100, 0, 0, 800, 'Lemon.jpg', 5, 'Lemon mengandung vitamin C yang tinggi. Bermanfaat untuk meningkatkan sistem kekebalan tubuh, menyehatkan saluran pencernaan. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(54, 'M001', 'Mangga Harum Manis', 15000, 18000, 100, 0, 0, 900, 'Mangga Harum Manis.jpg', 5, 'Mangga harum manis mengandung 272 kJ energi; 0,51 gram protein; 0,27 gram lemak; dan 17 gram karbohidrat. Bermanfaat untuk penurunan risiko degenerasi makula, penurunan risiko kanker usus besar, kesehatan tulang bahkan manfaat bagi kulit dan rambut. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(55, 'M002', 'Manggis', 37000, 40000, 100, 0, 0, 650, 'Manggis.jpg', 5, 'Manggis mengandung sejumlah kalium, tembaga, magnesium dan mangan. Bermanfaat untuk membantu mengendalikan tekanan darah, menurunkan berat badan. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(56, 'M003', 'Melon', 7000, 10000, 100, 0, 0, 2500, 'Melon.jpg', 5, 'Melon mengandung vitamin A, B, dan C, serta mengandung protein, kalsium, dan fosfor. Bermanfaat untuk membantu menurunkan tekanan darah tinggi. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(57, 'N001', 'Nanas', 11000, 14000, 100, 0, 0, 1300, 'Nanas.jpg', 5, 'Nanas mengandung gizi yaitu protein, lemak, karbohidrat, fosfor, kalori, zat besi, vitamin (A, B). Bermanfaat untuk menangkal radikal bebas dan memperbaiki kerusakan sel. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(58, 'N002', 'Nangka', 23000, 26000, 100, 0, 0, 7000, 'Nangka.jpg', 5, 'Nangka mengandung  vitamin A dan vitamin C. Bermanfaat untuk meningkatkan sistem kekebalan tubih serta membantu mencegah penyakit. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(59, 'P001', 'Pepaya California', 10000, 13000, 100, 0, 0, 1300, 'Pepaya California.jpg', 5, 'Pepaya california mengandung 235 mg vitamin C. Bermanfaat untuk Meningkatkan Daya Tahan Tubuh Sistem kekebalan tubuh berperan sebagai pelindung terhadap berbagai infeksi yang dapat membuat kamu jatuh sakit. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(60, 'P002', 'Pir', 13000, 16000, 100, 0, 0, 800, 'Pir.jpg', 5, 'Pir mengandung 7,5 miligram vitamin C. Bermanfaat untuk mencegah penyakit jantung. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(61, 'P003', 'Pisang Cavendis', 10000, 13000, 100, 0, 0, 1500, 'Pisang Cavendis.jpg', 5, 'Pisang canvendis terkandung serat, kalium, vitamin B6, vitamin C, dan berbagai antioksidan serta fitonutrien yang dibutuhkan tubuh. Bermanfaat untuk membantu menjaga kesahatan mata. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(62, 'R001', 'Rambutan Binjai', 10000, 13000, 100, 0, 0, 200, 'Rambutan Binjai.jpg', 5, 'Rambutan binjai memiliki kandungan Vitamin A, Serat, Magnesium, Protein, Potassium, Kalsium, Zat Besi, dan Karbohidrat..Bermanfaat untuk Meningkatkan daya tahan tubuh. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(63, 'S001', 'Salak Pondoh', 7000, 10000, 100, 0, 0, 400, 'Salak Pondoh.jpg', 5, 'Salak pondok mengandung zat besi. Bermanfaat untuk menjaga kesehatan mata. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(64, 'S002', 'Sawo', 10000, 13000, 100, 0, 0, 300, 'Sawo.jpg', 5, 'Sawo yang matang memiliki kulit agak kendor dan tidak mengeluarkan getah saat dipetik. Bermanfaat untuk menjaga kesehatan mata. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(65, 'S003', 'Semangka Merah', 7000, 10000, 100, 0, 0, 2300, 'Semangka Merah.jpg', 5, 'Semangka memiliki kulit berwarna hijau dengan corak yang saling berbeda. Bermanfaat untuk Meningkatkan kesehatan jantung. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(66, 'S004', 'Semangka Kuning', 7000, 10000, 100, 0, 0, 2200, 'Semangka Kuning.jpg', 5, 'Semangka kuning memiliki daging buah berwarna kuning. Bermanfaat untuk Membantu mengontrol tekanan darah tinggi. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(67, 'S005', 'Singkong', 5000, 7000, 100, 0, 0, 1000, 'Singkong.jpg', 5, 'Singkong memiliki umbi berwarna putih kekuningan. Bermanfaat untuk melindungi tubuh dari efek radikal bebas, mencegah penyakit jantung, hingga mengatasi kerutan di kulit. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman.'),
(68, 'S006', 'Sirsak', 21000, 24000, 100, 0, 0, 1100, 'Sirsak.jpg', 5, 'Sirsak kulit berwarna hijau, dagingnya lunak dan berwarna putih serta menghasilkan aroma yang khas. Bermanfaat untuk  mengurangi garis-garis kerutan, serta mengurangi gejala penuaan kulit. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.'),
(69, 'S007', 'Strawberry', 35000, 39000, 100, 0, 0, 200, 'Strawberry.jpg', 5, 'Strawberry umunya berbentuk kerucut bulat. Bermanfaat untuk Menjaga kesehatan mata dan rambut. Buah ini kami kemas dengan rapi dan aman. Kualitas buah selalu fresh dan bagus saat pengiriman. Simpan pada suhu ruang atau lemari pendingin.');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_daerah` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_daerah`, `tarif`) VALUES
(1, 'Sumbersari', 2000),
(2, 'tegal gede', 3000),
(3, 'jawa', 2000),
(4, 'Riau', 3000),
(8, 'Patrang', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(11, 47, 'anam', 'mandiri', 185000, '2022-12-09', '20221209150015alpukatt1.png'),
(12, 24, 'anam', 'BCA', 58000, '2022-12-09', '20221209175431alpukatt4.png'),
(13, 48, 'dayat', 'mandiri', 19000, '2022-12-10', '20221210061448DESAIN KEMASAN DEPAN.png'),
(14, 45, 'fais', 'mandiri', 120000, '2022-12-10', '20221210080204alpukatt3.png'),
(15, 46, 'anam', 'mandiri', 115000, '2022-12-10', '20221210111341DESAIN KEMASAN BELAKANG.png'),
(16, 52, 'anam', 'BCA', 30000, '2022-12-10', '20221210124918motor.jpg'),
(17, 53, 'Ahmad Hidayat', 'mandiri', 12000, '2022-12-10', '20221210171938DESAIN KEMASAN BELAKANG.png'),
(18, 55, 'yudis', 'BNI', 58000, '2022-12-12', '20221212073206motor.jpg'),
(19, 57, 'ima', 'bri', 108000, '2022-12-12', '20221212075624motor.jpg'),
(20, 15, 'Ahmad Hidayat', 'mandiri', 53000, '2022-12-15', '20221215055819Blewah.jpg'),
(21, 84, 'anam', 'bri', 48000, '2022-12-15', '20221215062230blueberry.jpg'),
(22, 92, 'anam', 'bri', 27000, '2022-12-15', '20221215072501Jeruk Nipis.jpg'),
(23, 128, 'fais', 'bri', 35000, '2022-12-16', '20221216013947buah naga merah.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` float NOT NULL,
  `nama_daerah` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembayaran` varchar(100) NOT NULL DEFAULT 'pending',
  `resi_pengiriman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pembeli`, `id_ongkir`, `diskon`, `tanggal_pembelian`, `total_pembelian`, `nama_daerah`, `tarif`, `alamat_pengiriman`, `status_pembayaran`, `resi_pengiriman`) VALUES
(1, 16, 0, 0, '2022-12-08', 100000, '', 0, '', 'pending', ''),
(2, 16, 0, 0, '2022-12-09', 200000, '', 0, '', 'pending', ''),
(3, 17, 0, 0, '2022-12-14', 400000, '', 0, '', 'pending', ''),
(4, 18, 0, 0, '2022-12-08', 200000, '', 0, '', 'pending', ''),
(5, 4, 0, 0, '2022-12-07', 103000, '', 0, '', 'pending', ''),
(6, 4, 0, 0, '2022-12-07', 103000, '', 0, '', 'pending', ''),
(7, 4, 0, 0, '2022-12-07', 103000, '', 0, '', 'pending', ''),
(8, 4, 0, 0, '2022-12-07', 103000, '', 0, '', 'pending', ''),
(9, 4, 0, 0, '2022-12-07', 103000, '', 0, '', 'pending', ''),
(10, 4, 0, 0, '2022-12-07', 103000, '', 0, '', 'pending', ''),
(11, 4, 0, 0, '2022-12-07', 103000, '', 0, '', 'pending', ''),
(12, 4, 0, 0, '2022-12-07', 103000, '', 0, '', 'pending', ''),
(13, 4, 0, 0, '2022-12-07', 101000, '', 0, '', 'pending', ''),
(15, 4, 0, 0, '2022-12-07', 53000, '', 0, '', 'sudah kirim pembayaran', ''),
(16, 4, 0, 0, '2022-12-07', 55000, '', 0, '', 'pending', ''),
(17, 4, 0, 0, '2022-12-07', 53000, '', 0, '', 'pending', ''),
(18, 4, 0, 0, '2022-12-07', 12000, '', 0, '', 'pending', ''),
(19, 4, 0, 0, '2022-12-07', 35000, '', 0, '', 'pending', ''),
(20, 25, 0, 0, '2022-12-07', 60000, '', 0, '', 'pending', ''),
(21, 4, 0, 0, '2022-12-07', 30000, '', 0, '', 'pending', ''),
(22, 25, 0, 0, '2022-12-07', 68000, '', 0, '', 'pending', ''),
(24, 28, 0, 0, '2022-12-07', 58000, '', 0, '', 'barang dikirim', 'alp123'),
(25, 28, 0, 0, '2022-12-07', 58000, '', 0, '', 'pending', ''),
(27, 28, 0, 0, '2022-12-07', 20000, '', 0, '', 'pending', ''),
(29, 28, 0, 0, '2022-12-08', 23000, '', 0, '', 'pending', ''),
(30, 25, 0, 0, '2022-12-08', 35000, '', 0, '', 'pending', ''),
(31, 25, 0, 0, '2022-12-08', 40000, '', 0, '', 'pending', ''),
(32, 28, 0, 0, '2022-12-08', 35000, '', 0, '', 'pending', ''),
(33, 25, 0, 0, '2022-12-08', 30000, '', 0, '', 'pending', ''),
(35, 24, 0, 0, '2022-12-08', 53000, '', 0, '', 'pending', ''),
(36, 24, 0, 0, '2022-12-08', 45000, '', 0, '', 'pending', ''),
(37, 24, 0, 0, '2022-12-08', 35000, '', 0, '', 'pending', ''),
(38, 24, 0, 0, '2022-12-08', 65000, '', 0, '', 'pending', ''),
(39, 24, 0, 0, '2022-12-08', 55000, '', 0, 'jl baturaden jember jawa timur kode pos 67272', 'pending', ''),
(40, 24, 0, 0, '2022-12-08', 55000, '', 0, 'jember ', 'pending', ''),
(41, 24, 0, 0, '2022-12-08', 18000, '', 0, 'jember', 'pending', ''),
(42, 24, 0, 0, '2022-12-08', 130000, '', 0, 'jember 67898', 'pending', ''),
(43, 25, 0, 0, '2022-12-09', 100000, '', 0, 'probolinggo Jatim 57567', 'pending', ''),
(44, 25, 0, 0, '2022-12-09', 30000, '', 0, 'jember', 'pending', ''),
(45, 25, 0, 0, '2022-12-09', 120000, '', 0, 'jember', 'barang dikirim', 'bsa123'),
(46, 28, 0, 0, '2022-12-09', 115000, '', 0, 'jember', 'barang dikirim', 'abc678'),
(47, 28, 0, 0, '2022-12-09', 185000, '', 0, 'jember\r\n', 'barang dikirim', 'def456'),
(48, 28, 0, 0, '2022-12-10', 19000, '', 0, 'jember', 'barang dikirim', 'abc123'),
(49, 25, 0, 0, '2022-12-10', 58000, '', 0, 'panti', 'pending', 'null'),
(50, 28, 0, 0, '2022-12-10', 82000, '', 0, 'jember', 'pending', 'null'),
(51, 28, 0, 0, '2022-12-10', 38000, '', 0, 'jember', 'pending', 'null'),
(52, 28, 0, 0, '2022-12-10', 30000, '', 0, 'jember', 'lunas', 'zxy'),
(53, 4, 0, 0, '2022-12-10', 12000, '', 0, 'jember\r\n', 'barang dikirim', 'zxy'),
(54, 28, 1, 0, '2022-12-11', 80000, 'Sumbersari', 5000, 'jember', 'pending', 'null'),
(55, 28, 3, 0, '2022-12-12', 58000, 'jawa', 2000, 'jember', 'lunas', 'xyz123'),
(56, 28, 3, 0, '2022-12-12', 32000, 'jawa', 2000, 'besuki', 'pending', 'null'),
(57, 4, 2, 0, '2022-12-12', 108000, 'tegal gede', 3000, 'jember', 'lunas', 'ima123'),
(58, 16, 1, 0, '2022-12-14', 1000000, 'jember', 5000, 'jember', 'pending', '112'),
(59, 16, 1, 0, '2022-11-01', 1000000, 'jember', 5000, 'jember', 'pending', '543'),
(60, 25, 4, 0, '2022-12-14', 248000, 'Riau', 3000, 'jember', 'pending', 'null'),
(61, 25, 1, 0, '2022-12-14', 9000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(62, 25, 4, 0, '2022-12-14', 28000, 'Riau', 3000, 'jember', 'pending', 'null'),
(63, 28, 1, 0, '2022-12-14', 9000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(64, 4, 2, 0, '2022-12-14', 10000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(65, 28, 2, 0, '2022-12-14', 18000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(66, 28, 2, 0, '2022-12-14', 28000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(67, 28, 2, 0, '2022-12-14', 35300, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(68, 28, 2, 0, '2022-12-14', 28000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(69, 25, 2, 0, '2022-12-14', 25300, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(70, 28, 2, 0, '2022-12-14', 38000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(71, 25, 2, 0, '2022-12-14', 35000, 'tegal gede', 3000, 'panti', 'pending', 'null'),
(72, 25, 3, 0, '2022-12-14', 35000, 'jawa', 2000, 'jember', 'pending', 'null'),
(73, 25, 3, 0, '2022-12-14', 0, 'jawa', 2000, 'jember', 'pending', 'null'),
(74, 25, 2, 0, '2022-12-14', 35000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(75, 28, 2, 0, '2022-12-14', 38000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(76, 28, 1, 0, '2022-12-14', 122000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(77, 4, 2, 0, '2022-12-14', 10000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(78, 4, 4, 0, '2022-12-14', 45000, 'Riau', 3000, 'jember', 'pending', 'null'),
(79, 25, 2, 0, '2022-12-15', 35000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(80, 25, 2, 0, '2022-12-15', 35000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(81, 25, 2, 0, '2022-12-15', 35000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(82, 25, 2, 0, '2022-12-15', 35000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(83, 25, 1, 0, '2022-12-15', 35000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(84, 28, 2, 0, '2022-12-15', 48000, 'tegal gede', 3000, 'jember', 'lunas', 'dfg345'),
(85, 25, 1, 0, '2022-12-15', 15000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(86, 25, 2, 0, '2022-12-15', 35000, '1', 1, 'jember\r\n', 'pending', 'null'),
(87, 25, 2, 0, '2022-12-15', 35000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(88, 25, 2, 0, '2022-12-15', 0, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(89, 25, 1, 0, '2022-12-15', 35000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(90, 28, 2, 0, '2022-12-15', 38000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(91, 28, 2, 0, '2022-12-15', 28000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(92, 28, 3, 0, '2022-12-15', 27000, 'jawa', 2000, 'jember', 'lunas', 'wer234'),
(93, 4, 2, 0, '2022-12-15', 30000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(94, 4, 2, 0, '2022-12-15', 0, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(95, 4, 2, 0, '2022-12-15', 0, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(96, 4, 1, 0, '2022-12-15', 37000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(97, 4, 1, 0, '2022-12-15', 0, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(98, 4, 1, 0, '2022-12-15', 25000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(99, 4, 1, 0, '2022-12-15', 25000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(100, 4, 3, 0, '2022-12-15', 0, 'jawa', 2000, 'jember', 'pending', 'null'),
(101, 4, 1, 0, '2022-12-15', 25000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(102, 4, 1, 0, '2022-12-15', 2000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(103, 4, 1, 0, '2022-12-15', 25000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(104, 4, 2, 0, '2022-12-15', 0, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(105, 4, 2, 0, '2022-12-15', 0, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(106, 4, 1, 0, '2022-12-15', 1480, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(107, 4, 1, 0, '2022-12-15', 1110, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(108, 4, 2, 0, '2022-12-15', 1140, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(109, 4, 1, 0, '2022-12-15', 1110, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(110, 4, 2, 0, '2022-12-15', 1140, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(111, 4, 2, 0, '2022-12-15', 11400, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(112, 4, 2, 0, '2022-12-15', 27990, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(113, 4, 2, 0, '2022-12-15', 27500, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(114, 4, 2, 0, '2022-12-15', 2500, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(115, 4, 2, 0, '2022-12-15', 2500, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(116, 4, 2, 0, '2022-12-15', 27500, 'tegal gede', 3000, '', 'pending', 'null'),
(117, 4, 1, 0, '2022-12-15', 31500, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(118, 4, 1, 0, '2022-12-15', -18000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(119, 4, 2, 0, '2022-12-15', -12000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(120, 4, 2, 0, '2022-12-15', 28000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(121, 25, 2, 0, '2022-12-15', 33000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(122, 25, 2, 0, '2022-12-15', 1000, 'tegal gede', 3000, 'jj', 'pending', 'null'),
(123, 25, 3, 2, '2022-12-15', 25000, 'jawa', 2000, 'jember', 'pending', 'null'),
(124, 28, 2, 0, '2022-12-15', 38000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(125, 25, 2, 1, '2022-12-16', 9000, 'tegal gede', 3000, 'jember', 'pending', 'null'),
(126, 25, 1, 5, '2022-12-16', 82000, 'Sumbersari', 2000, 'jember', 'pending', 'null'),
(127, 25, 3, 5, '2022-12-16', 32000, 'jawa', 2000, 'jember', 'pending', 'null'),
(128, 25, 2, 3, '2022-12-16', 35000, 'tegal gede', 3000, 'jember', 'sudah kirim pembayaran', 'null'),
(129, 28, 1, 0, '2022-12-16', 17000, 'Sumbersari', 2000, 'ff', 'pending', 'null'),
(130, 4, 2, 3, '2022-12-16', 7000, 'tegal gede', 3000, 'jember', 'pending', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_buah`
--

CREATE TABLE `pembelian_buah` (
  `id_pembelian_buah` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_buah`
--

INSERT INTO `pembelian_buah` (`id_pembelian_buah`, `id_pembelian`, `id_barang`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(1, 1, 16, 1, '', 0, 0, 0, 0),
(2, 1, 17, 1, '', 0, 0, 0, 0),
(5, 15, 18, 1, '', 0, 0, 0, 0),
(6, 15, 21, 1, '', 0, 0, 0, 0),
(7, 16, 18, 1, '', 0, 0, 0, 0),
(8, 16, 21, 1, '', 0, 0, 0, 0),
(9, 17, 18, 1, '', 0, 0, 0, 0),
(10, 17, 21, 1, '', 0, 0, 0, 0),
(11, 18, 22, 1, '', 0, 0, 0, 0),
(12, 19, 16, 1, '', 0, 0, 0, 0),
(13, 20, 15, 1, '', 0, 0, 0, 0),
(14, 20, 16, 1, '', 0, 0, 0, 0),
(15, 21, 15, 1, '', 0, 0, 0, 0),
(16, 22, 18, 1, '', 0, 0, 0, 0),
(17, 22, 20, 1, '', 0, 0, 0, 0),
(18, 23, 17, 2, 'Anggur Hijau', 25000, 550, 1100, 50000),
(19, 23, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(20, 25, 15, 1, 'Alpukat Mentega', 25000, 500, 500, 25000),
(21, 25, 20, 1, 'Apel Fuji', 30000, 500, 500, 30000),
(22, 26, 19, 1, 'Apel Hijau', 18000, 450, 450, 18000),
(23, 27, 21, 1, 'Belimbing Madu', 15000, 600, 600, 15000),
(24, 28, 22, 1, 'Belimbing Wuluh', 7000, 300, 300, 7000),
(25, 29, 19, 1, 'Apel Hijau', 18000, 450, 450, 18000),
(26, 30, 20, 1, 'Apel Fuji', 30000, 500, 500, 30000),
(27, 31, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(28, 32, 16, 1, 'Anggur Ungu ', 30000, 550, 550, 30000),
(29, 33, 15, 1, 'Alpukat Mentega', 25000, 500, 500, 25000),
(30, 34, 21, 1, 'Belimbing Madu', 15000, 600, 600, 15000),
(31, 35, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(32, 35, 15, 1, 'Alpukat Mentega', 25000, 500, 500, 25000),
(33, 36, 15, 1, 'Alpukat Mentega', 25000, 500, 500, 25000),
(34, 36, 21, 1, 'Belimbing Madu', 15000, 600, 600, 15000),
(35, 37, 20, 1, 'Apel Fuji', 30000, 500, 500, 30000),
(36, 38, 16, 2, 'Anggur Ungu ', 30000, 550, 1100, 60000),
(37, 39, 20, 1, 'Apel Fuji', 50000, 500, 500, 50000),
(38, 40, 20, 1, 'Apel Fuji', 50000, 500, 500, 50000),
(39, 41, 21, 1, 'Belimbing Madu', 15000, 600, 600, 15000),
(40, 42, 16, 3, 'Anggur Ungu ', 30000, 550, 1650, 90000),
(41, 42, 22, 5, 'Belimbing Wuluh', 7000, 300, 1500, 35000),
(42, 43, 15, 2, 'Alpukat Mentega', 25000, 500, 1000, 50000),
(43, 43, 21, 3, 'Belimbing Madu', 15000, 600, 1800, 45000),
(44, 44, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(45, 45, 20, 2, 'Apel Fuji', 50000, 500, 1000, 100000),
(46, 45, 21, 1, 'Belimbing Madu', 15000, 600, 600, 15000),
(47, 46, 16, 2, 'Anggur Ungu ', 30000, 550, 1100, 60000),
(48, 46, 15, 2, 'Alpukat Mentega', 25000, 500, 1000, 50000),
(49, 47, 17, 3, 'Anggur Hijau', 25000, 550, 1650, 75000),
(50, 47, 18, 3, 'Anggur Merah', 35000, 500, 1500, 105000),
(51, 48, 22, 2, 'Belimbing Wuluh', 7000, 300, 600, 14000),
(52, 49, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(53, 49, 19, 1, 'Apel Hijau', 18000, 450, 450, 18000),
(54, 50, 18, 2, 'Anggur Merah', 35000, 500, 1000, 70000),
(55, 50, 22, 1, 'Belimbing Wuluh', 7000, 300, 300, 7000),
(56, 51, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(57, 52, 15, 1, 'Alpukat Mentega', 25000, 500, 500, 25000),
(58, 53, 22, 1, 'Belimbing Wuluh', 7000, 300, 300, 7000),
(59, 54, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(60, 54, 15, 2, 'Alpukat Mentega', 25000, 500, 1000, 50000),
(61, 55, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(62, 55, 22, 3, 'Belimbing Wuluh', 7000, 300, 900, 21000),
(63, 56, 16, 1, 'Anggur Ungu ', 30000, 550, 550, 30000),
(64, 57, 16, 1, 'Anggur Ungu ', 30000, 550, 550, 30000),
(65, 57, 17, 3, 'Anggur Hijau', 25000, 550, 1650, 75000),
(66, 60, 18, 7, 'Anggur Merah', 35000, 500, 3500, 245000),
(67, 61, 22, 1, 'Belimbing Wuluh', 7000, 300, 300, 7000),
(68, 62, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(69, 63, 22, 1, 'Belimbing Wuluh', 7000, 300, 300, 7000),
(70, 64, 22, 1, 'Belimbing Wuluh', 7000, 300, 300, 7000),
(71, 65, 21, 1, 'Belimbing Madu', 15000, 600, 600, 15000),
(72, 66, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(73, 67, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(74, 68, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(75, 69, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(76, 70, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(77, 71, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(78, 72, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(79, 74, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(80, 75, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(81, 76, 27, 10, 'bengkoang', 12000, 10, 100, 120000),
(82, 77, 22, 1, 'Belimbing Wuluh', 7000, 300, 300, 7000),
(83, 78, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(84, 78, 25, 1, 'semangka enak', 20000, 4, 4, 20000),
(85, 79, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(86, 80, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(87, 81, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(88, 82, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(89, 83, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(90, 84, 16, 1, 'Anggur Ungu ', 30000, 550, 550, 30000),
(91, 84, 21, 1, 'Belimbing Madu', 15000, 600, 600, 15000),
(92, 85, 21, 1, 'Belimbing Madu', 15000, 600, 600, 15000),
(93, 86, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(94, 87, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(95, 89, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(96, 90, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(97, 91, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(98, 92, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(99, 93, 16, 1, 'Anggur Ungu ', 30000, 550, 550, 30000),
(100, 94, 16, 1, 'Anggur Ungu ', 30000, 550, 550, 30000),
(101, 95, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(102, 96, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(103, 97, 20, 1, 'Apel Fuji', 50000, 500, 500, 50000),
(104, 98, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(105, 99, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(106, 100, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(107, 101, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(108, 102, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(109, 103, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(110, 104, 16, 1, 'Anggur Ungu ', 30000, 550, 550, 30000),
(111, 105, 16, 1, 'Anggur Ungu ', 30000, 550, 550, 30000),
(112, 106, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(113, 107, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(114, 108, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(115, 109, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(116, 110, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(117, 111, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(118, 112, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(119, 113, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(120, 116, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(121, 117, 16, 1, 'Anggur Ungu ', 30000, 550, 550, 30000),
(122, 118, 16, 1, 'Anggur Ungu ', 30000, 550, 550, 30000),
(123, 119, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(124, 120, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(125, 121, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(126, 122, 22, 1, 'Belimbing Wuluh', 7000, 300, 300, 7000),
(127, 123, 17, 1, 'Anggur Hijau', 25000, 550, 550, 25000),
(128, 124, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(129, 125, 22, 1, 'Belimbing Wuluh', 7000, 300, 300, 7000),
(130, 126, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(131, 126, 20, 1, 'Apel Fuji', 50000, 500, 500, 50000),
(132, 127, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(133, 128, 18, 1, 'Anggur Merah', 35000, 500, 500, 35000),
(134, 129, 21, 1, 'Belimbing Madu', 15000, 600, 600, 15000),
(135, 130, 22, 1, 'Belimbing Wuluh', 7000, 300, 300, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status`) VALUES
(1, 'admin'),
(2, 'pemilik'),
(3, 'pelanggan'),
(4, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(30) NOT NULL,
  `no_telp` char(13) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `no_telp`, `alamat`) VALUES
(5, 'kusnan', '086543345123', 'Probolinggo'),
(10, 'anam', '086543456654', 'Paiton');

-- --------------------------------------------------------

--
-- Table structure for table `supply_buah`
--

CREATE TABLE `supply_buah` (
  `id` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `jenis_buah` varchar(100) NOT NULL,
  `jumlah_pembelian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_pembeli` int(10) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `no_telp` varchar(18) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_pembeli`, `nama_lengkap`, `username`, `email`, `no_telp`, `password`, `jk`, `alamat`, `id_status`) VALUES
(4, 'Ahmad Hidayat', 'dayat', 'ahmad1@gmail.com', '085675432123', 'pemilik', 'pria', 'Malang', 2),
(24, 'budiantono oke', 'budi', 'budi@gmail.com', '085654432123', 'karyawan2', 'laki', 'jember', 1),
(25, 'fais', 'fais', 'fais@gmal.com', '085654321234', 'member', 'laki', 'jember', 4),
(28, 'khoirul anam', 'anam', 'anam11333@gmail.com', '085654432123', 'anam', 'Laki', 'jember', 3),
(29, 'faruq', 'faruq', 'faruq@gmail.com', '085654432123', 'admin', 'Laki', 'jember', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_buah`
--
ALTER TABLE `pembelian_buah`
  ADD PRIMARY KEY (`id_pembelian_buah`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `supply_buah`
--
ALTER TABLE `supply_buah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD KEY `id_status` (`id_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `pembelian_buah`
--
ALTER TABLE `pembelian_buah`
  MODIFY `id_pembelian_buah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supply_buah`
--
ALTER TABLE `supply_buah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_pembeli` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
