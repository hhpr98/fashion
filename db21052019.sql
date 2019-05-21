-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2019 lúc 04:18 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fashion_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLoaiSP` int(11) NOT NULL,
  `TenSP` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaBan` double NOT NULL DEFAULT '0',
  `MoTa` varchar(20000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiamGia` int(11) NOT NULL DEFAULT '0',
  `HinhAnh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayTiepNhan` datetime DEFAULT NULL,
  `LuotXem` int(11) NOT NULL DEFAULT '0',
  `ThuongHieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MauSac` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XuatXu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NhaSanXuat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLoaiSP`, `TenSP`, `GiaBan`, `MoTa`, `GiamGia`, `HinhAnh`, `NgayTiepNhan`, `LuotXem`, `ThuongHieu`, `MauSac`, `XuatXu`, `NhaSanXuat`, `SoLuong`) VALUES
(1, 1, 'QUẦN JEAN ĐEN QJ1394', 325000, 'Quần Jean Đen QJ1394 thiết kế dành riêng cho các chàng trai yêu thích sự đơn giản, nam tính. Chất liệu jean cao cấp, bền đẹp với các đường chỉ may chắc chắn. Màu đen cho bạn nhiều lựa chọn khi phối item này với nhiều trang phục khác.', 0, './img/product/quan_jean/QJ1394.jpg', '2019-05-04 00:00:00', 20, 'Calvin Klein', 'Đen', 'Việt Nam', 'VN', 30),
(2, 1, 'QUẦN JEANS SKINNY XANH DƯƠNG QJ1634', 385000, 'QUẦN JEANS SKINNY XANH DƯƠNG QJ1634 thiết kế dành riêng cho các chàng trai yêu thích sự đơn giản, nam tính. Chất liệu jean cao cấp, bền đẹp với các đường chỉ may chắc chắn. Màu xanh cho bạn nhiều lựa chọn khi phối item này với nhiều trang phục khác.', 0, './img/product/quan_jean/QJ1634.jpg', '2019-05-04 00:00:00', 30, 'Jeans Diesel', 'Xanh', 'Việt Nam', 'VN', 40),
(3, 1, 'QUẦN JEAN ỐNG ĐỨNG XANH ĐEN QJ1364', 395000, 'Quần Jean Ống Đứng Xanh Đen QJ1364 - nằm trong mẫu quần jeans ống đứng được thiết kế mới phù hợp hơn với xu hướng thời trang hiện nay của 4MEN. Chất liệu jean cao cấp, đồ rộng vừa phải mang lại sự lịch lãm dành cho phái mạnh.', 0, './img/product/quan_jean/QJ1364.jpg', '2019-05-04 00:00:00', 10, 'Calvin Klein', 'Xanh', 'Việt Nam', 'VN', 60),
(4, 2, 'ÁO SƠ MI TÍM ASM833', 245000, 'Áo Sơ Mi Tím ASM833 sang trọng và quý phái với màu tím nổi bật. Vẫn là form áo ôm body nhẹ nhàng, cùng tay dài, cổ bẻ phối nút cài. Chất liệu cao cấp từ 100% cotton, không những thấm hút tốt mà còn không nhăn nhàu mất dáng sau khi giặt. Rất đáng cho bạn trải nghiệm!', 0, './img/product/ao_somi/ASM833.jpg', '2019-05-04 00:00:00', 32, 'Calvin Klein', 'Tím', 'Việt Nam', 'VN', 40),
(5, 2, 'ÁO SƠ MI XANH ĐEN ASM863', 330000, 'Áo Sơ Mi XANH ĐEN ASM863 sang trọng và quý phái với màu xanh đen nổi bật. Vẫn là form áo ôm body nhẹ nhàng, cùng tay dài, cổ bẻ phối nút cài. Chất liệu cao cấp từ 100% cotton, không những thấm hút tốt mà còn không nhăn nhàu mất dáng sau khi giặt. Rất đáng cho bạn trải nghiệm!', 0, './img/product/ao_somi/ASM863.jpg', '2019-05-04 00:00:00', 5, 'Chanel', 'Xanh', 'Việt Nam', 'VN', 40),
(6, 2, 'ÁO SƠ MI ĐEN ASM836', 220000, 'Áo Sơ Mi ĐEN ASM8363 sang trọng và quý phái với màu đen nổi bật. Vẫn là form áo ôm body nhẹ nhàng, cùng tay dài, cổ bẻ phối nút cài. Chất liệu cao cấp từ 100% cotton, không những thấm hút tốt mà còn không nhăn nhàu mất dáng sau khi giặt. Rất đáng cho bạn trải nghiệm!', 0, './img/product/ao_somi/ASM836.jpg', '2019-05-04 00:00:00', 13, 'Dior', 'Đen', 'Việt Nam', 'VN', 40),
(7, 3, 'GIÀY TÂY NÂU G64', 700000, 'Boy đang cảm thấy nhàm chán với những mẫu giày giản đơn thường ngày??  thì đây chính là lựa chọn VÔ CÙNG ĐÚNG ĐẮN!! Với kiểu dáng thanh lịch và sang chảnh, các boy yên tâm là MIX GÌ CŨNG NGẦU và NỔI BẬT hơn rất nhiều lần đó nha. Đặt hàng ngay nào!', 0, './img/product/giay_nam/G64.jpg', '2019-05-04 00:00:00', 25, 'Dior', 'Nâu', 'Việt Nam', 'VN', 40),
(8, 3, 'GIÀY TÂY ĐEN G125', 500000, 'Boy đang cảm thấy nhàm chán với những mẫu giày giản đơn thường ngày??  thì đây chính là lựa chọn VÔ CÙNG ĐÚNG ĐẮN!! Với kiểu dáng thanh lịch và sang chảnh, các boy yên tâm là MIX GÌ CŨNG NGẦU và NỔI BẬT hơn rất nhiều lần đó nha. Đặt hàng ngay nào!', 0, './img/product/giay_nam/G125.jpg', '2019-05-04 00:00:00', 25, 'Burberry', 'Nâu', 'Việt Nam', 'VN', 60),
(9, 3, 'GIÀY THỂ THAO TRẮNG G216', 250000, 'Boy đang cảm thấy nhàm chán với những mẫu giày giản đơn thường ngày??  thì đây chính là lựa chọn VÔ CÙNG ĐÚNG ĐẮN!! Với kiểu dáng thanh lịch và sang chảnh, các boy yên tâm là MIX GÌ CŨNG NGẦU và NỔI BẬT hơn rất nhiều lần đó nha. Đặt hàng ngay nào!', 0, './img/product/giay_nam/G216.jpg', '2019-05-04 00:00:00', 17, 'Burberry', 'Trắng', 'Việt Nam', 'VN', 60),
(10, 4, 'Ví Da NAZAFU Đen BV205', 375000, 'Ví Da NAZAFU Đen BV205 chất liệu da bò thật, chất lượng cao cấp, bền, đường may tỉ mỉ. Ví thiết kế kiểu dáng ngang tăng diện tích chứa, các ngăn nhỏ tiện ích cũng được đưa vào nhiều hơn để lưu giữ thẻ ATM, namecard, giấy tờ tùy thân.', 0, './img/product/phu_kien/BV205.jpg', '2019-05-04 00:00:00', 17, 'Calvin Klein', 'Đen', 'Việt Nam', 'VN', 60),
(11, 4, 'TÚI XÁCH ĐEN TX79', 425000, 'Túi Xách Đen TX79 với thiết kế cực hiện đại và năng động, mang đến cho bạn sự tiện lợi và phong thái tự tin. Chất liệu da thật, bền đẹp và không bong nổ trong thời gian dài sử dụng. lại rất dễ vệ sinh khi lỡ dính bẩn. Tích hợp cả quai xách tay có lót da mềm mại và dây dù chắc chắc để đeo vai, cùng khóa tháo rời linh động cũng như miệng khóa kéo làm từ kim loại không gỉ, giúp sản phẩm đạt chất lượng tối ưu. Đường chỉ may đều đẹp, chắc chắn. Màu đen sang trọng, điểm nhấn trên mặt túi toát lên vẻ thanh lịch. Vừa đựng được nhiều vật dụng bởi ngăn chính rộng cùng nhiều ngăn nhỏ tiện lợi, đều có lớp lót trong kỹ càng, vừa có thể làm phụ kiện cho bạn hoàn thiện phong cách của bản thân.', 0, './img/product/phu_kien/TX79.jpg', '2019-05-04 00:00:00', 3, 'Dior', 'Đen', 'Việt Nam', 'VN', 60),
(12, 4, 'NÓN len ĐỎ N394', 375000, 'Nón Len Đỏ N394 chất len mịn, mỏng, nhẹ, giúp giữ ấm tốt đồng thời rất thông thoáng khi đội. Kiểu dáng thể thao, ôm gọn, viền nón khác màu tạo điểm nhấn cho người sử dụng.', 0, './img/product/phu_kien/N394.jpg', '2019-05-04 00:00:00', 17, 'Calvin Klein', 'Đỏ', 'Việt Nam', 'VN', 60);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `FK_SANPHAM_LOAISP` (`MaLoaiSP`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `TenSP` (`TenSP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SANPHAM_LOAISP` FOREIGN KEY (`MaLoaiSP`) REFERENCES `loaisanpham` (`MaLoaiSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
