-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 13, 2020 at 06:10 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iniesta`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

DROP TABLE IF EXISTS `chat_message`;
CREATE TABLE IF NOT EXISTS `chat_message` (
  `chat_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL,
  PRIMARY KEY (`chat_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(9, 147, 148, 'hi', '2020-05-13 17:58:26', 0),
(10, 148, 157, 'hi', '2020-05-13 17:58:40', 1),
(11, 147, 148, 'hi', '2020-05-13 18:05:47', 0),
(12, 148, 147, 'hi', '2020-05-13 18:05:53', 0),
(13, 148, 147, 'hi', '2020-05-13 18:06:07', 0),
(14, 147, 148, 'hi', '2020-05-13 18:06:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `client_job_posting`
--

DROP TABLE IF EXISTS `client_job_posting`;
CREATE TABLE IF NOT EXISTS `client_job_posting` (
  `client_id` int(5) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `job_title` varchar(300) NOT NULL,
  `company_name` varchar(300) NOT NULL,
  `job_category` varchar(300) NOT NULL,
  `job_description` text NOT NULL,
  `job_details` varchar(255) NOT NULL,
  `job_expertise_skills` text NOT NULL,
  `job_vacanies` varchar(200) NOT NULL,
  `client_pay_like` varchar(255) NOT NULL,
  `client_req_experience` varchar(255) NOT NULL,
  `client_project_time` varchar(200) NOT NULL,
  `c_token` varchar(255) NOT NULL,
  KEY `client_id` (`client_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_job_posting`
--

INSERT INTO `client_job_posting` (`client_id`, `client_name`, `date`, `job_title`, `company_name`, `job_category`, `job_description`, `job_details`, `job_expertise_skills`, `job_vacanies`, `client_pay_like`, `client_req_experience`, `client_project_time`, `c_token`) VALUES
(148, 'Piku', '2020-05-09 19:54:03', 'Andriod development', 'MintLimee', 'Web & Mobile Development', 'Apart from developing a thorough understanding of the Android code architecture, interns will also learn about the complete product lifecycle. Full-stack Android development experience will give the interns a first-hand experience of commercial applications and will also inculcate product management skills.\r\nAndroid development experience will give the interns a first-hand experience of commercial applications and will also inculcate product management skills.', 'One-time', ' Java  and Android ', 'more', 'Pay-By-the-Hour', 'intermediate', '1+ Month', 'b9b710710bf5c6ff1cecd3069f40342b1dd70ded630ae44b2acf6446909d'),
(156, '234', '2020-05-09 19:38:22', 'Web development', 'MintLime', 'Web & Mobile Development', ' Creating and updating the website and web services using standard HTML/CSS practices\r\n2. Learning about design, integrating and deploying auto-processing systems.\r\n3. Managing Java/Spring/.NET or PHP based websites.\r\n4. Researching different software programs and maintaining software documentation.\r\n5. Integrating data from various back-end services and databases.', 'On-going', 'Html, Bootstrap, Css', 'one', 'pay-by-the-hour', 'intermediate', '3+ Month', 'f6adb4580c51851cab616e79a8050e93f26fa91146671a78c9efb71b060d'),
(148, 'Piku', '2010-05-20 00:00:00', 'Andriod development', 'CCBUL', 'Web & Mobile Development', 'Okay good!', 'On-going', 'Frotnend', 'More', 'Pay-a-Fixed-Price', 'Entry', '3+ Month', '842447b9ce6b804b060a07afbd3e7f5218d758ba766c12bb55b986ba3082'),
(1, 'Piku', '2013-05-20 00:00:00', 'dsfd', 'dfsdfs', 'Admin Support', 'dfsfdsdsf', 'On-going', 'fsddsfds', 'One', 'Pay-a-Fixed-Price', 'Entry', '1 Month Only', 'aa6d12b7bc85b14f5c9b4c8dba9da826e602c349585684818bf93a78e169');

-- --------------------------------------------------------

--
-- Table structure for table `eduactiontb`
--

DROP TABLE IF EXISTS `eduactiontb`;
CREATE TABLE IF NOT EXISTS `eduactiontb` (
  `profile_id` int(3) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `college_name` varchar(255) NOT NULL,
  `area_study` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`profile_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eduactiontb`
--

INSERT INTO `eduactiontb` (`profile_id`, `firstname`, `college_name`, `area_study`, `degree`, `from_date`, `to_date`) VALUES
(147, 'Debarshi', 'APSN', 'I.T.', 'B.Tech', '0000-00-00', '0000-00-00'),
(150, 'debarshi', 'Apsn', 'CSE', 'B.tech', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `employmenttb`
--

DROP TABLE IF EXISTS `employmenttb`;
CREATE TABLE IF NOT EXISTS `employmenttb` (
  `profile_id` int(3) NOT NULL,
  `employ_company` varchar(300) NOT NULL,
  `employ_city` varchar(255) NOT NULL,
  `employ_state` varchar(255) NOT NULL,
  `employ_country` varchar(255) NOT NULL,
  `employ_job_title` varchar(255) NOT NULL,
  `employ_description` text NOT NULL,
  PRIMARY KEY (`profile_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employmenttb`
--

INSERT INTO `employmenttb` (`profile_id`, `employ_company`, `employ_city`, `employ_state`, `employ_country`, `employ_job_title`, `employ_description`) VALUES
(147, 'INIESTA', 'Kolkata', 'WB', 'India', 'Front-End Dveleopment', ''),
(150, 'Mintlime', 'Barasat', 'WB', 'India', 'Designer', ''),
(160, 'cscs', 'scscs', 'cscsc', 'scscscs', 'scscs', 'cscsc');

-- --------------------------------------------------------

--
-- Table structure for table `e_leveltb`
--

DROP TABLE IF EXISTS `e_leveltb`;
CREATE TABLE IF NOT EXISTS `e_leveltb` (
  `profile_id` int(3) NOT NULL,
  `expertise_level` varchar(255) NOT NULL,
  `user_token_id` varchar(255) NOT NULL,
  UNIQUE KEY `Unique` (`profile_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `e_leveltb`
--

INSERT INTO `e_leveltb` (`profile_id`, `expertise_level`, `user_token_id`) VALUES
(147, 'Begineer', ''),
(150, 'Begineer', '');

-- --------------------------------------------------------

--
-- Table structure for table `hourlytb`
--

DROP TABLE IF EXISTS `hourlytb`;
CREATE TABLE IF NOT EXISTS `hourlytb` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `hourly_rate` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hourlytb`
--

INSERT INTO `hourlytb` (`profile_id`, `firstname`, `hourly_rate`) VALUES
(147, 'Debarshi', 55),
(150, 'debarshi', 78);

-- --------------------------------------------------------

--
-- Table structure for table `imagetb`
--

DROP TABLE IF EXISTS `imagetb`;
CREATE TABLE IF NOT EXISTS `imagetb` (
  `profile_id` int(4) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imagetb`
--

INSERT INTO `imagetb` (`profile_id`, `firstname`, `user_image`) VALUES
(147, 'Debarshi', 'avatar_nick.png'),
(150, 'debarshi', 'f506aa8b-9232-4c82-9bd5-dfec3fbbed6d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `languagetb`
--

DROP TABLE IF EXISTS `languagetb`;
CREATE TABLE IF NOT EXISTS `languagetb` (
  `profile_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lang_profiency` varchar(255) NOT NULL,
  `other_lang` varchar(250) NOT NULL,
  `other_lang_prof` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languagetb`
--

INSERT INTO `languagetb` (`profile_id`, `firstname`, `lang_profiency`, `other_lang`, `other_lang_prof`) VALUES
(147, 'Debarshi', 'conversational', 'hindi', ''),
(150, 'debarshi', 'conversational', 'punjabi', '');

-- --------------------------------------------------------

--
-- Table structure for table `locationtb`
--

DROP TABLE IF EXISTS `locationtb`;
CREATE TABLE IF NOT EXISTS `locationtb` (
  `profile_id` int(4) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `street_address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` text NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locationtb`
--

INSERT INTO `locationtb` (`profile_id`, `firstname`, `street_address`, `city`, `state`, `country`, `pincode`) VALUES
(147, 'Debarshi', 'Barasat', 'Kolkata', 'WB', 'India', '700126'),
(150, 'debarshi', 'Pitha', 'Dhaka', 'Dhaka', 'Bangladesh', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

DROP TABLE IF EXISTS `login_details`;
CREATE TABLE IF NOT EXISTS `login_details` (
  `login_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL,
  PRIMARY KEY (`login_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(6, 148, '2020-05-13 18:01:30', 'no'),
(7, 147, '2020-05-13 18:10:31', 'no'),
(8, 148, '2020-05-13 18:10:34', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `phonetb`
--

DROP TABLE IF EXISTS `phonetb`;
CREATE TABLE IF NOT EXISTS `phonetb` (
  `profile_id` int(4) NOT NULL,
  `phone_number` text NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phonetb`
--

INSERT INTO `phonetb` (`profile_id`, `phone_number`) VALUES
(147, '898984512'),
(150, '6766886');

-- --------------------------------------------------------

--
-- Table structure for table `profilee`
--

DROP TABLE IF EXISTS `profilee`;
CREATE TABLE IF NOT EXISTS `profilee` (
  `profile_id` int(3) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `expertise` varchar(250) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `user_token_id` varchar(300) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profilee`
--

INSERT INTO `profilee` (`profile_id`, `firstname`, `expertise`, `skills`, `user_token_id`) VALUES
(147, 'Debarshi', 'Web & Mobile Development', 'Html, Css, Bootstrap, Jquery', '4dfebc294e2148d350b23a0547b6763162d357c7b3b3cfa00cb57323a579'),
(150, 'debarshi', 'Data Science and Analytics', 'Haddop Skills', '1dfebc294e2148d350b23a0547b6763162d357c7b3b3cfa00cb57367a579');

-- --------------------------------------------------------

--
-- Table structure for table `regestration`
--

DROP TABLE IF EXISTS `regestration`;
CREATE TABLE IF NOT EXISTS `regestration` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regestration`
--

INSERT INTO `regestration` (`user_id`, `firstname`, `lastname`, `user_email`, `user_role`, `user_password`, `token`) VALUES
(147, 'Debarshi', 'Mondal', 'debopiku1122@gmail.com', 'Freelancer', '1122', '80677a6582830e520ffe59765631e6f0f2a62498348b5812027c09d8a636c7dd6bf593db52b3efca2b1d3a95eb473f4e6fbb'),
(148, 'Piku', 'mondal', 'shampamondal715@gmail.com', 'Client', 'Mondal@11', '54b48e148e3b60fe119f22c06353c00bd4600feae6d875ab3e988894e44fdbfbed3cd8ed26a33b07a9ee663bf1f33259bf76');

-- --------------------------------------------------------

--
-- Table structure for table `titletb`
--

DROP TABLE IF EXISTS `titletb`;
CREATE TABLE IF NOT EXISTS `titletb` (
  `profile_id` int(3) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `professional_overview` text NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `titletb`
--

INSERT INTO `titletb` (`profile_id`, `firstname`, `title`, `professional_overview`) VALUES
(147, 'Debarshi', 'Web Desiner and Developer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit'),
(150, 'debarshi', 'pather pachali', 'NICE!');

-- --------------------------------------------------------

--
-- Table structure for table `users_applied_jobs`
--

DROP TABLE IF EXISTS `users_applied_jobs`;
CREATE TABLE IF NOT EXISTS `users_applied_jobs` (
  `user_profile_id` int(3) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `client_token` varchar(300) NOT NULL,
  `user_token_id` varchar(300) NOT NULL,
  `applied_for` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `apply_date` date NOT NULL,
  `hire_status` varchar(300) NOT NULL,
  `hired_date` datetime NOT NULL,
  KEY `user_profile_id` (`user_profile_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_applied_jobs`
--

INSERT INTO `users_applied_jobs` (`user_profile_id`, `user_name`, `client_token`, `user_token_id`, `applied_for`, `status`, `apply_date`, `hire_status`, `hired_date`) VALUES
(147, 'Debarshi', 'b9b710710bf5c6ff1cecd3069f40342b1dd70ded630ae44b2acf6446909d', '4dfebc294e2148d350b23a0547b6763162d357c7b3b3cfa00cb57323a579', 'Andriod development', 'read', '2020-05-13', 'Hired', '2020-05-13 18:53:23'),
(147, 'Debarshi', 'f6adb4580c51851cab616e79a8050e93f26fa91146671a78c9efb71b060d', '4dfebc294e2148d350b23a0547b6763162d357c7b3b3cfa00cb57323a579', 'Web development', 'read', '2020-05-13', 'unhired', '0000-00-00 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
