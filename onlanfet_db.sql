-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2014 at 08:44 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlanfet_db`
--
CREATE DATABASE IF NOT EXISTS `onlanfet_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onlanfet_db`;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tbl`
--

CREATE TABLE IF NOT EXISTS `adminlogin_tbl` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) NOT NULL DEFAULT 'fetalok',
  `password1` varchar(30) NOT NULL DEFAULT 'fetalok2013',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `adminlogin_tbl`
--

INSERT INTO `adminlogin_tbl` (`sid`, `user`, `password1`) VALUES
(1, 'admin', 'admin'),
(2, 'fet', 'fet');

-- --------------------------------------------------------

--
-- Table structure for table `registration_tbl`
--

CREATE TABLE IF NOT EXISTS `registration_tbl` (
  `sid` int(100) NOT NULL AUTO_INCREMENT,
  `sname` varchar(80) NOT NULL,
  `branch` varchar(5) NOT NULL,
  `year` int(2) NOT NULL,
  `roll` int(100) NOT NULL,
  `user` varchar(20) NOT NULL,
  `password1` varchar(20) NOT NULL,
  `password2` varchar(20) NOT NULL,
  `createddate` date NOT NULL,
  `createdtime` time NOT NULL,
  `isdeleted` tinyint(1) NOT NULL DEFAULT '1',
  `is_login` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=162 ;

--
-- Dumping data for table `registration_tbl`
--

INSERT INTO `registration_tbl` (`sid`, `sname`, `branch`, `year`, `roll`, `user`, `password1`, `password2`, `createddate`, `createdtime`, `isdeleted`, `is_login`) VALUES
(1, 'Ashutosh kumar', 'ECE', 1, 13, 'ashutosh', 'ashu321', '', '2013-09-23', '15:55:38', 1, 0),
(2, 'AMIT KUMAR SINGH KUSHWAHA', 'ECE', 1, 8, 'AMIT KUSHWAHA', 'AKSKKS', '', '2013-09-23', '15:55:42', 1, 0),
(3, 'AMAN JOHARI', 'ECE', 1, 7, 'amanjohari', 'neemkaroriji', '', '2013-09-23', '15:55:44', 1, 0),
(4, 'ashwani yadav', 'ECE', 1, 14, 'ashwani yadav', '9648920934', '', '2013-09-23', '15:55:46', 1, 0),
(5, 'gautam bhagat', 'ECE', 1, 28, 'gautambhagat', '9469647948', '', '2013-09-23', '15:55:50', 1, 0),
(6, 'A V Y K KAUSHIK', 'ECE', 1, 1, 'A V Y K KAUSHIK', 'kau2605@', '', '2013-09-23', '15:55:52', 1, 0),
(7, 'jai chaturvedi', 'ECE', 1, 31, 'jai chaturvedi', 'rudramadhu', '', '2013-09-23', '15:55:59', 1, 0),
(8, 'ankul jain', 'ECE', 1, 10, 'ankul', '1201hanu1994', '', '2013-09-23', '15:56:04', 1, 0),
(9, 'M.Srinivasnaik', 'ECE', 1, 36, 'srinivasnaik', 'srinu', '', '2013-09-23', '15:56:10', 1, 0),
(10, 'sonu kumar patel', 'ECE', 3, 80, 'sp singh', '9135700465', '', '2013-09-23', '15:56:15', 1, 0),
(11, 'Shivam Rathaur', 'EEE', 1, 80, 'shivam', 'shirathore', '', '2013-09-23', '15:56:34', 1, 0),
(12, 'RAMAVATH AKHIL', 'ECE', 1, 59, 'akhil', 'akh1996@', '', '2013-09-23', '15:56:46', 1, 0),
(13, 'CHANDRAHASA KUMAR', 'ECE', 1, 18, 'KRISHNA', '8521637151', '', '2013-09-23', '15:57:19', 1, 0),
(14, 'Vishal Antony', 'ECE', 1, 91, 'Vishal Antony', 'jenubled', '', '2013-09-23', '15:57:22', 1, 0),
(15, 'Ravi kushwaha', 'ECE', 1, 61, 'Ravikushwaha', '9335330488', '', '2013-09-23', '15:57:31', 1, 0),
(16, 'vivek kumar singh', 'EEE', 1, 91, 'vivek singh', '9695158306', '', '2013-09-23', '15:57:45', 1, 0),
(17, 'saurabh kumar gupta', 'ECE', 1, 70, 'saurabhkumargupta', '7275964959', '', '2013-09-23', '15:58:10', 1, 0),
(18, 'VIKAL CHANDRA', 'ECE', 1, 86, 'vikal chandra', '54321896', '', '2013-09-23', '15:58:44', 1, 0),
(19, 'MEDESI SRAVAN SARAN MANIKANTA', 'ECE', 1, 41, 'sravanmanikanta93', 'sravan17121993', '', '2013-09-23', '15:59:05', 1, 0),
(20, 'SHUBHAM KUMAR SINGH', 'ECE', 1, 75, 'SHUBHAM KUMAR SINGH', '9126445059', '', '2013-09-23', '15:59:05', 1, 0),
(22, 'sarvjeet kumar jha', 'ECE', 1, 68, 'sarvjeetgod', 'mahishanu', '', '2013-09-23', '15:59:21', 1, 0),
(23, 'karan bauskar', 'ECE', 1, 32, 'karan bauskar', 'priya', '', '2013-09-23', '15:59:21', 1, 0),
(24, 'sagar goel', 'ECE', 1, 65, 'sagargoel', '8430487550', '', '2013-09-23', '15:59:24', 1, 0),
(25, 'gaadari kalyan', 'ECE', 1, 25, 'gaadarikalyan522@gma', '123', '', '2013-09-23', '16:03:50', 1, 0),
(26, 'MADAN MOHAN SARKAR', 'ECE', 1, 37, 'MAHI.W.B.', 'MAHI.W.B.', '', '2013-09-23', '16:05:48', 1, 0),
(27, 'kalyan', 'ECE', 1, 25, 'kalyan', '123', '', '2013-09-23', '16:05:56', 1, 0),
(31, 'pushpendra kumar', 'EEE', 1, 56, 'pushpendra kumar', 'shivdayal', '', '2013-09-24', '16:08:15', 1, 0),
(32, 'rahul kumar paswan', 'EEE', 1, 57, 'rahul', 'shanti', '', '2013-09-24', '16:09:26', 1, 0),
(33, 'Deepak kumar', 'EEE', 1, 25, 'deepak', '8859384621', '', '2013-09-24', '16:11:02', 1, 0),
(34, 'pawan singh', 'EEE', 1, 52, 'pawan', '9045373827', '', '2013-09-24', '16:11:16', 1, 0),
(35, 'omhari rajput', 'EEE', 1, 50, 'omharirajput', '9718939540', '', '2013-09-24', '16:11:33', 1, 0),
(36, 'AMIT KUMAR', 'EEE', 1, 9, 'AMIT KUMAR', 'AMIT KUMAR', '', '2013-09-24', '16:11:43', 1, 0),
(37, 'ANUP KUMAR', 'EEE', 1, 16, 'ANUP KUMAR', 'ANUP3587', '', '2013-09-24', '16:11:53', 1, 0),
(38, 'DINESH KUMAR SINGAR', 'EEE', 1, 28, 'DINESH KUMAR SINGAR', '12083594', '', '2013-09-24', '16:12:02', 1, 0),
(39, 'vivek kumar singh', 'EEE', 1, 91, 'vivek kumar singh', '9695158306', '', '2013-09-24', '16:12:18', 1, 0),
(40, 'abhishek raj', 'EEE', 1, 2, 'abhishek2095', 'ab.20.95', '', '2013-09-24', '16:12:33', 1, 0),
(41, 'Akshay kumar', 'EEE', 1, 7, 'Akshay kumar', '12345', '', '2013-09-24', '16:12:34', 1, 0),
(42, 'anurag jaiswal', 'EEE', 1, 18, 'kinganurag786', 'kinganu..', '', '2013-09-24', '16:12:37', 1, 0),
(43, 'Roshan kumar sahani', 'EEE', 1, 69, 'roshan kumar sahani', '8051306510', '', '2013-09-24', '16:12:51', 1, 0),
(44, 'vishwajeet kumar', 'EEE', 1, 89, 'vishwajeet_kumar', '143puja', '', '2013-09-24', '16:12:53', 1, 0),
(45, 'ABHISHEK SHARMA', 'EEE', 1, 3, 'BRILLIANT ABHISHEK', 'ILOVEMYINDIA', '', '2013-09-24', '16:12:59', 1, 0),
(46, 'pushpendra kumar', 'EEE', 1, 56, 'pushpendra kumar', 'shivdayal', '', '2013-09-24', '16:13:01', 1, 0),
(47, 'pawan singh', 'EEE', 1, 52, 'pawan singh', '9045373827', '', '2013-09-24', '16:13:05', 1, 0),
(48, 'pankaj dixit', 'EEE', 1, 51, 'pankaj dixit', 'gkv_2013', '', '2013-09-24', '16:13:11', 1, 0),
(49, 'vishal verma', 'EEE', 1, 88, 'vishalverma', 'shganesh', '', '2013-09-24', '16:13:21', 1, 0),
(50, 'shatrughn kumar kushwaha', 'EEE', 1, 79, 'shatrughn', 'passward', '', '2013-09-24', '16:13:37', 1, 0),
(51, 'rakesh chaudhari', 'EEE', 1, 60, 'rakesh chaudhari', '9628990590', '', '2013-09-24', '16:14:04', 1, 0),
(52, 'KUNDAN KUMAR', 'EEE', 1, 38, 'kundan', '12345', '', '2013-09-24', '16:15:15', 1, 0),
(53, 'anurag yadav', 'EEE', 1, 19, 'anurag yadav', 'anurag', '', '2013-09-24', '16:15:40', 1, 0),
(54, 'Gaurav rathore', 'EEE', 1, 31, 'gauravrathore095@gma', 'ashi', '', '2013-09-24', '16:15:43', 1, 0),
(55, 'SHUBHAM RAJ', 'EEE', 1, 83, 'shubhamraj', 'fet214', '', '2013-09-24', '16:16:02', 1, 0),
(56, 'govind kumar', 'EEE', 1, 32, 'govind', '251311', '', '2013-09-24', '16:17:20', 1, 0),
(57, 'Gaurav rathore', 'EEE', 1, 31, 'Gaurav rathore', 'ashi', '', '2013-09-24', '16:18:11', 1, 0),
(59, 'Avinash Tripathi', 'ME', 1, 24, 'avinashtripathi', 'chachaji', '', '2013-09-25', '15:55:56', 1, 0),
(60, 'AKSHAY GOEL', 'ME', 1, 12, 'akshay', 'akshaygoel', '', '2013-09-25', '15:56:44', 1, 0),
(61, 'ABHISHEK ANAND', 'ME', 1, 3, 'abhishek', '7641379447', '', '2013-09-25', '15:56:53', 1, 0),
(62, 'ASHISH ROY', 'EEE', 1, 18, 'ashish_roy', 'awq6189', '', '2013-09-25', '15:56:54', 1, 0),
(63, 'Abhishek Verma', 'ME', 1, 6, 'abhishek', '87436058', '', '2013-09-25', '15:57:22', 1, 0),
(64, 'Anurag', 'ME', 1, 17, 'Anurag', 'babu123', '', '2013-09-25', '15:57:25', 1, 0),
(65, 'ajit amar harijan', 'ME', 1, 9, 'ajit', '9879662213', '', '2013-09-25', '15:57:34', 1, 0),
(66, 'AMRENDRA KUMAR', 'ME', 1, 13, 'amrendra', 'myfamily', '', '2013-09-25', '15:57:39', 1, 0),
(67, 'ABHIJIT KUMAR', 'ME', 1, 1, 'abhijit', '9012094709', '', '2013-09-25', '15:58:26', 1, 0),
(68, 'AKHILESH YADAV', 'ME', 1, 11, 'akhilaryan', 'jhonsmith257250', '', '2013-09-25', '15:59:05', 1, 0),
(69, 'FAIZ ALI', 'ME', 1, 30, 'FAIZI', '9012047165', '', '2013-09-25', '15:59:59', 1, 0),
(70, 'Akash Gautam', 'ME', 1, 10, 'fltltakash', 'fltltakash', '', '2013-09-25', '16:00:02', 1, 0),
(71, 'ashvanee rajput', 'ME', 1, 19, 'ashvanee rajput', 'ashu94124522', '', '2013-09-25', '16:00:19', 1, 0),
(72, 'Abhishek Misra', 'ME', 1, 5, 'abk', 'abkrulez', '', '2013-09-25', '16:00:41', 1, 0),
(73, 'Abhinav pateria', 'ME', 1, 2, 'sibbu0101', 'abhinav@0101', '', '2013-09-25', '16:01:19', 1, 0),
(74, 'durgesh mishra', 'ME', 1, 29, 'durgesh', '123', '', '2013-09-25', '16:01:36', 1, 0),
(76, 'SUMIT KUMAR', 'ME', 1, 84, 'S.K.', '7828850555922', '', '2013-09-25', '16:02:59', 1, 0),
(77, 'Saurabh Suman ', 'ME', 1, 75, 'saurabhsuman', '2087', '', '2013-09-25', '16:03:04', 1, 0),
(78, 'vishal rawat', 'ME', 1, 91, 'vishal', 'taru8005', '', '2013-09-25', '16:03:35', 1, 0),
(79, 'Saurabh Suman ', 'ME', 1, 75, 'saurabh suman', '2087', '', '2013-09-25', '16:03:39', 1, 0),
(80, 'shashi kumar', 'ME', 1, 76, 'imshashi', 'itsfakeworld', '', '2013-09-25', '16:03:56', 1, 0),
(81, 'vipul verma', 'ME', 1, 90, 'vipulverma@283', 'shrutivipul', '', '2013-09-25', '16:04:08', 1, 0),
(82, 'atul kumar', 'ME', 1, 22, 'atul kumar', '1234', '', '2013-09-25', '16:06:02', 1, 0),
(84, 'Gajendra Patidar', 'ME', 1, 31, 'gajendra_patidar', 'patidar', '', '2013-09-25', '16:07:00', 1, 0),
(85, 'RUPESH PRAJAPATI', 'ME', 1, 68, 'RUPESH', '1234', '', '2013-09-25', '16:09:01', 1, 0),
(86, 'SHIVBRAT', 'ME', 1, 78, 'SHIVBRAT', 'DHARMBRAT', '', '2013-09-25', '16:11:23', 1, 0),
(87, 'Anshuman', 'ME', 1, 16, 'anshuman', '12345', '', '2013-09-25', '16:18:57', 1, 0),
(88, 'Sanjeeb kumar gouda', 'ME', 1, 72, 'sanjeeb72', 'fetgkv215', '', '2013-09-25', '16:19:34', 1, 0),
(89, 'Utkarsh Choudhary', 'ME', 1, 86, 'Utkarsh86', 'Choudhary86', '', '2013-09-25', '16:19:43', 1, 0),
(90, 'ankit meena', 'ME', 1, 15, 'ankit meena15', '20502050', '', '2013-09-25', '16:19:45', 1, 0),
(91, 'SANWARIYA LAL MEENA', 'ME', 1, 73, 'MONIKA MEENA', 'MONIKA', '', '2013-09-25', '16:20:14', 1, 0),
(92, 'Aniruddh Maurya', 'ME', 1, 14, 'Aniruddh', 'ANI800', '', '2013-09-25', '16:20:17', 1, 0),
(93, 'TEJ PRAKASH', 'ME', 1, 85, 'tejprakash', 'bareilly', '', '2013-09-25', '16:20:31', 1, 0),
(94, 'dilip yadav', 'CSE', 1, 26, 'dilipyadav', 'dilipyadav1994', '', '2013-09-30', '15:08:24', 1, 0),
(95, 'dilip yadav', 'CSE', 1, 26, 'dilipyadav', 'dilipyadav1994', '', '2013-09-30', '15:17:07', 1, 0),
(96, 'dilip yadav', 'CSE', 1, 26, 'dilipyadav', 'dilipyadav1994', '', '2013-09-30', '15:17:09', 1, 0),
(97, 'dilip yadav', 'CSE', 1, 26, 'dilipyadav', 'dilipyadav1994', '', '2013-09-30', '15:17:09', 1, 0),
(99, 'dilip yadav', 'CSE', 1, 26, 'dilipyadav', 'dilipyadav1994', '', '2013-09-30', '15:17:10', 1, 0),
(101, 'sajjan kumar yadav', 'ECE', 2, 63, 'sajjan', '9760588216', '', '2013-09-30', '15:42:30', 1, 0),
(102, 's.mourya', 'CSE', 1, 65, 'mouryas20', '9012095827', '', '2013-09-30', '15:43:49', 1, 0),
(103, 'SAURAV KUMAR', 'CSE', 1, 72, 'SAURAV', '9761654102', '', '2013-09-30', '15:44:35', 1, 0),
(104, 'PRATEEK CHANDRA', 'CSE', 1, 53, 'prateek', 'chandraprateek', '', '2013-09-30', '15:44:48', 1, 0),
(105, 'sandeep singh', 'CSE', 1, 67, 'sandeep', 'shashank', '', '2013-09-30', '15:44:50', 1, 0),
(106, 'Rakesh Singh Rawat', 'CSE', 1, 60, 'rakesh', '9915544851convoy', '', '2013-09-30', '15:44:52', 1, 0),
(107, 'Himanshu Gupta', 'CSE', 1, 33, 'Himanshu', 'quiz13', '', '2013-09-30', '15:45:02', 1, 0),
(108, 'NITESH KUMAR RAI', 'CSE', 1, 49, 'NITESH', '@lovekushINDIA#', '', '2013-09-30', '15:45:12', 1, 0),
(109, 'SAURABH CHAUHAN', 'CSE', 1, 70, 'saurabh', '18@$unny', '', '2013-09-30', '15:45:12', 1, 0),
(110, 'Rakesh Singh Rawat', 'CSE', 1, 60, 'rakesh', '9915544851', '', '2013-09-30', '15:45:29', 1, 0),
(111, 'vikram singh', 'CSE', 1, 86, 'vikram', 'viknit', '', '2013-09-30', '15:46:22', 1, 0),
(112, 'Nitesh', 'CSE', 1, 48, 'niteshkumar', 'avadhesh', '', '2013-09-30', '15:46:27', 1, 0),
(113, 'SHANTIBHUSHAN', 'ECE', 2, 69, 'bhushan', '12345', '', '2013-09-30', '15:46:31', 1, 0),
(114, 'Shubhajyoti Das', 'CSE', 1, 74, 'Shubhajyoti', 'tukai', '', '2013-09-30', '15:47:04', 1, 0),
(115, 'VIPUL CHANDRA', 'CSE', 1, 87, 'VIPUL', '93149009081', '', '2013-09-30', '15:47:43', 1, 0),
(116, 'pulkit agarwal', 'CSE', 1, 54, 'pulkitgarg', '15091994pU@', '', '2013-09-30', '15:47:49', 1, 0),
(117, 'Shubham Verma', 'CSE', 1, 77, 'Vshubham8', '8bigbang', '', '2013-09-30', '15:47:58', 1, 0),
(118, 'shubham tulasyan', 'CSE', 1, 76, 'shubhamtulasyan', 'khadda', '', '2013-09-30', '15:48:02', 1, 0),
(119, 'satyam', 'CSE', 1, 69, 'satyam', '02021994', '', '2013-09-30', '15:48:35', 1, 0),
(120, 'SHUBHAM GUPTA', 'CSE', 1, 75, 'guptshubham', 'Shiv1996$', '', '2013-09-30', '15:49:01', 1, 0),
(121, 'jitendra kumar', 'CSE', 1, 36, 'jitendra', 'jitendra', '', '2013-09-30', '15:49:13', 1, 0),
(122, 'SUNIL KUMAR KAUSHIK', 'CSE', 1, 79, 'sk858671@gmail.com', '8385913608', '', '2013-09-30', '15:50:01', 1, 0),
(123, 'RISHABH KUMAR JAIN', 'CSE', 1, 63, 'rjrishabh34', '8791793385', '', '2013-09-30', '15:50:14', 1, 0),
(124, 'Tapan Kumar Soren', 'CSE', 1, 81, 'tpnsoren405', '9861297181', '', '2013-09-30', '15:51:39', 1, 0),
(125, 'PRAKHAR SAXENA', 'CSE', 1, 52, 'prakhar', '2610', '', '2013-09-30', '15:51:47', 1, 0),
(126, 'virendra kumawat', 'CSE', 1, 88, 'virendra', 'sakshiveeru', '', '2013-09-30', '15:52:08', 1, 0),
(127, 'Tirunagari charan', 'CSE', 1, 82, 'tirunagaricharan', 'killmebeauty', '', '2013-09-30', '15:55:28', 1, 0),
(128, 'sajal gupta', 'CSE', 1, 66, 'sajalgupta', 'saj1995', '', '2013-09-30', '15:58:50', 1, 0),
(129, 'rishabh tiwari', 'CSE', 1, 64, 'rishabh', 'mathurawasi', '', '2013-09-30', '15:59:12', 1, 0),
(130, 'mukesh kumar', 'CSE', 1, 41, 'mukesh kumar', 'mukesh', '', '2013-09-30', '16:00:04', 1, 0),
(131, 'Sundarlal Baror', 'CSE', 1, 78, 'sundarlal78', 'Nirmalbaba', '', '2013-09-30', '16:00:34', 1, 0),
(132, 'rahul kumar soni', 'CSE', 1, 56, 'rahul786', 'rahulsoni', '', '2013-09-30', '16:02:08', 1, 0),
(133, 'omprakash bhakar', 'CSE', 1, 50, 'omprakash', '9012093525', '', '2013-09-30', '16:04:30', 1, 0),
(134, 'Abhishek Gupta', 'CSE', 1, 4, 'Abhishek', 'gupta', '', '2013-09-30', '16:10:57', 1, 0),
(135, 'Altamash Khan', 'CSE', 1, 11, 'altamash296', 'iamwaiting', '', '2013-09-30', '16:11:48', 1, 0),
(136, 'GAURAV SHUKLA', 'CSE', 1, 29, 'gaurav', 'gaurav515', '', '2013-09-30', '16:12:41', 1, 0),
(137, 'Ankush Lakhmani', 'CSE', 1, 16, 'Ankush Lakhmani', '9044664478', '', '2013-09-30', '16:12:53', 1, 0),
(138, 'dheeraj kumar ramotra', 'CSE', 1, 25, 'dheeraj', '12345', '', '2013-09-30', '16:13:32', 1, 0),
(139, 'Abhishek kumar', 'CSE', 1, 5, 'abhi26kumar', '9012046901', '', '2013-09-30', '16:14:08', 1, 0),
(140, 'anoop  patel', 'CSE', 1, 17, 'anoop patel', '123', '', '2013-09-30', '16:15:27', 1, 0),
(141, 'DEEPANSHU RAJ', 'CSE', 1, 22, 'drajranu@gmail.com', 'deepanshuchi', '', '2013-09-30', '16:16:47', 1, 0),
(142, 'anooppatel', 'CSE', 1, 17, 'anoop patel', '123', '', '2013-09-30', '16:17:21', 1, 0),
(143, 'ADITYA KUMAR', 'CSE', 1, 9, 'Aditya', 'bittooboss', '', '2013-09-30', '16:17:42', 1, 0),
(144, 'deepchand chauhan', 'CSE', 1, 23, 'deepchand', '1246', '', '2013-09-30', '16:18:11', 1, 0),
(145, 'anoop  patel', 'CSE', 1, 17, 'anooppatel', '123', '', '2013-09-30', '16:19:04', 1, 0),
(146, 'abhishek sahu', 'CSE', 1, 7, 'itsmesahuabhishek@gm', 'abhi9568613107', '', '2013-09-30', '16:19:21', 1, 0),
(147, 'AJAY KUMAR PRAJAPATI', 'CSE', 1, 10, '  ajay kumar    praj', 'ayfffff', '', '2013-09-30', '16:20:37', 1, 0),
(148, 'abhishek sahu', 'CSE', 1, 7, 'abhishek.sahu', 'abhi9568613107', '', '2013-09-30', '16:21:24', 1, 0),
(149, 'deepchand chauhan', 'CSE', 1, 23, 'deepchand', 'deepchand', '', '2013-09-30', '16:22:54', 1, 0),
(150, 'AJAY KUMAR PRAJAPATI', 'CSE', 1, 10, 'ajay', '9627128675', '', '2013-09-30', '16:23:33', 1, 0),
(151, 'deepchand chauhan', 'CSE', 1, 23, 'deepchand', 'deep', '', '2013-09-30', '16:25:35', 1, 0),
(152, 'ajay kumar prajapati', 'CSE', 1, 10, 'ajay', '9627128675', '', '2013-09-30', '16:27:18', 1, 0),
(153, 'deepchand chauhan', 'CSE', 1, 23, 'deepchand', 'deep', '', '2013-09-30', '16:29:53', 1, 0),
(154, 'RAJESH AGGARWAL', 'EEE', 2, 57, 'RAJESH01AG', '9006894755', '', '2014-01-29', '11:40:07', 1, 0),
(155, 'alok', 'ECE', 2, 0, 'alok', 'alok', '', '2014-04-14', '23:45:45', 1, 1),
(156, 'alok', 'ECE', 2, 0, 'alok', 'alok', '', '2014-04-14', '23:46:41', 1, 1),
(157, 'alok', 'ECE', 2, 9, 'alok', 'alok', '', '2014-04-14', '23:50:20', 1, 1),
(158, 'alok', 'ECE', 2, 9, 'alok', 'alok', '', '2014-04-14', '23:51:14', 1, 1),
(159, 'Sumit', 'CSE', 1, 2, 'sumit', 'sumit', '', '2014-04-15', '00:32:41', 1, 0),
(160, 'Student', 'CSE', 1, 1, 'student', 'student', '', '2014-04-15', '00:39:28', 1, 1),
(161, 'Aa', 'ECE', 3, 11, 'aa', 'aa', '', '2014-04-15', '00:50:01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `branch` varchar(5) NOT NULL,
  `year` int(11) NOT NULL,
  `Maxmarks` int(11) NOT NULL,
  `ans_correct` int(11) NOT NULL,
  `ans_incorrect` int(11) NOT NULL,
  `Ques_utmpted` int(11) NOT NULL,
  `Obtmarks` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `sname`, `branch`, `year`, `Maxmarks`, `ans_correct`, `ans_incorrect`, `Ques_utmpted`, `Obtmarks`) VALUES
(1, 'dilip yadav', 'CSE', 1, 0, 8, 22, 0, 24),
(3, 'SAURABH CHAUHAN', 'CSE', 1, 0, 13, 16, 1, 39),
(5, 's.mourya', 'CSE', 1, 0, 8, 22, 0, 24),
(6, 'NITESH KUMAR RAI', 'CSE', 1, 0, 12, 18, 0, 36),
(7, 'Shubhajyoti Das', 'CSE', 1, 0, 10, 20, 0, 30),
(8, 'Rakesh Singh Rawat', 'CSE', 1, 0, 7, 23, 0, 21),
(9, 'SHUBHAM GUPTA', 'CSE', 1, 0, 9, 21, 0, 27),
(10, 'sandeep singh', 'CSE', 1, 0, 11, 19, 0, 33),
(11, 'Himanshu Gupta', 'CSE', 1, 0, 5, 25, 0, 15),
(13, 'PRATEEK CHANDRA', 'CSE', 1, 0, 12, 18, 0, 36),
(15, 'Tapan Kumar Soren', 'CSE', 1, 0, 9, 21, 0, 27),
(16, 'vikram singh', 'CSE', 1, 0, 11, 19, 0, 33),
(18, 'shubham tulasyan', 'CSE', 1, 0, 10, 20, 0, 30),
(20, 'PRAKHAR SAXENA', 'CSE', 1, 0, 10, 20, 0, 30),
(21, 'Nitesh', 'CSE', 1, 0, 8, 22, 0, 24),
(25, 'pulkit agarwal', 'CSE', 1, 0, 9, 21, 0, 27),
(26, 'rishabh tiwari', 'CSE', 1, 0, 13, 17, 0, 39),
(27, 'SAURAV KUMAR', 'CSE', 1, 0, 14, 16, 0, 42),
(28, 'virendra kumawat', 'CSE', 1, 0, 9, 21, 0, 27),
(31, 'Tirunagari charan', 'CSE', 1, 0, 8, 22, 0, 24),
(32, 'rahul kumar soni', 'CSE', 1, 0, 9, 21, 0, 27),
(33, 'jitendra kumar', 'CSE', 1, 0, 9, 20, 1, 27),
(35, 'SUNIL KUMAR KAUSHIK', 'CSE', 1, 0, 11, 19, 0, 33),
(36, 'mukesh kumar', 'CSE', 1, 0, 10, 19, 1, 30),
(37, 'Sundarlal Baror', 'CSE', 1, 0, 11, 19, 0, 33),
(38, 'sajal gupta', 'CSE', 1, 0, 12, 18, 0, 36),
(39, 'satyam', 'CSE', 1, 0, 12, 18, 0, 36),
(40, 'GAURAV SHUKLA', 'CSE', 1, 0, 11, 19, 0, 33),
(41, 'RISHABH KUMAR JAIN', 'CSE', 1, 0, 9, 21, 0, 27),
(42, 'Altamash Khan', 'CSE', 1, 0, 12, 18, 0, 36),
(43, 'VIPUL CHANDRA', 'CSE', 1, 0, 11, 18, 1, 33),
(44, 'Shubham Verma', 'CSE', 1, 0, 13, 16, 1, 39),
(45, 'dheeraj kumar ramotra', 'CSE', 1, 0, 14, 15, 1, 42),
(46, 'omprakash bhakar', 'CSE', 1, 0, 9, 20, 1, 27),
(47, 'DEEPANSHU RAJ', 'CSE', 1, 0, 8, 22, 0, 24),
(48, 'Abhishek kumar', 'CSE', 1, 0, 11, 14, 5, 33),
(49, 'anoop  patel', 'CSE', 1, 0, 5, 18, 7, 15),
(50, 'Abhishek Gupta', 'CSE', 1, 0, 13, 17, 0, 39),
(51, 'Ankush Lakhmani', 'CSE', 1, 0, 12, 18, 0, 36),
(55, 'abhishek sahu', 'CSE', 1, 0, 6, 22, 2, 18),
(56, 'deepchand chauhan', 'CSE', 1, 0, 7, 16, 7, 21),
(57, 'AJAY KUMAR PRAJAPATI', 'CSE', 1, 0, 14, 16, 0, 42),
(58, 'RAJESH AGGARWAL', 'EEE', 2, 0, 1, 1, 28, 3),
(59, 'Ashutosh kumar', 'ECE', 1, 0, 2, 6, 22, 0),
(60, 'Ashutosh kumar', 'ECE', 1, 0, 0, 0, 31, 0);

-- --------------------------------------------------------

--
-- Table structure for table `test1ques`
--

CREATE TABLE IF NOT EXISTS `test1ques` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `opt1` text NOT NULL,
  `opt2` text NOT NULL,
  `opt3` text NOT NULL,
  `opt4` text NOT NULL,
  `correct_ans` text NOT NULL,
  `isdeleted` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `test1ques`
--

INSERT INTO `test1ques` (`qid`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `correct_ans`, `isdeleted`) VALUES
(14, 'Recently (August, 2013), US International Trade Commission has imposed ban on importing and selling of which mobiles in the US market?\r\n', 'Nokia', 'Apple', 'Samsung', 'Blackberry', 'Samsung', 0),
(15, 'Which of the following nations are considered triad nuclear powers?\r\n1.Russia\r\n2.United States\r\n3.China\r\n4.India\r\nChoose the correct answers from the code given below:\r\n', 'Only 1 & 2', 'Only 1, 2 & 4', 'Only 2 & 4', 'Only 1, 2 & 3', 'Only 1 & 2', 0),
(17, 'According to TRAI Telecommunication Mobile Number Portability (Fifth Amendment) Regulations, 2013 how many corporate mobile numbers of service providers can be ported to another service provider through letter of authorization?\r\n', 'Upto 50%', 'Upto 60%', 'Upto 75%', 'Upto 100%', 'Upto 50%', 0),
(18, 'Auto-mobile Industry sector, contribute what percent of the countryâ€™s manufacturing GDP?\r\n', '15', '20', '22', '25', '25', 0),
(19, 'Recently (August, 2013), RBI has announced that it will sell government bonds worth ___ crore rupees every Monday to check volatility in the foreign exchange market. Fill the blank with correct option?\r\n', '10,000', '15,000', '20,000', '15,000', '20,000', 0),
(20, 'Who among the followings has become the first Indian woman player to clinch an individual medal at the World Badminton Championship?\r\n', 'P V Sindhu', 'Saina Nehwal', 'Ashwini Ponnappa', 'Jwala Gutta', 'P V Sindhu', 0),
(21, 'With which of the following countries, India has signed civil nuclear cooperation agreement?\r\n1.France\r\n2.USA\r\n3.Canada\r\n4.Japan\r\n5.Australia\r\nChoose the correct option from the codes given below:\r\n', 'Only 1, 2, 3 & 4', 'Only 1, 2, 3, & 5', 'Only 1, 2 & 3', 'All the above', 'Only 1, 2 & 3', 0),
(22, 'In a recent decision, union government approved setting up of how many Mega Food Parks during 12th plan period?\r\n', '11', '12', '14', '15', '12', 0),
(23, 'According to a latest report, which of the following countries has the largest group of overseas citizens of India?\r\n', 'United States', 'Canada', 'South Africa', 'Australia', 'United States', 1),
(24, 'Currently, which one of the followings is the top profit-making Public Sector Undertakings (PSUs)?', 'ONGC', 'BSNL', 'NTPC', 'SAIL', 'ONGC', 0),
(26, 'Till date, how many Prime Ministers of India got defeated in no-confidence motion against them?', 'One', 'Two', 'Three', 'Four', 'Three', 0),
(27, 'According to Forbes, who among the followings has topped the Forbes List of Top Paid Female Athlete?\r\n', 'Saina Nehwal', 'Sania Mirza', 'Maria Sharapova', 'Serena Williams', 'Maria Sharapova', 0),
(28, 'Which one of the following will become the first e-court of the country, where petitions filed via e-mails would be entertained?\r\n', 'Bangalore High Court', 'Madras High Court', 'Bombay High Court', 'Delhi High Court', 'Bombay High Court', 1),
(29, 'Name the Indian Chess Player who has won Politiken Cup in Denmark.\r\n', 'Vishwanathan Anand', 'P Harikrishna', 'Parimanjan Negi', 'Abhijit Kunte', 'Parimanjan Negi', 1),
(30, 'Which of the following places is famous for â€œChikankari Workâ€, a traditional embroidery art?', 'Lucknow', 'Jaipur', 'Ajmer', 'Dharmavaram', 'Lucknow', 1),
(31, 'By defeating which one of the following teams, India has won historic bronze medal at junior women hockey world cup in August 2013?\r\n', 'Holland', 'South Africa', 'Pakistan', 'England', 'England', 1),
(32, 'Which of the following IITs has designing rail coaches that will draw power from the sun for interior lighting and cooking?\r\n', 'IIT Kanpur', 'IIT Madras', 'IIT Kharagpur', 'IIT Delhi', 'IIT Madras', 1),
(33, 'Who among the following has become the first cricketer to hit 400 sixes in an International Career?\r\n', 'Chris Gayle', 'Virendra Shehwag', 'Shahid Afridi', 'Kevin Peterson', 'Shahid Afridi', 1),
(34, 'Recently (July 2013) , which of the following state has become the first in country launch video chat in prisons?\r\n', 'Haryana', 'Uttar Pradesh', 'Himachal Pradesh', 'Assam', 'Himachal Pradesh', 0),
(35, 'In which of the following countries, Wikileaks founder Julian Assange has officially launched his Wikileaks political party?\r\n', 'Australia', 'USA', 'Russia', 'Canada', 'Australia', 1),
(36, 'As per the latest report (July 2013), which of the following has become the worldâ€™s most profitable mobile handset vendor?\r\n', 'Apple', 'Nokia', 'Samsung', 'Motorola', 'Samsung', 1),
(37, 'The total number of Olympic gold medals in field hockey won by India is __?\r\n', 'Five', 'Eight', 'Nine', 'Eleven', 'Eight', 1),
(38, 'Indiaâ€™s first cashless treatment of road accident victims has been recently launched at which among the following highways / corridors?\r\n', 'Gurgaon-Jaipur', 'Bangalore-Chennai', 'Mumbai-Ahmadabad', 'Mumbai-Pune', 'Gurgaon-Jaipur', 0),
(39, 'Who among the following has been selected for â€œAsia Business Leaders Award 2013â€?\r\n', 'Ratan Tata', 'Mukesh Ambani', 'Azim Premji', 'Narayana Murthy', 'Azim Premji', 0),
(40, 'Recently, in which of the following cities, countryâ€™s first wireless traffic controller system has been unveiled?\r\n', 'Bangalore', 'Chennai', 'Mumbai', 'New Delhi', 'New Delhi', 1),
(41, 'Recently, which one of the following Telecom operator announced that it would offer free access of Wikipedia to its customers?\r\n', 'Airtel', 'Aircel', 'Idea', 'Vodafone', 'Aircel', 0),
(42, 'The Union Government has decided to make production of Photo identity card mandatory for purchase of which of the following commodity?\r\n', 'Ammonium Nitrate', 'LPG', 'Acids', 'Alcohol', 'Acids', 0),
(43, 'Indiaâ€™s Deepika Kumari who is news recently, is associated with which sports / games?\r\n', 'Archery', 'Boxing', 'Cycling', 'High Jump', 'Archery', 0),
(44, 'As present, how many states have Woman Chief Ministers?\r\n', 'Two', 'Three', 'Four', 'One', 'Three', 0),
(45, 'As per the latest data (June, 2013), India ranks _____ in terms of number of internet users.\r\n', 'First', 'Second', 'Third', 'Fourth', 'Third', 0),
(46, 'Which of the following is used in Diesel engine?\r\n', 'Cylinder and Spark plug', 'Spark plug and Piston', 'Cylinder, Spark plug and Piston', 'Cylinder and Piston', 'Cylinder and Piston', 1),
(47, 'United Nation has declared which one of the following dates as â€œMalala Dayâ€?\r\n', 'July 10', 'July 12', 'July 14', 'July 15', 'July 12', 1),
(48, 'The abbreviated form of Computer VIRUS is______?\r\n', 'Vital Information Resource Under Seize', 'Vital Information Resource Under Secure', 'Vital Information Replication Under Seize', 'Vital Information Replication Under Secure', 'Vital Information Resource Under Secure', 1),
(49, 'The BSNL has announced that it will close down the Telegram service from July 15, 2013, thus Telegraph becoming a thing of past. In which year, first Telegram was sent in India?\r\n', '1848', '1850', '1853', '1857', '1850', 1),
(50, 'Recently, India has withdrawn all subsidies on cooking gas and kerosene being provided to which one of the following country?\r\n', 'Nepal', 'Bhutan', 'Pakistan', 'Afghanistan', 'Bhutan', 0),
(51, 'Which of the following countries has largest Muslim population?\r\n', 'Pakistan', 'India', 'Indonesia', 'Bangladesh', 'Indonesia', 1),
(52, 'The Union Government has given nod to set up countryâ€™s first Woman University at which of the following place?\r\n', 'Raebarelli, Uttar Pradesh', 'Mysore, Karnataka', 'Nasik, Maharastra', 'Anand, Gujarat', 'Raebarelli, Uttar Pradesh', 1),
(53, 'Which of the following movies has won best movie award at 14th IIFA-2013?\r\n', 'Kahaani', 'Barfi', 'Ek Tha Tiger', 'Bodyguard', 'Barfi', 1),
(54, 'As per the latest ICC Test rankings (July 2013), which of the following country is in top position?\r\n', 'South Africa', 'England', 'India', 'Australia', 'South Africa', 0),
(55, 'Who among the following are the winners of Menâ€™s and Womenâ€™s single title in Wimbledon Tennis -2013?\r\n', 'Roger Federer, Serena Williams', 'Rafeal Nadal, Marion Bartoli', 'Andy Murray, Marion Bartoli', 'Daniel Nestor, Marion Bartoli', 'Andy Murray, Marion Bartoli', 0),
(56, 'Vikas Gowda, who clinched Indiaâ€™s first gold at Asian Meet is associated with which of the following Athletic sports?\r\n', 'Discus Throw', 'High Jump', 'Javelin Throw', 'Wrestling', 'Discus Throw', 0),
(57, 'Recently, Pakistan Cricket Board imposed a life ban on which one of the following Pakistan Cricket Player?\r\n', 'Salman Bhatt', 'Danish Kaneria', 'Shahid Afridi', 'Shoib Mallik', 'Danish Kaneria', 0),
(58, 'Who among the following has been elected as president of Asian Athletic Associationâ€™s?\r\n', 'Suresh Kalmadi', 'Dahlan Jumaan Al-Hamad', 'Adille Sumariwala', 'C K Valson', 'Dahlan Jumaan Al-Hamad', 1),
(59, 'Annashree Yojana is a flagship programme of which one of the following state?\r\n', 'Delhi', 'Haryana', 'Punjab', 'Uttarkhand', 'Delhi', 1),
(60, 'Which of the following country has become the winner of FIFA Confederations cup 2013?\r\n', 'Brazil', 'Spain', 'Italy', 'Germany', 'Brazil', 1),
(61, 'Recently, which of the following state has been declared as first â€œSmoke Freeâ€ state in the country?\r\n', 'Himachal Pradesh', 'Odisha', 'Jharkhand', 'Haryana', 'Himachal Pradesh', 1),
(62, 'Recently, which of the following Non-Banking Financial Company (NBFC) got approval from the Reserve Bank of India (RBI) for establishing as well as operating White Label ATMs?\r\n', 'Power Finance Corp', 'Mahindra and Mahindra', 'Muthoot Finance', 'Edelweiss capital', 'Muthoot Finance', 1),
(63, 'Which of the following company recently unveiled the Worldâ€™s first Firefox operating smartphone?\r\n', 'Samsung', 'Micromax', 'Telefonica', 'Nokia', 'Telefonica', 1),
(64, 'What is the name of the Sun observing satellite launched by NASA recently?\r\n', 'IRIS', 'Crusader', 'Corona', 'Sunset', 'IRIS', 1),
(65, 'Which of the following space agency is partnering ISROâ€™s Mars Orbiter Mission?\r\n', 'NASA', 'European space agency', 'Russian Space agency', 'French space agency', 'NASA', 1),
(66, 'Recently, which one of the following car entered the Guinness World Records for driving on a longest journey?\r\n', 'Nano', 'Swift', 'Alto', 'Ford', 'Nano', 1),
(67, 'Which one of the following state has recently launched â€œMukhyamantri Bijli Bachat Lamp Yojnaâ€ for energy conservation?\r\n', 'Rajasthan', 'Uttar Pradesh', 'Jharkhand', 'Punjab', 'Rajasthan', 1),
(68, 'Nirmal Gram Puraskarâ€ award is related to which one of the following ministry?\r\n', 'Ministry of Environment and Forest', 'Ministry of Rural Development', 'Ministry of Culture', 'Ministry of Social Welfare', 'Ministry of Rural Development', 1),
(69, 'Who among the following has been ranked top in the most powerful celebrity list of Forbes?\r\n', 'Lady Gaga', 'Steven Spielberg', 'Oprah Winfrey', 'Madonna', 'Oprah Winfrey', 1),
(70, 'a', 'a', 'a', 'a', 'a', 'a', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
