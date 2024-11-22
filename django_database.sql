-- MySQL dump 10.13  Distrib 9.0.1, for macos13.7 (arm64)
--
-- Host: localhost    Database: rewards_database
-- ------------------------------------------------------
-- Server version	9.1.0

CREATE DATABASE IF NOT EXISTS rewards_database;
USE rewards_database;

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add reward',7,'add_reward'),(26,'Can change reward',7,'change_reward'),(27,'Can delete reward',7,'delete_reward'),(28,'Can view reward',7,'view_reward'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add loyalty point',9,'add_loyaltypoint'),(34,'Can change loyalty point',9,'change_loyaltypoint'),(35,'Can delete loyalty point',9,'delete_loyaltypoint'),(36,'Can view loyalty point',9,'view_loyaltypoint'),(37,'Can add transaction',10,'add_transaction'),(38,'Can change transaction',10,'change_transaction'),(39,'Can delete transaction',10,'delete_transaction'),(40,'Can view transaction',10,'view_transaction'),(41,'Can add reward redemption',11,'add_rewardredemption'),(42,'Can change reward redemption',11,'change_rewardredemption'),(43,'Can delete reward redemption',11,'delete_rewardredemption'),(44,'Can view reward redemption',11,'view_rewardredemption'),(45,'Can add loyalty rewards',12,'add_loyaltyrewards'),(46,'Can change loyalty rewards',12,'change_loyaltyrewards'),(47,'Can delete loyalty rewards',12,'delete_loyaltyrewards'),(48,'Can view loyalty rewards',12,'view_loyaltyrewards');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'rewards_app','loyaltypoint'),(12,'rewards_app','loyaltyrewards'),(7,'rewards_app','reward'),(11,'rewards_app','rewardredemption'),(10,'rewards_app','transaction'),(8,'rewards_app','user'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-13 19:19:29.811396'),(2,'auth','0001_initial','2024-11-13 19:19:29.939774'),(3,'admin','0001_initial','2024-11-13 19:19:29.977652'),(4,'admin','0002_logentry_remove_auto_add','2024-11-13 19:19:29.982293'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-13 19:19:29.986679'),(6,'contenttypes','0002_remove_content_type_name','2024-11-13 19:19:30.011601'),(7,'auth','0002_alter_permission_name_max_length','2024-11-13 19:19:30.026765'),(8,'auth','0003_alter_user_email_max_length','2024-11-13 19:19:30.037598'),(9,'auth','0004_alter_user_username_opts','2024-11-13 19:19:30.040902'),(10,'auth','0005_alter_user_last_login_null','2024-11-13 19:19:30.055422'),(11,'auth','0006_require_contenttypes_0002','2024-11-13 19:19:30.055868'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-13 19:19:30.059094'),(13,'auth','0008_alter_user_username_max_length','2024-11-13 19:19:30.074247'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-13 19:19:30.094729'),(15,'auth','0010_alter_group_name_max_length','2024-11-13 19:19:30.103569'),(16,'auth','0011_update_proxy_permissions','2024-11-13 19:19:30.107012'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-13 19:19:30.124320'),(18,'rewards_app','0001_initial','2024-11-13 19:19:30.221226'),(19,'sessions','0001_initial','2024-11-13 19:19:30.227724');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards_app_loyaltypoint`
--

DROP TABLE IF EXISTS `rewards_app_loyaltypoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewards_app_loyaltypoint` (
  `points_id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(300) NOT NULL,
  `LoyaltyRewards_RewardID` int NOT NULL,
  PRIMARY KEY (`points_id`),
  KEY `rewards_app_loyaltyp_LoyaltyRewards_Rewar_ecdbe5a2_fk_rewards_a` (`LoyaltyRewards_RewardID`),
  CONSTRAINT `rewards_app_loyaltyp_LoyaltyRewards_Rewar_ecdbe5a2_fk_rewards_a` FOREIGN KEY (`LoyaltyRewards_RewardID`) REFERENCES `rewards_app_reward` (`reward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_loyaltypoint`
--

LOCK TABLES `rewards_app_loyaltypoint` WRITE;
/*!40000 ALTER TABLE `rewards_app_loyaltypoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `rewards_app_loyaltypoint` ENABLE KEYS */;
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
  `redemption_date` date DEFAULT NULL,
  `points` int NOT NULL,
  `User_User_ID` int NOT NULL,
  PRIMARY KEY (`reward_id`),
  KEY `rewards_app_loyaltyr_User_User_ID_35eec646_fk_rewards_a` (`User_User_ID`),
  CONSTRAINT `rewards_app_loyaltyr_User_User_ID_35eec646_fk_rewards_a` FOREIGN KEY (`User_User_ID`) REFERENCES `rewards_app_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_loyaltyrewards`
--

LOCK TABLES `rewards_app_loyaltyrewards` WRITE;
/*!40000 ALTER TABLE `rewards_app_loyaltyrewards` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_reward`
--

LOCK TABLES `rewards_app_reward` WRITE;
/*!40000 ALTER TABLE `rewards_app_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `rewards_app_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards_app_rewardredemption`
--

DROP TABLE IF EXISTS `rewards_app_rewardredemption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewards_app_rewardredemption` (
  `redemption_id` int NOT NULL AUTO_INCREMENT,
  `redemption_date` date DEFAULT NULL,
  `LoyaltyRewards_RewardID` int NOT NULL,
  `Rewards_reward_ID` int NOT NULL,
  `User_User_ID` int NOT NULL,
  PRIMARY KEY (`redemption_id`),
  KEY `rewards_app_rewardre_LoyaltyRewards_Rewar_b3eca3db_fk_rewards_a` (`LoyaltyRewards_RewardID`),
  KEY `rewards_app_rewardre_Rewards_reward_ID_3581b0aa_fk_rewards_a` (`Rewards_reward_ID`),
  KEY `rewards_app_rewardre_User_User_ID_f91513a4_fk_rewards_a` (`User_User_ID`),
  CONSTRAINT `rewards_app_rewardre_LoyaltyRewards_Rewar_b3eca3db_fk_rewards_a` FOREIGN KEY (`LoyaltyRewards_RewardID`) REFERENCES `rewards_app_reward` (`reward_id`),
  CONSTRAINT `rewards_app_rewardre_Rewards_reward_ID_3581b0aa_fk_rewards_a` FOREIGN KEY (`Rewards_reward_ID`) REFERENCES `rewards_app_reward` (`reward_id`),
  CONSTRAINT `rewards_app_rewardre_User_User_ID_f91513a4_fk_rewards_a` FOREIGN KEY (`User_User_ID`) REFERENCES `rewards_app_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_rewardredemption`
--

LOCK TABLES `rewards_app_rewardredemption` WRITE;
/*!40000 ALTER TABLE `rewards_app_rewardredemption` DISABLE KEYS */;
/*!40000 ALTER TABLE `rewards_app_rewardredemption` ENABLE KEYS */;
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
  `LoyaltyPoints_PointsID` int NOT NULL,
  `User_User_ID` int NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `rewards_app_transact_LoyaltyPoints_Points_86a2f50f_fk_rewards_a` (`LoyaltyPoints_PointsID`),
  KEY `rewards_app_transact_User_User_ID_0617e28a_fk_rewards_a` (`User_User_ID`),
  CONSTRAINT `rewards_app_transact_LoyaltyPoints_Points_86a2f50f_fk_rewards_a` FOREIGN KEY (`LoyaltyPoints_PointsID`) REFERENCES `rewards_app_loyaltypoint` (`points_id`),
  CONSTRAINT `rewards_app_transact_User_User_ID_0617e28a_fk_rewards_a` FOREIGN KEY (`User_User_ID`) REFERENCES `rewards_app_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_transaction`
--

LOCK TABLES `rewards_app_transaction` WRITE;
/*!40000 ALTER TABLE `rewards_app_transaction` DISABLE KEYS */;
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
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards_app_user`
--

LOCK TABLES `rewards_app_user` WRITE;
/*!40000 ALTER TABLE `rewards_app_user` DISABLE KEYS */;
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

-- Dump completed on 2024-11-13 14:21:19
