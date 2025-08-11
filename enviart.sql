/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.32-MariaDB : Database - enviart
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`enviart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `enviart`;

/*Table structure for table `direccion` */

DROP TABLE IF EXISTS `direccion`;

CREATE TABLE `direccion` (
  `ID_DIRECCION` int(11) NOT NULL AUTO_INCREMENT,
  `CALLE_DIR` varchar(100) DEFAULT NULL,
  `CARRERA_DIR` varchar(100) DEFAULT NULL,
  `BARRIO_DIR` varchar(100) DEFAULT NULL,
  `CODIGO_POSTAL` varchar(8) DEFAULT NULL,
  `LOCALIDAD_DIR` varchar(45) DEFAULT NULL,
  `ORIGEN_DIRECCION` varchar(45) DEFAULT NULL,
  `DESTINO_DIRECCION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_DIRECCION`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `direccion` */

insert  into `direccion`(`ID_DIRECCION`,`CALLE_DIR`,`CARRERA_DIR`,`BARRIO_DIR`,`CODIGO_POSTAL`,`LOCALIDAD_DIR`,`ORIGEN_DIRECCION`,`DESTINO_DIRECCION`) values (1,'85','104','Centenario','110921','Fontibon','Bogota','Bogota'),(2,'13','68','Modelia','110931','Fontibon','Bogota','Bogota'),(3,'53','21','La Soledad','111311','Teusaquillo','Bogota','Bogota'),(4,'72','10','Chicó Norte','110221','Chapinero','Bogota','Bogota'),(5,'147','19','Toberín','111121','Usaquén','Bogota','Bogota'),(6,'18','50','La Candelaria','111711','Candelaria','Bogota','Bogota'),(7,'33','27','Galerías','111311','Teusaquillo','Bogota','Bogota'),(8,'26','100','Santa Cecilia','110931','Fontibon','Bogota','Bogota'),(9,'170','55','Nueva Zelandia','111121','Suba','Bogota','Bogota'),(10,'63','15','Quinta Camacho','110221','Chapinero','Bogota','Bogota'),(11,'94','45','Rincón del Chicó','110221','Chapinero','Bogota','Bogota'),(12,'144','18','Cedritos','111121','Usaquén','Bogota','Bogota'),(13,'23','6','Egipto','111711','Candelaria','Bogota','Bogota'),(14,'110','71','Santa Helenita','111041','Engativá','Bogota','Bogota'),(15,'48','30','Palermo','111311','Teusaquillo','Bogota','Bogota'),(16,'116','70','Niza Norte','111121','Suba','Bogota','Bogota'),(17,'105','16','Santa Bibiana','110221','Chapinero','Bogota','Bogota'),(18,'42','17','Sagrado Corazón','111411','Barrios Unidos','Bogota','Bogota'),(19,'36','24','Teusaquillo','111311','Teusaquillo','Bogota','Bogota'),(20,'112','56','La Alhambra','111121','Suba','Bogota','Bogota');

/*Table structure for table `noguia` */

DROP TABLE IF EXISTS `noguia`;

CREATE TABLE `noguia` (
  `ID_No_GUIA` int(11) NOT NULL,
  `ESTADO_GUIA` enum('Generada','Transito','Anulada') DEFAULT NULL,
  `DIRECCION_ID_DIRECCION` int(11) NOT NULL,
  `USUARIO_ID_USUARIO` int(11) NOT NULL,
  `PEDIDO_ID_PEDIDO` int(11) NOT NULL,
  `FECHA_DE_ENTREGA_ESTIMADA` datetime DEFAULT NULL,
  `FIRMA_ENTREGA` text DEFAULT NULL,
  `EVIDENCIA_ENTREGA` varchar(45) DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATE_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_No_GUIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `noguia` */

insert  into `noguia`(`ID_No_GUIA`,`ESTADO_GUIA`,`DIRECCION_ID_DIRECCION`,`USUARIO_ID_USUARIO`,`PEDIDO_ID_PEDIDO`,`FECHA_DE_ENTREGA_ESTIMADA`,`FIRMA_ENTREGA`,`EVIDENCIA_ENTREGA`,`CREATED_AT`,`UPDATE_AT`) values (1001,'Generada',1,1,1,'2025-06-20 18:28:29','Firma Juan','evidencia_1001.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1002,'Transito',2,2,2,'2025-06-22 18:28:29','Firma Maria','evidencia_1002.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1003,'Generada',3,3,3,'2025-06-23 18:28:29',NULL,NULL,'2025-06-20 18:28:29','2025-06-20 18:28:29'),(1004,'Anulada',4,4,4,'2025-06-24 18:28:29','Firma Laura',NULL,'2025-06-20 18:28:29','2025-06-20 18:28:29'),(1005,'Generada',5,5,5,'2025-06-25 18:28:29',NULL,'evidencia_1005.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1006,'Transito',6,6,6,'2025-06-26 18:28:29','Firma Carlos','evidencia_1006.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1007,'Generada',7,7,7,'2025-06-21 18:28:29',NULL,NULL,'2025-06-20 18:28:29','2025-06-20 18:28:29'),(1008,'Anulada',8,8,8,'2025-06-22 18:28:29','Firma Andres','evidencia_1008.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1009,'Transito',9,9,9,'2025-06-23 18:28:29',NULL,NULL,'2025-06-20 18:28:29','2025-06-20 18:28:29'),(1010,'Generada',10,10,10,'2025-06-24 18:28:29','Firma Camila','evidencia_1010.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1011,'Generada',11,11,11,'2025-06-21 18:28:29',NULL,NULL,'2025-06-20 18:28:29','2025-06-20 18:28:29'),(1012,'Transito',12,12,12,'2025-06-22 18:28:29','Firma Edwin','evidencia_1012.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1013,'Anulada',13,13,13,'2025-06-23 18:28:29','Firma Paula',NULL,'2025-06-20 18:28:29','2025-06-20 18:28:29'),(1014,'Generada',14,14,14,'2025-06-24 18:28:29',NULL,'evidencia_1014.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1015,'Transito',15,15,15,'2025-06-25 18:28:29','Firma Julian','evidencia_1015.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1016,'Anulada',16,16,16,'2025-06-26 18:28:29',NULL,NULL,'2025-06-20 18:28:29','2025-06-20 18:28:29'),(1017,'Generada',17,17,17,'2025-06-21 18:28:29','Firma Diana','evidencia_1017.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1018,'Transito',18,18,18,'2025-06-22 18:28:29',NULL,NULL,'2025-06-20 18:28:29','2025-06-20 18:28:29'),(1019,'Anulada',19,19,19,'2025-06-23 18:28:29','Firma Leonardo','evidencia_1019.jpg','2025-06-20 18:28:29','2025-06-20 18:28:29'),(1020,'Generada',20,20,20,'2025-06-24 18:28:29',NULL,NULL,'2025-06-20 18:28:29','2025-06-20 18:28:29');

/*Table structure for table `novedades` */

DROP TABLE IF EXISTS `novedades`;

CREATE TABLE `novedades` (
  `ID_NOVEDAD` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION_NOVEDAD` varchar(255) NOT NULL,
  `FECHA_NOVEDAD` datetime NOT NULL,
  `ESTADO_NOVEDAD` enum('PENDIENTE','RESUELTA','CANCELADA') NOT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `UPDATE_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_NOVEDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `novedades` */

insert  into `novedades`(`ID_NOVEDAD`,`DESCRIPCION_NOVEDAD`,`FECHA_NOVEDAD`,`ESTADO_NOVEDAD`,`CREATED_AT`,`UPDATE_AT`) values (1,'PRODUCTO DEFECTUOSO','2025-06-20 18:25:02','PENDIENTE','2025-06-20 18:25:02','2025-06-20 18:25:02'),(2,'PRODUCTO DEFECTUOSO','2025-06-20 18:25:02','RESUELTA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(3,'PRODUCTO DEFECTUOSO','2025-06-20 18:25:02','CANCELADA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(4,'DIRECCIÓN INCORRECTA','2025-06-20 18:25:02','PENDIENTE','2025-06-20 18:25:02','2025-06-20 18:25:02'),(5,'DESTINATARIO NO ENCONTRADO','2025-06-20 18:25:02','RESUELTA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(6,'RETRASO EN LA ENTREGA','2025-06-20 18:25:02','CANCELADA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(7,'PRODUCTO NO CORRESPONDE','2025-06-20 18:25:02','PENDIENTE','2025-06-20 18:25:02','2025-06-20 18:25:02'),(8,'PRODUCTO INCOMPLETO','2025-06-20 18:25:02','RESUELTA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(9,'FALTA DE EMBALAJE','2025-06-20 18:25:02','CANCELADA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(10,'DAÑO POR TRANSPORTE','2025-06-20 18:25:02','PENDIENTE','2025-06-20 18:25:02','2025-06-20 18:25:02'),(11,'FALTA DE DOCUMENTACIÓN','2025-06-20 18:25:02','RESUELTA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(12,'NO SE PERMITIÓ EL INGRESO','2025-06-20 18:25:02','CANCELADA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(13,'USUARIO NO CONTESTA','2025-06-20 18:25:02','PENDIENTE','2025-06-20 18:25:02','2025-06-20 18:25:02'),(14,'PAQUETE EXTRAVIADO','2025-06-20 18:25:02','RESUELTA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(15,'ERROR DE RUTA','2025-06-20 18:25:02','CANCELADA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(16,'PRODUCTO EQUIVOCADO','2025-06-20 18:25:02','PENDIENTE','2025-06-20 18:25:02','2025-06-20 18:25:02'),(17,'RECHAZO POR PARTE DEL CLIENTE','2025-06-20 18:25:02','RESUELTA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(18,'SOLICITUD DE DEVOLUCIÓN','2025-06-20 18:25:02','CANCELADA','2025-06-20 18:25:02','2025-06-20 18:25:02'),(19,'NOVEDAD NO ESPECIFICADA','2025-06-20 18:25:02','PENDIENTE','2025-06-20 18:25:02','2025-06-20 18:25:02'),(20,'NOVEDAD MANUAL EN OFICINA','2025-06-20 18:25:02','RESUELTA','2025-06-20 18:25:02','2025-06-20 18:25:02');

/*Table structure for table `pago` */

DROP TABLE IF EXISTS `pago`;

CREATE TABLE `pago` (
  `ID_PAGO` int(11) NOT NULL AUTO_INCREMENT,
  `ESTADO_PAGO` enum('PENDIENTE','PAGADO','CANCELADO') NOT NULL,
  `METODO_DE_PAGO` enum('CREDITO','DEBITO','EFECTIVO') NOT NULL,
  `FECHA_PAGO` datetime NOT NULL,
  PRIMARY KEY (`ID_PAGO`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pago` */

insert  into `pago`(`ID_PAGO`,`ESTADO_PAGO`,`METODO_DE_PAGO`,`FECHA_PAGO`) values (1,'PENDIENTE','CREDITO','2025-06-20 18:24:53'),(2,'PAGADO','DEBITO','2025-06-20 18:24:53'),(3,'CANCELADO','EFECTIVO','2025-06-20 18:24:53'),(4,'PENDIENTE','EFECTIVO','2025-06-20 18:24:53'),(5,'PENDIENTE','CREDITO','2025-06-20 18:24:53'),(6,'PENDIENTE','CREDITO','2025-06-20 18:32:47'),(7,'PAGADO','DEBITO','2025-06-20 18:32:47'),(8,'CANCELADO','EFECTIVO','2025-06-20 18:32:47'),(9,'PENDIENTE','EFECTIVO','2025-06-20 18:32:47'),(10,'PENDIENTE','CREDITO','2025-06-20 18:32:47'),(11,'PENDIENTE','CREDITO','2025-06-20 18:32:51'),(12,'PAGADO','DEBITO','2025-06-20 18:32:51'),(13,'CANCELADO','EFECTIVO','2025-06-20 18:32:51'),(14,'PENDIENTE','EFECTIVO','2025-06-20 18:32:51'),(15,'PENDIENTE','CREDITO','2025-06-20 18:32:51'),(16,'PENDIENTE','CREDITO','2025-06-20 18:32:56'),(17,'PAGADO','DEBITO','2025-06-20 18:32:56'),(18,'CANCELADO','EFECTIVO','2025-06-20 18:32:56'),(19,'PENDIENTE','EFECTIVO','2025-06-20 18:32:56'),(20,'PENDIENTE','CREDITO','2025-06-20 18:32:56');

/*Table structure for table `pedido` */

DROP TABLE IF EXISTS `pedido`;

CREATE TABLE `pedido` (
  `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT,
  `ESTADO_PEDIDO` enum('En transito','bodega','Entregado') NOT NULL,
  `FECHA_PEDIDO` datetime NOT NULL,
  `NOVEDADES_ID_NOVEDAD` int(11) NOT NULL,
  `PAGO_ID_PAGO` int(11) NOT NULL,
  `USUARIO_ID_USUARIO` int(11) NOT NULL,
  PRIMARY KEY (`ID_PEDIDO`),
  KEY `USUARIO_ID_USUARIO` (`USUARIO_ID_USUARIO`),
  KEY `PAGO_ID_PAGO` (`PAGO_ID_PAGO`),
  KEY `NOVEDADES_ID_NOVEDAD` (`NOVEDADES_ID_NOVEDAD`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`USUARIO_ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`PAGO_ID_PAGO`) REFERENCES `pago` (`ID_PAGO`),
  CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`NOVEDADES_ID_NOVEDAD`) REFERENCES `novedades` (`ID_NOVEDAD`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pedido` */

insert  into `pedido`(`ID_PEDIDO`,`ESTADO_PEDIDO`,`FECHA_PEDIDO`,`NOVEDADES_ID_NOVEDAD`,`PAGO_ID_PAGO`,`USUARIO_ID_USUARIO`) values (1,'En transito','2025-06-20 18:30:35',1,1,1),(2,'En transito','2025-06-20 18:30:35',2,2,2),(3,'Entregado','2025-06-20 18:30:35',3,3,3),(4,'Entregado','2025-06-20 18:30:35',4,4,4),(5,'En transito','2025-06-20 18:30:35',5,5,5),(6,'bodega','2025-06-20 18:30:35',6,6,6),(7,'bodega','2025-06-20 18:30:35',7,7,7),(8,'bodega','2025-06-20 18:30:35',8,8,8),(9,'bodega','2025-06-20 18:30:35',9,9,9),(10,'Entregado','2025-06-20 18:30:35',10,10,10),(11,'bodega','2025-06-20 18:30:35',11,11,11),(12,'bodega','2025-06-20 18:30:35',12,12,12),(13,'bodega','2025-06-20 18:30:35',13,13,13),(14,'bodega','2025-06-20 18:30:35',14,14,14),(15,'En transito','2025-06-20 18:30:35',15,15,15),(16,'Entregado','2025-06-20 18:30:35',16,16,16),(17,'En transito','2025-06-20 18:30:35',17,17,17),(18,'bodega','2025-06-20 18:30:35',18,18,18),(19,'Entregado','2025-06-20 18:30:35',19,19,19),(20,'En transito','2025-06-20 18:30:35',20,20,20);

/*Table structure for table `pedido_has_ruta` */

DROP TABLE IF EXISTS `pedido_has_ruta`;

CREATE TABLE `pedido_has_ruta` (
  `ID_RUTA_PEDIDO` int(11) NOT NULL AUTO_INCREMENT,
  `PEDIDO_ID_PEDIDO` int(11) NOT NULL,
  `RUTA_ID_RUTA` int(11) NOT NULL,
  PRIMARY KEY (`ID_RUTA_PEDIDO`),
  KEY `RUTA_ID_RUTA` (`RUTA_ID_RUTA`),
  KEY `PEDIDO_ID_PEDIDO` (`PEDIDO_ID_PEDIDO`),
  CONSTRAINT `pedido_has_ruta_ibfk_1` FOREIGN KEY (`RUTA_ID_RUTA`) REFERENCES `ruta` (`ID_RUTA`),
  CONSTRAINT `pedido_has_ruta_ibfk_2` FOREIGN KEY (`PEDIDO_ID_PEDIDO`) REFERENCES `pedido` (`ID_PEDIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pedido_has_ruta` */

insert  into `pedido_has_ruta`(`ID_RUTA_PEDIDO`,`PEDIDO_ID_PEDIDO`,`RUTA_ID_RUTA`) values (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20);

/*Table structure for table `permisos` */

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `ID_PERMISOS` int(11) NOT NULL,
  `DES_PERMISOS` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_PERMISOS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `permisos` */

insert  into `permisos`(`ID_PERMISOS`,`DES_PERMISOS`) values (1,'INSERT'),(2,'SELECT'),(3,'UPDATE'),(4,'DELETE');

/*Table structure for table `rol` */

DROP TABLE IF EXISTS `rol`;

CREATE TABLE `rol` (
  `ID_ROL` int(11) NOT NULL,
  `TIPO_ROL` enum('PROVEEDOR','CLIENTE','MENSAJERO','ADMINISTRADOR') NOT NULL,
  PRIMARY KEY (`ID_ROL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `rol` */

insert  into `rol`(`ID_ROL`,`TIPO_ROL`) values (1,'PROVEEDOR'),(2,'CLIENTE'),(3,'MENSAJERO'),(4,'ADMINISTRADOR');

/*Table structure for table `rol_has_permisos` */

DROP TABLE IF EXISTS `rol_has_permisos`;

CREATE TABLE `rol_has_permisos` (
  `ID_ROL_PERMISO` int(11) NOT NULL AUTO_INCREMENT,
  `ROL_ID_ROL` int(11) NOT NULL,
  `PERMISOS_ID_PERMISOS` int(11) NOT NULL,
  PRIMARY KEY (`ID_ROL_PERMISO`),
  KEY `PERMISOS_ID_PERMISOS` (`PERMISOS_ID_PERMISOS`),
  KEY `ROL_ID_ROL` (`ROL_ID_ROL`),
  CONSTRAINT `rol_has_permisos_ibfk_1` FOREIGN KEY (`PERMISOS_ID_PERMISOS`) REFERENCES `permisos` (`ID_PERMISOS`),
  CONSTRAINT `rol_has_permisos_ibfk_2` FOREIGN KEY (`ROL_ID_ROL`) REFERENCES `rol` (`ID_ROL`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `rol_has_permisos` */

insert  into `rol_has_permisos`(`ID_ROL_PERMISO`,`ROL_ID_ROL`,`PERMISOS_ID_PERMISOS`) values (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,3,1),(6,3,2),(7,3,3),(10,4,1),(11,4,2),(13,4,3),(14,4,4);

/*Table structure for table `ruta` */

DROP TABLE IF EXISTS `ruta`;

CREATE TABLE `ruta` (
  `ID_RUTA` int(11) NOT NULL AUTO_INCREMENT,
  `DIRECCION_ID_DIRECCION` int(11) NOT NULL,
  PRIMARY KEY (`ID_RUTA`),
  KEY `DIRECCION_ID_DIRECCION` (`DIRECCION_ID_DIRECCION`),
  CONSTRAINT `ruta_ibfk_1` FOREIGN KEY (`DIRECCION_ID_DIRECCION`) REFERENCES `direccion` (`ID_DIRECCION`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ruta` */

insert  into `ruta`(`ID_RUTA`,`DIRECCION_ID_DIRECCION`) values (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `DOC_USUARIO` varchar(45) NOT NULL,
  `TIPO_DOCUMENTO` enum('CE','TI','CC') NOT NULL,
  `CONTRASENA_USUARIO` varchar(45) NOT NULL,
  `EMAIL_USUARIO` varchar(100) NOT NULL,
  `PRIMER_NOMBRE_USUARIO` varchar(80) NOT NULL,
  `SEGUNDO_NOMBRE_USUARIO` varchar(80) NOT NULL,
  `PRIMER_APELLIDO_USUARIO` varchar(80) NOT NULL,
  `SEGUNDO_APELLIDO_USUARIO` varchar(80) NOT NULL,
  `NUMERO_TELEFONO_USUARIO` varchar(20) NOT NULL,
  `CREATED_AT` datetime NOT NULL,
  `UPDATE_AT` datetime NOT NULL,
  `ESTADO_USUARIO` tinyint(4) NOT NULL DEFAULT 1,
  `ROL_ID_ROL` int(11) NOT NULL,
  PRIMARY KEY (`ID_USUARIO`),
  KEY `ROL_ID_ROL` (`ROL_ID_ROL`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ROL_ID_ROL`) REFERENCES `rol` (`ID_ROL`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `usuario` */

insert  into `usuario`(`ID_USUARIO`,`DOC_USUARIO`,`TIPO_DOCUMENTO`,`CONTRASENA_USUARIO`,`EMAIL_USUARIO`,`PRIMER_NOMBRE_USUARIO`,`SEGUNDO_NOMBRE_USUARIO`,`PRIMER_APELLIDO_USUARIO`,`SEGUNDO_APELLIDO_USUARIO`,`NUMERO_TELEFONO_USUARIO`,`CREATED_AT`,`UPDATE_AT`,`ESTADO_USUARIO`,`ROL_ID_ROL`) values (1,'1000521258','CC','1000521258','villamiljuan@gmail.com','Juan','Manuel','Villamil','Vargas','3104942867','2025-06-20 18:21:06','2025-06-20 18:21:06',0,1),(2,'1001234567','CE','pass123','maria.lopez@gmail.com','Maria','Fernanda','Lopez','Diaz','3012345678','2025-06-20 18:21:06','2025-06-20 18:21:06',1,2),(3,'1002345678','TI','clave456','carlos.moreno@hotmail.com','Carlos','Alberto','Moreno','Gomez','3023456789','2025-06-20 18:21:06','2025-06-20 18:21:06',1,1),(4,'1003456789','CC','secure789','laura.ramirez@yahoo.com','Laura','Juliana','Ramirez','Ortiz','3034567890','2025-06-20 18:21:06','2025-06-20 18:21:06',1,3),(5,'1004567890','CE','pwd000','andres.castillo@outlook.com','Andres','Felipe','Castillo','Ruiz','3045678901','2025-06-20 18:21:06','2025-06-20 18:21:06',1,1),(6,'1005678901','TI','test111','camila.perez@gmail.com','Camila','Alejandra','Perez','Martinez','3056789012','2025-06-20 18:21:06','2025-06-20 18:21:06',1,2),(7,'1006789012','CC','abc222','daniel.rojas@correo.com','Daniel','Esteban','Rojas','Mendoza','3067890123','2025-06-20 18:21:06','2025-06-20 18:21:06',1,1),(8,'1007890123','CE','xyz333','paula.garcia@gmail.com','Paula','Andrea','Garcia','Soto','3078901234','2025-06-20 18:21:06','2025-06-20 18:21:06',1,3),(9,'1008901234','TI','mypass444','felipe.nieto@gmail.com','Felipe','Javier','Nieto','Vega','3089012345','2025-06-20 18:21:06','2025-06-20 18:21:06',1,1),(10,'1009012345','CC','qwerty','diana.luna@gmail.com','Diana','Marcela','Luna','Zapata','3090123456','2025-06-20 18:21:06','2025-06-20 18:21:06',1,2),(11,'1010123456','CE','asdfgh','santiago.meza@correo.com','Santiago','David','Meza','Cortes','3101234567','2025-06-20 18:21:06','2025-06-20 18:21:06',1,1),(12,'1011234567','TI','zxcvbn','natalia.sanchez@hotmail.com','Natalia','Lorena','Sanchez','Rico','3112345678','2025-06-20 18:21:06','2025-06-20 18:21:06',1,3),(13,'1012345678','CC','aaaa11','jose.alvarez@gmail.com','Jose','Miguel','Alvarez','Rincon','3123456789','2025-06-20 18:21:06','2025-06-20 18:21:06',1,1),(14,'1013456789','CE','bbbb22','carolina.mendez@gmail.com','Carolina','Patricia','Mendez','Guerrero','3134567890','2025-06-20 18:21:06','2025-06-20 18:21:06',1,2),(15,'1014567890','TI','cccc33','julian.castro@hotmail.com','Julian','Eduardo','Castro','Beltran','3145678901','2025-06-20 18:21:06','2025-06-20 18:21:06',1,1),(16,'1015678901','CC','dddd44','tatiana.arias@gmail.com','Tatiana','Lucia','Arias','Morales','3156789012','2025-06-20 18:21:06','2025-06-20 18:21:06',1,1),(17,'1016789012','CE','eeee55','edwin.silva@gmail.com','Edwin','Mauricio','Silva','Pineda','3167890123','2025-06-20 18:21:06','2025-06-20 18:21:06',1,2),(18,'1017890123','TI','ffff66','sara.ospina@gmail.com','Sara','Isabel','Ospina','Navarro','3178901234','2025-06-20 18:21:06','2025-06-20 18:21:06',1,3),(19,'1018901234','CC','gggg77','leonardo.barrera@correo.com','Leonardo','Ricardo','Barrera','Camacho','3189012345','2025-06-20 18:21:06','2025-06-20 18:21:06',1,1),(20,'1019012345','CE','hhhh88','valentina.ramos@gmail.com','Valentina','Sofia','Ramos','Chaparro','3190123456','2025-06-20 18:21:06','2025-06-20 18:21:06',1,1),(21,'1019012345','CE','hhhh88','andrea.ramos@gmail.com','Andrea','Sofia','Ramos','Chaparro','3190123856','2025-06-20 19:06:26','2025-06-20 19:06:26',1,4);

/*Table structure for table `vehiculos` */

DROP TABLE IF EXISTS `vehiculos`;

CREATE TABLE `vehiculos` (
  `ID_VEHICULO` int(11) NOT NULL AUTO_INCREMENT,
  `TIPO_VEHICULO` varchar(45) NOT NULL,
  `MARCA_VEHICULO` varchar(45) NOT NULL,
  `MODELO_VEHICULO` varchar(45) NOT NULL,
  `AÑO_VEHICULO` int(4) NOT NULL,
  `PLACA_VEHICULO` varchar(45) NOT NULL,
  `CAPACIDAD_CARGA` varchar(45) NOT NULL,
  `ESTADO_VEHICULO` enum('ACTIVO','INACTIVO') NOT NULL,
  PRIMARY KEY (`ID_VEHICULO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `vehiculos` */

insert  into `vehiculos`(`ID_VEHICULO`,`TIPO_VEHICULO`,`MARCA_VEHICULO`,`MODELO_VEHICULO`,`AÑO_VEHICULO`,`PLACA_VEHICULO`,`CAPACIDAD_CARGA`,`ESTADO_VEHICULO`) values (1,'','bajaj','pulsar ns 160',2018,'vjh180','10','ACTIVO');

/*Table structure for table `estado del pedido` */

DROP TABLE IF EXISTS `estado del pedido`;

/*!50001 DROP VIEW IF EXISTS `estado del pedido` */;
/*!50001 DROP TABLE IF EXISTS `estado del pedido` */;

/*!50001 CREATE TABLE  `estado del pedido`(
 `PRIMER_NOMBRE_USUARIO` varchar(80) ,
 `PRIMER_APELLIDO_USUARIO` varchar(80) ,
 `ID_PEDIDO` int(11) ,
 `ESTADO_PEDIDO` enum('En transito','bodega','Entregado') ,
 `ESTADO_PAGO` enum('PENDIENTE','PAGADO','CANCELADO') ,
 `METODO_DE_PAGO` enum('CREDITO','DEBITO','EFECTIVO') ,
 `DESCRIPCION_NOVEDAD` varchar(255) ,
 `ESTADO_NOVEDAD` enum('PENDIENTE','RESUELTA','CANCELADA') 
)*/;

/*Table structure for table `localidad del pedido` */

DROP TABLE IF EXISTS `localidad del pedido`;

/*!50001 DROP VIEW IF EXISTS `localidad del pedido` */;
/*!50001 DROP TABLE IF EXISTS `localidad del pedido` */;

/*!50001 CREATE TABLE  `localidad del pedido`(
 `ID_PEDIDO` int(11) ,
 `PRIMER_NOMBRE_USUARIO` varchar(80) ,
 `ID_RUTA` int(11) ,
 `LOCALIDAD_DIR` varchar(45) 
)*/;

/*Table structure for table `roles permiso` */

DROP TABLE IF EXISTS `roles permiso`;

/*!50001 DROP VIEW IF EXISTS `roles permiso` */;
/*!50001 DROP TABLE IF EXISTS `roles permiso` */;

/*!50001 CREATE TABLE  `roles permiso`(
 `ID_USUARIO` int(11) ,
 `PRIMER_NOMBRE_USUARIO` varchar(80) ,
 `PRIMER_APELLIDO_USUARIO` varchar(80) ,
 `TIPO_ROL` enum('PROVEEDOR','CLIENTE','MENSAJERO','ADMINISTRADOR') ,
 `DES_PERMISOS` varchar(50) 
)*/;

/*View structure for view estado del pedido */

/*!50001 DROP TABLE IF EXISTS `estado del pedido` */;
/*!50001 DROP VIEW IF EXISTS `estado del pedido` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `estado del pedido` AS (select `usuario`.`PRIMER_NOMBRE_USUARIO` AS `PRIMER_NOMBRE_USUARIO`,`usuario`.`PRIMER_APELLIDO_USUARIO` AS `PRIMER_APELLIDO_USUARIO`,`pedido`.`ID_PEDIDO` AS `ID_PEDIDO`,`pedido`.`ESTADO_PEDIDO` AS `ESTADO_PEDIDO`,`pago`.`ESTADO_PAGO` AS `ESTADO_PAGO`,`pago`.`METODO_DE_PAGO` AS `METODO_DE_PAGO`,`novedades`.`DESCRIPCION_NOVEDAD` AS `DESCRIPCION_NOVEDAD`,`novedades`.`ESTADO_NOVEDAD` AS `ESTADO_NOVEDAD` from (((`pedido` join `usuario` on(`pedido`.`USUARIO_ID_USUARIO` = `usuario`.`ID_USUARIO`)) join `pago` on(`pedido`.`PAGO_ID_PAGO` = `pago`.`ID_PAGO`)) join `novedades` on(`pedido`.`NOVEDADES_ID_NOVEDAD` = `novedades`.`ID_NOVEDAD`))) */;

/*View structure for view localidad del pedido */

/*!50001 DROP TABLE IF EXISTS `localidad del pedido` */;
/*!50001 DROP VIEW IF EXISTS `localidad del pedido` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `localidad del pedido` AS (select `pedido`.`ID_PEDIDO` AS `ID_PEDIDO`,`usuario`.`PRIMER_NOMBRE_USUARIO` AS `PRIMER_NOMBRE_USUARIO`,`ruta`.`ID_RUTA` AS `ID_RUTA`,`direccion`.`LOCALIDAD_DIR` AS `LOCALIDAD_DIR` from ((((`pedido` join `pedido_has_ruta` on(`pedido`.`ID_PEDIDO` = `pedido_has_ruta`.`PEDIDO_ID_PEDIDO`)) join `ruta` on(`pedido_has_ruta`.`RUTA_ID_RUTA` = `ruta`.`ID_RUTA`)) join `direccion` on(`ruta`.`DIRECCION_ID_DIRECCION` = `direccion`.`ID_DIRECCION`)) join `usuario` on(`pedido`.`USUARIO_ID_USUARIO` = `usuario`.`ID_USUARIO`))) */;

/*View structure for view roles permiso */

/*!50001 DROP TABLE IF EXISTS `roles permiso` */;
/*!50001 DROP VIEW IF EXISTS `roles permiso` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `roles permiso` AS (select `usuario`.`ID_USUARIO` AS `ID_USUARIO`,`usuario`.`PRIMER_NOMBRE_USUARIO` AS `PRIMER_NOMBRE_USUARIO`,`usuario`.`PRIMER_APELLIDO_USUARIO` AS `PRIMER_APELLIDO_USUARIO`,`rol`.`TIPO_ROL` AS `TIPO_ROL`,`permisos`.`DES_PERMISOS` AS `DES_PERMISOS` from (((`usuario` join `rol` on(`usuario`.`ROL_ID_ROL` = `rol`.`ID_ROL`)) join `rol_has_permisos` on(`rol`.`ID_ROL` = `rol_has_permisos`.`ROL_ID_ROL`)) join `permisos` on(`rol_has_permisos`.`PERMISOS_ID_PERMISOS` = `permisos`.`ID_PERMISOS`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
