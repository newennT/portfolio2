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
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadescription` longtext COLLATE utf8mb4_unicode_ci,
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
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
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
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texte_alt` longtext COLLATE utf8mb4_unicode_ci,
  `ordre` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C53D045FC18272` (`projet_id`),
  CONSTRAINT `FK_C53D045FC18272` FOREIGN KEY (`projet_id`) REFERENCES `projet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (24,19,'ogmafolk-mockupx2000largeur-67c438b52d98c.webp','Mock-up pour la charte graphique d\'OgmaFolk',1),(25,19,'ogmafolk-logo-clair-600px-67c43a42cc5d9.webp','Logo d\'OgmaFolk version claire',2),(26,19,'ogmafolk-logo-fonce-600px-67c43a53d5f79.webp','Logo d\'OgmaFolk version foncée',3),(27,20,'ya-2000ppx-67c61534c062c.webp','k',1),(28,20,'ya-2000x1600px-67c61551359fe.webp','jh',2),(29,20,'ya-extrait1-67c61565222cc.webp','m',3),(30,20,'ya-extrait2-67c6157cbcd35.webp','hhh',4);
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
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` datetime NOT NULL,
  `est_actif` tinyint(1) NOT NULL,
  `mis_en_avant` tinyint(1) NOT NULL,
  `metadescription` longtext COLLATE utf8mb4_unicode_ci,
  `image_mise_en_avant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordre_miniature` int DEFAULT NULL,
  `ordre_mis_en_avant` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projet`
--

LOCK TABLES `projet` WRITE;
/*!40000 ALTER TABLE `projet` DISABLE KEYS */;
INSERT INTO `projet` VALUES (19,'Charte graphique d\'OgmaFolk','charte-graphique-ogmafolk','<div class=\"elementor-element elementor-element-d33612a elementor-widget elementor-widget-text-editor\" data-id=\"d33612a\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>OgmaFolk est un projet de cr&eacute;ation de logo et charte graphique pour une entreprise d&rsquo;architecture et de paysagisme &eacute;cologique.</p>\r\n<p>Le logo cr&eacute;&eacute; rappelle l&rsquo;importance de la connexion aux sensations et de la perception humaine dans la vision de l&rsquo;entreprise. Ainsi, la texture rappelle des &eacute;l&eacute;ments organiques et le c&ocirc;t&eacute; abstrait laisse place &agrave; l&rsquo;interpr&eacute;tation.</p>\r\n<p>OgmaFolk est un projet fictif r&eacute;alis&eacute; dans le contexte des &eacute;tudes.</p>\r\n</div>\r\n</div>','67c43849b4ef9.webp','2025-03-02 10:49:00',1,0,'Création de logo et charte graphique pour OgmaFolk, une entreprise d’architecture et de paysagisme écologique basée en Bretagne.',NULL,15,0),(20,'Illustration de couverture du numéro 1000 de \"Ya!\"','illustration-couverture-ya','<div class=\"elementor-element elementor-element-dcd16cf elementor-widget elementor-widget-text-editor\" data-id=\"dcd16cf\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<p>Couverture r&eacute;alis&eacute;e pour le num&eacute;ro 1000 du journal &laquo;&nbsp;Ya!&nbsp;&raquo;, hebdomadaire en breton.</p>\r\n<p>L&rsquo;illustration a &eacute;t&eacute; r&eacute;alis&eacute;e sur support num&eacute;rique de format 27,5x40cm.</p>\r\n</div>\r\n</div>','67c6151660605.webp','2025-03-03 20:44:00',1,0,'Couverture du journal \"YA!\" : illustration du couverture réalisée pour le numéro 1000 du journal “Ya!”, hebdomadaire en breton',NULL,1,0);
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
INSERT INTO `projet_categorie` VALUES (19,121),(20,1);
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
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

-- Dump completed on 2025-03-03 20:52:36
