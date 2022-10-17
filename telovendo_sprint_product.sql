-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: telovendo_sprint
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `idproduct` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `supplier_idsupplier` int NOT NULL,
  `color_idcolor` int NOT NULL,
  PRIMARY KEY (`idproduct`),
  KEY `fk_product_supplier1_idx` (`supplier_idsupplier`),
  KEY `fk_product_color1_idx` (`color_idcolor`),
  CONSTRAINT `fk_product_color1` FOREIGN KEY (`color_idcolor`) REFERENCES `color` (`idcolor`),
  CONSTRAINT `fk_product_supplier1` FOREIGN KEY (`supplier_idsupplier`) REFERENCES `supplier` (`idsupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Sostén Satín 36B',10,8550,5,2),(2,'Molida especial 250gr',20,2155,1,2),(3,'Cerveza artesanal 5L',15,15000,3,3),(4,'Pack 2 spaghetti n5 400g',30,1250,2,4),(5,'Parlante pared 35w',55,56990,1,5),(6,'TV 55\'',11,129990,1,1),(7,'Salsa Tomate 200g',19,890,2,2),(8,'Lata Zero 350cc',32,1590,3,3),(9,'Posta Rosada 400g',45,3990,1,2),(10,'Abastero 1k',100,6990,1,2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-17  7:19:15
