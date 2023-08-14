-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 14, 2023 lúc 08:16 AM
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
(1, 'Áo', 1),
(2, 'Quần', 0),
(3, 'Đồ khác', 0);

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
(1, 'SP350 - Áo Vét Spandex Maxxxx', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-1_x1800.png', 282, 200000, 40, '2021-11-16 15:56:54', 0, 101, 0, 2),
(2, 'SP350 - Áo Trắng Spandex ', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-3_x1800.png', 230, 200000, 20, '2021-11-16 17:47:36', 0, 35, 0, 2),
(3, 'SP350 - Áo quần Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-5_x1800.png', 336, 700000, 20, '2021-11-16 17:49:11', 0, 34, 0, 2),
(4, 'SP350 - Quần Đen Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-7_x1800.png', 1289, 400000, 20, '2021-11-16 17:50:23', 0, 7, 0, 2),
(5, 'SP350 - Quần dài Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-11_x1800.png', 301, 500000, 10, '2021-11-16 18:37:13', 0, 4, 0, 1),
(6, 'SP350 - Áo hodie Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-13_x1800.png', 113, 400000, 10, '2021-11-16 18:38:39', 0, 16, 0, 1),
(7, 'SP350 - Áo hodie Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-15_x1800.png', 279, 300000, 0, '2021-11-16 18:40:04', 0, 35, 0, 1),
(8, 'SP350 -  Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'OAT_ADULT_SIDE_OUT_x1800.jpg', 997, 1200000, 20, '2021-12-06 17:47:45', 1, 5, 0, 2),
(9, 'xxx', '<p>xxx</p>', 'xxx', 'Front_e7c54e77-b64d-450b-a7d4-880546c88be4_UPDATEcopy.jpg', 5, 555, 5, '2023-05-24 16:43:37', 0, 12, 0, 2);

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
(1, 'theanhnb02@gmail.com', 372163626, 'Lương Thế Anh', 'Mai Dịch, Cầu Giấy, Hà Nội', '123', 'wallpaper-4k-hinh-nen-4k-bai-cat-ven-bien-dep_101259972.jpg', 1, 0),
(2, 'theanh123@gmail.com', 964842220, 'Lương Thế Anh', 'Trần Bình, Mai Dịch, Cầu Giấy, Hà Nội', '123', '', 0, 0),
(3, 'ngocmeii@gmail.com', 355222666, 'Đinh Thị Mai', 'Dịch Vọng Hậu, Cầu Giấy, Hà Nội', '123', '', 0, 0),
(4, 'phungthanh123@gmail.com', 233444555, 'Nguyễn Phùng Thành', 'Mộ Lao, Hà Đông, Hà Nội', '123', '', 0, 0);

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
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
