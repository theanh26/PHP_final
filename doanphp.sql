-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 11, 2023 lúc 06:34 PM
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
(1, '6_LECgQA.jpg', 2),
(2, 'Back_19c4e6cf-bef6-43ad-964b-7d044e110ff1.jpg', 2),
(3, 'Front_a5201810-af0f-4c17-9c10-2bc2783543de.jpg', 2),
(4, 'Front_e7c54e77-b64d-450b-a7d4-880546c88be4_UPDATEcopy.jpg', 2);

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
(2, 'banner.jpg', 'Sản phẩm mới ', 2, 0),
(3, 'banner1.jpg', 'Khuyến mãi quần', 4, 0);

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
(1, 'Đồ nam', 1),
(2, 'Đồ nữ', 0),
(6, 'Đồ khác', 0);

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

-- INSERT INTO `comments` (`id_cm`, `content_cm`, `product_id`, `user_id`, `date`, `parent_cm`, `hiden_cm`) VALUES
-- (14, 'asdasd', 3, 2, '2021-11-17 01:42:57', 1, 0),
-- (15, 'xin', 3, 2, '2021-11-17 02:00:51', 2, 0),
-- (17, 'lo', 3, 2, '2021-11-17 02:01:11', 1, 0),
-- (30, 'lo', 7, 3, '2021-11-22 17:40:24', 0, 0),
-- (47, '123', 7, 2, '2023-08-05 23:39:41', 30, 0),
-- (48, '123', 7, 2, '2023-08-05 23:40:19', 0, 0);

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

-- INSERT INTO `history` (`id_histrory`, `id_user`, `id_order`) VALUES
-- (1, 2, 10),
-- (3, 2, 19),
-- (4, 2, 21),
-- (5, 2, 24),
-- (6, 2, 25),
-- (7, 2, 26),
-- (8, 2, 27),
-- (9, 2, 28),
-- (12, 2, 39);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

-- CREATE TABLE `info` (
--   `id_info` int(11) NOT NULL,
--   `email_info` varchar(256) NOT NULL,
--   `logo` varchar(256) NOT NULL,
--   `adress_info` varchar(256) NOT NULL,
--   `phone_info` char(10) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `info`
--

-- INSERT INTO `info` (`id_info`, `email_info`, `logo`, `adress_info`, `phone_info`) VALUES
-- (1, 'theanhnb02@gmail.com', 'horizontal_on_white_by_logaster-removebg-preview.png', '79 Hồ Tùng Mậu, Mai Dịch, Cầu Giấy, Hà Nội.', '0372163626');

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
(3, 2, 2),
(4, 3, 2),
(5, 4, 2),
(20, 7, 2),
(25, 9, 31),
(26, 38, 3),
(27, 9, 3);

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

-- INSERT INTO `order_detail` (`id_detail`, `quantity_detail`, `order_id`, `product_id`) VALUES
-- (21, 1, 8, 8),
-- (22, 1, 9, 9),
-- (23, 3, 9, 7),
-- (24, 2, 10, 2),
-- (25, 4, 10, 7),
-- (26, 3, 11, 7),
-- (27, 5, 11, 8),
-- (28, 2, 12, 9),
-- (29, 100, 12, 6),
-- (30, 123, 13, 6),
-- (31, 2, 14, 6),
-- (32, 3, 15, 6),
-- (33, 2, 16, 6),
-- (34, 4, 17, 6),
-- (35, 1, 18, 5),
-- (36, 3, 19, 6),
-- (37, 5, 20, 6),
-- (38, 3, 21, 6),
-- (39, 4, 22, 6),
-- (40, 1, 23, 6),
-- (41, 1, 24, 9),
-- (42, 1, 25, 9),
-- (43, 1, 26, 9),
-- (44, 1, 27, 9),
-- (45, 1, 28, 9),
-- (48, 2, 31, 2),
-- (49, 2, 32, 2),
-- (50, 2, 33, 2),
-- (51, 2, 34, 2),
-- (52, 2, 35, 2),
-- (53, 2, 36, 2),
-- (54, 2, 37, 2),
-- (55, 2, 38, 2),
-- (56, 4, 39, 6),
-- (57, 1, 40, 9),
-- (58, 1, 40, 8),
-- (59, 2, 41, 9),
-- (60, 1, 41, 3),
-- (61, 1, 42, 37),
-- (62, 1, 42, 7),
-- (63, 1, 43, 37),
-- (64, 1, 43, 7),
-- (65, 1, 44, 6),
-- (66, 4, 45, 6),
-- (67, 1, 46, 9),
-- (68, 4, 47, 8),
-- (69, 4, 48, 8),
-- (70, 1, 48, 9),
-- (71, 1, 48, 37),
-- (72, 4, 49, 2);

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

INSERT INTO `products` (`id_pro`, `title_pro`, `content_pro`, `thongtin`, `image_pro`, `quantity_pro`, `price_pro`, `sale_pro`, `date_pro`, `special_pro`, `view_pro`, `hiden_pro`, `cate_id`)
VALUES
(2, 'Áo khoác da nam', '<ul><li>Chất liệu: Da tổng hợp cao cấp</li><li>Thiết kế thời trang, năng động</li><li>Màu sắc: Đen</li><li>Phù hợp cho mọi dịp</li></ul>', 'Sản phẩm chất lượng, thời trang và đa dạng về phong cách.', 'ao_khoac_da_nam.jpg', 20, 850000, 0, '2023-08-12 14:30:00', 0, 50, 0, 1),
(3, 'Quần short nữ', '<ul><li>Chất liệu: Cotton mềm mịn</li><li>Thiết kế trẻ trung, năng động</li><li>Màu sắc: Xanh dương</li><li>Phù hợp cho mùa hè</li></ul>', 'Sản phẩm phù hợp cho những ngày nắng nóng.', 'quan_short_nu.jpg', 30, 350000, 10, '2023-08-12 15:45:00', 1, 70, 0, 2),
(4, 'Vest nam cổ điển', '<ul><li>Chất liệu: Wool cao cấp</li><li>Thiết kế thanh lịch, tinh tế</li><li>Màu sắc: Xám</li><li>Phù hợp cho các dịp quan trọng</li></ul>', 'Sản phẩm mang lại vẻ đẹp nam tính và lịch lãm.', 'vest_nam_co_dien.jpg', 15, 1200000, 15, '2023-08-12 16:20:00', 0, 90, 0, 1),
(5, 'Áo sơ mi nữ trắng', '<ul><li>Chất liệu: Chiffon thoáng mát</li><li>Thiết kế trẻ trung, phong cách</li><li>Màu sắc: Trắng</li><li>Phù hợp cho công việc và hẹn hò</li></ul>', 'Sản phẩm giúp tôn lên vẻ đẹp dịu dàng và thanh lịch của phái đẹp.', 'ao_so_mi_nu_trang.jpg', 25, 450000, 0, '2023-08-12 17:15:00', 0, 120, 0, 2),
(7, 'Quần jogger nam', '<ul><li>Chất liệu: Cotton mềm mịn</li><li>Thiết kế thể thao, thoải mái</li><li>Màu sắc: Xám</li><li>Phù hợp cho các hoạt động ngoài trời</li></ul>', 'Sản phẩm phù hợp cho những ngày cuối tuần thư giãn.', 'quan_jogger_nam.jpg', 40, 400000, 20, '2023-08-12 18:30:00', 1, 60, 0, 3),
(8, 'Áo len nữ dáng dài', '<ul><li>Chất liệu: Len cao cấp</li><li>Thiết kế ấm áp, thoải mái</li><li>Màu sắc: Hồng</li><li>Phù hợp cho mùa đông</li></ul>', 'Sản phẩm giữ ấm và thời trang cho mùa lạnh.', 'ao_len_nu_dang_dai.jpg', 35, 320000, 10, '2023-08-12 19:40:00', 0, 80, 0, 2),
(9, 'Quần kaki nam', '<ul><li>Chất liệu: Kaki chất lượng cao</li><li>Thiết kế đơn giản, lịch lãm</li><li>Màu sắc: Nâu</li><li>Phù hợp cho mọi ngày</li></ul>', 'Sản phẩm mang đến vẻ ngoại giao và thời thượng cho nam giới.', 'quan_kaki_nam.jpg', 30, 380000, 15, '2023-08-12 20:25:00', 1, 70, 0, 3),
(37, 'Áo blouse nữ', '<ul><li>Chất liệu: Vải thun co giãn</li><li>Thiết kế trẻ trung, thời thượng</li><li>Màu sắc: Đỏ</li><li>Phù hợp cho các dịp hàng ngày</li></ul>', 'Sản phẩm giúp tạo nên phong cách nữ tính và hiện đại cho phái đẹp.', 'ao_blouse_nu.jpg', 25, 280000, 0, '2023-08-12 21:15:00', 0, 90, 0, 2),
(38, 'Quần legging nữ', '<ul><li>Chất liệu: Spandex co giãn</li><li>Thiết kế thể thao, êm ái</li><li>Màu sắc: Đen</li><li>Phù hợp cho tập luyện và hàng ngày</li></ul>', 'Sản phẩm giúp nâng cao sự thoải mái và sự linh hoạt trong mọi hoạt động.', 'quan_legging_nu.jpg', 40, 180000, 20, '2023-08-12 22:10:00', 1, 60,

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
  `look` int(11) NOT NULL DEFAULT 0,
  `code_mk` varchar(256) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `email`, `phone`, `name`, `adress`, `pass`, `avatar`, `role`, `look`, `code_mk`) VALUES
(2, 'theanhnb02@gmail.com', 24823421, 'Lương Thế Anh', 'Mai Dịch, Cầu Giấy, Hà Nội', '123', 'wallpaper-4k-hinh-nen-4k-bai-cat-ven-bien-dep_101259972.jpg', 1, 0, '5697968'),
(3, 'theanh123@gmail.com', 964842220, 'Lương Thế Anh', 'Trần Bình, Mai Dịch, Cầu Giấy, Hà Nội', '123', '', 0, 0, '0'),
(31, 'ngocmeii@gmail.com', 21231231, 'Đinh Thị Mai', 'Dịch Vọng Hậu, Cầu Giấy, Hà Nội', '123', '', 0, 0, '0'),
(39, 'phungthanh123@gmail.com', 241231232, 'Nguyễn Phùng Thành', 'Mộ Lao, Hà Đông, Hà Nội', '123', '', 0, 0, '0');

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
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_cm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `history`
--
ALTER TABLE `history`
  MODIFY `id_histrory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loves`
--
ALTER TABLE `loves`
  MODIFY `id_love` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
