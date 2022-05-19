SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `hospital_db`
--
CREATE DATABASE IF NOT EXISTS `hospital_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hospital_db`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--
-- Creation: Oct 18, 2020 at 10:24 PM
-- Last update: Oct 19, 2020 at 08:57 AM
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `Appointment_ID` varchar(10) NOT NULL,
  `Patient_ID` varchar(255) NOT NULL,
  `Doctor_ID` varchar(255) NOT NULL,
  `Appointment_Date` date NOT NULL COMMENT 'yyyy-MM-dd',
  `Diagnosis` text DEFAULT NULL,
  `Prescription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Creating table for appointments';

--
-- RELATIONSHIPS FOR TABLE `appointment`:
--   `Doctor_ID`
--       `doctor` -> `Doctor_ID`
--   `Patient_ID`
--       `patient` -> `Patient_ID`
--   `Doctor_ID`
--       `doctor` -> `Doctor_ID`
--   `Patient_ID`
--       `patient` -> `Patient_ID`
--

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appointment_ID`, `Patient_ID`, `Doctor_ID`, `Appointment_Date`, `Diagnosis`, `Prescription`) VALUES
('A00001', 'P00001', 'D00001', '2020-10-01', 'Suy Tim', 'Crocin'),
('A00002', 'P00002', 'D00002', '2020-10-09', NULL, NULL),
('A01008', 'P00003', 'D00006', '2020-10-21', NULL, NULL),
('A01009', 'P00004', 'D00008', '2020-10-22', NULL, NULL),
('A00003', 'P00006', 'D00007', '2020-10-16', NULL, NULL),
('A00004', 'P00007', 'D00003', '2020-10-20', NULL, NULL),
('A00005', 'P00005', 'D00008', '2020-10-17', NULL, NULL),
('A00006', 'P00010', 'D00005', '2020-10-20', NULL, NULL),
('A00008', 'P00008', 'D00005', '2020-07-19', 'Ruột thừa ', 'Monitor Skin/Breast Vasc Perfus, ICG dye, Extern'),
('A00009', 'P00009', 'D00006', '2020-07-31', 'Viêm cổ tử cung', 'Supplement R Lg Intest with Nonaut Sub, Perc Endo Approach'),
('A00010', 'P00010', 'D00007', '2020-03-17', 'Rối loạn nhịp tim', 'Resection of Nasopharynx, Percutaneous Endoscopic Approach'),
('A00011', 'P00011', 'D00008', '2020-02-14', 'Viêm phế quản', 'Dilate of R Mid Lobe Bronc with Intralum Dev, Perc Approach'),
('A00012', 'P00012', 'D00009', '2020-05-21', 'Viêm họng', 'Replace Genitalia Skin w Nonaut Sub, Part Thick, Extern'),
('A00013', 'P00013', 'D00010', '2020-09-14', 'U não', 'Repair Right Lower Lung Lobe, Open Approach'),
('A00014', 'P00014', 'D00011', '2020-03-07', 'Viêm nướu', 'Drainage of Right Main Bronchus, Open Approach, Diagnostic'),
('A00015', 'P00015', 'D00012', '2020-07-23', 'Phẫu thuật cắt tuyến tiền liệt', 'Occlusion of Carina with Intraluminal Device, Perc Approach'),
('A00016', 'P00016', 'D00013', '2020-03-04', 'Đột quỵ', 'Reposition Lower Tooth, Multiple, External Approach'),
('A00017', 'P00017', 'D00014', '2020-09-30', 'Tiêm vaccine HPV', 'Revision of Nonaut Sub in Up Tendon, Extern Approach'),
('A00018', 'P00018', 'D00015', '2020-06-30', 'Phẫu thuật cổ tay', 'Revise Infusion Dev in R Metatarsophal Jt, Extern'),
('A00019', 'P00019', 'D00016', '2020-07-30', 'U xơ tử cung', 'Resection of Right Middle Lobe Bronchus, Open Approach'),
('A00020', 'P00020', 'D00017', '2020-08-07', 'Ruột thừa', 'Destruction of Back Subcu/Fascia, Perc Approach'),
('A00021', 'P00021', 'D00018', '2020-09-18', 'Đỏ da toàn thân và phát ban', 'Removal of Drain Dev from L Toe Phalanx Jt, Open Approach'),
('A00022', 'P00022', 'D00019', '2020-07-01', 'Tiêm vaccine ngừa viêm gan B', 'Drainage of Right Femoral Artery, Open Approach'),
('A00023', 'P00023', 'D00020', '2020-07-22', 'Viêm mũi dị ứng ', 'Bypass L Axilla Art to L Up Arm Art w Synth Sub, Open'),
('A00024', 'P00024', 'D00021', '2020-07-20', 'Thiếu máu cơ tim', 'Removal of Infusion Device from Spinal Cord, Open Approach'),
('A00025', 'P00025', 'D00022', '2020-08-21', 'Viêm nướu', 'Inspection of Vagina and Cul-de-sac, Via Opening'),
('A00026', 'P00026', 'D00023', '2020-07-25', 'Viêm phổi', 'Drainage of Sacral Nerve with Drainage Device, Perc Approach'),
('A00027', 'P00027', 'D00024', '2020-08-20', 'Động kinh', 'Revision of Drain Dev in Trunk Subcu/Fascia, Perc Approach'),
('A00028', 'P00028', 'D00025', '2020-01-25', 'Nứt gãy chân răng', 'Introduction of Anti-inflam into Pleural Cav, Perc Approach'),
('A00029', 'P00029', 'D00026', '2020-04-26', 'Suy Tim', 'Drainage of Uterus, Percutaneous Approach'),
('A00030', 'P00030', 'D00027', '2020-06-13', 'Rối loạn tiền đình', 'Removal of Autologous Tissue Substitute from Trachea, Endo'),
('A00031', 'P00031', 'D00028', '2020-05-13', 'Viêm tai giữa', 'Excision of Sacral Nerve, Percutaneous Approach'),
('A00032', 'P00032', 'D00029', '2020-06-22', 'Disp fx of cuboid bone of right foot, subs for fx w malunion', 'Insertion of Infusion Dev into Pancreat Duct, Perc Approach'),
('A00033', 'P00033', 'D00030', '2020-05-03', 'Nondisp fx of 2nd metatarsal bone, r ft, 7thD', 'Occlusion of Ileum with Extralum Dev, Perc Endo Approach'),
('A00034', 'P00034', 'D00031', '2020-10-17', 'Opioid dependence with intoxication, uncomplicated', 'Dilation of Left Lacrimal Duct, Endo'),
('A00035', 'P00035', 'D00032', '2020-03-30', 'Lacerat intrinsic musc/fasc/tend right thumb at wrs/hnd lv', 'Revision of Synthetic Substitute in Up Tendon, Open Approach'),
('A00036', 'P00036', 'D00033', '2020-04-11', 'Auditory recruitment, unspecified ear', 'Release Scrotum, Percutaneous Approach'),
('A00037', 'P00037', 'D00034', '2020-10-11', 'Portal vein thrombosis', 'Revise Drain Dev in L Temporomandib Jt, Perc Endo'),
('A00038', 'P00038', 'D00035', '2020-05-21', 'Oth chronic hematogenous osteomyelit, left tibia and fibula', 'Introduction of Clofarabine into Central Vein, Perc Approach'),
('A00039', 'P00039', 'D00036', '2020-01-30', 'Disp fx of greater tuberosity of unsp humerus, init', 'Alteration of R Low Eyelid with Nonaut Sub, Open Approach'),
('A00040', 'P00040', 'D00037', '2020-08-22', 'Duplications with other complex rearrangements', 'Release Peritoneum, Percutaneous Approach');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--
-- Creation: Oct 18, 2020 at 10:24 PM
-- Last update: Oct 18, 2020 at 10:32 PM
--


DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `Doctor_ID` varchar(255) NOT NULL,
  `D_Name` varchar(255) NOT NULL,
  `Specialty` varchar(255) NOT NULL,
  `D_Contact_Number` decimal(10,0) NOT NULL,
  `Visiting_Hours` varchar(40) NOT NULL,
  `Log_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Creating table for Doctors';

--
-- RELATIONSHIPS FOR TABLE `doctor`:
--   `Log_ID`
--       `users` -> `ID`
--   `Log_ID`
--       `users` -> `ID`
--

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_ID`, `D_Name`, `Specialty`, `D_Contact_Number`, `Visiting_Hours`, `Log_ID`) VALUES
('D00001', 'Đỗ Chí Kiệt', 'Khoa Tim Mạch', '9854521475', 'TR 17:00 - 20:00', 2),
('D00002', 'Nguyễn Văn Du', 'Khoa Thần Kinh', '7895821478', 'MWF 14:00 - 16:00', 4),
('D00003', 'Phạm Nguyễn Thùy Dung', 'Khoa Tim Mạch', '2605074792', 'MWF 14:00 - 18:00', 6),
('D00004', 'Trần Thuý Quân', 'Khoa Phẫu Thuật', '3867192330', 'SatSun 8:00 - 12:00', 7),
('D00005', 'Nguyễn Thị Thu Thuỳ', 'Khoa Phẫu Thuật', '2111825937', 'MWF 13:00 - 15:00', 8),
('D00006', 'Lê Thị Ánh Trang', 'Khoa Sản Phụ Khoa', '5679910973', 'SatSun 13:00 - 15:00', 9),
('D00007', 'Nguyễn Duy Thuận', 'Khoa Tim Mạch', '3366100802', 'TR 13:00 - 15:00', 10),
('D00008', 'Đinh Quốc Bảo', 'Khoa Nhi', '1088799314', 'MWF 17:00 - 20:00', 11),
('D00009', 'Lê Trung Trực', 'Khoa Tai - Mũi - Họng', '6165448080', 'MWF 16:00 - 20:00', 12),
('D00010', 'Nguyễn Thị Mỹ Hạ', 'Khoa Thần Kinh', '9596959055', 'TR 13:00 - 15:00', 13),
('D00011', 'Nguyễn Văn Linh', 'Khoa Răng - Hàm - Mặt', '8912478375', 'MWF 14:00 - 18:00', 14),
('D00012', 'Đỗ Đức Phong', 'Khoa Phẫu Thuật', '8632397550', 'SatSun 14:00 - 18:00', 15),
('D00013', 'Mai Quốc Thịnh', 'Khoa Thần Kinh', '2672645794', 'TR 8:00 - 12:00', 17),
('D00014', 'Đặng Ngọc Hiếu', 'Phòng Tiêm Chủng Vacxin', '7641351635', 'TR 8:00 - 12:00', 18),
('D00015', 'Trần Trang Anh', 'Khoa Phẫu Thuật', '5993770556', 'TR 13:00 - 15:00', 19),
('D00016', 'Nguyễn Mạnh Hiệp', 'Khoa Sản Phụ Khoa', '7874309191', 'MWF 16:00 - 20:00', 20),
('D00017', 'Nguyễn Văn Toàn', 'Khoa Phẫu Thuật', '9025107197', 'SatSun 10:00 - 13:00', 21),
('D00018', 'Lê Thị Mỹ Thương', 'Khoa Da Liễu', '6084806119', 'TR 10:00 - 13:00', 22),
('D00019', 'Nguyễn Huỳnh Tuấn Cường', 'Phòng Tiêm Chủng Vacxin', '4491545760', 'SatSun 14:00 - 18:00', 23),
('D00020', 'Hà Dương Mỹ	Ngọc', 'Khoa Tai - Mũi - Họng', '9996115847', 'MWF 13:00 - 15:00', 24),
('D00021', 'Hồ Đại	Lộc', 'Khoa Phẫu Thuật', '5126566779', 'SatSun 10:00 - 13:00', 25),
('D00022', 'Nguyễn Minh	Kỳ', 'Khoa Răng - Hàm - Mặt', '1273735965', 'MWF 10:00 - 13:00', 26),
('D00023', 'Đinh Xuân Chiến', 'Khoa Nhi', '4303154203', 'TR 8:00 - 12:00', 27),
('D00024', 'Võ Văn Thuận', 'Khoa Thần Kinh', '2403128998', 'TR 14:00 - 18:00', 28),
('D00025', 'Huỳnh Tấn Lợi', 'Khoa Răng - Hàm - Mặt', '4089963867', 'MWF 10:00 - 13:00', 29),
('D00026', 'Trần Quan Tây', 'Khoa Tim Mạch', '4767600369', 'MWF 16:00 - 20:00', 30),
('D00027', 'Nguyễn Văn	Hợp', 'Khoa Thần Kinh', '1027061041', 'TR 16:00 - 20:00', 31),
('D00028', 'Lê Ngọc	Báu', 'Khoa Tai - Mũi - Họng', '9994514401', 'SatSun 8:00 - 12:00', 32),
('D00029', 'Hầu Thanh Hiền', 'Khoa Nhi', '4688334638', 'MWF 13:00 - 15:00', 33);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--
-- Creation: Oct 18, 2020 at 10:24 PM
-- Last update: Oct 19, 2020 at 04:16 AM
--

DROP TABLE IF EXISTS `room_patient`;
CREATE TABLE `room_patient` (
  `Patient_ID` varchar(255) NOT NULL,
  `Room_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Creating table for room allocation to patients';

INSERT INTO `room_patient` (`Patient_ID`, `Room_ID`) VALUES
('P00001', 'R0001'),
('P00005', 'R0011'),
('P00009', 'R0012'),
('P00006', 'R0025'),
('P00040', 'R0075');

DROP TABLE IF EXISTS `room_staff`;
CREATE TABLE `room_staff` (
  `Room_ID` varchar(10) NOT NULL,
  `Staff_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Creating table for room assignment to staff';

--
-- RELATIONSHIPS FOR TABLE `room_staff`:
--   `Staff_ID`
--       `staff` -> `Staff_ID`
--   `Room_ID`
--       `room` -> `Room_ID`
--

--
-- Dumping data for table `room_staff`
--

INSERT INTO `room_staff` (`Room_ID`, `Staff_ID`) VALUES
('R0001', 'S0001'),
('R0009', 'S0004'),
('R0012', 'S0008'),
('R0006', 'S0425');

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `Patient_ID` varchar(255) NOT NULL,
  `P_Name` varchar(255) NOT NULL,
  `Sex` varchar(1) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `P_Contact_Number` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Creating table for Patients';

--
-- RELATIONSHIPS FOR TABLE `patient`:
--

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_ID`, `P_Name`, `Sex`, `Address`, `P_Contact_Number`) VALUES
('P00001', 'Hà Thị Kim Ly', 'F', 'Tiền Giang', '9852014788'),
('P00002', 'Lê Thị Ngọc Linh', 'F', 'Điện Biên', '2452583360'),
('P00003', 'Nguyễn Tiến Đạt', 'M', 'Hưng Yên', '2028444802'),
('P00004', 'Dương Quốc Chương', 'M', 'Gia Lai', '7205886445'),
('P00005', 'Nguyễn Trần Kim Anh ', 'F', 'Bình Định', '4048003411'),
('P00006', 'Đỗ Thị Hải Anh', 'F', 'Hà Tĩnh', '9049794693'),
('P00007', 'Nguyễn Trần Thái Bình', 'M', 'Phú Yên', '4144764158'),
('P00008', 'Đặng Thị Thu Cúc', 'F', 'Đà Lạt', '8169078452'),
('P00009', 'Nguyễn Kiều Mỹ Hoa', 'F', 'Ninh Thuận', '7652190360'),
('P00010', 'Trần Minh Hiếu', 'M', 'Yên Bái', '6166498489'),
('P00011', 'Hà Nguyễn Khánh Huy', 'M', 'Đà Lạt', '4194071061'),
('P00012', 'Bùi Thanh Huyền', 'F', 'Hà Nội', '2547324116'),
('P00013', 'Cao Mỹ Diên', 'F', 'Bình Định', '3048691036'),
('P00014', 'Nguyễn Công Luận', 'F', 'Gia Lai', '2819735041'),
('P00015', 'Nguyễn Lê Phượng Nhi', 'F', 'Vũng Tàu', '7089308086'),
('P00016', 'Nguyễn Thị Mai Trang', 'F', 'Bình Dương', '9701449865'),
('P00017', ' Trần Ngọc Trọng', 'M', 'Đông Nai', '9152348537'),
('P00018', 'Nguyễn Hoàng Tú', 'M', 'Cần Thơ', '6017660119'),
('P00019', 'Trương Tấn Vũ', 'M', 'Lào Cai', '7206866455'),
('P00020', 'Nguyễn Thị Thanh Vân', 'F', 'Bình Thuận', '3239543858'),
('P00021', 'Kiều Duy', 'M', 'Hà Tĩnh', '3475442768'),
('P00022', 'Nguyễn Thị Huyền Ngân', 'F', 'Ninh Thuận', '5599513352'),
('P00023', 'Võ Nguyễn Minh Nhựt', 'M', 'Bắc Giang', '4347409682'),
('P00024', 'Nguyễn Mạnh Tùng', 'M', 'Hải Phòng', '9156342073'),
('P00025', 'Nguyễn Vũ Quốc Việt', 'M', 'Kon Tum', '5739042125'),
('P00026', 'Hồ Ngọc Huyền', 'F', 'Cần Thơ', '2021599939'),
('P00027', 'Trương Thị Ý Nhi', 'F', 'Bình Định', '2137045175'),
('P00028', 'Lê Thị Thương', 'F', 'Hải Dương', '8131982097'),
('P00029', 'Nguyễn Văn Phong', 'M', 'Sóc Trăng', '3369044176'),
('P00030', 'Nguyễn Thành Đạt', 'M', 'An Giang', '7166081443'),
('P00031', 'Nguyễn Chí Công', 'F', 'Cà Mau', '9413538584'),
('P00032', 'Đặng Thanh Lâm', 'M', 'Kiên Giang', '2027039949'),
('P00033', 'Nguyễn Trọng Hiếu', 'M', 'Hà Nội', '5855077484'),
('P00034', 'Đặng Thị Thúy Liểu', 'F', 'Lạng Sơn', '4086971032'),
('P00035', 'Đoàn Diễm Phong', 'M', 'Thanh Hóa', '4047691147'),
('P00036', 'Nguyễn Hữu Toàn', 'M', 'Thái Bình', '4065740313'),
('P00037', 'Trương Thanh Bình', 'M', 'Thừa Thiên - Huế', '4781698790'),
('P00038', 'Tạ Văn Chiến', 'M', 'Đà Nẵng', '9418459803'),
('P00039', 'Cao Tấn Đạt', 'M', 'Quảng Trị', '5205655894'),
('P00040', 'Dương Ngọc Hải', 'M', 'Bến Tre', '8506728593');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--
-- Creation: Oct 18, 2020 at 10:24 PM
-- Last update: Oct 19, 2020 at 08:14 AM
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `Room_ID` varchar(10) NOT NULL,
  `Room_Type` varchar(255) NOT NULL,
  `Room_Status` varchar(255) NOT NULL DEFAULT 'Unassigned'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Creating table for Room';

--
-- RELATIONSHIPS FOR TABLE `room`:
--

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_ID`, `Room_Type`, `Room_Status`) VALUES
('R0001', 'General Ward', 'Assigned'),
('R0006', 'Operation Theater', 'Unassigned'),
('R0007', 'General Ward', 'Unassigned'),
('R0009', 'Operation Theater', 'Unassigned'),
('R0011', 'General Ward', 'Assigned'),
('R0012', 'General Ward', 'Assigned'),
('R0013', 'ICU', 'Unassigned'),
('R0014', 'Long Term ICU', 'Unassigned'),
('R0015', 'General Ward', 'Unassigned'),
('R0016', 'Operation Theater', 'Unassigned'),
('R0017', 'Operation Theater', 'Unassigned'),
('R0018', 'ICU', 'Unassigned'),
('R0019', 'General Ward', 'Unassigned'),
('R0020', 'Operation Theater', 'Unassigned'),
('R0021', 'ICU', 'Unassigned'),
('R0022', 'Operation Theater', 'Unassigned'),
('R0023', 'Operation Theater', 'Unassigned'),
('R0024', 'ICU', 'Unassigned'),
('R0025', 'NICU', 'Assigned'),
('R0026', 'General Ward', 'Unassigned'),
('R0027', 'PICU', 'Unassigned'),
('R0028', 'Operation Theater', 'Unassigned'),
('R0029', 'General Ward', 'Unassigned'),
('R0030', 'General Ward', 'Unassigned'),
('R0031', 'Operation Theater', 'Unassigned'),
('R0032', 'Long Term ICU', 'Unassigned'),
('R0033', 'ICU', 'Unassigned'),
('R0034', 'ICU', 'Unassigned'),
('R0035', 'PICU', 'Unassigned'),
('R0036', 'Operation Theater', 'Unassigned'),
('R0037', 'ICU', 'Unassigned'),
('R0038', 'ICU', 'Unassigned'),
('R0039', 'ICU', 'Unassigned'),
('R0040', 'Long Term ICU', 'Unassigned'),
('R0041', 'Operation Theater', 'Unassigned'),
('R0042', 'ICU', 'Unassigned'),
('R0043', 'General Ward', 'Unassigned'),
('R0044', 'General Ward', 'Unassigned'),
('R0045', 'Long Term ICU', 'Unassigned'),
('R0046', 'PICU', 'Unassigned'),
('R0047', 'General Ward', 'Unassigned'),
('R0048', 'Operation Theater', 'Unassigned'),
('R0049', 'Operation Theater', 'Unassigned'),
('R0050', 'Operation Theater', 'Unassigned'),
('R0051', 'ICU', 'Unassigned'),
('R0052', 'PICU', 'Unassigned'),
('R0053', 'General Ward', 'Unassigned'),
('R0054', 'ICU', 'Unassigned'),
('R0055', 'NICU', 'Unassigned'),
('R0056', 'ICU', 'Unassigned'),
('R0057', 'ICU', 'Unassigned'),
('R0058', 'NICU', 'Unassigned'),
('R0059', 'Operation Theater', 'Unassigned'),
('R0060', 'ICU', 'Unassigned'),
('R0061', 'NICU', 'Unassigned'),
('R0062', 'Long Term ICU', 'Unassigned'),
('R0063', 'ICU', 'Unassigned'),
('R0064', 'Operation Theater', 'Unassigned'),
('R0065', 'ICU', 'Unassigned'),
('R0066', 'PICU', 'Unassigned'),
('R0067', 'Long Term ICU', 'Unassigned'),
('R0068', 'General Ward', 'Unassigned'),
('R0069', 'Operation Theater', 'Unassigned'),
('R0070', 'General Ward', 'Unassigned'),
('R0071', 'General Ward', 'Unassigned'),
('R0072', 'General Ward', 'Unassigned'),
('R0073', 'General Ward', 'Unassigned'),
('R0074', 'Long Term ICU', 'Unassigned'),
('R0075', 'General Ward', 'Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `room_patient`
--
-- Creation: Oct 19, 2020 at 08:12 AM
-- Last update: Oct 19, 2020 at 08:14 AM
--

/*DROP TABLE IF EXISTS `room_patient`;
CREATE TABLE `room_patient` (
  `Patient_ID` varchar(255) NOT NULL,
  `Room_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Creating table for room allocation to patients';*/

--
-- RELATIONSHIPS FOR TABLE `room_patient`:
--   `Patient_ID`
--       `patient` -> `Patient_ID`
--   `Room_ID`
--       `room` -> `Room_ID`
--

--
-- Dumping data for table `room_patient`
--

/*INSERT INTO `room_patient` (`Patient_ID`, `Room_ID`) VALUES
('P00001', 'R0001'),
('P00005', 'R0011'),
('P00009', 'R0012'),
('P00006', 'R0025'),
('P00040', 'R0075');*/

-- --------------------------------------------------------

--
-- Table structure for table `room_staff`
--
-- Creation: Oct 18, 2020 at 10:24 PM
-- Last update: Oct 19, 2020 at 08:14 AM
--

DROP TABLE IF EXISTS `room_staff`;
CREATE TABLE `room_staff` (
  `Room_ID` varchar(10) NOT NULL,
  `Staff_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Creating table for room assignment to staff';

--
-- RELATIONSHIPS FOR TABLE `room_staff`:
--   `Staff_ID`
--       `staff` -> `Staff_ID`
--   `Room_ID`
--       `room` -> `Room_ID`
--

--
-- Dumping data for table `room_staff`
--

INSERT INTO `room_staff` (`Room_ID`, `Staff_ID`) VALUES
('R0001', 'S0001'),
('R0009', 'S0004'),
('R0012', 'S0008'),
('R0006', 'S0425');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--
-- Creation: Oct 18, 2020 at 10:24 PM
-- Last update: Oct 19, 2020 at 04:23 AM
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `Staff_ID` varchar(10) NOT NULL,
  `Staff_Name` varchar(255) NOT NULL,
  `Staff_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Creating table for Staff';

--
-- RELATIONSHIPS FOR TABLE `staff`:
--

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Staff_Name`, `Staff_Type`) VALUES
('S0001', 'Phạm Đặng Hải Vân', 'Nurse'),
('S0002', 'Trần Thị Tuyết Trinh', 'Nurse'),
('S0003', 'Trương Thanh Bình', 'Ward Boy'),
('S0004', 'Nguyễn Thị Thanh Trúc', 'Nurse'),
('S0005', 'Tạ Văn Chiến', 'Ward Boy'),
('S0006', 'Tống Triệu Vy', 'Nurse'),
('S0007', 'Nguyễn Thị Kim Chi', 'Nurse'),
('S0008', 'Cao Tấn Đạt', 'Ward Boy'),
('S0009', 'Nguyễn Lương Minh Hạnh', 'Nurse'),
('S0010', 'Phạm Ngọc Hiếu', 'Ward Boy'),
('S0011', 'Lê Đoàn Quốc Khải', 'Ward Boy'),
('S0012', 'Lê Thị Nga', 'Nurse'),
('S0013', 'Phạm Xuân Mạnh', 'Ward Boy'),
('S0014', 'Lê Minh Ngọc', 'Nurse'),
('S0015', 'Phan Xuân Như', 'Nurse'),
('S0016', 'Mai Văn Phú', 'Ward Boy'),
('S0017', 'Đỗ Ngọc Thu Thủy', 'Nurse'),
('S0018', 'Nguyễn Thị Thanh Trâm', 'Nurse'),
('S0019', 'Trần Thị Ngọc Thanh', 'Nurse'),
('S0020', 'Đinh Như Quỳnh', 'Nurse'),
('S0021', 'Lê Thanh Phương', 'Nurse'),
('S0022', 'Nguyễn Văn Quang', 'Ward Boy'),
('S0023', 'Lê Thị Thanh Trúc', 'Nurse'),
('S0024', 'Phạm Thiện Vy', 'Nurse'),
('S0025', 'Nguyễn Trần Hiền Vy', 'Nurse'),
('S0026', 'Nguyễn Trần Quốc Cường ', 'Ward Boy'),
('S0027', 'Phạm Xuân Diệu', 'Nurse'),
('S0028', 'Hoàng Nguyễn Thiên Dương', 'Ward Boy'),
('S0029', 'Trương Thị Thùy Dung', 'Nurse'),
('S0030', 'Nguyễn Thị Thúy Hằng', 'Nurse'),
('S0031', ' Phạm Thị Ngọc Hân', 'Nurse'),
('S0032', 'Lương Thị Ánh Hồng', 'Nurse'),
('S0033', 'Huỳnh Thị Hồng', 'Nurse'),
('S0034', 'Ngô Thị Minh Hương', 'Nurse'),
('S0035', 'Nguyễn Trịnh Kiều Mi', 'Nurse'),
('S0036', 'Nguyễn Ngọc Nhân', 'Ward Boy'),
('S0037', 'Nguyễn Đỗ Kiều Nhi', 'Nurse'),
('S0038', 'Đỗ Phạm Thu Phương', 'Nurse'),
('S0039', 'Huỳnh Thị Ly Tâm', 'Nurse'),
('S0040', 'Đào Hoàng Thu', 'Nurse'),
('S0041', 'Cao Thị Minh Thuý', 'Nurse'),
('S0042', 'Nguyễn Thị Na Tra', 'Nurse'),
('S0043', 'Võ Thị Huyền Trang', 'Nurse'),
('S0044', 'Chế Mai Huyền Trân', 'Nurse'),
('S0045', 'Huỳnh Thị Thủy Tuyên', 'Nurse'),
('S0046', 'Trần Như Ý', 'Nurse'),
('S0047', 'Trịnh Nguyễn Vy Na', 'Nurse'),
('S0048', 'Nguyễn Hương Duyên', 'Nurse'),
('S0049', 'Bùi Thanh Tiến Đạt', 'Ward Boy'),
('S0050', 'Đinh Thị Kim Thỏa', 'Nurse'),
('S0051', ' Nguyễn Ngọc Tiểu Thư', 'Nurse'),
('S0052', 'Phan Ngọc Như Tranh', 'Nurse'),
('S0053', 'Nguyễn Thị Thanh', 'Nurse'),
('S0054', 'Nguyễn Đức Thắng', 'Ward Boy'),
('S0055', 'Đặng Thị Thảo Vi', 'Nurse'),
('S0056', 'Lê Công Tuấn', 'Ward Boy'),
('S0057', 'Phạm Quang Vinh', 'Ward Boy'),
('S0058', 'Võ Thị Tường Vi', 'Nurse'),
('S0059', 'Cao Thị Thu Diền', 'Nurse'),
('S0060', 'Nguyễn Ngọc Ánh', 'Nurse'),
('S0061', 'Nguyễn Trí Bảo', 'Ward Boy'),
('S0062', 'Nguyễn Thị Hoàng Diệu', 'Nurse'),
('S0063', 'Nguyễn Thị Hoàng Dung', 'Nurse'),
('S0064', 'Huỳnh Thị Thu Hiếu', 'Nurse'),
('S0065', 'Phạm Thị Kim Ngân', 'Nurse'),
('S0066', 'Nguyễn Thị Trà My', 'Nurse'),
('S0067', 'Lê Yến Nhi', 'Nurse'),
('S0068', 'Trần Quốc Chương', 'Ward Boy'),
('S0069', 'Tạ Đình Chương', 'Ward Boy'),
('S0070', 'Trần Thị Mỹ Linh', 'Nurse'),
('S0071', 'Phạm Kim Huệ', 'Nurse'),
('S0072', 'Châu Nguyên Thảo Giang', 'Nurse'),
('S0073', 'Hà Trung Hiếu', 'Ward Boy'),
('S0074', 'Võ Thị Trà My', 'Nurse'),
('S0075', 'Đinh Hải Phương', 'Ward Boy'),
('S0076', 'Ngô Trấn Phong', 'Ward Boy'),
('S0077', 'Nguyễn Ngọc Thanh Thúy', 'Nurse'),
('S0078', 'Ngô Thị Thu Trang', 'Nurse'),
('S0079', 'Nguyễn Diệp Tú Trân', 'Nurse'),
('S0080', 'Trần Công Ty', 'Ward Boy'),
('S0081', 'Phạm Phương Uyên', 'Nurse'),
('S0082', 'Hoàng Thụy Mỹ Ý', 'Nurse'),
('S0083', 'Nguyễn Thảo Bình', 'Ward Boy'),
('S0084', 'Lê Vân Anh', 'Nurse'),
('S0085', 'Đặng Thị Bảo Châu', 'Nurse'),
('S0086', 'Nguyễn Thị Duyên', 'Nurse'),
('S0087', 'Nguyễn Thị Trà My', 'Nurse'),
('S0088', 'Trần Thúy Nga', 'Nurse'),
('S0089', 'Nguyễn Phương Nguyên', 'Nurse'),
('S0090', 'Nông Thị Yến Nhi', 'Nurse'),
('S0091', 'Vũ Thị Thắm', 'Nurse'),
('S0092', 'Nguyễn Thị Anh Thư', 'Nurse'),
('S0093', 'Phan Bảo Yến', 'Nurse'),
('S0094', 'Phạm Thùy Dung', 'Nurse'),
('S0095', 'Nguyễn Thị Thu Hiền', 'Nurse'),
('S0096', 'Thiều Thị Hồng', 'Nurse'),
('S0097', 'Võ Nguyễn Thùy Linh', 'Nurse'),
('S0098', 'Trần Thị Diễm My', 'Nurse'),
('S0099', 'Nguyễn Thị Phước Nhi', 'Nurse'),
('S0100', 'Nguyễn Lê Thảo Quyên', 'Nurse');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Oct 18, 2020 at 10:24 PM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `User_Name` varchar(20) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `User_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Creating table for User';

-- --
-- -- RELATIONSHIPS FOR TABLE `users`:
-- --

-- --
-- -- Dumping data for table `users`
-- --

INSERT INTO `users` (`ID`, `Name`, `User_Name`, `Password`, `User_Type`) VALUES
(1, 'Trần Thị Mỹ Duyên', 'myduyen', 'myduyen', 'Receptionist'),
(2, 'Đỗ Chí Kiệt', 'chikiet', 'chikiet', 'Doctor'),
(3, 'Nguyễn Ngọc Nhân', 'ngocnhan', 'ngocnhan', 'Pharmacist'),
(4, 'Nguyễn Văn Du', 'vandu', 'vandu', 'Doctor'),
(5, 'Nguyễn Thị Thúy Hằng', 'thuyhang', 'thuyhang', 'Receptionist'),
(6, 'Phạm Nguyễn Thùy Dung', 'thuydung', 'thuydung', 'Doctor'),
(7, 'Trần Thuý Quân', 'thuyquan', 'thuyquan', 'Doctor'),
(8, 'Nguyễn Thị Thu Thuỳ', 'thuthuy', 'thuthuy', 'Doctor'),
(9, 'Lê Thị Ánh Trang', 'anhtrang', 'anhtrang', 'Doctor'),
(10, 'Nguyễn Duy Thuận', 'duythuan', 'duythuan', 'Doctor'),
(11, 'Đinh Quốc Bảo', 'quocbao', 'quocbao', 'Doctor'),
(12, 'Lê Trung Trực', 'trungtruc', 'trungtruc', 'Doctor'),
(13, 'Nguyễn Thị Mỹ Hạ', 'myha', 'myha', 'Doctor'),
(14, 'Nguyễn Văn Linh', 'vanlinh', 'vanlinh', 'Doctor'),
(15, 'Đỗ Đức Phong', 'ducphong', 'ducphong', 'Doctor'),
(16, 'Lê Thị Thùy Hương', 'thuyhuong', 'thuyhuong', 'Receptionist'),
(17, 'Mai Quốc Thịnh', 'quocthinh', 'quocthinh', 'Doctor'),
(18, 'Đặng Ngọc Hiếu', 'ngochieu', 'ngochieu', 'Doctor'),
(19, 'Trần Trang Anh', 'tranganh', 'tranganh', 'Doctor'),
(20, 'Nguyễn Mạnh Hiệp', 'manhhiep', 'manhhiep', 'Doctor'),
(21, 'Nguyễn Văn Toàn', 'vantoan', 'vantoan', 'Doctor'),
(22, 'Lê Thị Mỹ Thương', 'mythuong', 'mythuong', 'Doctor'),
(23, 'Nguyễn Huỳnh Tuấn Cường', 'tuancuong', 'tuancuong', 'Doctor'),
(24, 'Hà Dương Mỹ Ngọc', 'myngoc', 'myngoc', 'Doctor'),
(25, 'Hồ Đại Lộc', 'dailoc', 'dailoc', 'Doctor'),
(26, 'Nguyễn Minh Kỳ', 'minhky', 'minhky', 'Doctor'),
(27, 'Đinh Xuân Chiến', 'xuanchien', 'xuanchien', 'Doctor'),
(28, 'Võ Văn Thuận', 'vanthuan', 'vanthuan', 'Doctor'),
(29, 'Huỳnh Tấn Lợi', 'tanloi', 'tanloi', 'Doctor'),
(30, 'Trần Quan Tây', 'quantay', 'quantay', 'Doctor'),
(31, 'Nguyễn Văn Hợp', 'vanhop', 'vanhop', 'Doctor'),
(32, 'Lê Ngọc Báu', 'ngocbau', 'ngocbau', 'Doctor'),
(33, 'Hầu Thanh Hiền', 'thanhhien', 'thanhhien', 'Doctor');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appointment_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_ID`),
  ADD KEY `Log_ID` (`Log_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_ID`);

--
-- Indexes for table `room_patient`
--
ALTER TABLE `room_patient`
  ADD UNIQUE KEY `Patient_ID_2` (`Patient_ID`),
  ADD UNIQUE KEY `Room_ID_2` (`Room_ID`);

--
-- Indexes for table `room_staff`
--
ALTER TABLE `room_staff`
  ADD KEY `Staff_ID` (`Staff_ID`),
  ADD KEY `Room_ID` (`Room_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);
  

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
SET foreign_key_checks = 0;
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`);
SET foreign_key_checks = 1;

--
-- Constraints for table `doctor`
--
SET foreign_key_checks = 0;
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Log_ID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
SET foreign_key_checks = 1;

--
-- Constraints for table `room_patient`
--
ALTER TABLE `room_patient`
  ADD CONSTRAINT `room_patient_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  ADD CONSTRAINT `room_patient_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`) ON DELETE CASCADE;
--
-- Constraints for table `room_staff`
--
SET foreign_key_checks = 0;
ALTER TABLE `room_staff`
  ADD CONSTRAINT `room_staff_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`),
  ADD CONSTRAINT `room_staff_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`) ON DELETE CASCADE;
SET foreign_key_checks = 1;
COMMIT;

