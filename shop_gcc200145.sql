-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: shop_gcc200145
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cuserid` int(11) NOT NULL,
  `cproid` int(11) NOT NULL,
  `cquantity` int(11) NOT NULL,
  `cdate` date NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `cproid` (`cproid`),
  KEY `cuserid` (`cuserid`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cproid`) REFERENCES `product` (`pid`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`cuserid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Metal Build'),(2,'Master Grade');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `pprice` decimal(8,0) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `pimage` varchar(100) NOT NULL,
  `pquan` int(11) NOT NULL,
  `pcatid` int(11) NOT NULL,
  `pdate` date NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `product_ibfk_1` (`pcatid`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`pcatid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'METAL BUILD DRAGON SCALE Sirbine Limited',240,'METAL BUILD DRAGON SCALE Sirbine Limited\n\nThe pleasure of assembling the METAL BUILD DRAGON SCALE Sirbine Limited will give a completely different value to your object because it will have been made by you!\n\nHere in Japan we call plastic model but oversea','METAL-BUILD-DRAGON-SCALE-Sirbine-Limited-1.jpg',50,1,'2023-08-12'),(2,'METAL BUILD Laevatein Arbalest Reference Limited B',200,'METAL BUILD Laevatein Arbalest Reference Limited\r\n\r\nThe pleasure of assembling the METAL BUILD Laevatein Arbalest Reference Limited BANDAI will give a completely different value to your object because it will have been made by you!\r\n\r\nHere in Japan we cal','METAL-BUILD-Laevatein-Arbalest-Reference-Limited-BANDAI.jpg',50,1,'2023-08-12'),(3,'METAL BUILD Gundam Astray Gold Frame (Alternative ',220,'METAL BUILD Gundam Astray Gold Frame (Alternative Strike Ver.) Limited  The pleasure of assembling the product METAL BUILD Gundam Astray Gold Frame (Alternative Strike Ver.) Limited will give a completely different value to your object because it will hav','METAL-BUILD-Gundam-Astray-Gold-Frame-Alternative-Strike-Ver.-Limited.webp',50,2,'2023-08-12'),(4,'DABAN 8816 Gundam Astraea',45,'DABAN 8816 Gundam Astraea','DABAN-8816-Gundam-Astraea.jpg',50,2,'2023-08-14'),(5,'Astray Red Dragon',160,'MB Astray Red Dragon','MB-Astray-Red-Dragon.jpg',20,1,'2023-08-14'),(6,'Vidar Date Masamune DH 01 Devil Hunter',95,'Vidar Date Masamune DH 01 Devil Hunter | MB Metal Figure 1/100','MB-Date-Masamune.jpg',20,1,'2023-08-14'),(7,'MB Sanada Yukimura',92,'MB Sanada Yukimura | MB Metal Figure 1/100','MB-Sanada-Yukimura.jpg',20,1,'2023-08-14'),(8,'Bandai Hobby PG RX-0 Unicorn Gundam Model Kit',92,'MB Sanada Yukimura | MB Metal Figure 1/100','Hobby PG RX-0 Unicorn Gundam Model Kit.jpg',20,1,'2023-08-14'),(9,'MB Takeda Shingen Moshow 1/72',160,'MB Takeda Shingen Moshow 1/72','MB-Takeda-Shingen.jpg',20,1,'2023-08-14');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hometown` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `state` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','Admin@123','unknown','0358568400',1);
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

-- Dump completed on 2023-08-14  5:07:09
