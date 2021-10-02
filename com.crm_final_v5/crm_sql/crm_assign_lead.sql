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
-- Table structure for table `assign_lead`
--

DROP TABLE IF EXISTS `assign_lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assign_lead` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area_served` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `business_num_of_employees` varchar(255) DEFAULT NULL,
  `business_website` varchar(255) DEFAULT NULL,
  `crm_city` varchar(255) DEFAULT NULL,
  `crm_country` varchar(255) DEFAULT NULL,
  `crm_email` varchar(255) DEFAULT NULL,
  `crm_fax` varchar(255) DEFAULT NULL,
  `crm_first_name` varchar(255) DEFAULT NULL,
  `crm_id` varchar(255) DEFAULT NULL,
  `crm_last_name` varchar(255) DEFAULT NULL,
  `crm_mobile` varchar(255) DEFAULT NULL,
  `crm_state` varchar(255) DEFAULT NULL,
  `crm_street` varchar(255) DEFAULT NULL,
  `crm_website` varchar(255) DEFAULT NULL,
  `crm_zip_code` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `founded` varchar(255) DEFAULT NULL,
  `founder` varchar(255) DEFAULT NULL,
  `headquarter` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `isin` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `key_people` varchar(255) DEFAULT NULL,
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
  `profile` varchar(255) DEFAULT NULL,
  `revenue` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `services` varchar(255) DEFAULT NULL,
  `traded_as` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign_lead`
--

LOCK TABLES `assign_lead` WRITE;
/*!40000 ALTER TABLE `assign_lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `assign_lead` ENABLE KEYS */;
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
