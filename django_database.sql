-- MySQL dump 10.13  Distrib 9.0.1, for macos13.7 (arm64)
--
-- Host: localhost    Database: rewards_database
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `auth_group`
--

CREATE DATABASE IF NOT EXISTS rewards_database;
USE rewards_database;

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add reward',7,'add_reward'),(26,'Can change reward',7,'change_reward'),(27,'Can delete reward',7,'delete_reward'),(28,'Can view reward',7,'view_reward'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add loyalty point',9,'add_loyaltypoint'),(34,'Can change loyalty point',9,'change_loyaltypoint'),(35,'Can delete loyalty point',9,'delete_loyaltypoint'),(36,'Can view loyalty point',9,'view_loyaltypoint'),(37,'Can add transaction',10,'add_transaction'),(38,'Can change transaction',10,'change_transaction'),(39,'Can delete transaction',10,'delete_transaction'),(40,'Can view transaction',10,'view_transaction'),(41,'Can add reward redemption',11,'add_rewardredemption'),(42,'Can change reward redemption',11,'change_rewardredemption'),(43,'Can delete reward redemption',11,'delete_rewardredemption'),(44,'Can view reward redemption',11,'view_rewardredemption'),(45,'Can add loyalty rewards',12,'add_loyaltyrewards'),(46,'Can change loyalty rewards',12,'change_loyaltyrewards'),(47,'Can delete loyalty rewards',12,'delete_loyaltyrewards'),(48,'Can view loyalty rewards',12,'view_loyaltyrewards'),(49,'Can add tasks',13,'add_tasks'),(50,'Can change tasks',13,'change_tasks'),(51,'Can delete tasks',13,'delete_tasks'),(52,'Can view tasks',13,'view_tasks');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$NhGY9IcG72DlD3upJ9FRS7$STh8fNZEkIF/gogG3Mf/OGHVXkW+3yQ6XSy1G+QRjto=','2024-11-21 23:17:03.440232',1,'greys','','','',1,1,'2024-11-20 19:37:48.708646');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-11-20 19:38:33.149976','1','User 1 with loyalty score 24',2,'[{\"changed\": {\"fields\": [\"Loyalty score\"]}}]',8,1),(2,'2024-11-21 23:17:14.455970','5','LoyaltyReward 5 requiring 20 points',3,'',12,1),(3,'2024-11-21 23:17:14.456072','4','LoyaltyReward 4 requiring 3 points',3,'',12,1),(4,'2024-11-21 23:17:14.456104','3','LoyaltyReward 3 requiring 3 points',3,'',12,1),(5,'2024-11-21 23:17:14.456134','2','LoyaltyReward 2 requiring 100 points',3,'',12,1),(6,'2024-11-21 23:17:14.456163','1','LoyaltyReward 1 requiring 100 points',3,'',12,1),(7,'2024-11-21 23:17:27.391938','12','Transaction 12 on 2024-11-21',3,'',10,1),(8,'2024-11-21 23:17:27.391996','11','Transaction 11 on 2024-11-21',3,'',10,1),(9,'2024-11-21 23:17:27.392022','10','Transaction 10 on 2024-11-21',3,'',10,1),(10,'2024-11-21 23:17:27.392045','9','Transaction 9 on 2024-11-21',3,'',10,1),(11,'2024-11-21 23:17:27.392066','8','Transaction 8 on 2024-11-21',3,'',10,1),(12,'2024-11-21 23:17:27.392087','7','Transaction 7 on 2024-11-21',3,'',10,1),(13,'2024-11-21 23:17:27.392107','6','Transaction 6 on 2024-11-21',3,'',10,1),(14,'2024-11-21 23:17:27.392128','5','Transaction 5 on 2024-11-21',3,'',10,1),(15,'2024-11-21 23:17:27.392148','4','Transaction 4 on 2024-11-21',3,'',10,1),(16,'2024-11-21 23:17:27.392183','3','Transaction 3 on 2024-11-21',3,'',10,1),(17,'2024-11-21 23:17:27.392204','2','Transaction 2 on 2024-11-21',3,'',10,1),(18,'2024-11-21 23:17:27.392225','1','Transaction 1 on 2024-11-21',3,'',10,1),(19,'2024-11-22 01:31:49.039934','2','Task 2 with 10 points',3,'',13,1),(20,'2024-11-22 01:31:49.040048','1','Task 1 with 20 points',3,'',13,1),(21,'2024-11-22 01:31:54.843661','1','Reward 1 with 20 points',3,'',7,1),(22,'2024-11-22 01:32:01.291392','7','LoyaltyReward 7 requiring 20 points',3,'',12,1),(23,'2024-11-22 01:32:01.291466','6','LoyaltyReward 6 requiring 20 points',3,'',12,1),(24,'2024-11-22 01:32:06.489068','18','Transaction 18 on 2024-11-22',3,'',10,1),(25,'2024-11-22 01:32:06.489132','17','Transaction 17 on 2024-11-21',3,'',10,1),(26,'2024-11-22 01:32:06.489157','16','Transaction 16 on 2024-11-21',3,'',10,1),(27,'2024-11-22 01:32:06.489179','15','Transaction 15 on 2024-11-21',3,'',10,1),(28,'2024-11-22 01:32:06.489200','14','Transaction 14 on 2024-11-21',3,'',10,1),(29,'2024-11-22 01:32:06.489221','13','Transaction 13 on 2024-11-21',3,'',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'rewards_app','loyaltypoint'),(12,'rewards_app','loyaltyrewards'),(7,'rewards_app','reward'),(11,'rewards_app','rewardredemption'),(13,'rewards_app','tasks'),(10,'rewards_app','transaction'),(8,'rewards_app','user'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-13 19:19:29.811396'),(2,'auth','0001_initial','2024-11-13 19:19:29.939774'),(3,'admin','0001_initial','2024-11-13 19:19:29.977652'),(4,'admin','0002_logentry_remove_auto_add','2024-11-13 19:19:29.982293'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-13 19:19:29.986679'),(6,'contenttypes','0002_remove_content_type_name','2024-11-13 19:19:30.011601'),(7,'auth','0002_alter_permission_name_max_length','2024-11-13 19:19:30.026765'),(8,'auth','0003_alter_user_email_max_length','2024-11-13 19:19:30.037598'),(9,'auth','0004_alter_user_username_opts','2024-11-13 19:19:30.040902'),(10,'auth','0005_alter_user_last_login_null','2024-11-13 19:19:30.055422'),(11,'auth','0006_require_contenttypes_0002','2024-11-13 19:19:30.055868'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-13 19:19:30.059094'),(13,'auth','0008_alter_user_username_max_length','2024-11-13 19:19:30.074247'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-13 19:19:30.094729'),(15,'auth','0010_alter_group_name_max_length','2024-11-13 19:19:30.103569'),(16,'auth','0011_update_proxy_permissions','2024-11-13 19:19:30.107012'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-13 19:19:30.124320'),(18,'rewards_app','0001_initial','2024-11-13 19:19:30.221226'),(19,'sessions','0001_initial','2024-11-13 19:19:30.227724'),(20,'rewards_app','0002_user_name','2024-11-20 19:47:04.407038'),(21,'rewards_app','0003_user_password_user_role_alter_user_loyalty_score_and_more','2024-11-21 19:47:01.890657'),(22,'rewards_app','0004_remove_loyaltyrewards_points_and_more','2024-11-21 21:36:56.049635'),(23,'rewards_app','0005_loyaltyrewards_reward_name','2024-11-21 21:37:44.690756'),(24,'rewards_app','0006_remove_transaction_loyalty_point_and_more','2024-11-21 21:59:46.972136'),(25,'rewards_app','0007_transaction_coupon','2024-11-21 22:21:06.969377'),(26,'rewards_app','0008_remove_rewardredemption_loyalty_reward_and_more','2024-11-21 23:20:36.557361'),(27,'rewards_app','0009_tasks','2024-11-21 23:29:54.100074'),(28,'rewards_app','0010_alter_tasks_points','2024-11-21 23:42:36.159289');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5ggm474uaswkuyoqj6en0wkqbfvoidlp','.eJxVjEEOwiAQRe_C2pAplA64dO8ZyMAMtmpKUtqV8e7apAvd_vfef6lI2zrGrckSJ1Zn1anT75YoP2TeAd9pvlWd67wuU9K7og_a9LWyPC-H-3cwUhu_NZKjDjGTCUyJoUcAsEWyQQnF0mAFA_gyZGA0malncV6cAx-MAVDvD-4VN8k:1tDqWV:P5o2iqhAsfaW06kGCUUfqOtV7KWib6QL3vnGAN0AQNI','2024-12-04 19:37:59.560058'),('b3srtjkx3594w36393uf12o3tfx1c3z4','.eJxVjEEOwiAQRe_C2pAplA64dO8ZyMAMtmpKUtqV8e7apAvd_vfef6lI2zrGrckSJ1Zn1anT75YoP2TeAd9pvlWd67wuU9K7og_a9LWyPC-H-3cwUhu_NZKjDjGTCUyJoUcAsEWyQQnF0mAFA_gyZGA0malncV6cAx-MAVDvD-4VN8k:1tED7T:20Gd-dkbSQsr0PSDYcQ-amctl4cyKXGoWQpmJhZDU0U','2024-12-05 19:45:39.742030'),('pcg4imknhz74v94lriezzgqzyo7v0etr','.eJxVjEEOwiAQRe_C2pAplA64dO8ZyMAMtmpKUtqV8e7apAvd_vfef6lI2zrGrckSJ1Zn1anT75YoP2TeAd9pvlWd67wuU9K7og_a9LWyPC-H-3cwUhu_NZKjDjGTCUyJoUcAsEWyQQnF0mAFA_gyZGA0malncV6cAx-MAVDvD-4VN8k:1tEGQ3:ao6MJFS6hO8mgbfT6PSCV79EcGEn6V6CWRnDLfi0PZ8','2024-12-05 23:17:03.445965');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards_app_loyaltyrewards`
--

DROP TABLE IF EXISTS `rewards_app_loyaltyrewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewards_app_loyaltyrewards` (
  `reward_id` int NOT NULL AUTO_INCREMENT,
  `reward_description` varchar(300) NOT NULL,
  `points_required` int NOT NULL,
  `reward_name` varchar(100) NOT NULL,
  PRIMARY KEY (`reward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_loyaltyrewards`
--

LOCK TABLES `rewards_app_loyaltyrewards` WRITE;
/*!40000 ALTER TABLE `rewards_app_loyaltyrewards` DISABLE KEYS */;
INSERT INTO `rewards_app_loyaltyrewards` VALUES (8,'This is the first reward',10,'Reward 1');
/*!40000 ALTER TABLE `rewards_app_loyaltyrewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards_app_reward`
--

DROP TABLE IF EXISTS `rewards_app_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewards_app_reward` (
  `reward_id` int NOT NULL AUTO_INCREMENT,
  `points` int NOT NULL,
  `reward_date_timestamp` varchar(255) NOT NULL,
  `User_User_ID` int NOT NULL,
  PRIMARY KEY (`reward_id`),
  UNIQUE KEY `points` (`points`),
  UNIQUE KEY `reward_date_timestamp` (`reward_date_timestamp`),
  KEY `rewards_app_reward_User_User_ID_5ead1ec8_fk_rewards_a` (`User_User_ID`),
  CONSTRAINT `rewards_app_reward_User_User_ID_5ead1ec8_fk_rewards_a` FOREIGN KEY (`User_User_ID`) REFERENCES `rewards_app_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_reward`
--

LOCK TABLES `rewards_app_reward` WRITE;
/*!40000 ALTER TABLE `rewards_app_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `rewards_app_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards_app_tasks`
--

DROP TABLE IF EXISTS `rewards_app_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewards_app_tasks` (
  `task_id` int NOT NULL AUTO_INCREMENT,
  `task_name` varchar(100) NOT NULL,
  `task_description` varchar(300) NOT NULL,
  `points` int NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_tasks`
--

LOCK TABLES `rewards_app_tasks` WRITE;
/*!40000 ALTER TABLE `rewards_app_tasks` DISABLE KEYS */;
INSERT INTO `rewards_app_tasks` VALUES (3,'Purchase 1 item','first task',20);
/*!40000 ALTER TABLE `rewards_app_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards_app_transaction`
--

DROP TABLE IF EXISTS `rewards_app_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewards_app_transaction` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `User_User_ID` int NOT NULL,
  `reward_cost` int NOT NULL,
  `reward_name` varchar(100) NOT NULL,
  `coupon` varchar(10) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `rewards_app_transact_User_User_ID_0617e28a_fk_rewards_a` (`User_User_ID`),
  CONSTRAINT `rewards_app_transact_User_User_ID_0617e28a_fk_rewards_a` FOREIGN KEY (`User_User_ID`) REFERENCES `rewards_app_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_transaction`
--

LOCK TABLES `rewards_app_transaction` WRITE;
/*!40000 ALTER TABLE `rewards_app_transaction` DISABLE KEYS */;
INSERT INTO `rewards_app_transaction` VALUES (19,'2024-11-22',5,10,'Reward 1','vAiEqquQ'),(20,'2024-11-22',5,10,'Reward 1','23FyML');
/*!40000 ALTER TABLE `rewards_app_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards_app_user`
--

DROP TABLE IF EXISTS `rewards_app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewards_app_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `loyalty_score` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_user`
--

LOCK TABLES `rewards_app_user` WRITE;
/*!40000 ALTER TABLE `rewards_app_user` DISABLE KEYS */;
INSERT INTO `rewards_app_user` VALUES (1,24,'1','123','user'),(2,21,'Greys','123','user'),(3,20,'lucy','123','user'),(4,9999314,'Admin','123','admin'),(5,100,'Test','123','user');
/*!40000 ALTER TABLE `rewards_app_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 23:23:50
