CREATE DATABASE  IF NOT EXISTS `hr_department` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hr_department`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: hr_department
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sheets salary`
--

DROP TABLE IF EXISTS `sheets salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sheets salary` (
  `idsheetsalary` int NOT NULL AUTO_INCREMENT,
  `ss_idemployee` int NOT NULL,
  `period begin` date NOT NULL,
  `period end` date NOT NULL,
  `ss_salary` decimal(9,2) NOT NULL,
  `time premium` decimal(9,2) NOT NULL,
  `premium` decimal(9,2) NOT NULL,
  PRIMARY KEY (`idsheetsalary`),
  KEY `idemployee_idx` (`ss_idemployee`),
  CONSTRAINT `idemployee1` FOREIGN KEY (`ss_idemployee`) REFERENCES `employee` (`idemployee`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheets salary`
--

LOCK TABLES `sheets salary` WRITE;
/*!40000 ALTER TABLE `sheets salary` DISABLE KEYS */;
INSERT INTO `sheets salary` VALUES (1,2,'2017-07-20','2017-08-20',80000.00,10000.00,5000.00),(2,4,'2019-10-20','2019-11-20',210000.00,10000.00,10000.00),(3,6,'2019-10-20','2019-11-20',270000.00,5000.00,5000.00),(4,2,'2018-06-20','2018-07-20',80000.00,10000.00,0.00),(5,4,'2020-01-20','2020-02-20',210000.00,10000.00,5000.00);
/*!40000 ALTER TABLE `sheets salary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-23 14:11:58
