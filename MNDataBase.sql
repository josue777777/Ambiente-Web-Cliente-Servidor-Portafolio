CREATE DATABASE  IF NOT EXISTS `mndatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `mndatabase`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mndatabase
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `terror`
--

DROP TABLE IF EXISTS `terror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terror` (
  `IdError` bigint(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(5000) NOT NULL,
  `FechaHora` datetime NOT NULL,
  PRIMARY KEY (`IdError`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terror`
--

LOCK TABLES `terror` WRITE;
/*!40000 ALTER TABLE `terror` DISABLE KEYS */;
INSERT INTO `terror` VALUES (1,'PROCEDURE mndatabase.ValidarInicioSesion2 does not exist','2025-06-18 19:49:23'),(2,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:23'),(3,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:29'),(4,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:30'),(5,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:30'),(6,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:30'),(7,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:31'),(8,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:31'),(9,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:32'),(10,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:32'),(11,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:32'),(12,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:33'),(13,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:33'),(14,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:08:33'),(15,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:10:39'),(16,'Unknown column \'Identificacion2\' in \'field list\'','2025-06-18 20:14:00');
/*!40000 ALTER TABLE `terror` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tusuario`
--

DROP TABLE IF EXISTS `tusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tusuario` (
  `IdUsuario` bigint(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Identificacion` varchar(20) NOT NULL,
  `Contrasenna` varchar(10) NOT NULL,
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tusuario`
--

LOCK TABLES `tusuario` WRITE;
/*!40000 ALTER TABLE `tusuario` DISABLE KEYS */;
INSERT INTO `tusuario` VALUES (1,'Eduardo Calvo Castillo','ecalvo90415@ufide.ac.cr','304590415','90415');
/*!40000 ALTER TABLE `tusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mndatabase'
--
/*!50003 DROP PROCEDURE IF EXISTS `RegistrarError` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistrarError`(pDescripcion varchar(5000))
BEGIN

	INSERT INTO terror(Descripcion,FechaHora)
	VALUES (pDescripcion,NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RegistrarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistrarUsuario`(pNombre varchar(255),
	 pCorreo varchar(100),
     pIdentificacion varchar(20),
     pContrasenna varchar(10))
BEGIN

	INSERT INTO tusuario(Nombre,Correo,Identificacion,Contrasenna)
	VALUES (pNombre,pCorreo,pIdentificacion,pContrasenna);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ValidarCorreo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ValidarCorreo`(pCorreo varchar(100))
BEGIN

	SELECT	Nombre,
            Contrasenna
	FROM 	tusuario
	WHERE 	Correo = pCorreo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ValidarInicioSesion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ValidarInicioSesion`(pCorreo varchar(100),
     pContrasenna varchar(10))
BEGIN

	SELECT	IdUsuario,
			Nombre,
			Correo,
			Identificacion
	FROM 	tusuario
	WHERE 	Correo = pCorreo
		AND Contrasenna = pContrasenna;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-18 20:45:50

select * from tusuario 
