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
  PRIMARY KEY (`id`),
  KEY `index_competitions_on_sport_id` (`sport_id`),
  KEY `index_competitions_on_category_id` (`category_id`),
  KEY `index_competitions_on_sex_id` (`sex_id`),
  KEY `index_competitions_on_stage_id` (`stage_id`),
  CONSTRAINT `fk_rails_5dec997a9b` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`),
  CONSTRAINT `fk_rails_5f3d5f7b4b` FOREIGN KEY (`sex_id`) REFERENCES `sexes` (`id`),
  CONSTRAINT `fk_rails_95e3d91d40` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`),
  CONSTRAINT `fk_rails_ff95397b69` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (1,'09:00:00',5,4,1,1,'2018-05-26 02:11:01','2018-05-26 02:11:01'),(2,'09:10:00',1,4,2,1,'2018-05-26 02:13:31','2018-05-26 02:13:31'),(3,'09:20:00',17,1,1,1,'2018-05-26 02:24:04','2018-05-26 02:24:04'),(4,'09:40:00',8,4,1,1,'2018-05-26 02:24:45','2018-05-26 02:24:45'),(5,'09:45:00',18,1,2,1,'2018-05-26 02:27:32','2018-05-26 02:27:32'),(6,'09:55:00',19,1,2,1,'2018-05-26 02:28:19','2018-05-26 02:28:19'),(7,'10:00:00',1,2,1,1,'2018-05-26 02:29:38','2018-05-26 02:29:38'),(8,'10:00:00',20,1,1,1,'2018-05-26 02:32:03','2018-05-26 02:32:03'),(9,'10:00:00',3,4,2,1,'2018-05-26 02:32:54','2018-05-26 02:32:54'),(10,'10:00:00',2,1,1,1,'2018-05-26 02:34:12','2018-05-26 02:34:12'),(11,'10:50:00',6,4,2,1,'2018-05-26 02:34:58','2018-05-26 02:34:58'),(12,'11:00:00',1,2,2,1,'2018-05-26 02:36:09','2018-05-26 02:36:09'),(13,'11:20:00',6,4,1,1,'2018-05-26 02:36:44','2018-05-26 02:36:44'),(14,'11:30:00',20,1,2,1,'2018-05-26 02:37:20','2018-05-26 02:37:20'),(15,'12:00:00',21,1,1,1,'2018-05-26 02:38:29','2018-05-26 02:38:29'),(16,'12:20:00',21,1,2,1,'2018-05-26 02:39:02','2018-05-26 02:39:02'),(17,'14:00:00',1,1,1,2,'2018-05-26 02:43:13','2018-05-26 02:43:13'),(18,'14:00:00',2,1,2,2,'2018-05-26 02:45:03','2018-05-26 02:45:03'),(19,'14:00:00',3,1,1,2,'2018-05-26 02:46:40','2018-05-26 02:46:40'),(20,'14:00:00',4,1,2,2,'2018-05-26 02:47:11','2018-05-26 02:47:11'),(21,'14:10:00',1,1,2,2,'2018-05-26 02:48:26','2018-05-26 02:48:26'),(22,'14:20:00',5,2,1,2,'2018-05-26 02:49:04','2018-05-26 02:49:04'),(23,'14:30:00',6,1,1,2,'2018-05-26 02:49:55','2018-05-26 02:49:55'),(24,'14:50:00',5,2,2,2,'2018-05-26 02:50:21','2018-05-26 02:50:21'),(25,'15:20:00',7,3,1,2,'2018-05-26 02:51:28','2018-05-26 02:51:28'),(26,'15:30:00',4,1,1,2,'2018-05-26 02:52:15','2018-05-26 02:52:15'),(27,'15:45:00',3,1,2,2,'2018-05-26 02:53:12','2018-05-26 02:53:12'),(28,'15:50:00',7,3,2,2,'2018-05-26 02:53:47','2018-05-26 02:53:47'),(29,'16:00:00',6,1,2,2,'2018-05-26 02:55:30','2018-05-26 02:55:30'),(30,'16:30:00',5,1,1,2,'2018-05-26 02:56:10','2018-05-26 02:56:10'),(31,'16:40:00',5,1,2,2,'2018-05-26 02:57:37','2018-05-26 02:57:37'),(32,'17:00:00',9,1,1,2,'2018-05-26 02:59:00','2018-05-26 02:59:00'),(33,'17:00:00',10,3,1,2,'2018-05-26 03:00:56','2018-05-26 03:00:56'),(34,'17:20:00',10,3,2,2,'2018-05-26 03:01:33','2018-05-26 03:01:33'),(35,'17:40:00',11,1,1,2,'2018-05-26 03:02:14','2018-05-26 03:02:14'),(36,'17:50:00',11,1,2,2,'2018-05-26 03:02:57','2018-05-26 03:02:57'),(37,'09:00:00',5,4,2,3,'2018-05-26 03:04:56','2018-05-26 03:04:56'),(38,'09:10:00',12,1,2,3,'2018-05-26 03:05:38','2018-05-26 03:05:38'),(39,'10:00:00',13,1,2,3,'2018-05-26 03:06:17','2018-05-26 03:06:17'),(40,'10:20:00',8,4,2,3,'2018-05-26 03:08:15','2018-05-26 03:08:15'),(41,'10:30:00',9,1,2,3,'2018-05-26 03:09:29','2018-05-26 03:09:29'),(42,'10:30:00',14,3,1,3,'2018-05-26 03:10:15','2018-05-26 03:10:15'),(43,'11:00:00',8,1,2,3,'2018-05-26 03:10:55','2018-05-26 03:10:55'),(44,'11:00:00',3,4,1,3,'2018-05-26 03:12:07','2018-05-26 03:12:07'),(45,'11:00:00',14,3,2,3,'2018-05-26 03:12:53','2018-05-26 03:12:53'),(46,'12:00:00',13,1,1,3,'2018-05-26 03:13:26','2018-05-26 03:13:26'),(47,'12:00:00',4,4,1,3,'2018-05-26 03:14:00','2018-05-26 03:14:00'),(48,'12:30:00',4,4,2,3,'2018-05-26 03:15:28','2018-05-26 03:15:28'),(49,'12:30:00',15,1,2,3,'2018-05-26 03:16:41','2018-05-26 03:16:41'),(50,'12:45:00',15,1,2,3,'2018-05-26 03:18:13','2018-05-26 03:18:13'),(51,'13:00:00',22,4,1,3,'2018-05-26 03:20:41','2018-05-26 03:20:41'),(52,'13:10:00',16,5,1,3,'2018-05-26 03:21:25','2018-05-26 03:21:25'),(53,'13:20:00',16,6,2,3,'2018-05-26 03:22:03','2018-05-26 03:22:03');
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
INSERT INTO `schema_migrations` VALUES ('20180310194654'),('20180310194810'),('20180310195030'),('20180310195635'),('20180310195710'),('20180310195927'),('20180310200658'),('20180310200725'),('20180310201038'),('20180310201321'),('20180405182545'),('20180407032356'),('20180409012932'),('20180409075709'),('20180409085004'),('20180409085610'),('20180409091148'),('20180411044745'),('20180412104743'),('20180412105428'),('20180412112856'),('20180412155824'),('20180413161358'),('20180413161407'),('20180413161418'),('20180413161424'),('20180413161436'),('20180413161501'),('20180413161619'),('20180413161626'),('20180413161639'),('20180413161645'),('20180413161709'),('20180413161714'),('20180413161950'),('20180413161956'),('20180413162126'),('20180413162136'),('20180413162143'),('20180413162236'),('20180413162241'),('20180413171641'),('20180413171743'),('20180413171944'),('20180413172008'),('20180413172040'),('20180413172100'),('20180413172125'),('20180413172147'),('20180413172227'),('20180413172253'),('20180413172316'),('20180413172341'),('20180413172410'),('20180413172640'),('20180413172706'),('20180413172736'),('20180414052817'),('20180414053113'),('20180414053132'),('20180414053148'),('20180414053204'),('20180414053222'),('20180414053235'),('20180414053250'),('20180414053300'),('20180414053323'),('20180414081701'),('20180414081717'),('20180414084207'),('20180414091536'),('20180414091549'),('20180414093034'),('20180414093102'),('20180414093125'),('20180417202002'),('20180417202326'),('20180417202335'),('20180417202345'),('20180417202356'),('20180418010211'),('20180418011403'),('20180418011643'),('20180418011703'),('20180418011726'),('20180418011747'),('20180420012441'),('20180420013044'),('20180420013059'),('20180420013109'),('20180420013120'),('20180420013129'),('20180420013137'),('20180420013144'),('20180420013153'),('20180420013200'),('20180420013206'),('20180420013213'),('20180420013218'),('20180420013224'),('20180420013230'),('20180420013235'),('20180420013242'),('20180420013247'),('20180420013253'),('20180420013259'),('20180420013304'),('20180420233126'),('20180420233250'),('20180420233305'),('20180420233313'),('20180420233320'),('20180420233332'),('20180420233340'),('20180420233348'),('20180420233355'),('20180420233404'),('20180420233413'),('20180420233421'),('20180420233428'),('20180420233435'),('20180420233443'),('20180421012223'),('20180421012344'),('20180421012351'),('20180421012400'),('20180421012406'),('20180421012412'),('20180421012417'),('20180421012425'),('20180421012434'),('20180421012440'),('20180421012447'),('20180421012456'),('20180421012503'),('20180421012509'),('20180421030317'),('20180510154411'),('20180510154904'),('20180510155921'),('20180510160819'),('20180510161138'),('20180510161247'),('20180510161600'),('20180516212532'),('20180516220344'),('20180516221435'),('20180516222025'),('20180516222026'),('20180518231024'),('20180524004748'),('20180524010818'),('20180524014126'),('20180524023819'),('20180525235928'),('20180525235943'),('20180526001443');
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
INSERT INTO `sports` VALUES (1,'100 METROS PLANOS','2018-05-26 01:54:33','2018-05-26 01:54:33'),(2,'SALTO CON GARROCHA','2018-05-26 01:54:56','2018-05-26 01:54:56'),(3,'SALTO LARGO','2018-05-26 01:55:10','2018-05-26 01:55:10'),(4,'LANZAMIENTO JABALINA','2018-05-26 01:55:27','2018-05-26 01:55:27'),(5,'100 METROS VALLAS','2018-05-26 01:55:49','2018-05-26 01:55:49'),(6,'LANZAMIENTO BALA','2018-05-26 01:56:07','2018-05-26 01:56:07'),(7,'300 METROS PLANOS','2018-05-26 01:56:48','2018-05-26 01:56:48'),(8,'SALTO ALTO','2018-05-26 01:57:07','2018-05-26 01:57:07'),(9,'LANZAMIENTO DISCO','2018-05-26 01:57:44','2018-05-26 01:57:44'),(10,'1.000 METROS PLANOS','2018-05-26 01:58:07','2018-05-26 01:58:07'),(11,'RELEVO 4X100 METROS','2018-05-26 01:58:39','2018-05-26 01:58:39'),(12,'5.000 METROS MARCHA','2018-05-26 01:59:08','2018-05-26 01:59:08'),(13,'SALTO TRIPLE','2018-05-26 01:59:38','2018-05-26 01:59:38'),(14,'300 METROS VALLAS','2018-05-26 02:00:17','2018-05-26 02:00:17'),(15,'3.000 METROS PLANOS','2018-05-26 02:00:52','2018-05-26 02:00:52'),(16,'RELEVO COMBINADO (100-200-200-300)','2018-05-26 02:01:26','2018-05-26 02:01:26'),(17,'3.000 METROS MARCHA','2018-05-26 02:23:25','2018-05-26 02:23:25'),(18,'400 METROS VALLAS INVITACIÓN (pista 3-8)','2018-05-26 02:26:22','2018-05-26 02:26:22'),(19,'400 METROS PLANOS INVITACIÓN (pista 3-8)','2018-05-26 02:26:46','2018-05-26 02:26:46'),(20,'LANZAMIENTO MARTILLO','2018-05-26 02:30:33','2018-05-26 02:30:33'),(21,'1.500 METROS OBSTÁCULOS','2018-05-26 02:37:51','2018-05-26 02:37:51'),(22,'200 METROS PLANOS','2018-05-26 03:20:03','2018-05-26 03:20:03');
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
  PRIMARY KEY (`id`),
  KEY `index_track2s_on_track_head2_id` (`track_head2_id`),
  CONSTRAINT `fk_rails_8c5dc3655a` FOREIGN KEY (`track_head2_id`) REFERENCES `track_head2s` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track2s`
--

LOCK TABLES `track2s` WRITE;
/*!40000 ALTER TABLE `track2s` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `index_track_head2s_on_sex_id` (`sex_id`),
  KEY `index_track_head2s_on_competition_id` (`competition_id`),
  KEY `index_track_head2s_on_sport_id` (`sport_id`),
  KEY `index_track_head2s_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_54d67b1102` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`),
  CONSTRAINT `fk_rails_84b61d5953` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`),
  CONSTRAINT `fk_rails_968c815d98` FOREIGN KEY (`sex_id`) REFERENCES `sexes` (`id`),
  CONSTRAINT `fk_rails_c3fd21b978` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_head2s`
--

LOCK TABLES `track_head2s` WRITE;
/*!40000 ALTER TABLE `track_head2s` DISABLE KEYS */;
INSERT INTO `track_head2s` VALUES (3,NULL,NULL,1,1,1,1,'2018-05-26 04:11:18','2018-05-26 04:35:51','','1'),(4,NULL,NULL,1,1,1,1,'2018-05-26 04:35:34','2018-05-26 04:35:54','','2');
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
INSERT INTO `users` VALUES (1,'admin@prossport.cl','$2a$11$HC/PhtvI0UYsW/eHRAq3B.9g1B2spTJCA5wtQQjIJNyCzXK1Pkrxq',NULL,NULL,'2018-05-26 04:34:11',2,'2018-05-26 04:34:11','2018-05-26 02:08:47','201.219.237.250','168.196.203.89','2018-05-26 02:08:47','2018-05-26 04:34:11');
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

-- Dump completed on 2018-05-26  7:16:40
