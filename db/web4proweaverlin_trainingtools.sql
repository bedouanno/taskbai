-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 02:13 AM
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
  `subject_desc` text NOT NULL,
  `subject_video` varchar(225) DEFAULT NULL,
  `subject_image` varchar(225) DEFAULT NULL,
  `subject_file` varchar(225) DEFAULT NULL,
  `subject_slug` varchar(80) NOT NULL,
  `activity_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_subject`
--

INSERT INTO `activity_subject` (`id`, `subject_title`, `subject_desc`, `subject_video`, `subject_image`, `subject_file`, `subject_slug`, `activity_id`) VALUES
(4, 'Anatomy of Website', '<p>Page title, URL, file name, header, footer, navigation, web page content are all parts to the anatomy of a web page.</p>\r\n', '', 'anatomy_website.jpg', NULL, 'anatomy-of-website', 7),
(5, 'Structuring of File/ Coding', '<p><strong>Organize your data and code</strong></p>\r\n\r\n<p>&raquo; Encapsulate everything within one directory.<br />\r\n&raquo; Separate raw data from derived data and other data summaries. ...<br />\r\n&raquo; Separate the data from the code. ...<br />\r\n&raquo; Use relative paths (never absolute paths). ...<br />\r\n&raquo; Choose file names carefully. ...<br />\r\n&raquo; Avoid using &ldquo;final&rdquo; in a file name. ...<br />\r\n&raquo; Write ReadMe files or Documented note.</p>\r\n', '', NULL, NULL, 'structuring-of-file-coding', 7),
(6, 'HTML/ CSS ', '<p>HTML (the Hypertext Markup Language) and CSS (Cascading Style Sheets) are two of the core technologies for building Web pages. HTML provides the structure of the page, CSS the (visual and aural) layout, for a variety of devices.</p>\r\n', NULL, NULL, NULL, 'html-css', 7);

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
(7, 'Day 1', '<p>Familiarize the website anatomy, standard used of HTML/CSS.</p>\r\n');

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
(56, 24, '08:39', NULL, NULL, '2023-03-08'),
(57, 25, '08:05', NULL, NULL, '2023-03-08'),
(58, 3, NULL, NULL, NULL, '2023-03-08'),
(59, 22, '14:01', '14:01', '05:01:00', '2023-03-08');

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
(21, 'Able Autism Therapy Services', 'Idris', 'info@ableaba.com', 'Health Care', '<p>Website Info: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/</a></p>\r\n\r\n<p><strong>FTP</strong><br />\r\nHost: <strong>192.249.120.185</strong><br />\r\nUsername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\nPassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong></p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: <strong>webprosite19_training01</strong><br />\r\nUsername: <strong>webprosite19_trainingusr</strong><br />\r\nPassword: <strong>tts6d@iy8JN)</strong></p>\r\n', '<p><strong>Wordpress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/atid0147.php\">https://web4.proweaverlinks.com/MAINTENANCE/ableautismis331/atid0147.php</a><br />\r\nUsername: <strong>ableautismis</strong><br />\r\nPassword: <strong>E0I!mUOgp%EXw&amp;ShT1</strong></p>\r\n', 0, 1, 0, 1, '2022-03-29 05:25:12', 'Anna'),
(24, 'Empathy Health Services, Inc.', 'Janice Manase', 'empathyhealthservices@gmail.com', 'HEALTH CARE: Home Health Care', '<blockquote>\r\n<p><em>To be provided...</em></p>\r\n</blockquote>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-03-30 18:23:00', NULL),
(25, 'Karma Healthcare Staffing Consultants ', 'Isaac Newston', 'isaac@karmahealthcare.com', 'Health Care', '<p><strong>Website Link</strong></p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>FTP</strong><br />\r\nhost: 192.249.120.185<br />\r\nusername: protech@web4.proweaverlinks.com<br />\r\npassword: w3Bc0n*wYe#[YafX-5)&amp;2019!</p>\r\n\r\n<p><br />\r\n<strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\" target=\"_blank\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: webprosite19_training11<br />\r\nUsername: webprosite19_trainingusr<br />\r\nPassword: tts6d@iy8JN)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Wordpress Login Details:<br />\r\n<a href=\"http://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/hsjo0202.php\" target=\"_blank\">http://web4.proweaverlinks.com/MAINTENANCE/karmahealthua015/hsjo0202.php</a><br />\r\nUsername: karmahealthua<br />\r\nPassword: gyCh*h3&amp;W/9&amp;s61</p>\r\n', 0, 1, 0, 3, '2022-03-30 19:10:52', 'Amanda'),
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
(38, 'Excellence Safe Home Care', 'Tosheta', 'lahlege@gmail.com', 'HEALTHCARE: Non-Medical Home Care: 65+ years old Elderly / Seniors and Disabled', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout02</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-12 00:03:02', 'Michelle'),
(39, 'Family First in Home Care Services, Inc', 'CRAIG MELEKEN', 'cmeleken@aol.com', 'HEALTHCARE: Non-Medical Home Care: 65+ years old Elderly / Seniors and Disabled', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout03</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path:<strong> /TRAINING</strong></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-12 00:06:21', 'Sofia'),
(42, 'Proweaver', '-', 'proweaver@mail.net', '-', '<p>-</p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-12 04:01:44', '-'),
(43, 'TRIO PROPERTY BUYERS', 'Bed', 'obed.ouano@proweaver.net', 'Real Estate', '<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout01</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n</div>\r\n', '<div class=\"content-custom mb-0\">\r\n<p><strong>WordPress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/TRAINING/bed/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/bed/authenticationlogin.php</a><br />\r\nUsername: <strong>triopropertybuyers</strong><br />\r\nPassword: <strong>TrioPropertyBuyers@#2022</strong></p>\r\n</div>\r\n', 0, 1, 0, 1, '2022-04-12 18:40:14', 'Vera'),
(46, 'Pioneer Transport Inc.', 'George Berry', 'gb@pioneerti.net', 'BUSINESS SERVICES: Transportation', '<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout05</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n</div>\r\n', '<p>Wordpress Access:</p>\r\n\r\n<p>Username: pioneertransportinc</p>\r\n\r\n<p>Password: PioneerTransportINC!@2023</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/charlenemae/pioneertransportinc/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/charlenemae/pioneertransportinc/authenticationlogin.php</a></p>\r\n', 0, 1, 0, 1, '2022-04-24 22:39:01', 'Ivy'),
(47, 'MPA Healthcare Staffing Agency LLC', 'Martha Johannes', 'mj@mpahsa.com', 'STAFFING: Healthcare Staffing', '<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout06</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n</div>\r\n', '<div class=\"align-items-center no-gutters row\">\r\n<div class=\"col mr-0\">\r\n<div class=\"justify-content-between row\">\r\n<div class=\"col-lg-11 font-weight-bold text-success text-uppercase text-xs\">Task and URL</div>\r\n</div>\r\n\r\n<div class=\"content-custom mb-0\">\r\n<p>Uploaded website files</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/karen/mpahealthcarestaffingagencyllc/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/karen/mpahealthcarestaffingagencyllc/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<hr />\r\n<div class=\"align-items-center no-gutters row\">\r\n<div class=\"col mr-0\">\r\n<div class=\"justify-content-between row\">\r\n<div class=\"col-lg-11 font-weight-bold text-success text-uppercase text-xs\">Next Step</div>\r\n</div>\r\n\r\n<div class=\"content-custom mb-0\">\r\n<p>For review</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<hr />\r\n<div class=\"align-items-center no-gutters row\">\r\n<div class=\"col mr-0\">\r\n<div class=\"justify-content-between row\">\r\n<div class=\"col-lg-11 font-weight-bold text-success text-uppercase text-xs\">Additional Notes</div>\r\n</div>\r\n\r\n<div class=\"content-custom mb-0\">\r\n<p>Wordpress login details:</p>\r\n\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/karen/mpahealthcarestaffingagencyllc/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/karen/mpahealthcarestaffingagencyllc/</a></p>\r\n\r\n<p><strong>username: </strong>mpahealthcarestaffingagencyllc</p>\r\n\r\n<p><strong>password:</strong> mpahealthcarestaffingagencyllc#*2023</p>\r\n</div>\r\n</div>\r\n</div>\r\n', 0, 1, 0, 1, '2022-04-24 22:40:38', 'Amanda'),
(48, 'Eva Pharmacy', 'Elizabeth Onyekwere', 'eo@gmail.com', 'PHARMACY: Retail Pharmacy', '<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout07</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n</div>\r\n', '<p>-</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 1, 0, 1, '2022-04-24 23:23:25', 'Carla'),
(49, 'Sufficient Enough Home Care Agency LLC', 'Yvonne Cochran', 'yvonnec@gmail.com', 'HEALTH CARE: Home Care', '<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout08</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n</div>\r\n', '<p><strong>WordPress dashboard login details:</strong><br />\r\nLink:&nbsp;<a href=\"https://web4.proweaverlinks.com/TRAINING/maelanie/authenticationlogin.php\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/maelanie/authenticationlogin.php</a><br />\r\nusername: sufficientenoughthca<br />\r\npassword: SEHCALLC+=2023</p>\r\n', 0, 1, 0, 1, '2022-04-24 23:26:41', 'Lyn '),
(51, 'Nextdoor Rx, Inc. ', 'Ahmad Almasri, Mokhtare, Jila G', 'nextdoorrx@gmail.com', 'PHARMACY: Specialty Pharmacy', '<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout10</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-25 01:01:50', 'Carla'),
(52, 'Lavena Home Health', 'Ms. Zorena or Mr. David', 'zorena@lhh.com', '-', '<div class=\"mb-0 text-gray-800\">\r\n<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout11</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path:<strong> /webconpractice/</strong></p>\r\n</div>\r\n</div>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-25 01:04:06', 'Carmen'),
(53, 'Excellence Transit LLC', 'Sizor Lege', 'sl@gmail.com', 'TRANSPORTATION: Medical Transportation: Non-emergency Medical Transportation', '<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout09</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/webconpractice/</strong></p>\r\n</div>\r\n', '<p>-</p>\r\n', 0, 1, 0, 1, '2022-04-25 02:34:39', 'Michelle'),
(59, 'Dirt WorX ', ' Tracy ', 'tlt0925@yahoo.com', ' BUSINESS SERVICES: Construction ', '<p>Website Link:</p>\r\n\r\n<p><a href=\"https://www.dirtworxfl.com/\" target=\"_blank\">https://www.dirtworxfl.com/</a></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-03 23:17:20', 'Ruby'),
(60, 'Caring With Miracle Hands ', 'Rebekah Middlebrooks ', 'cwmh2016@gmail.com', 'HEALTHCARE: Non-Medical Home Care ', '<p>Website Link:</p>\r\n\r\n<p><a href=\"http://www.cwmhhomecare.com/\" target=\"_blank\">http://www.cwmhhomecare.com/</a></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-03 23:21:01', 'KaTe'),
(61, 'Higher Standards Home Health ', ' Ms. Christina Orlowski ', 'tina@higherstandards.us.com', 'HEALTHCARE: Home Health Care ', '<p>Website Link:</p>\r\n\r\n<p><a href=\"https://www.higherstandardshomehealth.com/\" target=\"_blank\">https://www.higherstandardshomehealth.com/</a></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-03 23:23:52', 'Leah'),
(62, 'Provision Home Care ', '-', 'nille1178@yahoo.com', ' HEALTHCARE: Non-Medical Home Care: 65+ years old Elderly / Seniors and Disabled ', '<p>Website Link:</p>\r\n\r\n<p><a href=\"https://www.provisionshomecare.com/\" target=\"_blank\">https://www.provisionshomecare.com/</a></p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-03 23:26:53', 'Nancy'),
(63, 'Custom Wood Floors By Ferrucci', 'Ron', 'ronron@proweaver.net', 'SPECIALTY: Professional', '<div class=\"mb-0 text-gray-800\">\r\n<div class=\"mb-0 text-gray-800\">\r\n<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout12</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n', '<p><strong>WordPress&#39; access:</strong></p>\r\n\r\n<div class=\"content-custom mb-0\">\r\n<p><a href=\"https://web4.proweaverlinks.com/TRAINING/regine/customwoodfloorsbyferrucci/\" target=\"_blank\">https://web4.proweaverlinks.com/TRAINING/regine/customwoodfloorsbyferrucci/</a><br />\r\nusername: customwoodfloorsbyferrucci<br />\r\npassword: Customwoodfloorsbyferrucci2023*.</p>\r\n</div>\r\n', 0, 1, 0, 1, '2022-05-16 20:01:32', 'Amanda'),
(64, 'INTEGRITY CARE LLC', ' Oluranti Ladapo ', 'integritycarewl@gmail.com', 'in-home care and non-emergency medical transportation / check website for sure', '<p>-</p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-16 22:15:20', 'Debbie'),
(65, 'America\'s Nursing, Inc. ', ' Mary Accinelli ', 'maccinelli@americasnursing.com', ' HEALTHCARE: Home Health Care ', '<p>-</p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-16 22:23:01', 'Anna'),
(66, 'STAFFING SOLUTIONS PLUS, LLC ', ' Marc Sanon ', 'hhstaffings@gmail.com', ' STAFFING: General Staffing ', '<p>-</p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-16 22:27:46', 'Jona'),
(67, 'Our Golden Years LLC ', ' Arthur Alcones ', 'aoalcones@yahoo.com', 'Assisted Living', '<p>-</p>\r\n', '<p>-</p>\r\n', 0, 1, 0, 26, '2022-05-16 22:33:07', 'Vera'),
(68, 'Advanced Healthcare Staffing Solutions', 'Wanda', 'wandavision@gmail.com', 'STAFFING: Healthcare Staffing', '<div class=\"mb-0 text-gray-800\">\r\n<div class=\"mb-0 text-gray-800\">\r\n<div class=\"mb-0 text-gray-800\">\r\n<div class=\"mb-0 text-gray-800\">\r\n<p><strong>Database Information:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/phpmyadmin\" target=\"_blank\">https://web4.proweaverlinks.com/phpmyadmin</a><br />\r\nDatabase Name: <strong>web4proweaverlin_traininglayout04</strong><br />\r\nUsername: <strong>web4proweaverlin_trainingusrv2&nbsp;&nbsp; &nbsp;</strong><br />\r\nPassword: <strong>;T%!ikL7$nL%zt*]&nbsp;</strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />\r\nHOST: <strong>localhost</strong></p>\r\n\r\n<p><strong>FTP Access:</strong><br />\r\nhost: <strong>192.249.120.185</strong><br />\r\nusername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\npassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong><br />\r\nFile path: <strong>/TRAINING/</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '<p><strong>WordPress Login Details:</strong></p>\r\n\r\n<p>https://web4.proweaverlinks.com/TRAINING/kyruss/advancehealthcarestaffingsolutions/authenticationlogin.php<br />\r\nUsername: advancehealthcarestaffingsolutions<br />\r\nPassword: AdvanceHealthSS#@2023</p>\r\n', 0, 1, 0, 1, '2022-06-06 18:31:01', 'Amanda'),
(70, 'Align Medical Staffing', 'Andrea', 'andrea@gmail.com', 'STAFFING: Healthcare Staffing', '<div class=\"mb-0 text-gray-800\">\r\n<p>Website Info: <a href=\"https://web4.proweaverlinks.com/MAINTENANCE/alignmedea368/\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/alignmedea368/</a></p>\r\n\r\n<p><strong>FTP</strong><br />\r\nHost: <strong>192.249.120.185</strong><br />\r\nUsername: <strong>protech@web4.proweaverlinks.com</strong><br />\r\nPassword: <strong>w3Bc0n*wYe#[YafX-5)&amp;2019!</strong></p>\r\n\r\n<p><strong>Database</strong><br />\r\n<a href=\"https://web.proweaverwebsites.com/phpmyadmin1/\">https://web.proweaverwebsites.com/phpmyadmin1/</a><br />\r\nDatabase Name: <strong>webprosite19_training02</strong><br />\r\nUsername: <strong>webprosite19_trainingusr</strong><br />\r\nPassword: <strong>tts6d@iy8JN)</strong></p>\r\n</div>\r\n', '<div class=\"mb-0 text-gray-800\">\r\n<p><strong>WordPress Login Details:</strong><br />\r\n<a href=\"https://web4.proweaverlinks.com/MAINTENANCE/alignmedea368/hsaa0110.php\" target=\"_blank\">https://web4.proweaverlinks.com/MAINTENANCE/alignmedea368/hsaa0110.php</a><br />\r\nUsername: <strong>alignmedhcea</strong><br />\r\nPassword: <strong>9@Id51q$s)+TnA1</strong></p>\r\n</div>\r\n', 0, 1, 0, 1, '2022-06-19 18:35:01', 'Amanda');

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
(283, 237, '<p>example task</p>\r\n');

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
(2, 'Team Lead'),
(3, 'Developer - Batch 10');

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
(231, 'Activity 1 - Layout Conversion  03 07 23 (Other)', 42, '2023-03-06 21:22:17', '2023-03-22', '2023-03-22 19:33:49', '0000-00-00 00:00:00', 0, 4, 1, 0, 'layout-7-file.zip', 0, '<p>Converted Website -</p>\r\n\r\n<p><a href=\"https://drive.google.com/drive/folders/1Nr7u0BViVxk-4mHS6_mPCbXoAur2YjWg?usp=sharing\" target=\"_blank\">https://drive.google.com/drive/folders/1Nr7u0BViVxk-4mHS6_mPCbXoAur2YjWg?usp=sharing</a></p>\r\n', NULL, '<p>-</p>\r\n', '<p>-</p>\r\n', 0),
(232, 'Activity 1 - Layout Conversion  03 07 23 (Other)', 42, '2023-03-06 21:22:35', '2023-03-22', '2023-03-22 19:33:49', '0000-00-00 00:00:00', 0, 10, 1, 0, 'layout-4-file.zip', 0, '<p><a href=\"https://drive.google.com/drive/folders/19VzaKp78NJiia6rjA3K1DMeSHocwBFa4?usp=sharing\" target=\"_blank\"><span style=\"color:#ffffff\"><span style=\"background-color:#2ecc71\">https://drive.google.com/drive/folders/19VzaKp78NJiia6rjA3K1DMeSHocwBFa4?usp=sharing</span></span></a></p>\r\n', '', '', '', 0),
(234, 'Activity 1 - Layout Conversion 03 07 23 (Other) ', 42, '2023-03-07 17:04:04', '2023-03-08', '2023-03-08 09:16:14', '0000-00-00 00:00:00', 0, 24, 1, 0, NULL, 2, NULL, NULL, NULL, NULL, 1),
(235, 'Activity 1 - Layout Conversion 03 07 23 (Other) ', 42, '2023-03-07 17:04:29', '2023-03-22', '2023-03-22 19:33:50', '0000-00-00 00:00:00', 0, 20, 1, 0, NULL, 0, '<p>test</p>\r\n', '<p>testttt</p>\r\n', '<p>test1</p>\r\n', '<p>testrrrr</p>\r\n', 0),
(237, 'Able Autism Therapy Services 03 13 23 (Sample)', 21, '2023-03-13 18:20:26', '2023-03-13', '2023-03-13 18:20:26', '0000-00-00 00:00:00', 0, 22, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, 0);

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
(6, 237, 1, '<p>test</p>\r\n erer', '2023-03-17 10:36:10'),
(7, 234, 1, '<p>testss</p>\r\n', '2023-03-22 19:50:55'),
(8, 232, 1, '<p>testest</p>\r\n', '2023-03-22 19:51:00');

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
(22, 27, 237);

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
(366, '19:32:00', 235);

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
(372, '09:24:41', 235);

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
(26, 'User', 'Test', 'user.test@proweaver.net', '0f2a65dde6a346464229988fb49c5ad1', 1, 2, 'Developer - Batch 10', '2023-03-06 19:55:08');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `activity_training`
--
ALTER TABLE `activity_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `instruction_list`
--
ALTER TABLE `instruction_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `tasks_errors`
--
ALTER TABLE `tasks_errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `task_comments`
--
ALTER TABLE `task_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `task_comments_child`
--
ALTER TABLE `task_comments_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `task_qa`
--
ALTER TABLE `task_qa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `time_progress_end`
--
ALTER TABLE `time_progress_end`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `time_progress_start`
--
ALTER TABLE `time_progress_start`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
