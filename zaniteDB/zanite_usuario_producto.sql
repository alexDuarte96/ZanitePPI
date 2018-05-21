-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: zanite
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
-- Table structure for table `usuario_producto`
--

DROP TABLE IF EXISTS `usuario_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_producto` (
  `id_producto` int(11) NOT NULL,
  `pagado` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `u_mail` varchar(45) NOT NULL,
  `fecha_compra` varchar(80) DEFAULT NULL,
  KEY `id_producto_idx` (`id_producto`),
  KEY `u_mail_idx` (`u_mail`),
  CONSTRAINT `id_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `u_mail` FOREIGN KEY (`u_mail`) REFERENCES `usuario` (`u_mail`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_producto`
--

LOCK TABLES `usuario_producto` WRITE;
/*!40000 ALTER TABLE `usuario_producto` DISABLE KEYS */;
INSERT INTO `usuario_producto` VALUES (3,0,6,'alex-5-d@hotmail.com',NULL),(8,0,5,'selley@gmail.com',NULL),(1,0,9,'selley@gmail.com',NULL),(5,1,4,'correo@gmail.com','10:10:00pm 2018/01/01'),(4,1,1,'correo@gmail.com','10:10:00pm 2018/01/01'),(8,1,2,'correo@gmail.com','09:17:36pm 2018/05/21'),(2,1,1,'correo@gmail.com','09:23:29pm 2018/05/21'),(1,0,34,'correo@gmail.com',NULL);
/*!40000 ALTER TABLE `usuario_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-21 15:15:52
