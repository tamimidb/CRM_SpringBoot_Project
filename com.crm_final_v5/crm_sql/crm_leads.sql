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
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) DEFAULT NULL,
  `lead_city` varchar(255) DEFAULT NULL,
  `lead_company` varchar(255) DEFAULT NULL,
  `lead_company_annual_revenue` varchar(255) DEFAULT NULL,
  `lead_company_number_of_employees` varchar(255) DEFAULT NULL,
  `lead_country` varchar(255) DEFAULT NULL,
  `lead_description` varchar(255) DEFAULT NULL,
  `lead_email` varchar(255) DEFAULT NULL,
  `lead_fax` varchar(255) DEFAULT NULL,
  `lead_first_name` varchar(255) DEFAULT NULL,
  `lead_industry` varchar(255) DEFAULT NULL,
  `lead_last_name` varchar(255) DEFAULT NULL,
  `lead_mobile` varchar(255) DEFAULT NULL,
  `lead_rating` varchar(255) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `lead_state` varchar(255) DEFAULT NULL,
  `lead_status` varchar(255) DEFAULT NULL,
  `lead_street` varchar(255) DEFAULT NULL,
  `lead_website` varchar(255) DEFAULT NULL,
  `lead_zip_code` varchar(255) DEFAULT NULL,
  `lead_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (72,'Soft.Eng','Jamalpur sadar','Amjad Hossen','200000','Amjad Hossen','Bangladesh',NULL,'sujan@gmail.com','','Sujan','Optical Networking','Khan','01893080805','Active','Advertisement','Dhaka','Contacted','United Jamalpur Power Ltd. Jamalpur.','brekkho.com','2000','l_101'),(73,'Soft.Eng','Jamalpur sadar','Amjad Hossen','100000','Amjad Hossen','Bangladesh','','tashin@gmail.com','','Tahsin','Please Select','Hasan','01677393661','Active','Public Relations','Dhaka','Contacted','United Jamalpur Power Ltd. Jamalpur.','brekkho.com','2000','l_102'),(75,'Techer','N.Gonj','Brekkho limited company','500000',NULL,'Bangladesh',NULL,'alamin@gmail.com',NULL,'Al  Amin',NULL,NULL,'01677393661','Inactive','Advertisement','Dhaka','Lost Lead',NULL,'brekkho.com',NULL,'l_103'),(76,'Techer','Dhaka','Brekkho limited company','100000',NULL,'Bangladesh',NULL,'bashir@gmail.com',NULL,'Basir',NULL,NULL,'01677393661','Inactive','Advertisement','Dhaka','Contacted',NULL,'brekkho.com',NULL,'l_104'),(77,'Student','Dhaka','Brekkho limited company','100000',NULL,'Bangladesh',NULL,'rashed@gmail.com',NULL,'Rashed',NULL,NULL,'01677393661','Active','Advertisement','Dhaka','Lost Lead',NULL,'brekkho.com',NULL,'l_105'),(78,'Student','Dhaka','Brekkho limited company','100000',NULL,'Bangladesh',NULL,'azam@gmal.com',NULL,'Azam',NULL,NULL,'01677393661','Inactive','Advertisement','Dhaka','Lost Lead',NULL,'Facebook.com',NULL,'l_106'),(79,'Student','Dhaka','Brekkho limited company','100000',NULL,'Bangladesh',NULL,'tania@gmail.com',NULL,'Tania',NULL,NULL,'01677393661','Active','Advertisement','Dhaka','Contacted',NULL,'Facebook.com',NULL,'l_107'),(80,'House Wife','Dhaka','Brekkho limited company','100000',NULL,'Bangladesh',NULL,'nadia@gmail.com',NULL,'Nadia',NULL,NULL,'01677393661','Active','Public Relations','Dhaka','Contacted',NULL,'Facebook.com',NULL,'l_108');
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
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
