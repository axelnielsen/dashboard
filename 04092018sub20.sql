-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: dashboard_development
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2018-05-26 01:38:06','2018-05-26 01:38:06');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `athletes`
--

DROP TABLE IF EXISTS `athletes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `athletes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `names` varchar(255) DEFAULT NULL,
  `surnames` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `birthyear` int(11) DEFAULT NULL,
  `rut` varchar(255) DEFAULT NULL,
  `idClub` int(11) DEFAULT NULL,
  `idRegion` int(11) DEFAULT NULL,
  `cellPhone` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `idCoach` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletes`
--

LOCK TABLES `athletes` WRITE;
/*!40000 ALTER TABLE `athletes` DISABLE KEYS */;
INSERT INTO `athletes` VALUES (1,'Javiera','González Araya','Femenino','2018-08-29',1993,'1',NULL,10,'22','comisiontecnica@fedachi.cl',19001,'1.62','50','2018-08-29 20:58:22','2018-08-29 20:58:22');
/*!40000 ALTER TABLE `athletes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `athleteseries`
--

DROP TABLE IF EXISTS `athleteseries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `athleteseries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idSerie` int(11) DEFAULT NULL,
  `idAthlete` int(11) DEFAULT NULL,
  `idStatus` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athleteseries`
--

LOCK TABLES `athleteseries` WRITE;
/*!40000 ALTER TABLE `athleteseries` DISABLE KEYS */;
/*!40000 ALTER TABLE `athleteseries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'FINAL','2018-05-26 01:51:53','2018-05-26 01:51:53'),(2,'SERIES','2018-05-26 01:52:05','2018-05-26 01:52:05'),(3,'SERIES C / TIEMPO','2018-05-26 01:52:42','2018-08-29 03:02:42'),(4,'HEXATLÓN','2018-05-26 01:53:20','2018-05-26 01:53:20'),(5,'DAMAS','2018-05-26 01:53:46','2018-05-26 01:53:46'),(6,'VARONES','2018-05-26 01:53:58','2018-05-26 01:53:58'),(7,'SEMIFINAL','2018-08-03 17:39:58','2018-08-03 17:39:58'),(8,'ATLETAS ESPECIALES - FINAL','2018-08-03 17:54:44','2018-08-03 17:54:44'),(9,'PENTATLÓN','2018-08-03 18:06:49','2018-08-03 18:06:49'),(10,'HEPTATLÓN','2018-08-29 03:03:02','2018-08-29 03:03:02'),(11,'DECATLÓN','2018-08-29 04:19:34','2018-08-29 04:19:34'),(12,'FINAL C / TIEMPO','2018-09-01 05:37:51','2018-09-01 05:37:51');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `championships`
--

DROP TABLE IF EXISTS `championships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `championships` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `initdate` datetime DEFAULT NULL,
  `findate` datetime DEFAULT NULL,
  `idRegion` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `championships`
--

LOCK TABLES `championships` WRITE;
/*!40000 ALTER TABLE `championships` DISABLE KEYS */;
INSERT INTO `championships` VALUES (1,'CAMPEONATO NACIONAL DE ATLETISMO CATEGORÍA “CADETES” - 2018','2018-05-26 09:00:00','2018-05-27 13:30:00',NULL,'','2018-05-26 01:40:45','2018-08-09 01:22:03'),(2,'CAMPEONATO REGIONAL DE ATLETISMO SUB 14','2018-08-04 10:00:00','2018-08-05 17:00:00',13,'','2018-08-03 17:22:31','2018-08-03 17:22:31'),(3,'XVIII CAMPEONATO IBEROAMERICANO DE ATLETISMO 2018','2018-08-24 13:35:00','2018-08-26 12:30:00',1,'PERÚ','2018-08-23 18:29:07','2018-08-23 18:29:07'),(4,'CAMPEONATO NACIONAL DE ATLETISMO SUB-20 Y SELECTIVO SUB-23','2018-09-01 09:00:00','2018-09-02 13:30:00',13,'Estadio Atlético Mario Recordón, Estadio Nacional, Santiago de Chile. ','2018-08-29 02:48:03','2018-08-29 20:26:23');
/*!40000 ALTER TABLE `championships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coaches` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `names` varchar(255) DEFAULT NULL,
  `surnames` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `rut` varchar(255) DEFAULT NULL,
  `cellPhone` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,'Matías Eduardo','Pérez De Arce Yáñez','Masculino','2013-12-03','18.239.443-2','','mperezdearce@fedachi.cl','2018-08-29 20:51:51','2018-08-29 20:51:51');
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competition_types`
--

DROP TABLE IF EXISTS `competition_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competition_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competition_types`
--

LOCK TABLES `competition_types` WRITE;
/*!40000 ALTER TABLE `competition_types` DISABLE KEYS */;
INSERT INTO `competition_types` VALUES (1,'Pista','2018-08-01 02:44:41','2018-08-01 02:44:41'),(2,'Salto','2018-08-01 02:45:15','2018-08-01 02:45:15'),(3,'Lanzamiento','2018-08-01 02:45:24','2018-08-01 02:45:24'),(4,'Salto Largo','2018-08-01 04:00:26','2018-08-04 21:07:39');
/*!40000 ALTER TABLE `competition_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hour` time DEFAULT NULL,
  `sport_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `sex_id` bigint(20) DEFAULT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `competition_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_competitions_on_sport_id` (`sport_id`),
  KEY `index_competitions_on_category_id` (`category_id`),
  KEY `index_competitions_on_sex_id` (`sex_id`),
  KEY `index_competitions_on_stage_id` (`stage_id`),
  KEY `index_competitions_on_competition_type_id` (`competition_type_id`),
  CONSTRAINT `fk_rails_5dec997a9b` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`),
  CONSTRAINT `fk_rails_5f3d5f7b4b` FOREIGN KEY (`sex_id`) REFERENCES `sexes` (`id`),
  CONSTRAINT `fk_rails_7d241a1452` FOREIGN KEY (`competition_type_id`) REFERENCES `competition_types` (`id`),
  CONSTRAINT `fk_rails_95e3d91d40` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`),
  CONSTRAINT `fk_rails_ff95397b69` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (1,'09:00:00',5,4,1,1,'2018-05-26 02:11:01','2018-05-26 02:11:01',1),(2,'09:10:00',1,4,2,1,'2018-05-26 02:13:31','2018-05-26 02:13:31',1),(3,'09:20:00',17,1,1,1,'2018-05-26 02:24:04','2018-05-26 02:24:04',1),(4,'09:40:00',8,4,1,1,'2018-05-26 02:24:45','2018-05-26 02:24:45',4),(5,'09:45:00',18,1,2,1,'2018-05-26 02:27:32','2018-05-26 02:27:32',1),(6,'09:55:00',19,1,2,1,'2018-05-26 02:28:19','2018-05-26 02:28:19',1),(7,'10:00:00',1,2,1,1,'2018-05-26 02:29:38','2018-05-26 02:29:38',1),(8,'10:00:00',20,1,1,1,'2018-05-26 02:32:03','2018-05-26 02:32:03',3),(9,'10:00:00',3,4,2,1,'2018-05-26 02:32:54','2018-05-26 02:32:54',2),(10,'10:00:00',2,1,1,1,'2018-05-26 02:34:12','2018-05-26 02:34:12',4),(11,'10:50:00',6,4,2,1,'2018-05-26 02:34:58','2018-05-26 02:34:58',3),(12,'11:00:00',1,2,2,1,'2018-05-26 02:36:09','2018-05-26 02:36:09',1),(13,'11:20:00',6,4,1,1,'2018-05-26 02:36:44','2018-05-26 02:36:44',3),(14,'11:30:00',20,1,2,1,'2018-05-26 02:37:20','2018-05-26 02:37:20',3),(15,'12:00:00',21,1,1,1,'2018-05-26 02:38:29','2018-05-26 02:38:29',1),(16,'12:20:00',21,1,2,1,'2018-05-26 02:39:02','2018-05-26 02:39:02',1),(17,'14:00:00',1,1,1,2,'2018-05-26 02:43:13','2018-05-26 02:43:13',1),(18,'14:00:00',2,1,2,2,'2018-05-26 02:45:03','2018-05-26 02:45:03',4),(19,'14:00:00',3,1,1,2,'2018-05-26 02:46:40','2018-05-26 02:46:40',2),(20,'14:00:00',4,1,2,2,'2018-05-26 02:47:11','2018-05-26 02:47:11',3),(21,'14:10:00',1,1,2,2,'2018-05-26 02:48:26','2018-05-26 02:48:26',1),(22,'14:20:00',5,2,1,2,'2018-05-26 02:49:04','2018-05-26 02:49:04',1),(23,'14:30:00',6,1,1,2,'2018-05-26 02:49:55','2018-05-26 02:49:55',3),(24,'14:50:00',5,2,2,2,'2018-05-26 02:50:21','2018-05-26 02:50:21',1),(25,'15:20:00',7,3,1,2,'2018-05-26 02:51:28','2018-05-26 02:51:28',1),(26,'15:30:00',4,1,1,2,'2018-05-26 02:52:15','2018-05-26 02:52:15',3),(27,'15:45:00',3,1,2,2,'2018-05-26 02:53:12','2018-05-26 02:53:12',2),(28,'15:50:00',7,3,2,2,'2018-05-26 02:53:47','2018-05-26 02:53:47',1),(29,'16:00:00',6,1,2,2,'2018-05-26 02:55:30','2018-05-26 02:55:30',3),(30,'16:30:00',5,1,1,2,'2018-05-26 02:56:10','2018-05-26 02:56:10',1),(31,'16:40:00',5,1,2,2,'2018-05-26 02:57:37','2018-05-26 02:57:37',1),(32,'17:00:00',9,1,1,2,'2018-05-26 02:59:00','2018-05-26 02:59:00',3),(33,'17:00:00',10,3,1,2,'2018-05-26 03:00:56','2018-05-26 03:00:56',1),(34,'17:20:00',10,3,2,2,'2018-05-26 03:01:33','2018-05-26 03:01:33',1),(35,'17:40:00',11,1,1,2,'2018-05-26 03:02:14','2018-05-26 03:02:14',1),(36,'17:50:00',11,1,2,2,'2018-05-26 03:02:57','2018-05-26 03:02:57',1),(37,'09:00:00',5,4,2,3,'2018-05-26 03:04:56','2018-05-26 03:04:56',1),(38,'09:10:00',12,1,2,3,'2018-05-26 03:05:38','2018-05-26 03:05:38',1),(39,'10:00:00',13,1,2,3,'2018-05-26 03:06:17','2018-05-26 03:06:17',2),(40,'10:20:00',8,4,2,3,'2018-05-26 03:08:15','2018-05-26 03:08:15',4),(41,'10:30:00',9,1,2,3,'2018-05-26 03:09:29','2018-05-26 03:09:29',3),(42,'10:30:00',14,3,1,3,'2018-05-26 03:10:15','2018-05-26 03:10:15',1),(43,'11:00:00',8,1,2,3,'2018-05-26 03:10:55','2018-05-26 03:10:55',4),(44,'11:00:00',3,4,1,3,'2018-05-26 03:12:07','2018-05-26 03:12:07',2),(45,'11:00:00',14,3,2,3,'2018-05-26 03:12:53','2018-05-26 03:12:53',1),(46,'12:00:00',13,1,1,3,'2018-05-26 03:13:26','2018-05-26 03:13:26',2),(47,'12:00:00',4,4,1,3,'2018-05-26 03:14:00','2018-05-26 03:14:00',3),(48,'12:30:00',4,4,2,3,'2018-05-26 03:15:28','2018-05-26 03:15:28',3),(49,'12:30:00',15,1,1,3,'2018-05-26 03:16:41','2018-05-27 16:59:35',1),(50,'12:45:00',15,1,2,3,'2018-05-26 03:18:13','2018-05-26 03:18:13',1),(51,'13:00:00',22,4,1,3,'2018-05-26 03:20:41','2018-05-26 03:20:41',1),(52,'13:10:00',16,5,1,3,'2018-05-26 03:21:25','2018-05-26 03:21:25',1),(53,'13:20:00',16,6,2,3,'2018-05-26 03:22:03','2018-05-26 03:22:03',1),(54,'15:45:00',8,1,1,2,'2018-05-27 13:21:27','2018-05-27 13:21:27',4),(55,'10:00:00',17,1,1,4,'2018-08-03 17:30:27','2018-08-03 17:31:16',1),(56,'10:15:00',3,1,1,4,'2018-08-03 17:32:31','2018-08-03 17:32:31',2),(57,'10:15:00',20,1,1,4,'2018-08-03 17:33:37','2018-08-03 17:33:37',3),(58,'10:15:00',5,4,2,4,'2018-08-03 17:34:54','2018-08-03 17:37:32',1),(59,'10:35:00',6,1,2,4,'2018-08-03 17:38:40','2018-08-03 17:38:40',3),(60,'10:35:00',5,7,2,4,'2018-08-03 17:40:39','2018-08-03 17:40:39',1),(61,'11:00:00',3,4,2,4,'2018-08-03 17:41:28','2018-08-03 17:41:28',2),(62,'11:00:00',23,7,1,4,'2018-08-03 17:45:25','2018-08-03 17:45:25',1),(63,'11:20:00',8,1,2,4,'2018-08-03 17:46:47','2018-08-03 17:46:47',4),(64,'11:20:00',4,1,1,4,'2018-08-03 17:47:55','2018-08-03 17:47:55',3),(65,'11:20:00',24,7,1,4,'2018-08-03 17:50:21','2018-08-03 17:50:21',1),(66,'11:40:00',24,7,2,4,'2018-08-03 17:52:48','2018-08-03 17:52:48',1),(67,'11:45:00',2,1,1,4,'2018-08-03 17:54:06','2018-08-03 17:54:06',4),(68,'12:00:00',24,8,1,4,'2018-08-03 17:55:28','2018-08-03 17:55:28',1),(69,'12:15:00',6,4,2,4,'2018-08-03 17:56:14','2018-08-03 17:56:14',3),(70,'12:15:00',24,8,2,4,'2018-08-03 17:57:02','2018-08-03 17:57:02',1),(71,'12:20:00',4,1,2,4,'2018-08-03 17:57:31','2018-08-03 17:57:31',3),(72,'12:40:00',24,1,1,4,'2018-08-03 17:58:20','2018-08-03 17:58:20',1),(73,'12:50:00',24,1,2,4,'2018-08-03 17:59:03','2018-08-03 17:59:03',1),(74,'10:00:00',12,1,2,5,'2018-08-03 18:01:25','2018-08-03 18:01:25',1),(75,'10:00:00',20,1,2,5,'2018-08-03 18:02:20','2018-08-03 18:02:20',3),(76,'10:15:00',8,4,2,5,'2018-08-03 18:03:01','2018-08-03 18:03:01',4),(77,'10:15:00',6,1,1,5,'2018-08-03 18:04:06','2018-08-03 18:04:06',3),(78,'10:15:00',3,8,2,5,'2018-08-03 18:05:33','2018-08-03 18:05:33',2),(79,'10:40:00',23,9,1,5,'2018-08-03 18:07:26','2018-08-03 18:07:26',1),(80,'11:00:00',23,1,1,5,'2018-08-03 18:08:21','2018-08-03 18:08:21',1),(81,'11:10:00',5,1,2,5,'2018-08-03 18:44:16','2018-08-03 18:44:16',1),(82,'11:30:00',8,9,1,5,'2018-08-03 18:45:02','2018-08-03 18:45:02',4),(83,'11:30:00',25,7,1,5,'2018-08-03 18:46:33','2018-08-03 18:46:33',1),(84,'12:00:00',3,1,2,5,'2018-08-03 18:47:27','2018-08-03 18:47:27',2),(85,'12:00:00',4,4,2,5,'2018-08-03 18:48:04','2018-08-03 18:48:04',3),(86,'12:00:00',25,7,2,5,'2018-08-03 18:48:46','2018-08-03 18:49:07',1),(87,'12:30:00',26,1,1,5,'2018-08-03 18:51:20','2018-08-03 18:51:20',1),(88,'12:45:00',26,1,2,5,'2018-08-03 18:51:56','2018-08-03 18:51:56',1),(89,'12:45:00',6,9,1,5,'2018-08-03 18:52:39','2018-08-03 18:52:39',3),(90,'13:00:00',26,4,2,5,'2018-08-03 18:53:20','2018-08-03 18:53:20',1),(91,'15:00:00',27,1,2,6,'2018-08-03 18:55:00','2018-08-05 15:43:50',1),(92,'14:30:00',9,1,1,6,'2018-08-03 18:55:38','2018-08-03 18:55:38',3),(93,'14:30:00',6,8,1,6,'2018-08-03 18:56:41','2018-08-03 18:56:41',3),(94,'14:45:00',8,1,1,6,'2018-08-03 18:57:18','2018-08-03 18:57:18',4),(95,'15:20:00',27,1,1,6,'2018-08-03 18:58:12','2018-08-05 15:44:21',1),(96,'15:00:00',2,1,2,6,'2018-08-03 18:58:47','2018-08-03 18:58:47',4),(97,'15:00:00',3,9,1,6,'2018-08-03 19:00:18','2018-08-03 19:00:18',2),(98,'14:30:00',25,1,1,6,'2018-08-03 19:01:09','2018-08-05 15:44:56',1),(99,'14:40:00',25,1,2,6,'2018-08-03 19:01:43','2018-08-05 15:47:16',1),(100,'15:40:00',28,8,1,6,'2018-08-03 19:04:06','2018-08-03 19:04:06',1),(101,'15:50:00',9,1,2,6,'2018-08-03 19:04:48','2018-08-03 19:04:48',3),(102,'15:50:00',28,8,2,6,'2018-08-03 19:06:08','2018-08-03 19:06:08',1),(103,'15:50:00',3,8,1,6,'2018-08-03 19:07:12','2018-08-03 19:07:12',2),(104,'15:50:00',6,8,2,6,'2018-08-03 19:07:47','2018-08-03 19:07:47',3),(105,'16:00:00',29,9,1,6,'2018-08-03 19:09:09','2018-08-03 19:09:09',1),(106,'16:10:00',28,1,1,6,'2018-08-03 19:09:53','2018-08-03 19:09:53',1),(107,'16:20:00',28,1,2,6,'2018-08-03 19:10:26','2018-08-03 19:10:26',1),(109,'13:35:00',20,1,2,7,'2018-08-24 19:59:04','2018-08-24 19:59:04',3),(110,'14:39:00',30,2,2,7,'2018-08-24 20:05:12','2018-08-24 20:07:01',1),(111,'15:20:00',31,2,1,7,'2018-08-24 20:13:50','2018-08-24 20:13:50',1),(112,'15:30:00',9,1,1,7,'2018-08-24 20:15:22','2018-08-24 20:15:22',3),(113,'17:00:00',30,1,2,7,'2018-08-24 21:57:08','2018-08-24 21:57:08',1),(114,'09:10:00',32,1,2,9,'2018-08-24 23:57:07','2018-08-24 23:57:07',1),(115,'09:35:00',33,2,2,9,'2018-08-25 00:05:55','2018-08-25 00:05:55',1),(116,'10:25:00',34,1,2,9,'2018-08-25 00:13:34','2018-08-25 00:13:34',1),(117,'10:30:00',3,1,2,9,'2018-08-25 00:17:13','2018-08-25 00:17:13',4),(118,'10:35:00',31,1,1,9,'2018-08-25 00:25:12','2018-08-25 00:25:12',1),(120,'14:59:00',1,2,2,10,'2018-08-25 00:35:30','2018-08-25 00:35:30',1),(121,'15:10:00',4,1,2,10,'2018-08-25 00:39:00','2018-08-25 00:39:00',3),(122,'08:30:00',35,1,2,11,'2018-08-25 00:50:43','2018-08-25 00:50:43',1),(123,'09:30:00',6,1,1,11,'2018-08-25 00:56:17','2018-08-25 00:56:17',3),(124,'10:07:00',26,1,2,11,'2018-08-25 00:56:58','2018-08-25 00:56:58',1),(125,'12:10:00',36,1,1,11,'2018-08-25 01:00:45','2018-08-25 01:00:45',1),(126,'12:20:00',36,1,2,11,'2018-08-25 01:01:55','2018-08-25 01:01:55',1),(127,'10:35:00',33,1,2,11,'2018-08-25 04:12:22','2018-08-25 04:12:22',1),(128,'10:50:00',1,1,1,11,'2018-08-25 04:13:32','2018-08-25 04:13:32',1),(129,'10:57:00',1,1,2,11,'2018-08-25 04:13:56','2018-08-25 04:13:56',1),(130,'09:00:00',37,1,3,12,'2018-08-29 02:58:12','2018-08-29 03:51:19',1),(131,'09:00:00',38,10,1,12,'2018-08-29 03:57:23','2018-08-29 03:57:23',1),(132,'09:10:00',39,11,2,12,'2018-08-29 04:20:47','2018-08-29 04:20:47',1),(133,'09:45:00',8,10,1,12,'2018-08-29 04:22:33','2018-08-29 04:22:33',2),(134,'09:50:00',3,11,2,12,'2018-08-29 04:25:14','2018-08-29 04:25:14',4),(135,'10:00:00',9,1,1,12,'2018-08-29 04:26:06','2018-08-29 04:26:06',3),(136,'10:30:00',2,1,1,12,'2018-08-29 04:27:18','2018-08-29 04:27:18',2),(137,'10:30:00',40,1,1,12,'2018-08-29 04:31:54','2018-08-29 04:31:54',1),(138,'10:40:00',6,11,2,12,'2018-08-29 04:32:49','2018-08-29 04:32:49',3),(139,'11:10:00',31,2,1,12,'2018-08-29 04:33:56','2018-08-29 04:33:56',1),(140,'11:10:00',9,1,2,12,'2018-08-29 04:35:10','2018-08-29 04:35:10',3),(141,'11:20:00',6,10,1,12,'2018-08-29 04:36:55','2018-08-29 04:36:55',3),(142,'11:30:00',31,2,2,12,'2018-08-29 04:37:56','2018-08-29 04:37:56',1),(143,'11:30:00',8,11,2,12,'2018-08-29 04:38:42','2018-08-29 04:38:42',2),(144,'12:15:00',1,10,1,12,'2018-08-29 04:39:38','2018-08-29 04:39:38',1),(145,'13:00:00',31,11,2,12,'2018-08-29 04:40:39','2018-08-29 04:40:39',1),(146,'14:30:00',5,2,1,13,'2018-08-29 04:49:59','2018-08-29 04:49:59',1),(147,'14:30:00',4,1,1,13,'2018-08-29 04:51:35','2018-08-29 04:51:35',3),(148,'14:45:00',32,2,2,13,'2018-08-29 04:53:05','2018-08-29 04:53:05',1),(149,'14:45:00',3,1,2,13,'2018-08-29 04:54:59','2018-08-29 04:54:59',4),(150,'14:45:00',2,1,2,13,'2018-08-29 04:56:05','2018-08-29 04:56:05',2),(151,'15:00:00',30,2,1,13,'2018-08-29 04:58:11','2018-08-29 04:58:11',1),(152,'15:00:00',8,1,1,13,'2018-08-29 04:59:50','2018-08-29 04:59:50',2),(153,'15:20:00',30,2,2,13,'2018-08-29 05:01:08','2018-08-29 05:01:08',1),(154,'15:45:00',34,12,1,13,'2018-08-29 05:02:37','2018-09-01 05:38:32',1),(155,'15:55:00',34,12,2,13,'2018-08-29 05:04:42','2018-09-01 05:39:18',1),(156,'16:00:00',4,1,2,13,'2018-08-29 05:08:03','2018-08-29 05:08:03',3),(157,'16:15:00',6,1,1,13,'2018-08-29 05:08:41','2018-08-29 05:08:41',3),(158,'16:15:00',5,1,1,13,'2018-08-29 05:09:52','2018-08-29 05:09:52',1),(159,'16:15:00',3,1,1,13,'2018-08-29 05:10:32','2018-08-29 05:10:32',4),(160,'16:25:00',32,1,2,13,'2018-08-29 05:11:48','2018-08-29 05:11:48',1),(161,'16:35:00',30,1,1,13,'2018-08-29 05:12:43','2018-08-29 05:12:43',1),(162,'16:40:00',30,1,2,13,'2018-08-29 05:13:45','2018-08-29 05:13:45',1),(163,'16:50:00',31,1,1,13,'2018-08-29 05:14:55','2018-08-29 05:14:55',1),(164,'16:55:00',31,1,2,13,'2018-08-29 05:15:45','2018-08-29 05:15:45',1),(165,'17:05:00',40,1,2,13,'2018-08-29 05:16:45','2018-08-29 05:16:45',1),(166,'17:30:00',11,1,1,13,'2018-08-29 05:18:15','2018-08-29 05:18:15',1),(167,'17:40:00',11,1,2,13,'2018-08-29 05:18:54','2018-08-29 05:18:54',1),(168,'09:00:00',32,11,2,14,'2018-08-29 05:22:43','2018-08-29 05:22:43',1),(169,'09:10:00',41,1,2,14,'2018-08-29 05:24:15','2018-08-29 05:24:15',1),(170,'09:40:00',9,11,2,14,'2018-08-29 05:25:30','2018-08-29 05:25:30',3),(171,'09:40:00',3,10,1,14,'2018-08-29 05:27:01','2018-08-29 05:27:01',4),(172,'10:00:00',1,2,1,14,'2018-08-29 05:28:06','2018-08-29 05:28:06',1),(173,'10:15:00',1,2,2,14,'2018-08-29 05:28:46','2018-08-29 05:28:46',1),(174,'10:15:00',20,1,1,14,'2018-08-29 05:29:38','2018-08-29 05:29:38',3),(175,'10:30:00',2,11,2,14,'2018-08-29 05:30:20','2018-08-29 05:30:20',2),(176,'10:30:00',13,1,2,14,'2018-08-29 05:36:03','2018-08-29 05:36:03',2),(177,'10:30:00',6,1,2,14,'2018-08-29 05:37:17','2018-08-29 05:37:17',3),(178,'10:40:00',33,12,1,14,'2018-08-29 05:38:26','2018-09-01 05:40:34',1),(179,'10:40:00',4,10,1,14,'2018-08-29 05:41:10','2018-08-29 05:41:10',3),(180,'10:55:00',33,12,2,14,'2018-08-29 05:42:19','2018-09-01 05:41:01',1),(181,'11:10:00',15,1,1,14,'2018-08-29 05:43:23','2018-08-29 05:43:23',1),(182,'11:10:00',20,1,2,14,'2018-08-29 05:44:42','2018-08-29 05:44:42',3),(183,'11:25:00',1,1,1,14,'2018-08-29 05:46:08','2018-08-29 05:46:08',1),(184,'11:30:00',1,1,2,14,'2018-08-29 05:46:35','2018-08-29 05:46:35',1),(185,'11:30:00',8,1,2,14,'2018-08-29 05:47:16','2018-08-29 05:47:16',2),(186,'11:45:00',13,1,1,14,'2018-08-29 05:48:05','2018-08-29 05:48:05',2),(187,'11:45:00',26,10,1,14,'2018-08-29 05:48:57','2018-08-29 05:48:57',1),(188,'11:50:00',26,12,1,14,'2018-08-29 05:50:10','2018-09-01 05:42:14',1),(189,'12:05:00',26,12,2,14,'2018-08-29 05:51:15','2018-09-01 05:42:33',1),(190,'12:30:00',42,1,1,14,'2018-08-29 05:53:53','2018-08-29 05:53:53',1),(191,'12:40:00',4,11,2,14,'2018-08-29 05:55:07','2018-08-29 05:55:07',3),(192,'12:50:00',42,1,2,14,'2018-08-29 05:55:45','2018-08-29 05:55:45',1),(193,'13:10:00',36,1,1,14,'2018-08-29 05:59:57','2018-08-29 05:59:57',1),(194,'13:20:00',36,1,2,14,'2018-08-29 06:00:47','2018-08-29 06:00:47',1),(195,'13:30:00',34,11,2,14,'2018-08-29 06:01:39','2018-08-29 06:01:39',1);
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles`
--

DROP TABLE IF EXISTS `detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lugar` int(11) DEFAULT NULL,
  `marca` int(11) DEFAULT NULL,
  `pista` int(11) DEFAULT NULL,
  `atleta` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `serie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles`
--

LOCK TABLES `detalles` WRITE;
/*!40000 ALTER TABLE `detalles` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discipline_championship2s`
--

DROP TABLE IF EXISTS `discipline_championship2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discipline_championship2s` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline_championship2s`
--

LOCK TABLES `discipline_championship2s` WRITE;
/*!40000 ALTER TABLE `discipline_championship2s` DISABLE KEYS */;
/*!40000 ALTER TABLE `discipline_championship2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discipline_championships`
--

DROP TABLE IF EXISTS `discipline_championships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discipline_championships` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idChampionship` int(11) DEFAULT NULL,
  `idDiscipline` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline_championships`
--

LOCK TABLES `discipline_championships` WRITE;
/*!40000 ALTER TABLE `discipline_championships` DISABLE KEYS */;
/*!40000 ALTER TABLE `discipline_championships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discipline_details`
--

DROP TABLE IF EXISTS `discipline_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discipline_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` decimal(10,0) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline_details`
--

LOCK TABLES `discipline_details` WRITE;
/*!40000 ALTER TABLE `discipline_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `discipline_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplines` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female10000mts`
--

DROP TABLE IF EXISTS `female10000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female10000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female10000mtHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female10000mts`
--

LOCK TABLES `female10000mts` WRITE;
/*!40000 ALTER TABLE `female10000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female10000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female100mthudrles`
--

DROP TABLE IF EXISTS `female100mthudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female100mthudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female100mthudrlesHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female100mthudrles`
--

LOCK TABLES `female100mthudrles` WRITE;
/*!40000 ALTER TABLE `female100mthudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `female100mthudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female100mts`
--

DROP TABLE IF EXISTS `female100mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female100mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female100mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female100mts`
--

LOCK TABLES `female100mts` WRITE;
/*!40000 ALTER TABLE `female100mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female100mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female100mts_heads`
--

DROP TABLE IF EXISTS `female100mts_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female100mts_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female100mts_heads`
--

LOCK TABLES `female100mts_heads` WRITE;
/*!40000 ALTER TABLE `female100mts_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `female100mts_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female100mtshurdles_heads`
--

DROP TABLE IF EXISTS `female100mtshurdles_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female100mtshurdles_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female100mtshurdles_heads`
--

LOCK TABLES `female100mtshurdles_heads` WRITE;
/*!40000 ALTER TABLE `female100mtshurdles_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `female100mtshurdles_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female110mtshudrles`
--

DROP TABLE IF EXISTS `female110mtshudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female110mtshudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female110mtshudrleHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female110mtshudrles`
--

LOCK TABLES `female110mtshudrles` WRITE;
/*!40000 ALTER TABLE `female110mtshudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `female110mtshudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female1500mts`
--

DROP TABLE IF EXISTS `female1500mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female1500mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female1500mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female1500mts`
--

LOCK TABLES `female1500mts` WRITE;
/*!40000 ALTER TABLE `female1500mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female1500mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female1500mts_heads`
--

DROP TABLE IF EXISTS `female1500mts_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female1500mts_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female1500mts_heads`
--

LOCK TABLES `female1500mts_heads` WRITE;
/*!40000 ALTER TABLE `female1500mts_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `female1500mts_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female20000mts`
--

DROP TABLE IF EXISTS `female20000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female20000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female20000mtHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female20000mts`
--

LOCK TABLES `female20000mts` WRITE;
/*!40000 ALTER TABLE `female20000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female20000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female200mts`
--

DROP TABLE IF EXISTS `female200mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female200mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female200mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female200mts`
--

LOCK TABLES `female200mts` WRITE;
/*!40000 ALTER TABLE `female200mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female200mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female200mts_heads`
--

DROP TABLE IF EXISTS `female200mts_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female200mts_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female200mts_heads`
--

LOCK TABLES `female200mts_heads` WRITE;
/*!40000 ALTER TABLE `female200mts_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `female200mts_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female3000mts`
--

DROP TABLE IF EXISTS `female3000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female3000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female3000mtHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female3000mts`
--

LOCK TABLES `female3000mts` WRITE;
/*!40000 ALTER TABLE `female3000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female3000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female3000mtsobstacles`
--

DROP TABLE IF EXISTS `female3000mtsobstacles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female3000mtsobstacles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female3000mtsobstacleHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female3000mtsobstacles`
--

LOCK TABLES `female3000mtsobstacles` WRITE;
/*!40000 ALTER TABLE `female3000mtsobstacles` DISABLE KEYS */;
/*!40000 ALTER TABLE `female3000mtsobstacles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female400mts`
--

DROP TABLE IF EXISTS `female400mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female400mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female400mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female400mts`
--

LOCK TABLES `female400mts` WRITE;
/*!40000 ALTER TABLE `female400mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female400mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female400mts_heads`
--

DROP TABLE IF EXISTS `female400mts_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female400mts_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female400mts_heads`
--

LOCK TABLES `female400mts_heads` WRITE;
/*!40000 ALTER TABLE `female400mts_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `female400mts_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female4x100mts`
--

DROP TABLE IF EXISTS `female4x100mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female4x100mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female4x100mts_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female4x100mts`
--

LOCK TABLES `female4x100mts` WRITE;
/*!40000 ALTER TABLE `female4x100mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female4x100mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female4x400mts`
--

DROP TABLE IF EXISTS `female4x400mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female4x400mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female4x400mtHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female4x400mts`
--

LOCK TABLES `female4x400mts` WRITE;
/*!40000 ALTER TABLE `female4x400mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female4x400mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female800mts`
--

DROP TABLE IF EXISTS `female800mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female800mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female800mtHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female800mts`
--

LOCK TABLES `female800mts` WRITE;
/*!40000 ALTER TABLE `female800mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female800mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female8x50mts`
--

DROP TABLE IF EXISTS `female8x50mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female8x50mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female8x50mts_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female8x50mts`
--

LOCK TABLES `female8x50mts` WRITE;
/*!40000 ALTER TABLE `female8x50mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female8x50mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female_discus_throws`
--

DROP TABLE IF EXISTS `female_discus_throws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female_discus_throws` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `fifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female_discus_throws`
--

LOCK TABLES `female_discus_throws` WRITE;
/*!40000 ALTER TABLE `female_discus_throws` DISABLE KEYS */;
/*!40000 ALTER TABLE `female_discus_throws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female_high_jumps`
--

DROP TABLE IF EXISTS `female_high_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female_high_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `reg` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `vvFirst` varchar(255) DEFAULT NULL,
  `seconnd` varchar(255) DEFAULT NULL,
  `vvSecond` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `vvThird` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `vvFourth` varchar(255) DEFAULT NULL,
  `fift` varchar(255) DEFAULT NULL,
  `vvFifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `vvSixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female_high_jumps`
--

LOCK TABLES `female_high_jumps` WRITE;
/*!40000 ALTER TABLE `female_high_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `female_high_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female_javelin_heads`
--

DROP TABLE IF EXISTS `female_javelin_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female_javelin_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female_javelin_heads`
--

LOCK TABLES `female_javelin_heads` WRITE;
/*!40000 ALTER TABLE `female_javelin_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `female_javelin_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female_javelines`
--

DROP TABLE IF EXISTS `female_javelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female_javelines` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `fifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female_javelines`
--

LOCK TABLES `female_javelines` WRITE;
/*!40000 ALTER TABLE `female_javelines` DISABLE KEYS */;
/*!40000 ALTER TABLE `female_javelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female_shot_put_heads`
--

DROP TABLE IF EXISTS `female_shot_put_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female_shot_put_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female_shot_put_heads`
--

LOCK TABLES `female_shot_put_heads` WRITE;
/*!40000 ALTER TABLE `female_shot_put_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `female_shot_put_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `female_shot_puts`
--

DROP TABLE IF EXISTS `female_shot_puts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `female_shot_puts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `fifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `female_shot_puts`
--

LOCK TABLES `female_shot_puts` WRITE;
/*!40000 ALTER TABLE `female_shot_puts` DISABLE KEYS */;
/*!40000 ALTER TABLE `female_shot_puts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `femalejump_heads`
--

DROP TABLE IF EXISTS `femalejump_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `femalejump_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `femalejump_heads`
--

LOCK TABLES `femalejump_heads` WRITE;
/*!40000 ALTER TABLE `femalejump_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `femalejump_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `femalesenior200mts`
--

DROP TABLE IF EXISTS `femalesenior200mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `femalesenior200mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femaleSenior200mts_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `femalesenior200mts`
--

LOCK TABLES `femalesenior200mts` WRITE;
/*!40000 ALTER TABLE `femalesenior200mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `femalesenior200mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `femalethrowing_disc_heads`
--

DROP TABLE IF EXISTS `femalethrowing_disc_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `femalethrowing_disc_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `femalethrowing_disc_heads`
--

LOCK TABLES `femalethrowing_disc_heads` WRITE;
/*!40000 ALTER TABLE `femalethrowing_disc_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `femalethrowing_disc_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjump2s`
--

DROP TABLE IF EXISTS `hjump2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hjump2s` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hjump_head2_id` bigint(20) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_hjump2s_on_hjump_head2_id` (`hjump_head2_id`),
  CONSTRAINT `fk_rails_ae0cbb8fbf` FOREIGN KEY (`hjump_head2_id`) REFERENCES `hjump_head2s` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjump2s`
--

LOCK TABLES `hjump2s` WRITE;
/*!40000 ALTER TABLE `hjump2s` DISABLE KEYS */;
INSERT INTO `hjump2s` VALUES (10,2,'Agustina Cruz Sepúlveda','3/31/2003','13','CDUC','DNS','99','2018-05-26 14:27:53','2018-08-02 17:40:59'),(11,2,'Javiera Moraga del Orto','10/14/2003','13','CDUC','2.60','3','2018-05-26 14:28:44','2018-05-26 21:43:05'),(12,2,'Dominga Contreras Gubbins','9/29/2003','13','CDUC','2.80','2','2018-05-26 14:29:07','2018-05-26 21:42:51'),(13,2,'Sofía Paz Venegas San Martín','7/25/2003','13','CDUC','3.00','1','2018-05-26 14:29:29','2018-05-26 21:42:39'),(15,1,'Agustina Cruz Sepulveda','2003','13','CDUC','1.48 (599)','1','2018-05-26 15:28:00','2018-05-28 04:58:16'),(16,1,'Cristianne Neumann','2003','10','C.D. Pilauco','1.45 (566)','2','2018-05-26 15:28:56','2018-05-27 14:14:49'),(17,1,'Laura Bustamante González','2004','10','E. Atletismo ','1.36 (470)','3','2018-05-26 15:30:24','2018-05-27 14:14:52'),(18,1,'María Squella Contardo','2003','13','CDUC','1.33 (439)','4','2018-05-26 15:31:11','2018-05-27 14:14:55'),(19,1,'Martina Delgado','2004','10','C.A. Gerardo Manzanares','1.33 (439)','5','2018-05-26 15:31:58','2018-05-27 14:14:57'),(20,1,'Cecilia Millaray Mellado','2003','13','A. inglés','1.27 (379)','6','2018-05-26 15:33:04','2018-05-27 14:15:02'),(21,1,'Emilia Alejandra Cabrera Valenzuela','2003','13','C. Manquemávida','1.18 (293)','7','2018-05-26 15:34:21','2018-05-27 14:15:05'),(23,1,'Aylimm Muñoz Díaz','2004','10','A.A. Castroi','1.15 (266)','8','2018-05-26 15:35:41','2018-05-27 14:15:08'),(24,1,'Giza Dayanne Aguayo Vásquez','2004','6','C. Génesis','DNS','99','2018-05-26 15:36:51','2018-08-02 17:34:01'),(25,1,'Orión Renata Carrasco Carrillo','2003','6','C. Manquemávida de Santa Cruz','DNS','99','2018-05-26 15:39:03','2018-05-27 01:57:55'),(26,1,'Valentina Duque Muñoz','2003','7','C. Liceo de Curicó','DNS','99','2018-05-26 15:40:07','2018-05-27 01:57:54'),(27,3,'Agustin Leon Yañez','06-10-2004','13','A. Santiago','N\\M','96','2018-05-26 20:07:46','2018-05-26 20:12:49'),(28,3,'Pedro Goycoolea Lagos','10-05-2004','13','A. Santiago','2.60','11','2018-05-26 20:08:51','2018-05-26 20:11:17'),(30,3,'Jeronimo Correa Valdes','26-02-2004','13','A. Santiago','2.90','8','2018-05-26 20:11:01','2018-05-26 20:12:41'),(31,3,'Lucas Palacios Nazif','22-02-2004','13','CDUC','3.00','7','2018-05-26 20:12:46','2018-05-26 20:13:24'),(32,3,'Mateo Cortina Capkovic','08-11-2004','13','A. Santiago','2.80','10','2018-05-26 20:13:15','2018-05-26 20:14:37'),(33,3,'Benjamin Araya Fuentes','05-01-2004','13','A. Santiago','2.90','9','2018-05-26 20:13:47','2018-05-26 20:16:45'),(34,3,'Mariano  Rodriguez Gutierrez','26-09-2003','13','A. San Ignacio','3.00','6','2018-05-26 20:14:31','2018-05-26 20:17:13'),(35,3,'Benjamin Urrutia Prado','02-02-2003','13','A. Santiago','3.30','5','2018-05-26 20:15:05','2018-05-26 20:26:00'),(36,3,'Andres Marchant Labbe','12-08-2003','13','A. Santiago','DNS','99','2018-05-26 20:16:04','2018-05-26 20:23:56'),(37,3,'Martin Varas Castro','30-09-2003','13','A. Santiago','3.50','2','2018-05-26 20:16:36','2018-05-26 20:21:58'),(38,3,'Arturo Munita Ibañez','03-02-2003','13','A. Santiago','DNS','99','2018-05-26 20:17:17','2018-05-26 20:23:58'),(39,3,'Tomas Oyarzun Nualart','16-05-2003','13','A. Santiago','3.60','1','2018-05-26 20:17:51','2018-05-26 20:21:26'),(40,3,'Maximiliano Palma Acuña','06-10-2003','8','C. A. Nekuln Galgos (Chillan Viejo)','3.40','3','2018-05-26 20:19:04','2018-05-26 20:21:12'),(41,3,'Santiago Wood Lewin','24-06-2003','13','CDUC','3.40','4','2018-05-26 20:21:15','2018-05-26 20:23:23'),(42,4,'Trinidad Canahuate Rojas','C. D. Colegio Padre Hurtado de Chillan','8','03-02-2003','1.40','2','2018-05-27 13:35:45','2018-05-27 13:35:45'),(43,4,'C. D. Colegio Padre Hurtado de Chillan','11-07-2003','13','CDUC','1.60','1','2018-05-27 13:39:42','2018-05-27 13:39:42'),(44,5,'Benjamin Alvarado Olmi','01-04-2003','10','C. A. Puerto Sur','1.37  (297)','7','2018-05-27 15:06:21','2018-05-28 04:40:53'),(45,5,'Manuel Vasquez ','22-09-2004','10','C. D. Pilauco','1.70 (544)','1','2018-05-27 15:07:11','2018-05-27 15:22:34'),(46,5,'Benjamin Gonzalez Olguin','06-04-2003','6','A. Nancagua','1.40 (317)','6','2018-05-27 15:08:23','2018-05-27 15:23:19'),(47,5,'Eduardo Camp Summerset','04-09-2003','15','Centro Atlético Formativo','1.52 (404)','2','2018-05-27 15:10:10','2018-05-27 15:22:42'),(48,5,'Benjamin Irribarren Poyanopulos','13-01-2004','15','Centro Atlético Formativo','1.46 (360)','5','2018-05-27 15:13:26','2018-05-27 15:23:12'),(49,5,'Pablo Rojas Muñoz','01-07-2003','7','C. A. Alameda Talca','1.46 (360)','4','2018-05-27 15:18:55','2018-05-27 15:23:02'),(50,5,'Adan Matías  Puel  Curin','07-06-2003','9','A. Ñielol','1.49 (381)','3','2018-05-27 15:21:35','2018-05-27 15:22:56'),(51,6,'Andres Molina Serrano','30-04-2003','13','CDUC','1.80','1','2018-05-27 16:05:50','2018-05-27 16:05:50'),(52,6,'Eduardo Astorga Diaz','03-09-2004','7','C. Liceo de Curicó','DNS','','2018-05-27 16:06:49','2018-05-27 16:25:04'),(53,6,'Nicolas Diaz Leighton','09-11-2003','13','A. Santiago','DNS','','2018-05-27 16:07:37','2018-05-27 16:25:06'),(54,6,'Jeronimo Correa Valdes','26-02-2004','13','A. Santiago','DNS','','2018-05-27 16:08:44','2018-05-27 16:25:08'),(55,6,'Clemente Atria Fuentes','01-03-2004','13','A. San Ignacio','NM','','2018-05-27 16:09:53','2018-05-27 16:25:10'),(56,6,'Pedro Krebs Saez','27-09-2003','13','A. San Ignacio','DNS','','2018-05-27 16:10:49','2018-05-27 16:25:12'),(57,6,'Pedro Cañas Etchegaray','11-08-2004','13','A. San Ignacio','DNS','','2018-05-27 16:11:38','2018-05-27 16:25:14'),(58,6,'Fernando Bobenrieth Menéndez','27-05-2003','12','C. de Atletismo Punta Arenas','1.65','4','2018-05-27 16:13:13','2018-05-27 16:13:13'),(59,6,'Fernando Vela Larrain','17-01-2003','13','A. Santiago','NM','','2018-05-27 16:15:10','2018-05-27 16:25:02'),(60,6,'Lukas Eduardo Silva Daza','09-03-2004','8','C. D. Colegio Padre Hurtado de Chillan','1.60','5','2018-05-27 16:18:36','2018-05-27 16:18:36'),(61,6,'Pedro  Morales Delano','21-03-2004','5','C. A. Pacífico','1.60','6','2018-05-27 16:19:31','2018-05-27 16:19:31'),(62,6,'Felipe Torres Cifuentes','08-02-2004','13','A. Santiago','1.80','2','2018-05-27 16:22:10','2018-05-27 16:22:10'),(63,6,'Juan Weinstein Muller','29-07-2003','13','A. Francés','DNS','','2018-05-27 16:23:15','2018-05-27 16:25:16'),(64,6,'Mauricio Viñuela Manterola','16-01-2003','13','A. Santiago','1.80','2','2018-05-27 16:24:16','2018-05-27 16:24:16'),(65,7,'AMALIA URZÚA','2005','13','SSCC MANQUEHUE','2.00','11','2018-08-04 00:27:53','2018-08-04 17:40:39'),(66,7,'JOSEFINA DOMINGUEZ','2004','13','SSCC MANQUEHUE','DNS','99','2018-08-04 00:27:55','2018-08-04 17:47:13'),(67,7,'MAGDALENA WALKER','2005','13','SSCC MANQUEHUE','DNS','99','2018-08-04 00:27:56','2018-08-04 17:47:31'),(68,7,'JOSEFINA O\'RYAN','2005','13','CSC','DNS','99','2018-08-04 00:27:59','2018-08-04 17:47:45'),(69,7,'JOSEFINA LOPEZ','2005','13','SIN CLUB','DNS','99','2018-08-04 00:28:01','2018-08-04 17:48:06'),(70,7,'EMILIA GONZALEZ','2005','13','SSCC MANQUEHUE','2.30','5','2018-08-04 00:28:03','2018-08-04 17:42:58'),(71,7,'PAULA OLAVE','2004','13','SSCC MANQUEHUE','2.50','3','2018-08-04 00:28:05','2018-08-04 17:41:45'),(72,7,'MARIA ERRAZURIZ','2004','13','COLEGIO LOS ANDES','DNS','99','2018-08-04 00:28:06','2018-08-04 17:48:30'),(73,7,'SOFIA ELGUETA','2004','13','JUANITA DE LOS A.','2.30','7','2018-08-04 00:28:08','2018-08-04 17:43:36'),(74,7,'GRACIA GUMUCIO','2004','13','NAZARET','DNS','99','2018-08-04 00:28:10','2018-08-04 17:48:56'),(75,7,'ALMENDRA GARCÍA','2004','13','SAN BENITO','DNS','99','2018-08-04 00:28:11','2018-08-04 17:49:14'),(76,7,'FEDERICA WIELANDT','2005','13','SAN BENITO','DNS','99','2018-08-04 00:28:14','2018-08-04 17:49:27'),(77,7,'EMILIA BALMACEDA','2005','13','SAN BENITO','DNS','99','2018-08-04 00:28:16','2018-08-04 17:49:42'),(78,7,'TRINIDAD MATTE','2004','13','NAZARET','2.60','2','2018-08-04 00:28:18','2018-08-04 17:41:16'),(79,7,'ISABELLA MACCIONI','2004','13','JUANITA DE LOS A.','2.00','9','2018-08-04 00:28:20','2018-08-04 17:44:17'),(80,7,'AMALIA VIAL RIESCO','2005','13','SAN BENITO','DNS','99','2018-08-04 00:28:21','2018-08-04 17:49:53'),(81,7,'SALOMÉ PATUELLI','2004','13','JUANITA DE LOS A.','2.40','4','2018-08-04 00:28:23','2018-08-04 17:42:01'),(82,7,'TRINIDAD HOJAS','2004','13','JUANITA DE LOS A.','2.70','1','2018-08-04 00:30:12','2018-08-04 17:40:56'),(83,8,'SIMON ZULUETA','2004','13','SAN IGNACIO EL BOSQUE','2.40','9','2018-08-04 00:37:37','2018-08-05 20:32:43'),(84,8,'AGUSTÍN LEON YAÑEZ','2004','13','VERBO DIVINO','DNS','','2018-08-04 00:37:58','2018-08-05 20:38:10'),(85,8,'JUAN DIEGO BULNES ','2004','13','VERBO DIVINO','2.20','10','2018-08-04 00:38:13','2018-08-05 20:32:57'),(86,8,'LUCAS GUTIERREZ','2004','13','VERBO DIVINO','DNS','','2018-08-04 00:38:34','2018-08-05 20:38:17'),(87,8,'PABLO DEL CAMPO','2005','13','SAN IGNACIO EL BOSQUE','2.60','7','2018-08-04 00:38:50','2018-08-05 20:33:10'),(88,8,'PEDRO GOYCOLEA ','2004','13','VERBO DIVINO','2.40','8','2018-08-04 00:39:06','2018-08-05 20:33:40'),(89,12,'EMILIO NUALART ','2004','13','SAN BENITO','','','2018-08-04 00:39:23','2018-08-05 19:00:44'),(90,8,'PABLO LIRA ILLANES','2004','13','COLEGIO TABANCURA','2.80','6','2018-08-04 00:39:40','2018-08-05 20:34:04'),(91,8,'TOMAS SAN FRANCISCO','2004','13','COLEGIO TABANCURA','2.80','5','2018-08-04 00:39:59','2018-08-05 20:34:54'),(92,8,'LUCAS TYLER CABRERA','2005','13','PADRE HURTADO','2.20','10','2018-08-04 00:40:21','2018-08-05 20:35:18'),(93,8,'JORGE HAYLER BROWNE ','2004','13','SAN BENITO','DNS','','2018-08-04 00:40:40','2018-08-05 20:38:23'),(94,8,'JERÓNIMO CORREA VALDÉS','2004','13','VERBO DIVINO','3.10','2','2018-08-04 00:40:54','2018-08-05 20:35:35'),(95,8,'BENJAMÍN ARAYA FUENTES','2004','13','PADRE HURTADO','3.00','4','2018-08-04 00:41:07','2018-08-05 20:35:52'),(96,8,'LUCAS PALACIOS NAZIF','2004','13','SSCC MANQUEHUE','3.30','1','2018-08-04 00:41:24','2018-08-05 20:36:07'),(97,8,'MATEO CORTINA CAPKOVIC','2004','13','PADRE HURTADO','3.10','2','2018-08-04 00:41:38','2018-08-05 20:36:46'),(99,9,'AMPARO ANGUITA','2004','13','SAINT GEORGES COLLEGE','DNS','99','2018-01-01 00:00:00','2018-08-05 20:08:36'),(100,9,'FLORENCIA MILLAN','2005','13','SAINT GEORGES COLLEGE','DNS','99','2018-01-01 00:00:00','2018-08-05 20:08:38'),(101,9,'ANTONIA RAMIREZ','2005','13','SAINT GEORGES COLLEGE','DNS','99','2018-01-02 00:00:00','2018-08-05 20:08:39'),(102,9,'EMA DEL PIANO','2005','13','SAINT GEORGES COLLEGE','DNS','99','2018-01-03 00:00:00','2018-08-05 20:08:41'),(103,9,'ANTONIA OCHAGAVÍA TORRES','2005','13','SANTA ÚRSULA- VITACURA','DNS','99','2018-01-04 00:00:00','2018-08-05 20:08:42'),(104,9,'FLORENCIA GALVAN','2005','13','SAN JOSE DE CHICUREO','DNS','99','2018-01-05 00:00:00','2018-08-05 20:08:44'),(105,9,'TRINIDAD OSIADACZ','2004','13','SAN JOSE DE CHICUREO','DNS','99','2018-01-06 00:00:00','2018-08-05 20:08:45'),(106,9,'CLARA ARRIAGADA','2005','13','COLEGIO LOS ANDES','DNS','99','2018-01-07 00:00:00','2018-08-05 20:08:49'),(107,9,'MARTINA VALENZUELA','2004','13','COLEGIO LOS ANDES','DNS','99','2018-01-08 00:00:00','2018-08-05 20:08:51'),(108,9,'ASUNCION DREYFUS','2005','13','SAN JOSE DE CHICUREO','DNS','99','2018-01-09 00:00:00','2018-08-05 20:08:52'),(109,9,'FRANCISCA O´KREY','2004','13','THE SOUTHERN CROSS','DNS','99','2018-01-10 00:00:00','2018-08-05 20:08:57'),(110,9,'PAULA PÉREZ ESPINOZA','2004','13','MAYOR PEÑALOLÉN','DNS','99','2018-01-11 00:00:00','2018-08-05 20:08:58'),(111,9,'OLIVIA LYON ','2005','13','COLEGIO SAN ISIDRO','1.20','12','2018-01-12 00:00:00','2018-08-05 20:05:04'),(112,9,'BERNARDITA PÉREZ','2005','13','COLEGIO SAN ISIDRO','1.25','9','2018-01-13 00:00:00','2018-08-05 20:02:43'),(113,9,'MATILDA VUSKOVIC','2005','13','COL. SAN FCO. JAVIER DE HUECHURABA','1.25','10','2018-01-14 00:00:00','2018-08-05 20:03:19'),(114,9,'MAGDALENA HUDSON','2006','13','COL. SAN FCO. JAVIER DE HUECHURABA','1.30','8','2018-01-15 00:00:00','2018-08-05 20:02:19'),(115,9,'BERNARDITA CUEVAS TORO','2005','13','SANTA ÚRSULA- VITACURA','1.30','7','2018-01-16 00:00:00','2018-08-05 20:01:48'),(116,9,'MICHELLE BERGUEL','2004','13','SSCC ALAMEDA','DNS','99','2018-01-17 00:00:00','2018-08-05 20:08:59'),(117,9,'GRACIA GUMUCIO','2004','13','NAZARET','DNS','99','2018-01-18 00:00:00','2018-08-05 20:09:03'),(120,9,'TERESITA MONTANER','2005','13','SIN CLUB ','DNS','99','2018-01-21 00:00:00','2018-08-05 20:10:05'),(121,9,'BELEN ARISTIZABAL ','2004','13','THE MAYFLOWER ','DNS','99','2018-01-22 00:00:00','2018-08-05 20:10:08'),(122,9,'MARIA JESUS IÑIGUEZ','2005','13','COLEGIO LOS ANDES','','99','2018-01-23 00:00:00','2018-08-05 20:11:02'),(123,9,'ALEXIA ASTURIZAGA','2004','13','ALEMÁN DE SANTIAGO','DNS','99','2018-01-24 00:00:00','2018-08-05 20:09:04'),(124,9,'AMELIA VARAS','2004','13','NAZARET','DNS','99','2018-01-25 00:00:00','2018-08-05 20:09:05'),(125,9,'ISIDORA PAZ ALBORNOZ URRUTIA','2005','13','ALCAZAR DE LAS CONDES','DNS','99','2018-01-26 00:00:00','2018-08-05 20:09:08'),(126,9,'FRANCISCA SILVA','2004','13','SIN CLUB ','DNS','99','2018-01-27 00:00:00','2018-08-05 20:09:09'),(127,9,'AGUSTINA KOLUBAKIN DE LA JARA','2004','13','JUANITA DE LOS A.','DNS','99','2018-01-28 00:00:00','2018-08-05 20:09:10'),(128,9,'VICTORIA CANALES','2005','13','SSCC MANQUEHUE','DNS','99','2018-01-29 00:00:00','2018-08-05 20:09:11'),(129,9,'TRINIDAD MATTE','2004','13','NAZARET','1.40','4','2018-01-30 00:00:00','2018-08-05 19:57:43'),(130,9,'AMALIA BABOUN','2005','13','NAZARET','1.54','1','2018-01-31 00:00:00','2018-08-05 19:56:32'),(131,9,'JOSEFINA SABUGAL','2004','13','SIN CLUB ','DNS','99','2018-01-30 00:00:00','2018-08-05 20:09:13'),(132,9,'DOMINGA MARISTANY','2004','13','ATL.FRANCES','DNS','99','2018-01-30 00:00:00','2018-08-05 20:09:16'),(133,9,'GRACIA GORZIGLIA','2004','13','COLEGIO LOS ANDES','DNS','99','2018-01-30 00:00:00','2018-08-05 20:09:35'),(134,9,'DOMINGA ZENTENO MATURANA','2004','13','JUANITA DE LOS A.','1.45','3','2018-01-30 00:00:00','2018-08-05 19:57:26'),(135,9,'CLARA GONZÁLEZ LECAROS','2005','13','SANTA ÚRSULA- VITACURA','1.48','2','2018-01-30 00:00:00','2018-08-05 19:57:00'),(136,10,'NICOLÁS JAQUE PÉREZ','2004','MAYOR PEÑALOLÉN','13','1.40','5','2018-01-01 00:00:00','2018-08-04 16:15:28'),(137,10,'DOMINGO DROSTE','2005','COLEGIO SAN ISDRO','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:24'),(138,10,'THOMAS HERRERA AYALA','2005','FRANCISCO PETRINOVIC','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:25'),(139,10,'PATRICIO HERNÁNDEZ CORTEZ','2004','FRANCISCO PETRINOVIC','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:28'),(140,10,'PEDRO SOTZ','2005','SAN IGNACIO EL BOSQUE','13','1.40','5','2018-01-01 00:00:00','2018-08-04 16:15:45'),(141,10,'GONZALO ARTEAGA','2005','SAN IGNACIO EL BOSQUE','13','1.45','3','2018-01-01 00:00:00','2018-08-04 16:14:28'),(142,10,'AMBROSIO CONCHA CORRAL','2005','VERBO DIVINO','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:31'),(143,10,'PEDRO BARROS MORAN','2005','COLEGIO TABANCURA','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:28'),(144,10,'DOMINGO DROSTE ','2005','COLEGIO SAN ISDRO','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:26'),(145,10,'IGNACIO GUGLIELMETTI BONE','2005','COLEGIO TABANCURA','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:24'),(146,10,'ANDRÉS OSORIO BARROS','2005','COLEGIO SAN ISDRO','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:22'),(147,10,'CLEMENTE ATRIA','2004','SAN IGNACIO EL BOSQUE','13','1.40','4','2018-01-01 00:00:00','2018-08-04 16:14:57'),(148,10,'ANDRÉS OSORIO BARROS','2005','COLEGIO SAN ISDRO','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:19'),(149,10,'JERÓNIMO CORREA VALDÉS','2004','VERBO DIVINO','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:16'),(150,10,'MATIAS BARROS BALBONTIN','2006','COLEGIO TABANCURA','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:14'),(151,10,'ALFONSO CID','2004','THE GRANGE SCHOOL','13','DNS','99','2018-01-01 00:00:00','2018-08-04 16:17:12'),(152,10,'IGNACIO TAGLE','2004','MONTE TABOR','13','1.50','2','2018-01-01 00:00:00','2018-08-04 16:14:14'),(153,10,'PEDRO MORALES','2004','SAINT GEORGES','13','1.60','1','2018-01-01 00:00:00','2018-08-04 16:13:57'),(154,11,'ANTONIA CAROCA','2005','13','SSCC ALAMEDA','1.24 (718)','6','2018-08-04 01:41:18','2018-08-05 17:22:48'),(155,11,'AMANDA GIL','2004','13','ALEMÁN DE SANTIAGO','1.27 (768)','5','2018-08-04 01:41:35','2018-08-05 17:22:22'),(156,11,'MATHILDE SANDROCK','2004','13','ALEMÁN DE SANTIAGO','1.27 (768)','4','2018-08-04 01:41:54','2018-08-05 17:21:25'),(157,11,'BARBARA VALENZUELA','2006','13','THE GREENLAND','DNS','99','2018-08-04 01:42:11','2018-08-05 17:24:32'),(158,11,'FERNANDA VILLARROEL','2005','13','THE GREENLAND','DNS','99','2018-08-04 01:42:28','2018-08-05 17:24:34'),(159,11,'MACARENA ACHURRA LUCK','2005','13','SANTA ÚRSULA- VITACURA','1.36 (872)','2','2018-08-04 01:42:43','2018-08-05 17:18:14'),(160,12,'EDUARDO RODAS','2004','13','SAINT GEORGES','1.51 (937)','2','2018-08-04 01:51:22','2018-08-05 17:26:15'),(161,12,'BENJAMÍN LEHUEDE','2004','13','SAINT GEORGES','1.39 (800)','5','2018-08-04 01:51:38','2018-08-05 17:27:50'),(162,12,'DIEGO BUSTAMANTE BASTIAS','2004','13','SSCC ALAMEDA','1.51 (937)','2','2018-08-04 01:51:52','2018-08-05 17:26:35'),(163,12,'JOSÉ PALACIOS CARDENAS','2004','13','SSCC ALAMEDA','1.42 (835)','4','2018-08-04 01:52:06','2018-08-05 17:27:15'),(164,12,'PEDRO CAÑAS','2004','13','SAN IGNACIO EL BOSQUE','1.54 (970)','1','2018-08-04 01:52:21','2018-08-05 17:25:48'),(165,12,'JOAQUÍN OSSES MUÑOZ','2004','13','NOCEDAL','1.27 (649)','6','2018-08-04 01:52:35','2018-08-05 17:28:23'),(166,7,'MAGDALENA VIAL','2005','13','NAZARET','2.30','5','2018-08-04 17:53:03','2018-08-04 20:22:01'),(168,7,'ELISA GUMUCIO','2005','13','NAZARET','2.20','8','2018-08-04 20:14:21','2018-08-04 20:22:53'),(169,7,'FLORENCIA MARTIJA','2004','13','SSCC MANQUEHUE','2.00','9','2018-08-04 20:18:00','2018-08-04 20:23:43'),(170,7,'ANTONIA ALAMOS','2005','13','NAZARET','2.00','11','2018-08-04 20:18:57','2018-08-04 20:19:26'),(171,11,'AMELIA VARAS','2004','13','NAZARET','1.39 (909)','1','2018-08-05 17:17:41','2018-08-05 17:17:41'),(172,11,'ISIDORA SANTA CRUZ','2005','15','NAZARET','1.33 (835)','3','2018-08-05 17:19:30','2018-08-05 17:19:30'),(173,9,'FRANCISCA HUBER','2004','13','SANTA ÚRSULA','1.35','5','2018-08-05 19:59:00','2018-08-05 19:59:00'),(174,9,'MAGDALENA VIAL','2005','13','NAZARET','1.35','5','2018-08-05 20:01:14','2018-08-05 20:01:14'),(175,9,'MERCEDES RIESCO','2004','13','SANTA ÚRSULA','1.20','11','2018-08-05 20:04:37','2018-08-05 20:04:37'),(176,13,'DANIEL PINEDA CONTRERAS','85','13','CHILE','7.81','2','2018-08-25 00:18:16','2018-08-25 17:46:24'),(177,15,'CESAR JOFRE PNCHEIRA','1996','13','A. SANTIAGO',NULL,NULL,'2018-08-31 18:51:27','2018-08-31 18:51:27'),(178,15,'JASON ROMERO SOTO','1999','14','C. D. BERNARDO FELMER',NULL,NULL,'2018-08-31 18:51:49','2018-08-31 18:51:49'),(179,16,'FRANCISCA VALENCIA BEOVIC','1996','13','A. SANTIAGO',NULL,NULL,'2018-08-31 19:15:01','2018-08-31 19:15:01'),(180,16,'RENATTE PINNINGHOOF AGUILA','1997','14','UACH',NULL,NULL,'2018-08-31 19:15:22','2018-08-31 19:15:22'),(181,16,'MARTINA KREUTZBERGER TALADRIZ','1999','13','MANQUEHUE',NULL,NULL,'2018-08-31 19:15:48','2018-08-31 19:15:48'),(182,16,'ANDREA JALIL GARCIA','2000','13','CDUC',NULL,NULL,'2018-08-31 19:16:17','2018-08-31 19:16:17'),(183,16,'ANTONIA FUICA BERGER','2000','13','CDUC',NULL,NULL,'2018-08-31 19:16:33','2018-08-31 19:16:33'),(184,19,'CESAR JOFRE PNCHEIRA','1996','13','A. SANTIAGO','1.85','FC','2018-09-01 04:48:53','2018-09-02 13:47:27'),(185,19,'JASON  ROMERO SOTO','1999','14','C. D. BERNARDO FELMER','1.68','1','2018-09-01 04:49:22','2018-09-02 13:47:24'),(186,18,'ANTONIA CRESTANI REBOLLEDO','1999','13','CDUC','NM','','2018-09-01 04:52:49','2018-09-01 18:35:54'),(187,18,'JAVIERA CONTRERAS GUBBINS','2001','13','CDUC','3.40','2','2018-09-01 04:53:08','2018-09-01 18:40:17'),(188,18,'FERNANDA CARABIAS CUEVAS','1996','13','CDUC','3.50','FC','2018-09-01 04:53:39','2018-09-01 18:39:42'),(189,18,'VIOLETA ARNAIZ CORNEJO','2000','13','CDUC','3.50','1','2018-09-01 04:54:02','2018-09-01 18:39:56'),(190,20,'RAIMUNDO LEON YAÑEZ','1999-12-28','13','A. SANTIAGO','DNS','','2018-09-01 04:57:00','2018-09-01 20:06:53'),(191,20,'JOSE TOMAS ACUÑA BARROS','2001-04-11','13','A. SANTIAGO','4.20','5','2018-09-01 04:57:22','2018-09-01 20:11:00'),(192,20,'LEÓN CLEMENTE WALKER DEPASIER','2001-02-14','13','CDUC','3.90','6','2018-09-01 04:57:45','2018-09-01 20:11:02'),(193,20,'FELIPE FICA ARANEDA','1999-01-02','13','A. SANTIAGO','DNS','','2018-09-01 04:58:12','2018-09-01 20:07:06'),(194,20,'JAIME WOOD LEWIN','2001-09-28','13','CDUC','4.50','2','2018-09-01 04:58:39','2018-09-01 20:10:19'),(195,20,'GUILLERMO CORREA ASPILLAGA','2001-04-09','13','CDUC','4.30','4','2018-09-01 04:59:07','2018-09-01 20:10:34'),(196,20,'PEDRO CORREA GANA','1997-07-29','13','A. SANTIAGO','4.20','FC','2018-09-01 04:59:34','2018-09-01 20:09:28'),(197,20,'EDUARDO MARTIN HUERTA','1999-02-20','13','A. SANTIAGO','4.40','3','2018-09-01 05:00:13','2018-09-01 20:10:27'),(198,20,'SEBASTIAN MARTIN HUERTA','2000-03-28','13','A. SANTIAGO','4.85','1','2018-09-01 05:00:53','2018-09-01 20:10:12'),(199,21,'ANTONIA FUICA BERGER','2000-12-20','13','CDUC','DNS','','2018-09-01 05:05:47','2018-09-03 16:15:30'),(200,21,'RAFAELA  RAMIREZ CARBONELL','2001-11-20','8','C. D. COLEGIO PADRE HURTADO CHILLAN','1.60','2','2018-09-01 05:07:29','2018-09-03 16:17:49'),(201,21,'CATALINA IGNACIA CARCAMO  BARRIENTOS','2001-08-04','7','C. A. MAULE','1.60','3','2018-09-01 05:07:58','2018-09-03 16:17:55'),(202,21,'NICOLA TORRES ALTSCHWAGER','1996-11-03','13','A. SANTIAGO','DNS','','2018-09-01 05:08:34','2018-09-03 16:15:36'),(203,21,'VIRGINIA SCHRODER SOTOMAYOR','2001-05-07','13','CDUC','DNS','','2018-09-01 05:09:02','2018-09-03 16:15:40'),(204,21,'MONICA MONTERO BOBADILLA','2003-07-11','13','CDUC','1.60','FC','2018-09-01 05:09:25','2018-09-03 16:18:06'),(205,21,'OLIVIA  GARCIA-HUIDOBRO LAGOS','2001-10-22','13','A. FRANCES','1.60','4','2018-09-01 05:09:57','2018-09-03 16:18:20'),(206,21,'VICTORIA ROZAS REINECKE','1999-05-15','13','MANQUEHUE','1.65','1','2018-09-01 05:10:22','2018-09-03 16:17:42'),(207,22,'CESAR JOFRE PINCHEIRA','1996','13','A. SANTIAGO','3.60','1 (509)(t=5417)','2018-09-01 05:11:26','2018-09-02 15:28:34'),(208,22,'JASON  ROMERO SOTO','1999','14','C. D. BERNARDO FELMER','2.60','2 (264)(t=3407)','2018-09-01 05:11:51','2018-09-02 15:29:01'),(209,23,'ANDREA JALIL GARCIA','2000','13','CDUC','1.45','3','2018-09-01 05:15:39','2018-09-02 13:39:02'),(210,23,'ANTONIA FUICA BERGER','2000','13','CDUC','1.51','2','2018-09-01 05:16:01','2018-09-02 13:38:58'),(211,23,'MARTINA KREUTZBERGER ','1999','13','MANQUEHUE','1.60','1','2018-09-01 05:16:23','2018-09-02 12:55:32'),(212,23,'RENATTE PINNINGHOOF AGUILA','1997','14','UACH','1.39','FC','2018-09-01 05:16:43','2018-09-02 13:32:19'),(213,23,'FRANCISCA VALENCIA BEOVIC','1996','13','A. SANTIAGO','1.54','FC','2018-09-01 05:17:05','2018-09-02 13:38:49'),(214,18,'CATALINA MARAMBIO','2000','13','CDUC','2.70','4','2018-09-01 18:37:24','2018-09-01 18:40:25'),(215,18,'ELISA DECOMBE','1999','13','MANQUEHUE','3.10','3','2018-09-01 18:38:50','2018-09-01 18:40:21'),(216,24,'LUIS REYES PARADA','2000','13','A. SANTIAGO','13.38','1','2018-09-02 15:32:11','2018-09-02 15:32:11'),(217,24,'PASCAL VEGA TORRES','2000','13','A. OASSI','DNS','','2018-09-02 15:32:49','2018-09-02 15:32:49'),(218,24,'IGNACIO LUCERO HERNÁNDEZ','2001','13','CDUC','12.24','3','2018-09-02 15:33:49','2018-09-02 15:33:49'),(220,24,'BENJAMÍN ALCAYAGA ','1996','4','C. A. LA SERENA','14.68','F/C','2018-09-02 15:35:31','2018-09-02 15:36:03'),(221,24,'ANDRES ESTEBAN OBARRA OYARCE','2001','13','A. FRANCES','N/M','','2018-09-02 15:37:02','2018-09-02 15:37:02'),(222,24,'RAIMUNDO LEON YAÑEZ','1999','13','A. SANTIAGO','12.57','2','2018-09-02 15:37:51','2018-09-02 15:37:51'),(223,24,'BRANDO OLIVERA AHUMADA ','1998','13','A. A. CASTRO','11.88','4','2018-09-02 15:38:51','2018-09-02 15:38:51'),(224,24,'MARCELO BURGOS VILLANUEVA','1998','8','C. A. UBB CHILLAN','13.59','F/C','2018-09-02 15:40:10','2018-09-02 15:40:10'),(225,24,'VICENTE BELGUERI ROJAS','1997','','A. SANTIAGO','DNS','','2018-09-02 15:45:06','2018-09-02 15:45:06'),(226,24,'DANIEL VASQUEZ SLAZAR','2000','','C.D. NICOLAS CARVAJAL','DNS','','2018-09-02 15:46:52','2018-09-02 15:46:52'),(227,24,'ALFONSO OVALLE BAÑADOS','2000','13','CDUC','DNS','','2018-09-02 15:47:24','2018-09-02 15:47:24'),(228,24,'MATÍAS FERES AGUADO','2001','13','CDUC','DNS','','2018-09-02 15:48:10','2018-09-02 15:48:10'),(229,25,'FRANCISCO MORAGA DEL ORTO','2000','13','A. SANTIAGO','2.06','1','2018-09-02 16:14:51','2018-09-02 16:14:51'),(230,25,'SANTIAGO ADONIS CARIGA ','2000','6','A. NANCAGUA','1.70','5','2018-09-02 16:15:37','2018-09-02 16:15:37'),(231,25,'FELIX DÍAZ MATURANA ','2001','8','C.A. NEKULN GALGOS','DNS','','2018-09-02 16:16:26','2018-09-02 16:16:26'),(232,25,'AGUSTIN MACERATTA YERKOVIC','2000','13','A. SANTIAGO','DNS','','2018-09-02 16:17:12','2018-09-02 16:17:12'),(233,25,'JULIAN ARTEAGA QUINTANA','2001','8','C.A. NEKULN GALGOS','DNS','','2018-09-02 16:18:16','2018-09-02 16:18:16'),(234,25,'BERNARDO PÉREZ DE CASTRO GURIDI','2000','13','A. SANTIAGO','1.85','2','2018-09-02 16:18:53','2018-09-02 16:18:53'),(235,25,'LUIS REYES PARADA','2000','13','A. SANTIAGO','1.80','4','2018-09-02 16:19:29','2018-09-02 16:19:29'),(236,25,'AGUSTIN URRUTIA','2000','13','CDUC','1.85','3','2018-09-02 16:20:17','2018-09-02 16:20:17'),(237,26,'PAOLA FERNANDA MUÑOZ REBOLLEDO','2000','9','C.A. ÑIELOL','9.83','3','2018-09-02 16:24:15','2018-09-02 16:24:15'),(238,26,'SOFÍA ZAMORA GARCÍA','2000','10','A. A. CASTRO','9.79','4','2018-09-02 16:25:02','2018-09-02 16:25:02'),(239,26,'BARBARA DEL ROSARIO MERINO BREIT-FRONZIG','1999','5','C.D. ALEMAN DE VALPARAÍSO','10.83','2','2018-09-02 16:26:52','2018-09-02 16:26:52'),(240,26,'TRINIDAD HURTADO EYZAGUIRRE','2000','13','CDUC','11.46','1','2018-09-02 16:27:33','2018-09-02 16:27:33'),(241,26,'NORKA MORETIC SORUCO','1998','13','CDUC','11.89','F/C','2018-09-02 16:28:19','2018-09-02 16:28:19'),(242,26,'VIRGINIA SCHRODER SOTOMAYOR','2001','13','CDUC','DNS','','2018-09-02 16:28:59','2018-09-02 16:28:59'),(243,26,'ANDREA JALIL GARCIA','2000','13','CDUC','DNS','','2018-09-02 16:29:20','2018-09-02 16:29:20'),(244,26,'ANTONIA FUICA BERGER','2000','13','CDUC','DNS','','2018-09-02 16:29:39','2018-09-02 16:29:39'),(245,26,'JOSEPHINE HALLER WISNER','2000','13','MANQUEHUE','DNS','','2018-09-02 16:30:24','2018-09-02 16:30:24'),(246,26,'MARGARITA MATSUMOTO NEBOT','2000','13','CDUC','DNS','','2018-09-02 16:31:02','2018-09-02 16:31:02'),(247,21,'CATALINA OSSA KAHL','1997','13','CDUC','1.65','FC','2018-09-03 16:16:29','2018-09-03 16:17:36'),(248,21,'MARIA ELIMIA VALENZUELA','2001','13','CDUC','1.55','5','2018-09-03 16:17:12','2018-09-03 16:18:24');
/*!40000 ALTER TABLE `hjump2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjump_head2s`
--

DROP TABLE IF EXISTS `hjump_head2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hjump_head2s` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `sex_id` bigint(20) DEFAULT NULL,
  `competition_id` bigint(20) DEFAULT NULL,
  `sport_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_hjump_head2s_on_sex_id` (`sex_id`),
  KEY `index_hjump_head2s_on_competition_id` (`competition_id`),
  KEY `index_hjump_head2s_on_sport_id` (`sport_id`),
  KEY `index_hjump_head2s_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_61d6ec7c07` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_rails_a694591e93` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`),
  CONSTRAINT `fk_rails_e776049e6d` FOREIGN KEY (`sex_id`) REFERENCES `sexes` (`id`),
  CONSTRAINT `fk_rails_fed0014587` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjump_head2s`
--

LOCK TABLES `hjump_head2s` WRITE;
/*!40000 ALTER TABLE `hjump_head2s` DISABLE KEYS */;
INSERT INTO `hjump_head2s` VALUES (1,NULL,NULL,1,4,1,1,'Salto Alto - Hexatlón - Damas','2018-05-26 13:24:25','2018-05-26 15:26:45'),(2,NULL,NULL,1,10,1,1,'-Salto con Garrocha - Final - Damas','2018-05-26 14:23:55','2018-05-27 14:32:36'),(3,NULL,NULL,1,18,1,1,'Salto Con Garrocha - Final Varones','2018-05-26 20:01:30','2018-05-26 20:09:13'),(4,NULL,NULL,1,54,1,1,'','2018-05-27 13:31:32','2018-05-27 13:31:32'),(5,NULL,NULL,1,40,1,1,'- Salto Alto - Hexatlón- Varones','2018-05-27 15:02:03','2018-05-27 15:04:02'),(6,NULL,NULL,1,43,1,1,'Salto Alto - Varones','2018-05-27 16:04:32','2018-05-27 16:26:11'),(7,NULL,NULL,1,67,1,1,'1','2018-08-04 00:22:42','2018-08-04 00:22:42'),(8,NULL,NULL,1,96,1,1,'1','2018-08-04 00:37:07','2018-08-04 00:37:07'),(9,NULL,NULL,1,94,1,1,'-','2018-08-04 00:42:56','2018-08-05 20:10:40'),(10,NULL,NULL,1,63,1,1,'','2018-08-04 01:01:17','2018-08-04 16:17:45'),(11,NULL,NULL,1,82,1,1,'1','2018-08-04 01:40:30','2018-08-04 01:40:30'),(12,NULL,NULL,1,76,1,1,'1','2018-08-04 01:49:43','2018-08-04 01:49:43'),(13,NULL,NULL,1,117,1,1,'FINAL','2018-08-25 00:17:43','2018-08-25 00:17:43'),(14,NULL,NULL,1,149,1,1,'','2018-08-31 18:23:15','2018-08-31 18:23:15'),(15,NULL,NULL,1,134,1,1,'','2018-08-31 18:50:59','2018-08-31 18:50:59'),(16,NULL,NULL,1,171,1,1,'','2018-08-31 19:14:44','2018-08-31 19:14:44'),(17,NULL,NULL,1,159,1,1,'','2018-08-31 20:40:07','2018-08-31 20:40:07'),(18,NULL,NULL,1,136,1,1,'','2018-09-01 04:42:23','2018-09-01 04:42:23'),(19,NULL,NULL,1,143,1,1,'','2018-09-01 04:47:37','2018-09-01 04:47:37'),(20,NULL,NULL,1,150,1,1,'','2018-09-01 04:56:24','2018-09-01 04:56:24'),(21,NULL,NULL,1,152,1,1,'','2018-09-01 05:05:24','2018-09-01 05:05:24'),(22,NULL,NULL,1,175,1,1,'','2018-09-01 05:11:03','2018-09-01 05:11:03'),(23,NULL,NULL,1,133,1,1,'','2018-09-01 05:15:22','2018-09-01 05:15:22'),(24,NULL,NULL,1,176,1,1,'','2018-09-02 15:29:36','2018-09-02 15:29:36'),(25,NULL,NULL,1,185,1,1,'','2018-09-02 16:12:18','2018-09-02 16:12:18'),(26,NULL,NULL,1,186,1,1,'','2018-09-02 16:21:07','2018-09-02 16:21:07');
/*!40000 ALTER TABLE `hjump_head2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jump2s`
--

DROP TABLE IF EXISTS `jump2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jump2s` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jump_head2_id` bigint(20) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `vvfirst` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `vvsecond` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `vvthird` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `vvfourth` varchar(255) DEFAULT NULL,
  `fifth` varchar(255) DEFAULT NULL,
  `vvfifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `vvsixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `an` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `points` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_jump2s_on_jump_head2_id` (`jump_head2_id`),
  CONSTRAINT `fk_rails_19a084c99d` FOREIGN KEY (`jump_head2_id`) REFERENCES `jump_head2s` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jump2s`
--

LOCK TABLES `jump2s` WRITE;
/*!40000 ALTER TABLE `jump2s` DISABLE KEYS */;
INSERT INTO `jump2s` VALUES (1,1,'Benjamin Alvarado Olmi','C. A. Puerto Sur','4.43','+0.6','4.50','+0.5','4.43','-0.4','','','','','','','','4.50','8','2018-05-26 14:18:12','2018-05-27 13:16:53','4/1/2003','10','290'),(2,1,'Manuel Vasquez ','C. D. Pilauco','5.49','-0.0','5.85','+0.5','5.82','-0.0','','','','','','','','5.85','2','2018-05-26 14:18:47','2018-05-27 13:14:27','9/22/2004','10','554'),(3,1,'Santiago Salinas Cabrera','A. Santiago','x','+0.8','5.25','0.0','5.22','-0.2','','','','','','','','5.25','3','2018-05-26 14:19:10','2018-05-27 13:13:18','4/4/2003','13','431'),(4,1,'Joaquín Cristóbal Galleguillos Puebla','C. Manquemávida de Santa Cruz','','','','','','','','','','','','','','','99','2018-05-26 14:19:52','2018-05-26 15:02:21','2/8/2003','6','DNS'),(5,1,'Benjamin Gonzalez Olguin','A. Nancagua','4.34','+0.7','4.84','-0.8','4.85','+0.1','','','','','','','','4.85','7','2018-05-26 14:20:19','2018-05-27 13:12:48','4/6/2003','6','354'),(6,1,'Eduardo Camp Summerset','Centro Atlético Formativo','5.77','-0.8','5.98','-0.1','5.76','+0.3','','','','','','','','5.98','1','2018-05-26 14:20:56','2018-05-27 13:11:39','9/4/2003','15','582'),(8,1,'Pablo Rojas Muñoz','C. A. Alameda Talca','4.85','+1.1','4.94','+0.1','4.88','-0.3','','','','','','','','4.94','6','2018-05-26 14:22:02','2018-05-27 13:12:15','7/1/2003','7','371'),(9,1,'Adan Puel','C.A. Ñielol','4.96','+0.1','5.11','5.11','5.10','+0.9','','','','','','','','5.11','4','2018-05-26 14:35:28','2018-05-27 13:17:26','7/6/2003','9','404'),(11,1,'Benjamín Irribarren Poyanopulos','Centro Atlético Formativo','4.73','+0.3','4.95','+0.3','x','-0.2','','','','','','','','4.95','5','2018-05-26 14:47:58','2018-05-27 13:16:17','1/13/2004','15','373'),(12,2,'Maria Ignacia  Aspillaga  Claverie','CDUC','5.07','+0.1','5.35','+0.4','X','-1.3','8','5.03','+1.2','5.20','+0.7','5.19','+0.7','5.35','1','2018-05-26 21:15:28','2018-05-27 02:13:59','2003-03-07','13',NULL),(13,2,'Barbara Carrasco Garcia','A. Santiago','4.59','+0.3','4.97','-0.5','5.18','+1.3','7','4.78','+1.7','4.84','+0.1','5.06','+1.1','5.18','2','2018-05-26 21:15:28','2018-05-27 02:14:04','2003-05-05','13',NULL),(14,2,'Javiera Gonzalez Moscoso','A. Nancagua','4.84','+1.5','4.75','-0.7','4.81','+2.0','6','4.69','+1.9','4.55','+0.4','4.98','+1.5','4.98','3','2018-05-26 21:15:28','2018-05-27 02:14:05','2003-08-24','6',NULL),(15,2,'Camila Sarai Ponce Márquez','Vicente Potrerillos Salinas','4.61','+1.0','4.73','+1.7','4.64','+1.1','5','4.45','+1.0','4.62','+1.4','4.91','+0.8','4.91','4','2018-05-26 21:15:28','2018-05-27 02:14:08','2004-01-25','3',NULL),(16,2,'Maria Garnham Guzman','CDUC','3.70','+0.6','4.64','+1.9','4.51','+0.9','4','4.55','+1.3','X','+1.4','4.68','+0.8','4.68','5','2018-05-26 21:15:28','2018-05-27 02:14:09','2003-06-18','13',NULL),(17,2,'Nicole Darritchon Lama','CDUC','4.48','-0.4','4.25','-1.6','4.43','+0.2','2','4.48','+0.9','4.46','+0.1','4.60','+1.0','4.60','6','2018-05-26 21:15:28','2018-05-27 02:14:11','2003-10-03','13',NULL),(18,2,'Antonia Diaz Lizana','A. Nancagua','4.48','-0.7','4.34','+0.8','4.45','+1.0','3','4.50','+1.0','4.45','+0.9','M','+1.5','4.50','7','2018-05-26 21:15:28','2018-05-27 02:14:12','2004-05-01','6',NULL),(19,2,'Cecilia Millaray Mellado Carvajal','A. Ingles','4.43','+0.3','4.20','-0.9','4.10','+0.7','1','4.32','-0.4','4.22','+0.3','4.29','+0.7','4.43','8','2018-05-26 21:15:28','2018-05-27 02:14:14','2003-01-03','4',NULL),(20,2,'Camily Reyes Ibarra','Academia Iquique Bajo Molle','M','+0.2','4.40','+0.6','4.42','+0.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.42','9','2018-05-26 21:15:28','2018-05-26 21:17:08','2003-08-06','1',NULL),(21,2,'Carola Scheihing Ballesteros','Escuela de Atletismo Osorno','4.13','+0.3','4.24','+2.0','4.33','+1.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.33','10','2018-05-26 21:15:28','2018-05-26 21:18:29','2004-02-12','10',NULL),(22,2,'Nicole Radonich Silva','C. de Atletismo Punta Arenas','M','+0.1','4.18','+0.6','3.98','+0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.18','11','2018-05-26 21:15:28','2018-05-26 21:18:25','2003-11-13','12',NULL),(23,2,'Maira  Martinez Mayorga','C. A. LEA','4.30','+1.3','4.12','+0.0','4.12','+0.9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.12','12','2018-05-26 21:15:28','2018-05-26 21:18:22','2003-11-16','12',NULL),(24,2,'Maria  Reyes Fernandez','C. A. Gerardo Manzanares ','M','+0.6','3.91','+0.7','4.01','+0.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.01','13','2018-05-26 21:15:28','2018-05-26 21:18:16','2003-05-01','10',NULL),(25,2,'Margarita Hubner ','C. D. Pilauco','3.89','+0.8','3.90','+1.9','3.98','-0.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.98','14','2018-05-26 21:15:28','2018-05-26 21:18:12','2004-04-20','10',NULL),(26,2,'Fernanda Isidora Maldonado Fuentealba','C. Marista Curicó','3.80','+0.5','M','+1.5','3.91','+2.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.91','15','2018-05-26 21:15:28','2018-05-26 21:18:08','2004-01-21','7',NULL),(27,2,'Melany Rocío Guerrero Chayle','A. Copiapó','X','-0.2','3.90','+1.1','3.80','+0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.90','16','2018-05-26 21:15:28','2018-05-26 21:18:05','2004-07-09','3',NULL),(28,2,'Maria Paz Lira Delgeon','CDUC','M','+0.2','M','+1.1','3.90','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.90','17','2018-05-26 21:15:28','2018-05-26 21:18:00','2003-10-07','13',NULL),(29,2,'Tamara Lopez Vera','A. Cauquenes','M','+0.3','3.65','-0.4','3.82','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.82','18','2018-05-26 21:15:28','2018-05-26 21:17:45','2004-03-04','7',NULL),(30,2,'Daniela  Charme  Soto','CDUC','X','+0.5','X','-0.4','3.81','+1.9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.81','19','2018-05-26 21:15:28','2018-05-26 21:17:40','2003-06-05','13',NULL),(31,2,'Victoria Pardo Antillanca','C. D. Bernardo Felmer','M','+0.1','3.23','+0.9','3.64','-0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.64','20','2018-05-26 21:15:28','2018-05-26 21:17:33','2004-11-24','14',NULL),(32,2,'Josefa Inostroza Maldnado','C. Liceo de Curicó',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:00','2003-10-04','7',NULL),(33,2,'Anthar Gipoulou Pizarro','C.D. Windsor School',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:02','2004-03-04','14',NULL),(34,2,'Irene Linda Riquelme Muñoz','C. A. Tamarugo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:06','2003-09-30','1',NULL),(35,2,'Maira  Martinez Mayorga','C. A. LEA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:08','2003-11-16','12',NULL),(36,2,'Lisa Bauch Lisa','Manquehue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:11','2003-12-16','13',NULL),(37,2,'Fernanda Gonzalez Gomez','C. A. Parral',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:14','2004-04-27','7',NULL),(38,2,'Valentina  Vásquez  General','C. A. Limache',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:17','2003-06-07','5',NULL),(39,2,'Amanda Gil Amanda','Manquehue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:20','2004-07-26','13',NULL),(40,2,'Chester Avila Salas','A. Cauquenes','X',NULL,'X','+0.5','X','+0.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-08-02 22:47:42','2004-11-27','7',NULL),(41,2,'Antonia Suerez Escobar','A. Santiago','X','-0.0','X','+0.6','M','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-08-02 22:47:45','2003-04-13','13',NULL),(42,2,'Catalina Ignacia Fuentes Campos','C. Marista Curicó','X',NULL,'X',NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-08-02 22:47:48','2003-05-03','7',NULL),(43,3,'Bruno Rickemberg Benedetti','A. Santiago','X',NULL,'6.15','+1.8','5.99','+1.4',NULL,'5.89','+1.3','5.99','+0.6','X',NULL,'6.15','1','2018-05-26 22:31:23','2018-05-26 22:34:21','2003-04-29','13',NULL),(44,3,'Eduardo Camp Summerset','Centro Atlético Formativo','5.33','+1.7','X',NULL,'6.00','+0.6',NULL,'5.82','+1.1','5.63','+0.9','6.07','+0.6','6.07','2','2018-05-26 22:31:23','2018-05-26 22:34:31','2003-09-04','15',NULL),(45,3,'Benjamín Emilio Villa Castro','C. A. Nahuelbuta Angol','X',NULL,'5.88','+0.9','5.71','+1.4',NULL,'M',NULL,'5.51','+0.9','6.03','+0.8','6.03','3','2018-05-26 22:31:23','2018-05-26 22:34:34','2004-03-03','9',NULL),(46,3,'Benjamin Rojas krause','C. A. Puerto Sur','M',NULL,'5.97','+1.6','5.26','+0.7',NULL,'5.52','+1.1','5.30','+1.0','5.30','+0.8','5.97','4','2018-05-26 22:31:23','2018-05-26 22:34:38','2004-04-04','10',NULL),(47,3,'Matias Gonzalez Romero','Manquehue','5.32','+1.0','5.59','+0.6','X',NULL,NULL,'5.74','+1.1','5.95','+1.8','5.86','+0.8','5.95','5','2018-05-26 22:31:23','2018-05-26 22:34:40','2003-06-26','13',NULL),(48,3,'Cristobal Alejandro Salazar Alarcon','C. Génesis','X',NULL,'5.51','+1.3','X',NULL,NULL,'5.49','+1.2','5.59','+0.9','X','+0.5','5.59','6','2018-05-26 22:31:23','2018-05-26 22:34:43','2003-03-19','6',NULL),(49,3,'Martin Seefeldt Karque','A. Santiago','5.49','+1.1','5.25','+0.4','5.35','+1.8',NULL,'M',NULL,'5.15','+0.6','5.27','+0.6','5.49','7','2018-05-26 22:31:23','2018-05-26 22:34:48','2004-06-28','13',NULL),(50,3,'Jose Vicente Peña Alvarado','C. Génesis','5.37','+0.7','5.30','+1.6','X',NULL,NULL,'5.17','+1.4','5.10','+1.3','5.19','+0.5','5.37','8','2018-05-26 22:31:23','2018-05-26 22:35:27','2003-11-17','6',NULL),(51,3,'Fabian Ferrufino Robledo','A. Copiapó','X',NULL,'M',NULL,'5.13','+1.4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.13','9','2018-05-26 22:31:23','2018-05-26 22:35:29','2004-01-22','3',NULL),(52,3,'Joaquín Alberto Pérez Guajardo','C. Marista Curicó','M',NULL,'5.01','+2.9','5.12','+0.6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.12','10','2018-05-26 22:31:23','2018-05-26 22:34:25','2004-01-04','7',NULL),(53,3,'Diego Hormazabal Torres','A. Cauquenes','M',NULL,'5.00','+2.0','M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.00','11','2018-05-26 22:31:23','2018-05-26 22:34:28','2004-11-12','7',NULL),(54,3,'Max Leonardo Davila Delgado','C. A. Tamarugo','M',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:32:56','2004-05-29','1',NULL),(56,3,'Ignacio Campos Del Saz','C. A. Parral','X',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:33:03','2004-03-21','7',NULL),(57,3,'Martín  Úrzua Opazo','A. Francés','M',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:33:07','2004-12-06','13',NULL),(58,3,'Matias Norambuena France','A. Santiago','M',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:33:10','2004-05-13','13',NULL),(59,3,'Bruno Gonzalo Ordenes Cisterna','C. A. Huasco','M',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:33:14','2004-08-21','3',NULL),(60,3,'Juan Contreras Contreras','C. D. Bernardo Felmer','X',NULL,'X',NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:18','2004-04-15','14',NULL),(61,3,'Matias Adrian Tapia Lucero','C. A. Nacional Iquique',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:21','2004-05-16','1',NULL),(62,3,'Carlos Ibarra Allende','C. Liceo de Curicó','-',NULL,'-',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:25','2004-12-30','7',NULL),(63,3,'Luis Hernandez Gonzalez','C. Liceo de Curicó',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:28','2003-06-04','7',NULL),(64,3,'Nicolas Diaz Leighton','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:31','2003-11-09','13',NULL),(65,3,'Benjamin Olivares Jimenez','A. San Ignacio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:36','2003-01-22','13',NULL),(66,3,'Martin Olavarria Jara','C. A. Puerto Sur','-',NULL,'-',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:39','2003-11-26','10',NULL),(67,3,'Diego Ibacache Basaez','C. A. Limache',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:44','2003-06-17','5',NULL),(68,3,'David Hernández Amador','C. A. Limache',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:50','2004-12-20','5',NULL),(69,3,'Rodrigo Manriquez Lujan','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:52','2004-01-25','13',NULL),(70,3,'Joaquin Vicente Lopehandia Zepeda','A. Ingles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:56','2004-12-04','4',NULL),(71,3,'Tomas Ortiz Montenegro','A. San Ignacio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:59','2003-08-30','13',NULL),(72,3,'Gabriel Muñoz Squella','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:02','2003-03-28','13',NULL),(73,3,'Andres Marchant Labbe','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:05','2003-08-12','13',NULL),(74,3,'Felipe Torres Cifuentes','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:08','2004-02-08','13',NULL),(75,3,'Pedro Arrieta Olivares','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:11','2003-01-14','13',NULL),(76,3,'Jose Guarachi Rodriguez','A. San Ignacio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:14','2003-01-29','13',NULL),(77,3,'Rodrigo Cerda ','C. D. Pilauco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:18','2003-03-20','10',NULL),(78,4,'Fabian Ferrufino Robledo','A. Copiapó','X','+0.2','10.27','+0.6','10.26','+0.1','4','10.06','-0.3','M','-0.0','10.59','+0.3','10.59','5','2018-05-27 13:44:18','2018-05-27 15:28:42','2004-01-22','3',NULL),(79,4,'Antonio Errazuriz Subercaseaux','A. Santiago','X','+0.4','X','+0.4','M','+0.0','1','X','-0.7','X','-0.2','X','-0.1','N\\M','95','2018-05-27 13:44:18','2018-05-27 15:31:52','2004-07-05','13',NULL),(80,4,'Bruno Gonzalo Ordenes Cisterna','C. A. Huasco','9.56','+0.5','9.76','+0.5','9.65','-0.5','3','M','-0.5','9.68','+0.4','X','+0.6','9.76','7','2018-05-27 13:44:18','2018-05-27 15:30:53','2004-08-21','3',NULL),(81,4,'Martín  Úrzua Opazo','A. Francés','10.71','+0.2','10.27','+0.4','10.64','+0.2','5','10.32','-0.0','10.21','-0.1','10.37','-0.7','10.71','4','2018-05-27 13:44:18','2018-05-27 15:27:04','2004-12-06','13',NULL),(82,4,'Martin Olavarria Jara','C. A. Puerto Sur','X','+0.3','11.67','+0.5','11.89','+0.3','8','11.88','+0.7','11.82','-0.1','12.11','-0.7','12.11','1','2018-05-27 13:44:18','2018-05-27 15:23:45','2003-11-26','10',NULL),(83,4,'Clemente Zenteno Maturana','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-27 13:44:18','2018-05-27 15:06:03','2003-03-30','13',NULL),(84,4,'Nicolas Phillipi Yunisic','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-27 13:44:18','2018-05-27 15:06:06','2003-07-07','13',NULL),(85,4,'Tomas Concha Cardenas','A. Santiago','X','+0.1','X','+0.5','X','-1.2','2','X','-0.3','x','+0.1','10.10','+0.1','10.10','6','2018-05-27 13:44:18','2018-05-27 15:29:48','2003-09-05','13',NULL),(86,4,'Jose Vicente Peña Alvarado','C. Génesis','X','+0.5','11.14','+0.8','11.48','-0.6','7','X','-0.8','X','-0.1','11.78','+0.2','11.78','2','2018-05-27 13:44:18','2018-05-27 15:24:39','2003-11-17','6',NULL),(87,4,'Cristobal Alejandro Salazar Alarcon','C. Génesis','X','+0.2','10.82','+0.7','X','-1.1','6','10.96','-0.2','-','','11.54','+0.1','11.54','3','2018-05-27 13:44:18','2018-05-27 15:25:53','2003-03-19','6',NULL),(88,5,'Alexander Zamora','A. Atacama','13.32','+0.5','13.14','+0.3','12.96','-0.1','9','11.59','+0.4','11.76','-0.5','13.05','-0.2','10.32','','2018-05-27 14:11:56','2018-05-27 15:33:17','2001','3',''),(89,6,'Aylimm Muñoz Diaz','A. de A. Castro','X',NULL,'X',NULL,'3.56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.56','7','2018-05-27 16:56:24','2018-05-27 17:08:54','2004-08-16','10','212'),(90,6,'Laura Bustamante González','Escuela de Atletismo Osorno','x',NULL,'3.45',NULL,'3.50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.50','8','2018-05-27 16:56:24','2018-05-27 17:08:48','2004-09-24','10','200'),(91,6,'Cristianne Neumann ','C. D. Pilauco','3.79',NULL,'3.81',NULL,'3.86',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.86','5','2018-05-27 16:56:24','2018-05-27 17:09:17','2003-09-05','10','276'),(92,6,'Maria Squella Contardo','CDUC','3.63',NULL,'X',NULL,'4.17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.17','4','2018-05-27 16:56:24','2018-05-27 17:09:20','2003-04-14','13','347'),(93,6,'Giza Dayanee Aguayo Vasquez','C. Génesis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:56:24','2018-05-27 17:09:46','2004-04-13','6',NULL),(94,6,'Orión Renata Carrasco Carrillo','C. Manquemávida de Santa Cruz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:56:24','2018-05-27 17:09:42','2003-08-23','6',NULL),(95,6,'Emilia Alejandra Cabrera Valenzuela','C. Manquemávida de Santa Cruz','3.38',NULL,'3.60',NULL,'2.98',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.60','6','2018-05-27 16:56:24','2018-05-27 17:09:01','2003-09-06','6','220'),(96,6,'Valentina Duque Muñoz','C. Liceo de Curicó',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:56:24','2018-05-27 17:09:38','2003-09-09','7',NULL),(98,6,'Agustina Cruz','CDUC','4.79',NULL,'4.56',NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.79','1','2018-05-27 16:56:24','2018-05-27 17:09:32','2003-03-31','13','503'),(99,6,'Cecilia Millaray','A. Ingles','2.80',NULL,'3.62',NULL,'4.31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.31','3','2018-05-27 16:56:24','2018-05-27 17:09:25','2003-03-01','4','381'),(100,6,'Martina Delgado','G. Manzanales','X','','3.80',NULL,'4.57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.57','2','2018-05-27 16:56:24','2018-05-27 17:09:28','2004-07-15','10','446'),(101,7,'Camily Reyes Ibarra','Academia Iquique Bajo Molle','X','+0.1','9.33','+0.2','9.46','+1.0','1','9.38','+0.2','9.57','+0.6','9.87','+0.9','9.87','6','2018-05-27 17:22:57','2018-05-27 17:48:02','2003-08-06','1',NULL),(102,7,'Claudia Retamales Nuñez','OASSI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-27 17:22:57','2018-05-27 17:57:02','2003-02-12','13',NULL),(103,7,'Melany Rocío Guerrero Chayle','A. Copiapó','X','+0.0','X','+0.2','M','-0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M/N','95','2018-05-27 17:22:57','2018-05-27 17:57:00','2004-07-09','3',NULL),(104,7,'Maria  Reyes Fernandez','C. A. Gerardo Manzanares ','9.11','+0.4','9.85','+0.9','9.76','-0.3','4','9.54','+0.9','9.27','-0.0','X','+0.9','9.85','7','2018-05-27 17:22:57','2018-05-27 17:50:45','2003-05-01','10',NULL),(105,7,'Maria Paz Lira Delgeon','CDUC','9.34','+0.0','9.72','+0.8','9.80','+0.2','3','10.00','-0.6','X','+1.0','X','+1.3','10.00','5','2018-05-27 17:22:57','2018-05-27 17:52:04','2003-10-07','13',NULL),(106,7,'Francisca Antonia  Torres  Quintana','C. A. Ñielol','9.79','+0.0','X','+1.6','10.06','+0.8','5','X','+0.4','10.36','+1.2','10.39','+1.0','10.39','3','2018-05-27 17:22:57','2018-05-27 17:59:35','2003-01-22','9',NULL),(107,7,'Cecilia Millaray Mellado Carvajal','A. Ingles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-27 17:22:57','2018-05-27 17:57:05','2003-01-03','4',NULL),(108,7,'Nicole Radonich Silva','C. de Atletismo Punta Arenas','10.01','+0.2','10.16','+1.0','10.09','+0.3','6','9.62','+0.1','9.61','+0.5','X','+1.2','10.16','4','2018-05-27 17:22:57','2018-05-27 17:53:45','2003-11-13','12',NULL),(109,7,'Florencia  Millar Ponce','A. Francés','9.56','-0.3','X','+0.4','X','+1.2','2','9.69','+0.1','9.70','+1.6','9.52','+1.8','9.70','8','2018-05-27 17:22:57','2018-05-27 17:54:52','2004-01-06','13',NULL),(110,7,'Maria Garnham Guzman','CDUC','10.62','+0.3','10.66','-0.4','10.49','+1.9','7','10.37','+1.9','10.78','+1.4','10.84','+1.0','10.84','1','2018-05-27 17:22:57','2018-05-27 17:55:51','2003-06-18','13',NULL),(111,7,'Martina Zepeda  Pedemonte','A. Atacama','10.75','+0.1','10.46','+0.1','X','+2.1','8','X','+1.0','X','+1.5','10.31','+1.9','10.75','2','2018-05-27 17:22:57','2018-05-27 17:56:39','2003-03-29','3',NULL),(112,8,'PASCAL VALENZUELA','SAINT GEORGES COLLEGE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 16:30:37','2004','13',NULL),(113,8,'MARGARITA SANTA MARÍA','SAINT GEORGES COLLEGE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 16:30:50','2005','13',NULL),(114,8,'ANTONIA RAMIREZ','SAINT GEORGES COLLEGE','4.11','+0.1','x','-0.6','3.77','-0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.11',NULL,'2018-08-04 01:05:11','2018-08-04 16:32:37','2005','13',NULL),(115,8,'MAGDALENA SOUMASTRE','SAINT GEORGES COLLEGE','x','+0.4','3.82','-0.7','x','-0.4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.82',NULL,'2018-08-04 01:05:11','2018-08-04 16:33:52','2005','13',NULL),(116,8,'COLOMBA GORDON','SAINT GEORGES COLLEGE','x','+0.7','3.93','-0.5','4.06','-0.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.06',NULL,'2018-08-04 01:05:11','2018-08-04 16:34:53','2005','13',NULL),(117,8,'MATILDE ROSARIO GONZALEZ ALAMO','SAN FRANCISCO DE PAINE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:53:12','2004','13',NULL),(118,8,'ANTONIA OCHAGAVÍA TORRES','SANTA ÚRSULA- VITACURA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:53:18','2005','13',NULL),(119,8,'CLARA GONZÁLEZ LECAROS','SANTA ÚRSULA- VITACURA','x',NULL,'x',NULL,'x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','99','2018-08-04 01:05:11','2018-08-04 17:53:22','2005','13',NULL),(120,8,'RAFAELLA LACALLE','SAN JOSE DE CHICUREO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:53:06','2006','13',NULL),(121,8,'ELIZABETH ARRIAGADA','COLEGIO LA CONCEPCIÓN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:52:59','2004','13',NULL),(122,8,'DANIELA JERI','CORAZON DE MARIA','2.79','-0.0','3.00','-0.0','3.08','-0.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.08',NULL,'2018-08-04 01:05:11','2018-08-04 16:36:38','2004','13',NULL),(123,8,'JAVIERA COOPER','CORAZON DE MARIA','x',NULL,'x',NULL,'x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','98','2018-08-04 01:05:11','2018-08-04 17:53:48','2005','13',NULL),(124,8,'MARTINA CISTERNAS','ALONSO DE ERCILLA','x','-0.7','x','-0.2','3.44','-0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.44',NULL,'2018-08-04 01:05:11','2018-08-04 16:39:02','2005','13',NULL),(125,8,'MATILDE ROSARIO GONZALEZ ALAMO','SAN FRANCISCO DE PAINE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:52:53','2004','13',NULL),(126,8,'LAURA MATTHEI','SAN JOSE DE CHICUREO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:52:48','2006','13',NULL),(127,8,'MARTINA HERNANDEZ','LICEO AGUSTO D HALMAR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:52:45','2004','13',NULL),(128,8,'CAMILA TORO','ALONSO DE ERCILLA','3.59','-0.5','3.71','-0.3','3.97','+1.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.97',NULL,'2018-08-04 01:05:11','2018-08-04 16:39:16','2004','13',NULL),(129,8,'ELISA MACKENNA','SIN CLUB ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:53:38','2005','13',NULL),(130,8,'CLARA TORREALBA','COLEGIO SAN ISIDRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:53:42','2005','13',NULL),(131,8,'FRANCISCA O´KREY','THE SOUTHERN CROSS','3.70','-0.2','x','-0.4','3.76','+0.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.76',NULL,'2018-08-04 01:05:11','2018-08-04 17:46:26','2004','13',NULL),(132,8,'MATILDA DIAZ','SAN JOSE DE CHICUREO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:52:35','2006','13',NULL),(133,8,'CLARA ARRIAGADA','COLEGIO LOS ANDES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:52:29','2005','13',NULL),(134,8,'FLORENCIA BALBOA','EPULLAY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:52:26','2005','13',NULL),(135,8,'MARIANA CATALDO','THE SOUTHERN CROSS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:52:20','2004','13',NULL),(136,8,'IGNACIA PINTO','ARTURO TORO AMOR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:52:17','2004','13',NULL),(137,8,'SOFÍA BUSTOS CRUZ','MAYOR PEÑALOLÉN','X','-0.0','3.99','+0.3','3.90','+0.9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.99',NULL,'2018-08-04 01:05:11','2018-08-04 17:46:11','2005','13',NULL),(138,8,'MARTINA BAEZA','COLEGIO SAN ISIDRO','3.47','+0.4','3.34','+0.3','3.63','-0.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.69',NULL,'2018-08-04 01:05:11','2018-08-04 17:46:05','2005','13',NULL),(139,8,'JOSEFINA UNDURRAGA','COLEGIO SAN ISIDRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:52:11','2005','13',NULL),(140,8,'CONSTANZA SANGUINETTI','ALEMÁN DE SANTIAGO','4.04','+1.1','3.78','+0.4','3.91','+0.4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.04',NULL,'2018-08-04 01:05:11','2018-08-04 17:45:54','2005','13',NULL),(141,8,'JAVIERA ÁGUILA','CARAMPANGUE','2.41','+1.4','2.98','+0.4','3.10','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.10',NULL,'2018-08-04 01:05:11','2018-08-04 17:45:45','2004','13',NULL),(142,8,'LUCIA ERRAZURIZ','COLEGIO LOS ANDES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:58','2005','13',NULL),(143,8,'MARTINA PRIDA','COLEGIO SAN ISIDRO','X','+0.2','X','+0.0','X','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','98','2018-08-04 01:05:11','2018-08-04 17:51:55','2005','13',NULL),(144,8,'JOSEFINA UNDURRAGA','COLEGIO SAN ISIDRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:51','2005','13',NULL),(145,8,'PAULA MUNITA ','COLEGIO SAN ISIDRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:48','2005','13',NULL),(146,8,'FLORENCIA INFANTE','COLEGIO SAN ISIDRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:44','2004','13',NULL),(147,8,'FLORENCIA INFANTE','COLEGIO SAN ISIDRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:41','2004','13',NULL),(148,8,'KEIKO KOBAYASHI SILVA','ATLETICO SPEED MAIPU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:37','2005','13',NULL),(149,8,'JOSEFINA SILVA- PAREDES ANTUNEZ','SANTA ÚRSULA- VITACURA','X','-0.1','X','+0.1','2.52','+0.7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.52',NULL,'2018-08-04 01:05:11','2018-08-04 17:44:18','2005','13',NULL),(150,8,'MARIANA OVALLE','COLEGIO LOS ANDES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:32','2004','13',NULL),(151,8,'PILAR VALLOTTON','THE SOUTHERN CROSS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:29','2004','13',NULL),(152,8,'FERNANDA SAAVEDRA','LA MISIÓN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:24','2004','13',NULL),(153,8,'SARA GRAF','ALEMÁN DE SANTIAGO','3.70','+1.0','3.75','-0.0','X','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.75',NULL,'2018-08-04 01:05:11','2018-08-04 17:44:01','2006','13',NULL),(154,8,'DANIELA PUGA','CARAMPANGUE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:19','2004','13',NULL),(155,8,'EMILIA INDA MAGALHAES','JUANITA DE LOS A.','X','+0.1','3.65','-0.1','X','+1.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.65',NULL,'2018-08-04 01:05:11','2018-08-04 17:43:55','2004','13',NULL),(156,8,'MARTINA PRIDA','COLEGIO SAN ISIDRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:10','2005','13',NULL),(157,8,'MARTINA PRIDA','COLEGIO SAN ISIDRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:06','2005','13',NULL),(158,8,'MARTINA FERRADA','THE SOUTHERN CROSS','X','+0.1','4.19','-0.9','4.38','+1.0','2','4.39','+0.6','4.32','-0.7','4.51','-0.0','4.51','6','2018-08-04 01:05:11','2018-08-04 17:19:09','2006','13',NULL),(159,8,'FRANCISCA ROJAS','ALONSO DE ERCILLA','X','-0.0','X','+0.1','4.11','+0.7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.11',NULL,'2018-08-04 01:05:11','2018-08-04 17:19:54','2005','13',NULL),(160,8,'MACARENA ÁLVAREZ REYES','SANTA ÚRSULA- VITACURA','X','-0.0','X','-1.3','4.11','+0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.11',NULL,'2018-08-04 01:05:11','2018-08-04 17:43:47','2005','13',NULL),(161,8,'MAGDALENA COFRE CELIS','COLEGIO DEL SAGRADO CORAZON',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:51:01','2005','13',NULL),(162,8,'AGUSTINA LOBOS','COLEGIO SAN FRANCISCO JAVIER DE HUECHURABA','3.89','+0.1','3.76','-0.7','X','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.89',NULL,'2018-08-04 01:05:11','2018-08-04 17:43:42','2005','13',NULL),(163,8,'ANTONIA CERDA KETERER','COLEGIO DEL SAGRADO CORAZON','3.92','+0.2','X','-0.5','3.00','-0.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.92',NULL,'2018-08-04 01:05:11','2018-08-04 17:43:35','2005','13',NULL),(164,8,'CAROLINA VIDAL','COLEGIO LOS ANDES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:50:51','2004','13',NULL),(165,8,'BELEN ARANEDA VIANA','TREBULCO SCHOOL','3.47','+0.2','2.98','-1.0','3.15','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.47',NULL,'2018-08-04 01:05:11','2018-08-04 17:22:39','2005','13',NULL),(166,8,'AMELIA RADMANN VALDÉS','COLEGIO CUMBRES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:50:47','2004','13',NULL),(167,8,'ANTONIA MARÍN ERRÁZURIZ','COLEGIO CUMBRES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:50:42','2004','13',NULL),(168,8,'RENATA ALVARÉZ','MIGUEL RAFAEL PRADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:50:35','2004','13',NULL),(169,8,'MARIA JESUS IÑIGUEZ','COLEGIO LOS ANDES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:50:30','2005','13',NULL),(170,8,'DOMINGA GUTIERREZ','ATL.FRANCES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:50:26','2004','13',NULL),(171,8,'MATILDA VUSKOVIC','COLEGIO SAN FRANCISCO JAVIER DE HUECHURABA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:50:23','2005','13',NULL),(172,8,'AGUSTINA ALLENDE','LINCOLN CHICUREO','4.10','+0.5','3.65','-0.7','3.69','-0.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.10',NULL,'2018-08-04 01:05:11','2018-08-04 17:23:21','2004','13',NULL),(173,8,'JOSEFA MERINO','THE SOUTHERN CROSS','3.87','+0.2','3.90','-0.3','3.97','-0.7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.97',NULL,'2018-08-04 01:05:11','2018-08-04 17:23:38','2005','13',NULL),(174,8,'BERNARDITA CUEVAS TORO','SANTA ÚRSULA- VITACURA','3.82','+0.2','3.78','-0.0','3.86','-0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.86',NULL,'2018-08-04 01:05:11','2018-08-04 17:43:19','2005','13',NULL),(175,8,'PÍA PUMARINO ZAMBRANO','JUANITA DE LOS A.','X','+0.1','3.96','-0.3','4.23','+0.6','1','4.09','-1.0','X','+0.8','X','+0.2','4.23','8','2018-08-04 01:05:11','2018-08-04 17:25:29','2004','13',NULL),(176,8,'ANTONIA ECHENIQUE RAMÍREZ','COLEGIO CUMBRES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:50:18','2004','13',NULL),(177,8,'FLORENCIA MILLAR','ALONSO DE ERCILLA','4.55','-0.0','4.47','+0.0','X','-1.1','6','4.40','+1.0','4.27','+0.4','4.29','-0.455','4.55','4','2018-08-04 01:05:11','2018-08-04 17:27:46','2004','13',NULL),(178,8,'JOSEFINA SABUGAL','SIN CLUB ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:50:11','2004','13',NULL),(179,8,'CATALINA BERNALES MARFIL','JUANITA DE LOS A.','X','-0.0','3.05','+0.3','3.95','-1.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.95',NULL,'2018-08-04 01:05:11','2018-08-04 17:43:07','2005','13',NULL),(180,8,'CAMILA TAVONATTI','NAZARET','3.70','-0.2','4.11','+0.2','4.49','+0.1','4','X','+1.2','4.21','+0.3','4.50','+0.8','4.50','7','2018-08-04 01:05:11','2018-08-04 17:32:01','2004','13',NULL),(181,8,'MARTINA MARINÉ DURANDEAU','COLEGIO CUMBRES','X','+0.2','X','+0.0','4.15','-0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.15',NULL,'2018-08-04 01:05:11','2018-08-04 17:43:00','2005','13',NULL),(182,8,'FERNANDA BRAVO OVIEDO','TREBULCO SCHOOL','3.93','+0.4','3.61','+0.0','3.58','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.93',NULL,'2018-08-04 01:05:11','2018-08-04 17:42:32','2005','13',NULL),(183,8,'ASUNCION DREYFUS','SAN JOSE DE CHICUREO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:50:04','2005','13',NULL),(184,8,'MAGDALENA COFRÉ','COLEGIO DEL SAGRADO CORAZON','X','+0.6','X','-0.0','3.82','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.82',NULL,'2018-08-04 01:05:11','2018-08-04 17:42:19','2004','13',NULL),(185,8,'MATILDE FERNANDEZ','SIN CLUB ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:42:47','2005','13',NULL),(186,8,'GRACIA DE ALENCAR','SIN CLUB ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:42:45','2004','13',NULL),(187,8,'TRINIDAD MATTE','NAZARET','4.64','+0.5','4.54','-0.1','4.60','+0.9','7','X','+0.1','4.55','-0.6','X','+0.2','4.64','2','2018-08-04 01:05:11','2018-08-04 17:41:10','2004','13',NULL),(188,8,'AMANDA GIL','ALEMÁN DE SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:42:41','2004','13',NULL),(189,8,'ISABELLA SOLAR','COLEGIO SAN FRANCISCO JAVIER DE HUECHURABA','4.14','-0.1','3.90','-0.6','3.81','+0.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.90',NULL,'2018-08-04 01:05:11','2018-08-04 17:41:43','2004','13',NULL),(190,8,'ELISA TUSET','SIN CLUB ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:05:11','2018-08-04 17:41:54','2004','13',NULL),(191,9,'MARTIN PACHECO','CORAZON DE MARIA','X','+0.2','3.45','+0.0','3.55','-0.7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.55','26','2018-08-04 01:07:13','2018-08-05 18:10:21','2004','13',NULL),(192,9,'BENJAMIN GONZALEZ','CORAZON DE MARIA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:23:27','2005','13',NULL),(193,9,'THOMAS HERRERA AYALA','FRANCISCO PETRINOVIC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:23:34','2005','13',NULL),(194,9,'VICENTE BARRA','CORAZON DE MARIA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:23:39','2005','13',NULL),(195,9,'BENJAMIN SAN MARTIN','CORAZON DE MARIA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:23:43','2005','13',NULL),(196,9,'FELIPE BERISTAIN','COLEGIO SAN ISDRO','X','+1.2','X','+0.9','4.13','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.13','19','2018-08-04 01:07:13','2018-08-05 18:11:26','2005','13',NULL),(197,9,'FELIPE ALBERTO AYBAR','CORAZON DE MARIA','3.73','+1.1','4.14','+0.1','4.07','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.07','21','2018-08-04 01:07:13','2018-08-05 18:11:45','2005','13',NULL),(199,9,'ANDRÉS OSORIO BARROS','COLEGIO SAN ISDRO','X','+2.4','4.83','+0.2','X','-0.1','1°','4.67','+0.3','4.71','+0.4','4.51','+1.0','4.83','8','2018-08-04 01:07:13','2018-08-05 18:04:00','2005','13',NULL),(201,9,'CARLOS BAEZA','SSCC ALAMEDA','3.91','+0.6','4.03','+0.0','3.86','-0.7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.03','23','2018-08-04 01:07:13','2018-08-05 18:12:50','2005','13',NULL),(202,9,'DOMINGO DROSTE ','COLEGIO SAN ISDRO','4.57','+1.5','X','+0.8','X','-0.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.57','12','2018-08-04 01:07:13','2018-08-05 18:12:26','2005','13',NULL),(203,9,'SANTIAGO AMEZQUITA LOPEZ','FRANCISCO PETRINOVIC','3.70','-0.1','3.56','-0.5','2.73','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.70','24','2018-08-04 01:07:13','2018-08-05 18:13:29','2004','13',NULL),(204,9,'GABRIEL FUENTES','SAN IGNACIO EL BOSQUE','4.46','+0.1','4.93','-0.4','4.76','-1.7','3°','x','+0.4','4.71','+0.8','x',NULL,'4.93','6','2018-08-04 01:07:13','2018-08-05 18:05:20','2004','13',NULL),(205,9,'JOSÉ IGNACIO TEARE','SAN IGNACIO EL BOSQUE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:23:50','2005','13',NULL),(206,9,'MIGUEL ÁNGEL GUTIÉRREZ','CARAMPANGUE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:23:55','2004','13',NULL),(207,9,'DOMINGO CAÑAS','SAN IGNACIO EL BOSQUE','3.63','-1.0','3.52','+0.1','X','-0.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.63','25','2018-08-04 01:07:13','2018-08-05 18:13:48','2006','13',NULL),(208,9,'GONZALO TOMÁS DUQUE GONZALEZ','SAN FRANCISCO DE PAINE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:01','2004','13',NULL),(209,9,'GONZALO TOMÁS DUQUE GONZALEZ','SAN FRANCISCO DE PAINE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:07','2004','13',NULL),(210,9,'JUAN FRANCISCO ROSSI','CARAMPANGUE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:11','2004','13',NULL),(211,9,'DOMINGO BUSTOS BRAVO','SAN FRANCISCO DE PAINE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:15','2004','13',NULL),(212,9,'DOMINGO BUSTOS BRAVO','SAN FRANCISCO DE PAINE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:19','2004','13',NULL),(213,9,'JORGE ROZAS VARGAS','VERBO DIVINO','X','+0.6','4.49','-0.2','4.42','-1.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.49','15','2018-08-04 01:07:13','2018-08-05 18:14:24','2004','13',NULL),(214,9,'CRISTOBAL JARA GANA','PADRE HURTADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 18:21:18','2004','13',NULL),(215,9,'CRISTOBAL CAMPOS MADARIAGA','TREBULCO SCHOOL','4.07','+0.3','X','+0.3','X','-0.7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.07','22','2018-08-04 01:07:13','2018-08-05 18:14:47','2004','13',NULL),(216,9,'ALFONSO SÁNCHEZ ALARCÓN','COLEGIO CUMBRES','3.78','+0.3','4.21','+0.4','3.88','-0.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.21','17','2018-08-04 01:07:13','2018-08-05 18:15:15','2005','13',NULL),(217,9,'CRISTÓBAL WAGNER','ALEMÁN DE SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:25','2005','13',NULL),(218,9,'IAN BOSSHARD','ALEMÁN DE SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:31','2005','13',NULL),(219,9,'CRISTOBAL VALDÉS','CARAMPANGUE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:37','2004','13',NULL),(220,9,'LEON MIRANDA CABELLO','TREBULCO SCHOOL','4.14','+0.4','4.20','+0.6','X','+0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.20','18','2018-08-04 01:07:13','2018-08-05 18:15:30','2004','13',NULL),(221,9,'IGNACIO LEMA','SAN JOSE DE CHICUREO','4.56','+0.4','4.74','+0.0','4.77','+0.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.77','9','2018-08-04 01:07:13','2018-08-05 18:15:55','2004','13',NULL),(222,9,'VICENTE VERGARA CORREA','VERBO DIVINO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:41','2005','13',NULL),(223,9,'MAURICIO BUSCHMANN CAMBIASO','COLEGIO CUMBRES','4.67','+0.5','4.27','+1.0','4.52','+0.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.67','11','2018-08-04 01:07:13','2018-08-05 18:16:38','2005','13',NULL),(224,9,'MIGUEL ALBERTO ESPINOZA BUSTAMANTE','SAN FRANCISCO DE PAINE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:48','2004','13',NULL),(225,9,'MIGUEL ALBERTO ESPINOZA BUSTAMANTE','SAN FRANCISCO DE PAINE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:50','2004','13',NULL),(226,9,'DIEGO RAMÍREZ','ALEMÁN DE SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:55','2004','13',NULL),(227,9,'THOMAS SHARPE ROJAS','PADRE HURTADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:24:59','2004','13',NULL),(228,9,'BENJAMIN ROACH MATESIC','TREBULCO SCHOOL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:25:37','2005','13',NULL),(229,9,'SAMUEL MATTE','MAITENES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:07:13','2018-08-05 17:19:41','2005','13',NULL),(230,9,'RAIMUNDO VELASCO BARAÑAO','VERBO DIVINO','X','+1.5','X','+2.2','4.84','+0.7','2°','4.87','+0.3','x','+0.4','4.77','+1.4','4.84','7','2018-08-04 01:07:13','2018-08-05 18:05:31','2005.0','13',NULL),(231,9,'MARTÍN URZÚA','INSTITUTO LA SALLE DE LA FLORIDA','4.55','+0.8','X',NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.55','13','2018-08-04 01:07:13','2018-08-05 17:28:58','2004','13',NULL),(232,9,'DIEGO SAVIÑON','INSTITUCION TERESIANA','4.53','+0.2','4.53','+0.3','4.28','+0.8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.53','14','2018-08-04 01:07:13','2018-08-05 18:17:12','2005.0','13',NULL),(233,9,'MATIAS NORAMBUENA FRANCE','VERBO DIVINO','4.75','-0.7','X','+1.2','X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.75','10','2018-08-04 01:07:13','2018-08-05 18:17:32','2004.0','13',NULL),(234,9,'AMBROSIO CONCHA CORRAL','VERBO DIVINO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:19:16','2005','13.',NULL),(235,9,'JOSE PEDRO CORDEAU LOBOS','PADRE HURTADO','X','+0.1','4.41','+2.3','X','+0.8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.41','16','2018-08-04 01:07:13','2018-08-05 18:18:11','2004','13',NULL),(236,9,'AFONSO PLANDIURA NAVARRETE','PADRE HURTADO','4.38','-0.0','4.93','+1.3','4.81','+1.2','4°','x','+0.6','4.68','+0.8','4.85','+1.4','4.93','5','2018-08-04 01:07:13','2018-08-05 18:08:10','2004','13',NULL),(237,9,'MARTÍN SEEFELDT','COLEGIO SAN FRANCISCO JAVIER DE HUECHURABA','X','+0.9','X','+0.8','X','+0.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','88','2018-08-04 01:07:13','2018-08-05 18:21:07','2004','13.0',NULL),(238,9,'DIEGO COSTA','SAINT GEORGES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:07:13','2018-08-05 17:18:46','2005','13',NULL),(239,9,'PEDRO MORALES','SAINT GEORGES','5.42','+1.0','5.40','+0.9','5.28','+0.3','7°','5.15','+0.8','4.42','+0.8','5.36','+1.0','5.42','3','2018-08-04 01:07:13','2018-08-05 18:08:10','2004','13',NULL),(240,9,'LUCAS PALACIOS NAZIF','SSCC MANQUEHUE','5.65','+0.2','5.83','+1.0','5.66','+0.9','8°','5.58','+1.4','5.74','+0.7','5.99','+0.3','5.99','1','2018-08-04 01:07:13','2018-08-05 18:08:11','2004','13',NULL),(241,10,'FERNANDA VILLARROEL','THE GREENLAND',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:45:36','2018-08-05 19:32:14','2005','13',NULL),(242,10,'BARBARA VALENZUELA','THE GREENLAND',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:45:36','2018-08-05 19:32:18','2006','13',NULL),(243,10,'MATHILDE SANDROCK','ALEMÁN DE SANTIAGO','4.15',NULL,'4.21','+1.3','3.99',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.21 (444)','3','2018-08-04 01:45:36','2018-08-05 19:32:48','2004','13',NULL),(244,10,'AMANDA GIL','ALEMÁN DE SANTIAGO','4.41','+1.1','X',NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.41 (544)','2','2018-08-04 01:45:36','2018-08-05 19:32:41','2004','13',NULL),(245,10,'MACARENA ACHURRA LUCK','SANTA ÚRSULA- VITACURA','4.42',NULL,'4.50','+1.4','X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.50 (589)','1','2018-08-04 01:45:36','2018-08-05 19:32:35','2005','13',NULL),(246,10,'ANTONIA CAROCA','SSCC ALAMEDA','x',NULL,'4.13','+1.1','4.11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.13 (411)','4','2018-08-04 01:45:36','2018-08-05 19:32:58','2005','13',NULL),(247,11,'EDUARDO RODAS','SAINT GEORGES','3.41','-0.2','4.39','-0.3','4.03','-0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.39','5','2018-08-04 01:48:25','2018-08-04 17:06:19','2004','13',NULL),(248,11,'BENJAMÍN LEHUEDE','SAINT GEORGES','4.66','0.2','4.49','-0.5','4.43','0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.66','3','2018-08-04 01:48:25','2018-08-04 17:07:04','2004','13',NULL),(249,11,'DIEGO BUSTAMANTE BASTIAS','SSCC ALAMEDA','5.53','0.9','5.44','-1.2','5.49','-0.6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.53','1','2018-08-04 01:48:25','2018-08-04 17:06:44','2004','13',NULL),(250,11,'JOSÉ PALACIOS CARDENAS','SSCC ALAMEDA','X','0.1','X','-0.5','4.55','0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.55','4','2018-08-04 01:48:25','2018-08-04 17:07:35','2004','13',NULL),(251,11,'PEDRO CAÑAS','SAN IGNACIO EL BOSQUE','X','0.0','4.86','0.3','4.90','-0.9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.90','2','2018-08-04 01:48:25','2018-08-04 17:05:57','2004','13',NULL),(252,11,'JOAQUÍN OSSES MUÑOZ','NOCEDAL','3.86','0.3','4.10','-0.5','3.98','-0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.10','6','2018-08-04 01:48:25','2018-08-04 17:08:20','2004','13',NULL),(253,8,'Isabel Lira','Andrew C.S.','4.46','0.3','4.44','-0.1','4.88','-1.0','8','4.72','+0.1','4.92','+1.3','4.82','+0.8','4.92','1','2018-08-04 16:22:37','2018-08-04 17:40:04','2004','13',NULL),(254,8,'Isidora Albornoz','Alcazar Las Condes','4.28','+0.3','4.43','-0.1','4.42','+0.4','3','4.11','+1.5','4.31','+0.7','4.60','+1.1','4.60','3','2018-08-04 16:24:51','2018-08-04 16:43:23','2005','13',NULL),(255,8,'Laura Alamos','Sta. Ursula','4.52','-0.1','3.95','-0.5','4.36','-1.4','5','X','1.0','X','+1.3','4.32','+0.8','4.52','5','2018-08-04 16:27:18','2018-08-04 17:38:44','2004','13',NULL),(256,12,'Matías Perez','Santa Maria','2.95','','2.64','','2.92','','1','3.27','0.4','3.15','','3.12','','3.27','3','2018-08-05 14:53:18','2018-08-05 14:58:12','2005','13',NULL),(257,12,'Daniel Herrera Cordero','Francisco Petrinovic','3.64','','3.86','','3.93','0.1','2','3.34','','X','','3.73','','3.93','2','2018-08-05 14:55:13','2018-08-05 14:58:20','2004','13',NULL),(258,12,'Matías SotoSoto','Francisco Petrinovic','4.46','','4.84','','X','','3','4.80','','4.87','','4.95','-1.0','4.95','1','2018-08-05 14:57:13','2018-08-05 14:58:39','2004','13',NULL),(259,9,'PATRICIO HERNANDEZ','PETRINOVIC','4.06','+0.2','3.99','+0.8','4.08','+1.7','','','','','','','','4.08','20','2018-08-05 16:12:41','2018-08-05 18:19:47','2005','13',NULL),(260,9,'MAXIMILIANO ARRIAGADA','Carampangue','3.31','+0.8','3.35','+0.8','X','','','','','','','','','3.35','27','2018-08-05 16:13:23','2018-08-05 18:20:54','2004','13',NULL),(261,9,'CRISTOBAL BERNALES','VERBO DIVINO','4.95','-0.7','5.02','+1.0','5.06','+1.5','5°','x','+0.6','4.92','+1.2','5.22','+1.5','5.22','4','2018-08-05 16:14:14','2018-08-05 18:08:55','2004','13',NULL),(262,9,'Lucas Ducaud','PEDRO DE V. P.','5.13','-0.6','5.41','-0.2','5.27','+1.1','6°','5.44','+1.3','x','+1.2','x','-0.2','5.44','2','2018-08-05 16:14:54','2018-08-05 18:09:35','2004','13',NULL),(263,10,'ISIDORA SANTA CRUZ','NAZARET','3.77','','4.00','+0.5','3.87','','','','','','','','','4.00 (359)','6','2018-08-05 19:28:58','2018-08-05 19:33:20','2005','13',NULL),(264,10,'AMELIA VARAS','NAZARET','4.02','+0.7','X','','X','','','','','','','','','4.02 (367)','5','2018-08-05 19:29:51','2018-08-05 19:33:08','2004','13',NULL),(265,13,'MARÍA PAZ CORREA MENESES','SANTA MARÍA','3.61','','3.62','','3.39','','','3.32','','3.61','','3.82','','3.82','1','2018-08-05 20:52:43','2018-08-05 20:52:43','2004','13',NULL),(266,13,'FANCESCA SEPÚLVEDA CUEVAS','SANTA MARÍA','3.16','','2.77','','3.22','','','3.24','','2.84','','3.13','','3.24','2','2018-08-05 20:53:41','2018-08-05 20:53:41','2004','13',NULL),(267,13,'GÉNESIS PEZOA','STA. TERES ADE AVILA','X','','1.11','','X','','','X','','X','','X','','1.11','7','2018-08-05 20:54:44','2018-08-05 20:54:44','2004','13',NULL),(268,13,'BELÉN MARCHANT RAUCO','FRANCISCO PETRINOVIC','2.73','','2.64','','2.53','','','2.78','','2.79','','X','','2.79','6','2018-08-05 20:56:22','2018-08-05 20:56:22','2004','13',NULL),(269,13,'CATALINA ESPINOZA','FRANCISCO PETRINOVIC','2.44','','2.41','','2.64','','','2.54','','3.09','','2.72','','3.09','3','2018-08-05 20:57:14','2018-08-05 20:57:14','2006','13',NULL),(270,13,'MOIRA HERRERA','FRANCISCO PETRINOVIC','2.81','','2.62','','2.78','','','2.52','','2.28','','2.03','','2.81','5','2018-08-05 20:58:24','2018-08-05 20:58:24','2004','13',NULL),(271,13,'ANAÍS GALLARDO','SANTA MARÍA','2.72','','X','','X','','','2.52','','2.57','','2.92','','2.92','4','2018-08-05 20:59:25','2018-08-05 20:59:33','2004','13',NULL),(272,15,'ANTONIA CRESTANI REBOLLEDO','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 18:14:41','2018-08-31 18:14:41','1999','13',NULL),(273,15,'JVIERA CONTRERAS GUBBINS','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 18:15:18','2018-08-31 18:15:46','2001','13',NULL),(274,15,'FERNANDA CARABIAS CUEVAS','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 18:16:14','2018-08-31 18:16:14','1996','13',NULL),(275,15,'VIOLETA ARNAIZ CORNEJO','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 18:16:45','2018-08-31 18:16:45','2000','13',NULL),(331,16,'CESAR JOFRE PNCHEIRA','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 18:57:23','2018-08-31 18:57:23','1996','13',NULL),(332,16,'JASON  ROMERO SOTO','C. D. BERNARDO FELMER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 18:57:40','2018-08-31 18:57:40','1999','14',NULL),(333,17,'CESAR JOFRE PINCHEIRA','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 19:18:00','2018-08-31 19:18:00','1996','13',NULL),(334,17,'JASON  ROMERO SOTO','C. D. BERNARDO FELMER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 19:18:18','2018-08-31 19:18:18','1999','14',NULL),(335,18,'RAIMUNDO LEON YAÑEZ','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:34:58','2018-08-31 20:35:27','1999-12-28','13',NULL),(336,18,'JOSE TOMAS ACUÑA BARROS','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:34:58','2018-08-31 20:35:29','2001-04-11','13',NULL),(337,18,'LEÓN CLEMENTE WALKER DEPASIER','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:34:58','2018-08-31 20:35:30','2001-02-14','13',NULL),(338,18,'FELIPE FICA ARANEDA','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:34:58','2018-08-31 20:35:32','1999-01-02','13',NULL),(339,18,'JAIME WOOD LEWIN','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:34:58','2018-08-31 20:35:34','2001-09-28','13',NULL),(340,18,'GUILLERMO CORREA ASPILLAGA','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:34:58','2018-08-31 20:35:36','2001-04-09','13',NULL),(341,18,'PEDRO CORREA GANA','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:34:58','2018-08-31 20:35:38','1997-07-29','13',NULL),(342,18,'EDUARDO MARTIN HUERTA','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:34:58','2018-08-31 20:35:39','1999-02-20','13',NULL),(343,18,'SABASTIAN MARTIN HUERTA','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:34:58','2018-08-31 20:35:41','2000-03-28','13',NULL),(344,19,'ANTONIA FUICA BERGER','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:37:47','2018-08-31 20:37:52','2000-12-20','13',NULL),(345,19,'RAFAELA  RAMIREZ CARBONELL','C. D. COLEGIO PADRE HURTADO CHILLAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:37:47','2018-08-31 20:37:54','2001-11-20','8',NULL),(346,19,'CATALINA IGNACIA CARCAMO  BARRIENTOS','C. A. MAULE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:37:47','2018-08-31 20:37:56','2001-08-04','7',NULL),(347,19,'NICOLA TORRES ALTSCHWAGER','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:37:47','2018-08-31 20:37:58','1996-11-03','13',NULL),(348,19,'VIRGINIA SCHRODER SOTOMAYOR','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:37:47','2018-08-31 20:37:59','2001-05-07','13',NULL),(349,19,'MONICA MONTERO BOBADILLA','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:37:47','2018-08-31 20:38:00','2003-07-11','13',NULL),(350,19,'OLIVIA  GARCIA-HUIDOBRO LAGOS','A. FRANCES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:37:47','2018-08-31 20:38:02','2001-10-22','13',NULL),(351,19,'VICTORIA ROZAS REINECKE','MANQUEHUE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:37:47','2018-08-31 20:38:04','1999-05-15','13',NULL),(352,20,'LUIS O. REYES PARADA','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:43:44','36789.0','13',NULL),(353,20,'PASCAL VEGA  TORRES','A. OASSI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:43:45','36729.0','13',NULL),(354,20,'IGNACIO LUCERO HERNÁNDEZ','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:43:47','37041.0','13',NULL),(355,20,'BENJAMIN ALCAYAGA ','C. A. LA SERENA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:43:48','35370.0','4',NULL),(356,20,'ANDRES ESTEBAN IBARRA OYARCE','A. FRANCES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:43:50','36900.0','13',NULL),(357,20,'RAIMUNDO LEON YAÑEZ','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:43:52','36522.0','13',NULL),(358,20,'VICENTE BELGUERI ROJAS','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:43:54','35545.0','13',NULL),(359,20,'DANIEL VAZQUEZ SALAZAR','C. D. NICOLAS CARVAJAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:43:57','36693.0','13',NULL),(360,20,'ALFONSO OVALLE BAÑADOS','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:43:59','36630.0','13',NULL),(361,20,'MATIAS FERES AGUADO','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:44:00','37027.0','13',NULL),(362,20,'BRANDO OLIVERA AHUMADA','A. A. CASTRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:44:02','36050.0','10',NULL),(363,20,'BURGOS VILLANUEVA MARCELO','C. A. UBB CHILLAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:43:27','2018-08-31 20:44:05','35840.0','8',NULL),(364,21,'SANTIAGO ADONIS CARIAGA','A. NANCAGUA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:46:56','2018-08-31 20:47:09','2000-05-21','6',NULL),(365,21,'FELIX DIAZ MATURANA','C. A. NEKULN GALGOS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:46:56','2018-08-31 20:47:11','2001-11-25','8',NULL),(366,21,'AGUSTIN MACERATTA YERKOVIC','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:46:56','2018-08-31 20:47:13','2000-11-14','13',NULL),(367,21,'JULIAN ARTEAGA QUINTANA','C. A. NEKULN GALGOS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:46:56','2018-08-31 20:47:16','2001-06-30','8',NULL),(368,21,'BERNARDO  PEREZ DE CASTRO GURIDI','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:46:56','2018-08-31 20:47:18','2000-08-07','13',NULL),(369,21,'LUIS O. REYES PARADA','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:46:56','2018-08-31 20:47:19','2000-09-20','13',NULL),(370,21,'FRANCISCO MORAGA DEL\'ORTO','A. SANTIAGO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:46:56','2018-08-31 20:47:21','2000-05-20','13',NULL),(371,22,'PAOLA FERNANDA MUÑOZ REBOLLEDO','C. A. ÑIELOL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:48:56','2018-08-31 20:49:01','2000-02-12','9',NULL),(372,22,'VIRGINIA SCHRODER SOTOMAYOR','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:48:56','2018-08-31 20:49:03','2001-05-07','13',NULL),(373,22,'ANDREA JALIL GARCIA','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:48:56','2018-08-31 20:49:04','2000-11-06','13',NULL),(374,22,'SOFIA ZAMORA GARCIA','A. A. CASTRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:48:56','2018-08-31 20:49:06','2000-01-19','10',NULL),(375,22,'ANTONIA FUICA BERGER','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:48:56','2018-08-31 20:49:08','2000-12-20','13',NULL),(376,22,'BÁRBARA DEL ROSARIO MERINO BREIT-FRONZIG','C. D. ALEMAN DE VALPARAISO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:48:56','2018-08-31 20:49:10','1999-07-08','5',NULL),(377,22,'JOSEPHINE HALLER WIESNER','MANQUEHUE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:48:56','2018-08-31 20:49:12','2000-07-12','13',NULL),(378,22,'TRINIDAD HURTADO EYZAGUIRRE','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:48:56','2018-08-31 20:49:14','2000-12-12','13',NULL),(379,22,'MARGARITA MATSUMOTO NEBOT','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:48:56','2018-08-31 20:49:15','2000-09-03','13',NULL),(380,22,'NORKA MORETIC SORUCO','CDUC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:48:56','2018-08-31 20:49:16','1998-03-26','13',NULL),(381,23,'CESAR JOFRE PNCHEIRA','A. SANTIAGO','6.64','+0.0','6.63','+0.0','6.81','','','','','','','','','6.81','FC','2018-09-01 04:40:45','2018-09-02 13:28:08','1996','13',NULL),(382,23,'JASON ROMERO SOTO','C. D. BERNARDO FELMER','4.75','','4.80','','4.55','','','','','','','','','4.80','1','2018-09-01 04:41:19','2018-09-02 13:28:10','1999','14',NULL),(383,24,'MARTINA KREUTZBERGER TALADRIZ','MANQUEHUE','4.66','','4.55','','4.93','+0.0','','','','','','','','4.93','1','2018-09-02 14:08:21','2018-09-02 14:08:21','1999','13',NULL),(384,24,'ANDREA JALIL GARCIA','CDUC','4.36','','4.39','','4.59','+0.0','','','','','','','','4.59','3','2018-09-02 14:09:36','2018-09-02 14:09:36','2000','13',NULL),(385,24,'ANTONIA FUICA BERGER','CDUC','4.83','+0.0','X','','4.74','','','','','','','','','4.59','2','2018-09-02 14:10:42','2018-09-02 14:10:42','2000','13',NULL),(386,24,'FRANCISCA VALENCIA BEOVIC','A. SANTIAGO','5.09','','5.21','','5.27','','','','','','','','','5.27','F/C','2018-09-02 14:11:55','2018-09-02 14:11:55','1996','13',NULL);
/*!40000 ALTER TABLE `jump2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jump_females`
--

DROP TABLE IF EXISTS `jump_females`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jump_females` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `reg` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `vvFirst` varchar(255) DEFAULT NULL,
  `seconnd` varchar(255) DEFAULT NULL,
  `vvSecond` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `vvThird` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `vvFourth` varchar(255) DEFAULT NULL,
  `fift` varchar(255) DEFAULT NULL,
  `vvFifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `vvSixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jump_females`
--

LOCK TABLES `jump_females` WRITE;
/*!40000 ALTER TABLE `jump_females` DISABLE KEYS */;
/*!40000 ALTER TABLE `jump_females` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jump_head2s`
--

DROP TABLE IF EXISTS `jump_head2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jump_head2s` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_date` varchar(255) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `sex_id` bigint(20) DEFAULT NULL,
  `competition_id` bigint(20) DEFAULT NULL,
  `sport_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `serie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_jump_head2s_on_sex_id` (`sex_id`),
  KEY `index_jump_head2s_on_competition_id` (`competition_id`),
  KEY `index_jump_head2s_on_sport_id` (`sport_id`),
  KEY `index_jump_head2s_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_079ec4b9f7` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`),
  CONSTRAINT `fk_rails_3e4046624a` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_rails_66a797568b` FOREIGN KEY (`sex_id`) REFERENCES `sexes` (`id`),
  CONSTRAINT `fk_rails_b9a45c7a86` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jump_head2s`
--

LOCK TABLES `jump_head2s` WRITE;
/*!40000 ALTER TABLE `jump_head2s` DISABLE KEYS */;
INSERT INTO `jump_head2s` VALUES (1,NULL,NULL,1,9,1,1,NULL,'2018-05-26 13:37:22','2018-05-27 14:30:03','Salto Largo - Hexatlón - Varones'),(2,NULL,NULL,1,19,1,1,NULL,'2018-05-26 21:15:17','2018-05-26 21:49:19','Salto Largo Damas'),(3,NULL,NULL,1,27,1,1,NULL,'2018-05-26 22:31:10','2018-05-26 22:31:10',''),(4,NULL,NULL,1,39,1,1,NULL,'2018-05-27 13:31:22','2018-05-27 15:19:11','Salto Triple - Varones / Final'),(5,NULL,NULL,1,39,1,1,NULL,'2018-05-27 14:09:51','2018-05-27 14:10:20','Invitados'),(6,NULL,NULL,1,44,1,1,NULL,'2018-05-27 16:56:12','2018-05-27 17:40:02','Salto Largo - Hexatlón - Damas'),(7,NULL,NULL,1,46,1,1,NULL,'2018-05-27 17:18:23','2018-05-27 18:00:01','Salto Triple Damas'),(8,NULL,NULL,1,56,1,1,NULL,'2018-08-04 00:18:52','2018-08-04 00:18:52','1'),(9,NULL,NULL,1,84,1,1,NULL,'2018-08-04 01:07:02','2018-08-04 01:07:02','1'),(10,NULL,NULL,1,97,1,1,NULL,'2018-08-04 01:45:27','2018-08-04 01:45:27','1'),(11,NULL,NULL,1,61,1,1,NULL,'2018-08-04 01:48:14','2018-08-04 01:48:14','1'),(12,NULL,NULL,1,78,1,1,NULL,'2018-08-05 14:51:35','2018-08-05 14:51:35',''),(13,NULL,NULL,1,103,1,1,NULL,'2018-08-05 20:47:49','2018-08-05 20:47:49',''),(14,NULL,NULL,1,133,1,1,NULL,'2018-08-31 16:46:55','2018-08-31 16:46:55',''),(15,NULL,NULL,1,136,1,1,NULL,'2018-08-31 18:10:15','2018-08-31 18:10:15',''),(16,NULL,NULL,1,143,1,1,NULL,'2018-08-31 18:21:04','2018-08-31 18:21:04',''),(17,NULL,NULL,1,175,1,1,NULL,'2018-08-31 19:17:26','2018-08-31 19:17:26',''),(18,NULL,NULL,1,150,1,1,NULL,'2018-08-31 20:34:28','2018-08-31 20:34:28',''),(19,NULL,NULL,1,152,1,1,NULL,'2018-08-31 20:36:55','2018-08-31 20:36:55',''),(20,NULL,NULL,1,176,1,1,NULL,'2018-08-31 20:43:14','2018-08-31 20:43:14',''),(21,NULL,NULL,1,185,1,1,NULL,'2018-08-31 20:45:38','2018-08-31 20:45:38',''),(22,NULL,NULL,1,186,1,1,NULL,'2018-08-31 20:48:44','2018-08-31 20:48:44',''),(23,NULL,NULL,1,134,1,1,NULL,'2018-09-01 04:40:08','2018-09-01 04:40:08',''),(24,NULL,NULL,1,171,1,1,NULL,'2018-09-02 14:05:46','2018-09-02 14:05:46','');
/*!40000 ALTER TABLE `jump_head2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jumps`
--

DROP TABLE IF EXISTS `jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `reg` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `vvFirst` varchar(255) DEFAULT NULL,
  `seconnd` varchar(255) DEFAULT NULL,
  `vvSecond` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `vvThird` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `vvFourth` varchar(255) DEFAULT NULL,
  `fift` varchar(255) DEFAULT NULL,
  `vvFifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `vvSixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jumps`
--

LOCK TABLES `jumps` WRITE;
/*!40000 ALTER TABLE `jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male10000mts`
--

DROP TABLE IF EXISTS `male10000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male10000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male10000mtHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male10000mts`
--

LOCK TABLES `male10000mts` WRITE;
/*!40000 ALTER TABLE `male10000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male10000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male100mthudrles`
--

DROP TABLE IF EXISTS `male100mthudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male100mthudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male100mthudrleHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male100mthudrles`
--

LOCK TABLES `male100mthudrles` WRITE;
/*!40000 ALTER TABLE `male100mthudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `male100mthudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male100mts`
--

DROP TABLE IF EXISTS `male100mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male100mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male100mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male100mts`
--

LOCK TABLES `male100mts` WRITE;
/*!40000 ALTER TABLE `male100mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male100mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male100mts_heads`
--

DROP TABLE IF EXISTS `male100mts_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male100mts_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male100mts_heads`
--

LOCK TABLES `male100mts_heads` WRITE;
/*!40000 ALTER TABLE `male100mts_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `male100mts_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male100mtshurdles_heads`
--

DROP TABLE IF EXISTS `male100mtshurdles_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male100mtshurdles_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male100mtshurdles_heads`
--

LOCK TABLES `male100mtshurdles_heads` WRITE;
/*!40000 ALTER TABLE `male100mtshurdles_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `male100mtshurdles_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male110mtshudrles`
--

DROP TABLE IF EXISTS `male110mtshudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male110mtshudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male110mtshudrleHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male110mtshudrles`
--

LOCK TABLES `male110mtshudrles` WRITE;
/*!40000 ALTER TABLE `male110mtshudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `male110mtshudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male1500mts`
--

DROP TABLE IF EXISTS `male1500mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male1500mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male1500mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male1500mts`
--

LOCK TABLES `male1500mts` WRITE;
/*!40000 ALTER TABLE `male1500mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male1500mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male1500mts_heads`
--

DROP TABLE IF EXISTS `male1500mts_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male1500mts_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male1500mts_heads`
--

LOCK TABLES `male1500mts_heads` WRITE;
/*!40000 ALTER TABLE `male1500mts_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `male1500mts_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male20000mts`
--

DROP TABLE IF EXISTS `male20000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male20000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male20000mtHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male20000mts`
--

LOCK TABLES `male20000mts` WRITE;
/*!40000 ALTER TABLE `male20000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male20000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male200mts`
--

DROP TABLE IF EXISTS `male200mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male200mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male200mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male200mts`
--

LOCK TABLES `male200mts` WRITE;
/*!40000 ALTER TABLE `male200mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male200mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male200mts_heads`
--

DROP TABLE IF EXISTS `male200mts_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male200mts_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male200mts_heads`
--

LOCK TABLES `male200mts_heads` WRITE;
/*!40000 ALTER TABLE `male200mts_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `male200mts_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male3000mts`
--

DROP TABLE IF EXISTS `male3000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male3000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male3000mtHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male3000mts`
--

LOCK TABLES `male3000mts` WRITE;
/*!40000 ALTER TABLE `male3000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male3000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male3000mtsobstacles`
--

DROP TABLE IF EXISTS `male3000mtsobstacles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male3000mtsobstacles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male3000mtsobstacleHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male3000mtsobstacles`
--

LOCK TABLES `male3000mtsobstacles` WRITE;
/*!40000 ALTER TABLE `male3000mtsobstacles` DISABLE KEYS */;
/*!40000 ALTER TABLE `male3000mtsobstacles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male400mthudrles`
--

DROP TABLE IF EXISTS `male400mthudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male400mthudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male400mthudrleHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male400mthudrles`
--

LOCK TABLES `male400mthudrles` WRITE;
/*!40000 ALTER TABLE `male400mthudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `male400mthudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male400mts`
--

DROP TABLE IF EXISTS `male400mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male400mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male400mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male400mts`
--

LOCK TABLES `male400mts` WRITE;
/*!40000 ALTER TABLE `male400mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male400mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male400mts_heads`
--

DROP TABLE IF EXISTS `male400mts_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male400mts_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male400mts_heads`
--

LOCK TABLES `male400mts_heads` WRITE;
/*!40000 ALTER TABLE `male400mts_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `male400mts_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male4x100mts`
--

DROP TABLE IF EXISTS `male4x100mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male4x100mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male4x100mts_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male4x100mts`
--

LOCK TABLES `male4x100mts` WRITE;
/*!40000 ALTER TABLE `male4x100mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male4x100mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male4x400mts`
--

DROP TABLE IF EXISTS `male4x400mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male4x400mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male4x400mtHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male4x400mts`
--

LOCK TABLES `male4x400mts` WRITE;
/*!40000 ALTER TABLE `male4x400mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male4x400mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male5000mts`
--

DROP TABLE IF EXISTS `male5000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male5000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male5000mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male5000mts`
--

LOCK TABLES `male5000mts` WRITE;
/*!40000 ALTER TABLE `male5000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male5000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male800mts`
--

DROP TABLE IF EXISTS `male800mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male800mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male800mtHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male800mts`
--

LOCK TABLES `male800mts` WRITE;
/*!40000 ALTER TABLE `male800mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male800mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male8x50mts`
--

DROP TABLE IF EXISTS `male8x50mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male8x50mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male8x50mts_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male8x50mts`
--

LOCK TABLES `male8x50mts` WRITE;
/*!40000 ALTER TABLE `male8x50mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male8x50mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_discus_throws`
--

DROP TABLE IF EXISTS `male_discus_throws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male_discus_throws` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `fifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_discus_throws`
--

LOCK TABLES `male_discus_throws` WRITE;
/*!40000 ALTER TABLE `male_discus_throws` DISABLE KEYS */;
/*!40000 ALTER TABLE `male_discus_throws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_hammer_throws`
--

DROP TABLE IF EXISTS `male_hammer_throws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male_hammer_throws` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `fifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_hammer_throws`
--

LOCK TABLES `male_hammer_throws` WRITE;
/*!40000 ALTER TABLE `male_hammer_throws` DISABLE KEYS */;
/*!40000 ALTER TABLE `male_hammer_throws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_high_jumps`
--

DROP TABLE IF EXISTS `male_high_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male_high_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `reg` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `vvFirst` varchar(255) DEFAULT NULL,
  `seconnd` varchar(255) DEFAULT NULL,
  `vvSecond` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `vvThird` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `vvFourth` varchar(255) DEFAULT NULL,
  `fift` varchar(255) DEFAULT NULL,
  `vvFifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `vvSixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_high_jumps`
--

LOCK TABLES `male_high_jumps` WRITE;
/*!40000 ALTER TABLE `male_high_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `male_high_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_javelin_heads`
--

DROP TABLE IF EXISTS `male_javelin_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male_javelin_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_javelin_heads`
--

LOCK TABLES `male_javelin_heads` WRITE;
/*!40000 ALTER TABLE `male_javelin_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `male_javelin_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_javelines`
--

DROP TABLE IF EXISTS `male_javelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male_javelines` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `fifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_javelines`
--

LOCK TABLES `male_javelines` WRITE;
/*!40000 ALTER TABLE `male_javelines` DISABLE KEYS */;
/*!40000 ALTER TABLE `male_javelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_long_jumps`
--

DROP TABLE IF EXISTS `male_long_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male_long_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `reg` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `vvFirst` varchar(255) DEFAULT NULL,
  `seconnd` varchar(255) DEFAULT NULL,
  `vvSecond` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `vvThird` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `vvFourth` varchar(255) DEFAULT NULL,
  `fift` varchar(255) DEFAULT NULL,
  `vvFifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `vvSixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_long_jumps`
--

LOCK TABLES `male_long_jumps` WRITE;
/*!40000 ALTER TABLE `male_long_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `male_long_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_pole_jumps`
--

DROP TABLE IF EXISTS `male_pole_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male_pole_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `malepolejumpsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_pole_jumps`
--

LOCK TABLES `male_pole_jumps` WRITE;
/*!40000 ALTER TABLE `male_pole_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `male_pole_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_shot_put_heads`
--

DROP TABLE IF EXISTS `male_shot_put_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male_shot_put_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_shot_put_heads`
--

LOCK TABLES `male_shot_put_heads` WRITE;
/*!40000 ALTER TABLE `male_shot_put_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `male_shot_put_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_shot_puts`
--

DROP TABLE IF EXISTS `male_shot_puts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male_shot_puts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `fifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_shot_puts`
--

LOCK TABLES `male_shot_puts` WRITE;
/*!40000 ALTER TABLE `male_shot_puts` DISABLE KEYS */;
/*!40000 ALTER TABLE `male_shot_puts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `male_triple_jumps`
--

DROP TABLE IF EXISTS `male_triple_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `male_triple_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `reg` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `vvFirst` varchar(255) DEFAULT NULL,
  `seconnd` varchar(255) DEFAULT NULL,
  `vvSecond` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `vvThird` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `vvFourth` varchar(255) DEFAULT NULL,
  `fift` varchar(255) DEFAULT NULL,
  `vvFifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `vvSixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `male_triple_jumps`
--

LOCK TABLES `male_triple_jumps` WRITE;
/*!40000 ALTER TABLE `male_triple_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `male_triple_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malejump_heads`
--

DROP TABLE IF EXISTS `malejump_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malejump_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malejump_heads`
--

LOCK TABLES `malejump_heads` WRITE;
/*!40000 ALTER TABLE `malejump_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `malejump_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malesenior200mts`
--

DROP TABLE IF EXISTS `malesenior200mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malesenior200mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `maleSenior200mts_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malesenior200mts`
--

LOCK TABLES `malesenior200mts` WRITE;
/*!40000 ALTER TABLE `malesenior200mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `malesenior200mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malethrowing_disc_heads`
--

DROP TABLE IF EXISTS `malethrowing_disc_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malethrowing_disc_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malethrowing_disc_heads`
--

LOCK TABLES `malethrowing_disc_heads` WRITE;
/*!40000 ALTER TABLE `malethrowing_disc_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `malethrowing_disc_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referee_levels`
--

DROP TABLE IF EXISTS `referee_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referee_levels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referee_levels`
--

LOCK TABLES `referee_levels` WRITE;
/*!40000 ALTER TABLE `referee_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `referee_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referees`
--

DROP TABLE IF EXISTS `referees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `names` varchar(255) DEFAULT NULL,
  `surnames` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `rut` varchar(255) DEFAULT NULL,
  `cellPhone` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `idLevel` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referees`
--

LOCK TABLES `referees` WRITE;
/*!40000 ALTER TABLE `referees` DISABLE KEYS */;
/*!40000 ALTER TABLE `referees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20180310194654'),('20180310194810'),('20180310195030'),('20180310195635'),('20180310195710'),('20180310195927'),('20180310200658'),('20180310200725'),('20180310201038'),('20180310201321'),('20180405182545'),('20180407032356'),('20180409012932'),('20180409075709'),('20180409085004'),('20180409085610'),('20180409091148'),('20180411044745'),('20180412104743'),('20180412105428'),('20180412112856'),('20180412155824'),('20180413161358'),('20180413161407'),('20180413161418'),('20180413161424'),('20180413161436'),('20180413161501'),('20180413161619'),('20180413161626'),('20180413161639'),('20180413161645'),('20180413161709'),('20180413161714'),('20180413161950'),('20180413161956'),('20180413162126'),('20180413162136'),('20180413162143'),('20180413162236'),('20180413162241'),('20180413171641'),('20180413171743'),('20180413171944'),('20180413172008'),('20180413172040'),('20180413172100'),('20180413172125'),('20180413172147'),('20180413172227'),('20180413172253'),('20180413172316'),('20180413172341'),('20180413172410'),('20180413172640'),('20180413172706'),('20180413172736'),('20180414052817'),('20180414053113'),('20180414053132'),('20180414053148'),('20180414053204'),('20180414053222'),('20180414053235'),('20180414053250'),('20180414053300'),('20180414053323'),('20180414081701'),('20180414081717'),('20180414084207'),('20180414091536'),('20180414091549'),('20180414093034'),('20180414093102'),('20180414093125'),('20180417202002'),('20180417202326'),('20180417202335'),('20180417202345'),('20180417202356'),('20180418010211'),('20180418011403'),('20180418011643'),('20180418011703'),('20180418011726'),('20180418011747'),('20180420012441'),('20180420013044'),('20180420013059'),('20180420013109'),('20180420013120'),('20180420013129'),('20180420013137'),('20180420013144'),('20180420013153'),('20180420013200'),('20180420013206'),('20180420013213'),('20180420013218'),('20180420013224'),('20180420013230'),('20180420013235'),('20180420013242'),('20180420013247'),('20180420013253'),('20180420013259'),('20180420013304'),('20180420233126'),('20180420233250'),('20180420233305'),('20180420233313'),('20180420233320'),('20180420233332'),('20180420233340'),('20180420233348'),('20180420233355'),('20180420233404'),('20180420233413'),('20180420233421'),('20180420233428'),('20180420233435'),('20180420233443'),('20180421012223'),('20180421012344'),('20180421012351'),('20180421012400'),('20180421012406'),('20180421012412'),('20180421012417'),('20180421012425'),('20180421012434'),('20180421012440'),('20180421012447'),('20180421012456'),('20180421012503'),('20180421012509'),('20180421030317'),('20180510154411'),('20180510154904'),('20180510155921'),('20180510160819'),('20180510161138'),('20180510161247'),('20180510161600'),('20180516212532'),('20180516220344'),('20180516221435'),('20180516222025'),('20180516222026'),('20180518231024'),('20180524004748'),('20180524010818'),('20180524014126'),('20180524023819'),('20180525235928'),('20180525235943'),('20180526001443'),('20180526072756'),('20180526074402'),('20180526074756'),('20180526080606'),('20180526085811'),('20180526090101'),('20180526090337'),('20180526093407'),('20180526094140'),('20180526094602'),('20180526103808'),('20180526104157'),('20180801024307'),('20180801024806'),('20180801030707'),('20180801042148'),('20180801042323'),('20180802134234'),('20180802220431');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serie_detalles`
--

DROP TABLE IF EXISTS `serie_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie_detalles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lugar` int(11) DEFAULT NULL,
  `marca` int(11) DEFAULT NULL,
  `pista` int(11) DEFAULT NULL,
  `atleta` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie_detalles`
--

LOCK TABLES `serie_detalles` WRITE;
/*!40000 ALTER TABLE `serie_detalles` DISABLE KEYS */;
/*!40000 ALTER TABLE `serie_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serie_types`
--

DROP TABLE IF EXISTS `serie_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie_types`
--

LOCK TABLES `serie_types` WRITE;
/*!40000 ALTER TABLE `serie_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `serie_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serie` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexes`
--

DROP TABLE IF EXISTS `sexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sex` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexes`
--

LOCK TABLES `sexes` WRITE;
/*!40000 ALTER TABLE `sexes` DISABLE KEYS */;
INSERT INTO `sexes` VALUES (1,'DAMAS','2018-05-26 01:48:37','2018-05-26 01:48:37'),(2,'VARONES','2018-05-26 01:48:50','2018-05-26 01:48:50'),(3,'DAMAS Y VARONES','2018-08-29 03:50:56','2018-08-29 03:50:56');
/*!40000 ALTER TABLE `sexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shot_put_heads`
--

DROP TABLE IF EXISTS `shot_put_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shot_put_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shot_put_heads`
--

LOCK TABLES `shot_put_heads` WRITE;
/*!40000 ALTER TABLE `shot_put_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `shot_put_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,'200 METROS PLANOS','2018-05-26 01:54:33','2018-05-28 04:34:53'),(2,'SALTO CON GARROCHA','2018-05-26 01:54:56','2018-05-26 01:54:56'),(3,'SALTO LARGO','2018-05-26 01:55:10','2018-05-26 01:55:10'),(4,'LANZAMIENTO JABALINA','2018-05-26 01:55:27','2018-05-26 01:55:27'),(5,'100 METROS VALLAS','2018-05-26 01:55:49','2018-05-26 01:55:49'),(6,'LANZAMIENTO BALA','2018-05-26 01:56:07','2018-05-26 01:56:07'),(7,'300 METROS PLANOS','2018-05-26 01:56:48','2018-05-26 01:56:48'),(8,'SALTO ALTO','2018-05-26 01:57:07','2018-05-26 01:57:07'),(9,'LANZAMIENTO DISCO','2018-05-26 01:57:44','2018-05-26 01:57:44'),(10,'1.000 METROS PLANOS','2018-05-26 01:58:07','2018-05-26 01:58:07'),(11,'RELEVO 4X100 METROS','2018-05-26 01:58:39','2018-05-26 01:58:39'),(12,'5.000 METROS MARCHA','2018-05-26 01:59:08','2018-05-26 01:59:08'),(13,'SALTO TRIPLE','2018-05-26 01:59:38','2018-05-26 01:59:38'),(14,'300 METROS VALLAS','2018-05-26 02:00:17','2018-05-26 02:00:17'),(15,'3.000 METROS PLANOS','2018-05-26 02:00:52','2018-05-26 02:00:52'),(16,'RELEVO COMBINADO (100-200-200-300)','2018-05-26 02:01:26','2018-05-26 02:01:26'),(17,'3.000 METROS MARCHA','2018-05-26 02:23:25','2018-05-26 02:23:25'),(18,'400 METROS VALLAS INVITACIÓN (pista 3-8)','2018-05-26 02:26:22','2018-05-26 02:26:22'),(19,'400 METROS PLANOS INVITACIÓN (pista 3-8)','2018-05-26 02:26:46','2018-05-26 02:26:46'),(20,'LANZAMIENTO MARTILLO','2018-05-26 02:30:33','2018-05-26 02:30:33'),(21,'1.500 METROS OBSTÁCULOS','2018-05-26 02:37:51','2018-05-26 02:37:51'),(22,'200 METROS PLANOS','2018-05-26 03:20:03','2018-05-26 03:20:03'),(23,'80 METROS VALLAS','2018-08-03 17:44:38','2018-08-03 17:44:38'),(24,'80 METROS PLANOS','2018-08-03 17:49:18','2018-08-03 17:49:18'),(25,'150 METROS PLANOS','2018-08-03 18:45:49','2018-08-03 18:45:49'),(26,'800 METROS PLANOS','2018-08-03 18:50:44','2018-08-03 18:50:44'),(27,'2000 METROS PLANOS','2018-08-03 18:54:25','2018-08-03 18:54:25'),(28,'RELEVO 5X80 METROS','2018-08-03 19:02:39','2018-08-03 19:05:17'),(29,'600 METROS PLANOS','2018-08-03 19:08:14','2018-08-03 19:08:14'),(30,'100 METROS PLANOS','2018-08-24 20:04:28','2018-08-24 20:04:28'),(31,'400 METROS PLANOS','2018-08-24 20:12:43','2018-08-24 20:12:43'),(32,'110 METROS VALLAS','2018-08-24 23:55:33','2018-08-24 23:55:33'),(33,'400 METROS VALLAS','2018-08-25 00:03:52','2018-08-25 00:03:52'),(34,'1.500 METROS PLANOS','2018-08-25 00:12:53','2018-08-29 05:03:16'),(35,'20.000 METROS MARCHA','2018-08-25 00:48:29','2018-08-25 00:48:29'),(36,'RELEVO 4X400 METROS PLANOS','2018-08-25 00:59:35','2018-08-25 00:59:35'),(37,'10.000 METROS MARCHA [AND. 1 Y 2]','2018-08-29 02:56:30','2018-08-29 02:56:30'),(38,'100 METROS VALLAS [AND. 3 A 8]','2018-08-29 03:07:29','2018-08-29 03:07:29'),(39,'100 METROS PLANOS [AND. 3 A 8]','2018-08-29 04:18:31','2018-08-29 04:18:31'),(40,'5.000 METROS PLANOS','2018-08-29 04:31:07','2018-08-29 04:31:07'),(41,'10.000 METROS PLANOS','2018-08-29 05:23:41','2018-08-29 05:23:41'),(42,'3.000 METROS CON OBSTÁCULOS','2018-08-29 05:53:17','2018-08-29 05:53:17');
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stages`
--

DROP TABLE IF EXISTS `stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `championship_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_stages_on_championship_id` (`championship_id`),
  CONSTRAINT `fk_rails_dcd4606702` FOREIGN KEY (`championship_id`) REFERENCES `championships` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stages`
--

LOCK TABLES `stages` WRITE;
/*!40000 ALTER TABLE `stages` DISABLE KEYS */;
INSERT INTO `stages` VALUES (1,'2018-05-26','PRIMERA ETAPA SÁBADO (MAÑANA)',1,'2018-05-26 01:44:22','2018-05-26 01:44:22'),(2,'2018-05-26','SEGUNDA ETAPA SÁBADO (TARDE)',1,'2018-05-26 01:45:12','2018-05-26 01:45:12'),(3,'2018-05-27','TERCERA ETAPA DOMINGO (MAÑANA)',1,'2018-05-26 01:45:40','2018-05-26 01:45:40'),(4,'2018-08-04','1ª JORNADA – MAÑANA',2,'2018-08-03 17:24:18','2018-08-03 17:24:18'),(5,'2018-08-05','2ª JORNADA – MAÑANA',2,'2018-08-03 17:25:20','2018-08-03 17:25:20'),(6,'2018-08-05','3ª JORNADA – TARDE',2,'2018-08-03 17:25:51','2018-08-03 17:25:51'),(7,'2018-08-24','PRIMERA JORNADA XVIII CAMPEONATO IBEROAMERICANO DE ATLETISMO CATEGORÍA MAYORES - TRUJILLO PERÚ',3,'2018-08-23 18:33:14','2018-08-24 23:51:58'),(9,'2018-08-25','SEGUNDA JORNADA XVIII CAMPEONATO IBEROAMERICANO DE ATLETISMO CATEGORÍA MAYORES - TRUJILLO PERÚ',3,'2018-08-24 23:50:18','2018-08-24 23:52:49'),(10,'2018-08-25','TERCERA JORNADA XVIII CAMPEONATO IBEROAMERICANO DE ATLETISMO CATEGORÍA MAYORES - TRUJILLO PERÚ',3,'2018-08-25 00:33:20','2018-08-25 00:33:20'),(11,'2018-08-26','CUARTA JORNADA XVIII CAMPEONATO IBEROAMERICANO DE ATLETISMO CATEGORÍA MAYORES - TRUJILLO PERÚ',3,'2018-08-25 00:42:50','2018-08-25 00:42:50'),(12,'2018-09-01','CAMPEONATO NACIONAL DE ATLETISMO SUB-20 Y SELECTIVO SUB-23 PRIMERA JORNADA',4,'2018-08-29 02:52:27','2018-08-31 02:27:24'),(13,'2018-09-01','CAMPEONATO NACIONAL DE ATLETISMO SUB-20 Y SELECTIVO SUB-23 SEGUNDA JORNADA',4,'2018-08-29 04:45:54','2018-08-29 04:45:54'),(14,'2018-09-02','CAMPEONATO NACIONAL DE ATLETISMO SUB-20 Y SELECTIVO SUB-23 TERCERA JORNADA',4,'2018-08-29 05:20:32','2018-08-29 05:20:32');
/*!40000 ALTER TABLE `stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start2s`
--

DROP TABLE IF EXISTS `start2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start2s` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_head_id` bigint(20) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `rail` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `bestAchievement` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_start2s_on_start_head_id` (`start_head_id`),
  CONSTRAINT `fk_rails_27a80c0466` FOREIGN KEY (`start_head_id`) REFERENCES `start_heads` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start2s`
--

LOCK TABLES `start2s` WRITE;
/*!40000 ALTER TABLE `start2s` DISABLE KEYS */;
INSERT INTO `start2s` VALUES (1,1,'Martina Zepeda  Pedemonte','4','','A. Atacama','5','15.00','2018-05-26 04:45:10','2018-08-04 21:08:25'),(2,1,'Khaterine Hornig Angulo','5','27/07/2003','C. A. Gerardo Manzanares ','10','16.46','2018-05-26 04:47:28','2018-05-26 04:52:15'),(3,1,'Nayeli Schwenke Ramirez','3','19/06/2004','C. A. Coyhaique','11','16.80','2018-05-26 04:48:59','2018-05-26 04:52:09'),(4,1,'Rocio Barrientos Crispieri','6','03/01/2004','Academia Iquique Bajo Molle','1','17.20','2018-05-26 04:49:42','2018-05-26 04:52:02'),(5,1,'Francisca Cespedes Valenzuela','7','05/03/2003','Academia Iquique Bajo Molle','1','19.15','2018-05-26 04:50:20','2018-05-26 04:51:56'),(6,1,'Nisty Esperanza Araya Saavedra','8','22/04/2004','A. Ingles','4','','2018-05-26 04:50:45','2018-05-26 04:51:49'),(7,1,'Amanda Gil Amanda','2','26/07/2004','Manquehue','13','','2018-05-26 04:51:14','2018-05-26 04:51:27'),(8,2,'Mathilde Sandrock Cox','2','21/05/2004','Manquehue','13','','2018-05-26 04:53:29','2018-05-26 04:53:29'),(9,2,'Carola Scheihing Ballesteros','8','12/02/2004','Escuela de Atletismo Osorno','10','','2018-05-26 04:54:30','2018-05-26 04:54:30'),(10,2,'Daniela  Charme  Soto','7','05/06/2003','CDUC','13','','2018-05-26 04:54:59','2018-05-26 04:54:59'),(11,2,'Anthar Gipoulou Pizarro','6','04/03/2004','C.D. Windsor School','14','17.90','2018-05-26 04:55:37','2018-05-26 04:55:37'),(12,2,'Josefa Valdera Ramos','3','10/02/2004','Academia Iquique Bajo Molle','1','17.15','2018-05-26 04:56:11','2018-05-26 04:56:11'),(13,2,'Renata Isidora Álvarez Correa','5','29/05/2003','C. Marista Curicó','7','16.50','2018-05-26 04:56:45','2018-05-26 04:56:45'),(15,2,'Florencia Ampuero Sanchez','4','09/01/2003','C. A. Gerardo Manzanares ','10','15.94','2018-05-26 04:58:58','2018-05-26 04:58:58'),(16,3,'Aylimm Muñoz Diaz','','16/08/2004','A. de A. Castro','10','','2018-05-26 05:29:48','2018-05-26 05:29:48'),(17,3,'Laura Bustamante González','','24/09/2004','Escuela de Atletismo Osorno','10','','2018-05-26 05:30:14','2018-05-26 05:30:14'),(18,3,'Cristianne Neumann ','','05/09/2003','C. D. Pilauco','10','','2018-05-26 05:30:32','2018-05-26 05:30:32'),(19,3,'Maria Squella Contardo','','14/04/2003','CDUC','13','','2018-05-26 05:30:51','2018-05-26 05:30:51'),(20,3,'Giza Dayanee Aguayo Vasquez','','13/04/2004','C. Génesis','6','','2018-05-26 05:31:11','2018-05-26 05:31:11'),(21,3,'Orión Renata Carrasco Carrillo','','23/08/2003','C. Manquemávida de Santa C','6','','2018-05-26 05:31:33','2018-05-26 05:31:33'),(22,3,'Emilia Alejandra Cabrera Valenzuela','','06/09/2003','C. Manquemávida de Santa Cruz','6','','2018-05-26 05:31:54','2018-05-26 05:31:54'),(23,3,'Valentina Duque Muñoz','','09/09/2003','C. Liceo de Curicó','7','3100','2018-05-26 05:32:19','2018-05-26 05:32:19'),(24,4,'Martin Delgado Gonzalez','','15/07/2004','C. A. Gerardo Manzanares ','10','','2018-05-26 05:33:38','2018-05-26 05:33:38'),(25,4,'Benjamin Alvarado Olmi','','01/04/2003','C. A. Puerto Sur','10','','2018-05-26 05:33:59','2018-05-26 05:33:59'),(26,4,'Manuel Vasquez ','','22/09/2004','C. D. Pilauco','10','','2018-05-26 05:34:15','2018-05-26 05:34:15'),(27,4,'Santiago Salinas Cabrera','','04/04/2003','A. Santiago','13','','2018-05-26 05:34:33','2018-05-26 05:34:33'),(28,4,'Joaquín Cristóbal Galleguillos Puebla','','08/02/2003','C. Manquemávida de Santa Cruz','6','','2018-05-26 05:34:52','2018-05-26 05:34:52'),(29,4,'Benjamin Gonzalez Olguin','','06/04/2003','A. Nancagua',' 6','','2018-05-26 05:35:18','2018-05-26 05:35:18'),(30,4,'Eduardo Camp Summerset','','04/09/2003','Centro Atlético Formativo','15','','2018-05-26 05:35:41','2018-05-26 05:35:41'),(31,4,'Mauricio Irribarren Poyanopulos','','13/01/2004','Centro Atlético Formativo','15','','2018-05-26 05:36:00','2018-05-26 05:36:00'),(32,4,'Pablo Rojas Muñoz','','01/07/2003','C. A. Alameda Talca','7','','2018-05-26 05:36:19','2018-05-26 05:36:19'),(33,5,'Monserrat Rojas Maugard','','09/09/2003','C. D. Trotamundos','15','12.00.00','2018-05-26 05:38:20','2018-05-26 05:38:49'),(34,5,'Valentina Aguillar Fernandez','','30/05/2003','C. D. Trotamundos','15','12.01.00','2018-05-26 05:39:21','2018-05-26 05:39:21'),(35,5,'Daniela Paz Godoy Lagos','','03/06/2004','C. D. Freire','9','16.32.00','2018-05-26 05:39:45','2018-05-26 05:39:45'),(36,5,'Ayllyn  Vallejos  Galvarino ','','09/03/2003','C. de Deportes Saavedra','9','16.45.00','2018-05-26 05:40:08','2018-05-26 05:40:08'),(37,5,'Carolina Valesca Godoy Lagos','','03/06/2004','C. D. Freire','9','17.09.00','2018-05-26 05:40:34','2018-05-26 05:40:34'),(38,5,'Monserrat Peñafiel Vallejos','','28/12/2003','Escuela de Atletismo Osorno','10','17.34.00','2018-05-26 05:40:57','2018-05-26 05:40:57'),(39,5,'Francisca Briones Contreras','','16/07/2004','C. de Atletismo Punta Arenas','12','18.05.00','2018-05-26 05:41:23','2018-05-26 05:41:23'),(40,5,'Catalina Perez Galvez','','21/07/2003','A. Nancagua','6','18.16.00','2018-05-26 05:41:49','2018-05-26 05:41:49'),(41,6,'Alfredo Sepúlveda Sandoval','4','03/08/1993','A. Pacífico','5','','2018-05-26 05:44:13','2018-05-26 05:44:13'),(42,6,'Andres Bayron Silva','5','27/03/1986','Uruguay','URU','','2018-05-26 05:45:20','2018-05-26 05:47:02'),(43,6,'Joao Pinto Acevedo','3','25/04/1994','U. Católica','13','','2018-05-26 05:45:39','2018-05-26 05:47:10'),(44,6,'Cristóbal Muñoz Fuentealba','6','03/03/1999','A. Gerardo Manzanares','10','','2018-05-26 05:45:57','2018-05-26 05:47:17'),(45,6,'Gabriel Sepúlveda Sandoval ','7','19/07/1995','A. Pacífico','5','','2018-05-26 05:46:13','2018-05-26 05:47:25'),(46,6,'Francisco Barrueto Osandón ','8','08/05/1995','A. Pacífico','5','','2018-05-26 05:46:31','2018-05-26 05:47:33'),(47,6,'Cristóbal Torres Garrido','2','16/10/1996','OASSI','13','','2018-05-26 05:46:50','2018-05-26 05:47:41'),(48,7,'Alejandro Peirano López','4','11/03/1993','A. Santiago','13','','2018-05-26 05:48:38','2018-05-26 05:48:38'),(49,7,'Mateo Pascual','5','24/12/1998','Uruguay','URU','','2018-05-26 05:49:00','2018-05-26 05:49:00'),(50,7,'Maximiliano Castro Ossa','3','11/04/1998','A. Santiago','13','','2018-05-26 05:49:23','2018-05-26 05:49:23'),(51,7,'Francisco Muñoz','6','','Cultura Fisica','5','','2018-05-26 05:49:38','2018-05-26 05:49:38'),(52,7,'Santiago Martínez Muñoz','2','05/11/1995','OASSI','13','','2018-05-26 05:49:57','2018-05-26 05:49:57'),(53,8,'Victoria Rios Castro','4','07/04/2003','A. Santiago','13','11.89','2018-01-02 00:00:00','2018-01-02 00:00:00'),(54,8,'Renata Álvarez Parraguez','5','19/03/2004','A. Francés','13','13.32','2018-01-03 00:00:00','2018-01-03 00:00:00'),(55,8,'Irene Linda Riquelme Muñoz','3','30/09/2003','C. A. Tamarugo','1','13.60','2018-01-04 00:00:00','2018-01-04 00:00:00'),(56,8,'Claudia Retamales Nuñez','6','12/02/2003','OASSI','13','13.80','2018-01-05 00:00:00','2018-01-05 00:00:00'),(57,8,'Amanda Hunt Cid','7','16/10/2003','OASSI','13','14.00','2018-01-06 00:00:00','2018-01-06 00:00:00'),(58,8,'Dafne Anais Reyes','8','24/09/2004','A. Santiago','13','14.10','2018-01-07 00:00:00','2018-01-07 00:00:00'),(59,8,'Catalina Andrea Leiva  Bascur','2','28/03/2003','C. D. A. Coronel','8','14.20','2018-01-08 00:00:00','2018-01-08 00:00:00'),(60,8,'Victoria Pardo Antillanca','1','24/11/2004','C. D. Bernardo Felmer','14','14.80','2018-01-09 00:00:00','2018-01-09 00:00:00'),(61,9,'Barbara Carrasco Garcia','4','05/05/2003','A. Santiago','13','12.86','2018-01-10 00:00:00','2018-01-10 00:00:00'),(62,9,'Josefa Valdera Ramos','5','10/02/2004','Academia Iquique Bajo Molle','1','13.36','2018-01-11 00:00:00','2018-01-11 00:00:00'),(63,9,'Camil Sarai Ponce Márquez','3','25/01/2004','Vicente Potrerillos Salinas','3','13.60','2018-01-12 00:00:00','2018-01-12 00:00:00'),(64,9,'Gabriela Millaray Zúñiga Olivos','6','12/09/2004','C. Marista Curicó','7','13.85','2018-01-13 00:00:00','2018-01-13 00:00:00'),(65,9,'Carla Rios Bermudez','7','05/06/2004','OASSI','13','14.00','2018-01-14 00:00:00','2018-01-14 00:00:00'),(66,9,'Constanza Antonia Gamboa Tapia','8','02/06/2003','C. A. O’Higgins','5','14.10','2018-01-15 00:00:00','2018-01-15 00:00:00'),(67,9,'Anthar Gipoulou Pizarro','2','04/03/2004','C.D. Windsor School','14','14.30','2018-01-16 00:00:00','2018-01-16 00:00:00'),(68,9,'Carola Scheihing Ballesteros','1','12/02/2004','Escuela de Atletismo Osorno','10','-','2018-01-17 00:00:00','2018-01-17 00:00:00'),(69,10,'Valentina  Vásquez  General','4','07/06/2003','C. A. Limache','5','12.90','2018-01-18 00:00:00','2018-01-18 00:00:00'),(70,10,'Rocio Carvajal San Martin','5','09/10/2003','A. Santiago','13','13.40','2018-01-19 00:00:00','2018-01-19 00:00:00'),(71,10,'Catalina Gonzales Opazo','3','09/01/2003','C. A. Alameda Talca','7','13.60','2018-01-20 00:00:00','2018-01-20 00:00:00'),(72,10,'Antonia Diaz Lizana','6','01/05/2004','A. Nancagua','6','13.89','2018-01-21 00:00:00','2018-01-21 00:00:00'),(73,10,'Catalina Norambuena Otarola','7','13/06/2004','OASSI','13','14.00','2018-01-22 00:00:00','2018-01-22 00:00:00'),(74,10,'Antonia Suerez Escobar','8','13/04/2003','A. Santiago','13','14.13','2018-01-23 00:00:00','2018-01-23 00:00:00'),(75,10,'Constanza Millaray Chandia Ibacache','2','01/01/2004','C. D. A. Sporting Coquimbo','4','14.30','2018-01-24 00:00:00','2018-01-24 00:00:00'),(76,10,'Contanza Gomez Valdés','1','21/04/2003','CDUC','13','-','2018-01-25 00:00:00','2018-01-25 00:00:00'),(77,11,'Claudia Daniela Pimentel Cruz','4','16/01/2004','C. Chuquicamata','2','12.91','2018-01-26 00:00:00','2018-01-26 00:00:00'),(78,11,'Khaterine Hornig Angulo','5','27/07/2003','C. A. Gerardo Manzanares','10','13.41','2018-01-27 00:00:00','2018-01-27 00:00:00'),(79,11,'Javiera Gonzalez Moscoso','3','24/08/2003','A. Nancagua','6','13.68','2018-01-28 00:00:00','2018-01-28 00:00:00'),(80,11,'Tamara Lopez Vera','6','04/03/2004','A. Cauquenes','7','13.90','2018-01-29 00:00:00','2018-01-29 00:00:00'),(81,11,'Martina Gonzalez Villalobos','7','03/10/2004','A. Nancagua','6','14.02','2018-01-30 00:00:00','2018-01-30 00:00:00'),(82,11,'Rocio Barrientos Crispieri','8','03/01/2004','Academia Iquique Bajo Molle','1','14.14','2018-01-31 00:00:00','2018-01-31 00:00:00'),(83,11,'Amelia Molinos Rillón','2','29/09/2003','CDUC','13','14.30','2018-02-01 00:00:00','2018-02-01 00:00:00'),(84,11,'Esperanza Garcia Tapia','1','19/01/2003','CDUC','13','-','2018-02-02 00:00:00','2018-02-02 00:00:00'),(85,12,'Josefa Ignacia Ibañez Salinas','4','25/08/2004','A. Ingles','4','13. 80','2018-02-03 00:00:00','2018-02-03 00:00:00'),(86,12,'Sofia Torres Letelier','5','19/04/2003','A. Cauquenes','7','13.42','2018-02-04 00:00:00','2018-02-04 00:00:00'),(87,12,'Florencia Opazo Alul','3','18/03/2004','C. A. Alameda Talca','7','13.70','2018-02-05 00:00:00','2018-02-05 00:00:00'),(88,12,'Ayleen Amaya Casanova López','6','29/11/2003','C. A. O’Higgins','5','13.90','2018-02-06 00:00:00','2018-02-06 00:00:00'),(89,12,'Maria  Reyes Fernandez','7','01/05/2003','C. A. Gerardo Manzanares','10','14.04','2018-02-07 00:00:00','2018-02-07 00:00:00'),(90,12,'Carmen Gonzalez Escobar','8','18/12/2003','A. Santiago','13','14.15','2018-02-08 00:00:00','2018-02-08 00:00:00'),(91,12,'Fernanda Isidora Maldonado Fuentealba','2','21/01/2004','C. Marista Curicó','7','14.35','2018-02-09 00:00:00','2018-02-09 00:00:00'),(92,12,'Estefanía Arancibia Diaz','1','21/05/2003','YKA','13','-','2018-02-10 00:00:00','2018-02-10 00:00:00'),(93,13,'Nicole Darritchon Lama','4','03/10/2003','CDUC','13','13.13','2018-02-11 00:00:00','2018-02-11 00:00:00'),(94,13,'Natalie Paulina Sepulveda  Delbury','5','06/08/2003','C. D. San Pablo (Chiguayante)','8','13.48','2018-02-12 00:00:00','2018-02-12 00:00:00'),(95,13,'María Paz Alvarez Gassano','3','14/04/2004','Centro Atlético Formativo','15','13.70','2018-02-13 00:00:00','2018-02-13 00:00:00'),(96,13,'Mariana Sanhueza Welsh','6','02/01/2004','OASSI','13','13.90','2018-02-14 00:00:00','2018-02-14 00:00:00'),(97,13,'Francisca Rojas Jara','7','05/03/2004','A. Santiago','13','14.05','2018-02-15 00:00:00','2018-02-15 00:00:00'),(98,13,'Ignacia  Pinto  Parraguez','8','21/01/2004','A. Francés','13','14.19','2018-02-16 00:00:00','2018-02-16 00:00:00'),(99,13,'Francisca  Reyes Martinez','2','02/07/2003','A. Francés','13','14.37','2018-02-17 00:00:00','2018-02-17 00:00:00'),(100,14,'Irina Andrea Toth Mena','4','23/06/2003','A. Ingles','4','13.15','2018-02-18 00:00:00','2018-02-18 00:00:00'),(101,14,'Fernanda Saavedra Diaz','5','27/01/2004','A. Francés','13','13.52','2018-02-19 00:00:00','2018-02-19 00:00:00'),(102,14,'Maria del Carmen Guzman Karadima','3','23/04/2003','CDUC','13','13.77','2018-02-20 00:00:00','2018-02-20 00:00:00'),(103,14,'Melany Rocío Guerrero Chayle','6','09/07/2004','A. Copiapó','3','13.90','2018-02-21 00:00:00','2018-02-21 00:00:00'),(104,14,'Josefa Inostroza Maldnado','7','04/10/2003','C. Liceo de Curicó','7','14.06','2018-02-22 00:00:00','2018-02-22 00:00:00'),(105,14,'Francisca Cespedes Valenzuela','8','05/03/2003','Academia Iquique Bajo Molle','1','14.20','2018-02-23 00:00:00','2018-02-23 00:00:00'),(106,14,'Antonia Isidora Moya Ortiz','2','26/06/2004','C. Galgos Runners Linares','7','14.38','2018-02-24 00:00:00','2018-02-24 00:00:00'),(107,15,'Franchesca Espinoza Alarcon','4','05/03/2003','A. Cauquenes','7','13.19','2018-02-25 00:00:00','2018-02-25 00:00:00'),(108,15,'Josefa Antonia Valenzuela Pavez','5','19/05/2004','C. Piduco Talca','7','13.55','2018-02-26 00:00:00','2018-02-26 00:00:00'),(109,15,'Josefa Antonia Orellana Valdes','3','17/06/2003','C. Génesis','6','13.80','2018-02-27 00:00:00','2018-02-27 00:00:00'),(110,15,'Renata Isidora Álvarez Correa','6','29/05/2003','C. Marista Curicó','7','13.92','2018-02-28 00:00:00','2018-02-28 00:00:00'),(111,15,'Maria Paz Romero Manriquez','7','17/04/2003','A. Ingles','4','14.07','2018-03-01 00:00:00','2018-03-01 00:00:00'),(112,15,'Francisca Fabio Sepulveda','8','29/01/2004','A. Santiago','13','14.20','2018-03-02 00:00:00','2018-03-02 00:00:00'),(113,15,'Tania Loreto Garcés Schnettler','2','09/08/2003','C. Marista Curicó','7','14.40','2018-03-03 00:00:00','2018-03-03 00:00:00'),(114,16,'Constanza Escudero Cartes','4','13/08/2003','A. Coquimbo','4','13.30','2018-03-04 00:00:00','2018-03-04 00:00:00'),(115,16,'Magdalena Antonia Gandolfo Almonacid','5','28/02/2003','C. A. O’Higgins','5','13.57','2018-03-05 00:00:00','2018-03-05 00:00:00'),(116,16,'Fernanda Gonzalez Gomez','3','27/04/2004','C. A. Parral','7','13.80','2018-03-06 00:00:00','2018-03-06 00:00:00'),(117,16,'Piera Peña Gambetta','6','23/03/2003','A. Santiago','13','13.94','2018-03-07 00:00:00','2018-03-07 00:00:00'),(118,16,'Katalina  Ríos  Melipil','7','13/03/2003','C. A. Ñielol','9','14.10','2018-03-08 00:00:00','2018-03-08 00:00:00'),(119,16,'Ignacia Mirely Cheipul Cabrera','8','19/11/2003','C. Marista Curicó','7','14.20','2018-03-09 00:00:00','2018-03-09 00:00:00'),(120,16,'Chester Avila Salas','2','27/11/2004','A. Cauquenes','7','14.60','2018-03-10 00:00:00','2018-03-10 00:00:00'),(121,17,'Juan Pablo Nordetti Llul','4','14/01/2003','CDUC','13','10.04','2018-01-01 00:00:00','2018-01-01 00:00:00'),(122,17,'Vicente Perez Pellegrini','5','11/08/2004','A. Santiago','13','11.80','2018-01-02 00:00:00','2018-01-02 00:00:00'),(123,17,'Juan Pablo Baeza Jarpa','3','18/02/2003','A. Santiago','13','11.96','2018-01-03 00:00:00','2018-01-03 00:00:00'),(124,17,'Julian Murgia Nuñez','6','29/06/2004','OASSI','13','12.21','2018-01-04 00:00:00','2018-01-04 00:00:00'),(125,17,'Alfredo Vicari Torres','7','22/06/2004','C. A. Pacífico','5','12.37','2018-01-05 00:00:00','2018-01-05 00:00:00'),(126,17,'Gabriel Escalona Ilabaca','8','19/08/2003','OASSI','13','12.50','2018-01-06 00:00:00','2018-01-06 00:00:00'),(127,17,'Ignacio Orellana Gonzalez','2','10/06/2003','OASSI','13','12.80','2018-01-07 00:00:00','2018-01-07 00:00:00'),(128,17,'Eduardo Rodas Alfaro','1','12/07/2004','C. A. Pacífico','5','13.10','2018-01-08 00:00:00','2018-01-08 00:00:00'),(129,18,'Manuel Gonzalez Mallol','4','21/02/2003','A. Santiago','13','11.30','2018-01-09 00:00:00','2018-01-09 00:00:00'),(130,18,'David Ignacio Jarpa Venegas','5','02/07/2003','C. A. Nekuln Galgos (Chillan Viejo)','8','11.80','2018-01-10 00:00:00','2018-01-10 00:00:00'),(131,18,'Bolívar Alberto Lee Caniguan','3','13/12/2003','C. A. Nahuelbuta Angol','9','12.00','2018-01-11 00:00:00','2018-01-11 00:00:00'),(132,18,'Diego Hormazabal Torres','6','12/11/2004','A. Cauquenes','7','12.30','2018-01-12 00:00:00','2018-01-12 00:00:00'),(133,18,'Renato  Domínguez Olmos','7','30/03/2004','A. Francés','13','12.38','2018-01-13 00:00:00','2018-01-13 00:00:00'),(134,18,'Fabian Ferrufino Robledo','8','22/01/2004','A. Copiapó','3','12.50','2018-01-14 00:00:00','2018-01-14 00:00:00'),(135,18,'Ricardo Fenandez Arce','2','06/10/2003','C. de Atletismo Juan Silva de Lota','8','12.80','2018-01-15 00:00:00','2018-01-15 00:00:00'),(136,18,'Joaquin Vicente Lopehandia Zepeda','1','04/12/2004','A. Ingles','4','13.20','2018-01-16 00:00:00','2018-01-16 00:00:00'),(137,19,'Pedro Reyes Parada','4','14/01/2003','A. Santiago','13','11.45','2018-01-17 00:00:00','2018-01-17 00:00:00'),(138,19,'Antonio Santana Muñoz','5','19/01/2003','A. de A. Castro','10','11.90','2018-01-18 00:00:00','2018-01-18 00:00:00'),(139,19,'Gabriel Muñoz Squella','3','28/03/2003','A. Santiago','13','12.00','2018-01-19 00:00:00','2018-01-19 00:00:00'),(140,19,'Benjamin Felipe Miranda Toledo','6','06/07/2004','C. Génesis','6','12.30','2018-01-20 00:00:00','2018-01-20 00:00:00'),(141,19,'Cristobal Alejandro Salazar Alarcon','7','19/03/2003','C. Génesis','6','12.40','2018-01-21 00:00:00','2018-01-21 00:00:00'),(142,19,'Luciano Aros Acuña','8','08/03/2003','C. D. Bernardo Felmer','14','12.60','2018-01-22 00:00:00','2018-01-22 00:00:00'),(143,19,'Pedro Krebs Saez','2','27/09/2003','A. San Ignacio','13','12.85','2018-01-23 00:00:00','2018-01-23 00:00:00'),(144,19,'Nicanor Millan Viejo','1','08/07/2004','C.D. Windsor School','14','15.23','2018-01-24 00:00:00','2018-01-24 00:00:00'),(145,20,'Luis Ferney Riasco Riasco','4','10/09/2003','C. Chuquicamata','2','11.50','2018-01-25 00:00:00','2018-01-25 00:00:00'),(146,20,'Pablo Moya Guztamente','5','25/01/2003','A. Cauquenes','7','11.90','2018-01-26 00:00:00','2018-01-26 00:00:00'),(147,20,'Ignacio Aguayo Cifuentes','3','14/03/2003','C. A. Phoenix','9','12.03','2018-01-27 00:00:00','2018-01-27 00:00:00'),(148,20,'Carlos Ibarra Allende','6','30/12/2004','C. Liceo de Curicó','7','12.30','2018-01-28 00:00:00','2018-01-28 00:00:00'),(149,20,'Bastian Canales Valenzuela','7','23/06/2004','C. A. Alameda Talca','7','12.40','2018-01-29 00:00:00','2018-01-29 00:00:00'),(150,20,'Agustin Urizar Arenas','8','01/11/2004','A. San Ignacio','13','12.60','2018-01-30 00:00:00','2018-01-30 00:00:00'),(151,20,'Michel Orellana Gonzalez','2','10/06/2003','OASSI','13','12.90','2018-01-31 00:00:00','2018-01-31 00:00:00'),(152,20,'Andrés Refusta Fuentes','1','19/05/2004','CDUC','13','-','2018-02-01 00:00:00','2018-02-01 00:00:00'),(153,21,'Rodrigo Cerda','4','20/03/2003','C. D. Pilauco','10','11.50','2018-02-02 00:00:00','2018-02-02 00:00:00'),(154,21,'Francisco Javier Chiuminatto Muñoz','5','28/12/2003','C. Marista Curicó','7','11.90','2018-02-03 00:00:00','2018-02-03 00:00:00'),(155,21,'Benjamín Emilio Villa Castro','3','03/03/2004','C. A. Nahuelbuta Angol','9','12.05','2018-02-04 00:00:00','2018-02-04 00:00:00'),(156,21,'Luis Hernandez Gonzalez','6','04/06/2003','C. Liceo de Curicó','7','12.30','2018-02-05 00:00:00','2018-02-05 00:00:00'),(157,21,'Lucas  Díaz  Hernandez','7','24/12/2003','A. Francés','13','12.41','2018-02-06 00:00:00','2018-02-06 00:00:00'),(158,21,'Nahel Silva Fuentes','8','28/09/2003','OASSI','13','12.60','2018-02-07 00:00:00','2018-02-07 00:00:00'),(159,21,'Felipe Sepulveda Cordero','2','23/10/2004','U. de Tarapaca','15','12.90','2018-02-08 00:00:00','2018-02-08 00:00:00'),(160,21,'Clemente Ruiz Bianchini','1','01/09/2004','CDUC','13','-','2018-02-09 00:00:00','2018-02-09 00:00:00'),(161,22,'Matias Francisco Salgado Meneses','4','30/04/2004','C. Nilda Rojas','2','11.60','2018-02-10 00:00:00','2018-02-10 00:00:00'),(162,22,'Agustin Valdes Zegers','5','09/07/2003','A. Santiago','13','11.91','2018-02-11 00:00:00','2018-02-11 00:00:00'),(163,22,'Paulo Noemi Zuleta','3','04/04/2003','C. A. Pacífico','5','12.05','2018-02-12 00:00:00','2018-02-12 00:00:00'),(164,22,'Damian Godoy Poblete','6','04/03/2004','A. Nancagua','6','12.33','2018-02-13 00:00:00','2018-02-13 00:00:00'),(165,22,'Jose Vicente Peña Alvarado','7','17/11/2003','C. Génesis','6','12.45','2018-02-14 00:00:00','2018-02-14 00:00:00'),(166,22,'Salvador La Corte Castro','8','05/06/2003','A. San Ignacio','13','12.69','2018-02-15 00:00:00','2018-02-15 00:00:00'),(167,22,'Gabriel Fuentes Montes','2','15/11/2004','A. San Ignacio','13','12.93','2018-02-16 00:00:00','2018-02-16 00:00:00'),(168,22,'Martín Steffens','1','14/07/2004','CDUC','13','-','2018-02-17 00:00:00','2018-02-17 00:00:00'),(169,23,'Bruno Rickemberg Benedetti','4','29/04/2003','A. Santiago','13','11.60','2018-02-18 00:00:00','2018-02-18 00:00:00'),(170,23,'Alexis Macaya Arellano','5','29/06/2003','A. Cauquenes','7','11.92','2018-02-19 00:00:00','2018-02-19 00:00:00'),(171,23,'Benjamin Rojas krause','3','04/04/2004','C. A. Puerto Sur','10','12.06','2018-02-20 00:00:00','2018-02-20 00:00:00'),(172,23,'Benjamin Alfaro Escobar','6','22/04/2004','A. Nancagua','6','12.36','2018-02-21 00:00:00','2018-02-21 00:00:00'),(173,23,'Ignacio Campos Del Saz','7','21/03/2004','C. A. Parral','7','12.45','2018-02-22 00:00:00','2018-02-22 00:00:00'),(174,23,'Fabrizio Arias Terrone','8','16/06/2003','A. San Ignacio','13','12.78','2018-02-23 00:00:00','2018-02-23 00:00:00'),(175,23,'Gabriel Abid Gallardo Marin','2','22/01/2004','A. Coquimbo','4','13.00','2018-02-24 00:00:00','2018-02-24 00:00:00'),(176,23,'Eduardo Alvarez Mohr','1','12/07/2004','Escuela de Atletismo Osorno','10','-','2018-02-25 00:00:00','2018-02-25 00:00:00'),(177,24,'Joaquín Alberto Miño Farías','4','15/04/2003','C. Marista Curicó','7','11.60','2018-02-26 00:00:00','2018-02-26 00:00:00'),(178,24,'Joaquín Alberto Pérez Guajardo','5','04/01/2004','C. Marista Curicó','7','11.95','2018-02-27 00:00:00','2018-02-27 00:00:00'),(179,24,'Yasser Ismail Llanquinao','3','06/12/2003','C. A. Phoenix','9','12.20','2018-02-28 00:00:00','2018-02-28 00:00:00'),(180,24,'Martin  Escaida Sandoval','6','05/09/2004','A. Francés','13','12.37','2018-03-01 00:00:00','2018-03-01 00:00:00'),(181,24,'Max Leonardo Davila Delgado','7','29/05/2004','C. A. Tamarugo','1','12.50','2018-03-02 00:00:00','2018-03-02 00:00:00'),(182,24,'Juan Contreras Contreras','8','15/04/2004','C. D. Bernardo Felmer','14','12.80','2018-03-03 00:00:00','2018-03-03 00:00:00'),(183,24,'Juan Torres Torres','2','07/07/2004','A. Cauquenes','7','13.09','2018-03-04 00:00:00','2018-03-04 00:00:00'),(184,25,'Catalina Fernandez Barrientos','','06/05/2004','C. A. Coyhaique','11','05.45.00','2018-05-26 06:21:59','2018-05-26 06:21:59'),(185,25,'Camila  Smith Canovas','','28/05/2004','C. A. Phoenix','9','05.50.00','2018-05-26 06:22:19','2018-05-26 06:22:19'),(186,25,'Yarleth Toledo Segovia','','10/05/2003','C. A. Puerto Sur','10','05.55.00','2018-05-26 06:22:41','2018-05-26 06:22:41'),(187,25,'Dafne  Sandoval   Carrasco','','20/12/2003','C. de Deportes Saavedra','9','06.08.00','2018-05-26 06:23:09','2018-05-26 06:23:09'),(188,25,'Valentina Paz López Schalard','','30/06/2004','C. Chuquicamata','2','06.39.90','2018-05-26 06:23:31','2018-05-26 06:23:31'),(189,25,'Paula Belen Aracena Alvares','','04/08/2004','A. Coquimbo','4','06.40.00','2018-05-26 06:24:07','2018-05-26 06:24:07'),(190,25,'Sofia Belen Garcia Villaloboz','','16/10/2003','C. A. Alameda Talca','7','08.25.00','2018-05-26 06:24:27','2018-05-26 06:24:27'),(191,25,'Solange Aylin Varas  Jiménez','','17/04/2003','C. Escuela Infantil de Atletismo Llay Llay','5','','2018-05-26 06:24:49','2018-05-26 06:24:49'),(192,26,'Samuel Millao Diaz','','25/03/2003','C. de Atletismo Punta Arenas','12','04.52.00','2018-05-26 06:25:59','2018-05-26 06:25:59'),(193,26,'Brayan Antonio  Jara  Jara','','02/01/2003','C. A. de Los Angeles','8','04.55.00','2018-05-26 06:26:21','2018-05-26 06:26:21'),(194,26,'Miguel Ignacio Acuña Mellado','','11/01/2003','Cadecu Athletic','8','04.58.00','2018-05-26 06:26:45','2018-05-26 06:26:45'),(195,26,'Jose Ignacio Grau Vargas','','04/02/2003','C. A. Hector Neira','10','04.59.00','2018-05-26 06:27:06','2018-05-26 06:27:06'),(196,26,'Domingo Court Alicera','','03/10/2003','A. Francés','13','04.59.00','2018-05-26 06:27:30','2018-05-26 06:27:30'),(197,26,'Christian  Urrutia Alarcón ','','03/10/2003','A. Francés','13','04.59.00','2018-05-26 06:27:58','2018-05-26 06:27:58'),(198,26,'Christian  Urrutia Alarcón ','','18/02/2003','A. Francés','13','05.00.00','2018-05-26 06:28:18','2018-05-26 06:28:18'),(199,26,'Ignacio  Valdez Aravena','','29/08/2003','A. de A. Castro','10','05.02.00','2018-05-26 06:28:38','2018-05-26 06:28:38'),(200,26,'Gonzalo Morales Godoy','','21/02/2004','C. A. Puerto Sur','10','05.12.00','2018-05-26 06:29:02','2018-05-26 06:29:02'),(201,26,'Guillermo Nicolás Sarabia Ledezma','','01/04/2003','C. Chuquicamata','2','05.12.82','2018-05-26 06:29:31','2018-05-26 06:29:31'),(202,26,'Cristobal Jimenez Pasten','','27/05/2003','C. D. S. C. San Antonio','4','06.10.00','2018-05-26 06:29:52','2018-05-26 06:29:52'),(203,26,'Javier Segura Dos Santos','','13/09/2003','C. A. Alameda Talca','7','06.30.00','2018-05-26 06:30:13','2018-05-26 06:30:13'),(204,26,'Lukas Alfredo Castro Mollo','','18/11/2003','C. A. Tamarugo','1','','2018-05-26 06:30:34','2018-05-26 06:30:34'),(205,26,'Nicolas Andres Dinamarca Pinto','','19/01/2004','C. A. Tamarugo','1','','2018-05-26 06:30:54','2018-05-26 06:30:54'),(206,27,'Joaquín Alberto Miño Farías','4','15/04/2003','C. Marista Curicó','7','14.00','2018-01-01 00:00:00','2018-01-01 00:00:00'),(207,27,'Pedro  Morales Delano','5','21/03/2004','C. A. Pacífico','5','14.77','2018-01-02 00:00:00','2018-01-02 00:00:00'),(208,27,'Lucas Palacios Undurraga','3','31/03/2003','Manquehue','13','14.80','2018-01-03 00:00:00','2018-01-03 00:00:00'),(209,27,'Diego Gonzalez Martinez','6','29/05/2003','C. A. Gerardo Manzanares','10','15.08','2018-01-04 00:00:00','2018-01-04 00:00:00'),(210,27,'Joaquin Mondaca Fellenberg','7','07/06/2003','A. San Ignacio','13','15.38','2018-01-05 00:00:00','2018-01-05 00:00:00'),(211,27,'J. Manuel Espinosa Valenzuela','8','08/10/2003','A. San Ignacio','13','15.85','2018-01-06 00:00:00','2018-01-06 00:00:00'),(212,27,'Eduardo Rodas Alfaro','2','12/07/2004','C. A. Pacífico','5','16.30','2018-01-07 00:00:00','2018-01-07 00:00:00'),(213,27,'Bastian Canales Valenzuela','1','23/06/2004','C. A. Alameda Talca','7','17.00','2018-01-08 00:00:00','2018-01-08 00:00:00'),(214,28,'Benjamin Alonso Gutierrez Nuñez','4','05/07/2003','C. Génesis','6','14.40','2018-01-09 00:00:00','2018-01-09 00:00:00'),(215,28,'Pedro Irarrazaval Valdes','5','26/02/2003','A. Santiago','13','14.79','2018-01-10 00:00:00','2018-01-10 00:00:00'),(216,28,'Sebastían Sotomayor Mestre','3','05/07/2004','Manquehue','13','14.80','2018-01-11 00:00:00','2018-01-11 00:00:00'),(217,28,'Matás Gonzalez Romero','6','26/06/2003','Manquehue','13','15.10','2018-01-12 00:00:00','2018-01-12 00:00:00'),(218,28,'Joel Vallejos Alvarado','7','11/01/2004','A. Copiapó','3','15.50','2018-01-13 00:00:00','2018-01-13 00:00:00'),(219,28,'Cristoper Colombi Yañez','8','10/07/2003','A. Cauquenes','7','15.92','2018-01-14 00:00:00','2018-01-14 00:00:00'),(220,28,'Martin Olavarria Jara','2','26/11/2003','C. A. Puerto Sur','10','16.58','2018-01-15 00:00:00','2018-01-15 00:00:00'),(221,28,'Eduardo Alvarez Mohr','1','12/07/2004','Escuela de Atletismo Osorno','10','-','2018-01-16 00:00:00','2018-01-16 00:00:00'),(222,29,'Mauricio Irribarren Poyanopulos','4','13/01/2004','Centro Atlético Formativo','15','14.50','2018-01-17 00:00:00','2018-01-17 00:00:00'),(223,29,'Alexander Vega Stamm','5','16/03/2003','CDUC','13','14.80','2018-01-18 00:00:00','2018-01-18 00:00:00'),(224,29,'Cristobal Bernales Magnere','3','13/10/2004','A. Santiago','13','15.00','2018-01-19 00:00:00','2018-01-19 00:00:00'),(225,29,'Pedro Costa Aguirre','6','20/05/2003','C. A. Pacífico','5','15.19','2018-01-20 00:00:00','2018-01-20 00:00:00'),(226,29,'Santiago Perez Pellegrini','7','23/02/2003','A. Santiago','13','15.60','2018-01-21 00:00:00','2018-01-21 00:00:00'),(227,29,'Maximiliano Rosmanich Bravo','8','28/05/2003','A. Santiago','13','16.00','2018-01-22 00:00:00','2018-01-22 00:00:00'),(228,29,'Matias Adrian Tapia Lucero','2','16/05/2004','C. A. Nacional Iquique','1','16.90','2018-01-23 00:00:00','2018-01-23 00:00:00'),(229,29,'Diego Ibacache Basaez','1','17/06/2003','C. A. Limache','5','-','2018-01-24 00:00:00','2018-01-24 00:00:00'),(230,30,'Martin Delgado Gonzalez','-','15/07/2004','C. A. Gerardo Manzanares','10','-','2018-01-01 00:00:00','2018-01-01 00:00:00'),(231,30,'Benjamin Alvarado Olmi','-','01/04/2003','C. A. Puerto Sur','10','-','2018-01-02 00:00:00','2018-01-02 00:00:00'),(232,30,'Manuel Vasquez','-','22/09/2004','C. D. Pilauco','10','-','2018-01-03 00:00:00','2018-01-03 00:00:00'),(233,30,'Santiago Salinas Cabrera','-','04/04/2003','A. Santiago','13','-','2018-01-04 00:00:00','2018-01-04 00:00:00'),(234,30,'Joaquín Cristóbal Galleguillos Puebla','-','08/02/2003','C. Manquemávida de Santa Cruz','6','-','2018-01-05 00:00:00','2018-01-05 00:00:00'),(235,30,'Benjamin Gonzalez Olguin','-','06/04/2003','A. Nancagua','6','-','2018-01-06 00:00:00','2018-01-06 00:00:00'),(236,30,'Eduardo Camp Summerset','-','04/09/2003','Centro Atlético Formativo','15','-','2018-01-07 00:00:00','2018-01-07 00:00:00'),(237,30,'Mauricio Irribarren Poyanopulos','-','13/01/2004','Centro Atlético Formativo','15','-','2018-01-08 00:00:00','2018-01-08 00:00:00'),(238,30,'Pablo Rojas Muñoz','-','01/07/2003','C. A. Alameda Talca','7','-','2018-01-09 00:00:00','2018-01-09 00:00:00'),(239,31,'Martin Delgado Gonzalez','-','15/07/2004','C. A. Gerardo Manzanares','10','-','2018-01-01 00:00:00','2018-01-01 00:00:00'),(240,31,'Benjamin Alvarado Olmi','-','01/04/2003','C. A. Puerto Sur','10','-','2018-01-02 00:00:00','2018-01-02 00:00:00'),(241,31,'Manuel Vasquez','-','22/09/2004','C. D. Pilauco','10','-','2018-01-03 00:00:00','2018-01-03 00:00:00'),(242,31,'Santiago Salinas Cabrera','-','04/04/2003','A. Santiago','13','-','2018-01-04 00:00:00','2018-01-04 00:00:00'),(243,31,'Joaquín Cristóbal Galleguillos Puebla','-','08/02/2003','C. Manquemávida de Santa Cruz','6','-','2018-01-05 00:00:00','2018-01-05 00:00:00'),(244,31,'Benjamin Gonzalez Olguin','-','06/04/2003','A. Nancagua','6','-','2018-01-06 00:00:00','2018-01-06 00:00:00'),(245,31,'Eduardo Camp Summerset','-','04/09/2003','Centro Atlético Formativo','15','-','2018-01-07 00:00:00','2018-01-07 00:00:00'),(246,31,'Mauricio Irribarren Poyanopulos','-','13/01/2004','Centro Atlético Formativo','15','-','2018-01-08 00:00:00','2018-01-08 00:00:00'),(247,31,'Pablo Rojas Muñoz','-','01/07/2003','C. A. Alameda Talca','7','-','2018-01-09 00:00:00','2018-01-09 00:00:00'),(248,32,'Martin Delgado Gonzalez','-','15/07/2004','C. A. Gerardo Manzanares','10','-','2018-01-01 00:00:00','2018-01-01 00:00:00'),(249,32,'Benjamin Alvarado Olmi','-','01/04/2003','C. A. Puerto Sur','10','-','2018-01-02 00:00:00','2018-01-02 00:00:00'),(250,32,'Manuel Vasquez','-','22/09/2004','C. D. Pilauco','10','-','2018-01-03 00:00:00','2018-01-03 00:00:00'),(251,32,'Santiago Salinas Cabrera','-','04/04/2003','A. Santiago','13','-','2018-01-04 00:00:00','2018-01-04 00:00:00'),(252,32,'Joaquín Cristóbal Galleguillos Puebla','-','08/02/2003','C. Manquemávida de Santa Cruz','6','-','2018-01-05 00:00:00','2018-01-05 00:00:00'),(253,32,'Benjamin Gonzalez Olguin','-','06/04/2003','A. Nancagua','6','-','2018-01-06 00:00:00','2018-01-06 00:00:00'),(254,32,'Eduardo Camp Summerset','-','04/09/2003','Centro Atlético Formativo','15','-','2018-01-07 00:00:00','2018-01-07 00:00:00'),(255,32,'Mauricio Irribarren Poyanopulos','-','13/01/2004','Centro Atlético Formativo','15','-','2018-01-08 00:00:00','2018-01-08 00:00:00'),(256,32,'Pablo Rojas Muñoz','-','01/07/2003','C. A. Alameda Talca','7','-','2018-01-09 00:00:00','2018-01-09 00:00:00');
/*!40000 ALTER TABLE `start2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female10000mts`
--

DROP TABLE IF EXISTS `start_female10000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female10000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female10000mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female10000mts`
--

LOCK TABLES `start_female10000mts` WRITE;
/*!40000 ALTER TABLE `start_female10000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female10000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female100mthudrles`
--

DROP TABLE IF EXISTS `start_female100mthudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female100mthudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female100mthudresHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female100mthudrles`
--

LOCK TABLES `start_female100mthudrles` WRITE;
/*!40000 ALTER TABLE `start_female100mthudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female100mthudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female100mts`
--

DROP TABLE IF EXISTS `start_female100mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female100mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female100mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female100mts`
--

LOCK TABLES `start_female100mts` WRITE;
/*!40000 ALTER TABLE `start_female100mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female100mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female110mtshudrles`
--

DROP TABLE IF EXISTS `start_female110mtshudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female110mtshudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female110mtshudrleStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female110mtshudrles`
--

LOCK TABLES `start_female110mtshudrles` WRITE;
/*!40000 ALTER TABLE `start_female110mtshudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female110mtshudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female1500mts`
--

DROP TABLE IF EXISTS `start_female1500mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female1500mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female1500mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female1500mts`
--

LOCK TABLES `start_female1500mts` WRITE;
/*!40000 ALTER TABLE `start_female1500mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female1500mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female20000mts`
--

DROP TABLE IF EXISTS `start_female20000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female20000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female20000mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female20000mts`
--

LOCK TABLES `start_female20000mts` WRITE;
/*!40000 ALTER TABLE `start_female20000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female20000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female200mts`
--

DROP TABLE IF EXISTS `start_female200mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female200mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female200mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female200mts`
--

LOCK TABLES `start_female200mts` WRITE;
/*!40000 ALTER TABLE `start_female200mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female200mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female3000mts`
--

DROP TABLE IF EXISTS `start_female3000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female3000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female3000mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female3000mts`
--

LOCK TABLES `start_female3000mts` WRITE;
/*!40000 ALTER TABLE `start_female3000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female3000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female3000mtsobstacles`
--

DROP TABLE IF EXISTS `start_female3000mtsobstacles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female3000mtsobstacles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female3000mtsobstacleStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female3000mtsobstacles`
--

LOCK TABLES `start_female3000mtsobstacles` WRITE;
/*!40000 ALTER TABLE `start_female3000mtsobstacles` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female3000mtsobstacles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female400mts`
--

DROP TABLE IF EXISTS `start_female400mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female400mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female400mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female400mts`
--

LOCK TABLES `start_female400mts` WRITE;
/*!40000 ALTER TABLE `start_female400mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female400mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female400mtshudrles`
--

DROP TABLE IF EXISTS `start_female400mtshudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female400mtshudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female400mtshudrleStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female400mtshudrles`
--

LOCK TABLES `start_female400mtshudrles` WRITE;
/*!40000 ALTER TABLE `start_female400mtshudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female400mtshudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female4x100mts`
--

DROP TABLE IF EXISTS `start_female4x100mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female4x100mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female4x100mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female4x100mts`
--

LOCK TABLES `start_female4x100mts` WRITE;
/*!40000 ALTER TABLE `start_female4x100mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female4x100mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female4x400mts`
--

DROP TABLE IF EXISTS `start_female4x400mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female4x400mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female4x400mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female4x400mts`
--

LOCK TABLES `start_female4x400mts` WRITE;
/*!40000 ALTER TABLE `start_female4x400mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female4x400mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female5000mts`
--

DROP TABLE IF EXISTS `start_female5000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female5000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female5000mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female5000mts`
--

LOCK TABLES `start_female5000mts` WRITE;
/*!40000 ALTER TABLE `start_female5000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female5000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female800mts`
--

DROP TABLE IF EXISTS `start_female800mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female800mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female800mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female800mts`
--

LOCK TABLES `start_female800mts` WRITE;
/*!40000 ALTER TABLE `start_female800mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female800mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female8x50mts`
--

DROP TABLE IF EXISTS `start_female8x50mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female8x50mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `female8x50mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female8x50mts`
--

LOCK TABLES `start_female8x50mts` WRITE;
/*!40000 ALTER TABLE `start_female8x50mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female8x50mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female_discus_throws`
--

DROP TABLE IF EXISTS `start_female_discus_throws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female_discus_throws` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femalediscusthrowStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female_discus_throws`
--

LOCK TABLES `start_female_discus_throws` WRITE;
/*!40000 ALTER TABLE `start_female_discus_throws` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female_discus_throws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female_hammer_throws`
--

DROP TABLE IF EXISTS `start_female_hammer_throws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female_hammer_throws` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femalehammerthrowStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female_hammer_throws`
--

LOCK TABLES `start_female_hammer_throws` WRITE;
/*!40000 ALTER TABLE `start_female_hammer_throws` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female_hammer_throws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female_high_jumps`
--

DROP TABLE IF EXISTS `start_female_high_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female_high_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femalehighjumpStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female_high_jumps`
--

LOCK TABLES `start_female_high_jumps` WRITE;
/*!40000 ALTER TABLE `start_female_high_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female_high_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female_javelins`
--

DROP TABLE IF EXISTS `start_female_javelins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female_javelins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femaleJavelinHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female_javelins`
--

LOCK TABLES `start_female_javelins` WRITE;
/*!40000 ALTER TABLE `start_female_javelins` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female_javelins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female_jumps`
--

DROP TABLE IF EXISTS `start_female_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femaleJumpHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female_jumps`
--

LOCK TABLES `start_female_jumps` WRITE;
/*!40000 ALTER TABLE `start_female_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female_long_jumps`
--

DROP TABLE IF EXISTS `start_female_long_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female_long_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femalelongjumpStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female_long_jumps`
--

LOCK TABLES `start_female_long_jumps` WRITE;
/*!40000 ALTER TABLE `start_female_long_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female_long_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female_pole_jumps`
--

DROP TABLE IF EXISTS `start_female_pole_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female_pole_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femalepolejumpStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female_pole_jumps`
--

LOCK TABLES `start_female_pole_jumps` WRITE;
/*!40000 ALTER TABLE `start_female_pole_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female_pole_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female_senior200mts`
--

DROP TABLE IF EXISTS `start_female_senior200mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female_senior200mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femalesenior200mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female_senior200mts`
--

LOCK TABLES `start_female_senior200mts` WRITE;
/*!40000 ALTER TABLE `start_female_senior200mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female_senior200mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female_shot_puts`
--

DROP TABLE IF EXISTS `start_female_shot_puts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female_shot_puts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femaleShotPutHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female_shot_puts`
--

LOCK TABLES `start_female_shot_puts` WRITE;
/*!40000 ALTER TABLE `start_female_shot_puts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female_shot_puts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_female_triple_jumps`
--

DROP TABLE IF EXISTS `start_female_triple_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_female_triple_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `femaletriplejumpStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_female_triple_jumps`
--

LOCK TABLES `start_female_triple_jumps` WRITE;
/*!40000 ALTER TABLE `start_female_triple_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_female_triple_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_heads`
--

DROP TABLE IF EXISTS `start_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `sex_id` bigint(20) DEFAULT NULL,
  `competition_id` bigint(20) DEFAULT NULL,
  `sport_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_start_heads_on_sex_id` (`sex_id`),
  KEY `index_start_heads_on_competition_id` (`competition_id`),
  KEY `index_start_heads_on_sport_id` (`sport_id`),
  KEY `index_start_heads_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_12f714d1b8` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_rails_4bfa14093b` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`),
  CONSTRAINT `fk_rails_67a6a4eb26` FOREIGN KEY (`sex_id`) REFERENCES `sexes` (`id`),
  CONSTRAINT `fk_rails_ef4477027e` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_heads`
--

LOCK TABLES `start_heads` WRITE;
/*!40000 ALTER TABLE `start_heads` DISABLE KEYS */;
INSERT INTO `start_heads` VALUES (1,NULL,NULL,1,22,1,1,'1','2018-05-26 04:36:32','2018-05-26 04:36:42'),(2,NULL,NULL,1,22,1,1,'2','2018-05-26 04:43:58','2018-05-26 04:44:05'),(3,NULL,NULL,1,1,1,1,'','2018-05-26 05:29:24','2018-05-26 05:29:24'),(4,NULL,NULL,1,2,1,1,'','2018-05-26 05:33:00','2018-05-26 05:33:00'),(5,NULL,NULL,1,3,1,1,'1','2018-05-26 05:37:09','2018-05-26 05:37:09'),(6,NULL,NULL,1,5,1,1,'1','2018-05-26 05:43:51','2018-05-26 05:43:51'),(7,NULL,NULL,1,6,1,1,'1','2018-05-26 05:48:06','2018-05-26 05:48:06'),(8,NULL,NULL,1,7,1,1,'1','2018-05-26 05:50:55','2018-05-26 05:50:55'),(9,NULL,NULL,1,7,1,1,'2','2018-05-26 05:50:59','2018-05-26 05:50:59'),(10,NULL,NULL,1,7,1,1,'3','2018-05-26 05:51:05','2018-05-26 05:51:05'),(11,NULL,NULL,1,7,1,1,'4','2018-05-26 05:51:10','2018-05-26 05:51:10'),(12,NULL,NULL,1,7,1,1,'5','2018-05-26 05:51:16','2018-05-26 05:51:16'),(13,NULL,NULL,1,7,1,1,'6','2018-05-26 05:51:24','2018-05-26 05:51:24'),(14,NULL,NULL,1,7,1,1,'7','2018-05-26 05:51:30','2018-05-26 05:51:30'),(15,NULL,NULL,1,7,1,1,'8','2018-05-26 05:51:37','2018-05-26 05:51:37'),(16,NULL,NULL,1,7,1,1,'9','2018-05-26 05:51:44','2018-05-26 05:51:44'),(17,NULL,NULL,1,12,1,1,'1','2018-05-26 06:08:14','2018-05-26 06:08:14'),(18,NULL,NULL,1,12,1,1,'2','2018-05-26 06:08:18','2018-05-26 06:08:18'),(19,NULL,NULL,1,12,1,1,'3','2018-05-26 06:08:23','2018-05-26 06:08:23'),(20,NULL,NULL,1,12,1,1,'4','2018-05-26 06:08:30','2018-05-26 06:08:30'),(21,NULL,NULL,1,12,1,1,'5','2018-05-26 06:08:36','2018-05-26 06:08:36'),(22,NULL,NULL,1,12,1,1,'6','2018-05-26 06:08:42','2018-05-26 06:08:42'),(23,NULL,NULL,1,12,1,1,'7','2018-05-26 06:08:50','2018-05-26 06:08:50'),(24,NULL,NULL,1,12,1,1,'8','2018-05-26 06:08:56','2018-05-26 06:08:56'),(25,NULL,NULL,1,15,1,1,'1','2018-05-26 06:18:48','2018-05-26 06:18:48'),(26,NULL,NULL,1,16,1,1,'1','2018-05-26 06:25:24','2018-05-26 06:25:24'),(27,NULL,NULL,1,24,1,1,'1','2018-05-26 06:37:01','2018-05-26 06:37:01'),(28,NULL,NULL,1,24,1,1,'2','2018-05-26 06:37:05','2018-05-26 06:37:05'),(29,NULL,NULL,1,24,1,1,'3','2018-05-26 06:37:09','2018-05-26 06:37:09'),(30,NULL,NULL,1,4,1,1,'1','2018-05-26 06:59:08','2018-05-26 06:59:08'),(31,NULL,NULL,1,9,1,1,'1','2018-05-26 07:02:17','2018-05-26 07:02:17'),(32,NULL,NULL,1,11,1,1,'1','2018-05-26 07:04:37','2018-05-26 07:04:37');
/*!40000 ALTER TABLE `start_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male10000mts`
--

DROP TABLE IF EXISTS `start_male10000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male10000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male10000mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male10000mts`
--

LOCK TABLES `start_male10000mts` WRITE;
/*!40000 ALTER TABLE `start_male10000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male10000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male100mthudrles`
--

DROP TABLE IF EXISTS `start_male100mthudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male100mthudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male100mthudresHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male100mthudrles`
--

LOCK TABLES `start_male100mthudrles` WRITE;
/*!40000 ALTER TABLE `start_male100mthudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male100mthudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male100mts`
--

DROP TABLE IF EXISTS `start_male100mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male100mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male100mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male100mts`
--

LOCK TABLES `start_male100mts` WRITE;
/*!40000 ALTER TABLE `start_male100mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male100mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male110mtshudrles`
--

DROP TABLE IF EXISTS `start_male110mtshudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male110mtshudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male110mtshudrleStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male110mtshudrles`
--

LOCK TABLES `start_male110mtshudrles` WRITE;
/*!40000 ALTER TABLE `start_male110mtshudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male110mtshudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male1500mts`
--

DROP TABLE IF EXISTS `start_male1500mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male1500mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male1500mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male1500mts`
--

LOCK TABLES `start_male1500mts` WRITE;
/*!40000 ALTER TABLE `start_male1500mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male1500mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male20000mts`
--

DROP TABLE IF EXISTS `start_male20000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male20000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male20000mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male20000mts`
--

LOCK TABLES `start_male20000mts` WRITE;
/*!40000 ALTER TABLE `start_male20000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male20000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male200mts`
--

DROP TABLE IF EXISTS `start_male200mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male200mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male200mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male200mts`
--

LOCK TABLES `start_male200mts` WRITE;
/*!40000 ALTER TABLE `start_male200mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male200mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male3000mts`
--

DROP TABLE IF EXISTS `start_male3000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male3000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male3000mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male3000mts`
--

LOCK TABLES `start_male3000mts` WRITE;
/*!40000 ALTER TABLE `start_male3000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male3000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male3000mtsobstacles`
--

DROP TABLE IF EXISTS `start_male3000mtsobstacles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male3000mtsobstacles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male3000mtsobstacleStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male3000mtsobstacles`
--

LOCK TABLES `start_male3000mtsobstacles` WRITE;
/*!40000 ALTER TABLE `start_male3000mtsobstacles` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male3000mtsobstacles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male400mts`
--

DROP TABLE IF EXISTS `start_male400mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male400mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male400mtsHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male400mts`
--

LOCK TABLES `start_male400mts` WRITE;
/*!40000 ALTER TABLE `start_male400mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male400mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male400mtshudrles`
--

DROP TABLE IF EXISTS `start_male400mtshudrles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male400mtshudrles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male400mtshudrleStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male400mtshudrles`
--

LOCK TABLES `start_male400mtshudrles` WRITE;
/*!40000 ALTER TABLE `start_male400mtshudrles` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male400mtshudrles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male4x100mts`
--

DROP TABLE IF EXISTS `start_male4x100mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male4x100mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male4x100mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male4x100mts`
--

LOCK TABLES `start_male4x100mts` WRITE;
/*!40000 ALTER TABLE `start_male4x100mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male4x100mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male4x400mts`
--

DROP TABLE IF EXISTS `start_male4x400mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male4x400mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male4x400mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male4x400mts`
--

LOCK TABLES `start_male4x400mts` WRITE;
/*!40000 ALTER TABLE `start_male4x400mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male4x400mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male5000mts`
--

DROP TABLE IF EXISTS `start_male5000mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male5000mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male5000mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male5000mts`
--

LOCK TABLES `start_male5000mts` WRITE;
/*!40000 ALTER TABLE `start_male5000mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male5000mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male800mts`
--

DROP TABLE IF EXISTS `start_male800mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male800mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male800mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male800mts`
--

LOCK TABLES `start_male800mts` WRITE;
/*!40000 ALTER TABLE `start_male800mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male800mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male8x50mts`
--

DROP TABLE IF EXISTS `start_male8x50mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male8x50mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male8x50mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male8x50mts`
--

LOCK TABLES `start_male8x50mts` WRITE;
/*!40000 ALTER TABLE `start_male8x50mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male8x50mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male_discus_throws`
--

DROP TABLE IF EXISTS `start_male_discus_throws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male_discus_throws` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `male_discus_throwStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male_discus_throws`
--

LOCK TABLES `start_male_discus_throws` WRITE;
/*!40000 ALTER TABLE `start_male_discus_throws` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male_discus_throws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male_hammer_throws`
--

DROP TABLE IF EXISTS `start_male_hammer_throws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male_hammer_throws` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `malehammerthrowStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male_hammer_throws`
--

LOCK TABLES `start_male_hammer_throws` WRITE;
/*!40000 ALTER TABLE `start_male_hammer_throws` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male_hammer_throws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male_high_jumps`
--

DROP TABLE IF EXISTS `start_male_high_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male_high_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `malehighjumpStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male_high_jumps`
--

LOCK TABLES `start_male_high_jumps` WRITE;
/*!40000 ALTER TABLE `start_male_high_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male_high_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male_javelins`
--

DROP TABLE IF EXISTS `start_male_javelins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male_javelins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `maleJavelinHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male_javelins`
--

LOCK TABLES `start_male_javelins` WRITE;
/*!40000 ALTER TABLE `start_male_javelins` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male_javelins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male_long_jumps`
--

DROP TABLE IF EXISTS `start_male_long_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male_long_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `malelongjumpStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male_long_jumps`
--

LOCK TABLES `start_male_long_jumps` WRITE;
/*!40000 ALTER TABLE `start_male_long_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male_long_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male_pole_jumps`
--

DROP TABLE IF EXISTS `start_male_pole_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male_pole_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `malepolejumpStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male_pole_jumps`
--

LOCK TABLES `start_male_pole_jumps` WRITE;
/*!40000 ALTER TABLE `start_male_pole_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male_pole_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male_senior200mts`
--

DROP TABLE IF EXISTS `start_male_senior200mts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male_senior200mts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `malesenior200mtStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male_senior200mts`
--

LOCK TABLES `start_male_senior200mts` WRITE;
/*!40000 ALTER TABLE `start_male_senior200mts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male_senior200mts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male_shot_puts`
--

DROP TABLE IF EXISTS `start_male_shot_puts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male_shot_puts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `maleShotPutHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male_shot_puts`
--

LOCK TABLES `start_male_shot_puts` WRITE;
/*!40000 ALTER TABLE `start_male_shot_puts` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male_shot_puts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male_throwing_discs`
--

DROP TABLE IF EXISTS `start_male_throwing_discs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male_throwing_discs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `maleThrowingDiscHead_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male_throwing_discs`
--

LOCK TABLES `start_male_throwing_discs` WRITE;
/*!40000 ALTER TABLE `start_male_throwing_discs` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male_throwing_discs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start_male_triple_jumps`
--

DROP TABLE IF EXISTS `start_male_triple_jumps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `start_male_triple_jumps` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `rail` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `maletriplejumpStart_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_male_triple_jumps`
--

LOCK TABLES `start_male_triple_jumps` WRITE;
/*!40000 ALTER TABLE `start_male_triple_jumps` DISABLE KEYS */;
/*!40000 ALTER TABLE `start_male_triple_jumps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `starts`
--

DROP TABLE IF EXISTS `starts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `starts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `sex_id` bigint(20) DEFAULT NULL,
  `competition_id` bigint(20) DEFAULT NULL,
  `sport_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_starts_on_sex_id` (`sex_id`),
  KEY `index_starts_on_competition_id` (`competition_id`),
  KEY `index_starts_on_sport_id` (`sport_id`),
  KEY `index_starts_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_328cdaddd4` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_rails_3bf940200b` FOREIGN KEY (`sex_id`) REFERENCES `sexes` (`id`),
  CONSTRAINT `fk_rails_6d7e07db4a` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`),
  CONSTRAINT `fk_rails_ab69ca0b13` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starts`
--

LOCK TABLES `starts` WRITE;
/*!40000 ALTER TABLE `starts` DISABLE KEYS */;
/*!40000 ALTER TABLE `starts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throw2s`
--

DROP TABLE IF EXISTS `throw2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throw2s` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `throw_head2_id` bigint(20) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `second` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `fifth` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `bestAchievement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_throw2s_on_throw_head2_id` (`throw_head2_id`),
  CONSTRAINT `fk_rails_cc49732cab` FOREIGN KEY (`throw_head2_id`) REFERENCES `throw_head2s` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throw2s`
--

LOCK TABLES `throw2s` WRITE;
/*!40000 ALTER TABLE `throw2s` DISABLE KEYS */;
INSERT INTO `throw2s` VALUES (2,1,'Catalina Obando Nahuelpan','8/2/2004','C. D. Bernardo Felmer','14','','','','','','','','N/M','','2018-05-26 14:02:24','2018-05-26 19:44:29',NULL),(3,1,'Yadhira Marisol Velasquez Anaya','2/14/2003','C. A. Nacional Iquique','1','','','','','','','','DNS','','2018-05-26 14:03:08','2018-05-26 19:44:22',NULL),(4,1,'Josefina Martina Calistro Carcamo','7/27/2004','C. A. Hector Neira','10','','','','','','','','DNS','','2018-05-26 14:03:31','2018-05-26 19:44:24',NULL),(5,1,'Nayeli Antuane Cucho Solano','2/23/2003','C. Chuquicamata','2','','','','','','','','N/M','','2018-05-26 14:03:57','2018-05-26 19:44:30',NULL),(6,1,'Danitza  Haro Chacon','8/6/2003','A. de A. Castro','10','','','','','','','','N/M','','2018-05-26 14:04:41','2018-05-26 19:44:32',NULL),(7,1,'Barbara Aravena Friz','12/11/2004','A. Cauquenes','7','31.77','35.06','34.34','3','3.83','30.18','32.30','35.06','6','2018-05-26 14:05:09','2018-05-26 15:51:03',NULL),(8,1,'Macarena Jara De Los Reyes','2/25/2003','Ulagos Pto.Montt','10','','','','','','','','DNS','','2018-05-26 14:05:44','2018-05-26 19:44:26',NULL),(9,1,'Sofia Elena Diaz Fuentes','5/28/2003','C. A. Nueva Generación (Laja)','8','35.33','X','X','4','X','X','X','35.33','5','2018-05-26 14:06:37','2018-05-26 15:51:57',NULL),(10,1,'Sara Antonia  Vera Vera','5/19/2004','C. A. San Nicolas','8','35.49','M','33.70','5','35.47','32.51','30.49','35.49','4','2018-05-26 14:07:08','2018-05-26 15:53:18',NULL),(11,1,'Almendra Jofré González','4/24/2004','A. Copiapó','3','41.40','X','X','7','38.90','43.02','X','43.02','3','2018-05-26 14:07:31','2018-05-26 15:54:14',NULL),(12,1,'María José Nova Arteaga','7/22/2003','C. D. Colegio Padre Hurtado de Chillan','8','X','X','39.08','6','42.54','44.08','43.25','44.08','2','2018-05-26 14:08:07','2018-05-26 15:54:59',NULL),(13,1,'Valentina Claveria Sanchez','2/20/2003','C. D. Colegio Padre Hurtado de Chillan','8','54.05','56.95','56.80','8','54.70','55.86','57.58','57.58','1','2018-05-26 14:08:51','2018-05-26 15:55:43',NULL),(43,2,'Pablo Rojas Muñoz','2003-07-01','C. A. Alameda Talca','7','9.95','10.62','10.37',NULL,NULL,NULL,NULL,'10.62 (523)','1','2018-05-26 18:26:29','2018-05-27 13:24:16',NULL),(44,2,'Adan Puel','2003-06-07','A. Ñielol','9','9.50','10.32','10.45',NULL,NULL,NULL,NULL,'10.45 (513)','2','2018-05-26 18:26:29','2018-05-27 13:24:34',NULL),(45,2,'Eduardo Camp Summerset','2003-09-04','Centro Atlético Formativo','15','10.42','9.57','X',NULL,NULL,NULL,NULL,'10.42 (511)','3','2018-05-26 18:26:29','2018-05-27 13:25:15',NULL),(46,2,'Santiago Salinas Cabrera','2003-04-04','A. Santiago','13','9.92','8.82','9.24',NULL,NULL,NULL,NULL,'9.92 (481)','4','2018-05-26 18:26:29','2018-05-27 13:25:26',NULL),(47,2,'Manuel Vasquez ','2004-09-22','C. D. Pilauco','10','9.46','9.17','9.58',NULL,NULL,NULL,NULL,'9.58 (460)','5','2018-05-26 18:26:29','2018-05-27 13:25:41',NULL),(48,2,'Benjamin Irribarren Poyanopulos','2004-01-13','Centro Atlético Formativo','15','8.95','8.28','9.11',NULL,NULL,NULL,NULL,'9.11 (432)','6','2018-05-26 18:26:29','2018-05-27 13:25:55',NULL),(49,2,'Benjamin Gonzalez Olguin','2003-04-06','A. Nancagua','6','8.32','8.94','8.57',NULL,NULL,NULL,NULL,'8.94 (422)','7','2018-05-26 18:26:29','2018-05-27 13:26:18',NULL),(50,2,'Benjamin Alvarado Olmi','2003-04-01','C. A. Puerto Sur','10','6.18','5.90','5.96',NULL,NULL,NULL,NULL,'6.18 (259)','8','2018-05-26 18:26:29','2018-05-27 13:26:25',NULL),(51,2,'Joaquín Cristóbal Galleguillos Puebla','2003-02-08','C. Manquemávida de Santa Cruz','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 18:26:29','2018-05-27 02:05:39',NULL),(52,4,'Agustina Cruz','2004-07-15','CDUC','13','9.53','9.54','8.97',NULL,NULL,NULL,NULL,'9.54 (499)','1','2018-05-26 18:37:36','2018-05-27 13:22:25',NULL),(53,4,'Maria Squella Contardo','2003-04-14','CDUC','13','7.25','7.41','7.79',NULL,NULL,NULL,NULL,'7.79 (386)','2','2018-05-26 18:37:36','2018-05-27 13:22:09',NULL),(54,4,'Cecilia Millaray','2003-01-03','A. Ingles','4','7.00','6.80','7.21',NULL,NULL,NULL,NULL,'7.21 (348)','3','2018-05-26 18:37:36','2018-05-27 13:21:57',NULL),(55,4,'Cristianne Neumann ','2003-09-05','C. D. Pilauco','10','7.18','7.02','7.12',NULL,NULL,NULL,NULL,'7.18 (347)','4','2018-05-26 18:37:36','2018-05-27 13:21:44',NULL),(56,4,'Aylimm Muñoz Diaz','2004-08-16','A. de A. Castro','10','7.15','7.16','6.98',NULL,NULL,NULL,NULL,'7.16 (345)','5','2018-05-26 18:37:36','2018-05-27 13:21:25',NULL),(57,4,'Laura Bustamante González','2004-09-24','Escuela de Atletismo Osorno','10','6.40','6.59','6.55',NULL,NULL,NULL,NULL,'6.59 (309)','6','2018-05-26 18:37:36','2018-05-27 13:21:06',NULL),(58,4,'Emilia Alejandra Cabrera Valenzuela','2003-09-06','C. Manquemávida de Santa Cruz','6','3.99','4.63','5.31',NULL,NULL,NULL,NULL,'5.31 (228)','7','2018-05-26 18:37:36','2018-05-27 13:20:52',NULL),(59,4,'Martina Delgado','2003-03-31','G. Manzanales','10','5.23','4.44','4.46',NULL,NULL,NULL,NULL,'5.23 (223)','8','2018-05-26 18:37:36','2018-05-27 13:20:42',NULL),(60,4,'Giza Dayanee Aguayo Vasquez','2004-04-13','C. Génesis','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 18:37:36','2018-05-26 18:40:18',NULL),(61,4,'Orión Renata Carrasco Carrillo','2003-08-23','C. Manquemávida de Santa Cruz','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 18:37:36','2018-05-26 18:40:23',NULL),(62,4,'Valentina Duque Muñoz','2003-09-09','C. Liceo de Curicó','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 18:37:36','2018-05-26 18:40:27',NULL),(63,5,'Cristian Ortiz Yáñez','2003-12-16','A. Copiapó','3','53.76','X','54.88','8.0','56.95','55.02','58.65','58.65','1','2018-05-26 18:56:26','2018-05-26 18:57:48',NULL),(64,5,'Gonzalo Alonso Arroyo Chavez','2003-05-08','C. A. Nueva Generación (Laja)','8','51.39','47.54','49.13','7.0','X','X','46.87','51.39','2','2018-05-26 18:56:26','2018-05-26 19:53:48',NULL),(65,5,'Alvaro Paz Castillo','2003-06-10','C. A. Phoenix','9','40.75','X','45.55','5.0','48.69','49.08','X','49.08','3','2018-05-26 18:56:26','2018-05-26 18:57:38',NULL),(66,5,'Renato Morales Fuentes','2003-11-12','A. Copiapó','3','45.36','45.82','X','6.0','46.58','X','47.29','47.29','4','2018-05-26 18:56:26','2018-05-26 18:57:34',NULL),(67,5,'Salomon Manqui Calfuleo','2003-05-15','C. D. Bernardo Felmer','14','41.99','41.73','X','4.0','40.03','39.17','36.33','41.99','5','2018-05-26 18:56:26','2018-05-26 18:57:30',NULL),(68,5,'Juan Jose  Eriza Acuña','2004-03-01','C. A. San Nicolas','8','40.01','38.52','X','3.0','X','X','X','40.01','6','2018-05-26 18:56:26','2018-05-26 18:57:28',NULL),(69,5,'Daniel Antonio Cea Castro','2004-01-30','C. A. Nueva Generación (Laja)','8','37.65','36.14',' ','2.0','X',NULL,NULL,'37.65','7','2018-05-26 18:56:26','2018-05-26 18:57:24',NULL),(70,5,'Italo Savalli Saldías','2003-08-18','A. Copiapó','3','37.16','X','X','1.0','X','X','X','37.16','8','2018-05-26 18:56:26','2018-05-26 18:57:21',NULL),(71,5,'Sergio Bravo Aguilera','2003-09-13','C. D. Colegio Padre Hurtado de Chillan','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 18:56:26','2018-05-26 19:54:47',NULL),(72,5,'Vicente Alvarado Ramos','2004-11-22','C. Liceo de Curicó','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 18:56:26','2018-05-26 19:54:52',NULL),(73,5,'Sergio Zurita Alarcón','2003-10-21','C. San Ambrosio Linares','7','M','M','X',NULL,NULL,NULL,NULL,'N/M','98','2018-05-26 18:56:26','2018-05-26 19:54:41',NULL),(74,6,'Andrés Palma Valenzuela','2003-01-03','CDUC','13.0','45.03','45.99','45.94','7','48.04','47.20','54.15','54.15','1','2018-05-26 19:28:29','2018-05-26 19:29:53',NULL),(75,6,'Juan Francisco Alamos Ovalle','2003-08-22','CDUC','13.0','49.60','51.74','X','8','47.57','X','46.85','51.74','2','2018-05-26 19:28:29','2018-05-26 19:29:51',NULL),(76,6,'Renato Bartet Zulueta','2003-06-11','A. Santiago','13.0','42.56','38.60','41.30','5','42.19','45.75','45.40','45.75','3','2018-05-26 19:28:29','2018-05-26 19:29:47',NULL),(77,6,'Nicolas Petersen Diaz','2003-05-20','U. de Tarapaca','15.0','38.72','40.88','44.62','6','39.20','40.18','44.14','44.62','4','2018-05-26 19:28:29','2018-05-26 19:29:42',NULL),(78,6,'Eduardo Minder Aguila','2003-06-30','CDUC','13.0','X','42.04','37.94','4','39.79','37.88','37.63','42.04','5','2018-05-26 19:28:29','2018-05-26 19:29:32',NULL),(79,6,'Elias Valdez Diaz','2004-09-02','A. Nancagua','6.0','38.95','36.94','39.26','3','38.00','36.72','39.18','39.26','6','2018-05-26 19:28:29','2018-05-26 19:29:29',NULL),(80,6,'Manuel Espinosa Valenzuela','2003-10-08','A. San Ignacio','13.0','36.20','39.24','38.31','2','37.71','37.50','M','39.24','7','2018-05-26 19:28:29','2018-05-26 19:29:25',NULL),(81,6,'Joaquin Irureta Rios','2003-08-17','A. San Ignacio','13.0','X','M','37.76','1','M','36.48','X','37.76','8','2018-05-26 19:28:29','2018-05-26 19:29:20',NULL),(82,6,'Jorge Uribe Gonzalez','2004-04-16','CDUC','13.0','X','M','37.75',NULL,NULL,NULL,NULL,'37.75','9','2018-05-26 19:28:29','2018-05-26 19:28:49',NULL),(83,6,'Alberto Andres Eriza Acuña','2004-03-01','C. A. San Nicolas','8.0','X','X','37.64',NULL,NULL,NULL,NULL,'37.64','10','2018-05-26 19:28:29','2018-05-27 02:16:06',NULL),(84,6,'José Portaluppi Osiac','2003-06-10','CDUC','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:48',NULL),(85,6,'Sergio Zurita Alarcón','2003-10-21','C. San Ambrosio Linares','7.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:52',NULL),(86,6,'Vicente Alvarado Ramos','2004-11-22','C. Liceo de Curicó','7.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:50',NULL),(87,6,'Martin Gallardo Diaz','2004-09-14','A. Santiago','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:45',NULL),(88,6,'Maximiliano Guichaquelen Rivera','2004-03-21','A. de A. Castro','10.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:43',NULL),(89,6,'Sergio Bravo Aguilera','2003-09-13','C. D. Colegio Padre Hurtado de Chillan','8.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:41',NULL),(90,6,'Jose Bravo Veliz','2003-07-30','C. A. Alameda Talca','7.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:38',NULL),(91,6,'Benjamin Mesa Ramirez','2004-01-31','A. San Ignacio','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:36',NULL),(92,6,'Blas Gallo Fernandez','2004-05-20','A. San Ignacio','13.0','X','X','X',NULL,NULL,NULL,NULL,'N/M','95','2018-05-26 19:28:29','2018-05-27 02:15:55',NULL),(93,6,'Matias Suazo Navarro','2004-10-21','A. Cauquenes','7.0','X','X','X',NULL,NULL,NULL,NULL,'N/M','95','2018-05-26 19:28:29','2018-05-27 02:16:03',NULL),(94,7,'Ignacio Anibal  Toledo  Cifuentes','1999-01-23','C. A. Nahuen (Concepción)','8','53.43','54.84','54.20',NULL,'X','48.42','51.22','54.84','1','2018-05-26 19:32:28','2018-05-26 19:32:41',NULL),(95,7,'Alfredo Andres Arriagada Otaiza','2000-01-02','C. A. Nacional Iquique','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 19:32:28','2018-05-26 19:32:44',NULL),(96,8,'Antonia Gonzalez Carcavilla (B)','2003-05-12','CDUC','13','10.60','10.39','11.35','8','x','x','10.24','11.35','1','2018-05-26 20:35:18','2018-05-26 21:52:33',NULL),(97,8,'Olivia Pinto Garcia (B)','2003-09-27','CDUC','13','8.32','x','7.93',NULL,NULL,NULL,NULL,'8.32',NULL,'2018-05-26 20:35:18','2018-05-26 21:58:32',NULL),(98,8,'Javiera Constanza Davila Godoy (B)','2004-06-10','C. A. Tamarugo','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 21:35:42',NULL),(99,8,'Victoria Pardo Antillanca (B)','2004-11-24','C. D. Bernardo Felmer','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 20:35:18','2018-05-26 21:35:51',NULL),(100,8,'Rocio Santos Gallardo (B)','2004-09-08','C. A. Alameda Talca','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 21:36:05',NULL),(101,8,'Pía Fernanda Milla Zamorano (B)','2003-08-20','C. A. Huasco','3','x','8.32','7.85',NULL,NULL,NULL,NULL,'8.32',NULL,'2018-05-26 20:35:18','2018-05-26 21:59:08',NULL),(102,8,'Catalina Victoria Quezada  Venegas (B)','2004-03-27','C. A. Huasco','3','x','8.43','x',NULL,NULL,NULL,NULL,'8.43',NULL,'2018-05-26 20:35:18','2018-05-26 21:59:30',NULL),(103,8,'Isidora Modinger Rojas (B)','2003-03-26','C.D. Windsor School','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 21:36:47',NULL),(104,8,'Catalina Gallegos Bahamonde (B)','2004-10-19','A. de A. Castro','10','x','7.82','x',NULL,NULL,NULL,NULL,'7.82',NULL,'2018-05-26 20:35:18','2018-05-26 21:55:01',NULL),(105,8,'Catalina Obando Nahuelpan (B)','2004-08-02','C. D. Bernardo Felmer','14','7.84','8.12','x',NULL,NULL,NULL,NULL,'8.12',NULL,'2018-05-26 20:35:18','2018-05-26 21:57:07',NULL),(106,8,'Vanessa Zuñiga Vega (B)','2003-11-23','A. Copiapó','3','x','x','8.12',NULL,NULL,NULL,NULL,'8.12',NULL,'2018-05-26 20:35:18','2018-05-26 21:57:47',NULL),(107,8,'Evelyn Espinoza Herrera (B)','2003-11-28','A. Nancagua','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 20:35:18','2018-05-26 21:37:24',NULL),(108,8,'Camila Ovando Bassenge (B)','2003-07-01','Escuela de Atletismo Osorno','10','10.57','10.58','10.84','7','10.61','10.76','10.41','10.84','4','2018-05-26 20:35:18','2018-05-26 21:53:48',NULL),(109,8,'Alejandra Reyes Romero (B)','2003-03-11','A. Nancagua','6','7.90','8.08','7.96',NULL,NULL,NULL,NULL,'7.90',NULL,'2018-05-26 20:35:18','2018-05-26 21:56:28',NULL),(110,8,'Yadhira Marisol Velasquez Anaya (B)','2003-02-14','C. A. Nacional Iquique','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 21:40:15',NULL),(111,8,'Danitza  Haro Chacon (B)','2003-08-06','A. de A. Castro','10','8.04','x','8.58',NULL,NULL,NULL,NULL,'8.58',NULL,'2018-05-26 20:35:18','2018-05-26 21:59:55',NULL),(112,8,'Luciana Zelaya Orlandini (A)','2004-01-12','A. Atacama','3','M','7.81','M',NULL,NULL,NULL,NULL,'7.81',NULL,'2018-05-26 20:35:18','2018-05-26 21:23:31',NULL),(113,8,'Macarena Montoya Marin (A)','2003-01-13','A. Coquimbo','4','9.03','8.76','8.63',NULL,NULL,NULL,NULL,'9.03',NULL,'2018-05-26 20:35:18','2018-05-26 21:24:05',NULL),(114,8,'Amara Belen Rojas Castillo (A)','2003-07-03','C. D. A. Sporting Coquimbo','4','9.12','8.85','8.96',NULL,NULL,NULL,NULL,'9.12',NULL,'2018-05-26 20:35:18','2018-05-26 21:25:33',NULL),(115,8,'Fernanda Jorquera Faundez (A)','2003-02-20','C.D. Windsor School','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 20:46:19',NULL),(116,8,'Emilia Medina Rivera (A)','2003-02-27','C. D. A. Coronel','8','M','9.60','9.51',NULL,'10.02','8.37','M','10.02','7','2018-05-26 20:35:18','2018-05-26 21:27:39',NULL),(117,8,'Sofía de la Fuente Barceló (A)','2004-02-09','CDUC','13','7.74','M','M',NULL,NULL,NULL,NULL,'7.74',NULL,'2018-05-26 20:35:18','2018-05-26 21:28:39',NULL),(118,8,'Sara Antonia  Vera Vera (A)','2004-05-19','C. A. San Nicolas','8','8.23','8.64','8.16',NULL,NULL,NULL,NULL,'8.64',NULL,'2018-05-26 20:35:18','2018-05-26 21:29:23',NULL),(119,8,'Barbara Aravena Friz(A)','2004-12-11','A. Cauquenes','7','M','M','M',NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 20:35:18','2018-05-26 21:29:45',NULL),(120,8,'Valentina Ulloa Aros (A)','2004-03-27','C. D. Trotamundos','15','9.76','10.56','10.47','4','10.58','11.13','10.76','11.13','3','2018-05-26 20:35:18','2018-05-26 22:05:47',NULL),(121,8,'Antonia Isabel Oyarzún Caris (A)','2003-12-27','C. Manquemávida de Santa Cruz','6','8.28','X','8.63',NULL,NULL,NULL,NULL,'8.63',NULL,'2018-05-26 20:35:18','2018-05-26 22:05:07',NULL),(122,8,'Maria Jose Nova Arteaga (A)','2003-07-22','C. D. Colegio Padre Hurtado de Chillan','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 20:46:14',NULL),(123,8,'Macarena Jara De Los Reyes (A)','2003-02-25','Ulagos Pto.Montt','10','9.85','9.48','9.03','2','9.49','9.80','9.22','9.85','8','2018-05-26 20:35:18','2018-05-26 22:06:52',NULL),(124,8,'Estefanía Arancibia Diaz (A)','2003-05-21','YKA','13','X','9.55','10.60','5','X','10.01','10.21','10.60','5','2018-05-26 20:35:18','2018-05-26 22:06:10',NULL),(125,8,'Yanina Aravena Peres (A)','2004-04-15','A. Cauquenes','7','M','9.81','10.48','3','9.33','8.76','9.57','10.48','6','2018-05-26 20:35:18','2018-05-26 22:06:22',NULL),(126,8,'Valentina Claveria Sanchez (A)','2003-02-20','C. D. Colegio Padre Hurtado de Chillan','8','9.70','10.63','9.70','6','11.10','11.29','11.12','11.29','2','2018-05-26 20:35:18','2018-05-26 22:05:53',NULL),(127,9,'Catalina Garmendia Pascal','2003-06-19','CDUC','13','34.53','33.75','31.02','4','32.73','X','30.96','34.53','6','2018-05-26 21:11:58','2018-05-27 01:50:06',NULL),(128,9,'Colomba Costa Larrain','2003-10-15','CDUC','13','35.01','33.40','30.99','7','36.89','36.60','34.80','36.89','2','2018-05-26 21:11:58','2018-05-27 01:50:21',NULL),(129,9,'Elisa Medel Bezanilla','2003-02-08','CDUC','13','33.74','34.00','34.99','6','31.59','31.36','37.44','37.44','1','2018-05-26 21:11:58','2018-05-27 01:50:19',NULL),(130,9,'Isabel Ortiz Von Riegen','2003-06-02','CDUC','13','x','30.05','28.29','2','27.04','26.50','x','30.05','8','2018-05-26 21:11:58','2018-05-27 01:50:01',NULL),(131,9,'María Fernanda Santibañez Quezada','2004-04-23','A. Francés','13','x','x','x',NULL,NULL,NULL,NULL,'N/M','95','2018-05-26 21:11:58','2018-05-27 01:50:31',NULL),(133,9,'Evelyn Espinoza Herrera','2003-11-28','A. Nancagua','6','26.79','25.22','27.56',NULL,NULL,NULL,NULL,'27.56','11','2018-05-26 21:11:58','2018-05-27 01:49:44',NULL),(134,9,'Catalina Cardemil Millán','2003-05-29','Manquehue','13','25.63','x','28.09',NULL,NULL,NULL,NULL,'28.09','10','2018-05-26 21:11:58','2018-05-27 01:49:53',NULL),(135,9,'Antonia Isabel Oyarzún Caris','2003-12-27','C. Manquemávida de Santa Cruz','6','26.70','26.38','28.18',NULL,NULL,NULL,NULL,'28.18','9','2018-05-26 21:11:58','2018-05-27 01:49:55',NULL),(136,9,'Camila Ovando Bassenge','2003-07-01','Escuela de Atletismo Osorno','10','25.00','28.33','28.76','1','34.98','30.96','30.34','34.98','4','2018-05-26 21:11:58','2018-05-27 01:50:11',NULL),(137,9,'Maria Paz Lira Delgeon','2003-10-07','CDUC','13','34.29','34.94','29.25','5','30.12','25.33','30.75','34.94','5','2018-05-26 21:11:58','2018-05-27 01:50:08',NULL),(138,9,'Antonia Sepulveda Alarcon','2004-05-26','C. A. Parral','7','32.60','28.29','x','3','x','28.70','x','32.60','7','2018-05-26 21:11:58','2018-05-27 01:50:04',NULL),(139,9,'Macarena Jara De Los Reyes','2003-02-25','Ulagos Pto.Montt','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:11:58','2018-05-27 01:50:24',NULL),(140,9,'Emilia Medina Rivera','2003-02-27','C. D. A. Coronel','8.0','30.89','36.05','25.21','8','x','29.20','26.26','36.05','3','2018-05-26 21:11:58','2018-05-27 01:36:36',NULL),(141,9,'Isidora Modinger Rojas','2003-03-26','C.D. Windsor School','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:11:58','2018-05-27 01:50:26',NULL),(143,8,'Antonia Barahona (B)','2003','A. La Pintana','13','8.08','x','8.07','','','','','8.08','','2018-05-26 21:44:04','2018-05-26 21:45:03',NULL),(144,8,'Ailin Barahona','2003','A. La Pintana','13','x','8.35','8.59','','','','','8.59','','2018-05-26 21:47:56','2018-05-26 21:47:56',NULL),(145,8,'Josefa Quintana','2003','A. La Pintana','13','x','x','x','','','','','M','','2018-05-26 21:48:57','2018-05-26 22:02:05',NULL),(177,10,'José Portaluppi Osiac','2003-06-10','CDUC','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:16',NULL),(178,10,'Benjamin Mesa Ramirez','2004-01-31','A. San Ignacio','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:17',NULL),(179,10,'Juan Contreras Contreras','2004-04-15','C. D. Bernardo Felmer','14.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:24',NULL),(180,10,'Alberto Lopez Hermida Perez de Arce','2004-12-27','CDUC','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:24',NULL),(181,10,'Matias Vega Arriagada','2004-01-24','OASSI','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:26',NULL),(182,10,'Alejandro Andres Caro Guevara','2004-04-04','C. A. Tamarugo','1.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:18',NULL),(183,10,'Salomon Manqui Calfuleo','2003-05-15','C. D. Bernardo Felmer','14.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:26',NULL),(184,10,'Martín Emilio Molina Suarez','2004-07-12','C. Escuela Infantil de Atletismo Llay Llay','5.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.06','15','2018-05-26 22:16:32','2018-05-27 01:33:37',NULL),(185,10,'Fermin Jimenez Gomez','2004-02-17','A. Nancagua','6.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:19',NULL),(186,10,'Maximiliano Guichaquelen Rivera','2004-03-21','A. de A. Castro','10.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:20',NULL),(187,10,'Luciano Aros Acuña','2003-03-08','C. D. Bernardo Felmer','14.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:28',NULL),(188,10,'Bastian Ceballos Llnos','2004-10-26','C. D. Freire','9.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:29',NULL),(189,10,'Sergio Zurita Alarcón','2003-10-21','C. San Ambrosio Linares','7.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:30',NULL),(190,10,'Johan Pasten Antiquera','2003-04-01','C. D. S. C. San Antonio','4.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.05','17','2018-05-26 22:16:32','2018-05-27 01:33:42',NULL),(191,10,'Daniel Antonio Cea Castro','2004-01-30','C. A. Nueva Generación (Laja)','8.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.05','16','2018-05-26 22:16:32','2018-05-27 01:33:39',NULL),(192,10,'Rodrigo Nicolas Arriagada Santana','2004-04-06','C. A. Hector Neira','10.0','x','10.35','10.38',NULL,NULL,NULL,NULL,'10.38','14','2018-05-26 22:16:32','2018-05-27 01:33:33',NULL),(193,10,'Pablo Bustamante González','2003-07-01','Escuela de Atletismo Osorno','10.0','11.05','11.99','11.33','1','11.21','11.14','10.69','11.99','8','2018-05-26 22:16:32','2018-05-27 01:31:18',NULL),(194,10,'Camilo Andrades Romeros','2004-09-05','A. Cauquenes','7.0','x','x','x',NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:31',NULL),(195,10,'Hector Arriagada Garrido','2003-12-23','A. Nancagua','6.0','11.30','11.03','11.68',NULL,NULL,NULL,NULL,'11.68','10','2018-05-26 22:16:32','2018-05-27 01:33:19',NULL),(196,10,'Renato Morales Fuentes','2003-11-12','A. Copiapó','3.0','x','x','x',NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:32',NULL),(197,10,'Ignacio Arancibia Gutierrez','2003-03-16','A. San Ignacio','13.0','11.06','11.12','11.51',NULL,NULL,NULL,NULL,'11.51','13','2018-05-26 22:16:32','2018-05-27 01:33:31',NULL),(198,10,'Osvaldo Alcaino Gonzalez','2003-02-13','A. Nancagua','6.0','11.68','11.10','10.97',NULL,NULL,NULL,NULL,'11.68','11','2018-05-26 22:16:32','2018-05-27 01:33:21',NULL),(199,10,'Felipe De la Maza Soto','2004-01-29','A. San Ignacio','13.0','x','x','x',NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:33',NULL),(200,10,'Tomas Didyk Martinez','2004-02-12','A. Santiago','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:21',NULL),(201,10,'Santiago Diaz Edwards','2004-02-17','A. Santiago','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:22',NULL),(202,10,'Camilo Rojas Araya','2003-08-21','A. Atacama','3.0','13.09','13.70','13.65','6','13.00','13.72','13.10','13.72','3','2018-05-26 22:16:32','2018-05-27 01:30:45',NULL),(203,10,'Alberto Andres Eriza Acuña','2004-03-01','C. A. San Nicolas','8.0','x','11.53','11.59',NULL,NULL,NULL,NULL,'11.59','12','2018-05-26 22:16:32','2018-05-27 01:33:27',NULL),(204,10,'Jun Diego Escuredo Fernandez','2003-08-01','A. Santiago','13.0','13.48','13.84','13.21','7','x','13.69','13.73','13.84','2','2018-05-26 22:16:32','2018-05-27 01:30:35',NULL),(205,10,'Fabian Eduardo Cid Sanchez','2004-01-04','C. A. Nueva Generación (Laja)','8.0','11.43','10.89','12.80','5','13.35','13.23','13.70','13.70','4','2018-05-26 22:16:32','2018-05-27 01:30:52',NULL),(206,10,'Pedro Agüero Ureta','2003-01-19','A. Santiago','13.0','12.14','12.76','12.05','4','x','12.04','13.60','13.60','5','2018-05-26 22:16:32','2018-05-27 01:31:00',NULL),(207,10,'Juan Jose  Eriza Acuña','2004-03-01','C. A. San Nicolas','8.0','14.71','13.19','12.32','8','14.88','x','x','14.88','1','2018-05-26 22:16:32','2018-05-26 22:41:50',NULL),(208,10,'Nicolás Petersen ','2003','U. Tarapacá','15','15.51','11.94','12.08','3','12.05','12.52','12.24','12.52','6','2018-05-26 22:21:49','2018-05-27 01:31:08',NULL),(209,10,'Marcelo Lepe','2003','A. La Pintana','13','x','10.53','11.81','','','','','11.81','9','2018-05-26 22:39:00','2018-05-27 01:32:43',NULL),(210,10,'Juan Pablo Ospina','2003','A. Génesis','6','11.86','12.39','11.19','2','12.33','11.75','x','12.39','7','2018-05-26 22:40:45','2018-05-26 22:40:45',NULL),(211,11,'Valentina Claveria Sanchez','2003-02-20','C. D. Colegio Padre Hurtado de Chillan','8','44.62','47.01','45.47','8.0','45.85','44.06','X','45.85','1','2018-05-27 12:49:22','2018-05-27 12:52:30',NULL),(212,11,'Antonia Gonzalez Carcavilla','2003-05-12','CDUC','13','34.89','35.31','X','7.0','33.22','37.52','X','37.52','2','2018-05-27 12:49:22','2018-05-27 12:52:26',NULL),(213,11,'Valentina Ulloa Aros','2004-03-27','C. D. Trotamundos','15','X','32.06','28.09','6.0','31.87','34.89','33.63','34.89','3','2018-05-27 12:49:22','2018-05-27 12:52:20',NULL),(214,11,'Florencia Carrizo Parra','2004-06-24','A. Atacama','3','31.79','28.14','29.30','5.0','32.32','25.38','30.86','32.32','4','2018-05-27 12:49:22','2018-05-27 12:52:10',NULL),(215,11,'Danitza  Haro Chacon','2003-08-06','A. de A. Castro','10','29.11','27.94','X','3.0','27.48','28.25','30.46','30.46','5','2018-05-27 12:49:22','2018-05-27 12:52:06',NULL),(216,11,'Camila Ovando Bassenge','2003-07-01','Escuela de Atletismo Osorno','10','25.45','29.29','29.25','4.0','30.01','25.01','29.94','29.94','6','2018-05-27 12:49:22','2018-05-27 12:52:02',NULL),(217,11,'Vanessa Zuñiga Vega','2003-11-23','A. Copiapó','3','25.69','26.40','26.06','1.0','24.92','27.43','M','27.43','7','2018-05-27 12:49:22','2018-05-27 12:51:57',NULL),(218,11,'Contanza Acevedo Fuenzalida','2004-02-23','CDUC','13','27.38','26.88','25.29','2.0','24.92','X','M','27.38','8','2018-05-27 12:49:22','2018-05-27 12:51:53',NULL),(219,11,'Emilia Medina Rivera','2003-02-27','C. D. A. Coronel','8','23.71','X','25.15',NULL,NULL,NULL,NULL,'25.15','9','2018-05-27 12:49:22','2018-05-27 12:51:50',NULL),(220,11,'Pia Ignacia Rodriguez Oisel','2003-05-20','CDUC','13','M','23.67','24.51',NULL,NULL,NULL,NULL,'24.51','10','2018-05-27 12:49:22','2018-05-27 12:51:45',NULL),(221,11,'Catalina Obando Nahuelpan','2004-08-02','C. D. Bernardo Felmer','14','M','X','24.50',NULL,NULL,NULL,NULL,'24.50','11','2018-05-27 12:49:22','2018-05-27 12:51:41',NULL),(222,11,'Maria Jose Nova Arteaga','2003-07-22','C. D. Colegio Padre Hurtado de Chillan','8','X','24.41','M',NULL,NULL,NULL,NULL,'24.41','12','2018-05-27 12:49:22','2018-05-27 12:51:37',NULL),(223,11,'Ornella Espinosa Olivero','2003-03-22','C. D. S. C. San Antonio','4','X','23.59','23.76',NULL,NULL,NULL,NULL,'23.76','13','2018-05-27 12:49:22','2018-05-27 12:51:33',NULL),(224,11,'Almendra Jofré González','2004-04-24','A. Copiapó','3','X','X','23.42',NULL,NULL,NULL,NULL,'23.42','14','2018-05-27 12:49:22','2018-05-27 12:51:29',NULL),(225,11,'Macarena Montoya Marin','2003-01-13','A. Coquimbo','4','X','23.38','M',NULL,NULL,NULL,NULL,'23.38','15','2018-05-27 12:49:22','2018-05-27 12:51:25',NULL),(226,11,'Antonia Isabel Oyarzún Caris','2003-12-27','C. Manquemávida de Santa Cruz','6','M','M','23.37',NULL,NULL,NULL,NULL,'23.37','16','2018-05-27 12:49:22','2018-05-27 12:51:22',NULL),(227,11,'Javiera Constanza Davila Godoy','2004-06-10','C. A. Tamarugo','1','X','X','X',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:50:47',NULL),(228,11,'Sofía de la Fuente Barceló','2004-02-09','CDUC','13','X','M','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:50:50',NULL),(229,11,'Amara Belen Rojas Castillo','2003-07-03','C. D. A. Sporting Coquimbo','4','X','M','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:50:52',NULL),(230,11,'Catalina Gallegos Bahamonde','2004-10-19','A. de A. Castro','10','M','M','X',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:50:55',NULL),(231,11,'Fernanda Jorquera Faundez','2003-02-20','C.D. Windsor School','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:50:59',NULL),(232,11,'Josefina Martina Calistro Carcamo','2004-07-27','C. A. Hector Neira','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:01',NULL),(233,11,'Andy Marlen Mina Gonzalias','2004-10-11','C. Chuquicamata','2','X','M','X',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:05',NULL),(234,11,'Sara Antonia  Vera Vera','2004-05-19','C. A. San Nicolas','8','M','M','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:08',NULL),(235,11,'Orión Renata Carrasco Carrillo','2003-08-23','C. Manquemávida de Santa Cruz','6','M','X','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:15',NULL),(236,11,'Olivia Pinto Garcia','2003-09-27','CDUC','13','M','X','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:12',NULL),(237,11,'Macarena Jara De Los Reyes','2003-02-25','Ulagos Pto.Montt','10','X','M','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:19',NULL),(238,12,'Alejandro Andres Caro Guevara','2004-04-04','C. A. Tamarugo','1','X','X','X',NULL,NULL,NULL,NULL,'NM',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:36',NULL),(239,12,'Martin Gallardo Diaz','2004-09-14','A. Santiago','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:31',NULL),(240,12,'Maximiliano Guichaquelen Rivera','2004-03-21','A. de A. Castro','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:28',NULL),(241,12,'Felipe Torres Cifuentes','2004-02-08','A. Santiago','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:24',NULL),(242,12,'Fermin Jimenez Gomez','2004-02-17','A. Nancagua','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:21',NULL),(243,12,'Martín Emilio Molina Suarez','2004-07-12','C. Escuela Infantil de Atletismo Llay Llay','5','X','M','X',NULL,NULL,NULL,NULL,'NM','','2018-05-27 16:44:07','2018-05-27 16:48:18',NULL),(244,12,'Jose Bravo Veliz','2003-07-30','C. A. Alameda Talca','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:15',NULL),(245,12,'Manuel Santander Valdes','2004-10-08','A. San Ignacio','13','M','M','M',NULL,NULL,NULL,NULL,'NM','','2018-05-27 16:44:07','2018-05-27 16:48:12',NULL),(246,12,'Vicente Alvarado Ramos','2004-11-22','C. Liceo de Curicó','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:09',NULL),(247,12,'Ignacio Arancibia Gutierrez','2003-03-16','A. San Ignacio','13','33.38','35.24','36.72','1.0','36.00','34.40','36.49','36.72','8','2018-05-27 16:44:07','2018-05-27 16:47:47',NULL),(248,12,'Italo Savalli Saldías','2003-08-18','A. Copiapó','3','M','M','X',NULL,NULL,NULL,NULL,'NM','','2018-05-27 16:44:07','2018-05-27 16:47:12',NULL),(249,12,'Matias Suazo Navarro','2004-10-21','A. Cauquenes','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:07',NULL),(250,12,'Nicolas Petersen Diaz','2003-05-20','U. de Tarapaca','15','35.08','X','33.86',NULL,NULL,NULL,NULL,'35.08','11','2018-05-27 16:44:07','2018-05-27 16:47:57',NULL),(251,12,'Elias Valdez Diaz','2004-09-02','A. Nancagua','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:03',NULL),(252,12,'Santiago Diaz Edwards','2004-02-17','A. Santiago','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:00',NULL),(253,12,'Renato Morales Fuentes','2003-11-12','A. Copiapó','3','35.83','33.42','X',NULL,NULL,NULL,NULL,'35.83','10','2018-05-27 16:44:07','2018-05-27 16:47:53',NULL),(254,12,'Luciano Castillo Diaz','2003-01-19','A. Nancagua','6','X','39.44','X','4.0','38.47','41.77','32.77','41.77','6','2018-05-27 16:44:07','2018-05-27 16:47:39',NULL),(255,12,'Alberto Andres Eriza Acuña','2004-03-01','C. A. San Nicolas','8','35.69','36.21','X',NULL,NULL,NULL,NULL,'36.21','9','2018-05-27 16:44:07','2018-05-27 16:47:50',NULL),(256,12,'Tomas Didyk Martinez','2004-02-12','A. Santiago','13','41.25','40.22','42.68','5.0','X','X','39.73','42.68','4','2018-05-27 16:44:07','2018-05-27 16:47:32',NULL),(257,12,'Felipe De la Maza Soto','2004-01-29','A. San Ignacio','13','36.77','38.85','38.09','3.0','39.87','39.97','42.07','42.07','5','2018-05-27 16:44:07','2018-05-27 16:47:35',NULL),(258,12,'Sergio Bravo Aguilera','2003-09-13','C. D. Colegio Padre Hurtado de Chillan','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:47:18',NULL),(259,12,'Camilo Andrades Romeros','2004-09-05','A. Cauquenes','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:47:14',NULL),(260,12,'Cristian Ortiz Yáñez','2003-12-16','A. Copiapó','3','50.97','50.74','52.97','7.0','53.26','X','X','53.26','2','2018-05-27 16:44:07','2018-05-27 16:47:26',NULL),(261,12,'Camilo Rojas Araya','2003-08-21','A. Atacama','3','35.51','X','53.26','8.0','56.89','X','42.30','56.89','1','2018-05-27 16:44:07','2018-05-27 16:47:21',NULL),(262,12,'Juan Jose  Eriza Acuña','2004-03-01','C. A. San Nicolas','8','X','44.97','46.70','6.0','X','X','X','46.70','3','2018-05-27 16:44:07','2018-05-27 16:47:28',NULL),(263,12,'Juan Pablo Ospina','00-00-2003','A. Génesis','6','35.13','38.30','38.02','2.0','39.43','40.86','39.86','40.86','7','2018-05-27 16:44:07','2018-05-27 16:47:44',NULL),(265,13,'Benjamin Alvarado Olmi','2003-04-01','C. A. Puerto Sur','10','17.91','13.38','16.21',NULL,NULL,NULL,NULL,'17.99 (133)= 1962','6','2018-05-27 16:50:20','2018-05-27 17:52:34',NULL),(266,13,'Manuel Vasquez ','2004-09-22','C. D. Pilauco','10','26.06','28.84','x',NULL,NULL,NULL,NULL,'28.84 (283)= 3304','3','2018-05-27 16:50:20','2018-05-27 17:52:58',NULL),(267,13,'Santiago Salinas Cabrera','2003-04-04','A. Santiago','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:50:20','2018-05-27 17:53:10',NULL),(268,13,'Joaquín Cristóbal Galleguillos Puebla','2003-02-08','C. Manquemávida de Santa Cruz','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:50:20','2018-05-27 17:53:14',NULL),(269,13,'Benjamin Gonzalez Olguin','2003-04-06','A. Nancagua','6','26.82','x','30.04',NULL,NULL,NULL,NULL,'30.04 (300)= 2350','2','2018-05-27 16:50:20','2018-05-27 17:53:02',NULL),(270,13,'Eduardo Camp Summerset','2003-09-04','Centro Atlético Formativo','15','24.14','x','23.17',NULL,NULL,NULL,NULL,'24.14 (218)= 3199','5','2018-05-27 16:50:20','2018-05-27 17:52:38',NULL),(271,13,'Benjamin Irribarren Poyanopulos','2004-01-13','Centro Atlético Formativo','15','x','x','x',NULL,NULL,NULL,NULL,'N/M (0)= 2263','','2018-05-27 16:50:20','2018-05-27 17:53:15',NULL),(272,13,'Pablo Rojas Muñoz','2003-07-01','C. A. Alameda Talca','7','31.28','27.53','28.37',NULL,NULL,NULL,NULL,'31.28 (317)= 2818','1','2018-05-27 16:50:20','2018-05-27 17:53:05',NULL),(273,13,'Adan Puel','2003','C.A. Ñielol','9','x','19.00','25.20','','','','','25.20 (232)= 2740','4','2018-05-27 16:55:23','2018-05-27 17:05:36',NULL),(274,14,'Aylimm Muñoz Diaz','A. de A. Castro','2004-08-16','10','X','X','X',NULL,NULL,NULL,NULL,'NM (0)',NULL,'2018-05-27 17:21:07','2018-05-27 17:28:48',NULL),(275,14,'Laura Bustamante González','Escuela de Atletismo Osorno','2004-09-24','10','12.96','14.03','11.59',NULL,NULL,NULL,NULL,'14.03 (179)','6','2018-05-27 17:21:07','2018-05-27 17:28:19',NULL),(276,14,'Cristianne Neumann ','C. D. Pilauco','2003-09-05','10','X','13.23','14.49',NULL,NULL,NULL,NULL,'14.49 (187)','5','2018-05-27 17:21:07','2018-05-27 17:28:10',NULL),(277,14,'Maria Squella Contardo','CDUC','2003-04-14','13','17.93','18.85','21.24',NULL,NULL,NULL,NULL,'21.24 (312)','2','2018-05-27 17:21:07','2018-05-27 17:27:36',NULL),(278,14,'Giza Dayanee Aguayo Vasquez','C. Génesis','2004-04-13','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 17:21:07','2018-05-27 17:26:37',NULL),(279,14,'Orión Renata Carrasco Carrillo','C. Manquemávida de Santa Cruz','2003-08-23','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 17:21:07','2018-05-27 17:26:40',NULL),(280,14,'Emilia Alejandra Cabrera Valenzuela','C. Manquemávida de Santa Cruz','2003-09-06','6','11.23','10.59','13.00',NULL,NULL,NULL,NULL,'13.00 (160)','7','2018-05-27 17:21:07','2018-05-27 17:28:43',NULL),(281,14,'Valentina Duque Muñoz','C. Liceo de Curicó','2003-09-09','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 17:21:07','2018-05-27 17:26:42',NULL),(282,14,'Agustina Cruz','CDUC','2003-03-31','13','31.27','28.26','X',NULL,NULL,NULL,NULL,'31.27 (501)','1','2018-05-27 17:21:07','2018-05-27 17:27:25',NULL),(283,14,'Cecilia Millaray','A. Ingles','2003-03-01','4','18.74','18.78','19.12',NULL,NULL,NULL,NULL,'19.12 (273)','3','2018-05-27 17:21:07','2018-05-27 17:27:45',NULL),(284,14,'Martina Delgado','G. Manzanales','2004-07-15','10','16.81','16.07','11.59',NULL,NULL,NULL,NULL,'16.81 (230)','4','2018-05-27 17:21:07','2018-05-27 17:28:02',NULL),(286,5,'','','','','','','','','','','','','','2018-08-02 13:47:35','2018-08-02 13:47:35',NULL),(293,2,'','','','','','','','','','','','','','2018-08-02 15:01:35','2018-08-02 15:01:35',NULL),(295,2,'','','','','','','','','','','','','','2018-08-02 16:20:37','2018-08-02 16:20:37',NULL),(296,15,'ZAMANTHA SANGUEZA ','2004','DE SANTA MARÍA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:10:45','2018-08-05 17:13:17',NULL),(297,15,'GRACIA GORZIGLIA','2004','COLEGIO LOS ANDES','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:10:45','2018-08-05 17:13:21',NULL),(298,15,'FRANCISCA PARRA','2005','ALONSO DE ERCILLA','13','5.13','5.50','5.22','1','X','5.14','5.02','5.50','6','2018-08-04 01:10:45','2018-08-05 17:13:14',NULL),(299,15,'ISIDORA SCHUCHARDTT','2005','ALONSO DE ERCILLA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:10:45','2018-08-05 17:13:24',NULL),(300,15,'ENIGER PEREZ VERA','2005','ARTURO ECHAZARRETA','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:10:45','2018-08-05 17:13:28',NULL),(301,15,'CAMILA RIQUELME','2005','ALONSO DE ERCILLA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:10:45','2018-08-05 17:13:32',NULL),(302,15,'FLORENCIA GUZMAN','2004','NAZARET','13','7.07','6.56','7.17','3','7.28','7.14','7.34','7.34','4','2018-08-04 01:10:45','2018-08-05 17:13:07',NULL),(303,15,'RAFAELA CALABI','2005','SSCC MANQUEHUE','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:10:45','2018-08-05 17:13:35',NULL),(304,15,'ISABELLA SOLAR','2004','COLEGIO SAN FRANCISCO JAVIER DE HUECHURABA','13','8.73','8.76','7.52','5','9.11','7.92','7.92','9.11','2','2018-08-04 01:10:45','2018-08-05 17:12:57',NULL),(305,15,'ACEVEDO FUENZALIDA CONSTANZA','2004','SAN BENITO','13','8.06','8.76','9.05','6','8.79','8.95','9.76','9.76','1','2018-08-04 01:10:45','2018-08-05 17:13:00',NULL),(306,15,'FLORENCIA TAVONATTI','2004','NAZARET','13','8.37','7.06','6.48','4','X','6.87','X','8.37','3','2018-08-04 01:10:45','2018-08-05 17:13:03',NULL),(307,15,'MONDACA CASANOVA, FERNANDA','2004','FRANCISCO PETRINOVIC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:10:45','2018-08-05 17:13:40',NULL),(308,16,'PEDRO PEÑAN','2006','DE SANTA MARÍA','13','X','X','X',NULL,NULL,NULL,NULL,'N/M','98','2018-08-04 01:11:46','2018-08-04 15:47:57',NULL),(309,16,'BENJAMIN MESA','2004','SAN IGNACIO EL BOSQUE','13','X','X','X',NULL,NULL,NULL,NULL,'N/M','98','2018-08-04 01:11:46','2018-08-04 15:47:15',NULL),(310,16,'JOAQUIN MONCKEBERG CABEZAS','2004','COLEGIO TABANCURA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:47:13',NULL),(311,16,'TOMAS CORREA GILLET','2004','COLEGIO TABANCURA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:47:09',NULL),(312,16,'JAVIER MORALES GARRIDO','2004','INSTITUTO AMERICA','13','X','10.06','9.23','1','X','9.43','9.59','10.06','6','2018-08-04 01:11:46','2018-08-04 15:28:11',NULL),(313,16,'MANUEL SANTANDER','2004','SAN IGNACIO EL BOSQUE','13','X','X','X',NULL,NULL,NULL,NULL,'N/M','98','2018-08-04 01:11:46','2018-08-04 15:47:06',NULL),(314,16,'BENJAMIN UGARTE','2004','SAINT GEORGES COLLEGE','13','X','X','X',NULL,NULL,NULL,NULL,'N/M','98','2018-08-04 01:11:46','2018-08-04 15:47:02',NULL),(315,16,'ALFONSO LE-FORT IZQUIERDO','2004','COLEGIO CUMBRES','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:46:59',NULL),(316,16,'JOAQUIN GONZALEZ','2004','ALONSO DE ERCILLA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:46:57',NULL),(317,16,'NEMESIO PRIETO VICUÑA','2004','VERBO DIVINO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:46:53',NULL),(318,16,'JAVIER CABRERA','2004','SSCC MANQUEHUE','13','10.09','9.30','10.03','2','10.90','10.49','10.10','10.49','5','2018-08-04 01:11:46','2018-08-04 15:37:51',NULL),(319,16,'JOAQUÍN CASTILLO GRISANTI','2004','COLEGIO CUMBRES','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:46:50',NULL),(320,16,'TOMAS DIDYK MARTINEZ','2004','VERBO DIVINO','13','12.02','11.64','11.57','5','12.06','11.81','11.86','12.06','2','2018-08-04 01:11:46','2018-08-04 15:39:58',NULL),(321,16,'FELIPE DE LA MAZA','2004','SAN IGNACIO EL BOSQUE','13','10.51','11.24','10.66','4','11.53','11.66','10.07','11.66','3','2018-08-04 01:11:46','2018-08-04 15:41:16',NULL),(322,16,'SANTIAGO DIAZ EDWARDS','2004','VERBO DIVINO','13','12.64','13.16','12.88','6','12.78','12.73','12.72','13.16','1','2018-08-04 01:11:46','2018-08-04 15:42:21',NULL),(323,16,'JHON PARRA VALDEVENITO','2006','IBEROAMERICANO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:46:49',NULL),(324,16,'ALEXIS HUINCA','2006','IBEROAMERICANO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:46:41',NULL),(325,16,'NICOLAS NERVI SCHMIDT','2005','VERBO DIVINO','13','X','X','X',NULL,NULL,NULL,NULL,'N/M','98','2018-08-04 01:11:46','2018-08-04 15:46:39',NULL),(326,16,'JOSE MANUEL ARMAS GAJARDO','2005','TREBULCO SCHOOL','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:46:31',NULL),(327,16,'FELIPE LAZCANO PÉREZ','2005','FRANCISCO PETRINOVIC','13','X','X','X',NULL,NULL,NULL,NULL,'N/M','98','2018-08-04 01:11:46','2018-08-04 15:46:29',NULL),(328,16,'TOMÁS SALINEROS','2004','MONTE TABOR','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:46:26',NULL),(329,16,'IGNACIO HEIMRICH','2004','SAINT GEORGES COLLEGE','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:46:24',NULL),(330,16,'KEVIN HUANG HUANG','2006','SSCC ALAMEDA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:11:46','2018-08-04 15:46:21',NULL),(331,16,'CRISTOBAL GANA','2004','MONTE TABOR','13','X','X','X',NULL,NULL,NULL,NULL,'N/M','98','2018-08-04 01:11:46','2018-08-04 15:48:10',NULL),(332,16,'MARTÍN SEEFELDT','2004','COLEGIO SAN FRANCISCO JAVIER DE HUECHURABA','13','11.24','11.08','11.16','3','10.58','10.60','10.78','11.24','4','2018-08-04 01:11:46','2018-08-04 15:36:56',NULL),(333,16,'JUAN GERARDO ARTEAGA','2005','COLEGIO SAN ISDRO','13','X','X','X',NULL,NULL,NULL,NULL,'N/M','98','2018-08-04 01:11:46','2018-08-04 15:46:11',NULL),(334,17,'ZAMANTHA SANGUEZA ','2004','DE SANTA MARÍA','13','X','X','12.80',NULL,NULL,NULL,NULL,'12.80','13','2018-08-04 01:12:57','2018-08-04 16:51:41',NULL),(335,17,'ANTONIA ULLOA','2005','ALONSO DE ERCILLA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:12:57','2018-08-04 16:36:43',NULL),(336,17,'SARA TAVERNE','2004','COLEGIO SAN ISIDRO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:12:57','2018-08-04 16:36:46',NULL),(337,17,'SARA MARTINI','2006','COLEGIO SAN ISIDRO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:12:57','2018-08-04 16:36:48',NULL),(338,17,'MARÍA IGNACIA HASBÚN','2005','COLEGIO SAN ISIDRO','13','14.19','15.46','14.00','-','-','-','-','15.46','11','2018-08-04 01:12:57','2018-08-04 16:51:36',NULL),(339,17,'LUCIANA MENDEZ','2004','ALONSO DE ERCILLA','13','16.97','16.48','20.69','2°','18.86','15.30','18.68','20.69','8','2018-08-04 01:12:57','2018-08-04 16:39:43',NULL),(340,17,'PAZ VEGA SUAREZ','2005','JUANITA DE LOS A.','13','16.99','15.73','X',NULL,NULL,NULL,NULL,'16.99','10','2018-08-04 01:12:57','2018-08-04 16:51:34',NULL),(341,17,'MARIA FERNANDA SANTIBAÑEZ','2004','ALONSO DE ERCILLA','13','18.20','18.02','14.55',NULL,NULL,NULL,NULL,'18.20','9','2018-08-04 01:12:57','2018-08-04 16:51:32',NULL),(342,17,'ACEVEDO FUENZALIDA CONSTANZA','2004','SAN BENITO','13','29.97','29.07','28.13','8°','28.00','26.74','23.90','29.97','1','2018-08-04 01:12:57','2018-08-04 16:42:39',NULL),(343,17,'TERESITA RAMÍREZ','2004','NAZARET','13','12.38','22.20','20.19','4°','21.03','18.65','22.87','22.87','6','2018-08-04 01:12:57','2018-08-04 16:44:20',NULL),(344,17,'PIA LARICO','2004','SAINT GEORGES COLLEGE','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:12:57','2018-08-04 16:44:34',NULL),(345,17,'FRANCISCA NIEDERMAYER C.','2005','JUANITA DE LOS A.','13','22.14','19.06','X','3°','X','26.11','25.35','26.11','3','2018-08-04 01:12:57','2018-08-04 16:45:48',NULL),(346,17,'EMILIA GAUTIER','2005','SSCC MANQUEHUE','13','27.68','X','X','7°','26.78','23.31','X','27.68','2','2018-08-04 01:12:57','2018-08-04 16:46:52',NULL),(347,18,'BENJAMIN MUÑOZ','2005.0','SAN JOSE DE CHICUREO','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:14:02','2018-08-04 20:30:42',NULL),(348,18,'NICOLAS SIADE','2004.0','SAN JOSE DE CHICUREO','13.0','17.49','X','17.33',NULL,NULL,NULL,NULL,'17.49','12','2018-08-04 01:14:02','2018-08-04 20:44:28',NULL),(349,18,'CRISTOBAL BELMAR','2005.0','SAN JOSE DE CHICUREO','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:14:02','2018-08-04 20:30:42',NULL),(350,18,'DIEGO FUENTES','2005.0','SAN JOSE DE CHICUREO','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:14:02','2018-08-04 20:30:43',NULL),(351,18,'ANDRES REGUEIRA','2004.0','SAN JOSE DE CHICUREO','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:14:02','2018-08-04 20:30:44',NULL),(352,18,'JOSE TOMAS RIOFRANCOS','2004','SAN IGNACIO EL BOSQUE','13.0','23.86','X','28.25','1°','X','24.73','X','28.25','8','2018-08-04 01:14:02','2018-08-08 14:55:53',NULL),(353,18,'SEBASTIAN NOVOA CACERES','2005.0','VERBO DIVINO','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:14:02','2018-08-04 20:30:46',NULL),(354,18,'VICENTE CONTRERAS TELLECHEA','2005','VERBO DIVINO','13.0','25.97','26.68','24.87',NULL,NULL,NULL,NULL,'26.68','10','2018-08-04 01:14:02','2018-08-08 14:56:02',NULL),(355,18,'DIEGO RAMÍREZ','2004.0','ALEMÁN DE SANTIAGO','13.0','','','','','','','','DNS','99','2018-08-04 01:14:02','2018-08-04 20:33:20',NULL),(356,18,'RENATO FERNANDEZ PAVEZ','2004','TREBULCO SCHOOL','13.0','30.66','29.66','X','3°','26.78','X','X','30.66','7','2018-08-04 01:14:02','2018-08-08 14:55:49',NULL),(357,18,'MATIAS BASCUÑAN','2004','SAINT GEORGES COLLEGE','13.0','29.87','26.48','26.54','2°','29.17','31.61','X','31.61','6','2018-08-04 01:14:02','2018-08-08 14:55:44',NULL),(358,18,'BLAS GALLO','2004','SAN IGNACIO EL BOSQUE','13.0','X','X','27.90',NULL,NULL,NULL,NULL,'27.90','9','2018-08-04 01:14:02','2018-08-08 14:55:59',NULL),(359,18,'JUAN PABLO CODINA KLEIN','2005','VERBO DIVINO','13.0','39.71','41.93','36.93','7°','32.13','X','34.95','41.93','2','2018-08-04 01:14:02','2018-08-08 14:55:29',NULL),(360,18,'LEON SUTULOV MARIN','2005.0','COLEGIO TABANCURA','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:14:02','2018-08-04 20:31:07',NULL),(361,18,'ALAN FELL MARDONES','2005','TREBULCO SCHOOL','13.0','34.84','33.53','34.06','4°','31.55','33.70','35.40','35.40','4','2018-08-04 01:14:02','2018-08-08 14:55:36',NULL),(362,18,'BENJAMIN MESA','2004','SAN IGNACIO EL BOSQUE','13.0','39.12','35.00','38.04','6°','X','36.74','34.36','39.12','3','2018-08-04 01:14:02','2018-08-08 14:55:32',NULL),(363,18,'MATÍAS LEISEWITZ MUÑOZ','2004.0','COLEGIO CUMBRES','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-08-04 01:14:02','2018-08-04 20:31:09',NULL),(364,18,'FERNANDO CODINA KLEIN','2004','VERBO DIVINO','13.0','28.28','35.02','33.20','5°','X','28.24','30.48','35.02','5','2018-08-04 01:14:02','2018-08-08 14:55:40',NULL),(365,18,'JORGE URIBE','2004','SAN ANSELMO','13.0','39.49','44.61','42.16','8°','43.08','42.24','X','44.61','1','2018-08-04 01:14:02','2018-08-08 14:55:24',NULL),(367,19,'SOFÍA GONZÁLEZ LAVANDERO','2005','SANTA ÚRSULA- VITACURA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:15:38','2018-08-05 19:59:57',NULL),(368,19,'MICAELA BRAVO SUTTER','2005','SANTA ÚRSULA- VITACURA','13','X','14.23','X','1°','13.48','X','X','14.23','8','2018-08-04 01:15:38','2018-08-05 19:58:58',NULL),(369,19,'CATALINA DEL CAMPO PÉREZ-IÑIGO','2005','SANTA ÚRSULA- VITACURA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:15:38','2018-08-05 19:59:59',NULL),(370,19,'CAMILA RIQUELME','2005','ALONSO DE ERCILLA','13','18.20','X','X','4°','16.56','9.40','X','18.20','5','2018-08-04 01:15:38','2018-08-05 19:56:20',NULL),(371,19,'IGNACIA GUTIERREZ','2005','SSCC MANQUEHUE','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:15:38','2018-08-05 20:00:03',NULL),(372,19,'JOSEFINA MARDONES B.','2005','JUANITA DE LOS A.','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:15:39','2018-08-05 20:00:07',NULL),(373,19,'MA. JESÚS BARTEL','2004','ALEMÁN DE SANTIAGO','13','18.74','19.84','17.36','5°','18.85','19.29','14.39','19.84','4','2018-08-04 01:15:39','2018-08-05 19:55:28',NULL),(374,19,'CAROLINA FELLAY','2004','NAZARET','13','20.35','18.59','X','6°','X','X','21.62','21.28','3','2018-08-04 01:15:39','2018-08-05 19:51:41',NULL),(375,19,'FLORENCIA GUZMAN','2004','NAZARET','13','21.28','18.53','X','7°','17.75','15.35','18.97','21.62','2','2018-08-04 01:15:39','2018-08-05 19:52:37',NULL),(376,19,'EMILIA ARTEAGA','2004','SIN CLUB ','13','16.91','15.60','15.17','3°','X','14.94','16.42','16.91','6','2018-08-04 01:15:39','2018-08-05 19:57:21',NULL),(377,19,'ACEVEDO FUENZALIDA CONSTANZA','2004','SAN BENITO','13','20.22','23.89','18.64','8°','24.73','22.33','23.31','24.73','1','2018-08-04 01:15:39','2018-08-05 19:50:41',NULL),(378,19,'EMILIA GAUTIER','2005','SSCC MANQUEHUE','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:15:39','2018-08-05 20:00:10',NULL),(379,19,'GRACIA GORZIGLIA','2004','COLEGIO LOS ANDES','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:15:39','2018-08-05 20:00:15',NULL),(380,20,'NICOLAS ALVAREZ','2005','SAN IGNACIO EL BOSQUE','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:18:31','2018-08-05 20:23:28',NULL),(381,20,'MATÍAS RIVAS BEIZA','2004','NOCEDAL','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:18:31','2018-08-05 20:23:33',NULL),(382,20,'IGNACIO MARFAN TELLEZ','2005','VERBO DIVINO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:18:31','2018-08-05 20:23:36',NULL),(383,20,'JAVIER CABRERA','2004','SSCC MANQUEHUE','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:18:31','2018-08-05 20:23:41',NULL),(384,20,'ALAN FELL MARDONES','2005','TREBULCO SCHOOL','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:18:31','2018-08-05 20:24:02',NULL),(385,20,'VICENTE CONTRERAS TELLECHEA','2005','VERBO DIVINO','13','29.79','26.22','28.40','3','28.30','28.09','28.89','29.79','7','2018-08-04 01:18:31','2018-08-05 21:01:13',NULL),(386,20,'NICOLAS NERVI SCHMIDT','2005','VERBO DIVINO','13','X','22.74','X',NULL,NULL,NULL,NULL,'22.74','10','2018-08-04 01:18:31','2018-08-05 21:11:11',NULL),(387,20,'FRANSHESCO QUINTANA GÓMEZ','2004','NOCEDAL','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-04 01:18:31','2018-08-05 20:24:10',NULL),(388,20,'BENJAMIN MESA','2004','SAN IGNACIO EL BOSQUE','13','X','29.02','32.12','5','33.43','34.42','X','34.43','3','2018-08-04 01:18:31','2018-08-05 21:03:35',NULL),(389,20,'MANUEL SANTANDER','2004','SAN IGNACIO EL BOSQUE','13','24.13','9.15','27.83','2','X','26.77','30.98','30.98','5','2018-08-04 01:18:31','2018-08-05 21:03:15',NULL),(390,20,'CRISTOBAL GANA','2004','MONTE TABOR','13','26.73','26.92','21.73','1','24.28','X','25.50','26.92','8','2018-08-04 01:18:31','2018-08-05 21:04:12',NULL),(391,20,'JOSE PABLO CORTEZ','2004','SAINT GEORGES COLLEGE','13','X','23.90','25.77',NULL,NULL,NULL,NULL,'25.77','9','2018-08-04 01:18:31','2018-08-05 21:11:05',NULL),(392,20,'SANTIAGO DIAZ EDWARDS','2004','VERBO DIVINO','13','32.39','33.46','X','6','9.26','X','X','33.46','4','2018-08-04 01:18:31','2018-08-05 21:05:09',NULL),(393,20,'TOMAS DIDYK MARTINEZ','2004','VERBO DIVINO','13','43.29','39.95','X','7','X','31.91','26.55','43.29','2','2018-08-04 01:18:31','2018-08-05 21:05:50',NULL),(394,20,'FELIPE DE LA MAZA','2004','SAN IGNACIO EL BOSQUE','13','42.13','44.72','X','8','44.16','41.73','X','44.72','1','2018-08-04 01:18:31','2018-08-05 21:06:27',NULL),(395,21,'FARÍAS CHEUQUELÉN, VALENTINA','2004','FRANCISCO PETRINOVIC','13','X','15.82','7.80',NULL,'18.29','17.70','18.77','18.77','2','2018-08-04 01:19:45','2018-08-04 14:34:13',NULL),(396,21,'MONDACA CASANOVA, FERNANDA','2004','FRANCISCO PETRINOVIC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-08-04 01:19:45','2018-08-04 16:38:19',NULL),(397,21,'ANA RAYÉN ESCALONA PASCAL','2005','COLEGIO SANTO TOMÁS EL BOSQUE','13','28.14','34.27','34.67',NULL,'X','X','X','34.67','1','2018-08-04 01:19:45','2018-08-04 14:36:13',NULL),(398,22,'ESTEBAN TOLEDO MIRANDA','2004','FRANCISCO PETRINOVIC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:21:10','2018-08-05 17:10:04',NULL),(399,22,'THOMAS HERRERA AYALA','2005','FRANCISCO PETRINOVIC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:21:10','2018-08-05 17:10:08',NULL),(400,22,'FELIPE LAZCANO PÉREZ','2005','FRANCISCO PETRINOVIC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:21:10','2018-08-05 15:04:46',NULL),(401,22,'MAXIMILIANO TORRES ASTUDILLO','2004','FRANCISCO PETRINOVIC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:21:10','2018-08-05 15:04:46',NULL),(402,22,'FRANSHESCO QUINTANA GÓMEZ','2004','NOCEDAL','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:21:10','2018-08-05 15:04:46',NULL),(403,23,'FERNANDA VILLARROEL','2005','THE GREENLAND','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:44:40','2018-08-05 18:43:56',NULL),(404,23,'BARBARA VALENZUELA','2006','THE GREENLAND','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-04 01:44:40','2018-08-05 18:43:59',NULL),(405,23,'MATHILDE SANDROCK','2004','ALEMÁN DE SANTIAGO','13','5.46','7.27','7.24',NULL,NULL,NULL,NULL,'7.27 (640)','1','2018-08-04 01:44:41','2018-08-05 18:43:33',NULL),(406,23,'AMANDA GIL','2004','ALEMÁN DE SANTIAGO','13','6.14','6.48','6.37',NULL,NULL,NULL,NULL,'6.48 (578)','3','2018-08-04 01:44:41','2018-08-05 18:43:36',NULL),(407,23,'MACARENA ACHURRA LUCK','2005','SANTA ÚRSULA- VITACURA','13','5.21','5.96','6.22',NULL,NULL,NULL,NULL,'6.22 (556)','5','2018-08-04 01:44:41','2018-08-05 18:43:50',NULL),(408,23,'ANTONIA CAROCA','2005','SSCC ALAMEDA','13','X','6.35','X',NULL,NULL,NULL,NULL,'6.35 (567)','4','2018-08-04 01:44:41','2018-08-05 18:43:53',NULL),(409,24,'EDUARDO RODAS','2004','SAINT GEORGES','13','x','7.29','x',NULL,NULL,NULL,NULL,'7.29','5(571)','2018-08-04 01:49:34','2018-08-04 16:11:59',NULL),(410,24,'BENJAMÍN LEHUEDE','2004','SAINT GEORGES','13','x','8.55','8.22',NULL,NULL,NULL,NULL,'8.55','2(667)','2018-08-04 01:49:34','2018-08-04 16:11:53',NULL),(411,24,'DIEGO BUSTAMANTE BASTIAS','2004','SSCC ALAMEDA','13','9.11','9.59','10.10',NULL,NULL,NULL,NULL,'10.10','1(776)','2018-08-04 01:49:34','2018-08-04 16:11:49',NULL),(412,24,'JOSÉ PALACIOS CARDENAS','2004','SSCC ALAMEDA','13','6.54','6.72','6.80',NULL,NULL,NULL,NULL,'6.80','6 (531)','2018-08-04 01:49:34','2018-08-04 16:12:01',NULL),(413,24,'PEDRO CAÑAS','2004','SAN IGNACIO EL BOSQUE','13','7.64','7.61','8.01',NULL,NULL,NULL,NULL,'8.01','4 (626)','2018-08-04 01:49:34','2018-08-04 16:11:57',NULL),(414,24,'JOAQUÍN OSSES MUÑOZ','2004','NOCEDAL','13','8.21','8.22','7.17',NULL,NULL,NULL,NULL,'8.22','3 (642)','2018-08-04 01:49:34','2018-08-04 16:11:55',NULL),(415,25,'EDUARDO RODAS','2004','SAINT GEORGES','13.0','23.73','24.10','20.84',NULL,NULL,NULL,NULL,'24.10 (44)','4','2018-08-04 01:50:37','2018-08-05 18:14:20',NULL),(416,25,'BENJAMÍN LEHUEDE','2004','SAINT GEORGES','13','25.35','22.51','22.37',NULL,NULL,NULL,NULL,'25.35 (84)','2','2018-08-04 01:50:37','2018-08-05 18:14:33',NULL),(417,25,'DIEGO BUSTAMANTE BASTIAS','2004','SSCC ALAMEDA','13','38.36','35.88','34.07',NULL,NULL,NULL,NULL,'38.36 (864)','1','2018-08-04 01:50:37','2018-08-05 18:14:46',NULL),(418,25,'JOSÉ PALACIOS CARDENAS','2004','SSCC ALAMEDA','13','13.17','X','22.67',NULL,NULL,NULL,NULL,'22.67 (9)','5','2018-08-04 01:50:37','2018-08-05 18:13:48',NULL),(419,25,'PEDRO CAÑAS','2004','SAN IGNACIO EL BOSQUE','13','22.95','24.53','X',NULL,NULL,NULL,NULL,'24.53 (57)','3','2018-08-04 01:50:37','2018-08-05 18:14:11',NULL),(420,25,'JOAQUÍN OSSES MUÑOZ','2004','NOCEDAL','13','17.03','17.75','19.23',NULL,NULL,NULL,NULL,'19.23 (0)','6','2018-08-04 01:50:37','2018-08-05 18:13:42',NULL),(421,16,'Juan Ignacio Acuña','2004','Inst. Alonso de Ercilla','13','x','x','x','','','','','N/M','98','2018-08-04 15:34:36','2018-08-04 15:46:08',NULL),(422,16,'Gian Lucas Castello','2005','Inst. Alonso de Ercilla','13','x','x','x','','','','','N/M','98','2018-08-04 15:35:32','2018-08-04 15:46:05',NULL),(423,16,'Matías Olea','2004','Sta. María','13','x','x','x','','','','','N/M','98','2018-08-04 15:43:30','2018-08-04 15:46:02',NULL),(424,17,'IGNACIA BAMBACH','2004','SANTA URSULA','13','20.44','17.71','20.31','1°','22.12','22.18','X','22.18','7','2018-08-04 16:48:40','2018-08-04 16:48:40',NULL),(425,17,'VALENTINA OSSA','2005','EVEREST','13','24.59','X','23.69','6°','X','X','X','24.59','4','2018-08-04 16:49:33','2018-08-04 16:49:33',NULL),(426,17,'TERESITA BARRIOS','2005','EVEREST','13','23.78','22.04','X','5°','X','X','24.06','24.06','5','2018-08-04 16:50:31','2018-08-04 16:50:31',NULL),(427,17,'LUZ CHAMORRO','2004','ALONSO DE ERCILLA','13','14.53','X','X','','','','','14.53','12','2018-08-04 16:51:19','2018-08-04 16:51:38',NULL),(428,18,'MATIAS OLEA','2004','SANTA MARIA','13','19.35','18.95','15.39','','','','','19.35','11','2018-08-04 20:43:19','2018-08-04 20:44:26',NULL),(429,18,'PEDRO PEÑON','2006','SANTA MARIA','13','17.94','X','14.72','','','','','','','2018-08-04 20:44:11','2018-08-04 20:44:11',NULL),(430,22,'Felipe De La Maza','2004','San Ignacio','13','23.17','26.46','5.58','','27.25','26.94','24.31','27.25','1','2018-08-05 14:32:38','2018-08-05 14:32:38',NULL),(431,15,'Valentina Farias','','','13','6.07','6.00','X','2','5.99','X','X','6.07','5','2018-08-05 14:49:53','2018-08-05 14:49:53',NULL),(432,23,'AMELIA VARAS ','2004','NAZARET','13','6.40','6.94','7.10','','','','','7.10 (627)','2','2018-08-05 18:38:10','2018-08-05 18:43:15',NULL),(433,23,'ISIDORA SANTA CRUZ','2005','NAZARET','13','5.56','4.50','5.59','','','','','5.59 (502)','6','2018-08-05 18:39:35','2018-08-05 18:42:52',NULL),(434,26,'ANAÍS  GALLARDO DÍAZ','2004','DE SANTA MARÍA','13','7.57','7.75','7.55','7','7.18','7.42','7.47','7.75','1','2018-08-05 19:32:49','2018-08-05 19:38:38',NULL),(435,26,'GABRIELA NAVARRO','2005','SANTA TERESA DE AVILA','13','3.36','X','X','3','X','X','X','3.36','5','2018-08-05 19:40:42','2018-08-05 19:40:42',NULL),(436,26,'FRANCISCA BASCUÑÁN MEDINA','2005','SANTA TERESA DE AVILA','2005','2.67','2.70','2.26','2','X','X','X','3.36','6','2018-08-05 19:41:57','2018-08-05 19:41:57',NULL),(437,26,'BELÉN MARCHANT RAUCO','2004','SANTA TERESA DE AVILA','13','6.30','6.18','X','6','5.95','6.10','X','6.30','2','2018-08-05 19:43:23','2018-08-05 19:43:23',NULL),(438,26,'GÉNESIS PEZOA','2004','SANTA TERESA DE AVILA','13','1.37','X','X','1','X','X','X','1.37','7','2018-08-05 19:44:21','2018-08-05 19:44:41',NULL),(439,26,'MOYRA HERRERA','2004','FRANCISCO PETRINOVIC','13','5.41','5.74','5.79','5','5.81','X','4.96','5.79','3','2018-08-05 19:46:22','2018-08-05 19:47:51',NULL),(440,19,'ALEXANDRA BATE','2004','C. ALEMAN','13','12.22','14.68','13.35','2°','13.44','X','15.47','15.47','7','2018-08-05 19:47:04','2018-08-05 19:58:14',NULL),(441,26,'VALENTINA CATALÁN','2004','2004','13','5.31','X','4.44','4','4.95','5.24','4.44','5.31','4','2018-08-05 19:47:26','2018-08-05 19:47:26',NULL),(442,19,'CARLA GONZALEZ','','FRANCISCO PRETRONIC','13','X','10.16','X','','','','','10.16','9','2018-08-05 19:48:07','2018-08-05 19:59:06',NULL),(443,27,'MATÍAS PÉREZ','2005','DE SANTA MARÍA','13','4.62','X','4.84','1','X','4.53','5.32','5.32','3','2018-08-05 20:27:47','2018-08-05 20:27:47',NULL),(444,27,'DANIEL HERRERA CORDERO','2004','FRANCISCO PETRINOVIC','13','9.28','8.71','9.44','3','X','9.59','9.51','9.59','1','2018-08-05 20:29:04','2018-08-05 20:29:04',NULL),(445,27,'MATÍAS SOTO SOTO','2004','FRANCISCO PETRINOVIC','13','8.73','9.18','9.32','2','8.66','9.19','9.09','9.32','2','2018-08-05 20:30:21','2018-08-05 20:30:21',NULL),(446,27,'ANGEL CAMUS','2004','SANTA TERESA DE AVILA','13','','','','','','','','DNS','','2018-08-05 20:31:34','2018-08-05 20:41:45',NULL),(447,27,'MARTÍN TORRES','2004','SANTA TERESA DE AVILA','13','','','','','','','','DNS','','2018-08-05 20:32:52','2018-08-05 20:41:46',NULL),(448,27,'BENJAMIN SANCHEZ','2004','SANTA TERESA DE AVILA','13','','','','','','','','DNS','','2018-08-05 20:33:36','2018-08-05 20:41:48',NULL),(449,27,'FRANCISCO MURA','2005','FRANCISCO PETRINOVIC','13','','','','','','','','DNS','','2018-08-05 20:34:15','2018-08-05 20:41:49',NULL),(450,27,'VICENTE TORO','2005','FRANCISCO PETRINOVIC','13','','','','','','','','DNS','','2018-08-05 20:35:01','2018-08-05 20:41:51',NULL),(451,27,'ALONSO TOLEDO','2004','ESCUELA HUMBERTO A','13','','','','','','','','DNS','','2018-08-05 20:36:11','2018-08-05 20:41:54',NULL),(452,27,'CRISTOBAL MUÑOZ','2004','ESCUELA HUMBERTO A','13','','','','','','','','DNS','','2018-08-05 20:37:15','2018-08-05 20:41:58',NULL),(453,27,'MATÍAS BACCOLA','2006','SANTA TERESA DE AVILA','13','','','','','','','','DNS','','2018-08-05 20:37:44','2018-08-05 20:41:59',NULL),(454,27,'DAVID QUILALEO','2004','SANTA TERESA DE AVILA','13','','','','','','','','DNS','','2018-08-05 20:38:11','2018-08-05 20:42:01',NULL),(455,27,'ANGEL SEPÚLVEDA','2004','SANTA TERESA DE AVILA','13','','','','','','','','DNS','','2018-08-05 20:38:33','2018-08-05 20:42:02',NULL),(456,27,'MARTÍN GUTIÉRREZ','2006','SANTA TERESA DE AVILA','13','','','','','','','','DNS','','2018-08-05 20:39:25','2018-08-05 20:42:05',NULL),(457,27,'IAN NAVES','2006','SANTA TERESA DE AVILA','13','','','','','','','','DNS','','2018-08-05 20:39:53','2018-08-05 20:42:06',NULL),(458,27,'VICENTE GONZALEZ','2005','SANTA TERESA DE AVILA','13','','','','','','','','DNS','','2018-08-05 20:40:22','2018-08-05 20:42:08',NULL),(459,27,'MATÍAS BUSTOS','2006','SANTA TERESA DE AVILA','13','','','','','','','','DNS','','2018-08-05 20:40:40','2018-08-05 20:42:10',NULL),(460,20,'JUAN REYES','2004','COLEGIO TABANCURA','13','X','16.27','X','','','','','16.27','12','2018-08-05 21:07:14','2018-08-05 21:11:16',NULL),(461,20,'TOMÁS CORREA','2004','COLEGIO TABANCURA','13','X','X','21.15','','','','','21.15','11','2018-08-05 21:07:50','2018-08-05 21:11:13',NULL),(462,20,'JUAN PAZ DÍAZ','2004','COLEGIO TABANCURA','13','30.04','X','28.20','4','28.29','26.83','23.45','30.04','6','2018-08-05 21:08:37','2018-08-05 21:08:37',NULL),(463,20,'FELIPE LAZCANO','2005','FRANCISCO PETRINOVIC','13','13.99','X','12.78','','','','','13.99','14','2018-08-05 21:09:14','2018-08-05 21:11:22',NULL),(464,20,'SANTIAGO AMEZQUITA','2004','FRANCISCO PETRINOVIC','13','X','16.94','15.76','','','','','16.94','13','2018-08-05 21:10:27','2018-08-05 21:11:19',NULL),(465,28,'HUMBERTO MANSILLA ARZOLA','1996','CHILE','IX','','','','','','','','72.60','4','2018-08-24 23:30:14','2018-08-24 23:30:14',NULL),(466,28,'GABRIEL KEHR SAMBRA','1996','CHILE','IX','','','','','','','','71.54','5','2018-08-24 23:31:08','2018-08-24 23:31:08',NULL),(467,29,'IVANA GALLARDO CRUCHET','1993','CHILE','13','','','','','','','','50.67','4','2018-08-24 23:45:13','2018-08-24 23:45:13',NULL),(468,30,'FRANCISCO MUSE','','CHILE','13','','','','','','','','73.10','2','2018-08-25 22:48:47','2018-08-25 22:51:03',NULL),(469,31,'IVANA GALLARDO CRUCHET','1993','CHI','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15.05','3','2018-08-25 22:58:42','2018-08-27 02:06:49',NULL),(470,35,'CESAR JOFRE PNCHEIRA','1996','A. SANTIAGO','13','13.75','13.46','13.77',NULL,NULL,NULL,NULL,'13.77','FC','2018-08-31 18:53:24','2018-09-02 13:26:17',NULL),(471,35,'JASON  ROMERO SOTO','1999','C. D. BERNARDO FELMER','14','10.86','10.32','X',NULL,NULL,NULL,NULL,'10.86','1','2018-08-31 18:53:44','2018-09-02 13:26:36',NULL),(472,36,'FRANCISCA VALENCIA BEOVIC','1996','A. SANTIAGO','13','9.99','10.09','9.99',NULL,NULL,NULL,NULL,'10.09','FC','2018-08-31 18:55:03','2018-09-02 13:44:25',NULL),(473,36,'RENATTE PINNINGHOOF AGUILA','1997','UACH','14','7.77','7.38','8.30',NULL,NULL,NULL,NULL,'8.30','FC','2018-08-31 18:55:23','2018-09-02 13:44:47',NULL),(474,36,'MARTINA KREUTZBERGER TALADRIZ','1999','MANQUEHUE','13','7.30','7.33','7.09',NULL,NULL,NULL,NULL,'7.33','1','2018-08-31 18:55:41','2018-09-02 13:45:07',NULL),(475,36,'ANDREA JALIL GARCIA','2000','CDUC','13','6.85','7.15','6.95',NULL,NULL,NULL,NULL,'7.15','3','2018-08-31 18:56:02','2018-09-02 13:45:28',NULL),(476,36,'ANTONIA FUICA BERGER','2000','CDUC','13','7.24','7.22','7.33',NULL,NULL,NULL,NULL,'7.33','2','2018-08-31 18:56:19','2018-09-02 13:45:49',NULL),(477,37,'CESAR JOFRE PINCHEIRA','1996','A. SANTIAGO','13','40.52','x','x',NULL,NULL,NULL,NULL,'40.52','1 (675) (t=4908)','2018-08-31 19:12:57','2018-09-02 14:04:54',NULL),(478,37,'JASON  ROMERO SOTO','1999','C. D. BERNARDO FELMER','14','33.81','35.05','34.82',NULL,NULL,NULL,NULL,'35.05','2 (565) (t=3143)','2018-08-31 19:13:34','2018-09-02 14:05:10',NULL),(479,38,'FRANCISCA VALENCIA BEOVIC','1996','A. SANTIAGO','13','29.09','X','25.67',NULL,NULL,NULL,NULL,'29.09','F/C','2018-08-31 19:19:24','2018-09-02 14:13:31',NULL),(480,38,'RENATTE PINNINGHOOF AGUILA','1997','UACH','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:19:45','2018-09-02 14:13:44',NULL),(481,38,'MARTINA KREUTZBERGER TALADRIZ','1999','MANQUEHUE','13','22.68','22.54','25.04',NULL,NULL,NULL,NULL,'25.04','1','2018-08-31 19:20:05','2018-09-02 14:14:17',NULL),(482,38,'ANDREA JALIL GARCIA','2000','CDUC','13','16.02','19.29','21.26',NULL,NULL,NULL,NULL,'21.26','2','2018-08-31 19:20:28','2018-09-02 14:14:58',NULL),(483,38,'ANTONIA FUICA BERGER','2000','CDUC','13','18.17','15.86','X',NULL,NULL,NULL,NULL,'18.17','3','2018-08-31 19:20:41','2018-09-02 14:15:44',NULL),(484,39,'CESAR JOFRE PINCHEIRA','1996','A. SANTIAGO','13','39.81','39.00','40.87',NULL,NULL,NULL,NULL,'48.42','1','2018-08-31 19:25:23','2018-09-02 16:35:38',NULL),(485,39,'JASON  ROMERO SOTO','1999','C. D. BERNARDO FELMER','14','46.21','48.42','X',NULL,NULL,NULL,NULL,'40.87','2','2018-08-31 19:25:50','2018-09-02 16:34:37',NULL),(486,33,'CLAUDIA ESCOBAR VERGARA','1998-11-02','A. COPIAPO','3','43.93','X','44.16','','43.25','41.44','44.83','44.83','FC','2018-08-31 19:48:05','2018-09-01 18:21:04',NULL),(487,33,'SKARLETT MILENIA FERRADA  LAZEN','2000-01-30','C. ESC. INFANTIL DE ATLETISMO LLAY LLAY','5','',NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:48:05','2018-09-01 18:16:36',NULL),(488,33,'FRANCISCA IGNACIA PIZARRO  IBACACHE','2000-08-04','C. A. PHOENIX','9','X','29.37','27.68','','X','28.20','26.39','29.37','5','2018-08-31 19:48:05','2018-09-01 18:19:41',NULL),(489,33,'CATALINA IGNACIA MUÑOZ MONTERO','2000-06-21','C. A. PHOENIX','9','29.12','X','X','','X','31.66','X','31.66','4','2018-08-31 19:48:05','2018-09-01 18:19:43',NULL),(490,33,'JAVIERA DOMINIQUE BRAVO BEROIZA','2001-07-28','A. LA PINTANA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:48:05','2018-09-01 18:20:09',NULL),(491,33,'AMANDA  PEÑA  PEÑA','2000-08-29','A. ATACAMA','3','30.45','33.39','30.03',NULL,'32.80','31.51','30.66','33.39','2','2018-08-31 19:48:05','2018-09-01 18:22:12',NULL),(492,33,'FERNANDA BARRIL MARIN','2001-10-12','A. ATACAMA','3','24.23','30.06','31.87',NULL,'27.52','31.53','33.16','33.16','3','2018-08-31 19:48:05','2018-09-01 18:23:20',NULL),(493,33,'CATALINA  BRAVO AGUILERA','1999-04-03','C. D. COLEGIO PADRE HURTADO CHILLAN','8','42.42','48.07','X',NULL,'45.18','44.48','45.81','48.07','1','2018-08-31 19:48:05','2018-09-01 18:24:04',NULL),(494,33,'JAVIERA PUEBLA TSUKAME','2000-06-03','CDUC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:48:05','2018-09-01 18:20:13',NULL),(495,34,'MATÍAS EDUARDO VÁSQUEZ BARRERA','1999-10-14','C. A. DREAM','5','X','31.53','X',NULL,'X','28.13','29.39','31.53','8','2018-08-31 19:52:51','2018-09-01 19:01:07',NULL),(496,34,'DIEGO ULLOA MANQUILEPE','2000-11-23','C. D. BERNARDO FELMER','14','29.26','X','29.91',NULL,NULL,NULL,NULL,'29.91','9','2018-08-31 19:52:51','2018-09-01 19:01:52',NULL),(497,34,'NICOLAS FERNANDO VERA JERIA','1999-08-30','C. ENTRE-VALLES','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:52:51','2018-09-01 18:44:41',NULL),(498,34,'BORIS FLANDEZ MARTINEZ','1999-07-21','C. A. WINDSOR SCHOOL','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:52:51','2018-09-01 18:44:45',NULL),(499,34,'BERNARDO  PEREZ DE CASTRO GURIDI','2000-08-07','A. SANTIAGO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:52:51','2018-09-01 18:44:53',NULL),(500,34,'FRANCISCO JAVIER SOTO REYES','2001-08-21','C. ESC. INFANTIL DE ATLETISMO LLAY LLAY','5','39.19','39.00','X',NULL,'37.32','38.23','39.33','39.33','7','2018-08-31 19:52:51','2018-09-01 18:58:13',NULL),(501,34,'ELIECER MARIN CANCINO','2001-12-06','LOS CONQUISTADORES','6','X','X','28.28',NULL,NULL,NULL,NULL,'28.28','10','2018-08-31 19:52:51','2018-09-01 19:02:19',NULL),(502,34,'YANKO FABIAN PONCE ROJAS','1999-01-12','C. ENTRE-VALLES','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:52:51','2018-09-01 18:49:04',NULL),(503,34,'DARWIN YEREL DEL PRADO HERNÁNDEZ','2000-09-17','C. D. A. CORONEL','8','42.87','36.93','12.66',NULL,'42.77','X','X','42.87','3','2018-08-31 19:52:51','2018-09-01 18:56:08',NULL),(504,34,'BENJAMIN ARREDONDO AGUIRRE','2000-03-11','C. D. TROTAMUNDOS','15','40.55','X','37.03',NULL,'X','X','40.33','40.55','4','2018-08-31 19:52:51','2018-09-01 18:57:14',NULL),(505,34,'MANUEL ZULUETA COMPARINI','1999-12-08','A. SANTIAGO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:52:51','2018-09-01 18:48:56',NULL),(506,34,'ALVARO RENCORET MATURANA','2001-07-07','A. SANTIAGO','13','39.22','47.05','X',NULL,'45.60','45.12',NULL,'47.05','2','2018-08-31 19:52:51','2018-09-01 18:54:36',NULL),(507,34,'LUCAS NERVI  SCHMIDT','2001-08-31','A. SANTIAGO','13','50.88','49.36','49.36',NULL,'46.71','48.85','48.81','50.88','1','2018-08-31 19:52:51','2018-09-01 18:53:34',NULL),(508,34,'CLAUDIO ROMERO BELTRAN','2000-07-10','CDUC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:52:51','2018-09-01 18:48:43',NULL),(509,34,'FELIPE CASTELLON ','2001-05-11','CDUC','13','39.93','39.67','X',NULL,'37.33','39.63','34.80','39.93','5','2018-08-31 19:52:51','2018-09-01 18:59:21',NULL),(510,34,'SANTIAGO HERRERA MOLINA','2001-03-25','CDUC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:52:51','2018-09-01 18:48:46',NULL),(511,32,'SKARLETT MILENIA FERRADA  LAZEN','2000-01-30','C. ESC. INFANTIL DE ATLETISMO LLAY LLAY','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 19:59:36','2018-09-01 20:14:47',NULL),(512,32,'JOSEFINA AGUIRRE ROSSI','2000-11-04','CDUC','13','32.32','X','29.65',NULL,'33.05','31.98','34.63','34.63','1','2018-08-31 19:59:36','2018-09-01 20:33:04',NULL),(513,32,'VALENTINA SALAZAR CASANOVA','1996-01-31','CDUC','13','41.85','X','44.62',NULL,'X','42.58','X','44.62','FC','2018-08-31 19:59:36','2018-09-01 20:26:57',NULL),(514,32,'FRANCISCA CYMBRON MELLA','1996-12-14','CDUC','14','37.14','38.93','37.55',NULL,'40.96','37..62','38.64','40.96','FC','2018-08-31 19:59:36','2018-09-01 20:31:59',NULL),(515,40,'AGUSTIN STEAD ','2001-11-05','A. FRANCES','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:30',NULL),(516,40,'ESTEBAN BRYAN LARA CORNEJO','1999-07-01','A. LA PINTANA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:28',NULL),(517,40,'ANGEL NUÑEZ FARIAS','2000-06-29','A. LAS CABRAS','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:26',NULL),(518,40,'BRYAN GONZALEZ PINO','2000-03-04','A. LAS CABRAS','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:24',NULL),(519,40,'DIEGO ULLOA MANQUILEPE','2000-11-23','C. D. BERNARDO FELMER','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:22',NULL),(520,40,'BORIS FLANDEZ MARTINEZ','1999-07-21','C. A. WINDSOR SCHOOL','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:21',NULL),(521,40,'MIGUEL IRARRAZAVAL DE LA CERDA','2000-03-23','A. SANTIAGO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:20',NULL),(522,40,'IGNACIO  TOLEDO  CIFUENTES ','1999-01-23','C. A. NAHUEN','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:18',NULL),(523,40,'FRANCISCO MUSE MEHECH','1996-04-09','A. SANTIAGO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:16',NULL),(524,40,'DOMINGO AGUERO ','2001-05-31','CDUC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:15',NULL),(525,40,'VINCENT RITCHIE ','2000-05-15','CDUC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:01:55','2018-08-31 20:03:14',NULL),(526,41,'JAVIERA PUEBLA TSUKAME','2000-06-03','CDUC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:05:52','2018-08-31 20:06:55',NULL),(527,41,'CLAUDIA ESCOBAR VERGARA','1998-11-02','A. COPIAPO','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:05:52','2018-08-31 20:06:54',NULL),(528,41,'CARMEN CONTRERAS GAJARDO','1999-08-17','A. OASSI','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:05:52','2018-08-31 20:06:53',NULL),(529,41,'CATALINA  BRAVO AGUILERA','1999-04-03','C. D. COLEGIO PADRE HURTADO CHILLAN','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:05:52','2018-08-31 20:06:51',NULL),(530,41,'AUGUSTA SCHMIDT YEVENES','2000-10-02','A. SANTIAGO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:05:52','2018-08-31 20:06:50',NULL),(531,41,'CATALINA IGNACIA MUÑOZ MONTERO','2000-06-21','C. A. PHOENIX','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:05:52','2018-08-31 20:06:48',NULL),(532,41,'JAVIERA DOMINIQUE BRAVO BEROIZA','2001-07-28','A. LA PINTANA','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-08-31 20:05:52','2018-08-31 20:06:46',NULL),(533,42,'CAROLINA  CORREA PUENTES','2000-06-28','C. D. COLEGIO PADRE HURTADO CHILLAN','8','49.46','48.31','49.67','5','47.33','X','49.67','49.67','2','2018-08-31 20:09:26','2018-09-02 14:36:18',NULL),(534,42,'ELIZABETH GUZMÁN SILVA','1999-09-03','C. A. PROVINCIAL OSORNO','10','40.46','44.49','47.22','3','48.19','X','46.61','48.19','4','2018-08-31 20:09:26','2018-09-02 14:40:48',NULL),(535,42,'JOSSEFA  MUÑOZ FUENTES','2001-06-30','C. A. PHOENIX','9','X','49.27','49.09','4','48.33','X','49.66','49.66','3','2018-08-31 20:09:26','2018-09-02 14:42:21',NULL),(536,42,'MARIANA DE JESUS GARCIA WALKER','1999-03-19','C. A. PHOENIX','9','56.66','52.37','54.33','6','55.42','56.70','57.35','57.35','1','2018-08-31 20:09:26','2018-09-02 14:43:32',NULL),(537,42,'JAVIERA PUEBLA TSUKAME','2000-06-03','CDUC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 20:09:26','2018-09-02 14:31:31',NULL),(538,43,'NICOLAS FERNANDO VERA JERIA','1999-08-30','C. ENTRE-VALLES','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 20:12:36','2018-09-02 15:55:20',NULL),(539,43,'MATÍAS EDUARDO VÁSQUEZ BARRERA','1999-10-14','C. A. DREAM','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.33','6','2018-08-31 20:12:36','2018-09-02 15:54:29',NULL),(540,43,'BRUNO  ROMAN GUERRERO','2001-06-11','C. D. NICOLAS CARVAJAL','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.02','7','2018-08-31 20:12:36','2018-09-02 15:54:50',NULL),(541,43,'DARWIN YEREL DEL PRADO HERNÁNDEZ','2000-09-17','C. D. A. CORONEL','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.49','5','2018-08-31 20:12:36','2018-09-02 15:54:06',NULL),(542,43,'ELIECER MARIN CANCINO','2001-12-06','LOS CONQUISTADORES','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11.75','4','2018-08-31 20:12:36','2018-09-02 15:53:36',NULL),(543,43,'FRANCISCO JAVIER SOTO REYES','2001-08-21','C. ESC. INFANTIL DE ATLETISMO LLAY LLAY','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 20:12:36','2018-09-02 15:55:22',NULL),(544,43,'DIEGO ULLOA MANQUILEPE','2000-11-23','C. D. BERNARDO FELMER','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 20:12:36','2018-09-02 15:55:27',NULL),(545,43,'BENJAMIN ARREDONDO AGUIRRE','2000-03-11','C. D. TROTAMUNDOS','15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'13.01','3','2018-08-31 20:12:36','2018-09-02 15:53:12',NULL),(546,43,'LUCAS NERVI  SCHMIDT','2001-08-31','A. SANTIAGO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'14.32','2','2018-08-31 20:12:36','2018-09-02 15:52:19',NULL),(547,43,'ALVARO RENCORET MATURANA','2001-07-07','A. SANTIAGO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 20:12:37','2018-09-02 15:55:39',NULL),(548,43,'YANKO FABIAN PONCE ROJAS','1999-01-12','C. ENTRE-VALLES','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 20:12:37','2018-09-02 15:56:07',NULL),(549,43,'NICOLAS ARAYA ALDEA','1999-02-03','A. ATACAMA','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15.05','3**','2018-08-31 20:12:37','2018-09-02 16:00:03',NULL),(550,43,'MANUEL ZULUETA COMPARINI','1999-12-08','A. SANTIAGO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 20:12:37','2018-09-02 16:00:12',NULL),(551,43,'SEBASTIAN LAZEN URZUA','1996-03-20','A. SANTIAGO','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15.83','1**','2018-08-31 20:12:37','2018-09-02 15:59:53',NULL),(552,43,'CLAUDIO ROMERO BELTRAN','2000-07-10','CDUC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15.19','2**','2018-08-31 20:12:37','2018-09-02 15:59:58',NULL),(553,43,'FELIPE CASTELLON ','2001-05-11','CDUC','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-08-31 20:12:37','2018-09-02 15:55:36',NULL),(554,44,'CRISTOPHER LEUMAS MARTINEZ TORRES','2001-02-01','A. COPIAPO','3','X','X','57.12','4','55.29','59.39','X','59.39','3','2018-08-31 20:16:19','2018-09-02 16:03:37',NULL),(555,44,'DIEGO DÍAZ OYARZO','1999-09-03','C. A. PROVINCIAL OSORNO','10','40.88','45.41','45.36','2','44.63','43.75','44.41','45.41','6','2018-08-31 20:16:19','2018-09-02 16:04:44',NULL),(556,44,'GIOVANNI VALDEBENITO ROSALES','2001-02-08','C. A. PHOENIX','9','X','X','X','1','X','X','50.54','50.54','5','2018-08-31 20:16:19','2018-09-02 16:05:40',NULL),(557,44,'FERMIN  ALVAREZ MOLINA','1998-03-03','C. D. BERNARDO FELMER','14','X','49.16','50.54','3','X','X','X','50.54',NULL,'2018-08-31 20:16:19','2018-09-02 16:06:50',NULL),(558,44,'JUAN  SALAZAR MARDONES','2001-10-18','C. A. PHOENIX','9','X','X','57.41','5','X','X','X','57.41','4','2018-08-31 20:16:19','2018-09-02 16:07:50',NULL),(559,44,'DANIEL LEAL MAUREIRA','2001-02-04','C. A. PHOENIX','9','53.27','60.43','X','6','59.44','X','62.57','62.57','2','2018-08-31 20:16:19','2018-09-02 16:09:22',NULL),(560,44,'ROBERTO HERNAN MONTIEL  TOLEDO','1999-02-01','C. A. PHOENIX','9','X','64.00','X','8','X','62.13','62.93','64.00','1','2018-08-31 20:16:19','2018-09-02 16:10:17',NULL),(561,44,'HERVERTT ALVAREZ LAMAS','1994-09-17','C. A. PHOENIX','9','61.76','63.04','X','7','61.55','61.54','X','63.04','','2018-08-31 20:16:19','2018-09-02 16:11:17',NULL),(562,34,'CAMILO REYES','2000','C. GALGOS RUNNERS ','7','34.68','39.22','38.62','','39.45','X','38.49','39.45','6','2018-09-01 18:52:00','2018-09-01 19:00:23',NULL),(563,32,'CAROLINA GARCIA','1998','C PADRE HURTADO DE CHILLLAN ','7','45.63','38.27','43.57','','45.51','39.90','42.79','45.63','FC','2018-09-01 20:19:38','2018-09-01 20:20:16',NULL),(564,42,'ROSARIO VERA PALMA ','2000','C. D. COLEGIO PADRE HURTADO CHILLÁN','','','','','','','','','DNS','','2018-09-02 14:31:23','2018-09-02 14:31:23',NULL),(565,42,'CATALINA HIDALGO MERMOUD','2000','C. A. PHOENIX','9','32.11','37.36','X','1','X','X','39.80','39.80','6','2018-09-02 14:32:50','2018-09-02 14:32:50',NULL),(566,42,'FRANCISCA IGNACIA PIZARRO IBACACHE','2000','C. A. PHOENIX','9','X','42.43','X','2','X','X','X','42.43','5','2018-09-02 14:34:35','2018-09-02 14:34:35',NULL),(567,43,'CAMILO REYES','2000','GALGOS','8','','','','','','','','15.83','1','2018-09-02 15:50:49','2018-09-02 15:51:27',NULL);
/*!40000 ALTER TABLE `throw2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throw_head2s`
--

DROP TABLE IF EXISTS `throw_head2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throw_head2s` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_date` varchar(255) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `sex_id` bigint(20) DEFAULT NULL,
  `competition_id` bigint(20) DEFAULT NULL,
  `sport_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `serie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_throw_head2s_on_sex_id` (`sex_id`),
  KEY `index_throw_head2s_on_competition_id` (`competition_id`),
  KEY `index_throw_head2s_on_sport_id` (`sport_id`),
  KEY `index_throw_head2s_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_64b843463b` FOREIGN KEY (`sex_id`) REFERENCES `sexes` (`id`),
  CONSTRAINT `fk_rails_93374248f8` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`),
  CONSTRAINT `fk_rails_d8ee1635f0` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`),
  CONSTRAINT `fk_rails_e42acc6b62` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throw_head2s`
--

LOCK TABLES `throw_head2s` WRITE;
/*!40000 ALTER TABLE `throw_head2s` DISABLE KEYS */;
INSERT INTO `throw_head2s` VALUES (1,NULL,NULL,1,8,1,1,NULL,'2018-05-26 13:35:10','2018-05-27 14:29:28','Lanzamiento del Martillo - Final - Damas'),(2,NULL,NULL,1,11,1,1,NULL,'2018-05-26 14:30:29','2018-05-27 14:36:51','- Lanzamiento Bala - Hexatlón - Varones'),(3,NULL,NULL,1,11,1,1,NULL,'2018-05-26 18:23:03','2018-05-26 18:23:03',''),(4,NULL,NULL,1,13,1,1,NULL,'2018-05-26 18:37:24','2018-05-27 02:07:39','Lanzamiento Bala - Hexatlón Damas'),(5,NULL,NULL,1,14,1,1,NULL,'2018-05-26 18:56:13','2018-05-27 02:08:12','Lanzamiento del Martillo - Final Varones'),(6,NULL,NULL,1,20,1,1,NULL,'2018-05-26 19:28:21','2018-05-26 21:50:40','Lanzamiento Jabalina Varones'),(7,NULL,NULL,1,20,1,1,NULL,'2018-05-26 19:30:04','2018-05-26 19:33:35','Invitados Juveniles'),(8,NULL,NULL,1,23,1,1,NULL,'2018-05-26 20:29:21','2018-05-26 22:07:51','Lanzamiento Bala - Damas'),(9,NULL,NULL,1,26,1,1,NULL,'2018-05-26 21:07:43','2018-05-26 22:15:29','Lanzamiento Javalina - Final Damas'),(10,NULL,NULL,1,29,1,1,NULL,'2018-05-26 22:08:51','2018-05-26 22:16:22','Lanzamiento Bala - Varones'),(11,NULL,NULL,1,32,1,1,NULL,'2018-05-27 12:49:05','2018-05-27 12:49:05',''),(12,NULL,NULL,1,41,1,1,NULL,'2018-05-27 16:43:53','2018-05-27 16:49:24','Lanzamiento Disco - Varones'),(13,NULL,NULL,1,48,1,1,NULL,'2018-05-27 16:48:15','2018-05-27 16:48:15',''),(14,NULL,NULL,1,47,1,1,NULL,'2018-05-27 17:20:57','2018-05-27 17:24:54','Lanzamiento Jabalina - Hexatlón - Damas'),(15,NULL,NULL,1,77,1,1,NULL,'2018-08-04 01:10:31','2018-08-04 01:10:31','1'),(16,NULL,NULL,1,59,1,1,NULL,'2018-08-04 01:11:38','2018-08-04 01:11:38','1'),(17,NULL,NULL,1,64,1,1,NULL,'2018-08-04 01:12:51','2018-08-04 01:12:51','1'),(18,NULL,NULL,1,71,1,1,NULL,'2018-08-04 01:13:55','2018-08-04 01:13:55','1'),(19,NULL,NULL,1,92,1,1,NULL,'2018-08-04 01:14:59','2018-08-04 01:14:59','1'),(20,NULL,NULL,1,101,1,1,NULL,'2018-08-04 01:17:59','2018-08-04 01:17:59','1'),(21,NULL,NULL,1,57,1,1,NULL,'2018-08-04 01:19:26','2018-08-04 01:19:26','1'),(22,NULL,NULL,1,75,1,1,NULL,'2018-08-04 01:20:25','2018-08-04 01:20:25','1'),(23,NULL,NULL,1,89,1,1,NULL,'2018-08-04 01:44:29','2018-08-04 01:44:29','1'),(24,NULL,NULL,1,69,1,1,NULL,'2018-08-04 01:49:27','2018-08-04 16:12:15',''),(25,NULL,NULL,1,85,1,1,NULL,'2018-08-04 01:50:24','2018-08-04 01:50:24','1'),(26,NULL,NULL,1,93,1,1,NULL,'2018-08-04 02:02:13','2018-08-04 02:02:13',''),(27,NULL,NULL,1,104,1,1,NULL,'2018-08-05 20:26:15','2018-08-05 20:26:15',''),(28,NULL,NULL,1,109,1,1,NULL,'2018-08-24 20:31:06','2018-08-24 20:31:06','FINAL'),(29,NULL,NULL,1,112,1,1,NULL,'2018-08-24 23:41:43','2018-08-24 23:41:43','FINAL'),(30,NULL,NULL,1,121,1,1,NULL,'2018-08-25 22:47:25','2018-08-25 22:47:25','FINAL'),(31,NULL,NULL,1,123,1,1,NULL,'2018-08-25 22:57:14','2018-08-25 22:57:14','FINAL'),(32,NULL,NULL,1,147,1,1,NULL,'2018-08-30 22:24:43','2018-08-30 22:24:43','FINAL'),(33,NULL,NULL,1,135,1,1,NULL,'2018-08-31 18:08:33','2018-08-31 18:08:33',''),(34,NULL,NULL,1,140,1,1,NULL,'2018-08-31 18:19:46','2018-08-31 18:19:46',''),(35,NULL,NULL,1,138,1,1,NULL,'2018-08-31 18:52:28','2018-08-31 18:52:28',''),(36,NULL,NULL,1,141,1,1,NULL,'2018-08-31 18:54:35','2018-08-31 18:54:35',''),(37,NULL,NULL,1,170,1,1,NULL,'2018-08-31 19:11:59','2018-08-31 19:11:59',''),(38,NULL,NULL,1,179,1,1,NULL,'2018-08-31 19:18:56','2018-08-31 19:18:56',''),(39,NULL,NULL,1,191,1,1,NULL,'2018-08-31 19:24:31','2018-08-31 19:24:31',''),(40,NULL,NULL,1,156,1,1,NULL,'2018-08-31 20:01:46','2018-08-31 20:01:46',''),(41,NULL,NULL,1,157,1,1,NULL,'2018-08-31 20:05:40','2018-08-31 20:05:40',''),(42,NULL,NULL,1,174,1,1,NULL,'2018-08-31 20:09:17','2018-08-31 20:09:17',''),(43,NULL,NULL,1,177,1,1,NULL,'2018-08-31 20:12:18','2018-08-31 20:12:18',''),(44,NULL,NULL,1,182,1,1,NULL,'2018-08-31 20:16:10','2018-08-31 20:16:10','');
/*!40000 ALTER TABLE `throw_head2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throwings`
--

DROP TABLE IF EXISTS `throwings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throwings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `reg` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `first` varchar(255) DEFAULT NULL,
  `seconnd` varchar(255) DEFAULT NULL,
  `third` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `fourth` varchar(255) DEFAULT NULL,
  `fift` varchar(255) DEFAULT NULL,
  `sixth` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throwings`
--

LOCK TABLES `throwings` WRITE;
/*!40000 ALTER TABLE `throwings` DISABLE KEYS */;
/*!40000 ALTER TABLE `throwings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track2s`
--

DROP TABLE IF EXISTS `track2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track2s` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `track_head2_id` bigint(20) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `rail` varchar(255) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `bestAchievement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_track2s_on_track_head2_id` (`track_head2_id`),
  CONSTRAINT `fk_rails_8c5dc3655a` FOREIGN KEY (`track_head2_id`) REFERENCES `track_head2s` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2545 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track2s`
--

LOCK TABLES `track2s` WRITE;
/*!40000 ALTER TABLE `track2s` DISABLE KEYS */;
INSERT INTO `track2s` VALUES (3,3,2,'16.89 (609)','Maria Squella Contardo',NULL,'CDUC','13',NULL,'2018-05-26 13:15:12','2018-05-27 13:05:59','1',NULL,NULL),(4,3,3,'17.07 (589)','Cristianne Neumann',NULL,'C. D. Pilauco','10',NULL,'2018-05-26 13:15:12','2018-05-27 13:06:08','8',NULL,NULL),(5,3,4,'17.67 (523)','Cecilia Millaray',NULL,'A. Ingles','4',NULL,'2018-05-26 13:15:12','2018-05-27 13:06:34','6',NULL,NULL),(6,3,5,'18.94 (396)','Martina Delgado',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-26 13:15:12','2018-05-27 13:06:54','3',NULL,NULL),(7,3,6,'19.95 (306)','Laura Bustamante González',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-26 13:15:12','2018-05-27 13:07:06','4',NULL,NULL),(8,3,7,'21.65 (180)','Aylimm Muñoz Diaz',NULL,'A. de A. Castro','10',NULL,'2018-05-26 13:15:12','2018-05-27 13:07:24','5',NULL,NULL),(9,3,8,'21.73 (180)','Emilia Cabrera Valenzuela',NULL,'C. Manquemávida de Santa Cruz','6',NULL,'2018-05-26 13:15:12','2018-05-27 13:07:31','7',NULL,NULL),(12,5,1,'12.12 (628)','Eduardo Camp Summerset',NULL,'CAF Arica','15',NULL,'2018-05-26 13:47:48','2018-05-27 13:03:56','2',NULL,NULL),(13,5,2,'12.33 (588)','Manuel Vasquez',NULL,'C. D. Pilauco','10',NULL,'2018-05-26 13:47:48','2018-05-27 13:04:13','7',NULL,NULL),(14,5,3,'12.60 (538)','Pablo Rojas Muñoz',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-26 13:47:48','2018-05-27 13:04:23','5',NULL,NULL),(15,5,4,'12.79 (504)','Santiago Salinas Cabrera',NULL,'A. Santiago','13',NULL,'2018-05-26 13:47:48','2018-05-27 13:04:35','4',NULL,NULL),(16,5,5,'12.95(476)','Benjamin Alvarado Olmi',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-26 13:47:48','2018-05-27 13:04:44','6',NULL,NULL),(17,5,6,'13.30 (418)','Mauricio Irribarren Poyanopulos',NULL,'CAF Arica','15',NULL,'2018-05-26 13:47:48','2018-05-27 13:05:20','3',NULL,NULL),(18,5,7,'13.32 (415)','Adan Puel',NULL,'A. Ñielol','9',NULL,'2018-05-26 13:47:48','2018-05-27 13:05:30','8',NULL,NULL),(19,5,8,'13.38 (405)','Benjamin Gonzalez Olguin',NULL,'A. Nancagua','6',NULL,'2018-05-26 13:47:48','2018-05-27 13:05:40','1',NULL,NULL),(26,6,1,'13.27','Victoria Rios Castro',NULL,'A. Santiago','13',NULL,'2018-05-26 14:58:50','2018-05-26 14:58:50','4',NULL,NULL),(27,6,2,'13.82','Renata Álvarez Parraguez',NULL,'A. Francés','13',NULL,'2018-05-26 15:00:00','2018-05-26 15:00:00','5',NULL,NULL),(28,6,3,'14.54','Claudia Retamales Nuñez',NULL,'OASSI','13',NULL,'2018-05-26 15:02:05','2018-05-26 15:02:05','6',NULL,NULL),(29,6,4,'14.67','Catalina Andrea Leiva  Bascur',NULL,'C. D. A. Coronel','8',NULL,'2018-05-26 15:02:22','2018-05-26 15:04:00','2',NULL,NULL),(30,6,5,'14.76','Amanda Hunt Cid',NULL,'OASSI','13',NULL,'2018-05-26 15:04:46','2018-05-26 15:04:46','7',NULL,NULL),(31,6,6,'14.99','Dafne Anais Reyes',NULL,'A. Santiago','13',NULL,'2018-05-26 15:06:06','2018-05-26 15:06:06','8',NULL,NULL),(32,6,7,'15.17','Irene Linda Riquelme Muñoz',NULL,'C. A. Tamarugo','1',NULL,'2018-05-26 15:11:54','2018-05-26 15:11:54','3',NULL,NULL),(33,7,1,'16:34.47','Daniela Paz Godoy Lagos',NULL,'C.D. Freire','9',NULL,'2018-05-26 15:12:15','2018-05-26 15:12:15','',NULL,NULL),(34,6,8,'16.15','Victoria Pardo Antillanca',NULL,'C. D. Bernando Felmer','14',NULL,'2018-05-26 15:13:42','2018-05-26 15:13:42','1',NULL,NULL),(35,7,2,'16:57.36','Valentina Aguilar Fernández',NULL,'C.D. Trotamundos','15',NULL,'2018-05-26 15:15:05','2018-05-26 15:15:05','',NULL,NULL),(37,7,3,'17:03.90','Monserrat Peñafiel Vallejos',NULL,'E. Atletismo Osorno','10',NULL,'2018-05-26 15:16:09','2018-05-26 15:16:09','',NULL,NULL),(38,8,1,'13.04','Barbara Carrasco Garcia',NULL,'A. Santiago','13',NULL,'2018-05-26 15:16:50','2018-05-26 15:16:50','4',NULL,NULL),(39,7,4,'17:29.57','Ayllyn Vallejos Galvarino',NULL,'C. Deportes Saavedra','9',NULL,'2018-05-26 15:17:54','2018-05-26 15:17:54','',NULL,NULL),(40,7,5,'17:30.62','Monserrat Rojas Maugard',NULL,'C. D. Trotamundos','15',NULL,'2018-05-26 15:19:37','2018-05-26 15:19:37','',NULL,NULL),(41,8,2,'13.35','Gabriela Millaray Zúñiga Olivos',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 15:20:11','2018-05-26 15:20:11','6',NULL,NULL),(42,7,6,'17:50.58','Catalina Pérez Gálvez',NULL,'A. Nancagua','6',NULL,'2018-05-26 15:20:17','2018-05-26 15:20:17','',NULL,NULL),(43,7,NULL,'DQ','Carolina Valesca Godoy Lagos',NULL,'C.D. Freire','9',NULL,'2018-05-26 15:21:19','2018-05-26 19:37:45','',NULL,NULL),(44,8,3,'13.45','Carola Scheihing Ballesteros',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-26 15:21:37','2018-05-26 15:21:37','1',NULL,NULL),(45,7,NULL,'DNF','Francisca Briones Contreras',NULL,'C.A. Punta Arenas','12',NULL,'2018-05-26 15:22:23','2018-05-26 19:37:41','',NULL,NULL),(46,8,4,'13.56','Camil Sarai Ponce Márquez',NULL,'Vicente Potrerillos Salinas','3',NULL,'2018-05-26 15:25:52','2018-05-26 15:25:52','3',NULL,NULL),(51,8,5,'13.75','Josefa Valdera Ramos',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 15:31:12','2018-05-26 15:31:12','5',NULL,NULL),(52,8,6,'15.26','Carla Rios Bermudez',NULL,'OASSI','13',NULL,'2018-05-26 15:32:13','2018-05-26 15:32:13','7',NULL,NULL),(53,8,NULL,'DNS','Constanza Antonia Gamboa Tapia',NULL,'C. A. O’Higgins','5',NULL,'2018-05-26 15:32:54','2018-05-26 19:38:52','',NULL,NULL),(54,8,NULL,'DNS','Anthar Gipoulou Pizarro',NULL,'C.D. Windsor School','14',NULL,'2018-05-26 15:34:03','2018-05-26 19:38:54','',NULL,NULL),(55,3,1,'12.22','Rocio Carvajal San Martin','','A. Santiago','13','','2018-05-26 15:36:05','2018-08-09 01:25:24','5',NULL,NULL),(56,9,2,'14.70','Constanza Millaray Chandia Ibacache',NULL,'C. D. A. Sporting Coquimbo','4',NULL,'2018-05-26 15:37:33','2018-05-26 15:37:33','2',NULL,NULL),(57,9,3,'14.80','Antonia Suerez Escobar',NULL,'A. Santiago','13',NULL,'2018-05-26 15:38:34','2018-05-26 15:38:34','8',NULL,NULL),(58,9,4,'16.00','Catalina Norambuena Otarola',NULL,'OASSI','13',NULL,'2018-05-26 15:39:11','2018-05-26 15:39:11','7',NULL,NULL),(60,9,NULL,'DQ','Antonia Diaz Lizana',NULL,'A. Nancagua','6',NULL,'2018-05-26 15:41:08','2018-05-26 19:39:14','',NULL,NULL),(61,9,NULL,'DNS','Valentina  Vásquez  General',NULL,'C. A. Limache','5',NULL,'2018-05-26 15:42:01','2018-05-26 19:39:06','',NULL,NULL),(62,9,NULL,'DNS','Catalina Gonzales Opazo',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-26 15:43:04','2018-05-26 19:39:09','',NULL,NULL),(63,9,NULL,'DNS','Contanza Gomez Valdés',NULL,'CDUC','13',NULL,'2018-05-26 15:44:07','2018-05-26 19:39:11','',NULL,NULL),(64,10,1,'12.88','Claudia Daniela Pimentel Cruz',NULL,'C. Chuquicamata','2',NULL,'2018-05-26 15:48:18','2018-05-26 15:48:18','4',NULL,NULL),(65,10,2,'13.19','Esperanza Garcia Tapia',NULL,'CDUC','13',NULL,'2018-05-26 15:49:14','2018-05-26 15:49:14','1',NULL,NULL),(66,10,3,'13.65','Khaterine Hornig Angulo',NULL,'C. A. Gerardo Manzanares ','10',NULL,'2018-05-26 15:50:02','2018-05-26 15:50:02','5',NULL,NULL),(67,10,4,'13.68','Javiera Gonzalez Moscoso',NULL,'A. Nancagua','6',NULL,'2018-05-26 15:51:01','2018-05-26 15:51:01','3',NULL,NULL),(68,10,5,'14.34','Tamara Lopez Vera',NULL,'A. Cauquenes','7',NULL,'2018-05-26 15:51:54','2018-05-26 15:51:54','6',NULL,NULL),(69,10,NULL,'DNS','Martina Gonzalez Villalobos',NULL,'A. Nancagua','6',NULL,'2018-05-26 15:52:58','2018-05-26 19:39:25','',NULL,NULL),(70,10,NULL,'DNS','Rocio Barrientos Crispieri',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 15:54:04','2018-05-26 19:39:28','',NULL,NULL),(71,10,NULL,'DNS','Amelia Molinos Rillón',NULL,'CDUC','13',NULL,'2018-05-26 15:54:37','2018-05-26 19:39:29','',NULL,NULL),(72,11,1,'13.86','Josefa Ignacia Ibañez Salinas',NULL,'A. Ingles','4',NULL,'2018-05-26 15:58:40','2018-05-26 15:58:40','4',NULL,NULL),(73,11,2,'14.53','Fernanda Isidora Maldonado Fuentealba',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 16:00:47','2018-05-26 16:00:47','2',NULL,NULL),(74,11,3,'14.74','Maria  Reyes Fernandez',NULL,'C. A. Gerardo Manzanares ','10',NULL,'2018-05-26 16:02:33','2018-05-26 16:02:33','7',NULL,NULL),(75,11,4,'15.20','Carmen Gonzalez Escobar',NULL,'A. Santiago','13',NULL,'2018-05-26 16:07:37','2018-05-26 16:08:19','8',NULL,NULL),(76,11,NULL,'DNS','Sofia Torres Letelier',NULL,'A. Cauquenes','7',NULL,'2018-05-26 16:09:10','2018-05-26 19:39:50','',NULL,NULL),(82,11,NULL,'DNS','Florencia Opazo Alul',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-26 16:09:55','2018-05-26 19:39:47','',NULL,NULL),(83,11,NULL,'DNS','Ayleen Amaya Casanova López',NULL,'C. A. O’Higgins','5',NULL,'2018-05-26 16:10:47','2018-05-26 19:39:44','',NULL,NULL),(84,11,NULL,'DNS','Estefanía Arancibia Diaz',NULL,'YKA','13',NULL,'2018-05-26 16:11:42','2018-05-26 19:39:41','',NULL,NULL),(85,12,1,'51.62','Alfredo Sepúlveda Sandoval',NULL,'A. Pacífico','5',NULL,'2018-05-26 16:13:49','2018-05-27 14:16:51','4',NULL,NULL),(86,12,2,'51.99','Andres Bayron Silva',NULL,'Uruguay','URU',NULL,'2018-05-26 16:13:49','2018-05-27 14:16:58','5',NULL,NULL),(87,12,3,'53.97','Cristóbal Muñoz Fuentealba',NULL,'A. Gerardo Manzanares','10',NULL,'2018-05-26 16:13:49','2018-05-27 14:17:38','6',NULL,NULL),(88,12,4,'55.16','Francisco Barrueto Osandón',NULL,'A. Pacífico','5',NULL,'2018-05-26 16:13:49','2018-05-27 14:17:01','7',NULL,NULL),(89,12,5,'56.71','Gabriel Sepúlveda Sandoval',NULL,'A. Pacífico','5',NULL,'2018-05-26 16:13:49','2018-05-27 14:17:04','3',NULL,NULL),(90,12,NULL,'DNS','Joao Pinto Acevedo',NULL,'U. Católica','13',NULL,'2018-05-26 16:13:49','2018-05-27 14:17:08',NULL,NULL,NULL),(91,13,1,'48.77','Mateo Pascual',NULL,'Uruguay','URU',NULL,'2018-05-26 16:16:26','2018-05-27 14:19:01','5',NULL,NULL),(92,13,2,'50.96','Francisco Muñoz',NULL,'Cultura Fisica','5',NULL,'2018-05-26 16:16:26','2018-05-27 14:19:05','6',NULL,NULL),(93,13,3,'51.99','Maximiliano Castro Ossa',NULL,'A. Santiago','13',NULL,'2018-05-26 16:16:26','2018-05-27 14:19:09','3',NULL,NULL),(94,13,4,'53.19','Cristobal Torres',NULL,'OASSI','13',NULL,'2018-05-26 16:16:26','2018-05-27 14:19:10','4',NULL,NULL),(95,13,NULL,'DNS','Santiago Martínez Muñoz',NULL,'OASSI','13',NULL,'2018-05-26 16:16:26','2018-05-27 14:19:12','',NULL,NULL),(96,14,1,'13.66','Nicole Darritchon Lama',NULL,'CDUC','13',NULL,'2018-05-26 16:16:28','2018-05-26 16:16:28','4',NULL,NULL),(97,14,2,'13.85','Natalie Paulina Sepulveda  Delbury',NULL,'C. D. San Pablo (Chiguayante)','8',NULL,'2018-05-26 16:18:03','2018-05-26 16:18:03','5',NULL,NULL),(98,14,3,'14.34','Ignacia  Pinto  Parraguez',NULL,'A. Francés','13',NULL,'2018-05-26 16:19:02','2018-05-26 16:19:02','8',NULL,NULL),(99,14,4,'14.56','Francisca Rojas Jara',NULL,'A. Santiago','13',NULL,'2018-05-26 16:19:47','2018-05-26 16:19:47','7',NULL,NULL),(100,14,5,'15.12','Francisca  Reyes Martinez',NULL,'A. Francés','13',NULL,'2018-05-26 16:20:30','2018-05-26 16:20:30','2',NULL,NULL),(101,14,NULL,'DNS','María Paz Alvarez Gassano',NULL,'Centro Atlético Formativo','15',NULL,'2018-05-26 16:21:29','2018-05-26 19:39:57','',NULL,NULL),(103,14,NULL,'DNS','Mariana Sanhueza Welsh',NULL,'OASSI','13',NULL,'2018-05-26 16:22:09','2018-05-26 19:39:59','',NULL,NULL),(104,15,1,'13.74','Margarita Hubner',NULL,'C. D. Pilauco','10',NULL,'2018-05-26 16:23:51','2018-05-26 19:41:30','1',NULL,NULL),(105,15,2,'13.88','Fernanda Saavedra Diaz',NULL,'A. Francés','13',NULL,'2018-05-26 16:23:51','2018-05-26 19:40:50','5',NULL,NULL),(106,15,3,'15.79','Melany Rocío Guerrero Chayle',NULL,'A. Copiapó','3',NULL,'2018-05-26 16:23:51','2018-05-26 19:42:01','6',NULL,NULL),(107,15,NULL,'DNS','Irina Andrea Toth Mena',NULL,'A. Ingles','4',NULL,'2018-05-26 16:23:51','2018-05-26 19:42:29','',NULL,NULL),(108,15,NULL,'DNS','Maria del Carmen Guzman Karadim',NULL,'CDUC','13',NULL,'2018-05-26 16:23:51','2018-05-26 19:41:02','',NULL,NULL),(109,15,NULL,'DNS','Josefa Inostroza Maldnado',NULL,'C. Liceo de Curicó','7',NULL,'2018-05-26 16:23:51','2018-05-27 14:24:35','',NULL,NULL),(110,15,NULL,'DNS','Francisca Cespedes Valenzuela',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 16:23:51','2018-05-27 14:24:54','',NULL,NULL),(111,15,NULL,'DNS','Antonia Isidora Moya Ortiz',NULL,'C. Galgos Runners Linares','7',NULL,'2018-05-26 16:23:51','2018-05-27 14:25:22','',NULL,NULL),(112,16,1,'14.19','Renata Isidora Álvarez Correa',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 16:29:29','2018-05-27 14:25:54','6',NULL,NULL),(113,16,2,'14.61','Franchesca Espinoza Alarcon',NULL,'A. Cauquenes','7',NULL,'2018-05-26 16:29:29','2018-05-27 14:26:41','4',NULL,NULL),(114,16,3,'14.85','Francisca Fabio Sepulveda',NULL,'A. Santiago','13',NULL,'2018-05-26 16:29:29','2018-05-26 19:42:50','8',NULL,NULL),(115,16,4,'14.91','Maria Paz Romero Manriquez',NULL,'A. Ingles','4',NULL,'2018-05-26 16:29:29','2018-05-26 19:42:45','7',NULL,NULL),(116,16,5,'17.50','Tania Loreto Garcés Schnettler',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 16:29:29','2018-05-27 14:26:44','2',NULL,NULL),(117,16,NULL,'DNS','Josefa Antonia Valenzuela Pavez',NULL,'C. Piduco Talca','6',NULL,'2018-05-26 16:29:29','2018-05-27 14:27:03','',NULL,NULL),(118,16,NULL,'DNS','Josefa Antonia Orellana Valdes',NULL,'C. Génesis','6',NULL,'2018-05-26 16:29:29','2018-05-27 14:27:24','',NULL,NULL),(119,17,1,'14.07','Piera Peña Gambetta',NULL,'A. Santiago','13',NULL,'2018-05-26 16:34:36','2018-05-26 19:43:38','6',NULL,NULL),(120,17,2,'14.48','Magdalena Antonia Gandolfo Almo',NULL,'C. A. O’Higgins','5',NULL,'2018-05-26 16:34:37','2018-05-26 19:43:44','5',NULL,NULL),(121,17,3,'14.59','Katalina  Ríos  Melipil',NULL,'C. A. Ñielol','9',NULL,'2018-05-26 16:34:37','2018-05-27 14:27:52','7',NULL,NULL),(122,17,4,'14.63','Ignacia Mirely Cheipul Cabrera',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 16:34:37','2018-05-27 14:27:37','8',NULL,NULL),(123,17,5,'15.47','Chester Avila Salas',NULL,'A. Cauquenes','7',NULL,'2018-05-26 16:34:37','2018-05-27 14:27:33','2',NULL,NULL),(124,17,NULL,'DQ','Constanza Escudero Cartes',NULL,'A. Coquimbo','4',NULL,'2018-05-26 16:34:37','2018-05-26 19:43:49','',NULL,NULL),(125,17,NULL,'DNS','Fernanda Gonzalez Gomez',NULL,'C. A. Parral','7',NULL,'2018-05-26 16:34:37','2018-05-27 14:28:20','',NULL,NULL),(126,18,1,'13.57','Ornella Casareggio Alonso',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 16:38:13','2018-05-27 14:28:30','3.0',NULL,NULL),(127,18,NULL,'DNS','Anais  Valentina Hernandez Aleg',NULL,'C. A. Nacional Iquique','1',NULL,'2018-05-26 16:38:13','2018-05-27 14:28:33','4.0',NULL,NULL),(128,18,NULL,'DNS','Anabela Marisol Lagos Luna',NULL,'C. A. Nacional Iquique','1',NULL,'2018-05-26 16:38:13','2018-05-27 14:28:36','5.0',NULL,NULL),(129,18,NULL,'DNS','Evelyn Alejandra Caro Guevara',NULL,'C. A. Tamarugo','1',NULL,'2018-05-26 16:38:13','2018-05-27 14:28:39','6.0',NULL,NULL),(130,19,1,'11.59','Juan Pablo Nordetti Llul',NULL,'CDUC','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:39:58','4',NULL,NULL),(131,19,2,'12.33','Vicente Perez Pellegrini',NULL,'A. Santiago','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:01','5',NULL,NULL),(132,19,3,'12.73','Alfredo Vicari Torres',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:06','7',NULL,NULL),(133,19,4,'13.25','Ignacio Orellana Gonzalez',NULL,'OASSI','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:08','2',NULL,NULL),(134,19,NULL,'DNS','Juan Pablo Baeza Jarpa',NULL,'A. Santiago','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:10','3',NULL,NULL),(135,19,NULL,'DNS','Julian Murgia Nuñez',NULL,'OASSI','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:13','6',NULL,NULL),(136,19,NULL,'DNS','Gabriel Escalona Ilabaca',NULL,'OASSI','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:17','8',NULL,NULL),(137,19,NULL,'DNS','Eduardo Rodas Alfaro',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:19','1',NULL,NULL),(138,20,1,'12.09','Manuel Gonzalez Mallol',NULL,'A. Santiago','13',NULL,'2018-05-26 16:47:57','2018-05-27 14:40:23','4',NULL,NULL),(139,20,2,'13.19','Joaquin Vicente Lopehandia Zepe',NULL,'A. Ingles','4',NULL,'2018-05-26 16:47:57','2018-05-27 14:40:26','1',NULL,NULL),(140,20,3,'13.21','Ricardo Fenandez Arce',NULL,'C. de Atletismo Juan Silva de L','8',NULL,'2018-05-26 16:47:57','2018-05-27 14:40:46','2',NULL,NULL),(141,20,4,'13.24','Diego Hormazabal Torres',NULL,'A. Cauquenes','7',NULL,'2018-05-26 16:47:57','2018-05-27 14:40:49','6',NULL,NULL),(142,20,5,'13.93','Fabian Ferrufino Robledo',NULL,'A. Copiapó','3',NULL,'2018-05-26 16:47:57','2018-05-27 14:40:51','8',NULL,NULL),(143,20,NULL,'DNS','David Ignacio Jarpa Venegas',NULL,'C. A. Nekuln Galgos (Chillan Vi','8',NULL,'2018-05-26 16:47:57','2018-05-27 14:41:20','5',NULL,NULL),(144,20,NULL,'DNS','Bolívar Alberto Lee Caniguan',NULL,'C. A. Nahuelbuta Angol','9',NULL,'2018-05-26 16:47:57','2018-05-27 14:41:37','3',NULL,NULL),(145,20,NULL,'DNS','Renato  Domínguez Olmos',NULL,'A. Francés','13',NULL,'2018-05-26 16:47:57','2018-05-27 14:41:39','7',NULL,NULL),(146,21,1,'11.68','Pedro Reyes Parada',NULL,'A. Santiago','13',NULL,'2018-05-26 16:50:15','2018-05-27 14:41:44','4',NULL,NULL),(147,21,2,'12.38','Benjamin Felipe Miranda Toledo',NULL,'C. Génesis','6',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:11','6',NULL,NULL),(148,21,3,'12.44','Cristobal Alejandro Salazar Ala',NULL,'C. Génesis','6',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:12','7',NULL,NULL),(149,21,4,'13.38','Luciano Aros Acuña',NULL,'C. D. Bernardo Felmer','14',NULL,'2018-05-26 16:50:15','2018-05-27 14:43:10','8',NULL,NULL),(150,21,NULL,'DNS','Antonio Santana Muñoz',NULL,'A. de A. Castro','10',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:55','5',NULL,NULL),(151,21,NULL,'DNS','Gabriel Muñoz Squella',NULL,'A. Santiago','13',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:18','3',NULL,NULL),(152,21,NULL,'DNS','Pedro Krebs Saez',NULL,'A. San Ignacio','13',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:19','2',NULL,NULL),(153,21,NULL,'DNS','Nicanor Millan Viejo',NULL,'C.D. Windsor School','14',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:37','1',NULL,NULL),(154,22,1,'11.68','Luis Ferney Riasco Riasco',NULL,'C. Chuquicamata','2',NULL,'2018-05-26 16:54:31','2018-05-27 14:44:34','4',NULL,NULL),(155,22,2,'12.00','Andrés Refusta Fuentes',NULL,'CDUC','13',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:24','1',NULL,NULL),(156,22,3,'12.01','Ignacio Aguayo Cifuentes',NULL,'C. A. Phoenix','9',NULL,'2018-05-26 16:54:31','2018-05-27 14:44:15','3',NULL,NULL),(157,22,4,'13.16','Michel Orellana Gonzalez',NULL,'OASSI','13',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:25','2',NULL,NULL),(158,22,5,'13.32','Pablo Moya Guztamente',NULL,'A. Cauquenes','7',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:28','5',NULL,NULL),(159,22,6,'13.32','Carlos Ibarra Allende',NULL,'C. Liceo de Curicó','7',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:32','6',NULL,NULL),(160,22,7,'13.35','Agustin Urizar Arenas',NULL,'A. San Ignacio','13',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:37','8',NULL,NULL),(161,22,NULL,'DNS','Bastian Canales Valenzuela',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:52','7',NULL,NULL),(162,23,1,'11.79','Rodrigo Cerda',NULL,'C. D. Pilauco','10',NULL,'2018-05-26 16:59:17','2018-05-27 14:46:36','4',NULL,NULL),(163,23,2,'12.06','Benjamín Emilio Villa Castro',NULL,'C. A. Nahuelbuta Angol','9',NULL,'2018-05-26 16:59:17','2018-05-27 14:45:30','3',NULL,NULL),(164,23,3,'12.19','Clemente Ruiz Bianchini',NULL,'CDUC','13',NULL,'2018-05-26 16:59:17','2018-05-27 14:45:32','1',NULL,NULL),(165,23,4,'12.59','Luis Hernandez Gonzalez',NULL,'C. Liceo de Curicó','7',NULL,'2018-05-26 16:59:17','2018-05-27 14:45:34','6',NULL,NULL),(166,23,5,'12.85','Lucas  Díaz  Hernandez',NULL,'A. Francés','13',NULL,'2018-05-26 16:59:17','2018-05-27 14:45:39','7',NULL,NULL),(167,23,6,'13.50','Francisco Javier Chiuminatto Mu',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 16:59:17','2018-05-27 14:45:41','5',NULL,NULL),(168,23,7,'13.83','Felipe Sepulveda Cordero',NULL,'U. de Tarapaca','15',NULL,'2018-05-26 16:59:17','2018-05-27 14:46:07','2',NULL,NULL),(169,23,NULL,'DNS','Nahel Silva Fuentes',NULL,'OASSI','13',NULL,'2018-05-26 16:59:17','2018-05-27 14:46:09','8',NULL,NULL),(170,24,1,'12.06','Agustin Valdes Zegers',NULL,'A. Santiago','13',NULL,'2018-05-26 17:04:15','2018-05-27 14:46:41','5',NULL,NULL),(171,24,2,'12.41','Damian Godoy Poblete',NULL,'A. Nancagua','6',NULL,'2018-05-26 17:04:15','2018-05-27 14:48:07','6',NULL,NULL),(172,24,3,'12.48','Jose Vicente Peña Alvarado',NULL,'C. Génesis','6',NULL,'2018-05-26 17:04:15','2018-05-27 14:46:53','7',NULL,NULL),(173,24,4,'12.51','Martín Steffens',NULL,'CDUC','13',NULL,'2018-05-26 17:04:15','2018-05-27 14:46:54','1',NULL,NULL),(174,24,5,'13.01','Salvador La Corte Castro',NULL,'A. San Ignacio','13',NULL,'2018-05-26 17:04:15','2018-05-27 14:46:57','8',NULL,NULL),(175,24,6,'13.52','Gabriel Fuentes Montes',NULL,'A. San Ignacio','13',NULL,'2018-05-26 17:04:15','2018-05-27 14:46:59','2',NULL,NULL),(176,24,NULL,'DNS','Matias Francisco Salgado Menese',NULL,'C. Nilda Rojas','2',NULL,'2018-05-26 17:04:15','2018-05-27 14:47:40','4',NULL,NULL),(177,24,NULL,'DNS','Paulo Noemi Zuleta',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 17:04:15','2018-05-27 14:47:04','3',NULL,NULL),(178,25,1,'12.02','Benjamin Rojas krause',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-26 17:07:18','2018-05-27 14:50:23','3',NULL,NULL),(179,25,2,'12.08','Bruno Rickemberg Benedetti',NULL,'A. Santiago','13',NULL,'2018-05-26 17:07:18','2018-05-27 14:48:14','4',NULL,NULL),(180,25,3,'12.30','Alexis Macaya Arellano',NULL,'A. Cauquenes','7',NULL,'2018-05-26 17:07:18','2018-05-27 14:49:10','5',NULL,NULL),(181,25,4,'12.71','Ignacio Campos Del Saz',NULL,'C. A. Parral','7',NULL,'2018-05-26 17:07:18','2018-05-27 14:49:50','7',NULL,NULL),(182,25,5,'12.90','Gabriel Abid Gallardo Marin',NULL,'A. Coquimbo','4',NULL,'2018-05-26 17:07:18','2018-05-27 14:49:15','2',NULL,NULL),(183,25,6,'13.24','Benjamin Alfaro Escobar',NULL,'A. Nancagua','6',NULL,'2018-05-26 17:07:18','2018-05-27 14:48:23','6',NULL,NULL),(184,25,7,'13.44','Eduardo Alvarez Mohr',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-26 17:07:18','2018-05-27 14:49:31','1',NULL,NULL),(185,25,NULL,'DNS','Fabrizio Arias Terrone',NULL,'A. San Ignacio','13',NULL,'2018-05-26 17:07:18','2018-05-27 14:48:25','8',NULL,NULL),(186,26,1,'11.80','Joaquín Alberto Miño Farías',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:03','4',NULL,NULL),(187,26,2,'12.09','Joaquín Alberto Pérez Guajardo',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:04','5',NULL,NULL),(188,26,3,'12.66','Yasser Ismail Llanquinao',NULL,'C. A. Phoenix',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:08','3',NULL,NULL),(189,26,4,'12.97','Martin  Escaida Sandoval',NULL,'A. Francés',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:11','6',NULL,NULL),(190,26,5,'13.42','Max Leonardo Davila Delgado',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:14','7',NULL,NULL),(191,26,6,'13.73','Juan Torres Torres',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:17','2',NULL,NULL),(192,26,7,'14.02','Juan Contreras Contreras',NULL,'C. D. Bernardo Felmer',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:21','8',NULL,NULL),(193,27,1,'5:30.04','Catalina Fernandez Barrientos',NULL,'C. A. Coyhaique',NULL,NULL,'2018-05-26 17:17:52','2018-05-26 17:17:52',NULL,NULL,NULL),(194,27,2,'5:44.47','Dafne  Sandoval   Carrasco',NULL,'C. de Deportes Saavedra',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(195,27,3,'5:55.84','Yarleth Toledo Segovia',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(196,27,4,'5:59.38','Camila  Smith Canovas',NULL,'C. A. Phoenix',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(197,27,5,'6:03.38','Solange Aylin Varas  Jiménez',NULL,'C. Escuela Infantil de Atletism',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(198,27,6,'6:03.49','Valentina Paz López Schalard',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(199,27,7,'7:05.51','Paula Belen Aracena Alvares',NULL,'A. Coquimbo',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(200,28,1,'4:34.78','Brayan Antonio  Jara  Jara',NULL,'C. A. de Los Angeles',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(201,28,2,'4:47.86','Domingo Court Alicera',NULL,'A. Francés',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(202,28,3,'4:49.68','Jose Ignacio Grau Vargas',NULL,'C. A. Hector Neira',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(203,28,4,'4:56.04','Guillermo Nicolás Sarabia Ledez',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(204,28,5,'4:58.63','Cristobal Jimenez Pasten',NULL,'C. D. S. C. San Antonio',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(205,28,6,'4:59.39','Samuel Millao Diaz',NULL,'C. de Atletismo Punta Arenas',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(206,28,7,'5:07.40','Christian  Urrutia Alarcón',NULL,'A. Francés',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(207,28,8,'5:07.54','Miguel Ignacio Acuña Mellado',NULL,'Cadecu Athletic',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(208,28,9,'5:14.36','Ignacio  Valdez Aravena',NULL,'A. de A. Castro',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(209,28,10,'5:17.59','Javier Segura Dos Santos',NULL,'C. A. Alameda Talca',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(210,28,11,'5:20.10','Gonzalo Morales Godoy',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(211,28,12,'5:22.24','Lukas Alfredo Castro Mollo',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(212,28,NULL,'DNS','Nicolas Andres Dinamarca Pinto',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(213,29,1,'12.93','Esperanza Garcia Tapia',NULL,'CDUC',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:09','3',NULL,NULL),(214,29,2,'12.95','Barbara Carrasco Garcia',NULL,'A. Santiago',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:12','5',NULL,NULL),(215,29,3,'13.00','Victoria Rios Castro',NULL,'A. Santiago',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:15','6',NULL,NULL),(216,29,4,'13.18','Gabriela Millaray Zúñiga Olivos',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:17','7',NULL,NULL),(217,29,5,'13.49','Camil Sarai Ponce Márquez',NULL,'Vicente Potrerillos Salinas',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:19','2',NULL,NULL),(218,29,6,'13.61','Carola Scheihing Ballesteros',NULL,'Escuela de Atletismo Osorno',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:22','8',NULL,NULL),(219,29,7,'13.70','Khaterine Hornig Angulo',NULL,'C. A. Gerardo Manzanares',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:25','1',NULL,NULL),(220,29,NULL,'DNS','Claudia Daniela Pimentel Cruz',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:02',NULL,NULL,NULL),(221,30,1,'11.42','Juan Pablo Nordetti Llul',NULL,'CDUC','13',NULL,'2018-05-26 18:14:13','2018-05-26 19:45:56','4',NULL,NULL),(222,30,2,'11.56','Pedro Reyes Parada',NULL,'A. Santiago','13',NULL,'2018-05-26 18:14:13','2018-05-26 19:46:00','3',NULL,NULL),(223,30,3,'11.68','Joaquín Alberto Miño Farías',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 18:14:13','2018-05-26 19:46:26','7',NULL,NULL),(224,30,4,'12.00','Benjamin Rojas krause',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-26 18:14:13','2018-05-26 19:47:48','1',NULL,NULL),(225,30,5,'12.30','Rodrigo Cerda',NULL,'C. D. Pilauco','10',NULL,'2018-05-26 18:14:13','2018-05-26 19:46:53','6',NULL,NULL),(226,30,NULL,'DNS','Luis Ferney Riasco Riasco',NULL,'C. Chuquicamata','2',NULL,'2018-05-26 18:14:13','2018-05-26 19:47:32','',NULL,NULL),(227,30,NULL,'DNS','Andrés Refusta Fuentes',NULL,'CDUC','13',NULL,'2018-05-26 18:14:13','2018-05-26 19:46:56','',NULL,NULL),(228,30,NULL,'DNS','Ignacio Aguayo Cifuentes',NULL,'C. A. Phoenix','9',NULL,'2018-05-26 18:14:13','2018-05-26 19:47:15','',NULL,NULL),(229,31,1,'15.37','Martina Zepeda  Pedemonte',NULL,'A. Atacama','3',NULL,'2018-05-26 18:28:41','2018-05-26 19:49:14','4',NULL,NULL),(230,31,2,'16.56','Nayeli Schwenke Ramirez',NULL,'C. A. Coyhaique','11',NULL,'2018-05-26 18:28:41','2018-05-26 19:49:32','3',NULL,NULL),(231,31,3,'16.83','Nisty Esperanza Araya Saavedra',NULL,'A. Ingles','4',NULL,'2018-05-26 18:28:41','2018-05-26 19:48:33','8',NULL,NULL),(232,31,4,'17.55','Khaterine Hornig Angulo',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-26 18:28:41','2018-05-26 19:49:54','5',NULL,NULL),(233,31,NULL,'DNS','Rocio Barrientos Crispieri',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 18:28:41','2018-05-26 19:50:33','6',NULL,NULL),(234,31,NULL,'DNS','Francisca Cespedes Valenzuela',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 18:28:41','2018-05-26 19:50:35','7',NULL,NULL),(235,31,NULL,'DNS','Amanda Gil Amanda',NULL,'Manquehue','13',NULL,'2018-05-26 18:28:41','2018-05-26 19:48:38','2',NULL,NULL),(236,32,1,'16.29','Mathilde Sandrock Cox',NULL,'Manquehue','13',NULL,'2018-05-26 18:31:34','2018-05-26 19:50:48','2',NULL,NULL),(237,32,2,'16.43','Florencia Ampuero Sanchez',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-26 18:31:34','2018-05-26 19:50:57','4',NULL,NULL),(238,32,3,'16.94','Carola Scheihing Ballesteros',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-26 18:31:34','2018-05-26 19:55:19','8',NULL,NULL),(239,32,4,'17.20','Daniela  Charme  Soto',NULL,'CDUC','10',NULL,'2018-05-26 18:31:34','2018-05-26 19:51:00','7',NULL,NULL),(240,32,5,'19.33','Josefa Valdera Ramos',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 18:31:34','2018-05-26 19:55:26','3',NULL,NULL),(241,32,6,'19.87','Renata Isidora Álvarez Correa',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 18:31:34','2018-05-26 19:51:04','5',NULL,NULL),(242,32,NULL,'DNS','Anthar Gipoulou Pizarro',NULL,'C.D. Windsor School','14',NULL,'2018-05-26 18:31:34','2018-05-26 19:51:23','6',NULL,NULL),(243,33,1,'15.39','Maria Ignacia  Rosales  Aguiler',NULL,'CDUC','13',NULL,'2018-05-26 18:43:30','2018-05-26 19:55:46','4',NULL,NULL),(244,33,NULL,'DQ','Elisa Keitel  Rondon',NULL,'CDUC','13',NULL,'2018-05-26 18:43:30','2018-05-26 19:55:57','-',NULL,NULL),(245,33,NULL,'DNS','Anabela Marisol Lagos Luna',NULL,'C. A. Nacional Iquique','1',NULL,'2018-05-26 18:43:30','2018-05-26 19:56:28','-',NULL,NULL),(246,34,1,'15.38','Nicanor Millar',NULL,'Windsor School','14',NULL,'2018-05-26 18:57:22','2018-05-28 19:57:37','1',NULL,NULL),(247,34,2,'15.42','Lucas Palacios Undurraga',NULL,'Manquehue','13',NULL,'2018-05-26 18:57:22','2018-05-28 19:54:34','3',NULL,NULL),(248,34,3,'15.43','Pedro  Morales Delano',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 18:57:22','2018-05-28 19:59:26','5',NULL,NULL),(249,34,4,'15.86','Diego Gonzalez Martinez',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-26 18:57:22','2018-05-28 19:54:21','6',NULL,NULL),(250,34,5,'16.00','Joaquin Mondaca Fellenberg',NULL,'A. San Ignacio','13',NULL,'2018-05-26 18:57:22','2018-05-28 19:59:47','7',NULL,NULL),(251,34,6,'17.68','Eduardo Rodas Alfaro',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 18:57:22','2018-05-28 19:59:23','2',NULL,NULL),(252,34,7,'17.69','Juan Manuel Espinosa Valenzuela',NULL,'A. San Ignacio','13',NULL,'2018-05-26 18:57:22','2018-05-28 19:59:49','8',NULL,NULL),(253,34,NULL,'DNS','Joaquín Alberto Miño Farías',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 18:57:22','2018-05-28 20:00:10','4',NULL,NULL),(254,35,1,'14.51','Matías Gonzalez Romero',NULL,'Manquehue','13',NULL,'2018-05-26 19:00:46','2018-05-28 19:55:07','6',NULL,NULL),(255,35,2,'14.60','Joel Vallejos Alvarado',NULL,'A. Copiapó','3',NULL,'2018-05-26 19:00:46','2018-05-28 20:01:03','7',NULL,NULL),(256,35,3,'14.62','Benjamin Alonso Gutierrez Nuñez',NULL,'C. Génesis','6',NULL,'2018-05-26 19:00:46','2018-05-28 20:00:23','4',NULL,NULL),(257,35,4,'15.83','Martin Olavarria Jara',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-26 19:00:46','2018-05-28 19:55:21','2',NULL,NULL),(258,35,5,'16.75','Eduardo Alvarez Mohr',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-26 19:00:46','2018-05-28 19:55:17','1',NULL,NULL),(259,35,6,'18.90','Cristoper Colombi Yañez',NULL,'A. Cauquenes','7',NULL,'2018-05-26 19:00:46','2018-05-28 19:58:09','8',NULL,NULL),(260,35,NULL,'DNS','Pedro Irarrazaval Valdes',NULL,'A. Santiago','13',NULL,'2018-05-26 19:00:46','2018-05-28 19:55:14','5',NULL,NULL),(261,35,NULL,'DNS','Sebastían Sotomayor Mestre',NULL,'Manquehue','13',NULL,'2018-05-26 19:00:46','2018-05-28 19:55:11','3',NULL,NULL),(262,36,1,'14.58','Alexander Vega Stamm',NULL,'CDUC','13',NULL,'2018-05-26 19:03:55','2018-05-28 19:55:31','5',NULL,NULL),(263,36,2,'16.08','Pedro Costa Aguirre',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 19:03:55','2018-05-28 19:59:07','6',NULL,NULL),(264,36,3,'16.88','Mauricio Irribarren Poyanopulos',NULL,'Centro Atlético Formativo','15',NULL,'2018-05-26 19:03:55','2018-05-28 20:03:36','4',NULL,NULL),(265,36,4,'17.57','Maximiliano Rosmanich Bravo',NULL,'A. Santiago','13',NULL,'2018-05-26 19:03:55','2018-05-28 19:58:19','8',NULL,NULL),(266,36,NULL,'DNS','Cristobal Bernales Magnere',NULL,'A. Santiago','13',NULL,'2018-05-26 19:03:55','2018-05-28 19:55:39','3',NULL,NULL),(267,36,NULL,'DNS','Santiago Perez Pellegrini',NULL,'A. Santiago','13',NULL,'2018-05-26 19:03:55','2018-05-28 19:55:41','7',NULL,NULL),(268,36,NULL,'DNS','Matias Adrian Tapia Lucero',NULL,'C. A. Nacional Iquique','1',NULL,'2018-05-26 19:03:55','2018-05-28 20:02:46','2',NULL,NULL),(269,36,NULL,'DNS','Diego Ibacache Basaez',NULL,'C. A. Limache','5',NULL,'2018-05-26 19:03:55','2018-05-28 20:02:41','1',NULL,NULL),(270,37,1,'13.96','Martín Saenz  De Santa Maria Jarry',NULL,'CDUC','13',NULL,'2018-05-26 19:17:13','2018-05-28 19:56:35','2',NULL,NULL),(271,37,2,'14.72','Cristobal Victoriano Mora',NULL,'Centro Atlético Formativo','15',NULL,'2018-05-26 19:17:13','2018-05-28 20:03:54','5',NULL,NULL),(328,45,1,'41.58','María Paz Alvarez Gassano',NULL,'Centro Atlético Formativo',NULL,NULL,'2018-05-26 20:02:41','2018-05-26 20:02:47','4',NULL,NULL),(329,45,2,'42.58','Florencia Maria Paz Ortigosa Pe',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 20:02:41','2018-05-26 20:02:50','5',NULL,NULL),(330,45,3,'43.03','Monserrat Ignacia  Salamanca  G',NULL,'C. A. Ñielol',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:02:53','7',NULL,NULL),(331,45,4,'43.48','Elizabeth Arriagada Morales',NULL,'OASSI',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:02:56','3',NULL,NULL),(332,45,5,'43.67','Julieta Zuñiga Tobar',NULL,'OASSI',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:02:57','6',NULL,NULL),(333,45,6,'44.09','Francisca Antonia  Torres  Quin',NULL,'C. A. Ñielol',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:03:00','8',NULL,NULL),(334,45,7,'48.46','Amelia Molinos Rillón',NULL,'CDUC',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:03:02','2',NULL,NULL),(335,45,NULL,'DNS','Arami Fuenzalida Godoy',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:03:04','1',NULL,NULL),(336,46,1,'43.85','Maura  Martinez Mayorga',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:09','3',NULL,NULL),(337,46,2,'45.59','Maria Jesus Infante Cox',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:11','8',NULL,NULL),(338,46,3,'48.69','Josefa Ignacia Ibañez Salinas',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:15','1',NULL,NULL),(339,46,NULL,'DQ','Piera Peña Gambetta',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:27','6',NULL,NULL),(340,46,NULL,'DNS','Victoria Rios Castro',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:17','4',NULL,NULL),(341,46,NULL,'DNS','Anastasia Lamoliatte Ovalle',NULL,'CDUC',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:20','5',NULL,NULL),(342,46,NULL,'DNS','Claudia Daniela Pimentel Cruz',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:22','7',NULL,NULL),(343,46,NULL,'DNS','Moira Alejandra Muller Sandoval',NULL,'C. Nilda Rojas',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:24','2',NULL,NULL),(344,47,1,'45.01','Florencia  Millar Ponce',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:08:50','8',NULL,NULL),(345,47,2,'48.06','Francisca Fabio Sepulveda',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:08:52','6',NULL,NULL),(346,47,3,'48.20','Dafne Anais Reyes',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:08:55','1',NULL,NULL),(347,47,4,'48.24','Magdalena Antonia Gandolfo Almo',NULL,'C. A. O’Higgins',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:08:57','2',NULL,NULL),(348,47,5,'50.41','Gabriela Reyes Barrientos',NULL,'C. A. Hector Neira',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:08:59','7',NULL,NULL),(349,47,NULL,'DNS','Maria del Carmen Guzman Karadim',NULL,'CDUC',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:09:01','4',NULL,NULL),(350,47,NULL,'DNS','Ignacia Mirely Cheipul Cabrera',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:09:04','5',NULL,NULL),(351,47,NULL,'DNS','Tamara Lopez Vera',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:09:08','3',NULL,NULL),(352,48,1,'46.90','Sofía   Sánchez  Acevedo',NULL,'A. Harambeé',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:44','5',NULL,NULL),(353,48,2,'47.82','Natalie Paulina Sepulveda  Delb',NULL,'C. D. San Pablo (Chiguayante)',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:47','8',NULL,NULL),(354,48,3,'48.15','Catalina Andrea Leiva  Bascur',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:50','2',NULL,NULL),(355,48,4,'48.58','Fernanda Saavedra Diaz',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:52','6',NULL,NULL),(356,48,5,'49.57','Renata Álvarez Parraguez',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:55','7',NULL,NULL),(357,48,6,'49.84','Barbara Olivares Escanilla',NULL,'YKA',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:57','3',NULL,NULL),(358,48,NULL,'DNS','Tania Loreto Garcés Schnettler',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:59','4',NULL,NULL),(359,48,NULL,'DNS','Ayleen Amaya Casanova López',NULL,'C. A. O’Higgins',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:12:02','1',NULL,NULL),(360,49,1,'45.89','Valentina  Medina Recabarren',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:43','1',NULL,NULL),(361,49,2,'47.43','Sofia Hernandez Torres',NULL,'Galvarino Riveros Castro',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:45','6',NULL,NULL),(362,49,3,'48.00','Ignacia  Pinto  Parraguez',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:47','5',NULL,NULL),(363,49,4,'49.32','Francisca  Reyes Martinez',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:50','3',NULL,NULL),(364,49,5,'50.69','Rocio Carvajal San Martin',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:52','4',NULL,NULL),(365,49,NULL,'DQ','Franchesca Espinoza Alarcon',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:15:00','7',NULL,NULL),(366,49,NULL,'DNS','Maria Angelica Trujillo Muñoz',NULL,'A. Nancagua',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:55','8',NULL,NULL),(367,49,NULL,'DNS','Cecilia Millaray Mellado Carvaj',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:57','2',NULL,NULL),(368,50,1,'47.88','Sofia Torres Letelier',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:44','4',NULL,NULL),(369,50,2,'48.02','Javiera Nazaret  Barbosa  Milla',NULL,'C. A. Ñielol',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:47','6',NULL,NULL),(370,50,3,'53.51','Javiera Sanchez Caceres',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:49','5',NULL,NULL),(371,50,NULL,'DNS','Constanza Antonia Gamboa Tapia',NULL,'C. A. O’Higgins',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:51','3',NULL,NULL),(372,50,NULL,'DNS','Camila  Toro  Cerda',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:53','7',NULL,NULL),(373,50,NULL,'DNS','Eva Luna Rivera Cardenas',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:55','8',NULL,NULL),(374,50,NULL,'DNS','Carmen Gonzalez Escobar',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:57','2',NULL,NULL),(375,50,NULL,'DNS','Antonia Suerez Escobar',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:18:01','1',NULL,NULL),(376,51,1,'49.75','Sofia Durand Silva',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:02','5',NULL,NULL),(377,51,2,'50.37','Helga Schaffer Almonacid',NULL,'Ulagos Pto.Montt',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:04','8',NULL,NULL),(378,51,3,'52.16','Ignacia Benavides Yevenes',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:07','7',NULL,NULL),(379,51,4,'53.55','Pia Gonzalez Chavez',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:10','3',NULL,NULL),(380,51,NULL,'DNS','Mariela  Cornejo Molina',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:13','4',NULL,NULL),(381,51,NULL,'DNS','Constanza Pineda Campos',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:15','6',NULL,NULL),(382,51,NULL,'DNS','Maria Consuelo Sanchez',NULL,'Ulagos Pto.Montt',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:17','2',NULL,NULL),(383,51,NULL,'DNS','Irina Andrea Toth Mena',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:19','1',NULL,NULL),(384,52,1,'45.34','Nicole Darritchon Lama',NULL,'CDUC',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:23:58','8',NULL,NULL),(385,52,2,'47.81','Antonia Isidora Moya Ortiz',NULL,'C. Galgos Runners Linares',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:00','3',NULL,NULL),(386,52,3,'50.33','Maria Paz Romero Manriquez',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:02','6',NULL,NULL),(387,52,4,'51.70','Syomara Batarce Campos',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:07','4',NULL,NULL),(388,52,5,'53.52','Martina Gomez Valenzuela',NULL,'Academia Iquique Bajo Molle',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:09','1',NULL,NULL),(389,52,6,'53.74','Isidora Saez Alvarez',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:13','5',NULL,NULL),(390,52,7,'53.91','Sara Ramos',NULL,'Iquique',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:15','7',NULL,NULL),(391,52,NULL,'DNS','Esperanza Garcia Tapia',NULL,'CDUC',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:18','2',NULL,NULL),(392,38,1,'37.72','Pedro Roach Matesic',NULL,'CDUC',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:11','6',NULL,NULL),(393,38,2,'38.20','Nicanor Millan Viejo',NULL,'C.D. Windsor School',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:13','2',NULL,NULL),(394,38,3,'39.07','Manuel Gonzalez Mallol',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:15','5',NULL,NULL),(395,38,4,'42.85','Carlos Ibarra Allende',NULL,'C. Liceo de Curicó',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:18','7',NULL,NULL),(396,38,NULL,'DNS','Matias Francisco Salgado Menese',NULL,'C. Nilda Rojas',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:20','4',NULL,NULL),(397,38,NULL,'DNS','Luis Ferney Riasco Riasco',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:22','3',NULL,NULL),(398,38,NULL,'DNS','Pedro Reyes Parada',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:24','8',NULL,NULL),(399,38,NULL,'DNS','Paulo Noemi Zuleta',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:27','1',NULL,NULL),(400,39,1,'38.21','Joaquin Miño',NULL,'C. A. Maristas',NULL,NULL,'2018-05-26 20:31:52','2018-05-26 20:31:59','1',NULL,NULL),(401,39,2,'38.95','Ignacio Aguayo Cifuentes',NULL,'C. A. Phoenix',NULL,NULL,'2018-05-26 20:31:52','2018-05-26 20:32:01','7',NULL,NULL),(402,39,3,'39.86','Felipe Navarro Garrido',NULL,'A. Coquimbo',NULL,NULL,'2018-05-26 20:31:52','2018-05-26 20:32:03','4',NULL,NULL),(403,39,4,'40.96','Felipe Valenzuela León',NULL,'OASSI',NULL,NULL,'2018-05-26 20:31:52','2018-05-26 20:32:05','5',NULL,NULL),(404,39,5,'41.05','Alfredo Vicari Torres',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 20:31:52','2018-05-26 20:32:07','3',NULL,NULL),(405,39,6,'43.02','Yasser Ismail Llanquinao',NULL,'C. A. Phoenix',NULL,NULL,'2018-05-26 20:31:53','2018-05-26 20:32:09','2',NULL,NULL),(406,39,NULL,'DQ','Benjamin Rojas krause',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 20:31:53','2018-05-26 20:32:13','6',NULL,NULL),(407,39,NULL,'DNS','Antonio Santana Muñoz',NULL,'A. de A. Castro',NULL,NULL,'2018-05-26 20:31:53','2018-05-26 20:32:11','8',NULL,NULL),(408,40,1,'39.42','Rodrigo Manriquez Lujan',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','7.0',NULL,NULL),(409,40,2,'40.51','Joaquín Alberto Pérez Guajardo',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','6.0',NULL,NULL),(410,40,3,'43.19','Joaquin Muñoz Robles',NULL,'C. de Atletismo Juan Silva de L',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','5.0',NULL,NULL),(411,40,4,'43.32','Francisco Javier Chiuminatto Mu',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','2.0',NULL,NULL),(412,40,5,'44.00','Francisco Barrios Lara',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','3.0',NULL,NULL),(413,40,6,'44.65','Sebastian Bartesaghi Viola',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','8.0',NULL,NULL),(414,40,7,'45.79','Felipe Sepulveda',NULL,'UTA',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','1.0',NULL,NULL),(415,40,NULL,'DNS','Bastian Canales Valenzuela',NULL,'C. A. Alameda Talca',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','4.0',NULL,NULL),(416,41,1,'40.47','Benjamin Miranda',NULL,'C. A. Genesis',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:02','1',NULL,NULL),(417,41,2,'41.50','Harumatsu  Kanda',NULL,'A. Harambeé',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:05','4',NULL,NULL),(418,41,3,'41.98','Martin  Escaida Sandoval',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:07','2',NULL,NULL),(419,41,4,'42.05','Ricardo Fenandez Arce',NULL,'C. de Atletismo Juan Silva de L',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:09','5',NULL,NULL),(420,41,5,'42.41','Pedro Javier Veliz Caro',NULL,'A. Coquimbo',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:11','3',NULL,NULL),(421,41,6,'43.01','Gabriel Abid Gallardo Marin',NULL,'A. Coquimbo',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:13','8',NULL,NULL),(422,41,NULL,'DNS','Damian Godoy Poblete',NULL,'A. Nancagua',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:15','6',NULL,NULL),(423,41,NULL,'DNS','Matias  Peña Ortega',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:18','7',NULL,NULL),(424,42,1,'40.82','Alexis Macaya Arellano',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:31','2',NULL,NULL),(425,42,2,'42.46','Lucas  Díaz  Hernandez',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:33','3',NULL,NULL),(426,42,3,'42.47','Pablo Moya Guztamente',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:37','8',NULL,NULL),(427,42,4,'43.28','Joaquin Irureta Rios',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:39','4',NULL,NULL),(428,42,5,'43.76','Joaquin Vicente Lopehandia Zepe',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:42','6',NULL,NULL),(429,42,NULL,'DNS','Juan Perez Fuentes',NULL,'A. Nancagua',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:45','5',NULL,NULL),(430,42,NULL,'DNS','Pedro Krebs Saez',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:50','7',NULL,NULL),(431,43,1,'40.49','Jason Fabian Santander Riffo',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:08','4',NULL,NULL),(432,43,2,'44.39','Diego Rivera Escobar',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:10','7',NULL,NULL),(433,43,3,'45.81','Juan Torres Torres',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:12','3',NULL,NULL),(434,43,NULL,'DQ','Cristoper Colombi Yañez',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:21','5',NULL,NULL),(435,43,NULL,'DNS','Diego Hormazabal Torres',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:14','6',NULL,NULL),(436,43,NULL,'DNS','Salvador La Corte Castro',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:16','8',NULL,NULL),(437,43,NULL,'DNS','Gabriel Fuentes Montes',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:18','2',NULL,NULL),(438,44,1,'36.73','Juan Pablo Nordetti Llul',NULL,'CDUC',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:50:59','4',NULL,NULL),(439,44,2,'42.24','Pablo Levil Cantergiani',NULL,'YKA',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:02','3',NULL,NULL),(440,44,3,'43.38','Martin Perello Alvear',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:05','5',NULL,NULL),(441,44,NULL,'DNS','David Hernández Amador',NULL,'C. A. Limache',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:07','8',NULL,NULL),(442,44,NULL,'DNS','Andrés Refusta Fuentes',NULL,'CDUC',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:10','6',NULL,NULL),(443,44,NULL,'DNS','Clemente Ruiz Bianchini',NULL,'CDUC',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:12','7',NULL,NULL),(444,44,NULL,'DNS','Martín Steffens',NULL,'CDUC',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:14','2',NULL,NULL),(445,53,1,'15.09','Martina Zepeda  Pedemonte',NULL,'A. Atacama',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:23','4',NULL,NULL),(446,53,2,'16.02','Mathilde Sandrock Cox',NULL,'Manquehue',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:25','5',NULL,NULL),(447,53,3,'16.13','Nisty Esperanza Araya Saavedra',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:27','7',NULL,NULL),(448,53,4,'16.18','Florencia Ampuero Sanchez',NULL,'C. A. Gerardo Manzanares',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:29','3',NULL,NULL),(449,53,5,'16.66','Carola Scheihing Ballesteros',NULL,'Escuela de Atletismo Osorno',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:31','8',NULL,NULL),(450,53,6,'16.75','Nayeli Schwenke Ramirez',NULL,'C. A. Coyhaique',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:34','6',NULL,NULL),(451,53,7,'17.19','Khaterine Hornig Angulo',NULL,'C. A. Gerardo Manzanares',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:36','1',NULL,NULL),(452,53,8,'17.23','Daniela  Charme  Soto',NULL,'CDUC',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:38','2',NULL,NULL),(453,54,1,'14.29','Alexander Vega Stamm',NULL,'CDUC',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','5.0',NULL,NULL),(454,54,2,'14.44','Benjamin Alonso Gutierrez Nuñez',NULL,'C. Génesis',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','6.0',NULL,NULL),(455,54,3,'14.57','Matiás Gonzalez Romero',NULL,'Manquehue',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','4.0',NULL,NULL),(456,54,4,'14.60','Joel Vallejos Alvarado',NULL,'A. Copiapó',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','3.0',NULL,NULL),(457,54,5,'14.89','Pedro  Morales Delano',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','2.0',NULL,NULL),(458,54,6,'15.19','Nicanor Millar',NULL,'Windsor School',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','7.0',NULL,NULL),(459,54,7,'15.49','Lucas Palacios Undurraga',NULL,'Manquehue',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','8.0',NULL,NULL),(460,54,8,'15.79','Martin Olavarria Jara',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','1.0',NULL,NULL),(461,55,1,'3:01.61','Isidora Rojas Mancilla',NULL,'C. D. Israel Sáez',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(462,55,2,'3:04.85','María Paz Alvarez Gassano',NULL,'Centro Atlético Formativo',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(463,55,3,'3:04.93','Paulina Hernández Vera',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(464,55,4,'3:05.22','Lisette Ureta  Farias',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(465,55,5,'3:09.48','Ignacia Alleguillos Ibarra',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(466,55,6,'3:13.08','Dafne Espinosa Alarcón',NULL,'C. San Ambrosio Linares',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(467,55,7,'3:13.74','Victoria Saldivia Pavez',NULL,'C. de Atletismo Punta Arenas',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(468,55,8,'3:16.16','Martina Vidal Guzman',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(469,55,9,'3:16.30','Martina Pradenas Alvarez',NULL,'C. D. Israel Sáez',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(470,55,10,'3:16.52','Francisca  Contreras Remolcoy',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(471,55,11,'3:17.38','Dafne  Sandoval   Carrasco',NULL,'C. de Deportes Saavedra',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(472,55,12,'3:18.12','Giulianna Catalina Retamales Ba',NULL,'C. Galgos Runners Linares',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(473,55,13,'3:22.17','Antonia Belen Rojas Toro',NULL,'C. D. A. Sporting Coquimbo',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(474,55,14,'3:33.11','Hellen Sharlotte Rubio Figueroa',NULL,'C. A. Tres Runners',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(475,55,15,'3:33.32','Rebeca Daniela Morales Gutiérre',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(476,55,16,'3:52.56','Martina Gomez Valenzuela',NULL,'Academia Iquique Bajo Molle',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(477,56,1,'3:15.75','Emilia Salas Cárdenas',NULL,'Escuela de Atletismo Osorno',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(478,56,2,'3:16.97','Martina Pacheco Jeria',NULL,'C. Pedro Atenas de Casablanca',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(479,56,3,'3:25.13','Constanza Ortega Norambuena',NULL,'C. A. Parral',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(480,56,4,'3:29.63','Valentina  Medina Recabarren',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(481,56,5,'3:30.85','Laura Sepulveda Galvez',NULL,'A. Nancagua',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(482,56,6,'3:34.15','Genesis Antonella Perez Godoy',NULL,'C. A. Huasco',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(483,56,7,'3:40.31','Valentina Antonia  Robin  Cruza',NULL,'C. A. Ñielol',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(484,56,8,'3:42.58','Florencia  Murgas Huerta',NULL,'C.D.S.C San Antonio',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(485,56,9,'3:45.98','Helga Schaffer Almonacid',NULL,'Ulagos Pto.Montt',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(486,56,10,'3:51.27','Valentina Ignacia Barra Burgos',NULL,'C. Génesis',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(487,56,11,'3:52.21','Sara Ramos',NULL,'A.Iquique (INVITADO)',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(488,56,12,'4:01.99','Josefa Ignacia Bustamante Donoso',NULL,'C.Génesis',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(489,56,13,'4:02.07','Fabiana Elizabeth Olmos Neira',NULL,'C.A.O\"Higgins',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(490,56,14,'4:19.27','Josefa Pizarro Blamey',NULL,'C.D.S.C San Antonio',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(491,58,1,'53.08',NULL,NULL,'Osorno',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:20','3',NULL,NULL),(492,58,2,'53.32',NULL,NULL,'A. Oassi',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:22','1',NULL,NULL),(493,58,3,'53.60',NULL,NULL,'A. Frances',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:24','2',NULL,NULL),(494,58,4,'53.82',NULL,NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:26','7',NULL,NULL),(495,58,5,'54.54',NULL,NULL,'A. Ingles',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:29','6',NULL,NULL),(496,58,6,'54.58',NULL,NULL,'Maristas de Curico',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:31','5',NULL,NULL),(497,58,7,'54.60',NULL,NULL,'Ñielol',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:33','4',NULL,NULL),(498,58,8,'58.33',NULL,NULL,'Dep. Escuela De Atlet. Osorno',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:35','8',NULL,NULL),(499,59,1,'47.15',NULL,NULL,'Genesis',NULL,NULL,'2018-05-26 22:11:55','2018-05-26 22:12:03','4',NULL,NULL),(500,59,2,'47.96',NULL,NULL,'Region de los Lagos',NULL,NULL,'2018-05-26 22:11:55','2018-05-26 22:12:05','5',NULL,NULL),(501,59,3,'48.67',NULL,NULL,'Maristas Curico',NULL,NULL,'2018-05-26 22:11:55','2018-05-26 22:12:08','3',NULL,NULL),(502,59,4,'49.58',NULL,NULL,'A. Oassi',NULL,NULL,'2018-05-26 22:11:55','2018-05-26 22:12:10','6',NULL,NULL),(503,59,5,'52.88',NULL,NULL,'A. Liceo',NULL,NULL,'2018-05-26 22:11:55','2018-05-26 22:12:13','2',NULL,NULL),(504,57,1,'2:44.65','Matias Obando Arismendi',NULL,'C. D. Israel Sáez',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(505,57,2,'2:47.75','Fabrizzio Andrés Bertuzzi Covil',NULL,'C. A. Nahuelbuta Angol',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(506,57,3,'2:47.84','Matias  Gomez Torres',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(507,57,4,'2:47.87','Hernán  Carreño Arévalo',NULL,'A. Francés',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(508,57,5,'2:51.74','Benjamin Andrade',NULL,'Ñielol',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(509,57,6,'2:52.71','Samuel Millao Diaz',NULL,'C. de Atletismo Punta Arenas',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(510,57,7,'2:53.76','David Ariel Piñones Cuevas',NULL,'C. D. A. Sporting Coquimbo',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(511,57,8,'2:54.60','Natanael Salas Salas',NULL,'Cadecu Athletic',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(512,57,9,'2:57.39','Guillermo Nicolás Sarabia Ledezma',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(513,57,10,'2:57.79','Dario Curiqueo',NULL,'Freire',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(514,57,11,'2:58.36','Ignacio  Valdez Aravena',NULL,'A. de A. Castro',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(515,57,12,'2:59.22','Joseph Vilches Ampuero',NULL,'C. Pedro Atenas de Casablanca',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(516,57,13,'3:00.18','Sebastian  Sanhueza  Acuña',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(517,57,14,'3:04.23','Fernando Fritz Berrios',NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(518,57,15,'3:32.00','Rodrigo Alonso Pino Moreno',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(519,60,1,'2:52.69','Benjamin Alonso Palacios Quezad',NULL,'C. A. San Nicolas',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(520,60,2,'2:56.47','Pablo Andres Cabezas Cardenas',NULL,'Ulagos Pto.Montt',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(521,60,3,'2:56.64','Benjamin Bustamante Concha',NULL,'C. A. Parral',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(522,60,4,'2:57.17','Matías Ignacio Ubeda  Muñoz',NULL,'Seven Runners Viña',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(523,60,5,'2:57.46','Juan Ramos Brissio',NULL,'A. Caleu',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(524,60,6,'2:59.20','Marcelo Cruz Andrade',NULL,'A. Caleu',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(525,60,7,'3:00.09','Diego Rivera Escobar',NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(526,60,8,'3:00.10','Cristopher Daniel Montecinos Ál',NULL,'Seven Runners Viña',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(527,60,9,'3:00.13','Tomas Medel Hidalgo',NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(528,60,10,'3:01.32','Nicolás  Poblete Landry',NULL,'A. Francés',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(529,60,11,'3:01.51','Angelo Benjamin  Quezada Parra',NULL,'C. A. San Nicolas',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(530,60,12,'3:02.00','Benjamin  Campos  López',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(531,60,13,'3:06.88','Lukas Alfredo Castro Mollo',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(532,60,14,'3:08.12','Joaquin Muñoz Robles',NULL,'C. de Atletismo Juan Silva de L',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(533,60,15,'3:10.09','Nicolas Andres Dinamarca Pinto',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(534,60,16,'3:13.71','Martin Concha Brogle',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(535,61,1,'2:56.09','Maximiliano Torres Lizana',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(536,61,2,'2:56.18','Lucas Antonio Garin Minetti',NULL,'C. Génesis',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(537,61,3,'3:03.20','Benjamin Rojas Sayes',NULL,'C. Liceo de Curicó',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(538,61,4,'3:05.78','Tomas Martinez Palacios',NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(539,61,5,'3:06.27','Elias Jose Acevedo Copara',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(540,61,6,'3:08.36','Justin Lemus Lizardi',NULL,'C. D. S. C. San Antonio',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(541,61,7,'3:09.21','Matias Ortega Vargas',NULL,'Ulagos Pto.Montt',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(542,61,8,'3:09.65','Jose Poblete Campos',NULL,'A. Nancagua',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(543,61,9,'3:12.83','Vicente Antonio Contreras Fuentes',NULL,'C. A. Huasco',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(544,61,10,'3:13.99','Benjamin Paiva Ferrada',NULL,'C. A. Alameda Talca',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(545,61,11,'3:14.79','Matias Gil Lizana',NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(546,61,12,'3:26.67','Eduardo Astorga Diaz',NULL,'C. Liceo de Curicó',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(547,62,1,'14.79 (875)','Manuel Vasquez',NULL,'C. D. Pilauco','10',NULL,'2018-05-27 13:15:31','2018-05-27 13:21:52','8',NULL,NULL),(548,62,2,'14.95 (856)','Eduardo Camp Summerset',NULL,'CAF Arica','15',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:04','3',NULL,NULL),(549,62,3,'15.46 (795)','Adan Puel',NULL,'A. Ñielol','9',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:14','2',NULL,NULL),(550,62,4,'16.21 (709)','Pablo Rojas Muñoz',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:29','7',NULL,NULL),(551,62,5,'16.48 (680)','Mauricio Irribarren Poyanopulos',NULL,'CAF Arica','15',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:37','5',NULL,NULL),(552,62,6,'17.71 (552)','Benjamin Gonzalez Olguin',NULL,'A. Nancagua','6',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:49','6',NULL,NULL),(553,62,7,'18.18 (507)','Benjamin Alvarado Olmi',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:56','4',NULL,NULL),(554,62,NULL,'DNS','Santiago Salinas Cabrera',NULL,'A. Santiago','13',NULL,'2018-05-27 13:15:31','2018-05-27 13:18:24',NULL,NULL,NULL),(555,63,1,'26:06.36','Agustín Silva Ocampo',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-27 14:03:08','2018-05-27 14:07:54',NULL,NULL,NULL),(556,63,2,'26:09.17','Luis Navarrete Contreras',NULL,'A. Pitrufquém','9',NULL,'2018-05-27 14:03:08','2018-05-27 14:08:07',NULL,NULL,NULL),(557,63,3,'32:03.66','Enzo Nuñez Valdivia',NULL,'C. D. Trotamundos','15',NULL,'2018-05-27 14:03:08','2018-05-27 14:08:16',NULL,NULL,NULL),(558,63,4,'39:24.12','Ignacio Cáceres Painean',NULL,'C. D. Freire','9',NULL,'2018-05-27 14:03:08','2018-05-27 14:08:18',NULL,NULL,NULL),(559,64,1,'47.75','Arami Fuenzalida Godoy',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-27 14:35:12','2018-05-27 15:26:33','4',NULL,NULL),(560,64,2,'49.21','Florencia Maria Paz Ortigosa Pe',NULL,'C. D. A. Coronel','8',NULL,'2018-05-27 14:35:12','2018-05-27 15:27:04','5',NULL,NULL),(561,64,3,'49.29','Matilde Ruiz Valle',NULL,'CDUC','13',NULL,'2018-05-27 14:35:12','2018-05-27 15:24:57','6',NULL,NULL),(562,64,4,'52.09','Florencia Ampuero Sanchez',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-27 14:35:12','2018-05-27 15:27:48','8',NULL,NULL),(563,64,5,'52.38','Nayeli Schwenke Ramirez',NULL,'C. A. Coyhaique','11',NULL,'2018-05-27 14:35:12','2018-05-27 15:27:31','2',NULL,NULL),(564,64,6,'54.04','Yarleth Toledo Segovia',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-27 14:35:12','2018-05-27 15:26:37','3',NULL,NULL),(565,64,NULL,'DNF','Martina Hernandez Krumn',NULL,'OASSI','13',NULL,'2018-05-27 14:35:12','2018-05-27 15:25:04','7',NULL,NULL),(566,65,1,'49.36','Nisty Esperanza Araya Saavedra',NULL,'A. Ingles','4',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:16','2',NULL,NULL),(567,65,2,'52.96','Magdalena Carbone Shellman',NULL,'CDUC','13',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:20','6',NULL,NULL),(568,65,3,'53.78','Javiera Navarrete Soto',NULL,'CDUC','13',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:23','3',NULL,NULL),(569,65,4,'54.10','Josefa Navarrete Soto',NULL,'CDUC','13',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:27','5',NULL,NULL),(570,65,5,'55.52','Amanda Rojas Castillo',NULL,'A. Punta Arenas','12',NULL,'2018-05-27 14:40:51','2018-05-27 15:26:16','4',NULL,NULL),(571,65,NULL,'DNS','Josefina Ferreti Contreras',NULL,'CDUC','13',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:42','7',NULL,NULL),(572,65,NULL,'DNS','Ignacia Benavides Yevenes',NULL,'A. Estudiante','13',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:45','8',NULL,NULL),(573,66,1,'40.69','Nicanor Millan Viejo',NULL,'C.D. Windsor School','14',NULL,'2018-05-27 15:07:33','2018-05-27 15:29:49','4',NULL,NULL),(574,66,2,'41.39','Alexander Vega Stamm',NULL,'CDUC','13',NULL,'2018-05-27 15:07:33','2018-05-27 15:28:30','3',NULL,NULL),(575,66,3,'41.66','Benjamin Alonso Gutierrez Nuñez',NULL,'C. Génesis','6',NULL,'2018-05-27 15:07:33','2018-05-27 15:29:16','6',NULL,NULL),(576,66,4,'43.78','Joel Vallejos Alvarado',NULL,'A. Copiapó','3',NULL,'2018-05-27 15:07:33','2018-05-27 15:28:36','8',NULL,NULL),(577,66,5,'43.85','Diego Gonzalez Martinez',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-27 15:07:33','2018-05-27 15:29:30','1',NULL,NULL),(578,66,6,'45.46','Joaquin Mondaca Fellenberg',NULL,'A. San Ignacio','13',NULL,'2018-05-27 15:07:33','2018-05-27 15:28:39','2',NULL,NULL),(579,66,7,'45.89','Javier Ratto Escobar',NULL,'A. Santiago','13',NULL,'2018-05-27 15:07:33','2018-05-27 15:28:43','5',NULL,NULL),(580,66,8,'49.46','Pablo Galan Ortega',NULL,'CDUC','13',NULL,'2018-05-27 15:07:33','2018-05-27 15:28:47','7',NULL,NULL),(600,67,1,'10:46.73','Catalina Fernandez Barrientos','-','C. A. Coyhaique','11',NULL,'2018-05-27 17:22:39','2018-05-28 20:30:29',NULL,NULL,NULL),(601,67,2,'10:51.15','Lisette Ureta  Farias','-','C. A. Pacífico','5',NULL,'2018-05-27 17:22:39','2018-05-28 20:28:19',NULL,NULL,NULL),(602,67,3,'10:55.48','Isidora Rojas Mancilla','-','C. D. Israel Sáez','14',NULL,'2018-05-27 17:22:39','2018-05-28 20:28:30',NULL,NULL,NULL),(603,67,4,'10:55.60','Paulina Hernández Vera','-','C. A. LEA','12',NULL,'2018-05-27 17:22:39','2018-05-28 20:30:26',NULL,NULL,NULL),(604,67,5,'11:27.10','Emilia Salas Cárdenas','-','Escuela de Atletismo Osorno','10',NULL,'2018-05-27 17:22:39','2018-05-28 20:28:35',NULL,NULL,NULL),(605,67,6,'11:36.20','Martina Pradenas Alvarez','-','C. D. Israel Sáez','14',NULL,'2018-05-27 17:22:39','2018-05-28 20:29:55',NULL,NULL,NULL),(606,67,7,'11:41.08','Dafne Espinosa Alarcón','-','C. San Ambrosio Linares','7',NULL,'2018-05-27 17:22:39','2018-05-28 20:30:40',NULL,NULL,NULL),(607,67,8,'11:45.33','Martina Pacheco Jeria','-','C. Pedro Atenas de Casablanca','',NULL,'2018-05-27 17:22:39','2018-05-28 20:29:08',NULL,NULL,NULL),(608,67,9,'11:48.33','Martina Vidal Guzman','-','C. A. Puerto Sur','10',NULL,'2018-05-27 17:22:39','2018-05-28 20:28:44',NULL,NULL,NULL),(609,67,10,'11:53.12','Laura Sepulveda Galvez','-','A. Nancagua','--',NULL,'2018-05-27 17:22:39','2018-05-27 17:22:39',NULL,NULL,NULL),(610,67,11,'11:59.02','Francisca  Contreras Remolcoy','-','C. A. LEA','12',NULL,'2018-05-27 17:22:39','2018-05-28 20:30:22',NULL,NULL,NULL),(611,67,12,'12:02.90','Hellen Sharlotte Rubio Figueroa','-','C. A. Tres Runners','--',NULL,'2018-05-27 17:22:39','2018-05-27 17:22:39',NULL,NULL,NULL),(612,67,13,'12:04.77','Camila  Smith Canovas','-','C. A. Phoenix','9',NULL,'2018-05-27 17:22:39','2018-05-28 20:29:14',NULL,NULL,NULL),(613,67,14,'12:15.34','Constanza Ortega Norambuena','-','C. A. Parral','7',NULL,'2018-05-27 17:22:39','2018-05-28 20:31:14',NULL,NULL,NULL),(614,67,15,'12:34.73','Genesis Antonella Perez Godoy','-','C. A. Huasco','--',NULL,'2018-05-27 17:22:39','2018-05-27 17:22:39',NULL,NULL,NULL),(615,67,16,'12:35.96','Valentina Paz López Schalard','-','C. Chuquicamata','--',NULL,'2018-05-27 17:22:39','2018-05-27 17:22:39',NULL,NULL,NULL),(616,67,17,'15:14.35','Valentina Ignacia Barra Burgos','-','C. Génesis','6',NULL,'2018-05-27 17:22:39','2018-05-28 20:29:47',NULL,NULL,NULL),(617,67,99,'DNF','Sofia Cuevas Muñoz','-','A. Francés','13',NULL,'2018-05-27 17:22:39','2018-05-28 20:28:52',NULL,NULL,NULL),(618,68,1,'09:24.85','Brayan Antonio  Jara  Jara',NULL,'C. A. de Los Angeles','8',NULL,'2018-05-27 17:27:12','2018-05-28 20:16:59',NULL,NULL,NULL),(619,68,2,'09:26.01','Sebastian Mauricio Urra Calquin',NULL,'YKA','13',NULL,'2018-05-27 17:27:12','2018-05-28 20:12:10',NULL,NULL,NULL),(620,68,3,'09:44.73','Matin Obando Arismendi',NULL,'C. D. Israel Sáez','14',NULL,'2018-05-27 17:27:12','2018-05-28 20:22:08',NULL,NULL,NULL),(621,68,4,'09:51.56','Domingo Court Alicera',NULL,'A. Francés','13',NULL,'2018-05-27 17:27:12','2018-05-28 20:11:05',NULL,NULL,NULL),(622,68,5,'10:06.85','Jose Ignacio Grau Vargas',NULL,'C. A. Hector Neira','10',NULL,'2018-05-27 17:27:12','2018-05-28 20:25:34',NULL,NULL,NULL),(623,68,6,'10:08.69','Matias  Gomez Torres',NULL,'C. A. LEA','12',NULL,'2018-05-27 17:27:12','2018-05-28 20:14:02',NULL,NULL,NULL),(624,68,7,'10:15.97','Hernán  Carreño Arévalo',NULL,'A. Francés','13',NULL,'2018-05-27 17:27:12','2018-05-28 20:11:10',NULL,NULL,NULL),(625,68,8,'10:16.49','Miguel Ignacio Acuña Mellado',NULL,'Cadecu Athletic','8',NULL,'2018-05-27 17:27:12','2018-05-28 20:23:34',NULL,NULL,NULL),(626,68,9,'10:28.92','Nataniel Salas Salas',NULL,'Cadecu Athletic','8',NULL,'2018-05-27 17:27:12','2018-05-28 20:23:36',NULL,NULL,NULL),(627,68,10,'10:38.81','Benjamin Bustamante Concha',NULL,'C. A. Parral','7',NULL,'2018-05-27 17:27:12','2018-05-28 20:16:17',NULL,NULL,NULL),(628,68,11,'10:49.06','Javier Segura Dos Santos',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-27 17:27:12','2018-05-28 20:16:12',NULL,NULL,NULL),(629,68,12,'10:50.65','Angelo Benjamin  Quezada Parra',NULL,'C. A. San Nicolas','8',NULL,'2018-05-27 17:27:12','2018-05-28 20:27:51',NULL,NULL,NULL),(630,68,13,'11:09.44','Martin Concha Brogle',NULL,'A. San Ignacio','13',NULL,'2018-05-27 17:27:12','2018-05-28 20:24:39',NULL,NULL,NULL),(631,68,14,'11:24.72','Sebastian  Sanhueza  Acuña',NULL,'C. A. Pacífico','5',NULL,'2018-05-27 17:27:12','2018-05-28 20:16:07',NULL,NULL,NULL),(632,69,1,'10:19.70','Benjamin Andrade',NULL,'Ñielol','9',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:39',NULL,NULL,NULL),(633,69,2,'10:23.41','Cristobal Jimenez Pasten',NULL,'C. D. S. C. San Antonio','5',NULL,'2018-05-27 17:45:48','2018-05-28 20:17:54',NULL,NULL,NULL),(634,69,3,'10:26.66','Marcelo Cruz Andrade',NULL,'A. Caleu','13',NULL,'2018-05-27 17:45:48','2018-05-28 20:22:36',NULL,NULL,NULL),(635,69,4,'10:34.26','Elias Jose Acevedo Copara',NULL,'C. A. Tamarugo','1',NULL,'2018-05-27 17:45:48','2018-05-28 20:25:06',NULL,NULL,NULL),(636,69,5,'10:34.80','Fernando Fritz Berrios',NULL,'A. Santiago','13',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:36',NULL,NULL,NULL),(637,69,6,'10:36.30','Matías Ignacio Ubeda  Muñoz',NULL,'Seven Runners Viña','5',NULL,'2018-05-27 17:45:48','2018-05-28 20:19:07',NULL,NULL,NULL),(638,69,7,'10:53.91','Jose Poblete Campos',NULL,'A. Nancagua','6',NULL,'2018-05-27 17:45:48','2018-05-28 20:19:09',NULL,NULL,NULL),(639,69,8,'11:05.14','Lucas Antonio Garin Minetti',NULL,'C. Génesis','6',NULL,'2018-05-27 17:45:48','2018-05-28 20:18:25',NULL,NULL,NULL),(640,69,9,'11:06.29','Cristian Urrutia',NULL,'A. Francés','13',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:29',NULL,NULL,NULL),(641,69,10,'11:08.46','Cristopher Daniel Montecinos Ál',NULL,'Seven Runners Viña','5',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:31',NULL,NULL,NULL),(642,69,11,'11:15.10','Pablo Andres Cabezas Cardenas',NULL,'Ulagos Pto.Montt','10',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:25',NULL,NULL,NULL),(643,69,12,'11:15.28','Juan Ramos Brissio',NULL,'A. Caleu','13',NULL,'2018-05-27 17:45:48','2018-05-28 20:22:32',NULL,NULL,NULL),(644,69,13,'11:16.12','Matias Ortega Vargas',NULL,'Ulagos Pto.Montt','10',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:21',NULL,NULL,NULL),(645,69,14,'11:18.11','Justin Lemus Lizardi',NULL,'C. D. S. C. San Antonio','5',NULL,'2018-05-27 17:45:48','2018-05-28 20:19:14',NULL,NULL,NULL),(646,69,15,'11:24.36','Nicolás  Poblete Landry',NULL,'A. Francés','13',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:19',NULL,NULL,NULL),(647,69,16,'11:24.60','Vicente Antonio Contreras Fuent',NULL,'C. A. Huasco','3',NULL,'2018-05-27 17:45:48','2018-05-28 20:21:12',NULL,NULL,NULL),(648,70,1,'28.47 (594) = 2.559.-','Cristianne Neumann',NULL,'C. D. Pilauco','10',NULL,'2018-05-27 17:49:12','2018-05-28 20:10:16','2',NULL,NULL),(649,70,2,'28.60 (584) = 3.388.-','Agustina Cruz',NULL,'CDUC','13',NULL,'2018-05-27 17:49:12','2018-05-28 20:06:18','7',NULL,NULL),(650,70,3,'28.95 (558) = 2.651.-','Maria Squella Contardo',NULL,'CDUC','13',NULL,'2018-05-27 17:49:12','2018-05-28 20:06:20','3',NULL,NULL),(651,70,4,'29.29 (533) = 2.433.-','Millaray Mellado',NULL,'A. Ingles','4',NULL,'2018-05-27 17:49:12','2018-05-28 20:07:28','5',NULL,NULL),(652,70,5,'29.62 (509) = 2.243.-','Romina Delgado',NULL,'C. Liceo de Curicó','7',NULL,'2018-05-27 17:49:12','2018-05-28 20:07:10','4',NULL,NULL),(653,70,6,'29.86 (492) = 1.956.-','Laura Bustamante González',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-27 17:49:12','2018-05-28 20:09:57','6',NULL,NULL),(654,70,7,'32.34 (331) = 1.407.-','Emilia Alejandra Cabrera Valenz',NULL,'C. Manquemávida de Santa Cruz','6',NULL,'2018-05-27 17:49:12','2018-05-28 20:09:54','8',NULL,NULL),(655,70,8,'34.09 (235) = 1.238.-','Aylimm Muñoz Diaz',NULL,'A. de A. Castro','10',NULL,'2018-05-27 17:49:12','2018-05-28 20:06:29','1',NULL,NULL),(656,71,1,'1:53.33',NULL,NULL,'Región de los Lagos','10',NULL,'2018-05-27 17:52:47','2018-05-27 18:02:11','5',NULL,NULL),(657,71,2,'1:53.75',NULL,NULL,'OASSI','13',NULL,'2018-05-27 17:52:47','2018-05-27 18:01:22','2',NULL,NULL),(658,71,3,'1:54.13',NULL,NULL,'C. A. Ñielol','9',NULL,'2018-05-27 17:52:47','2018-05-27 18:01:55','7',NULL,NULL),(659,71,4,'1:54.75',NULL,NULL,'A. Francés','13',NULL,'2018-05-27 17:52:47','2018-05-27 18:00:39','4',NULL,NULL),(660,71,5,'1:59.25',NULL,NULL,'A. Ingles','4',NULL,'2018-05-27 17:52:47','2018-05-27 17:59:58','3',NULL,NULL),(661,71,6,'1:59.73',NULL,NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-27 17:52:47','2018-05-27 18:00:36','1',NULL,NULL),(662,71,7,'2:00.37',NULL,NULL,'A. Santiago','13',NULL,'2018-05-27 17:52:47','2018-05-27 17:59:55','6',NULL,NULL),(663,72,1,'1:40.69',NULL,NULL,'C. Génesis','6',NULL,'2018-05-27 17:57:27','2018-05-27 18:03:33','5',NULL,NULL),(664,72,2,'1:42.32',NULL,NULL,'Región de los Lagos','10',NULL,'2018-05-27 17:57:27','2018-05-27 18:03:01','3',NULL,NULL),(665,72,3,'1:44.66',NULL,NULL,'C. A. Puerto Sur','10',NULL,'2018-05-27 17:57:27','2018-05-27 18:04:00','6',NULL,NULL),(666,72,4,'1:45.71',NULL,NULL,'OASSI','13',NULL,'2018-05-27 17:57:27','2018-05-27 18:02:58','2',NULL,NULL),(667,72,5,'1:58.49',NULL,NULL,'C. A. Tamarugo','1',NULL,'2018-05-27 17:57:27','2018-05-27 18:04:29','4',NULL,NULL),(669,73,1,'48:08.89','CARLOS BAEZA','2005','SSCC ALAMEDA','13',NULL,'2018-08-03 19:19:03','2018-08-05 14:50:23','1',NULL,''),(689,75,99,'DNS','RODRIGO MANRÍQUEZ','2004.0','COLEGIO SAN FRANCISCO JAVIER DE HUECHURABA','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:48:52',NULL,NULL,NULL),(690,75,99,'DNS','CRISTIÁN ROJAS','2004.0','ALONSO DE ERCILLA','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:48:57',NULL,NULL,NULL),(691,75,4,'2:19.19','FRANCISCO ERRAZURIZ LOHMANN','2004.0','COLEGIO CUMBRES','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:48:47',NULL,NULL,NULL),(692,75,6,'2:19.75','FERNANDO FRITZ','2004.0','MANQUECURA','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:52:23',NULL,NULL,NULL),(693,75,1,'2:12.23','CLEMENTE ATRIA','2004.0','SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:48:44',NULL,NULL,NULL),(694,75,88,'DNF','BENJAMIN GUERRERO GUAICO','2004.0','CHRIST SCHOOL','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:50:13',NULL,NULL,NULL),(695,75,88,'DNF','MAICOL ROVERES MENDEZ','2004.0','MONSEÑOR ALVEAR','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:50:28',NULL,NULL,NULL),(696,75,2,'2:14.92','SEBASTIAN SANHUEZA','2004.0','ESC. 425 LO PRADO','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:48:45',NULL,NULL,NULL),(697,75,99,'DNS','NOAH EDWARDS','2004.0','THE GRANGE SCHOOL','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:49:02',NULL,NULL,NULL),(698,75,99,'DNS','JOAQUIN MIR','2004.0','SAN JOSE DE CHICUREO','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:49:04',NULL,NULL,NULL),(699,75,99,'DNS','GUIDO MARCHANT','2006.0','THE GREENLAND','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:49:06',NULL,NULL,NULL),(700,75,5,'2:19.75','BENJAMÍN TURINA DEL VALLE','2004.0','MAYOR PEÑALOLÉN','13',NULL,'2018-08-03 19:34:33','2018-08-05 18:51:55',NULL,NULL,NULL),(701,76,3,'2:18.13','MARCELO CRUZ','2004.0','LA MISIÓN','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:37:58',NULL,NULL,NULL),(702,76,15,'2:55.44','ADONAIS DIB','2004.0','COLEGIO ADVENTISTA DE SANTIAGO SUR','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:48:13',NULL,NULL,NULL),(703,76,9,'2:29.62','ITALO DE FERRARI UGARTE','2004.0','TREBULCO SCHOOL','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:46:22',NULL,NULL,NULL),(704,76,99,'DNS','LUCAS ALBERTO JARA GAGGERO','2005.0','INSTITUTO LA SALLE DE LA FLORIDA','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:41:26',NULL,NULL,NULL),(705,76,99,'DNS','VICENTE JARA PACHECO','2006.0','MARIO BERTEROCEVASCO','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:41:27',NULL,NULL,NULL),(706,76,99,'DNS','GABRIEL VEGA REYES','2005.0','ARTURO ECHAZARRETA','5',NULL,'2018-08-03 19:36:41','2018-08-05 18:41:30',NULL,NULL,NULL),(707,76,99,'DNS','AUGUSTO MATTE','2005.0','COLEGIO SAN ISDRO','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:41:31',NULL,NULL,NULL),(708,76,99,'DNS','FRANCO BRUNETTO CASTILLO','2005.0','SSCC ALAMEDA','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:41:34',NULL,NULL,NULL),(709,76,11,'2:33.86','RENATO FERNANDEZ','2004.0','SSCC ALAMEDA','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:46:52',NULL,NULL,NULL),(710,76,10,'2:30.31','ALAN ROBERTSON WILSON','2005.0','TREBULCO SCHOOL','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:46:39',NULL,NULL,NULL),(711,76,99,'DNS','MARCO CONTRERAS','2006.0','MAITENES','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:41:37',NULL,NULL,NULL),(712,76,99,'DNS','CRISTÓBAL LABBÉ','2005.0','MONTE TABOR','13',NULL,'2018-08-03 19:36:41','2018-08-05 18:41:38',NULL,NULL,NULL),(713,77,NULL,'DNS','SEBASTIAN NOVOA CACERES','2005.0','VERBO DIVINO','13',NULL,'2018-08-03 19:38:45','2018-08-05 18:40:18',NULL,NULL,NULL),(714,77,NULL,'DNS','LEON SOMARRIVA URZUA','2005.0','VERBO DIVINO','13',NULL,'2018-08-03 19:38:45','2018-08-05 18:40:20',NULL,NULL,NULL),(715,77,NULL,'DNS','TOMAS PRIETO MATTE','2004.0','VERBO DIVINO','13',NULL,'2018-08-03 19:38:45','2018-08-05 18:40:22',NULL,NULL,NULL),(716,77,NULL,'DNS','LUCAS DELGADO','2004.0','CARAMPANGUE','13',NULL,'2018-08-03 19:38:45','2018-08-05 18:40:24',NULL,NULL,NULL),(717,77,12,'2:35.62','DANIEL REBOLLEDO','2005.0','IBEROAMERICANO','13',NULL,'2018-08-03 19:38:45','2018-08-05 18:47:13',NULL,NULL,NULL),(718,77,NULL,'DNS','DOMINGO BUSTOS BRAVO','2004.0','SAN FRANCISCO DE PAINE','13',NULL,'2018-08-03 19:38:45','2018-08-05 18:40:26',NULL,NULL,NULL),(719,77,NULL,'DNS','MATIAS ZUÑIGA','2005.0','SSCC ALAMEDA','13',NULL,'2018-08-03 19:38:45','2018-08-05 18:40:29',NULL,NULL,NULL),(720,77,NULL,'DNS','MATÍAS GARCIA HUIDOBRO','2005.0','SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-03 19:38:45','2018-08-05 18:40:31',NULL,NULL,NULL),(721,77,NULL,'DNS','LUCAS TORNERO','2005.0','SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-03 19:38:45','2018-08-05 18:40:38',NULL,NULL,NULL),(722,78,NULL,'DNS','BENJAMIN CARRASCO VIEIRA','2006.0','DOMINGO ORTIZ DE ROZAS','5',NULL,'2018-08-03 19:39:58','2018-08-05 18:49:16',NULL,NULL,NULL),(723,78,NULL,'DNS','IAN BOSSHARD','2005.0','ALEMÁN DE SANTIAGO','13',NULL,'2018-08-03 19:39:58','2018-08-05 18:40:44',NULL,NULL,NULL),(724,78,NULL,'DNS','MATIAS MORALES','2004.0','LICEO POLIVALENTE MANUEL RODRIGUEZ','13',NULL,'2018-08-03 19:39:58','2018-08-05 18:40:46',NULL,NULL,NULL),(725,78,13,'2:36.56','JORGE MARTINEZ BERRIOS','2005.0','MARIO BERTEROCEVASCO','13',NULL,'2018-08-03 19:39:58','2018-08-05 18:47:46',NULL,NULL,NULL),(726,78,NULL,'DNS','MARTIAS CASTILLO','2005.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 19:39:58','2018-08-05 18:40:47',NULL,NULL,NULL),(727,78,NULL,'DNS','MARTIN MANRIQUEZ','2005.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 19:39:58','2018-08-05 18:40:49',NULL,NULL,NULL),(728,78,14,'2:45.11','JORGE AHUMADA','2005.0','DE SANTA MARÍA','13',NULL,'2018-08-03 19:39:58','2018-08-05 18:48:01',NULL,NULL,NULL),(729,78,NULL,'DNS','GINO MARTINEZ PADILLA','2005.0','FRANCISCO PETRINOVIC','13',NULL,'2018-08-03 19:39:58','2018-08-05 18:40:51',NULL,NULL,NULL),(730,78,NULL,'DNS','AUGUSTO MATTE','2005.0','COLEGIO SAN ISIDRO','13',NULL,'2018-08-03 19:39:58','2018-08-05 18:40:56',NULL,NULL,NULL),(738,80,2,'16.49','SEBASTIAN LÓPEZ','2004.0','SAINT GEORGES','13',NULL,'2018-08-03 19:44:49','2018-08-04 14:57:13','4',NULL,NULL),(739,80,1,'15.24','CRISTOBAL BERNALES MAGNERE','2004.0','VERBO DIVINO','13',NULL,'2018-08-03 19:44:49','2018-08-04 14:57:02','5',NULL,NULL),(740,80,99,'DNS','MARTIAS CASTILLO','2005.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 19:44:49','2018-08-04 14:59:25','3',NULL,NULL),(741,80,99,'DNS','SEBASTIAN MATURANA ALAMOS','2004.0','VERBO DIVINO','13',NULL,'2018-08-03 19:44:49','2018-08-04 14:59:03','6',NULL,NULL),(742,80,3,'21.28','JOAQUIN CARRASCO REYES','2004.0','SSCC ALAMEDA','13',NULL,'2018-08-03 19:44:49','2018-08-04 14:57:21','7',NULL,NULL),(743,80,99,'DNS','GABRIEL SALEH','2005.0','SSCC ALAMEDA','13',NULL,'2018-08-03 19:44:49','2018-08-04 14:59:19','8',NULL,NULL),(744,80,99,'DNS','DOMINGO ROJAS PÉREZ ','2004.0','SAN BENITO','13',NULL,'2018-08-03 19:44:49','2018-08-04 14:59:14','2',NULL,NULL),(745,80,99,'DNS','MARTIN MANRIQUEZ','2005.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 19:44:49','2018-08-04 14:59:09','1',NULL,NULL),(902,102,1,'25:43.24','ISIDORA FERNANDEZ.','2004','SSCC ALAMEDA','13',NULL,'2018-08-03 20:47:12','2018-08-25 16:16:45','1',NULL,''),(963,109,99,'DNS','JULIETA ZUÑIGA','2004.0','LICEO BICENTENARIO DE NIÑAS DE MAIPU','13',NULL,'2018-08-03 20:59:02','2018-08-05 19:06:26',NULL,NULL,NULL),(964,109,99,'DNS','ELIZABETH ARRIAGADA','2004.0','COLEGIO LA CONCEPCIÓN','13',NULL,'2018-08-03 20:59:02','2018-08-05 19:06:29',NULL,NULL,NULL),(965,109,3,'2.40.69','DAFNE REYES','2004.0','SAN FERNANDO DE PEÑALOLEN','13',NULL,'2018-08-03 20:59:02','2018-08-05 19:06:18','2',NULL,NULL),(966,109,99,'DNS','DANIELA ANGELICA ESPINDOLA VERA','2006.0','MADRE CECILIA LAZZERI','13',NULL,'2018-08-03 20:59:02','2018-08-05 19:06:31',NULL,NULL,NULL),(967,109,1,'2:28.13','KARLA PULGAR','2005.0','LICEO POLIVALENTE','13',NULL,'2018-08-03 20:59:02','2018-08-05 19:06:20','3',NULL,NULL),(968,109,99,'DNS','ANA MARÍA WAHL','2005.0','SIN CLUB ','13',NULL,'2018-08-03 20:59:02','2018-08-05 19:06:34',NULL,NULL,NULL),(969,109,99,'DNS','MATINA ZUÑIGA','2005.0','ALTAS CUMBRES DEL ROSAL','13',NULL,'2018-08-03 20:59:02','2018-08-05 19:06:36',NULL,NULL,NULL),(970,109,99,'DNS','JACINTA OLAVARRÍA','2004.0','SIN CLUB ','13',NULL,'2018-08-03 20:59:02','2018-08-05 19:06:39',NULL,NULL,NULL),(971,109,99,'DNS','MARINA LLANOS','2005.0','INSTITUCION TERESIANA','13',NULL,'2018-08-03 20:59:02','2018-08-05 19:06:41',NULL,NULL,NULL),(972,109,99,'DNS','ISIDORA BERRIOS MALDONADO','2006.0','DOMINGO ORTIZ DE ROZAS','5',NULL,'2018-08-03 20:59:02','2018-08-05 19:06:44',NULL,NULL,NULL),(980,110,NULL,'DNS','SOFIA CUEVAS','2004.0','ATL.FRANCES','13.0',NULL,'2018-08-03 20:59:42','2018-08-05 19:19:23',NULL,NULL,NULL),(981,110,NULL,'DNS','VALENTINA BERRIOS GONZALEZ','2005.0','DOMINGO ORTIZ DE ROZAS','5.0',NULL,'2018-08-03 20:59:42','2018-08-05 19:19:27',NULL,NULL,NULL),(982,110,NULL,'DNS','ANTONIA RUIZ','2004.0','ATL.FRANCES','13.0',NULL,'2018-08-03 20:59:42','2018-08-05 19:19:30',NULL,NULL,NULL),(983,110,NULL,'DNS','TERESITA MONTANER','2005.0','SIN CLUB ','13.0',NULL,'2018-08-03 20:59:42','2018-08-05 19:19:34',NULL,NULL,NULL),(984,110,NULL,'DNS','AMELIA CIFUENTES','2004.0','ALEMÁN DE SANTIAGO','13.0',NULL,'2018-08-03 20:59:42','2018-08-05 19:19:47',NULL,NULL,NULL),(986,110,NULL,'DNS','FRANCISCA AHUMADA','2005.0','THE MAYFLOWER ','13.0',NULL,'2018-08-03 20:59:42','2018-08-05 19:19:50',NULL,NULL,NULL),(987,110,NULL,'DNS','ANTONIA AHUMADA ','2005.0','THE MAYFLOWER ','13.0',NULL,'2018-08-03 20:59:42','2018-08-05 19:20:02',NULL,NULL,NULL),(988,110,NULL,'DNS','MAYDA SOLEDAD MENDOZA SALGADO','2005.0','COLEGIO ALICANTE DEL ROSAL DE MAIPÚ','13.0',NULL,'2018-08-03 20:59:42','2018-08-05 19:20:15',NULL,NULL,NULL),(996,111,NULL,'DNS','TRINIDAD FERNANDEZ','2005.0','SAN JOSE DE CHICUREO','13',NULL,'2018-08-03 21:00:30','2018-08-05 19:18:45',NULL,NULL,NULL),(997,111,NULL,'DNS','ELENA TRITINI CARTES','2004.0','LICEO BICENTENARIO','13',NULL,'2018-08-03 21:00:30','2018-08-05 19:18:48',NULL,NULL,NULL),(999,111,NULL,'DNS','MAGDALENA CASTRO','2005.0','IBEROAMERICANO','13',NULL,'2018-08-03 21:00:30','2018-08-05 19:18:52',NULL,NULL,NULL),(1000,111,NULL,'DNS','FLORENCIA VALDES','2006.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 21:00:30','2018-08-05 19:18:55',NULL,NULL,NULL),(1001,111,NULL,'DNS','CAMILA PAREDES','2005.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 21:00:30','2018-08-05 19:18:59',NULL,NULL,NULL),(1002,111,NULL,'DNS','FLORENCIA BENAVIDES','2004.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 21:00:30','2018-08-05 19:19:02',NULL,NULL,NULL),(1003,111,NULL,'DNS','CATALINA RIOS','2005.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 21:00:30','2018-08-05 19:19:06',NULL,NULL,NULL),(1004,111,NULL,'DNS','OCTAVIA LAZCANO','2004.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 21:00:30','2018-08-05 19:19:09',NULL,NULL,NULL),(1005,111,NULL,'DNS','ENRIQUETA MARTINEZ','2006.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 21:00:30','2018-08-05 19:19:13',NULL,NULL,NULL),(1006,111,NULL,'DNS','MAITE DIAZ','2005.0','ANTARTICA CHILENA','13',NULL,'2018-08-03 21:00:30','2018-08-05 19:19:17',NULL,NULL,NULL),(1012,112,NULL,'DNS','FLORENCIA ORPIS','2005.0','COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-03 21:01:41','2018-08-05 19:18:11',NULL,NULL,NULL),(1013,112,NULL,'DNS','CATALINA MALATRASSI','2005.0','COLEGIO LOS ANDES','13',NULL,'2018-08-03 21:01:41','2018-08-05 19:18:15',NULL,NULL,NULL),(1014,112,NULL,'DNS','JOSEFINA OCHAGAVIA','2005.0','COLEGIO LOS ANDES','13',NULL,'2018-08-03 21:01:41','2018-08-05 19:18:19',NULL,NULL,NULL),(1015,112,NULL,'DNS','CRISTINA VALDES','2005.0','COLEGIO LOS ANDES','13',NULL,'2018-08-03 21:01:41','2018-08-05 19:18:23',NULL,NULL,NULL),(1016,112,NULL,'DNS','PAULA SOLAR','2005.0','COLEGIO LOS ANDES','13',NULL,'2018-08-03 21:01:41','2018-08-05 19:18:26',NULL,NULL,NULL),(1017,112,NULL,'DNS','MERCEDES CUEVAS','2005.0','COLEGIO LOS ANDES','13',NULL,'2018-08-03 21:01:41','2018-08-05 19:18:30',NULL,NULL,NULL),(1018,112,NULL,'DNS','MAGDALENA SOUMASTRE','2005.0','SAINT GEORGES COLLEGE','13',NULL,'2018-08-03 21:01:41','2018-08-05 19:18:34',NULL,NULL,NULL),(1019,112,NULL,'DNS','MANUELA GORDON','2005.0','SAINT GEORGES COLLEGE','13',NULL,'2018-08-03 21:01:41','2018-08-05 19:18:38',NULL,NULL,NULL),(1020,109,6,'2:47.36','ALIAGA PÉREZ BERNARDITA','2004','SAN BENITO','13',NULL,'2018-08-03 21:04:07','2018-08-05 18:51:57','5',NULL,NULL),(1021,109,NULL,'DNF','ISIDORA JIMENEZ MALDONADO','2005','ATLETICO SPEED MAIPU','13',NULL,'2018-08-03 21:05:02','2018-08-05 18:49:53','4',NULL,''),(1264,145,4,'2:38.06 (596)','EDUARDO RODAS','2004.0','SAINT GEORGES','13',NULL,'2018-08-04 01:50:54','2018-08-05 18:26:35',NULL,NULL,NULL),(1265,145,6,'2:52.12 (443)','BENJAMÍN LEHUEDE','2004.0','SAINT GEORGES','13',NULL,'2018-08-04 01:50:54','2018-08-05 18:26:40',NULL,NULL,NULL),(1266,145,1,'2:24.85 (763)','DIEGO BUSTAMANTE BASTIAS','2004.0','SSCC ALAMEDA','13',NULL,'2018-08-04 01:50:54','2018-08-05 18:26:27','',NULL,NULL),(1267,145,2,'2:34.13 (644)','JOSÉ PALACIOS CARDENAS','2004.0','SSCC ALAMEDA','13',NULL,'2018-08-04 01:50:54','2018-08-05 18:26:29',NULL,NULL,NULL),(1268,145,3,'2:36.97 (620)','PEDRO CAÑAS','2004.0','SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-04 01:50:54','2018-08-05 18:26:31',NULL,NULL,NULL),(1269,145,5,'2:40.64','JOAQUÍN OSSES MUÑOZ','2004.0','NOCEDAL','13',NULL,'2018-08-04 01:50:54','2018-08-05 18:26:38',NULL,NULL,NULL),(1276,144,1,'16.66','EDUARDO RODAS',NULL,'SAINT GEORGES','13',NULL,'2018-08-04 14:33:05','2018-08-04 16:14:04','4',NULL,NULL),(1277,144,2,'16.68','DIEGO BUSTAMANTE BASTIAS',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-04 14:33:05','2018-08-04 16:14:05','3',NULL,NULL),(1278,144,3,'17.34','PEDRO CAÑAS',NULL,'SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-04 14:33:05','2018-08-04 16:14:06','7',NULL,NULL),(1279,144,4,'18.50','BENJAMÍN LEHUEDE',NULL,'SAINT GEORGES','13',NULL,'2018-08-04 14:33:05','2018-08-04 16:14:08','5',NULL,NULL),(1280,144,5,'20.51','JOSÉ PALACIOS CARDENAS',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-04 14:33:05','2018-08-04 16:14:09','6',NULL,NULL),(1281,144,6,'21.16','JOAQUÍN OSSES MUÑOZ',NULL,'NOCEDAL','13',NULL,'2018-08-04 14:33:05','2018-08-04 16:14:10','8',NULL,NULL),(1289,79,1,'14.40','PEDRO MORALES',NULL,'SAINT GEORGES','13',NULL,'2018-08-04 15:03:59','2018-08-04 16:14:56','4',NULL,NULL),(1290,79,2,'15.09','LUCAS PALACIOS NAZIF',NULL,'SSCC MANQUEHUE','13',NULL,'2018-08-04 15:03:59','2018-08-04 16:14:57','3',NULL,NULL),(1291,79,3,'16.66','LUCAS DUCAUD',NULL,'PEDRO DE VALDIVIA PEÑ','13',NULL,'2018-08-04 15:03:59','2018-08-04 16:14:58','2',NULL,NULL),(1292,79,99,'DNS','ALFREDO VICARI',NULL,'SAINT GEORGES','13',NULL,'2018-08-04 15:03:59','2018-08-04 16:15:00',NULL,NULL,NULL),(1293,79,99,'DNS','DIEGO KEITEL LYON',NULL,'VERBO DIVINO','13',NULL,'2018-08-04 15:03:59','2018-08-04 16:15:01',NULL,NULL,NULL),(1294,79,99,'DNS','BENJAMIN VIELVA TELLECHEA',NULL,'VERBO DIVINO','13',NULL,'2018-08-04 15:03:59','2018-08-04 16:15:03',NULL,NULL,NULL),(1295,79,99,'DNS','JORGE HAYLER BROWNE',NULL,'SAN BENITO','13',NULL,'2018-08-04 15:03:59','2018-08-04 16:15:05',NULL,NULL,NULL),(1297,103,2,'14.08','MARTINA QUEZADA CORTES',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-04 15:16:54','2018-08-04 15:17:47','4',NULL,NULL),(1298,103,3,'14.18','AGUSTINA CASES',NULL,'SANTA URSULA','13',NULL,'2018-08-04 15:16:54','2018-08-04 15:17:53','8',NULL,NULL),(1299,103,4,'15.50','MATILDE MUÑOZ',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-04 15:16:54','2018-08-04 15:17:56','6',NULL,NULL),(1300,103,5,'16.25','AMALIA BABOUN',NULL,'NAZARET','13',NULL,'2018-08-04 15:16:54','2018-08-04 15:17:58','1',NULL,NULL),(1301,103,NULL,'DNF','AMPARO ANGUITA',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-04 15:16:54','2018-08-04 15:18:01','2',NULL,NULL),(1302,103,NULL,'DNS','OCTAVIA LAZCANO',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-04 15:16:54','2018-08-04 15:18:04','7',NULL,NULL),(1303,104,1,'14.26','MACARENA ÁLVAREZ REYES',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-04 15:19:29','2018-08-04 16:16:36','2',NULL,NULL),(1304,104,2,'14.33','PAULA PÉREZ ESPINOZA',NULL,'MAYOR PEÑALOLÉN','13',NULL,'2018-08-04 15:19:29','2018-08-04 16:16:38','6',NULL,NULL),(1305,104,3,'14.93','JAVIERA GARCÍA',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-04 15:19:29','2018-08-04 16:16:41','4',NULL,NULL),(1306,104,4,'16.37','MAGDALENA COFRE CELIS',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-04 15:19:29','2018-08-04 16:16:42','5',NULL,NULL),(1307,104,5,'17.15','VALENTINA CISNEROS',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-04 15:19:29','2018-08-04 16:16:45','3',NULL,NULL),(1308,103,1,'13.89','CATALINA ABARCA',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-04 15:21:42','2018-08-04 15:21:42','3',NULL,NULL),(1309,127,1,'11.14','CONSTANZA JORQUERA',NULL,'DOMINGO MATTE MESIAS','13',NULL,'2018-08-04 15:32:50','2018-08-04 15:41:51','4',NULL,NULL),(1310,127,2,'11.56','FLORENCIA TAVONATTI',NULL,'NAZARET','13',NULL,'2018-08-04 15:32:50','2018-08-04 15:41:53','3',NULL,NULL),(1311,127,3,'11.57','FRANCISCA CARVAJAL',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-04 15:32:50','2018-08-04 15:41:55','7',NULL,NULL),(1312,127,4,'11.71','CONSTANZA SANGUINETTI',NULL,'ALEMÁN DE SANTIAGO','13',NULL,'2018-08-04 15:32:50','2018-08-04 15:41:55','6',NULL,NULL),(1313,127,5,'12.77','EMILY AYALA',NULL,'SAN VIATOR DE MACUL','13',NULL,'2018-08-04 15:32:50','2018-08-04 15:41:57','2',NULL,NULL),(1314,127,6,'12.97','DANIELA JERI',NULL,'CORAZON DE MARIA','13',NULL,'2018-08-04 15:32:50','2018-08-04 15:41:58','8',NULL,NULL),(1315,127,NULL,'DNS','FRANCISCA LARRAIN',NULL,'ATL.FRANCES','13',NULL,'2018-08-04 15:32:50','2018-08-04 15:41:59','5',NULL,NULL),(1316,128,1,'11.65','BEATRIZ PIZARRO PRECHT',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-04 15:37:11','2018-08-04 15:41:38','4',NULL,NULL),(1317,128,2,'12.38','FLORENCIA MILLAN',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-04 15:37:11','2018-08-04 15:41:39','1',NULL,NULL),(1318,128,3,'12.71','JAVIERA COOPER',NULL,'CORAZON DE MARIA','13',NULL,'2018-08-04 15:37:11','2018-08-04 15:41:40','2',NULL,NULL),(1319,128,4,'14.05','RENATA MORALES',NULL,'PETRINOVICH','13',NULL,'2018-08-04 15:37:11','2018-08-04 15:41:42','5',NULL,NULL),(1320,128,5,'14.25','ISIDORA FERNANDEZ',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-04 15:37:11','2018-08-04 15:41:44','8',NULL,NULL),(1321,128,NULL,'DNF','ISIDORA MUÑOZ',NULL,'THE MAYFLOWER','13',NULL,'2018-08-04 15:37:11','2018-08-04 15:41:45','3',NULL,NULL),(1322,128,NULL,'DNS','AMELIA RUIZ',NULL,'SAN JOSE DE CHICUREO','13',NULL,'2018-08-04 15:37:11','2018-08-04 15:41:47','6',NULL,NULL),(1323,128,NULL,'DNS','CAMILA CABRERA',NULL,'THE GREENLAND','13',NULL,'2018-08-04 15:37:11','2018-08-04 15:41:50','7',NULL,NULL),(1324,129,1,'10.92','ISIDORA PAZ ALBORNOZ URRUTIA',NULL,'ALCAZAR DE LAS CONDES','13',NULL,'2018-08-04 15:40:42','2018-08-04 15:41:23','6',NULL,NULL),(1325,129,2,'11.39','CONSTANZA MARDONEZ',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-04 15:40:42','2018-08-04 15:41:24','1',NULL,NULL),(1326,129,3,'12.36','FERNANDA NAPOLITANO',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-04 15:40:42','2018-08-04 15:41:25','8',NULL,NULL),(1327,129,NULL,'DNS','SOFIA ZAMBRANO IP',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-04 15:40:42','2018-08-04 15:41:27','4',NULL,NULL),(1328,129,NULL,'DNS','ASUNCION DREYFUS',NULL,'SAN JOSE DE CHICUREO','13',NULL,'2018-08-04 15:40:42','2018-08-04 15:41:29','5',NULL,NULL),(1329,129,NULL,'DNS','TERESITA RUIZ',NULL,'SIN CLUB','13',NULL,'2018-08-04 15:40:42','2018-08-04 15:41:31','3',NULL,NULL),(1330,129,NULL,'DNS','CONSUELO RIQUELME',NULL,'THE GREENLAND','13',NULL,'2018-08-04 15:40:42','2018-08-04 15:41:32','7',NULL,NULL),(1331,129,NULL,'DNS','MATILDE ROSARIO GONZALEZ ALAMO',NULL,'SAN FRANCISCO DE PAINE','13',NULL,'2018-08-04 15:40:42','2018-08-04 15:41:34','2',NULL,NULL),(1332,130,1,'11.67','ANDREA QUINTANA',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-04 15:43:45','2018-08-04 15:45:47','1',NULL,NULL),(1333,130,2,'11.82','FRANCISCA FABIO',NULL,'COLEGIO MANQUECURA','13',NULL,'2018-08-04 15:43:45','2018-08-04 15:45:48','4',NULL,NULL),(1334,130,3,'11.93','ISIDORA GAMBOA',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-04 15:43:45','2018-08-04 15:45:50','8',NULL,NULL),(1335,130,NULL,'DNS','FERNANDA SAAVEDRA',NULL,'LA MISIÓN','13',NULL,'2018-08-04 15:43:45','2018-08-04 15:45:51','5',NULL,NULL),(1336,130,NULL,'DNS','GABRIELA CORREA',NULL,'LINCOLN CHICUREO','13',NULL,'2018-08-04 15:43:45','2018-08-04 15:45:52','3',NULL,NULL),(1337,130,NULL,'DNS','CONSTANZA GARÍN GIACOMAN',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-04 15:43:45','2018-08-04 15:45:54','6',NULL,NULL),(1338,130,NULL,'DNS','ROMINA MESTANZA',NULL,'THE GREENLAND','13',NULL,'2018-08-04 15:43:45','2018-08-04 15:45:55','7',NULL,NULL),(1339,130,NULL,'DNS','MATILDE ROSARIO GONZALEZ ALAMO',NULL,'SAN FRANCISCO DE PAINE','13',NULL,'2018-08-04 15:43:45','2018-08-04 15:45:56','2',NULL,NULL),(1340,131,1,'11.50','PILAR VALLOTTON',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-04 15:46:58','2018-08-04 15:49:52','6',NULL,NULL),(1341,131,2,'11.57','FRANCISCA ROJAS',NULL,'MONTE VERDE','13',NULL,'2018-08-04 15:46:58','2018-08-04 15:49:53','4',NULL,NULL),(1342,131,3,'11.86','OLIVIA LYON',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-04 15:46:58','2018-08-04 15:49:55','5',NULL,NULL),(1343,131,4,'12.09','MARTINA CALDO',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-04 15:46:58','2018-08-04 15:49:56','8',NULL,NULL),(1344,131,5,'12.76','MAGDALENA CASTRO',NULL,'IBEROAMERICANO','13',NULL,'2018-08-04 15:46:58','2018-08-04 15:49:57','7',NULL,NULL),(1345,131,NULL,'DNS','CLARITA ESCUDERO',NULL,'SIN CLUB','13',NULL,'2018-08-04 15:46:58','2018-08-04 15:49:59','3',NULL,NULL),(1346,131,NULL,'DNS','BEATRIZ NUÑEZ',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-04 15:46:58','2018-08-04 15:50:00','2',NULL,NULL),(1347,131,NULL,'DNS','JOSEFINA SIMONETTI',NULL,'COLEGIO LOS ANDES','13',NULL,'2018-08-04 15:46:58','2018-08-04 15:50:06','1',NULL,NULL),(1348,132,1,'11.62','ANTONIA CERDA KETERER',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-04 15:49:31','2018-08-04 15:51:20','4',NULL,NULL),(1349,132,2,'11.70','JOSEFA LOPEZ',NULL,'COPLEGIO MAYOR DE TOBALABA','13',NULL,'2018-08-04 15:49:31','2018-08-04 15:51:28','5',NULL,NULL),(1350,132,3,'14.05','EMILIA RAMÍREZ',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-04 15:49:31','2018-08-04 15:51:30','2',NULL,NULL),(1351,132,NULL,'DNS','SIMONE MONTEGÚ',NULL,'SSCC MANQUEHUE','13',NULL,'2018-08-04 15:49:31','2018-08-04 15:51:31','3',NULL,NULL),(1352,132,NULL,'DNS','EMILIA PAROT',NULL,'SIN CLUB','13',NULL,'2018-08-04 15:49:31','2018-08-04 15:51:32','6',NULL,NULL),(1353,132,NULL,'DNS','FERNANDA QUEIROLO',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-04 15:49:31','2018-08-04 15:51:35','7',NULL,NULL),(1354,132,NULL,'DNS','AGUSTINA LOBOS',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-04 15:49:31','2018-08-04 15:51:37','8',NULL,NULL),(1355,132,NULL,'DNS','CONSUELO ANTUNEZ',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-04 15:49:31','2018-08-04 15:51:38','1',NULL,NULL),(1356,133,1,'12.21','MAGDALENA OLIVARES JIMENEZ',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-04 15:53:50','2018-08-04 15:54:49','4',NULL,NULL),(1357,133,2,'13.36','JAVIERA ÁGUILA',NULL,'CARAMPANGUE','13',NULL,'2018-08-04 15:53:50','2018-08-04 15:54:51','8',NULL,NULL),(1358,133,NULL,'DNS','OLIVIA LYON',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-04 15:53:50','2018-08-04 15:54:53','5',NULL,NULL),(1359,133,NULL,'DNS','ASUNCIÓN FIGUEROA BAUZÁ',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-04 15:53:50','2018-08-04 15:54:54','3',NULL,NULL),(1360,133,NULL,'DNS','MATILDE FERNANDEZ',NULL,'SIN CLUB','13',NULL,'2018-08-04 15:53:50','2018-08-04 15:54:58','6',NULL,NULL),(1361,133,NULL,'DNS','MARTINA HERNANDEZ',NULL,'LICEO AGUSTO D HALMAR','13',NULL,'2018-08-04 15:53:50','2018-08-04 15:54:58','7',NULL,NULL),(1362,133,NULL,'DNS','FLORENCIA BENAVIDES',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-04 15:53:50','2018-08-04 15:54:59','2',NULL,NULL),(1363,133,NULL,'DNS','IGNACIA VERGARA',NULL,'COLEGIO LOS ANDES','13',NULL,'2018-08-04 15:53:50','2018-08-04 15:55:00','1',NULL,NULL),(1364,134,1,'11.19','SARA DECOMBE',NULL,'NAZARET','13',NULL,'2018-08-04 15:56:23','2018-08-04 16:10:46','5',NULL,NULL),(1365,134,2,'11.41','FLORENCIA BALBOA',NULL,'EPULLAY','13',NULL,'2018-08-04 15:56:23','2018-08-04 16:10:47','6',NULL,NULL),(1366,134,3,'11.82','ANTONIA RAMIREZ',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-04 15:56:23','2018-08-04 16:10:49','1',NULL,NULL),(1367,134,NULL,'DNS','MARTINA QUEZADA CORTES',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-04 15:56:23','2018-08-04 16:10:51','4',NULL,NULL),(1368,134,NULL,'DNS','ANTONIA OCHAGAVÍA TORRES',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-04 15:56:23','2018-08-04 16:10:52','3',NULL,NULL),(1369,134,NULL,'DNS','FRANCINE WROBLESKIY',NULL,'SAN JOSE DE CHICUREO','13',NULL,'2018-08-04 15:56:23','2018-08-04 16:10:54','7',NULL,NULL),(1370,134,NULL,'DNS','FLORENCIA CARO',NULL,'CARAMPANGUE','13',NULL,'2018-08-04 15:56:23','2018-08-04 16:10:56','8',NULL,NULL),(1371,134,NULL,'DNS','MAITE DIAZ',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-04 15:56:23','2018-08-04 16:10:57','2',NULL,NULL),(1372,135,1,'10.93','JOSEFINA SILVA SCHMIDT',NULL,'LA MAISONNETTE','13',NULL,'2018-08-04 15:59:44','2018-08-04 16:11:19','4',NULL,NULL),(1373,135,2,'11.93','MARTINA BAEZA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-04 15:59:44','2018-08-04 16:11:20','3',NULL,NULL),(1374,135,3,'11.98','CAMILA TORO',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-04 15:59:44','2018-08-04 16:11:22','7',NULL,NULL),(1375,135,NULL,'DNS','JOSEFINA O\'RYAN',NULL,'CSC','13',NULL,'2018-08-04 15:59:44','2018-08-04 16:11:24','5',NULL,NULL),(1376,135,NULL,'DNS','VALENTINA BARAYON DEL CAMPO',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-04 15:59:44','2018-08-04 16:11:26','6',NULL,NULL),(1377,135,NULL,'DNS','ESCARLETH REBOLLEDO',NULL,'IBEROAMERICANO','13',NULL,'2018-08-04 15:59:44','2018-08-04 16:11:28','8',NULL,NULL),(1378,135,NULL,'DNS','FLORENCIA VALDES',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-04 15:59:44','2018-08-04 16:11:30','2',NULL,NULL),(1379,135,NULL,'DNS','CLARA ARRIAGADA',NULL,'COLEGIO LOS ANDES','13',NULL,'2018-08-04 15:59:44','2018-08-04 16:11:31','1',NULL,NULL),(1380,136,1,'11.52','MARTINA FERRADA',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-04 16:09:40','2018-08-04 16:12:55','8',NULL,NULL),(1381,136,2,'11.64','FRANCISCA ROJAS',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-04 16:09:40','2018-08-04 16:12:56','5',NULL,NULL),(1382,136,3,'11.79','FERNANDA BRAVO OVIEDO',NULL,'TREBULCO SCHOOL','13',NULL,'2018-08-04 16:09:40','2018-08-04 16:12:57','4',NULL,NULL),(1383,136,NULL,'DNF','MARTINA BAEZA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-04 16:09:40','2018-08-04 16:12:59','3',NULL,NULL),(1384,136,NULL,'DNS','VALENTINA QUEZADA QUIROS',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-04 16:09:40','2018-08-04 16:13:00','6',NULL,NULL),(1385,136,NULL,'DNS','ANTONIA MORENO',NULL,'CARMELA CARVAJAL','13',NULL,'2018-08-04 16:09:40','2018-08-04 16:13:02','7',NULL,NULL),(1386,136,NULL,'DNS','OCTAVIA LAZCANO',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-04 16:09:40','2018-08-04 16:13:04','2',NULL,NULL),(1387,136,NULL,'DNS','ELISA SALVO ANGUITA',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-04 16:09:40','2018-08-04 16:13:07','1',NULL,NULL),(1388,137,1,'10.94','RENATA ALVARÉZ',NULL,'MIGUEL RAFAEL PRADO','13',NULL,'2018-08-04 16:13:16','2018-08-04 16:21:07','4',NULL,NULL),(1389,137,2,'11.86','MARTINA MARINE',NULL,'CUMBRES','13',NULL,'2018-08-04 16:13:16','2018-08-04 16:21:08','5',NULL,NULL),(1390,137,NULL,'DNS','PASCUALA SILVA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-04 16:13:16','2018-08-04 16:21:09','3',NULL,NULL),(1391,137,NULL,'DNS','GRACIA AVARIA',NULL,'SIN CLUB','13',NULL,'2018-08-04 16:13:16','2018-08-04 16:21:11','6',NULL,NULL),(1392,137,NULL,'DNS','IGNACIA DONOSO',NULL,'SAN JOSE DE CHICUREO','13',NULL,'2018-08-04 16:13:16','2018-08-04 16:21:12','7',NULL,NULL),(1393,137,NULL,'DNS','CARLA RIOS BERMUDEZ',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-04 16:13:16','2018-08-04 16:21:12','8',NULL,NULL),(1394,137,NULL,'DNS','CAMILA PAREDES',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-04 16:13:16','2018-08-04 16:21:13','2',NULL,NULL),(1395,137,NULL,'DNS','CAROLINA VIDAL',NULL,'COLEGIO LOS ANDES','13',NULL,'2018-08-04 16:13:16','2018-08-04 16:21:14','1',NULL,NULL),(1396,138,1,'11.59','MARTINA PRIDA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-04 16:16:48','2018-08-04 16:21:27','6',NULL,NULL),(1397,138,2,'11.63','MATINA ZUÑIGA',NULL,'ALTAS CUMBRES DEL ROSAL','13',NULL,'2018-08-04 16:16:48','2018-08-04 16:21:29','7',NULL,NULL),(1398,138,3,'11.73','CAROLINA FELLAY',NULL,'NAZARET','13',NULL,'2018-08-04 16:16:48','2018-08-04 16:21:30','5',NULL,NULL),(1399,138,4,'12.19','CARLA RIOS',NULL,'SAN GASPAR','13',NULL,'2018-08-04 16:16:48','2018-08-04 16:21:32','2',NULL,NULL),(1400,138,5,'12.63','MARTINA CISTERNAS',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-04 16:16:48','2018-08-04 16:21:35','8',NULL,NULL),(1401,138,NULL,'DNS','JACINTA VALLEJOS',NULL,'THE MAYFLOWER','13',NULL,'2018-08-04 16:16:48','2018-08-04 16:21:37','4',NULL,NULL),(1402,138,NULL,'DNS','PASCUALA SILVA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-04 16:16:48','2018-08-04 16:21:39','3',NULL,NULL),(1403,138,NULL,'DNS','OCTAVIA CAMINO LIRA',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-04 16:16:48','2018-08-04 16:21:40','1',NULL,NULL),(1404,139,1,'11.51','JOSEFA MERINO',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-04 16:20:15','2018-08-04 16:22:01','6',NULL,NULL),(1405,139,2,'11.68','IGNACIA PINTO',NULL,'ARTURO TORO AMOR','13',NULL,'2018-08-04 16:20:15','2018-08-04 16:22:02','3',NULL,NULL),(1406,139,3,'12.14','CLARA GONZÁLEZ LECAROS',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-04 16:20:15','2018-08-04 16:22:03','1',NULL,NULL),(1407,139,4,'12.42','CATALINA ESCOBAR',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-04 16:20:15','2018-08-04 16:22:05','8',NULL,NULL),(1408,139,5,'13.77','ENRIQUETA MARTINEZ',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-04 16:20:15','2018-08-04 16:22:06','2',NULL,NULL),(1409,139,NULL,'DNS','AGUSTINA TIMERMAN',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-04 16:20:15','2018-08-04 16:22:07','4',NULL,NULL),(1410,139,NULL,'DNS','ELISA VARELA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-04 16:20:15','2018-08-04 16:22:08','5',NULL,NULL),(1411,139,NULL,'DNS','DANIELA PUGA',NULL,'CARAMPANGUE','13',NULL,'2018-08-04 16:20:15','2018-08-04 16:22:09','7',NULL,NULL),(1412,140,1,'11.13','CAMILA TAVONATTI',NULL,'NAZARET','13',NULL,'2018-08-04 16:23:23','2018-08-04 16:24:56','4',NULL,NULL),(1413,140,2,'12.33','JOSEFINA SILVA- PAREDES ANTUNEZ',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-04 16:23:23','2018-08-04 16:24:57','2',NULL,NULL),(1414,140,NULL,'DNS','FLORENCIA MILLAR',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-04 16:23:23','2018-08-04 16:24:58','5',NULL,NULL),(1415,140,NULL,'DNS','VALENTINA ARCOS',NULL,'THE MAYFLOWER','13',NULL,'2018-08-04 16:23:23','2018-08-04 16:24:59','3',NULL,NULL),(1416,140,NULL,'DNS','AGUSTINA DALL\'OLIO FERNÁNDEZ',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-04 16:23:23','2018-08-04 16:25:04','6',NULL,NULL),(1417,140,NULL,'DNS','MARÍA JESÚS MUSALEM',NULL,'NAZARET','13',NULL,'2018-08-04 16:23:23','2018-08-04 16:25:05','7',NULL,NULL),(1418,140,NULL,'DNS','ZAMIRA SEDAN',NULL,'LINCOLN CHICUREO','13',NULL,'2018-08-04 16:23:23','2018-08-04 16:25:06','8',NULL,NULL),(1419,140,NULL,'DNS','TATIANA GOMEZ MOLINA',NULL,'DE SANTA MARÍA','13',NULL,'2018-08-04 16:23:23','2018-08-04 16:25:06','1',NULL,NULL),(1420,141,2,'11.12','JULIETA ZUÑIGA',NULL,'LICEO BICENTENARIO','13',NULL,'2018-08-04 16:25:57','2018-08-04 16:31:59','2',NULL,NULL),(1421,141,1,'11.04','ELIZABET ARRIAGADA',NULL,'COLEGIO LA CONCEPCIÓN','13',NULL,'2018-08-04 16:26:36','2018-08-04 16:31:45','3',NULL,NULL),(1422,141,4,'11.92','FLORENCIA BENAVIDES',NULL,'SANTA URSULA','13',NULL,'2018-08-04 16:27:22','2018-08-04 16:32:35','4',NULL,NULL),(1423,90,1,'9.74','ANDRES REFUSTA',NULL,'LINCOLN CHICUREO','13',NULL,'2018-08-04 16:27:32','2018-08-04 16:34:38','4',NULL,NULL),(1424,90,2,'10.94','BENJAMIN CONTRERAS',NULL,'LICEO ESMERALDA','13',NULL,'2018-08-04 16:27:32','2018-08-04 16:34:36','3',NULL,NULL),(1425,90,3,'12.05','PATRICIO HERNANDEZ',NULL,'PETRONOVICH','13',NULL,'2018-08-04 16:27:32','2018-08-04 16:34:37','1',NULL,NULL),(1426,90,NULL,'DNS','AFONSO PLANDIURA NAVARRETE',NULL,'PADRE HURTADO','13',NULL,'2018-08-04 16:27:32','2018-08-04 16:34:39','5',NULL,NULL),(1427,90,NULL,'DNS','VICENTE LEISEWITZ MUÑOZ',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-04 16:27:32','2018-08-04 16:34:40','6',NULL,NULL),(1428,90,NULL,'DNS','LUCAS DELGADO',NULL,'CARAMPANGUE','13',NULL,'2018-08-04 16:27:32','2018-08-04 16:34:42','7',NULL,NULL),(1429,90,NULL,'DNS','GABRIEL SALEH',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-04 16:27:32','2018-08-04 16:34:43','8',NULL,NULL),(1430,90,NULL,'DNS','RODRIGO CLAVERIE',NULL,'SAN JOSE DE CHICUREO','13',NULL,'2018-08-04 16:27:32','2018-08-04 16:34:44','2',NULL,NULL),(1431,141,3,'11.14','ISABEL LIRA',NULL,'ANDREE','13',NULL,'2018-08-04 16:28:23','2018-08-04 16:32:18','5',NULL,NULL),(1432,141,5,'12.29','AGUSTINA LOBOS',NULL,'SAN FRANCISCO','13',NULL,'2018-08-04 16:29:15','2018-08-04 16:32:54','7',NULL,NULL),(1433,141,6,'15.43','ANTONELLA LAUX',NULL,'CORAZON DE MARIA','13',NULL,'2018-08-04 16:29:47','2018-08-04 16:33:12','1',NULL,NULL),(1434,91,1,'11.34','JOSÉ TOMÁS CORREA',NULL,'SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-04 16:32:41','2018-08-04 16:35:02','8',NULL,NULL),(1435,91,2,'11.41','FELIPE ALBERTO AYBAR',NULL,'CORAZON DE MARIA','13',NULL,'2018-08-04 16:32:41','2018-08-04 16:35:03','7',NULL,NULL),(1436,91,3,'11.96','SANTIAGO AMEZQUITA',NULL,'PETRINOVICH','13',NULL,'2018-08-04 16:32:41','2018-08-04 16:35:04','1',NULL,NULL),(1437,91,NULL,'DNS','ALONSO LABARRA',NULL,'ATLETICO SPEED MAIPU','13',NULL,'2018-08-04 16:32:41','2018-08-04 16:35:05','4',NULL,NULL),(1438,91,NULL,'DNS','BENJAMIN ROACH MATESIC',NULL,'TREBULCO SCHOOL','13',NULL,'2018-08-04 16:32:41','2018-08-04 16:35:07','5',NULL,NULL),(1439,91,NULL,'DNS','GABRIEL ENRRIQUE ESCALONA',NULL,'LICEO SALESIANO CAMILO ORTUZAR ','13',NULL,'2018-08-04 16:32:41','2018-08-04 16:35:09','3',NULL,NULL),(1440,91,NULL,'DNS','JUAN FRANCISCO ROSSI',NULL,'CARAMPANGUE','13',NULL,'2018-08-04 16:32:41','2018-08-04 16:35:10','6',NULL,NULL),(1441,91,NULL,'DNS','MARCO CONTRERAS',NULL,'MAITENES','13',NULL,'2018-08-04 16:32:41','2018-08-04 16:35:11','2',NULL,NULL),(1442,92,1,'9.82','CLEMENTE RUIZ BIANCHINI',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-04 16:35:41','2018-08-04 16:54:15','4',NULL,NULL),(1443,92,2,'10.84','PATRICIO PINTO MUÑOZ',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-04 16:35:41','2018-08-04 16:54:12','6',NULL,NULL),(1444,92,3,'11.22','PEDRO DELPIANO',NULL,'COLEGIO SAN ISDRO','13',NULL,'2018-08-04 16:35:41','2018-08-04 16:54:13','5',NULL,NULL),(1445,92,4,'12.65','ELIAS GALLARDO',NULL,'CRISTIAN GARDEN','13',NULL,'2018-08-04 16:35:41','2018-08-04 16:54:14','1',NULL,NULL),(1446,92,NULL,'DNS','ALFONSO CID',NULL,'THE GRANGE SCHOOL','13',NULL,'2018-08-04 16:35:41','2018-08-04 16:54:16','3',NULL,NULL),(1447,92,NULL,'DNS','AGUSTIN COX',NULL,'SAN JOSE DE CHICUREO','13',NULL,'2018-08-04 16:35:41','2018-08-04 16:54:17','7',NULL,NULL),(1448,92,NULL,'DNS','MATIAS ZUÑIGA',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-04 16:35:41','2018-08-04 16:54:19','8',NULL,NULL),(1449,92,NULL,'DNS','BENJAMIN MUÑOZ',NULL,'SAN JOSE DE CHICUREO','13',NULL,'2018-08-04 16:35:41','2018-08-04 16:54:20','2',NULL,NULL),(1450,93,1,'10.67','GABRIEL FUENTES',NULL,'SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-04 16:38:04','2018-08-04 16:54:44','8',NULL,NULL),(1451,93,2,'10.78','ALFONSO PLANDIVIA',NULL,'PADRE HURTADO','13',NULL,'2018-08-04 16:38:04','2018-08-04 16:54:45','1',NULL,NULL),(1452,93,3,'11.66','VICENTE JULIO',NULL,'VERBO DIVINO','13',NULL,'2018-08-04 16:38:04','2018-08-04 16:54:46','4',NULL,NULL),(1453,93,4,'11.75','FRANCO BRUNETTO CASTILLO',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-04 16:38:04','2018-08-04 16:54:47','6',NULL,NULL),(1454,93,NULL,'DNS','PEDRO DELPIANO',NULL,'COLEGIO SAN ISDRO','13',NULL,'2018-08-04 16:38:04','2018-08-04 16:54:48','5',NULL,NULL),(1455,93,NULL,'DNS','SEBASTIAN MARDONEZ',NULL,'THE GREENLAND','13',NULL,'2018-08-04 16:38:04','2018-08-04 16:54:49','3',NULL,NULL),(1456,93,NULL,'DNS','SAMUEL MATTE',NULL,'MAITENES','13',NULL,'2018-08-04 16:38:04','2018-08-04 16:54:51','7',NULL,NULL),(1457,93,NULL,'DNS','NICOLAS KARAHANIAN',NULL,'SAN JOSE DE CHICUREO','13',NULL,'2018-08-04 16:38:04','2018-08-04 16:54:51','2',NULL,NULL),(1458,94,1,'10.40','MATIAS NORAMBUENA FRANCE',NULL,'VERBO DIVINO','13',NULL,'2018-08-04 16:40:27','2018-08-04 16:55:08','4',NULL,NULL),(1459,94,2,'10.47','JOSE LABBE',NULL,'SAN BENITO','13',NULL,'2018-08-04 16:40:27','2018-08-04 16:55:12','3',NULL,NULL),(1460,94,3,'10.53','DIEGO RAMÍREZ',NULL,'ALEMÁN DE SANTIAGO','13',NULL,'2018-08-04 16:40:27','2018-08-04 16:55:13','7',NULL,NULL),(1461,94,4,'10.86','CRISTÓBAL WAGNER',NULL,'ALEMÁN DE SANTIAGO','13',NULL,'2018-08-04 16:40:27','2018-08-04 16:55:14','2',NULL,NULL),(1462,94,5,'11.47','JOAQUIN CARRASCO REYES',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-04 16:40:27','2018-08-04 16:55:16','6',NULL,NULL),(1463,94,6,'12.35','JOAQUIN CASTILLO',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-04 16:40:27','2018-08-04 16:55:18','1',NULL,NULL),(1464,94,NULL,'DNS','FELIPE BERISTAIN',NULL,'COLEGIO SAN ISDRO','13',NULL,'2018-08-04 16:40:27','2018-08-04 16:55:19','5',NULL,NULL),(1465,94,NULL,'DNS','MATEO BRACCESSI',NULL,'SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-04 16:40:27','2018-08-04 16:55:21','8',NULL,NULL),(1466,95,1,'9.99','VICENTE PEREZ PELLEGRINI',NULL,'VERBO DIVINO','13',NULL,'2018-08-04 16:44:23','2018-08-04 16:55:39','4',NULL,NULL),(1467,95,2,'10.32','MARTÍN ZEPEDA R',NULL,'PEDRO DE VALDIVIA PEÑ','13',NULL,'2018-08-04 16:44:23','2018-08-04 16:55:35','2',NULL,NULL),(1468,95,3,'10.36','BENJAMÍN ARAYA FUENTES',NULL,'PADRE HURTADO','13',NULL,'2018-08-04 16:44:23','2018-08-04 16:55:36','3',NULL,NULL),(1469,95,4,'11.07','RENATO FERNANDEZ',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-04 16:44:23','2018-08-04 16:55:37','6',NULL,NULL),(1470,95,NULL,'DNS','FELIPE BERISTAIN',NULL,'COLEGIO SAN ISDRO','13',NULL,'2018-08-04 16:44:23','2018-08-04 16:55:41','5',NULL,NULL),(1471,95,NULL,'DNS','MIGUEL ALBERTO ESPINOZA BUSTAMA',NULL,'SAN FRANCISCO DE PAINE','13',NULL,'2018-08-04 16:44:23','2018-08-04 16:55:42','7',NULL,NULL),(1472,95,NULL,'DNS','JULIAN MURGIA',NULL,'SAINT MARY JOSEPH','13',NULL,'2018-08-04 16:44:23','2018-08-04 16:55:43','8',NULL,NULL),(1473,96,1,'10.36','ALFREDO VICARI',NULL,'SAINT GEORGES','13',NULL,'2018-08-04 16:48:32','2018-08-04 16:55:59','4',NULL,NULL),(1474,96,2,'10.45','LUCAS DUCAUD',NULL,'PEDRO DE VALDIVIA PEÑ','13',NULL,'2018-08-04 16:48:32','2018-08-04 16:56:01','2',NULL,NULL),(1475,96,NULL,'DNS','RENATO DOMINGUEZ',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-04 16:48:32','2018-08-04 16:56:02','5',NULL,NULL),(1476,96,NULL,'DNS','UZIEL ARANEDA',NULL,'EL ANGEL','13',NULL,'2018-08-04 16:48:32','2018-08-04 16:56:04','3',NULL,NULL),(1477,96,NULL,'DNS','DOMINGO DROSTE',NULL,'COLEGIO SAN ISDRO','13',NULL,'2018-08-04 16:48:32','2018-08-04 16:56:06','6',NULL,NULL),(1478,96,NULL,'DNS','MIGUEL ALBERTO ESPINOZA BUSTAMA',NULL,'SAN FRANCISCO DE PAINE','13',NULL,'2018-08-04 16:48:32','2018-08-04 16:56:08','7',NULL,NULL),(1479,96,NULL,'DNS','EMILIO FIGUEROA  NICOLAI',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-04 16:48:32','2018-08-04 16:56:10','8',NULL,NULL),(1480,96,NULL,'DNS','BRUNO MIRANDA ESCOBAR',NULL,'IBEROAMERICANO','13',NULL,'2018-08-04 16:48:32','2018-08-04 16:56:11','1',NULL,NULL),(1481,97,1,'10.90','MARTIAS CASTILLO',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-04 16:51:20','2018-08-04 16:56:34','5',NULL,NULL),(1482,97,2,'10.98','MARIO UBILLA GARCES',NULL,'VERBO DIVINO','13',NULL,'2018-08-04 16:51:20','2018-08-04 16:56:34','4',NULL,NULL),(1483,97,3,'11.01','IGNACIO LEMA',NULL,'SAN JOSE DE CHICUREO','13',NULL,'2018-08-04 16:51:20','2018-08-04 16:56:36','8',NULL,NULL),(1484,97,NULL,'DNS','GYANKO PARRA',NULL,'COLEGIO CIUDAD DE FRANKFORT','13',NULL,'2018-08-04 16:51:20','2018-08-04 16:56:37','3',NULL,NULL),(1485,97,NULL,'DNS','DOMINGO DROSTE',NULL,'COLEGIO SAN ISDRO','13',NULL,'2018-08-04 16:51:20','2018-08-04 16:56:38','6',NULL,NULL),(1486,97,NULL,'DNS','MARTÍN URZÚA',NULL,'INSTITUTO LA SALLE DE LA FLORID','13',NULL,'2018-08-04 16:51:20','2018-08-04 16:56:39','7',NULL,NULL),(1487,97,NULL,'DNS','GUSTAVO  MONTENEGRO',NULL,'NOCEDAL','13',NULL,'2018-08-04 16:51:20','2018-08-04 16:56:40','2',NULL,NULL),(1488,97,NULL,'DNS','BENJAMIN GONZALEZ',NULL,'CORAZON DE MARIA','13',NULL,'2018-08-04 16:51:20','2018-08-04 16:56:41','1',NULL,NULL),(1489,98,1,'10.60','JOSE MANUEL ARMAS GAJARDO',NULL,'TREBULCO SCHOOL','13',NULL,'2018-08-04 16:53:56','2018-08-04 17:09:14','5',NULL,NULL),(1490,98,2,'11.17','MARTÍN MUJICA',NULL,'COLEGIO SAN ISDRO','13',NULL,'2018-08-04 16:53:56','2018-08-04 17:09:17','6',NULL,NULL),(1491,98,3,'12.66','MAXIMILIANO ARRIAGADA',NULL,'CARAMPANGUE','13',NULL,'2018-08-04 16:53:56','2018-08-04 17:09:18','8',NULL,NULL),(1492,98,NULL,'DNS','NOAH EDWARDS',NULL,'THE GRANGE SCHOOL','13',NULL,'2018-08-04 16:53:56','2018-08-04 17:09:19','4',NULL,NULL),(1493,98,NULL,'DNS','BENJAMIN ROJAS',NULL,'COLEGIO ADVENTISTA DE SANTIAGO ','13',NULL,'2018-08-04 16:53:56','2018-08-04 17:09:20','3',NULL,NULL),(1494,98,NULL,'DNS','AGUSTIN MANDIOLA',NULL,'THE MAYFLOWER','13',NULL,'2018-08-04 16:53:56','2018-08-04 17:09:21','7',NULL,NULL),(1495,98,NULL,'DNS','MARTIN PACHECO',NULL,'CORAZON DE MARIA','13',NULL,'2018-08-04 16:53:56','2018-08-04 17:09:22','2',NULL,NULL),(1496,98,NULL,'DNS','VICENTE BARRA',NULL,'CORAZON DE MARIA','13',NULL,'2018-08-04 16:53:56','2018-08-04 17:09:23','1',NULL,NULL),(1497,99,1,'10.59','DIEGO SAVIÑON',NULL,'INSTITUCION TERESIANA','13',NULL,'2018-08-04 16:57:02','2018-08-04 17:09:37','4',NULL,NULL),(1498,99,2,'11.13','ALAN FELL MARDONES',NULL,'TREBULCO SCHOOL','13',NULL,'2018-08-04 16:57:02','2018-08-04 17:09:38','5',NULL,NULL),(1499,99,NULL,'DNS','CRISTOBAL VALDÉS',NULL,'CARAMPANGUE','13',NULL,'2018-08-04 16:57:02','2018-08-04 17:09:39','3',NULL,NULL),(1500,99,NULL,'DNS','MARTÍN MUJICA',NULL,'COLEGIO SAN ISDRO','13',NULL,'2018-08-04 16:57:02','2018-08-04 17:09:41','6',NULL,NULL),(1501,99,NULL,'DNS','CRISTÓBAL PEIRANO',NULL,'MONTE TABOR','13',NULL,'2018-08-04 16:57:02','2018-08-04 17:09:43','7',NULL,NULL),(1502,99,NULL,'DNS','AGUSTIN URIZAR',NULL,'SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-04 16:57:02','2018-08-04 17:09:44','8',NULL,NULL),(1503,99,NULL,'DNS','VICENTE DELGADO',NULL,'CORAZON DE MARIA','13',NULL,'2018-08-04 16:57:02','2018-08-04 17:09:46','2',NULL,NULL),(1504,99,NULL,'DNS','PAOLO VILLAROEL',NULL,'COMPLEJO EDUCACIONAL MAIPÚ','13',NULL,'2018-08-04 16:57:02','2018-08-04 17:09:47','1',NULL,NULL),(1505,100,1,'10.32','MARTIN ALZERRECA',NULL,'SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-04 16:59:20','2018-08-04 17:10:04','8',NULL,NULL),(1506,100,2,'10.71','MARTIN PEREZ BARRIENTOS',NULL,'TREBULCO SCHOOL','13',NULL,'2018-08-04 16:59:20','2018-08-04 17:10:05','5',NULL,NULL),(1507,100,3,'10.79','ANDRÉS OSORIO BARROS',NULL,'COLEGIO SAN ISDRO','13',NULL,'2018-08-04 16:59:20','2018-08-04 17:10:06','3',NULL,NULL),(1508,100,4,'10.90','JAVIER MORALES GARRIDO',NULL,'INSTITUTO AMERICA','13',NULL,'2018-08-04 16:59:20','2018-08-04 17:10:07','4',NULL,NULL),(1509,100,NULL,'DNS','MARTÍN ESCAIDA',NULL,'ALCANTARA PEÑALOLEN','13',NULL,'2018-08-04 16:59:20','2018-08-04 17:10:09','6',NULL,NULL),(1510,100,NULL,'DNS','MIGUEL ÁNGEL GUTIÉRREZ',NULL,'CARAMPANGUE','13',NULL,'2018-08-04 16:59:20','2018-08-04 17:10:11','7',NULL,NULL),(1511,100,NULL,'DNS','MARTIN MANRIQUEZ',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-04 16:59:20','2018-08-04 17:10:12','2',NULL,NULL),(1512,100,NULL,'DNS','GONZALO TOMÁS DUQUE GONZALEZ',NULL,'SAN FRANCISCO DE PAINE','13',NULL,'2018-08-04 16:59:20','2018-08-04 17:10:13','1',NULL,NULL),(1513,101,1,'10.04','MARTIN STEFFENS SANZ',NULL,'CABO DE HORNOS','13',NULL,'2018-08-04 17:03:00','2018-08-04 17:10:25','6',NULL,NULL),(1514,101,2,'10.71','RAIMUNDO VELASCO BARAÑAO',NULL,'VERBO DIVINO','13',NULL,'2018-08-04 17:03:00','2018-08-04 17:10:26','4',NULL,NULL),(1515,101,3,'14.24','ISAAC KALMAN',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:03:00','2018-08-04 17:10:27','5',NULL,NULL),(1516,101,4,'15.72','RARGIROA CAMPOS',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:03:00','2018-08-04 17:10:29','2',NULL,NULL),(1517,101,5,'17.15','MATIAS VIERA',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:03:00','2018-08-04 17:10:31','7',NULL,NULL),(1518,101,NULL,'DNS','ANDRÉS OSORIO BARROS',NULL,'COLEGIO SAN ISDRO','13',NULL,'2018-08-04 17:03:00','2018-08-04 17:10:33','3',NULL,NULL),(1519,101,NULL,'DNS','BENJAMIN SAN MARTIN',NULL,'CORAZON DE MARIA','13',NULL,'2018-08-04 17:03:00','2018-08-04 17:10:34','8',NULL,NULL),(1520,146,1,'13.11','FRANCESCA SEPULVEDA CUEVAS',NULL,'FRANCISCO PETRINOVIC','13',NULL,'2018-08-04 17:13:44','2018-08-04 17:14:35','7',NULL,NULL),(1521,146,2,'14.33','CATALINA ESPINOZA',NULL,'FRANCISCO PETRINOVIC','13',NULL,'2018-08-04 17:13:44','2018-08-04 17:14:36','2',NULL,NULL),(1522,146,3,'14.78','BELÉN MARCHANT RAUCO',NULL,'FRANCISCO PETRINOVIC','13',NULL,'2018-08-04 17:13:44','2018-08-04 17:14:38','4',NULL,NULL),(1523,146,4,'16.09','GABRIELA NAVARRO',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:13:44','2018-08-04 17:14:39','3',NULL,NULL),(1524,146,5,'16.18','DYLIAN ROSSE',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:13:44','2018-08-04 17:14:41','5',NULL,NULL),(1525,146,6,'17.16','FRANCISCA BASCUÑAN',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:13:44','2018-08-04 17:14:43','8',NULL,NULL),(1526,146,7,'17.82','GENESIS PEZOA',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:13:44','2018-08-04 17:14:45','6',NULL,NULL),(1527,147,1,'10.85','JOSEFINA SILVA SCHMIDT',NULL,'LA MAISONNETTE','13',NULL,'2018-08-04 17:22:35','2018-08-04 17:23:17','5',NULL,NULL),(1528,147,2,'10.95','ISIDORA PAZ ALBORNOZ URRUTIA',NULL,'ALCAZAR DE LAS CONDES','13',NULL,'2018-08-04 17:22:35','2018-08-04 17:23:18','4',NULL,NULL),(1529,147,3,'11.04','RENATA ALVARÉZ',NULL,'MIGUEL RAFAEL PRADO','13',NULL,'2018-08-04 17:22:35','2018-08-04 17:23:20','3',NULL,NULL),(1530,147,4,'11.05','CAMILA TAVONATTI',NULL,'NAZARET','13',NULL,'2018-08-04 17:22:35','2018-08-04 17:23:21','8',NULL,NULL),(1531,147,5,'11.06','ELIZABETH ARRIAGADA',NULL,'COLEGIO LA CONCEPCION','13',NULL,'2018-08-04 17:22:35','2018-08-04 17:23:22','6',NULL,NULL),(1532,147,6,'11.14','ISABEL LIRA',NULL,'ANDREE','13',NULL,'2018-08-04 17:22:35','2018-08-04 17:23:25','1',NULL,NULL),(1533,147,7,'11.15','JULIETA ZUÑIGA',NULL,'LIC.BICENTENARIO','13',NULL,'2018-08-04 17:22:35','2018-08-04 17:23:26','7',NULL,NULL),(1534,147,8,'11.31','CONSTANZA JORQUERA',NULL,'DOMINGO MATTE MESIAS','13',NULL,'2018-08-04 17:22:35','2018-08-04 17:23:27','2',NULL,NULL),(1535,148,1,'9.67','ANDRES REFUSTA',NULL,'LINCOLN CHICUREO','13',NULL,'2018-08-04 17:29:01','2018-08-04 17:29:40','4',NULL,NULL),(1536,148,2,'9.74','CLEMENTE RUIZ BIANCHINI',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-04 17:29:01','2018-08-04 17:29:41','5',NULL,NULL),(1537,148,3,'10.03','VICENTE PEREZ PELLEGRINI',NULL,'VERBO DIVINO','13',NULL,'2018-08-04 17:29:01','2018-08-04 17:29:35','3',NULL,NULL),(1538,148,4,'10.08','MARTIN STEFFENS SANZ',NULL,'CABO DE HORNOS','13',NULL,'2018-08-04 17:29:01','2018-08-04 17:29:36','6',NULL,NULL),(1539,148,5,'10.41','MARTÍN ZEPEDA R',NULL,'PEDRO DE VALDIVIA PEÑ','13',NULL,'2018-08-04 17:29:01','2018-08-04 17:29:37','7',NULL,NULL),(1540,148,6,'10.47','ALFREDO VICARI',NULL,'SAINT GEORGES','13',NULL,'2018-08-04 17:29:01','2018-08-04 17:29:38','1',NULL,NULL),(1541,148,7,'10.48','MARTIN ALZERRECA',NULL,'SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-04 17:29:01','2018-08-04 17:29:39','8',NULL,NULL),(1542,148,NULL,'DNS','BENJAMÍN ARAYA FUENTES',NULL,'PADRE HURTADO','13',NULL,'2018-08-04 17:29:01','2018-08-04 17:29:42','2',NULL,NULL),(1543,149,1,'11.00','MATÍAS IVAN SOTO SOTO',NULL,'FRANCISCO PETRINOVIC','13',NULL,'2018-08-04 17:40:14','2018-08-04 17:40:38','3',NULL,NULL),(1544,149,2,'11.74','DANIEL HERRERA CORDERO',NULL,'FRANCISCO PETRINOVIC','13',NULL,'2018-08-04 17:40:14','2018-08-04 17:40:40','2',NULL,NULL),(1545,149,3,'12.53','VICENTE GONZALEZ GONZALEZ',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:40:14','2018-08-04 17:40:42','1',NULL,NULL),(1546,149,4,'12.95','MARTIN GUTIERREZ',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:40:14','2018-08-04 17:40:45','4',NULL,NULL),(1547,149,5,'18.18','MATIAS BUSTOS SAENZ',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:40:14','2018-08-04 17:40:47','5',NULL,NULL),(1548,150,1,'12.77','KEVIN RAMIREZ',NULL,'SANTA MARIA','13',NULL,'2018-08-04 17:43:10','2018-08-04 17:43:32','4',NULL,NULL),(1549,150,2,'13.74','MATIAS PEREZ',NULL,'SANTA MARIA','13',NULL,'2018-08-04 17:43:10','2018-08-04 17:43:34','5',NULL,NULL),(1550,150,3,'13.94','BENJAMIN SANCHEZ ZARATE',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:43:10','2018-08-04 17:43:36','3',NULL,NULL),(1551,150,4,'16.37','ANGEL KAMAU CAMPOS',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:43:10','2018-08-04 17:43:39','2',NULL,NULL),(1552,150,5,'16.78','MARTIN TORRES',NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-04 17:43:10','2018-08-04 17:43:41','1',NULL,NULL),(1553,142,1,'13.18','MATHILDE SANDROCK',NULL,'ALEMÁN DE SANTIAGO','13',NULL,'2018-08-05 14:45:55','2018-08-05 14:46:04','3',NULL,NULL),(1554,142,2,'14.79','MACARENA ACHURRA LUCK',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-05 14:45:55','2018-08-05 14:46:08','7',NULL,NULL),(1555,142,3,'16.28','ISIDORA SANTA CRUZ',NULL,'NAZARET','13',NULL,'2018-08-05 14:45:55','2018-08-05 14:46:11','4',NULL,NULL),(1556,142,4,'17.40','ANTONIA CAROCA',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-05 14:45:55','2018-08-05 14:46:13','8',NULL,NULL),(1557,142,5,'18.08','AMELIA VARAS',NULL,'NAZARET','13',NULL,'2018-08-05 14:45:55','2018-08-05 14:46:16','5',NULL,NULL),(1558,142,6,'20.13','AMANDA GIL',NULL,'ALEMÁN DE SANTIAGO','13',NULL,'2018-08-05 14:45:55','2018-08-05 14:46:20','6',NULL,NULL),(1559,152,1,'13.75','MARTINA QUEZADA CORTES',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-05 14:59:58','2018-08-05 14:59:58','5',NULL,NULL),(1560,152,2,'14.05','CATALINA ABARCA',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 14:59:58','2018-08-05 14:59:58','4',NULL,NULL),(1561,152,3,'14.25','PAULA PÉREZ ESPINOZA',NULL,'MAYOR PEÑALOLÉN','13',NULL,'2018-08-05 14:59:58','2018-08-05 14:59:58','7',NULL,NULL),(1562,152,4,'14.25','MACARENA ÁLVAREZ REYES',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-05 14:59:58','2018-08-05 14:59:58','6',NULL,NULL),(1563,152,NULL,'DNF','JAVIERA GARCÍA',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-05 14:59:58','2018-08-05 14:59:58','8',NULL,NULL),(1564,152,NULL,'DNS','AGUSTINA CASES',NULL,'SANTA URSULA','13',NULL,'2018-08-05 14:59:58','2018-08-05 14:59:58','3',NULL,NULL),(1565,152,NULL,'DNS','MATILDE MUÑOZ',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-05 14:59:58','2018-08-05 14:59:58','2',NULL,NULL),(1566,152,NULL,'DNS','AMELIA BABOUN',NULL,'NAZARET','13',NULL,'2018-08-05 14:59:58','2018-08-05 14:59:58','1',NULL,NULL),(1567,153,1,'14.38','PEDRO MORALES',NULL,'SAINT GEORGES','13',NULL,'2018-08-05 15:10:42','2018-08-05 15:10:53','4',NULL,NULL),(1568,153,2,'14.42','CRISTOBAL BERNALES MAGNERE',NULL,'VERBO DIVINO','13',NULL,'2018-08-05 15:10:42','2018-08-05 15:10:55','3',NULL,NULL),(1569,153,3,'15.39','LUCAS PALACIOS NAZIF',NULL,'SSCC MANQUEHUE','13',NULL,'2018-08-05 15:10:42','2018-08-05 15:10:56','5',NULL,NULL),(1570,153,4,'15.60','SEBASTIAN LÓPEZ',NULL,'SAINT GEORGES','13',NULL,'2018-08-05 15:10:42','2018-08-05 15:10:58','6',NULL,NULL),(1571,153,5,'20.78','JOAQUIN CARRASCO REYES',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-05 15:10:42','2018-08-05 15:10:59','8',NULL,NULL),(1572,153,NULL,'DNS','LUCAS DUCAUD',NULL,'PEDRO DE VALDIVIA PEÑALOLEN','13',NULL,'2018-08-05 15:10:42','2018-08-05 15:11:01','7',NULL,NULL),(1573,113,1,'21.81','MARTINA ZUÑIGA',NULL,'ALTAS CUMBRES','13',NULL,'2018-08-05 15:38:57','2018-08-05 15:38:57','1',NULL,NULL),(1574,113,2,'22.30','FERNANDA BRAVO OVIEDO',NULL,'TREBULCO SCHOOL','13',NULL,'2018-08-05 15:38:57','2018-08-05 15:38:57','6',NULL,NULL),(1575,113,3,'23.20','CATALINA ESCOBAR',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 15:38:57','2018-08-05 15:38:57','7',NULL,NULL),(1576,114,1,'21.15','JOSEFA MERINO',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-05 15:45:54','2018-08-05 15:45:54','6',NULL,NULL),(1577,114,2,'21.22','FRANCISCA ROJAS',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 15:45:54','2018-08-05 15:45:54','5',NULL,NULL),(1578,114,3,'21.61','FRANCISCA ROJAS',NULL,'MONTE VERDE','13',NULL,'2018-08-05 15:45:54','2018-08-05 15:45:54','3',NULL,NULL),(1579,114,4,'22.24','MARTINA BAEZA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 15:45:54','2018-08-05 15:45:54','8',NULL,NULL),(1580,114,5,'23.39','JAVIERA COOPER',NULL,'CORAZON DE MARIA','13',NULL,'2018-08-05 15:45:54','2018-08-05 15:45:54','1',NULL,NULL),(1581,114,NULL,'DNS','FLORENCIA BENAVIDES',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-05 15:45:54','2018-08-05 15:45:54','4',NULL,NULL),(1582,114,NULL,'DNS','ANTONIA MORENO',NULL,'CARMELA CARVAJAL','13',NULL,'2018-08-05 15:45:54','2018-08-05 15:45:54','7',NULL,NULL),(1583,114,NULL,'DNS','FERNANDA NAPOLITANO',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-05 15:45:54','2018-08-05 15:45:54','2',NULL,NULL),(1584,115,1,'21.07','RENATA ALVARÉZ',NULL,'MIGUEL RAFAEL PRADO','13',NULL,'2018-08-05 15:52:36','2018-08-05 15:52:36','5',NULL,NULL),(1585,115,2,'21.63','MARTINA FERRADA',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-05 15:52:36','2018-08-05 15:52:36','7',NULL,NULL),(1586,115,3,'22.09','JOSEFA LOPEZ',NULL,'A. SANTIAGO','13',NULL,'2018-08-05 15:52:36','2018-08-05 15:52:36','3',NULL,NULL),(1587,115,4,'22.20','CATALINA TORO',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 15:52:36','2018-08-05 15:52:36','6',NULL,NULL),(1588,115,5,'23.00','SOFIA DURAN',NULL,'EMPRENDEDOR LARA PINTO','13',NULL,'2018-08-05 15:52:36','2018-08-05 15:52:36','1',NULL,NULL),(1589,115,6,'23.76','ESCARLETH REBOLLEDO',NULL,'IBEROAMERICANO','13',NULL,'2018-08-05 15:52:36','2018-08-05 15:52:36','2',NULL,NULL),(1590,115,7,'25.95','ENRIQUETA MARTINEZ',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-05 15:52:36','2018-08-05 15:52:36','4',NULL,NULL),(1591,115,NULL,'DNS','MARTINA BAEZA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 15:52:36','2018-08-05 15:52:36','8',NULL,NULL),(1592,116,1,'21.51','FLORENCIA TAVONATTI',NULL,'NAZARET','13',NULL,'2018-08-05 15:58:58','2018-08-05 15:58:58','7',NULL,NULL),(1593,116,2,'21.74','MARTINA HERNANDEZ',NULL,'LICEO AGUSTO D HALMAR','13',NULL,'2018-08-05 15:58:58','2018-08-05 15:58:58','6',NULL,NULL),(1594,116,3,'22.79','ISIDORA GAMBOA',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-05 15:58:58','2018-08-05 15:58:58','8',NULL,NULL),(1595,116,4,'23.08','MAGDALENA OLIVARES JIMENEZ',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-05 15:58:58','2018-08-05 15:58:58','4',NULL,NULL),(1596,116,NULL,'DNS','CLARITA ESCUDERO',NULL,'SIN CLUB','13',NULL,'2018-08-05 15:58:58','2018-08-05 15:58:58','5',NULL,NULL),(1597,116,NULL,'DNS','TERESITA LATORRE',NULL,'SIN CLUB','13',NULL,'2018-08-05 15:58:58','2018-08-05 15:58:58','3',NULL,NULL),(1598,116,NULL,'DNS','CAROLINA SOTO',NULL,'THE GREENLAND SCHOOL','13',NULL,'2018-08-05 15:58:58','2018-08-05 15:58:58','2',NULL,NULL),(1599,117,1,'21.78','IGNACIA PINTO',NULL,'ARTURO TORO AMOR','13',NULL,'2018-08-05 16:01:01','2018-08-05 16:01:01','3',NULL,NULL),(1600,117,2,'22.12','BEATRIZ PIZARRO PRECHT',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-05 16:01:01','2018-08-05 16:01:01','4',NULL,NULL),(1601,117,3,'22.63','JAVIERA GARCÍA',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-05 16:01:01','2018-08-05 16:01:01','7',NULL,NULL),(1602,117,4,'22.85','VALENTINA CISNEROS',NULL,'COLEGIO SAN FRANCISCO JAVIER DE','13',NULL,'2018-08-05 16:01:01','2018-08-05 16:01:01','8',NULL,NULL),(1603,117,NULL,'DNS','FERNANDA SAAVEDRA',NULL,'LA MISIÓN','13',NULL,'2018-08-05 16:01:01','2018-08-05 16:01:01','5',NULL,NULL),(1604,117,NULL,'DNS','CATALINA RIOS',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-05 16:01:01','2018-08-05 16:01:01','6',NULL,NULL),(1605,117,NULL,'DNS','ELISA FERNANDEZ CACERES',NULL,'L. MURIALDO','13',NULL,'2018-08-05 16:01:01','2018-08-05 16:01:01','2',NULL,NULL),(1606,118,1,'21.81','MARTINA QUEZADA CORTES',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-05 16:03:26','2018-08-05 16:04:10','4',NULL,NULL),(1607,118,2,'27.72','MAGDALENA CASTRO',NULL,'IBEROAMERICANO','13',NULL,'2018-08-05 16:03:26','2018-08-05 16:04:19','8',NULL,NULL),(1608,118,NULL,'DNS','ISIDORA JIMENEZ MALDONADO',NULL,'ATLETICO SPEED MAIPU','13',NULL,'2018-08-05 16:03:26','2018-08-05 16:03:26','5',NULL,NULL),(1609,118,NULL,'DNS','AGUSTINA DALL\'OLIO FERNÁNDEZ',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-05 16:03:26','2018-08-05 16:03:26','3',NULL,NULL),(1610,118,NULL,'DNS','FRANCISCA O´KREY',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-05 16:03:26','2018-08-05 16:03:26','6',NULL,NULL),(1611,118,NULL,'DNS','PAULINA PALMA',NULL,'CARAMPANGUE','13',NULL,'2018-08-05 16:03:26','2018-08-05 16:03:26','7',NULL,NULL),(1612,118,NULL,'DNS','TATIANA GOMEZ MOLINA',NULL,'DE SANTA MARÍA','13',NULL,'2018-08-05 16:03:26','2018-08-05 16:03:26','2',NULL,NULL),(1613,118,NULL,'DNS','ANDREA QUINTANA',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-05 16:03:26','2018-08-05 16:03:26','1',NULL,NULL),(1614,119,1,'20.97','FLORENCIA MILLAR',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 16:06:36','2018-08-05 16:06:36','5',NULL,NULL),(1615,119,2,'21.86','FLORENCIA BALBOA',NULL,'EPULLAY','13',NULL,'2018-08-05 16:06:36','2018-08-05 16:06:36','6',NULL,NULL),(1616,119,3,'22.34','CAROLINA FELLAY',NULL,'NAZARET','13',NULL,'2018-08-05 16:06:36','2018-08-05 16:06:36','8',NULL,NULL),(1617,119,4,'22.91','CATALINA ABARCA',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 16:06:36','2018-08-05 16:06:36','3',NULL,NULL),(1618,119,NULL,'DNS','SOFIA ZAMBRANO IP',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-05 16:06:36','2018-08-05 16:06:36','4',NULL,NULL),(1619,119,NULL,'DNS','ELISA VARELA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 16:06:36','2018-08-05 16:06:36','7',NULL,NULL),(1620,119,NULL,'DNS','RENATA MEZA CASTRO',NULL,'L. MURIALDO','13',NULL,'2018-08-05 16:06:36','2018-08-05 16:06:36','2',NULL,NULL),(1621,119,NULL,'DNS','AMPARO ANGUITA',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-05 16:06:36','2018-08-05 16:06:36','1',NULL,NULL),(1622,120,1,'22.13','FRANCISCA FABIO',NULL,'COLEGIO MANQUECURA','13',NULL,'2018-08-05 16:08:43','2018-08-05 16:08:43','5',NULL,NULL),(1623,120,2,'24.87','NICOLE SARA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 16:08:43','2018-08-05 16:08:43','8',NULL,NULL),(1624,120,NULL,'DNS','FLORENCIA VALDES',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-05 16:08:43','2018-08-05 16:08:43','4',NULL,NULL),(1625,120,NULL,'DNS','OCTAVIA LAZCANO',NULL,'ANTARTICA CHILENA','13',NULL,'2018-08-05 16:08:43','2018-08-05 16:08:43','3',NULL,NULL),(1626,120,NULL,'DNS','BELEN ARISTIZABAL',NULL,'THE MAYFLOWER','13',NULL,'2018-08-05 16:08:43','2018-08-05 16:08:43','6',NULL,NULL),(1627,120,NULL,'DNS','DANIELA PUGA',NULL,'CARAMPANGUE','13',NULL,'2018-08-05 16:08:43','2018-08-05 16:08:43','7',NULL,NULL),(1628,120,NULL,'DNS','MARIA ERRAZURIZ',NULL,'COLEGIO LOS ANDES','13',NULL,'2018-08-05 16:08:43','2018-08-05 16:08:43','2',NULL,NULL),(1629,120,NULL,'DNS','CONSUELO ANTUNEZ',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-05 16:08:43','2018-08-05 16:08:43','1',NULL,NULL),(1630,121,1,'21.56','CONSTANZA JORQUERA',NULL,'DOMINGO MATTE MESIAS','13',NULL,'2018-08-05 16:12:26','2018-08-05 16:12:26','5',NULL,NULL),(1631,121,NULL,'DNS','TERESITA RUIZ',NULL,'SIN CLUB','13',NULL,'2018-08-05 16:12:26','2018-08-05 16:12:26','4',NULL,NULL),(1632,121,NULL,'DNS','LUCIA HERRERA',NULL,'SIN CLUB','13',NULL,'2018-08-05 16:12:26','2018-08-05 16:12:26','3',NULL,NULL),(1633,121,NULL,'DNS','TRINIDAD FERNANDEZ',NULL,'SAN JOSE DE CHICUREO','13',NULL,'2018-08-05 16:12:26','2018-08-05 16:12:26','6',NULL,NULL),(1634,121,NULL,'DNS','ENIGER PEREZ VERA',NULL,'ARTURO ECHAZARRETA','13',NULL,'2018-08-05 16:12:26','2018-08-05 16:12:26','7',NULL,NULL),(1635,121,NULL,'DNS','NICOLE SARA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 16:12:26','2018-08-05 16:12:26','8',NULL,NULL),(1636,121,NULL,'DNS','PILAR CACERES VASQUEZ',NULL,'L. MURIALDO','13',NULL,'2018-08-05 16:12:26','2018-08-05 16:12:26','2',NULL,NULL),(1637,121,NULL,'DNS','MATILDE MUÑOZ',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-05 16:12:26','2018-08-05 16:12:26','1',NULL,NULL),(1638,122,1,'20.71','JULIETA ZUÑIGA',NULL,'LICEO BICENTENARIO DE NIÑAS DE ','13',NULL,'2018-08-05 16:20:56','2018-08-05 16:20:56','5',NULL,NULL),(1639,122,2,'21.71','ANTONIA CERDA KETERER',NULL,'COLEGIO DEL SAGRADO CORAZON','13',NULL,'2018-08-05 16:20:56','2018-08-05 16:20:56','4',NULL,NULL),(1640,122,3,'21.82','MARTINA PRIDA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 16:20:56','2018-08-05 16:20:56','8',NULL,NULL),(1641,122,NULL,'DNS','VALENTINA QUEZADA QUIROS',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-05 16:20:56','2018-08-05 16:20:56','3',NULL,NULL),(1642,122,NULL,'DNS','CONSTANZA GARÍN GIACOMAN',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-05 16:20:56','2018-08-05 16:20:56','6',NULL,NULL),(1643,122,NULL,'DNS','ELISA VARELA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 16:20:56','2018-08-05 16:20:56','7',NULL,NULL),(1644,122,NULL,'DNS','SAGRARIO VIÑUELA',NULL,'COLEGIO LOS ANDES','13',NULL,'2018-08-05 16:20:56','2018-08-05 16:20:56','2',NULL,NULL),(1645,122,NULL,'DNS','MARGARITA SANTA MARÍA',NULL,'SAINT GEORGES COLLEGE','13',NULL,'2018-08-05 16:20:56','2018-08-05 16:20:56','1',NULL,NULL),(1646,123,1,'20.36','ELIZABETH ARRIAGADA',NULL,'COLEGIO LA CONCEPCIÓN','13',NULL,'2018-08-05 16:22:55','2018-08-05 16:22:55','5',NULL,NULL),(1647,123,2,'22.30','OLIVIA LYON',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 16:22:55','2018-08-05 16:22:55','7',NULL,NULL),(1648,123,3,'23.20','FERNANDA CASANOVA CASANOVA',NULL,'L. MURIALDO','13',NULL,'2018-08-05 16:22:55','2018-08-05 16:22:55','2',NULL,NULL),(1649,123,NULL,'DNS','VALENTINA BARAYON DEL CAMPO',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-05 16:22:55','2018-08-05 16:22:55','3',NULL,NULL),(1650,123,NULL,'DNS','FERNANDA QUEIROLO',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-05 16:22:55','2018-08-05 16:22:55','6',NULL,NULL),(1651,123,NULL,'DNS','MARTINA PRIDA',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 16:22:55','2018-08-05 16:22:55','8',NULL,NULL),(1652,123,NULL,'DNS','ROSARIO DONOSO',NULL,'COLEGIO LOS ANDES','13',NULL,'2018-08-05 16:22:55','2018-08-05 16:22:55','1',NULL,NULL),(1653,124,1,'20.51','ISIDORA PAZ ALBORNOZ URRUTIA',NULL,'ALCAZAR DE LAS CONDES','13',NULL,'2018-08-05 16:37:29','2018-08-05 16:37:29','3',NULL,NULL),(1654,124,2,'21.02','CAMILA TAVONATTI',NULL,'NAZARET','13',NULL,'2018-08-05 16:37:29','2018-08-05 16:37:29','8',NULL,NULL),(1655,124,3,'21.49','MACARENA ÁLVAREZ REYES',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-05 16:37:29','2018-08-05 16:37:29','1',NULL,NULL),(1656,124,NULL,'DNS','GRACIA AVARIA',NULL,'SIN CLUB','13',NULL,'2018-08-05 16:37:29','2018-08-05 16:37:29','4',NULL,NULL),(1657,124,NULL,'DNS','ASUNCIÓN FIGUEROA BAUZÁ',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-05 16:37:29','2018-08-05 16:37:29','5',NULL,NULL),(1658,124,NULL,'DNS','PILAR VALLOTTON',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-05 16:37:29','2018-08-05 16:37:29','6',NULL,NULL),(1659,124,NULL,'DNS','OLIVIA LYON',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 16:37:29','2018-08-05 16:37:29','7',NULL,NULL),(1660,124,NULL,'DNS','JOSEFA IRARRAZABAL',NULL,'COLEGIO LOS ANDES','13',NULL,'2018-08-05 16:37:29','2018-08-05 16:37:29','2',NULL,NULL),(1661,125,1,'22.79','CATALINA DEL CAMPO PÉREZ-IÑIGO',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-05 16:44:24','2018-08-05 16:44:24','2',NULL,NULL),(1662,125,2,'23.36','ANTONELLA RIOS',NULL,'ATLETICO SPEED MAIPU','13',NULL,'2018-08-05 16:44:24','2018-08-05 16:44:24','5',NULL,NULL),(1663,125,NULL,'DNS','KEIKO KOBAYASHI SILVA',NULL,'ATLETICO SPEED MAIPU','13',NULL,'2018-08-05 16:44:24','2018-08-05 16:44:24','4',NULL,NULL),(1664,125,NULL,'DNS','ANTONIA BARROSO',NULL,'THE MAYFLOWER','13',NULL,'2018-08-05 16:44:24','2018-08-05 16:44:24','3',NULL,NULL),(1665,125,NULL,'DNS','MA JESUS CARVALLO',NULL,'THE MAYFLOWER','13',NULL,'2018-08-05 16:44:24','2018-08-05 16:44:24','6',NULL,NULL),(1666,125,NULL,'DNS','CATALINA NORAMBUENA',NULL,'MANUEL ANTONIO MATTA','13',NULL,'2018-08-05 16:44:24','2018-08-05 16:44:24','7',NULL,NULL),(1667,125,NULL,'DNS','MATINA ZUÑIGA',NULL,'ALTAS CUMBRES DEL ROSAL','13',NULL,'2018-08-05 16:44:24','2018-08-05 16:44:24','8',NULL,NULL),(1668,125,NULL,'DNS','MARIANA OVALLE',NULL,'COLEGIO LOS ANDES','13',NULL,'2018-08-05 16:44:24','2018-08-05 16:44:24','1',NULL,NULL),(1669,126,1,'22.44','CONSTANZA ZANGUINETTI',NULL,'C. ALEMAN','13',NULL,'2018-08-05 16:48:49','2018-08-05 16:48:49','3',NULL,NULL),(1670,154,1,'19.42','DIEGO CEAVIGÑON',NULL,'INT. TERESIANA','13',NULL,'2018-08-05 17:22:41','2018-08-05 17:22:41','4',NULL,NULL),(1671,154,2,'19.96','MARTIN URSUA',NULL,'LA SALLE - LA FLORIDA','13',NULL,'2018-08-05 17:22:41','2018-08-05 17:22:41','1',NULL,NULL),(1672,154,3,'20.45','BEJAMIN GUERRERO',NULL,'CHRIST SCHOOL','13',NULL,'2018-08-05 17:22:41','2018-08-05 17:22:41','3',NULL,NULL),(1673,154,4,'20.81','PEDRO DEL PIANO',NULL,'COLEGIO SAN ISIDRO','13',NULL,'2018-08-05 17:22:41','2018-08-05 17:22:41','8',NULL,NULL),(1674,154,5,'21.34','JOAQUIN CARRASCO',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-05 17:22:41','2018-08-05 17:22:41','2',NULL,NULL),(1675,154,6,'22.24','FRANCO BRUNETTO',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-05 17:22:41','2018-08-05 17:22:41','7',NULL,NULL),(1676,78,7,'2:25.19','Ariel Mardones',NULL,'El Bosque','13',NULL,'2018-08-05 18:32:10','2018-08-05 18:43:49','',NULL,NULL),(1677,76,8,'2:28.79','José  Figueroa',NULL,'S. I. del Bosque','13',NULL,'2018-08-05 18:34:01','2018-08-05 18:45:48','',NULL,NULL),(1678,109,9,'3:11.40','VALENTINA CATALAN',NULL,'EL BOSQUE','13',NULL,'2018-08-05 18:48:56','2018-08-05 18:52:10','8',NULL,NULL),(1679,156,1,'17.80','ANDRES REFUSTA',NULL,'LINCOLN CHICUREO','13',NULL,'2018-08-05 18:52:04','2018-08-05 18:52:04','4',NULL,NULL),(1680,156,2,'18.33','CLEMENTE RUIZ BIANCHINI',NULL,'COLEGIO CUMBRES','13',NULL,'2018-08-05 18:52:04','2018-08-05 18:52:04','3',NULL,NULL),(1681,156,3,'18.43','MARTIN STEFFENS SANZ',NULL,'CABO DE HORNOS','13',NULL,'2018-08-05 18:52:04','2018-08-05 18:52:04','5',NULL,NULL),(1682,156,4,'19.19','ALFREDO VICARI',NULL,'SAINT GEORGES','13',NULL,'2018-08-05 18:52:04','2018-08-05 18:52:04','6',NULL,NULL),(1683,156,5,'19.38','MARTIN ALZERRECA',NULL,'SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-05 18:52:04','2018-08-05 18:52:04','1',NULL,NULL),(1684,156,6,'19.38','JOSÉ LABBÉ KHÖLER',NULL,'SAN BENITO','13',NULL,'2018-08-05 18:52:04','2018-08-05 18:52:04','8',NULL,NULL),(1685,156,7,'19.43','MATIAS NORAMBUENA FRANCE',NULL,'VERBO DIVINO','13',NULL,'2018-08-05 18:52:04','2018-08-05 18:52:04','2',NULL,NULL),(1686,156,NULL,'DNS','DIEGO CEAVIGÑON',NULL,'INT. TERESIANA','13',NULL,'2018-08-05 18:52:04','2018-08-05 18:52:04','7',NULL,NULL),(1695,109,8,'3:01.97','ANTONELLA SANCHEZ',NULL,'ATLETICO SPEED MAIPU','13',NULL,'2018-08-05 19:03:00','2018-08-05 19:12:45','6',NULL,NULL),(1696,109,NULL,'DNF','SOFIA FIGUEROA',NULL,'SAN BENITO','13',NULL,'2018-08-05 19:03:45','2018-08-05 19:03:45','4',NULL,NULL),(1697,109,10,'3:19.04','MARIA IGNACIA CARRERA',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 19:05:14','2018-08-05 19:13:05','7',NULL,NULL),(1698,109,5,'2:44.51','YAREMMY RAMIREZ SANCHEZ',NULL,'ESCUELA TEGUALDA','13',NULL,'2018-08-05 19:06:07','2018-08-05 19:13:18','8',NULL,NULL),(1699,109,7,'2:53.03','EMILIA HERNANDEZ',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 19:07:36','2018-08-05 19:13:39','2',NULL,NULL),(1700,155,1,'17.92','ANDRÉS REFUSTA',NULL,'LINCONLN CHICUREO','13',NULL,'2018-08-05 19:07:45','2018-08-05 19:07:45','4',NULL,NULL),(1701,109,4,'2:44.29','ANTONELLA GONZALEZ GUZMAN',NULL,'ALTO DEL VALLE','13',NULL,'2018-08-05 19:08:17','2018-08-05 19:13:54','3',NULL,NULL),(1702,155,2,'19.65','MARTÍN PÉREZ',NULL,'TREBULCO SCHOOL','13',NULL,'2018-08-05 19:08:20','2018-08-05 19:08:20','6',NULL,NULL),(1703,155,3,'20.51','MARIO UBILLA',NULL,'VERBO DIVINO','13',NULL,'2018-08-05 19:08:51','2018-08-05 19:08:51','3',NULL,NULL),(1704,109,11,'3:20.79','BARBARA ALFARO',NULL,'EMELINA URRUTIA','13',NULL,'2018-08-05 19:09:11','2018-08-05 19:14:12','5',NULL,NULL),(1705,155,4,'20.58','MARTÍN MUJICA',NULL,'C. SAN ISIDRO','13',NULL,'2018-08-05 19:09:57','2018-08-05 19:10:11','5',NULL,NULL),(1706,109,NULL,'DNF','MILLARAY CATRIL',NULL,'EL BOSQUE','13',NULL,'2018-08-05 19:10:14','2018-08-05 19:10:48','4',NULL,NULL),(1707,155,5,'20.99','RENATO FERNÁNDEZ',NULL,'SSCC ALAMEDA ','13',NULL,'2018-08-05 19:11:10','2018-08-05 19:11:10','7',NULL,NULL),(1708,109,2,'2:39.51','DANAE MELLA ',NULL,'DE SANTA MARIA ','13',NULL,'2018-08-05 19:11:29','2018-08-05 19:15:18','6',NULL,NULL),(1709,155,6,'22.71','FELIPE AYBAR',NULL,'COMPAÑIA DE MARÍA','13',NULL,'2018-08-05 19:11:49','2018-08-05 19:11:49','1',NULL,NULL),(1711,158,1,'18.51','MARTÍN STEFFENS',NULL,'CABO DE HORNOS','13',NULL,'2018-08-05 19:13:33','2018-08-05 19:17:44','1',NULL,NULL),(1712,158,2,'19.51','JOSÉ LABBÉ',NULL,'SAN BENITO','13',NULL,'2018-08-05 19:14:11','2018-08-05 19:14:11','6',NULL,NULL),(1713,158,3,'19.52','MATÍAS NORAMBUENA',NULL,'VERBO DIVINO','13',NULL,'2018-08-05 19:14:45','2018-08-05 19:14:45','5',NULL,NULL),(1714,158,4,'20.09','ANDRÉS OSORIO',NULL,'C. SAN ISIDRO','13',NULL,'2018-08-05 19:16:32','2018-08-05 19:17:37','7',NULL,NULL),(1715,158,5,'21.07','MAICOL ROVERES',NULL,'MONSEÑOR ALVEAR','13',NULL,'2018-08-05 19:18:44','2018-08-05 19:18:44','3',NULL,NULL),(1716,158,6,'22.41','FELIPE BERISTAIN',NULL,'C. SAN ISIDRO','13',NULL,'2018-08-05 19:19:22','2018-08-05 19:19:22','2',NULL,NULL),(1717,158,7,'23.19','GYANKO PARRA',NULL,'CIUDAD DE FRANKFOR','13',NULL,'2018-08-05 19:20:20','2018-08-05 19:20:20','4',NULL,NULL),(1718,159,1,'18.51','CLEMENTE RUIZ',NULL,'C. CUMBRES','13',NULL,'2018-08-05 19:21:44','2018-08-05 19:21:44','3',NULL,NULL),(1719,159,2,'18.88','ALFREDO VICARI',NULL,'SAINT GEORGES','13',NULL,'2018-08-05 19:22:45','2018-08-05 19:22:45','3',NULL,NULL),(1720,157,1,'20.20','ISIDORA PAZ ALBORNOZ URRUTIA',NULL,'ALCAZAR DE LAS CONDES','13',NULL,'2018-08-05 19:22:52','2018-08-05 19:22:52','5',NULL,NULL),(1721,157,2,'20.52','JULIETA ZUÑIGA',NULL,'LICEO BICENTENARIO DE NIÑAS DE ','13',NULL,'2018-08-05 19:22:52','2018-08-05 19:22:52','3',NULL,NULL),(1722,157,3,'20.70','FLORENCIA MILLAR',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 19:22:52','2018-08-05 19:22:52','6',NULL,NULL),(1723,157,4,'20.86','CAMILA TAVONATTI',NULL,'NAZARET','13',NULL,'2018-08-05 19:22:52','2018-08-05 19:22:52','7',NULL,NULL),(1724,157,5,'20.89','RENATA ALVARÉZ',NULL,'MIGUEL RAFAEL PRADO','13',NULL,'2018-08-05 19:22:52','2018-08-05 19:22:52','8',NULL,NULL),(1725,157,6,'21.57','JOSEFA MERINO',NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-05 19:22:52','2018-08-05 19:22:52','2',NULL,NULL),(1726,157,7,'22.08','FRANCISCA ROJAS',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 19:22:52','2018-08-05 19:22:52','1',NULL,NULL),(1727,157,NULL,'DNS','ELIZABETH ARRIAGADA',NULL,'COLEGIO LA CONCEPCIÓN','13',NULL,'2018-08-05 19:22:52','2018-08-05 19:22:52','4',NULL,NULL),(1728,159,3,'19.52','MARTÍN ALZERRECA',NULL,'S. I. del Bosque','13',NULL,'2018-08-05 19:23:30','2018-08-05 19:23:30','6',NULL,NULL),(1729,159,4,'20.22','GABRIEL FUENTES',NULL,'S. I. del Bosque','13',NULL,'2018-08-05 19:24:26','2018-08-05 19:24:26','5',NULL,NULL),(1730,159,5,'20.41','MARTÍN PERELLO',NULL,'LIC. LEONARDO MURIALDO','13',NULL,'2018-08-05 19:25:13','2018-08-05 19:25:13','1',NULL,NULL),(1731,159,6,'23.79','MAXIMILIANO ARRIAGADA',NULL,'CARAMPANGUE','13',NULL,'2018-08-05 19:25:53','2018-08-05 19:25:53','2',NULL,NULL),(1732,74,1,'6:38.59','ANDREE BUC RAMIREZ',NULL,'TREBULCO SCHOOL','13',NULL,'2018-08-05 19:30:40','2018-08-05 19:30:40','0',NULL,NULL),(1733,74,2,'6:47.00','MARCELO CRUZ',NULL,'LA MISIÓN','13',NULL,'2018-08-05 19:30:40','2018-08-05 19:30:40','0',NULL,NULL),(1734,74,3,'6:54.09','FERNANDO FRITZ',NULL,'MANQUECURA','13',NULL,'2018-08-05 19:30:40','2018-08-05 19:30:40','0',NULL,NULL),(1735,74,4,'6:58.98','LUCAS ALBERTO JARA GAGGERO',NULL,'INSTITUTO LA SALLE DE LA FLORIDA','13',NULL,'2018-08-05 19:30:40','2018-08-05 19:30:40','0',NULL,NULL),(1736,74,5,'7:06.85','NATHAN CATALDO CHOQUE',NULL,'ATLETICO SPEED MAIPU','13',NULL,'2018-08-05 19:30:40','2018-08-05 19:30:40','0',NULL,NULL),(1737,74,6,'7:23.49','JORGE MARTINEZ BERRIOS',NULL,'MARIO BERTEROCEVASCO','13',NULL,'2018-08-05 19:30:40','2018-08-05 19:30:40','0',NULL,NULL),(1738,74,7,'8:34.66','ADONAIS DIB',NULL,'COLEGIO ADVENTISTA DE SANTIAGO SUR','13',NULL,'2018-08-05 19:30:40','2018-08-05 19:30:40','0',NULL,NULL),(1739,74,NULL,'DNF','CLEMENTE ATRIA',NULL,'SAN IGNACIO EL BOSQUE','13',NULL,'2018-08-05 19:30:40','2018-08-05 19:30:40','0',NULL,NULL),(1740,107,1,'7:17.88','KARLA PULGAR',NULL,'LICEO POLIVALENTE','13',NULL,'2018-08-05 19:47:09','2018-08-05 19:49:16','1',NULL,NULL),(1741,107,2,'7:41.24','MARINA LLANOS',NULL,'INSTITUCION TERESIANA','13',NULL,'2018-08-05 19:47:09','2018-08-05 19:49:18','1',NULL,NULL),(1742,107,3,'8:00.97','ELENA TRITINI CARTES',NULL,'LICEO BICENTENARIO','13',NULL,'2018-08-05 19:47:09','2018-08-05 19:49:19','1',NULL,NULL),(1743,107,4,'8:08.55','MARIANA VIDAL',NULL,'ALCAZAR DE LAS CONDES','13',NULL,'2018-08-05 19:47:09','2018-08-05 19:49:21','1',NULL,NULL),(1744,107,5,'8:12.67','DANAE MELLA ROMAN',NULL,'DE SANTA MARÍA','13',NULL,'2018-08-05 19:47:09','2018-08-05 19:49:22','1',NULL,NULL),(1745,107,6,'8:56.85','VALENTINA CATALAN',NULL,'EL BOSQUE','13',NULL,'2018-08-05 19:47:09','2018-08-05 19:49:24','1',NULL,NULL),(1746,107,7,'9:13.19','EMILIA HERNANDEZ',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 19:47:09','2018-08-05 19:49:25','1',NULL,NULL),(1747,107,8,'9:34.14','MARIA IGNACIA CARRERA',NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 19:47:09','2018-08-05 19:49:26','1',NULL,NULL),(1748,107,NULL,'DNF','TRINIDAD CRISTE',NULL,'EL BOSQUE','13',NULL,'2018-08-05 19:47:09','2018-08-05 19:49:28','1',NULL,NULL),(1749,160,1,'1:04.21',NULL,NULL,'DE SANTA MARIA','13',NULL,'2018-08-05 19:59:47','2018-08-05 19:59:47','3',NULL,NULL),(1750,160,2,'1:11.96',NULL,NULL,'FRANCISCO PETRINOVIC','13',NULL,'2018-08-05 19:59:47','2018-08-05 19:59:47','2',NULL,NULL),(1755,161,1,'55.27',NULL,NULL,'ALONSO DE ERCILLA','13',NULL,'2018-08-05 20:26:19','2018-08-05 20:26:19','5',NULL,NULL),(1756,161,2,'55.83',NULL,NULL,'THE SOUTHERN CROSS','13',NULL,'2018-08-05 20:26:19','2018-08-05 20:26:19','3',NULL,NULL),(1757,161,3,'56.01',NULL,NULL,'SAN FRANCISCO JAVIER','13',NULL,'2018-08-05 20:26:19','2018-08-05 20:26:19','2',NULL,NULL),(1758,161,4,'56.94',NULL,NULL,'LINCOLN CHICUREO','13',NULL,'2018-08-05 20:26:19','2018-08-05 20:26:19','4',NULL,NULL),(1759,161,NULL,'DQ',NULL,NULL,'NAZARET','0',NULL,'2018-08-05 20:26:19','2018-08-05 20:26:19','6',NULL,NULL),(1760,162,1,'48.81',NULL,NULL,'VERBO DIVINO','13',NULL,'2018-08-05 20:27:58','2018-08-05 20:27:58','3',NULL,NULL),(1761,162,2,'50.37',NULL,NULL,'SAN IGNACIO','13',NULL,'2018-08-05 20:27:58','2018-08-05 20:27:58','4',NULL,NULL),(1762,162,3,'54.74',NULL,NULL,'SAGRADOS CORAZONES ALAMEDA','13',NULL,'2018-08-05 20:27:58','2018-08-05 20:27:58','2',NULL,NULL),(1763,143,1,'1:52.30','MATHILDE SANDROCK',NULL,'ALEMÁN DE SANTIAGO','13',NULL,'2018-08-05 20:35:12','2018-08-05 20:35:12','1',NULL,NULL),(1764,143,2,'2:00.93','MACARENA ACHURRA LUCK',NULL,'SANTA ÚRSULA- VITACURA','13',NULL,'2018-08-05 20:35:12','2018-08-05 20:35:12','1',NULL,NULL),(1765,143,3,'2:04.79','ANTONIA CAROCA',NULL,'SSCC ALAMEDA','13',NULL,'2018-08-05 20:35:12','2018-08-05 20:35:12','1',NULL,NULL),(1766,143,4,'2:11.35','ISIDORA SANTA CRUZ',NULL,'NAZARET','13',NULL,'2018-08-05 20:35:12','2018-08-05 20:35:12','1',NULL,NULL),(1767,143,5,'2:11.87','AMELIA VARAS',NULL,'NAZARET','13',NULL,'2018-08-05 20:35:12','2018-08-05 20:35:12','1',NULL,NULL),(1768,163,1,'1:00.86',NULL,NULL,'FRANCISCO PETRINOVIC','13',NULL,'2018-08-05 20:43:46','2018-08-05 20:43:46','2',NULL,NULL),(1769,163,2,'1:11.23',NULL,NULL,'SANTA TERESA DE AVILA','13',NULL,'2018-08-05 20:43:46','2018-08-05 20:43:46','3',NULL,NULL),(1770,164,2,'54.74','FERNANDA MACKENNA COOPER',NULL,'CHILE','13',NULL,'2018-08-24 20:41:02','2018-08-24 23:38:58','5',NULL,NULL),(1771,166,2,'10.69','ENRIQUE POLANCO VALDÉS',NULL,'CHILE','13',NULL,'2018-08-24 23:33:46','2018-08-24 23:33:46','5',NULL,NULL),(1772,165,5,'10.80','ENZO FAULBAUM SOLARI',NULL,'CHILE','13',NULL,'2018-08-24 23:38:30','2018-08-24 23:38:30','2',NULL,NULL),(1773,167,4,'10.56','ENRIQUE POLANCO VALDÉS',NULL,'CHILE','13',NULL,'2018-08-24 23:48:15','2018-08-24 23:48:15','6',NULL,NULL),(1774,167,8,'10.77','ENZO FAULBAUM SOLARI',NULL,'CHILE','13',NULL,'2018-08-24 23:48:44','2018-08-24 23:48:44','1',NULL,NULL),(1775,168,6,'14.50','JUAN PABLO GERMAIN RONCO','1998','CHILE','13',NULL,'2018-08-25 00:01:13','2018-08-25 14:25:13','3',NULL,'13.89'),(1776,169,5,'51.40','ALFREDO SEPÚLVEDA SANDOVAL','1993','CHILE','5',NULL,'2018-08-25 00:10:44','2018-08-25 15:03:04','3',NULL,'50.63'),(1777,170,6,'3:52.88','MICHAEL ALBA JOFRÉ','1993','CHILE','2',NULL,'2018-08-25 00:15:57','2018-08-25 22:42:39','',NULL,'3:48.88'),(1778,171,6,'54.52','FERNANDA MACKENNA COOPER','86','CHILE','13',NULL,'2018-08-25 00:27:58','2018-08-25 17:47:14','7',NULL,'54.74'),(1779,172,5,'3:43.56','CHILE [FERNANDA MACKENNA][MARTINA WEIL][MARIA JOSÉ ECHEVERRÍA][CARMEN MANSILLA]','ADULTO','CHILE','13',NULL,'2018-08-25 01:07:59','2018-08-27 02:16:00','3',NULL,'3:33.42'),(1780,173,1,'3:10.77','[ENZO FAULBAUM SOLARI][ALFREDO SEPÚLVEDA SANDOVAL][ALEJANDRO PEIRANO LÓPEZ][RAFAEL MUÑOZ]','ADULTO','CHILE','13',NULL,'2018-08-25 01:12:59','2018-08-27 02:19:05','5',NULL,'3:11.58'),(1781,174,4,'21.44','ENZO FAULBAUM SOLARI',NULL,'CHI','13',NULL,'2018-08-25 22:48:23','2018-08-25 22:48:23','5',NULL,NULL),(1782,175,4,'1:25:07.20','YERKO ARAYA CORTES','1986','CHI','1',NULL,'2018-08-25 22:56:42','2018-08-27 02:06:12','',NULL,''),(1783,176,3,'1:48.62','ALEJANDRO PEIRANO LOPEZ','1993','CHI','13',NULL,'2018-08-25 23:02:45','2018-08-27 02:08:04','6',NULL,''),(1784,176,5,'1:50.04','RAFAEL MUÑOZ','1997','CHI','',NULL,'2018-08-25 23:03:14','2018-08-27 02:08:06','3',NULL,''),(1785,177,8,'51.51','ALFREDO SEPULVEDA SANDOVAL','1993','CHI','',NULL,'2018-08-25 23:05:29','2018-08-27 02:09:38','1',NULL,''),(1786,178,4,'24.54','MARIA FERNADA MACKENNA COOPER','1986','CHI','13',NULL,'2018-08-25 23:07:10','2018-08-27 02:10:56','6',NULL,''),(1787,178,5,'24.81','MARTINA WEIL RESTREPO','1999','CHI','13',NULL,'2018-08-25 23:07:41','2018-08-27 02:11:10','7',NULL,''),(1788,179,6,'21.53','ENZO FAULBAUM SOLARI','1998','CHI','13',NULL,'2018-08-25 23:09:33','2018-08-27 02:11:57','8',NULL,'21.44'),(1789,183,0,'15.00','FRANCISCA VALENCIA BEOVIC','1996','A. SANTIAGO','13',NULL,'2018-08-31 18:42:09','2018-09-02 13:29:23','3',NULL,''),(1790,183,0,'16.50','RENATTE PINNINGHOOF AGUILA','1997','UACH','14',NULL,'2018-08-31 18:42:54','2018-09-02 13:30:58','6',NULL,''),(1791,183,1,'15.50','MARTINA KREUTZBERGER TALADRIZ','1999','MANQUEHUE','13',NULL,'2018-08-31 18:43:36','2018-09-02 13:30:23','7',NULL,''),(1792,183,3,'18.50','ANDREA JALIL GARCIA','2000','CDUC','13',NULL,'2018-08-31 18:44:07','2018-09-02 13:31:05','4',NULL,''),(1793,183,2,'18.30','ANTONIA FUICA BERGER','2000','CDUC','13',NULL,'2018-08-31 18:44:31','2018-09-02 13:31:02','5',NULL,''),(1794,184,0,'11.34','CESAR JOFRE PNCHEIRA','1996','A. SANTIAGO','13',NULL,'2018-08-31 18:46:06','2018-09-02 13:31:54','4',NULL,'6.786'),(1795,184,1,'12.84','JASON  ROMERO SOTO','1999','C. D. BERNARDO FELMER','14',NULL,'2018-08-31 18:46:37','2018-09-02 13:27:49','5',NULL,'5.000'),(1808,188,1,'16.74','CESAR JOFRE PNCHEIRA','1996','A. SANTIAGO','13',NULL,'2018-08-31 19:10:45','2018-09-02 12:08:14','5',NULL,'6.786'),(1809,188,2,'21.19','JASON  ROMERO SOTO','1999','C. D. BERNARDO FELMER','14',NULL,'2018-08-31 19:11:13','2018-09-02 12:08:17','2',NULL,'5.000'),(1815,190,1,'5:14.86','CESAR JOFRE PINCHEIRA','1996','A. SANTIAGO','13',NULL,'2018-08-31 19:26:41','2018-09-02 16:34:33','1',NULL,'6.786'),(1816,190,2,'5:32.92','JASON  ROMERO SOTO','1999','C. D. BERNARDO FELMER','14',NULL,'2018-08-31 19:27:02','2018-09-02 16:34:34','1',NULL,'5.000'),(1817,180,NULL,'DNS','GIULIANA FERRADA TAPIA','2001','CENTRO A. FORMATIVO','15',NULL,'2018-08-31 21:39:56','2018-09-02 12:38:12','',NULL,''),(1818,180,NULL,'DNS','CARLA FERNANDA OVANDO BASSENGE','2000','C. D. ESC. DE ATLETISMO OSORNO','10',NULL,'2018-08-31 21:40:30','2018-09-02 12:38:21','',NULL,''),(1819,180,NULL,'DNS','ANASTASIA SANZANA BERATTO','1998','C. A. LOS ANGELES','8',NULL,'2018-08-31 21:41:00','2018-09-02 12:38:21','',NULL,''),(1820,181,2,'46:48.2','MOISES ANTONIO BELTRÁN  ','1998','C. A. ÑIELOL','9',NULL,'2018-08-31 21:41:39','2018-09-01 17:16:53','',NULL,''),(1821,181,3,'50:40.5','CRISTIAN  COPIA ORELLANA','2000','C. D. TROTAMUNDOS','15',NULL,'2018-08-31 21:42:09','2018-09-01 17:16:55','',NULL,''),(1822,181,1,'46:02.0','YHOJAN MELILLÁN MARCHANT','1999','C. D. FREIRE','9',NULL,'2018-08-31 21:42:31','2018-09-01 17:16:57','',NULL,''),(1824,181,NULL,'DNS','FRABRISIO SALAS QUIROZ','1997','C. A. LOS ANGELES','8',NULL,'2018-08-31 21:43:33','2018-09-01 17:16:52','',NULL,''),(1825,185,NULL,'DNS','ANDREA PAZ SANDOVAL NILIAN','1997','C. A. ÑIELOL','9',NULL,'2018-08-31 21:45:14','2018-09-01 17:21:10','',NULL,''),(1826,185,1,'19:26.4','ISIDORA PAZ PRADO VILLARROEL','1999','A. LA PINTANA','13',NULL,'2018-08-31 21:45:36','2018-09-02 14:58:47','',NULL,''),(1827,185,2,'19:38.0','KATHERINA TORREALBA HERNANDEZ','1999','A. NANCAGUA','6',NULL,'2018-08-31 21:45:55','2018-09-01 17:20:52','',NULL,''),(1828,185,3,'20:06.5','DAMARY CATALINA SWART BRIONES','1999','C. GALGOS RUNNERS LINARES','7',NULL,'2018-08-31 21:46:11','2018-09-01 17:21:01','',NULL,''),(1829,185,NULL,'DNS','CATALINA DELGADO TORREJÓN','2001','C. A. O\'HIGGINS','5',NULL,'2018-08-31 21:46:28','2018-09-01 17:21:16','',NULL,''),(1830,185,NULL,'DNS','CATALINA IÑIGUEZ LAUSEN ','1998','MANQUEHUE','13',NULL,'2018-08-31 21:46:46','2018-09-01 17:21:17','',NULL,''),(1831,191,1,'0.57.70','MARTINA  WEIL  RESTREPO','1999','MANQUEHUE','13',NULL,'2018-08-31 21:52:17','2018-09-02 15:02:45','4',NULL,NULL),(1832,191,3,'1.02.32','MARIEL RIVEROS  CABELLO','1999','A. OASSI','13',NULL,'2018-08-31 21:52:17','2018-09-02 15:02:18','5',NULL,NULL),(1833,191,2,'1.02.00','KATHERINE NAVARRO GARRIDO','2001','C. ATLETISMO COQUIMBO','4',NULL,'2018-08-31 21:52:17','2018-09-02 15:02:55','3',NULL,NULL),(1834,191,4,'1.06.29','MELANIE  MAC-GINTY CÁCERES','2001','A. YKA','13',NULL,'2018-08-31 21:52:17','2018-09-02 15:03:03','6',NULL,NULL),(1835,191,99,'DNS','SOFÍA ANDREA OLAVARRÍA  ','1999','C. SPORTIF LYCEE JEAN D\'ALEMBERT','5',NULL,'2018-08-31 21:52:17','2018-09-01 16:51:14','7',NULL,NULL),(1836,191,99,'DNS','JAVIERA GALAZ  YEVENES','2001','A. OASSI','13',NULL,'2018-08-31 21:52:17','2018-09-01 16:51:16','8',NULL,NULL),(1837,191,5,'1.10.58','RENATA BOBADILLA','1999','NANCAGUA','6',NULL,'2018-08-31 21:52:17','2018-09-02 15:03:18','2',NULL,NULL),(1838,192,1,'58.04','BERDINE CASTILLO LILLO','2000-03-18','C. A. ESTUDIANTES','13',NULL,'2018-08-31 21:55:35','2018-09-02 15:03:59','4',NULL,NULL),(1839,192,5,'1.07.05','KARLA SAAVEDRA RUFF','1999-05-27','A. OASSI','13',NULL,'2018-08-31 21:55:35','2018-09-02 15:05:56','5',NULL,NULL),(1840,192,3,'1.04.02','VANESA CAROLINA ANGULO URREA','2000-07-31','C. D. ESC. DE ATLETISMO OSORNO','10',NULL,'2018-08-31 21:55:35','2018-09-02 15:05:27','3',NULL,NULL),(1841,192,6,'1.07.66','JAVIERA CHAMORRO FARÍAS','2000-08-24','C. CULTURA FISICA','5',NULL,'2018-08-31 21:55:35','2018-09-02 15:06:11','6',NULL,NULL),(1842,192,4,'1.06.32','MARIA IGNACIA FÉRNANDEZ ARANGUIZ','2000-09-19','C. A. HARAMBEE','13',NULL,'2018-08-31 21:55:35','2018-09-02 15:05:47','7',NULL,NULL),(1843,192,2,'1.03.67','CATALINA FERNANDA  TAPIA ','2000-07-13','C. GALGOS RUNNERS LINARES','7',NULL,'2018-08-31 21:55:35','2018-09-02 15:05:11','8',NULL,NULL),(1844,192,7,'1.08.39','ARACELI YASMIN VERA VERA','2001-01-14','A. LA PINTANA','13',NULL,'2018-08-31 21:55:35','2018-09-02 15:06:17','2',NULL,NULL),(1845,193,1,'59.78','MARIA FERNANDA PAVEZ MORALES','1999-10-28','A. SANTIAGO','13',NULL,'2018-08-31 21:57:21','2018-09-02 15:06:38','4',NULL,NULL),(1846,193,2,'1.02.58','ESTEFANY PAVEZ MORALES','1999-10-28','A. SANTIAGO','13',NULL,'2018-08-31 21:57:21','2018-09-02 15:07:10','5',NULL,NULL),(1847,193,99,'DNS','MARIA IGNACIA BOSCH RIVERA','2000-04-22','CDUC','13',NULL,'2018-08-31 21:57:21','2018-09-01 16:56:17','3',NULL,NULL),(1848,193,3,'1.03.29','FERNANDA RAMOS  TORO','2000-03-16','A. SAN VICENTE','6',NULL,'2018-08-31 21:57:21','2018-09-02 15:07:24','6',NULL,NULL),(1849,193,4,'1.07.92','FRANCISCA CHAMORRO FARÍAS','2000-08-24','C. CULTURA FISICA','5',NULL,'2018-08-31 21:57:21','2018-09-02 15:07:33','7',NULL,NULL),(1850,193,99,'DNS','JAVIERA ROJAS ROJAS','2000-11-01','C. D. A. SPORTING COQUIMBO','4',NULL,'2018-08-31 21:57:21','2018-09-01 16:56:20','8',NULL,NULL),(1851,194,2,'57.80','GEORGINA REYES MARILEO','1996-09-23','A. USACH','13',NULL,'2018-08-31 21:58:47','2018-09-02 15:08:14','4',NULL,NULL),(1852,194,3,'1.00.13','KATHERINE  CÓRDOVA PAREDES','1999-10-20','C. A. PACIFICO','5',NULL,'2018-08-31 21:58:47','2018-09-02 15:08:24','5',NULL,NULL),(1853,194,1,'57.53','CAMILA LETELIER ','1996-07-12','A. SAN VICENTE','6',NULL,'2018-08-31 21:58:47','2018-09-02 15:08:10','3',NULL,NULL),(1854,194,NULL,'DNS','CONSTANZA FLORES MONRREAL','1989-07-15','CDUC','13',NULL,'2018-08-31 21:58:47','2018-09-01 16:57:12','6',NULL,NULL),(1855,194,NULL,'DNS','POULETTE CARDOCH RAMOS','1997-03-30','C. A. PACIFICO','5',NULL,'2018-08-31 21:58:47','2018-09-01 16:57:15','7',NULL,NULL),(1856,195,1,'51.03','MATIAS  LEON  GIACOMAN','1999-01-27','CDUC','13',NULL,'2018-08-31 22:03:45','2018-09-01 15:23:24','4',NULL,NULL),(1857,195,99,'DNS','HECTOR MARTINEZ CHAVEZ','1999-06-10','C. D. U. DEL BIO-BIO','8',NULL,'2018-08-31 22:03:45','2018-09-01 15:23:36','5',NULL,NULL),(1858,195,2,'52.82','FELIPE ESTEBAN  VASQUEZ TABILO','1999-08-02','C. A. S-2000','4',NULL,'2018-08-31 22:03:45','2018-09-01 15:23:58','3',NULL,NULL),(1859,195,3,'53.02','DOMINGO RUIZ TALA','2000-07-07','MANQUEHUE','13',NULL,'2018-08-31 22:03:45','2018-09-01 15:24:08','6',NULL,NULL),(1860,195,5,'54.08','BRANDO OLIVERA AHUMADA','1998-09-12','A. A. CASTRO','10',NULL,'2018-08-31 22:03:45','2018-09-01 15:24:17','7',NULL,NULL),(1861,195,4,'54.03','ADONIS SALDAÑA BADILLA','2001-05-06','C. A. HARAMBEE','13',NULL,'2018-08-31 22:03:45','2018-09-01 15:24:28','8',NULL,NULL),(1862,195,6,'54.14','JUAN PABLO CONTRERAS MAYA','2001-06-19','A. SANTIAGO','13',NULL,'2018-08-31 22:03:45','2018-09-01 15:25:23','2',NULL,NULL),(1863,195,99,'DNS','ARIEL VERDUGO MARAMBIO','1999-02-25','A. NANCAGUA','6',NULL,'2018-08-31 22:03:45','2018-09-01 15:25:39','1',NULL,NULL),(1864,196,1,'50.22','CRISTÓBAL GONZALO MUÑOZ','1999-03-03','C. A. GERARDO MANZANARES','10',NULL,'2018-08-31 22:04:55','2018-09-01 15:26:02','4',NULL,NULL),(1865,196,99,'DNS','ROBERTO ORELLANA CODOCEO','2000-03-24','CENTRO A. FORMATIVO','15',NULL,'2018-08-31 22:04:55','2018-09-01 15:29:37','5',NULL,NULL),(1866,196,99,'DNS','JEREMY  OLMEDO  ARAYA','2001-04-21','A. FRANCES','13',NULL,'2018-08-31 22:04:55','2018-09-01 15:29:39','3',NULL,NULL),(1867,196,2,'53.14','JOSE MANUEL MEDINA HERNANDO','2000-01-23','CDUC','13',NULL,'2018-08-31 22:04:55','2018-09-01 15:26:19','6',NULL,NULL),(1868,196,99,'DNS','FELIPE IGNACIO  CAMPUSANO  TORRES','2001-02-12','C. A. ALAMEDA TALCA','7',NULL,'2018-08-31 22:04:55','2018-09-01 15:29:41','7',NULL,NULL),(1869,196,3,'53.91','JOSE PEREZ VALEZUELA','2001-08-09','A. NANCAGUA','6',NULL,'2018-08-31 22:04:55','2018-09-01 15:26:29','8',NULL,NULL),(1870,196,99,'DNS','SEBASTIÁN ADOLFO VALENCIA','2000-01-08','C. A. ÑIELOL','9',NULL,'2018-08-31 22:04:55','2018-09-01 15:29:42','2',NULL,NULL),(1871,196,99,'DNS','MIGUEL AQUILES CORTES ESCOBAR','2000-03-24','A. LA PINTANA','13',NULL,'2018-08-31 22:04:55','2018-09-01 15:29:44','1',NULL,NULL),(1872,197,1,'51.32','KEVIN PAUL ANDRADE ALVARADO','2000-10-27','C. A. ÑIELOL','9',NULL,'2018-08-31 22:06:16','2018-09-01 15:26:46','4',NULL,NULL),(1873,197,2,'51.93','TOMAS LOPEZ BINDER','2000-01-17','C. A. PROVINCIAL OSORNO','10',NULL,'2018-08-31 22:06:16','2018-09-01 15:26:56','5',NULL,NULL),(1874,197,4,'53.74','AGUSTÍN  SOTO LA FOY MEZA','2000-07-13','MANQUEHUE','13',NULL,'2018-08-31 22:06:16','2018-09-01 15:28:30','3',NULL,NULL),(1875,197,99,'DNS','CLEMENTE  HEVIA VALDIVIESO','2001-10-10','A. SANTIAGO','13',NULL,'2018-08-31 22:06:16','2018-09-01 15:29:19','6',NULL,NULL),(1876,197,99,'DNS','VICTOR MORENO ANGULO','2001-07-05','C. D. NICOLAS CARVAJAL','13',NULL,'2018-08-31 22:06:16','2018-09-01 15:29:21','7',NULL,NULL),(1877,197,99,'DNS','FRANCISCO CISTERNAS GAETE','2000-05-09','A. FRANCES','13',NULL,'2018-08-31 22:06:16','2018-09-01 15:29:23','8',NULL,NULL),(1878,197,3,'52.81','JOAQUÍN GONZÁLEZ PLAZA','2001-11-03','C. A. PACIFICO','5',NULL,'2018-08-31 22:06:16','2018-09-01 15:28:24','2',NULL,NULL),(1879,197,5,'58.02','PABLO IGNACIO VIO BLOCH','2000-05-12','A. LA PINTANA','13',NULL,'2018-08-31 22:06:16','2018-09-01 15:28:35','1',NULL,NULL),(1880,198,99,'DNS','IGNACIO PEREZ ALBAYAL','2000-04-25','A. SANTIAGO','13',NULL,'2018-08-31 22:07:46','2018-09-01 16:33:58','4',NULL,NULL),(1881,198,99,'DNS','BRAYAN ROJAS  BRAVO','1999-05-01','C. A. LA SERENA','4',NULL,'2018-08-31 22:07:46','2018-09-01 16:33:56','5',NULL,NULL),(1882,198,2,'52.71','PEDRO FABIÁN JARA GÁLVEZ','1999-11-26','A. USACH','13',NULL,'2018-08-31 22:07:46','2018-09-01 16:33:45','3',NULL,NULL),(1883,198,3,'53.34','FRANCO SOLARI FORTE','1999-11-04','CDUC','13',NULL,'2018-08-31 22:07:46','2018-09-01 16:33:38','6',NULL,NULL),(1884,198,1,'52.32','MAX FELIPE SCHMIDT KAMP','2001-09-25','C. A. DELTA','5',NULL,'2018-08-31 22:07:46','2018-09-01 16:33:34','7',NULL,NULL),(1885,198,4,'57.09','BENJAMIN MEZA CASTRO','2001-01-07','A. OASSI','13',NULL,'2018-08-31 22:07:46','2018-09-01 16:33:47','8',NULL,NULL),(1886,198,99,'DNS','JUAN DAVID MAQUILÓN ','1999-11-30','A. OASSI','13',NULL,'2018-08-31 22:07:46','2018-09-01 16:33:53','2',NULL,NULL),(1887,198,99,'DNS','FELIPE ZUCKERMANN OLIVARES','2000-12-18','A. FRANCES','13',NULL,'2018-08-31 22:07:46','2018-09-01 16:33:55','1',NULL,NULL),(1888,199,1,'51.04','DIEGO ANDRÉS ROBLES  CAMPOS','2001-05-01','C. A. ÑIELOL','9',NULL,'2018-08-31 22:09:10','2018-09-01 16:35:53','4',NULL,NULL),(1889,199,3,'51.83','LUIS RIFFO CAMPOS','2000-01-05','A. COYHAIQUE','11',NULL,'2018-08-31 22:09:10','2018-09-01 16:35:59','5',NULL,NULL),(1890,199,4,'52.69','VICENTE ABARCA MEDINA','2000-07-03','C. A. ESTUDIANTES','13',NULL,'2018-08-31 22:09:10','2018-09-01 16:36:02','3',NULL,NULL),(1891,199,2,'51.49','SEBASTIAN FELIPE MUÑOZ  VILLA','2000-09-26','C. A. NEKULN GALGOS','8',NULL,'2018-08-31 22:09:10','2018-09-01 16:36:05','6',NULL,NULL),(1892,199,5,'53.73','JAVIER CASTILLO CASTRO','1999-08-18','C. D. U. DEL BIO-BIO','8',NULL,'2018-08-31 22:09:10','2018-09-01 16:36:11','7',NULL,NULL),(1893,199,6,'54.75','NICOLAS ALBERTO CARRILLO ','1999-11-21','C. A. HARAMBEE','13',NULL,'2018-08-31 22:09:10','2018-09-01 16:36:12','8',NULL,NULL),(1894,199,7,'55.53','NICOLAS ARRIAGADA JAQUE','2001-07-10','C. A. ESTUDIANTES','13',NULL,'2018-08-31 22:09:10','2018-09-01 16:36:14','2',NULL,NULL),(1895,199,8,'55.64','MATÍAS ALONSO VELÁSQUEZ RIFFO','2001-11-06','C. A. DREAM','5',NULL,'2018-08-31 22:09:10','2018-09-01 16:36:16','1',NULL,NULL),(1896,200,99,'DNS','AGUSTIN CASENAVE PRAT','2000-03-07','A. SANTIAGO','13',NULL,'2018-08-31 22:10:36','2018-09-01 16:39:17','4',NULL,NULL),(1897,200,1,'52.44','VICENTE  RODRIGUEZ CONTRERAS','2001-04-06','A. ATACAMA','3',NULL,'2018-08-31 22:10:36','2018-09-01 16:37:25','5',NULL,NULL),(1898,200,99,'DNS','MATIAS BUSTAMANTE  TONG','2000-03-15','A. OASSI','13',NULL,'2018-08-31 22:10:36','2018-09-01 16:39:16','3',NULL,NULL),(1899,200,3,'53.12','VICENTE MOYA  MOLINA','2000-08-28','A. SANTIAGO','13',NULL,'2018-08-31 22:10:36','2018-09-01 16:37:28','6',NULL,NULL),(1900,200,99,'DNS','HECTOR JOSE CALDERÓN VALLEJOS ','2000-03-28','C. A. ALAMEDA TALCA','7',NULL,'2018-08-31 22:10:36','2018-09-01 16:39:15','7',NULL,NULL),(1901,200,2,'53.01','MARCOS GUERRA  ÁLVAREZ','1999-01-09','C. CULTURA FISICA','5',NULL,'2018-08-31 22:10:36','2018-09-01 16:37:33','8',NULL,NULL),(1902,200,4,'54.99','JOAQUÍN ALEJANDRO OLIVARES','2001-08-20','C. A. ÑIELOL','9',NULL,'2018-08-31 22:10:36','2018-09-01 16:37:35','2',NULL,NULL),(1903,201,1,'49.84','MAXIMILIANO CASTRO OSSA ','1998-04-11','A. SANTIAGO','13',NULL,'2018-08-31 22:11:43','2018-09-01 16:38:59','4',NULL,NULL),(1904,201,2,'50.04','DIEGO MUNITA BENAVIDES',NULL,'CDUC','13',NULL,'2018-08-31 22:11:43','2018-09-01 16:39:04','5',NULL,NULL),(1905,201,3,'51.09','MATIAS QUEZADA CORTES','1996-03-31','A. SANTIAGO','13',NULL,'2018-08-31 22:11:43','2018-09-01 16:39:06','3',NULL,NULL),(1906,201,99,'DNS','DIEGO CACERES HORMAZABAL','1997-09-07','A. MONTESSORI TALCA','7',NULL,'2018-08-31 22:11:43','2018-09-01 16:39:09','6',NULL,NULL),(1907,202,1,'14.60','TRINIDAD HURTADO EYZAGUIRRE','2000-12-12','CDUC','13',NULL,'2018-08-31 22:16:17','2018-09-02 15:22:55','4',NULL,NULL),(1908,202,2,'15.13','JOSEFINA GONZÁLEZ MARTINEZ','1999-10-08','C. A. GERARDO MANZANARES','10',NULL,'2018-08-31 22:16:17','2018-09-02 15:23:02','5',NULL,NULL),(1909,202,NULL,'DNS','CLARA SILVA SILVA','2001-03-02','MANQUEHUE','13',NULL,'2018-08-31 22:16:17','2018-09-02 15:22:22','3',NULL,NULL),(1910,202,3,'16.16','ANGELICA  ROJAS TAPIA','2001-09-10','C. ATLETISMO COQUIMBO','4',NULL,'2018-08-31 22:16:17','2018-09-02 15:23:04','6',NULL,NULL),(1911,202,NULL,'DNS','DANIELLE EVELYN  FLINT  ESCOBAR','2000-05-05','C. SPORTIF LYCEE JEAN D\'ALEMBERT','5',NULL,'2018-08-31 22:16:17','2018-09-02 15:22:38','7',NULL,NULL),(1912,203,NULL,'DNS','ELISA KEITEL RONDON','2001-05-16','CDUC','13',NULL,'2018-08-31 22:17:19','2018-09-02 15:23:18','4',NULL,NULL),(1913,203,4,'17.48','ELISA RODRIGUEZ FIGUEROA','2000-06-27','CDUC','13',NULL,'2018-08-31 22:17:19','2018-09-02 15:23:37','5',NULL,NULL),(1914,203,NULL,'DNS','JOSEPHINE HALLER WIESNER','2000-07-12','MANQUEHUE','13',NULL,'2018-08-31 22:17:19','2018-09-02 15:23:46','3',NULL,NULL),(1915,203,3,'17.27','FERNANDA CABRERA CARRASCO','1999-10-01','C. A. O\'HIGGINS','5',NULL,'2018-08-31 22:17:19','2018-09-02 15:24:09','6',NULL,NULL),(1916,205,2,'14.58','JUAN PABLO GERMAIN RONCO','1998','CDUC','13',NULL,'2018-08-31 22:20:16','2018-09-02 15:29:58','6 (h: 1,067)',NULL,''),(1917,205,1,'14.24','MARTIN SAENZ ','2001','CDUC','13',NULL,'2018-08-31 22:20:54','2018-09-02 15:28:41','2 (h: 0.914)',NULL,''),(2004,217,NULL,NULL,'BRIHAN  BUGUEÑO  LOAYSA','1999-09-26','C. A. RICARDO SAGUA','4',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2005,217,NULL,NULL,'FELIPE CANCINO DIAZ','1999-11-10','A. NANCAGUA','6',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2006,217,NULL,NULL,'MARIO  RODRÍGUEZ  GARRIDO','2000-08-03','C. A. TAMARUGO','1',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2007,217,NULL,NULL,'JUAN PABLO BARIAS CAMPAGNONI','2000-12-12','A. SANTIAGO','13',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2008,217,NULL,NULL,'CRISTIAN IGNACIO ULLOA TORRES','2001-04-16','C. A. HECTOR NEIRA','10',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2009,217,NULL,NULL,'DIEGO VARELA INOSTROZA','1999-11-30','C. D. U. DEL BIO-BIO','8',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2010,217,NULL,NULL,'DIEGO ORTIZ RAMIS','2000-01-26','C. CULTURA FISICA','5',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2011,217,NULL,NULL,'RAÚL ANDRÉS NOGUERA VÁSQUEZ','2001-04-13','C. A. DREAM','5',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2012,217,NULL,NULL,'TOMAS ADONIS BOYD','2000-06-19','A. SANTIAGO','13',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2013,217,NULL,NULL,'YEFERSON PINILLO VELASQUEZ','2000-05-11','A. SANTIAGO','13',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2014,217,NULL,NULL,'BRYAN MARTINEZ GUTIERREZ','2000-07-30','A. LAS CABRAS','6',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2015,217,NULL,NULL,'SIMON GOMEZ PEREZ','2001-06-26','C. A. HARAMBEE','13',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2016,217,NULL,NULL,'PATRICIO HERNAN ROBLES VALENCIA','2000-07-24','C. VPS VALLENAR','3',NULL,'2018-08-31 22:41:07','2018-08-31 22:41:07','0',NULL,NULL),(2030,219,2,'31:46.01','IGNACIO ANDRÉS VELASQUEZ ','1998-12-28','C. A. ÑIELOL','9',NULL,'2018-08-31 22:47:38','2018-09-02 13:24:03','',NULL,NULL),(2031,219,3,'33:49.09','ALEXIS MAGDIEL BARRIA ASENJO','1999-02-27','C. A. HECTOR NEIRA','10',NULL,'2018-08-31 22:47:38','2018-09-02 13:24:18','',NULL,NULL),(2032,219,1,'31:06.89','JERSON ZAPATA BENAVENTE','1996-02-03','CARABINEROS','13',NULL,'2018-08-31 22:47:38','2018-09-02 13:24:39','',NULL,NULL),(2033,219,NULL,'DNS','ALEX POBLETE MEDINA','2001-04-12','C. D. NICOLAS CARVAJAL','13',NULL,'2018-08-31 22:47:38','2018-09-02 13:24:45','',NULL,NULL),(2034,219,6,'36:19.21','JOAQUIN MELENDEZ PAIVA','1999-10-19','C. A. HECTOR NEIRA','10',NULL,'2018-08-31 22:47:38','2018-09-02 13:25:01','',NULL,NULL),(2035,219,5,'35:17.61','NICOLAS MARCELO OPAZO ARANCIBIA','2000-07-08','A. LA PINTANA','13',NULL,'2018-08-31 22:47:38','2018-09-02 13:25:15','',NULL,NULL),(2036,219,NULL,'DNS','JUAN PABLO SCHMAUCK MANCILLA','2000-11-06','C. A. PUERTO SUR','10',NULL,'2018-08-31 22:47:38','2018-09-02 13:25:23','',NULL,NULL),(2037,219,4,'35:15.88','FELIPE CANCINO DIAZ','1999-11-10','A. NANCAGUA','6',NULL,'2018-08-31 22:47:38','2018-09-02 13:25:50','',NULL,NULL),(2038,219,NULL,'DNS','MATIAS RUBIO PEÑA','2000-09-28','A. NANCAGUA','6',NULL,'2018-08-31 22:47:38','2018-09-02 13:26:12','',NULL,NULL),(2039,219,7,'44:47.01','TOMAS TOLEDO RUBILAR ','2000-09-11','A. YKA','13',NULL,'2018-08-31 22:47:38','2018-09-02 13:26:23','',NULL,NULL),(2040,220,1,'25.93','MARTINA  WEIL  RESTREPO','1999-07-12','MANQUEHUE','13',NULL,'2018-08-31 22:50:17','2018-09-02 13:30:08','4',NULL,NULL),(2041,220,2,'27.55','ESTEFANY PAVEZ MORALES','1999-10-28','A. SANTIAGO','13',NULL,'2018-08-31 22:50:17','2018-09-02 13:30:11','5',NULL,NULL),(2042,220,NULL,'DNS','JOSEFINA GONZÁLEZ MARTINEZ','1999-10-08','C. A. GERARDO MANZANARES','10',NULL,'2018-08-31 22:50:17','2018-09-02 13:29:47','3',NULL,NULL),(2043,220,3,'28.17','FERNANDA RAMOS  TORO','2000-03-16','A. SAN VICENTE','6',NULL,'2018-08-31 22:50:17','2018-09-02 13:30:19','6',NULL,NULL),(2044,220,NULL,'DNS','FRANCISCA CHAMORRO FARÍAS','2000-08-24','C. CULTURA FISICA','5',NULL,'2018-08-31 22:50:17','2018-09-02 13:29:52','7',NULL,NULL),(2045,220,NULL,'DNS','ANANDA  RIVEROS  FLORES','1999-06-10','C. A. VALPARAISO','5',NULL,'2018-08-31 22:50:17','2018-09-02 13:29:55','8',NULL,NULL),(2046,220,NULL,'DNS','JAVIERA GALAZ  YEVENES','2001-03-15','A. OASSI','13',NULL,'2018-08-31 22:50:17','2018-09-02 13:30:00','2',NULL,NULL),(2047,221,NULL,'DNS','ANAIS HERNÁNDEZ  ALEGRÍA','2001-03-05','C. A. NACIONAL IQUIQUE','1',NULL,'2018-08-31 22:51:19','2018-09-02 13:40:11','4',NULL,NULL),(2048,221,NULL,'DNS','AYÚN  FARÍAS ','1999-04-16','C. MARISTA CURICO','7',NULL,'2018-08-31 22:51:19','2018-09-02 13:40:14','5',NULL,NULL),(2049,221,1,'27.55','VANESA CAROLINA ANGULO URREA','2000-07-31','C. D. ESC. DE ATLETISMO OSORNO','10',NULL,'2018-08-31 22:51:19','2018-09-02 13:36:25','3',NULL,NULL),(2050,221,3,'28.96','MELANIE  MAC-GINTY CÁCERES','2001-04-03','A. YKA','13',NULL,'2018-08-31 22:51:19','2018-09-02 13:37:18','6',NULL,NULL),(2051,221,2,'28.34','ESPERANZA MARCELA ALVEAR','2000-02-11','C. A. DREAM','5',NULL,'2018-08-31 22:51:19','2018-09-02 13:36:46','7',NULL,NULL),(2052,221,NULL,'DNS','MARIA CECILIA MUÑOZ  NUÑEZ','1999-10-15','C. D. A. CORONEL','8',NULL,'2018-08-31 22:51:19','2018-09-02 13:40:13','8',NULL,NULL),(2053,221,4,'29.78','RAFAELA CANTIN','2000-09-19','A. YKA','13',NULL,'2018-08-31 22:51:19','2018-09-02 13:40:19','2',NULL,NULL),(2054,222,6,'32.43','BELEN PERALTA CONCHA','2001-09-13','C. D. NICOLAS CARVAJAL','13',NULL,'2018-08-31 22:52:37','2018-09-02 13:44:44','4',NULL,NULL),(2055,222,1,'26.77','MARIA FERNANDA PAVEZ MORALES','1999-10-28','A. SANTIAGO','13',NULL,'2018-08-31 22:52:37','2018-09-02 13:43:52','5',NULL,NULL),(2056,222,2,'27.64','ESCARLET PARADA TIRADO','1999-11-13','C. CULTURA FISICA','5',NULL,'2018-08-31 22:52:37','2018-09-02 13:43:56','3',NULL,NULL),(2057,222,4,'29.29','BELÉN LEYTON','2000-08-24','A. ESTUDIANTES','',NULL,'2018-08-31 22:52:37','2018-09-02 13:44:08','6',NULL,NULL),(2058,222,3,'28.96','FLORENCIA SANTIBAÑEZ TAGLE','2001-03-22','MANQUEHUE','13',NULL,'2018-08-31 22:52:37','2018-09-02 13:44:00','7',NULL,NULL),(2059,222,5,'30.00','ARACELI YASMIN VERA VERA','2001-01-14','A. LA PINTANA','13',NULL,'2018-08-31 22:52:37','2018-09-02 13:44:32','8',NULL,NULL),(2060,222,7,'32.82','ISIDORA CERDA AGUIRRE','2001-11-21','A. YKA','13',NULL,'2018-08-31 22:52:37','2018-09-02 13:44:49','2',NULL,NULL),(2061,223,3,'25.62','MARIA IGNACIA MONTT BLANCHARD','1996-02-23','A. SANTIAGO','13',NULL,'2018-08-31 22:54:03','2018-09-02 13:45:46','4',NULL,NULL),(2062,223,1,'25.51','JAVIERA CAÑAS GAMBETTA','1997-04-03','A. SANTIAGO','13',NULL,'2018-08-31 22:54:03','2018-09-02 13:45:10','5',NULL,NULL),(2063,223,2,'25.62','POULETTE CARDOCH RAMOS','1997-03-30','C. A. PACIFICO','5',NULL,'2018-08-31 22:54:03','2018-09-02 13:45:28','3',NULL,NULL),(2064,223,4,'27.37','ESPERANZA GARCIA ','2003-01-19','CDUC','13',NULL,'2018-08-31 22:54:03','2018-09-02 13:46:07','6',NULL,NULL),(2065,223,NULL,'DNS','FRANCISCA VALENCIA ALVAREZ','1998-03-27','A. ÑIELOL','9',NULL,'2018-08-31 22:54:03','2018-09-02 13:46:25','7',NULL,NULL),(2066,223,NULL,'DNS','CONSTANZA MORALES ','1997-01-23','A. USACH','13',NULL,'2018-08-31 22:54:03','2018-09-02 13:46:28','8',NULL,NULL),(2067,223,NULL,'DNS','ANDREA BASCUÑAN ',NULL,'A. FRANCES','13',NULL,'2018-08-31 22:54:03','2018-09-02 13:46:31','2',NULL,NULL),(2068,224,NULL,'DNS','ANDRES  STEUER FLANDEZ','1999-12-29','C. A. WINDSOR SCHOOL','14',NULL,'2018-08-31 22:59:40','2018-09-02 13:52:55','4',NULL,NULL),(2069,224,1,'23.14','KEVIN PAUL ANDRADE ALVARADO','2000-10-27','C. A. ÑIELOL','9',NULL,'2018-08-31 22:59:40','2018-09-02 13:52:12','5',NULL,NULL),(2070,224,NULL,'DNS','DANIEL  KLENNER AGUILERA','2000-06-28','C. MARISTA CURICO','7',NULL,'2018-08-31 22:59:40','2018-09-02 13:52:58','3',NULL,NULL),(2071,224,NULL,'DNS','HECTOR MARTINEZ CHAVEZ','1999-06-10','C. D. U. DEL BIO-BIO','8',NULL,'2018-08-31 22:59:40','2018-09-02 13:53:04','6',NULL,NULL),(2072,224,NULL,'DNS','VICENTE JAVIER PRADENAS  CEA ','1999-10-26','C. A. ALAMEDA TALCA','7',NULL,'2018-08-31 22:59:40','2018-09-02 13:53:09','7',NULL,NULL),(2073,224,2,'25.00','DIEGO BRAVO PÉREZ','1999-04-01','C. CULTURA FISICA','5',NULL,'2018-08-31 22:59:40','2018-09-02 13:52:45','8',NULL,NULL),(2074,224,NULL,'DNS','BENJAMIN BARRIENTOS GONZALES','2001-11-07','C. A. HARAMBEE','13',NULL,'2018-08-31 22:59:40','2018-09-02 13:53:14','2',NULL,NULL),(2075,225,2,'23.63','ANDRES ESTEBAN ORREGO FRITZ','1999-06-07','C. A. PHOENIX','9',NULL,'2018-08-31 23:00:44','2018-09-02 13:53:58','4',NULL,NULL),(2076,225,NULL,'DNS','DIEGO ANDRÉS ROBLES  CAMPOS','2001-05-01','C. A. ÑIELOL','9',NULL,'2018-08-31 23:00:44','2018-09-02 13:55:41','5',NULL,NULL),(2077,225,1,'23.35','MARTÍN NICOLAS RUDOLPH MUÑOZ','1999-02-20','C. A. GERARDO MANZANARES','10',NULL,'2018-08-31 23:00:44','2018-09-02 13:53:43','3',NULL,NULL),(2078,225,NULL,'DNS','PEDRO FABIÁN JARA GÁLVEZ','1999-11-26','A. USACH','13',NULL,'2018-08-31 23:00:44','2018-09-02 13:55:45','6',NULL,NULL),(2079,225,NULL,'DNS','OMAR CIFUNTES ','1999-02-02','A. OASSI','13',NULL,'2018-08-31 23:00:44','2018-09-02 13:55:47','7',NULL,NULL),(2080,225,4,'24.28','ESTEBAN MARIN CANCINO','1999-06-11','LOS CONQUISTADORES','6',NULL,'2018-08-31 23:00:44','2018-09-02 13:55:35','8',NULL,NULL),(2081,225,3,'23.83','MARCOS GUERRA  ÁLVAREZ','1999-01-09','C. CULTURA FISICA','5',NULL,'2018-08-31 23:00:44','2018-09-02 13:55:23','2',NULL,NULL),(2082,226,NULL,'DNS','LUCAS  BRAHM ESCALONA','2000-08-05','MANQUEHUE','13',NULL,'2018-08-31 23:02:06','2018-09-02 13:56:46','4',NULL,NULL),(2083,226,1,'23.43','DOMINGO LAZO WEISS','2000-05-21','C. D. NICOLAS CARVAJAL','13',NULL,'2018-08-31 23:02:07','2018-09-02 13:56:22','5',NULL,NULL),(2084,226,NULL,'DNS','SEBASTIAN NÚÑEZ RODILLO','2001-05-08','A. FRANCES','13',NULL,'2018-08-31 23:02:07','2018-09-02 13:56:48','3',NULL,NULL),(2085,226,NULL,'DNS','JOAQUIN WELCH SOTO','1999-07-11','A. OASSI','13',NULL,'2018-08-31 23:02:07','2018-09-02 13:56:50','6',NULL,NULL),(2086,226,NULL,'DNS','FELIPE IGNACIO  CAMPUSANO  TORRES','2001-02-12','C. A. ALAMEDA TALCA','7',NULL,'2018-08-31 23:02:07','2018-09-02 13:56:52','7',NULL,NULL),(2087,226,2,'24.77','JOAQUÍN ALEJANDRO OLIVARES','2001-08-20','C. A. ÑIELOL','9',NULL,'2018-08-31 23:02:07','2018-09-02 13:56:36','8',NULL,NULL),(2088,226,NULL,'DNS','MIGUEL AQUILES CORTES ESCOBAR','2000-03-24','A. LA PINTANA','13',NULL,'2018-08-31 23:02:07','2018-09-02 13:56:54','2',NULL,NULL),(2089,227,2,'23.46','JOAQUIN  ALIAGA ENCINA','1999-08-31','A. ATACAMA','3',NULL,'2018-08-31 23:04:08','2018-09-02 13:57:48','4',NULL,NULL),(2090,227,1,'23.04','JUAN LUIS EGUIGUREN ZALAQUETT','1999-11-10','A. SANTIAGO','13',NULL,'2018-08-31 23:04:08','2018-09-02 13:57:30','5',NULL,NULL),(2091,227,NULL,'DNS','TOMAS LOPEZ BINDER','2000-01-17','C. A. PROVINCIAL OSORNO','10',NULL,'2018-08-31 23:04:08','2018-09-02 13:58:14','3',NULL,NULL),(2092,227,3,'25.43','GUSTAVO DELGADO PULGAR','1999-12-06','C. A. HECTOR NEIRA','10',NULL,'2018-08-31 23:04:08','2018-09-02 13:58:02','6',NULL,NULL),(2093,227,NULL,'DNS','HECTOR JOSE CALDERÓN VALLEJOS ','2000-03-28','C. A. ALAMEDA TALCA','7',NULL,'2018-08-31 23:04:08','2018-09-02 13:58:16','7',NULL,NULL),(2094,227,NULL,'DNS','JUAN DAVID MAQUILÓN ','1999-11-30','A. OASSI','13',NULL,'2018-08-31 23:04:08','2018-09-02 13:58:22','8',NULL,NULL),(2095,228,5,'24.64','JUAN MAQUILÓN','1998-01-23','A. OASSI','13',NULL,'2018-08-31 23:05:30','2018-09-02 14:00:45','4',NULL,NULL),(2096,228,2,'22.79','FRANCO AGUILAR MUÑOZ','1996-05-02','C. CULTURA FISICA','5',NULL,'2018-08-31 23:05:30','2018-09-02 13:59:04','5',NULL,NULL),(2097,228,1,'22.58','IGNACIO NORDETTI LLULL','1997-10-09','CDUC','13',NULL,'2018-08-31 23:05:30','2018-09-02 13:58:50','3',NULL,NULL),(2098,228,4,'23.89','OMAR CIFUENTES',NULL,'A. OASSI','5',NULL,'2018-08-31 23:05:30','2018-09-02 14:00:05','6',NULL,NULL),(2099,228,NULL,'DNS','MAXIMILIANO CASTRO OSSA ','1998-04-11','A. SANTIAGO','13',NULL,'2018-08-31 23:05:30','2018-09-02 14:00:52','7',NULL,NULL),(2100,228,3,'23.84','RODRIGO MUÑOZ LEIVA ','1997-11-12','C. A. UBB CHILLAN','8',NULL,'2018-08-31 23:05:30','2018-09-02 13:59:19','8',NULL,NULL),(2101,228,NULL,'DNS','JUAN PABLO GERMAIN RONCO','1998-06-17','CDUC','13',NULL,'2018-08-31 23:05:30','2018-09-02 14:00:54','2',NULL,NULL),(2102,228,NULL,'DNS','DIEGO MUNITA BENAVIDES',NULL,'CDUC','13',NULL,'2018-08-31 23:05:30','2018-09-02 14:00:58','1',NULL,NULL),(2134,234,1,'11:02.84','KATHERINA TORREALBA HERNANDEZ','1999-11-02','A. NANCAGUA','6',NULL,'2018-08-31 23:30:10','2018-09-02 14:47:25','',NULL,NULL),(2135,234,5,'12:28.35','NATACHA CHAPARRO CORNEJO','2001-11-18','A. SANTIAGO','13',NULL,'2018-08-31 23:30:10','2018-09-02 14:47:50','',NULL,NULL),(2136,234,3,'12:01.53','CLAUDIA JALIL GARCIA','2000-11-06','CDUC','13',NULL,'2018-08-31 23:30:10','2018-09-02 14:48:09','',NULL,NULL),(2137,234,NULL,'DNS','DANIELA CONSTANZA FERNANDEZ','1999-08-17','C. A. HECTOR NEIRA','10',NULL,'2018-08-31 23:30:10','2018-09-02 14:48:19','',NULL,NULL),(2138,234,2,'11:18.96','ISIDORA PAZ PRADO VILLARROEL','1999-12-27','A. LA PINTANA','13',NULL,'2018-08-31 23:30:10','2018-09-02 14:48:30','',NULL,NULL),(2139,234,4,'12:16.72','FERNANDA CAROLINA DONOSO','2000-06-09','C. A. NEKULN GALGOS','8',NULL,'2018-08-31 23:30:10','2018-09-02 14:49:07','',NULL,NULL),(2140,234,NULL,'DNS','FERNANDA JARA ULLOA','2000-04-07','C. D. NICOLAS CARVAJAL','13',NULL,'2018-08-31 23:30:10','2018-09-02 14:48:49','',NULL,NULL),(2141,234,6,'13:36.05','ERIKA LISSETTE CALFULEO','2001-07-05','A. LA PINTANA','13',NULL,'2018-08-31 23:30:10','2018-09-02 14:49:29','',NULL,NULL),(2142,235,NULL,NULL,'BERDINE CASTILLO LILLO','2000-03-18','C. A. ESTUDIANTES','13',NULL,'2018-08-31 23:32:44','2018-08-31 23:32:44','4',NULL,NULL),(2143,235,NULL,NULL,'VALERIA CORNEJO DUEÑAS','1999-03-01','A. SANTIAGO','13',NULL,'2018-08-31 23:32:44','2018-08-31 23:32:44','5',NULL,NULL),(2144,235,NULL,NULL,'DARINKA BENITEZ TORO','2000-06-20','A. YKA','13',NULL,'2018-08-31 23:32:44','2018-08-31 23:32:44','3',NULL,NULL),(2145,235,NULL,NULL,'GEORGINA REYES MARILEO','1996-09-23','A. USACH','13',NULL,'2018-08-31 23:32:44','2018-08-31 23:32:44','6',NULL,NULL),(2146,235,NULL,NULL,'IGNACIA MENDEZ ALVAREZ','2001-07-05','CDUC','13',NULL,'2018-08-31 23:32:44','2018-08-31 23:32:44','7',NULL,NULL),(2147,235,NULL,NULL,'KARLA SAAVEDRA RUFF','1999-05-27','A. OASSI','13',NULL,'2018-08-31 23:32:44','2018-08-31 23:32:44','8',NULL,NULL),(2148,235,NULL,NULL,'MARIEL RIVEROS  CABELLO','1999-03-31','A. OASSI','13',NULL,'2018-08-31 23:32:44','2018-08-31 23:32:44','2',NULL,NULL),(2149,235,NULL,NULL,'CLAUDIA JALIL GARCIA','2000-11-06','CDUC','13',NULL,'2018-08-31 23:32:44','2018-08-31 23:32:44','1',NULL,NULL),(2150,236,NULL,NULL,'SOFÍA ANDREA OLAVARRÍA','1999-12-16','C. SPORTIF LYCEE JEAN D\'ALEMBERT','5',NULL,'2018-08-31 23:33:39','2018-08-31 23:33:39','4',NULL,NULL),(2151,236,NULL,NULL,'YANERETH JORQUERA GALAZ','1999-11-17','A. SANTIAGO','13',NULL,'2018-08-31 23:33:39','2018-08-31 23:33:39','5',NULL,NULL),(2152,236,NULL,NULL,'VALENTINA VELASQUEZ MADRID','2000-12-05','A. SANTIAGO','13',NULL,'2018-08-31 23:33:39','2018-08-31 23:33:39','3',NULL,NULL),(2153,236,NULL,NULL,'FERNANDA CAROLINA DONOSO','2000-06-09','C. A. NEKULN GALGOS','8',NULL,'2018-08-31 23:33:39','2018-08-31 23:33:39','6',NULL,NULL),(2154,236,NULL,NULL,'MARIA IGNACIA FÉRNANDEZ ARANGUIZ','2000-09-19','C. A. HARAMBEE','13',NULL,'2018-08-31 23:33:39','2018-08-31 23:33:39','7',NULL,NULL),(2155,236,NULL,NULL,'ANTONIO CONTRERAS KLOCK','2000-05-25','CDUC','13',NULL,'2018-08-31 23:33:39','2018-08-31 23:33:39','8',NULL,NULL),(2156,236,NULL,NULL,'VALENTINA LICETTE YÁÑEZ ALLENDES','2000-11-03','C. A. DREAM','5',NULL,'2018-08-31 23:33:39','2018-08-31 23:33:39','2',NULL,NULL),(2157,236,NULL,NULL,'ALEXANDRA MUÑOZ VELOSO','2001-02-20','A. FRANCES','13',NULL,'2018-08-31 23:33:39','2018-08-31 23:33:39','1',NULL,NULL),(2194,240,NULL,NULL,'MARIO  RODRÍGUEZ  GARRIDO','2000-08-03','C. A. TAMARUGO','1',NULL,'2018-08-31 23:41:41','2018-08-31 23:41:41','4',NULL,NULL),(2195,240,NULL,NULL,'CLEMENTE YAÑEZ ','2001-09-25','A. FRANCES','13',NULL,'2018-08-31 23:41:41','2018-08-31 23:41:41','5',NULL,NULL),(2196,240,NULL,NULL,'PATRICIO HERNAN ROBLES VALENCIA','2000-07-24','C. VPS VALLENAR','3',NULL,'2018-08-31 23:41:41','2018-08-31 23:41:41','3',NULL,NULL),(2197,240,NULL,NULL,'SIMON GOMEZ PEREZ','2001-06-26','C. A. HARAMBEE','13',NULL,'2018-08-31 23:41:41','2018-08-31 23:41:41','6',NULL,NULL),(2198,240,NULL,NULL,'ADONIS SALDAÑA BADILLA','2001-05-06','C. A. HARAMBEE','13',NULL,'2018-08-31 23:41:41','2018-08-31 23:41:41','7',NULL,NULL),(2199,240,NULL,NULL,'JHON PABLO  BORQUEZ SOLÍS','1999-11-18','C. A. PROVINCIAL OSORNO','10',NULL,'2018-08-31 23:41:41','2018-08-31 23:41:41','8',NULL,NULL),(2200,240,NULL,NULL,'LUIS FELIPE ALCAINO ESCOBAR','1999-02-17','A. LA PINTANA','13',NULL,'2018-08-31 23:41:41','2018-08-31 23:41:41','2',NULL,NULL),(2201,240,NULL,NULL,'YEFERSON PINILLO VELASQUEZ','2000-05-11','A. SANTIAGO','13',NULL,'2018-08-31 23:41:41','2018-08-31 23:41:41','1',NULL,NULL),(2202,240,NULL,NULL,'MATÍAS ALONSO VELÁSQUEZ RIFFO','2001-11-06','C. A. DREAM','5',NULL,'2018-08-31 23:41:41','2018-08-31 23:41:41','8',NULL,NULL),(2217,186,1,'27.43','MARTINA KREUTZBERGER',NULL,'MANQUEHUE','13',NULL,'2018-09-01 15:45:32','2018-09-02 13:53:16','5',NULL,NULL),(2218,186,2,'29.81','ANDREA JALIL GARCIA',NULL,'CDUC','13',NULL,'2018-09-01 15:45:32','2018-09-02 13:53:19','7',NULL,NULL),(2219,186,3,'28.76','ANTONIA FUICA BERGER',NULL,'CDUC','13',NULL,'2018-09-01 15:45:32','2018-09-02 13:53:23','6',NULL,NULL),(2220,186,0,'26.11','FRANCISCA VALENCIA BEOVIC',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 15:45:32','2018-09-02 14:39:04','4',NULL,NULL),(2221,186,0,'27.72','RENATTE PINNINGHOOF AGUILA',NULL,'UACH','14',NULL,'2018-09-01 15:45:32','2018-09-02 14:39:09','3',NULL,NULL),(2222,187,1,'1:00.03','JASON ROMERO SOTO',NULL,'C. D. BERNANDO FELMER','14',NULL,'2018-09-01 15:53:46','2018-09-02 14:44:07','5',NULL,NULL),(2223,187,0,'53.94','CESAR JOFRE PINCHEIRA',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 15:53:46','2018-09-02 14:43:19','4',NULL,NULL),(2240,206,1,'15.18','CRISTOBAL DULANTO DIAZ',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:06:35','2018-09-02 15:32:44','3',NULL,NULL),(2241,206,2,'15.68','JOSE RISOPATRON LORENZO',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:06:35','2018-09-02 15:32:36','5',NULL,NULL),(2242,206,3,'16.25','FRANCISCO JORQUERA FAUNDEZ',NULL,'C. A. WINSOR SCHOOL','14',NULL,'2018-09-01 18:06:35','2018-09-02 15:33:23','2',NULL,NULL),(2243,206,4,'16.34','LUIS RIFFO CAMPOS',NULL,'A. COYHAIQUE','12',NULL,'2018-09-01 18:06:35','2018-09-02 15:34:09','6',NULL,NULL),(2244,206,5,'16.75','MATIAS BAEZA LOBOS',NULL,'C. A. RICARDO SAGUA','13',NULL,'2018-09-01 18:06:35','2018-09-02 15:34:36','7',NULL,NULL),(2245,206,NULL,'DNS','VICTORIANO MORA',NULL,'CENTRO A. FORMATIVO','13',NULL,'2018-09-01 18:06:35','2018-09-03 16:04:17','4',NULL,NULL),(2246,206,NULL,'DNS','LYON ERRAZURIZ',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:06:35','2018-09-03 16:04:30','8',NULL,NULL),(2247,207,1,'12.26','ANAIS HERNANDEZ ALEGRIA',NULL,'C. A. NACIONAL IQUIQUE','1',NULL,'2018-09-01 18:19:35','2018-09-02 15:55:30','4',NULL,NULL),(2248,207,2,'12.98','VANESA CAROLINA ANGULO URREA',NULL,'C. D. ESC. DE ATLETISMO OSORNO','10',NULL,'2018-09-01 18:19:35','2018-09-02 15:56:34','5',NULL,NULL),(2249,207,3,'13.04','ESCARLET PARADA TIRADA',NULL,'C. CULTURA FISICA','5',NULL,'2018-09-01 18:19:35','2018-09-02 15:59:04','3',NULL,NULL),(2250,207,4,'13.23','ESPERANZA MARCELA ALVEAR',NULL,'C. A.DREAM','5',NULL,'2018-09-01 18:19:35','2018-09-02 16:00:13','6',NULL,NULL),(2251,207,5,'13.89','MELANIE MAC-GINTY CACERES',NULL,'A. YKA','13',NULL,'2018-09-01 18:19:35','2018-09-02 16:01:21','7',NULL,NULL),(2252,207,6,'14.80','AMANDA RIVEROS FLORES',NULL,'C. A. VALPARAISO','5',NULL,'2018-09-01 18:19:35','2018-09-02 16:02:25','8',NULL,NULL),(2253,207,7,'16.78','ISIDORA CERDA AGUIRRE',NULL,'A. YKA','13',NULL,'2018-09-01 18:19:35','2018-09-02 16:02:48','1',NULL,NULL),(2254,207,NULL,'DNS','MARIA CECILIA MUÑOZ NUÑEZ',NULL,'C. D. A. CORONEL','6',NULL,'2018-09-01 18:19:35','2018-09-02 16:03:34','2',NULL,NULL),(2255,208,1,'12.51','MARIA GRACIA VARAS FUENZALIDAS',NULL,'MANQUEHUE','13',NULL,'2018-09-01 18:22:58','2018-09-02 16:06:01','5',NULL,NULL),(2256,208,2,'13.46','BELEN LEYTON DUARTE',NULL,'C. A. ESTUDIANTES','13',NULL,'2018-09-01 18:22:58','2018-09-02 16:06:30','8',NULL,NULL),(2257,208,3,'13.48','MACARENA GAJARDO DONOSO',NULL,'MANQUEHUE','13',NULL,'2018-09-01 18:22:58','2018-09-02 16:09:25','7',NULL,NULL),(2258,208,4,'13.53','FLORENCIA SANTIBAÑEZ TAGLE',NULL,'MANQUEHUE','13',NULL,'2018-09-01 18:22:58','2018-09-02 16:10:35','2',NULL,NULL),(2259,208,5,'14.38','VONKA BUSTOS CASTRO',NULL,'C. A. ESTUDIANTES','13',NULL,'2018-09-01 18:22:58','2018-09-02 16:11:14','1',NULL,NULL),(2260,208,6,'15.32','BELEN PERALTA CONCHA',NULL,'C. D. NICOLAS CARVAJAL','13',NULL,'2018-09-01 18:22:58','2018-09-02 16:19:33','6',NULL,NULL),(2261,208,NULL,'DNS','AYUN FARIAS',NULL,'C. MARISTA CURICO','13',NULL,'2018-09-01 18:22:58','2018-09-03 16:11:31','3',NULL,NULL),(2262,208,NULL,'DNS','JOSEPHINE HALLER WIESNER',NULL,'MANQUEHUE','13',NULL,'2018-09-01 18:22:58','2018-09-03 16:11:35','4',NULL,NULL),(2263,209,1,'12.17','JAVIERA CAÑAS GAMBETTA',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:29:10','2018-09-02 16:20:28','4',NULL,NULL),(2264,209,2,'12.23','MARIA IGNACIA MONTT BLANCHARD',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:29:10','2018-09-02 16:21:05','5',NULL,NULL),(2265,209,3,'12.45','POULETTE CARDOCH RAMOS',NULL,'C. A. PACIFICO','5',NULL,'2018-09-01 18:29:10','2018-09-02 16:23:37','6',NULL,NULL),(2266,209,4,'12.78','VALENTINA KEIM LEON',NULL,'CDUC','6',NULL,'2018-09-01 18:29:10','2018-09-02 16:23:56','7',NULL,NULL),(2267,209,5,'12.84','CAMILA CAMPOS',NULL,'C. GALGOS RUNNERS LINARES','13',NULL,'2018-09-01 18:29:10','2018-09-02 16:24:22','1',NULL,NULL),(2268,209,6,'13.10','VALENTINA LEIVA ZUÑIGA',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:29:10','2018-09-02 16:24:42','3',NULL,NULL),(2269,209,NULL,'DNS','GEORGINA REYES MARILEO',NULL,'A. USACH','13',NULL,'2018-09-01 18:29:10','2018-09-03 16:13:13','2',NULL,NULL),(2270,209,NULL,'DNS','MARIA IGNACIA ASPILLAGA',NULL,'CDUC','13',NULL,'2018-09-01 18:29:10','2018-09-03 16:13:28','8',NULL,NULL),(2271,210,1,'10.98','ANDRES STEUER FLANDEZ',NULL,'C. A. WINDSOR SCHOOL','14',NULL,'2018-09-01 18:36:15','2018-09-03 16:23:37','4',NULL,NULL),(2272,210,2,'11.61','SEBASTIAN NUÑEZ RODILLO',NULL,'A. FRANCES','13',NULL,'2018-09-01 18:36:15','2018-09-03 16:24:11','5',NULL,NULL),(2273,210,3,'11.87','SANTIAGO VIAL RUIZ TAGLE',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:36:15','2018-09-03 16:25:33','7',NULL,NULL),(2274,210,4,'12.02','IGNACIO AGRAMUNT MENDOZA',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:36:15','2018-09-03 16:24:57','6',NULL,NULL),(2275,210,5,'12.47','ANDRES MORAGA MIDDLETON',NULL,'MANQUEHUE','13',NULL,'2018-09-01 18:36:15','2018-09-03 16:26:33','2',NULL,NULL),(2276,210,NULL,'DNS','IAN KELLER GOMEZ',NULL,'MANQUEHUE','13',NULL,'2018-09-01 18:36:15','2018-09-03 16:24:31','3',NULL,NULL),(2277,210,NULL,'DNS','HECTOR JOSE CALDERON VALLEJOS',NULL,'C. A. ALAMEDA TALCA','7',NULL,'2018-09-01 18:36:15','2018-09-03 16:26:11','8',NULL,NULL),(2278,211,1,'11.37','DOMINGO LAZO WEISS',NULL,'C. D. NICOLAS CARVAJAL','13',NULL,'2018-09-01 18:39:54','2018-09-03 16:27:35','5',NULL,NULL),(2279,211,2,'11.57','JOAQUIN WELCH SOTO',NULL,'A. OASSI','13',NULL,'2018-09-01 18:39:54','2018-09-03 16:31:02','3',NULL,NULL),(2280,211,3,'11.92','ESTEBAN MARIN CANCINO',NULL,'LOS CONQUISTADORES','6',NULL,'2018-09-01 18:39:54','2018-09-03 16:34:48','8',NULL,NULL),(2281,211,NULL,'DNS','PEDRO PABLO OSSANDON',NULL,'A. FRANCES','13',NULL,'2018-09-01 18:39:54','2018-09-03 16:35:39','2',NULL,NULL),(2282,211,NULL,'DNS','CRISTIAN VIAL ERRAZURIZ',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:39:54','2018-09-03 16:30:13','4',NULL,NULL),(2283,211,NULL,'DNS','EDUARDO MACKAY DELAVEAU',NULL,'MANQUEHUE','13',NULL,'2018-09-01 18:39:54','2018-09-03 16:32:00','6',NULL,NULL),(2284,211,NULL,'DNS','OMAR CIFUENTES',NULL,'A. OASSI','13',NULL,'2018-09-01 18:39:54','2018-09-03 16:32:28','7',NULL,NULL),(2285,212,1,'11.25','MARTIN NICOLAS RUDOLPH MUÑOZ',NULL,'C. A. GERARDO MANZANARES','10',NULL,'2018-09-01 18:43:58','2018-09-03 16:37:11','5',NULL,NULL),(2286,212,2,'11.37','LUCAS BRAHM ESCALONA',NULL,'MANQUEHUE','13',NULL,'2018-09-01 18:43:58','2018-09-03 16:36:16','4',NULL,NULL),(2287,212,3,'11.77','SEBASTIAN CELIS DELARD',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:43:58','2018-09-03 16:37:59','6',NULL,NULL),(2288,212,4,'12.18','DIEGO BRAVO PEREZ',NULL,'C. CULTURA FISICA','5',NULL,'2018-09-01 18:43:58','2018-09-03 16:39:14','8',NULL,NULL),(2289,212,NULL,'DNS','TOMAS MALAGUEÑO TOLEDO',NULL,'A. FRANCES','13',NULL,'2018-09-01 18:43:58','2018-09-03 16:39:37','2',NULL,NULL),(2290,212,NULL,'DNS','FRANCO SOLARI FORTE',NULL,'CDUC','13',NULL,'2018-09-01 18:43:58','2018-09-03 16:37:30','3',NULL,NULL),(2291,212,NULL,'DNS','FELIPE IGNACIO CAMPUSANO TORRES',NULL,'C. A. ALAMEDA TALCA','7',NULL,'2018-09-01 18:43:58','2018-09-03 16:38:52','7',NULL,NULL),(2292,213,1,'11.63','ANDRES ESTEBAN ORREGO FRITZ',NULL,'C. A. PHOENIX','9',NULL,'2018-09-01 18:47:28','2018-09-03 17:24:11','5',NULL,NULL),(2293,213,2,'11.64','DANIEL KLENNER AGUILERA',NULL,'. MARISTA CURICO','7',NULL,'2018-09-01 18:47:28','2018-09-03 17:25:15','4',NULL,NULL),(2294,213,3,'11.67','JOSE TOMAS GREZ YOUNG',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:47:28','2018-09-03 17:25:42','3',NULL,NULL),(2295,213,NULL,'DNS','AGUSTIN SOTO LA FOY MEZA',NULL,'MANQUEHUE','13',NULL,'2018-09-01 18:47:28','2018-09-03 17:26:09','6',NULL,NULL),(2296,213,NULL,'DNS','BENJAMIN BARRIENTOS  GONZALES',NULL,'C. A. HARAMBEE','13',NULL,'2018-09-01 18:47:28','2018-09-03 17:26:39','7',NULL,NULL),(2297,213,NULL,'DNS','DOMINGO RUIZ TALA',NULL,'MANQUEHUE','13',NULL,'2018-09-01 18:47:28','2018-09-03 17:27:02','8',NULL,NULL),(2298,214,1,'11.53','JOAQUIN ALIAGA ENCIMA',NULL,'A. ATACAMA','3',NULL,'2018-09-01 18:52:21','2018-09-03 17:28:46','5',NULL,NULL),(2299,214,2,'11.98','CLEMENTE HEVIA VALDIVIESO',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:52:21','2018-09-03 17:29:22','3',NULL,NULL),(2300,214,3,'12.80','GUSTAVO DELGADO PULGAR',NULL,'C. A. HECTOR NEIRA','10',NULL,'2018-09-01 18:52:21','2018-09-03 17:30:05','8',NULL,NULL),(2301,214,NULL,'DNS','VICENTE JAVIER PRADENAS CEA',NULL,'C. A. ALAMEDA TALCA','7',NULL,'2018-09-01 18:52:21','2018-09-03 17:30:42','4',NULL,NULL),(2302,214,NULL,'DNS','JORGE DABED CACERES',NULL,'A. SANTIAGO','13',NULL,'2018-09-01 18:52:21','2018-09-03 17:30:56','6',NULL,NULL),(2303,214,NULL,'DNS','CLEMENTE LECAROS SAAVEDRA',NULL,'A. FRANCES','13',NULL,'2018-09-01 18:52:21','2018-09-03 17:31:07','7',NULL,NULL),(2304,215,1,'10.77','ENZO FAULBAUM SOLARI',NULL,'CDUC','13',NULL,'2018-09-01 18:59:59','2018-09-03 17:32:19','4',NULL,NULL),(2305,215,2,'10.86','IGNACIO NORDETTI LLULL',NULL,'CDUC','13',NULL,'2018-09-01 18:59:59','2018-09-03 17:32:41','5',NULL,NULL),(2306,215,3,'11.10','FRANCO AGUILAR MUÑOZ',NULL,'C. CULTURA FISICA','5',NULL,'2018-09-01 18:59:59','2018-09-03 17:33:38','3',NULL,NULL),(2307,215,4,'11.30','ANTONIO PEREIRA VASQUEZ',NULL,'C. A. PACIFICO','5',NULL,'2018-09-01 18:59:59','2018-09-03 17:33:56','7',NULL,NULL),(2308,215,5,'11.51','RODRIGO MUÑOZ LEIVA',NULL,'C. A. UBB CHILLAN','8',NULL,'2018-09-01 18:59:59','2018-09-03 17:34:27','8',NULL,NULL),(2309,215,NULL,'DNS','MARCELO BURGOS VILLANUEVA',NULL,'C. A. UBB CHILLAN','8',NULL,'2018-09-01 18:59:59','2018-09-03 17:34:55','2',NULL,NULL),(2310,215,NULL,'DNS','ANGEL SEBASTIAN RICKENBERG HARO',NULL,'C. A. PHOENIX','9',NULL,'2018-09-01 18:59:59','2018-09-03 17:35:22','6',NULL,NULL),(2311,245,1,'15.47',NULL,NULL,NULL,'0',NULL,'2018-09-01 19:35:44','2018-09-01 19:35:44','3',NULL,NULL),(2312,245,2,'15.50',NULL,NULL,NULL,'0',NULL,'2018-09-01 19:35:44','2018-09-01 19:35:44','5',NULL,NULL),(2313,245,3,'16.17',NULL,NULL,NULL,'0',NULL,'2018-09-01 19:35:44','2018-09-01 19:35:44','6',NULL,NULL),(2314,245,4,'17.15',NULL,NULL,NULL,'0',NULL,'2018-09-01 19:35:44','2018-09-01 19:35:44','7',NULL,NULL),(2315,245,5,'17.19',NULL,NULL,NULL,'0',NULL,'2018-09-01 19:35:44','2018-09-01 19:35:44','8',NULL,NULL),(2316,218,1,'4:50.79','Cornejo Dueñas',NULL,'A. Santiago','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2317,218,2,'4:52.95','Urra Calquin',NULL,'A. Yka','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2318,218,3,'4:55.46','Rocha Benavides',NULL,'Carabineros','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2319,218,4,'5:01.53','Sanhueza',NULL,'C.A NAHUEN','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2320,218,5,'5:12.48','Velasquez Madrid',NULL,'A. Santiago','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2321,218,6,'5:14.38','Donoso',NULL,'C. A. Nekuln Galgos','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2322,218,7,'5:20.25','Jalil Garcia',NULL,'Cduc','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2323,218,8,'5:32.98','Delgado Torrejon',NULL,'C. A. Ohiggins','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2324,218,9,'5:41.35','Chaparro Cornejo',NULL,'A. Santiago','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2325,218,10,'6:06.20','Calfuleo',NULL,'A. LA Pintana','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2326,218,NULL,'DNS','Prado Villarroel',NULL,'A. LA Pintana','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2327,218,NULL,'DNS','Yañez Allendes',NULL,'C. A. Dream','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2328,218,NULL,'DNS','Jorquera Galaz',NULL,'A. Santiago','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2329,218,NULL,'DNS','Torrealba Hernandez',NULL,'A. Nancagua','0',NULL,'2018-09-01 19:44:20','2018-09-01 19:44:20','0',NULL,NULL),(2330,247,1,'12.40',NULL,NULL,NULL,'0',NULL,'2018-09-01 20:04:15','2018-09-01 20:04:15','4',NULL,NULL),(2331,247,2,'13.12',NULL,NULL,NULL,'0',NULL,'2018-09-01 20:04:15','2018-09-01 20:04:15','3',NULL,NULL),(2332,247,3,'13.21',NULL,NULL,NULL,'0',NULL,'2018-09-01 20:04:15','2018-09-01 20:04:15','6',NULL,NULL),(2333,247,4,'13.45',NULL,NULL,NULL,'0',NULL,'2018-09-01 20:04:15','2018-09-01 20:04:15','8',NULL,NULL),(2334,247,5,'13.63',NULL,NULL,NULL,'0',NULL,'2018-09-01 20:04:15','2018-09-01 20:04:15','1',NULL,NULL),(2335,247,6,'13.64',NULL,NULL,NULL,'0',NULL,'2018-09-01 20:04:15','2018-09-01 20:04:15','2',NULL,NULL),(2336,248,1,'12.05','',NULL,NULL,'0',NULL,'2018-09-01 20:06:22','2018-09-01 20:19:39','4',NULL,NULL),(2337,248,2,'12.16','',NULL,NULL,'0',NULL,'2018-09-01 20:06:22','2018-09-01 20:19:38','5',NULL,NULL),(2338,248,3,'12.38','',NULL,NULL,'0',NULL,'2018-09-01 20:06:22','2018-09-01 20:19:37','3',NULL,NULL),(2339,248,4,'12.67',NULL,NULL,NULL,'0',NULL,'2018-09-01 20:06:22','2018-09-01 20:06:22','6',NULL,NULL),(2340,251,1,'10.71','Faulbaum Solari',NULL,'CDUC','0',NULL,'2018-09-01 20:22:34','2018-09-01 20:22:34','4',NULL,NULL),(2341,251,2,'10.72','Nordetti Llull',NULL,'CDUC','0',NULL,'2018-09-01 20:22:34','2018-09-01 20:22:34','5',NULL,NULL),(2342,251,3,'11.14','Aguilar Muñoz',NULL,'C. Cultura Fisica','0',NULL,'2018-09-01 20:22:34','2018-09-01 20:22:34','3',NULL,NULL),(2343,251,4,'11.16','Pereira Vasquez',NULL,'C.A. Pacifico','0',NULL,'2018-09-01 20:22:34','2018-09-01 20:22:34','7',NULL,NULL),(2344,251,5,'11.41','Muñoz Leiva',NULL,'C.A. UBB Chillan','0',NULL,'2018-09-01 20:22:34','2018-09-01 20:22:34','6',NULL,NULL),(2345,249,1,'11.16','Steuer Flandez',NULL,'C.A Wyinsor School','0',NULL,'2018-09-01 20:25:31','2018-09-01 20:25:31','4',NULL,NULL),(2346,249,2,'11.37','Rudolph Muñoz',NULL,'C.A Gerardo Manzanares','0',NULL,'2018-09-01 20:25:31','2018-09-01 20:25:31','5',NULL,NULL),(2347,249,3,'11.47','Brahm Escalona',NULL,'Manquehue','0',NULL,'2018-09-01 20:25:31','2018-09-01 20:25:31','6',NULL,NULL),(2348,249,4,'11.49','Lazo Weiss',NULL,'C.D. Nicolas Carvajal','0',NULL,'2018-09-01 20:25:31','2018-09-01 20:25:31','3',NULL,NULL),(2349,249,5,'11.68','Aliaga Encina',NULL,'A.Atacama','0',NULL,'2018-09-01 20:25:31','2018-09-01 20:25:31','7',NULL,NULL),(2350,249,6,'11.76','Orrego Fritz',NULL,'C.A. Phoenix','0',NULL,'2018-09-01 20:25:31','2018-09-01 20:25:31','1',NULL,NULL),(2351,249,7,'11.84','Welch Soto',NULL,'A. OASSI','0',NULL,'2018-09-01 20:25:31','2018-09-01 20:25:31','8',NULL,NULL),(2352,244,1,'55.33','Weil Restrepo',NULL,'Manquehue','0',NULL,'2018-09-01 20:31:14','2018-09-01 20:31:14','4',NULL,NULL),(2353,244,2,'57.45','Castillo Lillo',NULL,'C.A. Estudiantes','0',NULL,'2018-09-01 20:31:14','2018-09-01 20:31:14','5',NULL,NULL),(2354,244,3,'58.57','Cordoba Paredes',NULL,'C.A. Pacifico','0',NULL,'2018-09-01 20:31:14','2018-09-01 20:31:14','6',NULL,NULL),(2355,244,4,'59.10','Paves Morales',NULL,'A.Santiago','0',NULL,'2018-09-01 20:31:14','2018-09-01 20:31:14','3',NULL,NULL),(2356,244,5,'1:01.24','Navarro Garrido',NULL,'C. Atletismo Coquimbo','0',NULL,'2018-09-01 20:31:14','2018-09-01 20:31:14','7',NULL,NULL),(2357,244,6,'1:03.08','Pavez Morales',NULL,'A. Santiago','0',NULL,'2018-09-01 20:31:14','2018-09-01 20:31:14','2',NULL,NULL),(2358,244,7,'1:03.25','Riveros Cabello',NULL,'A. OASSI','0',NULL,'2018-09-01 20:31:14','2018-09-01 20:31:14','8',NULL,NULL),(2359,243,1,'49.19','Muñoz Cristobal',NULL,'C.A. Gerardo Manzanares','0',NULL,'2018-09-01 20:41:46','2018-09-01 20:41:46','5',NULL,NULL),(2360,243,2,'49.69','Leon Giacoman Matias',NULL,'CDUC','0',NULL,'2018-09-01 20:41:46','2018-09-01 20:41:46','3',NULL,NULL),(2361,243,3,'51.00','Andrade Alvarado Kevin',NULL,'C.A. Nielol','0',NULL,'2018-09-01 20:41:46','2018-09-01 20:41:46','7',NULL,NULL),(2362,243,4,'51.55','Muñoz Villa Sebastian',NULL,'C.A. NIEKUL GALGOS','0',NULL,'2018-09-01 20:41:46','2018-09-01 20:41:46','8',NULL,NULL),(2363,243,5,'52.27','Robles Campos Diego',NULL,'C.A. Nielol','0',NULL,'2018-09-01 20:41:46','2018-09-01 20:41:46','6',NULL,NULL),(2364,243,6,'52.57','Lopez Blinder Tomas',NULL,'C.A. Provincial Osorno','0',NULL,'2018-09-01 20:41:46','2018-09-01 20:41:46','1',NULL,NULL),(2365,243,7,'54.69','Riffo Campos Luis',NULL,'A. Coyhaique','0',NULL,'2018-09-01 20:41:46','2018-09-01 20:41:46','2',NULL,NULL),(2366,252,1,'51.72',NULL,NULL,'A.A. Valparaiso','5',NULL,'2018-09-01 21:01:06','2018-09-01 21:01:06','3',NULL,NULL),(2367,252,2,'56.01',NULL,NULL,'A. OASSI','13',NULL,'2018-09-01 21:01:06','2018-09-01 21:01:06','4',NULL,NULL),(2368,216,1,'3:57.64','Cardenas',NULL,'A. Ñielol','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:10:59','1',NULL,NULL),(2369,216,2,'3:58.03','Uribe Troncoso',NULL,'A. Frances','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:00','1',NULL,NULL),(2370,216,3,'3:59.24','Gonzalez Sanchez',NULL,'C. A. Pacifico','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:01','1',NULL,NULL),(2371,216,4,'4:04.12','Garrido Berrios',NULL,'A. LA Pintana','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:03','1',NULL,NULL),(2372,216,5,'4:04.92','Enriquez Fernandez',NULL,'C. DE Natacion Campanil','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:04','1',NULL,NULL),(2373,216,6,'4:12.41','Tessada',NULL,'Israel Saez','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:05','1',NULL,NULL),(2374,216,7,'4:13.14','Cancino Diaz',NULL,'A. Nancagua','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:07','1',NULL,NULL),(2375,216,8,'4:14.55','Orrego',NULL,'C.A. Nahuen','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:08','1',NULL,NULL),(2376,216,9,'4:14.99','Villalobos Plaza',NULL,'C. Circulo A. San Antonio','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:09','1',NULL,NULL),(2377,216,10,'4:15.01','Varela Inostroza',NULL,'CDU del Bio Bio','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:10','1',NULL,NULL),(2378,216,11,'4:16.86','Roman Moreno',NULL,'A. Frances','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:11','1',NULL,NULL),(2379,216,12,'4:16.87','Melende Piñones',NULL,'C. A. Ricardo Sagua','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:12','1',NULL,NULL),(2380,216,13,'4:28.81','Rojo Sanhueza',NULL,'A. LA Pintana','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:14','1',NULL,NULL),(2381,216,14,'4:29.13','Bugueño Loaysa',NULL,'C.A Ricardo Sahua','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:15','1',NULL,NULL),(2382,216,15,'4:29.71','Rodriguez Garrido',NULL,'C.A. Tamarugo','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:18','1',NULL,NULL),(2383,216,16,'4:39.41','Ortiz Ramis',NULL,'C.Cultura Fisica','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:18','1',NULL,NULL),(2384,216,17,'4:49.86','Pinillo Velasquez',NULL,'A.Santiago','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:20','1',NULL,NULL),(2385,216,18,'5:01.99','Adonis Boyd',NULL,'A.Santiago','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:21','1',NULL,NULL),(2386,216,NULL,'DNS','Arregui Arriagada',NULL,'C. A. Delta','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:26','1',NULL,NULL),(2387,216,NULL,'DNS','Cifra Peña',NULL,'A. Frances','0',NULL,'2018-09-01 21:10:52','2018-09-01 21:11:26','1',NULL,NULL),(2388,216,NULL,'DNS','Mamani Ayca',NULL,'C. D. Trotamundos','0',NULL,'2018-09-01 21:10:53','2018-09-01 21:11:27','1',NULL,NULL),(2389,216,NULL,'DNS','Fuentes Hernandez',NULL,'C. A. Nekuln Galgos','0',NULL,'2018-09-01 21:10:53','2018-09-01 21:11:27','1',NULL,NULL),(2390,216,NULL,'DNS','Sanhueza Urtubia',NULL,'Centro A. Formativo','0',NULL,'2018-09-01 21:10:53','2018-09-01 21:11:27','1',NULL,NULL),(2391,216,NULL,'DNS','Schmauck Mancilla',NULL,'C. A. Puerto Sur','0',NULL,'2018-09-01 21:10:53','2018-09-01 21:11:28','1',NULL,NULL),(2392,253,1,'44.88','',NULL,'A.OASSI','',NULL,'2018-09-01 21:15:12','2018-09-01 21:15:12','4',NULL,NULL),(2393,254,1,'14:52.40','Catrileo Tapia',NULL,'C. A. Nueva Imperial','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2394,254,2,'15:30.86','Rojas Faundez',NULL,'Ulagos Puerto Montt','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2395,254,3,'15:48.47','Codoceo Alvarez',NULL,'C. A. Dream','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2396,254,4,'15:50.41','Barria Asenjo',NULL,'C. A. Hector Neira','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2397,254,5,'15:58.67','Mamani Ayca',NULL,'C. D. Trotamundos','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2398,254,6,'15:59.29','Fuentes Hernandez',NULL,'C. A. Nekuln Galgos','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2399,254,7,'16:30.82','Opazo Arancibia',NULL,'A. LA Pintana','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2400,254,8,'16:56.15','Ale Troncoso',NULL,'C. A. Nahuelbuta','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2401,254,9,'17:24.41','Melendez Paiva',NULL,'C. A. Hector Neira','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2402,254,10,'17:39.89','Rubio Peña',NULL,'A. Nancagua','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2403,254,11,'18:35.96','Poblete Medina',NULL,'C. D. Nicolas Carvajal','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2404,254,NULL,'DNS','Rojas Chavez',NULL,'A. LA Pintana','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2405,254,NULL,'DNS','Arteaga Aldunate',NULL,'A. Santiago','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2406,254,NULL,'DNS','Burgos',NULL,'C. A. Maule','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2407,254,NULL,'DNS','Vera Silva',NULL,'A. Penco','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2408,254,NULL,'DNS','Saavedra Jara',NULL,'Carabineros','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2409,254,NULL,'DNS','Borquez Solis',NULL,'C. A. Provincial Osorno','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2410,254,NULL,'DNS','Velazquez',NULL,'A. Ñielol','0',NULL,'2018-09-01 21:18:19','2018-09-01 21:18:19','1',NULL,NULL),(2411,219,NULL,'DNF','HERNANDO SAAVEDRA',NULL,'CARABINEROS','13',NULL,'2018-09-02 13:27:19','2018-09-02 13:27:19','',NULL,NULL),(2412,219,NULL,'DNF','DANILO VERA SILVA',NULL,'CARABINEROS','13',NULL,'2018-09-02 13:27:58','2018-09-02 13:27:58','',NULL,NULL),(2453,255,1,'22.29','JUAN LUIS EGUIGUREN ZALAQUET',NULL,'A. SANTIAGO','13',NULL,'2018-09-02 14:54:29','2018-09-02 14:54:29','3',NULL,NULL),(2454,255,2,'22.76','MARTIN NICOLÁS RUDOLPH MUÑOZ',NULL,'C. A.  GERARDO MANZANARES','10',NULL,'2018-09-02 14:56:01','2018-09-02 14:56:01','3',NULL,NULL),(2455,255,3,'22.92','KEVIN PAUL ANDRADE ALVARADO',NULL,'C.A. ÑIELOL','9',NULL,'2018-09-02 14:57:14','2018-09-02 14:57:19','5',NULL,NULL),(2456,255,4,'22.93','DOMINGO LAZO WEISS',NULL,'C. D. NICOLAS CARV','',NULL,'2018-09-02 14:58:45','2018-09-02 14:58:45','6',NULL,NULL),(2457,255,5,'23.19','JOAQUÍN ALIAGA ENCINA',NULL,'A. ATACAMA','',NULL,'2018-09-02 14:59:38','2018-09-02 14:59:38','7',NULL,NULL),(2458,255,6,'23.65','MARCOS GUERRA ÁLVAREZ',NULL,'C. CULTURA FÍSICA','',NULL,'2018-09-02 15:00:52','2018-09-02 15:00:52','2',NULL,NULL),(2459,255,7,'26.69','OMAR CIFUENTES',NULL,'OASSI','13',NULL,'2018-09-02 15:01:39','2018-09-02 15:01:39','1',NULL,NULL),(2460,255,NULL,'DNS','ANDRES ESTEBAN ORREGO FRITZ',NULL,'C. A. PHOENIX','9',NULL,'2018-09-02 15:02:13','2018-09-02 15:02:13','8',NULL,NULL),(2461,260,1,'25.14','MARTINA WEIL RESTREPO',NULL,'CDUC','13',NULL,'2018-09-02 15:09:36','2018-09-02 15:09:36','4',NULL,NULL),(2462,229,1,'1:06.39','VIOLETA ARNAIZ CORNEJO',NULL,'CDUC','0',NULL,'2018-09-02 15:09:54','2018-09-02 15:09:54','4',NULL,NULL),(2463,229,2,'1:07.57','KATHERINE CORDOVA PAREDES',NULL,'C.A. PACIFICO','0',NULL,'2018-09-02 15:09:54','2018-09-02 15:09:54','3',NULL,NULL),(2464,229,3,'1:10.85','FERNANDA CABRERA CARRASCO',NULL,'C. A. O\'HIGGINS','0',NULL,'2018-09-02 15:09:54','2018-09-02 15:09:54','5',NULL,NULL),(2465,229,4,'1:12.02','ELISA RODRIGUEZ FIGUEROA',NULL,'CDUC','0',NULL,'2018-09-02 15:09:54','2018-09-02 15:09:54','6',NULL,NULL),(2466,229,5,'1:17.24','KATHERIN CONSTANZA SILVA',NULL,'C. A. DREAM','0',NULL,'2018-09-02 15:09:54','2018-09-02 15:09:54','7',NULL,NULL),(2467,260,2,'26.26','MARÍA FERNANDA PAVEZ MORALES',NULL,'A. SANTIAGO','13',NULL,'2018-09-02 15:10:19','2018-09-02 15:10:19','2',NULL,NULL),(2468,260,3,'26.80','VANESA CAROLINA ANGULO URREA',NULL,'C. D. ESC. DE ATLETISMO OSORNO','10',NULL,'2018-09-02 15:11:36','2018-09-02 15:11:36','6',NULL,NULL),(2469,260,4,'26.92','ESTEFANY PAVEZ MORALES',NULL,'A. SANTIAGO','13',NULL,'2018-09-02 15:12:27','2018-09-02 15:12:27','3',NULL,NULL),(2470,260,5,'27.42','ESCARLET PARADA TIRADO',NULL,'C. CULTURA FÍSICA','',NULL,'2018-09-02 15:13:11','2018-09-02 15:13:11','7',NULL,NULL),(2471,260,6,'28.02','FERNANDA RAMOS TORO',NULL,'A. SAN VICENTE','',NULL,'2018-09-02 15:14:06','2018-09-02 15:14:06','8',NULL,NULL),(2472,260,7,'28.27','ESPERANZA MARCELA ALVEAR',NULL,'C. A. DREAM','',NULL,'2018-09-02 15:14:50','2018-09-02 15:14:50','2',NULL,NULL),(2473,231,1,'55.12','MATIAS QUEZADA CORTES',NULL,'A. SANTIAGO','0',NULL,'2018-09-02 15:15:16','2018-09-02 15:15:16','5',NULL,NULL),(2474,231,2,'56.22','CRISTOBAL TORRES',NULL,'A. OASSI','0',NULL,'2018-09-02 15:15:16','2018-09-02 15:15:16','4',NULL,NULL),(2475,231,NULL,'DNS','NICOLAS CASTRO',NULL,'A. OASSI','0',NULL,'2018-09-02 15:15:16','2018-09-02 15:15:16','3',NULL,NULL),(2476,260,8,'28.94','MELANIE MAC-GINTY CÁCERES',NULL,'A. YKA','13',NULL,'2018-09-02 15:15:38','2018-09-02 15:15:38','1',NULL,NULL),(2477,261,1,'24.91','JAVIERA CAÑAS GAMBETA',NULL,'A. SANTIAGO','13',NULL,'2018-09-02 15:17:29','2018-09-02 15:17:29','4',NULL,NULL),(2478,232,1,'54.03','CRISTÓBAL GONZALO MUÑOZ',NULL,'C. A. GERARDO MANZANARES','0',NULL,'2018-09-02 15:17:34','2018-09-02 15:17:34','4',NULL,NULL),(2479,232,2,'56.73','CRISTOBAL  DULANTO DIAZ',NULL,'A. SANTIAGO','0',NULL,'2018-09-02 15:17:34','2018-09-02 15:17:34','8',NULL,NULL),(2480,232,3,'57.23','LUIS RIFFO CAMPOS',NULL,'A. COYHAIQUE','0',NULL,'2018-09-02 15:17:34','2018-09-02 15:17:34','3',NULL,NULL),(2481,232,4,'59.04','VICENTE CRUZ BUSSE',NULL,'CDUC','0',NULL,'2018-09-02 15:17:34','2018-09-02 15:17:34','6',NULL,NULL),(2482,232,NULL,'DNS','MATIAS  LEON  GIACOMAN',NULL,'CDUC','0',NULL,'2018-09-02 15:17:34','2018-09-02 15:17:34','5',NULL,NULL),(2483,232,NULL,'DNS','IGNACIO PEREZ ALBAYAL',NULL,'A. SANTIAGO','0',NULL,'2018-09-02 15:17:34','2018-09-02 15:17:34','7',NULL,NULL),(2484,232,NULL,'DNS','PASCAL VEGA  TORRES',NULL,'A. OASSI','0',NULL,'2018-09-02 15:17:34','2018-09-02 15:17:34','2',NULL,NULL),(2485,261,2,'25.36','POULETTE CARDOCH RAMOS',NULL,'C. A. PACIFICO','',NULL,'2018-09-02 15:18:17','2018-09-02 15:18:17','5',NULL,NULL),(2486,261,3,'26.48','MARÍA IGNACIA MONTT BLANCHARD',NULL,'A. SANTIAGO','13',NULL,'2018-09-02 15:18:55','2018-09-02 15:18:55','3',NULL,NULL),(2487,233,1,'59.03','LUCAS FUNES FERNANDEZ',NULL,'C.A. DELTA','0',NULL,'2018-09-02 15:20:12','2018-09-02 15:20:12','5',NULL,NULL),(2488,233,2,'59.84','JOSE TOMAS GREZ YOUNG',NULL,'A.SANTIAGO','0',NULL,'2018-09-02 15:20:12','2018-09-02 15:20:12','4',NULL,NULL),(2489,233,3,'1:03.15','VICENTE LYON ERRAZURIZ',NULL,'A. SANTIAGO','0',NULL,'2018-09-02 15:20:12','2018-09-02 15:20:12','3',NULL,NULL),(2490,233,4,'1:04.14','SANTIAGO ADONIS CARIAGA',NULL,'A. NANCAGUA','0',NULL,'2018-09-02 15:20:12','2018-09-02 15:20:12','2',NULL,NULL),(2491,233,NULL,'DNS','SEBASTIAN ADOLFO VALENCIA',NULL,'C.A. ÑIELOL','0',NULL,'2018-09-02 15:20:12','2018-09-02 15:20:12','6',NULL,NULL),(2492,233,NULL,'DNS','VICENTE ABARCA MEDINA',NULL,'C.A. ESTUDIANTES','0',NULL,'2018-09-02 15:20:12','2018-09-02 15:20:12','7',NULL,NULL),(2493,233,NULL,'DNS','BENJAMIN MEZA CASTRO',NULL,'A. OASSI','0',NULL,'2018-09-02 15:20:12','2018-09-02 15:20:12','8',NULL,NULL),(2494,256,1,'22.43','IGNACIO NORDETTI LLULL',NULL,'CDUC','13',NULL,'2018-09-02 15:21:22','2018-09-02 15:21:22','4',NULL,NULL),(2495,256,2,'22.55','FRANCO AGUILAR MUÑOZ',NULL,'C. CULTURA FÍSICA','',NULL,'2018-09-02 15:22:00','2018-09-02 15:22:00','5',NULL,NULL),(2496,256,3,'23.40','RODRIGO MUÑOZ LEIVA',NULL,'C. A. UBB CHILLÁN','',NULL,'2018-09-02 15:22:40','2018-09-02 15:22:40','3',NULL,NULL),(2497,203,1,'15.31','CHIA I RUAN',NULL,'MONTESORRI','7',NULL,'2018-09-02 15:24:51','2018-09-02 15:24:51','4',NULL,NULL),(2498,203,2,'15.82','EMILIA VALENZUELA',NULL,'CDUC','13',NULL,'2018-09-02 15:25:40','2018-09-03 16:02:21','7',NULL,NULL),(2499,189,1,'2:25.80','FRANCISCA VALENCIA BEOVIC',NULL,'A. SANTIAGO','0',NULL,'2018-09-02 15:34:38','2018-09-02 15:34:38','4',NULL,NULL),(2500,189,2,'2:45.08','ANDREA JALIL GARCIA',NULL,'CDUC','0',NULL,'2018-09-02 15:34:38','2018-09-02 15:34:38','5',NULL,NULL),(2501,189,3,'2:47.45','ANTONIA FUICA BERGER',NULL,'CDUC','0',NULL,'2018-09-02 15:34:38','2018-09-02 15:34:38','3',NULL,NULL),(2502,189,4,'2:53.80','MARTINA KREUTZBERGER',NULL,'MANQUEHUE','0',NULL,'2018-09-02 15:34:38','2018-09-02 15:34:38','6',NULL,NULL),(2503,237,1,'1:53.88','MATIAS JAVIER GARRIDO BERRIOS',NULL,'A. LA PINTANA','0',NULL,'2018-09-02 15:45:48','2018-09-02 15:45:56','1',NULL,NULL),(2504,237,2,'1:54.48','ROBERTO ORELLANA CODOCEO',NULL,'CENTRO A. FORMATIVO','0',NULL,'2018-09-02 15:45:48','2018-09-02 15:45:57','1',NULL,NULL),(2505,237,3,'1:54.78','ESTEBAN GONZÁLEZ SÁNCHEZ',NULL,'C. A. PACIFICO','0',NULL,'2018-09-02 15:45:48','2018-09-02 15:45:58','1',NULL,NULL),(2506,237,4,'1:55.27','FERNANDO ANDRES AREVALO',NULL,'C. Sagrados Corazones SSCC','0',NULL,'2018-09-02 15:45:48','2018-09-02 15:46:00','1',NULL,NULL),(2507,237,5,'1:55.93','IGNACIO TRUJILLO BARRERA',NULL,'C. D. U. DEL BIO-BIO','0',NULL,'2018-09-02 15:45:48','2018-09-02 15:46:01','1',NULL,NULL),(2508,237,6,'1:56.78','GIOVANNI CUNEO',NULL,'MANQUEHUE','0',NULL,'2018-09-02 15:45:48','2018-09-02 15:46:02','1',NULL,NULL),(2509,237,7,'1:57.17','SEBASTIAN FELIPE MUÑOZ  VILLA',NULL,'C. A. NEKULN GALGOS','0',NULL,'2018-09-02 15:45:48','2018-09-02 15:46:04','1',NULL,NULL),(2510,237,8,'1:57.60','JONATHAN RICARDO MONTES  LÓPEZ',NULL,'C. A. GERARDO MANZANARES','0',NULL,'2018-09-02 15:45:48','2018-09-02 15:46:07','1',NULL,NULL),(2511,237,9,'1:58.12','NICOLAS BILBAO',NULL,'A. CHUCHICAMATA','0',NULL,'2018-09-02 15:45:48','2018-09-02 15:46:08','1',NULL,NULL),(2512,237,10,'1:58.14','MARTIN ENRIQUES FERNANDEZ',NULL,'C. DE NATACION CAMPANIL','0',NULL,'2018-09-02 15:45:48','2018-09-02 15:46:10','1',NULL,NULL),(2513,237,11,'2:01.57','JOAQUIN CARDENAS',NULL,'C.A. ÑIELOL','0',NULL,'2018-09-02 15:45:49','2018-09-02 15:46:12','1',NULL,NULL),(2514,237,12,'2:03.77','MARTIN ROJO SANHUEZA',NULL,'A. LA PINTANA','0',NULL,'2018-09-02 15:45:49','2018-09-02 15:46:13','1',NULL,NULL),(2515,238,1,'1:59.21','JUAN PABLO CONTRERAS MAYA',NULL,'A. SANTIAGO','0',NULL,'2018-09-02 15:56:14','2018-09-02 15:56:14','1',NULL,NULL),(2516,238,2,'2:00.63','FELIPE PALLAHUEQUE GALLARDO',NULL,'ULAGOS PTO. MONTT','0',NULL,'2018-09-02 15:56:14','2018-09-02 15:56:14','1',NULL,NULL),(2517,238,3,'2:03.56','RICARDO  ROMÁN  MORENO',NULL,'A. FRANCES','0',NULL,'2018-09-02 15:56:14','2018-09-02 15:56:14','1',NULL,NULL),(2518,238,4,'2:03.77','MATÍAS ANTONIO PARDO PARDO',NULL,'A. FRANCES','0',NULL,'2018-09-02 15:56:14','2018-09-02 15:56:14','1',NULL,NULL),(2519,238,5,'2:05.37','DIEGO VARELA INOSTROZA',NULL,'C.D.U DEL BIO-BIO','0',NULL,'2018-09-02 15:56:14','2018-09-02 15:56:14','1',NULL,NULL),(2520,238,6,'2:05.41','JOSE IGNACIO ALDERETE ALVARADO',NULL,'A. ANCUD','0',NULL,'2018-09-02 15:56:14','2018-09-02 15:56:14','1',NULL,NULL),(2521,238,7,'2:07.01','TRISTAN RADIC',NULL,'U. CHILE','0',NULL,'2018-09-02 15:56:14','2018-09-02 15:56:14','1',NULL,NULL),(2522,238,8,'2:07.49','FELIPE ZUCKERMANN OLIVARES',NULL,'A. FRANCES','0',NULL,'2018-09-02 15:56:15','2018-09-02 15:56:15','1',NULL,NULL),(2523,238,9,'2:10.48','NICOLAS ARRIAGADA',NULL,'A. ESTUDIANTES','0',NULL,'2018-09-02 15:56:15','2018-09-02 15:56:15','1',NULL,NULL),(2524,239,1,'2:03.70','JOAQUÍN GONZÁLEZ PLAZA',NULL,'C. A. PACIFICO','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2525,239,2,'2:06.31','JOSE PEREZ VALEZUELA',NULL,'A. NANCAGUA','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2526,239,3,'2:07.68','MATIAS VELASQUEZ RIFFO',NULL,'C.A. DREAM','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2527,239,4,'2:07.90','ADONIS SALDAÑA BADILLA',NULL,'C.A HARAMBEE','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2528,239,5,'2:08.15','NICOLAS ALBERTO CARRILLO',NULL,'C. A. HARAMBEE','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2529,239,6,'2:09.19','MARIO RODRIGUEZ GARRIDO',NULL,'C.A TAMARUGO','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2530,239,7,'2:09.23','CLEMENTE YAÑEZ',NULL,'A. FRANCES','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2531,239,8,'2:10.95','JHON BORQUEZ SOLIS ',NULL,'C.A. PROVINCIAL OSORNO','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2532,239,9,'2:14.89','YERFERSON PINILLO VELASQUEZ',NULL,'A. SANTIAGO','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2533,239,10,'2:22.86','PABLO VIO BLOCH',NULL,'A. LA PINTANA','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2534,239,11,'2:44.93','TOMAS TOLEDO RUBILAR',NULL,'A. YKA','0',NULL,'2018-09-02 16:17:11','2018-09-02 16:17:11','1',NULL,NULL),(2535,242,1,'15:40.02','DANIELA CONSTANZA FERNANDEZ',NULL,'C. A. HECTOR NEIRA','0',NULL,'2018-09-02 16:20:47','2018-09-02 16:20:47','1',NULL,NULL),(2536,241,1,'9:33.46','MARCELO SILVA OJEDA',NULL,'A. FRANCES','0',NULL,'2018-09-02 16:27:30','2018-09-02 16:27:30','1',NULL,NULL),(2537,241,2,'10:12.11','RONALD MAMANI AYCA',NULL,'C. D. TROTAMUNDOS','0',NULL,'2018-09-02 16:27:30','2018-09-02 16:27:30','1',NULL,NULL),(2538,241,3,'10:26.07','GUILLERMO ANDRES ROJAS CHAVEZ',NULL,'A. LA PINTANA','0',NULL,'2018-09-02 16:27:30','2018-09-02 16:27:30','1',NULL,NULL),(2539,241,NULL,'DNF','ALEXIS MAGDIEL BARRIA ASENJO',NULL,'C. A. HECTOR NEIRA','0',NULL,'2018-09-02 16:27:30','2018-09-02 16:27:30','1',NULL,NULL),(2540,241,NULL,'DNF','PATRICIO PINTO QUINCHAHUAL',NULL,'C. A. NUEVA IMPERIAL','0',NULL,'2018-09-02 16:27:30','2018-09-02 16:27:30','1',NULL,NULL),(2541,241,NULL,'DNF','DIEGO URIBE',NULL,'A. FRANCES','0',NULL,'2018-09-02 16:27:30','2018-09-02 16:27:30','1',NULL,NULL),(2542,262,1,'4:28.14',NULL,NULL,'A. OASSI','0',NULL,'2018-09-02 16:29:22','2018-09-02 16:29:22','1',NULL,NULL),(2543,263,1,'3:32.79',NULL,NULL,'A. ÑIELOL','0',NULL,'2018-09-02 16:32:12','2018-09-02 16:32:12','3',NULL,NULL),(2544,263,2,'3:37.52',NULL,NULL,'A. OASSI','0',NULL,'2018-09-02 16:32:12','2018-09-02 16:32:12','4',NULL,NULL);
/*!40000 ALTER TABLE `track2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_head2s`
--

DROP TABLE IF EXISTS `track_head2s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track_head2s` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `sex_id` bigint(20) DEFAULT NULL,
  `competition_id` bigint(20) DEFAULT NULL,
  `sport_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `wind` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_track_head2s_on_sex_id` (`sex_id`),
  KEY `index_track_head2s_on_competition_id` (`competition_id`),
  KEY `index_track_head2s_on_sport_id` (`sport_id`),
  KEY `index_track_head2s_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_54d67b1102` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`),
  CONSTRAINT `fk_rails_84b61d5953` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`),
  CONSTRAINT `fk_rails_968c815d98` FOREIGN KEY (`sex_id`) REFERENCES `sexes` (`id`),
  CONSTRAINT `fk_rails_c3fd21b978` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_head2s`
--

LOCK TABLES `track_head2s` WRITE;
/*!40000 ALTER TABLE `track_head2s` DISABLE KEYS */;
INSERT INTO `track_head2s` VALUES (3,NULL,NULL,1,1,1,1,'2018-05-26 04:11:18','2018-08-02 20:22:39','-0.4','1',NULL),(4,NULL,NULL,1,1,1,1,'2018-05-26 04:35:34','2018-05-26 04:35:54','','2',NULL),(5,NULL,NULL,1,2,1,1,'2018-05-26 13:20:42','2018-05-27 14:10:20','+0.3 m/s','100 metros planos Hexatlón - Varones',NULL),(6,NULL,NULL,1,7,1,1,'2018-05-26 14:36:30','2018-05-27 14:22:34','-0.4 m/s','1 - 100 metros planos - Damas',NULL),(7,NULL,NULL,1,3,1,1,'2018-05-26 15:10:13','2018-05-27 14:11:18','','3.000 metros Marcha - Damas',NULL),(8,NULL,NULL,1,7,1,1,'2018-05-26 15:15:43','2018-05-27 14:22:45','+0.3 m/s','2 - 100 metros planos - Damas',NULL),(9,NULL,NULL,1,7,1,1,'2018-05-26 15:35:09','2018-05-27 14:22:54','-0.4 m/s','3 - 100 metros planos - Damas',NULL),(10,NULL,NULL,1,7,1,1,'2018-05-26 15:45:25','2018-05-27 14:23:02','-0.3 m/s','4 - 100 metros planos - Damas',NULL),(11,NULL,NULL,1,7,1,1,'2018-05-26 15:55:22','2018-05-27 14:23:15','-1.1 m/s','5 - 100 metros planos - Damas',NULL),(12,NULL,NULL,1,5,1,1,'2018-05-26 16:06:44','2018-05-27 14:18:35','','400 metros vallas Invitados - Varones',NULL),(13,NULL,NULL,1,6,1,1,'2018-05-26 16:10:27','2018-05-27 14:19:48','','400 metros planos Invitados - Varones',NULL),(14,NULL,NULL,1,7,1,1,'2018-05-26 16:15:37','2018-05-27 14:23:23','-4.0 m/s','6 - 100 metros planos - Damas',NULL),(15,NULL,NULL,1,7,1,1,'2018-05-26 16:21:10','2018-05-27 14:23:32','-0.3 m/s','7 - 100 metros planos - Damas',NULL),(16,NULL,NULL,1,7,1,1,'2018-05-26 16:24:54','2018-05-27 14:23:40','-1.1 m/s','8 - 100 metros planos - Damas',NULL),(17,NULL,NULL,1,7,1,1,'2018-05-26 16:31:48','2018-05-27 14:23:47','+0.0 m/s','9 - 100 metros planos - Damas',NULL),(18,NULL,NULL,1,7,1,1,'2018-05-26 16:35:01','2018-05-27 14:24:01','-0.1 m/s','10 - 100 metros planos - Damas',NULL),(19,NULL,NULL,1,12,1,1,'2018-05-26 16:39:25','2018-05-27 14:38:12','-1.4 m/s','1 - 100 metros planos - Varones - Series',NULL),(20,NULL,NULL,1,12,1,1,'2018-05-26 16:39:38','2018-05-27 14:38:25','-0.9 m/s','2 - 100 metros planos - Varones - Series',NULL),(21,NULL,NULL,1,12,1,1,'2018-05-26 16:39:47','2018-05-27 14:38:39','-1.1 m/s','3 - 100 metros planos - Varones - Series',NULL),(22,NULL,NULL,1,12,1,1,'2018-05-26 16:40:38','2018-05-27 14:38:51','-1.1 m/s','4 - 100 metros planos - Varones - Series',NULL),(23,NULL,NULL,1,12,1,1,'2018-05-26 16:40:49','2018-05-27 14:39:07','-0.2 m/s','5 - 100 metros planos - Varones - Series',NULL),(24,NULL,NULL,1,12,1,1,'2018-05-26 16:40:56','2018-05-27 14:39:20','+0.7 m/s','6 - 100 metros planos - Varones - Series',NULL),(25,NULL,NULL,1,12,1,1,'2018-05-26 16:41:20','2018-05-27 14:39:31','+0.0 m/s','7 - 100 metros planos - Varones - Series',NULL),(26,NULL,NULL,1,12,1,1,'2018-05-26 16:41:29','2018-05-27 14:39:44','+0.0 m/s','8 - 100 metros planos - Varones - Series',NULL),(27,NULL,NULL,1,15,1,1,'2018-05-26 17:14:40','2018-05-26 19:58:33','1500m obstáculos - Damas','Final',NULL),(28,NULL,NULL,1,16,1,1,'2018-05-26 17:18:20','2018-05-27 02:09:35','1500m obstáculos - Varones','Final',NULL),(29,NULL,NULL,1,17,1,1,'2018-05-26 17:50:11','2018-05-27 02:11:12','-0.9 m/s','Final - 100m Planos Damas /',NULL),(30,NULL,NULL,1,21,1,1,'2018-05-26 18:09:45','2018-05-27 02:19:35','-0.1 m/s','Final - Planos Varones /',NULL),(31,NULL,NULL,1,22,1,1,'2018-05-26 18:26:26','2018-05-27 02:19:00','-0.2 m/s','1 - 100m vallas - Damas /',NULL),(32,NULL,NULL,1,22,1,1,'2018-05-26 18:29:25','2018-05-26 18:29:25','-1.3 m/s','2',NULL),(33,NULL,NULL,1,22,1,1,'2018-05-26 18:35:04','2018-05-26 18:35:04','-1.0 m/s','3 (INVITADAS)',NULL),(34,NULL,NULL,1,24,1,1,'2018-05-26 18:45:05','2018-05-27 02:20:35','-1.9 m/s','1 100m Vallas - Varones /',NULL),(35,NULL,NULL,1,24,1,1,'2018-05-26 18:58:08','2018-05-26 19:01:26','-2.2 m/s','2',NULL),(36,NULL,NULL,1,24,1,1,'2018-05-26 19:01:38','2018-05-26 19:01:55','-1.3 m/s','3',NULL),(37,NULL,NULL,1,24,1,1,'2018-05-26 19:05:06','2018-05-26 19:13:39','-0.7 m/s','4 (MENORES Y JUVENIL)',NULL),(38,NULL,NULL,1,28,1,1,'2018-05-26 19:27:43','2018-05-26 19:27:43','','1',NULL),(39,NULL,NULL,1,28,1,1,'2018-05-26 19:33:47','2018-05-26 19:33:47','','2',NULL),(40,NULL,NULL,1,28,1,1,'2018-05-26 19:36:53','2018-05-26 19:36:53','','3',NULL),(41,NULL,NULL,1,28,1,1,'2018-05-26 19:39:53','2018-05-26 19:39:53','','4',NULL),(42,NULL,NULL,1,28,1,1,'2018-05-26 19:42:22','2018-05-26 19:42:22','','5',NULL),(43,NULL,NULL,1,28,1,1,'2018-05-26 19:44:33','2018-05-26 19:44:33','','6',NULL),(44,NULL,NULL,1,28,1,1,'2018-05-26 19:49:58','2018-05-26 19:49:58','','7',NULL),(45,NULL,NULL,1,25,1,1,'2018-05-26 20:02:33','2018-05-26 20:02:33','','1',NULL),(46,NULL,NULL,1,25,1,1,'2018-05-26 20:03:08','2018-05-26 20:03:08','','2',NULL),(47,NULL,NULL,1,25,1,1,'2018-05-26 20:06:13','2018-05-26 20:06:13','','3',NULL),(48,NULL,NULL,1,25,1,1,'2018-05-26 20:09:18','2018-05-26 20:09:18','','4',NULL),(49,NULL,NULL,1,25,1,1,'2018-05-26 20:12:16','2018-05-26 20:12:16','','5',NULL),(50,NULL,NULL,1,25,1,1,'2018-05-26 20:15:07','2018-05-26 20:15:07','','6',NULL),(51,NULL,NULL,1,25,1,1,'2018-05-26 20:18:06','2018-05-26 20:18:06','','7',NULL),(52,NULL,NULL,1,25,1,1,'2018-05-26 20:20:50','2018-05-26 20:20:50','','8',NULL),(53,NULL,NULL,1,30,1,1,'2018-05-26 20:56:45','2018-05-26 20:57:09','-0.3','Final',NULL),(54,NULL,NULL,1,31,1,1,'2018-05-26 21:02:03','2018-05-26 21:03:19','-0.6','Final',NULL),(55,NULL,NULL,1,33,1,1,'2018-05-26 21:17:54','2018-05-26 21:17:54','','1',NULL),(56,NULL,NULL,1,33,1,1,'2018-05-26 21:29:54','2018-05-26 21:29:54','','2',NULL),(57,NULL,NULL,1,34,1,1,'2018-05-26 22:06:09','2018-05-26 22:17:06','*','1',NULL),(58,NULL,NULL,1,35,1,1,'2018-05-26 22:09:02','2018-05-26 22:09:02','','Final',NULL),(59,NULL,NULL,1,36,1,1,'2018-05-26 22:10:48','2018-05-26 22:10:48','','Final',NULL),(60,NULL,NULL,1,34,1,1,'2018-05-26 22:29:55','2018-05-26 22:29:55','*','2',NULL),(61,NULL,NULL,1,34,1,1,'2018-05-26 22:42:29','2018-05-26 22:42:29','*','3',NULL),(62,NULL,NULL,1,37,1,1,'2018-05-27 13:03:22','2018-05-27 13:24:05','+0.0 m/s','Final 100 metros vallas Hexatlón Varones',NULL),(63,NULL,NULL,1,38,1,1,'2018-05-27 13:19:04','2018-05-27 15:31:46','','5.000 metros Marcha - Final - Varones -',NULL),(64,NULL,NULL,1,42,1,1,'2018-05-27 14:27:11','2018-05-27 15:38:10','','1- 300 metros vallas - Series C/Tiempo - Damas',NULL),(65,NULL,NULL,1,42,1,1,'2018-05-27 14:35:51','2018-05-27 15:38:20','','2- 300 metros vallas - Series C/Tiempo - Damas',NULL),(66,NULL,NULL,1,45,1,1,'2018-05-27 14:42:38','2018-05-27 15:40:13','','1 - 300 metros vallas - Series C/Tiempo - Varones',NULL),(67,NULL,NULL,1,49,1,1,'2018-05-27 17:00:10','2018-05-27 17:00:10','','FINAL',NULL),(68,NULL,NULL,1,50,1,1,'2018-05-27 17:11:23','2018-05-28 20:10:47','3000m planos Varones','1',NULL),(69,NULL,NULL,1,50,1,1,'2018-05-27 17:29:11','2018-05-27 17:29:11','','2',NULL),(70,NULL,NULL,1,51,1,1,'2018-05-27 17:47:38','2018-05-27 17:54:23','-1.1 m/s','200 metros planos - Hexatlón - Damas',NULL),(71,NULL,NULL,1,52,1,1,'2018-05-27 17:51:24','2018-05-27 18:05:27','','Relevo Combinado - Damas',NULL),(72,NULL,NULL,1,53,1,1,'2018-05-27 17:53:33','2018-05-27 18:04:55','','Relevo Combinado - Varones',NULL),(73,NULL,NULL,1,74,1,1,'2018-08-03 19:18:33','2018-08-03 19:18:33','','1',NULL),(74,NULL,NULL,1,91,1,1,'2018-08-03 19:30:36','2018-08-05 19:30:57','','FINAL',NULL),(75,NULL,NULL,1,88,1,1,'2018-08-03 19:32:26','2018-08-03 19:32:26','','1',NULL),(76,NULL,NULL,1,88,1,1,'2018-08-03 19:32:30','2018-08-03 19:32:30','','2',NULL),(77,NULL,NULL,1,88,1,1,'2018-08-03 19:32:36','2018-08-03 19:32:36','','3',NULL),(78,NULL,NULL,1,88,1,1,'2018-08-03 19:32:40','2018-08-03 19:32:40','','4',NULL),(79,NULL,NULL,1,60,1,1,'2018-08-03 19:41:30','2018-08-03 19:41:30','','1',NULL),(80,NULL,NULL,1,60,1,1,'2018-08-03 19:41:38','2018-08-04 15:00:44','-0.1 m/s','2',NULL),(90,NULL,NULL,1,66,1,1,'2018-08-03 20:18:27','2018-08-03 20:18:27','','1',NULL),(91,NULL,NULL,1,66,1,1,'2018-08-03 20:20:40','2018-08-03 20:20:40','','2',NULL),(92,NULL,NULL,1,66,1,1,'2018-08-03 20:21:13','2018-08-03 20:21:13','','3',NULL),(93,NULL,NULL,1,66,1,1,'2018-08-03 20:22:33','2018-08-03 20:22:33','','4',NULL),(94,NULL,NULL,1,66,1,1,'2018-08-03 20:24:20','2018-08-03 20:24:20','','5',NULL),(95,NULL,NULL,1,66,1,1,'2018-08-03 20:25:37','2018-08-03 20:25:37','','6',NULL),(96,NULL,NULL,1,66,1,1,'2018-08-03 20:26:45','2018-08-03 20:26:45','','7',NULL),(97,NULL,NULL,1,66,1,1,'2018-08-03 20:28:34','2018-08-03 20:28:34','','8',NULL),(98,NULL,NULL,1,66,1,1,'2018-08-03 20:29:23','2018-08-03 20:29:23','','9',NULL),(99,NULL,NULL,1,66,1,1,'2018-08-03 20:30:39','2018-08-03 20:30:39','','10',NULL),(100,NULL,NULL,1,66,1,1,'2018-08-03 20:33:47','2018-08-03 20:33:47','','11',NULL),(101,NULL,NULL,1,66,1,1,'2018-08-03 20:36:09','2018-08-03 20:36:09','','12',NULL),(102,NULL,NULL,1,55,1,1,'2018-08-03 20:46:52','2018-08-03 20:46:52','','1',NULL),(103,NULL,NULL,1,62,1,1,'2018-08-03 20:48:10','2018-08-03 20:48:10','','1',NULL),(104,NULL,NULL,1,62,1,1,'2018-08-03 20:49:23','2018-08-03 20:49:23','','2',NULL),(105,NULL,NULL,1,62,1,1,'2018-08-03 20:51:53','2018-08-03 20:51:53','','3',NULL),(106,'2018-08-05','03:00:00',1,62,1,1,'2018-08-03 20:53:12','2018-08-06 03:01:19','','4',NULL),(107,NULL,NULL,1,95,1,1,'2018-08-03 20:55:06','2018-08-03 20:55:06','','1',NULL),(108,NULL,NULL,1,95,1,1,'2018-08-03 20:55:27','2018-08-03 20:55:27','','2',NULL),(109,NULL,NULL,1,87,1,1,'2018-08-03 20:58:30','2018-08-03 20:58:30','','1',NULL),(110,NULL,NULL,1,87,1,1,'2018-08-03 20:59:10','2018-08-03 20:59:10','','2',NULL),(111,NULL,NULL,1,87,1,1,'2018-08-03 21:00:23','2018-08-03 21:00:23','','3',NULL),(112,NULL,NULL,1,87,1,1,'2018-08-03 21:01:32','2018-08-03 21:01:32','','4',NULL),(113,NULL,NULL,1,83,1,1,'2018-08-03 21:10:13','2018-08-03 21:10:13','','1',NULL),(114,NULL,NULL,1,83,1,1,'2018-08-03 21:10:18','2018-08-03 21:10:18','','2',NULL),(115,NULL,NULL,1,83,1,1,'2018-08-03 21:10:22','2018-08-03 21:10:22','','3',NULL),(116,NULL,NULL,1,83,1,1,'2018-08-03 21:10:28','2018-08-03 21:10:28','','4',NULL),(117,NULL,NULL,1,83,1,1,'2018-08-03 21:10:33','2018-08-03 21:10:33','','5',NULL),(118,NULL,NULL,1,83,1,1,'2018-08-03 21:10:40','2018-08-03 21:10:40','','6',NULL),(119,NULL,NULL,1,83,1,1,'2018-08-03 21:10:47','2018-08-03 21:10:47','','7',NULL),(120,NULL,NULL,1,83,1,1,'2018-08-03 21:10:54','2018-08-03 21:10:54','','8',NULL),(121,NULL,NULL,1,83,1,1,'2018-08-03 21:11:00','2018-08-03 21:11:00','','9',NULL),(122,NULL,NULL,1,83,1,1,'2018-08-03 21:11:07','2018-08-03 21:11:07','','10',NULL),(123,NULL,NULL,1,83,1,1,'2018-08-03 21:11:12','2018-08-03 21:11:12','','11',NULL),(124,NULL,NULL,1,83,1,1,'2018-08-03 21:11:18','2018-08-03 21:11:18','','12',NULL),(125,NULL,NULL,1,83,1,1,'2018-08-03 21:11:25','2018-08-03 21:11:25','','13',NULL),(126,NULL,NULL,1,83,1,1,'2018-08-03 21:11:32','2018-08-03 21:11:32','','14',NULL),(127,NULL,NULL,1,65,1,1,'2018-08-03 21:45:07','2018-08-03 21:45:07','','1',NULL),(128,NULL,NULL,1,65,1,1,'2018-08-03 21:47:15','2018-08-03 21:47:15','','2',NULL),(129,NULL,NULL,1,65,1,1,'2018-08-03 21:47:21','2018-08-03 21:47:21','','3',NULL),(130,NULL,NULL,1,65,1,1,'2018-08-03 21:47:26','2018-08-03 21:47:26','','4',NULL),(131,NULL,NULL,1,65,1,1,'2018-08-03 21:47:42','2018-08-03 21:47:42','','5',NULL),(132,NULL,NULL,1,65,1,1,'2018-08-03 21:47:48','2018-08-03 21:47:48','','6',NULL),(133,NULL,NULL,1,65,1,1,'2018-08-03 21:47:55','2018-08-03 21:47:55','','7',NULL),(134,NULL,NULL,1,65,1,1,'2018-08-03 21:48:01','2018-08-03 21:48:01','','8',NULL),(135,NULL,NULL,1,65,1,1,'2018-08-03 21:48:45','2018-08-03 21:48:45','','9',NULL),(136,NULL,NULL,1,65,1,1,'2018-08-03 21:48:53','2018-08-03 21:48:53','','10',NULL),(137,NULL,NULL,1,65,1,1,'2018-08-03 21:48:59','2018-08-03 21:48:59','','11',NULL),(138,NULL,NULL,1,65,1,1,'2018-08-03 21:49:06','2018-08-03 21:49:06','','12',NULL),(139,NULL,NULL,1,65,1,1,'2018-08-03 21:49:12','2018-08-03 21:49:12','','13',NULL),(140,NULL,NULL,1,65,1,1,'2018-08-03 21:49:18','2018-08-03 21:49:18','','14',NULL),(141,NULL,NULL,1,65,1,1,'2018-08-03 21:49:25','2018-08-03 21:49:25','','15',NULL),(142,NULL,NULL,1,79,1,1,'2018-08-04 01:35:58','2018-08-04 01:35:58','','1',NULL),(143,NULL,NULL,1,105,1,1,'2018-08-04 01:43:53','2018-08-04 01:43:53','','1',NULL),(144,NULL,NULL,1,58,1,1,'2018-08-04 01:47:23','2018-08-04 14:24:24','+0.2 m/s','1',NULL),(145,NULL,NULL,1,90,1,1,'2018-08-04 01:50:47','2018-08-04 01:50:47','','1',NULL),(146,NULL,NULL,1,68,1,1,'2018-08-04 17:07:09','2018-08-04 17:07:09','','FINAL',NULL),(147,NULL,NULL,1,72,1,1,'2018-08-04 17:21:11','2018-08-04 17:21:11','','FINAL',NULL),(148,NULL,NULL,1,73,1,1,'2018-08-04 17:25:51','2018-08-04 17:25:51','','FINAL',NULL),(149,NULL,NULL,1,70,1,1,'2018-08-04 17:37:45','2018-08-04 17:37:45','','1',NULL),(150,NULL,NULL,1,70,1,1,'2018-08-04 17:41:25','2018-08-04 17:41:25','','2',NULL),(151,NULL,NULL,1,70,1,1,'2018-08-04 17:44:53','2018-08-04 17:44:53','','FINAL',NULL),(152,NULL,NULL,1,80,1,1,'2018-08-05 14:55:31','2018-08-05 14:55:31','','FINAL',NULL),(153,NULL,NULL,1,81,1,1,'2018-08-05 15:05:35','2018-08-05 15:09:57','+0.0 M/S','FINAL',NULL),(154,NULL,NULL,1,86,1,1,'2018-08-05 17:05:17','2018-08-05 17:05:17','','1',NULL),(155,NULL,NULL,1,86,1,1,'2018-08-05 17:22:49','2018-08-05 17:22:49','','2',NULL),(156,NULL,NULL,1,99,1,1,'2018-08-05 18:35:43','2018-08-05 18:35:43','','FINAL',NULL),(157,NULL,NULL,1,98,1,1,'2018-08-05 18:52:27','2018-08-05 18:52:27','','FINAL',NULL),(158,NULL,NULL,1,86,1,1,'2018-08-05 19:12:36','2018-08-05 19:12:36','','3',NULL),(159,NULL,NULL,1,86,1,1,'2018-08-05 19:20:38','2018-08-05 19:20:38','','4',NULL),(160,NULL,NULL,1,100,1,1,'2018-08-05 19:56:51','2018-08-05 19:56:51','','FINAL',NULL),(161,NULL,NULL,1,106,1,1,'2018-08-05 20:20:29','2018-08-05 20:20:29','','FINAL',NULL),(162,NULL,NULL,1,107,1,1,'2018-08-05 20:23:21','2018-08-05 20:23:21','','FINAL',NULL),(163,NULL,NULL,1,102,1,1,'2018-08-05 20:37:09','2018-08-05 20:37:09','','FINAL',NULL),(164,NULL,NULL,1,111,1,1,'2018-08-24 20:39:38','2018-08-24 20:39:38','','1',NULL),(165,NULL,NULL,1,110,1,1,'2018-08-24 20:42:33','2018-08-24 23:47:21','+0.5 M/S','1',NULL),(166,NULL,NULL,1,110,1,1,'2018-08-24 23:33:03','2018-08-24 23:34:08','-0.4 M/S','2',NULL),(167,NULL,NULL,1,113,1,1,'2018-08-24 23:46:37','2018-08-24 23:46:37','+0.7 M/S','FINAL',NULL),(168,NULL,NULL,1,114,1,1,'2018-08-24 23:59:46','2018-08-24 23:59:46','','FINAL',NULL),(169,NULL,NULL,1,115,1,1,'2018-08-25 00:06:25','2018-08-25 00:06:25','','1',NULL),(170,NULL,NULL,1,116,1,1,'2018-08-25 00:14:47','2018-08-25 00:14:47','','FINAL',NULL),(171,NULL,NULL,1,118,1,1,'2018-08-25 00:25:51','2018-08-25 00:25:51','','FINAL',NULL),(172,NULL,NULL,1,125,1,1,'2018-08-25 01:02:46','2018-08-25 01:02:46','','FINAL',NULL),(173,NULL,NULL,1,126,1,1,'2018-08-25 01:12:22','2018-08-25 01:12:22','','FINAL',NULL),(174,NULL,NULL,1,120,1,1,'2018-08-25 22:47:00','2018-08-25 22:47:00','-0.2 m/s','2',NULL),(175,NULL,NULL,1,122,1,1,'2018-08-25 22:55:00','2018-08-25 22:55:00','','FINAL ',NULL),(176,NULL,NULL,1,124,1,1,'2018-08-25 23:01:25','2018-08-25 23:01:25','','FINAL ',NULL),(177,NULL,NULL,1,127,1,1,'2018-08-25 23:04:53','2018-08-25 23:04:53','','FINAL ',NULL),(178,NULL,NULL,1,128,1,1,'2018-08-25 23:06:04','2018-08-25 23:06:04','','FINAL ',NULL),(179,NULL,NULL,1,129,1,1,'2018-08-25 23:08:32','2018-08-25 23:08:32','','FINAL ',NULL),(180,NULL,NULL,1,130,1,1,'2018-08-29 20:27:57','2018-09-01 17:15:54','','Damas Prueba Desierta',NULL),(181,NULL,NULL,1,130,1,1,'2018-08-29 20:28:23','2018-08-29 20:28:23','','Varones',NULL),(182,NULL,NULL,1,130,1,1,'2018-08-31 03:08:04','2018-08-31 03:08:04','','PRUEBA',NULL),(183,NULL,NULL,1,131,1,1,'2018-08-31 18:40:27','2018-08-31 18:40:27','','',NULL),(184,NULL,NULL,1,132,1,1,'2018-08-31 18:45:34','2018-08-31 18:45:34','','',NULL),(185,NULL,NULL,1,137,1,1,'2018-08-31 18:49:41','2018-08-31 18:49:55','','SERIE',NULL),(186,NULL,NULL,1,144,1,1,'2018-08-31 18:58:31','2018-09-01 15:50:35','-0.9 M/S','Serie 1',NULL),(187,NULL,NULL,1,145,1,1,'2018-08-31 19:02:48','2018-08-31 19:02:48','','',NULL),(188,NULL,NULL,1,168,1,1,'2018-08-31 19:08:50','2018-08-31 19:08:50','','',NULL),(189,NULL,NULL,1,187,1,1,'2018-08-31 19:21:34','2018-09-02 15:34:51','','FINAL',NULL),(190,NULL,NULL,1,195,1,1,'2018-08-31 19:26:17','2018-08-31 19:26:17','','',NULL),(191,NULL,NULL,1,139,1,1,'2018-08-31 21:49:51','2018-08-31 21:59:32','','Serie 1',NULL),(192,NULL,NULL,1,139,1,1,'2018-08-31 21:55:23','2018-08-31 21:59:39','','Serie 2',NULL),(193,NULL,NULL,1,139,1,1,'2018-08-31 21:56:54','2018-08-31 21:59:46','','Serie 3',NULL),(194,NULL,NULL,1,139,1,1,'2018-08-31 21:58:28','2018-08-31 21:59:51','','Serie 4',NULL),(195,NULL,NULL,1,142,1,1,'2018-08-31 22:02:57','2018-08-31 22:02:57','','Serie 1',NULL),(196,NULL,NULL,1,142,1,1,'2018-08-31 22:03:57','2018-08-31 22:03:57','','Serie 2',NULL),(197,NULL,NULL,1,142,1,1,'2018-08-31 22:06:06','2018-08-31 22:06:06','','Serie 3',NULL),(198,NULL,NULL,1,142,1,1,'2018-08-31 22:06:29','2018-08-31 22:06:29','','Serie 4',NULL),(199,NULL,NULL,1,142,1,1,'2018-08-31 22:08:36','2018-08-31 22:08:36','','Serie 5',NULL),(200,NULL,NULL,1,142,1,1,'2018-08-31 22:10:25','2018-08-31 22:10:25','','Serie 6',NULL),(201,NULL,NULL,1,142,1,1,'2018-08-31 22:10:51','2018-08-31 22:10:51','','Serie 7',NULL),(202,NULL,NULL,1,146,1,1,'2018-08-31 22:15:07','2018-08-31 22:15:07','','Serie 1',NULL),(203,NULL,NULL,1,146,1,1,'2018-08-31 22:16:27','2018-08-31 22:16:27','','Serie 2',NULL),(204,NULL,NULL,1,146,1,1,'2018-08-31 22:17:37','2018-08-31 22:17:37','','Serie 3',NULL),(205,NULL,NULL,1,148,1,1,'2018-08-31 22:19:30','2018-08-31 22:19:30','','Serie 1',NULL),(206,NULL,NULL,1,148,1,1,'2018-08-31 22:21:01','2018-08-31 22:22:29','','Serie 2 h= 0.991',NULL),(207,NULL,NULL,1,151,1,1,'2018-08-31 22:24:12','2018-09-02 15:48:15','+1.8 m/s','Serie 1',NULL),(208,NULL,NULL,1,151,1,1,'2018-08-31 22:24:53','2018-09-01 18:55:27','','Serie 2',NULL),(209,NULL,NULL,1,151,1,1,'2018-08-31 22:27:03','2018-09-01 18:55:31','','Serie 3',NULL),(210,NULL,NULL,1,153,1,1,'2018-08-31 22:30:13','2018-09-03 16:21:02','+1.4 m/s','Serie 1',NULL),(211,NULL,NULL,1,153,1,1,'2018-08-31 22:30:36','2018-09-03 16:21:11','+0.1 m/s','Serie 2',NULL),(212,NULL,NULL,1,153,1,1,'2018-08-31 22:31:37','2018-09-03 16:21:40','+0.0 m/s','Serie 3',NULL),(213,NULL,NULL,1,153,1,1,'2018-08-31 22:33:04','2018-09-03 16:21:51','+1.3 m/s','Serie 4',NULL),(214,NULL,NULL,1,153,1,1,'2018-08-31 22:35:21','2018-09-03 16:22:02','+1.7 m/s','Serie 5',NULL),(215,NULL,NULL,1,153,1,1,'2018-08-31 22:36:38','2018-09-03 16:22:16','+0.4 m/s','Serie 6',NULL),(216,NULL,NULL,1,155,1,1,'2018-08-31 22:38:51','2018-08-31 22:41:27','','Final 1 (c/t)',NULL),(217,NULL,NULL,1,155,1,1,'2018-08-31 22:40:17','2018-08-31 22:41:34','','Final 2 (c/t)',NULL),(218,NULL,NULL,1,154,1,1,'2018-08-31 22:42:15','2018-08-31 22:43:06','','Final 1 (c/t)',NULL),(219,NULL,NULL,1,169,1,1,'2018-08-31 22:47:20','2018-08-31 22:47:31','','Final',NULL),(220,NULL,NULL,1,172,1,1,'2018-08-31 22:49:29','2018-09-02 13:46:57','+0.0','Serie 1',NULL),(221,NULL,NULL,1,172,1,1,'2018-08-31 22:50:27','2018-09-02 13:47:14','+0.0','Serie 2',NULL),(222,NULL,NULL,1,172,1,1,'2018-08-31 22:51:47','2018-09-02 13:47:24','+0.0','Serie 3',NULL),(223,NULL,NULL,1,172,1,1,'2018-08-31 22:52:50','2018-09-02 13:46:41','-0.6','Serie 4',NULL),(224,NULL,NULL,1,173,1,1,'2018-08-31 22:59:29','2018-09-02 13:53:22','+0.0','Serie 1',NULL),(225,NULL,NULL,1,173,1,1,'2018-08-31 22:59:47','2018-09-02 13:55:54','+0.0','Serie 2',NULL),(226,NULL,NULL,1,173,1,1,'2018-08-31 23:00:51','2018-09-02 13:56:08','+0.0','Serie 3',NULL),(227,NULL,NULL,1,173,1,1,'2018-08-31 23:02:38','2018-09-02 13:57:10','-0.1','Serie 4',NULL),(228,NULL,NULL,1,173,1,1,'2018-08-31 23:04:32','2018-09-02 13:58:35','+0.6','Serie 5',NULL),(229,NULL,NULL,1,178,1,1,'2018-08-31 23:08:11','2018-08-31 23:08:11','','Final 1 (c/t)',NULL),(230,NULL,NULL,1,178,1,1,'2018-08-31 23:10:14','2018-08-31 23:10:14','','Final 2 (c/t)',NULL),(231,NULL,NULL,1,180,1,1,'2018-08-31 23:13:38','2018-08-31 23:13:38','','Final 1 (c/t)',NULL),(232,NULL,NULL,1,180,1,1,'2018-08-31 23:16:03','2018-08-31 23:16:03','','Final 2 (c/t)',NULL),(233,NULL,NULL,1,180,1,1,'2018-08-31 23:19:19','2018-08-31 23:19:19','','Final 3 (c/t)',NULL),(234,NULL,NULL,1,181,1,1,'2018-08-31 23:29:19','2018-08-31 23:29:19','','Final',NULL),(235,NULL,NULL,1,188,1,1,'2018-08-31 23:31:40','2018-08-31 23:31:40','','Final 1 (c/t)',NULL),(236,NULL,NULL,1,188,1,1,'2018-08-31 23:32:54','2018-08-31 23:32:54','','Final 2 (c/t)',NULL),(237,NULL,NULL,1,189,1,1,'2018-08-31 23:36:54','2018-08-31 23:36:54','','Final 1 (c/t)',NULL),(238,NULL,NULL,1,189,1,1,'2018-08-31 23:38:05','2018-08-31 23:38:05','','Final 2 (c/t)',NULL),(239,NULL,NULL,1,189,1,1,'2018-08-31 23:39:22','2018-08-31 23:39:22','','Final 3 (c/t)',NULL),(240,NULL,NULL,1,189,1,1,'2018-08-31 23:40:34','2018-08-31 23:40:34','','Final 4 (c/t)',NULL),(241,NULL,NULL,1,192,1,1,'2018-08-31 23:43:24','2018-09-02 16:27:47','','FINAL',NULL),(242,NULL,NULL,1,190,1,1,'2018-08-31 23:45:13','2018-08-31 23:45:13','','FInal',NULL),(243,NULL,NULL,1,164,1,1,'2018-09-01 16:39:54','2018-09-01 20:41:37','','FINAL SUB-20',NULL),(244,NULL,NULL,1,163,1,1,'2018-09-01 16:58:30','2018-09-01 16:58:30','','FINAL',NULL),(245,NULL,NULL,1,158,1,1,'2018-09-01 19:32:50','2018-09-01 19:36:18','+1.2 M/S','FINAL',NULL),(246,NULL,NULL,1,160,1,1,'2018-09-01 19:37:55','2018-09-01 20:17:28','+0.2 M/S','FINAL SUB-20',NULL),(247,NULL,NULL,1,161,1,1,'2018-09-01 20:02:29','2018-09-01 20:18:12','+0.3 M/S','FINAL SUB-20',NULL),(248,NULL,NULL,1,161,1,1,'2018-09-01 20:04:27','2018-09-01 20:18:24','+0.9 M/S','FINAL SUB-23',NULL),(249,NULL,NULL,1,162,1,1,'2018-09-01 20:07:21','2018-09-01 20:07:21','','FINAL SUB-20',NULL),(250,NULL,NULL,1,160,1,1,'2018-09-01 20:17:40','2018-09-01 20:17:51','+1.3 M/S','FINAL SUB-23',NULL),(251,NULL,NULL,1,162,1,1,'2018-09-01 20:22:24','2018-09-01 20:22:24','','FINAL SUB-23',NULL),(252,NULL,NULL,1,166,1,1,'2018-09-01 20:59:25','2018-09-01 20:59:25','','FINAL',NULL),(253,NULL,NULL,1,167,1,1,'2018-09-01 21:01:28','2018-09-01 21:01:28','','FINAL',NULL),(254,NULL,NULL,1,165,1,1,'2018-09-01 21:18:12','2018-09-01 21:18:12','','FINAL',NULL),(255,NULL,NULL,1,184,1,1,'2018-09-02 13:48:46','2018-09-02 15:20:29','+0.3','Final Sub 20',NULL),(256,NULL,NULL,1,184,1,1,'2018-09-02 13:49:21','2018-09-02 15:22:53','+0.8','Final Sub 23',NULL),(257,NULL,NULL,1,184,1,1,'2018-09-02 13:49:57','2018-09-02 13:49:57','','Serie 3',NULL),(258,NULL,NULL,1,184,1,1,'2018-09-02 13:50:54','2018-09-02 13:50:54','','Serie 4',NULL),(259,NULL,NULL,1,184,1,1,'2018-09-02 13:51:18','2018-09-02 13:51:18','','Serie 5',NULL),(260,NULL,NULL,1,183,1,1,'2018-09-02 15:07:25','2018-09-02 15:08:57','+0.0','Final SUB 20',NULL),(261,NULL,NULL,1,183,1,1,'2018-09-02 15:16:54','2018-09-02 15:16:54','+0.0','Final Sub23 ',NULL),(262,NULL,NULL,1,193,1,1,'2018-09-02 16:28:34','2018-09-02 16:28:34','','FINAL',NULL),(263,NULL,NULL,1,194,1,1,'2018-09-02 16:32:04','2018-09-02 16:32:04','','FINAL',NULL);
/*!40000 ALTER TABLE `track_head2s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_heads`
--

DROP TABLE IF EXISTS `track_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track_heads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `trackSerieId` int(11) DEFAULT NULL,
  `sportId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_heads`
--

LOCK TABLES `track_heads` WRITE;
/*!40000 ALTER TABLE `track_heads` DISABLE KEYS */;
/*!40000 ALTER TABLE `track_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trackHeadId` int(11) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `athlete` varchar(255) DEFAULT NULL,
  `an` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `rail` int(11) DEFAULT NULL,
  `bestAchievement` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@prossport.cl','$2a$11$HC/PhtvI0UYsW/eHRAq3B.9g1B2spTJCA5wtQQjIJNyCzXK1Pkrxq',NULL,NULL,'2018-08-29 19:51:15',89,'2018-09-02 14:45:41','2018-09-01 18:09:40','186.9.31.116','190.107.228.179','2018-05-26 02:08:47','2018-09-02 14:45:41');
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

-- Dump completed on 2018-09-04 18:51:33
