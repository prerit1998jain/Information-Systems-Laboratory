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
-- Table structure for table `customerinfo`
--

DROP TABLE IF EXISTS `customerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerinfo` (
  `customerid` int(11) NOT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `customer_age` int(11) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerid`),
  KEY `branchid` (`branchid`),
  CONSTRAINT `customerinfo_ibfk_1` FOREIGN KEY (`branchid`) REFERENCES `branchinfo` (`branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerinfo`
--

LOCK TABLES `customerinfo` WRITE;
/*!40000 ALTER TABLE `customerinfo` DISABLE KEYS */;
INSERT INTO `customerinfo` VALUES (10101,'Govinda Yadav',80,101),(10102,'Anadi Sinha',48,101),(10201,'J K Jha',25,102),(10202,'Prerit Jain',23,102),(20101,'Aman Modi',63,201),(20102,'Zeeshan',54,201),(20103,'Nachiketa',21,201),(20201,'Dhiraj Barnwal',65,202),(20202,'Shubham Mawa',78,202),(20301,'Anjali Jha ',45,203),(20401,'Mahima Kumar',19,204),(20402,'Palak ',26,204),(30101,'Karan Nandankar',27,301),(30201,'Megha Yadav',30,302),(30301,'Jack bell',49,303),(30401,'Kumar Aniket',34,304),(30402,'Shubham Mawa',78,304),(40101,'Het Shah',37,401),(40102,'Tarun Bhattar',39,401),(40201,'Nachiketa ',36,402),(40202,'Het Shah',36,402);
/*!40000 ALTER TABLE `customerinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-17 14:26:38
