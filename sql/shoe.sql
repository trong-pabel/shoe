-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3309
-- Thời gian đã tạo: Th6 03, 2022 lúc 11:44 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `shoe_color` varchar(255) NOT NULL,
  `shoe_size` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `shoe_id`, `shoe_color`, `shoe_size`, `status`) VALUES
(25, 15, 26, 'hồng', 23, 2),
(27, 18, 26, 'hồng', 23, 3),
(28, 18, 25, 'hồng', 23, 3),
(29, 18, 23, 'xanh', 23, 3),
(30, 18, 15, 'xanh', 23, 3),
(31, 18, 24, 'xanh', 3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'men'),
(2, 'women'),
(3, 'kids'),
(4, 'nike'),
(5, 'adidas');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `cart_id`, `date`) VALUES
(19, 27, '2022-06-03'),
(20, 28, '2022-06-03'),
(21, 29, '2022-06-03'),
(22, 30, '2022-06-03'),
(23, 31, '2022-06-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shoe`
--

CREATE TABLE `shoe` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` bigint(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `review` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `shoe`
--

INSERT INTO `shoe` (`id`, `name`, `price`, `sale`, `size`, `category_id`, `color`, `review`) VALUES
(3, 'giầy', 11, 1, '1', 1, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen'),
(7, 'Mẫn Lan', 99999999999, 0, '10', 2, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(8, 'Tu Le Dang', 1111, 3, '1', 3, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(9, 'Tu Le Dang', 34332, 3, '33', 2, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(10, '44354', 45435, 4, '4', 2, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(11, 'Nguyễn Gia Trường', 34, 3, '2', 2, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(12, 'Nguyễn Gia Trường', 111, 11, '11', 2, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(13, 'Nguyễn Gia Trường', 111, 1, '2', 3, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(14, 'Nguyễn Gia Trường', 134, 2, '2', 1, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(15, 'Nguyen Gia Truong', 343, 3, '3', 4, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(16, 'Nguyễn Gia Trường', 121, 2, '2', 3, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(19, 'Lan Xing', 100000, 5, '10', 2, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(20, 'Nguyen Gia Truong', 10000, 2, '3', 1, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(21, 'Nguyễn Gia Trường', 1231, 0, '2', 3, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', ''),
(23, 'Nguyễn Gia Trường', 1234, 1, '23,10,1,2,3,4,5,6', 1, 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen', 'hhh'),
(24, 'Tu Le Dang', 12, 2, '1', 1, 'hồng,xanh,vàng', 'xanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đenxanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đenxanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đenxanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đenxanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đenxanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đenxanh,vàng,cam,hồng cánh sen,trắng,đỏ,tím,đen'),
(25, 'eehheeh', 2312, 22, '23,10,1,2,3,4,5,6', 2, 'hồng,xanh', 'giày như lồn'),
(26, 'giày fake', 322123, 23, '23,10,1,2,3,4,5,6', 1, 'hồng', 'giày như lồn'),
(27, 'giày như l', 23232, 22, '23,10,1,2,3,4,5,6', 1, 'hồng cánh sen,xanh nhạt', 'giày như lồn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shoe_image`
--

CREATE TABLE `shoe_image` (
  `id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `link_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `shoe_image`
--

INSERT INTO `shoe_image` (`id`, `shoe_id`, `link_image`) VALUES
(1, 16, 'imageShoe/sneaker 1.jpg'),
(2, 16, 'imageShoe/sneaker 2.jpg'),
(3, 16, 'imageShoe/sneaker 3.jpg'),
(4, 15, 'imageShoe/sneaker 4.jpg'),
(5, 15, 'imageShoe/sneaker 5.jpg'),
(6, 15, 'imageShoe/sneaker 6.jpg'),
(7, 19, 'imageShoe/sneaker 7 (2).jpg'),
(8, 19, 'imageShoe/sneaker 8.jpg'),
(9, 19, 'imageShoe/sneaker 9.jpg'),
(10, 19, 'imageShoe/sneaker 10.jpg'),
(21, 21, 'imageShoe/sneaker 11.jpg'),
(24, 24, 'imageShoe/sneaker 12.jpg'),
(25, 24, 'imageShoe/sneaker 13.jpg'),
(26, 23, 'imageShoe/sneaker 14.jpg'),
(27, 23, 'imageShoe/sneaker 15.jpg'),
(28, 23, 'imageShoe/sneaker 16.jpg'),
(29, 22, 'imageShoe/sneaker 17.png'),
(30, 25, 'imageShoe/sneaker 18.jpg'),
(31, 25, 'imageShoe/sneaker 19.jpg'),
(32, 25, 'imageShoe/sneaker 20.jpg'),
(33, 26, 'imageShoe/sneaker 21.jpg'),
(34, 26, 'imageShoe/sneaker 22.jpg'),
(35, 27, 'imageShoe/sneaker 23.jpg'),
(36, 27, 'imageShoe/sneaker 24.png'),
(37, 27, 'imageShoe/sneaker 25.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `gender` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `dob`, `address`, `role`, `gender`, `email`, `phone`) VALUES
(15, 'truong', '25d55ad283aa400af464c76d713c07ad', 'Nguyễn Gia Trường', '2001-04-27', 'Bắc Ninh', 1, 1, 'truongjae@gmail.com', '0345382199'),
(18, 'truong2', '25d55ad283aa400af464c76d713c07ad', 'Nguyễn Gia Trường', '2001-04-27', 'Tiên Du', 0, 1, 'truongjae27@gmail.com', '0345382194');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shoe`
--
ALTER TABLE `shoe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shoe_image`
--
ALTER TABLE `shoe_image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `shoe`
--
ALTER TABLE `shoe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `shoe_image`
--
ALTER TABLE `shoe_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
