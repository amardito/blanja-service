-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 06, 2021 at 06:17 PM
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
('1', 'T-Shirt', 'https://s3-alpha-sig.figma.com/img/6b1b/11de/b984818831143e1889054e98377f4423?Expires=1609113600&Signature=h5K-kUWu0uKTXuFqDP9PAVDLU4qQe83RK9UXcawfd~Ri5Q0Vt76YgDNT3Ogh5LXo1K3UdNMCfoc1LVa4ay7nM7OpigVrMTUvfwRx2-ByBD-Asn1LB2ceaikphscP70MqufQqE22eTKndTPx6d9NcSgcW92UGuuqAcVrflt1O3jlNW6mDL6WLDQW2HsrJkZ4tDs25ZtDt9ZP-IFKADP1yqYJ6uUuIyuikaw3zLXbVXDCplcf1Kfh4MoqbJmkz-~y7J-p0zMWE6vmfDPkbmMREpGw5PKNOU5vPoLBbRuR5KsdyRU9CkofsYfcxaMo5hLEl~Qs5Fb7LRlKI9RB4yYQLvg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('2', 'Short', 'https://s3-alpha-sig.figma.com/img/49a2/88f8/ad6aeec8a073aa0a657e7c7519263626?Expires=1609113600&Signature=fQW7rmM-Tc1rZH2IrF0HsQRRdh6wCJMWz400lM1nC8~xm2ZPMxqmGxuA~KjzMA1uG2mtb66OP6wkk1kr4108oqVCgN8avihwq200r4VIPWVKmwliKG0jZUrquTuicIVrCzaVh7fRK77cbi74lMMRBVkg34CcW5spHZLEh1YIXdljqy6ICawQnwMaYYiyn-80sAVC4EQLtFjEoHEItxyGWoCq48bZeuPv99722Far8-kRq8CWUzQJbJSgmJ91T3HSTctiH4gAIkwxYzOv0WAjrJ9~cAtUSoiH3eEODKiCJ8TyeQTjHEJsedH3e5przLz2Pp0Bc0zfAoxDhZATMZ2G3g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('3', 'Jacket', 'https://s3-alpha-sig.figma.com/img/65af/55c4/5d103020c208199aa0396789ad645df1?Expires=1609113600&Signature=OhRXCPtAr8yEuyB48-xLwYc631eCsdtCquXrqyjl2bv-xEdPnCjk3FW~f9v4rnAfU1Ut8Js~qsyKowSFCOJL3QSww0i1LFjRqWRByWq1Lv9saWrJyXhx6o4phorSBlAtPwaJYK7tQJ8y2Ugb2kLiPwIZwqrQJcsV1uj3G7AMdSYM6bFl82Hzi3sQHN9RWVfaV22497g0AnBmuV1kEgH4Ft2G8N9FK-Lmy7YSqgdDNW2SgT2RPd6XGtJ93gRzNOD2xV5kc0mn~uJaDIF4vVOGXnsaIeGa9K79qLpRhdz-WhTdALcaOQkzvutdK9CHWoWvqLO9BPGYn7xioGujVQkSfQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('4', 'Pants', 'https://s3-alpha-sig.figma.com/img/64b4/4714/896286200d422369861a2d608f35b6f4?Expires=1609113600&Signature=HhPMjZbf7SJWCQVtuYvKWqbxeSK47i716fHlpm4KwWIL3cKkY0vwThkR~eYjJ0x-VTjUt3JDtN-jt414jwU-zfthm38GH8hJeTcMKnXi1N697PcopiW5tIwUbVaqOTqwesVwimAQfQWE7NgzvgiwlujSUjoa~V1YV3NvNzGfx0~tHQCbZYEaByZWjG53GocE1SnO0t5BPZv~GXLSjor87zAD3eqfY94bU9mHmdmo4h1p-8eAcg0PQsj1NUSRWKPhk3U02~q-iIS6Fn-G025sClN-1fIrUkRd5xCWpc935zVP2xhuUrGecEygVndhBbdOsNa0jMHzfx7Xf~eGNEfUUQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('5', 'Shoes', 'https://s3-alpha-sig.figma.com/img/fc9b/6b9b/45aad43ae695c2de7b3949ff451bd7a1?Expires=1609113600&Signature=C9KSWlw79yKXh8InoZ-KAgETErkdUVU4rLTT6Sy6HdTAGbQFovNKnmKsn21YztOyPwWm4ENgF8JuR1bFTwTEpqcRR4dpX~tBdgdNEhQMOrZFmE2Zh5Ni1Ua1jScs4BQUto4obQbI5MLWumPcJdR755luqhj-TgJ-wOX9Us303~Gad-t5v0CkS3HVavDIDk0S26TrAvnlxaWx0AtY2cJAfg2vpT5NvHld~QsMiEDmeuKU1E1js4miLyjgSl4NVyvmUyikO8CFRTMJdlGgmIUbavt1mmQASs-dtO7V-EgRp1eWnWL1aOzVHsWZcDB6QazCzCd0WGwMHsriy-mwlQFOnA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA');

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
  `id_payment` int(11) NOT NULL,
  `id_product` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_qty` int(11) NOT NULL,
  `id_size` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('1608187662787', 'sepatu ', 'amar shop', 60000, 100, '5', 'test', 0, '/images/47-1608187662759-blanjaImg-product_img.jpg,/images/15-1608187662782-blanjaImg-product_img.jpg', '2020-12-17 13:47:43', '2020-12-17 13:47:43'),
('1608187862591', 'sepatu of yellow', 'amar shop', 130000, 12, '5', 'test', 0, '/images/16-1608187862582-blanjaImg-product_img.jpg,/images/36-1608187862586-blanjaImg-product_img.jpg,/images/39-1608187862587-blanjaImg-product_img.jpg', '2020-12-17 13:51:03', '2020-12-17 13:51:03'),
('1608187949844', 'sepatu of any', 'amar shop', 12000, 10, '5', 'test', 0, '/images/17-1608187949838-blanjaImg-product_img.jpg,/images/51-1608187949841-blanjaImg-product_img.jpg', '2020-12-17 13:52:30', '2020-12-17 13:52:30'),
('1608188033754', 'sepatu super', 'amar shop', 30000, 12, '5', 'test', 0, '/images/69-1608188033746-blanjaImg-product_img.jpg,/images/95-1608188033750-blanjaImg-product_img.jpg,/images/78-1608188033751-blanjaImg-product_img.jpg', '2020-12-17 13:53:54', '2020-12-17 13:53:54'),
('1608188133427', 'baju test 1', 'amar shop', 30000, 12, '', 'test', 0, '/images/45-1608188133236-blanjaImg-product_img.jpg,/images/38-1608188133326-blanjaImg-product_img.jpg,/images/18-1608188133376-blanjaImg-product_img.jpg', '2020-12-17 13:55:33', '2020-12-17 13:55:33'),
('1608188196526', 'baju test 2', 'amar shop', 30000, 12, '1', 'test', 0, '/images/56-1608188196525-blanjaImg-product_img.jpg,/images/60-1608188196525-blanjaImg-product_img.jpg', '2020-12-17 13:56:37', '2020-12-17 13:56:37'),
('1608188246365', 'baju test 3', 'amar shop', 300000, 12, '1', 'test', 0, '/images/24-1608188246361-blanjaImg-product_img.jpg,/images/16-1608188246362-blanjaImg-product_img.jpg,/images/23-1608188246362-blanjaImg-product_img.jpg', '2020-12-17 13:57:26', '2020-12-17 13:57:26'),
('1608188363112', 'baju test 4', 'amar shop', 12000, 12, '1', 'test', 0, '/images/76-1608188363097-blanjaImg-product_img.jpg,/images/28-1608188363097-blanjaImg-product_img.jpg,/images/7-1608188363097-blanjaImg-product_img.jpg,/images/93-1608188363099-blanjaImg-product_img.jpg', '2020-12-17 13:59:23', '2020-12-17 13:59:23'),
('1608188551075', 'jacket 2', 'amar shop', 13000, 20000, '3', 'test', 0, '/images/31-1608188551073-blanjaImg-product_img.jpg,/images/0-1608188551074-blanjaImg-product_img.jpg,/images/11-1608188551074-blanjaImg-product_img.jpg', '2020-12-17 14:02:31', '2020-12-17 14:02:31'),
('1608188561784', 'jacket 3', 'amar shop', 13000, 20000, '3', 'test', 0, '/images/49-1608188561780-blanjaImg-product_img.jpg,/images/28-1608188561781-blanjaImg-product_img.jpg,/images/76-1608188561782-blanjaImg-product_img.jpg', '2020-12-17 14:02:42', '2020-12-17 14:02:42'),
('1608188594396', 'jacket jacket bagus', 'amar shop', 250000, 200, '3', 'test', 0, '/images/94-1608188594392-blanjaImg-product_img.jpg,/images/72-1608188594392-blanjaImg-product_img.jpg,/images/25-1608188594393-blanjaImg-product_img.jpg', '2020-12-17 14:03:14', '2020-12-17 14:03:14'),
('1608188896375', 'jacket 1', 'amar shop', 20000, 17, '3', 'test', 0, '/images/27-1608188896373-blanjaImg-product_img.jpg,/images/74-1608188896373-blanjaImg-product_img.jpg,/images/9-1608188896374-blanjaImg-product_img.jpg', '2020-12-17 14:08:16', '2020-12-17 14:08:16'),
('1608189113936', 'jacket 6', 'amar shop', 20000, 17, '3', 'test', 0, '/images/7-1608189113934-blanjaImg-product_img.jpg,/images/19-1608189113935-blanjaImg-product_img.jpg,/images/30-1608189113935-blanjaImg-product_img.jpg', '2020-12-17 14:11:54', '2020-12-17 14:11:54'),
('1608189190887', 'baju test 5', 'amar shop', 120000, 12, '1', 'test', 0, '/images/23-1608189190885-blanjaImg-product_img.jpg,/images/70-1608189190886-blanjaImg-product_img.jpg,/images/66-1608189190886-blanjaImg-product_img.jpg', '2020-12-17 14:13:11', '2020-12-17 14:13:11'),
('1608189314517', 'sepatu bagus', 'amar shop', 12000, 12, '5', 'test', 0, '/images/13-1608189314397-blanjaImg-product_img.jpg,/images/85-1608189314399-blanjaImg-product_img.jpg,/images/85-1608189314415-blanjaImg-product_img.jpg', '2020-12-17 14:15:15', '2020-12-17 14:15:15'),
('1608189386024', 'sepatu super bagus', 'amar shop', 120000, 12, '5', 'test', 0, '/images/12-1608189385874-blanjaImg-product_img.jpg,/images/40-1608189385875-blanjaImg-product_img.jpg,/images/90-1608189385895-blanjaImg-product_img.jpg', '2020-12-17 14:16:26', '2020-12-17 14:16:26'),
('1608189671009', 'baju baru sangat bagus', 'amar shop', 120000, 12, '1', 'test product', 0, '/images/4-1608189671006-blanjaImg-product_img.jpg,/images/16-1608189671007-blanjaImg-product_img.jpg,/images/79-1608189671008-blanjaImg-product_img.jpg', '2020-12-17 14:21:11', '2020-12-17 14:21:11'),
('1608189769001', 'jacket baru', 'amar shop', 360000, 12, '3', 'test product', 0, '/images/65-1608189768997-blanjaImg-product_img.jpg,/images/42-1608189768999-blanjaImg-product_img.jpg,/images/94-1608189769000-blanjaImg-product_img.jpg', '2020-12-17 14:22:49', '2020-12-17 14:22:49'),
('1608202524972', 'sepatu super', 'store', 1233333, 13, '5', 'asd', 0, '/images/53-1608202524954-blanjaImg-product_img.jpg,/images/25-1608202524958-blanjaImg-product_img.jpg,/images/74-1608202524962-blanjaImg-product_img.jpg', '2020-12-17 17:55:25', '2020-12-17 17:55:38');

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
('1608187662787', '1'),
('1608187662787', '2'),
('1608187662787', ''),
('1608187862591', '4'),
('1608187862591', ''),
('1608187949844', '1'),
('1608187949844', ''),
('1608188033754', '3'),
('1608188033754', ''),
('1608188133427', '4'),
('1608188133427', ''),
('1608188196526', '1'),
('1608188196526', ''),
('1608188246365', '2'),
('1608188246365', ''),
('1608188363112', '1'),
('1608188363112', '2'),
('1608188363112', ''),
('1608188551075', '3'),
('1608188551075', '2'),
('1608188551075', ''),
('1608188561784', '3'),
('1608188561784', '2'),
('1608188561784', ''),
('1608188594396', '3'),
('1608188594396', '2'),
('1608188594396', ''),
('1608188896375', '3'),
('1608188896375', '4'),
('1608188896375', ''),
('1608189113936', '3'),
('1608189113936', '4'),
('1608189113936', ''),
('1608189190887', '4'),
('1608189190887', ''),
('1608189314517', '1'),
('1608189314517', ''),
('1608189386024', '4'),
('1608189386024', '3'),
('1608189386024', ''),
('1608189671009', '3'),
('1608189671009', '4'),
('1608189671009', ''),
('1608189769001', '2'),
('1608189769001', '4'),
('1608189769001', ''),
('1608202524972', 'undefined');

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
('1608187662787', '2'),
('1608187662787', '4'),
('1608187662787', '5'),
('1608187662787', ''),
('1608187862591', '4'),
('1608187862591', ''),
('1608187949844', '4'),
('1608187949844', ''),
('1608188033754', '4'),
('1608188033754', ''),
('1608188133427', '2'),
('1608188133427', '3'),
('1608188133427', ''),
('1608188196526', '1'),
('1608188196526', '4'),
('1608188196526', ''),
('1608188246365', '1'),
('1608188246365', ''),
('1608188363112', '4'),
('1608188363112', '3'),
('1608188363112', ''),
('1608188551075', '2'),
('1608188551075', '4'),
('1608188551075', ''),
('1608188561784', '2'),
('1608188561784', '4'),
('1608188561784', ''),
('1608188594396', '2'),
('1608188594396', '4'),
('1608188594396', '3'),
('1608188594396', ''),
('1608188896375', '3'),
('1608188896375', '4'),
('1608188896375', ''),
('1608189113936', '3'),
('1608189113936', '4'),
('1608189113936', ''),
('1608189190887', '2'),
('1608189190887', '4'),
('1608189190887', ''),
('1608189314517', '3'),
('1608189314517', ''),
('1608189386024', '3'),
('1608189386024', '4'),
('1608189386024', ''),
('1608189671009', '1'),
('1608189671009', '2'),
('1608189671009', ''),
('1608189769001', '3'),
('1608189769001', '2'),
('1608189769001', ''),
('1608202524972', 'undefined');

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
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwOTk1NTE3MiwiZXhwIjoxNjEwMDQxNTcyfQ.xRIB66klUyfN26AvumDYkFmd-l9Ggag_XFwq2rzAcZA');

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
('1608095213313', 'amardito', 'amardito37@gmail.com', NULL, NULL, '$2b$10$shR62eoT1oxiWTy5EaxO1eAOj8FMhwRjYgFN/MM7hmPsuxA/stt5e', '1'),
('1608095228721', 'amardito', 'amardito27@gmail.com', '1012920192', 'amar shop', '$2b$10$O2N/sa76gRYGKa8oUksiC.a6uj3b7BsoTyB0hRsBN1SQEB0nEKC2S', '2'),
('1608202410508', 'amar', 'amardito@gmail.com', 'asdqw', 'store', '$2b$10$CgoKsYsx3VoHXSaYGK7hnOCjlKOd7Ih92Y1oAb.ScrgsTangbirKm', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id_color`);

--
-- Indexes for table `history_payment`
--
ALTER TABLE `history_payment`
  ADD KEY `product_rel` (`id_product`),
  ADD KEY `size_rel` (`id_size`),
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
