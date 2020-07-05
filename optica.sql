-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: cul_ampolla
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `Clients`
--

DROP TABLE IF EXISTS `Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clients` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) NOT NULL,
  `adr_client` varchar(45) NOT NULL COMMENT 'Adreça client',
  `tel_client` int NOT NULL COMMENT 'Telèfon client',
  `email_client` varchar(255) NOT NULL COMMENT 'correu_electrònic_client',
  `registre_client` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Data de registre del client',
  `referit_id` int DEFAULT NULL COMMENT 'recomanat_per_client_id',
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `telèfon_client_UNIQUE` (`tel_client`),
  UNIQUE KEY `correu_electrònic_client_UNIQUE` (`email_client`),
  KEY `idx_nom` (`nom_client`),
  KEY `idx_correu_electrònic` (`email_client`),
  KEY `idx_telèfon` (`tel_client`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clients`
--

LOCK TABLES `Clients` WRITE;
/*!40000 ALTER TABLE `Clients` DISABLE KEYS */;
INSERT INTO `Clients` VALUES (1,'Marc de Mas','Carrer Torrent de l\'Olla 123',666777888,'email@gmail.com','2020-07-05 16:05:46',1),(4,'Marc de Mas','Carrer Torrent de l\'Olla 123',666777889,'email2@gmail.com','2020-07-05 16:06:45',1),(5,'Marc de Mas','Carrer Torrent de l\'Olla 123',666777890,'email3@gmail.com','2020-07-05 16:07:25',1),(6,'Manolo','Diagonal 111',123345542,'manolo@gmail.com','2020-07-05 16:08:18',1),(7,'Bernat','Carrer Asturies 44',691737912,'bernatbcn@gmail.com','2020-07-05 16:18:35',6);
/*!40000 ALTER TABLE `Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleats`
--

DROP TABLE IF EXISTS `Empleats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleats` (
  `id_empleat` int NOT NULL AUTO_INCREMENT,
  `nom_empleat` varchar(45) NOT NULL,
  `cognom_empleat` varchar(45) NOT NULL,
  PRIMARY KEY (`id_empleat`),
  KEY `idx_nom` (`nom_empleat`),
  KEY `idx_cognom` (`cognom_empleat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleats`
--

LOCK TABLES `Empleats` WRITE;
/*!40000 ALTER TABLE `Empleats` DISABLE KEYS */;
INSERT INTO `Empleats` VALUES (1,'Carme','Pérez'),(2,'Ricard','Martín'),(3,'Manel','Carbonell');
/*!40000 ALTER TABLE `Empleats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveïdors`
--

DROP TABLE IF EXISTS `Proveïdors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveïdors` (
  `id_prov` int NOT NULL AUTO_INCREMENT,
  `nom_prov` varchar(45) NOT NULL,
  `carrer_prov` varchar(45) NOT NULL,
  `num_prov` varchar(6) NOT NULL COMMENT 'Número carrer proveïdor',
  `pis_prov` int DEFAULT NULL,
  `porta_prov` varchar(2) DEFAULT NULL,
  `ciutat_prov` varchar(45) NOT NULL,
  `cp_prov` varchar(10) NOT NULL COMMENT 'codi postal proveïdor',
  `pais_prov` varchar(45) NOT NULL,
  `tel_prov` int DEFAULT NULL COMMENT 'Telèfon proveïdor',
  `fax_prov` int DEFAULT NULL,
  `nif_prov` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_prov`),
  UNIQUE KEY `nom_proveïdor_UNIQUE` (`nom_prov`),
  UNIQUE KEY `nif_proveïdor_UNIQUE` (`nif_prov`),
  KEY `idx_nom` (`nom_prov`),
  KEY `idx_telèfon` (`tel_prov`),
  KEY `idx_nif` (`nif_prov`),
  KEY `idx_ciutat` (`ciutat_prov`),
  KEY `idx_pais` (`pais_prov`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveïdors`
--

LOCK TABLES `Proveïdors` WRITE;
/*!40000 ALTER TABLE `Proveïdors` DISABLE KEYS */;
INSERT INTO `Proveïdors` VALUES (1,'Luxottica','Roc Boronat','114',2,'A','Barcelona','08018','es',654422334,644555332,'R3375446F'),(2,'Ray Ban','Carrer Ample','12',4,'2','Barcelona','08002','es',643909274,691383792,'U76483791'),(3,'Nixon','Broadway avenue','51',32,'4','New York','10006','us',1028492023,1303848203,'G06715395');
/*!40000 ALTER TABLE `Proveïdors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ulleres`
--

DROP TABLE IF EXISTS `Ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ulleres` (
  `id_ullera` int NOT NULL AUTO_INCREMENT,
  `marca_ullera` varchar(45) NOT NULL,
  `grad_vidre_esq_ullera` decimal(4,2) NOT NULL,
  `grad_vidre_dret_ullera` decimal(4,2) NOT NULL,
  `muntura_ullera` varchar(45) NOT NULL,
  `color_muntura_ullera` varchar(45) NOT NULL,
  `color_vidre_esq_ullera` varchar(45) NOT NULL,
  `color_vidre_dret_ullera` varchar(45) NOT NULL,
  `preu_ullera` decimal(6,2) NOT NULL,
  `Proveïdors_id_proveïdor` int NOT NULL,
  `Empleats_id_empleat` int NOT NULL,
  `Clients_id_client` int NOT NULL,
  PRIMARY KEY (`id_ullera`),
  KEY `fk_Ulleres_Proveïdors_idx` (`Proveïdors_id_proveïdor`),
  KEY `fk_Ulleres_Empleats1_idx` (`Empleats_id_empleat`),
  KEY `fk_Ulleres_Clients1_idx` (`Clients_id_client`),
  CONSTRAINT `fk_Ulleres_Clients1` FOREIGN KEY (`Clients_id_client`) REFERENCES `Clients` (`id_client`),
  CONSTRAINT `fk_Ulleres_Empleats1` FOREIGN KEY (`Empleats_id_empleat`) REFERENCES `Empleats` (`id_empleat`),
  CONSTRAINT `fk_Ulleres_Proveïdors` FOREIGN KEY (`Proveïdors_id_proveïdor`) REFERENCES `Proveïdors` (`id_prov`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ulleres`
--

LOCK TABLES `Ulleres` WRITE;
/*!40000 ALTER TABLE `Ulleres` DISABLE KEYS */;
INSERT INTO `Ulleres` VALUES (1,'Ray Ban',2.75,3.00,'pasta','gris','natural','natural',195.95,2,3,6),(2,'Tommy Hilfiger',2.00,1.75,'flotant','negre','natural','natural',175.95,1,1,1),(3,'Dior',2.50,2.50,'metàl·lica','rosa','verd','verd',215.95,1,2,7);
/*!40000 ALTER TABLE `Ulleres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-05 16:37:39
