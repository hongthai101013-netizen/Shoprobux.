-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 28, 2022 lúc 11:00 PM
-- Phiên bản máy phục vụ: 10.3.37-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btshxuct_test2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_auto`
--

CREATE TABLE `bank_auto` (
  `id` int(11) NOT NULL,
  `tid` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `received` varchar(255) DEFAULT NULL,
  `create_gettime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `telco` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `serial` text DEFAULT NULL,
  `pin` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cards`
--

INSERT INTO `cards` (`id`, `user_id`, `code`, `trans_id`, `telco`, `amount`, `price`, `serial`, `pin`, `status`, `create_date`, `update_date`, `reason`) VALUES
(14, 'ngan', '', 'JMPQXT1669339766', 'MOBIFONE', 20000, 0, '384662371982124', '389263412341', 2, '2022-11-25 08:29:27', '2022-11-25 08:29:27', 'Thẻ cào không hợp lệ hoặc đã được sử dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `codeCategory` varchar(255) NOT NULL,
  `nameCategory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id_category`, `codeCategory`, `nameCategory`) VALUES
(1, 'shop-ban-acc', 'Shop Acc'),
(4, 'code-mxh', 'Code MXH'),
(5, 'shopping-cart', 'Shopping Cart'),
(6, 'hosting', 'Hosting'),
(8, 'themes', 'Themes'),
(9, 'nguyn-lieu-fb', 'Nguyên Liệu FB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id_cmt` int(11) NOT NULL,
  `noidung_cmt` varchar(9999) NOT NULL,
  `id_user_cmt` text NOT NULL,
  `id_product_cmt` varchar(255) NOT NULL,
  `time_cmt` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_cmt`, `noidung_cmt`, `id_user_cmt`, `id_product_cmt`, `time_cmt`) VALUES
(34, 'Shop Bán Via', 'huydev', 'shop-bn-via', '09:03:57'),
(35, 'Dịch Vụ MXH', 'huydev', 'dich-vu-mxh', '09:11:17'),
(36, 'Api MBBank', 'huydev', 'api-mbbank', '09:15:08'),
(38, 'Thiết Kế Web', 'huydev', 'thiet-ke-web', '10:06:26'),
(39, 'Shop Bán Acc', 'huydev', 'shop-bn-acc', '10:06:37'),
(40, 'Cron NodeJS', 'huydev', 'cron-nodejs', '10:06:45'),
(41, 'CheckScam', 'huydev', 'checkscam', '10:06:54'),
(42, 'PHP BASIC', 'huydev', 'php-basic', '10:07:17'),
(43, 'Code Hosting WHCMS', 'huydev', 'code-hosting-whcms', '10:07:36'),
(44, 'Gạch Thẻ V2', 'huydev', 'gach-the-v2', '10:07:44'),
(45, 'Framework Laravel', 'huydev', 'framework-laravel', '10:07:53'),
(46, 'dep', 'huydev', 'shop-bn-via', '19:37:04'),
(47, '2', 'tuanori', 'shop-bn-acc', '20:45:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoso`
--

CREATE TABLE `hoso` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `username` text NOT NULL,
  `sdt` mediumtext DEFAULT NULL,
  `id_fb` text DEFAULT NULL,
  `website` text NOT NULL,
  `dich_vu` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `ngaysinh` text DEFAULT NULL,
  `gmail` text DEFAULT NULL,
  `luotxem` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hoso`
--

INSERT INTO `hoso` (`id`, `code`, `username`, `sdt`, `id_fb`, `website`, `dich_vu`, `status`, `ngaysinh`, `gmail`, `luotxem`) VALUES
(146, 'tuanori', 'Phạm Hoàng Tuấn', '0812665001', '100039812360702', 'tuanori.com', 'Thiết Kế Website', 'profile', NULL, 'phamhoangtuanqn@gmail.com', '22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoso_settings`
--

CREATE TABLE `hoso_settings` (
  `id` int(250) NOT NULL,
  `nguoitao` mediumtext NOT NULL,
  `name_bank` mediumtext NOT NULL,
  `url_image` mediumtext NOT NULL,
  `stk` mediumtext NOT NULL,
  `ctk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoso_settings`
--

INSERT INTO `hoso_settings` (`id`, `nguoitao`, `name_bank`, `url_image`, `stk`, `ctk`) VALUES
(34, 'yancoder2k6', 'VIETCOMBANK', '/tools/bank/tp.png', '46666662006', 'NGUYEN HONG QUAN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `id_momo` int(11) NOT NULL,
  `nameMomo` varchar(255) NOT NULL,
  `stkMomo` varchar(255) NOT NULL,
  `noidungMomo` varchar(255) NOT NULL,
  `magdMomo` varchar(255) NOT NULL,
  `imgMomo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`id_momo`, `nameMomo`, `stkMomo`, `noidungMomo`, `magdMomo`, `imgMomo`) VALUES
(1, 'PHAM HOANG TUAN', '0812665001', 'naptien ', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `random_order` varchar(255) NOT NULL,
  `user_order` int(11) NOT NULL,
  `dh_order` mediumtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `time_order` time NOT NULL DEFAULT current_timestamp(),
  `name_order` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id_order`, `random_order`, `user_order`, `dh_order`, `status`, `time_order`, `name_order`) VALUES
(1, 'DRKWKT', 1, '{\"19\":{\"id\":\"19\",\"imgProducts\":\"https://i.imgur.com/3SCgUfH.png\",\"nameProducts\":\"PHP BASIC\",\"priceProducts\":\"0\",\"quantity\":1}}', 'active', '20:53:08', 'tuanori');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id_atm` int(11) NOT NULL,
  `stkPayment` varchar(255) NOT NULL,
  `namePayment` varchar(255) NOT NULL,
  `nganhangPayment` varchar(255) NOT NULL,
  `noidungPayment` varchar(255) NOT NULL,
  `imgPayment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_products` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `imgProducts` varchar(255) NOT NULL,
  `priceProducts` varchar(255) NOT NULL,
  `discountProducts` int(11) NOT NULL,
  `typeProducts` varchar(255) NOT NULL,
  `describeProducts` longtext NOT NULL,
  `viewProducts` varchar(255) NOT NULL,
  `downloadProducts` varchar(255) NOT NULL,
  `noidungProducts` text NOT NULL,
  `nameProducts` varchar(255) NOT NULL,
  `linkProducts` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_products`, `code`, `imgProducts`, `priceProducts`, `discountProducts`, `typeProducts`, `describeProducts`, `viewProducts`, `downloadProducts`, `noidungProducts`, `nameProducts`, `linkProducts`) VALUES
(11, 'shop-bn-via', 'https://i.imgur.com/563CZQD.jpg', '0', 20000, 'nguyn-lieu-fb', 'Auto Bank', '793', '', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Tại sao lại sử dụng nó?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).</p>', 'Shop Ban Via', 'https://drive.google.com/'),
(12, 'checkscam', 'https://i.imgur.com/Gtp0c2L.png', '0', 1243, 'themes', 'Đẹp', '476', '', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Tại sao lại sử dụng nó?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).</p>', 'CheckScam', 'https://drive.google.com/'),
(13, 'api-mbbank', 'https://i.imgur.com/TQ5bq12.png', '500000', 834823, 'shopping-cart', 'Bao Setup Nha', '280', '', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Tại sao lại sử dụng nó?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).</p>', 'Api MBBank', 'https://drive.google.com/'),
(14, 'gach-the-v2', 'https://i.imgur.com/hMcaQT2.jpg', '0', 49999, 'code-mxh', 'Không Key Log', '379', '', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Tại sao lại sử dụng nó?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).</p>', 'Gach The V2', 'https://drive.google.com/'),
(15, 'code-hosting-whcms', 'https://i.imgur.com/QrwXd5x.png', '10000', 93746, 'hosting', 'Web Bán Hosting Miền', '714', '', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Tại sao lại sử dụng nó?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).</p>', 'Code Hosting WHCMS', 'https://drive.google.com/'),
(16, 'dich-vu-mxh', 'https://i.imgur.com/8n5kX7A.png', '200000', 39999, 'code-mxh', 'Đẹp Đơn Tay , Auto Bank', '505', '', 'Tại sao lại sử dụng nó?\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Dich Vu MXH', 'https://drive.google.com/'),
(17, 'thiet-ke-web', 'https://i.imgur.com/zkzTExA.png', '25000', 32532, 'shopping-cart', 'Đầy Đủ Mọi Chức Năng', '401', '', 'Tại sao lại sử dụng nó?\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Thiet Ke Web', 'https://drive.google.com/'),
(18, 'framework-laravel', 'https://i.imgur.com/gmyYuSi.png', '430000', 857321, 'code-mxh', 'Đẹp Nhanh', '330', '', 'Tại sao lại sử dụng nó?\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Framework Laravel', 'https://drive.google.com/'),
(19, 'php-basic', 'https://i.imgur.com/3SCgUfH.png', '0', 23131, 'shopping-cart', 'Đẹp', '59', '', 'Tại sao lại sử dụng nó?\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'PHP BASIC', 'https://drive.google.com/'),
(20, 'shop-bn-acc', 'https://i.imgur.com/lgk63om.png', '0', 31831, 'shop-ban-acc', 'Acc Game', '127', '', 'Tại sao lại sử dụng nó?\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Shop Ban Acc', 'https://drive.google.com/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `site_domain` text DEFAULT NULL,
  `site_logo` text DEFAULT NULL,
  `site_tenweb` text DEFAULT NULL,
  `site_email` varchar(255) NOT NULL,
  `site_passemail` varchar(255) NOT NULL,
  `token_tele` varchar(255) NOT NULL,
  `chatID_tele` varchar(255) NOT NULL,
  `site_content` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `sdt_admin` varchar(32) DEFAULT NULL,
  `pass_email_smtp` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `site_domain`, `site_logo`, `site_tenweb`, `site_email`, `site_passemail`, `token_tele`, `chatID_tele`, `site_content`, `facebook`, `sdt_admin`, `pass_email_smtp`) VALUES
(1, 'https://tuanori.com/', 'https://i.imgur.com/99nM9G2.png', 'TUANORI.VN', 'tuanori.vn@gmail.com', '1111111', '1', '1', 'TUANORI.VN', 'https://www.facebook.com/phamhoangtuan.ytb/', '0901961341', '1111111');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'Thành Viên',
  `price` varchar(255) NOT NULL DEFAULT '0',
  `time_user` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `email`, `username`, `password`, `role`, `price`, `time_user`) VALUES
(1, 'tuanori@gmail.com', 'tuanori', 'tuanori', 'admin', '0', '20:38:05');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_cmt`);

--
-- Chỉ mục cho bảng `hoso`
--
ALTER TABLE `hoso`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `hoso_settings`
--
ALTER TABLE `hoso_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id_momo`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `user_order` (`user_order`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_atm`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_products`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id_cmt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `hoso`
--
ALTER TABLE `hoso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `hoso_settings`
--
ALTER TABLE `hoso_settings`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `id_momo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id_atm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_products` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
