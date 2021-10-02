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
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `id` int NOT NULL,
  `actual_cost` varchar(255) DEFAULT NULL,
  `budgeted_cost` varchar(255) DEFAULT NULL,
  `campaign_name` varchar(255) DEFAULT NULL,
  `campaign_owner` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_time` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `expected_response` varchar(255) DEFAULT NULL,
  `expected_revenue` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_time` varchar(255) DEFAULT NULL,
  `numberssent` varchar(255) DEFAULT NULL,
  `parent_campaign` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `campaign_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (25,NULL,'','Product Promotion',NULL,'',NULL,'','',NULL,NULL,'',NULL,NULL,'','','Please Select','Please Select','camp_101'),(26,NULL,'30000','Product Promotion',NULL,'Tamim',NULL,'','2021-09-04',NULL,NULL,'Tamim',NULL,NULL,'','2021-09-02','Planning','Advertisement','camp_102'),(27,NULL,'20000','Product Promotion',NULL,'Tamim',NULL,'','2021-09-03',NULL,NULL,'Tamim',NULL,NULL,'','2021-09-01','Complete','Web Research','camp_103'),(28,NULL,'20000','Product Promotion',NULL,'Tamim',NULL,'','2021-09-03',NULL,NULL,'Tamim',NULL,NULL,'','2021-09-01','Complete','Web Research','camp_103'),(29,NULL,'20000','Product Promotion',NULL,'Tamim',NULL,'','2021-09-03',NULL,NULL,'Tamim',NULL,NULL,'','2021-09-01','Complete','Web Research','camp_103'),(37,NULL,'','',NULL,'',NULL,'','',NULL,NULL,'',NULL,NULL,'','','Please Select','Please Select',''),(38,NULL,'','',NULL,'',NULL,'','',NULL,NULL,'',NULL,NULL,'','','Please Select','Please Select','camp_1013');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
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
