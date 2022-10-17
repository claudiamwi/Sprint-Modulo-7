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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `idsupplier` int NOT NULL AUTO_INCREMENT,
  `legal_representative` varchar(45) DEFAULT NULL,
  `corporate_name` varchar(45) DEFAULT NULL,
  `phone1` varchar(15) DEFAULT NULL,
  `phone2` varchar(15) DEFAULT NULL,
  `contact_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `category_idcategory` int NOT NULL,
  PRIMARY KEY (`idsupplier`),
  KEY `fk_supplier_category_idx` (`category_idcategory`),
  CONSTRAINT `fk_supplier_category` FOREIGN KEY (`category_idcategory`) REFERENCES `category` (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Lee Byung-chul','Samsung','56+121212121','56+131313131','Luis Miguel','samsung@samsung.cl',1),(2,'Roberto Bolaños','Carozzi','56+111111111','56+222222222','Juan Burro','carozzi@carozzi.cl',2),(3,'Johnny Herrera','Cristal','56+333333333','56+444444444','Carol Dance','cristal@cristal.cl',3),(4,'Willy Sabor','Friboi','56+565656565','56+989898989','Lady Gaga','friboi@friboi.cl',4),(5,'Nelson Mauri','Victoria Secret','56+474747474','56+252525252','Luly Love','victoriasecret@victoriasecret.cl',5);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-17  7:19:16
