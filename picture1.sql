-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 13, 2019 lúc 11:25 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoclaravel2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `picture1`
--

CREATE TABLE `picture1` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `picture1`
--

INSERT INTO `picture1` (`id`, `image`) VALUES
(1, 'Black-Clover-87x130.png'),
(2, 'Fairy-Tail-100-Years-Quest-90x130.jpg'),
(3, 'Baki-Son-of-Ogre-90x122.jpg'),
(4, 'H2-86x130.jpg'),
(5, 'Twin-Slaves-90x117.jpg'),
(6, 'Lookism-90x126.jpg'),
(7, 'a-bout-84x130.jpg'),
(8, 'Nanatsu-no-Taizai-90x116.png'),
(9, 'dau-pha-thuong-khung-90x130.jpg'),
(10, 'plunderer-86x130.png'),
(11, 'The-Gamer-90x119.png'),
(12, 'Busou-Shoujo-Machiavellianism-90x127.jpg'),
(13, 'My-Hero-Academia-90x123.jpg'),
(14, 'Nana-to-Kaoru-90x130.jpg'),
(15, '1555643792.png'),
(16, '1555643593.jpg'),
(17, 'toriko-61x61.jpg'),
(18, 'Onepunch-Man-61x61.png'),
(19, 'naruto-61x61.jpg'),
(20, 'Domestic-na-Kanojo-61x61.jpg'),
(21, 'fairy-tail-61x61.jpg'),
(22, 'naruto-gaiden-the-seventh-hokage-de-that-61x61.jpg'),
(23, 'dragon-ball-bay-vien-ngoc-rong-61x61.jpg'),
(24, 'conan-61x61.jpg'),
(25, 'hiep-khach-giang-ho-61x61.jpg'),
(26, 'one-piece-61x61.jpg'),
(27, 'yugioh-61x61.jpg'),
(28, 'kingdom-vuong-gia-thien-ha-61x61.jpg'),
(29, 'Attack-on-Titan-61x61.jpg'),
(30, 'Noblesse-61x61.jpg'),
(31, 'Bleach-61x61.jpg'),
(32, 'Psychometrer-Eiji-90x122.jpg'),
(33, 'Uchuu-Kyoudai-90x125.jpg'),
(34, 'Savanna-Game-88x130.jpg'),
(35, 'Kami-sen-90x130.jpg'),
(36, 'bokke-san-90x130.jpg'),
(37, 'manga-of-the-dead-90x128.jpg'),
(38, 'Trinity-Seven-7-Nin-no-Mahoutsukai-90x118.jpg'),
(39, 'Book-of-Shadows-90x120.jpg'),
(40, 'Sakigake-Otokojuku-86x130.jpg'),
(41, 'Black-Clover-61x61.png'),
(42, 'Hataraku-Maousama-61x61.jpg'),
(43, 'Zannen-Jokanbu-Black-General-san-61x61.jpg'),
(44, 'Yozakura-Quartet-61x61.jpg'),
(45, 'Rike-ga-Koi-ni-Ochita-no-de-Shoumeishitemita-61x61.jpg'),
(46, 'Edens-Zero-61x61.jpg'),
(47, 'Fairy-Tail-100-Years-Quest-61x61.jpg'),
(48, 'Baki-Son-of-Ogre-61x61.jpg'),
(49, 'H2-61x61.jpg'),
(50, 'Kokou-No-Hito-61x61.jpg'),
(51, '5-Toubun-no-Hanayome-61x61.jpg'),
(52, 'tay-du-ky-61x61.jpg'),
(53, 'One-Outs-61x61.jpg'),
(54, 'KANOJO-OKARISHIMASU-61x61.jpg'),
(55, 'Komi-san-wa-Komyusho-desu-61x61.jpg'),
(56, 'Sayonara-Ryuusei-Konnichiwa-Jinsei-61x61.png'),
(57, 'Twin-Slaves-61x61.jpg'),
(58, 'Lookism-61x61.jpg'),
(59, 'a-bout-61x61.jpg'),
(60, 'Nanatsu-no-Taizai-61x61.png'),
(61, 'dau-pha-thuong-khung-61x61.jpg'),
(62, 'team-medical-dragon-y-doi-rong-61x61.jpg'),
(63, 'Kaguya-sama-wa-Kokurasetai-Tensai-tachi-no-Renai-Zunousen-61x61.jpg'),
(64, 'Fudatsuki-no-Kyoko-chan-61x61.jpg'),
(65, 'Kimetsu-No-Yaiba-61x61.jpg'),
(66, 'tien-nghich-61x61.jpg'),
(67, 'Watari-kun-no-xx-ga-Houkai-Sunzen-61x61.jpg'),
(68, 'plunderer-61x61.png'),
(69, 'Enen-no-Shouboutai-61x61.jpg'),
(70, 'The-Gamer-61x61.png'),
(71, 'Bokutachi-wa-benkyou-ga-dekinai-61x61.png'),
(72, 'Busou-Shoujo-Machiavellianism-61x61.jpg'),
(73, 'Saike-Mata-Shitemo-61x61.jpg'),
(74, 'Binbougami-ga-61x61.jpg'),
(75, 'My-Hero-Academia-61x61.jpg'),
(76, 'Arifureta-Shokugyou-de-Sekai-Saikyou-61x61.jpg'),
(77, 'Nana-to-Kaoru-61x61.jpg'),
(78, 'hoa-phung-lieu-nguyen-61x61.jpg'),
(79, 'kingdom-vuong-gia-thien-ha-61x61.jpg'),
(80, 'overlord-61x61.jpg'),
(81, 'minamoto-kun-monogatari-61x61.jpg'),
(82, 'Akatsuki-no-Yona-61x61.jpg'),
(83, 'Sukedachi-09-61x61.jpg'),
(84, 'Billy-Bat-61x61.jpg'),
(85, 'one-piece-61x61.jpg'),
(86, 'Adamasu-No-Majotachi-61x61.jpg'),
(87, 'Destiny-Lovers-61x61.jpg'),
(88, 'Worlds-end-harem-FANTASIA-61x61.jpg'),
(89, 'Tokyo-Revengers-61x61.jpg'),
(90, 'Sekkaku-Cheat-wo-Moratte-Isekai-ni-Teni-shita-n-dakara-Suki-na-you-ni-Ikitemitai-61x61.jpg'),
(91, 'Moto-Sekai-Ichii-Subchara-Ikusei-Nikki-61x61.jpg'),
(92, 'Himari-No-Mawari-61x61.png'),
(93, 'Kimi-wa-008-61x61.jpg'),
(94, 'Black-Clover-87x130.png'),
(95, 'Fairy-Tail-100-Years-Quest-90x130.jpg'),
(96, 'Baki-Son-of-Ogre-90x122.jpg'),
(97, 'H2-86x130.jpg'),
(98, 'Twin-Slaves-90x117.jpg'),
(99, 'Lookism-90x126.jpg'),
(100, 'a-bout-84x130.jpg'),
(101, 'Nanatsu-no-Taizai-90x116.png'),
(102, 'dau-pha-thuong-khung-90x130.jpg'),
(103, 'plunderer-86x130.png'),
(104, 'The-Gamer-90x119.png'),
(105, 'Busou-Shoujo-Machiavellianism-90x127.jpg'),
(106, 'My-Hero-Academia-90x123.jpg'),
(107, 'Nana-to-Kaoru-90x130.jpg'),
(108, '1555643792.png'),
(109, '1555643593.jpg'),
(110, 'toriko-61x61.jpg'),
(111, 'Onepunch-Man-61x61.png'),
(112, 'naruto-61x61.jpg'),
(113, 'Domestic-na-Kanojo-61x61.jpg'),
(114, 'fairy-tail-61x61.jpg'),
(115, 'naruto-gaiden-the-seventh-hokage-de-that-61x61.jpg'),
(116, 'dragon-ball-bay-vien-ngoc-rong-61x61.jpg'),
(117, 'conan-61x61.jpg'),
(118, 'hiep-khach-giang-ho-61x61.jpg'),
(119, 'one-piece-61x61.jpg'),
(120, 'yugioh-61x61.jpg'),
(121, 'kingdom-vuong-gia-thien-ha-61x61.jpg'),
(122, 'Attack-on-Titan-61x61.jpg'),
(123, 'Noblesse-61x61.jpg'),
(124, 'Bleach-61x61.jpg'),
(125, 'Psychometrer-Eiji-90x122.jpg'),
(126, 'Uchuu-Kyoudai-90x125.jpg'),
(127, 'Savanna-Game-88x130.jpg'),
(128, 'Kami-sen-90x130.jpg'),
(129, 'bokke-san-90x130.jpg'),
(130, 'manga-of-the-dead-90x128.jpg'),
(131, 'Trinity-Seven-7-Nin-no-Mahoutsukai-90x118.jpg'),
(132, 'Book-of-Shadows-90x120.jpg'),
(133, 'Sakigake-Otokojuku-86x130.jpg'),
(134, 'Black-Clover-61x61.png'),
(135, 'Hataraku-Maousama-61x61.jpg'),
(136, 'Zannen-Jokanbu-Black-General-san-61x61.jpg'),
(137, 'Yozakura-Quartet-61x61.jpg'),
(138, 'Rike-ga-Koi-ni-Ochita-no-de-Shoumeishitemita-61x61.jpg'),
(139, 'Edens-Zero-61x61.jpg'),
(140, 'Fairy-Tail-100-Years-Quest-61x61.jpg'),
(141, 'Baki-Son-of-Ogre-61x61.jpg'),
(142, 'H2-61x61.jpg'),
(143, 'Kokou-No-Hito-61x61.jpg'),
(144, '5-Toubun-no-Hanayome-61x61.jpg'),
(145, 'tay-du-ky-61x61.jpg'),
(146, 'One-Outs-61x61.jpg'),
(147, 'KANOJO-OKARISHIMASU-61x61.jpg'),
(148, 'Komi-san-wa-Komyusho-desu-61x61.jpg'),
(149, 'Sayonara-Ryuusei-Konnichiwa-Jinsei-61x61.png'),
(150, 'Twin-Slaves-61x61.jpg'),
(151, 'Lookism-61x61.jpg'),
(152, 'a-bout-61x61.jpg'),
(153, 'Nanatsu-no-Taizai-61x61.png'),
(154, 'dau-pha-thuong-khung-61x61.jpg'),
(155, 'team-medical-dragon-y-doi-rong-61x61.jpg'),
(156, 'Kaguya-sama-wa-Kokurasetai-Tensai-tachi-no-Renai-Zunousen-61x61.jpg'),
(157, 'Fudatsuki-no-Kyoko-chan-61x61.jpg'),
(158, 'Kimetsu-No-Yaiba-61x61.jpg'),
(159, 'tien-nghich-61x61.jpg'),
(160, 'Watari-kun-no-xx-ga-Houkai-Sunzen-61x61.jpg'),
(161, 'plunderer-61x61.png'),
(162, 'Enen-no-Shouboutai-61x61.jpg'),
(163, 'The-Gamer-61x61.png'),
(164, 'Bokutachi-wa-benkyou-ga-dekinai-61x61.png'),
(165, 'Busou-Shoujo-Machiavellianism-61x61.jpg'),
(166, 'Saike-Mata-Shitemo-61x61.jpg'),
(167, 'Binbougami-ga-61x61.jpg'),
(168, 'My-Hero-Academia-61x61.jpg'),
(169, 'Arifureta-Shokugyou-de-Sekai-Saikyou-61x61.jpg'),
(170, 'Nana-to-Kaoru-61x61.jpg'),
(171, 'hoa-phung-lieu-nguyen-61x61.jpg'),
(172, 'kingdom-vuong-gia-thien-ha-61x61.jpg'),
(173, 'overlord-61x61.jpg'),
(174, 'minamoto-kun-monogatari-61x61.jpg'),
(175, 'Akatsuki-no-Yona-61x61.jpg'),
(176, 'Sukedachi-09-61x61.jpg'),
(177, 'Billy-Bat-61x61.jpg'),
(178, 'one-piece-61x61.jpg'),
(179, 'Adamasu-No-Majotachi-61x61.jpg'),
(180, 'Destiny-Lovers-61x61.jpg'),
(181, 'Worlds-end-harem-FANTASIA-61x61.jpg'),
(182, 'Tokyo-Revengers-61x61.jpg'),
(183, 'Sekkaku-Cheat-wo-Moratte-Isekai-ni-Teni-shita-n-dakara-Suki-na-you-ni-Ikitemitai-61x61.jpg'),
(184, 'Moto-Sekai-Ichii-Subchara-Ikusei-Nikki-61x61.jpg'),
(185, 'Himari-No-Mawari-61x61.png'),
(186, 'Kimi-wa-008-61x61.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `picture1`
--
ALTER TABLE `picture1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `picture1`
--
ALTER TABLE `picture1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
