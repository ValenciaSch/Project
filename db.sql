CREATE DATABASE  IF NOT EXISTS `dbclothing` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbclothing`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: dbclothing
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `tb_man`
--

DROP TABLE IF EXISTS `tb_man`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_man` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_id` int(11) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `Description` longtext,
  `Price` varchar(20) DEFAULT NULL,
  `Time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_man`
--

LOCK TABLES `tb_man` WRITE;
/*!40000 ALTER TABLE `tb_man` DISABLE KEYS */;
INSERT INTO `tb_man` VALUES (1,1,'Оксфордская рубашка с длинными рукавами New Look','oksfordskaya-rubashka-s-dlinnyimi-rukavami-new-look.jpg','Состав: 100% хлопок','750грн.',NULL),(2,2,'Строгая рубашка с короткими рукавами и закругленным воротничком ASOS','strogaya-rubashka-s-korotkimi-rukavami-i-zakruglennyim-vorotnichkom-asos.jpg','Ткань: 55% хлопок, 45% полиэстер','750грн.',NULL),(3,1,'ASOS Smart Shirt With Short Sleeve','asos-smart-shirt-with-short-sleeve.jpg','Ткань: 55% хлопок, 45% полиэстер','750грн.',NULL);
/*!40000 ALTER TABLE `tb_man` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_orders`
--

DROP TABLE IF EXISTS `tb_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orders` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `Last-Name` varchar(250) DEFAULT NULL,
  `Category_id` int(11) DEFAULT NULL,
  `Id_goods` int(11) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `Time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_orders`
--

LOCK TABLES `tb_orders` WRITE;
/*!40000 ALTER TABLE `tb_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NameUser` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `banned` varchar(45) DEFAULT NULL,
  `Time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_woman`
--

DROP TABLE IF EXISTS `tb_woman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_woman` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `Category_id` int(11) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Description` text,
  `Price` varchar(20) DEFAULT NULL,
  `Time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_woman`
--

LOCK TABLES `tb_woman` WRITE;
/*!40000 ALTER TABLE `tb_woman` DISABLE KEYS */;
INSERT INTO `tb_woman` VALUES (1,'Boohoo White Sleeveless Skater Dress',NULL,'boohoo-white-sleeveless-skater-dress.jpg','Body: 95% Polyester, 5% Elastane.','500грн.',NULL),(6,'Boohoo Sleeveless Skater Dress',NULL,'boohoo-sleeveless-skater-dress.jpg','Body: 95% Polyester, 5% Elastane.','500грн.',NULL),(7,'ASOS 90\'s Skater Dress with High Neck',NULL,'asos-90s-skater-dress-with-high-neck.jpg','Fabric: 96% Cotton, 4% Elastane.','750грн.',NULL),(8,' Dress with  New Look Petite',NULL,'oblegayuschee-plate-v-polosku-s-vyisokim-vorotom-newlookpetite.jpg','Состав: 100% хлопок','875грн.',NULL),(9,' Dress with  ASOS',NULL,'trikotajnoe-plyajnoe-plate-bando-maksi-s-perekrestnoy-bretelyu-asos.jpg','Состав ткани: 96% вискоза, 4% эластан','900грн.',NULL);
/*!40000 ALTER TABLE `tb_woman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbclothing'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-13  3:05:29
