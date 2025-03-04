-- MySQL dump 10.13  Distrib 8.4.4, for Linux (x86_64)
--
-- Host: localhost    Database: portfolio2
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'Illustration','illustration',NULL),(2,'Edition','edition',NULL),(120,'Webdesign','webdesign','webdesign'),(121,'Identité visuelle','identite-visuelle-logotype','f'),(122,'Wordpress','wordpress-site-web','g'),(123,'Support de communication','support-de-communication-web-print','g');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20250212112555','2025-02-16 10:36:06',1788),('DoctrineMigrations\\Version20250212135541','2025-02-16 10:36:08',809),('DoctrineMigrations\\Version20250212165130','2025-02-16 10:36:09',298),('DoctrineMigrations\\Version20250214100713','2025-02-16 10:36:09',614),('DoctrineMigrations\\Version20250214132106','2025-02-16 10:36:10',473),('DoctrineMigrations\\Version20250216153940','2025-02-16 15:39:49',50),('DoctrineMigrations\\Version20250217143424','2025-02-21 18:46:29',53),('DoctrineMigrations\\Version20250222100503','2025-02-22 10:05:10',31),('DoctrineMigrations\\Version20250227190754','2025-02-27 19:08:01',22),('DoctrineMigrations\\Version20250302085429','2025-03-02 08:54:36',141);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `projet_id` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texte_alt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordre` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C53D045FC18272` (`projet_id`),
  CONSTRAINT `FK_C53D045FC18272` FOREIGN KEY (`projet_id`) REFERENCES `projet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (24,19,'ogmafolk-mockupx2000largeur-67c438b52d98c.webp','Mock-up pour la charte graphique d\'OgmaFolk',1),(25,19,'ogmafolk-logo-clair-600px-67c43a42cc5d9.webp','Logo d\'OgmaFolk version claire',2),(26,19,'ogmafolk-logo-fonce-600px-67c43a53d5f79.webp','Logo d\'OgmaFolk version foncée',3),(27,20,'ya-2000ppx-67c61534c062c.webp','k',1),(28,20,'ya-2000x1600px-67c61551359fe.webp','jh',2),(29,20,'ya-extrait1-67c61565222cc.webp','m',3),(30,20,'ya-extrait2-67c6157cbcd35.webp','hhh',4),(31,21,'acr-mockup-2000px-67c6d032bdb6d.webp','m',2),(32,21,'acr-mockup-pages-2000px-67c6d04231b21.webp','m',1),(33,22,'alexisdanan-mockup-2000px-67c6daae51842.webp','m',1),(34,22,'alexisdanan-mockup-pages-2000px-67c6dacd61b2f.webp','m',2),(35,23,'dystout-mockup-2000px-67c6f56dd2348.webp','g',1),(36,23,'dystout-mockup-pages-2000px-67c6f583654ff.webp','g',2),(37,24,'lbm-mockup-2000px-67c70b53c93e2.webp','h',1),(38,24,'lbm-mockup-pages-2000px-67c70b62ee28b.webp','f',2),(39,25,'sol-mockup-2000px-67c70f15c0df8.webp','gf',1),(40,25,'sol-mockup-pages-2000px-67c70f250e069.webp','ss',2),(41,26,'bikini-couv-67c719ad916b3.webp','g',1),(42,26,'bikini-4-67c719b82ced9.webp','g',2),(43,26,'bikini-5-67c719c3c277e.webp','g',3),(44,27,'affiche-cdui-3-67c759ba2db9f.webp','g',1),(45,28,'studioterrasson-mockup-2000px-67c761c1eb1ec.webp','gf',1),(46,28,'studioterrasson-mockup-pages-2000px-67c761cfad826.webp','gf',2),(50,29,'kejadenn-mockup-1500px-67c766ef1ddd8.webp','g',4),(53,29,'kejadenn-logo-300px-3-67c76ac5554a4.webp','h',1),(54,29,'kejadenn-logo-300px-2-67c76ad313924.webp','h',2),(55,29,'kejadenn-logo-300px-67c76ae19b996.webp','g',3),(56,29,'kejadenn-ag-1000px-67c76b0a3f177.webp','i',5),(57,29,'kejadenn-ag-500px-2-67c76b16401ad.webp','h',6),(58,29,'kejadenn-conf-1000px-67c76b3fdaa26.webp','gf',7),(59,29,'kejadenn-conf-524px-67c76b5363d12.webp','h',8),(60,29,'kejadenn-conf-1000px-2-67c76bad5c54b.webp','gf',9),(61,29,'kejadenn-conf-524px-2-67c76bbbdcf66.webp','fg',10);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projet`
--

DROP TABLE IF EXISTS `projet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` datetime NOT NULL,
  `est_actif` tinyint(1) NOT NULL,
  `mis_en_avant` tinyint(1) NOT NULL,
  `metadescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_mise_en_avant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordre_miniature` int DEFAULT NULL,
  `ordre_mis_en_avant` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projet`
--

LOCK TABLES `projet` WRITE;
/*!40000 ALTER TABLE `projet` DISABLE KEYS */;
INSERT INTO `projet` VALUES (19,'Charte graphique d\'OgmaFolk','charte-graphique-ogmafolk','<div class=\"elementor-element elementor-element-d33612a elementor-widget elementor-widget-text-editor\" data-id=\"d33612a\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>OgmaFolk est un projet de cr&eacute;ation de logo et charte graphique pour une entreprise d&rsquo;architecture et de paysagisme &eacute;cologique.</p>\r\n<p>Le logo cr&eacute;&eacute; rappelle l&rsquo;importance de la connexion aux sensations et de la perception humaine dans la vision de l&rsquo;entreprise. Ainsi, la texture rappelle des &eacute;l&eacute;ments organiques et le c&ocirc;t&eacute; abstrait laisse place &agrave; l&rsquo;interpr&eacute;tation.</p>\r\n<p>OgmaFolk est un projet fictif r&eacute;alis&eacute; dans le contexte des &eacute;tudes.</p>\r\n</div>\r\n</div>','67c43849b4ef9.webp','2025-03-02 10:49:00',1,0,'Création de logo et charte graphique pour OgmaFolk, une entreprise d’architecture et de paysagisme écologique basée en Bretagne.',NULL,15,0),(20,'Illustration de couverture de \"Ya!\"','illustration-couverture-ya','<div class=\"elementor-element elementor-element-dcd16cf elementor-widget elementor-widget-text-editor\" data-id=\"dcd16cf\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Couverture r&eacute;alis&eacute;e pour le num&eacute;ro 1000 du journal &laquo;&nbsp;Ya!&nbsp;&raquo;, hebdomadaire en breton.</p>\r\n<p>L&rsquo;illustration a &eacute;t&eacute; r&eacute;alis&eacute;e sur support num&eacute;rique de format 27,5x40cm.</p>\r\n</div>\r\n</div>','67c6151660605.webp','2025-03-03 20:44:00',1,0,'Couverture du journal \"YA!\" : illustration du couverture réalisée pour le numéro 1000 du journal “Ya!”, hebdomadaire en breton',NULL,3,0),(21,'Site web des Amis des Chemins de Ronde','webdesign-wordpress-acr35','<p>Design et int&eacute;gration Wordpress du site web des<a href=\"https://amisdescheminsderonde35.fr\" target=\"_blank\" rel=\"noopener\"> Amis des Chemins de Ronde 35</a>, r&eacute;alis&eacute; dans le cadre de mes missions avec l\'agence web <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic</a> &agrave; Dinard. Il s\'agit d\'un site vitrine qui pr&eacute;sente l\'association, la documentation juridique et sur son histoire, ainsi qu\'un agenda de ses activit&eacute;s.</p>','67c6d01186b9f.webp','2025-03-04 09:56:00',1,0,'Design et intégration Wordpress du site web des Amis des Chemins de Ronde 35, réalisé avec l\'agence web Solatypic à Dinard.',NULL,5,0),(22,'Association Alexis Danan','webdesign-developpement-frontend-alexis-danan','<p>Dans le cadre de mes missions en tant que salari&eacute; de <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic</a>, j\'ai r&eacute;alis&eacute; la maquette et l\'int&eacute;gration frontend du site de <a href=\"https://formation.alexisdanan.org\" target=\"_blank\" rel=\"noopener\">formation Alexis Danan</a>. Il s\'agit d\'une plateforme de e-learning d&eacute;velopp&eacute;e en PHP.&nbsp;</p>','67c6da896b4e6.webp','2025-03-04 10:43:00',1,0,'k',NULL,6,0),(23,'Site web Dys-tout','webdesign-wordpress-dystout','<p>Dans le cadre de mon emploi &agrave; <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic</a>, j\'ai r&eacute;alis&eacute; le webdesign et l\'int&eacute;gration Wordpress du site web <a href=\"https://dys-tout.fr\" target=\"_blank\" rel=\"noopener\">Dystout</a>. Ce site met &agrave; la disposition du public de la documentation sur les troubles dys, dans le but de faciliter l\'int&eacute;gration professionnelle des personnes dys.</p>','67c6f5595537d.webp','2025-03-04 12:40:00',1,0,'Webdesign et intégration Wordpress pour l\'association Dys-Tout, basée à Pontivy et agissant dans le domaine des troubles dys',NULL,5,0),(24,'Site web La Boîte Miam','webdesign-wordpress-laboitemiam','<p>Dans le cadre de mon emploi &agrave; Solatypic, j\'ai r&eacute;alis&eacute; le design et l\'int&eacute;gration Wordpress du site web La Bo&icirc;te Miam. Ce site a notamment n&eacute;cessit&eacute; la r&eacute;alisation d\'une illustration interactive en Javascript.</p>','67c70b4515691.webp','2025-03-04 14:14:00',1,0,'g',NULL,10,0),(25,'Site web Solatypic','webdesign-wordpress-solatypic','<p>Dans le cadre de mes missions au sein de <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic,</a> j\'ai r&eacute;alis&eacute; le design et l\'int&eacute;gration Wordpress du site web de l\'agence.&nbsp;</p>','67c70f00e4047.webp','2025-03-04 14:30:00',1,0,'h',NULL,4,0),(26,'Couverture de Bikini','illustration-couverture-bikini','<p>Couverture r&eacute;alis&eacute;e pour le num&eacute;ro du magazine &laquo; <a href=\"https://bikinimag.fr/?p=4299\" target=\"_blank\" rel=\"noopener\">Bikini</a> &raquo; de janvier 2023, &agrave; l&rsquo;occasion du centenaire des Seiz Breur.</p>','67c71cebad21a.webp','2025-03-04 15:09:00',1,1,'d','67c719938ee92.webp',1,1),(27,'Affiche pour la formation CDUI','affiche-formation-cdui','<p>Affiche r&eacute;alis&eacute;e pour promouvoir la formation Concepteur Designer UI du GRETA de Rennes</p>','67c7599a288e0.webp','2025-03-04 19:46:00',1,0,'Affiche réalisée pour promouvoir la prochaine session de la formation CDUI Concepteur Designer UI du GRETA de Rennes.',NULL,6,NULL),(28,'Site du Studio Crystelle Terrasson','webdesign-wordpress-studio-crystelle-terrasson','<p>Cr&eacute;ation de webdesign et int&eacute;gration WordPress pour le site web du <a href=\"https://www.studioterrasson.fr/\">studio Crystelle Terrasson</a>, studio d&rsquo;architecture int&eacute;rieure.</p>','67c761ab394c3.webp','2025-03-04 20:24:00',1,0,'Création et intégration Wordpress de site Internet pour le Studio d\'architecture intérieure Crystelle Terrasson',NULL,2,NULL),(29,'Identité visuelle de Kejadenn','identite-visuelle-logotype-kejadenn','<div class=\"elementor-element elementor-element-e117b61 elementor-widget elementor-widget-text-editor\" data-id=\"e117b61\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Logo et identit&eacute; visuelle r&eacute;alis&eacute;s pour l&rsquo;association &eacute;tudiante Kejadenn au travers de supports imprim&eacute;s et num&eacute;riques.</p>\r\n<p>Avec les deux e tourn&eacute;s l&rsquo;un vers l&rsquo;autre, le logo reprend l&rsquo;id&eacute;e d&rsquo;&eacute;change et illustre le nom de l&rsquo;association, qui signifie &laquo;&nbsp;rencontre&nbsp;&raquo; en breton.</p>\r\n<p>A la suite, voici quelques exemples de visuels qui ont servi &agrave; animer les comptes <a href=\"https://www.facebook.com/kejadenn.roazhonii\">Facebook</a> et <a href=\"https://www.instagram.com/kejadennroazhon/\">Instagram</a> de Kejadenn et &agrave; promouvoir les diff&eacute;rents &eacute;v&eacute;nements.</p>\r\n</div>\r\n</div>','67c7667a1e112.webp','2025-03-04 20:43:00',1,0,'Logo et identité visuelle réalisée pour l’association étudiante Kejadenn. Quelques exemples de visuels réalisés pour les réseaux sociaux.',NULL,7,NULL);
/*!40000 ALTER TABLE `projet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projet_categorie`
--

DROP TABLE IF EXISTS `projet_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projet_categorie` (
  `projet_id` int NOT NULL,
  `categorie_id` int NOT NULL,
  PRIMARY KEY (`projet_id`,`categorie_id`),
  KEY `IDX_6A8331E0C18272` (`projet_id`),
  KEY `IDX_6A8331E0BCF5E72D` (`categorie_id`),
  CONSTRAINT `FK_6A8331E0BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6A8331E0C18272` FOREIGN KEY (`projet_id`) REFERENCES `projet` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projet_categorie`
--

LOCK TABLES `projet_categorie` WRITE;
/*!40000 ALTER TABLE `projet_categorie` DISABLE KEYS */;
INSERT INTO `projet_categorie` VALUES (19,121),(20,1),(21,120),(21,122),(22,120),(23,120),(23,122),(24,120),(24,122),(25,120),(25,121),(25,122),(26,1),(27,123),(28,120),(28,122),(29,121),(29,123);
/*!40000 ALTER TABLE `projet_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'newenn.turbiau@gmail.com','[]','$2y$13$bi.bV7HJK70PpJ31p.LERenVWRF3iVglf5wsfXUMIIsj1mkTBejLa');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-04 21:11:15
