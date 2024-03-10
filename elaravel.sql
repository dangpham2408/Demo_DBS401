-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 10, 2024 lúc 02:41 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_26_015601_create_tbl_admin_table', 1),
(6, '2023_12_18_132706_create_tbl_category_product', 2),
(7, '2024_01_05_141833_create_tbl_brand_product', 3),
(8, '2024_01_08_141217_create_tbl_product', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Dang Pham', '0985402002', '2023-10-01 02:04:37', '2023-10-23 02:04:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_desc` text NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(5, 'UNIQLO', 'đồ quần áo nam nữ, trẻ em', 0, NULL, NULL),
(6, 'ZARA', 'đồ quần áo cho nam nữ', 0, NULL, NULL),
(7, 'MUJI', 'đồ quần áo nam nữ', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(6, 'Đồ nam', 'Đồ bao gồm quần áo phụ kiện dành cho nam', 0, NULL, NULL),
(7, 'Đồ nữ', 'Đồ quần áo phụ kiện cho nữ', 0, NULL, NULL),
(8, 'Đồ trẻ em', 'đồ quần áo phụ kiện cho trẻ em', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_content` text NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `product_name`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 4, 'dang', 0, 'dang', 'hehe', '100', '', 0, NULL, NULL),
(2, 5, 'đâsdasd', 4, 'ádasdasff', 'àasfasfasf', '12223', '', 0, NULL, NULL),
(3, 5, 'sdasfasf', 4, 'asfasdgfasd', 'sdgsdgdsg', '12134', '', 0, NULL, NULL),
(4, 4, 'dang', 3, 'àasfasf', 'àẤDFDSF', '100', 'jpg1.jpg', 1, NULL, NULL),
(5, 4, 'dang', 3, 'àasfasf', 'àẤDFDSF', '100', 'jpg64.jpg', 0, NULL, NULL),
(6, 4, 'haha', 3, 'àasfasf', 'àẤDFDSF', '100', 'jpg41.jpg', 0, NULL, NULL),
(7, 5, 'hangg', 4, 'qưerwe', 'ewtwet', '243423', 'jpg92.jpg', 0, NULL, NULL),
(8, 5, 'hangg', 4, 'qưerwe', 'ewtwet', '243423', 'gallery215.jpg', 0, NULL, NULL),
(9, 3, 'sản phẩm mới', 2, 'ágfasg', 'gggggggggggggg', '123445', 'Dang39.jpg', 1, NULL, NULL),
(10, 3, 'Đăng', 3, 'đăng đẹp trai', 'rat dep trai', '2000', 'Dang11.jpg', 0, NULL, NULL),
(11, 3, 'dang234', 2, 'ầgasdga', 'gadgadgadg', '44444444', 'Dang36.jpg', 0, NULL, NULL),
(12, 3, 'daghgh', 3, '32523523', '23523523', '2443', 'Dang48.jpg', 1, NULL, NULL),
(13, 3, 'dgsdg', 4, '325235', '5325235', '353535', 'blog-three68.jpg', 1, NULL, NULL),
(14, 3, 'sdasf', 3, '12351235', '12351235', '241234', 'blog-two31.jpg', 1, NULL, NULL),
(15, 3, 'ádfasf', 3, '31412345', '41343', '214124', 'Dang1.jpg', 0, NULL, NULL),
(16, 3, 'dasf', 4, 'asfgasg', 'gadgadg', '24234', '189.jpg', 0, NULL, NULL),
(18, 6, 'Áo Polo Vải Jersey tay ngắn màu Xám', 5, 'Áo Polo cho Nam', 'Áo làm từ vải Jersey dành cho nam', '490000', 'uniqlo_ao_polo47.jpg', 0, NULL, NULL),
(19, 6, 'Áo Polo Vải Pique Ngắn Tay', 5, 'Áo Polo Vải Pique Ngắn Tay', 'Áo Polo Vải Pique Ngắn Tay cho Nam', '490000', 'uniqlo_ao_polo_pique31.jpg', 0, NULL, NULL),
(20, 6, 'Áo Polo Dệt Len Ngắn Tay', 5, 'Áo Polo Dệt Len Ngắn Tay', 'Áo Polo Dệt Len Ngắn Tay Cho Nam', '490000', 'uniqlo_ao_polo_det_len14.jpg', 0, NULL, NULL),
(21, 7, 'Áo Sweater Milano Rib Khóa Kéo', 7, 'Áo Sweater Milano Rib Khóa Kéo Cho Nữ', 'Áo Sweater Milano Rib Khóa Kéo Cho Nữ', '620000', 'muji_ao_sweater_milano_rib_khoa_1_278.jpg', 0, NULL, NULL),
(22, 7, 'Áo Gile Dài Milano Rib', 7, 'Áo Gile Dài Milano Rib', 'Áo Gile Dài Milano Rib Cho Nữ', '550000', 'muji_ao_gile_dai_milano_rib9.jpg', 0, NULL, NULL),
(23, 7, 'Áo Kiểu Vải Xô KAPOK Dài Tay', 7, 'Áo Kiểu Vải Xô KAPOK 2 lớp Dài Tay', 'Áo Kiểu Vải Xô KAPOK 2 lớp Dài Tay Cho Nữ', '690000', 'muji_ao_kapok_tay_dai44.jpg', 0, NULL, NULL),
(24, 6, 'Áo Thun Cotton Cổ Tròn Nam', 5, 'Áo Thun Cotton Cổ Tròn Nam', 'Áo Thun Cotton Cổ Tròn Nam', '390000', 'uniqlo_ao_thun80.jpg', 0, NULL, NULL),
(25, 6, 'Áo Thun Dệt Kim Tay Ngắn', 5, 'Áo Thun Dệt Kim Tay Ngắn', 'Áo Thun Dệt Kim Tay Ngắn', '590000', 'uniqlo_ao_thun_det_kim71.jpg', 0, NULL, NULL),
(26, 7, 'Áo Gió Nữ Chống Thấm Nước', 7, 'Áo Gió Nữ Chống Thấm Nước', 'Áo Gió Nữ Chống Thấm Nước', '980000', 'muji_ao_gio_nu83.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
