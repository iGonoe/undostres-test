
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
