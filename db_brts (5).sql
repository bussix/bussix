-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 05:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_brts`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `Admin_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `Photous` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`Admin_id`, `Name`, `email_id`, `User_name`, `password`, `contact`, `Photous`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'admin', '8909878978', 'abc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `Bus_id` int(11) NOT NULL,
  `Bus_no` varchar(10) NOT NULL,
  `Bus_photos` varchar(100) NOT NULL,
  `Bus_type` varchar(10) NOT NULL,
  `Bus_is_active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`Bus_id`, `Bus_no`, `Bus_photos`, `Bus_type`, `Bus_is_active`) VALUES
(17, 'GJ-05-7599', '16470197158879.jpg', 'Normal', 'No'),
(18, 'GJ-05-4785', '16462819525337.jpg', 'Normal', 'Yes'),
(21, 'GJ-05-4141', '16462872689760.jpg', 'Electric', 'Yes'),
(24, 'GJ-05-7759', '16467349513826.jpg', 'Normal', 'Yes'),
(26, 'GJ-05-7878', '16462873912820.jpg', 'Normal', 'No'),
(28, 'GJ-05-7794', '16464729596393.jpg', 'Electric', 'No'),
(29, 'GJ-05-7599', '16464730309070.jpg', 'Electric', 'Yes'),
(30, 'GJ-05-4020', '16467328348707.jpg', 'Electric', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_route`
--

CREATE TABLE `tbl_bus_route` (
  `Route_id` int(11) NOT NULL,
  `Bus_id` int(11) NOT NULL,
  `Bussstation_id` int(11) NOT NULL,
  `Bus_time` datetime NOT NULL DEFAULT current_timestamp(),
  `Route_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bus_route`
--

INSERT INTO `tbl_bus_route` (`Route_id`, `Bus_id`, `Bussstation_id`, `Bus_time`, `Route_number`) VALUES
(46, 24, 11, '2022-03-03 11:49:13', 165);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_station`
--

CREATE TABLE `tbl_bus_station` (
  `Bus_station_id` int(11) NOT NULL,
  `Bus_station_photo` varchar(100) NOT NULL,
  `Bus_station_address` varchar(100) NOT NULL,
  `Bus_station_landmark` varchar(30) NOT NULL,
  `Bus_station_pincode` varchar(7) NOT NULL,
  `Bus_station_latitude` varchar(20) NOT NULL,
  `Bus_station_longtitude` varchar(20) NOT NULL,
  `Bus_station_name` varchar(100) NOT NULL,
  `bus_station_isactive` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bus_station`
--

INSERT INTO `tbl_bus_station` (`Bus_station_id`, `Bus_station_photo`, `Bus_station_address`, `Bus_station_landmark`, `Bus_station_pincode`, `Bus_station_latitude`, `Bus_station_longtitude`, `Bus_station_name`, `bus_station_isactive`) VALUES
(10, '16469978312832.jpg', 'adajan patiya       ', 'adajan       ', '395008 ', '897897       ', '786786       ', 'Varachha', 'No'),
(11, '16462815135621.webp', 'adajan patiya ', 'adajan ', '395008 ', '897897 ', '786786 ', 'adajan', 'Yes'),
(12, '16462815135621.webp', 'adajan patiya ', 'adajan ', '395008 ', '897897 ', '786786 ', 'adajan', 'Yes'),
(13, '16462815135621.webp', 'adajan patiya ', 'adajan ', '395008 ', '897897 ', '786786 ', 'adajan', 'Yes'),
(14, '16462815135621.webp', 'adajan patiya ', 'adajan ', '395008 ', '897897 ', '786786 ', 'adajan', 'Yes'),
(16, '16462815135621.webp', 'adajan patiya ', 'adajan ', '395008 ', '897897 ', '786786 ', 'adajan', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `Com_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Com_text` varchar(900) NOT NULL,
  `com_img_url` varchar(100) NOT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'pending',
  `Com_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_complaint`
--

INSERT INTO `tbl_complaint` (`Com_id`, `User_id`, `Com_text`, `com_img_url`, `Status`, `Com_datetime`) VALUES
(74, 80, 'test', 'test', 'pending', '2022-03-10 18:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `Faq_id` int(11) NOT NULL,
  `Faq_cat_id` int(11) NOT NULL,
  `Question` text NOT NULL,
  `Answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`Faq_id`, `Faq_cat_id`, `Question`, `Answer`) VALUES
(19, 12, 'test', 'test'),
(20, 9, 'can you see the buses schedual ?', 'yes with the routes option of the bus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq_categery`
--

CREATE TABLE `tbl_faq_categery` (
  `Faq_cat_id` int(11) NOT NULL,
  `Faq_cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_faq_categery`
--

INSERT INTO `tbl_faq_categery` (`Faq_cat_id`, `Faq_cat_name`) VALUES
(9, 'schedual checker'),
(12, 'help for booking ticket'),
(13, 'problem about booking'),
(14, 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `News_id` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `News_img` varchar(100) NOT NULL,
  `News_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`News_id`, `Title`, `Description`, `News_img`, `News_datetime`) VALUES
(4, 'bus adding   ', '500 more electric BRTS buses soon for Surat, says Banchhanid ..																																				', '16470212544701.jpg', '0000-00-00 00:00:00'),
(5, 'rakshabandhan', 'free travelling for womens 24 hour ', '16470000592392.png', '0000-00-00 00:00:00'),
(6, 'bus adding ', '500 more electric BRTS buses soon for Surat, says Banchhanid ..												', '16470000592392.png', '2011-11-11 00:00:00'),
(24, 'bus adding ', '500 more electric BRTS buses soon for Surat, says Banchhanid ..												', '16470000592392.png', '2022-03-11 16:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer`
--

CREATE TABLE `tbl_offer` (
  `Offer_id` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(150) NOT NULL,
  `Is_active` varchar(10) NOT NULL,
  `Discount` varchar(20) NOT NULL,
  `amount` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_offer`
--

INSERT INTO `tbl_offer` (`Offer_id`, `Title`, `Description`, `Is_active`, `Discount`, `amount`) VALUES
(1, 'Mothers day', 'Today 18% off on ticket for 30 years above women', 'yes', '18%', '100'),
(2, 'children day', 'today 5% off on ticket for 14years below students', 'no', '5%', '50'),
(3, '26 january', 'get 25% off on pass booking for time duration 1 year', 'yes', '25', ''),
(4, 'rakshabandhan', 'good offer for daily customer', 'yes', '10%', '100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pass`
--

CREATE TABLE `tbl_pass` (
  `Pass_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `S_location_id` int(11) NOT NULL,
  `E_location_id` int(11) NOT NULL,
  `km` varchar(20) NOT NULL,
  `total amount` varchar(20) NOT NULL,
  `Wallet_amount` varchar(20) NOT NULL,
  `Online_amount` varchar(20) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `is_pay` varchar(20) NOT NULL,
  `status` varchar(8) NOT NULL,
  `P book_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pass`
--

INSERT INTO `tbl_pass` (`Pass_id`, `User_id`, `S_location_id`, `E_location_id`, `km`, `total amount`, `Wallet_amount`, `Online_amount`, `Start_date`, `End_date`, `is_pay`, `status`, `P book_datetime`) VALUES
(1, 81, 12, 15, '15', '1000', '300', '200', '2022-04-21', '2022-05-21', 'paid', 'yes', '2022-01-21 12:30:00'),
(10, 14, 14, 21, '45', '1000', '400', '200', '2022-04-21', '2022-05-21', 'yes', 'pending', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `Rev_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Review_text` varchar(800) NOT NULL,
  `Rev_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `is_active` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ticket`
--

CREATE TABLE `tbl_ticket` (
  `Ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `s_bus_station_id` int(11) NOT NULL,
  `e_bus_station_id` int(11) NOT NULL,
  `KM` int(10) NOT NULL,
  `Total_amount` int(10) NOT NULL,
  `Wallet_amount` int(20) NOT NULL,
  `Online_amount` int(20) NOT NULL,
  `Transaction_no` varchar(15) NOT NULL,
  `Is_pay` varchar(15) NOT NULL DEFAULT 'no',
  `Status` varchar(15) NOT NULL DEFAULT 'pending',
  `P_book_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `Barcode_number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ticket`
--

INSERT INTO `tbl_ticket` (`Ticket_id`, `user_id`, `s_bus_station_id`, `e_bus_station_id`, `KM`, `Total_amount`, `Wallet_amount`, `Online_amount`, `Transaction_no`, `Is_pay`, `Status`, `P_book_datetime`, `Barcode_number`) VALUES
(14, 14, 14, 10, 6, 45, 250, 150, '625987654', 'yes', 'pending', '2022-03-10 14:10:03', ''),
(30, 80, 12, 16, 8, 45, 300, 300, '9875653', 'yes', 'pending', '2022-03-05 15:13:34', '123242\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ticket_check`
--

CREATE TABLE `tbl_ticket_check` (
  `Check_id` int(11) NOT NULL,
  `Ticket_id` int(11) NOT NULL,
  `Bus_station_id` int(11) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Date_time` varchar(10) NOT NULL,
  `Pass_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timetable`
--

CREATE TABLE `tbl_timetable` (
  `Time_id` int(11) NOT NULL,
  `Bus_id` int(11) NOT NULL,
  `Bus_station_id` int(11) NOT NULL,
  `Timing` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_timetable`
--

INSERT INTO `tbl_timetable` (`Time_id`, `Bus_id`, `Bus_station_id`, `Timing`) VALUES
(2, 30, 11, ''),
(11, 17, 10, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Mobile_no` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Is_block` varchar(10) NOT NULL,
  `Register_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `otp_code` varchar(6) NOT NULL,
  `Is_verify` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `Name`, `Mobile_no`, `Email`, `Password`, `Is_block`, `Register_datetime`, `otp_code`, `Is_verify`) VALUES
(14, 'zeel', '123', 'zeelpatel0600@gmail.com', '123', 'yes', '2022-02-25 13:39:53', '998254', 'no'),
(80, 'Muzz', '7984574524', 'muzz@gmail.com', '123', 'No', '2022-03-08 16:11:53', '9089', 'No'),
(81, 'Muzz', '7984574524', 'muzz@gmail.com', '123', 'No', '2022-03-08 16:12:01', '8290', 'No'),
(82, 'smit', '8735824980', 'smit@gmail.com', '123', 'No', '2022-03-08 17:56:15', '3232', 'No'),
(84, 'smit', '8735824980', 'smit@gmail.com', '123', 'No', '2022-03-08 17:56:55', '9405', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet`
--

CREATE TABLE `tbl_wallet` (
  `Wallet_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Amount` varchar(10) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Remark` varchar(50) NOT NULL,
  `Walllet_datetime` datetime NOT NULL,
  `Transaction_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`Bus_id`);

--
-- Indexes for table `tbl_bus_route`
--
ALTER TABLE `tbl_bus_route`
  ADD PRIMARY KEY (`Route_id`),
  ADD KEY `Bus_id` (`Bus_id`),
  ADD KEY `Bussstation_id` (`Bussstation_id`);

--
-- Indexes for table `tbl_bus_station`
--
ALTER TABLE `tbl_bus_station`
  ADD PRIMARY KEY (`Bus_station_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`Com_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`Faq_id`),
  ADD KEY `Faq_cat_id` (`Faq_cat_id`);

--
-- Indexes for table `tbl_faq_categery`
--
ALTER TABLE `tbl_faq_categery`
  ADD PRIMARY KEY (`Faq_cat_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`News_id`);

--
-- Indexes for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  ADD PRIMARY KEY (`Offer_id`);

--
-- Indexes for table `tbl_pass`
--
ALTER TABLE `tbl_pass`
  ADD PRIMARY KEY (`Pass_id`),
  ADD KEY `User_id` (`User_id`),
  ADD KEY `S_location_id` (`S_location_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`Rev_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `tbl_ticket`
--
ALTER TABLE `tbl_ticket`
  ADD PRIMARY KEY (`Ticket_id`),
  ADD KEY `s_bus_station_id` (`s_bus_station_id`),
  ADD KEY `e_bus_station_id` (`e_bus_station_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_ticket_check`
--
ALTER TABLE `tbl_ticket_check`
  ADD PRIMARY KEY (`Check_id`),
  ADD KEY `Ticket_id` (`Ticket_id`),
  ADD KEY `Bus_station_id` (`Bus_station_id`);

--
-- Indexes for table `tbl_timetable`
--
ALTER TABLE `tbl_timetable`
  ADD PRIMARY KEY (`Time_id`),
  ADD KEY `Bus_id` (`Bus_id`,`Bus_station_id`),
  ADD KEY `Bus_station_id` (`Bus_station_id`),
  ADD KEY `Bus_id_2` (`Bus_id`,`Bus_station_id`),
  ADD KEY `Bus_id_3` (`Bus_id`,`Bus_station_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  ADD PRIMARY KEY (`Wallet_id`),
  ADD KEY `User_id` (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  MODIFY `Bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_bus_route`
--
ALTER TABLE `tbl_bus_route`
  MODIFY `Route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_bus_station`
--
ALTER TABLE `tbl_bus_station`
  MODIFY `Bus_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `Com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `Faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_faq_categery`
--
ALTER TABLE `tbl_faq_categery`
  MODIFY `Faq_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `News_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  MODIFY `Offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pass`
--
ALTER TABLE `tbl_pass`
  MODIFY `Pass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `Rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_ticket`
--
ALTER TABLE `tbl_ticket`
  MODIFY `Ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_ticket_check`
--
ALTER TABLE `tbl_ticket_check`
  MODIFY `Check_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_timetable`
--
ALTER TABLE `tbl_timetable`
  MODIFY `Time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  MODIFY `Wallet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bus_route`
--
ALTER TABLE `tbl_bus_route`
  ADD CONSTRAINT `tbl_bus_route_ibfk_1` FOREIGN KEY (`Bus_id`) REFERENCES `tbl_bus` (`Bus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_bus_route_ibfk_2` FOREIGN KEY (`Bussstation_id`) REFERENCES `tbl_bus_station` (`Bus_station_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD CONSTRAINT `tbl_complaint_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD CONSTRAINT `tbl_faq_ibfk_1` FOREIGN KEY (`Faq_cat_id`) REFERENCES `tbl_faq_categery` (`Faq_cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pass`
--
ALTER TABLE `tbl_pass`
  ADD CONSTRAINT `tbl_pass_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pass_ibfk_2` FOREIGN KEY (`S_location_id`) REFERENCES `tbl_bus_station` (`Bus_station_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD CONSTRAINT `tbl_review_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_ticket`
--
ALTER TABLE `tbl_ticket`
  ADD CONSTRAINT `tbl_ticket_ibfk_1` FOREIGN KEY (`s_bus_station_id`) REFERENCES `tbl_bus_station` (`Bus_station_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_ticket_ibfk_2` FOREIGN KEY (`e_bus_station_id`) REFERENCES `tbl_bus_station` (`Bus_station_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_ticket_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_ticket_check`
--
ALTER TABLE `tbl_ticket_check`
  ADD CONSTRAINT `tbl_ticket_check_ibfk_1` FOREIGN KEY (`Ticket_id`) REFERENCES `tbl_ticket` (`Ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_ticket_check_ibfk_2` FOREIGN KEY (`Bus_station_id`) REFERENCES `tbl_bus_station` (`Bus_station_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_timetable`
--
ALTER TABLE `tbl_timetable`
  ADD CONSTRAINT `tbl_timetable_ibfk_1` FOREIGN KEY (`Bus_id`) REFERENCES `tbl_bus` (`Bus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_timetable_ibfk_2` FOREIGN KEY (`Bus_station_id`) REFERENCES `tbl_bus_station` (`Bus_station_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  ADD CONSTRAINT `tbl_wallet_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
