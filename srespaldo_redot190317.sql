-- MySQL dump 10.13  Distrib 5.5.60, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: reddate_prod
-- ------------------------------------------------------
-- Server version	5.5.60-0+deb7u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','production','2019-01-08 20:47:07','2019-01-08 20:47:31');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `character` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_characters_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_53a8ea746c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,1,7,'2019-01-09 22:36:00','2019-01-09 22:36:00'),(2,1,8,'2019-01-09 22:36:00','2019-01-09 22:36:00'),(3,1,11,'2019-01-09 22:36:00','2019-01-09 22:36:00'),(31,2,3,'2019-01-09 23:58:41','2019-01-09 23:58:41'),(32,2,6,'2019-01-09 23:58:41','2019-01-09 23:58:41'),(33,2,7,'2019-01-09 23:58:41','2019-01-09 23:58:41');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followings`
--

DROP TABLE IF EXISTS `followings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `follower_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_followings_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followings`
--

LOCK TABLES `followings` WRITE;
/*!40000 ALTER TABLE `followings` DISABLE KEYS */;
INSERT INTO `followings` VALUES (1,2,3,'2019-01-09 23:49:10','2019-01-09 23:49:10'),(2,3,2,'2019-01-09 23:57:01','2019-01-09 23:57:01');
/*!40000 ALTER TABLE `followings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_users`
--

DROP TABLE IF EXISTS `gallery_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `picture_file_name` varchar(255) DEFAULT NULL,
  `picture_content_type` varchar(255) DEFAULT NULL,
  `picture_file_size` bigint(20) DEFAULT NULL,
  `picture_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_gallery_users_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_14e8fe64f8` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_users`
--

LOCK TABLES `gallery_users` WRITE;
/*!40000 ALTER TABLE `gallery_users` DISABLE KEYS */;
INSERT INTO `gallery_users` VALUES (1,2,'PIC091.JPG','image/jpeg',128950,'2019-01-09 23:55:23','2019-01-09 23:55:23','2019-01-09 23:55:23'),(2,2,'PIC079.JPG','image/jpeg',166169,'2019-01-09 23:55:29','2019-01-09 23:55:29','2019-01-09 23:55:29'),(3,3,'PIC002.JPG','image/jpeg',94131,'2019-01-09 23:55:47','2019-01-09 23:55:47','2019-01-09 23:55:47'),(4,3,'PIC003.JPG','image/jpeg',69632,'2019-01-09 23:55:51','2019-01-09 23:55:51','2019-01-09 23:55:51');
/*!40000 ALTER TABLE `gallery_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roomchat_id` bigint(20) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `recipment_id` int(11) DEFAULT NULL,
  `message` text,
  `un_read` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `adjunto_file_name` varchar(255) DEFAULT NULL,
  `adjunto_content_type` varchar(255) DEFAULT NULL,
  `adjunto_file_size` bigint(20) DEFAULT NULL,
  `adjunto_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_messages_on_roomchat_id` (`roomchat_id`),
  CONSTRAINT `fk_rails_7e770ab6c7` FOREIGN KEY (`roomchat_id`) REFERENCES `roomchats` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,2,3,'hola como estas ni;a',0,'2019-01-09 23:49:20','2019-01-09 23:49:20',NULL,NULL,NULL,NULL),(2,1,3,2,'bien y tu?',0,'2019-01-09 23:49:28','2019-01-09 23:49:28',NULL,NULL,NULL,NULL),(3,1,3,2,'hola gio miram e',0,'2019-01-09 23:59:12','2019-01-09 23:59:12','PIC022.JPG','image/jpeg',90449,'2019-01-09 23:59:12'),(4,1,2,3,'ok',0,'2019-01-09 23:59:44','2019-01-09 23:59:44',NULL,NULL,NULL,NULL),(5,1,3,2,'jeje',0,'2019-01-10 00:00:07','2019-01-10 00:00:07',NULL,NULL,NULL,NULL),(6,2,3,1,'oye',1,'2019-01-10 00:00:45','2019-01-10 00:00:45',NULL,NULL,NULL,NULL),(7,1,3,2,'oye',0,'2019-01-10 00:01:04','2019-01-10 00:01:04',NULL,NULL,NULL,NULL),(8,1,3,2,'hey xp',0,'2019-01-10 00:01:13','2019-01-10 00:01:13',NULL,NULL,NULL,NULL),(9,1,2,3,'hola',1,'2019-01-11 14:24:03','2019-01-11 14:24:03','49569626_2390653407628832_1565173884678832128_n.jpg','image/jpeg',65667,'2019-01-11 14:24:03'),(10,1,2,3,'hola',1,'2019-01-11 14:24:14','2019-01-11 14:24:14',NULL,NULL,NULL,NULL),(11,1,2,3,'Como estas',1,'2019-01-11 14:24:19','2019-01-11 14:24:19',NULL,NULL,NULL,NULL),(12,1,2,3,'Quieres verme',1,'2019-01-11 14:24:31','2019-01-11 14:24:31','45859290_10204889989485026_5176241525113225216_o.jpg','image/jpeg',359961,'2019-01-11 14:24:30'),(13,1,2,3,'hola',1,'2019-01-11 14:39:48','2019-01-11 14:39:48',NULL,NULL,NULL,NULL),(14,1,2,3,'hola como estas',1,'2019-01-11 16:01:52','2019-01-11 16:01:52',NULL,NULL,NULL,NULL),(15,1,2,3,'jeje te ador',1,'2019-01-11 16:02:00','2019-01-11 16:02:00','49569626_2390653407628832_1565173884678832128_n.jpg','image/jpeg',65667,'2019-01-11 16:02:00'),(16,1,2,3,'hola peuqe;a',1,'2019-01-11 17:41:25','2019-01-11 17:41:25',NULL,NULL,NULL,NULL),(17,1,2,3,'fd',1,'2019-01-11 17:41:30','2019-01-11 17:41:30','49569626_2390653407628832_1565173884678832128_n.jpg','image/jpeg',65667,'2019-01-11 17:41:30'),(18,1,2,3,'hola',1,'2019-01-11 18:34:41','2019-01-11 18:34:41',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_notifications_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_b080fb4855` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,'Ana visited your profile','/users/3/my_profile','2019-01-09 23:48:53','2019-01-09 23:48:53'),(2,3,'gio ha visitado tu perfil','/users/2/my_profile','2019-01-09 23:49:03','2019-01-09 23:49:03'),(3,2,'Ana ha visitado tu perfil','/users/3/my_profile','2019-01-09 23:49:06','2019-01-09 23:49:06'),(4,3,'gio te ha agregado a favoritos','/users/2/my_profile','2019-01-09 23:49:10','2019-01-09 23:49:10'),(5,3,'gio te ha enviado un mensaje','/users/2/message_users','2019-01-09 23:49:20','2019-01-09 23:49:20'),(6,2,'Ana te ha enviado un mensaje','/users/3/message_users','2019-01-09 23:49:28','2019-01-09 23:49:28'),(7,2,'Ana visited your profile','/users/3/my_profile','2019-01-09 23:56:09','2019-01-09 23:56:09'),(8,2,'Ana visited your profile','/users/3/my_profile','2019-01-09 23:56:58','2019-01-09 23:56:58'),(9,2,'Ana added you to favorites','/users/3/my_profile','2019-01-09 23:57:01','2019-01-09 23:57:01'),(10,2,'Ana te ha enviado un mensaje','/users/3/message_users','2019-01-09 23:59:12','2019-01-09 23:59:12'),(11,3,'gio te ha enviado un mensaje','/users/2/message_users','2019-01-09 23:59:44','2019-01-09 23:59:44'),(12,2,'Ana te ha enviado un mensaje','/users/3/message_users','2019-01-10 00:00:07','2019-01-10 00:00:07'),(13,1,'Ana ha visitado tu perfil','/users/3/my_profile','2019-01-10 00:00:40','2019-01-10 00:00:40'),(14,1,'Ana te ha enviado un mensaje','/users/3/message_users','2019-01-10 00:00:45','2019-01-10 00:00:45'),(15,2,'Ana te ha enviado un mensaje','/users/3/message_users','2019-01-10 00:01:04','2019-01-10 00:01:04'),(16,2,'Ana te ha enviado un mensaje','/users/3/message_users','2019-01-10 00:01:13','2019-01-10 00:01:13'),(17,3,'gio sent you a message','/users/2/message_users','2019-01-11 14:24:03','2019-01-11 14:24:03'),(18,3,'gio sent you a message','/users/2/message_users','2019-01-11 14:24:14','2019-01-11 14:24:14'),(19,3,'gio sent you a message','/users/2/message_users','2019-01-11 14:24:19','2019-01-11 14:24:19'),(20,3,'gio sent you a message','/users/2/message_users','2019-01-11 14:24:31','2019-01-11 14:24:31'),(21,3,'gio sent you a message','/users/2/message_users','2019-01-11 14:39:48','2019-01-11 14:39:48'),(22,3,'gio visited your profile','/users/2/my_profile','2019-01-11 16:01:37','2019-01-11 16:01:37'),(23,3,'gio sent you a message','/users/2/message_users','2019-01-11 16:01:52','2019-01-11 16:01:52'),(24,3,'gio sent you a message','/users/2/message_users','2019-01-11 16:02:00','2019-01-11 16:02:00'),(25,3,'gio visited your profile','/users/2/my_profile','2019-01-11 17:14:03','2019-01-11 17:14:03'),(26,3,'gio visited your profile','/users/2/my_profile','2019-01-11 17:14:47','2019-01-11 17:14:47'),(27,3,'gio ha visitado tu perfil','/users/2/my_profile','2019-01-11 17:41:17','2019-01-11 17:41:17'),(28,3,'gio te ha enviado un mensaje','/users/2/message_users','2019-01-11 17:41:25','2019-01-11 17:41:25'),(29,3,'gio te ha enviado un mensaje','/users/2/message_users','2019-01-11 17:41:30','2019-01-11 17:41:30'),(30,3,'gio te ha enviado un mensaje','/users/2/message_users','2019-01-11 18:34:41','2019-01-11 18:34:41'),(31,3,'gio ha visitado tu perfil','/users/2/my_profile','2019-01-11 18:34:47','2019-01-11 18:34:47');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preferences` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `preference` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_preferences_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_87f1c9c7bd` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES (1,1,1,'2019-01-09 22:36:00','2019-01-09 22:36:00'),(2,1,4,'2019-01-09 22:36:00','2019-01-09 22:36:00'),(3,1,7,'2019-01-09 22:36:00','2019-01-09 22:36:00'),(31,2,3,'2019-01-09 23:58:41','2019-01-09 23:58:41'),(32,2,4,'2019-01-09 23:58:41','2019-01-09 23:58:41'),(33,2,7,'2019-01-09 23:58:41','2019-01-09 23:58:41');
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomchats`
--

DROP TABLE IF EXISTS `roomchats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomchats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_a` int(11) DEFAULT NULL,
  `user_b` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomchats`
--

LOCK TABLES `roomchats` WRITE;
/*!40000 ALTER TABLE `roomchats` DISABLE KEYS */;
INSERT INTO `roomchats` VALUES (1,2,3,'2019-01-09 23:49:15','2019-01-09 23:49:15'),(2,3,1,'2019-01-10 00:00:42','2019-01-10 00:00:42');
/*!40000 ALTER TABLE `roomchats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20180910162545'),('20180925214021'),('20180925214625'),('20181003203808'),('20181003203826'),('20181003203908'),('20181009223054'),('20181015182431'),('20181108225622'),('20181120230446'),('20181123235024'),('20181126191146'),('20181127224828'),('20181203201536'),('20181220193704'),('20190103181905'),('20190103215933');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suscriptions`
--

DROP TABLE IF EXISTS `suscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suscriptions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_suscriptions_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_2077536774` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suscriptions`
--

LOCK TABLES `suscriptions` WRITE;
/*!40000 ALTER TABLE `suscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `suscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `premium_account` tinyint(1) DEFAULT '0',
  `sex` int(11) DEFAULT NULL,
  `search` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `pais` varchar(255) DEFAULT 'MX',
  `estado` varchar(255) DEFAULT NULL,
  `poblacion` varchar(255) DEFAULT NULL,
  `pelo` int(11) DEFAULT NULL,
  `ojos` int(11) DEFAULT NULL,
  `cuerpo` int(11) DEFAULT NULL,
  `estatura` int(11) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `fumador` int(11) DEFAULT NULL,
  `descripcion` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `picture_file_name` varchar(255) DEFAULT NULL,
  `picture_content_type` varchar(255) DEFAULT NULL,
  `picture_file_size` bigint(20) DEFAULT NULL,
  `picture_updated_at` datetime DEFAULT NULL,
  `visits_count` int(11) DEFAULT '0',
  `old` int(11) DEFAULT '0',
  `num_messages` int(11) DEFAULT '0',
  `last_update_message` date DEFAULT '2019-01-09',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'zepedaroque@hotmail.com','$2a$11$8snlfVrZskof4OftxwEeLex1CF8aSF6YC.Old9PvWue1vWnHc0B0W',NULL,NULL,NULL,'JuLv4iotKxrb8MAJYsqo','2019-01-09 22:33:50','2019-01-08 23:11:13',NULL,0,1,2,'Gio',6,'1976-01-01','MX','JAL','Santa Anita',4,2,1,149,44,3,'Im a good personal ','2019-01-08 23:11:13','2019-01-10 00:00:40',NULL,NULL,NULL,NULL,2,43,0,'2019-01-09'),(2,'zepeda.roque32@gmail.com','$2a$11$aEcMrpIMhnx833r4jrcUvO9FStgl7Doe6IXZ.bxyOLsg0.Ieg80si',NULL,NULL,NULL,'o3teZEM2TYUuuoncdjmC','2019-01-09 22:30:10','2019-01-08 23:14:27',NULL,0,1,2,'gio',1,'1989-01-01','MX','',NULL,5,2,1,175,72,3,'I m intersting person','2019-01-08 23:14:27','2019-01-11 22:17:32','PIC138.JPG','image/jpeg',101376,'2019-01-11 17:14:22',3,30,0,'2019-01-09'),(3,'soporte@jplatinoamerica.com','$2a$11$UDLf2TtWER7EyiSRUwKzCe38ONWzOFXDVrp94L4XO7ogM./6Fdm0q',NULL,NULL,NULL,'phm2iiMCXgs7d1XEzvit','2019-01-09 23:47:42','2019-01-09 23:47:13',NULL,1,2,1,'Ana',NULL,NULL,'MX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-01-09 23:47:13','2019-01-11 18:34:47','49569626_2390653407628832_1565173884678832128_n.jpg','image/jpeg',65667,'2019-01-09 23:53:48',6,0,6,'2019-01-09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `viewer_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_views_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_6a13b72c28` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES (1,3,1,'2019-01-09 23:48:53','2019-01-09 23:48:53'),(2,2,3,'2019-01-09 23:49:03','2019-01-09 23:49:03'),(3,3,2,'2019-01-09 23:49:06','2019-01-09 23:49:06'),(4,3,2,'2019-01-09 23:56:09','2019-01-09 23:56:09'),(5,3,2,'2019-01-09 23:56:58','2019-01-09 23:56:58'),(6,3,1,'2019-01-10 00:00:40','2019-01-10 00:00:40'),(7,2,3,'2019-01-11 16:01:37','2019-01-11 16:01:37'),(8,2,3,'2019-01-11 17:14:03','2019-01-11 17:14:03'),(9,2,3,'2019-01-11 17:14:47','2019-01-11 17:14:47'),(10,2,3,'2019-01-11 17:41:17','2019-01-11 17:41:17'),(11,2,3,'2019-01-11 18:34:47','2019-01-11 18:34:47');
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wants`
--

DROP TABLE IF EXISTS `wants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `want` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_wants_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_f82cc7d80f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wants`
--

LOCK TABLES `wants` WRITE;
/*!40000 ALTER TABLE `wants` DISABLE KEYS */;
INSERT INTO `wants` VALUES (1,1,1,'2019-01-09 22:36:00','2019-01-09 22:36:00'),(2,1,4,'2019-01-09 22:36:00','2019-01-09 22:36:00'),(3,1,6,'2019-01-09 22:36:00','2019-01-09 22:36:00'),(31,2,5,'2019-01-09 23:58:41','2019-01-09 23:58:41'),(32,2,7,'2019-01-09 23:58:41','2019-01-09 23:58:41'),(33,2,11,'2019-01-09 23:58:41','2019-01-09 23:58:41');
/*!40000 ALTER TABLE `wants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-17  4:26:01
