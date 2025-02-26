/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: mariadb    Database: photoprism
-- ------------------------------------------------------
-- Server version	11.7.2-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_uid` varbinary(42) DEFAULT NULL,
  `parent_uid` varbinary(42) DEFAULT '',
  `album_slug` varbinary(160) DEFAULT NULL,
  `album_path` varchar(1024) DEFAULT NULL,
  `album_type` varbinary(8) DEFAULT x'616c62756d',
  `album_title` varchar(160) DEFAULT NULL,
  `album_location` varchar(160) DEFAULT NULL,
  `album_category` varchar(100) DEFAULT NULL,
  `album_caption` varchar(1024) DEFAULT NULL,
  `album_description` varchar(2048) DEFAULT NULL,
  `album_notes` varchar(1024) DEFAULT NULL,
  `album_filter` varbinary(2048) DEFAULT '',
  `album_order` varbinary(32) DEFAULT NULL,
  `album_template` varbinary(255) DEFAULT NULL,
  `album_state` varchar(100) DEFAULT NULL,
  `album_country` varbinary(2) DEFAULT x'7a7a',
  `album_year` int(11) DEFAULT NULL,
  `album_month` int(11) DEFAULT NULL,
  `album_day` int(11) DEFAULT NULL,
  `album_favorite` tinyint(1) DEFAULT NULL,
  `album_private` tinyint(1) DEFAULT NULL,
  `thumb` varbinary(128) DEFAULT '',
  `thumb_src` varbinary(8) DEFAULT '',
  `created_by` varbinary(42) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uix_albums_album_uid` (`album_uid`),
  KEY `idx_albums_thumb` (`thumb`),
  KEY `idx_albums_published_at` (`published_at`),
  KEY `idx_albums_deleted_at` (`deleted_at`),
  KEY `idx_albums_album_slug` (`album_slug`),
  KEY `idx_albums_album_path` (`album_path`(768)),
  KEY `idx_albums_album_title` (`album_title`),
  KEY `idx_albums_album_state` (`album_state`),
  KEY `idx_albums_country_year_month` (`album_country`,`album_year`,`album_month`),
  KEY `idx_albums_album_category` (`album_category`),
  KEY `idx_albums_ymd` (`album_day`),
  KEY `idx_albums_created_by` (`created_by`),
  KEY `idx_albums_album_filter` (`album_filter`(512))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES
(1,'asru0j32mnbq7lef','','2025-02','2025/02','folder','February 2025','','','','','','path:2025/02 public:true','added','','','zz',2025,2,1,0,0,'ad523f2f3166571e0bc307d0d89e4dcbd271f985','','','2025-02-17 14:35:27','2025-02-17 14:35:27',NULL,NULL),
(2,'asru0ppf8eeimw5c','','2016-08','2016/08','folder','August 2016','','','','','','path:2016/08 public:true','added','','','zz',2016,8,1,0,0,NULL,'','','2025-02-17 14:39:25','2025-02-17 14:39:25',NULL,NULL),
(3,'asru0pppx9n5vux1','','2019-05','2019/05','folder','May 2019','','','','','','path:2019/05 public:true','added','','','zz',2019,5,4,0,0,'14217a81d59e182d7aefe5cb7f6d7bac103fe386','','','2025-02-17 14:39:25','2025-02-17 14:39:25',NULL,NULL),
(4,'asru0pql2t1h7mms','','2015-11','2015/11','folder','November 2015','','','','','','path:2015/11 public:true','added','','','zz',2015,11,1,0,0,NULL,'','','2025-02-17 14:39:26','2025-02-17 14:39:26',NULL,NULL),
(5,'asru0ptlivoni6bg','','2011-10','2011/10','folder','October 2011','','','','','','path:2011/10 public:true','added','','','zz',2011,10,1,0,0,NULL,'','','2025-02-17 14:39:29','2025-02-17 14:39:29',NULL,NULL),
(6,'asru0pwmec2ujtx6','','1919-05','1919/05','folder','05','','','','','','path:1919/05 public:true','added','','','zz',2025,2,0,0,0,NULL,'','','2025-02-17 14:39:32','2025-02-17 14:39:32',NULL,NULL),
(7,'asru0q0a2du9bqf4','','august-2016','','month','August 2016','','','','','','public:true year:2016 month:8','oldest','','','zz',2016,8,0,0,0,NULL,'','','2025-02-17 14:39:36','2025-02-22 15:44:58',NULL,'2025-02-22 15:44:58'),
(8,'asru0q0e2hnzvthf','','may-1919','','month','May 1919','','','','','','public:true year:1919 month:5','oldest','','','zz',1919,5,0,0,0,NULL,'','','2025-02-17 14:39:36','2025-02-22 15:44:58',NULL,'2025-02-22 15:44:58'),
(9,'asru0q0u8j0xeptv','','november-2015','','month','November 2015','','','','','','public:true year:2015 month:11','oldest','','','zz',2015,11,0,0,0,NULL,'','','2025-02-17 14:39:36','2025-02-22 15:44:58',NULL,'2025-02-22 15:44:58'),
(10,'asru242nyaccu27b','','may-2019','','month','May 2019','','','','','','public:true year:2019 month:5','oldest','','','zz',2019,5,0,0,0,'14217a81d59e182d7aefe5cb7f6d7bac103fe386','','','2025-02-17 15:09:38','2025-02-17 15:09:38',NULL,NULL),
(11,'asru0q0k9dfeolhm','','france-la-reunion','','state','La Réunion','France','','','','','public:true country:fr state:\"La Réunion\"','newest','','La Réunion','fr',0,0,0,0,0,'','','','2025-02-17 14:39:36','2025-02-17 14:39:36',NULL,NULL),
(12,'asru0q0urtstsf8l','','germany-baden-wurttemberg','','state','Baden-Württemberg','Germany','','','','','public:true country:de state:\"Baden-Württemberg\"','newest','','Baden-Württemberg','de',0,0,0,0,0,'','','','2025-02-17 14:39:36','2025-02-17 14:39:36',NULL,NULL),
(13,'ass3d1w8jqvl4frg','','2010-03','2010/03','folder','March 2010','','','','','','path:2010/03 public:true','added','','','zz',2010,3,8,0,0,'2f38d7f03f8011e08769cb9397826a8fd492e7b7','','','2025-02-22 15:44:20','2025-02-22 15:44:20',NULL,NULL),
(14,'ass3d1wfp88wk1ml','','2017-02','2017/02','folder','February 2017','','','','','','path:2017/02 public:true','added','','','zz',2017,2,15,0,0,'4a38481f646f473de5035a321520a18c06f459fd','','','2025-02-22 15:44:20','2025-02-22 15:44:20',NULL,NULL),
(15,'ass3d291up76nyxk','','february-2017','','month','February 2017','','','','','','public:true year:2017 month:2','oldest','','','zz',2017,2,0,0,0,'4a38481f646f473de5035a321520a18c06f459fd','','','2025-02-22 15:44:33','2025-02-22 15:44:33',NULL,NULL),
(16,'ass3d29totjukfit','','november-2013','','month','November 2013','','','','','','public:true year:2013 month:11','oldest','','','zz',2013,11,0,0,0,'10283f82e817ca1f994364b707baf3a3d139d4e6','','','2025-02-22 15:44:33','2025-02-22 15:44:33',NULL,NULL),
(17,'ass3d299zuagiwjz','','south-africa-kwazulu-natal','','state','KwaZulu-Natal','South Africa','','','','','public:true country:za state:\"KwaZulu-Natal\"','newest','','KwaZulu-Natal','za',0,0,0,0,0,'','','','2025-02-22 15:44:33','2025-02-22 15:44:33',NULL,NULL),
(18,'ass3d29ty9xwclsp','','south-africa-western-cape','','state','Western Cape','South Africa','','','','','public:true country:za state:\"Western Cape\"','newest','','Western Cape','za',0,0,0,0,0,'','','','2025-02-22 15:44:33','2025-02-22 15:44:33',NULL,NULL),
(19,'ass3d3den4hxlzwb','','april-2019','','month','April 2019','','','','','','public:true year:2019 month:4','oldest','','','zz',2019,4,0,0,0,'1d40e095f4d4eb1cef22ecba6cfadb0177870d5d','','','2025-02-22 15:45:13','2025-02-22 15:45:13',NULL,NULL),
(20,'ass3d3da71pcv92g','','march-2010','','month','March 2010','','','','','','public:true year:2010 month:3','oldest','','','zz',2010,3,0,0,0,'2f38d7f03f8011e08769cb9397826a8fd492e7b7','','','2025-02-22 15:45:13','2025-02-22 15:45:13',NULL,NULL);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums_users`
--

DROP TABLE IF EXISTS `albums_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums_users` (
  `uid` varbinary(42) NOT NULL,
  `user_uid` varbinary(42) NOT NULL,
  `team_uid` varbinary(42) DEFAULT NULL,
  `perm` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`uid`,`user_uid`),
  KEY `idx_albums_users_user_uid` (`user_uid`),
  KEY `idx_albums_users_team_uid` (`team_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums_users`
--

LOCK TABLES `albums_users` WRITE;
/*!40000 ALTER TABLE `albums_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `albums_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_clients`
--

DROP TABLE IF EXISTS `auth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_clients` (
  `client_uid` varbinary(42) NOT NULL,
  `user_uid` varbinary(42) DEFAULT '',
  `user_name` varchar(200) DEFAULT NULL,
  `client_name` varchar(200) DEFAULT NULL,
  `client_role` varchar(64) DEFAULT '',
  `client_type` varbinary(16) DEFAULT NULL,
  `client_url` varbinary(255) DEFAULT '',
  `callback_url` varbinary(255) DEFAULT '',
  `auth_provider` varbinary(128) DEFAULT '',
  `auth_method` varbinary(128) DEFAULT '',
  `auth_scope` varchar(1024) DEFAULT '',
  `auth_expires` bigint(20) DEFAULT NULL,
  `auth_tokens` bigint(20) DEFAULT NULL,
  `auth_enabled` tinyint(1) DEFAULT NULL,
  `last_active` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`client_uid`),
  KEY `idx_auth_clients_user_uid` (`user_uid`),
  KEY `idx_auth_clients_user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_clients`
--

LOCK TABLES `auth_clients` WRITE;
/*!40000 ALTER TABLE `auth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_sessions`
--

DROP TABLE IF EXISTS `auth_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_sessions` (
  `id` varbinary(2048) NOT NULL,
  `user_uid` varbinary(42) DEFAULT '',
  `user_name` varchar(200) DEFAULT NULL,
  `client_uid` varbinary(42) DEFAULT '',
  `client_name` varchar(200) DEFAULT '',
  `client_ip` varchar(64) DEFAULT NULL,
  `auth_provider` varbinary(128) DEFAULT '',
  `auth_method` varbinary(128) DEFAULT '',
  `auth_issuer` varbinary(255) DEFAULT '',
  `auth_id` varbinary(255) DEFAULT '',
  `auth_scope` varchar(1024) DEFAULT '',
  `grant_type` varbinary(64) DEFAULT '',
  `last_active` bigint(20) DEFAULT NULL,
  `sess_expires` bigint(20) DEFAULT NULL,
  `sess_timeout` bigint(20) DEFAULT NULL,
  `preview_token` varbinary(64) DEFAULT '',
  `download_token` varbinary(64) DEFAULT '',
  `access_token` varbinary(4096) DEFAULT '',
  `refresh_token` varbinary(2048) DEFAULT NULL,
  `id_token` varbinary(2048) DEFAULT NULL,
  `user_agent` varchar(512) DEFAULT NULL,
  `data_json` varbinary(4096) DEFAULT NULL,
  `ref_id` varbinary(16) DEFAULT '',
  `login_ip` varchar(64) DEFAULT NULL,
  `login_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_auth_sessions_client_ip` (`client_ip`),
  KEY `idx_auth_sessions_auth_id` (`auth_id`),
  KEY `idx_auth_sessions_sess_expires` (`sess_expires`),
  KEY `idx_auth_sessions_user_uid` (`user_uid`),
  KEY `idx_auth_sessions_user_name` (`user_name`),
  KEY `idx_auth_sessions_client_uid` (`client_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_sessions`
--

LOCK TABLES `auth_sessions` WRITE;
/*!40000 ALTER TABLE `auth_sessions` DISABLE KEYS */;
INSERT INTO `auth_sessions` VALUES
('0744fe47beea3b841506809139ac5c460dc910913ba112236a0414efacf3cbb8','uss3au2a167sg9na','admin','','','172.20.0.1','local','default','','','','password',1740481860,1741691460,604800,'46b019vp','2ias5e7k','',NULL,NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',NULL,'sess0cftzdm9','172.20.0.1','2025-02-25 11:11:00','2025-02-25 11:11:00','2025-02-25 11:11:00'),
('09b6d6d10575c72a19fe362d0326d93b7f955b0efefe11cf051ae2b2273c1653','uss3au2a167sg9na','admin','','','172.20.0.1','local','default','','','','password',1740482108,1741691708,604800,'46b019vp','2ias5e7k','',NULL,NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',NULL,'sess1myle69k','172.20.0.1','2025-02-25 11:15:08','2025-02-25 11:15:08','2025-02-25 11:15:08'),
('341e529b8ddd2c026460fa9ed930b67b4a58ce9f05c991f681bc6283f0cf92af','uss3au2a167sg9na','admin','','','172.20.0.1','local','default','','','','password',1740489146,1741698745,604800,'46b019vp','2ias5e7k','',NULL,NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',NULL,'sesst4ng5dck','172.20.0.1','2025-02-25 13:12:25','2025-02-25 13:12:25','2025-02-25 13:12:26'),
('7ac42a35744d2647aa0ccc0672f63f8908875390cd9515a95f4fbe955a3b6d2e','uss3au2a167sg9na','admin','','','172.20.0.1','local','default','','','','password',1740482095,1741691695,604800,'46b019vp','2ias5e7k','',NULL,NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',NULL,'sess889p78w0','172.20.0.1','2025-02-25 11:14:55','2025-02-25 11:14:55','2025-02-25 11:14:55'),
('7dfe06f4f0dda7ffb3591255355e3e35e3e5c9dacaeb2b4f4d440df77542bf3a','uss3au2a167sg9na','admin','','','172.20.0.1','local','default','','','','password',1740498166,1741446061,604800,'46b019vp','2ias5e7k','',NULL,NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',NULL,'sess9sb2j31o','172.20.0.1','2025-02-22 15:01:01','2025-02-22 15:01:01','2025-02-22 15:01:02'),
('9c4dafe4730500752954229d8098cbefc17f8c5a7fd2e58257bda300882d7dc8','uss3au2a167sg9na','admin','','','172.20.0.1','local','default','','','','password',1740490003,1741699603,604800,'46b019vp','2ias5e7k','',NULL,NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',NULL,'sessjuxqtelt','172.20.0.1','2025-02-25 13:26:43','2025-02-25 13:26:43','2025-02-25 13:26:43'),
('ac61e7556e5367a60ec7b3ee16530656409598552395c463c80ef788968db07c','uss3au2a167sg9na','admin','','','172.20.0.1','local','default','','','','password',1740489810,1741699409,604800,'46b019vp','2ias5e7k','',NULL,NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',NULL,'sess5cxk8n64','172.20.0.1','2025-02-25 13:23:29','2025-02-25 13:23:29','2025-02-25 13:23:30'),
('f05265961d28d94f35b59ba077a7a1037ebf822f508ddde562499252d42a662c','uss3au2a167sg9na','admin','','','172.20.0.1','local','default','','','','password',0,1741691172,604800,'46b019vp','2ias5e7k','',NULL,NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',NULL,'sessueoowxp9','172.20.0.1','2025-02-25 11:06:12','2025-02-25 11:06:12','2025-02-25 11:06:12'),
('fac43f1544148f79ba207efeac55b8e128e567fb7bd2ad0d18a8bfa2cb26be72','uss3au2a167sg9na','admin','','','172.20.0.1','local','default','','','','password',1740489917,1741699517,604800,'46b019vp','2ias5e7k','',NULL,NULL,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36',NULL,'sessm86jsq1m','172.20.0.1','2025-02-25 13:25:17','2025-02-25 13:25:17','2025-02-25 13:25:17');
/*!40000 ALTER TABLE `auth_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_users`
--

DROP TABLE IF EXISTS `auth_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_uuid` varbinary(64) DEFAULT NULL,
  `user_uid` varbinary(42) DEFAULT NULL,
  `auth_provider` varbinary(128) DEFAULT '',
  `auth_method` varbinary(128) DEFAULT '',
  `auth_issuer` varbinary(255) DEFAULT '',
  `auth_id` varbinary(255) DEFAULT '',
  `user_name` varchar(200) DEFAULT NULL,
  `display_name` varchar(200) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `backup_email` varchar(255) DEFAULT NULL,
  `user_role` varchar(64) DEFAULT '',
  `user_attr` varchar(1024) DEFAULT NULL,
  `super_admin` tinyint(1) DEFAULT NULL,
  `can_login` tinyint(1) DEFAULT NULL,
  `login_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `webdav` tinyint(1) DEFAULT NULL,
  `base_path` varbinary(1024) DEFAULT NULL,
  `upload_path` varbinary(1024) DEFAULT NULL,
  `can_invite` tinyint(1) DEFAULT NULL,
  `invite_token` varbinary(64) DEFAULT NULL,
  `invited_by` varchar(64) DEFAULT NULL,
  `verify_token` varbinary(64) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `consent_at` datetime DEFAULT NULL,
  `born_at` datetime DEFAULT NULL,
  `reset_token` varbinary(64) DEFAULT NULL,
  `preview_token` varbinary(64) DEFAULT NULL,
  `download_token` varbinary(64) DEFAULT NULL,
  `thumb` varbinary(128) DEFAULT '',
  `thumb_src` varbinary(8) DEFAULT '',
  `ref_id` varbinary(16) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uix_auth_users_user_uid` (`user_uid`),
  KEY `idx_auth_users_user_uuid` (`user_uuid`),
  KEY `idx_auth_users_auth_id` (`auth_id`),
  KEY `idx_auth_users_expires_at` (`expires_at`),
  KEY `idx_auth_users_invite_token` (`invite_token`),
  KEY `idx_auth_users_thumb` (`thumb`),
  KEY `idx_auth_users_user_name` (`user_name`),
  KEY `idx_auth_users_user_email` (`user_email`),
  KEY `idx_auth_users_born_at` (`born_at`),
  KEY `idx_auth_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_users`
--

LOCK TABLES `auth_users` WRITE;
/*!40000 ALTER TABLE `auth_users` DISABLE KEYS */;
INSERT INTO `auth_users` VALUES
(-2,'','u000000000000002','link','','','','','Visitor','','','visitor','',0,0,NULL,NULL,0,'','',0,'','','',NULL,NULL,NULL,'','','','','','user2ovqsj4g','2025-02-22 14:56:26','2025-02-22 14:56:26',NULL),
(-1,'','u000000000000001','none','','','','','Unknown','','','','',0,0,NULL,NULL,0,'','',0,'','','',NULL,NULL,NULL,'','','','','','userl0la05z3','2025-02-22 14:56:26','2025-02-22 14:56:26',NULL),
(1,'','uss3au2a167sg9na','local','','','','admin','Admin','','','admin','',1,1,'2025-02-25 13:26:43',NULL,1,'','',1,'g0ch8a9m','','',NULL,NULL,NULL,'','46b019vp','2ias5e7k','','','users70rcrf9','2025-02-22 14:56:26','2025-02-22 14:56:26',NULL);
/*!40000 ALTER TABLE `auth_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_users_details`
--

DROP TABLE IF EXISTS `auth_users_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_users_details` (
  `user_uid` varbinary(42) NOT NULL,
  `subj_uid` varbinary(42) DEFAULT NULL,
  `subj_src` varbinary(8) DEFAULT '',
  `place_id` varbinary(42) DEFAULT x'7a7a',
  `place_src` varbinary(8) DEFAULT NULL,
  `cell_id` varbinary(42) DEFAULT x'7a7a',
  `birth_year` int(11) DEFAULT NULL,
  `birth_month` int(11) DEFAULT NULL,
  `birth_day` int(11) DEFAULT NULL,
  `name_title` varchar(32) DEFAULT NULL,
  `given_name` varchar(64) DEFAULT NULL,
  `middle_name` varchar(64) DEFAULT NULL,
  `family_name` varchar(64) DEFAULT NULL,
  `name_suffix` varchar(32) DEFAULT NULL,
  `nick_name` varchar(64) DEFAULT NULL,
  `name_src` varbinary(8) DEFAULT NULL,
  `user_gender` varchar(16) DEFAULT NULL,
  `user_about` varchar(512) DEFAULT NULL,
  `user_bio` varchar(2048) DEFAULT NULL,
  `user_location` varchar(512) DEFAULT NULL,
  `user_country` varbinary(2) DEFAULT NULL,
  `user_phone` varchar(32) DEFAULT NULL,
  `site_url` varbinary(512) DEFAULT NULL,
  `profile_url` varbinary(512) DEFAULT NULL,
  `feed_url` varbinary(512) DEFAULT NULL,
  `avatar_url` varbinary(512) DEFAULT NULL,
  `org_title` varchar(64) DEFAULT NULL,
  `org_name` varchar(128) DEFAULT NULL,
  `org_email` varchar(255) DEFAULT NULL,
  `org_phone` varchar(32) DEFAULT NULL,
  `org_url` varbinary(512) DEFAULT NULL,
  `id_url` varbinary(512) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_uid`),
  KEY `idx_auth_users_details_subj_uid` (`subj_uid`),
  KEY `idx_auth_users_details_place_id` (`place_id`),
  KEY `idx_auth_users_details_cell_id` (`cell_id`),
  KEY `idx_auth_users_details_org_email` (`org_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_users_details`
--

LOCK TABLES `auth_users_details` WRITE;
/*!40000 ALTER TABLE `auth_users_details` DISABLE KEYS */;
INSERT INTO `auth_users_details` VALUES
('u000000000000001','','','zz','','zz',0,0,0,'','','','','','','','','','','','','','','','','','','','','','','','2025-02-22 14:56:26','2025-02-22 14:56:26'),
('u000000000000002','','','zz','','zz',0,0,0,'','','','','','','','','','','','','','','','','','','','','','','','2025-02-22 14:56:26','2025-02-22 14:56:27'),
('uss3au2a167sg9na','','','zz','','zz',0,0,0,'','','','','','','','','','','','','','','','','','','','','','','','2025-02-22 14:56:26','2025-02-22 14:56:26');
/*!40000 ALTER TABLE `auth_users_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_users_settings`
--

DROP TABLE IF EXISTS `auth_users_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_users_settings` (
  `user_uid` varbinary(42) NOT NULL,
  `ui_theme` varbinary(32) DEFAULT NULL,
  `ui_language` varbinary(32) DEFAULT NULL,
  `ui_time_zone` varbinary(64) DEFAULT NULL,
  `maps_style` varbinary(32) DEFAULT NULL,
  `maps_animate` int(11) DEFAULT 0,
  `index_path` varbinary(1024) DEFAULT NULL,
  `index_rescan` int(11) DEFAULT 0,
  `import_path` varbinary(1024) DEFAULT NULL,
  `import_move` int(11) DEFAULT 0,
  `download_originals` int(11) DEFAULT 0,
  `download_media_raw` int(11) DEFAULT 0,
  `download_media_sidecar` int(11) DEFAULT 0,
  `upload_path` varbinary(1024) DEFAULT NULL,
  `default_page` varbinary(128) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_users_settings`
--

LOCK TABLES `auth_users_settings` WRITE;
/*!40000 ALTER TABLE `auth_users_settings` DISABLE KEYS */;
INSERT INTO `auth_users_settings` VALUES
('u000000000000001','','','','',0,'',0,'',0,0,0,0,'','','2025-02-22 14:56:26','2025-02-22 14:56:26'),
('u000000000000002','','','','',0,'',0,'',0,0,0,0,'','','2025-02-22 14:56:26','2025-02-22 14:56:26'),
('uss3au2a167sg9na','','','','',0,'',0,'',0,0,0,0,'','','2025-02-22 14:56:26','2025-02-22 14:56:26');
/*!40000 ALTER TABLE `auth_users_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_users_shares`
--

DROP TABLE IF EXISTS `auth_users_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_users_shares` (
  `user_uid` varbinary(42) NOT NULL,
  `share_uid` varbinary(42) NOT NULL,
  `link_uid` varbinary(42) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `perm` int(10) unsigned DEFAULT NULL,
  `ref_id` varbinary(16) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_uid`,`share_uid`),
  KEY `idx_auth_users_shares_share_uid` (`share_uid`),
  KEY `idx_auth_users_shares_expires_at` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_users_shares`
--

LOCK TABLES `auth_users_shares` WRITE;
/*!40000 ALTER TABLE `auth_users_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_users_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cameras`
--

DROP TABLE IF EXISTS `cameras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cameras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `camera_slug` varbinary(160) DEFAULT NULL,
  `camera_name` varchar(160) DEFAULT NULL,
  `camera_make` varchar(160) DEFAULT NULL,
  `camera_model` varchar(160) DEFAULT NULL,
  `camera_type` varchar(100) DEFAULT NULL,
  `camera_description` varchar(2048) DEFAULT NULL,
  `camera_notes` varchar(1024) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uix_cameras_camera_slug` (`camera_slug`),
  KEY `idx_cameras_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cameras`
--

LOCK TABLES `cameras` WRITE;
/*!40000 ALTER TABLE `cameras` DISABLE KEYS */;
INSERT INTO `cameras` VALUES
(1,'zz','Unknown','','Unknown','','','','2025-02-22 14:56:27','2025-02-22 14:56:27',NULL),
(2,'canon-eos-5d','Canon EOS 5D','Canon','EOS 5D','body','','','2025-02-22 15:44:30','2025-02-22 15:44:30',NULL),
(3,'apple-iphone-se','Apple iPhone SE','Apple','iPhone SE','phone','','','2025-02-22 15:44:30','2025-02-22 15:44:30',NULL),
(4,'canon-eos-6d','Canon EOS 6D','Canon','EOS 6D','body','','','2025-02-22 15:44:32','2025-02-22 15:44:32',NULL);
/*!40000 ALTER TABLE `cameras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `label_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`label_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,2),
(3,4),
(3,5),
(6,7),
(9,10);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cells`
--

DROP TABLE IF EXISTS `cells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cells` (
  `id` varbinary(42) NOT NULL,
  `cell_name` varchar(200) DEFAULT NULL,
  `cell_street` varchar(100) DEFAULT NULL,
  `cell_postcode` varchar(50) DEFAULT NULL,
  `cell_category` varchar(50) DEFAULT NULL,
  `place_id` varbinary(42) DEFAULT x'7a7a',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cells`
--

LOCK TABLES `cells` WRITE;
/*!40000 ALTER TABLE `cells` DISABLE KEYS */;
INSERT INTO `cells` VALUES
('s2:1dcc673febb4','Paraglider Launch','Signal Hill Drive','8001','sports','za:2IN6v3Szw70s','2025-02-22 15:44:32','2025-02-22 15:44:32'),
('s2:1ef744cd1234','','Seagull','','','za:nO8gYtwN0sre','2025-02-22 15:44:31','2025-02-22 15:44:31'),
('zz','','','','','zz','2025-02-22 14:56:27','2025-02-22 14:56:27');
/*!40000 ALTER TABLE `cells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` varbinary(2) NOT NULL,
  `country_slug` varbinary(160) DEFAULT NULL,
  `country_name` varchar(160) DEFAULT NULL,
  `country_description` varchar(2048) DEFAULT NULL,
  `country_notes` varchar(1024) DEFAULT NULL,
  `country_photo_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uix_countries_country_slug` (`country_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES
('eg','egypt','Egypt','','',0),
('za','south-africa','South Africa','','',0),
('zz','zz','Unknown','','',0);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details` (
  `photo_id` int(10) unsigned NOT NULL,
  `keywords` varchar(2048) DEFAULT NULL,
  `keywords_src` varbinary(8) DEFAULT NULL,
  `notes` varchar(2048) DEFAULT NULL,
  `notes_src` varbinary(8) DEFAULT NULL,
  `subject` varchar(1024) DEFAULT NULL,
  `subject_src` varbinary(8) DEFAULT NULL,
  `artist` varchar(1024) DEFAULT NULL,
  `artist_src` varbinary(8) DEFAULT NULL,
  `copyright` varchar(1024) DEFAULT NULL,
  `copyright_src` varbinary(8) DEFAULT NULL,
  `license` varchar(1024) DEFAULT NULL,
  `license_src` varbinary(8) DEFAULT NULL,
  `software` varchar(1024) DEFAULT NULL,
  `software_src` varbinary(8) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES
(1,'dog, orange','','','','','','','','','','','','Adobe Photoshop CC 2019 (Macintosh)','meta','2025-02-22 14:56:58','2025-02-22 15:17:10'),
(2,'coin, gold, yellow','','','','','','','','','','','','Adobe Photoshop CC 2019 (Macintosh)','meta','2025-02-22 14:58:36','2025-02-22 15:17:10'),
(3,'brown, gold, leaves','','','','','','','','','','','','Adobe Photoshop CC 2019 (Macintosh)','meta','2025-02-22 15:44:30','2025-02-22 15:59:34'),
(4,'beach, brown, colorfilter, reunion, seashore','meta','','','','','','','','','','','Adobe Photoshop CS6 (Macintosh)','meta','2025-02-22 15:44:30','2025-02-22 15:59:34'),
(5,'anthias, fish, magenta, purple','','','','','','','','','','','','Adobe Photoshop CC 2019 (Macintosh)','meta','2025-02-22 15:44:31','2025-02-22 15:59:34'),
(6,'beach, blue, kwazulu-natal, sand, seagull, south-africa, zinkwazi-beach','','','','','','','','','','','','10.2.1','meta','2025-02-22 15:44:31','2025-02-22 15:44:31'),
(7,'fruit, lime, limes','','','','','','','','','','','','Adobe Photoshop CC 2019 (Macintosh)','meta','2025-02-22 15:44:32','2025-02-22 15:59:34'),
(8,'blue, cape-town, cyan, drive, hill, launch, ocean, paraglider, signal, south-africa, sports, western-cape','','','','','','','','','','','','Adobe Photoshop CC 2019 (Macintosh)','meta','2025-02-22 15:44:32','2025-02-22 15:44:32'),
(9,'photoprismgood, white','','','','','','','','','','','','','','2025-02-22 15:45:12','2025-02-22 15:59:34'),
(10,'green','','','','','','','','','','','','','','2025-02-25 11:08:22','2025-02-25 11:15:37'),
(11,'building, gold','','','','','','','','','','','','','','2025-02-25 11:09:38','2025-02-25 11:10:07');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duplicates`
--

DROP TABLE IF EXISTS `duplicates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duplicates` (
  `file_name` varbinary(755) NOT NULL,
  `file_root` varbinary(16) NOT NULL DEFAULT x'2f',
  `file_hash` varbinary(128) DEFAULT '',
  `file_size` bigint(20) DEFAULT NULL,
  `mod_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`file_name`,`file_root`),
  KEY `idx_duplicates_file_hash` (`file_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duplicates`
--

LOCK TABLES `duplicates` WRITE;
/*!40000 ALTER TABLE `duplicates` DISABLE KEYS */;
/*!40000 ALTER TABLE `duplicates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `errors`
--

DROP TABLE IF EXISTS `errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `error_time` datetime DEFAULT NULL,
  `error_level` varbinary(32) DEFAULT NULL,
  `error_message` varbinary(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_errors_error_time` (`error_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errors`
--

LOCK TABLES `errors` WRITE;
/*!40000 ALTER TABLE `errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faces`
--

DROP TABLE IF EXISTS `faces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faces` (
  `id` varbinary(64) NOT NULL,
  `face_src` varbinary(8) DEFAULT NULL,
  `face_kind` int(11) DEFAULT NULL,
  `face_hidden` tinyint(1) DEFAULT NULL,
  `subj_uid` varbinary(42) DEFAULT '',
  `samples` int(11) DEFAULT NULL,
  `sample_radius` double DEFAULT NULL,
  `collisions` int(11) DEFAULT NULL,
  `collision_radius` double DEFAULT NULL,
  `embedding_json` mediumblob DEFAULT NULL,
  `matched_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_faces_subj_uid` (`subj_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faces`
--

LOCK TABLES `faces` WRITE;
/*!40000 ALTER TABLE `faces` DISABLE KEYS */;
/*!40000 ALTER TABLE `faces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` int(10) unsigned DEFAULT NULL,
  `photo_uid` varbinary(42) DEFAULT NULL,
  `photo_taken_at` datetime DEFAULT NULL,
  `time_index` varbinary(64) DEFAULT NULL,
  `media_id` varbinary(32) DEFAULT NULL,
  `media_utc` bigint(20) DEFAULT NULL,
  `instance_id` varbinary(64) DEFAULT NULL,
  `file_uid` varbinary(42) DEFAULT NULL,
  `file_name` varbinary(1024) DEFAULT NULL,
  `file_root` varbinary(16) DEFAULT x'2f',
  `original_name` varbinary(755) DEFAULT NULL,
  `file_hash` varbinary(128) DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_codec` varbinary(32) DEFAULT NULL,
  `file_type` varbinary(16) DEFAULT NULL,
  `media_type` varbinary(16) DEFAULT NULL,
  `file_mime` varbinary(64) DEFAULT NULL,
  `file_primary` tinyint(1) DEFAULT NULL,
  `file_sidecar` tinyint(1) DEFAULT NULL,
  `file_missing` tinyint(1) DEFAULT NULL,
  `file_portrait` tinyint(1) DEFAULT NULL,
  `file_video` tinyint(1) DEFAULT NULL,
  `file_duration` bigint(20) DEFAULT NULL,
  `file_fps` double DEFAULT NULL,
  `file_frames` int(11) DEFAULT NULL,
  `file_width` int(11) DEFAULT NULL,
  `file_height` int(11) DEFAULT NULL,
  `file_orientation` int(11) DEFAULT NULL,
  `file_orientation_src` varbinary(8) DEFAULT '',
  `file_projection` varbinary(64) DEFAULT NULL,
  `file_aspect_ratio` float DEFAULT NULL,
  `file_hdr` tinyint(1) DEFAULT NULL,
  `file_watermark` tinyint(1) DEFAULT NULL,
  `file_color_profile` varbinary(64) DEFAULT NULL,
  `file_main_color` varbinary(16) DEFAULT NULL,
  `file_colors` varbinary(18) DEFAULT NULL,
  `File_luminance` varbinary(18) DEFAULT NULL,
  `file_diff` int(11) DEFAULT -1,
  `file_chroma` smallint(6) DEFAULT -1,
  `file_software` varchar(64) DEFAULT NULL,
  `file_error` varbinary(512) DEFAULT NULL,
  `mod_time` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_in` bigint(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_in` bigint(20) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uix_files_file_uid` (`file_uid`),
  UNIQUE KEY `idx_files_name_root` (`file_name`,`file_root`),
  UNIQUE KEY `idx_files_search_media` (`media_id`),
  UNIQUE KEY `idx_files_search_timeline` (`time_index`),
  KEY `idx_files_photo_taken_at` (`photo_taken_at`),
  KEY `idx_files_media_utc` (`media_utc`),
  KEY `idx_files_instance_id` (`instance_id`),
  KEY `idx_files_file_error` (`file_error`),
  KEY `idx_files_published_at` (`published_at`),
  KEY `idx_files_deleted_at` (`deleted_at`),
  KEY `idx_files_photo_id` (`photo_id`,`file_primary`),
  KEY `idx_files_photo_uid` (`photo_uid`),
  KEY `idx_files_file_hash` (`file_hash`),
  KEY `idx_files_missing_root` (`file_missing`,`file_root`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES
(1,1,'psru0pz7doek9rpf','2019-05-04 06:01:12','79809495939888-9999999999-0-fss3auymmxq80jg9','9999999999-0-fss3auymmxq80jg9',1556942441000,'de49a397-9d0d-4878-8209-82e10fdcd940','fss3auymmxq80jg9','2019/05/20190504_040041_D88DC97D.jpg','/','dog_orange.jpg','0fe37f24af543c1a04b06cbd9b0cbab82cc7c15b',34400,'jpeg','jpg','image','image/jpeg',1,0,0,1,0,0,0,0,331,488,1,'meta','',0.68,0,0,'sRGB IEC61966-2.1','orange','DDDD2DD2D','9999899B8',767,55,'Adobe Photoshop CC 2019 (Macintosh)','',1740236209,'2025-02-22 14:56:58',3498413881,'2025-02-22 14:56:58',0,NULL,NULL),
(2,2,'psru0pxfnmlyottq','2019-05-04 05:48:43','79809495945157-9999999998-0-fss3axojocp9i841','9999999998-0-fss3axojocp9i841',1556941656000,'630b090f-4463-4f15-af19-44f8a1b5bcbd','fss3axojocp9i841','2019/05/20190504_034736_02DF7FF8.jpg','/','coin_gold.jpg','f9869c1743fd9532826ed4da9c82906f7932956d',44220,'jpeg','jpg','image','image/jpeg',1,0,0,0,0,0,0,0,393,331,1,'meta','',1.19,0,0,'sRGB IEC61966-2.1','yellow','1222BB192','DCCCABCAC',767,18,'Adobe Photoshop CC 2019 (Macintosh)','',1740236314,'2025-02-22 14:58:36',847643770,'2025-02-22 14:58:36',0,NULL,NULL),
(3,3,'pss3d26c4zl6y7jz','2019-05-04 06:45:04','79809495935496-9999999997-0-fss3d26t8mqzhcmr','9999999997-0-fss3d26t8mqzhcmr',1556944923000,'8a8090ed-d422-4d2a-a2db-713acba3ecfc','fss3d26t8mqzhcmr','2019/05/20190504_044203_7DA5BF88.jpg','/','leaves_gold.jpg','e95942179ac55c5c038c02f83ff17f96696d1219',72583,'jpeg','jpg','image','image/jpeg',1,0,0,1,0,0,0,0,331,496,1,'meta','',0.67,0,0,'sRGB IEC61966-2.1','brown','122221221','379693893',894,17,'Adobe Photoshop CC 2019 (Macintosh)','',1740239056,'2025-02-22 15:44:30',8800890987,'2025-02-22 15:44:30',0,NULL,NULL),
(4,4,'pss3d26q74x9pg6h','2010-03-08 12:37:30','79899691876270-9999999996-0-fss3d275r7im5ip2','9999999996-0-fss3d275r7im5ip2',1268051850000,'','fss3d275r7im5ip2','2010/03/20100308_123730_BCBC48D3.jpg','/','beach_colorfilter.jpg','2f38d7f03f8011e08769cb9397826a8fd492e7b7',121068,'jpeg','jpg','image','image/jpeg',1,0,0,0,0,0,0,0,640,427,1,'meta','',1.5,0,0,'Camera RGB Profile','brown','006117222','11859E369',941,10,'Adobe Photoshop CS6 (Macintosh)','',1740239053,'2025-02-22 15:44:31',10162032659,'2025-02-22 15:44:31',0,NULL,NULL),
(5,5,'pss3d27c2maar8ut','2019-04-30 12:05:40','79809569879460-9999999995-0-fss3d27slrd7cojm','9999999995-0-fss3d27slrd7cojm',1556618740000,'f643cb15-9484-48ea-b4fc-d12d005ec575','fss3d27slrd7cojm','2019/04/20190430_100540_54CF4708.jpg','/','fish_anthias_magenta.jpg','1d40e095f4d4eb1cef22ecba6cfadb0177870d5d',25571,'jpeg','jpg','image','image/jpeg',1,0,0,0,0,0,0,0,496,331,1,'meta','',1.5,0,0,'sRGB IEC61966-2.1','purple','056655000','131154000',1021,26,'Adobe Photoshop CC 2019 (Macintosh)','',1740239055,'2025-02-22 15:44:31',9507535567,'2025-02-22 15:44:31',0,NULL,NULL),
(6,6,'pss3d27cv7xrsm3j','2017-02-15 14:13:40','79829784858660-9999999994-0-fss3d27hi9pzmb43','9999999994-0-fss3d27hi9pzmb43',1487160820000,'','fss3d27hi9pzmb43','2017/02/20170215_121340_57B0A8B0.jpg','/','beach_sand.jpg','4a38481f646f473de5035a321520a18c06f459fd',105321,'jpeg','jpg','image','image/jpeg',1,0,0,0,0,0,0,0,640,480,1,'meta','',1.33,0,0,'','blue','666111222','CBB887887',1023,12,'10.2.1','',1740239055,'2025-02-22 15:44:31',10412322457,'2025-02-22 15:44:31',0,NULL,NULL),
(7,7,'pss3d28kd0h287c7','2019-05-04 06:18:54','79809495938146-9999999993-0-fss3d28htu864qfu','9999999993-0-fss3d28htu864qfu',1556943291000,'4c4349b9-88db-498e-bf51-b1e696d38a6a','fss3d28htu864qfu','2019/05/20190504_041451_7F270207.jpg','/','limes.jpg','14217a81d59e182d7aefe5cb7f6d7bac103fe386',62677,'jpeg','jpg','image','image/jpeg',1,0,0,1,0,0,0,0,331,441,1,'meta','',0.75,0,0,'sRGB IEC61966-2.1','lime','9AA99A99A','9AAA9A999',1023,61,'Adobe Photoshop CC 2019 (Macintosh)','',1740239056,'2025-02-22 15:44:32',727056019,'2025-02-22 15:44:32',0,NULL,NULL),
(8,8,'pss3d282sucg0zbr','2013-11-18 19:27:40','79868881807260-9999999992-0-fss3d29tsd3e6wp4','9999999992-0-fss3d29tsd3e6wp4',1384795660000,'5f16dc80-b9b2-4082-9de8-0e77fbccbc72','fss3d29tsd3e6wp4','2013/11/20131118_172740_CC5ABA1E.jpg','/','ocean_cyan.jpg','10283f82e817ca1f994364b707baf3a3d139d4e6',47948,'jpeg','jpg','image','image/jpeg',1,0,0,0,0,0,0,0,497,331,1,'meta','',1.5,0,0,'Adobe RGB (1998)','blue','119966668','DDCBA9886',1023,14,'Adobe Photoshop CC 2019 (Macintosh)','',1740239056,'2025-02-22 15:44:33',1010967657,'2025-02-22 15:44:33',0,NULL,NULL),
(9,9,'pss3d3cge3ykz6wi','2025-02-22 15:45:11','79749777845489-9999999991-1-fss3d3clglbvej7z','9999999991-1-fss3d3clglbvej7z',0,'','fss3d3clglbvej7z','2025/02/20250222_154511_6667D833.bmp','/','photoprismgood.bmp','8f9b53e3ceb3ceb1fcfbaf758ad7d79a0d0a1587',14817,'png','bmp','image','image/png',0,0,0,0,0,0,0,0,731,589,1,'meta','',1.24,0,0,'','','','',-1,-1,'','',1740239111,'2025-02-22 15:45:12',96821144,'2025-02-22 15:45:12',0,NULL,NULL),
(10,9,'pss3d3cge3ykz6wi','2025-02-22 15:45:11','79749777845489-9999999991-0-fss3d3dk2u6u2rrj','9999999991-0-fss3d3dk2u6u2rrj',1740239111000,'','fss3d3dk2u6u2rrj','2025/02/20250222_154511_6667D833.bmp.jpg','sidecar','','278f809a381c17218622f4bb906b3085284dd734',23226,'','jpg','image','image/jpeg',1,0,0,0,0,0,0,0,731,589,1,'meta','',1.24,0,0,'','white','444411444','FEEECCFFF',767,0,'','',1740239111,'2025-02-22 15:45:13',648624748,'2025-02-22 15:45:13',0,NULL,NULL),
(11,10,'pss8k9y7zyycxmjh','2025-02-25 11:08:16','79749774889184-9999999990-1-fss8k9yr4raej49f','9999999990-1-fss8k9yr4raej49f',0,'','fss8k9yr4raej49f','2025/02/20250225_110816_3709CEC1.webp','/','20250116_074003_3709CEC1.webp','42fa713cbb1057a711b34d8f39d379a62bf03d4e',57168,'webp','webp','image','image/webp',0,0,0,0,0,0,0,0,755,755,1,'meta','',1,0,0,'','','','',-1,-1,'','',1740481696,'2025-02-25 11:08:22',77450586,'2025-02-25 11:08:26',0,NULL,NULL),
(12,10,'pss8k9y7zyycxmjh','2025-02-25 11:08:16','79749774889184-9999999990-0-fss8ka2e3r95a96u','9999999990-0-fss8ka2e3r95a96u',1740481696000,'','fss8ka2e3r95a96u','2025/02/20250225_110816_3709CEC1.webp.jpg','sidecar','','2da3d4aebb2fb7e14ea5e09392464d795ca9a3db',66699,'','jpg','image','image/jpeg',1,0,0,0,0,0,0,0,755,755,1,'meta','',1,0,0,'','green','199291111','464664885',1023,14,'','',1740481701,'2025-02-25 11:08:26',3530398368,'2025-02-25 11:08:26',0,NULL,NULL),
(13,11,'pss8kc2qv5nz0k5f','2025-02-25 11:09:35','79749774889065-9999999989-0-fss8kc2k4oimppge','9999999989-0-fss8kc2k4oimppge',0,'','fss8kc2k4oimppge','2025/02/20250225_110935_A592021A.jpg','/','20250116_074003_A592021A.jpg','ad523f2f3166571e0bc307d0d89e4dcbd271f985',636936,'jpeg','jpg','image','image/jpeg',1,0,0,0,0,0,0,0,1920,1080,1,'meta','',1.78,0,0,'sRGB','gold','666122333','98789AAAA',1023,34,'','',1740481775,'2025-02-25 11:09:38',757982473,'2025-02-25 11:09:38',0,NULL,NULL);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_share`
--

DROP TABLE IF EXISTS `files_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_share` (
  `file_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `remote_name` varbinary(255) NOT NULL,
  `status` varbinary(16) DEFAULT NULL,
  `error` varbinary(512) DEFAULT NULL,
  `errors` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`file_id`,`service_id`,`remote_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_share`
--

LOCK TABLES `files_share` WRITE;
/*!40000 ALTER TABLE `files_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_sync`
--

DROP TABLE IF EXISTS `files_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_sync` (
  `remote_name` varbinary(255) NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `remote_date` datetime DEFAULT NULL,
  `remote_size` bigint(20) DEFAULT NULL,
  `status` varbinary(16) DEFAULT NULL,
  `error` varbinary(512) DEFAULT NULL,
  `errors` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`remote_name`,`service_id`),
  KEY `idx_files_sync_file_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_sync`
--

LOCK TABLES `files_sync` WRITE;
/*!40000 ALTER TABLE `files_sync` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `path` varbinary(1024) DEFAULT NULL,
  `root` varbinary(16) DEFAULT '',
  `folder_uid` varbinary(42) NOT NULL,
  `folder_type` varbinary(16) DEFAULT NULL,
  `folder_title` varchar(200) DEFAULT NULL,
  `folder_category` varchar(100) DEFAULT NULL,
  `folder_description` varchar(2048) DEFAULT NULL,
  `folder_order` varbinary(32) DEFAULT NULL,
  `folder_country` varbinary(2) DEFAULT x'7a7a',
  `folder_year` int(11) DEFAULT NULL,
  `folder_month` int(11) DEFAULT NULL,
  `folder_day` int(11) DEFAULT NULL,
  `folder_favorite` tinyint(1) DEFAULT NULL,
  `folder_private` tinyint(1) DEFAULT NULL,
  `folder_ignore` tinyint(1) DEFAULT NULL,
  `folder_watch` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`folder_uid`),
  UNIQUE KEY `idx_folders_path_root` (`path`,`root`),
  KEY `idx_folders_folder_category` (`folder_category`),
  KEY `idx_folders_country_year_month` (`folder_country`,`folder_year`,`folder_month`),
  KEY `idx_folders_published_at` (`published_at`),
  KEY `idx_folders_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` VALUES
('go/src/github.com/photoprism/photoprism/storage/users/uss3au2a167sg9na/upload/sessa237m21jbe7n44','import','dss3auu8oaxyvxv4','','Sessa237m21jbe7n44','','','name','zz',2025,2,0,0,0,0,0,'2025-02-22 14:56:54','2025-02-22 14:56:54','2025-02-22 14:56:49',NULL,NULL),
('go/src/github.com/photoprism/photoprism/storage/users/uss3au2a167sg9na/upload/sessa237m21j4p3q8o','import','dss3axn7fkyrq1ci','','Sessa237m21j4p3q8o','','','name','zz',2025,2,0,0,0,0,0,'2025-02-22 14:58:35','2025-02-22 14:58:35','2025-02-22 14:58:34',NULL,NULL),
('2017/02','/','dss3d1w7ouua9yh3','','February 2017','','','name','zz',2017,2,15,0,0,0,0,'2025-02-22 15:44:20','2025-02-22 15:44:20','2025-02-22 15:44:21',NULL,NULL),
('2010/03','/','dss3d1wkx3cdtlka','','March 2010','','','name','zz',2010,3,8,0,0,0,0,'2025-02-22 15:44:20','2025-02-22 15:44:20','2025-02-22 15:44:21',NULL,NULL),
('go/src/github.com/photoprism/photoprism/storage/users/uss3au2a167sg9na/upload/sess9sb2j31odqls2y','import','dss3d1xos2ybr2bc','','Sess9sb2j31odqls2y','','','name','zz',2025,2,0,0,0,0,0,'2025-02-22 15:44:21','2025-02-22 15:44:21','2025-02-22 15:44:16',NULL,NULL),
('go/src/github.com/photoprism/photoprism/storage/users/uss3au2a167sg9na/upload/sess9sb2j31oq11401','import','dss3d3byordkzba2','','Sess9sb2j31oq11401','','','name','zz',2025,2,0,0,0,0,0,'2025-02-22 15:45:11','2025-02-22 15:45:11','2025-02-22 15:45:11',NULL,NULL),
('go/src/github.com/photoprism/photoprism/storage/users/uss3au2a167sg9na/upload/sess9sb2j31o21ft9g','import','dss3d3u8ucsoco9v','','Sess9sb2j31o21ft9g','','','name','zz',2025,2,0,0,0,0,0,'2025-02-22 15:45:30','2025-02-22 15:45:30','2025-02-22 15:45:31',NULL,NULL),
('go/src/github.com/photoprism/photoprism/storage/users/uss3au2a167sg9na/upload/sess9sb2j31oo4lm6y','import','dss8k9wea23am1ef','','Sess9sb2j31oo4lm6y','','','name','zz',2025,2,0,0,0,0,0,'2025-02-25 11:08:20','2025-02-25 11:08:20','2025-02-25 11:08:16',NULL,NULL),
('go/src/github.com/photoprism/photoprism/storage/users/uss3au2a167sg9na/upload/sess9sb2j31op4445pf','import','dss8kc0t7xfl4wlc','','Sess9sb2j31op4445pf','','','name','zz',2025,2,0,0,0,0,0,'2025-02-25 11:09:36','2025-02-25 11:09:36','2025-02-25 11:09:35',NULL,NULL);
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(64) DEFAULT NULL,
  `skip` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_keywords_keyword` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
INSERT INTO `keywords` VALUES
(1,'dog',0),
(2,'orange',0),
(3,'coin',0),
(4,'gold',0),
(5,'yellow',0),
(6,'brown',0),
(7,'leaves',0),
(8,'beach',0),
(9,'colorfilter',0),
(10,'reunion',0),
(11,'seashore',0),
(12,'anthias',0),
(13,'fish',0),
(14,'magenta',0),
(15,'purple',0),
(16,'blue',0),
(17,'kwazulu-natal',0),
(18,'sand',0),
(19,'seagull',0),
(20,'south-africa',0),
(21,'zinkwazi-beach',0),
(22,'fruit',0),
(23,'lime',0),
(24,'limes',0),
(25,'cape',0),
(26,'cape-town',0),
(27,'cyan',0),
(28,'drive',0),
(29,'hill',0),
(30,'launch',0),
(31,'ocean',0),
(32,'paraglider',0),
(33,'signal',0),
(34,'sports',0),
(35,'town',0),
(36,'western-cape',0),
(37,'photoprismgood',0),
(38,'white',0),
(39,'green',0),
(40,'shrek',0),
(41,'building',0),
(42,'giza',0),
(43,'pyramids',0);
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label_uid` varbinary(42) DEFAULT NULL,
  `label_slug` varbinary(160) DEFAULT NULL,
  `custom_slug` varbinary(160) DEFAULT NULL,
  `label_name` varchar(160) DEFAULT NULL,
  `label_priority` int(11) DEFAULT NULL,
  `label_favorite` tinyint(1) DEFAULT NULL,
  `label_description` varchar(2048) DEFAULT NULL,
  `label_notes` varchar(1024) DEFAULT NULL,
  `photo_count` int(11) DEFAULT 1,
  `thumb` varbinary(128) DEFAULT '',
  `thumb_src` varbinary(8) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uix_labels_label_uid` (`label_uid`),
  UNIQUE KEY `uix_labels_label_slug` (`label_slug`),
  KEY `idx_labels_published_at` (`published_at`),
  KEY `idx_labels_deleted_at` (`deleted_at`),
  KEY `idx_labels_custom_slug` (`custom_slug`),
  KEY `idx_labels_thumb` (`thumb`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES
(1,'lss3auy917zzk1ui','dog','dog','Dog',5,0,'','',1,'0fe37f24af543c1a04b06cbd9b0cbab82cc7c15b','','2025-02-22 14:56:58','2025-02-22 15:17:10',NULL,NULL),
(2,'lss3auylxx0v5r3b','animal','animal','Animal',-3,0,'','',1,'0fe37f24af543c1a04b06cbd9b0cbab82cc7c15b','','2025-02-22 14:56:58','2025-02-22 14:56:58',NULL,NULL),
(3,'lss3d26vfq0kgs6k','seashore','seashore','Seashore',0,0,'','',1,'2f38d7f03f8011e08769cb9397826a8fd492e7b7','','2025-02-22 15:44:30','2025-02-22 15:59:34',NULL,NULL),
(4,'lss3d265e9733a72','beach','beach','Beach',-3,0,'','',2,'4a38481f646f473de5035a321520a18c06f459fd','','2025-02-22 15:44:30','2025-02-22 15:59:34',NULL,NULL),
(5,'lss3d26g60jw6z82','water','water','Water',-3,0,'','',1,'2f38d7f03f8011e08769cb9397826a8fd492e7b7','','2025-02-22 15:44:30','2025-02-22 15:44:30',NULL,NULL),
(6,'lss3d28ij1nk2v96','fruit','fruit','Fruit',0,0,'','',1,'14217a81d59e182d7aefe5cb7f6d7bac103fe386','','2025-02-22 15:44:32','2025-02-22 15:59:34',NULL,NULL),
(7,'lss3d28vq83j7l50','food','food','Food',-3,0,'','',1,'14217a81d59e182d7aefe5cb7f6d7bac103fe386','','2025-02-22 15:44:32','2025-02-22 15:44:32',NULL,NULL),
(8,'lss3d28mu2hmnmw0','sports','sports','Sports',-1,0,'','',1,'10283f82e817ca1f994364b707baf3a3d139d4e6','','2025-02-22 15:44:32','2025-02-22 15:44:32',NULL,NULL),
(9,'lss8kc2ukii99xvs','building','building','Building',0,0,'','',1,'ad523f2f3166571e0bc307d0d89e4dcbd271f985','','2025-02-25 11:09:38','2025-02-25 11:10:07',NULL,NULL),
(10,'lss8kc27vvughhr5','architecture','architecture','Architecture',-3,0,'','',1,'ad523f2f3166571e0bc307d0d89e4dcbd271f985','','2025-02-25 11:09:38','2025-02-25 11:10:06',NULL,NULL);
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lenses`
--

DROP TABLE IF EXISTS `lenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lens_slug` varbinary(160) DEFAULT NULL,
  `lens_name` varchar(160) DEFAULT NULL,
  `lens_make` varchar(160) DEFAULT NULL,
  `lens_model` varchar(160) DEFAULT NULL,
  `lens_type` varchar(100) DEFAULT NULL,
  `lens_description` varchar(2048) DEFAULT NULL,
  `lens_notes` varchar(1024) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uix_lenses_lens_slug` (`lens_slug`),
  KEY `idx_lenses_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lenses`
--

LOCK TABLES `lenses` WRITE;
/*!40000 ALTER TABLE `lenses` DISABLE KEYS */;
INSERT INTO `lenses` VALUES
(1,'zz','Unknown','','Unknown','','','','2025-02-22 14:56:27','2025-02-22 14:56:27',NULL),
(2,'iphone-se-4-15mm-f-2-2','iPhone SE 4.15mm f/2.2','','iPhone SE 4.15mm f/2.2','','','','2025-02-22 15:44:30','2025-02-22 15:44:30',NULL),
(3,'ef24-105mm-f-4l-is-usm','EF24-105mm f/4L IS USM','','EF24-105mm f/4L IS USM','','','','2025-02-22 15:44:32','2025-02-22 15:44:32',NULL);
/*!40000 ALTER TABLE `lenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `link_uid` varbinary(42) NOT NULL,
  `share_uid` varbinary(42) DEFAULT NULL,
  `share_slug` varbinary(160) DEFAULT NULL,
  `link_token` varbinary(160) DEFAULT NULL,
  `link_expires` int(11) DEFAULT NULL,
  `link_views` int(10) unsigned DEFAULT NULL,
  `max_views` int(10) unsigned DEFAULT NULL,
  `has_password` tinyint(1) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `perm` int(10) unsigned DEFAULT NULL,
  `ref_id` varbinary(16) DEFAULT NULL,
  `created_by` varbinary(42) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`link_uid`),
  UNIQUE KEY `idx_links_uid_token` (`share_uid`,`link_token`),
  KEY `idx_links_share_slug` (`share_slug`),
  KEY `idx_links_created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markers`
--

DROP TABLE IF EXISTS `markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `markers` (
  `marker_uid` varbinary(42) NOT NULL,
  `file_uid` varbinary(42) DEFAULT '',
  `marker_type` varbinary(8) DEFAULT '',
  `marker_src` varbinary(8) DEFAULT '',
  `marker_name` varchar(160) DEFAULT NULL,
  `marker_review` tinyint(1) DEFAULT NULL,
  `marker_invalid` tinyint(1) DEFAULT NULL,
  `subj_uid` varbinary(42) DEFAULT NULL,
  `subj_src` varbinary(8) DEFAULT '',
  `face_id` varbinary(64) DEFAULT NULL,
  `face_dist` double DEFAULT -1,
  `embeddings_json` mediumblob DEFAULT NULL,
  `landmarks_json` mediumblob DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `w` float DEFAULT NULL,
  `h` float DEFAULT NULL,
  `q` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT -1,
  `score` smallint(6) DEFAULT NULL,
  `thumb` varbinary(128) DEFAULT '',
  `matched_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`marker_uid`),
  KEY `idx_markers_matched_at` (`matched_at`),
  KEY `idx_markers_file_uid` (`file_uid`),
  KEY `idx_markers_subj_uid_src` (`subj_uid`,`subj_src`),
  KEY `idx_markers_face_id` (`face_id`),
  KEY `idx_markers_thumb` (`thumb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markers`
--

LOCK TABLES `markers` WRITE;
/*!40000 ALTER TABLE `markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` varchar(16) NOT NULL,
  `dialect` varchar(16) DEFAULT NULL,
  `stage` varchar(16) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `source` varchar(16) DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
('20211121-094727','mysql','main','','','2025-02-22 14:56:21','2025-02-22 14:56:21'),
('20211124-120008','mysql','main','','','2025-02-22 14:56:22','2025-02-22 14:56:22'),
('20220329-030000','mysql','main','','','2025-02-22 14:56:22','2025-02-22 14:56:22'),
('20220329-040000','mysql','main','','','2025-02-22 14:56:22','2025-02-22 14:56:22'),
('20220329-050000','mysql','main','','','2025-02-22 14:56:22','2025-02-22 14:56:22'),
('20220329-060000','mysql','main','','','2025-02-22 14:56:22','2025-02-22 14:56:24'),
('20220329-061000','mysql','main','','','2025-02-22 14:56:24','2025-02-22 14:56:24'),
('20220329-070000','mysql','main','','','2025-02-22 14:56:24','2025-02-22 14:56:24'),
('20220329-071000','mysql','main','','','2025-02-22 14:56:24','2025-02-22 14:56:24'),
('20220329-080000','mysql','main','','','2025-02-22 14:56:24','2025-02-22 14:56:24'),
('20220329-081000','mysql','main','','','2025-02-22 14:56:24','2025-02-22 14:56:24'),
('20220329-083000','mysql','main','','','2025-02-22 14:56:24','2025-02-22 14:56:24'),
('20220329-090000','mysql','main','','','2025-02-22 14:56:24','2025-02-22 14:56:24'),
('20220329-091000','mysql','main','','','2025-02-22 14:56:24','2025-02-22 14:56:24'),
('20220329-093000','mysql','main','','','2025-02-22 14:56:24','2025-02-22 14:56:24'),
('20220421-200000','mysql','main','','','2025-02-22 14:56:24','2025-02-22 14:56:25'),
('20220521-000001','mysql','main','','','2025-02-22 14:56:25','2025-02-22 14:56:25'),
('20220521-000002','mysql','main','','','2025-02-22 14:56:25','2025-02-22 14:56:25'),
('20220521-000003','mysql','main','','','2025-02-22 14:56:25','2025-02-22 14:56:25'),
('20220927-000100','mysql','main','','','2025-02-22 14:56:25','2025-02-22 14:56:25'),
('20221002-000100','mysql','main','','','2025-02-22 14:56:25','2025-02-22 14:56:25'),
('20221015-100000','mysql','pre','','','2025-02-22 14:56:10','2025-02-22 14:56:10'),
('20221015-100100','mysql','pre','','','2025-02-22 14:56:10','2025-02-22 14:56:10'),
('20230102-000001','mysql','main','','','2025-02-22 14:56:25','2025-02-22 14:56:26'),
('20230211-000001','mysql','main','','','2025-02-22 14:56:26','2025-02-22 14:56:26'),
('20230309-000001','mysql','main','','','2025-02-22 14:56:26','2025-02-22 14:56:26'),
('20230313-000001','mysql','main','','','2025-02-22 14:56:26','2025-02-22 14:56:26'),
('20240112-000001','mysql','main','','','2025-02-22 14:56:26','2025-02-22 14:56:26'),
('20240701-000001','mysql','main','','','2025-02-22 14:56:26','2025-02-22 14:56:26'),
('20240709-000001','mysql','pre','','','2025-02-22 14:56:10','2025-02-22 14:56:10'),
('20240915-000001','mysql','main','','','2025-02-22 14:56:26','2025-02-22 14:56:26'),
('20241010-000001','mysql','main','','','2025-02-22 14:56:26','2025-02-22 14:56:26');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passcodes`
--

DROP TABLE IF EXISTS `passcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passcodes` (
  `uid` varbinary(255) NOT NULL,
  `key_type` varchar(64) NOT NULL DEFAULT '',
  `key_url` varchar(2048) DEFAULT '',
  `recovery_code` varchar(255) DEFAULT '',
  `verified_at` datetime DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`,`key_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passcodes`
--

LOCK TABLES `passcodes` WRITE;
/*!40000 ALTER TABLE `passcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `passcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwords`
--

DROP TABLE IF EXISTS `passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwords` (
  `uid` varbinary(255) NOT NULL,
  `hash` varbinary(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwords`
--

LOCK TABLES `passwords` WRITE;
/*!40000 ALTER TABLE `passwords` DISABLE KEYS */;
INSERT INTO `passwords` VALUES
('uss3au2a167sg9na','$2a$12$XIsIKRFcfH7PcnM/b1QCNuWcLU1jyZxe1g5m7Q.vw7n1TsWSvmCy.','2025-02-22 14:56:27','2025-02-22 14:56:27');
/*!40000 ALTER TABLE `passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varbinary(64) DEFAULT NULL,
  `taken_at` datetime DEFAULT NULL,
  `taken_at_local` datetime DEFAULT NULL,
  `taken_src` varbinary(8) DEFAULT NULL,
  `photo_uid` varbinary(42) DEFAULT NULL,
  `photo_type` varbinary(8) DEFAULT x'696d616765',
  `type_src` varbinary(8) DEFAULT NULL,
  `photo_title` varchar(200) DEFAULT NULL,
  `title_src` varbinary(8) DEFAULT NULL,
  `photo_description` varchar(4096) DEFAULT NULL,
  `description_src` varbinary(8) DEFAULT NULL,
  `photo_path` varbinary(1024) DEFAULT NULL,
  `photo_name` varbinary(255) DEFAULT NULL,
  `original_name` varbinary(755) DEFAULT NULL,
  `photo_stack` tinyint(4) DEFAULT NULL,
  `photo_favorite` tinyint(1) DEFAULT NULL,
  `photo_private` tinyint(1) DEFAULT NULL,
  `photo_scan` tinyint(1) DEFAULT NULL,
  `photo_panorama` tinyint(1) DEFAULT NULL,
  `time_zone` varbinary(64) DEFAULT NULL,
  `place_id` varbinary(42) DEFAULT x'7a7a',
  `place_src` varbinary(8) DEFAULT NULL,
  `cell_id` varbinary(42) DEFAULT x'7a7a',
  `cell_accuracy` int(11) DEFAULT NULL,
  `photo_altitude` int(11) DEFAULT NULL,
  `photo_lat` double DEFAULT NULL,
  `photo_lng` double DEFAULT NULL,
  `photo_country` varbinary(2) DEFAULT x'7a7a',
  `photo_year` int(11) DEFAULT NULL,
  `photo_month` int(11) DEFAULT NULL,
  `photo_day` int(11) DEFAULT NULL,
  `photo_iso` int(11) DEFAULT NULL,
  `photo_exposure` varbinary(64) DEFAULT NULL,
  `photo_f_number` float DEFAULT NULL,
  `photo_focal_length` int(11) DEFAULT NULL,
  `photo_quality` smallint(6) DEFAULT NULL,
  `photo_faces` int(11) DEFAULT NULL,
  `photo_resolution` smallint(6) DEFAULT NULL,
  `photo_duration` bigint(20) DEFAULT NULL,
  `photo_color` smallint(6) DEFAULT -1,
  `camera_id` int(10) unsigned DEFAULT 1,
  `camera_serial` varbinary(160) DEFAULT NULL,
  `camera_src` varbinary(8) DEFAULT NULL,
  `lens_id` int(10) unsigned DEFAULT 1,
  `created_by` varbinary(42) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `edited_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `checked_at` datetime DEFAULT NULL,
  `estimated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uix_photos_photo_uid` (`photo_uid`),
  KEY `idx_photos_taken_uid` (`taken_at`,`photo_uid`),
  KEY `idx_photos_path_name` (`photo_path`,`photo_name`),
  KEY `idx_photos_place_id` (`place_id`),
  KEY `idx_photos_photo_lng` (`photo_lng`),
  KEY `idx_photos_published_at` (`published_at`),
  KEY `idx_photos_photo_lat` (`photo_lat`),
  KEY `idx_photos_country_year_month` (`photo_country`,`photo_year`,`photo_month`),
  KEY `idx_photos_checked_at` (`checked_at`),
  KEY `idx_photos_deleted_at` (`deleted_at`),
  KEY `idx_photos_uuid` (`uuid`),
  KEY `idx_photos_cell_id` (`cell_id`),
  KEY `idx_photos_ymd` (`photo_day`),
  KEY `idx_photos_camera_lens` (`camera_id`,`lens_id`),
  KEY `idx_photos_created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES
(1,'','2019-05-04 04:01:12','2019-05-04 06:01:12','meta','psru0pz7doek9rpf','image','','Dog Orange / 2019','','','','2019/05','20190504_040041_D88DC97D','dog_orange',0,0,0,0,0,'UTC+2','zz','','zz',0,30,0,0,'zz',2019,5,4,0,'',0,0,3,0,0,0,13,1,'','',1,'usru08l3fnwiqovs','2025-02-17 14:39:35','2025-02-22 15:17:10','2025-02-17 14:39:53',NULL,'2025-02-25 15:29:37','2025-02-22 15:17:10',NULL),
(2,'','2019-05-04 03:48:43','2019-05-04 05:48:43','meta','psru0pxfnmlyottq','image','','Coin Gold / 2019','','','','2019/05','20190504_034736_02DF7FF8','coin_gold',0,0,0,0,0,'UTC+2','zz','','zz',0,30,0,0,'zz',2019,5,4,0,'',0,0,3,0,0,0,11,1,'','',1,'usru08l3fnwiqovs','2025-02-17 14:39:33','2025-02-22 15:17:10','2025-02-17 14:39:54',NULL,'2025-02-25 15:29:37','2025-02-22 15:17:10',NULL),
(3,'','2019-05-04 04:45:04','2019-05-04 06:45:04','meta','pss3d26c4zl6y7jz','image','','Leaves Gold / 2019','','','','2019/05','20190504_044203_7DA5BF88','leaves_gold',0,0,0,0,0,'UTC+2','zz','','zz',0,30,0,0,'zz',2019,5,4,0,'',0,0,3,0,0,0,2,1,'','',1,'uss3au2a167sg9na','2025-02-22 15:44:30','2025-02-22 15:59:34','2025-02-22 15:44:38',NULL,'2025-02-22 15:59:34','2025-02-22 15:59:34',NULL),
(4,'','2010-03-08 12:37:30','2010-03-08 12:37:30','meta','pss3d26q74x9pg6h','image','','Beach Colorfilter / 2010','','','','2010/03','20100308_123730_BCBC48D3','beach_colorfilter',0,0,0,0,0,'','zz','','zz',0,0,0,0,'zz',2010,3,8,100,'1/200',0,24,3,0,0,0,2,2,'','meta',1,'uss3au2a167sg9na','2025-02-22 15:44:30','2025-02-22 15:59:34','2025-02-22 15:44:38',NULL,'2025-02-22 15:59:34','2025-02-22 15:59:34',NULL),
(5,'','2019-04-30 10:05:40','2019-04-30 12:05:40','meta','pss3d27c2maar8ut','image','','Fish Anthias Magenta / 2019','','','','2019/04','20190430_100540_54CF4708','fish_anthias_magenta',0,0,0,0,0,'UTC+2','zz','','zz',0,30,0,0,'zz',2019,4,30,0,'',0,0,3,0,0,0,5,1,'','',1,'uss3au2a167sg9na','2025-02-22 15:44:31','2025-02-22 15:59:34','2025-02-22 15:44:37',NULL,'2025-02-22 15:59:34','2025-02-22 15:59:34',NULL),
(6,'','2017-02-15 12:13:40','2017-02-15 14:13:40','meta','pss3d27cv7xrsm3j','image','','Unknown','','','','2017/02','20170215_121340_57B0A8B0','beach_sand',0,0,0,0,0,'Africa/Johannesburg','za:nO8gYtwN0sre','meta','s2:1ef744cd1234',0,-1,-29.28247777777778,31.44363611111111,'za',2017,2,15,25,'1/2024',0,4,3,0,0,0,6,3,'','meta',2,'uss3au2a167sg9na','2025-02-22 15:44:31','2025-02-22 15:44:31',NULL,NULL,'2025-02-22 15:59:34',NULL,NULL),
(7,'','2019-05-04 04:18:54','2019-05-04 06:18:54','meta','pss3d28kd0h287c7','image','','Limes / 2019','','','','2019/05','20190504_041451_7F270207','limes',0,0,0,0,0,'UTC+2','zz','','zz',0,30,0,0,'zz',2019,5,4,0,'',0,0,3,0,0,0,10,1,'','',1,'uss3au2a167sg9na','2025-02-22 15:44:32','2025-02-22 15:59:34','2025-02-22 15:44:37',NULL,'2025-02-22 15:59:34','2025-02-22 15:59:34',NULL),
(8,'','2013-11-18 17:27:40','2013-11-18 19:27:40','meta','pss3d282sucg0zbr','image','','Paraglider Launch / Cape Town / 2013','','','','2013/11','20131118_172740_CC5ABA1E','ocean_cyan',0,0,0,0,0,'Africa/Johannesburg','za:2IN6v3Szw70s','meta','s2:1dcc673febb4',0,364,-33.917535,18.40261,'za',2013,11,18,250,'1/100',5.6,105,3,0,0,0,6,4,'033024001432','meta',3,'uss3au2a167sg9na','2025-02-22 15:44:32','2025-02-22 15:44:32',NULL,NULL,'2025-02-22 15:59:34',NULL,NULL),
(9,'','2025-02-22 15:45:11','2025-02-22 15:45:11','','pss3d3cge3ykz6wi','image','','Photoprismgood','','','','2025/02','20250222_154511_6667D833','photoprismgood',0,0,0,0,0,'UTC','zz','','zz',0,0,0,0,'zz',-1,-1,-1,0,'',0,0,3,0,0,0,4,1,'','',1,'uss3au2a167sg9na','2025-02-22 15:45:12','2025-02-22 15:59:34','2025-02-22 15:45:17',NULL,'2025-02-22 15:59:34','2025-02-22 15:59:34',NULL),
(10,'','2025-02-25 11:08:16','2025-02-25 11:08:16','','pss8k9y7zyycxmjh','image','','Will Shrek','manual','','','2025/02','20250225_110816_3709CEC1','20250116_074003_3709CEC1',0,0,0,0,0,'UTC','zz','','zz',0,0,0,0,'zz',-1,-1,-1,0,'',0,0,3,0,1,0,9,1,'','',1,'uss3au2a167sg9na','2025-02-25 11:08:22','2025-02-25 11:15:37','2025-02-25 11:08:57',NULL,'2025-02-25 11:15:37','2025-02-25 11:15:37',NULL),
(11,'','2025-02-25 11:09:35','2025-02-25 11:09:35','','pss8kc2qv5nz0k5f','image','','Pyramids of Giza','manual','','','2025/02','20250225_110935_A592021A','20250116_074003_A592021A',0,0,0,0,0,'UTC','zz','manual','zz',0,0,0,0,'eg',-1,-1,-1,0,'',0,0,3,0,2,0,3,1,'','',1,'uss3au2a167sg9na','2025-02-25 11:09:38','2025-02-25 11:10:07','2025-02-25 11:10:07',NULL,'2025-02-25 11:15:37',NULL,NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos_albums`
--

DROP TABLE IF EXISTS `photos_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos_albums` (
  `photo_uid` varbinary(42) NOT NULL,
  `album_uid` varbinary(42) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `missing` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`photo_uid`,`album_uid`),
  KEY `idx_photos_albums_album_uid` (`album_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos_albums`
--

LOCK TABLES `photos_albums` WRITE;
/*!40000 ALTER TABLE `photos_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos_keywords`
--

DROP TABLE IF EXISTS `photos_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos_keywords` (
  `photo_id` int(10) unsigned NOT NULL,
  `keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`photo_id`,`keyword_id`),
  KEY `idx_photos_keywords_keyword_id` (`keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos_keywords`
--

LOCK TABLES `photos_keywords` WRITE;
/*!40000 ALTER TABLE `photos_keywords` DISABLE KEYS */;
INSERT INTO `photos_keywords` VALUES
(1,1),
(1,2),
(2,3),
(2,4),
(3,4),
(11,4),
(2,5),
(3,6),
(4,6),
(3,7),
(4,8),
(6,8),
(4,9),
(4,10),
(4,11),
(5,12),
(5,13),
(5,14),
(5,15),
(6,16),
(8,16),
(6,17),
(6,18),
(6,19),
(6,20),
(8,20),
(6,21),
(7,22),
(7,23),
(7,24),
(8,25),
(8,26),
(8,27),
(8,28),
(8,29),
(8,30),
(8,31),
(8,32),
(8,33),
(8,34),
(8,35),
(8,36),
(9,37),
(9,38),
(10,39),
(10,40),
(11,41),
(11,42),
(11,43);
/*!40000 ALTER TABLE `photos_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos_labels`
--

DROP TABLE IF EXISTS `photos_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos_labels` (
  `photo_id` int(10) unsigned NOT NULL,
  `label_id` int(10) unsigned NOT NULL,
  `label_src` varbinary(8) DEFAULT NULL,
  `uncertainty` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`photo_id`,`label_id`),
  KEY `idx_photos_labels_label_id` (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos_labels`
--

LOCK TABLES `photos_labels` WRITE;
/*!40000 ALTER TABLE `photos_labels` DISABLE KEYS */;
INSERT INTO `photos_labels` VALUES
(1,1,'image',23),
(4,3,'image',21),
(4,4,'keyword',25),
(6,4,'keyword',25),
(7,6,'image',24),
(8,8,'location',0),
(11,9,'image',12);
/*!40000 ALTER TABLE `photos_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos_users`
--

DROP TABLE IF EXISTS `photos_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos_users` (
  `uid` varbinary(42) NOT NULL,
  `user_uid` varbinary(42) NOT NULL,
  `team_uid` varbinary(42) DEFAULT NULL,
  `perm` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`uid`,`user_uid`),
  KEY `idx_photos_users_user_uid` (`user_uid`),
  KEY `idx_photos_users_team_uid` (`team_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos_users`
--

LOCK TABLES `photos_users` WRITE;
/*!40000 ALTER TABLE `photos_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` varbinary(42) NOT NULL,
  `place_label` varchar(400) DEFAULT NULL,
  `place_district` varchar(100) DEFAULT NULL,
  `place_city` varchar(100) DEFAULT NULL,
  `place_state` varchar(100) DEFAULT NULL,
  `place_country` varbinary(2) DEFAULT NULL,
  `place_keywords` varchar(300) DEFAULT NULL,
  `place_favorite` tinyint(1) DEFAULT NULL,
  `photo_count` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_places_place_district` (`place_district`),
  KEY `idx_places_place_city` (`place_city`),
  KEY `idx_places_place_state` (`place_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES
('za:2IN6v3Szw70s','Cape Town, Western Cape, South Africa','Cape Town','Cape Town','Western Cape','za','',0,1,'2025-02-22 15:44:32','2025-02-22 15:44:32'),
('za:nO8gYtwN0sre','Zinkwazi Beach, KwaZulu-Natal, South Africa','Zinkwazi Beach','','KwaZulu-Natal','za','',0,1,'2025-02-22 15:44:31','2025-02-22 15:44:31'),
('zz','Unknown','Unknown','Unknown','Unknown','zz','',0,9,'2025-02-22 14:56:27','2025-02-22 14:56:27');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reactions`
--

DROP TABLE IF EXISTS `reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reactions` (
  `uid` varbinary(42) NOT NULL,
  `user_uid` varbinary(42) NOT NULL,
  `reaction` varbinary(64) NOT NULL,
  `reacted` int(11) DEFAULT NULL,
  `reacted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`,`user_uid`,`reaction`),
  KEY `idx_reactions_reacted_at` (`reacted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reactions`
--

LOCK TABLES `reactions` WRITE;
/*!40000 ALTER TABLE `reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acc_name` varchar(160) DEFAULT NULL,
  `acc_owner` varchar(160) DEFAULT NULL,
  `acc_url` varchar(255) DEFAULT NULL,
  `acc_type` varbinary(255) DEFAULT NULL,
  `acc_key` varbinary(255) DEFAULT NULL,
  `acc_user` varbinary(255) DEFAULT NULL,
  `acc_pass` varbinary(255) DEFAULT NULL,
  `acc_timeout` varbinary(16) DEFAULT NULL,
  `acc_error` varbinary(512) DEFAULT NULL,
  `acc_errors` int(11) DEFAULT NULL,
  `acc_share` tinyint(1) DEFAULT NULL,
  `acc_sync` tinyint(1) DEFAULT NULL,
  `retry_limit` int(11) DEFAULT NULL,
  `share_path` varbinary(1024) DEFAULT NULL,
  `share_size` varbinary(16) DEFAULT NULL,
  `share_expires` int(11) DEFAULT NULL,
  `sync_path` varbinary(1024) DEFAULT NULL,
  `sync_status` varbinary(16) DEFAULT NULL,
  `sync_interval` int(11) DEFAULT NULL,
  `sync_date` datetime DEFAULT NULL,
  `sync_upload` tinyint(1) DEFAULT NULL,
  `sync_download` tinyint(1) DEFAULT NULL,
  `sync_filenames` tinyint(1) DEFAULT NULL,
  `sync_raw` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_services_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `subj_uid` varbinary(42) NOT NULL,
  `subj_type` varbinary(8) DEFAULT '',
  `subj_src` varbinary(8) DEFAULT '',
  `subj_slug` varbinary(160) DEFAULT '',
  `subj_name` varchar(160) DEFAULT '',
  `subj_alias` varchar(160) DEFAULT '',
  `subj_about` varchar(512) DEFAULT NULL,
  `subj_bio` varchar(2048) DEFAULT NULL,
  `subj_notes` varchar(1024) DEFAULT NULL,
  `subj_favorite` tinyint(1) DEFAULT 0,
  `subj_hidden` tinyint(1) DEFAULT 0,
  `subj_private` tinyint(1) DEFAULT 0,
  `subj_excluded` tinyint(1) DEFAULT 0,
  `file_count` int(11) DEFAULT 0,
  `photo_count` int(11) DEFAULT 0,
  `thumb` varbinary(128) DEFAULT '',
  `thumb_src` varbinary(8) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`subj_uid`),
  UNIQUE KEY `uix_subjects_subj_name` (`subj_name`),
  KEY `idx_subjects_subj_slug` (`subj_slug`),
  KEY `idx_subjects_thumb` (`thumb`),
  KEY `idx_subjects_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `migrated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_version_edition` (`version`,`edition`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES
(1,'250222-65269077f-Linux-AMD64-DEVELOP','ce','','2025-02-22 14:56:10','2025-02-25 11:01:20','2025-02-25 11:01:20');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-02-25 15:44:02
