# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.4.28-MariaDB)
# Base de datos: transmision
# Tiempo de Generación: 2023-10-23 21:06:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla archivos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `archivos`;

CREATE TABLE `archivos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_archivo` varchar(240) DEFAULT NULL,
  `folder` varchar(240) DEFAULT NULL,
  `equipo_id` int(10) DEFAULT NULL,
  `gabinete_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `archivos` WRITE;
/*!40000 ALTER TABLE `archivos` DISABLE KEYS */;

INSERT INTO `archivos` (`id`, `nombre_archivo`, `folder`, `equipo_id`, `gabinete_id`)
VALUES
	(1,'PCYM NIZ 73480','PDF',NULL,122),
	(2,'PCYM TIN 73C60','PDF',NULL,122),
	(3,'PCYM TIN 73C80','PDF',NULL,122),
	(4,'PCYM TIN 87B 115KV_1','PDF',NULL,122),
	(5,'PCYM TIN 87B 115KV_2','PDF',NULL,121),
	(6,'PCYM TIN 73480','PDF',NULL,121),
	(7,'PCYM TIN 77000_1','PDF',NULL,121),
	(8,'PCYM TIN ESMAR','PDF',NULL,121),
	(9,'PCYM TIN MMF','PDF',NULL,121);

/*!40000 ALTER TABLE `archivos` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla caracteristicas_de_equipos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `caracteristicas_de_equipos`;

CREATE TABLE `caracteristicas_de_equipos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `equipo_id` int(10) DEFAULT NULL,
  `caracteristica_id` int(10) DEFAULT NULL,
  `valor` longtext DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `caracteristicas_de_equipos` WRITE;
/*!40000 ALTER TABLE `caracteristicas_de_equipos` DISABLE KEYS */;

INSERT INTO `caracteristicas_de_equipos` (`id`, `equipo_id`, `caracteristica_id`, `valor`)
VALUES
	(1,34,1,'192.168.1.256'),
	(2,103,2,'HIM 7000'),
	(3,34,2,'HIM 7000'),
	(4,103,1,'192.168.1.256'),
	(5,133,7,'375 HZ'),
	(6,133,8,'290 HZ'),
	(7,133,1,'10.28.83.82'),
	(8,133,6,'1.44'),
	(9,133,2,'POWERSYS'),
	(10,134,7,'85 HZ'),
	(11,134,8,'105 HZ'),
	(12,134,1,'10.28.83.84'),
	(13,134,6,'1.44'),
	(14,134,2,'POWERSYS'),
	(15,126,7,'120 HZ'),
	(16,126,8,'335 HZ'),
	(17,126,1,'10.128.98.3'),
	(18,126,6,'1.44'),
	(19,126,2,'POWERSYS'),
	(20,128,7,'320 HZ'),
	(21,128,8,'305 HZ'),
	(22,128,1,'10.28.84.57'),
	(23,128,6,'1.44'),
	(24,128,2,'POWERSYS'),
	(25,120,7,'455 HZ'),
	(26,120,8,'485 HZ'),
	(27,135,7,'331.25 HZ'),
	(28,135,8,'116.25 HZ'),
	(29,135,1,'10.28.83.80'),
	(30,135,6,'1.44'),
	(31,135,2,'POWERSYS'),
	(32,136,7,'320 HZ'),
	(33,136,8,'305 HZ'),
	(34,136,1,'10.28.83.78'),
	(35,136,6,'1.44'),
	(36,136,2,'POWERSYS'),
	(37,132,7,'455 HZ'),
	(38,132,8,'485 HZ'),
	(39,137,7,'245 HZ'),
	(40,137,8,'260 HZ'),
	(41,137,1,'10.28.83.76'),
	(42,137,6,'1.44'),
	(43,137,2,'POWERSYS'),
	(44,129,7,'245 HZ'),
	(45,129,8,'260 HZ'),
	(46,129,1,'10.28.82.44'),
	(47,129,6,'1.44'),
	(48,129,2,'POWERSYS'),
	(49,130,7,'275 HZ'),
	(50,130,8,'350 HZ'),
	(51,130,1,'10.28.82.44'),
	(52,130,6,'1.44'),
	(53,130,2,'POWERSYS'),
	(54,138,7,'275 HZ'),
	(55,138,8,'350 HZ'),
	(56,138,1,'10.28.83.74'),
	(57,138,6,'1.44'),
	(58,138,2,'POWERSYS'),
	(59,122,7,'170 HZ'),
	(60,122,8,'225 HZ'),
	(61,122,1,'10.28.84.114'),
	(62,122,6,'1.21'),
	(63,122,2,'POWERSYS'),
	(64,131,7,'65 HZ'),
	(65,131,8,'95 HZ'),
	(66,4,7,'145 HZ'),
	(67,4,8,'240 HZ'),
	(68,4,1,'10.28.30.174'),
	(69,4,34,'3'),
	(70,4,35,'3'),
	(71,4,10,'Master'),
	(72,4,2,'e-tarregridcom T390'),
	(80,1,7,'160 HZ'),
	(81,1,8,'230 HZ'),
	(82,1,1,'10.28.30.178'),
	(83,1,34,'3'),
	(84,1,35,'3'),
	(85,1,10,'Master'),
	(86,1,2,'e-tarregridcom T390'),
	(87,149,7,'240 HZ'),
	(88,149,8,'145 HZ'),
	(89,149,1,'10.28.84.26'),
	(90,149,34,'3'),
	(91,149,35,'3'),
	(92,149,10,'Esclavo'),
	(93,149,2,'e-tarregridcom T390'),
	(94,189,1,'10.28.60.126');

/*!40000 ALTER TABLE `caracteristicas_de_equipos` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla departamento
# ------------------------------------------------------------

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;

INSERT INTO `departamento` (`id`, `nombre`)
VALUES
	(1,'SUPERINTENDENCIA'),
	(2,'COMUNICACIONES'),
	(3,'SUBESTACIONES'),
	(5,'GERENCIA'),
	(6,'ADMINISTRACION'),
	(7,'GESTION Y SEPROMEPRO'),
	(8,'SUPERINTENDENCIA'),
	(9,'LINEAS DE TRANSMISION'),
	(10,'PROTECIONES'),
	(11,'INFORMATICA'),
	(12,'CALIDAD Y SEGUIMIENTO'),
	(13,'MODERNIZACION'),
	(14,'AUX.ADMINISTRATIVO'),
	(15,'PROTECCIONES'),
	(16,'CONTROL'),
	(17,'OFICINAS'),
	(18,'ALMACEN'),
	(19,'SUBESTACION'),
	(20,'CASETA DE COMUNICACIONES'),
	(24,'SECTOR PLAYA DEL CARMEN'),
	(25,'ZONA DE OPERACION CANCUN'),
	(26,'CENTRO DE OPERACION REGIONAL DE FIBRA OPTICA');

/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla directorio
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directorio`;

CREATE TABLE `directorio` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `puesto` int(11) DEFAULT NULL,
  `extension` int(11) DEFAULT NULL,
  `departamento` int(10) DEFAULT NULL,
  `zona` int(10) DEFAULT NULL,
  `prioridad` int(11) DEFAULT 9,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `directorio` WRITE;
/*!40000 ALTER TABLE `directorio` DISABLE KEYS */;

INSERT INTO `directorio` (`id`, `nombre`, `apellido`, `puesto`, `extension`, `departamento`, `zona`, `prioridad`)
VALUES
	(1,NULL,NULL,1,35001,1,1,9),
	(2,'ARICELA ','GONZALEZ PEÑA',22,35002,1,1,9),
	(3,NULL,NULL,4,35003,17,1,9),
	(4,NULL,NULL,19,35010,12,1,3),
	(5,'MICHEL','KUMUL SOLIS',17,35011,12,1,9),
	(6,'GABRIELA','MEDINA RUIZ',25,35012,12,1,9),
	(7,'EDWIN ','FUENTES UK',19,35020,3,1,3),
	(8,'ERIKA ','HERNANDEZ SALCIDO',2,35021,3,1,9),
	(9,'JOSE','ALFREDO OROZCO',15,35022,3,1,3),
	(10,NULL,NULL,16,35024,3,1,9),
	(11,'CARLOS','ZARATE',19,35030,9,1,3),
	(12,NULL,NULL,16,35033,9,1,9),
	(13,'DANIEL ','HERNADEZ ZACARIAS',19,35040,15,1,3),
	(14,'CAROLINA','CAMARA MEDINA ',2,35041,15,1,9),
	(15,'FRANCISCO','MEDINA RUIZ',17,35042,15,1,9),
	(16,NULL,NULL,16,35043,15,1,9),
	(17,'MIGUEL','VERDIN RUIZ',19,35050,2,1,3),
	(18,'JAVIER ISMAEL','MARIN HERRRERA',17,35051,2,1,9),
	(19,'ADAN','MEDINA GRIMALDO',15,35054,2,1,3),
	(20,NULL,NULL,60,35056,2,1,9),
	(21,'SERGIO','QUIJANO FERNANDEZ',19,35060,16,1,3),
	(22,'VIRIDIANA','RODRIGUEZ PARRAZAL',2,35061,16,1,9),
	(23,NULL,NULL,16,35062,16,1,9),
	(24,'SERGIO ','ESPINOSA ARCILA',17,35063,16,1,9),
	(25,'E.F MISAEL','ESPINOZA CUEVAS',19,35070,7,1,3),
	(26,'AHIRA','SOLIS PAZ',2,35071,7,1,9),
	(27,'ALEJANDRO','DOMINGUEZ LEÓN',17,35072,7,1,9),
	(28,'GILDA ELVIRA','CAUICH  CHIM',51,35074,7,1,9),
	(29,NULL,NULL,52,35076,17,1,9),
	(30,NULL,NULL,18,35077,17,1,9),
	(31,NULL,NULL,53,35078,17,1,9),
	(32,'ABRIL','TZEC RAMIREZ',19,35080,6,1,3),
	(33,'ERIKA','ORTIZ VAZQUEZ',2,35081,6,1,9),
	(34,NULL,NULL,15,35082,6,1,3),
	(35,'MARIA ','HERRERA CHAN',54,35083,6,1,9),
	(36,'KARINA','BENITEZ COUOH',55,35084,6,1,9),
	(37,'CINTIA','MAGAÑA RAMIREZ',56,35085,6,1,9),
	(38,'MA. DANIELA','MUÑOZ PERERA',57,35086,6,1,9),
	(39,'ALMA','COUOH KOH',58,35087,6,1,9),
	(40,'CINDY','CAUICH CHALE',59,35088,6,1,9),
	(41,'JOSE','MARIA CABALLERO',19,35090,13,1,3),
	(42,NULL,NULL,17,35091,13,1,9),
	(43,'AMADA ','LARA PEÓN',17,35100,18,1,9),
	(44,NULL,NULL,11,35101,19,1,2),
	(45,NULL,NULL,12,35102,19,1,2),
	(47,NULL,NULL,14,35104,19,1,2),
	(48,NULL,NULL,10,35105,19,1,2),
	(49,NULL,NULL,13,35106,19,1,2),
	(50,NULL,NULL,5,35107,19,1,2),
	(51,NULL,NULL,6,35108,19,1,2),
	(52,NULL,NULL,7,35109,19,1,2),
	(53,NULL,NULL,8,35110,19,1,2),
	(54,NULL,NULL,61,35151,20,1,9),
	(55,NULL,NULL,62,35152,20,1,9),
	(56,NULL,NULL,63,35153,20,1,9),
	(57,NULL,NULL,64,35154,19,1,2),
	(58,NULL,NULL,65,35155,20,1,9),
	(59,NULL,NULL,66,35200,24,1,9),
	(60,NULL,NULL,4,35201,24,1,9),
	(61,NULL,NULL,15,35220,24,1,3),
	(62,NULL,NULL,67,35221,24,1,9),
	(63,'MISAEL','ESPISNOSA CUEVAS',68,35250,24,1,9),
	(64,'DAVID','MONTERO BARRERA',69,35251,24,1,9),
	(65,NULL,NULL,70,39025,25,3,1),
	(66,NULL,NULL,70,39026,25,3,1),
	(67,NULL,NULL,70,39027,25,3,1),
	(68,NULL,NULL,71,30253,26,4,1),
	(69,NULL,NULL,72,30254,26,4,1),
	(70,NULL,NULL,73,35111,19,1,2),
	(72,NULL,NULL,16,35052,2,1,9);

/*!40000 ALTER TABLE `directorio` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla gabinetes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gabinetes`;

CREATE TABLE `gabinetes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subestacion` int(10) DEFAULT NULL,
  `etiqueta` varchar(3) DEFAULT NULL,
  `archivo` tinyint(1) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `gabinetes` WRITE;
/*!40000 ALTER TABLE `gabinetes` DISABLE KEYS */;

INSERT INTO `gabinetes` (`id`, `subestacion`, `etiqueta`, `archivo`)
VALUES
	(1,1,'A1',NULL),
	(2,1,'A2',NULL),
	(3,1,'A3',NULL),
	(4,1,'A4',NULL),
	(5,1,'A5',NULL),
	(29,1,'A29',NULL),
	(7,1,'A7',NULL),
	(30,1,'A30',NULL),
	(31,1,'A31',NULL),
	(33,1,'A33',NULL),
	(34,1,'B1',NULL),
	(35,1,'B2',NULL),
	(36,1,'B3',NULL),
	(37,1,'B4',NULL),
	(38,1,'B5',NULL),
	(39,1,'B6',NULL),
	(42,1,'B9',NULL),
	(44,1,'B11',NULL),
	(53,1,'B16',NULL),
	(56,1,'C1',NULL),
	(57,1,'C2',NULL),
	(58,1,'C3',NULL),
	(59,1,'C4',NULL),
	(60,1,'C5',NULL),
	(61,1,'C6',NULL),
	(62,1,'C7',NULL),
	(63,1,'C8',NULL),
	(64,1,'C9',NULL),
	(65,1,'C10',NULL),
	(66,1,'C11',NULL),
	(67,1,'C12',NULL),
	(68,1,'C13',NULL),
	(69,1,'C14',NULL),
	(70,1,'C15',NULL),
	(71,1,'C16',NULL),
	(72,1,'C17',NULL),
	(73,1,'C18',NULL),
	(74,1,'C19',NULL),
	(75,1,'C20',NULL),
	(76,1,'C21',NULL),
	(77,1,'C22',NULL),
	(78,1,'C23',NULL),
	(79,1,'C24',NULL),
	(100,2,'A1',0),
	(101,2,'A2',2),
	(102,2,'A3',3),
	(103,2,'A4',1),
	(104,2,'A5',7),
	(105,2,'A6',6),
	(106,2,'A7',5),
	(107,2,'A8',8),
	(108,2,'A9',4),
	(109,2,'A10',9),
	(110,2,'B1',NULL),
	(111,2,'B2',NULL),
	(112,2,'B3',NULL),
	(113,2,'B4',NULL),
	(114,2,'B5',NULL),
	(115,2,'B6',NULL),
	(116,2,'B7',NULL),
	(117,2,'B8',NULL),
	(118,2,'B9',NULL),
	(119,2,'B10',NULL),
	(120,2,'B11',NULL),
	(121,2,'B12',NULL),
	(122,2,'B13',NULL),
	(123,2,'C1',NULL),
	(124,2,'C2',NULL),
	(125,2,'C3',NULL),
	(126,2,'C4',NULL),
	(127,2,'C5',NULL),
	(128,2,'C6',NULL),
	(129,2,'C7',NULL),
	(130,2,'C8',NULL),
	(131,2,'C9',NULL),
	(132,2,'C10',NULL),
	(133,2,'C11',NULL),
	(134,2,'C12',NULL),
	(135,2,'C13',NULL),
	(136,2,'C14',NULL),
	(137,2,'D1',NULL),
	(138,2,'D2',NULL),
	(139,2,'D3',NULL),
	(140,2,'D4',NULL),
	(141,2,'D5',NULL),
	(142,2,'D12',NULL),
	(143,2,'D13',NULL),
	(144,2,'D14',NULL),
	(145,2,'D15',NULL),
	(147,3,'A2',NULL),
	(146,3,'A1',NULL),
	(148,5,'A1',NULL),
	(149,5,'A2',NULL),
	(150,4,'A1',NULL),
	(151,4,'A2',NULL),
	(152,4,'A3',NULL),
	(153,4,'A4',NULL),
	(154,4,'A5',NULL),
	(155,4,'A6',NULL),
	(255,1,'A6',NULL),
	(256,8,'A1',NULL),
	(257,8,'A2',NULL),
	(258,8,'A3',NULL),
	(259,8,'A4',NULL),
	(260,8,'A5',NULL),
	(261,8,'A8',NULL),
	(262,8,'A9',NULL),
	(263,8,'A10',NULL),
	(264,8,'B1',NULL),
	(265,8,'B2',NULL),
	(266,8,'B3',NULL),
	(267,8,'B4',NULL),
	(268,8,'B9',NULL),
	(269,8,'B10',NULL),
	(270,8,'B11',NULL),
	(271,8,'B12',NULL),
	(272,8,'B13',NULL),
	(273,8,'C1',NULL),
	(274,8,'C2',NULL),
	(275,8,'C3',NULL),
	(276,8,'C6',NULL),
	(277,8,'C7',NULL),
	(278,8,'C8',NULL),
	(279,8,'C12',NULL),
	(280,8,'C13',NULL),
	(281,8,'C14',NULL),
	(282,8,'D1',NULL),
	(283,8,'D2',NULL),
	(284,8,'D3',NULL),
	(285,8,'D12',NULL),
	(286,8,'D13',NULL),
	(287,8,'D14',NULL),
	(288,8,'D15',NULL),
	(289,5,'A3',NULL),
	(290,9,'A1',NULL),
	(291,10,'A1',NULL),
	(292,1,'D15',NULL),
	(293,1,'D14',NULL),
	(294,1,'B7',NULL),
	(295,1,'B8',NULL),
	(296,1,'A8',NULL),
	(297,1,'B10',NULL),
	(298,1,'B11',NULL);

/*!40000 ALTER TABLE `gabinetes` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla interruptores
# ------------------------------------------------------------

DROP TABLE IF EXISTS `interruptores`;

CREATE TABLE `interruptores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `etiqueta` varchar(240) DEFAULT NULL,
  `puerto` int(10) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `gabinete` int(10) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `interruptores` WRITE;
/*!40000 ALTER TABLE `interruptores` DISABLE KEYS */;

INSERT INTO `interruptores` (`id`, `etiqueta`, `puerto`, `estado`, `gabinete`, `descripcion`)
VALUES
	(1,'SECCION CCAC N.1 C.CONTROL',1,1,124,NULL),
	(2,'MANTENIMIENTO AREA 115 KV',2,1,124,NULL),
	(3,'CARGADOR DE BAT. N.1 DE 125 VCD',3,1,124,NULL),
	(4,'CARGADOR DE BAT. N.2 DE 125 VCD',4,1,124,NULL),
	(5,'CARGADOR DE BAT. N.3 DE A125 VCD',5,1,124,NULL),
	(6,'SECCION CCAC N.1 ALUM. EXTERIOR',6,1,124,NULL),
	(7,'SECCION CARGA PLANTA DE EMERGENCIA',7,1,124,NULL),
	(8,'EXTRARTOR SALA DE BATERIAS',8,1,124,NULL),
	(9,'AIRE ACOND. CASETA DE CONTROL C-1',9,NULL,124,NULL),
	(10,'AIRE ACOND. CASETA DE CONTROL C-2',10,NULL,124,NULL),
	(11,'AIRE ACOND. CASETA DE CONTROL C-3',11,NULL,124,NULL),
	(12,'AIRE ACOND. CASETA DE CONTROL C-4',12,NULL,124,NULL),
	(13,'AIRE ACOND. CASETA DE CONTROL C-5',13,NULL,124,NULL),
	(14,'AIRE ACOND. CASETA DE CONTROL C-6',14,NULL,124,NULL),
	(15,NULL,15,NULL,124,NULL),
	(16,NULL,16,NULL,124,NULL),
	(17,'CASETA DE VIGILANCIA',17,NULL,124,NULL),
	(18,NULL,18,NULL,124,NULL),
	(19,'CALEF Y ALUMB. TABL NODO Y ROUTER',19,NULL,124,NULL),
	(20,'CALEF Y ALUMB. TAB C10/RADIO',20,NULL,124,NULL),
	(21,'SISTEMA MODULAR DE FUERZA 12 VCD',21,NULL,124,NULL),
	(22,'SISTEMA MODULAR DE FUERZA 48 VCD 1 ',22,NULL,124,NULL),
	(23,'SISTEMA MODULAR DE FUERZA 48 VCD 2',23,NULL,124,NULL),
	(24,'SISTEMA MODULAR DE FUERZA 48 VCD 3',24,NULL,124,NULL),
	(25,'VCA GIS E07',25,NULL,124,NULL),
	(26,NULL,26,NULL,124,NULL),
	(27,'CA E06 01',27,NULL,124,NULL),
	(28,NULL,28,NULL,124,NULL),
	(29,'EDIFICIO SF.6',29,NULL,124,NULL),
	(30,'CASETA DE FACTURACION ',30,NULL,124,NULL),
	(31,'CA E06-02',31,NULL,124,NULL);

/*!40000 ALTER TABLE `interruptores` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla lista_de_equipos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lista_de_equipos`;

CREATE TABLE `lista_de_equipos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `modelo` int(10) DEFAULT NULL,
  `etiquetaTablero` varchar(260) DEFAULT NULL,
  `numeroR3` int(10) DEFAULT NULL,
  `serialNumber` varchar(20) NOT NULL,
  `gabinete` int(10) DEFAULT NULL,
  `posicionRackStart` int(10) DEFAULT NULL,
  `posicionRackEnd` int(10) DEFAULT NULL,
  `puertos_especificos` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`,`serialNumber`),
  KEY `equipo` (`modelo`),
  KEY `gabinete` (`gabinete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `lista_de_equipos` WRITE;
/*!40000 ALTER TABLE `lista_de_equipos` DISABLE KEYS */;

INSERT INTO `lista_de_equipos` (`id`, `nombre`, `modelo`, `etiquetaTablero`, `numeroR3`, `serialNumber`, `gabinete`, `posicionRackStart`, `posicionRackEnd`, `puertos_especificos`)
VALUES
	(1,'OPLAT TIN-CEX',6,'OPLAT TIN-CEX',NULL,'',111,37,33,0),
	(2,'Teleprot AN TIN-CEX',22,'Teleprot AN TIN-CEX',NULL,'FR-LUD6120350006',111,29,26,0),
	(3,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',111,23,23,0),
	(4,'OPLAT TIN-NIZ',6,'OPLAT TIN-NIZ',NULL,'',112,37,33,0),
	(9,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',112,31,31,0),
	(10,'Teleprot AN TIN-NIZ',22,'Teleprot AN TIN-NIZ',NULL,'FR-LUD612035003',112,29,26,0),
	(11,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',112,23,23,0),
	(12,'Teleprot DI TIN-CEX',22,'Teleprot DI TIN-CEX',NULL,'FR-LUD6120420037',113,38,35,0),
	(13,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',113,32,32,0),
	(14,'Teleprot DI TIN-NIZ',22,'Teleprot DI TIN-NIZ',NULL,'FR-LUD6120420035',113,30,27,0),
	(15,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',113,25,25,0),
	(16,'DISTRIBUIDOR DE CARGAS',24,'PDA',NULL,'',114,35,33,0),
	(17,'NODO DE AGREGACIÓN',23,'OTN TIN XT2210A',NULL,'',114,30,28,1),
	(18,'ORG HOR 19\"',20,'OFO-3',NULL,'',114,1,1,0),
	(20,'PATCH PANEL TELEFÓNICO',31,'MDF',NULL,'',114,24,24,0),
	(21,'ORG PANEL 1UR',37,'OFO-1',NULL,'',114,11,11,0),
	(22,'ORG PANEL 2UR',37,'OFO-2',NULL,'',114,27,27,0),
	(24,'PATCH PANEL 24PTS RJ45',42,'ETH-1',NULL,'',114,8,7,0),
	(26,'ORG PANEL 1UR',37,'OFO-7',NULL,'',114,4,3,0),
	(27,'RT CISCO',1,'RT CISCO',NULL,'',115,33,32,1),
	(28,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',115,30,30,0),
	(29,'SW CISCO',3,'SW CISCO',NULL,'',115,28,28,0),
	(30,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',115,26,26,0),
	(31,'PATCH PANEL 24PTS RJ45',42,'PATCH PANEL 24PTS RJ45',NULL,'',115,24,24,0),
	(32,'ODF 48-SC',44,'ODF TIN-CEX',NULL,'',116,38,30,1),
	(33,'ORGANIZADOR FMT',45,'ORG FMT 1UR',NULL,'',116,28,28,0),
	(34,'ODF 48-SC',44,'ODF TIN-NIZ',NULL,'',116,26,18,1),
	(35,'ORGANIZADOR FMT',45,'ORG FMT 1UR',NULL,'',116,16,16,0),
	(36,'ODF 48-SC',44,'ODF SERVICE',NULL,'',117,38,30,0),
	(37,'ORGANIZADOR FMT',45,'ORG FMT 1UR',NULL,'',117,28,28,0),
	(38,'ODF 48-SC',44,'ODF SERVICE',NULL,'',117,26,28,0),
	(39,'ORGANIZADOR FMT',45,'ORG FMT 1UR',NULL,'',117,16,16,0),
	(41,'ODF 24-LC',29,'ODF 24-LC',NULL,'',117,14,14,0),
	(42,'ORGANIZADOR FMT',45,'ORG FMT 1UR',NULL,'',117,12,12,0),
	(43,'ODF 24-LC',29,'ODF 24-LC',NULL,'',117,10,10,0),
	(44,'ORGANIZADOR FMT',45,'ORG FMT 1UR',NULL,'',117,8,8,0),
	(46,'SW GE',17,'SW 11',NULL,'90045735',120,40,40,0),
	(47,'MCAD GE',47,'MCAD01',NULL,'36281757',120,16,20,0),
	(48,'MCAD GE',47,'MCAD02',NULL,'36281758',120,23,27,0),
	(49,'SW GE',17,'SW 12',NULL,'90045743',121,40,40,0),
	(50,'CCL ',48,'MONITOR',NULL,'',121,30,30,0),
	(51,'TECLADO',0,'TECLADO Y MOUSE',NULL,'81220051487',121,28,27,0),
	(52,'CPU ',50,'CPU',NULL,'TAHIE1014281',121,26,24,0),
	(53,'SW GE',17,'SW01',NULL,'90045642',122,40,39,0),
	(54,'SW GE',17,'SW02',NULL,'90045643',122,38,37,0),
	(55,'GPS GE',15,'GPS',NULL,'90046857',122,36,35,0),
	(56,'FIREWALL',51,'FW01',NULL,'',122,30,29,0),
	(57,'FIREWALL',51,'FW02',NULL,'',122,29,28,0),
	(58,'MONITOR',52,'MONITOR',NULL,'S2026070520153-1020-',122,26,22,0),
	(59,'GATEWAY',53,'GW01',NULL,'66718833',122,20,18,0),
	(60,'GATEWAY',53,'GW02',NULL,'66718802',122,16,14,0),
	(61,'SWICHT GENERAL ELECTRIC ',17,'SWO4',NULL,'900455744',100,40,40,0),
	(62,'PP1 73C70',31,'PP1 73C70',NULL,'32265565',100,37,35,0),
	(63,'PP2 73C70',32,'PP2 73C70',NULL,'1230557282',100,33,31,0),
	(64,'UCB 73C70',36,'UCB 73C70',NULL,'36281752',100,29,27,0),
	(66,'MEDIDOR 73C70',37,'MM73C70',NULL,'ELW065',100,27,23,0),
	(69,'PP1 73C60',31,'PP1 73C60',NULL,'36265557',101,37,35,0),
	(70,'PP2 73060',32,'PP2 73C60',NULL,'1230587043',101,33,31,0),
	(71,'UCB 73C60',36,'UCB 73C60',NULL,'36281754',101,29,27,0),
	(73,'MEDIDOR 73C60',37,'MM73C60',NULL,'ELW064',101,27,23,0),
	(75,'SWICHT GENERAL ELECTRIC ',17,'SW',NULL,'900455745',102,40,40,0),
	(76,'PP1 73C80',31,'PP1 73C80',NULL,'36265558',102,37,35,0),
	(77,'PP2 73C80',32,'PP2 73C80',NULL,'1230557281',102,33,31,0),
	(78,'UCB 73C80',36,'USB 73C80',NULL,'36281750',102,29,27,0),
	(80,'MEDIDOR 73C80',37,'MM73C80',NULL,'ELW068',102,27,23,0),
	(82,'SWICHT GENERAL ELECTRIC ',17,'SW06',NULL,'900455741',103,40,40,0),
	(83,'PP1 73480',31,'PP1 73480',NULL,'36265561',103,37,35,0),
	(84,'PP2 73480',32,'PP2 73480',NULL,'1230587042',103,33,31,0),
	(85,'UCB 73480',36,'USB 73480',NULL,'36281749',103,29,27,0),
	(87,'MEDIDOR 73C80',37,'MM73C80',NULL,'ELW070',103,27,23,0),
	(89,'SWICHT GENERAL ELECTRIC ',17,'SWO7',NULL,'900455738',104,40,40,0),
	(90,'PBF 77000',39,'PBF 77000',NULL,'5392126887/10',104,34,31,0),
	(91,'UCB 77000',36,'UCB 77000',NULL,'36281753',104,28,28,0),
	(92,'SWICHT GENERAL ELECTRIC ',17,'SWO8',NULL,'900455736',107,40,40,0),
	(93,'PBA ',40,'PBA',NULL,'AA6C2300032',107,30,28,0),
	(94,'PBB',40,'PBB',NULL,'AA6C2300030',107,26,24,0),
	(95,'PBC',40,'PBC',NULL,'AA6C2300031',107,24,22,0),
	(96,'SWICHT GENERAL ELECTRIC ',17,'SWO8',NULL,'900455737',108,40,40,0),
	(97,'RELEVADOR RTAC EPL',47,'EPL',NULL,'11831760458',108,37,37,0),
	(98,'GPS',42,'GPS',NULL,'',108,35,35,0),
	(99,'RD',50,'RD',NULL,'22131-24',108,22,21,0),
	(100,'PMU',51,'PMU',NULL,'1230557247',108,28,24,0),
	(101,'ESMAR',51,'ESMAR',NULL,'1230587123',108,33,30,0),
	(102,'SWICHT GENERAL ELECTRIC ',17,'SWO9',NULL,'900455739',109,40,40,0),
	(103,'GPS',42,'GPS',NULL,'90045739',109,38,38,0),
	(104,'MEDIDOR MM 1',52,'MEDIDOR MM',NULL,'ELW061',109,34,32,0),
	(105,'MEDIDOR MM 2',52,'MEDIDOR MM',NULL,'ELW068',109,34,32,0),
	(106,'MEDIDOR MM 3',52,'MEDIDOR MM  ',NULL,'ELW069',109,32,30,0),
	(107,'MEDIDOR MM 4',52,'MEDIDOR MM',NULL,'ELW063',109,32,30,0),
	(108,'CARGADOR BAT 130 VCD',18,'125 VCD N-1',NULL,'B2209P100252',138,1,1,0),
	(109,'CARGADOR BAT 130 VCD ',18,'125 VCD N-2',NULL,'B2209P100253',139,1,1,0),
	(110,'CARGADOR BAT 130 VCD',18,'125 VCD N-3',NULL,'B2209P100254',137,1,1,0),
	(111,'CARGADOR BAT 48 VCD N-1',18,'48 VCD N-1',NULL,'B2209P100244',142,1,1,0),
	(112,'CARGADOR BAT 48 VCD N-2',18,'48 VCD N-2',NULL,'B2209P100245',143,1,1,0),
	(113,'CARGADOR BAT 48 VCD N-3',18,'48 VCD N-3',NULL,'B2209P100246',144,1,1,0),
	(114,'CARGADOR BAT 12 VCD N-1',54,'EQ VCD 12',NULL,'C2209P100317',145,1,1,0),
	(115,'CARGADOR BAT 12 VCD N-2',54,'EQ VCD 12',NULL,'B2209P100240',145,2,2,0),
	(116,'CARGADOR BAT 12 VCD N-3 ',54,'EQ VCD 12',NULL,'B2209P100239',145,3,3,0),
	(117,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'S/N',111,31,31,0),
	(119,'SWICHT GENERAL ELECTRIC ',17,'SWO3',NULL,'90045740',101,40,40,0),
	(120,'OPLAT ',57,'BLM-93060-NIZ',NULL,'',30,37,33,0),
	(122,'OPLAT ',55,'VAD-93070-NIZ',NULL,'',1,37,33,0),
	(123,'SWT3000',56,'SWT3000',NULL,'',30,30,31,0),
	(124,'SWT3000',56,'SWT3000',NULL,'',1,30,31,0),
	(125,'SWT3000',56,'SWT3000',NULL,'',44,30,31,0),
	(126,'OPLAT ',55,'NIZ-93170-RMY',NULL,'',44,37,33,0),
	(127,'SWT3000',56,'SWT3000',NULL,'',29,30,31,0),
	(128,'OPLAT ',55,'NIZ-93040-RMY',NULL,'',29,37,33,0),
	(129,'OPLAT RMY-93190-PCN',55,'RMY-93190-PCN',NULL,'',148,37,33,0),
	(130,'OPLAT RMY-93180-PCN',55,'RMY-93180-PCN',NULL,'',149,37,33,0),
	(131,'OPLAT BLM-93050-VAD',57,'BLM-93050-VAD',NULL,'',146,37,33,0),
	(132,'OPLAT BLM-93060-NIZ',57,'BLM-93060-NIZ',NULL,'',147,37,33,0),
	(133,'OPLAT DZT-A3Q60-RMY',55,'DZT-A3Q60-RMY',NULL,'',150,37,33,0),
	(134,'OPLAT RMY-A3Q70-DZT',55,'RMY-A3Q70-DZT',NULL,'',151,37,33,0),
	(135,'OPLAT RMY-93170-NIZ',55,'RMY-93170-NIZ',NULL,'',152,37,33,0),
	(136,'OPLAT RMY-93040-NIZ',55,'RMY-93040-NIZ',NULL,'',153,37,33,0),
	(137,'OPLAT RMY-93190-PCN',55,'RMY-93190-PCN',NULL,'',154,37,33,0),
	(138,'OPLAT RMY-93180-PCN',55,'RMY-93180-PCN',NULL,'',155,37,33,0),
	(139,'SWT3000',56,'SWT3000',NULL,'',148,30,31,0),
	(140,'SWT3000',56,'SWT3000',NULL,'',149,30,31,0),
	(141,'SWT3000',56,'SWT3000',NULL,'',146,30,31,0),
	(142,'SWT3000',56,'SWT3000',NULL,'',147,30,31,0),
	(143,'SWT3000',56,'SWT3000',NULL,'',150,30,31,0),
	(144,'SWT3000',56,'SWT3000',NULL,'',151,30,31,0),
	(145,'SWT3000',56,'SWT3000',NULL,'',152,30,31,0),
	(146,'SWT3000',56,'SWT3000',NULL,'',153,30,31,0),
	(147,'SWT3000',56,'SWT3000',NULL,'',154,30,31,0),
	(148,'SWT3000',56,'SWT3000',NULL,'',155,30,31,0),
	(149,'OPLAT TIN-NIZ ',6,'OPLAT TIN-NIZ',NULL,'',255,37,33,0),
	(150,'Teleprot AN TIN-NIZ',22,'Teleprot AN TIN-CEX',NULL,'FR-LUD6120350006',255,29,26,0),
	(151,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',255,23,23,0),
	(152,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'S/N',255,31,31,0),
	(153,'NODO DE AGREGACIÓN',23,'OTN NIZ XT2210A',NULL,'',34,30,28,1),
	(154,'NODO DE AGREGACIÓN',23,'OTN PCN XT2210A',NULL,'',289,30,28,1),
	(155,'NODO DE AGREGACIÓN',23,'OTN MPA XT2210A',NULL,'',290,30,28,1),
	(156,'NODO DE AGREGACIÓN',23,'OTN CHY XT2210A',NULL,'',291,30,28,1),
	(157,'NODO DE AGREGACIÓN',23,'OTN PTP XT2210A',NULL,'OS1L3X100124',272,30,28,1),
	(158,'DISTRIBUIDOR DE CARGAS',24,'PDA',NULL,'',35,35,33,0),
	(159,'NODO DE AGREGACIÓN',23,'OTN TIN XT2210A',NULL,'',35,30,28,1),
	(160,'ORG HOR 19\"',20,'OFO-3',NULL,'',35,1,1,0),
	(162,'PATCH PANEL TELEFÓNICO',31,'MDF',NULL,'',35,24,24,0),
	(163,'ORG PANEL 1UR',37,'OFO-1',NULL,'',35,11,11,0),
	(164,'ORG PANEL 2UR',37,'OFO-2',NULL,'',35,27,27,0),
	(165,'PATCH PANEL 24PTS RJ45',42,'ETH-1',NULL,'',35,8,7,0),
	(166,'ORG PANEL 1UR',37,'OFO-7',NULL,'',35,4,3,0),
	(167,'DISTRIBUIDOR DE CARGAS',24,'PDA',NULL,'',272,35,33,0),
	(169,'ORG HOR 19\"',20,'OFO-3',NULL,'',272,1,1,0),
	(170,'PATCH PANEL TELEFÓNICO',31,'MDF',NULL,'',272,24,24,0),
	(171,'ORG PANEL 1UR',37,'OFO-1',NULL,'',272,11,11,0),
	(172,'ORG PANEL 2UR',37,'OFO-2',NULL,'',272,27,27,0),
	(173,'PATCH PANEL 24PTS RJ45',42,'ETH-1',NULL,'',272,8,7,0),
	(174,'ORG PANEL 1UR',37,'OFO-7',NULL,'',272,4,3,0),
	(175,'ORG PANEL 1UR',37,'OFO-1',NULL,'',271,11,11,0),
	(176,'TELEPROTECCION PTP SWT3000',56,'SWT3000',NULL,'BF2304502062',271,30,31,1),
	(177,'ODF DIR MPA',58,'ODF DIR MPA',NULL,'',270,30,30,1),
	(178,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',270,25,25,0),
	(179,'ODF DIR NIZ',58,'ODF DIR NIZ',NULL,'',270,20,20,1),
	(180,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',270,15,15,0),
	(181,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',269,15,15,0),
	(182,'ODF TRACTORA',58,'ODF TRACTORA',NULL,'',269,20,20,1),
	(183,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',269,25,25,0),
	(184,'ODF TRACTORA',58,'ODF TRACTORA',NULL,'',269,30,30,1),
	(185,'ASR 903',2,'ROUTER RDO',NULL,'F0X2625PJCT',268,30,30,1),
	(186,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',268,28,28,0),
	(187,'PATCH PANEL 24PTS RJ45',42,'PATCH PANEL 24PTS RJ45',NULL,'',268,26,26,0),
	(188,'BNC PATCH PANEL',59,'BNC PATCHPANEL',NULL,'',268,24,24,0),
	(189,'SW CISCO',3,'SW CISCO',NULL,'FD02706J99F',268,24,24,1),
	(190,'ORGANIZADOR 1UR',20,'ORG HOR 1UR',NULL,'',268,22,22,0),
	(191,'PATCH PANEL 24PTS RJ45',42,'PATCH PANEL 24PTS RJ45',NULL,'',268,20,20,0),
	(192,'TELEFONO 35114',64,'TELEFONO 35114',NULL,'',267,30,30,0),
	(193,'RADIO BASE',65,'RADIO TAIT',NULL,'',267,25,25,0);

/*!40000 ALTER TABLE `lista_de_equipos` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla marcas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `logo` int(10) DEFAULT NULL,
  `pais` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;

INSERT INTO `marcas` (`id`, `nombre`, `logo`, `pais`)
VALUES
	(0,'',NULL,NULL),
	(1,'General Electric',1,75),
	(2,'MEI',2,146),
	(3,'OTN SYSTEMS',3,75),
	(4,'CISCO',4,75),
	(5,'PANDUIT',5,75),
	(6,'OPTRONICS',6,146),
	(7,'ADC',7,75),
	(8,'COMMSCOPE',8,75),
	(9,'SEL',9,75),
	(10,'SCHNEIDER ELECTRIC',10,82),
	(11,'SIEMENS',11,4),
	(12,'ECI Telelecom',12,73),
	(13,'ABB',13,208),
	(14,'ARUBA',14,75),
	(15,'OSAKA',15,73),
	(16,'MOTOROLA ',16,75),
	(17,'TAIT',17,164),
	(19,'T-LINK',19,47),
	(20,'RAD',20,180),
	(21,'ADVANTECH',21,212),
	(22,'IKEY',22,75),
	(23,'MOXA',23,212),
	(24,'FORTIGATE',24,75),
	(25,'STEALTH',25,0),
	(26,'ERL',26,75),
	(27,'SINMARCA',0,0);

/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla modelo_equipo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modelo_equipo`;

CREATE TABLE `modelo_equipo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(260) NOT NULL,
  `tipoEquipo` int(10) DEFAULT NULL,
  `marca` int(10) DEFAULT NULL,
  `imgActive` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`,`modelo`),
  KEY `tipoEquipo` (`tipoEquipo`),
  KEY `marca` (`marca`),
  CONSTRAINT `modelo_equipo_ibfk_1` FOREIGN KEY (`tipoEquipo`) REFERENCES `tipo_equipo` (`id`),
  CONSTRAINT `modelo_equipo_ibfk_2` FOREIGN KEY (`marca`) REFERENCES `marcas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `modelo_equipo` WRITE;
/*!40000 ALTER TABLE `modelo_equipo` DISABLE KEYS */;

INSERT INTO `modelo_equipo` (`id`, `modelo`, `tipoEquipo`, `marca`, `imgActive`)
VALUES
	(1,'CGR-2010',2,4,1),
	(2,'ASR-903',2,4,1),
	(3,'4010',3,4,1),
	(4,'SC-48',1,7,1),
	(5,'SC-24',1,7,0),
	(6,'GRIDCOM T390',4,1,1),
	(7,'GRIDCOM DIP Analógica',6,1,1),
	(8,'MIcom P40 Agile',8,1,1),
	(9,'SEL-411L ',9,9,1),
	(10,'Multilin C650 ',10,1,1),
	(11,'Power Logic 10N8650',12,10,1),
	(12,'Multin B90 ',27,1,1),
	(13,'Tesla 4000',28,1,1),
	(14,'SEL-3530',21,9,1),
	(15,'Reason RT430 GNSS',17,1,1),
	(16,'SEL-487E ',20,9,1),
	(17,'Reason S20 Ethernet Switch',3,1,1),
	(18,'IKFT50-130+TR',16,2,1),
	(19,'IKCT-50-50+TR',16,2,1),
	(20,'PANDUIT U1 19\"',18,5,1),
	(21,'IKCR-25-12',16,2,0),
	(22,'E-TERRAGRICOM',7,1,1),
	(23,'MPLS XTRAN 2210',29,3,1),
	(24,'PENDIENTE TAB_DIS_DUAL',30,2,1),
	(25,'ORG HOR 19\" 1UR',31,2,1),
	(26,'F100',36,15,1),
	(27,'NTP 1020',34,12,0),
	(28,'NTP 1200 ',35,12,0),
	(29,'FOX 515',32,13,0),
	(30,'FOX 615',33,13,0),
	(31,'PENDIENTE_PANELTELEFONICO',37,NULL,1),
	(32,'CATALYST 3560 ',3,4,0),
	(33,'CGS-2520-24TC',3,4,0),
	(34,'3945',3,4,0),
	(35,'T-LINK',3,19,0),
	(36,'CATALYST 3550',3,4,0),
	(37,'ORG PANEL 1UR',38,NULL,1),
	(38,'2930F',3,14,0),
	(39,'CP-7811',40,4,0),
	(40,'NSD570 ',7,13,0),
	(41,'ORG PANEL 2UR',39,NULL,1),
	(42,'PATCH PANEL 24PTS RJ45',41,0,1),
	(43,'PATCH PANEL 24PTS RJ45',41,6,1),
	(44,'ODF 48-SC',1,7,1),
	(45,'ORGANIZADOR 1UR FMT ',42,8,1),
	(46,'ODF 24-LC 1UR',43,8,0),
	(47,'MULTILIN C650',44,1,1),
	(48,'MONITOR',45,21,1),
	(49,'RDC-5K-FSR',46,22,0),
	(50,'DA-820',47,23,1),
	(51,'RUGGED 60F',48,24,1),
	(52,'FR-1010-19W-HDMI-USB-125V',48,25,1),
	(53,'G500',49,1,1),
	(54,'IKCR-25-12',16,2,1),
	(55,'POWERLINK',4,11,1),
	(56,'SWT3000',6,11,1),
	(57,'ESB2000i',4,11,1),
	(58,'ODF 48',1,1,1),
	(59,'BNC PATCHPANEL',50,27,1),
	(64,'TELEFONO IP',51,4,1),
	(65,'RADIO TAIT',52,17,1);

/*!40000 ALTER TABLE `modelo_equipo` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla notas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notas`;

CREATE TABLE `notas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(20) DEFAULT NULL,
  `equipo` int(10) DEFAULT NULL,
  `nota` longtext DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;

INSERT INTO `notas` (`id`, `date`, `equipo`, `nota`, `user`)
VALUES
	(1,'2023-10-19 00:00:00',131,'no esta en el excel su direccion ip','Leonel B.'),
	(2,'2023-10-19 00:00:00',132,'no esta su direccion IP en la tabla de excel ','Leonel B.'),
	(3,'2023-10-19 00:00:00',120,'no esta su direccion IP en la tabla de excel ','Leonel B.'),
	(4,'2023-10-19 00:00:00',130,'DIRECCION IP ES LA MISMA QUE DEL OPLAT PCN-93190-RMY, VERIFICAR INFORMACION *','Leonel B.'),
	(5,'2023-10-19 00:00:00',129,'DIRECCION IP ES LA MISMA QUE DEL OPLAT PCN-93180-RMY, VERIFICAR INFORMACION *','Leonel B.'),
	(6,'2023-10-19 00:00:00',131,'NO EXISTE EL OTRO EQUIPO EN S.E. NIZUC ','Leonel B.');

/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla paises
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paises`;

CREATE TABLE `paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;

INSERT INTO `paises` (`id`, `iso`, `nombre`)
VALUES
	(1,'AF','Afganistán'),
	(2,'AX','Islas Gland'),
	(3,'AL','Albania'),
	(4,'DE','Alemania'),
	(5,'AD','Andorra'),
	(6,'AO','Angola'),
	(7,'AI','Anguilla'),
	(8,'AQ','Antártida'),
	(9,'AG','Antigua y Barbuda'),
	(10,'AN','Antillas Holandesas'),
	(11,'SA','Arabia Saudí'),
	(12,'DZ','Argelia'),
	(13,'AR','Argentina'),
	(14,'AM','Armenia'),
	(15,'AW','Aruba'),
	(16,'AU','Australia'),
	(17,'AT','Austria'),
	(18,'AZ','Azerbaiyán'),
	(19,'BS','Bahamas'),
	(20,'BH','Bahréin'),
	(21,'BD','Bangladesh'),
	(22,'BB','Barbados'),
	(23,'BY','Bielorrusia'),
	(24,'BE','Bélgica'),
	(25,'BZ','Belice'),
	(26,'BJ','Benin'),
	(27,'BM','Bermudas'),
	(28,'BT','Bhután'),
	(29,'BO','Bolivia'),
	(30,'BA','Bosnia y Herzegovina'),
	(31,'BW','Botsuana'),
	(32,'BV','Isla Bouvet'),
	(33,'BR','Brasil'),
	(34,'BN','Brunéi'),
	(35,'BG','Bulgaria'),
	(36,'BF','Burkina Faso'),
	(37,'BI','Burundi'),
	(38,'CV','Cabo Verde'),
	(39,'KY','Islas Caimán'),
	(40,'KH','Camboya'),
	(41,'CM','Camerún'),
	(42,'CA','Canadá'),
	(43,'CF','República Centroafricana'),
	(44,'TD','Chad'),
	(45,'CZ','República Checa'),
	(46,'CL','Chile'),
	(47,'CN','China'),
	(48,'CY','Chipre'),
	(49,'CX','Isla de Navidad'),
	(50,'VA','Ciudad del Vaticano'),
	(51,'CC','Islas Cocos'),
	(52,'CO','Colombia'),
	(53,'KM','Comoras'),
	(54,'CD','República Democrática del Congo'),
	(55,'CG','Congo'),
	(56,'CK','Islas Cook'),
	(57,'KP','Corea del Norte'),
	(58,'KR','Corea del Sur'),
	(59,'CI','Costa de Marfil'),
	(60,'CR','Costa Rica'),
	(61,'HR','Croacia'),
	(62,'CU','Cuba'),
	(63,'DK','Dinamarca'),
	(64,'DM','Dominica'),
	(65,'DO','República Dominicana'),
	(66,'EC','Ecuador'),
	(67,'EG','Egipto'),
	(68,'SV','El Salvador'),
	(69,'AE','Emiratos Árabes Unidos'),
	(70,'ER','Eritrea'),
	(71,'SK','Eslovaquia'),
	(72,'SI','Eslovenia'),
	(73,'ES','España'),
	(74,'UM','Islas ultramarinas de Estados Unidos'),
	(75,'US','Estados Unidos'),
	(76,'EE','Estonia'),
	(77,'ET','Etiopía'),
	(78,'FO','Islas Feroe'),
	(79,'PH','Filipinas'),
	(80,'FI','Finlandia'),
	(81,'FJ','Fiyi'),
	(82,'FR','Francia'),
	(83,'GA','Gabón'),
	(84,'GM','Gambia'),
	(85,'GE','Georgia'),
	(86,'GS','Islas Georgias del Sur y Sandwich del Sur'),
	(87,'GH','Ghana'),
	(88,'GI','Gibraltar'),
	(89,'GD','Granada'),
	(90,'GR','Grecia'),
	(91,'GL','Groenlandia'),
	(92,'GP','Guadalupe'),
	(93,'GU','Guam'),
	(94,'GT','Guatemala'),
	(95,'GF','Guayana Francesa'),
	(96,'GN','Guinea'),
	(97,'GQ','Guinea Ecuatorial'),
	(98,'GW','Guinea-Bissau'),
	(99,'GY','Guyana'),
	(100,'HT','Haití'),
	(101,'HM','Islas Heard y McDonald'),
	(102,'HN','Honduras'),
	(103,'HK','Hong Kong'),
	(104,'HU','Hungría'),
	(105,'IN','India'),
	(106,'ID','Indonesia'),
	(107,'IR','Irán'),
	(108,'IQ','Iraq'),
	(109,'IE','Irlanda'),
	(110,'IS','Islandia'),
	(111,'IL','Israel'),
	(112,'IT','Italia'),
	(113,'JM','Jamaica'),
	(114,'JP','Japón'),
	(115,'JO','Jordania'),
	(116,'KZ','Kazajstán'),
	(117,'KE','Kenia'),
	(118,'KG','Kirguistán'),
	(119,'KI','Kiribati'),
	(120,'KW','Kuwait'),
	(121,'LA','Laos'),
	(122,'LS','Lesotho'),
	(123,'LV','Letonia'),
	(124,'LB','Líbano'),
	(125,'LR','Liberia'),
	(126,'LY','Libia'),
	(127,'LI','Liechtenstein'),
	(128,'LT','Lituania'),
	(129,'LU','Luxemburgo'),
	(130,'MO','Macao'),
	(131,'MK','ARY Macedonia'),
	(132,'MG','Madagascar'),
	(133,'MY','Malasia'),
	(134,'MW','Malawi'),
	(135,'MV','Maldivas'),
	(136,'ML','Malí'),
	(137,'MT','Malta'),
	(138,'FK','Islas Malvinas'),
	(139,'MP','Islas Marianas del Norte'),
	(140,'MA','Marruecos'),
	(141,'MH','Islas Marshall'),
	(142,'MQ','Martinica'),
	(143,'MU','Mauricio'),
	(144,'MR','Mauritania'),
	(145,'YT','Mayotte'),
	(146,'MX','México'),
	(147,'FM','Micronesia'),
	(148,'MD','Moldavia'),
	(149,'MC','Mónaco'),
	(150,'MN','Mongolia'),
	(151,'MS','Montserrat'),
	(152,'MZ','Mozambique'),
	(153,'MM','Myanmar'),
	(154,'NA','Namibia'),
	(155,'NR','Nauru'),
	(156,'NP','Nepal'),
	(157,'NI','Nicaragua'),
	(158,'NE','Níger'),
	(159,'NG','Nigeria'),
	(160,'NU','Niue'),
	(161,'NF','Isla Norfolk'),
	(162,'NO','Noruega'),
	(163,'NC','Nueva Caledonia'),
	(164,'NZ','Nueva Zelanda'),
	(165,'OM','Omán'),
	(166,'NL','Países Bajos'),
	(167,'PK','Pakistán'),
	(168,'PW','Palau'),
	(169,'PS','Palestina'),
	(170,'PA','Panamá'),
	(171,'PG','Papúa Nueva Guinea'),
	(172,'PY','Paraguay'),
	(173,'PE','Perú'),
	(174,'PN','Islas Pitcairn'),
	(175,'PF','Polinesia Francesa'),
	(176,'PL','Polonia'),
	(177,'PT','Portugal'),
	(178,'PR','Puerto Rico'),
	(179,'QA','Qatar'),
	(180,'GB','Reino Unido'),
	(181,'RE','Reunión'),
	(182,'RW','Ruanda'),
	(183,'RO','Rumania'),
	(184,'RU','Rusia'),
	(185,'EH','Sahara Occidental'),
	(186,'SB','Islas Salomón'),
	(187,'WS','Samoa'),
	(188,'AS','Samoa Americana'),
	(189,'KN','San Cristóbal y Nevis'),
	(190,'SM','San Marino'),
	(191,'PM','San Pedro y Miquelón'),
	(192,'VC','San Vicente y las Granadinas'),
	(193,'SH','Santa Helena'),
	(194,'LC','Santa Lucía'),
	(195,'ST','Santo Tomé y Príncipe'),
	(196,'SN','Senegal'),
	(197,'CS','Serbia y Montenegro'),
	(198,'SC','Seychelles'),
	(199,'SL','Sierra Leona'),
	(200,'SG','Singapur'),
	(201,'SY','Siria'),
	(202,'SO','Somalia'),
	(203,'LK','Sri Lanka'),
	(204,'SZ','Suazilandia'),
	(205,'ZA','Sudáfrica'),
	(206,'SD','Sudán'),
	(207,'SE','Suecia'),
	(208,'CH','Suiza'),
	(209,'SR','Surinam'),
	(210,'SJ','Svalbard y Jan Mayen'),
	(211,'TH','Tailandia'),
	(212,'TW','Taiwán'),
	(213,'TZ','Tanzania'),
	(214,'TJ','Tayikistán'),
	(215,'IO','Territorio Británico del Océano Índico'),
	(216,'TF','Territorios Australes Franceses'),
	(217,'TL','Timor Oriental'),
	(218,'TG','Togo'),
	(219,'TK','Tokelau'),
	(220,'TO','Tonga'),
	(221,'TT','Trinidad y Tobago'),
	(222,'TN','Túnez'),
	(223,'TC','Islas Turcas y Caicos'),
	(224,'TM','Turkmenistán'),
	(225,'TR','Turquía'),
	(226,'TV','Tuvalu'),
	(227,'UA','Ucrania'),
	(228,'UG','Uganda'),
	(229,'UY','Uruguay'),
	(230,'UZ','Uzbekistán'),
	(231,'VU','Vanuatu'),
	(232,'VE','Venezuela'),
	(233,'VN','Vietnam'),
	(234,'VG','Islas Vírgenes Británicas'),
	(235,'VI','Islas Vírgenes de los Estados Unidos'),
	(236,'WF','Wallis y Futuna'),
	(237,'YE','Yemen'),
	(238,'DJ','Yibuti'),
	(239,'ZM','Zambia'),
	(240,'ZW','Zimbabue');

/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla puertos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `puertos`;

CREATE TABLE `puertos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `numero_de_puerto` varchar(20) DEFAULT NULL,
  `tipo_cable` varchar(250) DEFAULT NULL,
  `dir_origen` varchar(250) DEFAULT NULL,
  `dir_destino` varchar(250) DEFAULT NULL,
  `atenuacion_origen` varchar(250) DEFAULT NULL,
  `atenuacion_destino` varchar(250) DEFAULT NULL,
  `servicio` varchar(250) DEFAULT NULL,
  `observacion` longtext DEFAULT NULL,
  `equipo_id` int(10) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `puertos` WRITE;
/*!40000 ALTER TABLE `puertos` DISABLE KEYS */;

INSERT INTO `puertos` (`id`, `numero_de_puerto`, `tipo_cable`, `dir_origen`, `dir_destino`, `atenuacion_origen`, `atenuacion_destino`, `servicio`, `observacion`, `equipo_id`)
VALUES
	(1,'1','SC','NIZ','OTN','.01','.01','OTN',NULL,34),
	(2,'2','SC','NIZ','OTN','.01','.01','OTN','',34),
	(3,'3','SC','NIZ','ROUTER CGR ',NULL,NULL,'ENLACE ROUTER NIZ-TIN','DIR CGR-2010 PTO 0/0',34),
	(4,'4','SC','NIZ','ROUTER CGR',NULL,NULL,'ENLACE ROUTER NIZ-TIN','DIR CGR-2010 PTO 0/0',34),
	(5,'0/0/0','GIGA','TIN','NIZ',NULL,NULL,'ENLACE ROUTER NIZ-TIN','DIR ODF NIZ PTO 3-4',27),
	(6,'0/1/0','GIGA','TIN','CEX',NULL,NULL,'ENLACE ROUTER TIN-CEX','DIR ODF CEX PTO 3-4',27),
	(7,'3','SC','TIN','CEX',NULL,NULL,'ENLACE ROUTER TIN-CEX','DIR CGR-2010 PTO 0/1',32),
	(8,'4','SC','TIN','CEX',NULL,NULL,'ENLACE ROUTER TIN-CEX','DIR CGR-2010 PTO 0/1',32),
	(12,'C.3794','C.3794','TIN','NIZ',NULL,NULL,'TELEPROTECCION 73480',NULL,17),
	(13,'C.3794','C.3794','TIN','CEX',NULL,NULL,'TELEPROTECCION 73C80',NULL,17),
	(15,'C.3794','C.3794','NIZ','TIN',NULL,NULL,'TELEPROTECCION 73480',NULL,153),
	(16,'C.3794','C.3794','NIZ','PTP',NULL,NULL,'TELEPROTECCION 73780',NULL,153),
	(18,'IFM1 PTO1','C.3794','PTP','MPA',NULL,NULL,'ODF MPA 5,6',NULL,157),
	(19,'C.3794','C.3794','MPA','PTP',NULL,NULL,'TELEPROTECCION 73B30',NULL,155),
	(20,'IFM2 PTO1','C.3794','PTP','MPA',NULL,NULL,'ODF MPA 7,8',NULL,157),
	(21,'IFM3 PTO1','C.3794','PTP','NIZ',NULL,NULL,'ODF NIZ 5,6',NULL,157),
	(22,'IFM4 PTO1','C.3794','PTP','NIZ',NULL,NULL,'ODF NIZ 7,8',NULL,157),
	(23,'IFM7 PTO1',NULL,'PTP','NIZ',NULL,NULL,'LT 73780',NULL,176),
	(24,'IFM7 PTO1','C.3794','PTP','NIZ',NULL,NULL,'LT 73780',NULL,157),
	(25,'G 1/0',NULL,'PTP','NIZ',NULL,NULL,'RED RDO',NULL,185),
	(26,'G 1/1',NULL,'PTP','MPA',NULL,NULL,'RED RDO',NULL,185),
	(27,'ASR 903 PTO G1/6',NULL,'PTP','PTP',NULL,NULL,'RED RDO','SW 01 PTO 27',185),
	(28,'ASR 903 PTO G1/7',NULL,'PTP','PTP',NULL,NULL,'RED RDO','SW 01 PTO 28',185),
	(29,'25',NULL,'PTP','PTP',NULL,NULL,'FIREWALL 1',NULL,189),
	(30,'26',NULL,'PTP','PTP',NULL,NULL,'FIREWALL 2',NULL,189),
	(31,'27',NULL,'PTP','PTP',NULL,NULL,'ASR 903 PTO G1/6',NULL,189),
	(32,'28',NULL,'PTP','PTP',NULL,NULL,'ASR 903 PTO G1/7',NULL,189),
	(33,'1',NULL,'PTP','PTP',NULL,NULL,'',NULL,189),
	(34,'2',NULL,'PTP','PTP',NULL,NULL,'ACCESS POINT',NULL,189),
	(35,'3',NULL,'PTP','PTP',NULL,NULL,'TELEFONO CASETA',NULL,189);

/*!40000 ALTER TABLE `puertos` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla puestos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `puestos`;

CREATE TABLE `puestos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos` DISABLE KEYS */;

INSERT INTO `puestos` (`id`, `nombre`, `descripcion`)
VALUES
	(1,'SUPERINTENDENTE',NULL),
	(2,'SECRETARIA',NULL),
	(3,'SALA DE SERVIDORES',NULL),
	(4,'SALA DE JUNTAS ',NULL),
	(5,'S.E. RIVIERA MAYA GIS 400KV',NULL),
	(6,'S.E. RIVIERA MAYA GIS 230KV',NULL),
	(7,'S.E. RIVIERA MAYA GIS 115KV',NULL),
	(8,'S.E. RIVIERA MAYA ',NULL),
	(10,'S.E. PLAYA DEL CARMEN ',NULL),
	(11,'S.E. NIZUC CEV ',NULL),
	(12,'S.E. NIZUC 230',NULL),
	(13,'S.E. CANCUN',NULL),
	(14,'S.E. BALAM',NULL),
	(15,'JEFE DE OFICINA',NULL),
	(16,'LABORATORIO',NULL),
	(17,'PROFESIONISTA',NULL),
	(18,'AULA CAPACITACIONES',NULL),
	(19,'JEFE DEPARTAMENTO',NULL),
	(20,'ADMINISTRADOR',NULL),
	(21,'AUXILIAR ESPCIALISTA',NULL),
	(22,'AUXILIAR ADMINISTRATIVO',NULL),
	(23,'S.E. PLAYA DEL CARMEN ',NULL),
	(24,'SALA',NULL),
	(25,'ENCARGADO DE SECCION',NULL),
	(51,'AUXILIAR CONTROL DE GESTION',NULL),
	(52,'SALA SERVIDORES',NULL),
	(53,'LOBBY AULA DE CAPACITACION',NULL),
	(54,'SECRETARIA DE TRABAJO',NULL),
	(55,'AUX.ADMVO CONTABLE',NULL),
	(56,'AUX.ADMVO.SEGURIDAD SOCIAL',NULL),
	(57,'AUX.ESPECIALIZADO NOMINAS',NULL),
	(58,'PROFESIONISTA SERV. GRALS',NULL),
	(59,'AUX.ADMVO COMPRAS ',NULL),
	(60,'SALA DE COMUNICACIONES ',NULL),
	(61,'HOTEL TELECOM CANCUN',NULL),
	(62,'HOTEL TELECOM PLAYA DEL CARMEN',NULL),
	(63,'HOTEL TELECOM COZUMEL',NULL),
	(64,'CASETA MICROONDAS NIZUC',NULL),
	(65,'CASETA CONFIABILIDAD NIZUC',NULL),
	(66,'JEFATURA SECTOR',NULL),
	(67,'TALLERES SES',NULL),
	(68,'JEFE DE OFICINA COMUNICACIONES',NULL),
	(69,'PROFESIONISTA COMUNICACIONES',NULL),
	(70,'OPERADOR DE ZONA EN TURNO ',NULL),
	(71,'OPERADOR 1',NULL),
	(72,'OPERADOR 2',NULL),
	(73,'S.E. TINTAL',NULL);

/*!40000 ALTER TABLE `puestos` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla subestaciones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subestaciones`;

CREATE TABLE `subestaciones` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `alias` varchar(10) DEFAULT NULL,
  `ubicacion` longtext DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  `instalaciones` varchar(20) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `subestaciones` WRITE;
/*!40000 ALTER TABLE `subestaciones` DISABLE KEYS */;

INSERT INTO `subestaciones` (`id`, `nombre`, `alias`, `ubicacion`, `descripcion`, `instalaciones`, `active`)
VALUES
	(1,'NIZUC','NIZ',NULL,NULL,'1',1),
	(2,'TINTAL','TIN',NULL,NULL,'1,15',1),
	(3,'BALAM','BLM',NULL,NULL,'1',0),
	(4,'RIVIERA MAYA','RMY',NULL,NULL,'1,3,4,5',0),
	(5,'PLAYA DEL CARMEN','PCN',NULL,NULL,'1,7,8',0),
	(6,'CANCUN','CNC',NULL,NULL,'1,10',0),
	(7,'BONAMPACK','BNP',NULL,NULL,'1',0),
	(8,'PETEMPICH','PTP',NULL,NULL,'1',1),
	(9,'MOON PALACE','MPA',NULL,NULL,NULL,NULL),
	(10,'CHEMUYIL','CHY',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `subestaciones` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla tipo_caracteristicas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tipo_caracteristicas`;

CREATE TABLE `tipo_caracteristicas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `caracteristica` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `tipo_caracteristicas` WRITE;
/*!40000 ALTER TABLE `tipo_caracteristicas` DISABLE KEYS */;

INSERT INTO `tipo_caracteristicas` (`id`, `caracteristica`)
VALUES
	(1,'DIRECCION IP'),
	(2,'SOFTWARE DE GESTIÓN'),
	(3,'INSTALACIÓN'),
	(4,'LINEA '),
	(5,'TIPO DE CONECTOR '),
	(6,'VERSIÓN'),
	(7,'FREQ TX'),
	(8,'FREQ RX'),
	(9,'POTENICIA '),
	(10,'IDENTIFICADOR'),
	(11,'PTU'),
	(12,'IDENTIFICADOR LADO EQUIPO'),
	(13,'SERVICIO'),
	(14,'TIPO DE CABLE '),
	(15,'REGISTRO DE SERVICIO'),
	(16,'IDENTIFICADOR LADO SWICHT'),
	(17,'IDENTIFICADOR PP USUARIO LADO RACK'),
	(18,'DISPARO'),
	(19,'NO. DE FIBRAS'),
	(20,'DIRECCIÓN '),
	(21,'CIRCUITO'),
	(22,'LONGITUD DE ENLACE'),
	(23,'PUERTOS DISPONIBLES '),
	(24,'TIPO DE FIBRA '),
	(25,'ATENUACIÓN TOTAL (dB)'),
	(26,'ATENUACIÓN (dB/Km)'),
	(27,'OBSERVACIONES '),
	(28,'EXTENSIÓN '),
	(29,'IP POR MOXA'),
	(30,'TIPO DE PROTECCIÓN '),
	(31,'CLIENTE'),
	(32,'PUERTO ECI '),
	(33,'SITIO'),
	(34,'USER'),
	(35,'PASSWORD');

/*!40000 ALTER TABLE `tipo_caracteristicas` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla tipo_de_instalacion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tipo_de_instalacion`;

CREATE TABLE `tipo_de_instalacion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(240) DEFAULT NULL,
  `alias` varchar(240) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `tipo_de_instalacion` WRITE;
/*!40000 ALTER TABLE `tipo_de_instalacion` DISABLE KEYS */;

INSERT INTO `tipo_de_instalacion` (`id`, `nombre`, `alias`)
VALUES
	(1,'CASETA DE CONTROL','CASETA'),
	(2,'COMPENSADOR ESTATICO DE VARS','CEV'),
	(3,'SUBESTACION AISLADA POR GAS 115 KV','GIS 115 KV'),
	(4,'SUBESTACION AISLADA POR GAS 230 KV','GIS 230 KV'),
	(5,'SUBESTACION AISLADA POR GAS 400 KV','GIS 400 KV'),
	(6,'HOTEL DE TELECOMUNICACIONES GRANDE','HTG'),
	(7,'HOTEL DE TELECOMUNICACIONES MEDIADO','HTM'),
	(8,'HOTEL DE COMUNICACIONES CONFIABILIDAD','CONFIABILIDAD'),
	(9,'CASETA DE MICRONDAS','M.O'),
	(10,'CASETA DE OPLAT','OPLAT'),
	(11,'CASETA DE HICOM','HICOM'),
	(12,'ALMACEN DE TRANSMISION','ALMACEN'),
	(13,'ZONA DE OPERACION DE TRANSMISION CANCUN','ZOT'),
	(14,'ZONA DE TRANSMISION ','ZT'),
	(15,'DIAGRAMA UNIFILAR','UNIFILAR');

/*!40000 ALTER TABLE `tipo_de_instalacion` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla tipo_equipo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tipo_equipo`;

CREATE TABLE `tipo_equipo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `tipo_equipo` WRITE;
/*!40000 ALTER TABLE `tipo_equipo` DISABLE KEYS */;

INSERT INTO `tipo_equipo` (`id`, `nombre`, `tipo`, `alias`, `descripcion`)
VALUES
	(1,'Distribuidor optico SM','T-DISTOPT','ODF SM SC',NULL),
	(2,'Router','T-ROUTER','ROUTER',NULL),
	(3,'Switch','T-SWITCH','SWITCH',NULL),
	(4,'OPLAT','T-TELEPRO','OPLAT ',NULL),
	(5,'Multiplexor','T-TOPTICA','MULTIPLEXOR',NULL),
	(6,'Teleprotecion Analógica  ','T-TELEPRO','Teleprot A',NULL),
	(7,'Teleprotección Digital','T-TELEPRO','Teleprot D',NULL),
	(8,'Proteccion Primaria ','T-PROTEC','PP1',NULL),
	(9,'Proteccion Primaria Respaldo ','T-PROTEC','PP2',NULL),
	(10,'Unidad de Control de BAHIA','T-PROTEC','UCB',NULL),
	(11,'Planta de Fuerza 48 VCD','T-ENERGIA','PLANTA 48',NULL),
	(12,'Medidor Multifunción ','T-PROTEC','MMF',NULL),
	(13,'Bloc de Pruebas','T-PROTEC','BP',NULL),
	(14,'Distribudor óptico MM','T-DISTOPT','ODF MM',NULL),
	(16,'CARGADOR DE BATERIAS ','T-CARBAT','CARGADOR BATERIAS',NULL),
	(17,'GPS','T-GPS','GPS',NULL),
	(18,'Organizador Eléctrico','T-DATA','PANDUIT',NULL),
	(19,'Organizador Óptico','T-OPTICA','PANDUIT ',NULL),
	(20,'Protección Diferencial ','T-PROTEC','87',NULL),
	(21,'Controlador de automatización en tiempo real','T-PROTEC','RTAC PLC',NULL),
	(22,'RELEVADOR ','T-PROTEC','87B',NULL),
	(23,'RELEVADOR 50FI','T-PROTEC','PBF',NULL),
	(24,'LED INDICADORES','T-PROTEC','86B/86BU',NULL),
	(25,'CONCENTRADOR DE PUERTOS','T-PROTEC','CP',NULL),
	(26,'Esquema de Accion Remedial','T-PROTEC','ESMAR',NULL),
	(27,'Unidad Medicion Fasorial','T-PROTEC','PMU',NULL),
	(28,'Registrador de Disturbios','T-PROTEC','RD',NULL),
	(29,'Nodo de agregación','T-OPTICA','NODO OTN ',NULL),
	(30,'Tablero de distribución dual','T-FUERZA','DISTRIBUIDOR DE CARGAS',NULL),
	(31,'PENDIENTE MEI ORG HOR 19\" 1UR ','T-FUERZA','ORGANIZADOR ',NULL),
	(32,'MULTIPLEXOR FOX 515','T-OPTICAL','FOX 515',NULL),
	(33,'MULTIPLEXOR FOX 616','T-OPTICAL','FOX 616',NULL),
	(34,'NODO NTP 1020 ECI','T-OPTICAL','ECI 1020',NULL),
	(35,'NODO NTP 1200 ECI','T-OPTICAL','ECI 1200',NULL),
	(36,'TERMOSTATO','T-INSTRUMENTACIÓN ','TERMOMETRO',NULL),
	(37,'PATCH PANEL TELEFONICO','T-DATA','PATCH PANEL',NULL),
	(38,'ORG PANEL 1UR','T-DATA','ORGANIZADOR 1UR',NULL),
	(39,'ORG PANEL 2UR','T-DATA','ORGANIZADOR 2UR',NULL),
	(40,'TELEFONO VOIP ','T-VOIP','TEL VOIP',NULL),
	(41,'PATCH PANEL 24PTOS RJ45','T-DATA','PATCH PANEL OP',NULL),
	(42,'ORGANIZADOR FO FMT','T-OPTICAL','ORGANIZADOR FO',NULL),
	(43,'DISTRIBUIDOR ÓPTICO LC','T-DISTOPT','ODF SM LC',NULL),
	(44,'MCAD','T-CONTROL','MCAD GE',NULL),
	(45,'MONITOR','T-CONTROL','CCL',NULL),
	(46,'TECLADO','T-CONTROL','TECLADO',NULL),
	(47,'CPU','T-CONTROL','CPU',NULL),
	(48,'FIREWALL','T-CONTROL','FIREWALL',NULL),
	(49,'GATEWAY',NULL,NULL,NULL),
	(50,'PATCHPANEL BNC','T-BNCPATCH','BNCPATCH',NULL),
	(51,'TELEFONO IP','T-TEL','TEL',NULL),
	(52,'RADIO TAIT','T-TAIT','TAIT',NULL);

/*!40000 ALTER TABLE `tipo_equipo` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla usuarios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(260) DEFAULT NULL,
  `apellido` varchar(260) DEFAULT NULL,
  `rp` varchar(5) NOT NULL,
  `depto` int(10) DEFAULT NULL,
  `puesto` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`rp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



# Volcado de tabla zonas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zonas`;

CREATE TABLE `zonas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(240) DEFAULT NULL,
  `abreviacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `zonas` WRITE;
/*!40000 ALTER TABLE `zonas` DISABLE KEYS */;

INSERT INTO `zonas` (`id`, `nombre`, `abreviacion`)
VALUES
	(1,'ZONA DE TRANSMISION CANCUN','ZTCNC'),
	(2,'ZONA DE TRANSMISION YUCATAN ','ZTYUC'),
	(3,'ZONA DE OPERACION TRANSMISION CANCUN','ZOT'),
	(4,'CENTRO DE OPERACION REGIONAL DE FIBRA OPTICA','COREFO');

/*!40000 ALTER TABLE `zonas` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
