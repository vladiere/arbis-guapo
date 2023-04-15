-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: guestbook
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tbl_guests`
--

CREATE DATABASE guestbook;

use guestbook;


DROP TABLE IF EXISTS `tbl_guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_guests` (
  `guest_id` int NOT NULL AUTO_INCREMENT,
  `guest_name` varchar(50) NOT NULL,
  `guest_email` varchar(50) NOT NULL,
  `guest_website` varchar(50) NOT NULL,
  `guest_comments` text NOT NULL,
  `date_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`guest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_guests`
--

LOCK TABLES `tbl_guests` WRITE;
/*!40000 ALTER TABLE `tbl_guests` DISABLE KEYS */;
INSERT INTO `tbl_guests` VALUES (1,'lance phillip descartin','descartin@email.com','https://www.descartin.com','this is just a sample to test the server database','2023-04-05 20:33:39'),(2,'vladiere kazhu korvi','korvi@email.com','https://kazhu.com.ph','this is testing inserting data information into the database','2023-04-05 21:54:56'),(3,'raven makoy','raven@email.com','https://www.rave.org','\nLorem ipsum dolor sit amet consectetur adipisicing elit. Minima recusandae suscipit iste officiis autem ipsam atque, hic aliquid doloribus impedit!','2023-04-05 23:30:35'),(4,'bert casquejo','bert@email.com','https://pinaybert.tv','pinaka gwapo sa 3a','2023-04-06 08:02:52'),(5,'clarence baclay','baclay@email.com','https://www.cj.phonehome','pinaka maayo mo code sa 3a','2023-04-06 08:06:30'),(6,'john luie hiyas','hiyas@email.com','https://www.johnny.sins','I am a teacher, astronaut, scientist, driver, fire fighter, police officer, doctor, nurse','2023-04-06 08:24:59'),(8,'Jhon Arbis','arbis@email.com','https://www.pinayarbis.tv','Lorem Ipsum Dolor Sit Amet Consectetur, Adipisicing Elit. Architecto Reiciendis Illo Temporibus Voluptate Quia Cum.','2023-04-06 08:30:18'),(12,'teodor toedoro','teodor@email.com','https://www.teodor.com.ph','Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore ea voluptates est placeat pariatur sapiente obcaecati porro dolor quasi eos!','2023-04-13 09:01:16'),(448,'vladimere vruzka karak','karak@karak.com','https://www.karak.online','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Neque consectetur nostrum architecto delectus incidunt tenetur cum ea officia illum illo expedita ut commodi temporibus tempora, hic, id esse impedit ipsa.','2023-04-13 09:25:54'),(449,'kazhu kazkka','kakka@email.com','https://www.shop.kazhu.online','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Neque consectetur nostrum architecto delectus incidunt tenetur cum ea officia illum illo expedita ut commodi temporibus tempora, hic, id esse impedit ipsa.','2023-04-13 09:26:51');
/*!40000 ALTER TABLE `tbl_guests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-13 19:59:45
