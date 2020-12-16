-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 30, 2020 lúc 02:58 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `BaoDayDB`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `idAdmin` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmail` varchar(255) NOT NULL,
  `trangThai` int(1) NOT NULL,
  `ngayTao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngaySua` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Roles` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`idAdmin`, `AdminUserName`, `AdminPassword`, `AdminEmail`, `trangThai`, `ngayTao`, `ngaySua`, `Roles`) VALUES
(1, 'Thien', '$2y$12$lMAUQcmuVEkIK4AkbOrLp.i2UHMso4RQVqY0nWiY9YEfRkoPi6sXa', 'chithientest@gmail.com', 1, '2020-11-11 14:45:21', '2020-11-16 01:56:49', 'Super Admin'),
(15, 'HuyDang', '$2y$12$XWzXllk0ho0BaKhKi84Lm.J8aQy3OR.ktjFY6.jsSJd5kg.ySfwB6', 'huy@gmail.com', 1, '2020-11-16 08:07:08', '2020-11-16 08:09:27', 'Comment Admin'),
(16, 'HuuTran', '$2y$12$c09Wv488j9SJge9DOM6hceqsBWApVFrUSDZHQLK4S.V.2snHWG5eG', 'huu@gmail.com', 1, '2020-11-16 13:38:23', '2020-11-16 13:38:23', 'Comment Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `idBaiViet` int(11) NOT NULL,
  `tieuDe` varchar(255) NOT NULL,
  `noiDung` longtext NOT NULL,
  `ngayTao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngaySua` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trangThai` int(1) DEFAULT 1,
  `URL` varchar(255) NOT NULL,
  `hinhAnh` varchar(255) DEFAULT NULL,
  `idCate` int(11) DEFAULT NULL,
  `idSubCate` int(11) DEFAULT NULL,
  `idAdmin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`idBaiViet`, `tieuDe`, `noiDung`, `ngayTao`, `ngaySua`, `trangThai`, `URL`, `hinhAnh`, `idCate`, `idSubCate`, `idAdmin`) VALUES
(1, 'Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam', '<p>Z650 SE 2021 khác biệt với phiên bản tiêu chuẩn ở bộ tem và màu sơn phần khung. Xe có giá bán 190 triệu đồng.</p><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 1\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/1_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/1_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 1\"></td></tr><tr><td><p>Phiên bản mới nhất của mẫu Kawasaki Z650 SE đã được mang về Việt Nam và phân phối dưới dạng chính hãng. Xe vẫn giữ nguyên kiểu dáng tổng thể giống đời cũ, chỉ được thay đổi thiết kế bộ tem. Phiên bản đặc biệt này có giá bán cao hơn 3 triệu đồng so với Z650 bản tiêu chuẩn.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 2\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/14_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/14_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 2\"></td></tr><tr><td><p>Mẫu nakedbike này sở hữu kích thước tổng thể 2.055 x 765 x 1.065 mm (dài x rộng x cao), chiều dài cơ sở 1.410 mm. Nhờ lợi thế về kích thước, Z650 cho khả năng di chuyển trong phố linh hoạt hơn <a data-cke-saved-href=\"https://zingnews.vn/tieu-diem/honda.html\" href=\"https://zingnews.vn/tieu-diem/honda.html\" title=\"Tin tức Honda\">Honda</a> CB650R (2.130 mm x 780 mm x 1.075 mm). Z650 cũng nhẹ hơn đối thủ 14 kg, đạt mức 188 kg.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 3\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/12_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/12_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 3\"></td></tr><tr><td><p>Phần đầu xe của Z650 SE 2021 vẫn giữ nguyên nét thiết kế mang phong cách Sugomi giống đời cũ. Cụm đèn chiếu sáng chính dùng bóng LED, cặp đèn báo rẽ vẫn là loại bóng halogen. Chiếc xe trong hình đã được cửa hàng thay đổi kính chắn gió nguyên bản thành loại kính chắn gió đồ chơi với thiết kế cao hơn.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><p><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 4\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/6_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/6_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 4\"></p><p><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 5\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/7_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/7_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 5\"></p></td></tr><tr><td><p>Điểm nổi bật nhất trên Z650 SE là bộ mâm được sơn màu xanh Lime Green, thiết kế mâm vẫn là dạng 5 chấu với kích thước 17 inch. Hệ thống phanh trước dùng đĩa phanh kép 300 mm, phanh sau dùng đĩa phanh đơn 220 mm, kẹp phanh trước và sau đều đến từ thương hiệu Nissin.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 6\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/13_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/13_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 6\"></td></tr><tr><td><p>Kawasaki Việt Nam tiếp tục trang bị cho Z650 2021 bộ lốp Dunlop Sportmax Roadsport. Kích thước lốp trước và sau lần lượt là 120/70 và 160/60.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 7\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/8_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/8_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 7\"></td></tr><tr><td><p>Phần tem ở quây gió trước được thiết kế đơn giản với dãy decal màu xanh và con số 650, tượng trưng cho dung tích xy-lanh của Z650.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 8\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/9_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/9_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 8\"></td></tr><tr><td><p>Z650 SE 2021 sử dụng chung cụm đồng hồ tốc độ điện tử TFT giống Z650 bản tiêu chuẩn. So với mẫu Z650 được giới thiệu tại Việt Nam cách đây gần 4 năm, cụm đồng hồ tốc độ điện tử được xem là một nâng cấp đáng giá với khả năng kết nối điện thoại và có thêm báo bình ắc-quy.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 9\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/10_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/10_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 9\"></td></tr><tr><td><p>Thiết kế từ phần bình xăng trở về sau của Z650 giống hoàn toàn mẫu sportbike Ninja 650. Bình xăng được sơn màu đen nhìn không đã mắt như phiên bản Z650 2020, dung tích bình xăng này là 15 lít, ít hơn 0,4 lít so với Honda CB650R.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 10\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/11_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/11_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 10\"></td></tr><tr><td><p>Vị trí yên người lái của Z650 SE 2021 cao 790 mm, thích hợp với những người có chiều cao từ 1,6 m trở lên. Đây cũng là điểm mạnh của mẫu xe này tại thị trường Việt Nam nếu so với đối thủ đến từ thương hiệu Honda, CB650R có chiều cao yên lên đến 810 mm.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 11\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/4_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/4_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 11\"></td></tr><tr><td><p>Z650 SE 2021 tiếp tục được trang bị cụm đèn hậu hình chữ Z đối xứng, đây là nét đặc trưng của các mẫu xe thuộc dòng Z-Series.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 12\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/5_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/5_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 12\"></td></tr><tr><td><p>Cung cấp sức mạnh cho mẫu nakedbike này là khối động cơ dung tích 649 cc, 2 xy-lanh, làm mát bằng dung dịch, sản sinh công suất 67,3 mã lực tại 8.000 vòng/phút và mô-men xoắn cực đại 64 Nm tại 6.700 vòng/phút. Về phần sức mạnh, Z650 yếu thế hơn hẳn CB650R với 93,8 mã lực và 64 Nm.</p></td></tr></tbody></table><table align=\"center\" class=\" cke_show_border\"><tbody><tr><td><img alt=\"Chi tiet Kawasaki Z650 2021 phien ban dac biet tai Viet Nam anh 13\" data-cke-saved-src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/2_Z6502020_zing.jpg\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/dqvpxpck/2020_10_26/2_Z6502020_zing.jpg\" title=\"Chi tiết Kawasaki Z650 2021 phiên bản đặc biệt tại Việt Nam ảnh 13\"></td></tr><tr><td><p>Kawasaki Việt Nam đang phân phối Z650 SE 2021 với mức giá 190 triệu đồng, Z650 bản tiêu chuẩn có giá 187 triệu đồng. Mẫu xe này hướng đến nhóm khách hàng tìm kiếm một mẫu nakedbike tầm trung, không yêu cầu quá nhiều trang bị hiện đại. Nếu muốn có thêm trang bị, khách hàng có thể cân nhắc đến Honda CB650R (245,99 triệu đồng), mẫu xe này nổi bật hơn với hệ thống kiểm soát lực kéo, giảm xóc hành trình ngược...</p></td></tr></tbody></table>', '2020-11-17 09:55:32', '2020-11-17 14:04:05', 1, '', '1_Z6502020_zing.jpg', 6, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_binhluan`
--

CREATE TABLE `tbl_binhluan` (
  `idComment` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `noiDungBL` mediumtext NOT NULL,
  `ngayTao` timestamp NOT NULL DEFAULT current_timestamp(),
  `trangThai` int(1) DEFAULT 1,
  `idBaiViet` int(11) DEFAULT NULL,
  `idAdmin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `idCate` int(11) NOT NULL,
  `tenCate` varchar(50) NOT NULL,
  `moTaCate` varchar(50) NOT NULL,
  `ngayTao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngaySua` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trangThai` int(1) NOT NULL,
  `idAdmin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`idCate`, `tenCate`, `moTaCate`, `ngayTao`, `ngaySua`, `trangThai`, `idAdmin`) VALUES
(3, 'Xã hội', 'Xã hội', '2020-11-11 14:46:51', '2020-11-17 06:21:13', 1, 1),
(4, 'Chính Trị', 'Chính Trị', '2020-11-12 03:20:56', '2020-11-12 03:20:56', 1, 1),
(5, 'Thể thao', 'Thể thao', '2020-11-12 04:11:42', '2020-11-12 04:11:42', 1, 1),
(6, 'Xe', 'Xe', '2020-11-12 04:21:11', '2020-11-12 04:21:11', 1, 1),
(7, 'Công nghệ', 'Công nghệ', '2020-11-12 04:24:25', '2020-11-12 04:24:25', 1, 1),
(8, 'Giáo dục', 'Giáo dục', '2020-11-12 04:34:36', '2020-11-12 04:34:36', 1, 1),
(9, 'Đời sống', 'Đời sống', '2020-11-12 04:45:22', '2020-11-12 04:45:22', 1, 1),
(10, 'Du lịch', 'Du lịch', '2020-11-12 04:48:33', '2020-11-12 04:48:33', 1, 1),
(11, 'Giải trí', 'Giải trí', '2020-11-12 05:00:00', '2020-11-12 05:00:00', 1, 1),
(13, 'Pháp luật', 'Pháp luật', '2020-11-16 12:45:51', '2020-11-16 12:45:51', 1, 1),
(14, 'Kinh doanh', 'Kinh doanh', '2020-11-16 12:47:06', '2020-11-17 08:57:35', 1, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuccon`
--

CREATE TABLE `tbl_danhmuccon` (
  `idSubCate` int(11) NOT NULL,
  `tenSubCate` varchar(50) NOT NULL,
  `moTaSubCate` varchar(50) NOT NULL,
  `ngayTao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngaySua` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trangThai` int(1) NOT NULL,
  `idCate` int(11) DEFAULT NULL,
  `idAdmin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuccon`
--

INSERT INTO `tbl_danhmuccon` (`idSubCate`, `tenSubCate`, `moTaSubCate`, `ngayTao`, `ngaySua`, `trangThai`, `idCate`, `idAdmin`) VALUES
(1, 'Mobile', 'Mobile', '2020-11-17 07:45:49', '2020-11-17 08:58:25', 1, 7, 1),
(2, 'Bóng đá', 'Bóng đá', '2020-11-17 08:41:30', '2020-11-17 08:42:05', 1, 5, 1),
(3, 'Xe máy', 'Xe máy', '2020-11-17 09:54:25', '2020-11-17 09:54:25', 1, 6, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`idBaiViet`),
  ADD KEY `fk_Cate_BaiViet` (`idCate`),
  ADD KEY `fk_SubCate_BaiViet` (`idSubCate`),
  ADD KEY `fk_Admin_BaiViet` (`idAdmin`);

--
-- Chỉ mục cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD PRIMARY KEY (`idComment`),
  ADD KEY `fk_BaiViet_BinhLuan` (`idBaiViet`),
  ADD KEY `fk_Admin_BinhLuan` (`idAdmin`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`idCate`),
  ADD KEY `idAdmin` (`idAdmin`);

--
-- Chỉ mục cho bảng `tbl_danhmuccon`
--
ALTER TABLE `tbl_danhmuccon`
  ADD PRIMARY KEY (`idSubCate`),
  ADD KEY `fk_danhmuc_danhmuccon` (`idCate`) USING BTREE,
  ADD KEY `fk_admin_danhmuccon` (`idAdmin`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `idBaiViet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  MODIFY `idComment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `idCate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuccon`
--
ALTER TABLE `tbl_danhmuccon`
  MODIFY `idSubCate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_baiviet`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
