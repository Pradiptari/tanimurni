-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Apr 2019 pada 21.56
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tanimurni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `fullname` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `fullname`, `email`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Pradipta Sekar Ayu', 'pradiptawulandari21@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `keterangan` varchar(1024) DEFAULT NULL,
  `waktu` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `judul`, `img`, `keterangan`, `waktu`) VALUES
(3, 'Mantapnya Super King Tani Murni', 'article_3.jpg', '<p>Super King dari Tani Murni memang hebat. Tahan hama dan tanaman lebih kuat dibawa perjalanan jauh.&nbsp;</p>\r\n', '2019-04-29 19:45:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(32) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `product_name`, `img`) VALUES
(5, 'Kubis', 'product_5.png'),
(6, 'Bayam', 'product_6.png'),
(7, 'Brokoli', 'product_7.png'),
(8, 'Cabai', 'product_8.png'),
(9, 'Lobak', 'product_9.png'),
(10, 'Sawi', 'product_10.png'),
(11, 'Sawi Putih', 'product_11.png'),
(12, 'Tomat', 'product_12.png'),
(13, 'Wortel', 'product_13.png'),
(14, 'Timun', 'product_14.png'),
(15, 'Semangka', 'product_15.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_variety`
--

CREATE TABLE `product_variety` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `product_variety`
--

INSERT INTO `product_variety` (`id`, `id_product`, `name`, `img`, `info`) VALUES
(3, 5, 'Green Nova', 'jenis_3.jpg', '<p>Green Nova cocok untuk dataran tinggi (lebih dari 700m di atas permukaan laut). Panen dimulai pada 75 hari setelah tanam, produksi 2kg-2.5kg per tanaman. Pertumbuhannya sangat seragam.</p>\r\n'),
(4, 5, 'Green Luna', 'jenis_4.jpg', '<p>Green Luna merupakan jenis kubis hibrida yang cocok ditanam di dataran tinggi (700m di atas permukaan laut). Panen mulai 70 hari setelah tanam. Produksi 2-2.5 kg pertanaman. Pertumbuhannya sangat seragam.</p>\r\n'),
(5, 5, 'Green Coronet', 'jenis_5.jpg', '<p>Green Coronet cocok untuk dataran tinggi. Umur panen 85-90 hari setelah tanam. Hasil berbentuk bulat gepeng, sangat padat, kuat angkutan, sangat produktif. Tahan disimpan di ruangan terbuka.</p>\r\n'),
(6, 5, 'Green Hero', 'jenis_6.jpg', '<p>Green Hero cocok untuk dataran tinggi (lebih dari 700m diatas permukaan laut). Panen 70 hari setelah tanam. Produksi 2kg-2.5kg per tanaman.</p>\r\n'),
(7, 5, 'Summer Autumn', 'jenis_7.jpg', '<p>Summer Autumn banyak dibudidayakan di negara tropis. Kubis ini mempunyai daya adaptasi yang cukup tinggi dan toleran terhadap penyakit blackrot. Tanaman ini sangat vigor, berat krop 1.5kg-2.5kg. Dapat dipanen pada umur 60-65 hari setelah tanam. Krop padat dan tahan transportasi jarak jauh.</p>\r\n'),
(8, 5, 'Red Globe', 'jenis_8.jpg', '<p>Red Globe merupakan kubis merah yang berasal dari Jepang, yang sangat cocok untuk dataran tinggi dan sangat mudah pemeliharaannya. Kubis ini sangat padat sehingga tahan terhadap transportasi jarak jauh. Warna daun merah keunguan. Umur panen 65 hari setelah tanam. Berat rata-rata 1.5kg per tanaman.</p>\r\n'),
(9, 6, 'Super Alrite', 'jenis_9.jpg', '<p>Super Alrite cocok ditanam di dataran menengah sampai tinggi (di atas 700m dari permukaan laut). Dapat dipanen 35-40 hari setelah masa tanam. Bentuk tanaman tegak dengan warna daun hijau tua.</p>\r\n'),
(10, 10, 'Pak Choy Green', 'jenis_10.jpg', '<p>Pak Choy Green cocok untuk dataran tinggi dan rendah. Bentuk helai daun sangat menarik dengan tangkai berbentuk sendok. Umur panen 35-40 hari setelah tanam.</p>\r\n'),
(11, 10, 'Pak Choy White', 'jenis_11.jpg', '<p>Pak Choy White cocok untuk dataran tinggi dan rendah. Tangkai daun berwarna putih, tebal daun berbentuk sendok. Umur panen 40-45 hari setelah tanam. Produksinya tinggi.</p>\r\n'),
(12, 10, 'TM Valor', 'jenis_12.jpg', '<p>TM Valor merupakan salah satu sawi pahit berdaun tebal dengan batang tebal dan daun luas yang berwarna hijau tua. Batang muda dapat melengkung ke dalam dan membentuk kepala. Sawi ini cocok untuk di tanam di dataran menengah ke atas. Sawi ini dapat dipanen mulai umur 45 hari setelah tanam.</p>\r\n'),
(13, 10, 'TM Emerald', 'jenis_13.jpg', '<p>TM Emerald merupakan salah satu pak choy green hibrida yang dapat ditanam didataran menengah sampai tinggi. Dengan tangkai daun berwarna hijau dan tebal, daun berbentuk sendok. Pak choy ini dapat dipanen mulai umur 30 hari setelah tanam. Mempunyai produksi tinggi dan tahan terhadap angkutan jarak jauh.</p>\r\n'),
(14, 10, 'TM Jade', 'jenis_14.jpg', '<p>TM Jade adalah salah satu pak choy green hibrida, dengan bentuk daun seperti sendok yang berwarna hijau. Tinggi tanaman 20-25 cm, umur panen 29-30 hari setelah tanam. Petiole lebih besar sehingga mempunyai produksi lebih tinggi. Cocok ditanam didataran menengah sampai dataran tinggi dan tahan angkutan jarak jauh.</p>\r\n'),
(15, 11, 'Eikun', 'jenis_15.jpg', '<p>Eikun mudah ditanam. Memiliki daya tahan kuat terhadap penyakit, virus, pembusukan, kondisi panas dan dapat disimpan dalam jangka waktu lama. Daun atasnya agak kecil dan kepalanya besar, terlipat dengan rapat, kuat, beratnya 2kg per tanaman.</p>\r\n'),
(16, 11, 'Super King', 'jenis_16.jpg', '<p>Super King sangat cocok untuk dataran tinggi. Dengan crop yang sangat padat dan tahan transportasi jarak jauh. Tanaman toleran terhadap penyakit, virus dan soft rot. Tanaman sangat vigor dengan daun berwarna hijau gelap. Berat crop 2kg-2.5kg. Umur panen 55 hari setelah tanam.</p>\r\n'),
(17, 11, 'TM Tycoon', 'jenis_17.jpg', '<p>TM Tycoon merupakan sawi hibrida yang dapat ditanam didataran menengah sampai tinggi. Tanaman sangat seragam dengan crop yang sangat padat dan tahan transportasi jarak jauh. Tanaman toleran terhadap akar gada dan soft rot. Berat crop 2kg-2.5kg dengan umur panen 55 hari setelah tanam.</p>\r\n'),
(18, 11, 'Itto', 'jenis_18.jpg', '<p>Itto cocok untuk dataran tinggi (lebih dari 700m diatas permukaan laut). Panen mulai 55 hari setelah tanam. Produksi 1.5kg-2kg per tanaman. Toleran dan tahan terhadap penyakit akar gada.</p>\r\n'),
(19, 8, 'TM 999', 'jenis_19.jpg', '<p>TM 999 merupakan cabai keriting hibrida varietas TM93X. Cocok ditanam di dataran rendah sampai dataran tinggi. Panjang buah 15-17cm, diameter buah 0.6-0.8cm dan berat buah 6-7gr perbuah. Umur panen 80-100 hari setelah tanam. Buah padat dan keras sehingga tahan terhadap angkutan jarak jauh. Toleran terhadap penyakit antraknos dan layu.</p>\r\n'),
(20, 8, 'Thunder 99', 'jenis_20.jpg', '<p>TM Thunder99 merupakan cabai keriting hibrida untuk dataran rendah sampai tinggi. Diameter buah 0.6-0.8 cm, panjang buah 17-19 cm dengan berat 6-7 gr perbuah. Umur panen 90-110 hari setelah tanam. Buah padat dan keras sehingga tahan simpan dan tahan transportasi jarak jauh. Tanaman toleran terhadap penyaki antraknosa dan layu.</p>\r\n'),
(21, 8, 'TM 888', 'jenis_21.jpg', '<p>TM 888 merupakan salah satu cabe keriting tipe besar, tanaman ini kuat, vigor (seragam) dan mempunyai adaptasi yang sangat luas. Buah berwarna merah mengkilap. Sangat baik digunakan untuk fresh produk dan cabai kering. Tanaman ini tahan terhadap layu dan antraknosa. Buah padat dan keras sehingga tahan transportasi jarak jauh.</p>\r\n'),
(22, 8, 'TM Scarlet', 'jenis_22.jpg', '<p>TM Scarlet merupakan cabe hibrida varietas p-sada 300. Cocok untuk ditanam di dataran rendah sampai menengah. Diameter 1.5cm, panjang buah 14-16 cm dan warna buah merah menyala. Umur panen 85 hari setelah tanam. Tahan terhadap penyakit antraknosa dan layu. Buah padat dan besar sehingga tahan transportasi jarak jauh.</p>\r\n'),
(23, 8, 'P-Sada 700', 'jenis_23.jpg', '<p>P-SADA 700 merupakan cabai hibrida besar yang mempunyai ukuran buah 15-17 cm dan diameter 1.8-2.0 cm. Warna buah merah menyala. Umur panen 90 hari setelah tanam. Cocok ditanam di dataran menengah sampai tinggi. Toleran terhadap antraknos dan layu. Buah besar dan padat sehingga tahan transportasi jarak jauh.</p>\r\n'),
(24, 8, 'Big Chili', 'jenis_24.jpg', '<p>Big Chili adalah cabai hibrida besar yang memiliki ukuran panjang 14-16 cm dan diameter 1.9-2.1 cm. Warna buah merah menyala. Umur 90 hari sejak masa tanam. Cocok ditanam di dataran menengah sampai tinggi. Toleran terhadap antraknos dan layu. Buah besar dan padat, tahan terhadap angkutan jarak jauh.</p>\r\n'),
(25, 8, 'TM Rawity', 'jenis_25.jpg', '<p>TM Rawity merupakan cabai rawit tipe merunduk yang dapat ditanam di dataran rendah sampai menengah. Warna buah putih kehijauan. Panjang buah 5-7 cm, dengan diameter 0.9-1.1 cm. Rasa buah pedas. Umur panen 110 hari setelah tanam dan mempunyai daya simpan 5-7 hari setelah panen dengan suhu rata-rata 25-27 derajat celcius. Tahan angkutan jarak jauh.</p>\r\n'),
(26, 8, 'Red Sabel', 'jenis_26.jpg', '<p>Red Sabel memiliki panjang buah 16cm, diameter 0.5cm. Beradaptasi dengan baik di dataran menengah sampai tinggi (600m - 1200m di atas permukaan laut). Tahan terhadap layu yang disebabkan oleh bakteri.</p>\r\n'),
(27, 8, 'Red Kriss', 'jenis_27.jpg', '<p>Red Kriss panjang buah 16-18cm, diameter 0.7-0.9cm. Ujung buah lurus dan tidak mudah menguning. Warna buah merah tua merata dan mengkilat. Tahan terhadap patek (Anthracnose) dan layu bakteri (Bacterial Wilt).</p>\r\n'),
(28, 8, 'TM 333', 'jenis_28.jpg', '<p>TM 333 adalah cabai keriting hibrida yang memiliki pertumbuhan sangat seragam, dengan warna buah hijau gelap menjadi merah terang. Ukuran buah 15-16 cm, diameter 0.8-0.9 cm dan berat 6-7 gr perbuah. Umur panen 90 hari setelah tanam. Cocok untuk dataran rendah sampai dataran tinggi. Toleran terhadap antraknos dan layu. Buah padat dan tahan angkutan jarak jauh.</p>\r\n'),
(29, 8, 'TM 007', 'jenis_29.jpg', '<p>TM 007 merupakan cabai keriting hibrida yang dapat ditanam di dataran rendah sampai dataran tinggi. Panjang buah 14-15 cm, diameter 0.7-0.8 cm dan warna buah merah menyala. Buah padat dan keras sehingga tahan simpan dan tahan transportasi jarak jauh. Tanaman toleran terhadap penyaki antraknosa dan layu.</p>\r\n'),
(30, 8, 'TM Bison', 'jenis_30.jpg', '<p>TM Bison merupakan salah satu cabe hybrida yang cocok ditanam didataran rendah sampai dataran tinggi. Diameter buah 1.4-1.7 cm, panjang buah 14-17 cm dan warna buah merah. Umur panen 73-75 hari setelah tanam dan potensi hasil 30-35 ton. Toleran terhadap penyakit antraknosa dan layu. Buah padat dan besar sehingga tahan transportasi jarak jauh.</p>\r\n'),
(31, 8, 'TM Rawit', 'jenis_31.jpg', '<p>TM Rawit merupakan cabai rawit yang cocok ditanam di dataran rendah sampai tinggi. Tanaman tegak dan lebat, warna buah putih dan rasa sangat pedas. Panjang buah 3-4 cm, diameter 1-1.5 cm. Toleran terhadap layu bakteri. Umur panen 95-100 hari setelah tanam. Tahan transportasi jarak jauh.</p>\r\n'),
(32, 9, 'Green Boss', 'jenis_32.jpg', '<p>Green Boss merupakan lobak hibrida. Dapat dipanen 70 hari setelah tanam. Panjang lobak 35-40 cm, dengan diameter 8cm dan berat 1-1.2 kg pertanaman. Memiliki kulit yang berwarna putih yang halus dan mengkilat. Rasanya sangat enak dan tahan penyakit akibat virus.</p>\r\n'),
(33, 9, 'TM Wonder Slender', 'jenis_33.jpg', '<p>TM Wonder Slender merupakan lobak hibrida yang cocok ditanam di dataran rendah sampai tinggi. Dapat dipanen mulai umur 60 hari setelah tanam. Panjang umbi 35-45 cm, dengan diameter lebih dari 7cm, dan berat umbi mencapai 300-600 gr. Warna umbi putih kehijauan. Tanaman seragam dengan umbi yang keras dan padat sehingga tahan transportasi jarak jauh.</p>\r\n'),
(34, 12, 'TM Vista', 'jenis_34.jpg', '<p>TM Wonder Slender merupakan lobak hibrida yang cocok ditanam di dataran rendah sampai tinggi. Dapat dipanen mulai umur 60 hari setelah tanam. Panjang umbi 35-45 cm, dengan diameter lebih dari 7cm, dan berat umbi mencapai 300-600 gr. Warna umbi putih kehijauan. Tanaman seragam dengan umbi yang keras dan padat sehingga tahan transportasi jarak jauh.</p>\r\n'),
(35, 12, 'TM Marina', 'jenis_35.jpg', '<p>TM Marina merupakan tomat semi determinate yang dapat ditanam di dataran rendah sampai menengah. Bentuk buah bulat, warna buah muda hijau dengan berat buah 60-80 gr perbuah. Dapat dipanen mulai umur 80 hari setelah tanam. Buah tebal dan keras sehingga tahan transportasi jarak jauh.</p>\r\n'),
(36, 12, 'TM Viro', 'jenis_36.jpg', '<p>TM Viro merupakan tomat determinate yang dapat ditanam di dataran rendah sampai menengah. Bentuk buah bulat oval, ukuran buah 70-80 gr, mulai berbunga 30 hari setelah tanam. Tahan terhadap ralstonia solanacearum, TmV, Fusarium 1 dan gemini virus strain tertentu.</p>\r\n'),
(37, 12, 'TM Marvel', 'jenis_37.jpg', '<p>TM Marvel merupakan salah satu tomat tipe indeterminate yang dapat ditanam di dataran menengah sampai tinggi. Bentuk buah bulat oval, warna buah muda hijau keputihan. Berat buah 90-120 gr perbuah. Potensi hasil 4-6 kg per batang. Tahan simpan dan tahan transportasi jarak jauh.</p>\r\n'),
(38, 12, 'TM Buena', 'jenis_38.jpg', '<p>TM Buena dapat ditanam di dataran rendah sampai menengah. Bentuk buah bulat oval, ukuran buah 70-80 gr perbuah, mempunyai 2-3 ruang buah. Mulai berbunga 30 hari dan panen dapat dilakukan 65 hari setelah tanam. Potensi hasil 3kg pertanaman. Tahan terhadap ralstonia solanacearum, TmV, fusarium 1, dan gemini virus strain. Buah keras dan padat sehingga tahan transportasi jarak jauh.</p>\r\n'),
(39, 13, 'New Kuroda', 'jenis_39.jpg', '<p>New Kuroda merupakan bibit wortel berkualitas untuk dataran tinggi (700-1500m diatas permukaan laut). Warna buah merah kekuningan. Dapat dipanen pada umur 110 hari sejak tanam. Panjang 18cm dengan diameter 6cm. Tahan terhadap penyakit busuk daun.</p>\r\n'),
(40, 14, 'TM Osella', 'jenis_40.jpg', '<p>TM Osella merupakan timun hibrida tipe besar dengan panjang buah 25cm dan diameter 6cm, serta berat 300-400 gr perbuah. Tanaman kuat dan seragam. Bentuk buah silindris dan ujung buah tumpul. Dapat dipanen mulai umur 40 hari setelah tanam. Mempunyai daya simpan 7-10 hari setelah panen dan tahan transportasi jarak jauh.</p>\r\n'),
(41, 14, 'Obama 3', 'jenis_41.jpg', '<p>Obama 3 merupakan timun hibrida varietas or green yang memiliki vigor tanaman yang sangat kuat dan seragam. Toleran terhadap penyakit kresek (downey mildey). Buah berwarna hijau tua dengan rasa manis dan renyah. Panjang buah 20-22 cm, dengan berat buah 300-350 gr per buah. Panen dapat dilakukan pada umur 30-35 hari setelah tanam.</p>\r\n'),
(42, 14, 'TM Ambalat 3', 'jenis_42.jpg', '<p>TM Ambalat 3 merupakan timun hibrida yang dapat mulai dipanen mulai pada umur 30-35 hari setelah tanam dan tahan angkutan jarak jauh. Mempunyai vigor tanaman yang sangat kuat dan seragam. Buah berwarna hijau tua dengan rasa manis dan renyah. Panjang buah 22-24 cm dengan berat buah 250-300 gr.</p>\r\n'),
(43, 14, 'TM Belini', 'jenis_43.jpg', '<p>TM Belini merupakan jenis timun hibrida yang digunakan sebagai timun lalab. Memiliki diameter 3-4 cm, panjang 12-15 cm dengan warna putih kehijauan. Mempunyai produksi buah sangat tinggi. Umur panen 37 hari setelah tanam. Rasanya manis dan tebal sehingga tahan terhadap angkutan jarak jauh.</p>\r\n'),
(44, 15, 'TM Golden', 'jenis_44.jpg', '<p>TM Golden dapat beradaptasi untuk dataran rendah sampai sedang. Buah berbentuk lonjong dengan strip berwarna kuning dan rasa renyah. Berat buah 3-4 kg. Dapat menghasilkan 2-3 buah pertanaman. Tahan terhadap penyakit busuk batang. Memiliki daya simpan dan daya transport yang baik.</p>\r\n'),
(45, 15, 'New Top Quality', 'jenis_45.jpg', '<p>New Top Quality merupakan semangka non-biji dengan daging berwarna merah yang dapat dibudidayakan di dataran rendah sampai menengah. Bentuk buah bulat dengan warna kulit hijau dan lurik hijau tua. Potensi hasil 7-9 kg perbuah. Umur panen 60-70 hari setelah tanam. Tahan terhadap transportasi jarak jauh dan dapat disimpan pada suhu kamar.</p>\r\n'),
(46, 15, 'TM Galaxy', 'jenis_46.jpg', '<p>TM Galaxy semangka non-biji merah dengan bentuk buah oval, dengan kondisi normal potensi hasil 8-10 kg perbuah. Cocok dibudidayakan didataran rendah sampai menangah. Kulit tebal dan keras sehingga tahan transportasi jarak jauh dan tahan simpan pada suhu kamar.</p>\r\n'),
(47, 15, 'TM King ', 'jenis_47.jpg', '<p>TM King memiliki umur panen 65 hari setelah tanam. Bentuk buah lonjong memanjang. Berat mencapai 4-6 kg perbuah. Warna kulit hijau tua dengan daging buah berwarna merah dan rasa manis 14 Brix. Tahan terhadap penyakit anthrachose.</p>\r\n'),
(48, 7, 'TM Kribow', 'jenis_48.jpg', '<p>TM Kribow merupakan salah satu jenis dari brokoli hibrida yang toleran terhadap hama dan penyakit. Tanaman sangat seragam (vigor) dengan warna hijau tua. Korp berbentuk kubah dan padat sehingga tahan terhadap angkutan jarak jauh.</p>\r\n'),
(49, 7, 'TM Jet Dome', 'jenis_49.jpg', '<p>TM Jet Dome merupakan varietas brokoli hibrida yang mempunyai umur panen 58 hari setelah tanam. Tanaman sangat seragam (vigor) dengan warna krop hijau tua. Perakaran sangat kuat, batang besar dan krop berbentuk kubah dan padat. Cocok ditanam disegala musim (musim kemarau dan hujan). Tanaman toleran terhadap bakteri bercak daun dan busuk hitam.</p>\r\n');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_product_variety`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_product_variety` (
`id` int(11)
,`id_product` int(11)
,`name` varchar(24)
,`img` varchar(255)
,`info` varchar(1024)
,`product_name` varchar(32)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_product_variety`
--
DROP TABLE IF EXISTS `view_product_variety`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_product_variety`  AS  select `a`.`id` AS `id`,`a`.`id_product` AS `id_product`,`a`.`name` AS `name`,`a`.`img` AS `img`,`a`.`info` AS `info`,`b`.`product_name` AS `product_name` from (`product_variety` `a` join `product` `b`) where (`a`.`id_product` = `b`.`id`) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `product_variety`
--
ALTER TABLE `product_variety`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `product_variety`
--
ALTER TABLE `product_variety`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
