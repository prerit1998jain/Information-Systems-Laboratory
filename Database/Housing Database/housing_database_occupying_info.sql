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
-- Table structure for table `occupying_info`
--

DROP TABLE IF EXISTS `occupying_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupying_info` (
  `date_of_leaving` date DEFAULT NULL,
  `date_of_occupying` date NOT NULL,
  `aadharid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`date_of_occupying`,`aadharid`),
  KEY `uid` (`uid`),
  CONSTRAINT `occupying_info_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `unitinfo` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupying_info`
--

LOCK TABLES `occupying_info` WRITE;
/*!40000 ALTER TABLE `occupying_info` DISABLE KEYS */;
INSERT INTO `occupying_info` VALUES ('2000-09-30','2001-10-12',101,101),('2000-09-30','2001-10-12',102,101),('2000-09-30','2001-10-12',103,101),('2000-09-30','2001-10-12',104,101),('2001-10-12','2012-05-12',101,111),('2001-10-12','2012-05-12',102,111),('2001-10-12','2012-05-12',103,111),('2001-10-12','2012-05-12',104,111);
/*!40000 ALTER TABLE `occupying_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-26 13:53:34
