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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'Illustration','illustration','Une illustration personnalisée permet de toucher votre public grâce à un univers graphique et poétique qui vous est propre.'),(2,'Edition','edition','Mes services d\'édition comprennent le maquettage et l\'aspect visuel de vos supports de communication sur support imprimé'),(120,'Webdesign','webdesign','Une bonne conception site web doit répondre à un certain nombre de normes techniques pour toucher votre public'),(121,'Identité visuelle','identite-visuelle-logotype','Démarquez-vous avec un logo et une charte graphique 100% personnalisés et une identité visuelle unique'),(122,'Wordpress','wordpress-site-web','Je vous propose la prise en charge totale de la création de votre site web, de la création du cahier des charges jusqu’à l’intégration WordPress.'),(123,'Support de communication','support-de-communication-web-print','Les supports de communication print et web permettent de se faire connaître auprès d’un public cible et de transmettre des informations, tout en mettant en avant les valeurs de votre structure.'),(124,'Développement','developpement-web','Quand les outils Wordpress ne sont pas suffisants, je propose le développement d\'une solution sur-mesure');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (24,19,'ogmafolk-mockupx2000largeur-67c438b52d98c.webp','Mock-up pour la charte graphique d\'OgmaFolk',1),(25,19,'ogmafolk-logo-clair-600px-67c43a42cc5d9.webp','Logo d\'OgmaFolk version claire',2),(26,19,'ogmafolk-logo-fonce-600px-67c43a53d5f79.webp','Logo d\'OgmaFolk version foncée',3),(27,20,'ya-2000ppx-67c61534c062c.webp','Illustration de couverture pour le numéro 1000 de \"Ya\" - Skeudenn golo evit niverenn 1000 ar gelaouenn \"Ya!\"',1),(28,20,'ya-2000x1600px-67c61551359fe.webp','Illustration (imprimée) de couverture pour le numéro 1000 de \"Ya\" - Skeudenn golo (moullet)  evit niverenn 1000 ar gelaouenn \"Ya!\"',2),(29,20,'ya-extrait1-67c61565222cc.webp','Détail de l\'illustration de couverture réalisée pour \"Ya!\" - Munud skeudenn golo ar gelaouenn \"Ya!\"',3),(30,20,'ya-extrait2-67c6157cbcd35.webp','Détail de l\'illustration de couverture réalisée pour \"Ya!\" - Munud skeudenn golo ar gelaouenn \"Ya!\"',4),(31,21,'acr-mockup-2000px-67c6d032bdb6d.webp','Mock up du webdesign réalisé pour l\'association \"Amis des Chemins de Ronde\" basée sur la Côte d\'Emeraude',2),(32,21,'acr-mockup-pages-2000px-67c6d04231b21.webp','Mock up du webdesign réalisé pour l\'association \"Amis des Chemins de Ronde\" basée sur la Côte d\'Emeraude',1),(33,22,'alexisdanan-mockup-2000px-67c6daae51842.webp','Mock up du webdesign réalisé pour la plateforme de formation de l\'association \"Alexis Danan\"',1),(34,22,'alexisdanan-mockup-pages-2000px-67c6dacd61b2f.webp','Mock up du webdesign réalisé pour la plateforme de formation de l\'association \"Alexis Danan\"',2),(35,23,'dystout-mockup-2000px-67c6f56dd2348.webp','Mock up du webdesign réalisé pour l\'association \"Dys-Tout\", plateforme d\'information sur les troubles dys',1),(36,23,'dystout-mockup-pages-2000px-67c6f583654ff.webp','Mock up du webdesign réalisé pour l\'association \"Dys-Tout\", plateforme d\'information sur les troubles dys',2),(37,24,'lbm-mockup-2000px-67c70b53c93e2.webp','Mock up du webdesign réalisé pour l\'association \"La Boîte Miam\"',1),(38,24,'lbm-mockup-pages-2000px-67c70b62ee28b.webp','Mock up du webdesign réalisé pour l\'association \"La Boîte Miam\"',2),(39,25,'sol-mockup-2000px-67c70f15c0df8.webp','Mock up du webdesign réalisé pour l\'agence web \"Solatypic\"',1),(40,25,'sol-mockup-pages-2000px-67c70f250e069.webp','Mock up du webdesign réalisé pour l\'agence web \"Solatypic\"',2),(41,26,'bikini-couv-67c719ad916b3.webp','Illustration style Seiz Breur pour la couverture du numéro de janvier 2023 de la revue \"Bikini\"',1),(42,26,'bikini-4-67c719b82ced9.webp','Illustration style Seiz Breur pour la couverture du numéro de janvier 2023 de la revue \"Bikini\"',2),(43,26,'bikini-5-67c719c3c277e.webp','Illustration style Seiz Breur pour la couverture du numéro de janvier 2023 de la revue \"Bikini\"',3),(44,27,'affiche-cdui-3-67c759ba2db9f.webp','Affiche réalisée pour promouvoir la formation Concepteur Designer UI du GRETA de Rennes',1),(45,28,'studioterrasson-mockup-2000px-67c761c1eb1ec.webp','Mock up du webdesign et de l\'intégration Wordpress réalisés pour le Studio Crystelle Terrasson',1),(46,28,'studioterrasson-mockup-pages-2000px-67c761cfad826.webp','Mock up du webdesign et de l\'intégration Wordpress réalisés pour le Studio Crystelle Terrasson',2),(50,29,'kejadenn-mockup-1500px-67c766ef1ddd8.webp','Support de communication imprimés créés pour compléter l\'identité visuelle de l\'association Kejadenn',4),(53,29,'kejadenn-logo-300px-3-67c76ac5554a4.webp','Logo de Kejadenn sur fond blanc',1),(54,29,'kejadenn-logo-300px-2-67c76ad313924.webp','Logo de Kejadenn sur fond coloré',2),(55,29,'kejadenn-logo-300px-67c76ae19b996.webp','Logo de Kejadenn sur fond foncé',3),(56,29,'kejadenn-ag-1000px-67c76b0a3f177.webp','Affiche réalisée pour la charte graphique de Kejadenn',5),(57,29,'kejadenn-ag-500px-2-67c76b16401ad.webp','Visuel instagram créé pour la charte graphique de Kejadenn à Rennes',6),(58,29,'kejadenn-conf-1000px-67c76b3fdaa26.webp','Visuel créé pour une conférence organisée par Kejadenn',7),(59,29,'kejadenn-conf-524px-67c76b5363d12.webp','Visuel créé pour une conférence organisée par Kejadenn',8),(60,29,'kejadenn-conf-1000px-2-67c76bad5c54b.webp','Visuel créé pour une conférence organisée par Kejadenn',9),(61,29,'kejadenn-conf-524px-2-67c76bbbdcf66.webp','Visuel créé pour une conférence organisée par Kejadenn',10),(62,30,'constellationcreatrices-2000px-67c80a917ae23.webp','Affiche réalisée pour le colloque Constellations Créatrice de l\'association Les Jaseuses',1),(63,30,'constellationcreatrices-extrait-2000px-67c80a9e19d66.webp','Détail de l\'affiche réalisée pour le colloque Constellations Créatrice de l\'association Les Jaseuses',2),(64,31,'brot-2000px-67c80cdba5605.webp','Affiche réalisée pour le concours de l\'édition 2020 du concours Brot',1),(65,32,'kelaouenn-yao-2000px-67c80fa2ddef1.webp','Maquettage de la nouvelle version de la revue Yao!, bulletin d\'informations de Skeudenn Bro Roazhon',1),(66,33,'femtricot-interieur-2400px-67c8145565e11.webp','Mockup de la brochure Fem Tricot!',1),(67,33,'femtricot-20-pages-1575px-67c81469548eb.webp','Mockup de la brochure Fem Tricot!',2),(68,33,'femtricot-couv-700px-67c8147a55ef1.webp','Mockup de la couverture de la brochure Fem Tricot!',3),(69,33,'femtricot-4ecouv-700px-67c814874cf8a.webp','Mockup du dos de la brochure Fem Tricot!',4),(70,34,'affiche-skeudenn-fest-deiz-2000px-67c817235c6ae.webp','Affiche réalisée pour un fest-deiz organisé par Skeudenn Bro Roazhon',1),(71,34,'fest-deiz-fb-67c8173df01e0.webp','Visuel réalisé pour un fest-deiz organisé par Skeudenn Bro Roazhon',2),(72,34,'fest-deiz-insta-67c817497623b.webp','Visuel réalisé pour un fest-deiz organisé par Skeudenn Bro Roazhon',3),(73,35,'eurovision-fb-67c817cfa9fa5.webp','Visuel réalisé pour la retransmission de l\'Eurovision 2022 par Skeudenn Bro Roazhon',2),(74,35,'affiche-skeudenn-eurovision-2000px-67c817e78fc1f.webp','Affiche réalisée pour la retransmission de l\'Eurovision 2022 par Skeudenn Bro Roazhon',1),(75,35,'eurovision-insta-67c8180a521ba.webp','Visuel réalisé pour la retransmission de l\'Eurovision 2022 par Skeudenn Bro Roazhon',3),(76,36,'affiche-skeudenn-kemener-2000px-67c8187e27fc0.webp','Affiche réalisée pour l\'hommage à Yann-Fañch Kemener organisé par Skeudenn Bro Roazhon',1),(77,36,'kemener-insta-67c8188a6ea53.webp','Visuel réalisé pour l\'hommage à Yann-Fañch Kemener organisé par Skeudenn Bro Roazhon',2),(78,37,'calendrier2024-mockup-1600px-67c84c225fc33.webp','Aperçu du calendrier 2024 bilingue breton-gallo',1),(79,37,'calendrier2024-mockup-mars-1600px-67c84c325e4fa.webp','Aperçu du calendrier 2024 bilingue breton-gallo - mois de mars',2),(80,37,'calendrier2024-mockup-juin-1600px-67c84c444bcad.webp','Aperçu du calendrier 2024 bilingue breton-gallo - mois de juin - miz even - maez de jeun',3),(81,37,'calendrier2024-mockup-decembre-1600px-67c84c534225b.webp','Aperçu du calendrier 2024 bilingue breton-gallo - mois de décembre - miz kerzu - maez de delère',4),(82,38,'drouizig-mockup-miniature-2000px-67c84ce9eaec8.webp','Mockup du webdesign créé pour l\'association An Drouizig',1),(83,38,'drouizig-mockup-pages-2000px-67c84cf8674a9.webp','Mockup du site internet créé sous Wordpress pour l\'association An Drouizig',2),(84,38,'drouizig-autoc-1800px-67c84d0badbd5.webp','Autocollant créé pour An Drouizig',3),(85,38,'drouizig-logo-300px-1-67c84d178a709.webp','Logo d\'An Drouizig sur fond blanc',4),(86,38,'drouizig-logo-300px-2-67c84d25e742b.webp','Logo d\'An Drouizig sur fond noir',5),(87,38,'drouizig-logo-300px-3-67c84d32ab6c3.webp','Logo d\'An Drouizig sur fond coloré',6),(88,39,'icb-mockup-couv-2000px-67c84e102b15f.webp','Mockup de la brochure de la programmation culturelle 2024-2025 de l\'Institut Culturel de Bretagne',1),(89,39,'icb-mockup-interieur-2000px-67c84e25d9e08.webp','Mockup de la brochure de la programmation culturelle 2024-2025 de l\'Institut Culturel de Bretagne',2),(90,39,'icb-mockup-couvfrontback-2000px-67c84e36a4152.webp','Mockup de la brochure de la programmation culturelle 2024-2025 de l\'Institut Culturel de Bretagne',3),(91,40,'communes-1-67c8a0f98e4bb.webp','Site des communes de Bretagne disponible en gallo',1),(92,40,'communes-2-67c8a10b707e2.webp','Site des communes de Bretagne disponible en breton',2),(93,40,'communes-3-67c8a11d62dbb.webp','Liste des pays traditionnels de Bretagne',3),(94,40,'communes-4-67c8a131d5cb1.webp','Liste des provinces traditionnelles de Bretagne',4),(95,40,'communes-5-67c8a1434a22f.webp','Page exemple d\'une des communes',5),(96,40,'communes-6-67c8a1571009e.webp','Accès aux rubriques via la page d\'accueil',6),(97,40,'communes-7-67c8a1682595e.webp','Page individuelle d\'un pays traditionnel',7),(98,40,'communes-8-67c8a17939b85.webp','Exemple de résultats de recherche',8),(99,40,'mockup-communes-2000px-67c8a18fc2247.webp','Mock up du site Communes de Bretagne développé en Symfony',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projet`
--

LOCK TABLES `projet` WRITE;
/*!40000 ALTER TABLE `projet` DISABLE KEYS */;
INSERT INTO `projet` VALUES (19,'Charte graphique d\'OgmaFolk','charte-graphique-ogmafolk','<div class=\"elementor-element elementor-element-d33612a elementor-widget elementor-widget-text-editor\" data-id=\"d33612a\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>OgmaFolk est un projet de cr&eacute;ation de logo et charte graphique pour une entreprise d&rsquo;architecture et de paysagisme &eacute;cologique.</p>\r\n<p>Le logo cr&eacute;&eacute; rappelle l&rsquo;importance de la connexion aux sensations et de la perception humaine dans la vision de l&rsquo;entreprise. Ainsi, la texture rappelle des &eacute;l&eacute;ments organiques et le c&ocirc;t&eacute; abstrait laisse place &agrave; l&rsquo;interpr&eacute;tation.</p>\r\n<p>OgmaFolk est un projet fictif r&eacute;alis&eacute; dans le contexte des &eacute;tudes.</p>\r\n</div>\r\n</div>','67c43849b4ef9.webp','2025-03-02 10:49:00',1,0,'Création de logo et charte graphique pour OgmaFolk, une entreprise d’architecture et de paysagisme écologique basée en Bretagne.',NULL,190,0),(20,'Couverture de \"Ya!\"','illustration-couverture-ya','<div class=\"elementor-element elementor-element-dcd16cf elementor-widget elementor-widget-text-editor\" data-id=\"dcd16cf\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Couverture r&eacute;alis&eacute;e pour le num&eacute;ro 1000 du journal &laquo;&nbsp;Ya!&nbsp;&raquo;, hebdomadaire en breton.</p>\r\n<p>L&rsquo;illustration a &eacute;t&eacute; r&eacute;alis&eacute;e sur support num&eacute;rique de format 27,5x40cm.</p>\r\n</div>\r\n</div>','67c6151660605.webp','2025-03-03 20:44:00',1,1,'Couverture du journal \"YA!\" : illustration du couverture réalisée pour le numéro 1000 du journal “Ya!”, hebdomadaire en breton','67c859e8ccbfd.webp',3,4),(21,'Site web des Amis des Chemins de Ronde','webdesign-wordpress-acr35','<p>Design et int&eacute;gration Wordpress du site web des<a href=\"https://amisdescheminsderonde35.fr\" target=\"_blank\" rel=\"noopener\"> Amis des Chemins de Ronde 35</a>, r&eacute;alis&eacute; dans le cadre de mes missions avec l\'agence web <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic</a> &agrave; Dinard. Il s\'agit d\'un site vitrine qui pr&eacute;sente l\'association, la documentation juridique et sur son histoire, ainsi qu\'un agenda de ses activit&eacute;s.</p>','67c6d01186b9f.webp','2025-03-04 09:56:00',1,0,'Design et intégration Wordpress du site web des Amis des Chemins de Ronde 35, réalisé avec l\'agence web Solatypic à Dinard.',NULL,70,0),(22,'Association Alexis Danan','webdesign-developpement-frontend-alexis-danan','<p>Dans le cadre de mes missions en tant que salari&eacute; de <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic</a>, j\'ai r&eacute;alis&eacute; la maquette et l\'int&eacute;gration frontend du site de <a href=\"https://formation.alexisdanan.org\" target=\"_blank\" rel=\"noopener\">formation Alexis Danan</a>. Il s\'agit d\'une plateforme de e-learning d&eacute;velopp&eacute;e en PHP.&nbsp;</p>','67c6da896b4e6.webp','2025-03-04 10:43:00',1,0,'J\'ai réalisé la maquette et l\'intégration frontend du site de formation Alexis Danan, plateforme de e-learning développée en PHP.',NULL,80,NULL),(23,'Site web Dys-tout','webdesign-wordpress-dystout','<p>Dans le cadre de mon emploi &agrave; <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic</a>, j\'ai r&eacute;alis&eacute; le webdesign et l\'int&eacute;gration Wordpress du site web <a href=\"https://dys-tout.fr\" target=\"_blank\" rel=\"noopener\">Dystout</a>. Ce site met &agrave; la disposition du public de la documentation sur les troubles dys, dans le but de faciliter l\'int&eacute;gration professionnelle des personnes dys.</p>','67c6f5595537d.webp','2025-03-04 12:40:00',1,0,'Webdesign et intégration Wordpress pour l\'association Dys-Tout, basée à Pontivy et agissant dans le domaine des troubles dys',NULL,5,0),(24,'Site web La Boîte Miam','webdesign-wordpress-laboitemiam','<p>Dans le cadre de mon emploi &agrave; Solatypic, j\'ai r&eacute;alis&eacute; le design et l\'int&eacute;gration Wordpress du site web La Bo&icirc;te Miam. Ce site a notamment n&eacute;cessit&eacute; la r&eacute;alisation d\'une illustration interactive en Javascript.</p>','67c70b4515691.webp','2025-03-04 14:14:00',1,0,'Design et l\'intégration Wordpress du site web La Boîte Miam, avec réalisation d\'une illustration interactive en Javascript.',NULL,130,0),(25,'Site web Solatypic','webdesign-wordpress-solatypic','<p>Dans le cadre de mes missions au sein de <a href=\"https://solatypic.com\" target=\"_blank\" rel=\"noopener\">Solatypic,</a> j\'ai r&eacute;alis&eacute; le design et l\'int&eacute;gration Wordpress du site web de l\'agence.&nbsp;</p>','67c70f00e4047.webp','2025-03-04 14:30:00',1,0,'Webdesign et intégration Wordpress du site web de l\'agence Solatypic dans le cadre de mon emploi',NULL,10,0),(26,'Couverture de Bikini','illustration-couverture-bikini','<p>Couverture r&eacute;alis&eacute;e pour le num&eacute;ro du magazine &laquo; <a href=\"https://bikinimag.fr/?p=4299\" target=\"_blank\" rel=\"noopener\">Bikini</a> &raquo; de janvier 2023, &agrave; l&rsquo;occasion du centenaire des Seiz Breur.</p>','67c71cebad21a.webp','2025-03-04 15:09:00',1,1,'Illustration de couverture réalisée pour le numéro du magazine « Bikini » de janvier 2023, à l’occasion du centenaire des Seiz Breur.','67c719938ee92.webp',1,1),(27,'Affiche pour la formation CDUI','affiche-formation-cdui','<p>Affiche r&eacute;alis&eacute;e pour promouvoir la formation Concepteur Designer UI du GRETA de Rennes</p>','67c7599a288e0.webp','2025-03-04 19:46:00',1,0,'Affiche réalisée pour promouvoir la prochaine session de la formation CDUI Concepteur Designer UI du GRETA de Rennes.',NULL,90,NULL),(28,'Site du Studio Crystelle Terrasson','webdesign-wordpress-studio-crystelle-terrasson','<p>Cr&eacute;ation de webdesign et int&eacute;gration WordPress pour le site web du <a href=\"https://www.studioterrasson.fr/\">studio Crystelle Terrasson</a>, studio d&rsquo;architecture int&eacute;rieure.</p>','67c761ab394c3.webp','2025-03-04 20:24:00',1,1,'Création et intégration Wordpress de site Internet pour le Studio d\'architecture intérieure Crystelle Terrasson','67c859aa76649.webp',2,2),(29,'Identité visuelle de Kejadenn','identite-visuelle-logotype-kejadenn','<div class=\"elementor-element elementor-element-e117b61 elementor-widget elementor-widget-text-editor\" data-id=\"e117b61\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Logo et identit&eacute; visuelle r&eacute;alis&eacute;s pour l&rsquo;association &eacute;tudiante Kejadenn au travers de supports imprim&eacute;s et num&eacute;riques.</p>\r\n<p>Avec les deux e tourn&eacute;s l&rsquo;un vers l&rsquo;autre, le logo reprend l&rsquo;id&eacute;e d&rsquo;&eacute;change et illustre le nom de l&rsquo;association, qui signifie &laquo;&nbsp;rencontre&nbsp;&raquo; en breton.</p>\r\n<p>A la suite, voici quelques exemples de visuels qui ont servi &agrave; animer les comptes <a href=\"https://www.facebook.com/kejadenn.roazhonii\">Facebook</a> et <a href=\"https://www.instagram.com/kejadennroazhon/\">Instagram</a> de Kejadenn et &agrave; promouvoir les diff&eacute;rents &eacute;v&eacute;nements.</p>\r\n</div>\r\n</div>','67c7667a1e112.webp','2025-03-04 20:43:00',1,0,'Logo et identité visuelle réalisée pour l’association étudiante Kejadenn. Quelques exemples de visuels réalisés pour les réseaux sociaux.',NULL,100,NULL),(30,'Constellations créatrices','affiche-constellations-creatrices','<p>Affiche r&eacute;alis&eacute;e pour le collectif <a href=\"https://lesjaseuses.hypotheses.org/\">Les Jaseuses</a> &agrave; l&rsquo;occasion de leur colloque. Il repr&eacute;sente des noms d&rsquo;autrices, d&rsquo;artistes et de cr&eacute;atrices dispos&eacute;s de mani&egrave;re &agrave; cr&eacute;er une constellations.</p>','67c80a8044703.webp','2025-03-05 08:24:00',1,0,'Affiche réalisée pour le collectif Les Jaseuses à l’occasion de leur colloque. Il représente des noms d’autrices, d’artistes et de créatrices disposés de manière à créer une constellations.',NULL,140,NULL),(31,'Brot 2020','affiche-brot-2020','<div class=\"elementor-element elementor-element-a5bac63 elementor-widget elementor-widget-text-editor\" data-id=\"a5bac63\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>&laquo;&nbsp;Brot 2020&nbsp;&raquo; est une affiche r&eacute;alis&eacute;e dans le cadre de mes &eacute;tudes &agrave; Barcelone, pour un concours qui a lieu chaque ann&eacute;e pour lancer des nouveaux groupes de musique.</p>\r\n<p>&laquo; Brot &raquo; signifie &laquo; graine &raquo; en catalan, donc l&rsquo;id&eacute;e ici est de m&ecirc;ler la m&eacute;taphore de la plante &agrave; une repr&eacute;sentation visuelle de la musique.</p>\r\n</div>\r\n</div>','67c80ccbdb2b7.webp','2025-03-05 08:34:00',1,0,'« Brot 2020 » est une affiche réalisée pour un concours catalan qui a lieu chaque année pour lancer des nouveaux groupes de musique',NULL,160,NULL),(32,'Kelaouenn Yao!','maquettage-revue-kelaouenn-yao','<div class=\"elementor-element elementor-element-5da4d32 elementor-widget elementor-widget-text-editor\" data-id=\"5da4d32\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Maquette d\'un nouveau format pour la plaquette d&rsquo;informations diffus&eacute;e tous les mois par <a href=\"http://www.skeudenn.bzh\">Skeudenn Bro Roazhon</a>, destin&eacute;e &agrave; communiquer sur les &eacute;v&eacute;nements culturels de la r&eacute;gion rennaise.</p>\r\n<p>Elle reprend l&rsquo;identit&eacute; visuelle de l&rsquo;association.</p>\r\n</div>\r\n</div>','67c80f950615b.webp','2025-03-05 08:45:00',1,0,'Maquette de la plaquette d’informations de Skeudenn Bro Roazhon sur les événements culturels du pays rennais.',NULL,170,NULL),(33,'Brochure Fem Tricot!','maquettage-brochure-fem-tricot','<div class=\"elementor-element elementor-element-e6f1b99 elementor-widget elementor-widget-text-editor\" data-id=\"e6f1b99\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>(&laquo;&nbsp;Faisons du tricot&nbsp;&raquo; en catalan)</p>\r\n<p>Cette brochure, &agrave; destination d&rsquo;un public d&rsquo;enfants et adolescents, visant &agrave; encourager le tricot comme passe-temps pour les jeunes pendant leurs loisirs.</p>\r\n<p>Dans la proposition retenue, j&rsquo;ai cherch&eacute; &agrave; rajeunir l&rsquo;image de cette activit&eacute; et &agrave; &eacute;liminer les marqueurs de genre.</p>\r\n<p>Projet fictif r&eacute;alis&eacute; dans le cadre des &eacute;tudes.</p>\r\n</div>\r\n</div>','67c81414770b8.webp','2025-03-05 09:04:00',1,0,'(« Faisons du tricot » en catalan)\r\n\r\nMaquettage d\'une brochure en catalan visant à encourager le tricot comme passe-temps pour les jeunes pendant leurs loisirs.',NULL,150,NULL),(34,'Affiche Fest-deiz','creation-affiche-fest-deiz','<div class=\"elementor-element elementor-element-ac9086c elementor-widget elementor-widget-text-editor\" data-id=\"ac9086c\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Affiche r&eacute;alis&eacute;e en juin 2022 pour <a href=\"http://skeudenn.bzh\">Skeudenn Bro Roazhon</a> pour promouvoir un &eacute;v&eacute;nement musical et festif.</p>\r\n<p>Le visuel a ensuite &eacute;t&eacute; d&eacute;clin&eacute; en d&rsquo;autres formats pour s&rsquo;adapter &agrave; la communication sur Instagram et Facebook.</p>\r\n</div>\r\n</div>','67c8170fd0890.webp','2025-03-05 09:17:00',1,0,'Affiche réalisée en juin 2022 pour Skeudenn Bro Roazhon pour promouvoir un événement musical et festif.',NULL,180,NULL),(35,'Eurovision 2022','affiche-eurovision-2022-bretagne','<div class=\"elementor-element elementor-element-6a37f61 elementor-widget elementor-widget-text-editor\" data-id=\"6a37f61\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Cette affiche a &eacute;t&eacute; r&eacute;alis&eacute;e pour <a href=\"http://skeudenn.bzh\">Skeudenn Bro Roazhon</a> &agrave; l&rsquo;occasion de la retransmission de l&rsquo;Eurovision 2022 &agrave; Rennes.</p>\r\n<p>Le visuel a ensuite &eacute;t&eacute; d&eacute;clin&eacute; en diff&eacute;rents formats pour les r&eacute;seaux sociaux.</p>\r\n</div>\r\n</div>','67c817be48f37.webp','2025-03-05 09:21:00',1,0,'Affiche a été réalisée pour Skeudenn Bro Roazhon à l’occasion de la retransmission de l’Eurovision 2022 à Rennes.',NULL,200,NULL),(36,'Hommage à Yann-Fañch Kemener','affiche-hommage-yann-fanch-kemener','<div class=\"elementor-element elementor-element-0f30c73 elementor-widget elementor-widget-text-editor\" data-id=\"0f30c73\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Affiche r&eacute;alis&eacute;e pour promouvoir le concert donn&eacute; en hommage &agrave; Yann-Fa&ntilde;ch Kemener &agrave; l&rsquo;Antipode de Rennes. L&rsquo;affiche est bilingue breton-fran&ccedil;ais afin de toucher un public brittophone.</p>\r\n<p>Le visuel a ensuite &eacute;t&eacute; adapt&eacute; en format carr&eacute; pour la communication sur Instagram.</p>\r\n</div>\r\n</div>','67c8185e31e85.webp','2025-03-05 09:23:00',1,0,'Affiche réalisée pour promouvoir le concert donné en hommage à Yann-Fañch Kemener à l’Antipode de Rennes.',NULL,210,NULL),(37,'Calendrier 2024','calendrier-deiziadur-calenderier-2024','<div class=\"elementor-element elementor-element-dcd16cf elementor-widget elementor-widget-text-editor\" data-id=\"dcd16cf\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Calendrier illustr&eacute; 2024, bilingue breton-gallo, en 12 illustrations.</p>\r\n<p>Les illustrations sont r&eacute;alis&eacute;es num&eacute;riquement sur format A5 puis mises en page sur un format A4 horizontal.</p>\r\n<p>Calendrier final : A4 ferm&eacute; / A3 ouvert.</p>\r\n</div>\r\n</div>','67c84c0f55573.webp','2025-03-05 13:02:00',1,0,'Conception d\'un calendrier 2024, en douze illustrations, bilingue breton-gallo, au format A4 fermé.',NULL,120,NULL),(38,'Site d\'An Drouizig Kevredigezh','webdesign-wordpress-an-drouizig-kevredigezh','<p>Conception de maquette de site web puis int&eacute;gration WordPress &agrave; l&rsquo;occasion de la refonte du site web de l&rsquo;association <a href=\"https://drouizig.org\">An Drouizig</a>, qui travaille dans la traduction de logiciels en breton. L\'identit&eacute; visuelle a &eacute;galement &eacute;t&eacute; modernis&eacute;e.</p>','67c84ccbc8a75.webp','2025-03-05 13:07:00',1,0,'Conception de maquette de site web puis intégration WordPress du site web de l’association An Drouizig',NULL,110,NULL),(39,'Programmation culturelle de l\'Institut Culturel de Bretagne','maquettage-programmation-culturelle-institut-culturel-bretagne','<p>Maquettage d\'une brochure pour la programmation culturelle 2024-2025 de l\'Institut Culturel de Bretagne.</p>','67c84df9913ba.webp','2025-03-05 13:12:00',1,1,'Maquettage d\'une brochure pour la programmation culturelle 2024-2025 de l\'Institut Culturel de Bretagne.','67c8598a3b435.webp',4,3),(40,'Communes de Bretagne','communes-de-bretagne-developpement-symfony','<p>D&eacute;veloppement d\'un site avec Symfony pour lister les communes de Bretagne et les replacer dans les provinces et pays traditionnels. Divers outils, dont une carte interactive, permettent de naviguer dans le site et de trouver des informations. Le site est visible &agrave; l\'adresse <a href=\"https://communesdebretagne.in.net\" target=\"_blank\" rel=\"noopener\">https://communesdebretagne.in.net</a></p>','67c8a0d1bd2ce.webp','2025-03-05 19:02:00',1,0,'Développement d\'un site avec Symfony pour lister les communes de Bretagne et les replacer dans les provinces et pays traditionnels.',NULL,3,NULL);
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
INSERT INTO `projet_categorie` VALUES (19,121),(20,1),(21,120),(21,122),(22,120),(22,124),(23,120),(23,122),(24,120),(24,122),(25,120),(25,121),(25,122),(26,1),(27,123),(28,120),(28,122),(29,121),(29,123),(30,123),(31,123),(32,2),(32,123),(33,2),(33,123),(34,123),(35,123),(36,123),(37,1),(37,2),(38,120),(38,121),(38,122),(38,123),(39,2),(39,123),(40,124);
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

-- Dump completed on 2025-03-05 19:12:12
