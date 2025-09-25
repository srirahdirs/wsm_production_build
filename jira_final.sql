CREATE DATABASE  IF NOT EXISTS `jira` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jira`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 139.59.58.172    Database: jira
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.10.1

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
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `validity` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `price` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Monthly','1month',1400,'2025-02-10 16:47:34','2025-02-11 18:12:07'),(2,'Yearly','1year',4999,'2025-02-10 16:47:34','2025-02-11 18:12:11'),(3,'Half-Yearly','6month',9999,'2025-02-11 18:11:17','2025-02-11 18:12:16');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `about` text COLLATE utf8mb4_general_ci,
  `gender` enum('Male','Female') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `height` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weight` varchar(55) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fathers_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mothers_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_general_ci,
  `job_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_experience` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `school` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `college` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mother_tongue` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `caste` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_caste` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gothram` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dosam` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `star` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `raasi` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `willing_to_marry_from_another_caste` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_2` (`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,1,'test','Male','Tamil Nadu','Coimbatore','1999-11-11',25,'5.10','80-85','Never Married','Vellingiri','saraswathy','1a Ground Floor Vasantham Nagar Mallaia Garden Backside Gate Of Lakshana Apartment ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tamil','Hindu','Gounder','Pooluvar','Senjerian','No','Revathi','Meenam',1,'2025-07-01 16:33:04','2025-09-16 21:00:15'),(8,4,NULL,'Male','Tamil Nadu','Coimbatore','1993-05-10',32,'5.10','80-85','Never Married','Rangasamy','Vasanthamani','1a Ground Floor Vasantham Nagar Mallaia Garden Backside Gate Of Lakshana Apartment ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hindu','Gounder',NULL,NULL,NULL,NULL,NULL,0,'2025-07-08 13:24:33','2025-07-08 13:24:42'),(10,6,'Bank Employee','Male','Tamil Nadu','Coimbatore','1993-05-24',32,'6','70-75','Never Married','Rangasamy','Vasanthamani','Sattakkalpudhur','Employee','DBS BANK PVT LTD','700000','8','BCOM CA',NULL,'KARPAGAM',NULL,NULL,NULL,NULL,NULL,NULL,'Tamil','Hindu','Gounder - Pooluva Gounder','Pooluva Gounder','Panikkam pattian','No','Revathi','Rishabam',1,'2025-09-06 17:56:29','2025-09-06 17:57:56'),(13,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Employee','Axis bank ','50 k',NULL,'MBA',NULL,NULL,NULL,NULL,'the_220_kidoo',NULL,NULL,NULL,'Tamil','Hindu','Gounder','Pooluva Gounder',NULL,NULL,'Bharani','Mesham',1,'2025-09-06 17:57:36','2025-09-06 17:58:55'),(26,9,NULL,'Female','Tamil Nadu','Coimbatore','2002-09-23',22,'5.2','40-45','Never Married','Balasubramaniam ','Seetha','Coimbatore ','Employee','Tcs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Suba_23',NULL,NULL,NULL,NULL,'Hindu','Gounder',NULL,NULL,NULL,NULL,NULL,0,'2025-09-06 18:07:40','2025-09-06 18:09:03'),(32,12,NULL,'Male','Tamil Nadu','Coimbatore','2002-08-23',23,'5.11','70-75','Never Married','Nataraj','Gomathi','2-217, vadavalli , velaan thottam , sulur -taluk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9952208813',NULL,NULL,NULL,NULL,NULL,NULL,'Hindu','Gounder',NULL,NULL,NULL,NULL,NULL,1,'2025-09-06 18:18:09','2025-09-06 18:18:35'),(35,14,'Ramesh','Male','Tamil Nadu','Coimbatore','2003-04-14',22,'5.10','50-55','Never Married','Sivraj','Angathal','Narasimmapuram',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hindu','Gounder - Pooluva Gounder',NULL,NULL,NULL,NULL,NULL,0,'2025-09-08 18:20:53','2025-09-08 18:21:13'),(37,15,NULL,'Male','Tamil Nadu','Coimbatore','2000-11-11',24,'5.11','75-80','Never Married','chinnasamy','chellamma','simmanaicken palayam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hindu','Gounder',NULL,NULL,NULL,NULL,NULL,0,'2025-09-08 18:36:39','2025-09-08 18:36:57'),(39,16,NULL,'Male','Tamil Nadu','Coimbatore','2000-05-07',25,'5.11','70-75','Never Married','Krishnan','Chithra','3/217 , poorandampalayam , cbe 641669',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6383704017',NULL,NULL,NULL,NULL,NULL,NULL,'Hindu','Gounder - Pooluva Gounder',NULL,NULL,NULL,NULL,NULL,1,'2025-09-12 08:07:28','2025-09-12 08:08:17'),(43,11,'My hobby is to ride bikes and cars and to listen musics\n','Female','Tamil Nadu','Coimbatore','2007-02-25',18,'5.2','40-45','Never Married','Rajkumar','Parimala','Vadavalli,velappanaickenpalayam sulur',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2025-09-12 08:10:07','2025-09-12 08:10:08'),(45,8,NULL,'Male','Tamil Nadu','Coimbatore','2003-03-15',22,'6','70-75','Never Married','Paramasivam','Pechiyammal','2/21 vadavalli , coimbatore sulur taluk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hindu','Gounder - Pooluva Gounder',NULL,NULL,NULL,NULL,NULL,1,'2025-09-12 08:41:21','2025-09-12 08:41:50'),(47,18,NULL,'Female','Tamil Nadu','Namakkal','1998-12-02',26,'5.3','70-75','Never Married','Nagarajan ','Indira ','11/117 Amman Kovil ','Employee','Tcs','90000','4 years ','Maste degree','Government school, vennandur ','Muthayammal college of arts and science ','9043048215','No','No','No','No','No','Tamil','Hindu','Mudaliyar','Kaikolar ','Shiva ','No','Bharani ','Mesam',1,'2025-09-16 08:30:51','2025-09-16 10:23:26'),(54,19,'looking for a genuine partner to share laughs, adventures, and life upgrades with.','Male','Tamil Nadu','Coimbatore','1999-08-24',26,'6.2','80-85','Never Married','Kuilsamy','Dhanalakshmi','kinathukadavu, coimbatore','Employee','BCITS','60000','3.8 years','BE ECE','Vikek vidyalaya matric hr sec school ','Sri Ramakrishan Institute of technology ','9994010250','NA','https://www.instagram.com/_guna24?igsh=b3Brc3pndTNsbnll','NA','NA','https://www.linkedin.com/in/gunasekaran-k-8777b6204','Tamil','Hindu','Gounder - Pooluva Gounder','NA','NA','NA','Thiruvonam','Magaram',1,'2025-09-17 10:29:16','2025-09-17 11:19:58');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_files`
--

DROP TABLE IF EXISTS `user_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `blurred_file_path` text COLLATE utf8mb4_general_ci,
  `profile_picture` tinyint DEFAULT '0',
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_files_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_files`
--

LOCK TABLES `user_files` WRITE;
/*!40000 ALTER TABLE `user_files` DISABLE KEYS */;
INSERT INTO `user_files` VALUES (16,4,'WhatsApp Image 2025-03-07 at 15.22.36_ozemooh.jpeg','uploads/premium/WhatsApp Image 2025-03-07 at 15.22.36_ozemooh.jpeg','uploads/blurred/blurred_WhatsApp Image 2025-03-07 at 15.22.36_ozemooh.jpeg',1,'2025-07-08 13:24:54'),(18,6,'WhatsApp Image 2025-03-07 at 15.22.36_ry8heo.jpeg','uploads/premium/WhatsApp Image 2025-03-07 at 15.22.36_ry8heo.jpeg','uploads/blurred/blurred_WhatsApp Image 2025-03-07 at 15.22.36_ry8heo.jpeg',1,'2025-09-06 17:58:14'),(19,9,'IMG-20241120-WA0009_melj8a.jpg','uploads/premium/IMG-20241120-WA0009_melj8a.jpg','uploads/blurred/blurred_IMG-20241120-WA0009_melj8a.jpg',1,'2025-09-06 18:11:10'),(24,14,'boy_dummy_ej6ga8.jpeg','uploads/premium/boy_dummy_ej6ga8.jpeg','uploads/blurred/blurred_boy_dummy_ej6ga8.jpeg',1,'2025-09-08 18:32:38'),(25,16,'26dfae5f-0591-4d82-a613-559a9bd695f3_5t4gbp4.jfif','uploads/premium/26dfae5f-0591-4d82-a613-559a9bd695f3_5t4gbp4.jfif','uploads/blurred/blurred_26dfae5f-0591-4d82-a613-559a9bd695f3_5t4gbp4.jfif',1,'2025-09-12 08:10:09'),(26,8,'b85cd04d-14b0-42d2-ac1d-55dda0a52f13_jv2vq9.jfif','uploads/premium/b85cd04d-14b0-42d2-ac1d-55dda0a52f13_jv2vq9.jfif','uploads/blurred/blurred_b85cd04d-14b0-42d2-ac1d-55dda0a52f13_jv2vq9.jfif',1,'2025-09-12 08:42:17'),(27,1,'weddingsoulmatesgrl_qbvyo8.jpg','uploads/premium/weddingsoulmatesgrl_qbvyo8.jpg','uploads/blurred/blurred_weddingsoulmatesgrl_qbvyo8.jpg',1,'2025-09-16 10:50:06'),(29,18,'IMG-20250916-WA0014_c2yd0n.jpg','uploads/premium/IMG-20250916-WA0014_c2yd0n.jpg','uploads/blurred/blurred_IMG-20250916-WA0014_c2yd0n.jpg',1,'2025-09-16 11:05:24'),(30,18,'IMG-20250916-WA0016_ois2e.jpg','uploads/premium/IMG-20250916-WA0016_ois2e.jpg','uploads/blurred/blurred_IMG-20250916-WA0016_ois2e.jpg',1,'2025-09-16 11:05:24'),(31,18,'IMG-20250916-WA0013_nwbfvi.jpg','uploads/premium/IMG-20250916-WA0013_nwbfvi.jpg','uploads/blurred/blurred_IMG-20250916-WA0013_nwbfvi.jpg',1,'2025-09-16 11:05:24'),(32,1,'boy_dummy_u05ha.jpeg','uploads/premium/boy_dummy_u05ha.jpeg','uploads/blurred/blurred_boy_dummy_u05ha.jpeg',1,'2025-09-17 04:02:11'),(33,19,'WhatsApp Image 2025-09-17 at 16.42.36_rq63km.jpeg','uploads/premium/WhatsApp Image 2025-09-17 at 16.42.36_rq63km.jpeg','uploads/blurred/blurred_WhatsApp Image 2025-09-17 at 16.42.36_rq63km.jpeg',1,'2025-09-17 11:12:52'),(34,12,'profile.af41c3ce4612895a2790_cyidbf.jpg','uploads/premium/profile.af41c3ce4612895a2790_cyidbf.jpg','uploads/blurred/blurred_profile.af41c3ce4612895a2790_cyidbf.jpg',1,'2025-09-17 11:58:47'),(35,12,'about.082803ad6a35fc7b01aa_hakmsc.jpg','uploads/premium/about.082803ad6a35fc7b01aa_hakmsc.jpg','uploads/blurred/blurred_about.082803ad6a35fc7b01aa_hakmsc.jpg',1,'2025-09-17 11:58:55');
/*!40000 ALTER TABLE `user_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_horoscopes`
--

DROP TABLE IF EXISTS `user_horoscopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_horoscopes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `horoscope_premium_path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `horoscope_blurred_path` text COLLATE utf8mb4_general_ci,
  `uploaded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_horoscopes`
--

LOCK TABLES `user_horoscopes` WRITE;
/*!40000 ALTER TABLE `user_horoscopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_horoscopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_interested_profiles`
--

DROP TABLE IF EXISTS `user_interested_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_interested_profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `partner_id` int NOT NULL,
  `requested_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Accepted','Rejected','Requested') COLLATE utf8mb4_general_ci DEFAULT 'Requested',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `partner_id` (`partner_id`),
  CONSTRAINT `user_interested_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_interested_profiles_ibfk_2` FOREIGN KEY (`partner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interested_profiles`
--

LOCK TABLES `user_interested_profiles` WRITE;
/*!40000 ALTER TABLE `user_interested_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_interested_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_orders`
--

DROP TABLE IF EXISTS `user_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_orders`
--

LOCK TABLES `user_orders` WRITE;
/*!40000 ALTER TABLE `user_orders` DISABLE KEYS */;
INSERT INTO `user_orders` VALUES (1,1,'a2ac5e51-fd16-4d0b-8720-f3f9310887e7','1499','NULL',NULL,NULL,'2025-07-08 13:15:40','2025-07-08 13:15:40'),(2,1,'d6522ed4-3a2a-4049-ae06-288948ca2f47','1499','UPI_QR','OM2507081850197211515336','COMPLETED','2025-07-08 13:20:17','2025-07-08 13:21:08'),(4,18,'c720c988-66f1-4cd0-a65a-67f0f1e2ff4c','1499','UPI_INTENT','OM2509161612061416078419','COMPLETED','2025-09-16 10:42:04','2025-09-16 10:42:52'),(5,19,'36ff05c1-8799-45c2-a153-52590f2ef152','1499','UPI_INTENT','OM2509171623122799129921','COMPLETED','2025-09-17 10:42:13','2025-09-17 10:53:38'),(6,12,'fd83bc5e-a92a-4b49-9a93-124accddfb25','1499','UPI_QR','OM2509171730347231820892','COMPLETED','2025-09-17 12:00:32','2025-09-17 12:01:05');
/*!40000 ALTER TABLE `user_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_partner_preferences`
--

DROP TABLE IF EXISTS `user_partner_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_partner_preferences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `monthly_income` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mother_tongue` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `caste` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_caste` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gothram` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dosam` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `star` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `raasi` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `physical_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `food_preferences` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alcohol_consumptions` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `smoking_preferences` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_partner_preferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_partner_preferences`
--

LOCK TABLES `user_partner_preferences` WRITE;
/*!40000 ALTER TABLE `user_partner_preferences` DISABLE KEYS */;
INSERT INTO `user_partner_preferences` VALUES (2,6,'Female','25 to 30','','','no_preference','no_preference','no_preference',NULL,'Hindu','Gounder - Pooluva Gounder','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'2025-09-06 17:58:59',NULL),(3,1,'Female','30 to 35','','','','','',NULL,'Hindu','no_preference','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'2025-09-06 18:18:17',NULL),(4,12,'Female','18 to 25','','','','','',NULL,'Hindu','no_preference','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'2025-09-06 18:23:46',NULL),(5,14,'Female','18 to 25','4\'8\" - 5\'0\"','50-60','no_preference','','',NULL,'Hindu','no_preference','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'2025-09-08 18:27:08',NULL),(6,15,'Female','18 to 25','4\'8\" - 5\'0\"','60-70','no_preference','','',NULL,'Hindu','no_preference','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'2025-09-08 18:37:29',NULL),(7,16,'Female','18 to 25','','','Never Married','','',NULL,'no_preference','no_preference','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'2025-09-12 08:11:39',NULL),(8,18,'Male','25 to 30','5\'5\" - 6\'0\"','60-70','no_preference','Business','1,00,000 - 1,50,000',NULL,'Hindu','no_preference','',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'2025-09-16 10:24:51',NULL),(9,19,'Female','18 to 25','5\'5\" - 6\'0\"','60-70','Never Married','no_preference','no_preference',NULL,'Hindu','no_preference','NA',NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,'2025-09-17 11:07:13','2025-09-18 06:18:23');
/*!40000 ALTER TABLE `user_partner_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plans`
--

DROP TABLE IF EXISTS `user_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_plans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `plan_price` int NOT NULL,
  `is_expired` tinyint DEFAULT '0',
  `expiry_date` timestamp NULL DEFAULT NULL,
  `status` varchar(55) COLLATE utf8mb4_general_ci DEFAULT 'initiated',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `plan_id` (`plan_price`),
  CONSTRAINT `user_plans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plans`
--

LOCK TABLES `user_plans` WRITE;
/*!40000 ALTER TABLE `user_plans` DISABLE KEYS */;
INSERT INTO `user_plans` VALUES (1,1,'d6522ed4-3a2a-4049-ae06-288948ca2f47','OM2507081850197211515336',10000,0,'2025-08-08 13:21:08','COMPLETED','2025-07-08 13:21:08',NULL),(2,4,'133c8b7a-1f57-4d59-80ff-d23334ef5ed0','OM2507081855074982069586',149900,0,'2025-08-08 13:25:12','FAILED','2025-07-08 13:25:12',NULL),(3,18,'c720c988-66f1-4cd0-a65a-67f0f1e2ff4c','OM2509161612061416078419',149900,0,'2025-10-16 10:42:52','COMPLETED','2025-09-16 10:42:52',NULL),(4,18,'c720c988-66f1-4cd0-a65a-67f0f1e2ff4c','OM2509161612061416078419',149900,0,'2025-10-16 10:43:31','COMPLETED','2025-09-16 10:43:31',NULL),(5,19,'36ff05c1-8799-45c2-a153-52590f2ef152','OM2509171623122799129921',149900,0,'2025-10-17 10:53:38','COMPLETED','2025-09-17 10:53:38',NULL),(6,12,'fd83bc5e-a92a-4b49-9a93-124accddfb25','OM2509171730347231820892',149900,0,'2025-10-17 12:01:05','COMPLETED','2025-09-17 12:01:05',NULL);
/*!40000 ALTER TABLE `user_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `premium_user` tinyint NOT NULL DEFAULT '0',
  `otp` int DEFAULT NULL,
  `is_verified` int DEFAULT '0',
  `mobile_number_visibility` tinyint DEFAULT '0',
  `photos_visibility` tinyint DEFAULT '0',
  `horoscope_visibility` tinyint DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resetPasswordToken` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `resetPasswordExpires` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'RaguRam','sri.rahdirs@gmail.com','9789253515',1,849114,1,1,1,1,'$2a$10$HWrcoeqWPO4TQpJOjf.KouAv1VdnJmxJ1f4QkfiXDRxoiYciYbdNG','2025-07-01 16:32:03',NULL,NULL),(4,'Ragu','sridharvmsccs@gmail.com','9003659239',1,751182,1,0,0,0,'$2a$10$YQLX.X5uaHKVBXpVuA7rdOayNXkO/r/zLJOQH1HYc0ZZ3O2PV25lK','2025-07-08 13:23:31',NULL,NULL),(6,'Prabhakaran','info2dream5.in@gmail.com','9688582241',0,431364,1,0,0,0,'$2a$10$w0yBA5jhHf25I093.hyZLuWrA4ClI8iEK8VH.jDy46RhrWQ9xNfsG','2025-09-06 17:52:22',NULL,NULL),(7,'Ranjith Kumar','ranjithkumarr3221@gmail.com','6374259282',0,265254,1,0,0,0,'$2a$10$mOe4us3j82X241ltBaOqoe15zgzHqBEjB2xAYvU8RUnTYa0LH7O5i','2025-09-06 17:55:32',NULL,NULL),(8,'DINESH PARAMASIVAM','DINESHSIVA842@GMAIL.COM','7810067803',0,265079,1,0,0,0,'$2a$10$yXn.Gfpuk5OU4HI85B2O0./lTwE.4xcyrTbqezpS.SJOQZJdQs1eC','2025-09-06 17:58:40',NULL,NULL),(9,'Suba','subaseetha23@gmail.com','9835685209',0,286862,1,0,0,0,'$2a$10$pwpK2/REOoD9g4fDz9q4Du4p6aVzuBjgVre/hmbjV8xYX1XEkNiMu','2025-09-06 18:00:41',NULL,NULL),(10,'Shruthika','shruthika84@gmail.com','9625804130',0,415141,0,0,0,0,'$2a$10$F/cQcZzgkqqJi/hN7nHypuHEDmYmae.t/MxO98q0b4mC4JJWjQfIu','2025-09-06 18:09:05',NULL,NULL),(11,'Shruthi','shruthirajkumar48@gmail.com','9942106425',0,719451,1,0,0,0,'$2a$10$xA499HTPGqtSHM5nmiJEJOdjBU/ciCvKAZ9rlTd03wE9uO5INOrgi','2025-09-06 18:11:27',NULL,NULL),(12,'SRISARAN N','srinataraj1521@gmail.com','9952208813',1,113930,1,0,0,0,'$2a$10$gcjEE3VG8baS7BXNrdoe8uasnS726XTkIhz/AiyHascWAU7Gy7GOW','2025-09-06 18:15:51',NULL,NULL),(13,'Suji','sujinataraj1521@gmail.com','8760059245',0,332026,1,0,0,0,'$2a$10$uIwApkCkAxHv51HQoHUdju5a6avwjbPeWL3t2PqrTYTN4cKcoPMKK','2025-09-07 06:46:29',NULL,NULL),(14,'Ramesh','wagef55427@dpwev.com','6381566734',0,692572,1,0,0,0,'$2a$10$rrsVwTh0b9ACLrU/lcEzqO8NKMxSmH8sLLY.49oaIx/.OBDOR2Dfe','2025-09-08 18:19:34',NULL,NULL),(15,'Suresh','yzt.entertain@gmail.com','9003659231',0,836947,1,0,0,0,'$2a$10$Oxpx.fukCbCu3StZx6PU/OKE/svhKASBH/nUteBwTbtNUTaZgNDmO','2025-09-08 18:35:24',NULL,NULL),(16,'Vallarasu','vallarasukrishnan2000@gmail.com','6383704017',0,609685,1,0,0,0,'$2a$10$Skfw7TdRkK1chWe5kYuTW.JD.H0tAMQKjjMyU8TLNHV./KZYEBTge','2025-09-12 08:03:09',NULL,NULL),(17,'Darshini.N ','darshini.natarajan@gmail.com','8807811279',0,764951,1,0,0,0,'$2a$10$kks9MH1YUQ/mcbnMjv2AQeOz7GWeXXiG.phoVZsOsdxdE2VUJ43KC','2025-09-12 08:28:32',NULL,NULL),(18,'Soundarya Nagarajan ','soundriya0213@gmail.com','9043048215',1,150711,1,0,0,0,'$2a$10$aStP5t1YPyi1c4DVlbIC2u/wLuAAz4FHh3dtTmL2ygeN8uzZrdhqq','2025-09-16 08:25:01',NULL,NULL),(19,'Guna','gunaharish24@gmail.com','9994010250',1,395644,1,0,0,0,'$2a$10$QNfHryfnu2BPniMexys2ROW0L1RmSJ2htx/yfVNBSvqMc3yu7o686','2025-09-17 03:10:27',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-25 22:56:44
