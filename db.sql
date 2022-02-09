-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for osx10.16 (arm64)
--
-- Host: localhost    Database: super_warmup
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hero`
--

DROP TABLE IF EXISTS `hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hero` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `secret_identity` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `powers` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `power_rating` smallint(6) NOT NULL,
  `image_url` varchar(400) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hero_UN` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero`
--

LOCK TABLES `hero` WRITE;
/*!40000 ALTER TABLE `hero` DISABLE KEYS */;
INSERT INTO `hero` VALUES (1,'superman','superman','flying',5,'https://www.reshot.com/preview-assets/icons/QKH4XD2YFV/profile-avatar-QKH4XD2YFV.svg'),(2,'spiderman','Peter Parker','climbing',5,'https://www.reshot.com/preview-assets/icons/QKH4XD2YFV/profile-avatar-QKH4XD2YFV.svg'),(3,'antman','Scott Lang','resizing',4,'https://www.reshot.com/preview-assets/icons/QKH4XD2YFV/profile-avatar-QKH4XD2YFV.svg');
/*!40000 ALTER TABLE `hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villain`
--

DROP TABLE IF EXISTS `villain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `villain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `secret_identity` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `powers` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `power_rating` smallint(6) NOT NULL,
  `image_url` varchar(400) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `villain_UN` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villain`
--

LOCK TABLES `villain` WRITE;
/*!40000 ALTER TABLE `villain` DISABLE KEYS */;
INSERT INTO `villain` VALUES (1,'lizzard','Connors','lizzard',4,'https://www.reshot.com/preview-assets/icons/QKH4XD2YFV/profile-avatar-QKH4XD2YFV.svg'),(2,'green goblin','Norman Ozborn','flying',4,'https://www.reshot.com/preview-assets/icons/QKH4XD2YFV/profile-avatar-QKH4XD2YFV.svg'),(3,'mysterio','Quentin Beck','holograms',3,'https://www.reshot.com/preview-assets/icons/QKH4XD2YFV/profile-avatar-QKH4XD2YFV.svg');
/*!40000 ALTER TABLE `villain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'super_warmup'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-08 18:43:29
