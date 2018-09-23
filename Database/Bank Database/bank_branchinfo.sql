-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `branchinfo`
--

DROP TABLE IF EXISTS `branchinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branchinfo` (
  `branchid` int(11) NOT NULL,
  `branch_name` varchar(20) DEFAULT NULL,
  `branch_location` varchar(20) DEFAULT NULL,
  `bankid` int(11) DEFAULT NULL,
  PRIMARY KEY (`branchid`),
  KEY `bankid` (`bankid`),
  CONSTRAINT `branchinfo_ibfk_1` FOREIGN KEY (`bankid`) REFERENCES `bank_names` (`bankid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchinfo`
--

LOCK TABLES `branchinfo` WRITE;
/*!40000 ALTER TABLE `branchinfo` DISABLE KEYS */;
INSERT INTO `branchinfo` VALUES (101,'IIT Kharagpur','kharagpur',1),(102,'gol bazaar','kharagpur',1),(201,'IIT Kharagpur','kharagpur',2),(202,'Tech Market ','Kharagpur',2),(203,'Howrah ','Howrah',2),(204,'Mahanagar','Kota',2),(301,'Palk Street','Kolkata',3),(302,'Bada Bazaar ','Kolkata',3),(303,'Howrah','Howrah',3),(304,'Sealdah','Kolkata',3),(401,'IIT Kharagpur','kharagpur',4),(402,'bada bazaar','kharagpur',4);
/*!40000 ALTER TABLE `branchinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-17 14:26:39
