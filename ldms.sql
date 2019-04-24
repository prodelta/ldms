-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2019 at 07:54 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ldms`
--

-- --------------------------------------------------------

--
-- Table structure for table `director_document`
--

DROP TABLE IF EXISTS `director_document`;
CREATE TABLE IF NOT EXISTS `director_document` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Userid` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Id_Proofs` varchar(50) NOT NULL,
  `Digital_Signature` varchar(50) NOT NULL,
  `Digital_Sign_Exp_Dt` date NOT NULL,
  `DIN_No` int(50) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `document_reg`
--

DROP TABLE IF EXISTS `document_reg`;
CREATE TABLE IF NOT EXISTS `document_reg` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Userid` varchar(10) NOT NULL,
  `Doc_Type` int(10) NOT NULL,
  `Purpose` varchar(100) NOT NULL,
  `Doc_Reg_Dt` date NOT NULL,
  `Doc_Renewal_Dt` date NOT NULL,
  `Renewed_Times` int(10) NOT NULL,
  `Amt` int(11) NOT NULL,
  `Doc_Shared_To` varchar(200) NOT NULL,
  `Alert_Days` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Userid` (`Userid`),
  KEY `Doc_Type` (`Doc_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foreign_natonals`
--

DROP TABLE IF EXISTS `foreign_natonals`;
CREATE TABLE IF NOT EXISTS `foreign_natonals` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Userid` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Passport_No` varchar(20) NOT NULL,
  `Hotel_Name` varchar(50) NOT NULL,
  `Visa_No` varchar(20) NOT NULL,
  `Visa_Exp_Dt` date NOT NULL,
  `Embracy_Contact` varchar(50) NOT NULL,
  `Alert_Visa_Exp_Dt` date NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
CREATE TABLE IF NOT EXISTS `insurance` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Userid` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Folder` varchar(50) NOT NULL,
  `Exp_Dt` date NOT NULL,
  `Amt` int(20) NOT NULL,
  `Previous_Amt` int(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `legal_agreement_master`
--

DROP TABLE IF EXISTS `legal_agreement_master`;
CREATE TABLE IF NOT EXISTS `legal_agreement_master` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Types` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Userid` varchar(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `director_document`
--
ALTER TABLE `director_document`
  ADD CONSTRAINT `director_document_ibfk_1` FOREIGN KEY (`Userid`) REFERENCES `signup` (`Userid`);

--
-- Constraints for table `document_reg`
--
ALTER TABLE `document_reg`
  ADD CONSTRAINT `document_reg_ibfk_1` FOREIGN KEY (`Userid`) REFERENCES `signup` (`Userid`),
  ADD CONSTRAINT `document_reg_ibfk_2` FOREIGN KEY (`Doc_Type`) REFERENCES `legal_agreement_master` (`Id`);

--
-- Constraints for table `foreign_natonals`
--
ALTER TABLE `foreign_natonals`
  ADD CONSTRAINT `foreign_natonals_ibfk_1` FOREIGN KEY (`Userid`) REFERENCES `signup` (`Userid`);

--
-- Constraints for table `insurance`
--
ALTER TABLE `insurance`
  ADD CONSTRAINT `insurance_ibfk_1` FOREIGN KEY (`Userid`) REFERENCES `signup` (`Userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
