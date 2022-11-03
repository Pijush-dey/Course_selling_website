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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add student info',7,'add_studentinfo'),(26,'Can change student info',7,'change_studentinfo'),(27,'Can delete student info',7,'delete_studentinfo'),(28,'Can view student info',7,'view_studentinfo'),(29,'Can add teachers info',8,'add_teachersinfo'),(30,'Can change teachers info',8,'change_teachersinfo'),(31,'Can delete teachers info',8,'delete_teachersinfo'),(32,'Can view teachers info',8,'view_teachersinfo'),(33,'Can add teachers details',9,'add_teachersdetails'),(34,'Can change teachers details',9,'change_teachersdetails'),(35,'Can delete teachers details',9,'delete_teachersdetails'),(36,'Can view teachers details',9,'view_teachersdetails'),(37,'Can add courses details',10,'add_coursesdetails'),(38,'Can change courses details',10,'change_coursesdetails'),(39,'Can delete courses details',10,'delete_coursesdetails'),(40,'Can view courses details',10,'view_coursesdetails'),(41,'Can add courses varity',11,'add_coursesvarity'),(42,'Can change courses varity',11,'change_coursesvarity'),(43,'Can delete courses varity',11,'delete_coursesvarity'),(44,'Can view courses varity',11,'view_coursesvarity');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$TacHteVKqdTjDmvWdHPtsA$Oj/9U4Q5xoRT9wmEIpa97CCnY8wr/PVQgaWW46VUuhw=','2022-09-03 05:09:11.033041',1,'PijushDey','Pijush','Dey','pijushdey616@gmail.com',1,1,'2022-08-17 20:38:09.000000'),(4,'pbkdf2_sha256$320000$8xIGpkueDdk81O4UXr3MUn$7MZrsezuaOOW9lUsPQn/FybMWuRApCpyqetPSmPNIRg=',NULL,0,'SamratBarari','Samrat','Barari','biritani99@gmail.com',0,1,'2022-08-19 13:07:52.974564'),(8,'pbkdf2_sha256$320000$B1GMKg5YZEsY1p1bcP7xDX$NX1fD5ITy7rQiLrc3BZnGaQFa3h2t8wqONZJH/PwLU4=','2022-08-19 19:35:47.284124',1,'Aman48','Aman','Gosai','pijushdey6@gmail.com',1,1,'2022-08-19 19:13:29.000000'),(13,'pbkdf2_sha256$320000$HcEB4nu7FrpezDJEC5iHFf$UQC1KDmY+xKGLtvjxsPfxSXauiAtopLePpUPUUFvB8E=',NULL,0,'JoeBiden','Joe','Biden','pijushdey111@gmail.com',0,1,'2022-08-20 06:26:48.151200');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_coursesdetails`
--

DROP TABLE IF EXISTS `courses_coursesdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_coursesdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `course_duration` varchar(10) NOT NULL,
  `suitable_for` varchar(100) NOT NULL,
  `course_objective` longtext NOT NULL,
  `prerequisite` varchar(100) NOT NULL,
  `course_fee` varchar(35) NOT NULL,
  `course_content` longtext NOT NULL,
  `Fee_structure` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_coursesdetails`
--

LOCK TABLES `courses_coursesdetails` WRITE;
/*!40000 ALTER TABLE `courses_coursesdetails` DISABLE KEYS */;
INSERT INTO `courses_coursesdetails` VALUES (1,'Core JAVA','24 hrs','1st Yr / 2nd Yr / 3rd Yr / 4th Yr B.Tech. / Diploma / MCA / BCA students','Learn the syntax, semantics, and idioms of the Java programming language. Gain confidence in object-oriented programming principles through lots of practical exercises.','No experience is required. But fundamental knowledge of C/C++ would be helpful.','Rs. 2,950/- (including Taxes)','<ul>\r\n<li>OOP concepts &amp; Features</li>\r\n<li>OOP vs Structured Programming</li>\r\n<li>Features of Java</li>\r\n<li>Java Virtual Machine</li>\r\n<li>What are Classes?</li>\r\n<li>What are Objects?</li>\r\n<li>What are Methods?</li>\r\n<li>Variables and Operators &amp; Control Statements</li>\r\n<li>Arrays</li>\r\n<li>Types of Classes and their implementations</li>\r\n<li>Method Overloading</li>\r\n<li>Exception Handling</li>\r\n<li>Inheritance</li>\r\n<li>Static Variables and Methods</li>\r\n<li>A short introduction to packages</li>\r\n</ul>','Submit initial Registration fee (Rs. 1500/- only)through online by RAZORPAY or through cash at our office.'),(2,'Programming with C','21 hrs','1st Yr / 2nd Yr / 3rd Yr / 4th Yr B.Tech. / Diploma / MCA / BCA students','The main objective is to understand how to write programmes using C programming language, starting from scratch.','No experience is required.','Rs. 2,450/- (including Taxes)','<ul>\r\n<li>Introduction to C Language</li>\r\n<li>Different data types in C-language</li>\r\n<li>Different types of operators</li>\r\n<li>Control statements</li>\r\n<li>Loop statements</li>\r\n<li>Call by value and call by reference</li>\r\n<li>Introduction single dimension and multidimensional arrays</li>\r\n<li>Application of Arrays and Functions</li>\r\n<li>String manipulations</li>\r\n<li>Introduction to pointers and addresses</li>\r\n<li>Pointers and Function Arguments</li>\r\n<li>Pointers and Arrays</li>\r\n<li>Array of Pointers</li>\r\n<li>Pointers to pointers</li>\r\n<li>Introduction to Bit-wise operators</li>\r\n<li>Text file handling, Binary file handling</li>\r\n</ul>','Submit initial Registration fee (Rs. 1500/- only)through online by RAZORPAY or through cash at our office.'),(3,'Web Development using (Django)','25 hrs','1st Yr / 2nd Yr / 3rd Yr / 4th Yr B.Tech. / Diploma / MCA / BCA students','This course introduces the student to the Python language. Upon completion of this class, the student will be able to write non trivial Python programs dealing with a wide variety of subject matter domains.','No experience is required. But fundamental knowledge of Python would be helpful.','Rs. 2,950/- (including Taxes)','<ul>\r\n<li>Web Design using HTML5, CSS3 and Bootstrap</li>\r\n<li>Brief Introduction to Typescript</li>\r\n<li>Introduction to Angular(2+) and MVC Architecture</li>\r\n<li>Using Angular Components</li>\r\n<li>Using Angular Routing</li>\r\n<li>Angular Modularization and Lazy Loaded Routes</li>\r\n<li>Using Angular Directives</li>\r\n<li>Using Angular Services</li>\r\n<li>Communication between Components</li>\r\n<li>Using Angular Pipes</li>\r\n<li>Using Angular Http Module</li>\r\n<li>Building an Angular Project</li>\r\n<li>Introduction to NodeJS with express</li>\r\n<li>Using Global objects, Promises &amp; Callbacks in nodejs</li>\r\n<li>HTTP module in nodejs</li>\r\n<li>Basic routing concept</li>\r\n<li>Developing REST API</li>\r\n<li>Hosting NodeJS Api Server on Heroku</li>\r\n<li>Introduction to MongoDB</li>\r\n<li>Understanding Collections</li>\r\n<li>Understanding Documents</li>\r\n<li>Understanding Data models</li>\r\n<li>Understanding Data types</li>\r\n<li>CRUD Operations on MongoDB</li>\r\n<li>Install and configuration of MongoDB - Mongoose &amp; MongoClient</li>\r\n<li>Executing queries on MongoDB using through NodeJs</li>\r\n<li>Building full fledged full stack application using node, express, angular and mongodb</li>\r\n</ul>','Submit initial Registration fee (Rs. 1500/- only)through online by RAZORPAY or through cash at our office.'),(4,'Ethical Hacking','35 hrs','1st Yr / 2nd Yr / 3rd Yr / 4th Yr B.Tech. / Diploma / MCA / BCA students','Gain the ability to do ethical hacking and penetration testing by taking this course! Get answers from an experienced IT expert to every single question you have related to the learning you do in this course including installing Kali Linux, using VirtualBox, basics of Linux, Tor, Proxychains, VPN, cracking wifi, DoS attacks, known vulnerabilities, SQL injections, and more topics.','No experience is required. Basic Computer knowledge is enough.','Rs. 4,250/- (including Taxes)','<ul>\r\n<li>Introduction to Ethical Hacking &amp; Penetration Testing</li>\r\n<li>Overview of Cyber Law (Indian IT ACT)</li>\r\n<li>Ethical Hacking &amp; Penetration Testing LAB Setup</li>\r\n<li>Power of Trojan and Backdoor &amp; its Security</li>\r\n<li>Overview of Kali Tool</li>\r\n<li>Introduction to Metasploit in Kali</li>\r\n<li>Information Gathering- Active &amp; Passive</li>\r\n<li>Scanning and Enumeration</li>\r\n<li>System Hacking or Exploitation</li>\r\n<li>Post Exploitation</li>\r\n<li>Antivirus Bypass Techniques &amp; Clearing Tracks</li>\r\n<li>Buffer Overflow- Windows</li>\r\n<li>Social Engineering- Social Site Hacking and its Security</li>\r\n<li>Android Mobile Phone Security</li>\r\n<li>Web Application Hacking and its Security</li>\r\n<li>Wireless Security</li>\r\n</ul>','Submit initial Registration fee (Rs. 1500/- only)through online by RAZORPAY or through cash at our office.'),(5,'Android Development','35hrs','2nd Yr / 3rd Yr / 4th Yr B.Tech. / Diploma / MCA / BCA students','To understand the Android platform architecture, design, develop, debug, and deploy Android applications, use Android SDK\'ssimulator to test and debug applications, construct user interfaces with built-in views and layouts.','Understanding of JAVA programming is required.','Rs. 3,450/- (including Taxes)','<ul>\r\n<ul>\r\n<li>Module 1\r\n<ul>\r\n<li>Environment Setup</li>\r\n<li>Android Architecture overview</li>\r\n<li>Android Application Components Overview</li>\r\n<li>Android Studio Creation of Project and Project File Hierarchy Walk through</li>\r\n<li>Android Demo application for Beginners</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>Module 2\r\n<ul>\r\n<li>Working knowledge of JDK, JRE and JVM.</li>\r\n<li>Encapsulation</li>\r\n<li>Polymorphism</li>\r\n<li>Inheritance</li>\r\n<li>Abstraction</li>\r\n<li>Interfaces</li>\r\n<li>Packages</li>\r\n<li>Arrays</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>Module 3\r\n<ul>\r\n<li>Android Activity Life Cycle</li>\r\n<li>Android Activity and Layout coordination</li>\r\n<li>Activity Manipulation and going to other Activities</li>\r\n<li>Intent and Intent Filters</li>\r\n<li>Organizing Resources and Using Resources in Android Studio</li>\r\n<li>Fragment</li>\r\n<li>Fragment Life Cycle</li>\r\n<li>Activity and Fragment Interaction</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>Module 4\r\n<ul>\r\n<li>Android Layout</li>\r\n<li>Layout Types , Uses ,Attributes to be used</li>\r\n<li>Android UI Controls and their usages (Button,Textview,Listview ,DatePicker ,Timepicker ,Adapter those will all be covered inside this )</li>\r\n<li>Programmatically creating Layout components and Creating them from Layout</li>\r\n<li>Handling Android UI designer and setting Properties from there</li>\r\n<li>Event Handling</li>\r\n<li>Event Listeners and Handlers</li>\r\n<li>Defining Style and Theme attributes</li>\r\n<li>Adding String values</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>Module 5\r\n<ul>\r\n<li>JSON Parsing</li>\r\n<li>Sending SMS from Phone</li>\r\n<li>Accessing Phone Sensor</li>\r\n<li>Saving data on the device</li>\r\n<li>Push Notification</li>\r\n<li>Android UI Pattern(Action Bar ,App logo etc)</li>\r\n<li>Interacting with other apps like Google Maps</li>\r\n<li>Building App with Multimedia Contents&nbsp;</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul>\r\n<li>Module 6\r\n<ul>\r\n<li>Preparing app for publishing</li>\r\n<li>Supporting different devices</li>\r\n<li>Target and compatible APIs</li>\r\n<li>System permissions</li>\r\n<li>App icon</li>\r\n<li>Testing your application</li>\r\n<li>Signing your application</li>\r\n<li>Generating APK</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>','Submit initial Registration fee (Rs. 1500/- only)through online by RAZORPAY or through cash at our office.'),(6,'Testing','35hrs','2nd Yr / 3rd Yr / 4th Yr B.Tech. / Diploma / MCA / BCA students','To understand the Android platform architecture, design, develop, debug, and deploy Android applications, use Android SDK\'ssimulator to test and debug applications, construct user interfaces with built-in views and layouts.','Understanding of JAVA programming is required.','Free of cost','<ul>\r\n<li>Introduction to Embedded Systems</li>\r\n<li>Basic Electronic Concepts of Embedded Designing</li>\r\n<li>Introduction to NodeMCU</li>\r\n<li>Output Interfacing on NodeMCU\r\n<ul>\r\n<li>Practical : LED Interfacing with NodeMCU</li>\r\n<li>Practical : Interfacing a Buzzer with NodeMCU</li>\r\n</ul>\r\n</li>\r\n<li>Introduction to Pulse Width Modulation\r\n<ul>\r\n<li>Practical : Controlling brightness of a LED.</li>\r\n</ul>\r\n</li>\r\n<li>Digital Input Processing\r\n<ul>\r\n<li>Practical : Detecting Switch Inputs on NodeMCU Pin</li>\r\n</ul>\r\n</li>\r\n<li>Introduction to ADC and Serial Monitoring\r\n<ul>\r\n<li>Practical : InterfacingSensors in NodeMCU</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Introduction to PHP Basics</li>\r\n<li>Setting up a Server using PHP</li>\r\n<li>File Storage in PHP</li>\r\n<li>PHP WebServices Basics</li>\r\n<li>Connecting to Internet using NodeMCU\r\n<ul>\r\n<li>Practical : Making requests to the Webservices</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p style=\"text-align: left;\"><br /><em>Final Project :-</em></p>\r\n<ul>\r\n<li>Sending Data from NodeMCU to PHP and Plotting Graph Based on the data received on&nbsp;<strong>IoTPlug&nbsp;</strong>Platform</li>\r\n<li>Sending Data from Website to NodeMCU and Automating LEDs based on the Input</li>\r\n</ul>','Free of cost');
/*!40000 ALTER TABLE `courses_coursesdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_coursesvarity`
--

DROP TABLE IF EXISTS `courses_coursesvarity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_coursesvarity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_coursesvarity`
--

LOCK TABLES `courses_coursesvarity` WRITE;
/*!40000 ALTER TABLE `courses_coursesvarity` DISABLE KEYS */;
INSERT INTO `courses_coursesvarity` VALUES (1,'Programming with C','Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown ...','/Courses/Programming_with_C/'),(2,'Core JAVA','Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown ...','/Courses/Core_Java/'),(3,'Testing','Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown ...','/Courses/Testing/'),(4,'Web Development using (Django)','Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown ...','/Courses/Web_Development_using_Django/'),(6,'Ethical Hacking','Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown ...','/Courses/Ethical_Hacking/'),(7,'Android Development','Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown ...','/Courses/Android_Development/');
/*!40000 ALTER TABLE `courses_coursesvarity` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'Courses','coursesdetails'),(11,'Courses','coursesvarity'),(7,'FormData','studentinfo'),(6,'sessions','session'),(9,'TeacherInfo','teachersdetails'),(8,'Teachers','teachersinfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-08-17 18:38:38.498025'),(2,'auth','0001_initial','2022-08-17 18:38:39.137162'),(3,'admin','0001_initial','2022-08-17 18:38:39.302083'),(4,'admin','0002_logentry_remove_auto_add','2022-08-17 18:38:39.316557'),(5,'admin','0003_logentry_add_action_flag_choices','2022-08-17 18:38:39.331637'),(6,'contenttypes','0002_remove_content_type_name','2022-08-17 18:38:39.456623'),(7,'auth','0002_alter_permission_name_max_length','2022-08-17 18:38:39.540014'),(8,'auth','0003_alter_user_email_max_length','2022-08-17 18:38:39.572203'),(9,'auth','0004_alter_user_username_opts','2022-08-17 18:38:39.587205'),(10,'auth','0005_alter_user_last_login_null','2022-08-17 18:38:39.653524'),(11,'auth','0006_require_contenttypes_0002','2022-08-17 18:38:39.658076'),(12,'auth','0007_alter_validators_add_error_messages','2022-08-17 18:38:39.672075'),(13,'auth','0008_alter_user_username_max_length','2022-08-17 18:38:39.784457'),(14,'auth','0009_alter_user_last_name_max_length','2022-08-17 18:38:39.862581'),(15,'auth','0010_alter_group_name_max_length','2022-08-17 18:38:39.889873'),(16,'auth','0011_update_proxy_permissions','2022-08-17 18:38:39.905878'),(17,'auth','0012_alter_user_first_name_max_length','2022-08-17 18:38:39.976059'),(18,'sessions','0001_initial','2022-08-17 18:38:40.015817'),(19,'FormData','0001_initial','2022-08-20 20:30:28.698405'),(20,'Teachers','0001_initial','2022-08-21 05:48:15.802739'),(21,'TeacherInfo','0001_initial','2022-08-21 08:44:00.475214'),(22,'TeacherInfo','0002_teachersdetails_linkedinlink_and_more','2022-08-22 00:21:00.640355'),(23,'Courses','0001_initial','2022-08-22 12:29:52.115503'),(24,'Courses','0002_coursesdetails_fee_structure','2022-08-22 13:59:26.219308'),(25,'Courses','0003_coursesvarity_url','2022-08-22 19:44:38.305982'),(26,'Courses','0004_alter_coursesvarity_url','2022-08-22 19:51:28.906464');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `formdata_studentinfo`
--

DROP TABLE IF EXISTS `formdata_studentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formdata_studentinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formdata_studentinfo`
--

LOCK TABLES `formdata_studentinfo` WRITE;
/*!40000 ALTER TABLE `formdata_studentinfo` DISABLE KEYS */;
INSERT INTO `formdata_studentinfo` VALUES (4,'advabvl.av','vas.vavbvs','jbbjvasbjavsjbvs','pijushdey3674346@gmail.com','fgfgfgfg'),(5,'fbfkeqvfq','bkdhadvbkdvbj','vajbvbadkjvdabj','pijushdey34675436@gmail.com','etetetet'),(6,'Ramubaba','Subham','Dey','afqbbkb@gmail.com','xnxnxnxn'),(7,'SikharRoy','Sikhar','Roy','pijushdey30100@gmail.com','mnbvcxz90'),(8,'            ','               ','               ','test@gmail.com','Xyz1234%^');
/*!40000 ALTER TABLE `formdata_studentinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacherinfo_teachersdetails`
--

DROP TABLE IF EXISTS `teacherinfo_teachersdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacherinfo_teachersdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `linkedInLink` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherinfo_teachersdetails`
--

LOCK TABLES `teacherinfo_teachersdetails` WRITE;
/*!40000 ALTER TABLE `teacherinfo_teachersdetails` DISABLE KEYS */;
INSERT INTO `teacherinfo_teachersdetails` VALUES (3,'Priyanaka Dey','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,','images/Teacher_5.png','http://www.Google.com'),(5,'Pooja Saha','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,','images/Teacher_4.png','http://www.Google.com'),(6,'Ankita Basu','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,','images/Teacher_7.png','http://www.Google.com'),(7,'Devid Arduino','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,','images/Teacher_2.png','http://www.Google.com'),(8,'Joe Biden','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,','images/Joe_Biden.jpeg','http://www.Google.com'),(9,'Pijush Dey','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s','images/Teacher_3_uJe3kQY.png','http://www.Google.com'),(10,'Samrat Barari','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s','images/Teacher_6_EQUEz0w.png','http://www.Google.com'),(11,'Rajdeep Banerjee','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s','images/Teacher_1_yEl1WgO.png','http://www.Google.com');
/*!40000 ALTER TABLE `teacherinfo_teachersdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 13:55:34
