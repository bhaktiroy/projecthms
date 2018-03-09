-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2018 at 02:09 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bhakti_hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admit_info`
--

CREATE TABLE `admit_info` (
  `id` int(11) NOT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `bedno` varchar(10) DEFAULT NULL,
  `pprblm` varchar(20) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `visible` varchar(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admit_info`
--

INSERT INTO `admit_info` (`id`, `pname`, `bedno`, `pprblm`, `position`, `date`, `visible`, `ts`) VALUES
(1, 'paglu', '1', 'heart', 'very weak', '2018-02-03', '0', '2018-02-27 22:22:51'),
(2, 'joy', '1', 'heart', 'very weak', '2018-02-02', '1', '2018-02-27 23:02:02'),
(3, '', '', '', '', '0000-00-00', '0', '2018-02-28 18:22:33'),
(4, '', '', '', '', '0000-00-00', '0', '2018-03-01 14:35:57'),
(5, 'Anjona bissas', '12', 'Heart Problem', 'goood', '2018-03-02', '1', '2018-03-08 16:42:34'),
(6, 'Md.Azmol Hossain', '15', 'Cardio Problem', 'better', '2018-03-05', '1', '2018-03-08 16:43:44'),
(7, 'Sajia Sharmin', '32', 'Gyno Problem', 'goood', '2018-03-02', '1', '2018-03-08 16:50:03'),
(8, 'Mahabubur Rahman', '33', 'Cardio Problem', 'very weak', '2018-03-04', '1', '2018-03-08 16:52:05'),
(9, 'Nurul Islam', '35', 'Cancer', 'very weak', '2018-03-05', '1', '2018-03-08 16:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `appoint`
--

CREATE TABLE `appoint` (
  `pname` varchar(200) DEFAULT NULL,
  `dname` varchar(200) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `fee` int(100) DEFAULT NULL,
  `visible` varchar(100) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pprblm` varchar(20) DEFAULT NULL,
  `paddress` varchar(20) DEFAULT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appoint`
--

INSERT INTO `appoint` (`pname`, `dname`, `time`, `date`, `fee`, `visible`, `ts`, `pprblm`, `paddress`, `gender`, `id`) VALUES
('Md.Azmol Hossain', 'Dr.Joe Zonjals', '01:00pm', '2018-03-03', 1000, '1', '2018-03-08 15:30:39', 'Heart Problem', 'Pirgacha, Rangpur', 'Male', 1),
('Sajia Sharmin', 'Dr.Sahidul Islam', '2:00pm', '2018-03-03', 1000, '1', '2018-03-08 15:32:24', 'Gyno Problem', 'Setabganj Dinajpur', 'Female', 2),
('gg', '', '', '0000-00-00', 0, '0', '2018-02-28 18:38:31', '', '', '', 3),
('Shimul Roy', 'Dr.Santunu Bos', '03:00pm', '2018-03-04', 1000, '1', '2018-03-08 15:34:00', 'Cancer', 'Eidgahbasti, Dinajpu', 'Female', 4),
('Krishno Kanto Roy', 'Dr.Joe Zonjals', '12:00pm', '2018-03-05', 1000, '1', '2018-03-08 15:34:54', 'Cardio Problem', 'Pirgacha, Rangpur', 'Male', 5),
('', '', '', '0000-00-00', 0, '0', '2018-02-28 18:19:28', '', '', '', 6),
('', '', '', '0000-00-00', 0, '0', '2018-02-28 18:38:15', '', '', '', 7),
('', '', '', '0000-00-00', 0, '0', '2018-03-01 14:33:57', '', '', '', 8),
('Mahabubur Rahman', 'Dr.Karimul Islam', '12:00pm', '2018-03-02', 500, '1', '2018-03-08 15:28:27', 'Pediatric Problem', 'Dinajpur Sadar', 'Male', 9),
('Anjona bissas', 'Dr.Joe Zonjals', '12:00pm', '2018-03-04', 1000, '1', '2018-03-08 15:43:29', 'Heart Problem', 'Setabganj Dinajpur', 'Female', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bhakti_admin`
--

CREATE TABLE `bhakti_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bhakti_admin`
--

INSERT INTO `bhakti_admin` (`id`, `loginid`, `password`) VALUES
(1, 'bhakti', 'bhakti1234');

-- --------------------------------------------------------

--
-- Table structure for table `birth_info`
--

CREATE TABLE `birth_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `visible` varchar(10) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birth_info`
--

INSERT INTO `birth_info` (`id`, `name`, `fname`, `mname`, `address`, `time`, `date`, `gender`, `visible`, `ts`) VALUES
(1, 'tomi', 'Rajat', 'Rani', 'dhaka', '09:00pm', '2018-02-02', 'Female', '0', '2018-02-28 00:38:34'),
(2, 'tomi', 'Rajat', 'Rani', 'dinajpur', '02:00pm', '2018-02-03', 'Female', '1', '2018-02-28 00:38:57'),
(3, '', '', '', '', '', '0000-00-00', '', '0', '2018-03-01 14:36:47'),
(4, 'Forhat Hossain', 'Kamrul Hasan', 'Amina begum', 'Dinajpur Sadar', '12:00pm', '2018-03-05', 'Male', '1', '2018-03-08 17:12:03'),
(5, 'Karina Khatun', 'Osman Ali', 'Asma Khatun', 'Pirgacha, Rangpur', '2:00pm', '2018-03-04', 'Female', '1', '2018-03-08 17:15:07'),
(6, 'Sahida Islam', 'Abdul Mannan', 'Shahina Islam', 'Dhaka', '12:00pm', '2018-03-04', 'Female', '1', '2018-03-08 17:17:17'),
(7, 'Maya Chowdhury', 'Milon Chowdhury', 'Mimi Chowdhury', 'Dhaka', '12:00pm', '2018-03-04', 'Female', '1', '2018-03-08 17:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `bgroup` varchar(20) DEFAULT NULL,
  `donrname` varchar(50) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `visible` varchar(10) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`bgroup`, `donrname`, `pname`, `date`, `visible`, `ts`, `id`) VALUES
('A+', 'voktu', 'joyi', '2018-02-03', '1', '2018-02-27 19:37:01', 1),
('', '', '', '0000-00-00', '0', '2018-02-27 19:43:33', 2),
('A+', 'Md.Mohasan Ali', 'Nurul Islam', '2018-03-04', '1', '2018-03-08 16:19:36', 3),
('', '', '', '0000-00-00', '0', '2018-02-28 18:21:32', 4),
('', '', '', '0000-00-00', '0', '2018-02-28 18:37:09', 5),
('', '', '', '0000-00-00', '0', '2018-02-28 18:37:06', 6),
('', '', '', '0000-00-00', '0', '2018-03-01 14:35:10', 7),
('O -', 'Hosneara Parvin', 'Krishno Kanto Roy', '2018-03-02', '1', '2018-03-08 16:19:03', 8),
('B+', 'Md.Limon Parvez', 'Anjona bissas', '2018-03-05', '1', '2018-03-08 16:20:20', 9),
('O+', 'Hosneara Parvin', 'Partho Banerzee', '2018-03-05', '1', '2018-03-08 16:21:10', 10),
('AB+', 'Bikas Barman', 'Hosneara Parvin', '2018-03-05', '1', '2018-03-08 16:21:51', 11),
('AB-', 'Bikas Barman', 'Mahabubur Rahman', '2018-03-02', '1', '2018-03-08 16:22:21', 12);

-- --------------------------------------------------------

--
-- Table structure for table `death_info`
--

CREATE TABLE `death_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `visible` varchar(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `death_info`
--

INSERT INTO `death_info` (`id`, `name`, `address`, `gender`, `time`, `date`, `visible`, `ts`) VALUES
(1, 'paglu', 'dinajpur', 'Female', '02:00pm', '2018-02-03', '0', '2018-02-28 00:06:01'),
(2, 'Karina Begum', 'Ranpur Sadar', 'Female', '2:00pm', '2018-03-02', '1', '2018-03-08 17:08:15'),
(3, '', '', '', '', '0000-00-00', '0', '2018-03-01 14:36:33'),
(4, 'Maya Chowdhury', 'Dhaka', 'Female', '12:00pm', '2018-03-05', '1', '2018-03-08 17:07:52'),
(5, 'Shirin Akter', 'Biral, Dinajpur', 'Female', '12:00pm', '2018-03-04', '1', '2018-03-08 17:09:29'),
(6, 'Sahid Islam', 'Dhaka', 'Male', '12:00pm', '2018-03-03', '1', '2018-03-08 17:10:34'),
(7, 'Rejaul Haque', 'Dinajpur Sadar', 'Male', '12:00pm', '2018-03-04', '1', '2018-03-08 17:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `user`, `password`, `visible`, `ts`) VALUES
(1, 'bhakti', 'bhakti09876', NULL, '2018-02-28 06:09:23'),
(2, 'joy', 'joy', NULL, '2018-02-28 06:09:52'),
(3, 'bhakti rani', 'bhakti09876', NULL, '2018-02-28 13:22:57'),
(4, 'fd', 'ds', NULL, '2018-02-28 14:11:15'),
(5, 'joy12', '123456', 1, '2018-02-28 15:55:17'),
(7, 'bhaktiroy', 'bhakti', 1, '2018-03-08 17:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `ndoctor`
--

CREATE TABLE `ndoctor` (
  `id` int(11) NOT NULL,
  `doctor_name` varchar(200) DEFAULT NULL,
  `specialist` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `visible` varchar(5) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(11) DEFAULT NULL,
  `salary` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ndoctor`
--

INSERT INTO `ndoctor` (`id`, `doctor_name`, `specialist`, `contact`, `country`, `visible`, `ts`, `gender`, `salary`) VALUES
(1, 'Suman', 'Surgery', '123654', 'India', '0', '2018-02-24 09:18:34', NULL, NULL),
(2, 'Dr.Shirin Akter', 'Gynecology', 'shirin@gmail.com', 'Bangladesh', '1', '2018-03-08 15:05:23', 'Female', 50000),
(3, 'JOyanta', 'Medicine', '459874569', 'Bangladesh', '0', '2018-02-24 09:19:26', NULL, NULL),
(4, 'Joyanta Boasak', 'Medicine specialist', '01745698123', 'Bangladesh', '0', '2018-02-27 13:33:47', 'Male', 1000000),
(5, 'gulhati', 'medicine', '0178965412', 'usa', '0', '2018-02-27 05:29:22', NULL, NULL),
(6, 'gulhati', 'medicine', '0178965412', 'usa', '0', '2018-02-24 12:05:20', NULL, NULL),
(7, '', '', '', 'Bangladesh', '0', '2018-02-27 06:02:31', NULL, NULL),
(8, 'Dr.Karimul Islam', 'Pediatric Surgery', 'karimul123@gmail.com', 'Bangladesh', '1', '2018-03-08 15:06:29', 'Male', 80000),
(9, 'Dr.Joe Zonjals', 'Oncology', 'joezonjals@gmail.com', 'usa', '1', '2018-03-08 15:07:35', 'Male', 100000),
(10, 'Dr.Sahidul Islam', 'Opthalmology', 'sahid@gmail.com', 'Bangladesh', '1', '2018-03-08 15:08:57', 'Male', 100000),
(11, 'Dr.Santunu Bos', 'Cancer', 'santunu@gmail.com', 'India', '1', '2018-03-08 15:09:54', 'Male', 100000),
(12, 'Dr.Maya Chowdhury', 'Medicin', 'maya09@gmail.com', 'India', '1', '2018-03-08 15:10:57', 'Female', 100000),
(13, 'Dr.Abdullah Al Momin', 'Neurologist', 'abdullah@gmail.com', 'Bangladesh', '1', '2018-03-08 15:11:51', 'Male', 50000),
(14, 'Dr.Bikas Barman', 'Orthopedic Surgery', 'bikas11@yahoo.com', 'India', '1', '2018-03-08 15:12:48', 'Male', 80000),
(15, 'Dr.Sonali Roy', 'Dentist', 'sonalite@gmail.com', 'India', '1', '2018-03-08 15:13:35', 'Female', 80000),
(16, 'Dr.Shekh Fakirullah', 'Orthopedic Surgery', 'shekhfokirullah@gmail.com', 'Bangladesh', '1', '2018-03-08 15:14:30', 'Male', 50000),
(17, 'dd ,,.,dfd', 'sds,.,das     gfg', '243567', 'India', '0', '2018-02-28 17:53:36', ',', 0),
(18, '      fhv43', '       ,./''', '21346', 'Bangladesh', '0', '2018-02-28 17:55:21', '1231', 35),
(19, 'tt', 'yty', 'yt', 'India', '0', '2018-02-28 18:18:43', 'yty', 0),
(20, '', '', '', 'Bangladesh', '0', '2018-02-28 18:39:22', '', 0),
(21, '', '', '', 'Bangladesh', '0', '2018-03-01 14:31:18', '', 0),
(22, '', '', '', 'Bangladesh', '0', '2018-03-01 14:29:53', '', 0),
(23, 'gajol', 'Medicine specialist', '01745698123', 'India', '0', '2018-03-08 11:53:35', 'Female', 20000),
(24, '', '', 'sahid', 'Bangladesh', '0', '2018-03-08 11:58:47', '', 0),
(25, '', '', 'sahid213@gmail.ccom', 'Bangladesh', '0', '2018-03-08 12:13:47', '', 0),
(26, '', '', '01745698123', 'Bangladesh', '0', '2018-03-08 12:13:46', '', 0),
(27, '', '', 'sahid', 'Bangladesh', '0', '2018-03-08 12:13:44', '', 0),
(28, '', '', '01745698123', 'Bangladesh', '0', '2018-03-08 12:13:44', '', 0),
(29, '', '', 'sahid', 'Bangladesh', '0', '2018-03-08 12:13:42', '', 0),
(30, '', '', 'sahid', 'Bangladesh', '0', '2018-03-08 12:13:43', '', 0),
(31, '', '', 'sahid', 'Bangladesh', '0', '2018-03-08 12:13:41', '', 0),
(32, '', '', 'sahid', 'Bangladesh', '0', '2018-03-08 12:23:23', '', 0),
(33, '', '', 'sahid213@gmail.ccom', 'Bangladesh', '0', '2018-03-08 12:23:22', '', 0),
(34, '', '', 'sahid', 'Bangladesh', '0', '2018-03-08 12:23:22', '', 0),
(35, '', '', 'sahid', 'Bangladesh', '0', '2018-03-08 12:23:21', '', 0),
(36, '', '', 'sahid@gmail.com', 'Bangladesh', '0', '2018-03-08 12:26:13', '', 0),
(37, '', '', 'sahid213@gmail.ccom', 'Bangladesh', '0', '2018-03-08 12:34:19', '', 0),
(38, '', '', '01745698123', 'Bangladesh', '0', '2018-03-08 12:27:39', '', 0),
(39, '', '', 'sahid', 'Bangladesh', '0', '2018-03-08 12:34:18', '', 0),
(40, '', '', 'sahid', 'Bangladesh', '0', '2018-03-08 12:34:18', '', 0),
(41, 'gajol', 'Medicine specialist', 'sahid', 'India', '0', '2018-03-08 15:14:46', 'Female', 1000000),
(42, 'gajol', 'Medicine specialist', 'sahid213@gmail.ccom', 'Bangladesh', '0', '2018-03-08 15:14:49', 'Female', 20000),
(43, 'Dr.Rashidul Islam', 'Medicin', 'rashidul123@gmail.com', 'Bangladesh', '1', '2018-03-08 15:04:21', 'Male', 50000),
(44, 'Jannatul Ferdowsi', 'Medicin', 'jannatul@outlook.com', 'Bangladesh', '1', '2018-03-08 15:45:16', 'Female', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `npatient`
--

CREATE TABLE `npatient` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `visible` varchar(5) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `npatient`
--

INSERT INTO `npatient` (`id`, `patient_name`, `address`, `phone`, `gender`, `visible`, `ts`) VALUES
(1, 'bhakti', 'dinajpur', '01774180385', 'female', '0', '2018-02-24 12:06:41'),
(2, 'suman', 'Balubari, Dinajpur', '01774180385', 'male', '0', '2018-02-24 11:43:01'),
(3, 'Md.Azmol Hossain', 'Biral, Dinajpur', '01812345678', 'Male', '1', '2018-03-08 15:18:34'),
(4, 'Shimul Roy', 'Ranpur Sadar', '01910981234', 'Female', '1', '2018-03-08 15:19:19'),
(5, 'yt', '', 'ty', '', '0', '2018-02-28 18:19:11'),
(6, '', '', '', '', '0', '2018-03-01 14:33:42'),
(7, '', '', '01774789654', '', '0', '2018-03-08 11:53:54'),
(8, 'Sajia Sharmin', 'Pirgacha, Rangpur', '01718923147', 'Female', '1', '2018-03-08 15:20:37'),
(9, 'Md.Limon Parvez', 'Setabganj Dinajpur', '01617845231', 'Male', '1', '2018-03-08 15:21:20'),
(10, 'Md.Mohasan Ali', 'Pirganj, Thakurgoan', '01789563421', 'Male', '1', '2018-03-08 15:21:55'),
(11, 'Partho Banerzee', 'Eidgahbasti, Dinajpur', '01765409823', 'Male', '1', '2018-03-08 15:22:46'),
(12, 'Hosneara Parvin', 'Thakurgoan Sadar', '01729089786', 'Male', '1', '2018-03-08 15:23:21'),
(13, 'bhakti', 'dinajpur', '01774789654dgfh', 'Female', '0', '2018-03-08 15:23:26'),
(14, 'bhakti', 'dinajpur', '01774789654', 'Female', '0', '2018-03-08 15:23:28'),
(15, 'Md. Kamrujjaman', 'Panchogar Sadar', '01786543091', 'Male', '1', '2018-03-08 15:23:57'),
(16, 'Krishno Kanto Roy', 'Dhaka', '01717788453', 'Male', '1', '2018-03-08 15:24:23'),
(17, 'Mahabubur Rahman', 'Dinajpur Sadar', '01778909876', 'Male', '1', '2018-03-08 15:17:58'),
(18, 'Anjona bissas', 'Dhaka', '01617845231', 'Female', '1', '2018-03-08 15:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `nurse_name` varchar(200) DEFAULT NULL,
  `salary` mediumtext,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `visible` varchar(10) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`nurse_name`, `salary`, `phone`, `address`, `visible`, `ts`, `id`) VALUES
('bhakti', 'dinajpur', 1774789654, '20000', '0', '2018-02-27 09:09:18', 1),
('Karina Islam', '15000', 1623098884, 'Dhaka', '1', '2018-03-08 15:37:59', 2),
('bhakti', 'dinajpur', 1774789654, '20000', '0', '2018-02-27 13:04:19', 3),
('Santona Bos', '20000', 1765409823, 'Panchogar Sadar', '1', '2018-03-08 15:38:31', 4),
('Kobita Roy', '20000', 1765409823, 'Dinajpur Sadar', '1', '2018-03-08 15:38:57', 5),
('Sharmila Mitra', '25000', 1717788453, 'Dhaka', '1', '2018-03-08 15:39:33', 6),
('et', 'ere', 14795, 'rer', '0', '2018-02-28 18:20:22', 7),
('', '', 0, '', '0', '2018-03-01 14:34:16', 8),
('Kamona Sharma', '25000', 1718923147, 'Eidgahbasti, Dinajpur', '1', '2018-03-08 15:40:11', 9),
('Bristy Roy', '25000', 1617845231, 'Dinajpur Sadar', '1', '2018-03-08 15:50:23', 10),
('Bristy Roy', 'Dinajpur Sadar', 1623098884, '100000', '0', '2018-03-08 15:41:43', 11),
('Bipasa Barman', '25000', 1623098884, 'Biral, Dinajpur', '1', '2018-03-08 15:58:14', 12),
('Bipasa Roy', '10000', 1623098884, 'Dhaka', '1', '2018-03-08 15:58:38', 13),
('Kamona Sharma', 'Panchogar Sadar', 1617845231, '25000', '0', '2018-03-08 16:02:15', 14),
('Karina Islam', '20000', 1765409823, 'Panchogar Sadar', '1', '2018-03-08 16:02:37', 15);

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `pname` varchar(20) DEFAULT NULL,
  `dname` varchar(20) DEFAULT NULL,
  `pprblm` varchar(20) DEFAULT NULL,
  `gain` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `visible` varchar(20) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operation`
--

INSERT INTO `operation` (`pname`, `dname`, `pprblm`, `gain`, `date`, `time`, `visible`, `ts`, `gender`, `id`) VALUES
('bhakti', 'gajol', 'heart', 'successfull', '2018-02-02', '09:00pm', '0', '2018-02-27 21:38:01', 'Female', 1),
('Krishno Kanto Roy', 'Dr.Sahidul Islam', 'Cancer', 'Unsuccessfull', '2018-03-05', '01:00pm', '1', '2018-03-08 16:36:03', 'Male', 2),
('', '', '', '', '0000-00-00', '', '0', '2018-02-28 18:22:18', '', 3),
('', '', '', '', '0000-00-00', '', '0', '2018-03-01 14:35:42', '', 4),
('Anjona bissas', 'Dr.Karimul Islam', 'Heart Problem', 'Successfull', '2018-03-04', '2:00pm', '1', '2018-03-08 16:35:09', 'Female', 5),
('Sajia Sharmin', 'Dr.Abdullah Al Momin', 'Pediatric Problem', 'Successfull', '2018-03-05', '2:00pm', '1', '2018-03-08 16:36:53', 'Female', 6),
('Anjona bissas', 'Dr.Shirin Akter', 'Gyno Problem', 'Successfull', '2018-03-02', '03:00pm', '1', '2018-03-08 16:38:08', 'Female', 7),
('Md.Limon Parvez', 'Jannatul Ferdowsi', 'Cancer', 'Unsuccessfull', '2018-03-04', '2:00pm', '1', '2018-03-08 16:40:48', 'Male', 8),
('Md. Kamrujjaman', 'Dr.Rashidul Islam', 'Heart Problem', 'Successfull', '2018-03-05', '2:00pm', '1', '2018-03-08 16:41:56', 'Male', 9);

-- --------------------------------------------------------

--
-- Table structure for table `p_release`
--

CREATE TABLE `p_release` (
  `id` int(11) NOT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `bedno` varchar(10) DEFAULT NULL,
  `pprblm` varchar(20) DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `full_fee` int(11) DEFAULT NULL,
  `due_fee` int(11) DEFAULT NULL,
  `visible` varchar(10) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `release_info`
--

CREATE TABLE `release_info` (
  `pname` varchar(20) DEFAULT NULL,
  `bedno` varchar(10) DEFAULT NULL,
  `pprblm` varchar(20) DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `full_fee` int(11) DEFAULT NULL,
  `due_fee` int(11) DEFAULT NULL,
  `visible` varchar(10) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `release_info`
--

INSERT INTO `release_info` (`pname`, `bedno`, `pprblm`, `position`, `date`, `full_fee`, `due_fee`, `visible`, `ts`, `gender`, `id`) VALUES
('bhakti', '1', 'heart', 'very weak', '2018-02-03', 10000, 0, '0', '2018-02-27 23:39:57', 'Female', 1),
('joy', '1', 'heart', 'very weak', '2018-02-03', 10000, 0, '1', '2018-02-27 23:40:23', 'Male', 2),
('', '', '', '', '0000-00-00', 0, 0, '0', '2018-02-28 18:22:49', '', 3),
('', '', '', '', '0000-00-00', 0, 0, '0', '2018-03-01 14:36:19', '', 4),
('Sajia Sharmin', '12', 'Pediatric Problem', 'good', '2018-03-03', 30000, 0, '1', '2018-03-08 16:54:44', 'Female', 5),
('Md.Azmol Hossain', '15', 'Heart Problem', 'good', '2018-03-04', 50000, 10000, '1', '2018-03-08 16:57:54', 'Male', 6),
('Partho Banerzee', '32', 'Cardio Problem', 'better', '2018-03-05', 40000, 0, '1', '2018-03-08 17:01:51', 'Male', 7),
('Momena Khatun', '33', 'Heart Problem', 'better', '2018-03-02', 60000, 5000, '1', '2018-03-08 17:02:54', 'Female', 8);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `slamount` int(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `work` varchar(50) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `visible` varchar(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`slamount`, `name`, `work`, `position`, `visible`, `ts`, `gender`, `id`) VALUES
(10000, 'Karina Begum', 'Room Cleaner', 'a good worker', '1', '2018-03-08 16:25:33', 'Female', 1),
(0, '', '', '', '0', '2018-02-27 20:24:08', '', 2),
(100000, 'Dr.Maya Chowdhury', 'Doctor', 'A good doctor', '1', '2018-03-08 16:24:04', 'Female', 3),
(0, '', '', '', '0', '2018-02-28 18:21:54', '', 4),
(0, '', '', '', '0', '2018-03-01 14:35:27', '', 5),
(100000, 'Dr.Joe Zonjals', 'Doctor', 'A good doctor', '1', '2018-03-08 16:23:29', 'Male', 6),
(12000, 'Shirin Akter', 'Nurse', 'A brilliant and hard', '1', '2018-03-08 16:26:48', 'Female', 7),
(15000, 'Sahida Islam', 'Nurse', 'A brilliant and hard', '1', '2018-03-08 16:27:48', 'Female', 8),
(15000, 'Forhat Hossain', 'Night Guard', 'a good worker', '1', '2018-03-08 16:33:45', 'Male', 9);

-- --------------------------------------------------------

--
-- Table structure for table `serial`
--

CREATE TABLE `serial` (
  `pname` varchar(200) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `paddress` varchar(20) DEFAULT NULL,
  `visible` varchar(20) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serial`
--

INSERT INTO `serial` (`pname`, `dname`, `time`, `date`, `paddress`, `visible`, `ts`, `gender`, `id`) VALUES
('joy', 'kajoli lota', '02:00pm', '2018-02-03', 'dianajpur', '0', '2018-02-27 19:05:41', 'Male', 1),
('Pabin Roy', 'Dr.Sahidul Islam', '12:00pm', '2018-03-03', 'Dinajpur Sadar', '1', '2018-03-08 16:15:09', 'Male', 2),
('', '', '', '0000-00-00', '', '0', '2018-02-28 18:21:08', '', 3),
('', '', '', '0000-00-00', '', '0', '2018-03-01 14:34:48', '', 4),
('Momena Khatun', 'Dr.Karimul Islam', '12:00pm', '2018-03-05', 'Setabganj Dinajpur', '1', '2018-03-08 16:13:29', 'Female', 5),
('Anjona bissas', 'Dr.Santunu Bos', '01:00pm', '2018-03-04', 'Dinajpur Sadar', '1', '2018-03-08 16:15:40', 'Female', 6),
('Sajia Sharmin', 'Dr.Sahidul Islam', '2:00pm', '2018-03-04', 'Eidgahbasti, Dinajpu', '1', '2018-03-08 16:16:47', 'Female', 7),
('Shimul Roy', 'Dr.Joe Zonjals', '12:00pm', '2018-03-03', 'Dinajpur Sadar', '1', '2018-03-08 16:17:10', 'Female', 8),
('Md.Mohasan Ali', 'Dr.Bikas Barman', '2:00pm', '2018-03-02', 'Rangpur', '1', '2018-03-08 16:18:17', 'Male', 9);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_name` varchar(20) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `work` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `visible` varchar(11) DEFAULT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_name`, `salary`, `phone`, `work`, `address`, `gender`, `visible`, `ts`, `id`) VALUES
('', 0, 0, '', '', '', '0', '2018-02-27 15:04:49', 1),
('Momena Khatun', 10000, 1874312345, 'Room Cleaner', 'Pirgacha, Rangpur', 'Female', '1', '2018-03-08 16:05:49', 2),
('Karina Begum', 25000, 1623098884, 'Room Cleaner', 'Dhaka', 'Female', '1', '2018-03-08 16:07:16', 3),
('Salman ahmed', 10000, 1623098884, 'Ward Boy', 'Dinajpur Sadar', 'Male', '1', '2018-03-08 16:09:01', 4),
('Biplob Roy', 8000, 1789078456, 'Watch Man', 'Dinajpur Sadar', 'Male', '1', '2018-03-08 16:10:13', 5),
('', 0, 0, '', '', '', '0', '2018-02-28 18:20:47', 6),
('', 0, 0, '', '', '', '0', '2018-03-01 14:34:34', 7),
('Rezaul Houqe', 10000, 1718923147, 'Ward Boy', 'Dinajpur Sadar', 'Male', '1', '2018-03-08 16:10:41', 8),
('Sonali mukharjee', 10000, 1765409823, 'Receive woman', 'Dinajpur Sadar', 'Female', '1', '2018-03-08 16:11:46', 9),
('Masum Ali', 10000, 1723098884, 'Ward Boy', 'Dinajpur Sadar', 'Male', '1', '2018-03-08 16:04:25', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admit_info`
--
ALTER TABLE `admit_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appoint`
--
ALTER TABLE `appoint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bhakti_admin`
--
ALTER TABLE `bhakti_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birth_info`
--
ALTER TABLE `birth_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `death_info`
--
ALTER TABLE `death_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indexes for table `ndoctor`
--
ALTER TABLE `ndoctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `npatient`
--
ALTER TABLE `npatient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_release`
--
ALTER TABLE `p_release`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `release_info`
--
ALTER TABLE `release_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admit_info`
--
ALTER TABLE `admit_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `appoint`
--
ALTER TABLE `appoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `bhakti_admin`
--
ALTER TABLE `bhakti_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `birth_info`
--
ALTER TABLE `birth_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `death_info`
--
ALTER TABLE `death_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ndoctor`
--
ALTER TABLE `ndoctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `npatient`
--
ALTER TABLE `npatient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `p_release`
--
ALTER TABLE `p_release`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `release_info`
--
ALTER TABLE `release_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `serial`
--
ALTER TABLE `serial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
