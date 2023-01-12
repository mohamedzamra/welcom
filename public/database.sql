-- MySQL dump 10.13  Distrib 8.0.31, for macos12.6 (arm64)
--
-- Host: localhost    Database: wowy
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'qiBY6Q88j87qoKPjkhZFH8BV188OfqrC',1,'2023-01-02 21:22:37','2023-01-02 21:22:37','2023-01-02 21:22:37');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Smart Offer','2028-01-03 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(2,'Sale off','2028-01-03 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(3,'New Arrivals','2028-01-03 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(4,'Gaming Area','2028-01-03 00:00:00','not_set','ILSDKVYFGXPJ','promotion/4.png','/products',0,4,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(5,'Smart Offer','2028-01-03 00:00:00','not_set','IZ6WU8KUALYE','promotion/5.png','/products',0,5,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(6,'Repair Services','2028-01-03 00:00:00','banner-big','IZ6WU8KUALYF','promotion/6.png','/products',0,6,'published','2023-01-02 21:22:37','2023-01-02 21:22:37');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Smart Offer','promotion/1.png','/vi/products'),('vi',2,'Sale off','promotion/2.png','/vi/products'),('vi',3,'New Arrivals','promotion/3.png','/vi/products'),('vi',4,'Gaming Area','promotion/4.png','/vi/products'),('vi',5,'Smart Offer','promotion/5.png','/vi/products'),('vi',6,'Repair Services','promotion/6.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Dolore inventore nemo commodi est. Labore architecto qui deleniti nulla sunt. Iste et eveniet tempora sunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-01-02 21:22:35','2023-01-02 21:22:35'),(2,'Fashion',0,'Suscipit accusamus et est necessitatibus expedita. Doloribus sit reprehenderit vel et sed. Distinctio recusandae porro et eius eligendi esse in.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-01-02 21:22:35','2023-01-02 21:22:35'),(3,'Electronic',0,'Quod sint sed voluptatum autem. Dolor expedita adipisci aut commodi dignissimos. Illum perferendis quidem molestiae perspiciatis. Consectetur facilis ut repudiandae sunt tempora.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-01-02 21:22:35','2023-01-02 21:22:35'),(4,'Commercial',0,'Eos tempore odio consectetur saepe dolores vero tempore. Consequatur provident voluptas iure qui nam. Sit laborum nam necessitatibus ex qui et. Excepturi ut id quos modi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-01-02 21:22:35','2023-01-02 21:22:35');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,'brands/1.png','published',0,1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(2,'Hiching',NULL,NULL,'brands/2.png','published',1,1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(3,'Kepslo',NULL,NULL,'brands/3.png','published',2,1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(4,'Groneba',NULL,NULL,'brands/4.png','published',3,1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(5,'Babian',NULL,NULL,'brands/5.png','published',4,1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(6,'Valorant',NULL,NULL,'brands/6.png','published',5,1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(7,'Pure',NULL,NULL,'brands/7.png','published',6,1,'2023-01-02 21:22:23','2023-01-02 21:22:23');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(2,'EUR','€',0,2,1,0,0.84,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(3,'VND','₫',0,0,2,0,23203,'2023-01-02 21:22:23','2023-01-02 21:22:23');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Prof. Eulah Swift DVM','john.smith@botble.com','+19014507947','RU','New Jersey','Port Magdalena','98954 Wunsch Cape',1,1,'2023-01-02 21:22:31','2023-01-02 21:22:31','89501'),(2,'Prof. Eulah Swift DVM','john.smith@botble.com','+18623263308','OM','New Mexico','Port Estellaburgh','27897 Collins Motorway',1,0,'2023-01-02 21:22:31','2023-01-02 21:22:31','23084-3458'),(3,'Lonie Reilly V','customer@botble.com','+13608968609','CX','Colorado','Lake Okey','1322 Gaylord Junctions Apt. 654',2,1,'2023-01-02 21:22:31','2023-01-02 21:22:31','65086'),(4,'Lonie Reilly V','customer@botble.com','+18728791583','VE','Pennsylvania','Baumbachland','86443 Nikki Islands',2,0,'2023-01-02 21:22:31','2023-01-02 21:22:31','40565-9991'),(5,'Reinhold Anderson','rpollich@example.net','+15866270933','PE','Washington','O\'Reillyport','1942 Swift Shores Apt. 231',3,1,'2023-01-02 21:22:31','2023-01-02 21:22:31','74194'),(6,'Prof. Santino Stokes','schiller.earnestine@example.net','+15154751863','SR','Missouri','Walterfort','8582 Waters Lane',4,1,'2023-01-02 21:22:31','2023-01-02 21:22:31','96439'),(7,'Dr. Yoshiko Hayes','whaley@example.com','+13472961771','PH','Nebraska','Gisselleshire','3690 Leilani Station',5,1,'2023-01-02 21:22:31','2023-01-02 21:22:31','89792-4516'),(8,'Wellington Kessler DVM','donavon71@example.org','+18162124053','FJ','Arkansas','East Clemmie','5786 Madalyn Islands Apt. 700',6,1,'2023-01-02 21:22:32','2023-01-02 21:22:32','48600-8588'),(9,'Fleta Braun','rmiller@example.net','+12546307441','SC','Idaho','Loyborough','8808 Rolfson Extensions',7,1,'2023-01-02 21:22:32','2023-01-02 21:22:32','05366'),(10,'Jabari Schultz','qwindler@example.net','+15616969167','VG','Connecticut','Corastad','900 Rico Meadow Apt. 363',8,1,'2023-01-02 21:22:32','2023-01-02 21:22:32','04003'),(11,'Stanford Shanahan','soledad30@example.org','+16147652774','RS','South Dakota','Lake Laceyfurt','81139 Kub Creek',9,1,'2023-01-02 21:22:32','2023-01-02 21:22:32','34378-5172'),(12,'Shanon Prohaska Sr.','kohler.stevie@example.org','+17572547715','VU','Connecticut','Elsashire','187 Funk Highway Apt. 950',10,1,'2023-01-02 21:22:32','2023-01-02 21:22:32','16844');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Prof. Eulah Swift DVM','john.smith@botble.com','$2y$10$TMPdsvAQOrghrnhNTP2SzugVPdHGiPYPqsFFdY7cURSzVgmROhALG','customers/6.jpg','1981-12-04','+15029247193',NULL,'2023-01-02 21:22:31','2023-01-02 21:22:31','2023-01-03 04:22:31',NULL,'activated'),(2,'Lonie Reilly V','customer@botble.com','$2y$10$1hqxHKKXoA0GMdaduubZNuudyDh7l6fLHGW5chOQ.vTpsgGX5iHUK','customers/5.jpg','1997-12-30','+19714055408',NULL,'2023-01-02 21:22:31','2023-01-02 21:22:31','2023-01-03 04:22:31',NULL,'activated'),(3,'Reinhold Anderson','rpollich@example.net','$2y$10$/HM7CZIHOrOweSRSWYi30uJbvZM.yYABsvqTUFiLuuEEhS/91S/uC','customers/1.jpg','1977-12-08','+13186784750',NULL,'2023-01-02 21:22:31','2023-01-02 21:22:31','2023-01-03 04:22:31',NULL,'activated'),(4,'Prof. Santino Stokes','schiller.earnestine@example.net','$2y$10$RpckHY93TG5iwI5XWNwCDOlIrPV29xM16nF5M1CK8twCO4Q/SRK7e','customers/2.jpg','1984-12-16','+17698172253',NULL,'2023-01-02 21:22:31','2023-01-02 21:22:31','2023-01-03 04:22:31',NULL,'activated'),(5,'Dr. Yoshiko Hayes','whaley@example.com','$2y$10$YpZjqF2pFNMZ.ELMkJIDDevGa/n4d1dNet6AaSEsYC8hxu4yPhyvO','customers/3.jpg','1997-12-07','+16786917644',NULL,'2023-01-02 21:22:31','2023-01-02 21:22:31','2023-01-03 04:22:31',NULL,'activated'),(6,'Wellington Kessler DVM','donavon71@example.org','$2y$10$z0/iT3DDEFTTC3qbnQ/.Y.kvnBvqOthODZu9b1x2Ou2UTbkxSNKmq','customers/4.jpg','2002-12-04','+13864678354',NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','2023-01-03 04:22:32',NULL,'activated'),(7,'Fleta Braun','rmiller@example.net','$2y$10$tL7fT3FA2NKW49hH3m14Besuob2uE0IP8YDmgdOQRZhpivS3TIMw2','customers/5.jpg','1997-12-20','+12833690799',NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','2023-01-03 04:22:32',NULL,'activated'),(8,'Jabari Schultz','qwindler@example.net','$2y$10$nNGGhUg/.fJZluISYJGJU.45X9zx4TH/.p3e6XTMaERPQKAGaJvFK','customers/6.jpg','1988-12-29','+12547918145',NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','2023-01-03 04:22:32',NULL,'activated'),(9,'Stanford Shanahan','soledad30@example.org','$2y$10$LvMYpjOYjnEjZzxUYAQ7aOm0Hikfrm1RY2Xw2a5IAq84oWJBafQDS','customers/7.jpg','1983-12-16','+12547477877',NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','2023-01-03 04:22:32',NULL,'activated'),(10,'Shanon Prohaska Sr.','kohler.stevie@example.org','$2y$10$ZnUZruNP0CMF//xN5TOCMeMtTuK2zhv2m4ujCygRYMr19XkwJ/QfG','customers/8.jpg','1994-12-27','+17752843502',NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','2023-01-03 04:22:32',NULL,'activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,11,35.34,8,4),(2,13,108.24,14,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2023-02-20 00:00:00','published','2023-01-02 21:22:32','2023-01-02 21:22:32'),(2,'Gadgets & Accessories','2023-02-12 00:00:00','published','2023-01-02 21:22:32','2023-01-02 21:22:32');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi trong ngày.'),('vi',2,'Tiện ích & Phụ kiện');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,'1 Year',0,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(1,'2 Year',10,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(1,'3 Year',20,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(2,'4GB',0,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(2,'8GB',10,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(2,'16GB',20,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(3,'Core i5',0,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(3,'Core i7',10,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(3,'Core i9',20,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(4,'128GB',0,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(4,'256GB',10,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(4,'512GB',20,9999,0,'2023-01-02 21:22:33','2023-01-02 21:22:33');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-01-02 21:22:33','2023-01-02 21:22:33');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` int unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Fleta Braun','+12546307441','rmiller@example.net','SC','Idaho','Loyborough','8808 Rolfson Extensions',1,'05366','shipping_address'),(2,'Prof. Eulah Swift DVM','+19014507947','john.smith@botble.com','RU','New Jersey','Port Magdalena','98954 Wunsch Cape',2,'89501','shipping_address'),(3,'Reinhold Anderson','+15866270933','rpollich@example.net','PE','Washington','O\'Reillyport','1942 Swift Shores Apt. 231',3,'74194','shipping_address'),(4,'Fleta Braun','+12546307441','rmiller@example.net','SC','Idaho','Loyborough','8808 Rolfson Extensions',4,'05366','shipping_address'),(5,'Shanon Prohaska Sr.','+17572547715','kohler.stevie@example.org','VU','Connecticut','Elsashire','187 Funk Highway Apt. 950',5,'16844','shipping_address'),(6,'Reinhold Anderson','+15866270933','rpollich@example.net','PE','Washington','O\'Reillyport','1942 Swift Shores Apt. 231',6,'74194','shipping_address'),(7,'Dr. Yoshiko Hayes','+13472961771','whaley@example.com','PH','Nebraska','Gisselleshire','3690 Leilani Station',7,'89792-4516','shipping_address'),(8,'Prof. Santino Stokes','+15154751863','schiller.earnestine@example.net','SR','Missouri','Walterfort','8582 Waters Lane',8,'96439','shipping_address'),(9,'Prof. Santino Stokes','+15154751863','schiller.earnestine@example.net','SR','Missouri','Walterfort','8582 Waters Lane',9,'96439','shipping_address'),(10,'Prof. Santino Stokes','+15154751863','schiller.earnestine@example.net','SR','Missouri','Walterfort','8582 Waters Lane',10,'96439','shipping_address'),(11,'Stanford Shanahan','+16147652774','soledad30@example.org','RS','South Dakota','Lake Laceyfurt','81139 Kub Creek',11,'34378-5172','shipping_address'),(12,'Prof. Santino Stokes','+15154751863','schiller.earnestine@example.net','SR','Missouri','Walterfort','8582 Waters Lane',12,'96439','shipping_address'),(13,'Dr. Yoshiko Hayes','+13472961771','whaley@example.com','PH','Nebraska','Gisselleshire','3690 Leilani Station',13,'89792-4516','shipping_address'),(14,'Stanford Shanahan','+16147652774','soledad30@example.org','RS','South Dakota','Lake Laceyfurt','81139 Kub Creek',14,'34378-5172','shipping_address'),(15,'Prof. Eulah Swift DVM','+19014507947','john.smith@botble.com','RU','New Jersey','Port Magdalena','98954 Wunsch Cape',15,'89501','shipping_address'),(16,'Wellington Kessler DVM','+18162124053','donavon71@example.org','FJ','Arkansas','East Clemmie','5786 Madalyn Islands Apt. 700',16,'48600-8588','shipping_address'),(17,'Prof. Eulah Swift DVM','+19014507947','john.smith@botble.com','RU','New Jersey','Port Magdalena','98954 Wunsch Cape',17,'89501','shipping_address'),(18,'Wellington Kessler DVM','+18162124053','donavon71@example.org','FJ','Arkansas','East Clemmie','5786 Madalyn Islands Apt. 700',18,'48600-8588','shipping_address'),(19,'Stanford Shanahan','+16147652774','soledad30@example.org','RS','South Dakota','Lake Laceyfurt','81139 Kub Creek',19,'34378-5172','shipping_address'),(20,'Jabari Schultz','+15616969167','qwindler@example.net','VG','Connecticut','Corastad','900 Rico Meadow Apt. 363',20,'04003','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-12-27 05:22:32','2022-12-27 05:22:32'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-12-27 05:22:32','2022-12-27 05:22:32'),(3,'create_shipment','Created shipment for order',0,1,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(4,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-12-21 05:22:32','2022-12-21 05:22:32'),(5,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-12-21 05:22:32','2022-12-21 05:22:32'),(6,'create_shipment','Created shipment for order',0,2,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(7,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(8,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-12-18 21:22:32','2022-12-18 21:22:32'),(9,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-12-18 21:22:32','2022-12-18 21:22:32'),(10,'confirm_payment','Payment was confirmed (amount $1,679.00) by %user_name%',0,3,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(11,'create_shipment','Created shipment for order',0,3,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(12,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-12-28 05:22:32','2022-12-28 05:22:32'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-12-28 05:22:32','2022-12-28 05:22:32'),(15,'confirm_payment','Payment was confirmed (amount $887.00) by %user_name%',0,4,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-12-28 13:22:32','2022-12-28 13:22:32'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-12-28 13:22:32','2022-12-28 13:22:32'),(19,'confirm_payment','Payment was confirmed (amount $1,526.00) by %user_name%',0,5,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(20,'create_shipment','Created shipment for order',0,5,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(21,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-12-22 15:22:32','2022-12-22 15:22:32'),(22,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-12-22 15:22:32','2022-12-22 15:22:32'),(23,'create_shipment','Created shipment for order',0,6,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(24,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(25,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-12-23 09:22:32','2022-12-23 09:22:32'),(26,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-12-23 09:22:32','2022-12-23 09:22:32'),(27,'confirm_payment','Payment was confirmed (amount $568.00) by %user_name%',0,7,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(28,'create_shipment','Created shipment for order',0,7,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-12-30 15:22:32','2022-12-30 15:22:32'),(31,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-12-30 15:22:32','2022-12-30 15:22:32'),(32,'confirm_payment','Payment was confirmed (amount $747.00) by %user_name%',0,8,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(33,'create_shipment','Created shipment for order',0,8,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(34,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-12-30 21:22:32','2022-12-30 21:22:32'),(35,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-12-30 21:22:32','2022-12-30 21:22:32'),(36,'confirm_payment','Payment was confirmed (amount $473.00) by %user_name%',0,9,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(37,'create_shipment','Created shipment for order',0,9,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-12-26 13:22:32','2022-12-26 13:22:32'),(40,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-12-26 13:22:32','2022-12-26 13:22:32'),(41,'confirm_payment','Payment was confirmed (amount $488.00) by %user_name%',0,10,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(42,'create_shipment','Created shipment for order',0,10,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-12-28 01:22:32','2022-12-28 01:22:32'),(44,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-12-28 01:22:32','2022-12-28 01:22:32'),(45,'confirm_payment','Payment was confirmed (amount $1,211.00) by %user_name%',0,11,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(46,'create_shipment','Created shipment for order',0,11,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-12-30 21:22:32','2022-12-30 21:22:32'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-12-30 21:22:32','2022-12-30 21:22:32'),(49,'confirm_payment','Payment was confirmed (amount $1,268.00) by %user_name%',0,12,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(50,'create_shipment','Created shipment for order',0,12,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-12-27 21:22:32','2022-12-27 21:22:32'),(53,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-12-27 21:22:32','2022-12-27 21:22:32'),(54,'create_shipment','Created shipment for order',0,13,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-12-29 05:22:32','2022-12-29 05:22:32'),(56,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-12-29 05:22:32','2022-12-29 05:22:32'),(57,'confirm_payment','Payment was confirmed (amount $1,056.00) by %user_name%',0,14,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(58,'create_shipment','Created shipment for order',0,14,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(59,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(60,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-12-31 09:22:32','2022-12-31 09:22:32'),(61,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-12-31 09:22:32','2022-12-31 09:22:32'),(62,'confirm_payment','Payment was confirmed (amount $1,418.00) by %user_name%',0,15,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(63,'create_shipment','Created shipment for order',0,15,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-12-31 09:22:32','2022-12-31 09:22:32'),(65,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-12-31 09:22:32','2022-12-31 09:22:32'),(66,'confirm_payment','Payment was confirmed (amount $2,305.00) by %user_name%',0,16,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(67,'create_shipment','Created shipment for order',0,16,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-01-02 05:22:32','2023-01-02 05:22:32'),(69,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-01-02 05:22:32','2023-01-02 05:22:32'),(70,'confirm_payment','Payment was confirmed (amount $617.00) by %user_name%',0,17,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(71,'create_shipment','Created shipment for order',0,17,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(73,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-01-01 09:22:33','2023-01-01 09:22:33'),(74,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-01-01 09:22:33','2023-01-01 09:22:33'),(75,'confirm_payment','Payment was confirmed (amount $234.00) by %user_name%',0,18,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(76,'create_shipment','Created shipment for order',0,18,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-01-01 21:22:33','2023-01-01 21:22:33'),(78,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-01-01 21:22:33','2023-01-01 21:22:33'),(79,'confirm_payment','Payment was confirmed (amount $462.00) by %user_name%',0,19,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(80,'create_shipment','Created shipment for order',0,19,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(81,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-01-02 15:22:33','2023-01-02 15:22:33'),(82,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-01-02 15:22:33','2023-01-02 15:22:33'),(83,'create_shipment','Created shipment for order',0,20,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(84,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(85,'update_status','Order confirmed by %user_name%',0,3,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(86,'update_status','Order confirmed by %user_name%',0,7,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(87,'update_status','Order confirmed by %user_name%',0,9,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(88,'update_status','Order confirmed by %user_name%',0,12,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(89,'update_status','Order confirmed by %user_name%',0,14,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(90,'update_status','Order confirmed by %user_name%',0,17,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,123.00,0.00,'[]',NULL,55,'Apple Keyboard (Digital)','products/13-1.jpg',695.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(2,1,3,112.00,0.00,'[]',NULL,64,'Apple Airpods Serial 3','products/16.jpg',2619.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(3,1,1,119.00,0.00,'[]',NULL,73,'Black Smart Watches','products/18.jpg',716.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(4,2,2,116.00,0.00,'[]',NULL,75,'Leather Watch Band Serial 3','products/19-1.jpg',1008.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(5,2,3,125.00,0.00,'[]',NULL,87,'Phillips Mouse','products/23.jpg',2346.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(6,2,1,125.00,0.00,'[]',NULL,90,'Phillips Mouse','products/23.jpg',782.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(7,2,1,124.00,0.00,'[]',NULL,92,'Gaming Keyboard','products/24-1.jpg',538.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(8,3,2,439.00,0.00,'[]',NULL,27,'Smart Home Speaker (Digital)','products/1-2.jpg',1770.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(9,3,1,358.00,0.00,'[]',NULL,33,'Boxed - Bluetooth Headphone','products/3-2.jpg',629.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(10,3,1,113.00,0.00,'[]',NULL,44,'Apple iPhone 13 Plus','products/8.jpg',558.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(11,3,3,110.00,0.00,'[]',NULL,68,'Cool Smart Watches (Digital)','products/17.jpg',2676.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(12,4,1,439.00,0.00,'[]',NULL,25,'Smart Home Speaker (Digital)','products/1.jpg',885.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(13,4,3,112.00,0.00,'[]',NULL,66,'Apple Airpods Serial 3','products/16.jpg',2619.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(14,4,1,112.00,0.00,'[]',NULL,83,'Historic Alarm Clock (Digital)','products/21-1.jpg',567.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(15,5,2,298.00,0.00,'[]',NULL,29,'Headphone Ultra Bass','products/2-1.jpg',1180.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(16,5,3,234.00,0.00,'[]',NULL,49,'Macbook Air 12 inch','products/10.jpg',2442.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(17,5,1,116.00,0.00,'[]',NULL,74,'Leather Watch Band Serial 3','products/19.jpg',504.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(18,5,1,112.00,0.00,'[]',NULL,84,'Historic Alarm Clock (Digital)','products/21.jpg',567.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(19,6,3,123.00,0.00,'[]',NULL,55,'Apple Keyboard (Digital)','products/13-1.jpg',2085.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(20,6,2,115.00,0.00,'[]',NULL,59,'MacSafe 80W','products/14.jpg',1428.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(21,6,2,130.00,0.00,'[]',NULL,63,'Hand playstation','products/15.jpg',1326.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(22,7,2,116.00,0.00,'[]',NULL,43,'Leather Watch Band','products/7-1.jpg',1262.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(23,7,3,112.00,0.00,'[]',NULL,65,'Apple Airpods Serial 3','products/16.jpg',2619.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(24,8,3,119.00,0.00,'[]',NULL,72,'Black Smart Watches','products/18-2.jpg',2148.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(25,8,3,130.00,0.00,'[]',NULL,80,'Macbook Pro 2015 13 inch','products/20-1.jpg',1623.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(26,9,1,119.00,0.00,'[]',NULL,70,'Black Smart Watches','products/18.jpg',716.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(27,9,2,119.00,0.00,'[]',NULL,73,'Black Smart Watches','products/18.jpg',1432.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(28,9,1,116.00,0.00,'[]',NULL,74,'Leather Watch Band Serial 3','products/19.jpg',504.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(29,10,1,116.00,0.00,'[]',NULL,74,'Leather Watch Band Serial 3','products/19.jpg',504.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(30,10,3,124.00,0.00,'[]',NULL,92,'Gaming Keyboard','products/24-1.jpg',1614.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(31,11,1,234.00,0.00,'[]',NULL,49,'Macbook Air 12 inch','products/10.jpg',814.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(32,11,3,123.00,0.00,'[]',NULL,54,'Apple Keyboard (Digital)','products/13.jpg',2085.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(33,11,2,130.00,0.00,'[]',NULL,62,'Hand playstation','products/15-1.jpg',1326.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(34,11,3,116.00,0.00,'[]',NULL,76,'Leather Watch Band Serial 3','products/19.jpg',1512.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(35,12,2,439.00,0.00,'[]',NULL,27,'Smart Home Speaker (Digital)','products/1-2.jpg',1770.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(36,12,3,130.00,0.00,'[]',NULL,79,'Macbook Pro 2015 13 inch','products/20.jpg',1623.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(37,13,1,439.00,0.00,'[]',NULL,26,'Smart Home Speaker (Digital)','products/1-1.jpg',885.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(38,13,2,76.00,0.00,'[]',NULL,35,'Chikie - Bluetooth Speaker','products/4.jpg',1596.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(39,13,3,234.00,0.00,'[]',NULL,50,'Macbook Air 12 inch','products/10.jpg',2442.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(40,14,2,298.00,0.00,'[]',NULL,28,'Headphone Ultra Bass','products/2.jpg',1180.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(41,14,3,116.00,0.00,'[]',NULL,53,'Macbook Pro 13 inch','products/12-1.jpg',2604.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(42,14,1,112.00,0.00,'[]',NULL,83,'Historic Alarm Clock (Digital)','products/21-1.jpg',567.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(43,15,3,358.00,0.00,'[]',NULL,31,'Boxed - Bluetooth Headphone','products/3.jpg',1887.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(44,15,3,76.00,0.00,'[]',NULL,36,'Chikie - Bluetooth Speaker','products/4-1.jpg',2394.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(45,15,1,116.00,0.00,'[]',NULL,53,'Macbook Pro 13 inch','products/12-1.jpg',868.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(46,16,3,298.00,0.00,'[]',NULL,28,'Headphone Ultra Bass','products/2.jpg',1770.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(47,16,3,358.00,0.00,'[]',NULL,32,'Boxed - Bluetooth Headphone','products/3-1.jpg',1887.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(48,16,2,112.00,0.00,'[]',NULL,66,'Apple Airpods Serial 3','products/16.jpg',1746.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(49,16,1,113.00,0.00,'[]',NULL,86,'Black Glasses','products/22-1.jpg',513.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(50,17,3,123.00,0.00,'[]',NULL,54,'Apple Keyboard (Digital)','products/13.jpg',2085.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(51,17,2,124.00,0.00,'[]',NULL,92,'Gaming Keyboard','products/24-1.jpg',1076.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','physical',0),(52,18,1,115.00,0.00,'[]',NULL,60,'MacSafe 80W','products/14.jpg',714.00,0,'2023-01-02 21:22:33','2023-01-02 21:22:33','physical',0),(53,18,1,119.00,0.00,'[]',NULL,71,'Black Smart Watches','products/18-1.jpg',716.00,0,'2023-01-02 21:22:33','2023-01-02 21:22:33','physical',0),(54,19,2,115.00,0.00,'[]',NULL,57,'MacSafe 80W','products/14.jpg',1428.00,0,'2023-01-02 21:22:33','2023-01-02 21:22:33','physical',0),(55,19,2,116.00,0.00,'[]',NULL,76,'Leather Watch Band Serial 3','products/19.jpg',1008.00,0,'2023-01-02 21:22:33','2023-01-02 21:22:33','physical',0),(56,20,1,234.00,0.00,'[]',NULL,50,'Macbook Air 12 inch','products/10.jpg',814.00,0,'2023-01-02 21:22:33','2023-01-02 21:22:33','physical',0),(57,20,2,119.00,0.00,'[]',NULL,72,'Black Smart Watches','products/18-2.jpg',1432.00,0,'2023-01-02 21:22:33','2023-01-02 21:22:33','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` int unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` int unsigned NOT NULL COMMENT 'Order product id',
  `product_id` int unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `store_id` int unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',7,'1','default','pending',578.00,0.00,0.00,NULL,NULL,0.00,578.00,1,NULL,1,NULL,'P0ceVbYjQtsZkThk9OSgbdPNZaHmI',1,'2022-12-27 05:22:32','2023-01-02 21:22:32'),(2,'#10000002',1,'1','default','completed',856.00,0.00,0.00,NULL,NULL,0.00,856.00,1,NULL,1,'2023-01-02 21:22:32','rps8ExziMrGSS6SwTiSXGv82O0CA3',2,'2022-12-21 05:22:32','2023-01-02 21:22:32'),(3,'#10000003',3,'1','default','completed',1679.00,0.00,0.00,NULL,NULL,0.00,1679.00,1,NULL,1,'2023-01-02 21:22:33','f7Zv0lNNGbNNSFIckMJ6kSH00FksU',3,'2022-12-18 21:22:32','2023-01-02 21:22:33'),(4,'#10000004',7,'1','default','pending',887.00,0.00,0.00,NULL,NULL,0.00,887.00,1,NULL,1,NULL,'h7FkRnHvQHgeJAQb1imQj4FCv7UBP',4,'2022-12-28 05:22:32','2023-01-02 21:22:32'),(5,'#10000005',10,'1','default','pending',1526.00,0.00,0.00,NULL,NULL,0.00,1526.00,1,NULL,1,NULL,'ZrBt9fXIVgXKVVKYBJkvpohg8DAmI',5,'2022-12-28 13:22:32','2023-01-02 21:22:32'),(6,'#10000006',3,'1','default','completed',859.00,0.00,0.00,NULL,NULL,0.00,859.00,1,NULL,1,'2023-01-02 21:22:32','fxiYLXPCXPWKVfjL4aMPT9G5Vd6t2',6,'2022-12-22 15:22:32','2023-01-02 21:22:32'),(7,'#10000007',5,'1','default','completed',568.00,0.00,0.00,NULL,NULL,0.00,568.00,1,NULL,1,'2023-01-02 21:22:33','t6acoA05BttlkR2aei3KjOHpMQNX3',7,'2022-12-23 09:22:32','2023-01-02 21:22:33'),(8,'#10000008',4,'1','default','pending',747.00,0.00,0.00,NULL,NULL,0.00,747.00,1,NULL,1,NULL,'FRQgUoCOIWA2foYdsOSGy5vw9hxBu',8,'2022-12-30 15:22:32','2023-01-02 21:22:32'),(9,'#10000009',4,'1','default','completed',473.00,0.00,0.00,NULL,NULL,0.00,473.00,1,NULL,1,'2023-01-02 21:22:33','pq6bKujS9XYsVzsRYMzJTTHDPSgmG',9,'2022-12-30 21:22:32','2023-01-02 21:22:33'),(10,'#10000010',4,'1','default','pending',488.00,0.00,0.00,NULL,NULL,0.00,488.00,1,NULL,1,NULL,'AtPPk3xtSFtbiiKk7LiM86aDQVbPx',10,'2022-12-26 13:22:32','2023-01-02 21:22:32'),(11,'#10000011',9,'1','default','pending',1211.00,0.00,0.00,NULL,NULL,0.00,1211.00,1,NULL,1,NULL,'BC3btdcegCc2RPY25hWHUfMXY4UQO',11,'2022-12-28 01:22:32','2023-01-02 21:22:32'),(12,'#10000012',4,'1','default','completed',1268.00,0.00,0.00,NULL,NULL,0.00,1268.00,1,NULL,1,'2023-01-02 21:22:33','hZYd3sgK94j0QSn3NdgAzd9Dy65bP',12,'2022-12-30 21:22:32','2023-01-02 21:22:33'),(13,'#10000013',5,'1','default','pending',1293.00,0.00,0.00,NULL,NULL,0.00,1293.00,1,NULL,1,NULL,'dt4c6fPk0jCSs4Chkq9mB7fzXaBA5',13,'2022-12-27 21:22:32','2023-01-02 21:22:32'),(14,'#10000014',9,'1','default','completed',1056.00,0.00,0.00,NULL,NULL,0.00,1056.00,1,NULL,1,'2023-01-02 21:22:33','Jm5OyehRoUraM5EFaPLywZSb3N4hX',14,'2022-12-29 05:22:32','2023-01-02 21:22:33'),(15,'#10000015',1,'1','default','pending',1418.00,0.00,0.00,NULL,NULL,0.00,1418.00,1,NULL,1,NULL,'t2VeTr5hWFxzXKizyXHDMo1IqpXuS',15,'2022-12-31 09:22:32','2023-01-02 21:22:32'),(16,'#10000016',6,'1','default','pending',2305.00,0.00,0.00,NULL,NULL,0.00,2305.00,1,NULL,1,NULL,'OemOi9SQL7HW9YovKMDpCpf5Jz3Ix',16,'2022-12-31 09:22:32','2023-01-02 21:22:32'),(17,'#10000017',1,'1','default','completed',617.00,0.00,0.00,NULL,NULL,0.00,617.00,1,NULL,1,'2023-01-02 21:22:33','FqoySJWG3M9NNqB19EzKCchlavp8d',17,'2023-01-02 05:22:32','2023-01-02 21:22:33'),(18,'#10000018',6,'1','default','pending',234.00,0.00,0.00,NULL,NULL,0.00,234.00,1,NULL,1,NULL,'A4pZVnzpqhNOAXw1OVMVgN4EV96b6',18,'2023-01-01 09:22:33','2023-01-02 21:22:33'),(19,'#10000019',9,'1','default','pending',462.00,0.00,0.00,NULL,NULL,0.00,462.00,1,NULL,1,NULL,'jhMaUQ0RBeLpQNWoe02paidW0T693',19,'2023-01-01 21:22:33','2023-01-02 21:22:33'),(20,'#10000020',8,'1','default','completed',472.00,0.00,0.00,NULL,NULL,0.00,472.00,1,NULL,1,'2023-01-02 21:22:33','DuMI35odOZlpU7rWNaSqLc5OBvMJL',20,'2023-01-02 15:22:33','2023-01-02 21:22:33');
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2023-01-02 21:22:23','2023-01-02 21:22:23',0),(2,'Size','size','text',1,1,1,'published',1,'2023-01-02 21:22:23','2023-01-02 21:22:23',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(6,2,'S','s',NULL,NULL,1,1,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(7,2,'M','m',NULL,NULL,0,2,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(8,2,'L','l',NULL,NULL,0,3,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2023-01-02 21:22:23','2023-01-02 21:22:23');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(3,'Home Audio & Theaters',2,NULL,'published',0,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(4,'TV & Videos',2,NULL,'published',1,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(5,'Camera, Photos & Videos',2,NULL,'published',2,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(6,'Cellphones & Accessories',2,NULL,'published',3,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(7,'Headphones',2,NULL,'published',4,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(8,'Videos games',2,NULL,'published',5,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(9,'Wireless Speakers',2,NULL,'published',6,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(10,'Office Electronic',2,NULL,'published',7,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(11,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(12,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(13,'Computer & Tablets',12,NULL,'published',0,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(14,'Laptop',12,NULL,'published',1,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(15,'Monitors',12,NULL,'published',2,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(16,'Computer Components',12,NULL,'published',3,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(17,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(18,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(19,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(20,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(21,'Drive & Storages',20,NULL,'published',0,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(22,'Gaming Laptop',20,NULL,'published',1,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(23,'Security & Protection',20,NULL,'published',2,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(24,'Accessories',20,NULL,'published',3,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(25,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(26,'Babies & Moms',0,NULL,'published',9,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(27,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(28,'Books & Office',0,NULL,'published',11,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(29,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23'),(30,'Home Improvements',0,NULL,'published',13,NULL,0,'2023-01-02 21:22:23','2023-01-02 21:22:23');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi nổi bật',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Âm thanh và hình ảnh',NULL),('vi',4,'TV & Videos',NULL),('vi',5,'Máy ảnh, Ảnh & Videos',NULL),('vi',6,'Điện thoại & Phụ kiện',NULL),('vi',7,'Tai nghe',NULL),('vi',8,'Trò chơi',NULL),('vi',9,'Tai nghe không dây',NULL),('vi',10,'Điện tử văn phòng',NULL),('vi',11,'Quần áo',NULL),('vi',12,'Máy tính',NULL),('vi',13,'Máy tính và máy tính bảng',NULL),('vi',14,'Máy vi tính',NULL),('vi',15,'Màn hình',NULL),('vi',16,'Thiết bị máy tính',NULL),('vi',17,'Đồ dùng nhà bếp',NULL),('vi',18,'Sức khỏe & làm đẹp',NULL),('vi',19,'Đồng hồ & trang sức',NULL),('vi',20,'Đồ chơi công nghệ',NULL),('vi',21,'Thiết bị lưu trữ',NULL),('vi',22,'Máy tính chơi game',NULL),('vi',23,'Bảo mật',NULL),('vi',24,'Phụ kiện',NULL),('vi',25,'Điện thoại',NULL),('vi',26,'Mẹ và bé',NULL),('vi',27,'Thể thao & ngoài trời',NULL),('vi',28,'Sách & Văn phòng',NULL),('vi',29,'Ôto & Xe máy',NULL),('vi',30,'Thiết bị gia đình',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,28,1),(2,28,2),(3,32,3),(4,28,4),(5,21,5),(6,35,6),(7,27,7),(8,25,8),(9,2,9),(10,18,10),(11,22,11),(12,32,12),(13,4,13),(14,28,14),(15,9,15),(16,27,16),(17,2,17),(18,21,18),(19,33,19),(20,17,20),(21,16,21),(22,1,22),(23,3,23),(24,7,24);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,3,2),(3,2,3),(4,2,4),(5,1,5),(6,3,6),(7,3,7),(8,2,8),(9,1,9),(10,1,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,1,15),(16,1,16),(17,2,17),(18,3,18),(19,3,19),(20,1,20),(21,1,21),(22,1,22),(23,3,23),(24,1,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-01-02 21:22:23','2023-01-02 21:22:23',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-01-02 21:22:23','2023-01-02 21:22:23',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-01-02 21:22:23','2023-01-02 21:22:23',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,24),(2,1,3),(3,1,23),(4,1,18),(5,2,18),(6,2,22),(7,2,21),(8,2,7),(9,3,6),(10,3,5),(11,3,12),(12,3,22),(13,4,16),(14,4,15),(15,4,5),(16,4,6),(17,5,16),(18,5,10),(19,5,17),(20,5,20),(21,6,11),(22,6,21),(23,6,19),(24,6,5),(25,7,18),(26,7,12),(27,7,1),(28,8,17),(29,8,14),(30,8,7),(31,8,4),(32,9,24),(33,9,10),(34,9,23),(35,9,2),(36,10,1),(37,10,18),(38,10,11),(39,11,10),(40,11,4),(41,11,13),(42,11,2),(43,12,8),(44,12,23),(45,12,16),(46,12,7),(47,13,2),(48,13,21),(49,13,3),(50,13,4),(51,14,16),(52,14,19),(53,14,18),(54,14,21),(55,15,2),(56,15,4),(57,15,18),(58,15,7),(59,16,20),(60,16,19),(61,16,21),(62,16,10),(63,17,10),(64,17,5),(65,17,9),(66,17,14),(67,18,20),(68,18,5),(69,18,4),(70,18,14),(71,19,5),(72,19,7),(73,19,21),(74,19,11),(75,20,23),(76,20,18),(77,20,1),(78,20,13),(79,21,23),(80,21,16),(81,21,20),(82,21,15),(83,22,3),(84,22,16),(85,22,17),(86,22,5),(87,23,3),(88,23,10),(89,23,20),(90,23,12),(91,24,14),(92,24,12),(93,24,7),(94,24,16);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(2,25,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(3,25,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(4,25,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(5,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(6,26,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(7,26,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(8,26,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(9,27,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(10,27,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(11,27,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(12,27,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:29\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2023-01-02 21:22:29','2023-01-02 21:22:29'),(13,37,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(14,37,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(15,37,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(16,37,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(17,38,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(18,38,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(19,38,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(20,38,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(21,39,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(22,39,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(23,39,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(24,39,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(25,45,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(26,45,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(27,46,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(28,46,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(29,54,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(30,54,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(31,55,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(32,55,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(33,56,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(34,56,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(35,67,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(36,68,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(37,69,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(38,82,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(39,82,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(40,83,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(41,83,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(42,84,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30'),(43,84,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-01-03 04:22:30\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-01-02 21:22:30','2023-01-02 21:22:30');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (2,14),(3,7),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(2,'New','#00c9a7','published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(3,'Sale','#fe9931','published','2023-01-02 21:22:23','2023-01-02 21:22:23');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,4),(1,6),(2,2),(2,3),(3,1),(3,3),(3,5),(4,1),(4,5),(4,6),(5,2),(5,5),(5,6),(6,3),(7,4),(7,5),(7,6),(8,1),(8,2),(8,5),(9,1),(9,4),(9,6),(10,3),(10,4),(11,3),(11,5),(11,6),(12,2),(12,4),(12,6),(13,2),(13,6),(14,3),(14,5),(15,1),(15,2),(15,4),(16,2),(16,4),(16,6),(17,3),(17,5),(17,6),(18,3),(18,4),(19,1),(19,2),(20,2),(20,3),(20,6),(21,3),(21,5),(22,1),(22,5),(22,6),(23,1),(23,2),(23,5),(24,1),(24,3),(24,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(2,'Bags',NULL,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(3,'Shoes',NULL,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(4,'Clothes',NULL,'published','2023-01-02 21:22:23','2023-01-02 21:22:23'),(5,'Hand bag',NULL,'published','2023-01-02 21:22:23','2023-01-02 21:22:23');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(13,1,7),(43,1,22),(49,1,25),(67,1,34),(71,1,36),(77,1,39),(91,1,46),(97,1,49),(107,1,54),(119,1,60),(121,1,61),(135,1,68),(5,2,3),(7,2,4),(45,2,23),(69,2,35),(81,2,41),(87,2,44),(105,2,53),(109,2,55),(117,2,59),(125,2,63),(9,3,5),(11,3,6),(33,3,17),(37,3,19),(39,3,20),(47,3,24),(65,3,33),(73,3,37),(79,3,40),(99,3,50),(103,3,52),(111,3,56),(115,3,58),(123,3,62),(127,3,64),(131,3,66),(133,3,67),(15,4,8),(19,4,10),(23,4,12),(25,4,13),(27,4,14),(53,4,27),(55,4,28),(59,4,30),(61,4,31),(63,4,32),(75,4,38),(83,4,42),(93,4,47),(95,4,48),(129,4,65),(3,5,2),(17,5,9),(21,5,11),(29,5,15),(31,5,16),(35,5,18),(41,5,21),(51,5,26),(57,5,29),(85,5,43),(89,5,45),(101,5,51),(113,5,57),(10,6,5),(14,6,7),(16,6,8),(18,6,9),(24,6,12),(42,6,21),(52,6,26),(62,6,31),(70,6,35),(74,6,37),(78,6,39),(84,6,42),(102,6,51),(106,6,53),(110,6,55),(120,6,60),(128,6,64),(4,7,2),(12,7,6),(20,7,10),(22,7,11),(32,7,16),(38,7,19),(44,7,22),(46,7,23),(50,7,25),(58,7,29),(64,7,32),(92,7,46),(100,7,50),(112,7,56),(132,7,66),(134,7,67),(6,8,3),(28,8,14),(30,8,15),(82,8,41),(88,8,44),(94,8,47),(104,8,52),(114,8,57),(124,8,62),(126,8,63),(2,9,1),(26,9,13),(48,9,24),(56,9,28),(60,9,30),(66,9,33),(68,9,34),(72,9,36),(86,9,43),(90,9,45),(136,9,68),(8,10,4),(34,10,17),(36,10,18),(40,10,20),(54,10,27),(76,10,38),(80,10,40),(96,10,48),(98,10,49),(108,10,54),(116,10,58),(118,10,59),(122,10,61),(130,10,65);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,1,0),(4,28,2,1),(5,29,2,0),(6,30,2,0),(7,31,3,1),(8,32,3,0),(9,33,3,0),(10,34,3,0),(11,35,4,1),(12,36,4,0),(13,37,5,1),(14,38,5,0),(15,39,5,0),(16,40,6,1),(17,41,6,0),(18,42,7,1),(19,43,7,0),(20,44,8,1),(21,45,9,1),(22,46,9,0),(23,47,10,1),(24,48,10,0),(25,49,10,0),(26,50,10,0),(27,51,11,1),(28,52,12,1),(29,53,12,0),(30,54,13,1),(31,55,13,0),(32,56,13,0),(33,57,14,1),(34,58,14,0),(35,59,14,0),(36,60,14,0),(37,61,15,1),(38,62,15,0),(39,63,15,0),(40,64,16,1),(41,65,16,0),(42,66,16,0),(43,67,17,1),(44,68,17,0),(45,69,17,0),(46,70,18,1),(47,71,18,0),(48,72,18,0),(49,73,18,0),(50,74,19,1),(51,75,19,0),(52,76,19,0),(53,77,19,0),(54,78,19,0),(55,79,20,1),(56,80,20,0),(57,81,20,0),(58,82,21,1),(59,83,21,0),(60,84,21,0),(61,85,22,1),(62,86,22,0),(63,87,23,1),(64,88,23,0),(65,89,23,0),(66,90,23,0),(67,91,24,1),(68,92,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-01-03',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0),(47,1,24,0),(48,2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]','HS-162-A0',0,20,0,1,1,6,0,0,439,NULL,NULL,NULL,11.00,12.00,12.00,885.00,NULL,71503,'2023-01-02 21:22:28','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','HS-140-A0',0,19,0,1,1,7,0,0,298,NULL,NULL,NULL,18.00,19.00,12.00,590.00,NULL,102530,'2023-01-02 21:22:28','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]','HS-191-A0',0,17,0,1,1,1,0,0,358,NULL,NULL,NULL,12.00,18.00,20.00,629.00,NULL,115124,'2023-01-02 21:22:28','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(4,'Chikie - Bluetooth Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','HS-189-A0',0,20,0,1,1,7,0,0,76,55.48,NULL,NULL,18.00,10.00,19.00,798.00,NULL,47313,'2023-01-02 21:22:28','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(5,'Camera Hikvision HK-35VS8 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','HS-118-A0',0,15,0,1,1,2,0,0,40,NULL,NULL,NULL,12.00,11.00,19.00,760.00,NULL,34896,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-154-A0',0,20,0,1,1,4,0,0,53,NULL,NULL,NULL,14.00,16.00,15.00,897.00,NULL,22231,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-115-A0',0,13,0,1,1,3,0,0,116,NULL,NULL,NULL,12.00,11.00,12.00,631.00,NULL,65777,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(8,'Apple iPhone 13 Plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-174-A0',0,14,0,1,1,7,0,0,113,85.88,NULL,NULL,17.00,12.00,18.00,558.00,NULL,190131,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(9,'Macbook Pro 2015 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-198-A0',0,15,0,1,1,6,0,0,114,NULL,NULL,NULL,14.00,19.00,11.00,777.00,NULL,128064,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-180-A0',0,18,0,1,1,1,0,0,234,NULL,NULL,NULL,12.00,13.00,13.00,814.00,NULL,101320,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-101-A0',0,16,0,1,1,1,0,0,114,NULL,NULL,NULL,20.00,17.00,11.00,641.00,NULL,185541,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(12,'Macbook Pro 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-171-A0',0,10,0,1,1,2,0,0,116,92.8,NULL,NULL,17.00,14.00,14.00,868.00,NULL,164055,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(13,'Apple Keyboard (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-100-A0',0,15,0,1,1,2,0,0,123,NULL,NULL,NULL,18.00,19.00,16.00,695.00,NULL,155678,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-193-A0',0,13,0,1,1,6,0,0,115,NULL,NULL,NULL,12.00,16.00,13.00,714.00,NULL,17531,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-138-A0',0,14,0,1,1,6,0,0,130,NULL,NULL,NULL,20.00,15.00,18.00,663.00,NULL,47533,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(16,'Apple Airpods Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\"]','HS-136-A0',0,12,0,1,1,7,0,0,112,97.44,NULL,NULL,20.00,12.00,16.00,873.00,NULL,115300,'2023-01-02 21:22:28','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(17,'Cool Smart Watches (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\"]','HS-154-A0',0,12,0,1,1,2,0,0,110,NULL,NULL,NULL,12.00,16.00,17.00,892.00,NULL,36983,'2023-01-02 21:22:29','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]','HS-175-A0',0,14,0,1,1,5,0,0,119,NULL,NULL,NULL,10.00,18.00,10.00,716.00,NULL,197037,'2023-01-02 21:22:29','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-118-A0',0,20,0,1,1,1,0,0,116,NULL,NULL,NULL,18.00,17.00,14.00,504.00,NULL,172172,'2023-01-02 21:22:29','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(20,'Macbook Pro 2015 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-151-A0',0,20,0,1,1,5,0,0,130,106.6,NULL,NULL,13.00,17.00,15.00,541.00,NULL,37455,'2023-01-02 21:22:29','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(21,'Historic Alarm Clock (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-169-A0',0,11,0,1,1,1,0,0,112,NULL,NULL,NULL,10.00,14.00,14.00,567.00,NULL,130693,'2023-01-02 21:22:29','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-200-A0',0,12,0,1,1,7,0,0,113,NULL,NULL,NULL,20.00,12.00,13.00,513.00,NULL,58363,'2023-01-02 21:22:29','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-166-A0',0,13,0,1,1,1,0,0,125,NULL,NULL,NULL,12.00,11.00,11.00,782.00,NULL,50770,'2023-01-02 21:22:29','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(24,'Gaming Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495655_3560b8094c_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp;&nbsp; 1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425560193_a352c8b12a_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> &nbsp; 30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327619_16bbe35fbd_b.jpg\" alt=\"icon\" style=\"height: 15px;\" /> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-192-A0',0,18,0,1,1,1,0,0,124,94.24,NULL,NULL,18.00,16.00,11.00,538.00,NULL,188212,'2023-01-02 21:22:29','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(25,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-162-A0',0,20,0,1,0,6,1,0,439,NULL,NULL,NULL,11.00,12.00,12.00,885.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(26,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-162-A0-A1',0,20,0,1,0,6,1,0,439,NULL,NULL,NULL,11.00,12.00,12.00,885.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(27,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1-2.jpg\"]','HS-162-A0-A2',0,20,0,1,0,6,1,0,439,NULL,NULL,NULL,11.00,12.00,12.00,885.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(28,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-140-A0',0,19,0,1,0,7,1,0,298,NULL,NULL,NULL,18.00,19.00,12.00,590.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(29,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-140-A0-A1',0,19,0,1,0,7,1,0,298,NULL,NULL,NULL,18.00,19.00,12.00,590.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(30,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','HS-140-A0-A2',0,19,0,1,0,7,1,0,298,NULL,NULL,NULL,18.00,19.00,12.00,590.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(31,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-191-A0',0,17,0,1,0,1,1,0,358,NULL,NULL,NULL,12.00,18.00,20.00,629.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(32,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-191-A0-A1',0,17,0,1,0,1,1,0,358,NULL,NULL,NULL,12.00,18.00,20.00,629.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(33,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-2.jpg\"]','HS-191-A0-A2',0,17,0,1,0,1,1,0,358,NULL,NULL,NULL,12.00,18.00,20.00,629.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(34,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-3.jpg\"]','HS-191-A0-A3',0,17,0,1,0,1,1,0,358,NULL,NULL,NULL,12.00,18.00,20.00,629.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:29','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(35,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-189-A0',0,20,0,1,0,7,1,0,76,55.48,NULL,NULL,18.00,10.00,19.00,798.00,NULL,0,'2023-01-02 21:22:29','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(36,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-189-A0-A1',0,20,0,1,0,7,1,0,76,58.52,NULL,NULL,18.00,10.00,19.00,798.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(37,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-118-A0',0,15,0,1,0,2,1,0,40,NULL,NULL,NULL,12.00,11.00,19.00,760.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(38,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-118-A0-A1',0,15,0,1,0,2,1,0,40,NULL,NULL,NULL,12.00,11.00,19.00,760.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(39,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','HS-118-A0-A2',0,15,0,1,0,2,1,0,40,NULL,NULL,NULL,12.00,11.00,19.00,760.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(40,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-154-A0',0,20,0,1,0,4,1,0,53,NULL,NULL,NULL,14.00,16.00,15.00,897.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(41,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-154-A0-A1',0,20,0,1,0,4,1,0,53,NULL,NULL,NULL,14.00,16.00,15.00,897.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(42,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-115-A0',0,13,0,1,0,3,1,0,116,NULL,NULL,NULL,12.00,11.00,12.00,631.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(43,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-115-A0-A1',0,13,0,1,0,3,1,0,116,NULL,NULL,NULL,12.00,11.00,12.00,631.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(44,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-174-A0',0,14,0,1,0,7,1,0,113,85.88,NULL,NULL,17.00,12.00,18.00,558.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(45,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-198-A0',0,15,0,1,0,6,1,0,114,NULL,NULL,NULL,14.00,19.00,11.00,777.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(46,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-198-A0-A1',0,15,0,1,0,6,1,0,114,NULL,NULL,NULL,14.00,19.00,11.00,777.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(47,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-180-A0',0,18,0,1,0,1,1,0,234,NULL,NULL,NULL,12.00,13.00,13.00,814.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(48,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-180-A0-A1',0,18,0,1,0,1,1,0,234,NULL,NULL,NULL,12.00,13.00,13.00,814.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(49,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-180-A0-A2',0,18,0,1,0,1,1,0,234,NULL,NULL,NULL,12.00,13.00,13.00,814.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(50,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-180-A0-A3',0,18,0,1,0,1,1,0,234,NULL,NULL,NULL,12.00,13.00,13.00,814.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(51,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-101-A0',0,16,0,1,0,1,1,0,114,NULL,NULL,NULL,20.00,17.00,11.00,641.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(52,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-171-A0',0,10,0,1,0,2,1,0,116,92.8,NULL,NULL,17.00,14.00,14.00,868.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(53,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-171-A0-A1',0,10,0,1,0,2,1,0,116,88.16,NULL,NULL,17.00,14.00,14.00,868.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(54,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-100-A0',0,15,0,1,0,2,1,0,123,NULL,NULL,NULL,18.00,19.00,16.00,695.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(55,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-100-A0-A1',0,15,0,1,0,2,1,0,123,NULL,NULL,NULL,18.00,19.00,16.00,695.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(56,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-100-A0-A2',0,15,0,1,0,2,1,0,123,NULL,NULL,NULL,18.00,19.00,16.00,695.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(57,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-193-A0',0,13,0,1,0,6,1,0,115,NULL,NULL,NULL,12.00,16.00,13.00,714.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(58,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-193-A0-A1',0,13,0,1,0,6,1,0,115,NULL,NULL,NULL,12.00,16.00,13.00,714.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(59,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-193-A0-A2',0,13,0,1,0,6,1,0,115,NULL,NULL,NULL,12.00,16.00,13.00,714.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(60,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-193-A0-A3',0,13,0,1,0,6,1,0,115,NULL,NULL,NULL,12.00,16.00,13.00,714.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(61,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-138-A0',0,14,0,1,0,6,1,0,130,NULL,NULL,NULL,20.00,15.00,18.00,663.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(62,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-138-A0-A1',0,14,0,1,0,6,1,0,130,NULL,NULL,NULL,20.00,15.00,18.00,663.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(63,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-138-A0-A2',0,14,0,1,0,6,1,0,130,NULL,NULL,NULL,20.00,15.00,18.00,663.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(64,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-136-A0',0,12,0,1,0,7,1,0,112,97.44,NULL,NULL,20.00,12.00,16.00,873.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(65,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-136-A0-A1',0,12,0,1,0,7,1,0,112,92.96,NULL,NULL,20.00,12.00,16.00,873.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(66,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-136-A0-A2',0,12,0,1,0,7,1,0,112,92.96,NULL,NULL,20.00,12.00,16.00,873.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(67,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-154-A0',0,12,0,1,0,2,1,0,110,NULL,NULL,NULL,12.00,16.00,17.00,892.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(68,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-154-A0-A1',0,12,0,1,0,2,1,0,110,NULL,NULL,NULL,12.00,16.00,17.00,892.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(69,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-154-A0-A2',0,12,0,1,0,2,1,0,110,NULL,NULL,NULL,12.00,16.00,17.00,892.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(70,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-175-A0',0,14,0,1,0,5,1,0,119,NULL,NULL,NULL,10.00,18.00,10.00,716.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(71,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-175-A0-A1',0,14,0,1,0,5,1,0,119,NULL,NULL,NULL,10.00,18.00,10.00,716.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(72,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','HS-175-A0-A2',0,14,0,1,0,5,1,0,119,NULL,NULL,NULL,10.00,18.00,10.00,716.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(73,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-175-A0-A3',0,14,0,1,0,5,1,0,119,NULL,NULL,NULL,10.00,18.00,10.00,716.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(74,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-118-A0',0,20,0,1,0,1,1,0,116,NULL,NULL,NULL,18.00,17.00,14.00,504.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(75,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-118-A0-A1',0,20,0,1,0,1,1,0,116,NULL,NULL,NULL,18.00,17.00,14.00,504.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(76,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-118-A0-A2',0,20,0,1,0,1,1,0,116,NULL,NULL,NULL,18.00,17.00,14.00,504.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(77,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-118-A0-A3',0,20,0,1,0,1,1,0,116,NULL,NULL,NULL,18.00,17.00,14.00,504.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(78,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-118-A0-A4',0,20,0,1,0,1,1,0,116,NULL,NULL,NULL,18.00,17.00,14.00,504.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(79,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-151-A0',0,20,0,1,0,5,1,0,130,106.6,NULL,NULL,13.00,17.00,15.00,541.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(80,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-151-A0-A1',0,20,0,1,0,5,1,0,130,97.5,NULL,NULL,13.00,17.00,15.00,541.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(81,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-151-A0-A2',0,20,0,1,0,5,1,0,130,107.9,NULL,NULL,13.00,17.00,15.00,541.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(82,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-169-A0',0,11,0,1,0,1,1,0,112,NULL,NULL,NULL,10.00,14.00,14.00,567.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(83,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-169-A0-A1',0,11,0,1,0,1,1,0,112,NULL,NULL,NULL,10.00,14.00,14.00,567.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(84,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-169-A0-A2',0,11,0,1,0,1,1,0,112,NULL,NULL,NULL,10.00,14.00,14.00,567.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital'),(85,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-200-A0',0,12,0,1,0,7,1,0,113,NULL,NULL,NULL,20.00,12.00,13.00,513.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(86,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-200-A0-A1',0,12,0,1,0,7,1,0,113,NULL,NULL,NULL,20.00,12.00,13.00,513.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(87,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-166-A0',0,13,0,1,0,1,1,0,125,NULL,NULL,NULL,12.00,11.00,11.00,782.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(88,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-166-A0-A1',0,13,0,1,0,1,1,0,125,NULL,NULL,NULL,12.00,11.00,11.00,782.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(89,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-166-A0-A2',0,13,0,1,0,1,1,0,125,NULL,NULL,NULL,12.00,11.00,11.00,782.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(90,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-166-A0-A3',0,13,0,1,0,1,1,0,125,NULL,NULL,NULL,12.00,11.00,11.00,782.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(91,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-192-A0',0,18,0,1,0,1,1,0,124,94.24,NULL,NULL,18.00,16.00,11.00,538.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical'),(92,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-192-A0-A1',0,18,0,1,0,1,1,0,124,93,NULL,NULL,18.00,16.00,11.00,538.00,NULL,0,'2023-01-02 21:22:30','2023-01-02 21:22:30','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical');
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Loa thông minh',NULL,NULL),('vi',2,'Tai nghe Ultra Bass',NULL,NULL),('vi',3,'Tai nghe Bluetooth',NULL,NULL),('vi',4,'Chikie - Loa Bluetooth',NULL,NULL),('vi',5,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',6,'Camera Samsung SS-24',NULL,NULL),('vi',7,'Dây đeo đồng hồ da',NULL,NULL),('vi',8,'Điện thoại Apple iPhone 13 Plus',NULL,NULL),('vi',9,'Máy tính Macbook Pro 2015',NULL,NULL),('vi',10,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',11,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',12,'Máy tính Macbook Pro 13 inch',NULL,NULL),('vi',13,'Bàn phím Apple',NULL,NULL),('vi',14,'Cục sạc MacSafe 80W',NULL,NULL),('vi',15,'Tay cầm chơi game',NULL,NULL),('vi',16,'Apple Airpods Serial 3',NULL,NULL),('vi',17,'Cool Smart Watches',NULL,NULL),('vi',18,'Black Smart Watches',NULL,NULL),('vi',19,'Leather Watch Band Serial 3',NULL,NULL),('vi',20,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',21,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',22,'Kính đen cool ngầu',NULL,NULL),('vi',23,'Chuột máy tính Phillips',NULL,NULL),('vi',24,'Bàn phím chơi game',NULL,NULL),('vi',25,'Loa thông minh',NULL,NULL),('vi',26,'Loa thông minh',NULL,NULL),('vi',27,'Loa thông minh',NULL,NULL),('vi',28,'Tai nghe Ultra Bass',NULL,NULL),('vi',29,'Tai nghe Ultra Bass',NULL,NULL),('vi',30,'Tai nghe Ultra Bass',NULL,NULL),('vi',31,'Tai nghe Bluetooth',NULL,NULL),('vi',32,'Tai nghe Bluetooth',NULL,NULL),('vi',33,'Tai nghe Bluetooth',NULL,NULL),('vi',34,'Tai nghe Bluetooth',NULL,NULL),('vi',35,'Chikie - Loa Bluetooth',NULL,NULL),('vi',36,'Chikie - Loa Bluetooth',NULL,NULL),('vi',37,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',38,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',39,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',40,'Camera Samsung SS-24',NULL,NULL),('vi',41,'Camera Samsung SS-24',NULL,NULL),('vi',42,'Dây đeo đồng hồ da',NULL,NULL),('vi',43,'Dây đeo đồng hồ da',NULL,NULL),('vi',44,'Điện thoại Apple iPhone 13 Plus',NULL,NULL),('vi',45,'Máy tính Macbook Pro 2015',NULL,NULL),('vi',46,'Máy tính Macbook Pro 2015',NULL,NULL),('vi',47,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',48,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',49,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',50,'Máy tính Macbook Air 12 inch',NULL,NULL),('vi',51,'Đồng hồ Apple Serial 7',NULL,NULL),('vi',52,'Máy tính Macbook Pro 13 inch',NULL,NULL),('vi',53,'Máy tính Macbook Pro 13 inch',NULL,NULL),('vi',54,'Bàn phím Apple',NULL,NULL),('vi',55,'Bàn phím Apple',NULL,NULL),('vi',56,'Bàn phím Apple',NULL,NULL),('vi',57,'Cục sạc MacSafe 80W',NULL,NULL),('vi',58,'Cục sạc MacSafe 80W',NULL,NULL),('vi',59,'Cục sạc MacSafe 80W',NULL,NULL),('vi',60,'Cục sạc MacSafe 80W',NULL,NULL),('vi',61,'Tay cầm chơi game',NULL,NULL),('vi',62,'Tay cầm chơi game',NULL,NULL),('vi',63,'Tay cầm chơi game',NULL,NULL),('vi',64,'Apple Airpods Serial 3',NULL,NULL),('vi',65,'Apple Airpods Serial 3',NULL,NULL),('vi',66,'Apple Airpods Serial 3',NULL,NULL),('vi',67,'Cool Smart Watches',NULL,NULL),('vi',68,'Cool Smart Watches',NULL,NULL),('vi',69,'Cool Smart Watches',NULL,NULL),('vi',70,'Black Smart Watches',NULL,NULL),('vi',71,'Black Smart Watches',NULL,NULL),('vi',72,'Black Smart Watches',NULL,NULL),('vi',73,'Black Smart Watches',NULL,NULL),('vi',74,'Leather Watch Band Serial 3',NULL,NULL),('vi',75,'Leather Watch Band Serial 3',NULL,NULL),('vi',76,'Leather Watch Band Serial 3',NULL,NULL),('vi',77,'Leather Watch Band Serial 3',NULL,NULL),('vi',78,'Leather Watch Band Serial 3',NULL,NULL),('vi',79,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',80,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',81,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',82,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',83,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',84,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',85,'Kính đen cool ngầu',NULL,NULL),('vi',86,'Kính đen cool ngầu',NULL,NULL),('vi',87,'Chuột máy tính Phillips',NULL,NULL),('vi',88,'Chuột máy tính Phillips',NULL,NULL),('vi',89,'Chuột máy tính Phillips',NULL,NULL),('vi',90,'Chuột máy tính Phillips',NULL,NULL),('vi',91,'Bàn phím chơi game',NULL,NULL),('vi',92,'Bàn phím chơi game',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,2,9,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(2,6,22,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(3,6,12,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(4,2,11,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\"]'),(5,8,23,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(6,8,2,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/8.jpg\"}'),(7,6,14,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/24.jpg\"}'),(8,5,17,4.00,'Good app, good backup service and support. Good documentation.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/17.jpg\"}'),(9,7,18,2.00,'Clean & perfect source code','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(10,10,9,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(11,9,16,3.00,'Best ecommerce CMS online store!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/19.jpg\"}'),(12,8,20,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\"]'),(13,9,22,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(14,9,24,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/14.jpg\"]'),(15,9,2,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(16,1,6,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(17,2,11,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/15.jpg\"}'),(18,1,11,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/22.jpg\"]'),(19,3,9,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(20,9,5,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(21,3,7,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\"]'),(22,9,20,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/14.jpg\"]'),(23,3,22,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\"]'),(24,1,14,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(25,1,5,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\"]'),(26,2,24,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\"]'),(27,10,6,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(28,2,24,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(29,3,14,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(30,1,17,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(31,10,16,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(32,3,14,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(33,4,19,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(34,5,9,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\"]'),(35,3,19,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\"]'),(36,8,5,3.00,'Best ecommerce CMS online store!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\"]'),(37,10,20,5.00,'Best ecommerce CMS online store!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(38,9,10,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(39,10,2,4.00,'Clean & perfect source code','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(40,5,12,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/22.jpg\"}'),(41,3,14,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(42,6,3,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(43,5,17,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(44,10,7,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(45,5,7,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(46,1,23,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(47,3,2,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\"]'),(48,6,7,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(49,3,11,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(50,4,16,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(51,4,6,5.00,'Best ecommerce CMS online store!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/22.jpg\"}'),(52,4,5,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/20.jpg\"}'),(53,2,13,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\"]'),(54,1,24,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/14.jpg\"}'),(55,4,11,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/16.jpg\"}'),(56,3,19,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(57,1,3,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\"]'),(58,3,14,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(59,3,10,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(60,6,18,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/12.jpg\"}'),(61,8,8,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/12.jpg\"}'),(62,6,19,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/10.jpg\"]'),(63,2,7,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(64,6,24,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\"]'),(65,4,17,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(66,5,18,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(67,8,10,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/23.jpg\"]'),(68,4,14,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(69,5,1,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(70,4,6,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(71,10,21,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\"]'),(72,2,21,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(73,3,9,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(74,4,12,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\"]'),(75,4,22,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/9.jpg\"}'),(76,8,17,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(77,5,22,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(78,2,10,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/24.jpg\"}'),(79,2,13,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(80,9,4,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(81,3,14,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(82,5,5,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(83,8,11,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\"]'),(84,1,13,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(85,3,10,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(86,1,21,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(87,5,17,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(88,8,13,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),(89,3,18,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\"]'),(90,5,19,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/20.jpg\"}'),(91,6,21,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\"]'),(92,6,23,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(93,9,12,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/23.jpg\"}'),(94,8,18,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/24.jpg\"]'),(95,6,2,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(96,2,15,1.00,'Best ecommerce CMS online store!','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/2.jpg\"]'),(97,9,10,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(98,10,11,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(99,5,2,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-01-02 21:22:32','2023-01-02 21:22:32','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/17.jpg\"}'),(100,3,12,3.00,'Clean & perfect source code','published','2023-01-02 21:22:32','2023-01-02 21:22:32','[\"products\\/3.jpg\",\"products\\/6.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-12-27 05:22:32','2022-12-27 05:22:32'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-01-01 05:22:32','2023-01-02 21:22:32'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-12-21 05:22:32','2022-12-21 05:22:32'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-01-01 07:22:32','2023-01-02 21:22:32'),(5,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,2,2,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(6,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(7,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-12-18 21:22:32','2022-12-18 21:22:32'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-01-01 09:22:32','2023-01-02 21:22:32'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(10,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-12-28 05:22:32','2022-12-28 05:22:32'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-01-01 11:22:32','2023-01-02 21:22:32'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-12-28 13:22:32','2022-12-28 13:22:32'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-01-01 13:22:32','2023-01-02 21:22:32'),(14,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-12-22 15:22:32','2022-12-22 15:22:32'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-01-01 15:22:32','2023-01-02 21:22:32'),(16,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,6,6,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(18,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-12-23 09:22:32','2022-12-23 09:22:32'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-01-01 17:22:32','2023-01-02 21:22:32'),(20,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,7,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(21,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-12-30 15:22:32','2022-12-30 15:22:32'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-01-01 19:22:32','2023-01-02 21:22:32'),(23,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-12-30 21:22:32','2022-12-30 21:22:32'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-01-01 21:22:32','2023-01-02 21:22:32'),(25,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(26,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-12-26 13:22:32','2022-12-26 13:22:32'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-01-01 23:22:32','2023-01-02 21:22:32'),(28,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-12-28 01:22:32','2022-12-28 01:22:32'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-01-02 01:22:32','2023-01-02 21:22:32'),(30,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-12-30 21:22:32','2022-12-30 21:22:32'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-01-02 03:22:32','2023-01-02 21:22:32'),(32,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,12,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(33,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-12-27 21:22:32','2022-12-27 21:22:32'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-01-02 05:22:32','2023-01-02 21:22:32'),(35,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-12-29 05:22:32','2022-12-29 05:22:32'),(36,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-01-02 07:22:32','2023-01-02 21:22:32'),(37,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2023-01-02 21:22:32','2023-01-02 21:22:32'),(38,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-12-31 09:22:32','2022-12-31 09:22:32'),(39,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-01-02 09:22:32','2023-01-02 21:22:32'),(40,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-12-31 09:22:32','2022-12-31 09:22:32'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-01-02 11:22:32','2023-01-02 21:22:32'),(42,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2023-01-02 05:22:32','2023-01-02 05:22:32'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-01-02 13:22:32','2023-01-02 21:22:32'),(44,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,17,'2023-01-02 21:22:33','2023-01-02 21:22:33'),(45,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2023-01-01 09:22:33','2023-01-01 09:22:33'),(46,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-01-02 15:22:33','2023-01-02 21:22:33'),(47,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2023-01-01 21:22:33','2023-01-01 21:22:33'),(48,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-01-02 17:22:33','2023-01-02 21:22:33'),(49,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2023-01-02 15:22:33','2023-01-02 15:22:33'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-01-02 19:22:33','2023-01-02 21:22:33'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,20,'2023-01-02 21:22:33','2023-01-02 21:22:33');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,4030.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0073661610','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 04:22:32',NULL,NULL,NULL),(2,2,NULL,4674.00,NULL,NULL,'','delivered',856.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0016049491','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-12 04:22:32','2023-01-03 04:22:32',NULL,NULL),(3,3,NULL,5633.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0037130172','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-04 04:22:32','2023-01-03 04:22:32',NULL,NULL),(4,4,NULL,4071.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0058693264','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-07 04:22:32',NULL,NULL,NULL),(5,5,NULL,4693.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD007114680','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-11 04:22:32',NULL,NULL,NULL),(6,6,NULL,4839.00,NULL,NULL,'','delivered',859.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0018454871','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-06 04:22:32','2023-01-03 04:22:32',NULL,NULL),(7,7,NULL,3881.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0050911439','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-10 04:22:32','2023-01-03 04:22:32',NULL,NULL),(8,8,NULL,3771.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0029320304','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-11 04:22:32',NULL,NULL,NULL),(9,9,NULL,2652.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0093729299','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-12 04:22:32','2023-01-03 04:22:32',NULL,NULL),(10,10,NULL,2118.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0023678105','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-11 04:22:32',NULL,NULL,NULL),(11,11,NULL,5737.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0098521961','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-13 04:22:32',NULL,NULL,NULL),(12,12,NULL,3393.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0080613992','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-09 04:22:32','2023-01-03 04:22:32',NULL,NULL),(13,13,NULL,4923.00,NULL,NULL,'','approved',1293.00,'pending','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0011177840','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-13 04:22:32',NULL,NULL,NULL),(14,14,NULL,4351.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0088104924','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-09 04:22:32','2023-01-03 04:22:32',NULL,NULL),(15,15,NULL,5149.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0062044098','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-10 04:22:32',NULL,NULL,NULL),(16,16,NULL,5916.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0099351264','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-12 04:22:32',NULL,NULL,NULL),(17,17,NULL,3161.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:32','2023-01-02 21:22:32','JJD0017941071','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-04 04:22:32','2023-01-03 04:22:32',NULL,NULL),(18,18,NULL,1430.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:33','2023-01-02 21:22:33','JJD0089477010','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-04 04:22:33',NULL,NULL,NULL),(19,19,NULL,2436.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:33','2023-01-02 21:22:33','JJD0022921030','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-10 04:22:33',NULL,NULL,NULL),(20,20,NULL,2246.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-01-02 21:22:33','2023-01-02 21:22:33','JJD006749947','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-01-05 04:22:33','2023-01-03 04:22:33',NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-01-02 21:22:32','2023-01-02 21:22:32');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Wowy','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2023-01-02 21:22:32','2023-01-02 21:22:32');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-01-02 21:22:31','2023-01-02 21:22:31'),(2,'None',0.000000,2,'published','2023-01-02 21:22:31','2023-01-02 21:22:31'),(3,'Import Tax',15.000000,3,'published','2023-01-02 21:22:31','2023-01-02 21:22:31');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(2,'Payment',1,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(3,'Order &amp; Returns',2,'published','2023-01-02 21:22:37','2023-01-02 21:22:37');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-01-02 21:22:37','2023-01-02 21:22:37');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','d599e92065c850acb099acba910fbfad',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','da98e70f36cba07bdcb02723357f8816',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','6259de8e388acc177d71a51470e7a5d4',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','7648dc50ea96de3687f8265644d8edb1',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'vi','d599e92065c850acb099acba910fbfad',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'vi','da98e70f36cba07bdcb02723357f8816',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'vi','6259de8e388acc177d71a51470e7a5d4',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','7648dc50ea96de3687f8265644d8edb1',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'en_US','07ef5a35783f29dc88fe3def0f63bc69',1,'Botble\\Menu\\Models\\MenuLocation'),(10,'en_US','b32574fb70e98828a3441019b5f93e1b',1,'Botble\\Menu\\Models\\Menu'),(11,'en_US','478bb92ce27b87120f16b01ce1928cba',2,'Botble\\Menu\\Models\\Menu'),(12,'en_US','f551962067d061ac2f17df5b7ff91cc0',3,'Botble\\Menu\\Models\\Menu'),(13,'vi','c216dab89ad6a70b9b52f5c88f3def2b',2,'Botble\\Menu\\Models\\MenuLocation'),(14,'vi','b32574fb70e98828a3441019b5f93e1b',4,'Botble\\Menu\\Models\\Menu'),(15,'vi','478bb92ce27b87120f16b01ce1928cba',5,'Botble\\Menu\\Models\\Menu'),(16,'vi','f551962067d061ac2f17df5b7ff91cc0',6,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/png',727,'brands/1.png','[]','2023-01-02 21:22:22','2023-01-02 21:22:22',NULL),(2,0,'2',1,'image/png',727,'brands/2.png','[]','2023-01-02 21:22:22','2023-01-02 21:22:22',NULL),(3,0,'3',1,'image/png',727,'brands/3.png','[]','2023-01-02 21:22:22','2023-01-02 21:22:22',NULL),(4,0,'4',1,'image/png',727,'brands/4.png','[]','2023-01-02 21:22:22','2023-01-02 21:22:22',NULL),(5,0,'5',1,'image/png',727,'brands/5.png','[]','2023-01-02 21:22:22','2023-01-02 21:22:22',NULL),(6,0,'6',1,'image/png',727,'brands/6.png','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(7,0,'7',1,'image/png',727,'brands/7.png','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(8,0,'1',2,'image/jpeg',1307,'product-categories/1.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(9,0,'2',2,'image/jpeg',1307,'product-categories/2.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(10,0,'3',2,'image/jpeg',1307,'product-categories/3.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(11,0,'4',2,'image/jpeg',1307,'product-categories/4.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(12,0,'5',2,'image/jpeg',1307,'product-categories/5.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(13,0,'6',2,'image/jpeg',1307,'product-categories/6.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(14,0,'7',2,'image/jpeg',1307,'product-categories/7.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(15,0,'8',2,'image/jpeg',1307,'product-categories/8.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(16,0,'1-1',3,'image/jpeg',2165,'products/1-1.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(17,0,'1-2',3,'image/jpeg',2165,'products/1-2.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(18,0,'1-3',3,'image/jpeg',2165,'products/1-3.jpg','[]','2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(19,0,'1',3,'image/jpeg',2165,'products/1.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(20,0,'10-1',3,'image/jpeg',2165,'products/10-1.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(21,0,'10',3,'image/jpeg',2165,'products/10.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(22,0,'11-1',3,'image/jpeg',2165,'products/11-1.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(23,0,'11',3,'image/jpeg',2165,'products/11.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(24,0,'12-1',3,'image/jpeg',2165,'products/12-1.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(25,0,'12',3,'image/jpeg',2165,'products/12.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(26,0,'13-1',3,'image/jpeg',2165,'products/13-1.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(27,0,'13',3,'image/jpeg',2165,'products/13.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(28,0,'14-1',3,'image/jpeg',2165,'products/14-1.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(29,0,'14',3,'image/jpeg',2165,'products/14.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(30,0,'15-1',3,'image/jpeg',2165,'products/15-1.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(31,0,'15',3,'image/jpeg',2165,'products/15.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(32,0,'16',3,'image/jpeg',2165,'products/16.jpg','[]','2023-01-02 21:22:24','2023-01-02 21:22:24',NULL),(33,0,'17',3,'image/jpeg',2165,'products/17.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(34,0,'18-1',3,'image/jpeg',2165,'products/18-1.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(35,0,'18-2',3,'image/jpeg',2165,'products/18-2.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(36,0,'18',3,'image/jpeg',2165,'products/18.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(37,0,'19-1',3,'image/jpeg',2165,'products/19-1.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(38,0,'19',3,'image/jpeg',2165,'products/19.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(39,0,'2-1',3,'image/jpeg',2165,'products/2-1.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(40,0,'2-2',3,'image/jpeg',2165,'products/2-2.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(41,0,'2-3',3,'image/jpeg',2165,'products/2-3.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(42,0,'2',3,'image/jpeg',2165,'products/2.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(43,0,'20-1',3,'image/jpeg',2165,'products/20-1.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(44,0,'20',3,'image/jpeg',2165,'products/20.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(45,0,'21-1',3,'image/jpeg',2165,'products/21-1.jpg','[]','2023-01-02 21:22:25','2023-01-02 21:22:25',NULL),(46,0,'21',3,'image/jpeg',2165,'products/21.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(47,0,'22-1',3,'image/jpeg',2165,'products/22-1.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(48,0,'22',3,'image/jpeg',2165,'products/22.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(49,0,'23-1',3,'image/jpeg',2165,'products/23-1.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(50,0,'23',3,'image/jpeg',2165,'products/23.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(51,0,'24-1',3,'image/jpeg',2165,'products/24-1.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(52,0,'24',3,'image/jpeg',2165,'products/24.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(53,0,'3-1',3,'image/jpeg',2165,'products/3-1.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(54,0,'3-2',3,'image/jpeg',2165,'products/3-2.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(55,0,'3-3',3,'image/jpeg',2165,'products/3-3.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(56,0,'3',3,'image/jpeg',2165,'products/3.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(57,0,'4-1',3,'image/jpeg',2165,'products/4-1.jpg','[]','2023-01-02 21:22:26','2023-01-02 21:22:26',NULL),(58,0,'4-2',3,'image/jpeg',2165,'products/4-2.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(59,0,'4-3',3,'image/jpeg',2165,'products/4-3.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(60,0,'4',3,'image/jpeg',2165,'products/4.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(61,0,'5-1',3,'image/jpeg',2165,'products/5-1.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(62,0,'5-2',3,'image/jpeg',2165,'products/5-2.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(63,0,'5-3',3,'image/jpeg',2165,'products/5-3.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(64,0,'5',3,'image/jpeg',2165,'products/5.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(65,0,'6-1',3,'image/jpeg',2165,'products/6-1.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(66,0,'6',3,'image/jpeg',2165,'products/6.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(67,0,'7-1',3,'image/jpeg',2165,'products/7-1.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(68,0,'7',3,'image/jpeg',2165,'products/7.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(69,0,'8-1',3,'image/jpeg',2165,'products/8-1.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(70,0,'8',3,'image/jpeg',2165,'products/8.jpg','[]','2023-01-02 21:22:27','2023-01-02 21:22:27',NULL),(71,0,'9-1',3,'image/jpeg',2165,'products/9-1.jpg','[]','2023-01-02 21:22:28','2023-01-02 21:22:28',NULL),(72,0,'9',3,'image/jpeg',2165,'products/9.jpg','[]','2023-01-02 21:22:28','2023-01-02 21:22:28',NULL),(73,0,'1',4,'image/jpeg',2165,'customers/1.jpg','[]','2023-01-02 21:22:31','2023-01-02 21:22:31',NULL),(74,0,'2',4,'image/jpeg',2165,'customers/2.jpg','[]','2023-01-02 21:22:31','2023-01-02 21:22:31',NULL),(75,0,'3',4,'image/jpeg',2165,'customers/3.jpg','[]','2023-01-02 21:22:31','2023-01-02 21:22:31',NULL),(76,0,'4',4,'image/jpeg',2165,'customers/4.jpg','[]','2023-01-02 21:22:31','2023-01-02 21:22:31',NULL),(77,0,'5',4,'image/jpeg',2165,'customers/5.jpg','[]','2023-01-02 21:22:31','2023-01-02 21:22:31',NULL),(78,0,'6',4,'image/jpeg',2165,'customers/6.jpg','[]','2023-01-02 21:22:31','2023-01-02 21:22:31',NULL),(79,0,'7',4,'image/jpeg',2165,'customers/7.jpg','[]','2023-01-02 21:22:31','2023-01-02 21:22:31',NULL),(80,0,'8',4,'image/jpeg',2165,'customers/8.jpg','[]','2023-01-02 21:22:31','2023-01-02 21:22:31',NULL),(81,0,'1',5,'image/jpeg',2147,'flash-sales/1.jpg','[]','2023-01-02 21:22:32','2023-01-02 21:22:32',NULL),(82,0,'2',5,'image/jpeg',2147,'flash-sales/2.jpg','[]','2023-01-02 21:22:32','2023-01-02 21:22:32',NULL),(83,0,'1-1',6,'image/png',2796,'sliders/1-1.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(84,0,'1-2',6,'image/png',2719,'sliders/1-2.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(85,0,'1-3',6,'image/png',2697,'sliders/1-3.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(86,0,'2-1',6,'image/png',2796,'sliders/2-1.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(87,0,'2-2',6,'image/png',2719,'sliders/2-2.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(88,0,'2-3',6,'image/png',2697,'sliders/2-3.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(89,0,'3-1',6,'image/png',3988,'sliders/3-1.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(90,0,'3-2',6,'image/png',3988,'sliders/3-2.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(91,0,'4-1',6,'image/png',2796,'sliders/4-1.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(92,0,'4-2',6,'image/png',2796,'sliders/4-2.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(93,0,'4-3',6,'image/png',2697,'sliders/4-3.png','[]','2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(94,0,'1',7,'image/jpeg',2165,'news/1.jpg','[]','2023-01-02 21:22:34','2023-01-02 21:22:34',NULL),(95,0,'10',7,'image/jpeg',2165,'news/10.jpg','[]','2023-01-02 21:22:34','2023-01-02 21:22:34',NULL),(96,0,'11',7,'image/jpeg',2165,'news/11.jpg','[]','2023-01-02 21:22:34','2023-01-02 21:22:34',NULL),(97,0,'2',7,'image/jpeg',2165,'news/2.jpg','[]','2023-01-02 21:22:34','2023-01-02 21:22:34',NULL),(98,0,'3',7,'image/jpeg',2165,'news/3.jpg','[]','2023-01-02 21:22:34','2023-01-02 21:22:34',NULL),(99,0,'4',7,'image/jpeg',2165,'news/4.jpg','[]','2023-01-02 21:22:34','2023-01-02 21:22:34',NULL),(100,0,'5',7,'image/jpeg',2165,'news/5.jpg','[]','2023-01-02 21:22:34','2023-01-02 21:22:34',NULL),(101,0,'6',7,'image/jpeg',2165,'news/6.jpg','[]','2023-01-02 21:22:35','2023-01-02 21:22:35',NULL),(102,0,'7',7,'image/jpeg',2165,'news/7.jpg','[]','2023-01-02 21:22:35','2023-01-02 21:22:35',NULL),(103,0,'8',7,'image/jpeg',2165,'news/8.jpg','[]','2023-01-02 21:22:35','2023-01-02 21:22:35',NULL),(104,0,'9',7,'image/jpeg',2165,'news/9.jpg','[]','2023-01-02 21:22:35','2023-01-02 21:22:35',NULL),(105,0,'1',8,'image/png',2054,'promotion/1.png','[]','2023-01-02 21:22:37','2023-01-02 21:22:37',NULL),(106,0,'2',8,'image/png',2054,'promotion/2.png','[]','2023-01-02 21:22:37','2023-01-02 21:22:37',NULL),(107,0,'3',8,'image/png',2054,'promotion/3.png','[]','2023-01-02 21:22:37','2023-01-02 21:22:37',NULL),(108,0,'4',8,'image/png',1597,'promotion/4.png','[]','2023-01-02 21:22:37','2023-01-02 21:22:37',NULL),(109,0,'5',8,'image/png',1569,'promotion/5.png','[]','2023-01-02 21:22:37','2023-01-02 21:22:37',NULL),(110,0,'6',8,'image/png',3357,'promotion/6.png','[]','2023-01-02 21:22:37','2023-01-02 21:22:37',NULL),(111,0,'favicon',9,'image/png',2343,'general/favicon.png','[]','2023-01-02 21:22:38','2023-01-02 21:22:38',NULL),(112,0,'icon-bag',9,'image/png',15551,'general/icon-bag.png','[]','2023-01-02 21:22:38','2023-01-02 21:22:38',NULL),(113,0,'icon-operator',9,'image/png',23328,'general/icon-operator.png','[]','2023-01-02 21:22:38','2023-01-02 21:22:38',NULL),(114,0,'icon-purchase',9,'image/png',22947,'general/icon-purchase.png','[]','2023-01-02 21:22:38','2023-01-02 21:22:38',NULL),(115,0,'icon-truck',9,'image/png',17131,'general/icon-truck.png','[]','2023-01-02 21:22:38','2023-01-02 21:22:38',NULL),(116,0,'logo-light',9,'image/png',1938,'general/logo-light.png','[]','2023-01-02 21:22:39','2023-01-02 21:22:39',NULL),(117,0,'logo',9,'image/png',2494,'general/logo.png','[]','2023-01-02 21:22:39','2023-01-02 21:22:39',NULL),(118,0,'open-graph-image',9,'image/png',293189,'general/open-graph-image.png','[]','2023-01-02 21:22:39','2023-01-02 21:22:39',NULL),(119,0,'payment-methods',9,'image/png',268,'general/payment-methods.png','[]','2023-01-02 21:22:39','2023-01-02 21:22:39',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2023-01-02 21:22:22','2023-01-02 21:22:22',NULL),(2,0,'product-categories','product-categories',0,'2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(3,0,'products','products',0,'2023-01-02 21:22:23','2023-01-02 21:22:23',NULL),(4,0,'customers','customers',0,'2023-01-02 21:22:31','2023-01-02 21:22:31',NULL),(5,0,'flash-sales','flash-sales',0,'2023-01-02 21:22:32','2023-01-02 21:22:32',NULL),(6,0,'sliders','sliders',0,'2023-01-02 21:22:33','2023-01-02 21:22:33',NULL),(7,0,'news','news',0,'2023-01-02 21:22:34','2023-01-02 21:22:34',NULL),(8,0,'promotion','promotion',0,'2023-01-02 21:22:37','2023-01-02 21:22:37',NULL),(9,0,'general','general',0,'2023-01-02 21:22:38','2023-01-02 21:22:38',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-01-02 21:22:37','2023-01-02 21:22:37'),(2,4,'main-menu','2023-01-02 21:22:37','2023-01-02 21:22:37');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Home 1',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(6,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(7,1,6,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(8,1,6,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(9,1,6,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(10,1,6,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Products Of Category',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(11,1,0,NULL,NULL,'#',NULL,0,'Product',NULL,'_self',1,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(12,1,11,NULL,NULL,'/products/smart-home-speaker',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(13,1,11,NULL,NULL,'/products/headphone-ultra-bass',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(14,1,11,NULL,NULL,'/products/boxed-bluetooth-headphone',NULL,0,'Product Full Width',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(15,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(16,1,15,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Right Sidebar',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(17,1,15,13,'Botble\\Page\\Models\\Page','/blog-left-sidebar',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(18,1,15,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(19,1,15,NULL,NULL,'/blog/sexy-clutches-how-to-buy-amp-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(20,1,15,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(21,1,15,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(22,1,0,14,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(23,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(24,2,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Men',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(25,2,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/electronics',NULL,0,'Women',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(26,2,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Accessories',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(27,2,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Shoes',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(28,2,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Denim',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(29,2,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Dress',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(30,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(31,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'About Us',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(32,3,0,9,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(33,3,0,10,'Botble\\Page\\Models\\Page','/returns-amp-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(34,3,0,11,'Botble\\Page\\Models\\Page','/shipping-amp-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(35,3,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(36,4,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(37,4,36,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Trang chủ 1',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(38,4,36,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(39,4,36,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(40,4,36,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(41,4,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(42,4,41,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(43,4,41,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(44,4,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(45,4,44,NULL,NULL,'/products/smart-home-speaker',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(46,4,44,NULL,NULL,'/products/headphone-ultra-bass',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(47,4,44,NULL,NULL,'/products/boxed-bluetooth-headphone',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2023-01-02 21:22:37','2023-01-02 21:22:37'),(48,4,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2023-01-02 21:22:37','2023-01-02 21:22:38'),(49,4,48,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(50,4,48,13,'Botble\\Page\\Models\\Page','/blog-left-sidebar',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(51,4,48,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(52,4,48,NULL,NULL,'/blog/sexy-clutches-how-to-buy-amp-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(53,4,48,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(54,4,48,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết with kèm sản phẩm',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(55,4,0,14,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(56,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(57,5,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/hot-promotions',NULL,0,'Dành cho nam',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(58,5,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/electronics',NULL,0,'Dành cho nữ',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(59,5,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Phụ kiện',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(60,5,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Giày dép',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(61,5,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Denim',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(62,5,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Quần áo',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(63,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(64,6,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(65,6,0,9,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(66,6,0,10,'Botble\\Page\\Models\\Page','/returns-amp-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(67,6,0,11,'Botble\\Page\\Models\\Page','/shipping-amp-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38'),(68,6,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2023-01-02 21:22:38','2023-01-02 21:22:38');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(2,'Product categories','product-categories','published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(3,'Information','information','published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(4,'Menu chính','menu-chinh','published','2023-01-02 21:22:37','2023-01-02 21:22:37'),(5,'Product categories','danh-muc-san-pham','published','2023-01-02 21:22:38','2023-01-02 21:22:38'),(6,'Information','thong-tin','published','2023-01-02 21:22:38','2023-01-02 21:22:38');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"far fa-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(2,'icon','[\"wowy-font-cpu\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(3,'icon','[\"wowy-font-tshirt\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(4,'icon','[\"wowy-font-desktop\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(5,'icon','[\"wowy-font-home\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(6,'icon','[\"wowy-font-dress\"]',18,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(7,'icon','[\"wowy-font-diamond\"]',19,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(8,'icon','[\"far fa-microchip\"]',20,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(9,'icon','[\"wowy-font-smartphone\"]',25,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(10,'icon','[\"wowy-font-teddy-bear\"]',26,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(11,'icon','[\"wowy-font-kite\"]',27,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(12,'icon','[\"far fa-book\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(13,'icon','[\"far fa-car\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(14,'icon','[\"wowy-font-home\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2023-01-02 21:22:23','2023-01-02 21:22:23'),(15,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(17,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(19,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:28','2023-01-02 21:22:28'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:29','2023-01-02 21:22:29'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:29','2023-01-02 21:22:29'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:29','2023-01-02 21:22:29'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:29','2023-01-02 21:22:29'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:29','2023-01-02 21:22:29'),(39,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:29','2023-01-02 21:22:29'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:29','2023-01-02 21:22:29'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2023-01-02 21:22:29','2023-01-02 21:22:29'),(42,'subtitle','[\"Limited quantities.\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-01-02 21:22:32','2023-01-02 21:22:32'),(43,'image','[\"flash-sales\\/1.jpg\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-01-02 21:22:32','2023-01-02 21:22:32'),(44,'subtitle','[\"Computers & Laptop\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-01-02 21:22:32','2023-01-02 21:22:32'),(45,'image','[\"flash-sales\\/2.jpg\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-01-02 21:22:32','2023-01-02 21:22:32'),(46,'vi_subtitle','[\"Gi\\u1edbi h\\u1ea1n s\\u1ed1 l\\u01b0\\u1ee3ng\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-01-02 21:22:32','2023-01-02 21:22:32'),(47,'vi_image','[\"flash-sales\\/1.jpg\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-01-02 21:22:32','2023-01-02 21:22:32'),(48,'vi_subtitle','[\"M\\u00e1y t\\u00ednh b\\u00e0n & Laptop\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-01-02 21:22:32','2023-01-02 21:22:32'),(49,'vi_image','[\"flash-sales\\/2.jpg\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-01-02 21:22:32','2023-01-02 21:22:32'),(50,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(51,'subtitle','[\"Trade-In Offer\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(52,'highlight_text','[\"On All Products\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(53,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(54,'subtitle','[\"Tech Promotions\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(55,'highlight_text','[\"Great Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(56,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(57,'subtitle','[\"Upcoming Offer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(58,'highlight_text','[\"Manufacturer\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(59,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-01-02 21:22:34','2023-01-02 21:22:34'),(60,'button_text','[\"Shop now\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(61,'subtitle','[\"Trade-In Offer\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(62,'highlight_text','[\"On All Products\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(63,'button_text','[\"Discover now\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(64,'subtitle','[\"Tech Promotions\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(65,'highlight_text','[\"Great Collection\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(66,'button_text','[\"Shop now\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(67,'subtitle','[\"Upcoming Offer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(68,'highlight_text','[\"Manufacturer\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(69,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-01-02 21:22:34','2023-01-02 21:22:34'),(70,'button_text','[\"Shop now\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(71,'subtitle','[\"Trade-In Offer\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(72,'highlight_text','[\"On All Products\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(73,'button_text','[\"Discover now\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(74,'subtitle','[\"Tech Promotions\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(75,'highlight_text','[\"Great Collection\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(76,'simple_slider_style','[\"style-4\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-01-02 21:22:34','2023-01-02 21:22:34'),(77,'button_text','[\"Shop now\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(78,'subtitle','[\"Trade-In Offer\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(79,'highlight_text','[\"On All Products\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(80,'button_text','[\"Discover now\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(81,'subtitle','[\"Tech Promotions\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(82,'highlight_text','[\"Great Collection\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(83,'button_text','[\"Shop now\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(84,'subtitle','[\"Upcoming Offer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(85,'highlight_text','[\"Manufacturer\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(86,'button_text','[\"Mua ngay\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(87,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(88,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(89,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(90,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(91,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(92,'button_text','[\"Mua ngay\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(93,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(94,'highlight_text','[\"Nh\\u00e0 cung c\\u1ea5p\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(95,'simple_slider_style','[\"style-2\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-01-02 21:22:34','2023-01-02 21:22:34'),(96,'button_text','[\"Mua ngay\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(97,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(98,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',15,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(99,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(100,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(101,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',16,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(102,'button_text','[\"Mua ngay\"]',17,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(103,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]',17,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(104,'highlight_text','[\"Nh\\u00e0 cung c\\u1ea5p\"]',17,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(105,'simple_slider_style','[\"style-3\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-01-02 21:22:34','2023-01-02 21:22:34'),(106,'button_text','[\"Mua ngay\"]',18,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(107,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',18,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(108,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',18,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(109,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',19,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(110,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',19,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(111,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',19,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(112,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-01-02 21:22:34','2023-01-02 21:22:34'),(113,'button_text','[\"Mua ngay\"]',20,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(114,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i\"]',20,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(115,'highlight_text','[\"T\\u1ea5t c\\u1ea3 s\\u1ea3n ph\\u1ea9m\"]',20,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(116,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',21,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(117,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1ea3n ph\\u1ea9m c\\u00f4ng ngh\\u1ec7\"]',21,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(118,'highlight_text','[\"B\\u1ed9 s\\u01b0u t\\u1eadp t\\u1ed1t nh\\u1ea5t\"]',21,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(119,'button_text','[\"Mua ngay\"]',22,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(120,'subtitle','[\"Khuy\\u1ebfn m\\u00e3i s\\u1eafp t\\u1edbi\"]',22,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(121,'highlight_text','[\"Nh\\u00e0 cung c\\u1ea5p\"]',22,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-01-02 21:22:34','2023-01-02 21:22:34'),(122,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2023-01-02 21:22:36','2023-01-02 21:22:36'),(123,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2023-01-02 21:22:36','2023-01-02 21:22:36'),(124,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2023-01-02 21:22:36','2023-01-02 21:22:36'),(125,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2023-01-02 21:22:36','2023-01-02 21:22:36'),(126,'header_style','[\"header-style-2\"]',2,'Botble\\Page\\Models\\Page','2023-01-02 21:22:36','2023-01-02 21:22:36'),(127,'expanding_product_categories_on_the_homepage','[\"yes\"]',2,'Botble\\Page\\Models\\Page','2023-01-02 21:22:36','2023-01-02 21:22:36'),(128,'header_style','[\"header-style-3\"]',3,'Botble\\Page\\Models\\Page','2023-01-02 21:22:36','2023-01-02 21:22:36'),(129,'header_style','[\"header-style-4\"]',4,'Botble\\Page\\Models\\Page','2023-01-02 21:22:36','2023-01-02 21:22:36'),(130,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(131,'subtitle','[\"Save 20% on\\niPhone 12\"]',1,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(132,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(133,'subtitle','[\"Great Camera\\nCollection\"]',2,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(134,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(135,'subtitle','[\"Shop Today\\u2019s\\nDeals & Offers\"]',3,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(136,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(137,'subtitle','[\"Save 17% on\\nAssus Laptop\"]',4,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(138,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(139,'subtitle','[\"Save 20% on\\niPhone 12\"]',5,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(140,'button_text','[\"Learn more\"]',6,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(141,'subtitle','[\"We\'re an Apple\\nAuthorised Service Provider\"]',6,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(142,'vi_subtitle','[\"Save 20% on\\niPhone 12\"]',1,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(143,'vi_button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(144,'vi_subtitle','[\"Great Camera\\nCollection\"]',2,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(145,'vi_button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(146,'vi_subtitle','[\"Shop Today\\u2019s\\nDeals & Offers\"]',3,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(147,'vi_button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(148,'vi_subtitle','[\"Save 17% on\\nAssus Laptop\"]',4,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(149,'vi_button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(150,'vi_subtitle','[\"Save 20% on\\niPhone 12\"]',5,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(151,'vi_button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(152,'vi_subtitle','[\"We\'re an Apple\\nAuthorised Service Provider\"]',6,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37'),(153,'vi_button_text','[\"Learn more\"]',6,'Botble\\Ads\\Models\\Ads','2023-01-02 21:22:37','2023-01-02 21:22:37');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_27_084829_fix_footer_widget',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_10_28_030106_improve-newsletter-widget',1),(24,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(25,'2022_12_02_093615_update_slug_index_columns',1),(26,'2020_11_18_150916_ads_create_ads_table',2),(27,'2021_12_02_035301_add_ads_translations_table',2),(28,'2015_06_29_025744_create_audit_history',3),(29,'2015_06_18_033822_create_blog_table',4),(30,'2021_02_16_092633_remove_default_value_for_author_type',4),(31,'2021_12_03_030600_create_blog_translations',4),(32,'2022_04_19_113923_add_index_to_table_posts',4),(33,'2016_06_17_091537_create_contacts_table',5),(34,'2020_03_05_041139_create_ecommerce_tables',6),(35,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(36,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(37,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(38,'2021_02_18_073505_update_table_ec_reviews',6),(39,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(40,'2021_03_10_025153_change_column_tax_amount',6),(41,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(42,'2021_04_28_074008_ecommerce_create_product_label_table',6),(43,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(44,'2021_06_28_153141_correct_slugs_data',6),(45,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(46,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(47,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(49,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(50,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(51,'2021_11_23_071403_correct_languages_for_product_variations',6),(52,'2021_11_28_031808_add_product_tags_translations',6),(53,'2021_12_01_031123_add_featured_image_to_ec_products',6),(54,'2022_01_01_033107_update_table_ec_shipments',6),(55,'2022_02_16_042457_improve_product_attribute_sets',6),(56,'2022_03_22_075758_correct_product_name',6),(57,'2022_04_19_113334_add_index_to_ec_products',6),(58,'2022_04_28_144405_remove_unused_table',6),(59,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(60,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(61,'2022_06_16_095633_add_index_to_some_tables',6),(62,'2022_06_30_035148_create_order_referrals_table',6),(63,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(64,'2022_08_14_032836_create_ec_order_returns_table',6),(65,'2022_08_14_033554_create_ec_order_return_items_table',6),(66,'2022_08_15_040324_add_billing_address',6),(67,'2022_08_30_091114_support_digital_products_table',6),(68,'2022_09_13_095744_create_options_table',6),(69,'2022_09_13_104347_create_option_value_table',6),(70,'2022_10_05_163518_alter_table_ec_order_product',6),(71,'2022_10_12_041517_create_invoices_table',6),(72,'2022_10_12_142226_update_orders_table',6),(73,'2022_10_13_024916_update_table_order_returns',6),(74,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(75,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(76,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(77,'2022_11_19_041643_add_ec_tax_product_table',6),(78,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(79,'2022_12_17_041532_fix_address_in_order_invoice',6),(80,'2022_12_26_070329_create_ec_product_views_table',6),(81,'2018_07_09_221238_create_faq_table',7),(82,'2021_12_03_082134_create_faq_translations',7),(83,'2016_10_03_032336_create_languages_table',8),(84,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(85,'2021_12_03_075608_create_page_translations',9),(86,'2019_11_18_061011_create_country_table',10),(87,'2021_12_03_084118_create_location_translations',10),(88,'2021_12_03_094518_migrate_old_location_data',10),(89,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(90,'2022_01_16_085908_improve_plugin_location',10),(91,'2022_08_04_052122_delete_location_backup_tables',10),(92,'2022_10_29_065232_increase_states_abbreviation_column',10),(93,'2022_11_06_061847_increase_state_translations_abbreviation_column',10),(94,'2017_10_24_154832_create_newsletter_table',11),(95,'2017_05_18_080441_create_payment_tables',12),(96,'2021_03_27_144913_add_customer_type_into_table_payments',12),(97,'2021_05_24_034720_make_column_currency_nullable',12),(98,'2021_08_09_161302_add_metadata_column_to_payments_table',12),(99,'2021_10_19_020859_update_metadata_field',12),(100,'2022_06_28_151901_activate_paypal_stripe_plugin',12),(101,'2022_07_07_153354_update_charge_id_in_table_payments',12),(102,'2017_07_11_140018_create_simple_slider_table',13),(103,'2016_10_07_193005_create_translations_table',14);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div>',1,NULL,'homepage',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Free Shipping\" subtitle1=\"Orders $50 or more\" icon2=\"general/icon-purchase.png\" title2=\"Free Returns\" subtitle2=\"Within 30 days\" icon3=\"general/icon-bag.png\" title3=\"Get 20% Off 1 Item\" subtitle3=\"When you sign up\" icon4=\"general/icon-operator.png\" title4=\"Support Center\" subtitle4=\"24/7 amazing services\"][/site-features]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Visit Our Blog\"][/featured-news]</div>',1,NULL,'homepage',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(5,'Blog','<p>---</p>',1,NULL,'blog-right-sidebar',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(7,'About us','<p>The question is, what did the Dormouse again, so she set the little creature down, and was immediately suppressed by the end of every line: \'Speak roughly to your little boy, And beat him when he finds out who was passing at the top of his teacup instead of onions.\' Seven flung down his face, as long as it was perfectly round, she came in with a knife, it usually bleeds; and she hastily dried her eyes immediately met those of a sea of green leaves that had made the whole cause, and condemn you.</p><p>Seaography: then Drawling--the Drawling-master was an uncomfortably sharp chin. However, she soon found an opportunity of showing off a bit hurt, and she trembled till she had someone to listen to me! I\'LL soon make you grow shorter.\' \'One side will make you dry enough!\' They all made of solid glass; there was the BEST butter, you know.\' \'Not at all,\' said the Dodo, \'the best way you have of putting things!\' \'It\'s a mineral, I THINK,\' said Alice. \'I mean what I used to do:-- \'How doth the.</p><p>I think that very few little girls of her little sister\'s dream. The long grass rustled at her feet, they seemed to be ashamed of yourself,\' said Alice, \'how am I to do anything but sit with its head, it WOULD twist itself round and swam slowly back to the Dormouse, and repeated her question. \'Why did you do either!\' And the Gryphon only answered \'Come on!\' cried the Mouse, turning to Alice, she went back for a moment that it might end, you know,\' said the Rabbit whispered in a confused way.</p><p>March Hare. Alice sighed wearily. \'I think I may as well go back, and barking hoarsely all the unjust things--\' when his eye chanced to fall a long silence after this, and after a pause: \'the reason is, that there\'s any one of the accident, all except the Lizard, who seemed to have been ill.\' \'So they were,\' said the Hatter, \'you wouldn\'t talk about trouble!\' said the Cat, and vanished again. Alice waited till the eyes appeared, and then all the creatures wouldn\'t be in before the trial\'s.</p>',1,NULL,'default',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(9,'Terms &amp; Conditions','<p>Alice said nothing; she had forgotten the Duchess by this time, as it left no mark on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the Shark, But, when the White Rabbit with pink eyes ran close by it, and behind them a new idea to Alice, and tried to curtsey as she left her, leaning her head was so large in the pool of tears which she concluded that it was a little timidly: \'but it\'s no use in crying like that!\' \'I couldn\'t help it,\' said the Mock.</p><p>Queen. First came ten soldiers carrying clubs; these were all turning into little cakes as they were nowhere to be rude, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to ask. \'Suppose we change the subject,\' the March Hare meekly replied. \'Yes, but I grow up, I\'ll write one--but I\'m grown up now,\' she said, without even looking round. \'I\'ll fetch the executioner myself,\' said the Gryphon, before Alice could hear the name.</p><p>I suppose?\' \'Yes,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a day-school, too,\' said Alice; \'it\'s laid for a minute or two, and the other side, the puppy jumped into the garden. Then she went to him,\' the Mock Turtle said: \'no wise fish would go round and look up in a Little Bill It was so small as this before, never! And I declare it\'s too bad, that it might not escape again, and all would change (she knew) to the jury. \'Not.</p><p>King said to herself, as usual. I wonder if I\'ve kept her eyes anxiously fixed on it, for she was looking down at her for a minute, trying to put it in time,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little creature down, and was just in time to see if she had nibbled some more bread-and-butter--\' \'But what happens when one eats cake, but Alice had learnt several things of this ointment--one shilling the box-- Allow me to him: She.</p>',1,NULL,'default',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(10,'Returns &amp; Exchanges','<p>Dormouse,\' the Queen had only one who had been found and handed them round as prizes. There was no label this time the Queen was silent. The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said in a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the Classics master, though. He was looking about for them, but they were nowhere to be ashamed of yourself for asking such a pleasant temper, and thought it would like the look of the way--\' \'THAT generally takes some time,\'.</p><p>White Rabbit blew three blasts on the table. \'Have some wine,\' the March Hare took the cauldron of soup off the mushroom, and her eyes to see the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder what CAN have happened to me! I\'LL soon make you a couple?\' \'You are old,\' said the Mouse. \'Of course,\' the Gryphon as if she was saying, and the party were placed along the sea-shore--\' \'Two lines!\' cried the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself what such an.</p><p>After a minute or two, looking for eggs, I know is, it would be a letter, after all: it\'s a very good height indeed!\' said the Queen. An invitation from the trees upon her knee, and the two sides of the shepherd boy--and the sneeze of the Lobster; I heard him declare, \"You have baked me too brown, I must have been changed for any of them. \'I\'m sure I\'m not used to call him Tortoise--\' \'Why did they draw?\' said Alice, (she had grown in the middle of one! There ought to have him with them,\' the.</p><p>MUST be more to do with this creature when I got up this morning? I almost wish I hadn\'t begun my tea--not above a week or so--and what with the tea,\' the Hatter went on in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to remark. \'Tut, tut, child!\' said the Mock Turtle said: \'I\'m too stiff. And the Gryphon went on, \'if you don\'t know of any use, now,\' thought Alice, \'as all the jurors had a VERY unpleasant state of mind, she turned the corner, but the Dormouse indignantly. However, he.</p>',1,NULL,'default',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(11,'Shipping &amp; Delivery','<p>Alice began to feel which way I ought to be in before the trial\'s over!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather finish my tea,\' said the White Rabbit, trotting slowly back again, and did not like to try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all comfortable, and it was neither more nor less than no time to begin again, it was a general clapping of hands at this: it was as much use in knocking,\' said the Rabbit coming to look for her, and.</p><p>Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice appeared, she was now only ten inches high, and was going to say,\' said the Pigeon; \'but I know I have done that?\' she thought. \'But everything\'s curious today. I think I should be raving mad after all! I almost wish I had our Dinah here, I know I do!\' said Alice angrily. \'It wasn\'t very civil of you to offer it,\' said Alice, timidly; \'some of the earth. Let me see: that would happen: \'\"Miss Alice! Come here directly, and.</p><p>Knave, \'I didn\'t know that cats COULD grin.\' \'They all can,\' said the Mouse. \'Of course,\' the Dodo managed it.) First it marked out a new pair of gloves and a scroll of parchment in the sea, some children digging in the air. She did it so yet,\' said the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' Last came a little before she made out the Fish-Footman was gone, and, by the Hatter, and, just as she spoke. (The unfortunate little Bill had left off when they arrived, with a.</p><p>Duchess replied, in a very deep well. Either the well was very fond of pretending to be sure; but I don\'t want to go down--Here, Bill! the master says you\'re to go after that into a tidy little room with a sudden burst of tears, but said nothing. \'When we were little,\' the Mock Turtle a little startled when she looked up, and began singing in its hurry to change the subject. \'Go on with the clock. For instance, if you don\'t even know what \"it\" means.\' \'I know SOMETHING interesting is sure to.</p>',1,NULL,'default',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(12,'Privacy Policy','<p>Gryphon, \'that they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the insolence of his shrill little voice, the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting in the lock, and to wonder what I was a little more conversation with her friend. When she got to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of.</p><p>The Hatter was the Hatter. \'Does YOUR watch tell you how it was certainly English. \'I don\'t know one,\' said Alice. \'And where HAVE my shoulders got to? And oh, my poor little Lizard, Bill, was in a very hopeful tone though), \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t understand. Where did they draw?\' said Alice, whose thoughts were still running on the look-out for serpents night and day! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Gryphon: and it.</p><p>Alice and all the jurymen on to her great disappointment it was all finished, the Owl, as a cushion, resting their elbows on it, or at any rate: go and get ready for your walk!\" \"Coming in a minute, nurse! But I\'ve got back to the table, but it was impossible to say \'I once tasted--\' but checked herself hastily, and said anxiously to herself, \'Now, what am I to do?\' said Alice. \'Why, you don\'t know one,\' said Alice. \'Of course you know why it\'s called a whiting?\' \'I never said I didn\'t!\'.</p><p>Alice, a little more conversation with her head!\' Those whom she sentenced were taken into custody by the soldiers, who of course you know about this business?\' the King said, with a whiting. Now you know.\' It was, no doubt: only Alice did not venture to say to this: so she turned the corner, but the Rabbit say to itself in a sorrowful tone, \'I\'m afraid I\'ve offended it again!\' For the Mouse was speaking, so that altogether, for the accident of the others looked round also, and all would.</p>',1,NULL,'default',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(13,'Blog Left Sidebar','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-left-sidebar',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36'),(14,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2023-01-02 21:22:36','2023-01-02 21:22:36');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"slider-trang-chu-1\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"slider-trang-chu-2\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"slider-trang-chu-3\" ads_1=\"ILSDKVYFGXPJ\" ads_2=\"IZ6WU8KUALYE\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"slider-trang-chu-4\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider]</div><div>[site-features icon1=\"general/icon-truck.png\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ $50\" icon2=\"general/icon-purchase.png\" title2=\"Miễn phí đổi trả\" subtitle2=\"Trong vòng 30 ngày\" icon3=\"general/icon-bag.png\" title3=\"Giảm 20% mỗi 1 sản phẩm\" subtitle3=\"Khi bạn đăng ký thành viên\" icon4=\"general/icon-operator.png\" title4=\"Hỗ trợ\" subtitle4=\"24/7 dịch vụ tuyệt vời\"][/site-features]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYF\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[flash-sale show_popup=\"yes\"][/flash-sale]</div><div>[featured-brands title=\"Thương hiệu nổi bật\"][/featured-brands]</div><div>[product-category-products category_id=\"12\"][/product-category-products]</div><div>[featured-news title=\"Tin tức mới nhất\"][/featured-news]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>King very decidedly, and the sounds will take care of themselves.\"\' \'How fond she is of finding morals in things!\' Alice began in a game of play with a pair of white kid gloves, and she did not look at all fairly,\' Alice began, in a great many teeth, so she went on. \'Would you like the Mock Turtle in the air: it puzzled her very much what would happen next. The first witness was the first figure!\' said the one who got any advantage from the roof. There were doors all round the thistle again.</p><p>Dormouse, after thinking a minute or two, and the poor little thing howled so, that he had a little scream of laughter. \'Oh, hush!\' the Rabbit hastily interrupted. \'There\'s a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Cat in a moment: she looked down at them, and it\'ll sit up and rubbed its eyes: then it watched the Queen was silent. The Dormouse again took a minute or two sobs choked his voice. \'Same as if she meant to take out of a dance is it?\'.</p><p>Fish-Footman was gone, and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice as it was very likely to eat some of the shepherd boy--and the sneeze of the court, arm-in-arm with the Mouse replied rather crossly: \'of course you don\'t!\' the Hatter went on, \'and most of \'em do.\' \'I don\'t see,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said this last word two or three of the bottle was a different person then.\' \'Explain.</p><p>Pray, what is the driest thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that the meeting adjourn, for the Dormouse,\' thought Alice; \'I must be a person of authority among them, called out, \'Sit down, all of them bowed low. \'Would you tell me,\' said Alice, rather alarmed at the thought that it signifies much,\' she said to the shore, and then the puppy jumped into the roof of the trees behind him. \'--or next day, maybe,\' the Footman went on planning to.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>Gryphon. \'The reason is,\' said the Hatter, and, just as well as she did not like to drop the jar for fear of their wits!\' So she sat still and said anxiously to herself, as usual. I wonder who will put on one knee. \'I\'m a poor man,\' the Hatter began, in a solemn tone, only changing the order of the Nile On every golden scale! \'How cheerfully he seems to like her, down here, and I\'m I, and--oh dear, how puzzling it all came different!\' the Mock Turtle, and to hear the Rabbit was no label this.</p><p>THAT direction,\' the Cat in a twinkling! Half-past one, time for dinner!\' (\'I only wish they COULD! I\'m sure she\'s the best cat in the shade: however, the moment she appeared on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, (she had grown up,\' she said to the other, and growing sometimes taller and sometimes she scolded herself so severely as to go after that into a cucumber-frame, or something of the court,\" and I could let you out, you know.\' It was, no.</p><p>IS the fun?\' said Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I wonder what CAN have happened to you? Tell us all about as she fell very slowly, for she felt sure it would be worth the trouble of getting up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know how to begin.\' He looked at Alice. \'I\'M not a moment like a snout than a real nose; also its eyes were looking up into a conversation. Alice felt that there was room for her. \'Yes!\' shouted Alice. \'Come.</p><p>Gryphon at the end of the ground.\' So she was ever to get into her eyes--and still as she could, and waited to see a little shriek and a Long Tale They were indeed a queer-looking party that assembled on the bank--the birds with draggled feathers, the animals with their heads!\' and the reason they\'re called lessons,\' the Gryphon remarked: \'because they lessen from day to day.\' This was quite impossible to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it had grown in the wind, and was delighted to.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>Some of the Rabbit\'s voice; and the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice to find any. And yet you incessantly stand on their hands and feet at once, while all the other side of the Lobster; I heard him declare, \"You have baked me too brown, I must have a prize herself, you know,\' Alice gently remarked; \'they\'d have been changed in the middle, nursing a baby; the cook was leaning over the jury-box with the day of the reeds--the rattling teacups would change to.</p><p>I\'ve finished.\' So they went up to them she heard was a general clapping of hands at this: it was all finished, the Owl, as a partner!\' cried the Mouse, turning to Alice again. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the least idea what to uglify is, you see, Miss, this here ought to be no sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it), and handed back to the Gryphon. \'They can\'t.</p><p>Laughing and Grief, they used to know. Let me see: I\'ll give them a new pair of white kid gloves and a great many teeth, so she began nibbling at the White Rabbit: it was written to nobody, which isn\'t usual, you know.\' \'Not the same height as herself; and when Alice had begun to dream that she was now the right distance--but then I wonder if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room to grow here,\'.</p><p>Queen will hear you! You see, she came up to the Queen. An invitation for the fan she was holding, and she jumped up on to her to wink with one of the pack, she could not think of nothing else to say it out loud. \'Thinking again?\' the Duchess was sitting on a branch of a candle is blown out, for she had got its head down, and nobody spoke for some way of escape, and wondering what to do, so Alice went on, spreading out the proper way of nursing it, (which was to get us dry would be very likely.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>Alice looked all round her once more, while the rest of it appeared. \'I don\'t know the song, \'I\'d have said to herself, as she did not like to see how he can EVEN finish, if he would deny it too: but the Hatter was out of that is--\"Birds of a good character, But said I didn\'t!\' interrupted Alice. \'You did,\' said the Pigeon in a soothing tone: \'don\'t be angry about it. And yet I wish I had our Dinah here, I know is, something comes at me like that!\' By this time she heard it before,\' said.</p><p>This seemed to follow, except a little nervous about it while the Mock Turtle replied; \'and then the puppy made another snatch in the way to hear the rattle of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. Alice felt a very interesting dance to watch,\' said Alice, who always took a minute or two, which gave the Pigeon in a hurry that she was now only ten inches high, and she very soon found out that the cause of this ointment--one shilling the box.</p><p>Which shall sing?\' \'Oh, YOU sing,\' said the Gryphon: and Alice was beginning to write out a new pair of white kid gloves, and she went on so long that they were playing the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of his pocket, and was surprised to find it out, we should all have our heads cut off, you know. So you see, because some of them didn\'t know it was done. They had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure _I_ shan\'t.</p><p>While the Owl and the blades of grass, but she had nothing yet,\' Alice replied in an offended tone, and added with a great hurry. \'You did!\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you turned a back-somersault in at the beginning,\' the King in a few minutes, and began to repeat it, when a sharp hiss made her feel very queer to ME.\' \'You!\' said the voice. \'Fetch me my gloves this moment!\' Then came a little worried. \'Just about as she spoke. (The.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>Dormouse; \'VERY ill.\' Alice tried to fancy to herself what such an extraordinary ways of living would be so easily offended, you know!\' The Mouse did not wish to offend the Dormouse say?\' one of the court. \'What do you want to be?\' it asked. \'Oh, I\'m not particular as to go on in a very small cake, on which the words don\'t FIT you,\' said the Mock Turtle yet?\' \'No,\' said Alice. \'Exactly so,\' said the Duchess; \'and most of \'em do.\' \'I don\'t see how he can EVEN finish, if he doesn\'t begin.\' But.</p><p>Hatter trembled so, that Alice could see it pop down a very pretty dance,\' said Alice angrily. \'It wasn\'t very civil of you to offer it,\' said Alice to herself, as she was now only ten inches high, and her eyes immediately met those of a treacle-well--eh, stupid?\' \'But they were gardeners, or soldiers, or courtiers, or three of the treat. When the procession moved on, three of the tea--\' \'The twinkling of the garden: the roses growing on it were nine o\'clock in the wind, and the moment they.</p><p>I shan\'t grow any more--As it is, I suppose?\' said Alice. \'Of course you know that cats COULD grin.\' \'They all can,\' said the Hatter grumbled: \'you shouldn\'t have put it to be otherwise.\"\' \'I think I may as well say,\' added the Dormouse, and repeated her question. \'Why did they live on?\' said the King said to herself \'Now I can reach the key; and if it makes me grow smaller, I suppose.\' So she sat still just as if it had lost something; and she crossed her hands up to them she heard a little.</p><p>SOMETHING interesting is sure to kill it in her life before, and he hurried off. Alice thought she might as well as she went back for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon only answered \'Come on!\' cried the Mouse, who was passing at the Footman\'s head: it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both footmen, Alice noticed, had powdered hair that.</p>'),('vi',13,'Blog Sidebar Trái',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'IMGH1X6883','bank_transfer',NULL,578.00,1,'pending','confirm',7,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'VZ8YGGYBR9','cod',NULL,856.00,2,'pending','confirm',1,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'JWLTOWZ4JQ','paypal',NULL,1679.00,3,'completed','confirm',3,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'OBLYNLC12O','stripe',NULL,887.00,4,'completed','confirm',7,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'7HQQL8GWXE','paystack',NULL,1526.00,5,'completed','confirm',10,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'I4RAIQDEMX','cod',NULL,859.00,6,'pending','confirm',3,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'0RUAWZDYHG','paypal',NULL,568.00,7,'completed','confirm',5,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'5XOJJM6GFZ','sslcommerz',NULL,747.00,8,'completed','confirm',4,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'UDZ5C1VDS2','stripe',NULL,473.00,9,'completed','confirm',4,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'UKWK1BIJ96','razorpay',NULL,488.00,10,'completed','confirm',4,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'T67QEQFF1A','stripe',NULL,1211.00,11,'completed','confirm',9,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'VWEXZV1E82','mollie',NULL,1268.00,12,'completed','confirm',4,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'ADXLBUISAC','cod',NULL,1293.00,13,'pending','confirm',5,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'BXMCJOBS9E','paypal',NULL,1056.00,14,'completed','confirm',9,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'SBF6ESTZSF','paystack',NULL,1418.00,15,'completed','confirm',1,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'JMDCMUEBAW','paystack',NULL,2305.00,16,'completed','confirm',6,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'TE2DMPV1OG','razorpay',NULL,617.00,17,'completed','confirm',1,NULL,NULL,'2023-01-02 21:22:32','2023-01-02 21:22:32','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'QF0RTKAGDW','sslcommerz',NULL,234.00,18,'completed','confirm',6,NULL,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'E84D7U3S9X','paystack',NULL,462.00,19,'completed','confirm',9,NULL,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'55KEKOOLXT','bank_transfer',NULL,472.00,20,'pending','confirm',8,NULL,NULL,'2023-01-02 21:22:33','2023-01-02 21:22:33','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,2,1),(2,3,1),(3,1,2),(4,3,2),(5,2,3),(6,3,3),(7,1,4),(8,4,4),(9,1,5),(10,3,5),(11,2,6),(12,3,6),(13,1,7),(14,3,7),(15,1,8),(16,4,8),(17,1,9),(18,3,9),(19,1,10),(20,4,10),(21,1,11),(22,4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',543,NULL,'2023-01-02 21:22:35','2023-01-02 21:22:35'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',2119,NULL,'2023-01-02 21:22:36','2023-01-02 21:22:36'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1718,NULL,'2023-01-02 21:22:36','2023-01-02 21:22:36'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1584,NULL,'2023-01-02 21:22:36','2023-01-02 21:22:36'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1995,NULL,'2023-01-02 21:22:36','2023-01-02 21:22:36'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1457,NULL,'2023-01-02 21:22:36','2023-01-02 21:22:36'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',186,NULL,'2023-01-02 21:22:36','2023-01-02 21:22:36'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1520,NULL,'2023-01-02 21:22:36','2023-01-02 21:22:36'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',778,NULL,'2023-01-02 21:22:36','2023-01-02 21:22:36'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',2037,NULL,'2023-01-02 21:22:36','2023-01-02 21:22:36'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1870,NULL,'2023-01-02 21:22:36','2023-01-02 21:22:36');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2023-01-02 21:22:22'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'ecommerce_store_name','Wowy',NULL,NULL),(9,'ecommerce_store_phone','18006268',NULL,NULL),(10,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(11,'ecommerce_store_state','Singapore',NULL,NULL),(12,'ecommerce_store_city','Singapore',NULL,NULL),(13,'ecommerce_store_country','SG',NULL,NULL),(14,'media_random_hash','a9ecbde987babe16fd1391425b9b39d7',NULL,NULL),(15,'permalink-botble-blog-models-post','blog',NULL,NULL),(16,'permalink-botble-blog-models-category','blog',NULL,NULL),(17,'payment_cod_status','1',NULL,NULL),(18,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(19,'payment_bank_transfer_status','1',NULL,NULL),(20,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(21,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(22,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(23,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(24,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(25,'simple_slider_using_assets','0',NULL,NULL),(26,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(28,'theme','wowy',NULL,NULL),(29,'admin_favicon','general/favicon.png',NULL,NULL),(30,'admin_logo','general/logo-light.png',NULL,NULL),(31,'theme-wowy-site_title','Wowy - Laravel Multipurpose eCommerce Script',NULL,NULL),(32,'theme-wowy-copyright','Copyright © 2021 Wowy all rights reserved. Powered by Botble.',NULL,NULL),(33,'theme-wowy-favicon','general/favicon.png',NULL,NULL),(34,'theme-wowy-logo','general/logo.png',NULL,NULL),(35,'theme-wowy-logo_light','general/logo-light.png',NULL,NULL),(36,'theme-wowy-seo_og_image','general/open-graph-image.png',NULL,NULL),(37,'theme-wowy-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(38,'theme-wowy-hotline','1900 - 888',NULL,NULL),(39,'theme-wowy-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(40,'theme-wowy-contact_email','sale@wowy.com',NULL,NULL),(41,'theme-wowy-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(42,'theme-wowy-homepage_id','1',NULL,NULL),(43,'theme-wowy-blog_page_id','5',NULL,NULL),(44,'theme-wowy-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(45,'theme-wowy-cookie_consent_learn_more_url','https://wowy.test/cookie-policy',NULL,NULL),(46,'theme-wowy-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(47,'theme-wowy-number_of_cross_sale_product','4',NULL,NULL),(48,'theme-wowy-preloader_enabled','yes',NULL,NULL),(49,'theme-wowy-preloader_version','v2',NULL,NULL),(50,'theme-wowy-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-color\",\"value\":\"#3b5999\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-color\",\"value\":\"#55ACF9\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-color\",\"value\":\"#E1306C\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"fab fa-linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"},{\"key\":\"social-color\",\"value\":\"#007bb6\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"fab fa-pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"},{\"key\":\"social-color\",\"value\":\"#cb2027\"}]]',NULL,NULL),(51,'theme-wowy-header_messages','[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Supper Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(52,'theme-wowy-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(53,'theme-wowy-vi-font_text','Roboto Condensed',NULL,NULL),(54,'theme-wowy-vi-copyright','Bản quyền © 2021 Wowy tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(55,'theme-wowy-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(56,'theme-wowy-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(57,'theme-wowy-vi-cookie_consent_learn_more_url','https://wowy.test/cookie-policy',NULL,NULL),(58,'theme-wowy-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(59,'theme-wowy-vi-homepage_id','1',NULL,NULL),(60,'theme-wowy-vi-blog_page_id','5',NULL,NULL),(61,'theme-wowy-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fa fa-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fa fa-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fa fa-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(62,'theme-wowy-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Super Value Deals','sliders/1-1.png','/products','Save more with coupons & up to 70% off',1,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(2,1,'Tech Trending','sliders/1-2.png','/products','Save more with coupons & up to 20% off',2,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(3,1,'Big Deals From','sliders/1-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(4,2,'Super Value Deals','sliders/2-1.png','/products','Save more with coupons & up to 70% off',1,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(5,2,'Tech Trending','sliders/2-2.png','/products','Save more with coupons & up to 20% off',2,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(6,2,'Big Deals From','sliders/2-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(7,3,'Super Value Deals','sliders/3-1.png','/products','Save more with coupons & up to 70% off',1,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(8,3,'Tech Trending','sliders/3-2.png','/products','Save more with coupons & up to 20% off',2,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(9,4,'Super Value Deals','sliders/4-1.png','/products','Save more with coupons & up to 70% off',1,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(10,4,'Tech Trending','sliders/4-2.png','/products','Save more with coupons & up to 20% off',2,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(11,4,'Big Deals From','sliders/4-3.png','/products','Headphone, Gaming Laptop, PC and more...',3,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(12,5,'Giảm giá đặc biệt','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(13,5,'Công nghệ nổi bật','sliders/1-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(14,5,'Giảm giá lớn nhất từ','sliders/1-3.png','/products','Tai nghe, Máy tính chơi game, PC và hơn nữa...',3,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(15,6,'Giảm giá đặc biệt','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(16,6,'Công nghệ nổi bật','sliders/2-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(17,6,'Giảm giá lớn nhất từ','sliders/2-3.png','/products','Tai nghe, Máy tính chơi game, PC và hơn nữa...',3,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(18,7,'Giảm giá đặc biệt','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(19,7,'Công nghệ nổi bật','sliders/3-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(20,8,'Giảm giá đặc biệt','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(21,8,'Công nghệ nổi bật','sliders/4-2.png','/products','Tiết kiệm hơn với mã giảm giá 20%',2,'2023-01-02 21:22:34','2023-01-02 21:22:34'),(22,8,'Giảm giá lớn nhất từ','sliders/4-3.png','/products','Tai nghe, Máy tính chơi game, PC và hơn nữa...',3,'2023-01-02 21:22:34','2023-01-02 21:22:34');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2023-01-02 21:22:34','2023-01-02 21:22:34'),(2,'Home slider 2','home-slider-2',NULL,'published','2023-01-02 21:22:34','2023-01-02 21:22:34'),(3,'Home slider 3','home-slider-3',NULL,'published','2023-01-02 21:22:34','2023-01-02 21:22:34'),(4,'Home slider 4','home-slider-4',NULL,'published','2023-01-02 21:22:34','2023-01-02 21:22:34'),(5,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2023-01-02 21:22:34','2023-01-02 21:22:34'),(6,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2023-01-02 21:22:34','2023-01-02 21:22:34'),(7,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2023-01-02 21:22:34','2023-01-02 21:22:34'),(8,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2023-01-02 21:22:34','2023-01-02 21:22:34');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-02 21:22:23','2023-01-02 21:22:23'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-02 21:22:23','2023-01-02 21:22:23'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-02 21:22:23','2023-01-02 21:22:23'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-02 21:22:23','2023-01-02 21:22:23'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-02 21:22:23','2023-01-02 21:22:23'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-02 21:22:23','2023-01-02 21:22:23'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-01-02 21:22:23','2023-01-02 21:22:23'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(10,'home-audio-theaters',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(11,'tv-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(12,'camera-photos-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(13,'cellphones-accessories',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(14,'headphones',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(15,'videos-games',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(16,'wireless-speakers',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(17,'office-electronic',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(18,'clothing',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(19,'computers',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(20,'computer-tablets',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(21,'laptop',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(22,'monitors',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(23,'computer-components',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(24,'home-kitchen',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(25,'health-beauty',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(26,'jewelry-watch',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(27,'technology-toys',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(28,'drive-storages',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(29,'gaming-laptop',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(30,'security-protection',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(31,'accessories',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(32,'phones',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(33,'babies-moms',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(34,'sport-outdoor',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(35,'books-office',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(36,'cars-motorcycles',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(37,'home-improvements',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-01-02 21:22:23','2023-01-02 21:22:23'),(38,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-02 21:22:23','2023-01-02 21:22:23'),(39,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-02 21:22:23','2023-01-02 21:22:23'),(40,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-02 21:22:23','2023-01-02 21:22:23'),(41,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-02 21:22:23','2023-01-02 21:22:23'),(42,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-01-02 21:22:23','2023-01-02 21:22:23'),(43,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(44,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(45,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(46,'chikie-bluetooth-speaker',4,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(47,'camera-hikvision-hk-35vs8',5,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(48,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(49,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(50,'apple-iphone-13-plus',8,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(51,'macbook-pro-2015',9,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(52,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(53,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(54,'macbook-pro-13-inch',12,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(55,'apple-keyboard',13,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(56,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(57,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(58,'apple-airpods-serial-3',16,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:28','2023-01-02 21:22:28'),(59,'cool-smart-watches',17,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:29','2023-01-02 21:22:29'),(60,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:29','2023-01-02 21:22:29'),(61,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:29','2023-01-02 21:22:29'),(62,'macbook-pro-2015-13-inch',20,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:29','2023-01-02 21:22:29'),(63,'historic-alarm-clock',21,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:29','2023-01-02 21:22:29'),(64,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:29','2023-01-02 21:22:29'),(65,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:29','2023-01-02 21:22:29'),(66,'gaming-keyboard',24,'Botble\\Ecommerce\\Models\\Product','products','2023-01-02 21:22:29','2023-01-02 21:22:29'),(67,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-01-02 21:22:35','2023-01-02 21:22:37'),(68,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-01-02 21:22:35','2023-01-02 21:22:37'),(69,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-01-02 21:22:35','2023-01-02 21:22:37'),(70,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-01-02 21:22:35','2023-01-02 21:22:37'),(71,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-01-02 21:22:35','2023-01-02 21:22:35'),(72,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-01-02 21:22:35','2023-01-02 21:22:35'),(73,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-01-02 21:22:35','2023-01-02 21:22:35'),(74,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-01-02 21:22:35','2023-01-02 21:22:35'),(75,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-01-02 21:22:35','2023-01-02 21:22:35'),(76,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(77,'sexy-clutches-how-to-buy-amp-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(78,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(79,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(80,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(81,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(82,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(83,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(84,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(85,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(86,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-01-02 21:22:36','2023-01-02 21:22:37'),(87,'homepage',1,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(88,'homepage-2',2,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(89,'homepage-3',3,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(90,'homepage-4',4,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(91,'blog',5,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(92,'contact',6,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(93,'about-us',7,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(94,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(95,'terms-amp-conditions',9,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(96,'returns-amp-exchanges',10,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(97,'shipping-amp-delivery',11,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(98,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(99,'blog-left-sidebar',13,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:36','2023-01-02 21:22:36'),(100,'faq',14,'Botble\\Page\\Models\\Page','','2023-01-02 21:22:37','2023-01-02 21:22:37');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-01-02 21:22:35','2023-01-02 21:22:35'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-01-02 21:22:35','2023-01-02 21:22:35'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-01-02 21:22:35','2023-01-02 21:22:35'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-01-02 21:22:35','2023-01-02 21:22:35'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-01-02 21:22:35','2023-01-02 21:22:35');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4920 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$ZnyjzSUuNtXa9pd.pNHlyejyR1hFwyzrneBrg7VH9nuSzAoWDhbAW',NULL,'2023-01-02 21:22:37','2023-01-02 21:22:37','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'NewsletterWidget','top_footer_sidebar','wowy',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Sign up to Newsletter\",\"subtitle\":\"...and receive $25 coupon for first shopping.\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(2,'SiteInfoWidget','footer_sidebar','wowy',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(3,'CustomMenuWidget','footer_sidebar','wowy',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(4,'CustomMenuWidget','footer_sidebar','wowy',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(5,'PaymentMethodsWidget','footer_sidebar','wowy',3,'{\"id\":\"PaymentMethodsWidget\",\"name\":\"Payments\",\"description\":\"Secured Payment Gateways\",\"image\":\"general\\/payment-methods.png\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(6,'BlogSearchWidget','primary_sidebar','wowy',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(7,'BlogCategoriesWidget','primary_sidebar','wowy',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(8,'RecentPostsWidget','primary_sidebar','wowy',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(9,'TagsWidget','primary_sidebar','wowy',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(10,'ProductCategoriesWidget','product_sidebar','wowy',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(11,'FeaturedProductsWidget','product_sidebar','wowy',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"Featured Products\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(12,'FeaturedBrandsWidget','product_sidebar','wowy',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Manufacturers\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(13,'NewsletterWidget','top_footer_sidebar','wowy-vi',1,'{\"id\":\"NewsletterWidget\",\"name\":\"\\u0110\\u0103ng k\\u00fd nh\\u1eadn b\\u1ea3n tin\",\"subtitle\":\"...v\\u00e0 nh\\u1eadn m\\u00e3 gi\\u1ea3m gi\\u00e1 $25 cho l\\u1ea7n \\u0111\\u1ea7u mua s\\u1eafm.\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(14,'SiteInfoWidget','footer_sidebar','wowy-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(15,'CustomMenuWidget','footer_sidebar','wowy-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(16,'CustomMenuWidget','footer_sidebar','wowy-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(17,'PaymentMethodsWidget','footer_sidebar','wowy-vi',3,'{\"id\":\"PaymentMethodsWidget\",\"name\":\"Thanh to\\u00e1n\",\"description\":\"C\\u1ed5ng thanh to\\u00e1n an to\\u00e0n\",\"image\":\"general\\/payment-methods.png\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(18,'BlogSearchWidget','primary_sidebar','wowy-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(19,'BlogCategoriesWidget','primary_sidebar','wowy-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(20,'RecentPostsWidget','primary_sidebar','wowy-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(21,'TagsWidget','primary_sidebar','wowy-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(22,'ProductCategoriesWidget','product_sidebar','wowy-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(23,'FeaturedProductsWidget','product_sidebar','wowy-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2023-01-02 21:22:38','2023-01-02 21:22:38'),(24,'FeaturedBrandsWidget','product_sidebar','wowy-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2023-01-02 21:22:38','2023-01-02 21:22:38');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-03 11:23:17