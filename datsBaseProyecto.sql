-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: dataBaseNotes
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `categorias`
--
DROP DATABASE IF EXISTS dataBaseProyectoNotas;
CREATE DATABASE dataBaseProyectoNotas;
USE dataBaseProyectoNotas;

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (7,'amigos'),(10,'compras'),(8,'deporte'),(1,'escuela'),(3,'familia'),(5,'hijos'),(6,'hobbies'),(9,'mascotas'),(4,'pareja'),(2,'trabajo');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_notas`
--

DROP TABLE IF EXISTS `categorias_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nota_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `nota_id_idx` (`nota_id`),
  KEY `categoria_id_idx` (`categoria_id`),
  CONSTRAINT `categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `nota_id` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_notas`
--

LOCK TABLES `categorias_notas` WRITE;
/*!40000 ALTER TABLE `categorias_notas` DISABLE KEYS */;
INSERT INTO `categorias_notas` VALUES (1,1,1),(2,2,1),(3,2,5),(4,5,6),(5,5,5),(6,6,6),(7,7,8),(8,9,10),(9,5,4),(10,4,3);
/*!40000 ALTER TABLE `categorias_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `user_id` int NOT NULL,
  `fecha de creacion` date NOT NULL,
  `ultima modificacion` date NOT NULL,
  `id_permiso_eliminar` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `id_permiso_eliminar_idx` (`id_permiso_eliminar`),
  CONSTRAINT `id_permiso_eliminar` FOREIGN KEY (`id_permiso_eliminar`) REFERENCES `permiso eliminar` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'cev','kdk',1,'2020-12-01','2020-12-01',1),(2,'prueba','prueba',2,'2021-10-12','2021-10-12',2),(3,'prueba','prueba',3,'2020-06-01','2020-06-10',2),(4,'prueba','prueba',4,'2021-10-12','2021-10-12',1),(5,'prueba','prueba',4,'2020-12-01','2020-12-01',1),(6,'prueba','prueba',5,'2021-10-12','2021-10-12',2),(7,'prueba','prueba',6,'2021-10-12','2021-10-12',1),(8,'kekj','bb',7,'2020-06-01','2020-06-01',1),(9,'tnrrr','hnrb',8,'2020-12-01','2020-12-01',1),(10,'f bg','rerrr',9,'2020-12-01','2020-12-01',1),(11,'rggds','hhdd',10,'2021-10-12','2021-10-12',1);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso eliminar`
--

DROP TABLE IF EXISTS `permiso eliminar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permiso eliminar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `se  puede eliminar` char(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `se  puede eliminar_UNIQUE` (`se  puede eliminar`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso eliminar`
--

LOCK TABLES `permiso eliminar` WRITE;
/*!40000 ALTER TABLE `permiso eliminar` DISABLE KEYS */;
INSERT INTO `permiso eliminar` VALUES (2,'no'),(1,'si');
/*!40000 ALTER TABLE `permiso eliminar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Luís','luisg@embraer.com.br'),(2,'Leonie','leonekohler@surfeu.de'),(3,'François','ftremblay@gmail.com'),(4,'Bjørn','bjorn.hansen@yahoo.no'),(5,'František','frantisekw@jetbrains.com'),(6,'Helena','hholy@gmail.com'),(7,'Astrid','astrid.gruber@apple.at'),(8,'Daan','daan_peeters@apple.be'),(9,'Kara','kara.nielsen@jubii.dk'),(10,'Eduardo','eduardo@woodstock.com.br'),(11,'Alexandre','alero@uol.com.br'),(12,'Roberto','roberto.almeida@riotur.gov.br'),(13,'Fernanda','fernadaramos4@uol.com.br'),(14,'Mark','mphilips12@shaw.ca'),(15,'Jennifer','jenniferp@rogers.ca'),(16,'Frank','fharris@google.com'),(17,'Jack','jacksmith@microsoft.com'),(18,'Michelle','michelleb@aol.com'),(19,'Tim','tgoyer@apple.com'),(20,'Dan','dmiller@comcast.com'),(21,'Kathy','kachase@hotmail.com'),(22,'Heather','hleacock@gmail.com'),(23,'John','johngordon22@yahoo.com'),(24,'Frank','fralston@gmail.com'),(25,'Victor','vstevens@yahoo.com'),(26,'Richard','ricunningham@hotmail.com'),(27,'Patrick','patrick.gray@aol.com'),(28,'Julia','jubarnett@gmail.com'),(29,'Robert','robbrown@shaw.ca'),(30,'Edward','edfrancis@yachoo.ca'),(31,'Martha','marthasilk@gmail.com'),(32,'Aaron','aaronmitchell@yahoo.ca'),(33,'Ellie','ellie.sullivan@shaw.ca'),(34,'João','jfernandes@yahoo.pt'),(35,'Madalena','masampaio@sapo.pt'),(36,'Hannah','hannah.schneider@yahoo.de'),(37,'Fynn','fzimmermann@yahoo.de'),(38,'Niklas','nschroder@surfeu.de'),(39,'Camille','camille.bernard@yahoo.fr'),(40,'Dominique','dominiquelefebvre@gmail.com'),(41,'Marc','marc.dubois@hotmail.com'),(42,'Wyatt','wyatt.girard@yahoo.fr'),(43,'Isabelle','isabelle_mercier@apple.fr'),(44,'Terhi','terhi.hamalainen@apple.fi'),(45,'Ladislav','ladislav_kovacs@apple.hu'),(46,'Hugh','hughoreilly@apple.ie'),(47,'Lucas','lucas.mancini@yahoo.it'),(48,'Johannes','johavanderberg@yahoo.nl'),(49,'Stanisław','stanisław.wójcik@wp.pl'),(50,'Enrique','enrique_munoz@yahoo.es'),(51,'Joakim','joakim.johansson@yahoo.se'),(52,'Emma','emma_jones@hotmail.com'),(53,'Phil','phil.hughes@gmail.com'),(54,'Steve','steve.murray@yahoo.uk'),(55,'Mark','mark.taylor@yahoo.au'),(56,'Diego','diego.gutierrez@yahoo.ar'),(57,'Luis','luisrojas@yahoo.cl'),(58,'Manoj','manoj.pareek@rediff.com'),(59,'Puja','puja_srivastava@yahoo.in'),(119,'pablo','pablo@gmail.com'),(120,'pedro','pedro@gmail.com'),(121,'peter','peter@gmail.com'),(122,'pato','pato@gmail.com'),(123,'pico','pico@gmail.com'),(124,'ponte','ponte@gmail.com'),(125,'pancracio','pancracio@gmail.com'),(126,'porter','porter@gmail.com'),(127,'pompo','pompo@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-17 16:58:26
