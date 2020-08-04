-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: userlib
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animates`
--

DROP TABLE IF EXISTS `animates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animates` (
  `audio_name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `date` varchar(120) DEFAULT NULL,
  `album` varchar(30) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(150) DEFAULT NULL,
  `edit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animates`
--

LOCK TABLES `animates` WRITE;
/*!40000 ALTER TABLE `animates` DISABLE KEYS */;
INSERT INTO `animates` VALUES ('Spirited Away','a japan animate produced by Gibuli','3','Sun 2020.08.02 at 04:48:39 PM EDT','Animates',1,'https://v.qq.com/x/page/z0909t1i2ia.html',NULL);
/*!40000 ALTER TABLE `animates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asmr`
--

DROP TABLE IF EXISTS `asmr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asmr` (
  `audio_name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `date` varchar(120) DEFAULT NULL,
  `album` varchar(30) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(150) DEFAULT NULL,
  `edit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asmr`
--

LOCK TABLES `asmr` WRITE;
/*!40000 ALTER TABLE `asmr` DISABLE KEYS */;
INSERT INTO `asmr` VALUES ('James ASMR','ASMR from youtuber James','1.5','Sun 2020.08.02 at 06:35:59 AM EDT','ASMR',1,NULL,NULL);
/*!40000 ALTER TABLE `asmr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meditation`
--

DROP TABLE IF EXISTS `meditation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meditation` (
  `audio_name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `date` varchar(120) DEFAULT NULL,
  `album` varchar(30) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(150) DEFAULT NULL,
  `edit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meditation`
--

LOCK TABLES `meditation` WRITE;
/*!40000 ALTER TABLE `meditation` DISABLE KEYS */;
INSERT INTO `meditation` VALUES ('Buddas Yoga','A yoga song with release feeling','2','Sun 2020.08.02 at 03:51:18 PM EDT','Meditation',1,NULL,NULL),('Tiebettan chants','a tibetan chants songs by Sodajhe Kanpa','1','Sun 2020.08.02 at 04:28:20 PM EDT','Meditation',2,'https://www.youtube.com/watch?v=lv2X8yFQTC8',NULL);
/*!40000 ALTER TABLE `meditation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `audio_name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `date` varchar(120) DEFAULT NULL,
  `album` varchar(30) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `edit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES ('the song of silence','an american classic movie songs','0.8','Sun 2020.08.02 at 04:24:48 PM EDT','Songs','https://www.youtube.com/watch?v=4fWyzwo1xg0',1,NULL),('ocean waves','a white noise with the wave of the sea','0.8','Sun 2020.08.02 at 04:33:49 PM EDT','Songs','https://www.youtube.com/watch?v=ed3DnP2nbrw',2,NULL);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `story` (
  `audio_name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `date` varchar(120) DEFAULT NULL,
  `album` varchar(30) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(150) DEFAULT NULL,
  `edit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES ('Sleeping taps','Jeff Bridges create a sleeping tap for children or adults who lost their slssp','5','Sun 2020.08.02 at 03:59:04 PM EDT','Stories',1,NULL,NULL),('Fair Tales China','chinese fair tales from Ximalaya web','0.5','Sun 2020.08.02 at 08:32:44 PM EDT','Stories',2,'ww.baidu.com',NULL);
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talkshows`
--

DROP TABLE IF EXISTS `talkshows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talkshows` (
  `audio_name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `date` varchar(120) DEFAULT NULL,
  `album` varchar(30) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(150) DEFAULT NULL,
  `edit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talkshows`
--

LOCK TABLES `talkshows` WRITE;
/*!40000 ALTER TABLE `talkshows` DISABLE KEYS */;
INSERT INTO `talkshows` VALUES ('White Funeral','a traditional Chinese talk show about BaiShiHui, length=45hr.','1.5','星期日 2020.08.02 at 02:17:18 上午 EDT','TalkShows',1,NULL,NULL),('Xihe Dagu','a traditional Chinese talk show about BaiShiHui, length=45hr.','1.5','Sun 2020.08.02 at 04:08:33 AM EDT','TalkShows',2,NULL,NULL),('One drop','a traditional Chinese talk show about BaiShiHui, length=45hr.','1.5','Sun 2020.08.02 at 04:28:03 AM EDT','TalkShows',3,NULL,NULL),('Iove you','a traditional Chinese talk show about BaiShiHui, length=45hr.','1.5','Sun 2020.08.02 at 04:29:41 AM EDT','TalkShows',4,NULL,NULL),('Cu dian deng','a traditional Chinese talk show about BaiShiHui, length=45hr.','1.5','Sun 2020.08.02 at 04:30:44 AM EDT','TalkShows',5,NULL,NULL),('Wo yao fa','a traditional Chinese talk show about BaiShiHui, length=45hr.','1.2','Sun 2020.08.02 at 06:31:16 AM EDT','TalkShows',6,NULL,NULL);
/*!40000 ALTER TABLE `talkshows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `dict_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(40) DEFAULT NULL,
  `Day` varchar(120) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `sleep_quality` varchar(30) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `edit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Duxing','Daxiong','12345','2020-08-02','dx@qq.com','Medium','8989999887','India','Activated',NULL),(4,'AliciaBob','Alice','12345','2020-08-02','al@osu.edu','Low','9716996020','USA','Activated',NULL),(5,'BobAdamin','TrumpKiller','54321','2020-08-02','ba@qq.com','Good','7899899899','USA','Activated',NULL),(7,'NagenraKumar','NagendraKing','12345','2020-08-02','nk@qq.com','','9716996020','India','Activated',NULL),(9,'ShalotKata','Katakuli','123456','2020-08-02','sk@qq.com','Low','9899988788','china','Activated',NULL),(10,'alfredClause','MRFinal','12345','2020-08-02','af@qq.com','Medium','9887888788','Nigiria','Activated',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-03 21:31:38
