-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: empleadoz
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `empleadoz`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `empleadoz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `empleadoz`;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `deptno` int DEFAULT NULL,
  `nombre` varchar(14) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (10,'Contabilidad','Aguascalientes'),(20,'Investigación','Guadalajara'),(30,'Ventas','CDMX'),(40,'Operaciones','Tlaxcala');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `empno` int DEFAULT NULL,
  `nombre` varchar(10) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `jefe` int DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `comision` double DEFAULT NULL,
  `deptno` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1230,'González','Asistente',1242,'2010-10-12',8000,NULL,20),(1231,'Ramos','Vendedor',1235,'2018-02-13',16000,3000,30),(1232,'López','Vendedor',1235,'2001-01-01',12500,5000,30),(1233,'Morales','Administrador',1238,'2014-05-20',29750,NULL,20),(1234,'Aldama','Vendedor',1235,'2001-09-29',28500,NULL,30),(1235,'Huerta','Administrador',1238,'2009-05-16',24500,NULL,30),(1236,'Rosillo','Administrador',1238,'2017-03-13',30000,NULL,10),(1237,'Segura','Analista',1233,'2005-05-05',29750,NULL,20),(1238,'Huesca','Presidente',NULL,'2000-01-01',50000,NULL,10),(1239,'Rosales','Vendedor',1235,'2006-02-24',15000,2000,30),(1240,'Benitez','Asistente',1237,'2008-09-16',11000,NULL,20),(1241,'Corona','Asistente',1235,'2008-08-23',9500,NULL,30),(1242,'Domínguez','Analista',1233,'2017-07-16',30000,NULL,20),(1248,'Portales','Asistente',1236,'2016-02-14',13000,NULL,10);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_proyecto`
--

DROP TABLE IF EXISTS `empleado_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado_proyecto` (
  `empno` int DEFAULT NULL,
  `prono` int DEFAULT NULL,
  `horas` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_proyecto`
--

LOCK TABLES `empleado_proyecto` WRITE;
/*!40000 ALTER TABLE `empleado_proyecto` DISABLE KEYS */;
INSERT INTO `empleado_proyecto` VALUES (1231,1004,15),(1231,1005,12),(1232,1004,10),(1232,1008,8),(1234,1001,16),(1234,1006,15),(1234,1008,5),(1239,1005,6),(1248,1001,4);
/*!40000 ALTER TABLE `empleado_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `prono` int DEFAULT NULL,
  `nombre` varchar(10) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `deptno` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1001,'P1','Tlaxcala',20),(1004,'P4','CDMX',30),(1005,'P5','CDMX',30),(1008,'P6','Aguascalientes',30);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 17:27:16
