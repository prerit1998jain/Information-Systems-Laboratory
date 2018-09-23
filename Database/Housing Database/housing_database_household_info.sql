-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: housing_database
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
-- Table structure for table `household_info`
--

DROP TABLE IF EXISTS `household_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `household_info` (
  `hhid` int(11) DEFAULT NULL,
  `member_name` varchar(25) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `aadharid` int(11) NOT NULL,
  `head` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`aadharid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `household_info`
--

LOCK TABLES `household_info` WRITE;
/*!40000 ALTER TABLE `household_info` DISABLE KEYS */;
INSERT INTO `household_info` VALUES (1,'Rahul Kumar','1978-12-09','Male',101,1),(1,'Smriti Kumar ','1980-03-04','Female',102,0),(1,'Sudhanshu Kumar','2000-12-31','Male',103,0),(2,'Het Shah','1969-04-15','Male',201,1),(2,'Hiten Shah','1943-03-24','Male',202,0),(2,'Koyal Shah','1973-05-15','Female',203,0),(2,'Ruh Shah','1985-09-09','Female',204,0),(3,'Harsh Mundra','1949-03-23','Male',301,1),(3,'Babulal Mundra ','1953-12-23','Male',302,1),(3,'Kiran Mundra','1955-09-30','Female',303,0),(3,'Chanchalbai Mundra','1962-08-31','Female',304,0),(4,'Palak Muchhal','1984-02-10','Female',401,1),(4,'Adi Muchhal','2002-08-31','Male',402,0),(5,'Karan Nandankar','1998-03-23','Male',501,1),(5,'Himanshu Nandankar','2000-07-23','Male',502,0),(6,'Krishnaben','1978-07-12','Female',601,1),(7,'K D Jain','1967-04-15','Male',701,1),(7,'Sunita Jain','1970-05-12','Female',702,0),(7,'Prerna Jain','1996-02-10','Female',703,0),(7,'Prerit Jain','1998-09-09','Male',704,0),(8,'Saurabh Jha','1987-07-29','Male',801,1),(8,'Payal Jha','1989-03-26','Female',802,0);
/*!40000 ALTER TABLE `household_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-26 13:53:33
