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
-- Table structure for table `trips orders`
--

DROP TABLE IF EXISTS `trips orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trips orders` (
  `date` date NOT NULL,
  `t_order_type` int NOT NULL,
  `t_idemployee` int NOT NULL,
  `destination` varchar(255) NOT NULL,
  `goal` text NOT NULL,
  `t_count_days` int NOT NULL,
  `to pay` decimal(9,2) NOT NULL,
  `idorder trips` int NOT NULL,
  PRIMARY KEY (`idorder trips`),
  KEY `idemployee_idx` (`t_idemployee`),
  KEY `order type_idx` (`t_order_type`),
  CONSTRAINT `idemployee000` FOREIGN KEY (`t_idemployee`) REFERENCES `employee` (`idemployee`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idorder000` FOREIGN KEY (`idorder trips`) REFERENCES `orders` (`idorder`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order type000` FOREIGN KEY (`t_order_type`) REFERENCES `orders types` (`idorders types`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips orders`
--

LOCK TABLES `trips orders` WRITE;
/*!40000 ALTER TABLE `trips orders` DISABLE KEYS */;
INSERT INTO `trips orders` VALUES ('2016-10-30',4,6,'Саратов','Проведение инструктажа для новых сотрудников',6,12000.00,114),('2018-05-29',4,3,'Челябнск','Внесение изменений в политику безопасности',4,8000.00,115),('2017-07-28',4,2,'Сочи','Проведение инструктажа для новых сотрудников',10,9000.00,116);
/*!40000 ALTER TABLE `trips orders` ENABLE KEYS */;
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
