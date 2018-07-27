# ************************************************************
# Sequel Pro SQL dump
# Versão 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.33-MariaDB)
# Base de Dados: play_chart
# Tempo de Geração: 2018-07-25 18:43:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump da tabela categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`category_id`, `category_title`)
VALUES
	(1,'Desenvolvimento Web'),
	(2,'Programação'),
	(3,'Marketing e Conteúdo'),
	(4,'Infoprodutos'),
	(5,'Dicas e Sacadas');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`post_id`, `post_title`, `post_category`)
VALUES
	(1,'UpInside Play - Charts',1),
	(2,'UpInside Play - Charts',1),
	(3,'UpInside Play - Charts',2),
	(4,'UpInside Play - Charts',2),
	(5,'UpInside Play - Charts',1),
	(6,'UpInside Play - Charts',1),
	(7,'UpInside Play - Charts',1),
	(8,'UpInside Play - Charts',1),
	(9,'UpInside Play - Charts',1),
	(10,'UpInside Play - Charts',1),
	(11,'UpInside Play - Charts',1),
	(12,'UpInside Play - Charts',1),
	(13,'UpInside Play - Charts',1),
	(14,'UpInside Play - Charts',3),
	(15,'UpInside Play - Charts',3),
	(16,'UpInside Play - Charts',1),
	(17,'UpInside Play - Charts',3),
	(18,'UpInside Play - Charts',3),
	(19,'UpInside Play - Charts',2),
	(20,'UpInside Play - Charts',2),
	(21,'UpInside Play - Charts',2),
	(22,'UpInside Play - Charts',2),
	(23,'UpInside Play - Charts',2),
	(24,'UpInside Play - Charts',1),
	(25,'UpInside Play - Charts',2),
	(26,'UpInside Play - Charts',2),
	(27,'UpInside Play - Charts',2),
	(28,'UpInside Play - Charts',1),
	(29,'UpInside Play - Charts',1),
	(30,'UpInside Play - Charts',2),
	(31,'UpInside Play - Charts',1),
	(32,'UpInside Play - Charts',2),
	(33,'UpInside Play - Charts',3),
	(34,'UpInside Play - Charts',3),
	(35,'UpInside Play - Charts',3),
	(36,'UpInside Play - Charts',5),
	(37,'UpInside Play - Charts',5),
	(38,'UpInside Play - Charts',1),
	(39,'UpInside Play - Charts',1),
	(40,'UpInside Play - Charts',2),
	(41,'UpInside Play - Charts',2),
	(42,'UpInside Play - Charts',5),
	(43,'UpInside Play - Charts',5),
	(44,'UpInside Play - Charts',5),
	(45,'UpInside Play - Charts',5),
	(46,'UpInside Play - Charts',2),
	(47,'UpInside Play - Charts',2),
	(48,'UpInside Play - Charts',3),
	(49,'UpInside Play - Charts',5),
	(50,'UpInside Play - Charts',5),
	(51,'UpInside Play - Charts',5),
	(52,'UpInside Play - Charts',5),
	(53,'UpInside Play - Charts',5),
	(54,'UpInside Play - Charts',5),
	(55,'UpInside Play - Charts',1),
	(56,'UpInside Play - Charts',5),
	(57,'UpInside Play - Charts',1),
	(58,'UpInside Play - Charts',5),
	(59,'UpInside Play - Charts',5),
	(60,'UpInside Play - Charts',5),
	(61,'UpInside Play - Charts',5),
	(62,'UpInside Play - Charts',5),
	(63,'UpInside Play - Charts',5),
	(64,'UpInside Play - Charts',1),
	(65,'UpInside Play - Charts',1),
	(66,'UpInside Play - Charts',1),
	(67,'UpInside Play - Charts',5),
	(68,'UpInside Play - Charts',1),
	(69,'UpInside Play - Charts',1),
	(70,'UpInside Play - Charts',1),
	(71,'UpInside Play - Charts',3),
	(72,'UpInside Play - Charts',5),
	(73,'UpInside Play - Charts',5),
	(74,'UpInside Play - Charts',1),
	(75,'UpInside Play - Charts',5),
	(76,'UpInside Play - Charts',1),
	(77,'UpInside Play - Charts',5),
	(78,'UpInside Play - Charts',5),
	(79,'UpInside Play - Charts',5),
	(80,'UpInside Play - Charts',5),
	(81,'UpInside Play - Charts',5),
	(82,'UpInside Play - Charts',1),
	(83,'UpInside Play - Charts',5),
	(84,'UpInside Play - Charts',5),
	(85,'UpInside Play - Charts',1),
	(86,'UpInside Play - Charts',5),
	(87,'UpInside Play - Charts',5),
	(88,'UpInside Play - Charts',5),
	(89,'UpInside Play - Charts',5),
	(90,'UpInside Play - Charts',5),
	(91,'UpInside Play - Charts',5),
	(92,'UpInside Play - Charts',5),
	(93,'UpInside Play - Charts',5),
	(94,'UpInside Play - Charts',5),
	(95,'UpInside Play - Charts',5),
	(96,'UpInside Play - Charts',5),
	(97,'UpInside Play - Charts',5),
	(98,'UpInside Play - Charts',5),
	(99,'UpInside Play - Charts',5),
	(100,'UpInside Play - Charts',5),
	(101,'UpInside Play - Charts',5),
	(102,'UpInside Play - Charts',5),
	(103,'UpInside Play - Charts',5),
	(104,'UpInside Play - Charts',5),
	(105,'UpInside Play - Charts',5),
	(106,'UpInside Play - Charts',5),
	(107,'UpInside Play - Charts',5),
	(108,'UpInside Play - Charts',5),
	(109,'UpInside Play - Charts',5),
	(110,'UpInside Play - Charts',5),
	(111,'UpInside Play - Charts',5),
	(112,'UpInside Play - Charts',1),
	(113,'UpInside Play - Charts',2),
	(114,'UpInside Play - Charts',2),
	(115,'UpInside Play - Charts',2),
	(116,'UpInside Play - Charts',1),
	(117,'UpInside Play - Charts',1),
	(118,'UpInside Play - Charts',2),
	(119,'UpInside Play - Charts',2),
	(120,'UpInside Play - Charts',2),
	(121,'UpInside Play - Charts',2),
	(122,'UpInside Play - Charts',2),
	(123,'UpInside Play - Charts',1),
	(124,'UpInside Play - Charts',1),
	(125,'UpInside Play - Charts',2),
	(126,'UpInside Play - Charts',1),
	(127,'UpInside Play - Charts',2),
	(128,'UpInside Play - Charts',3),
	(129,'UpInside Play - Charts',1),
	(130,'UpInside Play - Charts',3),
	(131,'UpInside Play - Charts',1),
	(132,'UpInside Play - Charts',3),
	(133,'UpInside Play - Charts',1),
	(134,'UpInside Play - Charts',1),
	(135,'UpInside Play - Charts',1),
	(136,'UpInside Play - Charts',1),
	(137,'UpInside Play - Charts',3),
	(138,'UpInside Play - Charts',1),
	(139,'UpInside Play - Charts',3),
	(140,'UpInside Play - Charts',2),
	(141,'UpInside Play - Charts',3),
	(142,'UpInside Play - Charts',1),
	(143,'UpInside Play - Charts',3),
	(144,'UpInside Play - Charts',2),
	(145,'UpInside Play - Charts',2),
	(146,'UpInside Play - Charts',2),
	(147,'UpInside Play - Charts',3),
	(148,'UpInside Play - Charts',3),
	(149,'UpInside Play - Charts',3),
	(150,'UpInside Play - Charts',2),
	(151,'UpInside Play - Charts',3),
	(152,'UpInside Play - Charts',2),
	(153,'UpInside Play - Charts',3),
	(154,'UpInside Play - Charts',2),
	(155,'UpInside Play - Charts',5),
	(156,'UpInside Play - Charts',4),
	(157,'UpInside Play - Charts',4),
	(158,'UpInside Play - Charts',4),
	(159,'UpInside Play - Charts',4),
	(160,'UpInside Play - Charts',4),
	(161,'UpInside Play - Charts',1),
	(162,'UpInside Play - Charts',1),
	(163,'UpInside Play - Charts',2),
	(164,'UpInside Play - Charts',2),
	(165,'UpInside Play - Charts',4),
	(166,'UpInside Play - Charts',4),
	(167,'UpInside Play - Charts',2),
	(168,'UpInside Play - Charts',2),
	(169,'UpInside Play - Charts',2),
	(170,'UpInside Play - Charts',4),
	(171,'UpInside Play - Charts',4),
	(172,'UpInside Play - Charts',4),
	(173,'UpInside Play - Charts',1),
	(174,'UpInside Play - Charts',4),
	(175,'UpInside Play - Charts',2),
	(176,'UpInside Play - Charts',4),
	(177,'UpInside Play - Charts',2),
	(178,'UpInside Play - Charts',4),
	(179,'UpInside Play - Charts',1),
	(180,'UpInside Play - Charts',1),
	(181,'UpInside Play - Charts',2),
	(182,'UpInside Play - Charts',2),
	(183,'UpInside Play - Charts',2),
	(184,'UpInside Play - Charts',1),
	(185,'UpInside Play - Charts',2),
	(186,'UpInside Play - Charts',2),
	(187,'UpInside Play - Charts',2),
	(188,'UpInside Play - Charts',2),
	(189,'UpInside Play - Charts',2),
	(190,'UpInside Play - Charts',2),
	(191,'UpInside Play - Charts',1),
	(192,'UpInside Play - Charts',2),
	(193,'UpInside Play - Charts',2),
	(194,'UpInside Play - Charts',1),
	(195,'UpInside Play - Charts',2),
	(196,'UpInside Play - Charts',2),
	(197,'UpInside Play - Charts',2),
	(198,'UpInside Play - Charts',2),
	(199,'UpInside Play - Charts',2),
	(200,'UpInside Play - Charts',2),
	(201,'UpInside Play - Charts',2);

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
