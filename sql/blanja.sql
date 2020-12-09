-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2020 at 09:24 PM
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
('1', 'T-Shirt', 'https://s3-alpha-sig.figma.com/img/6b1b/11de/b984818831143e1889054e98377f4423?Expires=1607299200&Signature=BNDiEG1eckLpxEDEGYDddvQe-of1ggw4B9dvZF15Nj1yLdZd3XlITzEraRs9V4ATnNZvKRuPp8P~iisWoXRIFVihOYybFm63-5JzgXd4YytkOfTGL35xvwye~Ua-es7HdfkJmrtKJKXNZ6vrTlBpXnmF7f9pDuU2uXg9oxEmVlV4TUXs6qVCNMI~0ZQCJXn0iWB7mayeWFY750t0k0gSuC3twNSNlK1VWOFhY5mMcQRf9kpPFLrc0hGvtuDfZNWnq3QVfar-VuvE5hX6JkLZgyu4KyBcXuE5EE~HpMfzpabypyW8fvLKtTVLbk3J0g0Ih4z6Iim5Hl0GQhTsL8KmaQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('2', 'Short', 'https://s3-alpha-sig.figma.com/img/49a2/88f8/ad6aeec8a073aa0a657e7c7519263626?Expires=1607299200&Signature=DUXS-Pz49MFcD80ymHfimtx3v7WkD-5hJoIu8PAUme5DRr5CEdTEDh4hU-jQ3XQC2r7l4f61HzW0YbIAN9sTfXzKi18CBQ-W~omXq59baIfp1EDjk-Rh7zmHM9s1cuTSDLMbOK3jS~1yijI1oncj0DalhLDQmP80sbda9g-fheBTFWjPdSmjpYuTmA7dj-nS2VvVL52xI8W8Nbqgabi1bLiZfo3yq-1jIduuVqo4DGpZ-sE0a1xNt9f86ywfPVJLHWdcNmBfV76l~8fpBhCWr~6hfplQuHeWiVqv1JOjkApkdsV1DReKBa6u6xyEeI4EeFvboRPItDsHMIsNE-mpWg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('3', 'Jacket', 'https://s3-alpha-sig.figma.com/img/65af/55c4/5d103020c208199aa0396789ad645df1?Expires=1607299200&Signature=RFLPy60MR0jwzKMweSKbAjDDlVdUwwanx0l84GWRox1I8yZD9FkrS6607CDAYWzTTLCg6xDmh9gNEGA8cp~ysn3302MonoPeLho2b1aCAJHsqb4bPy-8W4VXHedjvx4B2TSONMMOPyITLpniPPabnxfEnIySiQwtUcci4SM-vMbuEwnyG4uRg~NxPpiPLLqI4yX99LfJu9UVKgF2MvQb-gE8q2tTUfcVk4LyFF~YQcsuFaD-XVKLkwpD2lZlqVJUZcsETLH~mrcFFFxlGOtuwyQ9nAOy58vX1YMSd2FYBhqqE9vbTt9gXATAVnHsV8XmVBI9nSA8PvgpFSJH6lc75Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('4', 'Pants', 'https://s3-alpha-sig.figma.com/img/64b4/4714/896286200d422369861a2d608f35b6f4?Expires=1607299200&Signature=JHk2SKKCqIVHY6Q3F6r9mrvf99sQj~YGwIyZMuQ8Vc9zM3l2M~TY4j6EhshtqeugvitN~M3IwdLDctFEQ0c8wWAD0E-SdxP4QNCA8X6Ei9-qXCwMSL-4UzhAeb6ICCqNfYe-WXNymGgSbg3HWSvCPyzoDcmXH4FmhvMuIHiEAGwQwTzm8NC9xfdyNFet6B3Dkl381bszh6~E-JahA8MLMMcM3DyOHg35RiiKamUsARh9nBYoKqej3WbyrRIj3Sx4FsvpftwAiMMT2NG4q1JrealxNXaJHrjp9XT0~b0v2vF8P7xCNJHKkCHesJIPrRwMG1ywFXySGulhG9BgAMVLUA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
('5', 'Shoes', 'https://s3-alpha-sig.figma.com/img/fc9b/6b9b/45aad43ae695c2de7b3949ff451bd7a1?Expires=1607299200&Signature=gzJEr8RKH-d2DqAy0sZeawqvn2oD4VzcklrT0koWlhihF87oea~otN6Qixxgpqq6Hw9h4slVHhgLq4fB8C1X0MNH-pW6kaCT6dailNed-Z7uzoyacX-2toqzXHUKSWhfr8AeSFGISE9AE4Tlfi--bpMLozk3lUDlcaWPqOUS-87KpUgFSvUafQ6mnowz8nMSCVwvJow5WuS0pcOwgPVk6OC17~xEn6xi~JIG0PdYyT5oxObyTAsAOH7B~PPpvkDZuOYKzlN0ABiLxjeIpuXYAp-DXPYh44oW9vFaRO6JMDAq-ol8SOSP52WTlKlx85PonX3OhM9T6iiEPAGyiIiyqg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA');

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
('1607323645697', 'Polo Shirt Kaos Kerah Microsoft Blue pakaian ', 'toko kaos', 120000, 100, '1', 'kaos/baju : cotton combed20s,30s, polo shirt : lacoste combed, sweater/hoodie : catton fleece', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2020/3/11/190843/190843_0e2dea40-19b5-4e1b-b215-ad37bd02d956_700_700.webp', '2020-12-07 13:47:26', '2020-12-07 13:47:26'),
('1607323849226', 'Herbamojo Merchandise T-Shirt', 'toko kaos', 50000, 100, '1', 'Herbamojo T-Shirt (Pria/Wanita) Ukuran tersedia : XS,S,M,L,XL Bahan : Katun', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2020/1/22/82446036/82446036_9fad7237-dc7f-4a86-ab1d-85c1263d8d20_1200_1200.webp', '2020-12-07 13:50:49', '2020-12-07 13:50:49'),
('1607324038621', 'POLO SHIRT PRIA FR3D P3RRY ORIGINAL FO - Putih, L', 'toko kaos', 159000, 100, '1', 'Herbamojo T-Shirt (Pria/Wanita) Ukuran tersedia : XS,S,M,L,XL Bahan : Katun', 0, 'https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/7/8/3dffd549-7013-480b-8d2a-09b367217487.jpg.webp', '2020-12-07 13:53:59', '2020-12-07 13:53:59'),
('1607324223640', 'KEMEJA PANTAI PRIA BAJU HAWAI COWOK BALI REGGAE COWO PENDEK SANTAIDAUN - NAVY', 'toko kaos', 34000, 100, '1', 'LINGKAR DADA : 106 CM PANJANG BAJU : 70 CM MOTIF DAUN KANCING HIDUP', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2019/10/19/41586201/41586201_3a772cdd-a464-4919-86a2-b1f3af86a68a_862_862.webp', '2020-12-07 13:57:04', '2020-12-07 13:57:04'),
('1607324405612', 'T-SHIRT BAPE MIRROR SHARK IMPOR PERFECT CLONE BEST HIGH ORI QUALITY 11', 'toko kaos', 275000, 100, '1', 'BUKAN UNTUK ANDA YANG SEKEDAR MENCARI BARANG TEMBAKAN IMPOR PREMIUM MAHAL? TIDAK MUNGKIN GAN, KAMI JAMIN HARGA KAMI TERMURAH, DIJAMIN BEDA DENGAN BARANG2 \'MIRROR\' DI PASARAN YANG DIJUAL DENGAN HARGA 200RBAN. MODEL BOLEH SAMA TAPI KUALITAS PASTI..PASTI... BEDA GAN', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2019/6/30/730951/730951_f52048aa-6ba7-4206-a6b9-e6dde2880272_1128_1128.webp', '2020-12-07 14:00:06', '2020-12-07 14:00:06'),
('1607324930017', 'Celana Pendek Pria Nike', 'toko celana pendek', 25000, 100, '2', 'Ada 2 saku (kiri dan kanan) Freesize: cocok untuk yg biasa pakai ukuran M-L Lingkar pinggang = 60-100cm Panjang = 42cm', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2020/6/25/508624922/508624922_e82d204b-529e-4f1f-b714-3b425943d81f_700_700.jpg.webp', '2020-12-07 14:08:50', '2020-12-07 14:08:50'),
('1607325107560', 'PROMO CELANA CHINO PENDEK RIP PINGGANG KARET PRIA - RIP Cream, 22', 'toko celana pendek', 34900, 100, '2', 'Bahan : katun twill > Model pinggang karet/rip > Ada tali kolor fleksibel dan modis > Detail Saku belakang model pendam (bukan tempel) > Variasi kantong polos ( kantong polos sama dengan warna bahan )', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2020/7/31/27246538/27246538_4b6855ac-fa2d-490c-ba6d-4685d46f4a1b_1024_1024.webp', '2020-12-07 14:11:48', '2020-12-07 14:11:48'),
('1607325248720', 'Okechuku CHARLES Celana Pendek Pria Katun Celana Santai Pria Shortpant - Hitam, 32', 'toko celana pendek', 89900, 100, '2', 'Celana pendek santai pria model terbaru dari Okechuku, kualitas premium, terbuat dari bahan twill canvas (tidak stretch). Sifat bahan halus, nyaman di kulit, dan tidak panas. Model simple, basic, dan elegan dengan kantong depan di paha bagian atas kiri kanan, juga di paha bagian bawah samping kiri kanan dan juga di kiri kanan belakang yang dilengkapi dengan tutup pada kantongnya (dilengkapi dengan perekat).', 0, 'https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/11/18/87a9c911-f32b-4c8d-9c7f-1718dfd0f89d.jpg.webp', '2020-12-07 14:14:09', '2020-12-07 14:14:09'),
('1607325394023', 'Celana Pendek Pantai Pria Model Distro Terbaru', 'toko celana pendek', 49000, 100, '2', 'Celana Pendek Pantai Pria Model Distro Terbaru\r\n\r\nBahan : Baby Terry\r\n\r\nSize : Allsize(M fit to L)\r\nmax muat sampai size 36\r\nAda karet pinggangnya & ada tali pinggang', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2020/1/17/2808422/2808422_33ee9a52-3915-4d48-93c9-07156b570c2a_1000_1000.webp', '2020-12-07 14:16:34', '2020-12-07 14:16:34'),
('1607325639902', 'VM Celana Pendek JUMBO Celana Santai - Hitam, ALLSIZE', 'toko celana pendek', 39000, 100, '2', 'celana Pendek - Celana Santai, BAHAN : KATUN STRETCH , ADEM DAN NYAMAN, PINGGANG KARET, celana pendek pria, Bahan Katun Stretch, bahan adem dan nyaman dipakai, Pinggang karet elastis', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2019/9/4/587654/587654_95492dae-da0f-4486-bea4-1b7d8bb03f7d_1000_1000.webp', '2020-12-07 14:20:40', '2020-12-07 14:20:40'),
('1607325938912', 'H&M Hooded Jacket Regular Fit - Dark Blue Marl - S', 'toko Jacket', 210000, 100, '3', 'H&M ORIGINAL Sale Ready Stock Jaminan 100% Asli produk atau Uang Kembali H&M Hooded Jacket Regular Hit - Dark Blue Marl Retail price 399,900 Now only 210,000 nett --> Lower price', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2019/12/17/880429/880429_1fbdbb3b-f7f6-42a8-83f0-a8c5c678330b_768_768.jpg.webp', '2020-12-07 14:25:39', '2020-12-07 14:25:39'),
('1607326048297', 'Hush Puppies Jacket Delhi In Olive - Olive, M', 'toko Jacket', 359400, 100, '3', 'Jacket Unisex Dengan Bahan Water Resistant', 0, 'https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/11/23/ddaac28a-c1bd-49ff-8e9e-a331624147e9.jpg.webp', '2020-12-07 14:27:28', '2020-12-07 14:27:28'),
('1607326258955', 'Jacket NY baseball Jacket Jaket MLBNY unisex bomber jacket', 'toko Jacket', 850000, 100, '3', 'S tinggi badan 160-170cm, berat badan 40-50kg, M tinggi badan 165-175cm, berat badan 50-60kg, L tinggi badan 170-180cm, berat badan 60-70kg, XL tinggi badan 170-185cm, berat badan 70-80kg', 0, 'https://ecs7.tokopedia.net/img/cache/700/VqbcmM/2020/10/7/496b7f17-223d-45d3-bbef-4916a8376c8f.jpg.webp', '2020-12-07 14:30:59', '2020-12-07 14:30:59'),
('1607326362180', 'jaket jacket parasut outdoor original daiwa mancing antiair waterproof', 'toko Jacket', 550000, 100, '3', 'Jaket daiwa original,cocok untuk memancing karena tebal dan anti air size XL Minus kegesek dikit ujung lengan', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2020/3/20/831039/831039_a27e269a-15d0-4af8-8ec1-9cfa51014828_1152_1152.jpg.webp', '2020-12-07 14:32:42', '2020-12-07 14:32:42'),
('1607326527126', 'JACKET HOODIE XTC INDONESIA - Hitam, XS', 'toko Jacket', 150000, 100, '3', '> Tebal dan sejuk, Saat cuaca panas nyaman di pakai karena bahan ini dapat menyerap keringat dengan baik. Saat cuaca dingin juga sangat cocok dipakai karena sweater ini akan membuat badan terasa hangat. Sweater ini memakai pola jahit overdeck, Seperti sweater yang di produksi di luar negeri,', 0, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2020/11/3/7772891/7772891_e23f2d61-26f9-4a0c-9995-b9a2ef931af5.jpg.webp', '2020-12-07 14:35:27', '2020-12-07 14:35:27');

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
('1607323645697', '3'),
('1607323849226', '1'),
('1607323849226', '2'),
('1607323849226', '3'),
('1607324038621', '1'),
('1607324038621', '3'),
('1607324038621', '4'),
('1607324223640', '1'),
('1607324223640', '2'),
('1607324223640', '4'),
('1607324405612', '2'),
('1607324405612', '3'),
('1607324405612', '4'),
('1607324930017', '2'),
('1607324930017', '3'),
('1607324930017', '4'),
('1607325107560', '2'),
('1607325107560', '4'),
('1607325248720', '2'),
('1607325248720', '3'),
('1607325394023', '2'),
('1607325394023', '3'),
('1607325639902', '2'),
('1607325639902', '3'),
('1607325938912', '2'),
('1607325938912', '3'),
('1607325938912', '4'),
('1607326048297', '2'),
('1607326048297', '3'),
('1607326048297', '4'),
('1607326258955', '1'),
('1607326258955', '3'),
('1607326258955', '4'),
('1607326362180', '1'),
('1607326362180', '3'),
('1607326362180', '4'),
('1607326527126', '1'),
('1607326527126', '3'),
('1607326527126', '4'),
('1607446055538', '1'),
('1607446055538', '3'),
('1607446055538', '4'),
('1607533890720', '1'),
('1607533890720', '2'),
('1607533890720', '3'),
('1607533890720', '4'),
('1607541643496', '1'),
('1607541643496', ','),
('1607541643496', '2'),
('1607541643496', ','),
('1607541643496', '3'),
('1607541643496', ','),
('1607541643496', '4'),
('1607541746417', '['),
('1607541746417', '1'),
('1607541746417', ','),
('1607541746417', '2'),
('1607541746417', ','),
('1607541746417', '3'),
('1607541746417', ','),
('1607541746417', '4'),
('1607541746417', ']'),
('1607541759376', '1'),
('1607541759376', ','),
('1607541759376', '2'),
('1607541759376', ','),
('1607541759376', '3'),
('1607541759376', ','),
('1607541759376', '4'),
('1607541814072', '1'),
('1607541814072', ','),
('1607541814072', '2'),
('1607541814072', ','),
('1607541814072', '3'),
('1607541814072', ','),
('1607541814072', '4'),
('1607541891130', '1'),
('1607541891130', ','),
('1607541891130', '2'),
('1607541891130', ','),
('1607541891130', '3'),
('1607541891130', ','),
('1607541891130', '4');

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
('1607323645697', '3'),
('1607323645697', '4'),
('1607323645697', '5'),
('1607323849226', '1'),
('1607323849226', '2'),
('1607323849226', '3'),
('1607323849226', '4'),
('1607323849226', '5'),
('1607324038621', '1'),
('1607324038621', '2'),
('1607324038621', '3'),
('1607324038621', '4'),
('1607324038621', '5'),
('1607324223640', '1'),
('1607324223640', '2'),
('1607324223640', '3'),
('1607324223640', '4'),
('1607324405612', '3'),
('1607324405612', '4'),
('1607324405612', '5'),
('1607324930017', '2'),
('1607324930017', '3'),
('1607324930017', '4'),
('1607325107560', '3'),
('1607325107560', '4'),
('1607325107560', '5'),
('1607325248720', '2'),
('1607325248720', '4'),
('1607325248720', '5'),
('1607325394023', '2'),
('1607325394023', '3'),
('1607325394023', '4'),
('1607325394023', '5'),
('1607325639902', '2'),
('1607325639902', '3'),
('1607325639902', '4'),
('1607325938912', '2'),
('1607325938912', '3'),
('1607325938912', '4'),
('1607326048297', '2'),
('1607326048297', '3'),
('1607326048297', '4'),
('1607326048297', '5'),
('1607326258955', '2'),
('1607326258955', '4'),
('1607326258955', '5'),
('1607326362180', '2'),
('1607326362180', '4'),
('1607326362180', '5'),
('1607326527126', '2'),
('1607326527126', '4'),
('1607326527126', '5'),
('1607446055538', '1'),
('1607446055538', '2'),
('1607533890720', '1'),
('1607533890720', '2'),
('1607533890720', '3'),
('1607533890720', '4'),
('1607541643496', '1'),
('1607541643496', ','),
('1607541643496', '2'),
('1607541643496', ','),
('1607541643496', '3'),
('1607541643496', ','),
('1607541643496', '4'),
('1607541746417', '['),
('1607541746417', '1'),
('1607541746417', ','),
('1607541746417', '2'),
('1607541746417', ','),
('1607541746417', '3'),
('1607541746417', ','),
('1607541746417', '4'),
('1607541746417', ']'),
('1607541759376', '1'),
('1607541759376', ','),
('1607541759376', '2'),
('1607541759376', ','),
('1607541759376', '3'),
('1607541759376', ','),
('1607541759376', '4'),
('1607541814072', '1'),
('1607541814072', ','),
('1607541814072', '2'),
('1607541814072', ','),
('1607541814072', '3'),
('1607541814072', ','),
('1607541814072', '4'),
('1607541891130', '1'),
('1607541891130', ','),
('1607541891130', '2'),
('1607541891130', ','),
('1607541891130', '3'),
('1607541891130', ','),
('1607541891130', '4');

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
('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbCI6ImNvc3R1bWVyIiwiZW1haWwiOiJhbWFyZGl0bzM3QGdtYWlsLmNvbSIsImlhdCI6MTYwNzQ0ODI3NCwiZXhwIjoxNjA3NTM0Njc0fQ.Hf7bfoiZCB281kOz80mp5ZlvQ6dugvnDHSDyswtvWWc');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `user_name`, `user_email`, `user_password`, `level_id`) VALUES
('1607359629274', 'amardito khairi', 'amardito37@gmail.com', '$2b$10$nosUWZ14ITCnqRC4jY7hm.RMUgeRN9qreJ1Mf0hb6msXfLJj9Lwmi', '1'),
('1607446009570', 'amardito khairi', 'amardito3@gmail.com', '$2b$10$VQR2qfQed9TnVpFVlhRXnui4NYNxJe3P2jHuCfrdrL47mwIXCuxKm', '2');

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
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
