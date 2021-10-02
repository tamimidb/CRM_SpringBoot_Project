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
-- Table structure for table `deals`
--

DROP TABLE IF EXISTS `deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `campaign_source` varchar(255) DEFAULT NULL,
  `closing_date` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `deal_code` varchar(255) DEFAULT NULL,
  `deal_name` varchar(255) DEFAULT NULL,
  `expected_revenue` int DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `probability` int DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deals`
--

LOCK TABLES `deals` WRITE;
/*!40000 ALTER TABLE `deals` DISABLE KEYS */;
INSERT INTO `deals` VALUES (80,'Tahsin',1000,NULL,'2021-09-19','Tamim Ahmed','D_101','Fruits_Sell',900,'Public Relations',10,NULL,'Warm Lead'),(81,'Sujan',1566,NULL,'2021-09-10','Tamim Ahmed','D_102','Fruits_Sell',1425,'Employee Referral',9,'Qualification','Hot Lead'),(82,'Tuhin',5000,NULL,'2021-09-06','Tamim Ahmed','D_103','Fruits_Sell',4500,'Partner',10,'Qualification','Warm Lead'),(83,'Azam',2000,NULL,'2021-09-01','','D_104','Fruits_Sell',1900,'Advertisement',5,'Needs Analysis','Warm Lead');
/*!40000 ALTER TABLE `deals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19 12:10:38
