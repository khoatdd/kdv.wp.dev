-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2016 at 08:31 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kdv`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangviettat`
--

CREATE TABLE `bangviettat` (
  `Number` int(11) NOT NULL,
  `tuviettat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tudaydu` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bangviettat`
--

INSERT INTO `bangviettat` (`Number`, `tuviettat`, `tudaydu`) VALUES
(1, 'ĐHQG', 'Đại học Quốc gia'),
(2, 'XHNV', 'Xã hội Nhân văn'),
(3, 'CNTT', 'Công nghệ thông tin'),
(4, 'TS', 'Tiến sĩ'),
(5, 'ThS', 'Thạc sĩ'),
(6, 'PGS', 'Phó Giáo sư');

-- --------------------------------------------------------

--
-- Table structure for table `cacdonvitochucdgn`
--

CREATE TABLE `cacdonvitochucdgn` (
  `ID` int(11) NOT NULL,
  `tentochuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cacdonvitochucdgn`
--

INSERT INTO `cacdonvitochucdgn` (`ID`, `tentochuc`) VALUES
(1, 'Bộ GD&ĐT'),
(2, 'TTKĐ ĐHQG-HN'),
(3, 'TTKĐ ĐHQG-HCM');

-- --------------------------------------------------------

--
-- Table structure for table `cackhoahoc`
--

CREATE TABLE `cackhoahoc` (
  `Number` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `tenkhoahoc` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thoigian` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidaotao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cackhoahoc`
--

INSERT INTO `cackhoahoc` (`Number`, `ID`, `tenkhoahoc`, `thoigian`, `noidaotao`) VALUES
(1, 1, 'Lớp Tập huấn đánh giá ngoài KĐCLGD', '27-31/8/2009', 'ĐHQG Hà Nội'),
(2, 1, 'Lớp Tập huấn tự đánh giá trong KĐCLGD', '22-26/2/2006', 'ĐHQG Hà Nội'),
(3, 1, 'Training on enhancing quality assurance in Vietnam', '28-31/5/2010', 'ĐHQG-HCM & AUN'),
(4, 2, 'Lớp Đào tạo Kiểm định viên Chất lượng Giáo dục ĐH và TCCN', '09/6/2014 - 03/7/2014', 'Đại học Quốc gia TP.HCM'),
(5, 3, 'Higher education and Intermediate professional education eccreditation asessor training workshop', '03/4/2014-15/5/2014', 'ĐHQG Tp.HCM'),
(6, 3, 'New Educational Methods and Quality Asessment', '25-28/12/2006', 'ĐHQG Tp.HCM'),
(7, 3, 'Quality Assessor in Higher Education', '16/05/2012', 'ĐHQG Tp.HCM'),
(8, 4, 'Khoá đào tạo Kiểm định viên AUN-QA', '7-8/2013', 'AUN, Thái lan'),
(9, 4, 'Khoá đào tạo Kiểm định viên CLGD ĐH và TCCN', '4-5/2014', 'ĐHQG-HCM, Việt Nam'),
(10, 4, 'Khoá đào tạo xây dựng chương trình đào tạo theo chuẩn kiểm định ABET', '10/2008', 'ABET, Louisville, Mỹ'),
(11, 5, 'Đánh giá viên trong đảm bảo chất lượng giáo dục đại học', '16/5/2012', 'ĐHQG-HCM'),
(12, 5, 'Khóa đào tạo kiểm định viên chất lượng giáo dục ĐH&TCCN', '3/4-15/5/2014', 'ĐHQG-HCM'),
(13, 5, 'The AUN-QA Assessors Training Workshop', '19-21/9/2013', 'ASEAN University Network'),
(14, 6, 'Khóa học đảm bảo và kiểm định chất lượng', 'Tháng 4 - 7/2014', 'Đại học Quốc gia TP.HCM'),
(15, 7, 'AUN-QA Training workshop - Tier 1', '18/3 - 21/3/2014', 'Bangkok, Thailand'),
(16, 7, 'Đào tạo kiểm định viên giáo dục đại học', '7/6 - 5/7/2014', 'ĐHQG, TP.HCM'),
(17, 7, 'QA Director training workshop', '25/2 - 1/3/2013', 'Arizona, Mỹ'),
(18, 7, 'TrainIQA workshop', '23/2 - 27/2/2015', 'Kuala Lumpur, Malaysia'),
(19, 8, 'Đào tạo kiểm định viên kiểm định chất lượng giáo dục ĐH và TCCN', '09-06-2014 đến 03-07-2014', 'ĐH Quốc gia TPHCM'),
(20, 9, 'Đào tạo Kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '9/6/2014- 3/7/2014', 'DDHQG TP.HCM'),
(21, 10, 'Đảm bảo chất lượng GD ĐH ', '9/2007', 'Trung tâm kháo thí và kiểm định chất lượng đòa tạo tổ chức, ĐHQG TP. Hồ Chí Minh '),
(22, 11, 'Khóa huấn luyện kiểm định viên hệ thống quản lý chất lượng quốc tế', '08/2005', 'Trung tâm chất lượng quốc tế IQC (IQC is certified by BVQI, accredited by UKAS and ANSI - RAB)'),
(23, 12, 'Đào tạo kiểm định viên chất lượng đào tạo các trường ĐH và Trung cấp chuyên nghiệp', '5/2014', 'ĐHQG Tp.HCM Việt Nam'),
(24, 12, 'Tập huấn CDIO (04 Component)', '2012, 2013', 'Trường ĐHKHTN, ĐHQG Tp.HCM Việt Nam.'),
(25, 12, 'Tập huấn đánh giá viên trong đảm bảo chất lượng giáo dục đại học. ', '5/2012', 'ĐHQG Tp.HCM Việt Nam'),
(26, 12, 'The AUN-QA Assessors Training Workshop', '9/2013', 'Vietnam National University-Ho Chi Minh city, Vietnam'),
(27, 14, 'Asean-QA TrainIQA ', '01/2015-02/2016', 'Dự án DAAD'),
(28, 14, 'Đánh giá ngoài cấp CTĐT theo bộ tiêu chuẩn AUN', '14/02/2009', 'Đại học Quốc gia Tp HCM'),
(29, 14, 'Đào tạo KĐV kiểm định chất lượng GDĐH và TCCN', '03/04-15/05/2014', 'Đại học Quốc gia Tp HCM'),
(30, 14, 'Kiểm định ABET', '20/03/2015', 'Dự án HEEAP'),
(31, 14, 'Thiết kế chương trình đào tạo KĐV', '06-07/01/2014', 'Đại học Quốc gia Tp HCM và AUN-QA Expert'),
(32, 15, 'đào tạo Kiểm định viên', '2014', 'Cục Khảo thí và ĐH Quốc gia Tp HCM'),
(33, 16, 'Đào tạo Kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '09/6/2014-03/07/2014 tại Đại học Quốc gia TP. HCM', 'Đại học Quốc gia TP. HCM'),
(34, 16, 'Hội thảo – Tập huấn: Văn hóa chất lượng và tự đánh giá trường đại học', '20-22/09/2010 tại Đà Nẵng', 'Cục Khảo thí & Kiểm định Chất lượng Giáo dục'),
(35, 16, 'Hội thảo - Tập huấn: Xây dựng hệ thống công cụ thông tin phản hồi kết quả giáo dục đại học', '21-22-23/12/2011 tại Vũng Tàu', 'Cục Khảo thí & Kiểm định Chất lượng Giáo dục'),
(36, 16, 'Hội thảo: Xây dựng và đánh giá hệ thống đảm bảo chất lượng bên trong trường đại học nhằm hình thành ', '27-28/10/2010 tại Nha Trang', 'Cục Khảo thí & Kiểm định Chất lượng Giáo dục'),
(37, 16, 'Tập huấn: Hướng dẫn tự đánh giá chương trình giáo dục sư phạm kỹ thuật công nghiệp trình độ đại học ', '10-11-12/10/2011 tại Hà Nội', 'Cục Khảo thí & Kiểm định Chất lượng Giáo dục'),
(38, 17, 'AUN-QA Training Course for Accomplishing Program Assessment 2012', '16/04/2012 -19/04/2012', 'Thái Lan'),
(39, 17, 'Đánh giá ngoài trong kiểm định chất lượng giáo dục đại học', '09/06/2007 -13/06/2007', 'Việt Nam'),
(40, 17, 'Fundamental of ABET accreditation', '20/03/2015', 'Việt Nam'),
(41, 17, 'The AUN-QA Assessors Training Workshop', '06/11/2014 -12/11/2014', 'Philippines'),
(42, 17, 'The AUN-QA Assessors Training Workshop', '31/07/2013 -02/08/2013', 'Thái Lan'),
(43, 18, 'Academic Quality Management System', '1/9/2008 - 12/9/2008', 'Singapore Polytechnic College'),
(44, 18, 'Bồi dưỡng Cán bộ quản lý', '13/6/2014 - 15/8/2014', 'Học viện QLGD'),
(45, 18, 'Các phương pháp đào tạo mới cho GV kỹ thuật', '21/11/2005 - 30/12/2005', 'Trường ĐH SPKT Tp. HCM'),
(46, 18, 'Nâng cao năng lực quản lý ĐT các trường ĐH-CĐ', '8/10/2007 - 12/10/2007', 'Học viện QLGD'),
(47, 19, 'Đánh giá viên AUN-QA', '12/2014', 'AUN-QA tại Phillipines'),
(48, 19, 'Đào tạo kiểm định viên kiểm định chất lượng giáo dục đại học và TCCN', '6/2014-7/2014', 'ĐH Quốc Gia TP.HCM'),
(49, 19, 'Tự đánh giá theo AUQ-QA', '3/2014', 'AUN-QA tại Bangkog'),
(50, 20, 'đào tạo Kiểm định viên khóa 2', '2014', 'Đai học quốc gia TP HCM'),
(51, 21, 'Dao tao kiem dinh vien KDCLGD DH va TCCN', '6-7 nam 2014', 'DH Quoc gia TP.HCM'),
(52, 22, 'Asean - QA Training Course Part I,II,III', '2011 - 2012', 'DAAD, AUN, AQAN, ENQA, HRK'),
(53, 22, 'External Quality Assurance: Options for Higher Education Managers', '2007', 'UNESCO, IIEP'),
(54, 22, 'International Forum for Education 2020', '2012', 'East - West Center'),
(55, 22, 'International Training Workshop for Accreditors', '2009', 'APQN, PAASCU'),
(56, 22, 'Training Session for New AUN-QA Assessors II', '2009', 'AUN-QA'),
(57, 26, 'Đào tạo Kiểm định viên KĐCLGD ĐH & trung cấp chuyên nghiện', '5/2014', 'ĐHQG-HCM'),
(58, 26, 'Tập huấn Kiểm định viên cấp CTĐT theo Bộ tiêu chuẩn AUN-QA', '9/2013', 'AUN-QA & ĐHQG-HCM'),
(59, 26, 'Tập huấn Kiểm định viên cấp CTĐT theo Bộ tiêu chuẩn AUN-QA', '9/2012', 'ĐHQG-HCM'),
(60, 26, 'Tập huấn Kiểm định viên cấp CTĐT theo Bộ tiêu chuẩn AUN-QA/ Tập huấn về Bộ tiêu chuẩn AUN-QA', '10/2011; 5/2010', 'AUN-QA/ ĐHQG-HCM'),
(61, 26, 'Tập huấn về Đảm bảo chất lượng', '12/2009', 'Bộ GD&ĐT'),
(62, 27, 'Khóa Đào tạo Kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', 'Từ 09/06/2014 đến 03/07/2014', 'Đại học Quốc gia Tp HCM'),
(63, 27, 'Tập huấn Đánh giá cấp chương trình đào tạo theo bộ tiêu chuẩn AUN (Asean University Network)', '27/08/2014', 'Đại học Công nghệ Tp HCM'),
(64, 28, 'Khoá đào tạo kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp ', '2014', 'ĐHQG Tp.HCM'),
(65, 28, 'Khoá tập huấn về Đảm bảo chất lượng trong giáo dục đại học', '2008', 'ĐHQG Tp.HCM'),
(66, 29, 'Đào tạo Kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '09/06/2014 đến 03/07/2014', 'Trường Đại học Quốc gia Tp. HCM'),
(67, 29, 'Tập huấn về Đánh giá ngoài để kiểm định các trường đại học', '23/02/2009 đến 27/02/2009', 'Cục Khảo khí và kiểm định chất lượng'),
(68, 30, 'Kiểm định viên kiểm định chất lượng giáo dục Đại học và Trung cấp chuyên nghiệp', '09-06-2014 đến 03-07-2014', 'Trung tâm kiểm định chất lượng giáo dục tp.hcm'),
(69, 31, 'Khóa Đào tạo Kiểm định viên kiểm định chất lượng GDĐH và TCCN', '2014', 'Trung tâm Khảo thí và ĐGCLGD, Đại học Quốc gia TPHCM'),
(70, 31, 'Tập huấn Kiểm tra đánh giá trong giáo dục', '2014', 'Trường Đại học Sư phạm Hà Nội'),
(71, 31, 'Tập huấn Tự đánh giá chương trình đào tạo giáo viên THPT', '2009', 'Cục Khảo thí và Kiểm định chất lượng giáo dục'),
(72, 31, 'Tập huấn Xây dựng hệ thống ĐBCL và Văn hóa chất lượng bên trong trường đại học', '2012', 'Cục Khảo thí và Kiểm định chất lượng giáo dục'),
(73, 32, 'Tập Huấn AUN-QA', '2014', 'Trường ĐH Nguyễn tất Thành'),
(74, 34, 'Đào tạo Kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '14/01/2015-03/03/2015', 'Đại học Quốc Gia Thành Phố Hồ Chí Minh'),
(75, 35, 'Đào tạo Kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '14/01/2015 - 03/03/2015', 'ĐH Quốc gia Tp.HCM'),
(76, 36, 'Chương trình đào tạo kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '14/01 ~ 03/2015 ', 'Trung tâm Kiểm định chất lượng giáo dục - Đại học Quốc gia Tp.HCM '),
(77, 37, 'Đào tạo kiểm định viên kiểm định chất lương giáo dục đại học và trung cấp chuyên nghiệp', '14-01 đến 03-3-2015', 'Đại học Quốc gia TP.HCM'),
(78, 38, 'IDEAL', '2009', 'ABET'),
(79, 38, 'Kiểm định viên', '2015', 'ĐHQG- TP.HCM'),
(80, 40, 'Đánh giá viên trong đảm bảo chất lượng giáo dục', '16/5/2012', 'ĐHQG TP. Hồ Chí Minh'),
(81, 40, 'Đào tạo kiểm định viên chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '14/01/2015 đến 03/03/2015', 'ĐHQG TP. Hồ Chí Minh'),
(82, 41, '  Quản trị đại học trong thời kỳ Toàn cầu hóa', '22-23/12/2007', 'Trung tâm phát triển nguồn nhân lực, ĐHQG Tp.HCM'),
(83, 41, 'Kiểm định viên Khóa 3', '14/1-3/32015', 'Trung tâm Khảo thí & ĐBCL, ĐHQG Tp.HCM'),
(84, 41, 'Quản trị đại học', '7-25/10/2013', 'ĐHQG Tp.HCM'),
(85, 42, 'Kiểm định viên khóa III', 'Tháng 1.2014 đến tháng 3.2015', 'Trung tâm KĐCLGD ĐHQG TP.HCM'),
(86, 43, 'Khóa Bồi dưỡng công tác Tự đánh giá', 'tháng 9/2011', 'Cục khảo thí - KĐCL (Bộ GD-ĐT)'),
(87, 43, 'Khóa đào tạo kiểm định viên KĐCL GD', '09/6/2014 -> 03/7/2014', 'Trung tâm KĐCL - ĐHQG TPHCM'),
(88, 43, 'Khóa tập huấn công tác tự đánh giá cấp trường', 'tháng 9/2009 - tháng 8/2010', 'Cty CP dịch vụ chất lượng giáo dục - Hà nội'),
(89, 43, 'Lớp bồi dưỡng tự đánh giá cấp chương trình', 'tháng 7/2014', 'Trung tâm ĐBCL - ĐH Cần thơ'),
(90, 44, ' Kiểm định viên kiểm định chất lượng giáo dục', 'Năm 2015', 'TT KĐCLGD, Đại học Quốc gia TP.HCM'),
(91, 44, 'Đánh giá chất lượng CTĐT theo tiêu chuẩn AUN; Đào tạo chuyên viên đảm bảo chất lượng giáo dục', 'Năm 2012', 'Hiệp hội các trường ĐH, cao đẳng'),
(92, 44, 'Đánh giá chương trình và hiệu quả đào tạo của các trường đại học, cao đẳng', 'Năm 2012', 'Trường ĐH Sư phạm TP.HCM'),
(93, 44, 'Kỹ năng phân tích thông tin và viết báo cáo tự đánh giá; Qui trình và kỹ năng đảm bảo chất lượng bên', 'Năm 2013', 'Đại học Quốc gia Thành phố HCM'),
(94, 44, 'Tự đánh giá trường đại học', 'Năm 2014', 'Cục Khảo thí - Kiểm định chất lượng Giáo dục'),
(95, 46, '10', '11', '12'),
(96, 46, '13', '14', '15'),
(97, 47, '1', '2', '3'),
(98, 47, '4', '5', '6'),
(99, 47, '7', '8', '9'),
(100, 65, 'Xây dưng chương trình theo hướng tiếp cận CDIO', '2009', 'Đại học Quốc gia TPHCM'),
(101, 65, 'Xây dựng chương trình theo tiêu chuẩn AUN QA', '2014', 'Hiệp hội các trường ngoài công lập'),
(102, 66, 'Đánh giá ngoài các trường đại học Việt Nam', '21đến 25/8/2006 ', 'Bộ GD&ĐT + HBO raad, Hà Nội, Hà Nội'),
(103, 66, 'Quản trị đại học trong thời kỳ toàn cầu hoá', '22đến 23/12/2007 ', 'ĐHQGHCM'),
(104, 66, 'Đảm bảo chất lượng trong giáo dục đại học', '17 đến 18/1/2008 ', 'ĐHQGHCM'),
(105, 66, 'Xây dựng Chương trình đào tạo đáp ứng các yêu cầu của học chế tín chỉ', '11 đến 13/8/2008', 'ĐHQGHCM'),
(106, 66, 'Đánh giá ngoài cấp Chương trình đào tạo theo Bộ tiêu chuẩn AUN', '14/2/2009 ', 'TTKT&ĐGCLĐT-ĐHQGHCM'),
(107, 66, 'TRAINING PROGRAMME for ACCREDITORS', 'June 30-July 2, 2014', 'PASSCU - Phillipine'),
(108, 67, 'Evaluating programs for continous improvement', '11/203', 'ĐH KHTN và Trường Singapore Polytechnic'),
(109, 63, 'Xây dựng chương trình đào tạo theo chuẩn ABET', '2008', 'ĐHBK - ĐHQG HCM'),
(110, 63, 'ISO 9001:2008', '2012', 'Intertek'),
(111, 63, 'Hệ thống quản lý chất lượng theo tiêu chuẩn ISO 9001:2015', '2015', 'Trí Việt'),
(112, 63, '\\"Learning Goals, Objectives and Outcomes: Their Impact on Curriculum Design\\"', '2011', 'ĐHQG HCM'),
(113, 63, 'Các đợt đào tạo tự đánh giá theo kiểm định AUN', '2013', 'ĐHBK - ĐHQG HCM'),
(114, 63, 'Các đợt đào tạo của chương trình CDIO', '2012 - 2015', 'ĐHBK - ĐHQG HCM'),
(115, 63, 'Đào tạo sử dụng phần mềm thống kê PASW Statistics 18', '2014', 'ĐHBK - ĐHQG HCM'),
(116, 124, 'Đào tạo Kiểm định viên KĐCL GD ĐH& TC CN', '01/6/2015-01/7/2015', 'TT Khảo thí ĐHQG'),
(119, 130, 'Đào tạo về hệ thống đảm bảo chất lượng bên trong (IQA) ', '2015-2016', 'Đức và các nước ASEAN'),
(120, 130, 'Đào tạo kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '3/4/2014 đến 15/5/2014', 'Đại học Quốc gia TP.HCM'),
(121, 130, 'The AUN-QA Assessors Training Workshop (Đào tạo đánh giá viên AUN-QA)', '31/7-2/8/2013', 'AUN, Bangkok Thái Lan'),
(122, 130, 'Đánh giá viên cấp chương trình đào tạo theo Bộ tiêu chuẩn AUN-QA', '27/10/2011', 'Đại học Quốc gia Tp.HCM'),
(123, 130, 'Đối sánh, xếp hạng và đảm bảo chất lượng trong giáo dục đại học', '15-17/12/2010', 'Đại học Quốc gia Tp.HCM'),
(124, 130, 'Đánh giá ngoài dành cho giáo dục đại học', '21/11/2008', 'Đại học Quốc gia Tp.HCM'),
(125, 63, 'Assurance of Assessment Quality in Higher Education Seminar (in HCM City)', '2012', 'QU-VN PDSS'),
(131, 133, 'Đảm bảo chất lượng bên trong và viết báo cáo trự đánh giá cấp cơ sở giáo dụctheo tiêu chuẩn của Bộ GD&ĐT', '21-24/12/2015', 'Trung tâm khảo thí và ĐG CL ĐT - ĐHQG HCM'),
(132, 133, 'Khoá đào tạo kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '1/6/2015 - 1/7/2015', 'Trung tâm khảo thí và ĐG CL ĐT - ĐHQG HCM'),
(148, 137, 'Bồi dưỡng cán bộ quản lý Khoa, Phòng ban', '3/2015~11/2015', 'Trường Cán bộ quản lý Giáo dục TpHCM'),
(149, 137, 'Khoá đào tạo kiểm định viên', '10/2015', 'Trung tâm Khảo thí & Đảm bảo chất lượng, D9HQG TpHCM'),
(150, 138, 'KIểm định viên', '11/2015', 'TT KT&ĐGCLĐT - Đại học Quốc gia TP.HCM'),
(151, 117, 'Khoá đào tạo KĐV KĐCLGD đại học và trung cấp chuyên nghiệp', '09/6 - 03/7/2014', 'Đại học Quốc gia TP HCM'),
(156, 59, 'x', 'y', 'z'),
(157, 60, 'y', 'z', 'a'),
(161, 131, 'Bồi dưỡng cán bộ và công chức Nhà nước ngành Giáo dục và Đào tạo theo chương trình giáo dục học đại học cho giảng viên trường đại học, cao đẳng', 'Từ 17/5/2004 đến 18/6/2004', 'Trường cán bộ quản lý Giáo dục – Đào tạo II'),
(162, 131, 'Tập huấn nâng cao năng lực kiểm định, đánh giá chất lượng trường đại học, cao đẳng', 'Từ 22/11/2007 đến 24/11/2007', 'Học viện Quản lý giáo dục'),
(163, 131, 'Bồi dưỡng nghiệp vụ tổ chức đào tạo theo học chế tín chỉ', 'Từ 16/6/2008 đến 20/6/2008', 'Học viện Quản lý giáo dục'),
(164, 131, 'Đào tạo Kiểm định viên Kiểm định chất lượng giáo dục', 'Từ 10/11/2014 đến 14/11/2014', 'Tổng cục Xây dựng lực lượng CAND (Nay là Tổng cục Chính trị CAND)'),
(165, 131, 'Đào tạo kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', 'Từ 02/11/2015 đến 04/12/2015', 'Đại học quốc gia thành phố Hồ Chí Minh'),
(166, 145, 'Đào tạo kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '01/6/2015 đến 01/7/2015', 'ĐHQG-HCM'),
(173, 146, 'Đảm bảo chất lượng trong giáo dục đại học', '17-18 tháng 1 năm 2008', 'Đại học Quốc gia TP. HCM'),
(174, 146, 'Công tác đảm bảo chất lượng trong giáo dục đại học', '17-18 tháng 2 năm 2009', 'Đại học Quốc gia TP.HCM'),
(175, 146, 'An Insight on Course Port-folio Development Assessment to Assure Program Quality', 'July 21-25, 2014', 'HEEAP'),
(176, 146, 'Institution Research - Its Role in Improving Quality of Higher Education', '20-23 February 2012', 'Đại học Quốc gia TP.HCM'),
(177, 149, 'ĐBCL bên trong và viết BCTĐG cấp cơ sở GD theo tiêu chuẩn của Bộ GD&ĐT', '21-24/12/2015', 'ĐHQG-HCM'),
(178, 46, '20', '21', '22'),
(179, 46, 'o', 'p', 'q'),
(181, 151, 'a', 'b', 'c'),
(182, 154, '10', '11', '12'),
(183, 154, 'j', 'k', 'l'),
(184, 69, 'Kiểm định viên kiểm định chất lượng giáo dục Đại học và Trung cấp chuyên nghiệp', '14/01/2015 - 03/03/2015', 'ĐH Quốc Gia TP.HCM'),
(185, 69, 'UNILEAD South East Asia program 2015', '1/5/2015 - 11/12/2015', 'Oldenburg University - DAAD - DIES'),
(186, 157, '4', '5', '6'),
(187, 158, 'Đào tạo kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp ', '1/6/2015-1/7/2017', 'Trường Đại học quốc gia thành phố Hồ Chí Minh'),
(188, 159, 'Đào tạo Kiểm định viên kiểm định chất lượng giáo dục đại học và trung cấp chuyên nghiệp', '14/12015-03/3/2015', 'Đại Học Quốc Gia Thành Phố Hồ Chí Minh'),
(189, 156, 'Tự đánh giá trong KĐCLGD đại học', '26/02/2006', 'Trung tâm ĐBCLĐT và Nghiên cứu phát triển Giáo dục, ĐHQG Hà Nội'),
(190, 156, 'Xây dựng Kế hoạch chiến lược và Công tác lập kế hoạch và triển khai dự án', '11/08/2007', 'Trung tâm Khảo thí và ĐGCLĐT, ĐHQG-HCM'),
(191, 156, 'Xây dựng Chương trình đào tạo đáp ứng các yêu cầu của học chế Tín chỉ', '13/08/2008', 'ĐHQG-HCM'),
(192, 156, 'Đánh giá ngoài dành cho Giáo dục Đại học', '21/11/2008', 'Trung tâm Khảo thí và ĐGCLĐT, ĐHQG-HCM'),
(193, 156, 'Phân bổ Nguồn lực và Quản lý tài chính trong trường ĐH', '14/03/2008', 'CETQA, VNU-HCM'),
(194, 156, 'Internal Auditor of Quality Management System', '18/02/2009', 'Trung tâm Chất lượng Quốc tế (IQC)'),
(195, 156, 'Đánh giá ngoài cấp Chương trình đào tạo theo Bộ tiêu chuẩn AUN', '14/02/2009', 'Trung tâm Khảo thí và ĐGCLĐT, ĐHQG-HCM'),
(196, 156, 'Khóa đào tạo Kiểm định viên Kiểm định CLGD đại học và trung cấp chuyên nghiệp', '27/05/2014', 'ĐHQG-HCM'),
(198, 119, 'Kiểm định viên ', '2015', 'ĐHQG-HCM'),
(199, 119, 'Online Training of Quality Assurance Practitioners', '2013', 'Vietnam\\''s Private Universities Association'),
(200, 119, 'Các khóa học ngắn hạn về ĐB và KĐCL', '2012-2016', 'ĐHQG-HCM'),
(203, 155, 'UNILEAD', '8-12/2014', 'DAAD và Uni Oldenburg - CHLB Đức');

-- --------------------------------------------------------

--
-- Table structure for table `danhmucmanganh`
--

CREATE TABLE `danhmucmanganh` (
  `Number` int(11) NOT NULL,
  `nganh` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmucmanganh`
--

INSERT INTO `danhmucmanganh` (`Number`, `nganh`) VALUES
(1, 'Khoa học giáo dục và đào tạo giáo viên'),
(2, 'Nghệ thuật'),
(3, 'Nhân văn'),
(4, 'Khoa học xã hội và hành vi'),
(5, 'Báo chí và thông tin'),
(6, 'Kinh doanh và quản lý'),
(7, 'Pháp luật'),
(8, 'Khoa học sự sống'),
(9, 'Khoa học tự nhiên'),
(10, 'Toán và thống kê'),
(11, 'Máy tính và công nghệ thông tin'),
(12, 'Công nghệ kỹ thuật'),
(13, 'Kỹ thuật'),
(14, 'Sản xuất và chế biến'),
(15, 'Kiến trúc và xây dựng'),
(16, 'Nông, lâm nghiệp và thuỷ sản'),
(17, 'Thú y'),
(18, 'Sức khoẻ'),
(19, 'Dịch vụ xã hội'),
(20, 'Khách sạn, du lịch, thể thao và dịch vụ cá nhân'),
(21, 'Dịch vụ vận tải'),
(22, 'Môi trường và bảo vệ môi trường'),
(23, 'An ninh, Quốc phòng');

-- --------------------------------------------------------

--
-- Table structure for table `dieukientimkiem`
--

CREATE TABLE `dieukientimkiem` (
  `Key` int(11) NOT NULL,
  `DieuKien` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQLSyntax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KyHieu` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Preffix` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Suffix` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dieukientimkiem`
--

INSERT INTO `dieukientimkiem` (`Key`, `DieuKien`, `SQLSyntax`, `KyHieu`, `Preffix`, `Suffix`) VALUES
(1, 'hovaten', '''concat(hovatendem,'' '',ten)''', 'có chứa từ', 'like ''%', '%'''),
(2, 'hovaten', 'concat(hovatendem,'' '',ten)', 'bắt đầu là', 'like ''', '%'''),
(3, 'hovaten', 'concat(hovatendem,'' '',ten)', 'tận cùng là', 'like ''%', ''''),
(4, 'namsinh', 'YEAR(ngaysinh)', 'lớn hơn', '>', NULL),
(5, 'namsinh', 'YEAR(ngaysinh)', 'bằng', '=', NULL),
(6, 'namsinh', 'YEAR(ngaysinh)', 'nhỏ hơn', '<', NULL),
(7, 'quequan', 'quequan', 'có chứa từ', 'like ''%', '%'''),
(8, 'noicongtac', 'noicongtac', 'có chứa từ', 'like ''%', '%'''),
(9, 'thamniencongtac', 'thamniencongtac', 'lớn hơn', '>', NULL),
(10, 'thamniencongtac', 'thamniencongtac', 'bằng', '=', NULL),
(11, 'thamniencongtac', 'thamniencongtac', 'nhỏ hơn', '<', NULL),
(12, 'diachilienhe', 'diachilienhe', 'có chứa từ', 'like ''%', '%'''),
(13, 'dienthoaicodinh', 'dienthoaicodinh', 'có chứa dãy số', 'like ''%', '%'''),
(14, 'dienthoaididong', 'dienthoaididong', 'có chứa dãy số', 'like ''%', '%'''),
(15, 'email', 'email', 'có chứa từ', 'like ''%', '%'''),
(16, 'chuyennganhthacsi', 'chuyennganhthacsi', 'có chứa từ', 'like ''%', '%'''),
(17, 'chuyennganhtiensi', 'chuyennganhtiensi', 'có chứa từ', 'like ''%', '%'''),
(18, 'chungchikdv', NULL, 'Có', '= 1', NULL),
(19, 'chungchikdv', NULL, 'Không', '= 2', NULL),
(20, 'thekdv', NULL, 'Có', '= 1', NULL),
(21, 'thekdv', NULL, 'Không', '= 2', ''),
(22, 'kinhnghiemvietbc', NULL, 'Có', '= 1', NULL),
(23, 'hocvi', NULL, 'Có chứa từ', 'like ''%', '%'''),
(24, 'vaitrotrongdoan', NULL, 'Trrưởng đoàn', NULL, NULL),
(25, 'vaitrotrongdoan', NULL, 'Thư ký', NULL, NULL),
(26, 'vaitrotrongdoan', NULL, 'Thành viên', NULL, NULL),
(27, 'gioitinh', NULL, 'Nam', '= 1', NULL),
(28, 'gioitinh', NULL, 'Nữ', '= 2', NULL),
(29, 'vaitrocothethamgia', NULL, 'Trưởng đoàn', NULL, 'REGEXP ''^.*(pht|hiệu trưởng|ht|hieu truong).*$'' and thongtinchung.thekdv = 1');

-- --------------------------------------------------------

--
-- Table structure for table `nhanxet`
--

CREATE TABLE `nhanxet` (
  `Number` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `donviduocdanhgia` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `thoigian` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nhanxet` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quatrinhcongtac`
--

CREATE TABLE `quatrinhcongtac` (
  `Number` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `thoigian` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `donvicongtac` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `chucvu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhthucdaotao` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quatrinhcongtac`
--

INSERT INTO `quatrinhcongtac` (`Number`, `ID`, `thoigian`, `donvicongtac`, `chucvu`, `hinhthucdaotao`) VALUES
(1, 1, '1981 đến 2000', 'Trường ĐH Nha Trang', 'GV', NULL),
(2, 1, '2001 đến 2006', 'Trường ĐH Nha Trang', 'Phó  trưởng P. Đào tạo', NULL),
(3, 1, '2007 đến nay', 'Trường ĐH Nha Trang', 'Trưởng phòng ĐBCL&TT', NULL),
(4, 2, '1983 -2007', 'Công ty Cổ phần Bánh Lubico', 'Trưởng phòng Kỹ thuật kiêm Quản đốc Phân xưởng', NULL),
(5, 2, '11/2007-8/2014', 'Trường Đại học Công nghệ TP.HCM', 'Phó Trưởng phòng Tổ chức - Hành chính', NULL),
(6, 2, '9/2014 - nay', 'Trường Đại học Công nghệ TP.HCM', 'Nhân viên Phòng Tổ chức - Hành chính (nghỉ hưu)', NULL),
(7, 3, '2004 đến nay', 'Khoa Công nghệ thông tin, Trường Đại học Quốc tế, ĐHQG Tp.HCM', 'Phó Trưởng Khoa', NULL),
(8, 4, '10/1995-7/1997', 'trường ĐH Bách khoa Tp.HCM', 'Giảng viên', NULL),
(9, 4, '7/1997-3/2003', 'ĐH Bách khoa Quốc gia Grenoble, Pháp', 'NCS', NULL),
(10, 4, '4/2003-10/2012', 'trường ĐH Bách khoa - ĐHQG-HCM', 'Giảng viên chính, Phó trưởng khoa', NULL),
(11, 4, '11/2012-nay', 'trường ĐH CNTT - ĐHQG-HCM', 'Phó giáo sư, Phó hiệu trưởng', NULL),
(12, 5, '2000-2001', 'Trường Đại học Hồng Bàng', 'GV', NULL),
(13, 5, '2001 đến nay', 'Trường Đại học Kinh tế - Luật', 'Phó trưởng khoa TCNH', NULL),
(14, 6, '1998 - 2001', 'Trung tâm Chất lượng Quốc tế (IQC)', 'Trợ lý giám đốc', NULL),
(15, 6, '2001-2008', 'Trung tâm Chất lượng Quốc tế (IQC)', 'Phó Giám đốc', NULL),
(16, 6, '2009 - nay', 'Trung tâm Chất lượng Quốc tế (IQC)', 'Giám đốc', NULL),
(17, 6, '2012 - 2017', 'Hội Khoa học Kinh tế và Quản lý TP.HCM', 'Ủy viên BCH', NULL),
(18, 7, '5/2001 - 9/2004', 'ĐH Ngoại ngữ-Tin học TP.HCM (HUFLIT)', 'Trưởng khoa CNTT', NULL),
(19, 7, '10/2004 - 4/2005', 'ĐH Sư phạm Kỹ thuật TP.HCM (UTE)', 'Giảng viên khoa CNTT', NULL),
(20, 7, '5/2005 - 8/2013', 'ĐH Sư phạm Kỹ thuật TP.HCM (UTE)', 'Trưởng khoa CNTT', NULL),
(21, 7, '9/2013 - Nay', 'ĐH Sư phạm Kỹ thuật TP.HCM (UTE)', 'Trưởng phòng ĐBCL', NULL),
(22, 8, '2002-2004', 'Bưu điện tỉnh Đồng Tháp', 'Nhân viên', NULL),
(23, 8, '2004-2007', 'Khoa Vật lý, Trường ĐH Đồng Tháp', 'Giảng viên', NULL),
(24, 8, '2007-2013', 'Khoa Vật lý, Trường ĐH Đồng Tháp', 'Trưởng bộ môn', NULL),
(25, 8, '2013 đến nay', 'Phòng KT&ĐBCLĐT, Trường ĐH Đồng Tháp', 'Phó trưởng phòng', NULL),
(26, 9, '11/2000-10/2007', 'Trường TH Y tế Bình Định', 'Bác sỹ-Giáo viên', NULL),
(27, 9, '11/2007 - 2009', 'Trường CĐ Y tế Bình Định', 'Bác sỹ-Giảng viên', NULL),
(28, 9, '2009- 2/2014', 'Trường CĐ Y tế Bình Định', 'Trưởng BM Ngoại', NULL),
(29, 9, '3/2014 đến nay', 'Trường CĐ Y tế Bình Định', 'Phó Hiệu trưởng kiêm Trưởng BM Ngoại', NULL),
(30, 10, '10/2002 - 5/2006', 'Ban Sau Đại học, ĐHQG - HCM', 'Phó Trưởng Ban', NULL),
(31, 10, '6/2006 - 10/2008', 'Trường ĐH Công nghệ thông tin, ĐHQG - HCM', 'Phó Hiệu trưởng', NULL),
(32, 10, '10/2008 - 9/2011', 'Ban Quan hệ Đối ngoại, ĐHQG - HCM', 'Trưởng Ban', NULL),
(33, 10, '10/2011 - 11/2015', 'Trường ĐH Đông Á', 'Phó Hiệu trưởng', NULL),
(34, 10, '3/2015 - nay', 'Trường ĐH Nguyễn Tất Thành', 'Phó Hiệu trưởng', NULL),
(35, 11, '2002 -2012', 'Trường Đại học Tôn Đức Thắng', 'Chuyên viên đào tạo', NULL),
(36, 11, '2014 -2015', 'Trường Đại học Công nghệ Sài Gòn', 'Giảng viên', NULL),
(37, 12, 'Từ 1998 đến 2002', 'Bộ môn Sinh hóa, Khoa Sinh học, Trường Đại học Khoa học Tự nhiên, Đại học Quốc gia Thành phố Hồ Chí ', 'Trợ giảng', NULL),
(38, 12, 'Từ 2002 đến 3/2012', 'Bộ môn Sinh hóa, Khoa Sinh học, Trường Đại học Khoa học Tự nhiên, Đại học Quốc gia Thành phố Hồ Chí ', 'Giảng viên', NULL),
(39, 12, 'Từ 4/2012 đến 1/2013', 'Bộ môn Sinh hóa, Khoa Sinh học, Trường Đại học Khoa học Tự nhiên, Đại học Quốc gia Thành phố Hồ Chí ', 'Giảng viên chính', NULL),
(40, 12, 'Từ 2/2013 đến 11/2013, 11/2013- nay', 'Bộ môn Sinh hóa, Khoa Sinh học, Trường Đại học Khoa học Tự nhiên, Đại học Quốc gia Thành phố Hồ Chí ', 'Phó giáo sư, Giảng viên chính, Phó Trưởng Khoa Sinh học', NULL),
(41, 12, 'Từ 11/2014 đến nay', 'Bộ môn Sinh hóa, Khoa Sinh học, Trường Đại học Khoa học Tự nhiên, Đại học Quốc gia Thành phố Hồ Chí ', 'Phó giáo sư, Phó Trưởng Khoa Sinh học, Trưởng Bộ môn Sinh hóa', NULL),
(42, 13, '2000-nay', 'Khoa Thư viện - Thông tin học Trường ĐH KHXH&VN-ĐHQG-HCM', 'Trưởng khoa', NULL),
(43, 14, '1995-2013', 'Đại học Quốc Gia Tp HCM', 'Chuyên viên Ban CTSV', NULL),
(44, 14, '2013-2015', 'Đại học Quốc gia Tp HCM', 'Phó Giám đốc TTKT&ĐGCLĐT', NULL),
(45, 15, '9/1996 - 12/1997', 'Khoa Sư phạm Đại học Cần Thơ', 'cán bộ tập sự', NULL),
(46, 15, '01/1998 - 10/2009', 'Khoa Sư phạm Đại học Cần Thơ', 'giảng viên', NULL),
(47, 15, '11/2009 - 4/2013', 'Khoa Khoa học Xã hội Nhân văn Đại học Cần Thơ', 'giảng viên', NULL),
(48, 15, '4/2013 - nay', 'Trung tâm ĐBCL&KT Đại học Cần Thơ', 'giảng viên', NULL),
(49, 16, '1997-2008', 'Phòng Đào tạo - Trường Đại học Nông Lâm TP. HCM', 'Chuyên viên', NULL),
(50, 16, '2009-2014', 'Trung tâm Khảo thí & Đảm bảo chất lượng - Trường Đại học Nông Lâm TP. HCM', 'Giám đốc', NULL),
(51, 16, '2015', 'Phòng Hành chính - Trường Đại học Nông Lâm TP. HCM', 'Trưởng phòng', NULL),
(52, 17, 'Từ 1982 đến 2006', 'Trường ĐH Cần Thơ', 'Giảng viên chính', NULL),
(53, 17, 'Từ 1/2007 đến 9/2010', 'Trường ĐH Nông Lâm TP.HCM', 'Trưởng Khoa Sư phạm Kỹ thuật', NULL),
(54, 17, 'Từ 1/2007 đến 9/2010', 'Trường ĐH Nông Lâm TP.HCM', 'Giảng viên chính', NULL),
(55, 17, 'Từ 9/2010 đến nay', 'Trường ĐH Quốc tế, ĐHQG-HCM', 'Trưởng TT.QLCLGD', NULL),
(56, 17, 'Từ 9/2010 đến nay', 'Trường ĐH Quốc tế, ĐHQG-HCM', 'Giảng viên chính', NULL),
(57, 18, 'đến 10/2008', 'Trường Trung học KTNV Thủ Đức', 'Trưởng Khoa', NULL),
(58, 18, 'từ 10/2008 đến nay', 'Trường CĐ Công nghệ Thủ Đức', 'Trưởng Phòng', NULL),
(59, 19, '5/1999 - 9/2004', 'Khoa Điện - Điện tử, ĐH Sư phạm Kỹ thuật TP.HCM', 'Giảng viên', NULL),
(60, 19, '10/2004-6/2008', 'Khoa Kỹ thuật, ĐH Công nghệ Sydney, Úc', 'Nghiên cứu sinh, trợ giảng', NULL),
(61, 19, '7/2008 - 3/2010', 'Khoa Điện - Điện tử, ĐH Sư phạm Kỹ thuật TP.HCM', 'Trưởng bộ môn', NULL),
(62, 19, '8/2009-3/2011', 'ĐH Sư phạm Kỹ thuật TP.HCM', 'Phó Khoa, Giám đốc TT Hợp tác Đào tạo Quốc tế', NULL),
(63, 19, '34/2011- nay', 'ĐH Sư phạm Kỹ thuật TP.HCM', 'Trưởng Phòng QLKH-QHQT, hiện nay là Phó hiệu Trưởng phụ trách KHCN, QHQT, Đảm bảo chất lượng (từ 8/2', NULL),
(64, 20, '2001-2014', 'Trường Cao Đẳng Y tế Bình Định', 'giáo viên', NULL),
(65, 20, '2014-2015', 'Trường Cao Đẳng Y tế Bình Định', 'Phó trưởng phòng Đào Tạo', NULL),
(66, 21, '2001 - 2004', 'Khoa Ngoai ngu - HUFLIT', 'Giang vien ', NULL),
(67, 21, '2006 - 2015', 'Khoa QHQT - HUFLIT', 'Truong bo mon, Pho truong khoa', NULL),
(68, 22, '1999 - 2004', 'Trường THPT An Thới, Mỏ Cày, bến Tre', 'Giáo viên', NULL),
(69, 22, '2004 - 2005', 'Trường đại học Lạc Hồng', 'Giảng viên', NULL),
(70, 22, '2005 - 2009', 'Trung Tâm KT&ĐGCLĐT, ĐHQG-HCM', 'Nghiên cứu viên, Trưởng phòng ĐBCL', NULL),
(71, 22, '2010 - 2014', 'Trung Tâm KT&ĐGCLĐT, ĐHQG-HCM', 'Phó Giám đốc', NULL),
(72, 22, '08/2014 - nay', 'Trung tâm Kiểm định chất lượng giáo dục, ĐHQG-HCM, Trường ĐH KHXH&NV', 'Phó Giám đốc, Giảng viên', NULL),
(73, 23, '1988-2015', 'ĐHSP Tp. HCM', 'GV', NULL),
(74, 24, '1981-1986', 'Trường ĐH Tổng hợp Tp. HCM', 'Giảng viên', NULL),
(75, 24, '1986-1991', 'Trường ĐH Tổng hợp Belorusia', 'NCS', NULL),
(76, 24, '1991-1993', 'Trường ĐH Tổng hợp Tp. HCM', 'Giảng viên', NULL),
(77, 24, '1993-1996', 'Trường ĐH Tổng hợp Tp. HCM', 'Phó phòng Đào tạo, Trường phòng Sau đại học', NULL),
(78, 24, '1996-nay', 'ĐHQG-HCM', 'Phó Trưởng Ban SĐH, Trưởng Ban SĐH, Trưởng Ban ĐH và SĐH, Phó Giám đốc ĐHQG-HCM', NULL),
(79, 25, '2000 - nay', 'Đại học Bách Khoa ', 'Giảng viên', NULL),
(80, 25, '2012 - 2012', 'Đại học Bách Khoa', 'Phó trưởng ban ĐBCL', NULL),
(81, 25, '2013 - nay', 'Đại học Bách Khoa ', 'Trưởng ban ĐBCL', NULL),
(82, 26, '1994-1998', 'Trường ĐH Tổng hợp -TPHCM', 'Học đại học', NULL),
(83, 26, '1998-2005', 'Trường ĐHKHXH&NV-ĐHQG-HCM', 'Giảng viên/ kiêm nhiệm giáo vụ/Thư ký, Khoa Ngữ văn Anh; Học cao học', NULL),
(84, 26, '9/2005-10/2008', 'Trường ĐHKHXH&NV-ĐHQG-HCM', 'Nghiên cứu sinh tại De La Salle University-Manila/ Học giả Chương trình học bổng của United Board (U', NULL),
(85, 26, '12/2008-12/2012', 'Trường ĐHKHXH&NV-ĐHQG-HCM', 'Phó Trưởng Khoa/GV, Khoa Ngữ văn Anh', NULL),
(86, 26, '1/2013-nay', 'Trường ĐHKHXH&NV-ĐHQG-HCM', 'Trưởng Khoa/GV, Khoa Ngữ văn Anh', NULL),
(87, 27, '1983 - 1995', 'Xí nghiệp dệt 6 thuộc Sở Công nghiệp Tp HCM', 'Chuyên viên quản lý thiết bị cơ điện ', NULL),
(88, 27, '1996 - 2006', 'Phòng máy vi tính và phòng Đào tạo trường Đại học Công nghệ Tp HCM', 'Chuyên viên ', NULL),
(89, 27, '2006 - 2007', 'Trung tâm Khảo thí và Kiểm định chất lượng trường Đại học Công nghệ Tp HCM', 'Phó Trưởng Trung tâm', NULL),
(90, 27, '2007 - 2008', 'Trung tâm Đào tạo hệ Vừa làm vừa học trường Đại học Công nghệ Tp HCM', 'Phó Giám đốc Trung tâm', NULL),
(91, 27, '2008 - 2015', 'Phòng Khảo thí - Đảm bảo chất lượng trường Đại học Công nghệ Tp HCM', 'Chuyên viên ', NULL),
(92, 28, '2001-2013', 'ĐH Khoa học Tự nhiên Tp.HCM', 'Giảng viên', NULL),
(93, 28, '2/2013 đến nay', 'ĐH Khoa học Tự nhiên Tp.HCM', 'Phó trưởng khoa', NULL),
(94, 28, '4/2013 đến nay', 'ĐH Khoa học Tự nhiên Tp.HCM', 'Trưởng bộ môn', NULL),
(95, 29, '12/2000 đến 28/02/2013', 'Trường Đại học Công nghệ Sài Gòn', 'Chuyên viên phòng Đào tạo; Tổ trưởng tổ QLDL', NULL),
(96, 29, '01/03/2013 cho đến nay', 'Trường Đại học Công nghệ Sài Gòn', 'Phó Trưởng phòng Đào tạo', NULL),
(97, 30, '9/2002 - 5/2008', 'Trường kỹ thuật nghiệp vụ Tôn Đức Thắng', 'Giáo viên', NULL),
(98, 30, '6/2008 - Nay', 'Trường Đại học Công nghệ Sài Gòn', 'Giảng viên', NULL),
(99, 31, '10/2003-11/2006', 'Tổ Công nghệ thông tin, Trường Đại học Quy Nhơn', 'Chuyên viên', NULL),
(100, 31, '11/2006-9/2008', 'Trung tâm Khảo thí và Đảm bảo chất lượng, Trường Đại học Quy Nhơn', 'Chuyên viên', NULL),
(101, 31, '9/2008-9/2009', 'Phòng Đào tạo đại học và Sau đại học, Trường Đại học Quy Nhơn', 'Chuyên viên', NULL),
(102, 31, '9/2009-đến nay', 'Phòng Khảo thí và Đảm bảo chất lượng, Trường Đại học Quy Nhơn', 'Chuyên viên', NULL),
(103, 32, '2009-2012', 'Trường ĐH CNTT- ĐHQGHCM', 'Phòng ĐT-Thư viện', NULL),
(104, 32, '2012-nay', 'Trường CB QLGD Tp.HCM', 'Giảng viên', NULL),
(105, 33, '1982- 1989', 'Châu thành- Tiền giang', 'Giáo viên trung học', NULL),
(106, 33, '1989- 2005', 'Quận 3- TPHCM', 'Giáo viên trung học', NULL),
(107, 33, '2004- 2010', 'HUFLIT- Q10- TPHCM', 'Giảng viên- Trưởng Chi nhánh TT Ngoại ngữ', NULL),
(108, 33, '2010- 2011', 'HUFLIT- Q10- TPHCM', 'Chuyên viên- Ban ĐBCL', NULL),
(109, 33, '2011- 2014', 'HUFLIT- Q10- TPHCM', 'Phó trưởng ban ĐBCL', NULL),
(110, 34, '2003-2011', 'Đại học Giao Thông Vận Tải', 'Giảng Viên', NULL),
(111, 34, '2011-2013', 'Nanyang Technological University Singapore', 'Nghiên cứu Viên', NULL),
(112, 34, '2014-2015', 'Đại học Thủ Dầu Một, Bình Dương', 'Giảng Viên', NULL),
(113, 35, '9/2004- 08/2011', 'TRƯỜNG ĐẠI HỌC LẠC HỒNG', 'Giảng viên đại học', NULL),
(114, 35, '09/2011- 06/2014', 'National Kaohsiung University of Applied Sciences', 'Nghiên cứu sinh', NULL),
(115, 35, '07/2014 - nay', 'TRƯỜNG ĐẠI HỌC LẠC HỒNG', 'Giảng viên sau đại học', NULL),
(116, 36, '09/2001 ~ 07/2008', 'Khoa Khoa học cơ bản Trường Trung học Kỹ thuật Nghiệp vụ Nam Sài Gòn Quận 8, TPHCM.', 'Giáo viên', NULL),
(117, 36, '08/2008 ~ 08/2010', 'Khoa Ngoại ngữ Trường Cao đẳng Công nghệ Thủ Đức.', 'Giảng viên ', NULL),
(118, 36, '09/2010 ~22/11/2011', 'Phòng Hợp tác quốc tế và Quan hệ Doanh nghiệp, Trường Cao đẳng Công nghệ Thủ Đức.', 'Phó Trưởng phòng', NULL),
(119, 36, '23/11/2011 đến nay', 'Giảng viên Khoa tiếng Anh  Trường Cao đẳng Công nghệ Thủ Đức', 'Giảng viên ', NULL),
(120, 37, '4/1994 - 8/1996', 'Trường Đại học Sư phạm Kỹ thuật', 'Giảng viên ', NULL),
(121, 37, '9/1996 - 12/1998', 'Trường Đại học Đại cương TP.HCM', 'Giảng viên ', NULL),
(122, 37, '01/1999 - 12/2001', 'Trường Đại học KHTN TP.HCM-Đại học Sư phạm Kỹ thuật', 'Giảng viên ', NULL),
(123, 37, '10/2002 - 9/2013', 'Trường Đại học Tôn Đức Thắng', 'Trưởng BM-Phó trưởng phòng CTCT-HSSV', NULL),
(124, 37, '10/2013 - nay', 'Trường Đại học Thủ Dầu Một', 'Giảng viên Khoa Sư Phạm', NULL),
(125, 38, '1994-2001', 'Khoa KH&KT Máy tính, Trường ĐH Bách khoa ', 'Giảng viên', NULL),
(126, 38, '2001-2005', 'University of New South Wales, Australia', 'Nghiên cứu sinh', NULL),
(127, 38, '2006-2007', 'Khoa KH&KT Máy tính, Trường ĐH Bách khoa ', 'Giảng viên', NULL),
(128, 38, '2007-2012', 'Khoa KH&KT Máy tính, Trường ĐH Bách khoa ', 'Phó Khoa', NULL),
(129, 38, '2012-nay', 'Khoa KH&KT Máy tính, Trường ĐH Bách khoa ', 'Giảng viên', NULL),
(130, 39, 'Từ 2006 - nay', 'Ban Đảm bảo chất lượng - Trường ĐHBK TP.HCM', 'Hiện nay: Phó trưởng ban', NULL),
(131, 40, '1984-1998', 'Trường Đại học Nha Trang', 'Giảng viên', NULL),
(132, 40, '1999-2002', 'Trường Đại học Nha Trang', 'Trưởng Bộ môn Tin học', NULL),
(133, 40, '2003-2006', 'Trường Đại học Nha Trang', 'Phó trưởng khoa CNTT', NULL),
(134, 40, '2006-2010', 'Trường Đại học Nha Trang', 'Trưởng khoa CNTT', NULL),
(135, 40, '2010-nay', 'Trường ĐH Công nghệ thông tin - ĐHQG-HCM', 'Trường khoa Hệ thống thông tin', NULL),
(136, 41, '2002-2004', 'Khoa Ngữ Văn Anh, ĐH KHXH&NV', 'Thỉnh giảng', NULL),
(137, 41, '2004-2005', 'Trung tâm tư liệu châu Âu, ĐH KHXH&NV', 'Nhân viên thông tin', NULL),
(138, 41, '2006-2012', 'Khoa Quan hệ Quốc tế, ĐH KHXH&NV', 'Phó trưởng khoa', NULL),
(139, 41, '2012-nay', 'Phòng Hành Chính - Tổng hợp, ĐH KHXH&NV', 'Trưởng phòng', NULL),
(140, 42, '1996-2003', 'Khoa Đông Phương HUFLIT', 'Giảng viên, Trợ lý Khoa', NULL),
(141, 42, '6/2003 -3/2013', 'Khoa Đông Phương HUFLIT', 'Trưởng Bộ môn chuyên ngành ĐP học, Phó trưởng Khoa', NULL),
(142, 42, '4/2013-12/2013', 'Trường HUFLIT', 'Trưởng Bộ môn chuyên ngành ĐP học, Trợ lý Hiệu trưởng', NULL),
(143, 42, '1/2014-nay', 'Trường HUFLIT', 'Phó Hiệu trưởng Đào tạo, Trưởng bộ môn chuyên ngành ĐP học', NULL),
(144, 43, '9/1991 - 2/2003', 'Trường Trung học KT-NV Phú Lâm', 'Giáo viên', NULL),
(145, 43, '3/2003 - 9/2008', 'Trường Trung học KT-NV Phú Lâm', 'Phó Khoa CNTT', NULL),
(146, 43, '10/2008 - 7/2011', 'Trường Cao đẳng KT-NV Phú Lâm', 'Phó Khoa CNTT', NULL),
(147, 43, '8/2011 - 6/2015', 'Trường Cao đẳng KT-NV Phú Lâm (TP.HCM)', 'Trưởng phòng KT-ĐBCL', NULL),
(148, 43, '7/2015 - nay', 'Trường Cao đẳng KT-NV Phú Lâm (TP.HCM)', 'Trưởng khoa CNTT', NULL),
(149, 44, '2001-2008', 'Trường Cao đẳng kỹ thuật Lý Tự Trọng', 'Giảng viên', NULL),
(150, 44, '2008-2010', 'Trường Đại học Kỹ thuật CN Hutech', 'Giảng viên', NULL),
(151, 44, '2010-nay', 'Trường Đại học Tài chính - Marketing', 'Chuyên viên ĐBCL', NULL),
(152, 45, '5/2014', 'ĐH Tài nguyên và Môi trường TP.HCM', 'Chuyên viên', NULL),
(153, 61, '2008-nay', 'ĐH CNTT', 'Trưởng phòng', NULL),
(154, 65, '1999 đến 2005', 'Trường Đại học Công nghệ TPHCM', 'Giảng viên', NULL),
(155, 65, '2005 - 2008', 'Trường Đại học Quốc gia PUKYONG', 'Nghiên cứu sinh', NULL),
(156, 65, '2008 - 2012', 'Trường Đại học Công nghệ TPHCM', 'Phó trưởng khoa', NULL),
(157, 65, '2012 - 2014', 'Trường Đại học Công nghệ TPHCM', 'Trưởng khoa', NULL),
(158, 65, '2014 - 2015', 'Trường Đại học Công nghệ TPHCM', 'Phó trưởng Phòng QLKH&ĐT SĐH', NULL),
(159, 65, '2015 đến nay', 'Trường Đại học Công nghệ TPHCM', 'Trưởng khoa', NULL),
(160, 66, '37,5 năm', 'Trường Đại học Bách khoa - ĐHQG HCM', 'Phó hiệu trưởng đào tạo', NULL),
(161, 67, '1999', 'Trường ĐHKHTN', 'Nghiên cứu viên', NULL),
(162, 67, '2003', 'Trường ĐHKHTN', 'Giảng viên', NULL),
(163, 67, '2004-2008', 'Trường ĐH Sungkuynkwan', 'Nghiên cứu sinh', NULL),
(164, 67, '2008 - nay', 'Trường ĐHKHTN', 'Giảng viên, Phó Trưởng khoa', NULL),
(165, 63, '1995 - nay', 'Khoa Kỹ thuật Địa chất và Dầu khí, trường Đại học Bách Khoa TPHCM', 'Trợ lý giáo vụ', NULL),
(166, 73, '1994 - 1995', 'Khoa Cơ khí Nông nghiệp - Đại học Cần Thơ', 'Giảng viên', NULL),
(167, 73, '1995 - 2012', 'Khoa Công nghệ - Đại học Cần Thơ', 'Giảng viên', NULL),
(168, 73, '2012 - 2014', 'Khoa Công nghệ - Đại học Cần Thơ', 'Trưởng Bộ môn KT Cơ khí, Phó Trưởng Khoa ', NULL),
(169, 73, '2014 - 2016', 'Khoa Công nghệ - Đại học Cần Thơ', 'Phó Trưởng Khoa', NULL),
(170, 124, '2003-2016', 'Trường Đại học Bách khoa - ĐHQG HCM', 'Chuyên viên', NULL),
(171, 130, '1996-2000', 'Trường ĐHKHXH&NV, ĐHQG-HCM', 'GV thỉnh giảng', NULL),
(172, 130, '2004-2010', 'Trường ĐHKHXH&NV, ĐHQG-HCM', 'Giảng viên cơ hữu', NULL),
(173, 130, '2011-2012', 'Trường ĐHKHXH&NV, ĐHQG-HCM', 'Phó Trưởng Phòng KT&ĐBCL', NULL),
(174, 130, '2012-nay', 'Trường ĐHKHXH&NV, ĐHQG-HCM', 'Trưởng Phòng KT&ĐBCL', NULL),
(175, 133, '2008 - nay', 'Viện Môi trường và Tài nguyên', 'Q.trưởng phòng', NULL),
(176, 137, '1/1999~đến nay', 'Bộ môn Kỹ thuật Hàng không, Đại học Bách Khoa TpHCM', 'Trưởng Bộ môn', NULL),
(177, 138, '01/2016 - nay', 'Trường CĐ Kinh tế TP.HCM', 'Chuyên viên', NULL),
(178, 138, '03/2007-05/2014', 'Công ty Công nghệ Môi trường Việt Nam Xanh', 'Chuyên viên', NULL),
(179, 138, '03/2006 - 03/2007', 'Công ty Nidec Copal', 'Chuyên viên', NULL),
(180, 117, '1994-nay', 'Khoa Răng Hàm Mặt, ĐHYD TP HCM', 'Giảng viên', NULL),
(181, 117, '2006', 'Khoa Răng Hàm Mặt, ĐHYD TP HCM', 'Giảng viên, Phó Ban Quản lý Đào tạo', NULL),
(182, 117, '2011', 'Khoa Răng Hàm Mặt, ĐHYD TP HCM', 'Giảng viên chính, Trưởng Ban ', NULL),
(183, 117, '2015', 'Khoa Răng Hàm Mặt, ĐHYD TP HCM', 'Giảng viên chính, Phó Trưởng khoa ', NULL),
(184, 131, 'Từ 09/12/2003 đến 05/9/2013', 'Phòng Quản lý Đào tạo, Trường Đại học ANND', 'Cán bộ', NULL),
(185, 131, 'Từ 06/9/2013 đến nay', 'Phòng Khảo thí và Đảm bảo chất lượng đào tạo, Trường Đại học ANND', 'Phó Tổ trưởng', NULL),
(186, 145, '2014- nay', 'Ban QHĐN - ĐHQG-HCM', 'Chuyên viên', NULL),
(187, 145, '2013-2014', 'Bệnh viện ĐH Y Dược Tp.HCM', 'Chuyên viên', NULL),
(188, 145, '2009-2011', 'Trung tâm Xúc tiến Thương mại Đầu tư Tp.HCM (ITPC)', 'Trưởng phòng Xúc tiến thương mại', NULL),
(189, 145, '2006-2009', 'Trung tâm Tiết kiệm năng lượng Tp.HCM - Sở KHCN', 'Phó giám đốc', NULL),
(190, 145, '1995-2004', 'Công ty Cổ phần may Hữu Nghị', 'Phó phòng kế hoạch XNK', NULL),
(191, 146, '1993-2002', 'Phòng Kỹ thuật Công ty Dây và Cáp điện Việt Nam', 'Cán bộ Kỹ thuật', NULL),
(192, 146, '2002-2016', 'Trường Đại học Bách khoa - ĐHQG-HCM', 'Phó Trường Khoa kiêm Chủ nhiệm Bộ môn', NULL),
(193, 149, '1997-nay', 'ĐHKHXH&NV-ĐHQG-HCM', 'chuyên viên', NULL),
(194, 69, '9/2003 - Nay', 'Khoa Sinh học - Công nghệ Sinh học, Trường ĐH Khoa học Tự nhiên - ĐHQGHCM', 'Giảng viên', NULL),
(195, 69, '9/2007 - Nay', 'Trung tâm Nghiên cứu Cải tiến Phương pháp Dạy và học Đại học', 'Giảng viên', NULL),
(196, 69, '12/2012 - Nay', 'Trưởng phòng Thanh tra Pháp chế Sở hữu trí tuệ, Trường ĐH Khoa học Tự nhiên - ĐHQGHCM', 'Trưởng phòng', NULL),
(197, 69, '12/2012 - Nay', 'Hội Đồng Khoa học & Đào tạo, Trường ĐH Khoa học Tự nhiên, ĐHQG-HCM', 'Ủy viên', NULL),
(198, 69, '01/2013- Nay', 'Chương trình đào tạo theo chuẩn CDIO, Trường ĐH Khoa học Tự nhiên', 'Tổ trưởng Tổ giám sát', NULL),
(199, 69, '04/2013 - Nay', 'Ban điều hành Đề án Chương trình Đào tạo Cử nhân Tài Năng giai đoạn 2013 - 2017, Trường ĐH Khoa học ', 'Ủy viên', NULL),
(200, 69, '7/2013 - Nay', 'Chương trình CDIO, Khoa Sinh học - CNSH, Trường ĐH KHTN, ĐHQGHCM', 'Cố vấn', NULL),
(201, 69, '2013 - Nay', 'Nhóm công tác chuyên trách tự đánh giá, Trường ĐH KHTN, ĐHQGHCM', 'Thành viên', NULL),
(202, 129, '5/2014 đến nay', 'Phòng Đào tạo', 'Phó trưởng phòng', NULL),
(203, 129, '2/2013 đến 5/2014', 'Khoa Công Nghệ', 'Chủ tịch Hội đồng khoa', NULL),
(204, 129, '3/2008 đến 2/2013', 'Khoa Công Nghệ', 'Phó trưởng bộ môn, giảng viên chính', NULL),
(205, 129, '2/1997 đến 2/2008', 'Khoa Công nghệ thông tin', 'Giảng viên', NULL),
(206, 159, '2002-2004', 'Khoa Ngữ văn Anh, ĐH KHXH&NV', 'Giảng viên thỉnh giảng', NULL),
(207, 159, '2004-2005', 'Trung tâm Tư liệu châu Âu, ĐH KHXH&NV', 'Cán bộ thông tin', NULL),
(208, 159, '2006-2007', 'Bộ môn Quan hệ Quốc tế, ĐH KHXH&NV', 'Giảng viên', NULL),
(209, 159, '2007-2012', 'Khoa Quan hệ Quốc tế, ĐH KHXH&NV ', 'Phó Trưởng khoa', NULL),
(210, 159, '2012 - Nay ', 'Phòng Hành chính - Tổng hợp, ĐH KHXH&NV', 'Trưởng phòng', NULL),
(211, 119, '2000-2002', 'Công ty TNHH Điện tử Việt Tường', 'Nhân viên KTSX', NULL),
(212, 119, '2002-2011', 'Trường Trung cấp KTCN Đồng Nai', 'Tổ trưởng chuyên môn', NULL),
(213, 119, '2011-nay', 'Trường Đại học CNTT-ĐHQG HCM', 'Phụ trách phòng TTPC-ĐBCL', NULL),
(251, 163, '5', 'Trường THPT Dân lập Hữu Nghị, thành phố Vinh, Tỉnh Nghệ An', 'Giáo Viên', NULL),
(252, 163, '7', 'Trường Đại học Khoa Học Xã Hội và Nhân Văn tp HCM', 'Giảng viên', NULL),
(253, 155, '2005-2006', 'Trường NN và Tin học Mai Linh', 'Hiệu phó', NULL),
(254, 155, '2006-2011', 'PTN TĐ Quốc gia về VL Polymer', 'Trưởng phòng TN Cơ Lý', NULL),
(255, 155, '2011- nay', 'Khoa CNVL - ĐHBK Tp.HCM', 'CB Giảng dạy, Chủ tịch CĐ khoa, UV TV CĐ Trường', NULL),
(256, 155, '2015 - nay', 'Xưởng In - ĐHBK Tp.HCM', 'Giám đốc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thamgiadgn`
--

CREATE TABLE `thamgiadgn` (
  `Number` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `donvitochuc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donviduocdanhgia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vaitrotrongdoan` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tieuchuanduocphancong` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thamgiadgn`
--

INSERT INTO `thamgiadgn` (`Number`, `ID`, `donvitochuc`, `donviduocdanhgia`, `vaitrotrongdoan`, `tieuchuanduocphancong`) VALUES
(3, 47, '1', 'KTL', '1', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10'),
(4, 66, '1', 'Trường Đại học SPKT Thủ đức', '1', '1, 2'),
(5, 66, '1', 'Đại học Bách Khoa - ĐH Đà Nẵng', '1', '1, 2'),
(6, 66, '1', 'Đại học Kiến trức TpHCM', '1', '1, 2'),
(7, 66, '1', 'Đại học Giao thông vận tải TpHCM', '1', '1, 2'),
(8, 66, '3', 'Đại học công nghiệp TpHCM', '3', '9, 10'),
(9, 73, '3', 'Khoa Khoa học ứng dụng, ĐH Bách Khoa TPHCM', '3', '1, 2, 3, 4, 5'),
(10, 130, '3', 'Trường ĐH KT-L, ĐHQG-HCM (đánh giá ngoài nội bộ)', '3', '7, 8'),
(11, 12, '3', 'Đại học Kinh tế Luật- ĐHQGTp.HCM', '3', '9,10'),
(12, 12, '3', 'Đại học Bách Khoa, ĐHQG Tp.HCM', '5', ''),
(13, 12, '2', 'ĐH Quốc Tế, ĐHQG Tp.HCM', '5', ''),
(34, 46, '1', '18', '1', '1'),
(35, 46, '2', '19', '2', '2'),
(36, 46, '2', 'm', '4', '1,2,3'),
(37, 151, '2', 's', '2', '1, 2, 3, 4, 5'),
(39, 151, '2', 's', '1', '1, 2, 3, 4, 5'),
(40, 154, '1', 'j', '1', '1, 2, 3, 4, 5'),
(41, 154, '2', 'k', '5', '6, 7, 8, 9, 10'),
(42, 156, '1', 'Trường ĐH Kinh tế, ĐH Đà Nẵng', '3', '7, 8'),
(43, 156, '1', 'Trường ĐH Hải sản Nha Trang', '2', '2, 5'),
(44, 156, '3', 'Trường ĐH KHXH&NV - ĐHQG Hà Nội', '2', '3, 4'),
(45, 156, '3', 'Trường ĐH Ngoại ngữ Hà Nội - ĐHQG Hà Nội', '2', '3, 4'),
(46, 66, '3', 'Trường Đại học Giáo dục VNU HN', '1', '1,5,10');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinchung`
--

CREATE TABLE `thongtinchung` (
  `ID` int(11) NOT NULL,
  `hovatendem` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` int(1) NOT NULL,
  `quequan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noicongtac` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `thamniencongtac` int(11) NOT NULL,
  `diachilienhe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoaicodinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoaididong` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `emaillienhe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hocham` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hocvi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cckdv` int(1) NOT NULL,
  `sochungchi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaycapcc` date DEFAULT NULL,
  `thekdv` int(1) NOT NULL,
  `sothekdv` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaycapthe` date DEFAULT NULL,
  `trinhdotinhoc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thamgiadgn` int(1) NOT NULL,
  `kinhnghiemvietbc` int(1) NOT NULL,
  `kinhnghiemkhac` longtext COLLATE utf8_unicode_ci,
  `linhvucchuyenmon` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thongtinchung`
--

INSERT INTO `thongtinchung` (`ID`, `hovatendem`, `ten`, `ngaysinh`, `gioitinh`, `quequan`, `noicongtac`, `thamniencongtac`, `diachilienhe`, `dienthoaicodinh`, `dienthoaididong`, `emaillienhe`, `fax`, `hocham`, `hocvi`, `cckdv`, `sochungchi`, `ngaycapcc`, `thekdv`, `sothekdv`, `ngaycapthe`, `trinhdotinhoc`, `thamgiadgn`, `kinhnghiemvietbc`, `kinhnghiemkhac`, `linhvucchuyenmon`) VALUES
(1, 'Lê Văn', 'Hảo', '1958-01-30', 1, 'Nha Trang', 'Trường Đại học Nha Trang', 34, 'Phòng ĐBCL&TT - Trường ĐH Nha Trang, 02 Nguyễn Đình Chiểu, Nha Trang', '058.3543428', '0905102855', 'haolevan@yahoo.com', '', 'GVC', 'TS', 1, 'KDV-VNU0068', '2014-09-03', 1, '2014.02.070', '2015-01-15', 'B', 1, 1, '1. Tham gia giảng tại một số lớp tập huấn về ĐBCL/KĐCL do Bộ, ĐHQG tổ chức.\r\n2. Thành viên Tổ công tác về ĐBCL của Bộ GD&ĐT (2010)', ''),
(2, 'Võ Quang Ngọc', 'Dung', '1959-11-23', 2, 'Hậu Giang', 'Trường Đại học Công nghệ TP.HCM', 8, '475A Điện Biên Phủ, Phường 25, Quận Bình Thạnh, TP.HCM (cơ quan) - 158/25 Huỳnh Mẫn Đạt, Phường 3, Quận 5, TP.HCM (Nhà riêng)', '08 3512 0783 (cơ quan)', '0934 483 999', 'vpn.dung@hutech.edu.vn, vqngocdung@gmail.com', '08 3512 0786 (cơ quan)', '', 'Thạc sĩ', 1, '0000028', '2014-04-07', 2, '', '0000-00-00', 'Chứng chỉ B', 2, 2, 'Tham gia Ban ISO và Nhóm AUN tại Trường HUTECH', ''),
(3, 'Huỳnh Khả', 'Tú', '1979-02-03', 2, 'Đồng Tháp', 'Trường Đại học Quốc Tế, ĐHQG Tp.HCM', 11, 'Khoa Công nghệ thông tin, Trường Đại học Quốc tế, ĐHQG Tp.HCM', '0837244270. Ext: 3232', '01234 49 59 69', 'hktu@hcmiu.edu.vn', '', 'Giảng viên', 'Thạc Sỹ', 1, '0000023', '2014-07-07', 1, '2014.1.050', '2014-10-20', 'Giảng viên, Phó Trưởng Khoa Công nghệ thông tin.', 2, 1, 'Viết báo cáo tự đánh giá cho chương trình đánh giá AUN của khoa Công nghệ thông tin năm 2009. Tham gia các khóa tập huấn về kiểm định của ĐHQG trong những năm gần đây. ', ''),
(4, 'Đinh Đức Anh', 'Vũ', '1972-10-08', 1, 'Phú Thọ', 'trường ĐH CNTT - ĐHQG-HCM', 21, '174/13 Đặng Văn Ngữ, P.14, Q. Phú Nhuận, TP.HCM', '', '0903945240', 'ddanhvu@gmail.com', '', 'PGS.', 'TS.', 1, 'KĐ-24', '2014-07-07', 1, '2014.1.055', '2014-10-20', 'Tiến sĩ', 1, 1, NULL, 'Máy tính và công nghệ thông tin'),
(5, 'Hoàng Thọ', 'Phú', '1971-08-12', 1, 'Nam Định', 'Trường Đại học Kinh tế - Luật', 15, '309/95 Võ Văn Ngân, Quận Thủ Đức, TP. Hồ Chí Minh', '', '0903846236', 'phuht@uel.edu.vn', '', '', 'Ths', 1, '', '0000-00-00', 1, '0000018', '2014-07-07', 'B', 1, 1, '', ''),
(6, 'Vương Lập', 'Bình', '1974-07-16', 1, 'thành phố Hồ Chí Minh', 'Trung tâm Chất lượng Quốc tế', 20, '86/9 Trần Hưng Đạo, P.7, Q.5, thành phố Hồ Chí Minh', '62610392', '0913113111', 'vuonglapbinh@gmail.com', '62610393', 'Giám đốc', 'Tiến sĩ', 1, '0000058', '2014-07-07', 1, '2014.1.012', '2014-10-20', 'Tin học văn phòng B', 1, 1, 'Trực tiếp đào tạo và tư vấn xây dựng, áp dụng hệ thống đảm bảo chất lượng kết hợp với bộ tiêu chuẩn kiểm định chất lượng giáo dục đại học với hơn 20 trường đại học và cao đẳng trên phạm vi cả nước.', ''),
(7, 'Đặng Trường', 'Sơn', '1966-09-01', 1, 'Thái Bình', 'Trường ĐH Sư Phạm Kỹ Thuật TP.HCM', 15, 'Phòng ĐBCL Trường ĐH Sư phạm Kỹ thuật TP.HCM, Số 1 Võ Văn Ngân, Thủ Đức, TP.HCM', '37221712', '0913968925', 'sondt@hcmute.edu.vn', '', 'Giảng viên', 'Tiến sĩ', 1, '', '0000-00-00', 2, '', '0000-00-00', 'Tiến sĩ Công nghệ thông tin', 2, 1, '', ''),
(8, 'Nguyễn Quốc', 'Vũ', '0000-00-00', 1, 'Đồng Tháp', 'Trường ĐH Đồng Tháp', 11, '776, Phạm Hữu Lầu, Phường 6, TP Cao Lãnh, tỉnh Đồng Tháp', '', '0919155678', 'nqvu@dthu.edu.vn', '', 'Giảng viên', 'Thạc sỹ', 1, '0000048', '0000-00-00', 2, '', '0000-00-00', 'B', 1, 1, '', ''),
(9, 'Bùi Lê Vĩ ', 'Chinh', '0000-00-00', 1, 'Quy Nhơn-Bình Định', 'Trường CĐ Y tế Bình Định', 14, '49 Ngô Thời Nhiệm -Quy Nhơn-Bình Định', '0563826049', '01687081749', 'doctorchinh@yahoo.com', '', 'Bác sỹ-Giảng viên', 'Thạc sỹ', 1, '0000063', '0000-00-00', 2, '', '0000-00-00', 'B', 2, 1, 'Hiện nay đang Trưởng ban chỉ đạo tự đánh giá ngoài của Trường CĐ Y tế Bình Định', ''),
(10, 'Trần Thị', 'Hồng', '1956-08-20', 2, 'Quảng Trị', 'ĐH Nguyễn Tất Thành', 34, '44/8 Phạm Viết Chánh, P. 19, Q. Bình Thạnh', '08 - 38400227', '0903657452', 'hongtt.vnuhcm@gmail.com', '', 'Phó Giáo sư', 'Tiến sĩ', 1, '0000009', '0000-00-00', 1, '2014.02.075', '0000-00-00', 'B', 1, 1, '', ''),
(11, 'Hà Thị Phương', 'Minh', '1967-05-01', 2, 'Bến Tre', 'Trường Đại học Công nghệ Sài Gòn', 10, '94 Nguyễn Văn Lạc - Phường 19 - Quận Bình Thạnh - TP.Hồ Chí Minh', '', '0908923622', '0dongsongtroi0@gmail.com', '', '', 'Thạc sĩ', 1, 'KĐ-35', '2014-07-07', 1, '2014.1.037', '2014-10-20', 'Cử nhân tin học', 2, 2, '- Thực hiện và tham gia đánh giá nội bộ hệ trung cấp chuyên nghiệp theo tiêu chuẩn ISO.\r\n- Thực hiện và tham gia đánh giá nội bộ cấp Khoa theo tiêu chuẩn ISO.', ''),
(12, 'Ngô Đại ', 'Nghiệp', '1975-10-10', 1, 'BẠC LI ÊU', 'Khoa Sinh học- Công nghệ Sinh học, Trường ĐHKHTN, Đại học Quốc Gia Tp.HCM', 17, '227 Nguyễn Văn Cừ, Phường 4, Quận 5, TpHCM', '84-8-38300560', '0908-283498', 'ndnghiep@hcmus.edu.vn, nghiep75@yahoo.com  ', '', 'Phó Giáo Sư', 'Tiến Sỹ', 1, '0000053', '2014-07-07', 2, '', '0000-00-00', 'B', 2, 1, NULL, 'Khoa học sự sống'),
(13, 'Nguyễn Hồng ', 'Sinh', '1968-01-16', 2, 'Đồng Tháp', 'Trường Đại học Khoa học Xã hội và Nhân văn', 15, '10-12 Đinh Tiên Hoàng, Phòng A 103', '', '0906876452', 'nhs1601@yahoo.com', '', 'Giảng viên', 'Tiến sĩ', 1, '0000054', '2014-07-07', 1, '2014.1.042', '2014-10-20', 'Tin học B', 2, 1, 'Chuyên trách công tác Đảm bảo và Kiểm định chất lượng giáo dục cho Khoa.', ''),
(14, 'Đinh Ái', 'Linh', '1972-05-24', 2, 'Vĩnh Phú', 'đại học quốc gia Tp HCM', 20, 'Trung tâm Khảo thí và Đánh giá chất lượng đạo tạo, Đại học Quốc Gia Tp HCM, Khu phố 6, Linh Trung, Thủ Đức, Tp HCM', '08-37242160  ext:1419 ', '0942705077', 'ailinh@vnuhcm.edu.vn', '08-37242162', 'Phó Giám đốc Trung tâm KT&ĐGCLĐT', 'Tiến sĩ', 1, 'KĐ-12', '2014-07-07', 1, '2014.1.035', '2014-10-29', 'Chứng chỉ B', 1, 2, '', ''),
(15, 'Đào Phong', 'Lâm', '1974-03-16', 1, 'kiên giang', 'Trung tâm Đảm bảo chất lượng, Trường Đại học Cần Thơ', 19, 'Tầng 3, Nhà Điều hành ĐH Cần Thơ', '', '0939000163', 'dplam@ctu.edu.vn', '', 'giảng viên', 'thạc sĩ', 1, '', '0000-00-00', 1, '', '0000-00-00', 'cấp độ B', 2, 1, '- phiên dịch cho các đoàn đánh giá AUN-QA tại Đại học Cần Thơ\r\n- quan sát viên đoàn đánh giá ngoài chương trình đào tạo Sư phạm vật lý tại Đại học Cần Thơ\r\n- tư vấn bộ tiêu chuẩn AUN-QA tại ĐH Cần Thơ và các cơ sở giáo dục cao đẳng và đại học tại Miền Tây và Đông Nam Bộ', ''),
(16, 'Nguyễn Trọng', 'Thể', '1972-04-24', 1, 'P. Thanh Bình - Q. Hải Châu - TP. Đà Nẵng', 'Trường Đại học Nông Lâm TP. HCM', 18, 'Trường Đại học Nông Lâm TP. HCM, KP. 6, P. Linh Trung, Q. Thủ Đức, TP. HCM', '08.37242528', '0918345717', 'trongthe@hcmuaf.edu.vn', '08.38960713', 'Trưởng Phòng Hành Chính (Nguyên Giám đốc Trung tâm', 'Thạc sĩ', 1, '0000044', '2014-07-07', 2, '', '0000-00-00', 'Trung cấp', 2, 1, '- Lập kế hoạch, triển khai các hoạt động đánh giá Trường Đại học Nông Lâm TP. HCM theo bộ tiêu chuẩn đánh giá chất lượng giáo dục trường đại học của Bộ GD&ĐT. Đã hoàn thành báo cáo tự đánh giá năm 2012.\r\n- Lập kế hoạch, triển khai các hoạt động đánh giá chương trình đạo tạo ngành Thú Y tại Trường Đại học Nông Lâm TP. HCM theo bộ tiêu chuẩn AUN, sẽ hoàn thành báo cáo tự đánh giá vào tháng 06/2015.', ''),
(17, 'Nguyễn Thanh', 'Thủy', '1960-10-27', 2, 'Cần Thơ', 'Trường ĐH Quốc tế, ĐHQG-HCM', 33, 'Trung tâm Quản lý Chất lượng giáo dục, Trường ĐH Quốc tế, KP6, P.Linh Trung, Q.Thủ Đức', '08.37244270 (ext: 3227)', '0918.041.560', 'thuyamsterdam@gmail.com', '', '', 'Tiến sĩ', 1, '0000056', '2014-07-07', 2, '', '0000-00-00', 'B', 1, 1, '   1. Tham gia công tác kiểm định theo Bộ tiêu chuẩn của Bộ GD&ĐT:\r\n       - Đánh giá viên của đoàn kiểm định trường Đại Học Nông Lâm Huế, năm 2008, do Bộ GD&ĐT tổ chức.\r\n       - Đánh giá viên của đoàn đánh giá nội bộ theo Bộ tiêu chuẩn kiểm định của Bộ GD&ĐT do ĐHQG-HCM tổ chức tại các trường:\r\n         + ĐH Khoa học Tự nhiên - ĐHQG-HCM, năm 2010, 2014.\r\n         + ĐH Khoa học Xã hội & Nhân văn - ĐHQG-HCM, năm 2010 và rà soát giữa kỳ năm 2012.\r\n         + Viện tài nguyên môi trường – ĐHQG-HCM, năm 2012.\r\n         + Rà soát giữa kỳ ĐH Bách Khoa ĐHQG - HCM, năm 2012.\r\n         + Rà soát giữa kỳ ĐH Kinh tế - Luật - ĐHQG-HCM, năm 2012.\r\n\r\n    2. Công tác AUN-QA:\r\n       - Chuyên gia tư vấn cho 03 chương trình tham gia đánh giá AUN của ĐHQG-HCM: Khoa học máy tính (ĐHQT), Điện tử Viễn Thông (ĐHBK) và CNTT (ĐH.KHTN), năm 2009.\r\n      - Đánh giá viên của đợt đánh giá nội bộ theo tiêu chuẩn AUN-QA do ĐHQG-HCM tổ chức:\r\n          + Chương trình Ngữ Văn Anh của ĐH.KHXH&NV, năm 2010 và rà soát năm 2012.\r\n         + Chương trình Báo chí Truyền thông của ĐH.KHXH&NV năm 2013.\r\n         + Chương trình Văn học và Ngôn ngữ của D0H.KHXH&NV năm 2013.\r\n         + Chương trình Quản trị kinh doanh của ĐH.KT-L (trưởng đoàn) năm 2014.\r\n      - Tổ chức tự đánh giá và kiểm định AUN chính thức các chương trình CNSH năm 2011, QTKD năm 2012, ĐTVT (AUN-DAAD) năm 2013. \r\n\r\n     3. Biên soạn tài liệu ĐBCL: Hỗ trợ TTKT& ĐGCLĐT – ĐHQG HCM biên soạn.\r\n       - Tài liệu Hướng dẫn đánh giá chất lượng cấp chương trình theo tiêu chuẩn AUN-QA.\r\n       - Sổ tay Hướng dẫn đánh giá chất lượng cấp chương trình theo tiêu chuẩn AUN-QA.\r\n        - Tham gia biên soạn chương trình đào tạo Kiểm định viên của ĐHQG-HCM.\r\n\r\n', ''),
(18, 'Nguyễn Văn', 'Dần', '1962-04-10', 1, 'Tp. HCM', 'Trường CĐ Công nghệ TĐ', 30, '53 Võ Văn Ngân, Q. Thủ Đức, TPHCM', '', '0903 770493', 'dan1962@gmail.com', '', 'Trưởng Phòng', 'Thạc sỹ', 1, '0000026', '2014-07-07', 1, '2014.1.014', '2014-10-20', 'Thạc sỹ', 2, 1, '', ''),
(19, 'Ngô Văn', 'Thuyên', '1976-10-10', 1, 'Mộ Đức - Quảng Ngãi', 'Đại học Sư phạm Kỹ thuật Tp. HCM', 16, '01 Võ Văn NGân, Q. Thủ Đức, TP.HCM', '37221223- 8903', '0935342223', 'thuyen.ngo@hcmute.edu.vn', '', 'Giảng Viên', 'Tiến sĩ', 1, '0000046', '2014-07-07', 1, '', '2014-10-20', 'B', 2, 1, 'Hoàn thiện hệ thống đảm bảo chất lượng bên trong của trường ĐH Sư phạm Kỹ thuật TP.HCM', ''),
(20, 'Lê Hà Phúc ', 'Thọ', '2015-06-03', 1, 'Bình Định', 'Trường Cao Đẳng Y tế Bình Định', 15, '130 Trần Hưng Đạo- Quy Nhơn- Bình Định', '', '0989295254', 'tho79bd@yahoo.com', '', 'giảng viên', 'Thạc sĩ', 1, '0000045', '2014-07-07', 2, '', '0000-00-00', 'B', 2, 2, '', ''),
(21, 'Ho Thuy ', 'Dung', '1980-06-26', 2, 'Thua Thien - Hue', 'Ngoai ngu-Tin hoc TPHCM', 13, '155 Su Van Hanh (nd) P13 Q10', '0838633879', '0908258132', 'd.ho@huflit.edu.vn', '', 'Pho Truong Khoa', 'Thac si', 1, 'KD-29', '2014-07-07', 2, '', '0000-00-00', 'B', 2, 1, 'Phu trach cong tac kiem dinh chat luong tai khoa, thanh vien To cong tac phu trach tieu chuan 3, 4, 6 cua Hoi dong tu danh gia Truong HUFLIT', ''),
(22, 'Nguyễn Thị Mỹ', 'Ngọc', '2015-04-16', 2, 'Thành phố Cần Thơ', 'Trường ĐHKHXH&NV', 10, 'Trung tâm Kiểm định chất lượng Giáo dục ĐHQG-HCM, Khu Công nghệ phần mềm, Khu phố 6, Phường Linh Trung, Quận Thủ Đức, Tp. HCM', '0837242160 Ext 4998', '0969374530', 'ntmngoc@vnuhcm.edu.vn', '08 62849199', 'Phó Giám đốc', 'ThS', 2, '', '0000-00-00', 1, '09_2014', '2015-04-17', 'B', 1, 1, '- Dịch Tài liệu Hướng dẫn Đánh giá chất lượng cấp CTĐT Theo tiêu chuẩn AUN-QA\r\n- Tham gia viết Cẩm nang ĐBCL ĐHQG-HCM\r\n- Tham gia xây dựng Chiến lược ĐBCL ĐHQG-HCM giai đoạn 2016 - 2020\r\n- Tham gia xây dựng Đề án Trung tâm KĐCLGD, ĐHQG-HCM.\r\n- Tham gia xây dựng CTĐT Kiểm định viên KĐCLGD, ĐHQG-HCM.', ''),
(23, 'Nguyễn Kim', 'Dung', '2015-04-10', 2, 'Tiền Giang', 'Viện NCGD, ĐHSP Tp. HCM', 27, '115 Hai Bà Trưng, Q. 1, Tp. HCM', '38277404', '0918088121', 'kimnguyen@ier.edu.vn', '', 'GVC', 'TS', 1, '', '0000-00-00', 1, '', '0000-00-00', 'Tốt', 1, 1, '', ''),
(24, 'Nguyễn Hội', 'Nghĩa', '1958-04-23', 1, 'Tp. Hồ Chí Minh', 'Đại học Quốc gia Tp. HCM', 34, 'Phòng 206, Nhà Điều hành, Khu phố 6, Phường Linh Trung, Quận Thủ Đức, thành phố Hồ Chí Minh', '37242184', '0903718360', 'nhnghia@vnuhcm.edu.vn', '', 'PGS', 'TS', 1, '', '0000-00-00', 1, '2014.0.002', '2014-10-17', 'B', 1, 1, '', ''),
(25, 'Lê Ngọc Quỳnh', 'Lam ', '1978-06-10', 2, 'Quảng Trị', 'Trường Đại học Bách Khoa', 14, '745/150/2 Quang Trung, Phường 12, Quận Gò Vấp', '(08)39870027', '0903686060', 'lnqlam@hcmut.edu.vn', '', '', 'Tiến Sĩ', 1, '0000050', '2014-07-07', 2, '', '0000-00-00', 'B', 1, 1, '- Xây dựng chương trình đào tạo theo CDIO\r\n- Đổi mới Phương pháp giảng dạy và đánh giá sinh viên\r\n\r\n \r\n', ''),
(26, 'Lê Hoàng', 'Dũng', '1977-08-25', 1, 'Long An', 'Trường ĐHKHXH&NV -ĐHQG-HCM', 17, 'P. A112, 10-12 Đinh Tiên Hoàng, P. Bến Nghé, Q.1, Tp.HCM', '38243328 (trường)', '0903870160', 'lehoangdungef@gmail.com', '', 'GV/ Trưởng Khoa', 'Tiến sĩ', 1, '0000002', '2014-07-07', 2, '', '0000-00-00', 'Tin học Ứng dụng (B)', 1, 1, '-Học tập và nghiên cứu về ĐBCL trong việc quản trị và vận hành hệ thống giáo dục (qua chương trình học Tiến sĩ và các khóa thực tập thực tế tại nước ngoài) \r\n-Giảng dạy về ĐBCL cho chương trình thạc sĩ ngành Quản lý giáo dục của Trường ĐHKHXH&NV\r\n-Lãnh đạo và phụ trách thực hiện công tác ĐBCL bên trong, chuẩn bị tất cả các khâu việc cho việc tiếp Đoàn ĐGN \r\n-Tư vấn & chia sẻ kinh nghiệm cho các khoa trong và ngoài trường về viết báo cáo TĐG, và về công tác ĐBCL (cấp CTĐT, theo bộ tiêu chuẩn AUN-QA)', ''),
(27, 'Huỳnh Tuyết', 'Nga', '1959-07-18', 2, 'Long An', 'Trường Đại học Công nghệ Tp HCM (Hutech)', 20, 'Số 32 đường 715 Tạ Quang Bửu P4, Q8, Tp HCM', '08 38523915', '0918271423', 'htngaktcn@gmail.com, ht.nga@hutech.edu.vn', '', 'Chuyên viên', 'Thạc sỹ', 1, 'KĐ-36', '2014-07-07', 2, '', '0000-00-00', 'Chứng chỉ tin học B, năm cấp: 2014, nơi cấp: Đại h', 2, 1, 'Tham dự Hội thảo “Kinh nghiệm áp dụng tiêu chuẩn đánh giá chất lượng chương trình đào tạo của AUN tại Việt Nam”, ngày 06/12/2014 tại Trường Đại học Kinh tế - Tài chính Tp. HCM.', ''),
(28, 'Huỳnh Văn', 'Tuấn', '1979-05-08', 1, 'Tiền Giang', 'ĐH Khoa học Tự nhiên', 14, 'Khoa Vật lý - Vật lý Kỹ thuật, ĐH KHTN, 227 Nguyễn Văn Cừ, P.4, Q. 5', '08 38304092', '0983304092', 'hvtuan@hcmus.edu.vn', '', '', 'Tiến sĩ', 1, '1', '2014-07-07', 2, '', '0000-00-00', 'B', 1, 1, '', ''),
(29, 'Hoàng Thị Thu', 'Nguyệt', '1978-11-14', 2, 'Hà Nội', 'Trường Đại học Công nghệ Sài Gòn', 15, 'Trường Đại học Công nghệ Sài Gòn (180 Cao Lỗ, phường 4, quận 8, Tp. HCM)', '', '0908684868', 'nguyet.hoangthithu@stu.edu.vn', '', 'Phó Trưởng phòng Đào tạo', 'Thạc sĩ', 1, '0000037', '2014-07-07', 2, '', '0000-00-00', 'Cử nhân', 2, 2, '', ''),
(30, 'Đinh Thị', 'Tâm', '1980-12-29', 2, 'Quảng Nam', 'Đại học Công nghệ Sài gòn', 13, '55/4A khu phố 4 phường Tân Thới Hiệp Quận 12 Tp.HCM', '', '0938224968', 'tam.dinhthi@stu.edu.vn', '', 'Giảng viên', 'Thạc sỹ', 1, '0000042', '2014-07-07', 2, '', '0000-00-00', 'Thạc sỹ', 2, 2, '', ''),
(31, 'Nguyễn Thị Khánh', 'Linh', '1980-10-07', 2, 'Phù Mỹ, Bình Định', 'Phòng Khảo thí và Đảm bảo chất lượng, Trường Đại học Quy Nhơn', 12, '124 Diên Hồng, TP. Quy Nhơn, tỉnh Bình Định', '056.3522224', '0983222452', 'nguyenkhanhlinhqnu@gmail.com', '', '', 'Thạc sĩ', 1, '0000061', '2014-11-14', 2, '', '0000-00-00', 'Đại học', 2, 1, '- Tự đánh giá\r\n- Khảo sát YKPH của SV online.', ''),
(32, 'Phạm Đào', 'Tiên', '1971-01-01', 1, 'Bình Định', 'Trường CB QLGD TP.HCM', 16, '45/7/10 Nguyễn Văn Lạc. P.21, Q. Bình Thạnh, Tp.HCM', '08.083408156', '0903667127', 'tienphd@yahoo.com', '', 'Giảng viên', 'Thạc sỹ', 1, '0000073', '2015-04-09', 2, '', '0000-00-00', 'Đại học', 2, 2, '', ''),
(33, 'Phạm thúy Hương', 'Triêu', '1961-11-26', 2, 'Tiền Giang', 'HUFLIT', 33, '451/ 18 C Phạm Thế Hiển P3 Q8', '38 68 22 47', '090 393 6468', 'huongtrieu61@yahoo.com', '', 'Phụ trách Ban ĐBCL & TTGD', 'Thạc sĩ', 1, '', '0000-00-00', 2, '', '0000-00-00', 'B', 1, 1, '', ''),
(34, 'Nguyễn Tiến', 'Dũng', '1980-01-18', 1, 'Bình Định', 'Đại học Thủ Dầu Một, Bình Dương', 12, '113/24/23 Tổ 8 Khu 6 Phường Phú Hòa, Tp. THủ Dầu Một, Bình Dương', '', '01204566208', 'ntdz.nguyen@gmail.com', '', '', 'Thạc Sĩ', 1, '0000066', '2015-04-09', 2, '', '0000-00-00', 'Kỹ Thuật Viên Tin Học', 2, 1, '1. Tham gia tổ thư ký CDIO của Trường Đại học Thủ Dầu Một, Bình Dương.\r\n2. Xây dựng chương trình đào tạo theo CDIO.\r\n3. Xây dựng Đề Cương Môn Học theo CDIO.', ''),
(35, 'Nguyễn Thanh', 'Lâm', '1980-02-04', 1, 'Tiền Giang', 'Trường Đại học Lạc Hồng', 11, '10 Huỳnh Văn Nghệ, Bửu Long, Biên Hòa, Đồng Nai', '', '01695038389', 'green4rest.vn@gmail.com', '', 'Giảng viên', 'Tiến sĩ', 1, '0000067', '2015-04-09', 2, '', '0000-00-00', 'B', 2, 1, 'Hiện đang hỗ trợ Phòng Khảo thí & Đảm bảo chất lượng - Trường ĐH Lạc Hồng.\r\nĐã có đăng một số công trình nghiên cứu liên quan như:\r\n(1) T.L. Nguyen, T.H. Lam, M.H. Shu, and V.Q. Nguyen, Expected attributes of lecturer’s quality from student’s perspective - An empirical case of Lac Hong University, Higher Education Evaluation and Development (HEED), 8 (2), 31-52, 2014.\r\n\r\n(2) T.L. Nguyen, T.H. Lam, M.H. Shu, and V.Q. Nguyen, Measuring lecturer’s quality based on students’ evaluation- An empirical case of Lac Hong University, Proceedings of APQN- Asia-Pacific Quality Network Conference and Annual General Meeting 2014, Hanoi – Vietnam, March 7-8, 2014.\r\n\r\n(3) TS. Đỗ Hữu Tài, TS. Nguyễn Thanh Lâm, TS. Diệp Cẩm Thu, Đảm bảo chất lƣợng giáo dục Đại học trong giai đoạn Việt Nam hội nhập Cộng đồng Kinh tế ASEAN, Bản tin Trung tâm Khảo thí & Đánh giá chất lượng đào tạo - ĐHQGHCM - Số 20/2014.', ''),
(36, 'Đỗ Thị ', 'Dung', '1978-10-21', 2, 'Nam Định', 'Cao đẳng Công Nghệ Thủ Đức', 14, '53 Võ Văn Ngân Phường Linh Chiểu Quận Thủ Đức Tp.HCM', '', '0918675175', 'dungdo@mail.tdc.edu.vn', '', '', 'Thạc Sĩ', 1, '000065', '2015-04-09', 2, '', '0000-00-00', 'Trình độ B (hướng giáo dục), kỹ thuật viên tin học', 2, 1, 'Tôi đã tham gia dự án TF-SP-DOET từ năm 2009-2011 với vai trò biên phiên dịch, điều phối cấp trường. Đây là dự án hợp tác giữa Sở Giáo dục và Đào tạo thành phố Hồ Chí Minh (DOET) với trường  Singapore Polytechnic (SP) và Temasek Foundation (TF) – Singapore. Mục đích của dự án là nâng cao năng lực quản lý giáo dục và chuyển giao công nghệ đào tạo hai ngành Cơ điện tử, Công nghệ thông tin – Đa phương tiện với Hệ thống quản lý chất lượng đào tạo (AQMS) của Singapore. Những công việc chính của tôi trong dự án : \r\n- biên phiên dịch tài liệu dự án, đặc biệt tài liệu liên quan đến Hệ thống quản lý chất lượng đào tạo (AQMS)\r\n- phiên dịch trong các cuộc họp, báo cáo chuyên đề, hội thảo cấp trường và cấp ngành.\r\n- điều phối và triển khai các hoạt động giữa SP - DOET và trường Cao đẳng Công Nghệ Thủ Đức cùng 3 trường thành viên khác trong dự án.\r\n- hỗ trợ các khoa trong việc tổ chức hoạt động đào tạo, giao lưu sinh viên với SP, dịch báo cáo tự đánh giá từng học kỳ, năm học. ', ''),
(37, 'Nguyễn Đức', 'Thành', '1971-07-19', 1, 'Quảng Nam', 'Đại học Thủ Dầu Một', 21, '7/9A, đường 182, KP3, P.Tăng Nhơn Phú A, Q.9, TP.HCM', '083.7307.604', '0903624005', 'nguyenducthanh71@gmail.com', '', 'Giảng viên', 'Tiến Sĩ', 1, '0000072', '0000-00-00', 2, '', '0000-00-00', 'B', 2, 2, '', ''),
(38, 'Nguyễn Hứa', 'Phùng', '2015-05-18', 1, 'Thừa Thiên-Huế', 'Trường Đại học Bách Khoa', 21, 'Khoa Khoa học và Kỹ thuật Máy tính, Trường Đại học Bách khoa', '', '0985717680', 'nhphung@hcmut.edu.vn', '', '', 'Tiến Sĩ', 1, '0000071', '2015-04-09', 2, '', '0000-00-00', 'Tiến Sĩ', 2, 1, 'Phụ trách chuẩn bị kiểm định ABET tại Khoa KH&KT MT, Trường đại học Bách khoa', 'Khoa học giáo dục và đào tạo giáo viên'),
(39, 'Vưu Thị Thùy', 'Trang', '1983-02-10', 2, 'Cà Mau', 'Trường Đại học Bách Khoa TP.HCM', 9, '268 Lý Thường Kiệt, P.14, Q.10, TP.HCM', '', '0909.772840', 'vuutrang@hcmut.edu.vn', '', '', 'ThS', 1, '', '0000-00-00', 2, '', '0000-00-00', 'Sử dụng thành thạo MS Office', 1, 1, '', ''),
(40, 'Nguyễn Đình', 'Thuân', '1963-02-25', 1, 'Nha Trang', 'Trường Đại học Công nghệ thông tin - ĐHQG TP. Hồ Chí Minh', 30, '37A Hồ Bá Kiện, Phường 15, Quận 10, TP. Hồ Chí Minh', '08 39778758', '0905103758', 'thuannd@uit.edu.vn', '', 'Giảng viên chính', 'Tiến sĩ', 1, '0000075', '2015-04-09', 2, '', '0000-00-00', 'Thạc sĩ', 2, 1, '', ''),
(41, 'Bùi Hải', 'Đăng', '1979-08-25', 1, 'Thái Bình', 'Trường ĐH KHXH&NV Tp.HCM', 10, '134/1/3B CMT8, P.10, Q.3, Tp. HCM', '38293828', '0906986465', 'haidangbui@hcmussh.edu.vn', '38221903', 'Giảng viên', 'Tiến sỹ', 1, 'đang đợi cấp', '0000-00-00', 2, '', '0000-00-00', 'B ', 1, 1, '- Viết báo cáo tự đánh giá chương trình đào tạo, Khoa QHQT\r\n- Phụ trách tiêu chuẩn 1, 2 của Báo cáo tự đánh giá của Trường ĐH KHXH&NV', ''),
(42, 'Trần Thanh ', 'Nhàn', '0000-00-00', 2, 'Hà Nội', 'Đại học HUFLIT', 18, '155 Sư Vạn Hạnh (nối dài) P13, quận 10', '', '0903611397', 'thanhnhan@huflit.edu.vn', '', '', 'Tiến sĩ', 2, '', '0000-00-00', 2, '', '0000-00-00', 'Chứng chỉ B', 2, 1, '- Phó trưởng Ban ĐBCL và P. Chủ tịch Hội đồng tự đánh giá cấp trường\r\n- Kiêm nhiệm phụ trách công tác ĐBCL nhà trường\r\n- Viết báo cáo tự đánh giá tiêu chuẩn 3,4 ', ''),
(43, 'Lê Như', 'Dzi', '1976-09-21', 1, 'Long An', 'Truong Cao đẳng Kinh tế - Kỹ thuật TPHCM', 15, '161c/58 Lạc Long Quân, F3, Q11, TPHCM', '0838589724', '0918396177', 'lenhudzi@hotec.edu.vn', '', 'giang viên', 'thac sĩ', 1, '0000030', '2014-07-07', 1, '20141017', '2014-10-20', 'cu nhân', 2, 1, 'Công tác xây dựng và triển khai hệ thống ĐBCL bên trong tại trường CĐ KT - KT TPHCM\r\nCông tác triển khai tự đánh giá và đánh giá nội bộ Bộ tiêu chuẩn KĐCL trường Cao đẳng tại trường CĐ KT - KT TPHCM', ''),
(44, 'Lưu Khánh', 'Linh', '1978-09-25', 2, 'Bình Thuận', 'trường Đại học Tài chính - Marketing', 13, '306 Nguyễn Trọng Tuyển, phường 1, quận Tân Bình', '3997.4194', '0983.292.964', 'luukhanhlinh.ufm@gmail.com', '', 'Chuyên viên', 'Thạc sĩ', 1, '00068 (KĐ56)', '2014-04-09', 1, '2015.01.114', '2015-07-14', 'B', 1, 1, 'Đã tham gia một số buổi tập huấn và hội thảo:\r\n- Diễn đàn về các bên liên quan trong GDĐH định hướng nghề nghiệp ứng dụng tại Việt Nam (POHE) do Bộ Giáo dục và Đào tạo tổ chức tại Hà Nội\r\n- Bảo đảm chất lượng và kiểm định trong GD bậc ĐH, do SEAMEO tổ chức.\r\n- Tăng cường năng lực cho hệ thống ĐBCL của nhà trường, Dự án Giáo dục 2, Cụ Khảo thí - Kiểm định CLGD tổ chức.\r\n- Xây dựng bộ công cụ khảo sát lấy ý kiến các bên liên quan, Dự án Giáo dục 2, Cục Khảo thí - Kiểm định CLGD tổ chức.\r\n- Đảm bảo chất lượng trong GDĐH Úc - Việt Nam, ĐHQG TPHCM tổ chức. \r\n- Đảm bảo chất lượng trong GDĐH: vai trò của lãnh đạo, mối quan hệ giữa ĐBCL bên trong và ĐBCL bên ngoài, ĐHQG TPHCM tổ chức.\r\n- Đảm bảo chất lượng và kiểm định chất lượng giáo dục: con đường hội nhấp quốc tế, ĐHQG TPHCM tổ chức.\r\n- Xây dựng CTĐT đáp ứng chuẩn đầu ra, trường ĐH Tài chính - Marketing tổ chức.\r\n- Phương pháp giảng dạy bộ đề thi, kiểm tra, ĐH KHTN, trung tâm CEE.\r\n- Tiêu chuẩn nghề, kiêm tra đánh giá và cấp văn bằng chứng chỉ, Viện chiến lược và chương trình giáo dục tổ chức.\r\nKinh nghiệm trong công tác hiện tại\r\n- Triển khai báo cáo tự đánh giá trường ĐH\r\n- Lập kế hoạch, theo dõi kế hoạch cải tiến CLGD các đơn vị thuộc trường\r\n- Lưu giữ bộ hồ sơ minh chứng\r\n- Triển khai rà soát, phát triển CTĐT\r\n- Triển khai xây dựng ngân hàng đề thi\r\n- Khảo sát các bên liên quan\r\n- Rà soát chuẩn đầu ra và các điều kiện ĐBCL dạy và học đáp ứng chuẩn đầu ra\r\n- Rà soát tình hình giáo trình, tài liệu học tập\r\n- Thực hiện, theo dõi 3 công khai tại đơn vị\r\n- Triển khai thí điểm tự đánh giá CTĐT theo tiêu chuẩn AUN tại khoa Marketing và QTKD\r\n- Báo cáo Bộ GDĐT và các cơ quan cấp trên về tình hình đảm bảo chất lượng của trường\r\n....', ''),
(45, 'Nguyễn Vũ Quế', 'Linh', '1991-08-16', 2, 'Khánh Hòa', 'ĐH Tài nguyên và Môi trường TP. HCM', 2, '236B Lê Văn Sỹ, P.1, Q.Tân Bình, TP. HCM', '08.38443006', '01265260406', 'nvqlinh@hcmunre.edu.vn', '08.38449474', '', 'Cử nhân', 2, '', '0000-00-00', 2, '', '0000-00-00', 'B', 2, 2, '', ''),
(47, 'Thân Đoàn Đăng', 'Khoa', '1991-04-11', 1, 'Huế', 'TTKĐ', 10, 'Khu dân cư Tân Hải Minh, P. Linh Tây', '', '0933445516', 'tddkhoa@vnuhcm.edu.vn', '', 'Giáo sư', 'Tiến sĩ', 2, '', '0000-00-00', 1, '123456789', '2006-02-09', 'B', 1, 1, 'abcxyxz', 'Công nghệ kỹ thuật'),
(61, 'Dương Ngọc', 'Hảo', '1974-12-21', 1, 'Hưng Yên', 'ĐHQG-HCM', 20, 'Ban pháp chế, VNU-HCM', '', '0974972092', 'dgngochao@gmail.com', '', 'Phó Ban', 'tiến sĩ', 1, '', '0000-00-00', 2, '', '0000-00-00', 'B', 2, 1, '', 'Toán và thống kê'),
(62, 'Hoàng Xuân', 'Tùng', '1970-01-01', 1, 'Hà Nội', 'ĐHBK TP.HCM', 15, '401 Lê Đại Hành, P.11, Q.11, Tp.HCM', '', '0918535140', 'hoangxuantung@hcmut.edu.vn', '', NULL, 'Tiến sĩ', 1, '', '0000-00-00', 2, '', '0000-00-00', 'Bằng B', 2, 2, '', 'Kỹ thuật'),
(63, 'NGUYỄN LAN', 'PHƯƠNG', '1962-10-11', 2, 'Long Xuyên - An Giang', 'Đại học Bách Khoa - ĐHQG HCM', 21, '87 Hồ Hảo Hớn, P. Cô Giang, Q.1, TPHCM', '(08)38367803', '0937750886', 'nlphuong@hcmut.edu.vn', '', 'chuyên viên chính', 'Thạc sĩ', 1, 'đang chờ cấp KDK05', '0000-00-00', 2, '', '0000-00-00', 'chứng chỉ B', 2, 1, '* Đề tại Luận văn tốt nghiệp Thạc sĩ: \\\\\\"Sử dụng kỹ thuật mô phỏng trong việc tái thiết kế qui trình quản lý đào tạo của Trường Đại học Bách Khoa TPHCM\\\\\\"\r\n* Đã từng làm công tác quĩ và tài chính của khoa; đồng thời có học một số môn chuyển đổi cho ngành Quản trị kinh doanh do Khoa Quản lý công nghiệp của Trường tổ chức.\r\n* Có thể sử dụng phần mềm visio để vẽ các qui trình; hoàn tất các qui trình ISO trong Khoa.\r\n* Phần mềm mô phỏng Arena.\r\n* 2005 đã tham gia các đợt huấn luyện của Bộ Giáo dục và Đào tạo cho Trường ĐHBK HCM để viết tự đánh giá - với nhiệm vụ thống kê các dữ liệu và tập hợp các đoạn viết của các CB trong Khoa để hoàn thiện báo cáo tự đánh giá;\r\n* Là thành viên của tổ Đảm bảo Chất lượng của Khoa', 'Kinh doanh và quản lý'),
(65, 'nguyễn Thanh', 'Phương', '1974-04-14', 1, 'TPHCM', 'Trường Đại học Công nghệ TPHCM - HUTECH', 17, '300A Xô viết nghệ tĩnh, phường 21, quận bình thạnh, tphcm', '08 - 35120255', '0932757142', 'nt.phuong@hutech.edu.vn', '08 - 5445 4444', 'Phó giáo sư', 'Tiến sĩ', 1, '0000039', '2014-07-07', 2, '', '0000-00-00', 'B', 2, 1, NULL, 'Kỹ thuật'),
(66, 'Trương Chí', 'Hiền', '1955-03-24', 1, 'Biền Hòa -Đồng Nai', '', 0, '58/128 Âu Cơ P.9, Q. Tân Bình, Tp.HCM', '38686847', '0903333267', 'tchien@hcmut.edu.vn', '', 'Giảng viên chính', 'Tiến sĩ', 1, '', '0000-00-00', 1, '2014.1.023', '2014-10-20', 'Tốt', 1, 1, '- Phó trưởng phòng Đào tạo của ĐHBK 1993-1997\r\n-Trưởng Phòng Đào tạo của ĐHBK 1998-2002', 'Kiến trúc và xây dựng'),
(67, 'Nguyễn Công', 'Tránh', '1976-03-09', 1, 'Tây Ninh', 'Đại Học Khoa học Tự nhiên TpHCM', 17, '227 Nguyễn Văn Cừ Quận 5 TpHCM', '08-38355270', '0983353354', 'nctranh@hcmus.edu.vn', '', 'Giảng viên', 'Tiến sĩ', 1, '0000064/KĐ-52', '2015-04-09', 2, '', '0000-00-00', 'Trình độ B', 2, 1, '', 'Khoa học tự nhiên'),
(69, 'NGUYỄN THỊ', 'HUYỀN', '1979-09-10', 2, 'Nam Định', '', 0, '227 Nguyễn Văn Cừ Quận 5 TP.HCM', '84-8-38353448', '84-919975577', 'nthuyen@hcmus.edu.vn', '', 'Không', 'Thạc sĩ', 1, '0000111', '2016-03-04', 2, '', '0000-00-00', 'B', 2, 1, '*Chương trình CDIO: \r\n-	Tham gia các hoạt động đào tạo, huấn luyện và triển khai CDIO trong Đại học Quốc gia TPHCM với các vai trò: trợ giảng, người tham gia xây dựng nội dung tập huấn,  tập huấn viên (trainer).\r\n-	Thành viên Ban điều hành, Tổ trưởng tổ giám sát Chương trình CDIO của trường, cố vấn Chương trình CDIO của Khoa Sinh học- Công nghệ sinh học, Trường ĐH Khoa học Tự nhiên – ĐHQG TPHCM.\r\n-	Trưởng nhóm xây dựng và đứng lớp tập huấn cho chương trình đào tạo triển khai CDIO tháng 5 năm 2014 “ Tư duy hệ thống – Phương pháp học chủ động và đánh giá chương trình CDIO” của Khoa Công nghệ Thông tin ĐH KHTN – ĐH Singapore Polytechnic, Chương trình do Quỹ Temasek tài trợ.\r\n-      Xây dựng và tập huấn cho Giảng viên về nội dung \\\\\\"Xây dựng các hoạt động học tập chủ động và trải nghiệm đáp ứng Chuẩn đầu ra\\\\\\".\r\n\r\n*Chương trình Đổi mới Phương pháp Dạy và Học Đại học\r\n-	Xây dựng chương trình và Tập huấn Kỹ năng giải quyết mâu thuẫn và kỹ năng giải quyết vấn đề sáng tạo cho đối tượng giảng viên và huấn luyện viên kỹ năng tai SEAMEO RETRAC.\r\n-      Tham gia xây dựng và giảng dạy khóa tập huấn “ Phương pháp giảng dạy chủ động theo học chế tín chỉ”, “ Phương pháp giảng dạy nâng cao”, “Kỹ thuật đánh giá” – Trung tâm CEE, giảng dạy cho giảng viên của nhiều trường ĐH tại Việt Nam.\r\n-	Tham gia xây dựng và giảng dạy “Phương pháp học đại học hiệu quả”, đã tập huấn cho sinh viên trường Đại học Bách Khoa, trường Đại học Khoa học Tự nhiên, trường Đại học Công nghệ Thông tin, Đại học Tài chính Marketing, Đại học Ngoại ngữ Tin học và một số ĐH khác.\r\n-	Xây dựng và giảng dạy môn học Nâng cao năng lực tư duy,  Kỹ năng giải quyết vấn đề sáng tạo, Kỹ năng làm việc nhóm, Kỹ năng giao tiếp, Kỹ năng thuyết trình cho sinh viên và học viên .\r\n-	Tư vấn và tập huấn cho Khoa xã hội học của trường Đại học Khoa học Xã hội và Nhân văn – ĐHQG TPHCM trong việc xây dựng và vận hành chương trình Service Learning (Học tập phục vụ cộng đồng).\r\nCông tác Thanh tra - Giám sát:\r\n-       Xây dựng và tổ chức triển khai các hoạt động thanh tra đào tạo, thanh tra các hoạt động của cơ sở giáo dục.', 'Khoa học tự nhiên'),
(73, 'Nguyễn Văn', 'Cương', '1970-05-25', 1, 'Bến Tre', 'Khoa Công Nghệ - Đại học Cần Thơ', 21, 'Khu II - Đường 3/2, Q. Ninh Kiều, TP Cần Thơ', '07103872169', '0989909034', 'nvcuong@ctu.edu.vn', '07103831151', 'Giảng viên chính', 'Tiến sĩ', 1, '', '0000-00-00', 2, '', '0000-00-00', 'Sử dụng thành thạo: Word, Excel, AutoCAD, Solidworks, Stagraphics, etc. ', 1, 1, NULL, 'Công nghệ kỹ thuật'),
(117, 'Nguyễn Văn', 'Lân', '1963-05-12', 1, 'Quảng nam', 'Đại học Y Dược Thành phố Hồ CHí Minh', 22, '108/25 Nguyễn Thiện Thuật, phường 2, quận 3, TP HCM', '38394026', '0913908237', 'ngvanlan@gmail.com', '', 'Giảng viên chính', 'Thạc sĩ', 1, 'Chứng nhận CN-06', '2014-07-15', 2, '', '0000-00-00', 'B', 2, 2, 'Thành viên thẩm định chương trình đào tạo chuyên ngành các trường:\r\n- Trung cấp kỹ thuật Phục hình răng, Trường Trung cấp Y Dược Mê Kông, Cần Thơ\r\n- Bác sĩ Răng Hàm Mặt, Trường ĐH Y khoa Phạm Ngọc Thạch\r\n- Bác sĩ Răng Hàm Mặt, Trường ĐH Quốc tế Hồng Bàng', 'Sức khoẻ'),
(119, 'Trịnh Thị Mỹ ', 'Hiền', '1977-10-11', 2, 'Đồng Nai', 'Trường Đại học Công nghệ Thông tin', 14, '63/13A, An Hòa, Hóa An, Biên Hòa, Đồng Nai', '', '0918 882565', 'hienttm@uit.edu.vn', '', 'Thạc sĩ', 'Thạc sĩ', 1, '  77', '2015-09-28', 2, '', '0000-00-00', 'B', 2, 1, '', 'Khoa học giáo dục và đào tạo giáo viên'),
(121, 'Phạm Thị', 'Hương', '1977-07-01', 2, 'Quảng Ngãi', 'Trường ĐH Tài chính - Marketing', 10, '43/4 Khu phố Tây B, Đông Hòa, Dĩ An, Bình Dương', '', '0905766986', 'phamhuong.mu@gmail.com', '', 'Phó trưởng phòng', 'Tiến sỹ', 1, '', '0000-00-00', 2, '', '0000-00-00', 'Kỹ thuật viên ', 2, 1, '', 'Khoa học giáo dục và đào tạo giáo viên'),
(124, 'Trịnh Minh', 'Giang', '1980-10-14', 2, 'Cà Mau', 'Trường Đai học Bách khoa', 14, '86/99/9 Âu Cơ, P.9, Q. Tân Bình, HCM', '39755404', '0983441733', 'hanagiang@hcmut.edu.vn', '', NULL, 'Thạc sĩ', 1, '0000087', '2015-09-28', 2, '', '0000-00-00', 'Chứng chỉ B', 2, 2, 'tham gia đánh giá nội bộ ISO 9001:2008 tại đơn vị', 'Kinh doanh và quản lý'),
(129, 'Nguyễn Hứa Duy', 'Khang', '1973-02-23', 1, 'Hậu Giang', '', 0, 'Phòng Đào tạo, Trường Đại học Cần Thơ. Khu II đường 3/2, Q. Ninh Kiều, TP. Cần Thơ', '07103872297', '0913737332', 'nhdkhang@ctu.edu.vn', '', 'Giảng viên chính', 'Thạc sĩ', 1, '', '0000-00-00', 2, '', '0000-00-00', 'B', 2, 1, '- ', 'Kỹ thuật'),
(130, 'Nguyễn Duy Mộng', 'Hà', '1971-03-15', 2, 'Hà Nội', 'Trường ĐHKHXH&NV, ĐHQG-HCM', 20, '10-12 Đinh Tiên Hoàng, Q.1, TPHCM', '(08)38293828 (116)', '0919694811', 'ndmongha@hcmussh.edu.vn', '', NULL, 'Thạc sĩ', 1, '', '2016-03-17', 1, '2014.1.019', '2014-07-07', 'Chứng chỉ B', 1, 1, 'Tham gia đoàn đánh giá ngoài nội bộ các Chương trình đào tạo theo Bộ tiêu chuẩn AUN-QA trong ĐHQG-HCM\r\nTư vấn, tập huấn cho một số trường đại học trong TP.HCM về ĐBCL\r\nThực hiện các đề tài NCKH và tham gia viết bài cho các hội thảo, hội nghị các cấp, tạp chí.... về ĐBCL\r\nThành viên Ban dự án CDIO cấp trường....\r\nXây dựng cẩm nang, tài liệu hướng dẫn về ĐBCL sử dụng nội bộ', 'Khoa học giáo dục và đào tạo giáo viên'),
(131, 'Nguyễn Trọng', 'Huệ', '1980-10-25', 1, 'xã Nguyên Bình, huyện Tĩnh Gia, tỉnh Thanh Hoá', 'Trường Đại học An ninh nhân dân, khu phố 6, phường Linh Trung, quận Thủ Đức, Thành phố Hồ Chí Minh.', 12, 'Phòng Khảo thí và đảm bảo chất lượng đào tạo, Trường Đại học An ninh nhân dân, khu phố 6, phường Linh Trung, quận Thủ Đức, Thành phố Hồ Chí Minh', '', '0996420733', 'nguyentronghue@gmail.com', '', 'Chuyên viên', 'Thạc sĩ luật học', 1, '0000097', '2016-03-04', 2, '', '0000-00-00', 'B', 2, 1, '', 'An ninh, Quốc phòng'),
(133, 'Phạm Quốc', 'Khánh', '1982-05-20', 1, 'Tiền Giang', 'Viện Môi trường và Tài nguyên', 8, '142 Tô Hiến Thành, phường 14, quận 10, HCM', '', '0916126247', 'quockhanhier@gmail.com', '', 'Trưởng phòng', 'ThS', 2, '', '0000-00-00', 2, '', '0000-00-00', 'B vi tính', 2, 1, '', 'Môi trường và bảo vệ môi trường'),
(137, 'Trần', 'Tiến Anh', '1976-09-16', 1, 'Gò Công, Tiền Giang', 'Đại học Bách Khoa TpHCM', 17, 'Bộ môn Kỹ thuật Hàng không, Khoa Kỹ thuật Giao thông, Đại học Bách Khoa TpHCM, 268 Lý Thường Kiệt, P14, Q10', '(08)54363021', '0969597763', 'tienanh@hcmut.edu.vn', '', 'Giảng viên chính', 'Tiến sĩ', 1, '', '0000-00-00', 2, '', '0000-00-00', 'Bằng B', 2, 1, NULL, 'Công nghệ kỹ thuật'),
(138, 'Lý Phạm Hoàng', 'Văn', '1983-01-18', 2, 'Khánh Hòa', 'Trường CĐ Kinh tế TP.HCM', 1, '413/60 Lê Văn Sỹ, P.12, Q.3', '', '0909586927', 'hvan8283@gmail.com', '', 'Thạc sĩ', 'Thạc sĩ', 1, '', '0000-00-00', 2, '', '0000-00-00', 'B', 2, 1, '', 'Công nghệ kỹ thuật'),
(145, 'Mai Tố', 'Nga', '1972-04-02', 2, 'Hà Nội', 'ĐH Quốc gia Tp.Hồ Chí Minh', 0, 'Ban Quan hệ đối ngoại - Đại học quốc gia Tp.HCM', '', '0908139418', 'maitonga@gmail.com', '', 'Chuyên viên', 'Thạc sĩ', 2, '', '0000-00-00', 2, '', '0000-00-00', 'Tin học văn phòng', 2, 2, 'Hiện chịu trách nhiệm thẩm định, quản lý cấp phép, tổ chức hội đồng thẩm định các chương trình liên kết đào tạo của các đơn vị trực thuộc và đơn vị thành viên của ĐHQG.', 'Kinh doanh và quản lý'),
(146, 'HUỲNH CÔNG', 'KHANH', '1965-05-10', 1, 'Bình Định', 'Trường Đại học Bách khoa - ĐHQG-HCM', 23, 'Khoa Công nghệ Vật liệu, trường Đại học Bách khoa - ĐHQG-HCM', '08.38647256(5819)', '0909229778', 'hckhanh@hcmut.edu.vn', '', 'Không có', 'Tiến Sĩ', 1, 'KĐV 04/08', '2015-07-20', 2, '', '0000-00-00', 'biết sử dụng tin học văn phòng', 2, 2, '', 'Kỹ thuật'),
(149, 'Đường Minh', 'Hoạt', '1974-09-28', 1, 'Vĩnh Phúc', 'Trường Đại học Khoa học Xã hội và Nhân văn-ĐHQG-HCM', 19, '10-12 Đinh Tiên Hoàng Phường Bến Nghé, Q.1 Tp. HCM', '08.38293828 Ext-116', '0909494788', 'minhhoat@hcmussh.edu.vn', '08.38221903', 'Chuyên viên', 'Thạc sĩ', 1, '0000088', '2015-09-28', 2, '', '0000-00-00', 'B', 2, 2, 'Quan sát viên đánh giá ngoài chính thức theo bộ TC AUN-QA CTĐT ngành Công nghệ Y Sinh ĐH Quốc tế-ĐHQG-HCM', 'Khoa học giáo dục và đào tạo giáo viên'),
(154, 'than', 'khoa', '1994-05-11', 1, 'hue', 'ttkd', 10, 'thu duc', '0933', '4455', '16@gmail.com', '090', 'giáo sư', 'tiến sĩ', 1, '123', '2016-05-05', 1, '456', '2016-05-19', 'B', 1, 1, 'mnopq', 'Sản xuất và chế biến'),
(155, 'Hoàng Xuân', 'Tùng', '1968-06-20', 1, 'Bình Định', '', 0, '401 Lê Đại Hành P.11 Q11 Tp.Hồ Chí Minh', '', '0918535140', 'hoangxuantung@hcmut.edu.vn', '', 'Giám đốc', 'Tiến sĩ', 1, '0000090', '2015-09-28', 2, '', '0000-00-00', 'Bằng B', 2, 2, 'Cử nhân Luật\r\nChứng chỉ Thanh tra- Pháp chế ngành Giáo dục\r\nChứng nhận về Nghiệp vụ Thanh tra ', 'Khoa học tự nhiên'),
(156, 'ĐỖ HẠNH', 'NGA', '1962-02-15', 2, 'Bình Định', '', 0, '15/10 Lam Sơn, Phường 2, Tân Bình, Tp.HCM', '08 38422049', '0908120519', 'dohanhnga@gmail.com', '', 'Trưởng khoa', 'PGS.TS', 1, '348/QĐ-ĐHQG-KT&ĐG', '2014-05-27', 1, '2014.1.039​ ', '2014-10-20', 'Bằng B', 1, 1, NULL, 'Khoa học giáo dục và đào tạo giáo viên'),
(159, 'Bùi Hải', 'Đăng', '1979-08-25', 1, 'Thái Bình', 'Trường ĐH KHXH&NV, ĐHQG-HCM', 12, '134/1/3B CMT8, P.10, Quận 3, Tp. HCM', '39315423', '0906986465', 'haidang2508@gmail.com', '+84.38221930', 'Giảng viên', 'Tiến sĩ', 1, '0000078', '2015-09-28', 2, '', '0000-00-00', 'B', 2, 1, 'Tham gia Đoàn kiểm định AUN với tư cách là Observer năm 2011. ', 'Khoa học xã hội và hành vi'),
(161, 'Le Hoang Le', 'Thuy', '1970-01-01', 2, 'Can Tho', 'Dai hoc Tay Do', 19, '4/63/8 - Cach Mang Thang 8 - TP Can Tho', '', '0985626328', 'lhlthuy@tdu.edu.vn', '', 'CBQL, GV', 'Thac si', 2, '', '0000-00-00', 2, '', '0000-00-00', 'B', 2, 1, '', 'Nông, lâm nghiệp và thuỷ sản'),
(163, 'Cao Thị Châu', 'Thủy', '2016-09-20', 2, 'Diễn Châu, Nghệ An', 'Trường Đại học Khoa Học xã Hội và Nhân Văn thành phố Hồ Chí Minh', 12, 'B4 Chung cư bộ công an, phương Bình An, Quận 2, Tp HCM', '', '0979091507', 'chauthuyna@yahoo.com', '', 'Giảng viên', 'Thạc sĩ', 1, '', '0000-00-00', 2, '', '0000-00-00', 'A', 2, 2, '', 'Khoa học giáo dục và đào tạo giáo viên'),
(167, 'Nguyen', 'Dan', '1962-04-10', 1, 'Ha Noi', 'Truong CĐ Cong Nghe TD', 30, '53 Vo Van Ngan', '', '0903770493', 'dan1962@gmail.com', '', 'Truong Phong', 'Thac Si', 2, '', '0000-00-00', 2, '', '0000-00-00', 'Thac Si', 2, 1, '', 'Khoa học giáo dục và đào tạo giáo viên');

-- --------------------------------------------------------

--
-- Table structure for table `timkiem`
--

CREATE TABLE `timkiem` (
  `Key` int(11) NOT NULL,
  `LoaiTimKiem` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiTimKiem_KhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bang` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comparedField` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timkiem`
--

INSERT INTO `timkiem` (`Key`, `LoaiTimKiem`, `LoaiTimKiem_KhongDau`, `bang`, `comparedField`, `field`) VALUES
(1, 'Họ và tên', 'hovaten', 'thongtinchung', 'hovaten', 'hovaten'),
(2, 'Năm sinh', 'namsinh', 'thongtinchung', 'ngaysinh', 'ngaysinh'),
(3, 'Quê quán', 'quequan', 'thongtinchung', 'quequan', 'quequan'),
(4, 'Nơi công tác', 'noicongtac', 'thongtinchung', 'noicongtac', 'noicongtac'),
(5, 'Thâm niên công tác', 'thamniencongtac', 'thongtinchung', 'thamniencongtac', 'thamniencongtac'),
(6, 'Địa chỉ liên hệ', 'diachilienhe', 'thongtinchung', 'diachilienhe', 'diachilienhe'),
(7, 'Điện thoại cố định', 'dienthoaicodinh', 'thongtinchung', 'dienthoaicodinh', 'dienthoaicodinh'),
(8, 'Điện thoại di dộng', 'dienthoaididong', 'thongtinchung', 'dienthoaididong', 'dienthoaididong'),
(9, 'Email', 'email', 'thongtinchung', 'email', 'emaillienhe'),
(10, 'Chức danh', 'chucdanh', 'thongtinchung', 'chucdanh', 'hocham'),
(11, 'Học vị', 'hocvi', 'thongtinchung', 'hocvi', 'hocvi'),
(12, 'Chuyên ngành thạc sĩ', 'chuyennganhthacsi', 'trinhdothacsi', 'chuyennganhthacsi', 'chuyennganhthacsi'),
(13, 'Chuyên ngành tiến sĩ', 'chuyennganhtiensi', 'trinhdotiensi', 'chuyennganhtiensi', 'chuyennganhtiensi'),
(15, 'Vai trò đã từng tham gia', 'vaitrotrongdoan', 'thamgiadgn', 'vaitrotrongdoan', NULL),
(16, 'Kinh nghiệm khác', 'kinhnghiemkhac', 'thongtinchung', 'kinhnghiemkhac', 'kinhnghiemkhac'),
(17, 'Chứng chỉ Kiểm định viên', 'chungchikdv', 'thongtinchung', 'cckdv', 'cckdv'),
(18, 'Thẻ Kiểm định viên', 'thekdv', 'thongtinchung', 'thekdv', 'thekdv'),
(19, 'Kinh nghiệm viết báo cáo', 'kinhnghiemvietbc', 'thongtinchung', 'kinhnghiemvietbc', 'kinhnghiemvietbc'),
(20, 'Giới tính', 'gioitinh', 'thongtinchung', 'gioitinh', 'gioitinh'),
(21, 'Vai trò có thể tham gia', 'vaitrocothethamgia', 'quatrinhcongtac', 'chucvu', 'chucvu');

-- --------------------------------------------------------

--
-- Table structure for table `trinhdongoaingu`
--

CREATE TABLE `trinhdongoaingu` (
  `Number` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `tenngoaingu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nghe` tinyint(1) DEFAULT NULL,
  `noi` tinyint(1) DEFAULT NULL,
  `doc` tinyint(1) DEFAULT NULL,
  `viet` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trinhdongoaingu`
--

INSERT INTO `trinhdongoaingu` (`Number`, `ID`, `tenngoaingu`, `nghe`, `noi`, `doc`, `viet`) VALUES
(1, 46, '1', 1, 1, 1, 1),
(2, 46, '2', 2, 3, 4, 1),
(3, 47, '1', 1, 1, 1, 1),
(4, 47, '2', 1, 1, 1, 1),
(5, 47, '3', 1, 1, 1, 1),
(6, 61, '1', 2, 2, 1, 2),
(7, 65, '1', 1, 1, 1, 1),
(8, 66, '1', 1, 2, 1, 2),
(9, 67, '1', 2, 1, 1, 1),
(10, 64, '1', 1, 1, 1, 1),
(11, 64, '2', 1, 1, 1, 1),
(12, 63, '1', 2, 4, 2, 3),
(13, 4, '2', 1, 1, 1, 1),
(14, 4, '1', 1, 1, 1, 1),
(15, 73, '1', 1, 1, 1, 1),
(16, 73, '', 0, 0, 0, 0),
(17, 73, '2', 1, 1, 1, 1),
(18, 62, '1', 2, 2, 1, 1),
(19, 62, '4', 1, 1, 1, 1),
(20, 121, '1', 1, 1, 1, 1),
(21, 124, '1', 2, 2, 2, 3),
(24, 129, '1', 2, 2, 2, 2),
(25, 130, '1', 1, 1, 1, 1),
(26, 130, '4', 2, 2, 1, 2),
(27, 130, '2', 3, 3, 2, 3),
(30, 133, '1', 2, 2, 1, 2),
(34, 137, '1', 1, 1, 1, 1),
(35, 137, '2', 2, 2, 1, 1),
(36, 137, 'Nhật', 2, 2, 2, 2),
(37, 138, '1', 2, 2, 2, 2),
(38, 117, '1', 3, 3, 3, 3),
(41, 59, '1', 1, 1, 1, 1),
(42, 59, '2', 2, 2, 2, 2),
(43, 60, '1', 1, 1, 1, 1),
(48, 131, '1', 1, 1, 1, 1),
(49, 145, '1', 2, 2, 1, 1),
(54, 146, '1', 2, 3, 2, 3),
(55, 146, '3', 1, 2, 1, 2),
(57, 149, '1', 2, 2, 3, 3),
(58, 46, '2', 4, 3, 2, 1),
(59, 46, '4', 2, 3, 3, 3),
(62, 151, '1', 2, 3, 4, 1),
(63, 154, '1', 1, 2, 3, 4),
(64, 154, '2', 4, 3, 2, 1),
(66, 69, '1', 1, 1, 1, 1),
(67, 156, '1', 1, 1, 1, 1),
(68, 157, '4', 1, 2, 3, 4),
(69, 158, '1', 1, 1, 1, 1),
(70, 160, 'a', 1, 2, 3, 4),
(71, 159, '1', 1, 1, 1, 1),
(72, 161, '1', 3, 3, 3, 3),
(74, 119, '1', 2, 2, 2, 2),
(75, 163, '1', 2, 2, 2, 2),
(77, 155, '1', 1, 2, 1, 2),
(78, 155, '4', 1, 1, 1, 1),
(81, 167, '1', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trinhdothacsi`
--

CREATE TABLE `trinhdothacsi` (
  `Number` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `chuyennganhthacsi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidaotaothacsi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `namcapbangthacsi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trinhdothacsi`
--

INSERT INTO `trinhdothacsi` (`Number`, `ID`, `chuyennganhthacsi`, `noidaotaothacsi`, `namcapbangthacsi`) VALUES
(1, 1, 'Giáo dục học', 'SIMON FRASER UNIVERSITY, CANADA', ''),
(2, 2, 'Công nghệ thực phẩm', 'Trường Đại học Bách khoa TP.HCM', ''),
(3, 3, 'Kỹ thuật Điện Tử', 'Trường Đại học Bách Khoa, ĐHQG Tp.HCM', ''),
(4, 4, 'Vi điện tử', 'ĐH Joseph Fourier, Pháp', ''),
(5, 5, 'QTKD', 'Liên bang Nga', ''),
(6, 6, 'Quản trị học', 'Trường Kinh tế & Thương mại Solvay - ĐH Tự do Bruxelles (liên kết với Trường ĐH Mở BC TPHCM)', ''),
(7, 7, 'Quản trị kinh doanh (MBA), chuyên ngành Thương mại điện tử', 'Hoa Kỳ', ''),
(8, 8, 'Kỹ thuật điện tử', 'Trường ĐH SPKT TPHCM', ''),
(9, 9, 'Y học', 'Học Viện Quân Y', ''),
(10, 10, 'Cơ khí động lực', 'Asian Institute of Technology', ''),
(11, 11, 'Quản trị kinh doanh', 'Đại học Kinh tế TP.HCM', ''),
(12, 12, 'Hóa Sinh', 'Khoa Sinh học, Trường ĐHKHTN, Đại học Quốc Gia Tp.HCM, Việt nam', ''),
(13, 13, 'Khoa học Thư viện - Thông tin', 'Simmons College - Hoa Kỳ', ''),
(14, 14, 'Quản lý giáo dục', 'Đại học Sư phạm Tp HCM', ''),
(15, 15, 'kiểm tra đánh giá, đo lường, và nhận xét đánh giá trong giáo dục ', 'đại học Tây Úc (University of Western Australia', ''),
(16, 16, 'Thạc sĩ Nông nghiệp, Thạc sĩ Giáo dục học', 'Trường Đại học Nông Lâm TP. HCM, Trường Đại học Sư phạm Kỹ thuật TP. HCM', ''),
(17, 17, 'Master of Science', 'Simon Fraser University, Canada', ''),
(18, 18, 'Công nghệ thông tin', 'Học viện Bưu chính viễn thông', ''),
(19, 19, 'Kỹ thuật điện', 'ĐH Bách Khoa - ĐH Quốc Gia TP.HCM', ''),
(20, 20, 'Vi Sinh y học', 'Học viện Quân y', ''),
(21, 21, 'Quan he quoc te', 'UK', ''),
(22, 22, 'Quản lý Giáo dục', 'Trường ĐH Sư Phạm TP. HCM', ''),
(23, 23, 'Quản lý GD', 'ĐH Melbourne, Australia', ''),
(24, 24, 'không', 'không', ''),
(25, 25, 'Kỹ thuật hệ thống công nghiệp', 'Viện Công nghệ châu Á (AIT), Thái Lan', ''),
(26, 26, 'Lý luận & PP dạy học Tiếng Anh (TESOL)', 'Trường ĐHKHXH&NV-ĐHQG-HCM', ''),
(27, 27, 'Quản trị kinh doanh', 'Trường Đại học Công nghệ Tp Hồ Chí Minh', ''),
(28, 28, 'Vật lý vô tuyến và điện tử', 'ĐH Khoa học Tự nhiên Tp.HCM', ''),
(29, 29, 'Quản lý giáo dục', 'Trường Đại học Vinh', ''),
(30, 30, 'Khoa học máy tính', 'Đại học CNTT Tp.HCM', ''),
(31, 31, 'Đo lường và Đánh giá chất lượng trong giáo dục', 'Viện Đảm bảo chất lượng, Đại học Quốc gia Hà Nội', ''),
(32, 32, 'Quản lý giáo dục', 'Trường ĐH Vinh', ''),
(33, 33, 'Quản lý giáo dục & Quản trị kinh doanh', 'ĐHSP TPHCM & Assumption Thailand', ''),
(34, 34, 'Kết Cấu Xây Dựng', 'Vương Quốc Bỉ, Châu Âu', ''),
(35, 35, 'Thương mại', 'Trường ĐH Kinh tế Tp.HCM', ''),
(36, 36, 'Giáo Dục Học ', 'Đại học Sư Phạm Kỹ Thuật Tp.HCM', ''),
(37, 37, 'Giáo dục học', 'Trường ĐH TDTTT II TP.HCM', ''),
(38, 38, 'Khoa học máy tính', 'Trường Đại học Bách khoa', ''),
(39, 39, 'Đo lường và đánh giá trong giáo dục', 'ĐHQG Hà Nội', ''),
(40, 40, 'Tin học', 'Trường Đại học Khoa học Tự nhiên - ĐHQG TP. Hồ Chí Minh', ''),
(41, 41, 'Châu Âu học', 'ĐH Jaggiellonian, Krakow, Poland', ''),
(42, 42, 'Lịch sử', 'Đại học KHXH&NV HCM, ĐH QG HCM', ''),
(43, 43, 'Đo lường và đánh giá trong giáo dục', 'viện đảm bảo chất lượng - đại học quốc gia Hà nội', ''),
(44, 44, 'Giáo dục học', 'trường Đại học Sư phạm Kỹ thuật TP.HCM', ''),
(45, 45, 'Kế toán', 'ĐH Kinh tế TP. HCM', ''),
(46, 46, 'm', 'n', 'o'),
(47, 46, 'p', 'q', 'r'),
(48, 47, 'CNTT', 'Harvard', '2015'),
(49, 61, 'Xác suất thống kê', 'ĐH KHTN HCM', '2001'),
(50, 65, 'Tự động hóa', 'Trường Đại học Bách Khoa TPHCM', '2003'),
(51, 67, 'Hóa lý-chuyên ngành Polyme', 'Đại học Khoa học Tự nhiên TpHCM', '2003'),
(52, 63, 'Kỹ thuật hệ thống công nghiệp', 'Đại học Bách Khoa - ĐHQG HCM', '2009'),
(53, 73, 'Cơ khí Chế tạo máy', 'Đại học Bách Khoa TPHCM', '2002'),
(54, 62, 'Khoa học Vật liệu', 'CHLB Đức', '2004'),
(55, 121, 'Lý luận và phương pháp dạy học Bộ môn Tiếng Anh', 'Việtnam', '2009'),
(56, 124, 'Quản trị Kinh doanh', 'Trường Đại học Bách khoa - ĐHQG HCM', '2007'),
(59, 129, 'Điện tử Viễn thông', 'AIT (Asian Institute of Technology) - Thái Lan', '2004'),
(60, 130, 'Giảng dạy tiếng Anh (TESOL)', 'Trường ĐHKHXH&NV, ĐHQG-HCM', '2000'),
(61, 130, 'Giáo dục dạy nghề và người lớn', 'ĐH Kỹ thuật Dresden, CHLB Đức', '2002'),
(64, 133, 'Sử dụng và bảo vệ tài nguyên môi trường', 'Viện Môi trường và tài nguyên', '2011'),
(68, 137, 'Cơ học công trình', 'Đại học Liege, Bỉ', '2003'),
(69, 138, 'Công nghệ Môi trường', 'Viện Tài nguyên và Môi trường TP.HCM', '2009'),
(70, 117, 'Y học', 'ĐHYD TP HCM', '2001'),
(73, 59, 'm', 'n', 'o'),
(74, 60, 'n', 'o', 'p'),
(76, 131, 'Điều tra tội phạm xâm phạm an ninh quốc gia', 'Trường Đại học An ninh nhân dân', '2013'),
(77, 145, 'Quản trị kinh doanh', 'Đại học Latrobe Australia', '2006'),
(80, 146, 'Học chuyển tiếp từ đại học lên Tiến Sĩ theo hệ Liên Xô (cũ)', 'Trường Đại học Bách khoa Tashkent (Liên Xô cũ)', 'Nhận bằng Kỹ sư năm 1990'),
(82, 149, 'Quản lý giáo dục', 'ĐHKHXH&NV-ĐHQG-HCM', '2012'),
(83, 46, '8', '9', '10'),
(84, 46, 'f', 'g', 'h'),
(87, 151, 'l', 'm', 'n'),
(88, 154, '1', '2', '3'),
(89, 154, 'a', 'b', 'c'),
(90, 69, 'Vi Sinh', 'Trường ĐH Khoa học Tự nhiên - ĐHQGHCM', '2006'),
(91, 156, 'Đánh giá giáo dục', 'Học viện Công nghệ Hòang gia Melbourne, Úc (RMIT)', '1998'),
(92, 157, 'l', 'm', 'n'),
(93, 158, 'Quản lý kinh tế', 'Trường Đại học Thương mại - Hà Nội', '2005'),
(94, 160, 'i', 'j', 'k'),
(95, 159, 'Châu Âu học', 'Jagiellonian University, Krakow, Poland', '2006'),
(96, 161, 'Trong Trot', 'Dai hoc Can Tho', '2006'),
(98, 119, 'Giáo dục học', 'Đại học Sư phạm Kỹ thuật Tp. HCM', '2008'),
(99, 163, 'Giáo dục', 'Trường Đại học Leeds, Vương Quốc Anh', '2008'),
(101, 155, 'Kỹ thuật Vật Liệu', 'ĐH Tổng hợp CHLB Đức', '2004'),
(103, 167, 'CNTT', 'HV Buu Chinh Vien Thong', '2010');

-- --------------------------------------------------------

--
-- Table structure for table `trinhdotiensi`
--

CREATE TABLE `trinhdotiensi` (
  `Number` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `chuyennganhtiensi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidaotaotiensi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `namcapbangtiensi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trinhdotiensi`
--

INSERT INTO `trinhdotiensi` (`Number`, `ID`, `chuyennganhtiensi`, `noidaotaotiensi`, `namcapbangtiensi`) VALUES
(1, 1, 'GIÁO DỤC HỌC', 'UNIVERSITY OF MELBOURNE, AUSTRALIA', ''),
(2, 4, 'Vi điện tử', 'ĐH Bách khoa Quốc gia Grenoble, Pháp', ''),
(3, 6, 'Quản trị kinh doanh (DBA)', 'Trường ĐH Nghiên cứu Chuyên nghiệp Nam California (SCUPS - Southern California University for Profes', ''),
(4, 7, 'Khoa học máy tính', 'Ucraina', ''),
(5, 9, 'NCS Y tế công cộng', 'Trường ĐH Y Dược Hải Phòng', ''),
(6, 10, 'Cơ khí động lực', 'ĐHQG - HCM', ''),
(7, 12, 'Ngành Hóa học, chuyên ngành Hóa Sinh', 'Trường Đại học Quốc gia Pukyong, Busan, Hàn quốc.', ''),
(8, 13, 'Quản trị Thư viện - Thông tin', 'Victoria University of Wellington - New Zealand', ''),
(9, 14, 'Giáo dục đại học', 'Trung Quốc', ''),
(10, 17, 'Giáo dục', 'University of Amsterdam, Netherlands', ''),
(11, 19, 'Kỹ thuật (Robotics)', 'University of Technology Sydney, Australia', ''),
(12, 23, 'Quản lý chất lượng GD', 'ĐH Melbourne, Australia', ''),
(13, 24, 'Toán học', 'Liên Xô', ''),
(14, 25, 'Kỹ thuật hậu cần (Logistics)', 'Đại học Hàng Hải Hàn Quốc', ''),
(15, 26, 'Giáo dục (Quản trị & Lãnh đạo Giáo dục đại học) (Educational Leadership & Management)', 'ĐH De La Salle-Manila (the Philippines)', ''),
(16, 28, 'Vật lý vô tuyến và điện tử', 'ĐH Khoa học Tự nhiên Tp.HCM', ''),
(17, 32, 'Quản lý giáo dục', ' ĐH Thái Nguyên', ''),
(18, 33, 'Quản trị kinh doanh', 'Bulacan State University- Philippines', ''),
(19, 35, 'Quản lý công nghiệp', 'National Kaohsiung University of Applied Sciences', ''),
(20, 37, 'Khoa học giáo dục', 'Viện Khoa học TDTT (Hà Nội)', ''),
(21, 38, 'Khoa học máy tính', 'University Of New South Wales, Australia', ''),
(22, 40, 'Đảm bảo toán học cho máy tính và các hệ thống tính toán', 'Viện Công nghệ thông tin - Viện Khoa học và Công nghệ Việt Nam', ''),
(23, 41, 'Văn hóa học', 'ĐH KHXH&NV Tp.HCM', ''),
(24, 42, 'Lịch sử', 'Như trên', ''),
(25, 44, 'Giáo dục học', 'Trường Đại học Tài chính - Marketing', ''),
(26, 46, 's', 't', 'u'),
(27, 46, 'v', 'w', 'x'),
(28, 47, 'CNTT', 'Oxford', '2016'),
(29, 61, 'Cơ học kỹ thuật', 'Viện cơ học', '2015'),
(30, 65, 'Kỹ thuật Cơ điện tử', 'Đại học Quốc gia PUKYONG - Hàn quốc', '2008'),
(31, 66, 'Thủy lợi - Thủy điện', 'Moscow', '1992'),
(32, 67, 'Khoa học va ky thuật Polyme', 'Đại học Sungkyunkwan, Hàn Quốc', '2008'),
(33, 73, 'Kỹ thuật quá trình', 'Đại học La Rochelle - Pháp', '2010'),
(34, 121, 'Đo lường và đánh giá trong giáo dục', 'New Zealand', '2014'),
(35, 137, 'Cơ kết cấu & Kỹ thuật gió', 'Đại học Ritsumeikan, Nhật', '2007'),
(36, 59, 'p', 'q', 'r'),
(37, 60, 'q', 'r', 's'),
(42, 146, 'Luyện kim', 'Trường Đại học Bách khoa Tashkent (Liên Xô cũ)', '1993'),
(43, 46, '11', '12', '13'),
(44, 46, 'i', 'j', 'k'),
(47, 151, 'o', 'p', 'q'),
(48, 154, '4', '5', '6'),
(49, 154, 'd', 'e', 'f'),
(50, 156, 'Tâm lý học', 'Học viện Khoa học xã hội, Viện Hàn lâm KHXH Việt Nam', '2006'),
(51, 157, 'o', 'p', 'q'),
(52, 158, 'Quản lý văn hóa', 'Viện văn hóa nghệ thuật quốc gia Việt Nam', 'Đang trong quá trình chờ bảo vệ '),
(53, 159, 'Văn hóa học', 'Trường ĐH KHXH&NV, ĐHQG-HCM', '2014'),
(54, 155, 'Kỹ thuật Vật Liệu', 'ĐHBK - ĐHQG Tp.HCM', '2014');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-10-01 03:35:55', '2015-10-01 03:35:55', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://kdv.cea.vnuhcm.edu.vn', 'yes'),
(2, 'home', 'http://kdv.cea.vnuhcm.edu.vn', 'yes'),
(3, 'blogname', 'Kiểm định viên', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'dangkhoa114@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:55:"global-admin-bar-hide-or-remove/hide-admin-tool-bar.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:86:"C:\\xampp\\htdocs\\kdv.cea.vnuhcm.edu.vn/wp-content/plugins/wp-mail-smtp/wp_mail_smtp.php";i:1;s:0:"";}', 'no'),
(41, 'template', 'test', 'yes'),
(42, 'stylesheet', 'test', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '35700', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '4', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:12:"main-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:5:{i:1467041823;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1467041905;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1467041952;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1467081280;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(108, '_transient_random_seed', 'd1d6032a4288f1a05403795c83695c94', 'yes'),
(123, 'recently_activated', 'a:1:{s:33:"fancy-admin-ui/fancy-admin-ui.php";i:1462879786;}', 'yes'),
(130, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1443670622;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(131, 'current_theme', '', 'yes'),
(132, 'theme_mods_test', 'a:1:{i:0;b:0;}', 'yes'),
(133, 'theme_switched', '', 'yes'),
(139, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(140, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(143, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(202, 'db_upgraded', '', 'yes'),
(210, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:21:"dangkhoa114@gmail.com";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1466609825;}', 'yes'),
(627, 'WPLANG', 'vi', 'yes'),
(1411, '_site_transient_timeout_browser_8c532e6bb74549319a2f5cc6aea6c283', '1456299935', 'yes'),
(1412, '_site_transient_browser_8c532e6bb74549319a2f5cc6aea6c283', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"44.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1445, '_site_transient_timeout_browser_81e9a13074eb06c618c18db7f0e9024c', '1456453535', 'yes'),
(1446, '_site_transient_browser_81e9a13074eb06c618c18db7f0e9024c', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"47.2.2526.129";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1495, '_site_transient_timeout_browser_6536462325507ca09ee53e836eb0cd56', '1456711022', 'yes'),
(1496, '_site_transient_browser_6536462325507ca09ee53e836eb0cd56', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.109";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1550, 'site_icon', '0', 'yes'),
(1551, 'medium_large_size_w', '768', 'yes'),
(1552, 'medium_large_size_h', '0', 'yes'),
(1556, 'can_compress_scripts', '0', 'yes'),
(1558, '_site_transient_timeout_browser_f387f3eb624bf6d314fec824cede612c', '1456801260', 'yes'),
(1559, '_site_transient_browser_f387f3eb624bf6d314fec824cede612c', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1682, '_site_transient_timeout_browser_d187b59b123c4b85833285fcab4a6a3a', '1457506501', 'yes'),
(1683, '_site_transient_browser_d187b59b123c4b85833285fcab4a6a3a', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"47.2.2526.131";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1700, '_site_transient_timeout_browser_985451e5bd5f5ebc76765786809379d7', '1457533010', 'yes'),
(1701, '_site_transient_browser_985451e5bd5f5ebc76765786809379d7', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"47.2.2526.131";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1731, '_site_transient_timeout_browser_d30847a2ec9c978a0e4db5470b78b327', '1457658532', 'yes'),
(1732, '_site_transient_browser_d30847a2ec9c978a0e4db5470b78b327', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"44.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1850, '_site_transient_timeout_browser_264744fb97fa2679eaaea1217bc22349', '1458285183', 'yes'),
(1851, '_site_transient_browser_264744fb97fa2679eaaea1217bc22349', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:13:"Mobile Safari";s:7:"version";s:6:"537.36";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1916, 'mail_from', '', 'yes'),
(1917, 'mail_from_name', '', 'yes'),
(1918, 'mailer', 'smtp', 'yes'),
(1919, 'mail_set_return_path', 'false', 'yes'),
(1920, 'smtp_host', 'localhost', 'yes'),
(1921, 'smtp_port', '25', 'yes'),
(1922, 'smtp_ssl', 'none', 'yes'),
(1923, 'smtp_auth', '', 'yes'),
(1924, 'smtp_user', '', 'yes'),
(1925, 'smtp_pass', '', 'yes'),
(1943, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1458047203', 'no'),
(1944, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2016/03/wordpress-4-5-beta-3/''>WordPress 4.5 Beta 3</a> <span class="rss-date">March 10, 2016</span><div class="rssSummary">WordPress 4.5 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.5, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wptavern.com/tickets-for-wordcamp-jacksonville-2016-now-on-sale''>WPTavern: Tickets for WordCamp Jacksonville 2016 Now on Sale</a></li><li><a class=''rsswidget'' href=''http://wptavern.com/when-contributing-to-wordpress-full-time-leads-to-burnout''>WPTavern: When Contributing to WordPress Full-Time Leads to Burnout</a></li><li><a class=''rsswidget'' href=''https://ma.tt/2016/03/addicted-to-distraction/''>Matt: Addicted to Distraction</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''https://wordpress.org/plugins/updraftplus/'' class=''dashboard-news-plugin-link''>UpdraftPlus Backup and Restoration</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=updraftplus&amp;_wpnonce=3e37751a01&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''UpdraftPlus Backup and Restoration''>Install</a>)</span></li></ul></div>', 'no'),
(1963, 'sb_we_settings', 'O:8:"stdClass":18:{s:12:"user_subject";s:40:"[[blog_name]] Your username and password";s:9:"user_body";s:70:"Username: [user_login]<br />Password: [user_password]<br />[login_url]";s:13:"admin_subject";s:35:"[[blog_name]] New User Registration";s:10:"admin_body";s:114:"New user registration on your blog Kiểm định viên<br /><br />Username: [user_login]<br />Email: [user_email]";s:20:"admin_notify_user_id";i:1;s:24:"remind_on_profile_update";i:0;s:24:"disable_reminder_service";i:0;s:16:"reminder_subject";s:49:"[[blog_name]] Your username and password reminder";s:13:"reminder_body";s:108:"Just a reminder for you...<br /><br />Username: [user_login]<br />Password: [user_password]<br />[login_url]";s:16:"header_from_name";s:0:"";s:17:"header_from_email";s:13:"[admin_email]";s:15:"header_reply_to";s:13:"[admin_email]";s:14:"header_send_as";s:4:"html";s:17:"header_additional";s:0:"";s:18:"set_global_headers";i:1;s:17:"we_attachment_url";s:0:"";s:25:"password_reminder_subject";s:29:"[[blog_name]] Forgot Password";s:22:"password_reminder_body";s:274:"Someone requested that the password be reset for the following account: [site_url]<br /><br />Username: [user_login]<br /><br />If this was a mistake, just ignore this email and nothing will happen.<br /><br />To reset your password, visit the following address: [reset_url]";}', 'yes'),
(1968, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1466998760;s:7:"checked";a:1:{s:4:"test";s:0:"";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(1998, '_site_transient_timeout_browser_1e944483982b42d34456da1ecdbb17ae', '1458722311', 'yes'),
(1999, '_site_transient_browser_1e944483982b42d34456da1ecdbb17ae', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.2.2564.129";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2004, '_site_transient_timeout_browser_b6de8a8eff87f9effb25767671c45c55', '1458754563', 'yes'),
(2005, '_site_transient_browser_b6de8a8eff87f9effb25767671c45c55', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.2.2564.131";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2006, '_site_transient_timeout_browser_3c01ad0e23b0537d6e032aa6bcd6b6ec', '1458781161', 'yes'),
(2007, '_site_transient_browser_3c01ad0e23b0537d6e032aa6bcd6b6ec', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.2.2564.131";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2030, '_site_transient_timeout_browser_c47679650b2931170fcf21a597a79795', '1458793475', 'yes'),
(2031, '_site_transient_browser_c47679650b2931170fcf21a597a79795', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:17:"Internet Explorer";s:7:"version";s:2:"11";s:10:"update_url";s:51:"http://www.microsoft.com/windows/internet-explorer/";s:7:"img_src";s:45:"http://s.wordpress.org/images/browsers/ie.png";s:11:"img_src_ssl";s:44:"https://wordpress.org/images/browsers/ie.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2032, '_site_transient_timeout_browser_ebb062716991e0521c4e891bdf51f5c7', '1458807630', 'yes'),
(2033, '_site_transient_browser_ebb062716991e0521c4e891bdf51f5c7', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.2.2564.131";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2034, '_site_transient_timeout_browser_3b4261d2610026bf7f775d20e39aa8de', '1458827994', 'yes'),
(2035, '_site_transient_browser_3b4261d2610026bf7f775d20e39aa8de', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:13:"Mobile Safari";s:7:"version";s:6:"537.36";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2050, '_site_transient_timeout_browser_e5d58d48d37fd27c24bcb992bc4020db', '1458873191', 'yes'),
(2051, '_site_transient_browser_e5d58d48d37fd27c24bcb992bc4020db', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"49.0.2623.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2066, '_site_transient_timeout_browser_1b39d7d1d62ac4d2b3dc7459ef7d1588', '1458877841', 'yes'),
(2067, '_site_transient_browser_1b39d7d1d62ac4d2b3dc7459ef7d1588', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"49.0.2623.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2072, '_site_transient_timeout_browser_cb15623d61cf1a136091369771aa00c9', '1458960714', 'yes'),
(2073, '_site_transient_browser_cb15623d61cf1a136091369771aa00c9', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:13:"Mobile Safari";s:7:"version";s:6:"537.36";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2116, '_site_transient_timeout_browser_0feba90ad8dd67606fcec27bcb003086', '1459302942', 'yes'),
(2117, '_site_transient_browser_0feba90ad8dd67606fcec27bcb003086', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"49.0.2623.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2132, '_site_transient_timeout_browser_17a426e16cd83789664bf04ec9cf7122', '1459313387', 'yes'),
(2133, '_site_transient_browser_17a426e16cd83789664bf04ec9cf7122', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"49.0.2623.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2160, '_site_transient_timeout_wordpress_credits_vi', '1458892674', 'yes'),
(2161, '_site_transient_wordpress_credits_vi', 'a:2:{s:6:"groups";a:8:{s:15:"project-leaders";a:4:{s:4:"name";s:15:"Project Leaders";s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:6:{s:4:"matt";a:4:{i:0;s:14:"Matt Mullenweg";i:1;s:32:"767fc9c115a1b989744c755db47feb60";i:2;s:4:"matt";i:3;s:23:"Cofounder, Project Lead";}s:5:"nacin";a:4:{i:0;s:12:"Andrew Nacin";i:1;s:32:"01cfe9feaafb068590891bbd1f6a7f5a";i:2;s:5:"nacin";i:3;s:14:"Lead Developer";}s:11:"markjaquith";a:4:{i:0;s:12:"Mark Jaquith";i:1;s:32:"097a87a525e317519b5ee124820012fb";i:2;s:11:"markjaquith";i:3;s:14:"Lead Developer";}s:6:"azaozz";a:4:{i:0;s:10:"Andrew Ozz";i:1;s:32:"4e84843ebff0918d72ade21c6ee7b1e4";i:2;s:6:"azaozz";i:3;s:14:"Lead Developer";}s:5:"helen";a:4:{i:0;s:16:"Helen Hou-Sandí";i:1;s:32:"6506162ada6b700b151ad8a187f65842";i:2;s:5:"helen";i:3;s:14:"Lead Developer";}s:4:"dd32";a:4:{i:0;s:10:"Dion Hulse";i:1;s:32:"4af2825655b46fb1206b08d9041d8e3e";i:2;s:4:"dd32";i:3;s:14:"Lead Developer";}}}s:15:"core-developers";a:4:{s:4:"name";s:23:"Contributing Developers";s:4:"type";s:6:"titles";s:7:"shuffle";b:0;s:4:"data";a:9:{s:14:"wonderboymusic";a:4:{i:0;s:12:"Scott Taylor";i:1;s:32:"112ca15732a80bb928c52caec9d2c8dd";i:2;s:14:"wonderboymusic";i:3;s:12:"Release Lead";}s:7:"ocean90";a:4:{i:0;s:17:"Dominik Schilling";i:1;s:32:"3e8e161d97d793bd8fc2dcd62583bb76";i:2;s:7:"ocean90";i:3;s:14:"Core Developer";}s:14:"SergeyBiryukov";a:4:{i:0;s:15:"Sergey Biryukov";i:1;s:32:"750b7b0fcd855389264c2b1294d61bd6";i:2;s:14:"SergeyBiryukov";i:3;s:14:"Core Developer";}s:12:"boonebgorges";a:4:{i:0;s:15:"Boone B. Gorges";i:1;s:32:"9cf7c4541a582729a5fc7ae484786c0c";i:2;s:12:"boonebgorges";i:3;s:14:"Core Developer";}s:5:"pento";a:4:{i:0;s:15:"Gary Pendergast";i:1;s:32:"1ad9e5c98d81c6815a65dab5b6e1f669";i:2;s:5:"pento";i:3;s:14:"Core Developer";}s:11:"johnbillion";a:4:{i:0;s:15:"John Blackbourn";i:1;s:32:"0000ba6dd1b089e1746abbfe6281ee3b";i:2;s:11:"johnbillion";i:3;s:14:"Core Developer";}s:12:"DrewAPicture";a:4:{i:0;s:11:"Drew Jaynes";i:1;s:32:"95c934fa2c3362794bf62ff8c59ada08";i:2;s:12:"DrewAPicture";i:3;s:14:"Core Developer";}s:10:"jeremyfelt";a:4:{i:0;s:11:"Jeremy Felt";i:1;s:32:"d1759b1c669981b7c52ec9a97d19e6bd";i:2;s:10:"jeremyfelt";i:3;s:14:"Core Developer";}s:6:"jorbin";a:4:{i:0;s:12:"Aaron Jorbin";i:1;s:32:"b3e2b94eb305bf95a1bee11bc7705fb7";i:2;s:6:"jorbin";i:3;s:14:"Core Developer";}}}s:23:"contributing-developers";a:4:{s:4:"name";b:0;s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:6:{s:8:"obenland";a:4:{i:0;s:19:"Konstantin Obenland";i:1;s:32:"2370ea5912750f4cb0f3c51ae1cbca55";i:2;s:8:"obenland";i:3;s:0:"";}s:7:"iseulde";a:4:{i:0;s:22:"Ella Iseulde Van Dorpe";i:1;s:32:"1a847a68778b8344b6aa106a8861984f";i:2;s:7:"iseulde";i:3;s:0:"";}s:11:"westonruter";a:4:{i:0;s:12:"Weston Ruter";i:1;s:32:"22ed378fbf1d918ef43a45b2a1f34634";i:2;s:11:"westonruter";i:3;s:0:"";}s:7:"afercia";a:4:{i:0;s:13:"Andrea Fercia";i:1;s:32:"074af62ea5ff218b6a6eeab89104f616";i:2;s:7:"afercia";i:3;s:0:"";}s:6:"rmccue";a:4:{i:0;s:10:"Ryan McCue";i:1;s:32:"08818120f223035a0857c2a0ec417f93";i:2;s:6:"rmccue";i:3;s:0:"";}s:10:"karmatosed";a:4:{i:0;s:13:"Tammie Lister";i:1;s:32:"ca7d4273a689cdbf524d8332771bb1ca";i:2;s:10:"karmatosed";i:3;s:0:"";}}}s:16:"recent-rockstars";a:4:{s:4:"name";b:0;s:4:"type";s:6:"titles";s:7:"shuffle";b:1;s:4:"data";a:13:{s:9:"chriscct7";a:4:{i:0;s:15:"Chris Christoff";i:1;s:32:"d0931e57862048dabb0bea3a71ce6229";i:2;s:9:"chriscct7";i:3;s:0:"";}s:10:"swissspidy";a:4:{i:0;s:15:"Pascal Birchler";i:1;s:32:"609d6ee54dc13a51270cb99769535b82";i:2;s:10:"swissspidy";i:3;s:0:"";}s:15:"danielbachhuber";a:4:{i:0;s:16:"Daniel Bachhuber";i:1;s:32:"a304ad0084a78fe52f6b93e00871754e";i:2;s:15:"danielbachhuber";i:3;s:0:"";}s:11:"rachelbaker";a:4:{i:0;s:12:"Rachel Baker";i:1;s:32:"634b37a53babc18a5bda19722d5b41a3";i:2;s:11:"rachelbaker";i:3;s:0:"";}s:8:"joehoyle";a:4:{i:0;s:9:"Joe Hoyle";i:1;s:32:"0ceb885cc3d306af93c9764b2936d618";i:2;s:8:"joehoyle";i:3;s:0:"";}s:5:"ramiy";a:4:{i:0;s:14:"Rami Yushuvaev";i:1;s:32:"ce2a269e424156d79cb0c4e1d4d82db1";i:2;s:5:"ramiy";i:3;s:0:"";}s:12:"mikeschroder";a:4:{i:0;s:13:"Mike Schroder";i:1;s:32:"76424a001dc6b3ebb4faca0c567800c4";i:2;s:12:"mikeschroder";i:3;s:0:"";}s:5:"tevko";a:4:{i:0;s:8:"Tim Evko";i:1;s:32:"3223dfa38896f09bad075c1515d4f3aa";i:2;s:5:"tevko";i:3;s:0:"";}s:14:"jaspermdegroot";a:4:{i:0;s:15:"Jasper de Groot";i:1;s:32:"e8170d7574cd649bce2639e24737de88";i:2;s:14:"jaspermdegroot";i:3;s:0:"";}s:9:"joemcgill";a:4:{i:0;s:10:"Joe McGill";i:1;s:32:"7cef1c9108207ec24db7a40f142db676";i:2;s:9:"joemcgill";i:3;s:0:"";}s:5:"wilto";a:4:{i:0;s:11:"Mat Marquis";i:1;s:32:"2d087e6ab3f067d53c6cbc2e9b722a62";i:2;s:5:"wilto";i:3;s:0:"";}s:10:"iamtakashi";a:4:{i:0;s:12:"Takashi Irie";i:1;s:32:"56bae6e12bf9305a0852753e0f557489";i:2;s:10:"iamtakashi";i:3;s:0:"";}s:13:"peterwilsoncc";a:4:{i:0;s:12:"Peter Wilson";i:1;s:32:"1dd9fded718f9b344d48f37f9bfcb159";i:2;s:13:"peterwilsoncc";i:3;s:0:"";}}}s:5:"props";a:4:{s:4:"name";s:33:"Core Contributors to WordPress %s";s:12:"placeholders";a:1:{i:0;s:3:"4.4";}s:4:"type";s:4:"list";s:4:"data";a:458:{s:7:"mercime";s:8:"@mercime";s:10:"a5hleyrich";s:10:"A5hleyRich";s:13:"aaroncampbell";s:17:"Aaron D. Campbell";s:11:"aaronrutley";s:12:"Aaron Rutley";s:7:"kawauso";s:21:"Adam Harley (Kawauso)";s:11:"adamholisky";s:11:"adamholisky";s:15:"adamsilverstein";s:16:"Adam Silverstein";s:12:"mrahmadawais";s:11:"Ahmad Awais";s:12:"akibjorklund";s:18:"Aki Bj&#246;rklund";s:9:"albertoct";s:9:"AlbertoCT";s:7:"gounder";s:17:"Alexander Gounder";s:5:"akirk";s:9:"Alex Kirk";s:12:"viper007bond";s:25:"Alex Mills (Viper007Bond)";s:10:"tellyworth";s:11:"Alex Shiels";s:11:"alireza1375";s:11:"alireza1375";s:9:"shedonist";s:12:"Amanda Giles";s:12:"amereservant";s:12:"amereservant";s:8:"sabreuse";s:22:"Amy Hendrix (sabreuse)";s:5:"aduth";s:13:"Andrew Duthie";s:8:"norcross";s:15:"Andrew Norcross";s:7:"afragen";s:11:"Andy Fragen";s:8:"amandato";s:14:"Angelo Mandato";s:18:"ankitgadertcampcom";s:10:"Ankit Gade";s:13:"ankit-k-gupta";s:13:"Ankit K Gupta";s:5:"antpb";s:16:"Anthony Burchell";s:9:"apkoponen";s:10:"ap.koponen";s:11:"apokalyptik";s:11:"apokalyptik";s:10:"atomicjack";s:10:"atomicjack";s:12:"austinginder";s:13:"Austin Ginder";s:8:"filosofo";s:13:"Austin Matzko";s:11:"barryceelen";s:12:"Barry Ceelen";s:10:"barrykooij";s:11:"Barry Kooij";s:7:"bcworkz";s:7:"bcworkz";s:7:"bdn3504";s:7:"BdN3504";s:7:"pixolin";s:16:"Bego Mario Garde";s:12:"benjaminpick";s:13:"Benjamin Pick";s:7:"benjmay";s:7:"Ben May";s:12:"berengerzyla";s:12:"berengerzyla";s:5:"neoxx";s:14:"Bernhard Riedl";s:9:"bigdawggi";s:9:"bigdawggi";s:10:"bilalcoder";s:10:"bilalcoder";s:12:"binarykitten";s:12:"BinaryKitten";s:7:"birgire";s:27:"Birgir Erlendsson (birgire)";s:13:"bjornjohansen";s:19:"Bj&#248;rn Johansen";s:11:"bobbingwide";s:11:"bobbingwide";s:7:"gitlost";s:6:"bonger";s:9:"bradparbs";s:9:"bradparbs";s:5:"bradt";s:14:"Brad Touesnard";s:12:"bradyvercher";s:13:"Brady Vercher";s:7:"kraftbj";s:13:"Brandon Kraft";s:9:"bravokeyl";s:9:"bravokeyl";s:7:"brentvr";s:7:"brentvr";s:8:"brettz95";s:8:"brettz95";s:7:"mckilem";s:9:"Bruno Kos";s:12:"crazycoolcam";s:3:"Cam";s:8:"camikaos";s:9:"Cami Kaos";s:13:"carolinegeven";s:13:"carolinegeven";s:12:"misterbisson";s:12:"Casey Bisson";s:6:"ch1902";s:6:"ch1902";s:5:"nhuja";s:9:"Chandra M";s:12:"chandrapatel";s:13:"Chandra Patel";s:12:"chasewiseman";s:13:"Chase Wiseman";s:9:"chiara_09";s:14:"Chiara Dossena";s:11:"chipbennett";s:12:"Chip Bennett";s:12:"chiragswadia";s:13:"Chirag Swadia";s:11:"chriscoyier";s:11:"chriscoyier";s:8:"chrisdc1";s:8:"Chrisdc1";s:13:"chrismkindred";s:13:"Chris Kindred";s:8:"cklosows";s:15:"Chris Klosowski";s:10:"lovememore";s:14:"christianoliff";s:6:"cfinke";s:17:"Christopher Finke";s:13:"christophherr";s:14:"Christoph Herr";s:24:"chrisvendiadvertisingcom";s:6:"cjhaas";s:9:"codeelite";s:9:"codeelite";s:10:"coenjacobs";s:11:"Coen Jacobs";s:7:"compute";s:7:"Compute";s:12:"couturefreak";s:13:"Courtney Ivey";s:13:"craig-ralston";s:13:"Craig Ralston";s:8:"cgrymala";s:15:"Curtiss Grymala";s:4:"cdog";s:16:"Cătălin Dogaru";s:11:"extendwings";s:17:"Daisuke Takahashi";s:7:"dboulet";s:10:"Dan Boulet";s:5:"mte90";s:21:"Daniele Scasciafratte";s:10:"redsweater";s:27:"Daniel Jalkut (Red Sweater)";s:15:"daniel-koskinen";s:15:"Daniel Koskinen";s:12:"daniellandau";s:12:"daniellandau";s:7:"dmenard";s:18:"Daniel M&#233;nard";s:12:"daniloercoli";s:12:"daniloercoli";s:11:"dannydehaan";s:13:"Danny de Haan";s:10:"dvankooten";s:16:"Danny van Kooten";s:6:"nerrad";s:22:"Darren Ethier (nerrad)";s:4:"dllh";s:26:"Daryl L. L. Houston (dllh)";s:10:"dattaparad";s:11:"Datta Parad";s:7:"dmchale";s:11:"Dave McHale";s:13:"davidakennedy";s:16:"David A. Kennedy";s:13:"davidanderson";s:14:"David Anderson";s:10:"davidbinda";s:13:"David Binovec";s:3:"dlh";s:13:"David Herrera";s:8:"dshanske";s:13:"David Shanske";s:6:"debaat";s:6:"DeBAAT";s:17:"denis-de-bernardy";s:17:"Denis de Bernardy";s:7:"realloc";s:15:"Dennis Ploetner";s:12:"valendesigns";s:12:"Derek Herman";s:13:"downstairsdev";s:11:"Devin Price";s:5:"dezzy";s:5:"Dezzy";s:21:"dipalidhole27gmailcom";s:12:"Dipali Dhole";s:14:"dipeshkakadiya";s:15:"dipesh.kakadiya";s:4:"dbru";s:16:"Dominik Bruderer";s:5:"dossy";s:14:"Dossy Shiobara";s:11:"drebbitsweb";s:9:"Dreb Bits";s:12:"dustinbolton";s:12:"dustinbolton";s:6:"kucrut";s:11:"Dzikri Aziz";s:9:"edirect24";s:9:"edirect24";s:10:"oso96_2000";s:15:"Eduardo Reveles";s:13:"eduardozulian";s:14:"Eduardo Zulian";s:4:"cais";s:14:"Edward Caissie";s:5:"egill";s:19:"Egill R. Erlendsson";s:6:"egower";s:6:"egower";s:8:"iehsanir";s:6:"Ehsaan";s:5:"ehtis";s:5:"ehtis";s:12:"ellieroepken";s:14:"Ellie Strejlau";s:14:"elliott-stocks";s:14:"Elliott Stocks";s:11:"elusiveunit";s:11:"elusiveunit";s:9:"enshrined";s:9:"enshrined";s:9:"ericlewis";s:17:"Eric Andrew Lewis";s:8:"ebinnion";s:12:"Eric Binnion";s:9:"ericdaams";s:10:"Eric Daams";s:9:"ericjuden";s:9:"ericjuden";s:8:"ericmann";s:9:"Eric Mann";s:9:"eherman24";s:11:"Evan Herman";s:6:"f4rkie";s:6:"F4rkie";s:8:"flixos90";s:11:"Felix Arntz";s:6:"fsylum";s:14:"Firdaus Zahari";s:10:"firebird75";s:10:"firebird75";s:6:"fonglh";s:6:"fonglh";s:9:"francoisb";s:9:"francoisb";s:8:"fjarrett";s:15:"Frankie Jarrett";s:11:"frank-klein";s:11:"Frank Klein";s:8:"frozzare";s:14:"Fredrik Forsmo";s:6:"gaelan";s:12:"Gaelan Lloyd";s:9:"gagan0123";s:16:"Gagan Deep Singh";s:7:"garyc40";s:8:"Gary Cao";s:5:"garyj";s:10:"Gary Jones";s:5:"garza";s:5:"garza";s:7:"grvrulz";s:13:"Gaurav Pareek";s:11:"gautamgupta";s:12:"Gautam Gupta";s:5:"gblsm";s:5:"gblsm";s:9:"geminorum";s:9:"geminorum";s:5:"kloon";s:17:"Gerhard Potgieter";s:9:"gezamiklo";s:10:"geza.miklo";s:8:"gizburdt";s:13:"Gijs Jorissen";s:7:"garusky";s:15:"Giuseppe Mamone";s:8:"jubstuff";s:22:"Giustino Borzacchiello";s:7:"gnaka08";s:7:"gnaka08";s:8:"gradyetc";s:8:"gradyetc";s:6:"tivnet";s:27:"Gregory Karpinsky (@tivnet)";s:11:"gregrickaby";s:12:"Greg Rickaby";s:7:"bordoni";s:15:"Gustavo Bordoni";s:6:"webord";s:15:"Gustavo Bordoni";s:10:"gwinhlopez";s:11:"gwinh.lopez";s:5:"hakre";s:5:"hakre";s:7:"hauvong";s:7:"hauvong";s:4:"hnle";s:7:"Hinaloe";s:9:"hrishiv90";s:20:"Hrishikesh Vaipurkar";s:11:"hlashbrooke";s:15:"Hugh Lashbrooke";s:9:"hugobaeta";s:10:"Hugo Baeta";s:12:"polevaultweb";s:12:"Iain Poulson";s:7:"iandunn";s:8:"Ian Dunn";s:11:"iandstewart";s:11:"Ian Stewart";s:6:"icetee";s:6:"icetee";s:7:"igmoweb";s:19:"Ignacio Cruz Moreno";s:10:"headonfire";s:13:"Ihor Vorotnov";s:5:"imath";s:5:"imath";s:8:"ippetkov";s:8:"ippetkov";s:14:"ivankristianto";s:15:"Ivan Kristianto";s:8:"jdgrimes";s:11:"J.D. Grimes";s:7:"athsear";s:10:"J.Sugiyama";s:5:"jadpm";s:5:"jadpm";s:11:"jakubtyrcha";s:12:"jakub.tyrcha";s:7:"macmanx";s:10:"James Huff";s:11:"janhenckens";s:12:"Jan Henckens";s:4:"japh";s:4:"Japh";s:6:"jazbek";s:6:"jazbek";s:9:"jcroucher";s:9:"jcroucher";s:11:"jfarthing84";s:13:"Jeff Farthing";s:10:"jeffmatson";s:10:"JeffMatson";s:9:"cheffheid";s:14:"Jeffrey de Wit";s:15:"jeffpyebrookcom";s:17:"Jeffrey Schutzman";s:11:"jeffstieler";s:12:"Jeff Stieler";s:8:"jeichorn";s:8:"jeichorn";s:6:"jmdodd";s:16:"Jennifer M. Dodd";s:4:"jpry";s:10:"Jeremy Pry";s:8:"slimndap";s:13:"Jeroen Schmit";s:5:"jesin";s:7:"Jesin A";s:7:"engelen";s:18:"Jesper van Engelen";s:6:"jim912";s:6:"jim912";s:6:"jliman";s:6:"jliman";s:7:"jmayhak";s:7:"jmayhak";s:7:"jnylen0";s:7:"jnylen0";s:5:"jobst";s:18:"Jobst Schmalenbach";s:9:"joedolson";s:10:"Joe Dolson";s:8:"joehills";s:8:"joehills";s:15:"johnjamesjacoby";s:17:"John James Jacoby";s:10:"johnpbloch";s:13:"John P. Bloch";s:8:"mindctrl";s:11:"John Parris";s:13:"jonathanbardo";s:14:"Jonathan Bardo";s:7:"desrosj";s:19:"Jonathan Desrosiers";s:5:"duck_";s:8:"Jon Cave";s:11:"joostdevalk";s:13:"Joost de Valk";s:4:"koke";s:12:"Jorge Bernal";s:8:"betzster";s:9:"Josh Betz";s:7:"jjeaton";s:10:"Josh Eaton";s:7:"shelob9";s:12:"Josh Pollock";s:3:"jpr";s:3:"jpr";s:3:"jrf";s:3:"jrf";s:6:"juhise";s:11:"Juhi Saxena";s:8:"juliobox";s:12:"Julio Potier";s:8:"justdaiv";s:8:"justdaiv";s:13:"justinsainton";s:14:"Justin Sainton";s:7:"jshreve";s:13:"Justin Shreve";s:11:"jtsternberg";s:16:"Justin Sternberg";s:10:"greenshady";s:14:"Justin Tadlock";s:10:"kadamwhite";s:12:"K.Adam White";s:7:"trepmal";s:16:"Kailey (trepmal)";s:12:"kalenjohnson";s:12:"KalenJohnson";s:8:"karinedo";s:8:"karinedo";s:13:"karpstrucking";s:13:"karpstrucking";s:6:"ryelle";s:10:"Kelly Dwan";s:14:"kevinatelement";s:14:"kevinatelement";s:6:"kevinb";s:13:"Kevin Behrens";s:14:"kevinlangleyjr";s:13:"Kevin Langley";s:7:"kitchin";s:7:"kitchin";s:7:"ixkaito";s:4:"Kite";s:9:"kovshenin";s:20:"Konstantin Kovshenin";s:8:"krissiev";s:8:"KrissieV";s:6:"drozdz";s:22:"Krzysiek Dr&#243;żdż";s:9:"kurtpayne";s:10:"Kurt Payne";s:7:"laceous";s:7:"laceous";s:12:"lancewillett";s:13:"Lance Willett";s:9:"offereins";s:17:"Laurens Offereins";s:8:"lcherpit";s:8:"lcherpit";s:9:"ldinclaux";s:9:"ldinclaux";s:6:"leemon";s:6:"leemon";s:11:"leewillis77";s:10:"Lee Willis";s:9:"lessbloat";s:9:"lessbloat";s:11:"linuxologos";s:11:"linuxologos";s:8:"spmlucas";s:13:"Lucas Karpiuk";s:8:"lucatume";s:8:"lucatume";s:10:"luciole135";s:10:"luciole135";s:7:"lucymtc";s:10:"Lucy Tomas";s:10:"lukecarbis";s:11:"Luke Carbis";s:16:"madalinungureanu";s:17:"madalin.ungureanu";s:6:"mako09";s:4:"Mako";s:9:"manolis09";s:9:"manolis09";s:6:"iworks";s:15:"Marcin Pietrzak";s:5:"tyxla";s:14:"Marin Atanasov";s:9:"nofearinc";s:12:"Mario Peshev";s:7:"clorith";s:16:"Marius (Clorith)";s:12:"markoheijnen";s:13:"Marko Heijnen";s:7:"mechter";s:6:"Markus";s:9:"matheusfd";s:15:"Matheus Martins";s:11:"mattbagwell";s:12:"Matt Bagwell";s:9:"mgibbs189";s:10:"Matt Gibbs";s:7:"mboynes";s:14:"Matthew Boynes";s:12:"wp-architect";s:11:"Matthew Ell";s:7:"mattheu";s:20:"Matthew Haines-Young";s:5:"sivel";s:10:"Matt Martz";s:7:"veraxus";s:14:"Matt van Andel";s:9:"mazurstas";s:9:"mazurstas";s:8:"mbrandys";s:8:"mbrandys";s:8:"mdmcginn";s:8:"mdmcginn";s:13:"mehulkaklotar";s:14:"Mehul Kaklotar";s:6:"meitar";s:6:"Meitar";s:9:"melchoyce";s:10:"Mel Choyce";s:7:"meloniq";s:7:"meloniq";s:10:"micahmills";s:10:"micahmills";s:9:"micahwave";s:9:"micahwave";s:8:"mdawaffe";s:24:"Michael Adams (mdawaffe)";s:15:"michael-arestad";s:15:"Michael Arestad";s:5:"cainm";s:12:"Michael Cain";s:10:"michielhab";s:16:"Michiel Habraken";s:8:"mcguive7";s:10:"Mickey Kay";s:4:"mdgl";s:16:"Mike Glendinning";s:12:"mikehansenme";s:11:"Mike Hansen";s:10:"mikejolley";s:11:"Mike Jolley";s:9:"thaicloud";s:11:"Mike Jordan";s:12:"mikeschinkel";s:13:"Mike Schinkel";s:7:"dimadin";s:12:"Milan Dinić";s:10:"mismith227";s:10:"mismith227";s:13:"misterunknown";s:13:"misterunknown";s:15:"mitchoyoshitaka";s:35:"mitcho (Michael Yoshitaka Erlewine)";s:6:"monika";s:6:"Monika";s:11:"morganestes";s:11:"morganestes";s:5:"mor10";s:22:"Morten Rand-Hendriksen";s:6:"mt8biz";s:22:"moto hachi ( mt8.biz )";s:6:"mrmist";s:6:"mrmist";s:10:"usermrpapa";s:7:"Mr Papa";s:7:"mulvane";s:7:"mulvane";s:8:"neoscrib";s:8:"neoscrib";s:11:"next-season";s:11:"NExT-Season";s:12:"niallkennedy";s:13:"Niall Kennedy";s:11:"nicholas_io";s:11:"nicholas_io";s:9:"nickciske";s:10:"Nick Ciske";s:10:"nickduncan";s:10:"NickDuncan";s:16:"celloexpressions";s:11:"Nick Halsey";s:4:"rahe";s:12:"Nicolas Juen";s:5:"nikeo";s:5:"nikeo";s:10:"nikschavan";s:13:"Nikhil Chavan";s:8:"niklasbr";s:6:"Niklas";s:10:"nikolovtmw";s:14:"Nikola Nikolov";s:10:"nbachiyski";s:17:"Nikolay Bachiyski";s:8:"rabmalin";s:15:"Nilambar Sharma";s:11:"originalexe";s:11:"OriginalEXE";s:16:"pareshradadiya-1";s:15:"Paresh Radadiya";s:10:"obrienlabs";s:11:"Pat O''Brien";s:7:"pbearne";s:11:"Paul Bearne";s:13:"pauldewouters";s:15:"Paul de Wouters";s:9:"figureone";s:9:"Paul Ryan";s:9:"paulwilde";s:10:"Paul Wilde";s:9:"pavelevap";s:9:"pavelevap";s:10:"sirbrillig";s:12:"Payton Swick";s:5:"walbo";s:32:"Petter Walb&#248; Johnsg&#229;rd";s:5:"petya";s:15:"Petya Raykovska";s:9:"pfefferle";s:9:"pfefferle";s:17:"philiparthurmoore";s:19:"Philip Arthur Moore";s:11:"philiplakin";s:11:"PhilipLakin";s:6:"corphi";s:14:"Philipp Cordes";s:8:"delawski";s:14:"Piotr Delawski";s:7:"psoluch";s:12:"Piotr Soluch";s:7:"mordauk";s:17:"Pippin Williamson";s:13:"prasad-nevase";s:13:"Prasad Nevase";s:11:"nprasath002";s:17:"Prasath Nadarajah";s:13:"pratikchaskar";s:6:"Pratik";s:9:"rajnikmit";s:9:"rajnikmit";s:6:"racase";s:29:"Rakesh Lawaju (Racase Lawaju)";s:5:"ramay";s:5:"ramay";s:10:"raulillana";s:11:"Raul Illana";s:7:"renoirb";s:7:"renoirb";s:14:"rhubbardreverb";s:14:"rhubbardreverb";s:9:"rhyswynne";s:10:"Rhys Wynne";s:12:"rianrietveld";s:13:"Rian Rietveld";s:11:"iamfriendly";s:12:"Richard Tape";s:11:"miqrogroove";s:13:"Robert Chapin";s:13:"rodrigosprimo";s:13:"Rodrigo Primo";s:8:"rogerhub";s:10:"Roger Chen";s:13:"rommelxcastro";s:13:"Rommel Castro";s:7:"ronalfy";s:14:"Ronald Huereca";s:8:"wpmuguru";s:11:"Ron Rennick";s:10:"kingkool68";s:16:"Russell Heimlich";s:8:"ruudjoyo";s:9:"Ruud Laan";s:12:"ryankienstra";s:13:"Ryan Kienstra";s:6:"markel";s:11:"Ryan Markel";s:7:"welcher";s:12:"Ryan Welcher";s:3:"zeo";s:15:"Safirul Alredha";s:7:"salcode";s:14:"Sal Ferrarello";s:14:"salvoaranzulla";s:14:"salvoaranzulla";s:6:"sam2kb";s:6:"sam2kb";s:10:"sammybeats";s:10:"Sam Brodie";s:12:"solarissmoke";s:10:"Samir Shah";s:12:"samuelsidler";s:13:"Samuel Sidler";s:6:"otto42";s:18:"Samuel Wood (Otto)";s:12:"sanketparmar";s:13:"Sanket Parmar";s:7:"rosso99";s:10:"Sara Rosso";s:12:"sarciszewski";s:12:"sarciszewski";s:9:"sboisvert";s:9:"sboisvert";s:20:"scottbrownconsulting";s:20:"scottbrownconsulting";s:6:"sgrant";s:11:"Scott Grant";s:11:"sc0ttkclark";s:20:"Scott Kingsley Clark";s:11:"coffee2code";s:12:"Scott Reilly";s:8:"greglone";s:12:"ScreenfeedFr";s:6:"scribu";s:6:"scribu";s:10:"sdavis2702";s:10:"sdavis2702";s:10:"seanchayes";s:10:"Sean Hayes";s:15:"sebastianpisula";s:16:"Sebastian Pisula";s:11:"serpent7776";s:11:"serpent7776";s:9:"several27";s:9:"several27";s:13:"shimakyohsuke";s:13:"shimakyohsuke";s:9:"shinichin";s:18:"Shinichi Nishikawa";s:7:"side777";s:7:"side777";s:5:"pross";s:13:"Simon Prosser";s:13:"simonwheatley";s:14:"Simon Wheatley";s:7:"siobhan";s:7:"Siobhan";s:8:"sirzooro";s:8:"sirzooro";s:5:"sjmur";s:5:"sjmur";s:9:"smerriman";s:9:"smerriman";s:12:"spacedmonkey";s:12:"Spacedmonkey";s:7:"khromov";s:17:"Stanislav Khromov";s:8:"metodiew";s:15:"Stanko Metodiev";s:7:"stebbiv";s:7:"stebbiv";s:7:"miglosh";s:16:"Stefan Froehlich";s:9:"sillybean";s:15:"Stephanie Leary";s:6:"netweb";s:13:"Stephen Edgar";s:13:"stephenharris";s:14:"Stephen Harris";s:13:"stevegrunwell";s:14:"Steve Grunwell";s:10:"stevehenty";s:10:"stevehenty";s:12:"stevehoneynz";s:12:"SteveHoneyNZ";s:11:"stevenkword";s:11:"Steven Word";s:12:"charlestonsw";s:18:"Store Locator Plus";s:5:"sudar";s:11:"Sudar Muthu";s:15:"brainstormforce";s:5:"Sujay";s:5:"5um17";s:11:"Sumit Singh";s:10:"summerblue";s:10:"summerblue";s:12:"sunnyratilal";s:13:"Sunny Ratilal";s:8:"miyauchi";s:17:"Takayuki Miyauchi";s:8:"tanner-m";s:14:"Tanner Moushey";s:6:"tbcorr";s:6:"tbcorr";s:6:"tychay";s:10:"Terry Chay";s:12:"tharsheblows";s:12:"tharsheblows";s:8:"themiked";s:8:"theMikeD";s:8:"kraftner";s:20:"Thomas Kr&#228;ftner";s:8:"thomaswm";s:8:"thomaswm";s:8:"tfrommen";s:16:"Thorsten Frommen";s:4:"tott";s:12:"Thorsten Ott";s:9:"tigertech";s:9:"tigertech";s:10:"tillkruess";s:4:"Till";s:8:"tmatsuur";s:8:"tmatsuur";s:8:"tmeister";s:8:"tmeister";s:8:"tobiasbg";s:8:"TobiasBg";s:11:"tomharrigan";s:11:"TomHarrigan";s:11:"tommarshall";s:11:"tommarshall";s:9:"tomsommer";s:9:"tomsommer";s:7:"willmot";s:11:"Tom Willmot";s:8:"skithund";s:17:"Toni Viemer&#246;";s:9:"toro_unit";s:25:"Toro_Unit (Hiroshi Urabe)";s:8:"liljimmi";s:14:"Tracy Levesque";s:6:"rilwis";s:18:"Tran Ngoc Tuan Anh";s:7:"wpsmith";s:12:"Travis Smith";s:10:"trenzterra";s:10:"trenzterra";s:5:"tryon";s:15:"Tryon Eggleston";s:7:"tszming";s:7:"tszming";s:9:"junsuijin";s:2:"ty";s:7:"tywayne";s:10:"Ty Carlson";s:9:"chacha102";s:12:"Tyler Carter";s:14:"grapplerulrich";s:6:"Ulrich";s:8:"sorich87";s:13:"Ulrich Sossou";s:11:"umeshsingla";s:11:"Umesh Kumar";s:11:"umeshnevase";s:12:"Umesh Nevase";s:12:"utkarshpatel";s:7:"Utkarsh";s:8:"vilkatis";s:8:"vilkatis";s:14:"voldemortensen";s:14:"voldemortensen";s:14:"walterbarcelos";s:14:"walterbarcelos";s:11:"walterebert";s:12:"Walter Ebert";s:8:"webaware";s:8:"webaware";s:14:"webdevmattcrom";s:14:"webdevmattcrom";s:13:"wen-solutions";s:13:"WEN Solutions";s:9:"wenthemes";s:10:"WEN Themes";s:8:"wmertens";s:8:"wmertens";s:14:"wojtekszkutnik";s:15:"Wojtek Szkutnik";s:8:"wpdev101";s:8:"wpdev101";s:6:"theode";s:21:"WP Plugin Dev dot com";s:9:"alphawolf";s:6:"wpseek";s:8:"wturrell";s:8:"wturrell";s:10:"yamchhetri";s:11:"Yam Chhetri";s:5:"yoavf";s:10:"Yoav Farhi";s:8:"oxymoron";s:10:"Zach Wills";s:10:"zrothauser";s:14:"Zack Rothauser";s:8:"tollmanz";s:12:"Zack Tollman";s:9:"_smartik_";s:9:"_smartik_";}}s:10:"validators";a:4:{s:4:"name";s:11:"Translators";s:4:"type";s:7:"compact";s:7:"shuffle";b:1;s:4:"data";a:6:{s:5:"htdat";a:3:{i:0;s:5:"htdat";i:1;s:32:"13dcfc284d916a2bfc735bf521943ed2";i:2;s:5:"htdat";}s:10:"huynetbase";a:3:{i:0;s:10:"huynetbase";i:1;s:32:"0ad158f76567fab398480c8645f7505f";i:2;s:10:"huynetbase";}s:17:"philiparthurmoore";a:3:{i:0;s:19:"Philip Arthur Moore";i:1;s:32:"575b9511eb725e354e03ede7123fac4f";i:2;s:17:"philiparthurmoore";}s:9:"tonybui-1";a:3:{i:0;s:15:"Tony WooRockets";i:1;s:32:"c9f8cb6da18358d57e26f90cb0440cf9";i:2;s:9:"tonybui-1";}s:6:"rilwis";a:3:{i:0;s:18:"Tran Ngoc Tuan Anh";i:1;s:32:"7dd32111fd3b1efa31f93d98bd72172c";i:2;s:6:"rilwis";}s:4:"tucq";a:3:{i:0;s:4:"tucq";i:1;s:32:"547f6e8d42c67dbabe796a5162acd53e";i:2;s:4:"tucq";}}}s:11:"translators";a:3:{s:4:"name";b:0;s:4:"type";s:4:"list";s:4:"data";a:27:{s:9:"mrsugarvn";s:8:"Anh Tuan";s:11:"bravenguyen";s:11:"bravenguyen";s:7:"cuongnm";s:7:"cuongnm";s:9:"dannykong";s:9:"dannykong";s:8:"datanhlg";s:8:"datanhlg";s:10:"dinhtungdu";s:10:"dinhtungdu";s:12:"duytrung2121";s:12:"duytrung2121";s:12:"jamesblackvn";s:12:"jamesblackvn";s:7:"kemak92";s:7:"kemak92";s:11:"lang-bich-y";s:11:"Lang Bich Y";s:8:"leehauvt";s:8:"leehauvt";s:11:"luanthien97";s:11:"luanthien97";s:10:"mars193_dn";s:10:"mars193_dn";s:6:"minaby";s:6:"minaby";s:15:"nguyenvanduocit";s:15:"Nguyen Van Duoc";s:6:"nhymxu";s:6:"nhymxu";s:11:"sonlamtn200";s:11:"sonlamtn200";s:12:"thanhhaiulsa";s:12:"thanhhaiulsa";s:8:"thevuong";s:8:"thevuong";s:11:"thomastrant";s:11:"thomastrant";s:7:"thongta";s:10:"Thong Tran";s:12:"tranduythuan";s:14:"Tran Duy Thuan";s:5:"nmt90";s:10:"Triet Minh";s:10:"vptunguyen";s:9:"Tu Nguyen";s:10:"vanduc1102";s:10:"vanduc1102";s:8:"vndileco";s:8:"vndileco";s:11:"vungocson94";s:15:"Vũ Ngọc Sơn";}}s:9:"libraries";a:3:{s:4:"name";s:18:"External Libraries";s:4:"type";s:9:"libraries";s:4:"data";a:29:{i:0;a:2:{i:0;s:11:"Backbone.js";i:1;s:22:"http://backbonejs.org/";}i:1;a:2:{i:0;s:10:"Class POP3";i:1;s:24:"http://squirrelmail.org/";}i:2;a:2:{i:0;s:16:"Color Animations";i:1;s:32:"http://plugins.jquery.com/color/";}i:3;a:2:{i:0;s:15:"Horde Text Diff";i:1;s:22:"http://pear.horde.org/";}i:4;a:2:{i:0;s:11:"hoverIntent";i:1;s:45:"http://plugins.jquery.com/project/hoverIntent";}i:5;a:2:{i:0;s:13:"imgAreaSelect";i:1;s:42:"http://odyniec.net/projects/imgareaselect/";}i:6;a:2:{i:0;s:4:"Iris";i:1;s:34:"https://github.com/Automattic/Iris";}i:7;a:2:{i:0;s:6:"jQuery";i:1;s:18:"http://jquery.com/";}i:8;a:2:{i:0;s:9:"jQuery UI";i:1;s:20:"http://jqueryui.com/";}i:9;a:2:{i:0;s:14:"jQuery Hotkeys";i:1;s:41:"https://github.com/tzuryby/jquery.hotkeys";}i:10;a:2:{i:0;s:22:"jQuery serializeObject";i:1;s:49:"http://benalman.com/projects/jquery-misc-plugins/";}i:11;a:2:{i:0;s:12:"jQuery.query";i:1;s:39:"http://plugins.jquery.com/query-object/";}i:12;a:2:{i:0;s:14:"jQuery.suggest";i:1;s:41:"http://plugins.jquery.com/project/suggest";}i:13;a:2:{i:0;s:21:"jQuery UI Touch Punch";i:1;s:27:"http://touchpunch.furf.com/";}i:14;a:2:{i:0;s:5:"json2";i:1;s:43:"https://github.com/douglascrockford/JSON-js";}i:15;a:2:{i:0;s:7:"Masonry";i:1;s:28:"http://masonry.desandro.com/";}i:16;a:2:{i:0;s:15:"MediaElement.js";i:1;s:26:"http://mediaelementjs.com/";}i:17;a:2:{i:0;s:6:"PclZip";i:1;s:33:"http://www.phpconcept.net/pclzip/";}i:18;a:2:{i:0;s:6:"PemFTP";i:1;s:50:"http://www.phpclasses.org/browse/package/1743.html";}i:19;a:2:{i:0;s:6:"phpass";i:1;s:31:"http://www.openwall.com/phpass/";}i:20;a:2:{i:0;s:9:"PHPMailer";i:1;s:55:"http://code.google.com/a/apache-extras.org/p/phpmailer/";}i:21;a:2:{i:0;s:8:"Plupload";i:1;s:24:"http://www.plupload.com/";}i:22;a:2:{i:0;s:9:"SimplePie";i:1;s:21:"http://simplepie.org/";}i:23;a:2:{i:0;s:27:"The Incutio XML-RPC Library";i:1;s:34:"http://scripts.incutio.com/xmlrpc/";}i:24;a:2:{i:0;s:8:"Thickbox";i:1;s:32:"http://codylindley.com/thickbox/";}i:25;a:2:{i:0;s:7:"TinyMCE";i:1;s:23:"http://www.tinymce.com/";}i:26;a:2:{i:0;s:7:"Twemoji";i:1;s:34:"https://github.com/twitter/twemoji";}i:27;a:2:{i:0;s:13:"Underscore.js";i:1;s:24:"http://underscorejs.org/";}i:28;a:2:{i:0;s:6:"zxcvbn";i:1;s:33:"https://github.com/dropbox/zxcvbn";}}}}s:4:"data";a:2:{s:8:"profiles";s:33:"https://profiles.wordpress.org/%s";s:7:"version";s:3:"4.4";}}', 'yes'),
(2180, '_site_transient_timeout_browser_bbb5f5a04e2ca9abcefd7aa4aa5b30f6', '1459483008', 'yes'),
(2181, '_site_transient_browser_bbb5f5a04e2ca9abcefd7aa4aa5b30f6', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"49.0.2623.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2238, '_site_transient_timeout_browser_8bee024ee9eaf30cc1604d2cc177c077', '1459748761', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2239, '_site_transient_browser_8bee024ee9eaf30cc1604d2cc177c077', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"49.0.2623.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2306, '_site_transient_timeout_browser_23f2d81dd4d5f884df20bc50c26b94ed', '1459996058', 'yes'),
(2307, '_site_transient_browser_23f2d81dd4d5f884df20bc50c26b94ed', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.2.2564.133";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2646, '_site_transient_timeout_browser_39ff8f4a6f74e01fab95852d21fd2db3', '1460443974', 'yes'),
(2647, '_site_transient_browser_39ff8f4a6f74e01fab95852d21fd2db3', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"45.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2663, '_site_transient_timeout_browser_f622c47310912f39d025fb2c97dda6e9', '1460452604', 'yes'),
(2664, '_site_transient_browser_f622c47310912f39d025fb2c97dda6e9', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Safari";s:7:"version";s:3:"9.1";s:10:"update_url";s:28:"http://www.apple.com/safari/";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/safari.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/safari.png";s:15:"current_version";s:1:"5";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2789, '_site_transient_timeout_browser_047405b1878190291b641934ba2741f2', '1462409917', 'yes'),
(2790, '_site_transient_browser_047405b1878190291b641934ba2741f2', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"51.0.2704.22";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2867, '_site_transient_timeout_browser_b8c705b126d3304d82d7110cfd570670', '1462935756', 'yes'),
(2868, '_site_transient_browser_b8c705b126d3304d82d7110cfd570670', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"51.0.2704.29";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2921, '_site_transient_timeout_browser_2b02b4e928ba55bd81ea754d0f2b889b', '1463072870', 'yes'),
(2922, '_site_transient_browser_2b02b4e928ba55bd81ea754d0f2b889b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"51.0.2704.36";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3000, '_site_transient_timeout_browser_e823cd2ac5328ccc49e90362aac3d3ef', '1463191118', 'yes'),
(3001, '_site_transient_browser_e823cd2ac5328ccc49e90362aac3d3ef', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:13:"Mobile Safari";s:7:"version";s:6:"537.36";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3018, '_site_transient_timeout_browser_ba15455fccb9905222bc9a1407aad9eb', '1463196894', 'yes'),
(3019, '_site_transient_browser_ba15455fccb9905222bc9a1407aad9eb', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"50.0.2661.94";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3073, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1462777757', 'yes'),
(3074, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5862";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3630";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3598";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3109";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2782";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2346";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2205";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2088";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2032";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2007";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1982";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1929";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1863";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1676";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1641";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1568";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1530";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1371";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1304";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1285";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1218";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1103";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1082";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1005";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"981";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"970";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"912";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"912";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"908";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"899";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"898";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"832";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"820";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"790";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"778";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"763";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"756";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"752";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"746";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"745";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"742";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"741";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"703";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"694";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"689";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"683";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"683";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"680";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"661";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"652";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"646";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"642";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"614";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"611";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"599";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"597";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"595";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"593";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"588";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"579";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"569";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"567";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"562";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"551";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"551";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"536";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"534";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"517";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"516";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"515";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"506";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"506";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"503";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"501";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"482";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"464";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"456";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"454";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"449";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"448";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"440";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"439";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"425";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"422";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"421";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"418";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"417";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"408";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"408";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"404";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"403";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"402";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"398";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"397";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"396";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"392";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"391";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"389";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"389";}}', 'yes'),
(3076, 'global-admin-bar-plugin-setting', '1', 'yes'),
(3077, 'global-admin-bar-plugin-user-setting', '0', 'yes'),
(3078, 'global-admin-bar-roles', 'a:4:{i:1;s:6:"editor";i:2;s:6:"author";i:3;s:11:"contributor";i:4;s:10:"subscriber";}', 'yes'),
(3079, 'global-admin-bar-profiles', 'a:4:{i:1;s:6:"editor";i:2;s:6:"author";i:3;s:11:"contributor";i:4;s:10:"subscriber";}', 'yes'),
(3105, 'fau_primary_color', '#872f82', 'yes'),
(3106, 'fau_secondary_color', '#2581bf', 'yes'),
(3146, '_site_transient_timeout_browser_bcf660fa8d6f7ca83d9a4c57081f91aa', '1463543488', 'yes'),
(3147, '_site_transient_browser_bcf660fa8d6f7ca83d9a4c57081f91aa', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"49.2.2623.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3148, '_site_transient_timeout_browser_4c3471bc8295380c5814bc5a273b9acd', '1463547147', 'yes'),
(3149, '_site_transient_browser_4c3471bc8295380c5814bc5a273b9acd', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"50.0.2661.94";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3174, '_site_transient_timeout_browser_44f459b7c49145af9f3b889d384a3512', '1463638024', 'yes'),
(3175, '_site_transient_browser_44f459b7c49145af9f3b889d384a3512', 'a:9:{s:8:"platform";s:6:"iPhone";s:4:"name";s:6:"iPhone";s:7:"version";s:3:"9.0";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3185, '_site_transient_timeout_browser_c1684009aa9ada235a5e0f1527426b83', '1463718059', 'yes'),
(3186, '_site_transient_browser_c1684009aa9ada235a5e0f1527426b83', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"51.0.2704.47";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3203, '_site_transient_timeout_browser_19c3f72be30d4be0e3c9e069e11c1e7a', '1463725641', 'yes'),
(3204, '_site_transient_browser_19c3f72be30d4be0e3c9e069e11c1e7a', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:17:"Internet Explorer";s:7:"version";s:3:"8.0";s:10:"update_url";s:51:"http://www.microsoft.com/windows/internet-explorer/";s:7:"img_src";s:45:"http://s.wordpress.org/images/browsers/ie.png";s:11:"img_src_ssl";s:44:"https://wordpress.org/images/browsers/ie.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:1;s:8:"insecure";b:0;}', 'yes'),
(3205, '_site_transient_timeout_browser_6d44eab61dcf5b1f0e6fa8f6595ee1bc', '1463753652', 'yes'),
(3206, '_site_transient_browser_6d44eab61dcf5b1f0e6fa8f6595ee1bc', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:17:"Internet Explorer";s:7:"version";s:2:"11";s:10:"update_url";s:51:"http://www.microsoft.com/windows/internet-explorer/";s:7:"img_src";s:45:"http://s.wordpress.org/images/browsers/ie.png";s:11:"img_src_ssl";s:44:"https://wordpress.org/images/browsers/ie.png";s:15:"current_version";s:1:"9";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3236, '_site_transient_timeout_available_translations', '1463301719', 'yes'),
(3237, '_site_transient_available_translations', 'a:79:{s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-12 10:15:45";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-07 13:09:53";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-07 20:53:51";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-08 08:50:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-08 13:17:04";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 09:40:25";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-04-08 07:49:01";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-26 16:01:40";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-08 22:48:20";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-04-10 14:06:54";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.4.3/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-29 10:47:54";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-26 16:11:56";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-04-10 14:21:56";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-04-16 07:59:10";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-04-26 02:01:14";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-15 11:52:35";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-14 21:14:29";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-06 23:10:59";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-07 04:39:48";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-25 13:07:29";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-03-02 20:27:44";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-24 15:17:36";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-09 18:08:52";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-23 00:46:01";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-13 06:14:13";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-07 17:35:10";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-13 12:28:49";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-18 06:44:22";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-03-03 10:31:09";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-31 19:24:20";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-03-22 18:30:35";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-08 13:47:35";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-09 02:16:19";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-03-08 17:19:17";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-13 16:48:03";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-03-16 18:59:27";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-04-11 05:43:28";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-03-04 08:39:26";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-03 14:37:42";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-21 16:17:50";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-08 00:20:24";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-05-07 07:42:26";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-04-11 02:48:55";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-09 08:53:31";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-05-08 02:13:46";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-08 20:07:24";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-28 05:41:39";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.11/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-07 10:01:09";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-23 18:59:13";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-14 12:19:44";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-05-11 06:18:43";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-03-24 15:31:29";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.11/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-04-20 19:55:09";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-03-03 17:32:29";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-05-13 11:05:15";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-03-21 18:23:26";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-26 11:29:13";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-23 10:30:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-09 09:09:51";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-04-09 12:04:20";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-08 03:22:55";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-17 23:12:27";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.11/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-03 22:04:41";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-04-12 09:17:17";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2015-12-12 22:55:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(3250, '_site_transient_timeout_browser_b1e1754e09b66236586497532427df6b', '1463896301', 'yes'),
(3251, '_site_transient_browser_b1e1754e09b66236586497532427df6b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"50.0.2661.102";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3254, 'rewrite_rules', 'a:76:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(3271, '_site_transient_timeout_browser_c9be69a50ba1d731e7faab4a9f47968c', '1464056974', 'yes'),
(3272, '_site_transient_browser_c9be69a50ba1d731e7faab4a9f47968c', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"49.2.2623.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3311, '_site_transient_timeout_browser_1fcf0d84efa6c9ac92eb8fb18b377b04', '1464224323', 'yes'),
(3312, '_site_transient_browser_1fcf0d84efa6c9ac92eb8fb18b377b04', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"51.0.2704.54";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3349, '_site_transient_timeout_browser_2bf78cb2f6f0604d5d237b451fa3d2f4', '1464320597', 'yes'),
(3350, '_site_transient_browser_2bf78cb2f6f0604d5d237b451fa3d2f4', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"49.0.2623.112";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3387, '_site_transient_timeout_browser_e8eb252c3fcd22959a3f14a10d44b7af', '1464568609', 'yes'),
(3388, '_site_transient_browser_e8eb252c3fcd22959a3f14a10d44b7af', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"49.2.2623.124";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3447, '_site_transient_timeout_browser_6777022040190ec8fbcd24843cf4a4ea', '1464914727', 'yes'),
(3448, '_site_transient_browser_6777022040190ec8fbcd24843cf4a4ea', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"46.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3555, '_site_transient_timeout_browser_670a5ab763d60c1df0e16a2a74951c56', '1465577801', 'yes'),
(3556, '_site_transient_browser_670a5ab763d60c1df0e16a2a74951c56', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"50.0.2661.102";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3664, '_site_transient_timeout_browser_e455a13ec760b5a84894584e60f78d33', '1466340177', 'yes'),
(3665, '_site_transient_browser_e455a13ec760b5a84894584e60f78d33', 'a:9:{s:8:"platform";s:4:"iPad";s:4:"name";s:4:"iPad";s:7:"version";s:3:"9.0";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3865, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:12:"notify_email";s:1:"1";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1466998745;s:15:"version_checked";s:5:"4.4.4";s:12:"translations";a:0:{}}', 'yes'),
(3892, '_site_transient_timeout_browser_5083c9c42cd239a8ecee868145a7a671', '1467302180', 'yes'),
(3893, '_site_transient_browser_5083c9c42cd239a8ecee868145a7a671', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"49.2.2623.126";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3954, '_site_transient_timeout_browser_15715267d198340959d502d1d979b903', '1467599681', 'yes'),
(3955, '_site_transient_browser_15715267d198340959d502d1d979b903', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"52.0.2743.49";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(3956, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1467038092', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3957, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Jun 2016 16:40:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=4.6-alpha-37876";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.5.3 Maintenance and Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2016/06/wordpress-4-5-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 18 Jun 2016 09:38:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4311";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:460:"WordPress 4.5.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.5.2 and earlier are affected by several security issues: redirect bypass in the customizer, reported by Yassine Aboukir; two different XSS problems via attachment names, reported by Jouko Pynnönen and Divyesh Prajapati; revision history information disclosure, reported [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Adam Silverstein";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3571:"<p>WordPress 4.5.3 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.5.2 and earlier are affected by several security issues: redirect bypass in the customizer, reported by <a href="http://yassineaboukir.com">Yassine Aboukir</a>; two different XSS problems via attachment names, reported by <a href="https://klikki.fi/">Jouko Pynnönen</a> and <a href="https://twitter.com/divy_er">Divyesh Prajapati</a>; revision history information disclosure, reported independently by <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a> from the WordPress security team and by Dan Moen from the Wordfence Research Team; oEmbed denial of service reported by Jennifer Dodd from Automattic; unauthorized category removal from a post, reported by David Herrera from <a href="https://www.alleyinteractive.com/">Alley Interactive</a>; password change via stolen cookie, reported by <a href="https://blogwaffe.com/">Michael Adams</a> from the WordPress security team; and some less secure <code>sanitize_file_name</code> edge cases reported by <a href="http://peter.westwood.name/">Peter Westwood</a> of  the WordPress security team.</p>\n<p>Thank you to the reporters for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.5.3 fixes 17 bugs from 4.5, 4.5.1 and 4.5.2. For more information, see the <a href="https://codex.wordpress.org/Version_4.5.3">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?milestone=4.5.3">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.5.3</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.5.3.</p>\n<p>Thanks to everyone who contributed to 4.5.3:</p>\n<p><a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/neverything">Silvan Hagen</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>,  <a href="https://profiles.wordpress.org/mdawaffe">Michael Adams</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/jmdodd">Jennifer M. Dodd</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/SergeyBiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a> and <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"WordPress 4.5.2 Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2016/05/wordpress-4-5-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 May 2016 19:17:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4290";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:381:"WordPress 4.5.2 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.5.1 and earlier are affected by a SOME vulnerability through Plupload, the third-party library WordPress uses for uploading files. WordPress versions 4.2 through 4.5.1 are vulnerable to reflected XSS [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1669:"<p>WordPress 4.5.2 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.5.1 and earlier are affected by a <abbr title="Same-Origin Method Execution">SOME</abbr> vulnerability through Plupload, the third-party library WordPress uses for uploading files. WordPress versions 4.2 through 4.5.1 are vulnerable to reflected XSS using specially crafted URIs through MediaElement.js, the third-party library used for media players. MediaElement.js and Plupload have also released updates fixing these issues.</p>\n<p>Both issues were analyzed and reported by Mario Heiderich, Masato Kinugawa, and Filedescriptor from <a href="https://cure53.de/">Cure53</a>. Thanks to the team for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>, and to the Plupload and MediaElement.js teams for working closely with us to coördinate and fix these issues.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.5.2</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.5.2.</p>\n<p>Additionally, there are multiple widely publicized vulnerabilities in the ImageMagick image processing library, which is used by a number of hosts and is supported in WordPress. For our current response to these issues, see <a href="https://make.wordpress.org/core/2016/05/06/imagemagick-vulnerability-information/">this post on the core development blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"WordPress 4.5.1 Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/news/2016/04/wordpress-4-5-1-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 26 Apr 2016 18:58:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4269";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:358:"After about six million downloads of WordPress 4.5, we are pleased to announce the immediate availability of WordPress 4.5.1, a maintenance release. This release fixes 12 bugs, chief among them a singular class issue that broke sites based on the Twenty Eleven theme, an incompatibility between certain Chrome versions and the visual editor, and an [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Adam Silverstein";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2134:"<p>After about six million downloads of WordPress 4.5, we are pleased to announce the immediate availability of WordPress 4.5.1, a maintenance release.</p>\n<p>This release fixes 12 bugs, chief among them a singular class issue that broke sites based on the Twenty Eleven theme, an incompatibility between certain Chrome versions and the visual editor, and an Imagick bug that could break media uploads. This maintenance release fixes a total of 12 bugs in Version 4.5. <span style="line-height: 1.5">For more information, see the </span><a style="line-height: 1.5" href="https://codex.wordpress.org/Version_4.5.1">release notes</a><span style="line-height: 1.5"> or consult the </span><a style="line-height: 1.5" href="https://core.trac.wordpress.org/log/branches/4.5?rev=37295&amp;stop_rev=37182">list of changes</a><span style="line-height: 1.5">.</span></p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.5.1</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.5.1.</p>\n<p>Thanks to everyone who contributed to 4.5.1:</p>\n<p><a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/gblsm">gblsm</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandi</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, and <a href="https://profiles.wordpress.org/WiZZarD_">Pieter</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"WordPress 4.5 “Coleman”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"https://wordpress.org/news/2016/04/coleman/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 12 Apr 2016 19:15:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4203";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:383:"Version 4.5 of WordPress, named “Coleman” in honor of jazz saxophonist Coleman Hawkins, is available for download or update in your WordPress dashboard. New features in 4.5 help streamline your workflow, whether you’re writing or building your site. Editing Improvements Inline Linking Stay focused on your writing with a less distracting interface that keeps you in [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Mike Schroder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:27081:"<p>Version 4.5 of WordPress, named “Coleman” in honor of jazz saxophonist Coleman Hawkins, is available for download or update in your WordPress dashboard. New features in 4.5 help streamline your workflow, whether you’re writing or building your site.</p>\n<p><iframe width=''692'' height=''388'' src=''https://videopress.com/embed/scFdjVo6?hd=0'' frameborder=''0'' allowfullscreen></iframe><script src=''https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243''></script></p>\n<hr />\n<h2 style="text-align: center">Editing Improvements</h2>\n<p><img class="aligncenter size-full wp-image-4220" src="https://i2.wp.com/wordpress.org/news/files/2016/04/illustration-short-inlinelinks.png?resize=692%2C277&#038;ssl=1" alt="illustration-short-inlinelinks" srcset="https://i2.wp.com/wordpress.org/news/files/2016/04/illustration-short-inlinelinks.png?w=1000&amp;ssl=1 1000w, https://i2.wp.com/wordpress.org/news/files/2016/04/illustration-short-inlinelinks.png?resize=300%2C120&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/04/illustration-short-inlinelinks.png?resize=768%2C307&amp;ssl=1 768w" sizes="(max-width: 692px) 100vw, 692px" data-recalc-dims="1" /></p>\n<h3>Inline Linking</h3>\n<p>Stay focused on your writing with a less distracting interface that keeps you in place and allows you to easily link to your content.</p>\n<p><img class="aligncenter size-full wp-image-4265" src="https://i0.wp.com/wordpress.org/news/files/2016/04/editing-shortcuts-big.gif?resize=692%2C415&#038;ssl=1" alt="editing-shortcuts-big" data-recalc-dims="1" /></p>\n<h3>Formatting Shortcuts</h3>\n<p>Do you enjoy using formatting shortcuts for lists and headings? Now they’re even more useful, with horizontal lines and <code>&lt;code&gt;</code>.</p>\n<hr />\n<h2 style="text-align: center">Customization Improvements</h2>\n<p><img class="aligncenter size-full wp-image-4221" src="https://i0.wp.com/wordpress.org/news/files/2016/04/illustration-short-responsive-preview.png?resize=692%2C277&#038;ssl=1" alt="illustration-short-responsive-preview" srcset="https://i0.wp.com/wordpress.org/news/files/2016/04/illustration-short-responsive-preview.png?w=1000&amp;ssl=1 1000w, https://i0.wp.com/wordpress.org/news/files/2016/04/illustration-short-responsive-preview.png?resize=300%2C120&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2016/04/illustration-short-responsive-preview.png?resize=768%2C307&amp;ssl=1 768w" sizes="(max-width: 692px) 100vw, 692px" data-recalc-dims="1" /></p>\n<h3>Live Responsive Previews</h3>\n<p>Make sure your site looks great on all screens! Preview mobile, tablet, and desktop views directly in the customizer.</p>\n<p><img class="aligncenter wp-image-4239 size-full" src="https://i2.wp.com/wordpress.org/news/files/2016/04/illustration-short-customlogo-whitespace.png?resize=692%2C304&#038;ssl=1" srcset="https://i2.wp.com/wordpress.org/news/files/2016/04/illustration-short-customlogo-whitespace.png?w=1000&amp;ssl=1 1000w, https://i2.wp.com/wordpress.org/news/files/2016/04/illustration-short-customlogo-whitespace.png?resize=300%2C132&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/04/illustration-short-customlogo-whitespace.png?resize=768%2C338&amp;ssl=1 768w" sizes="(max-width: 692px) 100vw, 692px" data-recalc-dims="1" /></p>\n<h3>Custom Logos</h3>\n<p>Themes can now support logos for your business or brand. Try it out with Twenty Sixteen and Twenty Fifteen in the Site Identity section of the customizer.</p>\n<hr />\n<h2 style="text-align: center">Under the Hood</h2>\n<div class="under-the-hood three-col">\n<div class="col">\n<h3>Smart Image Resizing</h3>\n<p>Generated images now load up to 50% faster with no noticeable quality loss. <a href="https://make.wordpress.org/core/2016/03/12/performance-improvements-for-images-in-wordpress-4-5/">It’s really cool</a>.</p>\n</div>\n<div class="col">\n<h3>Selective Refresh</h3>\n<p>The customizer now supports a <a href="https://make.wordpress.org/core/2016/02/16/selective-refresh-in-the-customizer/">comprehensive framework</a> for rendering parts of the preview without rewriting your PHP code in JavaScript.</p>\n</div>\n<div class="col">\n<h3>Script Loader Improvements</h3>\n<p>Better support has been added for script header/footer dependencies. New <code><a href="https://make.wordpress.org/core/2016/03/08/enhanced-script-loader-in-wordpress-4-5/">wp_add_inline_script()</a></code> enables adding extra code to registered scripts.</p>\n<h3>Better Embed Templates</h3>\n<p>Embed templates have been split into parts and can be <a href="https://make.wordpress.org/core/2016/03/11/embeds-changes-in-wordpress-4-5/">directly overridden by themes</a> via the template hierarchy.</p>\n<h3>JavaScript Library Updates</h3>\n<p>jQuery 1.12.3, jQuery Migrate 1.4.0, Backbone 1.2.3, and Underscore 1.8.3 are bundled.</p>\n</div>\n</div>\n<div class="under-the-hood two-col"></div>\n<hr />\n<h2 style="text-align: center">The Crew</h2>\n<p><a class="alignleft" href="https://profiles.wordpress.org/mikeschroder"><img src="https://www.gravatar.com/avatar/76424a001dc6b3ebb4faca0c567800c4?d=mm&amp;s=180&amp;r=G" alt="Mike Schroder" width="80" height="80" /></a>This release was led by <a href="https://getsource.net">Mike Schroder</a>, backed up by <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a> as Release Deputy, <a href="https://choycedesign.com/">Mel Choyce</a> as Release Design Lead, and the help of these fine individuals. There are <span style="font-weight: 400">298</span> contributors with props in this release. Pull up some Coleman Hawkins on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/mercime">@mercime</a>, <a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/uglyrobot">Aaron Edwards</a>, <a href="https://profiles.wordpress.org/ahockley">Aaron Hockley</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/abiralneupane">Abiral Neupane</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/aidanlane">aidanlane</a>, <a href="https://profiles.wordpress.org/ambrosey">Alice Brosey</a>, <a href="https://profiles.wordpress.org/arush">Amanda Rush</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andg">Andrea Gandino</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rockwell15">Andrew Rockwell</a>, <a href="https://profiles.wordpress.org/andizer">Andy</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/atimmer">Anton Timmermans</a>, <a href="https://profiles.wordpress.org/apaliku">apaliku</a>, <a href="https://profiles.wordpress.org/aramzs">Aram Zucker-Scharff</a>, <a href="https://profiles.wordpress.org/ashmatadeen">ash.matadeen</a>, <a href="https://profiles.wordpress.org/bappidgreat">Ashok Kumar Nath</a>, <a href="https://profiles.wordpress.org/bandonrandon">BandonRandon</a>, <a href="https://profiles.wordpress.org/barryceelen">Barry Ceelen</a>, <a href="https://profiles.wordpress.org/empireoflight">Ben Dunkle</a>, <a href="https://profiles.wordpress.org/berengerzyla">berengerzyla</a>, <a href="https://profiles.wordpress.org/neoxx">Bernhard Riedl</a>, <a href="https://profiles.wordpress.org/thisisit">Bhushan S. Jawle</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/williamsba1">Brad Williams</a>, <a href="https://profiles.wordpress.org/bradyvercher">Brady Vercher</a>, <a href="https://profiles.wordpress.org/thebrandonallen">Brandon Allen</a>, <a href="https://profiles.wordpress.org/bhubbard">Brandon Hubbard</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/krogsgard">Brian Krogsgard</a>, <a href="https://profiles.wordpress.org/borgesbruno">Bruno Borges</a>, <a href="https://profiles.wordpress.org/chmac">Callum Macdonald</a>, <a href="https://profiles.wordpress.org/camikaos">Cami Kaos</a>, <a href="https://profiles.wordpress.org/chandrapatel">Chandra Patel</a>, <a href="https://profiles.wordpress.org/mackensen">Charles Fulton</a>, <a href="https://profiles.wordpress.org/chetanchauhan">Chetan Chauhan</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chrico">ChriCo</a>, <a href="https://profiles.wordpress.org/chriscct7">Chris Christoff</a>, <a href="https://profiles.wordpress.org/chris_dev">Chris Mok</a>, <a href="https://profiles.wordpress.org/christophherr">christophherr</a>, <a href="https://profiles.wordpress.org/ckoerner">ckoerner</a>, <a href="https://profiles.wordpress.org/claudiosanches">Claudio Sanches</a>, <a href="https://profiles.wordpress.org/compute">Compute</a>, <a href="https://profiles.wordpress.org/coreymcollins">coreymcollins</a>, <a href="https://profiles.wordpress.org/d4z_c0nf">d4z_c0nf</a>, <a href="https://profiles.wordpress.org/extendwings">Daisuke Takahashi</a>, <a href="https://profiles.wordpress.org/danhgilmore">danhgilmore</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/scarinessreported">Daniel Bailey</a>, <a href="https://profiles.wordpress.org/redsweater">Daniel Jalkut (Red Sweater)</a>, <a href="https://profiles.wordpress.org/diddledan">Daniel Llewellyn</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/danielpataki">danielpataki</a>, <a href="https://profiles.wordpress.org/dvankooten">Danny van Kooten</a>, <a href="https://profiles.wordpress.org/thewanderingbrit">Dave Clements</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/dbrumbaugh10up">David Brumbaugh</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/dnewton">David Newton</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/folletto">Davide ''Folletto'' Casali</a>, <a href="https://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="https://profiles.wordpress.org/realloc">Dennis Ploetner</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dmsnell">dmsnell</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/dossy">Dossy Shiobara</a>, <a href="https://profiles.wordpress.org/dotancohen">Dotan Cohen</a>, <a href="https://profiles.wordpress.org/drebbitsweb">Dreb Bits</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/duaneblake">duaneblake</a>, <a href="https://profiles.wordpress.org/kucrut">Dzikri Aziz</a>, <a href="https://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/codex-m">Emerson Maningo</a>, <a href="https://profiles.wordpress.org/enej">Enej Bajgoric</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/ebinnion">Eric Binnion</a>, <a href="https://profiles.wordpress.org/ericdaams">Eric Daams</a>, <a href="https://profiles.wordpress.org/ethitter">Erick Hitter</a>, <a href="https://profiles.wordpress.org/eherman24">Evan Herman</a>, <a href="https://profiles.wordpress.org/fab1en">Fabien Quatravaux</a>, <a href="https://profiles.wordpress.org/faishal">faishal</a>, <a href="https://profiles.wordpress.org/fantasyworld">fantasyworld</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/finnj">finnj</a>, <a href="https://profiles.wordpress.org/firebird75">firebird75</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/fusillicode">fusillicode</a>, <a href="https://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/gblsm">gblsm</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/garusky">Giuseppe Mamone</a>, <a href="https://profiles.wordpress.org/jubstuff">Giustino Borzacchiello</a>, <a href="https://profiles.wordpress.org/grantpalin">Grant Palin</a>, <a href="https://profiles.wordpress.org/groovecoder">groovecoder</a>, <a href="https://profiles.wordpress.org/wido">Guido Scialfa</a>, <a href="https://profiles.wordpress.org/bordoni">Gustavo Bordoni</a>, <a href="https://profiles.wordpress.org/hakre">hakre</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/hlashbrooke">Hugh Lashbrooke</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/igmoweb">Ignacio Cruz Moreno</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/iamntz">Ionut Staicu</a>, <a href="https://profiles.wordpress.org/ivankristianto">Ivan Kristianto</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jadpm">jadpm</a>, <a href="https://profiles.wordpress.org/jamesdigioia">James DiGioia</a>, <a href="https://profiles.wordpress.org/jason_the_adams">Jason</a>, <a href="https://profiles.wordpress.org/jaspermdegroot">Jasper de Groot</a>, <a href="https://profiles.wordpress.org/cheffheid">Jeffrey de Wit</a>, <a href="https://profiles.wordpress.org/jeffpyebrookcom">Jeffrey Schutzman</a>, <a href="https://profiles.wordpress.org/jmdodd">Jennifer M. Dodd</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jeherve">Jeremy Herve</a>, <a href="https://profiles.wordpress.org/jpry">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/jesin">Jesin A</a>, <a href="https://profiles.wordpress.org/ardathksheyna">Jess G.</a>, <a href="https://profiles.wordpress.org/boluda">Joan Boluda</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/joelerr">joelerr</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnnypea">JohnnyPea</a>, <a href="https://profiles.wordpress.org/jbrinley">Jonathan Brinley</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/keraweb">Jory Hogeveen</a>, <a href="https://profiles.wordpress.org/joefusco">Joseph Fusco</a>, <a href="https://profiles.wordpress.org/joshlevinson">Josh Levinson</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/jrchamp">jrchamp</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/juanfra">Juanfra Aldasoro</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/juliobox">Julio Potier</a>, <a href="https://profiles.wordpress.org/katieburch">katieburch</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/khag7">Kevin Hagerty</a>, <a href="https://profiles.wordpress.org/kiranpotphode">Kiran Potphode</a>, <a href="https://profiles.wordpress.org/kwight">Kirk Wight</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kjbenk">kjbenk</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kouratoras">Konstantinos Kouratoras</a>, <a href="https://profiles.wordpress.org/krissiev">KrissieV</a>, <a href="https://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="https://profiles.wordpress.org/leemon">leemon</a>, <a href="https://profiles.wordpress.org/layotte">Lew Ayotte</a>, <a href="https://profiles.wordpress.org/liamdempsey">Liam Dempsey</a>, <a href="https://profiles.wordpress.org/luan-ramos">Luan Ramos</a>, <a href="https://profiles.wordpress.org/luciole135">luciole135</a>, <a href="https://profiles.wordpress.org/lpawlik">Lukas Pawlik</a>, <a href="https://profiles.wordpress.org/latz">Lutz Schr&#246;er</a>, <a href="https://profiles.wordpress.org/madvic">madvic</a>, <a href="https://profiles.wordpress.org/marcochiesi">Marco Chiesi</a>, <a href="https://profiles.wordpress.org/tyxla">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/nofearinc">Mario Peshev</a>, <a href="https://profiles.wordpress.org/mark8barnes">Mark Barnes</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mapk">Mark Uraine</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/gitlost">Martin Burke</a>, <a href="https://profiles.wordpress.org/mattfelten">Matt Felten</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/mattwiebe">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mattgeri">MattGeri</a>, <a href="https://profiles.wordpress.org/maweder">maweder</a>, <a href="https://profiles.wordpress.org/mayukojpn">Mayo Moriyama</a>, <a href="https://profiles.wordpress.org/mcapybara">mcapybara</a>, <a href="https://profiles.wordpress.org/mehulkaklotar">Mehul Kaklotar</a>, <a href="https://profiles.wordpress.org/meitar">Meitar</a>, <a href="https://profiles.wordpress.org/mensmaximus">mensmaximus</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michalzuber">michalzuber</a>, <a href="https://profiles.wordpress.org/micropat">micropat</a>, <a href="https://profiles.wordpress.org/ipstenu">Mika Epstein</a>, <a href="https://profiles.wordpress.org/mdgl">Mike Glendinning</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikejolley">Mike Jolley</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/usermrpapa">Mr Papa</a>, <a href="https://profiles.wordpress.org/mwidmann">mwidmann</a>, <a href="https://profiles.wordpress.org/nexurium">nexurium</a>, <a href="https://profiles.wordpress.org/niallkennedy">Niall Kennedy</a>, <a href="https://profiles.wordpress.org/nicdford">Nic Ford</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey </a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/ninos-ego">Ninos</a>, <a href="https://profiles.wordpress.org/oaron">oaron</a>, <a href="https://profiles.wordpress.org/overclokk">overclokk</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/obrienlabs">Pat O''Brien</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/pauldewouters">Paul de Wouters</a>, <a href="https://profiles.wordpress.org/sirbrillig">Payton Swick</a>, <a href="https://profiles.wordpress.org/perezlabs">Perez Labs</a>, <a href="https://profiles.wordpress.org/gungeekatx">Pete Nelson</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/cadeyrn">petermolnar</a>, <a href="https://profiles.wordpress.org/walbo">Petter Walb&#248; Johnsg&#229;rd</a>, <a href="https://profiles.wordpress.org/wizzard_">Pieter</a>, <a href="https://profiles.wordpress.org/mordauk">Pippin Williamson</a>, <a href="https://profiles.wordpress.org/ptahdunbar">Pirate Dunbar</a>, <a href="https://profiles.wordpress.org/prettyboymp">prettyboymp</a>, <a href="https://profiles.wordpress.org/profforg">Profforg</a>, <a href="https://profiles.wordpress.org/programmin">programmin</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rahalaboulfeth">rahal.aboulfeth</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/lamosty">Rastislav Lamos</a>, <a href="https://profiles.wordpress.org/rickalee">Ricky Lee Whittemore</a>, <a href="https://profiles.wordpress.org/ritteshpatel">Ritesh Patel</a>, <a href="https://profiles.wordpress.org/rob">rob</a>, <a href="https://profiles.wordpress.org/rogerhub">Roger Chen</a>, <a href="https://profiles.wordpress.org/romsocial">RomSocial</a>, <a href="https://profiles.wordpress.org/ruudjoyo">Ruud Laan</a>, <a href="https://profiles.wordpress.org/ryan">Ryan Boren</a>, <a href="https://profiles.wordpress.org/ryankienstra">Ryan Kienstra</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/sagarjadhav">Sagar Jadhav</a>, <a href="https://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="https://profiles.wordpress.org/salvoaranzulla">salvoaranzulla</a>, <a href="https://profiles.wordpress.org/samhotchkiss">Sam Hotchkiss</a>, <a href="https://profiles.wordpress.org/rosso99">Sara Rosso</a>, <a href="https://profiles.wordpress.org/sarciszewski">Scott Arciszewski</a>, <a href="https://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/scottbrownconsulting">scottbrownconsulting</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/sergejmueller">Sergej M&#252;ller</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shamess">Shane</a>, <a href="https://profiles.wordpress.org/shinichin">Shinichi Nishikawa</a>, <a href="https://profiles.wordpress.org/sidati">Sidati</a>, <a href="https://profiles.wordpress.org/siobhan">Siobhan</a>, <a href="https://profiles.wordpress.org/aargh-a-knot">sky</a>, <a href="https://profiles.wordpress.org/slushman">slushman</a>, <a href="https://profiles.wordpress.org/smerriman">smerriman</a>, <a href="https://profiles.wordpress.org/stephanethomas">stephanethomas</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/stevegrunwell">Steve Grunwell</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/charlestonsw">Store Locator Plus</a>, <a href="https://profiles.wordpress.org/subharanjan">Subharanjan</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/5um17">Sumit Singh</a>, <a href="https://profiles.wordpress.org/tacoverdo">Taco Verdonschot</a>, <a href="https://profiles.wordpress.org/tahteche">tahteche</a>, <a href="https://profiles.wordpress.org/iamtakashi">Takashi Irie</a>, <a href="https://profiles.wordpress.org/takayukister">Takayuki Miyoshi</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tharsheblows">tharsheblows</a>, <a href="https://profiles.wordpress.org/themiked">theMikeD</a>, <a href="https://profiles.wordpress.org/thomaswm">thomaswm</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/timplunkett">timplunkett</a>, <a href="https://profiles.wordpress.org/tmuikku">tmuikku</a>, <a href="https://profiles.wordpress.org/skithund">Toni Viemer&#246;</a>, <a href="https://profiles.wordpress.org/toro_unit">Toro_Unit (Hiroshi Urabe)</a>, <a href="https://profiles.wordpress.org/liljimmi">Tracy Levesque</a>, <a href="https://profiles.wordpress.org/rilwis">Tran Ngoc Tuan Anh</a>, <a href="https://profiles.wordpress.org/wpsmith">Travis Smith</a>, <a href="https://profiles.wordpress.org/tywayne">Ty Carlson</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/utkarshpatel">Utkarsh</a>, <a href="https://profiles.wordpress.org/vhomenko">vhomenko</a>, <a href="https://profiles.wordpress.org/virgodesign">virgodesign</a>, <a href="https://profiles.wordpress.org/vladolaru">vlad.olaru</a>, <a href="https://profiles.wordpress.org/voldemortensen">voldemortensen</a>, <a href="https://profiles.wordpress.org/vtieu">vtieu</a>, <a href="https://profiles.wordpress.org/webaware">webaware</a>, <a href="https://profiles.wordpress.org/wesleye">Wesley Elfring</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/wisdmlabs">WisdmLabs</a>, <a href="https://profiles.wordpress.org/wpdelighter">WP Delighter</a>, <a href="https://profiles.wordpress.org/wp-architect">wp-architect</a>, <a href="https://profiles.wordpress.org/xavortm">xavortm</a>, <a href="https://profiles.wordpress.org/yetanotherdaniel">yetAnotherDaniel</a>, and <a href="https://profiles.wordpress.org/zinigor">zinigor</a>.\n<p>&nbsp;</p>\n<p>Special thanks go to <a href="http://siobhanmckeown.com/">Siobhan McKeown</a> for producing the release video and <a href="https://jacklenox.com">Jack Lenox</a> for the voice-over.</p>\n<p>Finally, thanks to all of the contributors who provided translations for the release. WordPress 4.5 comes fully translated into 44 languages and the release video has been translated into 32 languages!</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.6!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"WordPress 4.5 RC2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/news/2016/04/wordpress-4-5-rc2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Apr 2016 05:14:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4186";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:350:"The second release candidate for WordPress 4.5 is now available. We&#8217;ve made 91 changes since the first release candidate. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.5 on Tuesday, April 12, but we need your help [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Mike Schroder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3044:"<p>The second release candidate for WordPress 4.5 is now available.</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=37171&amp;stop_rev=37078&amp;limit=120&amp;verbose=on">91 changes</a> since the first release candidate. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.5 on <strong>Tuesday, April 12</strong>, but we need your help to get there.</p>\n<p>If you haven’t tested 4.5 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.5, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.5-RC2.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.5, check out the <a href="https://wordpress.org/news/2016/02/wordpress-4-5-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/03/wordpress-4-5-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2016/03/wordpress-4-5-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2016/03/wordpress-4-5-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.5 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.5. If you find compatibility problems, we never want to break things, so please be sure to post to the support forums so we can figure those out before the final release.</p>\n<p><strong>Polyglots</strong>, strings are now hard frozen, including the About Page, so you are clear to translate!</p>\n<p>A few changes of note since the first release candidate:</p>\n<ul>\n<li>Normalized non-slashing of data in the REST API infrastructure. If you use the REST API infrastructure, <a href="https://make.wordpress.org/core/2016/04/06/rest-api-slashed-data-in-wordpress-4-4-and-4-5/">check out the post on this change</a>.</li>\n<li>Customizer settings for widget instances get registered a bit later to give a chance for the widget instances themselves to be registered first. See <a href="https://core.trac.wordpress.org/ticket/36431">#36431</a> for details.</li>\n<li>Fixed various cropping issues in the Custom Logo feature and Twenty Fifteen / Twenty Sixteen themes.</li>\n</ul>\n<p>Be sure to <a href="https://make.wordpress.org/core/">follow along the core development blog</a>, where you can find the <a href="https://make.wordpress.org/core/2016/03/30/wordpress-4-5-field-guide/">Field Guide for 4.5</a>.</p>\n<p><em>It&#8217;s great fun to test</em><br />\n<em>Enjoyment in another</em><br />\n<em>Release Candidate</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"Contributor Weekend: Global WordPress Translation Day";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"https://wordpress.org/news/2016/04/contributor-weekend-global-wordpress-translation-day/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 07 Apr 2016 21:04:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4191";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:378:"Global WordPress Translation Day is a one-day contributor initiative organised by the WordPress project’s Polyglots team that is dedicated to helping new contributors who would like to translate WordPress in one of the 160 languages WordPress is available in. Global WordPress Translation Day will be on Sunday, April 24th, starting at 0:00 UTC and will go on for [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Josepha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3069:"<p class="p1"><span class="s1">Global WordPress Translation Day is a one-day contributor initiative organised </span><span class="s1">by the WordPress project’s </span><span class="s1"> <a href="https://make.wordpress.org/polyglots"><span class="s2">Polyglots team</span></a> that is dedicated to helping new contributors who would like to translate WordPress in one of the 160 languages WordPress is available in.</span></p>\n<p class="p1"><span class="s1">Global WordPress Translation Day will be on Sunday, April 24th, starting at 0:00 UTC and will go on for 24 hours covering all time zones.</span></p>\n<p class="p3"><span class="s1"><b>What are we doing?</b></span></p>\n<ul class="ul1">\n<li class="li1"><span class="s1"><span class="s1">Live training: A 24h live streaming of tutorials about translating WordPress in different languages and making your code translatable (30min/1h sessions in different languages including a general instruction and specifics for that particular language). The </span></span><span class="s1">internationalization </span>sessions will be in English. The sessions will be presented by some of the most experienced WordPress translators and internationalization experts. The Schedule can be found on the website.</li>\n<li class="li1"><span class="s1">Local translation contributor days: Groups of contributors gather at different locations and work face to face.</span></li>\n<li class="li1"><span class="s1">Local remote translation contributor days: Current translation teams dedicate time and get involved remotely to do orientation for their potential contributors or work with their current translation teams on translating as many strings as they can.</span></li>\n</ul>\n<p class="p1"><span class="s1">If you organise a local meetup, why not organise a contributor day for translating in your language?</span></p>\n<p class="p3"><span class="s1"><b>Join us! Read about the initiative and </b><a href="https://make.wordpress.org/polyglots/2016/03/02/wordpress-global-translation-day-april-24th-2016/"><span class="s3"><b>sign up as an organiser</b></span></a><b>.</b></span></p>\n<p class="p3"><span class="s1"><b>Can I get involved if I only speak English?</b></span></p>\n<p class="p1"><span class="s1">Yes! Even if you only speak English, it would be great to get involved and check out some of the English locale variants &#8211; English as spoken in the United Kingdom, Canada, New Zealand, Australia, South Africa. English has many variants across the globe and you can learn about the differences and why it&#8217;s important that users have the option to choose a variant during some of our sessions. And if you&#8217;re in a funky mood, you can give translating the interface into Emoji a try! Yes, we have a WordPress in Emoji locale!</span></p>\n<p class="p3"><span class="s1"><b>Questions?</b></span></p>\n<p class="p1"><span class="s1">The polyglots team and the event organisers hang out in <a href="http://wordpress.slack.com/messages/polyglots/">#Polyglots in Slack</a>. They will gladly help you out.</span></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.5 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2016/03/wordpress-4-5-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 24 Mar 2016 03:50:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4165";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:344:"The release candidate for WordPress 4.5 is now available. We&#8217;ve made 49 changes since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.5 on Tuesday, April 12, but we need your help [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Mike Schroder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2251:"<p>The release candidate for WordPress 4.5 is now available.</p>\n<p>We&#8217;ve made <a href="https://core.trac.wordpress.org/log/trunk?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=37077&amp;stop_rev=37026&amp;limit=120&amp;verbose=on">49 changes</a> since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.5 on <strong>Tuesday, April 12</strong>, but we need your help to get there.</p>\n<p>If you haven’t tested 4.5 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.5, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.5-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.5, check out the <a href="https://wordpress.org/news/2016/02/wordpress-4-5-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/03/wordpress-4-5-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2016/03/wordpress-4-5-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2016/03/wordpress-4-5-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.5 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.5 before next week. If you find compatibility problems, we never want to break things, so please be sure to post to the support forums so we can figure those out before the final release.</p>\n<p>Be sure to <a href="https://make.wordpress.org/core/">follow along the core development blog</a>, where we&#8217;ll continue to post <a href="https://make.wordpress.org/core/tag/dev-notes+4-5/">notes for developers</a> for 4.5.</p>\n<p><em>Free as in Freedom</em><br />\n<em>It is WordPress 4.5</em><br />\n<em>Also free as in beer</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.5 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/03/wordpress-4-5-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2016 04:30:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:4:"beta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4155";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.5 Beta 4 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.5, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Mike Schroder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3392:"<p>WordPress 4.5 Beta 4 is now available!</p>\n<p>This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.5, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/" target="_blank">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.5-beta4.zip" target="_blank">download the beta here</a> (zip).</p>\n<p>For more information on what&#8217;s new in 4.5, check out the <a href="https://wordpress.org/news/2016/02/wordpress-4-5-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/03/wordpress-4-5-beta-2/">Beta 2</a>, and <a href="https://wordpress.org/news/2016/03/wordpress-4-5-beta-3/">Beta 3</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-5+dev-notes/">in-depth field guides on make/core</a>. This is the final <a href="https://make.wordpress.org/core/version-4-5-project-schedule/">planned beta</a> of WordPress 4.5, with a release candidate scheduled for next week.</p>\n<p>Some of the changes in Beta 4 include:</p>\n<ul>\n<li>Add support for oEmbed <strong>moments and timelines from Twitter</strong> (<a href="https://core.trac.wordpress.org/ticket/36197">#36197</a>).</li>\n<li>More changes to better support <strong>HHVM with Imagick</strong>.<strong> </strong>Please test with HHVM setups and resizing/rotating images (<a href="https://core.trac.wordpress.org/ticket/35973">#35973</a>).</li>\n<li>Tightened up the <strong>Inline Link</strong> feature (<a href="https://core.trac.wordpress.org/ticket/33301">#33301</a>, <a href="https://core.trac.wordpress.org/ticket/30468">#30468</a>).</li>\n<li>Support <code>&lt;hr&gt;</code> <strong>editor shortcut</strong> with 3 or more dashes (<code>---</code>); no spaces. To give more time to study the best shortcuts for users, text patterns for bold and italic have been removed and won&#8217;t ship with for 4.5 (<a href="https://core.trac.wordpress.org/ticket/33300">#33300</a>).</li>\n<li>Fixes for <strong>SSL with Responsive Images</strong>. Please test with SSL, especially on sites with mixed http/https setups (<a href="https://core.trac.wordpress.org/ticket/34945">#34945</a>).</li>\n<li>Allow rewrite rules to work in nested <strong>WordPress installations on IIS</strong> (<a href="https://core.trac.wordpress.org/ticket/35558">#35558</a>).</li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=37025&amp;stop_rev=36932&amp;limit=200&amp;verbose=on">almost 100 changes</a> during the last week.</li>\n</ul>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta" target="_blank">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/" target="_blank">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major" target="_blank">a list of known bugs.</a></p>\n<p>Happy testing!</p>\n<p class="p1"><em>Llegamos al fin</em><br />\n<em>del tiempo pa&#8217; beta</em><br />\n<em>¡Pruébalo Ahora!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.5 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/03/wordpress-4-5-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Mar 2016 06:59:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:4:"beta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4128";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.5 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.5, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Mike Schroder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3631:"<p>WordPress 4.5 Beta 3 is now available!</p>\n<p>This software is still in development<strong>,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.5, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/" target="_blank">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.5-beta3.zip" target="_blank">download the beta here</a> (zip).</p>\n<p>For more information on what&#8217;s new in 4.5, check out the <a href="https://wordpress.org/news/2016/02/wordpress-4-5-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2016/03/wordpress-4-5-beta-2/">Beta 2</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-5+dev-notes/">in-depth field guides on make/core</a>. Some of the fixes in Beta 3 include:</p>\n<ul>\n<li>Many <strong>Theme Logo Support</strong> (<a href="https://core.trac.wordpress.org/ticket/33755">#33755</a>) fixes, including support for bundled Twenty Fifteen (<a href="https://core.trac.wordpress.org/ticket/35944">#35944</a>).</li>\n<li>Add <strong>Responsive Preview</strong> to theme install previewer (<a href="https://core.trac.wordpress.org/ticket/36017">#36017</a>).</li>\n<li>Support <strong>Imagick in HHVM</strong> (<a href="https://core.trac.wordpress.org/ticket/35973">#35973</a>).</li>\n<li><strong>Whitelist IPTC, XMP, and EXIF profiles</strong> from <code>strip_meta()</code> to maintain authorship, copyright, license, and image orientation (<a href="https://core.trac.wordpress.org/ticket/28634">#28634</a>).</li>\n<li>Support <strong>Windows shares/DFS roots</strong> in <code>wp_normalize_path()</code> (<a href="https://core.trac.wordpress.org/ticket/35996">#35996</a>).</li>\n<li><span class="s1">New installs default to <strong>generating secret keys and salts locally</strong> instead of relying on the <span class="s2">WordPress.org</span> API. Please test installing WP in situations where it can’t connect to the internet <span class="s1">(like on a 🛳, ✈️, or 🛰) </span></span><span class="s1">(<a href="https://core.trac.wordpress.org/ticket/35290">#35290</a>).</span></li>\n<li>OPTIONS requests to REST API should <strong>return Allow header</strong> (<a href="https://core.trac.wordpress.org/ticket/35975">#35975</a>).</li>\n<li>Upgrade twemoji.js to version 2 (<a href="https://core.trac.wordpress.org/ticket/36059">#36059</a>) and add extra IE11 compatibility (<a href="https://core.trac.wordpress.org/ticket/35977">#35977</a>) for <strong>Emoji</strong>.</li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=36931&amp;stop_rev=36814&amp;limit=200&amp;verbose=on">more than 100 changes</a> during the last week.</li>\n</ul>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta" target="_blank">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/" target="_blank">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major" target="_blank">a list of known bugs.</a></p>\n<p>Happy testing!</p>\n<p class="p1"><em><span class="s1">Beta one, two, three<br />\n</span><span class="s1">so many bugs have been fixed<br />\n</span><span class="s2">Closer now; four, five.</span></em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.5 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/03/wordpress-4-5-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 03 Mar 2016 04:55:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4116";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.5 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.5, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Mike Schroder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2370:"<p>WordPress 4.5 Beta 2 is now available!</p>\n<p>This software is still in development<strong>,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.5, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/" target="_blank">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.5-beta2.zip" target="_blank">download the beta here</a> (zip).</p>\n<p>For more information on what&#8217;s new in 4.5, check out the <a href="https://wordpress.org/news/2016/02/wordpress-4-5-beta-1/">Beta 1 blog post</a>. Some of the fixes in Beta 2 include:</p>\n<ul>\n<li>Added <a href="https://core.trac.wordpress.org/ticket/33300">Horizontal Rule (HR) editing shortcut</a> and <a href="https://core.trac.wordpress.org/ticket/28612">dismissible &#8220;Paste as Text&#8221; notice</a> in <strong>TinyMCE</strong>.</li>\n<li><strong>Selective Refresh</strong> support is <a href="https://core.trac.wordpress.org/changeset/36797">enabled for core themes titles and taglines</a>, which allows shift-click to focus on controls and PHP filters to apply in the preview.</li>\n<li>Resolved a fatal error on <strong>image upload</strong> when ImageMagick could not complete stripping meta during resize (<a href="https://core.trac.wordpress.org/ticket/33642">#33642</a>).</li>\n<li><strong>Various bug fixes</strong>. We&#8217;ve made <a href="https://core.trac.wordpress.org/log/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=36813&amp;stop_rev=36701&amp;limit=200&amp;verbose=on">just over 100 changes</a> in the last week.</li>\n</ul>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta" target="_blank">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/" target="_blank">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major" target="_blank">a list of known bugs.</a></p>\n<p>Happy testing!</p>\n<p><em>It&#8217;s peer pressure time</em><br />\n<em>Testing: all cool kids do it</em><br />\n<em>Help find ALL the bugs!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Mon, 27 Jun 2016 02:34:52 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:10:"connection";s:5:"close";s:25:"strict-transport-security";s:11:"max-age=360";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Wed, 22 Jun 2016 16:40:08 GMT";s:4:"link";s:63:"<https://wordpress.org/news/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130911040210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3958, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1467038093', 'no'),
(3959, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1466994893', 'no'),
(3960, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1467040960', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3961, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"WordPress.tv Blog: Spotlight: WordCamp Miami 2016";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.wordpress.tv/?p=464";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"http://blog.wordpress.tv/2016/06/22/spotlight-wordcamp-miami-2016/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2223:"<p>WordCamp Miami helped kick off the 2016 WordCamp season with sunny skies and great presentations on how to take your WordPress site to the next level. You can see all the <a href="https://wordpress.tv/event/wordcamp-miami-2016/">WordCamp Miami sessions here</a>, but below are a few that stood out for us.</p>\n<h2>\nRachel Carden: Tools and Techniques for Evaluating Accessibility</h2>\n<div id="v-o320Yj17-1" class="video-player">\n</div>\n<p>When your website is accessible, all users can access your content no matter their abilities. Visually-impaired users can visit your website using a screen reader. Those who can’t use the mouse can navigate your site using a keyboard or other input device. Some accessibility features might also improve your SEO. When your site is inaccessible, research shows you could be excluding up to 20 percent of your users. This talk for all skill levels will review tools and techniques you can use to test and improve your site’s accessibility.</p>\n<p><a href="http://www.slideshare.net/rachelcarden/tools-and-techniques-for-evaluating-accessibility">Presentation Slides</a></p>\n<p>&nbsp;</p>\n<h2>Kids WordPress Panel Discussion</h2>\n<div id="v-CypUoG9y-1" class="video-player">\n</div>\n<p>Kids talking about WordPress and blogging at WordCamp Miami 2016.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/464/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/464/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=464&subd=wptvblog&ref=&feed=1" width="1" height="1" /><div><a href="http://blog.wordpress.tv/2016/06/22/spotlight-wordcamp-miami-2016/"><img alt="Rachel Carden: Tools and Techniques for Evaluating Accessibility" src="http://videos.videopress.com/o320Yj17/toolsandtechniquesforevaluatingaccessibility_std.original.jpg" width="160" height="120" /></a></div><div><a href="http://blog.wordpress.tv/2016/06/22/spotlight-wordcamp-miami-2016/"><img alt="Kids WordPress Panel Discussion" src="http://videos.videopress.com/CypUoG9y/kidspanel_scruberthumbnail_1.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Jun 2016 16:41:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jerry Bates";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"WordPress.tv Blog: Developing for WordPress with Pippin Williamson and Danilo Ercoli";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.wordpress.tv/?p=439";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:102:"http://blog.wordpress.tv/2016/06/15/developing-for-wordpress-with-pippin-williamson-and-danilo-ercoli/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1891:"<h2 class="video-title">Pippin Williamson: Ask Me Anything About Plugins</h2>\n<p>Pippin is a prolific plugin developer and founder of several successful commercial WordPress plugin projects. This session is a Q&amp;A style format where the audience asked question related to plugin development, the WordPress.org plugins directory, selling plugins, building a development team, and anything else related to plugins.</p>\n<p></p>\n<p>More from <a href="http://wordpress.tv/event/wordcamp-san-diego-2016/">WordCamp San Diego 2016</a></p>\n<p>&nbsp;</p>\n<h2 class="video-title">Danilo Ercoli: Migliorare le performance di WordPress con il caching e l’esecuzione differita di codice</h2>\n<p>Questo talk è rivolto sia a chi ha appena iniziato a sviluppare con WordPress, sia agli sviluppatori più esperti che lo conoscono già da parecchio tempo, ed è un’introduzione ad alcuni argomenti come il caching e l’esecuzione differita di codice PHP, che sono utili per migliorare notevolmente le performance del tuo sito. Alcuni degli argomenti trattati sono il corretto utilizzo della cache e dei plugin di caching. Un’introduzione al WordPress Jobs System, e come eseguire codice differito senza dover quindi rallentare il rendering della pagina.</p>\n<p></p>\n<p><a href="https://wptv.files.wordpress.com/2016/04/danilo-ercoli-migliorare-performance-wp-caching-esecuzione-differita-codice-wctrn-2016.pdf">Presentation Slides</a></p>\n<p>More from <a href="http://wordpress.tv/event/wordcamp-torino-2016/">WordCamp Torino 2016</a></p><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/439/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/439/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=439&subd=wptvblog&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Jun 2016 16:37:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jerry Bates";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"Post Status: How WordPress news happens — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=25018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://poststatus.com/wordpress-news-happens-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1636:"<p>Welcome to the Post Status <a href="https://poststatus.com/category/draft">Draft podcast</a>, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>, <a href="https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast">Google Play</a>, <a href="http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast">Stitcher</a>, and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. This episode of Post Status Draft is hosted by Sarah Gooding &#8212; another WordPress journalist &#8212; and Brian Krogsgard.</p>\n<p><span>In this episode, Sarah and Brian discuss how they do WordPress news, manage working remotely, and handle family life.</span></p>\n<!--[if lt IE 9]><script>document.createElement(''audio'');</script><![endif]-->\n<a href="https://audio.simplecast.com/39891.mp3">https://audio.simplecast.com/39891.mp3</a>\n<p><a href="http://audio.simplecast.com/39891.mp3">Direct Download</a></p>\n<h3>Links</h3>\n<ul>\n<li><a href="https://wptavern.com/category/opinion">WP Tavern opinion</a></li>\n</ul>\n<h3>Sponsor</h3>\n<p><span>This episode is sponsored by <a href="https://www.valet.io/">Valet</a>. Valet helps keep your clients happy &amp; coming back. They offer expert services and keep the websites they manage functioning flawlessly. They offer preventative care that provides peace of mind around the clock. For more information, check out <a href="https://www.valet.io/">their website</a> and thank you to Valet for being a Post Status partner. </span><b> </b></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Jun 2016 13:35:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Katie Richards";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"WordPress.tv Blog: How to create child themes and multi-lingual blogs – Featured on WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.wordpress.tv/?p=414";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:112:"http://blog.wordpress.tv/2016/06/08/how-to-create-child-themes-and-multi-lingual-blogs-featured-on-wordpress-tv/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2153:"<h2 class="video-title">Corinne Welsh: My First Child Theme</h2>\n<p>Corrine Welsh explains how to get started with themes in WordPress, starting with a case study: why, why then, and why not sooner. From there she looks at the structure of a theme and walks through the steps of building a child theme. You may leave inspired to roll up your sleeves and get your hands dirty in theming after this great talk.</p>\n<div id="v-6oXMxwGi-1" class="video-player">\n</div>\n<p>From <a href="http://wordpress.tv/event/wordcamp-london-2016/">WordCamp London 2016</a></p>\n<h2 class="video-title">Maciej Pilarski: How To Make Your WordPress Website Multilingual</h2>\n<p>In this presentation Maciej Pilarski goes into detail on how  to easily and quickly create a traditional multilingual website or eCommerce store.  He also compares most popular multilingual plugins and also shows how this can be done without using any plugins, as well as discusses the benefits to your business of going global and how this can be done in minutes.</p>\n<div id="v-K21BXW6Y-1" class="video-player">\n</div>\n<p>From <a href="http://wordpress.tv/event/wordcamp-london-2016/">WordCamp London 2016</a></p><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/414/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/414/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=414&subd=wptvblog&ref=&feed=1" width="1" height="1" /><div><a href="http://blog.wordpress.tv/2016/06/08/how-to-create-child-themes-and-multi-lingual-blogs-featured-on-wordpress-tv/"><img alt="Corinne Welsh: My First Child Theme" src="http://videos.videopress.com/6oXMxwGi/video-b0595a6e44_std.original.jpg" width="160" height="120" /></a></div><div><a href="http://blog.wordpress.tv/2016/06/08/how-to-create-child-themes-and-multi-lingual-blogs-featured-on-wordpress-tv/"><img alt="Maciej Pilarski: How to Make your WordPress Website Multilingual" src="http://videos.videopress.com/K21BXW6Y/video-c5c8665f72_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Jun 2016 01:46:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jerry Bates";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"WP Mobile Apps: WordPress for Android: Version 5.4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://apps.wordpress.com/?p=3403";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://apps.wordpress.com/2016/06/01/wordpress-for-android-version-5-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3183:"<p>Hello WordPress users! <a href="https://play.google.com/store/apps/details?id=org.wordpress.android" target="_blank">Version 5.4 of the WordPress for Android app</a> is now available in the Google Play Store.</p>\n<h1>Gravatar update</h1>\n<p>Did you just take a great selfie? You can update your Gravatar from the app on the <em>Me</em> screen. Tap your profile picture, and follow the prompts to take a new photo or pick an image from your device&#8217;s photo library.</p>\n<div id="v-a5lLmHSc-1" class="video-player">\n</div>\n<h1>Smart Lock for Passwords integration</h1>\n<p>Signing in with a WordPress.com account is easier than ever with Smart Lock for Passwords, the Google password manager. If you signed in to your account on your computer using Google&#8217;s Chrome browser, the username and password fields will be automatically pre-filled when you open the app &#8212; you can even manage several identities.</p>\n<p><img class="alignnone wp-image-3404 size-large" src="https://apps.files.wordpress.com/2016/05/screenshot-2016-05-04_12-08-06-614.png?w=614&h=1024" alt="screenshot-2016-05-04_12.08.06.614" width="614" height="1024" /></p>\n<h1>Other Changes</h1>\n<p>Version 5.4 also comes with a few other fixes:</p>\n<ul>\n<li>Fixed comment previews with images in the Comment List screen.</li>\n<li>Fixed an issue with tag display in the Reader.</li>\n<li>Fixed a problem sometimes removed the <em>Themes</em> option after sign-in.</li>\n</ul>\n<p>You can track our development progress for the next release by visiting <a href="https://github.com/wordpress-mobile/WordPress-Android/milestones/5.5">our 5.5 milestone on GitHub</a>.</p>\n<h1>Beta</h1>\n<p>Do you like keeping up with what’s new in the app? Do you enjoy testing new stuff before anyone else? Our testers have access to beta versions with updates shipped directly through Google Play. The beta versions may have new features, new fixes — and possibly new bugs! Testers make it possible for us to improve the overall app experience, and offer us invaluable development feedback.</p>\n<p>Want to become a tester? <a href="https://play.google.com/apps/testing/org.wordpress.android">Opt-in</a>!</p>\n<h1>Thank you</h1>\n<p>Thanks to our GitHub contributors: <a href="https://github.com/aerych">@aerych</a>, <a href="https://github.com/aforcier">@aforcier</a>, <a href="https://github.com/daniloercoli">@daniloercoli</a>, <a href="https://github.com/hypest">@hypest</a>, <a href="https://github.com/kwonye">@kwonye</a>, <a href="https://github.com/maxme">@maxme</a>, <a href="https://github.com/mzorz">@mzorz</a>, <a href="https://github.com/nbradbury">@nbradbury</a>, <a href="https://github.com/oguzkocer">@oguzkocer</a>, <a href="https://github.com/roundhill">@roundhill</a>, and <a href="https://github.com/tonyr59h">@tonyr59h</a>.</p><img alt="" border="0" src="https://pixel.wp.com/b.gif?host=apps.wordpress.com&blog=108068616&post=3403&subd=apps&ref=&feed=1" width="1" height="1" /><div><a href="https://apps.wordpress.com/2016/06/01/wordpress-for-android-version-5-4/"><img alt="gravatar" src="https://videos.files.wordpress.com/a5lLmHSc/gravatar_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Jun 2016 11:53:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Maxime";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"WPTavern: WordCamp Incubator Program to Launch in Indonesia, Zimbabwe, and Colombia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=55034";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"http://wptavern.com/wordcamp-incubator-program-to-launch-in-indonesia-zimbabwe-and-columbia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2932:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/02/flags.jpg"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/02/flags.jpg?resize=1020%2C500" alt="flags" class="aligncenter size-full wp-image-16697" /></a></p>\n<p>After receiving <a href="http://wptavern.com/wordcamp-incubator-program-receives-182-applications-narrows-candidates-to-16-communities" target="_blank">182 applications from cities all over the world</a>, the WordPress Community Team has selected three locations for the WordCamp Incubator program:</p>\n<ul>\n<li>Denpasar, Indonesia</li>\n<li>Harare, Zimbabwe</li>\n<li>Medellín, Colombia</li>\n</ul>\n<p>Representatives from the thirteen other short-listed locations are encouraged to organize a local WordPress meetup and will have the help of Community Team mentors as needed.</p>\n<p>Thanks to the addition of a new volunteer deputy from the Community Team, the program will move forward with three locations, instead of having to scale back to two, as previously anticipated. Each event has been assigned a deputy who will meet bi-weekly with the local team to mentor the new WordCamp organizers.</p>\n<p>Andrea Middleton outlined in the <a href="https://make.wordpress.org/community/2016/05/25/wordcamp-incubator-locations-announcement/" target="_blank">announcement</a> how the team plans to proceed with getting these events off the ground.</p>\n<p>&#8220;Denpasar, Harare, and Medellín will work with their respective deputies to start a monthly WordPress meetup group or add their existing meetup group to the chapter account program,&#8221; Middleton said. &#8220;Once the local WordPress user group is meeting regularly, each team will work on finding a venue, setting a date, recruiting speakers, and spreading the word about the upcoming WordCamp.&#8221;</p>\n<p>In order to take the pressure off the new organizers, the Community team will assist them in scheduling and finding speakers. The events will be 100% funded by the global sponsorship grant so organizers can focus on community building without the pressure of fundraising. Middleton said they are aiming for no more than three non-local speakers at each event, which she anticipates will happen in the last quarter of 2016.</p>\n<p>The challenge with the Incubator program is to ensure these events are a launching point and not just a flash in the pan. Middleton and the community team deputies are working to establish these emerging communities so that they continue to grow organically after the events conclude.</p>\n<p>&#8220;The goal for these events is to organize an easily reproducible, one-day, one-track event with about 50-75 attendees,&#8221; Middleton said. &#8220;Hopefully by the end of the organizing/incubating experience, members of the local community will feel confident that they can organize an annual WordCamp independently in the years to come.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 31 May 2016 05:12:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"Donncha: WordPress is thirteen!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:24:"http://z9.io/?p=89499890";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"http://z9.io/2016/05/27/wordpress-is-thirteen/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1231:"<p>You could have knocked me over with a feather today when I read <a href="https://ma.tt/2016/05/wordpress-is-a-teenager/">Matt&#8217;s post</a> announcing that WordPress was celebrating a birthday!</p>\n<p>It didn&#8217;t seem so long ago that we were working on b2++, hacking the multiuser bits in and doing all sorts of crazy things with it.</p>\n<p>Now I&#8217;m &#8220;typing&#8221; this on a mobile phone by swiping my finger across a virtual keyboard. Back then the closest to this that I could imagine would be some sort of SMS integration!</p>\n<p>WordPress today is unrecognisable from what it was back then, especially if you use the slick Calypso interface.</p>\n<p>I&#8217;m looking forward to seeing what the next few years bring.</p>\n\n<p><strong>Related Posts</strong><ul><li> <a href="http://z9.io/2013/08/02/like-a-dog-and-his-ball/" rel="bookmark" title="Permanent Link: Like a dog and his ball">Like a dog and his ball</a></li><li> <a href="http://z9.io/2009/01/28/wordpress-mu-27/" rel="bookmark" title="Permanent Link: WordPress MU 2.7">WordPress MU 2.7</a></li><li> <a href="http://z9.io/2008/09/02/wordpress-mu-261/" rel="bookmark" title="Permanent Link: WordPress MU 2.6.1">WordPress MU 2.6.1</a></li></ul></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2016 22:57:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Donncha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"Post Status: WordPress.org — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=24730";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://poststatus.com/wordpress-org-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3513:"<p>Welcome to the Post Status <a href="https://poststatus.com/category/draft">Draft podcast</a>, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>, <a href="https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast">Google Play</a>, <a href="http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast">Stitcher</a>, and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Joe Hoyle &#8212; the CTO of Human Made &#8212; and Brian Krogsgard.</p>\n<p><span>In this episode, Joe and Brian discuss the structure and function of the WordPress.org website, which is the hub of the WordPress project. From the actual software distribution, to discussions about the project, to support, and buying swag: it all happens from WordPress.org. We break down what’s what and what we think you should know.</span></p>\n<p><a href="https://audio.simplecast.com/38479.mp3">https://audio.simplecast.com/38479.mp3</a><br />\n<a href="http://audio.simplecast.com/38479.mp3">Direct Download</a></p>\n<h3>Notes</h3>\n<p>Who owns WordPress.org?<br />\nWho works on WordPress.org<br />\nHow WordPress.org distributes software updates</p>\n<h3>Different Sections of WordPress.org Navigation</h3>\n<ul>\n<li>Showcase</li>\n<li>WordPress theme directory &#8212; and reviews &#8212; and commercial themes</li>\n<li>WordPress plugin directory &#8212; and reviews</li>\n<li>Mobile &#8212; Redirects to .com</li>\n<li>Support Forums / Codex &#8220;documentation&#8221;</li>\n<li>Make WordPress (Get Involved)</li>\n<li>About (many sub pages and also project structure)</li>\n<li>Blog</li>\n<li>Hosting</li>\n<li>Download (button &#8212; in future to be <a href="https://make.wordpress.org/meta/2016/02/29/get-wordpress-improving-the-path-to-wordpress/">Get WordPress</a>)</li>\n</ul>\n<h3>Other Sections</h3>\n<ul>\n<li><a href="https://core.trac.wordpress.org/">core.trac.wordpress.org</a></li>\n<li><a href="https://developer.wordpress.org/">developer.wordpress.org</a></li>\n<li><a href="https://mercantile.wordpress.org/">mercantile.wordpress.org</a></li>\n<li><a href="http://jobs.wordpress.net/">jobs.wordpress.net</a></li>\n<li><a href="https://learn.wordpress.org/">learn.wordpress.org</a></li>\n<li><a href="https://wordpress.org/ideas/">Ideas</a></li>\n</ul>\n<h3>Other Linked Sites</h3>\n<ul>\n<li><a href="https://central.wordcamp.org/">WordCamp</a></li>\n<li><a href="http://wordpress.tv/">WordPress.tv</a></li>\n<li><a href="https://buddypress.org/">BuddyPress</a></li>\n<li><a href="https://bbpress.org/">bbPress</a></li>\n<li><a href="https://wordpress.com/">WordPress.com</a></li>\n<li><a href="https://ma.tt/">ma.tt</a></li>\n</ul>\n<h3>Active Projects for Improving</h3>\n<ul>\n<li><a href="https://make.wordpress.org/meta/tag/helphub/">Helphub</a></li>\n<li>Handbooks (theme), plugin published</li>\n<li>Plugin directory</li>\n</ul>\n<h3>Links</h3>\n<ul>\n<li><a href="https://make.wordpress.org/meta/">Blog for WordPress.org projects</a></li>\n</ul>\n<h3>Sponsor</h3>\n<p><span>This episode is sponsored by Gravity Forms. <a href="http://www.gravityforms.com/">Gravity Forms</a>  makes the best web forms on the planet. Over a million WordPress sites are already using Gravity Forms. Is yours? For more information, check out their <a href="http://www.gravityforms.com/">website</a> and thank you to Gravity Forms for being a Post Status partner. </span><b> </b></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2016 19:18:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Katie Richards";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WPTavern: Jetpack 4.0.3 Patches a Critical XSS Vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=55036";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wptavern.com/jetpack-4-0-3-patches-a-critical-xss-vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2266:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/jetpack-logo.gif"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/jetpack-logo.gif?resize=700%2C276" alt="jetpack-logo" class="aligncenter size-full wp-image-27470" /></a></p>\n<p><a href="https://jetpack.com/2016/05/27/jetpack-4-0-3-critical-security-update/" target="_blank">Jetpack 4.0.3 is a security release</a> that contains an important fix for a critical vulnerability that has been present in the plugin since version 2.0, released in 2012. According to Jetpack team member Sam Hotchkiss, a stored XSS vulnerability was found in the way that some Jetpack shortcodes are processed, which allows an attacker to insert JavaScript into comments to hijack a visitor&#8217;s browser.</p>\n<p>This particular bug is similar to one <a href="https://blog.sucuri.net/2016/05/security-advisory-stored-xss-bbpress-2.html" target="_blank">recently found and patched in bbPress</a>.</p>\n<p>&#8220;Similar issues may exist in other plugins, and it’s a good reminder about the power of regular expressions to create issues when parsing data,&#8221; Hotchkiss said.</p>\n<p>The Jetpack team has been working with the WordPress security team to push out point releases for all vulnerable branches of the plugin&#8217;s codebase, which includes all versions following 2.0. They are using WordPress&#8217; core automatic update system, so all sites that have not explicitly opted out will receive the security update.</p>\n<p>&#8220;Fortunately, we have no evidence of this being used in the wild,&#8221; Hotchkiss said. &#8220;However, now that this update is public, it’s just a matter of time before someone attempts to exploit it.&#8221; The Jetpack team is advising users to update as soon as possible, as the update also fixes any potential exploits that may have already been put in place.</p>\n<p>The team credits Marc-Alexandre Montpas from <a href="https://sucuri.net/" target="_blank">Sucuri</a> for finding the bug and disclosing it responsibly. Users will be notified about the security release via email, but those who have Akismet and/or VaultPress installed have already been protected since the first reporting of the vulnerability.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2016 01:05:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"Post Status: Growing a lifestyle business without losing the lifestyle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=24644";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"https://poststatus.com/growing-lifestyle-business/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8760:"<p><em><strong>Editor&#8217;s Note</strong>: This is a guest post by Nate Wright. Nate is a WordPress developer and solopreneur. He runs <a href="http://themeofthecrop.com">Theme of The Crop</a>, a niche WordPress theme company geared toward restaurant websites. You can learn more about Nate on his <a href="https://poststatus.com/profiles/nate-wright/">Post Status profile</a> and follow him on <a href="https://twitter.com/natewr">Twitter</a>.</em></p>\n<hr />\n<p>Here&#8217;s a scenario you&#8217;re probably familiar with: a friend or family member, not terribly tech-savvy, approaches you with an idea. Why don&#8217;t you build Facebook for clowns? What about Uber for sandwiches?</p>\n<p>Their ideas are often a little better than these. Sometimes they&#8217;re worse. But in my case the conversation always gets to the same point in the end.</p>\n<p>You can build stuff on the internet. Why aren&#8217;t you shooting for the stars? Don&#8217;t you want to be rich like Zuckerberg?</p>\n<p>Right now some of you may be thinking: yes I do! This post isn&#8217;t for you.</p>\n<p>This is for those of you who cringe at the thought of your days filling up with hiring and training staff, conducting meetings, or filling out paperwork. Those of you who don&#8217;t want to live the big siloed life of a CEO. Who dove into the WordPress market because you wanted to build things yourself. For yourself.</p>\n<h3>The rockstars and the rest of us</h3>\n<p>It’s hard to find someone more widely admired among WordPress developers &#8212; and more deserving of that admiration &#8212; than <a href="https://pippinsplugins.com/about/">Pippin Williamson</a>. So when he <a href="https://pippinsplugins.com/control-give-grow/">described his evolution</a> from staunch go-it-aloner to team leader, many of us sat up and listened.</p>\n<p>The <a href="https://pippinsplugins.com/control-give-grow/#comments">comments</a> in response to that post exhibit a common mix of anxiety, frustration and hope for us go-it-aloners, who have carved out small (and not so small) niches in the WordPress world.</p>\n<p>We’re overstretched and under resourced. We lack good marketing strategies. And we can see that growth will come from transforming our businesses into larger enterprises.</p>\n<p>But then we start thinking about what that means. The hiring. The firing. The training. The meetings. The paperwork. <i>The liability</i>.</p>\n<p>&#8216;I don’t want to be the next Zuckerberg,&#8217; you may think. Then, hopefully, you’ll laugh at the absurdity. But really, you may think, &#8216;I don’t even want to be the next <a href="http://carlhancock.com/">Carl Hancock</a> or <a href="https://yoast.com/author/joost/">Joost de Valk</a>.&#8217;</p>\n<p>Let me be honest with you. I’ll stop putting words in your mouth and put them in mine.</p>\n<p>I have a lifestyle business. No, I don’t sell lifestyle products. I have a business <em>tailored to my lifestyle</em>.</p>\n<p>I have a business that allows to me to take lunch when I want, finish the day when I want, go on holiday when I want, write the code that I want. That’s my job perk. That’s my killer bonus. No, that’s my Shangri-La.</p>\n<p>When people tell you to hire early or scale quickly, they’re right that giving up control can be liberating. But it can also be encumbering. It brings new responsibilities at the same time that it releases you from old ones.</p>\n<p>Whether or not growing your team is right for you will depend on your temperament, your appetite and the kind of lifestyle you want.</p>\n<h3>Being a little fish in a big pond</h3>\n<p>But let’s be honest. You took a chance on the WordPress market because you saw a window of opportunity. That window may be closing.</p>\n<p>In the last few years we’ve seen a lot of consolidation. The theme market exploded, <a href="http://inside.envato.com/envato-stories-muhammad-haris-themefusion-2/">made millions for a few</a>, and then caused a gold rush which <a href="http://scottbolinger.com/wordpress-theme-business/">saturated the market and pushed out small operators</a>.</p>\n<p>At the same time, two big traditional distribution channels dried up: the official <a href="https://wordpress.org/themes/">WordPress.org theme repository</a>, which has a huge backlog of themes awaiting approval, and <a href="https://theme.wordpress.com/">Automattic’s marketplace</a>, which is closed to new entrants.</p>\n<p>We’re also seeing more traditional investment in WordPress properties. The big one is the <a href="http://recode.net/2014/05/05/wordpress-parent-automattic-has-raised-160-million-now-valued-at-1-16-billion-post-money/">$160 million raised by Automattic</a> and Automattic&#8217;s subsequent <a href="https://poststatus.com/automattic-acquired-woocommerce-woothemes/">acquisition of WooThemes</a>. Many actors are moving more aggressively to leverage or retain their market position. Syed Balkhi is on a buying and building spree (<a href="http://enviragallery.com/about-us/">1</a>, <a href="http://optinmonster.com/about/">2</a>, <a href="https://wpforms.com/say-hello-to-wpforms/">3</a>, <a href="http://wptavern.com/syed-balkhi-acquires-google-analytics-by-yoast-renames-to-monsterinsights">4</a>). Ninja Forms did a <a href="https://ninjaforms.com/releasing-three/">ground-up rebuild</a>. Pippin’s shedding non-essential products (<a href="https://pippinsplugins.com/easy-content-types-acquired/">1</a>, <a href="https://pippinsplugins.com/nikhil-vimal-adopts-front-end-registration-and-login-forms-plugin/">2</a>) and <a href="https://pippinsplugins.com/selfish/">purging some third-party addons</a>.</p>\n<p>The ecosystem looks increasingly unfriendly to us go-it-aloners. Automattic was the first to go big. Given exclusive commercial access to the WordPress trademark, it carved out its own space and split WordPress down the middle. Now the other half &#8212; the WordPress for the rest of us &#8212; is going big too.</p>\n<p>The nice thing about being a small operator is that you only need a tiny sliver of the pie. But as the size of the market has grown, it’s become more difficult to attract attention. Showing up with a good product isn’t enough.</p>\n<h3>Going it alone, together</h3>\n<p>My lifestyle business is working well for me. Revenue keeps inching up. Slowly.</p>\n<p>But it might not make it in a different kind of WordPress space. I’ve been thinking a lot about that lately. And I bet you have too.</p>\n<p>Where’s the market going? What am I willing to trade to survive? Which headaches are <a href="http://www.codeinwp.com/blog/transparency-report-14/">worth changing direction for</a> and which headaches aren’t?</p>\n<p>Here are some of the ideas I’ve been tossing around:</p>\n<h3>Contractors</h3>\n<p>Hiring out. I could scale up or down easily, depending on how well it goes. But it’s tough to manage quality when juggling vendors.</p>\n<p>And what would I contract? I’d like to shed my bumbling efforts in marketing and traffic generation. But that seems like precisely the kind of job full of jackals who don’t know what they’re doing.</p>\n<p>Ok, that’s harsh. I’ll just say: I worry it’d be a headache to manage it well.</p>\n<p>Theme development seems the most plausible, since there’s a large body of talented, hungry themers washing up from the stormy seas of ThemeForest. But it may be the least valuable since the market is being swallowed up by a few big themes.</p>\n<h3>Commissions</h3>\n<p>Affiliate marketing is already working for me. A little. I could go further and recruit theme or plugin developers to sell from my site on commission.</p>\n<p>Then I’m saddled with support for products I didn’t build. Can I maintain quality? Can I drive enough traffic to be an attractive outlet for them? Will I end up with all of the headaches I wanted to avoid?</p>\n<h3>Partnerships</h3>\n<p>Maybe I’ll trade in my king-of-the-hill cap and bring on partners. Not employees. Genuine partners with overlapping skill sets. Instead of being a go-it-aloner we can be two or three go-it-aloners going it alone together!</p>\n<p>Or maybe that’s just a terrible way to run a business.</p>\n<h3>Alliances</h3>\n<p>There are a lot of us out there. Independent themers looking to expand beyond ThemeForest or give up on the old freemium approach of the official repository. Plugin developers looking for a new home or seeking out themes that will integrate with their plugins.</p>\n<p>We could probably do something special if we made stronger alliances. Combined to build to stronger platforms for our products.</p>\n<p>But that sounds like a lot of project management. Isn’t that what we were hoping to avoid?</p>\n<p>I don’t know. I’m going to go write some code.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 26 May 2016 18:10:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Nate Wright";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"WP Mobile Apps: WordPress for iOS: Version 6.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://apps.wordpress.com/?p=3416";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://apps.wordpress.com/2016/05/25/wordpress-for-ios-version-6-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3021:"<p>Hi there, WordPress users! <a href="https://itunes.apple.com/us/app/wordpress/id335703880?mt=8&uo=6&at=&ct=">Version 6.2 of the WordPress for iOS app</a> is now available in the App Store.</p>\n<h1>What&#8217;s New:</h1>\n<p><strong>Sharing just got easier!</strong> Post content from apps to your WordPress.com site with a new Share extension. Also, share a post right from your editor’s preview screen.</p>\n\n<a href="https://apps.wordpress.com/img_2229_2/"><img width="169" height="300" src="https://apps.files.wordpress.com/2016/05/img_2229_2.png?w=169&h=300" class="attachment-medium size-medium" alt="IMG_2229_2" /></a>\n<a href="https://apps.wordpress.com/img_2230/"><img width="169" height="300" src="https://apps.files.wordpress.com/2016/05/img_2230.png?w=169&h=300" class="attachment-medium size-medium" alt="IMG_2230" /></a>\n\n<p><strong>Improved clipboard support: </strong>Working with images? You can now copy and paste single images in your editor.</p>\n<p><strong>Login with ease:</strong> We improved error messages for self-hosted users.</p>\n<p><strong>Enhancements:</strong> Because &#8220;good&#8221; is not enough! Here&#8217;s the full <a href="https://github.com/wordpress-mobile/WordPress-iOS/issues?q=is%3Aclosed+is%3Aissue+milestone%3A6.2+label%3A%22%5BType%5D+Enhancement%22">list of enhancements</a>.</p>\n<p><strong>Bugs, be gone!</strong> We zapped bugs that prevented images from rendering properly and caused backspaces to misbehave.  You can see the full list of bug fixes <a href="https://github.com/wordpress-mobile/WordPress-iOS/issues?q=is%3Aclosed+is%3Aissue+milestone%3A6.1+label%3A%22%5BType%5D+Bug%22">here</a>!</p>\n<h1>Thank You</h1>\n<p>Thanks to all of the contributors who worked on this release:<br />\n<a href="https://github.com/aerych">@aerych</a>, <a href="https://github.com/akirk">@akirk</a>, <a href="https://github.com/alexcurylo">@alexcurylo</a>, <a href="https://github.com/astralbodies">@astralbodies</a>, <a href="https://github.com/diegoreymendez">@diegoreymendez</a>, <a href="https://github.com/frosty">@frosty</a>, <a href="https://github.com/jleandroperez">@jleandroperez</a>, <a href="https://github.com/koke">@koke</a>, <a href="https://github.com/kurzee">@kurzee</a>, <a href="https://github.com/kwonye">@kwonye</a>, <a href="https://github.com/maxme">@maxme</a>, <a href="https://github.com/nheagy">@nheagy</a>, <a href="https://github.com/rachelmcr">@rachelmcr</a>, <a href="https://github.com/sendhil">@sendhil</a>, <a href="https://github.com/mattmiklic">@mattmiklic</a> and <a href="https://github.com/SergioEstevao">@SergioEstevao</a>.</p>\n<p>You can track the development progress for the next update by visiting <a href="https://github.com/wordpress-mobile/WordPress-iOS/issues?utf8=✓&q=is%3Aissue+milestone%3A6.3+" target="_blank">our 6.3 milestone on GitHub</a>. Until next time!</p><img alt="" border="0" src="https://pixel.wp.com/b.gif?host=apps.wordpress.com&blog=108068616&post=3416&subd=apps&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 25 May 2016 06:05:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"diegoreymendez";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"WPTavern: In Case You Missed It – Issue 9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wptavern.com?p=55015&preview_id=55015";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"http://wptavern.com/in-case-you-missed-it-issue-9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8011:"<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/01/ICYMIFeaturedImage.png" rel="attachment wp-att-50955"><img class="size-full wp-image-50955" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/01/ICYMIFeaturedImage.png?resize=676%2C292" alt="In Case You Missed It Featured Image" /></a>photo credit: <a href="http://www.flickr.com/photos/112901923@N07/16153818039">Night Moves</a> &#8211; <a href="https://creativecommons.org/licenses/by-nc/2.0/">(license)</a>\n<p>There’s a lot of great WordPress content published in the community but not all of it is featured on the Tavern. This post is an assortment of items related to WordPress that caught my eye but didn’t make it into a full post.</p>\n<h2>Chris Lema Launches Beyond Good</h2>\n<p>Chris Lema has launched a new site called <a href="http://beyondgood.com/">Beyond Good </a>that provides insight, tips, and methodologies for leading employees to become better than good. If it&#8217;s anything like his other sites, it&#8217;s sure to be a hit in the WordPress community.</p>\n<h2>Remote Jobs, a Remote Worker Specific Jobs Board</h2>\n<p>Chris Wallace and the team at Lift have launched <a href="https://remotejobs.com/">Remote Jobs</a>, a jobs board specifically catered to remote workers. According to Wallace, &#8220;The site exists to help others find remote jobs that connect them with their passions in life.&#8221; Check out the site as there&#8217;s already a decent listing of opportunities available for remote workers.</p>\n<h2>Why .Blog is Worth $19M</h2>\n<p>Matt Mullenweg participated in a <a href="http://venturebeat.com/2016/05/12/the-creator-of-wordpress-on-why-blog-was-worth-19-million/">phone interview with VentureBeat</a>. The first question in the interview asks why the .blog domain is worth $19M.</p>\n<blockquote><p>Well, the domain business is actually a really good business because you can sell a domain and people use it and keep it forever. So, if you look at like a Verisign, or people who have TLDs, it’s actually an incredible business.</p>\n<p>We really wanted .blog to be open, and some of the other applications for .blog were closed, including Google — so, let’s say for example, only Blogger could have a .blog domain. And we thought that .blog should be open to everyone, even if they’re not using WordPress.</p>\n<p>I gotta be honest though, it was a stressful auction.</p></blockquote>\n<p>There are other tidbits of information included in the interview that I highly encourage you to read. If I were Google, I&#8217;d be upset as .blog is the perfect complimentary domain for Blogger.</p>\n<h2>Drupal Association Gives Community Member a Lifetime Ban</h2>\n<p>DrupalCon New Orleans took place last week and during the event, several speakers <a href="https://www.drupal.org/node/2729687">experienced online harassment</a> in the form of derogatory racist, homophobic, and misogynistic comments and images from an anonymous Twitter account. Upon further investigation by community members and the Drupal Association technical and event staff, the harassment was tracked to an attendee at the event.</p>\n<blockquote><p>This person was then confronted by members of the Drupal Association staff and the Community Working Group. They were asked to leave the event and informed that they have been banned from attending any future DrupalCons as well as any events produced by the Drupal Association, in accordance with the <a href="https://events.drupal.org/neworleans2016/code-conduct" rel="nofollow">DrupalCon Code of Conduct</a>, which states, &#8216;We do not tolerate harassment of conference participants in any form.&#8217; Shortly after the person left the conference, the account from which the harassing tweets were made was deleted.</p></blockquote>\n<p>This is an excellent example of why Codes of Conduct exist for events. By the way, check out the <a href="https://plan.wordcamp.org/code-of-conduct/">Code of Conduct</a> that&#8217;s in place for every WordCamp. If you experience harassment of any kind at a WordCamp, please tell event staff.</p>\n<h2>Plans Published to Upgrade WordPress Support Forums</h2>\n<p>Jennifer Dodd published a <a href="https://make.wordpress.org/meta/2016/05/19/wordpress-org-forums-upgrade/">detailed plan</a> for migrating the WordPress.org support forums from bbPress 1.x to 2.x. The project is a huge undertaking and involves moving massive amounts of data. If all goes according to plan, the support forums will be on bbPress 2.x by the end of the year. I&#8217;m sure a lot of support forum volunteers are stoked to hear this news.</p>\n<h2>What NOT to Name a WordPress Theme</h2>\n<p>This tweet by Ryan Sullivan gave me a good laugh.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr">I''d strongly consider rebranding. <a href="https://t.co/9MeevJTlPq">pic.twitter.com/9MeevJTlPq</a></p>\n<p>&mdash; Ryan D. Sullivan (@ryandonsullivan) <a href="https://twitter.com/ryandonsullivan/status/733120690816065536">May 19, 2016</a></p></blockquote>\n<p></p>\n<h2>Tom McFarlin on Improving the WordPress Plugin UX</h2>\n<p>Tom McFarlin published a <a href="https://tommcfarlin.com/wordpress-plugin-user-experience-2/">great article</a> that offers ideas on how plugin developers can improve the WordPress plugin user experience. His first suggestion is a key reason I think GravityForms became successful.</p>\n<blockquote><p>Try to make sure that your project tightly integrates with the core WordPress user interface.</p></blockquote>\n<p>When I witnessed GravityForms for the first time in 2009, I loved how it integrated into the WordPress backend as if it were a part of the core software. Fast forward to 2016 and plugins that tie into a service are experimenting with overlay interfaces that replace WordPress&#8217;. The most recent example I recall is WP Forms <a href="http://wptavern.com/wpforms-aims-to-be-the-most-beginner-friendly-forms-plugin-for-wordpress">that I reviewed</a> earlier this year.</p>\n<p>In my review, I specifically noted that the interface the developers used allowed me to focus on creating forms. It doesn&#8217;t seem like it&#8217;s a WordPress core feature and it didn&#8217;t have too. While the advice McFarlin gives is likely accurate for most cases, there are plugins that benefit from having a unique user interface different from WordPress&#8217;.</p>\n<h2>Don&#8217;t Edit Core</h2>\n<p>This comic <a href="http://www.commitstrip.com/en/2016/05/17/coder-dilemma-9-the-upgrade/">created by CommitStrip</a> made me smile.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Coder Dilemma #9 &#8211; The Upgrade<br /> <a href="https://t.co/2Tu2l1tgYX">https://t.co/2Tu2l1tgYX</a> <a href="https://t.co/xnMr2VdYWv">pic.twitter.com/xnMr2VdYWv</a></p>\n<p>&mdash; CommitStrip (@CommitStrip) <a href="https://twitter.com/CommitStrip/status/732505464768843776">May 17, 2016</a></p></blockquote>\n<p></p>\n<h2>Wapuu Tattoo!</h2>\n<p>In what is a traditional part of this series, I end each issue by featuring a Wapuu design. For those who don&#8217;t know, Wapuu is the <a href="http://wapuu.jp/2015/12/12/wapuu-origins/">unofficial mascot</a> of the WordPress project. WordCamp St. Louis 2016, took place last weekend and one of the attendees had a Wapuu tattoo! Wapuu looks good everywhere, including human skin!</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Wapuu has been sighted at <a href="https://twitter.com/hashtag/wcstl?src=hash">#wcstl</a> <a href="https://twitter.com/hashtag/wordpress?src=hash">#wordpress</a> <a href="https://twitter.com/hashtag/wapuu?src=hash">#wapuu</a> <a href="https://t.co/4HYlp6GI0S">pic.twitter.com/4HYlp6GI0S</a></p>\n<p>&mdash; Nile Flores (@blondishnet) <a href="https://twitter.com/blondishnet/status/731504592668758017">May 14, 2016</a></p></blockquote>\n<p></p>\n<p>That&#8217;s it for issue nine. If you recently discovered a cool resource or post related to WordPress, please share it with us in the comments.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 20 May 2016 22:30:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"WPTavern: WordPress Meta Team Publishes Prototypes of The Plugin Directory Redesign";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=55006";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"http://wptavern.com/wordpress-meta-team-publishes-prototypes-of-the-plugin-directory-redesign";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3713:"<p>In early 2015, the WordPress.org Meta team <a href="http://wptavern.com/wordpress-plugin-directory-launches-new-design">redesigned</a> the <a href="https://wordpress.org/plugins/">WordPress plugin directory</a> and added a number of new features. In an effort to iterate on the page&#8217;s layout, the Meta Team has <a href="https://make.wordpress.org/meta/2016/05/19/plugin-directory-prototypes/">published prototypes</a> of a new design for the <a href="http://codepen.io/mapk/full/jqxqbo/">plugin directory&#8217;s home</a> and <a href="http://codepen.io/mapk/full/KzGQKv/">search results pages</a>.</p>\n<p>The prototypes are inspired by <a href="https://get.wp.com/">Get WordPress</a>, a landing page that provides key information about the WordPress project at a glance.</p>\n<p>There are a few things to keep in mind while looking at these prototypes. The first is that plugin information displayed on the page is inaccurate. Second, the Pro and Light classifications are for design purposes only. Third, links at the bottom will point to their corresponding pages.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/PluginDirectoryMockup1.png"><img class="size-full wp-image-55007" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/PluginDirectoryMockup1.png?resize=1025%2C2753" alt="WordPress Plugin Directory Homepage Protoype" /></a>WordPress Plugin Directory Homepage Protoype\n<p>Unlike the current design, the prototype displays far less information. Authors, Last Updated, Compatibility, and Active Installs are absent from the homepage view. Initial feedback <a href="https://make.wordpress.org/meta/2016/05/19/plugin-directory-prototypes/#comment-8151">highlights the concern</a> that too much information has been stripped away.</p>\n<p>In response to a comment on the announcement post, Samuel Sidler, <span class="st">Apollo Team Lead at Automattic and contributor to the Meta team</span>, <a href="https://make.wordpress.org/meta/2016/05/19/plugin-directory-prototypes/#comment-8154">explains</a> why he doesn&#8217;t think the information is useful to users.</p>\n<blockquote><p>Author, as you said, is only really useful for insiders. The latter two, meanwhile, are already taken into account in the search results. If a plugin doesn’t have a recent compatible version, it will move down the list. If it’s too old, it won’t get shown at all (which is the case today).</p>\n<p>Active installs is more interesting, but we account for it weighting search results as-is. I actually find it refreshing to <em>not</em> show the active installs as it allows for less-popular plugins to get more downloads. Users will be less likely to click the popular plugins (outside of familiar names) and more likely to find the plugin they actually need.</p></blockquote>\n<p>Another commenter suggests <a href="https://profiles.wordpress.org/awakensolutions/">creating a simple/advanced view. </a>By default, the page could display a simplistic design while giving power users an option for more details.</p>\n<p>&#8220;Just like <a href="https://wordpress.org/about/philosophy/" rel="nofollow">WordPress core</a>, we strive to design for the majority and build features for the 80%,&#8221; Sidler said in response to the comment. &#8220;An &#8216;advanced&#8217; view doesn’t meet that requirement, in my eyes.&#8221;</p>\n<p>The Meta team is iterating quickly and will soon publish a prototype of the plugin details page. If you have feedback on the plugin homepage and search result prototypes, please leave a comment on <a href="https://make.wordpress.org/meta/2016/05/19/plugin-directory-prototypes/">the announcement post</a>.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 20 May 2016 20:19:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:94:"WPTavern: WPWeekly Episode 235 – Interview with James Giroux Envato’s WordPress Evangelist";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wptavern.com?p=55000&preview_id=55000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:97:"http://wptavern.com/wpweekly-episode-235-interview-with-james-giroux-envatos-wordpress-evangelist";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1298:"<p>In this episode, <a href="http://marcuscouch.com/">Marcus Couch</a> and I are joined by <a href="https://jamesgiroux.ca/">James Giroux</a>, Envato&#8217;s WordPress evangelist. We discuss a number of topics including what he&#8217;s accomplished since taking over the position in January, the item support policy change, and author driven pricing.</p>\n<p>We also find out what his favorite part of the job is and what he enjoys most about his role at Envato. Last but not least, we discover what the company is doing to shorten the length of time it takes to get through the review queue.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, June 1st 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="http://www.wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #235:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 19 May 2016 19:18:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WPTavern: BuddyPress Launches Style Modules Trial Initiative";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54954";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wptavern.com/buddypress-launches-style-modules-trial-initiative";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3960:"<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/customize-posts.jpg"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/customize-posts.jpg?resize=1024%2C583" alt="photo credit: Paintbrush - (license)" class="size-full wp-image-54351" /></a>photo credit: <a href="http://www.flickr.com/photos/93249705@N03/13067171403">Paintbrush</a> &#8211; <a href="https://creativecommons.org/licenses/by-nd/2.0/">(license)</a>\n<p>BuddyPress core developer <a href="https://twitter.com/hnla" target="_blank">Hugo Ashmore</a> announced a new trial initiative this week that aims to create a library of CSS and JavaScript snippets to help users customize their communities. The <a href="https://bpdevel.wordpress.com/2016/05/11/buddypress-style-modules/" target="_blank">Style Modules</a> project will aggregate community-submitted code that enhances BuddyPress components in a plug-and-play manner.</p>\n<p>Developers who want to contribute to the project can submit their modules by creating a ticket on <a href="https://buddypress.trac.wordpress.org/newticket" target="_blank">BP trac</a> and attaching a zip file that includes the CSS/JS files, a readme.md, and a screenshot.</p>\n<p>Users who want to add a module will need to create a /style-modules/ directory and then unzip the module inside it. The next step requires the user to copy functions from the module&#8217;s readme file to their theme&#8217;s functions.php file, a step which provides a significant hurdle for a non-technical BuddyPress community manager.</p>\n<p>&#8220;Initially this is a trial to see whether we get sufficient interest in the concept to continue and develop further, perhaps enhancing the loading process with enqueueing of files based on directory scanning and loading of files as an array but run from the core theme compat class, removing the need for users to copy the loading functions to their functions file,&#8221; Ashmore said.</p>\n<p>The project&#8217;s GitHub repository includes <a href="https://github.com/buddypress/style-modules/wiki/Style-Modules-Listings">an example module</a> that re-styles the members list into a grid layout. Other example ideas Ashmore suggested include a new look for profile entries, a different presentation for the activity posting form, or something as simple as changing the font size for the activity stream.</p>\n<p>The experimental initiative will test the waters to see if the BuddyPress community will chip in to provide enough modules to make this a real library. The support policy stated in the proposal doesn&#8217;t offer much incentive for module authors to submit their work:</p>\n<blockquote><p>Provision of modules and use of them is entirely the discretion of the authors and users, while BP will run some basic checks on the module BP does not guarantee that the modules will work in all given situations or installs, or accept any liability in their use. Support for a module remains the responsibility of the author to ensure the continued effectiveness of the module with updates to themes, WP or BP.</p></blockquote>\n<p>Historically, BuddyPress has struggled to present itself as an easily customizable solution for communities. <a href="http://codex.buddypress.org/themes/theme-compatibility-1-7/a-quick-look-at-1-7-theme-compatibility/" target="_blank">Theme compatibility</a>, introduced in April 2013, made it easier to use BP with any theme, but unless you purchase a theme specifically designed for the plugin, its default output is rather generic and in need of heavy styling.</p>\n<p>The <a href="https://bpdevel.wordpress.com/2016/05/11/buddypress-style-modules/" target="_blank">BuddyPress Style Modules</a> concept is an attempt to make it easier for community managers to enhance BP components with different looks, but the project will need to provide a compelling reason for developers to contribute modules and continue to maintain them.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 19 May 2016 02:34:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"WPTavern: The .blog Domain Extension Is Now Open to Registrars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54971";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"http://wptavern.com/the-blog-domain-extension-is-now-open-to-registrars";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2083:"<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/blogging.jpg"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/blogging.jpg?resize=960%2C521" alt="photo credit: Luis Llerena" class="size-full wp-image-54799" /></a>photo credit: <a href="https://stocksnap.io/photo/3ZHG0XOIT6">Luis Llerena</a>\n<p>Today marks a moment in internet history, as the very first .blog domain is now operational on WordPress.com. Knock Knock, WHOIS There, a subsidiary of Automattic, launched <a href="https://nic.blog/" target="_blank">Nic.blog</a> today to begin getting registrars to sign up to sell the new TLD.</p>\n<p>Automattic <a href="http://wptavern.com/automattic-to-oversee-the-sale-and-registration-of-top-level-blog-domains" target="_blank">won the rights to oversee the sale and registration of the .blog domain</a> in 2015 via a bidding process that is estimated to have closed around $20 million. The domain extension is so new that Twitter doesn&#8217;t yet support it as a valid link, but Automattic expects to activate 250,000 new names in 2016.</p>\n<p>According to the new nic.blog information site, registrars that sign up to sell .blog domains will be able to participate in an incentive partnership model that rewards a higher volume of sales:</p>\n<blockquote><p>Pricing will be in the standard range for new gTLDs, with premium names available in several tiers. High margins for registrars will be guaranteed by an incentive model, rewarding sales above a certain baseline. Final terms will be published in the coming weeks.</p></blockquote>\n<p>Automattic is opening up the .blog TLD to registrars around the world and companies can sign up on nic.blog to learn more about the requirements. Individuals who are interested in purchasing a .blog domain should review the tentative <a href="https://nic.blog/launch-plan/" target="_blank">launch plan</a> published today. Registration will be open to trademark owners during the Sunrise period starting in August 2016, followed by a Landrush period in October.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 18 May 2016 23:26:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:87:"WPTavern: After Eight Years, Thematic Theme’s Lead Developers Discontinue the Project";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54967";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"http://wptavern.com/after-eight-years-thematic-themes-lead-developers-discontinue-the-project";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3812:"<p>Gene Robinson, lead developer of the Thematic WordPress theme, has <a href="http://thematictheme.com/2016/05/15/thematic-retrospective/">announced</a> that the project will no longer be developed. Thematic <a href="https://wordpress.org/themes/thematic/">was last updated</a> in 2013 and is actively installed on more than 4K sites. Users are advised to migrate to a different theme as updates will no longer be released. As WordPress core evolves, sites using Thematic may develop incompatibilities.</p>\n<h2>Continuing The Legacy with a Different Name</h2>\n<p>Although development on Thematic is discontinuing, Robinson has forked the project and renamed it to <a href="http://d.eciduo.us">Deciduous. </a>The project picks up where Thematic leaves off. Those interested in continuing development can <a href="https://github.com/emhr/Deciduous">follow it on GitHub</a> where pull requests are welcomed. Robinson is also seeking links to other projects that are derivative of Thematic.</p>\n<h2>Where to Get Support for Thematic</h2>\n<p>Users who need support are advised to post on the <a href="https://wordpress.org/support/theme/thematic">WordPress.org support forums</a> for the Thematic theme, &#8220;The support forums on the Thematic website are shutting down due to the lack of community involvement, moderation, and developer feedback,&#8221; Robinson said. &#8220;Hopefully the greater WordPress support community will be able to help you find a resolution.&#8221;</p>\n<h2>A Look Back</h2>\n<p>The years 2008-2009 is an interesting time frame in WordPress&#8217; history. A number of commercial theme and plugin companies, WordPress-centric sites, and projects were launched. Among these was the <a href="https://web.archive.org/web/20080611165821/http://themeshaper.com/thematic-for-wordpress/">Thematic theme</a> by Ian Stewart, theme Wrangler for Automattic. Thematic was more than just a theme, it was an opportunity for Stewart to learn how WordPress&#8217; theme system works.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/ThematicThemePreview.png"><img class="size-full wp-image-54981" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/ThematicThemePreview.png?resize=951%2C740" alt="Thematic Theme Preview from WordPress.org" /></a>Preview of Thematic from WordPress.org\n<p>He regularly shared his knowledge with the community through <a href="https://themeshaper.com/">ThemeShaper.com</a>, a site now owned by Automattic that features contributions from other members of the theme team. It was the wild west of theme development in 2008 and any person who regularly shared theme development techniques became an influential member of the community.</p>\n<p>Two years after launching Thematic, Stewart <a href="https://themeshaper.com/2010/03/04/ian-stewart-joined-automattic/">joined Automattic</a> as a theme wrangler.</p>\n<blockquote><p>What can I say besides awesome, awesome, awesome? The enormous opportunity for learning and improvement; all the super-talented, friendly people; the chance to work on so many really, really cool projects—it’s almost unbelievable. This is a dream job for me.</p></blockquote>\n<p>The hiring allowed him to make available all of his commercial child themes built on the Thematic framework available free of charge to the community.</p>\n<h2>Did You Learn From Thematic?</h2>\n<p>It&#8217;s bittersweet and slightly nostalgic to see the theme come to an end. When I launched the Tavern in 2009, I regularly linked to tutorials and articles published by Stewart. I&#8217;m almost certain Thematic and its creator helped out a number of budding theme developers between 2008-2011. Let us know in the comments if you used Thematic for any projects or what you learned from its code.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 18 May 2016 20:45:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"Post Status: WordPress as a Headless CMS — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=24518";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://poststatus.com/wordpress-headless-cms-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2870:"<p>Welcome to the Post Status <a href="https://poststatus.com/category/draft">Draft podcast</a>, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>, <a href="https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast">Google Play</a>, <a href="http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast">Stitcher</a>, and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Joe Hoyle &#8212; the CTO of Human Made &#8212; and Brian Krogsgard.</p>\n<p><span>Joe and Brian discuss WordPress as a Headless CMS. They talk about what a Headless CMS is, WordPress’s strengths and weaknesses as a Headless CMS, popular frameworks to utilize, and offer up example websites to check out.</span></p>\n<p><a href="https://audio.simplecast.com/37861.mp3">https://audio.simplecast.com/37861.mp3</a><br />\n<a href="http://audio.simplecast.com/37861.mp3">Direct Download</a></p>\n<h3>Examples</h3>\n<ul>\n<li><a href="https://www.guggenheim.org/">The Guggenheim</a></li>\n<li><a href="https://adayofrest.hm/boston-2016/">A Day of Rest Boston</a></li>\n<li><a href="https://ustwo.com/">ustwo</a></li>\n<li><a href="http://skaled.com/">Skaled</a></li>\n<li><a href="http://tri.be/">Modern Tribe</a></li>\n</ul>\n<h3>Links</h3>\n<ul>\n<li><a href="https://angularjs.org/">Angular</a></li>\n<li><a href="https://facebook.github.io/react/">React</a></li>\n<li><a href="http://blog.scalac.io/2016/02/16/react-vs-angular-2.html">React vs Angular 2</a></li>\n<li><a href="https://getmoxied.net/lean/">Lean, an Agular for WordPress framework</a></li>\n<li><a href="https://pantheon.io/decoupled-cms">Decoupled CMS</a></li>\n<li><a href="https://css-tricks.com/what-is-a-headless-cms/">What is a Headless CMS?</a></li>\n<li><a href="http://petya.in/we-need-to-talk-about-the-rest-api-the-non-developer-guide-to-the-future-of-wordpress/">We Need to Talk about the REST API</a></li>\n<li><a href="https://make.wordpress.org/core/2016/05/16/rest-api-authentication-broker/">Introducing the REST API Authentication Broker</a></li>\n<li><a href="https://hmn.md/2016/01/14/introducing-our-wordpress-rest-api-white-paper/">Human Made&#8217;s REST API White Paper</a></li>\n</ul>\n<h3>Sponsor</h3>\n<p><span>Today’s show is sponsored by </span><a href="http://optinmonster.com"><span>OptinMonster</span></a><span>. OptinMonster allows you to convert visitors into subscribers. You can easily create &amp; A/B test beautiful lead capture forms without a developer. They recently released </span><a href="http://optinmonster.com/introducing-optinmonster-3-0-taking-your-conversion-optimization-to-the-next-level/"><span>OptinMonster 3.0</span></a><span>, with an all new builder interface and other great features.</span></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 18 May 2016 17:47:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Katie Richards";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:87:"WPTavern: Take Granular Control of WordPress’ Update System with Easy Updates Manager";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54952";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:94:"http://wptavern.com/take-granular-control-of-wordpress-update-system-with-easy-updates-manager";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3933:"<p>When <a href="https://wordpress.org/news/2013/10/basie/">WordPress 3.7 &#8220;Basie&#8221;</a> was released in 2013, it brought automatic updates to the masses. By default, WordPress automatically updates to point releases. Using <a href="https://codex.wordpress.org/Configuring_Automatic_Background_Updates">additional constants</a> within wp-config.php, you can configure WordPress to automatically update themes, plugins, and major releases.</p>\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/EasyUpdateManagerFeaturedImage.png"><img class="aligncenter size-full wp-image-54958" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/EasyUpdateManagerFeaturedImage.png?resize=650%2C207" alt="Easy Update Manager Featured Image" /></a></p>\n<p>If you want granular control over the WordPress update system without touching code, check out <a href="https://wordpress.org/plugins/stops-core-theme-and-plugin-updates/">Easy Updates Manager</a>. Easy Updates Manager is a free plugin that&#8217;s active on more than 70k sites. It&#8217;s maintained by <a href="https://profiles.wordpress.org/kidsguide/">Matthew</a>, <a href="https://profiles.wordpress.org/ronalfy/">Ronald Huereca</a>, <a href="https://profiles.wordpress.org/roary86/">Roary Tubbs</a>, and <a href="https://profiles.wordpress.org/bigwing/">BigWing Interactive</a>.</p>\n<h2>Countless Number of Configurations Available</h2>\n<p>Once activated, you&#8217;ll find the options page by browsing to Dashboard &gt; Update Options. There are two different interfaces for configuring updates. The first includes a number of toggle switches that disable/enable updates. The second is a traditional screen with radial buttons.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/EasyUpdateManagerDashboard.png"><img class="size-full wp-image-54959" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/EasyUpdateManagerDashboard.png?resize=1025%2C432" alt="Easy Update Manager Dashboard" /></a>Easy Updates Manager Dashboard\n<p>Traditional settings page for Easy Updates Manager.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/EasyUpdateManagerGeneralSettings.png"><img class="size-full wp-image-54960" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/EasyUpdateManagerGeneralSettings.png?resize=566%2C480" alt="Easy Update Manager General Settings" /></a>Easy Updates Manager General Settings\n<p>One of the highlights of Easy Updates Manager is the ability to enable automatic updates for individual themes and plugins. It&#8217;s a convenient way to update themes and plugins that rarely cause issues. There&#8217;s also a built-in logging feature that when enabled creates a new table in the database. It logs the username, update type, version, action, status, and date.</p>\n<p>Logging is listed as a beta feature and should be used at your own risk. It also may not work with all commercial themes and plugins. Here&#8217;s what the log looks like after I updated three plugins.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/EasyUpdateManagerLogs.png"><img class="size-full wp-image-54961" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/EasyUpdateManagerLogs.png?resize=1025%2C350" alt="Easy Update Management Log" /></a>Easy Updates Management Log\n<p>Easy Updates Manager also includes the ability to exclude users from manipulating the plugin&#8217;s settings. The plugin contains additional features that I encourage you to explore by using it on a test site.</p>\n<p>Thanks to the number of options available, users have a countless number of update configurations to choose from. I tested the plugin on WordPress 4.6 alpha and it works as expected. You can <a href="https://wordpress.org/plugins/stops-core-theme-and-plugin-updates/">download it for free</a> from the WordPress plugin directory.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 18 May 2016 07:17:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:91:"WPTavern: WordPress 4.6 Improves the Accessibility of the Tag and Category Management Pages";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54910";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:101:"http://wptavern.com/wordpress-4-6-improves-the-accessibility-of-the-tag-and-category-management-pages";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2775:"<p>Among the improvements coming in WordPress 4.6 are <a href="https://make.wordpress.org/core/2016/05/16/categories-and-tags-screens-changes/">accessibility enhancements</a> to the Category and Tag management pages. The flow of each page has been changed so that the visual order of elements match the tab order. This allows those who navigate with keyboards to access the Add New Tag or Add New Category area first.</p>\n<p>Andrea Fercia, WordPress core committer and a member of the accessibility team, explains why the changes matter, &#8220;For accessibility, the visual order should always match the tab order. The main functionality in a page should just be the first thing in the source markup and other parts of the user interface should never be &#8216;skipped&#8217;.&#8221;</p>\n<p>The following image shows the tab order of elements on the Tag management screen in WordPress 4.5. In order to reach the Add New Tag section, you need to tab through a number of checkboxes, each tag in the tag cloud, and various quick edit links. This is a time-consuming and frustrating process.</p>\n<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/WordPress45TagManagementPage.png"><img class="size-full wp-image-54944" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/WordPress45TagManagementPage.png?resize=1025%2C806" alt="WordPress 4.5 Tag Management Element Order" /></a>WordPress 4.5 Tag Management Element Order\n<p>In WordPress 4.6, the Add New Tag section is the first visual element as well as the first section accessed when pressing the tab key.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/WordPress46TagManagementScreen.png"><img class="size-full wp-image-54945" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/WordPress46TagManagementScreen.png?resize=1025%2C792" alt="WordPress 4.6 Tag Management Screen" /></a>WordPress 4.6 Tag Management Screen\n<p>The new flow is more logical and provides consistency between the tag and category management screens, &#8220;From an accessibility point of view, the content structure and organization will be easier to understand and navigate,&#8221; Fercia said.</p>\n<p>WordPress theme and plugin authors who have added custom functionality to these screens are advised to double-check their code against the bleeding edge version of WordPress 4.6. There&#8217;s also an <a href="https://core.trac.wordpress.org/ticket/35664">in-depth ticket</a> where developers and users can see how the team reached a consensus to implement the changes. If you have any questions or concerns please leave a comment on the <a href="https://make.wordpress.org/core/2016/05/16/categories-and-tags-screens-changes/">announcement post</a>.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 17 May 2016 19:30:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: New Plugin Uses BuddyPress Email API to Send bbPress Forum Emails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54863";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:85:"http://wptavern.com/new-plugin-uses-buddypress-email-api-to-send-bbpress-forum-emails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3011:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/buddypress-bbpress.jpg"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/09/buddypress-bbpress.jpg?resize=1025%2C493" alt="buddypress-bbpress" class="aligncenter size-full wp-image-30982" /></a></p>\n<p><a href="http://wptavern.com/buddypress-2-5-0-released-features-customizable-emails-and-support-for-emoji" target="_blank">BuddyPress 2.5</a>, released in March, introduced customizable emails via a new <a href="http://wptavern.com/buddypress-2-5-will-add-customizable-emails-via-a-new-bp-email-api" target="_blank">BP Email API</a>. This new feature allows community managers to easily edit BuddyPress-generated emails in the admin and make design changes in the customizer.</p>\n<p>It didn&#8217;t take long for developers to think of bringing this same customizability to bbPress emails. <a href="https://profiles.wordpress.org/thebrandonallen/" target="_blank">Brandon Allen</a> has just released <a href="https://wordpress.org/plugins/bp-emails-for-bbp/" target="_blank">BP Emails for BBP</a>, a plugin that sends forum and topic subscription emails using the new BP Email API.</p>\n<p>Once installed, administrators will find templates for new forum topics and topic replies under the same Emails menu item with the 16 customizable BuddyPress core emails.</p>\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/buddypress-bbpress-emails.png"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/buddypress-bbpress-emails.png?resize=1025%2C305" alt="buddypress-bbpress-emails" class="aligncenter size-full wp-image-54878" /></a></p>\n<p>Allen noted that the plugin sends emails differently than bbPress, which puts every subscriber email in the BCC field and sends one email. Instead, it sends a separate email to each subscriber, which Allen said may improve deliverability given that some email providers look unfavorably on emails with large BCC fields.</p>\n<p>I tested the plugin and found that it works as advertised for customizing and sending bbPress emails. There are no settings to configure. It simply adds the same functionality that users now expect from BuddyPress core emails with all the same customization options.</p>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/bbpress-subscription-email.png"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/bbpress-subscription-email.png?resize=1025%2C500" alt="bbpress-subscription-email" class="aligncenter size-full wp-image-54929" /></a></p>\n<p><a href="https://wordpress.org/plugins/bp-emails-for-bbp/" target="_blank">BP Emails for BBP</a> is available on WordPress.org. It does not work with bbPress alone but requires both bbPress 2.5+ and BuddyPress 2.5+ to be active. With the help of this plugin, a community manager can brand all the email communications generated by the site so that the design and wording is consistent across both plugins.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 17 May 2016 05:32:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WPTavern: BuddyPress 2.6 to Introduce New API for Navigation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54803";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wptavern.com/buddypress-2-6-to-introduce-new-api-for-navigation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2401:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/buddypress-logo-blue.png"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/09/buddypress-logo-blue.png?resize=839%2C398" alt="buddypress-logo-blue" class="aligncenter size-full wp-image-30655" /></a></p>\n<p>In an exceptionally well-documented <a href="https://buddypress.trac.wordpress.org/changeset/10745/" target="_blank">commit message</a>, BuddyPress lead developer Boone Gorges introduced a new API to manage single item navigation, thanks to contributions from core developers Mathieu Viet and Raymond Hoh. Gorges summarized the changes to how BuddyPress will handle navigation in the upcoming 2.6 release:</p>\n<blockquote><p>The new BP_Core_Nav overhauls the way that BuddyPress registers, stores, and renders navigation items. Navigations are now component-specific, eliminating the potential for confusion and conflict between navigation items with similar names in different components, and opening the possibility of generating navs for separate objects of the same type on a single pageload.</p></blockquote>\n<p>The previous navigation system used bp_nav and bp_options_nav, global properties that managed nav and subnav across all of BuddyPress&#8217; components. Developers had a difficult time extending navigation and sometimes ended up stepping on each other&#8217;s toes when adding similar navigation items.</p>\n<p>&#8220;The new system eliminates most of these problems, by removing direct access to the underlying navigation data, while providing a full-fledged API for accessing and modifying that data,&#8221; Gorges said.</p>\n<p>Although the new API ensures backward compatibility with the legacy bp_nav and bp_options_nav, plugin developers whose extensions depend on these methods will want to update their code. With the exception of certain configurations running PHP 5.2.x, most plugins should work the same as before.</p>\n<p>However, Gorges&#8217; <a href="https://buddypress.trac.wordpress.org/changeset/10745/" target="_blank">commit message</a> details a handful of small ways that the new API may break backward compatibility in a few rare instances. BuddyPress plugin developers will want to review these ahead of the upcoming 2.6 release. Beta 1 is just one week away from release on May 25 and the official release is targeted for June 15.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 17 May 2016 05:06:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"WPTavern: Wes Bos Launches Free React.js + Redux Online Course";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54903";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"http://wptavern.com/wes-bos-launches-free-react-js-redux-online-course";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3193:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/react-redux-course.png"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/react-redux-course.png?resize=1025%2C465" alt="react-redux-course" class="aligncenter size-full wp-image-54916" /></a></p>\n<p><a href="http://wesbos.com/" target="_blank">Wes Bos</a>, a developer and educator known for his high quality video tutorials, has just launched a free online course for building JavaScript apps with <a href="https://facebook.github.io/react/" target="_blank">React.js</a> and <a href="http://redux.js.org/" target="_blank">Redux</a>. The 2.5 hour <a href="https://learnredux.com/" target="_blank">Learn Redux</a> course includes 20 videos that guide developers through building an example &#8216;Reduxstagram&#8217; app to present the core ideas behind Redux.</p>\n<p>To get the most out of Learn Redux, students should have a decent foundation of React and ES6. Bos recommends those who are not comfortable with React to start with his <a href="https://reactforbeginners.com/" target="_blank">React for Beginners</a> course.</p>\n<p>After you sign up, you&#8217;ll receive an email with a link to the starter files and access to the videos. The example app uses Webpack to bundle ES6 modules into a single JavaScript file, so the course begins with a video on using NPM and Webpack to set up a local development environment. Learn Redux includes:</p>\n<ul>\n<li>Access to all 20 videos</li>\n<li>All starter files</li>\n<li>Webpack Build Templates</li>\n<li>Stepped and finished solutions</li>\n</ul>\n<p>Bos spent more than 100 hours producing this series in partnership with <a href="https://getsentry.com/welcome/" target="_blank">Sentry</a> as a sponsor. Anyone who signs up receives a $50 Sentry credit.</p>\n<p>After Calypso was announced, Bos, who describes himself as &#8220;a huge WordPress fan,&#8221; wrote a <a href="http://wesbos.com/wordpress-calypso-react/" target="_blank">post</a> dispelling rumors that WordPress was ditching PHP and being rewritten in Node.js. He also urged WordPress developers to learn JavaScript.</p>\n<p>&#8220;This is thunder in the distance as to what is to come in WordPress,&#8221; Bos said. &#8220;Much of the theme writing I do is already in JavaScript – I often use WordPress as just an API to get data out of, and then use frameworks like Angular, React, Google Maps or jQuery to display that data. I’m not building an entire website in a JavaScript framework, but much of the interactive view layer of these sites is moving into JavaScript frameworks.&#8221;</p>\n<p>If you want to be ready to dive into the next generation of WordPress site and application development with knowledge of one of the most popular JS frameworks, the free <a href="https://learnredux.com/" target="_blank">Learn Redux</a> course offers all the tools necessary for getting started with React.js, Redux, and React Router.</p>\n<p>&#8220;Our trusty PHP template files aren’t going anywhere anytime soon, but I’ll bet you dollars to donuts you’ll be writing a lot more JavaScript in your WordPress sites in the years to come,&#8221; Bos said.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2016 21:50:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:134:"WPTavern: Daniel Bachhuber Discusses WP-CLI, the WP REST API, and the Challenges of Contributing to Open Source on Roots Radio Podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:142:"http://wptavern.com/daniel-bachhuber-discusses-wp-cli-the-wp-rest-api-and-the-challenges-of-contributing-to-open-source-on-roots-radio-podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7828:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/daniel-bachhuber.jpg"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/daniel-bachhuber.jpg?resize=300%2C300" alt="daniel-bachhuber" class="alignright size-medium wp-image-54898" /></a><a href="https://danielbachhuber.com/" target="_blank">Daniel Bachhuber</a>, maintainer of the <a href="http://wp-cli.org/" target="_blank">WP-CLI</a> project and a contributing developer to the <a href="http://v2.wp-api.org/" target="_blank">WP REST API</a>, joined Chris Carr and Austin Pray on a recent episode of the <a href="https://roots.io/podcast/ep13/" target="_blank">Roots Radio podcast</a>. Bachhuber discussed his recent experience crowdfunding his work on &#8220;<a href="https://wp-cli.org/restful/" target="_blank">A More RESTful WP-CLI</a>&#8221; as well as the challenges he&#8217;s encountered as a contributor to various open source projects over the years.</p>\n<p>In the first part of the episode, Bachhuber shared how he spent the 283 hours of time that the WordPress community funded to advance the WP-CLI and WP REST API projects. The funding gave him the opportunity to dedicate time split between the two projects. Bachhuber put in approximately 95 hours towards the REST API in January and February but the bulk of the hours went towards making WP-CLI more friendly for developers who work with the REST API.</p>\n<p>&#8220;WordPress developers are going to be putting a lot of time now towards writing REST endpoints that expose their functionality to the world, and it would be really nice if WP-CLI interoperated nicely with that and allowed you to use that functionality at the command line without having to separately write your own WP-CLI commands,&#8221; Bachhuber said.</p>\n<p>He discussed the challenge of scoping out this broad goal and what he learned about crowdfunding during the process.</p>\n<p>&#8220;The RESTful WP-CLI kickstarter project was intentionally ambitious, because I&#8217;m a guy who has big ideas and likes to do big things,&#8221; Bachhuber said. &#8220;There are some things I feel really happy that I&#8217;ve been able to ship and produce so far, and there are other features that, for one reason or another, I haven&#8217;t quite been able to execute  yet and that&#8217;s a bit frustrating.</p>\n<p>&#8220;It&#8217;s a whole different ball game trying to manage the expectations of your Kickstarter backers than it is a single client. I&#8217;ve got 107 clients that I have to make happy,&#8221; he said.</p>\n<p>Nevertheless, Bachhuber said he was able to get the issue backlog for WP-CLI down to less than 60 issues and the dedicated time has allowed him to resolve old issues that have &#8220;languished since the dawn of time.&#8221;</p>\n<p>As part of the rewards offered for contributors to the crowdfunding campaign, Bachhuber offered his time consulting with individuals and organizations, which he found to be easier than traditional physical swag rewards.</p>\n<p>&#8220;I&#8217;m really glad that I chose [consulting] over having to give out physical swag, because it&#8217;s very difficult to procure and ship to everyone, particularly when you have international backers,&#8221; he said. &#8220;Even though I&#8217;ve spent a lot of my time fulfilling the rewards and talking with people and having calls with them and meeting up with them in person, it&#8217;s a much easier effort to manage than sending 100 coffee mugs across the world.&#8221;</p>\n<p>When asked if he&#8217;d do it again, Bachhuber said yes but emphasized that spending this much time on an open source project only works if you keep a healthy balance with other aspects of life.</p>\n<p>&#8220;I think it&#8217;s really important that if you&#8217;re contributing to open source projects on a regular basis or even maintaining them, that you balance your time between that and other things,&#8221; he said. &#8220;It&#8217;s really easy to get burned out on said open source project if you spend 100% of your time on it for a whole month or six months.</p>\n<p>&#8220;I was pretty intentional to say that the money I was raising was going to cover my involvement with the project for six months, a certain number of hours, and that it was going to be a part-time thing. That was a really healthy way to approach it. I think I would have gotten burned out if I had just tried to dive into it, crank it out, and move on to the next thing,&#8221; Bachhuber said.</p>\n<h3>The Emotional Challenges of Working on Open Source Projects</h3>\n<p>During the course of the interview Bachhuber was asked to share his feelings on what he referred to as &#8220;the kerfuffle with the REST API&#8221; that happened in February. The REST API team had written a merge proposal in September 2015 that recommended merging the API in two parts &#8211; the infrastructure in 4.4 and the posts, comments, terms, and users endpoints in 4.5 or 4.6. After partially executing on that proposal, the team held a status chat to discuss the plan moving forward.</p>\n<p>Bachhuber said that the discussion became &#8220;a very emotionally fraught event&#8221; after Matt Mullenweg said the project needed feature parity with the WordPress admin before any of the endpoints could be considered for merge. After putting hundreds of hours into the project alongside a handful of dedicated contributors who were already spread thin, he found this new requirement was a difficult pill to swallow.</p>\n<p>&#8220;For better or for worse, as a maintainer or even a participant of an open source project, you have to have a thick skin and realize that all the time the decisions that are made are not about you &#8211; they are about the project,&#8221; Bachhuber said. &#8220;Even if you are personally offended by the decision, it doesn&#8217;t matter because it isn&#8217;t about you. It&#8217;s really difficult to deal with emotionally.&#8221;</p>\n<p>Bachhuber&#8217;s years of contributing to and maintaing open source projects has taught him a few things about managing stress and conflict that <a href="https://2016.europe.wordcamp.org/session/my-condolences-youre-now-the-maintainer-of-a-popular-open-source-project/" target="_blank">he plans to share at WordCamp Europe</a> in a talk titled, &#8220;My condolences, You&#8217;re now the maintainer of a popular OS project.&#8221;</p>\n<p>&#8220;I find a lot of joy in maintaining open source projects,&#8221; Bachhuber said. &#8220;I also have to actively work to address the emotional side of the equation to make sure I&#8217;m in a healthy space to continue maintaining the project and the project is not affecting me personally. It&#8217;s taken me years to come to a point where I&#8217;m comfortable with that.&#8221;</p>\n<p>In the case of the WP REST API, Bachhuber has come to a place where he can compartmentalize his emotional reactions and responses to the differing opinions.</p>\n<p>&#8220;I&#8217;ve come to a point now where I care but I don&#8217;t care,&#8221; he said. &#8220;I care in the sense that I&#8217;d still love to see those endpoints go into core and see the fruits of our labors realized. I don&#8217;t care because I&#8217;m not emotionally attached to that happening on any particular time frame. I honestly would rather it happen when it&#8217;s ready to happen over prematurely, and I realize I might not be the best qualified person to make that decision.&#8221;</p>\n<p>In the remainder of the episode, Bachhuber and Carr discuss React, Redux, Karma, Enzyme, and other tools for testing and developing with the REST API. Check out the recording of the episode on <a href="https://roots.io/podcast/ep13/" target="_blank">Roots Radio</a> for more details about Bachhuber&#8217;s work on WP-CLI and his crowdfunding experience.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2016 06:03:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:102:"WPTavern: The WordPress.org Recommended Hosting Page is Revamped, Features Flywheel for the First Time";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54822";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:111:"http://wptavern.com/the-wordpress-org-recommended-hosting-page-is-revamped-features-flywheel-for-the-first-time";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8235:"<p>DreamHost, Flywheel, and SiteGround have joined Bluehost on WordPress.org&#8217;s new <a href="https://wordpress.org/hosting/">recommended hosting</a> page. In mid 2015, Matt Mullenweg, co-founder of the open source WordPress project, <a href="http://wptavern.com/the-recommended-hosting-page-on-wordpress-org-starts-over-from-scratch">announced</a> the page would be revamped. To have a chance at being listed webhosting companies needed to fill out a 40-question survey.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/RecommendedHostsPage.png"><img class="size-full wp-image-54844" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/RecommendedHostsPage.png?resize=790%2C642" alt="2016 Recommended Hosts Page" /></a>2016 Recommended Hosts Page\n<p>This is Flywheel&#8217;s first time on the page. <a href="https://getflywheel.com/">Flywheel</a>, launched in 2013, is a managed WordPress hosting company with an emphasis towards designers and agencies. I asked Dusty Davidson, c<span class="team__role">o-Founder and CEO of Flywheel</span>, what it means to be included on the page. &#8220;We&#8217;re obviously excited to be included, and think it really reflects on the work we&#8217;ve done to create a great experience for WordPress users,&#8221; he<span class="team__role"> said. </span></p>\n<p>The recommended webhosting page on WordPress.org is incredibly lucrative. Based on conversations I&#8217;ve had with employees of hosts listed, it can generate millions of dollars in revenue. I asked Davidson what impact this will have on his company, &#8220;<span class="team__role">I&#8217;m sure it will undoubtedly send a good deal of traffic, but honestly we&#8217;re just humbled and excited to be recognized,&#8221; he said. </span></p>\n<h2>A New Round of Controversy</h2>\n<p>Over the years, companies have come and gone from the recommended hosting page. However, Bluehost in particular has consistently appeared on the list, including the most recent iteration. Bluehost is owned by <a href="http://www.endurance.com/">Endurance International Group</a> who <a href="http://www.prweb.com/releases/2014/05/prweb11874425.htm">invested in Automattic</a> in 2014. Because Mullenweg is the CEO of Automattic and controls who is listed on the page, it&#8217;s easy to see why it regularly generates controversy.</p>\n<p>Kevin Ohashi of ReviewSignal.com, <a href="http://reviewsignal.com/blog/2016/05/12/wordpress-org-updates-hosting-recommendations-nobody-knows-selection-criteria/">criticized the lack of transparency</a> regarding the process for how hosts.</p>\n<blockquote><p>Who is responsible for this revamp? What were the selection criteria? How often will it be updated? Will existing companies be continuously re-evaluated?</p></blockquote>\n<p>These are important questions to ask and there are no publicly documented answers. In a follow up post, <a href="http://reviewsignal.com/blog/2016/05/13/wordpress-org-hosting-recommendations-listing-criteria/">Ohashi investigated</a> what criteria needs to be met for being listed on the page. The post contains a number of screenshots of his private conversation with <a href="https://profiles.wordpress.org/macmanx">James Huff</a>, who has volunteered for the WordPress project for 12 years and has worked at Automattic for five years.</p>\n<p>Huff was directly related to the project and influenced who was chosen thanks to his involvement on the WordPress Support Team. Within the conversation, he shares details of the process and mentions that no money exchanged hands. Early in the conversation, Ohashi tells Huff that he wants to learn and publish how the process works. However, Huff had no idea that everything he said would be made public.</p>\n<p>&#8220;I was invited to what sounded like a friendly chat over direct message from a concerned community member, after he was referred to me by a friend,&#8221; Huff said. &#8220;At no point was it clarified or even implied that anything discussed would be made public.&#8221;</p>\n<p><del>Conversations held in a private matter should remain private unless given permission to publish them, something I discovered the hard way.</del> Unfortunately, the post comes across as a public interrogation of Huff. I asked Huff, who was shaken by the experience, how it has affected him moving forward as it relates to the WordPress project.</p>\n<p>&#8220;I&#8217;d be lying if I said my feelings weren&#8217;t at least shaken by the experience, especially considering how polite he was to my friend and how hostile he was towards me apparently just because I work for Automattic, but this isn&#8217;t the first time that has happened to me and I don&#8217;t expect it to be the last,&#8221; he said.</p>\n<p>&#8220;There&#8217;s an usually prevalent negative bias against Automatticians who contribute to WordPress.&#8221;</p>\n<h2>Mullenweg Provides Clarification</h2>\n<p>Mullenweg <a href="http://reviewsignal.com/blog/2016/05/13/wordpress-org-hosting-recommendations-listing-criteria/#comment-1011">commented on the post</a> where he not only sticks up for Huff, but answers some of the controversial questions raised by Ohashi. Mullenweg explains how the applicants were chosen, how the criteria is weighted, who makes the final decisions, and how much money is involved. Here is his comment in full.</p>\n<blockquote><p>&#8216;I would like to see some transparency in the process&#8217;</p>\n<p>As stated on the page, the listing is completely arbitrary. The process was: There was a survey, four applicants were chosen, and the page was updated. That might repeat later in the year, or the process might change.</p>\n<p>&#8216;how criteria are weighted&#8217;</p>\n<p>There is no criteria or weighting. It ultimately is one person’s opinion. Information that is important is reflected in the questions asked in the survey, but that is not everything that is taken into account. (I have looked at this site in the past, for example.)</p>\n<p>&#8216;who is making the decisions&#8217;</p>\n<p>I am. James helped in sorting through the many submissions that came in, doing additional research, and digging on finalists, but ultimately the decision was mine. You can and should blame me fully for any issues you have with it. I appreciate James’ help in this go-round, but he will not be involved at all with any future updates. (So, please leave him alone.)</p>\n<p>&#8216;how much money is involved&#8217;</p>\n<p>There was no money involved. Obviously being listed on the page is hugely valuable and impacts the listed (or unlisted) businesses a great deal. This is why I take full responsibility for the listing, now and in the future — I have been fortunate to be extraordinarily successful and no financial or business consideration any of the applicants could offer matters to me. A host could offer $100,000,000 to be listed on the page for 1 day, and I would say no.</p></blockquote>\n<p>It&#8217;s unfortunate that the information in Mullenweg&#8217;s comment is not published in an official post announcing the changes to the recommended hosting page. If an official post was published that included the same information in his comment, it&#8217;s possible it would have eliminated most of the confusion, uncertainty, and doubt surrounding it.</p>\n<h2>Should WordPress.org Have a Recommended Hosting Page?</h2>\n<p>Due to the investments EIG has made in Automattic, Mullenweg&#8217;s role at the company, and him making the final decisions, there will always be a potential conflict of interest despite taking full responsibility of the page and the processes associated with it.</p>\n<p>Should WordPress.org have a recommended hosting page? What if the page was replaced with information people could use to make informed decisions on choosing a host? It would eliminate potential conflicts of interest and if there was a host Mullenweg felt strongly about, he could label it as a partner of the project. This would make it clear that any financial connection with the company is a business relationship.</p>\n<p>Are you hosting with any of the companies listed on the recommended hosting page? If so, tell us about your experience in the comments.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 14 May 2016 16:39:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:88:"WPTavern: WordPress Accessibility Team Seeks Testers Using Speech Recognition Technology";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54829";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"http://wptavern.com/wordpress-accessibility-team-seeks-testers-using-speech-recognition-technology";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2791:"<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/glasses.jpg"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/glasses.jpg?resize=1024%2C562" alt="photo credit: Let''s Read - (license)" class="size-full wp-image-54851" /></a>photo credit: <a href="http://www.flickr.com/photos/42788859@N00/320216939">Let&#8217;s Read</a> &#8211; <a href="https://creativecommons.org/licenses/by-nc-sa/2.0/">(license)</a>\n<p>The World Health Organization estimates that <a href="http://www.who.int/mediacentre/factsheets/fs282/en/" target="_blank">285 million people</a> worldwide are living with some form of visual impairment and 39 million of those are estimated to be blind. Many people with low vision depend on speech recognition technology to navigate the web and communicate their thoughts. This type of software also assists people who have carpal tunnel, RSI (Repetitive Stress Injuries) and/or limited mobility in their hands and arms.</p>\n<p>Rian Rietveld and the Accessibility team are working to improve the experience of using WordPress with speech recognition software, such as <a href="http://www.nuance.com/dragon/index.htm" target="_blank">Dragon Naturally Speaking</a> (widely considered as one of the best for desktop use.) In particular, <a href="https://core.trac.wordpress.org/ticket/23562" target="_blank">the task of adding media to a post has a number of obstacles</a> that make it nearly impossible for those using speech recognition software.</p>\n<p>Rietveld <a href="https://make.wordpress.org/accessibility/2016/05/13/20th-wordpress-accessibility-test-add-media-with-speech-recognition-software/" target="_blank">posted three tests</a> to the Accessibility team&#8217;s blog today, inviting those who use <a href="http://www.nuance.com/dragon/index.htm" target="_blank">Dragon Naturally Speaking</a> or other assistive technology to help the contributors determine the roadblocks that need to be removed for adding media. These tests include actions like adding media, editing attachment details, and creating a gallery.</p>\n<p>If you use WordPress with assistive technology for speech recognition, completing these tests and offering your feedback is one way to get involved as a contributor. You don&#8217;t necessarily have to use Dragon Naturally Speaking, as there are many newer alternatives such as Windows Speech Recognition (Cortana) and Chrome&#8217;s speech recognition powered by Google Speech to Text. Testers can report their experiences, along with the assistive technology/browser/OS, in the comments on Rietveld&#8217;s <a href="https://make.wordpress.org/accessibility/2016/05/13/20th-wordpress-accessibility-test-add-media-with-speech-recognition-software/" target="_blank">post</a>.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 13 May 2016 22:40:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"WPTavern: Happytables Pivots to Provide Restaurant Analytics and Insights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=41046";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"http://wptavern.com/happytables-pivots-to-provide-restaurant-analytics-and-insights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5302:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/03/happy-tables.jpg"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/03/happy-tables.jpg?resize=1000%2C608" alt="happy-tables" class="aligncenter size-full wp-image-54835" /></a></p>\n<p><a href="http://www.happytables.com/" target="_blank">Happytables</a> is changing from being a platform that hosts restaurant websites to one that provides analytics and insights by tapping into apps that restaurants are already using to promote their businesses. The company uses WordPress as a command center for the application that communicates with various restaurant-tech APIs to deliver information to the dashboard in realtime.</p>\n<p>&#8220;We started with the website builder a while back,&#8221; Founder and CEO Noel Tock said. &#8220;It’s been a great ride, but we realized two things: 1) Website builders have become a race to the bottom with regards to revenue as well as extremely competitive, and 2) From our many conversations with restaurants, their challenges have become much larger; consolidating data and insights from all the products they now use.&#8221;</p>\n<p>One of the Happytables beta restaurants in London uses 14 different applications to manage its sales, operations, and marketing, and Tock says this trend is only growing.</p>\n<p>&#8220;The centre of gravity is shifting from the Point of Sale to a very fragmented collection of siloed products (reservations, online ordering, staff scheduling/wages, loyalty, waitlist, social, etc.),&#8221; Tock said. &#8220;Becoming that 30,000 foot view whilst generating actionable insights across the portfolio of applications is the challenge we’ve taken on with the new Happytables.&#8221;</p>\n<p>The first installation of the new Happytables was set up for <a href="http://whyteandbrown.com/" target="_blank">Whyte &amp; Brown</a> in London where the team is focusing their beta testing. The application currently aggregates data from POS (Point of Sale) and Social, but Tock says this will rapidly evolve to providing various insights from POS and Labor, such as revenue forecasting, employee performance, and breakfast/lunch/dinner performance.</p>\n<p>&#8220;It’s been very exciting working towards actionable insights, whereby we can tell a waiter that he/she was underselling a certain product or category compared to their colleagues, or that a particular employee performs a lot better on lunch then on dinner,&#8221; Tock said.</p>\n<p>Below you can see an example of Happytables&#8217; latest kitchen dashboard, using the team view as opposed to the individual employee recommendations/suggestions view.</p>\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/03/Happytables_kitchen_dashboard.png"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/03/Happytables_kitchen_dashboard.png?resize=1025%2C731" alt="Happytables_kitchen_dashboard" class="aligncenter size-full wp-image-54833" /></a></p>\n<p>The new Happytables uses WordPress as a backend and the WP REST API and ReactJS on the frontend.  Although the development team still uses WordPress as one of its core technologies, the infrastructure is a bit more complicated.</p>\n<p>&#8220;It’s not pure WordPress for the data storage,&#8221; CTO Aaron Jorbin said. &#8220;In fact, very little of it is actually stored inside WordPress. It is used to store some information about the restaurant and manage requests to third parties where we fetch the data and then store it in DynamoDB.&#8221;</p>\n<p>The screenshots in this post show the WordPress theme in full screen mode, but Jorbin said the restaurant staff never interact with wp-admin. Restaurant operators use the app to view all the realtime information coming in so that they can make better decisions about how they run their businesses.</p>\n<p>Happytables is still hosting its customers from its first iteration as a website builder, but Tock said most are not good candidates for the beta.</p>\n<p>&#8220;The infrastructure is quite different now as we’re capturing different types of data (previously web content, now largely transactional data),&#8221; he said. &#8220;Our customers on the website builder platform came from all walks of life, so there’s not many who fit the ideal beta candidate (using Micros/Aloha as POS, based in London, run a multiunit restaurant, etc.).</p>\n<p>&#8220;We&#8217;re just looking to see how we can fit this into the larger Happytables model downstream,&#8221; Tock said. &#8220;If we’re going to implement so many API’s, there’s also value in tying those back to the website.&#8221;</p>\n<p>Not many aspects of the new infrastructure have been open sourced yet, as the team has been moving fast. Tock said they hope to make some of their code public further down the road after it&#8217;s been tested.</p>\n<p>&#8220;Once we’re past testing/beta, I’m sure a number of features will become more mature tools and move into their own public repo if they are of that sort of benefit,&#8221; he said. The new infrastructure is one of the many exciting ways that the WP REST API is being used to bring a host of information into WordPress from various third party applications and tie it all together in a useful way.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 13 May 2016 19:45:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Matt: Mom on Tinder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=46572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:36:"https://ma.tt/2016/05/mom-on-tinder/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:227:"<p>If you&#8217;re looking for a fun Friday read, <a href="http://www.gq.com/story/my-mom-ran-my-tinder">check out this story of a young GQ writer who gave control of his Tinder account to his Mom</a>. It&#8217;s adorkable.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 13 May 2016 16:35:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:89:"WPTavern: GitLab Courts Disgruntled GitHub Customers with Response to Recent Pricing Hike";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54780";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:99:"http://wptavern.com/gitlab-courts-disgruntled-github-customers-with-response-to-recent-pricing-hike";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5016:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/01/gitlab.png"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/01/gitlab.png?resize=1025%2C371" alt="gitlab" class="aligncenter size-full wp-image-50741" /></a></p>\n<p>Yesterday GitHub <a href="http://wptavern.com/github-introduces-unlimited-private-repositories-hikes-prices-for-organizations" target="_blank">announced</a> pricing changes that give all paid plans unlimited repositories and change plans to a pricing-per-user model. Individual developers are the most likely customers to benefit from the changes, but many organizations will see an exponential increase in pricing.</p>\n<p>GitLab, a competitor in the Git repository hosting space, immediately addressed disgruntled GitHub customers with a <a href="https://about.gitlab.com/2016/05/11/git-repository-pricing/" target="_blank">pricing comparison</a> on the company&#8217;s blog. Co-founder and CEO <a href="https://twitter.com/sytses" target="_blank">Sid Sijbrandij</a> noted that the three main players in this space, GitHub, Bitbucket, and GitLab, all offer unlimited private repositories but that it doesn&#8217;t cost companies more to host additional repositories for a given user.</p>\n<p>Sijbrandij attributes the change to the increase in the <a href="https://www.sequoiacap.com/article/build-us-microservices/" target="_blank">microservices model</a>, a development approach that breaks software down into smaller, related pieces that communicate with one another via APIs.</p>\n<p>&#8220;As more and more developers, teams, and organizations seek out the advantages of microservices, they’ll need more repositories to support this new code structure,&#8221; Sijbrandij said. &#8220;Basically, the more microservices you have the more repositories you’ll need. That is why it is not surprising that GitHub has announced free private repositories.&#8221;</p>\n<p>Sijbrandij referenced several examples where GitHub&#8217;s pricing changes hit open source organizations hard, including <a href="https://github.com/edx/" target="_blank">Open edX</a>, a non-profit with a large number of contributors, which <a href="https://news.ycombinator.com/item?id=11674530" target="_blank">posted</a> the following on Hacker News:</p>\n<blockquote><p>I work for a non-profit open source organization that <a href="https://github.com/edx/" target="_blank">collaborates on github</a>. We have lots of people who aren&#8217;t employees, but have signed a contributor agreement with our organization and contribute changes to our software. Our bill will go up from $200/month to over $2000/month with this new pricing. We can afford it (it&#8217;s still a small fraction of our AWS bill) but it will force us to look at other alternatives. Github&#8217;s code review tools are already pretty mediocre compared to other tools like gerrit, and we&#8217;ve long since moved off of GitHub issue tracking due to lack of features compared to JIRA.</p></blockquote>\n<p>Sijbrandij emphasized that the team at GitLab believes “everyone can contribute,” a mission which drives GitLab.com&#8217;s pricing structure to offer unlimited private repositories, unlimited contributors, and unlimited CI runners for free. The on-premises solution, which includes enterprise features and support, is what keeps the lights on at the company. GitLab.com, the free, hosted version, runs the same enterprise edition software but is, by Sijbrandij&#8217;s own admission, still <a href="https://gitlab.com/gitlab-com/operations/issues/42" target="_blank">struggling with sluggish performance</a>.</p>\n<p>Earlier this year when open source project maintainers <a href="http://wptavern.com/open-source-project-maintainers-confront-github-with-open-letter-on-issue-management" target="_blank">confronted GitHub with an open letter on issue management</a>, GitLab differentiated itself by <a href="http://wptavern.com/gitlab-courts-open-source-project-maintainers-with-response-to-dear-github-letter" target="_blank">responding</a> to the situation with a new initiative focused on “making GitLab the best place for big open source projects.”</p>\n<p>Nearly a month later, <a href="http://wptavern.com/github-responds-to-letter-from-open-source-project-maintainers" target="_blank">GitHub finally responded</a> with an apology to open source project maintainers and a promise to address their concerns with a steady string of changes.</p>\n<p>GitHub has not given any indication of reversing its recent decision to change its pricing structure. However, with competitors like GitLab putting on the heat, GitHub may be forced to make some changes to its paid plans. At the very least, it could inspire the company to address concerns about organizations having to pay for inactive users and perhaps spur GitHub to offer customers the ability to distinguish between collaborators on open source projects and users who simply need access to private repositories.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 13 May 2016 02:33:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:106:"WPTavern: How Authors With Plugins in the Official Directory Can Use Tags to Get a Moderator’s Attention";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54441";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:113:"http://wptavern.com/how-authors-with-plugins-in-the-official-directory-can-use-tags-to-get-a-moderators-attention";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2627:"<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/05/WordPressAdviceForNewUsers.png"><img class="size-full wp-image-44085" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2015/05/WordPressAdviceForNewUsers.png?resize=612%2C237" alt="WordPress Advice For New Users" /></a>photo credit: <a href="http://www.flickr.com/photos/99329675@N02/11064947983">What You Need To Know About Food Poisoning</a> &#8211; <a href="https://creativecommons.org/licenses/by-sa/2.0/">(license)</a>\n<p>It&#8217;s almost inevitable that as a WordPress plugin gains popularity, it will receive a bad review. How plugin authors handle and respond to bad reviews is crucial, especially in a public forum. Mika Epstein, who helps review plugins before they&#8217;re added to the directory and is a dedicated support forum volunteer, <a href="https://make.wordpress.org/plugins/2016/05/03/handling-bad-reviews/">gives advice </a>on how to handle and respond to bad reviews.</p>\n<p>Bad reviews are classified as those written as spam, trolling, emotional blackmail for support, and those that should have been a support post. Since the plugin review system is powered by bbPress, plugin authors can add tags to reviews in order to draw a moderator&#8217;s attention. The tags include:</p>\n<ul>\n<li><strong>Modlook</strong> &#8211; This tag notifies moderators that a particular thread needs their attention. If you think a review is spam, don&#8217;t respond to it. Instead, add the Modlook and Spam tags and let a moderator decide if the review should be deleted.</li>\n<li><strong>Sockpuppet</strong> &#8211; If you suspect a review is part of a spamming campaign where a group of people are marking a plugin as one or five stars, apply the sockpuppet and modlook tags to the review.</li>\n<li><strong>Wrongplugin</strong> &#8211; Add the wrongplugin tag to the review if you believe it&#8217;s for a different plugin. The team can move the review to the appropriate place.</li>\n<li><strong>Pluginmod</strong> &#8211; Add this tag to a review if you need an administrator&#8217;s attention. This usually results in the team performing a full review of your plugin. If it&#8217;s determined that it breaks any of <a href="https://wordpress.org/plugins/about/guidelines/">the guidelines</a>, it will be removed until they&#8217;re fixed.</li>\n</ul>\n<p>Developers who host plugins in the official directory should make note of these tags and use them when necessary. The tag system is generally unknown to the public but it&#8217;s a great way for moderators to keep on top of the forums and reviews.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 13 May 2016 01:06:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"WPTavern: WPWeekly Episode 234 – All Things WordCamp with Andrea Middleton";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wptavern.com?p=54807&preview_id=54807";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"http://wptavern.com/wpweekly-episode-234-all-things-wordcamp-with-andrea-middleton";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2896:"<p>In this episode of WordPress Weekly, Marcus Couch and I are joined by <a href="https://thethingwiththestuff.wordpress.com/">Andrea Middleton</a>, who works at Automattic as a Community Organizer for the WordPress open source project. We discuss a number of topics including, updates to the WordCamp Central website, the <a href="https://make.wordpress.org/community/2016/03/02/transitioning-to-wordpress-community-support/">for-profit subsidiary</a>, and the experimental <a href="http://wptavern.com/wordpress-to-launch-experimental-wordcamp-incubator-program">WordCamp incubator program</a>.</p>\n<p>At the conclusion of our interview with Middleton, Mendel Kurland, GoDaddy&#8217;s Evangelist, joined us to describe his experiences attending DrupalCons. DrupalCons are events similar to WordCamps but on a larger scale. He tells us what the similarities and differences are and the unique things they do that he&#8217;d like to see WordCamps adopt. We close out the show with Marcus&#8217; plugin picks of the week.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="http://wptavern.com/wordpress-4-5-2-patches-two-security-vulnerabilities">WordPress 4.5.2 Patches Two Security Vulnerabilities</a><br />\n<a href="http://wptavern.com/automattic-is-protecting-its-woo-woothemes-and-woocommerce-trademarks">Automattic is Protecting its Woo, WooThemes, and WooCommerce Trademarks</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a href="https://wordpress.org/plugins/disable-core-update-email/">Disable WordPress Core Update Email</a> allows used to disable the default notification email sent by WordPress after an automatic core update is applied.</p>\n<p><a href="https://wordpress.org/plugins/downgrade/">Downgrade </a>enables users to easily downgrade WordPress to an earlier version. It&#8217;s a handy diagnostics tool that helps determine if a new WordPress release is the cause of errors.</p>\n<p><a href="https://wordpress.org/plugins/woo-customer-insight">Woo Customer Insight </a>provides greater insight into what visitors are doing on your sites. It allows you to see the pages your customers are visiting, where they&#8217;re clicking, the time spent on the different pages, and more.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 18th 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="http://www.wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #234:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 12 May 2016 23:23:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Matt: .Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=46554";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:27:"https://ma.tt/2016/05/blog/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:858:"<p>It&#8217;s now public that Automattic is the company behind Knock Knock Whois There LLC, the registry for the new .blog TLD. (And a great pun.) We wanted to stay stealth while in the bidding process and afterward in order not to draw too much attention, but nonetheless the cost of the .blog auction got up there (people are <a href="http://www.theregister.co.uk/2015/02/13/who_just_bought_dotblog_for_30m/">estimating around $20M</a>). I&#8217;m excited we won and think that it will be both an amazing business going forward and give lots of folks an opportunity to have a fantastic domain name in a new namespace and with an easy-to-say TLD. <a href="https://dotblog.wordpress.com/">You can sign up to be first in line to reserve a domain here</a>. If you have a trademark you can get in August, and then October for the &#8220;land rush.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 12 May 2016 19:23:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"WPTavern: Automattic to Oversee the Sale and Registration of Top-Level .Blog Domains";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54788";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"http://wptavern.com/automattic-to-oversee-the-sale-and-registration-of-top-level-blog-domains";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2974:"<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/blogging.jpg"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/blogging.jpg?resize=960%2C521" alt="photo credit: Luis Llerena" class="size-full wp-image-54799" /></a>photo credit: <a href="https://stocksnap.io/photo/3ZHG0XOIT6">Luis Llerena</a>\n<p>Automattic <a href="https://en.blog.wordpress.com/2016/05/12/coming-soon-new-blog-domains-for-websites/" target="_blank">announced</a> today that it will begin offering top-level .blog domain registration starting in August 2016. The .blog domain extension will be available to both WordPress and non-WordPress sites.</p>\n<p>According to <a href="https://twitter.com/markarms" target="_blank">Mark Armstrong</a>, an Automattic subsidiary is exclusively managing the registration of .blog domains and will be offering it for purchase through WordPress.com and other domain registrars.</p>\n<p>&#8220;Automattic subsidiary Knock Knock Whois There LLC, in partnership with the domain company Primer Nivel, won the rights to the .blog domain in 2015 through an auction process overseen by the Internet Corporation for Assigned Names and Numbers (ICANN), the non profit organization that oversees namespaces of the internet,&#8221; Armstrong said.</p>\n<p>In an <a href="https://ma.tt/2016/05/blog/" target="_blank">announcement</a> on his blog, Automattic CEO Matt Mullenweg said they used the Knock Knock Whois There LLC company name to &#8220;stay stealth while in the bidding process,&#8221; which closed around $19 million.</p>\n<p>Although WordPress.com is currently providing the registration information site at <a href="https://dotblog.wordpress.com/" target="_blank">dotblog.wordpress.com</a>, Armstrong said that the company is using <a href="http://www.nominet.uk/" target="_blank">Nominet</a> (the backend registry provider for .UK) to provide the technical infrastructure for managing the domain extension.</p>\n<p>Registration for .blog domains will be offered in a phased approach during the second half of 2016, according to the following estimated timeframe:</p>\n<ul>\n<li><strong>Sunrise (August):</strong> Trademark owners will be able to register .blog domains associated with their brands</li>\n<li><strong>Landrush (October):</strong> Before .blog becomes available to the public, domains may be registered during the landrush period on an application basis.</li>\n<li><strong>General Availability (November):</strong> Automattic plans to begin offering .blog domains to the general public before the end of the year.</li>\n</ul>\n<p>With the exclusive rights to manage the sale of millions of .blog domains, Automattic has the opportunity to promote WordPress.com as a potential host for new registrants. The company hasn&#8217;t finalized the price but Armstrong said it will be &#8220;in the standard range for new top-level domains with some premium pricing for higher-value names.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 12 May 2016 18:19:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: Critical Vulnerabilities Found in PhpStorm, Immediate Update Advised";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54770";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"http://wptavern.com/critical-vulnerabilities-found-in-phpstorm-immediate-update-advised";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2128:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/phpstorm-wp-feature.jpg"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/phpstorm-wp-feature.jpg?resize=1025%2C471" alt="phpstorm-wp-feature" class="aligncenter size-full wp-image-30739" /></a></p>\n<p>JetBrains <a href="http://blog.jetbrains.com/blog/2016/05/11/security-update-for-intellij-based-ides-v2016-1-and-older-versions/" target="_blank">announced</a> today that it has released a security update for PhpStorm and all of its other IntelliJ-based IDEs due to a set of critical vulnerabilities:</p>\n<blockquote><p>The cross-site request forgery (CSRF) flaw in the IDE’s built-in webserver allowed an attacker to access local file system from a malicious web page without user consent.</p>\n<p>Over-permissive CORS settings allowed attackers to use a malicious website in order to access various internal API endpoints, gain access to data saved by the IDE, and gather various meta-information like IDE version or open a project.</p></blockquote>\n<p>PhpStorm is by far <a href="http://www.sitepoint.com/best-php-ide-2014-survey-results/" target="_blank">the most favored IDE for PHP developers</a>. It&#8217;s also widely used among WordPress developers, especially since <a href="http://wptavern.com/phpstorm-8-released-with-full-wordpress-support" target="_blank">version 8 added official support for WordPress</a>.</p>\n<p>The update issued today patches the critical vulnerabilities inside the underlying IntelliJ platform that powers nearly a dozen popular IDEs. Installing the update is as easy as selecting &#8216;Check for Updates&#8217; inside the IDE. Alternatively, customers can download the most recent version from JetBrains.com and the <a href="http://blog.jetbrains.com/blog/2016/05/11/security-update-for-intellij-based-ides-v2016-1-and-older-versions/" target="_blank">security announcement</a> includes links to download older versions.</p>\n<p>Although the JetBrains security team is not aware of these vulnerabilities having been exploited, immediate update is recommended.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 May 2016 22:26:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:90:"WPTavern: GitHub Introduces Unlimited Private Repositories, Hikes Prices for Organizations";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54746";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:99:"http://wptavern.com/github-introduces-unlimited-private-repositories-hikes-prices-for-organizations";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7590:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/github-octocat.jpg"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/04/github-octocat.jpg?resize=857%2C400" alt="github-octocat" class="aligncenter size-full wp-image-42456" /></a></p>\n<p>GitHub has been inundated with negative feedback after <a href="https://github.com/blog/2164-introducing-unlimited-private-repositories" target="_blank">announcing a major change to its pricing</a> today. All paid plans now include unlimited private repositories, but there&#8217;s a catch. The new pricing structure requires GitHub.com organizations to purchase a seat for each user. At $9 per user/month, collaborating on private repositories is now far more costly than the legacy plans which started at $25/month for 10 repositories and unlimited members.</p>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/github-pricing.png"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/github-pricing.png?resize=1025%2C392" alt="github-pricing" class="aligncenter size-full wp-image-54756" /></a></p>\n<p>The change is good news for individual developers with paid accounts, as they are no longer charged on a per-repository basis. However, many owners of organizations are finding the new pricing to be untenable and are actively considering alternatives. For comparison, Bitbucket offers unlimited private repositories and <a href="https://bitbucket.org/product/pricing" target="_blank">charges $1/user/month</a>. Unlimited users caps out at $200/month.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/Krogsgard">@Krogsgard</a> EDD org alone will go from $25 per month to $592 per month <a href="https://twitter.com/github">@github</a></p>\n<p>&mdash; Pippinsplugins (@pippinsplugins) <a href="https://twitter.com/pippinsplugins/status/730396802638176257">May 11, 2016</a></p></blockquote>\n<p></p>\n<p>While unlimited private repositories is an exciting benefit that enables developers to make their code more modular, it isn&#8217;t a benefit that every organization needs.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/github">@github</a> Terrible news. I work on an open-source organization &gt;100 devs. We have 2 private repos for internal projects. $900+ vs $25 really!?</p>\n<p>&mdash; João Ventura (@jcnventura) <a href="https://twitter.com/jcnventura/status/730319187667759104">May 11, 2016</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/williamsba">@williamsba</a> ours jumped to $1,204 :-( <a href="https://twitter.com/github">@github</a></p>\n<p>&mdash; Tom Willmot (@tomwillmot) <a href="https://twitter.com/tomwillmot/status/730391291691995136">May 11, 2016</a></p></blockquote>\n<p></p>\n<p><a href="https://easydigitaldownloads.com/" target="_blank">Easy Digital Downloads</a> creator Pippin Williamson <a href="http://www.twitlonger.com/show/n_1solvjd" target="_blank">explained</a> why he is frustrated with what amounts to a 2,276% increase in costs for his organization:</p>\n<blockquote><p>I actually have no problems with the pricing for new organizations. It&#8217;s their space and they provide a huge number of valuable tools. It is absolutely worth it.</p>\n<p>The problem I have is the drastic increase for existing customers. It&#8217;s largely the principal of increasing a customer&#8217;s cost by 2,276% without giving them any additional value.</p>\n<p>The value that Github provides me and my team does not change at all with the new pricing, only what I pay per month.</p></blockquote>\n<p>Samuel &#8220;Otto&#8221; Wood <a href="http://www.twitlonger.com/show/n_1solviv" target="_blank">contends</a> that GitHub&#8217;s $9/user/month is a reasonable price to pay for having all the functionality of GitHub hosted for an organization but that the alternative of building your own is far more economical.</p>\n<blockquote><p>A &#8220;private&#8221; repo is, you know, private. On your own server. Git is, after all, decentralized. You could plop a normal git repo on any private VPS you like in a matter of under an hour. If you&#8217;re collaborating with a small group of like 5 people, then coordination is not really a big deal that I&#8217;d pay $45 a month to use GitHub for it. You can use any tooling you like, make any website you like. You could probably reproduce the important parts of GitHub that you need for your private setup using WordPress in like a day or two. </p>\n<p>It just seems to me that any advantages of using GitHub at all seem largely nullified by using private repos. Yes, collaboration and using the same toolset you are used to, I get that. But here you&#8217;re falling prey to vendor lock-in once again. You&#8217;re used to it, you like it, you&#8217;re afraid of change, pay up. Simple. </p>\n<p>The advantage of open source software is the freedom to say &#8220;up yours&#8221; and build your own version instead. Git is open source. Think about it. A $15 a month VPS could easily fit your needs for both privacy and collaboration.</p></blockquote>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/github">@github</a> found a way to be more expensive than the datacenter that runs my app. Seriously, what''s happening at <a href="https://twitter.com/github">@github</a> ???</p>\n<p>&mdash; Adilson Carvalho (@lcadilson) <a href="https://twitter.com/lcadilson/status/730405070819471361">May 11, 2016</a></p></blockquote>\n<p></p>\n<p>GitHub has established itself as the de facto code collaboration site by offering free hosting for public, open source repositories. However, the emphasis on &#8220;social coding&#8221; no longer extends to private repositories as organization owners will have little incentive to add more collaborators under the new pricing structure. It discourages organizations from adding users to be bug reporters or third-party collaborators. Teams and agencies hit hardest by the changes are now examining competitors like Bitbucket and self-hosted GitLab.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Today is for <a href="https://twitter.com/gitlab">@gitlab</a> what 2007 was for <a href="https://twitter.com/WordPress">@WordPress</a>. If code is poetry, Gitlab is your library. Own your code like you own your content. ❤️</p>\n<p>&mdash; John James Jacoby (@JJJ) <a href="https://twitter.com/JJJ/status/730417868047790080">May 11, 2016</a></p></blockquote>\n<p></p>\n<p>Organization owners will not be forced onto the new pricing plans immediately and GitHub promises to give a year&#8217;s notice before mandating a switch to the new plans:</p>\n<blockquote><p>We want everyone to have a plan with unlimited private repositories, but don’t worry—you are welcome to stay on your current plan while you evaluate the new cost structure and understand how to best manage your organization members and their private repository access. And while we&#8217;re currently not enforcing a timeline to move, rest assured that you&#8217;ll have at least 12 months notice before any mandated change to your plan.</p></blockquote>\n<p>While many individual developers will see lower monthly prices and even prorated credits on their accounts, the exponential cost increase for GitHub&#8217;s largest customers may cause a mass exodus to the company&#8217;s more affordable competitors. Are you moving your organization off of GitHub? Let us know in the comments.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 May 2016 19:27:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:66:"WPTavern: Affinity: A Free WordPress Wedding Theme from Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54688";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wptavern.com/affinity-a-free-wordpress-wedding-theme-from-automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3832:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/affinity.png"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/affinity.png?resize=800%2C471" alt="affinity" class="aligncenter size-full wp-image-54691" /></a></p>\n<p>Affinity is the latest addition to WordPress.com&#8217;s small collection of <a href="https://wordpress.com/themes/search/wedding/" target="_blank">themes created specifically for weddings</a>. This highly customizable, elegant theme was designed by <a href="http://carolinemoore.net/" target="_blank">Caroline Moore</a> with weddings and family announcements in mind.</p>\n<p>Affinity is a one-page theme with support for five different panels. Each panel&#8217;s content can be assigned in the customizer under Theme Options by selecting a page from a drop-down.</p>\n<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/panel.png"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/panel.png?resize=660%2C231" alt="panel" class="aligncenter size-full wp-image-54717" /></a></p>\n<p>With the customizable panel approach users are not locked into providing content for sections they don&#8217;t need. Single posts and pages support full screen featured images that, if used as a panel, become the background of that section. Affinity offers the option to set the header image opacity to create better contrast with header text. Users can also enable or disable scrolling on the header and front-page featured images.</p>\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/affinity-home-page.png"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/affinity-home-page.png?resize=200%2C474" alt="affinity-home-page" class="alignright size-full wp-image-54693" /></a></p>\n<p>Affinity includes support for a sidebar widget area and three optional widget areas in the footer. If widgets are added to the sidebar, the one-column layout becomes a two-column layout. It also has a fullwidth page template for removing the sidebar on select pages.</p>\n<p>The different panels give users ample space for adding photos, links to registries, personal stories, info about the bridal party, and anything else related to the event. Affinity includes a Guestbook page template with a special format for displaying visitors&#8217; comments. Turning the Guestbook on is as easy as setting the page template and making sure that comments are enabled.</p>\n<p>Another unique feature of the theme is its post intro area that displays beneath the headline before the first paragraph. It pulls content from the excerpt field and post authors can use it to capture readers&#8217; attention with a quick summary or highlight.</p>\n<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/affinity-post-intro.png"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/affinity-post-intro.png?resize=660%2C328" alt="affinity-post-intro" class="aligncenter size-full wp-image-54729" /></a></p>\n<p>Check out the <a href="https://affinitydemo.wordpress.com/" target="_blank">live demo</a> to see the theme in action. It shows an example of panels that display quotes, an RSVP form, event details, and an engagement story.</p>\n<p>Since no wedding or family announcement is the same, Affinity&#8217;s multi-panel approach offers flexibility for many different types of uses. If you&#8217;re creating a wedding website and are not finding enough customization options with a hosted service, this theme makes it quick and easy to set it up with WordPress. It&#8217;s not yet available on WordPress.org, but you can download a copy for your self-hosted site for free from the sidebar of its <a href="https://wordpress.com/themes/affinity" target="_blank">homepage on WordPress.com</a>.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 May 2016 06:52:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:77:"WPTavern: Help WPCampus Gather Data on How Schools and Campuses Use WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54650";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"http://wptavern.com/help-wpcampus-gather-data-on-how-schools-and-campuses-use-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1247:"<p>The organizers of <a href="https://2016.wpcampus.org/">WPCampus</a> are <a href="https://www.surveymonkey.com/r/wpcampus05-2016">seeking feedback</a> via a survey on how schools and campuses utilize WordPress in their environments. The survey consists of five sections:</p>\n<ul>\n<li>How Do You Use WordPress on Campus</li>\n<li>Site Demographics, Traffic, and Data</li>\n<li>Plugins, Themes, and Features</li>\n<li>Security, Performance, and Hosting</li>\n<li>Your Team Structure &amp; Workflows</li>\n</ul>\n<p>There are a couple of perks for those who fill out the survey. Respondents will receive an anonymized version of the complete data set. Those who complete four or more sections will be entered into a drawing to win a free ticket to the conference and will receive a $5 Starbucks or Amazon Gift card.</p>\n<p>Answer the questions that you know and skip the ones you don&#8217;t. The team needs as much data as possible to provide a clearer picture of WordPress&#8217; use in higher education. If you know someone or an organization that uses WordPress in higher education, please <a href="https://www.surveymonkey.com/r/wpcampus05-2016">share the survey</a> with them. The survey closes on May 27th.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 May 2016 03:21:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"WPTavern: What Do You Think of the Recommended Plugins Page in WordPress?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54437";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"http://wptavern.com/what-do-you-think-of-the-recommended-plugins-page-in-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3913:"<p>In late 2014, <a href="http://wptavern.com/wordpress-4-1-to-introduce-plugin-recommendations">WordPress 4.1 added</a> a Recommended Plugins tab that takes into account the plugins you have installed and suggests plugins based on which ones are commonly used together. After nearly a year and a half since it was added, I asked the <a href="https://twitter.com/wptavern/status/727578470415532032">Tavern&#8217;s Twitter followers</a> if they have ever installed plugins recommended by WordPress.</p>\n<p>I was surprised to discover that some people don&#8217;t know the tab exists.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/wptavern">@wptavern</a> There''s a "Recommended" tab?!?</p>\n<p>&mdash; Joe Taiabjee (@joetek) <a href="https://twitter.com/joetek/status/727581218414407681">May 3, 2016</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/wptavern">@wptavern</a> I''ve just noticed the Recommended tab. It seems to show those plugins with most Active Installs. Interesting, but a bit ''hidden''</p>\n<p>&mdash; Alejandro Vargas S. (@Alejandro_V_S) <a href="https://twitter.com/Alejandro_V_S/status/727836820159930369">May 4, 2016</a></p></blockquote>\n<p></p>\n<p>Steve Brown says the recommendations are useful.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/wptavern">@wptavern</a> yep :) very useful feature indeed</p>\n<p>&mdash; Steve Brown (@stevna) <a href="https://twitter.com/stevna/status/727681984504287232">May 4, 2016</a></p></blockquote>\n<p></p>\n<p>Some people view the page as an opportunity for Automattic to advertise its plugins while others don&#8217;t trust the recommendations.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/wptavern">@wptavern</a> I have no needs for the Automattic plugins that are almost only being recommended there</p>\n<p>&mdash; Marko Heijnen (@markoheijnen) <a href="https://twitter.com/markoheijnen/status/727624592399998976">May 3, 2016</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/wptavern">@wptavern</a> Once. However 10 of the plugins recommended on page 1 are untested with my version of WP. So wouldnt rely on the recommendations</p>\n<p>&mdash; WPin.me (@wp_in) <a href="https://twitter.com/wp_in/status/727725233843671040">May 4, 2016</a></p></blockquote>\n<p></p>\n<p>When I viewed the recommended plugins page in 2014, the results displayed plugins that weren&#8217;t updated in years.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/12/RecommendedPluginsTab.png"><img class="size-full wp-image-35318" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/12/RecommendedPluginsTab.png?resize=1025%2C527" alt="Plugins Recommended To Me Based on Data of Sites with Similar Plugins Installed" /></a>Plugins Recommended To Me Based on Data of Sites with Similar Plugins Installed\n<p>Today, the page displays more relevant results with recently updated plugins. On the first page of results for WP Tavern, only one plugin from Automattic is recommended. The second page of results doesn&#8217;t list any plugins authored by Automattic.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/2016RecommendedPlugins.png"><img class="size-full wp-image-54616" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/2016RecommendedPlugins.png?resize=1025%2C514" alt="Recommended Plugins in 2016" /></a>Recommended Plugin Results in 2016\n<p>To help determine how useful the recommended plugins page is, I&#8217;d like you to take this short survey. Results will be displayed on Tuesday, May 17th. In addition to the survey, you can leave your feedback in the comments.</p>\n<div class="pd-embed" type="type"></div>\n<p></p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 May 2016 03:19:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"WPTavern: Automattic is Protecting its Woo, WooThemes, and WooCommerce Trademarks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54645";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"http://wptavern.com/automattic-is-protecting-its-woo-woothemes-and-woocommerce-trademarks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6735:"<p>When <a href="http://wptavern.com/automattic-acquires-woocommerce">Automattic acquired WooThemes in 2015</a>, it gained employees, plugins, themes, and the company&#8217;s trademarks. These trademarks include, standard character marks, logos, and specific graphics such as the Verified WooExpert badges. One of the responsibilities of a trademark owner is to protect it from infringement.</p>\n<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/VerifiedWooExpertServicemark.png"><img class="size-full wp-image-54702" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/VerifiedWooExpertServicemark.png?resize=1025%2C621" alt="Verified WooExpert Service Mark" /></a>Verified WooExpert Service Mark\n<p>WooGPL is a service that provides customers with commercial themes, plugins, and extensions for WooCommerce at a discounted rate. In March, Automattic <a href="https://woogpl.com/woogpl-is-closing/">sent Billy Ablett</a>, owner of <a href="https://woogpl.com">WooGPL</a>, the following notice that informs him that his domain infringes the Woo and WooCommerce trademarks.</p>\n<blockquote><p>I’m writing to you on behalf of Automattic Inc. regarding your use of the Woo and WooCommerce trademarks.</p>\n<p>As you may know, Automattic owns the Woo, WooCommerce, and WooThemes brands, as well as the associated trademarks. We recently learned of https://woogpl.com, which actively makes use of our registered trademarks in both its name and promotion. We are very concerned that your use of Woo and WooCommerce will create confusion by communicating that your WooCommerce products are endorsed by or associated with Automattic, when in fact it is not.</p>\n<p>While Automattic appreciates that you are providing products that build on WooCommerce open source software, that fact does not authorize you to use Woo, WooThemes or WooCommerce trademarks.</p>\n<p>To minimize user confusion and to protect our own intellectual property, we unfortunately must insist that you take prompt steps to change your domain name to something that doesn’t include &#8216;Woo&#8217; in the prefix, and change your product descriptions to avoid confusion and potentially misleading consumers to believe they are purchasing our products. An example of this would be: WooCommerce Email Customiser Pro would need to be changed to Email Customiser Pro for WooCommerce.</p>\n<p>For more information, please see our <a href="https://www.woothemes.com/style-guide/#sg-trademarks">Trademark Guidelines</a>.</p>\n<p>While we are appreciative that you have included a disclaimer on your site, unfortunately this would not be sufficient and we would still insist that the domain name and product names be changed.</p></blockquote>\n<p>While it&#8217;s not the sole reason <a href="https://woogpl.com/woogpl-is-closing/">WooGPL is shutting down</a>, the notice provides a convenient opportunity to rebrand to <a href="https://www.gplkit.com/">GPL Kit</a>, something the company was already planning to do.</p>\n<p>&#8220;We would have eventually closed down WooGPL due to GPL Kit however, it would have been great to close it down on our terms when the time was right,&#8221; Daniel, who is part of the GPL Kit team told the Tavern.</p>\n<p>Daniel says that when he started WooGPL there wasn&#8217;t a trademark registered with the Woo character mark until October of 2015.</p>\n<p>A search of the United States Patent and Trademark Office for Woo contains over 1K results. However, this is the only character mark for Woo that I found. The filing date is October 22nd, 2015 and is in the approval process.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/WooCharacterMark.png"><img class="size-full wp-image-54703" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/WooCharacterMark.png?resize=1003%2C557" alt="Woo Character Mark" /></a>Woo Character Mark\n<h2>When You Should Ask For Permission</h2>\n<p>WooThemes has a <a href="https://www.woothemes.com/style-guide/#sg-trademarks">style guide</a> on its site that explains how the brand is used and has details on when Woo™, WooCommerce®, and WooThemes® names, logos, and related icons collectively known as Woo Marks can be used without permission. The following chart provides some examples.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/PermissionChartForWooTrademarks.png"><img class="size-full wp-image-54704" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/PermissionChartForWooTrademarks.png?resize=1010%2C814" alt="Examples of When You Do and Don''t Need Permission" /></a>Examples of When You Do and Don&#8217;t Need Permission\n<p>If you&#8217;re in doubt, you can email Automattic&#8217;s trademark team  <a href="mailto:trademarks@automattic.com">trademarks @ automattic.com</a> to receive clarification.</p>\n<h2>Woo&#8217;s at Risk?</h2>\n<p>There are quite a few businesses in the WordPress ecosystem that use Woo in their name and domain. <a href="http://www.woorockets.com/">WooRockets</a> is a WooCommerce theme shop while <a href="http://wooassist.com/">WooAssist</a> provides support and maintenance for store owners.</p>\n<p>I reached out to both companies to determine if Automattic sent them the same notice it sent to WooGPL. While I didn&#8217;t receive a response from WooRockets, John Gamour of WooAssist provided the Tavern with the following statement:</p>\n<blockquote><p>No, we haven&#8217;t been contacted by Automattic about that. It would be dissapointing if we were asked to change our name as our founder Nicholas Jones reached out to WooThemes before starting Wooassist and they gave the OK. We have also worked with Matt Cohen and James Koster on a project and nothing was ever mentioned about our name.</p></blockquote>\n<p>I tried to get in touch with Paul Sieminski, legal counsel for Automattic, to learn what the criteria is for violating the trademarks, who&#8217;s at risk, and how long they have enforced the marks but he could not be reached for comment.</p>\n<h2>Better to be Safe Than Sorry</h2>\n<p>As WooGPL discovered, adding a disclaimer to the bottom of your sites may not be enough. Considering the cost and potential impacts of re branding a company or product, it&#8217;s important to know as soon as possible if you&#8217;re infringing a company&#8217;s trademarks.</p>\n<p>Business owners in the WooCommerce and WooThemes ecosystem should double-check the <a href="https://www.woothemes.com/style-guide/#sg-trademarks">style guide</a> to make sure you&#8217;re not violating any guidelines. Owners can also take a proactive step and contact Automattic&#8217;s trademark team to determine if your business meets the requirements.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 10 May 2016 20:21:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:86:"WPTavern: WooCommerce Releases Storefront 2.0 with Major Improvements to Mobile Design";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54641";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"http://wptavern.com/woocommerce-releases-storefront-2-0-with-major-improvements-to-mobile-design";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3509:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/storefront-update.png"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/storefront-update.png?resize=1025%2C451" alt="storefront-update" class="aligncenter size-full wp-image-54669" /></a></p>\n<p><a href="https://wordpress.org/themes/storefront/" target="_blank">Storefront</a>, the official WooCommerce theme built to work seamlessly with the plugin, has just passed the <a href="https://www.woothemes.com/2016/05/storefront-2-0-release/" target="_blank">2.0 milestone</a>. This release introduces a new &#8220;best sellers&#8221; section to the homepage and adds compatibility with the upcoming WooCommerce 2.6’s tabbed “My Account” section and the average rating widget.</p>\n<p>The most important update in Storefront 2.0 is the redesigned mobile experience. According to <a href="http://resources.mobify.com/50-mobile-commerce-stats.html" target="_blank">Mobify</a>, 30% of mobile shoppers will abandon a transaction if the experience is not optimized for mobile. <a href="http://www.themobileplaybook.com/" target="_blank">Google&#8217;s Mobile Playbook</a> says that not having a mobile optimized website is like closing your store one day each week. To keep pace with the expectations of mobile buyers, WooCommerce has drastically reduced Storefront&#8217;s mobile header height by 60% and has added the search, shopping cart, and account links to a sticky bottom menu for easy access.</p>\n<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/storefront-mobile-home.png"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/storefront-mobile-home.png?resize=799%2C697" alt="storefront-mobile-home" class="aligncenter size-full wp-image-54671" /></a></p>\n<p>Storefront 2.0 includes many design improvements that make the theme cleaner and more flexible. This update removes Helvetica in favor of Source Sans, which WooCommerce says gives them access to a wider variety of weights they can use to &#8220;provide greater depth and cohesion.&#8221; Other notable design changes include:</p>\n<ul>\n<li>Borders have been largely removed so that pages don’t feel quite so broken up.</li>\n<li>The breadcrumb and the main navigation are now wrapped in their own content regions, cementing them as unique components.</li>\n<li>Product reviews and comments tweaked to make them cleaner and more scannable.</li>\n<li>Blog post meta has been redesigned to include the author Gravatar.</li>\n<li>Softer design treatment for tables with colors based on the main background color.</li>\n<li>oEmbeds have been styled to match the rest of Storefront (including typography, padding, colors).</li>\n<li>Integrated WordPress 4.5’s custom logo feature so users can add a logo without using a plugin.</li>\n</ul>\n<p><a href="https://wordpress.org/themes/storefront/" target="_blank">Storefront</a> is active on more than 50,000 websites. There are nearly a dozen free themes on WordPress.org that use it as a parent theme and another dozen commercial themes on WooThemes.com. If you use a heavily customized Storefront child theme, you may want to test its compatibility with the 2.0 update on a development site to ensure that there are no visual surprises. If you have any ideas or recommendations for updates to Storefront, you can leave feedback on the theme&#8217;s <a href="http://ideas.woothemes.com/forums/275029-storefront" target="_blank">idea board</a>.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 May 2016 22:23:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"WPTavern: Timber 1.0 Is Now Available on WordPress.org";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54396";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wptavern.com/timber-1-0-is-now-available-on-wordpress-org";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5932:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/timber.png"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/timber.png?resize=1025%2C405" alt="timber" class="aligncenter size-full wp-image-54630" /></a></p>\n<p>Last week the creators of <a href="https://wordpress.org/plugins/timber-library/" target="_blank">Timber</a>, the plugin that enables WordPress theme developers to write HTML using the <a href="http://twig.sensiolabs.org/" target="_blank">Twig Template Engine</a>, released version 1.0 on WordPress.org. The plugin is active on more than 10,000 websites where theme authors have elected to keep PHP files separate from HTML. Timber is built on DRY and MVC principles to solve the problem stated in its unofficial tagline: <em>&#8220;Because WordPress is awesome, but the_loop isn&#8217;t.&#8221;</em></p>\n<p>Over the past four years, the open source project has evolved from being a starter theme to a plugin that can be added to existing themes. It is now used on <a href="http://upstatement.com/timber/#showcase" target="_blank">thousands of websites</a> and has 83 <a href="https://github.com/timber/timber/graphs/contributors" target="_blank">contributors</a> listed on GitHub.</p>\n<p>&#8220;In 2012 I was getting more into WordPress after doing lots of JS development with <a href="http://handlebarsjs.com/" target="_blank">Handlebars</a> (a JS templating language),&#8221; Timber creator Jared Novack said. &#8220;I went to WordCamp Providence to learn more about state-of-the-art WordPress ways. I remember thinking: &#8216;This is great, but I really miss the cleanliness of Handlebars &#8212; I wish someone would make something like that for WordPress.&#8217; That&#8217;s when I realized, I was that someone.&#8221;</p>\n<p>Novack was playing around with <a href="http://www.smarty.net/" target="_blank">Smarty</a> and <a href="https://mustache.github.io/" target="_blank">Mustache</a> before he finally discovered Fabien Potencier&#8217;s <a href="http://twig.sensiolabs.org/" target="_blank">Twig project</a>.</p>\n<p>&#8220;The syntax felt so natural I almost didn&#8217;t need to read the docs (don&#8217;t worry, I did),&#8221; he said. &#8220;I realized what I needed was a way to marry Twig and WordPress, and thus: Timber was born.&#8221;</p>\n<p>At that time Novack&#8217;s company, <a href="https://upstatement.com/" target="_blank">Upstatement</a>, was beginning development on a big new project for Random House to enable their marketers to generate unique sites from a library of templates. This client project became Timber&#8217;s first test case.</p>\n<p>&#8220;Originally, Timber was a parent theme, like _s. But after we completed the Random House project, I realized I wanted to apply Timber functionality to existing sites,&#8221; Novack said. &#8220;I converted it into a plugin that could be employed on existing themes which is the form it takes today.&#8221;</p>\n<p>The plugin allows designers skilled with HTML and CSS to create themes without having extensive knowledge of PHP and WordPress functions. Timber successfully powers sites like Michael Bloomberg&#8217;s <a href="https://www.thetrace.org/" target="_blank">The Trace</a>, <a href="http://everytown.org/" target="_blank">Everytown for Gun Safety</a>, <a href="https://www.hoteltonight.com/" target="_blank">Hotel Tonight</a>, and the <a href="http://harvardlawreview.org/" target="_blank">Harvard Law Review</a>.</p>\n<h3>Timber 1.0 Puts the Project on the Path of Stability</h3>\n<p>As of Timber 1.0, developers can now include the project as a plugin or require it as a <a href="https://packagist.org/packages/timber/timber" target="_blank">Composer dependency</a>.</p>\n<p>&#8220;The big news is that 1.0 represents a maturing of the platform — developers can use Timber and Twig with confidence that they’re building on top of a stable and universal platform,&#8221; Novack said.</p>\n<p>This release sheds years of deprecated functions and methods dating back to the project&#8217;s early days in 2013. Novack said that technical and documentation debt were the biggest hurdles in getting to 1.0.</p>\n<p>&#8220;In hindsight it’s so easy to build stuff, but so hard to build a complete system,&#8221; he said. &#8220;When Timber started it was just for me and the documentation could just live in my head. I’d add and improve stuff and then live with some of the quirks.&#8221;</p>\n<p>As the project and its contributors grew, Novack found it difficult to keep up with the growing codebase while running his company. Bringing it to a place of maturity with up-to-date automated testing and documentation took nearly a year.</p>\n<p>&#8220;Backwards compatibility was also a major challenge,&#8221; Novack said. &#8220;As ideas and new code got submitted, development slowed as every decision might have implications for existing users. We would deprecate features, but I was hesitant to remove things that I knew were mistakes, but that people were using.&#8221;</p>\n<p>Developers are encouraged to read the <a href="https://github.com/timber/timber/wiki/1.0-Upgrade-Guide" target="_blank">1.0 Upgrade Guide</a>, as there may be additional steps required depending on how Timber is being used. This release adds a few new features but the most important change is the bulk removal of older sections of the codebase. The upgrade guide outlines all of the object properties and static methods that will need to be updated so that nothing breaks. In the future, Timber-powered themes will be easier to maintain, with fewer quirks and better-documented features.</p>\n<p>&#8220;The key learning for me is that the ultimate &#8216;killer feature&#8217; is stability and predictability,&#8221; Novack said. &#8220;When everything is organized cleanly and developers can use the things that they would intuitively expect — that’s success.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 May 2016 17:52:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"Post Status: WordPress Security — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=24378";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://poststatus.com/wordpress-security-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2296:"<p>Welcome to the Post Status <a href="https://poststatus.com/category/draft">Draft podcast</a>, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>, <a href="http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast">Stitcher</a>, and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Joe Hoyle &#8212; the CTO of Human Made &#8212; and Brian Krogsgard.</p>\n<p><span>Security &#8212; in WordPress core, distributed plugins and themes, and in our custom code &#8212; is a constant battle. It’s important to be vigilant with our security practices, from the perspective of managing our websites and when writing code. In this episode, Joe and Brian discuss the nature of WordPress security, best practices for writing secure code, and dig into various situations WordPress developers and site owners may run into.</span></p>\n<a href="https://audio.simplecast.com/37301.mp3">https://audio.simplecast.com/37301.mp3</a>\n<p><a href="http://audio.simplecast.com/37301.mp3">Direct Download</a></p>\n<h3>Links</h3>\n<ul>\n<li><a href="http://codex.wordpress.org/Hardening_WordPress">Hardening WordPress</a></li>\n<li><a href="https://wordpress.org/about/security/">About WordPress Security</a></li>\n<li><a href="https://make.wordpress.org/themes/2015/05/19/a-guide-to-writing-secure-themes-part-1-introduction/">A Guide to Writing Secure Themes</a></li>\n<li><a href="http://ben.lobaugh.net/uploads/writing-secure-plugins-and-themes/#/">Writing Secure Plugins &amp; Themes</a> by Ben Lobaugh</li>\n<li><a href="https://codex.wordpress.org/Class_Reference/wpdb">$wpdb</a></li>\n<li><a href="https://wpvulndb.com/">WP Scan</a></li>\n<li><a href="https://blog.sucuri.net/2015/03/understanding-wordpress-plugin-vulnerabilities.html">Understanding Vulnerabilities</a></li>\n</ul>\n<h3>Sponsor: Pagely</h3>\n<p><a href="https://pagely.com"><span>Pagely</span></a><span> offers best in class managed WordPress hosting, powered by the Amazon Cloud, the Internet’s most reliable infrastructure. Post Status is proudly hosted by Pagely. Thank you to </span><a href="https://pagely.com"><span>Pagely</span></a><span> for being a Post Status partner.</span></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 May 2016 01:01:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Katie Richards";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Matt: Apple and Podcasting";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=46548";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"https://ma.tt/2016/05/apple-and-podcasting/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:557:"<p><a href="https://marco.org/2016/05/07/apple-role-in-podcasting">Marco Arment has a great take on how the decentralized nature of podcasting is a feature</a>, not a bug, and Apple being more proactive there would be harmful to the ecosystem. As an aside, since I&#8217;ve been in Houston more recently, which means driving a lot, I&#8217;ve been really loving his app <a href="https://overcast.fm/">Overcast</a> and I opted in to the optional paid subscription for it. I just need to get in more of a habit of listening to podcasts outside of Houston.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 08 May 2016 14:17:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"WPTavern: VersionPress 3.0 Adds New Search Feature, Bulk Undo, and Commit Tracking per Environment";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54530";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"http://wptavern.com/versionpress-3-0-adds-new-search-feature-bulk-undo-and-commit-tracking-per-environment";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3843:"<p><a href="https://blog.versionpress.net/2016/04/versionpress-3-0-released/" target="_blank">VersionPress 3.0</a>, released this week, is the first version since the plugin <a href="http://wptavern.com/versionpress-transitions-into-a-free-open-source-project" target="_blank">became a free, open source project</a>. Creators Borek Bernard and Jan Voráček, who originally attempted to crowdfund the project and then <a href="http://wptavern.com/versionpress-raises-400k-in-seed-funding" target="_blank">raised $400,000 in seed funding</a>, <a href="http://wptavern.com/versionpress-transitions-into-a-free-open-source-project" target="_blank">announced</a> last month that they are transitioning to a public development model.</p>\n<p>The team&#8217;s goal with this release was to polish up the experience of using VersionPress in the default WordPress installation while adding more useful features. However, it is not yet ready for use in production, according to Bernard.</p>\n<p>&#8220;We’re still keeping VersionPress in the <a href="http://docs.versionpress.net/en/getting-started/about-eap" target="_blank">“early access” period</a>, because of the third party plugins integration story but on simpler sites, VersionPress already shines,&#8221; he said.</p>\n<p>One of the most notable new features in VersionPress 3.0 is the plugin&#8217;s ability to track commits with the environment where they were created. Users can view changes in the admin and easily see if they were pushed to the staging or production environment.</p>\n<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/commit-tracking-in-environment.gif"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/commit-tracking-in-environment.gif?resize=725%2C347" alt="commit-tracking-in-environment" class="aligncenter size-full wp-image-54599" /></a></p>\n<p>Version 3.0 also adds searching capabilities for filtering commits by author, date, commit message, and WordPress action. This release also includes a new bulk undo feature for commits and many improvements to the core versioning engine.</p>\n<h3>VersionPress 4.0 to Focus on Support for 3rd Party Plugins</h3>\n<p>One of the reasons the VersionPress team decided to go with a public development model was to mitigate the plugin&#8217;s conflicts with third-party themes and plugins. This was only possible if the opened up the codebase for contribution from other developers.</p>\n<p>&#8220;While we had most of the WordPress core covered pretty well, there was still this huge ecosystem of WordPress plugins and themes that could cause trouble to VersionPress in million different ways,&#8221; Borek said. &#8220;In the long run, the project had to turn into OSS should it be successful, and, fortunately, we met investors who understood this and supported our vision.&#8221;</p>\n<p>Borek and the team plan to focus on adding support for complex third party plugins in version 4.0, tentatively scheduled for mid-2016. One commenter on the post mentioned that a lack of WooCommerce support is a major thing holding him back from using VersionPress on projects. Borek confirmed that WooCommerce is high on their list of plugins they want to support.</p>\n<p>&#8220;Our goal remains the same: to take all the incredibly powerful functionality of Git and package it so that every WordPress user can use it,&#8221; Borek said.</p>\n<p>Since most site owners interested in this plugin are not running vanilla installations of WordPress, support for third party plugins will be a major leap forward for the project with the potential to greatly expand its user base. Check out VersionPress&#8217; <a href="http://docs.versionpress.net/en/release-notes/roadmap" target="_blank">roadmap</a> to follow along with its progress and see what&#8217;s next.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 May 2016 22:04:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"WPTavern: WordPress 4.5.2 Patches Two Security Vulnerabilities";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54594";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"http://wptavern.com/wordpress-4-5-2-patches-two-security-vulnerabilities";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1441:"<p>The WordPress core team has <a href="https://wordpress.org/news/2016/05/wordpress-4-5-2/">released WordPress 4.5.2</a> which patches two security vulnerabilities in WordPress versions 4.5.1 and below. The first is a <a href="http://www.benhayak.com/2015/06/same-origin-method-execution-some.html">SOME vulnerability</a> (Same-Origin Method Execution) in Plupload, the third-party library WordPress uses for uploading files. The second is a reflected cross-site-scripting vulnerability in MediaElement.js, the third-party library used for media players.</p>\n<p>Auto updates are rolling out to sites but if you don&#8217;t want to wait, browse to Dashboard &gt; Updates and click the Update Now button. Mario Heiderich, Masato Kinugawa, and Filedescriptor of <a href="https://cure53.de/">Cure53</a> are credited with <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsibly disclosing</a> the vulnerabilities.</p>\n<p>In addition to the release, the core team has <a href="https://make.wordpress.org/core/2016/05/06/imagemagick-vulnerability-information/">published a post</a> concerning the <a href="https://imagetragick.com/">multiple vulnerabilities</a> discovered in ImageMagick, a popular image processing script used on thousands of webhosting servers. The post describes how WordPress is affected and what the team is doing to mitigate issues.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 May 2016 20:01:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:97:"WPTavern: Laravel Releases Valet, a Minimalist Development Environment with Support for WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54580";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"http://wptavern.com/laravel-releases-valet-a-minimalist-development-environment-with-support-for-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3404:"<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/valet-parking.jpg"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/valet-parking.jpg?resize=900%2C520" alt="photo credit: Valet Parking, Las Vegas, NV - (license)" class="size-full wp-image-54589" /></a>photo credit: <a href="http://www.flickr.com/photos/55151301@N00/175606346">Valet Parking, Las Vegas, NV</a> &#8211; <a href="https://creativecommons.org/licenses/by-nd/2.0/">(license)</a>\n<p><a href="https://laravel.com/" target="_blank">Laravel</a>, the open source MVC PHP framework created for application development, has just released <a href="https://laravel.com/docs/5.2/valet" target="_blank">Valet</a>, a minimalist development environment for Mac. It uses just 7mb of RAM, because it doesn&#8217;t include Vagrant, Apache, Nginx, or a /etc/hosts file. Here&#8217;s how it works:</p>\n<blockquote><p>Laravel Valet configures your Mac to always run PHP&#8217;s built-in web server in the background when your machine starts. Then, using DnsMasq, Valet proxies all requests on the *.dev domain to point to sites installed on your local machine.\n</p></blockquote>\n<p>Valet supports Laravel, Lumen, Statamic, Craft, Jigsaw, and even has a driver for WordPress. It&#8217;s handy if you just need a simple, fast development environment without virtualization. Developers can also share sites publicly via local tunnels. It&#8217;s as easy as navigating to the site&#8217;s directory in the terminal and running the <code>valet share</code> command, which generates a publicly accessible URL.</p>\n<p><a href="https://wppusher.com/" target="_blank">WP Pusher</a> founder Peter Suhm, who is active in both the Laravel and WordPress communities, wrote a <a href="http://blog.wppusher.com/a-minimalist-development-environment-for-wordpress-with-laravel-valet/" target="_blank">tutorial</a> for setting up Valet for WordPress development.</p>\n<p>&#8220;For larger apps, I generally prefer my development environment to be very similar to production,&#8221; Suhm said. &#8220;Vagrant and Docker are great for that. Valet is great for all those quick and dirty WordPress installations you need, just to test something or quickly work on an idea. If you don’t need anything else besides PHP 7 and a database, Valet is a great setup.&#8221;</p>\n<p>Since it doesn&#8217;t require a ton of dependencies, Valet is quick to set up and doesn&#8217;t require any configuration. Developers don&#8217;t even need to make Valet aware that their app is WordPress &#8211; you can simply drop WordPress core files into a folder on your machine and then access the site in your browser.</p>\n<p>If you&#8217;re looking for a new lightweight development environment or just a quick way to do some PHP 7 testing for WordPress plugins, Valet may fit nicely into your workflow. You can install it using <a href="http://brew.sh/" target="_blank">Homebrew</a>. View the <a href="https://laravel.com/docs/5.2/valet#installation" target="_blank">docs</a> for installation and site setup or follow along with Suhm&#8217;s <a href="http://blog.wppusher.com/a-minimalist-development-environment-for-wordpress-with-laravel-valet/" target="_blank">tutorial</a>.</p>\n<p>To see a quick demo of Valet in action, check out the two-minute introduction video created by Adam Wathan:</p>\n<div class="embed-wrap"></div>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 May 2016 18:44:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"WPTavern: WordPress 4.6 to Drop Open Sans in the Admin in Favor of System Fonts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54507";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"http://wptavern.com/wordpress-4-6-to-drop-open-sans-in-the-admin-in-favor-of-system-fonts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2130:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/system-fonts-firefox-osx.png"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2016/05/system-fonts-firefox-osx.png?resize=1025%2C450" alt="system-fonts-firefox-osx" class="aligncenter size-full wp-image-54575" /></a></p>\n<p>WordPress 4.6 will bid farewell to Open Sans in the admin in favor of using system fonts. Open Sans, which loads from Google Fonts as an external resource, has been in use in the admin since 2013.</p>\n<p>&#8220;At the time of introduction in 3.8, there were not good system fonts common to all platforms at the time,&#8221; WordPress lead developer <a href="http://helenhousandi.com/" target="_blank">Helen Hou-Sandí</a> said in her <a href="https://core.trac.wordpress.org/changeset/37361" target="_blank">commit</a> message. &#8220;In the years since, Windows, Android, OS X, iOS, Firefox OS, and various flavors of Linux have all gotten their own (good) system UI fonts.&#8221;</p>\n<p>Now that the admin doesn&#8217;t have to load fonts from Google, it should feel faster and will provide a better experience for developers who are working offline.</p>\n<p>Dropping Open Sans originated as part of the <a href="https://make.wordpress.org/core/features/font-natively/" target="_blank">Font Natively</a> feature project led by WordPress designer <a href="https://mattmiklic.com/" target="_blank">Matt Miklic</a>, Mark Uraine, and Helen Hou-Sandí. The project page provides screenshots for the WP admin with Open Sans in Firefox on OSX vs the admin with system fonts, but the team noted that they are in need of more screenshots from different environments.</p>\n<p>Anytime that WordPress can shed a third-party dependency while improving the experience in the admin is a win for everyone. The commit comes early in the release cycle in order to get more people testing for misalignments and any other issues. Feel free to report any bugs you experience with the change, as work is still ongoing on the <a href="https://core.trac.wordpress.org/ticket/36753" target="_blank">ticket</a>.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 05 May 2016 20:50:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"WPTavern: Ninja Forms Update Patches Critical Security Vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54556";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"http://wptavern.com/ninja-forms-update-patches-critical-security-vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4325:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/03/NinjaFormsFeaturedImage.png"><img class="aligncenter size-full wp-image-40019" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2015/03/NinjaFormsFeaturedImage.png?resize=840%2C273" alt="Ninja Forms Featured Image" /></a><a href="https://wordpress.org/plugins/ninja-forms/">Ninja Forms</a>, a popular plugin active on more than 500K websites, released an update 48 hours ago that addresses a critical security vulnerability. Wordfence <a href="https://www.wordfence.com/blog/2016/05/ninja-forms-shell-upload-vulnerability-high-risk/">is reporting</a> that Ninja Forms versions 2.9.36 to 2.9.42 contain multiple security vulnerabilities.</p>\n<p>One of the vulnerabilities allows an attacker to upload and execute code remotely on WordPress sites. The only information needed to exploit the vulnerability is the URL of the target site that&#8217;s using a form powered by an affected version of Ninja Forms.</p>\n<p>Kevin Stover, CTO of Ninja Forms, explains to the Tavern how they discovered the vulnerabilities:</p>\n<blockquote><p>About two weeks ago, we were contacted by a security researcher, James Golovich, regarding a file upload issue within Ninja Forms. He demonstrated that it was possible to upload an arbitrary file using some test code that hadn’t been removed during our build process.</p>\n<p>We realised that the test code had accidentally been utilised in other areas of the plugin, and we immediately began working on a fix. While the issue was being patched, we reached out to the devs at the <a href="http://wordpress.org/" target="_blank" rel="noreferrer">WordPress.org</a> repo and began the processes of preparing for auto updating users of the affected versions.</p>\n<p>Once the patch had been tested, we pushed version 2.9.43 and .1 versions of 2.9.36 &#8211; 2.9.42. Shortly after, <a href="http://wordpress.org/" target="_blank" rel="noreferrer">WordPress.org</a> began pushing out automatic updates.</p></blockquote>\n<p>As to why there wasn&#8217;t a post published immediately on the official <a href="https://ninjaforms.com/blog/">Ninja Forms blog</a> announcing the update, &#8220;We didn’t want to go public with the vulnerability until our users had time to update, both to the newest version and the .1 versions,&#8221; Stover said.</p>\n<p>&#8220;James Golovich&#8217;s responsible disclosure gave us time to fix the issue and for our users to update to safe versions before disclosing the vulnerability on his site,&#8221; he said. The company has since <a href="https://ninjaforms.com/important-security-update-always-hurt-ones-love/">published a blog post </a>concerning the update.</p>\n<p>Working with the WordPress security team, automatic updates started rolling out on Tuesday, May 3rd. If automatic plugin updates are disabled, you&#8217;re highly encouraged to update manually to 2.9.45 as soon as possible. The Ninja Forms team is also working with a number of large webhosts to ensure as many sites as possible are updated.</p>\n<p>Wordfence is not detecting wide-spread exploitation but this could change in the next few days as details of the exploit emerge.</p>\n<p>When it comes to security vulnerabilities, the ability to upload and execute code remotely is about as severe as it gets. Golovich is credited with <a href="http://www.pritect.net/blog/ninja-forms-2-9-42-critical-security-vulnerabilities">responsibly disclosing</a> the vulnerability to the Ninja Forms team. He also provides technical details of each vulnerability, most of which are in the Ninja Forms 3.0 code base.</p>\n<p>According to Golovich, the most vulnerable code is a proof of concept:</p>\n<blockquote><p>The following vulnerable code was, according to Kyle Johnson of the WP Ninjas team &#8216;not a live feature of Ninja Forms, but was more of a proof of concept for a future free feature.&#8217; Unfortunately, even proof of concept code that is accessible is still vulnerable to attack. This is the most critical vulnerability here because it potentially allows an attacker to execute arbitrary php code on a site.</p></blockquote>\n<p>Users should update as soon as possible as it&#8217;s only a matter of time before tools are created that can easily take advantage of the exploit.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 05 May 2016 20:46:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:65:"WPTavern: WordPress.org Support Forums Adds Accessibility Section";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54472";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wptavern.com/wordpress-org-support-forums-adds-accessibility-section";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3619:"<p>Earlier this year, the WordPress project made a huge move by <a href="http://wptavern.com/wordpress-adopts-accessibility-coding-standards-for-all-new-and-updated-code">adopting accessibility coding standards</a> for new and updated code. If you&#8217;re struggling to meet <a href="https://www.w3.org/WAI/intro/wcag">WCAG 2.0 guidelines</a> in your WordPress projects and need help, check out the new <a href="https://wordpress.org/support/forum/accessibility">Accessibility section</a> in the WordPress.org support forums.</p>\n<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/WPAccessibilitySupport.png"><img class="size-full wp-image-54551" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/WPAccessibilitySupport.png?resize=1025%2C487" alt="WordPress Accessibility Support" /></a>WordPress Accessibility Support\n<p>Amanda Rush, who helps WordPress developers make their themes and plugins accessible, says the forum is the result of a conversation with a support team member at WordCamp Atlanta.</p>\n<p>&#8220;I <span class="message_body">mentioned that part of what makes the job difficult when it comes to making WordPress accessible is stopping during our work to answer occasional questions.<br />\n</span></p>\n<p>&#8220;Most of the time the answer is not a quick one, because in the case of screen reader users, you have to first find out how well they can use their tech, how familiar they are with WordPress itself, and if neither of those chances are high, you spend time giving them a crash course in either one or both, and then answer their question,&#8221; <span class="message_body">Rush said. </span></p>\n<p>Most of the people on the <a href="https://make.wordpress.org/accessibility/">WordPress Accessibility team</a> are volunteers with full-time jobs which limits their ability to provide one-on-one support. Many of the support queries come through email or direct messages to individuals on the team. The forum enables everyone to participate in the support process.</p>\n<p>&#8220;If people ask their questions publicly, I or others not necessarily on the Accessibility Team can answer, and the answers are then public,&#8221; Rush said.</p>\n<p>&#8220;We have a pattern library on GitHub, which we all contribute to when we have time. But there are all kinds of solutions being passed around on Twitter and spread across other people&#8217;s GitHub accounts. So if someone asks a question like that, we can either point to something in specific cases, which is most of them, there&#8217;s probably already a specific solution that someone&#8217;s built, and we can link to that,&#8221; Rush told the Tavern.</p>\n<p>The accessibility support forum also comes with a side benefit, &#8220;W<span class="message_body">e don&#8217;t have to say no all the time when people ask for support, or what looks like all the time to some people. Everyone can help each other </span><span class="message_body">out and Google has a public resource,&#8221; Rush said.<br />\n</span></p>\n<p>The support forum comes at a time where accessibility is an increasingly important part of web development. For example, the European Union <a href="http://europa.eu/rapid/press-release_IP-16-1654_en.htm">recently agreed to new rules</a> that will make public sector websites and apps more accessible.</p>\n<p>If you have any questions related to accessibility, you can post them on the forum. If you have experience and knowledge in the accessibility field, consider answering questions as it&#8217;s a great way to contribute to the WordPress project.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 05 May 2016 20:13:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:110:"WPTavern: Font Awesome CDN Now in Beta, Loads Icons Asynchronously with Automatic Accessibility Best Practices";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=54509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:119:"http://wptavern.com/font-awesome-cdn-now-in-beta-loads-icons-asynchronously-with-automatic-accessibility-best-practices";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2903:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/font-awesome.png"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/font-awesome.png?resize=1025%2C326" alt="font-awesome" class="aligncenter size-full wp-image-54532" /></a></p>\n<p><a href="https://fortawesome.github.io/Font-Awesome/" target="_blank">Font Awesome</a>, the open source vector icon collection used by more than 300 plugins on WordPress.org and many free and commercial themes, <a href="https://articles.fortawesome.com/announcing-font-awesome-cdn-81773e0b301f#.egol888o7" target="_blank">announced the beta release of its new CDN</a>. Developers can now add a single line of code to bring the icons and CSS toolkit into their projects.</p>\n<p>The icon files and CSS are hosted by <a href="https://www.maxcdn.com/" target="_blank">MaxCDN</a>, which serves a cached version that loads quickly on websites that use Font Awesome. The CDN uses <a href="https://github.com/typekit/webfontloader" target="_blank">Web Font Loader</a>, which was co-developed by Google and Typekit, to load the icons asynchronously. This also gives developers <a href="https://github.com/typekit/webfontloader#events" target="_blank">CSS and JavaScript events</a> to hook into on loading.</p>\n<p><a href="http://wptavern.com/font-awesome-4-6-0-adds-new-accessibility-icons-category" target="_blank">FontAwesome 4.6 added a new accessibility icon category</a> and the new CDN helps to automate outputting the correct markup. If the icon you&#8217;re using has semantic meaning, including an accurate title attribute with the inline icon will trigger Font Awesome&#8217;s JS to do the rest.</p>\n<p>Font Awesome requires an email address from those want to use the CDN so it can issue a unique embed code for each. Developers also have the option to register a Font Awesome CDN account to keep track of sites and apps where they are using the icons, and manage multiple embed codes. Once logged in, you can enable or disable auto-accessibility, asynchronous icon loading, easy updates to newer Font Awesome versions, and CSS or JS embed.</p>\n<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/font-awesome-account.png"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/font-awesome-account.png?resize=1025%2C865" alt="font-awesome-account" class="aligncenter size-full wp-image-54543" /></a></p>\n<p>One of the most convenient reasons to use the CDN is to simplify updates. WordPress plugin and theme developers do not have to bump versions or push any code to use the latest version. Font Awesome version changes can be triggered on an individual basis for each embed code in a developer&#8217;s account dashboard. Check out the instructions at <a href="https://cdn.fontawesome.com/" target="_blank">cdn.fontawesome.com</a> to get your project hooked up.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 05 May 2016 18:09:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Mon, 27 Jun 2016 03:22:39 GMT";s:12:"content-type";s:8:"text/xml";s:14:"content-length";s:6:"217777";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Mon, 27 Jun 2016 03:00:16 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";s:13:"accept-ranges";s:5:"bytes";}s:5:"build";s:14:"20130911040210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3962, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1467040960', 'no'),
(3963, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1466997760', 'no'),
(3964, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1467040962', 'no'),
(3965, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 27 Jun 2016 03:22:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 15 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The Wordfence WordPress security plugin provides free enterprise-class WordPress security, protecting your website from hacks and malware.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"47509@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Mon, 27 Jun 2016 03:22:42 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Mon, 27 Jun 2016 03:57:25 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Mon, 27 Jun 2016 03:22:25 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20130911040210";}', 'no'),
(3966, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1467040962', 'no'),
(3967, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1466997762', 'no'),
(3968, '_transient_timeout_plugin_slugs', '1467084163', 'no'),
(3969, '_transient_plugin_slugs', 'a:11:{i:0;s:19:"akismet/akismet.php";i:1;s:31:"custom-database-tables/cdbt.php";i:2;s:38:"wp-db-table-editor/db-table-editor.php";i:3;s:33:"fancy-admin-ui/fancy-admin-ui.php";i:4;s:9:"hello.php";i:5;s:55:"global-admin-bar-hide-or-remove/hide-admin-tool-bar.php";i:6;s:19:"jetpack/jetpack.php";i:7;s:86:"sb_welcome_email_editor_with_reminders.php_/sb_welcome_email_editor_with_reminders.php";i:8;s:35:"wp-database-admin/wda_functions.php";i:9;s:29:"wp-dbmanager/wp-dbmanager.php";i:10;s:29:"wp-mail-smtp/wp_mail_smtp.php";}', 'no'),
(3970, '_transient_timeout_dash_a5a61dcab273495c31cd79aafebbdc74', '1467040963', 'no'),
(3971, '_transient_dash_a5a61dcab273495c31cd79aafebbdc74', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2016/06/wordpress-4-5-3/''>WordPress 4.5.3 Maintenance and Security Release</a> <span class="rss-date">Tháng Sáu 18, 2016</span><div class="rssSummary">WordPress 4.5.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.5.2 and earlier are affected by several security issues: redirect bypass in the customizer, reported by Yassine Aboukir; two different XSS problems via attachment names, reported by Jouko Pynnönen and Divyesh Prajapati; revision history information disclosure, reported [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://blog.wordpress.tv/2016/06/22/spotlight-wordcamp-miami-2016/''>WordPress.tv Blog: Spotlight: WordCamp Miami 2016</a></li><li><a class=''rsswidget'' href=''http://blog.wordpress.tv/2016/06/15/developing-for-wordpress-with-pippin-williamson-and-danilo-ercoli/''>WordPress.tv Blog: Developing for WordPress with Pippin Williamson and Danilo Ercoli</a></li><li><a class=''rsswidget'' href=''https://poststatus.com/wordpress-news-happens-draft-podcast/''>Post Status: How WordPress news happens — Draft podcast</a></li></ul></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Gói Bổ Xung Tính Năng Phổ Biến:</span> <a href=''https://wordpress.org/plugins/siteorigin-panels/'' class=''dashboard-news-plugin-link''>Page Builder by SiteOrigin</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=35f4fa9823&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Page Builder by SiteOrigin''>Cài đặt</a>)</span></li></ul></div>', 'no'),
(3975, '_site_transient_timeout_theme_roots', '1467000552', 'yes'),
(3976, '_site_transient_theme_roots', 'a:1:{s:4:"test";s:7:"/themes";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3978, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1466998758;s:8:"response";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";b:0;}s:31:"custom-database-tables/cdbt.php";O:8:"stdClass":8:{s:2:"id";s:5:"50838";s:4:"slug";s:22:"custom-database-tables";s:6:"plugin";s:31:"custom-database-tables/cdbt.php";s:11:"new_version";s:6:"2.1.32";s:3:"url";s:53:"https://wordpress.org/plugins/custom-database-tables/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/custom-database-tables.2.1.32.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";b:0;}s:19:"jetpack/jetpack.php";O:8:"stdClass":8:{s:2:"id";s:5:"20101";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:5:"4.0.4";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/jetpack.4.0.4.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";b:0;}}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:38:"wp-db-table-editor/db-table-editor.php";O:8:"stdClass":6:{s:2:"id";s:5:"48964";s:4:"slug";s:18:"wp-db-table-editor";s:6:"plugin";s:38:"wp-db-table-editor/db-table-editor.php";s:11:"new_version";s:5:"1.5.3";s:3:"url";s:49:"https://wordpress.org/plugins/wp-db-table-editor/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-db-table-editor.zip";}s:33:"fancy-admin-ui/fancy-admin-ui.php";O:8:"stdClass":6:{s:2:"id";s:5:"51776";s:4:"slug";s:14:"fancy-admin-ui";s:6:"plugin";s:33:"fancy-admin-ui/fancy-admin-ui.php";s:11:"new_version";s:3:"1.1";s:3:"url";s:45:"https://wordpress.org/plugins/fancy-admin-ui/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/fancy-admin-ui.1.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:35:"wp-database-admin/wda_functions.php";O:8:"stdClass":6:{s:2:"id";s:5:"54842";s:4:"slug";s:17:"wp-database-admin";s:6:"plugin";s:35:"wp-database-admin/wda_functions.php";s:11:"new_version";s:5:"1.0.3";s:3:"url";s:48:"https://wordpress.org/plugins/wp-database-admin/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wp-database-admin.zip";}s:29:"wp-dbmanager/wp-dbmanager.php";O:8:"stdClass":6:{s:2:"id";s:3:"340";s:4:"slug";s:12:"wp-dbmanager";s:6:"plugin";s:29:"wp-dbmanager/wp-dbmanager.php";s:11:"new_version";s:4:"2.78";s:3:"url";s:43:"https://wordpress.org/plugins/wp-dbmanager/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-dbmanager.2.78.1.zip";}s:29:"wp-mail-smtp/wp_mail_smtp.php";O:8:"stdClass":7:{s:2:"id";s:3:"951";s:4:"slug";s:12:"wp-mail-smtp";s:6:"plugin";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:11:"new_version";s:5:"0.9.5";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-smtp/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-mail-smtp.0.9.6.zip";s:14:"upgrade_notice";s:38:"Minor security fix, hat tip JD Grimes.";}}}', 'yes'),
(3979, '_site_transient_timeout_browser_6506c634d4827e425d70ddcd45d00714', '1467609707', 'yes'),
(3980, '_site_transient_browser_6506c634d4827e425d70ddcd45d00714', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1443670651:1'),
(4, 4, '_wp_page_template', 'dangkythongtin-page.php'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1454470045:46'),
(7, 6, '_wp_page_template', 'xemthongtin.php'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1454470156:46'),
(10, 8, '_wp_page_template', 'capnhatthongtin.php'),
(11, 10, '_edit_last', '1'),
(12, 10, '_edit_lock', '1446087070:43'),
(13, 10, '_wp_page_template', 'ketquatimkiem_page.php'),
(14, 12, '_edit_last', '1'),
(15, 12, '_edit_lock', '1443670722:1'),
(16, 12, '_wp_page_template', 'laydieukien.php'),
(17, 14, '_edit_last', '1'),
(18, 14, '_edit_lock', '1444972234:43'),
(19, 14, '_wp_page_template', 'timkiem.php'),
(20, 18, '_edit_last', '43'),
(21, 18, '_edit_lock', '1454470251:46'),
(22, 18, '_wp_page_template', 'capnhapKDV.php'),
(24, 1, '_edit_lock', '1462868458:46');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-10-01 03:35:55', '2015-10-01 03:35:55', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-10-01 03:35:55', '2015-10-01 03:35:55', '', 0, 'http://127.0.0.1/testkdv/?p=1', 0, 'post', '', 1),
(2, 1, '2015-10-01 03:35:55', '2015-10-01 03:35:55', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://127.0.0.1/testkdv/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2015-10-01 03:35:55', '2015-10-01 03:35:55', '', 0, 'http://127.0.0.1/testkdv/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-10-01 03:38:21', '2015-10-01 03:38:21', '', 'Đăng ký thông tin', '', 'publish', 'closed', 'closed', '', 'dang-ky-thong-tin', '', '', '2015-10-01 03:38:21', '2015-10-01 03:38:21', '', 0, 'http://127.0.0.1/testkdv/?page_id=4', 0, 'page', '', 0),
(5, 1, '2015-10-01 03:38:21', '2015-10-01 03:38:21', '', 'Đăng ký thông tin', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2015-10-01 03:38:21', '2015-10-01 03:38:21', '', 4, 'http://127.0.0.1/testkdv/2015/10/01/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2015-10-01 03:40:06', '2015-10-01 03:40:06', '', 'Xem thông tin', '', 'publish', 'closed', 'closed', '', 'xem-thong-tin', '', '', '2015-10-01 03:40:06', '2015-10-01 03:40:06', '', 0, 'http://127.0.0.1/testkdv/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-10-01 03:40:06', '2015-10-01 03:40:06', '', 'Xem thông tin', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-10-01 03:40:06', '2015-10-01 03:40:06', '', 6, 'http://127.0.0.1/testkdv/2015/10/01/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2015-10-01 03:40:20', '2015-10-01 03:40:20', '', 'Cập nhật thông tin', '', 'publish', 'closed', 'closed', '', 'cap-nhat-thong-tin', '', '', '2015-10-01 03:40:20', '2015-10-01 03:40:20', '', 0, 'http://127.0.0.1/testkdv/?page_id=8', 0, 'page', '', 0),
(9, 1, '2015-10-01 03:40:20', '2015-10-01 03:40:20', '', 'Cập nhật thông tin', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2015-10-01 03:40:20', '2015-10-01 03:40:20', '', 8, 'http://127.0.0.1/testkdv/2015/10/01/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2015-10-01 03:40:47', '2015-10-01 03:40:47', '', 'Kết quả tìm kiếm', '', 'publish', 'closed', 'closed', '', 'ket-qua-tim-kiem', '', '', '2015-10-01 03:40:47', '2015-10-01 03:40:47', '', 0, 'http://127.0.0.1/testkdv/?page_id=10', 0, 'page', '', 0),
(11, 1, '2015-10-01 03:40:47', '2015-10-01 03:40:47', '', 'Kết quả tìm kiếm', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2015-10-01 03:40:47', '2015-10-01 03:40:47', '', 10, 'http://127.0.0.1/testkdv/2015/10/01/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2015-10-01 03:41:06', '2015-10-01 03:41:06', '', 'Lấy điều kiện', '', 'publish', 'closed', 'closed', '', 'lay-dieu-kien', '', '', '2015-10-01 03:41:06', '2015-10-01 03:41:06', '', 0, 'http://127.0.0.1/testkdv/?page_id=12', 0, 'page', '', 0),
(13, 1, '2015-10-01 03:41:06', '2015-10-01 03:41:06', '', 'Lấy điều kiện', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2015-10-01 03:41:06', '2015-10-01 03:41:06', '', 12, 'http://127.0.0.1/testkdv/2015/10/01/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2015-10-01 03:41:17', '2015-10-01 03:41:17', '', 'Tìm kiếm', '', 'publish', 'closed', 'closed', '', 'tim-kiem', '', '', '2015-10-01 03:41:17', '2015-10-01 03:41:17', '', 0, 'http://127.0.0.1/testkdv/?page_id=14', 0, 'page', '', 0),
(15, 1, '2015-10-01 03:41:17', '2015-10-01 03:41:17', '', 'Tìm kiếm', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2015-10-01 03:41:17', '2015-10-01 03:41:17', '', 14, 'http://127.0.0.1/testkdv/2015/10/01/14-revision-v1/', 0, 'revision', '', 0),
(18, 46, '2015-11-06 08:07:20', '2015-11-06 08:07:20', '', 'Cập nhật KĐV', '', 'publish', 'closed', 'closed', '', 'cap-nhat-kdv', '', '', '2015-11-06 08:07:20', '2015-11-06 08:07:20', '', 0, 'http://127.0.0.1/testkdv/?page_id=18', 0, 'page', '', 0),
(19, 46, '2015-11-06 08:07:20', '2015-11-06 08:07:20', '', 'Cập nhật KĐV', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2015-11-06 08:07:20', '2015-11-06 08:07:20', '', 18, 'http://127.0.0.1/testkdv/2015/11/06/18-revision-v1/', 0, 'revision', '', 0),
(35, 46, '2016-05-23 00:36:50', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-05-23 00:36:50', '0000-00-00 00:00:00', '', 0, 'http://kdv.cea.vnuhcm.edu.vn/?p=35', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 46, 'nickname', 'dangkhoa'),
(2, 46, 'first_name', ''),
(3, 46, 'last_name', ''),
(4, 46, 'description', ''),
(5, 46, 'rich_editing', 'true'),
(6, 46, 'comment_shortcuts', 'false'),
(7, 46, 'admin_color', 'coffee'),
(8, 46, 'use_ssl', '0'),
(9, 46, 'show_admin_bar_front', 'false'),
(10, 46, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 46, 'wp_user_level', '10'),
(12, 46, 'dismissed_wp_pointers', ''),
(13, 46, 'show_welcome_panel', '1'),
(15, 46, 'wp_dashboard_quick_press_last_post_id', '35'),
(19, 47, 'nickname', 'test'),
(20, 47, 'first_name', 'Khoa'),
(21, 47, 'last_name', 'Khoa'),
(22, 47, 'description', ''),
(23, 47, 'rich_editing', 'true'),
(24, 47, 'comment_shortcuts', 'false'),
(25, 47, 'admin_color', 'fresh'),
(26, 47, 'use_ssl', '0'),
(27, 47, 'show_admin_bar_front', 'true'),
(28, 47, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(29, 47, 'wp_user_level', '0'),
(30, 47, 'dismissed_wp_pointers', ''),
(31, 48, 'nickname', 'nhnghia@vnuhcm.edu.vn'),
(32, 48, 'first_name', 'Nghĩa'),
(33, 48, 'last_name', 'Nguyễn Hội'),
(34, 48, 'description', ''),
(35, 48, 'rich_editing', 'true'),
(36, 48, 'comment_shortcuts', 'false'),
(37, 48, 'admin_color', 'fresh'),
(38, 48, 'use_ssl', '0'),
(39, 48, 'show_admin_bar_front', 'true'),
(40, 48, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(41, 48, 'wp_user_level', '7'),
(42, 48, 'dismissed_wp_pointers', ''),
(43, 49, 'nickname', 'ntmngoc@vnuhcm.edu.vn'),
(44, 49, 'first_name', 'Ngọc'),
(45, 49, 'last_name', 'Nguyễn Thị Mỹ'),
(46, 49, 'description', ''),
(47, 49, 'rich_editing', 'true'),
(48, 49, 'comment_shortcuts', 'false'),
(49, 49, 'admin_color', 'fresh'),
(50, 49, 'use_ssl', '0'),
(51, 49, 'show_admin_bar_front', 'true'),
(52, 49, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(53, 49, 'wp_user_level', '7'),
(54, 49, 'dismissed_wp_pointers', ''),
(55, 50, 'nickname', 'nhphung@vnuhcm.edu.vn'),
(56, 50, 'first_name', 'Phùng'),
(57, 50, 'last_name', 'Nguyễn Hứa'),
(58, 50, 'description', ''),
(59, 50, 'rich_editing', 'true'),
(60, 50, 'comment_shortcuts', 'false'),
(61, 50, 'admin_color', 'fresh'),
(62, 50, 'use_ssl', '0'),
(63, 50, 'show_admin_bar_front', 'true'),
(64, 50, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(65, 50, 'wp_user_level', '7'),
(66, 50, 'dismissed_wp_pointers', ''),
(67, 51, 'nickname', 'hdhmien@vnuhcm.edu.vn'),
(68, 51, 'first_name', 'Miên'),
(69, 51, 'last_name', 'Hồ Đắc Hải'),
(70, 51, 'description', ''),
(71, 51, 'rich_editing', 'true'),
(72, 51, 'comment_shortcuts', 'false'),
(73, 51, 'admin_color', 'fresh'),
(74, 51, 'use_ssl', '0'),
(75, 51, 'show_admin_bar_front', 'true'),
(76, 51, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(77, 51, 'wp_user_level', '7'),
(78, 51, 'dismissed_wp_pointers', ''),
(79, 52, 'nickname', 'ntut@vnuhcm.edu.vn'),
(80, 52, 'first_name', 'Út'),
(81, 52, 'last_name', 'Nguyễn Thị'),
(82, 52, 'description', ''),
(83, 52, 'rich_editing', 'true'),
(84, 52, 'comment_shortcuts', 'false'),
(85, 52, 'admin_color', 'fresh'),
(86, 52, 'use_ssl', '0'),
(87, 52, 'show_admin_bar_front', 'true'),
(88, 52, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(89, 52, 'wp_user_level', '7'),
(90, 52, 'dismissed_wp_pointers', ''),
(91, 53, 'nickname', 'lttu@vnuhcm.edu.vn'),
(92, 53, 'first_name', 'Tú'),
(93, 53, 'last_name', 'Lê Thanh'),
(94, 53, 'description', ''),
(95, 53, 'rich_editing', 'true'),
(96, 53, 'comment_shortcuts', 'false'),
(97, 53, 'admin_color', 'fresh'),
(98, 53, 'use_ssl', '0'),
(99, 53, 'show_admin_bar_front', 'true'),
(100, 53, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(101, 53, 'wp_user_level', '7'),
(102, 53, 'dismissed_wp_pointers', ''),
(103, 54, 'nickname', 'thuynn@vnuhcm.edu.vn'),
(104, 54, 'first_name', 'Thúy'),
(105, 54, 'last_name', 'Nguyễn Ngọc'),
(106, 54, 'description', ''),
(107, 54, 'rich_editing', 'true'),
(108, 54, 'comment_shortcuts', 'false'),
(109, 54, 'admin_color', 'fresh'),
(110, 54, 'use_ssl', '0'),
(111, 54, 'show_admin_bar_front', 'true'),
(112, 54, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(113, 54, 'wp_user_level', '7'),
(114, 54, 'dismissed_wp_pointers', ''),
(115, 49, 'session_tokens', 'a:1:{s:64:"c54247bb112e82e9e55a25efd21d764e05159aea10eb8349af18760dc123cf50";a:4:{s:10:"expiration";i:1453531069;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36";s:5:"login";i:1453358269;}}'),
(117, 51, 'session_tokens', 'a:2:{s:64:"bace8b37b2cc3ee1de8d5ee42e5fc9b5f18f1b7215cf0391f09d7f2f0c492439";a:4:{s:10:"expiration";i:1455866470;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/53.2.131 Chrome/47.2.2526.131 Safari/537.36";s:5:"login";i:1455693670;}s:64:"54c7d5f4079cc5f7db9af9cabf9f3526b8e3e1e90561e6e76f86997d1b293cfa";a:4:{s:10:"expiration";i:1455870699;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/53.2.131 Chrome/47.2.2526.131 Safari/537.36";s:5:"login";i:1455697899;}}'),
(122, 52, 'session_tokens', 'a:1:{s:64:"f4b278a8698bf1a9e7f04dc8ff7dd04c9dbbeeb557c3c6b84477a9c8b58c84a4";a:4:{s:10:"expiration";i:1456372674;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/53.2.131 Chrome/47.2.2526.131 Safari/537.36";s:5:"login";i:1456199874;}}'),
(123, 24, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(124, 24, 'wp_user_level', '7'),
(125, 38, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(126, 38, 'wp_user_level', '7'),
(127, 22, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(128, 22, 'wp_user_level', '7'),
(180, 58, 'nickname', 'sas@'),
(181, 58, 'first_name', ''),
(182, 58, 'last_name', ''),
(183, 58, 'description', ''),
(184, 58, 'rich_editing', 'true'),
(185, 58, 'comment_shortcuts', 'false'),
(186, 58, 'admin_color', 'fresh'),
(187, 58, 'use_ssl', '0'),
(188, 58, 'show_admin_bar_front', 'true'),
(189, 58, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(190, 58, 'wp_user_level', '0'),
(191, 58, 'default_password_nag', '1'),
(192, 58, 'sb_we_last_sent', '1458007535'),
(193, 22, 'session_tokens', 'a:1:{s:64:"ced1d2f7435b5b6fd137ab046cca6eafb067989fef84ca0ce4b750107f349f5e";a:4:{s:10:"expiration";i:1458286740;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/54.2.129 Chrome/48.2.2564.129 Safari/537.36";s:5:"login";i:1458113940;}}'),
(194, 22, 'wp_dashboard_quick_press_last_post_id', '27'),
(196, 59, 'nickname', 'test2'),
(197, 59, 'first_name', ''),
(198, 59, 'last_name', ''),
(199, 59, 'description', ''),
(200, 59, 'rich_editing', 'true'),
(201, 59, 'comment_shortcuts', 'false'),
(202, 59, 'admin_color', 'fresh'),
(203, 59, 'use_ssl', '0'),
(204, 59, 'show_admin_bar_front', 'true'),
(205, 59, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(206, 59, 'wp_user_level', '0'),
(207, 59, 'default_password_nag', ''),
(208, 59, 'sb_we_last_sent', '1458149499'),
(209, 60, 'nickname', 'test3'),
(210, 60, 'first_name', ''),
(211, 60, 'last_name', ''),
(212, 60, 'description', ''),
(213, 60, 'rich_editing', 'true'),
(214, 60, 'comment_shortcuts', 'false'),
(215, 60, 'admin_color', 'fresh'),
(216, 60, 'use_ssl', '0'),
(217, 60, 'show_admin_bar_front', 'true'),
(218, 60, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(219, 60, 'wp_user_level', '0'),
(220, 60, 'default_password_nag', ''),
(221, 60, 'sb_we_last_sent', '1458149757'),
(225, 61, 'nickname', 'haodn'),
(226, 61, 'first_name', ''),
(227, 61, 'last_name', ''),
(228, 61, 'description', ''),
(229, 61, 'rich_editing', 'true'),
(230, 61, 'comment_shortcuts', 'false'),
(231, 61, 'admin_color', 'fresh'),
(232, 61, 'use_ssl', '0'),
(233, 61, 'show_admin_bar_front', 'true'),
(234, 61, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(235, 61, 'wp_user_level', '0'),
(236, 61, 'default_password_nag', '1'),
(237, 61, 'sb_we_last_sent', '1458182223'),
(238, 61, 'session_tokens', 'a:1:{s:64:"a5c1c3e389f1be200e2f220cfd308218bf857f6ce9fa6196b893163690ab0ef9";a:4:{s:10:"expiration";i:1458355034;s:2:"ip";s:12:"172.25.26.46";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1458182234;}}'),
(239, 62, 'nickname', 'hoangxuantung'),
(240, 62, 'first_name', ''),
(241, 62, 'last_name', ''),
(242, 62, 'description', ''),
(243, 62, 'rich_editing', 'true'),
(244, 62, 'comment_shortcuts', 'false'),
(245, 62, 'admin_color', 'fresh'),
(246, 62, 'use_ssl', '0'),
(247, 62, 'show_admin_bar_front', 'true'),
(248, 62, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(249, 62, 'wp_user_level', '0'),
(250, 62, 'default_password_nag', '1'),
(251, 62, 'sb_we_last_sent', '1458182386'),
(253, 63, 'nickname', 'nguyenlanphuongBK'),
(254, 63, 'first_name', ''),
(255, 63, 'last_name', ''),
(256, 63, 'description', ''),
(257, 63, 'rich_editing', 'true'),
(258, 63, 'comment_shortcuts', 'false'),
(259, 63, 'admin_color', 'fresh'),
(260, 63, 'use_ssl', '0'),
(261, 63, 'show_admin_bar_front', 'true'),
(262, 63, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(263, 63, 'wp_user_level', '0'),
(264, 63, 'default_password_nag', '1'),
(265, 63, 'sb_we_last_sent', '1458182494'),
(266, 64, 'nickname', 'anhvu'),
(267, 64, 'first_name', ''),
(268, 64, 'last_name', ''),
(269, 64, 'description', ''),
(270, 64, 'rich_editing', 'true'),
(271, 64, 'comment_shortcuts', 'false'),
(272, 64, 'admin_color', 'fresh'),
(273, 64, 'use_ssl', '0'),
(274, 64, 'show_admin_bar_front', 'true'),
(275, 64, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(276, 64, 'wp_user_level', '0'),
(277, 64, 'default_password_nag', '1'),
(278, 64, 'sb_we_last_sent', '1458182517'),
(280, 63, 'session_tokens', 'a:1:{s:64:"9cc8c6f5495749ceb2aa6c401c2739f7a3d38c96b88cd114b0a4f8997a3811aa";a:4:{s:10:"expiration";i:1463118972;s:2:"ip";s:14:"180.93.218.232";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/55.2.116 Chrome/49.2.2623.116 Safari/537.36";s:5:"login";i:1462946172;}}'),
(281, 65, 'nickname', 'phuonghutech'),
(282, 65, 'first_name', ''),
(283, 65, 'last_name', ''),
(284, 65, 'description', ''),
(285, 65, 'rich_editing', 'true'),
(286, 65, 'comment_shortcuts', 'false'),
(287, 65, 'admin_color', 'fresh'),
(288, 65, 'use_ssl', '0'),
(289, 65, 'show_admin_bar_front', 'true'),
(290, 65, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(291, 65, 'wp_user_level', '0'),
(292, 65, 'default_password_nag', '1'),
(293, 65, 'sb_we_last_sent', '1458182882'),
(294, 65, 'session_tokens', 'a:1:{s:64:"11f78204dbe559348e9c8ce1dbe602bcb213bd34873c461d81ac970b5742ad36";a:4:{s:10:"expiration";i:1463113223;s:2:"ip";s:14:"118.69.244.106";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36";s:5:"login";i:1462940423;}}'),
(295, 66, 'nickname', 'tchien'),
(296, 66, 'first_name', ''),
(297, 66, 'last_name', ''),
(298, 66, 'description', ''),
(299, 66, 'rich_editing', 'true'),
(300, 66, 'comment_shortcuts', 'false'),
(301, 66, 'admin_color', 'fresh'),
(302, 66, 'use_ssl', '0'),
(303, 66, 'show_admin_bar_front', 'true'),
(304, 66, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(305, 66, 'wp_user_level', '0'),
(306, 66, 'default_password_nag', '1'),
(307, 66, 'sb_we_last_sent', '1458183322'),
(309, 59, 'sb_we_plaintext_pass', '12345678'),
(310, 67, 'nickname', 'nguyenkon'),
(311, 67, 'first_name', ''),
(312, 67, 'last_name', ''),
(313, 67, 'description', ''),
(314, 67, 'rich_editing', 'true'),
(315, 67, 'comment_shortcuts', 'false'),
(316, 67, 'admin_color', 'fresh'),
(317, 67, 'use_ssl', '0'),
(318, 67, 'show_admin_bar_front', 'true'),
(319, 67, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(320, 67, 'wp_user_level', '0'),
(321, 67, 'default_password_nag', '1'),
(322, 67, 'sb_we_last_sent', '1458183787'),
(323, 67, 'session_tokens', 'a:2:{s:64:"03bbcb27ce686bb83bb8767ab68416eb700deb8e922f679220eab8cb8c6b341e";a:4:{s:10:"expiration";i:1458356602;s:2:"ip";s:14:"14.187.163.126";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0";s:5:"login";i:1458183802;}s:64:"616ce54864d92da4ce4be6f4dfe5d2b363880a9cc7b72d7f328bf479f2961302";a:4:{s:10:"expiration";i:1458357351;s:2:"ip";s:14:"14.187.163.126";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0";s:5:"login";i:1458184551;}}'),
(324, 68, 'nickname', 'tthhanh'),
(325, 68, 'first_name', ''),
(326, 68, 'last_name', ''),
(327, 68, 'description', ''),
(328, 68, 'rich_editing', 'true'),
(329, 68, 'comment_shortcuts', 'false'),
(330, 68, 'admin_color', 'fresh'),
(331, 68, 'use_ssl', '0'),
(332, 68, 'show_admin_bar_front', 'true'),
(333, 68, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(334, 68, 'wp_user_level', '0'),
(335, 68, 'default_password_nag', '1'),
(336, 68, 'sb_we_last_sent', '1458183895'),
(337, 68, 'session_tokens', 'a:1:{s:64:"71d647b208ed1b067ca99cc6ed808a6523469337d2fccf62dc04667f1f802f69";a:4:{s:10:"expiration";i:1458356710;s:2:"ip";s:14:"123.30.143.193";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1458183910;}}'),
(338, 69, 'nickname', 'Huyen'),
(339, 69, 'first_name', ''),
(340, 69, 'last_name', ''),
(341, 69, 'description', ''),
(342, 69, 'rich_editing', 'true'),
(343, 69, 'comment_shortcuts', 'false'),
(344, 69, 'admin_color', 'fresh'),
(345, 69, 'use_ssl', '0'),
(346, 69, 'show_admin_bar_front', 'true'),
(347, 69, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(348, 69, 'wp_user_level', '0'),
(350, 69, 'default_password_nag', '1'),
(351, 69, 'sb_we_last_sent', '1458183999'),
(352, 69, 'session_tokens', 'a:1:{s:64:"3aec3dcd690882e8cc657a0be22cfa6049cd1dab216819e21fd1a5aa240ad1ae";a:4:{s:10:"expiration";i:1463108742;s:2:"ip";s:13:"42.118.20.164";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/55.2.116 Chrome/49.2.2623.116 Safari/537.36";s:5:"login";i:1462935942;}}'),
(353, 70, 'nickname', 'haolevan@yahoo.com'),
(354, 70, 'first_name', 'Hảo'),
(355, 70, 'last_name', 'Lê Văn'),
(356, 70, 'description', ''),
(357, 70, 'rich_editing', 'true'),
(358, 70, 'comment_shortcuts', 'false'),
(359, 70, 'admin_color', 'fresh'),
(360, 70, 'use_ssl', '0'),
(361, 70, 'show_admin_bar_front', 'true'),
(362, 70, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(363, 70, 'wp_user_level', '0'),
(364, 70, 'dismissed_wp_pointers', ''),
(365, 70, 'sb_we_last_sent', '1458184040'),
(366, 71, 'nickname', 'Nhanussh'),
(367, 71, 'first_name', ''),
(368, 71, 'last_name', ''),
(369, 71, 'description', ''),
(370, 71, 'rich_editing', 'true'),
(371, 71, 'comment_shortcuts', 'false'),
(372, 71, 'admin_color', 'fresh'),
(373, 71, 'use_ssl', '0'),
(374, 71, 'show_admin_bar_front', 'true'),
(375, 71, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(376, 71, 'wp_user_level', '0'),
(377, 71, 'default_password_nag', '1'),
(378, 71, 'sb_we_last_sent', '1458184090'),
(379, 72, 'nickname', 'vpn.dung@hutech.edu.vn'),
(380, 72, 'first_name', 'Dung'),
(381, 72, 'last_name', 'Võ Quang Ngọc'),
(382, 72, 'description', ''),
(383, 72, 'rich_editing', 'true'),
(384, 72, 'comment_shortcuts', 'false'),
(385, 72, 'admin_color', 'fresh'),
(386, 72, 'use_ssl', '0'),
(387, 72, 'show_admin_bar_front', 'true'),
(388, 72, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(389, 72, 'wp_user_level', '0'),
(390, 72, 'dismissed_wp_pointers', ''),
(391, 72, 'sb_we_last_sent', '1458184110'),
(392, 73, 'nickname', 'nvcuong'),
(393, 73, 'first_name', ''),
(394, 73, 'last_name', ''),
(395, 73, 'description', ''),
(396, 73, 'rich_editing', 'true'),
(397, 73, 'comment_shortcuts', 'false'),
(398, 73, 'admin_color', 'fresh'),
(399, 73, 'use_ssl', '0'),
(400, 73, 'show_admin_bar_front', 'true'),
(401, 73, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(402, 73, 'wp_user_level', '0'),
(403, 73, 'default_password_nag', '1'),
(404, 73, 'sb_we_last_sent', '1458184136'),
(405, 74, 'nickname', 'hktu@hcmiu.edu.vn'),
(406, 74, 'first_name', 'Tú'),
(407, 74, 'last_name', 'Huỳnh Khả'),
(408, 74, 'description', ''),
(409, 74, 'rich_editing', 'true'),
(410, 74, 'comment_shortcuts', 'false'),
(411, 74, 'admin_color', 'fresh'),
(412, 74, 'use_ssl', '0'),
(413, 74, 'show_admin_bar_front', 'true'),
(414, 74, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(415, 74, 'wp_user_level', '0'),
(416, 74, 'dismissed_wp_pointers', ''),
(417, 74, 'sb_we_last_sent', '1458184146'),
(418, 75, 'nickname', 'Nhankdv'),
(419, 75, 'first_name', ''),
(420, 75, 'last_name', ''),
(421, 75, 'description', ''),
(422, 75, 'rich_editing', 'true'),
(423, 75, 'comment_shortcuts', 'false'),
(424, 75, 'admin_color', 'fresh'),
(425, 75, 'use_ssl', '0'),
(426, 75, 'show_admin_bar_front', 'true'),
(427, 75, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(428, 75, 'wp_user_level', '0'),
(429, 75, 'default_password_nag', '1'),
(430, 75, 'sb_we_last_sent', '1458184196'),
(432, 76, 'nickname', 'phuht@uel.edu.vn'),
(433, 76, 'first_name', 'Phú'),
(434, 76, 'last_name', 'Hoàng Thọ'),
(435, 76, 'description', ''),
(436, 76, 'rich_editing', 'true'),
(437, 76, 'comment_shortcuts', 'false'),
(438, 76, 'admin_color', 'fresh'),
(439, 76, 'use_ssl', '0'),
(440, 76, 'show_admin_bar_front', 'true'),
(441, 76, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(442, 76, 'wp_user_level', '0'),
(443, 76, 'dismissed_wp_pointers', ''),
(444, 76, 'sb_we_last_sent', '1458184421'),
(445, 77, 'nickname', 'vuonglapbinh@gmail.com'),
(446, 77, 'first_name', 'Bình'),
(447, 77, 'last_name', 'Vương Lập'),
(448, 77, 'description', ''),
(449, 77, 'rich_editing', 'true'),
(450, 77, 'comment_shortcuts', 'false'),
(451, 77, 'admin_color', 'fresh'),
(452, 77, 'use_ssl', '0'),
(453, 77, 'show_admin_bar_front', 'true'),
(454, 77, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(455, 77, 'wp_user_level', '0'),
(456, 77, 'dismissed_wp_pointers', ''),
(457, 77, 'sb_we_last_sent', '1458184456'),
(458, 78, 'nickname', 'sondt@hcmute.edu.vn'),
(459, 78, 'first_name', 'Sơn'),
(460, 78, 'last_name', 'Đặng Trường'),
(461, 78, 'description', ''),
(462, 78, 'rich_editing', 'true'),
(463, 78, 'comment_shortcuts', 'false'),
(464, 78, 'admin_color', 'fresh'),
(465, 78, 'use_ssl', '0'),
(466, 78, 'show_admin_bar_front', 'true'),
(467, 78, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(468, 78, 'wp_user_level', '0'),
(469, 78, 'dismissed_wp_pointers', ''),
(470, 78, 'sb_we_last_sent', '1458184513'),
(471, 79, 'nickname', 'nqvu@dthu.edu.vn'),
(472, 79, 'first_name', 'Vũ'),
(473, 79, 'last_name', 'Nguyễn Quốc'),
(474, 79, 'description', ''),
(475, 79, 'rich_editing', 'true'),
(476, 79, 'comment_shortcuts', 'false'),
(477, 79, 'admin_color', 'fresh'),
(478, 79, 'use_ssl', '0'),
(479, 79, 'show_admin_bar_front', 'true'),
(480, 79, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(481, 79, 'wp_user_level', '0'),
(482, 79, 'dismissed_wp_pointers', ''),
(483, 80, 'nickname', 'doctorchinh@yahoo.com'),
(484, 80, 'first_name', 'Chinh'),
(485, 80, 'last_name', 'Bùi Lê Vĩ'),
(486, 80, 'description', ''),
(487, 80, 'rich_editing', 'true'),
(488, 80, 'comment_shortcuts', 'false'),
(489, 80, 'admin_color', 'fresh'),
(490, 80, 'use_ssl', '0'),
(491, 80, 'show_admin_bar_front', 'true'),
(492, 80, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(493, 80, 'wp_user_level', '0'),
(494, 80, 'dismissed_wp_pointers', ''),
(495, 81, 'nickname', 'hongtt.vnuhcm@gmail.com'),
(496, 81, 'first_name', 'Hồng'),
(497, 81, 'last_name', 'Trần Thị'),
(498, 81, 'description', ''),
(499, 81, 'rich_editing', 'true'),
(500, 81, 'comment_shortcuts', 'false'),
(501, 81, 'admin_color', 'fresh'),
(502, 81, 'use_ssl', '0'),
(503, 81, 'show_admin_bar_front', 'true'),
(504, 81, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(505, 81, 'wp_user_level', '0'),
(506, 81, 'dismissed_wp_pointers', ''),
(507, 82, 'nickname', '0dongsongtroi0@gmail.com'),
(508, 82, 'first_name', 'Minh'),
(509, 82, 'last_name', 'Hà Thị Phương'),
(510, 82, 'description', ''),
(511, 82, 'rich_editing', 'true'),
(512, 82, 'comment_shortcuts', 'false'),
(513, 82, 'admin_color', 'fresh'),
(514, 82, 'use_ssl', '0'),
(515, 82, 'show_admin_bar_front', 'true'),
(516, 82, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(517, 82, 'wp_user_level', '0'),
(518, 82, 'dismissed_wp_pointers', ''),
(519, 83, 'nickname', 'ndnghiep@hcmus.edu.vn'),
(520, 83, 'first_name', 'Nghiệp'),
(521, 83, 'last_name', 'Ngô Đại'),
(522, 83, 'description', ''),
(523, 83, 'rich_editing', 'true'),
(524, 83, 'comment_shortcuts', 'false'),
(525, 83, 'admin_color', 'fresh'),
(526, 83, 'use_ssl', '0'),
(527, 83, 'show_admin_bar_front', 'true'),
(528, 83, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(529, 83, 'wp_user_level', '0'),
(530, 83, 'dismissed_wp_pointers', ''),
(531, 84, 'nickname', 'nhs1601@yahoo.com'),
(532, 84, 'first_name', 'Sinh'),
(533, 84, 'last_name', 'Nguyễn Hồng'),
(534, 84, 'description', ''),
(535, 84, 'rich_editing', 'true'),
(536, 84, 'comment_shortcuts', 'false'),
(537, 84, 'admin_color', 'fresh'),
(538, 84, 'use_ssl', '0'),
(539, 84, 'show_admin_bar_front', 'true'),
(540, 84, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(541, 84, 'wp_user_level', '0'),
(542, 84, 'dismissed_wp_pointers', ''),
(543, 85, 'nickname', 'ailinh@vnuhcm.edu.vn'),
(544, 85, 'first_name', 'Linh'),
(545, 85, 'last_name', 'Đinh Ái'),
(546, 85, 'description', ''),
(547, 85, 'rich_editing', 'true'),
(548, 85, 'comment_shortcuts', 'false'),
(549, 85, 'admin_color', 'fresh'),
(550, 85, 'use_ssl', '0'),
(551, 85, 'show_admin_bar_front', 'true'),
(552, 85, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(553, 85, 'wp_user_level', '0'),
(554, 85, 'dismissed_wp_pointers', ''),
(555, 86, 'nickname', 'dplam@ctu.edu.vn'),
(556, 86, 'first_name', 'Lâm'),
(557, 86, 'last_name', 'Đào Phong'),
(558, 86, 'description', ''),
(559, 86, 'rich_editing', 'true'),
(560, 86, 'comment_shortcuts', 'false'),
(561, 86, 'admin_color', 'fresh'),
(562, 86, 'use_ssl', '0'),
(563, 86, 'show_admin_bar_front', 'true'),
(564, 86, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(565, 86, 'wp_user_level', '0'),
(566, 86, 'dismissed_wp_pointers', ''),
(567, 87, 'nickname', 'trongthe@hcmuaf.edu.vn'),
(568, 87, 'first_name', 'Thể'),
(569, 87, 'last_name', 'Nguyễn Trọng'),
(570, 87, 'description', ''),
(571, 87, 'rich_editing', 'true'),
(572, 87, 'comment_shortcuts', 'false'),
(573, 87, 'admin_color', 'fresh'),
(574, 87, 'use_ssl', '0'),
(575, 87, 'show_admin_bar_front', 'true'),
(576, 87, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(577, 87, 'wp_user_level', '0'),
(578, 87, 'dismissed_wp_pointers', ''),
(579, 88, 'nickname', 'thuyamsterdam@gmail.com'),
(580, 88, 'first_name', 'Thủy'),
(581, 88, 'last_name', 'Nguyễn Thanh'),
(582, 88, 'description', ''),
(583, 88, 'rich_editing', 'true'),
(584, 88, 'comment_shortcuts', 'false'),
(585, 88, 'admin_color', 'fresh'),
(586, 88, 'use_ssl', '0'),
(587, 88, 'show_admin_bar_front', 'true'),
(588, 88, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(589, 88, 'wp_user_level', '0'),
(590, 88, 'dismissed_wp_pointers', ''),
(591, 89, 'nickname', 'dan1962@gmail.com'),
(592, 89, 'first_name', 'Dần'),
(593, 89, 'last_name', 'Nguyễn Văn'),
(594, 89, 'description', ''),
(595, 89, 'rich_editing', 'true'),
(596, 89, 'comment_shortcuts', 'false'),
(597, 89, 'admin_color', 'fresh'),
(598, 89, 'use_ssl', '0'),
(599, 89, 'show_admin_bar_front', 'true'),
(600, 89, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(601, 89, 'wp_user_level', '0'),
(602, 89, 'dismissed_wp_pointers', ''),
(603, 90, 'nickname', 'thuyen.ngo@hcmute.edu.vn'),
(604, 90, 'first_name', 'Thuyên'),
(605, 90, 'last_name', 'Ngô Văn'),
(606, 90, 'description', ''),
(607, 90, 'rich_editing', 'true'),
(608, 90, 'comment_shortcuts', 'false'),
(609, 90, 'admin_color', 'fresh'),
(610, 90, 'use_ssl', '0'),
(611, 90, 'show_admin_bar_front', 'true'),
(612, 90, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(613, 90, 'wp_user_level', '0'),
(614, 90, 'dismissed_wp_pointers', ''),
(615, 91, 'nickname', 'tho79bd@yahoo.com'),
(616, 91, 'first_name', 'Thọ'),
(617, 91, 'last_name', 'Lê Hà Phúc'),
(618, 91, 'description', ''),
(619, 91, 'rich_editing', 'true'),
(620, 91, 'comment_shortcuts', 'false'),
(621, 91, 'admin_color', 'fresh'),
(622, 91, 'use_ssl', '0'),
(623, 91, 'show_admin_bar_front', 'true'),
(624, 91, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(625, 91, 'wp_user_level', '0'),
(626, 91, 'dismissed_wp_pointers', ''),
(627, 92, 'nickname', 'd.ho@huflit.edu.vn'),
(628, 92, 'first_name', 'Dung'),
(629, 92, 'last_name', 'Hồ Thùy'),
(630, 92, 'description', ''),
(631, 92, 'rich_editing', 'true'),
(632, 92, 'comment_shortcuts', 'false'),
(633, 92, 'admin_color', 'fresh'),
(634, 92, 'use_ssl', '0'),
(635, 92, 'show_admin_bar_front', 'true'),
(636, 92, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(637, 92, 'wp_user_level', '0'),
(638, 92, 'dismissed_wp_pointers', ''),
(639, 93, 'nickname', 'kimnguyen@ier.edu.vn'),
(640, 93, 'first_name', 'Dung'),
(641, 93, 'last_name', 'Nguyễn Kim'),
(642, 93, 'description', ''),
(643, 93, 'rich_editing', 'true'),
(644, 93, 'comment_shortcuts', 'false'),
(645, 93, 'admin_color', 'fresh'),
(646, 93, 'use_ssl', '0'),
(647, 93, 'show_admin_bar_front', 'true'),
(648, 93, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(649, 93, 'wp_user_level', '0'),
(650, 93, 'dismissed_wp_pointers', ''),
(651, 94, 'nickname', 'lnqlam@hcmut.edu.vn'),
(652, 94, 'first_name', 'Lam'),
(653, 94, 'last_name', 'Lê Ngọc Quỳnh'),
(654, 94, 'description', ''),
(655, 94, 'rich_editing', 'true'),
(656, 94, 'comment_shortcuts', 'false'),
(657, 94, 'admin_color', 'fresh'),
(658, 94, 'use_ssl', '0'),
(659, 94, 'show_admin_bar_front', 'true'),
(660, 94, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(661, 94, 'wp_user_level', '0'),
(662, 94, 'dismissed_wp_pointers', ''),
(663, 95, 'nickname', 'lehoangdungef@gmail.com'),
(664, 95, 'first_name', 'Dũng'),
(665, 95, 'last_name', 'Lê Hoàng'),
(666, 95, 'description', ''),
(667, 95, 'rich_editing', 'true'),
(668, 95, 'comment_shortcuts', 'false'),
(669, 95, 'admin_color', 'fresh'),
(670, 95, 'use_ssl', '0'),
(671, 95, 'show_admin_bar_front', 'true'),
(672, 95, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(673, 95, 'wp_user_level', '0'),
(674, 95, 'dismissed_wp_pointers', ''),
(675, 96, 'nickname', 'htngaktcn@gmail.com'),
(676, 96, 'first_name', 'Nga'),
(677, 96, 'last_name', 'Huỳnh Tuyết'),
(678, 96, 'description', ''),
(679, 96, 'rich_editing', 'true'),
(680, 96, 'comment_shortcuts', 'false'),
(681, 96, 'admin_color', 'fresh'),
(682, 96, 'use_ssl', '0'),
(683, 96, 'show_admin_bar_front', 'true'),
(684, 96, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(685, 96, 'wp_user_level', '0'),
(686, 96, 'dismissed_wp_pointers', ''),
(687, 97, 'nickname', 'hvtuan@hcmus.edu.vn'),
(688, 97, 'first_name', 'Tuấn'),
(689, 97, 'last_name', 'Huỳnh Văn'),
(690, 97, 'description', ''),
(691, 97, 'rich_editing', 'true'),
(692, 97, 'comment_shortcuts', 'false'),
(693, 97, 'admin_color', 'fresh'),
(694, 97, 'use_ssl', '0'),
(695, 97, 'show_admin_bar_front', 'true'),
(696, 97, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(697, 97, 'wp_user_level', '0'),
(698, 97, 'dismissed_wp_pointers', ''),
(699, 98, 'nickname', 'nguyet.hoangthithu@stu.edu.vn'),
(700, 98, 'first_name', 'Nguyệt'),
(701, 98, 'last_name', 'Hoàng Thị Thu'),
(702, 98, 'description', ''),
(703, 98, 'rich_editing', 'true'),
(704, 98, 'comment_shortcuts', 'false'),
(705, 98, 'admin_color', 'fresh'),
(706, 98, 'use_ssl', '0'),
(707, 98, 'show_admin_bar_front', 'true'),
(708, 98, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(709, 98, 'wp_user_level', '0'),
(710, 98, 'dismissed_wp_pointers', ''),
(711, 99, 'nickname', 'tam.dinhthi@stu.edu.vn'),
(712, 99, 'first_name', 'Tâm'),
(713, 99, 'last_name', 'Đinh Thị'),
(714, 99, 'description', ''),
(715, 99, 'rich_editing', 'true'),
(716, 99, 'comment_shortcuts', 'false'),
(717, 99, 'admin_color', 'fresh'),
(718, 99, 'use_ssl', '0'),
(719, 99, 'show_admin_bar_front', 'true'),
(720, 99, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(721, 99, 'wp_user_level', '0'),
(722, 99, 'dismissed_wp_pointers', ''),
(723, 100, 'nickname', 'nguyenkhanhlinhqnu@gmail.com'),
(724, 100, 'first_name', 'Linh'),
(725, 100, 'last_name', 'Nguyễn Thị Khánh'),
(726, 100, 'description', ''),
(727, 100, 'rich_editing', 'true'),
(728, 100, 'comment_shortcuts', 'false'),
(729, 100, 'admin_color', 'fresh'),
(730, 100, 'use_ssl', '0'),
(731, 100, 'show_admin_bar_front', 'true'),
(732, 100, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(733, 100, 'wp_user_level', '0'),
(734, 100, 'dismissed_wp_pointers', ''),
(735, 101, 'nickname', 'tienphd@yahoo.com'),
(736, 101, 'first_name', 'Tiên'),
(737, 101, 'last_name', 'Phạm Đào'),
(738, 101, 'description', ''),
(739, 101, 'rich_editing', 'true'),
(740, 101, 'comment_shortcuts', 'false'),
(741, 101, 'admin_color', 'fresh'),
(742, 101, 'use_ssl', '0'),
(743, 101, 'show_admin_bar_front', 'true'),
(744, 101, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(745, 101, 'wp_user_level', '0'),
(746, 101, 'dismissed_wp_pointers', ''),
(747, 102, 'nickname', 'huongtrieu61@yahoo.com'),
(748, 102, 'first_name', 'Triêu'),
(749, 102, 'last_name', 'Phạm Thúy Hương'),
(750, 102, 'description', ''),
(751, 102, 'rich_editing', 'true'),
(752, 102, 'comment_shortcuts', 'false'),
(753, 102, 'admin_color', 'fresh'),
(754, 102, 'use_ssl', '0'),
(755, 102, 'show_admin_bar_front', 'true'),
(756, 102, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(757, 102, 'wp_user_level', '0'),
(758, 102, 'dismissed_wp_pointers', ''),
(759, 103, 'nickname', 'ntdz.nguyen@gmail.com'),
(760, 103, 'first_name', 'Dũng'),
(761, 103, 'last_name', 'Nguyễn Tiến'),
(762, 103, 'description', ''),
(763, 103, 'rich_editing', 'true'),
(764, 103, 'comment_shortcuts', 'false'),
(765, 103, 'admin_color', 'fresh'),
(766, 103, 'use_ssl', '0'),
(767, 103, 'show_admin_bar_front', 'true'),
(768, 103, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(769, 103, 'wp_user_level', '0'),
(770, 103, 'dismissed_wp_pointers', ''),
(771, 104, 'nickname', 'green4rest.vn@gmail.com'),
(772, 104, 'first_name', 'Dung'),
(773, 104, 'last_name', 'Đỗ Thị'),
(774, 104, 'description', ''),
(775, 104, 'rich_editing', 'true'),
(776, 104, 'comment_shortcuts', 'false'),
(777, 104, 'admin_color', 'fresh'),
(778, 104, 'use_ssl', '0'),
(779, 104, 'show_admin_bar_front', 'true'),
(780, 104, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(781, 104, 'wp_user_level', '0'),
(782, 104, 'dismissed_wp_pointers', ''),
(784, 105, 'nickname', 'dungdo@mail.tdc.edu.vn'),
(785, 105, 'first_name', 'Dung'),
(786, 105, 'last_name', 'Đỗ Thị'),
(787, 105, 'description', ''),
(788, 105, 'rich_editing', 'true'),
(789, 105, 'comment_shortcuts', 'false'),
(790, 105, 'admin_color', 'fresh'),
(791, 105, 'use_ssl', '0'),
(792, 105, 'show_admin_bar_front', 'true'),
(793, 105, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(794, 105, 'wp_user_level', '0'),
(795, 105, 'dismissed_wp_pointers', ''),
(796, 106, 'nickname', 'nguyenducthanh71@gmail.com'),
(797, 106, 'first_name', 'Thành'),
(798, 106, 'last_name', 'Nguyễn Đức'),
(799, 106, 'description', ''),
(800, 106, 'rich_editing', 'true'),
(801, 106, 'comment_shortcuts', 'false'),
(802, 106, 'admin_color', 'fresh'),
(803, 106, 'use_ssl', '0'),
(804, 106, 'show_admin_bar_front', 'true'),
(805, 106, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(806, 106, 'wp_user_level', '0'),
(807, 106, 'dismissed_wp_pointers', ''),
(808, 107, 'nickname', 'vuutrang@hcmut.edu.vn'),
(809, 107, 'first_name', 'Trang'),
(810, 107, 'last_name', 'Vưu Thị Thùy'),
(811, 107, 'description', ''),
(812, 107, 'rich_editing', 'true'),
(813, 107, 'comment_shortcuts', 'false'),
(814, 107, 'admin_color', 'fresh'),
(815, 107, 'use_ssl', '0'),
(816, 107, 'show_admin_bar_front', 'true'),
(817, 107, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(818, 107, 'wp_user_level', '0'),
(819, 107, 'dismissed_wp_pointers', ''),
(820, 108, 'nickname', 'thuannd@uit.edu.vn'),
(821, 108, 'first_name', 'Thuân'),
(822, 108, 'last_name', 'Nguyễn Đình'),
(823, 108, 'description', ''),
(824, 108, 'rich_editing', 'true'),
(825, 108, 'comment_shortcuts', 'false'),
(826, 108, 'admin_color', 'fresh'),
(827, 108, 'use_ssl', '0'),
(828, 108, 'show_admin_bar_front', 'true'),
(829, 108, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(830, 108, 'wp_user_level', '0'),
(831, 108, 'dismissed_wp_pointers', ''),
(832, 64, 'session_tokens', 'a:1:{s:64:"359443ab2773b265b1ce211f3e9a1390e5ecfa60415e30cd1cf11b1896af8781";a:4:{s:10:"expiration";i:1458358102;s:2:"ip";s:14:"113.163.159.19";s:2:"ua";s:125:"Mozilla/5.0 (iPad; CPU OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4";s:5:"login";i:1458185302;}}'),
(833, 109, 'nickname', 'haidangbui@hcmussh.edu.vn'),
(834, 109, 'first_name', 'Đăng'),
(835, 109, 'last_name', 'Bùi Hải'),
(836, 109, 'description', ''),
(837, 109, 'rich_editing', 'true'),
(838, 109, 'comment_shortcuts', 'false'),
(839, 109, 'admin_color', 'fresh'),
(840, 109, 'use_ssl', '0'),
(841, 109, 'show_admin_bar_front', 'true'),
(842, 109, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(843, 109, 'wp_user_level', '0'),
(844, 109, 'dismissed_wp_pointers', ''),
(845, 110, 'nickname', 'thanhnhan@huflit.edu.vn'),
(846, 110, 'first_name', 'Nhàn'),
(847, 110, 'last_name', 'Trần Thanh'),
(848, 110, 'description', ''),
(849, 110, 'rich_editing', 'true'),
(850, 110, 'comment_shortcuts', 'false'),
(851, 110, 'admin_color', 'fresh'),
(852, 110, 'use_ssl', '0'),
(853, 110, 'show_admin_bar_front', 'true'),
(854, 110, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(855, 110, 'wp_user_level', '0'),
(856, 110, 'dismissed_wp_pointers', ''),
(857, 111, 'nickname', 'lenhudzi@hotec.edu.vn'),
(858, 111, 'first_name', 'Dzi'),
(859, 111, 'last_name', 'Lê Như'),
(860, 111, 'description', ''),
(861, 111, 'rich_editing', 'true'),
(862, 111, 'comment_shortcuts', 'false'),
(863, 111, 'admin_color', 'fresh'),
(864, 111, 'use_ssl', '0'),
(865, 111, 'show_admin_bar_front', 'true'),
(866, 111, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(867, 111, 'wp_user_level', '0'),
(868, 111, 'dismissed_wp_pointers', ''),
(869, 112, 'nickname', 'luukhanhlinh.ufm@gmail.com'),
(870, 112, 'first_name', 'Linh'),
(871, 112, 'last_name', 'Lưu Khánh'),
(872, 112, 'description', ''),
(873, 112, 'rich_editing', 'true'),
(874, 112, 'comment_shortcuts', 'false'),
(875, 112, 'admin_color', 'fresh'),
(876, 112, 'use_ssl', '0'),
(877, 112, 'show_admin_bar_front', 'true'),
(878, 112, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(879, 112, 'wp_user_level', '0'),
(880, 112, 'dismissed_wp_pointers', ''),
(881, 113, 'nickname', 'nvqlinh@hcmunre.edu.vn'),
(882, 113, 'first_name', 'Linh'),
(883, 113, 'last_name', 'Nguyễn Vũ Quế'),
(884, 113, 'description', ''),
(885, 113, 'rich_editing', 'true'),
(886, 113, 'comment_shortcuts', 'false'),
(887, 113, 'admin_color', 'fresh'),
(888, 113, 'use_ssl', '0'),
(889, 113, 'show_admin_bar_front', 'true'),
(890, 113, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(891, 113, 'wp_user_level', '0'),
(892, 113, 'dismissed_wp_pointers', ''),
(893, 114, 'nickname', 'Hautm'),
(894, 114, 'first_name', ''),
(895, 114, 'last_name', ''),
(896, 114, 'description', ''),
(897, 114, 'rich_editing', 'true'),
(898, 114, 'comment_shortcuts', 'false'),
(899, 114, 'admin_color', 'light'),
(900, 114, 'use_ssl', '0'),
(901, 114, 'show_admin_bar_front', 'true'),
(902, 114, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(903, 114, 'wp_user_level', '0'),
(904, 114, 'default_password_nag', '1'),
(905, 114, 'session_tokens', 'a:2:{s:64:"8f98fbe50fa325d95ff7b67a1eb1ce16e3cc877d7fab6605529eae3bbc727ece";a:4:{s:10:"expiration";i:1459645663;s:2:"ip";s:14:"14.187.202.101";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1458436063;}s:64:"6a729a01b17285bbc5a0a1ca446d89b0869bb33248674c178a5b4dd6c829b03d";a:4:{s:10:"expiration";i:1460015751;s:2:"ip";s:12:"118.69.54.86";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1458806151;}}'),
(906, 115, 'nickname', 'ThanhHung'),
(907, 115, 'first_name', ''),
(908, 115, 'last_name', ''),
(909, 115, 'description', ''),
(910, 115, 'rich_editing', 'true'),
(911, 115, 'comment_shortcuts', 'false'),
(912, 115, 'admin_color', 'fresh'),
(913, 115, 'use_ssl', '0'),
(914, 115, 'show_admin_bar_front', 'true'),
(915, 115, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(916, 115, 'wp_user_level', '0'),
(917, 115, 'default_password_nag', '1'),
(918, 116, 'nickname', 'xhuyen@hcmut.edu.vn'),
(919, 116, 'first_name', ''),
(920, 116, 'last_name', ''),
(921, 116, 'description', ''),
(922, 116, 'rich_editing', 'true'),
(923, 116, 'comment_shortcuts', 'false'),
(924, 116, 'admin_color', 'fresh'),
(925, 116, 'use_ssl', '0'),
(926, 116, 'show_admin_bar_front', 'true'),
(927, 116, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(928, 116, 'wp_user_level', '0'),
(929, 116, 'default_password_nag', ''),
(930, 117, 'nickname', 'NGUYENVANLAN'),
(931, 117, 'first_name', ''),
(932, 117, 'last_name', ''),
(933, 117, 'description', ''),
(934, 117, 'rich_editing', 'true'),
(935, 117, 'comment_shortcuts', 'false'),
(936, 117, 'admin_color', 'fresh'),
(937, 117, 'use_ssl', '0'),
(938, 117, 'show_admin_bar_front', 'true'),
(939, 117, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(940, 117, 'wp_user_level', '0'),
(941, 117, 'default_password_nag', '1'),
(942, 115, 'session_tokens', 'a:1:{s:64:"7645aae806639a2c490caa9b30df53de44f788014a3bc63b0667e3bb601b33af";a:4:{s:10:"expiration";i:1458358565;s:2:"ip";s:13:"203.205.34.36";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1458185765;}}'),
(943, 4, 'session_tokens', 'a:1:{s:64:"73357e1367957be6e3ba303357d74f6277dcd07a5f9e815b78a1008be9326a27";a:4:{s:10:"expiration";i:1458358565;s:2:"ip";s:14:"113.163.159.19";s:2:"ua";s:125:"Mozilla/5.0 (iPad; CPU OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/600.1.4";s:5:"login";i:1458185765;}}'),
(945, 118, 'nickname', 'KimTuyenCao'),
(946, 118, 'first_name', ''),
(947, 118, 'last_name', ''),
(948, 118, 'description', ''),
(949, 118, 'rich_editing', 'true'),
(950, 118, 'comment_shortcuts', 'false'),
(951, 118, 'admin_color', 'fresh'),
(952, 118, 'use_ssl', '0'),
(953, 118, 'show_admin_bar_front', 'true'),
(954, 118, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(955, 118, 'wp_user_level', '0'),
(956, 118, 'default_password_nag', '1'),
(957, 118, 'session_tokens', 'a:1:{s:64:"0d882fc6deb9050379f40e2f86ea42131016f5b0007334fc5a3f191c2b49cee2";a:4:{s:10:"expiration";i:1458358604;s:2:"ip";s:12:"14.161.6.190";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:38.0) Gecko/20100101 Firefox/38.0";s:5:"login";i:1458185804;}}'),
(960, 119, 'nickname', 'hienttm@uit.edu.vn'),
(961, 119, 'first_name', ''),
(962, 119, 'last_name', ''),
(963, 119, 'description', ''),
(964, 119, 'rich_editing', 'true'),
(965, 119, 'comment_shortcuts', 'false'),
(966, 119, 'admin_color', 'fresh'),
(967, 119, 'use_ssl', '0'),
(968, 119, 'show_admin_bar_front', 'true'),
(969, 119, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(970, 119, 'wp_user_level', '0'),
(971, 119, 'default_password_nag', ''),
(973, 120, 'nickname', 'ongvannam'),
(974, 120, 'first_name', ''),
(975, 120, 'last_name', ''),
(976, 120, 'description', ''),
(977, 120, 'rich_editing', 'true'),
(978, 120, 'comment_shortcuts', 'false'),
(979, 120, 'admin_color', 'fresh'),
(980, 120, 'use_ssl', '0'),
(981, 120, 'show_admin_bar_front', 'true'),
(982, 120, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(983, 120, 'wp_user_level', '0'),
(984, 120, 'default_password_nag', '1'),
(986, 121, 'nickname', 'phamhuong.mu@gmail.com'),
(987, 121, 'first_name', ''),
(988, 121, 'last_name', ''),
(989, 121, 'description', ''),
(990, 121, 'rich_editing', 'true'),
(991, 121, 'comment_shortcuts', 'false'),
(992, 121, 'admin_color', 'fresh'),
(993, 121, 'use_ssl', '0'),
(994, 121, 'show_admin_bar_front', 'true'),
(995, 121, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(996, 121, 'wp_user_level', '0'),
(997, 121, 'default_password_nag', '1'),
(999, 122, 'nickname', 'DuongDuong'),
(1000, 122, 'first_name', ''),
(1001, 122, 'last_name', ''),
(1002, 122, 'description', ''),
(1003, 122, 'rich_editing', 'true'),
(1004, 122, 'comment_shortcuts', 'false'),
(1005, 122, 'admin_color', 'fresh'),
(1006, 122, 'use_ssl', '0'),
(1007, 122, 'show_admin_bar_front', 'true'),
(1008, 122, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1009, 122, 'wp_user_level', '0'),
(1010, 122, 'default_password_nag', '1'),
(1012, 123, 'nickname', 'mtvan'),
(1013, 123, 'first_name', ''),
(1014, 123, 'last_name', ''),
(1015, 123, 'description', ''),
(1016, 123, 'rich_editing', 'true'),
(1017, 123, 'comment_shortcuts', 'false'),
(1018, 123, 'admin_color', 'fresh'),
(1019, 123, 'use_ssl', '0'),
(1020, 123, 'show_admin_bar_front', 'true'),
(1021, 123, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1022, 123, 'wp_user_level', '0'),
(1023, 123, 'default_password_nag', '1'),
(1025, 124, 'nickname', 'trinhminhgiang'),
(1026, 124, 'first_name', ''),
(1027, 124, 'last_name', ''),
(1028, 124, 'description', ''),
(1029, 124, 'rich_editing', 'true'),
(1030, 124, 'comment_shortcuts', 'false'),
(1031, 124, 'admin_color', 'fresh'),
(1032, 124, 'use_ssl', '0'),
(1033, 124, 'show_admin_bar_front', 'true'),
(1034, 124, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1035, 124, 'wp_user_level', '0'),
(1036, 124, 'default_password_nag', '1'),
(1038, 125, 'nickname', 'Kimanhtran'),
(1039, 125, 'first_name', ''),
(1040, 125, 'last_name', ''),
(1041, 125, 'description', ''),
(1042, 125, 'rich_editing', 'true'),
(1043, 125, 'comment_shortcuts', 'false'),
(1044, 125, 'admin_color', 'fresh'),
(1045, 125, 'use_ssl', '0'),
(1046, 125, 'show_admin_bar_front', 'true'),
(1047, 125, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1048, 125, 'wp_user_level', '0'),
(1049, 125, 'default_password_nag', '1'),
(1051, 126, 'nickname', 'nguyetuankiet'),
(1052, 126, 'first_name', ''),
(1053, 126, 'last_name', ''),
(1054, 126, 'description', ''),
(1055, 126, 'rich_editing', 'true'),
(1056, 126, 'comment_shortcuts', 'false'),
(1057, 126, 'admin_color', 'fresh'),
(1058, 126, 'use_ssl', '0'),
(1059, 126, 'show_admin_bar_front', 'true'),
(1060, 126, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1061, 126, 'wp_user_level', '0'),
(1062, 126, 'default_password_nag', ''),
(1063, 127, 'nickname', 'Chaunguyen'),
(1064, 127, 'first_name', ''),
(1065, 127, 'last_name', ''),
(1066, 127, 'description', ''),
(1067, 127, 'rich_editing', 'true'),
(1068, 127, 'comment_shortcuts', 'false'),
(1069, 127, 'admin_color', 'fresh'),
(1070, 127, 'use_ssl', '0'),
(1071, 127, 'show_admin_bar_front', 'true'),
(1072, 127, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1073, 127, 'wp_user_level', '0'),
(1074, 127, 'default_password_nag', '1'),
(1075, 127, 'session_tokens', 'a:1:{s:64:"6835eb6179a80c949639b0ec884c7ddca053dbd5a9909b04b42990ab1d70de37";a:4:{s:10:"expiration";i:1458373015;s:2:"ip";s:12:"103.4.125.25";s:2:"ua";s:68:"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko";s:5:"login";i:1458200215;}}'),
(1076, 128, 'nickname', 'ngocquang.info@gmail.com'),
(1077, 128, 'first_name', ''),
(1078, 128, 'last_name', ''),
(1079, 128, 'description', ''),
(1080, 128, 'rich_editing', 'true'),
(1081, 128, 'comment_shortcuts', 'false'),
(1082, 128, 'admin_color', 'fresh'),
(1083, 128, 'use_ssl', '0'),
(1084, 128, 'show_admin_bar_front', 'true'),
(1085, 128, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1086, 128, 'wp_user_level', '0'),
(1087, 128, 'default_password_nag', '1'),
(1089, 128, 'wp_user-settings', 'mfold=o'),
(1090, 128, 'wp_user-settings-time', '1463715868'),
(1091, 129, 'nickname', 'nhdkhang'),
(1092, 129, 'first_name', 'Khang'),
(1093, 129, 'last_name', 'Nguyễn Hứa Duy'),
(1094, 129, 'description', ''),
(1095, 129, 'rich_editing', 'true'),
(1096, 129, 'comment_shortcuts', 'false'),
(1097, 129, 'admin_color', 'fresh'),
(1098, 129, 'use_ssl', '0'),
(1099, 129, 'show_admin_bar_front', 'true'),
(1100, 129, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1101, 129, 'wp_user_level', '0'),
(1102, 129, 'default_password_nag', '1'),
(1104, 130, 'nickname', 'ndmongha@hcmussh.edu.vn'),
(1105, 130, 'first_name', ''),
(1106, 130, 'last_name', ''),
(1107, 130, 'description', ''),
(1108, 130, 'rich_editing', 'true'),
(1109, 130, 'comment_shortcuts', 'false'),
(1110, 130, 'admin_color', 'fresh'),
(1111, 130, 'use_ssl', '0'),
(1112, 130, 'show_admin_bar_front', 'true'),
(1113, 130, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1114, 130, 'wp_user_level', '0'),
(1115, 130, 'default_password_nag', '1'),
(1117, 131, 'nickname', 'nguyentronghue'),
(1118, 131, 'first_name', ''),
(1119, 131, 'last_name', ''),
(1120, 131, 'description', ''),
(1121, 131, 'rich_editing', 'true'),
(1122, 131, 'comment_shortcuts', 'false'),
(1123, 131, 'admin_color', 'fresh'),
(1124, 131, 'use_ssl', '0'),
(1125, 131, 'show_admin_bar_front', 'true'),
(1126, 131, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1127, 131, 'wp_user_level', '0'),
(1128, 131, 'default_password_nag', '1'),
(1129, 131, 'session_tokens', 'a:1:{s:64:"795a7cee11686c8ff53c8c2f1d4e65cd78f16c5c50fb5026b4476363a9db3fa3";a:4:{s:10:"expiration";i:1459431639;s:2:"ip";s:13:"66.249.82.225";s:2:"ua";s:141:"Mozilla/5.0 (Linux; Android 5.0.2; Redmi Note 3 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.91 Mobile Safari/537.36";s:5:"login";i:1458222039;}}'),
(1130, 10, 'session_tokens', 'a:2:{s:64:"1e0404ed886b79cc042d6552140174e6e943d3e04f9ed6f62a278459bfbad67c";a:4:{s:10:"expiration";i:1458434158;s:2:"ip";s:14:"115.78.134.153";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1458261358;}s:64:"e66ebb9d5aee6a27636607eeb843d832c5f01d5cd5276ba14cd1af7138efd55e";a:4:{s:10:"expiration";i:1458447047;s:2:"ip";s:12:"101.99.31.38";s:2:"ua";s:134:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/54.2.131 Chrome/48.2.2564.131 Safari/537.36";s:5:"login";i:1458274247;}}'),
(1131, 132, 'nickname', 'nguyenthisau58@gmail.com'),
(1132, 132, 'first_name', ''),
(1133, 132, 'last_name', ''),
(1134, 132, 'description', ''),
(1135, 132, 'rich_editing', 'true'),
(1136, 132, 'comment_shortcuts', 'false'),
(1137, 132, 'admin_color', 'fresh'),
(1138, 132, 'use_ssl', '0'),
(1139, 132, 'show_admin_bar_front', 'true'),
(1140, 132, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1141, 132, 'wp_user_level', '0'),
(1142, 132, 'default_password_nag', '1'),
(1144, 133, 'nickname', 'khanhkdv'),
(1145, 133, 'first_name', ''),
(1146, 133, 'last_name', ''),
(1147, 133, 'description', ''),
(1148, 133, 'rich_editing', 'true'),
(1149, 133, 'comment_shortcuts', 'false'),
(1150, 133, 'admin_color', 'fresh'),
(1151, 133, 'use_ssl', '0'),
(1152, 133, 'show_admin_bar_front', 'true'),
(1153, 133, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1154, 133, 'wp_user_level', '0'),
(1155, 133, 'default_password_nag', '1'),
(1156, 133, 'session_tokens', 'a:1:{s:64:"89fb3fd86188d929c405ff2163851074f5a177948c0c43bc9cf2bb0aac5a9d70";a:4:{s:10:"expiration";i:1458440230;s:2:"ip";s:13:"203.205.34.36";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1458267430;}}'),
(1157, 131, 'wp_user-settings', 'mfold=f'),
(1158, 131, 'wp_user-settings-time', '1458268431'),
(1160, 132, 'wp_user-settings', 'mfold=f'),
(1161, 132, 'wp_user-settings-time', '1458273090'),
(1162, 134, 'nickname', 'sondang'),
(1163, 134, 'first_name', ''),
(1164, 134, 'last_name', ''),
(1165, 134, 'description', ''),
(1166, 134, 'rich_editing', 'true'),
(1167, 134, 'comment_shortcuts', 'false'),
(1168, 134, 'admin_color', 'fresh'),
(1169, 134, 'use_ssl', '0'),
(1170, 134, 'show_admin_bar_front', 'true'),
(1171, 134, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1172, 134, 'wp_user_level', '0'),
(1173, 134, 'default_password_nag', '1'),
(1174, 134, 'session_tokens', 'a:1:{s:64:"945d6d1a051e1b29ded9ff4ea56a585dd917a741a275a304aa73ab4f2c78fd22";a:4:{s:10:"expiration";i:1459503953;s:2:"ip";s:13:"42.118.224.93";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1458294353;}}'),
(1175, 135, 'nickname', 'Lannguyen'),
(1176, 135, 'first_name', ''),
(1177, 135, 'last_name', ''),
(1178, 135, 'description', ''),
(1179, 135, 'rich_editing', 'true'),
(1180, 135, 'comment_shortcuts', 'false'),
(1181, 135, 'admin_color', 'fresh'),
(1182, 135, 'use_ssl', '0'),
(1183, 135, 'show_admin_bar_front', 'true'),
(1184, 135, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1185, 135, 'wp_user_level', '0'),
(1186, 135, 'default_password_nag', '1'),
(1187, 135, 'session_tokens', 'a:1:{s:64:"6c3ccf1a64d2e630798b4bd9acb8ab946c4e6e5557ce1e605b06b95a53a46487";a:4:{s:10:"expiration";i:1459316400;s:2:"ip";s:13:"42.119.48.143";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1459143600;}}'),
(1188, 136, 'nickname', 'duynam2212@yahoo.com'),
(1189, 136, 'first_name', ''),
(1190, 136, 'last_name', ''),
(1191, 136, 'description', ''),
(1192, 136, 'rich_editing', 'true'),
(1193, 136, 'comment_shortcuts', 'false'),
(1194, 136, 'admin_color', 'fresh'),
(1195, 136, 'use_ssl', '0'),
(1196, 136, 'show_admin_bar_front', 'true'),
(1197, 136, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1198, 136, 'wp_user_level', '0'),
(1199, 136, 'default_password_nag', '1'),
(1200, 136, 'session_tokens', 'a:1:{s:64:"33b077a2c8f7e7a38080d91e529ebec69bd6476535c9f8ec882787aaedb29374";a:4:{s:10:"expiration";i:1459684722;s:2:"ip";s:13:"171.248.23.77";s:2:"ua";s:134:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/54.2.131 Chrome/48.2.2564.131 Safari/537.36";s:5:"login";i:1458475122;}}'),
(1201, 137, 'nickname', 'tienanh'),
(1202, 137, 'first_name', ''),
(1203, 137, 'last_name', ''),
(1204, 137, 'description', ''),
(1205, 137, 'rich_editing', 'true'),
(1206, 137, 'comment_shortcuts', 'false'),
(1207, 137, 'admin_color', 'fresh'),
(1208, 137, 'use_ssl', '0'),
(1209, 137, 'show_admin_bar_front', 'true'),
(1210, 137, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1211, 137, 'wp_user_level', '0'),
(1212, 137, 'default_password_nag', '1'),
(1214, 137, 'session_tokens', 'a:1:{s:64:"593ba57613e290d1161074ce5c1abe37a0d7961fe36d50256fe3586340e3d187";a:4:{s:10:"expiration";i:1463109939;s:2:"ip";s:15:"203.162.147.128";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0";s:5:"login";i:1462937139;}}'),
(1215, 138, 'nickname', 'lphvan'),
(1216, 138, 'first_name', ''),
(1217, 138, 'last_name', ''),
(1218, 138, 'description', ''),
(1219, 138, 'rich_editing', 'true'),
(1220, 138, 'comment_shortcuts', 'false'),
(1221, 138, 'admin_color', 'fresh'),
(1222, 138, 'use_ssl', '0'),
(1223, 138, 'show_admin_bar_front', 'true'),
(1224, 138, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1225, 138, 'wp_user_level', '0'),
(1226, 138, 'default_password_nag', '1'),
(1227, 138, 'session_tokens', 'a:1:{s:64:"420218d1530ec9788a2f4bd3820d7312b086a68ab06722dd056c761838b94b3f";a:4:{s:10:"expiration";i:1458779436;s:2:"ip";s:13:"115.78.65.199";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/51.2.109 Chrome/45.2.2454.109 Safari/537.36";s:5:"login";i:1458606636;}}'),
(1228, 139, 'nickname', 'ThuyTien');
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1229, 139, 'first_name', ''),
(1230, 139, 'last_name', ''),
(1231, 139, 'description', ''),
(1232, 139, 'rich_editing', 'true'),
(1233, 139, 'comment_shortcuts', 'false'),
(1234, 139, 'admin_color', 'fresh'),
(1235, 139, 'use_ssl', '0'),
(1236, 139, 'show_admin_bar_front', 'true'),
(1237, 139, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1238, 139, 'wp_user_level', '0'),
(1239, 139, 'default_password_nag', '1'),
(1240, 139, 'session_tokens', 'a:1:{s:64:"981381f06503222c5892d0c53c6f06b37396d4433047ce3e5452b155eb19f02a";a:4:{s:10:"expiration";i:1458786687;s:2:"ip";s:14:"115.78.162.118";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36";s:5:"login";i:1458613887;}}'),
(1241, 140, 'nickname', 'peace'),
(1242, 140, 'first_name', ''),
(1243, 140, 'last_name', ''),
(1244, 140, 'description', ''),
(1245, 140, 'rich_editing', 'true'),
(1246, 140, 'comment_shortcuts', 'false'),
(1247, 140, 'admin_color', 'fresh'),
(1248, 140, 'use_ssl', '0'),
(1249, 140, 'show_admin_bar_front', 'true'),
(1250, 140, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1251, 140, 'wp_user_level', '0'),
(1252, 140, 'default_password_nag', '1'),
(1253, 140, 'session_tokens', 'a:1:{s:64:"7ff7419a4a488b19fb7580308e08571e750292a9333ccce9c3ba9989af0a9585";a:4:{s:10:"expiration";i:1458818057;s:2:"ip";s:13:"113.190.210.7";s:2:"ua";s:134:"Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12A365 Safari/600.1.4";s:5:"login";i:1458645257;}}'),
(1254, 62, 'wp_user-settings', 'mfold=f'),
(1255, 62, 'wp_user-settings-time', '1462942411'),
(1257, 117, 'session_tokens', 'a:1:{s:64:"d2d5021ed690d9d0140b0efd79ef2e0acdb3a8a87bc5aa1deb8977e9a00848b7";a:4:{s:10:"expiration";i:1458906608;s:2:"ip";s:14:"14.187.214.169";s:2:"ua";s:134:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/54.2.131 Chrome/48.2.2564.131 Safari/537.36";s:5:"login";i:1458733808;}}'),
(1258, 12, 'session_tokens', 'a:2:{s:64:"9767078c8b1a5835a7e434a8bbe5220872bcb43adf83d54f2551a2f16cbb956e";a:4:{s:10:"expiration";i:1458975486;s:2:"ip";s:12:"1.53.175.252";s:2:"ua";s:68:"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko";s:5:"login";i:1458802686;}s:64:"aa416d1e573dac32089d481428da9be2290a66a95916a4692d7ddf0208106edf";a:4:{s:10:"expiration";i:1458976512;s:2:"ip";s:12:"115.78.160.6";s:2:"ua";s:68:"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko";s:5:"login";i:1458803712;}}'),
(1259, 114, 'wp_user-settings', 'mfold=f'),
(1260, 114, 'wp_user-settings-time', '1458806259'),
(1261, 141, 'nickname', 'tranaicam'),
(1262, 141, 'first_name', ''),
(1263, 141, 'last_name', ''),
(1264, 141, 'description', ''),
(1265, 141, 'rich_editing', 'true'),
(1266, 141, 'comment_shortcuts', 'false'),
(1267, 141, 'admin_color', 'fresh'),
(1268, 141, 'use_ssl', '0'),
(1269, 141, 'show_admin_bar_front', 'true'),
(1270, 141, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1271, 141, 'wp_user_level', '0'),
(1272, 141, 'default_password_nag', '1'),
(1275, 142, 'nickname', 'hungnq'),
(1276, 142, 'first_name', ''),
(1277, 142, 'last_name', ''),
(1278, 142, 'description', ''),
(1279, 142, 'rich_editing', 'true'),
(1280, 142, 'comment_shortcuts', 'false'),
(1281, 142, 'admin_color', 'fresh'),
(1282, 142, 'use_ssl', '0'),
(1283, 142, 'show_admin_bar_front', 'true'),
(1284, 142, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1285, 142, 'wp_user_level', '0'),
(1286, 142, 'default_password_nag', '1'),
(1287, 142, 'session_tokens', 'a:1:{s:64:"a7043346798a6a4fb3969c270c3c3b9eddc7e75b9e9b814b6f1cc56c01a720b2";a:4:{s:10:"expiration";i:1459050436;s:2:"ip";s:12:"14.161.20.53";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1458877636;}}'),
(1288, 143, 'nickname', 'thanhth'),
(1289, 143, 'first_name', ''),
(1290, 143, 'last_name', ''),
(1291, 143, 'description', ''),
(1292, 143, 'rich_editing', 'true'),
(1293, 143, 'comment_shortcuts', 'false'),
(1294, 143, 'admin_color', 'fresh'),
(1295, 143, 'use_ssl', '0'),
(1296, 143, 'show_admin_bar_front', 'true'),
(1297, 143, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1298, 143, 'wp_user_level', '0'),
(1299, 143, 'default_password_nag', '1'),
(1300, 143, 'session_tokens', 'a:1:{s:64:"acfa38cad7d48ca24edc7ab1dec0e6a027c8566e4f5c3bace57caa6c565c8b3f";a:4:{s:10:"expiration";i:1459066183;s:2:"ip";s:14:"125.234.97.122";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36";s:5:"login";i:1458893383;}}'),
(1301, 26, 'session_tokens', 'a:1:{s:64:"8d01d70bc1ec20ccbc26a5de22ca93ff82d7feac2c4ee03f7ebb3d67a7929e5c";a:4:{s:10:"expiration";i:1460264177;s:2:"ip";s:13:"14.187.102.63";s:2:"ua";s:134:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/54.2.133 Chrome/48.2.2564.133 Safari/537.36";s:5:"login";i:1459054577;}}'),
(1303, 144, 'nickname', 'hoang_ba2001@yahoo.com'),
(1304, 144, 'first_name', ''),
(1305, 144, 'last_name', ''),
(1306, 144, 'description', ''),
(1307, 144, 'rich_editing', 'true'),
(1308, 144, 'comment_shortcuts', 'false'),
(1309, 144, 'admin_color', 'fresh'),
(1310, 144, 'use_ssl', '0'),
(1311, 144, 'show_admin_bar_front', 'true'),
(1312, 144, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1313, 144, 'wp_user_level', '0'),
(1314, 144, 'default_password_nag', '1'),
(1317, 38, 'session_tokens', 'a:1:{s:64:"32284be967d8fb8ce98e83737a5edb6274c09f4d32d385db4b9f2ad6c3754621";a:4:{s:10:"expiration";i:1459322816;s:2:"ip";s:12:"180.93.217.9";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.4.4 (KHTML, like Gecko) Version/9.0.3 Safari/601.4.4";s:5:"login";i:1459150016;}}'),
(1318, 145, 'nickname', 'Maitonga'),
(1319, 145, 'first_name', ''),
(1320, 145, 'last_name', ''),
(1321, 145, 'description', ''),
(1322, 145, 'rich_editing', 'true'),
(1323, 145, 'comment_shortcuts', 'false'),
(1324, 145, 'admin_color', 'fresh'),
(1325, 145, 'use_ssl', '0'),
(1326, 145, 'show_admin_bar_front', 'true'),
(1327, 145, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1328, 145, 'wp_user_level', '0'),
(1329, 145, 'default_password_nag', '1'),
(1333, 146, 'nickname', 'khanhvatlieu'),
(1334, 146, 'first_name', ''),
(1335, 146, 'last_name', ''),
(1336, 146, 'description', ''),
(1337, 146, 'rich_editing', 'true'),
(1338, 146, 'comment_shortcuts', 'false'),
(1339, 146, 'admin_color', 'fresh'),
(1340, 146, 'use_ssl', '0'),
(1341, 146, 'show_admin_bar_front', 'true'),
(1342, 146, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1343, 146, 'wp_user_level', '0'),
(1344, 146, 'default_password_nag', '1'),
(1345, 146, 'session_tokens', 'a:2:{s:64:"20cd6861256e534f7565df53053d97f62567e37b1ea9389e14f694405e9a283c";a:4:{s:10:"expiration";i:1460009349;s:2:"ip";s:14:"180.93.216.215";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0";s:5:"login";i:1459836549;}s:64:"3d4579810d24351c8a1cdecaf7eb7f5482b931d4a60238144d766947ae1b9eda";a:4:{s:10:"expiration";i:1460011763;s:2:"ip";s:14:"221.133.13.124";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 6.1; rv:45.0) Gecko/20100101 Firefox/45.0";s:5:"login";i:1459838963;}}'),
(1346, 147, 'nickname', 'MinhTan'),
(1347, 147, 'first_name', ''),
(1348, 147, 'last_name', ''),
(1349, 147, 'description', ''),
(1350, 147, 'rich_editing', 'true'),
(1351, 147, 'comment_shortcuts', 'false'),
(1352, 147, 'admin_color', 'fresh'),
(1353, 147, 'use_ssl', '0'),
(1354, 147, 'show_admin_bar_front', 'true'),
(1355, 147, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1356, 147, 'wp_user_level', '0'),
(1357, 147, 'default_password_nag', '1'),
(1358, 147, 'session_tokens', 'a:1:{s:64:"382b4a6535ee6e82963ea04ea80495c8d277472e987d4891cfb9390b85cadbe9";a:4:{s:10:"expiration";i:1459652111;s:2:"ip";s:14:"14.183.139.179";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36";s:5:"login";i:1459479311;}}'),
(1359, 148, 'nickname', 'VuDuyCuong'),
(1360, 148, 'first_name', 'Duy Cương'),
(1361, 148, 'last_name', 'Vũ'),
(1362, 148, 'description', ''),
(1363, 148, 'rich_editing', 'true'),
(1364, 148, 'comment_shortcuts', 'false'),
(1365, 148, 'admin_color', 'sunrise'),
(1366, 148, 'use_ssl', '0'),
(1367, 148, 'show_admin_bar_front', 'true'),
(1368, 148, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1369, 148, 'wp_user_level', '0'),
(1370, 148, 'default_password_nag', '1'),
(1371, 148, 'session_tokens', 'a:2:{s:64:"95695354cc7fe94a8dd4c3bd30d5d162eddbf0a03276194197e97146fe22cc43";a:4:{s:10:"expiration";i:1462763303;s:2:"ip";s:11:"1.52.248.69";s:2:"ua";s:116:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.5.17 (KHTML, like Gecko) Version/9.1 Safari/601.5.17";s:5:"login";i:1462590503;}s:64:"6b6e3e45dafb63cf644f0e0ed8ac39dbb0950563889a30555ba6975c00c77aac";a:4:{s:10:"expiration";i:1462764930;s:2:"ip";s:11:"1.52.248.69";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36";s:5:"login";i:1462592130;}}'),
(1372, 149, 'nickname', 'minhhoatdbcl'),
(1373, 149, 'first_name', ''),
(1374, 149, 'last_name', ''),
(1375, 149, 'description', ''),
(1376, 149, 'rich_editing', 'true'),
(1377, 149, 'comment_shortcuts', 'false'),
(1378, 149, 'admin_color', 'fresh'),
(1379, 149, 'use_ssl', '0'),
(1380, 149, 'show_admin_bar_front', 'true'),
(1381, 149, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1382, 149, 'wp_user_level', '0'),
(1383, 149, 'default_password_nag', '1'),
(1385, 150, 'nickname', 'test4'),
(1386, 150, 'first_name', ''),
(1387, 150, 'last_name', ''),
(1388, 150, 'description', ''),
(1389, 150, 'rich_editing', 'true'),
(1390, 150, 'comment_shortcuts', 'false'),
(1391, 150, 'admin_color', 'fresh'),
(1392, 150, 'use_ssl', '0'),
(1393, 150, 'show_admin_bar_front', 'true'),
(1394, 150, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1395, 150, 'wp_user_level', '0'),
(1396, 150, 'default_password_nag', '1'),
(1397, 151, 'nickname', 'test5'),
(1398, 151, 'first_name', ''),
(1399, 151, 'last_name', ''),
(1400, 151, 'description', ''),
(1401, 151, 'rich_editing', 'true'),
(1402, 151, 'comment_shortcuts', 'false'),
(1403, 151, 'admin_color', 'fresh'),
(1404, 151, 'use_ssl', '0'),
(1405, 151, 'show_admin_bar_front', 'true'),
(1406, 151, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1407, 151, 'wp_user_level', '0'),
(1408, 151, 'default_password_nag', ''),
(1410, 152, 'nickname', 'TranNhuom'),
(1411, 152, 'first_name', ''),
(1412, 152, 'last_name', ''),
(1413, 152, 'description', ''),
(1414, 152, 'rich_editing', 'true'),
(1415, 152, 'comment_shortcuts', 'false'),
(1416, 152, 'admin_color', 'fresh'),
(1417, 152, 'use_ssl', '0'),
(1418, 152, 'show_admin_bar_front', 'true'),
(1419, 152, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1420, 152, 'wp_user_level', '0'),
(1421, 152, 'default_password_nag', '1'),
(1422, 153, 'nickname', 'tvnhuom'),
(1423, 153, 'first_name', ''),
(1424, 153, 'last_name', ''),
(1425, 153, 'description', ''),
(1426, 153, 'rich_editing', 'true'),
(1427, 153, 'comment_shortcuts', 'false'),
(1428, 153, 'admin_color', 'fresh'),
(1429, 153, 'use_ssl', '0'),
(1430, 153, 'show_admin_bar_front', 'true'),
(1431, 153, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1432, 153, 'wp_user_level', '0'),
(1433, 153, 'default_password_nag', '1'),
(1435, 151, 'wp_user-settings', 'mfold=o'),
(1436, 151, 'wp_user-settings-time', '1462515302'),
(1442, 154, 'nickname', 'test6'),
(1443, 154, 'first_name', ''),
(1444, 154, 'last_name', ''),
(1445, 154, 'description', ''),
(1446, 154, 'rich_editing', 'true'),
(1447, 154, 'comment_shortcuts', 'false'),
(1448, 154, 'admin_color', 'fresh'),
(1449, 154, 'use_ssl', '0'),
(1450, 154, 'show_admin_bar_front', 'true'),
(1451, 154, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1452, 154, 'wp_user_level', '0'),
(1453, 154, 'default_password_nag', '1'),
(1457, 46, 'wp_user-settings', 'hidetb=1&mfold=o'),
(1458, 46, 'wp_user-settings-time', '1462879793'),
(1460, 46, 'session_tokens', 'a:5:{s:64:"2feba7b2a9d932c922e6b79c20aeb568acca64125fcac5ab6e8732ddf5a1cece";a:4:{s:10:"expiration";i:1467167674;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.49 Safari/537.36";s:5:"login";i:1466994874;}s:64:"1c766a3c48d3e00152f9c5073bce062c139800caa6c1b0197e6640a05ce43e3b";a:4:{s:10:"expiration";i:1467167680;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.49 Safari/537.36";s:5:"login";i:1466994880;}s:64:"80660b6c7e5fd0b4d7f04acd09e71760dad3c501b88e4b02efa8e169229e6477";a:4:{s:10:"expiration";i:1467170555;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.49 Safari/537.36";s:5:"login";i:1466997755;}s:64:"7e5aa1483d47a93db028731cb4f931dbb0f85a54779dd35c5dab096aba65b6cd";a:4:{s:10:"expiration";i:1467177383;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.49 Safari/537.36";s:5:"login";i:1467004583;}s:64:"a7f49e851eb47968b291346b64f4db9f4f249bcc00fd8ed6d3aedd832bb78078";a:4:{s:10:"expiration";i:1467177690;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1467004890;}}'),
(1462, 155, 'nickname', 'tunghoangxuan'),
(1463, 155, 'first_name', ''),
(1464, 155, 'last_name', ''),
(1465, 155, 'description', ''),
(1466, 155, 'rich_editing', 'true'),
(1467, 155, 'comment_shortcuts', 'false'),
(1468, 155, 'admin_color', 'fresh'),
(1469, 155, 'use_ssl', '0'),
(1470, 155, 'show_admin_bar_front', 'true'),
(1471, 155, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1472, 155, 'wp_user_level', '0'),
(1473, 155, 'default_password_nag', '1'),
(1476, 156, 'nickname', 'Dohanhnga'),
(1477, 156, 'first_name', ''),
(1478, 156, 'last_name', ''),
(1479, 156, 'description', ''),
(1480, 156, 'rich_editing', 'true'),
(1481, 156, 'comment_shortcuts', 'false'),
(1482, 156, 'admin_color', 'fresh'),
(1483, 156, 'use_ssl', '0'),
(1484, 156, 'show_admin_bar_front', 'true'),
(1485, 156, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1486, 156, 'wp_user_level', '0'),
(1487, 156, 'default_password_nag', '1'),
(1489, 157, 'nickname', 'test7'),
(1490, 157, 'first_name', ''),
(1491, 157, 'last_name', ''),
(1492, 157, 'description', ''),
(1493, 157, 'rich_editing', 'true'),
(1494, 157, 'comment_shortcuts', 'false'),
(1495, 157, 'admin_color', 'fresh'),
(1496, 157, 'use_ssl', '0'),
(1497, 157, 'show_admin_bar_front', 'true'),
(1498, 157, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1499, 157, 'wp_user_level', '0'),
(1500, 157, 'default_password_nag', '1'),
(1501, 157, 'session_tokens', 'a:2:{s:64:"8ae8b3c1700fd015a5df1a558354cb52e0b13c659d5d848c0a14ef5a0280764c";a:4:{s:10:"expiration";i:1463123378;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:134:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/55.2.116 Chrome/49.2.2623.116 Safari/537.36";s:5:"login";i:1462950578;}s:64:"6b539ffec4f259a7a845194015a702695cd129133f59764b783b214c6985faa0";a:4:{s:10:"expiration";i:1463286340;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.47 Safari/537.36";s:5:"login";i:1463113540;}}'),
(1502, 158, 'nickname', 'serene'),
(1503, 158, 'first_name', ''),
(1504, 158, 'last_name', ''),
(1505, 158, 'description', ''),
(1506, 158, 'rich_editing', 'true'),
(1507, 158, 'comment_shortcuts', 'false'),
(1508, 158, 'admin_color', 'fresh'),
(1509, 158, 'use_ssl', '0'),
(1510, 158, 'show_admin_bar_front', 'true'),
(1511, 158, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1512, 158, 'wp_user_level', '0'),
(1513, 158, 'default_password_nag', '1'),
(1514, 158, 'session_tokens', 'a:2:{s:64:"ec0d405ccc85d14ebc8f8514da4a9da382788b8b4370d1f50d41c8200f907d12";a:4:{s:10:"expiration";i:1463241290;s:2:"ip";s:14:"123.16.244.199";s:2:"ua";s:63:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)";s:5:"login";i:1463068490;}s:64:"b584ab221fc5aeb19ceec5cf9cb113c7091d334ea977fae1ba38dc8129ae28cf";a:4:{s:10:"expiration";i:1463245139;s:2:"ip";s:14:"123.16.244.199";s:2:"ua";s:63:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)";s:5:"login";i:1463072339;}}'),
(1515, 159, 'nickname', 'buihaidang'),
(1516, 159, 'first_name', ''),
(1517, 159, 'last_name', ''),
(1518, 159, 'description', ''),
(1519, 159, 'rich_editing', 'true'),
(1520, 159, 'comment_shortcuts', 'false'),
(1521, 159, 'admin_color', 'fresh'),
(1522, 159, 'use_ssl', '0'),
(1523, 159, 'show_admin_bar_front', 'true'),
(1524, 159, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1525, 159, 'wp_user_level', '0'),
(1526, 159, 'default_password_nag', '1'),
(1528, 6, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1529, 6, 'wp_user_level', '0'),
(1531, 129, 'wp_user-settings', 'mfold=f'),
(1532, 129, 'wp_user-settings-time', '1463113922'),
(1533, 160, 'nickname', 'test8'),
(1534, 160, 'first_name', ''),
(1535, 160, 'last_name', ''),
(1536, 160, 'description', ''),
(1537, 160, 'rich_editing', 'true'),
(1538, 160, 'comment_shortcuts', 'false'),
(1539, 160, 'admin_color', 'fresh'),
(1540, 160, 'use_ssl', '0'),
(1541, 160, 'show_admin_bar_front', 'true'),
(1542, 160, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1543, 160, 'wp_user_level', '0'),
(1544, 160, 'default_password_nag', '1'),
(1547, 126, 'session_tokens', 'a:3:{s:64:"c100990164f42ee9958ae2f01d1baeddf077395069dbe86c9494d8f710f90e9a";a:4:{s:10:"expiration";i:1463298742;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.47 Safari/537.36";s:5:"login";i:1463125942;}s:64:"90e144af466268f10c2659034b18e2d927622e492db9f44db4d3e5f46e6be8b7";a:4:{s:10:"expiration";i:1463299904;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.47 Safari/537.36";s:5:"login";i:1463127104;}s:64:"8c27248369d8adb38ea35a7094543c26dc3c5d3def2e92bc221c24f441e4a54e";a:4:{s:10:"expiration";i:1463300007;s:2:"ip";s:13:"14.161.38.232";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.47 Safari/537.36";s:5:"login";i:1463127207;}}'),
(1549, 161, 'nickname', 'lhlthuy'),
(1550, 161, 'first_name', ''),
(1551, 161, 'last_name', ''),
(1552, 161, 'description', ''),
(1553, 161, 'rich_editing', 'true'),
(1554, 161, 'comment_shortcuts', 'false'),
(1555, 161, 'admin_color', 'fresh'),
(1556, 161, 'use_ssl', '0'),
(1557, 161, 'show_admin_bar_front', 'true'),
(1558, 161, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1559, 161, 'wp_user_level', '0'),
(1560, 161, 'default_password_nag', '1'),
(1561, 161, 'session_tokens', 'a:1:{s:64:"e951682a4373418e0c821df2be36510e36077ed5211a9109700a1e6d4d12cbf5";a:4:{s:10:"expiration";i:1463542550;s:2:"ip";s:14:"115.72.130.241";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/55.2.116 Chrome/49.2.2623.116 Safari/537.36";s:5:"login";i:1463369750;}}'),
(1562, 162, 'nickname', 'tamlinh@namsaigon.edu.vn'),
(1563, 162, 'first_name', ''),
(1564, 162, 'last_name', ''),
(1565, 162, 'description', ''),
(1566, 162, 'rich_editing', 'true'),
(1567, 162, 'comment_shortcuts', 'false'),
(1568, 162, 'admin_color', 'fresh'),
(1569, 162, 'use_ssl', '0'),
(1570, 162, 'show_admin_bar_front', 'true'),
(1571, 162, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1572, 162, 'wp_user_level', '0'),
(1573, 162, 'default_password_nag', '1'),
(1574, 162, 'session_tokens', 'a:1:{s:64:"0102e5c3a73abc0b40d97584c4412a97b75084cdfa2e99973ec4a7ba5798118e";a:4:{s:10:"expiration";i:1465466982;s:2:"ip";s:14:"113.161.84.208";s:2:"ua";s:173:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2; .NET4.0C)";s:5:"login";i:1465294182;}}'),
(1575, 163, 'nickname', 'chauthuyna@yahoo.com'),
(1576, 163, 'first_name', ''),
(1577, 163, 'last_name', ''),
(1578, 163, 'description', ''),
(1579, 163, 'rich_editing', 'true'),
(1580, 163, 'comment_shortcuts', 'false'),
(1581, 163, 'admin_color', 'fresh'),
(1582, 163, 'use_ssl', '0'),
(1583, 163, 'show_admin_bar_front', 'true'),
(1584, 163, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1585, 163, 'wp_user_level', '0'),
(1586, 163, 'default_password_nag', '1'),
(1587, 163, 'session_tokens', 'a:1:{s:64:"890cfec33308a31928f81f1d406d8f32fe4677958159d1b7329d528f075cb778";a:4:{s:10:"expiration";i:1463830120;s:2:"ip";s:15:"112.197.224.107";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36";s:5:"login";i:1463657320;}}'),
(1588, 128, 'session_tokens', 'a:1:{s:64:"08a0a4612091867a398eae69c490a1c134e79c9a6243f80ab9cd894b3284f19c";a:4:{s:10:"expiration";i:1463888580;s:2:"ip";s:14:"118.69.224.210";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36";s:5:"login";i:1463715780;}}'),
(1589, 164, 'nickname', 'vtphuoc'),
(1590, 164, 'first_name', ''),
(1591, 164, 'last_name', ''),
(1592, 164, 'description', ''),
(1593, 164, 'rich_editing', 'true'),
(1594, 164, 'comment_shortcuts', 'false'),
(1595, 164, 'admin_color', 'fresh'),
(1596, 164, 'use_ssl', '0'),
(1597, 164, 'show_admin_bar_front', 'true'),
(1598, 164, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1599, 164, 'wp_user_level', '0'),
(1600, 164, 'default_password_nag', '1'),
(1601, 164, 'session_tokens', 'a:1:{s:64:"3e713a5bf84d4cfdf869c34bd3c4d6b0fd53a6f3c8b7ba53cba63aba6c14eb01";a:4:{s:10:"expiration";i:1463894825;s:2:"ip";s:13:"125.234.236.6";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36";s:5:"login";i:1463722025;}}'),
(1602, 165, 'nickname', 'vinhhienbio'),
(1603, 165, 'first_name', ''),
(1604, 165, 'last_name', ''),
(1605, 165, 'description', ''),
(1606, 165, 'rich_editing', 'true'),
(1607, 165, 'comment_shortcuts', 'false'),
(1608, 165, 'admin_color', 'fresh'),
(1609, 165, 'use_ssl', '0'),
(1610, 165, 'show_admin_bar_front', 'true'),
(1611, 165, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1612, 165, 'wp_user_level', '0'),
(1613, 165, 'default_password_nag', '1'),
(1614, 165, 'session_tokens', 'a:1:{s:64:"9fa9980c839c0780094600f7ae2283645c37c01fe9b8de30725824af00fd7fe5";a:4:{s:10:"expiration";i:1465173553;s:2:"ip";s:15:"113.161.166.155";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36";s:5:"login";i:1463963953;}}'),
(1615, 166, 'nickname', 'nhvduong'),
(1616, 166, 'first_name', ''),
(1617, 166, 'last_name', ''),
(1618, 166, 'description', ''),
(1619, 166, 'rich_editing', 'true'),
(1620, 166, 'comment_shortcuts', 'false'),
(1621, 166, 'admin_color', 'fresh'),
(1622, 166, 'use_ssl', '0'),
(1623, 166, 'show_admin_bar_front', 'true'),
(1624, 166, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1625, 166, 'wp_user_level', '0'),
(1626, 166, 'default_password_nag', '1'),
(1629, 116, 'session_tokens', 'a:1:{s:64:"4c1deb1de516fba6e281861c76ec8d5a919d6cb2f9fedaabbc274e5f2fb3d130";a:4:{s:10:"expiration";i:1466216958;s:2:"ip";s:14:"171.232.237.47";s:2:"ua";s:118:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/600.7.12 (KHTML, like Gecko) Version/8.0.7 Safari/600.7.12";s:5:"login";i:1466044158;}}'),
(1630, 167, 'nickname', 'dbcl_tdc'),
(1631, 167, 'first_name', ''),
(1632, 167, 'last_name', ''),
(1633, 167, 'description', ''),
(1634, 167, 'rich_editing', 'true'),
(1635, 167, 'comment_shortcuts', 'false'),
(1636, 167, 'admin_color', 'fresh'),
(1637, 167, 'use_ssl', '0'),
(1638, 167, 'show_admin_bar_front', 'true'),
(1639, 167, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(1640, 167, 'wp_user_level', '0'),
(1641, 167, 'default_password_nag', '1'),
(1643, 167, 'session_tokens', 'a:2:{s:64:"14df0549b44fde5ef146a9a8d76365560f4982886c3a7b7b309cfd3cddb7bbb9";a:4:{s:10:"expiration";i:1466870027;s:2:"ip";s:13:"14.169.67.215";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/55.2.126 Chrome/49.2.2623.126 Safari/537.36";s:5:"login";i:1466697227;}s:64:"e989d278e5b735ca7a626d55adce05a3e2d2f1f8525ea2400af0828dc77f3a7f";a:4:{s:10:"expiration";i:1466923531;s:2:"ip";s:13:"115.78.230.26";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/55.2.126 Chrome/49.2.2623.126 Safari/537.36";s:5:"login";i:1466750731;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'haolevan@yahoo.com', '$P$BAi.hjZBSQ.L7De8jjsDiOcNPHMLA8/', 'haolevanyahoo-com', 'haolevan@yahoo.com', '', '2016-03-17 03:07:19', '', 0, 'Lê Văn Hảo'),
(2, 'vpn.dung@hutech.edu.vn', '$P$B33KDTLoSRaL9KhX0/N.YfnYMWBAJE/', 'vpn-dunghutech-edu-vn', 'vpn.dung@hutech.edu.vn', '', '2016-03-17 03:08:30', '', 0, 'Võ Quang Ngọc Dung'),
(3, 'hktu@hcmiu.edu.vn', '$P$BkvgeXfJ7c1OXkOAiCyODAo6Wb7zwv1', 'hktuhcmiu-edu-vn', 'hktu@hcmiu.edu.vn', '', '2016-03-17 03:09:06', '', 0, 'Huỳnh Khả Tú'),
(4, 'anhvu', '$P$BSof/XgESxNAuFlUYez1ECYTRubm1S/', 'anhvu', 'ddanhvu@gmail.com', '', '2016-03-17 02:41:54', '', 0, 'anhvu'),
(5, 'phuht@uel.edu.vn', '$P$BM9IgyiUmiPyo/ogr0ugMKh.Buyxnf0', 'phuhtuel-edu-vn', 'phuht@uel.edu.vn', '', '2016-03-17 03:13:41', '', 0, 'Hoàng Thọ Phú'),
(6, 'vuonglapbinh@gmail.com', '$P$B1FTxQyi2XPXYllEzdiwAegZj7D8rV/', 'vuonglapbinhgmail-com', 'vuonglapbinh@gmail.com', '', '2016-03-17 03:14:15', '', 0, 'Vương Lập Bình'),
(7, 'sondt@hcmute.edu.vn', '$P$BE74TXLFzNDpEwZgx9CGHmtglIfCZ9/', 'sondthcmute-edu-vn', 'sondt@hcmute.edu.vn', '', '2016-03-17 03:15:12', '', 0, 'Đặng Trường Sơn'),
(8, 'nqvu@dthu.edu.vn', '$P$BwO04QZbU2DYy0EOsCpksubhkvWDpB/', 'nqvudthu-edu-vn', 'nqvu@dthu.edu.vn', '', '2016-03-17 03:15:51', '1458184552:$P$BAf0u.MvXaDpCuKjiUB9F2I.mG.HCn/', 0, 'Nguyễn Quốc Vũ'),
(9, 'doctorchinh@yahoo.com', '$P$Bmda56rIWxQu1VyyUY2wzFB.yStVJw1', 'doctorchinhyahoo-com', 'doctorchinh@yahoo.com', '', '2016-03-17 03:16:18', '1458184579:$P$BHwLxXTZHOwrdSTZVizEHiz7iBYSBj0', 0, 'Bùi Lê Vĩ Chinh'),
(10, 'hongtt.vnuhcm@gmail.com', '$P$BCeYEVV3xoicZhX0Tn.i7/3/91iQ1i/', 'hongtt-vnuhcmgmail-com', 'hongtt.vnuhcm@gmail.com', '', '2016-03-17 03:16:44', '1458184605:$P$BpmBWkgNgfq2Iff.khctmcfShgpTMw/', 0, 'Trần Thị Hồng'),
(11, '0dongsongtroi0@gmail.com', '$P$BkiVDnTtNYVBt.Lg/Gb6boXw1KDGu6/', '0dongsongtroi0gmail-com', '0dongsongtroi0@gmail.com', '', '2016-03-17 03:17:14', '1458184635:$P$BI7FpyCiVea5DZXrO2.SOPct5lNXjG/', 0, 'Hà Thị Phương Minh'),
(12, 'ndnghiep@hcmus.edu.vn', '$P$BKqhjv3ImmVrBinAFO1Xr/x6iNO4aL/', 'ndnghiephcmus-edu-vn', 'ndnghiep@hcmus.edu.vn', '', '2016-03-17 03:17:38', '1458184659:$P$BAt6g9htaNptPNYi5K.krlByB6BPSU.', 0, 'Ngô Đại Nghiệp'),
(13, 'nhs1601@yahoo.com', '$P$BuSj8wDs56JA55F.lECysGV0eYdOj/1', 'nhs1601yahoo-com', 'nhs1601@yahoo.com', '', '2016-03-17 03:17:59', '1458184679:$P$BTEDIFZxiifSKgtm7pSpDjLUpQOx.x1', 0, 'Nguyễn Hồng Sinh'),
(14, 'ailinh@vnuhcm.edu.vn', '$P$BVV4BqL26qZDI.bn8ZIPipggGB0EBT/', 'ailinhvnuhcm-edu-vn', 'ailinh@vnuhcm.edu.vn', '', '2016-03-17 03:18:20', '1458184700:$P$BBVg05RACcBb/bsom2rpOFiQ1UGYPZ/', 0, 'Đinh Ái Linh'),
(15, 'dplam@ctu.edu.vn', '$P$BgNzWARZCMy/eJ1Qd7pDowTG61p7mz1', 'dplamctu-edu-vn', 'dplam@ctu.edu.vn', '', '2016-03-17 03:18:42', '1458184723:$P$BwaorYBZToGI0ybRxYbJ7TkfkyAL/7.', 0, 'Đào Phong Lâm'),
(16, 'trongthe@hcmuaf.edu.vn', '$P$BtV0hFN/gcILBOIRITkDPn0BdwzcuB/', 'trongthehcmuaf-edu-vn', 'trongthe@hcmuaf.edu.vn', '', '2016-03-17 03:19:01', '1458184741:$P$B9DUktzZ0NZ7y0/tpkt7Mnh7mPVlod1', 0, 'Nguyễn Trọng Thể'),
(17, 'thuyamsterdam@gmail.com', '$P$BvZu/nDWFOglMjvavDsa/TJrAGHTMa0', 'thuyamsterdamgmail-com', 'thuyamsterdam@gmail.com', '', '2016-03-17 03:19:31', '1458184772:$P$BIifmE/0rnszkRBIIrjd7pIgcbZbIt/', 0, 'Nguyễn Thanh Thủy'),
(18, 'dan1962@gmail.com', '$P$BvAw6i7jIYEultC9n1g9GI2CyTzT9N.', 'dan1962gmail-com', 'dan1962@gmail.com', '', '2016-03-17 03:19:53', '1458184794:$P$B65i70HmQyKhedgN8c263AFEug8yEo1', 0, 'Nguyễn Văn Dần'),
(19, 'thuyen.ngo@hcmute.edu.vn', '$P$BolvXFLl5BgSZTnSCKwmQxx2s/lEwL.', 'thuyen-ngohcmute-edu-vn', 'thuyen.ngo@hcmute.edu.vn', '', '2016-03-17 03:20:15', '1458184815:$P$BpL3UdpbMPk.YGaOWXSa4xJQb.rWGU0', 0, 'Ngô Văn Thuyên'),
(20, 'tho79bd@yahoo.com', '$P$B9YzqKd7ifwjwx54I2Ni6IndIVZwau/', 'tho79bdyahoo-com', 'tho79bd@yahoo.com', '', '2016-03-17 03:20:58', '1458184859:$P$BuzsN6P1.hDmHxUhPFFj8DB1df9zpd1', 0, 'Lê Hà Phúc Thọ'),
(21, 'd.ho@huflit.edu.vn', '$P$B8uDtkekSYsJJ0mXCEiOHtJzReEs78/', 'd-hohuflit-edu-vn', 'd.ho@huflit.edu.vn', '', '2016-03-17 03:21:23', '1458184884:$P$B3TPddimclen07.OF.WzTYb0VwvXZi1', 0, 'Hồ Thùy Dung'),
(22, 'ntmngoc@vnuhcm.edu.vn', '$P$BbdCp.wfUlccj6Otxk5558yNJj2TGL0', 'ntmngocvnuhcm-edu-vn', 'ntmngoc@vnuhcm.edu.vn', '', '2016-01-21 06:32:23', '1453357943:$P$B8.j6o.pVUnTZXhAV1TduI0koXsPg8/', 0, 'Ngọc Nguyễn Thị Mỹ'),
(23, 'kimnguyen@ier.edu.vn', '$P$BVM/ffv64u67vV1CI1ASabHJBoTy5t1', 'kimnguyenier-edu-vn', 'kimnguyen@ier.edu.vn', '', '2016-03-17 03:21:43', '1458184903:$P$B1N7P/U/CDRjzwzpK7/cfUaGNSsNvT.', 0, 'Nguyễn Kim Dung'),
(24, 'nhnghia@vnuhcm.edu.vn', '$P$Br.MsxqCWDGD9e/lghFxv.R5xMTTVj0', 'nhnghiavnuhcm-edu-vn', 'nhnghia@vnuhcm.edu.vn', '', '2016-01-21 06:31:24', '1453357885:$P$BgTFXxVnaU1tPRME8z4gFWpMa1RHTD0', 0, 'Nghĩa Nguyễn Hội'),
(25, 'lnqlam@hcmut.edu.vn', '$P$BRFQGg46FajGu9N4AgcMSc03Ml13ai.', 'lnqlamhcmut-edu-vn', 'lnqlam@hcmut.edu.vn', '', '2016-03-17 03:22:05', '1458184926:$P$BQetl8nlwtHfSjWQtMcC2K7VUOm6RD1', 0, 'Lê Ngọc Quỳnh Lam'),
(26, 'lehoangdungef@gmail.com', '$P$BDbiTu4o7GcK2adf2AeUZRgpf8J.vl0', 'lehoangdungefgmail-com', 'lehoangdungef@gmail.com', '', '2016-03-17 03:22:26', '1458184947:$P$BNUJm.6tYqb/uyDhODYiKgx9K3R9xJ.', 0, 'Lê Hoàng Dũng'),
(27, 'htngaktcn@gmail.com', '$P$Bu6v.2d0./k1tfotlofXW8lZRM0nqg.', 'htngaktcngmail-com', 'htngaktcn@gmail.com', '', '2016-03-17 03:22:48', '1458184968:$P$BM3OGOsV6cAgvgvGzi0NW9ZQIqdPAJ.', 0, 'Huỳnh Tuyết Nga'),
(28, 'hvtuan@hcmus.edu.vn', '$P$BHgoRgqUpgXAnPvuHQ/LJ0p/7uYVWY1', 'hvtuanhcmus-edu-vn', 'hvtuan@hcmus.edu.vn', '', '2016-03-17 03:23:08', '1458184988:$P$By0/ON2cZPYmUUjLYL/ZJOjgvCg/Aa/', 0, 'Huỳnh Văn Tuấn'),
(29, 'nguyet.hoangthithu@stu.edu.vn', '$P$BCDbMQzSb42Jf40XgUEpvzJsIn0tC7/', 'nguyet-hoangthithustu-edu-vn', 'nguyet.hoangthithu@stu.edu.vn', '', '2016-03-17 03:23:31', '1458185012:$P$Bkfbe/H5p2IdduyCeDMhvCtAvDuf6Z/', 0, 'Hoàng Thị Thu Nguyệt'),
(30, 'tam.dinhthi@stu.edu.vn', '$P$BHvbloc8FBxS0Xxc9jhgjeoaIHXPAZ/', 'tam-dinhthistu-edu-vn', 'tam.dinhthi@stu.edu.vn', '', '2016-03-17 03:23:50', '1458185031:$P$B9KHcE2PssDqpBopy6kGKOhAa0usI2.', 0, 'Đinh Thị Tâm'),
(31, 'nguyenkhanhlinhqnu@gmail.com', '$P$Bzej/q5RUT/PCHwPnp5tputSaVt0Rp.', 'nguyenkhanhlinhqnugmail-com', 'nguyenkhanhlinhqnu@gmail.com', '', '2016-03-17 03:24:15', '1458185056:$P$BaLg2i2rBZz/aLuTU42zNcqvI.tl3e1', 0, 'Nguyễn Thị Khánh Linh'),
(32, 'tienphd@yahoo.com', '$P$BclhdnTlfRpfc4AI7hcG0AMYXDwxZZ0', 'tienphdyahoo-com', 'tienphd@yahoo.com', '', '2016-03-17 03:24:38', '1458185079:$P$BNRiBFq3Ry6x7ajz.pjJTRdRG8yPdD/', 0, 'Phạm Đào Tiên'),
(33, 'huongtrieu61@yahoo.com', '$P$BTYOyLhD4KyxF/nbIp7XbWtzbyYN201', 'huongtrieu61yahoo-com', 'huongtrieu61@yahoo.com', '', '2016-03-17 03:24:59', '1458185099:$P$B7iT5IHQf2yrGd49hJ7yquvN1fb88A1', 0, 'Phạm Thúy Hương Triêu'),
(34, 'ntdz.nguyen@gmail.com', '$P$BSvA.ROEg2I4bTqepZIw2bkWNEcUQz/', 'ntdz-nguyengmail-com', 'ntdz.nguyen@gmail.com', '', '2016-03-17 03:25:25', '1458185126:$P$BmNhUzDl2oI5LUTRsqySBEV6QoSrQS/', 0, 'Nguyễn Tiến Dũng'),
(35, 'green4rest.vn@gmail.com', '$P$BmaK9qtY/QbLRF/b6QoD6fPwYA58tf/', 'green4rest-vngmail-com', 'green4rest.vn@gmail.com', '', '2016-03-17 03:25:48', '1458185148:$P$Bp/yAx1sA9xGOMQ1d5wkdN7E/348W/0', 0, 'Đỗ Thị Dung'),
(36, 'dungdo@mail.tdc.edu.vn', '$P$BqXvKanfVUZF/TZA4E5O/ei9Pw5gVR/', 'dungdomail-tdc-edu-vn', 'dungdo@mail.tdc.edu.vn', '', '2016-03-17 03:26:56', '1458185217:$P$B1M6idFyePY3xSkrH31hWJpWHSwntg0', 0, 'Đỗ Thị Dung'),
(37, 'nguyenducthanh71@gmail.com', '$P$BA4XidC0mLw4ooLo1/Tv2ee1YIm8Tu0', 'nguyenducthanh71gmail-com', 'nguyenducthanh71@gmail.com', '', '2016-03-17 03:27:23', '1458185244:$P$BtY3t8/H3z142SweC3u9QkQ1fkw6VF0', 0, 'Nguyễn Đức Thành'),
(38, 'nhphung@vnuhcm.edu.vn', '$P$BQ3/x0vYkUiNPYTtZKbZ5.jnnOkaCl1', 'nhphungvnuhcm-edu-vn', 'nhphung@vnuhcm.edu.vn', '', '2016-01-21 06:34:44', '1453358085:$P$BztSR8GUo1GODgBdGGhGP3VaSKL/jC/', 0, 'Phùng Nguyễn Hứa'),
(39, 'vuutrang@hcmut.edu.vn', '$P$Bb0sqGyv9AS6R7Sh7V9nChz4M8eJ9N0', 'vuutranghcmut-edu-vn', 'vuutrang@hcmut.edu.vn', '', '2016-03-17 03:27:46', '1458185267:$P$BYmkcBty6wjh7XfwtdpbloioKOLoIk.', 0, 'Vưu Thị Thùy Trang'),
(40, 'thuannd@uit.edu.vn', '$P$BT/GVGfjRRMlRUKOqTR2kD9xyqyMYQ.', 'thuannduit-edu-vn', 'thuannd@uit.edu.vn', '', '2016-03-17 03:28:12', '1458185292:$P$BYuksT.8QjXzOQukjrpjhQ5tUOiQTH/', 0, 'Nguyễn Đình Thuân'),
(41, 'haidangbui@hcmussh.edu.vn', '$P$BQ9UGVRPLX4XrJoS48W1NNKohj/odb1', 'haidangbuihcmussh-edu-vn', 'haidangbui@hcmussh.edu.vn', '', '2016-03-17 03:28:30', '1463111819:$P$BkQSWrC9WpyUQVvzEq7Z5uJSVxJ68r/', 0, 'Bùi Hải Đăng'),
(42, 'thanhnhan@huflit.edu.vn', '$P$BXihxg1f1G1DLvIFfQxovjrEoqIMja1', 'thanhnhanhuflit-edu-vn', 'thanhnhan@huflit.edu.vn', '', '2016-03-17 03:28:51', '1458185332:$P$BkjP.oCE7TG6L94wdPAPljpasuSuuo.', 0, 'Trần Thanh Nhàn'),
(43, 'lenhudzi@hotec.edu.vn', '$P$BX0rzibVLxvB2VToE2SPPEfy3yB4KE/', 'lenhudzihotec-edu-vn', 'lenhudzi@hotec.edu.vn', '', '2016-03-17 03:29:13', '1458185354:$P$BHrYbubJx9bmWhPAJdaW3Hw/pTIzVx/', 0, 'Lê Như Dzi'),
(44, 'luukhanhlinh.ufm@gmail.com', '$P$BKevzW5.E7XQfeATcw8hen71DfIXX41', 'luukhanhlinh-ufmgmail-com', 'luukhanhlinh.ufm@gmail.com', '', '2016-03-17 03:29:30', '1458185370:$P$BYj0tqa7PCTZ8ZYoq.yMwR7umg1Wmb0', 0, 'Lưu Khánh Linh'),
(45, 'nvqlinh@hcmunre.edu.vn', '$P$BKoVrKmG7d1yUDGYse0.HypjIlObaO1', 'nvqlinhhcmunre-edu-vn', 'nvqlinh@hcmunre.edu.vn', '', '2016-03-17 03:29:53', '1458185393:$P$BwfBrZ2o0TAO/p8r5uv4I5WO1hvK6h.', 0, 'Nguyễn Vũ Quế Linh'),
(46, 'dangkhoa', '$P$BYkSG9jSSKQmQgq0OU2/kLKgKokxiz/', 'dangkhoa', 'dangkhoa114@gmail.com', '', '2015-10-01 03:35:55', '', 0, 'dangkhoa'),
(47, 'test', '$P$BORM.H7RsKMNRzTIERPz/3Z0T401ao0', 'test', 'dangkhoa922006@yahoo.com', '', '2015-12-16 17:16:42', '1450286202:$P$Bwo74TwmG2q0MTEAfQj4MqE1gygEW5.', 0, 'Khoa Khoa'),
(51, 'hdhmien@vnuhcm.edu.vn', '$P$B1Dpmu4H.KsmkQ7.CEPY2N3mnAE6IT0', 'hdhmienvnuhcm-edu-vn', 'hdhmien@vnuhcm.edu.vn', '', '2016-01-21 06:35:18', '1453358119:$P$B05v4TVkrb8B5HsX1iOmoUP.WnJl8h1', 0, 'Miên Hồ Đắc Hải'),
(52, 'ntut@vnuhcm.edu.vn', '$P$Be5Pb9jQaeRP2gAtKbpqmkD5ic6wui0', 'ntutvnuhcm-edu-vn', 'ntut@vnuhcm.edu.vn', '', '2016-01-21 06:35:53', '1453358154:$P$BiaBQNN2RTHQwrCVIgh37DUBHs.xWv/', 0, 'Út Nguyễn Thị'),
(53, 'lttu@vnuhcm.edu.vn', '$P$BcYlhIEut8jytyEQrHd1mQFJsuCP2a1', 'lttuvnuhcm-edu-vn', 'lttu@vnuhcm.edu.vn', '', '2016-01-21 06:36:39', '1453358200:$P$BiKEwD8R3aTfhfytB8FDozec88YYN/.', 0, 'Tú Lê Thanh'),
(54, 'thuynn@vnuhcm.edu.vn', '$P$BK8.YtaSFAL92r6q5dZnAXD0OsMf9C0', 'thuynnvnuhcm-edu-vn', 'thuynn@vnuhcm.edu.vn', '', '2016-01-21 06:37:20', '1453358241:$P$BBJmIVo2cgt0y.UyY7sLc3BYNLdC3U1', 0, 'Thúy Nguyễn Ngọc'),
(58, 'sas@', '$P$B3/vS5l33.1qCmb4kGwPRDTgxeuy1u1', 'sas-2', 'dangkhoa2@gmail.com', '', '2016-03-15 02:05:32', '', 0, 'sas@'),
(59, 'test2', '$P$BiVC1jmqoIwWuyFVyO5O2.IhZft8Bl/', 'test2', 'test2@gmail.com', '', '2016-03-16 17:31:36', '', 0, 'test2'),
(60, 'test3', '$P$BC6ta5TArBf0obAv9aX5R573s70qSQ.', 'test3', 'test3@gmail.com', '', '2016-03-16 17:35:54', '', 0, 'test3'),
(61, 'haodn', '$P$Bgrfvxd2Zdbyb9dtx1UMRryWbDSXHo0', 'haodn', 'dgngochao@gmail.com', '', '2016-03-17 02:37:00', '1462939310:$P$BLBqoUsqqfWkfriHhqfdyhczOckdrw.', 0, 'haodn'),
(62, 'hoangxuantung', '$P$BGOwwUfKwPPHcuwEzFHUjgps10IYOF0', 'hoangxuantung', 'hoangxuantung@hcmut.edu.vn', '', '2016-03-17 02:39:43', '1462942039:$P$Br.FYL8z31voTnBqYwFr83LvFJy92g.', 0, 'hoangxuantung'),
(63, 'nguyenlanphuongBK', '$P$B7oPNlb730KEhvmiwhYNCB9R4TO1yV1', 'nguyenlanphuongbk', 'nlphuong@hcmut.edu.vn', '', '2016-03-17 02:41:31', '', 0, 'nguyenlanphuongBK'),
(65, 'phuonghutech', '$P$BCBb7IMb.raDM8GUWM/EHk0Sj1XNHj.', 'phuonghutech', 'nt.phuong@hutech.edu.vn', '', '2016-03-17 02:47:59', '', 0, 'phuonghutech'),
(66, 'tchien', '$P$ByXNJ5eacHr4ajiKUN61G1bksTOfwO.', 'tchien', 'tchien@hcmut.edu.vn', '', '2016-03-17 02:55:20', '1463141310:$P$BgE/TjP7MKQYFbwDzIrkWBLambCC8c.', 0, 'tchien'),
(67, 'nguyenkon', '$P$BEn6io657KyiyuPxO2nDvvYmm2nqH30', 'nguyenkon', 'nctranh@hcmus.edu.vn', '', '2016-03-17 03:03:05', '', 0, 'nguyenkon'),
(68, 'tthhanh', '$P$BMRt4k6BbxMMIxZk5n4VQ3FLP5MKkc/', 'tthhanh', 'tthhanh@ctu.edu.vn', '', '2016-03-17 03:04:52', '', 0, 'tthhanh'),
(69, 'Huyen', '$P$BOOROUIPl1c.mVHCFhm8l1M26jdMKK/', 'huyen', 'nthuyen@hcmus.edu.vn', '', '2016-03-17 03:06:36', '', 0, 'Huyen'),
(71, 'Nhanussh', '$P$BQvC0nGK2jve.nDzeR8ixCr9GnAAkh/', 'nhanussh', 'ntnhan@hcmussh.edu.vn', '', '2016-03-17 03:08:08', '', 0, 'Nhanussh'),
(73, 'nvcuong', '$P$B4VUjH/y.93YQUWsIAC.m.2tpXfSdk.', 'nvcuong', 'nvcuong@ctu.edu.vn', '', '2016-03-17 03:08:54', '', 0, 'nvcuong'),
(75, 'Nhankdv', '$P$BqjA4E/MoldCnT4HYV70wC0DA5GYnM/', 'nhankdv', 'nhanussh@gmail.com', '', '2016-03-17 03:09:53', '', 0, 'Nhankdv'),
(114, 'Hautm', '$P$BS7EqQ6u3OgOqRyCi6cuPSUuyeBV5I/', 'hautm', 'hautm@vhu.edu.vn', '', '2016-03-17 03:31:02', '1462933796:$P$B98Gg8y.gXkN5uyU4.B9KcKms6Hsyp1', 0, 'Hautm'),
(115, 'ThanhHung', '$P$BRQ22sBnFtR0DzOtkTXVBxSTAvEs0Y0', 'thanhhung', 'thanhhung1468@gmail.com', '', '2016-03-17 03:35:37', '1458185737:$P$BGKQ/KZW2RP0D6flGmn/lSD2TnFktX0', 0, 'ThanhHung'),
(116, 'xhuyen@hcmut.edu.vn', '$P$Bf2iQPMvMo8dbesiu2zvCG2hKiamiB.', 'xhuyenhcmut-edu-vn', 'xhuyen@yahoo.com', '', '2016-03-17 03:35:41', '1458699873:$P$BlH40Tv0uVGBVyE16v7wEDRx40pwxN.', 0, 'xhuyen@hcmut.edu.vn'),
(117, 'NGUYENVANLAN', '$P$BgLB9Roih4Kxot1.T2iwvn0XX/EKm50', 'nguyenvanlan', 'ngvanlan@gmail.com', '', '2016-03-17 03:35:51', '1463360125:$P$BdGs3Ql72QouYhbFGG8bqzjIthOTnK1', 0, 'NGUYENVANLAN'),
(118, 'KimTuyenCao', '$P$BKD4wLKLsck6O.sfhvMMvQCyh0iuu.1', 'kimtuyencao', 'kimtuyen99t_cao@yahoo.com', '', '2016-03-17 03:36:33', '1458185794:$P$Bf/QScvEvf0lxv2vuMXt1Z/BoMydGq0', 0, 'KimTuyenCao'),
(119, 'hienttm@uit.edu.vn', '$P$BgYZ59T7P1lSAuZdXuub9Zr1VqzVvo1', 'hienttmuit-edu-vn', 'hienttm@uit.edu.vn', '', '2016-03-17 03:46:05', '1463381027:$P$Bth/yr2URfTlWsM2z31KO.wEhkO5wj.', 0, 'hienttm@uit.edu.vn'),
(120, 'ongvannam', '$P$BLTqu4bmPRlBavBBQmJ2fP5NziyL4n/', 'ongvannam', 'namov@buh.edu.vn', '', '2016-03-17 04:02:04', '1458187325:$P$BZrxm.2Bzq1O3wIWpH5OAggef6G.qn.', 0, 'ongvannam'),
(121, 'phamhuong.mu@gmail.com', '$P$Bbwh9EXmQU5PqJ9TA2lz83E3oInHqu/', 'phamhuong-mugmail-com', 'phamhuong.mu@gmail.com', '', '2016-03-17 04:11:52', '1458187913:$P$BrHPGaruF3qhAODjvIVZD46snmQEab/', 0, 'phamhuong.mu@gmail.com'),
(122, 'DuongDuong', '$P$BW4Vt48iprjrV7Q7cr/zGz9wWdhNei0', 'duongduong', 'dttduong@vnuhcm.edu.vn', '', '2016-03-17 04:17:00', '1458188221:$P$BsBL8GDbtywR7LfQSNWJIObJAlfwXO.', 0, 'DuongDuong'),
(123, 'mtvan', '$P$BZ.IQSV3kY9h/xX6g2Xe3LM/z0Jgd5.', 'mtvan', 'mtvan@vnuhcm.edu.vn', '', '2016-03-17 04:18:31', '1458188311:$P$BpXs2nh35C4fEOvTz9YoKI7CxVTS4F1', 0, 'mtvan'),
(124, 'trinhminhgiang', '$P$B5KKZrlIdsGzfAwAVxqxrglIISd0xt/', 'trinhminhgiang', 'hanagiang@hcmut.edu.vn', '', '2016-03-17 04:20:44', '1458188445:$P$BCb/vdjuaUkgC.uW1VsGbia8nW3g1j.', 0, 'trinhminhgiang'),
(125, 'Kimanhtran', '$P$B8/dVatJoaT0PIF4V4e4J41nJ8l3Dl.', 'kimanhtran', 'kimanhtran@hcmussh.edu.vn', '', '2016-03-17 04:52:13', '1458190334:$P$BbE734bRMOEdJvxBagNicEXSwQOqs71', 0, 'Kimanhtran'),
(126, 'nguyetuankiet', '$P$BpAzNx8ycTpgI8XLNOzq4xdfeNI/jd/', 'nguyetuankiet', 'ntkiet@medvnu.edu.vn', '', '2016-03-17 05:47:01', '1463125592:$P$B18cCeQnkYYQOF4g3ElE2uiXNpm2JM1', 0, 'nguyetuankiet'),
(127, 'Chaunguyen', '$P$BShXWfqpiewr9saB1omN8NF5WCjkZR.', 'chaunguyen', 'bichchau75@gmail.com', '', '2016-03-17 07:36:43', '1458200204:$P$BrxNJ50KlhES8FVeiPx7UhnOg0PQo00', 0, 'Chaunguyen'),
(128, 'ngocquang.info@gmail.com', '$P$BiaJ7Iq8YdlitKlibBQtO4K/aOKJ8j/', 'ngocquang-infogmail-com', 'ngocquang.info@gmail.com', '', '2016-03-17 07:49:22', '1458200963:$P$BCc5MNDCuW7OcssvxWv3xRe303JaOf0', 0, 'ngocquang.info@gmail.com'),
(129, 'nhdkhang', '$P$BfgNd1V5vN0h.ggDVKpdSUq0Pr11s81', 'nhdkhang', 'nhdkhang@ctu.edu.vn', '', '2016-03-17 10:17:01', '1458209821:$P$BuF/nYHQarF0TA0VgcelhIapP4YkVT0', 0, 'nhdkhang'),
(130, 'ndmongha@hcmussh.edu.vn', '$P$Bb3xQd1vPdTIH.v7d5nnTiBxy1s2tZ0', 'ndmonghahcmussh-edu-vn', 'ndmongha@hcmussh.edu.vn', '', '2016-03-17 10:28:23', '1458210504:$P$BoQeyFY4sL/Em23pB00gk8fKGldI811', 0, 'ndmongha@hcmussh.edu.vn'),
(131, 'nguyentronghue', '$P$BF1yo8MXvdna9XDiYqsmglxGztucu21', 'nguyentronghue', 'nguyentronghue@gmail.com', '', '2016-03-17 13:40:12', '1458222013:$P$BAS9CWiFhpn2bQO..ZO8gmeJBqYLFL1', 0, 'nguyentronghue'),
(132, 'nguyenthisau58@gmail.com', '$P$BNWwB1uskFTJ7L.IJLhpz4uAJBdUhF/', 'nguyenthisau58gmail-com', 'nguyenthisau58@gmail.com', '', '2016-03-18 01:29:32', '1458264573:$P$BvLt9Ug6WYEl187lOtwzFM6lUjIzcF/', 0, 'nguyenthisau58@gmail.com'),
(133, 'khanhkdv', '$P$BmFlUM29kN3NhmlDjrqcSR1VbpjmLj/', 'khanhkdv', 'cachuavs03@gmail.com', '', '2016-03-18 02:15:46', '1458267347:$P$BxB5QmutpHmIPIAmPxBsXskz4t9Q78.', 0, 'khanhkdv'),
(134, 'sondang', '$P$BOKEl/pQ5VB9UiBo20CZ0HcZAJeUe0/', 'sondang', 'sontruongdang@gmail.com', '', '2016-03-18 09:45:38', '1458294339:$P$BpBzvXlLF0K1UY8gKOuGyTzYdbBO341', 0, 'sondang'),
(135, 'Lannguyen', '$P$BonLCPyi7BAhDjK2oJulMJDyz6Xbqq1', 'lannguyen', 'mylannh@hcmussh.edu.vn', '', '2016-03-19 01:33:16', '1458351197:$P$B8Z8T/teendZKmy/yV.Uojych1PaW10', 0, 'Lannguyen'),
(136, 'duynam2212@yahoo.com', '$P$B0fmPDiH3i6Asc2uzVW04B7lZCyyvw.', 'duynam2212yahoo-com', 'duynam2212@yahoo.com', '', '2016-03-20 11:58:24', '1458475105:$P$BR51B77dVOWkupKxzM/deRziRIcP431', 0, 'duynam2212@yahoo.com'),
(137, 'tienanh', '$P$BPlOibevgkTApw7EzIf8FfFUJwSJVB1', 'tienanh', 'tienanh@hcmut.edu.vn', '', '2016-03-20 18:40:16', '1458499217:$P$B9NCTyh2cLczMBDySpczxVN5pL5AKi.', 0, 'tienanh'),
(138, 'lphvan', '$P$BC57NVa.zL2GX2uiyxSO7UHecDDhn7/', 'lphvan', 'hvan8283@gmail.com', '', '2016-03-22 00:30:25', '1458606626:$P$BS4UDZt67YQRdx9v8EluPC4QBYbkQK.', 0, 'lphvan'),
(139, 'ThuyTien', '$P$BoRvITNe6Ki1I1Kte5qM7H3d3kE54r.', 'thuytien', 'tienttt@tdmu.edu.vn', '', '2016-03-22 02:31:06', '1458613866:$P$BF2Xr55B/XmyXdepZRW4bUtHj1W4rf1', 0, 'ThuyTien'),
(140, 'peace', '$P$BLxc4/I7BaibRH6ifOQNBsdigDqSdm0', 'peace', 'thanhbinh301277@gmail.com', '', '2016-03-22 11:13:53', '1458645234:$P$Byjvmg76rndK7f0q.vCgBtQ3/vVAL50', 0, 'peace'),
(141, 'tranaicam', '$P$By5Y.W.9Q1uF6cI4Uk3ZSGowc1OxJ3/', 'tranaicam', 'tranaicam@gmail.com', '', '2016-03-24 08:20:12', '1458807613:$P$Bk7V5XKjpNNtlnAxr5BwZ.5zs6WZNk.', 0, 'tranaicam'),
(142, 'hungnq', '$P$BM5.6kaYImCy4XFwTYFZsmCHCOhpog1', 'hungnq', 'hungnq@uit.edu.vn', '', '2016-03-25 03:47:08', '1458877628:$P$BHbQ/VEo2j9beYU1qdhJG.nHeD9IRs.', 0, 'hungnq'),
(143, 'thanhth', '$P$BcTVI84WcqAjXxeFe1mWTSlhjo/sjT1', 'thanhth', 'thanhth@uel.edu.vn', '', '2016-03-25 08:09:32', '1458893373:$P$BtSkG0dHg9zKBSuyHvs.lZ/3c9xKRU1', 0, 'thanhth'),
(144, 'hoang_ba2001@yahoo.com', '$P$BdnW.VnRRr2GA61jOJUgHmj9CAd3XK0', 'hoang_ba2001yahoo-com', 'hoang_ba2001@yahoo.com', '', '2016-03-28 04:44:38', '1459140278:$P$BOet6PJ.icVagUYG8Slti.HovntO4M1', 0, 'hoang_ba2001@yahoo.com'),
(145, 'Maitonga', '$P$Byza4hm.Ve3RqBeX0K.GpLM4HfL8GL1', 'maitonga', 'maitonga@gmail.com', '', '2016-03-30 04:27:45', '1459312066:$P$BH9Q5LKpj2ZETi1KK9IgxtreWm6EEI1', 0, 'Maitonga'),
(146, 'khanhvatlieu', '$P$B068cWyVvtjdiaBnZqYTUz4uUPiHJe0', 'khanhvatlieu', 'hckhanh@hcmut.edu.vn', '', '2016-03-31 06:48:54', '1459406934:$P$BMhOaAPOWku1t8I2iVH7UKWe52EIM00', 0, 'khanhvatlieu'),
(147, 'MinhTan', '$P$BOpza3r6iykMQw60929XZ3IPiJ1u3l.', 'minhtan', 'minhtaniso@tvu.edu.vn', '', '2016-04-01 02:54:31', '1459479272:$P$BpZuTa4kvu.16xePXpCp1mwO115gr31', 0, 'MinhTan'),
(148, 'VuDuyCuong', '$P$BW2P1Ot68/NSjoAC0gcwRUpdgDSoNf1', 'vuduycuong', 'vuduycuong@gmail.com', '', '2016-04-05 09:02:00', '1462589307:$P$BdFkzccZB6OSKAwOxr3dGxvi1ipKUK.', 0, 'VuDuyCuong'),
(149, 'minhhoatdbcl', '$P$B7G668IqYhUjdPvjry6DaYMLLJZgIR/', 'minhhoatdbcl', 'minhhoat@hcmussh.edu.vn', '', '2016-04-07 00:02:08', '1459987329:$P$Bk8.6GFzpq8qTFIsw7vWQ2oDyY0A58/', 0, 'minhhoatdbcl'),
(150, 'test4', '$P$Bxigq3sJ4vXzpnyHyGOTko0Vsqn7Ud0', 'test4', 'test4@gmail.com', '', '2016-05-06 02:11:26', '1462500687:$P$BNEnwfBKVo24iGr7TwAvHN/7Wzlidg0', 0, 'test4'),
(151, 'test5', '$P$Bgs.EZP5zeCdmfA4XvuCxOactJ87Ox/', 'test5', 'test5@gmail.com', '', '2016-05-06 02:13:30', '1462500811:$P$BfMmYX2LDBCNdQumdHyPdrt146gz6j0', 0, 'test5'),
(152, 'TranNhuom', '$P$BAWtvXSToELvV5Ka0sbttCAyyqgu5F/', 'trannhuom', 'tvnhuom@tdu.edu.vn', '', '2016-05-06 03:12:36', '1462504522:$P$B6PORJWTDOL177407P5E.vHZTXcC1W1', 0, 'TranNhuom'),
(153, 'tvnhuom', '$P$BEkI5C6K3vTnoCfmRDTuEI3sdF2HHI0', 'tvnhuom', 'tvnhuomtdu@gmail.com', '', '2016-05-06 03:24:56', '1462505097:$P$B/7e4l972S8qMGzTOAO5th/Nmzx9w81', 0, 'tvnhuom'),
(154, 'test6', '$P$Bt7G90sNoY5JxcOnSnAFmb92gfar8L1', 'test6', 'test6@gmail.com', '', '2016-05-10 03:07:24', '1462849645:$P$BoS.j27dKZUC03iBKMwmPVtCH.52EG1', 0, 'test6'),
(155, 'tunghoangxuan', '$P$BlkBS9lL7yfsTktbk7h2eoCzKA3Bzt.', 'tunghoangxuan', 'hoangxuantung@yahoo.de', '', '2016-05-11 04:54:55', '1462942496:$P$B8jHE0jPLKZMPFirm8QN/T0gNzr7fy.', 0, 'tunghoangxuan'),
(156, 'Dohanhnga', '$P$B/KuGxopiL9F2hkRQOm4swmb3rgaNa.', 'dohanhnga', 'dohanhnga@gmail.com', '', '2016-05-11 06:27:40', '1462948061:$P$BkETCT182o3N4Z81oJ9hkKiWx.a5jX0', 0, 'Dohanhnga'),
(157, 'test7', '$P$BWu4VVLLCplHOS0XpL7bf0FtbDMeZL0', 'test7', 'test7@gmail.com', '', '2016-05-11 07:09:30', '1462950570:$P$BiUpIrKJ.qb84Ewd.oKibcuGp5Yx0h1', 0, 'test7'),
(158, 'serene', '$P$BvV5LqaMMXQa5MHXO9tnb5jKOHfyAE0', 'serene', 'thanhbinh301277@gmail.cpm', '', '2016-05-12 15:54:26', '1463068467:$P$Bbz0l3MjunK6rk9P.zrNiSDX49WbAx.', 0, 'serene'),
(159, 'buihaidang', '$P$BcFsfOoyn0cN1pCOt.W3xLggzMAK7c1', 'buihaidang', 'haidang2508@gmail.com', '', '2016-05-13 04:07:18', '1463112439:$P$BCBZekhRAAwAJoVFSEKg6OJmzqSBs1/', 0, 'buihaidang'),
(160, 'test8', '$P$Bh0uve0JOpGjkHblmHJhdeK9OKIYfu/', 'test8', 'test8@gmail.com', '', '2016-05-13 06:18:33', '1463120313:$P$BwSkoW6QZSL9szgu.xi3Gl5YDbSY0D0', 0, 'test8'),
(161, 'lhlthuy', '$P$BC2kSrKRZbcyXMFCSnJeUBs6k8lB4C/', 'lhlthuy', 'lhlthuy@tdu.edu.vn', '', '2016-05-16 03:35:32', '1463369733:$P$BF8ocwZeqSWk6qJe1aDJFMXADRVjue/', 0, 'lhlthuy'),
(162, 'tamlinh@namsaigon.edu.vn', '$P$BWdA.1fLY9KO312MuMW2D3ihFxx/pV1', 'tamlinhnamsaigon-edu-vn', 'tamlinh@namsaigon.edu.vn', '', '2016-05-17 02:54:28', '1463453668:$P$B6SZH1iS4ap0fg8//wN4eG3OXNjRo51', 0, 'tamlinh@namsaigon.edu.vn'),
(163, 'chauthuyna@yahoo.com', '$P$BSCkXlpbuDs.llpTiOordmGnqTK3DV1', 'chauthuynayahoo-com', 'chauthuyna@yahoo.com', '', '2016-05-19 11:25:59', '1463657160:$P$BWiZ43BAJhLTSyCH9/Ac9NRzZHUA0A0', 0, 'chauthuyna@yahoo.com'),
(164, 'vtphuoc', '$P$BaUCJQK193ty6F2uOhj4YILypbpSYs1', 'vtphuoc', 'vtphuoc@hcmiu.edu.vn', '', '2016-05-20 05:26:36', '1463721996:$P$Bxin85ljXon/z0k0aXMrwe5JGdH3WK1', 0, 'vtphuoc'),
(165, 'vinhhienbio', '$P$B4.gOuLRMwVQjgfqkklgRktGbMpWEG.', 'vinhhienbio', 'vinhhienbio@gmail.com', '', '2016-05-23 00:38:56', '1463963940:$P$BIvsvO0tu5XOfd2s/kK9iQAz3wYggU1', 0, 'vinhhienbio'),
(166, 'nhvduong', '$P$B6IuWbbfTlfOv48397D1ZR/iXIiy1C.', 'nhvduong', 'duongnv@bvu.edu.vn', '', '2016-06-12 12:32:59', '1465734781:$P$BHvuagX2FtCxLIrHdIHUlDttEcNL3e1', 0, 'nhvduong'),
(167, 'dbcl_tdc', '$P$BYtwH4aOrU9lJl5rFMBXpfyTqWIBjU1', 'dbcl_tdc', 'dbcl@tdc.edu.vn', '', '2016-06-23 15:52:57', '1466697177:$P$BroDTZ6GP2D1q7lbLgfiMdgTUEbIEH/', 0, 'dbcl_tdc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangviettat`
--
ALTER TABLE `bangviettat`
  ADD PRIMARY KEY (`Number`);

--
-- Indexes for table `cacdonvitochucdgn`
--
ALTER TABLE `cacdonvitochucdgn`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cackhoahoc`
--
ALTER TABLE `cackhoahoc`
  ADD PRIMARY KEY (`Number`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `danhmucmanganh`
--
ALTER TABLE `danhmucmanganh`
  ADD PRIMARY KEY (`Number`);

--
-- Indexes for table `dieukientimkiem`
--
ALTER TABLE `dieukientimkiem`
  ADD PRIMARY KEY (`Key`);

--
-- Indexes for table `nhanxet`
--
ALTER TABLE `nhanxet`
  ADD PRIMARY KEY (`Number`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `quatrinhcongtac`
--
ALTER TABLE `quatrinhcongtac`
  ADD PRIMARY KEY (`Number`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `thamgiadgn`
--
ALTER TABLE `thamgiadgn`
  ADD PRIMARY KEY (`Number`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `thongtinchung`
--
ALTER TABLE `thongtinchung`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `timkiem`
--
ALTER TABLE `timkiem`
  ADD PRIMARY KEY (`Key`);

--
-- Indexes for table `trinhdongoaingu`
--
ALTER TABLE `trinhdongoaingu`
  ADD PRIMARY KEY (`Number`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `trinhdothacsi`
--
ALTER TABLE `trinhdothacsi`
  ADD PRIMARY KEY (`Number`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `trinhdotiensi`
--
ALTER TABLE `trinhdotiensi`
  ADD PRIMARY KEY (`Number`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangviettat`
--
ALTER TABLE `bangviettat`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cacdonvitochucdgn`
--
ALTER TABLE `cacdonvitochucdgn`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cackhoahoc`
--
ALTER TABLE `cackhoahoc`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `danhmucmanganh`
--
ALTER TABLE `danhmucmanganh`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `dieukientimkiem`
--
ALTER TABLE `dieukientimkiem`
  MODIFY `Key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `nhanxet`
--
ALTER TABLE `nhanxet`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quatrinhcongtac`
--
ALTER TABLE `quatrinhcongtac`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT for table `thamgiadgn`
--
ALTER TABLE `thamgiadgn`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `thongtinchung`
--
ALTER TABLE `thongtinchung`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `timkiem`
--
ALTER TABLE `timkiem`
  MODIFY `Key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `trinhdongoaingu`
--
ALTER TABLE `trinhdongoaingu`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `trinhdothacsi`
--
ALTER TABLE `trinhdothacsi`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `trinhdotiensi`
--
ALTER TABLE `trinhdotiensi`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3981;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1644;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
