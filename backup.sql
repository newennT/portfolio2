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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (24,19,'ogmafolk-mockupx2000largeur-67c438b52d98c.webp','Mock-up pour la charte graphique d\'OgmaFolk',1),(25,19,'ogmafolk-logo-clair-600px-67c43a42cc5d9.webp','Logo d\'OgmaFolk version claire',2),(26,19,'ogmafolk-logo-fonce-600px-67c43a53d5f79.webp','Logo d\'OgmaFolk version foncée',3),(27,20,'ya-2000ppx-67c61534c062c.webp','k',1),(28,20,'ya-2000x1600px-67c61551359fe.webp','jh',2),(29,20,'ya-extrait1-67c61565222cc.webp','m',3),(30,20,'ya-extrait2-67c6157cbcd35.webp','hhh',4),(31,21,'acr-mockup-2000px-67c6d032bdb6d.webp','m',2),(32,21,'acr-mockup-pages-2000px-67c6d04231b21.webp','m',1),(33,22,'alexisdanan-mockup-2000px-67c6daae51842.webp','m',1),(34,22,'alexisdanan-mockup-pages-2000px-67c6dacd61b2f.webp','m',2),(35,23,'dystout-mockup-2000px-67c6f56dd2348.webp','g',1),(36,23,'dystout-mockup-pages-2000px-67c6f583654ff.webp','g',2),(37,24,'lbm-mockup-2000px-67c70b53c93e2.webp','h',1),(38,24,'lbm-mockup-pages-2000px-67c70b62ee28b.webp','f',2),(39,25,'sol-mockup-2000px-67c70f15c0df8.webp','gf',1),(40,25,'sol-mockup-pages-2000px-67c70f250e069.webp','ss',2),(41,26,'bikini-couv-67c719ad916b3.webp','g',1),(42,26,'bikini-4-67c719b82ced9.webp','g',2),(43,26,'bikini-5-67c719c3c277e.webp','g',3),(44,27,'affiche-cdui-3-67c759ba2db9f.webp','g',1),(45,28,'studioterrasson-mockup-2000px-67c761c1eb1ec.webp','gf',1),(46,28,'studioterrasson-mockup-pages-2000px-67c761cfad826.webp','gf',2),(50,29,'kejadenn-mockup-1500px-67c766ef1ddd8.webp','g',4),(53,29,'kejadenn-logo-300px-3-67c76ac5554a4.webp','h',1),(54,29,'kejadenn-logo-300px-2-67c76ad313924.webp','h',2),(55,29,'kejadenn-logo-300px-67c76ae19b996.webp','g',3),(56,29,'kejadenn-ag-1000px-67c76b0a3f177.webp','i',5),(57,29,'kejadenn-ag-500px-2-67c76b16401ad.webp','h',6),(58,29,'kejadenn-conf-1000px-67c76b3fdaa26.webp','gf',7),(59,29,'kejadenn-conf-524px-67c76b5363d12.webp','h',8),(60,29,'kejadenn-conf-1000px-2-67c76bad5c54b.webp','gf',9),(61,29,'kejadenn-conf-524px-2-67c76bbbdcf66.webp','fg',10),(62,30,'constellationcreatrices-2000px-67c80a917ae23.webp','h',1),(63,30,'constellationcreatrices-extrait-2000px-67c80a9e19d66.webp','gf',2),(64,31,'brot-2000px-67c80cdba5605.webp','gh',1),(65,32,'kelaouenn-yao-2000px-67c80fa2ddef1.webp','f',1),(66,33,'femtricot-interieur-2400px-67c8145565e11.webp','f',1),(67,33,'femtricot-20-pages-1575px-67c81469548eb.webp','h',2),(68,33,'femtricot-couv-700px-67c8147a55ef1.webp','g',3),(69,33,'femtricot-4ecouv-700px-67c814874cf8a.webp','hg',4),(70,34,'affiche-skeudenn-fest-deiz-2000px-67c817235c6ae.webp','b',1),(71,34,'fest-deiz-fb-67c8173df01e0.webp','g',2),(72,34,'fest-deiz-insta-67c817497623b.webp','f',3),(73,35,'eurovision-fb-67c817cfa9fa5.webp','f',2),(74,35,'affiche-skeudenn-eurovision-2000px-67c817e78fc1f.webp','g',1),(75,35,'eurovision-insta-67c8180a521ba.webp','f',3),(76,36,'affiche-skeudenn-kemener-2000px-67c8187e27fc0.webp','g',1),(77,36,'kemener-insta-67c8188a6ea53.webp','h',2),(78,37,'calendrier2024-mockup-1600px-67c84c225fc33.webp','c',1),(79,37,'calendrier2024-mockup-mars-1600px-67c84c325e4fa.webp','k',2),(80,37,'calendrier2024-mockup-juin-1600px-67c84c444bcad.webp','m',3),(81,37,'calendrier2024-mockup-decembre-1600px-67c84c534225b.webp','m',4),(82,38,'drouizig-mockup-miniature-2000px-67c84ce9eaec8.webp','g',1),(83,38,'drouizig-mockup-pages-2000px-67c84cf8674a9.webp','h',2),(84,38,'drouizig-autoc-1800px-67c84d0badbd5.webp','h',3),(85,38,'drouizig-logo-300px-1-67c84d178a709.webp','h',4),(86,38,'drouizig-logo-300px-2-67c84d25e742b.webp','h',5),(87,38,'drouizig-logo-300px-3-67c84d32ab6c3.webp','h',6),(88,39,'icb-mockup-couv-2000px-67c84e102b15f.webp','fd',1),(89,39,'icb-mockup-interieur-2000px-67c84e25d9e08.webp','k',2),(90,39,'icb-mockup-couvfrontback-2000px-67c84e36a4152.webp','k',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projet`
--

LOCK TABLES `projet` WRITE;
/*!40000 ALTER TABLE `projet` DISABLE KEYS */;
INSERT INTO `projet` VALUES (19,'Charte graphique d\'OgmaFolk','charte-graphique-ogmafolk','<div class=\"elementor-element elementor-element-d33612a elementor-widget elementor-widget-text-editor\" data-id=\"d33612a\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>OgmaFolk est un projet de cr&eacute;ation de logo et charte graphique pour une entreprise d&rsquo;architecture et de paysagisme &eacute;cologique.</p>\r\n<p>Le logo cr&eacute;&eacute; rappelle l&rsquo;importance de la connexion aux sensations et de la perception humaine dans la vision de l&rsquo;entreprise. Ainsi, la texture rappelle des &eacute;l&eacute;ments organiques et le c&ocirc;t&eacute; abstrait laisse place &agrave; l&rsquo;interpr&eacute;tation.</p>\r\n<p>OgmaFolk est un projet fictif r&eacute;alis&eacute; dans le contexte des &eacute;tudes.</p>\r\n</div>\r\n</div>','67c43849b4ef9.webp','2025-03-02 10:49:00',1,0,'Création de logo et charte graphique pour OgmaFolk, une entreprise d’architecture et de paysagisme écologique basée en Bretagne.',NULL,20,0),(20,'Illustration de couverture de \"Ya!\"','illustration-couverture-ya','<div class=\"elementor-element elementor-element-dcd16cf elementor-widget elementor-widget-text-editor\" data-id=\"dcd16cf\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Couverture r&eacute;alis&eacute;e pour le num&eacute;ro 1000 du journal &laquo;&nbsp;Ya!&nbsp;&raquo;, hebdomadaire en breton.</p>\r\n<p>L&rsquo;illustration a &eacute;t&eacute; r&eacute;alis&eacute;e sur support num&eacute;rique de format 27,5x40cm.</p>\r\n</div>\r\n</div>','67c6151660605.webp','2025-03-03 20:44:00',1,0,'Couverture du journal \"YA!\" : illustration du couverture réalisée pour le numéro 1000 du journal “Ya!”, hebdomadaire en breton',NULL,3,0),(21,'Site web des Amis des Chemins de Ronde','webdesign-wordpress-acr35','<p>Design et int&eacute;gration Wordpress du site web des<a href=\"https://amisdescheminsderonde35.fr\" target=\"_blank\" rel=\"noopener\"> Amis des Chemins de Ronde 35</a>, r&eacute;alis&eacute; dans le cadre de mes missions avec l\'agence web <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic</a> &agrave; Dinard. Il s\'agit d\'un site vitrine qui pr&eacute;sente l\'association, la documentation juridique et sur son histoire, ainsi qu\'un agenda de ses activit&eacute;s.</p>','67c6d01186b9f.webp','2025-03-04 09:56:00',1,0,'Design et intégration Wordpress du site web des Amis des Chemins de Ronde 35, réalisé avec l\'agence web Solatypic à Dinard.',NULL,5,0),(22,'Association Alexis Danan','webdesign-developpement-frontend-alexis-danan','<p>Dans le cadre de mes missions en tant que salari&eacute; de <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic</a>, j\'ai r&eacute;alis&eacute; la maquette et l\'int&eacute;gration frontend du site de <a href=\"https://formation.alexisdanan.org\" target=\"_blank\" rel=\"noopener\">formation Alexis Danan</a>. Il s\'agit d\'une plateforme de e-learning d&eacute;velopp&eacute;e en PHP.&nbsp;</p>','67c6da896b4e6.webp','2025-03-04 10:43:00',1,0,'k',NULL,6,0),(23,'Site web Dys-tout','webdesign-wordpress-dystout','<p>Dans le cadre de mon emploi &agrave; <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic</a>, j\'ai r&eacute;alis&eacute; le webdesign et l\'int&eacute;gration Wordpress du site web <a href=\"https://dys-tout.fr\" target=\"_blank\" rel=\"noopener\">Dystout</a>. Ce site met &agrave; la disposition du public de la documentation sur les troubles dys, dans le but de faciliter l\'int&eacute;gration professionnelle des personnes dys.</p>','67c6f5595537d.webp','2025-03-04 12:40:00',1,0,'Webdesign et intégration Wordpress pour l\'association Dys-Tout, basée à Pontivy et agissant dans le domaine des troubles dys',NULL,5,0),(24,'Site web La Boîte Miam','webdesign-wordpress-laboitemiam','<p>Dans le cadre de mon emploi &agrave; Solatypic, j\'ai r&eacute;alis&eacute; le design et l\'int&eacute;gration Wordpress du site web La Bo&icirc;te Miam. Ce site a notamment n&eacute;cessit&eacute; la r&eacute;alisation d\'une illustration interactive en Javascript.</p>','67c70b4515691.webp','2025-03-04 14:14:00',1,0,'g',NULL,10,0),(25,'Site web Solatypic','webdesign-wordpress-solatypic','<p>Dans le cadre de mes missions au sein de <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic,</a> j\'ai r&eacute;alis&eacute; le design et l\'int&eacute;gration Wordpress du site web de l\'agence.&nbsp;</p>','67c70f00e4047.webp','2025-03-04 14:30:00',1,0,'h',NULL,4,0),(26,'Couverture de Bikini','illustration-couverture-bikini','<p>Couverture r&eacute;alis&eacute;e pour le num&eacute;ro du magazine &laquo; <a href=\"https://bikinimag.fr/?p=4299\" target=\"_blank\" rel=\"noopener\">Bikini</a> &raquo; de janvier 2023, &agrave; l&rsquo;occasion du centenaire des Seiz Breur.</p>','67c71cebad21a.webp','2025-03-04 15:09:00',1,1,'d','67c719938ee92.webp',1,1),(27,'Affiche pour la formation CDUI','affiche-formation-cdui','<p>Affiche r&eacute;alis&eacute;e pour promouvoir la formation Concepteur Designer UI du GRETA de Rennes</p>','67c7599a288e0.webp','2025-03-04 19:46:00',1,0,'Affiche réalisée pour promouvoir la prochaine session de la formation CDUI Concepteur Designer UI du GRETA de Rennes.',NULL,6,NULL),(28,'Site du Studio Crystelle Terrasson','webdesign-wordpress-studio-crystelle-terrasson','<p>Cr&eacute;ation de webdesign et int&eacute;gration WordPress pour le site web du <a href=\"https://www.studioterrasson.fr/\">studio Crystelle Terrasson</a>, studio d&rsquo;architecture int&eacute;rieure.</p>','67c761ab394c3.webp','2025-03-04 20:24:00',1,0,'Création et intégration Wordpress de site Internet pour le Studio d\'architecture intérieure Crystelle Terrasson',NULL,2,NULL),(29,'Identité visuelle de Kejadenn','identite-visuelle-logotype-kejadenn','<div class=\"elementor-element elementor-element-e117b61 elementor-widget elementor-widget-text-editor\" data-id=\"e117b61\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Logo et identit&eacute; visuelle r&eacute;alis&eacute;s pour l&rsquo;association &eacute;tudiante Kejadenn au travers de supports imprim&eacute;s et num&eacute;riques.</p>\r\n<p>Avec les deux e tourn&eacute;s l&rsquo;un vers l&rsquo;autre, le logo reprend l&rsquo;id&eacute;e d&rsquo;&eacute;change et illustre le nom de l&rsquo;association, qui signifie &laquo;&nbsp;rencontre&nbsp;&raquo; en breton.</p>\r\n<p>A la suite, voici quelques exemples de visuels qui ont servi &agrave; animer les comptes <a href=\"https://www.facebook.com/kejadenn.roazhonii\">Facebook</a> et <a href=\"https://www.instagram.com/kejadennroazhon/\">Instagram</a> de Kejadenn et &agrave; promouvoir les diff&eacute;rents &eacute;v&eacute;nements.</p>\r\n</div>\r\n</div>','67c7667a1e112.webp','2025-03-04 20:43:00',1,0,'Logo et identité visuelle réalisée pour l’association étudiante Kejadenn. Quelques exemples de visuels réalisés pour les réseaux sociaux.',NULL,7,NULL),(30,'Constellations créatrices','affiche-constellations-creatrices','<p>Affiche r&eacute;alis&eacute;e pour le collectif <a href=\"https://lesjaseuses.hypotheses.org/\">Les Jaseuses</a> &agrave; l&rsquo;occasion de leur colloque. Il repr&eacute;sente des noms d&rsquo;autrices, d&rsquo;artistes et de cr&eacute;atrices dispos&eacute;s de mani&egrave;re &agrave; cr&eacute;er une constellations.</p>','67c80a8044703.webp','2025-03-05 08:24:00',1,0,'Affiche réalisée pour le collectif Les Jaseuses à l’occasion de leur colloque. Il représente des noms d’autrices, d’artistes et de créatrices disposés de manière à créer une constellations.',NULL,11,NULL),(31,'Brot 2020','affiche-brot-2020','<div class=\"elementor-element elementor-element-a5bac63 elementor-widget elementor-widget-text-editor\" data-id=\"a5bac63\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>&laquo;&nbsp;Brot 2020&nbsp;&raquo; est une affiche r&eacute;alis&eacute;e dans le cadre de mes &eacute;tudes &agrave; Barcelone, pour un concours qui a lieu chaque ann&eacute;e pour lancer des nouveaux groupes de musique.</p>\r\n<p>&laquo; Brot &raquo; signifie &laquo; graine &raquo; en catalan, donc l&rsquo;id&eacute;e ici est de m&ecirc;ler la m&eacute;taphore de la plante &agrave; une repr&eacute;sentation visuelle de la musique.</p>\r\n</div>\r\n</div>','67c80ccbdb2b7.webp','2025-03-05 08:34:00',1,0,'« Brot 2020 » est une affiche réalisée pour un concours catalan qui a lieu chaque année pour lancer des nouveaux groupes de musique',NULL,12,NULL),(32,'Kelaouenn Yao!','maquettage-revue-kelaouenn-yao','<div class=\"elementor-element elementor-element-5da4d32 elementor-widget elementor-widget-text-editor\" data-id=\"5da4d32\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Maquette d\'un nouveau format pour la plaquette d&rsquo;informations diffus&eacute;e tous les mois par <a href=\"http://www.skeudenn.bzh\">Skeudenn Bro Roazhon</a>, destin&eacute;e &agrave; communiquer sur les &eacute;v&eacute;nements culturels de la r&eacute;gion rennaise.</p>\r\n<p>Elle reprend l&rsquo;identit&eacute; visuelle de l&rsquo;association.</p>\r\n</div>\r\n</div>','67c80f950615b.webp','2025-03-05 08:45:00',1,0,'Maquette de la plaquette d’informations de Skeudenn Bro Roazhon sur les événements culturels du pays rennais.',NULL,13,NULL),(33,'Brochure Fem Tricot!','maquettage-brochure-fem-tricot','<div class=\"elementor-element elementor-element-e6f1b99 elementor-widget elementor-widget-text-editor\" data-id=\"e6f1b99\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>(&laquo;&nbsp;Faisons du tricot&nbsp;&raquo; en catalan)</p>\r\n<p>Cette brochure, &agrave; destination d&rsquo;un public d&rsquo;enfants et adolescents, visant &agrave; encourager le tricot comme passe-temps pour les jeunes pendant leurs loisirs.</p>\r\n<p>Dans la proposition retenue, j&rsquo;ai cherch&eacute; &agrave; rajeunir l&rsquo;image de cette activit&eacute; et &agrave; &eacute;liminer les marqueurs de genre.</p>\r\n<p>Projet fictif r&eacute;alis&eacute; dans le cadre des &eacute;tudes.</p>\r\n</div>\r\n</div>','67c81414770b8.webp','2025-03-05 09:04:00',1,0,'(« Faisons du tricot » en catalan)\r\n\r\nMaquettage d\'une brochure en catalan visant à encourager le tricot comme passe-temps pour les jeunes pendant leurs loisirs.',NULL,9,NULL),(34,'Affiche Fest-deiz','creation-affiche-fest-deiz','<div class=\"elementor-element elementor-element-ac9086c elementor-widget elementor-widget-text-editor\" data-id=\"ac9086c\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Affiche r&eacute;alis&eacute;e en juin 2022 pour <a href=\"http://skeudenn.bzh\">Skeudenn Bro Roazhon</a> pour promouvoir un &eacute;v&eacute;nement musical et festif.</p>\r\n<p>Le visuel a ensuite &eacute;t&eacute; d&eacute;clin&eacute; en d&rsquo;autres formats pour s&rsquo;adapter &agrave; la communication sur Instagram et Facebook.</p>\r\n</div>\r\n</div>','67c8170fd0890.webp','2025-03-05 09:17:00',1,0,'Affiche réalisée en juin 2022 pour Skeudenn Bro Roazhon pour promouvoir un événement musical et festif.',NULL,18,NULL),(35,'Eurovision 2022','affiche-eurovision-2022-bretagne','<div class=\"elementor-element elementor-element-6a37f61 elementor-widget elementor-widget-text-editor\" data-id=\"6a37f61\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Cette affiche a &eacute;t&eacute; r&eacute;alis&eacute;e pour <a href=\"http://skeudenn.bzh\">Skeudenn Bro Roazhon</a> &agrave; l&rsquo;occasion de la retransmission de l&rsquo;Eurovision 2022 &agrave; Rennes.</p>\r\n<p>Le visuel a ensuite &eacute;t&eacute; d&eacute;clin&eacute; en diff&eacute;rents formats pour les r&eacute;seaux sociaux.</p>\r\n</div>\r\n</div>','67c817be48f37.webp','2025-03-05 09:21:00',1,0,'Affiche a été réalisée pour Skeudenn Bro Roazhon à l’occasion de la retransmission de l’Eurovision 2022 à Rennes.',NULL,29,NULL),(36,'Hommage à Yann-Fañch Kemener','affiche-hommage-yann-fanch-kemener','<div class=\"elementor-element elementor-element-0f30c73 elementor-widget elementor-widget-text-editor\" data-id=\"0f30c73\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Affiche r&eacute;alis&eacute;e pour promouvoir le concert donn&eacute; en hommage &agrave; Yann-Fa&ntilde;ch Kemener &agrave; l&rsquo;Antipode de Rennes. L&rsquo;affiche est bilingue breton-fran&ccedil;ais afin de toucher un public brittophone.</p>\r\n<p>Le visuel a ensuite &eacute;t&eacute; adapt&eacute; en format carr&eacute; pour la communication sur Instagram.</p>\r\n</div>\r\n</div>','67c8185e31e85.webp','2025-03-05 09:23:00',1,0,'Affiche réalisée pour promouvoir le concert donné en hommage à Yann-Fañch Kemener à l’Antipode de Rennes.',NULL,30,NULL),(37,'Calendrier 2024','calendrier-deiziadur-calenderier-2024','<div class=\"elementor-element elementor-element-dcd16cf elementor-widget elementor-widget-text-editor\" data-id=\"dcd16cf\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Calendrier illustr&eacute; 2024, bilingue breton-gallo, en 12 illustrations.</p>\r\n<p>Les illustrations sont r&eacute;alis&eacute;es num&eacute;riquement sur format A5 puis mises en page sur un format A4 horizontal.</p>\r\n<p>Calendrier final : A4 ferm&eacute; / A3 ouvert.</p>\r\n</div>\r\n</div>','67c84c0f55573.webp','2025-03-05 13:02:00',1,0,'Conception d\'un calendrier 2024, en douze illustrations, bilingue breton-gallo, au format A4 fermé.',NULL,8,NULL),(38,'Site d\'An Drouizig Kevredigezh','webdesign-wordpress-an-drouizig-kevredigezh','<p>Conception de maquette de site web puis int&eacute;gration WordPress &agrave; l&rsquo;occasion de la refonte du site web de l&rsquo;association <a href=\"https://drouizig.org\">An Drouizig</a>, qui travaille dans la traduction de logiciels en breton. L\'identit&eacute; visuelle a &eacute;galement &eacute;t&eacute; modernis&eacute;e.</p>','67c84ccbc8a75.webp','2025-03-05 13:07:00',1,0,'Conception de maquette de site web puis intégration WordPress du site web de l’association An Drouizig',NULL,7,NULL),(39,'Programmation culturelle de l\'Institut Culturel de Bretagne','maquettage-programmation-culturelle-institut-culturel-bretagne','<p>Maquettage d\'une brochure pour la programmation culturelle 2024-2025 de l\'Institut Culturel de Bretagne.</p>','67c84df9913ba.webp','2025-03-05 13:12:00',1,0,'Maquettage d\'une brochure pour la programmation culturelle 2024-2025 de l\'Institut Culturel de Bretagne.',NULL,NULL,NULL);
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
INSERT INTO `projet_categorie` VALUES (19,121),(20,1),(21,120),(21,122),(22,120),(23,120),(23,122),(24,120),(24,122),(25,120),(25,121),(25,122),(26,1),(27,123),(28,120),(28,122),(29,121),(29,123),(30,123),(31,123),(32,2),(32,123),(33,2),(33,123),(34,123),(35,123),(36,123),(37,1),(37,2),(38,120),(38,121),(38,122),(38,123),(39,2),(39,123);
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

-- Dump completed on 2025-03-05 13:19:43
