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
-- Table structure for table `unitinfo`
--

DROP TABLE IF EXISTS `unitinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unitinfo` (
  `uid` int(11) NOT NULL,
  `number_of_bedrooms` int(11) DEFAULT NULL,
  `number_of_bathrooms` int(11) DEFAULT NULL,
  `square_footage` float DEFAULT NULL,
  `kitchen_or_living` float DEFAULT NULL,
  `hdid` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `hdid` (`hdid`),
  CONSTRAINT `unitinfo_ibfk_1` FOREIGN KEY (`hdid`) REFERENCES `housedevelopmentinfo` (`hdid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unitinfo`
--

LOCK TABLES `unitinfo` WRITE;
/*!40000 ALTER TABLE `unitinfo` DISABLE KEYS */;
INSERT INTO `unitinfo` VALUES (101,1,1,400,1,1),(102,1,1,400,1,1),(111,2,2,500,2,1),(112,3,2,600,2,1),(201,1,1,420,2,2),(202,2,2,505,1,2),(211,4,5,700,2,2),(301,5,5,800,1,3),(302,2,3,600,2,3),(303,3,1,450,1,3);
/*!40000 ALTER TABLE `unitinfo` ENABLE KEYS */;
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
