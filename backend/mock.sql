CREATE DATABASE  IF NOT EXISTS `w42g2_lms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `w42g2_lms`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: w42g2_lms
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add blacklisted token',6,'add_blacklistedtoken'),(22,'Can change blacklisted token',6,'change_blacklistedtoken'),(23,'Can delete blacklisted token',6,'delete_blacklistedtoken'),(24,'Can view blacklisted token',6,'view_blacklistedtoken'),(25,'Can add outstanding token',7,'add_outstandingtoken'),(26,'Can change outstanding token',7,'change_outstandingtoken'),(27,'Can delete outstanding token',7,'delete_outstandingtoken'),(28,'Can view outstanding token',7,'view_outstandingtoken'),(29,'Can add announcement',8,'add_announcement'),(30,'Can change announcement',8,'change_announcement'),(31,'Can delete announcement',8,'delete_announcement'),(32,'Can view announcement',8,'view_announcement'),(33,'Can add batch',9,'add_batch'),(34,'Can change batch',9,'change_batch'),(35,'Can delete batch',9,'delete_batch'),(36,'Can view batch',9,'view_batch'),(37,'Can add notification',10,'add_notification'),(38,'Can change notification',10,'change_notification'),(39,'Can delete notification',10,'delete_notification'),(40,'Can view notification',10,'view_notification'),(41,'Can add time table',11,'add_timetable'),(42,'Can change time table',11,'change_timetable'),(43,'Can delete time table',11,'delete_timetable'),(44,'Can view time table',11,'view_timetable'),(45,'Can add user',12,'add_user'),(46,'Can change user',12,'change_user'),(47,'Can delete user',12,'delete_user'),(48,'Can view user',12,'view_user'),(49,'Can add teacher',13,'add_teacher'),(50,'Can change teacher',13,'change_teacher'),(51,'Can delete teacher',13,'delete_teacher'),(52,'Can view teacher',13,'view_teacher'),(53,'Can add student',14,'add_student'),(54,'Can change student',14,'change_student'),(55,'Can delete student',14,'delete_student'),(56,'Can view student',14,'view_student'),(57,'Can add course',15,'add_course'),(58,'Can change course',15,'change_course'),(59,'Can delete course',15,'delete_course'),(60,'Can view course',15,'view_course'),(61,'Can add comment',16,'add_comment'),(62,'Can change comment',16,'change_comment'),(63,'Can delete comment',16,'delete_comment'),(64,'Can view comment',16,'view_comment'),(65,'Can add post',17,'add_post'),(66,'Can change post',17,'change_post'),(67,'Can delete post',17,'delete_post'),(68,'Can view post',17,'view_post');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_announcement`
--

DROP TABLE IF EXISTS `base_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_announcement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` longtext NOT NULL,
  `date_posted` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_announcement`
--

LOCK TABLES `base_announcement` WRITE;
/*!40000 ALTER TABLE `base_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_batch`
--

DROP TABLE IF EXISTS `base_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_batch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_batch`
--

LOCK TABLES `base_batch` WRITE;
/*!40000 ALTER TABLE `base_batch` DISABLE KEYS */;
INSERT INTO `base_batch` VALUES (1,'K65-N-CLC');
/*!40000 ALTER TABLE `base_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_notification`
--

DROP TABLE IF EXISTS `base_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` longtext NOT NULL,
  `isSeen` tinyint(1) NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `course_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_notification_course_id_cdf5aaba_fk_courses_course_id` (`course_id`),
  CONSTRAINT `base_notification_course_id_cdf5aaba_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_notification`
--

LOCK TABLES `base_notification` WRITE;
/*!40000 ALTER TABLE `base_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_notification_batch`
--

DROP TABLE IF EXISTS `base_notification_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_notification_batch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `notification_id` bigint NOT NULL,
  `batch_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `base_notification_batch_notification_id_batch_id_e379a3cc_uniq` (`notification_id`,`batch_id`),
  KEY `base_notification_batch_batch_id_5f2681df_fk_base_batch_id` (`batch_id`),
  CONSTRAINT `base_notification_ba_notification_id_cb48eb44_fk_base_noti` FOREIGN KEY (`notification_id`) REFERENCES `base_notification` (`id`),
  CONSTRAINT `base_notification_batch_batch_id_5f2681df_fk_base_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `base_batch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_notification_batch`
--

LOCK TABLES `base_notification_batch` WRITE;
/*!40000 ALTER TABLE `base_notification_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_notification_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_timetable`
--

DROP TABLE IF EXISTS `base_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_timetable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `class_type` varchar(7) NOT NULL,
  `day` smallint unsigned NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `course_id` bigint NOT NULL,
  `teacher_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_timetable_course_id_6c98a006_fk_courses_course_id` (`course_id`),
  KEY `base_timetable_teacher_id_a5a1bcfa_fk_users_teacher_user_id` (`teacher_id`),
  CONSTRAINT `base_timetable_course_id_6c98a006_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `base_timetable_teacher_id_a5a1bcfa_fk_users_teacher_user_id` FOREIGN KEY (`teacher_id`) REFERENCES `users_teacher` (`user_id`),
  CONSTRAINT `base_timetable_chk_1` CHECK ((`day` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_timetable`
--

LOCK TABLES `base_timetable` WRITE;
/*!40000 ALTER TABLE `base_timetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_timetable_batch`
--

DROP TABLE IF EXISTS `base_timetable_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_timetable_batch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `timetable_id` bigint NOT NULL,
  `batch_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `base_timetable_batch_timetable_id_batch_id_aa4ee98a_uniq` (`timetable_id`,`batch_id`),
  KEY `base_timetable_batch_batch_id_53293980_fk_base_batch_id` (`batch_id`),
  CONSTRAINT `base_timetable_batch_batch_id_53293980_fk_base_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `base_batch` (`id`),
  CONSTRAINT `base_timetable_batch_timetable_id_83273c9c_fk_base_timetable_id` FOREIGN KEY (`timetable_id`) REFERENCES `base_timetable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_timetable_batch`
--

LOCK TABLES `base_timetable_batch` WRITE;
/*!40000 ALTER TABLE `base_timetable_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_timetable_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_course_code_13a4c6fd_uniq` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (1,'Toan roi rac','INT1050_21'),(2,'Quan tri mang','INT2256_22');
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course_student`
--

DROP TABLE IF EXISTS `courses_course_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_course_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_course_student_course_id_student_id_00813440_uniq` (`course_id`,`student_id`),
  KEY `courses_course_stude_student_id_408ccb9e_fk_users_stu` (`student_id`),
  CONSTRAINT `courses_course_stude_student_id_408ccb9e_fk_users_stu` FOREIGN KEY (`student_id`) REFERENCES `users_student` (`user_id`),
  CONSTRAINT `courses_course_student_course_id_90344f0b_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course_student`
--

LOCK TABLES `courses_course_student` WRITE;
/*!40000 ALTER TABLE `courses_course_student` DISABLE KEYS */;
INSERT INTO `courses_course_student` VALUES (1,1,2),(2,1,3),(3,2,2),(4,2,3);
/*!40000 ALTER TABLE `courses_course_student` ENABLE KEYS */;
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
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-11-26 05:21:07.698787','2','20021398',1,'[{\"added\": {}}]',12,1),(2,'2022-11-26 05:22:12.996523','1','K65-N-CLC',1,'[{\"added\": {}}]',9,1),(3,'2022-11-26 05:25:46.157609','3','20021399',1,'[{\"added\": {}}]',12,1),(4,'2022-11-26 05:25:49.474068','3','Van A',1,'[{\"added\": {}}]',14,1),(5,'2022-11-26 05:28:13.043537','2','Tuan Nam',1,'[{\"added\": {}}]',14,1),(6,'2022-11-26 05:29:47.783667','1','Toan roi rac',1,'[{\"added\": {}}]',15,1),(7,'2022-11-26 05:30:02.823767','2','Quan tri mang',1,'[{\"added\": {}}]',15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(8,'base','announcement'),(9,'base','batch'),(10,'base','notification'),(11,'base','timetable'),(4,'contenttypes','contenttype'),(15,'courses','course'),(16,'forum','comment'),(17,'forum','post'),(5,'sessions','session'),(6,'token_blacklist','blacklistedtoken'),(7,'token_blacklist','outstandingtoken'),(14,'users','student'),(13,'users','teacher'),(12,'users','user');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'courses','0001_initial','2022-11-26 05:02:59.050570'),(2,'base','0001_initial','2022-11-26 05:02:59.180159'),(3,'base','0002_initial','2022-11-26 05:02:59.250269'),(4,'contenttypes','0001_initial','2022-11-26 05:02:59.287409'),(5,'contenttypes','0002_remove_content_type_name','2022-11-26 05:02:59.326454'),(6,'auth','0001_initial','2022-11-26 05:02:59.499983'),(7,'auth','0002_alter_permission_name_max_length','2022-11-26 05:02:59.540205'),(8,'auth','0003_alter_user_email_max_length','2022-11-26 05:02:59.546161'),(9,'auth','0004_alter_user_username_opts','2022-11-26 05:02:59.551673'),(10,'auth','0005_alter_user_last_login_null','2022-11-26 05:02:59.556757'),(11,'auth','0006_require_contenttypes_0002','2022-11-26 05:02:59.558758'),(12,'auth','0007_alter_validators_add_error_messages','2022-11-26 05:02:59.564271'),(13,'auth','0008_alter_user_username_max_length','2022-11-26 05:02:59.569269'),(14,'auth','0009_alter_user_last_name_max_length','2022-11-26 05:02:59.574359'),(15,'auth','0010_alter_group_name_max_length','2022-11-26 05:02:59.585796'),(16,'auth','0011_update_proxy_permissions','2022-11-26 05:02:59.592311'),(17,'auth','0012_alter_user_first_name_max_length','2022-11-26 05:02:59.598310'),(18,'users','0001_initial','2022-11-26 05:02:59.901205'),(19,'admin','0001_initial','2022-11-26 05:02:59.999134'),(20,'admin','0002_logentry_remove_auto_add','2022-11-26 05:03:00.005341'),(21,'admin','0003_logentry_add_action_flag_choices','2022-11-26 05:03:00.013429'),(22,'base','0003_initial','2022-11-26 05:03:00.191838'),(23,'courses','0002_initial','2022-11-26 05:03:00.295607'),(24,'courses','0003_alter_course_code','2022-11-26 05:03:00.316652'),(25,'forum','0001_initial','2022-11-26 05:03:00.342278'),(26,'forum','0002_initial','2022-11-26 05:03:00.469929'),(27,'sessions','0001_initial','2022-11-26 05:03:00.489985'),(28,'token_blacklist','0001_initial','2022-11-26 05:03:00.620170'),(29,'token_blacklist','0002_outstandingtoken_jti_hex','2022-11-26 05:03:00.638717'),(30,'token_blacklist','0003_auto_20171017_2007','2022-11-26 05:03:00.651544'),(31,'token_blacklist','0004_auto_20171017_2013','2022-11-26 05:03:00.705340'),(32,'token_blacklist','0005_remove_outstandingtoken_jti','2022-11-26 05:03:00.767539'),(33,'token_blacklist','0006_auto_20171017_2113','2022-11-26 05:03:00.786933'),(34,'token_blacklist','0007_auto_20171017_2214','2022-11-26 05:03:00.974836'),(35,'token_blacklist','0008_migrate_to_bigautofield','2022-11-26 05:03:01.135194'),(36,'token_blacklist','0010_fix_migrate_to_bigautofield','2022-11-26 05:03:01.152546'),(37,'token_blacklist','0011_linearizes_history','2022-11-26 05:03:01.155480'),(38,'token_blacklist','0012_alter_outstandingtoken_user','2022-11-26 05:03:01.186010'),(39,'base','0004_alter_batch_name','2022-11-26 05:21:53.233329'),(40,'courses','0004_alter_course_code','2022-11-26 05:26:20.041610');
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
INSERT INTO `django_session` VALUES ('m1j00o7e0rffpwsvu154h3wixdcu1ja6','.eJxVjEsOAiEQBe_C2hC6UT4u3XsG0kAjowaSYWZlvLtOMgvdvqp6LxFoXWpYB89hyuIsQBx-t0jpwW0D-U7t1mXqbZmnKDdF7nTIa8_8vOzu30GlUb-1JYwJVTLeHhWyAdT2pAEjuEKFQTnHqKF4w04B5Gx0LM4bX3KCokC8P8EyNzs:1oynbi:_IoYIhLXc_ozBW_J8PJpR6-rs1mpNLiR1GyEnOigzQQ','2022-12-10 05:20:06.551784');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_comment`
--

DROP TABLE IF EXISTS `forum_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_comment_post_id_eb329692_fk_forum_post_id` (`post_id`),
  KEY `forum_comment_user_id_ee1c4b93_fk_users_user_id` (`user_id`),
  CONSTRAINT `forum_comment_post_id_eb329692_fk_forum_post_id` FOREIGN KEY (`post_id`) REFERENCES `forum_post` (`id`),
  CONSTRAINT `forum_comment_user_id_ee1c4b93_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_comment`
--

LOCK TABLES `forum_comment` WRITE;
/*!40000 ALTER TABLE `forum_comment` DISABLE KEYS */;
INSERT INTO `forum_comment` VALUES (1,'ưegewg','2022-11-26 05:30:55.648766',1,2);
/*!40000 ALTER TABLE `forum_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_post`
--

DROP TABLE IF EXISTS `forum_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `likes` int unsigned NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_post_user_id_9caccb96_fk_users_user_id` (`user_id`),
  CONSTRAINT `forum_post_user_id_9caccb96_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `forum_post_chk_1` CHECK ((`likes` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_post`
--

LOCK TABLES `forum_post` WRITE;
/*!40000 ALTER TABLE `forum_post` DISABLE KEYS */;
INSERT INTO `forum_post` VALUES (1,'ưegweg','ưegewg',0,'2022-11-26 05:30:51.089925',3);
/*!40000 ALTER TABLE `forum_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (1,'2022-11-26 05:30:59.562075',1);
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_users_use` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjAzMjYyNSwiaWF0IjoxNjY5NDQwNjI1LCJqdGkiOiIzYTU1NzA5NTE2MjA0ZGY4YTVlYjVmNDc3MTJiYmY0ZSIsInVzZXJfaWQiOjN9.Rr_w064iYdjYeg8DTAcALd5KOAYVn7d5uxiUBi9UiVA','2022-11-26 05:30:25.170999','2022-12-26 05:30:25.000000',3,'3a55709516204df8a5eb5f47712bbf4e'),(2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjAzMjY0NCwiaWF0IjoxNjY5NDQwNjQ0LCJqdGkiOiIyZDAyNjg5YmY4OWM0Y2YxYjgyYmUzZjJmOGU1N2M4NyIsInVzZXJfaWQiOjJ9.0RZfczL0BifMpFQE9OyptFTO1IxEEwRUlFGfznrmuks','2022-11-26 05:30:44.104754','2022-12-26 05:30:44.000000',2,'2d02689bf89c4cf1b82be3f2f8e57c87');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_student`
--

DROP TABLE IF EXISTS `users_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_student` (
  `user_id` bigint NOT NULL,
  `batch_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `users_student_batch_id_e8543593_fk_base_batch_id` (`batch_id`),
  CONSTRAINT `users_student_batch_id_e8543593_fk_base_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `base_batch` (`id`),
  CONSTRAINT `users_student_user_id_dc59cd64_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_student`
--

LOCK TABLES `users_student` WRITE;
/*!40000 ALTER TABLE `users_student` DISABLE KEYS */;
INSERT INTO `users_student` VALUES (2,1),(3,1);
/*!40000 ALTER TABLE `users_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_teacher`
--

DROP TABLE IF EXISTS `users_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_teacher` (
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `users_teacher_user_id_bc9e1389_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_teacher`
--

LOCK TABLES `users_teacher` WRITE;
/*!40000 ALTER TABLE `users_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `enrollment_number` varchar(9) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_type` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enrollment_number` (`enrollment_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$390000$MuQnF74L0SFIdcVgIVf2Zy$XqeFGJ/ikUU8sMQXxnx2obURXDq88oyTsqQLH6rv05Q=','2022-11-26 05:20:06.549179',1,'',1,1,'2022-11-26 05:13:14.625793','123456','Nam','','S'),(2,'pbkdf2_sha256$390000$h4Ss6DzByr9FOKk7QxvEah$qcdg2eLJUDy2lQ8OdLG+KuC4xGAu0JQMU7Crj/NhGww=',NULL,0,'',0,1,'2022-11-26 05:21:07.527484','20021398','Tuan Nam','Nguyen','S'),(3,'pbkdf2_sha256$390000$5RvnwoW1oAjwXcpIa8d4EG$dzHiK2xr5ZX4ti54o2FPKq2wNOpXtHfg68REecFtCPo=',NULL,0,'',0,1,'2022-11-26 05:25:45.992844','20021399','Van A','Nguyen','S');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 12:32:32
