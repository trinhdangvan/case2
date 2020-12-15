-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 15, 2020 lúc 08:40 PM
-- Phiên bản máy phục vụ: 8.0.22-0ubuntu0.20.04.3
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `case_quanlythuvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `bookNumber` int NOT NULL,
  `bookName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `describes` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `categoryNumber` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`bookNumber`, `bookName`, `author`, `comment`, `describes`, `categoryNumber`) VALUES
(22, 'thời niên thiếu không thể quay lại ấy', 'Đồng Hoa', 'thoi-nien-thieu-khong-the-quay-lai-ay.jpg', 'Cuốn sách đi kèm với những hình ảnh đẹp, có được giờ phút hội tụ giữa lúc ta 5 tuổi, 15 tuổi, 25 tuổi, ấm áp nhẹ nhàng khiến bạn cảm động.', 5),
(23, 'mãi mãi là bao xa', 'Diệp Lạc Vô Tâm', '', 'what ?', 6),
(24, 'dạy con làm giàu', 'Robert Kiyosaki - Sharon Lechter', 'day-con-lam-giau.jpg', 'Một người nói: Thiếu thốn tiền bạc là nguồn gốc của mọi điều xấu.Một người tin rằng: Tôi không mua nổi vật đó.', 7),
(25, 'nhà giả kim', '	Paulo Coelho', 'nha-gia-kim.jpg', 'Đây là một câu chuyện thúc giục độc giả theo đuổi giấc mơ của mình.', 1),
(26, 'Vẽ em bằng màu nỗi nhớ', 'Tâm Phạm', 've-em-bang-mau-noi-nho.jpg', 'Câu chuyện xoay quanh cuộc sống thường ngày của những thanh niên trẻ trung và năng động, về tình yêu, tình bạn, tình cô trò và tình thân gia đình với nhiều cung bậc cảm xúc từ hài hước đến tò mò, đôi khi là những giọt nước mắt đầy xúc động.', 8),
(28, 'cảm xúc là kẻ thù số 1 của thành công', 'Lê Thẩm Dương', 'cam-xuc-la-ke-thu-so-1-cua-thanh-cong.jpg', ' Sách được chia thành 4 phần: Thất nghiệp là tín hiệu tuyệt vời; Cái gì không mua được bằng tiền?;  Chọn vợ/chồng theo hàm số hay biến số?; Những bài học cuộc sống TS Lê Thẩm Dương khuyên đọc.', 1),
(29, 'Tuổi Trẻ Đáng Giá Bao Nhiêu', 'Rosie Nguyễn', 'toi-tre-dang-gia-bao-nh.jpg', 'Hãy đọc sách, nếu bạn đọc sách một cách bền bỉ, sẽ đến lúc bạn bị thôi thúc không ngừng bởi ý muốn viết nên cuốn sách của riêng mình', 1),
(30, 'Đàn ông sao hỏa & Đàn bà sao kim', 'John Gray', 'dan-ong-sao-hoa-dan-ba-sao-k.jpeg', 'Cuốn sách nói rằng hầu hết các vấn đề về mối quan hệ phổ biến giữa nam và nữ là kết quả của sự khác biệt tâm lý cơ bản giữa hai giới, mà tác giả đã minh họa bằng phép ẩn dụ cùng tên của nó:.', 9),
(31, 'nguyễn đình tuấn', '	Paulo Coelho', 'toi-tre-dang-gia-bao-nh.jpg', 'Đây là một câu chuyện thúc giục độc giả theo đuổi giấc mơ của mình.', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorys`
--

CREATE TABLE `categorys` (
  `categoryName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `categoryNumber` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `categorys`
--

INSERT INTO `categorys` (`categoryName`, `categoryNumber`) VALUES
('Tâm Lý - Kỹ Năng Sống', 1),
('	Phiêu lưu, tưởng tượng, thần bí', 3),
('Ngôn Tình, Đô Thị', 5),
('ngôn tình', 6),
('kinh tế-quản lý', 7),
('Ngôn Tình, Truyện Teen', 8),
('phi hư cấu, quan hệ nam nữ, tâm lý, tự lực', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderdetailNumber` int NOT NULL,
  `orderNumber` int NOT NULL,
  `bookNumber` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `studentNumber` int NOT NULL,
  `orderNumber` int NOT NULL,
  `borrowDate` int NOT NULL,
  `returnDate` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `studentNumber` int NOT NULL,
  `studentName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`studentNumber`, `studentName`, `class`, `mail`, `phone`, `address`, `gender`) VALUES
(1, 'henrry', 'c11', 'qwqe@gmail.com', '12131412', 'fefdfdf', 'asffadfadfs');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookNumber`),
  ADD KEY `category_id` (`categoryNumber`);

--
-- Chỉ mục cho bảng `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`categoryNumber`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderdetailNumber`),
  ADD KEY `book_id` (`bookNumber`),
  ADD KEY `order_id` (`orderNumber`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderNumber`),
  ADD KEY `student_id` (`studentNumber`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentNumber`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `bookNumber` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `categorys`
--
ALTER TABLE `categorys`
  MODIFY `categoryNumber` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `orderdetailNumber` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orderNumber` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `students`
--
ALTER TABLE `students`
  MODIFY `studentNumber` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`categoryNumber`) REFERENCES `categorys` (`categoryNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`bookNumber`) REFERENCES `books` (`bookNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`orderNumber`) REFERENCES `orders` (`orderNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`studentNumber`) REFERENCES `students` (`studentNumber`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
