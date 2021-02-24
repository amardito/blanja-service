-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2021 at 05:08 AM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Zh8bfxNoV6`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id_address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `recip_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address_street` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address_city` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address_region` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address_postcode` int(20) NOT NULL,
  `recip_phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id_address`, `user_email`, `address_name`, `recip_name`, `address_street`, `address_city`, `address_region`, `address_postcode`, `recip_phone`) VALUES
('1611698524759', 'test@mail.test', 'testing1', 'tst', 'test', 'test', 'test', 8553, 5589665),
('1611826672882', 'dito@mail.dito', 'Rumah', 'dito', 'Jl berbakti 12', 'bekasi, bekasi. utara', 'jawa barat, Indonesia', 85682, 856324),
('1614002546228', 'amardito37@gmail.com', 'Home', 'Amardito', 'jl. bahagia 1', 'bekasi', 'jawa barat, indonesia', 17565, 8946755),
('1614069060575', 'amardito27@gmail.com', 'home', 'dito', 'jl. bagus 01', 'bekasi', 'jawa barat, indonesia', 17128, 89456217);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `category_name`, `category_img`) VALUES
('1', 'T-Shirt', 'https://s3-alpha-sig.figma.com/img/6b1b/11de/b984818831143e1889054e98377f4423?Expires=1613347200&Signature=Rj08OdeRS9VblDgTRcS-s73aOo6LpupyDWBejOE1oJHjJtnr0puxSGa3wu32EWOAJEJrA1GO55GBNjKZo6SCWvqYYDA5wJ5TwXrqnzzzjWWio4r81sT8475En54Dp4KAayw0iMgTij4v9RwL5SbR8OEsk8h7ZMv1BJ4ZMusqwAxpBU5XIEGH0lw-FVXS~SK5cRFcMR5awhst~0uhAAYbyh1b~vgAWV0ftXe-j8ln1L8zyjaxTGN0QsT-p1IpLENEFBCIXTzmekksn1kDlwRZAgHLaJDvwfUzpfTqEDsZTJPNoN9fji23RDhpVleUnQMXUIrr76G7BoGPyyE4HlDpLw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('2', 'Short', 'https://s3-alpha-sig.figma.com/img/49a2/88f8/ad6aeec8a073aa0a657e7c7519263626?Expires=1613347200&Signature=V~FkfX6czLizZze49S6BZ21GAvRkbTZB9VUWjcLXzwEs7A7eZVq9yyX20YzxzIxNC85G2jchkTO4B6OmOX2d45ZOXZO7Mjq~FGBUMJpLIuo-HBQ8p2YZ2j19pUJdNOvz2ffYQ5y5XjL~Uj5RILA9cWD5jUKqZzaKLAQfPxyQvnoJ7oSbxpthYnZclWRbmcXeCfW8-Zh7CJ3CPtPaEwer1JhaKC00c5F7J5WPfGuBiuf8uutLaJCRoiOrOReqma9tAcfOTh~Lr6jz6kGlCrRWbF5dThcyjhASY~qDqfCiPnluqKhyCZbALX98V9uIeEHjuvK8XqMH86aD89cBGVG5gA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('3', 'Jacket', 'https://s3-alpha-sig.figma.com/img/65af/55c4/5d103020c208199aa0396789ad645df1?Expires=1613347200&Signature=Mvzk2x3npieq~w7XWr7-I~fod9hzrXe9UwjBZey0e-vDVGO~SJMq0p7GsfB~7LIbC8HCn1nH43Uvw1IgaixSgHCANl3XNNPBDn1~AkJRh~IXVcmF2VGZSIcB6SKNo6qMBjX7ljHSG~O6wfj9IJQYFUmZMBHA5Mw1iB1wotzExjJ-9JKSVjUtvLpSxBBY5UqlIH3jCAsotDUChhYnih00UsL9nXsQe5jg~lqzPYRoSlF~HANnfbK8CFZh17ZD7yKSAqcCVUipjfHXzH5A4nL9TnOZNKTd4vJgKjvUGN65-IsiPC1KsllSMHfFqe3qBS9KY48586q308g7XedVWOPTng__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('4', 'Pants', 'https://s3-alpha-sig.figma.com/img/64b4/4714/896286200d422369861a2d608f35b6f4?Expires=1613347200&Signature=T~K2phiicD-q~RAQ5-LR2q6LhDFC1agT3V-9bcHjADLfNBJ7-ACFlGfV4JXk0hauERcIy3QjEtNhsUIlf~xppcJetpkZ2j2gzfOukaVmgiRDC2Sn3R6qK9L7lXeJXQQRhz3lqD9hrVEwoh0zQu6sLAPaYQ2hpZRLhI4su65JMFR6u3Ep0HtoFgHKZ34hMAzafszBrdBTJG8OHYjgfJPTbOklOCEEyrkQ7Noh99ny9H7-kJRkcGFG5q~ZqikJ9bvU1LT7FwgHZKjHMfCfEAkjXQGftkGTlHSz-KyL8RaaZawKSwUWV4npnkIQx5oNTDE1eUAn8G3meqG7VSKj498bFQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('5', 'Shoes', 'https://s3-alpha-sig.figma.com/img/fc9b/6b9b/45aad43ae695c2de7b3949ff451bd7a1?Expires=1613347200&Signature=aFoyfiTK9~12667yUDTL1C8BUTaIXOXVRH4D6XFe-A80SkUVUXOsT8kbqL97WramqLIxgBBFhlQc8RvWJVgX6YoKmJw97Dx9QU87ThVC664BwsDMMGnLNHuYqUddgWpb21wNR9rxwCIRAn67K2MfHObqZdZ3HT1Z8HBmSP~vUwdjpW9yiLtAzMdeo9sw0S14M~aznf5Yy9eYDfJKXcl50IWWunAnqrGsbJ589-DGthH~GFvF9RPHjbayagY~fa6KlQo9hPYiKA5su-3Qn9X068Hf7N~Q~XkyFNoyiJYjVkMRbZ7NIkFQ-VlhRxdbqFcde53aujnMbnA5wvRWHQZYbw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatID` int(11) NOT NULL,
  `senderID` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `senderName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `receiverID` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `receiverName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatID`, `senderID`, `senderName`, `receiverID`, `receiverName`, `message`, `time`) VALUES
(3, '1608095213313', 'dito', '1611826177013', 'amardito', 'hai', '2021-02-19 18:18:14'),
(4, '1611826177013', 'amardito', '1608095213313', 'dito', 'hai dito ada yang bisa kami bantu?', '2021-02-19 18:20:00'),
(5, '1608095213313', 'dito', '1611826177013', 'amardito', 'barang ??? masih ada stock ngga?', '2021-02-23 12:05:00'),
(6, '1608095228721', 'amardito', '1611826177013', 'amardito', 'halo min?', '2021-02-23 10:10:01'),
(7, '1611826177013', 'amardito', '1608095228721', 'amardito', 'ya kenapa?', '2021-02-23 13:17:29'),
(8, '1611826177013', 'amardito', '1608095213313', 'dito', 'barang yang mana?', '2021-02-23 13:19:35'),
(9, '1611826177013', 'amardito', '1608095213313', 'dito', 'P', '2021-02-23 13:41:20'),
(10, '1611826177013', 'amardito', '1608095213313', 'dito', 'Test', '2021-02-23 13:41:27'),
(11, '1608095213313', 'dito', '1611826177013', 'amardito', 'ya?', '2021-02-23 13:41:51'),
(12, '1611826177013', 'amardito', '1608095213313', 'dito', 'Haloo', '2021-02-23 13:43:50'),
(13, '1611826177013', 'amardito', '1608095213313', 'dito', 'Okeee', '2021-02-23 13:44:39'),
(14, '1611826177013', 'amardito', '1608095213313', 'dito', 'Assalamualaikum', '2021-02-23 13:46:04'),
(15, '1611826177013', 'amardito', '1608095213313', 'dito', 'Waalaikumsalam', '2021-02-23 13:46:21'),
(16, '1611826177013', 'amardito', '1608095213313', 'dito', 'Apa ya', '2021-02-23 13:46:29'),
(17, '1611826177013', 'amardito', '1608095213313', 'dito', 'Apaann', '2021-02-23 13:52:56'),
(18, '1611826177013', 'amardito', '1608095213313', 'dito', 'Coba', '2021-02-23 13:53:48'),
(19, '1611826177013', 'amardito', '1608095213313', 'dito', 'Bisa ga', '2021-02-23 13:54:25'),
(20, '1611826177013', 'amardito', '1608095213313', 'dito', 'Ngomong', '2021-02-23 13:54:43'),
(21, '1611826177013', 'amardito', '1608095213313', 'dito', 'Coba lagi', '2021-02-23 13:55:46'),
(22, '1611826177013', 'amardito', '1608095213313', 'dito', 'Coba cona', '2021-02-23 13:56:01'),
(23, '1611826177013', 'amardito', '1608095213313', 'dito', 'Coba coba', '2021-02-23 13:56:15'),
(24, '1611826177013', 'amardito', '1608095213313', 'dito', 'Cokolatos', '2021-02-23 13:56:26'),
(25, '1608095213313', 'dito', '1611826177013', 'amardito', 'woi', '2021-02-23 14:00:56'),
(26, '1611826177013', 'amardito', '1608095213313', 'dito', 'Udahh', '2021-02-23 14:01:05'),
(27, '1608095213313', 'dito', '1611826177013', 'amardito', 'keren kan', '2021-02-23 14:01:05'),
(28, '1608095228721', 'amardito', '1611826177013', 'amardito', 'halo?', '2021-02-23 14:02:56'),
(29, '1611826177013', 'amardito', '1608095228721', 'amardito', 'Test', '2021-02-23 14:03:32'),
(30, '1611826177013', 'amardito', '1608095228721', 'amardito', 'Chat', '2021-02-23 14:03:54'),
(31, '1608095228721', 'amardito', '1611826177013', 'amardito', 'bro', '2021-02-23 14:08:03'),
(32, '1611826177013', 'amardito', '1608095228721', 'amardito', 'Ya?', '2021-02-23 14:08:43'),
(33, '1611826177013', 'amardito', '1608095228721', 'amardito', 'A', '2021-02-23 14:10:47'),
(34, '1611826177013', 'amardito', '1608095228721', 'amardito', 'Ya?', '2021-02-23 14:12:15'),
(35, '1608095228721', 'amardito', '1611826177013', 'amardito', 'lama amat balesnya broo', '2021-02-23 14:12:37'),
(36, '1608095228721', 'amardito', '1611826177013', 'amardito', 'bro', '2021-02-23 14:14:48'),
(37, '1608095228721', 'amardito', '1611826177013', 'amardito', 'cuk', '2021-02-23 14:15:25'),
(38, '1608095228721', 'amardito', '1611826177013', 'amardito', 'cok', '2021-02-23 14:26:32'),
(39, '1608095228721', 'amardito', '1611826177013', 'amardito', 'woi', '2021-02-23 14:27:03'),
(40, '1608095228721', 'amardito', '1611826177013', 'amardito', 'bro', '2021-02-23 14:27:13'),
(41, '1608095228721', 'amardito', '1611826177013', 'amardito', 'coba lagi', '2021-02-23 14:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id_color`, `color`, `hex`) VALUES
('1', 'red', 'red'),
('2', 'green', 'green'),
('3', 'blue', 'blue'),
('4', 'yellow', 'yellow');

-- --------------------------------------------------------

--
-- Table structure for table `history_payment`
--

CREATE TABLE `history_payment` (
  `id_payment` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id_store` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `color` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `address_id` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `track_id` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history_payment`
--

INSERT INTO `history_payment` (`id_payment`, `user_email`, `id_store`, `product_id`, `qty`, `color`, `size`, `price`, `created_at`, `address_id`, `payment`, `status`, `track_id`) VALUES
('1614090587043', 'amardito27@gmail.com', '1611826177013', '1611826939732', 3, 'none', 'none', 540000, '2021-02-23 21:29:47', '1614069060575', '1', 'Delivering', 'BLNJ-1614090587043');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `level`) VALUES
('1', 'costumer'),
('2', 'seller');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `category_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_sold` int(11) NOT NULL,
  `product_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `product_by`, `product_price`, `product_qty`, `category_id`, `product_desc`, `product_sold`, `product_img`, `created_at`, `updated_at`) VALUES
('1608188033754', 'sepatu super', 'amar shop', 30000, 12, '5', 'test', 0, '/images/69-1608188033746-blanjaImg-product_img.jpg,/images/95-1608188033750-blanjaImg-product_img.jpg,/images/78-1608188033751-blanjaImg-product_img.jpg', '2020-12-17 13:53:54', '2020-12-17 13:53:54'),
('1608188196526', 'baju test 2', 'amar shop', 30000, 12, '1', 'test', 0, '/images/56-1608188196525-blanjaImg-product_img.jpg,/images/60-1608188196525-blanjaImg-product_img.jpg', '2020-12-17 13:56:37', '2020-12-17 13:56:37'),
('1608188594396', 'jacket jacket bagus', 'amar shop', 250000, 200, '3', 'test', 0, '/images/94-1608188594392-blanjaImg-product_img.jpg,/images/72-1608188594392-blanjaImg-product_img.jpg,/images/25-1608188594393-blanjaImg-product_img.jpg', '2020-12-17 14:03:14', '2020-12-17 14:03:14'),
('1608188896375', 'jacket 1', 'amar shop', 20000, 17, '3', 'test', 0, '/images/27-1608188896373-blanjaImg-product_img.jpg,/images/74-1608188896373-blanjaImg-product_img.jpg,/images/9-1608188896374-blanjaImg-product_img.jpg', '2020-12-17 14:08:16', '2020-12-17 14:08:16'),
('1608189386024', 'sepatu super bagus', 'amar shop', 120000, 12, '5', 'test', 0, '/images/12-1608189385874-blanjaImg-product_img.jpg,/images/40-1608189385875-blanjaImg-product_img.jpg,/images/90-1608189385895-blanjaImg-product_img.jpg', '2020-12-17 14:16:26', '2020-12-17 14:16:26'),
('1608189769001', 'jacket baru', 'amar shop', 360000, 12, '3', 'test product', 0, '/images/65-1608189768997-blanjaImg-product_img.jpg,/images/42-1608189768999-blanjaImg-product_img.jpg,/images/94-1608189769000-blanjaImg-product_img.jpg', '2020-12-17 14:22:49', '2020-12-17 14:22:49'),
('1608202524972', 'sepatu super', 'store', 1233333, 13, '5', 'asd', 0, '/images/53-1608202524954-blanjaImg-product_img.jpg,/images/25-1608202524958-blanjaImg-product_img.jpg,/images/74-1608202524962-blanjaImg-product_img.jpg', '2020-12-17 17:55:25', '2020-12-17 17:55:38'),
('1611761666383', 'Deus Clothes', 'Testing Store', 200000, 10, '1', 'Deus Clothes\n\nCozy, warm and sweet\n\nLimited Stock !!', 0, '/images/17-1611764925341-blanjaImg-product_img.jpg', '2021-01-27 22:34:26', '2021-01-27 23:28:45'),
('1611826939732', 'Deus Clothes', 'dito store', 180000, 13, '1', 'Deus Clothes T - Shirt\n\nCozy and sweet \n\nLimited Stock!!', 0, '/images/13-1611826977946-blanjaImg-product_img.jpeg,/images/19-1611826977950-blanjaImg-product_img.jpg,/images/30-1611826977952-blanjaImg-product_img.jpg', '2021-01-28 16:42:20', '2021-02-23 16:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `product_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`product_id`, `color_id`) VALUES
('1608188033754', '3'),
('1608188033754', ''),
('1608188196526', '1'),
('1608188196526', ''),
('1608188594396', '3'),
('1608188594396', '2'),
('1608188594396', ''),
('1608188896375', '3'),
('1608188896375', '4'),
('1608188896375', ''),
('1608189386024', '4'),
('1608189386024', '3'),
('1608189386024', ''),
('1608189769001', '2'),
('1608189769001', '4'),
('1608189769001', ''),
('1608202524972', 'undefined'),
('1611188425899', '2'),
('1611188425899', '3'),
('1611188589307', '1'),
('1611188762565', '1'),
('1611188762565', '2'),
('1611188766639', '1'),
('1611188766639', '2'),
('1611761666383', '1'),
('1611761666383', '2'),
('1611761666383', '3'),
('1611761666383', '4'),
('1611826939732', '2'),
('1611826939732', '3'),
('1611826939732', '4');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `product_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`product_id`, `size_id`) VALUES
('1608188033754', '4'),
('1608188033754', ''),
('1608188196526', '1'),
('1608188196526', '4'),
('1608188196526', ''),
('1608188594396', '2'),
('1608188594396', '4'),
('1608188594396', '3'),
('1608188594396', ''),
('1608188896375', '3'),
('1608188896375', '4'),
('1608188896375', ''),
('1608189386024', '3'),
('1608189386024', '4'),
('1608189386024', ''),
('1608189769001', '3'),
('1608189769001', '2'),
('1608189769001', ''),
('1608202524972', 'undefined'),
('1611188425899', '1'),
('1611188425899', '3'),
('1611188589307', '1'),
('1611188589307', '2'),
('1611188762565', '2'),
('1611188762565', '3'),
('1611188762565', '5'),
('1611188766639', '2'),
('1611188766639', '3'),
('1611188766639', '5'),
('1611761666383', '1'),
('1611761666383', '2'),
('1611761666383', '3'),
('1611761666383', '4'),
('1611761666383', '5'),
('1611826939732', '2'),
('1611826939732', '3'),
('1611826939732', '4'),
('1611826939732', '5');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id_size`, `size`) VALUES
('1', 'xs'),
('2', 'sm'),
('3', 'md'),
('4', 'lg'),
('5', 'xl');

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist`
--

CREATE TABLE `token_blacklist` (
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token_blacklist`
--

INSERT INTO `token_blacklist` (`token`) VALUES
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJBbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwNzQyNDY1OSwiZXhwIjoxNjA3NTExMDU5fQ.EKtKwb4hqRCZl4XkKQw_yF1cPknDg3a6xog0u_z1oWM'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwNzQ0ODI3NCwiZXhwIjoxNjA3NTM0Njc0fQ.Hf7bfoiZCB281kOz80mp5ZlvQ6dugvnDHSDyswtvWWc'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG9AZ21haWwuY29tIiwiaWF0IjoxNjA3NTcyMTMwLCJleHAiOjE2MDc2NTg1MzB9.IccXTG64n_NmnRnDRNbrSq635xYY3GVLi6for4mJJIo'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MDgxNzQ3MzYsImV4cCI6MTYwODI2MTEzNn0.lEm3ITvqQxGMpjURJpta1-uvrxN8W_ckXx8hhtdlp7E'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MDgxNzQ3NTksImV4cCI6MTYwODI2MTE1OX0.dFfJt_KIwwi3evJr0loUZREW3fSPbzqjj6FHJuNK5W4'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MDgxNzUzODMsImV4cCI6MTYwODI2MTc4M30.EaYjUqRaZ9u0cGbY3ixyGRayVOmQlHntNHdvzzvqoRc'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwODE5MjA0OSwiZXhwIjoxNjA4Mjc4NDQ5fQ.6DxwWzTmbMUEZrzclpcepaHz8jOTa3tQ3Pk4qY7AMEM'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwODE5NjkyMSwiZXhwIjoxNjA4MjgzMzIxfQ.ZPxIJKRjwMYTRVh7MECAmwF06S2OpAET8RsbiyrwdxA'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MDgxOTY5NTgsImV4cCI6MTYwODI4MzM1OH0.P-33QPyvsWjg_F2_LHUVKA9yQLweDoeTytvXqhifq2s'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG9AZ21haWwuY29tIiwiaWF0IjoxNjA4MjAyNDIyLCJleHAiOjE2MDgyODg4MjJ9.AfgZRFfBOBlVjfL1A5mBlzDDviK1ePPDrSwL3OIvGpE'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MDgyMDI2MDcsImV4cCI6MTYwODI4OTAwN30.irivnq_CASsJ6enQMYk1vgndPpyB_gmyvfDP39gFeRM'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwODIwMjc5MiwiZXhwIjoxNjA4Mjg5MTkyfQ.Q3XITziBCITRBzQ2I8jH0qzdMo2q0o1TFaK4tStYlFs'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MDgyMDI4MjQsImV4cCI6MTYwODI4OTIyNH0.cbAmJB9Hm0J6rEbI1fSwyWJqqCGw6KGHVclSl26TptU'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwOTk1MjA4OSwiZXhwIjoxNjEwMDM4NDg5fQ.51iNUDAwmiGaLe6k0svbffdNXNjJPVDlXRiiUhLLSeU'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwOTk1NDYzNiwiZXhwIjoxNjEwMDQxMDM2fQ.IWo8Xoe4aPsi9at8LJxxVg2bwzE84qZLpU9odqjgc9U'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwOTk1NTE3MiwiZXhwIjoxNjEwMDQxNTcyfQ.xRIB66klUyfN26AvumDYkFmd-l9Ggag_XFwq2rzAcZA'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwOTk3NjY0NiwiZXhwIjoxNjEwMDYzMDQ2fQ.zbCKNWXzod4Qd3Qit9R85tomr9iixFQBA_DpxzARoAc'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwOTk3NjkyOSwiZXhwIjoxNjEwMDYzMzI5fQ.uWs_XptRh4PEG-yel3jNYeWzTA7QyuIjhrCvK_9us68'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwOTk3NjkyOSwiZXhwIjoxNjEwMDYzMzI5fQ.uWs_XptRh4PEG-yel3jNYeWzTA7QyuIjhrCvK_9us68'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwOTk3NjkyOSwiZXhwIjoxNjEwMDYzMzI5fQ.uWs_XptRh4PEG-yel3jNYeWzTA7QyuIjhrCvK_9us68'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYxMDI1MDgwMywiZXhwIjoxNjEwMzM3MjAzfQ.Ur-Iuz4W7xK8S7MDt4MTFBaNWrZSm5ZE6EngTCgc-mE'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYxMDI1MTcyMCwiZXhwIjoxNjEwMzM4MTIwfQ.RnZ4PaSjRBKMeh93cRWA2lKxWLmY1KHv6rhy12_abKA'),
('[object'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTAyNjQwNzYsImV4cCI6MTYxMDM1MDQ3Nn0.lvveQKgcntIr4owl_Is8AcrPo6E3eOt3GeGQ1NhJ0mY'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTAyNjQzMjEsImV4cCI6MTYxMDM1MDcyMX0.xTPgSX7qATF4RUHUfq30JvxmUcOZDxphgybeUVN3hY0'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTAyNjQ1ODksImV4cCI6MTYxMDM1MDk4OX0.6y1tIxqOq23RiKxS2Y-gb6KVq_NxKk0JlgxfnaczOaI'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYxMDg1NTUwNCwiZXhwIjoxNjEwOTQxOTA0fQ.4AQOZTcwlw_EQlf3Xv9Wc0k5Nu-nzFp7zr2xhjMftRk'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTEwMzI2OTksImV4cCI6MTYxMTExOTA5OX0.onJFqkJn9Qiej1zgHURpWIh5--mdz0WVAwwoVLmk6bM'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTExNTk1MjIsImV4cCI6MTYxMTI0NTkyMn0.3d_lB4QLhed9kVqIm5AJ4ai5IfaHQLAKlEo7saL7yDc'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTExNjAwMjcsImV4cCI6MTYxMTI0NjQyN30.0OyFlRTwgXiStXquXqvNUEfzFiih_vohgILwMUy2ibc'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTExNjA5NTEsImV4cCI6MTYxMTI0NzM1MX0.6WeyGvz3_9H6xEz9BDnW3pDCg70T_3AcPLE7xkTS9jU'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTExNjg1MDUsImV4cCI6MTYxMTI1NDkwNX0.guZCK2IcE8kLKaE5nOUbDT-Yg9vnsqC7rLxWUcLIS8Q'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTExNjg1ODAsImV4cCI6MTYxMTI1NDk4MH0.p3vZ9yYlqCs_6ji-ylnsPiKD6_p5SzDa40gxwR3bcpg'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJkb3B1QGVtYWlsLm1haWwiLCJpYXQiOjE2MTExOTE1NzcsImV4cCI6MTYxMTI3Nzk3N30.byg-Dl_D185rIqHfr3ItVdiH0QPf5ZL8E63xxXnuF_o'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzE3QGdtYWlsLmNvbSIsImlhdCI6MTYxMTIwMjEzNywiZXhwIjoxNjExMjg4NTM3fQ.PV3PsEn9FZLdfXPrnpF2GBF8mBxdz5tt3KdPwN8U0Sk'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTEyMDI1MzIsImV4cCI6MTYxMTI4ODkzMn0.iYc35oxv7kgSKm2SLQ9gt9xHCg2ZtiPAbf3W5rx0dgw'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTEyMDI3OTIsImV4cCI6MTYxMTI4OTE5Mn0.aY53kzw6nLpJLfS-a0Rw9Jb_iHRmZv-5XOOQDhsJx4A'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTEyMDMzNjAsImV4cCI6MTYxMTI4OTc2MH0.FfpH8qJAmx2QmK1XI4q91Cvh_mSpWIXVNIxJ5T_uT5k'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTEyMDQ2MDgsImV4cCI6MTYxMTI5MTAwOH0.TG0TTwNn_OnsdUXiyH1ExsiJGY6bKtJdhRPDqnXqfFk'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJ0ZXN0QG1haWwudGVzdCIsImlhdCI6MTYxMTYyMzI2OCwiZXhwIjoxNjExNzA5NjY4fQ.3R5ZV4kQN4nK7UAGdtd_LHrJm97bc88rYzcHXtJQhmQ'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJ0ZXN0QG1haWwudGVzdCIsImlhdCI6MTYxMTY1MjQxNCwiZXhwIjoxNjExNzM4ODE0fQ.APImC0kIYpqsWaFuNbtJf7OHFkhFReYsZcMqjA8e1DM'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJ0ZXN0QG1haWwudGVzdCIsImlhdCI6MTYxMTY1NTgyMCwiZXhwIjoxNjExNzQyMjIwfQ.k39YWcfyY0Rd2tso0qRCoD7ar5GWe9FP8Dn4yzfk-Vc'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJ0ZXN0QG1haWwudGVzdCIsImlhdCI6MTYxMTY2OTM4NywiZXhwIjoxNjExNzU1Nzg3fQ.trR3lDsyKwxZURVvTh8_wi5psUPB2lna8KeO_dp5vsQ'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJ0ZXN0QG1haWwudGVzdCIsImlhdCI6MTYxMTY5NjUyNywiZXhwIjoxNjExNzgyOTI3fQ.8RrtWIYHxew0UNn9z1jbagL7oS6V8I9FtIzY54sqTgs'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJ0ZXN0QG1haWwudGVzdCIsImlhdCI6MTYxMTcxMzQ1NywiZXhwIjoxNjExNzk5ODU3fQ._aDQprS2bxKbilJXT-91N_U0NCEIJNM1d8D8ErY-yAU'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoidGVzdEBtYWlsLnRlc3QiLCJpYXQiOjE2MTE3NDU0NjgsImV4cCI6MTYxMTgzMTg2OH0.6_Vh8CYS9srof0T1aGBYY8jbDHB8DWoaI6mj-Y7FA64'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoidGVzdEBtYWlsLnRlc3QiLCJpYXQiOjE2MTE3NzQzOTIsImV4cCI6MTYxMTg2MDc5Mn0.Lq4-TI_alONX9yHrUtbv0ygcyA9zdUA36YkY_Bmpju0'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoidGVzdEBtYWlsLnRlc3QiLCJpYXQiOjE2MTE3NzUzNTAsImV4cCI6MTYxMTg2MTc1MH0.jwbEEJB536n4cXTyzdm6hAM6tos86Ex0pTs0mdJm71I'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoidGVzdEBtYWlsLnRlc3QiLCJpYXQiOjE2MTE3NzU0NzEsImV4cCI6MTYxMTg2MTg3MX0._9epFo4P0CtYpi4QFZy17J-RH8qJWEKFGiCBZvfJqIs'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTE4MDMxMzQsImV4cCI6MTYxMTg4OTUzNH0.8lk72I0QigsZ3PzvHP9hyNRY1GXdktnW_-03IebEL-s'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoidGVzdEBtYWlsLnRlc3QiLCJpYXQiOjE2MTE4MDYzOTcsImV4cCI6MTYxMTg5Mjc5N30._nidCHyY0ubbqs__GPRbL2Vss2z09W5xXY3rrncXvj0'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJkaXRvQG1haWwuZGl0byIsImlhdCI6MTYxMTgyNjI4OCwiZXhwIjoxNjExOTEyNjg4fQ.hbMZDGwRKxvO2uJ1z0ZFbqOgWAubo8reXUrb918MSNE'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTIxNDc0MzgsImV4cCI6MTYxMjIzMzgzOH0.XA5K2P-J8ENWsKLOQz_4wh3akbo6Ntq3rIGf-KJwNCE'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTMwMjA2OTAsImV4cCI6MTYxMzEwNzA5MH0.TCjbhYjzNgpOsuOr6A5LSDk7gam3lS5f5INFTegUpAM'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTMwMzk2MjEsImV4cCI6MTYxMzEyNjAyMX0.hlhMKGp7oAGUiuCQTxh7cEQbCyJlgiUs3Wvoq-6tVoU'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTMxNDI1OTQsImV4cCI6MTYxMzIyODk5NH0.1TcnvFdHzNxGqyU_asr4Frzoychw7b3BRMtSg-yfYFc'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTMxNDI2MzksImV4cCI6MTYxMzIyOTAzOX0.qesN4ijoHWe_8W0XyVKJGjfP3dYWiCsdBSCR9Wk56tM'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTM0MjAwMDIsImV4cCI6MTYxMzUwNjQwMn0.DD1LQDuqacCoBehlMYrN79RPTOoKckS3e8LU-MQwkdo'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTM0MjAwNDEsImV4cCI6MTYxMzUwNjQ0MX0.hBlZk9Awv3r3XSNUPAOk8dBBwd1jIukRlQrWrm6Qz0Y'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTM0MjAwOTgsImV4cCI6MTYxMzUwNjQ5OH0.U5cwiO5bJ01TurHJ8238MXG7juA7-ECA4j--dgy_CpY'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzE3QGdtYWlsLmNvbSIsImlhdCI6MTYxMzYyNDU2NCwiZXhwIjoxNjEzNzEwOTY0fQ.Ba1_EFAnzE8JPnslYlCGGASqcJh3xCU419tKWpB1p3c'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTM0NzU2MzgsImV4cCI6MTYxMzU2MjAzOH0.IKmnlunV86RKa_7knJuozDPedVU043YdoQED3DSZIEk'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTM2MzE2NjMsImV4cCI6MTYxMzcxODA2M30.fXAM_OinfP244xaTlmWAxew35Dl__LGsqlivXN4hdB0'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzE3QGdtYWlsLmNvbSIsImlhdCI6MTYxMzYyNTg3MywiZXhwIjoxNjEzNzEyMjczfQ.8c_y5tLCP3Av9mKbusyJbmHNnWDnbQnIUuz_jU_7Shc'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTM2MzE3MDMsImV4cCI6MTYxMzcxODEwM30.4loRtN-RgLSbd2dPPICLlk4Z0EKOPkIcuPekfEgjheY'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTM2MzE4MDYsImV4cCI6MTYxMzcxODIwNn0.ury8ySJl7z_wM_fqSF4dOHrE7vbTAqw3swcvEvT-VRU'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTM3MzA5NTgsImV4cCI6MTYxMzgxNzM1OH0.NmDjrI2_uWhuG75-B3kHGzX4sEXuR3pmWRI69f5v640'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTQwMDIwMjgsImV4cCI6MTYxNDA4ODQyOH0.FWbPmFHDA2Cl-8bpIV7-xQiDMfBJoGypPUpCRV9NxCo'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTQwMDIwNTksImV4cCI6MTYxNDA4ODQ1OX0.LxIE27AF1XAJQrrkdek3WWtz0jGYectTbztu9dmUU78'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTQwMDI0NDMsImV4cCI6MTYxNDA4ODg0M30.M32SxTrFre_NHzyM3EnONUMHop07liISbwEUvWgOEb4'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTQwMDI2MjQsImV4cCI6MTYxNDA4OTAyNH0.7rCdERma8or6cHEzW5SIf8FKvinXixnMjtLUyl-6wLQ'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzE3QGdtYWlsLmNvbSIsImlhdCI6MTYxMzYzMTc3MywiZXhwIjoxNjEzNzE4MTczfQ.iP-RgQnUDzn5kDkZuc0p0hLllJtyJfZDdSNSRT_v_78'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiZGl0b0BtYWlsLmRpdG8iLCJpYXQiOjE2MTQwNTUxOTksImV4cCI6MTYxNDE0MTU5OX0.UG4M9aY3lc54SUd6Qs5W-YN5OvLdCV9a6Jr8HyRTGAQ'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTQwNjE5MDQsImV4cCI6MTYxNDE0ODMwNH0.bohm5LSZS5cqhTYWmXUOMLdh13kn3SDpLx-1CrkE82E'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8zN0BnbWFpbC5jb20iLCJpYXQiOjE2MTQwNjI0MzYsImV4cCI6MTYxNDE0ODgzNn0.0NQut7Oev9EXuF8r6T7HpMhHr9T0nOepHCnP-kvnNNs'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiYW1hcmRpdG8yN0BnbWFpbC5jb20iLCJpYXQiOjE2MTQwNjM3NTIsImV4cCI6MTYxNDE1MDE1Mn0.9WqkjFIL-P5R0t0H3P6wkWIuVVcOuX3MuKCN4ctzIhM'),
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6InNlbGxlciIsImVtYWlsIjoiZGl0b0BtYWlsLmRpdG8iLCJpYXQiOjE2MTQxMzY3NzMsImV4cCI6MTYxNDIyMzE3M30.3vJhUgdiSvIqbIzNrh-cRKRV062zl7lXJYeugBi-tqE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `store` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `user_name`, `user_email`, `phone`, `store`, `user_password`, `level_id`) VALUES
('1608095213313', 'dito', 'amardito37@gmail.com', '9868759', 'aba', '$2b$10$shR62eoT1oxiWTy5EaxO1eAOj8FMhwRjYgFN/MM7hmPsuxA/stt5e', '2'),
('1608095228721', 'amardito', 'amardito27@gmail.com', '1012920192', 'amar shop', '$2b$10$O2N/sa76gRYGKa8oUksiC.a6uj3b7BsoTyB0hRsBN1SQEB0nEKC2S', '2'),
('1608202410508', 'amar', 'amardito@gmail.com', 'asdqw', 'store', '$2b$10$CgoKsYsx3VoHXSaYGK7hnOCjlKOd7Ih92Y1oAb.ScrgsTangbirKm', '2'),
('1611191560067', 'mardopu', 'dopu@email.mail', NULL, NULL, '$2b$10$YLg6UUHe70nreZfF/z33XO2fAIIccFl9sNNh7tk/YdtVE/FuXy6bu', '1'),
('1611202119633', 'Khairi', 'amardito17@gmail.com', NULL, NULL, '$2b$10$hCqHZIfmSrN8pIf0mHWFD.JNtD3DjBJvIajd01kuyWXcWenC5XfYW', '1'),
('1611623210253', 'testing', 'test@mail.test', '008565885', 'Testing Store', '$2b$10$VrrFvLzAofHPT146r8I7OO8Q5/bL2MQQxbZ7uR71gqYQkb04GyRsK', '2'),
('1611826177013', 'amardito', 'dito@mail.dito', '0874563', 'dito store', '$2b$10$RlH.6fbZsSoaj52No345GOFL84lZQQeNNKA42fzdLLX1uXk7ijgpW', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id_address`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatID`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id_color`);

--
-- Indexes for table `history_payment`
--
ALTER TABLE `history_payment`
  ADD KEY `product_rel` (`product_id`),
  ADD KEY `id_payment` (`id_payment`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `category_rel` (`category_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD KEY `id_product` (`product_id`),
  ADD KEY `id_color` (`color_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD KEY `id_product` (`product_id`),
  ADD KEY `id_size` (`size_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id_size`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `store` (`store`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
