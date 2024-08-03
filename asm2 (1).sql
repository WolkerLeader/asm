-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 03, 2024 lúc 06:08 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asm2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `name_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `name_banner`, `image`, `created_at`, `updated_at`) VALUES
(18, 'bruh', 'banners/iNYzjGqaWNOnIVA7dbOyl1e0mtyaGBtCqn0n7UWi.jpg', '2024-08-02 08:28:50', '2024-08-02 08:28:50'),
(21, 'bruh', 'banners/chtj6HBjL3LKn2ZQIryeeAUzBZgqIJNNvaBcIhUW.jpg', '2024-08-02 23:01:05', '2024-08-02 23:01:05'),
(22, 'bruh', 'banners/PNtTMS5m2lLwvHFfAatkBj9CxVqjTJul7qyst53h.jpg', '2024-08-02 23:07:02', '2024-08-02 23:07:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-08-02 08:39:35', '2024-08-02 08:39:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint UNSIGNED NOT NULL,
  `cart_id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `cover`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Tiến Dũng', 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17126349583729208_512.jpg&w=2048&q=75', 1, '2024-08-02 07:08:28', '2024-08-02 20:17:46'),
(2, 'Explicabo sunt.', 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17126349583729208_512.jpg&w=2048&q=75', 1, '2024-08-02 07:08:28', '2024-08-02 07:08:28'),
(3, 'Sunt corrupti.', 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17126349583729208_512.jpg&w=2048&q=75', 1, '2024-08-02 07:08:28', '2024-08-02 07:08:28'),
(4, 'Aut rem.', 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17126349583729208_512.jpg&w=2048&q=75', 1, '2024-08-02 07:08:28', '2024-08-02 07:08:28'),
(5, 'Optio deleniti.', 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17126349583729208_512.jpg&w=2048&q=75', 1, '2024-08-02 07:08:28', '2024-08-02 07:08:28'),
(6, 'Reprehenderit.', 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17126349583729208_512.jpg&w=2048&q=75', 1, '2024-08-02 07:08:28', '2024-08-02 07:08:28'),
(7, 'Autem ut.', 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17126349583729208_512.jpg&w=2048&q=75', 1, '2024-08-02 07:08:28', '2024-08-02 07:08:28'),
(8, 'Possimus.', 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17126349583729208_512.jpg&w=2048&q=75', 1, '2024-08-02 07:08:28', '2024-08-02 07:08:28'),
(9, 'Veniam.', 'https://tokyolife.vn/_next/image?url=https%3A%2F%2Fpm2ec.s3.ap-southeast-1.amazonaws.com%2Fcms%2F17126349583729208_512.jpg&w=2048&q=75', 1, '2024-08-02 07:08:28', '2024-08-02 07:08:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_07_12_030242_create_categories_table', 1),
(7, '2024_07_12_034703_create_products_table', 1),
(8, '2024_07_17_031741_create_product_galleries_table', 1),
(9, '2024_07_17_031812_create_product_colors_table', 1),
(10, '2024_07_17_031821_create_product_sizes_table', 1),
(11, '2024_07_17_031857_create_product_variants_table', 1),
(12, '2024_07_24_104057_create_carts_table', 1),
(13, '2024_07_24_104233_create_cart_items_table', 1),
(14, '2024_07_24_104306_create_orders_table', 1),
(15, '2024_07_24_104407_create_order_items_table', 1),
(16, '2024_08_02_132819_create_banners_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `total_price` double(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_email`, `user_name`, `user_address`, `user_phone`, `receiver_email`, `receiver_name`, `receiver_address`, `receiver_phone`, `order_status`, `payment_status`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 'maoubaki0@gmail.com', 'ph36321', '68', '0936647698', 'maoubaki@gmail.com', 'Nguyễn Tiến Dũng', 'Nguyễn Tiến Dũng', '0936647698', 'pending', 'unpaid', 100.00, '2024-08-02 08:39:46', '2024-08-02 08:39:46'),
(2, 1, 'maoubaki0@gmail.com', 'ph36321', '68', '0936647698', 'maoubaki@gmail.com', 'Nguyễn Tiến Dũng', 'Nguyễn Tiến Dũng', '0936647698', 'pending', 'unpaid', 400.00, '2024-08-02 20:54:17', '2024-08-02 20:54:17'),
(3, 1, 'maoubaki0@gmail.com', 'admin', '68', '0936647698', 'maoubaki@gmail.com', 'Nguyễn Tiến Dũng', 'Nguyễn Tiến Dũng', '0936647698', 'pending', 'unpaid', 400.00, '2024-08-02 22:58:47', '2024-08-02 22:58:47'),
(4, 1, 'maoubaki0@gmail.com', 'admin', '68', '0936647698', 'maoubaki@gmail.com', 'Nguyễn Tiến Dũng', 'Nguyễn Tiến Dũng', '0936647698', 'pending', 'unpaid', 200.00, '2024-08-02 23:04:53', '2024-08-02 23:04:53'),
(5, 1, 'maoubaki0@gmail.com', 'admin', '68', '0936647698', 'maoubaki@gmail.com', 'Nguyễn Tiến Dũng', 'Nguyễn Tiến Dũng', '0936647698', 'pending', 'unpaid', 200.00, '2024-08-02 23:05:52', '2024-08-02 23:05:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_img_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price_sale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `product_variant_id`, `order_id`, `product_name`, `product_sku`, `product_img_thumb`, `product_price`, `product_price_sale`, `variant_size_name`, `variant_color_name`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 'Nguyễn Tiến Dũng', 'IOATEHLJ', 'products/ahZI2VSULOCq1EU77wJ8u0FlgnVCwnMtmxGUP1zM.jpg', '400', '100', 'S', 'black', '1', '2024-08-02 08:39:46', '2024-08-02 08:39:46'),
(2, 11, 2, 'Nguyễn Tiến Dũng', 'IOATEHLJ', 'products/ahZI2VSULOCq1EU77wJ8u0FlgnVCwnMtmxGUP1zM.jpg', '400', '100', 'S', 'black', '3', '2024-08-02 20:54:17', '2024-08-02 20:54:17'),
(3, 21, 2, 'Áo camonia', 'QA60JT5A', 'products/JIZuAS2c7LGnJeEZeIUiqc2bUFP3U9jobs32uzQU.jpg', '400', '100', 'S', 'black', '1', '2024-08-02 20:54:17', '2024-08-02 20:54:17'),
(4, 32, 3, 'Áo đen đầm đen', 'AKZEAMIC', 'products/N5TZKHDPofDdu7qavOL2wS3Gx7WcDF54Lt1txiDU.jpg', '500', '200', 'S', 'gray', '1', '2024-08-02 22:58:47', '2024-08-02 22:58:47'),
(5, 30, 3, 'Váy đầm nâu áo trắng', 'EMFW8WIC', 'products/jXD8c4gc6gnLcvlyy5P6Z8PlsdRDjcXaopKnX3Pe.jpg', '400', '200', 'S', 'white', '1', '2024-08-02 22:58:47', '2024-08-02 22:58:47'),
(6, 33, 4, 'Đồ nữ', 'TOMVIX0E', 'products/qY9QtEQcNu2FaAilmyWN7amnZhlSGFjk46uy5B9A.jpg', '300', '200', 'S', 'black', '1', '2024-08-02 23:04:53', '2024-08-02 23:04:53'),
(7, 33, 5, 'Đồ nữ', 'TOMVIX0E', 'products/qY9QtEQcNu2FaAilmyWN7amnZhlSGFjk46uy5B9A.jpg', '300', '200', 'S', 'black', '1', '2024-08-02 23:05:52', '2024-08-02 23:05:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `img_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) DEFAULT NULL,
  `material` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `use_manual` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_best_sale` tinyint(1) NOT NULL DEFAULT '0',
  `is_40_sale` tinyint(1) NOT NULL DEFAULT '0',
  `is_hot_online` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `sku`, `category_id`, `img_thumb`, `price`, `price_sale`, `material`, `description`, `use_manual`, `is_active`, `is_best_sale`, `is_40_sale`, `is_hot_online`, `created_at`, `updated_at`) VALUES
(106, 'Đầm đen', 'nguyen-tien-dung-ioatehlj', 'IOATEHLJ', 4, 'products/qY9QtEQcNu2FaAilmyWN7amnZhlSGFjk46uy5B9A.jpg', 400.00, 100.00, NULL, NULL, NULL, 1, 1, 0, 0, '2024-08-02 08:38:49', '2024-08-02 08:38:49'),
(111, 'Áo camonia', 'ao-camonia-qa60jt5a', 'QA60JT5A', 4, 'products/jXD8c4gc6gnLcvlyy5P6Z8PlsdRDjcXaopKnX3Pe.jpg', 400.00, 100.00, NULL, NULL, NULL, 1, 1, 0, 0, '2024-08-02 20:51:10', '2024-08-02 20:51:10'),
(115, 'Váy đầm nâu áo trắng', 'vay-dam-nau-ao-trang-emfw8wic', 'EMFW8WIC', 4, 'products/jXD8c4gc6gnLcvlyy5P6Z8PlsdRDjcXaopKnX3Pe.jpg', 400.00, 200.00, NULL, NULL, NULL, 1, 1, 0, 0, '2024-08-02 21:04:47', '2024-08-02 21:04:47'),
(116, 'Áo đen đầm đen', 'ao-den-dam-den-akzeamic', 'AKZEAMIC', 4, 'products/N5TZKHDPofDdu7qavOL2wS3Gx7WcDF54Lt1txiDU.jpg', 500.00, 200.00, NULL, NULL, NULL, 1, 1, 0, 0, '2024-08-02 21:06:17', '2024-08-02 21:06:17'),
(117, 'Đồ nữ', 'do-nu-tomvix0e', 'TOMVIX0E', 4, 'products/qY9QtEQcNu2FaAilmyWN7amnZhlSGFjk46uy5B9A.jpg', 300.00, 200.00, NULL, NULL, NULL, 1, 1, 0, 0, '2024-08-02 21:07:33', '2024-08-02 21:07:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_colors`
--

INSERT INTO `product_colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'black', '2024-08-02 07:08:34', '2024-08-02 07:08:34'),
(2, 'white', '2024-08-02 07:08:34', '2024-08-02 07:08:34'),
(3, 'gray', '2024-08-02 07:08:34', '2024-08-02 07:08:34'),
(4, 'blue', '2024-08-02 07:08:34', '2024-08-02 07:08:34'),
(5, 'yellow', '2024-08-02 07:08:34', '2024-08-02 07:08:34'),
(6, 'red', '2024-08-02 07:08:34', '2024-08-02 07:08:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(206, 111, 'product_galleries/YhKeGJB6mLmgm2aWl5jNL5RkTb4EMWjOSCQVcNBm.png', '2024-08-02 20:51:10', '2024-08-02 20:51:10'),
(207, 115, 'product_galleries/FYnerdRSBSP4hl0MrKK9J8Q2AiKRIsAv12JbnoSV.jpg', '2024-08-02 21:04:47', '2024-08-02 21:04:47'),
(208, 116, 'product_galleries/Bcjf6BSXwHFEqCpAPkUC6WxVwVEJzS2J01txP55w.jpg', '2024-08-02 21:06:17', '2024-08-02 21:06:17'),
(209, 117, 'product_galleries/0B8KFVFxZY0cKMcVlYdxXgfeSyOnYlN7J5ianBXT.jpg', '2024-08-02 21:07:33', '2024-08-02 21:07:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2024-08-02 07:08:34', '2024-08-02 07:08:34'),
(2, 'M', '2024-08-02 07:08:34', '2024-08-02 07:08:34'),
(3, 'L', '2024-08-02 07:08:34', '2024-08-02 07:08:34'),
(4, 'XL', '2024-08-02 07:08:34', '2024-08-02 07:08:34'),
(5, 'XXL', '2024-08-02 07:08:34', '2024-08-02 07:08:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `product_color_id` bigint UNSIGNED NOT NULL,
  `product_size_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `product_color_id`, `product_size_id`, `image`, `quantity`, `created_at`, `updated_at`) VALUES
(11, 106, 1, 1, 'product_variants/gFivHY8CDhJZ3Z6zPZ2k5DLKUC7Hn2owFCdlGjn3.jpg', 1, '2024-08-02 08:38:49', '2024-08-02 08:38:49'),
(12, 106, 2, 1, 'product_variants/zDKxIHPBS7URs8UipNCHYuyRdKRP04eOC6xsgdj0.jpg', 1, '2024-08-02 08:38:49', '2024-08-02 08:38:49'),
(21, 111, 1, 1, 'product_variants/Miyw8NM69dThijs1aGGtZXT10CiyEbPGKmyzesGT.jpg', 1, '2024-08-02 20:51:10', '2024-08-02 20:51:10'),
(22, 111, 2, 1, 'product_variants/24S05XTr5cDQIc6FIjwoF7SK3JpsA9ngj6y7phD9.jpg', 1, '2024-08-02 20:51:10', '2024-08-02 20:51:10'),
(29, 115, 1, 1, 'product_variants/tqsBHXyYpHfCcsQTLi9cHDckGMQioUoz7r2yil1u.jpg', 1, '2024-08-02 21:04:47', '2024-08-02 21:04:47'),
(30, 115, 2, 1, 'product_variants/nT1h6fQkffi3lhJC9zHM5qc5p808nJIYtC5GSy6U.jpg', 0, '2024-08-02 21:04:47', '2024-08-02 21:04:47'),
(31, 116, 2, 1, 'product_variants/6uOtFlXRtGtVftHOACmZay74lsTCvCfLwjzuxKsE.jpg', 1, '2024-08-02 21:06:17', '2024-08-02 21:06:17'),
(32, 116, 3, 1, 'product_variants/DChpwvaJTvBpvehlmgDoO8kdKAJZbRRdLGH0c8zL.jpg', 1, '2024-08-02 21:06:17', '2024-08-02 21:06:17'),
(33, 117, 1, 1, 'product_variants/1JPBIrIRVp21BIptwZaTNj3Aw5TDfCZgkSOH6gGS.jpg', 1, '2024-08-02 21:07:33', '2024-08-02 21:07:33'),
(34, 117, 2, 1, 'product_variants/LkeCYUr5oZWtHrjqlbzhscASiPtQThbkrBThJ28l.jpg', 1, '2024-08-02 21:07:33', '2024-08-02 21:07:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_active`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Tiến Dũng', 'maoubaki@gmail.com', 0, NULL, '$2y$12$VVj1uaXwy44pzjnhQ.9OGegq0mTroXeoa1ig2XEhn4ucVuwMv68fG', NULL, '2024-08-02 07:10:08', '2024-08-02 07:10:08'),
(2, 'tien dung', 'maou@gmail.com', 1, NULL, '$2y$12$YRCvTo3455JBjAoNM7TiY.AB48l2HF8QB9Bi3fggCnkGp83kma3Pm', NULL, '2024-08-02 07:10:50', '2024-08-02 07:10:50'),
(3, 'Nguyễn Tiến Dũng', 'bruh@gmail.com', 1, NULL, '$2y$12$dmI0ipB8bSzIL/kDJtKt7OjIPB0ejJ79dKyoDnIboWIfdEFRAoWPi', NULL, '2024-08-02 22:55:03', '2024-08-02 22:55:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_user_id_unique` (`user_id`);

--
-- Chỉ mục cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

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
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_galleries_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variant_unique` (`product_id`,`product_color_id`,`product_size_id`),
  ADD KEY `product_variants_product_color_id_foreign` (`product_color_id`),
  ADD KEY `product_variants_product_size_id_foreign` (`product_size_id`);

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
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD CONSTRAINT `product_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_color_id_foreign` FOREIGN KEY (`product_color_id`) REFERENCES `product_colors` (`id`),
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_variants_product_size_id_foreign` FOREIGN KEY (`product_size_id`) REFERENCES `product_sizes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
