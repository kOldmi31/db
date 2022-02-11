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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `idemployee` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surename` varchar(45) NOT NULL,
  `patronymic` varchar(45) NOT NULL,
  `birthday` date NOT NULL,
  `gender` enum('муж','жен') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INN` varchar(45) NOT NULL,
  `married` tinyint NOT NULL,
  `count of children` int unsigned NOT NULL,
  `registration adress` varchar(255) NOT NULL,
  `living adress` varchar(255) NOT NULL,
  `phone` bigint unsigned NOT NULL,
  `email` varchar(45) NOT NULL,
  `education degree` varchar(45) NOT NULL,
  `number edu_docx` bigint unsigned NOT NULL,
  `post` varchar(45) NOT NULL,
  `salary` decimal(9,2) unsigned NOT NULL,
  `department` varchar(255) NOT NULL,
  `head of department` int NOT NULL,
  `work adress` varchar(255) NOT NULL,
  `department phone code` int NOT NULL,
  `boss phone` bigint unsigned NOT NULL,
  `boss email` varchar(45) NOT NULL,
  PRIMARY KEY (`idemployee`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Иван','Иванов','Иванович','1980-12-10','муж','7440984092384',0,0,'Москва, 36','Москва, 36',89295656565,'kokoko@mail.ru','полное высшее',349309324092374,'стажер-разработчик',50000.00,'разработка пользовательских интерфейсов',4,'Москва, 77',222,89005553535,'boss4@mail.ru'),(2,'Григорий','Голубев','Иванович','1977-08-24','муж','6982367498327',1,2,'Одесса, 44','Москва, 47',89393356476,'hhhhh@mail.ru','неполное высшее',739847983647364,'разработчик',80000.00,'разработка пользовательских интерфейсов',4,'Москва, 77',222,89005553535,'boss4@mail.ru'),(3,'Мария','Корнева','Викторовна','1957-02-18','жен','7346298463982674',0,1,'Барнаул, 66','Москва, 98',89396578565,'jfjfjfj@mail.ru','полное высшее',8438748264873223,'разработчик',90000.00,'системная архитектура',6,'Котельники, 45',333,89904554545,'boss6@mail.ru'),(4,'Амир','Камалов','Маратович','2000-01-20','муж','48374987239487',0,0,'Уфа, 120','Москва, 7с3',89870466893,'kamalov@mail.ru','неполное высшее',47249769632,'руководитель',210000.50,'разработка пользовательских интерфейсов',4,'Москва, 77',222,89005553535,'boss4@mail.ru'),(5,'Артемий','Ем','Вадимович','2000-11-21','муж','8347984798347',1,2,'Красногорск, 55','Красногорск, 55',89475674657,'tema@mail.ru','неполное высшее',47389473847,'разработчик',90000.00,'системная архитектура',6,'Котельники, 45',333,89904554545,'boss6@mail.ru'),(6,'Руслан','Рязанцев','Игоревич','1980-10-22','муж','487392492847',1,5,'Москва, 908','Москва, 908',89465768765,'rusik@mail.ru','полное высшее',37489347298347,'руководитель',270000.00,'системная архитектура',6,'Котельники, 45',333,89904554545,'boss6@mail.ru'),(7,'Таисия','Хоровашкина','Олеговна','1998-03-13','жен','83743487298473',1,5,'Москва, 908','Москва, 908',894655544466,'tasya@mail.ru','полное высшее',834794823704,'руководитель',200000.00,'логистика',7,'Москва, 347',555,89555555554,'boss7@mail.ru'),(8,'Артемий','Вольфович','Олегович','2001-02-13','муж','4798739487298473',0,0,'Москва, 1','Москва, 1',89101002033,'big_voin@mail.ru','неполное высшее',7482734982730478,'технический персонал',30000.00,'административно-отраслевой',9,'Москва, 578',999,880057575757,'boss9@mail.ru'),(9,'Богдан','Чергик','Евгениевич','1950-06-12','муж','7836487263487',1,4,'Сочи, 45','Москва, 876',89848749875,'old_boss_sochi@mail.ru','полное высшее',48279487392487923,'руководитель',190000.00,'административно-отраслевой',9,'Москва, 578',999,880057575757,'boss9@mail.ru');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
