DROP database IF EXISTS cheungssh;
create database cheungssh default charset='utf8';
use cheungssh;
-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: cheungssh
-- ------------------------------------------------------
-- Server version	5.1.73

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (25,'创建服务器',8,'create_server'),(26,'修改服务器',8,'modify_server'),(27,'删除服务器',8,'delete_server'),(28,'执行命令',8,'execute_command'),(29,'远程文件上传',8,'remote_file_upload'),(30,'远程文件下载',8,'remote_file_download'),(31,'秘钥删除',8,'delete_keyfile'),(32,'创建和更新脚本',8,'create_script'),(33,'查看脚本内容',8,'show_script_content'),(34,'查看脚本清单',8,'show_script_list'),(35,'脚本执行',8,'execute_script'),(36,'命令历史',8,'command_history'),(37,'访问记录',8,'access_history'),(38,'登录记录',8,'login_success_history'),(39,'命令黑名单添加',8,'command_black_create'),(40,'命令黑名单查看',8,'command_black_list'),(41,'命令黑名单删除',8,'command_black_delete'),(42,'登录失败清单',8,'login_fail_list'),(43,'登录阈值设置',8,'login_limit_set'),(44,'IP解锁',8,'unlock_ip'),(45,'远程文件管理创建',8,'remote_file_admin_create'),(46,'远程文件管理列表',8,'remote_file_admin_list'),(47,'远程文件内容查看',8,'remote_file_admin_content_show'),(48,'远程文件内容更新',8,'remote_file_admin_content_update'),(49,'自定义资产项查看',8,'custom_assets_list'),(50,'自定义资产创建/修改',8,'custom_assets_create'),(51,'自定义资产删除',8,'custom_assets_delete'),(52,'查看资产信息',8,'assets_list'),(53,'查看App应用列表',8,'view_app'),(54,'创建和修改App应用',8,'create_app'),(55,'删除App应用',8,'delete_app'),(56,'执行App应用',8,'execute_app'),(57,'部署清单查看',8,'deployment_list'),(58,'创建/修改部署任务',8,'deployment_create'),(59,'删除部署任务',8,'deployment_delete'),(60,'部署进度查看',8,'deployment_progress'),(61,'执行部署任务',8,'deployment_execute'),(62,'Docker镜像清单查看',8,'docker_image_list'),(63,'Docker镜像下载',8,'docker_image_create'),(64,'Docker镜像删除',8,'docker_image_delete'),(65,'Docker容器清单查看',8,'docker_containner_list'),(66,'Docker创建容器',8,'docker_create_containner'),(67,'Docker删除容器',8,'docker_containner_delete'),(68,'Docker启动容器',8,'docker_containner_start'),(69,'Dokcer关闭容器',8,'docker_containner_stop'),(70,'Docker容器保存为镜像',8,'docker_containner_save'),(71,'创建网络设备节点',8,'create_device'),(72,'查看网络拓扑图',8,'get_device'),(73,'保存拓扑布局',8,'save_topology'),(74,'单独登录SSH',8,'active_ssh'),(75,'查看Linux计划任务列表',8,'get_crontab_list'),(76,'删除Linux计划任务列表',8,'delete_crontab_list'),(77,'创建/修改Linux计划任务列表',8,'create_or_modify_crontab');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'cheungssh','','','a@q.com','pbkdf2_sha256$10000$Fk57SqVxAfLo$jBaNwQXPqC5VD+knd5gWi0Bn3bGcMIjtpUp9VxWuzn0=',1,1,1,'2017-06-09 13:48:08','2017-06-09 13:48:08');
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
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheungssh_main_conf`
--

DROP TABLE IF EXISTS `cheungssh_main_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheungssh_main_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RunMode` varchar(1) NOT NULL,
  `TimeOut` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheungssh_main_conf`
--

LOCK TABLES `cheungssh_main_conf` WRITE;
/*!40000 ALTER TABLE `cheungssh_main_conf` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheungssh_main_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheungssh_serverconf`
--

DROP TABLE IF EXISTS `cheungssh_serverconf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheungssh_serverconf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(200) NOT NULL,
  `HostName` varchar(100) NOT NULL,
  `Port` int(11) NOT NULL,
  `Group` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(128) NOT NULL,
  `KeyFile` varchar(100) NOT NULL,
  `Sudo` varchar(1) NOT NULL,
  `SudoPassword` varchar(2000) DEFAULT NULL,
  `Su` varchar(1) DEFAULT NULL,
  `SuPassword` varchar(2000) DEFAULT NULL,
  `LoginMethod` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheungssh_serverconf`
--

LOCK TABLES `cheungssh_serverconf` WRITE;
/*!40000 ALTER TABLE `cheungssh_serverconf` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheungssh_serverconf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheungssh_serverinfo`
--

DROP TABLE IF EXISTS `cheungssh_serverinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheungssh_serverinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IP_id` int(11) NOT NULL,
  `Position` longtext,
  `Description` longtext,
  `CPU` varchar(20) DEFAULT NULL,
  `CPU_process_must` varchar(10) DEFAULT NULL,
  `MEM_process_must` varchar(10) DEFAULT NULL,
  `Use_CPU` varchar(20) DEFAULT NULL,
  `uSE_MEM` varchar(20) DEFAULT NULL,
  `MEM` varchar(20) DEFAULT NULL,
  `IO` varchar(200) DEFAULT NULL,
  `Platform` varchar(200) NOT NULL,
  `System` varchar(200) NOT NULL,
  `InBankWidth` int(11) DEFAULT NULL,
  `OutBankWidth` int(11) DEFAULT NULL,
  `CurrentUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IP_id` (`IP_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheungssh_serverinfo`
--

LOCK TABLES `cheungssh_serverinfo` WRITE;
/*!40000 ALTER TABLE `cheungssh_serverinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheungssh_serverinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corsheaders_corsmodel`
--

DROP TABLE IF EXISTS `corsheaders_corsmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corsheaders_corsmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cors` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corsheaders_corsmodel`
--

LOCK TABLES `corsheaders_corsmodel` WRITE;
/*!40000 ALTER TABLE `corsheaders_corsmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `corsheaders_corsmodel` ENABLE KEYS */;
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
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'cors model','corsheaders','corsmodel'),(7,'main_ conf','cheungssh','main_conf'),(8,'server conf','cheungssh','serverconf'),(9,'server info','cheungssh','serverinfo'),(10,'log entry','admin','logentry');
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
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 11:12:20
