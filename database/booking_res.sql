-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2023 pada 14.45
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_res`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `res_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `make_date` date DEFAULT NULL,
  `make_time` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(30) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0- reject, 1-confirmed',
  `reject` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking_table`
--

CREATE TABLE `booking_table` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `table_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Wine Bar'),
(2, 'Bio'),
(3, 'Bistro'),
(4, 'Waffles'),
(5, 'World Food'),
(6, 'Gourmet'),
(7, 'Pizza'),
(8, 'Tea Bar'),
(9, 'Traditional'),
(10, 'Vegetarian'),
(11, 'Coffee');

-- --------------------------------------------------------

--
-- Struktur dari tabel `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `locations`
--

INSERT INTO `locations` (`id`, `location_name`) VALUES
(1, 'Garut (Pusat)'),
(2, 'Bandung'),
(3, 'Tasik'),
(4, 'Jakarta'),
(5, 'Bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `item_desc` varchar(500) DEFAULT NULL,
  `food_type` varchar(100) NOT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `menu_item`
--

INSERT INTO `menu_item` (`id`, `res_id`, `item_name`, `item_desc`, `food_type`, `price`, `image`) VALUES
(10, 1, 'V30', 'Dihasilkan melalui metode penyaringan khas Jepang.', 'Drinks', 20, 'v60.jpg'),
(11, 1, 'Vietnam Drip', 'Sentuhan manis dari condensed milk, dan kelezatan cita rasa kopi yang menggoda.', 'Drinks', 16, 'vietnamdrip.jpg'),
(12, 1, 'Espresso', 'Setiap tegukan mempersembahkan kekuatan dan kompleksitas cita rasa yang menggoda.', 'Drinks', 10, 'espresso.jpg'),
(13, 1, 'Pisang Keju', 'Perpaduan lembut pisang matang dan keju lembut menciptakan pengalaman manis yang memanjakan lidah.', 'Dessert', 10, 'pisangkeju.jpg'),
(14, 1, 'Roti Bakar', 'paduan sempurna antara kehangatan roti yang renyah dan kelembutan rasa.', 'Dessert', 10, 'rotibakar.jpeg'),
(15, 1, 'Puding', 'Keseluruhan cita rasa menyatu dalam setiap suapannya,', 'Dessert', 8, 'puding.jpg'),
(16, 2, 'V30', 'Dihasilkan melalui metode penyaringan khas Jepang.', 'Drinks', 20, 'v60.jpg'),
(18, 2, 'Espresso', 'Setiap tegukan mempersembahkan kekuatan dan kompleksitas cita rasa yang menggoda.', 'Drinks', 10, 'espresso.jpg'),
(19, 2, 'Pisang Keju', 'Perpaduan lembut pisang matang dan keju lembut menciptakan pengalaman manis yang memanjakan lidah.', 'Dessert', 10, 'pisangkeju.jpg'),
(20, 2, 'Roti Bakar', 'paduan sempurna antara kehangatan roti yang renyah dan kelembutan rasa.', 'Dessert', 10, 'rotibakar.jpeg'),
(21, 2, 'Puding', 'Keseluruhan cita rasa menyatu dalam setiap suapannya,', 'Dessert', 8, 'puding.jpg'),
(22, 2, 'Vietnam Drip', 'Sentuhan manis dari condensed milk, dan kelezatan cita rasa kopi yang menggoda.', 'Drinks', 16, 'vietnamdrip.jpg'),
(23, 3, 'V30', 'Dihasilkan melalui metode penyaringan khas Jepang.', 'Drinks', 20, 'v60.jpg'),
(24, 3, 'Vietnam Drip', 'Sentuhan manis dari condensed milk, dan kelezatan cita rasa kopi yang menggoda.', 'Drinks', 16, 'vietnamdrip.jpg'),
(25, 3, 'Espresso', 'Setiap tegukan mempersembahkan kekuatan dan kompleksitas cita rasa yang menggoda.', 'Drinks', 10, 'espresso.jpg'),
(26, 3, 'Pisang Keju', 'Perpaduan lembut pisang matang dan keju lembut menciptakan pengalaman manis yang memanjakan lidah.', 'Dessert', 10, 'pisangkeju.jpg'),
(27, 3, 'Roti Bakar', 'paduan sempurna antara kehangatan roti yang renyah dan kelembutan rasa.', 'Dessert', 10, 'rotibakar.jpeg'),
(28, 3, 'Puding', 'Keseluruhan cita rasa menyatu dalam setiap suapannya,', 'Dessert', 8, 'puding.jpg'),
(29, 4, 'V30', 'Dihasilkan melalui metode penyaringan khas Jepang.', 'Drinks', 20, 'v60.jpg'),
(30, 4, 'Vietnam Drip', 'Sentuhan manis dari condensed milk, dan kelezatan cita rasa kopi yang menggoda.', 'Drinks', 16, 'vietnamdrip.jpg'),
(31, 4, 'Espresso', 'Setiap tegukan mempersembahkan kekuatan dan kompleksitas cita rasa yang menggoda.', 'Drinks', 10, 'espresso.jpg'),
(32, 4, 'Pisang Keju', 'Perpaduan lembut pisang matang dan keju lembut menciptakan pengalaman manis yang memanjakan lidah.', 'Dessert', 10, 'pisangkeju.jpg'),
(33, 4, 'Roti Bakar', 'paduan sempurna antara kehangatan roti yang renyah dan kelembutan rasa.', 'Dessert', 10, 'rotibakar.jpeg'),
(34, 4, 'Puding', 'Keseluruhan cita rasa menyatu dalam setiap suapannya,', 'Dessert', 8, 'puding.jpg'),
(35, 5, 'V30', 'Dihasilkan melalui metode penyaringan khas Jepang.', 'Drinks', 20, 'v60.jpg'),
(36, 5, 'Vietnam Drip', 'Sentuhan manis dari condensed milk, dan kelezatan cita rasa kopi yang menggoda.', 'Drinks', 16, 'vietnamdrip.jpg'),
(37, 5, 'Espresso', 'Setiap tegukan mempersembahkan kekuatan dan kompleksitas cita rasa yang menggoda.', 'Drinks', 10, 'espresso.jpg'),
(38, 5, 'Pisang Keju', 'Perpaduan lembut pisang matang dan keju lembut menciptakan pengalaman manis yang memanjakan lidah.', 'Dessert', 10, 'pisangkeju.jpg'),
(39, 5, 'Roti Bakar', 'paduan sempurna antara kehangatan roti yang renyah dan kelembutan rasa.', 'Dessert', 10, 'rotibakar.jpeg'),
(40, 5, 'Puding', 'Keseluruhan cita rasa menyatu dalam setiap suapannya,', 'Dessert', 8, 'puding.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rc_info`
--

CREATE TABLE `rc_info` (
  `id` int(11) NOT NULL,
  `rc_name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` int(12) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `opening_res` time DEFAULT NULL,
  `closing_res` time DEFAULT NULL,
  `full_service` int(20) DEFAULT NULL COMMENT '1 = oui, 2 = non ',
  `logo` varchar(500) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `siret` int(9) DEFAULT NULL,
  `approve_status` int(11) NOT NULL DEFAULT 0 COMMENT '0-not approve,1-approve ',
  `role` int(11) DEFAULT NULL COMMENT '1 = restaurant, 2 = customer '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `rc_info`
--

INSERT INTO `rc_info` (`id`, `rc_name`, `first_name`, `category`, `email`, `website`, `phone`, `address`, `location`, `opening_res`, `closing_res`, `full_service`, `logo`, `password`, `siret`, `approve_status`, `role`) VALUES
(1, 'Kedai Aa`Brewok (Garut)', NULL, 11, 'kedai@gmail.com', '', 223456782, 'Jalan Guntur No.12 Kecamatan Garut Kota Kabupaten Garut', 1, '16:00:00', '23:59:00', 1, 'bg1.jpg', '123', 0, 0, 1),
(2, 'Waroeng Aa`Brewok (Bandung)', NULL, 11, 'waroeng1@gmail.com', '', 223746253, 'Jl Flamboyan, Komplek Bumi Panyileukan ', 2, '16:00:00', '23:59:00', 1, 'bg6.png', '123', 0, 0, 1),
(3, 'Waroeng Aa`Brewok (Tasikmalaya)', NULL, 11, 'waroeng2@gmail.com', '', 726453525, 'Jalan CILINGGA No.10 Kota Tasikmalaya', 3, '16:00:00', '23:59:00', 1, 'bg4.png', '123', 0, 0, 1),
(4, 'Waroeng Aa`Brewok (Jakarta)', NULL, 11, 'waroeng3@gmail.com', '', 223647389, 'Jalan. Gandaria I No. 63, Jakarta', 4, '16:00:00', '23:59:00', 1, 'bg5.png', '123', 0, 0, 1),
(5, 'Waroeng Aa`Brewok (Bekasi)', NULL, 11, 'waroeng4@gmail.com', '', 222345674, 'Jalan.Boulevard Raya Barat, Kota Bekasi', 5, '15:00:00', '22:00:00', 2, 'bg8.jpg', '123', 0, 0, 1),
(18, 'Dani ', 'Ramdani', NULL, 'mamanggaspol@gmail.com', NULL, 812736278, NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, 0, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurant_personne`
--

CREATE TABLE `restaurant_personne` (
  `id` int(11) NOT NULL,
  `tbl_id` int(11) DEFAULT NULL,
  `table_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `restaurant_personne`
--

INSERT INTO `restaurant_personne` (`id`, `tbl_id`, `table_no`) VALUES
(34, 15, '1 Orang - Meja No. 1'),
(35, 15, '1 Orang - Meja No. 2'),
(36, 15, '1 Orang - Meja No. 3'),
(37, 16, '2 Orang - Meja No. 1'),
(38, 16, '2 Orang - Meja No. 2'),
(39, 16, '2 Orang - Meja No. 3'),
(40, 17, '3 Orang - Meja No. 1'),
(41, 17, '3 Orang - Meja No. 2'),
(42, 17, '3 Orang - Meja No. 3'),
(43, 18, '4 Orang - Meja No. 1'),
(44, 18, '4 Orang - Meja No. 2'),
(45, 18, '4 Orang - Meja No. 3'),
(47, 19, '5 Orang - Meja No. 1'),
(48, 19, '5 Orang - Meja No. 2'),
(49, 19, '5 Orang - Meja No. 3'),
(52, 20, '6 Orang - Meja No. 1'),
(53, 20, '6 Orang - Meja No. 2'),
(54, 20, '6 Orang - Meja No. 3'),
(55, 21, '7 Orang - Meja No. 1'),
(56, 21, '7 Orang - Meja No. 2'),
(57, 21, '7 Orang - Meja No. 3'),
(58, 22, '8 Orang - Meja No. 1'),
(59, 22, '8 Orang - Meja No. 2'),
(60, 22, '8 Orang - Meja No. 3'),
(61, 23, '1 Orang - Meja No. 1'),
(62, 23, '1 Orang - Meja No. 2'),
(63, 24, '2 Orang - Meja No. 1'),
(64, 24, '2 Orang - Meja No. 2'),
(65, 25, '3 Orang - Meja No. 1'),
(66, 25, '3 Orang - Meja No. 2'),
(67, 26, '4 Orang - Meja No. 1'),
(68, 26, '4 Orang - Meja No. 2'),
(69, 27, '5 Orang - Meja No. 1'),
(70, 27, '5 Orang - Meja No. 2'),
(71, 28, '6 Orang - Meja No. 1'),
(72, 28, '6 Orang - Meja No. 2'),
(73, 29, '7 Orang - Meja No. 1'),
(74, 29, '7 Orang - Meja No. 2'),
(75, 30, '8 Orang - Meja No. 1'),
(76, 30, '8 Orang - Meja No. 2'),
(77, 31, '1 Orang - Meja No. 1'),
(78, 31, '1 Orang - Meja No. 2'),
(79, 32, '2 Orang - Meja No. 1'),
(80, 32, '2 Orang - Meja No. 2'),
(81, 33, '3 Orang - Meja No. 1'),
(82, 33, '3 Orang - Meja No. 2'),
(83, 34, '4 Orang - Meja No. 1'),
(84, 34, '4 Orang - Meja No. 2'),
(85, 35, '5 Orang - Meja No. 1'),
(86, 35, '5 Orang - Meja No. 2'),
(87, 36, '6 Orang - Meja No. 1'),
(88, 36, '6 Orang - Meja No. 2'),
(89, 37, '7 Orang - Meja No. 1'),
(90, 37, '7 Orang - Meja No. 2'),
(91, 38, '8 Orang - Meja No. 1'),
(92, 38, '8 Orang - Meja No. 2'),
(93, 39, '1 Orang - Meja No. 1'),
(94, 39, '1 Orang - Meja No. 2'),
(95, 40, '2 Orang - Meja No. 1'),
(96, 40, '2 Orang - Meja No. 2'),
(97, 41, '3 Orang - Meja No. 1'),
(98, 41, '3 Orang - Meja No. 2'),
(100, 42, '4 Orang - Meja No. 1'),
(101, 42, '4 Orang - Meja No. 2'),
(102, 43, '5 Orang - Meja No. 1'),
(103, 43, '5 Orang - Meja No. 2'),
(104, 44, '6 Orang - Meja No. 1'),
(105, 44, '6 Orang - Meja No. 2'),
(106, 45, '7 Orang - Meja No. 1'),
(107, 45, '7 Orang - Meja No. 2'),
(108, 46, '8 Orang - Meja No. 1'),
(109, 46, '8 Orang - Meja No. 2'),
(110, 47, '1 Orang - Meja No. 1'),
(111, 47, '1 Orang - Meja No. 2'),
(112, 48, '2 Orang - Meja No. 1'),
(113, 48, '2 Orang - Meja No. 2'),
(114, 49, '3 Orang - Meja No. 1'),
(115, 49, '3 Orang - Meja No. 2'),
(116, 50, '4 Orang - Meja No. 1'),
(117, 50, '4 Orang - Meja No. 2'),
(118, 51, '5 Orang - Meja No. 1'),
(119, 51, '5 Orang - Meja No. 2'),
(120, 52, '6 Orang - Meja No. 1'),
(121, 52, '6 Orang - Meja No. 2'),
(122, 53, '7 Orang - Meja No. 1'),
(123, 53, '7 Orang - Meja No. 2'),
(124, 54, '8 Orang - Meja No. 1'),
(125, 54, '8 Orang - Meja No. 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `person_num` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `restaurant_tables`
--

INSERT INTO `restaurant_tables` (`id`, `res_id`, `person_num`) VALUES
(15, 1, '1 Orang'),
(16, 1, '2 Orang'),
(17, 1, '3 Orang'),
(18, 1, '4 Orang'),
(19, 1, '5 Orang'),
(20, 1, '6 Orang'),
(21, 1, '7 Orang'),
(22, 1, '8 Orang'),
(23, 2, '1 Orang'),
(24, 2, '2 Orang'),
(25, 2, '3 Orang'),
(26, 2, '4 Orang'),
(27, 2, '5 Orang'),
(28, 2, '6 Orang'),
(29, 2, '7 Orang'),
(30, 2, '8 Orang'),
(31, 3, '1 Orang'),
(32, 3, '2 Orang'),
(33, 3, '3 Orang'),
(34, 3, '4 Orang'),
(35, 3, '5 Orang'),
(36, 3, '6 Orang'),
(37, 3, '7 Orang'),
(38, 3, '8 Orang'),
(39, 4, '1 Orang'),
(40, 4, '2 Orang'),
(41, 4, '3 Orang'),
(42, 4, '4 Orang'),
(43, 4, '5 Orang'),
(44, 4, '6 Orang'),
(45, 4, '7 Orang'),
(46, 4, '8 Orang'),
(47, 5, '1 Orang'),
(48, 5, '2 Orang'),
(49, 5, '3 Orang'),
(50, 5, '4 Orang'),
(51, 5, '5 Orang'),
(52, 5, '6 Orang'),
(53, 5, '7 Orang'),
(54, 5, '8 Orang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Res_bc` (`res_id`);

--
-- Indeks untuk tabel `booking_table`
--
ALTER TABLE `booking_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Bt` (`table_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Rc_Menu` (`res_id`);

--
-- Indeks untuk tabel `rc_info`
--
ALTER TABLE `rc_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Location` (`location`),
  ADD KEY `FK_Cat` (`category`);

--
-- Indeks untuk tabel `restaurant_personne`
--
ALTER TABLE `restaurant_personne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_R_pers` (`tbl_id`);

--
-- Indeks untuk tabel `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Rc_tables` (`res_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `booking_table`
--
ALTER TABLE `booking_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `rc_info`
--
ALTER TABLE `rc_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `restaurant_personne`
--
ALTER TABLE `restaurant_personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT untuk tabel `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `FK_Res_bc` FOREIGN KEY (`res_id`) REFERENCES `rc_info` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `booking_table`
--
ALTER TABLE `booking_table`
  ADD CONSTRAINT `FK_Bt` FOREIGN KEY (`table_id`) REFERENCES `restaurant_personne` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `FK_Rc_Menu` FOREIGN KEY (`res_id`) REFERENCES `rc_info` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rc_info`
--
ALTER TABLE `rc_info`
  ADD CONSTRAINT `FK_Cat` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Location` FOREIGN KEY (`location`) REFERENCES `locations` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `restaurant_personne`
--
ALTER TABLE `restaurant_personne`
  ADD CONSTRAINT `FK_R_pers` FOREIGN KEY (`tbl_id`) REFERENCES `restaurant_tables` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD CONSTRAINT `FK_Rc_tables` FOREIGN KEY (`res_id`) REFERENCES `rc_info` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
