-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2019 at 07:37 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `students_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `students_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `school_board` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `students_name`, `students_lastname`, `school_board`) VALUES
(1, 'Elmaz', 'Niksic', 'CSM'),
(2, 'Ivan', 'Drago', 'CSMB'),
(3, 'Jovan', 'Jovanovic', 'CSMB'),
(4, 'Ivan', 'Ivanovic', 'CSM'),
(5, 'Zoran', 'Kesic', 'CSMB'),
(6, 'Ana', 'Milutinovic', 'CSM');

-- --------------------------------------------------------

--
-- Table structure for table `students_grades`
--

CREATE TABLE `students_grades` (
  `id` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `physics_grade` int(11) DEFAULT NULL,
  `algorithms_grade` int(11) DEFAULT NULL,
  `math_grade` int(11) DEFAULT NULL,
  `history_grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students_grades`
--

INSERT INTO `students_grades` (`id`, `studentid`, `physics_grade`, `algorithms_grade`, `math_grade`, `history_grade`) VALUES
(1, 1, 5, 8, 7, 9),
(2, 2, 6, 5, 8, 7),
(3, 3, 6, 5, 9, 7),
(8, 4, 5, 5, NULL, 5),
(5, 5, 6, 5, 8, 9),
(6, 6, 8, 9, 7, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `students_grades`
--
ALTER TABLE `students_grades`
  ADD PRIMARY KEY (`studentid`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students_grades`
--
ALTER TABLE `students_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
