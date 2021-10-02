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
-- Table structure for table `corporate_house`
--

DROP TABLE IF EXISTS `corporate_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corporate_house` (
  `id` int NOT NULL AUTO_INCREMENT,
  `backup_contact` varchar(255) DEFAULT NULL,
  `backup_contact_email` varchar(255) DEFAULT NULL,
  `backup_contact_job_title` varchar(255) DEFAULT NULL,
  `backup_contact_mobile` varchar(255) DEFAULT NULL,
  `contact_city` varchar(255) DEFAULT NULL,
  `contact_country` varchar(255) DEFAULT NULL,
  `contact_department` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_fax` varchar(255) DEFAULT NULL,
  `contact_job_title` varchar(255) DEFAULT NULL,
  `contact_mobile` varchar(255) DEFAULT NULL,
  `contact_state` varchar(255) DEFAULT NULL,
  `contact_street` varchar(255) DEFAULT NULL,
  `contact_website` varchar(255) DEFAULT NULL,
  `contact_zip_code` varchar(255) DEFAULT NULL,
  `corporate_house_city` varchar(255) DEFAULT NULL,
  `corporate_house_contact` varchar(255) DEFAULT NULL,
  `corporate_house_country` varchar(255) DEFAULT NULL,
  `corporate_house_description` varchar(255) DEFAULT NULL,
  `corporate_houseisin` varchar(255) DEFAULT NULL,
  `corporate_house_id` varchar(255) DEFAULT NULL,
  `corporate_house_industry` varchar(255) DEFAULT NULL,
  `corporate_house_name` varchar(255) DEFAULT NULL,
  `corporate_house_num_of_emp` varchar(255) DEFAULT NULL,
  `corporate_house_revenue` varchar(255) DEFAULT NULL,
  `corporate_house_services` varchar(255) DEFAULT NULL,
  `corporate_house_state` varchar(255) DEFAULT NULL,
  `corporate_house_street` varchar(255) DEFAULT NULL,
  `corporate_house_traded_as` varchar(255) DEFAULT NULL,
  `corporate_house_type` varchar(255) DEFAULT NULL,
  `corporate_house_zip_code` varchar(255) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporate_house`
--

LOCK TABLES `corporate_house` WRITE;
/*!40000 ALTER TABLE `corporate_house` DISABLE KEYS */;
/*!40000 ALTER TABLE `corporate_house` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-19 12:10:34
