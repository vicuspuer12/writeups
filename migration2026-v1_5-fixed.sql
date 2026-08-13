-- ---------------------------------------------------------------------------
-- migration2026-v1_5  --  corrected schema dump
--
-- Rebuilt from the phpMyAdmin export dated Aug 06, 2026 (MariaDB 10.6.23).
-- Verified to import with zero errors and zero warnings under STRICT_ALL_TABLES
-- on MariaDB 10.11 and to parse cleanly for MySQL 8.x.
--
-- See fix_report.md for the itemised list of defects corrected.
-- ---------------------------------------------------------------------------

SET NAMES utf8mb4;
SET SQL_MODE = 'STRICT_ALL_TABLES,NO_ENGINE_SUBSTITUTION,NO_AUTO_VALUE_ON_ZERO';
SET time_zone = '+00:00';
SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

START TRANSACTION;

--
-- Database: `migration2026-v1_5`
--

-- ---------------------------------------------------------------------------
-- Table `contact_info`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `contact_info`;
CREATE TABLE `contact_info` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tel` VARCHAR(255) NOT NULL,
  `tel2` VARCHAR(255) DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL,
  `map` TEXT DEFAULT NULL,
  `address` VARCHAR(500) DEFAULT NULL,
  `address2` VARCHAR(500) DEFAULT NULL,
  `state` INT DEFAULT NULL,
  `postal_code` VARCHAR(10) DEFAULT NULL,
  `website` VARCHAR(255) DEFAULT NULL,
  `reg` VARCHAR(255) DEFAULT NULL,
  `vat` VARCHAR(255) DEFAULT NULL,
  `hours` VARCHAR(500) DEFAULT NULL,
  `fb` VARCHAR(500) DEFAULT NULL,
  `tw` VARCHAR(500) DEFAULT NULL,
  `in` VARCHAR(500) DEFAULT NULL,
  `li` VARCHAR(500) DEFAULT NULL,
  `yt` VARCHAR(500) DEFAULT NULL,
  `whatsappbtn` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `contact_info`
INSERT INTO `contact_info` (`id`, `tel`, `tel2`, `email`, `map`, `address`, `address2`, `state`, `postal_code`, `website`, `reg`, `vat`, `hours`, `fb`, `tw`, `in`, `li`, `yt`, `whatsappbtn`) VALUES
(1, '0112223333', '', 'info@zilo-interns.co.za', NULL, 'Test Street', 'Bryanston', 2, 2088, 'https://www.zilo-interns.co.za', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ---------------------------------------------------------------------------
-- Table `contact_us`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE `contact_us` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `number` VARCHAR(255) DEFAULT NULL,
  `topic` VARCHAR(255) NOT NULL,
  `message` TEXT NOT NULL,
  `date` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `email_text`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `email_text`;
CREATE TABLE `email_text` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `text` TEXT NOT NULL,
  `email_subject` VARCHAR(255) NOT NULL,
  `email_brief` VARCHAR(255) DEFAULT NULL,
  `view` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `email_text`
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

-- ---------------------------------------------------------------------------
-- Table `login_history`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `login_history`;
CREATE TABLE `login_history` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `device` VARCHAR(255) NOT NULL,
  `ip_address` VARCHAR(255) NOT NULL,
  `date` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_login_history_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `privacy`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `privacy`;
CREATE TABLE `privacy` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `lang` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `text` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `privacy`
INSERT INTO `privacy` (`id`, `lang`, `name`, `text`) VALUES
(1, 'en', 'Terms & Conditions', '<p>The following outlines our terms and conditions for use of the Boating Syndication Australia online platform</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Terms and conditions of use of the Boating Syndication Australia website, a division of Syndication Australia/p>\n<ol>\n<li><strong> INTRODUCTION</strong></li>\n</ol>\n<p>1.1&nbsp;&nbsp;&nbsp;&nbsp; These terms and conditions shall govern your use of our website.</p>\n<p>1.2&nbsp;&nbsp;&nbsp;&nbsp; By using our website, you accept these terms and conditions in full; accordingly, if you disagree with these terms and conditions or any part of these terms and conditions, you must not use our website.</p>\n<p>1.3&nbsp;&nbsp;&nbsp;&nbsp; If you register with our website, submit any material to our website or use any of our website services, we will ask you to expressly agree to these terms and conditions.</p>\n<p>1.4&nbsp;&nbsp;&nbsp;&nbsp; You must be at least [18] years of age to use our website; and by using our website or agreeing to these terms and conditions, you warrant and represent to us that you are at least [18] years of age.</p>\n<ol start=\"2\">\n<li><strong> CREDIT</strong></li>\n</ol>\n<p>2.1&nbsp;&nbsp;&nbsp;&nbsp; This document was created using a template from SEQ Legal (http://www.seqlegal.com).</p>\n<ol start=\"3\">\n<li><strong> COPYRIGHT NOTICE</strong></li>\n</ol>\n<p>3.1&nbsp;&nbsp;&nbsp;&nbsp; Copyright (c) 2023 Boating Syndication Australia</p>\n<p>3.2&nbsp;&nbsp;&nbsp;&nbsp; Subject to the express provisions of these terms and conditions:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; we, together with our licensors, own and control all the copyright and other intellectual property rights in our website and the material on our website; and</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; all the copyright and other intellectual property rights in our website and the material on our website are reserved.</p>\n<ol start=\"4\">\n<li><strong> LICENSE TO USE WEBSITE</strong></li>\n</ol>\n<p>4.1&nbsp;&nbsp;&nbsp;&nbsp; You may:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; view pages from our website in a web browser;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; download pages from our website for caching in a web browser;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print pages from our website;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream audio and video files from our website; and</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use our website services by means of a web browser,</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; subject to the other provisions of these terms and conditions.</p>\n<p>4.2&nbsp;&nbsp;&nbsp;&nbsp; Except as expressly permitted by Section 4.1 or the other provisions of these terms and conditions, you must not download any material from our website or save any such material to your computer.</p>\n<p>4.3&nbsp;&nbsp;&nbsp;&nbsp; You may only use our website for your own personal and business purposes (in case of Boating Syndication Australia members only), and you must not use our website for any other purposes.</p>\n<p>4.4&nbsp;&nbsp;&nbsp;&nbsp; Except as expressly permitted by these terms and conditions, you must not edit or otherwise modify any material on our website.</p>\n<p>4.5&nbsp;&nbsp;&nbsp;&nbsp; Unless you own or control the relevant rights in the material, you must not:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; republish material from our website (including republication on another website);</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sell, rent or sub-license material from our website;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; show any material from our website in public;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; exploit material from our website for a commercial purpose; or</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; redistribute material from our website.</p>\n<p>4.6&nbsp;&nbsp;&nbsp;&nbsp; Notwithstanding Section 4.5, you may redistribute our newsletter and/or news as published in the online news section in print and electronic form to any person, unless otherwise the newsletter/news article is intended for Boating Syndication Australia members only.</p>\n<p>4.7&nbsp;&nbsp;&nbsp;&nbsp; We reserve the right to restrict access to areas of our website, or indeed our whole website, at our discretion; you must not circumvent or bypass, or attempt to circumvent or bypass, any access restriction measures on our website.</p>\n<ol start=\"5\">\n<li><strong> ACCEPTABLE USE</strong></li>\n</ol>\n<p>5.1&nbsp;&nbsp;&nbsp;&nbsp; You must not:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use our website in any way or take any action that causes, or may cause, damage to the website or impairment of the performance, availability or accessibility of the website;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use our website in any way that is unlawful, illegal, fraudulent or harmful, or in connection with any unlawful, illegal, fraudulent or harmful purpose or activity;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use our website to copy, store, host, transmit, send, use, publish or distribute any material which consists of (or is linked to) any spyware, computer virus, Trojan horse, worm, keystroke logger, rootkit or other malicious computer software;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; conduct any systematic or automated data collection activities (including without limitation scraping, data mining, data extraction and data harvesting) on or in relation to our website without our express written consent;</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; access or otherwise interact with our website using any robot, spider or other automated means;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; violate the directives set out in the files of our website; or</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use data collected from our website for any direct marketing activity (including without limitation email marketing, SMS marketing, telemarketing and direct mailing).</p>\n<p>5.2&nbsp;&nbsp;&nbsp;&nbsp; You must not use data collected from our website to contact individuals, companies or other persons or entities.</p>\n<p>5.3&nbsp;&nbsp;&nbsp;&nbsp; You must ensure that all the information you supply to us through our website, or in relation to our website, is true, accurate, current, complete and non-misleading.</p>\n<ol start=\"6\">\n<li><strong> REGISTRATION AND ACCOUNTS</strong></li>\n</ol>\n<p>6.1&nbsp;&nbsp;&nbsp;&nbsp; To be eligible for an individual account on our website under this Section 6, you must register as a member of Boating Syndication Australia.</p>\n<p>6.2&nbsp;&nbsp;&nbsp;&nbsp; You may register to be a member of Boating Syndication Australia and consequently for an account with our website by completing and submitting the account registration form on our website.</p>\n<p>6.3&nbsp;&nbsp;&nbsp;&nbsp; You must notify us in writing immediately if you become aware of any unauthorised use of your account.</p>\n<p>6.4&nbsp;&nbsp;&nbsp;&nbsp; You must not use any other person&rsquo;s account to access the website.</p>\n<ol start=\"7\">\n<li><strong> USER ID&rsquo;S AND PASSWORDS</strong></li>\n</ol>\n<p>7.1&nbsp;&nbsp;&nbsp;&nbsp; If you register for an account with our website, we will provide you with a username and password. You can change the password at a later stage.</p>\n<p>7.2&nbsp;&nbsp;&nbsp;&nbsp; Your user ID must not be liable to mislead and must comply with the content rules set out in Section 10; you must not use your account or user ID for or in connection with the impersonation of any person.</p>\n<p>7.3&nbsp;&nbsp;&nbsp;&nbsp; You must keep your password confidential.</p>\n<p>7.4&nbsp;&nbsp;&nbsp;&nbsp; You must notify us in writing immediately if you become aware of any disclosure of your password.</p>\n<p>7.5&nbsp;&nbsp;&nbsp;&nbsp; You are responsible for any activity on our website arising out of any failure to keep your password confidential and may be held liable for any losses arising out of such a failure.</p>\n<ol start=\"8\">\n<li><strong> CANCELLATION AND SUSPENSION OF ACCOUNTS</strong></li>\n</ol>\n<p>8.1&nbsp;&nbsp;&nbsp;&nbsp; We may:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [suspend your account;]</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [cancel your account; and/or]</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [edit your account details,]</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; at any time in our sole discretion without notice or explanation.</p>\n<p>8.2&nbsp;&nbsp;&nbsp;&nbsp; We will cancel your account on our website if your membership is terminated from whatever reason.</p>\n<ol start=\"9\">\n<li><strong> YOUR CONTENT &ndash; LICENSE</strong></li>\n</ol>\n<p>9.1&nbsp;&nbsp;&nbsp;&nbsp; In these terms and conditions, &ldquo;your content&rdquo; means all works and materials (including without limitation text, graphics, images, audio material, video material, audio-visual material, scripts, software and files) that you submit to us or our website for storage or publication on, processing by, or transmission via, our website.</p>\n<p>9.2&nbsp;&nbsp;&nbsp;&nbsp; You grant to us a worldwide, irrevocable, non-exclusive, royalty-free licence to use, reproduce, store, adapt, publish, translate and distribute your content in any existing or future media / reproduce, store and publish your content on and in relation to this website and any successor website / reproduce, store and, with your specific consent, publish your content on and in relation to this website.</p>\n<p>9.3&nbsp;&nbsp;&nbsp;&nbsp; You grant to us the right to sub-license the rights licensed under Section 9.2.</p>\n<p>9.4&nbsp;&nbsp;&nbsp;&nbsp; You grant to us the right to bring an action for infringement of the rights licensed under Section 9.2.</p>\n<p>9.5&nbsp;&nbsp;&nbsp;&nbsp; You hereby waive all your moral rights in your content to the maximum extent permitted by applicable law; and you warrant and represent that all other moral rights in your content have been waived to the maximum extent permitted by applicable law.</p>\n<p>9.6&nbsp;&nbsp;&nbsp;&nbsp; You may edit your content to the extent permitted using the editing functionality made available on our website.</p>\n<p>9.7&nbsp;&nbsp;&nbsp;&nbsp; Without prejudice to our other rights under these terms and conditions, if you breach any provision of these terms and conditions in any way, or if we reasonably suspect that you have breached these terms and conditions in any way, we may delete, unpublish or edit any or all of your content.</p>\n<ol start=\"10\">\n<li><strong> YOUR CONTENT &ndash; RULES</strong></li>\n</ol>\n<p>10.1&nbsp;&nbsp;&nbsp; You warrant and represent that your content will comply with these terms and conditions.</p>\n<p>10.2&nbsp;&nbsp;&nbsp; Your content must not be illegal or unlawful, must not infringe any person&rsquo;s legal rights, and must not be capable of giving rise to legal action against any person (in each case in any jurisdiction and under any applicable law).</p>\n<p>10.3&nbsp;&nbsp;&nbsp; Your content, and the use of your content by us in accordance with these terms and conditions, must not:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be libellous or maliciously false;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be obscene or indecent;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; infringe any copyright, moral right, database right, trade mark right, design right, right in passing off, or other intellectual property right;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; infringe any right of confidence, right of privacy or right under data protection legislation;</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; constitute negligent advice or contain any negligent statement;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; constitute an incitement to commit a crime, instructions for the commission of a crime or the promotion of criminal activity;</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be in contempt of any court, or in breach of any court order;</p>\n<p>(h)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be in breach of racial or religious hatred or discrimination legislation;</p>\n<p>(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be blasphemous;</p>\n<p>(j)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be in breach of official secrets legislation;</p>\n<p>(k)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be in breach of any contractual obligation owed to any person;</p>\n<p>(l)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; depict violence, in an explicit, graphic or gratuitous manner;</p>\n<p>(m)&nbsp;&nbsp;&nbsp;&nbsp; be pornographic, lewd, suggestive or sexually explicit;</p>\n<p>(n)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be untrue, false, inaccurate or misleading;</p>\n<p>(o)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; consist of or contain any instructions, advice or other information which may be acted upon and could, if acted upon, cause illness, injury or death, or any other loss or damage;</p>\n<p>(p)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; constitute spam;</p>\n<p>(q)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; be offensive, deceptive, fraudulent, threatening, abusive, harassing, anti-social, menacing, hateful, discriminatory or inflammatory; or</p>\n<p>(r)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cause annoyance, inconvenience or needless anxiety to any person.</p>\n<ol start=\"11\">\n<li><strong> LIMITED WARRANTIES</strong></li>\n</ol>\n<p>11.1&nbsp;&nbsp;&nbsp; We do not warrant or represent:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the completeness or accuracy of the information published on our website;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; that the material on the website is up to date; or</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; that the website or any service on the website will remain available.</p>\n<p>11.2&nbsp;&nbsp;&nbsp; We reserve the right to discontinue or alter any or all of our website services, and to stop publishing our website, at any time in our sole discretion without notice or explanation; and save to the extent expressly provided otherwise in these terms and conditions, you will not be entitled to any compensation or other payment upon the discontinuance or alteration of any website services, or if we stop publishing the website.</p>\n<p>11.3&nbsp;&nbsp;&nbsp; To the maximum extent permitted by applicable law and subject to Section 12.1, we exclude all representations and warranties relating to the subject matter of these terms and conditions, our website and the use of our website.</p>\n<ol start=\"12\">\n<li><strong> LIMITATIONS AND EXCLUSIONS OF LIABILITY</strong></li>\n</ol>\n<p>12.1&nbsp;&nbsp;&nbsp; Nothing in these terms and conditions will:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; limit or exclude any liability for death or personal injury resulting from negligence;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; limit or exclude any liability for fraud or fraudulent misrepresentation;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; limit any liabilities in any way that is not permitted under applicable law; or</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; exclude any liabilities that may not be excluded under applicable law.</p>\n<p>12.2&nbsp;&nbsp;&nbsp; The limitations and exclusions of liability set out in this Section 12 and elsewhere in these terms and conditions:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; are subject to Section 12.1; and</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; govern all liabilities arising under these terms and conditions or relating to the subject matter of these terms and conditions, including liabilities arising in contract, in tort (including negligence) and for breach of statutory duty.</p>\n<p>12.3&nbsp;&nbsp;&nbsp; To the extent that our website and the information and services on our website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>\n<p>12.4&nbsp;&nbsp;&nbsp; We will not be liable to you in respect of any losses arising out of any event or events beyond our reasonable control.</p>\n<p>12.5&nbsp;&nbsp;&nbsp; We will not be liable to you in respect of any business losses, including (without limitation) loss of or damage to profits, income, revenue, use, production, anticipated savings, business, contracts, commercial opportunities or goodwill.</p>\n<p>12.6&nbsp;&nbsp;&nbsp; We will not be liable to you in respect of any loss or corruption of any data, database or software.</p>\n<p>12.7&nbsp;&nbsp;&nbsp; We will not be liable to you in respect of any special, indirect or consequential loss or damage.</p>\n<p>12.8&nbsp;&nbsp;&nbsp; You accept that we have an interest in limiting the personal liability of our officers and employees and, having regard to that interest, you acknowledge that we are a limited liability entity; you agree that you will not bring any claim personally against our officers or employees in respect of any losses you suffer in connection with the website or these terms and conditions (this will not, of course, limit or exclude the liability of the limited liability entity itself for the acts and omissions of our officers and employees).</p>\n<ol start=\"13\">\n<li><strong> BREACHES OF THESE TERMS AND CONDITIONS</strong></li>\n</ol>\n<p>13.1&nbsp;&nbsp;&nbsp; Without prejudice to our other rights under these terms and conditions, if you breach these terms and conditions in any way, or if we reasonably suspect that you have breached these terms and conditions in any way, we may:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you one or more formal warnings;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; temporarily suspend your access to our website;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; permanently prohibit you from accessing our website;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; block computers using your IP address from accessing our website;</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; contact any or all your internet service providers and request that they block your access to our website;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; commence legal action against you, whether for breach of contract or otherwise; and/or</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suspend or delete your account on our website.</p>\n<p>13.2&nbsp;&nbsp;&nbsp; Where we suspend or prohibit or block your access to our website or a part of our website, you must not take any action to circumvent such suspension or prohibition or blocking (including without limitation creating and/or using a different account).</p>\n<ol start=\"14\">\n<li><strong> VARIATION</strong></li>\n</ol>\n<p>14.1&nbsp;&nbsp;&nbsp; We may revise these terms and conditions from time to time.</p>\n<p>14.2&nbsp;&nbsp;&nbsp; The revised terms and conditions shall apply to the use of our website from the date of publication of the revised terms and conditions on the website, and you hereby waive any right you may otherwise have to be notified of, or to consent to, revisions of these terms and conditions. / We will give you written notice of any revision of these terms and conditions, and the revised terms and conditions will apply to the use of our website from the date that we give you such notice; if you do not agree to the revised terms and conditions, you must stop using our website.</p>\n<p>14.3&nbsp;&nbsp;&nbsp; If you have given your express agreement to these terms and conditions, we will ask for your express agreement to any revision of these terms and conditions; and if you do not give your express agreement to the revised terms and conditions within such period as we may specify, we will disable or delete your account on the website, and you must stop using the website.</p>\n<ol start=\"15\">\n<li><strong> ASSIGNMENT</strong></li>\n</ol>\n<p>15.1&nbsp;&nbsp;&nbsp; You hereby agree that we may assign, transfer, sub-contract or otherwise deal with our rights and/or obligations under these terms and conditions.</p>\n<p>15.2&nbsp;&nbsp;&nbsp; You may not without our prior written consent assign, transfer, sub-contract or otherwise deal with any of your rights and/or obligations under these terms and conditions.</p>\n<ol start=\"16\">\n<li><strong> SEVERABILITY</strong></li>\n</ol>\n<p>16.1&nbsp;&nbsp;&nbsp; If a provision of these terms and conditions is determined by any court or other competent authority to be unlawful and/or unenforceable, the other provisions will continue in effect.</p>\n<p>16.2&nbsp;&nbsp;&nbsp; If any unlawful and/or unenforceable provision of these terms and conditions would be lawful or enforceable if part of it were deleted, that part will be deemed to be deleted, and the rest of the provision will continue in effect.</p>\n<ol start=\"17\">\n<li><strong> THIRD PARTY RIGHTS</strong></li>\n</ol>\n<p>17.1&nbsp;&nbsp;&nbsp; These terms and conditions are for our benefit and your benefit, and these terms and conditions are not intended to benefit or be enforceable by any third party.</p>\n<p>17.2&nbsp;&nbsp;&nbsp; The exercise of the parties&rsquo; rights under these terms and conditions is not subject to the consent of any third party.</p>\n<ol start=\"18\">\n<li><strong> ENTIRE AGREEMENT</strong></li>\n</ol>\n<p>18.1&nbsp;&nbsp;&nbsp; Subject to Section 12.1, these terms and conditions, shall constitute the entire agreement between you and us in relation to your use of our website and shall supersede all previous agreements between you and us in relation to your use of our website.</p>\n<ol start=\"19\">\n<li><strong> LAW AND JURISDICTION</strong></li>\n</ol>\n<p>19.1&nbsp;&nbsp;&nbsp; These terms and conditions shall be governed by and construed in accordance with the South African Law.</p>\n<p>19.2&nbsp;&nbsp;&nbsp; Any disputes relating to these terms and conditions shall be subject to the exclusive jurisdiction of the courts of South Africa.</p>\n<ol start=\"20\">\n<li><strong> STATUTORY AND REGULATORY DISCLOSURE</strong></li>\n</ol>\n<p>20.1&nbsp;&nbsp;&nbsp; We are registered with the Companies and Intellectual Property Commission as a Company; you can find the online version of the register at www.cipc.co.za, and our registration number is 1111/ 111111/ 11.</p>\n<ol start=\"21\">\n<li><strong> OUR DETAILS</strong></li>\n</ol>\n<p>21.1&nbsp;&nbsp;&nbsp; This website is owned and operated by the Boating Syndication Australia</p>\n<p>21.2&nbsp;&nbsp;&nbsp; We are registered in South Africa under registration number 1111/ 111111/ 11, and our registered office is at 11 Test Rd, Van Rural park, Investment Park</p>\n<p>21.3&nbsp;&nbsp;&nbsp; Our principal place of business is at 11 Test Rd, Van Rural park, Investment Park</p>\n<p>21.4&nbsp;&nbsp;&nbsp; You can contact us by writing to the business address given above, by using our website contact form, by email to info@syndicationaustralia.com.au or by telephone on 011 222 3333</p>\n<p>&nbsp;</p>'),
(2, 'en', 'Privacy Policy', '<p>The following outlines the Boating Syndication Australia privacy policy and how we utilise and handle your private information</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Boating Syndication Australia Website Privacy policy</p>\n<ol>\n<li><strong> INTRODUCTION</strong></li>\n</ol>\n<p>1.1&nbsp;&nbsp;&nbsp;&nbsp; We are committed to safeguarding the privacy of our website visitors; in this policy we explain how we will treat your personal information.</p>\n<p>1.2&nbsp;&nbsp;&nbsp;&nbsp; We will ask you to consent to our use of cookies in accordance with the terms of this policy when you first visit our website. / By using our website and agreeing to this policy, you consent to our use of cookies in accordance with the terms of this policy.</p>\n<p>&nbsp;</p>\n<ol start=\"2\">\n<li><strong> CREDIT</strong></li>\n</ol>\n<p>2.1&nbsp;&nbsp;&nbsp;&nbsp; This document was created using a template from SEQ Legal (http://www.seqlegal.com).</p>\n<p>&nbsp;</p>\n<ol start=\"3\">\n<li><strong> COLLECTING PERSONAL INFORMATION</strong></li>\n</ol>\n<p>3.1&nbsp;&nbsp;&nbsp;&nbsp; We may collect, store and use the following kinds of personal information:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information about your computer and about your visits to and use of this website (including your IP address, geographical location, browser type and version, operating system, referral source, length of visit, page views and website navigation paths);</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide to us when registering with our website (including your email address);</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide when completing your profile on our website (including your name, profile pictures, gender, date of birth, relationship status, interests and hobbies, educational details and employment details);</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide to us for the purpose of subscribing to our email notifications and/or newsletters (including your name and email address);</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide to us when using the services on our website, or that is generated in the course of the use of those services (including the timing, frequency and pattern of service use;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information relating to any purchases you make of our goods / services / goods and/or services or any other transactions that you enter into through our website (including your name, address, telephone number, email address and card details;</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you post to our website for publication on the internet (including your user name, your profile pictures and the content of your posts);</p>\n<p>(h)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information contained in or relating to any communications that you send to us or send through our website (including the communication content and meta data associated with the communication); and</p>\n<p>(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; any other personal information that you choose to send to us.</p>\n<p>3.2&nbsp;&nbsp;&nbsp;&nbsp; Before you disclose to us the personal information of another person, you must obtain that person&rsquo;s consent to both the disclosure and the processing of that personal information in accordance with this policy.</p>\n<p>&nbsp;</p>\n<ol start=\"4\">\n<li><strong> USING YOUR PERSONAL INFORMATION</strong></li>\n</ol>\n<p>4.1&nbsp;&nbsp;&nbsp;&nbsp; Personal information submitted to us through our website will be used for the purposes specified in this policy or on the relevant pages of the website.</p>\n<p>4.2&nbsp;&nbsp;&nbsp;&nbsp; We may use your personal information to:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; administer our website and business;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; personalise our website for you;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enable your use of the services available on our website;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you goods purchased through our website;</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; supply to you services purchased through our website;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send statements, invoices and payment reminders to you, and collect payments from you;</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you non-marketing commercial communications;</p>\n<p>(h)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you email notifications that you have specifically requested;</p>\n<p>(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you our email newsletter, articles and management tools, if you have requested them (you can inform us at any time if you no longer require the newsletter);</p>\n<p>(j)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you marketing communications relating to our business or the businesses of carefully-selected third parties which we think may be of interest to you, by post or, where you have specifically agreed to this, by email or similar technology (you can inform us at any time if you no longer require marketing communications);</p>\n<p>(k)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; provide third parties with statistical information about our users (but those third parties will not be able to identify any individual user from that information);</p>\n<p>(l)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; deal with enquiries and complaints made by or about you relating to our website;</p>\n<p>(m)&nbsp;&nbsp;&nbsp;&nbsp; keep our website secure and prevent fraud; and</p>\n<p>(n)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; verify compliance with the terms and conditions governing the use of our website [(including monitoring private messages sent through our website private messaging service).</p>\n<p>&nbsp;</p>\n<p>4.3&nbsp;&nbsp;&nbsp;&nbsp; If you submit personal information for publication on our website, we will publish and otherwise use that information in accordance with the licence you grant to us.</p>\n<p>4.4&nbsp;&nbsp;&nbsp;&nbsp; Your privacy settings can be used to limit the publication of your information on our website, and can be adjusted by sending us an email to that regard.</p>\n<p>4.5&nbsp;&nbsp;&nbsp;&nbsp; We will not, without your express consent, supply your personal information to any third party for the purpose of their or any other third party&rsquo;s direct marketing.</p>\n<p>&nbsp;</p>\n<ol start=\"5\">\n<li><strong> DISCLOSING PERSONAL INFORMATION</strong></li>\n</ol>\n<p>5.1&nbsp;&nbsp;&nbsp;&nbsp; We may disclose your personal information to any of our employees, officers, insurers, professional advisers, agents, suppliers or subcontractors insofar as reasonably necessary for the purposes set out in this policy.</p>\n<p>5.2&nbsp;&nbsp;&nbsp;&nbsp; We may disclose your personal information to any member of our group of companies (this means our subsidiaries, our ultimate holding company and all its subsidiaries) insofar as reasonably necessary for the purposes set out in this policy.</p>\n<p>5.3&nbsp;&nbsp;&nbsp;&nbsp; We may disclose your personal information:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the extent that we are required to do so by law;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in connection with any ongoing or prospective legal proceedings;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in order to establish, exercise or defend our legal rights (including providing information to others for the purposes of fraud prevention and reducing credit risk);</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the purchaser (or prospective purchaser) of any business or asset that we are (or are contemplating) selling; and</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to any person who we reasonably believe may apply to a court or other competent authority for disclosure of that personal information where, in our reasonable opinion, such court or authority would be reasonably likely to order disclosure of that personal information.</p>\n<p>5.4&nbsp;&nbsp;&nbsp;&nbsp; Except as provided in this policy, we will not provide your personal information to third parties.</p>\n<p>&nbsp;</p>\n<ol start=\"6\">\n<li><strong> INTERNATIONAL DATA TRANSFERS</strong></li>\n</ol>\n<p>6.1&nbsp;&nbsp;&nbsp;&nbsp; Information that we collect may be stored and processed in and transferred between any of the countries in which we operate in order to enable us to use the information in accordance with this policy.</p>\n<p>6.2&nbsp;&nbsp;&nbsp;&nbsp; Information that we collect may be transferred to countries which do not have data protection laws equivalent to those in force in the South Africa.</p>\n<p>6.3&nbsp;&nbsp;&nbsp;&nbsp; Personal information that you publish on our website or submit for publication on our website may be available, via the internet, around the world. We cannot prevent the use or misuse of such information by others.</p>\n<p>6.4&nbsp;&nbsp;&nbsp;&nbsp; You expressly agree to the transfers of personal information described in this Section 6.</p>\n<p>&nbsp;</p>\n<ol start=\"7\">\n<li><strong> RETAINING PERSONAL INFORMATION</strong></li>\n</ol>\n<p>7.1&nbsp;&nbsp;&nbsp;&nbsp; This Section 7 sets out our data retention policies and procedure, which are designed to help ensure that we comply with our legal obligations in relation to the retention and deletion of personal information.</p>\n<p>7.2&nbsp;&nbsp;&nbsp;&nbsp; Personal information that we process for any purpose or purposes shall not be kept for longer than is necessary for that purpose or those purposes.</p>\n<p>7.3&nbsp;&nbsp;&nbsp;&nbsp; Notwithstanding the other provisions of this Section 7, we will retain documents (including electronic documents) containing personal data:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the extent that we are required to do so by law;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if we believe that the documents may be relevant to any ongoing or prospective legal proceedings; and</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in order to establish, exercise or defend our legal rights (including providing information to others for the purposes of fraud prevention and reducing credit risk).</p>\n<p>&nbsp;</p>\n<ol start=\"8\">\n<li><strong> SECURITY OF YOUR PERSONAL INFORMATION</strong></li>\n</ol>\n<p>8.1&nbsp;&nbsp;&nbsp;&nbsp; We will take reasonable technical and organisational precautions to prevent the loss, misuse or alteration of your personal information.</p>\n<p>8.2&nbsp;&nbsp;&nbsp;&nbsp; We will store all the personal information you provide on our secure (password- and firewall-protected) servers.</p>\n<p>8.3&nbsp;&nbsp;&nbsp;&nbsp; All electronic financial transactions entered into through our website will be protected by encryption technology.</p>\n<p>8.4&nbsp;&nbsp;&nbsp;&nbsp; You acknowledge that the transmission of information over the internet is inherently insecure, and we cannot guarantee the security of data sent over the internet.</p>\n<p>8.5&nbsp;&nbsp;&nbsp;&nbsp; You are responsible for keeping the password you use for accessing our website confidential; we will not ask you for your password (except when you log in to our website).</p>\n<p>&nbsp;</p>\n<ol start=\"9\">\n<li><strong> AMENDMENTS</strong></li>\n</ol>\n<p>9.1&nbsp;&nbsp;&nbsp;&nbsp; We may update this policy from time to time by publishing a new version on our website.</p>\n<p>9.2&nbsp;&nbsp;&nbsp;&nbsp; You should check this page occasionally to ensure you are happy with any changes to this policy.</p>\n<p>9.3&nbsp;&nbsp;&nbsp;&nbsp; We may notify you of changes to this policy by email or through the private messaging system on our website.</p>\n<p>&nbsp;</p>\n<ol start=\"10\">\n<li><strong> YOUR RIGHTS</strong></li>\n</ol>\n<p>10.1&nbsp;&nbsp;&nbsp; You may instruct us to provide you with any personal information we hold about you; provision of such information will be subject to:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the payment of a fee; and</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the supply of appropriate evidence of your identity (for this purpose, we will usually accept a photocopy of your passport certified by a solicitor or bank plus an original copy of a utility bill showing your current address).</p>\n<p>10.2&nbsp;&nbsp;&nbsp; We may withhold personal information that you request to the extent permitted by law.</p>\n<p>10.3&nbsp;&nbsp;&nbsp; You may instruct us at any time not to process your personal information for marketing purposes.</p>\n<p>10.4&nbsp;&nbsp;&nbsp; In practice, you will usually either expressly agree in advance to our use of your personal information for marketing purposes, or we will provide you with an opportunity to opt out of the use of your personal information for marketing purposes.</p>\n<p>&nbsp;</p>\n<ol start=\"11\">\n<li><strong> THIRD PARTY WEBSITES</strong></li>\n</ol>\n<p>11.1&nbsp;&nbsp;&nbsp; Our website includes hyperlinks to, and details of, third party websites.</p>\n<p>11.2&nbsp;&nbsp;&nbsp; We have no control over, and are not responsible for, the privacy policies and practices of third parties.</p>\n<p>&nbsp;</p>\n<ol start=\"12\">\n<li><strong> UPDATING INFORMATION</strong></li>\n</ol>\n<p>12.1&nbsp;&nbsp;&nbsp; Please let us know if the personal information that we hold about you needs to be corrected or updated.</p>\n<p>&nbsp;</p>\n<ol start=\"13\">\n<li><strong> COOKIES</strong></li>\n</ol>\n<p>13.1&nbsp;&nbsp;&nbsp; Our website uses cookies.</p>\n<p>13.2&nbsp;&nbsp;&nbsp; A cookie is a file containing an identifier (a string of letters and numbers) that is sent by a web server to a web browser and is stored by the browser. The identifier is then sent back to the server each time the browser requests a page from the server.</p>\n<p>13.3&nbsp;&nbsp;&nbsp; Cookies may be either &ldquo;persistent&rdquo; cookies or &ldquo;session&rdquo; cookies: a persistent cookie will be stored by a web browser and will remain valid until its set expiry date, unless deleted by the user before the expiry date; a session cookie, on the other hand, will expire at the end of the user session, when the web browser is closed.</p>\n<p>13.4&nbsp;&nbsp;&nbsp; Cookies do not typically contain any information that personally identifies a user, but personal information that we store about you may be linked to the information stored in and obtained from cookies.</p>\n<p>13.5&nbsp;&nbsp;&nbsp; We use [only session cookies / only persistent cookies / both session and persistent cookies] on our website.</p>\n<p>13.6&nbsp;&nbsp;&nbsp; The names of the cookies that we use on our website, and the purposes for which they are used, are set out below:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; we use [cookie name] on our website to [recognise a computer when a user visits the website / track users as they navigate the website / enable the use of a shopping cart on the website / improve the website&rsquo;s usability / analyse the use of the website / administer the website / prevent fraud and improve the security of the website / personalise the website for each user / target advertisements which may be of particular interest to specific users.</p>\n<p>&nbsp;</p>\n<p>13.7&nbsp;&nbsp;&nbsp; Most browsers allow you to refuse to accept cookies; for example:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Internet Explorer (version 10) you can block cookies using the cookie handling override settings available by clicking &ldquo;Tools&rdquo;, &ldquo;Internet Options&rdquo;, &ldquo;Privacy&rdquo; and then &ldquo;Advanced&rdquo;;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Firefox (version 24) you can block all cookies by clicking &ldquo;Tools&rdquo;, &ldquo;Options&rdquo;, &ldquo;Privacy&rdquo;, selecting &ldquo;Use custom settings for history&rdquo; from the drop-down menu, and unticking &ldquo;Accept cookies from sites&rdquo;; and</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Chrome (version 29), you can block all cookies by accessing the &ldquo;Customise and control&rdquo; menu, and clicking &ldquo;Settings&rdquo;, &ldquo;Show advanced settings&rdquo; and &ldquo;Content settings&rdquo;, and then selecting &ldquo;Block sites from setting any data&rdquo; under the &ldquo;Cookies&rdquo; heading.</p>\n<p>13.8&nbsp;&nbsp;&nbsp; Blocking all cookies will have a negative impact upon the usability of many websites.</p>\n<p>13.9&nbsp;&nbsp;&nbsp; If you block cookies, you will not be able to use all the features on our website.</p>\n<p>13.10&nbsp; You can delete cookies already stored on your computer; for example:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Internet Explorer (version 10), you must manually delete cookie files (you can find instructions for doing so at http://support.microsoft.com/kb/278835);</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Firefox (version 24), you can delete cookies by clicking &ldquo;Tools&rdquo;, &ldquo;Options&rdquo; and &ldquo;Privacy&rdquo;, then selecting &ldquo;Use custom settings for history&rdquo;, clicking &ldquo;Show Cookies&rdquo;, and then clicking &ldquo;Remove All Cookies&rdquo;; and</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Chrome (version 29), you can delete all cookies by accessing the &ldquo;Customise and control&rdquo; menu, and clicking &ldquo;Settings&rdquo;, &ldquo;Show advanced settings&rdquo; and &ldquo;Clear browsing data&rdquo;, and then selecting &ldquo;Delete cookies and other site and plug-in data&rdquo; before clicking &ldquo;Clear browsing data&rdquo;.</p>\n<p>13.11&nbsp; Deleting cookies will have a negative impact on the usability of many websites.</p>\n<p>&nbsp;</p>\n<ol start=\"14\">\n<li><strong> OUR DETAILS</strong></li>\n</ol>\n<p>14.1&nbsp;&nbsp;&nbsp; This website is owned and operated by the Boating Syndication Australia</p>\n<p>14.2&nbsp;&nbsp;&nbsp; We are registered in South Africa under registration number 1111 / 111111 / 11, and our registered office is at 11 Test Rd, Van Rural park, Investment Park</p>\n<p>14.3&nbsp;&nbsp;&nbsp; Our principal place of business is at 11 Test Rd, Van Rural park, Investment Park.</p>\n<p>14.4&nbsp;&nbsp;&nbsp; You can contact us by writing to the business address given above, by using our website contact form, by email to info@syndicationaustralia.com.au or by telephone on 011 222 3333</p>\n<p>&nbsp;</p>');
INSERT INTO `privacy` (`id`, `lang`, `name`, `text`) VALUES
(3, 'en', 'User Agreement', '<p>The following outlines the Boating Syndication Australia privacy policy and how we utilise and handle your private information</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Boating Syndication Australia Website Privacy policy</p>\n<ol>\n<li><strong> INTRODUCTION</strong></li>\n</ol>\n<p>1.1&nbsp;&nbsp;&nbsp;&nbsp; We are committed to safeguarding the privacy of our website visitors; in this policy we explain how we will treat your personal information.</p>\n<p>1.2&nbsp;&nbsp;&nbsp;&nbsp; We will ask you to consent to our use of cookies in accordance with the terms of this policy when you first visit our website. / By using our website and agreeing to this policy, you consent to our use of cookies in accordance with the terms of this policy.</p>\n<p>&nbsp;</p>\n<ol start=\"2\">\n<li><strong> CREDIT</strong></li>\n</ol>\n<p>2.1&nbsp;&nbsp;&nbsp;&nbsp; This document was created using a template from SEQ Legal (http://www.seqlegal.com).</p>\n<p>&nbsp;</p>\n<ol start=\"3\">\n<li><strong> COLLECTING PERSONAL INFORMATION</strong></li>\n</ol>\n<p>3.1&nbsp;&nbsp;&nbsp;&nbsp; We may collect, store and use the following kinds of personal information:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information about your computer and about your visits to and use of this website (including your IP address, geographical location, browser type and version, operating system, referral source, length of visit, page views and website navigation paths);</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide to us when registering with our website (including your email address);</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide when completing your profile on our website (including your name, profile pictures, gender, date of birth, relationship status, interests and hobbies, educational details and employment details);</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide to us for the purpose of subscribing to our email notifications and/or newsletters (including your name and email address);</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you provide to us when using the services on our website, or that is generated in the course of the use of those services (including the timing, frequency and pattern of service use;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information relating to any purchases you make of our goods / services / goods and/or services or any other transactions that you enter into through our website (including your name, address, telephone number, email address and card details;</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information that you post to our website for publication on the internet (including your user name, your profile pictures and the content of your posts);</p>\n<p>(h)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; information contained in or relating to any communications that you send to us or send through our website (including the communication content and meta data associated with the communication); and</p>\n<p>(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; any other personal information that you choose to send to us.</p>\n<p>3.2&nbsp;&nbsp;&nbsp;&nbsp; Before you disclose to us the personal information of another person, you must obtain that person&rsquo;s consent to both the disclosure and the processing of that personal information in accordance with this policy.</p>\n<p>&nbsp;</p>\n<ol start=\"4\">\n<li><strong> USING YOUR PERSONAL INFORMATION</strong></li>\n</ol>\n<p>4.1&nbsp;&nbsp;&nbsp;&nbsp; Personal information submitted to us through our website will be used for the purposes specified in this policy or on the relevant pages of the website.</p>\n<p>4.2&nbsp;&nbsp;&nbsp;&nbsp; We may use your personal information to:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; administer our website and business;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; personalise our website for you;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enable your use of the services available on our website;</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you goods purchased through our website;</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; supply to you services purchased through our website;</p>\n<p>(f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send statements, invoices and payment reminders to you, and collect payments from you;</p>\n<p>(g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you non-marketing commercial communications;</p>\n<p>(h)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you email notifications that you have specifically requested;</p>\n<p>(i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you our email newsletter, articles and management tools, if you have requested them (you can inform us at any time if you no longer require the newsletter);</p>\n<p>(j)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; send you marketing communications relating to our business or the businesses of carefully-selected third parties which we think may be of interest to you, by post or, where you have specifically agreed to this, by email or similar technology (you can inform us at any time if you no longer require marketing communications);</p>\n<p>(k)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; provide third parties with statistical information about our users (but those third parties will not be able to identify any individual user from that information);</p>\n<p>(l)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; deal with enquiries and complaints made by or about you relating to our website;</p>\n<p>(m)&nbsp;&nbsp;&nbsp;&nbsp; keep our website secure and prevent fraud; and</p>\n<p>(n)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; verify compliance with the terms and conditions governing the use of our website [(including monitoring private messages sent through our website private messaging service).</p>\n<p>&nbsp;</p>\n<p>4.3&nbsp;&nbsp;&nbsp;&nbsp; If you submit personal information for publication on our website, we will publish and otherwise use that information in accordance with the licence you grant to us.</p>\n<p>4.4&nbsp;&nbsp;&nbsp;&nbsp; Your privacy settings can be used to limit the publication of your information on our website, and can be adjusted by sending us an email to that regard.</p>\n<p>4.5&nbsp;&nbsp;&nbsp;&nbsp; We will not, without your express consent, supply your personal information to any third party for the purpose of their or any other third party&rsquo;s direct marketing.</p>\n<p>&nbsp;</p>\n<ol start=\"5\">\n<li><strong> DISCLOSING PERSONAL INFORMATION</strong></li>\n</ol>\n<p>5.1&nbsp;&nbsp;&nbsp;&nbsp; We may disclose your personal information to any of our employees, officers, insurers, professional advisers, agents, suppliers or subcontractors insofar as reasonably necessary for the purposes set out in this policy.</p>\n<p>5.2&nbsp;&nbsp;&nbsp;&nbsp; We may disclose your personal information to any member of our group of companies (this means our subsidiaries, our ultimate holding company and all its subsidiaries) insofar as reasonably necessary for the purposes set out in this policy.</p>\n<p>5.3&nbsp;&nbsp;&nbsp;&nbsp; We may disclose your personal information:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the extent that we are required to do so by law;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in connection with any ongoing or prospective legal proceedings;</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in order to establish, exercise or defend our legal rights (including providing information to others for the purposes of fraud prevention and reducing credit risk);</p>\n<p>(d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the purchaser (or prospective purchaser) of any business or asset that we are (or are contemplating) selling; and</p>\n<p>(e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to any person who we reasonably believe may apply to a court or other competent authority for disclosure of that personal information where, in our reasonable opinion, such court or authority would be reasonably likely to order disclosure of that personal information.</p>\n<p>5.4&nbsp;&nbsp;&nbsp;&nbsp; Except as provided in this policy, we will not provide your personal information to third parties.</p>\n<p>&nbsp;</p>\n<ol start=\"6\">\n<li><strong> INTERNATIONAL DATA TRANSFERS</strong></li>\n</ol>\n<p>6.1&nbsp;&nbsp;&nbsp;&nbsp; Information that we collect may be stored and processed in and transferred between any of the countries in which we operate in order to enable us to use the information in accordance with this policy.</p>\n<p>6.2&nbsp;&nbsp;&nbsp;&nbsp; Information that we collect may be transferred to countries which do not have data protection laws equivalent to those in force in the South Africa.</p>\n<p>6.3&nbsp;&nbsp;&nbsp;&nbsp; Personal information that you publish on our website or submit for publication on our website may be available, via the internet, around the world. We cannot prevent the use or misuse of such information by others.</p>\n<p>6.4&nbsp;&nbsp;&nbsp;&nbsp; You expressly agree to the transfers of personal information described in this Section 6.</p>\n<p>&nbsp;</p>\n<ol start=\"7\">\n<li><strong> RETAINING PERSONAL INFORMATION</strong></li>\n</ol>\n<p>7.1&nbsp;&nbsp;&nbsp;&nbsp; This Section 7 sets out our data retention policies and procedure, which are designed to help ensure that we comply with our legal obligations in relation to the retention and deletion of personal information.</p>\n<p>7.2&nbsp;&nbsp;&nbsp;&nbsp; Personal information that we process for any purpose or purposes shall not be kept for longer than is necessary for that purpose or those purposes.</p>\n<p>7.3&nbsp;&nbsp;&nbsp;&nbsp; Notwithstanding the other provisions of this Section 7, we will retain documents (including electronic documents) containing personal data:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the extent that we are required to do so by law;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if we believe that the documents may be relevant to any ongoing or prospective legal proceedings; and</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in order to establish, exercise or defend our legal rights (including providing information to others for the purposes of fraud prevention and reducing credit risk).</p>\n<p>&nbsp;</p>\n<ol start=\"8\">\n<li><strong> SECURITY OF YOUR PERSONAL INFORMATION</strong></li>\n</ol>\n<p>8.1&nbsp;&nbsp;&nbsp;&nbsp; We will take reasonable technical and organisational precautions to prevent the loss, misuse or alteration of your personal information.</p>\n<p>8.2&nbsp;&nbsp;&nbsp;&nbsp; We will store all the personal information you provide on our secure (password- and firewall-protected) servers.</p>\n<p>8.3&nbsp;&nbsp;&nbsp;&nbsp; All electronic financial transactions entered into through our website will be protected by encryption technology.</p>\n<p>8.4&nbsp;&nbsp;&nbsp;&nbsp; You acknowledge that the transmission of information over the internet is inherently insecure, and we cannot guarantee the security of data sent over the internet.</p>\n<p>8.5&nbsp;&nbsp;&nbsp;&nbsp; You are responsible for keeping the password you use for accessing our website confidential; we will not ask you for your password (except when you log in to our website).</p>\n<p>&nbsp;</p>\n<ol start=\"9\">\n<li><strong> AMENDMENTS</strong></li>\n</ol>\n<p>9.1&nbsp;&nbsp;&nbsp;&nbsp; We may update this policy from time to time by publishing a new version on our website.</p>\n<p>9.2&nbsp;&nbsp;&nbsp;&nbsp; You should check this page occasionally to ensure you are happy with any changes to this policy.</p>\n<p>9.3&nbsp;&nbsp;&nbsp;&nbsp; We may notify you of changes to this policy by email or through the private messaging system on our website.</p>\n<p>&nbsp;</p>\n<ol start=\"10\">\n<li><strong> YOUR RIGHTS</strong></li>\n</ol>\n<p>10.1&nbsp;&nbsp;&nbsp; You may instruct us to provide you with any personal information we hold about you; provision of such information will be subject to:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the payment of a fee; and</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the supply of appropriate evidence of your identity (for this purpose, we will usually accept a photocopy of your passport certified by a solicitor or bank plus an original copy of a utility bill showing your current address).</p>\n<p>10.2&nbsp;&nbsp;&nbsp; We may withhold personal information that you request to the extent permitted by law.</p>\n<p>10.3&nbsp;&nbsp;&nbsp; You may instruct us at any time not to process your personal information for marketing purposes.</p>\n<p>10.4&nbsp;&nbsp;&nbsp; In practice, you will usually either expressly agree in advance to our use of your personal information for marketing purposes, or we will provide you with an opportunity to opt out of the use of your personal information for marketing purposes.</p>\n<p>&nbsp;</p>\n<ol start=\"11\">\n<li><strong> THIRD PARTY WEBSITES</strong></li>\n</ol>\n<p>11.1&nbsp;&nbsp;&nbsp; Our website includes hyperlinks to, and details of, third party websites.</p>\n<p>11.2&nbsp;&nbsp;&nbsp; We have no control over, and are not responsible for, the privacy policies and practices of third parties.</p>\n<p>&nbsp;</p>\n<ol start=\"12\">\n<li><strong> UPDATING INFORMATION</strong></li>\n</ol>\n<p>12.1&nbsp;&nbsp;&nbsp; Please let us know if the personal information that we hold about you needs to be corrected or updated.</p>\n<p>&nbsp;</p>\n<ol start=\"13\">\n<li><strong> COOKIES</strong></li>\n</ol>\n<p>13.1&nbsp;&nbsp;&nbsp; Our website uses cookies.</p>\n<p>13.2&nbsp;&nbsp;&nbsp; A cookie is a file containing an identifier (a string of letters and numbers) that is sent by a web server to a web browser and is stored by the browser. The identifier is then sent back to the server each time the browser requests a page from the server.</p>\n<p>13.3&nbsp;&nbsp;&nbsp; Cookies may be either &ldquo;persistent&rdquo; cookies or &ldquo;session&rdquo; cookies: a persistent cookie will be stored by a web browser and will remain valid until its set expiry date, unless deleted by the user before the expiry date; a session cookie, on the other hand, will expire at the end of the user session, when the web browser is closed.</p>\n<p>13.4&nbsp;&nbsp;&nbsp; Cookies do not typically contain any information that personally identifies a user, but personal information that we store about you may be linked to the information stored in and obtained from cookies.</p>\n<p>13.5&nbsp;&nbsp;&nbsp; We use [only session cookies / only persistent cookies / both session and persistent cookies] on our website.</p>\n<p>13.6&nbsp;&nbsp;&nbsp; The names of the cookies that we use on our website, and the purposes for which they are used, are set out below:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; we use [cookie name] on our website to [recognise a computer when a user visits the website / track users as they navigate the website / enable the use of a shopping cart on the website / improve the website&rsquo;s usability / analyse the use of the website / administer the website / prevent fraud and improve the security of the website / personalise the website for each user / target advertisements which may be of particular interest to specific users.</p>\n<p>&nbsp;</p>\n<p>13.7&nbsp;&nbsp;&nbsp; Most browsers allow you to refuse to accept cookies; for example:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Internet Explorer (version 10) you can block cookies using the cookie handling override settings available by clicking &ldquo;Tools&rdquo;, &ldquo;Internet Options&rdquo;, &ldquo;Privacy&rdquo; and then &ldquo;Advanced&rdquo;;</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Firefox (version 24) you can block all cookies by clicking &ldquo;Tools&rdquo;, &ldquo;Options&rdquo;, &ldquo;Privacy&rdquo;, selecting &ldquo;Use custom settings for history&rdquo; from the drop-down menu, and unticking &ldquo;Accept cookies from sites&rdquo;; and</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Chrome (version 29), you can block all cookies by accessing the &ldquo;Customise and control&rdquo; menu, and clicking &ldquo;Settings&rdquo;, &ldquo;Show advanced settings&rdquo; and &ldquo;Content settings&rdquo;, and then selecting &ldquo;Block sites from setting any data&rdquo; under the &ldquo;Cookies&rdquo; heading.</p>\n<p>13.8&nbsp;&nbsp;&nbsp; Blocking all cookies will have a negative impact upon the usability of many websites.</p>\n<p>13.9&nbsp;&nbsp;&nbsp; If you block cookies, you will not be able to use all the features on our website.</p>\n<p>13.10&nbsp; You can delete cookies already stored on your computer; for example:</p>\n<p>(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Internet Explorer (version 10), you must manually delete cookie files (you can find instructions for doing so at http://support.microsoft.com/kb/278835);</p>\n<p>(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Firefox (version 24), you can delete cookies by clicking &ldquo;Tools&rdquo;, &ldquo;Options&rdquo; and &ldquo;Privacy&rdquo;, then selecting &ldquo;Use custom settings for history&rdquo;, clicking &ldquo;Show Cookies&rdquo;, and then clicking &ldquo;Remove All Cookies&rdquo;; and</p>\n<p>(c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Chrome (version 29), you can delete all cookies by accessing the &ldquo;Customise and control&rdquo; menu, and clicking &ldquo;Settings&rdquo;, &ldquo;Show advanced settings&rdquo; and &ldquo;Clear browsing data&rdquo;, and then selecting &ldquo;Delete cookies and other site and plug-in data&rdquo; before clicking &ldquo;Clear browsing data&rdquo;.</p>\n<p>13.11&nbsp; Deleting cookies will have a negative impact on the usability of many websites.</p>\n<p>&nbsp;</p>\n<ol start=\"14\">\n<li><strong> OUR DETAILS</strong></li>\n</ol>\n<p>14.1&nbsp;&nbsp;&nbsp; This website is owned and operated by the Boating Syndication Australia</p>\n<p>14.2&nbsp;&nbsp;&nbsp; We are registered in South Africa under registration number 1111 / 111111 / 11, and our registered office is at 11 Test Rd, Van Rural park, Investment Park</p>\n<p>14.3&nbsp;&nbsp;&nbsp; Our principal place of business is at 11 Test Rd, Van Rural park, Investment Park.</p>\n<p>14.4&nbsp;&nbsp;&nbsp; You can contact us by writing to the business address given above, by using our website contact form, by email to info@syndicationaustralia.com.au or by telephone on 011 222 3333</p>\n<p>&nbsp;</p>');

-- ---------------------------------------------------------------------------
-- Table `sites`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `location` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `sites`
INSERT INTO `sites` (`id`, `name`, `location`) VALUES
(1, 'dsfadsf', 'dasfdsfasd'),
(2, 'dfdsfs', 'fsdfs');

-- ---------------------------------------------------------------------------
-- Table `sites_default_pressure`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `sites_default_pressure`;
CREATE TABLE `sites_default_pressure` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sites_id` INT NOT NULL COMMENT 'Foreign Key -> Sites',
  `tyres_id` INT NOT NULL COMMENT 'Foreign Key -> Tyres',
  `default_pressure` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sites_default_pressure_sites_id` (`sites_id`),
  KEY `idx_sites_default_pressure_tyres_id` (`tyres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `sites_default_pressure`
INSERT INTO `sites_default_pressure` (`id`, `sites_id`, `tyres_id`, `default_pressure`) VALUES
(1, 342, 432432, '43');

-- ---------------------------------------------------------------------------
-- Table `sys_settings`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `sys_settings`;
CREATE TABLE `sys_settings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `inactive_time` INT NOT NULL DEFAULT 60,
  `email_admin` TEXT DEFAULT NULL,
  `email_operations` TEXT DEFAULT NULL,
  `email_booking` TEXT DEFAULT NULL,
  `send_emails` INT NOT NULL DEFAULT 0,
  `send_emails_test` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `sys_settings`
INSERT INTO `sys_settings` (`id`, `inactive_time`, `email_admin`, `email_operations`, `email_booking`, `send_emails`, `send_emails_test`) VALUES
(1, 60, 'milo@zilo.co.za', 'milo@zilo.co.za', 'milo@zilo.co.za', 2, 'geoffrey.w@intasect.co.za');

-- ---------------------------------------------------------------------------
-- Table `tyres`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `tyres`;
CREATE TABLE `tyres` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `brands_id` INT NOT NULL COMMENT 'Foreign Key -> Brand',
  `patterns_id` INT NOT NULL COMMENT 'Foreign Key -> Tyre Pattern',
  `tread_depths_id` INT NOT NULL COMMENT 'Foreign Key -> Tyre Tread Depth',
  `types_id` INT NOT NULL COMMENT 'Foreign Key -> Tyre Type',
  `slices_id` INT NOT NULL COMMENT 'Foreign Key -> Tyre Slices',
  `name` VARCHAR(255) NOT NULL,
  `size` VARCHAR(255) NOT NULL,
  `starting_tread_depth` DECIMAL(6,2) NOT NULL,
  `in_stock` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tyres_brands_id` (`brands_id`),
  KEY `idx_tyres_patterns_id` (`patterns_id`),
  KEY `idx_tyres_tread_depths_id` (`tread_depths_id`),
  KEY `idx_tyres_types_id` (`types_id`),
  KEY `idx_tyres_slices_id` (`slices_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `tyres`
INSERT INTO `tyres` (`id`, `brands_id`, `patterns_id`, `tread_depths_id`, `types_id`, `slices_id`, `name`, `size`, `starting_tread_depth`, `in_stock`) VALUES
(1, 445445, 4535345, 345435, 345435, 345345, 'dsfgsdfg', 'xhgxvbv', '55', 6),
(2, 2, 2, 2, 2, 2, 'dsfgsdfg', '205/306 F15', '55', 6),
(3, 3, 3, 3, 3, 3, 'dsfgsdfg', '205/306 f15', '55', 6);

-- ---------------------------------------------------------------------------
-- Table `tyres_brands`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `tyres_brands`;
CREATE TABLE `tyres_brands` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `names` VARCHAR(255) NOT NULL,
  `listed` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `tyres_brands`
INSERT INTO `tyres_brands` (`id`, `names`, `listed`) VALUES
(1, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(2, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(3, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(4, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(5, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(6, 'fgvsdfgsdf', '2025-05-25 00:00:00'),
(7, 'fgvsdfgsdf', '2025-05-25 00:00:00');

-- ---------------------------------------------------------------------------
-- Table `tyres_default_pressures`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `tyres_default_pressures`;
CREATE TABLE `tyres_default_pressures` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `brands_id` INT NOT NULL COMMENT 'Foreign Key -> Brands',
  `sizes_id` INT NOT NULL COMMENT 'Foreign Key -> Sizes',
  `value` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tyres_default_pressures_brands_id` (`brands_id`),
  KEY `idx_tyres_default_pressures_sizes_id` (`sizes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `tyres_default_pressures`
INSERT INTO `tyres_default_pressures` (`id`, `brands_id`, `sizes_id`, `value`) VALUES
(1, 56, 55, '5454');

-- ---------------------------------------------------------------------------
-- Table `tyres_fleet_assignments`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `tyres_fleet_assignments`;
CREATE TABLE `tyres_fleet_assignments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyres_id` INT NOT NULL COMMENT 'Foreign Key -> Tyres',
  `assignment_date` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tyres_fleet_assignments_tyres_id` (`tyres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `tyres_fleet_assignments`
INSERT INTO `tyres_fleet_assignments` (`id`, `tyres_id`, `assignment_date`) VALUES
(1, 3, '2025-05-25 00:00:00');

-- ---------------------------------------------------------------------------
-- Table `tyres_intakes`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `tyres_intakes`;
CREATE TABLE `tyres_intakes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyres_id` INT NOT NULL COMMENT 'Foreign Key -> Tyres',
  `quantity` INT NOT NULL,
  `date` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tyres_intakes_tyres_id` (`tyres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `tyres_intakes`
INSERT INTO `tyres_intakes` (`id`, `tyres_id`, `quantity`, `date`) VALUES
(1, 434, 4, '2025-05-25 00:00:00');

-- ---------------------------------------------------------------------------
-- Table `tyres_patterns`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `tyres_patterns`;
CREATE TABLE `tyres_patterns` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `brands_id` INT NOT NULL COMMENT 'Foreign key -> Brands',
  `name` VARCHAR(255) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tyres_patterns_brands_id` (`brands_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `tyres_patterns`
INSERT INTO `tyres_patterns` (`id`, `brands_id`, `name`, `description`) VALUES
(1, 2, 'esret', 'dsfgsdfgsfdg');

-- ---------------------------------------------------------------------------
-- Table `tyres_retread_depreciations`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `tyres_retread_depreciations`;
CREATE TABLE `tyres_retread_depreciations` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyres_id` INT NOT NULL COMMENT 'Foreign Key -> Tyres',
  `depreciation_percentage` DECIMAL(5,2) NOT NULL,
  `formula_description` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tyres_retread_depreciations_tyres_id` (`tyres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `tyres_retread_depreciations`
INSERT INTO `tyres_retread_depreciations` (`id`, `tyres_id`, `depreciation_percentage`, `formula_description`) VALUES
(1, 3, '55', 'vdbvcxbvcx');

-- ---------------------------------------------------------------------------
-- Table `tyres_slices`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `tyres_slices`;
CREATE TABLE `tyres_slices` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` VARCHAR(500) NOT NULL,
  `segment_count` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `tyres_slices`
INSERT INTO `tyres_slices` (`id`, `name`, `description`, `segment_count`) VALUES
(1, 1, 'sdfgsfdgdsf', 1);

-- ---------------------------------------------------------------------------
-- Table `tyres_types`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `tyres_types`;
CREATE TABLE `tyres_types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `tyres_types`
INSERT INTO `tyres_types` (`id`, `name`, `description`) VALUES
(1, 'kjhygtfkjhygvf', 'kughvfijhykgfv');

-- ---------------------------------------------------------------------------
-- Table `tyres_values`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `tyres_values`;
CREATE TABLE `tyres_values` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyres_id` INT NOT NULL COMMENT 'Foreign Key -> Tyres',
  `retail_value` INT NOT NULL,
  `operational_cost` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tyres_values_tyres_id` (`tyres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `tyres_values`
INSERT INTO `tyres_values` (`id`, `tyres_id`, `retail_value`, `operational_cost`) VALUES
(1, 3, 555, 5555);

-- ---------------------------------------------------------------------------
-- Table `user`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL,
  `auth_key` VARCHAR(32) NOT NULL,
  `current_session_token` VARCHAR(64) DEFAULT NULL,
  `password_hash` VARCHAR(255) NOT NULL,
  `password_reset_token` VARCHAR(255) DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL,
  `role` SMALLINT NOT NULL DEFAULT 10,
  `status` SMALLINT NOT NULL DEFAULT 10,
  `created_at` INT NOT NULL,
  `updated_at` INT NOT NULL,
  `otp` VARCHAR(5) DEFAULT NULL,
  `permissions` TEXT DEFAULT NULL,
  `alt_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_alt_id` (`alt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `user`
INSERT INTO `user` (`id`, `username`, `auth_key`, `current_session_token`, `password_hash`, `password_reset_token`, `email`, `role`, `status`, `created_at`, `updated_at`, `otp`, `permissions`, `alt_id`) VALUES
(1, 'admin', 'tw6PZBf7g5d_6ISgSzNQRSWVaaO_8HyK', NULL, '$2y$13$GJvhaXhzCWN.YO5LOOpUj.U9n/QcR3UF0V3KSDHNnND7Otn9/gFVq', NULL, 'milo2@zilo.co.za', 10, 10, 1417444629, 1743593083, NULL, NULL, NULL),
(5, 'user', 'tw6PZBf7g5d_6ISgSzNQRSWVaaO_8HyK', NULL, '$2y$13$GJvhaXhzCWN.YO5LOOpUj.U9n/QcR3UF0V3KSDHNnND7Otn9/gFVq', NULL, 'info@zilo.co.za', 50, 10, 1679929008, 1693406359, NULL, NULL, 88);

-- ---------------------------------------------------------------------------
-- Table `user_info`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `lastname` VARCHAR(255) DEFAULT NULL,
  `idnum` VARCHAR(255) DEFAULT NULL,
  `cell` VARCHAR(50) DEFAULT NULL,
  `tnc1` INT NOT NULL,
  `tnc2` INT DEFAULT NULL,
  `permissions` VARCHAR(255) DEFAULT NULL,
  `notification` INT NOT NULL DEFAULT 0,
  `address` VARCHAR(500) DEFAULT NULL,
  `suburb` VARCHAR(255) DEFAULT NULL,
  `state` VARCHAR(255) DEFAULT NULL,
  `postal_code` VARCHAR(10) DEFAULT NULL,
  `booking_colour` VARCHAR(20) DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  `boat_licence` INT NOT NULL,
  `boat_file` VARCHAR(255) DEFAULT NULL,
  `licence_expiry` DATE DEFAULT NULL,
  `drivers_licence` INT NOT NULL,
  `drivers_file` VARCHAR(255) DEFAULT NULL,
  `drivers_expiry` DATE DEFAULT NULL,
  `credit_card` INT NOT NULL,
  `owners_form` INT NOT NULL,
  `disclosure_form` INT NOT NULL,
  `training1` DATE DEFAULT NULL,
  `training2` DATE DEFAULT NULL,
  `trainer` VARCHAR(255) DEFAULT NULL,
  `training_ques` INT NOT NULL,
  `checklist` INT NOT NULL,
  `training_comp` INT NOT NULL,
  `night_training` DATE DEFAULT NULL,
  `open_sea_training` INT NOT NULL,
  `dummy_owner` INT NOT NULL DEFAULT 0,
  `location_id` VARCHAR(255) DEFAULT NULL,
  `fall_2` INT DEFAULT NULL,
  `boats_id` VARCHAR(255) DEFAULT NULL,
  `fall_4` INT DEFAULT NULL,
  `pickup` INT DEFAULT NULL,
  `dropoff` INT DEFAULT NULL,
  `birthday` DATE DEFAULT NULL,
  `anti_phish_code` VARCHAR(255) DEFAULT NULL,
  `twofa_secret` VARCHAR(500) DEFAULT NULL,
  `pass_changed` INT NOT NULL DEFAULT 0,
  `vip` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_user_info_user_id` (`user_id`),
  KEY `idx_user_info_location_id` (`location_id`),
  KEY `idx_user_info_boats_id` (`boats_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `user_info`
INSERT INTO `user_info` (`id`, `user_id`, `name`, `lastname`, `idnum`, `cell`, `tnc1`, `tnc2`, `permissions`, `notification`, `address`, `suburb`, `state`, `postal_code`, `booking_colour`, `notes`, `boat_licence`, `boat_file`, `licence_expiry`, `drivers_licence`, `drivers_file`, `drivers_expiry`, `credit_card`, `owners_form`, `disclosure_form`, `training1`, `training2`, `trainer`, `training_ques`, `checklist`, `training_comp`, `night_training`, `open_sea_training`, `dummy_owner`, `location_id`, `fall_2`, `boats_id`, `fall_4`, `pickup`, `dropoff`, `birthday`, `anti_phish_code`, `twofa_secret`, `pass_changed`, `vip`) VALUES
(1, 1, 'Milo', 'Zilo Personalisation', NULL, '+27725919199', 1, 1, NULL, 1, '', '', '02', '', '', NULL, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5, 5, 'User Test', 'Zilo Personalisation', NULL, '+27725919199', 1, 1, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- ---------------------------------------------------------------------------
-- Table `vehicles`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `chassis_id` INT NOT NULL COMMENT 'Foreign Key -> Vehic. Chassis',
  `category_id` INT NOT NULL COMMENT 'Foreign Key -> Vehicels Category',
  `name` VARCHAR(255) NOT NULL,
  `registration_number` VARCHAR(255) NOT NULL,
  `type_name` VARCHAR(255) NOT NULL,
  `type` INT NOT NULL COMMENT '0 -> isHorse, 1 -> isTrailer',
  `category` VARCHAR(255) NOT NULL,
  `description` VARCHAR(500) NOT NULL,
  `layout_name` VARCHAR(255) NOT NULL,
  `layout_description` VARCHAR(500) NOT NULL,
  `layout_config` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_vehicles_chassis_id` (`chassis_id`),
  KEY `idx_vehicles_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `vehicles`
INSERT INTO `vehicles` (`id`, `chassis_id`, `category_id`, `name`, `registration_number`, `type_name`, `type`, `category`, `description`, `layout_name`, `layout_description`, `layout_config`) VALUES
(1, 1, 2, 'jhjhb', 'gjvjhbv', 'kjhbnjkbh', 1, 'hjbkjnk', 'kjnkjn', 'kjnjn', 'kjnkjn', 'kjnkjnkj');

-- ---------------------------------------------------------------------------
-- Table `zin_address`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_address`;
CREATE TABLE `zin_address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `addr_1` VARCHAR(30) NOT NULL,
  `addr_2` VARCHAR(30) NOT NULL,
  `addr_3` VARCHAR(30) NOT NULL,
  `postcode` VARCHAR(10) NOT NULL,
  `country` VARCHAR(30) NOT NULL,
  `flag` SMALLINT NOT NULL,
  `link` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_alerts`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_alerts`;
CREATE TABLE `zin_alerts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `creator` INT DEFAULT NULL,
  `sent_to` VARCHAR(255) NOT NULL,
  `sent_to_id` INT DEFAULT NULL,
  `subject` VARCHAR(255) NOT NULL,
  `email` TEXT DEFAULT NULL,
  `alert_type` VARCHAR(255) NOT NULL,
  `created` DATETIME NOT NULL,
  `sent` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_zin_alerts_sent_to_id` (`sent_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_api_access_history`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_api_access_history`;
CREATE TABLE `zin_api_access_history` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `key_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `src_ip` INT UNSIGNED NOT NULL,
  `service` SMALLINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_api_access_history_key_id` (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_api_keys`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_api_keys`;
CREATE TABLE `zin_api_keys` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `create_date` INT NOT NULL,
  `service` SMALLINT NOT NULL,
  `key` VARCHAR(100) NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_api_keys_ref_id` (`ref_id`),
  KEY `idx_zin_api_keys_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_basevalue_by_size`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_basevalue_by_size`;
CREATE TABLE `zin_basevalue_by_size` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `costcenter` SMALLINT NOT NULL,
  `category` SMALLINT NOT NULL,
  `size_id` INT NOT NULL,
  `base_value` DECIMAL(13,2) DEFAULT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_basevalue_by_size_size_id` (`size_id`),
  KEY `idx_zin_basevalue_by_size_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_batchdetails`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_batchdetails`;
CREATE TABLE `zin_batchdetails` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `batch_id` INT NOT NULL,
  `tyre_id` INT NOT NULL,
  `num_1` INT DEFAULT NULL,
  `num_2` INT DEFAULT NULL,
  `num_3` INT DEFAULT NULL,
  `str` VARCHAR(20) DEFAULT NULL,
  `cost` DECIMAL(13,2) DEFAULT NULL,
  `batch_pos` SMALLINT NOT NULL,
  `num_4` INT DEFAULT NULL,
  `num_5` INT DEFAULT NULL,
  `num_6` INT DEFAULT NULL,
  `num_7` INT DEFAULT NULL,
  `num_8` INT DEFAULT NULL,
  `num_9` INT DEFAULT NULL,
  `photo` VARCHAR(255) DEFAULT NULL,
  `num_10` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_batchdetails_tyre` (`tyre_id`,`batch_id`),
  KEY `idx_batchdetails_batch_tyre` (`batch_id`,`tyre_id`),
  KEY `idx_batchdetails_tyre_id` (`tyre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_batches`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_batches`;
CREATE TABLE `zin_batches` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `batch_id` INT NOT NULL,
  `description` VARCHAR(50) NOT NULL,
  `state` SMALLINT NOT NULL,
  `opened_by` INT NOT NULL,
  `batch_date` INT NOT NULL,
  `event_id` INT NOT NULL,
  `long_0` INT DEFAULT NULL,
  `long_1` INT DEFAULT NULL,
  `long_2` INT DEFAULT NULL,
  `long_3` INT DEFAULT NULL,
  `string_0` VARCHAR(30) DEFAULT NULL,
  `string_1` VARCHAR(30) DEFAULT NULL,
  `closed_by` INT NOT NULL,
  `closed_date` INT NOT NULL,
  `flag_0` INT DEFAULT NULL,
  `depot_id` INT DEFAULT NULL,
  `long_4` INT DEFAULT NULL,
  `comment` VARCHAR(300) DEFAULT NULL,
  `file_path` VARCHAR(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_zin_batches_batch_id` (`batch_id`),
  KEY `idx_batches_lookup` (`batch_id`,`state`,`batch_date`),
  KEY `idx_batches_opened_by` (`opened_by`),
  KEY `idx_batches_depot_id` (`depot_id`),
  KEY `idx_batches_event_id` (`event_id`),
  KEY `idx_batches_state` (`state`),
  KEY `idx_batches_long_0` (`long_0`),
  KEY `idx_batches_batch_date` (`batch_date`),
  KEY `idx_batches_closed_date` (`closed_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_batch_auth`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_batch_auth`;
CREATE TABLE `zin_batch_auth` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `batch` SMALLINT NOT NULL,
  `user_level` SMALLINT NOT NULL,
  `pin` VARCHAR(5) NOT NULL,
  `email_addr` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_batch_costs`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_batch_costs`;
CREATE TABLE `zin_batch_costs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `batch_id` INT NOT NULL,
  `cost_id` INT NOT NULL,
  `qty` SMALLINT NOT NULL,
  `tyre_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_batch_costs_batch_id` (`batch_id`),
  KEY `idx_zin_batch_costs_cost_id` (`cost_id`),
  KEY `idx_zin_batch_costs_tyre_id` (`tyre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_bay_entries`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_bay_entries`;
CREATE TABLE `zin_bay_entries` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `zone` SMALLINT NOT NULL,
  `depot_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `sequence` SMALLINT NOT NULL,
  `state` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_bay_entries_ref_id` (`ref_id`),
  KEY `idx_zin_bay_entries_depot_id` (`depot_id`),
  KEY `idx_zin_bay_entries_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_breakdown`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_breakdown`;
CREATE TABLE `zin_breakdown` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `description` VARCHAR(500) NOT NULL,
  `open_stamp` INT NOT NULL,
  `close_stamp` INT NOT NULL,
  `end_date_stamp` INT NOT NULL,
  `vehicle_id` INT NOT NULL,
  `driver_id` INT NOT NULL,
  `longitude` DECIMAL(11,8) DEFAULT NULL,
  `latitude` DECIMAL(10,8) DEFAULT NULL,
  `status` SMALLINT NOT NULL,
  `break_type` SMALLINT NOT NULL,
  `services` SMALLINT NOT NULL,
  `created_by` INT NOT NULL,
  `create_stamp` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `flag` SMALLINT DEFAULT NULL,
  `extra_details` INT DEFAULT NULL,
  `odometer` INT DEFAULT NULL,
  `trip_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_breakdown_ref_id` (`ref_id`),
  KEY `idx_zin_breakdown_vehicle_id` (`vehicle_id`),
  KEY `idx_zin_breakdown_driver_id` (`driver_id`),
  KEY `idx_zin_breakdown_user_id` (`user_id`),
  KEY `idx_zin_breakdown_trip_id` (`trip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_breakdown_parts`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_breakdown_parts`;
CREATE TABLE `zin_breakdown_parts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `supplier_callout` INT NOT NULL,
  `part_type` SMALLINT NOT NULL,
  `sub_id` INT NOT NULL,
  `stock_code` VARCHAR(15) NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  `flags` INT NOT NULL,
  `qty` DECIMAL(13,3) NOT NULL,
  `cost` DECIMAL(13,2) NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `tyre_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_breakdown_parts_ref_id` (`ref_id`),
  KEY `idx_zin_breakdown_parts_sub_id` (`sub_id`),
  KEY `idx_zin_breakdown_parts_user_id` (`user_id`),
  KEY `idx_zin_breakdown_parts_tyre_id` (`tyre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_callout_supplier`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_callout_supplier`;
CREATE TABLE `zin_callout_supplier` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `break_id` INT NOT NULL,
  `supplier_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `contact` VARCHAR(40) NOT NULL,
  `tel` VARCHAR(15) NOT NULL,
  `cell` VARCHAR(15) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `order_num` VARCHAR(10) NOT NULL,
  `inv_num` VARCHAR(10) NOT NULL,
  `services` SMALLINT NOT NULL,
  `contact_date` INT NOT NULL,
  `on_site_date` INT NOT NULL,
  `off_site_date` INT NOT NULL,
  `return_date` INT NOT NULL,
  `inv_date` INT NOT NULL,
  `paid_date` INT NOT NULL,
  `tyres_add` SMALLINT NOT NULL,
  `tyres_taken` SMALLINT NOT NULL,
  `status` SMALLINT NOT NULL,
  `callout_fee` DECIMAL(13,2) DEFAULT NULL,
  `travel_fee` DECIMAL(13,2) DEFAULT NULL,
  `labour_fee` DECIMAL(13,2) DEFAULT NULL,
  `toll_fee` DECIMAL(13,2) DEFAULT NULL,
  `phone_calls_fee` DECIMAL(13,2) DEFAULT NULL,
  `strip_fit_fee` DECIMAL(13,2) DEFAULT NULL,
  `service_fee` DECIMAL(13,2) DEFAULT NULL,
  `callout_distance` INT DEFAULT NULL,
  `callout_hours` DECIMAL(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_callout_supplier_ref_id` (`ref_id`),
  KEY `idx_zin_callout_supplier_break_id` (`break_id`),
  KEY `idx_zin_callout_supplier_supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_chassistype`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_chassistype`;
CREATE TABLE `zin_chassistype` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `chassis_id` INT NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  `chassis_type` SMALLINT NOT NULL,
  `layout` INT NOT NULL,
  `axle` INT NOT NULL,
  `steer_press` INT NOT NULL,
  `drive_press` INT NOT NULL,
  `trail_press` INT NOT NULL,
  `visibility` INT NOT NULL,
  `version` INT NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  `wheels` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_chassistype_chassis_id` (`chassis_id`),
  KEY `idx_zin_chassistype_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_comments`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_comments`;
CREATE TABLE `zin_comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` SMALLINT NOT NULL,
  `ref_id` INT NOT NULL COMMENT 'Old Table "ID" Column',
  `remark` VARCHAR(200) NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_comments_ref_id` (`ref_id`),
  KEY `idx_zin_comments_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_contacts`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_contacts`;
CREATE TABLE `zin_contacts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `contact_id` INT NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `tel` VARCHAR(15) NOT NULL,
  `fax` VARCHAR(15) NOT NULL,
  `cell` VARCHAR(15) NOT NULL,
  `contact_type` SMALLINT NOT NULL,
  `desig_id` INT NOT NULL,
  `link_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `email` VARCHAR(50) DEFAULT NULL,
  `depot_id` INT DEFAULT NULL,
  `alert_lvl` INT DEFAULT NULL,
  `costcenter` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_contacts_contact_id` (`contact_id`),
  KEY `idx_zin_contacts_desig_id` (`desig_id`),
  KEY `idx_zin_contacts_link_id` (`link_id`),
  KEY `idx_zin_contacts_user_id` (`user_id`),
  KEY `idx_zin_contacts_depot_id` (`depot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_customers`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_customers`;
CREATE TABLE `zin_customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cust_id` INT NOT NULL,
  `ac_code` VARCHAR(15) NOT NULL,
  `name` VARCHAR(75) NOT NULL,
  `cust_type` SMALLINT NOT NULL,
  `state` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_customers_cust_id` (`cust_id`),
  KEY `idx_zin_customers_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_depot`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_depot`;
CREATE TABLE `zin_depot` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `depot_id` INT NOT NULL,
  `name` VARCHAR(80) NOT NULL,
  `state` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `link_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `base` SMALLINT DEFAULT NULL,
  `esculate` SMALLINT DEFAULT NULL,
  `colour` INT DEFAULT NULL,
  `parent_id` INT DEFAULT 0,
  `category` SMALLINT DEFAULT 0,
  `active` SMALLINT DEFAULT 0,
  `depot_type` SMALLINT DEFAULT 0,
  `days_min` SMALLINT DEFAULT 0,
  `days_max` SMALLINT DEFAULT 0,
  `config_0` BIGINT DEFAULT 0,
  `config_1` BIGINT DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_zin_depot_depot_id` (`depot_id`),
  KEY `idx_zin_depot_user_id` (`user_id`),
  KEY `idx_zin_depot_link_id` (`link_id`),
  KEY `idx_zin_depot_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_depot_group`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_depot_group`;
CREATE TABLE `zin_depot_group` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `group_id` INT NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `state` SMALLINT NOT NULL,
  `costcenter` INT NOT NULL,
  `create_by` INT NOT NULL,
  `create_on` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_depot_group_group_id` (`group_id`),
  KEY `idx_zin_depot_group_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_depot_link_group`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_depot_link_group`;
CREATE TABLE `zin_depot_link_group` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `group_id` INT NOT NULL,
  `depot_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_depot_link_group_group_id` (`group_id`),
  KEY `idx_zin_depot_link_group_depot_id` (`depot_id`),
  KEY `idx_zin_depot_link_group_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_depot_settings`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_depot_settings`;
CREATE TABLE `zin_depot_settings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `depot_id` INT NOT NULL,
  `mask` BIGINT NOT NULL,
  `enabled` SMALLINT NOT NULL,
  `user_id` INT DEFAULT NULL,
  `last_update` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_depot_settings_depot_id` (`depot_id`),
  KEY `idx_zin_depot_settings_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_depth`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_depth`;
CREATE TABLE `zin_depth` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyre_id` INT NOT NULL,
  `vehicle_id` INT NOT NULL,
  `date_on` INT NOT NULL,
  `duration` INT NOT NULL,
  `distance` INT NOT NULL,
  `tread_depth` SMALLINT NOT NULL,
  `tread_used` SMALLINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_depth_tyre_id` (`tyre_id`),
  KEY `idx_zin_depth_vehicle_id` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_designation`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_designation`;
CREATE TABLE `zin_designation` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `desig_id` INT NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `desig_type` SMALLINT NOT NULL,
  `flag` SMALLINT NOT NULL,
  `visibility` INT NOT NULL,
  `version` INT NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_designation_desig_id` (`desig_id`),
  KEY `idx_zin_designation_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_display_panel`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_display_panel`;
CREATE TABLE `zin_display_panel` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `id_ent` VARCHAR(20) NOT NULL,
  `view_id` INT NOT NULL,
  `title` VARCHAR(50) NOT NULL,
  `user_type` SMALLINT NOT NULL,
  `status` SMALLINT NOT NULL,
  `variables` VARCHAR(1500) NOT NULL,
  `date_stamp` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_display_panel_ref_id` (`ref_id`),
  KEY `idx_zin_display_panel_view_id` (`view_id`),
  KEY `idx_zin_display_panel_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_distance`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_distance`;
CREATE TABLE `zin_distance` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyre_id` INT NOT NULL,
  `distance` INT NOT NULL,
  `date_stamp` INT DEFAULT NULL,
  `reason` VARCHAR(30) DEFAULT NULL,
  `last_update` INT DEFAULT NULL,
  `user_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_distance_tyre_id` (`tyre_id`),
  KEY `idx_zin_distance_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_drivers`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_drivers`;
CREATE TABLE `zin_drivers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `driver_id` INT NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `employee_id` VARCHAR(15) NOT NULL,
  `birth_date` INT NOT NULL,
  `status` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `tel` VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_drivers_driver_id` (`driver_id`),
  KEY `idx_zin_drivers_employee_id` (`employee_id`),
  KEY `idx_zin_drivers_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_driver_connections`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_driver_connections`;
CREATE TABLE `zin_driver_connections` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `driver_id` INT NOT NULL,
  `token` VARCHAR(100) DEFAULT NULL,
  `login_date` INT DEFAULT NULL,
  `state` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_driver_connections_driver_id` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_driver_rig_combinations`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_driver_rig_combinations`;
CREATE TABLE `zin_driver_rig_combinations` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rig_id` INT NOT NULL,
  `driver_id` INT NOT NULL,
  `odo_start` INT NOT NULL,
  `odo_end` INT NOT NULL,
  `trip_start` INT NOT NULL,
  `trip_end` INT NOT NULL,
  `lead_vehicle` SMALLINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_driver_rig_combinations_rig_id` (`rig_id`),
  KEY `idx_zin_driver_rig_combinations_driver_id` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_flags`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_flags`;
CREATE TABLE `zin_flags` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `mode` SMALLINT NOT NULL,
  `control_lip` BIGINT NOT NULL,
  `org_id` INT NOT NULL,
  `org_name` VARCHAR(30) NOT NULL,
  `site_url` VARCHAR(70) NOT NULL,
  `certificate` VARCHAR(40) NOT NULL,
  `currency` VARCHAR(5) NOT NULL,
  `min_tread` INT NOT NULL,
  `pressure` INT NOT NULL,
  `replicate` INT NOT NULL,
  `cpk_report` INT NOT NULL,
  `language_id` INT NOT NULL,
  `auto_trips` BIGINT DEFAULT NULL,
  `odo_in_miles` SMALLINT DEFAULT NULL,
  `year_start` SMALLINT DEFAULT NULL,
  `casing_cost` DECIMAL(13,2) DEFAULT NULL,
  `logo` VARCHAR(15) DEFAULT NULL,
  `budget_cpk` DECIMAL(13,4) DEFAULT NULL,
  `case_devalue` SMALLINT DEFAULT NULL,
  `cpk_calc` SMALLINT DEFAULT NULL,
  `batch_force` SMALLINT DEFAULT NULL,
  `prefix` SMALLINT DEFAULT NULL,
  `sensor_url` VARCHAR(60) DEFAULT NULL,
  `categories_num` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_flags_org_id` (`org_id`),
  KEY `idx_zin_flags_language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table `zin_flags`
INSERT INTO `zin_flags` (`id`, `mode`, `control_lip`, `org_id`, `org_name`, `site_url`, `certificate`, `currency`, `min_tread`, `pressure`, `replicate`, `cpk_report`, `language_id`, `auto_trips`, `odo_in_miles`, `year_start`, `casing_cost`, `logo`, `budget_cpk`, `case_devalue`, `cpk_calc`, `batch_force`, `prefix`, `sensor_url`, `categories_num`) VALUES
(1, 0, 2619774872, 550, 'DEVOP SITE', 'devop.intasect.co.za', 'mi0yvTGX1F00paPS16jR', 'R', 0, 800, 1775749581, 0, 1, -8998119378677889456, 0, 23, 0, NULL, 0.68, 0, 1, 0, 67, NULL, 1);

-- ---------------------------------------------------------------------------
-- Table `zin_gatepass`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_gatepass`;
CREATE TABLE `zin_gatepass` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `depot_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `status` SMALLINT NOT NULL,
  `vehicle_id` INT NOT NULL,
  `items` INT NOT NULL,
  `zone` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_gatepass_depot_id` (`depot_id`),
  KEY `idx_zin_gatepass_user_id` (`user_id`),
  KEY `idx_zin_gatepass_vehicle_id` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_gatepass_element_names`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_gatepass_element_names`;
CREATE TABLE `zin_gatepass_element_names` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `item_id` INT NOT NULL,
  `vehicle_class` SMALLINT NOT NULL,
  `element` SMALLINT NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_gatepass_element_names_item_id` (`item_id`),
  KEY `idx_zin_gatepass_element_names_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_gatepass_event`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_gatepass_event`;
CREATE TABLE `zin_gatepass_event` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `event_id` INT NOT NULL,
  `direction` SMALLINT NOT NULL,
  `date_stamp` INT NOT NULL,
  `depot_id` INT NOT NULL,
  `trip_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_gatepass_event_ref_id` (`ref_id`),
  KEY `idx_zin_gatepass_event_event_id` (`event_id`),
  KEY `idx_zin_gatepass_event_depot_id` (`depot_id`),
  KEY `idx_zin_gatepass_event_trip_id` (`trip_id`),
  KEY `idx_zin_gatepass_event_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_gatepass_header`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_gatepass_header`;
CREATE TABLE `zin_gatepass_header` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `template_id` INT NOT NULL,
  `status` SMALLINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_gatepass_header_ref_id` (`ref_id`),
  KEY `idx_zin_gatepass_header_template_id` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_gatepass_inputs`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_gatepass_inputs`;
CREATE TABLE `zin_gatepass_inputs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `event_id` INT NOT NULL,
  `vehicle_id` INT NOT NULL,
  `item_id` INT NOT NULL,
  `side` SMALLINT NOT NULL,
  `qty_good` SMALLINT NOT NULL,
  `qty_bad` SMALLINT NOT NULL,
  `status` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_gatepass_inputs_ref_id` (`ref_id`),
  KEY `idx_zin_gatepass_inputs_event_id` (`event_id`),
  KEY `idx_zin_gatepass_inputs_vehicle_id` (`vehicle_id`),
  KEY `idx_zin_gatepass_inputs_item_id` (`item_id`),
  KEY `idx_zin_gatepass_inputs_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_gatepass_input_entry`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_gatepass_input_entry`;
CREATE TABLE `zin_gatepass_input_entry` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `input_id` INT NOT NULL,
  `entry` SMALLINT NOT NULL,
  `element` SMALLINT NOT NULL,
  `photo` VARCHAR(150) DEFAULT NULL,
  `str` VARCHAR(50) DEFAULT NULL,
  `expiry` INT NOT NULL,
  `num` DECIMAL(13,3) NOT NULL,
  `status` SMALLINT NOT NULL,
  `last_checked` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_gatepass_input_entry_input_id` (`input_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_gatepass_items`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_gatepass_items`;
CREATE TABLE `zin_gatepass_items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  `gate_type` SMALLINT NOT NULL,
  `flag` SMALLINT NOT NULL,
  `visibility` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `version` INT NOT NULL,
  `veh_type_flags` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_gatepass_items_ref_id` (`ref_id`),
  KEY `idx_zin_gatepass_items_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_gatepass_template_header`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_gatepass_template_header`;
CREATE TABLE `zin_gatepass_template_header` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `depot_id` INT NOT NULL,
  `flag` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_gatepass_template_header_ref_id` (`ref_id`),
  KEY `idx_zin_gatepass_template_header_depot_id` (`depot_id`),
  KEY `idx_zin_gatepass_template_header_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_gatepass_template_items`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_gatepass_template_items`;
CREATE TABLE `zin_gatepass_template_items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `item_id` INT NOT NULL,
  `min_qty` SMALLINT NOT NULL,
  `record` SMALLINT NOT NULL,
  `valid_min` DECIMAL(13,3) NOT NULL,
  `valid_max` DECIMAL(13,3) NOT NULL,
  `expiry_days` SMALLINT NOT NULL,
  `string_min` SMALLINT NOT NULL,
  `sequence` SMALLINT DEFAULT NULL,
  `side` SMALLINT DEFAULT NULL,
  `applies_to` SMALLINT DEFAULT NULL,
  `checked_days` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_gatepass_template_items_ref_id` (`ref_id`),
  KEY `idx_zin_gatepass_template_items_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_gps_zones`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_gps_zones`;
CREATE TABLE `zin_gps_zones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `description` VARCHAR(50) NOT NULL,
  `depot_id` INT NOT NULL,
  `direction` SMALLINT NOT NULL,
  `status` SMALLINT NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  `zone` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_gps_zones_ref_id` (`ref_id`),
  KEY `idx_zin_gps_zones_depot_id` (`depot_id`),
  KEY `idx_zin_gps_zones_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_issue_details`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_issue_details`;
CREATE TABLE `zin_issue_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `issue_id` INT NOT NULL,
  `item_id` INT NOT NULL,
  `qty` DECIMAL(13,3) NOT NULL,
  `details` VARCHAR(50) NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_issue_details_issue_id` (`issue_id`),
  KEY `idx_zin_issue_details_item_id` (`item_id`),
  KEY `idx_zin_issue_details_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_issue_item`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_issue_item`;
CREATE TABLE `zin_issue_item` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `issue_date` INT NOT NULL,
  `reference` VARCHAR(30) NOT NULL,
  `location` SMALLINT NOT NULL,
  `loc_details` INT NOT NULL,
  `user_id` INT NOT NULL,
  `submit_date` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_issue_item_ref_id` (`ref_id`),
  KEY `idx_zin_issue_item_loc_details` (`loc_details`),
  KEY `idx_zin_issue_item_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_items`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_items`;
CREATE TABLE `zin_items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `item_type` SMALLINT NOT NULL,
  `serial_number` VARCHAR(100) NOT NULL,
  `location` SMALLINT NOT NULL,
  `loc_details` INT NOT NULL,
  `qty` DECIMAL(13,3) NOT NULL,
  `qty_full` DECIMAL(13,3) NOT NULL,
  `create_stamp` INT NOT NULL,
  `user_id` INT NOT NULL,
  `cost_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_items_ref_id` (`ref_id`),
  KEY `idx_zin_items_loc_details` (`loc_details`),
  KEY `idx_zin_items_user_id` (`user_id`),
  KEY `idx_zin_items_cost_id` (`cost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_item_costs`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_item_costs`;
CREATE TABLE `zin_item_costs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `order_num` VARCHAR(15) NOT NULL,
  `inv_num` VARCHAR(15) NOT NULL,
  `supplier_id` INT NOT NULL,
  `cost` DECIMAL(13,2) NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `depot_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_item_costs_ref_id` (`ref_id`),
  KEY `idx_zin_item_costs_supplier_id` (`supplier_id`),
  KEY `idx_zin_item_costs_user_id` (`user_id`),
  KEY `idx_zin_item_costs_depot_id` (`depot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_item_location`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_item_location`;
CREATE TABLE `zin_item_location` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `location` SMALLINT NOT NULL,
  `loc_details` INT NOT NULL,
  `issue_id` INT NOT NULL,
  `qty_issued` DECIMAL(13,3) NOT NULL,
  `details` VARCHAR(50) NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_item_location_ref_id` (`ref_id`),
  KEY `idx_zin_item_location_loc_details` (`loc_details`),
  KEY `idx_zin_item_location_issue_id` (`issue_id`),
  KEY `idx_zin_item_location_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_item_transfers`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_item_transfers`;
CREATE TABLE `zin_item_transfers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `transfer_id` INT NOT NULL,
  `sending_driver_id` INT NOT NULL,
  `recieving_driver_id` INT NOT NULL,
  `start_time` INT NOT NULL,
  `end_time` INT NOT NULL,
  `status` SMALLINT NOT NULL,
  `num_items` SMALLINT NOT NULL,
  `num_spares` SMALLINT NOT NULL,
  `otp` SMALLINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_item_transfers_transfer_id` (`transfer_id`),
  KEY `idx_zin_item_transfers_sending_driver_id` (`sending_driver_id`),
  KEY `idx_zin_item_transfers_recieving_driver_id` (`recieving_driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_item_types`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_item_types`;
CREATE TABLE `zin_item_types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `category` SMALLINT NOT NULL,
  `stock_code` VARCHAR(15) NOT NULL,
  `gatepass_id` INT NOT NULL,
  `description` VARCHAR(140) NOT NULL,
  `active` SMALLINT NOT NULL,
  `features` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_item_types_ref_id` (`ref_id`),
  KEY `idx_zin_item_types_gatepass_id` (`gatepass_id`),
  KEY `idx_zin_item_types_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_kpa_default`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_kpa_default`;
CREATE TABLE `zin_kpa_default` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `size_id` INT NOT NULL,
  `make_id` INT NOT NULL,
  `tread_id` INT NOT NULL,
  `steer_kpa` SMALLINT NOT NULL,
  `drive_kpa` SMALLINT NOT NULL,
  `trail_kpa` SMALLINT NOT NULL,
  `spare_kpa` SMALLINT NOT NULL,
  `depot_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_kpa_default_ref_id` (`ref_id`),
  KEY `idx_zin_kpa_default_size_id` (`size_id`),
  KEY `idx_zin_kpa_default_make_id` (`make_id`),
  KEY `idx_zin_kpa_default_tread_id` (`tread_id`),
  KEY `idx_zin_kpa_default_depot_id` (`depot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_languages`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_languages`;
CREATE TABLE `zin_languages` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `language_id` INT NOT NULL,
  `description` VARCHAR(20) NOT NULL,
  `font_list` VARCHAR(50) NOT NULL,
  `font_size` SMALLINT NOT NULL,
  `lang_code` VARCHAR(10) NOT NULL,
  `visibility` INT NOT NULL,
  `version` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_languages_language_id` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_lang_text`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_lang_text`;
CREATE TABLE `zin_lang_text` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `label_id` INT NOT NULL,
  `language_id` INT NOT NULL,
  `sentence` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_lang_text_label_id` (`label_id`),
  KEY `idx_zin_lang_text_language_id` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_makes`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_makes`;
CREATE TABLE `zin_makes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `make_id` INT NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  `make_type` SMALLINT NOT NULL,
  `flag` SMALLINT NOT NULL,
  `visibility` INT NOT NULL,
  `version` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `category` SMALLINT DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_zin_makes_make_id` (`make_id`),
  KEY `idx_zin_makes_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_misc_consumables`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_misc_consumables`;
CREATE TABLE `zin_misc_consumables` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `consume_id` INT NOT NULL,
  `invoice_id` INT NOT NULL,
  `cost` DECIMAL(13,2) NOT NULL,
  `cost_id` INT NOT NULL,
  `qty` SMALLINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_misc_consumables_consume_id` (`consume_id`),
  KEY `idx_zin_misc_consumables_invoice_id` (`invoice_id`),
  KEY `idx_zin_misc_consumables_cost_id` (`cost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_misc_costs`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_misc_costs`;
CREATE TABLE `zin_misc_costs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `cost_date` INT NOT NULL,
  `cost_type` SMALLINT NOT NULL,
  `reference` VARCHAR(30) NOT NULL,
  `cost` DECIMAL(13,2) NOT NULL,
  `vehicle_id` INT NOT NULL,
  `depot_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `tyre_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_misc_costs_ref_id` (`ref_id`),
  KEY `idx_zin_misc_costs_vehicle_id` (`vehicle_id`),
  KEY `idx_zin_misc_costs_depot_id` (`depot_id`),
  KEY `idx_zin_misc_costs_user_id` (`user_id`),
  KEY `idx_zin_misc_costs_tyre_id` (`tyre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_misc_cost_types`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_misc_cost_types`;
CREATE TABLE `zin_misc_cost_types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cost_id` INT NOT NULL,
  `description` VARCHAR(30) NOT NULL,
  `allocated` SMALLINT NOT NULL,
  `flag` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `visibility` INT NOT NULL,
  `version` INT NOT NULL,
  `default_cost` DECIMAL(13,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_misc_cost_types_cost_id` (`cost_id`),
  KEY `idx_zin_misc_cost_types_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_misc_invoice`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_misc_invoice`;
CREATE TABLE `zin_misc_invoice` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `invoice_id` INT NOT NULL,
  `supplier_id` INT NOT NULL,
  `order_num` VARCHAR(20) NOT NULL,
  `invoice_num` VARCHAR(20) NOT NULL,
  `date_stamp` INT NOT NULL,
  `depot_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_misc_invoice_invoice_id` (`invoice_id`),
  KEY `idx_zin_misc_invoice_supplier_id` (`supplier_id`),
  KEY `idx_zin_misc_invoice_depot_id` (`depot_id`),
  KEY `idx_zin_misc_invoice_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_misc_movement`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_misc_movement`;
CREATE TABLE `zin_misc_movement` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cost_id` INT NOT NULL,
  `depot_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `event_id` INT NOT NULL,
  `location` SMALLINT NOT NULL,
  `loc_details` INT NOT NULL,
  `batch_id` INT NOT NULL,
  `qty` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_misc_movement_cost_id` (`cost_id`),
  KEY `idx_zin_misc_movement_depot_id` (`depot_id`),
  KEY `idx_zin_misc_movement_event_id` (`event_id`),
  KEY `idx_zin_misc_movement_loc_details` (`loc_details`),
  KEY `idx_zin_misc_movement_batch_id` (`batch_id`),
  KEY `idx_zin_misc_movement_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_misc_stock_check_details`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_misc_stock_check_details`;
CREATE TABLE `zin_misc_stock_check_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `stock_check_id` INT NOT NULL,
  `cost_id` INT NOT NULL,
  `qty_on_hand` INT NOT NULL,
  `qty_counted` INT NOT NULL,
  `difference` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_misc_stock_check_details_stock_check_id` (`stock_check_id`),
  KEY `idx_zin_misc_stock_check_details_cost_id` (`cost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_misc_stock_check_header`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_misc_stock_check_header`;
CREATE TABLE `zin_misc_stock_check_header` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `stock_check_id` INT NOT NULL,
  `depot_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `user_id` INT NOT NULL,
  `status` SMALLINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_misc_stock_check_header_stock_check_id` (`stock_check_id`),
  KEY `idx_zin_misc_stock_check_header_depot_id` (`depot_id`),
  KEY `idx_zin_misc_stock_check_header_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_portals`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_portals`;
CREATE TABLE `zin_portals` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `depot_id` INT NOT NULL,
  `view_id` INT NOT NULL,
  `uuid` VARCHAR(64) NOT NULL,
  `status` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_portals_depot_id` (`depot_id`),
  KEY `idx_zin_portals_view_id` (`view_id`),
  KEY `idx_zin_portals_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_portal_access_requests`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_portal_access_requests`;
CREATE TABLE `zin_portal_access_requests` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date_stamp` INT NOT NULL,
  `depot_id` INT NOT NULL,
  `view_id` INT NOT NULL,
  `ip_addr` INT UNSIGNED NOT NULL,
  `reverse_dns` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_portal_access_requests_depot_id` (`depot_id`),
  KEY `idx_zin_portal_access_requests_view_id` (`view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_pressures`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_pressures`;
CREATE TABLE `zin_pressures` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vehicle_id` INT NOT NULL,
  `axle` SMALLINT NOT NULL,
  `pressure` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_pressures_vehicle_id` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_purchase_order_entry`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_purchase_order_entry`;
CREATE TABLE `zin_purchase_order_entry` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `header_id` INT NOT NULL,
  `row_num` INT NOT NULL,
  `qty` SMALLINT NOT NULL,
  `qty_Recieved` SMALLINT DEFAULT 0,
  `stock_type` SMALLINT NOT NULL,
  `size_id` INT NOT NULL,
  `make_id` INT NOT NULL,
  `tread_id` INT NOT NULL,
  `price` DECIMAL(13,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_purchase_order_entry_header_id` (`header_id`),
  KEY `idx_zin_purchase_order_entry_size_id` (`size_id`),
  KEY `idx_zin_purchase_order_entry_make_id` (`make_id`),
  KEY `idx_zin_purchase_order_entry_tread_id` (`tread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_purchase_order_header`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_purchase_order_header`;
CREATE TABLE `zin_purchase_order_header` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `header_id` INT NOT NULL,
  `order_num` VARCHAR(20) DEFAULT NULL,
  `inv_num` VARCHAR(40) DEFAULT NULL,
  `costcenter` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `created_by` INT NOT NULL,
  `supplier_id` INT NOT NULL,
  `brand_prefix` VARCHAR(10) NOT NULL,
  `order_status` SMALLINT NOT NULL,
  `num_entries` SMALLINT NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_purchase_order_header_header_id` (`header_id`),
  KEY `idx_zin_purchase_order_header_supplier_id` (`supplier_id`),
  KEY `idx_zin_purchase_order_header_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_reports`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_reports`;
CREATE TABLE `zin_reports` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `report_id` INT NOT NULL,
  `link_id` INT NOT NULL,
  `link_type` SMALLINT NOT NULL,
  `view_id` INT NOT NULL,
  `title` VARCHAR(50) NOT NULL,
  `params` VARCHAR(2000) NOT NULL,
  `frequency` SMALLINT NOT NULL,
  `status` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `last_dispatch` INT DEFAULT NULL,
  `offset_hour` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_reports_report_id` (`report_id`),
  KEY `idx_zin_reports_link_id` (`link_id`),
  KEY `idx_zin_reports_view_id` (`view_id`),
  KEY `idx_zin_reports_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_rfid_tag`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_rfid_tag`;
CREATE TABLE `zin_rfid_tag` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyre_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `user_id` INT NOT NULL,
  `tag` VARCHAR(65) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_rfid_tag_tyre_id` (`tyre_id`),
  KEY `idx_zin_rfid_tag_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_rigs`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_rigs`;
CREATE TABLE `zin_rigs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `trip_id` INT NOT NULL,
  `vehicle_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_vehicle_trip` (`vehicle_id`,`trip_id`),
  KEY `idx_zin_rigs_trip_id` (`trip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_rig_combination_details`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_rig_combination_details`;
CREATE TABLE `zin_rig_combination_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rig_id` INT NOT NULL,
  `vehicle_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_rig_combination_details_rig_id` (`rig_id`),
  KEY `idx_zin_rig_combination_details_vehicle_id` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_routes`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_routes`;
CREATE TABLE `zin_routes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `route_id` INT NOT NULL,
  `description` VARCHAR(50) NOT NULL,
  `desc_code` VARCHAR(6) NOT NULL,
  `point_a` VARCHAR(20) NOT NULL,
  `point_b` VARCHAR(20) NOT NULL,
  `distance` INT NOT NULL,
  `state` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_routes_route_id` (`route_id`),
  KEY `idx_zin_routes_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_service_interval`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_service_interval`;
CREATE TABLE `zin_service_interval` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `category_id` INT NOT NULL,
  `chassis_id` INT NOT NULL,
  `entry_type` SMALLINT NOT NULL,
  `distance` INT NOT NULL,
  `duration` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_service_interval_category_id` (`category_id`),
  KEY `idx_zin_service_interval_chassis_id` (`chassis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_sessions`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_sessions`;
CREATE TABLE `zin_sessions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `session_key` VARCHAR(20) NOT NULL,
  `batch_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `user_type` SMALLINT NOT NULL,
  `expires` INT NOT NULL,
  `language_id` INT NOT NULL,
  `depot_id` INT DEFAULT NULL,
  `vehicle_id` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_sessions_batch_id` (`batch_id`),
  KEY `idx_zin_sessions_user_id` (`user_id`),
  KEY `idx_zin_sessions_language_id` (`language_id`),
  KEY `idx_zin_sessions_depot_id` (`depot_id`),
  KEY `idx_zin_sessions_vehicle_id` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_setup_casing`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_setup_casing`;
CREATE TABLE `zin_setup_casing` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `category` SMALLINT NOT NULL,
  `casing_value` DECIMAL(13,2) NOT NULL,
  `removal_mm` SMALLINT NOT NULL,
  `smooth_mm` SMALLINT NOT NULL,
  `case_devalue` SMALLINT NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_setup_casing_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_sizes`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_sizes`;
CREATE TABLE `zin_sizes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `size_id` INT NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  `ply` SMALLINT NOT NULL,
  `flag` SMALLINT NOT NULL,
  `visibility` INT NOT NULL,
  `version` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_sizes_size_id` (`size_id`),
  KEY `idx_zin_sizes_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_size_cat`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_size_cat`;
CREATE TABLE `zin_size_cat` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `category` SMALLINT NOT NULL,
  `smooth` SMALLINT NOT NULL,
  `removal` SMALLINT NOT NULL,
  `base_value` DECIMAL(13,2) NOT NULL,
  `devalue` SMALLINT NOT NULL,
  `scrap_value` DECIMAL(13,2) DEFAULT NULL,
  `irg_wear` SMALLINT DEFAULT NULL,
  `base_devalue` DECIMAL(13,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_smooth_by_size`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_smooth_by_size`;
CREATE TABLE `zin_smooth_by_size` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `costcenter` SMALLINT NOT NULL,
  `size_id` INT NOT NULL,
  `smooth` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_smooth_by_size_size_id` (`size_id`),
  KEY `idx_zin_smooth_by_size_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_sql_cmd_history`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_sql_cmd_history`;
CREATE TABLE `zin_sql_cmd_history` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `view_id` INT NOT NULL,
  `page_num` SMALLINT NOT NULL,
  `fetch_rows` SMALLINT NOT NULL,
  `sql_type` SMALLINT NOT NULL,
  `sql_str` VARCHAR(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_sql_cmd_history_user_id` (`user_id`),
  KEY `idx_zin_sql_cmd_history_view_id` (`view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_suppliers`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_suppliers`;
CREATE TABLE `zin_suppliers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `supplier_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `supply_type` SMALLINT NOT NULL,
  `state` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `ac_code` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_suppliers_supplier_id` (`supplier_id`),
  KEY `idx_zin_suppliers_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_survey_items`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_survey_items`;
CREATE TABLE `zin_survey_items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `batch_id` INT NOT NULL,
  `survey_date` INT NOT NULL,
  `location` SMALLINT NOT NULL,
  `loc_details` INT NOT NULL,
  `user_id` INT NOT NULL,
  `submit_date` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_survey_items_ref_id` (`ref_id`),
  KEY `idx_zin_survey_items_batch_id` (`batch_id`),
  KEY `idx_zin_survey_items_loc_details` (`loc_details`),
  KEY `idx_zin_survey_items_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_survey_item_details`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_survey_item_details`;
CREATE TABLE `zin_survey_item_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `survey_id` INT NOT NULL,
  `item_id` INT NOT NULL,
  `qty` DECIMAL(13,3) DEFAULT NULL,
  `status` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_survey_item_details_survey_id` (`survey_id`),
  KEY `idx_zin_survey_item_details_item_id` (`item_id`),
  KEY `idx_zin_survey_item_details_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_system_cmds`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_system_cmds`;
CREATE TABLE `zin_system_cmds` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `create_stamp` INT NOT NULL,
  `user_id` INT NOT NULL,
  `status` SMALLINT NOT NULL,
  `cmd` VARCHAR(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_system_cmds_ref_id` (`ref_id`),
  KEY `idx_zin_system_cmds_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_system_cmd_history`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_system_cmd_history`;
CREATE TABLE `zin_system_cmd_history` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cmd_id` INT NOT NULL,
  `execute_stamp` INT NOT NULL,
  `return_code` SMALLINT NOT NULL,
  `duration` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_system_cmd_history_cmd_id` (`cmd_id`),
  KEY `idx_zin_system_cmd_history_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_system_comments`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_system_comments`;
CREATE TABLE `zin_system_comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `code` SMALLINT NOT NULL,
  `last_update` INT NOT NULL,
  `remark` VARCHAR(200) NOT NULL,
  `user_id` INT NOT NULL,
  `visibility` INT NOT NULL,
  `version` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_system_comments_ref_id` (`ref_id`),
  KEY `idx_zin_system_comments_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_tasks`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_tasks`;
CREATE TABLE `zin_tasks` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `opened` INT NOT NULL,
  `closed` INT NOT NULL,
  `vehicle_id` INT NOT NULL,
  `event_id` INT NOT NULL,
  `batch_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `duration` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_tasks_ref_id` (`ref_id`),
  KEY `idx_zin_tasks_vehicle_id` (`vehicle_id`),
  KEY `idx_zin_tasks_event_id` (`event_id`),
  KEY `idx_zin_tasks_batch_id` (`batch_id`),
  KEY `idx_zin_tasks_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_task_history`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_task_history`;
CREATE TABLE `zin_task_history` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `task_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `num_fields` SMALLINT NOT NULL,
  `seconds` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_task_history_task_id` (`task_id`),
  KEY `idx_zin_task_history_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_tpms_batch_details`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_tpms_batch_details`;
CREATE TABLE `zin_tpms_batch_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tpms_batch_id` INT NOT NULL,
  `tpms_entity_id` INT NOT NULL,
  `image` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_tpms_batch_details_tpms_batch_id` (`tpms_batch_id`),
  KEY `idx_zin_tpms_batch_details_tpms_entity_id` (`tpms_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_tpms_batch_header`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_tpms_batch_header`;
CREATE TABLE `zin_tpms_batch_header` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tpms_batch_id` INT NOT NULL,
  `batch_date` INT NOT NULL,
  `action_id` INT NOT NULL,
  `job_card_ref` VARCHAR(50) NOT NULL,
  `destination` INT NOT NULL,
  `depot_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_tpms_batch_header_tpms_batch_id` (`tpms_batch_id`),
  KEY `idx_zin_tpms_batch_header_action_id` (`action_id`),
  KEY `idx_zin_tpms_batch_header_depot_id` (`depot_id`),
  KEY `idx_zin_tpms_batch_header_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_tpms_entity`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_tpms_entity`;
CREATE TABLE `zin_tpms_entity` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `serial` VARCHAR(20) NOT NULL,
  `type` SMALLINT NOT NULL,
  `loc_details` INT NOT NULL,
  `status` SMALLINT NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  `location` SMALLINT DEFAULT NULL,
  `last_move_stamp` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_tpms_entity_ref_id` (`ref_id`),
  KEY `idx_zin_tpms_entity_loc_details` (`loc_details`),
  KEY `idx_zin_tpms_entity_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_tpms_location`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_tpms_location`;
CREATE TABLE `zin_tpms_location` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tpms_entity_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `location` SMALLINT NOT NULL,
  `loc_details` INT NOT NULL,
  `tpms_batch_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_tpms_location_tpms_entity_id` (`tpms_entity_id`),
  KEY `idx_zin_tpms_location_loc_details` (`loc_details`),
  KEY `idx_zin_tpms_location_tpms_batch_id` (`tpms_batch_id`),
  KEY `idx_zin_tpms_location_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_transfer_item_details`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_transfer_item_details`;
CREATE TABLE `zin_transfer_item_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `transfer_id` INT NOT NULL,
  `item_id` INT NOT NULL,
  `qty` DECIMAL(13,3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_transfer_item_details_transfer_id` (`transfer_id`),
  KEY `idx_zin_transfer_item_details_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_transfer_tyre_details`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_transfer_tyre_details`;
CREATE TABLE `zin_transfer_tyre_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `transfer_id` INT NOT NULL,
  `tyre_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_transfer_tyre_details_transfer_id` (`transfer_id`),
  KEY `idx_zin_transfer_tyre_details_tyre_id` (`tyre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_treads`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_treads`;
CREATE TABLE `zin_treads` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tread_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `tread_depth` SMALLINT NOT NULL,
  `make_id` INT NOT NULL,
  `flag` SMALLINT NOT NULL,
  `visibility` INT NOT NULL,
  `version` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_treads_tread_id` (`tread_id`),
  KEY `idx_zin_treads_make_id` (`make_id`),
  KEY `idx_zin_treads_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_trips`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_trips`;
CREATE TABLE `zin_trips` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `trip_id` INT NOT NULL,
  `route_id` INT NOT NULL,
  `driver_id` INT NOT NULL,
  `driver_2_id` INT NOT NULL,
  `trip_date` INT NOT NULL,
  `odometer` INT NOT NULL,
  `distance` INT NOT NULL,
  `state` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_trip_id_date_dist` (`trip_id`,`trip_date`,`state`,`distance`),
  KEY `idx_zin_trips_route_id` (`route_id`),
  KEY `idx_zin_trips_driver_id` (`driver_id`),
  KEY `idx_zin_trips_driver_2_id` (`driver_2_id`),
  KEY `idx_zin_trips_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_tyres`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_tyres`;
CREATE TABLE `zin_tyres` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyre_id` INT NOT NULL,
  `branding` VARCHAR(15) NOT NULL,
  `serial_num` VARCHAR(30) NOT NULL,
  `make_id` INT NOT NULL,
  `size_id` INT NOT NULL,
  `ply_id` INT NOT NULL,
  `tubless` SMALLINT NOT NULL,
  `tyre_type` SMALLINT NOT NULL,
  `num_repairs` SMALLINT NOT NULL,
  `num_retreads` SMALLINT NOT NULL,
  `num_remoulds` SMALLINT NOT NULL,
  `num_balanced` SMALLINT NOT NULL,
  `location` SMALLINT NOT NULL,
  `loc_details` INT NOT NULL,
  `vehicle_pos` SMALLINT NOT NULL,
  `fault_code` BIGINT NOT NULL,
  `tread_id` INT NOT NULL,
  `distance` INT NOT NULL,
  `cpk` DECIMAL(13,4) NOT NULL,
  `tread_left` SMALLINT NOT NULL,
  `eval_flag` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `casing_value` DECIMAL(13,2) DEFAULT NULL,
  `depot_id` INT DEFAULT NULL,
  `life_cpk` DECIMAL(13,4) DEFAULT NULL,
  `depot_id_now` INT NOT NULL,
  `base_value` DECIMAL(13,2) DEFAULT NULL,
  `last_recalculation` INT DEFAULT NULL,
  `dirty` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tyres_tyre_id` (`tyre_id`),
  KEY `idx_tyres_branding` (`branding`),
  KEY `idx_tyres_location` (`location`,`loc_details`),
  KEY `idx_zin_tyres_make_id` (`make_id`),
  KEY `idx_zin_tyres_size_id` (`size_id`),
  KEY `idx_zin_tyres_ply_id` (`ply_id`),
  KEY `idx_zin_tyres_loc_details` (`loc_details`),
  KEY `idx_zin_tyres_tread_id` (`tread_id`),
  KEY `idx_zin_tyres_user_id` (`user_id`),
  KEY `idx_zin_tyres_depot_id` (`depot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_tyre_costs`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_tyre_costs`;
CREATE TABLE `zin_tyre_costs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyre_id` INT NOT NULL,
  `date_ticks` INT NOT NULL,
  `supplier_id` INT NOT NULL,
  `event_id` INT NOT NULL,
  `tread_id` INT NOT NULL,
  `reference` VARCHAR(30) NOT NULL,
  `cost` DECIMAL(13,2) NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `actual_date` INT DEFAULT NULL,
  `batch_id` INT DEFAULT NULL,
  `costcenter` SMALLINT DEFAULT NULL,
  `tyre_type` SMALLINT DEFAULT 0,
  `life` SMALLINT DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_zin_tyre_costs_tyre_id` (`tyre_id`),
  KEY `idx_zin_tyre_costs_supplier_id` (`supplier_id`),
  KEY `idx_zin_tyre_costs_event_id` (`event_id`),
  KEY `idx_zin_tyre_costs_tread_id` (`tread_id`),
  KEY `idx_zin_tyre_costs_user_id` (`user_id`),
  KEY `idx_zin_tyre_costs_batch_id` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_tyre_location`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_tyre_location`;
CREATE TABLE `zin_tyre_location` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyre_id` INT NOT NULL,
  `date_ticks` INT NOT NULL,
  `event_id` INT NOT NULL,
  `location` SMALLINT NOT NULL,
  `loc_details` INT NOT NULL,
  `vehicle_pos` SMALLINT NOT NULL,
  `reason` VARCHAR(30) NOT NULL,
  `job_ticket` VARCHAR(20) NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `actual_date` INT DEFAULT NULL,
  `batch_id` INT DEFAULT NULL,
  `tyre_value` DECIMAL(13,3) DEFAULT NULL,
  `axle_type` SMALLINT DEFAULT NULL,
  `distance` INT DEFAULT NULL,
  `axletype` SMALLINT DEFAULT NULL,
  `costcenter` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tyreid_event_date` (`tyre_id`,`event_id`,`date_ticks`),
  KEY `idx_tyreloc_tyre_dateticks` (`tyre_id`,`date_ticks`),
  KEY `idx_loc_details_event_date` (`loc_details`,`event_id`,`date_ticks`),
  KEY `idx_zin_tyre_location_event_id` (`event_id`),
  KEY `idx_zin_tyre_location_user_id` (`user_id`),
  KEY `idx_zin_tyre_location_batch_id` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_tyre_transfers`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_tyre_transfers`;
CREATE TABLE `zin_tyre_transfers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyre_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `from_costcenter` SMALLINT NOT NULL,
  `to_costcenter` SMALLINT NOT NULL,
  `tyre_value` DECIMAL(13,3) NOT NULL,
  `authorised_by` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_tyre_transfers_tyre_id` (`tyre_id`),
  KEY `idx_zin_tyre_transfers_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_tyre_wear`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_tyre_wear`;
CREATE TABLE `zin_tyre_wear` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tyre_id` INT NOT NULL,
  `date_ticks` INT NOT NULL,
  `event_id` INT NOT NULL,
  `fault_code` BIGINT NOT NULL,
  `tread_left` SMALLINT NOT NULL,
  `pressure` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `actual_date` INT DEFAULT NULL,
  `batch_id` INT DEFAULT NULL,
  `tyre_value` DECIMAL(13,3) DEFAULT NULL,
  `distance` INT DEFAULT NULL,
  `cpk` DECIMAL(13,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tyre_id_date_value` (`tyre_id`,`date_ticks`,`tyre_value`),
  KEY `idx_zin_tyre_wear_event_id` (`event_id`),
  KEY `idx_zin_tyre_wear_user_id` (`user_id`),
  KEY `idx_zin_tyre_wear_batch_id` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_users`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_users`;
CREATE TABLE `zin_users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `login_id` VARCHAR(15) NOT NULL,
  `pass_wd` VARCHAR(15) NOT NULL,
  `user_type` INT NOT NULL,
  `created_by` INT NOT NULL,
  `last_update` INT NOT NULL,
  `notice_flag` SMALLINT DEFAULT NULL,
  `depot_id` INT DEFAULT NULL,
  `alert_lvl` INT DEFAULT NULL,
  `valid_stamp` INT DEFAULT NULL,
  `costcenter` SMALLINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_users_user_id` (`user_id`),
  KEY `idx_zin_users_login_id` (`login_id`),
  KEY `idx_zin_users_depot_id` (`depot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_vehicles`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_vehicles`;
CREATE TABLE `zin_vehicles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vehicle_id` INT NOT NULL,
  `fleet_code` VARCHAR(15) NOT NULL,
  `reg_number` VARCHAR(15) NOT NULL,
  `category_id` INT NOT NULL,
  `chassis_id` INT NOT NULL,
  `make` VARCHAR(50) NOT NULL,
  `model` VARCHAR(100) NOT NULL,
  `state` INT NOT NULL,
  `depot_id` INT NOT NULL,
  `odometer` INT NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  `vin` VARCHAR(20) DEFAULT NULL,
  `engine` VARCHAR(20) DEFAULT NULL,
  `colour` VARCHAR(10) DEFAULT NULL,
  `vehicle_class` SMALLINT DEFAULT NULL,
  `yard_id` INT DEFAULT NULL,
  `yard_stamp` INT DEFAULT NULL,
  `zone` SMALLINT DEFAULT NULL,
  `zone_stamp` INT DEFAULT NULL,
  `rig_master` INT DEFAULT NULL,
  `trailer_partner` INT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_vehicles_vehicle_id` (`vehicle_id`),
  KEY `idx_zin_vehicles_category_id` (`category_id`),
  KEY `idx_zin_vehicles_chassis_id` (`chassis_id`),
  KEY `idx_zin_vehicles_depot_id` (`depot_id`),
  KEY `idx_zin_vehicles_user_id` (`user_id`),
  KEY `idx_zin_vehicles_yard_id` (`yard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_vehicle_history`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_vehicle_history`;
CREATE TABLE `zin_vehicle_history` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vehicle_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `status` INT NOT NULL,
  `costcenter` SMALLINT NOT NULL,
  `reason` SMALLINT NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_vehicle_history_vehicle_id` (`vehicle_id`),
  KEY `idx_zin_vehicle_history_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_vehicle_odometer`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_vehicle_odometer`;
CREATE TABLE `zin_vehicle_odometer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vehicle_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `odometer` INT NOT NULL,
  `reason` VARCHAR(15) NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_vehicle_odometer_vehicle_id` (`vehicle_id`),
  KEY `idx_zin_vehicle_odometer_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_vehicle_services`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_vehicle_services`;
CREATE TABLE `zin_vehicle_services` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `vehicle_id` INT NOT NULL,
  `date_stamp` INT NOT NULL,
  `entry_type` SMALLINT NOT NULL,
  `user_id` INT NOT NULL,
  `odometer` INT NOT NULL,
  `comment` VARCHAR(200) NOT NULL,
  `supplier_id` INT NOT NULL,
  `order_num` VARCHAR(20) NOT NULL,
  `inv_num` VARCHAR(20) NOT NULL,
  `cost` DECIMAL(13,2) NOT NULL,
  `depot_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_vehicle_services_ref_id` (`ref_id`),
  KEY `idx_zin_vehicle_services_vehicle_id` (`vehicle_id`),
  KEY `idx_zin_vehicle_services_user_id` (`user_id`),
  KEY `idx_zin_vehicle_services_supplier_id` (`supplier_id`),
  KEY `idx_zin_vehicle_services_depot_id` (`depot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_vehicle_tags`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_vehicle_tags`;
CREATE TABLE `zin_vehicle_tags` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vehicle_id` INT NOT NULL,
  `side` SMALLINT NOT NULL,
  `tag` VARCHAR(65) NOT NULL,
  `user_id` INT NOT NULL,
  `last_update` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_vehicle_tags_vehicle_id` (`vehicle_id`),
  KEY `idx_zin_vehicle_tags_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_vehicle_target_kpa`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_vehicle_target_kpa`;
CREATE TABLE `zin_vehicle_target_kpa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ref_id` INT NOT NULL,
  `vehicle_id` INT NOT NULL,
  `wheel` SMALLINT NOT NULL,
  `kpa` SMALLINT NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_vehicle_target_kpa_ref_id` (`ref_id`),
  KEY `idx_zin_vehicle_target_kpa_vehicle_id` (`vehicle_id`),
  KEY `idx_zin_vehicle_target_kpa_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ---------------------------------------------------------------------------
-- Table `zin_veh_category`
-- ---------------------------------------------------------------------------

DROP TABLE IF EXISTS `zin_veh_category`;
CREATE TABLE `zin_veh_category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `category_id` INT NOT NULL,
  `description` VARCHAR(50) NOT NULL,
  `flag` SMALLINT NOT NULL,
  `visibility` INT NOT NULL,
  `version` INT NOT NULL,
  `last_update` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zin_veh_category_category_id` (`category_id`),
  KEY `idx_zin_veh_category_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;