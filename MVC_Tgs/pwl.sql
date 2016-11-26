/*
SQLyog Community v8.6 Beta2
MySQL - 5.1.41 : Database - pwl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pwl` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pwl`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `idadmin` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `lastlog` datetime DEFAULT NULL,
  PRIMARY KEY (`idadmin`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`idadmin`,`username`,`password`,`fullname`,`email`,`lastlog`) values (1,'admin','ac43724f16e9241d990427ab7c8f4228','Pengelola Aplikasi','admin@amikom.ac.id','2014-11-12 06:06:08');

/*Table structure for table `nationality` */

DROP TABLE IF EXISTS `nationality`;

CREATE TABLE `nationality` (
  `id_nationality` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `nationality` varchar(200) NOT NULL,
  PRIMARY KEY (`id_nationality`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;

/*Data for the table `nationality` */

insert  into `nationality`(`id_nationality`,`code`,`nationality`) values (2,'AFG','Afghanistan'),(3,'ALB','Albania'),(4,'DZA','Algeria'),(5,'ASM','American Samoa'),(6,'AND','Andorra'),(7,'AGO','Angola'),(8,'AIA','Anguilla'),(9,'','Antarctica'),(10,'ATG','Antigua and Barbuda'),(11,'ARG','Argentina'),(12,'ARM','Armenia'),(13,'ABW','Aruba'),(14,'AUS','Australia'),(15,'AUT','Austria'),(16,'AZE','Azerbaijan'),(17,'BHS','Bahamas'),(18,'BHR','Bahrain'),(19,'BGD','Bangladesh'),(20,'BRB','Barbados'),(21,'BLR','Belarus'),(22,'BEL','Belgium'),(23,'BLZ','Belize'),(24,'BEN','Benin'),(25,'BMU','Bermuda'),(26,'BTN','Bhutan'),(27,'BOL','Bolivia'),(28,'BIH','Bosnia and Herzegovina'),(29,'BWA','Botswana'),(30,'','Bouvet Island'),(31,'BRA','Brazil'),(32,'','British Indian Ocean Territory'),(33,'BRN','Brunei Darussalam'),(34,'BGR','Bulgaria'),(35,'BFA','Burkina Faso'),(36,'BDI','Burundi'),(37,'KHM','Cambodia'),(38,'CMR','Cameroon'),(39,'CAN','Canada'),(40,'CPV','Cape Verde'),(41,'CYM','Cayman Islands'),(42,'CAF','Central African Republic'),(43,'TCD','Chad'),(44,'CHL','Chile'),(45,'CHN','China'),(46,'','Christmas Island'),(47,'','Cocos (Keeling) Islands'),(48,'COL','Colombia'),(49,'COM','Comoros'),(50,'COG','Congo'),(51,'COD','Congo, the Democratic Republic of the'),(52,'COK','Cook Islands'),(53,'CRI','Costa Rica'),(54,'CIV','Cote D\'Ivoire'),(55,'HRV','Croatia'),(56,'CUB','Cuba'),(57,'CYP','Cyprus'),(58,'CZE','Czech Republic'),(59,'DNK','Denmark'),(60,'DJI','Djibouti'),(61,'DMA','Dominica'),(62,'DOM','Dominican Republic'),(63,'ECU','Ecuador'),(64,'EGY','Egypt'),(65,'SLV','El Salvador'),(66,'GNQ','Equatorial Guinea'),(67,'ERI','Eritrea'),(68,'EST','Estonia'),(69,'ETH','Ethiopia'),(70,'FLK','Falkland Islands (Malvinas)'),(71,'FRO','Faroe Islands'),(72,'FJI','Fiji'),(73,'FIN','Finland'),(74,'FRA','France'),(75,'GUF','French Guiana'),(76,'PYF','French Polynesia'),(77,'','French Southern Territories'),(78,'GAB','Gabon'),(79,'GMB','Gambia'),(80,'GEO','Georgia'),(81,'DEU','Germany'),(82,'GHA','Ghana'),(83,'GIB','Gibraltar'),(84,'GRC','Greece'),(85,'GRL','Greenland'),(86,'GRD','Grenada'),(87,'GLP','Guadeloupe'),(88,'GUM','Guam'),(89,'GTM','Guatemala'),(90,'GIN','Guinea'),(91,'GNB','Guinea-Bissau'),(92,'GUY','Guyana'),(93,'HTI','Haiti'),(94,'','Heard Island and Mcdonald Islands'),(95,'VAT','Holy See (Vatican City State)'),(96,'HND','Honduras'),(97,'HKG','Hong Kong'),(98,'HUN','Hungary'),(99,'ISL','Iceland'),(100,'IND','India'),(101,'IDN','Indonesia'),(102,'IRN','Iran, Islamic Republic of'),(103,'IRQ','Iraq'),(104,'IRL','Ireland'),(105,'ISR','Israel'),(106,'ITA','Italy'),(107,'JAM','Jamaica'),(108,'JPN','Japan'),(109,'JOR','Jordan'),(110,'KAZ','Kazakhstan'),(111,'KEN','Kenya'),(112,'KIR','Kiribati'),(113,'PRK','Korea, Democratic People\'s Republic of'),(114,'KOR','Korea, Republic of'),(115,'KWT','Kuwait'),(116,'KGZ','Kyrgyzstan'),(117,'LAO','Lao People\'s Democratic Republic'),(118,'LVA','Latvia'),(119,'LBN','Lebanon'),(120,'LSO','Lesotho'),(121,'LBR','Liberia'),(122,'LBY','Libyan Arab Jamahiriya'),(123,'LIE','Liechtenstein'),(124,'LTU','Lithuania'),(125,'LUX','Luxembourg'),(126,'MAC','Macao'),(127,'MKD','Macedonia, the Former Yugoslav Republic of'),(128,'MDG','Madagascar'),(129,'MWI','Malawi'),(130,'MYS','Malaysia'),(131,'MDV','Maldives'),(132,'MLI','Mali'),(133,'MLT','Malta'),(134,'MHL','Marshall Islands'),(135,'MTQ','Martinique'),(136,'MRT','Mauritania'),(137,'MUS','Mauritius'),(138,'','Mayotte'),(139,'MEX','Mexico'),(140,'FSM','Micronesia, Federated States of'),(141,'MDA','Moldova, Republic of'),(142,'MCO','Monaco'),(143,'MNG','Mongolia'),(144,'MSR','Montserrat'),(145,'MAR','Morocco'),(146,'MOZ','Mozambique'),(147,'MMR','Myanmar'),(148,'NAM','Namibia'),(149,'NRU','Nauru'),(150,'NPL','Nepal'),(151,'NLD','Netherlands'),(152,'ANT','Netherlands Antilles'),(153,'NCL','New Caledonia'),(154,'NZL','New Zealand'),(155,'NIC','Nicaragua'),(156,'NER','Niger'),(157,'NGA','Nigeria'),(158,'NIU','Niue'),(159,'NFK','Norfolk Island'),(160,'MNP','Northern Mariana Islands'),(161,'NOR','Norway'),(162,'OMN','Oman'),(163,'PAK','Pakistan'),(164,'PLW','Palau'),(165,'','Palestinian Territory, Occupied'),(166,'PAN','Panama'),(167,'PNG','Papua New Guinea'),(168,'PRY','Paraguay'),(169,'PER','Peru'),(170,'PHL','Philippines'),(171,'PCN','Pitcairn'),(172,'POL','Poland'),(173,'PRT','Portugal'),(174,'PRI','Puerto Rico'),(175,'QAT','Qatar'),(176,'REU','Reunion'),(177,'ROM','Romania'),(178,'RUS','Russian Federation'),(179,'RWA','Rwanda'),(180,'SHN','Saint Helena'),(181,'KNA','Saint Kitts and Nevis'),(182,'LCA','Saint Lucia'),(183,'SPM','Saint Pierre and Miquelon'),(184,'VCT','Saint Vincent and the Grenadines'),(185,'WSM','Samoa'),(186,'SMR','San Marino'),(187,'STP','Sao Tome and Principe'),(188,'SAU','Saudi Arabia'),(189,'SEN','Senegal'),(190,'','Serbia and Montenegro'),(191,'SYC','Seychelles'),(192,'SLE','Sierra Leone'),(193,'SGP','Singapore'),(194,'SVK','Slovakia'),(195,'SVN','Slovenia'),(196,'SLB','Solomon Islands'),(197,'SOM','Somalia'),(198,'ZAF','South Africa'),(199,'','South Georgia and the South Sandwich Islands'),(200,'ESP','Spain'),(201,'LKA','Sri Lanka'),(202,'SDN','Sudan'),(203,'SUR','Suriname'),(204,'SJM','Svalbard and Jan Mayen'),(205,'SWZ','Swaziland'),(206,'SWE','Sweden'),(207,'CHE','Switzerland'),(208,'SYR','Syrian Arab Republic'),(209,'TWN','Taiwan, Province of China'),(210,'TJK','Tajikistan'),(211,'TZA','Tanzania, United Republic of'),(212,'THA','Thailand'),(213,'','Timor-Leste'),(214,'TGO','Togo'),(215,'TKL','Tokelau'),(216,'TON','Tonga'),(217,'TTO','Trinidad and Tobago'),(218,'TUN','Tunisia'),(219,'TUR','Turkey'),(220,'TKM','Turkmenistan'),(221,'TCA','Turks and Caicos Islands'),(222,'TUV','Tuvalu'),(223,'UGA','Uganda'),(224,'UKR','Ukraine'),(225,'ARE','United Arab Emirates'),(226,'GBR','United Kingdom'),(227,'USA','United States'),(228,'','United States Minor Outlying Islands'),(229,'URY','Uruguay'),(230,'UZB','Uzbekistan'),(231,'VUT','Vanuatu'),(232,'VEN','Venezuela'),(233,'VNM','Viet Nam'),(234,'VGB','Virgin Islands, British'),(235,'VIR','Virgin Islands, U.s.'),(236,'WLF','Wallis and Futuna'),(237,'ESH','Western Sahara'),(238,'YEM','Yemen'),(239,'ZMB','Zambia'),(240,'ZWE','Zimbabwe'),(257,'OTH','Other');

/*Table structure for table `siswa` */

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `id_siswa` int(10) NOT NULL AUTO_INCREMENT,
  `id_nationality` int(10) DEFAULT NULL,
  `nis` varchar(10) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `date_ob` date DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM AUTO_INCREMENT=4317 DEFAULT CHARSET=latin1;

/*Data for the table `siswa` */

insert  into `siswa`(`id_siswa`,`id_nationality`,`nis`,`full_name`,`email`,`date_ob`) values (4293,227,'T4584','Surya s','surya.s@amikom','1983-12-11'),(4294,14,'T1237','Joanne Evans','joevans08@gmail.com','1972-08-08'),(4295,193,'T5113','Gabriel Kit Iglesias-Tan','sol.iglesias@nus.edu.sg','2005-02-07'),(4296,14,'T5089','Aaron Page','aaron.page@dfat.gov.au','1974-07-20'),(4297,226,'T8986','Moazzam Malik','moazzam_m@hotmail.com','1967-05-29'),(4298,170,'T7705','Sol Iglesias','sol.iglesias@nus.edu.sg','1977-03-27'),(4299,226,'T3817','Adrian Hartley Campbell-Black','adrncmp@hotmail.com','1962-12-25'),(4300,81,'T4550','Alexander Smit','a.smit@stud.uni-heidelberg.de','1989-12-25'),(4301,108,'T3411','Kento Matsuyama','k.matsuyama@mitsuilease.co.id','0000-00-00'),(4302,14,'T3241','Eleanor Izatt Bensley','eibensley@gmail.com','1986-11-09'),(4303,108,'T5449','Haruka Onishi','harutone33@yahoo.co.jp','1979-03-15'),(4305,114,'T9334','Lee Joe Hyung','wo4134@naver.com','1991-01-23'),(4306,114,'T5964','Kim Tae Sook','grayi802@hanmail.net','0000-00-00'),(4307,81,'T8046','Anne-Cathrin Vonarx','anne-cathrin.vonarx@giz.de','1982-01-13'),(4308,14,'T4959','Rochelle O\'Hagan','rochelle.ohagan@gmail.com','1973-12-23'),(4309,14,'T4874','Kieran O\'Leary','Kieran.oleary.au@gmail.com','1976-08-07'),(4310,14,'T9883','Olivia Evans','','2004-04-24'),(4311,14,'T7995','Graham Evans','grahamjo99@gmail.com','1970-08-23'),(4312,14,'T1700','Lily Evans','','2005-09-14'),(4313,114,'T9880','Kyungyi Lee','caribbeanky@hotmail.com','1972-09-30'),(4314,114,'T6093','Kang Phil Goo','phil72@hanmail.net','1972-07-24'),(4315,108,'T9001','Ryo Izawa','cluth.rio@hotmail.com','1977-09-27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
