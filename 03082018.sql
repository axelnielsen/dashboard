-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: dashboard_development
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletes`
--

LOCK TABLES `athletes` WRITE;
/*!40000 ALTER TABLE `athletes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'FINAL','2018-05-26 01:51:53','2018-05-26 01:51:53'),(2,'SERIES','2018-05-26 01:52:05','2018-05-26 01:52:05'),(3,'SERIES C /TIEMPO','2018-05-26 01:52:42','2018-05-26 01:52:42'),(4,'HEXATLÓN','2018-05-26 01:53:20','2018-05-26 01:53:20'),(5,'DAMAS','2018-05-26 01:53:46','2018-05-26 01:53:46'),(6,'VARONES','2018-05-26 01:53:58','2018-05-26 01:53:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `championships`
--

LOCK TABLES `championships` WRITE;
/*!40000 ALTER TABLE `championships` DISABLE KEYS */;
INSERT INTO `championships` VALUES (1,'CAMPEONATO  NACIONAL  DE  ATLETISMO   CATEGORÍA  “CADETES”  -  2018 ','2018-05-26 09:00:00','2018-05-27 13:30:00',NULL,'','2018-05-26 01:40:45','2018-05-26 01:40:45');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
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
INSERT INTO `competition_types` VALUES (1,'Pista','2018-08-01 02:44:41','2018-08-01 02:44:41'),(2,'Salto','2018-08-01 02:45:15','2018-08-01 02:45:15'),(3,'Lanzamiento','2018-08-01 02:45:24','2018-08-01 02:45:24'),(4,'Salto Alto','2018-08-01 04:00:26','2018-08-01 04:00:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (1,'09:00:00',5,4,1,1,'2018-05-26 02:11:01','2018-05-26 02:11:01',1),(2,'09:10:00',1,4,2,1,'2018-05-26 02:13:31','2018-05-26 02:13:31',1),(3,'09:20:00',17,1,1,1,'2018-05-26 02:24:04','2018-05-26 02:24:04',1),(4,'09:40:00',8,4,1,1,'2018-05-26 02:24:45','2018-05-26 02:24:45',4),(5,'09:45:00',18,1,2,1,'2018-05-26 02:27:32','2018-05-26 02:27:32',1),(6,'09:55:00',19,1,2,1,'2018-05-26 02:28:19','2018-05-26 02:28:19',1),(7,'10:00:00',1,2,1,1,'2018-05-26 02:29:38','2018-05-26 02:29:38',1),(8,'10:00:00',20,1,1,1,'2018-05-26 02:32:03','2018-05-26 02:32:03',3),(9,'10:00:00',3,4,2,1,'2018-05-26 02:32:54','2018-05-26 02:32:54',2),(10,'10:00:00',2,1,1,1,'2018-05-26 02:34:12','2018-05-26 02:34:12',4),(11,'10:50:00',6,4,2,1,'2018-05-26 02:34:58','2018-05-26 02:34:58',3),(12,'11:00:00',1,2,2,1,'2018-05-26 02:36:09','2018-05-26 02:36:09',1),(13,'11:20:00',6,4,1,1,'2018-05-26 02:36:44','2018-05-26 02:36:44',3),(14,'11:30:00',20,1,2,1,'2018-05-26 02:37:20','2018-05-26 02:37:20',3),(15,'12:00:00',21,1,1,1,'2018-05-26 02:38:29','2018-05-26 02:38:29',1),(16,'12:20:00',21,1,2,1,'2018-05-26 02:39:02','2018-05-26 02:39:02',1),(17,'14:00:00',1,1,1,2,'2018-05-26 02:43:13','2018-05-26 02:43:13',1),(18,'14:00:00',2,1,2,2,'2018-05-26 02:45:03','2018-05-26 02:45:03',4),(19,'14:00:00',3,1,1,2,'2018-05-26 02:46:40','2018-05-26 02:46:40',2),(20,'14:00:00',4,1,2,2,'2018-05-26 02:47:11','2018-05-26 02:47:11',3),(21,'14:10:00',1,1,2,2,'2018-05-26 02:48:26','2018-05-26 02:48:26',1),(22,'14:20:00',5,2,1,2,'2018-05-26 02:49:04','2018-05-26 02:49:04',1),(23,'14:30:00',6,1,1,2,'2018-05-26 02:49:55','2018-05-26 02:49:55',3),(24,'14:50:00',5,2,2,2,'2018-05-26 02:50:21','2018-05-26 02:50:21',1),(25,'15:20:00',7,3,1,2,'2018-05-26 02:51:28','2018-05-26 02:51:28',1),(26,'15:30:00',4,1,1,2,'2018-05-26 02:52:15','2018-05-26 02:52:15',3),(27,'15:45:00',3,1,2,2,'2018-05-26 02:53:12','2018-05-26 02:53:12',2),(28,'15:50:00',7,3,2,2,'2018-05-26 02:53:47','2018-05-26 02:53:47',1),(29,'16:00:00',6,1,2,2,'2018-05-26 02:55:30','2018-05-26 02:55:30',3),(30,'16:30:00',5,1,1,2,'2018-05-26 02:56:10','2018-05-26 02:56:10',1),(31,'16:40:00',5,1,2,2,'2018-05-26 02:57:37','2018-05-26 02:57:37',1),(32,'17:00:00',9,1,1,2,'2018-05-26 02:59:00','2018-05-26 02:59:00',3),(33,'17:00:00',10,3,1,2,'2018-05-26 03:00:56','2018-05-26 03:00:56',1),(34,'17:20:00',10,3,2,2,'2018-05-26 03:01:33','2018-05-26 03:01:33',1),(35,'17:40:00',11,1,1,2,'2018-05-26 03:02:14','2018-05-26 03:02:14',1),(36,'17:50:00',11,1,2,2,'2018-05-26 03:02:57','2018-05-26 03:02:57',1),(37,'09:00:00',5,4,2,3,'2018-05-26 03:04:56','2018-05-26 03:04:56',1),(38,'09:10:00',12,1,2,3,'2018-05-26 03:05:38','2018-05-26 03:05:38',1),(39,'10:00:00',13,1,2,3,'2018-05-26 03:06:17','2018-05-26 03:06:17',2),(40,'10:20:00',8,4,2,3,'2018-05-26 03:08:15','2018-05-26 03:08:15',4),(41,'10:30:00',9,1,2,3,'2018-05-26 03:09:29','2018-05-26 03:09:29',3),(42,'10:30:00',14,3,1,3,'2018-05-26 03:10:15','2018-05-26 03:10:15',1),(43,'11:00:00',8,1,2,3,'2018-05-26 03:10:55','2018-05-26 03:10:55',4),(44,'11:00:00',3,4,1,3,'2018-05-26 03:12:07','2018-05-26 03:12:07',2),(45,'11:00:00',14,3,2,3,'2018-05-26 03:12:53','2018-05-26 03:12:53',1),(46,'12:00:00',13,1,1,3,'2018-05-26 03:13:26','2018-05-26 03:13:26',2),(47,'12:00:00',4,4,1,3,'2018-05-26 03:14:00','2018-05-26 03:14:00',3),(48,'12:30:00',4,4,2,3,'2018-05-26 03:15:28','2018-05-26 03:15:28',3),(49,'12:30:00',15,1,1,3,'2018-05-26 03:16:41','2018-05-27 16:59:35',1),(50,'12:45:00',15,1,2,3,'2018-05-26 03:18:13','2018-05-26 03:18:13',1),(51,'13:00:00',22,4,1,3,'2018-05-26 03:20:41','2018-05-26 03:20:41',1),(52,'13:10:00',16,5,1,3,'2018-05-26 03:21:25','2018-05-26 03:21:25',1),(53,'13:20:00',16,6,2,3,'2018-05-26 03:22:03','2018-05-26 03:22:03',1),(54,'15:45:00',8,1,1,2,'2018-05-27 13:21:27','2018-05-27 13:21:27',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjump2s`
--

LOCK TABLES `hjump2s` WRITE;
/*!40000 ALTER TABLE `hjump2s` DISABLE KEYS */;
INSERT INTO `hjump2s` VALUES (10,2,'Agustina Cruz Sepúlveda','3/31/2003','13','CDUC','DNS','99','2018-05-26 14:27:53','2018-08-02 17:40:59'),(11,2,'Javiera Moraga del Orto','10/14/2003','13','CDUC','2.60','3','2018-05-26 14:28:44','2018-05-26 21:43:05'),(12,2,'Dominga Contreras Gubbins','9/29/2003','13','CDUC','2.80','2','2018-05-26 14:29:07','2018-05-26 21:42:51'),(13,2,'Sofía Paz Venegas San Martín','7/25/2003','13','CDUC','3.00','1','2018-05-26 14:29:29','2018-05-26 21:42:39'),(15,1,'Agustina Cruz Sepulveda','2003','13','CDUC','1.48 (599)','1','2018-05-26 15:28:00','2018-05-28 04:58:16'),(16,1,'Cristianne Neumann','2003','10','C.D. Pilauco','1.45 (566)','2','2018-05-26 15:28:56','2018-05-27 14:14:49'),(17,1,'Laura Bustamante González','2004','10','E. Atletismo ','1.36 (470)','3','2018-05-26 15:30:24','2018-05-27 14:14:52'),(18,1,'María Squella Contardo','2003','13','CDUC','1.33 (439)','4','2018-05-26 15:31:11','2018-05-27 14:14:55'),(19,1,'Martina Delgado','2004','10','C.A. Gerardo Manzanares','1.33 (439)','5','2018-05-26 15:31:58','2018-05-27 14:14:57'),(20,1,'Cecilia Millaray Mellado','2003','13','A. inglés','1.27 (379)','6','2018-05-26 15:33:04','2018-05-27 14:15:02'),(21,1,'Emilia Alejandra Cabrera Valenzuela','2003','13','C. Manquemávida','1.18 (293)','7','2018-05-26 15:34:21','2018-05-27 14:15:05'),(23,1,'Aylimm Muñoz Díaz','2004','10','A.A. Castroi','1.15 (266)','8','2018-05-26 15:35:41','2018-05-27 14:15:08'),(24,1,'Giza Dayanne Aguayo Vásquez','2004','6','C. Génesis','DNS','99','2018-05-26 15:36:51','2018-08-02 17:34:01'),(25,1,'Orión Renata Carrasco Carrillo','2003','6','C. Manquemávida de Santa Cruz','DNS','99','2018-05-26 15:39:03','2018-05-27 01:57:55'),(26,1,'Valentina Duque Muñoz','2003','7','C. Liceo de Curicó','DNS','99','2018-05-26 15:40:07','2018-05-27 01:57:54'),(27,3,'Agustin Leon Yañez','06-10-2004','13','A. Santiago','N\\M','96','2018-05-26 20:07:46','2018-05-26 20:12:49'),(28,3,'Pedro Goycoolea Lagos','10-05-2004','13','A. Santiago','2.60','11','2018-05-26 20:08:51','2018-05-26 20:11:17'),(30,3,'Jeronimo Correa Valdes','26-02-2004','13','A. Santiago','2.90','8','2018-05-26 20:11:01','2018-05-26 20:12:41'),(31,3,'Lucas Palacios Nazif','22-02-2004','13','CDUC','3.00','7','2018-05-26 20:12:46','2018-05-26 20:13:24'),(32,3,'Mateo Cortina Capkovic','08-11-2004','13','A. Santiago','2.80','10','2018-05-26 20:13:15','2018-05-26 20:14:37'),(33,3,'Benjamin Araya Fuentes','05-01-2004','13','A. Santiago','2.90','9','2018-05-26 20:13:47','2018-05-26 20:16:45'),(34,3,'Mariano  Rodriguez Gutierrez','26-09-2003','13','A. San Ignacio','3.00','6','2018-05-26 20:14:31','2018-05-26 20:17:13'),(35,3,'Benjamin Urrutia Prado','02-02-2003','13','A. Santiago','3.30','5','2018-05-26 20:15:05','2018-05-26 20:26:00'),(36,3,'Andres Marchant Labbe','12-08-2003','13','A. Santiago','DNS','99','2018-05-26 20:16:04','2018-05-26 20:23:56'),(37,3,'Martin Varas Castro','30-09-2003','13','A. Santiago','3.50','2','2018-05-26 20:16:36','2018-05-26 20:21:58'),(38,3,'Arturo Munita Ibañez','03-02-2003','13','A. Santiago','DNS','99','2018-05-26 20:17:17','2018-05-26 20:23:58'),(39,3,'Tomas Oyarzun Nualart','16-05-2003','13','A. Santiago','3.60','1','2018-05-26 20:17:51','2018-05-26 20:21:26'),(40,3,'Maximiliano Palma Acuña','06-10-2003','8','C. A. Nekuln Galgos (Chillan Viejo)','3.40','3','2018-05-26 20:19:04','2018-05-26 20:21:12'),(41,3,'Santiago Wood Lewin','24-06-2003','13','CDUC','3.40','4','2018-05-26 20:21:15','2018-05-26 20:23:23'),(42,4,'Trinidad Canahuate Rojas','C. D. Colegio Padre Hurtado de Chillan','8','03-02-2003','1.40','2','2018-05-27 13:35:45','2018-05-27 13:35:45'),(43,4,'C. D. Colegio Padre Hurtado de Chillan','11-07-2003','13','CDUC','1.60','1','2018-05-27 13:39:42','2018-05-27 13:39:42'),(44,5,'Benjamin Alvarado Olmi','01-04-2003','10','C. A. Puerto Sur','1.37  (297)','7','2018-05-27 15:06:21','2018-05-28 04:40:53'),(45,5,'Manuel Vasquez ','22-09-2004','10','C. D. Pilauco','1.70 (544)','1','2018-05-27 15:07:11','2018-05-27 15:22:34'),(46,5,'Benjamin Gonzalez Olguin','06-04-2003','6','A. Nancagua','1.40 (317)','6','2018-05-27 15:08:23','2018-05-27 15:23:19'),(47,5,'Eduardo Camp Summerset','04-09-2003','15','Centro Atlético Formativo','1.52 (404)','2','2018-05-27 15:10:10','2018-05-27 15:22:42'),(48,5,'Benjamin Irribarren Poyanopulos','13-01-2004','15','Centro Atlético Formativo','1.46 (360)','5','2018-05-27 15:13:26','2018-05-27 15:23:12'),(49,5,'Pablo Rojas Muñoz','01-07-2003','7','C. A. Alameda Talca','1.46 (360)','4','2018-05-27 15:18:55','2018-05-27 15:23:02'),(50,5,'Adan Matías  Puel  Curin','07-06-2003','9','A. Ñielol','1.49 (381)','3','2018-05-27 15:21:35','2018-05-27 15:22:56'),(51,6,'Andres Molina Serrano','30-04-2003','13','CDUC','1.80','1','2018-05-27 16:05:50','2018-05-27 16:05:50'),(52,6,'Eduardo Astorga Diaz','03-09-2004','7','C. Liceo de Curicó','DNS','','2018-05-27 16:06:49','2018-05-27 16:25:04'),(53,6,'Nicolas Diaz Leighton','09-11-2003','13','A. Santiago','DNS','','2018-05-27 16:07:37','2018-05-27 16:25:06'),(54,6,'Jeronimo Correa Valdes','26-02-2004','13','A. Santiago','DNS','','2018-05-27 16:08:44','2018-05-27 16:25:08'),(55,6,'Clemente Atria Fuentes','01-03-2004','13','A. San Ignacio','NM','','2018-05-27 16:09:53','2018-05-27 16:25:10'),(56,6,'Pedro Krebs Saez','27-09-2003','13','A. San Ignacio','DNS','','2018-05-27 16:10:49','2018-05-27 16:25:12'),(57,6,'Pedro Cañas Etchegaray','11-08-2004','13','A. San Ignacio','DNS','','2018-05-27 16:11:38','2018-05-27 16:25:14'),(58,6,'Fernando Bobenrieth Menéndez','27-05-2003','12','C. de Atletismo Punta Arenas','1.65','4','2018-05-27 16:13:13','2018-05-27 16:13:13'),(59,6,'Fernando Vela Larrain','17-01-2003','13','A. Santiago','NM','','2018-05-27 16:15:10','2018-05-27 16:25:02'),(60,6,'Lukas Eduardo Silva Daza','09-03-2004','8','C. D. Colegio Padre Hurtado de Chillan','1.60','5','2018-05-27 16:18:36','2018-05-27 16:18:36'),(61,6,'Pedro  Morales Delano','21-03-2004','5','C. A. Pacífico','1.60','6','2018-05-27 16:19:31','2018-05-27 16:19:31'),(62,6,'Felipe Torres Cifuentes','08-02-2004','13','A. Santiago','1.80','2','2018-05-27 16:22:10','2018-05-27 16:22:10'),(63,6,'Juan Weinstein Muller','29-07-2003','13','A. Francés','DNS','','2018-05-27 16:23:15','2018-05-27 16:25:16'),(64,6,'Mauricio Viñuela Manterola','16-01-2003','13','A. Santiago','1.80','2','2018-05-27 16:24:16','2018-05-27 16:24:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjump_head2s`
--

LOCK TABLES `hjump_head2s` WRITE;
/*!40000 ALTER TABLE `hjump_head2s` DISABLE KEYS */;
INSERT INTO `hjump_head2s` VALUES (1,NULL,NULL,1,4,1,1,'Salto Alto - Hexatlón - Damas','2018-05-26 13:24:25','2018-05-26 15:26:45'),(2,NULL,NULL,1,10,1,1,'-Salto con Garrocha - Final - Damas','2018-05-26 14:23:55','2018-05-27 14:32:36'),(3,NULL,NULL,1,18,1,1,'Salto Con Garrocha - Final Varones','2018-05-26 20:01:30','2018-05-26 20:09:13'),(4,NULL,NULL,1,54,1,1,'','2018-05-27 13:31:32','2018-05-27 13:31:32'),(5,NULL,NULL,1,40,1,1,'- Salto Alto - Hexatlón- Varones','2018-05-27 15:02:03','2018-05-27 15:04:02'),(6,NULL,NULL,1,43,1,1,'Salto Alto - Varones','2018-05-27 16:04:32','2018-05-27 16:26:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jump2s`
--

LOCK TABLES `jump2s` WRITE;
/*!40000 ALTER TABLE `jump2s` DISABLE KEYS */;
INSERT INTO `jump2s` VALUES (1,1,'Benjamin Alvarado Olmi','C. A. Puerto Sur','4.43','+0.6','4.50','+0.5','4.43','-0.4','','','','','','','','4.50','8','2018-05-26 14:18:12','2018-05-27 13:16:53','4/1/2003','10','290'),(2,1,'Manuel Vasquez ','C. D. Pilauco','5.49','-0.0','5.85','+0.5','5.82','-0.0','','','','','','','','5.85','2','2018-05-26 14:18:47','2018-05-27 13:14:27','9/22/2004','10','554'),(3,1,'Santiago Salinas Cabrera','A. Santiago','x','+0.8','5.25','0.0','5.22','-0.2','','','','','','','','5.25','3','2018-05-26 14:19:10','2018-05-27 13:13:18','4/4/2003','13','431'),(4,1,'Joaquín Cristóbal Galleguillos Puebla','C. Manquemávida de Santa Cruz','','','','','','','','','','','','','','','99','2018-05-26 14:19:52','2018-05-26 15:02:21','2/8/2003','6','DNS'),(5,1,'Benjamin Gonzalez Olguin','A. Nancagua','4.34','+0.7','4.84','-0.8','4.85','+0.1','','','','','','','','4.85','7','2018-05-26 14:20:19','2018-05-27 13:12:48','4/6/2003','6','354'),(6,1,'Eduardo Camp Summerset','Centro Atlético Formativo','5.77','-0.8','5.98','-0.1','5.76','+0.3','','','','','','','','5.98','1','2018-05-26 14:20:56','2018-05-27 13:11:39','9/4/2003','15','582'),(8,1,'Pablo Rojas Muñoz','C. A. Alameda Talca','4.85','+1.1','4.94','+0.1','4.88','-0.3','','','','','','','','4.94','6','2018-05-26 14:22:02','2018-05-27 13:12:15','7/1/2003','7','371'),(9,1,'Adan Puel','C.A. Ñielol','4.96','+0.1','5.11','5.11','5.10','+0.9','','','','','','','','5.11','4','2018-05-26 14:35:28','2018-05-27 13:17:26','7/6/2003','9','404'),(11,1,'Benjamín Irribarren Poyanopulos','Centro Atlético Formativo','4.73','+0.3','4.95','+0.3','x','-0.2','','','','','','','','4.95','5','2018-05-26 14:47:58','2018-05-27 13:16:17','1/13/2004','15','373'),(12,2,'Maria Ignacia  Aspillaga  Claverie','CDUC','5.07','+0.1','5.35','+0.4','X','-1.3','8','5.03','+1.2','5.20','+0.7','5.19','+0.7','5.35','1','2018-05-26 21:15:28','2018-05-27 02:13:59','2003-03-07','13',NULL),(13,2,'Barbara Carrasco Garcia','A. Santiago','4.59','+0.3','4.97','-0.5','5.18','+1.3','7','4.78','+1.7','4.84','+0.1','5.06','+1.1','5.18','2','2018-05-26 21:15:28','2018-05-27 02:14:04','2003-05-05','13',NULL),(14,2,'Javiera Gonzalez Moscoso','A. Nancagua','4.84','+1.5','4.75','-0.7','4.81','+2.0','6','4.69','+1.9','4.55','+0.4','4.98','+1.5','4.98','3','2018-05-26 21:15:28','2018-05-27 02:14:05','2003-08-24','6',NULL),(15,2,'Camila Sarai Ponce Márquez','Vicente Potrerillos Salinas','4.61','+1.0','4.73','+1.7','4.64','+1.1','5','4.45','+1.0','4.62','+1.4','4.91','+0.8','4.91','4','2018-05-26 21:15:28','2018-05-27 02:14:08','2004-01-25','3',NULL),(16,2,'Maria Garnham Guzman','CDUC','3.70','+0.6','4.64','+1.9','4.51','+0.9','4','4.55','+1.3','X','+1.4','4.68','+0.8','4.68','5','2018-05-26 21:15:28','2018-05-27 02:14:09','2003-06-18','13',NULL),(17,2,'Nicole Darritchon Lama','CDUC','4.48','-0.4','4.25','-1.6','4.43','+0.2','2','4.48','+0.9','4.46','+0.1','4.60','+1.0','4.60','6','2018-05-26 21:15:28','2018-05-27 02:14:11','2003-10-03','13',NULL),(18,2,'Antonia Diaz Lizana','A. Nancagua','4.48','-0.7','4.34','+0.8','4.45','+1.0','3','4.50','+1.0','4.45','+0.9','M','+1.5','4.50','7','2018-05-26 21:15:28','2018-05-27 02:14:12','2004-05-01','6',NULL),(19,2,'Cecilia Millaray Mellado Carvajal','A. Ingles','4.43','+0.3','4.20','-0.9','4.10','+0.7','1','4.32','-0.4','4.22','+0.3','4.29','+0.7','4.43','8','2018-05-26 21:15:28','2018-05-27 02:14:14','2003-01-03','4',NULL),(20,2,'Camily Reyes Ibarra','Academia Iquique Bajo Molle','M','+0.2','4.40','+0.6','4.42','+0.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.42','9','2018-05-26 21:15:28','2018-05-26 21:17:08','2003-08-06','1',NULL),(21,2,'Carola Scheihing Ballesteros','Escuela de Atletismo Osorno','4.13','+0.3','4.24','+2.0','4.33','+1.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.33','10','2018-05-26 21:15:28','2018-05-26 21:18:29','2004-02-12','10',NULL),(22,2,'Nicole Radonich Silva','C. de Atletismo Punta Arenas','M','+0.1','4.18','+0.6','3.98','+0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.18','11','2018-05-26 21:15:28','2018-05-26 21:18:25','2003-11-13','12',NULL),(23,2,'Maira  Martinez Mayorga','C. A. LEA','4.30','+1.3','4.12','+0.0','4.12','+0.9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.12','12','2018-05-26 21:15:28','2018-05-26 21:18:22','2003-11-16','12',NULL),(24,2,'Maria  Reyes Fernandez','C. A. Gerardo Manzanares ','M','+0.6','3.91','+0.7','4.01','+0.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.01','13','2018-05-26 21:15:28','2018-05-26 21:18:16','2003-05-01','10',NULL),(25,2,'Margarita Hubner ','C. D. Pilauco','3.89','+0.8','3.90','+1.9','3.98','-0.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.98','14','2018-05-26 21:15:28','2018-05-26 21:18:12','2004-04-20','10',NULL),(26,2,'Fernanda Isidora Maldonado Fuentealba','C. Marista Curicó','3.80','+0.5','M','+1.5','3.91','+2.3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.91','15','2018-05-26 21:15:28','2018-05-26 21:18:08','2004-01-21','7',NULL),(27,2,'Melany Rocío Guerrero Chayle','A. Copiapó','X','-0.2','3.90','+1.1','3.80','+0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.90','16','2018-05-26 21:15:28','2018-05-26 21:18:05','2004-07-09','3',NULL),(28,2,'Maria Paz Lira Delgeon','CDUC','M','+0.2','M','+1.1','3.90','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.90','17','2018-05-26 21:15:28','2018-05-26 21:18:00','2003-10-07','13',NULL),(29,2,'Tamara Lopez Vera','A. Cauquenes','M','+0.3','3.65','-0.4','3.82','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.82','18','2018-05-26 21:15:28','2018-05-26 21:17:45','2004-03-04','7',NULL),(30,2,'Daniela  Charme  Soto','CDUC','X','+0.5','X','-0.4','3.81','+1.9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.81','19','2018-05-26 21:15:28','2018-05-26 21:17:40','2003-06-05','13',NULL),(31,2,'Victoria Pardo Antillanca','C. D. Bernardo Felmer','M','+0.1','3.23','+0.9','3.64','-0.2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.64','20','2018-05-26 21:15:28','2018-05-26 21:17:33','2004-11-24','14',NULL),(32,2,'Josefa Inostroza Maldnado','C. Liceo de Curicó',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:00','2003-10-04','7',NULL),(33,2,'Anthar Gipoulou Pizarro','C.D. Windsor School',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:02','2004-03-04','14',NULL),(34,2,'Irene Linda Riquelme Muñoz','C. A. Tamarugo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:06','2003-09-30','1',NULL),(35,2,'Maira  Martinez Mayorga','C. A. LEA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:08','2003-11-16','12',NULL),(36,2,'Lisa Bauch Lisa','Manquehue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:11','2003-12-16','13',NULL),(37,2,'Fernanda Gonzalez Gomez','C. A. Parral',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:14','2004-04-27','7',NULL),(38,2,'Valentina  Vásquez  General','C. A. Limache',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:17','2003-06-07','5',NULL),(39,2,'Amanda Gil Amanda','Manquehue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-05-27 02:13:20','2004-07-26','13',NULL),(40,2,'Chester Avila Salas','A. Cauquenes','X',NULL,'X','+0.5','X','+0.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-08-02 22:47:42','2004-11-27','7',NULL),(41,2,'Antonia Suerez Escobar','A. Santiago','X','-0.0','X','+0.6','M','+0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-08-02 22:47:45','2003-04-13','13',NULL),(42,2,'Catalina Ignacia Fuentes Campos','C. Marista Curicó','X',NULL,'X',NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:15:28','2018-08-02 22:47:48','2003-05-03','7',NULL),(43,3,'Bruno Rickemberg Benedetti','A. Santiago','X',NULL,'6.15','+1.8','5.99','+1.4',NULL,'5.89','+1.3','5.99','+0.6','X',NULL,'6.15','1','2018-05-26 22:31:23','2018-05-26 22:34:21','2003-04-29','13',NULL),(44,3,'Eduardo Camp Summerset','Centro Atlético Formativo','5.33','+1.7','X',NULL,'6.00','+0.6',NULL,'5.82','+1.1','5.63','+0.9','6.07','+0.6','6.07','2','2018-05-26 22:31:23','2018-05-26 22:34:31','2003-09-04','15',NULL),(45,3,'Benjamín Emilio Villa Castro','C. A. Nahuelbuta Angol','X',NULL,'5.88','+0.9','5.71','+1.4',NULL,'M',NULL,'5.51','+0.9','6.03','+0.8','6.03','3','2018-05-26 22:31:23','2018-05-26 22:34:34','2004-03-03','9',NULL),(46,3,'Benjamin Rojas krause','C. A. Puerto Sur','M',NULL,'5.97','+1.6','5.26','+0.7',NULL,'5.52','+1.1','5.30','+1.0','5.30','+0.8','5.97','4','2018-05-26 22:31:23','2018-05-26 22:34:38','2004-04-04','10',NULL),(47,3,'Matias Gonzalez Romero','Manquehue','5.32','+1.0','5.59','+0.6','X',NULL,NULL,'5.74','+1.1','5.95','+1.8','5.86','+0.8','5.95','5','2018-05-26 22:31:23','2018-05-26 22:34:40','2003-06-26','13',NULL),(48,3,'Cristobal Alejandro Salazar Alarcon','C. Génesis','X',NULL,'5.51','+1.3','X',NULL,NULL,'5.49','+1.2','5.59','+0.9','X','+0.5','5.59','6','2018-05-26 22:31:23','2018-05-26 22:34:43','2003-03-19','6',NULL),(49,3,'Martin Seefeldt Karque','A. Santiago','5.49','+1.1','5.25','+0.4','5.35','+1.8',NULL,'M',NULL,'5.15','+0.6','5.27','+0.6','5.49','7','2018-05-26 22:31:23','2018-05-26 22:34:48','2004-06-28','13',NULL),(50,3,'Jose Vicente Peña Alvarado','C. Génesis','5.37','+0.7','5.30','+1.6','X',NULL,NULL,'5.17','+1.4','5.10','+1.3','5.19','+0.5','5.37','8','2018-05-26 22:31:23','2018-05-26 22:35:27','2003-11-17','6',NULL),(51,3,'Fabian Ferrufino Robledo','A. Copiapó','X',NULL,'M',NULL,'5.13','+1.4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.13','9','2018-05-26 22:31:23','2018-05-26 22:35:29','2004-01-22','3',NULL),(52,3,'Joaquín Alberto Pérez Guajardo','C. Marista Curicó','M',NULL,'5.01','+2.9','5.12','+0.6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.12','10','2018-05-26 22:31:23','2018-05-26 22:34:25','2004-01-04','7',NULL),(53,3,'Diego Hormazabal Torres','A. Cauquenes','M',NULL,'5.00','+2.0','M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.00','11','2018-05-26 22:31:23','2018-05-26 22:34:28','2004-11-12','7',NULL),(54,3,'Max Leonardo Davila Delgado','C. A. Tamarugo','M',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:32:56','2004-05-29','1',NULL),(55,3,'Luciano Aros Acuña','C. D. Bernardo Felmer','M',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:32:59','2003-03-08','14',NULL),(56,3,'Ignacio Campos Del Saz','C. A. Parral','X',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:33:03','2004-03-21','7',NULL),(57,3,'Martín  Úrzua Opazo','A. Francés','M',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:33:07','2004-12-06','13',NULL),(58,3,'Matias Norambuena France','A. Santiago','M',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:33:10','2004-05-13','13',NULL),(59,3,'Bruno Gonzalo Ordenes Cisterna','C. A. Huasco','M',NULL,'M',NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 22:31:23','2018-05-26 22:33:14','2004-08-21','3',NULL),(60,3,'Juan Contreras Contreras','C. D. Bernardo Felmer','X',NULL,'X',NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:18','2004-04-15','14',NULL),(61,3,'Matias Adrian Tapia Lucero','C. A. Nacional Iquique',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:21','2004-05-16','1',NULL),(62,3,'Carlos Ibarra Allende','C. Liceo de Curicó','-',NULL,'-',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:25','2004-12-30','7',NULL),(63,3,'Luis Hernandez Gonzalez','C. Liceo de Curicó',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:28','2003-06-04','7',NULL),(64,3,'Nicolas Diaz Leighton','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:31','2003-11-09','13',NULL),(65,3,'Benjamin Olivares Jimenez','A. San Ignacio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:36','2003-01-22','13',NULL),(66,3,'Martin Olavarria Jara','C. A. Puerto Sur','-',NULL,'-',NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:39','2003-11-26','10',NULL),(67,3,'Diego Ibacache Basaez','C. A. Limache',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:44','2003-06-17','5',NULL),(68,3,'David Hernández Amador','C. A. Limache',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:50','2004-12-20','5',NULL),(69,3,'Rodrigo Manriquez Lujan','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:52','2004-01-25','13',NULL),(70,3,'Joaquin Vicente Lopehandia Zepeda','A. Ingles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:56','2004-12-04','4',NULL),(71,3,'Tomas Ortiz Montenegro','A. San Ignacio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:33:59','2003-08-30','13',NULL),(72,3,'Gabriel Muñoz Squella','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:02','2003-03-28','13',NULL),(73,3,'Andres Marchant Labbe','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:05','2003-08-12','13',NULL),(74,3,'Felipe Torres Cifuentes','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:08','2004-02-08','13',NULL),(75,3,'Pedro Arrieta Olivares','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:11','2003-01-14','13',NULL),(76,3,'Jose Guarachi Rodriguez','A. San Ignacio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:14','2003-01-29','13',NULL),(77,3,'Rodrigo Cerda ','C. D. Pilauco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-26 22:31:23','2018-05-26 22:34:18','2003-03-20','10',NULL),(78,4,'Fabian Ferrufino Robledo','A. Copiapó','X','+0.2','10.27','+0.6','10.26','+0.1','4','10.06','-0.3','M','-0.0','10.59','+0.3','10.59','5','2018-05-27 13:44:18','2018-05-27 15:28:42','2004-01-22','3',NULL),(79,4,'Antonio Errazuriz Subercaseaux','A. Santiago','X','+0.4','X','+0.4','M','+0.0','1','X','-0.7','X','-0.2','X','-0.1','N\\M','95','2018-05-27 13:44:18','2018-05-27 15:31:52','2004-07-05','13',NULL),(80,4,'Bruno Gonzalo Ordenes Cisterna','C. A. Huasco','9.56','+0.5','9.76','+0.5','9.65','-0.5','3','M','-0.5','9.68','+0.4','X','+0.6','9.76','7','2018-05-27 13:44:18','2018-05-27 15:30:53','2004-08-21','3',NULL),(81,4,'Martín  Úrzua Opazo','A. Francés','10.71','+0.2','10.27','+0.4','10.64','+0.2','5','10.32','-0.0','10.21','-0.1','10.37','-0.7','10.71','4','2018-05-27 13:44:18','2018-05-27 15:27:04','2004-12-06','13',NULL),(82,4,'Martin Olavarria Jara','C. A. Puerto Sur','X','+0.3','11.67','+0.5','11.89','+0.3','8','11.88','+0.7','11.82','-0.1','12.11','-0.7','12.11','1','2018-05-27 13:44:18','2018-05-27 15:23:45','2003-11-26','10',NULL),(83,4,'Clemente Zenteno Maturana','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-27 13:44:18','2018-05-27 15:06:03','2003-03-30','13',NULL),(84,4,'Nicolas Phillipi Yunisic','A. Santiago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-27 13:44:18','2018-05-27 15:06:06','2003-07-07','13',NULL),(85,4,'Tomas Concha Cardenas','A. Santiago','X','+0.1','X','+0.5','X','-1.2','2','X','-0.3','x','+0.1','10.10','+0.1','10.10','6','2018-05-27 13:44:18','2018-05-27 15:29:48','2003-09-05','13',NULL),(86,4,'Jose Vicente Peña Alvarado','C. Génesis','X','+0.5','11.14','+0.8','11.48','-0.6','7','X','-0.8','X','-0.1','11.78','+0.2','11.78','2','2018-05-27 13:44:18','2018-05-27 15:24:39','2003-11-17','6',NULL),(87,4,'Cristobal Alejandro Salazar Alarcon','C. Génesis','X','+0.2','10.82','+0.7','X','-1.1','6','10.96','-0.2','-','','11.54','+0.1','11.54','3','2018-05-27 13:44:18','2018-05-27 15:25:53','2003-03-19','6',NULL),(88,5,'Alexander Zamora','A. Atacama','13.32','+0.5','13.14','+0.3','12.96','-0.1','9','11.59','+0.4','11.76','-0.5','13.05','-0.2','10.32','','2018-05-27 14:11:56','2018-05-27 15:33:17','2001','3',''),(89,6,'Aylimm Muñoz Diaz','A. de A. Castro','X',NULL,'X',NULL,'3.56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.56','7','2018-05-27 16:56:24','2018-05-27 17:08:54','2004-08-16','10','212'),(90,6,'Laura Bustamante González','Escuela de Atletismo Osorno','x',NULL,'3.45',NULL,'3.50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.50','8','2018-05-27 16:56:24','2018-05-27 17:08:48','2004-09-24','10','200'),(91,6,'Cristianne Neumann ','C. D. Pilauco','3.79',NULL,'3.81',NULL,'3.86',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.86','5','2018-05-27 16:56:24','2018-05-27 17:09:17','2003-09-05','10','276'),(92,6,'Maria Squella Contardo','CDUC','3.63',NULL,'X',NULL,'4.17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.17','4','2018-05-27 16:56:24','2018-05-27 17:09:20','2003-04-14','13','347'),(93,6,'Giza Dayanee Aguayo Vasquez','C. Génesis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:56:24','2018-05-27 17:09:46','2004-04-13','6',NULL),(94,6,'Orión Renata Carrasco Carrillo','C. Manquemávida de Santa Cruz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:56:24','2018-05-27 17:09:42','2003-08-23','6',NULL),(95,6,'Emilia Alejandra Cabrera Valenzuela','C. Manquemávida de Santa Cruz','3.38',NULL,'3.60',NULL,'2.98',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.60','6','2018-05-27 16:56:24','2018-05-27 17:09:01','2003-09-06','6','220'),(96,6,'Valentina Duque Muñoz','C. Liceo de Curicó',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:56:24','2018-05-27 17:09:38','2003-09-09','7',NULL),(98,6,'Agustina Cruz','CDUC','4.79',NULL,'4.56',NULL,'X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.79','1','2018-05-27 16:56:24','2018-05-27 17:09:32','2003-03-31','13','503'),(99,6,'Cecilia Millaray','A. Ingles','2.80',NULL,'3.62',NULL,'4.31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.31','3','2018-05-27 16:56:24','2018-05-27 17:09:25','2003-03-01','4','381'),(100,6,'Martina Delgado','G. Manzanales','X','','3.80',NULL,'4.57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.57','2','2018-05-27 16:56:24','2018-05-27 17:09:28','2004-07-15','10','446'),(101,7,'Camily Reyes Ibarra','Academia Iquique Bajo Molle','X','+0.1','9.33','+0.2','9.46','+1.0','1','9.38','+0.2','9.57','+0.6','9.87','+0.9','9.87','6','2018-05-27 17:22:57','2018-05-27 17:48:02','2003-08-06','1',NULL),(102,7,'Claudia Retamales Nuñez','OASSI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-27 17:22:57','2018-05-27 17:57:02','2003-02-12','13',NULL),(103,7,'Melany Rocío Guerrero Chayle','A. Copiapó','X','+0.0','X','+0.2','M','-0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M/N','95','2018-05-27 17:22:57','2018-05-27 17:57:00','2004-07-09','3',NULL),(104,7,'Maria  Reyes Fernandez','C. A. Gerardo Manzanares ','9.11','+0.4','9.85','+0.9','9.76','-0.3','4','9.54','+0.9','9.27','-0.0','X','+0.9','9.85','7','2018-05-27 17:22:57','2018-05-27 17:50:45','2003-05-01','10',NULL),(105,7,'Maria Paz Lira Delgeon','CDUC','9.34','+0.0','9.72','+0.8','9.80','+0.2','3','10.00','-0.6','X','+1.0','X','+1.3','10.00','5','2018-05-27 17:22:57','2018-05-27 17:52:04','2003-10-07','13',NULL),(106,7,'Francisca Antonia  Torres  Quintana','C. A. Ñielol','9.79','+0.0','X','+1.6','10.06','+0.8','5','X','+0.4','10.36','+1.2','10.39','+1.0','10.39','3','2018-05-27 17:22:57','2018-05-27 17:59:35','2003-01-22','9',NULL),(107,7,'Cecilia Millaray Mellado Carvajal','A. Ingles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-27 17:22:57','2018-05-27 17:57:05','2003-01-03','4',NULL),(108,7,'Nicole Radonich Silva','C. de Atletismo Punta Arenas','10.01','+0.2','10.16','+1.0','10.09','+0.3','6','9.62','+0.1','9.61','+0.5','X','+1.2','10.16','4','2018-05-27 17:22:57','2018-05-27 17:53:45','2003-11-13','12',NULL),(109,7,'Florencia  Millar Ponce','A. Francés','9.56','-0.3','X','+0.4','X','+1.2','2','9.69','+0.1','9.70','+1.6','9.52','+1.8','9.70','8','2018-05-27 17:22:57','2018-05-27 17:54:52','2004-01-06','13',NULL),(110,7,'Maria Garnham Guzman','CDUC','10.62','+0.3','10.66','-0.4','10.49','+1.9','7','10.37','+1.9','10.78','+1.4','10.84','+1.0','10.84','1','2018-05-27 17:22:57','2018-05-27 17:55:51','2003-06-18','13',NULL),(111,7,'Martina Zepeda  Pedemonte','A. Atacama','10.75','+0.1','10.46','+0.1','X','+2.1','8','X','+1.0','X','+1.5','10.31','+1.9','10.75','2','2018-05-27 17:22:57','2018-05-27 17:56:39','2003-03-29','3',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jump_head2s`
--

LOCK TABLES `jump_head2s` WRITE;
/*!40000 ALTER TABLE `jump_head2s` DISABLE KEYS */;
INSERT INTO `jump_head2s` VALUES (1,NULL,NULL,1,9,1,1,NULL,'2018-05-26 13:37:22','2018-05-27 14:30:03','Salto Largo - Hexatlón - Varones'),(2,NULL,NULL,1,19,1,1,NULL,'2018-05-26 21:15:17','2018-05-26 21:49:19','Salto Largo Damas'),(3,NULL,NULL,1,27,1,1,NULL,'2018-05-26 22:31:10','2018-05-26 22:31:10',''),(4,NULL,NULL,1,39,1,1,NULL,'2018-05-27 13:31:22','2018-05-27 15:19:11','Salto Triple - Varones / Final'),(5,NULL,NULL,1,39,1,1,NULL,'2018-05-27 14:09:51','2018-05-27 14:10:20','Invitados'),(6,NULL,NULL,1,44,1,1,NULL,'2018-05-27 16:56:12','2018-05-27 17:40:02','Salto Largo - Hexatlón - Damas'),(7,NULL,NULL,1,46,1,1,NULL,'2018-05-27 17:18:23','2018-05-27 18:00:01','Salto Triple Damas');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexes`
--

LOCK TABLES `sexes` WRITE;
/*!40000 ALTER TABLE `sexes` DISABLE KEYS */;
INSERT INTO `sexes` VALUES (1,'DAMAS','2018-05-26 01:48:37','2018-05-26 01:48:37'),(2,'VARONES','2018-05-26 01:48:50','2018-05-26 01:48:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,'200 METROS PLANOS','2018-05-26 01:54:33','2018-05-28 04:34:53'),(2,'SALTO CON GARROCHA','2018-05-26 01:54:56','2018-05-26 01:54:56'),(3,'SALTO LARGO','2018-05-26 01:55:10','2018-05-26 01:55:10'),(4,'LANZAMIENTO JABALINA','2018-05-26 01:55:27','2018-05-26 01:55:27'),(5,'100 METROS VALLAS','2018-05-26 01:55:49','2018-05-26 01:55:49'),(6,'LANZAMIENTO BALA','2018-05-26 01:56:07','2018-05-26 01:56:07'),(7,'300 METROS PLANOS','2018-05-26 01:56:48','2018-05-26 01:56:48'),(8,'SALTO ALTO','2018-05-26 01:57:07','2018-05-26 01:57:07'),(9,'LANZAMIENTO DISCO','2018-05-26 01:57:44','2018-05-26 01:57:44'),(10,'1.000 METROS PLANOS','2018-05-26 01:58:07','2018-05-26 01:58:07'),(11,'RELEVO 4X100 METROS','2018-05-26 01:58:39','2018-05-26 01:58:39'),(12,'5.000 METROS MARCHA','2018-05-26 01:59:08','2018-05-26 01:59:08'),(13,'SALTO TRIPLE','2018-05-26 01:59:38','2018-05-26 01:59:38'),(14,'300 METROS VALLAS','2018-05-26 02:00:17','2018-05-26 02:00:17'),(15,'3.000 METROS PLANOS','2018-05-26 02:00:52','2018-05-26 02:00:52'),(16,'RELEVO COMBINADO (100-200-200-300)','2018-05-26 02:01:26','2018-05-26 02:01:26'),(17,'3.000 METROS MARCHA','2018-05-26 02:23:25','2018-05-26 02:23:25'),(18,'400 METROS VALLAS INVITACIÓN (pista 3-8)','2018-05-26 02:26:22','2018-05-26 02:26:22'),(19,'400 METROS PLANOS INVITACIÓN (pista 3-8)','2018-05-26 02:26:46','2018-05-26 02:26:46'),(20,'LANZAMIENTO MARTILLO','2018-05-26 02:30:33','2018-05-26 02:30:33'),(21,'1.500 METROS OBSTÁCULOS','2018-05-26 02:37:51','2018-05-26 02:37:51'),(22,'200 METROS PLANOS','2018-05-26 03:20:03','2018-05-26 03:20:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stages`
--

LOCK TABLES `stages` WRITE;
/*!40000 ALTER TABLE `stages` DISABLE KEYS */;
INSERT INTO `stages` VALUES (1,'2018-05-26','PRIMERA ETAPA SÁBADO (MAÑANA)',1,'2018-05-26 01:44:22','2018-05-26 01:44:22'),(2,'2018-05-26','SEGUNDA ETAPA SÁBADO (TARDE)',1,'2018-05-26 01:45:12','2018-05-26 01:45:12'),(3,'2018-05-27','TERCERA ETAPA DOMINGO (MAÑANA)',1,'2018-05-26 01:45:40','2018-05-26 01:45:40');
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
INSERT INTO `start2s` VALUES (1,1,'Martina Zepeda  Pedemonte','4','','A. Atacama','3','15.00','2018-05-26 04:45:10','2018-05-26 04:52:19'),(2,1,'Khaterine Hornig Angulo','5','27/07/2003','C. A. Gerardo Manzanares ','10','16.46','2018-05-26 04:47:28','2018-05-26 04:52:15'),(3,1,'Nayeli Schwenke Ramirez','3','19/06/2004','C. A. Coyhaique','11','16.80','2018-05-26 04:48:59','2018-05-26 04:52:09'),(4,1,'Rocio Barrientos Crispieri','6','03/01/2004','Academia Iquique Bajo Molle','1','17.20','2018-05-26 04:49:42','2018-05-26 04:52:02'),(5,1,'Francisca Cespedes Valenzuela','7','05/03/2003','Academia Iquique Bajo Molle','1','19.15','2018-05-26 04:50:20','2018-05-26 04:51:56'),(6,1,'Nisty Esperanza Araya Saavedra','8','22/04/2004','A. Ingles','4','','2018-05-26 04:50:45','2018-05-26 04:51:49'),(7,1,'Amanda Gil Amanda','2','26/07/2004','Manquehue','13','','2018-05-26 04:51:14','2018-05-26 04:51:27'),(8,2,'Mathilde Sandrock Cox','2','21/05/2004','Manquehue','13','','2018-05-26 04:53:29','2018-05-26 04:53:29'),(9,2,'Carola Scheihing Ballesteros','8','12/02/2004','Escuela de Atletismo Osorno','10','','2018-05-26 04:54:30','2018-05-26 04:54:30'),(10,2,'Daniela  Charme  Soto','7','05/06/2003','CDUC','13','','2018-05-26 04:54:59','2018-05-26 04:54:59'),(11,2,'Anthar Gipoulou Pizarro','6','04/03/2004','C.D. Windsor School','14','17.90','2018-05-26 04:55:37','2018-05-26 04:55:37'),(12,2,'Josefa Valdera Ramos','3','10/02/2004','Academia Iquique Bajo Molle','1','17.15','2018-05-26 04:56:11','2018-05-26 04:56:11'),(13,2,'Renata Isidora Álvarez Correa','5','29/05/2003','C. Marista Curicó','7','16.50','2018-05-26 04:56:45','2018-05-26 04:56:45'),(15,2,'Florencia Ampuero Sanchez','4','09/01/2003','C. A. Gerardo Manzanares ','10','15.94','2018-05-26 04:58:58','2018-05-26 04:58:58'),(16,3,'Aylimm Muñoz Diaz','','16/08/2004','A. de A. Castro','10','','2018-05-26 05:29:48','2018-05-26 05:29:48'),(17,3,'Laura Bustamante González','','24/09/2004','Escuela de Atletismo Osorno','10','','2018-05-26 05:30:14','2018-05-26 05:30:14'),(18,3,'Cristianne Neumann ','','05/09/2003','C. D. Pilauco','10','','2018-05-26 05:30:32','2018-05-26 05:30:32'),(19,3,'Maria Squella Contardo','','14/04/2003','CDUC','13','','2018-05-26 05:30:51','2018-05-26 05:30:51'),(20,3,'Giza Dayanee Aguayo Vasquez','','13/04/2004','C. Génesis','6','','2018-05-26 05:31:11','2018-05-26 05:31:11'),(21,3,'Orión Renata Carrasco Carrillo','','23/08/2003','C. Manquemávida de Santa C','6','','2018-05-26 05:31:33','2018-05-26 05:31:33'),(22,3,'Emilia Alejandra Cabrera Valenzuela','','06/09/2003','C. Manquemávida de Santa Cruz','6','','2018-05-26 05:31:54','2018-05-26 05:31:54'),(23,3,'Valentina Duque Muñoz','','09/09/2003','C. Liceo de Curicó','7','3100','2018-05-26 05:32:19','2018-05-26 05:32:19'),(24,4,'Martin Delgado Gonzalez','','15/07/2004','C. A. Gerardo Manzanares ','10','','2018-05-26 05:33:38','2018-05-26 05:33:38'),(25,4,'Benjamin Alvarado Olmi','','01/04/2003','C. A. Puerto Sur','10','','2018-05-26 05:33:59','2018-05-26 05:33:59'),(26,4,'Manuel Vasquez ','','22/09/2004','C. D. Pilauco','10','','2018-05-26 05:34:15','2018-05-26 05:34:15'),(27,4,'Santiago Salinas Cabrera','','04/04/2003','A. Santiago','13','','2018-05-26 05:34:33','2018-05-26 05:34:33'),(28,4,'Joaquín Cristóbal Galleguillos Puebla','','08/02/2003','C. Manquemávida de Santa Cruz','6','','2018-05-26 05:34:52','2018-05-26 05:34:52'),(29,4,'Benjamin Gonzalez Olguin','','06/04/2003','A. Nancagua',' 6','','2018-05-26 05:35:18','2018-05-26 05:35:18'),(30,4,'Eduardo Camp Summerset','','04/09/2003','Centro Atlético Formativo','15','','2018-05-26 05:35:41','2018-05-26 05:35:41'),(31,4,'Mauricio Irribarren Poyanopulos','','13/01/2004','Centro Atlético Formativo','15','','2018-05-26 05:36:00','2018-05-26 05:36:00'),(32,4,'Pablo Rojas Muñoz','','01/07/2003','C. A. Alameda Talca','7','','2018-05-26 05:36:19','2018-05-26 05:36:19'),(33,5,'Monserrat Rojas Maugard','','09/09/2003','C. D. Trotamundos','15','12.00.00','2018-05-26 05:38:20','2018-05-26 05:38:49'),(34,5,'Valentina Aguillar Fernandez','','30/05/2003','C. D. Trotamundos','15','12.01.00','2018-05-26 05:39:21','2018-05-26 05:39:21'),(35,5,'Daniela Paz Godoy Lagos','','03/06/2004','C. D. Freire','9','16.32.00','2018-05-26 05:39:45','2018-05-26 05:39:45'),(36,5,'Ayllyn  Vallejos  Galvarino ','','09/03/2003','C. de Deportes Saavedra','9','16.45.00','2018-05-26 05:40:08','2018-05-26 05:40:08'),(37,5,'Carolina Valesca Godoy Lagos','','03/06/2004','C. D. Freire','9','17.09.00','2018-05-26 05:40:34','2018-05-26 05:40:34'),(38,5,'Monserrat Peñafiel Vallejos','','28/12/2003','Escuela de Atletismo Osorno','10','17.34.00','2018-05-26 05:40:57','2018-05-26 05:40:57'),(39,5,'Francisca Briones Contreras','','16/07/2004','C. de Atletismo Punta Arenas','12','18.05.00','2018-05-26 05:41:23','2018-05-26 05:41:23'),(40,5,'Catalina Perez Galvez','','21/07/2003','A. Nancagua','6','18.16.00','2018-05-26 05:41:49','2018-05-26 05:41:49'),(41,6,'Alfredo Sepúlveda Sandoval','4','03/08/1993','A. Pacífico','5','','2018-05-26 05:44:13','2018-05-26 05:44:13'),(42,6,'Andres Bayron Silva','5','27/03/1986','Uruguay','URU','','2018-05-26 05:45:20','2018-05-26 05:47:02'),(43,6,'Joao Pinto Acevedo','3','25/04/1994','U. Católica','13','','2018-05-26 05:45:39','2018-05-26 05:47:10'),(44,6,'Cristóbal Muñoz Fuentealba','6','03/03/1999','A. Gerardo Manzanares','10','','2018-05-26 05:45:57','2018-05-26 05:47:17'),(45,6,'Gabriel Sepúlveda Sandoval ','7','19/07/1995','A. Pacífico','5','','2018-05-26 05:46:13','2018-05-26 05:47:25'),(46,6,'Francisco Barrueto Osandón ','8','08/05/1995','A. Pacífico','5','','2018-05-26 05:46:31','2018-05-26 05:47:33'),(47,6,'Cristóbal Torres Garrido','2','16/10/1996','OASSI','13','','2018-05-26 05:46:50','2018-05-26 05:47:41'),(48,7,'Alejandro Peirano López','4','11/03/1993','A. Santiago','13','','2018-05-26 05:48:38','2018-05-26 05:48:38'),(49,7,'Mateo Pascual','5','24/12/1998','Uruguay','URU','','2018-05-26 05:49:00','2018-05-26 05:49:00'),(50,7,'Maximiliano Castro Ossa','3','11/04/1998','A. Santiago','13','','2018-05-26 05:49:23','2018-05-26 05:49:23'),(51,7,'Francisco Muñoz','6','','Cultura Fisica','5','','2018-05-26 05:49:38','2018-05-26 05:49:38'),(52,7,'Santiago Martínez Muñoz','2','05/11/1995','OASSI','13','','2018-05-26 05:49:57','2018-05-26 05:49:57'),(53,8,'Victoria Rios Castro','4','07/04/2003','A. Santiago','13','11.89','2018-01-02 00:00:00','2018-01-02 00:00:00'),(54,8,'Renata Álvarez Parraguez','5','19/03/2004','A. Francés','13','13.32','2018-01-03 00:00:00','2018-01-03 00:00:00'),(55,8,'Irene Linda Riquelme Muñoz','3','30/09/2003','C. A. Tamarugo','1','13.60','2018-01-04 00:00:00','2018-01-04 00:00:00'),(56,8,'Claudia Retamales Nuñez','6','12/02/2003','OASSI','13','13.80','2018-01-05 00:00:00','2018-01-05 00:00:00'),(57,8,'Amanda Hunt Cid','7','16/10/2003','OASSI','13','14.00','2018-01-06 00:00:00','2018-01-06 00:00:00'),(58,8,'Dafne Anais Reyes','8','24/09/2004','A. Santiago','13','14.10','2018-01-07 00:00:00','2018-01-07 00:00:00'),(59,8,'Catalina Andrea Leiva  Bascur','2','28/03/2003','C. D. A. Coronel','8','14.20','2018-01-08 00:00:00','2018-01-08 00:00:00'),(60,8,'Victoria Pardo Antillanca','1','24/11/2004','C. D. Bernardo Felmer','14','14.80','2018-01-09 00:00:00','2018-01-09 00:00:00'),(61,9,'Barbara Carrasco Garcia','4','05/05/2003','A. Santiago','13','12.86','2018-01-10 00:00:00','2018-01-10 00:00:00'),(62,9,'Josefa Valdera Ramos','5','10/02/2004','Academia Iquique Bajo Molle','1','13.36','2018-01-11 00:00:00','2018-01-11 00:00:00'),(63,9,'Camil Sarai Ponce Márquez','3','25/01/2004','Vicente Potrerillos Salinas','3','13.60','2018-01-12 00:00:00','2018-01-12 00:00:00'),(64,9,'Gabriela Millaray Zúñiga Olivos','6','12/09/2004','C. Marista Curicó','7','13.85','2018-01-13 00:00:00','2018-01-13 00:00:00'),(65,9,'Carla Rios Bermudez','7','05/06/2004','OASSI','13','14.00','2018-01-14 00:00:00','2018-01-14 00:00:00'),(66,9,'Constanza Antonia Gamboa Tapia','8','02/06/2003','C. A. O’Higgins','5','14.10','2018-01-15 00:00:00','2018-01-15 00:00:00'),(67,9,'Anthar Gipoulou Pizarro','2','04/03/2004','C.D. Windsor School','14','14.30','2018-01-16 00:00:00','2018-01-16 00:00:00'),(68,9,'Carola Scheihing Ballesteros','1','12/02/2004','Escuela de Atletismo Osorno','10','-','2018-01-17 00:00:00','2018-01-17 00:00:00'),(69,10,'Valentina  Vásquez  General','4','07/06/2003','C. A. Limache','5','12.90','2018-01-18 00:00:00','2018-01-18 00:00:00'),(70,10,'Rocio Carvajal San Martin','5','09/10/2003','A. Santiago','13','13.40','2018-01-19 00:00:00','2018-01-19 00:00:00'),(71,10,'Catalina Gonzales Opazo','3','09/01/2003','C. A. Alameda Talca','7','13.60','2018-01-20 00:00:00','2018-01-20 00:00:00'),(72,10,'Antonia Diaz Lizana','6','01/05/2004','A. Nancagua','6','13.89','2018-01-21 00:00:00','2018-01-21 00:00:00'),(73,10,'Catalina Norambuena Otarola','7','13/06/2004','OASSI','13','14.00','2018-01-22 00:00:00','2018-01-22 00:00:00'),(74,10,'Antonia Suerez Escobar','8','13/04/2003','A. Santiago','13','14.13','2018-01-23 00:00:00','2018-01-23 00:00:00'),(75,10,'Constanza Millaray Chandia Ibacache','2','01/01/2004','C. D. A. Sporting Coquimbo','4','14.30','2018-01-24 00:00:00','2018-01-24 00:00:00'),(76,10,'Contanza Gomez Valdés','1','21/04/2003','CDUC','13','-','2018-01-25 00:00:00','2018-01-25 00:00:00'),(77,11,'Claudia Daniela Pimentel Cruz','4','16/01/2004','C. Chuquicamata','2','12.91','2018-01-26 00:00:00','2018-01-26 00:00:00'),(78,11,'Khaterine Hornig Angulo','5','27/07/2003','C. A. Gerardo Manzanares','10','13.41','2018-01-27 00:00:00','2018-01-27 00:00:00'),(79,11,'Javiera Gonzalez Moscoso','3','24/08/2003','A. Nancagua','6','13.68','2018-01-28 00:00:00','2018-01-28 00:00:00'),(80,11,'Tamara Lopez Vera','6','04/03/2004','A. Cauquenes','7','13.90','2018-01-29 00:00:00','2018-01-29 00:00:00'),(81,11,'Martina Gonzalez Villalobos','7','03/10/2004','A. Nancagua','6','14.02','2018-01-30 00:00:00','2018-01-30 00:00:00'),(82,11,'Rocio Barrientos Crispieri','8','03/01/2004','Academia Iquique Bajo Molle','1','14.14','2018-01-31 00:00:00','2018-01-31 00:00:00'),(83,11,'Amelia Molinos Rillón','2','29/09/2003','CDUC','13','14.30','2018-02-01 00:00:00','2018-02-01 00:00:00'),(84,11,'Esperanza Garcia Tapia','1','19/01/2003','CDUC','13','-','2018-02-02 00:00:00','2018-02-02 00:00:00'),(85,12,'Josefa Ignacia Ibañez Salinas','4','25/08/2004','A. Ingles','4','13. 80','2018-02-03 00:00:00','2018-02-03 00:00:00'),(86,12,'Sofia Torres Letelier','5','19/04/2003','A. Cauquenes','7','13.42','2018-02-04 00:00:00','2018-02-04 00:00:00'),(87,12,'Florencia Opazo Alul','3','18/03/2004','C. A. Alameda Talca','7','13.70','2018-02-05 00:00:00','2018-02-05 00:00:00'),(88,12,'Ayleen Amaya Casanova López','6','29/11/2003','C. A. O’Higgins','5','13.90','2018-02-06 00:00:00','2018-02-06 00:00:00'),(89,12,'Maria  Reyes Fernandez','7','01/05/2003','C. A. Gerardo Manzanares','10','14.04','2018-02-07 00:00:00','2018-02-07 00:00:00'),(90,12,'Carmen Gonzalez Escobar','8','18/12/2003','A. Santiago','13','14.15','2018-02-08 00:00:00','2018-02-08 00:00:00'),(91,12,'Fernanda Isidora Maldonado Fuentealba','2','21/01/2004','C. Marista Curicó','7','14.35','2018-02-09 00:00:00','2018-02-09 00:00:00'),(92,12,'Estefanía Arancibia Diaz','1','21/05/2003','YKA','13','-','2018-02-10 00:00:00','2018-02-10 00:00:00'),(93,13,'Nicole Darritchon Lama','4','03/10/2003','CDUC','13','13.13','2018-02-11 00:00:00','2018-02-11 00:00:00'),(94,13,'Natalie Paulina Sepulveda  Delbury','5','06/08/2003','C. D. San Pablo (Chiguayante)','8','13.48','2018-02-12 00:00:00','2018-02-12 00:00:00'),(95,13,'María Paz Alvarez Gassano','3','14/04/2004','Centro Atlético Formativo','15','13.70','2018-02-13 00:00:00','2018-02-13 00:00:00'),(96,13,'Mariana Sanhueza Welsh','6','02/01/2004','OASSI','13','13.90','2018-02-14 00:00:00','2018-02-14 00:00:00'),(97,13,'Francisca Rojas Jara','7','05/03/2004','A. Santiago','13','14.05','2018-02-15 00:00:00','2018-02-15 00:00:00'),(98,13,'Ignacia  Pinto  Parraguez','8','21/01/2004','A. Francés','13','14.19','2018-02-16 00:00:00','2018-02-16 00:00:00'),(99,13,'Francisca  Reyes Martinez','2','02/07/2003','A. Francés','13','14.37','2018-02-17 00:00:00','2018-02-17 00:00:00'),(100,14,'Irina Andrea Toth Mena','4','23/06/2003','A. Ingles','4','13.15','2018-02-18 00:00:00','2018-02-18 00:00:00'),(101,14,'Fernanda Saavedra Diaz','5','27/01/2004','A. Francés','13','13.52','2018-02-19 00:00:00','2018-02-19 00:00:00'),(102,14,'Maria del Carmen Guzman Karadima','3','23/04/2003','CDUC','13','13.77','2018-02-20 00:00:00','2018-02-20 00:00:00'),(103,14,'Melany Rocío Guerrero Chayle','6','09/07/2004','A. Copiapó','3','13.90','2018-02-21 00:00:00','2018-02-21 00:00:00'),(104,14,'Josefa Inostroza Maldnado','7','04/10/2003','C. Liceo de Curicó','7','14.06','2018-02-22 00:00:00','2018-02-22 00:00:00'),(105,14,'Francisca Cespedes Valenzuela','8','05/03/2003','Academia Iquique Bajo Molle','1','14.20','2018-02-23 00:00:00','2018-02-23 00:00:00'),(106,14,'Antonia Isidora Moya Ortiz','2','26/06/2004','C. Galgos Runners Linares','7','14.38','2018-02-24 00:00:00','2018-02-24 00:00:00'),(107,15,'Franchesca Espinoza Alarcon','4','05/03/2003','A. Cauquenes','7','13.19','2018-02-25 00:00:00','2018-02-25 00:00:00'),(108,15,'Josefa Antonia Valenzuela Pavez','5','19/05/2004','C. Piduco Talca','7','13.55','2018-02-26 00:00:00','2018-02-26 00:00:00'),(109,15,'Josefa Antonia Orellana Valdes','3','17/06/2003','C. Génesis','6','13.80','2018-02-27 00:00:00','2018-02-27 00:00:00'),(110,15,'Renata Isidora Álvarez Correa','6','29/05/2003','C. Marista Curicó','7','13.92','2018-02-28 00:00:00','2018-02-28 00:00:00'),(111,15,'Maria Paz Romero Manriquez','7','17/04/2003','A. Ingles','4','14.07','2018-03-01 00:00:00','2018-03-01 00:00:00'),(112,15,'Francisca Fabio Sepulveda','8','29/01/2004','A. Santiago','13','14.20','2018-03-02 00:00:00','2018-03-02 00:00:00'),(113,15,'Tania Loreto Garcés Schnettler','2','09/08/2003','C. Marista Curicó','7','14.40','2018-03-03 00:00:00','2018-03-03 00:00:00'),(114,16,'Constanza Escudero Cartes','4','13/08/2003','A. Coquimbo','4','13.30','2018-03-04 00:00:00','2018-03-04 00:00:00'),(115,16,'Magdalena Antonia Gandolfo Almonacid','5','28/02/2003','C. A. O’Higgins','5','13.57','2018-03-05 00:00:00','2018-03-05 00:00:00'),(116,16,'Fernanda Gonzalez Gomez','3','27/04/2004','C. A. Parral','7','13.80','2018-03-06 00:00:00','2018-03-06 00:00:00'),(117,16,'Piera Peña Gambetta','6','23/03/2003','A. Santiago','13','13.94','2018-03-07 00:00:00','2018-03-07 00:00:00'),(118,16,'Katalina  Ríos  Melipil','7','13/03/2003','C. A. Ñielol','9','14.10','2018-03-08 00:00:00','2018-03-08 00:00:00'),(119,16,'Ignacia Mirely Cheipul Cabrera','8','19/11/2003','C. Marista Curicó','7','14.20','2018-03-09 00:00:00','2018-03-09 00:00:00'),(120,16,'Chester Avila Salas','2','27/11/2004','A. Cauquenes','7','14.60','2018-03-10 00:00:00','2018-03-10 00:00:00'),(121,17,'Juan Pablo Nordetti Llul','4','14/01/2003','CDUC','13','10.04','2018-01-01 00:00:00','2018-01-01 00:00:00'),(122,17,'Vicente Perez Pellegrini','5','11/08/2004','A. Santiago','13','11.80','2018-01-02 00:00:00','2018-01-02 00:00:00'),(123,17,'Juan Pablo Baeza Jarpa','3','18/02/2003','A. Santiago','13','11.96','2018-01-03 00:00:00','2018-01-03 00:00:00'),(124,17,'Julian Murgia Nuñez','6','29/06/2004','OASSI','13','12.21','2018-01-04 00:00:00','2018-01-04 00:00:00'),(125,17,'Alfredo Vicari Torres','7','22/06/2004','C. A. Pacífico','5','12.37','2018-01-05 00:00:00','2018-01-05 00:00:00'),(126,17,'Gabriel Escalona Ilabaca','8','19/08/2003','OASSI','13','12.50','2018-01-06 00:00:00','2018-01-06 00:00:00'),(127,17,'Ignacio Orellana Gonzalez','2','10/06/2003','OASSI','13','12.80','2018-01-07 00:00:00','2018-01-07 00:00:00'),(128,17,'Eduardo Rodas Alfaro','1','12/07/2004','C. A. Pacífico','5','13.10','2018-01-08 00:00:00','2018-01-08 00:00:00'),(129,18,'Manuel Gonzalez Mallol','4','21/02/2003','A. Santiago','13','11.30','2018-01-09 00:00:00','2018-01-09 00:00:00'),(130,18,'David Ignacio Jarpa Venegas','5','02/07/2003','C. A. Nekuln Galgos (Chillan Viejo)','8','11.80','2018-01-10 00:00:00','2018-01-10 00:00:00'),(131,18,'Bolívar Alberto Lee Caniguan','3','13/12/2003','C. A. Nahuelbuta Angol','9','12.00','2018-01-11 00:00:00','2018-01-11 00:00:00'),(132,18,'Diego Hormazabal Torres','6','12/11/2004','A. Cauquenes','7','12.30','2018-01-12 00:00:00','2018-01-12 00:00:00'),(133,18,'Renato  Domínguez Olmos','7','30/03/2004','A. Francés','13','12.38','2018-01-13 00:00:00','2018-01-13 00:00:00'),(134,18,'Fabian Ferrufino Robledo','8','22/01/2004','A. Copiapó','3','12.50','2018-01-14 00:00:00','2018-01-14 00:00:00'),(135,18,'Ricardo Fenandez Arce','2','06/10/2003','C. de Atletismo Juan Silva de Lota','8','12.80','2018-01-15 00:00:00','2018-01-15 00:00:00'),(136,18,'Joaquin Vicente Lopehandia Zepeda','1','04/12/2004','A. Ingles','4','13.20','2018-01-16 00:00:00','2018-01-16 00:00:00'),(137,19,'Pedro Reyes Parada','4','14/01/2003','A. Santiago','13','11.45','2018-01-17 00:00:00','2018-01-17 00:00:00'),(138,19,'Antonio Santana Muñoz','5','19/01/2003','A. de A. Castro','10','11.90','2018-01-18 00:00:00','2018-01-18 00:00:00'),(139,19,'Gabriel Muñoz Squella','3','28/03/2003','A. Santiago','13','12.00','2018-01-19 00:00:00','2018-01-19 00:00:00'),(140,19,'Benjamin Felipe Miranda Toledo','6','06/07/2004','C. Génesis','6','12.30','2018-01-20 00:00:00','2018-01-20 00:00:00'),(141,19,'Cristobal Alejandro Salazar Alarcon','7','19/03/2003','C. Génesis','6','12.40','2018-01-21 00:00:00','2018-01-21 00:00:00'),(142,19,'Luciano Aros Acuña','8','08/03/2003','C. D. Bernardo Felmer','14','12.60','2018-01-22 00:00:00','2018-01-22 00:00:00'),(143,19,'Pedro Krebs Saez','2','27/09/2003','A. San Ignacio','13','12.85','2018-01-23 00:00:00','2018-01-23 00:00:00'),(144,19,'Nicanor Millan Viejo','1','08/07/2004','C.D. Windsor School','14','15.23','2018-01-24 00:00:00','2018-01-24 00:00:00'),(145,20,'Luis Ferney Riasco Riasco','4','10/09/2003','C. Chuquicamata','2','11.50','2018-01-25 00:00:00','2018-01-25 00:00:00'),(146,20,'Pablo Moya Guztamente','5','25/01/2003','A. Cauquenes','7','11.90','2018-01-26 00:00:00','2018-01-26 00:00:00'),(147,20,'Ignacio Aguayo Cifuentes','3','14/03/2003','C. A. Phoenix','9','12.03','2018-01-27 00:00:00','2018-01-27 00:00:00'),(148,20,'Carlos Ibarra Allende','6','30/12/2004','C. Liceo de Curicó','7','12.30','2018-01-28 00:00:00','2018-01-28 00:00:00'),(149,20,'Bastian Canales Valenzuela','7','23/06/2004','C. A. Alameda Talca','7','12.40','2018-01-29 00:00:00','2018-01-29 00:00:00'),(150,20,'Agustin Urizar Arenas','8','01/11/2004','A. San Ignacio','13','12.60','2018-01-30 00:00:00','2018-01-30 00:00:00'),(151,20,'Michel Orellana Gonzalez','2','10/06/2003','OASSI','13','12.90','2018-01-31 00:00:00','2018-01-31 00:00:00'),(152,20,'Andrés Refusta Fuentes','1','19/05/2004','CDUC','13','-','2018-02-01 00:00:00','2018-02-01 00:00:00'),(153,21,'Rodrigo Cerda','4','20/03/2003','C. D. Pilauco','10','11.50','2018-02-02 00:00:00','2018-02-02 00:00:00'),(154,21,'Francisco Javier Chiuminatto Muñoz','5','28/12/2003','C. Marista Curicó','7','11.90','2018-02-03 00:00:00','2018-02-03 00:00:00'),(155,21,'Benjamín Emilio Villa Castro','3','03/03/2004','C. A. Nahuelbuta Angol','9','12.05','2018-02-04 00:00:00','2018-02-04 00:00:00'),(156,21,'Luis Hernandez Gonzalez','6','04/06/2003','C. Liceo de Curicó','7','12.30','2018-02-05 00:00:00','2018-02-05 00:00:00'),(157,21,'Lucas  Díaz  Hernandez','7','24/12/2003','A. Francés','13','12.41','2018-02-06 00:00:00','2018-02-06 00:00:00'),(158,21,'Nahel Silva Fuentes','8','28/09/2003','OASSI','13','12.60','2018-02-07 00:00:00','2018-02-07 00:00:00'),(159,21,'Felipe Sepulveda Cordero','2','23/10/2004','U. de Tarapaca','15','12.90','2018-02-08 00:00:00','2018-02-08 00:00:00'),(160,21,'Clemente Ruiz Bianchini','1','01/09/2004','CDUC','13','-','2018-02-09 00:00:00','2018-02-09 00:00:00'),(161,22,'Matias Francisco Salgado Meneses','4','30/04/2004','C. Nilda Rojas','2','11.60','2018-02-10 00:00:00','2018-02-10 00:00:00'),(162,22,'Agustin Valdes Zegers','5','09/07/2003','A. Santiago','13','11.91','2018-02-11 00:00:00','2018-02-11 00:00:00'),(163,22,'Paulo Noemi Zuleta','3','04/04/2003','C. A. Pacífico','5','12.05','2018-02-12 00:00:00','2018-02-12 00:00:00'),(164,22,'Damian Godoy Poblete','6','04/03/2004','A. Nancagua','6','12.33','2018-02-13 00:00:00','2018-02-13 00:00:00'),(165,22,'Jose Vicente Peña Alvarado','7','17/11/2003','C. Génesis','6','12.45','2018-02-14 00:00:00','2018-02-14 00:00:00'),(166,22,'Salvador La Corte Castro','8','05/06/2003','A. San Ignacio','13','12.69','2018-02-15 00:00:00','2018-02-15 00:00:00'),(167,22,'Gabriel Fuentes Montes','2','15/11/2004','A. San Ignacio','13','12.93','2018-02-16 00:00:00','2018-02-16 00:00:00'),(168,22,'Martín Steffens','1','14/07/2004','CDUC','13','-','2018-02-17 00:00:00','2018-02-17 00:00:00'),(169,23,'Bruno Rickemberg Benedetti','4','29/04/2003','A. Santiago','13','11.60','2018-02-18 00:00:00','2018-02-18 00:00:00'),(170,23,'Alexis Macaya Arellano','5','29/06/2003','A. Cauquenes','7','11.92','2018-02-19 00:00:00','2018-02-19 00:00:00'),(171,23,'Benjamin Rojas krause','3','04/04/2004','C. A. Puerto Sur','10','12.06','2018-02-20 00:00:00','2018-02-20 00:00:00'),(172,23,'Benjamin Alfaro Escobar','6','22/04/2004','A. Nancagua','6','12.36','2018-02-21 00:00:00','2018-02-21 00:00:00'),(173,23,'Ignacio Campos Del Saz','7','21/03/2004','C. A. Parral','7','12.45','2018-02-22 00:00:00','2018-02-22 00:00:00'),(174,23,'Fabrizio Arias Terrone','8','16/06/2003','A. San Ignacio','13','12.78','2018-02-23 00:00:00','2018-02-23 00:00:00'),(175,23,'Gabriel Abid Gallardo Marin','2','22/01/2004','A. Coquimbo','4','13.00','2018-02-24 00:00:00','2018-02-24 00:00:00'),(176,23,'Eduardo Alvarez Mohr','1','12/07/2004','Escuela de Atletismo Osorno','10','-','2018-02-25 00:00:00','2018-02-25 00:00:00'),(177,24,'Joaquín Alberto Miño Farías','4','15/04/2003','C. Marista Curicó','7','11.60','2018-02-26 00:00:00','2018-02-26 00:00:00'),(178,24,'Joaquín Alberto Pérez Guajardo','5','04/01/2004','C. Marista Curicó','7','11.95','2018-02-27 00:00:00','2018-02-27 00:00:00'),(179,24,'Yasser Ismail Llanquinao','3','06/12/2003','C. A. Phoenix','9','12.20','2018-02-28 00:00:00','2018-02-28 00:00:00'),(180,24,'Martin  Escaida Sandoval','6','05/09/2004','A. Francés','13','12.37','2018-03-01 00:00:00','2018-03-01 00:00:00'),(181,24,'Max Leonardo Davila Delgado','7','29/05/2004','C. A. Tamarugo','1','12.50','2018-03-02 00:00:00','2018-03-02 00:00:00'),(182,24,'Juan Contreras Contreras','8','15/04/2004','C. D. Bernardo Felmer','14','12.80','2018-03-03 00:00:00','2018-03-03 00:00:00'),(183,24,'Juan Torres Torres','2','07/07/2004','A. Cauquenes','7','13.09','2018-03-04 00:00:00','2018-03-04 00:00:00'),(184,25,'Catalina Fernandez Barrientos','','06/05/2004','C. A. Coyhaique','11','05.45.00','2018-05-26 06:21:59','2018-05-26 06:21:59'),(185,25,'Camila  Smith Canovas','','28/05/2004','C. A. Phoenix','9','05.50.00','2018-05-26 06:22:19','2018-05-26 06:22:19'),(186,25,'Yarleth Toledo Segovia','','10/05/2003','C. A. Puerto Sur','10','05.55.00','2018-05-26 06:22:41','2018-05-26 06:22:41'),(187,25,'Dafne  Sandoval   Carrasco','','20/12/2003','C. de Deportes Saavedra','9','06.08.00','2018-05-26 06:23:09','2018-05-26 06:23:09'),(188,25,'Valentina Paz López Schalard','','30/06/2004','C. Chuquicamata','2','06.39.90','2018-05-26 06:23:31','2018-05-26 06:23:31'),(189,25,'Paula Belen Aracena Alvares','','04/08/2004','A. Coquimbo','4','06.40.00','2018-05-26 06:24:07','2018-05-26 06:24:07'),(190,25,'Sofia Belen Garcia Villaloboz','','16/10/2003','C. A. Alameda Talca','7','08.25.00','2018-05-26 06:24:27','2018-05-26 06:24:27'),(191,25,'Solange Aylin Varas  Jiménez','','17/04/2003','C. Escuela Infantil de Atletismo Llay Llay','5','','2018-05-26 06:24:49','2018-05-26 06:24:49'),(192,26,'Samuel Millao Diaz','','25/03/2003','C. de Atletismo Punta Arenas','12','04.52.00','2018-05-26 06:25:59','2018-05-26 06:25:59'),(193,26,'Brayan Antonio  Jara  Jara','','02/01/2003','C. A. de Los Angeles','8','04.55.00','2018-05-26 06:26:21','2018-05-26 06:26:21'),(194,26,'Miguel Ignacio Acuña Mellado','','11/01/2003','Cadecu Athletic','8','04.58.00','2018-05-26 06:26:45','2018-05-26 06:26:45'),(195,26,'Jose Ignacio Grau Vargas','','04/02/2003','C. A. Hector Neira','10','04.59.00','2018-05-26 06:27:06','2018-05-26 06:27:06'),(196,26,'Domingo Court Alicera','','03/10/2003','A. Francés','13','04.59.00','2018-05-26 06:27:30','2018-05-26 06:27:30'),(197,26,'Christian  Urrutia Alarcón ','','03/10/2003','A. Francés','13','04.59.00','2018-05-26 06:27:58','2018-05-26 06:27:58'),(198,26,'Christian  Urrutia Alarcón ','','18/02/2003','A. Francés','13','05.00.00','2018-05-26 06:28:18','2018-05-26 06:28:18'),(199,26,'Ignacio  Valdez Aravena','','29/08/2003','A. de A. Castro','10','05.02.00','2018-05-26 06:28:38','2018-05-26 06:28:38'),(200,26,'Gonzalo Morales Godoy','','21/02/2004','C. A. Puerto Sur','10','05.12.00','2018-05-26 06:29:02','2018-05-26 06:29:02'),(201,26,'Guillermo Nicolás Sarabia Ledezma','','01/04/2003','C. Chuquicamata','2','05.12.82','2018-05-26 06:29:31','2018-05-26 06:29:31'),(202,26,'Cristobal Jimenez Pasten','','27/05/2003','C. D. S. C. San Antonio','4','06.10.00','2018-05-26 06:29:52','2018-05-26 06:29:52'),(203,26,'Javier Segura Dos Santos','','13/09/2003','C. A. Alameda Talca','7','06.30.00','2018-05-26 06:30:13','2018-05-26 06:30:13'),(204,26,'Lukas Alfredo Castro Mollo','','18/11/2003','C. A. Tamarugo','1','','2018-05-26 06:30:34','2018-05-26 06:30:34'),(205,26,'Nicolas Andres Dinamarca Pinto','','19/01/2004','C. A. Tamarugo','1','','2018-05-26 06:30:54','2018-05-26 06:30:54'),(206,27,'Joaquín Alberto Miño Farías','4','15/04/2003','C. Marista Curicó','7','14.00','2018-01-01 00:00:00','2018-01-01 00:00:00'),(207,27,'Pedro  Morales Delano','5','21/03/2004','C. A. Pacífico','5','14.77','2018-01-02 00:00:00','2018-01-02 00:00:00'),(208,27,'Lucas Palacios Undurraga','3','31/03/2003','Manquehue','13','14.80','2018-01-03 00:00:00','2018-01-03 00:00:00'),(209,27,'Diego Gonzalez Martinez','6','29/05/2003','C. A. Gerardo Manzanares','10','15.08','2018-01-04 00:00:00','2018-01-04 00:00:00'),(210,27,'Joaquin Mondaca Fellenberg','7','07/06/2003','A. San Ignacio','13','15.38','2018-01-05 00:00:00','2018-01-05 00:00:00'),(211,27,'J. Manuel Espinosa Valenzuela','8','08/10/2003','A. San Ignacio','13','15.85','2018-01-06 00:00:00','2018-01-06 00:00:00'),(212,27,'Eduardo Rodas Alfaro','2','12/07/2004','C. A. Pacífico','5','16.30','2018-01-07 00:00:00','2018-01-07 00:00:00'),(213,27,'Bastian Canales Valenzuela','1','23/06/2004','C. A. Alameda Talca','7','17.00','2018-01-08 00:00:00','2018-01-08 00:00:00'),(214,28,'Benjamin Alonso Gutierrez Nuñez','4','05/07/2003','C. Génesis','6','14.40','2018-01-09 00:00:00','2018-01-09 00:00:00'),(215,28,'Pedro Irarrazaval Valdes','5','26/02/2003','A. Santiago','13','14.79','2018-01-10 00:00:00','2018-01-10 00:00:00'),(216,28,'Sebastían Sotomayor Mestre','3','05/07/2004','Manquehue','13','14.80','2018-01-11 00:00:00','2018-01-11 00:00:00'),(217,28,'Matás Gonzalez Romero','6','26/06/2003','Manquehue','13','15.10','2018-01-12 00:00:00','2018-01-12 00:00:00'),(218,28,'Joel Vallejos Alvarado','7','11/01/2004','A. Copiapó','3','15.50','2018-01-13 00:00:00','2018-01-13 00:00:00'),(219,28,'Cristoper Colombi Yañez','8','10/07/2003','A. Cauquenes','7','15.92','2018-01-14 00:00:00','2018-01-14 00:00:00'),(220,28,'Martin Olavarria Jara','2','26/11/2003','C. A. Puerto Sur','10','16.58','2018-01-15 00:00:00','2018-01-15 00:00:00'),(221,28,'Eduardo Alvarez Mohr','1','12/07/2004','Escuela de Atletismo Osorno','10','-','2018-01-16 00:00:00','2018-01-16 00:00:00'),(222,29,'Mauricio Irribarren Poyanopulos','4','13/01/2004','Centro Atlético Formativo','15','14.50','2018-01-17 00:00:00','2018-01-17 00:00:00'),(223,29,'Alexander Vega Stamm','5','16/03/2003','CDUC','13','14.80','2018-01-18 00:00:00','2018-01-18 00:00:00'),(224,29,'Cristobal Bernales Magnere','3','13/10/2004','A. Santiago','13','15.00','2018-01-19 00:00:00','2018-01-19 00:00:00'),(225,29,'Pedro Costa Aguirre','6','20/05/2003','C. A. Pacífico','5','15.19','2018-01-20 00:00:00','2018-01-20 00:00:00'),(226,29,'Santiago Perez Pellegrini','7','23/02/2003','A. Santiago','13','15.60','2018-01-21 00:00:00','2018-01-21 00:00:00'),(227,29,'Maximiliano Rosmanich Bravo','8','28/05/2003','A. Santiago','13','16.00','2018-01-22 00:00:00','2018-01-22 00:00:00'),(228,29,'Matias Adrian Tapia Lucero','2','16/05/2004','C. A. Nacional Iquique','1','16.90','2018-01-23 00:00:00','2018-01-23 00:00:00'),(229,29,'Diego Ibacache Basaez','1','17/06/2003','C. A. Limache','5','-','2018-01-24 00:00:00','2018-01-24 00:00:00'),(230,30,'Martin Delgado Gonzalez','-','15/07/2004','C. A. Gerardo Manzanares','10','-','2018-01-01 00:00:00','2018-01-01 00:00:00'),(231,30,'Benjamin Alvarado Olmi','-','01/04/2003','C. A. Puerto Sur','10','-','2018-01-02 00:00:00','2018-01-02 00:00:00'),(232,30,'Manuel Vasquez','-','22/09/2004','C. D. Pilauco','10','-','2018-01-03 00:00:00','2018-01-03 00:00:00'),(233,30,'Santiago Salinas Cabrera','-','04/04/2003','A. Santiago','13','-','2018-01-04 00:00:00','2018-01-04 00:00:00'),(234,30,'Joaquín Cristóbal Galleguillos Puebla','-','08/02/2003','C. Manquemávida de Santa Cruz','6','-','2018-01-05 00:00:00','2018-01-05 00:00:00'),(235,30,'Benjamin Gonzalez Olguin','-','06/04/2003','A. Nancagua','6','-','2018-01-06 00:00:00','2018-01-06 00:00:00'),(236,30,'Eduardo Camp Summerset','-','04/09/2003','Centro Atlético Formativo','15','-','2018-01-07 00:00:00','2018-01-07 00:00:00'),(237,30,'Mauricio Irribarren Poyanopulos','-','13/01/2004','Centro Atlético Formativo','15','-','2018-01-08 00:00:00','2018-01-08 00:00:00'),(238,30,'Pablo Rojas Muñoz','-','01/07/2003','C. A. Alameda Talca','7','-','2018-01-09 00:00:00','2018-01-09 00:00:00'),(239,31,'Martin Delgado Gonzalez','-','15/07/2004','C. A. Gerardo Manzanares','10','-','2018-01-01 00:00:00','2018-01-01 00:00:00'),(240,31,'Benjamin Alvarado Olmi','-','01/04/2003','C. A. Puerto Sur','10','-','2018-01-02 00:00:00','2018-01-02 00:00:00'),(241,31,'Manuel Vasquez','-','22/09/2004','C. D. Pilauco','10','-','2018-01-03 00:00:00','2018-01-03 00:00:00'),(242,31,'Santiago Salinas Cabrera','-','04/04/2003','A. Santiago','13','-','2018-01-04 00:00:00','2018-01-04 00:00:00'),(243,31,'Joaquín Cristóbal Galleguillos Puebla','-','08/02/2003','C. Manquemávida de Santa Cruz','6','-','2018-01-05 00:00:00','2018-01-05 00:00:00'),(244,31,'Benjamin Gonzalez Olguin','-','06/04/2003','A. Nancagua','6','-','2018-01-06 00:00:00','2018-01-06 00:00:00'),(245,31,'Eduardo Camp Summerset','-','04/09/2003','Centro Atlético Formativo','15','-','2018-01-07 00:00:00','2018-01-07 00:00:00'),(246,31,'Mauricio Irribarren Poyanopulos','-','13/01/2004','Centro Atlético Formativo','15','-','2018-01-08 00:00:00','2018-01-08 00:00:00'),(247,31,'Pablo Rojas Muñoz','-','01/07/2003','C. A. Alameda Talca','7','-','2018-01-09 00:00:00','2018-01-09 00:00:00'),(248,32,'Martin Delgado Gonzalez','-','15/07/2004','C. A. Gerardo Manzanares','10','-','2018-01-01 00:00:00','2018-01-01 00:00:00'),(249,32,'Benjamin Alvarado Olmi','-','01/04/2003','C. A. Puerto Sur','10','-','2018-01-02 00:00:00','2018-01-02 00:00:00'),(250,32,'Manuel Vasquez','-','22/09/2004','C. D. Pilauco','10','-','2018-01-03 00:00:00','2018-01-03 00:00:00'),(251,32,'Santiago Salinas Cabrera','-','04/04/2003','A. Santiago','13','-','2018-01-04 00:00:00','2018-01-04 00:00:00'),(252,32,'Joaquín Cristóbal Galleguillos Puebla','-','08/02/2003','C. Manquemávida de Santa Cruz','6','-','2018-01-05 00:00:00','2018-01-05 00:00:00'),(253,32,'Benjamin Gonzalez Olguin','-','06/04/2003','A. Nancagua','6','-','2018-01-06 00:00:00','2018-01-06 00:00:00'),(254,32,'Eduardo Camp Summerset','-','04/09/2003','Centro Atlético Formativo','15','-','2018-01-07 00:00:00','2018-01-07 00:00:00'),(255,32,'Mauricio Irribarren Poyanopulos','-','13/01/2004','Centro Atlético Formativo','15','-','2018-01-08 00:00:00','2018-01-08 00:00:00'),(256,32,'Pablo Rojas Muñoz','-','01/07/2003','C. A. Alameda Talca','7','-','2018-01-09 00:00:00','2018-01-09 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throw2s`
--

LOCK TABLES `throw2s` WRITE;
/*!40000 ALTER TABLE `throw2s` DISABLE KEYS */;
INSERT INTO `throw2s` VALUES (2,1,'Catalina Obando Nahuelpan','8/2/2004','C. D. Bernardo Felmer','14','','','','','','','','N/M','','2018-05-26 14:02:24','2018-05-26 19:44:29',NULL),(3,1,'Yadhira Marisol Velasquez Anaya','2/14/2003','C. A. Nacional Iquique','1','','','','','','','','DNS','','2018-05-26 14:03:08','2018-05-26 19:44:22',NULL),(4,1,'Josefina Martina Calistro Carcamo','7/27/2004','C. A. Hector Neira','10','','','','','','','','DNS','','2018-05-26 14:03:31','2018-05-26 19:44:24',NULL),(5,1,'Nayeli Antuane Cucho Solano','2/23/2003','C. Chuquicamata','2','','','','','','','','N/M','','2018-05-26 14:03:57','2018-05-26 19:44:30',NULL),(6,1,'Danitza  Haro Chacon','8/6/2003','A. de A. Castro','10','','','','','','','','N/M','','2018-05-26 14:04:41','2018-05-26 19:44:32',NULL),(7,1,'Barbara Aravena Friz','12/11/2004','A. Cauquenes','7','31.77','35.06','34.34','3','3.83','30.18','32.30','35.06','6','2018-05-26 14:05:09','2018-05-26 15:51:03',NULL),(8,1,'Macarena Jara De Los Reyes','2/25/2003','Ulagos Pto.Montt','10','','','','','','','','DNS','','2018-05-26 14:05:44','2018-05-26 19:44:26',NULL),(9,1,'Sofia Elena Diaz Fuentes','5/28/2003','C. A. Nueva Generación (Laja)','8','35.33','X','X','4','X','X','X','35.33','5','2018-05-26 14:06:37','2018-05-26 15:51:57',NULL),(10,1,'Sara Antonia  Vera Vera','5/19/2004','C. A. San Nicolas','8','35.49','M','33.70','5','35.47','32.51','30.49','35.49','4','2018-05-26 14:07:08','2018-05-26 15:53:18',NULL),(11,1,'Almendra Jofré González','4/24/2004','A. Copiapó','3','41.40','X','X','7','38.90','43.02','X','43.02','3','2018-05-26 14:07:31','2018-05-26 15:54:14',NULL),(12,1,'María José Nova Arteaga','7/22/2003','C. D. Colegio Padre Hurtado de Chillan','8','X','X','39.08','6','42.54','44.08','43.25','44.08','2','2018-05-26 14:08:07','2018-05-26 15:54:59',NULL),(13,1,'Valentina Claveria Sanchez','2/20/2003','C. D. Colegio Padre Hurtado de Chillan','8','54.05','56.95','56.80','8','54.70','55.86','57.58','57.58','1','2018-05-26 14:08:51','2018-05-26 15:55:43',NULL),(43,2,'Pablo Rojas Muñoz','2003-07-01','C. A. Alameda Talca','7','9.95','10.62','10.37',NULL,NULL,NULL,NULL,'10.62 (523)','1','2018-05-26 18:26:29','2018-05-27 13:24:16',NULL),(44,2,'Adan Puel','2003-06-07','A. Ñielol','9','9.50','10.32','10.45',NULL,NULL,NULL,NULL,'10.45 (513)','2','2018-05-26 18:26:29','2018-05-27 13:24:34',NULL),(45,2,'Eduardo Camp Summerset','2003-09-04','Centro Atlético Formativo','15','10.42','9.57','X',NULL,NULL,NULL,NULL,'10.42 (511)','3','2018-05-26 18:26:29','2018-05-27 13:25:15',NULL),(46,2,'Santiago Salinas Cabrera','2003-04-04','A. Santiago','13','9.92','8.82','9.24',NULL,NULL,NULL,NULL,'9.92 (481)','4','2018-05-26 18:26:29','2018-05-27 13:25:26',NULL),(47,2,'Manuel Vasquez ','2004-09-22','C. D. Pilauco','10','9.46','9.17','9.58',NULL,NULL,NULL,NULL,'9.58 (460)','5','2018-05-26 18:26:29','2018-05-27 13:25:41',NULL),(48,2,'Benjamin Irribarren Poyanopulos','2004-01-13','Centro Atlético Formativo','15','8.95','8.28','9.11',NULL,NULL,NULL,NULL,'9.11 (432)','6','2018-05-26 18:26:29','2018-05-27 13:25:55',NULL),(49,2,'Benjamin Gonzalez Olguin','2003-04-06','A. Nancagua','6','8.32','8.94','8.57',NULL,NULL,NULL,NULL,'8.94 (422)','7','2018-05-26 18:26:29','2018-05-27 13:26:18',NULL),(50,2,'Benjamin Alvarado Olmi','2003-04-01','C. A. Puerto Sur','10','6.18','5.90','5.96',NULL,NULL,NULL,NULL,'6.18 (259)','8','2018-05-26 18:26:29','2018-05-27 13:26:25',NULL),(51,2,'Joaquín Cristóbal Galleguillos Puebla','2003-02-08','C. Manquemávida de Santa Cruz','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 18:26:29','2018-05-27 02:05:39',NULL),(52,4,'Agustina Cruz','2004-07-15','CDUC','13','9.53','9.54','8.97',NULL,NULL,NULL,NULL,'9.54 (499)','1','2018-05-26 18:37:36','2018-05-27 13:22:25',NULL),(53,4,'Maria Squella Contardo','2003-04-14','CDUC','13','7.25','7.41','7.79',NULL,NULL,NULL,NULL,'7.79 (386)','2','2018-05-26 18:37:36','2018-05-27 13:22:09',NULL),(54,4,'Cecilia Millaray','2003-01-03','A. Ingles','4','7.00','6.80','7.21',NULL,NULL,NULL,NULL,'7.21 (348)','3','2018-05-26 18:37:36','2018-05-27 13:21:57',NULL),(55,4,'Cristianne Neumann ','2003-09-05','C. D. Pilauco','10','7.18','7.02','7.12',NULL,NULL,NULL,NULL,'7.18 (347)','4','2018-05-26 18:37:36','2018-05-27 13:21:44',NULL),(56,4,'Aylimm Muñoz Diaz','2004-08-16','A. de A. Castro','10','7.15','7.16','6.98',NULL,NULL,NULL,NULL,'7.16 (345)','5','2018-05-26 18:37:36','2018-05-27 13:21:25',NULL),(57,4,'Laura Bustamante González','2004-09-24','Escuela de Atletismo Osorno','10','6.40','6.59','6.55',NULL,NULL,NULL,NULL,'6.59 (309)','6','2018-05-26 18:37:36','2018-05-27 13:21:06',NULL),(58,4,'Emilia Alejandra Cabrera Valenzuela','2003-09-06','C. Manquemávida de Santa Cruz','6','3.99','4.63','5.31',NULL,NULL,NULL,NULL,'5.31 (228)','7','2018-05-26 18:37:36','2018-05-27 13:20:52',NULL),(59,4,'Martina Delgado','2003-03-31','G. Manzanales','10','5.23','4.44','4.46',NULL,NULL,NULL,NULL,'5.23 (223)','8','2018-05-26 18:37:36','2018-05-27 13:20:42',NULL),(60,4,'Giza Dayanee Aguayo Vasquez','2004-04-13','C. Génesis','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 18:37:36','2018-05-26 18:40:18',NULL),(61,4,'Orión Renata Carrasco Carrillo','2003-08-23','C. Manquemávida de Santa Cruz','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 18:37:36','2018-05-26 18:40:23',NULL),(62,4,'Valentina Duque Muñoz','2003-09-09','C. Liceo de Curicó','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 18:37:36','2018-05-26 18:40:27',NULL),(63,5,'Cristian Ortiz Yáñez','2003-12-16','A. Copiapó','3','53.76','X','54.88','8.0','56.95','55.02','58.65','58.65','1','2018-05-26 18:56:26','2018-05-26 18:57:48',NULL),(64,5,'Gonzalo Alonso Arroyo Chavez','2003-05-08','C. A. Nueva Generación (Laja)','8','51.39','47.54','49.13','7.0','X','X','46.87','51.39','2','2018-05-26 18:56:26','2018-05-26 19:53:48',NULL),(65,5,'Alvaro Paz Castillo','2003-06-10','C. A. Phoenix','9','40.75','X','45.55','5.0','48.69','49.08','X','49.08','3','2018-05-26 18:56:26','2018-05-26 18:57:38',NULL),(66,5,'Renato Morales Fuentes','2003-11-12','A. Copiapó','3','45.36','45.82','X','6.0','46.58','X','47.29','47.29','4','2018-05-26 18:56:26','2018-05-26 18:57:34',NULL),(67,5,'Salomon Manqui Calfuleo','2003-05-15','C. D. Bernardo Felmer','14','41.99','41.73','X','4.0','40.03','39.17','36.33','41.99','5','2018-05-26 18:56:26','2018-05-26 18:57:30',NULL),(68,5,'Juan Jose  Eriza Acuña','2004-03-01','C. A. San Nicolas','8','40.01','38.52','X','3.0','X','X','X','40.01','6','2018-05-26 18:56:26','2018-05-26 18:57:28',NULL),(69,5,'Daniel Antonio Cea Castro','2004-01-30','C. A. Nueva Generación (Laja)','8','37.65','36.14',' ','2.0','X',NULL,NULL,'37.65','7','2018-05-26 18:56:26','2018-05-26 18:57:24',NULL),(70,5,'Italo Savalli Saldías','2003-08-18','A. Copiapó','3','37.16','X','X','1.0','X','X','X','37.16','8','2018-05-26 18:56:26','2018-05-26 18:57:21',NULL),(71,5,'Sergio Bravo Aguilera','2003-09-13','C. D. Colegio Padre Hurtado de Chillan','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 18:56:26','2018-05-26 19:54:47',NULL),(72,5,'Vicente Alvarado Ramos','2004-11-22','C. Liceo de Curicó','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 18:56:26','2018-05-26 19:54:52',NULL),(73,5,'Sergio Zurita Alarcón','2003-10-21','C. San Ambrosio Linares','7','M','M','X',NULL,NULL,NULL,NULL,'N/M','98','2018-05-26 18:56:26','2018-05-26 19:54:41',NULL),(74,6,'Andrés Palma Valenzuela','2003-01-03','CDUC','13.0','45.03','45.99','45.94','7','48.04','47.20','54.15','54.15','1','2018-05-26 19:28:29','2018-05-26 19:29:53',NULL),(75,6,'Juan Francisco Alamos Ovalle','2003-08-22','CDUC','13.0','49.60','51.74','X','8','47.57','X','46.85','51.74','2','2018-05-26 19:28:29','2018-05-26 19:29:51',NULL),(76,6,'Renato Bartet Zulueta','2003-06-11','A. Santiago','13.0','42.56','38.60','41.30','5','42.19','45.75','45.40','45.75','3','2018-05-26 19:28:29','2018-05-26 19:29:47',NULL),(77,6,'Nicolas Petersen Diaz','2003-05-20','U. de Tarapaca','15.0','38.72','40.88','44.62','6','39.20','40.18','44.14','44.62','4','2018-05-26 19:28:29','2018-05-26 19:29:42',NULL),(78,6,'Eduardo Minder Aguila','2003-06-30','CDUC','13.0','X','42.04','37.94','4','39.79','37.88','37.63','42.04','5','2018-05-26 19:28:29','2018-05-26 19:29:32',NULL),(79,6,'Elias Valdez Diaz','2004-09-02','A. Nancagua','6.0','38.95','36.94','39.26','3','38.00','36.72','39.18','39.26','6','2018-05-26 19:28:29','2018-05-26 19:29:29',NULL),(80,6,'Manuel Espinosa Valenzuela','2003-10-08','A. San Ignacio','13.0','36.20','39.24','38.31','2','37.71','37.50','M','39.24','7','2018-05-26 19:28:29','2018-05-26 19:29:25',NULL),(81,6,'Joaquin Irureta Rios','2003-08-17','A. San Ignacio','13.0','X','M','37.76','1','M','36.48','X','37.76','8','2018-05-26 19:28:29','2018-05-26 19:29:20',NULL),(82,6,'Jorge Uribe Gonzalez','2004-04-16','CDUC','13.0','X','M','37.75',NULL,NULL,NULL,NULL,'37.75','9','2018-05-26 19:28:29','2018-05-26 19:28:49',NULL),(83,6,'Alberto Andres Eriza Acuña','2004-03-01','C. A. San Nicolas','8.0','X','X','37.64',NULL,NULL,NULL,NULL,'37.64','10','2018-05-26 19:28:29','2018-05-27 02:16:06',NULL),(84,6,'José Portaluppi Osiac','2003-06-10','CDUC','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:48',NULL),(85,6,'Sergio Zurita Alarcón','2003-10-21','C. San Ambrosio Linares','7.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:52',NULL),(86,6,'Vicente Alvarado Ramos','2004-11-22','C. Liceo de Curicó','7.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:50',NULL),(87,6,'Martin Gallardo Diaz','2004-09-14','A. Santiago','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:45',NULL),(88,6,'Maximiliano Guichaquelen Rivera','2004-03-21','A. de A. Castro','10.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:43',NULL),(89,6,'Sergio Bravo Aguilera','2003-09-13','C. D. Colegio Padre Hurtado de Chillan','8.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:41',NULL),(90,6,'Jose Bravo Veliz','2003-07-30','C. A. Alameda Talca','7.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:38',NULL),(91,6,'Benjamin Mesa Ramirez','2004-01-31','A. San Ignacio','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 19:28:29','2018-05-27 02:16:36',NULL),(92,6,'Blas Gallo Fernandez','2004-05-20','A. San Ignacio','13.0','X','X','X',NULL,NULL,NULL,NULL,'N/M','95','2018-05-26 19:28:29','2018-05-27 02:15:55',NULL),(93,6,'Matias Suazo Navarro','2004-10-21','A. Cauquenes','7.0','X','X','X',NULL,NULL,NULL,NULL,'N/M','95','2018-05-26 19:28:29','2018-05-27 02:16:03',NULL),(94,7,'Ignacio Anibal  Toledo  Cifuentes','1999-01-23','C. A. Nahuen (Concepción)','8','53.43','54.84','54.20',NULL,'X','48.42','51.22','54.84','1','2018-05-26 19:32:28','2018-05-26 19:32:41',NULL),(95,7,'Alfredo Andres Arriagada Otaiza','2000-01-02','C. A. Nacional Iquique','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 19:32:28','2018-05-26 19:32:44',NULL),(96,8,'Antonia Gonzalez Carcavilla (B)','2003-05-12','CDUC','13','10.60','10.39','11.35','8','x','x','10.24','11.35','1','2018-05-26 20:35:18','2018-05-26 21:52:33',NULL),(97,8,'Olivia Pinto Garcia (B)','2003-09-27','CDUC','13','8.32','x','7.93',NULL,NULL,NULL,NULL,'8.32',NULL,'2018-05-26 20:35:18','2018-05-26 21:58:32',NULL),(98,8,'Javiera Constanza Davila Godoy (B)','2004-06-10','C. A. Tamarugo','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 21:35:42',NULL),(99,8,'Victoria Pardo Antillanca (B)','2004-11-24','C. D. Bernardo Felmer','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 20:35:18','2018-05-26 21:35:51',NULL),(100,8,'Rocio Santos Gallardo (B)','2004-09-08','C. A. Alameda Talca','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 21:36:05',NULL),(101,8,'Pía Fernanda Milla Zamorano (B)','2003-08-20','C. A. Huasco','3','x','8.32','7.85',NULL,NULL,NULL,NULL,'8.32',NULL,'2018-05-26 20:35:18','2018-05-26 21:59:08',NULL),(102,8,'Catalina Victoria Quezada  Venegas (B)','2004-03-27','C. A. Huasco','3','x','8.43','x',NULL,NULL,NULL,NULL,'8.43',NULL,'2018-05-26 20:35:18','2018-05-26 21:59:30',NULL),(103,8,'Isidora Modinger Rojas (B)','2003-03-26','C.D. Windsor School','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 21:36:47',NULL),(104,8,'Catalina Gallegos Bahamonde (B)','2004-10-19','A. de A. Castro','10','x','7.82','x',NULL,NULL,NULL,NULL,'7.82',NULL,'2018-05-26 20:35:18','2018-05-26 21:55:01',NULL),(105,8,'Catalina Obando Nahuelpan (B)','2004-08-02','C. D. Bernardo Felmer','14','7.84','8.12','x',NULL,NULL,NULL,NULL,'8.12',NULL,'2018-05-26 20:35:18','2018-05-26 21:57:07',NULL),(106,8,'Vanessa Zuñiga Vega (B)','2003-11-23','A. Copiapó','3','x','x','8.12',NULL,NULL,NULL,NULL,'8.12',NULL,'2018-05-26 20:35:18','2018-05-26 21:57:47',NULL),(107,8,'Evelyn Espinoza Herrera (B)','2003-11-28','A. Nancagua','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 20:35:18','2018-05-26 21:37:24',NULL),(108,8,'Camila Ovando Bassenge (B)','2003-07-01','Escuela de Atletismo Osorno','10','10.57','10.58','10.84','7','10.61','10.76','10.41','10.84','4','2018-05-26 20:35:18','2018-05-26 21:53:48',NULL),(109,8,'Alejandra Reyes Romero (B)','2003-03-11','A. Nancagua','6','7.90','8.08','7.96',NULL,NULL,NULL,NULL,'7.90',NULL,'2018-05-26 20:35:18','2018-05-26 21:56:28',NULL),(110,8,'Yadhira Marisol Velasquez Anaya (B)','2003-02-14','C. A. Nacional Iquique','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 21:40:15',NULL),(111,8,'Danitza  Haro Chacon (B)','2003-08-06','A. de A. Castro','10','8.04','x','8.58',NULL,NULL,NULL,NULL,'8.58',NULL,'2018-05-26 20:35:18','2018-05-26 21:59:55',NULL),(112,8,'Luciana Zelaya Orlandini (A)','2004-01-12','A. Atacama','3','M','7.81','M',NULL,NULL,NULL,NULL,'7.81',NULL,'2018-05-26 20:35:18','2018-05-26 21:23:31',NULL),(113,8,'Macarena Montoya Marin (A)','2003-01-13','A. Coquimbo','4','9.03','8.76','8.63',NULL,NULL,NULL,NULL,'9.03',NULL,'2018-05-26 20:35:18','2018-05-26 21:24:05',NULL),(114,8,'Amara Belen Rojas Castillo (A)','2003-07-03','C. D. A. Sporting Coquimbo','4','9.12','8.85','8.96',NULL,NULL,NULL,NULL,'9.12',NULL,'2018-05-26 20:35:18','2018-05-26 21:25:33',NULL),(115,8,'Fernanda Jorquera Faundez (A)','2003-02-20','C.D. Windsor School','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 20:46:19',NULL),(116,8,'Emilia Medina Rivera (A)','2003-02-27','C. D. A. Coronel','8','M','9.60','9.51',NULL,'10.02','8.37','M','10.02','7','2018-05-26 20:35:18','2018-05-26 21:27:39',NULL),(117,8,'Sofía de la Fuente Barceló (A)','2004-02-09','CDUC','13','7.74','M','M',NULL,NULL,NULL,NULL,'7.74',NULL,'2018-05-26 20:35:18','2018-05-26 21:28:39',NULL),(118,8,'Sara Antonia  Vera Vera (A)','2004-05-19','C. A. San Nicolas','8','8.23','8.64','8.16',NULL,NULL,NULL,NULL,'8.64',NULL,'2018-05-26 20:35:18','2018-05-26 21:29:23',NULL),(119,8,'Barbara Aravena Friz(A)','2004-12-11','A. Cauquenes','7','M','M','M',NULL,NULL,NULL,NULL,'M',NULL,'2018-05-26 20:35:18','2018-05-26 21:29:45',NULL),(120,8,'Valentina Ulloa Aros (A)','2004-03-27','C. D. Trotamundos','15','9.76','10.56','10.47','4','10.58','11.13','10.76','11.13','3','2018-05-26 20:35:18','2018-05-26 22:05:47',NULL),(121,8,'Antonia Isabel Oyarzún Caris (A)','2003-12-27','C. Manquemávida de Santa Cruz','6','8.28','X','8.63',NULL,NULL,NULL,NULL,'8.63',NULL,'2018-05-26 20:35:18','2018-05-26 22:05:07',NULL),(122,8,'Maria Jose Nova Arteaga (A)','2003-07-22','C. D. Colegio Padre Hurtado de Chillan','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-26 20:35:18','2018-05-26 20:46:14',NULL),(123,8,'Macarena Jara De Los Reyes (A)','2003-02-25','Ulagos Pto.Montt','10','9.85','9.48','9.03','2','9.49','9.80','9.22','9.85','8','2018-05-26 20:35:18','2018-05-26 22:06:52',NULL),(124,8,'Estefanía Arancibia Diaz (A)','2003-05-21','YKA','13','X','9.55','10.60','5','X','10.01','10.21','10.60','5','2018-05-26 20:35:18','2018-05-26 22:06:10',NULL),(125,8,'Yanina Aravena Peres (A)','2004-04-15','A. Cauquenes','7','M','9.81','10.48','3','9.33','8.76','9.57','10.48','6','2018-05-26 20:35:18','2018-05-26 22:06:22',NULL),(126,8,'Valentina Claveria Sanchez (A)','2003-02-20','C. D. Colegio Padre Hurtado de Chillan','8','9.70','10.63','9.70','6','11.10','11.29','11.12','11.29','2','2018-05-26 20:35:18','2018-05-26 22:05:53',NULL),(127,9,'Catalina Garmendia Pascal','2003-06-19','CDUC','13','34.53','33.75','31.02','4','32.73','X','30.96','34.53','6','2018-05-26 21:11:58','2018-05-27 01:50:06',NULL),(128,9,'Colomba Costa Larrain','2003-10-15','CDUC','13','35.01','33.40','30.99','7','36.89','36.60','34.80','36.89','2','2018-05-26 21:11:58','2018-05-27 01:50:21',NULL),(129,9,'Elisa Medel Bezanilla','2003-02-08','CDUC','13','33.74','34.00','34.99','6','31.59','31.36','37.44','37.44','1','2018-05-26 21:11:58','2018-05-27 01:50:19',NULL),(130,9,'Isabel Ortiz Von Riegen','2003-06-02','CDUC','13','x','30.05','28.29','2','27.04','26.50','x','30.05','8','2018-05-26 21:11:58','2018-05-27 01:50:01',NULL),(131,9,'María Fernanda Santibañez Quezada','2004-04-23','A. Francés','13','x','x','x',NULL,NULL,NULL,NULL,'N/M','95','2018-05-26 21:11:58','2018-05-27 01:50:31',NULL),(133,9,'Evelyn Espinoza Herrera','2003-11-28','A. Nancagua','6','26.79','25.22','27.56',NULL,NULL,NULL,NULL,'27.56','11','2018-05-26 21:11:58','2018-05-27 01:49:44',NULL),(134,9,'Catalina Cardemil Millán','2003-05-29','Manquehue','13','25.63','x','28.09',NULL,NULL,NULL,NULL,'28.09','10','2018-05-26 21:11:58','2018-05-27 01:49:53',NULL),(135,9,'Antonia Isabel Oyarzún Caris','2003-12-27','C. Manquemávida de Santa Cruz','6','26.70','26.38','28.18',NULL,NULL,NULL,NULL,'28.18','9','2018-05-26 21:11:58','2018-05-27 01:49:55',NULL),(136,9,'Camila Ovando Bassenge','2003-07-01','Escuela de Atletismo Osorno','10','25.00','28.33','28.76','1','34.98','30.96','30.34','34.98','4','2018-05-26 21:11:58','2018-05-27 01:50:11',NULL),(137,9,'Maria Paz Lira Delgeon','2003-10-07','CDUC','13','34.29','34.94','29.25','5','30.12','25.33','30.75','34.94','5','2018-05-26 21:11:58','2018-05-27 01:50:08',NULL),(138,9,'Antonia Sepulveda Alarcon','2004-05-26','C. A. Parral','7','32.60','28.29','x','3','x','28.70','x','32.60','7','2018-05-26 21:11:58','2018-05-27 01:50:04',NULL),(139,9,'Macarena Jara De Los Reyes','2003-02-25','Ulagos Pto.Montt','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:11:58','2018-05-27 01:50:24',NULL),(140,9,'Emilia Medina Rivera','2003-02-27','C. D. A. Coronel','8.0','30.89','36.05','25.21','8','x','29.20','26.26','36.05','3','2018-05-26 21:11:58','2018-05-27 01:36:36',NULL),(141,9,'Isidora Modinger Rojas','2003-03-26','C.D. Windsor School','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','99','2018-05-26 21:11:58','2018-05-27 01:50:26',NULL),(143,8,'Antonia Barahona (B)','2003','A. La Pintana','13','8.08','x','8.07','','','','','8.08','','2018-05-26 21:44:04','2018-05-26 21:45:03',NULL),(144,8,'Ailin Barahona','2003','A. La Pintana','13','x','8.35','8.59','','','','','8.59','','2018-05-26 21:47:56','2018-05-26 21:47:56',NULL),(145,8,'Josefa Quintana','2003','A. La Pintana','13','x','x','x','','','','','M','','2018-05-26 21:48:57','2018-05-26 22:02:05',NULL),(177,10,'José Portaluppi Osiac','2003-06-10','CDUC','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:16',NULL),(178,10,'Benjamin Mesa Ramirez','2004-01-31','A. San Ignacio','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:17',NULL),(179,10,'Juan Contreras Contreras','2004-04-15','C. D. Bernardo Felmer','14.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:24',NULL),(180,10,'Alberto Lopez Hermida Perez de Arce','2004-12-27','CDUC','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:24',NULL),(181,10,'Matias Vega Arriagada','2004-01-24','OASSI','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:26',NULL),(182,10,'Alejandro Andres Caro Guevara','2004-04-04','C. A. Tamarugo','1.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:18',NULL),(183,10,'Salomon Manqui Calfuleo','2003-05-15','C. D. Bernardo Felmer','14.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:26',NULL),(184,10,'Martín Emilio Molina Suarez','2004-07-12','C. Escuela Infantil de Atletismo Llay Llay','5.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.06','15','2018-05-26 22:16:32','2018-05-27 01:33:37',NULL),(185,10,'Fermin Jimenez Gomez','2004-02-17','A. Nancagua','6.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:19',NULL),(186,10,'Maximiliano Guichaquelen Rivera','2004-03-21','A. de A. Castro','10.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:20',NULL),(187,10,'Luciano Aros Acuña','2003-03-08','C. D. Bernardo Felmer','14.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:28',NULL),(188,10,'Bastian Ceballos Llnos','2004-10-26','C. D. Freire','9.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:29',NULL),(189,10,'Sergio Zurita Alarcón','2003-10-21','C. San Ambrosio Linares','7.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:30',NULL),(190,10,'Johan Pasten Antiquera','2003-04-01','C. D. S. C. San Antonio','4.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.05','17','2018-05-26 22:16:32','2018-05-27 01:33:42',NULL),(191,10,'Daniel Antonio Cea Castro','2004-01-30','C. A. Nueva Generación (Laja)','8.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.05','16','2018-05-26 22:16:32','2018-05-27 01:33:39',NULL),(192,10,'Rodrigo Nicolas Arriagada Santana','2004-04-06','C. A. Hector Neira','10.0','x','10.35','10.38',NULL,NULL,NULL,NULL,'10.38','14','2018-05-26 22:16:32','2018-05-27 01:33:33',NULL),(193,10,'Pablo Bustamante González','2003-07-01','Escuela de Atletismo Osorno','10.0','11.05','11.99','11.33','1','11.21','11.14','10.69','11.99','8','2018-05-26 22:16:32','2018-05-27 01:31:18',NULL),(194,10,'Camilo Andrades Romeros','2004-09-05','A. Cauquenes','7.0','x','x','x',NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:31',NULL),(195,10,'Hector Arriagada Garrido','2003-12-23','A. Nancagua','6.0','11.30','11.03','11.68',NULL,NULL,NULL,NULL,'11.68','10','2018-05-26 22:16:32','2018-05-27 01:33:19',NULL),(196,10,'Renato Morales Fuentes','2003-11-12','A. Copiapó','3.0','x','x','x',NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:32',NULL),(197,10,'Ignacio Arancibia Gutierrez','2003-03-16','A. San Ignacio','13.0','11.06','11.12','11.51',NULL,NULL,NULL,NULL,'11.51','13','2018-05-26 22:16:32','2018-05-27 01:33:31',NULL),(198,10,'Osvaldo Alcaino Gonzalez','2003-02-13','A. Nancagua','6.0','11.68','11.10','10.97',NULL,NULL,NULL,NULL,'11.68','11','2018-05-26 22:16:32','2018-05-27 01:33:21',NULL),(199,10,'Felipe De la Maza Soto','2004-01-29','A. San Ignacio','13.0','x','x','x',NULL,NULL,NULL,NULL,'N/M','','2018-05-26 22:16:32','2018-05-27 02:27:33',NULL),(200,10,'Tomas Didyk Martinez','2004-02-12','A. Santiago','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:21',NULL),(201,10,'Santiago Diaz Edwards','2004-02-17','A. Santiago','13.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS','','2018-05-26 22:16:32','2018-05-27 02:27:22',NULL),(202,10,'Camilo Rojas Araya','2003-08-21','A. Atacama','3.0','13.09','13.70','13.65','6','13.00','13.72','13.10','13.72','3','2018-05-26 22:16:32','2018-05-27 01:30:45',NULL),(203,10,'Alberto Andres Eriza Acuña','2004-03-01','C. A. San Nicolas','8.0','x','11.53','11.59',NULL,NULL,NULL,NULL,'11.59','12','2018-05-26 22:16:32','2018-05-27 01:33:27',NULL),(204,10,'Jun Diego Escuredo Fernandez','2003-08-01','A. Santiago','13.0','13.48','13.84','13.21','7','x','13.69','13.73','13.84','2','2018-05-26 22:16:32','2018-05-27 01:30:35',NULL),(205,10,'Fabian Eduardo Cid Sanchez','2004-01-04','C. A. Nueva Generación (Laja)','8.0','11.43','10.89','12.80','5','13.35','13.23','13.70','13.70','4','2018-05-26 22:16:32','2018-05-27 01:30:52',NULL),(206,10,'Pedro Agüero Ureta','2003-01-19','A. Santiago','13.0','12.14','12.76','12.05','4','x','12.04','13.60','13.60','5','2018-05-26 22:16:32','2018-05-27 01:31:00',NULL),(207,10,'Juan Jose  Eriza Acuña','2004-03-01','C. A. San Nicolas','8.0','14.71','13.19','12.32','8','14.88','x','x','14.88','1','2018-05-26 22:16:32','2018-05-26 22:41:50',NULL),(208,10,'Nicolás Petersen ','2003','U. Tarapacá','15','15.51','11.94','12.08','3','12.05','12.52','12.24','12.52','6','2018-05-26 22:21:49','2018-05-27 01:31:08',NULL),(209,10,'Marcelo Lepe','2003','A. La Pintana','13','x','10.53','11.81','','','','','11.81','9','2018-05-26 22:39:00','2018-05-27 01:32:43',NULL),(210,10,'Juan Pablo Ospina','2003','A. Génesis','6','11.86','12.39','11.19','2','12.33','11.75','x','12.39','7','2018-05-26 22:40:45','2018-05-26 22:40:45',NULL),(211,11,'Valentina Claveria Sanchez','2003-02-20','C. D. Colegio Padre Hurtado de Chillan','8','44.62','47.01','45.47','8.0','45.85','44.06','X','45.85','1','2018-05-27 12:49:22','2018-05-27 12:52:30',NULL),(212,11,'Antonia Gonzalez Carcavilla','2003-05-12','CDUC','13','34.89','35.31','X','7.0','33.22','37.52','X','37.52','2','2018-05-27 12:49:22','2018-05-27 12:52:26',NULL),(213,11,'Valentina Ulloa Aros','2004-03-27','C. D. Trotamundos','15','X','32.06','28.09','6.0','31.87','34.89','33.63','34.89','3','2018-05-27 12:49:22','2018-05-27 12:52:20',NULL),(214,11,'Florencia Carrizo Parra','2004-06-24','A. Atacama','3','31.79','28.14','29.30','5.0','32.32','25.38','30.86','32.32','4','2018-05-27 12:49:22','2018-05-27 12:52:10',NULL),(215,11,'Danitza  Haro Chacon','2003-08-06','A. de A. Castro','10','29.11','27.94','X','3.0','27.48','28.25','30.46','30.46','5','2018-05-27 12:49:22','2018-05-27 12:52:06',NULL),(216,11,'Camila Ovando Bassenge','2003-07-01','Escuela de Atletismo Osorno','10','25.45','29.29','29.25','4.0','30.01','25.01','29.94','29.94','6','2018-05-27 12:49:22','2018-05-27 12:52:02',NULL),(217,11,'Vanessa Zuñiga Vega','2003-11-23','A. Copiapó','3','25.69','26.40','26.06','1.0','24.92','27.43','M','27.43','7','2018-05-27 12:49:22','2018-05-27 12:51:57',NULL),(218,11,'Contanza Acevedo Fuenzalida','2004-02-23','CDUC','13','27.38','26.88','25.29','2.0','24.92','X','M','27.38','8','2018-05-27 12:49:22','2018-05-27 12:51:53',NULL),(219,11,'Emilia Medina Rivera','2003-02-27','C. D. A. Coronel','8','23.71','X','25.15',NULL,NULL,NULL,NULL,'25.15','9','2018-05-27 12:49:22','2018-05-27 12:51:50',NULL),(220,11,'Pia Ignacia Rodriguez Oisel','2003-05-20','CDUC','13','M','23.67','24.51',NULL,NULL,NULL,NULL,'24.51','10','2018-05-27 12:49:22','2018-05-27 12:51:45',NULL),(221,11,'Catalina Obando Nahuelpan','2004-08-02','C. D. Bernardo Felmer','14','M','X','24.50',NULL,NULL,NULL,NULL,'24.50','11','2018-05-27 12:49:22','2018-05-27 12:51:41',NULL),(222,11,'Maria Jose Nova Arteaga','2003-07-22','C. D. Colegio Padre Hurtado de Chillan','8','X','24.41','M',NULL,NULL,NULL,NULL,'24.41','12','2018-05-27 12:49:22','2018-05-27 12:51:37',NULL),(223,11,'Ornella Espinosa Olivero','2003-03-22','C. D. S. C. San Antonio','4','X','23.59','23.76',NULL,NULL,NULL,NULL,'23.76','13','2018-05-27 12:49:22','2018-05-27 12:51:33',NULL),(224,11,'Almendra Jofré González','2004-04-24','A. Copiapó','3','X','X','23.42',NULL,NULL,NULL,NULL,'23.42','14','2018-05-27 12:49:22','2018-05-27 12:51:29',NULL),(225,11,'Macarena Montoya Marin','2003-01-13','A. Coquimbo','4','X','23.38','M',NULL,NULL,NULL,NULL,'23.38','15','2018-05-27 12:49:22','2018-05-27 12:51:25',NULL),(226,11,'Antonia Isabel Oyarzún Caris','2003-12-27','C. Manquemávida de Santa Cruz','6','M','M','23.37',NULL,NULL,NULL,NULL,'23.37','16','2018-05-27 12:49:22','2018-05-27 12:51:22',NULL),(227,11,'Javiera Constanza Davila Godoy','2004-06-10','C. A. Tamarugo','1','X','X','X',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:50:47',NULL),(228,11,'Sofía de la Fuente Barceló','2004-02-09','CDUC','13','X','M','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:50:50',NULL),(229,11,'Amara Belen Rojas Castillo','2003-07-03','C. D. A. Sporting Coquimbo','4','X','M','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:50:52',NULL),(230,11,'Catalina Gallegos Bahamonde','2004-10-19','A. de A. Castro','10','M','M','X',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:50:55',NULL),(231,11,'Fernanda Jorquera Faundez','2003-02-20','C.D. Windsor School','14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:50:59',NULL),(232,11,'Josefina Martina Calistro Carcamo','2004-07-27','C. A. Hector Neira','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:01',NULL),(233,11,'Andy Marlen Mina Gonzalias','2004-10-11','C. Chuquicamata','2','X','M','X',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:05',NULL),(234,11,'Sara Antonia  Vera Vera','2004-05-19','C. A. San Nicolas','8','M','M','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:08',NULL),(235,11,'Orión Renata Carrasco Carrillo','2003-08-23','C. Manquemávida de Santa Cruz','6','M','X','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:15',NULL),(236,11,'Olivia Pinto Garcia','2003-09-27','CDUC','13','M','X','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:12',NULL),(237,11,'Macarena Jara De Los Reyes','2003-02-25','Ulagos Pto.Montt','10','X','M','M',NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-27 12:49:22','2018-05-27 12:51:19',NULL),(238,12,'Alejandro Andres Caro Guevara','2004-04-04','C. A. Tamarugo','1','X','X','X',NULL,NULL,NULL,NULL,'NM',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:36',NULL),(239,12,'Martin Gallardo Diaz','2004-09-14','A. Santiago','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:31',NULL),(240,12,'Maximiliano Guichaquelen Rivera','2004-03-21','A. de A. Castro','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:28',NULL),(241,12,'Felipe Torres Cifuentes','2004-02-08','A. Santiago','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:24',NULL),(242,12,'Fermin Jimenez Gomez','2004-02-17','A. Nancagua','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:21',NULL),(243,12,'Martín Emilio Molina Suarez','2004-07-12','C. Escuela Infantil de Atletismo Llay Llay','5','X','M','X',NULL,NULL,NULL,NULL,'NM','','2018-05-27 16:44:07','2018-05-27 16:48:18',NULL),(244,12,'Jose Bravo Veliz','2003-07-30','C. A. Alameda Talca','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:15',NULL),(245,12,'Manuel Santander Valdes','2004-10-08','A. San Ignacio','13','M','M','M',NULL,NULL,NULL,NULL,'NM','','2018-05-27 16:44:07','2018-05-27 16:48:12',NULL),(246,12,'Vicente Alvarado Ramos','2004-11-22','C. Liceo de Curicó','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:09',NULL),(247,12,'Ignacio Arancibia Gutierrez','2003-03-16','A. San Ignacio','13','33.38','35.24','36.72','1.0','36.00','34.40','36.49','36.72','8','2018-05-27 16:44:07','2018-05-27 16:47:47',NULL),(248,12,'Italo Savalli Saldías','2003-08-18','A. Copiapó','3','M','M','X',NULL,NULL,NULL,NULL,'NM','','2018-05-27 16:44:07','2018-05-27 16:47:12',NULL),(249,12,'Matias Suazo Navarro','2004-10-21','A. Cauquenes','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:07',NULL),(250,12,'Nicolas Petersen Diaz','2003-05-20','U. de Tarapaca','15','35.08','X','33.86',NULL,NULL,NULL,NULL,'35.08','11','2018-05-27 16:44:07','2018-05-27 16:47:57',NULL),(251,12,'Elias Valdez Diaz','2004-09-02','A. Nancagua','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:03',NULL),(252,12,'Santiago Diaz Edwards','2004-02-17','A. Santiago','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:48:00',NULL),(253,12,'Renato Morales Fuentes','2003-11-12','A. Copiapó','3','35.83','33.42','X',NULL,NULL,NULL,NULL,'35.83','10','2018-05-27 16:44:07','2018-05-27 16:47:53',NULL),(254,12,'Luciano Castillo Diaz','2003-01-19','A. Nancagua','6','X','39.44','X','4.0','38.47','41.77','32.77','41.77','6','2018-05-27 16:44:07','2018-05-27 16:47:39',NULL),(255,12,'Alberto Andres Eriza Acuña','2004-03-01','C. A. San Nicolas','8','35.69','36.21','X',NULL,NULL,NULL,NULL,'36.21','9','2018-05-27 16:44:07','2018-05-27 16:47:50',NULL),(256,12,'Tomas Didyk Martinez','2004-02-12','A. Santiago','13','41.25','40.22','42.68','5.0','X','X','39.73','42.68','4','2018-05-27 16:44:07','2018-05-27 16:47:32',NULL),(257,12,'Felipe De la Maza Soto','2004-01-29','A. San Ignacio','13','36.77','38.85','38.09','3.0','39.87','39.97','42.07','42.07','5','2018-05-27 16:44:07','2018-05-27 16:47:35',NULL),(258,12,'Sergio Bravo Aguilera','2003-09-13','C. D. Colegio Padre Hurtado de Chillan','8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:47:18',NULL),(259,12,'Camilo Andrades Romeros','2004-09-05','A. Cauquenes','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:44:07','2018-05-27 16:47:14',NULL),(260,12,'Cristian Ortiz Yáñez','2003-12-16','A. Copiapó','3','50.97','50.74','52.97','7.0','53.26','X','X','53.26','2','2018-05-27 16:44:07','2018-05-27 16:47:26',NULL),(261,12,'Camilo Rojas Araya','2003-08-21','A. Atacama','3','35.51','X','53.26','8.0','56.89','X','42.30','56.89','1','2018-05-27 16:44:07','2018-05-27 16:47:21',NULL),(262,12,'Juan Jose  Eriza Acuña','2004-03-01','C. A. San Nicolas','8','X','44.97','46.70','6.0','X','X','X','46.70','3','2018-05-27 16:44:07','2018-05-27 16:47:28',NULL),(263,12,'Juan Pablo Ospina','00-00-2003','A. Génesis','6','35.13','38.30','38.02','2.0','39.43','40.86','39.86','40.86','7','2018-05-27 16:44:07','2018-05-27 16:47:44',NULL),(265,13,'Benjamin Alvarado Olmi','2003-04-01','C. A. Puerto Sur','10','17.91','13.38','16.21',NULL,NULL,NULL,NULL,'17.99 (133)= 1962','6','2018-05-27 16:50:20','2018-05-27 17:52:34',NULL),(266,13,'Manuel Vasquez ','2004-09-22','C. D. Pilauco','10','26.06','28.84','x',NULL,NULL,NULL,NULL,'28.84 (283)= 3304','3','2018-05-27 16:50:20','2018-05-27 17:52:58',NULL),(267,13,'Santiago Salinas Cabrera','2003-04-04','A. Santiago','13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:50:20','2018-05-27 17:53:10',NULL),(268,13,'Joaquín Cristóbal Galleguillos Puebla','2003-02-08','C. Manquemávida de Santa Cruz','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 16:50:20','2018-05-27 17:53:14',NULL),(269,13,'Benjamin Gonzalez Olguin','2003-04-06','A. Nancagua','6','26.82','x','30.04',NULL,NULL,NULL,NULL,'30.04 (300)= 2350','2','2018-05-27 16:50:20','2018-05-27 17:53:02',NULL),(270,13,'Eduardo Camp Summerset','2003-09-04','Centro Atlético Formativo','15','24.14','x','23.17',NULL,NULL,NULL,NULL,'24.14 (218)= 3199','5','2018-05-27 16:50:20','2018-05-27 17:52:38',NULL),(271,13,'Benjamin Irribarren Poyanopulos','2004-01-13','Centro Atlético Formativo','15','x','x','x',NULL,NULL,NULL,NULL,'N/M (0)= 2263','','2018-05-27 16:50:20','2018-05-27 17:53:15',NULL),(272,13,'Pablo Rojas Muñoz','2003-07-01','C. A. Alameda Talca','7','31.28','27.53','28.37',NULL,NULL,NULL,NULL,'31.28 (317)= 2818','1','2018-05-27 16:50:20','2018-05-27 17:53:05',NULL),(273,13,'Adan Puel','2003','C.A. Ñielol','9','x','19.00','25.20','','','','','25.20 (232)= 2740','4','2018-05-27 16:55:23','2018-05-27 17:05:36',NULL),(274,14,'Aylimm Muñoz Diaz','A. de A. Castro','2004-08-16','10','X','X','X',NULL,NULL,NULL,NULL,'NM (0)',NULL,'2018-05-27 17:21:07','2018-05-27 17:28:48',NULL),(275,14,'Laura Bustamante González','Escuela de Atletismo Osorno','2004-09-24','10','12.96','14.03','11.59',NULL,NULL,NULL,NULL,'14.03 (179)','6','2018-05-27 17:21:07','2018-05-27 17:28:19',NULL),(276,14,'Cristianne Neumann ','C. D. Pilauco','2003-09-05','10','X','13.23','14.49',NULL,NULL,NULL,NULL,'14.49 (187)','5','2018-05-27 17:21:07','2018-05-27 17:28:10',NULL),(277,14,'Maria Squella Contardo','CDUC','2003-04-14','13','17.93','18.85','21.24',NULL,NULL,NULL,NULL,'21.24 (312)','2','2018-05-27 17:21:07','2018-05-27 17:27:36',NULL),(278,14,'Giza Dayanee Aguayo Vasquez','C. Génesis','2004-04-13','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 17:21:07','2018-05-27 17:26:37',NULL),(279,14,'Orión Renata Carrasco Carrillo','C. Manquemávida de Santa Cruz','2003-08-23','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 17:21:07','2018-05-27 17:26:40',NULL),(280,14,'Emilia Alejandra Cabrera Valenzuela','C. Manquemávida de Santa Cruz','2003-09-06','6','11.23','10.59','13.00',NULL,NULL,NULL,NULL,'13.00 (160)','7','2018-05-27 17:21:07','2018-05-27 17:28:43',NULL),(281,14,'Valentina Duque Muñoz','C. Liceo de Curicó','2003-09-09','7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DNS',NULL,'2018-05-27 17:21:07','2018-05-27 17:26:42',NULL),(282,14,'Agustina Cruz','CDUC','2003-03-31','13','31.27','28.26','X',NULL,NULL,NULL,NULL,'31.27 (501)','1','2018-05-27 17:21:07','2018-05-27 17:27:25',NULL),(283,14,'Cecilia Millaray','A. Ingles','2003-03-01','4','18.74','18.78','19.12',NULL,NULL,NULL,NULL,'19.12 (273)','3','2018-05-27 17:21:07','2018-05-27 17:27:45',NULL),(284,14,'Martina Delgado','G. Manzanales','2004-07-15','10','16.81','16.07','11.59',NULL,NULL,NULL,NULL,'16.81 (230)','4','2018-05-27 17:21:07','2018-05-27 17:28:02',NULL),(286,5,'','','','','','','','','','','','','','2018-08-02 13:47:35','2018-08-02 13:47:35',NULL),(293,2,'','','','','','','','','','','','','','2018-08-02 15:01:35','2018-08-02 15:01:35',NULL),(295,2,'','','','','','','','','','','','','','2018-08-02 16:20:37','2018-08-02 16:20:37',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throw_head2s`
--

LOCK TABLES `throw_head2s` WRITE;
/*!40000 ALTER TABLE `throw_head2s` DISABLE KEYS */;
INSERT INTO `throw_head2s` VALUES (1,NULL,NULL,1,8,1,1,NULL,'2018-05-26 13:35:10','2018-05-27 14:29:28','Lanzamiento del Martillo - Final - Damas'),(2,NULL,NULL,1,11,1,1,NULL,'2018-05-26 14:30:29','2018-05-27 14:36:51','- Lanzamiento Bala - Hexatlón - Varones'),(3,NULL,NULL,1,11,1,1,NULL,'2018-05-26 18:23:03','2018-05-26 18:23:03',''),(4,NULL,NULL,1,13,1,1,NULL,'2018-05-26 18:37:24','2018-05-27 02:07:39','Lanzamiento Bala - Hexatlón Damas'),(5,NULL,NULL,1,14,1,1,NULL,'2018-05-26 18:56:13','2018-05-27 02:08:12','Lanzamiento del Martillo - Final Varones'),(6,NULL,NULL,1,20,1,1,NULL,'2018-05-26 19:28:21','2018-05-26 21:50:40','Lanzamiento Jabalina Varones'),(7,NULL,NULL,1,20,1,1,NULL,'2018-05-26 19:30:04','2018-05-26 19:33:35','Invitados Juveniles'),(8,NULL,NULL,1,23,1,1,NULL,'2018-05-26 20:29:21','2018-05-26 22:07:51','Lanzamiento Bala - Damas'),(9,NULL,NULL,1,26,1,1,NULL,'2018-05-26 21:07:43','2018-05-26 22:15:29','Lanzamiento Javalina - Final Damas'),(10,NULL,NULL,1,29,1,1,NULL,'2018-05-26 22:08:51','2018-05-26 22:16:22','Lanzamiento Bala - Varones'),(11,NULL,NULL,1,32,1,1,NULL,'2018-05-27 12:49:05','2018-05-27 12:49:05',''),(12,NULL,NULL,1,41,1,1,NULL,'2018-05-27 16:43:53','2018-05-27 16:49:24','Lanzamiento Disco - Varones'),(13,NULL,NULL,1,48,1,1,NULL,'2018-05-27 16:48:15','2018-05-27 16:48:15',''),(14,NULL,NULL,1,47,1,1,NULL,'2018-05-27 17:20:57','2018-05-27 17:24:54','Lanzamiento Jabalina - Hexatlón - Damas');
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
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track2s`
--

LOCK TABLES `track2s` WRITE;
/*!40000 ALTER TABLE `track2s` DISABLE KEYS */;
INSERT INTO `track2s` VALUES (2,3,1,'16.10 (702)','Agustina Cruz',NULL,'CDUC','13',NULL,'2018-05-26 13:15:12','2018-05-27 13:05:52','2',NULL,NULL),(3,3,2,'16.89 (609)','Maria Squella Contardo',NULL,'CDUC','13',NULL,'2018-05-26 13:15:12','2018-05-27 13:05:59','1',NULL,NULL),(4,3,3,'17.07 (589)','Cristianne Neumann',NULL,'C. D. Pilauco','10',NULL,'2018-05-26 13:15:12','2018-05-27 13:06:08','8',NULL,NULL),(5,3,4,'17.67 (523)','Cecilia Millaray',NULL,'A. Ingles','4',NULL,'2018-05-26 13:15:12','2018-05-27 13:06:34','6',NULL,NULL),(6,3,5,'18.94 (396)','Martina Delgado',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-26 13:15:12','2018-05-27 13:06:54','3',NULL,NULL),(7,3,6,'19.95 (306)','Laura Bustamante González',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-26 13:15:12','2018-05-27 13:07:06','4',NULL,NULL),(8,3,7,'21.65 (180)','Aylimm Muñoz Diaz',NULL,'A. de A. Castro','10',NULL,'2018-05-26 13:15:12','2018-05-27 13:07:24','5',NULL,NULL),(9,3,8,'21.73 (180)','Emilia Cabrera Valenzuela',NULL,'C. Manquemávida de Santa Cruz','6',NULL,'2018-05-26 13:15:12','2018-05-27 13:07:31','7',NULL,NULL),(12,5,1,'12.12 (628)','Eduardo Camp Summerset',NULL,'CAF Arica','15',NULL,'2018-05-26 13:47:48','2018-05-27 13:03:56','2',NULL,NULL),(13,5,2,'12.33 (588)','Manuel Vasquez',NULL,'C. D. Pilauco','10',NULL,'2018-05-26 13:47:48','2018-05-27 13:04:13','7',NULL,NULL),(14,5,3,'12.60 (538)','Pablo Rojas Muñoz',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-26 13:47:48','2018-05-27 13:04:23','5',NULL,NULL),(15,5,4,'12.79 (504)','Santiago Salinas Cabrera',NULL,'A. Santiago','13',NULL,'2018-05-26 13:47:48','2018-05-27 13:04:35','4',NULL,NULL),(16,5,5,'12.95(476)','Benjamin Alvarado Olmi',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-26 13:47:48','2018-05-27 13:04:44','6',NULL,NULL),(17,5,6,'13.30 (418)','Mauricio Irribarren Poyanopulos',NULL,'CAF Arica','15',NULL,'2018-05-26 13:47:48','2018-05-27 13:05:20','3',NULL,NULL),(18,5,7,'13.32 (415)','Adan Puel',NULL,'A. Ñielol','9',NULL,'2018-05-26 13:47:48','2018-05-27 13:05:30','8',NULL,NULL),(19,5,8,'13.38 (405)','Benjamin Gonzalez Olguin',NULL,'A. Nancagua','6',NULL,'2018-05-26 13:47:48','2018-05-27 13:05:40','1',NULL,NULL),(26,6,1,'13.27','Victoria Rios Castro',NULL,'A. Santiago','13',NULL,'2018-05-26 14:58:50','2018-05-26 14:58:50','4',NULL,NULL),(27,6,2,'13.82','Renata Álvarez Parraguez',NULL,'A. Francés','13',NULL,'2018-05-26 15:00:00','2018-05-26 15:00:00','5',NULL,NULL),(28,6,3,'14.54','Claudia Retamales Nuñez',NULL,'OASSI','13',NULL,'2018-05-26 15:02:05','2018-05-26 15:02:05','6',NULL,NULL),(29,6,4,'14.67','Catalina Andrea Leiva  Bascur',NULL,'C. D. A. Coronel','8',NULL,'2018-05-26 15:02:22','2018-05-26 15:04:00','2',NULL,NULL),(30,6,5,'14.76','Amanda Hunt Cid',NULL,'OASSI','13',NULL,'2018-05-26 15:04:46','2018-05-26 15:04:46','7',NULL,NULL),(31,6,6,'14.99','Dafne Anais Reyes',NULL,'A. Santiago','13',NULL,'2018-05-26 15:06:06','2018-05-26 15:06:06','8',NULL,NULL),(32,6,7,'15.17','Irene Linda Riquelme Muñoz',NULL,'C. A. Tamarugo','1',NULL,'2018-05-26 15:11:54','2018-05-26 15:11:54','3',NULL,NULL),(33,7,1,'16:34.47','Daniela Paz Godoy Lagos',NULL,'C.D. Freire','9',NULL,'2018-05-26 15:12:15','2018-05-26 15:12:15','',NULL,NULL),(34,6,8,'16.15','Victoria Pardo Antillanca',NULL,'C. D. Bernando Felmer','14',NULL,'2018-05-26 15:13:42','2018-05-26 15:13:42','1',NULL,NULL),(35,7,2,'16:57.36','Valentina Aguilar Fernández',NULL,'C.D. Trotamundos','15',NULL,'2018-05-26 15:15:05','2018-05-26 15:15:05','',NULL,NULL),(37,7,3,'17:03.90','Monserrat Peñafiel Vallejos',NULL,'E. Atletismo Osorno','10',NULL,'2018-05-26 15:16:09','2018-05-26 15:16:09','',NULL,NULL),(38,8,1,'13.04','Barbara Carrasco Garcia',NULL,'A. Santiago','13',NULL,'2018-05-26 15:16:50','2018-05-26 15:16:50','4',NULL,NULL),(39,7,4,'17:29.57','Ayllyn Vallejos Galvarino',NULL,'C. Deportes Saavedra','9',NULL,'2018-05-26 15:17:54','2018-05-26 15:17:54','',NULL,NULL),(40,7,5,'17:30.62','Monserrat Rojas Maugard',NULL,'C. D. Trotamundos','15',NULL,'2018-05-26 15:19:37','2018-05-26 15:19:37','',NULL,NULL),(41,8,2,'13.35','Gabriela Millaray Zúñiga Olivos',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 15:20:11','2018-05-26 15:20:11','6',NULL,NULL),(42,7,6,'17:50.58','Catalina Pérez Gálvez',NULL,'A. Nancagua','6',NULL,'2018-05-26 15:20:17','2018-05-26 15:20:17','',NULL,NULL),(43,7,NULL,'DQ','Carolina Valesca Godoy Lagos',NULL,'C.D. Freire','9',NULL,'2018-05-26 15:21:19','2018-05-26 19:37:45','',NULL,NULL),(44,8,3,'13.45','Carola Scheihing Ballesteros',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-26 15:21:37','2018-05-26 15:21:37','1',NULL,NULL),(45,7,NULL,'DNF','Francisca Briones Contreras',NULL,'C.A. Punta Arenas','12',NULL,'2018-05-26 15:22:23','2018-05-26 19:37:41','',NULL,NULL),(46,8,4,'13.56','Camil Sarai Ponce Márquez',NULL,'Vicente Potrerillos Salinas','3',NULL,'2018-05-26 15:25:52','2018-05-26 15:25:52','3',NULL,NULL),(51,8,5,'13.75','Josefa Valdera Ramos',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 15:31:12','2018-05-26 15:31:12','5',NULL,NULL),(52,8,6,'15.26','Carla Rios Bermudez',NULL,'OASSI','13',NULL,'2018-05-26 15:32:13','2018-05-26 15:32:13','7',NULL,NULL),(53,8,NULL,'DNS','Constanza Antonia Gamboa Tapia',NULL,'C. A. O’Higgins','5',NULL,'2018-05-26 15:32:54','2018-05-26 19:38:52','',NULL,NULL),(54,8,NULL,'DNS','Anthar Gipoulou Pizarro',NULL,'C.D. Windsor School','14',NULL,'2018-05-26 15:34:03','2018-05-26 19:38:54','',NULL,NULL),(55,9,1,'13.82','Rocio Carvajal San Martin',NULL,'A. Santiago','13',NULL,'2018-05-26 15:36:05','2018-05-26 15:36:05','5',NULL,NULL),(56,9,2,'14.70','Constanza Millaray Chandia Ibacache',NULL,'C. D. A. Sporting Coquimbo','4',NULL,'2018-05-26 15:37:33','2018-05-26 15:37:33','2',NULL,NULL),(57,9,3,'14.80','Antonia Suerez Escobar',NULL,'A. Santiago','13',NULL,'2018-05-26 15:38:34','2018-05-26 15:38:34','8',NULL,NULL),(58,9,4,'16.00','Catalina Norambuena Otarola',NULL,'OASSI','13',NULL,'2018-05-26 15:39:11','2018-05-26 15:39:11','7',NULL,NULL),(60,9,NULL,'DQ','Antonia Diaz Lizana',NULL,'A. Nancagua','6',NULL,'2018-05-26 15:41:08','2018-05-26 19:39:14','',NULL,NULL),(61,9,NULL,'DNS','Valentina  Vásquez  General',NULL,'C. A. Limache','5',NULL,'2018-05-26 15:42:01','2018-05-26 19:39:06','',NULL,NULL),(62,9,NULL,'DNS','Catalina Gonzales Opazo',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-26 15:43:04','2018-05-26 19:39:09','',NULL,NULL),(63,9,NULL,'DNS','Contanza Gomez Valdés',NULL,'CDUC','13',NULL,'2018-05-26 15:44:07','2018-05-26 19:39:11','',NULL,NULL),(64,10,1,'12.88','Claudia Daniela Pimentel Cruz',NULL,'C. Chuquicamata','2',NULL,'2018-05-26 15:48:18','2018-05-26 15:48:18','4',NULL,NULL),(65,10,2,'13.19','Esperanza Garcia Tapia',NULL,'CDUC','13',NULL,'2018-05-26 15:49:14','2018-05-26 15:49:14','1',NULL,NULL),(66,10,3,'13.65','Khaterine Hornig Angulo',NULL,'C. A. Gerardo Manzanares ','10',NULL,'2018-05-26 15:50:02','2018-05-26 15:50:02','5',NULL,NULL),(67,10,4,'13.68','Javiera Gonzalez Moscoso',NULL,'A. Nancagua','6',NULL,'2018-05-26 15:51:01','2018-05-26 15:51:01','3',NULL,NULL),(68,10,5,'14.34','Tamara Lopez Vera',NULL,'A. Cauquenes','7',NULL,'2018-05-26 15:51:54','2018-05-26 15:51:54','6',NULL,NULL),(69,10,NULL,'DNS','Martina Gonzalez Villalobos',NULL,'A. Nancagua','6',NULL,'2018-05-26 15:52:58','2018-05-26 19:39:25','',NULL,NULL),(70,10,NULL,'DNS','Rocio Barrientos Crispieri',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 15:54:04','2018-05-26 19:39:28','',NULL,NULL),(71,10,NULL,'DNS','Amelia Molinos Rillón',NULL,'CDUC','13',NULL,'2018-05-26 15:54:37','2018-05-26 19:39:29','',NULL,NULL),(72,11,1,'13.86','Josefa Ignacia Ibañez Salinas',NULL,'A. Ingles','4',NULL,'2018-05-26 15:58:40','2018-05-26 15:58:40','4',NULL,NULL),(73,11,2,'14.53','Fernanda Isidora Maldonado Fuentealba',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 16:00:47','2018-05-26 16:00:47','2',NULL,NULL),(74,11,3,'14.74','Maria  Reyes Fernandez',NULL,'C. A. Gerardo Manzanares ','10',NULL,'2018-05-26 16:02:33','2018-05-26 16:02:33','7',NULL,NULL),(75,11,4,'15.20','Carmen Gonzalez Escobar',NULL,'A. Santiago','13',NULL,'2018-05-26 16:07:37','2018-05-26 16:08:19','8',NULL,NULL),(76,11,NULL,'DNS','Sofia Torres Letelier',NULL,'A. Cauquenes','7',NULL,'2018-05-26 16:09:10','2018-05-26 19:39:50','',NULL,NULL),(82,11,NULL,'DNS','Florencia Opazo Alul',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-26 16:09:55','2018-05-26 19:39:47','',NULL,NULL),(83,11,NULL,'DNS','Ayleen Amaya Casanova López',NULL,'C. A. O’Higgins','5',NULL,'2018-05-26 16:10:47','2018-05-26 19:39:44','',NULL,NULL),(84,11,NULL,'DNS','Estefanía Arancibia Diaz',NULL,'YKA','13',NULL,'2018-05-26 16:11:42','2018-05-26 19:39:41','',NULL,NULL),(85,12,1,'51.62','Alfredo Sepúlveda Sandoval',NULL,'A. Pacífico','5',NULL,'2018-05-26 16:13:49','2018-05-27 14:16:51','4',NULL,NULL),(86,12,2,'51.99','Andres Bayron Silva',NULL,'Uruguay','URU',NULL,'2018-05-26 16:13:49','2018-05-27 14:16:58','5',NULL,NULL),(87,12,3,'53.97','Cristóbal Muñoz Fuentealba',NULL,'A. Gerardo Manzanares','10',NULL,'2018-05-26 16:13:49','2018-05-27 14:17:38','6',NULL,NULL),(88,12,4,'55.16','Francisco Barrueto Osandón',NULL,'A. Pacífico','5',NULL,'2018-05-26 16:13:49','2018-05-27 14:17:01','7',NULL,NULL),(89,12,5,'56.71','Gabriel Sepúlveda Sandoval',NULL,'A. Pacífico','5',NULL,'2018-05-26 16:13:49','2018-05-27 14:17:04','3',NULL,NULL),(90,12,NULL,'DNS','Joao Pinto Acevedo',NULL,'U. Católica','13',NULL,'2018-05-26 16:13:49','2018-05-27 14:17:08',NULL,NULL,NULL),(91,13,1,'48.77','Mateo Pascual',NULL,'Uruguay','URU',NULL,'2018-05-26 16:16:26','2018-05-27 14:19:01','5',NULL,NULL),(92,13,2,'50.96','Francisco Muñoz',NULL,'Cultura Fisica','5',NULL,'2018-05-26 16:16:26','2018-05-27 14:19:05','6',NULL,NULL),(93,13,3,'51.99','Maximiliano Castro Ossa',NULL,'A. Santiago','13',NULL,'2018-05-26 16:16:26','2018-05-27 14:19:09','3',NULL,NULL),(94,13,4,'53.19','Cristobal Torres',NULL,'OASSI','13',NULL,'2018-05-26 16:16:26','2018-05-27 14:19:10','4',NULL,NULL),(95,13,NULL,'DNS','Santiago Martínez Muñoz',NULL,'OASSI','13',NULL,'2018-05-26 16:16:26','2018-05-27 14:19:12','',NULL,NULL),(96,14,1,'13.66','Nicole Darritchon Lama',NULL,'CDUC','13',NULL,'2018-05-26 16:16:28','2018-05-26 16:16:28','4',NULL,NULL),(97,14,2,'13.85','Natalie Paulina Sepulveda  Delbury',NULL,'C. D. San Pablo (Chiguayante)','8',NULL,'2018-05-26 16:18:03','2018-05-26 16:18:03','5',NULL,NULL),(98,14,3,'14.34','Ignacia  Pinto  Parraguez',NULL,'A. Francés','13',NULL,'2018-05-26 16:19:02','2018-05-26 16:19:02','8',NULL,NULL),(99,14,4,'14.56','Francisca Rojas Jara',NULL,'A. Santiago','13',NULL,'2018-05-26 16:19:47','2018-05-26 16:19:47','7',NULL,NULL),(100,14,5,'15.12','Francisca  Reyes Martinez',NULL,'A. Francés','13',NULL,'2018-05-26 16:20:30','2018-05-26 16:20:30','2',NULL,NULL),(101,14,NULL,'DNS','María Paz Alvarez Gassano',NULL,'Centro Atlético Formativo','15',NULL,'2018-05-26 16:21:29','2018-05-26 19:39:57','',NULL,NULL),(103,14,NULL,'DNS','Mariana Sanhueza Welsh',NULL,'OASSI','13',NULL,'2018-05-26 16:22:09','2018-05-26 19:39:59','',NULL,NULL),(104,15,1,'13.74','Margarita Hubner',NULL,'C. D. Pilauco','10',NULL,'2018-05-26 16:23:51','2018-05-26 19:41:30','1',NULL,NULL),(105,15,2,'13.88','Fernanda Saavedra Diaz',NULL,'A. Francés','13',NULL,'2018-05-26 16:23:51','2018-05-26 19:40:50','5',NULL,NULL),(106,15,3,'15.79','Melany Rocío Guerrero Chayle',NULL,'A. Copiapó','3',NULL,'2018-05-26 16:23:51','2018-05-26 19:42:01','6',NULL,NULL),(107,15,NULL,'DNS','Irina Andrea Toth Mena',NULL,'A. Ingles','4',NULL,'2018-05-26 16:23:51','2018-05-26 19:42:29','',NULL,NULL),(108,15,NULL,'DNS','Maria del Carmen Guzman Karadim',NULL,'CDUC','13',NULL,'2018-05-26 16:23:51','2018-05-26 19:41:02','',NULL,NULL),(109,15,NULL,'DNS','Josefa Inostroza Maldnado',NULL,'C. Liceo de Curicó','7',NULL,'2018-05-26 16:23:51','2018-05-27 14:24:35','',NULL,NULL),(110,15,NULL,'DNS','Francisca Cespedes Valenzuela',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 16:23:51','2018-05-27 14:24:54','',NULL,NULL),(111,15,NULL,'DNS','Antonia Isidora Moya Ortiz',NULL,'C. Galgos Runners Linares','7',NULL,'2018-05-26 16:23:51','2018-05-27 14:25:22','',NULL,NULL),(112,16,1,'14.19','Renata Isidora Álvarez Correa',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 16:29:29','2018-05-27 14:25:54','6',NULL,NULL),(113,16,2,'14.61','Franchesca Espinoza Alarcon',NULL,'A. Cauquenes','7',NULL,'2018-05-26 16:29:29','2018-05-27 14:26:41','4',NULL,NULL),(114,16,3,'14.85','Francisca Fabio Sepulveda',NULL,'A. Santiago','13',NULL,'2018-05-26 16:29:29','2018-05-26 19:42:50','8',NULL,NULL),(115,16,4,'14.91','Maria Paz Romero Manriquez',NULL,'A. Ingles','4',NULL,'2018-05-26 16:29:29','2018-05-26 19:42:45','7',NULL,NULL),(116,16,5,'17.50','Tania Loreto Garcés Schnettler',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 16:29:29','2018-05-27 14:26:44','2',NULL,NULL),(117,16,NULL,'DNS','Josefa Antonia Valenzuela Pavez',NULL,'C. Piduco Talca','6',NULL,'2018-05-26 16:29:29','2018-05-27 14:27:03','',NULL,NULL),(118,16,NULL,'DNS','Josefa Antonia Orellana Valdes',NULL,'C. Génesis','6',NULL,'2018-05-26 16:29:29','2018-05-27 14:27:24','',NULL,NULL),(119,17,1,'14.07','Piera Peña Gambetta',NULL,'A. Santiago','13',NULL,'2018-05-26 16:34:36','2018-05-26 19:43:38','6',NULL,NULL),(120,17,2,'14.48','Magdalena Antonia Gandolfo Almo',NULL,'C. A. O’Higgins','5',NULL,'2018-05-26 16:34:37','2018-05-26 19:43:44','5',NULL,NULL),(121,17,3,'14.59','Katalina  Ríos  Melipil',NULL,'C. A. Ñielol','9',NULL,'2018-05-26 16:34:37','2018-05-27 14:27:52','7',NULL,NULL),(122,17,4,'14.63','Ignacia Mirely Cheipul Cabrera',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 16:34:37','2018-05-27 14:27:37','8',NULL,NULL),(123,17,5,'15.47','Chester Avila Salas',NULL,'A. Cauquenes','7',NULL,'2018-05-26 16:34:37','2018-05-27 14:27:33','2',NULL,NULL),(124,17,NULL,'DQ','Constanza Escudero Cartes',NULL,'A. Coquimbo','4',NULL,'2018-05-26 16:34:37','2018-05-26 19:43:49','',NULL,NULL),(125,17,NULL,'DNS','Fernanda Gonzalez Gomez',NULL,'C. A. Parral','7',NULL,'2018-05-26 16:34:37','2018-05-27 14:28:20','',NULL,NULL),(126,18,1,'13.57','Ornella Casareggio Alonso',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 16:38:13','2018-05-27 14:28:30','3.0',NULL,NULL),(127,18,NULL,'DNS','Anais  Valentina Hernandez Aleg',NULL,'C. A. Nacional Iquique','1',NULL,'2018-05-26 16:38:13','2018-05-27 14:28:33','4.0',NULL,NULL),(128,18,NULL,'DNS','Anabela Marisol Lagos Luna',NULL,'C. A. Nacional Iquique','1',NULL,'2018-05-26 16:38:13','2018-05-27 14:28:36','5.0',NULL,NULL),(129,18,NULL,'DNS','Evelyn Alejandra Caro Guevara',NULL,'C. A. Tamarugo','1',NULL,'2018-05-26 16:38:13','2018-05-27 14:28:39','6.0',NULL,NULL),(130,19,1,'11.59','Juan Pablo Nordetti Llul',NULL,'CDUC','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:39:58','4',NULL,NULL),(131,19,2,'12.33','Vicente Perez Pellegrini',NULL,'A. Santiago','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:01','5',NULL,NULL),(132,19,3,'12.73','Alfredo Vicari Torres',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:06','7',NULL,NULL),(133,19,4,'13.25','Ignacio Orellana Gonzalez',NULL,'OASSI','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:08','2',NULL,NULL),(134,19,NULL,'DNS','Juan Pablo Baeza Jarpa',NULL,'A. Santiago','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:10','3',NULL,NULL),(135,19,NULL,'DNS','Julian Murgia Nuñez',NULL,'OASSI','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:13','6',NULL,NULL),(136,19,NULL,'DNS','Gabriel Escalona Ilabaca',NULL,'OASSI','13',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:17','8',NULL,NULL),(137,19,NULL,'DNS','Eduardo Rodas Alfaro',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 16:44:54','2018-05-27 14:40:19','1',NULL,NULL),(138,20,1,'12.09','Manuel Gonzalez Mallol',NULL,'A. Santiago','13',NULL,'2018-05-26 16:47:57','2018-05-27 14:40:23','4',NULL,NULL),(139,20,2,'13.19','Joaquin Vicente Lopehandia Zepe',NULL,'A. Ingles','4',NULL,'2018-05-26 16:47:57','2018-05-27 14:40:26','1',NULL,NULL),(140,20,3,'13.21','Ricardo Fenandez Arce',NULL,'C. de Atletismo Juan Silva de L','8',NULL,'2018-05-26 16:47:57','2018-05-27 14:40:46','2',NULL,NULL),(141,20,4,'13.24','Diego Hormazabal Torres',NULL,'A. Cauquenes','7',NULL,'2018-05-26 16:47:57','2018-05-27 14:40:49','6',NULL,NULL),(142,20,5,'13.93','Fabian Ferrufino Robledo',NULL,'A. Copiapó','3',NULL,'2018-05-26 16:47:57','2018-05-27 14:40:51','8',NULL,NULL),(143,20,NULL,'DNS','David Ignacio Jarpa Venegas',NULL,'C. A. Nekuln Galgos (Chillan Vi','8',NULL,'2018-05-26 16:47:57','2018-05-27 14:41:20','5',NULL,NULL),(144,20,NULL,'DNS','Bolívar Alberto Lee Caniguan',NULL,'C. A. Nahuelbuta Angol','9',NULL,'2018-05-26 16:47:57','2018-05-27 14:41:37','3',NULL,NULL),(145,20,NULL,'DNS','Renato  Domínguez Olmos',NULL,'A. Francés','13',NULL,'2018-05-26 16:47:57','2018-05-27 14:41:39','7',NULL,NULL),(146,21,1,'11.68','Pedro Reyes Parada',NULL,'A. Santiago','13',NULL,'2018-05-26 16:50:15','2018-05-27 14:41:44','4',NULL,NULL),(147,21,2,'12.38','Benjamin Felipe Miranda Toledo',NULL,'C. Génesis','6',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:11','6',NULL,NULL),(148,21,3,'12.44','Cristobal Alejandro Salazar Ala',NULL,'C. Génesis','6',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:12','7',NULL,NULL),(149,21,4,'13.38','Luciano Aros Acuña',NULL,'C. D. Bernardo Felmer','14',NULL,'2018-05-26 16:50:15','2018-05-27 14:43:10','8',NULL,NULL),(150,21,NULL,'DNS','Antonio Santana Muñoz',NULL,'A. de A. Castro','10',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:55','5',NULL,NULL),(151,21,NULL,'DNS','Gabriel Muñoz Squella',NULL,'A. Santiago','13',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:18','3',NULL,NULL),(152,21,NULL,'DNS','Pedro Krebs Saez',NULL,'A. San Ignacio','13',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:19','2',NULL,NULL),(153,21,NULL,'DNS','Nicanor Millan Viejo',NULL,'C.D. Windsor School','14',NULL,'2018-05-26 16:50:15','2018-05-27 14:42:37','1',NULL,NULL),(154,22,1,'11.68','Luis Ferney Riasco Riasco',NULL,'C. Chuquicamata','2',NULL,'2018-05-26 16:54:31','2018-05-27 14:44:34','4',NULL,NULL),(155,22,2,'12.00','Andrés Refusta Fuentes',NULL,'CDUC','13',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:24','1',NULL,NULL),(156,22,3,'12.01','Ignacio Aguayo Cifuentes',NULL,'C. A. Phoenix','9',NULL,'2018-05-26 16:54:31','2018-05-27 14:44:15','3',NULL,NULL),(157,22,4,'13.16','Michel Orellana Gonzalez',NULL,'OASSI','13',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:25','2',NULL,NULL),(158,22,5,'13.32','Pablo Moya Guztamente',NULL,'A. Cauquenes','7',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:28','5',NULL,NULL),(159,22,6,'13.32','Carlos Ibarra Allende',NULL,'C. Liceo de Curicó','7',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:32','6',NULL,NULL),(160,22,7,'13.35','Agustin Urizar Arenas',NULL,'A. San Ignacio','13',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:37','8',NULL,NULL),(161,22,NULL,'DNS','Bastian Canales Valenzuela',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-26 16:54:31','2018-05-27 14:43:52','7',NULL,NULL),(162,23,1,'11.79','Rodrigo Cerda',NULL,'C. D. Pilauco','10',NULL,'2018-05-26 16:59:17','2018-05-27 14:46:36','4',NULL,NULL),(163,23,2,'12.06','Benjamín Emilio Villa Castro',NULL,'C. A. Nahuelbuta Angol','9',NULL,'2018-05-26 16:59:17','2018-05-27 14:45:30','3',NULL,NULL),(164,23,3,'12.19','Clemente Ruiz Bianchini',NULL,'CDUC','13',NULL,'2018-05-26 16:59:17','2018-05-27 14:45:32','1',NULL,NULL),(165,23,4,'12.59','Luis Hernandez Gonzalez',NULL,'C. Liceo de Curicó','7',NULL,'2018-05-26 16:59:17','2018-05-27 14:45:34','6',NULL,NULL),(166,23,5,'12.85','Lucas  Díaz  Hernandez',NULL,'A. Francés','13',NULL,'2018-05-26 16:59:17','2018-05-27 14:45:39','7',NULL,NULL),(167,23,6,'13.50','Francisco Javier Chiuminatto Mu',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 16:59:17','2018-05-27 14:45:41','5',NULL,NULL),(168,23,7,'13.83','Felipe Sepulveda Cordero',NULL,'U. de Tarapaca','15',NULL,'2018-05-26 16:59:17','2018-05-27 14:46:07','2',NULL,NULL),(169,23,NULL,'DNS','Nahel Silva Fuentes',NULL,'OASSI','13',NULL,'2018-05-26 16:59:17','2018-05-27 14:46:09','8',NULL,NULL),(170,24,1,'12.06','Agustin Valdes Zegers',NULL,'A. Santiago','13',NULL,'2018-05-26 17:04:15','2018-05-27 14:46:41','5',NULL,NULL),(171,24,2,'12.41','Damian Godoy Poblete',NULL,'A. Nancagua','6',NULL,'2018-05-26 17:04:15','2018-05-27 14:48:07','6',NULL,NULL),(172,24,3,'12.48','Jose Vicente Peña Alvarado',NULL,'C. Génesis','6',NULL,'2018-05-26 17:04:15','2018-05-27 14:46:53','7',NULL,NULL),(173,24,4,'12.51','Martín Steffens',NULL,'CDUC','13',NULL,'2018-05-26 17:04:15','2018-05-27 14:46:54','1',NULL,NULL),(174,24,5,'13.01','Salvador La Corte Castro',NULL,'A. San Ignacio','13',NULL,'2018-05-26 17:04:15','2018-05-27 14:46:57','8',NULL,NULL),(175,24,6,'13.52','Gabriel Fuentes Montes',NULL,'A. San Ignacio','13',NULL,'2018-05-26 17:04:15','2018-05-27 14:46:59','2',NULL,NULL),(176,24,NULL,'DNS','Matias Francisco Salgado Menese',NULL,'C. Nilda Rojas','2',NULL,'2018-05-26 17:04:15','2018-05-27 14:47:40','4',NULL,NULL),(177,24,NULL,'DNS','Paulo Noemi Zuleta',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 17:04:15','2018-05-27 14:47:04','3',NULL,NULL),(178,25,1,'12.02','Benjamin Rojas krause',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-26 17:07:18','2018-05-27 14:50:23','3',NULL,NULL),(179,25,2,'12.08','Bruno Rickemberg Benedetti',NULL,'A. Santiago','13',NULL,'2018-05-26 17:07:18','2018-05-27 14:48:14','4',NULL,NULL),(180,25,3,'12.30','Alexis Macaya Arellano',NULL,'A. Cauquenes','7',NULL,'2018-05-26 17:07:18','2018-05-27 14:49:10','5',NULL,NULL),(181,25,4,'12.71','Ignacio Campos Del Saz',NULL,'C. A. Parral','7',NULL,'2018-05-26 17:07:18','2018-05-27 14:49:50','7',NULL,NULL),(182,25,5,'12.90','Gabriel Abid Gallardo Marin',NULL,'A. Coquimbo','4',NULL,'2018-05-26 17:07:18','2018-05-27 14:49:15','2',NULL,NULL),(183,25,6,'13.24','Benjamin Alfaro Escobar',NULL,'A. Nancagua','6',NULL,'2018-05-26 17:07:18','2018-05-27 14:48:23','6',NULL,NULL),(184,25,7,'13.44','Eduardo Alvarez Mohr',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-26 17:07:18','2018-05-27 14:49:31','1',NULL,NULL),(185,25,NULL,'DNS','Fabrizio Arias Terrone',NULL,'A. San Ignacio','13',NULL,'2018-05-26 17:07:18','2018-05-27 14:48:25','8',NULL,NULL),(186,26,1,'11.80','Joaquín Alberto Miño Farías',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:03','4',NULL,NULL),(187,26,2,'12.09','Joaquín Alberto Pérez Guajardo',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:04','5',NULL,NULL),(188,26,3,'12.66','Yasser Ismail Llanquinao',NULL,'C. A. Phoenix',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:08','3',NULL,NULL),(189,26,4,'12.97','Martin  Escaida Sandoval',NULL,'A. Francés',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:11','6',NULL,NULL),(190,26,5,'13.42','Max Leonardo Davila Delgado',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:14','7',NULL,NULL),(191,26,6,'13.73','Juan Torres Torres',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:17','2',NULL,NULL),(192,26,7,'14.02','Juan Contreras Contreras',NULL,'C. D. Bernardo Felmer',NULL,NULL,'2018-05-26 17:10:50','2018-05-26 17:11:21','8',NULL,NULL),(193,27,1,'5:30.04','Catalina Fernandez Barrientos',NULL,'C. A. Coyhaique',NULL,NULL,'2018-05-26 17:17:52','2018-05-26 17:17:52',NULL,NULL,NULL),(194,27,2,'5:44.47','Dafne  Sandoval   Carrasco',NULL,'C. de Deportes Saavedra',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(195,27,3,'5:55.84','Yarleth Toledo Segovia',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(196,27,4,'5:59.38','Camila  Smith Canovas',NULL,'C. A. Phoenix',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(197,27,5,'6:03.38','Solange Aylin Varas  Jiménez',NULL,'C. Escuela Infantil de Atletism',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(198,27,6,'6:03.49','Valentina Paz López Schalard',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(199,27,7,'7:05.51','Paula Belen Aracena Alvares',NULL,'A. Coquimbo',NULL,NULL,'2018-05-26 17:17:53','2018-05-26 17:17:53',NULL,NULL,NULL),(200,28,1,'4:34.78','Brayan Antonio  Jara  Jara',NULL,'C. A. de Los Angeles',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(201,28,2,'4:47.86','Domingo Court Alicera',NULL,'A. Francés',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(202,28,3,'4:49.68','Jose Ignacio Grau Vargas',NULL,'C. A. Hector Neira',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(203,28,4,'4:56.04','Guillermo Nicolás Sarabia Ledez',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(204,28,5,'4:58.63','Cristobal Jimenez Pasten',NULL,'C. D. S. C. San Antonio',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(205,28,6,'4:59.39','Samuel Millao Diaz',NULL,'C. de Atletismo Punta Arenas',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(206,28,7,'5:07.40','Christian  Urrutia Alarcón',NULL,'A. Francés',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(207,28,8,'5:07.54','Miguel Ignacio Acuña Mellado',NULL,'Cadecu Athletic',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(208,28,9,'5:14.36','Ignacio  Valdez Aravena',NULL,'A. de A. Castro',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(209,28,10,'5:17.59','Javier Segura Dos Santos',NULL,'C. A. Alameda Talca',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(210,28,11,'5:20.10','Gonzalo Morales Godoy',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(211,28,12,'5:22.24','Lukas Alfredo Castro Mollo',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(212,28,NULL,'DNS','Nicolas Andres Dinamarca Pinto',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 17:20:23','2018-05-26 17:20:23',NULL,NULL,NULL),(213,29,1,'12.93','Esperanza Garcia Tapia',NULL,'CDUC',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:09','3',NULL,NULL),(214,29,2,'12.95','Barbara Carrasco Garcia',NULL,'A. Santiago',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:12','5',NULL,NULL),(215,29,3,'13.00','Victoria Rios Castro',NULL,'A. Santiago',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:15','6',NULL,NULL),(216,29,4,'13.18','Gabriela Millaray Zúñiga Olivos',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:17','7',NULL,NULL),(217,29,5,'13.49','Camil Sarai Ponce Márquez',NULL,'Vicente Potrerillos Salinas',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:19','2',NULL,NULL),(218,29,6,'13.61','Carola Scheihing Ballesteros',NULL,'Escuela de Atletismo Osorno',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:22','8',NULL,NULL),(219,29,7,'13.70','Khaterine Hornig Angulo',NULL,'C. A. Gerardo Manzanares',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:25','1',NULL,NULL),(220,29,NULL,'DNS','Claudia Daniela Pimentel Cruz',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 18:08:02','2018-05-26 18:08:02',NULL,NULL,NULL),(221,30,1,'11.42','Juan Pablo Nordetti Llul',NULL,'CDUC','13',NULL,'2018-05-26 18:14:13','2018-05-26 19:45:56','4',NULL,NULL),(222,30,2,'11.56','Pedro Reyes Parada',NULL,'A. Santiago','13',NULL,'2018-05-26 18:14:13','2018-05-26 19:46:00','3',NULL,NULL),(223,30,3,'11.68','Joaquín Alberto Miño Farías',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 18:14:13','2018-05-26 19:46:26','7',NULL,NULL),(224,30,4,'12.00','Benjamin Rojas krause',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-26 18:14:13','2018-05-26 19:47:48','1',NULL,NULL),(225,30,5,'12.30','Rodrigo Cerda',NULL,'C. D. Pilauco','10',NULL,'2018-05-26 18:14:13','2018-05-26 19:46:53','6',NULL,NULL),(226,30,NULL,'DNS','Luis Ferney Riasco Riasco',NULL,'C. Chuquicamata','2',NULL,'2018-05-26 18:14:13','2018-05-26 19:47:32','',NULL,NULL),(227,30,NULL,'DNS','Andrés Refusta Fuentes',NULL,'CDUC','13',NULL,'2018-05-26 18:14:13','2018-05-26 19:46:56','',NULL,NULL),(228,30,NULL,'DNS','Ignacio Aguayo Cifuentes',NULL,'C. A. Phoenix','9',NULL,'2018-05-26 18:14:13','2018-05-26 19:47:15','',NULL,NULL),(229,31,1,'15.37','Martina Zepeda  Pedemonte',NULL,'A. Atacama','3',NULL,'2018-05-26 18:28:41','2018-05-26 19:49:14','4',NULL,NULL),(230,31,2,'16.56','Nayeli Schwenke Ramirez',NULL,'C. A. Coyhaique','11',NULL,'2018-05-26 18:28:41','2018-05-26 19:49:32','3',NULL,NULL),(231,31,3,'16.83','Nisty Esperanza Araya Saavedra',NULL,'A. Ingles','4',NULL,'2018-05-26 18:28:41','2018-05-26 19:48:33','8',NULL,NULL),(232,31,4,'17.55','Khaterine Hornig Angulo',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-26 18:28:41','2018-05-26 19:49:54','5',NULL,NULL),(233,31,NULL,'DNS','Rocio Barrientos Crispieri',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 18:28:41','2018-05-26 19:50:33','6',NULL,NULL),(234,31,NULL,'DNS','Francisca Cespedes Valenzuela',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 18:28:41','2018-05-26 19:50:35','7',NULL,NULL),(235,31,NULL,'DNS','Amanda Gil Amanda',NULL,'Manquehue','13',NULL,'2018-05-26 18:28:41','2018-05-26 19:48:38','2',NULL,NULL),(236,32,1,'16.29','Mathilde Sandrock Cox',NULL,'Manquehue','13',NULL,'2018-05-26 18:31:34','2018-05-26 19:50:48','2',NULL,NULL),(237,32,2,'16.43','Florencia Ampuero Sanchez',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-26 18:31:34','2018-05-26 19:50:57','4',NULL,NULL),(238,32,3,'16.94','Carola Scheihing Ballesteros',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-26 18:31:34','2018-05-26 19:55:19','8',NULL,NULL),(239,32,4,'17.20','Daniela  Charme  Soto',NULL,'CDUC','10',NULL,'2018-05-26 18:31:34','2018-05-26 19:51:00','7',NULL,NULL),(240,32,5,'19.33','Josefa Valdera Ramos',NULL,'Academia Iquique Bajo Molle','1',NULL,'2018-05-26 18:31:34','2018-05-26 19:55:26','3',NULL,NULL),(241,32,6,'19.87','Renata Isidora Álvarez Correa',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 18:31:34','2018-05-26 19:51:04','5',NULL,NULL),(242,32,NULL,'DNS','Anthar Gipoulou Pizarro',NULL,'C.D. Windsor School','14',NULL,'2018-05-26 18:31:34','2018-05-26 19:51:23','6',NULL,NULL),(243,33,1,'15.39','Maria Ignacia  Rosales  Aguiler',NULL,'CDUC','13',NULL,'2018-05-26 18:43:30','2018-05-26 19:55:46','4',NULL,NULL),(244,33,NULL,'DQ','Elisa Keitel  Rondon',NULL,'CDUC','13',NULL,'2018-05-26 18:43:30','2018-05-26 19:55:57','-',NULL,NULL),(245,33,NULL,'DNS','Anabela Marisol Lagos Luna',NULL,'C. A. Nacional Iquique','1',NULL,'2018-05-26 18:43:30','2018-05-26 19:56:28','-',NULL,NULL),(246,34,1,'15.38','Nicanor Millar',NULL,'Windsor School','14',NULL,'2018-05-26 18:57:22','2018-05-28 19:57:37','1',NULL,NULL),(247,34,2,'15.42','Lucas Palacios Undurraga',NULL,'Manquehue','13',NULL,'2018-05-26 18:57:22','2018-05-28 19:54:34','3',NULL,NULL),(248,34,3,'15.43','Pedro  Morales Delano',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 18:57:22','2018-05-28 19:59:26','5',NULL,NULL),(249,34,4,'15.86','Diego Gonzalez Martinez',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-26 18:57:22','2018-05-28 19:54:21','6',NULL,NULL),(250,34,5,'16.00','Joaquin Mondaca Fellenberg',NULL,'A. San Ignacio','13',NULL,'2018-05-26 18:57:22','2018-05-28 19:59:47','7',NULL,NULL),(251,34,6,'17.68','Eduardo Rodas Alfaro',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 18:57:22','2018-05-28 19:59:23','2',NULL,NULL),(252,34,7,'17.69','Juan Manuel Espinosa Valenzuela',NULL,'A. San Ignacio','13',NULL,'2018-05-26 18:57:22','2018-05-28 19:59:49','8',NULL,NULL),(253,34,NULL,'DNS','Joaquín Alberto Miño Farías',NULL,'C. Marista Curicó','7',NULL,'2018-05-26 18:57:22','2018-05-28 20:00:10','4',NULL,NULL),(254,35,1,'14.51','Matías Gonzalez Romero',NULL,'Manquehue','13',NULL,'2018-05-26 19:00:46','2018-05-28 19:55:07','6',NULL,NULL),(255,35,2,'14.60','Joel Vallejos Alvarado',NULL,'A. Copiapó','3',NULL,'2018-05-26 19:00:46','2018-05-28 20:01:03','7',NULL,NULL),(256,35,3,'14.62','Benjamin Alonso Gutierrez Nuñez',NULL,'C. Génesis','6',NULL,'2018-05-26 19:00:46','2018-05-28 20:00:23','4',NULL,NULL),(257,35,4,'15.83','Martin Olavarria Jara',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-26 19:00:46','2018-05-28 19:55:21','2',NULL,NULL),(258,35,5,'16.75','Eduardo Alvarez Mohr',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-26 19:00:46','2018-05-28 19:55:17','1',NULL,NULL),(259,35,6,'18.90','Cristoper Colombi Yañez',NULL,'A. Cauquenes','7',NULL,'2018-05-26 19:00:46','2018-05-28 19:58:09','8',NULL,NULL),(260,35,NULL,'DNS','Pedro Irarrazaval Valdes',NULL,'A. Santiago','13',NULL,'2018-05-26 19:00:46','2018-05-28 19:55:14','5',NULL,NULL),(261,35,NULL,'DNS','Sebastían Sotomayor Mestre',NULL,'Manquehue','13',NULL,'2018-05-26 19:00:46','2018-05-28 19:55:11','3',NULL,NULL),(262,36,1,'14.58','Alexander Vega Stamm',NULL,'CDUC','13',NULL,'2018-05-26 19:03:55','2018-05-28 19:55:31','5',NULL,NULL),(263,36,2,'16.08','Pedro Costa Aguirre',NULL,'C. A. Pacífico','5',NULL,'2018-05-26 19:03:55','2018-05-28 19:59:07','6',NULL,NULL),(264,36,3,'16.88','Mauricio Irribarren Poyanopulos',NULL,'Centro Atlético Formativo','15',NULL,'2018-05-26 19:03:55','2018-05-28 20:03:36','4',NULL,NULL),(265,36,4,'17.57','Maximiliano Rosmanich Bravo',NULL,'A. Santiago','13',NULL,'2018-05-26 19:03:55','2018-05-28 19:58:19','8',NULL,NULL),(266,36,NULL,'DNS','Cristobal Bernales Magnere',NULL,'A. Santiago','13',NULL,'2018-05-26 19:03:55','2018-05-28 19:55:39','3',NULL,NULL),(267,36,NULL,'DNS','Santiago Perez Pellegrini',NULL,'A. Santiago','13',NULL,'2018-05-26 19:03:55','2018-05-28 19:55:41','7',NULL,NULL),(268,36,NULL,'DNS','Matias Adrian Tapia Lucero',NULL,'C. A. Nacional Iquique','1',NULL,'2018-05-26 19:03:55','2018-05-28 20:02:46','2',NULL,NULL),(269,36,NULL,'DNS','Diego Ibacache Basaez',NULL,'C. A. Limache','5',NULL,'2018-05-26 19:03:55','2018-05-28 20:02:41','1',NULL,NULL),(270,37,1,'13.96','Martín Saenz  De Santa Maria Jarry',NULL,'CDUC','13',NULL,'2018-05-26 19:17:13','2018-05-28 19:56:35','2',NULL,NULL),(271,37,2,'14.72','Cristobal Victoriano Mora',NULL,'Centro Atlético Formativo','15',NULL,'2018-05-26 19:17:13','2018-05-28 20:03:54','5',NULL,NULL),(328,45,1,'41.58','María Paz Alvarez Gassano',NULL,'Centro Atlético Formativo',NULL,NULL,'2018-05-26 20:02:41','2018-05-26 20:02:47','4',NULL,NULL),(329,45,2,'42.58','Florencia Maria Paz Ortigosa Pe',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 20:02:41','2018-05-26 20:02:50','5',NULL,NULL),(330,45,3,'43.03','Monserrat Ignacia  Salamanca  G',NULL,'C. A. Ñielol',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:02:53','7',NULL,NULL),(331,45,4,'43.48','Elizabeth Arriagada Morales',NULL,'OASSI',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:02:56','3',NULL,NULL),(332,45,5,'43.67','Julieta Zuñiga Tobar',NULL,'OASSI',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:02:57','6',NULL,NULL),(333,45,6,'44.09','Francisca Antonia  Torres  Quin',NULL,'C. A. Ñielol',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:03:00','8',NULL,NULL),(334,45,7,'48.46','Amelia Molinos Rillón',NULL,'CDUC',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:03:02','2',NULL,NULL),(335,45,NULL,'DNS','Arami Fuenzalida Godoy',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 20:02:42','2018-05-26 20:03:04','1',NULL,NULL),(336,46,1,'43.85','Maura  Martinez Mayorga',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:09','3',NULL,NULL),(337,46,2,'45.59','Maria Jesus Infante Cox',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:11','8',NULL,NULL),(338,46,3,'48.69','Josefa Ignacia Ibañez Salinas',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:15','1',NULL,NULL),(339,46,NULL,'DQ','Piera Peña Gambetta',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:27','6',NULL,NULL),(340,46,NULL,'DNS','Victoria Rios Castro',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:17','4',NULL,NULL),(341,46,NULL,'DNS','Anastasia Lamoliatte Ovalle',NULL,'CDUC',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:20','5',NULL,NULL),(342,46,NULL,'DNS','Claudia Daniela Pimentel Cruz',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:22','7',NULL,NULL),(343,46,NULL,'DNS','Moira Alejandra Muller Sandoval',NULL,'C. Nilda Rojas',NULL,NULL,'2018-05-26 20:05:39','2018-05-26 20:08:24','2',NULL,NULL),(344,47,1,'45.01','Florencia  Millar Ponce',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:08:50','8',NULL,NULL),(345,47,2,'48.06','Francisca Fabio Sepulveda',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:08:52','6',NULL,NULL),(346,47,3,'48.20','Dafne Anais Reyes',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:08:55','1',NULL,NULL),(347,47,4,'48.24','Magdalena Antonia Gandolfo Almo',NULL,'C. A. O’Higgins',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:08:57','2',NULL,NULL),(348,47,5,'50.41','Gabriela Reyes Barrientos',NULL,'C. A. Hector Neira',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:08:59','7',NULL,NULL),(349,47,NULL,'DNS','Maria del Carmen Guzman Karadim',NULL,'CDUC',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:09:01','4',NULL,NULL),(350,47,NULL,'DNS','Ignacia Mirely Cheipul Cabrera',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:09:04','5',NULL,NULL),(351,47,NULL,'DNS','Tamara Lopez Vera',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:08:43','2018-05-26 20:09:08','3',NULL,NULL),(352,48,1,'46.90','Sofía   Sánchez  Acevedo',NULL,'A. Harambeé',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:44','5',NULL,NULL),(353,48,2,'47.82','Natalie Paulina Sepulveda  Delb',NULL,'C. D. San Pablo (Chiguayante)',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:47','8',NULL,NULL),(354,48,3,'48.15','Catalina Andrea Leiva  Bascur',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:50','2',NULL,NULL),(355,48,4,'48.58','Fernanda Saavedra Diaz',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:52','6',NULL,NULL),(356,48,5,'49.57','Renata Álvarez Parraguez',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:55','7',NULL,NULL),(357,48,6,'49.84','Barbara Olivares Escanilla',NULL,'YKA',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:57','3',NULL,NULL),(358,48,NULL,'DNS','Tania Loreto Garcés Schnettler',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:11:59','4',NULL,NULL),(359,48,NULL,'DNS','Ayleen Amaya Casanova López',NULL,'C. A. O’Higgins',NULL,NULL,'2018-05-26 20:11:36','2018-05-26 20:12:02','1',NULL,NULL),(360,49,1,'45.89','Valentina  Medina Recabarren',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:43','1',NULL,NULL),(361,49,2,'47.43','Sofia Hernandez Torres',NULL,'Galvarino Riveros Castro',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:45','6',NULL,NULL),(362,49,3,'48.00','Ignacia  Pinto  Parraguez',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:47','5',NULL,NULL),(363,49,4,'49.32','Francisca  Reyes Martinez',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:50','3',NULL,NULL),(364,49,5,'50.69','Rocio Carvajal San Martin',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:52','4',NULL,NULL),(365,49,NULL,'DQ','Franchesca Espinoza Alarcon',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:15:00','7',NULL,NULL),(366,49,NULL,'DNS','Maria Angelica Trujillo Muñoz',NULL,'A. Nancagua',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:55','8',NULL,NULL),(367,49,NULL,'DNS','Cecilia Millaray Mellado Carvaj',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:14:35','2018-05-26 20:14:57','2',NULL,NULL),(368,50,1,'47.88','Sofia Torres Letelier',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:44','4',NULL,NULL),(369,50,2,'48.02','Javiera Nazaret  Barbosa  Milla',NULL,'C. A. Ñielol',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:47','6',NULL,NULL),(370,50,3,'53.51','Javiera Sanchez Caceres',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:49','5',NULL,NULL),(371,50,NULL,'DNS','Constanza Antonia Gamboa Tapia',NULL,'C. A. O’Higgins',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:51','3',NULL,NULL),(372,50,NULL,'DNS','Camila  Toro  Cerda',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:53','7',NULL,NULL),(373,50,NULL,'DNS','Eva Luna Rivera Cardenas',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:55','8',NULL,NULL),(374,50,NULL,'DNS','Carmen Gonzalez Escobar',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:17:57','2',NULL,NULL),(375,50,NULL,'DNS','Antonia Suerez Escobar',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:17:31','2018-05-26 20:18:01','1',NULL,NULL),(376,51,1,'49.75','Sofia Durand Silva',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:02','5',NULL,NULL),(377,51,2,'50.37','Helga Schaffer Almonacid',NULL,'Ulagos Pto.Montt',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:04','8',NULL,NULL),(378,51,3,'52.16','Ignacia Benavides Yevenes',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:07','7',NULL,NULL),(379,51,4,'53.55','Pia Gonzalez Chavez',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:10','3',NULL,NULL),(380,51,NULL,'DNS','Mariela  Cornejo Molina',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:13','4',NULL,NULL),(381,51,NULL,'DNS','Constanza Pineda Campos',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:15','6',NULL,NULL),(382,51,NULL,'DNS','Maria Consuelo Sanchez',NULL,'Ulagos Pto.Montt',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:17','2',NULL,NULL),(383,51,NULL,'DNS','Irina Andrea Toth Mena',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:20:36','2018-05-26 20:21:19','1',NULL,NULL),(384,52,1,'45.34','Nicole Darritchon Lama',NULL,'CDUC',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:23:58','8',NULL,NULL),(385,52,2,'47.81','Antonia Isidora Moya Ortiz',NULL,'C. Galgos Runners Linares',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:00','3',NULL,NULL),(386,52,3,'50.33','Maria Paz Romero Manriquez',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:02','6',NULL,NULL),(387,52,4,'51.70','Syomara Batarce Campos',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:07','4',NULL,NULL),(388,52,5,'53.52','Martina Gomez Valenzuela',NULL,'Academia Iquique Bajo Molle',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:09','1',NULL,NULL),(389,52,6,'53.74','Isidora Saez Alvarez',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:13','5',NULL,NULL),(390,52,7,'53.91','Sara Ramos',NULL,'Iquique',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:15','7',NULL,NULL),(391,52,NULL,'DNS','Esperanza Garcia Tapia',NULL,'CDUC',NULL,NULL,'2018-05-26 20:23:45','2018-05-26 20:24:18','2',NULL,NULL),(392,38,1,'37.72','Pedro Roach Matesic',NULL,'CDUC',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:11','6',NULL,NULL),(393,38,2,'38.20','Nicanor Millan Viejo',NULL,'C.D. Windsor School',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:13','2',NULL,NULL),(394,38,3,'39.07','Manuel Gonzalez Mallol',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:15','5',NULL,NULL),(395,38,4,'42.85','Carlos Ibarra Allende',NULL,'C. Liceo de Curicó',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:18','7',NULL,NULL),(396,38,NULL,'DNS','Matias Francisco Salgado Menese',NULL,'C. Nilda Rojas',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:20','4',NULL,NULL),(397,38,NULL,'DNS','Luis Ferney Riasco Riasco',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:22','3',NULL,NULL),(398,38,NULL,'DNS','Pedro Reyes Parada',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:24','8',NULL,NULL),(399,38,NULL,'DNS','Paulo Noemi Zuleta',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 20:29:03','2018-05-26 20:29:27','1',NULL,NULL),(400,39,1,'38.21','Joaquin Miño',NULL,'C. A. Maristas',NULL,NULL,'2018-05-26 20:31:52','2018-05-26 20:31:59','1',NULL,NULL),(401,39,2,'38.95','Ignacio Aguayo Cifuentes',NULL,'C. A. Phoenix',NULL,NULL,'2018-05-26 20:31:52','2018-05-26 20:32:01','7',NULL,NULL),(402,39,3,'39.86','Felipe Navarro Garrido',NULL,'A. Coquimbo',NULL,NULL,'2018-05-26 20:31:52','2018-05-26 20:32:03','4',NULL,NULL),(403,39,4,'40.96','Felipe Valenzuela León',NULL,'OASSI',NULL,NULL,'2018-05-26 20:31:52','2018-05-26 20:32:05','5',NULL,NULL),(404,39,5,'41.05','Alfredo Vicari Torres',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 20:31:52','2018-05-26 20:32:07','3',NULL,NULL),(405,39,6,'43.02','Yasser Ismail Llanquinao',NULL,'C. A. Phoenix',NULL,NULL,'2018-05-26 20:31:53','2018-05-26 20:32:09','2',NULL,NULL),(406,39,NULL,'DQ','Benjamin Rojas krause',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 20:31:53','2018-05-26 20:32:13','6',NULL,NULL),(407,39,NULL,'DNS','Antonio Santana Muñoz',NULL,'A. de A. Castro',NULL,NULL,'2018-05-26 20:31:53','2018-05-26 20:32:11','8',NULL,NULL),(408,40,1,'39.42','Rodrigo Manriquez Lujan',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','7.0',NULL,NULL),(409,40,2,'40.51','Joaquín Alberto Pérez Guajardo',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','6.0',NULL,NULL),(410,40,3,'43.19','Joaquin Muñoz Robles',NULL,'C. de Atletismo Juan Silva de L',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','5.0',NULL,NULL),(411,40,4,'43.32','Francisco Javier Chiuminatto Mu',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','2.0',NULL,NULL),(412,40,5,'44.00','Francisco Barrios Lara',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','3.0',NULL,NULL),(413,40,6,'44.65','Sebastian Bartesaghi Viola',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','8.0',NULL,NULL),(414,40,7,'45.79','Felipe Sepulveda',NULL,'UTA',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','1.0',NULL,NULL),(415,40,NULL,'DNS','Bastian Canales Valenzuela',NULL,'C. A. Alameda Talca',NULL,NULL,'2018-05-26 20:35:25','2018-05-26 20:35:25','4.0',NULL,NULL),(416,41,1,'40.47','Benjamin Miranda',NULL,'C. A. Genesis',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:02','1',NULL,NULL),(417,41,2,'41.50','Harumatsu  Kanda',NULL,'A. Harambeé',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:05','4',NULL,NULL),(418,41,3,'41.98','Martin  Escaida Sandoval',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:07','2',NULL,NULL),(419,41,4,'42.05','Ricardo Fenandez Arce',NULL,'C. de Atletismo Juan Silva de L',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:09','5',NULL,NULL),(420,41,5,'42.41','Pedro Javier Veliz Caro',NULL,'A. Coquimbo',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:11','3',NULL,NULL),(421,41,6,'43.01','Gabriel Abid Gallardo Marin',NULL,'A. Coquimbo',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:13','8',NULL,NULL),(422,41,NULL,'DNS','Damian Godoy Poblete',NULL,'A. Nancagua',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:15','6',NULL,NULL),(423,41,NULL,'DNS','Matias  Peña Ortega',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 20:39:53','2018-05-26 20:40:18','7',NULL,NULL),(424,42,1,'40.82','Alexis Macaya Arellano',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:31','2',NULL,NULL),(425,42,2,'42.46','Lucas  Díaz  Hernandez',NULL,'A. Francés',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:33','3',NULL,NULL),(426,42,3,'42.47','Pablo Moya Guztamente',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:37','8',NULL,NULL),(427,42,4,'43.28','Joaquin Irureta Rios',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:39','4',NULL,NULL),(428,42,5,'43.76','Joaquin Vicente Lopehandia Zepe',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:42','6',NULL,NULL),(429,42,NULL,'DNS','Juan Perez Fuentes',NULL,'A. Nancagua',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:45','5',NULL,NULL),(430,42,NULL,'DNS','Pedro Krebs Saez',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:45:20','2018-05-26 20:45:50','7',NULL,NULL),(431,43,1,'40.49','Jason Fabian Santander Riffo',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:08','4',NULL,NULL),(432,43,2,'44.39','Diego Rivera Escobar',NULL,'A. Santiago',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:10','7',NULL,NULL),(433,43,3,'45.81','Juan Torres Torres',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:12','3',NULL,NULL),(434,43,NULL,'DQ','Cristoper Colombi Yañez',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:21','5',NULL,NULL),(435,43,NULL,'DNS','Diego Hormazabal Torres',NULL,'A. Cauquenes',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:14','6',NULL,NULL),(436,43,NULL,'DNS','Salvador La Corte Castro',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:16','8',NULL,NULL),(437,43,NULL,'DNS','Gabriel Fuentes Montes',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 20:47:53','2018-05-26 20:48:18','2',NULL,NULL),(438,44,1,'36.73','Juan Pablo Nordetti Llul',NULL,'CDUC',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:50:59','4',NULL,NULL),(439,44,2,'42.24','Pablo Levil Cantergiani',NULL,'YKA',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:02','3',NULL,NULL),(440,44,3,'43.38','Martin Perello Alvear',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:05','5',NULL,NULL),(441,44,NULL,'DNS','David Hernández Amador',NULL,'C. A. Limache',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:07','8',NULL,NULL),(442,44,NULL,'DNS','Andrés Refusta Fuentes',NULL,'CDUC',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:10','6',NULL,NULL),(443,44,NULL,'DNS','Clemente Ruiz Bianchini',NULL,'CDUC',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:12','7',NULL,NULL),(444,44,NULL,'DNS','Martín Steffens',NULL,'CDUC',NULL,NULL,'2018-05-26 20:50:48','2018-05-26 20:51:14','2',NULL,NULL),(445,53,1,'15.09','Martina Zepeda  Pedemonte',NULL,'A. Atacama',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:23','4',NULL,NULL),(446,53,2,'16.02','Mathilde Sandrock Cox',NULL,'Manquehue',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:25','5',NULL,NULL),(447,53,3,'16.13','Nisty Esperanza Araya Saavedra',NULL,'A. Ingles',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:27','7',NULL,NULL),(448,53,4,'16.18','Florencia Ampuero Sanchez',NULL,'C. A. Gerardo Manzanares',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:29','3',NULL,NULL),(449,53,5,'16.66','Carola Scheihing Ballesteros',NULL,'Escuela de Atletismo Osorno',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:31','8',NULL,NULL),(450,53,6,'16.75','Nayeli Schwenke Ramirez',NULL,'C. A. Coyhaique',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:34','6',NULL,NULL),(451,53,7,'17.19','Khaterine Hornig Angulo',NULL,'C. A. Gerardo Manzanares',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:36','1',NULL,NULL),(452,53,8,'17.23','Daniela  Charme  Soto',NULL,'CDUC',NULL,NULL,'2018-05-26 20:59:14','2018-05-26 20:59:38','2',NULL,NULL),(453,54,1,'14.29','Alexander Vega Stamm',NULL,'CDUC',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','5.0',NULL,NULL),(454,54,2,'14.44','Benjamin Alonso Gutierrez Nuñez',NULL,'C. Génesis',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','6.0',NULL,NULL),(455,54,3,'14.57','Matiás Gonzalez Romero',NULL,'Manquehue',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','4.0',NULL,NULL),(456,54,4,'14.60','Joel Vallejos Alvarado',NULL,'A. Copiapó',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','3.0',NULL,NULL),(457,54,5,'14.89','Pedro  Morales Delano',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','2.0',NULL,NULL),(458,54,6,'15.19','Nicanor Millar',NULL,'Windsor School',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','7.0',NULL,NULL),(459,54,7,'15.49','Lucas Palacios Undurraga',NULL,'Manquehue',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','8.0',NULL,NULL),(460,54,8,'15.79','Martin Olavarria Jara',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 21:09:14','2018-05-26 21:09:14','1.0',NULL,NULL),(461,55,1,'3:01.61','Isidora Rojas Mancilla',NULL,'C. D. Israel Sáez',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(462,55,2,'3:04.85','María Paz Alvarez Gassano',NULL,'Centro Atlético Formativo',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(463,55,3,'3:04.93','Paulina Hernández Vera',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(464,55,4,'3:05.22','Lisette Ureta  Farias',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(465,55,5,'3:09.48','Ignacia Alleguillos Ibarra',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(466,55,6,'3:13.08','Dafne Espinosa Alarcón',NULL,'C. San Ambrosio Linares',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(467,55,7,'3:13.74','Victoria Saldivia Pavez',NULL,'C. de Atletismo Punta Arenas',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(468,55,8,'3:16.16','Martina Vidal Guzman',NULL,'C. A. Puerto Sur',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(469,55,9,'3:16.30','Martina Pradenas Alvarez',NULL,'C. D. Israel Sáez',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(470,55,10,'3:16.52','Francisca  Contreras Remolcoy',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(471,55,11,'3:17.38','Dafne  Sandoval   Carrasco',NULL,'C. de Deportes Saavedra',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(472,55,12,'3:18.12','Giulianna Catalina Retamales Ba',NULL,'C. Galgos Runners Linares',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(473,55,13,'3:22.17','Antonia Belen Rojas Toro',NULL,'C. D. A. Sporting Coquimbo',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(474,55,14,'3:33.11','Hellen Sharlotte Rubio Figueroa',NULL,'C. A. Tres Runners',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(475,55,15,'3:33.32','Rebeca Daniela Morales Gutiérre',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(476,55,16,'3:52.56','Martina Gomez Valenzuela',NULL,'Academia Iquique Bajo Molle',NULL,NULL,'2018-05-26 21:29:43','2018-05-26 21:29:43',NULL,NULL,NULL),(477,56,1,'3:15.75','Emilia Salas Cárdenas',NULL,'Escuela de Atletismo Osorno',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(478,56,2,'3:16.97','Martina Pacheco Jeria',NULL,'C. Pedro Atenas de Casablanca',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(479,56,3,'3:25.13','Constanza Ortega Norambuena',NULL,'C. A. Parral',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(480,56,4,'3:29.63','Valentina  Medina Recabarren',NULL,'C. D. A. Coronel',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(481,56,5,'3:30.85','Laura Sepulveda Galvez',NULL,'A. Nancagua',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(482,56,6,'3:34.15','Genesis Antonella Perez Godoy',NULL,'C. A. Huasco',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(483,56,7,'3:40.31','Valentina Antonia  Robin  Cruza',NULL,'C. A. Ñielol',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(484,56,8,'3:42.58','Florencia  Murgas Huerta',NULL,'C.D.S.C San Antonio',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(485,56,9,'3:45.98','Helga Schaffer Almonacid',NULL,'Ulagos Pto.Montt',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(486,56,10,'3:51.27','Valentina Ignacia Barra Burgos',NULL,'C. Génesis',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(487,56,11,'3:52.21','Sara Ramos',NULL,'A.Iquique (INVITADO)',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(488,56,12,'4:01.99','Josefa Ignacia Bustamante Donoso',NULL,'C.Génesis',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(489,56,13,'4:02.07','Fabiana Elizabeth Olmos Neira',NULL,'C.A.O\"Higgins',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(490,56,14,'4:19.27','Josefa Pizarro Blamey',NULL,'C.D.S.C San Antonio',NULL,NULL,'2018-05-26 22:05:30','2018-05-26 22:05:30',NULL,NULL,NULL),(491,58,1,'53.08',NULL,NULL,'Osorno',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:20','3',NULL,NULL),(492,58,2,'53.32',NULL,NULL,'A. Oassi',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:22','1',NULL,NULL),(493,58,3,'53.60',NULL,NULL,'A. Frances',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:24','2',NULL,NULL),(494,58,4,'53.82',NULL,NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:26','7',NULL,NULL),(495,58,5,'54.54',NULL,NULL,'A. Ingles',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:29','6',NULL,NULL),(496,58,6,'54.58',NULL,NULL,'Maristas de Curico',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:31','5',NULL,NULL),(497,58,7,'54.60',NULL,NULL,'Ñielol',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:33','4',NULL,NULL),(498,58,8,'58.33',NULL,NULL,'Dep. Escuela De Atlet. Osorno',NULL,NULL,'2018-05-26 22:09:12','2018-05-26 22:09:35','8',NULL,NULL),(499,59,1,'47.15',NULL,NULL,'Genesis',NULL,NULL,'2018-05-26 22:11:55','2018-05-26 22:12:03','4',NULL,NULL),(500,59,2,'47.96',NULL,NULL,'Region de los Lagos',NULL,NULL,'2018-05-26 22:11:55','2018-05-26 22:12:05','5',NULL,NULL),(501,59,3,'48.67',NULL,NULL,'Maristas Curico',NULL,NULL,'2018-05-26 22:11:55','2018-05-26 22:12:08','3',NULL,NULL),(502,59,4,'49.58',NULL,NULL,'A. Oassi',NULL,NULL,'2018-05-26 22:11:55','2018-05-26 22:12:10','6',NULL,NULL),(503,59,5,'52.88',NULL,NULL,'A. Liceo',NULL,NULL,'2018-05-26 22:11:55','2018-05-26 22:12:13','2',NULL,NULL),(504,57,1,'2:44.65','Matias Obando Arismendi',NULL,'C. D. Israel Sáez',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(505,57,2,'2:47.75','Fabrizzio Andrés Bertuzzi Covil',NULL,'C. A. Nahuelbuta Angol',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(506,57,3,'2:47.84','Matias  Gomez Torres',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(507,57,4,'2:47.87','Hernán  Carreño Arévalo',NULL,'A. Francés',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(508,57,5,'2:51.74','Benjamin Andrade',NULL,'Ñielol',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(509,57,6,'2:52.71','Samuel Millao Diaz',NULL,'C. de Atletismo Punta Arenas',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(510,57,7,'2:53.76','David Ariel Piñones Cuevas',NULL,'C. D. A. Sporting Coquimbo',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(511,57,8,'2:54.60','Natanael Salas Salas',NULL,'Cadecu Athletic',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(512,57,9,'2:57.39','Guillermo Nicolás Sarabia Ledezma',NULL,'C. Chuquicamata',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(513,57,10,'2:57.79','Dario Curiqueo',NULL,'Freire',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(514,57,11,'2:58.36','Ignacio  Valdez Aravena',NULL,'A. de A. Castro',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(515,57,12,'2:59.22','Joseph Vilches Ampuero',NULL,'C. Pedro Atenas de Casablanca',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(516,57,13,'3:00.18','Sebastian  Sanhueza  Acuña',NULL,'C. A. Pacífico',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(517,57,14,'3:04.23','Fernando Fritz Berrios',NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(518,57,15,'3:32.00','Rodrigo Alonso Pino Moreno',NULL,'C. Marista Curicó',NULL,NULL,'2018-05-26 22:29:29','2018-05-26 22:29:29',NULL,NULL,NULL),(519,60,1,'2:52.69','Benjamin Alonso Palacios Quezad',NULL,'C. A. San Nicolas',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(520,60,2,'2:56.47','Pablo Andres Cabezas Cardenas',NULL,'Ulagos Pto.Montt',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(521,60,3,'2:56.64','Benjamin Bustamante Concha',NULL,'C. A. Parral',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(522,60,4,'2:57.17','Matías Ignacio Ubeda  Muñoz',NULL,'Seven Runners Viña',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(523,60,5,'2:57.46','Juan Ramos Brissio',NULL,'A. Caleu',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(524,60,6,'2:59.20','Marcelo Cruz Andrade',NULL,'A. Caleu',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(525,60,7,'3:00.09','Diego Rivera Escobar',NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(526,60,8,'3:00.10','Cristopher Daniel Montecinos Ál',NULL,'Seven Runners Viña',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(527,60,9,'3:00.13','Tomas Medel Hidalgo',NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(528,60,10,'3:01.32','Nicolás  Poblete Landry',NULL,'A. Francés',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(529,60,11,'3:01.51','Angelo Benjamin  Quezada Parra',NULL,'C. A. San Nicolas',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(530,60,12,'3:02.00','Benjamin  Campos  López',NULL,'C. A. LEA',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(531,60,13,'3:06.88','Lukas Alfredo Castro Mollo',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(532,60,14,'3:08.12','Joaquin Muñoz Robles',NULL,'C. de Atletismo Juan Silva de L',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(533,60,15,'3:10.09','Nicolas Andres Dinamarca Pinto',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(534,60,16,'3:13.71','Martin Concha Brogle',NULL,'A. San Ignacio',NULL,NULL,'2018-05-26 22:37:23','2018-05-26 22:37:23',NULL,NULL,NULL),(535,61,1,'2:56.09','Maximiliano Torres Lizana',NULL,'A. Estudiante',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(536,61,2,'2:56.18','Lucas Antonio Garin Minetti',NULL,'C. Génesis',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(537,61,3,'3:03.20','Benjamin Rojas Sayes',NULL,'C. Liceo de Curicó',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(538,61,4,'3:05.78','Tomas Martinez Palacios',NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(539,61,5,'3:06.27','Elias Jose Acevedo Copara',NULL,'C. A. Tamarugo',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(540,61,6,'3:08.36','Justin Lemus Lizardi',NULL,'C. D. S. C. San Antonio',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(541,61,7,'3:09.21','Matias Ortega Vargas',NULL,'Ulagos Pto.Montt',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(542,61,8,'3:09.65','Jose Poblete Campos',NULL,'A. Nancagua',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(543,61,9,'3:12.83','Vicente Antonio Contreras Fuentes',NULL,'C. A. Huasco',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(544,61,10,'3:13.99','Benjamin Paiva Ferrada',NULL,'C. A. Alameda Talca',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(545,61,11,'3:14.79','Matias Gil Lizana',NULL,'A. Santiago',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(546,61,12,'3:26.67','Eduardo Astorga Diaz',NULL,'C. Liceo de Curicó',NULL,NULL,'2018-05-26 22:42:40','2018-05-26 22:42:40',NULL,NULL,NULL),(547,62,1,'14.79 (875)','Manuel Vasquez',NULL,'C. D. Pilauco','10',NULL,'2018-05-27 13:15:31','2018-05-27 13:21:52','8',NULL,NULL),(548,62,2,'14.95 (856)','Eduardo Camp Summerset',NULL,'CAF Arica','15',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:04','3',NULL,NULL),(549,62,3,'15.46 (795)','Adan Puel',NULL,'A. Ñielol','9',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:14','2',NULL,NULL),(550,62,4,'16.21 (709)','Pablo Rojas Muñoz',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:29','7',NULL,NULL),(551,62,5,'16.48 (680)','Mauricio Irribarren Poyanopulos',NULL,'CAF Arica','15',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:37','5',NULL,NULL),(552,62,6,'17.71 (552)','Benjamin Gonzalez Olguin',NULL,'A. Nancagua','6',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:49','6',NULL,NULL),(553,62,7,'18.18 (507)','Benjamin Alvarado Olmi',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-27 13:15:31','2018-05-27 13:22:56','4',NULL,NULL),(554,62,NULL,'DNS','Santiago Salinas Cabrera',NULL,'A. Santiago','13',NULL,'2018-05-27 13:15:31','2018-05-27 13:18:24',NULL,NULL,NULL),(555,63,1,'26:06.36','Agustín Silva Ocampo',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-27 14:03:08','2018-05-27 14:07:54',NULL,NULL,NULL),(556,63,2,'26:09.17','Luis Navarrete Contreras',NULL,'A. Pitrufquém','9',NULL,'2018-05-27 14:03:08','2018-05-27 14:08:07',NULL,NULL,NULL),(557,63,3,'32:03.66','Enzo Nuñez Valdivia',NULL,'C. D. Trotamundos','15',NULL,'2018-05-27 14:03:08','2018-05-27 14:08:16',NULL,NULL,NULL),(558,63,4,'39:24.12','Ignacio Cáceres Painean',NULL,'C. D. Freire','9',NULL,'2018-05-27 14:03:08','2018-05-27 14:08:18',NULL,NULL,NULL),(559,64,1,'47.75','Arami Fuenzalida Godoy',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-27 14:35:12','2018-05-27 15:26:33','4',NULL,NULL),(560,64,2,'49.21','Florencia Maria Paz Ortigosa Pe',NULL,'C. D. A. Coronel','8',NULL,'2018-05-27 14:35:12','2018-05-27 15:27:04','5',NULL,NULL),(561,64,3,'49.29','Matilde Ruiz Valle',NULL,'CDUC','13',NULL,'2018-05-27 14:35:12','2018-05-27 15:24:57','6',NULL,NULL),(562,64,4,'52.09','Florencia Ampuero Sanchez',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-27 14:35:12','2018-05-27 15:27:48','8',NULL,NULL),(563,64,5,'52.38','Nayeli Schwenke Ramirez',NULL,'C. A. Coyhaique','11',NULL,'2018-05-27 14:35:12','2018-05-27 15:27:31','2',NULL,NULL),(564,64,6,'54.04','Yarleth Toledo Segovia',NULL,'C. A. Puerto Sur','10',NULL,'2018-05-27 14:35:12','2018-05-27 15:26:37','3',NULL,NULL),(565,64,NULL,'DNF','Martina Hernandez Krumn',NULL,'OASSI','13',NULL,'2018-05-27 14:35:12','2018-05-27 15:25:04','7',NULL,NULL),(566,65,1,'49.36','Nisty Esperanza Araya Saavedra',NULL,'A. Ingles','4',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:16','2',NULL,NULL),(567,65,2,'52.96','Magdalena Carbone Shellman',NULL,'CDUC','13',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:20','6',NULL,NULL),(568,65,3,'53.78','Javiera Navarrete Soto',NULL,'CDUC','13',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:23','3',NULL,NULL),(569,65,4,'54.10','Josefa Navarrete Soto',NULL,'CDUC','13',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:27','5',NULL,NULL),(570,65,5,'55.52','Amanda Rojas Castillo',NULL,'A. Punta Arenas','12',NULL,'2018-05-27 14:40:51','2018-05-27 15:26:16','4',NULL,NULL),(571,65,NULL,'DNS','Josefina Ferreti Contreras',NULL,'CDUC','13',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:42','7',NULL,NULL),(572,65,NULL,'DNS','Ignacia Benavides Yevenes',NULL,'A. Estudiante','13',NULL,'2018-05-27 14:40:51','2018-05-27 15:25:45','8',NULL,NULL),(573,66,1,'40.69','Nicanor Millan Viejo',NULL,'C.D. Windsor School','14',NULL,'2018-05-27 15:07:33','2018-05-27 15:29:49','4',NULL,NULL),(574,66,2,'41.39','Alexander Vega Stamm',NULL,'CDUC','13',NULL,'2018-05-27 15:07:33','2018-05-27 15:28:30','3',NULL,NULL),(575,66,3,'41.66','Benjamin Alonso Gutierrez Nuñez',NULL,'C. Génesis','6',NULL,'2018-05-27 15:07:33','2018-05-27 15:29:16','6',NULL,NULL),(576,66,4,'43.78','Joel Vallejos Alvarado',NULL,'A. Copiapó','3',NULL,'2018-05-27 15:07:33','2018-05-27 15:28:36','8',NULL,NULL),(577,66,5,'43.85','Diego Gonzalez Martinez',NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-27 15:07:33','2018-05-27 15:29:30','1',NULL,NULL),(578,66,6,'45.46','Joaquin Mondaca Fellenberg',NULL,'A. San Ignacio','13',NULL,'2018-05-27 15:07:33','2018-05-27 15:28:39','2',NULL,NULL),(579,66,7,'45.89','Javier Ratto Escobar',NULL,'A. Santiago','13',NULL,'2018-05-27 15:07:33','2018-05-27 15:28:43','5',NULL,NULL),(580,66,8,'49.46','Pablo Galan Ortega',NULL,'CDUC','13',NULL,'2018-05-27 15:07:33','2018-05-27 15:28:47','7',NULL,NULL),(600,67,1,'10:46.73','Catalina Fernandez Barrientos','-','C. A. Coyhaique','11',NULL,'2018-05-27 17:22:39','2018-05-28 20:30:29',NULL,NULL,NULL),(601,67,2,'10:51.15','Lisette Ureta  Farias','-','C. A. Pacífico','5',NULL,'2018-05-27 17:22:39','2018-05-28 20:28:19',NULL,NULL,NULL),(602,67,3,'10:55.48','Isidora Rojas Mancilla','-','C. D. Israel Sáez','14',NULL,'2018-05-27 17:22:39','2018-05-28 20:28:30',NULL,NULL,NULL),(603,67,4,'10:55.60','Paulina Hernández Vera','-','C. A. LEA','12',NULL,'2018-05-27 17:22:39','2018-05-28 20:30:26',NULL,NULL,NULL),(604,67,5,'11:27.10','Emilia Salas Cárdenas','-','Escuela de Atletismo Osorno','10',NULL,'2018-05-27 17:22:39','2018-05-28 20:28:35',NULL,NULL,NULL),(605,67,6,'11:36.20','Martina Pradenas Alvarez','-','C. D. Israel Sáez','14',NULL,'2018-05-27 17:22:39','2018-05-28 20:29:55',NULL,NULL,NULL),(606,67,7,'11:41.08','Dafne Espinosa Alarcón','-','C. San Ambrosio Linares','7',NULL,'2018-05-27 17:22:39','2018-05-28 20:30:40',NULL,NULL,NULL),(607,67,8,'11:45.33','Martina Pacheco Jeria','-','C. Pedro Atenas de Casablanca','',NULL,'2018-05-27 17:22:39','2018-05-28 20:29:08',NULL,NULL,NULL),(608,67,9,'11:48.33','Martina Vidal Guzman','-','C. A. Puerto Sur','10',NULL,'2018-05-27 17:22:39','2018-05-28 20:28:44',NULL,NULL,NULL),(609,67,10,'11:53.12','Laura Sepulveda Galvez','-','A. Nancagua','--',NULL,'2018-05-27 17:22:39','2018-05-27 17:22:39',NULL,NULL,NULL),(610,67,11,'11:59.02','Francisca  Contreras Remolcoy','-','C. A. LEA','12',NULL,'2018-05-27 17:22:39','2018-05-28 20:30:22',NULL,NULL,NULL),(611,67,12,'12:02.90','Hellen Sharlotte Rubio Figueroa','-','C. A. Tres Runners','--',NULL,'2018-05-27 17:22:39','2018-05-27 17:22:39',NULL,NULL,NULL),(612,67,13,'12:04.77','Camila  Smith Canovas','-','C. A. Phoenix','9',NULL,'2018-05-27 17:22:39','2018-05-28 20:29:14',NULL,NULL,NULL),(613,67,14,'12:15.34','Constanza Ortega Norambuena','-','C. A. Parral','7',NULL,'2018-05-27 17:22:39','2018-05-28 20:31:14',NULL,NULL,NULL),(614,67,15,'12:34.73','Genesis Antonella Perez Godoy','-','C. A. Huasco','--',NULL,'2018-05-27 17:22:39','2018-05-27 17:22:39',NULL,NULL,NULL),(615,67,16,'12:35.96','Valentina Paz López Schalard','-','C. Chuquicamata','--',NULL,'2018-05-27 17:22:39','2018-05-27 17:22:39',NULL,NULL,NULL),(616,67,17,'15:14.35','Valentina Ignacia Barra Burgos','-','C. Génesis','6',NULL,'2018-05-27 17:22:39','2018-05-28 20:29:47',NULL,NULL,NULL),(617,67,99,'DNF','Sofia Cuevas Muñoz','-','A. Francés','13',NULL,'2018-05-27 17:22:39','2018-05-28 20:28:52',NULL,NULL,NULL),(618,68,1,'09:24.85','Brayan Antonio  Jara  Jara',NULL,'C. A. de Los Angeles','8',NULL,'2018-05-27 17:27:12','2018-05-28 20:16:59',NULL,NULL,NULL),(619,68,2,'09:26.01','Sebastian Mauricio Urra Calquin',NULL,'YKA','13',NULL,'2018-05-27 17:27:12','2018-05-28 20:12:10',NULL,NULL,NULL),(620,68,3,'09:44.73','Matin Obando Arismendi',NULL,'C. D. Israel Sáez','14',NULL,'2018-05-27 17:27:12','2018-05-28 20:22:08',NULL,NULL,NULL),(621,68,4,'09:51.56','Domingo Court Alicera',NULL,'A. Francés','13',NULL,'2018-05-27 17:27:12','2018-05-28 20:11:05',NULL,NULL,NULL),(622,68,5,'10:06.85','Jose Ignacio Grau Vargas',NULL,'C. A. Hector Neira','10',NULL,'2018-05-27 17:27:12','2018-05-28 20:25:34',NULL,NULL,NULL),(623,68,6,'10:08.69','Matias  Gomez Torres',NULL,'C. A. LEA','12',NULL,'2018-05-27 17:27:12','2018-05-28 20:14:02',NULL,NULL,NULL),(624,68,7,'10:15.97','Hernán  Carreño Arévalo',NULL,'A. Francés','13',NULL,'2018-05-27 17:27:12','2018-05-28 20:11:10',NULL,NULL,NULL),(625,68,8,'10:16.49','Miguel Ignacio Acuña Mellado',NULL,'Cadecu Athletic','8',NULL,'2018-05-27 17:27:12','2018-05-28 20:23:34',NULL,NULL,NULL),(626,68,9,'10:28.92','Nataniel Salas Salas',NULL,'Cadecu Athletic','8',NULL,'2018-05-27 17:27:12','2018-05-28 20:23:36',NULL,NULL,NULL),(627,68,10,'10:38.81','Benjamin Bustamante Concha',NULL,'C. A. Parral','7',NULL,'2018-05-27 17:27:12','2018-05-28 20:16:17',NULL,NULL,NULL),(628,68,11,'10:49.06','Javier Segura Dos Santos',NULL,'C. A. Alameda Talca','7',NULL,'2018-05-27 17:27:12','2018-05-28 20:16:12',NULL,NULL,NULL),(629,68,12,'10:50.65','Angelo Benjamin  Quezada Parra',NULL,'C. A. San Nicolas','8',NULL,'2018-05-27 17:27:12','2018-05-28 20:27:51',NULL,NULL,NULL),(630,68,13,'11:09.44','Martin Concha Brogle',NULL,'A. San Ignacio','13',NULL,'2018-05-27 17:27:12','2018-05-28 20:24:39',NULL,NULL,NULL),(631,68,14,'11:24.72','Sebastian  Sanhueza  Acuña',NULL,'C. A. Pacífico','5',NULL,'2018-05-27 17:27:12','2018-05-28 20:16:07',NULL,NULL,NULL),(632,69,1,'10:19.70','Benjamin Andrade',NULL,'Ñielol','9',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:39',NULL,NULL,NULL),(633,69,2,'10:23.41','Cristobal Jimenez Pasten',NULL,'C. D. S. C. San Antonio','5',NULL,'2018-05-27 17:45:48','2018-05-28 20:17:54',NULL,NULL,NULL),(634,69,3,'10:26.66','Marcelo Cruz Andrade',NULL,'A. Caleu','13',NULL,'2018-05-27 17:45:48','2018-05-28 20:22:36',NULL,NULL,NULL),(635,69,4,'10:34.26','Elias Jose Acevedo Copara',NULL,'C. A. Tamarugo','1',NULL,'2018-05-27 17:45:48','2018-05-28 20:25:06',NULL,NULL,NULL),(636,69,5,'10:34.80','Fernando Fritz Berrios',NULL,'A. Santiago','13',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:36',NULL,NULL,NULL),(637,69,6,'10:36.30','Matías Ignacio Ubeda  Muñoz',NULL,'Seven Runners Viña','5',NULL,'2018-05-27 17:45:48','2018-05-28 20:19:07',NULL,NULL,NULL),(638,69,7,'10:53.91','Jose Poblete Campos',NULL,'A. Nancagua','6',NULL,'2018-05-27 17:45:48','2018-05-28 20:19:09',NULL,NULL,NULL),(639,69,8,'11:05.14','Lucas Antonio Garin Minetti',NULL,'C. Génesis','6',NULL,'2018-05-27 17:45:48','2018-05-28 20:18:25',NULL,NULL,NULL),(640,69,9,'11:06.29','Cristian Urrutia',NULL,'A. Francés','13',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:29',NULL,NULL,NULL),(641,69,10,'11:08.46','Cristopher Daniel Montecinos Ál',NULL,'Seven Runners Viña','5',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:31',NULL,NULL,NULL),(642,69,11,'11:15.10','Pablo Andres Cabezas Cardenas',NULL,'Ulagos Pto.Montt','10',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:25',NULL,NULL,NULL),(643,69,12,'11:15.28','Juan Ramos Brissio',NULL,'A. Caleu','13',NULL,'2018-05-27 17:45:48','2018-05-28 20:22:32',NULL,NULL,NULL),(644,69,13,'11:16.12','Matias Ortega Vargas',NULL,'Ulagos Pto.Montt','10',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:21',NULL,NULL,NULL),(645,69,14,'11:18.11','Justin Lemus Lizardi',NULL,'C. D. S. C. San Antonio','5',NULL,'2018-05-27 17:45:48','2018-05-28 20:19:14',NULL,NULL,NULL),(646,69,15,'11:24.36','Nicolás  Poblete Landry',NULL,'A. Francés','13',NULL,'2018-05-27 17:45:48','2018-05-28 20:12:19',NULL,NULL,NULL),(647,69,16,'11:24.60','Vicente Antonio Contreras Fuent',NULL,'C. A. Huasco','3',NULL,'2018-05-27 17:45:48','2018-05-28 20:21:12',NULL,NULL,NULL),(648,70,1,'28.47 (594) = 2.559.-','Cristianne Neumann',NULL,'C. D. Pilauco','10',NULL,'2018-05-27 17:49:12','2018-05-28 20:10:16','2',NULL,NULL),(649,70,2,'28.60 (584) = 3.388.-','Agustina Cruz',NULL,'CDUC','13',NULL,'2018-05-27 17:49:12','2018-05-28 20:06:18','7',NULL,NULL),(650,70,3,'28.95 (558) = 2.651.-','Maria Squella Contardo',NULL,'CDUC','13',NULL,'2018-05-27 17:49:12','2018-05-28 20:06:20','3',NULL,NULL),(651,70,4,'29.29 (533) = 2.433.-','Millaray Mellado',NULL,'A. Ingles','4',NULL,'2018-05-27 17:49:12','2018-05-28 20:07:28','5',NULL,NULL),(652,70,5,'29.62 (509) = 2.243.-','Romina Delgado',NULL,'C. Liceo de Curicó','7',NULL,'2018-05-27 17:49:12','2018-05-28 20:07:10','4',NULL,NULL),(653,70,6,'29.86 (492) = 1.956.-','Laura Bustamante González',NULL,'Escuela de Atletismo Osorno','10',NULL,'2018-05-27 17:49:12','2018-05-28 20:09:57','6',NULL,NULL),(654,70,7,'32.34 (331) = 1.407.-','Emilia Alejandra Cabrera Valenz',NULL,'C. Manquemávida de Santa Cruz','6',NULL,'2018-05-27 17:49:12','2018-05-28 20:09:54','8',NULL,NULL),(655,70,8,'34.09 (235) = 1.238.-','Aylimm Muñoz Diaz',NULL,'A. de A. Castro','10',NULL,'2018-05-27 17:49:12','2018-05-28 20:06:29','1',NULL,NULL),(656,71,1,'1:53.33',NULL,NULL,'Región de los Lagos','10',NULL,'2018-05-27 17:52:47','2018-05-27 18:02:11','5',NULL,NULL),(657,71,2,'1:53.75',NULL,NULL,'OASSI','13',NULL,'2018-05-27 17:52:47','2018-05-27 18:01:22','2',NULL,NULL),(658,71,3,'1:54.13',NULL,NULL,'C. A. Ñielol','9',NULL,'2018-05-27 17:52:47','2018-05-27 18:01:55','7',NULL,NULL),(659,71,4,'1:54.75',NULL,NULL,'A. Francés','13',NULL,'2018-05-27 17:52:47','2018-05-27 18:00:39','4',NULL,NULL),(660,71,5,'1:59.25',NULL,NULL,'A. Ingles','4',NULL,'2018-05-27 17:52:47','2018-05-27 17:59:58','3',NULL,NULL),(661,71,6,'1:59.73',NULL,NULL,'C. A. Gerardo Manzanares','10',NULL,'2018-05-27 17:52:47','2018-05-27 18:00:36','1',NULL,NULL),(662,71,7,'2:00.37',NULL,NULL,'A. Santiago','13',NULL,'2018-05-27 17:52:47','2018-05-27 17:59:55','6',NULL,NULL),(663,72,1,'1:40.69',NULL,NULL,'C. Génesis','6',NULL,'2018-05-27 17:57:27','2018-05-27 18:03:33','5',NULL,NULL),(664,72,2,'1:42.32',NULL,NULL,'Región de los Lagos','10',NULL,'2018-05-27 17:57:27','2018-05-27 18:03:01','3',NULL,NULL),(665,72,3,'1:44.66',NULL,NULL,'C. A. Puerto Sur','10',NULL,'2018-05-27 17:57:27','2018-05-27 18:04:00','6',NULL,NULL),(666,72,4,'1:45.71',NULL,NULL,'OASSI','13',NULL,'2018-05-27 17:57:27','2018-05-27 18:02:58','2',NULL,NULL),(667,72,5,'1:58.49',NULL,NULL,'C. A. Tamarugo','1',NULL,'2018-05-27 17:57:27','2018-05-27 18:04:29','4',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_head2s`
--

LOCK TABLES `track_head2s` WRITE;
/*!40000 ALTER TABLE `track_head2s` DISABLE KEYS */;
INSERT INTO `track_head2s` VALUES (3,NULL,NULL,1,1,1,1,'2018-05-26 04:11:18','2018-08-02 20:22:39','-0.4','1',NULL),(4,NULL,NULL,1,1,1,1,'2018-05-26 04:35:34','2018-05-26 04:35:54','','2',NULL),(5,NULL,NULL,1,2,1,1,'2018-05-26 13:20:42','2018-05-27 14:10:20','+0.3 m/s','100 metros planos Hexatlón - Varones',NULL),(6,NULL,NULL,1,7,1,1,'2018-05-26 14:36:30','2018-05-27 14:22:34','-0.4 m/s','1 - 100 metros planos - Damas',NULL),(7,NULL,NULL,1,3,1,1,'2018-05-26 15:10:13','2018-05-27 14:11:18','','3.000 metros Marcha - Damas',NULL),(8,NULL,NULL,1,7,1,1,'2018-05-26 15:15:43','2018-05-27 14:22:45','+0.3 m/s','2 - 100 metros planos - Damas',NULL),(9,NULL,NULL,1,7,1,1,'2018-05-26 15:35:09','2018-05-27 14:22:54','-0.4 m/s','3 - 100 metros planos - Damas',NULL),(10,NULL,NULL,1,7,1,1,'2018-05-26 15:45:25','2018-05-27 14:23:02','-0.3 m/s','4 - 100 metros planos - Damas',NULL),(11,NULL,NULL,1,7,1,1,'2018-05-26 15:55:22','2018-05-27 14:23:15','-1.1 m/s','5 - 100 metros planos - Damas',NULL),(12,NULL,NULL,1,5,1,1,'2018-05-26 16:06:44','2018-05-27 14:18:35','','400 metros vallas Invitados - Varones',NULL),(13,NULL,NULL,1,6,1,1,'2018-05-26 16:10:27','2018-05-27 14:19:48','','400 metros planos Invitados - Varones',NULL),(14,NULL,NULL,1,7,1,1,'2018-05-26 16:15:37','2018-05-27 14:23:23','-4.0 m/s','6 - 100 metros planos - Damas',NULL),(15,NULL,NULL,1,7,1,1,'2018-05-26 16:21:10','2018-05-27 14:23:32','-0.3 m/s','7 - 100 metros planos - Damas',NULL),(16,NULL,NULL,1,7,1,1,'2018-05-26 16:24:54','2018-05-27 14:23:40','-1.1 m/s','8 - 100 metros planos - Damas',NULL),(17,NULL,NULL,1,7,1,1,'2018-05-26 16:31:48','2018-05-27 14:23:47','+0.0 m/s','9 - 100 metros planos - Damas',NULL),(18,NULL,NULL,1,7,1,1,'2018-05-26 16:35:01','2018-05-27 14:24:01','-0.1 m/s','10 - 100 metros planos - Damas',NULL),(19,NULL,NULL,1,12,1,1,'2018-05-26 16:39:25','2018-05-27 14:38:12','-1.4 m/s','1 - 100 metros planos - Varones - Series',NULL),(20,NULL,NULL,1,12,1,1,'2018-05-26 16:39:38','2018-05-27 14:38:25','-0.9 m/s','2 - 100 metros planos - Varones - Series',NULL),(21,NULL,NULL,1,12,1,1,'2018-05-26 16:39:47','2018-05-27 14:38:39','-1.1 m/s','3 - 100 metros planos - Varones - Series',NULL),(22,NULL,NULL,1,12,1,1,'2018-05-26 16:40:38','2018-05-27 14:38:51','-1.1 m/s','4 - 100 metros planos - Varones - Series',NULL),(23,NULL,NULL,1,12,1,1,'2018-05-26 16:40:49','2018-05-27 14:39:07','-0.2 m/s','5 - 100 metros planos - Varones - Series',NULL),(24,NULL,NULL,1,12,1,1,'2018-05-26 16:40:56','2018-05-27 14:39:20','+0.7 m/s','6 - 100 metros planos - Varones - Series',NULL),(25,NULL,NULL,1,12,1,1,'2018-05-26 16:41:20','2018-05-27 14:39:31','+0.0 m/s','7 - 100 metros planos - Varones - Series',NULL),(26,NULL,NULL,1,12,1,1,'2018-05-26 16:41:29','2018-05-27 14:39:44','+0.0 m/s','8 - 100 metros planos - Varones - Series',NULL),(27,NULL,NULL,1,15,1,1,'2018-05-26 17:14:40','2018-05-26 19:58:33','1500m obstáculos - Damas','Final',NULL),(28,NULL,NULL,1,16,1,1,'2018-05-26 17:18:20','2018-05-27 02:09:35','1500m obstáculos - Varones','Final',NULL),(29,NULL,NULL,1,17,1,1,'2018-05-26 17:50:11','2018-05-27 02:11:12','-0.9 m/s','Final - 100m Planos Damas /',NULL),(30,NULL,NULL,1,21,1,1,'2018-05-26 18:09:45','2018-05-27 02:19:35','-0.1 m/s','Final - Planos Varones /',NULL),(31,NULL,NULL,1,22,1,1,'2018-05-26 18:26:26','2018-05-27 02:19:00','-0.2 m/s','1 - 100m vallas - Damas /',NULL),(32,NULL,NULL,1,22,1,1,'2018-05-26 18:29:25','2018-05-26 18:29:25','-1.3 m/s','2',NULL),(33,NULL,NULL,1,22,1,1,'2018-05-26 18:35:04','2018-05-26 18:35:04','-1.0 m/s','3 (INVITADAS)',NULL),(34,NULL,NULL,1,24,1,1,'2018-05-26 18:45:05','2018-05-27 02:20:35','-1.9 m/s','1 100m Vallas - Varones /',NULL),(35,NULL,NULL,1,24,1,1,'2018-05-26 18:58:08','2018-05-26 19:01:26','-2.2 m/s','2',NULL),(36,NULL,NULL,1,24,1,1,'2018-05-26 19:01:38','2018-05-26 19:01:55','-1.3 m/s','3',NULL),(37,NULL,NULL,1,24,1,1,'2018-05-26 19:05:06','2018-05-26 19:13:39','-0.7 m/s','4 (MENORES Y JUVENIL)',NULL),(38,NULL,NULL,1,28,1,1,'2018-05-26 19:27:43','2018-05-26 19:27:43','','1',NULL),(39,NULL,NULL,1,28,1,1,'2018-05-26 19:33:47','2018-05-26 19:33:47','','2',NULL),(40,NULL,NULL,1,28,1,1,'2018-05-26 19:36:53','2018-05-26 19:36:53','','3',NULL),(41,NULL,NULL,1,28,1,1,'2018-05-26 19:39:53','2018-05-26 19:39:53','','4',NULL),(42,NULL,NULL,1,28,1,1,'2018-05-26 19:42:22','2018-05-26 19:42:22','','5',NULL),(43,NULL,NULL,1,28,1,1,'2018-05-26 19:44:33','2018-05-26 19:44:33','','6',NULL),(44,NULL,NULL,1,28,1,1,'2018-05-26 19:49:58','2018-05-26 19:49:58','','7',NULL),(45,NULL,NULL,1,25,1,1,'2018-05-26 20:02:33','2018-05-26 20:02:33','','1',NULL),(46,NULL,NULL,1,25,1,1,'2018-05-26 20:03:08','2018-05-26 20:03:08','','2',NULL),(47,NULL,NULL,1,25,1,1,'2018-05-26 20:06:13','2018-05-26 20:06:13','','3',NULL),(48,NULL,NULL,1,25,1,1,'2018-05-26 20:09:18','2018-05-26 20:09:18','','4',NULL),(49,NULL,NULL,1,25,1,1,'2018-05-26 20:12:16','2018-05-26 20:12:16','','5',NULL),(50,NULL,NULL,1,25,1,1,'2018-05-26 20:15:07','2018-05-26 20:15:07','','6',NULL),(51,NULL,NULL,1,25,1,1,'2018-05-26 20:18:06','2018-05-26 20:18:06','','7',NULL),(52,NULL,NULL,1,25,1,1,'2018-05-26 20:20:50','2018-05-26 20:20:50','','8',NULL),(53,NULL,NULL,1,30,1,1,'2018-05-26 20:56:45','2018-05-26 20:57:09','-0.3','Final',NULL),(54,NULL,NULL,1,31,1,1,'2018-05-26 21:02:03','2018-05-26 21:03:19','-0.6','Final',NULL),(55,NULL,NULL,1,33,1,1,'2018-05-26 21:17:54','2018-05-26 21:17:54','','1',NULL),(56,NULL,NULL,1,33,1,1,'2018-05-26 21:29:54','2018-05-26 21:29:54','','2',NULL),(57,NULL,NULL,1,34,1,1,'2018-05-26 22:06:09','2018-05-26 22:17:06','*','1',NULL),(58,NULL,NULL,1,35,1,1,'2018-05-26 22:09:02','2018-05-26 22:09:02','','Final',NULL),(59,NULL,NULL,1,36,1,1,'2018-05-26 22:10:48','2018-05-26 22:10:48','','Final',NULL),(60,NULL,NULL,1,34,1,1,'2018-05-26 22:29:55','2018-05-26 22:29:55','*','2',NULL),(61,NULL,NULL,1,34,1,1,'2018-05-26 22:42:29','2018-05-26 22:42:29','*','3',NULL),(62,NULL,NULL,1,37,1,1,'2018-05-27 13:03:22','2018-05-27 13:24:05','+0.0 m/s','Final 100 metros vallas Hexatlón Varones',NULL),(63,NULL,NULL,1,38,1,1,'2018-05-27 13:19:04','2018-05-27 15:31:46','','5.000 metros Marcha - Final - Varones -',NULL),(64,NULL,NULL,1,42,1,1,'2018-05-27 14:27:11','2018-05-27 15:38:10','','1- 300 metros vallas - Series C/Tiempo - Damas',NULL),(65,NULL,NULL,1,42,1,1,'2018-05-27 14:35:51','2018-05-27 15:38:20','','2- 300 metros vallas - Series C/Tiempo - Damas',NULL),(66,NULL,NULL,1,45,1,1,'2018-05-27 14:42:38','2018-05-27 15:40:13','','1 - 300 metros vallas - Series C/Tiempo - Varones',NULL),(67,NULL,NULL,1,49,1,1,'2018-05-27 17:00:10','2018-05-27 17:00:10','','FINAL',NULL),(68,NULL,NULL,1,50,1,1,'2018-05-27 17:11:23','2018-05-28 20:10:47','3000m planos Varones','1',NULL),(69,NULL,NULL,1,50,1,1,'2018-05-27 17:29:11','2018-05-27 17:29:11','','2',NULL),(70,NULL,NULL,1,51,1,1,'2018-05-27 17:47:38','2018-05-27 17:54:23','-1.1 m/s','200 metros planos - Hexatlón - Damas',NULL),(71,NULL,NULL,1,52,1,1,'2018-05-27 17:51:24','2018-05-27 18:05:27','','Relevo Combinado - Damas',NULL),(72,NULL,NULL,1,53,1,1,'2018-05-27 17:53:33','2018-05-27 18:04:55','','Relevo Combinado - Varones',NULL);
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
INSERT INTO `users` VALUES (1,'admin@prossport.cl','$2a$11$HC/PhtvI0UYsW/eHRAq3B.9g1B2spTJCA5wtQQjIJNyCzXK1Pkrxq',NULL,NULL,'2018-08-02 20:19:48',23,'2018-08-02 20:19:48','2018-08-02 19:48:41','127.0.0.1','127.0.0.1','2018-05-26 02:08:47','2018-08-02 20:19:48');
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

-- Dump completed on 2018-08-03 13:14:56
