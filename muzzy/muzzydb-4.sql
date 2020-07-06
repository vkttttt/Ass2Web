-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 08:18 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muzzydb`
--
CREATE DATABASE IF NOT EXISTS `muzzydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `muzzydb`;

-- --------------------------------------------------------

--
-- Table structure for table `bookshop`
--

CREATE TABLE `bookshop` (
  `id` int(11) NOT NULL,
  `idshop` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `timestart` datetime DEFAULT NULL,
  `timeend` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookshop`
--

INSERT INTO `bookshop` (`id`, `idshop`, `iduser`, `timestart`, `timeend`, `status`, `description`) VALUES
(6, 8, 7, '2019-11-07 09:00:00', '2019-11-07 11:00:00', 0, 'Cơ bản về các nhạc cụ'),
(7, 17, 8, '2019-11-07 08:00:00', '2019-11-07 10:00:00', 0, 'Nắm vững nhạc lý: Cách đọc tọa độ, bấm hợp âm, tiết tấu; Cách rải âm và quạt chả. \r\nThành thạo các điệu cơ bản: Surf nhanh - chậm, Disco, Blue, Ballad, Báo, Fox, Valse, Bolero, Slow Rock,...'),
(8, 13, 9, '2019-11-07 09:00:00', '2019-11-07 10:00:00', 0, 'Khóa học sẽ giúp các học viên có một hướng đi lâu dài.\r\nHọc viên có thể dò tone, dò giai điệu và hợp âm cho bài hát từ đó có thể tự đệm và solo một bài hát.'),
(9, 15, 10, '2019-11-07 09:00:00', '2019-11-07 11:00:00', 0, 'Giúp tự tin đệm đàn trên các giai điệu: Bolero, Chachacha, Slow, Disco, Twist.\r\nNắm được những kiến thức nhạc lý cơ bản để sáng tạo và đệm những bài hát yêu thích.'),
(10, 9, 9, '2019-11-07 09:00:00', '2019-11-07 10:00:00', 0, 'Bằng việc tự học, tự tìm kiếm bản nhạc, tự chơi bản nhạc đó dựa trên những gì đã được học, học viên có thể khám phá được năng khiếu âm nhạc, bản năng cảm thụ âm nhạc trong chính con người mình mà có thể chưa từng khám phá.'),
(11, 10, 10, '2019-11-07 14:00:00', '2019-11-07 16:00:00', 0, 'Sau khi học xong, học viên có thể nhận biết các điệu nhạc một cách chính xác khi nghe những bài nhạc thịnh hành hiện nay (Pop music)'),
(12, 12, 12, '2019-11-07 08:00:00', '2019-11-07 10:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `idowner` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `iduser`, `type`, `idowner`, `rate`, `content`, `time`) VALUES
(13, 20, 1, 8, 4, 'TEST KN', '2019-11-12 20:59:40'),
(14, 20, 1, 8, 4, 'Ahihihi', '2019-11-12 21:01:35'),
(15, 1, 1, 8, 4, 'Hello KN', '2019-11-12 21:03:19'),
(16, 20, 1, 8, 4, 'Ahihihi', '2019-11-12 21:03:25'),
(17, 20, 1, 8, 4, 'Ahihihi', '2019-11-12 21:03:49'),
(18, 20, 1, 8, 4, '9:04', '2019-11-12 21:04:51'),
(19, 20, 1, 8, 4, '09:09', '2019-11-12 21:09:55'),
(20, 20, 1, 8, 4, 'Test kjsfkjsđffkjsdfd', '2019-11-12 21:43:27'),
(21, 1, 2, 1, 3, 'khoá học hay quá', '2019-11-12 21:54:35'),
(22, 20, 2, 1, 3, 'Biết gì mà hay', '2019-11-12 21:55:23'),
(23, 20, 1, 11, 4, 'asdfasdfasdf', '2019-11-12 23:09:49'),
(24, 1, 1, 11, 4, 'Hello ngan', '2019-11-12 23:21:21'),
(25, 20, 2, 3, 3, 'ihihi', '2019-11-12 23:21:49'),
(26, 20, 3, 10, 4, 'tearch D', '2019-11-12 23:31:21'),
(27, 20, 1, 10, 4, 'sadfasdsfd', '2019-11-13 13:53:16'),
(28, 1, 1, 9, 4, 'test ajax cmt', '2019-11-13 13:54:14'),
(29, 19, 1, 14, 4, 'test 01', '2019-11-13 13:56:16'),
(30, 1, 1, 14, 4, 'hello thay ba', '2019-11-13 13:56:32'),
(31, 19, 1, 14, 4, 'hello hoc tro', '2019-11-13 13:56:47'),
(32, 1, 1, 14, 4, 'thay dao thay khoe khong', '2019-11-13 13:59:53'),
(33, 19, 1, 14, 4, 'test reset', '2019-11-13 14:00:14'),
(34, 19, 2, 3, 3, 'day hoc khong on nha', '2019-11-13 14:01:22'),
(35, 1, 1, 11, 4, 'hello', '2019-11-13 21:20:08'),
(36, 1, 1, 11, 4, 'hello', '2019-11-13 21:20:13'),
(37, 1, 1, 11, 4, 'hello', '2019-11-13 21:20:14'),
(38, 1, 1, 11, 4, 'hello', '2019-11-13 21:20:17'),
(39, 1, 1, 11, 4, 'hello', '2019-11-13 21:20:18'),
(40, 1, 1, 11, 4, 'sadfsdff', '2019-11-13 21:23:16'),
(41, 1, 1, 11, 4, 'assd', '2019-11-13 21:24:38'),
(42, 1, 1, 11, 4, 'assd', '2019-11-13 21:24:43'),
(43, 1, 1, 11, 4, 'assd', '2019-11-13 21:24:44'),
(44, 1, 1, 11, 4, 'assdassdfasdf', '2019-11-13 21:25:10'),
(45, 1, 1, 11, 4, 'dfdsf', '2019-11-13 21:28:10'),
(46, 2, 1, 9, 4, 'dfdfs', '2019-11-13 21:30:19'),
(47, 2, 1, 9, 4, '', '2019-11-13 21:30:21'),
(48, 2, 1, 9, 4, '', '2019-11-13 21:31:14'),
(49, 2, 1, 9, 4, 'sadads', '2019-11-13 21:31:21'),
(50, 2, 1, 9, 4, '', '2019-11-13 21:31:23'),
(51, 2, 1, 9, 4, 'adssfasdf', '2019-11-13 21:32:12'),
(52, 21, 1, 8, 4, 'tui la nguyen van hoa', '2019-11-14 23:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `idinstructor` int(11) NOT NULL,
  `content` text NOT NULL,
  `timestart` datetime DEFAULT NULL,
  `timeend` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `fee` float DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `idinstructor`, `content`, `timestart`, `timeend`, `status`, `address`, `fee`, `description`, `rate`, `discount`) VALUES
(1, 7, 'Tổng quan', '2019-11-07 09:00:00', '2019-11-07 11:00:00', 0, '305 Phan Đình Phùng, Phường 15, Phú Nhuận, Hồ Chí Minh', 25, 'Cơ bản về các nhạc cụ', 3, NULL),
(2, 8, 'Guitar đệm hát trong 30 ngày', '2019-11-07 08:00:00', '2019-11-07 10:00:00', 0, '17 Tô Hiến Thành, Phường 13, Quận 10, Phường 12 Quận 10 Hồ Chí Minh', 50, 'Nắm vững nhạc lý: Cách đọc tọa độ, bấm hợp âm, tiết tấu; Cách rải âm và quạt chả. \r\nThành thạo các điệu cơ bản: Surf nhanh - chậm, Disco, Blue, Ballad, Báo, Fox, Valse, Bolero, Slow Rock,...', 4, NULL),
(3, 9, '\r\nGiáo trình Finger Style ngắn nhất cho một quá trình lâu dài', '2019-11-07 09:00:00', '2019-11-07 10:00:00', 0, '27- 29 Đường Số 4, Linh Chiểu, Thủ Đức, Hồ Chí Minh', 29, 'Khóa học sẽ giúp các học viên có một hướng đi lâu dài.\r\nHọc viên có thể dò tone, dò giai điệu và hợp âm cho bài hát từ đó có thể tự đệm và solo một bài hát.', 4, NULL),
(4, 10, 'Dạy Đệm Organ Cấp Tốc', '2019-11-07 09:00:00', '2019-11-07 11:00:00', 0, '164 Đường Cây Trâm, Phường 8, Gò Vấp, Hồ Chí Minh', 99, 'Giúp tự tin đệm đàn trên các giai điệu: Bolero, Chachacha, Slow, Disco, Twist.\r\nNắm được những kiến thức nhạc lý cơ bản để sáng tạo và đệm những bài hát yêu thích.\r\n', 5, NULL),
(5, 9, 'Học Piano dễ dàng cho người mới bắt đầu', '2019-11-07 09:00:00', '2019-11-07 10:00:00', 0, '6E1 Ngô Thời Nhiệm, Phường 7, Quận 3, Hồ Chí Minh\r\n', 49, 'Bằng việc tự học, tự tìm kiếm bản nhạc, tự chơi bản nhạc đó dựa trên những gì đã được học, học viên có thể khám phá được năng khiếu âm nhạc, bản năng cảm thụ âm nhạc trong chính con người mình mà có thể chưa từng khám phá.', 4, NULL),
(6, 10, 'Những điệu nhạc căn bản dành cho Guitar Modern', '2019-11-07 14:00:00', '2019-11-07 16:00:00', 0, '1/10, khu phố 6, Thủ Đức, Bình Dương 75000', 19, 'Sau khi học xong, học viên có thể nhận biết các điệu nhạc một cách chính xác khi nghe những bài nhạc thịnh hành hiện nay (Pop music)', 3, NULL),
(7, 2, 'Học làm CEO', '2019-11-11 12:59:00', '2019-11-25 00:59:00', 1, 'Quân 1, HCM', 600, 'mô tả nè', 0, NULL),
(8, 20, 'DCLV', '2019-11-16 00:00:00', '2019-12-01 01:00:00', 0, 'ajsdhf', 696969, 'kasdjfhdj;osadffjhd', 0, NULL),
(9, 20, 'adsfdsasf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'asdsdfafsdd', 8, 'sdfsafasdffasfd', 0, NULL),
(10, 20, 'adsf', '2019-11-12 01:00:00', '2019-12-01 02:01:00', 1, '45dsgadf', 3254350, 'adgsdsdf34sdasf', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `idshop` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `idshop`, `discount`) VALUES
(1, 8, 95),
(2, 9, 90),
(3, 10, 85),
(4, 11, 90),
(5, 12, 90),
(6, 13, 95),
(7, 14, 90),
(8, 15, 75),
(9, 16, 80),
(10, 17, 80);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(256) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `fullname`, `email`, `subject`, `content`) VALUES
(1, 'Trần Minh Thiện', '3@gmail.com', 'Đánh giá dịch vụ', 'Đánh giá dịch vụ good');

-- --------------------------------------------------------

--
-- Table structure for table `joincourse`
--

CREATE TABLE `joincourse` (
  `id` int(11) NOT NULL,
  `idinstructor` int(11) NOT NULL,
  `idjoinuser` int(11) NOT NULL,
  `idcourse` int(11) DEFAULT NULL,
  `idschedule` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `joincourse`
--

INSERT INTO `joincourse` (`id`, `idinstructor`, `idjoinuser`, `idcourse`, `idschedule`, `status`) VALUES
(1, 7, 11, 1, 7, 0),
(2, 7, 12, 1, 7, 0),
(3, 7, 14, 1, 7, 0),
(4, 10, 12, 4, 10, 0),
(5, 10, 14, 6, 12, 0),
(6, 9, 14, 3, 11, 0),
(7, 9, 12, 5, 9, 0),
(8, 9, 11, 3, 9, 0),
(9, 8, 13, 2, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `roomID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`id`, `type`, `roomID`, `userID`, `startTime`, `endTime`) VALUES
(1, 'shop', 10, 22, '07:00:00', '08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `idinstructor` int(11) NOT NULL,
  `idshop` int(11) NOT NULL,
  `idcourse` int(11) NOT NULL,
  `timestart` datetime DEFAULT NULL,
  `timeend` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fee` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `idinstructor`, `idshop`, `idcourse`, `timestart`, `timeend`, `status`, `fee`) VALUES
(7, 7, 8, 1, '2019-11-07 09:00:00', '2019-11-07 11:00:00', 0, 25),
(8, 8, 17, 2, '2019-11-07 08:00:00', '2019-11-07 10:00:00', 0, 50),
(9, 9, 13, 3, '2019-11-07 09:00:00', '2019-11-07 10:00:00', 0, 29),
(10, 10, 15, 4, '2019-11-07 09:00:00', '2019-11-07 11:00:00', 0, 99),
(11, 9, 9, 5, '2019-11-07 09:00:00', '2019-11-07 10:00:00', 0, 49),
(12, 10, 10, 6, '2019-11-07 14:00:00', '2019-11-07 16:00:00', 0, 19);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dateopening` date DEFAULT NULL,
  `timeopen` time DEFAULT NULL,
  `timeclose` time DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `idowner` int(11) DEFAULT NULL,
  `url_image` text DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `name`, `address`, `dateopening`, `timeopen`, `timeclose`, `description`, `image`, `idowner`, `url_image`, `rate`, `discount`) VALUES
(8, 'Casanova Cafe', '305 Phan Đình Phùng, Phường 15, Phú Nhuận, Hồ Chí Minh', '2019-11-06', '08:00:00', '21:00:00', 'Test descript 1', NULL, 15, '\"/muzzy/public/image/12.jpeg\";\r\n\"/muzzy/public/image/detail_1.jpg\";\r\n\"/muzzy/public/image/detail_2.jpg\";\r\n\"/muzzy/public/image/detail_3.jpg\";\r\n\"/muzzy/public/image/detail_4.jpg\";\r\n\"/muzzy/public/image/detail_5.jpg\";\r\n\"/muzzy/public/image/detail_6.jpg\";\r\n\"/muzzy/public/image/detail_7.jpg\";\r\n\"/muzzy/public/image/detail_8.jpg\";\r\n\"/muzzy/public/image/detail_9.jpg\";\r\n\"/muzzy/public/image/detail_10.jpg\";', 4, 30),
(9, 'Quán Cafe Acoustic', '6E1 Ngô Thời Nhiệm, Phường 7, Quận 3, Hồ Chí Minh', '2019-11-06', '18:00:00', '00:00:00', NULL, NULL, 16, '\"/muzzy/public/image/12.jpeg\";\r\n\"/muzzy/public/image/detail_1.jpg\";\r\n\"/muzzy/public/image/detail_2.jpg\";\r\n\"/muzzy/public/image/detail_3.jpg\";\r\n\"/muzzy/public/image/detail_4.jpg\";\r\n\"/muzzy/public/image/detail_5.jpg\";\r\n\"/muzzy/public/image/detail_6.jpg\";\r\n\"/muzzy/public/image/detail_7.jpg\";\r\n\"/muzzy/public/image/detail_8.jpg\";\r\n\"/muzzy/public/image/detail_9.jpg\";\r\n\"/muzzy/public/image/detail_10.jpg\";', 2, 30),
(10, 'SONATA COFFEE & ACOUSTIC', '1/10, khu phố 6, Thủ Đức, Bình Dương 75000', '2019-11-06', '07:00:00', '22:00:00', NULL, NULL, 17, '\"/muzzy/public/image/12.jpeg\";\r\n\"/muzzy/public/image/detail_1.jpg\";\r\n\"/muzzy/public/image/detail_2.jpg\";\r\n\"/muzzy/public/image/detail_3.jpg\";\r\n\"/muzzy/public/image/detail_4.jpg\";\r\n\"/muzzy/public/image/detail_5.jpg\";\r\n\"/muzzy/public/image/detail_6.jpg\";\r\n\"/muzzy/public/image/detail_7.jpg\";\r\n\"/muzzy/public/image/detail_8.jpg\";\r\n\"/muzzy/public/image/detail_9.jpg\";\r\n\"/muzzy/public/image/detail_10.jpg\";', 1, 30),
(11, 'Phiêu Acoustic Cafe', '343/6 Tô Hiến Thành VN, Hẻm 343 Tô Hiến Thành, Phường 12, Quận 10, Hồ Chí Minh', '2019-11-06', '06:00:00', '22:15:00', NULL, NULL, 16, '\"/muzzy/public/image/12.jpeg\";\r\n\"/muzzy/public/image/detail_1.jpg\";\r\n\"/muzzy/public/image/detail_2.jpg\";\r\n\"/muzzy/public/image/detail_3.jpg\";\r\n\"/muzzy/public/image/detail_4.jpg\";\r\n\"/muzzy/public/image/detail_5.jpg\";\r\n\"/muzzy/public/image/detail_6.jpg\";\r\n\"/muzzy/public/image/detail_7.jpg\";\r\n\"/muzzy/public/image/detail_8.jpg\";\r\n\"/muzzy/public/image/detail_9.jpg\";\r\n\"/muzzy/public/image/detail_10.jpg\";', 5, 30),
(12, 'Say Acoustic', '60 Trần Minh Quyền, Phường 11, Quận 10, Hồ Chí Minh', '2019-11-06', '07:30:00', '22:45:00', NULL, NULL, 16, '\"/muzzy/public/image/12.jpeg\";\r\n\"/muzzy/public/image/detail_1.jpg\";\r\n\"/muzzy/public/image/detail_2.jpg\";\r\n\"/muzzy/public/image/detail_3.jpg\";\r\n\"/muzzy/public/image/detail_4.jpg\";\r\n\"/muzzy/public/image/detail_5.jpg\";\r\n\"/muzzy/public/image/detail_6.jpg\";\r\n\"/muzzy/public/image/detail_7.jpg\";\r\n\"/muzzy/public/image/detail_8.jpg\";\r\n\"/muzzy/public/image/detail_9.jpg\";\r\n\"/muzzy/public/image/detail_10.jpg\";', 3, 30),
(13, 'TOP COFFEE ACOUSTIC', '27- 29 Đường Số 4, Linh Chiểu, Thủ Đức, Hồ Chí Minh', '2019-11-06', '07:00:00', '22:00:00', NULL, NULL, 15, '\"/muzzy/public/image/12.jpeg\";\r\n\"/muzzy/public/image/detail_1.jpg\";\r\n\"/muzzy/public/image/detail_2.jpg\";\r\n\"/muzzy/public/image/detail_3.jpg\";\r\n\"/muzzy/public/image/detail_4.jpg\";\r\n\"/muzzy/public/image/detail_5.jpg\";\r\n\"/muzzy/public/image/detail_6.jpg\";\r\n\"/muzzy/public/image/detail_7.jpg\";\r\n\"/muzzy/public/image/detail_8.jpg\";\r\n\"/muzzy/public/image/detail_9.jpg\";\r\n\"/muzzy/public/image/detail_10.jpg\";', 2, 30),
(14, 'Nhặt Cafe', '30 Lý Thường Kiệt, Phường 15, Quận 10, Hồ Chí Minh 700915', '2019-11-06', '07:00:00', '21:00:00', NULL, NULL, 17, '\"/muzzy/public/image/12.jpeg\";\r\n\"/muzzy/public/image/detail_1.jpg\";\r\n\"/muzzy/public/image/detail_2.jpg\";\r\n\"/muzzy/public/image/detail_3.jpg\";\r\n\"/muzzy/public/image/detail_4.jpg\";\r\n\"/muzzy/public/image/detail_5.jpg\";\r\n\"/muzzy/public/image/detail_6.jpg\";\r\n\"/muzzy/public/image/detail_7.jpg\";\r\n\"/muzzy/public/image/detail_8.jpg\";\r\n\"/muzzy/public/image/detail_9.jpg\";\r\n\"/muzzy/public/image/detail_10.jpg\";', 5, 30),
(15, 'BI COFFEE ACOUSTIC', '164 Đường Cây Trâm, Phường 8, Gò Vấp, Hồ Chí Minh', '2019-11-06', '08:00:00', '22:00:00', NULL, NULL, 15, '\"/muzzy/public/image/12.jpeg\";\r\n\"/muzzy/public/image/detail_1.jpg\";\r\n\"/muzzy/public/image/detail_2.jpg\";\r\n\"/muzzy/public/image/detail_3.jpg\";\r\n\"/muzzy/public/image/detail_4.jpg\";\r\n\"/muzzy/public/image/detail_5.jpg\";\r\n\"/muzzy/public/image/detail_6.jpg\";\r\n\"/muzzy/public/image/detail_7.jpg\";\r\n\"/muzzy/public/image/detail_8.jpg\";\r\n\"/muzzy/public/image/detail_9.jpg\";\r\n\"/muzzy/public/image/detail_10.jpg\";', 4, 30),
(16, 'Cafe Đồng Nát Aucoustic', 'Đường Số 359, Phước Long B, Quận 9, Hồ Chí Minh', '2019-11-06', '08:00:00', '21:00:00', NULL, NULL, 17, '\"/muzzy/public/image/12.jpeg\";\r\n\"/muzzy/public/image/detail_1.jpg\";\r\n\"/muzzy/public/image/detail_2.jpg\";\r\n\"/muzzy/public/image/detail_3.jpg\";\r\n\"/muzzy/public/image/detail_4.jpg\";\r\n\"/muzzy/public/image/detail_5.jpg\";\r\n\"/muzzy/public/image/detail_6.jpg\";\r\n\"/muzzy/public/image/detail_7.jpg\";\r\n\"/muzzy/public/image/detail_8.jpg\";\r\n\"/muzzy/public/image/detail_9.jpg\";\r\n\"/muzzy/public/image/detail_10.jpg\";', 2, 30),
(17, 'Quán Coffee Ráng Chiều Acoustic', '17 Tô Hiến Thành, Phường 13, Quận 10, Phường 12 Quận 10 Hồ Chí Minh', '2019-11-06', '08:00:00', '22:00:00', NULL, NULL, 15, '\"/muzzy/public/image/12.jpeg\";\r\n\"/muzzy/public/image/detail_1.jpg\";\r\n\"/muzzy/public/image/detail_2.jpg\";\r\n\"/muzzy/public/image/detail_3.jpg\";\r\n\"/muzzy/public/image/detail_4.jpg\";\r\n\"/muzzy/public/image/detail_5.jpg\";\r\n\"/muzzy/public/image/detail_6.jpg\";\r\n\"/muzzy/public/image/detail_7.jpg\";\r\n\"/muzzy/public/image/detail_8.jpg\";\r\n\"/muzzy/public/image/detail_9.jpg\";\r\n\"/muzzy/public/image/detail_10.jpg\";', 3, 30);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phonenumber` int(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `imageurl` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `password`, `phonenumber`, `address`, `role`, `imageurl`) VALUES
(1, 'No Nut November', 'levannhat', 'nhat123', 1234569, 'Hà Nội', 1, NULL),
(2, 'Vu Kieu Hai Hoa', 'vukieuhaihoa', 'hoa123', 123456, 'Hồ Chí Minh', 1, NULL),
(3, 'Tran Quoc Hoa', 'tranquochoa', 'qhoa123', 123456, 'Hồ Chí Minh', 1, NULL),
(4, 'Vu Khac Tinh', 'vukhactinh', 'tinh123', 123456, 'Hồ Chí Minh', 1, NULL),
(5, 'Tran Thi Kim Ngan', 'tranthikimngan', 'ngan123', 123456, 'Hồ Chí Minh', 1, NULL),
(6, 'Chong Duc Anh', 'chongducanh', 'anh123', 123456, 'Hồ Chí Minh', 1, NULL),
(7, 'Le Van A', 'levana', 'second123', 123456, 'Hồ Chí Minh', 2, NULL),
(8, 'Tran Van B', 'tranvanb', 'second123', 123456, 'Hồ Chí Minh', 2, NULL),
(9, 'Nguyen Van C', 'nguyenvanc', 'second123', 123456, 'Hồ Chí Minh', 2, NULL),
(10, 'Nguyen Thi D', 'nguyenthid', 'second123', 123456, 'Hồ Chí Minh', 2, NULL),
(11, 'Customer A', 'customera', 'customer1234', 123456, 'Hồ Chí Minh', 4, NULL),
(12, 'Customer B', 'customerb', 'customer1234', 123456, 'Hồ Chí Minh', 4, NULL),
(13, 'Customer C', 'customerc', 'customer1234', 123456, 'Hồ Chí Minh', 4, NULL),
(14, 'Customer D', 'customerd', 'customer1234', 123456, 'Hồ Chí Minh', 4, NULL),
(15, 'Owner A', 'ownera', 'owner123', 123456, 'Hồ Chí Minh', 3, NULL),
(16, 'Owner B', 'ownerb', 'owner123', 123456, 'Hồ Chí  Minh', 3, NULL),
(17, 'Owner C', 'ownerc', 'owner123', 123456, 'Hồ Chí Minh', 3, NULL),
(18, 'Trần Minh Thiện', 'tranminhthien', '123', 123456789, 'TPHCM', 3, NULL),
(19, 'Phan Tấn Trung', 'thaygiaoba', '456', 123456789, 'Sa đéc', 3, NULL),
(20, 'Tran Thi Kim Ngan', 'kimngan', '123', 31279, 'Quận Cam, TP.HCM', 3, NULL),
(21, 'nguyen van hoa', 'haihoa', '123', 147852369, 'xa Phước An, Hớn Quản', 4, '/muzzy/public/image/logo.jpg'),
(22, 'hai gio sang', 'hoa', '123', 933544852, 'asdsfadaewradfssdasfddafs', 4, '/muzzy/public/image/gaobac.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookshop`
--
ALTER TABLE `bookshop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_foreign_bookshop` (`idshop`),
  ADD KEY `user_foreign_bookshop` (`iduser`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_foreign` (`iduser`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_foreign_course` (`idinstructor`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_foreign_discount` (`idshop`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joincourse`
--
ALTER TABLE `joincourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructor_foreign_joincourse` (`idinstructor`),
  ADD KEY `joinuser_foreign_joincourse` (`idjoinuser`),
  ADD KEY `course_foreign_joincourse` (`idcourse`),
  ADD KEY `schedule_foreign_joincourse` (`idschedule`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_foreign_schedule` (`idshop`),
  ADD KEY `user_foreign_schedule` (`idinstructor`),
  ADD KEY `course_foreign_chedule` (`idcourse`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_shop_foreign` (`idowner`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookshop`
--
ALTER TABLE `bookshop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `joincourse`
--
ALTER TABLE `joincourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookshop`
--
ALTER TABLE `bookshop`
  ADD CONSTRAINT `shop_foreign_bookshop` FOREIGN KEY (`idshop`) REFERENCES `shop` (`id`),
  ADD CONSTRAINT `user_foreign_bookshop` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `user_foreign` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `user_foreign_course` FOREIGN KEY (`idinstructor`) REFERENCES `user` (`id`);

--
-- Constraints for table `discount`
--
ALTER TABLE `discount`
  ADD CONSTRAINT `shop_foreign_discount` FOREIGN KEY (`idshop`) REFERENCES `shop` (`id`);

--
-- Constraints for table `joincourse`
--
ALTER TABLE `joincourse`
  ADD CONSTRAINT `course_foreign_joincourse` FOREIGN KEY (`idcourse`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `instructor_foreign_joincourse` FOREIGN KEY (`idinstructor`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `joinuser_foreign_joincourse` FOREIGN KEY (`idjoinuser`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `schedule_foreign_joincourse` FOREIGN KEY (`idschedule`) REFERENCES `schedule` (`id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `course_foreign_chedule` FOREIGN KEY (`idcourse`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `shop_foreign_schedule` FOREIGN KEY (`idshop`) REFERENCES `shop` (`id`),
  ADD CONSTRAINT `user_foreign_schedule` FOREIGN KEY (`idinstructor`) REFERENCES `user` (`id`);

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `owner_shop_foreign` FOREIGN KEY (`idowner`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
