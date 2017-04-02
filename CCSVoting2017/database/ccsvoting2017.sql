-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2017 at 08:38 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccsvoting2017`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `mid_name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `last_name`, `first_name`, `mid_name`, `username`, `password`) VALUES
(1, 'Villaver', 'Ray Vincent Phillip', 'Dineros', 'pelp', 'pelp');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(11) NOT NULL,
  `candidatepic` varchar(200) NOT NULL,
  `partylist` varchar(200) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `position` varchar(20) NOT NULL,
  `college` varchar(1000) NOT NULL,
  `program` varchar(255) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `birth_place` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(75) NOT NULL,
  `guardian` varchar(125) NOT NULL,
  `guardian_contact` varchar(13) NOT NULL,
  `telephone` varchar(13) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `skills_talents` longtext NOT NULL,
  `honors_awards` longtext NOT NULL,
  `year_section` varchar(11) NOT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `candidatepic`, `partylist`, `first_name`, `middle_name`, `last_name`, `position`, `college`, `program`, `gender`, `religion`, `birthday`, `birth_place`, `address`, `email`, `guardian`, `guardian_contact`, `telephone`, `mobile`, `skills_talents`, `honors_awards`, `year_section`, `date_added`) VALUES
(1, '/devcom_projects/VotingSystem2017/images-data/Ojangco, Chairman.JPG', 'Independent', 'Heny', '', 'Ongjangco', 'Chairman', 'College of Arts and Sciences (CAS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:00:48'),
(2, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Robinson', '', 'Pilar', 'Vice Chairman', 'College of Arts and Sciences (CAS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:01:07'),
(3, '/devcom_projects/VotingSystem2017/images-data/Ortega, Secretary.JPG', 'Independent', 'Jefferson Bobby', 'T.', 'Ortega', 'Secretary', 'College of Arts and Sciences (CAS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:09:08'),
(4, '/devcom_projects/VotingSystem2017/images-data/Edubas, Treasurer.JPG', 'Independent', 'Venus', '', 'Edubas', 'Treasurer', 'College of Arts and Sciences (CAS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:09:30'),
(5, '/devcom_projects/VotingSystem2017/images-data/Abenilla, 2nd Year Rep.JPG', 'Independent', 'Vina', '', 'Abenilla', '2nd Year Rep', 'College of Arts and Sciences (CAS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:09:57'),
(6, '/devcom_projects/VotingSystem2017/images-data/Relingado, Chairman.JPG', 'Independent', 'Jeremae', 'F', 'Relingado', 'Chairman', 'College of Allied and Health Sciences (COAHS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:12:19'),
(7, '/devcom_projects/VotingSystem2017/images-data/Ramos, Vice Chairman.jpg', 'Independent', 'Raven Hyen', 'L', 'Ramos', 'Vice Chairman', 'College of Allied and Health Sciences (COAHS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:12:42'),
(8, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Shedalyn', 'U', 'Reyes', 'Secretary', 'College of Allied and Health Sciences (COAHS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:13:01'),
(9, '/devcom_projects/VotingSystem2017/images-data/Canceran, Treasurer.jpg', 'Independent', 'Ma. Angelica', 'S', 'Canceran', 'Treasurer', 'College of Allied and Health Sciences (COAHS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:13:56'),
(10, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Alliah Anne', 'T', 'Sopoco', 'Auditor', 'College of Allied and Health Sciences (COAHS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:15:21'),
(11, '/devcom_projects/VotingSystem2017/images-data/Mariano, 2nd Year Rep.JPG', 'Independent', 'A-jay', 'G', 'Mariano', '2nd Year Rep', 'College of Allied and Health Sciences (COAHS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:15:53'),
(12, '/devcom_projects/VotingSystem2017/images-data/Apura, 2nd Year Rep.JPG', 'Independent', 'Shalom James', 'B', 'Apura', '2nd Year Rep', 'College of Allied and Health Sciences (COAHS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:16:09'),
(13, '/devcom_projects/VotingSystem2017/images-data/Del Rosario, Auditor.JPG', 'Independent', 'Voeux Kriell', 'S', 'Del Rosario', 'Auditor', 'College of Allied and Health Sciences (COAHS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-05 21:16:31'),
(16, '/devcom_projects/VotingSystem2017/images-data/Estiamba, Chairman.JPG', 'Independent', 'Joshua', 'P', 'Estiamba', 'Chairman', 'College of Business Administration (CBA) ', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:28:27'),
(17, '/devcom_projects/VotingSystem2017/images-data/Cristobal, Vice Chairman.JPG', 'Independent', 'Ariel Sean', 'V', 'Cristobal', 'Vice Chairman', 'College of Business Administration (CBA) ', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:28:52'),
(18, '/devcom_projects/VotingSystem2017/images-data/Sanchez, Chairman.JPG', 'Independent', 'Maria Mikee ', '', 'Sanchez', 'Chairman', 'College of Business Administration (CBA) ', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:29:30'),
(19, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Jason Percival', 'A', 'Dela Cruz', 'Vice Chairman', 'College of Business Administration (CBA) ', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:29:46'),
(20, '/devcom_projects/VotingSystem2017/images-data/Labajoy, Vice Chairman.JPG', 'Independent', 'Ian Dexter', 'L', 'Labajoy', 'Vice Chairman', 'College of Business Administration (CBA) ', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:30:25'),
(21, '/devcom_projects/VotingSystem2017/images-data/Rabago, Secretary.JPG', 'Independent', 'Fort Mckinley', 'M', 'Rabago', 'Secretary', 'College of Business Administration (CBA) ', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:30:53'),
(22, '/devcom_projects/VotingSystem2017/images-data/Tukak, Secretary.JPG', 'Independent', 'Abdul Muhaimin', 'U', 'Tukak', 'Secretary', 'College of Business Administration (CBA) ', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:31:38'),
(23, '/devcom_projects/VotingSystem2017/images-data/Taquiqui, Treasurer.JPG', 'Independent', 'Billy Ahldrin', 'L', 'Taquiqui', 'Treasurer', 'College of Business Administration (CBA) ', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:32:09'),
(24, '/devcom_projects/VotingSystem2017/images-data/Mancio, Auditor.JPG', 'Independent', 'Emelyn', 'F', 'Mancio', 'Auditor', 'College of Business Administration (CBA) ', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:32:27'),
(25, '/devcom_projects/VotingSystem2017/images-data/Naparota, Auditor.JPG', 'Independent', 'Julie Ann', 'I', 'Naparota', 'Auditor', 'College of Business Administration (CBA) ', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:32:50'),
(26, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Swetinia', 'Y', 'Jardin', '4th Year Rep', 'College of Business Administration (CBA) ', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:33:10'),
(27, '/devcom_projects/VotingSystem2017/images-data/Tabigne, 3rd Year Representative.JPG', 'Independent', 'Andrea', 'V', 'Tabigne', '3rd Year Rep', 'College of Business Administration (CBA) ', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:33:39'),
(28, '/devcom_projects/VotingSystem2017/images-data/Penoliar, 3rd Year Representative.JPG', 'Independent', 'Maria Mayline', 'R', 'Penoliar', '3rd Year Rep', 'College of Business Administration (CBA) ', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:33:59'),
(29, '/devcom_projects/VotingSystem2017/images-data/Asuncion, 2nd Year Representative.JPG', 'Independent', 'Alyssa Jairah', 'C', 'Asuncion', '2nd Year Rep', 'College of Business Administration (CBA) ', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:34:42'),
(30, '/devcom_projects/VotingSystem2017/images-data/Paran, 2nd Year Representative.JPG', 'Independent', 'Jonathan', '', 'Paran', '2nd Year Rep', 'College of Business Administration (CBA) ', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:34:56'),
(31, '/devcom_projects/VotingSystem2017/images-data/Garcia, Chairman.JPG', 'Independent', 'Marck Ginny', 'A', 'Garcia', 'Chairman', 'College of Broadcast and Digital Arts (CBDA)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:35:46'),
(32, '/devcom_projects/VotingSystem2017/images-data/Salaya, Carlo.JPG', 'Independent', 'Carlo', 'D', 'Salaya', 'Vice Chairman', 'College of Broadcast and Digital Arts (CBDA)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:35:56'),
(33, '/devcom_projects/VotingSystem2017/images-data/Campita, Secretary.JPG', 'Independent', 'Stephanie', 'M', 'Campita', 'Secretary', 'College of Broadcast and Digital Arts (CBDA)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:36:10'),
(34, '/devcom_projects/VotingSystem2017/images-data/Miranda, Treasurer.JPG', 'Independent', 'Christine Anne', 'R', 'Miranda', 'Treasurer', 'College of Broadcast and Digital Arts (CBDA)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:36:30'),
(35, '/devcom_projects/VotingSystem2017/images-data/Aldiano, Chairman.JPG', 'Independent', 'Khenn', 'C', 'Aldiano', 'Chairman', 'College of Construction Science and Civil Engineering (CCSCE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:37:36'),
(36, '/devcom_projects/VotingSystem2017/images-data/Tolentino, Vice Chairman.JPG', 'Independent', 'Joshua Franco', 'L', 'Tolentino', 'Vice Chairman', 'College of Construction Science and Civil Engineering (CCSCE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:37:52'),
(37, '/devcom_projects/VotingSystem2017/images-data/Bambico, Treasurer.JPG', 'Independent', 'Rhiomae', 'D', 'Bambico', 'Treasurer', 'College of Construction Science and Civil Engineering (CCSCE)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:38:10'),
(38, '/devcom_projects/VotingSystem2017/images-data/Calip, Auditor.JPG', 'Independent', 'Trisha Jei', 'B', 'Calip', 'Auditor', 'College of Construction Science and Civil Engineering (CCSCE)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:38:44'),
(39, '/devcom_projects/VotingSystem2017/images-data/Sesno, 3rd Year Representative.JPG', 'Independent', 'Bryan', 'M', 'Sesno', '4th Year Rep', 'College of Construction Science and Civil Engineering (CCSCE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:38:49'),
(40, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Kenneth', 'V', 'Acobo', 'Chairman', 'College of Technology Management (CTM)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:40:23'),
(41, '/devcom_projects/VotingSystem2017/images-data/Tenedora, Vice Chairman.JPG', 'Independent', 'Mark Joeseph', 'G', 'Tenedora', 'Vice Chairman', 'College of Technology Management (CTM)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:40:40'),
(42, '/devcom_projects/VotingSystem2017/images-data/Banaag, Secretary.JPG', 'Independent', 'Darlene', 'P', 'Banaag', 'Secretary', 'College of Technology Management (CTM)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:40:53'),
(43, '/devcom_projects/VotingSystem2017/images-data/Desipeda, Treasurer.JPG', 'Independent', 'Ma. Kristine', 'M', 'Desipeda', 'Treasurer', 'College of Technology Management (CTM)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:41:11'),
(44, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Julius Ceasar Ian', '', 'Calimpong', 'Auditor', 'College of Technology Management (CTM)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:41:33'),
(45, '/devcom_projects/VotingSystem2017/images-data/Soria, 4th Year Rep.JPG', 'Independent', 'Joseph', 'Z', 'Soria', '4th Year Rep', 'College of Technology Management (CTM)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:41:50'),
(46, '/devcom_projects/VotingSystem2017/images-data/Patalinghug, Jay Ar.JPG', 'Independent', 'Jay-Ar', 'O', 'Patalinghug', '3rd Year Rep', 'College of Technology Management (CTM)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:42:08'),
(47, '/devcom_projects/VotingSystem2017/images-data/Villapando, Chairman.JPG', 'Independent', 'Anthony Dave', 'F', 'Villapando', 'Chairman', 'College of Governance and Public Policy (CGPP)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:43:16'),
(48, '/devcom_projects/VotingSystem2017/images-data/Estrada, Vice Chairman.JPG', 'Independent', 'Francis Paul', '', 'Estrada', 'Vice Chairman', 'College of Governance and Public Policy (CGPP)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:43:29'),
(49, '/devcom_projects/VotingSystem2017/images-data/Gonzales, Secretary.JPG', 'Independent', 'Jae Ann', 'R', 'Gonzales', 'Secretary', 'College of Governance and Public Policy (CGPP)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:43:44'),
(50, '/devcom_projects/VotingSystem2017/images-data/Cometa, Treasurer.JPG', 'Independent', 'Rodan', 'B', 'Cometa', 'Treasurer', 'College of Governance and Public Policy (CGPP)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:43:56'),
(51, '/devcom_projects/VotingSystem2017/images-data/Daraba, Auditor.JPG', 'Independent', 'Dan Homer', 'B', 'Daraba', 'Auditor', 'College of Governance and Public Policy (CGPP)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:44:11'),
(52, '/devcom_projects/VotingSystem2017/images-data/Sarmiento, 3rd Year Rep.JPG', 'Independent', 'CJ Carlo', '', 'Sarmiento', '4th Year Rep', 'College of Governance and Public Policy (CGPP)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:44:29'),
(53, '/devcom_projects/VotingSystem2017/images-data/Bernal, 3rd Year Rep.JPG', 'Independent', 'Jenehry Sweetny', '', 'Bernal', '3rd Year Rep', 'College of Governance and Public Policy (CGPP)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:44:48'),
(54, '/devcom_projects/VotingSystem2017/images-data/Tamandong, 2nd Year Representative.JPG', 'Independent', 'Ariel', 'B', 'Tamondong', '2nd Year Rep', 'College of Governance and Public Policy (CGPP)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:45:06'),
(55, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Analyn', 'A', 'Udarbe', 'Chairman', 'Center of Human Kinesthetics (CHK)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:46:00'),
(56, '/devcom_projects/VotingSystem2017/images-data/Corpus, Vice Chairman.JPG', 'Independent', 'Michael Joe', 'M', 'Corpus', 'Vice Chairman', 'Center of Human Kinesthetics (CHK)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:46:17'),
(57, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Jonna', 'V', 'Eusebio', 'Secretary', 'Center of Human Kinesthetics (CHK)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:46:33'),
(58, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Jenelisa', 'L', 'Melgar', 'Treasurer', 'Center of Human Kinesthetics (CHK)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:46:47'),
(59, '/devcom_projects/VotingSystem2017/images-data/Galvan, Auditor.JPG', 'Independent', 'Stephen Aei', 'A', 'Galvan', 'Auditor', 'Center of Human Kinesthetics (CHK)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:47:07'),
(60, '/devcom_projects/VotingSystem2017/images-data/Pagdilao, 3rd Year Rep.JPG', 'Independent', 'Andrea', 'G', 'Pagdilao', '3rd Year Rep', 'Center of Human Kinesthetics (CHK)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:47:34'),
(61, '/devcom_projects/VotingSystem2017/images-data/Feticio, Chairman.JPG', 'Independent', 'Jesseriel', 'M', 'Feticio', 'Chairman', 'College of Maritime Leadership Innovation (CMLI)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:48:49'),
(62, '/devcom_projects/VotingSystem2017/images-data/Banez, Vice Chairman.JPG', 'Independent', 'Ederich', 'S', 'Banez', 'Vice Chairman', 'College of Maritime Leadership Innovation (CMLI)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:49:05'),
(63, '/devcom_projects/VotingSystem2017/images-data/Tandoy, Secretary.JPG', 'Independent', 'Ranci Robert', 'T', 'Tandoy', 'Secretary', 'College of Maritime Leadership Innovation (CMLI)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:49:19'),
(64, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Paolo Ian', '', 'Castillo', 'Treasurer', 'College of Maritime Leadership Innovation (CMLI)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:49:31'),
(65, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Mark Anthony', 'R', 'Tadia', 'Auditor', 'College of Maritime Leadership Innovation (CMLI)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:49:54'),
(66, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Jerime', 'B', 'La Tunero', '3rd Year Rep', 'College of Maritime Leadership Innovation (CMLI)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:50:13'),
(67, '/devcom_projects/VotingSystem2017/images-data/Rama, 2nd Year Rep.JPG', 'Independent', 'Derkius Lauren', 'A', 'Rama', '2nd Year Rep', 'College of Maritime Leadership Innovation (CMLI)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:50:26'),
(68, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Jim Carl', '', 'Primo', 'Chairman', 'College of Education (COE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:51:20'),
(69, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Doland Angelo', 'D', 'Tabbu', 'Chairman', 'College of Education (COE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:51:31'),
(70, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Michelle Anne', '', 'Laurel', 'Vice Chairman', 'College of Education (COE)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:51:44'),
(71, '/devcom_projects/VotingSystem2017/images-data/Jagonio, Vice Chairman.JPG', 'Independent', 'Christine', '', 'Jagonio', 'Vice Chairman', 'College of Education (COE)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:51:57'),
(72, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Jocelyn', '', 'Serna', 'Secretary', 'College of Education (COE)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:52:19'),
(73, '/devcom_projects/VotingSystem2017/images-data/Javison, Secretary.JPG', 'Independent', 'Glybelle', '', 'Javison', 'Secretary', 'College of Education (COE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:52:58'),
(74, '/devcom_projects/VotingSystem2017/images-data/Laurel, Treasurer.JPG', 'Independent', 'Maria Angelica', 'T', 'Laurel', 'Treasurer', 'College of Education (COE)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:53:14'),
(75, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Karl Anthony', '', 'Ebona', 'Treasurer', 'College of Education (COE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:53:29'),
(76, '/devcom_projects/VotingSystem2017/images-data/Baltazar, Auditor.JPG', 'Independent', 'Ron Michael Felix', 'O', 'Baltazar', 'Auditor', 'College of Education (COE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:53:49'),
(77, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Elvis', 'A', 'Galzote', '4th Year Rep', 'College of Education (COE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:54:17'),
(78, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Jhon Rheynan', '', 'Sabordo', '4th Year Rep', 'College of Education (COE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:54:32'),
(79, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Marjorie', '', 'Tangon', '3rd Year Rep', 'College of Education (COE)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:54:48'),
(80, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Rosemary', '', 'Eturma', '3rd Year Rep', 'College of Education (COE)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:55:02'),
(81, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'Christian Aron', '', 'Tuppal', '2nd Year Rep', 'College of Education (COE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-08 10:55:22'),
(86, '/devcom_projects/VotingSystem2017/images-data/Morales, Secretary.JPG', 'Independent', 'John Alvin', '', 'Morales', 'Secretary', 'College of Construction Science and Civil Engineering (CCSCE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-09 15:23:50'),
(87, '/devcom_projects/VotingSystem2017/images-data/Layer 5.png', 'Independent', 'John Manuel', 'B', 'Padre', 'Auditor', 'College of Education (COE)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-02-10 08:03:55'),
(90, '/devcom_projects/CCSVoting2017/images-data/Mark Christian Guinoo - President.jpg', 'Independent', 'Mark Christian', '', 'Guinoo', 'President', 'College of Computer Science (CCS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-03-03 03:13:51'),
(91, '/devcom_projects/CCSVoting2017/images-data/Jomiel Andrade - VP Internal.jpg', 'Independent', 'Jomiel', '', 'Andrade', 'VP Internal', 'College of Computer Science (CCS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-03-03 03:14:35'),
(92, '/devcom_projects/CCSVoting2017/images-data/Reimore Casinillo - VP External.jpg', 'Independent', 'Reimore', '', 'Casinillo', 'VP External', 'College of Computer Science (CCS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-03-03 03:14:58'),
(93, '/devcom_projects/CCSVoting2017/images-data/Aida Antipasado - Secretary.jpg', 'Independent', 'Aida', '', 'Antipasado', 'Secretary', 'College of Computer Science (CCS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-03-03 03:15:20'),
(94, '/devcom_projects/CCSVoting2017/images-data/April Rose Lomongo - Treasurer.jpg', 'Independent', 'April Rose', '', 'Lomongo', 'Treasurer', 'College of Computer Science (CCS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-03-03 03:15:43'),
(95, '/devcom_projects/CCSVoting2017/images-data/Patrick John Canizares - Auditor.jpg', 'Independent', 'Patrick John', '', 'Canizares', 'Auditor', 'College of Computer Science (CCS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-03-03 03:16:14'),
(99, '/devcom_projects/CCSVoting2017/images-data/Mary Jane Vallador - P. R. O..jpg', 'Independent', 'Mary Jane', '', 'Vallador', 'P.R.O', 'College of Computer Science (CCS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-03-03 03:30:27'),
(100, '/devcom_projects/CCSVoting2017/images-data/Manuel Jay Quiambao - 4th Year Rep..jpg', 'Independent', 'Manuel Jay', '', 'Quiambao', '4th Year Rep', 'College of Computer Science (CCS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-03-03 03:30:58'),
(101, '/devcom_projects/CCSVoting2017/images-data/Elona Mae Anokol - 3rd Year Rep.jpg', 'Independent', 'Elona Mae', '', 'Anokol', '3rd Year Rep', 'College of Computer Science (CCS)', '', 'F', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-03-03 03:31:25'),
(102, '/devcom_projects/CCSVoting2017/images-data/Jessie John Dela Cruz - 2nd Year Rep.jpg', 'Independent', 'Jessie John', '', 'Dela Cruz', '2nd Year Rep', 'College of Computer Science (CCS)', '', 'M', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2017-03-03 03:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE IF NOT EXISTS `college` (
  `id` int(11) NOT NULL,
  `college` varchar(200) NOT NULL,
  `picture` varchar(300) NOT NULL,
  `date_added` datetime NOT NULL,
  `college_abr` varchar(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `college`, `picture`, `date_added`, `college_abr`) VALUES
(10, 'College of Computer Science (CCS)', '/devcom_projects/VotingSystem2017/images-data/CCS.png', '0000-00-00 00:00:00', 'CCS');

-- --------------------------------------------------------

--
-- Table structure for table `enabled_students`
--

CREATE TABLE IF NOT EXISTS `enabled_students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(12) NOT NULL,
  `date_enabled` datetime NOT NULL,
  `already_voted` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3250 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enabled_students`
--

INSERT INTO `enabled_students` (`id`, `student_id`, `date_enabled`, `already_voted`) VALUES
(3249, 'K1124808', '2017-03-03 02:24:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL,
  `user` varchar(45) NOT NULL,
  `description` mediumtext NOT NULL,
  `date_time` datetime NOT NULL,
  `receiver` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74535 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user`, `description`, `date_time`, `receiver`) VALUES
(74503, 'ADMIN', 'Logged in to the system (Admin)', '2017-03-03 02:24:37', ''),
(74504, 'ADMIN', 'Enabled a student', '2017-03-03 02:24:43', 'K1124808'),
(74505, 'K1124808', 'Logged in to the voting system (voter)', '2017-03-03 02:25:52', ''),
(74506, 'K1124808', 'Voted for', '2017-03-03 03:29:16', '90'),
(74507, 'K1124808', 'Voted for', '2017-03-03 03:29:16', '91'),
(74508, 'K1124808', 'Voted for', '2017-03-03 03:29:16', '92'),
(74509, 'K1124808', 'Voted for', '2017-03-03 03:29:16', '93'),
(74510, 'K1124808', 'Voted for', '2017-03-03 03:29:16', '94'),
(74511, 'K1124808', 'Voted for', '2017-03-03 03:29:17', '95'),
(74512, 'K1124808', 'Voted for', '2017-03-03 03:29:17', '89'),
(74513, 'K1124808', 'Voted for', '2017-03-03 03:29:17', '96'),
(74514, 'K1124808', 'Done Voting', '2017-03-03 03:29:19', ''),
(74515, 'K1124808', 'Logged in to the voting system (voter)', '2017-03-03 03:32:25', ''),
(74516, 'K1124808', 'Voted for', '2017-03-03 03:33:02', '90'),
(74517, 'K1124808', 'Voted for', '2017-03-03 03:33:03', '91'),
(74518, 'K1124808', 'Voted for', '2017-03-03 03:33:03', '92'),
(74519, 'K1124808', 'Voted for', '2017-03-03 03:33:03', '93'),
(74520, 'K1124808', 'Voted for', '2017-03-03 03:33:03', '94'),
(74521, 'K1124808', 'Voted for', '2017-03-03 03:33:03', '95'),
(74522, 'K1124808', 'Voted for', '2017-03-03 03:33:03', '99'),
(74523, 'K1124808', 'Voted for', '2017-03-03 03:33:03', '100'),
(74524, 'K1124808', 'Done Voting', '2017-03-03 03:33:05', ''),
(74525, 'K1124808', 'Logged in to the voting system (voter)', '2017-03-03 03:34:53', ''),
(74526, 'K1124808', 'Voted for', '2017-03-03 03:35:25', '90'),
(74527, 'K1124808', 'Voted for', '2017-03-03 03:35:25', '91'),
(74528, 'K1124808', 'Voted for', '2017-03-03 03:35:25', '92'),
(74529, 'K1124808', 'Voted for', '2017-03-03 03:35:25', '93'),
(74530, 'K1124808', 'Voted for', '2017-03-03 03:35:25', '94'),
(74531, 'K1124808', 'Voted for', '2017-03-03 03:35:25', '95'),
(74532, 'K1124808', 'Voted for', '2017-03-03 03:35:25', '99'),
(74533, 'K1124808', 'Voted for', '2017-03-03 03:35:25', '100'),
(74534, 'K1124808', 'Done Voting', '2017-03-03 03:35:27', '');

-- --------------------------------------------------------

--
-- Table structure for table `partylist`
--

CREATE TABLE IF NOT EXISTS `partylist` (
  `id` int(11) NOT NULL,
  `partylist_name` varchar(200) NOT NULL,
  `partylist_slogan` varchar(1000) NOT NULL,
  `partylist_logo` varchar(300) NOT NULL,
  `college` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partylist`
--

INSERT INTO `partylist` (`id`, `partylist_name`, `partylist_slogan`, `partylist_logo`, `college`, `date_added`) VALUES
(4, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'College of Arts and Sciences (CAS)', '2016-09-03 11:46:47'),
(5, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'College of Business Administration (CBA) ', '2016-09-03 11:47:09'),
(6, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'College of Broadcast and Digital Arts (CBDA)', '2016-09-03 11:47:24'),
(7, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'College of Computer Science (CCS)', '2016-09-03 11:47:51'),
(8, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'College of Construction Science and Civil Engineering (CCSCE)', '2016-09-03 11:58:01'),
(9, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'College of Technology Management (CTM)', '2016-09-03 11:58:16'),
(10, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'College of Governance and Public Policy (CGPP)', '2016-09-03 11:58:36'),
(11, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'College of Education (COE)', '2016-09-03 11:58:49'),
(12, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'College of Allied and Health Sciences (COAHS)', '2016-09-03 11:59:04'),
(13, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'College of Maritime Leadership Innovation (CMLI)', '2016-09-03 11:59:17'),
(14, 'Independent', '', '/devcom_projects/VotingSystem2017/images-data/13480016_1199462703406113_1844292173_n.png.jpg', 'Center of Human Kinesthetics (CHK)', '2016-09-03 11:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` varchar(10) NOT NULL,
  `last_name` varchar(16) DEFAULT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `middle_name` varchar(18) DEFAULT NULL,
  `college` varchar(7) DEFAULT NULL,
  `program` varchar(62) DEFAULT NULL,
  `major` varchar(37) DEFAULT NULL,
  `year_level` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `last_name`, `first_name`, `middle_name`, `college`, `program`, `major`, `year_level`) VALUES
('A1032391', 'MOSQUERA JR.', 'EFREN', 'NANLABI', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '4th Year'),
('A1043343', 'TALAGUIT', 'MARLON', 'TAUSA', 'CCS', 'CERTIFICATE IN COMPUTER TECHNICIAN', '', '2nd Year'),
('A1061157', 'CABRERA', 'MARK ANTHONY', 'LUMBAN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('A1061358', 'ELUMBA', 'MERICK', 'RAZON', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '4th Year'),
('A1073416', 'VALENZUELA', 'KEVIN', 'VENUS', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('A1084552', 'AMESTOSO', 'NI?O', 'LAMSEN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A1101428', 'LOZANO', 'SARA GABRIELLE', 'DELARIARTE', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('A1101557', 'BALITIAN', 'DENNIS', 'SIMBULAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '4th Year'),
('A1101697', 'LICUDAN', 'ANNABELLE', 'LONEZA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('A1102788', 'LUZON', 'ANNA', 'BALUCA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('A1110799', 'PANALIGAN', 'MARK ROY', 'NEBRES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('A1110823', 'ROSALINAS', 'MEL JOSEPH', 'BANIQUED', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('A1110909', 'ARISTAIN', 'KATHRENE JOY', 'GOMOC', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('A1111009', 'BANTOC', 'JEFFERSON', 'CAPISTRANO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '4th Year'),
('A1111191', 'APACIBLE', 'PAOLO', 'GALOPE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '4th Year'),
('A1111447', 'OROPESA', 'EDUARDO JOSE', 'CARO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '4th Year'),
('A1111527', 'SIMON', 'JIMMY', 'VIRTUCIO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('A1112105', 'ARAS', 'ARLYN', 'TOMABINI', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '4th Year'),
('A1112314', 'PARDO', 'JONAH', 'BELMONTE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('A1112337', 'BACANI', 'SARAH JOY', 'JAMERO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('A1112638', 'ALVAREZ', 'ARIEL', 'CUARTERON', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('A1112769', 'MENDOZA', 'RONNEL', 'CANTA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('A1115313', 'BANTILLO', 'REDOLLY', '-', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '4th Year'),
('A1120222', 'AGRAVA', 'ERVIN LAWRENCE', 'ANTIPORDA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '4th Year'),
('A1120388', 'VERGARA', 'ERIC', 'ALVAREZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('A1130392', 'SANTOS', 'JERRY BOY', 'QUIENES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '4th Year'),
('A6162645', 'CANLAS JR', 'ROMUALDO', 'TAMBAUAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('A6162693', 'DELFIN', 'DEBBIE JOY', 'DANOS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('A6162831', 'MONISIT', 'PRINCE ANDWILL', 'DELOS SANTOS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('A6163065', 'ADAN', 'JOHN MCLEM', 'CREZAGA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('A6163861', 'VIRAY', 'J.ANDREW', 'MALACAS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('A6163880', 'ALBERTO', 'JOSE ANTONIO', 'RAMOS', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A6164034', 'LOMONGO', 'APRIL ROSE', 'CANENCIA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('A6164436', 'BAG-O', 'CHARLOTTE', 'DELOS REYES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('A6164477', 'ARCETA', 'RUFFA JOY', 'DEL MAR', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A6164574', 'VARGAS', 'GENNIE', 'DEDURO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('A6164701', 'ORE', 'VENUS', 'BACULOT', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A6164973', 'ARELLANO', 'JHON MICHAEL', 'AMARILLO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A6165016', 'BULAC', 'ROWENA', 'BOLODO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('A6165318', 'VALERA', 'DIOSYL-ANN', 'POBLETE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('A6165467', 'CAMBARIHAN', 'JUDELL', 'DANAO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A6165568', 'MANDE', 'MARY JOY', 'COSTANTINO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A6165580', 'OCAMPO', 'RODALYN', 'JUMAQUIO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('A6165714', 'CASIPONG', 'JOHNREY', 'CANONIGO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A6165749', 'BLANQUE', 'KIN PHILIP', 'LO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A6166395', 'BANGUIS', 'ROMA MARIE', 'HEBRON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('A6166431', 'SANTOS', 'CHRISTIAN JOHN', 'PANGANIBAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('A6166440', 'BERAME', 'JANNY', 'PAYAS', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A6166633', 'MANEJA', 'ANALIZA', 'INOCENCIO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('A6166717', 'BALTAZAR', 'PRINCESS DEVINE', 'DELIMA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1120010', 'ABARCO', 'KIMBERLY', 'MARCELO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120028', 'ABILGOS', 'MARLON', 'MESA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120077', 'ADOBAS', 'ARIEL', 'BUGNOS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120087', 'AGARIN', 'JOHN ALBERT', 'VILLANUEVA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120108', 'AGUERO', 'AL JOHN', 'TULIAO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120125', 'ALANO', 'JED BRIAN', 'TORNALEJO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120133', 'ALBA', 'VALEREE', 'TENA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120162', 'ALCUDIA', 'ABEGAIL', 'BACALE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120168', 'ALEGRE', 'RANDYL WAYNE', 'DE SAGUN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120182', 'ALINCOMOT', 'JERYL', 'ESMAO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120187', 'ALLANIC', 'GARY BENJ', '-', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120263', 'ANDRADE', 'JOMIEL', 'HERNANDEZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120265', 'ANDRES', 'SHARON', 'MERCADO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1120283', 'ANOTCHE', 'LEANA MARIE', 'MAPAYE', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120285', 'ANTIPASADO', 'AIDA', 'JACA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120308', 'AQUINO', 'ANTHONETE', 'TANAWAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120337', 'ARDUO', 'JONATHAN', 'ROXAS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120343', 'ARELLANO', 'RYAN JOY', 'TABUDLONG', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120370', 'ARNAIZ', 'JESRYL', 'VISCA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120371', 'ARNEJO', 'AR-JAY', 'ANAJAO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1120373', 'AROA', 'MC IVAN', 'REYES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120375', 'AROSENA', 'JHUNNEL', 'TUGADE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120443', 'BABARAN', 'BYRON', 'PORLEY', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120451', 'BACLIG', 'JONA MAY', '-', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120452', 'BACORNAY', 'JERICO', 'MANRIQUE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1120456', 'BADION', 'MC. CHRISE', 'BAJAN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120473', 'BAILLO', 'MHAY ANN', 'CARAMBAS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120484', 'BALAGULAN', 'NORMAN', 'LAMOSTE', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120528', 'BALUTE', 'WARREN', 'MATULIN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120577', 'BARIEN', 'ERIKA', 'PILIT', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120593', 'BARRIENTOS', 'NICKO', 'JIMENEZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120597', 'BARROQUILLO', 'PATRISHIA', 'LOPEZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120603', 'BASCO', 'JESSICA', 'CARIAGA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120623', 'BAUTISTA', 'APOL RANECES', 'RIVERA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120636', 'BAUTISTA', 'MEG PAULA', '-', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120638', 'BAUTISTA', 'NICOLE', 'RITUAL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120655', 'BELA?O', 'KAREN JEAN', 'LORILLA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120675', 'BELTRAN', 'JONI', 'DAGUMAY', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120733', 'BIGCAL', 'RICHARD', 'NGO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120746', 'BIONA', 'JOHN LLOYD', 'PEDRAZA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120772', 'BOLIMA', 'SHERWIN', 'TECSON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120787', 'BONTIA', 'DENJILYN', 'CA?ARES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120795', 'BORJAL', 'JULIUS BRYAN', 'LACAP', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120801', 'BORROMEO', 'JUSTIN CARL', 'USORIA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120816', 'BRICIO', 'PAOLO', 'DELA CRUZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120822', 'BRIONES', 'MARA KATRINA', 'ECAY', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120832', 'BUADO', 'BRYAN CARLO', 'PASAMIC', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120850', 'BUENDIA', 'ALFRED', 'SUBILLAGA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120883', 'BUTAY', 'MARCO JESUS', 'ROMERO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1120903', 'CABANOS', 'CHRISTIAN', 'CAUILAN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120909', 'CABAZARES', 'JOHN PAOLO', 'AVESTRUZ', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1120945', 'CABUSORA', 'MARK JOSEPH', 'LIZERTIGUEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1120952', 'CADAVOS', 'JENNELYN', 'RODRIGUEZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121018', 'CAMPO', 'LEA JEAN', 'MARFIL', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1121025', 'CAMPOSANO', 'LOUIE BOY', 'GABARAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121054', 'CA?ONASO', 'MARY CHRIS', 'NAVARRO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121081', 'CARAAN', 'ALYSSA REA DIANNE', 'ALINGALAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121130', 'CASIDO', 'ELZECAR', 'BENLOT', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121134', 'CASINILLO', 'REIMORE', 'SALIGAO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121136', 'CASITAS', 'JHON JEFFERSON', 'RELEVO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121186', 'CATURAN', 'TIM ALEN', 'ZALATAR', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1121204', 'CELEBRADO', 'KEN RYAN', 'BANGUD', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121280', 'COMILANG', 'JANDELLE', 'TAMAYO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121305', 'CORALDE', 'JHON RODNIE', 'TERNATE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121310', 'CORILLA', 'JULIEPHINE', 'LAORDEN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1121312', 'CORONEL', 'KENNETH', 'ANDAL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121335', 'COSTAS', 'HANNAH FAY', 'MALLAPRE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1121342', 'CRISOSTOMO', 'RRIAN PAUL', 'MAYON', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1121351', 'CRUZ', 'EARVIN JUSTIN', 'ENRIQUEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1121357', 'CRUZ', 'JOHN PAULO', 'VERGARA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1121358', 'CRUZ', 'JOHNE EDZELLE', 'BERSABAL', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1121383', 'CUNAN', 'MATTHEW MIGUEL', 'ANCA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1121394', 'DACANAY', 'ROMMEL II', 'REQUIJA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121449', 'DASIG', 'RIZALYN JOY', 'ACOGIDO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121467', 'DE CASTRO', 'JAO', 'MORENO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121588', 'DELA CRUZ', 'KATHLYN CHAT', 'QUERO.', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121596', 'DELA CRUZ', 'MARTY JR.', 'REGAL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1121635', 'DELMORO', 'HIMN', 'ROZOL', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1121636', 'DELORIA', 'LEIMAR JOHN', 'CLASIETE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121649', 'DE LOS SANTOS', 'RANDOLPH', 'BAHILLO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121693', 'DIOQUINO', 'JOSHUA', 'FONACIER', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121706', 'DIZON', 'MERVYN', 'BARADILLO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121756', 'DULAY', 'KENNYJAY', 'OXINA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1121813', 'ELVAMBUENA', 'RAYMARK', 'SUNGA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1121829', 'ENDAYA', 'TIMOTHY ABBA ODILIO', 'VICTORIA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1121834', 'ENOPRE', 'JOMAR', 'MAGALLANES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1121840', 'EPISTOLA', 'KING SIMON', 'CANTA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121851', 'ESCARPE', 'ARA KHRISNA', 'LONGAKIT', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121866', 'ESPADERO', 'CHARLENE', 'DEMIAR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1121877', 'ESPE?A', 'NEA', 'ESMERIA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121890', 'ESPINOSA', 'JANSEN JOEY', '-', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1121930', 'EUFRACIO', 'ROBIN', 'MONTEAGUDO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1121933', 'EUSEBIO', 'JEFFREY', 'LLENO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122014', 'FERRER', 'JOHN JEROME', 'Y', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1122095', 'FUNCION', 'IVAN CHRISTIAN JAY', 'ECHANES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1122107', 'GABORNO', 'JULIUS', 'DULDULAO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122112', 'GACIAS', 'JOHN MICAH', 'COLLADO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122159', 'GALVAN', 'ROSALIE', 'POTOT', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1122190', 'GARCIA', 'AILYN', 'REGONDOLA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122244', 'GERMO', 'CHRISTELLE JOY', '-', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122255', 'GILLES', 'ALJANE', 'TALACAY', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122278', 'GONZALES', 'EMILIO', 'MIJARES', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1122280', 'GONZALES', 'FRANKLIN', 'LAMSIS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1122297', 'GRAJO', 'MARALEE', 'NIETO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1122318', 'GUERRERO', 'ALEXANDRA NICOLE', 'MITRAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122334', 'GUINOO', 'MARK CHRISTIAN', 'MEDINA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122339', 'GULO', 'RHEA MARIE', 'NOBELA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1122347', 'GUMISAD', 'SERGIE', 'DUHAYLUNGSOD', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1122391', 'HERNANDEZ', 'JOSEPH CARLO', 'DIESTRO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122406', 'HIDALGO', 'JOELOURESSA MAE', 'VELORIA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122420', 'HIRAMIS', 'EDOVANIE JR.', 'MANLAPAZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1122441', 'ICASA', 'STEVEN', 'ABADINES', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1122472', 'ISAAC', 'RACHEL', 'RIVERA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122476', 'ISON', 'JANSSEN', 'CANGCO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122534', 'JIMENEZ', 'MARIA ROSALIN', 'GALANO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122535', 'JIMENEZ', 'MERALEX', '-', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1122557', 'JUNTEREAL', 'HALE SANDER', 'BARRAMEDA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1122577', 'LABRADOR', 'ALDWIN', 'BALAGTAS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1122621', 'LARGO', 'WILLSON', 'VEJANO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122661', 'LEGUARDA', 'CHRISTINE JOYCE', 'MIQUIABAS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122663', 'LEONA', 'DONALD', 'RAMELO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1122723', 'LOMIO', 'CLIFFORD', 'RELLENO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1122766', 'LUCERO', 'MARK JACOB', 'SALUD', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1122774', 'LUMACTOD', 'JO MARIE', 'ALARCON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122785', 'LUNA', 'HARMOND', 'MENDOZA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1122798', 'MACABASAG', 'JOSHUA', 'LINOY', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122810', 'MACARONCIO', 'JENNIFER', 'BAUTISTA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1122817', 'MACAY', 'MARVIN', 'RAMOS', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1122858', 'MAGNO', 'MARY IRISH', 'BERMUDEZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1122906', 'MALINAO', 'MARIZ', 'OPRIASA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122910', 'MALTO', 'ERROL JOHN', 'ROBOCCA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1122926', 'MANALASTAS', 'ROXANNE', 'MENDOZA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1122981', 'MANZANO', 'JERIETTE', 'CASTILLO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123002', 'MARAVILLA', 'JOHN PAULO', 'CANET', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123004', 'MARAYAN', 'HAZEL', 'SALAZAR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123024', 'MARFIL', 'GILBERT JAY', 'MARTIN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123029', 'MARIANO', 'NI?A NICAH', 'GRANDEA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123078', 'MATEO', 'GWEN GRACE', 'ERRACHO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123089', 'MAYO', 'NEIL MARK ARDEE', 'BATANGAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123096', 'MAZON', 'GENESIS', 'CRUZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123209', 'MOLINA', 'ADRIAN PAOLO', 'MEJILLANO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123213', 'MOLINA', 'JONAH JAMES', 'LABADAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123214', 'MOLINA', 'MARIZ', 'PRUDENTE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123244', 'MONTOYA', 'MARK JOSEPH', 'LIM', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1123250', 'MORALES', 'CHRISTIAN', 'PUNO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123315', 'NAPANOY', 'BABY RHODILYN', 'BANGGIYAO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1123348', 'NICOLAS', 'REGINE', 'GUILLERMO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1123358', 'NILO', 'JESSIMINE', 'DELA CRUZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123360', 'NILO', 'KYLE HARLEY', 'LUMBANG', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123380', 'NUESCA', 'KEVIN', 'MIGUEL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123408', 'OCTAVIANO', 'MA. BEATRIZE', 'SAPUNGAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123421', 'OJENAL', 'YSRAEL', 'DERADA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1123428', 'OLIMBERIO', 'DANIEL', 'CRUZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123466', 'ORCA', 'MARY JANE', 'BACSAL', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1123478', 'ORIOL', 'MARJORIE', 'SAN MIGUEL', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1123493', 'ORTIZ', 'JOHN BERNARD', 'ECALDRE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123510', 'PAALA', 'ALVIN', 'GERMIO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123529', 'PADILLA', 'KRIZZA', 'NAVARRA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1123563', 'PALILEO', 'ALLAINE', 'EUGENIO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123569', 'PALMA', 'ROJIELY', 'N', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123578', 'PAMAOS', 'JEFFREY', 'QUIJANO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1123591', 'PANES', 'DAVE GERALD', '-', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1123598', 'PANGASINAN', 'RENZEN', 'PASCUA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123603', 'PANTI', 'ENRIQUE JIMMAR', 'CAPARANGCA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123619', 'PAROCHA', 'ROBIN RON', 'PANES', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1123657', 'PAULINO', 'JASON', 'GURI', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123661', 'PAZZIUAGAN', 'GEM', 'BON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123676', 'PE?ALOSA', 'MARJORIE', 'DE LUNA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123757', 'PIMENTEL', 'MARINELLA JOY', 'MACARUBBO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123788', 'PONCE', 'CHRISTIAN DANBERT', 'GARCIA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1123802', 'PREJOLES', 'MA. ERLINDA', 'CAUILAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123836', 'QUIAMBAO', 'MANUEL JAY', 'MORFE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1123857', 'QUITAIN', 'GLYDELL MAE', 'UBALDE', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1123929', 'RAZA', 'DARWIN', 'LLAMES', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1123973', 'REPOREN', 'MARY JEAN', 'ARTILLO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1123992', 'REYES', 'ALYSSA', 'SOLLESTRE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124003', 'REYES', 'JANICA TRISHA', 'ALOS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124009', 'REYES', 'MARIA RHODORA', 'SOLEMA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124074', 'ROMERO', 'MA. CRISTINA', 'SEDUTAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124075', 'ROMERO', 'NICHOLE JOHN', 'TALBAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124080', 'RONDA', 'JOEMAR', 'CANDO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124128', 'SABAS', 'RICARDO JR.', 'CABANA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124145', 'SAHAGUN', 'JEMUEL', 'RAPSING', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124175', 'SALUTEM', 'RONA', 'M.', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124235', 'SANTIAGO', 'RALPH', 'BALINGAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124239', 'SANTOS', 'CHARLOTTE ANGELIQUE', 'ACOSTA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124259', 'SAQUILAYAN', 'KATHLEEN CLAIRE', 'DE LEON', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124263', 'SARONITMAN', 'DOMINIC NANZ', 'OPONDA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124265', 'SARDIA', 'REMEDIOS', 'ORTEGA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124302', 'SELGA', 'ROSANNA', 'TORCIDO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124309', 'SERAT', 'FRANZ AVEN', 'GAERLAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124317', 'SERRANO', 'SHERYL', 'DOLLERA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124353', 'SIMON', 'KENZO', '-', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124370', 'SOBREDO', 'DEX', 'DEL ROSARIO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124373', 'SOGONI', 'JHIMAN', 'BARRANTES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124406', 'SORIANO', 'JHON VINCENT', 'TAYONG', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124412', 'SOSME?A', 'CARL', 'PILARCA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124432', 'SUICO', 'JUDELYN', 'LOMIGO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124434', 'SULIT', 'CHRISTIAN ANGELO', 'MANJARES', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124441', 'SUMBINGCO', 'RALPH RANDY', 'ALTERADO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124447', 'SUNGA', 'PUSHYAIDA AIRA', 'CHAVEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124454', 'SUYOM', 'MICHAEL NI?O', 'MAS', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124494', 'TAGUICANA', 'MARLON ANTONIO', 'MEDINA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124507', 'TALIGATOS', 'KIM JUSTINE', 'MAYOR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124508', 'TALINGDAN', 'ARIES CHRISTIAN', '-', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124543', 'TANTUAN', 'ARIEL', 'ROSAL', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124586', 'TEVES', 'ROMEL', 'MARAPAO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124621', 'TOLENTINO', 'RUBY ANN JOY', '', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1124630', 'TOMOLIN', 'JOE MARIE', 'FERMIL', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124673', 'TRUMATA', 'RIZIEL', 'ALQUINO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124675', 'TUAZON', 'ANALYN', 'DE VERA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124678', 'TUAZON', 'LOVELY ROSE', 'LEONCIO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124691', 'TUMANDAO', 'FRANCIS', 'DAVID', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124736', 'VALDEZ', 'JOHN RHUSTOM', 'EVANGELISTA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124757', 'VALIENTE', 'MILKHON JASPER', 'BERGONIA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124762', 'VALLADOR', 'MARY JANE', 'RAMIREZ', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124764', 'VALLEGA', 'MA. CAMILLE', 'NEPOMUCENO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124791', 'VELASQUEZ', 'JOHN DARNEL', 'DARIA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124796', 'VELORIA', 'RIZZA', 'MONTEROLA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124808', 'VERDE', 'KIM PATRICK', 'TALHA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124816', 'VERMUG', 'MARICRIS', 'JUNGAY', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124837', 'VILLAFLOR', 'CLINTFORD', 'ROSAS', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124843', 'VILLALVA', 'RODEL', 'ALMONTE', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124857', 'VILLANUEVA', 'DAN LOUIE', 'ALFORQUE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124884', 'VILLAVER', 'RAY VINCENT PHILLIP', 'DINEROS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124885', 'VILLAVICENCIO', 'HAIDE JR', 'VERGARA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1124890', 'VILLETE', 'JOHN', 'HERNANDEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K1124892', 'VILORIA', 'NATHANIEL', 'ABROGAR', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124895', 'VIOLA', 'BRIAN ANGELO', 'BAUTISTA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1124951', 'ZABALA', 'ANNA BEATRIZ', 'PANTALEON', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K1124967', 'ZARATE', 'KRISTINA CASSANDRA', 'BERNARDINO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K1130015', 'ABEJAR', 'GEORGE LOUISE', 'DE VERA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130046', 'ACHIVIDA', 'DHONA MAE', 'ESCOBAR', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1130052', 'ACOSTA', 'JOYCE ANN', 'CUADRA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1130053', 'ACOSTA', 'MARCOISE LAWRENCE', 'DAR SANTOS', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1130072', 'AGCAOILI', 'JONATHAN', 'MERCADO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1130119', 'ALEMOIN', 'KIMBERLY', 'SANGGALANG', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1130130', 'ALIPOR', 'JEROME', 'BANTOTO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130179', 'ANOKOL', 'ELONA MAE', 'YABUT', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1130193', 'APUYA', 'JAYBERT NOLI II', 'PALCO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130201', 'ARA?A', 'JOYCELINE', 'REYES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1130255', 'AUNGON', 'JULIE ANN', 'APOLINAR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130371', 'BAYAGA', 'JENNIFER', 'PANUGA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130386', 'BELO', 'KEIRWIN', 'HIMOR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130393', 'BE?AS', 'MISTY DAWN', 'LIBRADO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1130422', 'BINARAO', 'GAELIQUE', 'PAGUIGAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130473', 'BRON', 'PATRICIA CLARISSE', '-', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130479', 'BUCAL', 'CHRISTIAN', 'TABIANO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130483', 'BUENAVENTURA', 'JEFFRY', 'SULAT', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1130490', 'BUGNA', 'MARICAR', 'REYES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130551', 'CAGUIOA', 'ARLENE', 'MARCO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1130605', 'CAPISTRANO', 'JEREMY', 'A?OSA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1130629', 'CARIAGA', 'JENNYLYNE', 'PUNO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130638', 'CARPIO', 'JENY PEARL', 'NALLOS', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1130671', 'CATALAN', 'ALBERT LOUIS', 'LLEMIT', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1130676', 'CATARMAN', 'MARY CLAIRE', 'CABRITO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1130679', 'CAUMPOY', 'RHEA', 'CASTA?ARES', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1130755', 'CORNELIO', 'JOHN MAUI', 'SANCHEZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1130773', 'CRISTOBAL', 'ANGELA', 'CABACUNGAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130819', 'DAMASCO', 'ARMAY', 'CAMPOSANO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1130907', 'DELA TORRE', 'JOSEPH JR', 'ESPINOSA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130962', 'DIMAYUGA', 'SHEENA MAE', 'CERDE?A', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1130991', 'DOLOR', 'RICHMOND REIN', 'QUITOLES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1130996', 'DOMASICO', 'DARICA', 'MADAYAG', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131039', 'EDUBAS', 'VANESSA MAE', 'REYES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131071', 'ERFILO', 'RODOLFO III', 'SILAPAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131094', 'ESPINOSA', 'MHERVIN', 'PAYRA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131108', 'ESTORES', 'JUOLIEAN', 'TAMAYO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131120', 'EVANGELISTA', 'VINCENT', 'PINEDA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131123', 'FABIA', 'JOHN CHRISTOPHER', 'ALCANTARA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131166', 'FLORES', 'JAN DAVID', 'ROSAURO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131175', 'FONTELAR', 'CHRISTMA JOY', 'QUISMUNDO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131183', 'FORTON', 'MARCK SAMUEL', '-', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131210', 'GADDI', 'GELLEN', 'CUENCO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131263', 'GAUDITE', 'DARYL', 'CABUNGCAL', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131284', 'GIANAN', 'JOHN DHALES', 'BAYOBO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131297', 'GOMEZ', 'JOYCEE', 'CUEVAS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131311', 'GORDO', 'ALEXANDER', 'CANLAS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131324', 'GREGORIO', 'FRANCIS XAVIER', 'CANDELARIO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131363', 'HERMOSA', 'MA. PATRICIA ANN', 'GIMENO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131372', 'HERNANDO', 'RONALD', 'MAGLAQUE', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131380', 'HONRADA', 'MAE ANN', 'GARTE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131393', 'IBANEZ', 'JASMIN', 'NAIVE', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131420', 'IQUI?A', 'MIKAELA', 'MAIGUE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131452', 'JAVINES', 'LALAINE JOY', 'LLORCA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131459', 'JIMENEZ', 'ROQUE', 'GALANO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131528', 'LANGRIO', 'JHOMEL', 'ZABAZA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131549', 'LAYSON', 'CHRISTIAN MCGYVER', 'ENDAYA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131581', 'LIONGCO', 'MA CECILIA', 'PAZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131582', 'LIPATA', 'JONATHAN', 'CAMA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131631', 'LUCAS', 'JASMINE', 'VALDEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1131654', 'MABILIN', 'MARC VENSON', 'BAN-EG', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131713', 'MALBOG', 'JOHN CARLO', 'MIRADOR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131745', 'MANDO', 'CARL MIKELL', 'CRUZADO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131746', 'MANGARAN', 'JERALD MICKO', 'RIVERA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131765', 'MANZANO', 'WESLEY JOHN', 'ORQUE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131787', 'MARIANO', 'DESSIREE QUEEN', 'PADILLA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1131788', 'MARIANO', 'ERWIN', 'DURO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1131817', 'MAURERA', 'MARLON', 'BAYLON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131868', 'MIRALPES', 'JOHN RYCEL', 'ESPINOSA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1131929', 'MUNCADA', 'RHEA', 'REBITE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131932', 'NACARIO', 'DARNELL', 'CORPUZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131970', 'NEVALASCA', 'NHIKKA', 'SALE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1131991', 'NONATO', 'JON JESSEL', 'DE MESA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132034', 'OLAZO', 'JOHN PATRICK', 'EDEM', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1132087', 'PACANA', 'CATHERINE LEE', 'PAYANAY', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1132090', 'PACHOCO', 'MARK ANGELO', 'EWAYAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132097', 'PADILLA', 'JOMAR', 'ANTONIO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1132133', 'PALMARIA', 'ERIKA', 'PAVA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132141', 'PANGAN', 'JENREE ROBERT', 'SEBASTIAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132173', 'PASCUAL', 'QUEEN BERNADETH', 'ANILAO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132189', 'PATANAO', 'DANICA', 'LUCES', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1132198', 'PAZ', 'CHARLYNNE', 'INGUA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1132263', 'PIRAMAN', 'SONNY', 'BASISTER', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132303', 'QUEDDENG', 'CHRENZA MARIE', 'AUSTRIA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132369', 'RA?O', 'JESSICA', 'OCAMPO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132370', 'RA?OLA', 'JOSHUEL', 'NARCIZA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132372', 'RARANG', 'ANDREW', 'CARI?O', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1132399', 'RENON', 'BIANCA MAE', 'ROMERO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132407', 'RETALES', 'EUGENE', 'JUANITEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132409', 'RETUTAR', 'RYAN JAY', 'CENAL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132421', 'REYES', 'MA.MERCEDEZ', 'ONDAJON', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132425', 'RICO', 'JAPHET', 'MAQUERME', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132427', 'RIMANDO', 'JOSEPHINE', 'DIGNOS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132449', 'ROCO', 'CHOLO MIGUEL', 'COCHON', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132463', 'ROM', 'ARIEL', 'BUENO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132464', 'ROMBLON', 'JONATHAN', 'B', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132531', 'SALVADOR', 'ROSELLE', 'CABUSORA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132550', 'SANCHEZ', 'JOHN MATTHEW', 'DAYCO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1132552', 'SANCHEZ', 'MICHELLE JOY', 'TOLOSA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132575', 'SANTOLICES', 'GERLIE', 'SEDANO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132584', 'SANTOS', 'KAREN', 'MARIANO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1132592', 'SAQUILAYAN', 'KATRINA MARTHA', 'DE LEON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132608', 'SELDO', 'JENEVY', 'DIAZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132645', 'SLAVETZKY', 'ALEXANDRA', 'TOMELDEN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132662', 'SORIANO', 'GEORGE', 'SANTELLA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132670', 'STA. ANA', 'REYWEN', 'MAPAGDALITA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132674', 'SUICO', 'ANGEL', 'MERCADO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132708', 'TALAGTAG', 'JENNY MAY', 'BERNALDEZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132714', 'TALON', 'GEMMA', 'ARRIOLA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132721', 'TAN', 'MICHELLE', 'TANDUGON', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132727', 'TANTE', 'JULIE ANN', 'FRANCO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1132734', 'TARROYO', 'CHARLENE', 'TELAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year');
INSERT INTO `students` (`student_id`, `last_name`, `first_name`, `middle_name`, `college`, `program`, `major`, `year_level`) VALUES
('K1132767', 'TOLOSA', 'EUGENE', 'CARSON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132774', 'TORRECAMPO', 'DANICA MAE', 'PE?A', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132815', 'URSOLON', 'JEFFERSON', 'BERNAL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132875', 'VILLANUEVA', 'BRITTANY ANNE', 'BAUTISTA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132878', 'VILLANUEVA', 'JAMES LAWRENCE', 'R', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132880', 'VILLANUEVA', 'JUNE JUDE ALLAIN', 'RIVERA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132917', 'WHITESIDE', 'JEEZELE', 'GOMEZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132944', 'DELA PE?A', 'JASON FELIX', 'CALAYAG', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132946', 'SUAREZ', 'MA. JOBELLE', 'VILLARUEL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132951', 'LADRERA', 'EZEQUEL', 'ACEDO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132955', 'NARVASA', 'SEAN AUSTIN', 'DAYTO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132968', 'PABLO', 'JERALD JON', 'FRANCISCO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132976', 'MELGAR', 'CRISSA', 'YAGONO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1132979', 'GARILLO', 'CHRISTIAN', 'DEKINGCO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1132988', 'DE LUNA', 'MARK RIANO', '-', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1133000', 'TEOXON', 'MARY JANE', 'LAJARA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133006', 'CELSO', 'ELLAINE', 'JADULCO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133020', 'DE LEON', 'RICHARD', 'VISPO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133062', 'CASISON', 'CHARLENE', 'SARABIA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1133066', 'GODMALIN', 'BRIGETTE', 'PUREZA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133067', 'MASIM', 'MA. CHRISTELA', 'CRUZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133071', 'SABADO', 'ROMIL', 'PITUGO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133108', 'DELA PE?A', 'CLEO AUDREY', 'VALENZUELA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133129', 'FERNANDEZ', 'MICHELLE', 'LAMOSTE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133149', 'MANALO', 'JEMUEL', 'PERALTA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133195', 'REDECIO', 'MARK CHRISTIAN', 'JALINA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133199', 'SAULER', 'JHON ROGER', 'GODOY', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133204', 'SALUDES', 'ARMIE', 'VARGAS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133246', 'ZARATAN', 'CALEB', 'ROSARIO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1133248', 'CATALAN', 'JOEMER JR.', 'DAYAG', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133252', 'COMILANG', 'JEREMY', 'TAMAYO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133269', 'MAJAIT', 'KIMIE KATE', 'DAEL', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133309', 'TORERO', 'ADRIAN', 'MANINANG', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133321', 'PAZ', 'ARCEL', 'UDA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133439', 'CABARLES', 'REN-VICTOR', 'SALIGUMBA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133475', 'GERONIMO', 'SHERYLYN', 'PEREZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133477', 'CANENCIA', 'JOSEPH', 'VICEDA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133489', 'IJIRAN', 'BILL DWIGHT', 'COLINCO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133491', 'BRAGA', 'MARK FRANCIS', 'NARONA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133493', 'BA?EZ', 'MARY GRACE', 'GUALFERIO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133552', 'CAGA-ANAN', 'JECILLE', 'STA. IGLESIA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1133562', 'EBAR', 'GIESEL', 'PECUNDO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133565', 'ESPIRITU', 'ANGELICA', 'PAHAYAHAY', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133569', 'LORETO', 'CLAIRE DANE', 'AMAZONA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133571', 'BAUTISTA', 'JOHN CARLO', 'DELOS SANTOS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133585', 'CATALAN', 'KIMBERLY', '-', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133624', 'YANOC', 'GREGORY PETER', 'DEMETERIO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133629', 'SANTIAGO', 'ANGELO', 'RABELAS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133646', 'LUMANG', 'MA. BELLE NOUELLYNN', 'BAUTISTA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133673', 'OXIMINA', 'JOHN PAUL', 'OGARO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133713', 'SAN DIEGO', 'NIEL EMERSON', 'JUANILLO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133744', 'FRAMIL', 'JAY ROMMEL', 'GIGANTE', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1133748', 'LIM', 'HAZEL', 'MAGPANTAY', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1133814', 'TURLA', 'ILYSSA LORELIE', 'LAUREL', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133824', 'ALINCASTRE', 'JUDE HARMON', 'FUENTES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133829', 'CASTRO', 'NIMUEL', 'BUISAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133876', 'OBELLO', 'PAOLO LOIS', 'DELGADO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133885', 'BADAYOS', 'BERNADETTE AIMEE', 'BITARA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133968', 'DALUSONG', 'D''ART', 'MAGNO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133975', 'VALENCIA', 'RAFAEL', 'BOROY', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1133981', 'CARIASO', 'JOHN ANTHONY', 'GALVEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1133991', 'ROTE', 'RAMIL', 'AVILA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1134054', 'NAVARRETE', 'DALE ULYSSES', 'PARA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1134144', 'ALBAY', 'NOLI II', 'BEGINO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134160', 'GAMBOA', 'JOHN NICHOL', 'COSTALES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1134161', 'CEMENTINA', 'PATRICK JORREL', 'GARCIA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134236', 'GAERLAN', 'MA. PAULA DEELIZA', 'MAGSOMBOL', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1134254', 'TABUCAN', 'ROBEMAR JOSEPH', 'GRAVOSO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134264', 'CASTILLO', 'MARIA JECELLE', 'VILLACERAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134294', 'NAVIDAD', 'MONICA', 'RANQUE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134298', 'ZIPAGAN', 'SHEENA ASTRID', 'ABALOS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134381', 'LAURIANO', 'JV', 'BILLONES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134416', 'ALBAO', 'HAZEL MAE', 'TRINIDAD', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1134475', 'DELOS SANTOS', 'MYHRELL', 'MORENO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134480', 'SAMSON', 'JONAS', 'REYES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134481', 'RAZ', 'CHRISTIAN KARL', 'PORCARE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134496', 'DE LEON', 'JOHN JEMUEL', 'FULLANTES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1134510', 'CAUILAN', 'MARY GRACE', 'AFRICANO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1134540', 'GANABAN', 'GECO CARL', 'TONGGA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1134588', 'ALAMIS', 'ANGEL GRACE', 'PE?AFIEL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134606', 'CLEMENTE', 'ANGELIKA', 'BOLSO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1134656', 'MENDOZA', 'BEEJAY', 'ESTAVILLO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134668', 'APOSTOL', 'IVYLYN', 'P.', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134705', 'DELA CRUZ', 'JUNE', 'GASPAR', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1134782', 'LUMANG', 'RALPH JOMAR', 'MAGALLANES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134826', 'ALEGRIA', 'MARY JOY', 'PALMA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134836', 'EVANGELISTA', 'MARK JOSHUA', 'CORALEJO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134845', 'LEPORI', 'ANTHONY MIKHAIL', 'SANTIAGO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134923', 'SANCHEZ', 'MARK JERVIN', 'MANALO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134924', 'FERNANDEZ', 'JOHIA ABBY', 'CASTILLO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1134929', 'ARIENZA', 'DENIELLE', 'LOPEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1135002', 'ARIADO', 'PATRICK JUSTIN', 'LAURENTE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1135139', 'LACCAY', 'BRYAN DAVID', 'CUNANAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1135198', 'FEDERIO', 'SHERLYN', 'ALAMPAYAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1135216', 'PALOMAR', 'TJ', 'BANDONG', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1135229', 'MCPHERSON', 'FLORENCE DAVID', 'GUEVARRA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1135263', 'STA. ROSA', 'ARRIANE', 'VERDEJO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1135266', 'CABANERO', 'MARYLYN', 'RABA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1135324', 'CARILLO', 'LEILANI', 'PLACIDO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1135382', 'DE ASIS', 'ERIKA', 'LABOLABO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1135426', 'SOLANA', 'SHIELA MAE', 'CO?ADO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1135436', 'COPINA', 'LAILYN', 'LUZA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1135443', 'LABETORIA', 'MARIA LEE', 'ROLDAN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1135455', 'DE LEON', 'LEONEV', 'HUFANA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1135519', 'ODVIAR', 'JENINA BIANCA', 'BERMOY', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1135521', 'SERNADILLA', 'MARY JANE', 'BUNGA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1135543', 'DALIT', 'GIBBYLIN', 'CORTEL', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1135556', 'PE?A', 'ARIES', 'MENDIOLA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1135595', 'GENER', 'KARL MALONE', 'MARZAN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1135605', 'LADRERA', 'JOSHUA', 'ACEDO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K1135606', 'FLORES', 'HARRY', 'PELANTE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1135630', 'BAUI', 'MAC GABRIEL', 'NAVARRO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1135637', 'TALAGUIT', 'REGGIE', 'TAUSA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1135643', 'GONZALES', 'CHARMIE', 'ABUNDO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1135649', 'PASTOR', 'MARJUNE', 'RIDON', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1135669', 'MARQUEZ', 'ALMAR', 'DALISAY', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1135723', 'VALDEZ', 'LANZ ALLEN', '-', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K1135730', 'PAGULAYAN', 'MERVEEN', 'MIJARES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K1140012', 'CANIZARES', 'PATRICK JOHN', 'SISON', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140028', 'PALAD', 'JHANIKA', 'PABLO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140053', 'ISAGON', 'KATE', 'PABLO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140055', 'TOLENTINO', 'CLARENZ NI?A', 'ARGUELLES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140061', 'ESTALLO', 'JOSHUA JOBEL', 'TAPADO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140082', 'OFECIAR', 'JUNE PEARL', 'BONSATO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140083', 'COMIA', 'DECCY KIELE', 'DUYANEN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140086', 'SABUCOHAN', 'JAICA', 'NONE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140087', 'CALMA', 'ROMMEL', 'NUNEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140107', 'JOSE', 'CHRISTIAN', 'N/A', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140108', 'BALBUENA', 'JOHN MICHAEL', 'RAZO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140116', 'SERAFICA', 'KAITLIN GASE', 'GALANG', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140117', 'BISU?A', 'LIANA BIANCA', 'PRANADA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140127', 'GAMBOA', 'MARK JOSEPH', 'PARCASIO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140131', 'ALONDATA', 'ALMIRA DIANNE', 'BALLAO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140140', 'TAYSON', 'ERIKA MARI', 'PEREZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140143', 'MOSTOLES', 'MARK ANTHONY', 'BORDEN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140149', 'OLANGCO', 'JOHN MICHAEL', 'RAFOLS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140150', 'DALO', 'RONNIEL', 'DAQUIGAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140161', 'MENDOZA', 'ALFONE DOMELLE', 'BUAR', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140199', 'RAYMUNDO', 'JENNIFER', 'YANZON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140206', 'LEGANAD', 'LEOMAR', 'MONTANO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140239', 'GONZALES', 'JOHN PATRICK', 'GEGALAO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140272', 'MARCELO', 'AILA MARIE', 'LLAGAS', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140296', 'SAMPAYAN', 'AARON', 'RASONABE', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140346', 'BUENAOBRA', 'EDWARD', 'PANTOJA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140351', 'ESCOTE', 'MARY JOY', 'MARIANO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140363', 'EPRES', 'ESTRELLA', 'ABALAIN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140365', 'PANGILINAN', 'JOEL', 'CALDERON', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140391', 'FERNANDEZ', 'REA ARVIE', 'N.A', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140396', 'RIMAS', 'CHARLOTTE', 'LOZADA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140400', 'GUNAY', 'CURT JOSHUA', 'CARDEL', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140404', 'DULNUAN', 'SERWIN', 'SALCEDO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140426', 'MAGALLANO', 'MICHELLE ANN', 'CASI?O', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140430', 'TEODORO', 'JOHN DAVE NATHANIEL', 'NONE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140448', 'ORCULLO', 'JETHRO', 'BACAR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140461', 'PISCO', 'MA. JOSH ELIZZE', 'INSON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140470', 'TUAZON', 'CHRISTIAN', 'MAGHUYOP', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140472', 'CUSTODIO', 'BRENT JEREMIAH', 'DELOS SANTOS', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140473', 'ESTRADA', 'LYSSA LORRAINE', 'CARINO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140509', 'CANTIL', 'ROWEL', 'REGACHO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140510', 'MUSNI', 'MARK JOSHUA', 'CRUZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140537', 'RAMOS', 'ANGELIKA', 'TIMBOL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140546', 'GRANA', 'LAURENCE', 'SAJORDA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140549', 'ISIDORO', 'BILL JASON', 'DEPOSITARIO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140558', 'BAITEC', 'JAYSON', 'DELA CRUZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140582', 'CONCEPCION', 'NEIL PATRICK', 'TANHUECO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140599', 'FINES', 'MARRY JOYCE', 'ESMALLA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140625', 'JAGO', 'JUNY BEN', 'REGINALES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140629', 'LUSTRIA', 'NERISSA', 'CABBAB', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140658', 'LLADOC', 'LADY ANNE CELINE', 'CABIADES', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140664', 'CAALIM', 'REGGIE', 'CENTINO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140679', 'TENDENCIA', 'ROMMEL', 'DASCO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140682', 'ATIENZA', 'ROSELYN', 'BALDRIAS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140708', 'ESTONACTOC', 'RAFFIELA LEI', 'FORTUS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140733', 'MAGLEO', 'JOHN LEREE', 'MANZANO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140742', 'DIZON', 'DANNIELLE', 'VARRION', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140748', 'PAGKALINAWAN', 'BERNADETH', 'SAMSON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140764', 'SABAS', 'JOHN REY', 'PAMA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140765', 'LAPENA', 'JOHN EDAN', 'DIVINA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140775', 'BUNGUBUNG', 'RUSSEL JAY', 'MABASA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140794', 'ESCABARTE', 'KLIEN', 'ABARICO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140802', 'ESTRELLA', 'MICHAELA JANE', 'SIWANE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140836', 'GUIQUING JR.', 'ALBERT', 'DELLONA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140847', 'PASCUA', 'TRICIA', 'NUQUI', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1140866', 'MANLAPAZ', 'JEREMIAH', 'BERNALES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140875', 'MARARAC', 'DAVEN', 'DEDACE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140898', 'OBIAS', 'EZEKIEL', 'CABALE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140912', 'DALAN', 'JEFFERSON RENZ', 'AGRAVANTE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140921', 'ENORASA', 'LYNIER', 'SANICO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140932', 'DULNUAN', 'ROBELYN', 'LOPEZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140933', 'DE GUZMAN', 'RENNZ JYMWELLE', 'ESMAEL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1140960', 'MAGNO', 'ROLANDO MIGUEL', 'ANDADOR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1140973', 'AGUINALDO', 'ABIGAIL', 'RUFINO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141003', 'CASTILLO', 'LIAN ROBIN', 'SIENA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141005', 'HOLGADO', 'JOSHUA JAEL', 'BAYOG', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1141006', 'LACSON', 'RALPH SPENCER', 'CASTILLO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141010', 'RAMIREZ', 'SHIELA MAE', 'ALLONAR', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141044', 'BERJA', 'MARINA NICOLE', 'SOLANO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141094', 'ROSAL JR.', 'ROSALITO', 'OLACO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1141097', 'ALBA', 'JESS MARK', 'GARADOS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141125', 'CORPUZ', 'HOSEA PATRICIA', 'CAYABYAB', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141200', 'ASCARES', 'STEPHANIE', 'ACASIO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141201', 'PANDES', 'ALFRED', 'LABARDA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141224', 'CARINO', 'ERICKSON', 'AVISADO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141227', 'SAMARITA', 'ARIEL', 'NONE', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141279', 'ESCOTIDO', 'PAOLO', 'FORNIS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141301', 'CAPCO', 'JENEDY', 'BUENAVISTA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1141305', 'CRUZ', 'JOHN CLYDE', 'NERI', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141327', 'CABO', 'JENNIFER', 'REQUE', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1141333', 'SAPALARAN', 'ARCHIE', 'LARGADO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141344', 'PANGANTING', 'ABDUL JABBER', 'RAKI-IN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141346', 'MANALO', 'KARL JHODEL PAULOS', 'SINAG', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141377', 'MENEZ', 'KHRYS', 'CABALSA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141396', 'DE LEON', 'RAFAEL', 'VISPO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141416', 'BOTOR', 'CHARLES ROMEO', 'ROSALES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141418', 'BONCALAN', 'CRISANTO', 'ZETA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141441', 'MARCELO', 'JOHN CLARK', 'GO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141464', 'CALDERON', 'ALDRIN', 'SUMANGPONG', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141465', 'GERMONO', 'KIM PATRICK', 'BONAJOS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141496', 'ALVAREZ', 'PRINCESS', 'TORRES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141497', 'MALANO', 'ROY NEIL', 'DIAZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141545', 'CAPE', 'OLIVER', 'HULAR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141590', 'LEONADOR', 'RAYMUND', 'MAATA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141594', 'MALLARI', 'CARLA', 'CABAMONGAN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1141626', 'ESTAVILLA', 'CHERYL', 'AMOROSO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1141627', 'ORDONO', 'ELISHA KYLA', 'MONTOYA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1141658', 'BALDOMAR', 'EDILBERTO', 'NEBRIA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1141679', 'GARBOSA', 'JOY LYN', 'LARGO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141707', 'AMERICA', 'JOSHUA', 'JARDIN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141739', 'LONGAKIT', 'JESTER', 'BONA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141751', 'LAYAN', 'BRYAN', 'RESUS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141770', 'CERVANTES', 'JASPER JAMES', 'SATAO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141780', 'VALLADAREZ', 'JOHN DAIRY', 'GANDO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141781', 'BANTAYAN', 'MARIANNE', 'LATRACA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141787', 'ROMANOS', 'JULIAN', 'MACUTO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141799', 'USI', 'GEMAR', 'ESMAO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1141836', 'SARGUET', 'KIM CLARENCE', 'QUIA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1141849', 'DRILON', 'HEXTER VINCE', 'VILLABLANCA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141902', 'PISANTES', 'CHARLES JOSEPH', 'CASTILLO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1141921', 'CASTILLO', 'GABRIEL KEANU KYLE', 'CADELI?A', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141947', 'GALANG', 'MICHAEL ANGELO', 'FERNANDEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1141977', 'MALICDEM', 'JUSTIN', 'LUBIANO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1142012', 'QUIJANO', 'JOFFET', 'LACATAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142029', 'MENDOZA', 'YNNA LOUISE', 'DOLLOTALIAS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142035', 'SON', 'GARY', 'DADULA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1142051', 'CAMPLON', 'JULIUS', 'PENAREDONDO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142069', 'LAGUMBAY', 'ARIEL', 'PADUA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142078', 'NOLASCO', 'NICKO', 'GACUAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142121', 'MILLANO', 'PATRICIA DOMINIQUE', 'BACORNAY', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1142182', 'DIOMANGAY', 'REMEGIO JR.', 'YGRUBAY', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1142192', 'RIEL', 'RAVEN LOVE', 'CABRAL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142200', 'EDIZA', 'ROSANNA MAY', 'QUISAY', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142261', 'MORALES', 'DONARD JOSEPH', 'CRUZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142273', 'BILBAO', 'JOHN CARLO', 'MADRIDANO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1142291', 'YUMUL', 'MARJORIE', 'ABAQUITA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142296', 'CAPULONG', 'CHRISTIAN', 'CAYABYAB', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1142307', 'PEGALAN', 'LEONARD', 'ACEDO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142314', 'FABELLON', 'NIKKO JAZE', 'FORNAL', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1142315', 'FANG', 'JOSHUA LAND', 'BORLAGDAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1142440', 'DUMAYAS', 'JETTE LORRAINE', 'BOHOL', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1142525', 'YAP', 'JOANNA', 'CALVADORES', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1142550', 'BIONG', 'TRIXIA', 'ESCALO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142686', 'ANTONIO', 'RONALD', 'BALBONTIN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1142687', 'DELIMA', 'ROGER MARK', 'RAMOS', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1142755', 'RAMOS', 'JOEMYR', 'AYEN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1142788', 'LONGCOP', 'DIANA ROSE', 'CAPOQUIAN', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1142817', 'BERINGUEL', 'JEROME', 'LANZA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142842', 'PEDIANGCO', 'KENT JASPER', 'MUNAR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1142915', 'GARCIA', 'CAMILLE', 'ENDAYA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142917', 'LALICAN', 'LORENZO', 'VERGARA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142919', 'LALICAN JR.', 'ARVIN', 'DURAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142962', 'DE GUZMAN JR.', 'VIRGILIO', 'LUNDAY', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1142993', 'ARMAYAN', 'IZZA MAE', 'CABILING', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143042', 'SUMALINOG', 'ANGELA RIEL', 'VARGAS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143069', 'PELONIA', 'VINCENT', 'BARGASO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143084', 'BUCAL', 'CYRILLE VLAIZE', 'FABELLAR', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1143092', 'AGUPE', 'ALEONNA MAUI', 'VASQUEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1143159', 'VERTULFO', 'LOURENCE JOSEPH', 'ROVILLOS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143179', 'RODRIGUEZ', 'MARK ANTHONY', 'VIRTUDAZO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1143221', 'ABERA', 'MICKEE LOVELY', 'SAYCON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143236', 'AMADOR', 'ALEC', 'ESPIRITU', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1143253', 'LAURIN', 'KAROLYN', 'BAUTISTA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1143283', 'MAGAHIS', 'LAURENCE KIM', 'BARRO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143342', 'DE VEYRA', 'WARREN', 'CADA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1143492', 'DELA CRUZ', 'JESSIE JOHN', 'BANTILAN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1143546', 'PATAWARAN', 'EVER', 'CANLAS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143639', 'LIWANAG', 'JESSAMAE ARIANNE', 'DIOSO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1143700', 'VILLARTA', 'EDISON', 'TUPAS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143713', 'JOGNO', 'MICHELLE ANN', 'BACSARPA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143746', 'DEL ROSARIO', 'MARIA REBECCA', 'FLORENDO', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1143803', 'RECUSTODIO', 'MICHELLE', 'LISBO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143804', 'CRUZ', 'ERIKA MAE', 'CASIMIRO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143823', 'OSORESCO', 'JULIA PAULINE', 'BAWISAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143848', 'GAMBA', 'JOHNRAY', 'GABION', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143856', 'MARTINEZ', 'ELAINE NOVA', 'PORCIL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143871', 'DILAY', 'MARIZZA', 'MONTERON', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143877', 'VILLAFLOR', 'JUSTINE', 'MORALLO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1143888', 'GELERA', 'CHRISTA', 'CARDANA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1143915', 'GALAURA', 'JAY IAN', 'TURA', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1144010', 'FORTUNATO', 'ZEANNE MARIE', 'SENEREZ', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1144057', 'CAMASO', 'LESLIE ANN', 'MURILLO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1144099', 'BLAQUERA', 'NIKKI', 'RIVERA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1144103', 'NIEVA', 'RICA MONICA', 'CADORES', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1144133', 'ROBLES', 'VIVIAN', 'DELFINO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1144270', 'EBALAN', 'ROMEL', 'DACUTAN', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1144344', 'BORBON', 'JEAN STEFANO KYLE', 'PANIZALES', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1144565', 'SOMERA', 'JZEFF KENDREW', 'FERNANDO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1144598', 'ROXAS', 'PERSEUS JR.', 'VILLARUZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1144637', 'MACARUBBO', 'GERALD', 'VILLANUEVA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K1144697', 'SUPERA', 'GIAN KYLE', 'MACATANGAY', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '1st Year'),
('K1144700', 'LOBA', 'PAT MELVIER', 'BALIGOD', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '1st Year'),
('K1144720', 'MENDOZA', 'MARK JOSEPH', 'ROMALTE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '1st Year'),
('K5140030', 'CASTILLO', 'ERNALYN', 'SOLIVEN', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K5140032', 'ABAN', 'ADELFA', 'PETILOS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K5140033', 'SARVIDA', 'LALAINE', '', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K5140040', 'CATURAN', 'SAMUEL', 'ZALATAR', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K5140041', 'MEJIA', 'MARC STEVEN', 'SEVILLA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K5140047', 'PILAPIL', 'JORIOUZ', 'CORANEZ', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '3rd Year'),
('K5140065', 'CADION', 'LOUISE ROSE', 'KALAW', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K5140066', 'U?ALIVIA', 'XAVIER LOUIS', 'CABIGAO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K5140068', 'TORRES', 'KRASHKIEL', 'PAREJA', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K5140069', 'PAELDIN', 'JOHN', 'BAYLOSIS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K5140073', 'SANCHEZ', 'LUDERIO', 'RUBIS', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '3rd Year'),
('K5140093', 'EMUSLAN', 'KAYLA JANE', 'SAMPANG', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '3rd Year'),
('K5150156', 'BACORDIO', 'MARC ROGER', 'SAMBRANO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K5150160', 'MERIE', 'JOSEPH', 'ENTAL', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K5150164', 'GUINTO', 'BERNADETTE', '', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K5150167', 'MANSUETO', 'IRA PAULA', 'AQUINO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K5150175', 'TAGHAP', 'RHIA JOANNE', 'LAO-AY', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K5150199', 'RECA?A', 'VEE JAY', 'VILLAPA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K5150200', 'MARCELO', 'CLARK JR.', 'GO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K5150211', 'MOJARES', 'ELY NELL JIREH JR.', 'LONGAKIT', 'CCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE', 'APPLICATION DEVELOPMENT', '2nd Year'),
('K5150215', 'PANALIGAN', 'CRIS KING', 'GALIDO', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K5150216', 'LOPEZ', 'DINZ JOSEPH', 'BADONG', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K5150223', 'MANUEL JR.', 'EDIMAR', 'SERASPE', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K5150229', 'RAMOS', 'LHANIA SHAY', 'DAVID', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K5150237', 'MARI?AS', 'RENZ JEREMIAH', 'RIVERA', 'CCS', 'BACHELOR OF SCIENCE IN COMP NETWORK ADMINISTRATION', '', '2nd Year'),
('K6150143', 'PANALIGAN', 'ENRICO JR', 'BUTOR', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K6150149', 'BULJATIN', 'JERALD MARK', 'TAMBAJUYOT', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year'),
('K6150251', 'ADOLFO', 'JANMAR', 'ROMERO', 'CCS', 'BACHELOR OF SCIENCE IN INFO. TECH. IN SERVICE MGMT', '', '2nd Year');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL,
  `student_id` varchar(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=58523 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `student_id`, `candidate_id`, `date_time`) VALUES
(58499, 'K1124808', 90, '2017-03-03 03:29:16'),
(58500, 'K1124808', 91, '2017-03-03 03:29:16'),
(58501, 'K1124808', 92, '2017-03-03 03:29:16'),
(58502, 'K1124808', 93, '2017-03-03 03:29:16'),
(58503, 'K1124808', 94, '2017-03-03 03:29:16'),
(58504, 'K1124808', 95, '2017-03-03 03:29:17'),
(58505, 'K1124808', 89, '2017-03-03 03:29:17'),
(58506, 'K1124808', 96, '2017-03-03 03:29:17'),
(58507, 'K1124808', 90, '2017-03-03 03:33:02'),
(58508, 'K1124808', 91, '2017-03-03 03:33:02'),
(58509, 'K1124808', 92, '2017-03-03 03:33:03'),
(58510, 'K1124808', 93, '2017-03-03 03:33:03'),
(58511, 'K1124808', 94, '2017-03-03 03:33:03'),
(58512, 'K1124808', 95, '2017-03-03 03:33:03'),
(58513, 'K1124808', 99, '2017-03-03 03:33:03'),
(58514, 'K1124808', 100, '2017-03-03 03:33:03'),
(58515, 'K1124808', 90, '2017-03-03 03:35:25'),
(58516, 'K1124808', 91, '2017-03-03 03:35:25'),
(58517, 'K1124808', 92, '2017-03-03 03:35:25'),
(58518, 'K1124808', 93, '2017-03-03 03:35:25'),
(58519, 'K1124808', 94, '2017-03-03 03:35:25'),
(58520, 'K1124808', 95, '2017-03-03 03:35:25'),
(58521, 'K1124808', 99, '2017-03-03 03:35:25'),
(58522, 'K1124808', 100, '2017-03-03 03:35:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enabled_students`
--
ALTER TABLE `enabled_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partylist`
--
ALTER TABLE `partylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `enabled_students`
--
ALTER TABLE `enabled_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3250;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74535;
--
-- AUTO_INCREMENT for table `partylist`
--
ALTER TABLE `partylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58523;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
