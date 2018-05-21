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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `p_nombre` varchar(30) NOT NULL,
  `p_origen` varchar(20) NOT NULL,
  `p_descripcion` varchar(200) NOT NULL,
  `p_precio` int(11) NOT NULL,
  `p_fabricante` varchar(20) NOT NULL,
  `p_cantidad` int(11) NOT NULL,
  `p_foto` varchar(100) NOT NULL,
  `p_categoria` varchar(25) NOT NULL,
  `p_fecha` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Macbook','USA','Apple Macbook Late 2017 Base Model (Core m3, 8GB RAM, Intel HD Graphics 615, 256GB SSD, 12 inch Display)',29999,'Apple',20,'./img/macbook.png','computer','10:00:00pm 2018/05/01'),(2,'Macbook Air','USA','Apple Macbook Air Late 2015 Base Model (Core i5, 8GB RAM, Intel HD Graphics 6000, 128GB SSD, 13 inch Display)',22999,'Apple',19,'./img/macbookair.png','computer','10:00:00pm 2018/05/01'),(3,'Macbook Pro 13','USA','Apple Macbook Pro 13 Late 2017 Base Model (Core i5, 8GB RAM, Intel Iris Plus Graphics 640, 128GB SSD, 13 inch Display)',29999,'Apple',20,'./img/macbookpro_13.png','computer','10:00:00pm 2018/05/01'),(4,'Macbook Pro 15','USA','Apple Macbook Pro 15 Late 2017 Base Model (Core i7, 16GB RAM, Radeon Pro 555, 256GB SSD, 15 inch Display)',55999,'Apple',19,'./img/macbookpro_15.png','computer','10:00:00pm 2018/05/01'),(5,'Dell Inspiron 7567','USA','Dell Inspiron 7567 - Gaming (Core i7,  8GB RAM, Nvidia 1050TI, 1TB HDD, 128GB SDD, 15.6 inch Display)',24999,'Dell Inc.',20,'./img/dell_inspiron_7567.png','computer','10:00:00pm 2018/05/01'),(6,'Dell Inspiron 5578','USA','Dell Inspiron 5578 - Convertible (Core i5,  8GB RAM, Intel HD Graphics, 1TB HDD, 15.6 inch Display)',16499,'Dell Inc.',20,'./img/dell_inspiron_5578.png','computer','10:00:00pm 2018/05/01'),(7,'HP Envy 13','USA','HP ENVY 13-ad008la (Core i7,  8GB RAM, Nvidia 940MX, 360GB SSD, 13.3 inch Display)',28999,'Hewllet Packard',19,'./img/hp_envy_13.png','computer','10:00:00pm 2018/05/01'),(8,'HP Pavillon 15','USA','Laptop Pavilion 15-cc507la (Core i7,  16GB RAM, Nvidia 940MX, 1TB HDD, 15.6 inch Display)',24299,'Hewllet Packard',18,'./img/hp_pavillon_15.png','computer','10:00:00pm 2018/05/01'),(9,'Lenovo Legion Y520','China','Legion Y720-15IKB (Core i7,  8GB RAM, Nvidia 1060, 1TB HDD, 15.6 inch Display)',27999,'Lenovo',20,'./img/lenovo_legion_y520.png','computer','10:00:00pm 2018/05/01'),(10,'Lenovo Yoga 910','China','Lenovo Yoga 910 - Convertible (Core i7,  8GB RAM, Intel HD Graphics, 256SDD, 13.9 inch Display)',27749,'Lenovo',20,'./img/lenovo_legion_yoga_910.png','computer','10:00:00pm 2018/05/01'),(11,'iPhone X 64GB - Space Gray','USA','Apple - iPhone X 64 GB Space Gray - Unlocked',23499,'Apple',20,'./img/iphone_X_spacegray.png','phone','10:00:00pm 2018/05/01'),(12,'iPhone X 256GB - Space Gray','USA','Apple - iPhone X 256 GB Space Gray - Unlocked',26999,'Apple',19,'./img/iphone_X_spacegray.png','phone','10:00:00pm 2018/05/01'),(13,'iPhone X 64GB - Silver','USA','Apple - iPhone X 64 GB Silver - Unlocked',23499,'Apple',20,'./img/iphone_X_silver.png','phone','10:00:00pm 2018/05/01'),(14,'iPhone X 256GB - Silver','USA','Apple - iPhone X 256 GB Silver - Unlocked',26999,'Apple',19,'./img/iphone_X_silver.png','phone','10:00:00pm 2018/05/01'),(15,'Galaxy S9 64GB','South Korea','Samsung - Galaxy S9 64 GB - Black - Unlocked',18169,'Samsung',20,'./img/samsung_s9_black.png','phone','10:00:00pm 2018/05/01'),(16,'Galaxy S9+ 64GB','South Korea','Samsung - Galaxy S9+ 64 GB - Black - Unlocked',20999,'Samsung',20,'./img/samsung_s9_plus_black.png','phone','10:00:00pm 2018/05/01'),(17,'Moto G5 Plus','USA','Motorola - Moto G5 Plus - Unlocked',4999,'Motorola',20,'./img/motorola_G5.png','phone','10:00:00pm 2018/05/01'),(18,'Moto C Plus','USA','Motorola - Moto C Plus - Unlocked',2499,'Motorola',20,'./img/motorola_c.png','phone','10:00:00pm 2018/05/01'),(19,'Moto Z2 Play','USA','Motorola - Moto Z2 Play - Unlocked',8999,'Motorola',20,'./img/motorola_z2.png','phone','10:00:00pm 2018/05/01'),(20,'Nokia 8','Finland','Nokia - Nokia 8 - Unlocked',11999,'Nokia',20,'./img/nokia_8.png','phone','10:00:00pm 2018/05/01'),(21,'Airpods','USA','Apple - Airpods',3599,'Apple',20,'./img/airpods.png','accesory','10:00:00pm 2018/05/01'),(22,'Apple TV 4K','USA','Apple - Apple TV 4K - 32GB',3999,'Apple',20,'./img/apple_tv.png','accesory','10:00:00pm 2018/05/01'),(23,'Chromecast Video','USA','Google - Chromecast Video - Yellow',699,'Google',20,'./img/chromecast_yellow.png','accesory','10:00:00pm 2018/05/01'),(24,'Chromecast Video','USA','Google - Chromecast Video - Red',699,'Google',20,'./img/chromecast_red.png','accesory','10:00:00pm 2018/05/01'),(25,'LG 24MP59G','South Korea','LG - Gaming Monitor IPS LED FHD 24 inches',3799,'LG',20,'./img/lg_24MP59G.png','accesory','10:00:00pm 2018/05/01'),(26,'LG 34UM58-P','South Korea','LG - Ultra Wide Monitor IPS LED 34 inches',3799,'LG',20,'./img/lg_34UM58-P.png','accesory','10:00:00pm 2018/05/01'),(27,'Samsung LS27F350FHL','South Korea','Samsung - 27 inches Monitor LED FHD',5699,'Samsung',20,'./img/samsung_LS27F350FHL.png','accesory','10:00:00pm 2018/05/01'),(28,'BlackWidow Chroma V2','USA','Razer - BlackWidow Chroma V2 Gaming Keyboard',4299,'Razer',20,'./img/blackWidow_chroma_v2.png','accesory','10:00:00pm 2018/05/01'),(29,'Logitech K380','Switzerland','Logitech K380 - Bluetooth Keyboard - Easy Switch',699,'Logitech',20,'./img/logitech_k380.png','accesory','10:00:00pm 2018/05/01'),(30,'Logitech G502','Switzerland','Logitech - Gaming Mouse G502 Proteus Spectrum',999,'Logitech',20,'./img/logitech_g502.png','accesory','10:00:00pm 2018/05/01'),(31,'Microsoft Mouse 1850','USA','Microsoft - Wireless USB Mouse 1850',298,'Microsoft',0,'./img/microsoft_1859.png','accesory','10:00:00pm 2018/05/01');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
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
