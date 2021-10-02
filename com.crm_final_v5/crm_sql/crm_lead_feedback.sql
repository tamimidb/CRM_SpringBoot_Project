-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: crm
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
-- Table structure for table `lead_feedback`
--

DROP TABLE IF EXISTS `lead_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `feedback_code` varchar(255) DEFAULT NULL,
  `feedback_type` varchar(255) DEFAULT NULL,
  `lead_email` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `selected_name` varchar(255) DEFAULT NULL,
  `lead_first_name` varchar(255) DEFAULT NULL,
  `lead_last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_feedback`
--

LOCK TABLES `lead_feedback` WRITE;
/*!40000 ALTER TABLE `lead_feedback` DISABLE KEYS */;
INSERT INTO `lead_feedback` VALUES (44,'-',NULL,'Campaign','tamimahmed@gmail.com',3,'Product Promotion',NULL,'ahmed'),(45,'-',NULL,'Campaign','tamimahmed@gmail.com',3,'Product Promotion',NULL,'Ahmed'),(65,'-',NULL,'Product','tamimahmed@gmail.com',3,'orange','Sujan','Khan'),(66,'-',NULL,'Product','tamimahmed@gmail.com',4,'apple','Al ','Amin'),(67,'-',NULL,'Product','tamimahmed@gmail.com',5,'orange','Tahsin','Hasan'),(75,'-',NULL,'Product','tamimahmed@gmail.com',4,'apple','Sujan','Khan'),(76,'-',NULL,'Campaign','sujan@gmail.com',2,'','tamim','ahmed');
/*!40000 ALTER TABLE `lead_feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19 12:10:36
