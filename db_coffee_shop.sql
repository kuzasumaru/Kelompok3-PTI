-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 02:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_coffee_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `send_to` int(5) NOT NULL,
  `send_by` int(3) NOT NULL,
  `message` tinytext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `kopi` varchar(128) NOT NULL,
  `deskrpsi` varchar(1024) NOT NULL,
  `image` varchar(128) NOT NULL,
  `harga` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `kopi`, `deskrpsi`, `image`, `harga`, `date_created`) VALUES
(1, 'Espresso', 'Minuman kopi paling dasar ini biasanya disajikan dalam demitasse alias cangkir khusus espresso berukuran 30 mililiter (satu shot) sampai 118 mililiter. Espresso bertekstur pekat dan pahit, dengan buih putih alias crema di atasnya yang terbentuk dari tekanan minyak dalam bijih kopi.', 'espresso.jpg', '30000', 1),
(2, 'Ristretto', 'Dalam bahasa Italia, ristretto berarti \"terbatas\" atau \"terlarang\". Serupa dengan espresso, hanya saja takaran air dalam minuman ini lebih sedikit. Namun, waktu press dalam pembuatan ristretto sama dengan espresso.', 'ristretto.jpg', '32000', 1),
(3, 'Americano', 'Americano terdiri dari satu shot espresso yang dituangkan dalam cangkir berukuran 178 mililiter yang dicampur dengan air panas hingga memenuhi gelas. Jenis lainnya adalah doppio, yakni segelas Americano dengan dua shot espresso. Minuman ini kerap disajikan dalam panas maupun dingin yang disebut iced Americano.', 'americano.jpg', '33000', 1),
(4, 'Cappuccino', 'Kamu pasti selalu menemukan cappuccino dalam buku menu tiap kali pergi ke kedai kopi, atau bahkan kafe-kafe biasa. Cappuccino adalah olahan espresso yang paling banyak digemari, terutama bagi penikmat kopi dengan rasa lebih mild.\r\n\r\nMinuman ini terdiri dari espresso dan steamed milk dengan rasio 1:1. Namun, ada juga yang memakai perbandingan 1/3 espresso, 1/3 steamed milk, dan 1/3 susu foam. Biasanya disajikan dalam cangkir berkapasitas 88 mililiter hingga 177 mililiter.', 'cappuccino.jpg', '35000', 1),
(5, 'Macchiato', 'Kalau kamu gak terlalu menikmati kopi yang cenderung pahit, kamu bisa pesan macchiato sebagai alternatif. Rasio steamed milk dalam minuman ini lebih besar dari espresso, sehingga ada sentuhan milky dan gurih. \r\n\r\nBiasanya semua olahan kopi di coffee shop autentik tidak menambahkan pemanis, tapi kamu bisa meminta barista untuk menyertakan gula dalam minumanmu.', 'macchiato.jpg', '37000', 1),
(6, 'Cortado', 'Dalam bahasa Spanyol, cotardo artinya \"memotong\". Banyak orang yang menyamakan cortado dengan macchiato karena komposisinya mirip. Namun perbandingan espresso dan steamed milk cortado biasanya 1:1, meski di sejumlah tempat ada yang memakai rasio 1:2.', 'cortado.jpg', '39000', 1),
(7, 'Latte', 'Perlu diingat, latte dan cappuccino adalah dua jenis racikan berbeda. Demikian dengan komposisi dan rasio bahannya. Latte biasanya menggunakan perbandingan espresso dan susu 2:1. Selain rasanya nikmat, latte biasanya disajikan dalam cangkir dengan motif indah di atasnya atau yang banyak disebut latte art.', 'latte.jpg', '41000', 1),
(8, 'Flat White', 'Banyak pengertian berbeda mengenai olahan minuman berbasis espresso satu ini. Ada yang menyebut kalau flat white termasuk latte, sebagian beranggapan kalau ini merupakan cappuccino tanpa foam.\r\n\r\nFlat white biasanya terdiri dari 60 mililiter textured milk alias microfoam atau gelembung yang terbentuk saat susu dipanaskan. Kemudian dua shot espresso dituang di atasnya dan dicampur menjadi satu.', 'flat-white.jpg', '43000', 1),
(9, 'Affogato', 'Sederhananya, affogato adalah es krim vanila yang dituang espresso shot. Paduan pahitnya kopi hitam dan es krim yang manis dan lembut menciptakan sensasi rasa menyenangkan. Apalagi saat es krim perlahan meleleh begitu tersiram espresso.', 'affogato.jpg', '44000', 1),
(10, 'Mocaccino', 'Espresso, susu, dan cokelat merupakan paduan ideal dari secangkir moccacino. Dibanding kopi, lembutnya cokelat dan susu lebih mendominasi. Biasanya minuman ini menggunakan cokelat bubuk untuk campuran dan garnish, tapi ada juga yang memakai sirup cokelat di atasnya.', 'mocaccino.jpg', '45000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `no_pesanan` int(11) NOT NULL,
  `total_bayar` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `no_pesanan`, `total_bayar`, `date_created`) VALUES
(2, 1, '125000', 1576150333),
(3, 2, '30000', 1576205118),
(4, 3, '64000', 1576205212),
(5, 4, '33000', 1576207195),
(6, 5, '33000', 1649408486),
(7, 6, '156000', 1649584723);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `no_pesanan` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `quantity` int(2) NOT NULL,
  `subtotal` varchar(128) NOT NULL,
  `lunas` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `no_pesanan`, `menu_id`, `quantity`, `subtotal`, `lunas`) VALUES
(33, 1, 1, 3, '90000', 1),
(34, 1, 4, 1, '35000', 1),
(35, 2, 1, 1, '30000', 1),
(36, 3, 2, 2, '64000', 1),
(38, 4, 3, 1, '33000', 1),
(39, 5, 3, 1, '33000', 1),
(40, 6, 1, 3, '90000', 1),
(41, 6, 3, 2, '66000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(20) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_status` varchar(20) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `unique_id`, `username`, `password`, `role_id`, `user_status`, `date_created`) VALUES
(1, '7c9bc3', 'tester', '$2y$10$G49tZPwkz/wvqQOVf9iNMufLv1swpdFYrEfM8I52WnZblFaczOKSy', 2, 'active', 1649234858),
(2, '841157', 'Admin', '$2y$10$rVy68lv6hY4dMYbmQNnNbOLkllSf7f1BJRYMw/Xw5WdMv.V1Sdeyu', 1, 'active', 1649402646);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `sent_to` (`send_to`),
  ADD KEY `send_by` (`send_by`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`send_by`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
