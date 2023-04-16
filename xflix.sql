
-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2019 at 05:56 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xflix`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `firstname`, `lastname`, `username`, `gender`, `email`, `password`, `timestamp`) VALUES
(1, 'Leonard', 'Evans', 'Leonevans', 'male', 'leonard@email.com', 'Leonard', '2019-04-20 21:21:34'),
(2, 'brenda', 'chebet', 'bchebet', 'female', 'brendacchebet@gmail.com', 'brenda', '2019-04-23 23:38:13'),
(3, 'Maria', 'daniella', 'Maria', 'female', 'mariadanigikonyo@gmail.com', '12345789', '2019-04-25 19:43:12'),
(4, 'ronny', 'karani', 'rkarani', 'male', 'karanironny25@gmail.com', '12345678987', '2019-04-25 19:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comments_id` int(11) NOT NULL,
  `movie_ID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comments_id`, `movie_ID`, `username`, `comment`, `Time`) VALUES
(9, 21, 'Maria', 'good song', '2019-04-23 23:44:17'),
(10, 22, 'evan', 'Gokusa mankakusapo', '2019-04-24 05:37:25'),
(11, 26, 'evan', 'jkj', '2019-04-24 08:22:06'),
(12, 26, 'evan', 'is lit', '2019-04-25 17:52:13'),
(13, 26, 'charlesjr', 'awesome\r\n', '2019-04-25 18:00:26'),
(14, 29, 'evan', 'dfdfgd', '2019-04-25 19:30:02'),
(15, 30, 'Omanyo', 'This is a comment to paul tergat', '2019-04-25 20:22:18'),
(19, 36, 'evan', 'is lit', '2019-04-28 23:56:32'),
(20, 36, 'Maria', 'Migos my best', '2019-04-28 23:58:07'),
(22, 30, 'evan', 'Usually	these	phases	are	represented	as	a	cycle	that	is	commonly	called	â€œthe	circle of	hackingâ€	(see	Figure	1)	with	the	aim	of	emphasizing	that	the	cracker	can	continue	the process	over	and	over	again.	Though,	information	security	auditors	who	perform	ethical hacking	services	present	a	slight	variation	in	the	implementation	phases	like	this:', '2019-06-10 17:47:59'),
(23, 36, 'evan', 'Black	box	hacking This	mode	is	applicable	to	external	testing	only.	It	is	called	so	because	the	client only	gives	the	name	of	the	company	to	the	consultant,	so	the	auditor	starts	with	no information,	the	infrastructure	of	the	organization	is	a	â€œblack	boxâ€.', '2019-06-10 17:52:55'),
(24, 42, 'evan', 'lit', '2019-06-25 17:22:44'),
(25, 43, 'ericko', 'Great', '2019-08-22 19:06:56'),
(26, 22, 'ericko', 'work done', '2019-08-22 19:10:20'),
(27, 19, 'ericko', 'pretty cool', '2019-08-22 19:37:34'),
(28, 28, 'ericko', 'kali', '2019-08-22 19:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `firstname`, `lastname`, `username`, `gender`, `email`, `password`, `timestamp`) VALUES
(113, 'Evansoh', 'mutugi', 'evan', 'male', 'evans@mail.com', 'Evans', '2019-06-04 11:40:22'),
(114, 'jsl', 'cslfjk', 'ndkjwsl', 'female', 'jdsljk@sdl.ds', 'ksldk', '2019-06-08 18:02:34'),
(115, 'erick', 'munene', 'ericko', 'male', 'ericko303@gmail.com', '35505163', '2019-08-22 19:00:26'),
(116, 'erick', 'jkkcx', 'erickk', 'female', 'ericko30@gmail.com', 'ooi', '2019-08-22 19:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_ID` int(11) NOT NULL,
  `movie_name` varchar(500) NOT NULL,
  `url` varchar(500) NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `actors` text NOT NULL,
  `Release_date` date NOT NULL,
  `Date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_ID`, `movie_name`, `url`, `thumbnail`, `genre`, `actors`, `Release_date`, `Date_added`) VALUES
(19, 'Chris Brown - Gliding ft. Wiz Khalifa.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/Chris Brown - Gliding ft. Wiz Khalifa.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/cbrownglinding.PNG', 'fdf', 'xddf', '0000-00-00', '2019-05-30 23:52:42'),
(21, 'KYLE - Moment feat. Wiz Khalifa [Official Music Video].mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/KYLE - Moment feat. Wiz Khalifa [Official Music Video].mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/kyle.PNG', 'song', 'kyle,wiz kalifa', '0000-00-00', '2019-05-30 19:36:19'),
(22, 'Jaden Smith - GHOST ft. Christian Rich (Official V.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/Jaden Smith - GHOST ft. Christian Rich (Official V.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/ghost.PNG', 'song', 'jaden smith', '0000-00-00', '2019-05-30 23:52:49'),
(26, 'Jaden Smith - GOKU.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/Jaden Smith - GOKU.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/goku.PNG', 'animation', 'Jaden Smith', '2018-11-21', '2019-05-30 23:54:04'),
(28, '2 Chainz - Bigger Than You ft. Drake, Quavo - Copy.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/2 Chainz - Bigger Than You ft. Drake, Quavo - Copy.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/chainz.PNG', 'Action', '2 chainz', '2018-12-05', '2019-05-30 19:35:39'),
(29, 'Migos ft. Wiz khalifa - Gassing (Music Video)(NEW 2019).mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/Migos ft. Wiz khalifa - Gassing (Music Video)(NEW 2019).mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/wiz k.PNG', 'Drama', 'Wiz khalifa', '2019-03-08', '2019-05-31 03:15:19'),
(30, 'Chris Brown - Look At Me Now (Official Music Video) ft. Lil Wayne, Busta Rhymes.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/Chris Brown - Look At Me Now (Official Music Video) ft. Lil Wayne, Busta Rhymes.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/sdffs.PNG', 'Horror', 'Paul tergat', '2019-10-10', '2019-05-30 23:51:12'),
(31, 'DaniLeigh - Lil Bebe.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/DaniLeigh - Lil Bebe.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/bebe.PNG', 'Romance', 'Danileigh', '2019-02-05', '2019-05-30 17:55:29'),
(32, 'Khalid - OTW (Official Video) ft. 6LACK, Ty Dolla $ign.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/Khalid - OTW (Official Video) ft. 6LACK, Ty Dolla $ign.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/khalid.PNG', 'Documentary', 'Khalid', '2018-12-12', '2019-05-31 03:14:43'),
(33, 'benny blanco, Tainy, Selena Gomez, J Balvin - I Cant Get Enough (Official Music Video).mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/benny blanco, Tainy, Selena Gomez, J Balvin - I Cant Get Enough (Official Music Video).mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/selena.PNG', 'Comedy', 'Selena Gomez', '2019-04-02', '2019-05-31 03:11:38'),
(34, 'French Montana - No Stylist ft. Drake (Official Mu.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/French Montana - No Stylist ft. Drake (Official Mu.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/no stylist.PNG', 'Documentary', 'French Monatana Drake', '2019-01-09', '2019-05-31 03:15:12'),
(35, '2 Chainz - PROUD ft. YG, Offset.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/2 Chainz - PROUD ft. YG, Offset.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/2 chainz proud.PNG', 'Documentary', '2 chainz ,yg', '2019-04-02', '2019-05-30 20:15:01'),
(36, 'Migos - Out Yo Way x Culture (Music Video).mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/Migos - Out Yo Way x Culture (Music Video).mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/migos.PNG', 'Action', 'migos', '2019-04-18', '2019-05-30 23:52:17'),
(39, 'Rich The Kid - Lost It ft. Quavo, Offset.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/Rich The Kid - Lost It ft. Quavo, Offset.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/rich the kid.PNG', 'Comedy', 'Rich the kid ,migos', '2018-03-05', '2019-04-28 19:15:31'),
(40, 'Migos - Drop Top (Music Video) (NEW 2019).mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/Migos - Drop Top (Music Video) (NEW 2019).mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/new migos.PNG', 'History', 'Migos', '2019-04-17', '2019-05-31 03:43:49'),
(42, 'WALK IT TALK IT - Migos ft. Drake @THEFUTUREKINGZ.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/WALK IT TALK IT - Migos ft. Drake @THEFUTUREKINGZ.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/future kings.PNG', 'Drama', 'The future kingz', '2018-02-20', '2019-05-31 03:20:52'),
(43, '2 Chainz ft. Travis Scott - 4 AM #ThaKrew X #Ayoan.mp4', 'http://127.0.0.1/project/frontend/uploaded_videos/2 Chainz ft. Travis Scott - 4 AM ThaKrew X Ayoan.mp4', 'http://127.0.0.1/project/frontend/uploaded_thumbnails/4am.PNG', 'Action', 'ayo,teo', '2019-06-12', '2019-06-25 17:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `rating_info`
--

CREATE TABLE `rating_info` (
  `movie_ID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `rating_action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating_info`
--

INSERT INTO `rating_info` (`movie_ID`, `customerID`, `rating_action`) VALUES
(19, 111, 'like'),
(22, 1, 'like'),
(22, 111, 'dislike'),
(22, 113, 'dislike'),
(26, 1, 'like'),
(26, 113, 'like'),
(28, 1, 'dislike'),
(28, 113, 'like'),
(30, 1, 'dislike'),
(30, 113, 'dislike'),
(31, 1, 'dislike'),
(33, 1, 'dislike'),
(33, 113, 'dislike'),
(34, 113, 'dislike'),
(35, 113, 'dislike'),
(35, 115, 'like'),
(36, 1, 'dislike'),
(36, 113, 'dislike'),
(39, 113, 'like'),
(40, 1, 'like'),
(42, 113, 'like'),
(43, 113, 'like'),
(43, 115, 'like');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `movie_ID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`movie_ID`, `customerID`, `views`) VALUES
(19, 1, 3),
(19, 89, 1),
(19, 111, 5),
(19, 113, 2),
(19, 115, 3),
(21, 1, 15),
(21, 113, 1),
(22, 1, 61),
(22, 89, 1),
(22, 113, 16),
(22, 115, 11),
(26, 1, 17),
(26, 113, 6),
(26, 115, 2),
(28, 1, 12),
(28, 89, 1),
(28, 113, 6),
(28, 115, 8),
(29, 1, 12),
(30, 1, 30),
(30, 89, 1),
(30, 111, 12),
(30, 113, 12),
(31, 1, 20),
(31, 89, 2),
(31, 113, 3),
(32, 89, 1),
(32, 113, 3),
(32, 115, 1),
(33, 1, 41),
(33, 111, 7),
(33, 113, 5),
(34, 111, 3),
(34, 113, 3),
(35, 113, 21),
(35, 115, 3),
(36, 1, 157),
(36, 89, 2),
(36, 111, 10),
(36, 113, 22),
(39, 89, 1),
(39, 113, 3),
(40, 1, 51),
(40, 111, 2),
(40, 113, 2),
(42, 89, 0),
(42, 113, 7),
(42, 115, 2),
(43, 113, 12),
(43, 115, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comments_id`),
  ADD KEY `comments_ibfk_2` (`movie_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_ID`);

--
-- Indexes for table `rating_info`
--
ALTER TABLE `rating_info`
  ADD UNIQUE KEY `movie_ID` (`movie_ID`,`customerID`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD UNIQUE KEY `movie_ID` (`movie_ID`,`customerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`movie_ID`) REFERENCES `movies` (`movie_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;