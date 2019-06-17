/*drop database fashion_shop;*/
CREATE database Fashion_Shop;
USE Fashion_Shop;

/* 
--
-- Cấu trúc bảng cho bảng `taikhoan`
--
*/
CREATE TABLE IF NOT EXISTS `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `MatKhau`  varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci  NOT NULL DEFAULT '', 
  `HoTen` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci  NOT NULL,/*là họ và tên*/
  PRIMARY KEY (`MaTaiKhoan`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;

/*
--
-- Cấu trúc bảng cho bảng `nguoidung`(hay là khách hàng)
--
*/
CREATE TABLE IF NOT EXISTS `nguoidung` (
  `MaNguoiDung` int(255) NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau`  varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL, 
  `SoDienThoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(128)COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` int(11)  NOT NULL,/*thời điểm đăng kí thành viên, dùng ThoiGian="{time()}"*/
  PRIMARY KEY (`MaNguoiDung`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19;

/*
--
-- Cấu trúc bảng cho bảng `loaisanpham`
--
*/
CREATE TABLE IF NOT EXISTS`loaisanpham` (
  `MaLoaiSP` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoaiSP` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaLoaiSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24;

/*
--
-- Cấu trúc bảng cho bảng `sanpham`
--
*/
CREATE TABLE IF NOT EXISTS `sanpham` (
  `MaSP` int(11) NOT NULL AUTO_INCREMENT,
  `MaLoaiSP` int(11) NOT NULL,
  `TenSP` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaBan` double NOT NULL DEFAULT '0.0',
  `MoTa` varchar(20000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiamGia` int(11) NOT NULL DEFAULT '0',
  `HinhAnh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayTiepNhan` datetime DEFAULT NULL,
  `LuotXem` int(11) NOT NULL DEFAULT '0',/*lượt xem để biết xem sản phẩm nào đang hot*/
  `ThuongHieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MauSac` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XuatXu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NhaSanXuat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
   PRIMARY KEY (`MaSP`),
   FULLTEXT KEY `TenSP` (`TenSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16;

/*
--
-- Cấu trúc bảng cho bảng `giaodich`
--
*/
CREATE TABLE IF NOT EXISTS `giaodich` (
  `MaGiaoDich` bigint(20) NOT NULL AUTO_INCREMENT,
  `TinhTrang` tinyint(4) NOT NULL DEFAULT '0',/*--1. đã thanh toán, 0 chưa thanh toán*/
  `MaNguoiDung` int(11) NOT NULL DEFAULT '0',/*--nếu khách hàng không có tài khoản thì không cần lưu*/
  `TenKH` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_bin NOT NULL,
  `SoDienThoai` varchar(20) COLLATE utf8_bin NOT NULL,
  `TongTien` decimal(15,4) NOT NULL DEFAULT '0.0000',/*--tổng số tiền cần thanh toán, đây chính là tổng số tiền chúng ta gửi sang bên cổng thanh toán*/
  `Payment` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,/*-- tên cổng thanh toán mà khách hàng chọn để thanh toán*/
  `Payment_info` text COLLATE utf8_bin DEFAULT NULL,/*--toàn bộ thông tin trả về từ bên cổng thanh toán gủi cho chúng ta*/
  `MaBaoMat` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL, /*--mã bảo mật cho giao dịch,1 số cổng thanh toán ta cần gửi mã bảo mật*/
  `ThoiGian` int(11) NOT NULL DEFAULT '0',/*--thời điểm tạo giao dịch,dựa vào trường này mà chúng ta hoàn toàn có thể làm thống kê cáo cáo doanh thu theo thời gian*/
  PRIMARY KEY (`MaGiaoDich`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7;

/*
--
-- Cấu trúc bảng cho bảng `donhang`
--
*/
CREATE TABLE IF NOT EXISTS `donhang` (
  `MaDH` int(11) NOT NULL AUTO_INCREMENT,
  `MaGiaoDich` bigint(20) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOt NULL DEFAULT '0',
  `SoTien` double NOT NULL DEFAULT '0.0',/*-- lưu ý là Tổng tiền(TongTien) trong bảng giao dịch sẽ bằng tổng số tiền trong bảng đơn hàng tương ứng*/
  `HinhAnh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TinhTrang` tinyint(4) NOT NULL DEFAULT '0',
  `ThoiGian` datetime DEFAULT NULL,
  PRIMARY KEY (`MaDH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;

/*
--
-- Các ràng buộc cho các bảng đã đổ
--
*/
/*
--
-- Các ràng buộc cho bảng `donhang`
--
*/
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_DONHANG_GIAODICH` FOREIGN KEY (`MaGiaoDich`) REFERENCES `giaodich` (`MaGiaoDich`),
  ADD CONSTRAINT `FK_DONHANG_SANPHAM` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);
  
/*
--
-- Các ràng buộc cho bảng `sanphams`
--
*/
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SANPHAM_LOAISP` FOREIGN KEY (`MaLoaiSP`) REFERENCES `loaisanpham` (`MaLoaiSP`);





INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`,`MatKhau`, `HoTen` ) VALUES
(1, 'admin', '123', 'Nguyễn Hữu Hòa'),
(2, 'admin1', '123', 'Nguyễn Long Hồ'),
(3, 'admin2', '123', 'Lê Tống Minh Hiếu');

/*
--
-- Đang đổ dữ liệu cho bảng `loaisanphams`
--
*/
INSERT INTO `loaisanpham` (`MaLoaiSP`, `TenLoaiSP`) VALUES
(1, 'Quần Jean'),
(2,'Áo sơ mi'),
(3,'Giày nam'),
(4,'Phụ kiện');


--
-- Đang đổ dữ liệu cho bảng `sanphams`
--

INSERT INTO `sanpham` (`MaSP`, `MaLoaiSP`, `TenSP`, `GiaBan`, `MoTa`, `GiamGia`, `HinhAnh`, `NgayTiepNhan`, `LuotXem`, `ThuongHieu`, `MauSac`, `XuatXu`, `NhaSanXuat`, `SoLuong`) VALUES
(1, 1, 'QUẦN JEAN ĐEN QJ1394', 325000, 'Quần Jean Đen QJ1394 thiết kế dành riêng cho các chàng trai yêu thích sự đơn giản, nam tính. Chất liệu jean cao cấp, bền đẹp với các đường chỉ may chắc chắn. Màu đen cho bạn nhiều lựa chọn khi phối item này với nhiều trang phục khác.', 0, '/img/product/quan_jean/QJ1394.jpg', '2019-05-04 00:00:00', 20, 'Calvin Klein', 'Đen', 'Việt Nam', 'VN', 30),
(2, 1, 'QUẦN JEANS SKINNY XANH DƯƠNG QJ1634', 385000, 'QUẦN JEANS SKINNY XANH DƯƠNG QJ1634 thiết kế dành riêng cho các chàng trai yêu thích sự đơn giản, nam tính. Chất liệu jean cao cấp, bền đẹp với các đường chỉ may chắc chắn. Màu xanh cho bạn nhiều lựa chọn khi phối item này với nhiều trang phục khác.', 0, '/img/product/quan_jean/QJ1634.jpg', '2019-05-04 00:00:00', 30, 'Jeans Diesel', 'Xanh', 'Việt Nam', 'VN', 40),
(3, 1, 'QUẦN JEAN ỐNG ĐỨNG XANH ĐEN QJ1364', 395000, 'Quần Jean Ống Đứng Xanh Đen QJ1364 - nằm trong mẫu quần jeans ống đứng được thiết kế mới phù hợp hơn với xu hướng thời trang hiện nay của 4MEN. Chất liệu jean cao cấp, đồ rộng vừa phải mang lại sự lịch lãm dành cho phái mạnh.', 0, '/img/product/quan_jean/QJ1364.jpg', '2019-05-04 00:00:00', 10, 'Calvin Klein', 'Xanh', 'Việt Nam', 'VN', 60),
(4, 2, 'ÁO SƠ MI TÍM ASM833', 245000, 'Áo Sơ Mi Tím ASM833 sang trọng và quý phái với màu tím nổi bật. Vẫn là form áo ôm body nhẹ nhàng, cùng tay dài, cổ bẻ phối nút cài. Chất liệu cao cấp từ 100% cotton, không những thấm hút tốt mà còn không nhăn nhàu mất dáng sau khi giặt. Rất đáng cho bạn trải nghiệm!', 0, '/img/product/ao_somi/ASM833.jpg', '2019-05-04 00:00:00', 32, 'Calvin Klein', 'Tím', 'Việt Nam', 'VN', 40),
(5, 2, 'ÁO SƠ MI XANH ĐEN ASM863', 330000, 'Áo Sơ Mi XANH ĐEN ASM863 sang trọng và quý phái với màu xanh đen nổi bật. Vẫn là form áo ôm body nhẹ nhàng, cùng tay dài, cổ bẻ phối nút cài. Chất liệu cao cấp từ 100% cotton, không những thấm hút tốt mà còn không nhăn nhàu mất dáng sau khi giặt. Rất đáng cho bạn trải nghiệm!', 0, '/img/product/ao_somi/ASM863.jpg', '2019-05-04 00:00:00', 5, 'Chanel', 'Xanh', 'Việt Nam', 'VN', 40),
(6, 2, 'ÁO SƠ MI ĐEN ASM836', 220000, 'Áo Sơ Mi ĐEN ASM8363 sang trọng và quý phái với màu đen nổi bật. Vẫn là form áo ôm body nhẹ nhàng, cùng tay dài, cổ bẻ phối nút cài. Chất liệu cao cấp từ 100% cotton, không những thấm hút tốt mà còn không nhăn nhàu mất dáng sau khi giặt. Rất đáng cho bạn trải nghiệm!', 0, '/img/product/ao_somi/ASM836.jpg', '2019-05-04 00:00:00', 13, 'Dior', 'Đen', 'Việt Nam', 'VN', 40),
(7, 3, 'GIÀY TÂY NÂU G64', 700000, 'Boy đang cảm thấy nhàm chán với những mẫu giày giản đơn thường ngày??  thì đây chính là lựa chọn VÔ CÙNG ĐÚNG ĐẮN!! Với kiểu dáng thanh lịch và sang chảnh, các boy yên tâm là MIX GÌ CŨNG NGẦU và NỔI BẬT hơn rất nhiều lần đó nha. Đặt hàng ngay nào!', 0, '/img/product/giay_nam/G64.jpg', '2019-05-04 00:00:00', 25, 'Dior', 'Nâu', 'Việt Nam', 'VN', 40),
(8, 3, 'GIÀY TÂY ĐEN G125', 500000, 'Boy đang cảm thấy nhàm chán với những mẫu giày giản đơn thường ngày??  thì đây chính là lựa chọn VÔ CÙNG ĐÚNG ĐẮN!! Với kiểu dáng thanh lịch và sang chảnh, các boy yên tâm là MIX GÌ CŨNG NGẦU và NỔI BẬT hơn rất nhiều lần đó nha. Đặt hàng ngay nào!', 0, '/img/product/giay_nam/G125.jpg', '2019-05-04 00:00:00', 25, 'Burberry', 'Nâu', 'Việt Nam', 'VN', 60),
(9, 3, 'GIÀY THỂ THAO TRẮNG G216', 250000, 'Boy đang cảm thấy nhàm chán với những mẫu giày giản đơn thường ngày??  thì đây chính là lựa chọn VÔ CÙNG ĐÚNG ĐẮN!! Với kiểu dáng thanh lịch và sang chảnh, các boy yên tâm là MIX GÌ CŨNG NGẦU và NỔI BẬT hơn rất nhiều lần đó nha. Đặt hàng ngay nào!', 0, '/img/product/giay_nam/G216.jpg', '2019-05-04 00:00:00', 17, 'Burberry', 'Trắng', 'Việt Nam', 'VN', 60),
(10, 4, 'Ví Da NAZAFU Đen BV205', 375000, 'Ví Da NAZAFU Đen BV205 chất liệu da bò thật, chất lượng cao cấp, bền, đường may tỉ mỉ. Ví thiết kế kiểu dáng ngang tăng diện tích chứa, các ngăn nhỏ tiện ích cũng được đưa vào nhiều hơn để lưu giữ thẻ ATM, namecard, giấy tờ tùy thân.', 0, '/img/product/phu_kien/BV205.jpg', '2019-05-04 00:00:00', 17, 'Calvin Klein', 'Đen', 'Việt Nam', 'VN', 60),
(11, 4, 'TÚI XÁCH ĐEN TX79', 425000, 'Túi Xách Đen TX79 với thiết kế cực hiện đại và năng động, mang đến cho bạn sự tiện lợi và phong thái tự tin. Chất liệu da thật, bền đẹp và không bong nổ trong thời gian dài sử dụng. lại rất dễ vệ sinh khi lỡ dính bẩn. Tích hợp cả quai xách tay có lót da mềm mại và dây dù chắc chắc để đeo vai, cùng khóa tháo rời linh động cũng như miệng khóa kéo làm từ kim loại không gỉ, giúp sản phẩm đạt chất lượng tối ưu. Đường chỉ may đều đẹp, chắc chắn. Màu đen sang trọng, điểm nhấn trên mặt túi toát lên vẻ thanh lịch. Vừa đựng được nhiều vật dụng bởi ngăn chính rộng cùng nhiều ngăn nhỏ tiện lợi, đều có lớp lót trong kỹ càng, vừa có thể làm phụ kiện cho bạn hoàn thiện phong cách của bản thân.', 0, '/img/product/phu_kien/TX79.jpg', '2019-05-04 00:00:00', 3, 'Dior', 'Đen', 'Việt Nam', 'VN', 60),
(12, 4, 'NÓN len ĐỎ N394', 375000, 'Nón Len Đỏ N394 chất len mịn, mỏng, nhẹ, giúp giữ ấm tốt đồng thời rất thông thoáng khi đội. Kiểu dáng thể thao, ôm gọn, viền nón khác màu tạo điểm nhấn cho người sử dụng.', 0, '/img/product/phu_kien/N394.jpg', '2019-05-04 00:00:00', 17, 'Calvin Klein', 'Đỏ', 'Việt Nam', 'VN', 60);
(13, 1, 'Quần Jean Nam Ma Bư Dài K92', 320000, 'Quần Jean Nam Ma Bư Dài K92 thiết kế dành riêng cho các chàng trai yêu thích sự đơn giản, nam tính. Chất liệu jean cao cấp, bền đẹp với các đường chỉ may chắc chắn. Màu đen cho bạn nhiều lựa chọn khi phối item này với nhiều trang phục khác.', 0, '/img/product/quan_jean/K92.jpg', '2019-05-04 00:00:00', 20, 'Calvin Klein', 'Đen', 'Việt Nam', 'VN', 30),
(14, 1, 'Quần Jean Nam Ma Bư Dài K96', 280000, 'Quần Jean Nam Ma Bư Dài K96 thiết kế dành riêng cho các chàng trai yêu thích sự đơn giản, nam tính. Chất liệu jean cao cấp, bền đẹp với các đường chỉ may chắc chắn. Màu đen cho bạn nhiều lựa chọn khi phối item này với nhiều trang phục khác.', 0, '/img/product/quan_jean/K96.jpg', '2019-05-04 00:00:00', 20, 'Calvin Klein', 'Xanh', 'Việt Nam', 'VN', 40),
(15, 2, 'Sơ Mi Nam Ma Bư TN V02', 225000, 'Sơ Mi Nam Ma Bư TN V02 sang trọng và quý phái với màu xanh nhạt. Vẫn là form áo ôm body nhẹ nhàng, cùng tay dài, cổ bẻ phối nút cài. Chất liệu cao cấp từ 100% cotton, không những thấm hút tốt mà còn không nhăn nhàu mất dáng sau khi giặt. Rất đáng cho bạn trải nghiệm!', 0, '/img/product/ao_somi/V02.jpg', '2019-05-04 00:00:00', 32, 'Calvin Klein', 'Xanh', 'Việt Nam', 'VN', 40),
(16, 2, 'Sơ Mi Nam Ma Bư TD A01', 255000, 'Sơ Mi Nam Ma Bư TD A01 sang trọng và quý phái với màu tím nổi bật. Vẫn là form áo ôm body nhẹ nhàng, cùng tay dài, cổ bẻ phối nút cài. Chất liệu cao cấp từ 100% cotton, không những thấm hút tốt mà còn không nhăn nhàu mất dáng sau khi giặt. Rất đáng cho bạn trải nghiệm!', 0, '/img/product/ao_somi/A01.jpg', '2019-05-04 00:00:00', 32, 'Chanel', 'Tím', 'Việt Nam', 'VN', 40),
(17, 2, 'Sơ Mi Nam Ma Bư TD A02', 235000, 'Sơ Mi Nam Ma Bư TD A02 sang trọng và quý phái với màu đỏ nổi bật. Vẫn là form áo ôm body nhẹ nhàng, cùng tay dài, cổ bẻ phối nút cài. Chất liệu cao cấp từ 100% cotton, không những thấm hút tốt mà còn không nhăn nhàu mất dáng sau khi giặt. Rất đáng cho bạn trải nghiệm!', 0, '/img/product/ao_somi/A02.jpg', '2019-05-04 00:00:00', 32, 'Calvin Klein', 'Đỏ', 'Việt Nam', 'VN', 40),
(18, 2, 'Sơ Mi Nam Ma Bư TD X08', 200000, 'Đàn ông cần áo sơ mi cũng giống như phụ nữ công sở cần son đỏ. Cả hai đều đại diện của sự độc lập tuyệt đối, của sự hấp dẫn không cưỡng lại. Và điều đặc biệt, áo sơ mi nam không bao giờ lỗi mốt, càng đơn giản càng đẹp và càng phải được nâng niu.', 0, '/img/product/ao_somi/X08.jpg', '2019-05-04 00:00:00', 32, 'Chanel', 'Trắng', 'Việt Nam', 'VN', 40),
(19, 3, 'Giày thể thao nam A71', 500000, 'Nam giới luôn gắn liền với sự mạnh mẽ, năng động mà cũng không kém phần cá tính. Trang phục sẽ phần nào ảnh hưởng rất nhiều đến với phong cách của nam giới, và không chỉ là quần áo, giày dép cũng rất quan trọng luôn đi kèm với quần áo để hình thành một chuẩn phong cách ăn mặc. Và đặc biệt, nam giới trông sẽ cuốn hút hơn rất nhiều nếu vận lên mình một bộ quần áo thể thao và một đôi giày thể thao cực khỏe khoắn, năng động.', 0, '/img/product/giay_nam/A71.jpg', '2019-05-04 00:00:00', 25, 'Dior', 'Đen', 'Việt Nam', 'VN', 40),
(20, 3, 'Giày Nam Y2010 A48', 495000, 'Boy đang cảm thấy nhàm chán với những mẫu giày giản đơn thường ngày??  thì đây chính là lựa chọn VÔ CÙNG ĐÚNG ĐẮN!! Với kiểu dáng thanh lịch và sang chảnh, các boy yên tâm là MIX GÌ CŨNG NGẦU và NỔI BẬT hơn rất nhiều lần đó nha. Đặt hàng ngay nào!', 0, '/img/product/giay_nam/A48.jpg', '2019-05-04 00:00:00', 25, 'Burberry', 'Đen', 'Việt Nam', 'VN', 40),
(21, 4, 'Nón Snap U Ma Bư D26', 155000, 'Nón Lưỡi Trai thiết kế kiểu dáng thể thao năng động. May từ chất liệu kaki dày dặn, bền, thoáng khí, không phai màu, dễ giặt và dễ bảo quản. Nón có thể điều chỉnh kích thước tùy theo nhu cầu sử dụng. Có thể dùng cho cả nam và nữ.', 0, '/img/product/phu_kien/D26.jpg', '2019-05-04 00:00:00', 17, 'Calvin Klein', 'Xanh', 'Việt Nam', 'VN', 60),
(22, 4, 'PKTT Dây Nịt No Style SV07', 325000, 'Mặt khóa tự động mạ Crom cao cấp nhập khẩu từ HongKong Kích thước dây 3,5 *115/120/125cmx 3,5cm. Khóa cài tự động, mặt dây nguyên khối, chống trầy, không rỉ sét. Kiểu dáng đơn giản mà sang trọng, hợp thời trang và dễ kết hợp nhiều loại trang phục (từ trang phục công sở đến dạo phố)', 0, '/img/product/phu_kien/SV07.jpg', '2019-05-04 00:00:00', 3, 'Dior', 'Đen', 'Việt Nam', 'VN', 60),
(23, 4, 'Ví Nam No Style A31', 625000, 'Ví gồm 2 ngăn đựng tiền, 4 ngăn phụ ATM, 1 ngăn CMND, 2 ngăn giấy tờ cỡ vừa Những giấy tờ cỡ lớn loại cũ không vừa Đã kiểm chứng chất lượng của từng sản phẩm trước khi đặt bán trên sàn TMĐT.', 0, '/img/product/phu_kien/A31.jpg', '2019-05-04 00:00:00', 17, 'Calvin Klein', 'Đỏ', 'Việt Nam', 'VN', 60);



 INSERT INTO `nguoidung` VALUES
 (1,'Phạm Trưởng', 'phamtruong', '123','0349435152', 'Ho Chi Minh' , 20032019),
 (2,'Lâm Chấn Khang','lamchankhang','123','0329455555','Ho Chi Minh',23032019),
 (3,'Chi Dân','chidan','123','0329455569','Ho Chi Minh',05032019);
 
INSERT INTO `giaodich` (`MaGiaoDich`,`TinhTrang`, `MaNguoiDung`, `TenKH`,  `Email`,`SoDienThoai`, `TongTien`, `Payment`, `Payment_info`,  `MaBaoMat`, `ThoiGian`) VALUES
(1,1,1,'Phạm Trưởng','phamtruong@gmail.com','0349435152',2500000,'Không có','không có','không có','3042019'),
(2,1,1,'Phạm Trưởng','phamtruong@gmail.com','0349435152','300000','không có','Không có','Không có','29042019'),
(3,0,3,'Phạm Trưởng','chidan@gmail.com','329455566',6000000,'Không có','Không có','Không có','27042019'),
(4,1,2,'Lâm Chấn Khang','lamchankhang@gmail.com','0329455555',700000,'Không có','Không có','Không có','15042019');

INSERT INTO `donhang` ( `MaDH`,`MaGiaoDich`, `MaSP`, `SoLuong`, `SoTien`, `HinhAnh`, `TinhTrang`, `ThoiGian`) VALUES
(1,1,1,2,650000,'./img/product/quan_jean/QJ1394.jpg',1,'2019-05-04 00:00:00'),
(2,1,2,1,385000,'./img/product/quan_jean/QJ1634.jpg',1,'2019-05-04 00:00:00'),
(3,2,1,4,1300000,'./img/product/quan_jean/QJ1394.jpg',1,'2019-05-04 00:00:00'),
(4,3,3,1,395000,'./img/product/quan_jean/QJ1364',1,'2019-05-04 00:00:00');

 
 /*Câu truy vấn bên dưới dành cho Trang admin là bảng Đơn hàng gần đây*/
select dh.MaDH,dh.HinhAnh,sp.TenSP,dh.MaSP,dh.SoLuong,dh.SoTien,dh.ThoiGian,gd.TenKH,dh.TinhTrang from donhang dh, giaodich gd, sanpham sp
where dh.MaGiaoDich=gd.MaGiaoDich and dh.MaSP=sp.MaSP
