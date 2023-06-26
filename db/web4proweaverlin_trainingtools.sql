-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 11:47 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web4proweaverlin_trainingtools`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_subject`
--

CREATE TABLE `activity_subject` (
  `id` int(11) NOT NULL,
  `subject_title` varchar(225) NOT NULL,
  `subject_slug` varchar(80) NOT NULL,
  `activity_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_subject`
--

INSERT INTO `activity_subject` (`id`, `subject_title`, `subject_slug`, `activity_id`) VALUES
(4, 'Anatomy of Website', 'anatomy-of-website', 1),
(5, 'Structuring of File/ Coding', 'structuring-of-file-coding', 1),
(6, 'HTML/ CSS ', 'html-css', 1),
(8, 'WordPress Installlation Guidelines', 'wordpress-installlation-guidelines', 5),
(10, 'Understanding of FTP/File Manager and File Editor', 'understanding-of-ftpfile-manager-and-file-editor', 7),
(11, '3D Content Posting SOPs and Guideline', '3d-content-posting-sops-and-guideline', 8),
(13, 'Website Convertion w/ Template', 'website-convertion-w-template', 3),
(15, 'Overall Task Process', 'overall-task-process', 9),
(16, 'Other Team Guidelines', 'other-team-guidelines', 9),
(17, 'Ticket Guidelines', 'ticket-guidelines', 9),
(18, 'Orch Entry Guidelines', 'orch-entry-guidelines', 9),
(19, 'Other Areas of the Orchestra (Additional Info, and Next Step)', 'other-areas-of-the-orchestra-additional-info-and-next-step', 9),
(20, 'Training Backup Process', 'training-backup-process', 9),
(21, 'Updating of Contact Information', 'updating-of-contact-information', 9),
(22, 'Website Conversion - HTML/CSS', 'website-conversion-html-css', 3),
(23, 'Website Conversion - Responsive View', 'website-conversion---responsive-view', 4),
(24, 'Website Conversion - WordPres Activation', 'website-conversion-wordpres-activation', 5),
(30, 'Use/ Common HTML tags', 'use-common-html-tags', 2);

-- --------------------------------------------------------

--
-- Table structure for table `activity_topics`
--

CREATE TABLE `activity_topics` (
  `id` int(11) NOT NULL,
  `topic_name` varchar(225) NOT NULL,
  `topic_desc` text NOT NULL,
  `topic_file` int(11) DEFAULT NULL,
  `topic_link` varchar(225) DEFAULT NULL,
  `topic_subject` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_topics`
--

INSERT INTO `activity_topics` (`id`, `topic_name`, `topic_desc`, `topic_file`, `topic_link`, `topic_subject`) VALUES
(1, 'test', 'test', NULL, NULL, 28),
(2, 'test2', 'test', NULL, NULL, 28),
(3, 'test3', 'test', NULL, NULL, 28),
(4, 'test4', 'test', NULL, NULL, 28),
(5, 'Website Anatomy Image', '<p>see below.</p>\r\n', NULL, 'SampleVideo_1280x720_1mb11.mp4', 4),
(6, 'HTML/CSS', '<p>Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML or XML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript. Wikipedia</p>\r\n', NULL, 'day3/sample.mp4', 30),
(7, 'HTML/CSS (Part 1)', '<p>part 1</p>\r\n', NULL, 'day3/sample.mp4', 30),
(8, 'HTML/CSS (Part 2)', '<p>Part 2</p>\r\n', NULL, NULL, 30);

-- --------------------------------------------------------

--
-- Table structure for table `activity_topics_file`
--

CREATE TABLE `activity_topics_file` (
  `id` int(11) NOT NULL,
  `file_name` text NOT NULL,
  `file_format` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `activity_topics_subjects`
--

CREATE TABLE `activity_topics_subjects` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `activity_training`
--

CREATE TABLE `activity_training` (
  `id` int(11) NOT NULL,
  `activity_title` varchar(225) NOT NULL,
  `activity_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_training`
--

INSERT INTO `activity_training` (`id`, `activity_title`, `activity_desc`) VALUES
(1, 'Day 1', '<p>(Basic HTML/CSS and Responsive Conversion)</p>\r\n'),
(2, 'Day 2', '<p>(Convert Website Layout from the scratch)</p>\r\n'),
(3, 'Day 3', '<p>(Website Conversion Using Template)</p>\r\n'),
(4, 'Day 4', '<p>(Website Conversion Using Template)</p>\r\n'),
(5, 'Day 5', '<p>(Website Conversion Using Template)</p>\r\n'),
(6, 'Day 6', '<p>(Continue Conversion)</p>\r\n'),
(7, 'Day 7', '<p>FTP/File Manager - Website Upload&nbsp;</p>\r\n'),
(8, 'Day 8', '<p>3D Discussion</p>\r\n'),
(9, 'Day 9', '<p>Task Process</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time_in` text DEFAULT NULL,
  `time_out` text DEFAULT NULL,
  `late` text DEFAULT NULL,
  `date_attendance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `user_id`, `time_in`, `time_out`, `late`, `date_attendance`) VALUES
(43, 1, '09:10', '19:05', '00:10:00', '2023-03-01'),
(44, 1, '09:10', '19:09', '00:10:00', '2023-03-02'),
(45, 8, NULL, NULL, NULL, '2023-03-02'),
(46, 2, NULL, NULL, NULL, '2023-03-02'),
(47, 1, '09:20', NULL, '00:20:00', '2023-03-03'),
(48, 3, NULL, NULL, NULL, '2023-03-03'),
(49, 25, '09:00', '18:00', NULL, '2023-03-06'),
(50, 25, '09:00', '18:00', NULL, '2023-03-07'),
(51, 24, '09:00', '18:00', NULL, '2023-03-06'),
(52, 3, '15:24', '15:24', '06:24:00', '2023-03-07'),
(53, 8, NULL, NULL, NULL, '2023-03-07'),
(54, 24, '09:00', '18:00', NULL, '2023-03-07'),
(55, 1, '09:30', NULL, '00:30:00', '2023-03-08'),
(56, 24, '08:39', '18:00', NULL, '2023-03-08'),
(57, 25, '08:05', '18:06', NULL, '2023-03-08'),
(58, 3, NULL, NULL, NULL, '2023-03-08'),
(59, 25, '08:17', '18:00', NULL, '2023-03-09'),
(60, 24, '08:38', '18:06', NULL, '2023-03-09'),
(61, 26, NULL, NULL, NULL, '2023-03-09'),
(62, 25, '07:57', '18:02', NULL, '2023-03-10'),
(63, 24, '08:13', '18:01', NULL, '2023-03-10'),
(64, 25, '08:54', '18:03', NULL, '2023-03-13'),
(65, 24, '08:54', '18:03', NULL, '2023-03-13'),
(66, 25, '08:31', '18:06', NULL, '2023-03-14'),
(67, 24, '08:35', '18:07', NULL, '2023-03-14'),
(68, 1, '09:12', NULL, '00:12:00', '2023-03-14'),
(69, 25, '09:00', '18:05', NULL, '2023-03-15'),
(70, 24, '09:00', '18:04', NULL, '2023-03-15'),
(71, 24, '08:06', '18:03', NULL, '2023-03-16'),
(72, 25, '08:33', '18:06', NULL, '2023-03-16'),
(73, 24, '08:03', '18:00', NULL, '2023-03-17'),
(74, 25, '08:20', '18:03', NULL, '2023-03-17'),
(75, 1, NULL, NULL, NULL, '2023-03-17'),
(76, 24, '08:33', '18:00', NULL, '2023-03-20'),
(77, 25, '08:40', '18:04', NULL, '2023-03-20'),
(78, 26, NULL, NULL, NULL, '2023-03-20'),
(79, 27, '09:00', '18:05', NULL, '2023-03-20'),
(80, 25, '08:22', '18:01', NULL, '2023-03-21'),
(81, 24, '08:24', '18:00', NULL, '2023-03-21'),
(82, 27, '09:04', '18:05', '00:04:00', '2023-03-21'),
(83, 25, '08:21', '18:02', NULL, '2023-03-22'),
(84, 24, '08:27', '18:00', NULL, '2023-03-22'),
(85, 27, '08:32', '18:17', NULL, '2023-03-22'),
(86, 24, '07:58', '18:00', NULL, '2023-03-23'),
(87, 25, '08:15', '18:03', NULL, '2023-03-23'),
(88, 27, '08:34', '18:18', NULL, '2023-03-23'),
(89, 25, '08:21', '18:00', NULL, '2023-03-24'),
(90, 24, '08:24', '18:00', NULL, '2023-03-24'),
(91, 27, '08:37', '18:31', NULL, '2023-03-24'),
(92, 24, '08:05', '18:04', NULL, '2023-03-27'),
(93, 25, '08:22', '18:10', NULL, '2023-03-27'),
(94, 27, '08:23', '18:22', NULL, '2023-03-27'),
(95, 27, '08:18', '18:00', NULL, '2023-03-28'),
(96, 27, '08:34', '18:07', NULL, '2023-03-29'),
(97, 27, '08:33', '18:00', NULL, '2023-03-30'),
(98, 29, '09:15', '18:03', '00:15:00', '2023-03-30'),
(99, 30, '09:30', '18:03', '00:30:00', '2023-03-30'),
(100, 27, '08:11', '18:10', NULL, '2023-03-31'),
(101, 30, '08:57', '18:05', NULL, '2023-03-31'),
(102, 29, '08:59', '18:08', NULL, '2023-03-31'),
(103, 29, '08:49', '18:14', NULL, '2023-04-03'),
(104, 30, '08:53', '18:13', NULL, '2023-04-03'),
(105, 27, '08:58', '18:01', NULL, '2023-04-03'),
(106, 27, '08:45', '18:10', NULL, '2023-04-04'),
(107, 29, '08:53', '18:25', NULL, '2023-04-04'),
(108, 30, '08:57', '18:26', NULL, '2023-04-04'),
(109, 29, '08:24', '15:02', NULL, '2023-04-05'),
(110, 27, '08:41', '18:00', NULL, '2023-04-05'),
(111, 30, '08:55', '18:09', NULL, '2023-04-05'),
(112, 27, '08:32', '18:05', NULL, '2023-04-11'),
(113, 29, '08:42', '18:21', NULL, '2023-04-11'),
(114, 30, '09:07', '18:13', '00:07:00', '2023-04-11'),
(115, 30, '08:22', '18:07', NULL, '2023-04-12'),
(116, 29, '08:41', '12:06', NULL, '2023-04-12'),
(117, 27, '08:45', '18:10', NULL, '2023-04-12'),
(118, 30, '08:37', '18:10', NULL, '2023-04-13'),
(119, 29, '08:54', '18:09', NULL, '2023-04-13'),
(120, 30, '08:41', '18:21', NULL, '2023-04-14'),
(121, 29, '08:54', '18:14', NULL, '2023-04-14'),
(122, 30, '08:28', '18:13', NULL, '2023-04-17'),
(123, 29, '08:44', '18:16', NULL, '2023-04-17'),
(124, 29, '08:38', '18:23', NULL, '2023-04-18'),
(125, 30, '10:02', '18:06', '01:02:00', '2023-04-18'),
(126, 30, '08:32', '18:11', NULL, '2023-04-19'),
(127, 29, '08:49', '18:04', NULL, '2023-04-19'),
(128, 29, '08:47', '18:01', NULL, '2023-04-20'),
(129, 30, '08:49', '18:09', NULL, '2023-04-20'),
(130, 30, '08:42', '18:05', NULL, '2023-04-24'),
(131, 29, '08:53', '18:04', NULL, '2023-04-24'),
(132, 30, '08:38', '18:45', NULL, '2023-04-25'),
(133, 29, '08:48', '18:50', NULL, '2023-04-25'),
(134, 31, '09:00', '18:00', NULL, '2023-04-25'),
(135, 31, '09:00', '18:04', NULL, '2023-04-26'),
(136, 31, '08:57', '18:03', NULL, '2023-04-27'),
(137, 1, NULL, NULL, NULL, '2023-04-27'),
(138, 31, '08:53', '18:32', NULL, '2023-04-28'),
(139, 30, '08:51', '12:35', NULL, '2023-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `contact_person` varchar(225) CHARACTER SET utf8 NOT NULL,
  `email_address` varchar(225) NOT NULL,
  `nature_of_business` varchar(225) NOT NULL,
  `website_access` text NOT NULL,
  `other_access` text NOT NULL,
  `task_list` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `websitefiles_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = reset, 1 = used',
  `added_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `handling_agent` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `contact_person`, `email_address`, `nature_of_business`, `website_access`, `other_access`, `task_list`, `status`, `websitefiles_status`, `added_by`, `date_created`, `handling_agent`) VALUES
(19, 'New Chapter Foundation', 'Derrick', 'derrick@newchapterfdn.org', 'HEALTH CARE: Group Home', '<p><strong>Website Links</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921\">https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database Info:</strong></p>\r\n\r\n<p><a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training13<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/ghde1005.php\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/ghde1005.php</a><br />\r\nUsername : <strong>newchapterck</strong><br />\r\nPassword : <strong>k9R9qq&gt;$Z#9yD&lt;1</strong></p>\r\n', 0, 1, 0, 3, '2022-03-28 12:01:50', 'Abby'),
(21, 'Able Autism Therapy Services', 'Idris', 'info@ableaba.com', 'Health Care', '<p>Website Info: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nHost: <strong>192.249.120.185</strong><br />\r\nUsername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\nPassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: <strong>webprosite19_training01</strong><br />\r\nUsername: <strong>webprosite19_trainingusr</strong><br />\r\nPassword: <strong>tts6d@iy8JN)</strong></p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/atid0147.php\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/atid0147.php</a><br />\r\nUsername: <strong>ableautismis</strong><br />\r\nPassword: <strong>E0I!mUOgp%EXw&amp;ShT1</strong></p>\r\n', 0, 1, 0, 1, '2022-03-29 05:25:12', 'Anna'),
(24, 'Empathy Health Services, Inc.', 'Janice Manase', 'empathyhealthservices@gmail.com', 'HEALTH CARE: Home Health Care', '<blockquote>\r\n<p><em>To be provided...</em></p>\r\n</blockquote>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-03-30 18:23:00', NULL),
(25, 'Karma Healthcare Staffing Consultants ', 'Isaac Newston', 'isaac@karmahealthcare.com', 'Health Care', '<p><strong>Website Link</strong></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p><br />\r\n<strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training11<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Wordpress Login Details:<br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/hsjo0202.php\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/hsjo0202.php</a><br />\r\nUsername: karmahealthua<br />\r\nPassword: gyCh*h3&amp;W/9&amp;s61</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Userway ADA Login Details:</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/wp-admin/admin.php?page=userway\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/wp-admin/admin.php?page=userway</a></p>\r\n\r\n<p>Username: trainingproweaver@gmail.com<br />\r\nPassword: AX4t12%Q?v#w*C1</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 0, 1, 0, 3, '2022-03-30 19:10:52', 'Amanda'),
(26, 'Boler Clinic', 'Arnold Schwazzenginger', 'arnold@bolerchu.com', 'Pharmacy', '<p><strong>Website Link:</strong></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p><br />\r\n<strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training07<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/wibc1144.php\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/wibc1144.php</a><br />\r\nUsername: bolerclinicbu<br />\r\nPassword: $?6Xt2$$Ij5VAR1</p>\r\n', 0, 1, 0, 3, '2022-03-30 19:40:40', 'Vera'),
(27, 'Love & Care Staffing Agency', 'Lovely Care', 'lovely@lovecarestaffing.com', 'Healthcare Staffing', '<p>Website Link: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/lovecareia556/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/lovecareia556/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training12<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n', '<p><strong>WordPress login details:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/lovecareia556/hscy1247.php\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/lovecareia556/hscy1247.php</a><br />\r\nUsername: <strong>lovecareia</strong><br />\r\nPassword: <strong>u(+47Yd/5fQ&amp;sY1</strong></p>\r\n', 0, 1, 0, 3, '2022-03-31 18:24:25', 'Abby'),
(28, 'Trusty Home Health Care LLC', 'Harry Potter', 'hairypotter@trustyhomecare.com', 'Homecare', '<p>Website Link: <a href=\"http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/</a><br />\r\n<br />\r\n<strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training15<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n', '<p>Wordpress Login Details:<br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/hcaa1152.php\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/hcaa1152.php</a><br />\r\nUsername: <strong>trustyhomean</strong><br />\r\nPassword: <strong>a&gt;3m6tSG^u6F??1</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 1, 0, 3, '2022-03-31 18:49:25', 'Eve'),
(29, 'Bestvalue Healthcare, Inc.', 'Kamado Tanjirou', 'kamado@bestvaluehc.com', 'Healthcare', '<p>Website Link: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training06<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n', '<p>Wordpress Login Details:<br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/wp-login.php\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/wp-login.php</a><br />\r\nUsername: <strong>bestvaluehc</strong><br />\r\nPassword: <strong>BestValueHC2021!@</strong></p>\r\n', 0, 1, 0, 3, '2022-04-01 00:33:33', 'Abby'),
(30, 'Care Assist Inc.', 'Will Smith', 'smithslap@careassistinc.com', 'Homecare', '<p>Website URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/careassiston197/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/careassiston197/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training08<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/careassiston197/hcrd1032.php\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/careassiston197/hcrd1032.php</a><br />\r\nUsername : <strong>careassiston</strong><br />\r\nPassword : <strong>1/aN&gt;ORtFp0#/11</strong></p>\r\n', 0, 1, 0, 3, '2022-04-01 00:38:24', 'Nancy'),
(31, 'Aspire Home Healthcare Services and Staffing Agency LLC', 'Ryan Reynolds', 'ryan@aspirehomehealthcare.com', 'Homecare and Healthcare Staffing', '<p>Website Link: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training04<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n', '<p><strong>WordPress Login Details:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/hcrm0738.php\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/hcrm0738.php</a><br />\r\nPsername: aspirehomega<br />\r\nPassword: /!)i40VYGvrN&amp;41</p>\r\n', 0, 1, 0, 3, '2022-04-01 00:43:49', 'Carla'),
(32, 'Invise', 'Marc Spector', 'marcspector@invise.com', 'Business Consulting', '<p>Website Link: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training10<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/inviseer200/albc1010.php\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/inviseer200/albc1010.php</a><br />\r\nUsername: <strong>inviseer</strong><br />\r\nPassword: <strong>r0Y=C4@8ALk,_U1</strong></p>\r\n', 0, 1, 0, 3, '2022-04-01 00:50:08', 'Amanda'),
(33, 'Roseway Transport LLC', 'Tony Stark', 'admin@rosewaytransport.com', 'Intermodal Container Transportation', '<p>Website Link: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training14<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/icmw0148.php\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/icmw0148.php</a><br />\r\nUsername: <strong>rosewaytransrt</strong><br />\r\nPassword: <strong>7nUG.+3Z4%.nTW1</strong></p>\r\n', 0, 1, 0, 3, '2022-04-01 00:58:39', 'Vera'),
(34, 'Reviving You Recovery House', 'Welsh Lizardman', 'welsh@revivingyou.org', 'Recovery Center', '<p>Website Link: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/revivingyouey680/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/revivingyouey680/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Database<br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: <strong>webprosite19_training16</strong><br />\r\nUsername: <strong>webprosite19_trainingusr</strong><br />\r\nPassword: <strong>tts6d@iy8JN)</strong></p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/revivingyouey680/hcdh109.php\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/revivingyouey680/hcdh109.php</a><br />\r\nUsername: revivingyouey<br />\r\nPassword: r=G76x$4m*^Quo1</p>\r\n', 0, 1, 0, 1, '2022-04-01 01:05:52', 'Kate'),
(35, 'Bellmed Transportation LLC', 'Bella Swan', 'bellebella@bellmed.com', 'Medical Transportation', '<p>Website Link: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training05<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/mtll1043.php\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/mtll1043.php</a><br />\r\nUsername: bellmedll<br />\r\nPassword: X3+D/I1Zy5/s#v1</p>\r\n', 0, 1, 0, 3, '2022-04-01 01:11:04', 'Elsa'),
(36, 'AMERICAN VETERANS HOSPICE', 'Steve Rogers', 'america@veteranshospice.com', 'Hospice Care', '<p>Website Link: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training03<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/wp-login.php\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/wp-login.php</a><br />\r\nUsername: <strong>americanvetda</strong><br />\r\nPassword:<strong> 5@bzQR(82HC@=N1</strong></p>\r\n', 0, 1, 0, 3, '2022-04-01 01:42:19', 'Anna'),
(37, 'Envision Home Health Services, Inc.', 'Merlyn Vano', 'merlyn@envisionhome.com', 'Home Healthcare', '<p>Website Link: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training09<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/hhdo0826.php\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/hhdo0826.php</a><br />\r\nUsername: <strong>envisionhomean</strong><br />\r\nPassword: <strong>+sD&gt;2rTm/qq44(1</strong></p>\r\n', 0, 1, 0, 3, '2022-04-01 04:07:45', 'Elsa'),
(38, 'Excellence Safe Home Care', 'Tosheta', 'lahlege@gmail.com', 'HEALTHCARE: Non-Medical Home Care: 65+ years old Elderly / Seniors and Disabled', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout02</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-12 00:03:02', 'Michelle'),
(39, 'Family First in Home Care Services, Inc', 'CRAIG MELEKEN', 'cmeleken@aol.com', 'HEALTHCARE: Non-Medical Home Care: 65+ years old Elderly / Seniors and Disabled', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout03</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path:<strong> /TRAINING</strong></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-12 00:06:21', 'Sofia'),
(42, 'Proweaver', '-', 'proweaver@mail.net', '-', '<p>-</p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-12 04:01:44', '-'),
(43, 'TRIO PROPERTY BUYERS', 'Bed', 'obed.ouano@proweaver.net', 'Real Estate', '<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout01</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n</div>\r\n', '<div class=\"content-custom mb-0\">\r\n<p><strong>WordPress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/bed/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/bed/authenticationlogin.php</a><br />\r\nUsername: <strong>triopropertybuyers</strong><br />\r\nPassword: <strong>TrioPropertyBuyers@#2022</strong></p>\r\n</div>\r\n', 0, 1, 0, 1, '2022-04-12 18:40:14', 'Vera'),
(46, 'Pioneer Transport Inc.', 'George Berry', 'gb@pioneerti.net', 'BUSINESS SERVICES: Transportation', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout05</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n', '<p><em>WordPress credentials here...</em></p>\r\n', 0, 1, 0, 1, '2022-04-24 22:39:01', 'Ivy'),
(47, 'MPA Healthcare Staffing Agency LLC', 'Martha Johannes', 'mj@mpahsa.com', 'STAFFING: Healthcare Staffing', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout06</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n', '<p>Website Link:</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/Lysa/mpahcstaffingagency/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/Lysa/mpahcstaffingagency/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WordPress login details:</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/Lysa/mpahcstaffingagency/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/Lysa/mpahcstaffingagency/authenticationlogin.php</a></p>\r\n\r\n<p>Username: <strong>mpahcstaffingagency</strong><br />\r\nPassword: <strong>MPAHcStaffingAgency!@2023</strong></p>\r\n', 0, 1, 0, 1, '2022-04-24 22:40:38', 'Amanda'),
(48, 'Eva Pharmacy', 'Elizabeth Onyekwere', 'eo@gmail.com', 'PHARMACY: Retail Pharmacy', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout07</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n', '<p><span style=\"color:#c0392b\"><em>WordPress access here...</em></span></p>\r\n', 0, 1, 0, 1, '2022-04-24 23:23:25', 'Carla'),
(49, 'Sufficient Enough Home Care Agency LLC', 'Yvonne Cochran', 'yvonnec@gmail.com', 'Home Care', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout08</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n', '<p>WordPress Login Link:<br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca/authenticationlogin.php</a><br />\r\nUsername: <strong>sufficientenoughhca</strong><br />\r\nPassword: <strong>SufficientEnoughhca&amp;*2023</strong></p>\r\n', 0, 1, 0, 1, '2022-04-24 23:26:41', 'Lyn '),
(51, 'Nextdoor Rx, Inc. ', 'Ahmad Almasri, Mokhtare, Jila G', 'nextdoorrx@gmail.com', 'PHARMACY: Specialty Pharmacy', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout10</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-25 01:01:50', 'Carla'),
(52, 'Lavena Home Health', 'Ms. Zorena or Mr. David', 'zorena@lhh.com', 'Home Care ', '<div class=\"mb-0 text-gray-800\">\r\n<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout11</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path:<strong> /webconpractice/</strong></p>\r\n</div>\r\n</div>\r\n', '<p>user:lavenahomehealth&nbsp; /&nbsp;&nbsp; sample@gmail.com<br />\r\npass:LavenaHomeHealth!@2023</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/diether/lavenahomehealth/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/diether/lavenahomehealth/authenticationlogin.php</a></p>\r\n', 0, 1, 0, 1, '2022-04-25 01:04:06', 'Carmen'),
(53, 'Excellence Transit LLC', 'Sizor Lege', 'sl@gmail.com', 'TRANSPORTATION: Medical Transportation: Non-emergency Medical Transportation', '<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout09</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/webconpractice/</strong></p>\r\n</div>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-25 02:34:39', 'Michelle'),
(59, 'Dirt WorX ', ' Tracy ', 'tlt0925@yahoo.com', ' BUSINESS SERVICES: Construction ', '<p>Website Link:</p>\r\n\r\n<p><a href=\"https://www.dirtworxfl.com/\" target=\"_blank\">https://www.dirtworxfl.com/</a></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-03 23:17:20', 'Ruby'),
(60, 'Caring With Miracle Hands ', 'Rebekah Middlebrooks ', 'cwmh2016@gmail.com', 'HEALTHCARE: Non-Medical Home Care ', '<p>Website Link:</p>\r\n\r\n<p><a href=\"http://www.cwmhhomecare.com/\" target=\"_blank\">http://www.cwmhhomecare.com/</a></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-03 23:21:01', 'KaTe'),
(61, 'Higher Standards Home Health ', ' Ms. Christina Orlowski ', 'tina@higherstandards.us.com', 'HEALTHCARE: Home Health Care ', '<p>Website Link:</p>\r\n\r\n<p><a href=\"https://www.higherstandardshomehealth.com/\" target=\"_blank\">https://www.higherstandardshomehealth.com/</a></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-03 23:23:52', 'Leah'),
(62, 'Provision Home Care ', '-', 'nille1178@yahoo.com', ' HEALTHCARE: Non-Medical Home Care: 65+ years old Elderly / Seniors and Disabled ', '<p>Website Link:</p>\r\n\r\n<p><a href=\"https://www.provisionshomecare.com/\" target=\"_blank\">https://www.provisionshomecare.com/</a></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-03 23:26:53', 'Nancy'),
(63, 'Custom Wood Floors By Ferrucci', 'Ron', 'ronron@proweaver.net', 'SPECIALTY: Professional', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout12</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n', '<p><em>WordPress credentials here...</em></p>\r\n', 0, 1, 0, 1, '2022-05-16 20:01:32', 'Amanda'),
(64, 'INTEGRITY CARE LLC', ' Oluranti Ladapo ', 'integritycarewl@gmail.com', 'in-home care and non-emergency medical transportation / check website for sure', '<p>-</p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-16 22:15:20', 'Debbie'),
(65, 'America\'s Nursing, Inc. ', ' Mary Accinelli ', 'maccinelli@americasnursing.com', ' HEALTHCARE: Home Health Care ', '<p>-</p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-16 22:23:01', 'Anna'),
(66, 'STAFFING SOLUTIONS PLUS, LLC ', ' Marc Sanon ', 'hhstaffings@gmail.com', ' STAFFING: General Staffing ', '<p>-</p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-16 22:27:46', 'Jona'),
(67, 'Our Golden Years LLC ', ' Arthur Alcones ', 'aoalcones@yahoo.com', 'Assisted Living', '<p>-</p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-16 22:33:07', 'Vera'),
(68, 'Advanced Healthcare Staffing Solutions', 'Wanda', 'wandavision@gmail.com', 'STAFFING: Healthcare Staffing', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout04</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n', '<p><em>WordPress credentials here...</em></p>\r\n', 0, 1, 0, 1, '2022-06-06 18:31:01', 'Amanda'),
(70, 'Align Medical Staffing', 'Andrea', 'andrea@gmail.com', 'STAFFING: Healthcare Staffing', '<div class=\"mb-0 text-gray-800\">\r\n<p>Website Info: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/alignmedea368/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/alignmedea368/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nHost: <strong>192.249.120.185</strong><br />\r\nUsername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\nPassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: <strong>webprosite19_training02</strong><br />\r\nUsername: <strong>webprosite19_trainingusr</strong><br />\r\nPassword: <strong>tts6d@iy8JN)</strong></p>\r\n</div>\r\n', '<div class=\"mb-0 text-gray-800\">\r\n<p><strong>WordPress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/alignmedea368/hsaa0110.php\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/alignmedea368/hsaa0110.php</a><br />\r\nUsername: <strong>alignmedhcea</strong><br />\r\nPassword: <strong>9@Id51q$s)+TnA1</strong></p>\r\n</div>\r\n', 0, 1, 0, 1, '2022-06-19 18:35:01', 'Amanda');

-- --------------------------------------------------------

--
-- Table structure for table `instruction_list`
--

CREATE TABLE `instruction_list` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `instruction` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instruction_list`
--

INSERT INTO `instruction_list` (`id`, `task_id`, `instruction`) VALUES
(113, 106, '<p><strong>TRIO PROPERTY BUYERS</strong><br />\r\n&gt; upload website files to <strong>web4 </strong>server</p>\r\n'),
(114, 107, '<p><strong>Custom Wood Floors by Ferrucci</strong><br />\r\n&gt; upload website files to <strong>web4 </strong>server</p>\r\n'),
(115, 108, '<p><strong>MPA Healthcare Staffing Agency LLC</strong><br />\r\n&gt; upload website files to <strong>web4 </strong>server</p>\r\n'),
(118, 109, '<p><strong>For content posting:</strong><br />\r\n<a href=\"https://docs.google.com/document/d/1rYXzlH-KM0d1woi2Y4eLWzHCV3mmZHSe/edit\">https://docs.google.com/document/d/1rYXzlH-KM0d1woi2Y4eLWzHCV3mmZHSe/edit</a></p>\r\n'),
(119, 110, '<p><strong>For content posting:</strong><br />\r\n<a href=\"https://docs.google.com/document/d/1BbKJ_omWyeM8tfHtj307LSU41IvYSk-Q/edit?usp=share_link&amp;ouid=107732213739041849339&amp;rtpof=true&amp;sd=true\">https://docs.google.com/document/d/1BbKJ_omWyeM8tfHtj307LSU41IvYSk-Q/edit?usp=share_link&amp;ouid=107732213739041849339&amp;rtpof=true&amp;sd=true</a></p>\r\n'),
(121, 112, ''),
(123, 111, '<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>On the homepage form, I don&#39;t want clients to enter their full name. First name and Last name should be separated.</p>\r\n\r\n<p>The description on each of our services is not that effectively stated it needs to be improved.</p>\r\n\r\n<p>Please remove the black kid on the left side of the bottom area. The website font is not child friendly. If you could please suggest how to make it better.</p>\r\n\r\n<p>I do not use twitter platform. I only use Pinterest, Facebook and Linked In. How can I setup my business&#39;s social media accounts?</p>\r\n\r\n<p>On the payment page, i can still see &quot;Form conversion in progress&hellip;&quot;, is this being woked on?</p>\r\n'),
(124, 113, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">On the homepage form, I want the Name to be separated into First Name and Last Name&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">I also want you to add phone number field on that form</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Change Drop Us a Message to Send Us a Message&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">When I type AMERICAN VETERANS HOSPICE on Google, my website does not show up. I want my website to show up on the first entry of the search results</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">I want someone to manage my social media accounts, and I want to have social media icons on my website. I am planning on creating a twitter, instagram and facebook page but Im still working on the articles that I would like to be posted on my social media pages. Can you help me do that? </span></span></span></p>\r\n'),
(125, 114, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- On the homepage form, I want the Name to be separated into First Name and Last Name&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">I also want you to add phone number on that form.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- The resources page looks dry, can you add more icons to each article? Also, make it fancy, like a book style or something. Please give me more options of designs</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please setup my facebook and twitter pages. I want to add a youtube channel later as well, so please just put the icon for now</span></span></span></p>\r\n'),
(126, 115, ''),
(127, 116, ''),
(128, 117, '<p><strong>Please continue:</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/111\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/111</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(129, 118, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Please post this announcement both on the website and on our social media sites</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>COVID-!9 Vaccination Run</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Please be informed of our upcoming Vaccination Run which aims to vaccinate 100k individuals while engaging in an activity. Please wear casual attire with COVID-19 Virus print on it, on any colors.&nbsp;</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Where: 28889 Pkwy Lane Menifee, CA 92584 USA</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>When: April 16, 2022</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Bring your own lunchbox</strong></span></span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Please add these staff on my website (they are members of my team that deserve recognition):</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Mae Lanie Degeneres</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Registered Nurse</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Obed Pitt</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Registered Physical Therapist</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Brylle Winfrey</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">CEO </span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Geralt Rivia</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">COO</span></span></span></p>\r\n'),
(131, 120, ''),
(132, 121, ''),
(133, 122, ''),
(134, 119, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please add a page where people can donate for our cause</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please add testimonial page on my website</span></span></span></p>\r\n</p>\r\n\r\n<p>&nbsp;\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please add these staff on my website (they are members of my team that deserve recognition):</span></span></span></p>\r\n</p>\r\n\r\n<p>&nbsp;\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Mae Lanie Degeneres</strong></span></span></span></p>\r\n</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Registered Nurse</span></span></span></p>\r\n\r\n<p>&nbsp;\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Obed Pitt</strong></span></span></span></p>\r\n</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Registered Physical Therapist</span></span></span></p>\r\n\r\n<p>&nbsp;\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Brylle Winfrey</strong></span></span></span></p>\r\n</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">CEO&nbsp;</span></span></span></p>\r\n\r\n<p>&nbsp;\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Geralt Rivia</strong></span></span></span></p>\r\n</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">COO</span></span></span></p>\r\n'),
(135, 123, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Professional Services - Please create a nice design for this page.</strong></span></span></span></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-professional-services\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><strong><u>https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-professional-services</u></strong></span></span></span></a></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>For Job Seekers pls add a signature field for this form</strong></span></span></span></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-for-job-seekers\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><strong><u>https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-for-job-seekers</u></strong></span></span></span></a></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Lastly, please remove all white people on the website, I only want to see blacks.</strong></span></span></span></p>\r\n'),
(136, 124, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Please add testimonial page on my website</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Please create Donation and Payment page, where people can donate for our cause</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>I don&#39;t see much of asian people in my website. Please add images of them anywhere. There should be a balance in diversity, not just black and white people</strong></span></span></span></p>\r\n'),
(137, 125, ''),
(138, 126, ''),
(139, 127, ''),
(140, 128, ''),
(141, 129, ''),
(142, 130, ''),
(143, 131, ''),
(144, 132, ''),
(145, 133, ''),
(146, 134, ''),
(147, 135, ''),
(148, 136, ''),
(149, 137, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please update our address to 980 Liberty Dr. Caledon, ON L7C 5C5</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- please update our email address to </span></span></span><a href=\"mailto:abu.kamal73@gmail.com\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#0000ff\"><u>abu.kamal73@gmail.com</u></span></span></span></a></p>\r\n'),
(150, 138, '<p>- pls update address to</p>\r\n\r\n<p>1830 E Del Rio Drive AZ 85282</p>\r\n\r\n<p>- email address: <strong>callmeinvise@gmail.com</strong></p>\r\n'),
(151, 139, ''),
(152, 140, ''),
(153, 141, ''),
(154, 142, ''),
(155, 143, ''),
(156, 144, ''),
(158, 146, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Please add Physical Therapy service</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">on the homepage, replace learn more with Physical Therapy. You can keep that image, you can also use it as the banner of the new page as well.</span></span></span></p>\r\n'),
(159, 145, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Pls add Companionship</strong></span></span></span></p>\r\n'),
(160, 146, '<p><em><strong>Please see attached file:</strong></em><br />\r\n<br />\r\n<a href=\"https://docs.google.com/document/d/1nlwD5BrmZt4Ivej-9khB_WWPtIlwdcEu/edit?usp=share_link&amp;ouid=116488968523275795849&amp;rtpof=true&amp;sd=true\" target=\"_blank\">https://docs.google.com/document/d/1nlwD5BrmZt4Ivej-9khB_WWPtIlwdcEu/edit?usp=share_link&amp;ouid=116488968523275795849&amp;rtpof=true&amp;sd=true</a></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(161, 145, '<p><em><strong>Please see attached file:</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://docs.google.com/document/d/1kxc5DaowaxIH48datuW0Z9h7l6g6qSgo/edit?usp=share_link&amp;ouid=115266164551869484957&amp;rtpof=true&amp;sd=true\">https://docs.google.com/document/d/1kxc5DaowaxIH48datuW0Z9h7l6g6qSgo/edit?usp=share_link&amp;ouid=115266164551869484957&amp;rtpof=true&amp;sd=true</a></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(162, 147, ''),
(163, 148, ''),
(164, 149, ''),
(165, 150, ''),
(166, 151, ''),
(167, 152, ''),
(169, 154, '<p>Please update company name to Align Medical Healthcare Staffing</p>\r\n'),
(170, 153, '<p>- Please remove LLC on the company name</p>\r\n'),
(172, 153, '<p><strong>Please see attached file for the new logo</strong></p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/1trxMws_mPUDr5zdsmoVV0D6oSOWvl4Di/view?usp=sharing\" target=\"_blank\">https://drive.google.com/file/d/1trxMws_mPUDr5zdsmoVV0D6oSOWvl4Di/view?usp=sharing</a></p>\r\n'),
(173, 153, '<p>- noticed that my website does not follow the color scheme on the logo. There isn&rsquo;t a blue color on the logo but the gold/yellow thing</p>\r\n'),
(174, 154, '<p><strong>Please see attached file for the new logo</strong></p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/1fAmvBxa2oQxoOoaRL8f-hBfaphdG84_p/view?usp=sharing\" target=\"_blank\">https://drive.google.com/file/d/1fAmvBxa2oQxoOoaRL8f-hBfaphdG84_p/view?usp=sharing</a></p>\r\n'),
(175, 154, '<p>- On my website, kindly replace the blue with red color. I think it fits better with green. Thank you</p>\r\n'),
(176, 155, ''),
(177, 156, ''),
(178, 157, ''),
(179, 158, ''),
(180, 159, ''),
(181, 160, ''),
(182, 161, ''),
(183, 162, ''),
(184, 163, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Please add an announcement box on my website, Make the design interesting, its for updates about our Job hunting which will be posted soon, for now, just ready the pop-up, you can put put some coming soon text for the meantime</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Please add these FAQs on my website:</span></span></span></p>\r\n\r\n<h6><span style=\"font-size:9pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>What kind of services does Bestvalue Healthcare, Inc. provide?</strong></span></span></span></h6>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">We provide Personal Care and Supportive Home Care Services to assist adults, seniors and persons with disabilities living at the comfort of their own home. You can apply for just one service or both services, depending on your situations.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h6><span style=\"font-size:9pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>How do I apply for services with Bestvalue Healthcare, Inc.?</strong></span></span></span></h6>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">It&rsquo;s simple. You can stop by our office between 9-5, Monday through Friday, to apply in person.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">You&rsquo;ll need the following information when applying with us:</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Your physician contact information</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Proof of Insurance</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Medical History</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h6><span style=\"font-size:9pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>How long does it take to process my application?</strong></span></span></span></h6>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Our application process usually takes up to four weeks or sometime longer depending on your situations. Incomplete information will delay in processing your application. The lack of responsive from your physician may also cause delay in processing your application. Please call our office regularly to check on your application status.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h6><span style=\"font-size:9pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Can I transfer from another agency?</strong></span></span></span></h6>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Yes, you can. You have the right to choose which agency to help you or your loved one manage your healthcare needs at home. Before you transfer, please consult with one of our care managers so we can give you the proper steps to take in order for your transfer to be as smooth as possible.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h6><span style=\"font-size:9pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Do you provide training?</strong></span></span></span></h6>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Yes, we offer caregiver training classes to prepared individuals to work in the home healthcare field. Visit our website for more information and registration.</span></span></span></p>\r\n'),
(185, 164, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Home &gt;&gt; on the mobile view, i want the form on the banner to be placed on the footer, just above where the contact infos can be found&nbsp;&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Please add a COVID-19 Update button, when clicked, an information of the latest COVID-19 pops up. Thank you</span></span></span></p>\r\n'),
(186, 165, ''),
(187, 166, ''),
(188, 167, ''),
(189, 168, ''),
(190, 169, ''),
(191, 170, ''),
(192, 171, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Our website is not only about logistics and overseas transport, we also transport local goods via land vehicles. Can you please add images of trucks or vans on my website, coz right now I only see large cargo vessels and containers. Thank you</span></span></span></p>\r\n'),
(193, 172, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Hi , i would like to inform you that we changed our business to staffing services. Please update our website for me, Thank you.&nbsp;</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Please add Insurance Accepted beside Initial Free Consultation on Homepage </span></span></span></p>\r\n'),
(194, 172, '<p>Please see attachment</p>\r\n\r\n<p><a href=\"https://docs.google.com/document/d/1yKpwp0i3-fpxa3Mo8m5IpWYXRgWv84DO/edit?usp=sharing&amp;ouid=107732213739041849339&amp;rtpof=true&amp;sd=true\" target=\"_blank\">https://docs.google.com/document/d/1yKpwp0i3-fpxa3Mo8m5IpWYXRgWv84DO/edit?usp=sharing&amp;ouid=107732213739041849339&amp;rtpof=true&amp;sd=true</a></p>\r\n'),
(276, 232, '<p><strong>Convert website layout to HTML/CSS, see attached zip file</strong></p>\r\n'),
(277, 231, '<p><strong>Convert website layout to HTML/CSS, see attached zip file</strong></p>\r\n'),
(280, 234, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/231\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/231</a></p>\r\n'),
(281, 235, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/232\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/232</a></p>\r\n'),
(289, 239, '<p><strong>Convert website layout, see attached file below.</strong></p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/1Pt7H8hlTrNnLBELlyxJ38wNaecrqTdsV/view?usp=share_link\" target=\"_blank\">https://drive.google.com/file/d/1Pt7H8hlTrNnLBELlyxJ38wNaecrqTdsV/view?usp=share_link</a></p>\r\n'),
(290, 240, '<p><strong>Convert website layout, see attached file below.</strong></p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/10FU1foWyipzgmrHtYrVDGmonhnXD0GL5/view?usp=share_link\" target=\"_blank\">https://drive.google.com/file/d/10FU1foWyipzgmrHtYrVDGmonhnXD0GL5/view?usp=share_link</a></p>\r\n'),
(291, 241, '<p><strong>Continued task from:</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/240\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/240</a></p>\r\n'),
(292, 242, '<p>Continued task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/239\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/239</a></p>\r\n'),
(296, 246, '<p><strong>Continued task from:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/241\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/241</a></p>\r\n'),
(297, 247, '<p>Continued task from:<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/242\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/242</a></p>\r\n'),
(300, 250, '<p><strong>Continued task from:</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/247\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/247</a></p>\r\n'),
(301, 251, '<p><strong>Continued task from:</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/246\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/246</a></p>\r\n'),
(302, 252, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/250\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/250</a></p>\r\n'),
(303, 253, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/251\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/251</a></p>\r\n'),
(304, 254, '<p><strong>Upload website files to web4 server see, credentials from account details:</strong></p>\r\n\r\n<p><strong>Also, add WordPress login details under Other Access (WP Admin and etc.)</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/clients/49\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/clients/49</a></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(305, 255, '<p><strong>Upload website files to web4 server see, credentials from account details:</strong></p>\r\n\r\n<p><strong>Also, add WordPress login details under Other Access (WP Admin and etc.)</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/clients/52\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/clients/52</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(310, 260, '<p>Continue task from <a href=\"http://web4.proweaverlinks.com/taskbai/task/253\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/253</a></p>\r\n'),
(314, 264, '<p>Continue task <a href=\"http://web4.proweaverlinks.com/taskbai/task/252\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/252</a></p>\r\n'),
(315, 265, '<p>Continue task <a href=\"http://web4.proweaverlinks.com/taskbai/task/263\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/263</a></p>\r\n'),
(319, 269, ''),
(320, 270, ''),
(321, 271, '<p>sample only</p>\r\n'),
(322, 272, ''),
(323, 273, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Homepage, pls separate First Name and Last Name on the online form</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Change the slogan to: Finding the best autism and child development therapy by ABA therapy service</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please change the logo, i don&rsquo;t like the design. If you can give me more options</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- I want the current location on the Google map to have a star icon instead of the standard Google map location icon, i want the star to be colored blue, can this be achieved?</span></span></span></p>\r\n'),
(324, 274, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Please link all&nbsp; Set an Appointment button here</span></span></span></p>\r\n\r\n<p><a href=\"https://practice.kareo.com/pearlsofjunesolutions\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#1155cc\"><u>https://practice.kareo.com/pearlsofjunesolutions</u></span></span></span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Please setup my LinkedIn account and also link my Facebook account to the website</span></span></span></p>\r\n\r\n<p><a href=\"https://www.facebook.com/saleah.bell\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#1155cc\"><u>https://www.facebook.com/saleah.bell</u></span></span></span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Please add Blog page where I can post articles</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Please separate the First Name and Last Name on the Homepage form. I want you to balance out the form,&nbsp; so it becomes two lines. </span></span></span></p>\r\n'),
(325, 275, ''),
(326, 276, ''),
(327, 277, ''),
(328, 278, ''),
(329, 279, ''),
(330, 280, ''),
(334, 284, '<p>Convert website layout to HTML/CSS, see attached zip file</p>\r\n'),
(337, 286, ''),
(338, 287, ''),
(339, 288, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/index.php/task/284\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/index.php/task/284</a></p>\r\n'),
(343, 291, ''),
(344, 292, ''),
(346, 294, '<p>1. create gallery page, pls place the tab under about us<br />\r\n<em>pls add the attached images to the gallery page</em><br />\r\n2. Please add&nbsp; Google Translate on my website, please allow only English and Spanish as an option<br />\r\n3. Please change the banner for About Us using the attached.</p>\r\n'),
(347, 295, '<p>Convert website layout to HTML/CSS, see attached zip file</p>\r\n'),
(349, 297, '<p><strong>Website Conversion, See attached file.</strong></p>\r\n'),
(351, 299, '<p><strong>Website Conversion, See attached file.</strong></p>\r\n'),
(353, 301, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>- Add our new location, please label it Office:&nbsp; Salisbury Street Worcester, MA</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>- Please add Salisbury as service area</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>- Please add Fax Number: 978-340-6666</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>- Please also add office email: salisbury@worcester.edu</strong></span></span></span></p>\r\n'),
(354, 302, ''),
(355, 303, ''),
(356, 304, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">We have now moved to this address: 4241 Lake Forest Dr #514 Bonita Springs, Florida(FL), 34134</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Please change the second phone number from 651-852-1469 to 651-852-7777 and remove 651-757-5080, we only have one phone number.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">our email now is customerservice@</span></span></span><a href=\"mailto:apply@bestvaluehc.com\" style=\"text-decoration:none\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><u>bestvaluehc.com</u></span></span></span></a></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">pls also add on the footer our Application Email: </span></span></span><a href=\"mailto:apply@bestvaluehc.com\" style=\"text-decoration:none\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><u>apply@bestvaluehc.com</u></span></span></span></a></p>\r\n'),
(357, 305, ''),
(358, 306, ''),
(359, 307, '<p>Continued task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/299\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/299</a></p>\r\n'),
(367, 315, '<p>Continued task from:<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/297\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/297</a></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(369, 317, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">We also offer Hospice Services service so I&#39;d like you to add that on my website. Thank you.</span></span></span></p>\r\n'),
(370, 318, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Under Services pls add Personal Care and Assistance </span></span></span></p>\r\n'),
(374, 322, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/307\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/307</a></p>\r\n'),
(379, 327, '<p>Please use this logo design for our website, also follow the color scheme</p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/17MSVmW3svCbwsqyY9ndtLDcGKBP3a4uz/view?usp=share_link\">https://drive.google.com/file/d/17MSVmW3svCbwsqyY9ndtLDcGKBP3a4uz/view?usp=share_link</a></p>\r\n'),
(383, 329, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/315\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/315</a></p>\r\n'),
(384, 330, '<p>Continued task ID from: <a href=\"http://web4.proweaverlinks.com/taskbai/task/322\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/322</a></p>\r\n'),
(389, 335, ''),
(390, 336, ''),
(391, 337, ''),
(392, 338, ''),
(393, 339, '<p><span style=\"background-color:#2ecc71\">1.&nbsp;</span> I want the navigation bar below the banner.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">2.&nbsp;</span> add visitor counter on footer area</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">3.&nbsp;</span> Please sd ko pa-add og Modal with photo na related sa NoB with texts na &quot;Welcome to Invise.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">4.&nbsp;</span> please add FAQ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">5.&nbsp;</span> and add gtranslate widget on header area</p>\r\n'),
(394, 340, '<p><span style=\"background-color:#2ecc71\">1.&nbsp;</span> Please ko fix sa header below 800px</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">2.&nbsp;</span> add visitor counter below company address sa footer area</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">3.&nbsp;</span> Please sd ko pa-add og Modal with photo na related sa NoB with texts na &quot;Welcome to Envision Home Health Services, Inc.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">4.&nbsp;</span> please add FAQ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">5.&nbsp;</span> and add gtranslate widget on header area</p>\r\n'),
(398, 344, ''),
(400, 345, '<p>Continued task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/330\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/330</a></p>\r\n'),
(402, 347, '<p><strong>Upload website file to web4</strong></p>\r\n'),
(403, 348, '<p>See attached file for website contents</p>\r\n'),
(405, 349, '<p>See attached file for website contents</p>\r\n'),
(409, 353, '<p><strong>Convert website layout to HTML/CSS, see attached zip file</strong></p>\r\n'),
(410, 354, '<p><strong>Convert website layout to HTML/CSS, see attached zip file</strong></p>\r\n'),
(417, 360, ''),
(419, 362, ''),
(420, 363, '<p><strong>Continue task ID from:</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/353\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/353</a></p>\r\n'),
(421, 364, '<p><strong>Continue task ID from:</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/354\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/354</a></p>\r\n'),
(422, 365, ''),
(423, 366, ''),
(424, 367, ''),
(428, 371, '<p><strong>Convert website layout, see attached file below.</strong><br />\r\n<a href=\"https://drive.google.com/file/d/10FU1foWyipzgmrHtYrVDGmonhnXD0GL5/view?usp=share_link\" target=\"_blank\">https://drive.google.com/file/d/10FU1foWyipzgmrHtYrVDGmonhnXD0GL5/view?usp=share_link</a></p>\r\n'),
(429, 372, '<p><strong>Convert website layout, see attached file below.</strong><br />\r\n<a href=\"https://drive.google.com/file/d/1Pt7H8hlTrNnLBELlyxJ38wNaecrqTdsV/view?usp=share_link\" target=\"_blank\">https://drive.google.com/file/d/1Pt7H8hlTrNnLBELlyxJ38wNaecrqTdsV/view?usp=share_link</a></p>\r\n'),
(430, 373, '<p><strong>Website Conversion, See attached file.</strong></p>\r\n'),
(433, 376, ''),
(434, 377, ''),
(437, 380, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Have you seen this website? particularly how they presented their services? I like it, the overlay. Can you integrate on my website? Thank you</span></span></span></p>\r\n\r\n<p><a href=\"http://www.theartofcaringcfth.com/home-care-services\" style=\"text-decoration:none\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><u>http://www.theartofcaringcfth.com/home-care-services</u></span></span></span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- add resources Autism Spectrum Disorder</span></span></span></p>\r\n\r\n<p><a href=\"https://www.nimh.nih.gov/health/topics/autism-spectrum-disorders-asd\" style=\"text-decoration:none\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><u>https://www.nimh.nih.gov/health/topics/autism-spectrum-disorders-asd</u></span></span></span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- pls add our Google Reviews&nbsp;</span></span></span></p>\r\n\r\n<p><a href=\"https://www.google.com/search?q=Platinum%20dance%20studio&amp;rlz=1C1CHBD_enPH969PH969&amp;oq=platinum%20dance%20studio&amp;aqs=chrome.0.69i59j35i39j0i20i263i512j0i512j0i67j69i61j69i60l2.12871j0j7&amp;sourceid=chrome&amp;ie=UTF-8&amp;ludocid=7623458271149854693&amp;lsig=AB86z5WRKHwyQoPLIa1nOb9LFwlZ&amp;ved=2ahUKEwjR9s-50dz2AhUVxIsBHSSYDTQQrMcEegQIBRAC#lrd=0x52b3315341284ebf:0x69cbf6e823e68fe5,1,,,\" style=\"text-decoration:none\"><span style=\"font-size:9pt\"><span style=\"font-family:Verdana\"><span style=\"color:#1155cc\"><u>https://www.google.com/search?q=Platinum%20dance%20studio&amp;rlz=1C1CHBD_enPH969PH969&amp;oq=platinum%20dance%20studio&amp;aqs=chrome.0.69i59j35i39j0i20i263i512j0i512j0i67j69i61j69i60l2.12871j0j7&amp;sourceid=chrome&amp;ie=UTF-8&amp;ludocid=7623458271149854693&amp;lsig=AB86z5WRKHwyQoPLIa1nOb9LFwlZ&amp;ved=2ahUKEwjR9s-50dz2AhUVxIsBHSSYDTQQrMcEegQIBRAC#lrd=0x52b3315341284ebf:0x69cbf6e823e68fe5,1,,,</u></span></span></span></a></p>\r\n'),
(438, 381, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/372\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/372</a></p>\r\n'),
(439, 382, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/371\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/371</a></p>\r\n'),
(440, 383, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/373\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/373</a></p>\r\n'),
(444, 387, ''),
(446, 389, ''),
(450, 391, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/382\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/382</a></p>\r\n'),
(451, 392, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/381\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/381</a></p>\r\n'),
(454, 395, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/383\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/383</a></p>\r\n'),
(459, 400, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Please add Long Distance Transports service. Add it on the homepage as well.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Please delete all contents on Meet Our Staff Page, then I want you to list the following positions on the page with pictures, you may use dummy images for now, I&#39;ll send their actual pictures next week.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Marsh Reynolds</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- CEO</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Skye Wheatly</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Associate Admin</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Gina Castro</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Board Member</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Winona Gardner</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Board Member</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Elena Binder</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Board Member</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Dominic Matthews</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- Board Member</span></span></span></p>\r\n'),
(460, 401, '<p><strong>Continue task from:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/392\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/392</a></p>\r\n'),
(461, 402, '<p><strong>Continue task from:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/391\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/391</a></p>\r\n'),
(462, 403, '<p>- Please update the company name to ABLE AUTISM THERAPY SERVICES INC</p>\r\n'),
(464, 403, '<p><strong>Attachment logo</strong></p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/1G2Sm-IdbaVinNqz1R4gfplxRpn6qv2tW/view?usp=share_link\">https://drive.google.com/file/d/1G2Sm-IdbaVinNqz1R4gfplxRpn6qv2tW/view?usp=share_link</a></p>\r\n'),
(467, 407, '<p><strong>Continue task from:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/401\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/401</a></p>\r\n'),
(468, 408, '<p><strong>Continue task from:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/402\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/402</a></p>\r\n'),
(469, 409, '<p><strong>Continue task from:</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/395\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/395</a></p>\r\n'),
(470, 409, '<p><strong>Upload website files to web4 server see, credentials from account details:<br />\r\nAlso, add WordPress login details under Other Access (WP Admin and etc.)</strong></p>\r\n'),
(471, 407, '<p><strong>Upload website files to web4 server see, credentials from account details:<br />\r\nAlso, add WordPress login details under Other Access (WP Admin and etc.)</strong></p>\r\n'),
(472, 408, '<p><strong>Upload website files to web4 server see, credentials from account details:<br />\r\nAlso, add WordPress login details under Other Access (WP Admin and etc.)</strong></p>\r\n'),
(473, 410, ''),
(474, 411, ''),
(475, 412, '<div class=\"collapse show\" id=\"collapseOne393\">\r\n<div class=\"card-body\">\r\n<p><span style=\"background-color:#2ecc71\">1.&nbsp;</span> I want the navigation bar below the banner.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">2.&nbsp;</span> add visitor counter below contact information on footer area</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">3.&nbsp;</span> Please sd ko pa-add og Modal with photo na related sa NoB with texts na &quot;Welcome to Invise.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">4.&nbsp;</span> please create FAQ page and add contents</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">5.&nbsp;</span> and add gtranslate widget on header area</p>\r\n</div>\r\n</div>\r\n'),
(478, 415, '<p><strong>See attached doc for website content</strong></p>\r\n'),
(479, 416, '<p><strong>See attached doc for website content</strong></p>\r\n'),
(480, 417, '<p><strong>See attached doc for website content</strong></p>\r\n'),
(483, 420, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/415\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/415</a></p>\r\n'),
(484, 421, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/416\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/416</a></p>\r\n'),
(487, 424, '<div class=\"collapse show\" id=\"collapseOne416\">\r\n<div class=\"card-body\">\r\n<div class=\"collapse show\" id=\"collapseOne415\">\r\n<div class=\"card-body\">\r\n<p><a href=\"http://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Can we please remove the contact us option on the website via onlineform? I do not like that I can not respond to them and I prefer they call the office with questions instead of going through the onlineforms and not receiving feedback from them.</p>\r\n\r\n<p>- Instead of a Send Us a Message form on the homepage, replace it with a newsletter form so that we can also directly update customers directly on their email. They could just input their full name and then their email address</p>\r\n\r\n<p>- Please set up my Facebook and Twitter pages . Also I need help in creating a YT channel. for now please add it on the website.</p>\r\n\r\n<p>- I like the map found on this website. But instead of communities, please make it become our means of reaching out to businesses outside of US</p>\r\n\r\n<p><a href=\"https://www.worldjewishcongress.org/en/about/communities\" target=\"_blank\">https://www.worldjewishcongress.org/en/about/communities</a></p>\r\n\r\n<p>- Lastly, I want my website to look different. I want it to be something like this</p>\r\n\r\n<p><a href=\"https://www.clickconsulting.us/home\" target=\"_blank\">https://www.clickconsulting.us/home</a></p>\r\n\r\n<p>- How long would it take to change the overall layout of the site? Please give me a feedback before Monday prior to the accreditation that will happen next week.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n'),
(488, 425, '');
INSERT INTO `instruction_list` (`id`, `task_id`, `instruction`) VALUES
(489, 424, '<div>\r\n<div>Neuron Health Systems 04 13 23 (CW - Others)</div>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>From:</td>\r\n			<td>\r\n			<div><a href=\"javascript:void(0);\" onclick=\"$Widgets.Email.Message.evHeaderAddressClick(&quot;jessa.briones@proweaver.net&quot;);\" title=\"jessa.briones@proweaver.net\">jessa.briones@proweaver.net &lt;jessa.briones@proweaver.net&gt;</a></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sent:</td>\r\n			<td>\r\n			<div>Thu, Apr 13, 2023 at 4:42 pm</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>To:</td>\r\n			<td>\r\n			<div><a href=\"javascript:void(0);\" onclick=\"$Widgets.Email.Message.evHeaderAddressClick(&quot;apps@proweaver.net&quot;);\" title=\"apps@proweaver.net\">apps@proweaver.net</a>, <a href=\"javascript:void(0);\" onclick=\"$Widgets.Email.Message.evHeaderAddressClick(&quot;pdqapw8@gmail.com&quot;);\" title=\"pdqapw8@gmail.com\">pdqapw8@gmail.com</a></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cc:</td>\r\n			<td>\r\n			<div><a href=\"javascript:void(0);\" onclick=\"$Widgets.Email.Message.evHeaderAddressClick(&quot;content@proweaver.net&quot;);\" title=\"content@proweaver.net\">Content&nbsp;Team</a></div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div>\r\n<div>\r\n<div><img src=\"https://webmail.proweaver.net/versions/webmail/19.0.22-RC/images/blank.gif\" /><a href=\"javascript:void(0);\" title=\"Download attachment\">FINAL_Neuron Health Systems 04 13 23 (CW - Others).docx</a>&nbsp;(10 KB)</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-family:arial\">Done with task, please see attached file</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-family:arial\">------------------------------------</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For CW: Invise 04 14 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/424\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/424</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Can we please remove the contact us option on the website via onlineform? I do not like that I can not respond to them and I prefer they call the office with questions instead of going through the onlineforms and not receiving feedback from them.<br />\r\n- Instead of a Send Us a Message form on the homepage, replace it with a newsletter form so that we can also directly update customers directly on their email. They could just input their full name and then their email address</em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\n- Hi team, pa change mi sa paragraph sa left side sa form since ma change nana siya from a contact form into a newsletter form. Thank you</strong></p>\r\n'),
(490, 426, ''),
(491, 427, ''),
(492, 428, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Our website is not only about logistics and overseas transport, we also transport local goods via land vehicles. Can you please add images of trucks or vans on my website, coz right now I only see large cargo vessels and containers. Thank you</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please set up a pinterest account for me</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Sooner when I launch my website, I want it to rank higher on Google. This would help greatly on my business</span></span></span></p>\r\n'),
(493, 429, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Professional Services - Please create a nice design for this page. I am planning on adding several services for this page on the content area. For now, just design something with dummy texts. Thank you</strong></span></span></span></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-professional-services\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><strong><u>https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-professional-services</u></strong></span></span></span></a></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>For Job Seekers pls add a signature field for this form</strong></span></span></span></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-for-job-seekers\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><strong><u>https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-for-job-seekers</u></strong></span></span></span></a></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Lastly, please remove all white people on the website, I only want to see blacks.</strong></span></span></span></p>\r\n'),
(494, 430, ''),
(495, 431, ''),
(496, 432, ''),
(497, 433, ''),
(498, 434, ''),
(499, 435, ''),
(501, 437, '<ol>\r\n	<li style=\"list-style-type:decimal\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">licensed vocational nurse (lvn)</span></span></span></span></li>\r\n</ol>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">Change License Practical Nurse to License Vocational Nurse.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">&gt; pls replace content</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please setup my facebook and twitter pages. I want to add a youtube channel later as well, so please just put the icon for now</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Agent: Please mi ani team, nibayad na ni siya ug SMM package</span></span></span></p>\r\n'),
(502, 438, '<p>Please continue:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/424\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/424</a></p>\r\n'),
(503, 439, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Please post this announcement both on the website and on our social media sites</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>COVID-!9 Vaccination Run</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Please be informed of our upcoming Vaccination Run which aims to vaccinate 100k individuals while engaging in an activity. Please wear casual attire with COVID-19 Virus print on it, on any colors.&nbsp;</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Where: 28889 Pkwy Lane Menifee, CA 92584 USA</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>When: April 16, 2022</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Bring your own lunchbox</strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Contact form, please add ways of contacting us field</strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Please add these staff on my website (they are members of my team that deserve recognition):</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Mae Lanie Degeneres</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Registered Nurse</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Obed Pitt</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Registered Physical Therapist</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Brylle Winfrey</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">CEO&nbsp;</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Geralt Rivia</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">COO</span></span></span></p>\r\n'),
(507, 439, '<div class=\"collapse show\" id=\"collapseOne506\">\r\n<div class=\"card-body\">\r\n<div class=\"collapse show\" id=\"collapseOne505\">\r\n<div class=\"card-body\">\r\n<div>\r\n<div>Boler Clinic 04 17 23 (CW - Others)</div>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>From:</td>\r\n			<td>\r\n			<div><a href=\"javascript:void(0);\" onclick=\"$Widgets.Email.Message.evHeaderAddressClick(&quot;kate.margallo@proweaver.net&quot;);\" title=\"kate.margallo@proweaver.net\">Kate&nbsp;Margallo &lt;kate.margallo@proweaver.net&gt;</a></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sent:</td>\r\n			<td>\r\n			<div>Mon, Apr 17, 2023 at 2:10 pm</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>To:</td>\r\n			<td>\r\n			<div><a href=\"javascript:void(0);\" onclick=\"$Widgets.Email.Message.evHeaderAddressClick(&quot;apps@proweaver.net&quot;);\" title=\"apps@proweaver.net\">apps@proweaver.net</a>, <a href=\"javascript:void(0);\" onclick=\"$Widgets.Email.Message.evHeaderAddressClick(&quot;pdqapw8@gmail.com&quot;);\" title=\"pdqapw8@gmail.com\">pdqapw8@gmail.com</a></div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div>\r\n<div>\r\n<div><img src=\"https://webmail.proweaver.net/versions/webmail/19.0.22-RC/images/blank.gif\" /><a href=\"javascript:void(0);\" title=\"Download attachment\">FINAL_BOLER CLINIC docx</a>&nbsp;(20 KB)</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><span style=\"background-color:#ffff00\"><strong>Intro Page</strong></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>COVID-19 Vaccination Run</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Please be informed of our upcoming Vaccination Run which aims to vaccinate 100k individuals while engaging in an activity. Please wear casual attire with COVID-19 Virus print on it, on any colors.&nbsp;</strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>Where: 28889 Pkwy. Lane Menifee, CA 92584 USA</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>When: April 16, 2022</strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>You are advised to bring your own lunchbox.</strong></span></span></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n'),
(510, 443, ''),
(511, 444, ''),
(512, 445, ''),
(513, 446, ''),
(514, 447, ''),
(515, 448, ''),
(516, 449, ''),
(517, 450, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please make our website ADA compliant</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please also add Google review on our website. Refer to this link</span></span></span></p>\r\n\r\n<p><a href=\"https://www.google.com/search?client=firefox-b-d&amp;q=Karma+Healthcare+Staffing+Consultants#lrd=0x8644cbd1e03c0597:0xfe3f7ded1732657c,1\" style=\"text-decoration:none\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#1155cc\"><u>https://www.google.com/search?client=firefox-b-d&amp;q=Karma+Healthcare+Staffing+Consultants#lrd=0x8644cbd1e03c0597:0xfe3f7ded1732657c,1</u></span></span></span></a><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">,,,</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- Please also add a Gallery page and refer to the images you need </span></span></span></p>\r\n'),
(518, 451, '<p><span style=\"font-size:13pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">1. create gallery page, pls place the tab under about us</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:13pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">pls add the attached images to the gallery page</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:13pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">2. Please add a Google Translate on my website, please allow only English and Spanish as an option</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:13pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">3. Please change the banner for About Us using the attached.</span></span></span></p>\r\n'),
(519, 452, ''),
(521, 454, ''),
(522, 455, ''),
(524, 457, ''),
(525, 458, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Please update address</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">18901-18907 Knapp Street Northridge CA 91324</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Our new phone number is 866-866-8383</span></span></span></p>\r\n'),
(526, 459, '<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- pls update address to:804 Hickory Ave Torrance, California(CA), 90503</span></span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- pls add another Fax number 310-515-7011 (dont delete the existing one)</span></span></span></p>\r\n'),
(527, 460, ''),
(528, 461, ''),
(529, 462, ''),
(536, 469, '<p>Hi , can you update this? thank you.</p>\r\n\r\n<p><br />\r\n- Change the slogan to: Finding the best autism and child development therapy by ABA therapy service<br />\r\n- Please add Physical Therapy service<br />\r\n- on the homepage, replace learn more with Physical Therapy. You can keep that image, you can also use it as the banner of the new page as well.</p>\r\n'),
(537, 470, '<p>Hi, can you help me with this? thank you</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Replace Live-In Care Services on homepage with Meal Preparation<br />\r\nRemove Live-In Care Services on the website<br />\r\nPlease add all services listed on the services page on the homepage</p>\r\n'),
(539, 472, ''),
(540, 473, ''),
(541, 474, ''),
(542, 475, ''),
(543, 476, ''),
(544, 477, ''),
(545, 478, '<p>- Please update our company name to Boler Clinic and Consultations</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Attachment logo:</p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/1qOtdEPlYENsJeim52ScrFSMZy1aX0s_i/view?usp=share_link\">https://drive.google.com/file/d/1qOtdEPlYENsJeim52ScrFSMZy1aX0s_i/view?usp=share_link</a></p>\r\n'),
(546, 479, '<p>-&nbsp;Please use this logo design for our website, also follow the color scheme</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Attachment logo:</p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/17MSVmW3svCbwsqyY9ndtLDcGKBP3a4uz/view\">https://drive.google.com/file/d/17MSVmW3svCbwsqyY9ndtLDcGKBP3a4uz/view</a></p>\r\n'),
(549, 482, ''),
(550, 483, ''),
(551, 484, ''),
(552, 485, ''),
(554, 487, '<p><strong>Convert website layout to HTML/CSS, see attached zip file</strong></p>\r\n'),
(555, 488, ''),
(556, 489, ''),
(557, 490, '<p><span style=\"background-color:#2ecc71\">1.&nbsp;</span> Please ko fix sa header below 800px</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">2.&nbsp;</span> add visitor counter below company address sa footer area</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">3.&nbsp;</span> Please sd ko pa-add og Modal with photo na related sa NoB with texts na &quot;Welcome to Envision Home Health Services, Inc.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">4.&nbsp;</span> please add FAQ main tab and it&#39;s contents</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">5.&nbsp;</span> and add gtranslate widget on header area</p>\r\n'),
(558, 491, '<p><span style=\"background-color:#2ecc71\">1.&nbsp;</span> Please ko fix sa header</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">2.&nbsp;</span> add visitor counter below company address sa footer area</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">3.&nbsp;</span> Please sd ko pa-add og Modal with photo na related sa NoB with texts na &quot;Welcome to Invise&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">4.&nbsp;</span> please add FAQ main tab and it&#39;s contents</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"background-color:#2ecc71\">5.&nbsp;</span> and add gtranslate widget on header area</p>\r\n'),
(559, 492, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/487\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/487</a></p>\r\n'),
(561, 493, '<p><strong>Convert website layout, see attached file below.</strong></p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/1mtQNYQQoIWJXcNwCoTyZ8emEtxtDWLQQ/view\" target=\"_blank\">https://drive.google.com/file/d/1mtQNYQQoIWJXcNwCoTyZ8emEtxtDWLQQ/view</a></p>\r\n'),
(563, 495, '<p><strong>Website Conversion, See attached file.</strong></p>\r\n'),
(564, 496, '<p>Continue task&nbsp; from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/492\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/492</a></p>\r\n'),
(565, 497, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/493\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/493</a></p>\r\n'),
(567, 499, '<p>Continue task from:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/495\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/495</a></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `position_name` varchar(225) NOT NULL DEFAULT 'Developer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `position_name`) VALUES
(1, 'Developer'),
(3, 'Developer - Batch 10'),
(6, 'Developer - Batch 13'),
(19, 'Developer - Batch 15'),
(20, 'Developer - Batch 16'),
(4, 'Developer – Batch 11'),
(5, 'Developer – Batch 12'),
(2, 'Team Lead'),
(8, 'test'),
(11, 'testt'),
(12, 'testtt'),
(13, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task_name` varchar(225) NOT NULL,
  `account_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `assigned_date` date DEFAULT NULL,
  `assigned_datetime` datetime DEFAULT NULL,
  `updated_date` datetime NOT NULL,
  `instructions_id` int(11) NOT NULL,
  `assigned_id` int(11) NOT NULL,
  `created_id` int(11) NOT NULL,
  `qa_id` int(11) NOT NULL,
  `attachment_file` varchar(225) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `task_url` text DEFAULT NULL,
  `task_backup` text DEFAULT NULL,
  `next_steps` text DEFAULT NULL,
  `additional_notes` text DEFAULT NULL,
  `progress_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_name`, `account_id`, `created_date`, `assigned_date`, `assigned_datetime`, `updated_date`, `instructions_id`, `assigned_id`, `created_id`, `qa_id`, `attachment_file`, `status`, `task_url`, `task_backup`, `next_steps`, `additional_notes`, `progress_status`) VALUES
(231, 'Activity 1 - Layout Conversion  03 07 23 (Other)', 42, '2023-03-06 21:22:17', '2023-03-07', '2023-03-07 13:22:17', '0000-00-00 00:00:00', 0, 24, 1, 0, 'layout-7-file.zip', 3, '<p>Converted Website -</p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1Nr7u0BViVxk-4mHS6_mPCbXoAur2YjWg?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1Nr7u0BViVxk-4mHS6_mPCbXoAur2YjWg?usp=sharing</a></p>\r\n', NULL, '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(232, 'Activity 1 - Layout Conversion  03 07 23 (Other)', 42, '2023-03-06 21:22:35', '2023-03-07', '2023-03-07 13:22:35', '0000-00-00 00:00:00', 0, 25, 1, 0, 'layout-4-file.zip', 3, '<p><a href=\"https://drive.google.com/drive/folders/19VzaKp78NJiia6rjA3K1DMeSHocwBFa4?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/19VzaKp78NJiia6rjA3K1DMeSHocwBFa4?usp=sharing</a></p>\r\n', NULL, '', '', 0),
(234, 'Activity 1 - Layout Conversion 03 07 23 (Other) ', 42, '2023-03-07 17:04:04', '2023-03-08', '2023-03-08 09:16:14', '0000-00-00 00:00:00', 0, 24, 1, 1, NULL, 4, '<p><strong>Converted website:</strong></p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1Nr7u0BViVxk-4mHS6_mPCbXoAur2YjWg?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1Nr7u0BViVxk-4mHS6_mPCbXoAur2YjWg?usp=sharing</a></p>\r\n', '', '<p>For review</p>\r\n', '', 0),
(235, 'Activity 1 - Layout Conversion 03 07 23 (Other) ', 42, '2023-03-07 17:04:29', '2023-03-08', '2023-03-08 09:17:12', '0000-00-00 00:00:00', 0, 25, 1, 1, NULL, 4, '<p><strong>Converted Website:</strong></p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1CHMcX8O38muxD9BbajECjJZfp34JER1b?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1CHMcX8O38muxD9BbajECjJZfp34JER1b?usp=sharing</a></p>\r\n', '', '<p>For review</p>\r\n', '', 0),
(237, 'Meeting Session 03 09 23 (Other)', 42, '2023-03-08 17:03:06', '2023-03-09', '2023-03-09 09:03:06', '0000-00-00 00:00:00', 0, 24, 1, 1, NULL, 4, '<p>HTML/CSS Conversion, Discussion</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(238, 'Meeting Session 03 09 23 (Other)', 42, '2023-03-08 17:03:18', '2023-03-09', '2023-03-09 09:03:18', '0000-00-00 00:00:00', 0, 25, 1, 1, NULL, 4, '<p>HTML/CSS Discussion</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(239, 'Sufficient Enough Home Care Agency LLC 03 09 23 (Website Conversion)', 49, '2023-03-08 17:07:25', '2023-03-09', '2023-03-09 14:02:14', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, '<p>HTML/CSS: 60%</p>\r\n\r\n<p>Responsive: 0%<br />\r\nWordPress: 0%</p>\r\n', '<p>N/A</p>\r\n', '<p>Continued task ID to:<a href=\"http://web4.proweaverlinks.com/taskbai/task/242\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/242</a></p>\r\n', '', 0),
(240, 'Lavena Home Health 03 09 23 (Website Conversion)', 52, '2023-03-08 17:08:11', '2023-03-09', '2023-03-09 14:02:15', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, '<p>HTML/CSS: 30%<br />\r\nResponsive: 0%<br />\r\nWordPress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/241\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/241</a></p>\r\n', '', 0),
(241, 'Lavena Home Health 03 10 23 (Website Conversion - Continuation) ', 52, '2023-03-09 16:51:49', '2023-03-10', '2023-03-10 08:51:49', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, '<p>HTML/CSS: 50%<br />\r\nResponsive: 0%<br />\r\nWordPress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/246\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/246</a></p>\r\n', '', 0),
(242, 'Sufficient Enough Home Care Agency LLC 03 10 23 (Website Conversion - Continuation)', 49, '2023-03-09 16:52:52', '2023-03-10', '2023-03-10 08:52:52', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, '<p>HTML/CSS: 90%</p>\r\n\r\n<p>Conversion: 0%</p>\r\n\r\n<p>WordPress: 0%</p>\r\n', '', '<p>Continue Task ID to:<a href=\"http://web4.proweaverlinks.com/taskbai/task/244\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/244</a></p>\r\n', '', 0),
(243, 'Meeting Session 03 10 23 (Other) ', 42, '2023-03-09 17:35:34', '2023-03-10', '2023-03-10 09:35:34', '0000-00-00 00:00:00', 0, 25, 1, 1, NULL, 4, '<p>Responsive Conversion Discussion</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(244, 'Meeting Session 03 10 23 (Other) ', 42, '2023-03-09 17:35:36', '2023-03-10', '2023-03-10 09:35:36', '0000-00-00 00:00:00', 0, 24, 1, 1, NULL, 4, '<p>Responsive Conversion Discussion</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(246, 'Lavena Home Health 03 13 23 (Website Conversion - Continuation) ', 52, '2023-03-12 17:58:16', '2023-03-13', '2023-03-13 08:58:16', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, '<p>HTML/CSS: 80%</p>\r\n\r\n<p>Responsiveness:0</p>\r\n\r\n<p>WordPress: 50%</p>\r\n', '', '<p>Continued Task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/251\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/251</a></p>\r\n', '', 0),
(247, 'Sufficient Enough Home Care Agency LLC 03 13 23  (Website Conversion - Continuation)', 49, '2023-03-12 17:58:51', '2023-03-13', '2023-03-13 08:58:51', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, '<p>HTML/CSS - 100%</p>\r\n\r\n<p>Responsiveness - 0%</p>\r\n\r\n<p>WordPress - 90%</p>\r\n', '', '<p>Continued Task ID to:<a href=\"http://web4.proweaverlinks.com/taskbai/task/250\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/250</a></p>\r\n', '', 0),
(248, 'Meeting Session 03 13 23 (Other)', 42, '2023-03-12 19:20:21', '2023-03-13', '2023-03-13 10:20:21', '0000-00-00 00:00:00', 0, 25, 1, 1, NULL, 4, '<p>Wordpress Activation Discussion</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(249, 'Meeting Session 03 13 23 (Other)', 42, '2023-03-12 19:20:22', '2023-03-13', '2023-03-13 10:20:22', '0000-00-00 00:00:00', 0, 24, 1, 1, NULL, 4, '<p>WordPress Activation Discussion</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(250, 'Sufficient Enough Home Care Agency LLC 03 14 23  (Website Conversion - Continuation)', 49, '2023-03-13 17:49:27', '2023-03-14', '2023-03-14 08:49:27', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, '<p>HTML/CSS - 90%</p>\r\n\r\n<p>CONVERSION -&nbsp; 80%</p>\r\n\r\n<p>WORDPRESS - 95%</p>\r\n', '', '<p>Continue Task ID to:</p>\r\n', '', 0),
(251, 'Lavena Home Health 03 14 23  (Website Conversion - Continuation) ', 52, '2023-03-13 17:49:46', '2023-03-14', '2023-03-14 08:49:46', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, '<div class=\"card-body\">\r\n<p>HTML/CSS: 80%</p>\r\n\r\n<p>Responsiveness:5%</p>\r\n\r\n<p>WordPress: 100%</p>\r\n</div>\r\n', '', '<p>Continued Task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/253\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/253</a></p>\r\n', '', 0),
(252, 'Sufficient Enough Home Care Agency LLC 03 15 23  (Website Conversion - Continuation)', 49, '2023-03-14 18:29:21', '2023-03-15', '2023-03-15 09:29:21', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, '<p>HTML/CSS - 100%</p>\r\n\r\n<p>Responsiveness - 100%</p>\r\n\r\n<p>Wordpress - 100%</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(253, 'Lavena Home Health 03 15 23  (Website Conversion - Continuation)', 52, '2023-03-14 18:29:35', '2023-03-15', '2023-03-15 09:29:35', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, '<div class=\"card-body\">\r\n<div class=\"card-body\">\r\n<p>HTML/CSS: 94%</p>\r\n\r\n<p>Responsiveness:5%</p>\r\n\r\n<p>WordPress: 100%</p>\r\n</div>\r\n</div>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(254, 'Sufficient Enough Home Care Agency LLC 03 15 23  (Other - Upload Website File)', 49, '2023-03-14 19:13:55', '2023-03-15', '2023-03-15 10:13:55', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, '<p><strong>Website Link: </strong></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/Luis/sufficientenough/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/Luis/sufficientenough/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>WordPress login details:</strong></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/Luis/sufficientenough/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/Luis/sufficientenough/authenticationlogin.php</a></p>\r\n\r\n<p>Username: <strong>sufficientenough</strong></p>\r\n\r\n<p>Password: <strong>sufficientenough!@2023</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(255, 'Lavena Home Health 03 15 23 (Other - Upload Website File)', 52, '2023-03-14 19:14:00', '2023-03-15', '2023-03-15 10:14:00', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, '<div class=\"card-body\">\r\n<p><strong>Website Link: </strong></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/diether/lavenahomehealth/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/diether/lavenahomehealth/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>WordPress login details:</strong></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/diether/lavenahomehealth/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/diether/lavenahomehealth/authenticationlogin.php</a></p>\r\n\r\n<p>Username: <strong>lavenahomehealth&nbsp;</strong><br />\r\nPassword: <strong>LavenaHomeHealth!@2023</strong></p>\r\n</div>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(256, 'Meeting Session 03 15 23 (Other)', 42, '2023-03-14 19:15:46', '2023-03-15', '2023-03-15 10:15:46', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, '<p>FTP Session</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(257, 'Meeting Session 03 15 23 (Other)', 42, '2023-03-14 19:15:47', '2023-03-15', '2023-03-15 10:15:47', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, '<p>FTP Session</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(258, 'Meeting Session 03 16 23 (Other) ', 42, '2023-03-15 18:03:51', '2023-03-16', '2023-03-16 09:03:51', '0000-00-00 00:00:00', 0, 24, 4, 0, NULL, 3, '<p>3D Content Posting Session</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(259, 'Meeting Session 03 16 23 (Other)', 42, '2023-03-15 18:04:44', '2023-03-16', '2023-03-16 09:04:44', '0000-00-00 00:00:00', 0, 25, 4, 0, NULL, 3, '<p>3D Content Posting Session</p>\r\n', '', '<p>For review</p>\r\n', '', 0),
(260, 'Lavena Home Health 03 16 23  (Website Conversion - Continuation) ', 52, '2023-03-15 18:06:28', '2023-03-16', '2023-03-16 09:06:28', '0000-00-00 00:00:00', 0, 25, 4, 0, NULL, 3, '<div class=\"card-body\">\r\n<div class=\"card-body\">\r\n<div class=\"card-body\">\r\n<p>HTML/CSS: 100%</p>\r\n\r\n<p>Responsiveness:5%</p>\r\n\r\n<p>WordPress: 100%</p>\r\n</div>\r\n</div>\r\n</div>\r\n', '', '<p>Continued Task ID to:</p>\r\n', '', 0),
(261, 'QA Changes 03 16 23 (Other)', 42, '2023-03-15 18:10:13', '2023-03-16', '2023-03-16 09:10:13', '0000-00-00 00:00:00', 0, 24, 4, 0, NULL, 3, '<p>QA Implementation</p>\r\n', '', '<p>For Review</p>\r\n', '', 0),
(262, 'Sufficient Enough Home Care Agency LLC 03 16 23 (3D - Content Posting)', 49, '2023-03-15 22:04:02', '2023-03-16', '2023-03-16 13:04:02', '0000-00-00 00:00:00', 0, 24, 4, 0, 'FINAL_Sufficient_Enough_Home_Care_Agency_LLC_3D_CW29_April-22-2021.doc', 3, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><strong><span dir=\"LTR\" style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">All Pages</span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span dir=\"LTR\" style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">-added title tag</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span dir=\"LTR\" style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">-added keywords</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span dir=\"LTR\" style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">-added description</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span dir=\"LTR\" style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">-added thumbnail photos on content area (remove this field if no thumbnails added)</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span dir=\"LTR\" style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">-added text contents</span></span></span></span></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/Luis/sufficientenough/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/Luis/sufficientenough/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span dir=\"LTR\" style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">VALIDATED HTML/CSS</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span dir=\"LTR\" style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">Backup file path:</span></span></span></span></p>\r\n', '<p>To be followed</p>\r\n', '<p>Unimplemented: Services Design</p>\r\n\r\n<p>Continued Task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/264\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/264</a></p>\r\n', '', 0),
(263, 'Lavena Home Health 03 16 23 (3D - Content Posting)', 52, '2023-03-15 22:05:38', '2023-03-16', '2023-03-16 13:05:38', '0000-00-00 00:00:00', 0, 25, 4, 0, 'FINAL-Lavena_Home_Health_3D_CW17_May_10,_2019(1).doc', 3, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>All Pages</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">-added title tag</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">-added keywords</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">-added description</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">-added text contents</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/diether/lavenahomehealth/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/diether/lavenahomehealth/</a></p>\r\n', '', '<p>Unimplemented: Services design</p>\r\n\r\n<p>Continued Task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/265\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/265</a></p>\r\n', '', 0),
(264, 'Sufficient Enough Home Care Agency LLC 03 17 23 (3D - Content Posting - Continuation)', 49, '2023-03-16 18:03:36', '2023-03-17', '2023-03-17 09:03:36', '0000-00-00 00:00:00', 0, 24, 4, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(265, 'Lavena Home Health 03 17 23 (3D - Content Posting - Continuation)', 52, '2023-03-16 18:04:27', '2023-03-17', '2023-03-17 09:04:27', '0000-00-00 00:00:00', 0, 25, 4, 0, NULL, 3, '<p><a href=\"https://drive.google.com/drive/folders/1F6liTtnGQBfltl4o9HXi9RyUSd77BulW?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1F6liTtnGQBfltl4o9HXi9RyUSd77BulW?usp=sharing</a></p>\r\n', '<p>Backup files link to: <a href=\"https://drive.google.com/drive/folders/1F6liTtnGQBfltl4o9HXi9RyUSd77BulW?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1F6liTtnGQBfltl4o9HXi9RyUSd77BulW?usp=sharing</a></p>\r\n', '', '', 0),
(266, 'Meeting Session 03 17 23 (Other)', 42, '2023-03-16 18:08:44', '2023-03-17', '2023-03-17 09:08:44', '0000-00-00 00:00:00', 0, 25, 4, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(267, 'Meeting Session 03 17 23 (Other)', 42, '2023-03-16 18:09:13', '2023-03-17', '2023-03-17 09:09:13', '0000-00-00 00:00:00', 0, 24, 4, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(269, 'Proweaver, Inc. 03 17 23 (Check Other Team)', 42, '2023-03-16 19:09:56', '2023-03-17', '2023-03-17 10:09:56', '0000-00-00 00:00:00', 0, 25, 2, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(270, 'Proweaver, Inc. 03 17 23 (Check Other Team)', 42, '2023-03-16 19:10:00', '2023-03-17', '2023-03-17 10:10:00', '0000-00-00 00:00:00', 0, 24, 2, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(271, 'Proweaver 03 17 23 (Sample)', 42, '2023-03-16 19:15:17', '2023-03-17', '2023-03-17 10:15:17', '0000-00-00 00:00:00', 0, 26, 2, 0, NULL, 0, NULL, NULL, NULL, NULL, 0),
(272, 'Proweaver, Inc. 03 17 23 (Check Other Team)', 42, '2023-03-16 19:24:44', '2023-03-17', '2023-03-17 10:24:44', '0000-00-00 00:00:00', 0, 2, 2, 0, NULL, 3, '<p><strong>Roseway Transport LLC 03 20 23 (Dev)</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 09:00 am<br />\r\nTime End: 09:20 am</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Karma Healthcare Staffing Consultants 03 20 23 (Dev)</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/282\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/282</a><br />\r\nTime End: 09:20 am<br />\r\nTime End: 11:00 am</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(273, 'Able Autism Therapy Services 03 17 23 (Dev)', 21, '2023-03-16 22:40:53', '2023-03-17', '2023-03-17 13:40:53', '0000-00-00 00:00:00', 0, 24, 2, 0, NULL, 3, '<p><strong>Email Subject: Able Autism Therapy Services (Website Updates)<br />\r\nTo: info@ableaba.com<br />\r\nAgent to Queue: anna@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- updated Google map on footer area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong><br />\r\n- updated slogan and form on bannner area<br />\r\n<a href=\"http://- https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>24</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/18xdUOB-2i2oFwarhbgEYVu8U_ckzebmi\" target=\"_blank\">https://drive.google.com/drive/folders/18xdUOB-2i2oFwarhbgEYVu8U_ckzebmi</a></p>\r\n', '<p>-</p>\r\n', '<p><strong><span style=\"color:#c0392b\"><span style=\"font-size:24px\">FOR OTHER TEAM</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For FDG: Able Autism Therapy Services 03 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/273\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/273</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\nHomepage, pls separate First Name and Last Name on the online forms</em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team gusto si client na e separate information ang first name and last name sa online form<br />\r\nkindly update lng sa forms na data thank you.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>_____________________________________________________________________________________________________________________</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For Design: Able Autism Therapy Services 03 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/273\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/273</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\nPlease change the logo, i don&rsquo;t like the design. If you can give me more options</em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team ganahan si client na e change ang logo to something different and to also provide og lain options thank you.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>_____________________________________________________________________________________________________________________</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0),
(274, 'Bellmed Transportation LLC 03 17 23 (Dev)', 35, '2023-03-16 22:41:29', '2023-03-17', '2023-03-17 13:41:29', '0000-00-00 00:00:00', 0, 25, 2, 0, NULL, 3, '<p><strong>Email Subject: Bellmed Transportation LLC (Website Updates)<br />\r\nTo: bellebella@bellmed.com<br />\r\nAgent to Queue: elsa@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- updated Facebook link and added LinkedIn icon on header area<br />\r\n- added &quot;Blog&quot; tab on main navigation area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong><br />\r\n- updated button link on &quot;Set an Appointment&quot; box and form on &quot;Drop Us a Message&quot; section on bottom area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Blog</strong><br />\r\n- created page<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/medical-transportation-blog\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/medical-transportation-blog</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>25</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Back up files link: <a href=\"https://drive.google.com/drive/folders/1brMw3f5Y6yDJUntTO33xslrW1vKRy0KY?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1brMw3f5Y6yDJUntTO33xslrW1vKRy0KY?usp=sharing</a></p>\r\n', '<p>-</p>\r\n', '<p><span style=\"color:#c0392b\"><span style=\"font-size:22px\">FOR OTHER TEAM</span></span></p>\r\n\r\n<p>&nbsp;<br />\r\nFor FDG: Bellmed Transportation LLC 03 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/274\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/274</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n1. Please add Blog page where I can post articles<br />\r\n2. Please separate the First Name and Last Name on the Homepage form. I want you to balance out the form,&nbsp; so it becomes two lines.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n1. Hi team, nag request diay si client ug blog page , please diay ko pa add blog page nga maka post si client sa iyang mga articles. Thank you<br />\r\n2. Hi team, ang client nag ask ug pa separate sa first name and lastname sa homepage form, please pa activate mi sa changes when submiting the form, thank you kaayo.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>For SMM: Bellmed Transportation LLC 03 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/274\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/274</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\nPlease setup my LinkedIn account and also link my Facebook account to the website<br />\r\nhttps://www.facebook.com/saleah.bell</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n1. Hi team, mag pa set up diay ug LinkedIn si client palehug ko set up sa LinkedIn account, salamat kaayo.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0),
(275, 'Meeting Session 03 20 23 (Other)', 42, '2023-03-19 18:53:14', '2023-03-20', '2023-03-20 09:53:14', '0000-00-00 00:00:00', 0, 24, 2, 0, NULL, 3, '<p><strong>Meeting Session with sir Gerald</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/275\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/275</a><br />\r\nTime Start: 10:05 am<br />\r\nTime End: 12:00 pm</p>\r\n\r\n<p>Continuation<br />\r\nTime Start: 1:04 pm<br />\r\nTime End: 2:00 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>-</p>\r\n', '<p>For Review</p>\r\n', '<p>-</p>\r\n', 0),
(276, 'Meeting Session 03 20 23 (Other)', 42, '2023-03-19 18:53:19', '2023-03-20', '2023-03-20 09:53:19', '0000-00-00 00:00:00', 0, 25, 2, 0, NULL, 3, '<p>Meeting Session with sir Gerald</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/276\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/276</a></p>\r\n\r\n<p>Time Start: 10:45 am<br />\r\nTime End: 12:00 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Continuation of Meeting Session with sir Gerald</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/276\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/276</a></p>\r\n\r\n<p>Time Start: 1:04 pm<br />\r\nTime End: 2:00 pm</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(277, 'Proweaver, Inc. 03 20 23 (Check Other Team)', 42, '2023-03-19 18:53:38', '2023-03-20', '2023-03-20 09:53:38', '0000-00-00 00:00:00', 0, 24, 2, 0, NULL, 3, '<div class=\"card-body\">\r\n<p><strong>Check Other Team Draft</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/282\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/282</a><br />\r\nTime Start: 02:00 pm<br />\r\nTime End: 02:15 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(278, 'Proweaver, Inc. 03 20 23 (Check Other Team)', 42, '2023-03-19 18:53:42', '2023-03-20', '2023-03-20 09:53:42', '0000-00-00 00:00:00', 0, 25, 2, 0, NULL, 3, '<p>Task ID : <a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Entry:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Analyzing Task<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 2:03 pm<br />\r\nTime End: 2:15 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Backing up&nbsp; Roseway Transport LLC<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 2:16 pm<br />\r\nTime End: 2:20 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Setting up a pinterest icon<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 2:21 pm<br />\r\nTime End: 2:41 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adding images of trucks on website<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 2:21 pm<br />\r\nTime End: 3:00 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Backing Up the edited website files<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 3:30 pm<br />\r\nTime End: 3:38 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sending Task and URL to DEV<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 3:38 pm<br />\r\nTime End: 3:48 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adding Additional notes<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 3:48 pm<br />\r\nTime End: 4:00 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Reviewing task<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 4:00 pm<br />\r\nTime End: 4:20 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(279, 'QA Changes 03 20 23 (Other)', 42, '2023-03-19 18:54:07', '2023-03-20', '2023-03-20 09:54:07', '0000-00-00 00:00:00', 0, 25, 2, 0, NULL, 3, '<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Reviewing task<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 4:55 pm<br />\r\nTime End: 5:10 pm<br />\r\n&nbsp;<br />\r\nSetting pinterest Icon link<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 5:10 pm<br />\r\nTime End: 5:20 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updating all images and adding alt values<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 5:20 pm<br />\r\nTime End: 5:43 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated WP- Theme Screenshot<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 5:43 pm<br />\r\nTime End: 5:50 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated ORC entry<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start: 5:50 pm<br />\r\nTime End: 6:04 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '<p>-</p>\r\n', 0),
(280, 'QA Changes 03 20 23 (Other)', 42, '2023-03-19 18:54:16', '2023-03-20', '2023-03-20 09:54:16', '0000-00-00 00:00:00', 0, 24, 2, 0, NULL, 3, '<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/282\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/282</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Home<br />\r\n- double check alt value of images on middle area</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 5:39pm</p>\r\n\r\n<p>Time End: 5:40pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-&nbsp; nalangan sa images practicing to edit efficiently</p>\r\n', 0),
(283, 'Meeting Session 03 20 23 (Other) ', 42, '2023-03-19 20:58:57', '2023-03-20', '2023-03-20 11:58:57', '0000-00-00 00:00:00', 0, 27, 1, 0, NULL, 3, '<p>Website Anatomy, HTML/CSS, structuring of files/codes Discussion</p>\r\n', '', '<p>For review</p>\r\n', '', 0),
(284, 'Activity 1 - Layout Conversion 03 20 23 (Other)', 42, '2023-03-19 22:05:17', '2023-03-20', '2023-03-20 13:05:17', '0000-00-00 00:00:00', 0, 27, 1, 0, 'layout-4-file5.zip', 3, '<p>Layout Conversion: 60%</p>\r\n', '', '<p>Continued task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/288\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/288</a></p>\r\n', '', 0),
(286, 'QA Changes 03 21 23 (Other)', 42, '2023-03-20 17:51:57', '2023-03-21', '2023-03-21 08:51:57', '0000-00-00 00:00:00', 0, 24, 2, 0, NULL, 3, '<p><strong>Karma Healthcare Staffing Consultants 03 20 23 (Dev)</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/282\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/282</a><br />\r\nTime Start: 9:00 am<br />\r\nTime End: 2:04 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><a href=\"https://drive.google.com/drive/u/0/folders/1SwFMkD-SGOZqXNPqX55W6ftbwlxyKPkH\" target=\"_blank\">https://drive.google.com/drive/u/0/folders/1SwFMkD-SGOZqXNPqX55W6ftbwlxyKPkH</a></p>\r\n', '<p>for review</p>\r\n', '<p><span style=\"color:#2ecc71\">- validated HTML/CSS</span></p>\r\n\r\n<p><span style=\"color:#2ecc71\">- no broken links</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>medyo nadugay kay naa paman meeting and other task</p>\r\n', 0),
(287, 'QA Changes 03 21 23 (Other)', 42, '2023-03-20 17:52:01', '2023-03-21', '2023-03-21 08:52:01', '0000-00-00 00:00:00', 0, 25, 2, 0, NULL, 3, '<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a></p>\r\n\r\n<p>QA Task Comment:<a href=\"http://web4.proweaverlinks.com/taskbai/task/281/comment\" target=\"_blank\"> http://web4.proweaverlinks.com/taskbai/task/281/comment</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Entry:</p>\r\n\r\n<p>Reviewing QA Task<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281/comment\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281/comment</a><br />\r\nTime Start: 9:01am<br />\r\nTime End: 9:05am</p>\r\n\r\n<p><br />\r\nLink pinterest icon to pinterest website<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a><br />\r\nTime Start: 9:05am<br />\r\nTime End: 9:10am</p>\r\n\r\n<p><br />\r\nDouble checked and updated alt values of banner and slider images<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a><br />\r\nTime Start: 9:10am<br />\r\nTime End: 9:28am</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated image on &quot;Our Mission Statement&quot; section, and adding alt value<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a><br />\r\nTime Start: 9:28am<br />\r\nTime End: 9:33am</p>\r\n\r\n<p><br />\r\nUpdated WP- Theme Screenshot and About us ang Vehicle pages<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/wp-content/themes/rosewaytransrt534/screenshot.jpg\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/wp-content/themes/rosewaytransrt534/screenshot.jpg</a><br />\r\nTime Start:9:33am<br />\r\nTime End:9:36am</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated Orc Entry and&nbsp; subjects of other team drafts and double check email extension<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\nTime Start:9:36am<br />\r\nTime End:9:40am</p>\r\n\r\n<p><br />\r\nBacking up files to drive<br />\r\n<a href=\"https://drive.google.com/drive/folders/1X7_SMOxQzmv5h-HnBvojlBDS4eejrPmd\" target=\"_blank\">https://drive.google.com/drive/folders/1X7_SMOxQzmv5h-HnBvojlBDS4eejrPmd</a><br />\r\nTime Start:9:40am<br />\r\nTime End:10:00am</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated Pinterest Link</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a></p>\r\n\r\n<p>Time Start: 5:37 pm<br />\r\nTime End: 5:43 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/293\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/293</a></p>\r\n\r\n<p>QA Task Comment: <a href=\"http://web4.proweaverlinks.com/taskbai/task/293/comment\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/293/comment</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Entry:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated dropdown button and the banner info<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>Time Start: 3:01 pm<br />\r\nTime End: 3:26 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated Google Review styling and Wordpress Theme Screenshot<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>Time Start: 3:26 pm<br />\r\nTime End: 4:03 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated Orchestra Entry, Task and URL, Home and Additional Info.<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/293\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/293</a></p>\r\n\r\n<p>Time Start: 4:03 pm<br />\r\nTime End: 4:21 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Backing up website files in drive<br />\r\n<a href=\"https://drive.google.com/drive/folders/1bkYzkF9LNSypBFJRdWz2SoWUIlBaJ21S?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1bkYzkF9LNSypBFJRdWz2SoWUIlBaJ21S?usp=sharing</a></p>\r\n\r\n<p>Time Start: 4:21 pm<br />\r\nTime End: 4:48 pm</p>\r\n', '<p>ROSEWAY TRANSPORT:</p>\r\n\r\n<p>Back up link: <a href=\"https://drive.google.com/drive/folders/1X7_SMOxQzmv5h-HnBvojlBDS4eejrPmd?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1X7_SMOxQzmv5h-HnBvojlBDS4eejrPmd?usp=sharing</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>KARMA HEALTHCARE</p>\r\n\r\n<p>Back up link: <a href=\"https://drive.google.com/drive/folders/1bkYzkF9LNSypBFJRdWz2SoWUIlBaJ21S?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1bkYzkF9LNSypBFJRdWz2SoWUIlBaJ21S?usp=sharing</a></p>\r\n', '<p>For Review</p>\r\n', '<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- validated HTML and CSS</span></span></span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- checked internal links</span></span></span></strong></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>Note:</p>\r\n\r\n<p><strong>Naay broken links sa website and I dont know asa ang mga images, wala nalng nako hilabti kay dili scope sa ako task for today. Salamat</strong></p>\r\n', 0),
(288, 'Activity 1 - Layout Conversion 03 21 23 (Other - Continuation) ', 42, '2023-03-20 17:59:49', '2023-03-21', '2023-03-21 08:59:49', '0000-00-00 00:00:00', 0, 27, 1, 1, NULL, 4, '<p>Converted Layout:</p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/11PNO6w1zXRqDjQsqw0FfYO8e_v18JBPP/view?usp=sharing\" target=\"_blank\">https://drive.google.com/file/d/11PNO6w1zXRqDjQsqw0FfYO8e_v18JBPP/view?usp=sharing</a></p>\r\n', '', '<p>For review</p>\r\n', '', 0),
(291, ' Meeting Session 03 21 23 (Other)', 42, '2023-03-20 18:45:09', '2023-03-21', '2023-03-21 09:45:09', '0000-00-00 00:00:00', 0, 24, 8, 0, NULL, 3, '<p><strong>Metting Session with sir john</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/291\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/291</a><br />\r\nTime Start 9:40 am<br />\r\nTIme End: 10:24 am</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>Meeting about plugin installations</p>\r\n', 0),
(292, ' Meeting Session 03 21 23 (Other)', 42, '2023-03-20 18:45:16', '2023-03-21', '2023-03-21 09:45:16', '0000-00-00 00:00:00', 0, 25, 8, 0, NULL, 3, '<p>Meeting with sir John</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/292\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/292</a></p>\r\n\r\n<p>Time Start: 9:45 am<br />\r\nTime End: 10:43 am</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Meeting with sir John</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/292\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/292</a></p>\r\n\r\n<p>Time Start: 2:34 pm<br />\r\nTime End: 3:01 pm</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(294, 'Trusty Home Health Care LLC 03 21 23 (Dev)', 28, '2023-03-20 18:47:06', '2023-03-21', '2023-03-21 09:47:06', '0000-00-00 00:00:00', 0, 24, 8, 8, 'attachments1.zip', 4, '<div class=\"card-body\">\r\n<p><strong>Email Subject: Trusty Home Health Care LLC (Website Updates)<br />\r\nTo:</strong> <strong>hairypotter@trustyhomecare.com<br />\r\nAgent to Queue: eve@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- added Google translate on nav area</p>\r\n\r\n<p>- added Gallery tab under &quot;About Us&quot; tab on main navigation area<br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>About Us</strong><br />\r\n- updated image on banner area<br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/home-care-about-us\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/home-care-about-us</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gallery</strong></p>\r\n\r\n<p><strong>- </strong>created page</p>\r\n\r\n<p>- added images on content area</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/about-us-gallery\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/about-us-gallery</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>24</p>\r\n</div>\r\n', '<p><a href=\"https://drive.google.com/drive/u/0/folders/19-wuHUmLUsfXTYkjaHORAnlMTPiFkuyu\" target=\"_blank\">https://drive.google.com/drive/u/0/folders/19-wuHUmLUsfXTYkjaHORAnlMTPiFkuyu</a></p>\r\n', '<p>for client review</p>\r\n', '<p><span style=\"color:#2ecc71\">-Validated HTML/CSS</span></p>\r\n\r\n<p><span style=\"color:#2ecc71\">-No Broken Links</span></p>\r\n\r\n<p><span style=\"color:#2ecc71\">-ge fix and dropdown sa main nav </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trusty Home Health Care LLC 03 21 23 (Dev)</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/294\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/294</a><br />\r\nTime Start: 3:30 pm<br />\r\nTime End: 4:20 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0),
(295, 'Activity 2 - Layout Conversion 03 21 23 (Other)', 42, '2023-03-20 22:16:46', '2023-03-21', '2023-03-21 13:16:46', '0000-00-00 00:00:00', 0, 27, 1, 0, 'layout-7-file1.zip', 3, '<p>Converted Layout:</p>\r\n\r\n<p><a href=\"https://drive.google.com/file/d/1-8nHV4fxlR0aAKq2YTwE6jx2kNiztwsE/view?usp=sharing\" target=\"_blank\">https://drive.google.com/file/d/1-8nHV4fxlR0aAKq2YTwE6jx2kNiztwsE/view?usp=sharing</a></p>\r\n', '', '', '', 0),
(297, 'Eva Pharmacy 03 22 23 (Website Conversion)', 48, '2023-03-21 03:14:31', '2023-03-22', '2023-03-22 09:19:27', '0000-00-00 00:00:00', 0, 1, 1, 0, 'Eva_Pharmacy_-_Layout1.zip', 3, '<p>HTML/CSS: 100%</p>\r\n\r\n<p>Responsive: 0%</p>\r\n\r\n<p>WordPress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/315\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/315</a></p>\r\n', '', 0),
(299, 'MPA Healthcare Staffing Agency LLC 03 22 23 (Website Conversion) ', 47, '2023-03-21 03:18:12', '2023-03-22', '2023-03-22 10:07:05', '0000-00-00 00:00:00', 0, 27, 1, 0, 'MPA-Healthcare-Staffing-Agency-LLC-Layout1.zip', 3, '<p>HTML/CSS: 20%<br />\r\nResponsive: 0%<br />\r\nWordPress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/307\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/307</a></p>\r\n', '', 0),
(300, 'Meeting Session 03 22 23 (Other) ', 42, '2023-03-21 03:19:06', '2023-03-22', '2023-03-22 09:02:09', '0000-00-00 00:00:00', 0, 27, 1, 1, NULL, 4, '<p>Layout Conversion with Template</p>\r\n', '', '<p>For review</p>\r\n', '', 0),
(301, 'Aspire Home Healthcare Services and Staffing Agency LLC 03 22 23 (Dev)', 31, '2023-03-21 18:11:43', '2023-03-22', '2023-03-22 09:11:43', '0000-00-00 00:00:00', 0, 24, 8, 8, NULL, 5, '<p><strong>Email Subject: Aspire Home Healthcare Services and Staffing Agency LLC (Website Updates)<br />\r\nTo:</strong> <strong>ryan@aspirehomehealthcare.com<br />\r\nAgent to Queue: carla@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- added new location, fax number and office email on footer area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Service Areas Covered</strong></p>\r\n\r\n<p>- added Salisbury on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/home-care-and-healthcare-staffing-service-areas-covered\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/home-care-and-healthcare-staffing-service-areas-covered</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>24</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1xr3dk7W-PyXtC67D-Y_ZDZzXESRDx4aL\" target=\"_blank\">https://drive.google.com/drive/folders/1xr3dk7W-PyXtC67D-Y_ZDZzXESRDx4aL</a></p>\r\n', '<p>for client review</p>\r\n', '<p><span style=\"color:#2ecc71\">-Validated HTML</span></p>\r\n\r\n<p><span style=\"color:#2ecc71\">-Validated CSS</span></p>\r\n\r\n<p><span style=\"color:#2ecc71\">-Fixed footer contact info to centered and responsive</span></p>\r\n', 0),
(302, 'QA Changes 03 22 23 (Other)', 42, '2023-03-21 18:12:00', '2023-03-22', '2023-03-22 09:12:00', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, '<p><strong>Karma Healthcare Staffing Consultants 03 20 23 (Dev)</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/282\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/282</a><br />\r\nTime Start: 1:32 pm<br />\r\nTime End: 3:00 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Aspire Home Healthcare Services and Staffing Agency LLC 03 22 23 (Dev)</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/301\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/301</a><br />\r\nTime Start: 3:30 pm<br />\r\nTime End: 4:25 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0);
INSERT INTO `tasks` (`id`, `task_name`, `account_id`, `created_date`, `assigned_date`, `assigned_datetime`, `updated_date`, `instructions_id`, `assigned_id`, `created_id`, `qa_id`, `attachment_file`, `status`, `task_url`, `task_backup`, `next_steps`, `additional_notes`, `progress_status`) VALUES
(303, 'QA Changes 03 22 23 (Other)', 42, '2023-03-21 18:12:02', '2023-03-22', '2023-03-22 09:12:02', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, '<p>Updating QA changes</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/</a></p>\r\n\r\n<p>Time Start: 5:21 pm</p>\r\n\r\n<p>Time End: 6:01 pm</p>\r\n', '<p>-</p>\r\n', '<p><strong>Unimplemented Task:</strong></p>\r\n\r\n<p>- please ko remove sa gimention ni client na phone number, please lng pud ko update sa gimention ni client na phone number<br />\r\n- 1000px:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; ayaw lng e-display none ang icons sa footer info<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;&raquo; please update theme screenshot after update<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Task &amp; URL:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; All Pages<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; please ko update sa orch entry</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Backup Files</strong><br />\r\n- screenshots:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please ko add bu screenshot ni About Us, 24-Hours ug Services Page<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n<strong>Website Files</strong><br />\r\n- please ko check sa file name sa theme screenshot kay naay space</p>\r\n', '<p>-</p>\r\n', 0),
(304, 'Bestvalue Healthcare, Inc. 03 22 23 (Dev)', 29, '2023-03-21 18:13:15', '2023-03-22', '2023-03-22 09:13:15', '0000-00-00 00:00:00', 0, 25, 8, 8, NULL, 5, '<div class=\"card-body\">\r\n<div class=\"card-body\">\r\n<p><strong>Email Subject: </strong> <strong>Bestvalue Healthcare, Inc.</strong> <strong> (Website Update)<br />\r\nTo: kamado@bestvaluehc.com<br />\r\nAgent to Queue: abby@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- updated Email address and Company Address and Phone Number on footer area.<br />\r\n- added Application Email address on footer area.<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>25</p>\r\n</div>\r\n</div>\r\n', '<p>Back up file link: <a href=\"https://drive.google.com/drive/folders/1wbJFAFZoeZZ6GZ0OkrRXEibdj3wFMeQE?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1wbJFAFZoeZZ6GZ0OkrRXEibdj3wFMeQE?usp=sharing</a></p>\r\n', '<p>For client review</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- validated HTML and CSS</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- checked internal links</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Note:</p>\r\n\r\n<p><strong>-nahuman nako edit ang task nako kauban sa responsiveness pero wala nako na tarong ang uban nga wala sa ako task</strong></p>\r\n\r\n<p><strong>-Ang mga non-home pages nga ako na editan ug company address kay naa sa wordpress pag screen shot kay ang mga ge edit nako dili man makita if e logout nako ang wordpress mao na ako ge buhat nalng. salamat sa pag understand.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Old Address:</strong><br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<br />\r\n7124 16th Street N<br />\r\nOakdale, Minnesota 55128</p>\r\n\r\n<p><br />\r\nContact Us<br />\r\nMain Phone:&nbsp; 651-528-2275<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />\r\nPhone:&nbsp; 651-757-5080 651-757-5079<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />\r\nFax: 651-344-0582<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />\r\nEmail:&nbsp; info@bestvaluehc.com</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0),
(305, 'Meeting Session 03 22 23 (Other)', 42, '2023-03-21 18:16:17', '2023-03-22', '2023-03-22 09:16:17', '0000-00-00 00:00:00', 0, 24, 8, 0, NULL, 3, '<p>Meeting Session with Sir Ervin</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/305\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/305</a></p>\r\n\r\n<p>TIme Start: 9:30 am</p>\r\n\r\n<p>Time End: 10:25 am</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(306, 'Meeting Session 03 22 23 (Other)', 42, '2023-03-21 18:16:33', '2023-03-22', '2023-03-22 09:16:33', '0000-00-00 00:00:00', 0, 25, 8, 0, NULL, 3, '<p>Meeting with Sir John</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/306\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/306</a></p>\r\n\r\n<p>Time Start: 9:02 am</p>\r\n\r\n<p>Time End: 10:25 am</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(307, 'MPA Healthcare Staffing Agency LLC 03 23 23 (Website Conversion - Continuation) ', 47, '2023-03-22 03:56:26', '2023-03-23', '2023-03-23 09:00:16', '0000-00-00 00:00:00', 0, 27, 1, 0, NULL, 3, '<p>HTML/CSS: 85%<br />\r\nResponsive: 0%<br />\r\nWordPress: 0%</p>\r\n', '', '<p>Continued task ID to:&nbsp;<a href=\"http://web4.proweaverlinks.com/taskbai/task/322\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/322</a></p>\r\n', '', 0),
(308, 'Meeting Session 03 23 23 (Other) ', 42, '2023-03-22 03:59:11', '2023-03-23', '2023-03-23 08:59:38', '0000-00-00 00:00:00', 0, 27, 1, 1, NULL, 4, '<p>Responsive View Discussion</p>\r\n', '', '<p>For review</p>\r\n', '', 0),
(309, 'Meeting Session 03 23 23 (Other) ', 42, '2023-03-22 03:59:57', '2023-03-23', '2023-03-23 09:07:26', '0000-00-00 00:00:00', 0, 24, 1, 21, NULL, 4, '<p>Meeting session with sir Jose</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/309\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/309</a></p>\r\n\r\n<p>Time Start: 09:30 am</p>\r\n\r\n<p>Time End: 12:00 pm</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>- CW email</p>\r\n\r\n<p>- Image editing for banner and non home pages</p>\r\n\r\n<p>- boxes</p>\r\n', 0),
(310, 'Meeting Session 03 23 23 (Other) ', 42, '2023-03-22 03:59:59', '2023-03-23', '2023-03-23 09:08:14', '0000-00-00 00:00:00', 0, 25, 1, 21, NULL, 4, '<p>Meeting with sir Jose</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/310\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/310</a></p>\r\n\r\n<p>Time Start: 9:28 am</p>\r\n\r\n<p>Time End: 12:00 am</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(311, 'QA Changes 03 23 23 (Other)', 42, '2023-03-22 04:00:46', '2023-03-23', '2023-03-23 09:09:38', '0000-00-00 00:00:00', 0, 24, 1, 21, NULL, 4, '<p><strong>QA Changes</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/316\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/316</a><br />\r\nTime Start: 04:40 pm<br />\r\nTime End: 04:45 pm</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(312, 'QA Changes 03 23 23 (Other)', 42, '2023-03-22 04:00:50', '2023-03-23', '2023-03-23 09:09:59', '0000-00-00 00:00:00', 0, 25, 1, 21, NULL, 4, '<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/317\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/317</a></p>\r\n\r\n<p>QA Comment: <a href=\"http://web4.proweaverlinks.com/taskbai/task/317/comment\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/317/comment</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated QA changes to task New Chapter Foundation 03 23 23 (Dev)</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/</a></p>\r\n\r\n<p>Time Start: 4:19 pm</p>\r\n\r\n<p>Time End: 5:02 pm</p>\r\n\r\n<hr />\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/318\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/318</a></p>\r\n\r\n<p>QA Comment:<a href=\"http://web4.proweaverlinks.com/taskbai/task/318/comment\" target=\"_blank\"> http://web4.proweaverlinks.com/taskbai/task/318/comment</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated QA changes to task<strong> </strong>Love &amp; Care Staffing Agency 03 23 23 (Dev)</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/</a></p>\r\n\r\n<p>Time Start: 5:02 pm</p>\r\n\r\n<p>Time End: 5:31 pm</p>\r\n', '<p>-</p>\r\n', '<p>For Review</p>\r\n', '<p>-</p>\r\n', 0),
(313, 'Proweaver, Inc. 03 23 23 (Check Other Team)', 42, '2023-03-22 04:02:25', '2023-03-23', '2023-03-23 09:08:50', '0000-00-00 00:00:00', 0, 24, 1, 21, NULL, 4, '<p><strong>Check Other Team Draft</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/316\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/316</a><br />\r\nTime Start: 01:00 pm<br />\r\nTime End: 01:15 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(314, 'Proweaver, Inc. 03 23 23 (Check Other Team)', 42, '2023-03-22 04:02:40', '2023-03-23', '2023-03-23 09:09:06', '0000-00-00 00:00:00', 0, 25, 1, 21, NULL, 4, '<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/317\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/317</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Added the Hospice Service on services</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/transitional-housing-services\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/transitional-housing-services</a></p>\r\n\r\n<p>Time Start: 1:15 pm</p>\r\n\r\n<p>Time End: 2:48 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/318\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/318</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Added the Personal Care and Assistance on &quot;Medical Staffing&quot;</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/transitional-housing-services\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/transitional-housing-services</a></p>\r\n\r\n<p>Time Start: 2:48 pm</p>\r\n\r\n<p>Time End: 3:48 pm</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(315, 'Eva Pharmacy 03 23 23 (Website Conversion - Continuation) ', 48, '2023-03-22 20:00:34', '2023-03-23', '2023-03-23 11:00:34', '0000-00-00 00:00:00', 0, 1, 1, 0, NULL, 3, '<p>HTML/CSS: 100%<br />\r\nResponsive: 100%<br />\r\nWordPress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID to:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/329\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/329</a></p>\r\n', '', 0),
(317, 'New Chapter Foundation 03 23 23 (Dev)', 19, '2023-03-22 20:45:08', '2023-03-23', '2023-03-23 11:45:08', '0000-00-00 00:00:00', 0, 25, 21, 21, 'New_Chapter_Foundation_001.docx', 4, '<p><strong>Email Subject: New Chapter Foundation (Website Updates)<br />\r\nTo: derrick@newchapterfdn.org<br />\r\nAgent to Queue: abby@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Services</strong></p>\r\n\r\n<p>- added &quot;Hospice Services&quot; box on content area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/transitional-housing-services\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/transitional-housing-services</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hospice Services</strong></p>\r\n\r\n<p>- created page</p>\r\n\r\n<p>- added contents on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/transitional-housing-services/hospice-services\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/transitional-housing-services/hospice-services</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>25</p>\r\n', '<p>Back up files link: <a href=\"https://drive.google.com/drive/folders/1xtUO4OUg1RFwtZQZonf85yM6XT2htlrM?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1xtUO4OUg1RFwtZQZonf85yM6XT2htlrM?usp=sharing</a></p>\r\n', '<p>For Client Review</p>\r\n', '<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- validated HTML and CSS</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- checked internal links</span></span></span></p>\r\n\r\n<hr />\r\n<p><strong><span style=\"color:#e74c3c\"><span style=\"font-size:24px\">FOR OTHER TEAM</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For CW: New Chapter Foundation 03 23 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/317\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/317</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/newchapterck921/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\nWe also offer Hospice Services service so I&#39;d like you to add that on my website. Thank you.</em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team, mag pa add diay ug Hospice Service si client palehug diay ko pa add sa content sa page nga ge create namo for Hospice Services service. Thank you</strong></p>\r\n', 0),
(318, 'Love & Care Staffing Agency 03 23 23 (Dev)', 27, '2023-03-22 20:46:31', '2023-03-23', '2023-03-23 11:46:31', '0000-00-00 00:00:00', 0, 25, 21, 21, 'Love_Care_Staffing_Agency_002.docx', 4, '<div class=\"card-body\">\r\n<p><strong>Email Subject: Love &amp; Care Staffing Agency (Website Updates)<br />\r\nTo: lovely@lovecarestaffing.com<br />\r\nAgent to Queue: abby@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Medical Staffing</strong></p>\r\n\r\n<p>- added &quot;Personal Care and Assistance&quot; box on content area.<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/lovecareia556/healthcare-staffing-medical-staffing\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/lovecareia556/healthcare-staffing-medical-staffing</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Personal Care and Assistance</strong></p>\r\n\r\n<p>-<strong> </strong>created page</p>\r\n\r\n<p>- added contents on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/lovecareia556/healthcare-staffing-medical-staffing/personal-care-and-assistance\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/lovecareia556/healthcare-staffing-medical-staffing/personal-care-and-assistance</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>25</p>\r\n</div>\r\n', '<p>Back up files link: <a href=\"https://drive.google.com/drive/folders/1FDBBIFyYOcGeTP1jwhmCyTPySYrgfCyj?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1FDBBIFyYOcGeTP1jwhmCyTPySYrgfCyj?usp=sharing</a></p>\r\n', '<p>For client review</p>\r\n', '<div class=\"card-body\">\r\n<div class=\"content-custom mb-0\">\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- validated HTML and CSS</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- checked internal links</span></span></span></p>\r\n\r\n<hr />\r\n<p><strong><span style=\"color:#e74c3c\"><span style=\"font-size:24px\">FOR OTHER TEAM</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For CW: New Chapter Foundation 03 23 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/318\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/318</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/lovecareia556/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/lovecareia556/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\nUnder Services pls add Personal Care and Assistance </em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team, mag pa add diay ug Personal Care and Assistance Under sa Services si client palehug diay ko pa add sa content sa page nga ge create namo for Personal Care and Assistance . Thank you</strong></p>\r\n</div>\r\n</div>\r\n', 0),
(319, 'Meeting Session 03 24 23 (Other)', 42, '2023-03-23 03:41:10', '2023-03-24', '2023-03-24 08:38:42', '0000-00-00 00:00:00', 0, 27, 1, 0, NULL, 3, '<p>Wordpress Activation</p>\r\n', '', '<p>For review</p>\r\n', '', 0),
(320, 'Meeting Session 03 24 23 (Other)', 42, '2023-03-23 03:41:18', '2023-03-24', '2023-03-24 09:33:48', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, '<p>Meeting with sir Reyvander</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/320\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/320</a></p>\r\n\r\n<p>Time Start: 9:35 am</p>\r\n\r\n<p>time End: 10:30 am</p>\r\n', '', '', '', 0),
(321, 'Meeting Session 03 24 23 (Other)', 42, '2023-03-23 03:41:38', '2023-03-24', '2023-03-24 09:34:04', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(322, 'MPA Healthcare Staffing Agency LLC 03 24 23 (Website Conversion - Continuation) ', 47, '2023-03-23 03:42:38', '2023-03-24', '2023-03-24 08:38:43', '0000-00-00 00:00:00', 0, 27, 1, 0, NULL, 3, '<p>HTML/CSS: 100%<br />\r\nResponsive: 0%<br />\r\nWordPress: 90%</p>\r\n', '', '<p>Continued task ID to:&nbsp;<a href=\"http://web4.proweaverlinks.com/taskbai/task/330\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/330</a></p>\r\n', '', 0),
(323, 'QA Changes 03 24 23 (Other) ', 42, '2023-03-23 03:43:16', '2023-03-24', '2023-03-24 09:34:21', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(324, 'QA Changes 03 24 23 (Other) ', 42, '2023-03-23 03:43:21', '2023-03-24', '2023-03-24 09:34:34', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(325, 'Proweaver, Inc. 03 24 23 (Check Other Team)', 42, '2023-03-23 03:43:53', '2023-03-24', '2023-03-24 09:34:44', '0000-00-00 00:00:00', 0, 25, 1, 0, NULL, 3, '<p><strong>Karma Healthcare Staffing Consultants 03 24 23 </strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/328\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/328</a></p>\r\n\r\n<p>Time Start: 11:20 am</p>\r\n\r\n<p>Time End: 2:19 pm</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(326, 'Proweaver, Inc. 03 24 23 (Check Other Team)', 42, '2023-03-23 03:43:55', '2023-03-24', '2023-03-24 09:35:17', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(327, 'Invise 03 24 23', 32, '2023-03-23 20:05:32', '2023-03-24', '2023-03-24 11:05:32', '0000-00-00 00:00:00', 0, 24, 16, 0, NULL, 3, '<p>-</p>\r\n', '<p><a href=\"https://drive.google.com/drive/u/0/folders/1J2uhwkpi3c0rW9EGwZ7E84InExTA3AR2\" target=\"_blank\">https://drive.google.com/drive/u/0/folders/1J2uhwkpi3c0rW9EGwZ7E84InExTA3AR2</a></p>\r\n', '<p>for client review</p>\r\n', '<p><span style=\"color:#2ecc71\">- Validate html/css</span></p>\r\n\r\n<p><span style=\"color:#2ecc71\">- No borken links</span></p>\r\n\r\n<p><span style=\"color:#2ecc71\">- fixed middle boxes alignment </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\">- unable to edit image colors </span></p>\r\n', 0),
(329, 'Eva Pharmacy 03 24 23 (Website Conversion - Continuation) ', 48, '2023-03-23 20:57:45', '2023-03-24', '2023-03-24 11:57:45', '0000-00-00 00:00:00', 0, 1, 1, 0, NULL, 3, '<p>HTML/CSS: 100%<br />\r\nResponsive: 100%<br />\r\nWordPress: 100%</p>\r\n', '<p>n/a</p>\r\n', '<p><strong>for review</strong></p>\r\n', '', 0),
(330, 'MPA Healthcare Staffing Agency LLC 03 27 23 (Website Conversion - Continuation) ', 47, '2023-03-24 03:14:48', '2023-03-27', '2023-03-27 10:15:42', '0000-00-00 00:00:00', 0, 27, 1, 0, NULL, 3, '<p>HTML/CSS: 100%<br />\r\nResponsive: 100%<br />\r\nWordPress: 100%</p>\r\n', '', '<p>Continued task ID to:&nbsp;<a href=\"http://web4.proweaverlinks.com/taskbai/task/345\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/345</a></p>\r\n', '', 0),
(335, 'Meeting Session 03 27 23 (Other)', 42, '2023-03-26 18:58:31', '2023-03-27', '2023-03-27 09:58:31', '0000-00-00 00:00:00', 0, 25, 20, 0, NULL, 3, '<p>Javascript Session</p>\r\n\r\n<p>Time Start: 9:58 am</p>\r\n\r\n<p>Time End: 11:34 am</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(336, 'Meeting Session 03 27 23 (Other)', 42, '2023-03-26 18:58:33', '2023-03-27', '2023-03-27 09:58:33', '0000-00-00 00:00:00', 0, 24, 20, 0, NULL, 3, '<p><strong>Javascript session</strong></p>\r\n\r\n<p>Time Start: 10:00 am</p>\r\n\r\n<p>Time End: 10:30 am</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(337, 'Check Other Team 03 27 23 (Other)', 42, '2023-03-26 18:58:58', '2023-03-27', '2023-03-27 09:58:58', '0000-00-00 00:00:00', 0, 25, 20, 0, NULL, 3, '<p>Studying sir Jay Notes</p>\r\n\r\n<p>Time Start: 11:34 am</p>\r\n\r\n<p>Time End: 12:00 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Having an activity</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 12:00 pm</p>\r\n\r\n<p>Time End: 12:00 pm</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(338, 'Check Other Team 03 27 23 (Other)', 42, '2023-03-26 18:59:00', '2023-03-27', '2023-03-27 09:59:00', '0000-00-00 00:00:00', 0, 24, 20, 0, NULL, 3, '<p>studying javascript session</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(339, 'Invise 03 27 23 (Maintenance)', 32, '2023-03-26 22:29:05', '2023-03-27', '2023-03-27 13:29:05', '0000-00-00 00:00:00', 0, 25, 20, 0, 'CW_FAQ1.docx', 3, '<p><strong>Email Subject: Invise (Website Updates)<br />\r\nTo: marcspector@invise.com<br />\r\nAgent to Queue: amanda@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong><br />\r\n- moved main navigation under banner area.</p>\r\n\r\n<p>- added visitor counter on footer area.</p>\r\n\r\n<p>-added google translate on header area.</p>\r\n\r\n<p>-added FAQ on &quot;Frequently Ask Questions&quot; section on bottom area.</p>\r\n\r\n<p>-added modal on all areas.<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>25</p>\r\n', '<p>Back up files link: <a href=\"https://drive.google.com/drive/folders/1022PHLWX-LmMvgi6ya7REZ5IPut8LPf8?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1022PHLWX-LmMvgi6ya7REZ5IPut8LPf8?usp=sharing</a></p>\r\n', '<p>For Client Review</p>\r\n', '<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- validated HTML and CSS</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">- checked internal links</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#e74c3c\"><span style=\"font-size:24px\">FOR OTHER TEAM</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For CW: Invise 03 27 23 (Maintenance)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/339\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/339</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n&nbsp;please add FAQ</em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team mag pa send diay ko ug content for FAQ thank you.</strong><br />\r\n&nbsp;</p>\r\n', 0),
(340, 'Envision Home Health Services, Inc. 03 27 23 (Maintenance)', 37, '2023-03-26 22:29:07', '2023-03-27', '2023-03-27 13:29:07', '0000-00-00 00:00:00', 0, 24, 20, 0, 'CW_FAQ.docx', 3, '<div class=\"card-body\">\r\n<p><strong>Email Subject:&nbsp;Envision Home Health Services, Inc. (Website Updates)<br />\r\nTo:</strong> <strong>merlyn@envisionhome.com<br />\r\nAgent to Queue: elsa@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong></p>\r\n\r\n<p>- fixed header area at 800px</p>\r\n\r\n<p>- added Googletranslate on header area</p>\r\n\r\n<p>- added &quot;FAQ&#39;S&quot; on main and footer navigation area</p>\r\n\r\n<p>- added visitor counter on footer area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>HOME</strong></p>\r\n\r\n<p>- added pop up box</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FAQ&#39;S</strong></p>\r\n\r\n<p>- created page and added text content on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/home-health-care-faqs\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/home-health-care-faqs</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>24</p>\r\n</div>\r\n', '<p><a href=\"https://drive.google.com/drive/u/0/folders/1yTMc2WPyiTYZqNF2JvzbD2FxhITIDa2P\" target=\"_blank\">https://drive.google.com/drive/u/0/folders/1yTMc2WPyiTYZqNF2JvzbD2FxhITIDa2P</a></p>\r\n', '<p>for client review</p>\r\n', '<p><strong><span style=\"color:#c0392b\"><span style=\"font-size:24px\">FOR OTHER TEAM</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For CW: <strong>Envision Home Health Services, Inc. 03 27 23 (Maintenance) </strong><br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/340\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/340</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):</em></p>\r\n\r\n<p>- please add FAQ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\nHi team gusto si client na mag add faq please ko make for content area thank you.</strong></p>\r\n', 0),
(344, 'Meeting Session 03 28 23 (Other)', 42, '2023-03-27 18:02:44', '2023-03-28', '2023-03-28 09:02:44', '0000-00-00 00:00:00', 0, 27, 2, 0, NULL, 3, '<p>FTP Discussion with sir Gerald<br />\r\nTime Start:&nbsp;10:00 am<br />\r\nTime End:&nbsp;11:42 am</p>\r\n', '', '<p>For review</p>\r\n', '', 0),
(345, 'MPA Healthcare Staffing Agency LLC 03 28 23 (Website Conversion - Continuation) ', 47, '2023-03-27 18:03:04', '2023-03-28', '2023-03-28 09:03:04', '0000-00-00 00:00:00', 0, 27, 2, 0, NULL, 3, '<p>Website Link:</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/Lysa/mpahcstaffingagency/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/Lysa/mpahcstaffingagency/</a></p>\r\n', '', '<p>For review</p>\r\n', '<p>WordPress login details:</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/Lysa/mpahcstaffingagency/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/Lysa/mpahcstaffingagency/authenticationlogin.php</a></p>\r\n\r\n<p>Username: <strong>mpahcstaffingagency</strong><br />\r\nPassword: <strong>MPAHcStaffingAgency!@2023</strong></p>\r\n', 0),
(347, 'Eva Pharmacy 03 29 23 (Website Conversion - Continuation) ', 48, '2023-03-28 18:27:38', '2023-03-29', '2023-03-29 09:27:38', '0000-00-00 00:00:00', 0, 1, 1, 0, NULL, 3, '<p><strong>Website Link:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy/\" target=\"_top\">https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy/</a></p>\r\n', '<p>n/a</p>\r\n', '<p>For review</p>\r\n', '<p><strong>WordPress login details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy/authenticationlogin.php</a><br />\r\nUsername: <strong>evapharmacy</strong><br />\r\nPassword: <strong>EvaPharmacy!@2023</strong></p>\r\n', 0),
(348, 'Eva Pharmacy 03 29 23 (3D Task - Content Posting)', 48, '2023-03-28 18:43:06', '2023-03-29', '2023-03-29 09:43:06', '0000-00-00 00:00:00', 0, 1, 1, 0, 'FINAL_Eva_Pharmacy_3D_CW43_March_22_2022.odt', 3, '<p><strong>All Pages</strong></p>\r\n\r\n<p>- posted content</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy/</a></p>\r\n', '<p>n/a</p>\r\n', '<p>for review</p>\r\n', '', 0),
(349, 'MPA Healthcare Staffing Agency LLC 03 29 23 (3D Task - Content Posting)', 47, '2023-03-28 18:44:38', '2023-03-29', '2023-03-29 09:44:38', '0000-00-00 00:00:00', 0, 27, 1, 0, 'FINAL_MPA_Healthcare_Staffing_Agency_LLC_3D_CW13_May212019.doc', 3, '<p><strong>All Pages</strong></p>\r\n\r\n<p>- posted content</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/Lysa/mpahcstaffingagency/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/Lysa/mpahcstaffingagency/</a></p>\r\n', '<p>n/a</p>\r\n', '<p>for review</p>\r\n', '', 0),
(350, 'Meeting Session 03 29 23 (Other) ', 42, '2023-03-28 19:07:55', '2023-03-29', '2023-03-29 10:07:55', '0000-00-00 00:00:00', 0, 27, 1, 0, NULL, 3, '<p>Content posting discussion</p>\r\n', '', '<p>For review</p>\r\n', '', 0),
(352, 'Meeting Session 03 30 23 (Other)', 42, '2023-03-29 18:09:22', '2023-03-30', '2023-03-30 09:09:22', '0000-00-00 00:00:00', 0, 27, 1, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(353, 'Activity 1 - Layout Conversion 03 30 23 (Other) ', 42, '2023-03-29 18:26:30', '2023-03-30', '2023-03-30 14:38:01', '0000-00-00 00:00:00', 0, 29, 1, 0, 'layout-4-file6.zip', 3, '<p>Website conversion: 31%</p>\r\n', '<p>N/A</p>\r\n', '<p>Continued task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/363\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/363</a></p>\r\n', '', 0),
(354, 'Activity 1 - Layout Conversion 03 30 23 (Other) ', 42, '2023-03-29 18:26:58', '2023-03-30', '2023-03-30 14:38:02', '0000-00-00 00:00:00', 0, 30, 1, 0, 'layout-7-file2.zip', 3, '<p>WEBSITE CONVERSION : 30%</p>\r\n', '<p>N/A</p>\r\n', '<p>Continue task ID :&nbsp;<a href=\"http://web4.proweaverlinks.com/taskbai/task/354\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/354</a></p>\r\n', '', 0),
(357, 'Meeting Session 03 30 23 (Other)', 42, '2023-03-29 18:47:59', '2023-03-30', '2023-03-30 09:47:59', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>File naming</p>\r\n\r\n<p>Coding structure</p>\r\n\r\n<p>HTML/CSS</p>\r\n\r\n<p>Time start: 10:00 AM</p>\r\n\r\n<p>Time end: 2:47 PM</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(358, 'Meeting Session 03 30 23 (Other)', 42, '2023-03-29 18:48:06', '2023-03-30', '2023-03-30 09:48:06', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, '<p>website anatomy</p>\r\n\r\n<p>structure of file and coding</p>\r\n\r\n<p>html/css</p>\r\n\r\n<p>time start : 10:00 AM</p>\r\n\r\n<p>time ended : 02:48 PM</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '', 0),
(360, 'Proweaver, Inc. 03 17 23 (Check Other Team)', 42, '2023-03-29 18:52:28', '2023-03-30', '2023-03-30 09:52:28', '0000-00-00 00:00:00', 0, 2, 2, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(362, 'Proweaver, Inc. 03 30 23 (Check Other Team)', 42, '2023-03-29 22:48:01', '2023-03-30', '2023-03-30 13:48:01', '0000-00-00 00:00:00', 0, 27, 2, 0, NULL, 3, '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(363, 'Activity 1 - Layout Conversion 03 31 23 (Other - Continuation) ', 42, '2023-03-30 17:57:28', '2023-03-31', '2023-03-31 08:57:28', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Website conversion: 100%</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Link to completed website: <a href=\"https://drive.google.com/drive/folders/1tSvaoLa9lGRcsfFL2VxllaWeipXOUb2p?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1tSvaoLa9lGRcsfFL2VxllaWeipXOUb2p?usp=sharing</a></p>\r\n', '<p>N/A</p>\r\n', '<p>For review</p>\r\n', '', 0),
(364, 'Activity 1 - Layout Conversion 03 31 23 (Other - Continuation) ', 42, '2023-03-30 17:58:03', '2023-03-31', '2023-03-31 08:58:03', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, '<p>WEBSITE CONVERSION : 100%</p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1WkySunjeARywHnC3y2dc0EaRBj49Z4LS?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1WkySunjeARywHnC3y2dc0EaRBj49Z4LS?usp=sharing</a></p>\r\n', '<p>N/A</p>\r\n', '<p>For review</p>\r\n', '', 0),
(365, 'Check Other Team 03 31 23 (Other)', 42, '2023-03-30 18:40:29', '2023-03-31', '2023-03-31 09:40:29', '0000-00-00 00:00:00', 0, 27, 2, 0, NULL, 3, '<p><strong>Check Other Team</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/365\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/365</a></p>\r\n\r\n<p>Time Start: 01:28 pm<br />\r\nTime End: 01:36 pm</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(366, 'Meeting Session 03 31 23 (Other)', 42, '2023-03-30 18:40:48', '2023-03-31', '2023-03-31 09:40:48', '0000-00-00 00:00:00', 0, 27, 2, 0, NULL, 3, '<p><strong>Session with Sir Gerald</strong><br />\r\nTime Start: 10:30 am<br />\r\nTime End: 12:00 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 01:00 pm<br />\r\nTime End: 01:28 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 02:17 pm<br />\r\nTime End: 02:41 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 03:30 pm<br />\r\nTime End: 03:50 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Reviewing the Guidelines</strong></p>\r\n\r\n<p>Time Start: 04:47 pm<br />\r\nTime End: 05:25 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 05:42 pm<br />\r\nTime End: 06:00 pm</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(367, 'QA Changes 03 31 23 (Other)', 42, '2023-03-30 18:41:02', '2023-03-31', '2023-03-31 09:41:02', '0000-00-00 00:00:00', 0, 27, 2, 0, NULL, 3, '<p><strong>QA Changes 03 31 23 (Other)</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/367\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/367</a></p>\r\n\r\n<p>Time Start: 03:50 pm<br />\r\nTime End: 04:47 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 05:25 pm<br />\r\nTime End: 05:42 pm</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(371, 'Lavena Home Health 04 03 23 (Website Conversion)', 52, '2023-03-30 20:26:41', '2023-04-03', '2023-04-03 14:03:48', '0000-00-00 00:00:00', 0, 30, 1, 1, NULL, 4, '<p>HTML/CSS Web Conversion : 30%<br />\r\nResponsive : 0%</p>\r\n\r\n<p>Wordpress : 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continuted task ID : <a href=\"http://web4.proweaverlinks.com/taskbai/task/382\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/382</a></p>\r\n', '', 0),
(372, 'Sufficient Enough Home Care Agency LLC 04 03 23 (Website Conversion)', 49, '2023-03-30 20:27:28', '2023-04-03', '2023-04-03 14:03:49', '0000-00-00 00:00:00', 0, 29, 1, 1, NULL, 4, '<p>Website conversion: 45%</p>\r\n\r\n<p>Responsive: 0%</p>\r\n\r\n<p>Wordpress conversion: 0%</p>\r\n', '<p>-</p>\r\n', '<p>Continued task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/381\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/381</a></p>\r\n', '', 0),
(373, 'Eva Pharmacy 04 03 23 (Website Conversion) ', 48, '2023-03-31 01:25:17', '2023-04-03', '2023-04-03 09:36:55', '0000-00-00 00:00:00', 0, 1, 1, 0, 'Eva-Pharmacy-Layout.zip', 3, '<p>HTML/CSS: 100%</p>\r\n\r\n<p>Responsive: 0%</p>\r\n\r\n<p>WordPress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/383\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/383</a></p>\r\n', '', 0),
(374, 'Meeting Session 04 03 23 (Other)', 42, '2023-04-02 18:00:23', '2023-04-03', '2023-04-03 09:00:23', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Website conversion</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(375, 'Meeting Session 04 03 23 (Other)', 42, '2023-04-02 18:00:32', '2023-04-03', '2023-04-03 09:00:32', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, '<p>Conversion Review</p>\r\n', '<p>n/a</p>\r\n', '<p>for QA</p>\r\n', '', 0),
(376, 'Meeting Session 04 03 23 (Other)', 42, '2023-04-02 18:14:24', '2023-04-03', '2023-04-03 09:14:24', '0000-00-00 00:00:00', 0, 27, 8, 0, NULL, 3, '<p><strong>Reviewing Guidelines</strong></p>\r\n\r\n<p>Time Start: 09:00 am</p>\r\n\r\n<p>Time End: 10:00 am</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 01:00 pm</p>\r\n\r\n<p>Time End: 02:03 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 02:31 pm</p>\r\n\r\n<p>Time End: 03:00 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 05:29 pm</p>\r\n\r\n<p>Time End: 06:00 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Session with sir John</strong></p>\r\n\r\n<p>Time Start: 10:00 am</p>\r\n\r\n<p>Time End: 10:41 am</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 03:30 pm</p>\r\n\r\n<p>Time End: 03:50 pm</p>\r\n', '', '<p>for review</p>\r\n', '', 0),
(377, 'QA Changes 04 03 23 (Other)', 42, '2023-04-02 18:14:56', '2023-04-03', '2023-04-03 09:14:56', '0000-00-00 00:00:00', 0, 27, 8, 0, NULL, 3, '<p><strong>QA Task</strong></p>\r\n\r\n<p>Time Start: 02:03 pm</p>\r\n\r\n<p>Time End: 02: 31 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 05:16 pm</p>\r\n\r\n<p>Time End: 05: 29 pm</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(380, 'Able Autism Therapy Services 04 03 23 (Dev)', 21, '2023-04-03 00:35:23', '2023-04-03', '2023-04-03 15:35:23', '0000-00-00 00:00:00', 0, 27, 8, 8, NULL, 4, '<p><strong>Email Subject: Able Autism Therapy Services&nbsp;(Website Updates)<br />\r\nTo: info@ableaba.com</strong><br />\r\n<strong>Agent to Queue: anna@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong></p>\r\n\r\n<p>- added Google reviews widget on bottom area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Services</strong></p>\r\n\r\n<p>- updated presention on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/aba-therapy-services\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/aba-therapy-services</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Resources</strong></p>\r\n\r\n<p>- added resource link on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/aba-therapy-resources\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/aba-therapy-resources</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>27</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1RZ3GV3zCBgznxNevNAQCiLiI3eMwgErf?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1RZ3GV3zCBgznxNevNAQCiLiI3eMwgErf?usp=share_link</a></p>\r\n', '<p>for client review</p>\r\n', '<p><span style=\"color:#c0392b\"><span style=\"font-size:22px\"><strong>Notes</strong></span></span><br />\r\n- validated HTML and CSS</p>\r\n\r\n<p>- checked internal links</p>\r\n\r\n<p>-&nbsp;CSS errors out of scope</p>\r\n', 0),
(381, 'Sufficient Enough Home Care Agency LLC 04 04 23 (Website Conversion - Continuation) ', 49, '2023-04-03 03:39:26', '2023-04-04', '2023-04-04 09:05:14', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Website conversion: 100%</p>\r\n\r\n<p>Responsive web design: 0%</p>\r\n\r\n<p>Wordpress conversion: 0%</p>\r\n', '<p>-</p>\r\n', '<p>Continued task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/392\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/392</a></p>\r\n', '', 0),
(382, 'Lavena Home Health 04 04 23 (Website Conversion - Continuation) ', 52, '2023-04-03 03:40:14', '2023-04-04', '2023-04-04 09:05:12', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, '<p>HTML/CSS : 100%</p>\r\n\r\n<p>Responsive : 0%</p>\r\n\r\n<p>Wordpress : 0%</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1LLDYn_Ep4aSA_NYSGQ3pfJ15CyW6aYVD?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1LLDYn_Ep4aSA_NYSGQ3pfJ15CyW6aYVD?usp=sharing</a></p>\r\n', '<p>n/a</p>\r\n', '<p>Continued Task ID : <a href=\"http://web4.proweaverlinks.com/taskbai/task/391\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/391</a></p>\r\n', '', 0),
(383, 'Eva Pharmacy 04 04 23 (Website Conversion - Continuation)', 48, '2023-04-03 03:41:09', '2023-04-04', '2023-04-04 09:05:46', '0000-00-00 00:00:00', 0, 1, 1, 0, NULL, 3, '<p>HTML/CSS: 100%</p>\r\n\r\n<p>Responsive: 100%</p>\r\n\r\n<p>WordPress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID to:</p>\r\n', '', 0),
(384, 'Meeting Session 04 04 23 (Other) ', 42, '2023-04-03 03:41:43', '2023-04-04', '2023-04-04 09:04:53', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Discussion</p>\r\n\r\n<p>Responsiveness of website</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(387, 'Meeting Session 04 04 23 (Other)', 42, '2023-04-03 18:53:07', '2023-04-04', '2023-04-04 09:53:07', '0000-00-00 00:00:00', 0, 27, 2, 0, NULL, 3, '<p><strong>Reviewing Guidelines</strong></p>\r\n\r\n<p>Time Start: 09:00 am</p>\r\n\r\n<p>Time End: 10:00 am</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 04:07 pm</p>\r\n\r\n<p>Time End: 06:00 pm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Session with Sir Gerald</strong></p>\r\n\r\n<p>Time Start: 10:00 am</p>\r\n\r\n<p>Time End: 11:05 am</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(389, 'Check Other Team 04 04 23 (Other)', 42, '2023-04-03 18:53:41', '2023-04-04', '2023-04-04 09:53:41', '0000-00-00 00:00:00', 0, 27, 2, 0, NULL, 3, '<p><strong>Check Other Team</strong></p>\r\n\r\n<p>Time Start: 11:06 am</p>\r\n\r\n<p>Time End: 11:28 am</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(391, 'Lavena Home Health 04 05 23 (Website Conversion - Continuation)', 52, '2023-04-04 17:55:44', '2023-04-05', '2023-04-05 08:55:44', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, '<p>Wordpress Conversion : 45%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued to Task ID : <a href=\"http://web4.proweaverlinks.com/taskbai/task/402\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/402</a></p>\r\n', '', 0),
(392, 'Sufficient Enough Home Care Agency LLC 04 05 23 (Website Conversion - Continuation)', 49, '2023-04-04 17:55:58', '2023-04-05', '2023-04-05 08:55:58', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Website conversion: 100%</p>\r\n\r\n<p>Responsive web: 6%</p>\r\n\r\n<p>WordPress conversion: 16%</p>\r\n', '<p>-</p>\r\n', '<p>Continued task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/401\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/401</a></p>\r\n', '', 0),
(393, 'Meeting Session 04 05 23 (Other)', 42, '2023-04-04 17:57:42', '2023-04-05', '2023-04-05 08:57:42', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Wordpress conversion and activation discussion</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(394, 'Meeting Session 04 05 23 (Other)', 42, '2023-04-04 17:57:58', '2023-04-05', '2023-04-05 08:57:58', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(395, 'Eva Pharmacy 04 05 23 (Website Conversion - Continuation) ', 48, '2023-04-04 18:00:31', '2023-04-05', '2023-04-05 09:00:31', '0000-00-00 00:00:00', 0, 1, 1, 0, NULL, 1, NULL, NULL, NULL, NULL, 0),
(396, 'Meeting Session 04 05 23 (Other) ', 42, '2023-04-04 18:04:44', '2023-04-05', '2023-04-05 09:04:44', '0000-00-00 00:00:00', 0, 27, 1, 21, NULL, 4, '<p><strong>Session with sir Jose</strong></p>\r\n\r\n<p>Time Start: 9:00 am</p>\r\n\r\n<p>Time End: 11:20 am</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(397, 'Check Other Team 04 05 23', 42, '2023-04-04 18:06:04', '2023-04-05', '2023-04-05 09:06:04', '0000-00-00 00:00:00', 0, 27, 21, 21, NULL, 4, '<p><strong>Check Other Team</strong></p>\r\n\r\n<p>Time Start: 11:20 am</p>\r\n\r\n<p>Time End: 11:32 am</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 02:37 pm</p>\r\n\r\n<p>Time End: 02:48 pm</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0);
INSERT INTO `tasks` (`id`, `task_name`, `account_id`, `created_date`, `assigned_date`, `assigned_datetime`, `updated_date`, `instructions_id`, `assigned_id`, `created_id`, `qa_id`, `attachment_file`, `status`, `task_url`, `task_backup`, `next_steps`, `additional_notes`, `progress_status`) VALUES
(400, 'Bellmed Transportation LLC (Dev) 04 05 23', 35, '2023-04-04 23:36:01', '2023-04-05', '2023-04-05 14:36:01', '0000-00-00 00:00:00', 0, 27, 21, 21, 'Bellmed_Transportation_LLC_001.docx', 5, '<p><strong>Email Subject: </strong><strong>Bellmed Transportation LLC</strong><strong>&nbsp;(Website Updates)<br />\r\nTo: bellebella@bellmed.com</strong><br />\r\n<strong>Agent to Queue: elsa@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong></p>\r\n\r\n<p>- added &quot;Long Distance Transports&quot; box on middle area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Services</strong></p>\r\n\r\n<p>-&nbsp;added &quot;Long Distance Transports&quot; box on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/medical-transportation-services\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/medical-transportation-services</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Long Distance Transports</strong></p>\r\n\r\n<p>- created page and added text contents on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/medical-transportation-services/long-distance-transports\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/medical-transportation-services/long-distance-transports</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Meat Our Staff</strong></p>\r\n\r\n<p>-&nbsp;modified contents on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/medical-transportation-meet-our-staff\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/medical-transportation-meet-our-staff</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>27</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/12RgKmYDNLjqSo79UTWdpuDs6fPy1fmgt?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/12RgKmYDNLjqSo79UTWdpuDs6fPy1fmgt?usp=share_link</a></p>\r\n', '<p>for client review</p>\r\n', '<p><span style=\"font-size:22px\"><span style=\"color:#c0392b\"><strong>NOTES</strong></span></span></p>\r\n\r\n<p>- validated HTML and CSS</p>\r\n\r\n<p>- checked internal links</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#c0392b\"><strong>QA NOTES</strong></span></span></p>\r\n\r\n<p>- ge fix nlang nako ang company name nga naa sa content area ng &quot;Long Distance Transports&quot; nga page ky ang nabutang sa CW mali man</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><span style=\"font-size:22px\"><span style=\"color:#c0392b\"><strong>FOR OTHER TEAM</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For CW: Bellmed Transportation LLC (Dev) 04 05 23<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID:&nbsp;<a href=\"http://web4.proweaverlinks.com/taskbai/task/400\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/400</a><br />\r\nWebsite URL:&nbsp;<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bellmedll489/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\nPlease add Long Distance Transports service. Add it on the homepage as well.</em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team, please mi ani pg create ng content for homepage and sa iyang own page. Thank you.</strong></p>\r\n', 0),
(401, 'Sufficient Enough Home Care Agency LLC 04 11 23 (Website Conversion - Continuation) ', 49, '2023-04-10 18:14:49', '2023-04-11', '2023-04-11 09:14:49', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Website conversion: 99%</p>\r\n\r\n<p>Responsive web: 90%</p>\r\n\r\n<p>WordPress conversion: 99%</p>\r\n', '<p>-</p>\r\n', '<p>Continued task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/407\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/407</a></p>\r\n', '', 0),
(402, 'Lavena Home Health 04 11 23 (Website Conversion - Continuation) ', 52, '2023-04-10 18:15:13', '2023-04-11', '2023-04-11 09:15:13', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, '<p>HTML/CSS : 100%</p>\r\n\r\n<p>Responsive Conversion : 80%</p>\r\n\r\n<p>Wordpress Conversion : 80%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID : <a href=\"http://web4.proweaverlinks.com/taskbai/task/408\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/408</a></p>\r\n', '', 0),
(403, 'Able Autism Therapy Services 04 11 23 (Dev)', 21, '2023-04-10 20:17:02', '2023-04-11', '2023-04-11 11:17:02', '0000-00-00 00:00:00', 0, 27, 16, 16, NULL, 5, '<p><strong>Email Subject: Able Autism Therapy Services&nbsp;(Website Updates)<br />\r\nTo:&nbsp;info@ableaba.com</strong><br />\r\n<strong>Agent to Queue: anna@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong></p>\r\n\r\n<p>- updated company logo on header area<br />\r\n- updated company name on all areas</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>27</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1UiYSvgHIgxnJElj0tRCuFynz9EpP1QNG?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1UiYSvgHIgxnJElj0tRCuFynz9EpP1QNG?usp=share_link</a></p>\r\n', '<p>for client review</p>\r\n', '<p><span style=\"color:#c0392b\"><span style=\"font-size:22px\"><strong>NOTES</strong></span></span></p>\r\n\r\n<p>- validated HTML and CSS</p>\r\n\r\n<p>- checked internal links</p>\r\n\r\n<p>-&nbsp;CSS errors out of scope</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><span style=\"color:#c0392b\"><span style=\"font-size:22px\"><strong>FOR OTHER TEAM</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For Design: Able Autism Therapy Services 04 11 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/403\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/403</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a><br />\r\n&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\nPlease update the company name to ABLE AUTISM THERAPY SERVICES INC</em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team, please mi ani og update sa company logo. Thank you.</strong></p>\r\n', 0),
(404, 'Check Other Team 04 11 23', 42, '2023-04-10 20:20:09', '2023-04-11', '2023-04-11 11:20:09', '0000-00-00 00:00:00', 0, 27, 16, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(405, 'Meeting Session 04 12 23 (Other)', 42, '2023-04-11 03:49:23', '2023-04-12', '2023-04-12 08:49:33', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Website file upload session</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(406, 'Meeting Session 04 12 23 (Other)', 42, '2023-04-11 03:49:24', '2023-04-12', '2023-04-12 08:49:34', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, '<p>Website File Upload Session</p>\r\n', '<p>n/a</p>\r\n', '<p>for review</p>\r\n', '', 0),
(407, 'Sufficient Enough Home Care Agency LLC 04 12 23 (Website Conversion - Continuation) ', 49, '2023-04-11 03:50:31', '2023-04-12', '2023-04-12 08:50:00', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>HTML/CSS: 100%</p>\r\n\r\n<p>Responsive: 100%</p>\r\n\r\n<p>WordPress conversion &amp; activation: 100%</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Website Link:<br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WordPress Login Link:<br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca/authenticationlogin.php</a><br />\r\nUsername: sufficientenoughhca<br />\r\nPassword: SufficientEnoughhca&amp;*2023</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(408, 'Lavena Home Health 04 12 23 (Website Conversion - Continuation)', 52, '2023-04-11 03:51:21', '2023-04-12', '2023-04-12 08:50:00', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, '<div class=\"card-body\">\r\n<p>HTML/CSS: 100%</p>\r\n\r\n<p>Responsive: 100%</p>\r\n\r\n<p>WordPress: 100%</p>\r\n</div>\r\n', '<p>n/a</p>\r\n', '<p>for review</p>\r\n', '<p>Website Link:<br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/johnrey/lavenahomehealth/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/johnrey/lavenahomehealth/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WordPress Login Link:<br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/johnrey/lavenahomehealth/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/johnrey/lavenahomehealth/authenticationlogin.php</a><br />\r\nUsername: lavenahomehealth<br />\r\nPassword: LavenaHomeHealth!@2023</p>\r\n', 0),
(409, 'Eva Pharmacy 04 12 23 (Website Conversion - Continuation)', 48, '2023-04-11 03:55:07', '2023-04-12', '2023-04-12 08:50:28', '0000-00-00 00:00:00', 0, 1, 1, 0, NULL, 3, '<p>HTML/CSS: 100%</p>\r\n\r\n<p>Responsive: 100%</p>\r\n\r\n<p>WordPress: 100%</p>\r\n', '<p>n/a</p>\r\n', '<p>for review</p>\r\n', '<p><strong>Website Link:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>WordPress Login Link:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy/authenticationlogin.php</a><br />\r\nUsername: <strong>evapharmacy</strong><br />\r\nPassword: <strong>EvaPharmacy!@2023</strong></p>\r\n', 0),
(410, 'Meeting Session 04 12 23 (Other)', 42, '2023-04-11 18:33:41', '2023-04-12', '2023-04-12 09:33:41', '0000-00-00 00:00:00', 0, 27, 20, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(411, 'Check Other Team 04 12 23 (Other)', 42, '2023-04-11 20:16:18', '2023-04-12', '2023-04-12 11:16:18', '0000-00-00 00:00:00', 0, 27, 20, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(412, 'Invise 04 12 23 (Maintenance)', 32, '2023-04-11 22:06:54', '2023-04-12', '2023-04-12 13:06:54', '0000-00-00 00:00:00', 0, 27, 20, 20, 'CW_FAQ2.docx', 4, '<p><strong>Email Subject: Invise&nbsp;(Website Updates)<br />\r\nTo:&nbsp;marcspector@invise.com</strong><br />\r\n<strong>Agent to Queue: amanda@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong></p>\r\n\r\n<p>- added Google translator on header area</p>\r\n\r\n<p>- added Visitor Counter on footer area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong></p>\r\n\r\n<p>- added pop-up box</p>\r\n\r\n<p>- updated the position of navigation and banner</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FAQ</strong></p>\r\n\r\n<p>- created page</p>\r\n\r\n<p>- added text contents on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/faq\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/faq</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>27</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1GQCETRBmm9nq9WWs_qUbPi9uB8uR_EOx?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1GQCETRBmm9nq9WWs_qUbPi9uB8uR_EOx?usp=share_link</a></p>\r\n', '<p>for client review</p>\r\n', '<p><strong><span style=\"font-size:22px\"><span style=\"color:#c0392b\">NOTES</span></span></strong></p>\r\n\r\n<p>- validated HTML and CSS</p>\r\n\r\n<p>- checked internal links</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><span style=\"color:#c0392b\"><span style=\"font-size:22px\"><strong>FOR OTHER TEAM</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For CW: Invise 04 12 23 (Maintenance)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID:&nbsp;<a href=\"http://web4.proweaverlinks.com/taskbai/task/412\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/412</a><br />\r\nWebsite URL:&nbsp;<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a><br />\r\n&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\nplease create FAQ page and add contents</em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team, please mi ani og create ng content for faq. Thank you.</strong></p>\r\n', 0),
(413, 'Meeting Session 04 13 23 (Other)', 42, '2023-04-12 17:47:58', '2023-04-13', '2023-04-13 08:47:58', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, '<p>3D Content Posting Discussion</p>\r\n', '<p>N/A</p>\r\n', '<p>for review</p>\r\n', '', 0),
(414, 'Meeting Session 04 13 23 (Other)', 42, '2023-04-12 17:47:59', '2023-04-13', '2023-04-13 08:47:59', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Content posting discussion</p>\r\n', '<p>N/A</p>\r\n', '<p>For review</p>\r\n', '', 0),
(415, 'Sufficient Enough Home Care Agency LLC 04 13 23 (3D - Content Posting) ', 49, '2023-04-12 17:51:33', '2023-04-13', '2023-04-13 09:33:12', '0000-00-00 00:00:00', 0, 29, 1, 0, 'FINAL_Sufficient_Enough_Home_Care_Agency_LLC_3D_CW29_April-22-20211.doc', 3, '<p>Content Posting: 46%</p>\r\n', '<p>N/A</p>\r\n', '<p>Continued task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/420\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/420</a></p>\r\n', '', 0),
(416, 'Lavena Home Health 04 13 23 (3D - Content Posting)', 52, '2023-04-12 17:52:36', '2023-04-13', '2023-04-13 09:33:18', '0000-00-00 00:00:00', 0, 30, 1, 0, 'FINAL-Lavena_Home_Health_3D_CW17_May_10,_2019(1)1.doc', 3, '<p>3D Content Posting : 70%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID : <a href=\"http://web4.proweaverlinks.com/taskbai/task/421\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/421</a></p>\r\n', '', 0),
(417, 'Eva Pharmacy 04 13 23 (3D Task - Content Posting) ', 48, '2023-04-12 17:54:10', '2023-04-13', '2023-04-13 08:54:10', '0000-00-00 00:00:00', 0, 1, 1, 0, 'FINAL_Eva_Pharmacy_3D_CW43_March_22_20221.odt', 3, '<p><strong>All Pages</strong><br />\r\n- added title tag<br />\r\n- added keywords<br />\r\n- added description<br />\r\n- added thumbnail on content area<br />\r\n- added text contents<br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/bed/evapharmacy</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VALIDATED HTML/CSS</strong></p>\r\n', '<p>n/a</p>\r\n', '<p>for review</p>\r\n', '', 0),
(418, 'Meeting Session 04 14 23 (Other) ', 42, '2023-04-13 18:02:18', '2023-04-14', '2023-04-14 09:02:18', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Meeting session with sir Gerald</p>\r\n\r\n<p>Time Start: 10:15 AM</p>\r\n\r\n<p>Time End: 12:00 PM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 1:00 PM</p>\r\n\r\n<p>Time End: 3:00 PM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 3:30 PM</p>\r\n\r\n<p>Time End: 4:00 PM</p>\r\n', '<p>N/A</p>\r\n', '<p>For review</p>\r\n', '', 0),
(419, 'Meeting Session 04 14 23 (Other) ', 42, '2023-04-13 18:02:29', '2023-04-14', '2023-04-14 09:02:29', '0000-00-00 00:00:00', 0, 30, 1, 0, NULL, 3, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">&nbsp;Meeting Session<br />\r\nTime Start: 10:15AM</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Time End: 12:00PM</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Time Start: 12:00PM</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Time End: 03:00PM</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Time Start: 03:00PM</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Time End: 03:58PM</span></span></span></p>\r\n', '<p>n/a</p>\r\n', '<p>for review</p>\r\n', '', 0),
(420, 'Sufficient Enough Home Care Agency LLC 04 14 23 (3D - Continuation)', 49, '2023-04-13 18:06:25', '2023-04-14', '2023-04-14 09:06:25', '0000-00-00 00:00:00', 0, 29, 1, 1, NULL, 5, '<p>Content Posting: 100%</p>\r\n\r\n<p>&nbsp;\r\n<div class=\"card-body\">\r\n<p><strong>All Pages</strong><br />\r\n- added title tag<br />\r\n- added keywords<br />\r\n- added description<br />\r\n- added thumbnail on content area<br />\r\n- added text contents<br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>VALIDATED HTML/CSS</strong></p>\r\n</div>\r\n</p>\r\n', '<p>N/A</p>\r\n', '<p>For review</p>\r\n', '<p>Website Link: <a href=\"https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca/</a></p>\r\n', 0),
(421, 'Lavena Home Health 04 14 23 (3D - Continuation)', 52, '2023-04-13 18:07:06', '2023-04-14', '2023-04-14 09:07:06', '0000-00-00 00:00:00', 0, 30, 1, 1, NULL, 5, '<p>3D Conversion : 100%</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/johnrey/lavenahomehealth/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/johnrey/lavenahomehealth/</a></p>\r\n', '<p>n/a</p>\r\n', '<p>for review</p>\r\n', '<p>Website Link:<br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/johnrey/lavenahomehealth/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/johnrey/lavenahomehealth/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WordPress Login Link:<br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/johnrey/lavenahomehealth/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/johnrey/lavenahomehealth/authenticationlogin.php</a><br />\r\nuser:lavenahomehealth&nbsp; /&nbsp;&nbsp; sample@gmail.com<br />\r\npass:LavenaHomeHealth!@2023</p>\r\n', 0),
(422, 'QA Changes 04 14 23 (Other) ', 42, '2023-04-13 18:18:19', '2023-04-14', '2023-04-14 09:18:19', '0000-00-00 00:00:00', 0, 29, 1, 0, NULL, 3, '<p>Sufficient Enough Home Care Agency LLC 04 14 23 (3D - Continuation)</p>\r\n\r\n<p>http://web4.proweaverlinks.com/taskbai/task/420<br />\r\nTime start: 6:02 PM<br />\r\nTime end: 6:11 PM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/renzo/sufficientenoughhca/</a></p>\r\n', '<p>N/A</p>\r\n', '<p>For review</p>\r\n', '', 0),
(424, 'Invise 04 14 23 (Dev)', 32, '2023-04-13 18:54:37', '2023-04-14', '2023-04-14 09:54:37', '0000-00-00 00:00:00', 0, 2, 2, 0, 'Invise_SAMPLE_DOC.docx', 3, '<p><strong>Email Subject: Invise (Website Update)<br />\r\nTo: marcspector@invise.com<br />\r\nAgent to Queue: amanda@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Home<br />\r\n- updated &quot;Send Us Your Email&quot; section on bottom area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are still working on the rest of your instructions. We will send you updates once done.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>800</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1JvdglV6IJpBZZW3tFsd-UHCLjZRzLO42\">https://drive.google.com/drive/folders/1JvdglV6IJpBZZW3tFsd-UHCLjZRzLO42</a></p>\r\n', '<p><strong>Unimplemented instructions: </strong></p>\r\n\r\n<p><em>- Please set up my Facebook and Twitter pages . Also I need help in creating a YT channel. for now please add it on the website.</em></p>\r\n\r\n<p><strong>Note: kani is na send na nako sa SMM, ang kuwang nalang ani is ang pag add nalang ug YT icon sa header</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>continued task to: <a href=\"http://web4.proweaverlinks.com/taskbai/task/438\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/438</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- validated HTML and CSS</span></span></span></span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- checked internal links</span></span></span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><span style=\"font-size:22px\"><strong>QA TASK</strong></span></span></p>\r\n\r\n<p>- nadugay ko ani kay naa koi gi fix error</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>NOTES</strong></span></span></p>\r\n\r\n<p>- wala nalang ko nagpa design, gi one line nalang nako ang form</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>FOR OTHER TEAM</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For FDG: Invise 04 14 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/424\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/424</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Instead of a Send Us a Message form on the homepage, replace it with a newsletter form so that we can also directly update customers directly on their email. They could just input their full name and then their email address</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n- Hi team, please mi activate sa newsletter form sa Homepage kay gi change na namo ang form diha. Thank you.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For CW: Invise 04 14 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/424\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/424</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Can we please remove the contact us option on the website via onlineform? I do not like that I can not respond to them and I prefer they call the office with questions instead of going through the onlineforms and not receiving feedback from them.<br />\r\n- Instead of a Send Us a Message form on the homepage, replace it with a newsletter form so that we can also directly update customers directly on their email. They could just input their full name and then their email address</em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\n- Hi team, pa change mi sa paragraph sa left side sa form since ma change nana siya from a contact form into a newsletter form. Thank you</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>For SMM: Invise 04 14 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/424\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/424</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Please set up my Facebook and Twitter pages. Also I need help in creating a YT channel. for now please add it on the website.</em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\n- Hi team, please mi aning concern ni client.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>For Design: Invise 04 14 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/424\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/424</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Lastly, I want my website to look different. I want it to be something like this<br />\r\n<a href=\"https://www.clickconsulting.us/home\" target=\"_blank\">https://www.clickconsulting.us/home</a></em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\n- Hi team, please mi create layout kay gnahan magpa relayout ang client. Nag pasa nasad mi ani ug webcon para sila mu convert.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>For Webcon: Invise 04 14 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/424\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/424</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Lastly, I want my website to look different. I want it to be something like this<br />\r\n<a href=\"https://www.clickconsulting.us/home\" target=\"_blank\">https://www.clickconsulting.us/home</a></em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\n- Hi team, please mi&nbsp; convert sa new layout nga i provide sa design team since magpa relayout ang client. Thank you.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>FOR TICKET </strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For Clarification: Invise<br />\r\nAgent: amanda@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/424\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/424</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instructions:<br />\r\n1. I like the map found on this website. But instead of communities, please make it become our means of reaching out to businesses outside of US<br />\r\n<a href=\"https://www.worldjewishcongress.org/en/about/communities\" target=\"_blank\">https://www.worldjewishcongress.org/en/about/communities</a></em></p>\r\n\r\n<p><em>2.&nbsp; Lastly, I want my website to look different. I want it to be something like this<br />\r\nhttps://www.clickconsulting.us/home<br />\r\nHow long would it take to change the overall layout of the site? Please give me a feedback before Monday prior to the accreditation that will happen next week.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern:<br />\r\n1. Hi miss, regarding ani nga instruction kay naay ganahan ipa butang nga map ang client sa site similar sa reference site sa babaw. Pa clarify lang mi kung unsa ang flow or specs ani kay wala gi specify, Then also, naay possiblity nga mag need ni ug payment kay special project na ni siya.</strong></p>\r\n\r\n<p><strong>2. Also miss, inform lang mi nga gipasa na ni namo sa Webcon and Design team para mapa create ug new layout but walay definite nga time kanus a ni mahuman. Thank you.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0),
(425, 'Check Other Team 04 14 23 (Other)', 42, '2023-04-13 19:25:28', '2023-04-14', '2023-04-14 10:25:28', '0000-00-00 00:00:00', 0, 2, 2, 0, NULL, 1, NULL, NULL, NULL, NULL, 0),
(426, 'Research 04 14 23 (Other)', 42, '2023-04-14 00:54:21', '2023-04-14', '2023-04-14 15:54:21', '0000-00-00 00:00:00', 0, 30, 2, 0, NULL, 0, NULL, NULL, NULL, NULL, 0),
(427, 'Research 04 14 23 (Other)', 42, '2023-04-14 00:54:29', '2023-04-14', '2023-04-14 15:54:29', '0000-00-00 00:00:00', 0, 29, 2, 0, NULL, 3, '<p>Research: Training Guidelines &gt; Other Areas of the Orchestra (Additional Info, and Next Step)<br />\r\nTime start: 5:51 PM<br />\r\nTime end: 6:01 PM</p>\r\n', '<p>N/A</p>\r\n', '<p>For review</p>\r\n', '', 0),
(428, 'Roseway Transport LLC 04 17 23 (Dev)', 33, '2023-04-16 18:43:23', '2023-04-17', '2023-04-17 09:43:23', '0000-00-00 00:00:00', 0, 30, 2, 2, NULL, 5, '<div class=\"card-body\">\r\n<p><strong>Email Subject: Roseway Transport LLC</strong> <strong>(Website Update)<br />\r\nTo: admin@rosewaytransport.com<br />\r\nAgent to Queue: vera@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>All Pages</p>\r\n\r\n<p>- added Pinterest icon on header area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Services<br />\r\n- updated &quot;Image&quot; section on banner area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>800</p>\r\n</div>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1G_XKPyG_lD-IwGK9hbSunYiLLS1R2xAP?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1G_XKPyG_lD-IwGK9hbSunYiLLS1R2xAP?usp=share_link</a></p>\r\n', '<p>for client review</p>\r\n', '<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>FOR OTHER TEAM</strong></span></span><br />\r\n&nbsp;</p>\r\n\r\n<p>For SMM : Roseway Transport LLC 04 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/428\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/428</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):</em><br />\r\n-<em> Please set up a pinterest account for me.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n- Hi SMM team, please mi setup og pinterest account para sa client . Thank you.</strong><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>For SEO : Roseway Transport LLC 04 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/428\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/428</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):</em><br />\r\n<em>- Sooner when I launch my website, I want it to rank higher on Google. This would help greatly on my business.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n- Hi SEO team, please mi aning concern ni client.</strong><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0),
(429, 'Karma Healthcare Staffing Consultants  04 17 23 (Dev)', 25, '2023-04-16 18:45:48', '2023-04-17', '2023-04-17 09:45:48', '0000-00-00 00:00:00', 0, 29, 2, 0, NULL, 3, '<p><strong>Email Subject: Karma Healthcare Staffing Consultants (Website Update)<br />\r\nTo: isaac@karmahealthcare.com<br />\r\nAgent to Queue: amanda@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>All Pages<br />\r\n- updated images on almost every webpage<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are still working on the rest of your instructions. We will send you updates once done.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>[control number here]</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1wStWrw3PdJ0TNeIX2EoqHKjWGCa1gBFt?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1wStWrw3PdJ0TNeIX2EoqHKjWGCa1gBFt?usp=share_link</a></p>\r\n', '<p>For client review</p>\r\n', '<p>- Validated HTML/CSS</p>\r\n\r\n<p>- Checked internatl links</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><span style=\"font-size:24px\"><span style=\"color:#e74c3c\">FOR OTHER TEAM</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For Design: Karma Healthcare Staffing Consultants 04 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/429\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/429</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Professional Services - Please create a nice design for this page. I am planning on adding several services for this page on the content area. For now, just design something with dummy texts. Thank you.<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-professional-services\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-professional-services</a></em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team, please mi layout og design para sa professional services na page. Thank you.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>For FDG: Karma Healthcare Staffing Consultants 04 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/429\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/429</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- For Job Seekers pls add a signature field for this form<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-for-job-seekers\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-for-job-seekers</a></em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\n- Hi team, please mi add og signature field sa form. Thank you.</strong></p>\r\n', 0),
(430, 'Meeting Session 04 17 23 (Other)', 42, '2023-04-16 18:51:39', '2023-04-17', '2023-04-17 09:51:39', '0000-00-00 00:00:00', 0, 30, 2, 0, NULL, 3, '<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">HTML/CSS Validation &amp; Brocken Line Checker<br />\r\nTime Start: 02:00 PM</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Time End:&nbsp; 03:00PM</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Modification Process Guideliness Review<br />\r\nTime Start: 03:30 PM</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Time End:&nbsp; 03:46 PM</span></span></span></p>\r\n', '<p>-</p>\r\n', '<p>- for review</p>\r\n', '<p>-</p>\r\n', 0),
(431, 'Meeting Session 04 17 23 (Other)', 42, '2023-04-16 18:51:44', '2023-04-17', '2023-04-17 09:51:44', '0000-00-00 00:00:00', 0, 29, 2, 0, NULL, 3, '<p>Image sizing in Xara</p>\r\n\r\n<p>Next step and additional info area discussion</p>\r\n', '<p>N/A</p>\r\n', '<p>For review</p>\r\n', '', 0),
(432, 'QA Changes 04 17 23 (Other) ', 42, '2023-04-16 18:52:02', '2023-04-17', '2023-04-17 09:52:02', '0000-00-00 00:00:00', 0, 30, 2, 0, NULL, 0, NULL, NULL, NULL, NULL, 0),
(433, 'QA Changes 04 17 23 (Other) ', 42, '2023-04-16 18:52:06', '2023-04-17', '2023-04-17 09:52:06', '0000-00-00 00:00:00', 0, 29, 2, 0, NULL, 0, NULL, NULL, NULL, NULL, 0),
(434, 'Check Other Team 04 17 23 (Other)', 42, '2023-04-16 18:52:32', '2023-04-17', '2023-04-17 09:52:32', '0000-00-00 00:00:00', 0, 29, 2, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(435, 'Check Other Team 04 17 23 (Other)', 42, '2023-04-16 18:52:36', '2023-04-17', '2023-04-17 09:52:36', '0000-00-00 00:00:00', 0, 30, 2, 0, NULL, 3, '<p>Checking Other Team Task for Transport LLC</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/428\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/428</a><br />\r\nTime Start: 09:56 AM<br />\r\nTime End:&nbsp; 10:33 AM</p>\r\n\r\n<p><br />\r\nChecking Other Team Task for Boler Clinic<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/439\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/439</a><br />\r\nTime Start: 03:46 PM<br />\r\nTime End:&nbsp; 04:40 PM</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(436, 'QA Changes 04 17 23 (Other) ', 42, '2023-04-16 22:16:23', '2023-04-17', '2023-04-17 13:16:23', '0000-00-00 00:00:00', 0, 16, 21, 0, NULL, 0, NULL, NULL, NULL, NULL, 0),
(437, 'Align Medical Staffing (Dev) 04 17 23', 70, '2023-04-16 22:26:23', '2023-04-17', '2023-04-17 13:26:23', '0000-00-00 00:00:00', 0, 16, 21, 0, NULL, 0, NULL, NULL, NULL, NULL, 0),
(438, 'Invise 04 17 23 (Dev)', 32, '2023-04-16 23:36:26', '2023-04-17', '2023-04-17 14:36:26', '0000-00-00 00:00:00', 0, 2, 2, 0, NULL, 0, '<p><strong>Email Subject: Invise (Website Update)<br />\r\nTo: marcspector@invise.com<br />\r\nAgent to Queue: amanda@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>All Pages<br />\r\n- added Youtube icon on header area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>800</p>\r\n', '<p><a href=\"https://drive.google.com/drive/u/4/folders/1zjDZrqqRhmNKFTF5lTZBYD8gsQ4x0mwM\" target=\"_blank\">https://drive.google.com/drive/u/4/folders/1zjDZrqqRhmNKFTF5lTZBYD8gsQ4x0mwM</a></p>\r\n', '<p>for client review</p>\r\n', '<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- validated HTML and CSS</span></span></span></span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- checked internal links</span></span></span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 0);
INSERT INTO `tasks` (`id`, `task_name`, `account_id`, `created_date`, `assigned_date`, `assigned_datetime`, `updated_date`, `instructions_id`, `assigned_id`, `created_id`, `qa_id`, `attachment_file`, `status`, `task_url`, `task_backup`, `next_steps`, `additional_notes`, `progress_status`) VALUES
(439, 'Boler Clinic 04 17 23 (Dev)', 26, '2023-04-17 00:38:35', '2023-04-17', '2023-04-17 15:38:35', '0000-00-00 00:00:00', 0, 30, 2, 0, 'ourstaff2.zip', 1, '<p>-</p>\r\n', '<p>-</p>\r\n', '<p><strong>Unimplemented instructions: </strong></p>\r\n\r\n<p><em>- Please post this announcement both on the website and on our social media sites</em></p>\r\n\r\n<p><em>COVID-!9 Vaccination Run</em></p>\r\n\r\n<p><em>Please be informed of our upcoming Vaccination Run which aims to vaccinate 100k individuals while engaging in an activity. Please wear casual attire with COVID-19 Virus print on it, on any colors.</em></p>\r\n\r\n<p><em>Where: 28889 Pkwy Lane Menifee, CA 92584 USA</em></p>\r\n\r\n<p><em>When: April 16, 2022</em></p>\r\n\r\n<p><em>Bring your own lunchbox</em><br />\r\n<strong>Note:</strong><br />\r\n<strong>1. na send na nako sa SMM<br />\r\n2. nabutangan na nako og text sa Intro Page &quot;Announcment&quot; ang kuwang nalang ani kay pag design</strong><br />\r\n<br />\r\n<em>- Contact form, please add ways of contacting us field.</em><br />\r\n<strong>Note:<br />\r\nna send na nako sa FDG</strong><br />\r\n<br />\r\n<em>- Please add these staff on my website (they are members of my team that deserve recognition):</em></p>\r\n\r\n<p><strong>Note: </strong></p>\r\n\r\n<p><strong>Wala pako naka add sa staff&nbsp; sa website nila.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>continued task to:</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>FOR OTHER TEAM</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For SMM: Boler Clinic 04 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/439\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/439</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Please post this announcement both on the website and on our social media sites</em></p>\r\n\r\n<p><em>COVID-!9 Vaccination Run</em></p>\r\n\r\n<p><em>Please be informed of our upcoming Vaccination Run which aims to vaccinate 100k individuals while engaging in an activity. Please wear casual attire with COVID-19 Virus print on it, on any colors.</em></p>\r\n\r\n<p><em>Where: 28889 Pkwy Lane Menifee, CA 92584 USA</em></p>\r\n\r\n<p><em>When: April 16, 2022</em></p>\r\n\r\n<p><em>Bring your own lunchbox</em></p>\r\n\r\n<p>&nbsp;<br />\r\n<strong>Concern(s):<br />\r\n- Hi team, please mi aning concern ni client, Thank you.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><br />\r\n&nbsp;<br />\r\nFor FDG: Boler Clinic 04 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/439\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/439</a><br />\r\nWebsite URL: <a href=\"http://web4.proweaverlinks.com/taskbai/task/439\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Contact form, please add ways of contacting us field.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n- Hi team, please mi aning concern ni client, Thank you.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><br />\r\nFor CW: Boler Clinic 04 17 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/439\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/439</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Please post this announcement both on the website and on our social media sites</em></p>\r\n\r\n<p><em>COVID-!9 Vaccination Run</em></p>\r\n\r\n<p><em>Please be informed of our upcoming Vaccination Run which aims to vaccinate 100k individuals while engaging in an activity. Please wear casual attire with COVID-19 Virus print on it, on any colors.</em></p>\r\n\r\n<p><em>Where: 28889 Pkwy Lane Menifee, CA 92584 USA</em></p>\r\n\r\n<p><em>When: April 16, 2022</em></p>\r\n\r\n<p><em>Bring your own lunchbox</em></p>\r\n\r\n<p>&nbsp;<br />\r\n<strong>Concern(s):<br />\r\n- Hi team, please mi proofread sa announcement ni client, Thank you.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 0),
(443, 'Research 04 18 23 (Other)', 42, '2023-04-17 18:09:42', '2023-04-18', '2023-04-18 09:09:42', '0000-00-00 00:00:00', 0, 29, 2, 0, NULL, 3, '<p><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\">Resarched tasks for other team guidelines</span></span></span></p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(444, 'QA Changes 04 18 23 (Other)', 42, '2023-04-17 18:10:14', '2023-04-18', '2023-04-18 09:10:14', '0000-00-00 00:00:00', 0, 29, 2, 0, NULL, 3, '<p>Trusty Home Health Care LLC 04 18 23 (Dev)<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/451\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/451</a><br />\r\nStart Time: 4:47 PM<br />\r\nStart End: 4:59 PM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Start Time: 5:06 PM<br />\r\nStart End: 6:13 PM</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(445, 'QA Changes 04 18 23 (Other)', 42, '2023-04-17 18:10:20', '2023-04-18', '2023-04-18 09:10:20', '0000-00-00 00:00:00', 0, 30, 2, 0, NULL, 3, '<p>Karma Healthcare Staffing Consultants QA<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/450\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/450</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start : 4:24 pm</p>\r\n\r\n<p>Time Ended : 6:06 pm</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(446, 'Meeting Session 04 18 23 (Other)', 42, '2023-04-17 18:10:36', '2023-04-18', '2023-04-18 09:10:36', '0000-00-00 00:00:00', 0, 29, 2, 0, NULL, 3, '<p>Ways to install WordPress plugins and third-party webapps integration to website by sir Ervin</p>\r\n', '<p>N/A</p>\r\n', '<p>For review</p>\r\n', '', 0),
(447, 'Meeting Session 04 18 23 (Other)', 42, '2023-04-17 18:10:40', '2023-04-18', '2023-04-18 09:10:40', '0000-00-00 00:00:00', 0, 30, 2, 0, NULL, 3, '<p>Wordpress Plugins Discussion by John Ervin<br />\r\nTime Start : 10:02 AM<br />\r\nTime end : 11:13 AM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Review Ticket Guidelines<br />\r\nTime Start : 04:03 PM<br />\r\nTime end : 04:24 PM</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(448, 'Check Other Team 04 18 23 (Other)', 42, '2023-04-17 18:11:24', '2023-04-18', '2023-04-18 09:11:24', '0000-00-00 00:00:00', 0, 29, 2, 0, NULL, 3, '<p>Wala ray mail for other teams</p>\r\n', '', '', '', 0),
(449, 'Check Other Team 04 18 23 (Other)', 42, '2023-04-17 18:11:28', '2023-04-18', '2023-04-18 09:11:28', '0000-00-00 00:00:00', 0, 30, 2, 0, NULL, 0, NULL, NULL, NULL, NULL, 0),
(450, 'Karma Healthcare Staffing Consultants  04 18 23 (Dev)', 25, '2023-04-17 18:28:32', '2023-04-18', '2023-04-18 09:28:32', '0000-00-00 00:00:00', 0, 30, 8, 8, 'karmagallery3.zip', 5, '<p><strong>Email Subject: Karma Healthcare Staffing Consultants</strong> <strong> (Website Update)<br />\r\nTo: isaac@karmahealthcare.com<br />\r\nAgent to Queue: amanda@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>All Pages<br />\r\n- added ADA compliant<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Home</p>\r\n\r\n<p>- added Google review on bottom area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gallery</p>\r\n\r\n<p>- created page<br />\r\n- added photo album on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-gallery\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-gallery</a></p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>30</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1x-4Q9Ktdk5l4xLTcPd-HZkvcPaaO-t8G?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1x-4Q9Ktdk5l4xLTcPd-HZkvcPaaO-t8G?usp=share_link</a></p>\r\n', '<p>for client review</p>\r\n', '<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- validated HTML and CSS</span></span></span></span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- checked internal links</span></span></span></span></strong><br />\r\n&nbsp;</p>\r\n\r\n<p>Google Reviews Login Details:</p>\r\n\r\n<p><a href=\"https://apps.elfsight.com/panel/applications/google-reviews/\" target=\"_blank\">https://apps.elfsight.com/panel/applications/google-reviews/</a></p>\r\n\r\n<p>Username: trainingproweaver@gmail.com<br />\r\nPassword: AX4t12%Q?v#w*C1</p>\r\n', 0),
(451, 'Trusty Home Health Care LLC 04 18 23 (Dev)', 28, '2023-04-17 20:19:48', '2023-04-18', '2023-04-18 11:19:48', '0000-00-00 00:00:00', 0, 29, 8, 8, 'trustyhhc.zip', 5, '<p><strong>Email Subject: Trusty Home Health Care LLC (Website Updates)<br />\r\nTo: hairypotter@trustyhomecare.com<br />\r\nAgent to Queue: eve@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>All Pages<br />\r\n- added Google Translate widget on header area<br />\r\n- added submenu on main navigation area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>About Us<br />\r\n- updated banner image on banner area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/home-care-about-us\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/home-care-about-us</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gallery<br />\r\n- created gallery page and added image slider on content area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/home-care-about-us/gallery\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/home-care-about-us/gallery</a></p>\r\n\r\n<p>&nbsp;\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>29</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/107sd3lhr7zQ7lO2_-y72hc9ikdPITPKF?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/107sd3lhr7zQ7lO2_-y72hc9ikdPITPKF?usp=share_link</a></p>\r\n', '<p>for client review</p>\r\n', '<p><span style=\"font-size:18px\"><span style=\"background-color:#ecf0f1\">- Validated HTML/CSS</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"background-color:#ecf0f1\">- Checked internal links</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#f39c12\"><strong><span style=\"font-size:18px\">QA TASK</span></strong></span></p>\r\n\r\n<p>- Updated the following links in the <a href=\"http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/home-care-resources\" target=\"_blank\">Resources page</a></p>\r\n\r\n<p>Resource name: National Association for Home Care and Hospice<br />\r\nOld link: www.nahc.org<br />\r\nNew link: <a href=\"https://www.nahc.org/\" target=\"_blank\">https://www.nahc.org/</a></p>\r\n\r\n<p><br />\r\nResource name: Home Care Association of America<br />\r\nOld link: www.hcaoa.org<br />\r\nNew link: <a href=\"https://www.hcaoa.org/\" target=\"_blank\">https://www.hcaoa.org/</a></p>\r\n\r\n<p><br />\r\nResource name: American Health Care Association<br />\r\nOld link: www.ahcancal.org<br />\r\nNew link: <a href=\"https://www.ahcancal.org/\" target=\"_blank\">https://www.ahcancal.org/</a></p>\r\n\r\n<p><br />\r\nResource name: Caregiving &ndash; Insights, Information, Inspirations<br />\r\nOld link: www.caregiving.com<br />\r\nNew link: <a href=\"https://www.caregiving.com/\" target=\"_blank\">https://www.caregiving.com/</a></p>\r\n\r\n<p><br />\r\nResource name: American Public Health Association<br />\r\nOld link: www.apha.org<br />\r\nNew link: <a href=\"https://www.apha.org/\" target=\"_blank\">https://www.apha.org/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><span style=\"font-size:24px\"><span style=\"background-color:#f1c40f\">FOR OTHER TEAM</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Wala ray mail for other teams</p>\r\n', 0),
(452, 'Check Other Team 04 19 23 (Other) ', 36, '2023-04-18 17:29:19', '2023-04-19', '2023-04-19 08:29:19', '0000-00-00 00:00:00', 0, 29, 32, 32, NULL, 4, NULL, NULL, NULL, NULL, 0),
(454, 'Meeting Session 04 19 23 (Other) ', 21, '2023-04-18 17:32:06', '2023-04-19', '2023-04-19 08:32:06', '0000-00-00 00:00:00', 0, 29, 32, 32, NULL, 4, '<p>SEO Guidelines with Arnulfo</p>\r\n\r\n<p>Time start: 9:30 AM</p>\r\n\r\n<p>Time end: 10:50 AM</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(455, 'Check Other Team 04 19 23 (Other) ', 21, '2023-04-18 17:33:04', '2023-04-19', '2023-04-19 08:33:04', '0000-00-00 00:00:00', 0, 30, 32, 32, NULL, 4, '<p>Checking Other Team Task</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/459\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/459</a><br />\r\nTime Start: 10:52 AM<br />\r\nTime End:&nbsp; 11:15 AM</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(457, 'Meeting Session 04 19 23 (Other) ', 21, '2023-04-18 17:33:41', '2023-04-19', '2023-04-19 08:33:41', '0000-00-00 00:00:00', 0, 30, 32, 32, NULL, 4, '<p>Metting Session for SEO Guidlines<br />\r\nTime Start : 09:30 AM<br />\r\nTime End : 10:52 AM<br />\r\n&nbsp;</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(458, 'AMERICAN VETERANS HOSPICE 04 19 23', 36, '2023-04-18 19:47:23', '2023-04-19', '2023-04-19 10:47:23', '0000-00-00 00:00:00', 0, 29, 32, 32, NULL, 4, '<p><strong>Email Subject: American Veterans Hospice (Website Updates)<br />\r\nTo: america@veteranshospice.com<br />\r\nAgent to Queue: anna@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- updated phone number on header and footer areas</p>\r\n\r\n<p>- updated company address on footer area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Updated the phone number on content area and PDF file of &quot;Referral/Intake Form&quot; link on the following pages:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hospice Team</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/hospice-care-hospice-team\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/hospice-care-hospice-team</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hospice Veterans Program in Van Nuys, CA</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/hospice-care-hospice-veterans-program-in-van-nuys-ca\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/hospice-care-hospice-veterans-program-in-van-nuys-ca</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>29</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1G--E8v5FcZhPU1COxCRXwsazBUVbVHj9?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1G--E8v5FcZhPU1COxCRXwsazBUVbVHj9?usp=share_link</a></p>\r\n', '<p>For client review</p>\r\n', '<p><strong><span style=\"background-color:#f1c40f\">- Validated HTML/CSS</span><br />\r\n<span style=\"background-color:#f1c40f\">- Checked internal links</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:22px\"><span style=\"color:#e74c3c\">NOTES:</span></span></strong><br />\r\nOld phone number: 866-855-8387<br />\r\nOld address: 14545 Friar St., Ste. 268, Van Nuys, CA 91411</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:22px\"><span style=\"color:#e74c3c\">QA TASKS</span></span></strong><br />\r\nUpdated Posts SEO Title and Meta description and Pages SEO Title in Yoast SEO Search Appearance and the SEO Title in Yoast SEO section in Home Page</p>\r\n\r\n<p><br />\r\n<strong>Posts</strong><br />\r\nOld SEO Title: %%title%% %%page%% %%sep%% %%sitename%%<br />\r\nOld Meta description: -blank-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pages</strong><br />\r\nOld SEO Title: %%title%% %%page%% | Hospice Care in Van Nuys, California<br />\r\nOld Meta description: -No changes-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong><br />\r\nOld SEO Title: VA Hospice in Van Nuys, CA | American Veterans Hospice<br />\r\nOld Meta description: -No changes-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><span style=\"font-size:22px\"><span style=\"color:#e67e22\">FOR OTHER TEAM</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Wala ra tasks for other team</span></p>\r\n', 0),
(459, 'Envision Home Health Services, Inc. 04 19 23', 37, '2023-04-18 19:49:11', '2023-04-19', '2023-04-19 10:49:11', '0000-00-00 00:00:00', 0, 30, 32, 32, NULL, 5, '<div class=\"card-body\">\r\n<p><strong>Email Subject: Envision Home Health Services, Inc.</strong> <strong>(Website Update)<br />\r\nTo: merlyn@envisionhome.com<br />\r\nAgent to Queue: elsa@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- updated company address on footer area<br />\r\n- added fax number on footer area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/</a><br />\r\n<br />\r\n<strong>Contact Us</strong><br />\r\n- added fax number on content area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/home-health-care-contact-us\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/home-health-care-contact-us</a></p>\r\n\r\n<p><br />\r\n<br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>800</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1oP_2L23WYcc9Ol-1nuWOp2MyxrZVnYSR?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1oP_2L23WYcc9Ol-1nuWOp2MyxrZVnYSR?usp=sharing</a></p>\r\n', '<p>for client review</p>\r\n', '<p>Old Address :<br />\r\n17725 Crenshaw Blvd., Suite 302<br />\r\nTorrance, California 90504</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- validated HTML and CSS</span></span></span></span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- checked internal links</span></span></span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>FOR OTHER TEAM</strong></span></span><br />\r\n<br />\r\nFor Design: Envision Home Health Services, Inc. 04 19 23<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/459\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/459</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/home-health-care-career-opportunities\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/home-health-care-career-opportunities</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):</em></p>\r\n\r\n<div class=\"collapse show\" id=\"collapseOne526\">\r\n<div class=\"card-body\">\r\n<p><em><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- pls update address to:804 Hickory Ave Torrance, California(CA), 90503</span></span></span></em></p>\r\n\r\n<p><em><span style=\"font-size:10pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">- pls add another Fax number 310-515-7011 (dont delete the existing one)</span></span></span></em></p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n<br />\r\n- Hi team, please mi update sa pdf files.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 0),
(460, 'QA Changes 04 19 23 (Other)', 42, '2023-04-18 23:58:49', '2023-04-19', '2023-04-19 14:58:48', '0000-00-00 00:00:00', 0, 29, 32, 32, NULL, 4, '<p><strong>AMERICAN VETERANS HOSPICE 04 19 23</strong><br />\r\nTask ID: <a href=\"http://web4.proweaverlinks.com/taskbai//task/458\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai//task/458</a><br />\r\nTime Start: 4:00 PM<br />\r\nTime End: 4:06 PM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trusty Home Health Care LLC 04 18 23 (Dev)</strong><br />\r\nTask ID: <a href=\"http://web4.proweaverlinks.com/taskbai//task/451\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai//task/451</a><br />\r\nTime Start: 3:34 PM<br />\r\nTime End: 4:00 PM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 4:06 PM<br />\r\nTime End: 5:25PM</p>\r\n', '<p><strong>AMERICAN VETERANS HOSPICE 04 19 23</strong></p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1G--E8v5FcZhPU1COxCRXwsazBUVbVHj9?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1G--E8v5FcZhPU1COxCRXwsazBUVbVHj9?usp=share_link</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trusty Home Health Care LLC 04 18 23 (Dev)</strong></p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/107sd3lhr7zQ7lO2_-y72hc9ikdPITPKF?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/107sd3lhr7zQ7lO2_-y72hc9ikdPITPKF?usp=share_link</a></p>\r\n', '<p>for review</p>\r\n', '', 0),
(461, 'QA Changes 04 19 23 (Other)', 42, '2023-04-19 00:00:51', '2023-04-19', '2023-04-19 15:00:51', '0000-00-00 00:00:00', 0, 30, 32, 32, NULL, 4, '<p>QA Changes for Envision Home Health Services, Inc.<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/459\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/459 </a></p>\r\n\r\n<p>Time Start : 04:38 PM<br />\r\nTime End : 6:02 PM</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1oP_2L23WYcc9Ol-1nuWOp2MyxrZVnYSR?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1oP_2L23WYcc9Ol-1nuWOp2MyxrZVnYSR?usp=sharing</a></p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(462, 'Research 04 19 23 (Other)', 42, '2023-04-19 00:32:53', '2023-04-19', '2023-04-19 15:32:53', '0000-00-00 00:00:00', 0, 29, 32, 32, NULL, 4, '<p>Research</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Links:<br />\r\nORCH ENTRY GUIDELINES - <a href=\"https://docs.google.com/document/d/1DOmRjFbXEfQXQWcG71ivYSMPJ4sH0Znb/edit\" target=\"_blank\">https://docs.google.com/document/d/1DOmRjFbXEfQXQWcG71ivYSMPJ4sH0Znb/edit</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 5:27 PM<br />\r\nTime End: 6:03 PM</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(463, 'QA Changes 04 20 23 (Other)', 42, '2023-04-19 18:03:24', '2023-04-20', '2023-04-20 09:03:24', '0000-00-00 00:00:00', 0, 29, 21, 0, NULL, 0, NULL, NULL, NULL, NULL, 0),
(464, 'QA Changes 04 20 23 (Other)', 42, '2023-04-19 18:03:33', '2023-04-20', '2023-04-20 09:03:33', '0000-00-00 00:00:00', 0, 30, 21, 0, NULL, 3, '<p>QA for Able Autism Therapy Services<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/469\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/469</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n<br />\r\nTime Start :&nbsp; 5:43 PM</p>\r\n\r\n<p>Time End :&nbsp; 6:00 PM<br />\r\n<br />\r\n&nbsp;</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(465, 'Check Other Team 04 20 23 (Other)', 42, '2023-04-19 18:05:03', '2023-04-20', '2023-04-20 09:05:03', '0000-00-00 00:00:00', 0, 30, 21, 0, NULL, 3, '<p>Check for other team<br />\r\n<br />\r\nTime Start : 1:13 PM<br />\r\nTime End : 1:51 PM</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(466, 'Check Other Team 04 20 23 (Other)', 42, '2023-04-19 18:05:16', '2023-04-20', '2023-04-20 09:05:16', '0000-00-00 00:00:00', 0, 29, 21, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(467, 'Meeting Session 04 20 23 (Other)', 42, '2023-04-19 18:06:00', '2023-04-20', '2023-04-20 09:06:00', '0000-00-00 00:00:00', 0, 29, 21, 0, NULL, 3, '<p>CW SOP, Content Posting SOPs, Image SOP, Banner and Thumbnail editing, layout / adding of section boxes/services discussion with Jose Bebe Anthonie Emnacen</p>\r\n\r\n<p>Time Start: 9:30 AM</p>\r\n\r\n<p>Time End: 12:00 PM</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(468, 'Meeting Session 04 20 23 (Other)', 42, '2023-04-19 18:06:10', '2023-04-20', '2023-04-20 09:06:10', '0000-00-00 00:00:00', 0, 30, 21, 0, NULL, 3, '<p>Training Session by Jose Emnacen<br />\r\nTime Start : 09:30 AM</p>\r\n\r\n<p>Time End : 12:00 PM<br />\r\n&nbsp;</p>\r\n\r\n<p>Review Discussed on Session by Jose Emnacen<br />\r\nTime Start : 01:00 PM</p>\r\n\r\n<p>Time End : 01:13 PM</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(469, 'Able Autism Therapy Services 04 20 23', 21, '2023-04-19 22:10:00', '2023-04-20', '2023-04-20 13:10:00', '0000-00-00 00:00:00', 0, 30, 21, 0, 'Able_Autism_Therapy_Services_001.docx', 3, '<p><strong>Email Subject: Able Autism Therapy Services (Website Update)<br />\r\nTo: info@ableaba.com<br />\r\nAgent to Queue: anna@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong><br />\r\n- updated slogan on banner area</p>\r\n\r\n<p>- updated section on middle area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p><br />\r\n<strong>Services</strong><br />\r\n- created page</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/aba-therapy-services/physical-therapy\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/aba-therapy-services/physical-therapy</a></p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>30</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/13R3mo9jK-MkS7YlJ0LNXvoWjnxicYyR1?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/13R3mo9jK-MkS7YlJ0LNXvoWjnxicYyR1?usp=share_link</a></p>\r\n', '<p>for client review</p>\r\n', '<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- validated HTML and CSS</span></span></span></span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- checked internal links</span></span></span></span></strong><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><span style=\"font-size:22px\"><strong>QA TASK</strong></span></span><br />\r\n- fixed HTML error that is not related to my instruction</p>\r\n\r\n<p>- naay space ang email link sa href value<br />\r\n- sa email link, gibutangan nako og <strong>mailto:</strong> ang href value</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>NOTES</strong></span></span></p>\r\n\r\n<p>- nadugayan sa pag edit sa banner</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><br />\r\n<span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>FOR OTHER TEAM</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For <span style=\"background-color:#f1c40f\">CW</span>: Able Autism Therapy Services 04 20 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/469\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/469</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):</em><br />\r\n<span style=\"background-color:#f1c40f\">- Change the slogan to: Finding the best autism and child development therapy by ABA therapy service</span><br />\r\n<em><span style=\"background-color:#f1c40f\">- Please add Physical Therapy service<br />\r\n- on the homepage, replace learn more with Physical Therapy.</span> You can keep that image, you can also use it as the banner of the new page as well.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n- Hi team, please mi plagiarism check og PR sa slogan then create content para sa Physical Therapy Service. Magpa advise sad mi kung unsay ibutang na description after mailisan ang Lean More to Physical Therapy sa middle area section. Thank you.</strong></p>\r\n', 0),
(470, 'Care Assist Inc. (Dev)  04 20 23', 30, '2023-04-19 22:11:31', '2023-04-20', '2023-04-20 13:11:31', '0000-00-00 00:00:00', 0, 29, 21, 0, 'Care_Assist_Inc_01_0002.docx', 3, '<p><strong>Email Subject: Care Assist Inc. (Website Updates)<br />\r\nTo: smithslap@careassistinc.com<br />\r\nAgent to Queue: nancy@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong><br />\r\n- updated sixth middle box text contents on middle area<br />\r\n- added seventh middle box and its text contents and images on middle area</p>\r\n\r\n<p>- added&nbsp;eighth middle box and its text contents and images on middle area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/americanvetda867/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/</a><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/careassiston197/home-care-services\" target=\"_blank\">careassiston197</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Services</strong><br />\r\n- removed &quot;Live-in Services&quot; section on content area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/careassiston197/home-care-services\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/careassiston197/home-care-services</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Meal Preparation</strong></p>\r\n\r\n<p>- updated text contents on content area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/careassiston197/home-care-services/meal-preparation\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/careassiston197/home-care-services/meal-preparation</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>29</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1sAHm078BbQy8wN_NOzD66Sj2BjE5TrFY?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1sAHm078BbQy8wN_NOzD66Sj2BjE5TrFY?usp=share_link</a></p>\r\n', '<p>For client review</p>\r\n', '<p><span style=\"font-size:18px\"><span style=\"background-color:#f1c40f\">- VALIDATED HTML/CSS</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"background-color:#f1c40f\">- CHECKED INTERNAL LINKS</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:26px\"><span style=\"color:#e67e22\">FOR OTHER TEAM</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For CW: Care Assist Inc. (Dev) 04 20 23<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/470\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/470</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/careassiston197\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/careassiston197</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Please add all services listed on the services page on the homepage<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/careassiston197\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/careassiston197</a></em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team, please mi create og short description para &quot;Meal Preparation&quot;, &quot;Respite Care&quot;, ug &quot;Bilingual Staff&quot; services sa home page. Thank you.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p>For Design: Care Assist Inc. (Dev) 04 20 23<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/470\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/470</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/careassiston197\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/careassiston197</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- Remove Live-In Care Services on the website<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/careassiston197\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/careassiston197</a></em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team, please mi remove sa &quot;24/7 Live-In Caregivers&quot; na service nga naa sa brochure. Thank you.</strong></p>\r\n', 0),
(471, 'Research 04 20 23 (Other) ', 42, '2023-04-20 01:41:42', '2023-04-20', '2023-04-20 16:41:42', '0000-00-00 00:00:00', 0, 29, 21, 0, NULL, 3, '<p>Research - Guidelines in Implementing Tasks, GIT steps</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Link:</p>\r\n\r\n<p><a href=\"https://docs.google.com/document/d/1HAVQTWVGhQtdbj5X23RiSYFRxnwwv12X/edit\" target=\"_blank\">https://docs.google.com/document/d/1HAVQTWVGhQtdbj5X23RiSYFRxnwwv12X/edit</a></p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/16S6qVAvEg48af9iqzLEx65ZAjFSLUSac\" target=\"_blank\">https://drive.google.com/drive/folders/16S6qVAvEg48af9iqzLEx65ZAjFSLUSac</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start: 4:42 PM</p>\r\n\r\n<p>Time End: 6:01 PM</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(472, 'Meeting Session 04 24 23 (Other)', 42, '2023-04-23 18:01:38', '2023-04-24', '2023-04-24 09:01:38', '0000-00-00 00:00:00', 0, 30, 16, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(473, 'Meeting Session 04 24 23 (Other)', 42, '2023-04-23 18:02:20', '2023-04-24', '2023-04-24 09:02:20', '0000-00-00 00:00:00', 0, 29, 16, 0, NULL, 3, '<p>Updating of Company Name session with Reyvander</p>\r\n\r\n<p>Time Start: 10:15 AM</p>\r\n\r\n<p>Time End: 12:00 PM</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(474, 'QA Changes 04 24 23 (Other)', 42, '2023-04-23 18:57:46', '2023-04-24', '2023-04-24 09:57:46', '0000-00-00 00:00:00', 0, 30, 16, 0, NULL, 0, NULL, NULL, NULL, NULL, 0),
(475, 'Check Other Team 04 24 23 (Other)', 42, '2023-04-23 18:58:10', '2023-04-24', '2023-04-24 09:58:10', '0000-00-00 00:00:00', 0, 30, 16, 0, NULL, 3, '<p>Check Other Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start : 2:27 PM</p>\r\n\r\n<p>Time End : 3:46 PM</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '<p>-</p>\r\n', 0),
(476, 'QA Changes 04 24 23 (Other)', 42, '2023-04-23 18:58:47', '2023-04-24', '2023-04-24 09:58:47', '0000-00-00 00:00:00', 0, 29, 16, 0, NULL, 0, NULL, NULL, NULL, NULL, 0),
(477, 'Check Other Team 04 24 23 (Other)', 42, '2023-04-23 18:59:02', '2023-04-24', '2023-04-24 09:59:02', '0000-00-00 00:00:00', 0, 29, 16, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(478, 'Boler Clinic 04 24 23 (Dev)', 26, '2023-04-23 23:14:07', '2023-04-24', '2023-04-24 14:14:07', '0000-00-00 00:00:00', 0, 30, 16, 16, NULL, 5, '<p><strong>Email Subject: Boler Clinic </strong> <strong>(Website Update)<br />\r\nTo: arnold@bolerchu.com<br />\r\nAgent to Queue: vera@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong></p>\r\n\r\n<p>- updated logo on header area<br />\r\n- updated company name on content area<br />\r\n- updated company name on footer area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>30</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1mZULImRJbnr4_GBOBkRvTb8Iz8Ou_9Fb?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1mZULImRJbnr4_GBOBkRvTb8Iz8Ou_9Fb?usp=share_link</a></p>\r\n', '<p>for client review</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p>Old Company Name:<br />\r\nBoler Clinic</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- validated HTML and CSS</span></span></span></span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- checked internal links</span></span></span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>FOR OTHER TEAM</strong></span></span><br />\r\n<br />\r\nFor Design: Boler Clinic 04 24 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/478\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/478</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):</em></p>\r\n\r\n<p><em>- Please update our company name to Boler Clinic and Consultations</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n<br />\r\n- Hi team, please mi update sa logo kay nag change si client og company name, thank you.</strong><br />\r\n&nbsp;</p>\r\n\r\n<hr />\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>For SEO: Boler Clinic 04 24 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/478\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/478</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):</em><br />\r\n<em>- Please update our company name to Boler Clinic and Consultations</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n- Hi SEO team, please mi update sa sitemap kay nag change og company name si client, thank you.</strong><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<hr />\r\n<p><span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>FOR TICKET </strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For Clarification: Boler Clinic<br />\r\nAgent: vera@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/478\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/478</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bolerclinicbu195/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instructions:<br />\r\n&nbsp;- Please update our company name to Boler Clinic and Consultations</em></p>\r\n\r\n<p><br />\r\n<strong>Concern:<br />\r\n- Hi miss, please mi change sa company name sa Account detailes sa Orchestra, thank you.</strong></p>\r\n', 0),
(479, 'Invise 04 24 23 (Dev)', 32, '2023-04-23 23:15:54', '2023-04-24', '2023-04-24 14:15:54', '0000-00-00 00:00:00', 0, 29, 16, 16, NULL, 5, '<p><strong>Email Subject: Invise (Website Updates)<br />\r\nTo: marcspector@invise.com<br />\r\nAgent to Queue: amanda@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- updated company logo on header and footer areas<br />\r\n- updated color presentation on header, main navigation and content areas<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Non-home Pages</strong></p>\r\n\r\n<p>- updated color presentation on banner area</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong><br />\r\n- updated color presentation on all areas<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>29</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1AzxAFd_tmD_cFI9hh6dhdMu1UCP6tf6E?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1AzxAFd_tmD_cFI9hh6dhdMu1UCP6tf6E?usp=share_link</a></p>\r\n', '<p>For client review</p>\r\n', '<p><strong><span style=\"background-color:#f1c40f\">- VALIDATED HTML/CSS</span></strong></p>\r\n\r\n<p><strong><span style=\"background-color:#f1c40f\">- CHECKED INTERNAL LINKS</span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><span style=\"color:#d35400\"><span style=\"font-size:24px\"><strong>FOR OTHER TEAM</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Wala ra task(s) for other team</p>\r\n', 0),
(480, 'Research 04 24 23 (Other)', 42, '2023-04-24 02:37:37', '2023-04-24', '2023-04-24 17:37:37', '0000-00-00 00:00:00', 0, 29, 16, 0, NULL, 3, '<p>Research - Updating of Company Name &amp; Updating of Website Color Scheme</p>\r\n\r\n<p><a href=\"https://docs.google.com/document/d/1VIHxR0MqKQEdn4e8CxQg7I_aP28FcFMK/edit?ou\" target=\"_blank\">https://docs.google.com/document/d/1VIHxR0MqKQEdn4e8CxQg7I_aP28FcFMK/edit?ou</a></p>\r\n\r\n<p>Time Start: 5:40 PM</p>\r\n\r\n<p>Time End: 6:03 PM</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(481, 'Meeting Session 04 24 23 (Other)', 42, '2023-04-24 18:07:51', '2023-04-25', '2023-04-25 09:07:51', '0000-00-00 00:00:00', 0, 31, 1, 0, NULL, 3, '<p>Discussed about:</p>\r\n\r\n<p>-Website Anatomy</p>\r\n\r\n<p>-Fundamentals of Programming</p>\r\n\r\n<p>-HTML and CSS</p>\r\n\r\n<p>-HMTL Entites and CSS Flex</p>\r\n', '<p>-</p>\r\n', '<p>for review</p>\r\n', '', 0),
(482, 'QA Changes 04 25 23 (Other)', 42, '2023-04-24 18:10:18', '2023-04-25', '2023-04-25 09:10:18', '0000-00-00 00:00:00', 0, 29, 20, 0, NULL, 3, '<p>Task Name: <strong>Invise 04 24 23 (Dev)</strong></p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/479\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/479</a></p>\r\n\r\n<p>Time Start: 9:12 AM</p>\r\n\r\n<p>Time End: 9:43 AM</p>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1AzxAFd_tmD_cFI9hh6dhdMu1UCP6tf6E?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1AzxAFd_tmD_cFI9hh6dhdMu1UCP6tf6E?usp=share_link</a></p>\r\n', '<p>For review</p>\r\n', '', 0),
(483, 'QA Changes 04 25 23 (Other)', 42, '2023-04-24 18:10:19', '2023-04-25', '2023-04-25 09:10:19', '0000-00-00 00:00:00', 0, 30, 20, 0, NULL, 1, '<div class=\"card-body\">\r\n<p><strong>Boler Clinic 04 24 23 (Dev) </strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/478\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/478</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start : 9:00 am</p>\r\n\r\n<p>Time Ended : 10:00 am<br />\r\n&nbsp;</p>\r\n\r\n<p>Time Start : 1:00 pm</p>\r\n\r\n<p>Time Ended : 01:20 pm</p>\r\n</div>\r\n', '<p><a href=\"https://drive.google.com/drive/folders/1mZULImRJbnr4_GBOBkRvTb8Iz8Ou_9Fb?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1mZULImRJbnr4_GBOBkRvTb8Iz8Ou_9Fb?usp=share_link</a></p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(484, 'Check Other Team 04 25 23 (Other)', 42, '2023-04-24 18:10:21', '2023-04-25', '2023-04-25 09:10:21', '0000-00-00 00:00:00', 0, 29, 20, 0, NULL, 3, NULL, NULL, NULL, NULL, 0),
(485, 'Check Other Team 04 25 23 (Other)', 42, '2023-04-24 18:10:22', '2023-04-25', '2023-04-25 09:10:22', '0000-00-00 00:00:00', 0, 30, 20, 0, NULL, 3, '<p>Check for other Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Time Start : 1:18 PM</p>\r\n\r\n<p>Time End : 2:13 PM</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0);
INSERT INTO `tasks` (`id`, `task_name`, `account_id`, `created_date`, `assigned_date`, `assigned_datetime`, `updated_date`, `instructions_id`, `assigned_id`, `created_id`, `qa_id`, `attachment_file`, `status`, `task_url`, `task_backup`, `next_steps`, `additional_notes`, `progress_status`) VALUES
(487, 'Activity 1 - Layout Conversion 04 26 23 (Other)', 42, '2023-04-24 18:17:08', '2023-04-25', '2023-04-25 13:38:57', '0000-00-00 00:00:00', 0, 31, 1, 0, 'layout-4-file61.zip', 3, '<p>WEBSITE CONVERSION : <a href=\"https://drive.google.com/drive/folders/1mGSiOjH02_lrqo7iI3tZqvhcL0Tq7DCp?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1mGSiOjH02_lrqo7iI3tZqvhcL0Tq7DCp?usp=share_link</a></p>\r\n', '<p>-</p>\r\n', '<p>Continued Task to</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/492\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/492</a></p>\r\n', '', 0),
(488, 'Meeting Session 04 25 23 (Other)', 42, '2023-04-24 18:34:25', '2023-04-25', '2023-04-25 09:34:25', '0000-00-00 00:00:00', 0, 30, 20, 0, NULL, 1, '<p>Modal and Jquery Session By Sir Jay<br />\r\nTime Start : 10:00 AM</p>\r\n\r\n<p>Time End : 12:00 PM</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(489, 'Meeting Session 04 25 23 (Other)', 42, '2023-04-24 18:34:26', '2023-04-25', '2023-04-25 09:34:26', '0000-00-00 00:00:00', 0, 29, 20, 0, NULL, 3, '<p>Counter, FAQ, GTranslate, and Modal session with sir Jay</p>\r\n\r\n<p>Time Start: 10:00 AM</p>\r\n\r\n<p>Time End: 12:00 PM</p>\r\n', '<p>-</p>\r\n', '<p>For review</p>\r\n', '', 0),
(490, 'Envision Home Health Services, Inc. 04 25 23 (Dev)', 37, '2023-04-24 22:17:57', '2023-04-25', '2023-04-25 13:17:57', '0000-00-00 00:00:00', 0, 29, 20, 0, 'CW_FAQ3.docx', 3, '<div class=\"card-body\">\r\n<p><strong>Email Subject: Invise (Website Updates)<br />\r\nTo: marcspector@invise.com<br />\r\nAgent to Queue: amanda@proweaver.net</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear Valued Client,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have implemented your requested change(s) in the website:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- added Google Translate on header area</p>\r\n\r\n<p>- added Visitor Counter on footer area</p>\r\n\r\n<p>- added FAQ tab on main navigation and footer navigation areas<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/</a></p>\r\n&nbsp;\r\n\r\n<p><strong>Frequently Asked Questions</strong><br />\r\n- added FAQ page and FAQ content on content area<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/home-health-care-frequently-asked-questions\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/home-health-care-frequently-asked-questions</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nSincerely,<br />\r\nProweaver Design Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>29</p>\r\n</div>\r\n', '<p>-</p>\r\n', '<p>For client review</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:24px\"><span style=\"color:#e67e22\">FOR OTHER TEAM</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For CW: Envision Home Health Services, Inc. 04 25 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/490\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/490</a></p>\r\n\r\n<p>Website URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):<br />\r\n- please add FAQ main tab and it&#39;s contents<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/home-health-care-frequently-asked-questions\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/envisionhomean849/home-health-care-frequently-asked-questions</a></em><br />\r\n&nbsp;<br />\r\n<strong>Concern(s):<br />\r\nHi team, please mi create og content para sa Frequently Asked Questions (FAQ) na page. Thank you.</strong></p>\r\n', 0),
(491, 'Invise 04 25 23 (Dev)', 32, '2023-04-24 22:18:03', '2023-04-25', '2023-04-25 13:18:03', '0000-00-00 00:00:00', 0, 30, 20, 0, 'CW_FAQ4.docx', 2, '<p>-</p>\r\n', '<p>-</p>\r\n', '<p>-</p>\r\n', '<p><s><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- validated HTML and CSS</span></span></span></span></strong></s></p>\r\n\r\n<p><s><strong><span style=\"font-size:12pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:#000000\"><span style=\"background-color:#f1c40f\">- checked internal links</span></span></span></span></strong></s><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<hr />\r\n<p><br />\r\n<span style=\"font-size:22px\"><span style=\"color:#e74c3c\"><strong>FOR OTHER TEAM</strong></span></span><br />\r\n<br />\r\nFor CW: Boler Clinic 04 24 23 (Dev)<br />\r\nTo: edelyn.caparida@proweaver.net, russel.carredo@proweaver.net<br />\r\nCc: obed.ouano@proweaver.net, gerald.paradela@proweaver.net, lanie.ompad@proweaver.net, ervin.caballes@proweaver.net, neil.rosaroso@proweaver.net, jayann.castanares@proweaver.net, kimberly.estenzo@proweaver.net</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/491\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/491</a><br />\r\nWebsite URL: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Instruction(s):</em></p>\r\n\r\n<p><em>- please add FAQ main tab and it&#39;s contents</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Concern(s):<br />\r\n<br />\r\n- Hi team, pls mi aning concern ni client, thank you.</strong></p>\r\n', 1),
(492, 'Activity 1 - Layout Conversion 04 26 23 (Other) ', 42, '2023-04-25 20:41:04', '2023-04-26', '2023-04-26 11:41:04', '0000-00-00 00:00:00', 0, 31, 1, 1, NULL, 5, '<p>WEB CONVERSION DAY2: <a href=\"https://drive.google.com/drive/folders/1RS5Hakcbzi0FL5uyMYLTbNJZ3AaC7VjY?usp=share_link\" target=\"_blank\">https://drive.google.com/drive/folders/1RS5Hakcbzi0FL5uyMYLTbNJZ3AaC7VjY?usp=share_link</a></p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID:</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/496\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/496</a></p>\r\n', '', 0),
(493, 'Custom Wood Floors By Ferrucci 04 27 23 (Website Conversion) ', 63, '2023-04-26 01:18:03', '2023-04-27', '2023-04-27 11:25:49', '0000-00-00 00:00:00', 0, 31, 1, 0, NULL, 1, NULL, NULL, NULL, NULL, 0),
(494, 'Meeting Session 04 27 23 (Other) ', 42, '2023-04-26 01:24:39', '2023-04-27', '2023-04-27 08:43:32', '0000-00-00 00:00:00', 0, 31, 1, 0, NULL, 3, '<p>HTML/CSS: 80%</p>\r\n\r\n<p>Responsive: 0%</p>\r\n\r\n<p>Wordpress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued Task To:</p>\r\n\r\n<table class=\"dataTable table table-borderless table-data3\" id=\"taskToday\">\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"http://web4.proweaverlinks.com/taskbai/task/497\">Custom Wood Floors By Ferrucci 04 28 23 (Website Conversion) </a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', 0),
(495, 'Eva Pharmacy 03 27 23 (Website Conversion)', 48, '2023-04-26 01:26:20', '2023-04-27', '2023-04-27 09:42:21', '0000-00-00 00:00:00', 0, 1, 1, 0, 'Eva_Pharmacy_-_Layout12.zip', 2, '<p>HTML/CSS: 80%</p>\r\n\r\n<p>Responsive: 0%</p>\r\n\r\n<p>WordPress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID: <a href=\"http://web4.proweaverlinks.com/taskbai/task/499\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/499</a></p>\r\n', '', 1),
(496, 'Activity 1 - Layout Conversion 04 27 23 (Other) ', 42, '2023-04-26 17:44:46', '2023-04-27', '2023-04-27 08:44:46', '0000-00-00 00:00:00', 0, 31, 1, 0, NULL, 1, NULL, NULL, NULL, NULL, 0),
(497, 'Custom Wood Floors By Ferrucci 04 28 23 (Website Conversion) ', 63, '2023-04-27 18:07:54', '2023-04-28', '2023-04-28 09:07:54', '0000-00-00 00:00:00', 0, 31, 1, 0, NULL, 2, '<p>HTML/CSS: 90%</p>\r\n\r\n<p>Responsive: 0%</p>\r\n\r\n<p>Wordpress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued Task ID:</p>\r\n', '', 1),
(499, 'Eva Pharmacy 03 28 23 (Website Conversion) ', 48, '2023-04-27 18:09:37', '2023-04-28', '2023-04-28 09:09:37', '0000-00-00 00:00:00', 0, 1, 1, 0, NULL, 1, '<p>HTML/CSS: 100%<br />\r\nResponsive: 0%<br />\r\nWordPress: 0%</p>\r\n', '<p>n/a</p>\r\n', '<p>Continued task ID to:</p>\r\n', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tasks_errors`
--

CREATE TABLE `tasks_errors` (
  `id` int(11) NOT NULL,
  `error_name` varchar(225) NOT NULL,
  `error_category` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks_errors`
--

INSERT INTO `tasks_errors` (`id`, `error_name`, `error_category`) VALUES
(2, '301 Redirection ', 'minor'),
(3, '404/Search Page ', 'minor'),
(4, 'Address/Phone Format', 'minor'),
(5, 'CSS/JS Files not Minified', 'minor'),
(6, 'Footerlinks (NOB/Copyright/XHTML and CSS Icons)', 'minor'),
(7, 'HTML & CSS Validation Error', 'minor'),
(8, 'Images not Optimized', 'minor'),
(9, 'Incorrect Image File Type', 'minor'),
(10, 'No WP/Other Access on Account Details', 'minor'),
(11, 'Online Form Functionality', 'minor'),
(12, 'Orchestra Entry', 'minor'),
(13, 'Others', 'minor'),
(14, 'Proweaver Malware Scanner', 'minor'),
(15, 'Related videos not Turned-off', 'minor'),
(16, 'Responsive', 'minor'),
(17, 'Service Areas & Location Map', 'minor'),
(18, 'WP Dashboard', 'minor'),
(19, 'WP Security Updates (wp-systcon upgrade/ wp-login security update)', 'minor'),
(20, 'Backup (Repo/Screenshots/Website Files/DB)', 'major'),
(21, 'Browser Check', 'major'),
(22, 'Company Name', 'major'),
(23, 'Copyright Image', 'major'),
(24, 'Email Update', 'major'),
(25, 'File Permission', 'major'),
(26, 'Incomplete Implementation', 'major'),
(27, 'Links (Redirection/New Tab/Anchored /Not javascript:;/Mailto Email Address/Broken links)', 'major'),
(28, 'Local Path on Images', 'major'),
(29, 'Orchestra Entry', 'major'),
(30, 'Other Team/Tickets', 'major'),
(31, 'Page Functionality', 'major'),
(32, 'Permalinks', 'major'),
(33, 'Responsive', 'major'),
(34, 'Security Codes (htaccess, wp-config.php, wp-login file, xmlrpc.php)', 'major'),
(35, 'Social Media (Links/Icons)', 'major'),
(36, 'Website Submission/Resubmission', 'major'),
(37, 'WP Dashboard', 'major'),
(38, 'Wrong Implementation', 'major');

-- --------------------------------------------------------

--
-- Table structure for table `task_comments`
--

CREATE TABLE `task_comments` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `comment_qa_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_comments`
--

INSERT INTO `task_comments` (`id`, `task_id`, `comment_qa_id`, `comment_text`, `comment_date`) VALUES
(6, 269, 2, '<p>sample</p>\r\n', '2023-03-16 19:12:33'),
(7, 271, 2, '<p><strong>Home</strong></p>\r\n\r\n<p>- update hair to color yellow</p>\r\n\r\n<p>- update lagay padak-a with padding 0</p>\r\n\r\n<p><a href=\"https://www.google.com/search?client=firefox-b-d&amp;q=jordi\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/271</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2023-03-16 19:15:30'),
(8, 281, 2, '<p><strong>Roseway Transport LLC 03 20 23 (Dev)</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\">http://web4.proweaverlinks.com/taskbai/task/281</a></p>\r\n\r\n<p><br />\r\n<strong>All Pages</strong><br />\r\n- pls set proper link for the pinterest icon<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a><br />\r\n<br />\r\nHome<br />\r\n- double check alt value of all banner images<br />\r\n- notice aning image sa main area, it is one of the images sa banner/slider, tangtanga nalang ang kana nga image from the slider<br />\r\n- double check alt value of image on &quot;Our Mission Statement&quot; section, also improve quality of the image, use image with higher resolution<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a><br />\r\n<br />\r\nWP Theme Screenshot<br />\r\n- make sure the theme screenshot does not show admin bar and dapat naka full with siya<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/wp-content/themes/rosewaytransrt534/screenshot.jpg\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/wp-content/themes/rosewaytransrt534/screenshot.jpg</a><br />\r\n<br />\r\nOrc Entry<br />\r\n- please specify unsa nga social media icon ang na add, is it Facebook? Pinterest?<br />\r\n- double check email extension<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/281\">http://web4.proweaverlinks.com/taskbai/task/281</a><br />\r\n<br />\r\nOther Team Drafts<br />\r\n- double check subjects, should be task name, not company name alone<br />\r\n<br />\r\nBackup<br />\r\n- if wala ray qa task na gibuhat, please lang remove the folder, as well as ang attachments kung wala ray gi attach para sa task<br />\r\n<a href=\"https://drive.google.com/drive/u/4/folders/12oIv2od3CDi6AWpI8agKLNnVVhW6bSgf\">https://drive.google.com/drive/u/4/folders/12oIv2od3CDi6AWpI8agKLNnVVhW6bSgf</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Please use QA Changes task to implement these corrections. Thank you :)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><em>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><em>One is bound to repeat what one has not mastered</em></span></p>\r\n\r\n<p><span style=\"font-size:10pt\">&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><em>- Nerif the Oracle (DOTA 2)</em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre style=\"text-align:left\">\r\n<strong><span dir=\"ltr\" lang=\"ja\">ごきげんよう!!!</span></strong></pre>\r\n', '2023-03-20 02:13:21'),
(9, 282, 2, '<p><strong>Karma Healthcare Staffing Consultants 03 20 23 (Dev)</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/282\">http://web4.proweaverlinks.com/taskbai/task/282</a><br />\r\n<br />\r\nHome</p>\r\n\r\n<p>- double check second slider image<br />\r\n- double check alt value of images on middle area<br />\r\n- pls replace image for CNA on bottom area, doesn&#39;t look like a nurse. mas fit siya i puli sa &quot;Recruitment Solutions&quot; sa middle area and ang current image sa &quot;Recruitment Solutions&quot; kay ipuli ana nga area<br />\r\n- the rest of images on &quot;Services we Offer&quot; double check alt value and image quality<br />\r\n- pls increase size of image on &quot;Our Mission Statement&quot; section<br />\r\n- collage of images on bottom area before footer &gt;&gt; double check image quality and alt values<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a><br />\r\n<br />\r\nProfessional Services<br />\r\n- instead of using &quot;Services&quot; as label for each boxes, you may use &quot;Service Title&quot;<br />\r\n- double check alt value of the images added<br />\r\n- then use javascript:; sa href para hoverable ra sila but not clickable<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-professional-services\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-professional-services</a><br />\r\n<br />\r\nCNA<br />\r\n- replace banner image, just as stated above but careful sa alt value<br />\r\n- edit it accordingly kay putol siya, check the video i sent para ma fade2 ug tarong ang banner image<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-medical-staffing/cna\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-medical-staffing/cna</a><br />\r\n<br />\r\nRN<br />\r\n- edit banner image accordingly kay putol siya, check the video i sent para ma fade2 ug tarong ang banner image<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-medical-staffing/rn\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-medical-staffing/rn</a><br />\r\n<br />\r\nLPN<br />\r\n- pls refrain using &quot;black&quot; sa alt value, pls edit image pud accordingly kay murag cut siya<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-medical-staffing/lpn\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-medical-staffing/lpn</a><br />\r\n<br />\r\nTelehealth Providers<br />\r\n- edit banner image accordingly kay putol siya, check the video i sent para ma fade2 ug tarong ang banner image<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-medical-staffing/telehealth-providers\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-medical-staffing/telehealth-providers</a><br />\r\n<br />\r\nResources<br />\r\n- edit banner image accordingly kay putol siya, check the video i sent para ma fade2 ug tarong ang banner image<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-resources\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-resources</a><br />\r\n<br />\r\nSend Your Referrals<br />\r\n- there&#39;s a white person on the banner image, use any nalang gikan sa lain pages para dili na kalas image hehe<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-send-your-referrals\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/healthcare-staffing-send-your-referrals</a><br />\r\n<br />\r\nOrc Entry<br />\r\n- double check email subject<br />\r\n- double check To email<br />\r\n- entry for Professional Services page use &gt;&gt; updated layout presentation on content area<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/282\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/282</a><br />\r\n<br />\r\nOther Team Drafts<br />\r\n- pls make sure clickable ang links (task id and website url)<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/282\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/282</a><br />\r\n<br />\r\nBackup<br />\r\n- others &gt;&gt; pwede ra ma remove ang attachments and qa task since wala ray screenshots para ani nila<br />\r\n- you may delete some of the screenshots kay murag gi screenshot na jud pati ang na change nga thumbnail. Two screenshots per page lang, bu and up only and whole page, not per section or area<br />\r\n- also some kay walay label kung bu ba siya or up, like kaning professional-services.jpg<br />\r\n<a href=\"https://drive.google.com/drive/u/4/folders/1MfAYXULLrobKIm3ksVb_YYA-zldr4G7U\" target=\"_blank\">https://drive.google.com/drive/u/4/folders/1MfAYXULLrobKIm3ksVb_YYA-zldr4G7U</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><em>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:10pt\"><em>One is bound to repeat what one has not mastered</em></span></p>\r\n\r\n<p><span style=\"font-size:10pt\">&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><em>- Nerif the Oracle (DOTA 2)</em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre style=\"text-align:left\">\r\n<strong><span dir=\"ltr\" lang=\"ja\">ごきげんよう!!!</span></strong></pre>\r\n\r\n<p>&nbsp;</p>\r\n', '2023-03-20 02:39:18'),
(10, 294, 8, '<p><strong>All Pages</strong><br />\r\n- please ko check sa Gtranslate nig responsive kay guba siya tan-awn<br />\r\n- 1024px:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; dili makita ang dropdown button<br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520\">http://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Orchestra Entry</strong><br />\r\n- Task &amp; URL</p>\r\n\r\n<p>&nbsp;&nbsp; &nbsp;&raquo; please ko remove sa date sa email subject<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; All Pages:<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; please ko specificy kung asa ni dapit siya gi-update/add<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; e-capital lng ang G sa google ug sa gallery<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; Gallery<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; please add &quot;created page&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Backup Files</strong><br />\r\n- please ko add screenshot for About Us page bu and up</p>\r\n', '2023-03-20 22:55:14'),
(11, 293, 8, '<p><strong>All Pages</strong><br />\r\n- 1024px:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; dili makita ang dropdown button<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; ni overlap ang banner info sa dropdown<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a><br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n<strong>Home</strong><br />\r\n- please lng ko update sa styling sa Google Review<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; Note: please update theme screenshot after<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Orchestra Entry</strong><br />\r\n- Task &amp; URL:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please ko remove sa date and task extension sa email subject<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; All Pages<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; please lng ko remove sa all pages sa ADA<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; Home<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; please update orchestra entry<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; e-capital G lng ang google<br />\r\n- Additional Info:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please lng ko add sa gigamit na access sa Userway ADA</p>\r\n', '2023-03-20 23:06:17'),
(12, 288, 1, '<p>HTML/CSS</p>\r\n\r\n<p>- by discussion</p>\r\n\r\n<p>&gt; minimize use of class naming</p>\r\n', '2023-03-20 23:49:17'),
(13, 301, 8, '<p><strong>All Pages</strong><br />\r\n- please ko check sa address format sa new location<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please update theme screenshot after<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Service Areas Covered</strong><br />\r\n- please ko add active css sa footer button<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/home-care-and-healthcare-staffing-service-areas-covered\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/aspirehomega911/home-care-and-healthcare-staffing-service-areas-covered</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Orchestra Entry</strong><br />\r\n- Task &amp; URL<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; Service Areas Covered:<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; please ko capital sa S ni Salisbury<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; please ko add link sa page</p>\r\n', '2023-03-21 22:43:04'),
(14, 304, 8, '<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- please update meta&#39;s and title tag<br />\r\n- please ko remove sa gimention ni client na phone number, please lng pud ko update sa gimention ni client na phone number<br />\r\n- 1000px:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; ayaw lng e-display none ang icons sa footer info<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong><br />\r\n- naa pa ang iyang old address<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please update theme screenshot after update<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/bestvaluehc/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Orchestra Entry</strong><br />\r\n- Task &amp; URL:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; All Pages<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; please ko update sa orch entry</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Backup Files</strong><br />\r\n- screenshots:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please ko add bu screenshot ni About Us, 24-Hours ug Services Page<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n<strong>Website Files</strong><br />\r\n- please ko check sa file name sa theme screenshot kay naay space</p>\r\n', '2023-03-22 02:14:29'),
(15, 318, 21, '<p><strong>Home</strong><br />\r\n- wala nimu ma implement. please ko review sa attachment. Thankyou</p>\r\n\r\n<p><br />\r\n<strong>Medical Staffing</strong><br />\r\nBreakpoint 1000px - 600px<br />\r\n&gt; please ko check sa box nga imong gi add, dili level sa other boxes.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Orchestra Enrty<br />\r\nMedical Staffing</strong><br />\r\n- added Personal Care and Assistance services under &quot;We offer hiring solutions to:&quot; section on content area.<br />\r\nchange to:<br />\r\n- added &quot;Personal Care and Assistance&quot; box on content area.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2023-03-23 01:07:26'),
(16, 317, 21, '<p><strong>Services</strong><br />\r\nPlease ko ani sa responsive breakpoint 800px:<br />\r\n.serv_list ul li {width: 100%;max-width: 500px}</p>\r\n\r\n<p><br />\r\n<strong>Orchestra Entry</strong><br />\r\n<strong>Services</strong><br />\r\n- added Hospice Services under &quot;Who Do We Help?&quot; section on content area.<br />\r\nchange to:<br />\r\n- added &quot;Hospice Services&quot; box on content area</p>\r\n', '2023-03-23 01:17:16'),
(17, 316, 21, '<p><strong>Meal Preparation</strong><br />\r\n- &quot;Cooking delicious and nutritious food for you&quot; diin ka nag kuha ani ster? e replace lang ani ster &quot;Enjoy the meals we prepare.&quot;</p>\r\n\r\n<p>- please sad ko check sa spacing (double check sa attachment).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Orchestra Entry:</strong></p>\r\n\r\n<p><strong>Home</strong><br />\r\n- modified &quot;Live-in Care Services&quot; with &quot;Meal Preparation&quot; on middle area<br />\r\n- added all services on middle area<br />\r\n<strong>change to</strong>:<br />\r\n- updated from &quot;Live-in Care Services&quot; to &quot;Meal Preparation&quot; under &quot;What We Do Services We Offer&quot; section on middle area<br />\r\n- added &quot;Respite Care&quot; and &quot;Bilingual Staff&quot; services under &quot;What We Do Services We Offer&quot; section on middle area<br />\r\n&nbsp;</p>\r\n', '2023-03-23 01:41:44'),
(18, 368, 2, '<p><strong>Roseway Transport LLC 03 31 23 (Dev)</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/368\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/368</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Home</strong><br />\r\n- double check alt value of all slider images<br />\r\n- ang newly added images kay blurred and some of them kay ang subject, matabunan sa banner info, pwede ra ta choose ug lain nga image, kanang mu fit jud sa slider area<br />\r\n- double check alt value of image on &quot;Our Mission &quot;Statement&quot; section<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>About Us</strong><br />\r\n- double check banner image alt value<br />\r\n- if truck na ang banner, ibalik lang sa cargo ship ang thumbnail para balanced<br />\r\n- then double check alt value of thumbnail<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/intermodal-container-transportation-about-us\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/intermodal-container-transportation-about-us</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Orc Entry</strong><br />\r\n- double check email extension<br />\r\n- reduce redundancy<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/368\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/368</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Additional Info</strong><br />\r\n- did you check internal links?<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/368\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/368</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Backup Filepath</strong><br />\r\n- no need to create company folder inside sa imo Date-Name nga directory.<br />\r\nani siya dapat &gt;&gt; Company Name &gt;&gt; Version 1 &gt;&gt; Date-YourName &gt;&gt; then kato na dayon bu up and others<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/368\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/368</a></p>\r\n', '2023-03-31 00:47:28'),
(19, 379, 8, '<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/379\">http://web4.proweaverlinks.com/taskbai/task/379</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- main nav:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please ko fix ani Lysa kay natagak na ang Contact Us tab<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; check lng pud ni sa responsive<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a><br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<strong>Home</strong><br />\r\n- Google Review:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please lng ko adjust sa space sa section<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Orchestra Entry</strong><br />\r\n- please ko add kung asa nabutang ang Gallery na CTA Lysa<br />\r\n- in-ania lng ang Entry sa Gallery Lysa:</p>\r\n\r\n<p><br />\r\n<strong>Gallery</strong><br />\r\n- created page<br />\r\n- added album on content area<br />\r\n<em>**page link here**</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Website Files</strong><br />\r\n- please ko update sa theme screenshot</p>\r\n', '2023-04-02 23:02:07'),
(20, 380, 8, '<p><a href=\"https://office.orchestra.tools/tasks/viewtask/1621368\">https://office.orchestra.tools/tasks/viewtask/1621368</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Services</strong><br />\r\n- hover effect:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please lng ko same sa iyang reference site Lysa<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/aba-therapy-services\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/aba-therapy-services</a><br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n<strong>Resources</strong><br />\r\n- please lng ko uniform sa displayed links Lysa<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/aba-therapy-resources\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/aba-therapy-resources</a></p>\r\n', '2023-04-03 02:15:30'),
(21, 398, 21, '<p>Care Assist Inc.</p>\r\n\r\n<p>Home page<br />\r\n&gt; please ko check sa &quot;Meal Preparation&quot; icon , dili siya mao. and nawala ang icons sa &quot;Respite Care&quot; and &quot;Billingual Staff&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2023-04-06 01:14:45'),
(22, 400, 21, '<p>Meet Our Staff<br />\r\n(breakpoint: 600px)<br />\r\nplease ko e width:100%; ang section under ni &quot;Gina Castro&quot;</p>\r\n\r\n<p>.staff_list .board_membe {margin:unset;}</p>\r\n\r\n<p><br />\r\nOchestra Entry:<br />\r\nLong Distance Transports<br />\r\n- instead &quot;added page&quot;, please use lang &quot;created page and added text contents on content area&quot;</p>\r\n', '2023-04-06 01:27:16'),
(23, 424, 2, '<p><strong>Invise 04 14 23 (Dev)</strong></p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/424/comment\">http://web4.proweaverlinks.com/taskbai/task/424/comment</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>All Pages</p>\r\n\r\n<p>- pls fix responsive sa header area starting 1500px</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/inviseer200/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2023-04-14 00:40:47'),
(24, 428, 2, '<p><strong>Roseway Transport LLC 04 17 23 (Dev)</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/428\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/428</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Home<br />\r\n- slider &gt;&gt; please add more images of trucks sa slider, make sure ang subject is naka right side to make way for the banner info<br />\r\n- make sure nga ang images naka alternate, if ang first is cargo ship, next image should be truck, bahala ang filenaming kay nag jumble na<br />\r\n- make sure to update the slider as well<br />\r\n- bottom &gt;&gt; &quot;Our Mission &quot;Statement&quot; &gt;&gt; pls change image diri , kanang truck lang<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Services<br />\r\n- double check alt value of banner image<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/intermodal-container-transportation-services\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/rosewaytransrt534/intermodal-container-transportation-services</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Orc entry<br />\r\n- website updates lang ang email extension<br />\r\n- add orch entry for all pages &gt;&gt; updated images on all areas and remove the orc entry for &quot;Services&quot; page since apil na na ana<br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/428\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/428</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Additional Info</p>\r\n\r\n<p>- pls ko sa mga templated notes ug add</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/428\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/428</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>very good other team drafts, no qa<br />\r\ndouble check lang jud task after implementation</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>~~uwu~~</p>\r\n', '2023-04-17 01:44:08'),
(25, 450, 8, '<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://web4.proweaverlinks.com/taskbai/task/450\">http://web4.proweaverlinks.com/taskbai/task/450</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- please ko add ug Gallery tab sa main ug footer navigation (para naa siyay Call to action padung sa iyang page)<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please lng pud ko include ani sa imung Task &amp; URL<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; after ug add please ko check sa responsive<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please pud ko update theme screenshot after<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a><br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n<strong>Backup screenshot</strong><br />\r\n- please ko add screenshot sa Gallery page</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Task &amp; URL</strong><br />\r\n- please ko update to</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>All Pages<br />\r\n- added ADA Compliant<br />\r\n<span style=\"color:#ff0000\"><em>//link here....</em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Home<br />\r\n- added Google review on (kung asa na section nimu siya na-add)<br />\r\n<span style=\"color:#ff0000\"><em>//link here....</em></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gallery<br />\r\n- created page<br />\r\n- added photo album on content area<br />\r\n<span style=\"color:#ff0000\"><em>//link here....</em></span></p>\r\n', '2023-04-18 01:14:05'),
(26, 451, 8, '<p><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/451\">http://web4.proweaverlinks.com/taskbai/task/451</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All Pages</strong><br />\r\n- Gtranslate:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please ko lng ko remove sa Gtranslate sa footer<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please ko fix sa Gtranslate nig open kay mo lihok pud ang uban section<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; please lng pud ko fix ani master nig open niya ang naka-upward ang direction, e-downward direction lng siya master<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; nig scroll kay ayaw lng e-apil ang Gtranslate sa pag-fix sa nav section<br />\r\n- 1024px:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please lng ko fix sa dropdown master kay dili makita ang dropdown button<br />\r\n- 800px:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please ko check sa Gtranslate master kay nig open sa toggle menu kay makita pa siya<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; update lng ang z-index ani<br />\r\n- footer area:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; ayaw lng butangi ug dropdown ang sa footer nav<br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/\">https://web4.proweaverlinks.com/MAINTENANCE/trustyhomean520/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Website Files</strong><br />\r\n- please ko update sa theme screenshot<br />\r\n- after update:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; please update theme screenshot&nbsp;&nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Backup Screenshot</strong><br />\r\n- please ko update sa screenshots after implement<br />\r\n- please ko screenshot sa Gallery page<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\n<strong>Task &amp; URL</strong><br />\r\n- please ko sa control number nimu master<br />\r\n- update entry after<br />\r\n- Gallery:<br />\r\n&nbsp;&nbsp; &nbsp;&raquo; e-usa lng ni sila, then update lng ni ang isa to<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&bull; created page</p>\r\n', '2023-04-18 02:03:31'),
(27, 458, 32, '<p><strong>American Veterans Hospice</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/458\">http://web4.proweaverlinks.com/taskbai/task/458</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Orc Entry</p>\r\n\r\n<p>All Pages<br />\r\n- please used<br />\r\n&gt;&gt;&gt; - updated phone number on header area and footer areas<br />\r\n&gt;&gt;&gt; - updated company address on footer area</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- please used</p>\r\n\r\n<p>&gt;&gt;&gt; Updated the phone number on content area and PDF file of &quot;Referral/Intake Form&quot; link on the following pages:</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2023-04-19 00:57:29'),
(28, 459, 32, '<p><strong>Envision Home Health Services, Inc.</strong><br />\r\n<a href=\"http://web4.proweaverlinks.com/taskbai/task/459\" target=\"_blank\">http://web4.proweaverlinks.com/taskbai/task/459</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Orc Entry<br />\r\n- please add space before &quot;Sincerely,&quot; (dapat duha ni ka space)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Task Implementation<br />\r\n- please e oneline lng fax number na gi add, same ani (310-515-1721 | 310-515-7011), pwede ra nmo e separate or&nbsp; vertical line, check nlng sa responsive ani daan</p>\r\n', '2023-04-19 02:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `task_comments_child`
--

CREATE TABLE `task_comments_child` (
  `id` int(11) NOT NULL,
  `comment_parent_id` int(11) NOT NULL,
  `comment_text_child` text NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `comment_child_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_comments_child`
--

INSERT INTO `task_comments_child` (`id`, `comment_parent_id`, `comment_text_child`, `comment_user_id`, `comment_child_date`) VALUES
(5, 6, 'qa implemented', 2, '2023-03-16 19:13:03'),
(6, 7, 'qa implement', 26, '2023-03-16 19:16:16'),
(7, 7, 'hackdog!', 1, '2023-03-16 19:18:17'),
(8, 8, 'QA Implemented', 25, '2023-03-20 22:30:07'),
(9, 9, 'qa implemented', 24, '2023-03-20 23:24:52'),
(10, 10, 'qa implemented ', 24, '2023-03-21 01:41:18'),
(11, 11, 'QA implemented', 25, '2023-03-21 01:44:35'),
(12, 13, 'qa implemented ', 24, '2023-03-22 01:24:58'),
(13, 16, 'QA implemented', 25, '2023-03-23 01:35:55'),
(14, 17, 'qa implemented', 24, '2023-03-23 01:51:39'),
(15, 15, 'QA implemented\r\n', 25, '2023-03-23 02:21:50'),
(16, 14, 'QA implemented', 25, '2023-03-24 00:34:44'),
(17, 13, 'test', 1, '2023-03-29 20:01:37'),
(18, 18, 'QA Implemented', 27, '2023-03-31 01:43:38'),
(19, 19, 'QA Implemented', 27, '2023-04-02 23:31:13'),
(20, 20, 'QA Implemented', 27, '2023-04-03 02:29:12'),
(21, 22, 'QA implemented', 27, '2023-04-10 17:52:12'),
(22, 23, 'QA implemented', 2, '2023-04-14 00:41:11'),
(23, 27, 'QA Changes implemented', 29, '2023-04-19 01:06:14'),
(24, 26, 'QA Changes implemented', 29, '2023-04-19 02:25:25'),
(25, 28, 'QA Changes for Envision Home Health Services, Inc.\r\nhttp://web4.proweaverlinks.com/taskbai/task/459\r\n\r\nTime Start : 04:38 PM\r\nTime End : 6:02 PM\r\n', 30, '2023-04-19 03:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `task_qa`
--

CREATE TABLE `task_qa` (
  `id` int(11) NOT NULL,
  `qas_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_qa`
--

INSERT INTO `task_qa` (`id`, `qas_id`, `task_id`) VALUES
(12, 2, 237),
(13, 3, 237);

-- --------------------------------------------------------

--
-- Table structure for table `task_tracker`
--

CREATE TABLE `task_tracker` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `task_time` datetime DEFAULT NULL,
  `task_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_tracker`
--

INSERT INTO `task_tracker` (`id`, `task_id`, `task_time`, `task_status`) VALUES
(1, 497, '2023-06-20 13:08:10', 2),
(2, 496, '2023-06-20 13:18:31', 2),
(3, 496, '2023-06-20 13:18:37', 1),
(4, 499, '2023-06-20 13:18:54', 2),
(5, 499, '2023-06-20 13:18:59', 1),
(6, 495, '2023-06-20 13:31:44', 2),
(7, 495, '2023-06-20 13:32:01', 1),
(8, 495, '2023-06-20 13:33:41', 2);

-- --------------------------------------------------------

--
-- Table structure for table `time_progress_end`
--

CREATE TABLE `time_progress_end` (
  `id` int(11) NOT NULL,
  `time_end` time NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_progress_end`
--

INSERT INTO `time_progress_end` (`id`, `time_end`, `task_id`) VALUES
(364, '17:45:00', 231),
(365, '17:58:00', 232),
(366, '17:58:00', 234),
(367, '18:00:00', 235),
(368, '14:11:00', 238),
(369, '14:12:00', 237),
(371, '18:00:00', 240),
(372, '18:01:47', 239),
(373, '18:03:38', 240),
(374, '09:30:00', 240),
(375, '09:31:00', 239),
(376, '12:01:05', 241),
(377, '12:02:30', 242),
(379, '13:54:04', 242),
(380, '13:55:17', 241),
(381, '15:01:48', 244),
(382, '15:02:13', 243),
(383, '16:29:00', 244),
(384, '16:29:00', 243),
(387, '17:53:29', 242),
(388, '17:53:31', 241),
(389, '17:53:35', 242),
(390, '09:16:00', 241),
(391, '09:48:00', 242),
(392, '10:49:08', 246),
(393, '10:49:16', 247),
(394, '12:00:41', 248),
(395, '14:05:00', 249),
(396, '14:07:00', 248),
(397, '18:02:47', 247),
(398, '18:03:02', 246),
(399, '09:07:00', 246),
(400, '12:00:08', 250),
(401, '18:06:36', 251),
(402, '18:07:00', 247),
(403, '09:34:00', 251),
(404, '12:05:57', 253),
(405, '13:20:00', 253),
(406, '13:20:00', 252),
(407, '14:19:00', 256),
(408, '14:21:00', 257),
(409, '15:04:00', 254),
(410, '15:14:00', 255),
(411, '18:03:00', 252),
(412, '18:05:00', 253),
(413, '09:42:08', 260),
(414, '09:42:49', 261),
(415, '12:02:00', 258),
(416, '12:02:00', 259),
(417, '13:07:36', 261),
(418, '13:09:00', 260),
(419, '18:01:35', 262),
(420, '18:03:10', 263),
(421, '18:03:00', 261),
(422, '18:05:08', 260),
(423, '18:06:00', 260),
(424, '09:06:00', 262),
(425, '09:07:00', 263),
(426, '10:20:07', 264),
(427, '12:01:14', 267),
(428, '12:01:00', 265),
(429, '12:01:00', 266),
(430, '12:03:19', 266),
(431, '13:43:21', 267),
(432, '13:45:19', 266),
(433, '14:58:00', 270),
(434, '14:58:00', 269),
(435, '15:00:54', 273),
(436, '15:00:59', 274),
(437, '16:05:00', 273),
(438, '17:19:01', 274),
(439, '17:19:02', 273),
(440, '17:37:00', 273),
(441, '17:38:00', 267),
(442, '17:52:00', 274),
(443, '17:53:00', 266),
(444, '11:57:00', 272),
(445, '12:00:28', 275),
(446, '12:00:00', 276),
(448, '14:00:00', 276),
(449, '14:00:00', 275),
(450, '14:46:00', 277),
(453, '15:54:00', 278),
(455, '16:19:47', 283),
(457, '18:00:01', 280),
(458, '18:00:00', 280),
(459, '18:03:06', 284),
(460, '18:04:00', 279),
(461, '18:04:00', 283),
(462, '09:20:00', 284),
(463, '09:41:36', 286),
(464, '09:45:32', 287),
(465, '10:24:00', 287),
(466, '10:25:00', 291),
(467, '10:25:28', 286),
(468, '10:34:00', 292),
(469, '12:00:36', 294),
(471, '13:14:00', 294),
(473, '13:27:00', 288),
(474, '14:26:00', 286),
(475, '15:01:33', 292),
(476, '16:30:00', 292),
(477, '17:42:00', 287),
(478, '18:00:00', 286),
(479, '18:04:00', 295),
(480, '09:30:55', 302),
(481, '10:25:23', 306),
(482, '10:26:00', 305),
(483, '12:07:59', 304),
(484, '13:26:00', 301),
(485, '14:38:00', 300),
(486, '15:07:04', 297),
(487, '15:09:29', 304),
(488, '16:26:00', 302),
(489, '16:57:00', 304),
(490, '16:58:00', 306),
(491, '18:01:00', 303),
(492, '18:16:55', 299),
(493, '09:34:50', 307),
(494, '09:35:00', 299),
(495, '10:58:00', 308),
(496, '11:01:00', 297),
(497, '11:02:57', 315),
(498, '12:01:00', 309),
(499, '12:03:00', 310),
(500, '13:15:00', 314),
(501, '14:48:00', 317),
(503, '15:15:00', 313),
(504, '15:20:32', 318),
(505, '15:48:00', 318),
(506, '17:04:00', 311),
(507, '17:32:00', 312),
(508, '18:18:09', 307),
(509, '10:30:47', 321),
(510, '10:30:58', 320),
(511, '11:20:00', 325),
(512, '11:34:00', 319),
(513, '11:59:14', 329),
(515, '12:01:12', 327),
(516, '12:02:00', 329),
(517, '12:02:00', 315),
(518, '12:25:06', 322),
(519, '13:46:00', 327),
(521, '15:09:35', 322),
(522, '18:00:00', 326),
(523, '18:01:00', 323),
(524, '18:01:00', 321),
(525, '18:01:00', 320),
(526, '18:01:00', 324),
(527, '18:14:00', 307),
(528, '18:16:05', 322),
(529, '09:46:00', 264),
(530, '09:46:00', 250),
(531, '11:34:00', 336),
(532, '11:34:00', 335),
(533, '12:00:34', 338),
(534, '12:00:38', 337),
(535, '12:03:56', 330),
(536, '13:31:00', 337),
(537, '13:31:00', 338),
(538, '14:41:24', 339),
(539, '15:01:23', 340),
(540, '17:02:37', 339),
(541, '17:53:00', 340),
(542, '18:15:00', 339),
(543, '18:21:00', 330),
(544, '09:38:21', 344),
(545, '12:05:15', 345),
(546, '17:16:00', 344),
(547, '17:17:00', 345),
(548, '09:36:00', 347),
(549, '10:00:00', 322),
(550, '11:35:00', 348),
(551, '11:43:00', 350),
(552, '12:11:00', 349),
(553, '12:11:34', 349),
(554, '17:53:00', 349),
(555, '12:01:01', 352),
(556, '13:52:35', 362),
(557, '14:09:30', 352),
(558, '14:18:00', 362),
(559, '14:47:44', 357),
(560, '14:48:05', 358),
(563, '17:45:00', 352),
(564, '17:54:00', 357),
(566, '18:00:00', 357),
(567, '18:02:55', 353),
(568, '18:02:58', 354),
(569, '09:05:00', 353),
(570, '09:07:00', 354),
(573, '12:01:35', 366),
(574, '13:28:57', 366),
(575, '13:36:00', 365),
(576, '13:38:00', 366),
(578, '14:42:40', 366),
(580, '16:47:00', 367),
(581, '17:42:00', 367),
(582, '18:04:00', 364),
(583, '18:06:00', 358),
(584, '18:08:00', 363),
(585, '18:09:00', 366),
(587, '09:18:00', 357),
(588, '10:40:48', 376),
(591, '14:03:24', 376),
(592, '14:13:09', 373),
(593, '14:15:00', 374),
(594, '14:16:00', 375),
(595, '14:31:00', 377),
(596, '15:00:25', 376),
(597, '15:50:28', 376),
(598, '17:04:00', 380),
(599, '18:01:00', 376),
(600, '18:13:22', 371),
(601, '18:14:29', 372),
(602, '10:42:00', 371),
(603, '11:05:53', 387),
(604, '11:28:00', 389),
(606, '12:34:00', 384),
(607, '12:35:00', 372),
(610, '18:10:20', 381),
(611, '18:26:16', 382),
(612, '08:25:00', 381),
(613, '09:06:00', 373),
(614, '09:15:00', 382),
(615, '09:25:00', 387),
(616, '09:33:42', 391),
(617, '09:33:49', 392),
(618, '11:18:00', 393),
(619, '11:20:00', 396),
(620, '11:25:57', 394),
(621, '11:26:00', 394),
(622, '11:32:00', 397),
(625, '14:48:00', 397),
(626, '15:01:38', 392),
(627, '15:05:03', 400),
(628, '17:42:00', 400),
(629, '18:14:40', 391),
(630, '18:14:00', 391),
(631, '13:15:59', 395),
(632, '10:03:00', 392),
(633, '11:38:00', 404),
(634, '12:01:09', 403),
(635, '14:25:00', 403),
(636, '18:21:20', 401),
(637, '18:27:00', 402),
(638, '18:54:00', 402),
(639, '09:13:00', 401),
(640, '10:07:00', 408),
(641, '10:12:44', 407),
(642, '11:00:28', 406),
(643, '11:01:00', 406),
(644, '11:01:00', 405),
(645, '11:28:00', 410),
(646, '12:22:00', 407),
(648, '13:35:00', 411),
(649, '15:02:36', 412),
(650, '16:34:53', 412),
(651, '17:49:00', 408),
(652, '18:01:00', 412),
(653, '08:43:00', 402),
(654, '11:14:00', 413),
(655, '11:14:00', 414),
(656, '11:24:00', 417),
(657, '18:12:33', 416),
(658, '18:12:00', 416),
(659, '18:15:05', 415),
(660, '08:42:32', 416),
(661, '09:12:00', 415),
(662, '09:20:00', 409),
(663, '09:20:00', 383),
(664, '09:20:00', 360),
(665, '09:36:00', 416),
(666, '10:16:56', 420),
(667, '10:17:27', 421),
(668, '12:00:12', 419),
(669, '12:00:19', 418),
(670, '13:05:04', 425),
(671, '15:41:00', 424),
(672, '15:59:00', 419),
(673, '16:00:00', 418),
(674, '17:51:00', 420),
(675, '18:01:38', 427),
(676, '18:12:08', 421),
(677, '18:12:00', 422),
(678, '18:12:00', 427),
(679, '18:15:00', 421),
(680, '09:58:46', 431),
(681, '10:24:00', 434),
(682, '10:33:00', 435),
(683, '11:03:00', 431),
(684, '12:05:27', 429),
(685, '12:05:37', 428),
(686, '12:18:01', 429),
(687, '13:45:00', 428),
(688, '14:00:19', 429),
(689, '14:35:10', 424),
(690, '14:37:00', 424),
(691, '14:56:00', 431),
(692, '15:00:59', 429),
(693, '15:01:01', 430),
(694, '15:46:00', 430),
(695, '16:39:00', 435),
(696, '16:41:33', 429),
(697, '17:15:00', 429),
(698, '17:20:30', 429),
(699, '17:21:00', 429),
(700, '17:23:31', 429),
(701, '17:30:00', 434),
(702, '18:00:00', 429),
(703, '18:10:57', 439),
(704, '09:30:23', 443),
(705, '11:11:00', 446),
(706, '11:14:00', 447),
(707, '11:20:35', 443),
(708, '11:22:00', 448),
(709, '12:02:51', 451),
(710, '12:03:12', 450),
(711, '15:00:25', 451),
(712, '16:02:00', 450),
(713, '16:24:34', 447),
(714, '16:47:00', 451),
(715, '17:00:00', 444),
(716, '17:09:00', 450),
(717, '17:09:00', 450),
(718, '18:02:17', 445),
(719, '18:11:00', 447),
(720, '18:22:00', 444),
(721, '18:22:00', 445),
(722, '18:23:00', 443),
(723, '09:39:14', 454),
(724, '10:51:00', 454),
(725, '10:51:22', 452),
(726, '10:52:15', 457),
(727, '10:53:00', 452),
(728, '11:15:19', 455),
(729, '12:00:54', 458),
(730, '14:38:00', 458),
(732, '15:01:21', 459),
(733, '16:01:00', 462),
(734, '16:36:00', 459),
(735, '17:26:00', 460),
(736, '18:04:00', 462),
(737, '18:09:00', 461),
(738, '18:28:00', 457),
(739, '18:29:00', 455),
(740, '12:01:00', 467),
(741, '12:02:00', 468),
(742, '13:13:00', 467),
(743, '13:13:00', 468),
(744, '13:16:00', 466),
(745, '13:25:22', 470),
(746, '13:37:00', 466),
(747, '13:48:05', 470),
(748, '13:50:00', 466),
(749, '13:51:00', 465),
(750, '15:02:45', 470),
(751, '16:38:00', 470),
(752, '16:42:00', 470),
(753, '17:43:00', 469),
(754, '18:09:00', 471),
(755, '18:11:00', 464),
(756, '13:29:00', 473),
(757, '14:17:00', 473),
(758, '14:27:25', 472),
(759, '14:27:32', 478),
(760, '14:44:00', 477),
(761, '15:01:03', 479),
(762, '15:46:00', 475),
(763, '17:40:00', 479),
(764, '18:04:00', 480),
(765, '18:14:00', 478),
(766, '18:14:00', 472),
(767, '09:44:00', 482),
(768, '09:56:00', 482),
(769, '12:01:00', 489),
(770, '12:02:32', 483),
(771, '12:03:17', 488),
(772, '13:15:02', 488),
(773, '13:23:04', 483),
(774, '13:23:00', 484),
(775, '14:12:16', 485),
(776, '14:12:00', 485),
(777, '15:01:02', 490),
(778, '15:02:54', 491),
(779, '17:44:52', 481),
(780, '18:23:00', 487),
(781, '18:26:00', 481),
(782, '18:50:00', 490),
(783, '17:32:00', 492),
(784, '09:42:02', 494),
(785, '10:03:07', 496),
(786, '11:27:59', 494),
(787, '14:35:21', 493),
(788, '17:47:24', 495),
(789, '17:53:00', 494),
(790, '18:28:41', 497),
(791, '14:00:00', 495),
(792, '14:00:25', 499);

-- --------------------------------------------------------

--
-- Table structure for table `time_progress_start`
--

CREATE TABLE `time_progress_start` (
  `id` int(11) NOT NULL,
  `time_start` time NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_progress_start`
--

INSERT INTO `time_progress_start` (`id`, `time_start`, `task_id`) VALUES
(369, '14:19:05', 232),
(370, '14:19:12', 231),
(371, '09:24:31', 234),
(372, '09:24:41', 235),
(373, '09:04:19', 237),
(374, '09:04:36', 238),
(375, '14:12:13', 239),
(376, '14:14:13', 240),
(378, '18:03:35', 240),
(379, '07:59:47', 240),
(380, '09:09:45', 242),
(381, '09:18:21', 241),
(382, '09:31:27', 239),
(383, '13:01:03', 241),
(384, '13:12:29', 242),
(387, '13:53:54', 243),
(388, '13:54:13', 244),
(389, '15:29:54', 243),
(390, '15:30:26', 244),
(391, '16:29:28', 242),
(392, '16:30:17', 241),
(394, '09:00:23', 247),
(395, '09:05:37', 246),
(396, '09:16:02', 241),
(397, '09:48:19', 242),
(398, '10:49:07', 249),
(399, '10:49:12', 248),
(400, '13:07:14', 248),
(401, '14:05:47', 247),
(402, '14:08:29', 246),
(403, '09:06:42', 251),
(404, '09:07:14', 246),
(405, '09:11:08', 250),
(406, '18:07:05', 247),
(407, '09:34:32', 253),
(408, '09:34:51', 251),
(409, '10:10:21', 252),
(410, '13:00:38', 253),
(411, '13:20:21', 256),
(412, '13:20:21', 257),
(413, '14:19:26', 254),
(414, '14:21:36', 255),
(415, '15:07:18', 252),
(416, '15:15:29', 253),
(417, '09:07:56', 260),
(418, '09:12:01', 261),
(419, '09:42:13', 258),
(420, '09:42:15', 259),
(421, '12:54:23', 261),
(422, '12:55:48', 261),
(423, '13:04:27', 260),
(424, '13:07:46', 262),
(425, '13:09:15', 263),
(426, '18:03:22', 261),
(427, '18:05:02', 260),
(428, '18:06:00', 260),
(429, '09:05:31', 264),
(430, '09:05:59', 262),
(431, '09:06:18', 265),
(432, '09:07:02', 263),
(433, '10:20:22', 267),
(434, '10:23:36', 266),
(435, '11:28:22', 272),
(436, '12:03:16', 266),
(437, '13:02:08', 266),
(438, '13:02:09', 267),
(439, '13:45:31', 269),
(440, '14:24:58', 273),
(441, '14:25:03', 274),
(442, '14:58:35', 270),
(443, '15:35:15', 274),
(444, '15:51:15', 273),
(445, '17:18:59', 273),
(446, '17:19:07', 266),
(447, '17:19:17', 267),
(448, '17:29:11', 274),
(449, '17:37:41', 273),
(450, '10:05:52', 275),
(451, '10:05:53', 276),
(452, '13:04:03', 276),
(453, '13:04:05', 275),
(455, '14:03:25', 278),
(457, '14:22:23', 277),
(461, '15:58:02', 283),
(462, '15:58:12', 284),
(463, '16:55:51', 279),
(464, '17:17:06', 280),
(465, '18:00:09', 280),
(466, '18:03:27', 283),
(467, '09:01:36', 287),
(468, '09:02:21', 286),
(469, '09:05:14', 288),
(470, '09:20:15', 284),
(471, '09:45:21', 291),
(472, '09:45:25', 292),
(473, '10:24:03', 287),
(474, '10:25:25', 286),
(475, '10:25:37', 294),
(478, '13:01:31', 294),
(479, '13:18:52', 286),
(480, '13:31:15', 295),
(481, '14:31:13', 292),
(482, '15:31:40', 292),
(483, '17:37:50', 287),
(484, '17:38:01', 286),
(485, '09:06:29', 300),
(486, '09:15:19', 302),
(487, '09:29:30', 306),
(488, '09:31:02', 305),
(489, '10:09:59', 297),
(490, '10:25:55', 304),
(491, '10:28:02', 301),
(492, '12:53:17', 304),
(493, '13:27:54', 302),
(494, '14:40:05', 299),
(495, '15:30:26', 304),
(496, '16:58:15', 306),
(497, '17:21:49', 303),
(498, '09:24:47', 308),
(499, '09:24:55', 307),
(500, '09:28:27', 310),
(501, '09:28:35', 309),
(502, '09:35:22', 299),
(503, '10:58:51', 307),
(504, '11:01:14', 297),
(505, '11:02:08', 315),
(506, '13:07:47', 314),
(507, '13:15:54', 317),
(509, '14:48:42', 318),
(510, '15:15:06', 313),
(511, '15:32:52', 318),
(512, '16:19:46', 312),
(513, '17:04:07', 311),
(514, '09:03:51', 322),
(515, '09:35:17', 321),
(516, '09:35:36', 320),
(517, '11:11:38', 325),
(519, '11:33:21', 319),
(520, '11:35:34', 327),
(521, '11:57:51', 329),
(522, '12:01:57', 329),
(523, '12:02:17', 315),
(525, '13:22:32', 322),
(526, '13:42:29', 327),
(527, '15:31:53', 322),
(528, '18:00:55', 326),
(529, '18:01:02', 323),
(530, '18:01:10', 321),
(531, '18:01:18', 320),
(532, '18:01:29', 324),
(533, '18:12:16', 307),
(534, '09:46:06', 264),
(535, '09:46:20', 250),
(536, '09:58:47', 335),
(537, '09:58:50', 336),
(538, '10:19:38', 330),
(539, '11:34:28', 338),
(540, '11:34:42', 337),
(541, '13:00:01', 338),
(542, '13:01:45', 337),
(543, '13:02:08', 330),
(544, '13:31:28', 340),
(545, '13:32:09', 339),
(546, '14:53:13', 339),
(547, '15:30:05', 340),
(548, '17:29:28', 339),
(549, '09:04:46', 344),
(550, '09:05:05', 345),
(551, '13:05:32', 345),
(552, '17:15:31', 344),
(553, '09:27:44', 347),
(554, '10:00:13', 322),
(555, '10:08:07', 350),
(556, '10:09:17', 348),
(557, '11:31:35', 349),
(558, '12:11:30', 349),
(559, '13:26:04', 349),
(560, '10:00:26', 357),
(561, '10:00:29', 358),
(562, '10:07:25', 352),
(563, '11:50:10', 360),
(564, '13:01:00', 352),
(565, '13:51:46', 362),
(566, '13:53:41', 362),
(568, '14:47:53', 353),
(569, '14:48:24', 354),
(571, '16:11:11', 352),
(574, '17:54:27', 357),
(575, '17:54:46', 357),
(576, '09:05:55', 353),
(577, '09:06:06', 363),
(578, '09:07:12', 354),
(579, '09:07:32', 364),
(580, '10:30:45', 366),
(583, '13:28:51', 366),
(584, '13:29:11', 365),
(586, '13:38:08', 366),
(587, '14:34:22', 366),
(589, '15:39:20', 366),
(590, '15:50:48', 367),
(591, '17:25:08', 367),
(592, '18:06:25', 358),
(594, '09:16:36', 376),
(595, '09:18:29', 357),
(596, '09:18:36', 374),
(597, '09:19:02', 375),
(598, '10:03:33', 373),
(601, '13:01:20', 376),
(602, '14:03:33', 377),
(603, '14:17:56', 371),
(604, '14:31:57', 376),
(605, '15:30:53', 376),
(606, '15:50:32', 380),
(607, '17:05:04', 376),
(608, '18:14:25', 372),
(609, '09:00:58', 371),
(610, '09:10:02', 381),
(611, '10:00:26', 387),
(612, '10:43:23', 382),
(613, '11:06:04', 389),
(615, '12:33:40', 384),
(616, '12:35:00', 372),
(619, '16:07:24', 387),
(620, '08:25:03', 381),
(621, '08:58:49', 383),
(622, '09:02:49', 392),
(623, '09:05:57', 373),
(624, '09:06:59', 396),
(625, '09:12:56', 391),
(626, '09:15:31', 382),
(627, '09:33:32', 394),
(628, '09:33:37', 393),
(629, '10:16:08', 395),
(630, '11:19:17', 392),
(631, '11:22:21', 397),
(632, '11:26:06', 391),
(633, '11:26:44', 394),
(636, '14:37:32', 397),
(637, '15:04:59', 400),
(638, '15:31:55', 400),
(639, '18:14:51', 391),
(640, '09:36:06', 402),
(641, '10:02:36', 401),
(642, '10:03:09', 392),
(643, '11:25:15', 404),
(644, '11:39:31', 403),
(645, '13:00:09', 403),
(646, '18:53:57', 402),
(647, '09:04:33', 408),
(648, '09:13:01', 407),
(649, '09:13:13', 401),
(650, '09:34:32', 410),
(651, '10:06:32', 405),
(652, '10:07:06', 406),
(653, '10:13:12', 409),
(654, '11:00:32', 406),
(655, '11:01:51', 408),
(656, '11:05:18', 407),
(657, '13:14:56', 411),
(658, '13:35:28', 412),
(659, '15:32:01', 412),
(660, '18:01:22', 412),
(661, '08:43:48', 402),
(662, '09:30:47', 414),
(663, '09:33:45', 413),
(664, '11:12:37', 416),
(665, '11:14:33', 415),
(666, '11:18:05', 417),
(667, '18:12:43', 416),
(668, '08:42:28', 416),
(669, '09:11:46', 420),
(670, '09:11:57', 415),
(671, '09:12:01', 421),
(672, '09:36:06', 416),
(673, '10:17:02', 419),
(674, '10:17:07', 418),
(675, '10:25:41', 425),
(676, '13:01:11', 418),
(677, '13:01:35', 419),
(678, '13:05:40', 424),
(679, '16:00:18', 420),
(680, '16:01:03', 421),
(681, '17:51:51', 427),
(682, '18:11:39', 422),
(683, '18:12:17', 427),
(684, '18:14:50', 421),
(685, '09:56:34', 435),
(686, '09:56:50', 431),
(687, '09:58:39', 434),
(688, '10:24:43', 431),
(689, '10:34:15', 428),
(690, '11:04:23', 429),
(691, '12:09:24', 429),
(692, '13:03:59', 428),
(693, '13:23:02', 429),
(694, '13:53:10', 430),
(695, '14:00:37', 431),
(696, '14:35:07', 424),
(697, '14:37:46', 424),
(698, '14:56:32', 429),
(699, '15:30:28', 430),
(700, '15:46:30', 435),
(701, '16:37:01', 429),
(702, '16:39:58', 439),
(703, '16:47:26', 429),
(704, '17:15:20', 429),
(705, '17:21:00', 429),
(706, '17:23:10', 434),
(707, '17:23:29', 429),
(708, '17:30:31', 429),
(709, '09:10:14', 443),
(710, '09:30:18', 446),
(711, '10:58:34', 447),
(712, '11:11:26', 443),
(713, '11:14:04', 450),
(714, '11:20:39', 448),
(715, '11:21:41', 451),
(716, '13:00:33', 451),
(717, '14:21:52', 450),
(718, '15:31:17', 451),
(719, '16:03:36', 447),
(720, '16:25:38', 450),
(721, '16:47:52', 444),
(722, '17:06:37', 444),
(723, '17:08:49', 445),
(724, '18:11:35', 447),
(725, '18:22:57', 445),
(726, '18:22:58', 443),
(727, '09:39:09', 454),
(728, '09:39:16', 454),
(729, '10:47:32', 457),
(730, '10:51:12', 452),
(731, '10:51:30', 452),
(732, '10:52:39', 455),
(733, '10:53:18', 458),
(734, '11:15:14', 459),
(735, '13:01:41', 458),
(737, '15:33:54', 459),
(738, '15:34:10', 462),
(739, '16:00:56', 460),
(740, '16:38:45', 461),
(741, '17:27:07', 462),
(742, '18:28:18', 457),
(743, '18:28:50', 455),
(744, '09:07:26', 468),
(745, '09:11:55', 467),
(746, '12:59:55', 468),
(747, '12:59:59', 467),
(748, '13:13:27', 466),
(749, '13:14:15', 465),
(750, '13:16:11', 470),
(751, '13:25:28', 466),
(752, '13:37:47', 470),
(753, '13:48:03', 466),
(754, '13:50:34', 470),
(755, '13:51:24', 469),
(756, '15:32:39', 470),
(757, '16:40:33', 470),
(758, '16:42:13', 471),
(759, '17:48:47', 464),
(760, '09:17:23', 473),
(761, '09:17:38', 472),
(762, '13:29:56', 473),
(763, '14:17:07', 477),
(764, '14:27:12', 478),
(765, '14:27:43', 475),
(766, '14:44:36', 479),
(767, '15:41:55', 479),
(768, '15:47:25', 478),
(769, '17:40:50', 480),
(770, '18:14:54', 472),
(771, '09:12:14', 483),
(772, '09:12:35', 482),
(773, '09:18:03', 481),
(774, '09:44:31', 482),
(775, '09:56:41', 489),
(776, '12:03:15', 488),
(777, '13:03:57', 484),
(778, '13:09:29', 488),
(779, '13:15:15', 483),
(780, '13:22:51', 485),
(781, '13:23:45', 490),
(782, '13:47:20', 487),
(783, '14:12:19', 491),
(784, '14:12:23', 485),
(785, '15:31:26', 490),
(786, '15:47:16', 491),
(787, '18:26:37', 481),
(788, '09:00:00', 492),
(789, '09:05:59', 494),
(790, '09:41:16', 496),
(791, '10:03:01', 494),
(792, '10:07:34', 495),
(793, '11:28:09', 493),
(794, '15:47:43', 494),
(795, '09:09:24', 497),
(796, '14:00:05', 495),
(797, '14:00:22', 499);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 = deactivated',
  `role` int(2) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `position` varchar(225) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email_address`, `password`, `status`, `role`, `position`, `date_created`) VALUES
(1, 'Obed', 'Ouano', 'oouano@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2022-07-28 21:00:51'),
(2, 'Gerald', 'Paradela', 'gparadela@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2022-07-28 21:02:41'),
(3, 'Jay-Ann', 'Castañares', 'jayann@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2022-07-28 22:05:13'),
(4, 'Mae Lanie', 'Ompad', 'lanie@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2022-07-28 22:07:20'),
(8, 'John Ervin ', 'Caballes', 'jcaballes@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2022-08-23 18:19:38'),
(10, 'Gabriel ', 'Corpuz', 'gcorpuz@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2022-08-25 22:07:10'),
(14, 'Mark Rickson', 'Plateros', 'mark.plateros@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2023-01-08 19:18:42'),
(15, 'Erik James', 'Suson', 'erik.suson@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2023-01-08 19:20:02'),
(16, 'Reyvander', 'Sanchez', 'reyvander.sanchez@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2023-01-08 19:21:06'),
(17, 'Regine', 'Heruela', 'regine.heruela@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer - Batch 8', '2023-01-17 22:33:00'),
(18, 'Karen May', 'Simbajon', 'karenmay.simbajon@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer - Batch 8', '2023-01-17 22:33:50'),
(20, 'Jay Garret ', 'Demerin', 'jagdemerin@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2023-02-06 21:10:03'),
(21, 'Jose Bebe Anthonie ', 'Emnacen', 'jbemnacen@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2023-02-06 21:11:00'),
(22, 'Charlene Mae', 'Escarda', 'charlenem.escarda@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer - Batch 9', '2023-02-13 17:09:35'),
(23, 'Kyruss ', 'Lopez', 'kyruss.lopez@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer - Batch 9', '2023-02-13 17:10:15'),
(24, 'Luis Miguel', 'Panta', 'luismiguel.panta@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer - Batch 10', '2023-03-06 18:36:44'),
(25, 'Diether', 'Seroylas', 'diether.seroylas@proweaver.com', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer - Batch 10', '2023-03-06 18:41:57'),
(26, 'User', 'Test', 'user.test@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer - Batch 10', '2023-03-06 19:55:08'),
(27, 'Lysa', 'Masuhay', 'lysa.masuhay@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer – Batch 11', '2023-03-16 23:53:46'),
(28, 'Kimberly', 'Estenzo', 'kestenzo@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2023-03-20 18:38:31'),
(29, 'Renzo Vince', 'Galacio', 'rv.galacio@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer – Batch 12', '2023-03-29 01:42:36'),
(30, 'Johnrey', 'Layaque', 'johnr.layaque@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer – Batch 12', '2023-03-29 01:43:13'),
(31, 'Scarlett  Marie', 'Manligis', 'scarlettmm@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer - Batch 13', '2023-04-16 22:46:42'),
(32, 'Arnulfo', 'Caceres', 'arncaceres@proweaver.net', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'Team Lead', '2023-04-18 00:02:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_subject`
--
ALTER TABLE `activity_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `activity_topics`
--
ALTER TABLE `activity_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_topics_file`
--
ALTER TABLE `activity_topics_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_topics_subjects`
--
ALTER TABLE `activity_topics_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_training`
--
ALTER TABLE `activity_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruction_list`
--
ALTER TABLE `instruction_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `position_name` (`position_name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tasks_errors`
--
ALTER TABLE `tasks_errors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_comments_child`
--
ALTER TABLE `task_comments_child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_qa`
--
ALTER TABLE `task_qa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_tracker`
--
ALTER TABLE `task_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_progress_end`
--
ALTER TABLE `time_progress_end`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_progress_start`
--
ALTER TABLE `time_progress_start`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_subject`
--
ALTER TABLE `activity_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `activity_topics`
--
ALTER TABLE `activity_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `activity_topics_file`
--
ALTER TABLE `activity_topics_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_topics_subjects`
--
ALTER TABLE `activity_topics_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_training`
--
ALTER TABLE `activity_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `instruction_list`
--
ALTER TABLE `instruction_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT for table `tasks_errors`
--
ALTER TABLE `tasks_errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `task_comments`
--
ALTER TABLE `task_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `task_comments_child`
--
ALTER TABLE `task_comments_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `task_qa`
--
ALTER TABLE `task_qa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `task_tracker`
--
ALTER TABLE `task_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `time_progress_end`
--
ALTER TABLE `time_progress_end`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=793;

--
-- AUTO_INCREMENT for table `time_progress_start`
--
ALTER TABLE `time_progress_start`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
