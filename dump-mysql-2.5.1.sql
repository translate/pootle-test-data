-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: pootle
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.14.04.1-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add session',1,'add_session'),(2,'Can change session',1,'change_session'),(3,'Can delete session',1,'delete_session'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add registration profile',8,'add_registrationprofile'),(23,'Can change registration profile',8,'change_registrationprofile'),(24,'Can delete registration profile',8,'delete_registrationprofile'),(25,'Can add site configuration',9,'add_siteconfiguration'),(26,'Can change site configuration',9,'change_siteconfiguration'),(27,'Can delete site configuration',9,'delete_siteconfiguration'),(28,'Can add vote',10,'add_vote'),(29,'Can change vote',10,'change_vote'),(30,'Can delete vote',10,'delete_vote'),(31,'Can add migration history',11,'add_migrationhistory'),(32,'Can change migration history',11,'change_migrationhistory'),(33,'Can delete migration history',11,'delete_migrationhistory'),(34,'Can add suggestion',12,'add_suggestion'),(35,'Can change suggestion',12,'change_suggestion'),(36,'Can delete suggestion',12,'delete_suggestion'),(37,'Can add directory',13,'add_directory'),(38,'Can change directory',13,'change_directory'),(39,'Can delete directory',13,'delete_directory'),(40,'Can add permission set',14,'add_permissionset'),(41,'Can change permission set',14,'change_permissionset'),(42,'Can delete permission set',14,'delete_permissionset'),(43,'Can add quality check',15,'add_qualitycheck'),(44,'Can change quality check',15,'change_qualitycheck'),(45,'Can delete quality check',15,'delete_qualitycheck'),(46,'Can add suggestion',16,'add_suggestion'),(47,'Can change suggestion',16,'change_suggestion'),(48,'Can delete suggestion',16,'delete_suggestion'),(49,'Can add unit',17,'add_unit'),(50,'Can change unit',17,'change_unit'),(51,'Can delete unit',17,'delete_unit'),(52,'Can add store',18,'add_store'),(53,'Can change store',18,'change_store'),(54,'Can delete store',18,'delete_store'),(55,'Can add language',19,'add_language'),(56,'Can change language',19,'change_language'),(57,'Can delete language',19,'delete_language'),(58,'Can add project',20,'add_project'),(59,'Can change project',20,'change_project'),(60,'Can delete project',20,'delete_project'),(61,'Can add translation project',21,'add_translationproject'),(62,'Can change translation project',21,'change_translationproject'),(63,'Can delete translation project',21,'delete_translationproject'),(64,'Can add pootle profile',22,'add_pootleprofile'),(65,'Can change pootle profile',22,'change_pootleprofile'),(66,'Can delete pootle profile',22,'delete_pootleprofile'),(67,'Can add submission',23,'add_submission'),(68,'Can change submission',23,'change_submission'),(69,'Can delete submission',23,'delete_submission'),(70,'Can add goal',24,'add_goal'),(71,'Can change goal',24,'change_goal'),(72,'Can delete goal',24,'delete_goal'),(73,'Can add Item with goal',25,'add_itemwithgoal'),(74,'Can change Item with goal',25,'change_itemwithgoal'),(75,'Can delete Item with goal',25,'delete_itemwithgoal'),(76,'Can add notice',26,'add_notice'),(77,'Can change notice',26,'change_notice'),(78,'Can delete notice',26,'delete_notice'),(79,'Can add legal page',27,'add_legalpage'),(80,'Can change legal page',27,'change_legalpage'),(81,'Can delete legal page',27,'delete_legalpage'),(82,'Can add static page',28,'add_staticpage'),(83,'Can change static page',28,'change_staticpage'),(84,'Can delete static page',28,'delete_staticpage'),(85,'Can add agreement',29,'add_agreement'),(86,'Can change agreement',29,'change_agreement'),(87,'Can delete agreement',29,'delete_agreement'),(88,'Can add Tag',30,'add_tag'),(89,'Can change Tag',30,'change_tag'),(90,'Can delete Tag',30,'delete_tag'),(91,'Can add Tagged Item',31,'add_taggeditem'),(92,'Can change Tagged Item',31,'change_taggeditem'),(93,'Can delete Tagged Item',31,'delete_taggeditem'),(94,'Can view a translation project',13,'view'),(95,'Can make a suggestion for a translation',13,'suggest'),(96,'Can submit a translation',13,'translate'),(97,'Can overwrite translations on uploading files',13,'overwrite'),(98,'Can review translations',13,'review'),(99,'Can download archives of translation projects',13,'archive'),(100,'Can administrate a translation project',13,'administrate'),(101,'Can commit to version control',13,'commit');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'nobody','any anonymous user','','','!',0,1,0,'2014-06-12 14:51:31','2014-06-12 14:51:31'),(2,'default','any authenticated user','','','!',0,1,0,'2014-06-12 14:51:32','2014-06-12 14:51:32'),(3,'admin','Administrator','','','pbkdf2_sha256$10000$rRoXE00lPrSk$g1IPzKXvRo5pOGGSYleoyxdGbCjnfBCWx6Uf3y5+hm0=',1,1,1,'2014-06-12 14:51:38','2014-06-12 14:51:38');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'session','sessions','session'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'registration profile','registration','registrationprofile'),(9,'site configuration','siteconfig','siteconfiguration'),(10,'vote','voting','vote'),(11,'migration history','south','migrationhistory'),(12,'suggestion','pootle_app','suggestion'),(13,'pootle','pootle_app','directory'),(14,'permission set','pootle_app','permissionset'),(15,'quality check','pootle_store','qualitycheck'),(16,'suggestion','pootle_store','suggestion'),(17,'unit','pootle_store','unit'),(18,'store','pootle_store','store'),(19,'language','pootle_language','language'),(20,'project','pootle_project','project'),(21,'translation project','pootle_translationproject','translationproject'),(22,'pootle profile','pootle_profile','pootleprofile'),(23,'submission','pootle_statistics','submission'),(24,'goal','pootle_tagging','goal'),(25,'Item with goal','pootle_tagging','itemwithgoal'),(26,'notice','pootle_notifications','notice'),(27,'legal page','staticpages','legalpage'),(28,'static page','staticpages','staticpage'),(29,'agreement','staticpages','agreement'),(30,'Tag','taggit','tag'),(31,'Tagged Item','taggit','taggeditem');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_directory`
--

DROP TABLE IF EXISTS `pootle_app_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_directory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `pootle_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pootle_app_directory_63f17a16` (`parent_id`),
  KEY `pootle_app_directory_7134e34b` (`pootle_path`),
  CONSTRAINT `parent_id_refs_id_5434c703` FOREIGN KEY (`parent_id`) REFERENCES `pootle_app_directory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_directory`
--

LOCK TABLES `pootle_app_directory` WRITE;
/*!40000 ALTER TABLE `pootle_app_directory` DISABLE KEYS */;
INSERT INTO `pootle_app_directory` VALUES (1,'',NULL,'/'),(2,'projects',1,'/projects/'),(3,'goals',1,'/goals/'),(4,'templates',1,'/templates/'),(5,'en',1,'/en/'),(6,'terminology',2,'/projects/terminology/'),(7,'tutorial',2,'/projects/tutorial/'),(8,'tutorial',4,'/templates/tutorial/'),(9,'son',1,'/son/'),(10,'terminology',9,'/son/terminology/'),(11,'gu',1,'/gu/'),(12,'ff',1,'/ff/'),(13,'terminology',12,'/ff/terminology/'),(14,'nqo',1,'/nqo/'),(15,'nso',1,'/nso/'),(16,'terminology',15,'/nso/terminology/'),(17,'ca',1,'/ca/'),(18,'terminology',17,'/ca/terminology/'),(19,'gnome',18,'/ca/terminology/gnome/'),(20,'sco',1,'/sco/'),(21,'gun',1,'/gun/'),(22,'ca@valencia',1,'/ca@valencia/'),(23,'gd',1,'/gd/'),(24,'ga',1,'/ga/'),(25,'terminology',24,'/ga/terminology/'),(26,'cs',1,'/cs/'),(27,'terminology',26,'/cs/terminology/'),(28,'gnome',27,'/cs/terminology/gnome/'),(29,'gl',1,'/gl/'),(30,'terminology',29,'/gl/terminology/'),(31,'mfe',1,'/mfe/'),(32,'ps',1,'/ps/'),(33,'lb',1,'/lb/'),(34,'pt',1,'/pt/'),(35,'terminology',34,'/pt/terminology/'),(36,'gnome',35,'/pt/terminology/gnome/'),(37,'ln',1,'/ln/'),(38,'terminology',37,'/ln/terminology/'),(39,'lo',1,'/lo/'),(40,'tt',1,'/tt/'),(41,'pms',1,'/pms/'),(42,'tr',1,'/tr/'),(43,'terminology',42,'/tr/terminology/'),(44,'uk',1,'/uk/'),(45,'terminology',44,'/uk/terminology/'),(46,'gnome',45,'/uk/terminology/gnome/'),(47,'lv',1,'/lv/'),(48,'lt',1,'/lt/'),(49,'terminology',48,'/lt/terminology/'),(50,'pa',1,'/pa/'),(51,'terminology',50,'/pa/terminology/'),(52,'gnome',51,'/pa/terminology/gnome/'),(53,'sw',1,'/sw/'),(54,'terminology',53,'/sw/terminology/'),(55,'tg',1,'/tg/'),(56,'th',1,'/th/'),(57,'terminology',56,'/th/terminology/'),(58,'gnome',57,'/th/terminology/gnome/'),(59,'ti',1,'/ti/'),(60,'su',1,'/su/'),(61,'te',1,'/te/'),(62,'is',1,'/is/'),(63,'terminology',62,'/is/terminology/'),(64,'en_GB',1,'/en_GB/'),(65,'ta',1,'/ta/'),(66,'hy',1,'/hy/'),(67,'pt_BR',1,'/pt_BR/'),(68,'terminology',67,'/pt_BR/terminology/'),(69,'gnome',68,'/pt_BR/terminology/gnome/'),(70,'hr',1,'/hr/'),(71,'de',1,'/de/'),(72,'terminology',71,'/de/terminology/'),(73,'ht',1,'/ht/'),(74,'da',1,'/da/'),(75,'terminology',74,'/da/terminology/'),(76,'gnome',75,'/da/terminology/gnome/'),(77,'hi',1,'/hi/'),(78,'terminology',77,'/hi/terminology/'),(79,'gnome',78,'/hi/terminology/gnome/'),(80,'dz',1,'/dz/'),(81,'st',1,'/st/'),(82,'ha',1,'/ha/'),(83,'he',1,'/he/'),(84,'mg',1,'/mg/'),(85,'fur',1,'/fur/'),(86,'zh_CN',1,'/zh_CN/'),(87,'terminology',86,'/zh_CN/terminology/'),(88,'gnome',87,'/zh_CN/terminology/gnome/'),(89,'ml',1,'/ml/'),(90,'mn',1,'/mn/'),(91,'mi',1,'/mi/'),(92,'cy',1,'/cy/'),(93,'en_ZA',1,'/en_ZA/'),(94,'zh_HK',1,'/zh_HK/'),(95,'terminology',94,'/zh_HK/terminology/'),(96,'gnome',95,'/zh_HK/terminology/gnome/'),(97,'mt',1,'/mt/'),(98,'fil',1,'/fil/'),(99,'ms',1,'/ms/'),(100,'terminology',99,'/ms/terminology/'),(101,'gnome',100,'/ms/terminology/gnome/'),(102,'mr',1,'/mr/'),(103,'terminology',102,'/mr/terminology/'),(104,'gnome',103,'/mr/terminology/gnome/'),(105,'ug',1,'/ug/'),(106,'el',1,'/el/'),(107,'eo',1,'/eo/'),(108,'terminology',107,'/eo/terminology/'),(109,'gnome',108,'/eo/terminology/gnome/'),(110,'tk',1,'/tk/'),(111,'af',1,'/af/'),(112,'terminology',111,'/af/terminology/'),(113,'tutorial',111,'/af/tutorial/'),(114,'ve',1,'/ve/'),(115,'oc',1,'/oc/'),(116,'ak',1,'/ak/'),(117,'terminology',116,'/ak/terminology/'),(118,'am',1,'/am/'),(119,'terminology',118,'/am/terminology/'),(120,'gnome',119,'/am/terminology/gnome/'),(121,'it',1,'/it/'),(122,'terminology',121,'/it/terminology/'),(123,'gnome',122,'/it/terminology/gnome/'),(124,'an',1,'/an/'),(125,'ia',1,'/ia/'),(126,'ar',1,'/ar/'),(127,'terminology',126,'/ar/terminology/'),(128,'gnome',127,'/ar/terminology/gnome/'),(129,'tutorial',126,'/ar/tutorial/'),(130,'mk',1,'/mk/'),(131,'terminology',130,'/mk/terminology/'),(132,'gnome',131,'/mk/terminology/gnome/'),(133,'zu',1,'/zu/'),(134,'tutorial',133,'/zu/tutorial/'),(135,'eu',1,'/eu/'),(136,'terminology',135,'/eu/terminology/'),(137,'gnome',136,'/eu/terminology/gnome/'),(138,'tutorial',135,'/eu/tutorial/'),(139,'et',1,'/et/'),(140,'az',1,'/az/'),(141,'terminology',140,'/az/terminology/'),(142,'gnome',141,'/az/terminology/gnome/'),(143,'id',1,'/id/'),(144,'arn',1,'/arn/'),(145,'bn_IN',1,'/bn_IN/'),(146,'pap',1,'/pap/'),(147,'terminology',146,'/pap/terminology/'),(148,'ru',1,'/ru/'),(149,'nl',1,'/nl/'),(150,'terminology',149,'/nl/terminology/'),(151,'gnome',150,'/nl/terminology/gnome/'),(152,'yo',1,'/yo/'),(153,'nn',1,'/nn/'),(154,'terminology',153,'/nn/terminology/'),(155,'gnome',154,'/nn/terminology/gnome/'),(156,'nah',1,'/nah/'),(157,'ne',1,'/ne/'),(158,'csb',1,'/csb/'),(159,'wo',1,'/wo/'),(160,'nap',1,'/nap/'),(161,'es',1,'/es/'),(162,'terminology',161,'/es/terminology/'),(163,'gnome',162,'/es/terminology/gnome/'),(164,'rm',1,'/rm/'),(165,'zh_TW',1,'/zh_TW/'),(166,'terminology',165,'/zh_TW/terminology/'),(167,'gnome',166,'/zh_TW/terminology/gnome/'),(168,'ro',1,'/ro/'),(169,'terminology',168,'/ro/terminology/'),(170,'ro',169,'/ro/terminology/ro/'),(171,'gnome',170,'/ro/terminology/ro/gnome/'),(172,'sah',1,'/sah/'),(173,'jv',1,'/jv/'),(174,'be',1,'/be/'),(175,'fr',1,'/fr/'),(176,'terminology',175,'/fr/terminology/'),(177,'gnome',176,'/fr/terminology/gnome/'),(178,'tutorial',175,'/fr/tutorial/'),(179,'bg',1,'/bg/'),(180,'terminology',179,'/bg/terminology/'),(181,'sv',1,'/sv/'),(182,'terminology',181,'/sv/terminology/'),(183,'gnome',182,'/sv/terminology/gnome/'),(184,'wa',1,'/wa/'),(185,'terminology',184,'/wa/terminology/'),(186,'gnome',185,'/wa/terminology/gnome/'),(187,'ast',1,'/ast/'),(188,'terminology',187,'/ast/terminology/'),(189,'vi',1,'/vi/'),(190,'terminology',189,'/vi/terminology/'),(191,'gnome',190,'/vi/terminology/gnome/'),(192,'fy',1,'/fy/'),(193,'bn',1,'/bn/'),(194,'bo',1,'/bo/'),(195,'fa',1,'/fa/'),(196,'terminology',195,'/fa/terminology/'),(197,'gnome',196,'/fa/terminology/gnome/'),(198,'br',1,'/br/'),(199,'bs',1,'/bs/'),(200,'mai',1,'/mai/'),(201,'fi',1,'/fi/'),(202,'hu',1,'/hu/'),(203,'terminology',202,'/hu/terminology/'),(204,'gnome',203,'/hu/terminology/gnome/'),(205,'ja',1,'/ja/'),(206,'terminology',205,'/ja/terminology/'),(207,'gnome',206,'/ja/terminology/gnome/'),(208,'fo',1,'/fo/'),(209,'ka',1,'/ka/'),(210,'so',1,'/so/'),(211,'kk',1,'/kk/'),(212,'sr',1,'/sr/'),(213,'sq',1,'/sq/'),(214,'terminology',213,'/sq/terminology/'),(215,'gnome',214,'/sq/terminology/gnome/'),(216,'ko',1,'/ko/'),(217,'terminology',216,'/ko/terminology/'),(218,'kn',1,'/kn/'),(219,'terminology',218,'/kn/terminology/'),(220,'gnome',219,'/kn/terminology/gnome/'),(221,'km',1,'/km/'),(222,'terminology',221,'/km/terminology/'),(223,'or',1,'/or/'),(224,'terminology',223,'/or/terminology/'),(225,'sk',1,'/sk/'),(226,'terminology',225,'/sk/terminology/'),(227,'gnome',226,'/sk/terminology/gnome/'),(228,'si',1,'/si/'),(229,'pl',1,'/pl/'),(230,'terminology',229,'/pl/terminology/'),(231,'gnome',230,'/pl/terminology/gnome/'),(232,'kw',1,'/kw/'),(233,'ku',1,'/ku/'),(234,'terminology',233,'/ku/terminology/'),(235,'gnome',234,'/ku/terminology/gnome/'),(236,'sl',1,'/sl/'),(237,'ky',1,'/ky/'),(238,'nb',1,'/nb/'),(239,'terminology',238,'/nb/terminology/'),(240,'gnome',239,'/nb/terminology/gnome/');
/*!40000 ALTER TABLE `pootle_app_directory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_language`
--

DROP TABLE IF EXISTS `pootle_app_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `specialchars` varchar(255) NOT NULL,
  `nplurals` smallint(6) NOT NULL,
  `pluralequation` varchar(255) NOT NULL,
  `directory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `directory_id` (`directory_id`),
  CONSTRAINT `directory_id_refs_id_644635e1` FOREIGN KEY (`directory_id`) REFERENCES `pootle_app_directory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_language`
--

LOCK TABLES `pootle_app_language` WRITE;
/*!40000 ALTER TABLE `pootle_app_language` DISABLE KEYS */;
INSERT INTO `pootle_app_language` VALUES (1,'templates','Templates','','',0,'',4),(2,'en','English','','',2,'(n != 1)',5),(3,'son','Songhai languages','','ɲŋšžãõẽĩƝŊŠŽÃÕẼĨ',2,'(n != 1)',9),(4,'gu','Gujarati','','',2,'(n != 1)',11),(5,'ff','Fulah','','',2,'(n != 1)',12),(6,'nqo','N\'Ko','','',2,'(n > 1)',14),(7,'nso','Pedi; Sepedi; Northern Sotho','','šŠ',2,'(n != 1)',15),(8,'ca','Catalan; Valencian','','',2,'(n != 1)',17),(9,'sco','Scots','','',2,'(n != 1)',20),(10,'gun','Gun','','',2,'(n > 1)',21),(11,'ca@valencia','Catalan; Valencian','','',2,'(n != 1)',22),(12,'gd','Gaelic; Scottish Gaelic','','àòùèìÀÈÌÒÙ',4,'(n==1 || n==11) ? 0 : (n==2 || n==12) ? 1 : (n > 2 && n < 20) ? 2 : 3',23),(13,'ga','Irish','','',5,'n==1 ? 0 : n==2 ? 1 : n<7 ? 2 : n<11 ? 3 : 4',24),(14,'cs','Czech','','',3,'(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2',26),(15,'gl','Galician','','',2,'(n != 1)',29),(16,'mfe','Morisyen','','',2,'(n > 1)',31),(17,'ps','Pushto; Pashto','','',2,'(n != 1)',32),(18,'lb','Luxembourgish; Letzeburgesch','','',2,'(n != 1)',33),(19,'pt','Portuguese','','',2,'(n != 1)',34),(20,'ln','Lingala','','',2,'(n > 1)',37),(21,'lo','Lao','','',1,'0',39),(22,'tt','Tatar','','',1,'0',40),(23,'pms','Piemontese','','',2,'(n != 1)',41),(24,'tr','Turkish','','',1,'0',42),(25,'uk','Ukrainian','','',3,'(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)',44),(26,'lv','Latvian','','',3,'(n%10==1 && n%100!=11 ? 0 : n != 0 ? 1 : 2)',47),(27,'lt','Lithuanian','','',3,'(n%10==1 && n%100!=11 ? 0 : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : 2)',48),(28,'pa','Panjabi; Punjabi','','',2,'(n != 1)',50),(29,'sw','Swahili','','',2,'(n != 1)',53),(30,'tg','Tajik','','',2,'(n != 1)',55),(31,'th','Thai','','',1,'0',56),(32,'ti','Tigrinya','','',2,'(n > 1)',59),(33,'su','Sundanese','','',1,'0',60),(34,'te','Telugu','','',2,'(n != 1)',61),(35,'is','Icelandic','','',2,'(n != 1)',62),(36,'en_GB','English (United Kingdom)','','',2,'(n != 1)',64),(37,'ta','Tamil','','',2,'(n != 1)',65),(38,'hy','Armenian','','',1,'0',66),(39,'pt_BR','Portuguese (Brazil)','','',2,'(n != 1)',67),(40,'hr','Croatian','','',3,'(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)',70),(41,'de','German','','',2,'(n != 1)',71),(42,'ht','Haitian; Haitian Creole','','',2,'(n != 1)',73),(43,'da','Danish','','',2,'(n != 1)',74),(44,'hi','Hindi','','',2,'(n != 1)',77),(45,'dz','Dzongkha','','',1,'0',80),(46,'st','Sotho, Southern','','',2,'(n != 1)',81),(47,'ha','Hausa','','',2,'(n != 1)',82),(48,'he','Hebrew','','',2,'(n != 1)',83),(49,'mg','Malagasy','','',2,'(n > 1)',84),(50,'fur','Friulian','','',2,'(n != 1)',85),(51,'zh_CN','Chinese (China)','','←→↔×÷©…—‘’“”【】《》',1,'0',86),(52,'ml','Malayalam','','',2,'(n != 1)',89),(53,'mn','Mongolian','','',2,'(n != 1)',90),(54,'mi','Maori','','',2,'(n > 1)',91),(55,'cy','Welsh','','',2,'(n==2) ? 1 : 0',92),(56,'en_ZA','English (South Africa)','','',2,'(n != 1)',93),(57,'zh_HK','Chinese (Hong Kong)','','←→↔×÷©…—‘’“”「」『』【】《》',1,'0',94),(58,'mt','Maltese','','',4,'(n==1 ? 0 : n==0 || ( n%100>1 && n%100<11) ? 1 : (n%100>10 && n%100<20 ) ? 2 : 3)',97),(59,'fil','Filipino; Pilipino','','',2,'(n > 1)',98),(60,'ms','Malay','','',1,'0',99),(61,'mr','Marathi','','',2,'(n != 1)',102),(62,'ug','Uighur; Uyghur','','',1,'0',105),(63,'el','Greek, Modern (1453-)','','',2,'(n != 1)',106),(64,'eo','Esperanto','','',2,'(n != 1)',107),(65,'tk','Turkmen','','',2,'(n != 1)',110),(66,'af','Afrikaans','','ëïêôûáéíóúý',2,'(n != 1)',111),(67,'ve','Venda','','ḓṋḽṱ ḒṊḼṰ ṅṄ',2,'(n != 1)',114),(68,'oc','Occitan (post 1500)','','',2,'(n > 1)',115),(69,'ak','Akan','','ɛɔƐƆ',2,'n > 1',116),(70,'am','Amharic','','',2,'n > 1',118),(71,'it','Italian','','',2,'(n != 1)',121),(72,'an','Aragonese','','',2,'(n != 1)',124),(73,'ia','Interlingua (International Auxiliary Language Association)','','',2,'(n != 1)',125),(74,'ar','Arabic','','',6,'n==0 ? 0 : n==1 ? 1 : n==2 ? 2 : n%100>=3 && n%100<=10 ? 3 : n%100>=11 ? 4 : 5',126),(75,'mk','Macedonian','','',2,'n==1 || n%10==1 ? 0 : 1',130),(76,'zu','Zulu','','',2,'(n != 1)',133),(77,'eu','Basque','','',2,'(n != 1)',135),(78,'et','Estonian','','',2,'(n != 1)',139),(79,'az','Azerbaijani','','',2,'(n != 1)',140),(80,'id','Indonesian','','',1,'0',143),(81,'arn','Mapudungun; Mapuche','','',2,'n > 1',144),(82,'bn_IN','Bengali (India)','','',2,'(n != 1)',145),(83,'pap','Papiamento','','',2,'(n != 1)',146),(84,'ru','Russian','','',3,'(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)',148),(85,'nl','Dutch; Flemish','','',2,'(n != 1)',149),(86,'yo','Yoruba','','',2,'(n != 1)',152),(87,'nn','Norwegian Nynorsk; Nynorsk, Norwegian','','',2,'(n != 1)',153),(88,'nah','Nahuatl languages','','',2,'(n != 1)',156),(89,'ne','Nepali','','',2,'(n != 1)',157),(90,'csb','Kashubian','','',3,'n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2',158),(91,'wo','Wolof','','',2,'(n != 1)',159),(92,'nap','Neapolitan','','',2,'(n != 1)',160),(93,'es','Spanish; Castilian','','',2,'(n != 1)',161),(94,'rm','Romansh','','',2,'(n != 1)',164),(95,'zh_TW','Chinese (Taiwan)','','←→↔×÷©…—‘’“”「」『』【】《》',1,'0',165),(96,'ro','Romanian','','',3,'(n==1 ? 0 : (n==0 || (n%100 > 0 && n%100 < 20)) ? 1 : 2);',168),(97,'sah','Yakut','','',1,'0',172),(98,'jv','Javanese','','',2,'(n != 1)',173),(99,'be','Belarusian','','',3,'n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2',174),(100,'fr','French','','',2,'(n > 1)',175),(101,'bg','Bulgarian','','',2,'(n != 1)',179),(102,'sv','Swedish','','',2,'(n != 1)',181),(103,'wa','Walloon','','',2,'(n > 1)',184),(104,'ast','Asturian; Bable; Leonese; Asturleonese','','',2,'(n != 1)',187),(105,'vi','Vietnamese','','',1,'0',189),(106,'fy','Frisian','','',2,'(n != 1)',192),(107,'bn','Bengali','','',2,'(n != 1)',193),(108,'bo','Tibetan','','',1,'0',194),(109,'fa','Persian','','',1,'0',195),(110,'br','Breton','','',2,'n > 1',198),(111,'bs','Bosnian','','',3,'n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2',199),(112,'mai','Maithili','','',2,'(n != 1)',200),(113,'fi','Finnish','','',2,'(n != 1)',201),(114,'hu','Hungarian','','',2,'(n != 1)',202),(115,'ja','Japanese','','',1,'0',205),(116,'fo','Faroese','','',2,'(n != 1)',208),(117,'ka','Georgian','','',1,'0',209),(118,'so','Somali','','',2,'(n != 1)',210),(119,'kk','Kazakh','','',1,'0',211),(120,'sr','Serbian','','',3,'(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)',212),(121,'sq','Albanian','','',2,'(n != 1)',213),(122,'ko','Korean','','',1,'0',216),(123,'kn','Kannada','','',2,'(n != 1)',218),(124,'km','Central Khmer','','',1,'0',221),(125,'or','Oriya','','',2,'(n != 1)',223),(126,'sk','Slovak','','',3,'(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2',225),(127,'si','Sinhala; Sinhalese','','',2,'(n != 1)',228),(128,'pl','Polish','','',3,'(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)',229),(129,'kw','Cornish','','',4,'(n==1) ? 0 : (n==2) ? 1 : (n == 3) ? 2 : 3',232),(130,'ku','Kurdish','','',2,'(n != 1)',233),(131,'sl','Slovenian','','',4,'(n%100==1 ? 0 : n%100==2 ? 1 : n%100==3 || n%100==4 ? 2 : 3)',236),(132,'ky','Kirghiz; Kyrgyz','','',1,'0',237),(133,'nb','Bokmål, Norwegian; Norwegian Bokmål','','',2,'(n != 1)',238);
/*!40000 ALTER TABLE `pootle_app_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_permissionset`
--

DROP TABLE IF EXISTS `pootle_app_permissionset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_permissionset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `directory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pootle_app_permissionset_profile_id_2b9f2c29_uniq` (`profile_id`,`directory_id`),
  KEY `pootle_app_permissionset_141c6eec` (`profile_id`),
  KEY `pootle_app_permissionset_78100ca0` (`directory_id`),
  CONSTRAINT `directory_id_refs_id_55a72039` FOREIGN KEY (`directory_id`) REFERENCES `pootle_app_directory` (`id`),
  CONSTRAINT `profile_id_refs_id_441af606` FOREIGN KEY (`profile_id`) REFERENCES `pootle_app_pootleprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_permissionset`
--

LOCK TABLES `pootle_app_permissionset` WRITE;
/*!40000 ALTER TABLE `pootle_app_permissionset` DISABLE KEYS */;
INSERT INTO `pootle_app_permissionset` VALUES (1,1,1),(3,1,4),(2,2,1),(4,2,4);
/*!40000 ALTER TABLE `pootle_app_permissionset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_permissionset_negative_permissions`
--

DROP TABLE IF EXISTS `pootle_app_permissionset_negative_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_permissionset_negative_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionset_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pootle_app_permissionset_negativ_permissionset_id_42175e7a_uniq` (`permissionset_id`,`permission_id`),
  KEY `pootle_app_permissionset_negative_permissions_6a6f7e9e` (`permissionset_id`),
  KEY `pootle_app_permissionset_negative_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_37ba8a0f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `permissionset_id_refs_id_4a2afb8f` FOREIGN KEY (`permissionset_id`) REFERENCES `pootle_app_permissionset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_permissionset_negative_permissions`
--

LOCK TABLES `pootle_app_permissionset_negative_permissions` WRITE;
/*!40000 ALTER TABLE `pootle_app_permissionset_negative_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_app_permissionset_negative_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_permissionset_positive_permissions`
--

DROP TABLE IF EXISTS `pootle_app_permissionset_positive_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_permissionset_positive_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionset_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pootle_app_permissionset_positiv_permissionset_id_1c829b9a_uniq` (`permissionset_id`,`permission_id`),
  KEY `pootle_app_permissionset_positive_permissions_6a6f7e9e` (`permissionset_id`),
  KEY `pootle_app_permissionset_positive_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_58f95ce3` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `permissionset_id_refs_id_24869a8b` FOREIGN KEY (`permissionset_id`) REFERENCES `pootle_app_permissionset` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_permissionset_positive_permissions`
--

LOCK TABLES `pootle_app_permissionset_positive_permissions` WRITE;
/*!40000 ALTER TABLE `pootle_app_permissionset_positive_permissions` DISABLE KEYS */;
INSERT INTO `pootle_app_permissionset_positive_permissions` VALUES (1,1,94),(2,1,95),(5,2,94),(6,2,95),(3,2,96),(4,2,99),(7,3,94),(8,4,94);
/*!40000 ALTER TABLE `pootle_app_permissionset_positive_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_pootleprofile`
--

DROP TABLE IF EXISTS `pootle_app_pootleprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_pootleprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `unit_rows` smallint(6) NOT NULL,
  `input_height` smallint(6) NOT NULL,
  `ui_lang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_7e34ace4` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_pootleprofile`
--

LOCK TABLES `pootle_app_pootleprofile` WRITE;
/*!40000 ALTER TABLE `pootle_app_pootleprofile` DISABLE KEYS */;
INSERT INTO `pootle_app_pootleprofile` VALUES (1,1,9,5,NULL),(2,2,9,5,NULL),(3,3,9,5,NULL);
/*!40000 ALTER TABLE `pootle_app_pootleprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_pootleprofile_alt_src_langs`
--

DROP TABLE IF EXISTS `pootle_app_pootleprofile_alt_src_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_pootleprofile_alt_src_langs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pootleprofile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pootle_app_pootleprofile_alt_src_pootleprofile_id_787f242c_uniq` (`pootleprofile_id`,`language_id`),
  KEY `pootle_app_pootleprofile_alt_src_langs_22a0979d` (`pootleprofile_id`),
  KEY `pootle_app_pootleprofile_alt_src_langs_7ab48146` (`language_id`),
  CONSTRAINT `language_id_refs_id_64abc4fb` FOREIGN KEY (`language_id`) REFERENCES `pootle_app_language` (`id`),
  CONSTRAINT `pootleprofile_id_refs_id_4b2c3fb4` FOREIGN KEY (`pootleprofile_id`) REFERENCES `pootle_app_pootleprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_pootleprofile_alt_src_langs`
--

LOCK TABLES `pootle_app_pootleprofile_alt_src_langs` WRITE;
/*!40000 ALTER TABLE `pootle_app_pootleprofile_alt_src_langs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_app_pootleprofile_alt_src_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_pootleprofile_languages`
--

DROP TABLE IF EXISTS `pootle_app_pootleprofile_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_pootleprofile_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pootleprofile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pootle_app_pootleprofile_languag_pootleprofile_id_494e03c1_uniq` (`pootleprofile_id`,`language_id`),
  KEY `pootle_app_pootleprofile_languages_22a0979d` (`pootleprofile_id`),
  KEY `pootle_app_pootleprofile_languages_7ab48146` (`language_id`),
  CONSTRAINT `language_id_refs_id_1e6843c0` FOREIGN KEY (`language_id`) REFERENCES `pootle_app_language` (`id`),
  CONSTRAINT `pootleprofile_id_refs_id_7bf2b89f` FOREIGN KEY (`pootleprofile_id`) REFERENCES `pootle_app_pootleprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_pootleprofile_languages`
--

LOCK TABLES `pootle_app_pootleprofile_languages` WRITE;
/*!40000 ALTER TABLE `pootle_app_pootleprofile_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_app_pootleprofile_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_pootleprofile_projects`
--

DROP TABLE IF EXISTS `pootle_app_pootleprofile_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_pootleprofile_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pootleprofile_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pootle_app_pootleprofile_project_pootleprofile_id_6b8dadc3_uniq` (`pootleprofile_id`,`project_id`),
  KEY `pootle_app_pootleprofile_projects_22a0979d` (`pootleprofile_id`),
  KEY `pootle_app_pootleprofile_projects_499df97c` (`project_id`),
  CONSTRAINT `project_id_refs_id_795333de` FOREIGN KEY (`project_id`) REFERENCES `pootle_app_project` (`id`),
  CONSTRAINT `pootleprofile_id_refs_id_59be349f` FOREIGN KEY (`pootleprofile_id`) REFERENCES `pootle_app_pootleprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_pootleprofile_projects`
--

LOCK TABLES `pootle_app_pootleprofile_projects` WRITE;
/*!40000 ALTER TABLE `pootle_app_pootleprofile_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_app_pootleprofile_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_project`
--

DROP TABLE IF EXISTS `pootle_app_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `checkstyle` varchar(50) NOT NULL,
  `localfiletype` varchar(50) NOT NULL,
  `treestyle` varchar(20) NOT NULL,
  `source_language_id` int(11) NOT NULL,
  `ignoredfiles` varchar(255) NOT NULL,
  `directory_id` int(11) NOT NULL,
  `report_target` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `directory_id` (`directory_id`),
  KEY `pootle_app_project_2a662375` (`source_language_id`),
  CONSTRAINT `directory_id_refs_id_5a30c86f` FOREIGN KEY (`directory_id`) REFERENCES `pootle_app_directory` (`id`),
  CONSTRAINT `source_language_id_refs_id_5df716ab` FOREIGN KEY (`source_language_id`) REFERENCES `pootle_app_language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_project`
--

LOCK TABLES `pootle_app_project` WRITE;
/*!40000 ALTER TABLE `pootle_app_project` DISABLE KEYS */;
INSERT INTO `pootle_app_project` VALUES (1,'terminology','Terminology','','terminology','po','auto',2,'',6,''),(2,'tutorial','Tutorial','<div dir=\"ltr\" lang=\"en\">Tutorial project where users can play with Pootle and learn more about translation and localisation.<br />For more help on localisation, visit the <a href=\"http://translate.sourceforge.net/wiki/guide/start\">localisation guide</a>.</div>','standard','po','auto',2,'',7,'');
/*!40000 ALTER TABLE `pootle_app_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_submission`
--

DROP TABLE IF EXISTS `pootle_app_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_submission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_time` datetime NOT NULL,
  `translation_project_id` int(11) NOT NULL,
  `submitter_id` int(11) DEFAULT NULL,
  `from_suggestion_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `field` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `old_value` longtext NOT NULL,
  `new_value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_suggestion_id` (`from_suggestion_id`),
  KEY `pootle_app_submission_17299529` (`creation_time`),
  KEY `pootle_app_submission_40cc5e04` (`translation_project_id`),
  KEY `pootle_app_submission_1a37f020` (`submitter_id`),
  KEY `pootle_app_submission_cac2c6` (`unit_id`),
  KEY `pootle_app_submission_66f1716a` (`field`),
  KEY `pootle_app_submission_f429bc7` (`type`),
  CONSTRAINT `unit_id_refs_id_209c93e5` FOREIGN KEY (`unit_id`) REFERENCES `pootle_store_unit` (`id`),
  CONSTRAINT `from_suggestion_id_refs_id_731436fd` FOREIGN KEY (`from_suggestion_id`) REFERENCES `pootle_app_suggestion` (`id`),
  CONSTRAINT `submitter_id_refs_id_e943218` FOREIGN KEY (`submitter_id`) REFERENCES `pootle_app_pootleprofile` (`id`),
  CONSTRAINT `translation_project_id_refs_id_4a3a722d` FOREIGN KEY (`translation_project_id`) REFERENCES `pootle_app_translationproject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_submission`
--

LOCK TABLES `pootle_app_submission` WRITE;
/*!40000 ALTER TABLE `pootle_app_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_app_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_suggestion`
--

DROP TABLE IF EXISTS `pootle_app_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_suggestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` int(11) NOT NULL,
  `translation_project_id` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `suggester_id` int(11) DEFAULT NULL,
  `creation_time` datetime NOT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  `review_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pootle_app_suggestion_43ab28ad` (`unit`),
  KEY `pootle_app_suggestion_40cc5e04` (`translation_project_id`),
  KEY `pootle_app_suggestion_355bfc27` (`state`),
  KEY `pootle_app_suggestion_28614f72` (`suggester_id`),
  KEY `pootle_app_suggestion_17299529` (`creation_time`),
  KEY `pootle_app_suggestion_2f0e81d5` (`reviewer_id`),
  KEY `pootle_app_suggestion_488aaffc` (`review_time`),
  CONSTRAINT `reviewer_id_refs_id_10f46fe8` FOREIGN KEY (`reviewer_id`) REFERENCES `pootle_app_pootleprofile` (`id`),
  CONSTRAINT `suggester_id_refs_id_10f46fe8` FOREIGN KEY (`suggester_id`) REFERENCES `pootle_app_pootleprofile` (`id`),
  CONSTRAINT `translation_project_id_refs_id_7b14d02d` FOREIGN KEY (`translation_project_id`) REFERENCES `pootle_app_translationproject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_suggestion`
--

LOCK TABLES `pootle_app_suggestion` WRITE;
/*!40000 ALTER TABLE `pootle_app_suggestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_app_suggestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_app_translationproject`
--

DROP TABLE IF EXISTS `pootle_app_translationproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_app_translationproject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `language_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `real_path` varchar(100) NOT NULL,
  `directory_id` int(11) NOT NULL,
  `pootle_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directory_id` (`directory_id`),
  UNIQUE KEY `pootle_path` (`pootle_path`),
  UNIQUE KEY `pootle_app_translationproject_language_id_6b10b84d_uniq` (`language_id`,`project_id`),
  KEY `pootle_app_translationproject_7ab48146` (`language_id`),
  KEY `pootle_app_translationproject_499df97c` (`project_id`),
  CONSTRAINT `directory_id_refs_id_356c2bd3` FOREIGN KEY (`directory_id`) REFERENCES `pootle_app_directory` (`id`),
  CONSTRAINT `language_id_refs_id_56ccfed9` FOREIGN KEY (`language_id`) REFERENCES `pootle_app_language` (`id`),
  CONSTRAINT `project_id_refs_id_28ab8397` FOREIGN KEY (`project_id`) REFERENCES `pootle_app_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_app_translationproject`
--

LOCK TABLES `pootle_app_translationproject` WRITE;
/*!40000 ALTER TABLE `pootle_app_translationproject` DISABLE KEYS */;
INSERT INTO `pootle_app_translationproject` VALUES (1,'',1,2,'tutorial/templates',8,'/templates/tutorial/'),(2,'',3,1,'terminology/son',10,'/son/terminology/'),(3,'',5,1,'terminology/ff',13,'/ff/terminology/'),(4,'',7,1,'terminology/nso',16,'/nso/terminology/'),(5,'',8,1,'terminology/ca',18,'/ca/terminology/'),(6,'',13,1,'terminology/ga',25,'/ga/terminology/'),(7,'',14,1,'terminology/cs',27,'/cs/terminology/'),(8,'',15,1,'terminology/gl',30,'/gl/terminology/'),(9,'',19,1,'terminology/pt',35,'/pt/terminology/'),(10,'',20,1,'terminology/ln',38,'/ln/terminology/'),(11,'',24,1,'terminology/tr',43,'/tr/terminology/'),(12,'',25,1,'terminology/uk',45,'/uk/terminology/'),(13,'',27,1,'terminology/lt',49,'/lt/terminology/'),(14,'',28,1,'terminology/pa',51,'/pa/terminology/'),(15,'',29,1,'terminology/sw',54,'/sw/terminology/'),(16,'',31,1,'terminology/th',57,'/th/terminology/'),(17,'',35,1,'terminology/is',63,'/is/terminology/'),(18,'',39,1,'terminology/pt_BR',68,'/pt_BR/terminology/'),(19,'',41,1,'terminology/de',72,'/de/terminology/'),(20,'',43,1,'terminology/da',75,'/da/terminology/'),(21,'',44,1,'terminology/hi',78,'/hi/terminology/'),(22,'',51,1,'terminology/zh_CN',87,'/zh_CN/terminology/'),(23,'',57,1,'terminology/zh_HK',95,'/zh_HK/terminology/'),(24,'',60,1,'terminology/ms',100,'/ms/terminology/'),(25,'',61,1,'terminology/mr',103,'/mr/terminology/'),(26,'',64,1,'terminology/eo',108,'/eo/terminology/'),(27,'',66,1,'terminology/af',112,'/af/terminology/'),(28,'',66,2,'tutorial/af',113,'/af/tutorial/'),(29,'',69,1,'terminology/ak',117,'/ak/terminology/'),(30,'',70,1,'terminology/am',119,'/am/terminology/'),(31,'',71,1,'terminology/it',122,'/it/terminology/'),(32,'',74,1,'terminology/ar',127,'/ar/terminology/'),(33,'',74,2,'tutorial/ar',129,'/ar/tutorial/'),(34,'',75,1,'terminology/mk',131,'/mk/terminology/'),(35,'',76,2,'tutorial/zu',134,'/zu/tutorial/'),(36,'',77,1,'terminology/eu',136,'/eu/terminology/'),(37,'',77,2,'tutorial/eu',138,'/eu/tutorial/'),(38,'',79,1,'terminology/az',141,'/az/terminology/'),(39,'',83,1,'terminology/pap',147,'/pap/terminology/'),(40,'',85,1,'terminology/nl',150,'/nl/terminology/'),(41,'',87,1,'terminology/nn',154,'/nn/terminology/'),(42,'',93,1,'terminology/es',162,'/es/terminology/'),(43,'',95,1,'terminology/zh_TW',166,'/zh_TW/terminology/'),(44,'',96,1,'terminology/ro',169,'/ro/terminology/'),(45,'',100,1,'terminology/fr',176,'/fr/terminology/'),(46,'',100,2,'tutorial/fr',178,'/fr/tutorial/'),(47,'',101,1,'terminology/bg',180,'/bg/terminology/'),(48,'',102,1,'terminology/sv',182,'/sv/terminology/'),(49,'',103,1,'terminology/wa',185,'/wa/terminology/'),(50,'',104,1,'terminology/ast',188,'/ast/terminology/'),(51,'',105,1,'terminology/vi',190,'/vi/terminology/'),(52,'',109,1,'terminology/fa',196,'/fa/terminology/'),(53,'',114,1,'terminology/hu',203,'/hu/terminology/'),(54,'',115,1,'terminology/ja',206,'/ja/terminology/'),(55,'',121,1,'terminology/sq',214,'/sq/terminology/'),(56,'',122,1,'terminology/ko',217,'/ko/terminology/'),(57,'',123,1,'terminology/kn',219,'/kn/terminology/'),(58,'',124,1,'terminology/km',222,'/km/terminology/'),(59,'',125,1,'terminology/or',224,'/or/terminology/'),(60,'',126,1,'terminology/sk',226,'/sk/terminology/'),(61,'',128,1,'terminology/pl',230,'/pl/terminology/'),(62,'',130,1,'terminology/ku',234,'/ku/terminology/'),(63,'',133,1,'terminology/nb',239,'/nb/terminology/');
/*!40000 ALTER TABLE `pootle_app_translationproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_notifications_notice`
--

DROP TABLE IF EXISTS `pootle_notifications_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_notifications_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `directory_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pootle_notifications_notice_78100ca0` (`directory_id`),
  KEY `pootle_notifications_notice_5d61ed14` (`added`),
  CONSTRAINT `directory_id_refs_id_11d020e8` FOREIGN KEY (`directory_id`) REFERENCES `pootle_app_directory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_notifications_notice`
--

LOCK TABLES `pootle_notifications_notice` WRITE;
/*!40000 ALTER TABLE `pootle_notifications_notice` DISABLE KEYS */;
INSERT INTO `pootle_notifications_notice` VALUES (1,1,'New language <a href=\"/templates/\">Templates</a> created.','2014-06-12 14:51:32'),(2,1,'New language <a href=\"/en/\">English</a> created.','2014-06-12 14:51:32'),(3,1,'New project <a href=\"/projects/terminology/\">Terminology</a> created.','2014-06-12 14:51:32'),(4,4,'New project <a href=\"/templates/tutorial/\">Tutorial</a> added to language <a href=\"/templates/\">Templates</a>.','2014-06-12 14:51:34'),(5,7,'New language <a href=\"/templates/tutorial/\">Templates</a> added to project <a href=\"/projects/tutorial/\">Tutorial</a>.','2014-06-12 14:51:34'),(6,1,'New project <a href=\"/projects/tutorial/\">Tutorial</a> created.','2014-06-12 14:51:34'),(7,9,'New project <a href=\"/son/terminology/\">Terminology</a> added to language <a href=\"/son/\">Songhai languages</a>.','2014-06-12 14:51:35'),(8,6,'New language <a href=\"/son/terminology/\">Songhai languages</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(9,1,'New language <a href=\"/son/\">Songhai languages</a> created.','2014-06-12 14:51:35'),(10,1,'New language <a href=\"/gu/\">Gujarati</a> created.','2014-06-12 14:51:35'),(11,12,'New project <a href=\"/ff/terminology/\">Terminology</a> added to language <a href=\"/ff/\">Fulah</a>.','2014-06-12 14:51:35'),(12,6,'New language <a href=\"/ff/terminology/\">Fulah</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(13,1,'New language <a href=\"/ff/\">Fulah</a> created.','2014-06-12 14:51:35'),(14,1,'New language <a href=\"/nqo/\">N\'Ko</a> created.','2014-06-12 14:51:35'),(15,15,'New project <a href=\"/nso/terminology/\">Terminology</a> added to language <a href=\"/nso/\">Pedi; Sepedi; Northern Sotho</a>.','2014-06-12 14:51:35'),(16,6,'New language <a href=\"/nso/terminology/\">Pedi; Sepedi; Northern Sotho</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(17,1,'New language <a href=\"/nso/\">Pedi; Sepedi; Northern Sotho</a> created.','2014-06-12 14:51:35'),(18,17,'New project <a href=\"/ca/terminology/\">Terminology</a> added to language <a href=\"/ca/\">Catalan; Valencian</a>.','2014-06-12 14:51:35'),(19,6,'New language <a href=\"/ca/terminology/\">Catalan; Valencian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(20,1,'New language <a href=\"/ca/\">Catalan; Valencian</a> created.','2014-06-12 14:51:35'),(21,1,'New language <a href=\"/sco/\">Scots</a> created.','2014-06-12 14:51:35'),(22,1,'New language <a href=\"/gun/\">Gun</a> created.','2014-06-12 14:51:35'),(23,1,'New language <a href=\"/ca@valencia/\">Catalan; Valencian</a> created.','2014-06-12 14:51:35'),(24,1,'New language <a href=\"/gd/\">Gaelic; Scottish Gaelic</a> created.','2014-06-12 14:51:35'),(25,24,'New project <a href=\"/ga/terminology/\">Terminology</a> added to language <a href=\"/ga/\">Irish</a>.','2014-06-12 14:51:35'),(26,6,'New language <a href=\"/ga/terminology/\">Irish</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(27,1,'New language <a href=\"/ga/\">Irish</a> created.','2014-06-12 14:51:35'),(28,26,'New project <a href=\"/cs/terminology/\">Terminology</a> added to language <a href=\"/cs/\">Czech</a>.','2014-06-12 14:51:35'),(29,6,'New language <a href=\"/cs/terminology/\">Czech</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(30,1,'New language <a href=\"/cs/\">Czech</a> created.','2014-06-12 14:51:35'),(31,29,'New project <a href=\"/gl/terminology/\">Terminology</a> added to language <a href=\"/gl/\">Galician</a>.','2014-06-12 14:51:35'),(32,6,'New language <a href=\"/gl/terminology/\">Galician</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(33,1,'New language <a href=\"/gl/\">Galician</a> created.','2014-06-12 14:51:35'),(34,1,'New language <a href=\"/mfe/\">Morisyen</a> created.','2014-06-12 14:51:35'),(35,1,'New language <a href=\"/ps/\">Pushto; Pashto</a> created.','2014-06-12 14:51:35'),(36,1,'New language <a href=\"/lb/\">Luxembourgish; Letzeburgesch</a> created.','2014-06-12 14:51:35'),(37,34,'New project <a href=\"/pt/terminology/\">Terminology</a> added to language <a href=\"/pt/\">Portuguese</a>.','2014-06-12 14:51:35'),(38,6,'New language <a href=\"/pt/terminology/\">Portuguese</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(39,1,'New language <a href=\"/pt/\">Portuguese</a> created.','2014-06-12 14:51:35'),(40,37,'New project <a href=\"/ln/terminology/\">Terminology</a> added to language <a href=\"/ln/\">Lingala</a>.','2014-06-12 14:51:35'),(41,6,'New language <a href=\"/ln/terminology/\">Lingala</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(42,1,'New language <a href=\"/ln/\">Lingala</a> created.','2014-06-12 14:51:35'),(43,1,'New language <a href=\"/lo/\">Lao</a> created.','2014-06-12 14:51:35'),(44,1,'New language <a href=\"/tt/\">Tatar</a> created.','2014-06-12 14:51:35'),(45,1,'New language <a href=\"/pms/\">Piemontese</a> created.','2014-06-12 14:51:35'),(46,42,'New project <a href=\"/tr/terminology/\">Terminology</a> added to language <a href=\"/tr/\">Turkish</a>.','2014-06-12 14:51:35'),(47,6,'New language <a href=\"/tr/terminology/\">Turkish</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(48,1,'New language <a href=\"/tr/\">Turkish</a> created.','2014-06-12 14:51:35'),(49,44,'New project <a href=\"/uk/terminology/\">Terminology</a> added to language <a href=\"/uk/\">Ukrainian</a>.','2014-06-12 14:51:35'),(50,6,'New language <a href=\"/uk/terminology/\">Ukrainian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(51,1,'New language <a href=\"/uk/\">Ukrainian</a> created.','2014-06-12 14:51:35'),(52,1,'New language <a href=\"/lv/\">Latvian</a> created.','2014-06-12 14:51:35'),(53,48,'New project <a href=\"/lt/terminology/\">Terminology</a> added to language <a href=\"/lt/\">Lithuanian</a>.','2014-06-12 14:51:35'),(54,6,'New language <a href=\"/lt/terminology/\">Lithuanian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(55,1,'New language <a href=\"/lt/\">Lithuanian</a> created.','2014-06-12 14:51:35'),(56,50,'New project <a href=\"/pa/terminology/\">Terminology</a> added to language <a href=\"/pa/\">Panjabi; Punjabi</a>.','2014-06-12 14:51:35'),(57,6,'New language <a href=\"/pa/terminology/\">Panjabi; Punjabi</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(58,1,'New language <a href=\"/pa/\">Panjabi; Punjabi</a> created.','2014-06-12 14:51:35'),(59,53,'New project <a href=\"/sw/terminology/\">Terminology</a> added to language <a href=\"/sw/\">Swahili</a>.','2014-06-12 14:51:35'),(60,6,'New language <a href=\"/sw/terminology/\">Swahili</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(61,1,'New language <a href=\"/sw/\">Swahili</a> created.','2014-06-12 14:51:35'),(62,1,'New language <a href=\"/tg/\">Tajik</a> created.','2014-06-12 14:51:35'),(63,56,'New project <a href=\"/th/terminology/\">Terminology</a> added to language <a href=\"/th/\">Thai</a>.','2014-06-12 14:51:35'),(64,6,'New language <a href=\"/th/terminology/\">Thai</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(65,1,'New language <a href=\"/th/\">Thai</a> created.','2014-06-12 14:51:35'),(66,1,'New language <a href=\"/ti/\">Tigrinya</a> created.','2014-06-12 14:51:35'),(67,1,'New language <a href=\"/su/\">Sundanese</a> created.','2014-06-12 14:51:35'),(68,1,'New language <a href=\"/te/\">Telugu</a> created.','2014-06-12 14:51:35'),(69,62,'New project <a href=\"/is/terminology/\">Terminology</a> added to language <a href=\"/is/\">Icelandic</a>.','2014-06-12 14:51:35'),(70,6,'New language <a href=\"/is/terminology/\">Icelandic</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(71,1,'New language <a href=\"/is/\">Icelandic</a> created.','2014-06-12 14:51:35'),(72,1,'New language <a href=\"/en_GB/\">English (United Kingdom)</a> created.','2014-06-12 14:51:35'),(73,1,'New language <a href=\"/ta/\">Tamil</a> created.','2014-06-12 14:51:35'),(74,1,'New language <a href=\"/hy/\">Armenian</a> created.','2014-06-12 14:51:35'),(75,67,'New project <a href=\"/pt_BR/terminology/\">Terminology</a> added to language <a href=\"/pt_BR/\">Portuguese (Brazil)</a>.','2014-06-12 14:51:35'),(76,6,'New language <a href=\"/pt_BR/terminology/\">Portuguese (Brazil)</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(77,1,'New language <a href=\"/pt_BR/\">Portuguese (Brazil)</a> created.','2014-06-12 14:51:35'),(78,1,'New language <a href=\"/hr/\">Croatian</a> created.','2014-06-12 14:51:35'),(79,71,'New project <a href=\"/de/terminology/\">Terminology</a> added to language <a href=\"/de/\">German</a>.','2014-06-12 14:51:35'),(80,6,'New language <a href=\"/de/terminology/\">German</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(81,1,'New language <a href=\"/de/\">German</a> created.','2014-06-12 14:51:35'),(82,1,'New language <a href=\"/ht/\">Haitian; Haitian Creole</a> created.','2014-06-12 14:51:35'),(83,74,'New project <a href=\"/da/terminology/\">Terminology</a> added to language <a href=\"/da/\">Danish</a>.','2014-06-12 14:51:35'),(84,6,'New language <a href=\"/da/terminology/\">Danish</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:35'),(85,1,'New language <a href=\"/da/\">Danish</a> created.','2014-06-12 14:51:35'),(86,77,'New project <a href=\"/hi/terminology/\">Terminology</a> added to language <a href=\"/hi/\">Hindi</a>.','2014-06-12 14:51:36'),(87,6,'New language <a href=\"/hi/terminology/\">Hindi</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(88,1,'New language <a href=\"/hi/\">Hindi</a> created.','2014-06-12 14:51:36'),(89,1,'New language <a href=\"/dz/\">Dzongkha</a> created.','2014-06-12 14:51:36'),(90,1,'New language <a href=\"/st/\">Sotho, Southern</a> created.','2014-06-12 14:51:36'),(91,1,'New language <a href=\"/ha/\">Hausa</a> created.','2014-06-12 14:51:36'),(92,1,'New language <a href=\"/he/\">Hebrew</a> created.','2014-06-12 14:51:36'),(93,1,'New language <a href=\"/mg/\">Malagasy</a> created.','2014-06-12 14:51:36'),(94,1,'New language <a href=\"/fur/\">Friulian</a> created.','2014-06-12 14:51:36'),(95,86,'New project <a href=\"/zh_CN/terminology/\">Terminology</a> added to language <a href=\"/zh_CN/\">Chinese (China)</a>.','2014-06-12 14:51:36'),(96,6,'New language <a href=\"/zh_CN/terminology/\">Chinese (China)</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(97,1,'New language <a href=\"/zh_CN/\">Chinese (China)</a> created.','2014-06-12 14:51:36'),(98,1,'New language <a href=\"/ml/\">Malayalam</a> created.','2014-06-12 14:51:36'),(99,1,'New language <a href=\"/mn/\">Mongolian</a> created.','2014-06-12 14:51:36'),(100,1,'New language <a href=\"/mi/\">Maori</a> created.','2014-06-12 14:51:36'),(101,1,'New language <a href=\"/cy/\">Welsh</a> created.','2014-06-12 14:51:36'),(102,1,'New language <a href=\"/en_ZA/\">English (South Africa)</a> created.','2014-06-12 14:51:36'),(103,94,'New project <a href=\"/zh_HK/terminology/\">Terminology</a> added to language <a href=\"/zh_HK/\">Chinese (Hong Kong)</a>.','2014-06-12 14:51:36'),(104,6,'New language <a href=\"/zh_HK/terminology/\">Chinese (Hong Kong)</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(105,1,'New language <a href=\"/zh_HK/\">Chinese (Hong Kong)</a> created.','2014-06-12 14:51:36'),(106,1,'New language <a href=\"/mt/\">Maltese</a> created.','2014-06-12 14:51:36'),(107,1,'New language <a href=\"/fil/\">Filipino; Pilipino</a> created.','2014-06-12 14:51:36'),(108,99,'New project <a href=\"/ms/terminology/\">Terminology</a> added to language <a href=\"/ms/\">Malay</a>.','2014-06-12 14:51:36'),(109,6,'New language <a href=\"/ms/terminology/\">Malay</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(110,1,'New language <a href=\"/ms/\">Malay</a> created.','2014-06-12 14:51:36'),(111,102,'New project <a href=\"/mr/terminology/\">Terminology</a> added to language <a href=\"/mr/\">Marathi</a>.','2014-06-12 14:51:36'),(112,6,'New language <a href=\"/mr/terminology/\">Marathi</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(113,1,'New language <a href=\"/mr/\">Marathi</a> created.','2014-06-12 14:51:36'),(114,1,'New language <a href=\"/ug/\">Uighur; Uyghur</a> created.','2014-06-12 14:51:36'),(115,1,'New language <a href=\"/el/\">Greek, Modern (1453-)</a> created.','2014-06-12 14:51:36'),(116,107,'New project <a href=\"/eo/terminology/\">Terminology</a> added to language <a href=\"/eo/\">Esperanto</a>.','2014-06-12 14:51:36'),(117,6,'New language <a href=\"/eo/terminology/\">Esperanto</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(118,1,'New language <a href=\"/eo/\">Esperanto</a> created.','2014-06-12 14:51:36'),(119,1,'New language <a href=\"/tk/\">Turkmen</a> created.','2014-06-12 14:51:36'),(120,111,'New project <a href=\"/af/terminology/\">Terminology</a> added to language <a href=\"/af/\">Afrikaans</a>.','2014-06-12 14:51:36'),(121,6,'New language <a href=\"/af/terminology/\">Afrikaans</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(122,111,'New project <a href=\"/af/tutorial/\">Tutorial</a> added to language <a href=\"/af/\">Afrikaans</a>.','2014-06-12 14:51:36'),(123,7,'New language <a href=\"/af/tutorial/\">Afrikaans</a> added to project <a href=\"/projects/tutorial/\">Tutorial</a>.','2014-06-12 14:51:36'),(124,1,'New language <a href=\"/af/\">Afrikaans</a> created.','2014-06-12 14:51:36'),(125,1,'New language <a href=\"/ve/\">Venda</a> created.','2014-06-12 14:51:36'),(126,1,'New language <a href=\"/oc/\">Occitan (post 1500)</a> created.','2014-06-12 14:51:36'),(127,116,'New project <a href=\"/ak/terminology/\">Terminology</a> added to language <a href=\"/ak/\">Akan</a>.','2014-06-12 14:51:36'),(128,6,'New language <a href=\"/ak/terminology/\">Akan</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(129,1,'New language <a href=\"/ak/\">Akan</a> created.','2014-06-12 14:51:36'),(130,118,'New project <a href=\"/am/terminology/\">Terminology</a> added to language <a href=\"/am/\">Amharic</a>.','2014-06-12 14:51:36'),(131,6,'New language <a href=\"/am/terminology/\">Amharic</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(132,1,'New language <a href=\"/am/\">Amharic</a> created.','2014-06-12 14:51:36'),(133,121,'New project <a href=\"/it/terminology/\">Terminology</a> added to language <a href=\"/it/\">Italian</a>.','2014-06-12 14:51:36'),(134,6,'New language <a href=\"/it/terminology/\">Italian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(135,1,'New language <a href=\"/it/\">Italian</a> created.','2014-06-12 14:51:36'),(136,1,'New language <a href=\"/an/\">Aragonese</a> created.','2014-06-12 14:51:36'),(137,1,'New language <a href=\"/ia/\">Interlingua (International Auxiliary Language Association)</a> created.','2014-06-12 14:51:36'),(138,126,'New project <a href=\"/ar/terminology/\">Terminology</a> added to language <a href=\"/ar/\">Arabic</a>.','2014-06-12 14:51:36'),(139,6,'New language <a href=\"/ar/terminology/\">Arabic</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(140,126,'New project <a href=\"/ar/tutorial/\">Tutorial</a> added to language <a href=\"/ar/\">Arabic</a>.','2014-06-12 14:51:36'),(141,7,'New language <a href=\"/ar/tutorial/\">Arabic</a> added to project <a href=\"/projects/tutorial/\">Tutorial</a>.','2014-06-12 14:51:36'),(142,1,'New language <a href=\"/ar/\">Arabic</a> created.','2014-06-12 14:51:36'),(143,130,'New project <a href=\"/mk/terminology/\">Terminology</a> added to language <a href=\"/mk/\">Macedonian</a>.','2014-06-12 14:51:36'),(144,6,'New language <a href=\"/mk/terminology/\">Macedonian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(145,1,'New language <a href=\"/mk/\">Macedonian</a> created.','2014-06-12 14:51:36'),(146,133,'New project <a href=\"/zu/tutorial/\">Tutorial</a> added to language <a href=\"/zu/\">Zulu</a>.','2014-06-12 14:51:36'),(147,7,'New language <a href=\"/zu/tutorial/\">Zulu</a> added to project <a href=\"/projects/tutorial/\">Tutorial</a>.','2014-06-12 14:51:36'),(148,1,'New language <a href=\"/zu/\">Zulu</a> created.','2014-06-12 14:51:36'),(149,135,'New project <a href=\"/eu/terminology/\">Terminology</a> added to language <a href=\"/eu/\">Basque</a>.','2014-06-12 14:51:36'),(150,6,'New language <a href=\"/eu/terminology/\">Basque</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(151,135,'New project <a href=\"/eu/tutorial/\">Tutorial</a> added to language <a href=\"/eu/\">Basque</a>.','2014-06-12 14:51:36'),(152,7,'New language <a href=\"/eu/tutorial/\">Basque</a> added to project <a href=\"/projects/tutorial/\">Tutorial</a>.','2014-06-12 14:51:36'),(153,1,'New language <a href=\"/eu/\">Basque</a> created.','2014-06-12 14:51:36'),(154,1,'New language <a href=\"/et/\">Estonian</a> created.','2014-06-12 14:51:36'),(155,140,'New project <a href=\"/az/terminology/\">Terminology</a> added to language <a href=\"/az/\">Azerbaijani</a>.','2014-06-12 14:51:36'),(156,6,'New language <a href=\"/az/terminology/\">Azerbaijani</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:36'),(157,1,'New language <a href=\"/az/\">Azerbaijani</a> created.','2014-06-12 14:51:36'),(158,1,'New language <a href=\"/id/\">Indonesian</a> created.','2014-06-12 14:51:36'),(159,1,'New language <a href=\"/arn/\">Mapudungun; Mapuche</a> created.','2014-06-12 14:51:36'),(160,1,'New language <a href=\"/bn_IN/\">Bengali (India)</a> created.','2014-06-12 14:51:36'),(161,146,'New project <a href=\"/pap/terminology/\">Terminology</a> added to language <a href=\"/pap/\">Papiamento</a>.','2014-06-12 14:51:37'),(162,6,'New language <a href=\"/pap/terminology/\">Papiamento</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(163,1,'New language <a href=\"/pap/\">Papiamento</a> created.','2014-06-12 14:51:37'),(164,1,'New language <a href=\"/ru/\">Russian</a> created.','2014-06-12 14:51:37'),(165,149,'New project <a href=\"/nl/terminology/\">Terminology</a> added to language <a href=\"/nl/\">Dutch; Flemish</a>.','2014-06-12 14:51:37'),(166,6,'New language <a href=\"/nl/terminology/\">Dutch; Flemish</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(167,1,'New language <a href=\"/nl/\">Dutch; Flemish</a> created.','2014-06-12 14:51:37'),(168,1,'New language <a href=\"/yo/\">Yoruba</a> created.','2014-06-12 14:51:37'),(169,153,'New project <a href=\"/nn/terminology/\">Terminology</a> added to language <a href=\"/nn/\">Norwegian Nynorsk; Nynorsk, Norwegian</a>.','2014-06-12 14:51:37'),(170,6,'New language <a href=\"/nn/terminology/\">Norwegian Nynorsk; Nynorsk, Norwegian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(171,1,'New language <a href=\"/nn/\">Norwegian Nynorsk; Nynorsk, Norwegian</a> created.','2014-06-12 14:51:37'),(172,1,'New language <a href=\"/nah/\">Nahuatl languages</a> created.','2014-06-12 14:51:37'),(173,1,'New language <a href=\"/ne/\">Nepali</a> created.','2014-06-12 14:51:37'),(174,1,'New language <a href=\"/csb/\">Kashubian</a> created.','2014-06-12 14:51:37'),(175,1,'New language <a href=\"/wo/\">Wolof</a> created.','2014-06-12 14:51:37'),(176,1,'New language <a href=\"/nap/\">Neapolitan</a> created.','2014-06-12 14:51:37'),(177,161,'New project <a href=\"/es/terminology/\">Terminology</a> added to language <a href=\"/es/\">Spanish; Castilian</a>.','2014-06-12 14:51:37'),(178,6,'New language <a href=\"/es/terminology/\">Spanish; Castilian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(179,1,'New language <a href=\"/es/\">Spanish; Castilian</a> created.','2014-06-12 14:51:37'),(180,1,'New language <a href=\"/rm/\">Romansh</a> created.','2014-06-12 14:51:37'),(181,165,'New project <a href=\"/zh_TW/terminology/\">Terminology</a> added to language <a href=\"/zh_TW/\">Chinese (Taiwan)</a>.','2014-06-12 14:51:37'),(182,6,'New language <a href=\"/zh_TW/terminology/\">Chinese (Taiwan)</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(183,1,'New language <a href=\"/zh_TW/\">Chinese (Taiwan)</a> created.','2014-06-12 14:51:37'),(184,168,'New project <a href=\"/ro/terminology/\">Terminology</a> added to language <a href=\"/ro/\">Romanian</a>.','2014-06-12 14:51:37'),(185,6,'New language <a href=\"/ro/terminology/\">Romanian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(186,1,'New language <a href=\"/ro/\">Romanian</a> created.','2014-06-12 14:51:37'),(187,1,'New language <a href=\"/sah/\">Yakut</a> created.','2014-06-12 14:51:37'),(188,1,'New language <a href=\"/jv/\">Javanese</a> created.','2014-06-12 14:51:37'),(189,1,'New language <a href=\"/be/\">Belarusian</a> created.','2014-06-12 14:51:37'),(190,175,'New project <a href=\"/fr/terminology/\">Terminology</a> added to language <a href=\"/fr/\">French</a>.','2014-06-12 14:51:37'),(191,6,'New language <a href=\"/fr/terminology/\">French</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(192,175,'New project <a href=\"/fr/tutorial/\">Tutorial</a> added to language <a href=\"/fr/\">French</a>.','2014-06-12 14:51:37'),(193,7,'New language <a href=\"/fr/tutorial/\">French</a> added to project <a href=\"/projects/tutorial/\">Tutorial</a>.','2014-06-12 14:51:37'),(194,1,'New language <a href=\"/fr/\">French</a> created.','2014-06-12 14:51:37'),(195,179,'New project <a href=\"/bg/terminology/\">Terminology</a> added to language <a href=\"/bg/\">Bulgarian</a>.','2014-06-12 14:51:37'),(196,6,'New language <a href=\"/bg/terminology/\">Bulgarian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(197,1,'New language <a href=\"/bg/\">Bulgarian</a> created.','2014-06-12 14:51:37'),(198,181,'New project <a href=\"/sv/terminology/\">Terminology</a> added to language <a href=\"/sv/\">Swedish</a>.','2014-06-12 14:51:37'),(199,6,'New language <a href=\"/sv/terminology/\">Swedish</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(200,1,'New language <a href=\"/sv/\">Swedish</a> created.','2014-06-12 14:51:37'),(201,184,'New project <a href=\"/wa/terminology/\">Terminology</a> added to language <a href=\"/wa/\">Walloon</a>.','2014-06-12 14:51:37'),(202,6,'New language <a href=\"/wa/terminology/\">Walloon</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(203,1,'New language <a href=\"/wa/\">Walloon</a> created.','2014-06-12 14:51:37'),(204,187,'New project <a href=\"/ast/terminology/\">Terminology</a> added to language <a href=\"/ast/\">Asturian; Bable; Leonese; Asturleonese</a>.','2014-06-12 14:51:37'),(205,6,'New language <a href=\"/ast/terminology/\">Asturian; Bable; Leonese; Asturleonese</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(206,1,'New language <a href=\"/ast/\">Asturian; Bable; Leonese; Asturleonese</a> created.','2014-06-12 14:51:37'),(207,189,'New project <a href=\"/vi/terminology/\">Terminology</a> added to language <a href=\"/vi/\">Vietnamese</a>.','2014-06-12 14:51:37'),(208,6,'New language <a href=\"/vi/terminology/\">Vietnamese</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(209,1,'New language <a href=\"/vi/\">Vietnamese</a> created.','2014-06-12 14:51:37'),(210,1,'New language <a href=\"/fy/\">Frisian</a> created.','2014-06-12 14:51:37'),(211,1,'New language <a href=\"/bn/\">Bengali</a> created.','2014-06-12 14:51:37'),(212,1,'New language <a href=\"/bo/\">Tibetan</a> created.','2014-06-12 14:51:37'),(213,195,'New project <a href=\"/fa/terminology/\">Terminology</a> added to language <a href=\"/fa/\">Persian</a>.','2014-06-12 14:51:37'),(214,6,'New language <a href=\"/fa/terminology/\">Persian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(215,1,'New language <a href=\"/fa/\">Persian</a> created.','2014-06-12 14:51:37'),(216,1,'New language <a href=\"/br/\">Breton</a> created.','2014-06-12 14:51:37'),(217,1,'New language <a href=\"/bs/\">Bosnian</a> created.','2014-06-12 14:51:37'),(218,1,'New language <a href=\"/mai/\">Maithili</a> created.','2014-06-12 14:51:37'),(219,1,'New language <a href=\"/fi/\">Finnish</a> created.','2014-06-12 14:51:37'),(220,202,'New project <a href=\"/hu/terminology/\">Terminology</a> added to language <a href=\"/hu/\">Hungarian</a>.','2014-06-12 14:51:37'),(221,6,'New language <a href=\"/hu/terminology/\">Hungarian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(222,1,'New language <a href=\"/hu/\">Hungarian</a> created.','2014-06-12 14:51:37'),(223,205,'New project <a href=\"/ja/terminology/\">Terminology</a> added to language <a href=\"/ja/\">Japanese</a>.','2014-06-12 14:51:37'),(224,6,'New language <a href=\"/ja/terminology/\">Japanese</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:37'),(225,1,'New language <a href=\"/ja/\">Japanese</a> created.','2014-06-12 14:51:37'),(226,1,'New language <a href=\"/fo/\">Faroese</a> created.','2014-06-12 14:51:37'),(227,1,'New language <a href=\"/ka/\">Georgian</a> created.','2014-06-12 14:51:37'),(228,1,'New language <a href=\"/so/\">Somali</a> created.','2014-06-12 14:51:38'),(229,1,'New language <a href=\"/kk/\">Kazakh</a> created.','2014-06-12 14:51:38'),(230,1,'New language <a href=\"/sr/\">Serbian</a> created.','2014-06-12 14:51:38'),(231,213,'New project <a href=\"/sq/terminology/\">Terminology</a> added to language <a href=\"/sq/\">Albanian</a>.','2014-06-12 14:51:38'),(232,6,'New language <a href=\"/sq/terminology/\">Albanian</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:38'),(233,1,'New language <a href=\"/sq/\">Albanian</a> created.','2014-06-12 14:51:38'),(234,216,'New project <a href=\"/ko/terminology/\">Terminology</a> added to language <a href=\"/ko/\">Korean</a>.','2014-06-12 14:51:38'),(235,6,'New language <a href=\"/ko/terminology/\">Korean</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:38'),(236,1,'New language <a href=\"/ko/\">Korean</a> created.','2014-06-12 14:51:38'),(237,218,'New project <a href=\"/kn/terminology/\">Terminology</a> added to language <a href=\"/kn/\">Kannada</a>.','2014-06-12 14:51:38'),(238,6,'New language <a href=\"/kn/terminology/\">Kannada</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:38'),(239,1,'New language <a href=\"/kn/\">Kannada</a> created.','2014-06-12 14:51:38'),(240,221,'New project <a href=\"/km/terminology/\">Terminology</a> added to language <a href=\"/km/\">Central Khmer</a>.','2014-06-12 14:51:38'),(241,6,'New language <a href=\"/km/terminology/\">Central Khmer</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:38'),(242,1,'New language <a href=\"/km/\">Central Khmer</a> created.','2014-06-12 14:51:38'),(243,223,'New project <a href=\"/or/terminology/\">Terminology</a> added to language <a href=\"/or/\">Oriya</a>.','2014-06-12 14:51:38'),(244,6,'New language <a href=\"/or/terminology/\">Oriya</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:38'),(245,1,'New language <a href=\"/or/\">Oriya</a> created.','2014-06-12 14:51:38'),(246,225,'New project <a href=\"/sk/terminology/\">Terminology</a> added to language <a href=\"/sk/\">Slovak</a>.','2014-06-12 14:51:38'),(247,6,'New language <a href=\"/sk/terminology/\">Slovak</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:38'),(248,1,'New language <a href=\"/sk/\">Slovak</a> created.','2014-06-12 14:51:38'),(249,1,'New language <a href=\"/si/\">Sinhala; Sinhalese</a> created.','2014-06-12 14:51:38'),(250,229,'New project <a href=\"/pl/terminology/\">Terminology</a> added to language <a href=\"/pl/\">Polish</a>.','2014-06-12 14:51:38'),(251,6,'New language <a href=\"/pl/terminology/\">Polish</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:38'),(252,1,'New language <a href=\"/pl/\">Polish</a> created.','2014-06-12 14:51:38'),(253,1,'New language <a href=\"/kw/\">Cornish</a> created.','2014-06-12 14:51:38'),(254,233,'New project <a href=\"/ku/terminology/\">Terminology</a> added to language <a href=\"/ku/\">Kurdish</a>.','2014-06-12 14:51:38'),(255,6,'New language <a href=\"/ku/terminology/\">Kurdish</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:38'),(256,1,'New language <a href=\"/ku/\">Kurdish</a> created.','2014-06-12 14:51:38'),(257,1,'New language <a href=\"/sl/\">Slovenian</a> created.','2014-06-12 14:51:38'),(258,1,'New language <a href=\"/ky/\">Kirghiz; Kyrgyz</a> created.','2014-06-12 14:51:38'),(259,238,'New project <a href=\"/nb/terminology/\">Terminology</a> added to language <a href=\"/nb/\">Bokmål, Norwegian; Norwegian Bokmål</a>.','2014-06-12 14:51:38'),(260,6,'New language <a href=\"/nb/terminology/\">Bokmål, Norwegian; Norwegian Bokmål</a> added to project <a href=\"/projects/terminology/\">Terminology</a>.','2014-06-12 14:51:38'),(261,1,'New language <a href=\"/nb/\">Bokmål, Norwegian; Norwegian Bokmål</a> created.','2014-06-12 14:51:38'),(262,1,'New user <a href=\"/accounts/admin/\">admin</a> registered.','2014-06-12 14:51:38');
/*!40000 ALTER TABLE `pootle_notifications_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_store_qualitycheck`
--

DROP TABLE IF EXISTS `pootle_store_qualitycheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_store_qualitycheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `false_positive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pootle_store_qualitycheck_52094d6e` (`name`),
  KEY `pootle_store_qualitycheck_cac2c6` (`unit_id`),
  KEY `pootle_store_qualitycheck_569aafc4` (`false_positive`),
  CONSTRAINT `unit_id_refs_id_3fef07a6` FOREIGN KEY (`unit_id`) REFERENCES `pootle_store_unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_store_qualitycheck`
--

LOCK TABLES `pootle_store_qualitycheck` WRITE;
/*!40000 ALTER TABLE `pootle_store_qualitycheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_store_qualitycheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_store_store`
--

DROP TABLE IF EXISTS `pootle_store_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_store_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) NOT NULL,
  `pending` varchar(255) NOT NULL,
  `tm` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `translation_project_id` int(11) NOT NULL,
  `pootle_path` varchar(255) NOT NULL,
  `name` varchar(128) NOT NULL,
  `sync_time` datetime NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pootle_path` (`pootle_path`),
  UNIQUE KEY `pootle_store_store_parent_id_51e93337_uniq` (`parent_id`,`name`),
  KEY `pootle_store_store_6e62a245` (`file`),
  KEY `pootle_store_store_63f17a16` (`parent_id`),
  KEY `pootle_store_store_40cc5e04` (`translation_project_id`),
  KEY `pootle_store_store_355bfc27` (`state`),
  CONSTRAINT `translation_project_id_refs_id_65860495` FOREIGN KEY (`translation_project_id`) REFERENCES `pootle_app_translationproject` (`id`),
  CONSTRAINT `parent_id_refs_id_7eee2afb` FOREIGN KEY (`parent_id`) REFERENCES `pootle_app_directory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_store_store`
--

LOCK TABLES `pootle_store_store` WRITE;
/*!40000 ALTER TABLE `pootle_store_store` DISABLE KEYS */;
INSERT INTO `pootle_store_store` VALUES (1,'tutorial/templates/tutorial.pot','','',8,1,'/templates/tutorial/tutorial.pot','tutorial.pot','0001-01-01 00:00:00',0),(2,'terminology/son/essential.po','','',10,2,'/son/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(3,'terminology/son/glossmaster.po','','',10,2,'/son/terminology/glossmaster.po','glossmaster.po','0001-01-01 00:00:00',0),(4,'terminology/ff/essential.po','','',13,3,'/ff/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(5,'terminology/nso/essential.po','','',16,4,'/nso/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(6,'terminology/ca/essential.po','','',18,5,'/ca/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(7,'terminology/ca/gnome/ca.po','','',19,5,'/ca/terminology/gnome/ca.po','ca.po','0001-01-01 00:00:00',0),(8,'terminology/ga/essential.po','','',25,6,'/ga/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(9,'terminology/cs/gnome/cs.po','','',28,7,'/cs/terminology/gnome/cs.po','cs.po','0001-01-01 00:00:00',0),(10,'terminology/gl/essential.po','','',30,8,'/gl/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(11,'terminology/pt/gnome/pt.po','','',36,9,'/pt/terminology/gnome/pt.po','pt.po','0001-01-01 00:00:00',0),(12,'terminology/ln/GM_ln_20090916.po','','',38,10,'/ln/terminology/GM_ln_20090916.po','GM_ln_20090916.po','0001-01-01 00:00:00',0),(13,'terminology/tr/essential.po','','',43,11,'/tr/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(14,'terminology/uk/gnome/uk.po','','',46,12,'/uk/terminology/gnome/uk.po','uk.po','0001-01-01 00:00:00',0),(15,'terminology/lt/essential.po','','',49,13,'/lt/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(16,'terminology/pa/gnome/pa.po','','',52,14,'/pa/terminology/gnome/pa.po','pa.po','0001-01-01 00:00:00',0),(17,'terminology/sw/essential.po','','',54,15,'/sw/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(18,'terminology/th/gnome/th.po','','',58,16,'/th/terminology/gnome/th.po','th.po','0001-01-01 00:00:00',0),(19,'terminology/is/essential.po','','',63,17,'/is/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(20,'terminology/pt_BR/gnome/pt_BR.po','','',69,18,'/pt_BR/terminology/gnome/pt_BR.po','pt_BR.po','0001-01-01 00:00:00',0),(21,'terminology/de/essential.po','','',72,19,'/de/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(22,'terminology/da/essential.po','','',75,20,'/da/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(23,'terminology/da/gnome/da.po','','',76,20,'/da/terminology/gnome/da.po','da.po','0001-01-01 00:00:00',0),(24,'terminology/hi/fuel_hi.po','','',78,21,'/hi/terminology/fuel_hi.po','fuel_hi.po','0001-01-01 00:00:00',0),(25,'terminology/hi/gnome/hi.po','','',79,21,'/hi/terminology/gnome/hi.po','hi.po','0001-01-01 00:00:00',0),(26,'terminology/zh_CN/gnome/zh_CN.po','','',88,22,'/zh_CN/terminology/gnome/zh_CN.po','zh_CN.po','0001-01-01 00:00:00',0),(27,'terminology/zh_HK/gnome/zh_HK.po','','',96,23,'/zh_HK/terminology/gnome/zh_HK.po','zh_HK.po','0001-01-01 00:00:00',0),(28,'terminology/ms/gnome/ms.po','','',101,24,'/ms/terminology/gnome/ms.po','ms.po','0001-01-01 00:00:00',0),(29,'terminology/mr/gnome/mr.po','','',104,25,'/mr/terminology/gnome/mr.po','mr.po','0001-01-01 00:00:00',0),(30,'terminology/eo/gnome/eo.po','','',109,26,'/eo/terminology/gnome/eo.po','eo.po','0001-01-01 00:00:00',0),(31,'terminology/af/gnome-terminologie.po','','',112,27,'/af/terminology/gnome-terminologie.po','gnome-terminologie.po','0001-01-01 00:00:00',0),(32,'tutorial/af/tutorial.po','','',113,28,'/af/tutorial/tutorial.po','tutorial.po','0001-01-01 00:00:00',0),(33,'terminology/ak/Glossmaster_ak.po','','',117,29,'/ak/terminology/Glossmaster_ak.po','Glossmaster_ak.po','0001-01-01 00:00:00',0),(34,'terminology/am/gnome/am.po','','',120,30,'/am/terminology/gnome/am.po','am.po','0001-01-01 00:00:00',0),(35,'terminology/it/gnome/it.po','','',123,31,'/it/terminology/gnome/it.po','it.po','0001-01-01 00:00:00',0),(36,'terminology/ar/essential.po','','',127,32,'/ar/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(37,'terminology/ar/gnome/ar.po','','',128,32,'/ar/terminology/gnome/ar.po','ar.po','0001-01-01 00:00:00',0),(38,'tutorial/ar/tutorial.po','','',129,33,'/ar/tutorial/tutorial.po','tutorial.po','0001-01-01 00:00:00',0),(39,'terminology/mk/gnome/mk.po','','',132,34,'/mk/terminology/gnome/mk.po','mk.po','0001-01-01 00:00:00',0),(40,'tutorial/zu/tutorial.po','','',134,35,'/zu/tutorial/tutorial.po','tutorial.po','0001-01-01 00:00:00',0),(41,'terminology/eu/gnome/eu.po','','',137,36,'/eu/terminology/gnome/eu.po','eu.po','0001-01-01 00:00:00',0),(42,'tutorial/eu/tutorial.po','','',138,37,'/eu/tutorial/tutorial.po','tutorial.po','0001-01-01 00:00:00',0),(43,'terminology/az/gnome/az.po','','',142,38,'/az/terminology/gnome/az.po','az.po','0001-01-01 00:00:00',0),(44,'terminology/pap/essential.po','','',147,39,'/pap/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(45,'terminology/nl/gnome/nl.po','','',151,40,'/nl/terminology/gnome/nl.po','nl.po','0001-01-01 00:00:00',0),(46,'terminology/nn/gnome/nn.po','','',155,41,'/nn/terminology/gnome/nn.po','nn.po','0001-01-01 00:00:00',0),(47,'terminology/es/essential.po','','',162,42,'/es/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(48,'terminology/es/gnome/es.po','','',163,42,'/es/terminology/gnome/es.po','es.po','0001-01-01 00:00:00',0),(49,'terminology/zh_TW/gnome/zh_TW.po','','',167,43,'/zh_TW/terminology/gnome/zh_TW.po','zh_TW.po','0001-01-01 00:00:00',0),(50,'terminology/ro/essential.po','','',169,44,'/ro/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(51,'terminology/ro/ro/gnome/ro.po','','',171,44,'/ro/terminology/ro/gnome/ro.po','ro.po','0001-01-01 00:00:00',0),(52,'terminology/fr/gnome/fr.po','','',177,45,'/fr/terminology/gnome/fr.po','fr.po','0001-01-01 00:00:00',0),(53,'tutorial/fr/tutorial.po','','',178,46,'/fr/tutorial/tutorial.po','tutorial.po','0001-01-01 00:00:00',0),(54,'terminology/bg/essential.po','','',180,47,'/bg/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(55,'terminology/sv/gnome/sv.po','','',183,48,'/sv/terminology/gnome/sv.po','sv.po','0001-01-01 00:00:00',0),(56,'terminology/wa/gnome/wa.po','','',186,49,'/wa/terminology/gnome/wa.po','wa.po','0001-01-01 00:00:00',0),(57,'terminology/ast/essential.po','','',188,50,'/ast/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(58,'terminology/vi/essential.po','','',190,51,'/vi/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(59,'terminology/vi/gnome/vi.po','','',191,51,'/vi/terminology/gnome/vi.po','vi.po','0001-01-01 00:00:00',0),(60,'terminology/fa/gnome/fa.po','','',197,52,'/fa/terminology/gnome/fa.po','fa.po','0001-01-01 00:00:00',0),(61,'terminology/hu/gnome/hu.po','','',204,53,'/hu/terminology/gnome/hu.po','hu.po','0001-01-01 00:00:00',0),(62,'terminology/ja/gnome/ja.po','','',207,54,'/ja/terminology/gnome/ja.po','ja.po','0001-01-01 00:00:00',0),(63,'terminology/sq/gnome/sq.po','','',215,55,'/sq/terminology/gnome/sq.po','sq.po','0001-01-01 00:00:00',0),(64,'terminology/ko/essential.po','','',217,56,'/ko/terminology/essential.po','essential.po','0001-01-01 00:00:00',0),(65,'terminology/kn/gnome/kn.po','','',220,57,'/kn/terminology/gnome/kn.po','kn.po','0001-01-01 00:00:00',0),(66,'terminology/km/GlossaryV3_2Computer.csv.po','','',222,58,'/km/terminology/GlossaryV3_2Computer.csv.po','GlossaryV3_2Computer.csv.po','0001-01-01 00:00:00',0),(67,'terminology/or/fuel_or.po','','',224,59,'/or/terminology/fuel_or.po','fuel_or.po','0001-01-01 00:00:00',0),(68,'terminology/sk/gnome/sk.po','','',227,60,'/sk/terminology/gnome/sk.po','sk.po','0001-01-01 00:00:00',0),(69,'terminology/pl/gnome/pl.po','','',231,61,'/pl/terminology/gnome/pl.po','pl.po','0001-01-01 00:00:00',0),(70,'terminology/ku/gnome/ku.po','','',235,62,'/ku/terminology/gnome/ku.po','ku.po','0001-01-01 00:00:00',0),(71,'terminology/nb/gnome/nb.po','','',240,63,'/nb/terminology/gnome/nb.po','nb.po','0001-01-01 00:00:00',0);
/*!40000 ALTER TABLE `pootle_store_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_store_suggestion`
--

DROP TABLE IF EXISTS `pootle_store_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_store_suggestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_f` longtext NOT NULL,
  `target_hash` varchar(32) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `translator_comment_f` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pootle_store_suggestion_unit_id_6c79fd61_uniq` (`unit_id`,`target_hash`),
  KEY `pootle_store_suggestion_42838ece` (`target_hash`),
  KEY `pootle_store_suggestion_cac2c6` (`unit_id`),
  KEY `pootle_store_suggestion_403f60f` (`user_id`),
  CONSTRAINT `user_id_refs_id_22268648` FOREIGN KEY (`user_id`) REFERENCES `pootle_app_pootleprofile` (`id`),
  CONSTRAINT `unit_id_refs_id_740bb78b` FOREIGN KEY (`unit_id`) REFERENCES `pootle_store_unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_store_suggestion`
--

LOCK TABLES `pootle_store_suggestion` WRITE;
/*!40000 ALTER TABLE `pootle_store_suggestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_store_suggestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_store_unit`
--

DROP TABLE IF EXISTS `pootle_store_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_store_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `unitid` longtext NOT NULL,
  `unitid_hash` varchar(32) NOT NULL,
  `source_f` longtext,
  `source_hash` varchar(32) NOT NULL,
  `source_wordcount` smallint(6) NOT NULL,
  `source_length` smallint(6) NOT NULL,
  `target_f` longtext,
  `target_wordcount` smallint(6) NOT NULL,
  `target_length` smallint(6) NOT NULL,
  `developer_comment` longtext,
  `translator_comment` longtext,
  `locations` longtext,
  `context` longtext,
  `state` int(11) NOT NULL,
  `mtime` datetime NOT NULL,
  `submitted_by_id` int(11) DEFAULT NULL,
  `submitted_on` datetime DEFAULT NULL,
  `commented_by_id` int(11) DEFAULT NULL,
  `commented_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pootle_store_unit_store_id_74c4f25_uniq` (`store_id`,`unitid_hash`),
  KEY `pootle_store_unit_47799232` (`store_id`),
  KEY `pootle_store_unit_15416e3a` (`index`),
  KEY `pootle_store_unit_4dd852a8` (`unitid_hash`),
  KEY `pootle_store_unit_2fc828ea` (`source_hash`),
  KEY `pootle_store_unit_5b05ab54` (`source_length`),
  KEY `pootle_store_unit_34afe610` (`target_length`),
  KEY `pootle_store_unit_355bfc27` (`state`),
  KEY `pootle_store_unit_13d4b78` (`mtime`),
  KEY `pootle_store_unit_3c12418b` (`submitted_by_id`),
  KEY `pootle_store_unit_3b6e628a` (`submitted_on`),
  KEY `pootle_store_unit_12e5d260` (`commented_by_id`),
  KEY `pootle_store_unit_3455a333` (`commented_on`),
  CONSTRAINT `commented_by_id_refs_id_6d5c6330` FOREIGN KEY (`commented_by_id`) REFERENCES `pootle_app_pootleprofile` (`id`),
  CONSTRAINT `store_id_refs_id_3b46ebd5` FOREIGN KEY (`store_id`) REFERENCES `pootle_store_store` (`id`),
  CONSTRAINT `submitted_by_id_refs_id_6d5c6330` FOREIGN KEY (`submitted_by_id`) REFERENCES `pootle_app_pootleprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_store_unit`
--

LOCK TABLES `pootle_store_unit` WRITE;
/*!40000 ALTER TABLE `pootle_store_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_store_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_tagging_goal`
--

DROP TABLE IF EXISTS `pootle_tagging_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_tagging_goal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `priority` int(11) NOT NULL,
  `project_goal` tinyint(1) NOT NULL,
  `directory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `directory_id` (`directory_id`),
  CONSTRAINT `directory_id_refs_id_1f26e0be` FOREIGN KEY (`directory_id`) REFERENCES `pootle_app_directory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_tagging_goal`
--

LOCK TABLES `pootle_tagging_goal` WRITE;
/*!40000 ALTER TABLE `pootle_tagging_goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_tagging_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootle_tagging_itemwithgoal`
--

DROP TABLE IF EXISTS `pootle_tagging_itemwithgoal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootle_tagging_itemwithgoal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pootle_tagging_itemwithgoal_7d61c803` (`object_id`),
  KEY `pootle_tagging_itemwithgoal_1bb8f392` (`content_type_id`),
  KEY `pootle_tagging_itemwithgoal_3747b463` (`tag_id`),
  CONSTRAINT `tag_id_refs_id_53b40bd6` FOREIGN KEY (`tag_id`) REFERENCES `pootle_tagging_goal` (`id`),
  CONSTRAINT `content_type_id_refs_id_69cbc661` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootle_tagging_itemwithgoal`
--

LOCK TABLES `pootle_tagging_itemwithgoal` WRITE;
/*!40000 ALTER TABLE `pootle_tagging_itemwithgoal` DISABLE KEYS */;
/*!40000 ALTER TABLE `pootle_tagging_itemwithgoal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pootlecache`
--

DROP TABLE IF EXISTS `pootlecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pootlecache` (
  `cache_key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `pootlecache_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pootlecache`
--

LOCK TABLES `pootlecache` WRITE;
/*!40000 ALTER TABLE `pootlecache` DISABLE KEYS */;
INSERT INTO `pootlecache` VALUES (':1:example.com:siteconfig:1:last-updated','gAJjZGF0ZXRpbWUKZGF0ZXRpbWUKcQFVCgfeBgwOMyYLodiFUnECLg==','2014-06-12 14:52:38'),(':1:example.com:siteconfig:None:last-updated','gAJjZGF0ZXRpbWUKZGF0ZXRpbWUKcQFVCgfeBgwOMyYKTf+FUnECLg==','2014-06-12 14:52:38'),(':1:pootle-languages','gAJjZGphbmdvLmRiLm1vZGVscy5xdWVyeQpRdWVyeVNldApxASmBcQJ9cQMoVQVfaXRlcnEETlUO\nX3N0aWNreV9maWx0ZXJxBYlVA19kYnEGTlUNX3Jlc3VsdF9jYWNoZXEHXXEIKGNkamFuZ28uZGIu\nbW9kZWxzLmJhc2UKbW9kZWxfdW5waWNrbGUKcQljcG9vdGxlX2xhbmd1YWdlLm1vZGVscwpMYW5n\ndWFnZQpxCl1jZGphbmdvLmRiLm1vZGVscy5iYXNlCnNpbXBsZV9jbGFzc19mYWN0b3J5CnELh1Jx\nDH1xDShVDnBsdXJhbGVxdWF0aW9ucQ5YCAAAAChuICE9IDEpVQRjb2RlcQ9YAgAAAGFmVQtkZXNj\ncmlwdGlvbnEQWAAAAABVBl9zdGF0ZXERY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpNb2RlbFN0YXRl\nCnESKYFxE31xFChVBmFkZGluZ3EViVUCZGJxFlUHZGVmYXVsdHEXdWJVDGRpcmVjdG9yeV9pZHEY\nigFvVQhmdWxsbmFtZXEZWAkAAABBZnJpa2FhbnNVDHNwZWNpYWxjaGFyc3EaWBYAAADDq8Ovw6rD\ntMO7w6HDqcOtw7PDusO9VQJpZHEbigFCVQhucGx1cmFsc3EcSwJ1YmgJaApdaAuHUnEdfXEeKGgO\nWAUAAABuID4gMWgPWAIAAABha2gQWAAAAABoEWgSKYFxH31xIChoFYloFmgXdWJoGIoBdGgZWAQA\nAABBa2FuaBpYCAAAAMmbyZTGkMaGaBuKAUVoHEsCdWJoCWgKXWgLh1JxIX1xIihoDlgFAAAAbiA+\nIDFoD1gCAAAAYW1oEFgAAAAAaBFoEimBcSN9cSQoaBWJaBZoF3ViaBiKAXZoGVgHAAAAQW1oYXJp\nY2gaWAAAAABoG4oBRmgcSwJ1YmgJaApdaAuHUnElfXEmKGgOWE4AAABuPT0wID8gMCA6IG49PTEg\nPyAxIDogbj09MiA/IDIgOiBuJTEwMD49MyAmJiBuJTEwMDw9MTAgPyAzIDogbiUxMDA+PTExID8g\nNCA6IDVoD1gCAAAAYXJoEFgAAAAAaBFoEimBcSd9cSgoaBWJaBZoF3ViaBiKAX5oGVgGAAAAQXJh\nYmljaBpYAAAAAGgbigFKaBxLBnViaAloCl1oC4dScSl9cSooaA5YCAAAAChuICE9IDEpaA9YAwAA\n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\nbC5xdWVyeQpRdWVyeQpyBAEAACmBcgUBAAB9cgYBAAAoVRVhZ2dyZWdhdGVfc2VsZWN0X21hc2ty\nBwEAAE5VF19hZ2dyZWdhdGVfc2VsZWN0X2NhY2hlcggBAABOVQVleHRyYXIJAQAAY2RqYW5nby51\ndGlscy5kYXRhc3RydWN0dXJlcwpTb3J0ZWREaWN0CnIKAQAAKYFyCwEAAH1yDAEAAFUIa2V5T3Jk\nZXJyDQEAAF1zYlUIam9pbl9tYXByDgEAAH1yDwEAACgoVRNwb290bGVfYXBwX2xhbmd1YWdlchAB\nAABVHXBvb3RsZV9hcHBfdHJhbnNsYXRpb25wcm9qZWN0chEBAABoG1ULbGFuZ3VhZ2VfaWRyEgEA\nAHRyEwEAAGoRAQAAhShOahABAABOTnRyFAEAAGoQAQAAhShqEAEAAFUScG9vdGxlX2FwcF9wcm9q\nZWN0chUBAABoG1USc291cmNlX2xhbmd1YWdlX2lkchYBAAB0chcBAABqFQEAAIV1VRVyZWxhdGVk\nX3NlbGVjdF9maWVsZHNyGAEAAF1VDGV4dHJhX3RhYmxlc3IZAQAAKVUGc2VsZWN0choBAABdchsB\nAABVC3F1b3RlX2NhY2hlchwBAAB9ch0BAABVDHJldl9qb2luX21hcHIeAQAAfXIfAQAAKGoQAQAA\nahQBAABqFQEAAGoXAQAAahEBAABqEwEAAHVVDHVzZWRfYWxpYXNlc3IgAQAAY19fYnVpbHRpbl9f\nCnNldApyIQEAAF2FUnIiAQAAVQhvcmRlcl9ieXIjAQAAXXIkAQAAVQhkaXN0aW5jdHIlAQAAiFUO\nZHVwZV9hdm9pZGFuY2VyJgEAAH1yJwEAAFUQZGVmYXVsdF9vcmRlcmluZ3IoAQAAiFUIZ3JvdXBf\nYnlyKQEAAE5VEXNlbGVjdF9mb3JfdXBkYXRlcioBAACJVQ5zZWxlY3RfcmVsYXRlZHIrAQAAiVUQ\nZGVmZXJyZWRfbG9hZGluZ3IsAQAAaiEBAABdhVJyLQEAAIiGci4BAABVDXNlbGVjdF9maWVsZHNy\nLwEAAF1VCWFsaWFzX21hcHIwAQAAfXIxAQAAKGoQAQAAKGoQAQAAahABAABOTk5OiXRqFQEAAChq\nFQEAAGoVAQAAVQ9MRUZUIE9VVEVSIEpPSU5yMgEAAGoQAQAAaBtqFgEAAIh0ahEBAAAoahEBAABq\nEQEAAFUKSU5ORVIgSk9JTnIzAQAAahABAABoG2oSAQAAiHR1VQltYXhfZGVwdGhyNAEAAEsFVRFz\ndGFuZGFyZF9vcmRlcmluZ3I1AQAAiFUOZXh0cmFfb3JkZXJfYnlyNgEAAClVD2Rpc3RpbmN0X2Zp\nZWxkc3I3AQAAKVUGdGFibGVzcjgBAABdcjkBAAAoahABAABqFQEAAGoRAQAAZVUKYWdncmVnYXRl\nc3I6AQAAagoBAAApgXI7AQAAfXI8AQAAag0BAABdc2JVEWV4dHJhX3NlbGVjdF9tYXNrcj0BAABO\nVRhzZWxlY3RfZm9yX3VwZGF0ZV9ub3dhaXRyPgEAAIlVE19leHRyYV9zZWxlY3RfY2FjaGVyPwEA\nAE5VCGxvd19tYXJrckABAABLAFUOYWxpYXNfcmVmY291bnRyQQEAAGoKAQAAKYFyQgEAAChqEAEA\nAEsDahUBAABLAWoRAQAASwF1fXJDAQAAag0BAABdckQBAAAoahABAABqFQEAAGoRAQAAZXNiVRNy\nZWxhdGVkX3NlbGVjdF9jb2xzckUBAABdVQxkZWZhdWx0X2NvbHNyRgEAAIhVEG9yZGVyaW5nX2Fs\naWFzZXNyRwEAAF1ySAEAAFUGaGF2aW5nckkBAABjZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmUK\nV2hlcmVOb2RlCnJKAQAAKYFySwEAAH1yTAEAAChVCWNvbm5lY3RvcnJNAQAAVQNBTkRyTgEAAFUH\nbmVnYXRlZHJPAQAAiVUIY2hpbGRyZW5yUAEAAF1VD3N1YnRyZWVfcGFyZW50c3JRAQAAXXViVRlp\nbmNsdWRlZF9pbmhlcml0ZWRfbW9kZWxzclIBAAB9clMBAABOahABAABzVQl0YWJsZV9tYXByVAEA\nAH1yVQEAAChqEAEAAF1yVgEAAGoQAQAAYWoVAQAAXXJXAQAAahUBAABhahEBAABdclgBAABqEQEA\nAGF1VQt3aGVyZV9jbGFzc3JZAQAAakoBAABVBW1vZGVscloBAABoClUFd2hlcmVyWwEAAGpKAQAA\nKYFyXAEAAH1yXQEAAChqTQEAAGpOAQAAak8BAACJalABAABdcl4BAAAoakoBAAApgXJfAQAAfXJg\nAQAAKGpNAQAAak4BAABqTwEAAIlqUAEAAF1yYQEAAGpKAQAAKYFyYgEAAH1yYwEAAChqTQEAAGpO\nAQAAak8BAACJalABAABdcmQBAABqSgEAACmBcmUBAAB9cmYBAAAoak0BAABqTgEAAGpPAQAAiGpQ\nAQAAXXJnAQAAakoBAAApgXJoAQAAfXJpAQAAKGpNAQAAak4BAABqTwEAAIlqUAEAAF1yagEAAChj\nZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmUKQ29uc3RyYWludApyawEAACmBcmwBAAB9cm0BAAAo\nVQVhbGlhc3JuAQAAahABAABqWgEAAGgKVQpmaWVsZF9uYW1lcm8BAABoD1UDY29scnABAABoD3Vi\nVQVleGFjdHJxAQAAiFUJdGVtcGxhdGVzcnIBAAB0cnMBAABhalEBAABddWJhalEBAABddWJhalEB\nAABddWJhalEBAABddWJqSgEAACmBcnQBAAB9cnUBAAAoak0BAABqTgEAAGpPAQAAiWpQAQAAXXJ2\nAQAAKGprAQAAKYFydwEAAH1yeAEAAChqbgEAAGoVAQAAaloBAABjcG9vdGxlX3Byb2plY3QubW9k\nZWxzClByb2plY3QKcnkBAABqbwEAAFUPc291cmNlX2xhbmd1YWdlcnoBAABqcAEAAGgbdWJVBmlz\nbnVsbIhddHJ7AQAAYWpRAQAAXXViakoBAAApgXJ8AQAAfXJ9AQAAKGpNAQAAak4BAABqTwEAAIlq\nUAEAAF1yfgEAAChqawEAACmBcn8BAAB9coABAAAoam4BAABqEQEAAGpaAQAAY3Bvb3RsZV90cmFu\nc2xhdGlvbnByb2plY3QubW9kZWxzClRyYW5zbGF0aW9uUHJvamVjdApygQEAAGpvAQAAVQhsYW5n\ndWFnZXKCAQAAanABAABoG3ViVQZpc251bGyJXXRygwEAAGFqUQEAAF11YmVqUQEAAF11YlUJaGln\naF9tYXJrcoQBAABOVRBmaWx0ZXJfaXNfc3RpY2t5coUBAACJdWJqWgEAAGgKVRlfcHJlZmV0Y2hf\ncmVsYXRlZF9sb29rdXBzcoYBAABdcocBAAB1Yi4=','2014-06-12 14:51:38'),(':1:pootle-projects','gAJjZGphbmdvLmRiLm1vZGVscy5xdWVyeQpRdWVyeVNldApxASmBcQJ9cQMoVQVfaXRlcnEETlUO\nX3N0aWNreV9maWx0ZXJxBYlVA19kYnEGTlUNX3Jlc3VsdF9jYWNoZXEHXXEIKGNkamFuZ28uZGIu\nbW9kZWxzLmJhc2UKbW9kZWxfdW5waWNrbGUKcQljcG9vdGxlX3Byb2plY3QubW9kZWxzClByb2pl\nY3QKcQpdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxC4dScQx9\ncQ0oVQ1yZXBvcnRfdGFyZ2V0cQ5YAAAAAFUNbG9jYWxmaWxldHlwZXEPWAIAAABwb1UEY29kZXEQ\nWAsAAAB0ZXJtaW5vbG9neVUKY2hlY2tzdHlsZXERWAsAAAB0ZXJtaW5vbG9neVUSc291cmNlX2xh\nbmd1YWdlX2lkcRKKAQJVFl9zb3VyY2VfbGFuZ3VhZ2VfY2FjaGVxE2gJY3Bvb3RsZV9sYW5ndWFn\nZS5tb2RlbHMKTGFuZ3VhZ2UKcRRdaAuHUnEVfXEWKFUOcGx1cmFsZXF1YXRpb25xF1gIAAAAKG4g\nIT0gMSloEFgCAAAAZW5VC2Rlc2NyaXB0aW9ucRhYAAAAAFUGX3N0YXRlcRljZGphbmdvLmRiLm1v\nZGVscy5iYXNlCk1vZGVsU3RhdGUKcRopgXEbfXEcKFUGYWRkaW5ncR2JVQJkYnEeVQdkZWZhdWx0\ncR91YlUMZGlyZWN0b3J5X2lkcSCKAQVVCGZ1bGxuYW1lcSFYBwAAAEVuZ2xpc2hVDHNwZWNpYWxj\naGFyc3EiWAAAAABVAmlkcSOKAQJVCG5wbHVyYWxzcSRLAnViVQxpZ25vcmVkZmlsZXNxJVgAAAAA\naBloGimBcSZ9cScoaB2JaB5oH3ViaCCKAQZVCXRyZWVzdHlsZXEoWAQAAABhdXRvaCFYCwAAAFRl\ncm1pbm9sb2d5VRBfZGlyZWN0b3J5X2NhY2hlcSloCWNwb290bGVfYXBwLm1vZGVscy5kaXJlY3Rv\ncnkKRGlyZWN0b3J5CnEqXWgLh1JxK31xLChVBG5hbWVxLVgLAAAAdGVybWlub2xvZ3lVC3Bvb3Rs\nZV9wYXRocS5YFgAAAC9wcm9qZWN0cy90ZXJtaW5vbG9neS9VDl9wcm9qZWN0X2NhY2hlcS9oDGgZ\naBopgXEwfXExKGgdiWgeaB91YlUJcGFyZW50X2lkcTKKAQJoI4oBBnViaCOKAQFoGFgAAAAAdWJo\nCWgKXWgLh1JxM31xNChoDlgAAAAAaA9YAgAAAHBvaBBYCAAAAHR1dG9yaWFsaBFYCAAAAHN0YW5k\nYXJkaBKKAQJoE2gJaBRdaAuHUnE1fXE2KGgXWAgAAAAobiAhPSAxKWgQWAIAAABlbmgYWAAAAABo\nGWgaKYFxN31xOChoHYloHmgfdWJoIIoBBWghWAcAAABFbmdsaXNoaCJYAAAAAGgjigECaCRLAnVi\naCVYAAAAAGgZaBopgXE5fXE6KGgdiWgeaB91YmggigEHaChYBAAAAGF1dG9oIVgIAAAAVHV0b3Jp\nYWxoKWgJaCpdaAuHUnE7fXE8KGgtWAgAAAB0dXRvcmlhbGguWBMAAAAvcHJvamVjdHMvdHV0b3Jp\nYWwvaC9oM2gZaBopgXE9fXE+KGgdiWgeaB91YmgyigECaCOKAQd1YmgjigECaBhYBQEAADxkaXYg\nZGlyPSJsdHIiIGxhbmc9ImVuIj5UdXRvcmlhbCBwcm9qZWN0IHdoZXJlIHVzZXJzIGNhbiBwbGF5\nIHdpdGggUG9vdGxlIGFuZCBsZWFybiBtb3JlIGFib3V0IHRyYW5zbGF0aW9uIGFuZCBsb2NhbGlz\nYXRpb24uPGJyIC8+Rm9yIG1vcmUgaGVscCBvbiBsb2NhbGlzYXRpb24sIHZpc2l0IHRoZSA8YSBo\ncmVmPSJodHRwOi8vdHJhbnNsYXRlLnNvdXJjZWZvcmdlLm5ldC93aWtpL2d1aWRlL3N0YXJ0Ij5s\nb2NhbGlzYXRpb24gZ3VpZGU8L2E+LjwvZGl2PnViZVUOX3ByZWZldGNoX2RvbmVxP4lVCl9mb3Jf\nd3JpdGVxQIlVBXF1ZXJ5cUFjZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnkKUXVlcnkKcUIpgXFD\nfXFEKFUVYWdncmVnYXRlX3NlbGVjdF9tYXNrcUVOVRdfYWdncmVnYXRlX3NlbGVjdF9jYWNoZXFG\nTlUFZXh0cmFxR2NkamFuZ28udXRpbHMuZGF0YXN0cnVjdHVyZXMKU29ydGVkRGljdApxSCmBcUl9\ncUpVCGtleU9yZGVycUtdc2JVCGpvaW5fbWFwcUx9cU0oKE5VEnBvb3RsZV9hcHBfcHJvamVjdHFO\nTk50cU9oToUoaE5VFHBvb3RsZV9hcHBfZGlyZWN0b3J5cVBVDGRpcmVjdG9yeV9pZHFRaCN0cVJo\nUIUoaE5VE3Bvb3RsZV9hcHBfbGFuZ3VhZ2VxU1USc291cmNlX2xhbmd1YWdlX2lkcVRoI3RxVWhT\nhXVVFXJlbGF0ZWRfc2VsZWN0X2ZpZWxkc3FWXVUMZXh0cmFfdGFibGVzcVcpVQZzZWxlY3RxWF1x\nWVULcXVvdGVfY2FjaGVxWn1xW1UMcmV2X2pvaW5fbWFwcVx9cV0oaFNoVWhOaE9oUGhSdVUMdXNl\nZF9hbGlhc2VzcV5jX19idWlsdGluX18Kc2V0CnFfXYVScWBVCG9yZGVyX2J5cWFdcWJoIWFVCGRp\nc3RpbmN0cWOJVQ5kdXBlX2F2b2lkYW5jZXFkfXFlVRBkZWZhdWx0X29yZGVyaW5ncWaIVQhncm91\ncF9ieXFnTlURc2VsZWN0X2Zvcl91cGRhdGVxaIlVDnNlbGVjdF9yZWxhdGVkcWmIVRBkZWZlcnJl\nZF9sb2FkaW5ncWpoX12FUnFriIZxbFUNc2VsZWN0X2ZpZWxkc3FtXVUJYWxpYXNfbWFwcW59cW8o\naFMoaFNoU1UKSU5ORVIgSk9JTnFwaE5oVGgjiXRoTihoTmhOTk5OTol0aFAoaFBoUGhwaE5oUWgj\niXR1VQltYXhfZGVwdGhxcUsBVRFzdGFuZGFyZF9vcmRlcmluZ3FyiFUOZXh0cmFfb3JkZXJfYnlx\ncylVD2Rpc3RpbmN0X2ZpZWxkc3F0XXF1VQZ0YWJsZXNxdl1xdyhoTmhTaFBlVQphZ2dyZWdhdGVz\ncXhoSCmBcXl9cXpoS11zYlURZXh0cmFfc2VsZWN0X21hc2txe05VGHNlbGVjdF9mb3JfdXBkYXRl\nX25vd2FpdHF8iVUTX2V4dHJhX3NlbGVjdF9jYWNoZXF9TlUIbG93X21hcmtxfksAVQ5hbGlhc19y\nZWZjb3VudHF/aEgpgXGAKGhOSwJoU0sBaFBLAXV9cYFoS11xgihoTmhTaFBlc2JVE3JlbGF0ZWRf\nc2VsZWN0X2NvbHNxg11VDGRlZmF1bHRfY29sc3GEiFUQb3JkZXJpbmdfYWxpYXNlc3GFXXGGVQZo\nYXZpbmdxh2NkamFuZ28uZGIubW9kZWxzLnNxbC53aGVyZQpXaGVyZU5vZGUKcYgpgXGJfXGKKFUJ\nY29ubmVjdG9ycYtVA0FORHGMVQduZWdhdGVkcY2JVQhjaGlsZHJlbnGOXVUPc3VidHJlZV9wYXJl\nbnRzcY9ddWJVGWluY2x1ZGVkX2luaGVyaXRlZF9tb2RlbHNxkH1xkU5oTnNVCXRhYmxlX21hcHGS\nfXGTKGhTXXGUaFNhaE5dcZVoTmFoUF1xlmhQYXVVC3doZXJlX2NsYXNzcZdoiFUFbW9kZWxxmGgK\nVQV3aGVyZXGZaIgpgXGafXGbKGiLaIxojYlojl1oj111YlUJaGlnaF9tYXJrcZxOVRBmaWx0ZXJf\naXNfc3RpY2t5cZ2JdWJomGgKVRlfcHJlZmV0Y2hfcmVsYXRlZF9sb29rdXBzcZ5dcZ91Yi4=','2014-06-12 14:51:34');
/*!40000 ALTER TABLE `pootlecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_313280c4` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteconfig_siteconfiguration`
--

DROP TABLE IF EXISTS `siteconfig_siteconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siteconfig_siteconfiguration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `version` varchar(20) NOT NULL,
  `settings` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteconfig_siteconfiguration_6223029` (`site_id`),
  CONSTRAINT `site_id_refs_id_6ff8e93a` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteconfig_siteconfiguration`
--

LOCK TABLES `siteconfig_siteconfiguration` WRITE;
/*!40000 ALTER TABLE `siteconfig_siteconfiguration` DISABLE KEYS */;
INSERT INTO `siteconfig_siteconfiguration` VALUES (1,1,'1.0','{\"TT_BUILDVERSION\": 12017, \"POOTLE_BUILDVERSION\": 25110}');
/*!40000 ALTER TABLE `siteconfig_siteconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'pootle_app','0001_initial','2014-06-12 14:51:04'),(2,'pootle_store','0001_initial','2014-06-12 14:51:10'),(3,'pootle_language','0001_initial','2014-06-12 14:51:11'),(4,'pootle_language','0002_auto__del_field_language_description_html__chg_field_language_descript','2014-06-12 14:51:12'),(5,'pootle_project','0001_initial','2014-06-12 14:51:13'),(6,'pootle_project','0002_auto__del_field_project_description_html__chg_field_project_descriptio','2014-06-12 14:51:13'),(7,'pootle_translationproject','0001_initial','2014-06-12 14:51:15'),(8,'pootle_translationproject','0002_auto__del_field_translationproject_description_html__chg_field_transla','2014-06-12 14:51:15'),(9,'pootle_profile','0001_initial','2014-06-12 14:51:19'),(10,'pootle_statistics','0001_initial','2014-06-12 14:51:21'),(11,'pootle_tagging','0001_initial','2014-06-12 14:51:24'),(12,'pootle_notifications','0001_initial','2014-06-12 14:51:24'),(13,'staticpages','0001_initial','2014-06-12 14:51:25'),(14,'staticpages','0002_rename_app','2014-06-12 14:51:25'),(15,'staticpages','0003_auto__del_field_legalpage_body_html__chg_field_legalpage_body','2014-06-12 14:51:25'),(16,'staticpages','0004_auto__add_field_legalpage_virtual_path','2014-06-12 14:51:26'),(17,'staticpages','0005_data__slug_to_virtual_path','2014-06-12 14:51:26'),(18,'staticpages','0006_auto__del_field_legalpage_slug__chg_field_legalpage_virtual_path','2014-06-12 14:51:26'),(19,'staticpages','0007_auto__add_unique_legalpage_virtual_path','2014-06-12 14:51:26'),(20,'staticpages','0008_auto__del_field_legalpage_display_on_register','2014-06-12 14:51:27'),(21,'staticpages','0009_auto__add_staticpage','2014-06-12 14:51:27'),(22,'staticpages','0010_auto__add_agreement__add_unique_agreement_user_document__add_field_sta','2014-06-12 14:51:29'),(23,'staticpages','0011_auto__chg_field_legalpage_modified_on__chg_field_staticpage_modified_o','2014-06-12 14:51:29'),(24,'taggit','0001_initial','2014-06-12 14:51:31'),(25,'taggit','0002_unique_tagnames','2014-06-12 14:51:31');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staticpages_agreement`
--

DROP TABLE IF EXISTS `staticpages_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staticpages_agreement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `agreed_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staticpages_agreement_user_id_2f8d7f1e_uniq` (`user_id`,`document_id`),
  KEY `staticpages_agreement_403f60f` (`user_id`),
  KEY `staticpages_agreement_bdd92ed` (`document_id`),
  CONSTRAINT `document_id_refs_id_51f6e45` FOREIGN KEY (`document_id`) REFERENCES `staticpages_legalpage` (`id`),
  CONSTRAINT `user_id_refs_id_3edca0de` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staticpages_agreement`
--

LOCK TABLES `staticpages_agreement` WRITE;
/*!40000 ALTER TABLE `staticpages_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `staticpages_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staticpages_legalpage`
--

DROP TABLE IF EXISTS `staticpages_legalpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staticpages_legalpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  `virtual_path` varchar(100) NOT NULL,
  `modified_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staticpages_legalpage_virtual_path_2ac40eac_uniq` (`virtual_path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staticpages_legalpage`
--

LOCK TABLES `staticpages_legalpage` WRITE;
/*!40000 ALTER TABLE `staticpages_legalpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `staticpages_legalpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staticpages_staticpage`
--

DROP TABLE IF EXISTS `staticpages_staticpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staticpages_staticpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `virtual_path` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `url` varchar(200) NOT NULL,
  `modified_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtual_path` (`virtual_path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staticpages_staticpage`
--

LOCK TABLES `staticpages_staticpage` WRITE;
/*!40000 ALTER TABLE `staticpages_staticpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `staticpages_staticpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `taggit_tag_name_6b48d50f_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taggit_taggeditem_3747b463` (`tag_id`),
  KEY `taggit_taggeditem_7d61c803` (`object_id`),
  KEY `taggit_taggeditem_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_5a2b7711` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `tag_id_refs_id_3781c07b` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `vote` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`content_type_id`,`object_id`),
  KEY `votes_403f60f` (`user_id`),
  KEY `votes_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_1ec7817a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_795a10a` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-12 15:53:20
