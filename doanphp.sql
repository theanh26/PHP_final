-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2023 lúc 09:26 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doanphp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `image_album` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `albums`
--

INSERT INTO `albums` (`id`, `image_album`, `id_product`) VALUES
(1, '6_LECgQA.jpg', 1),
(2, 'Back_19c4e6cf-bef6-43ad-964b-7d044e110ff1.jpg', 1),
(3, 'Front_a5201810-af0f-4c17-9c10-2bc2783543de.jpg', 1),
(4, 'Front_e7c54e77-b64d-450b-a7d4-880546c88be4_UPDATEcopy.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id_attri` int(11) NOT NULL,
  `color` varchar(256) NOT NULL,
  `size` varchar(256) NOT NULL,
  `number_atri` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id_banner` int(11) NOT NULL,
  `image_banner` varchar(256) NOT NULL,
  `title_banner` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL,
  `look_banner` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id_banner`, `image_banner`, `title_banner`, `id_product`, `look_banner`) VALUES
(2, 'banner.jpg', 'Sản phẩm mới ', 1, 0),
(3, 'banner1.jpg', 'Khuyến mãi quần', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cates`
--

CREATE TABLE `cates` (
  `id_cate` int(11) NOT NULL,
  `name_cate` varchar(256) NOT NULL,
  `parent_cate` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cates`
--

INSERT INTO `cates` (`id_cate`, `name_cate`, `parent_cate`) VALUES
(1, 'Áo', 1),
(2, 'Quần', 0),
(3, 'Giày', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id_cm` int(11) NOT NULL,
  `content_cm` varchar(256) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `parent_cm` int(11) NOT NULL DEFAULT 0,
  `hiden_cm` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id_cm`, `content_cm`, `product_id`, `user_id`, `date`, `parent_cm`, `hiden_cm`) VALUES
(48, '123', 4, 2, '2023-08-05 23:40:19', 0, 0),
(57, 'Tin juan chua anh?', 3, 5, '2023-08-18 10:34:25', 0, 0),
(58, 'Bạn Chỉnh ơi!', 3, 2, '2023-08-18 10:34:55', 57, 0),
(60, 'Quần 5 chục bán không?', 2, 5, '2023-08-18 10:38:30', 0, 0),
(61, 'Bạn viết tâm thư lên Liên hợp quốc nhé. Chắc là họ lắng nghe bạn đấy.', 2, 2, '2023-08-18 10:39:17', 60, 0),
(62, '5 chục thì lên chợ rồng mua đi má :)', 2, 4, '2023-08-18 10:40:54', 60, 0),
(63, 'Mason Mount to Manchester United: HERE WE GO', 1, 5, '2023-08-18 10:52:21', 0, 0),
(64, 'Tin juan chua anh?', 1, 2, '2023-08-18 10:52:57', 63, 0),
(65, '4 tiếng trước là như thế nhưng bây giờ thì khác rồi', 1, 5, '2023-08-18 10:53:41', 63, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `id_histrory` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `history`
--

INSERT INTO `history` (`id_histrory`, `id_user`, `id_order`) VALUES
(15, 5, 51),
(16, 5, 52),
(17, 4, 53),
(18, 5, 54);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_main`
--

CREATE TABLE `img_main` (
  `id` int(11) NOT NULL,
  `image_main` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `img_main`
--

INSERT INTO `img_main` (`id`, `image_main`) VALUES
(1, 'main1.jpeg'),
(4, 'main2.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `email_info` varchar(256) NOT NULL,
  `logo` varchar(256) NOT NULL,
  `adress_info` varchar(256) NOT NULL,
  `phone_info` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id_info`, `email_info`, `logo`, `adress_info`, `phone_info`) VALUES
(1, 'theanhnb02@gmail.com', 'logo.png', '79 Hồ Tùng Mậu, Mai Dịch, Cầu Giấy, Hà Nội.', '0372163626');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loves`
--

CREATE TABLE `loves` (
  `id_love` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loves`
--

INSERT INTO `loves` (`id_love`, `pro_id`, `user_id`) VALUES
(4, 7, 2),
(5, 2, 2),
(20, 4, 2),
(25, 6, 4),
(33, 1, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `total_order` int(11) NOT NULL,
  `phone_order` int(11) NOT NULL,
  `email_order` varchar(256) NOT NULL,
  `adress_order` varchar(256) NOT NULL,
  `name_order` varchar(256) NOT NULL,
  `content_order` text NOT NULL,
  `date_order` datetime NOT NULL,
  `action` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id_order`, `total_order`, `phone_order`, `email_order`, `adress_order`, `name_order`, `content_order`, `date_order`, `action`) VALUES
(1, 382500, 1232131, 'phungthanh123@gmail.com', 'Ha Noi', 'Nguyễn Phùng Thành', 'giao đến đầu ngõ ', '2023-08-15 23:49:57', 2),
(2, 2700000, 987654322, 'ngocmai123@gmail.com', 'Hà Nội', 'Đinh Thị Mai', 'giao giờ hành chính', '2023-08-07 16:55:01', 2),
(3, 1440000, 987654321, 'theanh123@gmail.com', 'Hà Nội', 'Lương Thế Anh', 'solo yasuo thắng thì không mất tiền hàng', '2023-07-30 16:35:26', 2),
(4, 300000, 372163626, 'theanhnb02@gmail.com', 'Hà Nội', 'Lương Thế Anh', 'goku bản năng vô cực mạnh hơn thần hủy diệt', '2023-07-29 16:33:49', 2),
(51, 2115000, 233444555, 'phungthanh123@gmail.com', 'Mộ Lao, Hà Đông, Hà Nội', 'Nguyễn Phùng Thành', 'không cần giao', '2023-08-16 18:18:12', 1),
(52, 1608000, 233444556, 'phungthanh123@gmail.com', 'Mộ Lao, Hà Đông, Hà Nội', 'Nguyễn Phùng Thành', 'combo azir mù mắt', '2023-08-17 02:17:56', 0),
(53, 340000, 355222666, 'ngocmeii@gmail.com', 'Dịch Vọng Hậu, Cầu Giấy, Hà Nội', 'Đinh Thị Mai', 'giao hàng đến 63 tỉnh thành', '2023-08-18 11:56:46', 2),
(54, 340000, 233444556, 'phungthanh123@gmail.com', 'Mộ Lao, Hà Đông, Hà Nội', 'Nguyễn Phùng Thành', 'giao đến', '2023-08-18 14:19:36', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id_detail` int(11) NOT NULL,
  `quantity_detail` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id_detail`, `quantity_detail`, `order_id`, `product_id`) VALUES
(67, 1, 4, 9),
(68, 4, 3, 8),
(69, 4, 2, 8),
(70, 1, 2, 9),
(71, 1, 2, 4),
(73, 1, 1, 2),
(74, 2, 51, 2),
(75, 1, 51, 4),
(76, 3, 52, 3),
(77, 2, 52, 7),
(78, 1, 53, 1),
(79, 1, 54, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_pro` int(11) NOT NULL,
  `title_pro` varchar(256) NOT NULL,
  `content_pro` text NOT NULL,
  `thongtin` varchar(256) NOT NULL,
  `image_pro` varchar(256) NOT NULL,
  `quantity_pro` int(11) NOT NULL,
  `price_pro` int(11) NOT NULL,
  `sale_pro` int(11) NOT NULL,
  `date_pro` datetime NOT NULL,
  `special_pro` int(11) NOT NULL DEFAULT 0,
  `view_pro` int(11) NOT NULL,
  `hiden_pro` int(11) NOT NULL DEFAULT 0,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_pro`, `title_pro`, `content_pro`, `thongtin`, `image_pro`, `quantity_pro`, `price_pro`, `sale_pro`, `date_pro`, `special_pro`, `view_pro`, `hiden_pro`, `cate_id`) VALUES
(1, 'B-LA PoLo | Áo xám vai trắng', '<ul><li>- Chất vải: cotton 100% 4 chiều</li><li>- Kiểu dáng thể thao,năng động</li><li>- Giặt không đổ lông hay bay màu, thấm hút mồ hôi và thoải mái không gò bó khi vận động</li><li>- Form áo rộng vừa, tôn dáng.</li><li>- Chất vải tạo cảm giác thoáng mát cho người mặc</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'ao1.jpeg', 280, 400000, 15, '2023-08-08 00:00:00', 0, 124, 0, 1),
(2, 'Black Jeans | Quần Đen', '<ul>\r\n<li>- Màu sắc: Xám</li>\r\n<li>- Kiểu dáng: Quần trơn, cúc chữ</li>\r\n<li>- Chất liệu jean co giãn thoải mái</li>\r\n<li>- Form quần tôn dáng</li>\r\n<li>- Giặt không đổ lông hay bay màu, giãn form</li>\r\n</ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'quan1.jpeg', 333, 700000, 10, '2023-08-08 00:00:00', 0, 46, 0, 2),
(3, 'Áo Band Tee | Trắng be', '<ul>\r\n<li>- Chất vải: cotton 100% 4 chiều</li>\r\n<li>- Kiểu dáng thể thao,năng động</li>\r\n<li>- Giặt không đổ lông hay bay màu, thấm hút mồ hôi và thoải mái không gò bó khi vận động</li>\r\n<li>- Form áo rộng vừa, tôn dáng.</li>\r\n<li>- Chất vải tạo cảm giác thoáng mát cho người mặc</li>\r\n</ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'ao3.jpeg', 125, 280000, 5, '2023-08-08 00:00:00', 0, 79, 0, 1),
(4, 'Lusso Slip-on | Giày FS', '<ul>\r\n<li>- Màu sắc: Đen</li>\r\n<li>- Thân giày có đai da sang trọng</li>\r\n<li>- Chất liệu da thật mềm</li>\r\n<li>- Đế giày được làm từ cao su non cao cấp siêu nhẹ và êm ái</li>\r\n<li>- Lót gồm 2 lớp, với lớp trên là da thật, lớp dưới là cao su êm ái thấm hút mồ hôi</li>\r\n</ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'giay1.jpeg', 300, 950000, 10, '2023-08-08 00:00:00', 0, 45, 0, 3),
(5, 'Loading Tee | Áo Trắng', '<ul>\r\n<li>- Chất vải: cotton 100% 4 chiều</li>\r\n<li>- Kiểu dáng thể thao,năng động</li>\r\n<li>- Giặt không đổ lông hay bay màu, thấm hút mồ hôi và thoải mái không gò bó khi vận động</li>\r\n<li>- Form áo rộng vừa, tôn dáng.</li>\r\n<li>- Chất vải tạo cảm giác thoáng mát cho người mặc</li>\r\n</ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'ao4.jpeg', 113, 280000, 5, '2023-08-08 00:00:00', 0, 162, 0, 1),
(6, 'Navy Jeans | Quần Xanh dương', '<ul>\r\n<li>- Màu sắc: Xanh đậm </li>\r\n<li>- Chất liệu jean co giãn thoải mái.</li>\r\n<li>- Form quần tôn dáng.</li>\r\n<li>- Giặt không đổ lông hay bay màu, giãn form</li>\r\n<li>- Chất vải tạo cảm giác thoáng mát cho người mặc</li>\r\n</ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'quan2.jpeg', 279, 470000, 5, '2023-08-08 00:00:00', 0, 37, 0, 2),
(7, 'O-LA Polo | Áo Trắng', '<ul>\r\n<li>- Chất vải: cotton 100% 4 chiều</li>\r\n<li>- Kiểu dáng thể thao,năng động</li>\r\n<li>- Giặt không đổ lông hay bay màu, thấm hút mồ hôi và thoải mái không gò bó khi vận động</li>\r\n<li>- Form áo rộng vừa, tôn dáng.</li>\r\n<li>- Chất vải tạo cảm giác thoáng mát cho người mặc</li>\r\n</ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'ao2.jpeg', 228, 450000, 10, '2023-08-08 00:00:00', 0, 37, 0, 1),
(8, 'Shred Short | Quần Đen', '<ul>\r\n<li>-Màu sắc: Đen</li>\r\n<li>-Họa tiết: Rách đỏ trắng</li>\r\n<li>-Chất liệu jean co giãn thoải mái</li>\r\n<li>-Phom quần tôn dáng.</li>\r\n<li>-Giặt không đổ lông hay bay màu, giãn phom</li>\r\n</ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'quan3.jpeg', 997, 520000, 20, '2023-08-08 00:00:00', 1, 53, 0, 2),
(9, ' Mosaic Moccasin | Giày FSI', '<ul>\r\n<li>- Màu sắc: Đen</li>\r\n<li>- Thân giày có đai da sang trọng </li>\r\n<li>- Thân giày có vân da cá sấu sang trọng</li>\r\n<li>- Đế giày được làm từ cao su non cao cấp siêu nhẹ và êm ái</li>\r\n<li>- Lót gồm 2 lớp, với lớp trên là da thật, lớp dưới là cao su êm ái thấm hút mồ hôi</li>\r\n</ul>\r\n', '1', 'giay2.jpeg', 53, 900000, 20, '2023-08-08 00:00:00', 0, 132, 0, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `adress` varchar(256) NOT NULL,
  `pass` varchar(256) NOT NULL,
  `avatar` varchar(256) NOT NULL,
  `role` int(11) NOT NULL,
  `look` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `email`, `phone`, `name`, `adress`, `pass`, `avatar`, `role`, `look`) VALUES
(2, 'theanhnb02@gmail.com', 372163626, 'Lương Thế Anh', 'Mai Dịch, Cầu Giấy, Hà Nội', '123', 'anhdaidien2.jpg', 1, 0),
(4, 'ngocmeii@gmail.com', 355222666, 'Đinh Thị Mai', 'Dịch Vọng Hậu, Cầu Giấy, Hà Nội', '123', 'anhdaidien4.jpg', 0, 0),
(5, 'phungthanh123@gmail.com', 233444556, 'Nguyễn Phùng Thành', 'Mộ Lao, Hà Đông, Hà Nội', '123', 'anhdaidien2.jpg', 0, 0),
(43, 'theanh123@gmail.com', 828112610, 'Lương Thế Anh', 'Hà Nội', '1234', 'anhdaidien2.jpg', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id_banner`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id_cate`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_cm`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_histrory`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `histrorys_ibfk_2` (`id_user`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Chỉ mục cho bảng `loves`
--
ALTER TABLE `loves`
  ADD PRIMARY KEY (`id_love`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cates`
--
ALTER TABLE `cates`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_cm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `history`
--
ALTER TABLE `history`
  MODIFY `id_histrory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loves`
--
ALTER TABLE `loves`
  MODIFY `id_love` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `loves`
--
ALTER TABLE `loves`
  ADD CONSTRAINT `loves_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loves_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id_cate`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
