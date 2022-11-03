CREATE DATABASE  IF NOT EXISTS `websitedata` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `websitedata`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: websitedata
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-08-17 20:44:36.305178','1','PijushDey',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(2,'2022-08-19 10:01:47.770960','2','wvwnvnw',3,'',4,1),(3,'2022-08-19 10:17:51.414591','3','ghhtgfufufjb',3,'',4,1),(4,'2022-08-19 19:12:21.603174','7','Aman',3,'',4,1),(5,'2022-08-19 19:35:08.769403','8','Aman48',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1),(6,'2022-08-19 20:38:23.976521','5','bwqbwqbk',3,'',4,1),(7,'2022-08-19 20:38:23.980640','11','fsfbahflahff',3,'',4,1),(8,'2022-08-19 20:38:23.983541','9','ofuougo',3,'',4,1),(9,'2022-08-20 06:39:54.889580','12','Sonu',3,'',4,1),(10,'2022-08-20 06:39:54.894184','14','trump',3,'',4,1),(11,'2022-08-20 06:39:54.896721','15','trump2',3,'',4,1),(12,'2022-08-20 15:03:17.618780','23','bfwnbsn',3,'',4,1),(13,'2022-08-20 15:03:17.629031','25','dafbabfaf',3,'',4,1),(14,'2022-08-20 15:03:17.632983','18','dbvdbvdbv',3,'',4,1),(15,'2022-08-20 15:03:17.634732','20','dvbdavbkdav',3,'',4,1),(16,'2022-08-20 15:03:17.637269','21','fddandgnds',3,'',4,1),(17,'2022-08-20 15:03:17.638860','19','fheqgfqgf',3,'',4,1),(18,'2022-08-20 15:03:17.642724','16','gihgfsfsh',3,'',4,1),(19,'2022-08-20 15:03:17.644248','17','maa4',3,'',4,1),(20,'2022-08-20 15:03:17.647038','24','qhfdahfha',3,'',4,1),(21,'2022-08-20 15:03:17.649658','22','wvdwkvdwv',3,'',4,1),(22,'2022-08-20 20:34:09.379666','1','StudentInfo object (1)',3,'',7,1),(23,'2022-08-20 20:38:29.660632','10','Justin',3,'',4,1),(24,'2022-08-20 20:38:29.663967','6','pika',3,'',4,1),(25,'2022-08-21 05:33:09.305064','3','StudentInfo object (3)',3,'',7,1),(26,'2022-08-21 05:33:09.319067','2','StudentInfo object (2)',3,'',7,1),(27,'2022-08-21 05:52:25.890694','1','TeachersInfo object (1)',1,'[{\"added\": {}}]',8,1),(28,'2022-08-21 05:53:07.562622','2','TeachersInfo object (2)',1,'[{\"added\": {}}]',8,1),(29,'2022-08-21 06:28:41.830774','3','TeachersInfo object (3)',1,'[{\"added\": {}}]',8,1),(30,'2022-08-21 09:03:16.723452','1','Pijush dey',1,'[{\"added\": {}}]',9,1),(31,'2022-08-21 09:06:56.615029','2','Samrat Barari',1,'[{\"added\": {}}]',9,1),(32,'2022-08-21 09:07:22.509141','3','Priyanaka Dey',1,'[{\"added\": {}}]',9,1),(33,'2022-08-21 09:07:45.163224','4','Rajdeep Banerjee',1,'[{\"added\": {}}]',9,1),(34,'2022-08-21 09:08:08.396615','5','Pooja Saha',1,'[{\"added\": {}}]',9,1),(35,'2022-08-21 09:08:39.944271','6','Ankita Basu',1,'[{\"added\": {}}]',9,1),(36,'2022-08-21 09:09:43.769807','7','Devid Arduino',1,'[{\"added\": {}}]',9,1),(37,'2022-08-21 09:13:48.843340','8','Joe Biden',1,'[{\"added\": {}}]',9,1),(38,'2022-08-21 21:57:58.520382','4','Rajdeep Banerjee',3,'',9,1),(39,'2022-08-21 21:57:58.547463','2','Samrat Barari',3,'',9,1),(40,'2022-08-21 21:57:58.562344','1','Pijush dey',3,'',9,1),(41,'2022-08-21 21:59:54.648598','9','Pijush Dey',1,'[{\"added\": {}}]',9,1),(42,'2022-08-21 22:00:33.931393','10','Samrat Barari',1,'[{\"added\": {}}]',9,1),(43,'2022-08-21 22:01:02.752290','11','Rajdeep Banerjee',1,'[{\"added\": {}}]',9,1),(44,'2022-08-22 00:26:01.381153','9','Pijush Dey',2,'[{\"changed\": {\"fields\": [\"LinkedInLink\"]}}]',9,1),(45,'2022-08-22 12:38:48.205707','1','Programming with C',1,'[{\"added\": {}}]',11,1),(46,'2022-08-22 12:39:00.327324','2','Core JAVA',1,'[{\"added\": {}}]',11,1),(47,'2022-08-22 12:39:12.873581','3','Testing',1,'[{\"added\": {}}]',11,1),(48,'2022-08-22 12:39:58.683092','4','Web Development using (Django)',1,'[{\"added\": {}}]',11,1),(49,'2022-08-22 12:40:23.273879','5','Digital Marketing',1,'[{\"added\": {}}]',11,1),(50,'2022-08-22 12:40:33.841029','6','Ethical Hacking',1,'[{\"added\": {}}]',11,1),(51,'2022-08-22 14:03:04.043621','1','Core JAVA',1,'[{\"added\": {}}]',10,1),(52,'2022-08-22 14:06:52.054988','2','Programming with C',1,'[{\"added\": {}}]',10,1),(53,'2022-08-22 14:09:52.714882','3','Web Development using (Django)',1,'[{\"added\": {}}]',10,1),(54,'2022-08-22 14:11:28.795831','4','Ethical Hacking',1,'[{\"added\": {}}]',10,1),(55,'2022-08-22 14:16:21.227263','5','Android Development',1,'[{\"added\": {}}]',10,1),(56,'2022-08-22 14:16:54.960337','5','Digital Marketing',3,'',11,1),(57,'2022-08-22 14:17:12.799436','7','Android Development',1,'[{\"added\": {}}]',11,1),(58,'2022-08-22 14:17:48.359089','10','Samrat Barari',2,'[{\"changed\": {\"fields\": [\"LinkedInLink\"]}}]',9,1),(59,'2022-08-22 14:17:48.405094','10','Samrat Barari',2,'[]',9,1),(60,'2022-08-22 14:17:55.783241','11','Rajdeep Banerjee',2,'[{\"changed\": {\"fields\": [\"LinkedInLink\"]}}]',9,1),(61,'2022-08-22 14:18:02.736450','8','Joe Biden',2,'[{\"changed\": {\"fields\": [\"LinkedInLink\"]}}]',9,1),(62,'2022-08-22 14:18:10.011516','7','Devid Arduino',2,'[{\"changed\": {\"fields\": [\"LinkedInLink\"]}}]',9,1),(63,'2022-08-22 14:18:16.432419','6','Ankita Basu',2,'[{\"changed\": {\"fields\": [\"LinkedInLink\"]}}]',9,1),(64,'2022-08-22 14:18:23.172647','5','Pooja Saha',2,'[{\"changed\": {\"fields\": [\"LinkedInLink\"]}}]',9,1),(65,'2022-08-22 14:18:30.957973','3','Priyanaka Dey',2,'[{\"changed\": {\"fields\": [\"LinkedInLink\"]}}]',9,1),(66,'2022-08-22 14:25:14.923962','6','Testing',1,'[{\"added\": {}}]',10,1),(67,'2022-08-22 19:52:46.591765','7','Android Development',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(68,'2022-08-22 19:53:39.375641','6','Ethical Hacking',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(69,'2022-08-22 19:54:11.750216','4','Web Development using (Django)',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(70,'2022-08-22 19:55:00.189856','3','Testing',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(71,'2022-08-22 19:55:35.878757','2','Core JAVA',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(72,'2022-08-22 19:57:03.095159','1','Programming with C',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(73,'2022-08-22 20:04:21.651706','1','Programming with C',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(74,'2022-08-22 20:12:42.826111','2','Core JAVA',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(75,'2022-08-22 20:13:24.623767','3','Testing',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(76,'2022-08-22 20:14:26.453562','4','Web Development using (Django)',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(77,'2022-08-22 20:15:07.825104','6','Ethical Hacking',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(78,'2022-08-22 20:15:55.014039','7','Android Development',2,'[{\"changed\": {\"fields\": [\"Url\"]}}]',11,1),(79,'2022-08-23 16:55:18.741075','6','Testing',2,'[{\"changed\": {\"fields\": [\"Course content\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 14:03:36
