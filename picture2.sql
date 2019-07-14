-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 14, 2019 lúc 11:36 AM
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
-- Cấu trúc bảng cho bảng `picture2`
--

CREATE TABLE `picture2` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `picture2`
--

INSERT INTO `picture2` (`id`, `image`) VALUES
(9, 'Ashita-Dorobou-90x130.jpg'),
(10, 'Ashita-Dorobou-90x130.jpg'),
(11, 'Hazuki-Kanon-wa-Amakunai-90x126.jpg'),
(12, 'Hazuki-Kanon-wa-Amakunai-90x126.jpg'),
(13, 'like.png'),
(14, 'rating_on.gif'),
(15, 'rating_on.gif'),
(16, 'rating_on.gif'),
(17, 'rating_on.gif'),
(18, 'rating_half.gif'),
(19, 'The-Gamer-90x119.png'),
(20, 'a-bout-84x130.jpg'),
(21, 'Onepunch-Man-73x130.png'),
(22, 'Dr-Stone-90x126.jpg'),
(23, 'vo-dong-can-khon-90x120.jpg'),
(24, 'the-new-gate-90x130.jpeg'),
(25, 'H2-86x130.jpg'),
(26, 'minamoto-kun-monogatari-90x127.jpg'),
(27, 'One-Outs-84x130.jpg'),
(28, 'ORIGAMI-FIGHTER-87x130.jpg'),
(29, 'dragon-ball-bay-vien-ngoc-rong-90x123.jpg'),
(30, 'Kiku-84x130.jpg'),
(31, 'like.png'),
(32, 'rating_on.gif'),
(33, 'rating_on.gif'),
(34, 'rating_on.gif'),
(35, 'rating_on.gif'),
(36, 'rating_half.gif'),
(37, 'The-Gamer-90x119.png'),
(38, 'a-bout-84x130.jpg'),
(39, 'Onepunch-Man-73x130.png'),
(40, 'Dr-Stone-90x126.jpg'),
(41, 'vo-dong-can-khon-90x120.jpg'),
(42, 'the-new-gate-90x130.jpeg'),
(43, 'H2-86x130.jpg'),
(44, 'minamoto-kun-monogatari-90x127.jpg'),
(45, 'One-Outs-84x130.jpg'),
(46, 'ORIGAMI-FIGHTER-87x130.jpg'),
(47, 'dragon-ball-bay-vien-ngoc-rong-90x123.jpg'),
(48, 'Kiku-84x130.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `picture2`
--
ALTER TABLE `picture2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `picture2`
--
ALTER TABLE `picture2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
