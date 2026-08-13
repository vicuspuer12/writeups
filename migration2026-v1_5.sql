-- =========================================================================
-- Database Migration Script: migration2026-v1_5
-- Description: Corrected schema file with fixed syntax errors (backslash removal)
-- Engine: MyISAM
-- =========================================================================

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
TIME_ZONE = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- ------------------------------------------------------------------------
-- Table structure for table `users`
-- ------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------------------
-- Table structure for table `user_profiles`
-- ------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `user_profiles` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------------------
-- Table structure for table `login_history`
-- ------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `login_history` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`login_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------------------
-- Table structure for table `tyre_brands`
-- ------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `tyre_brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------------------
-- Table structure for table `tyre_patterns`
-- ------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `tyre_patterns` (
  `pattern_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `pattern_name` varchar(100) NOT NULL,
  PRIMARY KEY (`pattern_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------------------
-- Table structure for table `tyre_inventory`
-- ------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `tyre_inventory` (
  `tyre_id` int(11) NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(100) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `pattern_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'In Stock',
  `purchase_date` date DEFAULT NULL,
  PRIMARY KEY (`tyre_id`),
  UNIQUE KEY `serial_number` (`serial_number`),
  KEY `brand_id` (`brand_id`),
  KEY `pattern_id` (`pattern_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------------------
-- Table structure for table `fleet_assignments`
-- ------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `fleet_assignments` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `tyre_id` int(11) NOT NULL,
  `fleet_vehicle_id` varchar(50) NOT NULL,
  `assigned_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`assignment_id`),
  KEY `tyre_id` (`tyre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------------------
-- Table structure for table `email_templates`
-- ------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `email_templates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body_content` text NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ------------------------------------------------------------------------
-- Table structure for table `system_configurations`
-- (Cleaned line 151 and resolved backslash / escape sequence exceptions)
-- ------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `system_configurations` (
  `config_key` varchar(100) NOT NULL,
  `config_value` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`config_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
