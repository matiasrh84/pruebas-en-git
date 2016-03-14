# Host: localhost  (Version: 5.6.24-log)
# Date: 2016-03-13 20:19:24
# Generator: MySQL-Front 5.3  (Build 4.271)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "personas"
#

DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas` (
  `idPersonas` int(4) NOT NULL AUTO_INCREMENT,
  `nombrePersonas` varchar(20) DEFAULT NULL,
  `apellidoPersonas` varchar(20) DEFAULT NULL,
  `mailPersonas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPersonas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "personas"
#


#
# Structure for table "tareas"
#

DROP TABLE IF EXISTS `tareas`;
CREATE TABLE `tareas` (
  `idTareas` int(4) NOT NULL AUTO_INCREMENT,
  `nombreTareas` varchar(15) DEFAULT NULL,
  `descripcionTareas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTareas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tareas"
#


#
# Structure for table "personas_tienen_tareas"
#

DROP TABLE IF EXISTS `personas_tienen_tareas`;
CREATE TABLE `personas_tienen_tareas` (
  `idPersonas` int(4) NOT NULL,
  `idTareas` int(4) NOT NULL,
  PRIMARY KEY (`idPersonas`,`idTareas`),
  KEY `fk_PERSONAS_has_TAREAS_TAREAS1_idx` (`idTareas`),
  KEY `fk_PERSONAS_has_TAREAS_PERSONAS_idx` (`idPersonas`),
  CONSTRAINT `fk_PERSONAS_has_TAREAS_PERSONAS` FOREIGN KEY (`idPersonas`) REFERENCES `personas` (`idPersonas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PERSONAS_has_TAREAS_TAREAS1` FOREIGN KEY (`idTareas`) REFERENCES `tareas` (`idTareas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "personas_tienen_tareas"
#

