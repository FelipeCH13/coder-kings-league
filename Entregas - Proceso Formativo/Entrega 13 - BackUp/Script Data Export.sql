-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
-- Tablas seleccionadas: _respaldo_jugadores,_respadlo_jugadores_test,arbitro,asistencias,cantidad_partidos_arbitros,clasificacion,detalles_partidos,detalle_patrocinios,directivo,disputa,draft,empleado
-- equipo,estadisticas_jugadores, goles,jugador, jugadores_franquicia,liga,partido,patrocinador,presidente,reglas,split,staff
-- Host: localhost    Database: kings_league_v2
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Dumping data for table `_respaldo_jugadores`
--

LOCK TABLES `_respaldo_jugadores` WRITE;
/*!40000 ALTER TABLE `_respaldo_jugadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `_respaldo_jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `_respaldo_jugadores_test`
--

LOCK TABLES `_respaldo_jugadores_test` WRITE;
/*!40000 ALTER TABLE `_respaldo_jugadores_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `_respaldo_jugadores_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `arbitro`
--

LOCK TABLES `arbitro` WRITE;
/*!40000 ALTER TABLE `arbitro` DISABLE KEYS */;
INSERT INTO `arbitro` VALUES (1,'Oscar','Muniz','1995-09-12',1),(2,'Edgar','Fernandez','1989-12-04',1),(3,'Salva','Tito','1987-08-23',1),(4,'Jose','Rubio','1992-06-19',1);
/*!40000 ALTER TABLE `arbitro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `asistencias`
--

LOCK TABLES `asistencias` WRITE;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
INSERT INTO `asistencias` VALUES (1,15,90,1),(2,18,90,1),(3,21,7,1),(4,38,7,1),(5,40,8,1);
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clasificacion`
--

LOCK TABLES `clasificacion` WRITE;
/*!40000 ALTER TABLE `clasificacion` DISABLE KEYS */;
INSERT INTO `clasificacion` VALUES (1,8,3,34,27,1,11),(2,7,4,37,26,2,8),(3,7,4,40,34,3,6),(4,7,4,21,18,4,10),(5,7,4,23,22,5,5),(6,6,5,25,25,6,12),(7,6,5,29,30,7,2),(8,5,6,33,25,8,3),(9,5,6,32,34,9,1),(10,4,7,27,29,10,7),(11,3,8,27,40,11,9),(12,1,10,23,41,12,4);
/*!40000 ALTER TABLE `clasificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `directivo`
--

LOCK TABLES `directivo` WRITE;
/*!40000 ALTER TABLE `directivo` DISABLE KEYS */;
INSERT INTO `directivo` VALUES (1,'Gerard','Pique','Presidente','1987-02-02',1),(2,'Oriol','Querol','CEO','1985-01-01',1),(3,'Hiroshi','Mikitani','Founder','1995-05-14',1),(4,'Edmund','Chu','Founder','2000-11-21',1),(5,'Nullah','Sparker','Founder','1995-05-05',1),(6,'Mike','Evans','Founder','1995-05-16',1),(7,'Alex','Bardera','Founder','1996-02-10',1),(8,'Marc','Carrion','Director Marketing','2000-12-23',1),(9,'Claudia','Quiros','Director  Personal','1995-11-29',1),(10,'Ferran','Villaseca','Director Juridico','1988-01-22',1),(11,'Oriol','Granell','Director Comercial','1995-04-01',1),(12,'Eduard','Scott','Director Digital','1991-05-14',1);
/*!40000 ALTER TABLE `directivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `disputa`
--

LOCK TABLES `disputa` WRITE;
/*!40000 ALTER TABLE `disputa` DISABLE KEYS */;
INSERT INTO `disputa` VALUES (1,1,9,1),(2,2,5,4),(3,3,3,7),(4,4,6,12),(5,5,2,11),(6,6,10,8);
/*!40000 ALTER TABLE `disputa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `draft`
--

LOCK TABLES `draft` WRITE;
/*!40000 ALTER TABLE `draft` DISABLE KEYS */;
INSERT INTO `draft` VALUES (1,'2022-12-27','2023-01-01',170,1),(2,'2023-08-03','2023-09-04',150,2);
/*!40000 ALTER TABLE `draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Marta','García','Coordinador','1983-07-15',1),(2,'Laura','Martínez','Fisioterapeuta','1990-04-23',1),(3,'María','López','Preparador Físico','1987-12-05',1),(4,'David','Fernández','Analista de Datos','1992-09-18',1),(5,'Carlos','González','Masajista','1985-11-27',1),(6,'Ana','Rodríguez','Analista de Datos','1998-02-10',1),(7,'Alejandro','Pérez','Jefe de Comunicación','1989-06-08',1),(8,'Patricia','Sánchez','Responsable de Logística','1984-10-13',1),(9,'Daniel','Romero','Gerente de Proyectos','1993-03-20',1),(10,'Cristina','Ramírez','Coordinador de Patrocinios','1991-08-29',1),(11,'Adrián','Navarro','Coordinador de Comunicación','1986-01-07',1),(12,'Isabel','Vidal','Asistente Administrativo','1994-05-31',1),(13,'Juan','Torres','Asistente Operaciones','1997-03-14',1),(14,'Nuria','Ortega','Gerente de Operaciones','1988-09-11',1),(15,'Sergio','Ruiz','Encargado de Seguridad','1995-12-26',1),(16,'Elena','Castro','Director de Producción','1996-04-16',1),(17,'Miguel','Morales','Coordinador de Producción','1981-11-03',1),(18,'Lucía','Gómez','Productor Ejecutivo','1999-06-25',1),(19,'José','Moreno','Coordinador de Eventos','1982-08-09',1),(20,'Ariadna','Castillo','Gerente de Marketing','1980-07-28',1),(21,'lba','López','Editor de Video','1988-05-04',1),(22,'Alejandro','García','Realizador de TV','1983-02-17',1),(23,'Beatriz','Martínez','Director de Fotografía','1991-10-21',1),(24,'Manuel','Rodríguez','Camarógrafo','1997-01-19',1),(25,'Elena','Pérez','Asistente de Producción','1995-09-22',1),(26,'Adrián','Fernández','Técnico de Sonido','1984-03-06',1),(27,'Paula','Gómez','Técnico de Iluminación','1996-07-02',1),(28,'Luis','Sánchez','Operador de Cámara','1993-12-08',1),(29,'Inés','González','Técnico de Video','1986-04-12',1),(30,'Raúl','Torres','Coordinador de Retransmisiones','1989-08-30',1),(31,'Marina','Ramírez','Locutor de TV o Radio','1992-11-24',1),(32,'Sergio','Vargas','Analista Táctico','1998-01-11',1),(33,'Sofía','Castro','Coordinador Control de Acceso','1987-06-05',1),(34,'Francisco','Moreno','Analista Táctico','1981-10-16',1),(35,'Martina','Jiménez','Coordinador de Protocolo','1990-03-25',1),(36,'Diego','Navarro','Locutor de TV o Radio','1994-02-09',1),(37,'Laura','Ortega','Locutor de TV o Radio','1985-09-07',1),(38,'Ignacio','Ruiz','Camarógrafo','1999-05-28',1),(39,'Carla','Morales','Camarógrafo','1982-12-23',1),(40,'Alberto','Herrera','Camarógrafo','1980-07-09',1);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (1,'1K','https://upload.wikimedia.org/wikipedia/commons/9/98/1K_F.C_logo.png',1,1),(2,'Aniquiladores','https://esports.as.com/2022/12/12/aniquiladores.png?hash=d65b67c29f5815c7f4e0ffd2fd8dea9731f2fa3a',2,1),(3,'El Barrio','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/El_Barrio_KL_Logo.svg/800px-El_Barrio_KL_Logo.svg.png',3,1),(4,'Jijantes','https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/JIJANTES_FC.svg/2050px-JIJANTES_FC.svg.png',4,1),(5,'Kunisports','https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Kunisports_logo.svg/800px-Kunisports_logo.svg.png',5,1),(6,'Los Troncos','https://upload.wikimedia.org/wikipedia/commons/8/84/Los_troncos_fckingsleague.png',6,1),(7,'Pio FC','https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/PIO_FC.svg/1200px-PIO_FC.svg.png',7,1),(8,'Porcinos FC','https://kingsleague.pro/wp-content/uploads/2022/11/porcinos-fc.svg',8,1),(9,'Rayo de Barcelona','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Rayo_de_Barcelona_FC.svg/800px-Rayo_de_Barcelona_FC.svg.png',9,1),(10,'Saiyans FC','https://upload.wikimedia.org/wikipedia/commons/0/06/Saiyans_FC.png',10,1),(11,'Ultimate Mostoles','https://upload.wikimedia.org/wikipedia/commons/9/97/Ultimate_M%C3%B3stoles.png',11,1),(12,'Xbuyer Team','https://upload.wikimedia.org/wikipedia/commons/0/0c/XbuyerT.svg',12,1);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `goles`
--

LOCK TABLES `goles` WRITE;
/*!40000 ALTER TABLE `goles` DISABLE KEYS */;
INSERT INTO `goles` VALUES (1,15,93,1),(2,18,92,1),(3,21,4,1),(4,35,5,1),(5,40,6,1),(6,40,7,1);
/*!40000 ALTER TABLE `goles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'Ricardo','Lopez','Arquero','1983-07-15',1,1,NULL),(2,'Roman','Alegre','Defensa','1990-04-23',0,1,1),(3,'Mark','Sorroche','Delantero','1987-12-05',0,1,1),(4,'Marino','Gomez','Delantero','1992-09-18',0,1,1),(5,'Raul','Ledo','Defensa','1985-11-27',0,1,1),(6,'Sergi','Sauras','Defensa','1998-02-10',0,1,1),(7,'Bruno','Guma','Defensa','1989-06-08',0,1,1),(8,'Marc','Pluvins','Medio','1984-10-13',0,1,1),(9,'Oscar','Rivero','Medio','1993-03-20',0,1,1),(10,'Lautaro','Martinez','Delantero','1991-08-29',0,1,1),(11,'Ruben','Tremiño','Delantero','1986-01-07',0,1,1),(12,'Fran','Hernandez','Delantero','1994-05-31',1,2,NULL),(13,'Dani','Perez','Arquero','1997-03-14',0,2,1),(14,'Marc','Galvany','Medio','1988-09-11',0,2,1),(15,'Andres','Serrano','Defensa','1995-12-26',0,2,1),(16,'Bernat','Rovira','Medio','1996-04-16',0,2,1),(17,'Trillus','Martinez','Delantero','1981-11-03',0,2,1),(18,'Xavi','Jorquera','Defensa','1999-06-25',0,2,1),(19,'Gilles','Vidal','Medio','1982-08-09',0,2,1),(20,'Jadir','Cirera','Defensa','1980-07-28',0,2,1),(21,'Roger','Bonet','Medio','1988-05-04',0,2,1),(22,'Xavi','Morales','Arquero','1983-02-17',0,2,1),(23,'Jose','Juan','Arquero','1991-10-21',1,3,NULL),(24,'Jacobo','Liencres','Delantero','1997-01-19',0,3,1),(25,'Andres','Mase','Defensa','1995-09-22',0,3,1),(26,'Pablo','Beguer','Delantero','1984-03-06',0,3,1),(27,'Jordi','Ros','Medio','1996-07-02',0,3,1),(28,'Cristian','Ubon','Medio','1993-12-08',0,3,1),(29,'Pau','ZZ','Defensa','1986-04-12',0,3,1),(30,'Xavi','Olae','Delantero','1989-08-30',0,3,1),(31,'Oriol','Boada','Delantero','1992-11-24',0,3,1),(32,'Victor','Baranera','Medio','1998-01-11',0,3,1),(33,'Javi','Capilla','Medio','1987-06-05',0,3,1),(34,'Roman','Golobart','Defensa','1981-10-16',1,4,NULL),(35,'Lluis','Alsina','Medio','1990-03-25',0,4,1),(36,'Pol','Zapata','Arquero','1994-02-09',0,4,1),(37,'Jay','Mengeli','Defensa','1985-09-07',0,4,1),(38,'Juan','Quero','Medio','1999-05-28',0,4,1),(39,'Arnau','Martinez','Defensa','1982-12-23',0,4,1),(40,'Ivan','Perez','Delantero','1980-07-09',0,4,1),(41,'Joel','Maca','Medio','1998-08-15',0,4,1),(42,'Noel','Bayarri','Defensa','1987-01-21',0,4,1),(43,'Raul','Dorado','Delantero','1983-09-05',0,4,1),(44,'Mario','Leon','Arquero','1995-11-28',0,4,1),(45,'Ferran','Corominas','Delantero','1984-06-14',1,5,NULL),(46,'Carlos','Torrentbo','Delantero','1986-03-30',0,5,1),(47,'Victor','Cocera','Arquero','1990-02-18',0,5,1),(48,'Marcos','Guerrero','Defensa','1991-04-27',0,5,1),(49,'Joan','Ines','Medio','1996-12-12',0,5,1),(50,'Sergio','Rode','Arquero','1989-07-19',0,5,1),(51,'Flavio','Ruggeri','Defensa','1988-05-23',0,5,1),(52,'Nacho','Jimenez','Defensa','1992-10-07',0,5,1),(53,'Victor','Hidalgo','Delantero','1985-02-13',0,5,1),(54,'Lluc','Riera','Delantero','1994-11-09',0,5,1),(55,'Miki','Fernandez','Defensa','1997-06-03',0,5,1),(56,'Carles','Planas','Defensa','1993-09-16',1,6,NULL),(57,'Edgar','Alvaro','Delantero','1987-04-26',0,6,1),(58,'Pol','Lechuga','Arquero','1984-11-30',0,6,1),(59,'David','Soriano','Defensa','1990-10-17',0,6,1),(60,'Sergio','Sanchez','Medio','1989-02-05',0,6,1),(61,'Noel','Lopez','Medio','1991-07-22',0,6,1),(62,'Xavi','Molas','Medio','1995-03-24',0,6,1),(63,'Raul','Martinez','Delantero','1981-12-14',0,6,1),(64,'Dorkis','Perez','Delantero','1983-08-29',0,6,1),(65,'Ivan','Lepetit','Medio','1998-01-31',0,6,1),(66,'Marc','Arus','Arquero','1985-06-12',0,6,1),(67,'Carlos','Lopo','Defensa','1987-09-09',1,7,NULL),(68,'Jorge','Ibañez','Arquero','1993-04-20',0,7,1),(69,'Carlitos','Val','Defensa','1996-11-06',0,7,1),(70,'Pau','Fernandez','Medio','1982-07-02',0,7,1),(71,'Ismael','Cabello','Delantero','1984-03-16',0,7,1),(72,'Bernat','Juarez','Medio','1990-12-25',0,7,1),(73,'Andrew','Turner','Defensa','1986-05-17',0,7,1),(74,'Adri','Castro','Delantero','1989-08-27',0,7,1),(75,'Ivan','Cokita','Medio','1991-01-08',0,7,1),(76,'Aaron','Ropero','Medio','1983-10-21',0,7,1),(77,'Santiago','Adria','Defensa','1994-02-05',0,7,1),(78,'Javier','Espinosa','Medio','1988-06-07',1,8,NULL),(79,'Jose','Segovia','Arquero','1992-09-10',0,8,1),(80,'Gabriel','Cichero','Defensa','1985-11-03',0,8,1),(81,'David','Lopez','Defensa','1997-07-12',0,8,1),(82,'Toti','Salvia','Medio','1998-04-15',0,8,1),(83,'Carlitos','Gonzalez','Medio','1981-12-27',0,8,1),(84,'Kilian','Honorato','Delantero','1987-03-18',0,8,1),(85,'Joselete','Blanco','Delantero','1984-08-08',0,8,1),(86,'Uri','Pons','Delantero','1996-06-19',0,8,1),(87,'Raul','Lao','Medio','1990-01-23',0,8,1),(88,'Sergi','Aguilar','Arquero','1989-09-04',0,8,1),(89,'Pol','Marco','Defensa','1995-05-13',1,9,NULL),(90,'Marc','Pelaz','Medio','1993-03-26',0,9,1),(91,'Joan','Canet','Arquero','1986-04-05',0,9,1),(92,'Guillem','ZZ','Delantero','1982-12-17',0,9,1),(93,'Mario','Reyes','Defensa','1980-07-01',0,9,1),(94,'Franky','Purti','Medio','1998-08-10',0,9,1),(95,'Daniel','Perez','Medio','1983-01-11',0,9,1),(96,'Alejo','Garcia','Defensa','1990-09-28',0,9,1),(97,'Adri','Biboum','Delantero','1987-06-06',0,9,1),(98,'Jhonatan','Jimenez','Medio','1985-05-29',0,9,1),(99,'Alex','Race','Delantero','1991-02-14',0,9,1),(100,'David','Lopez','Delantero','1992-12-29',1,10,NULL),(101,'Marc','Briones','Arquero','1984-03-21',0,10,1),(102,'Gio','Ferinu','Delantero','1989-11-02',0,10,1),(103,'Alex','Campu','Defensa','1986-10-27',0,10,1),(104,'Temo','Korkotashvili','Medio','1996-09-09',0,10,1),(105,'Cristhian','Valle','Medio','1988-07-18',0,10,1),(106,'Victor','Torres','Defensa','1995-04-04',0,10,1),(107,'Feliu','Torrus','Medio','1987-03-23',0,10,1),(108,'David','Alba','Delantero','1990-09-16',0,10,1),(109,'Roger','Carbo','Medio','1989-12-13',0,10,1),(110,'Ivan','Fajardo','Arquero','1992-04-18',0,10,1),(111,'Juanma','Gonzalez','Delantero','1981-05-25',1,11,NULL),(112,'Alvaro','Arche','Medio','1994-06-15',0,11,1),(113,'Iu','Morral','Arquero','1982-08-06',0,11,1),(114,'Alex','Gutti','Defensa','1996-01-24',0,11,1),(115,'Aleix','Lage','Medio','1993-07-19',0,11,1),(116,'Llur','Genesca','Delantero','1987-10-30',0,11,1),(117,'Iker','Lopez','Defensa','1985-04-02',0,11,1),(118,'Ian','Gonzalez','Defensa','1986-05-25',0,11,1),(119,'Steven','Zea','Delantero','1991-03-07',0,11,1),(120,'Nacho','Berche','Arquero','1995-11-22',0,11,1),(121,'Lucca','Ribeiro','Medio','1988-12-08',0,11,1),(122,'Carlos','Castro','Medio','1983-09-03',1,12,NULL),(123,'Adria','Gutierrez','Arquero','1994-02-13',0,12,1),(124,'Joan','Poch','Delantero','1989-10-01',0,12,1),(125,'Iñaki','Villalba','Medio','1987-05-28',0,12,1),(126,'Dani','Santiago','Defensa','1990-04-11',0,12,1),(127,'Marc','Granero','Defensa','1985-06-23',0,12,1),(128,'Goran','Ehsan','Medio','1993-08-02',0,12,1),(129,'Joel','Bañuls','Defensa','1998-01-27',0,12,1),(130,'Franc','Cortes','Medio','1986-11-09',0,12,1),(131,'Benjamin','Sierra','Delantero','1984-10-05',0,12,1),(132,'Sep','Corderas','Arquero','1990-09-18',0,12,1),(134,'Lamine','Yamal','Delantero','2015-07-15',1,1,NULL),(135,'Papi','Gavi','Delantero','1991-04-23',0,1,1);
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `liga`
--

LOCK TABLES `liga` WRITE;
/*!40000 ALTER TABLE `liga` DISABLE KEYS */;
INSERT INTO `liga` VALUES (1,'Kings League','https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiNmr3x593X8GjomMqLcB4P9xWwHkOdPaVrGMmpzTHPVOqbRWm99YfvMewmPP6CVbINSEOaPr0oU3xogUosxQ0CrocBPvAAAbt8MLdH7hl6Hd-2CV7faJN5wPcLs77N94eXMz65okiBEPqH-dxaAwx3WG6FeIGcXZ15svL2gP77e8K87FHtY7gEoV5gEA/s512/kings%20league%20Infojobs%20Logo.png\n');
/*!40000 ALTER TABLE `liga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `partido`
--

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;
INSERT INTO `partido` VALUES (1,'2023-01-01',2,4,1),(2,'2023-01-01',2,1,1),(3,'2023-01-01',5,0,2),(4,'2023-01-01',5,3,2),(5,'2023-01-01',1,5,3),(6,'2023-01-01',4,2,4);
/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `patrocinador`
--

LOCK TABLES `patrocinador` WRITE;
/*!40000 ALTER TABLE `patrocinador` DISABLE KEYS */;
INSERT INTO `patrocinador` VALUES (1,'Telefónica',78536,1),(2,'Banco Santander',54672,2),(3,'BBVA',93785,3),(4,'Repsol',64327,4),(5,'Iberdrola',21897,5),(6,'Inditex (Zara)',73241,6),(7,'CaixaBank',37249,7),(8,'Movistar',56894,8),(9,'Endesa',48210,9),(10,'Mapfre',89341,10),(11,'El Corte Inglés',65298,11),(12,'Ferrovial',40927,12),(13,'RED BULL',15200,1),(14,'CAIXA BANK',30700,2),(15,'EA SPORTS',12000,11);
/*!40000 ALTER TABLE `patrocinador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `presidente`
--

LOCK TABLES `presidente` WRITE;
/*!40000 ALTER TABLE `presidente` DISABLE KEYS */;
INSERT INTO `presidente` VALUES (1,'Iker','Casillas','1981-05-20'),(2,'Juan','Guarnizo','1994-08-28'),(3,'Adrian','Contreras','1995-06-03'),(4,'Gerard','Romero','1980-01-01'),(5,'Sergio','Agüero','1988-06-02'),(6,'Jaume','Cremades','1993-07-25'),(7,'Samantha','Rivera','1994-07-04'),(8,'Ibai','Llanos','1995-03-15'),(9,'David','Moreno','1993-11-11'),(10,'David','Canovas','1997-04-24'),(11,'Mario','Garrido','1990-02-26'),(12,'Javi','Ruiz','1996-01-07');
/*!40000 ALTER TABLE `presidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reglas`
--

LOCK TABLES `reglas` WRITE;
/*!40000 ALTER TABLE `reglas` DISABLE KEYS */;
INSERT INTO `reglas` VALUES (1,'Duración del partido','Los partidos duran 40 minutos, divididos en dos partes de 20 minutos cada una.',1),(2,'Penaltis desde el centro del campo','Si el partido termina en empate, se decide el ganador mediante una tanda de penaltis desde el centro del campo, donde el jugador tiene 5 segundos para marcar.',1),(3,'Fuera de juego','Hay fuera de juego, igual que en el fútbol 11. Se aplica cuando un jugador del equipo atacante se encuentra más cerca de la línea de meta que el balón y el penúltimo adversario.',1),(4,'Saques de banda','Los saques de banda se hacen con la mano. El jugador debe tener los dos pies sobre la línea lateral o sobre el suelo fuera del terreno de juego y lanzar el balón con ambas manos desde atrás y por encima de la cabeza.',1),(5,'Tarjetas','La tarjeta amarilla supone dos minutos de exclusión, y la roja cinco minutos hasta que entre un sustituto. El árbitro puede mostrar tarjetas por faltas, protestas, conductas antideportivas o retrasar la reanudación del juego.',1),(6,'Número de jugadores','Cada equipo juega con siete (7) jugadores, incluyendo el portero. Los equipos pueden tener hasta cinco (5) suplentes en el banquillo.',1),(7,'Saque inicial','El balón se sitúa en el centro del campo y los jugadores arrancan desde la línea de fondo. ',1),(8,'Fuera de juego','Existe la regla del fuera de juego, que se aplica cuando un jugador del equipo atacante se encuentra más cerca de la línea de fondo que el balón y el penúltimo adversario (incluyendo al portero) en el momento en que el balón es jugado por un compañero.',1),(9,'Penaltis','Los penaltis se lanzan desde medio campo (shootouts), con un tiempo máximo de cinco (5) segundos para ejecutarlos. El portero debe permanecer sobre la línea de meta hasta que el balón sea tocado por el lanzador. Si hay empate al final del partido, se decide con una tanda de cinco (5) penaltis para cada equipo. Si persiste el empate, se continúa con muerte súbita.',1),(10,'Cambios ilimitados','Los equipos pueden hacer cambios de jugadores de manera ilimitada y sin detener el tiempo. Los jugadores que salen deben hacerlo por la zona del banquillo y los que entran deben esperar a que salgan completamente.',1),(11,'Tiempo muerto','Cada equipo tiene derecho a un tiempo muerto por partido, que puede solicitar en cualquier momento. El tiempo muerto dura un minuto y el reloj se detiene durante ese tiempo.',1),(12,'Balón fuera','Cuando el balón sale por la línea de fondo, se reanuda el juego con un saque de meta o un córner, según corresponda. El saque de meta se realiza desde el área pequeña y el córner desde el vértice del área grande.',1),(13,'Faltas y tarjetas','Las faltas se sancionan con un tiro libre directo o indirecto, según el criterio del árbitro. El tiro libre se ejecuta desde el lugar donde se cometió la falta, salvo que sea dentro del área grande, en cuyo caso se concede un penalti2. La tarjeta amarilla supone dos minutos de exclusión, para posteriormente volver a entrar. La tarjeta roja supone cinco minutos de exclusión, y el equipo tendrá que esperar hasta que entre un sustituto.',1);
/*!40000 ALTER TABLE `reglas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `split`
--

LOCK TABLES `split` WRITE;
/*!40000 ALTER TABLE `split` DISABLE KEYS */;
INSERT INTO `split` VALUES (1,'2023-01-01','2023-03-26',3,1),(2,'2023-05-07','2023-07-29',12,1);
/*!40000 ALTER TABLE `split` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Alejandro','García','Primer entrenador','1975-08-20',1),(2,'Marta','Martínez','Segundo entrenador','1980-02-15',1),(3,'Javier','López','Entrenador de arqueros','1982-06-10',1),(4,'Laura','Fernández','Fisioterapeuta','1983-09-28',1),(5,'Pablo','González','Primer entrenador','1986-04-03',2),(6,'Clara','Rodríguez','Segundo entrenador','1990-11-12',2),(7,'Sergio','Pérez','Entrenador de arqueros','1991-07-30',2),(8,'Elena','Sánchez','Fisioterapeuta','1988-03-25',2),(9,'Diego','Romero','Primer entrenador','1985-12-09',3),(10,'Carmen','Ramírez','Segundo entrenador','1993-01-18',3),(11,'Bruno','Navarro','Entrenador de arqueros','1989-10-05',3),(12,'Patricia','Vidal','Fisioterapeuta','1978-11-07',3),(13,'Álvaro','Torres','Primer entrenador','1987-05-23',4),(14,'Inés','Ortega','Segundo entrenador','1995-09-02',4),(15,'Adrián','Ruiz','Entrenador de arqueros','1984-07-15',4),(16,'Lucía','Castro','Fisioterapeuta','1996-12-28',4),(17,'Raúl','Morales','Primer entrenador','1979-03-19',5),(18,'Paula','Gómez','Segundo entrenador','1981-06-06',5),(19,'Hugo','Moreno','Entrenador de arqueros','1987-10-22',5),(20,'Martina','Jiménez','Fisioterapeuta','1994-08-09',5),(21,'Iván','Silva','Primer entrenador','1977-04-11',6),(22,'Alba','Espinosa','Segundo entrenador','1992-02-14',6),(23,'Juan','Alonso','Entrenador de arqueros','1991-09-10',6),(24,'Alicia','Rojas','Fisioterapeuta','1983-11-05',6),(25,'Diego','Herrera','Primer entrenador','1986-08-29',7),(26,'Isabel','Torres','Segundo entrenador','1976-01-31',7),(27,'Daniel','Ríos','Entrenador de arqueros','1980-07-03',7),(28,'Carla','Aguilar','Fisioterapeuta','1995-03-07',7),(29,'Rubén','Molina','Primer entrenador','1988-12-14',8),(30,'Sonia','Domínguez','Segundo entrenador','1997-04-21',8),(31,'Mario','Vargas','Entrenador de arqueros','1989-02-11',8),(32,'Silvia','Gil','Fisioterapeuta','1993-10-26',8),(33,'Guillermo','Mendoza','Primer entrenador','1981-08-18',9),(34,'María','Rivas','Segundo entrenador','1978-12-02',9),(35,'Carlos','Paredes','Entrenador de arqueros','1992-05-24',9),(36,'Nora','Carmona','Fisioterapeuta','1979-09-16',9),(37,'Víctor','Bravo','Primer entrenador','1985-02-03',10),(38,'Andrea','Cordero','Segundo entrenador','1990-01-08',10),(39,'Iker','Fuentes','Entrenador de arqueros','1986-07-27',10),(40,'Aitana','Peralta','Fisioterapeuta','1998-06-01',10),(41,'Joel','Merino','Primer entrenador','1984-09-23',11),(42,'Nuria','Núñez','Segundo entrenador','1977-12-20',11),(43,'Hugo','Moya','Entrenador de arqueros','1996-11-11',11),(44,'Emma','Menéndez','Fisioterapeuta','1983-10-17',11),(45,'Iñaki','Pascual','Primer entrenador','1982-04-13',12),(46,'Júlia','Carrasco','Segundo entrenador','1994-03-08',12),(47,'Alex','Céspedes','Entrenador de arqueros','1991-03-09',12),(48,'Laia','Calvo','Fisioterapeuta','1978-06-22',12);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-04 20:21:17
