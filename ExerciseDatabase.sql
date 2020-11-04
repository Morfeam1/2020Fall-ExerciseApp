-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql9.freemysqlhosting.net
-- Generation Time: Nov 04, 2020 at 07:43 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql9372861`
--

-- --------------------------------------------------------

--
-- Table structure for table `Exercise_Users`
--

CREATE TABLE `Exercise_Users` (
  `ID` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `DOB` datetime DEFAULT NULL,
  `Email` text NOT NULL,
  `Password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Exercise_Users_Feed_Table`
--

CREATE TABLE `Exercise_Users_Feed_Table` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Feed_Post_ID` int(11) NOT NULL,
  `Feed_Text` text NOT NULL,
  `Likes` int(11) NOT NULL,
  `Date_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Exercise_Users_Followers`
--

CREATE TABLE `Exercise_Users_Followers` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Follower Name` text NOT NULL,
  `Date_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Exercise_Users_Following`
--

CREATE TABLE `Exercise_Users_Following` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Following_Name` text NOT NULL,
  `Date_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Exercise_Users_Workouts_Template`
--

CREATE TABLE `Exercise_Users_Workouts_Template` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Biking_Time` int(11) NOT NULL,
  `Biking_Notes` text NOT NULL,
  `Hiking_Time` int(11) NOT NULL,
  `Hiking_Notes` text NOT NULL,
  `Running_Time` int(11) NOT NULL,
  `Running_Notes` text NOT NULL,
  `Weights_Time` int(11) NOT NULL,
  `Weights_Notes` text NOT NULL,
  `Other_Time` int(11) NOT NULL,
  `Other_Notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Exercise_Users`
--
ALTER TABLE `Exercise_Users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Exercise_Users_Feed_Table`
--
ALTER TABLE `Exercise_Users_Feed_Table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Exercise_Users_Followers`
--
ALTER TABLE `Exercise_Users_Followers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Exercise_Users_Workouts_Template`
--
ALTER TABLE `Exercise_Users_Workouts_Template`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Exercise_Users`
--
ALTER TABLE `Exercise_Users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
