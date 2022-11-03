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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('63o64yka9ewa0s31nv8afec6gxllvzek','.eJxVjMsOwiAQRf-FtSE8hXHp3m8gAwNSNZCUdmX8d9ukC92ec-59s4DrUsM68hwmYhcm2emXRUzP3HZBD2z3zlNvyzxFvif8sIPfOuXX9Wj_DiqOuq1NJuPBJQXK6CKKiMpns1GSgNqeBdooXSouRyreK6us1h60SMlBAWSfL9w7N7c:1oRFJg:4TMpoOHxu50p-kKfk6qEC-hrGViMWymxv49Tdwci8hc','2022-09-08 16:02:48.339045'),('9zesrpciac7grpcq2ajwpjywl0durydl','.eJxVjEEOwiAQRe_C2hCGDgVcuu8ZmoFBqRpISrsy3l1JutDVT_57eS8x077leW9pnRcWZwHi9PsFio9UOuA7lVuVsZZtXYLsijxok1Pl9Lwc7l8gU8s9ixQMgFOKtfMpcMLR0MjRk72q7wIMxhscnAk2IoNRoDV4jYoxkRXvD84FNvw:1oOPpP:oZFP_jaLxsuMWNXNjqR0KCgmOgqbFyC7iusDuZhHRQM','2022-08-31 20:39:51.171219'),('fi14z99kcpfxdprswkd1kgyglg4ib2iq','.eJxVjEEOwiAQRe_C2pAZKCAu3fcMhGFAqoYmpV0Z765NutDtf-_9lwhxW2vYel7CxOIiUJx-N4rpkdsO-B7bbZZpbusykdwVedAux5nz83q4fwc19vqtlSWIOepC2gKSdtYRGs9YzABZaRzAm3I21oPjnAp7xQSATvmE1lnx_gDOqTcI:1oULP5:01CUTgvsy1XBlWP1hTOY-KTlGfYz4bclr_V-sIBlZZ0','2022-09-17 05:09:11.038387'),('noteuh4uguntk4grm49j7d2h013pklka','.eJxVjMEOwiAQRP-FsyG7hVLq0bvfQBYWpGogKe3J-O9K0oPeJvPezEs42rfs9hZXt7A4CxSn385TeMTSAd-p3KoMtWzr4mVX5EGbvFaOz8vh_h1kavm7BpviTCYAKwRDwFbPOqQ0KphYKRO5JxM16ZHIcEI9QGI14eAB0Yr3B9vVN1o:1oREKi:TA2EOdNaVugctWnWN_xNrVniHF6mOvwC6js1EmCVoTc','2022-09-08 14:59:48.878196');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 14:03:37
