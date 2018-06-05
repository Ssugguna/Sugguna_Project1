-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: websystique
-- ------------------------------------------------------
-- Server version	8.0.1-dmr-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `AGE` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SALARY` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_portal`
--

DROP TABLE IF EXISTS `job_portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_portal` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_applicant_name` varchar(255) DEFAULT NULL,
  `job_keywords` varchar(255) DEFAULT NULL,
  `job_locations` varchar(255) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `job_salary` varchar(255) DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_portal`
--

LOCK TABLES `job_portal` WRITE;
/*!40000 ALTER TABLE `job_portal` DISABLE KEYS */;
INSERT INTO `job_portal` VALUES (1,'karthik','java','hyd','Fullstack','22','permanent');
/*!40000 ALTER TABLE `job_portal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`skill_id`),
  KEY `FKp3xycw4dccnuptl9ghvfyjojb` (`user`),
  CONSTRAINT `FKp3xycw4dccnuptl9ghvfyjojb` FOREIGN KEY (`user`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'java',NULL),(2,'js',NULL),(3,'java',NULL),(4,'js',NULL),(5,'java',NULL),(6,'js',NULL),(7,'java',NULL),(8,'js',NULL),(9,'java',NULL),(10,'js',NULL),(11,'java',NULL),(12,'js',NULL),(13,'java',NULL),(14,'js',NULL),(15,'java',NULL),(16,'js',NULL),(17,'java',NULL),(18,'js',NULL),(19,'java',NULL),(20,'js',NULL),(21,'java',NULL),(22,'js',NULL),(23,'java',NULL),(24,'js',NULL),(25,'java',NULL),(26,'js',NULL),(27,'java',NULL),(28,'js',NULL),(29,'java',NULL),(30,'js',NULL),(31,'java',NULL),(32,'js',NULL),(33,'java',NULL),(34,'js',NULL),(35,'java',NULL),(36,'js',NULL),(37,'java',NULL),(38,'js',NULL),(39,'java',NULL),(40,'js',NULL),(41,'java',NULL),(42,'js',NULL),(43,'java',NULL),(44,'js',NULL),(45,'java',NULL),(46,'js',NULL),(47,'java',NULL),(48,'js',NULL),(49,'java',NULL),(50,'js',NULL);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ashish'),(2,'Ashish'),(3,'Ashish'),(4,'Ashish'),(5,'Ashish'),(6,'Ashish'),(7,'Ashish'),(8,'Ashish'),(9,'Ashish'),(10,'Ashish'),(11,'Ashish'),(12,'Ashish'),(13,'Ashish'),(14,'Ashish'),(15,'Ashish'),(16,'Ashish'),(17,'Ashish'),(18,'Ashish'),(19,'Ashish'),(20,'Ashish'),(21,'Ashish'),(22,'Ashish'),(23,'Ashish'),(24,'Ashish'),(25,'Ashish');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_skills`
--

DROP TABLE IF EXISTS `user_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_skills` (
  `user_user_id` int(11) NOT NULL,
  `skills` int(11) NOT NULL,
  UNIQUE KEY `UK_2fb6nu1tn71arj4d2k8c5uslf` (`skills`),
  KEY `FKiaw3w6ysslb7vfe7trlo8o6s2` (`user_user_id`),
  CONSTRAINT `FKf6iro2diu846r0lfhlnp7ww1n` FOREIGN KEY (`skills`) REFERENCES `skill` (`skill_id`),
  CONSTRAINT `FKiaw3w6ysslb7vfe7trlo8o6s2` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_skills`
--

LOCK TABLES `user_skills` WRITE;
/*!40000 ALTER TABLE `user_skills` DISABLE KEYS */;
INSERT INTO `user_skills` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8),(5,9),(5,10),(6,11),(6,12),(7,13),(7,14),(8,15),(8,16),(9,17),(9,18),(10,19),(10,20),(11,21),(11,22),(12,23),(12,24),(13,25),(13,26),(14,27),(14,28),(15,29),(15,30),(16,31),(16,32),(17,33),(17,34),(18,35),(18,36),(19,37),(19,38),(20,39),(20,40),(21,41),(21,42),(22,43),(22,44),(23,45),(23,46),(24,47),(24,48),(25,49),(25,50);
/*!40000 ALTER TABLE `user_skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-05 20:04:13
