-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2026 at 02:11 PM
-- Server version: 10.6.23-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `migration2026-v1_5`
--
CREATE DATABASE IF NOT EXISTS `migration2026-v1_5` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci;
USE `migration2026-v1_5`;

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) NOT NULL,
  `tel2` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `map` text DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `address2` varchar(500) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `reg` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `hours` varchar(500) DEFAULT NULL,
  `fb` varchar(500) DEFAULT NULL,
  `tw` varchar(500) DEFAULT NULL,
  `in_social` varchar(500) DEFAULT NULL,
  `li` varchar(500) DEFAULT NULL,
  `yt` varchar(500) DEFAULT NULL,
  `whatsappbtn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `tel`, `tel2`, `email`, `map`, `address`, `address2`, `state`, `postal_code`, `website`, `reg`, `vat`, `hours`, `fb`, `tw`, `in_social`, `li`, `yt`, `whatsappbtn`) VALUES
(1, '0112223333', '', 'info@zilo-interns.co.za', NULL, 'Test Street', 'Bryanston', 2, 2088, 'https://www.zilo-interns.co.za', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `topic` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_text`
--

CREATE TABLE `email_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `email_subject` varchar(255) NOT NULL,
  `email_brief` varchar(255) DEFAULT NULL,
  `view` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `email_text`
--

INSERT INTO `email_text` (`id`, `name`, `text`, `email_subject`, `email_brief`, `view`) VALUES
(1, 'Signup - User', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Welcome to [[sitename]]!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"center\">Thank you for creating your account.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">Thank you for joining us<br /><br />Your login details are:<br />Username: [[email]]<br />Password: [[pass]]<br /><br />Please confirm your email address by clicking on the link below:<br />[[confirmemaillink]]<br /><br /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">*You can change your password when you login<br />Please click the following link to log in to your account and experience [[sitename]]</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Signup Confirmation From [[sitename]]', 'Signup Confirmation From [[sitename]]', '1general'),
(2, 'Nominations Have Opened - User', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Hi [[name]]!</td>\n</tr>\n<tr>\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"center\">Nominations are now open!</td>\n</tr>\n<tr>\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\n<p style=\"text-align: center;\">Please log into your account to submit your nominations.<br><br><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-ZA; mso-fareast-language: EN-ZA; mso-bidi-language: AR-SA;\">Next trimester:<br></span>[[trimester_start]] - [[trimester_end]]</p>\n<p style=\"margin: 0cm; text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">Make sure you spread your preferences evenly over the four months. Your allocated days cannot all be in one or two of the months.</span></p>\n<p style=\"margin: 0cm; text-align: center;\">&nbsp;</p>\n<p style=\"margin: 0cm; text-align: center;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">1)&nbsp; HOLIDAY BLOCKS SELECTION:</span></strong></p>\n<p style=\"margin: 0cm; text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p style=\"margin: 0cm; text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">You are entitled to <span style=\"color: red;\">[[grouping_max]] x</span> <span style=\"color: red;\">grouping blocks</span>. We cannot split blocks (1 day from 1 block and 1 day from another block &ndash; they must both be in the same block).&nbsp;</span></p>\n<p style=\"margin: 0cm; text-align: center;\"><br><br></p>\n<p style=\"margin: 0cm; text-align: center;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">2) WEEKEND SELECTION:</span></strong></p>\n<p style=\"margin: 0cm; text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">You are entitled to <span style=\"color: red;\">[[weekend_max]]</span><span style=\"color: red;\">&nbsp;weekend days</span>.</span></p>\n<p style=\"margin: 0cm; text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">A weekend day is a Saturday OR a Sunday OR a Public Holiday.&nbsp;&nbsp;</span></p>\n<p style=\"margin: 0cm; text-align: center;\">&nbsp;</p>\n<p style=\"margin: 0cm; text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">If you do prefer a full weekend, select Saturday as option 1 and then Sunday as option 2, and make a note on the form that you would like the weekend. We can allocate full weekends, but we have to ensure it is fairly spread out among owners over the four months.</span></p>\n<p style=\"margin: 0cm; text-align: center;\">&nbsp;</p>\n<p style=\"margin: 0cm; text-align: center;\">&nbsp;</p>\n<p style=\"margin: 0cm; text-align: center;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">3) WEEKDAY SELECTION:</span></strong></p>\n<p style=\"margin: 0cm; text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;&nbsp;</span></p>\n<p style=\"margin: 0cm; text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">You are entitled to <span style=\"color: red;\">[[weekdays_max]] weekdays</span>. Please specify your options in order of preference for each month, option 1 being your favourite selection. Make sure you spread your preferences evenly over the four months.</span></p>\n<p style=\"margin: 0cm; text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">&nbsp;</span></p>\n<p style=\"margin: 0cm; text-align: center;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">Special days/ request</span></strong></p>\n<p style=\"margin: 0cm; text-align: center;\">&nbsp;</p>\n<p style=\"margin: 0cm; text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif;\">If you have any requests for special events, please make a note of these on your nomination form. Make sure you select them as your first options so we know these are your top preferences. We will do our best to accommodate these requests but cannot guarantee you will get those days.</span></p>\n<p class=\"MsoNormal\" style=\"text-align: center;\">&nbsp;</p>\n<p style=\"text-align: center;\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-ZA; mso-fareast-language: EN-ZA; mso-bidi-language: AR-SA;\">If you have any questions, please feel free to contact us at </span><span style=\"font-size: 11.0pt; font-family: \'Calibri\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-ZA; mso-fareast-language: EN-ZA; mso-bidi-language: AR-SA;\"><a style=\"text-decoration-line: none;\" href=\"mailto:adminbsa@syndicationaustralia.com.au\" target=\"_blank\" rel=\"noopener\"><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif; color: #0563c1;\">adminbsa@syndicationaustralia.com.au</span></a></span><span style=\"font-size: 12.0pt; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-ZA; mso-fareast-language: EN-ZA; mso-bidi-language: AR-SA;\">&nbsp;&nbsp;or call us on&nbsp;<span style=\"color: #4472c4;\">9960 1808.</span></span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n</td>\n</tr>\n<tr>\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\n<p style=\"text-align: center;\">Please click the following link to log in to your account and submit your nominations<br><br></p>\n<p style=\"text-align: center;\">Kind Regards<br>[[sitename]]</p>\n</td>\n</tr>\n</tbody>\n</table>', 'Nominations Have Opened on [[sitename]]', 'Please login to submit your nominations [[sitename]]', 'nominations'),
(3, 'Happy Birthday - User', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\"><span style=\"font-size: 24.0pt; font-family: \'Freestyle Script\'; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Calibri; color: #1f497d; mso-ansi-language: EN-ZA; mso-fareast-language: EN-ZA; mso-bidi-language: AR-SA;\">Dear [[name]],</span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"center\">\r\n<p class=\"MsoNormal\"><span style=\"font-size: 36.0pt; font-family: \'Freestyle Script\'; color: #1f497d;\">Happy Birthday - warm summer wishes for your Birthday this Month!</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><img src=\"../../uploads/emails/uploads/1b2c49026e0415bde891c3e12f49073f.png\" alt=\"\" width=\"483\" height=\"694\"></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><span style=\"font-size: 36.0pt; font-family: \'Freestyle Script\'; color: #1f497d;\">A boat load of best wishes from Andy, Belinda &amp; the BSA Team!</span></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">Kind Regards<br>Boating Syndication Australia<br>Head Office<br>Suite 4, Ferguson Boatshed Marina, Mosman NSW 2088&nbsp;<br>Direct: 02 9960 1808 ( then option 1 for Head office at the Spit)<br>Office hours 8am &ndash; 4pm Mon to Sat<br>Email:adminbsa@syndicationaustralia.com.au&nbsp;<br><br></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Warm wishes for your Birthday this Month | [[sitename]]', 'Warm wishes for your Birthday this Month | [[sitename]]', '1general'),
(4, 'Password Reset - User', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: rgb(51, 51, 51); padding-top: 30px; width: 100%;\" align=\"center\">Dear [[name]]!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0px 0px; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: rgb(102, 102, 102); width: 100%;\" align=\"left\">\r\n<p style=\"text-align: center;\">A password reset was recently requested on your account.<br>If this is not you please lock your account or contact support.</p>\r\n<p style=\"text-align: center;\"><br>Please follow the link or the button below to reset your password.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Password Reset | [[sitename]]', 'Forgot your password? | [[sitename]]', 'password_reset'),
(5, '---- - User', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Dear [[name]]!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">Your account password was reset recently.</p>\r\n<p style=\"text-align: center;\">If this was not you please lock your account or contact support.</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Password Reset on your account | [[sitename]]', 'Your password was reset on your account | [[sitename]]', 'password_reset'),
(6, 'Booking Confirmation - User', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Dear [[name]]!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">Your booking is coming up shortly.</p>\r\n<p style=\"text-align: center;\">Please confirm whether you will use this or not using the links/buttons at the end of the email.<br><br><strong>Booking Details:</strong><br>Boat: [[boat]]<br>Booking Date:[[booking_date]]<br>Trimester: [[trimester]]<br>[[location]]<br><br></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Confirm Your Booking | [[sitename]]', 'Please let us know if you are still using your booking | [[sitename]]', 'bookings/booking_confirm'),
(7, 'Booking Confirmation - Admin', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Dear Admin!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">A Booking has been confirmed<br><br><strong>Booking Details:</strong><br>Boat: [[boat]]<br>Booking Date: [[booking_date]]<br>Owner: [[name]] [[lastname]]<br>Owner Email: [[email]]<br>Trimester: [[trimester]]<br>Location: [[location]]</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Booking Confirmed - [[boat]] - [[booking_date]] - [[name]] [[lastname]]', 'An owner has confirmed their booking | [[sitename]]', 'bookings/booking_confirmed'),
(8, 'Booking Cancelled - Admin', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Dear Admin!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">A Booking has been CANCELLED and you can choose to either use this day or cancel the booking below and notify the other owners of the available day.<br><br><strong>Booking Details:</strong><br>Boat: [[boat]]<br>Booking Date: [[booking_date]]<br>Owner: [[name]] [[lastname]]<br>Owner Email: [[email]]<br>Trimester: [[trimester]]<br>Location: [[location]]</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Booking Cancelled Approval Needed  - [[boat]] - [[booking_date]] - [[name]] [[lastname]]', 'An owner has cancelled their booking | [[sitename]]', 'bookings/booking_cancelled_admin'),
(9, 'Booking Cancelled - Owners', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">A Booking spot has opened for you to book</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">An owner has cancelled a booking, and it has now opened for you to book this date, should you have any available allocations to do so.</p>\r\n<p style=\"text-align: center;\">Login to book this before this spot gets taken, as remember its first come first serve.</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><strong>Day Opened:</strong><br>Boat: [[boat]]<br>Booking Date: [[booking_date]]<br>Trimester: [[trimester]]<br>Location: [[location]]</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Booking Cancelled |  - [[boat]] - [[booking_date]] ', 'An owner has cancelled their booking | [[sitename]]', 'bookings/booking_cancelled'),
(10, 'Booking Cancelled Notification - Admin', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Dear Admin!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">A Booking has been CANCELLED in due time.<br>This is just a notification to remind you that a day has opened up.<br><br><strong>Booking Details:</strong><br>Boat: [[boat]]<br>Booking Date: [[booking_date]]<br>Owner: [[name]] [[lastname]]<br>Owner Email: [[email]]<br>Trimester: [[trimester]]<br>Location: [[location]]</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Booking Cancelled  - [[boat]] - [[booking_date]] - [[name]] [[lastname]]', 'An owner has cancelled their booking | [[sitename]]', 'bookings/booking_cancelled'),
(11, 'Booking Made - Admin', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Dear Admin!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">A booking was made on the system.</p>\r\n<p style=\"text-align: center;\"><strong>Booking Details:</strong><br>Boat: [[boat]]<br>Booking Date/s: [[dates]]<br>Owner: [[name]] [[lastname]]<br>Owner Email: [[email]]<br>Trimester: [[trimester]]<br>Location: [[location]]</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Booking was made on the system - [[boat]] - [[booking_date]] - [[name]] [[lastname]]', 'An owner has made a booking on the system | [[sitename]]', 'bookings/booking_made'),
(12, 'Standby day Booking Made - Admin', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Dear Admin!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">A <strong>Standby Day</strong> Booking was made recently. Please see the details below</p>\r\n<p style=\"text-align: center;\"><strong>Booking Details:</strong><br>Boat: [[boat]]<br>Standby Booking Date: [[dates]]<br>Owner: [[name]] [[lastname]]<br>Owner Email: [[email]]<br>Trimester: [[trimester]]<br>Location: [[location]]</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'A Standby day Booking -  - [[boat]] - [[booking_date]] - [[name]] [[lastname]]', 'An owner has made a booking on a standby day  | [[sitename]]', 'bookings/booking_standby'),
(13, 'Extras Booked - Admin', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Dear Admin!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">An Extra was added to a booking.</p>\r\n<p style=\"text-align: center;\"><strong>Extras:</strong><br>[[extras]]<br><br><strong>Booking Details:</strong><br>Boat: [[boat]]<br>Booking Date: [[booking_date]]<br>Owner: [[name]] [[lastname]]<br>Owner Email: [[email]]<br>Trimester: [[trimester]]<br>Location: [[location]]</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Extras Added on a Booking - [[boat]] - [[booking_date]] - [[name]] [[lastname]]', 'An owner has chosen some extras for a booking | [[sitename]]', 'bookings/booking_extras'),
(14, 'Extras Updated - Admin', '<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"font-size: 25px; font-family: Helvetica, Arial, sans-serif; color: #333333; padding-top: 30px;\" align=\"center\">Dear Admin!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<p style=\"text-align: center;\">An Extra was added to a booking.</p>\r\n<p style=\"text-align: center;\"><strong>Extras:</strong><br>[[extras]]<br><br><strong>Booking Details:</strong><br>Boat: [[boat]]<br>Booking Date: [[booking_date]]<br>Owner: [[name]]<br>Owner Email: [[email]]<br>Trimester: [[trimester]]<br>Location: [[location]]</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Extras Updated on a Booking | [[sitename]]', 'An owner has added/removed some extras for a booking | [[sitename]]', 'bookings/booking_extras'),
(15, 'Automated Reports - Client', '', 'Your Automated Report | [[sitename]]', 'Your automated page report has been generated and is attached | [[sitename]]', '3report'),
(16, 'Automated Alerts - Client', '', 'Your Automated Alert | [[sitename]]', 'Your automated audit alert has been generated and is attached | [[sitename]]', '4alert');

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `device` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `privacy`
--

INSERT INTO `privacy` (`id`, `lang`, `name`, `text`) VALUES
(1, 'en', 'Terms & Conditions', '<p>The following outlines our terms and conditions for use of the Boating Syndication Australia online platform</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Terms and conditions of use of the Boating Syndication Australia website, a division of Syndication Australia</p>\n<ol>\n<li><strong> INTRODUCTION</strong></li>\n</ol>\n<p>1.1&nbsp;&nbsp;&nbsp;&nbsp; These terms and conditions shall govern your use of our website.</p>\n<p>1.2&nbsp;&nbsp;&nbsp;&nbsp; By using our website, you accept these terms and conditions in full; accordingly, if you disagree with these terms and conditions or any part of these terms and conditions, you must not use our website.</p>\n<p>1.3&nbsp;&nbsp;&nbsp;&nbsp; If you register with our website, submit any material to our website or use any of our website services, we will ask you to expressly agree to these terms and conditions.</p>\n<p>1.4&nbsp;&nbsp;&nbsp;&nbsp; You must be at least [18] years of age to use our website; and by using our website or agreeing to these terms and conditions, you warrant and represent to us that you are at least [18] years of age.</p>\n<ol start=\"2\">\n<li><strong> CREDIT</strong></li>\n</ol>\n<p>2.1&nbsp;&nbsp;&nbsp;&nbsp; This document was created using a template from SEQ Legal (http://www.seqlegal.com).</p>\n<ol start=\"3\">\n<li><strong> COPYRIGHT NOTICE</strong></li>\n</ol>\n<p>3.1&nbsp;&nbsp;&nbsp;&nbsp; Copyright (c) 2023 Boating Syndication Australia</p>\n<p>3.2&nbsp;&nbsp;&nbsp;&nbsp; Subject to the express provisions of these terms and conditions:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; we, together with our licensors, own and control all the copyright and other intellectual property rights in our website and the material on our website; and</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; all the copyright and other intellectual property rights in our website and the material on our website are reserved.</p>\n<ol start=\"4\">\n<li><strong> LICENSE TO USE WEBSITE</strong></li>\n</ol>\n<p>4.1&nbsp;&nbsp;&nbsp;&nbsp; You may:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; view pages from our website in a web browser;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; download pages from our website for caching in a web browser;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print pages from our website;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream audio and video files from our website; and</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use our website services by means of a web browser,</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; subject to the other provisions of these terms and conditions.</p>\n<p>4.2&nbsp;&nbsp;&nbsp;&nbsp; Except as expressly permitted by Section 4.1 or the other provisions of these terms and conditions, you must not download any material from our website or save any such material to your computer.</p>\n<p>4.3&nbsp;&nbsp;&nbsp;&nbsp; You may only use our website for your own personal and business purposes (in case of Boating Syndication Australia members only), and you must not use our website for any other purposes.</p>\n<p>4.4&nbsp;&nbsp;&nbsp;&nbsp; Except as expressly permitted by these terms and conditions, you must not edit or otherwise modify any material on our website.</p>\n<p>4.5&nbsp;&nbsp;&nbsp;&nbsp; Unless you own or control the relevant rights in the material, you must not:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; republish material from our website (including republication on another website);</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sell, rent or sub-license material from our website;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; show any material from our website in public;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; exploit material from our website for a commercial purpose; or</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; redistribute material from our website.</p>\n<p>4.6&nbsp;&nbsp;&nbsp;&nbsp; Notwithstanding Section 4.5, you may redistribute our newsletter and/or news as published in the online news section in print and electronic form to any person, unless otherwise the newsletter/news article is intended for Boating Syndication Australia members only.</p>\n<p>4.7&nbsp;&nbsp;&nbsp;&nbsp; We reserve the right to restrict access to areas of our website, or indeed our whole website, at our discretion; you must not circumvent or bypass, or attempt to circumvent or bypass, any access restriction measures on our website.</p>\n<ol start=\"5\">\n<li><strong> ACCEPTABLE USE</strong></li>\n</ol>\n<p>5.1&nbsp;&nbsp;&nbsp;&nbsp; You must not:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use our website in any way or take any action that causes, or may cause, damage to the website or impairment of the performance, availability or accessibility of the website;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use our website in any way that is unlawful, illegal, fraudulent or harmful, or in connection with any unlawful, illegal, fraudulent or harmful purpose or activity;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use our website to copy, store, host, transmit, send, use, publish or distribute any material which consists of (or is linked to) any spyware, computer virus, Trojan horse, worm, keystroke logger, rootkit or other malicious computer software;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; conduct any systematic or automated data collection activities (including without limitation scraping, data mining, data extraction and data harvesting) on or in relation to our website without our express written consent;</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; access or otherwise interact with our website using any robot, spider or other automated means;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; violate the directives set out in the files of our website; or</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use data collected from our website for any direct marketing activity (including without limitation email marketing, SMS marketing, telemarketing and direct mailing).</p>\n<p>5.2&nbsp;&nbsp;&nbsp;&nbsp; You must not use data collected from our website to contact individuals, companies or other persons or entities.</p>\n<p>5.3&nbsp;&nbsp;&nbsp;&nbsp; You must ensure that all the information you supply to us through our website, or in relation to our website, is true, accurate, current, complete and non-misleading.</p>\n<ol start=\"6\">\n<li><strong> REGISTRATION AND ACCOUNTS</strong></li>\n</ol>\n<p>6.1&nbsp;&nbsp;&nbsp;&nbsp; To be eligible for an individual account on our website under this Section 6, you must register as a member of Boating Syndication Australia.</p>\n<p>6.2&nbsp;&nbsp;&nbsp;&nbsp; You may register to be a member of Boating Syndication Australia and consequently for an account with our website by completing and submitting the account registration form on our website.</p>\n<p>6.3&nbsp;&nbsp;&nbsp;&nbsp; You must notify us in writing immediately if you become aware of any unauthorised use of your account.</p>\n<p>6.4&nbsp;&nbsp;&nbsp;&nbsp; You must not use any other person&rsquo;s account to access the website.</p>\n<ol start=\"7\">\n<li><strong> USER ID&rsquo;S AND PASSWORDS</strong></li>\n</ol>\n<p>7.1&nbsp;&nbsp;&nbsp;&nbsp; If you register for an account with our website, we will provide you with a username and password. You can change the password at a later stage.</p>\n<p>7.2&nbsp;&nbsp;&nbsp;&nbsp; Your user ID must not be liable to mislead and must comply with the content rules set out in Section 10; you must not use your account or user ID for or in connection with the impersonation of any person.</p>\n<p>7.3&nbsp;&nbsp;&nbsp;&nbsp; You must keep your password confidential.</p>\n<p>7.4&nbsp;&nbsp;&nbsp;&nbsp; You must notify us in writing immediately if you become aware of any disclosure of your password.</p>\n<p>7.5&nbsp;&nbsp;&nbsp;&nbsp; You are responsible for any activity on our website arising out of any failure to keep your password confidential and may be held liable for any losses arising out of such a failure.</p>\n<ol start=\"8\">\n<li><strong> CANCELLATION AND SUSPENSION OF ACCOUNTS</strong></li>\n</ol>\n<p>8.1&nbsp;&nbsp;&nbsp;&nbsp; We may:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [suspend your account;]</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [cancel your account; and/or]</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [edit your account details,]</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; at any time in our sole discretion without notice or explanation.</p>\n<p>8.2&nbsp;&nbsp;&nbsp;&nbsp; We will cancel your account on our website if your membership is terminated from whatever reason.</p>\n<ol start=\"9\">\n<li><strong> YOUR CONTENT &ndash; LICENSE</strong></li>\n</ol>\n<p>9.1&nbsp;&nbsp;&nbsp;&nbsp; In these terms and conditions, &ldquo;your content&rdquo; means all works and materials (including without limitation text, graphics, images, audio material, video material, audio-visual material, scripts, software and files) that you submit to us or our website for storage or publication on, processing by, or transmission via, our website.</p>\n<p>9.2&nbsp;&nbsp;&nbsp;&nbsp; You grant to us a worldwide, irrevocable, non-exclusive, royalty-free licence to use, reproduce, store, adapt, publish, translate and distribute your content in any existing or future media / reproduce, store and publish your content on and in relation to this website and any successor website / reproduce, store and, with your specific consent, publish your content on and in relation to this website.</p>\n<p>9.3&nbsp;&nbsp;&nbsp;&nbsp; You grant to us the right to sub-license the rights licensed under Section 9.2.</p>\n<p>9.4&nbsp;&nbsp;&nbsp;&nbsp; You grant to us the right to bring an action for infringement of the rights licensed under Section 9.2.</p>\n<p>9.5&nbsp;&nbsp;&nbsp;&nbsp; You hereby waive all your moral rights in your content to the maximum extent permitted by applicable law; and you warrant and represent that all other moral rights in your content have been waived to the maximum extent permitted by applicable law.</p>\n<p>9.6&nbsp;&nbsp;&nbsp;&nbsp; You may edit your content to the extent permitted using the editing functionality made available on our website.</p>\n<p>9.7&nbsp;&nbsp;&nbsp;&nbsp; Without prejudice to our other rights under these terms and conditions, if you breach any provision of these terms and conditions in any way, or if we reasonably suspect that you have breached these terms and conditions in any way, we may delete, unpublish or edit any or all of your content.</p>\n<ol start=\"10\">\n<li><strong> YOUR CONTENT &ndash; RULES</strong></li>\n</ol>\n<p>10.1&nbsp;&nbsp;&nbsp; You warrant and represent that your content will comply with these terms and conditions.</p>\n<p>10.2&nbsp;&nbsp;&nbsp; Your content must not be illegal or unlawful, must not infringe any person&rsquo;s legal rights, and must not be capable of giving rise to legal action against any person (in each case in any jurisdiction and under any applicable law).</p>\n<p>10.3&nbsp;&nbsp;&nbsp; Your content, and the use of your content by us in accordance with these terms and conditions, must not:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be libellous or maliciously false;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be obscene or indecent;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; infringe any copyright, moral right, database right, trade mark right, design right, right in passing off, or other intellectual property right;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; infringe any right of confidence, right of privacy or right under data protection legislation;</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; constitute negligent advice or contain any negligent statement;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; constitute an incitement to commit a crime, instructions for the commission of a crime or the promotion of criminal activity;</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be in contempt of any court, or in breach of any court order;</p>\n<p>(h)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be in breach of racial or religious hatred or discrimination legislation;</p>\n<p>(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be blasphemous;</p>\n<p>(j)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be in breach of official secrets legislation;</p>\n<p>(k)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be in breach of any contractual obligation owed to any person;</p>\n<p>(l)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; depict violence, in an explicit, graphic or gratuitous manner;</p>\n<p>(m)&nbsp;&nbsp;&nbsp;&nbsp; be pornographic, lewd, suggestive or sexually explicit;</p>\n<p>(n)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be untrue, false, inaccurate or misleading;</p>\n<p>(o)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consist of or contain any instructions, advice or other information which may be acted upon and could, if acted upon, cause illness, injury or death, or any other loss or damage;</p>\n<p>(p)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; constitute spam;</p>\n<p>(q)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be offensive, deceptive, fraudulent, threatening, abusive, harassing, anti-social, menacing, hateful, discriminatory or inflammatory; or</p>\n<p>(r)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cause annoyance, inconvenience or needless anxiety to any person.</p>\n<ol start=\"11\">\n<li><strong> LIMITED WARRANTIES</strong></li>\n</ol>\n<p>11.1&nbsp;&nbsp;&nbsp; We do not warrant or represent:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the completeness or accuracy of the information published on our website;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; that the material on the website is up to date; or</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; that the website or any service on the website will remain available.</p>\n<p>11.2&nbsp;&nbsp;&nbsp; We reserve the right to discontinue or alter any or all of our website services, and to stop publishing our website, at any time in our sole discretion without notice or explanation; and save to the extent expressly provided otherwise in these terms and conditions, you will not be entitled to any compensation or other payment upon the discontinuance or alteration of any website services, or if we stop publishing the website.</p>\n<p>11.3&nbsp;&nbsp;&nbsp; To the maximum extent permitted by applicable law and subject to Section 12.1, we exclude all representations and warranties relating to the subject matter of these terms and conditions, our website and the use of our website.</p>\n<ol start=\"12\">\n<li><strong> LIMITATIONS AND EXCLUSIONS OF LIABILITY</strong></li>\n</ol>\n<p>12.1&nbsp;&nbsp;&nbsp; Nothing in these terms and conditions will:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; limit or exclude any liability for death or personal injury resulting from negligence;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; limit or exclude any liability for fraud or fraudulent misrepresentation;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; limit any liabilities in any way that is not permitted under applicable law; or</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; exclude any liabilities that may not be excluded under applicable law.</p>\n<p>12.2&nbsp;&nbsp;&nbsp; The limitations and exclusions of liability set out in this Section 12 and elsewhere in these terms and conditions:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; are subject to Section 12.1; and</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; govern all liabilities arising under these terms and conditions or relating to the subject matter of these terms and conditions, including liabilities arising in contract, in tort (including negligence) and for breach of statutory duty.</p>\n<p>12.3&nbsp;&nbsp;&nbsp; To the extent that our website and the information and services on our website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>\n<p>12.4&nbsp;&nbsp;&nbsp; We will not be liable to you in respect of any losses arising out of any event or events beyond our reasonable control.</p>\n<p>12.5&nbsp;&nbsp;&nbsp; We will not be liable to you in respect of any business losses, including (without limitation) loss of or damage to profits, income, revenue, use, production, anticipated savings, business, contracts, commercial opportunities or goodwill.</p>\n<p>12.6&nbsp;&nbsp;&nbsp; We will not be liable to you in respect of any loss or corruption of any data, database or software.</p>\n<p>12.7&nbsp;&nbsp;&nbsp; We will not be liable to you in respect of any special, indirect or consequential loss or damage.</p>\n<p>12.8&nbsp;&nbsp;&nbsp; You accept that we have an interest in limiting the personal liability of our officers and employees and, having regard to that interest, you acknowledge that we are a limited liability entity; you agree that you will not bring any claim personally against our officers or employees in respect of any losses you suffer in connection with the website or these terms and conditions (this will not, of course, limit or exclude the liability of the limited liability entity itself for the acts and omissions of our officers and employees).</p>\n<ol start=\"13\">\n<li><strong> BREACHES OF THESE TERMS AND CONDITIONS</strong></li>\n</ol>\n<p>13.1&nbsp;&nbsp;&nbsp; Without prejudice to our other rights under these terms and conditions, if you breach these terms and conditions in any way, or if we reasonably suspect that you have breached these terms and conditions in any way, we may:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you one or more formal warnings;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; temporarily suspend your access to our website;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; permanently prohibit you from accessing our website;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; block computers using your IP address from accessing our website;</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contact any or all your internet service providers and request that they block your access to our website;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; commence legal action against you, whether for breach of contract or otherwise; and/or</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suspend or delete your account on our website.</p>\n<p>13.2&nbsp;&nbsp;&nbsp; Where we suspend or prohibit or block your access to our website or a part of our website, you must not take any action to circumvent such suspension or prohibition or blocking (including without limitation creating and/or using a different account).</p>\n<ol start=\"14\">\n<li><strong> VARIATION</strong></li>\n</ol>\n<p>14.1&nbsp;&nbsp;&nbsp; We may revise these terms and conditions from time to time.</p>\n<p>14.2&nbsp;&nbsp;&nbsp; The revised terms and conditions shall apply to the use of our website from the date of publication of the revised terms and conditions on the website, and you hereby waive any right you may otherwise have to be notified of, or to consent to, revisions of these terms and conditions.</p>\n<p>14.3&nbsp;&nbsp;&nbsp; If you have given your express agreement to these terms and conditions, we will ask for your express agreement to any revision of these terms and conditions; and if you do not give your express agreement to the revised terms and conditions within such period as we may specify, we will disable or delete your account on the website, and you must stop using the website.</p>\n<ol start=\"15\">\n<li><strong> ASSIGNMENT</strong></li>\n</ol>\n<p>15.1&nbsp;&nbsp;&nbsp; You hereby agree that we may assign, transfer, sub-contract or otherwise deal with our rights and/or obligations under these terms and conditions.</p>\n<p>15.2&nbsp;&nbsp;&nbsp; You may not without our prior written consent assign, transfer, sub-contract or otherwise deal with any of your rights and/or obligations under these terms and conditions.</p>\n<ol start=\"16\">\n<li><strong> SEVERABILITY</strong></li>\n</ol>\n<p>16.1&nbsp;&nbsp;&nbsp; If a provision of these terms and conditions is determined by any court or other competent authority to be unlawful and/or unenforceable, the other provisions will continue in effect.</p>\n<p>16.2&nbsp;&nbsp;&nbsp; If any unlawful and/or unenforceable provision of these terms and conditions would be lawful or enforceable if part of it were deleted, that part will be deemed to be deleted, and the rest of the provision will continue in effect.</p>\n<ol start=\"17\">\n<li><strong> THIRD PARTY RIGHTS</strong></li>\n</ol>\n<p>17.1&nbsp;&nbsp;&nbsp; These terms and conditions are for our benefit and your benefit, and these terms and conditions are not intended to benefit or be enforceable by any third party.</p>\n<p>17.2&nbsp;&nbsp;&nbsp; The exercise of the parties&rsquo; rights under these terms and conditions is not subject to the consent of any third party.</p>\n<ol start=\"18\">\n<li><strong> ENTIRE AGREEMENT</strong></li>\n</ol>\n<p>18.1&nbsp;&nbsp;&nbsp; Subject to Section 12.1, these terms and conditions, shall constitute the entire agreement between you and us in relation to your use of our website and shall supersede all previous agreements between you and us in relation to your use of our website.</p>\n<ol start=\"19\">\n<li><strong> LAW AND JURISDICTION</strong></li>\n</ol>\n<p>19.1&nbsp;&nbsp;&nbsp; These terms and conditions shall be governed by and construed in accordance with the South African Law.</p>\n<p>19.2&nbsp;&nbsp;&nbsp; Any disputes relating to these terms and conditions shall be subject to the exclusive jurisdiction of the courts of South Africa.</p>\n<ol start=\"20\">\n<li><strong> STATUTORY AND REGULATORY DISCLOSURE</strong></li>\n</ol>\n<p>20.1&nbsp;&nbsp;&nbsp; We are registered with the Companies and Intellectual Property Commission as a Company; you can find the online version of the register at www.cipc.co.za, and our registration number is 1111/ 111111/ 11.</p>\n<ol start=\"21\">\n<li><strong> OUR DETAILS</strong></li>\n</ol>\n<p>21.1&nbsp;&nbsp;&nbsp; This website is owned and operated by the Boating Syndication Australia</p>\n<p>21.2&nbsp;&nbsp;&nbsp; We are registered in South Africa under registration number 1111/ 111111/ 11, and our registered office is at 11 Test Rd, Van Rural park, Investment Park</p>\n<p>21.3&nbsp;&nbsp;&nbsp; Our principal place of business is at 11 Test Rd, Van Rural park, Investment Park</p>\n<p>21.4&nbsp;&nbsp;&nbsp; You can contact us by writing to the business address given above, by using our website contact form, by email to info@syndicationaustralia.com.au or by telephone on 011 222 3333</p>\n<p>&nbsp;</p>'),\n(2, 'en', 'Privacy Policy', '<p>The following outlines the Boating Syndication Australia privacy policy and how we utilise and handle your private information</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Boating Syndication Australia Website Privacy policy</p>\n<ol>\n<li><strong> INTRODUCTION</strong></li>\n</ol>\n<p>1.1&nbsp;&nbsp;&nbsp;&nbsp; We are committed to safeguarding the privacy of our website visitors; in this policy we explain how we will treat your personal information.</p>\n<p>1.2&nbsp;&nbsp;&nbsp;&nbsp; We will ask you to consent to our use of cookies in accordance with the terms of this policy when you first visit our website.</p>\n<p>&nbsp;</p>\n<ol start=\"2\">\n<li><strong> CREDIT</strong></li>\n</ol>\n<p>2.1&nbsp;&nbsp;&nbsp;&nbsp; This document was created using a template from SEQ Legal (http://www.seqlegal.com).</p>\n<p>&nbsp;</p>\n<ol start=\"3\">\n<li><strong> COLLECTING PERSONAL INFORMATION</strong></li>\n</ol>\n<p>3.1&nbsp;&nbsp;&nbsp;&nbsp; We may collect, store and use the following kinds of personal information:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information about your computer and about your visits to and use of this website (including your IP address, geographical location, browser type and version, operating system, referral source, length of visit, page views and website navigation paths);</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide to us when registering with our website (including your email address);</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide when completing your profile on our website (including your name, profile pictures, gender, date of birth, relationship status, interests and hobbies, educational details and employment details);</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide to us for the purpose of subscribing to our email notifications and/or newsletters (including your name and email address);</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide to us when using the services on our website, or that is generated in the course of the use of those services (including the timing, frequency and pattern of service use);</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information relating to any purchases you make of our goods or services or any other transactions that you enter into through our website (including your name, address, telephone number, email address and card details);</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you post to our website for publication on the internet (including your user name, your profile pictures and the content of your posts);</p>\n<p>(h)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information contained in or relating to any communications that you send to us or send through our website (including the communication content and meta data associated with the communication); and</p>\n<p>(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; any other personal information that you choose to send to us.</p>\n<p>3.2&nbsp;&nbsp;&nbsp;&nbsp; Before you disclose to us the personal information of another person, you must obtain that person&rsquo;s consent to both the disclosure and the processing of that personal information in accordance with this policy.</p>\n<p>&nbsp;</p>\n<ol start=\"4\">\n<li><strong> USING YOUR PERSONAL INFORMATION</strong></li>\n</ol>\n<p>4.1&nbsp;&nbsp;&nbsp;&nbsp; Personal information submitted to us through our website will be used for the purposes specified in this policy or on the relevant pages of the website.</p>\n<p>4.2&nbsp;&nbsp;&nbsp;&nbsp; We may use your personal information to:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; administer our website and business;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; personalise our website for you;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enable your use of the services available on our website;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you goods purchased through our website;</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; supply to you services purchased through our website;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send statements, invoices and payment reminders to you, and collect payments from you;</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you non-marketing commercial communications;</p>\n<p>(h)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you email notifications that you have specifically requested;</p>\n<p>(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you our email newsletter, articles and management tools, if you have requested them (you can inform us at any time if you no longer require the newsletter);</p>\n<p>(j)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you marketing communications relating to our business or the businesses of carefully-selected third parties which we think may be of interest to you, by post or, where you have specifically agreed to this, by email or similar technology (you can inform us at any time if you no longer require marketing communications);</p>\n<p>(k)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; provide third parties with statistical information about our users (but those third parties will not be able to identify any individual user from that information);</p>\n<p>(l)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; deal with enquiries and complaints made by or about you relating to our website;</p>\n<p>(m)&nbsp;&nbsp;&nbsp;&nbsp; keep our website secure and prevent fraud; and</p>\n<p>(n)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; verify compliance with the terms and conditions governing the use of our website.</p>\n<p>&nbsp;</p>\n<p>4.3&nbsp;&nbsp;&nbsp;&nbsp; If you submit personal information for publication on our website, we will publish and otherwise use that information in accordance with the licence you grant to us.</p>\n<p>4.4&nbsp;&nbsp;&nbsp;&nbsp; Your privacy settings can be used to limit the publication of your information on our website, and can be adjusted by sending us an email to that regard.</p>\n<p>4.5&nbsp;&nbsp;&nbsp;&nbsp; We will not, without your express consent, supply your personal information to any third party for the purpose of their or any other third party&rsquo;s direct marketing.</p>\n<p>&nbsp;</p>\n<ol start=\"5\">\n<li><strong> DISCLOSING PERSONAL INFORMATION</strong></li>\n</ol>\n<p>5.1&nbsp;&nbsp;&nbsp;&nbsp; We may disclose your personal information to any of our employees, officers, insurers, professional advisers, agents, suppliers or subcontractors insofar as reasonably necessary for the purposes set out in this policy.</p>\n<p>5.2&nbsp;&nbsp;&nbsp;&nbsp; We may disclose your personal information to any member of our group of companies (this means our subsidiaries, our ultimate holding company and all its subsidiaries) insofar as reasonably necessary for the purposes set out in this policy.</p>\n<p>5.3&nbsp;&nbsp;&nbsp;&nbsp; We may disclose your personal information:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the extent that we are required to do so by law;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in connection with any ongoing or prospective legal proceedings;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in order to establish, exercise or defend our legal rights (including providing information to others for the purposes of fraud prevention and reducing credit risk);</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the purchaser (or prospective purchaser) of any business or asset that we are (or are contemplating) selling; and</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to any person who we reasonably believe may apply to a court or other competent authority for disclosure of that personal information where, in our reasonable opinion, such court or authority would be reasonably likely to order disclosure of that personal information.</p>\n<p>5.4&nbsp;&nbsp;&nbsp;&nbsp; Except as provided in this policy, we will not provide your personal information to third parties.</p>\n<p>&nbsp;</p>\n<ol start=\"6\">\n<li><strong> INTERNATIONAL DATA TRANSFERS</strong></li>\n</ol>\n<p>6.1&nbsp;&nbsp;&nbsp;&nbsp; Information that we collect may be stored and processed in and transferred between any of the countries in which we operate in order to enable us to use the information in accordance with this policy.</p>\n<p>6.2&nbsp;&nbsp;&nbsp;&nbsp; Information that we collect may be transferred to countries which do not have data protection laws equivalent to those in force in South Africa.</p>\n<p>6.3&nbsp;&nbsp;&nbsp;&nbsp; Personal information that you publish on our website or submit for publication on our website may be available, via the internet, around the world. We cannot prevent the use or misuse of such information by others.</p>\n<p>6.4&nbsp;&nbsp;&nbsp;&nbsp; You expressly agree to the transfers of personal information described in this Section 6.</p>\n<p>&nbsp;</p>\n<ol start=\"7\">\n<li><strong> RETAINING PERSONAL INFORMATION</strong></li>\n</ol>\n<p>7.1&nbsp;&nbsp;&nbsp;&nbsp; This Section 7 sets out our data retention policies and procedure, which are designed to help ensure that we comply with our legal obligations in relation to the retention and deletion of personal information.</p>\n<p>7.2&nbsp;&nbsp;&nbsp;&nbsp; Personal information that we process for any purpose or purposes shall not be kept for longer than is necessary for that purpose or those purposes.</p>\n<p>7.3&nbsp;&nbsp;&nbsp;&nbsp; Notwithstanding the other provisions of this Section 7, we will retain documents (including electronic documents) containing personal data:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the extent that we are required to do so by law;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if we believe that the documents may be relevant to any ongoing or prospective legal proceedings; and</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in order to establish, exercise or defend our legal rights (including providing information to others for the purposes of fraud prevention and reducing credit risk).</p>\n<p>&nbsp;</p>\n<ol start=\"8\">\n<li><strong> SECURITY OF YOUR PERSONAL INFORMATION</strong></li>\n</ol>\n<p>8.1&nbsp;&nbsp;&nbsp;&nbsp; We will take reasonable technical and organisational precautions to prevent the loss, misuse or alteration of your personal information.</p>\n<p>8.2&nbsp;&nbsp;&nbsp;&nbsp; We will store all the personal information you provide on our secure (password- and firewall-protected) servers.</p>\n<p>8.3&nbsp;&nbsp;&nbsp;&nbsp; All electronic financial transactions entered into through our website will be protected by encryption technology.</p>\n<p>8.4&nbsp;&nbsp;&nbsp;&nbsp; You acknowledge that the transmission of information over the internet is inherently insecure, and we cannot guarantee the security of data sent over the internet.</p>\n<p>8.5&nbsp;&nbsp;&nbsp;&nbsp; You are responsible for keeping the password you use for accessing our website confidential; we will not ask you for your password (except when you log in to our website).</p>\n<p>&nbsp;</p>\n<ol start=\"9\">\n<li><strong> AMENDMENTS</strong></li>\n</ol>\n<p>9.1&nbsp;&nbsp;&nbsp;&nbsp; We may update this policy from time to time by publishing a new version on our website.</p>\n<p>9.2&nbsp;&nbsp;&nbsp;&nbsp; You should check this page occasionally to ensure you are happy with any changes to this policy.</p>\n<p>9.3&nbsp;&nbsp;&nbsp;&nbsp; We may notify you of changes to this policy by email or through the private messaging system on our website.</p>\n<p>&nbsp;</p>\n<ol start=\"10\">\n<li><strong> YOUR RIGHTS</strong></li>\n</ol>\n<p>10.1&nbsp;&nbsp;&nbsp; You may instruct us to provide you with any personal information we hold about you; provision of such information will be subject to:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the payment of a fee; and</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the supply of appropriate evidence of your identity.</p>\n<p>10.2&nbsp;&nbsp;&nbsp; We may withhold personal information that you request to the extent permitted by law.</p>\n<p>10.3&nbsp;&nbsp;&nbsp; You may instruct us at any time not to process your personal information for marketing purposes.</p>\n<p>10.4&nbsp;&nbsp;&nbsp; In practice, you will usually either expressly agree in advance to our use of your personal information for marketing purposes, or we will provide you with an opportunity to opt out of the use of your personal information for marketing purposes.</p>\n<p>&nbsp;</p>\n<ol start=\"11\">\n<li><strong> THIRD PARTY WEBSITES</strong></li>\n</ol>\n<p>11.1&nbsp;&nbsp;&nbsp; Our website includes hyperlinks to, and details of, third party websites.</p>\n<p>11.2&nbsp;&nbsp;&nbsp; We have no control over, and are not responsible for, the privacy policies and practices of third parties.</p>\n<p>&nbsp;</p>\n<ol start=\"12\">\n<li><strong> UPDATING INFORMATION</strong></li>\n</ol>\n<p>12.1&nbsp;&nbsp;&nbsp; Please let us know if the personal information that we hold about you needs to be corrected or updated.</p>\n<p>&nbsp;</p>\n<ol start=\"13\">\n<li><strong> COOKIES</strong></li>\n</ol>\n<p>13.1&nbsp;&nbsp;&nbsp; Our website uses cookies.</p>\n<p>13.2&nbsp;&nbsp;&nbsp; A cookie is a file containing an identifier (a string of letters and numbers) that is sent by a web server to a web browser and is stored by the browser.</p>\n<p>13.3&nbsp;&nbsp;&nbsp; Cookies may be either persistent cookies or session cookies.</p>\n<p>13.4&nbsp;&nbsp;&nbsp; Cookies do not typically contain any information that personally identifies a user.</p>\n<p>13.5&nbsp;&nbsp;&nbsp; We use both session and persistent cookies on our website.</p>\n<p>13.6&nbsp;&nbsp;&nbsp; Most browsers allow you to refuse to accept cookies.</p>\n<p>13.7&nbsp;&nbsp;&nbsp; Blocking all cookies will have a negative impact upon the usability of many websites.</p>\n<p>13.8&nbsp;&nbsp;&nbsp; Deleting cookies will have a negative impact on the usability of many websites.</p>\n<p>&nbsp;</p>\n<ol start=\"14\">\n<li><strong> OUR DETAILS</strong></li>\n</ol>\n<p>14.1&nbsp;&nbsp;&nbsp; This website is owned and operated by Boating Syndication Australia.</p>\n<p>14.2&nbsp;&nbsp;&nbsp; We are registered in South Africa under registration number 1111 / 111111 / 11, and our registered office is at 11 Test Rd, Van Rural park, Investment Park.</p>\n<p>14.3&nbsp;&nbsp;&nbsp; Our principal place of business is at 11 Test Rd, Van Rural park, Investment Park.</p>\n<p>14.4&nbsp;&nbsp;&nbsp; You can contact us by writing to the business address given above, by email to info@syndicationaustralia.com.au or by telephone on 011 222 3333.</p>\n<p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `name`, `location`) VALUES
(1, 'dsfadsf', 'dasfdsfasd'),
(2, 'dfdsfs', 'fsdfs');

-- --------------------------------------------------------

--
-- Table structure for table `sites_default_pressure`
--

CREATE TABLE `sites_default_pressure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sites_id` int(11) NOT NULL COMMENT 'Foreign Key -> Sites',
  `tyres_id` int(11) NOT NULL COMMENT 'Foreign Key -> Tyres',
  `default_pressure` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sites_id` (`sites_id`),
  KEY `tyres_id` (`tyres_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_settings`
--

CREATE TABLE `sys_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inactive_time` int(11) NOT NULL DEFAULT 60,
  `email_admin` text DEFAULT NULL,
  `email_operations` text DEFAULT NULL,
  `email_booking` text DEFAULT NULL,
  `send_emails` int(11) NOT NULL DEFAULT 0,
  `send_emails_test` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sys_settings`
--

INSERT INTO `sys_settings` (`id`, `inactive_time`, `email_admin`, `email_operations`, `email_booking`, `send_emails`, `send_emails_test`) VALUES
(1, 60, 'milo@zilo.co.za', 'milo@zilo.co.za', 'milo@zilo.co.za', 2, 'geoffrey.w@intasect.co.za');

-- --------------------------------------------------------

--
-- Table structure for table `tyres`
--

CREATE TABLE `tyres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brands_id` int(11) NOT NULL COMMENT 'Foreign Key -> Brand',
  `patterns_id` int(11) NOT NULL COMMENT 'Foreign Key -> Tyre Pattern',
  `tread_depths_id` int(11) NOT NULL COMMENT 'Foreign Key -> Tyre Tread Depth',
  `types_id` int(11) NOT NULL COMMENT 'Foreign Key -> Tyre Type',
  `slices_id` int(11) NOT NULL COMMENT 'Foreign Key -> Tyre Slices',
  `name` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `starting_tread_depth` decimal(5,2) NOT NULL,
  `in_stock` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brands_id` (`brands_id`),
  KEY `patterns_id` (`patterns_id`),
  KEY `types_id` (`types_id`),
  KEY `slices_id` (`slices_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tyres`
--

INSERT INTO `tyres` (`id`, `brands_id`, `patterns_id`, `tread_depths_id`, `types_id`, `slices_id`, `name`, `size`, `starting_tread_depth`, `in_stock`) VALUES
(1, 1, 1, 1, 1, 1, 'dsfgsdfg', 'xhgxvbv', 55.00, 6),
(2, 2, 2, 2, 2, 2, 'dsfgsdfg', '205/306 F15', 55.00, 6),
(3, 3, 3, 3, 3, 3, 'dsfgsdfg', '205/306 f15', 55.00, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tyres_brands`
--

CREATE TABLE `tyres_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(255) NOT NULL,
  `listed` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tyres_brands`
--

INSERT INTO `tyres_brands` (`id`, `names`, `listed`) VALUES
(1, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(2, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(3, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(4, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(5, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(6, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(7, 'fgvsdfgsdf', '2025-05-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tyres_default_pressures`
--

CREATE TABLE `tyres_default_pressures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brands_id` int(11) NOT NULL COMMENT 'Foreign Key -> Brands',
  `sizes_id` int(11) NOT NULL COMMENT 'Foreign Key -> Sizes',
  `value` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brands_id` (`brands_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tyres_default_pressures`
--

INSERT INTO `tyres_default_pressures` (`id`, `brands_id`, `sizes_id`, `value`) VALUES
(1, 1, 1, 54.54);

-- --------------------------------------------------------

--
-- Table structure for table `tyres_fleet_assignments`
--

CREATE TABLE `tyres_fleet_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tyres_id` int(11) NOT NULL COMMENT 'Foreign Key -> Tyres',
  `assignment_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tyres_id` (`tyres_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tyres_fleet_assignments`
--

INSERT INTO `tyres_fleet_assignments` (`id`, `tyres_id`, `assignment_date`) VALUES
(1, 3, '2025-05-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tyres_intakes`
--

CREATE TABLE `tyres_intakes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tyres_id` int(11) NOT NULL COMMENT 'Foreign Key -> Tyres',
  `quantity` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tyres_id` (`tyres_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tyres_patterns`
--

CREATE TABLE `tyres_patterns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brands_id` int(11) NOT NULL COMMENT 'Foreign key -> Brands',
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `brands_id` (`brands_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tyres_patterns`
--

INSERT INTO `tyres_patterns` (`id`, `brands_id`, `name`, `description`) VALUES
(1, 2, 'esret', 'dsfgsdfgsfdg');

-- --------------------------------------------------------

--
-- Table structure for table `tyres_retread_depreciations`
--

CREATE TABLE `tyres_retread_depreciations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tyres_id` int(11) NOT NULL COMMENT 'Foreign Key -> Tyres',
  `depreciation_percentage` decimal(5,2) NOT NULL,
  `formula_description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tyres_id` (`tyres_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tyres_retread_depreciations`
--

INSERT INTO `tyres_retread_depreciations` (`id`, `tyres_id`, `depreciation_percentage`, `formula_description`) VALUES
(1, 3, 55.00, 'vdbvcxbvcx');

-- --------------------------------------------------------

--
-- Table structure for table `tyres_slices`
--

CREATE TABLE `tyres_slices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `segment_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tyres_slices`
--

INSERT INTO `tyres_slices` (`id`, `name`, `description`, `segment_count`) VALUES
(1, 'Segment 1', 'sdfgsfdgdsf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tyres_types`
--

CREATE TABLE `tyres_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tyres_types`
--

INSERT INTO `tyres_types` (`id`, `name`, `description`) VALUES
(1, 'kjhygtfkjhygvf', 'kughvfijhykgfv');

-- --------------------------------------------------------

--
-- Table structure for table `tyres_values`
--

CREATE TABLE `tyres_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tyres_id` int(11) NOT NULL COMMENT 'Foreign Key -> Tyres',
  `retail_value` decimal(10,2) NOT NULL,
  `operational_cost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tyres_id` (`tyres_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tyres_values`
--

INSERT INTO `tyres_values` (`id`, `tyres_id`, `retail_value`, `operational_cost`) VALUES
(1, 3, 555.00, 5555.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `current_session_token` varchar(64) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT 10,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `otp` varchar(5) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `alt_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `current_session_token`, `password_hash`, `password_reset_token`, `email`, `role`, `status`, `created_at`, `updated_at`, `otp`, `permissions`, `alt_id`) VALUES
(1, 'admin', 'tw6PZBf7g5d_6ISgSzNQRSWVaaO_8HyK', NULL, '$2y$13$GJvhaXhzCWN.YO5LOOpUj.U9n/QcR3UF0V3KSDHNnND7Otn9/gFVq', NULL, 'milo2@zilo.co.za', 10, 10, 1417444629, 1743593083, NULL, NULL, NULL),
(5, 'user', 'tw6PZBf7g5d_6ISgSzNQRSWVaaO_8HyK', NULL, '$2y$13$GJvhaXhzCWN.YO5LOOpUj.U9n/QcR3UF0V3KSDHNnND7Otn9/gFVq', NULL, 'info@zilo.co.za', 50, 10, 1679929008, 1693406359, NULL, NULL, 88);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `idnum` varchar(255) DEFAULT NULL,
  `cell` varchar(50) DEFAULT NULL,
  `tnc1` int(11) NOT NULL,
  `tnc2` int(11) DEFAULT NULL,
  `permissions` varchar(255) DEFAULT NULL,
  `notification` int(11) NOT NULL DEFAULT 0,
  `address` varchar(500) DEFAULT NULL,
  `suburb` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `booking_colour` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `boat_licence` int(11) NOT NULL,
  `boat_file` varchar(255) DEFAULT NULL,
  `licence_expiry` date DEFAULT NULL,
  `drivers_licence` int(11) NOT NULL,
  `drivers_file` varchar(255) DEFAULT NULL,
  `drivers_expiry` date DEFAULT NULL,
  `credit_card` int(11) NOT NULL,
  `owners_form` int(11) NOT NULL,
  `disclosure_form` int(11) NOT NULL,
  `training1` date DEFAULT NULL,
  `training2` date DEFAULT NULL,
  `trainer` varchar(255) DEFAULT NULL,
  `training_ques` int(11) NOT NULL,
  `checklist` int(11) NOT NULL,
  `training_comp` int(11) NOT NULL,
  `night_training` date DEFAULT NULL,
  `open_sea_training` int(11) NOT NULL,
  `dummy_owner` int(11) NOT NULL DEFAULT 0,
  `location_id` varchar(255) DEFAULT NULL,
  `fall_2` int(11) DEFAULT NULL,
  `boats_id` varchar(255) DEFAULT NULL,
  `fall_4` int(11) DEFAULT NULL,
  `pickup` int(11) DEFAULT NULL,
  `dropoff` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `anti_phish_code` varchar(255) DEFAULT NULL,
  `twofa_secret` varchar(500) DEFAULT NULL,
  `pass_changed` int(11) NOT NULL DEFAULT 0,
  `vip` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `name`, `lastname`, `idnum`, `cell`, `tnc1`, `tnc2`, `permissions`, `notification`, `address`, `suburb`, `state`, `postal_code`, `booking_colour`, `notes`, `boat_licence`, `boat_file`, `licence_expiry`, `drivers_licence`, `drivers_file`, `drivers_expiry`, `credit_card`, `owners_form`, `disclosure_form`, `training1`, `training2`, `trainer`, `training_spec`, `checklist`, `training_comp`, `night_training`, `open_sea_training`, `dummy_owner`, `location_id`, `fall_2`, `boats_id`, `fall_4`, `pickup`, `dropoff`, `birthday`, `anti_phish_code`, `twofa_secret`, `pass_changed`, `vip`) VALUES
(1, 1, 'Milo', 'Zilo Personalisation', NULL, '+27725919199', 1, 1, NULL, 1, '', '', '02', '', '', NULL, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

COMMIT;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
