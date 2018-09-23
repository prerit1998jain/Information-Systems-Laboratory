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
-- Table structure for table `loaninfo`
--

DROP TABLE IF EXISTS `loaninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loaninfo` (
  `loanid` int(11) NOT NULL,
  `loan_type` varchar(20) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `pay_backperiod_in_months` int(11) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`loanid`),
  KEY `customerid` (`customerid`),
  CONSTRAINT `loaninfo_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customerinfo` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaninfo`
--

LOCK TABLES `loaninfo` WRITE;
/*!40000 ALTER TABLE `loaninfo` DISABLE KEYS */;
INSERT INTO `loaninfo` VALUES (101021,'Vehicle',12000,6,10102),(201011,'Home',500000,12,20101),(201021,'Vehicle',55000,12,20102),(202011,'Home',1000000,60,20201),(203011,'Education',80000,36,20301),(204011,'Home',78000,30,20401),(303011,'Health',100000,24,30301),(304011,'Vehicle',250000,18,30401),(401021,'Education',150000,12,40102),(402021,'Health',90000,10,40202);
/*!40000 ALTER TABLE `loaninfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-17 14:26:40
