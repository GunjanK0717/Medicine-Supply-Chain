# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     22c9648_medicine_supply_chain
# Server version:               5.1.73-community
# Server OS:                    Win32
# HeidiSQL version:             5.0.0.3272
# Date/time:                    2022-11-08 15:57:03
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
# Dumping database structure for 22c9648_medicine_supply_chain
CREATE DATABASE IF NOT EXISTS `22c9648_medicine_supply_chain` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `22c9648_medicine_supply_chain`;


# Dumping structure for table 22c9648_medicine_supply_chain.companyregistertbl
CREATE TABLE IF NOT EXISTS `companyregistertbl` (
  `Cusername` text,
  `Cemail` text,
  `Cpassword` text,
  `CMbNo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 22c9648_medicine_supply_chain.companyregistertbl: 1 rows
/*!40000 ALTER TABLE `companyregistertbl` DISABLE KEYS */;
INSERT INTO `companyregistertbl` (`Cusername`, `Cemail`, `Cpassword`, `CMbNo`) VALUES ('jp', 'jp@gmail.com', 'Jp@123', '9999999999');
/*!40000 ALTER TABLE `companyregistertbl` ENABLE KEYS */;


# Dumping structure for table 22c9648_medicine_supply_chain.medicine_info
CREATE TABLE IF NOT EXISTS `medicine_info` (
  `MID` int(10) NOT NULL AUTO_INCREMENT,
  `MedicineName` text,
  `CompanyName` text,
  `DescriptionName` text,
  `MFGDate` text,
  `Price` text,
  `ExpiryDate` text,
  `Qty` text,
  `Medicine_No` text,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table 22c9648_medicine_supply_chain.medicine_info: 1 rows
/*!40000 ALTER TABLE `medicine_info` DISABLE KEYS */;
INSERT INTO `medicine_info` (`MID`, `MedicineName`, `CompanyName`, `DescriptionName`, `MFGDate`, `Price`, `ExpiryDate`, `Qty`, `Medicine_No`) VALUES (1, 'Nov', 'xyz', 'fever good medicine', '2022-11-08', '1500', '2024-11-30', '2500', 'Nov82');
/*!40000 ALTER TABLE `medicine_info` ENABLE KEYS */;


# Dumping structure for table 22c9648_medicine_supply_chain.medicine_info_order
CREATE TABLE IF NOT EXISTS `medicine_info_order` (
  `D_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Distribute_Email_ID` text,
  `Medicine_No` text,
  `MedicineName` text,
  `CompanyName` text,
  `Order_Qty` text,
  `MId` text,
  `Distribute_Mobile_No` text,
  `Status_Info` text,
  PRIMARY KEY (`D_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

# Dumping data for table 22c9648_medicine_supply_chain.medicine_info_order: 1 rows
/*!40000 ALTER TABLE `medicine_info_order` DISABLE KEYS */;
INSERT INTO `medicine_info_order` (`D_Id`, `Distribute_Email_ID`, `Medicine_No`, `MedicineName`, `CompanyName`, `Order_Qty`, `MId`, `Distribute_Mobile_No`, `Status_Info`) VALUES (1, 'jp@gmail.com', 'Nov82', 'Nov', 'xyz', '10', '1', '9999999999', '0');
/*!40000 ALTER TABLE `medicine_info_order` ENABLE KEYS */;


# Dumping structure for table 22c9648_medicine_supply_chain.registertbl
CREATE TABLE IF NOT EXISTS `registertbl` (
  `Uusername` text,
  `Uemail` text,
  `Upassword` text,
  `UMbNo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 22c9648_medicine_supply_chain.registertbl: 2 rows
/*!40000 ALTER TABLE `registertbl` DISABLE KEYS */;
INSERT INTO `registertbl` (`Uusername`, `Uemail`, `Upassword`, `UMbNo`) VALUES ('abc', 'abc@gmail.com', 'Aa@123456', '8888888888'), ('jp', 'jp@gmail.com', 'Jp@123456', '8888888888');
/*!40000 ALTER TABLE `registertbl` ENABLE KEYS */;


# Dumping structure for table 22c9648_medicine_supply_chain.tblamount
CREATE TABLE IF NOT EXISTS `tblamount` (
  `A_ID` int(10) NOT NULL DEFAULT '0',
  `Email_ID` text,
  `Amount` text,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 22c9648_medicine_supply_chain.tblamount: 1 rows
/*!40000 ALTER TABLE `tblamount` DISABLE KEYS */;
INSERT INTO `tblamount` (`A_ID`, `Email_ID`, `Amount`) VALUES (0, 'jp@gmail.com', '100000000');
/*!40000 ALTER TABLE `tblamount` ENABLE KEYS */;


# Dumping structure for table 22c9648_medicine_supply_chain.tbluser_amount
CREATE TABLE IF NOT EXISTS `tbluser_amount` (
  `A_ID` int(10) NOT NULL DEFAULT '0',
  `Email_ID` text,
  `Amount` text,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table 22c9648_medicine_supply_chain.tbluser_amount: 1 rows
/*!40000 ALTER TABLE `tbluser_amount` DISABLE KEYS */;
INSERT INTO `tbluser_amount` (`A_ID`, `Email_ID`, `Amount`) VALUES (0, 'abc@gmail.com', '100000000');
/*!40000 ALTER TABLE `tbluser_amount` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
