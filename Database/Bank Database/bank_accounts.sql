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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `account_number` int(11) NOT NULL,
  `type_of_account` varchar(20) DEFAULT NULL,
  `amount_present` float DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_number`),
  KEY `customerid` (`customerid`),
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customerinfo` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1010101,'Current',3600,10101),(1020101,'Savings',10000,10201),(1020201,'Savings',999999,10202),(2010101,'Savings',100220,20101),(2010201,'Savings',125468,20102),(2010202,'Current',78945,20102),(2020202,'Savings',23655,20202),(2030101,'Savings',12300,20301),(2030102,'Deposits',78003,20301),(2040101,'Savings',140000,20401),(2040201,'Currents',13000,20402),(2040202,'Savings',12000,20402),(3010101,'Savings',12400,30101),(3020101,'Deposits ',100000,30201),(3040101,'Savings',120000,30401),(3040201,'Deposits',90000,30402),(4010101,'Savings',3655,40101),(4010102,'Currents',80000,40101),(4020101,'Currents',45630,40201),(4020102,'Savings',123000,40201);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
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
