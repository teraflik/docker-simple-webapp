-- MySQL dump 10.16  Distrib 10.1.40-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.122.230    Database: flask_db
-- ------------------------------------------------------
-- Server version	10.3.15-MariaDB-1
--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `items` WRITE;
INSERT INTO `items` VALUES (1,'Mango'),(2,'Pineapple');
UNLOCK TABLES;