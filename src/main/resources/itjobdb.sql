-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 10.0.10.41    Database: itjobdb
-- ------------------------------------------------------
-- Server version	5.6.34

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
-- Table structure for table `_sequence`
--

DROP TABLE IF EXISTS `_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sequence` (
  `seq_name` varchar(50) NOT NULL,
  `seq_group` varchar(10) NOT NULL,
  `seq_val` int(10) NOT NULL,
  PRIMARY KEY (`seq_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_sequence`
--

LOCK TABLES `_sequence` WRITE;
/*!40000 ALTER TABLE `_sequence` DISABLE KEYS */;
INSERT INTO `_sequence` VALUES ('dept_id','dept',8),('empl_id','empl',16),('proj_id','proj',56),('task_id','task',134);
/*!40000 ALTER TABLE `_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_activity_action`
--

DROP TABLE IF EXISTS `tb_activity_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_activity_action` (
  `id` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_activity_action`
--

LOCK TABLES `tb_activity_action` WRITE;
/*!40000 ALTER TABLE `tb_activity_action` DISABLE KEYS */;
INSERT INTO `tb_activity_action` VALUES (1,'created item'),(2,'modified item'),(3,'delete item');
/*!40000 ALTER TABLE `tb_activity_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_department`
--

DROP TABLE IF EXISTS `tb_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_department` (
  `order` int(11) DEFAULT NULL,
  `dept_id` varchar(20) NOT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `dept_des` varchar(200) DEFAULT NULL,
  `dept_manager_user` varchar(50) DEFAULT NULL,
  `dept_visible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_department`
--

LOCK TABLES `tb_department` WRITE;
/*!40000 ALTER TABLE `tb_department` DISABLE KEYS */;
INSERT INTO `tb_department` VALUES (1,'dept-001','IT','IT','chau@vinhsang.com',1);
/*!40000 ALTER TABLE `tb_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_employees_project`
--

DROP TABLE IF EXISTS `tb_employees_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_employees_project` (
  `project_id` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`project_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_employees_project`
--

LOCK TABLES `tb_employees_project` WRITE;
/*!40000 ALTER TABLE `tb_employees_project` DISABLE KEYS */;
INSERT INTO `tb_employees_project` VALUES ('pro-001','hy.t@vinhsangvn.com','2017-04-28 11:30:43','design logo'),('pro-001','long.nh@vinhsangvn.com','2017-04-28 11:48:26','HTML design'),('pro-001','long.nt@vinhsangvn.com','2017-01-01 00:00:00',NULL),('pro-001','qui.nt@vinhsangvn.com','2017-01-01 00:00:00',NULL),('pro-001','thoi.bv@vinhsangvn.com','2017-04-28 14:02:57','develop'),('proj-00000000016','long.nh@vinhsangvn.com','2017-04-28 14:29:44',''),('proj-00000000017','long.nh@vinhsangvn.com','2017-04-28 13:40:43',''),('proj-00000000022','hy.t@vinhsangvn.com','2017-06-02 10:51:22',''),('proj-00000000023','qui.nt@vinhsangvn.com','2017-06-06 15:24:00',''),('proj-00000000023','thoi.bv@vinhsangvn.com','2017-06-06 15:24:17',''),('proj-00000000023','tung.pt@vinhsangvn.com','2017-06-06 15:24:35',''),('proj-00000000024','long.nh@vinhsangvn.com','2017-06-02 14:23:25',''),('proj-00000000024','qui.nt@vinhsangvn.com','2017-06-02 14:23:57',''),('proj-00000000024','thoi.bv@vinhsangvn.com','2017-06-02 14:24:43',''),('proj-00000000024','tung.pt@vinhsangvn.com','2017-06-02 14:25:10',''),('proj-00000000025','duy.vl@vinhsangvn.com','2017-06-02 10:56:49',''),('proj-00000000026','duy.vl@vinhsangvn.com','2017-06-02 11:01:05',''),('proj-00000000026','long.nh@vinhsangvn.com','2017-06-02 11:01:27',''),('proj-00000000026','qui.nt@vinhsangvn.com','2017-06-02 11:01:52',''),('proj-00000000026','thoi.bv@vinhsangvn.com','2017-06-02 11:02:08',''),('proj-00000000026','tung.pt@vinhsangvn.com','2017-06-02 14:45:43',''),('proj-00000000027','hy.t@vinhsangvn.com','2017-06-08 08:56:48',''),('proj-00000000029','qui.nt@vinhsangvn.com','2017-08-04 10:18:28',''),('proj-00000000029','thoi.bv@vinhsangvn.com','2017-08-04 10:19:27',''),('proj-00000000030','hy.t@vinhsangvn.com','2017-08-04 10:17:54',''),('proj-00000000030','long.nh@vinhsangvn.com','2017-08-04 10:20:02',''),('proj-00000000030','qui.nt@vinhsangvn.com','2017-09-11 10:10:47',''),('proj-00000000030','thoi.bv@vinhsangvn.com','2017-08-04 10:19:41',''),('proj-00000000030','tung.pt@vinhsangvn.com','2017-08-04 10:54:48',''),('proj-00000000031','duy.vl@vinhsangvn.com','2017-08-04 10:19:01',''),('proj-00000000032','duy.vl@vinhsangvn.com','2017-08-10 10:01:15',''),('proj-00000000034','hy.t@vinhsangvn.com','2017-09-11 10:09:19',''),('proj-00000000036','hy.t@vinhsangvn.com','2017-09-11 10:09:31',''),('proj-00000000037','hy.t@vinhsangvn.com','2017-09-27 14:23:59',''),('proj-00000000037','qui.nt@vinhsangvn.com','2017-09-11 10:10:58',''),('proj-00000000038','hy.t@vinhsangvn.com','2017-09-11 10:09:39',''),('proj-00000000039','thoi.bv@vinhsangvn.com','2017-09-26 10:09:52',''),('proj-00000000039','tung.pt@vinhsangvn.com','2017-09-11 10:12:02',''),('proj-00000000040','hy.t@vinhsangvn.com','2017-09-26 10:00:14',''),('proj-00000000040','tung.pt@vinhsangvn.com','2017-09-27 14:27:16',''),('proj-00000000041','duy.vl@vinhsangvn.com','2017-09-27 14:23:20',''),('proj-00000000041','hy.t@vinhsangvn.com','2017-09-27 14:24:29',''),('proj-00000000041','qui.nt@vinhsangvn.com','2017-09-27 14:25:35',''),('proj-00000000041','thoi.bv@vinhsangvn.com','2017-09-26 10:12:16',''),('proj-00000000042','hy.t@vinhsangvn.com','2017-09-27 14:24:18',''),('proj-00000000042','qui.nt@vinhsangvn.com','2017-09-27 14:25:12',''),('proj-00000000042','thoi.bv@vinhsangvn.com','2017-09-26 10:12:28',''),('proj-00000000042','tung.pt@vinhsangvn.com','2017-09-27 14:27:27',''),('proj-00000000043','hy.t@vinhsangvn.com','2017-09-27 14:24:45',''),('proj-00000000043','thoi.bv@vinhsangvn.com','2017-09-27 14:26:35',''),('proj-00000000043','tung.pt@vinhsangvn.com','2017-09-27 14:27:08',''),('proj-00000000044','duy.vl@vinhsangvn.com','2017-09-27 14:23:36',''),('proj-00000000045','thoi.bv@vinhsangvn.com','2017-09-27 14:26:23',''),('proj-00000000046','qui.nt@vinhsangvn.com','2017-09-27 14:25:25',''),('proj-00000000047','hy.t@vinhsangvn.com','2017-10-02 10:38:25',''),('proj-00000000047','tung.pt@vinhsangvn.com','2017-10-12 09:02:13',''),('proj-00000000048','duy.vl@vinhsangvn.com','2017-10-02 10:38:00',''),('proj-00000000048','qui.nt@vinhsangvn.com','2017-10-05 10:00:43',''),('proj-00000000049','duy.vl@vinhsangvn.com','2017-10-02 10:38:08',''),('proj-00000000050','thoi.bv@vinhsangvn.com','2017-10-03 11:47:38',''),('proj-00000000052','duy.vl@vinhsangvn.com','2017-10-02 11:55:45',''),('proj-00000000052','hy.t@vinhsangvn.com','2017-10-12 09:01:23',''),('proj-00000000052','thoi.bv@vinhsangvn.com','2017-10-03 11:47:48',''),('proj-00000000053','thoi.bv@vinhsangvn.com','2017-10-03 11:47:17',''),('proj-00000000053','tung.pt@vinhsangvn.com','2017-10-12 09:02:20',''),('proj-00000000054','thoi.bv@vinhsangvn.com','2017-10-12 08:57:13',''),('proj-00000000054','tung.pt@vinhsangvn.com','2017-10-12 09:02:06',''),('proj-00000000055','qui.nt@vinhsangvn.com','2017-10-05 10:00:33',''),('proj-00000000056','duy.vl@vinhsangvn.com','2017-10-12 09:01:05',''),('proj-00000000056','hy.t@vinhsangvn.com','2017-10-12 09:01:35',''),('proj-00000000056','qui.nt@vinhsangvn.com','2017-10-12 09:01:46',''),('proj-00000000056','thoi.bv@vinhsangvn.com','2017-10-12 09:01:55',''),('proj-00000000056','tung.pt@vinhsangvn.com','2017-10-12 09:02:25',''),('proj-000003','duy.vl@vinhsangvn.com','2017-04-28 13:42:02','Checking Network system'),('proj-000003','qui.nt@vinhsangvn.com','2017-04-20 14:42:24',NULL);
/*!40000 ALTER TABLE `tb_employees_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_project`
--

DROP TABLE IF EXISTS `tb_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project` (
  `id` varchar(25) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `manager_user` varchar(45) DEFAULT NULL,
  `project_status` tinyint(1) DEFAULT NULL,
  `time_spent` float DEFAULT '0',
  `expect_time` float DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `modify_user` varchar(50) DEFAULT NULL,
  `dept_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_project`
--

LOCK TABLES `tb_project` WRITE;
/*!40000 ALTER TABLE `tb_project` DISABLE KEYS */;
INSERT INTO `tb_project` VALUES ('proj-00000000016','Web IT Project Management','Web IT Project Management','2017-04-03','2017-05-05','chau.hm@vinhsangvn.com',3,0,0,'2017-04-28 11:12:22','2017-04-28 11:13:51','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001'),('proj-00000000017','Internal Mobile App Maintance','Check Vivmall app (Android)\r\nFengshui App (Android) (April 2017)','2017-04-03','2017-05-01','chau.hm@vinhsangvn.com',3,0,0,'2017-04-28 13:39:03','2017-04-28 15:07:21','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001'),('proj-00000000020','Glorious Creation Web','Design Glorious Group Website\r\nhttp://www.gloriouscreationgroup.com','2017-05-01','2017-05-31','chau.hm@vinhsangvn.com',3,0,0,'2017-05-10 16:28:11',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000022','Glorious Sale Kit','Design Glorious Sale Kit with English and China language','2017-06-01','2017-06-07','chau.hm@vinhsangvn.com',3,0,0,'2017-06-02 10:27:40','2017-06-06 09:57:53','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001'),('proj-00000000023','Design Website Vinhsang Version 2','Design Website Vinhsang using new techique and user interface','2017-06-01','2017-06-30','chau.hm@vinhsangvn.com',3,0,0,'2017-06-02 10:29:52','2017-06-02 12:02:59','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001'),('proj-00000000024','Build Cargo Ware House Management (CWM)','Sprints 1: User management, Industry Management, Category Managemt','2017-06-01','2017-06-30','chau.hm@vinhsangvn.com',3,0,0,'2017-06-02 10:31:56',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000025','Optimize Server Resource','Move Virtual Server to suitable physical server \r\nBackup email Vinhsang and vivmall.vn','2017-06-01','2017-06-15','chau.hm@vinhsangvn.com',3,0,0,'2017-06-02 10:34:15',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000026','Internal maintaince  (June 2017)','Check all websites, Software, App on Android\r\nCheck platform Virtual Cross Border\r\nCheck Network, Services\r\nCheck Camear ','2017-06-01','2017-06-30','chau.hm@vinhsangvn.com',3,0,0,'2017-06-02 10:36:59',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000027','Backdrop for Signing Ceremony','Design backdrop  for Signing Ceremony with 3 options','2017-06-01','2017-06-30','chau.hm@vinhsangvn.com',3,0,0,'2017-06-08 08:56:13','2017-06-08 08:57:24','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001'),('proj-00000000028','Signing Contract Ceremony','Design backdrop\r\nhand up Backdrop \r\ntake photo','2017-06-08','2017-06-13','chau.hm@vinhsangvn.com',3,0,0,'2017-06-13 10:35:30',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000029','Cargo Warehouse Management','Add Product code field\r\nReport Inventory by quantity\r\nReport inventory by average price\r\n','2017-08-01','2017-08-31','chau.hm@vinhsangvn.com',3,0,0,'2017-08-04 10:10:52',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000030','Renew website vivmall.cn','There are 5 main parts:\r\nWeb client\r\nWeb for admin\r\nGenerate QR code\r\nVirtual Cross boder platform\r\nSyn data from China server to Vietnam Server\r\n','2017-08-01','2017-09-30','chau.hm@vinhsangvn.com',3,0,0,'2017-08-04 10:14:29',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000031','Maintence mailserver','Solve issue which caused by virus\r\nInstall firewall\r\nBuild mail policy\r\nMonitor mailser everyday','2017-08-01','2017-08-31','chau.hm@vinhsangvn.com',3,0,0,'2017-08-04 10:16:44',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000032','Install Hyperledger Fabric','Install Hyperledger Fabric to demo using blockchain technology','2017-08-10','2017-08-31','chau.hm@vinhsangvn.com',3,0,0,'2017-08-10 09:25:18',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000035','Design banner vivmall.vn','Design banner vivmall.vn','2017-09-07','2017-09-11','chau.hm@vinhsangvn.com',3,0,0,'2017-09-11 10:01:42',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000037','Cargo Warehouse Management','Cargo Warehouse Management','2017-09-01','2017-09-30','chau.hm@vinhsangvn.com',3,0,0,'2017-09-11 10:03:56','2017-09-27 14:12:48','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001'),('proj-00000000040','Middle-Autumn','Design Standee and Banner  Middle-Autumn\r\nJoin in Middle-Autumn activities','2017-09-18','2017-09-30','chau.hm@vinhsangvn.com',3,0,0,'2017-09-26 09:59:46','2017-09-27 14:13:39','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001'),('proj-00000000041','Research BlockChain (Build Application)','Research BlockChain (Build Application) for testing','2017-09-01','2017-09-30','chau.hm@vinhsangvn.com',3,0,0,'2017-09-26 10:10:59',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000042','Glorious Creation Group Website','Fix some function\r\nAdd new function\r\nUpload content Glorious website','2017-09-01','2017-09-30','chau.hm@vinhsangvn.com',3,0,0,'2017-09-26 10:11:49','2017-09-27 14:15:16','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001'),('proj-00000000043','Vivmall.vn and support Business team','Design banner, leaflet\r\nAdd QR code function\r\nSupport Business team  upload new products\r\nSupport test new products','2017-09-01','2017-09-30','chau.hm@vinhsangvn.com',3,0,0,'2017-09-27 13:53:05',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000044','System and network maintenance','System and network maintenance','2017-09-01','2017-09-30','chau.hm@vinhsangvn.com',3,0,0,'2017-09-27 13:54:22',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000045','Software and website maintenance','Software and website maintenance','2017-09-01','2017-09-30','chau.hm@vinhsangvn.com',3,0,0,'2017-09-27 13:55:29',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000046','Ultilities and mobile application maintenance','Ultilities and mobile application maintenance','2017-09-01','2017-09-30','chau.hm@vinhsangvn.com',3,0,0,'2017-09-27 13:56:23',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000047','Glorious Vietnam','Glorious Vietnam','2017-10-01','2017-10-31','chau.hm@vinhsangvn.com',3,0,0,'2017-10-02 10:33:27',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000048','Blockchain','Research and setup demo blockchain technology','2017-10-01','2017-10-31','chau.hm@vinhsangvn.com',3,0,0,'2017-10-02 10:34:33',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000049','Hardware and network maintanence','Hardware and network maintanence','2017-10-01','2017-10-31','chau.hm@vinhsangvn.com',3,0,0,'2017-10-02 10:35:44',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000050','Software and website maintanence ','Software and website maintanence ','2017-10-01','2017-10-31','chau.hm@vinhsangvn.com',3,0,0,'2017-10-02 10:36:55',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000051','Ultilities and mobie application maintanence','Ultilities and mobie application maintanence','2017-10-01','2017-10-31','chau.hm@vinhsangvn.com',3,0,0,'2017-10-02 10:37:39',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000052','Glorious Creation Group','Glorious Creation Group','2017-10-01','2017-10-31','chau.hm@vinhsangvn.com',3,0,0,'2017-10-02 11:55:27',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000053','Vivmall.vn','Vivmall.vn','2017-10-01','2017-10-31','chau.hm@vinhsangvn.com',3,0,0,'2017-10-02 16:22:00',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000054','Vivmall.vn version 2','build Vivmall.vn version 2','2017-10-01','2017-10-31','chau.hm@vinhsangvn.com',3,0,0,'2017-10-02 16:25:58','2017-10-05 10:07:56','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001'),('proj-00000000055','Cargo Warehouse Management','Cargo Warehouse Management','2017-10-01','2017-10-31','chau.hm@vinhsangvn.com',3,0,0,'2017-10-05 10:00:05',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-00000000056','Others','Others','2017-10-01','2017-10-31','chau.hm@vinhsangvn.com',3,0,0,'2017-10-12 09:00:51',NULL,'chau.hm@vinhsangvn.com',NULL,'dept-001'),('proj-000002','Internal Website Maintance','Check all website (Aprial 2017)','2017-04-03','2017-05-01','chau.hm@vinhsangvn.com',3,0,0,'2017-04-20 11:38:54','2017-04-28 13:39:38','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001'),('proj-000003','Internal Network Maintance','Surveillance network system, camera (April 2017)','2017-04-01','2017-05-01','chau.hm@vinhsangvn.com',3,0,0,'2017-04-20 14:42:24','2017-04-28 15:07:42','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','dept-001');
/*!40000 ALTER TABLE `tb_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_project_status`
--

DROP TABLE IF EXISTS `tb_project_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_project_status` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(145) DEFAULT NULL,
  `html_display` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_project_status`
--

LOCK TABLES `tb_project_status` WRITE;
/*!40000 ALTER TABLE `tb_project_status` DISABLE KEYS */;
INSERT INTO `tb_project_status` VALUES (1,'Active','Active','Active Project'),(2,'Upcoming','Upcoming','Upcoming Project'),(3,'Ended','Ended','Ended Project');
/*!40000 ALTER TABLE `tb_project_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_recent_activity`
--

DROP TABLE IF EXISTS `tb_recent_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_recent_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(45) DEFAULT NULL,
  `task_id` varchar(30) DEFAULT NULL,
  `task_title` varchar(75) DEFAULT NULL,
  `ower` varchar(45) DEFAULT NULL,
  `action` tinyint(1) DEFAULT NULL,
  `activity_detail` text,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_recent_activity`
--

LOCK TABLES `tb_recent_activity` WRITE;
/*!40000 ALTER TABLE `tb_recent_activity` DISABLE KEYS */;
INSERT INTO `tb_recent_activity` VALUES (1,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',1,'','2017-04-23 15:49:33'),(2,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"42\"},{\"key\":\"Estimated effort\",\"value\":\"10h10\"}]','2017-04-25 15:33:37'),(3,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Estimated effort\",\"value\":\"1h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-25 15:35:44'),(4,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"56\"},{\"key\":\"Estimated effort\",\"value\":\"2h10\"}]','2017-04-25 15:38:27'),(5,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Estimated effort\",\"value\":\"6h50\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-25 15:38:59'),(6,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"64\"},{\"key\":\"Estimated effort\",\"value\":\"2h59\"}]','2017-04-25 15:43:01'),(7,'pro-001','task-00000000002','xay dung header 1 11','chau@vinhsang.com',2,'[{\"key\":\"Assigned\",\"value\":\"qui@gmail.com\"},{\"key\":\"Description\",\"value\":\"xay dung header 1 11\\nxay dung header 1 11\\nxay dung header 1 11\"},{\"key\":\"Title\",\"value\":\"xay dung header 1 11\"},{\"key\":\"Progress\",\"value\":\"80\"},{\"key\":\"Estimated effort\",\"value\":\"3h00\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-04-26 09:53:18'),(8,'pro-001','task-00000000002','xay dung header 1 11','qui@gmail.com',2,'[{\"key\":\"Time spent\",\"value\":\"2h10\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-04-26 10:26:19'),(9,'pro-001','task-00000000002','xay dung header 1 11','qui@gmail.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"3h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-26 10:26:29'),(10,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',1,'','2017-04-23 15:49:33'),(11,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"42\"},{\"key\":\"Estimated effort\",\"value\":\"10h10\"}]','2017-04-25 15:33:37'),(12,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Estimated effort\",\"value\":\"1h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-25 15:35:44'),(13,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"56\"},{\"key\":\"Estimated effort\",\"value\":\"2h10\"}]','2017-04-25 15:38:27'),(14,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Estimated effort\",\"value\":\"6h50\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-25 15:38:59'),(15,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"64\"},{\"key\":\"Estimated effort\",\"value\":\"2h59\"}]','2017-04-25 15:43:01'),(16,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',1,'','2017-04-23 15:49:33'),(17,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"42\"},{\"key\":\"Estimated effort\",\"value\":\"10h10\"}]','2017-04-25 15:33:37'),(18,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Estimated effort\",\"value\":\"1h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-25 15:35:44'),(19,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"56\"},{\"key\":\"Estimated effort\",\"value\":\"2h10\"}]','2017-04-25 15:38:27'),(20,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Estimated effort\",\"value\":\"6h50\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-25 15:38:59'),(21,'pro-001','task-00000000002','xay dung header 1','chau@vinhsang.com',2,'[{\"key\":\"Progress\",\"value\":\"64\"},{\"key\":\"Estimated effort\",\"value\":\"2h59\"}]','2017-04-25 15:43:01'),(22,'pro-001','task-00000000003','tdrtrd','chau.hm@vinhsangvn.com',1,'','2017-04-28 11:24:33'),(23,'pro-001','task-00000000004','ddd','chau.hm@vinhsangvn.com',1,'','2017-04-28 11:25:22'),(24,'pro-001','task-00000000004','ddd','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"51\"},{\"key\":\"Estimated effort\",\"value\":\"9h00\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-04-28 11:26:29'),(25,'pro-001','task-00000000004','Home Page Layout ( graphic design)','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Description\",\"value\":\"Home Page Layout ( graphic design)\"},{\"key\":\"Title\",\"value\":\"Home Page Layout ( graphic design)\"},{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Estimated effort\",\"value\":\"0h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-28 11:41:33'),(26,'pro-001','task-00000000003','Our People Page ( graphic design)','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Assigned\",\"value\":\"hy.t@vinhsangvn.com\"},{\"key\":\"Description\",\"value\":\"Our People Page ( graphic design)\"},{\"key\":\"Title\",\"value\":\"Our People Page ( graphic design)\"},{\"key\":\"Estimated effort\",\"value\":\"0h0\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-04-28 11:42:50'),(27,'pro-001','task-00000000005','Contact Us Page (graphic design)','chau.hm@vinhsangvn.com',1,'','2017-04-28 11:44:03'),(28,'pro-001','task-00000000006','Home page layout  (html)','chau.hm@vinhsangvn.com',1,'','2017-04-28 11:45:34'),(29,'pro-001','task-00000000007','Our People page (html)','chau.hm@vinhsangvn.com',1,'','2017-04-28 11:46:38'),(30,'pro-001','task-00000000008','Contact us page (html)','chau.hm@vinhsangvn.com',1,'','2017-04-28 11:47:40'),(31,'pro-001','task-00000000006','Home page layout  (html)','long.nh@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-28 11:49:31'),(32,'proj-00000000016','task-00000000009','Analysize  requirements','chau.hm@vinhsangvn.com',1,'','2017-04-28 11:57:03'),(33,'proj-00000000016','task-00000000010','Design database','chau.hm@vinhsangvn.com',1,'','2017-04-28 12:01:35'),(34,'pro-001','task-00000000011','Develop  home page','chau.hm@vinhsangvn.com',1,'','2017-04-28 13:59:34'),(35,'pro-001','task-00000000012','Develop Our People','chau.hm@vinhsangvn.com',1,'','2017-04-28 14:00:44'),(36,'pro-001','task-00000000013','Develop Contact Us page','chau.hm@vinhsangvn.com',1,'','2017-04-28 14:02:02'),(37,'pro-001','task-00000000012','Develop Our People','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Assigned\",\"value\":\"thoi.bv@vinhsangvn.com\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-04-28 14:04:31'),(38,'pro-001','task-00000000014','Surveillance network, email, camera','chau.hm@vinhsangvn.com',1,'','2017-04-28 14:08:07'),(39,'proj-000003','task-00000000014','Surveillance network, email, camera','duy.vl@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-28 14:11:41'),(40,'pro-001','task-00000000013','Develop Contact Us page','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-04-28 14:13:59'),(41,'proj-00000000016','task-00000000015','Design Employee UI','chau.hm@vinhsangvn.com',1,'','2017-04-28 14:28:30'),(42,'proj-00000000016','task-00000000016','Design Project UI','chau.hm@vinhsangvn.com',1,'','2017-04-28 14:29:03'),(43,'proj-00000000020','task-00000000017','Design GC homepage (html)','chau.hm@vinhsangvn.com',1,'','2017-05-10 16:31:28'),(44,'proj-00000000020','task-00000000018','Design Business Operations page','chau.hm@vinhsangvn.com',1,'','2017-05-10 16:35:02'),(45,'proj-00000000021','task-00000000019','345','qui.nt@vinhsangvn.com',1,'','2017-05-30 11:50:13'),(46,'proj-00000000021','task-00000000019','345','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"91\"},{\"key\":\"Estimated effort\",\"value\":\"4h30\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-05-30 11:52:35'),(47,'proj-00000000022','task-00000000020','Desgin Sale Kit (English Version)','chau.hm@vinhsangvn.com',1,'','2017-06-02 10:48:16'),(48,'proj-00000000022','task-00000000020','Desgin Sale Kit (English Version)','hy.t@vinhsangvn.com',2,'[{\"key\":\"Time spent\",\"value\":\"7h10\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-02 10:52:41'),(49,'proj-00000000022','task-00000000020','Desgin Sale Kit (English Version)','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-02 10:52:56'),(50,'proj-00000000022','task-00000000021','Design Glorious Sale Kit (China Version)','chau.hm@vinhsangvn.com',1,'','2017-06-02 10:54:54'),(51,'proj-00000000022','task-00000000022','Move source code in Physical Server1 to physical server 2','chau.hm@vinhsangvn.com',1,'','2017-06-02 11:00:29'),(52,'proj-00000000026','task-00000000023','Maintance websites','chau.hm@vinhsangvn.com',1,'','2017-06-02 11:09:33'),(53,'proj-00000000026','task-00000000023','Maintance websites','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Time spent\",\"value\":\"2h00\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-02 11:12:29'),(54,'proj-00000000026','task-00000000023','Maintance websites','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"4\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-02 11:14:27'),(55,'proj-00000000026','task-00000000023','Maintance websites','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"30h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-02 11:15:48'),(56,'proj-00000000026','task-00000000023','Maintance websites','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Description\",\"value\":\"Daily checking these websites:\\nVinhsangvn.com, greenbuildingplus,GloriousCreationGroup, Lukselectron.com, adv.tab156.vn, tv.adv.tab156, valentine.tab156.vn, tab.156.vn/event.html, IT Project Management\\n\"},{\"key\":\"Estimated effort\",\"value\":\"2h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-02 11:21:54'),(57,'proj-00000000026','task-00000000023','Maintance Websites Group 1','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Title\",\"value\":\"Maintance Websites Group 1\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-02 11:24:47'),(58,'proj-00000000026','task-00000000024','Website Daily Checking ','chau.hm@vinhsangvn.com',1,'','2017-06-02 11:31:33'),(59,'proj-00000000026','task-00000000025','Android App Daily Checking','chau.hm@vinhsangvn.com',1,'','2017-06-02 11:33:08'),(60,'proj-00000000026','task-00000000026','Ultilities Daily Checking','chau.hm@vinhsangvn.com',1,'','2017-06-02 11:36:10'),(61,'proj-00000000026','task-00000000027','Application Daily Check','chau.hm@vinhsangvn.com',1,'','2017-06-02 11:38:12'),(62,'proj-00000000026','task-00000000023','Maintance Websites Group 1','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"0\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-02 11:39:24'),(63,'proj-00000000022','task-00000000028','Netword and Service Daily Checking','chau.hm@vinhsangvn.com',1,'','2017-06-02 11:42:23'),(64,'proj-00000000022','task-00000000029','Analyze User management','chau.hm@vinhsangvn.com',1,'','2017-06-02 13:54:58'),(65,'proj-00000000024','task-00000000030','Analyze Industry, Category Management','chau.hm@vinhsangvn.com',1,'','2017-06-02 13:58:30'),(66,'proj-00000000024','task-00000000031','User Management Database','chau.hm@vinhsangvn.com',1,'','2017-06-02 14:00:48'),(67,'proj-00000000024','task-00000000032','Industry and Category Database','chau.hm@vinhsangvn.com',1,'','2017-06-02 14:04:54'),(68,'proj-00000000024','task-00000000033','Set up enviroment to develop','chau.hm@vinhsangvn.com',1,'','2017-06-02 14:11:37'),(69,'proj-00000000024','task-00000000034','Design User Management UI','chau.hm@vinhsangvn.com',1,'','2017-06-02 14:19:29'),(70,'proj-00000000024','task-00000000035','Design Industry Management UI','chau.hm@vinhsangvn.com',1,'','2017-06-02 14:22:04'),(71,'proj-00000000024','task-00000000029','Analyze User management','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-02 14:57:08'),(72,'proj-00000000023','task-00000000036','Thiết lập môi trường dự án','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:03:16'),(73,'proj-00000000023','task-00000000037','Thiết kế database','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:05:53'),(74,'proj-00000000022','task-00000000038','Dựng layout quản trị \"admin\"','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:08:09'),(75,'proj-00000000023','task-00000000039','Xây dựng chức năng quản lý \"About\"','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:09:42'),(76,'proj-00000000023','task-00000000040','Xây dựng chức năng  quản lý \"Services\"','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:12:12'),(77,'proj-00000000023','task-00000000041','Hỗ trợ khảo sát môi trường dự án','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:14:36'),(78,'proj-00000000023','task-00000000042','Xây dựng luồng mẫu xuất song ngữ Font-end','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:17:54'),(79,'proj-00000000023','task-00000000043','Xây dựng chức năng quản trị \"Slide\"','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:22:14'),(80,'proj-00000000023','task-00000000044','Xây dựng chức năng quản trị \"Events\"','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:25:31'),(81,'proj-00000000023','task-00000000045','Biểu diễn dữ liệu chức năng About,Slide trên Font end','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:27:30'),(82,'proj-00000000022','task-00000000046','Test lại toàn bộ chức năng dự án ','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:31:39'),(83,'proj-00000000023','task-00000000047','Deploy dự án','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:32:32'),(84,'proj-00000000023','task-00000000048','Xây dựng template HTML trang Index','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:36:08'),(85,'proj-00000000023','task-00000000049','Xây dựng template HTML trang About','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:38:09'),(86,'proj-00000000023','task-00000000050','Xây dựng template HTML biểu diễn slide','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:39:26'),(87,'proj-00000000022','task-00000000051','Xây dựng template HTML biểu diễn Service','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:40:47'),(88,'proj-00000000023','task-00000000052','Xây dựng template biểu diễn Events','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:41:48'),(89,'proj-00000000022','task-00000000053','Xây dựng template From contact','chau.hm@vinhsangvn.com',1,'','2017-06-06 10:42:29'),(90,'proj-00000000022','task-00000000021','Design Glorious Sale Kit (China Version)','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-06 14:48:30'),(91,'proj-00000000022','task-00000000021','Design Glorious Sale Kit (China Version)','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-06 14:48:47'),(92,'proj-00000000023','task-00000000036','Thiết lập môi trường dự án','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"8h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-06 15:25:02'),(93,'proj-00000000023','task-00000000037','Thiết kế database','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-06 15:25:18'),(94,'proj-00000000023','task-00000000038','Dựng layout quản trị \"admin\"','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"3h40\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-06 15:25:33'),(95,'proj-00000000023','task-00000000039','Xây dựng chức năng quản lý \"About\"','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"2h20\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-06 15:25:51'),(96,'proj-00000000023','task-00000000040','Xây dựng chức năng  quản lý \"Services\"','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Time spent\",\"value\":\"5h25\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-06 15:26:05'),(97,'proj-00000000023','task-00000000040','Xây dựng chức năng  quản lý \"Services\"','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-06 15:26:17'),(98,'proj-00000000024','task-00000000033','Set up enviroment to develop','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"30\"},{\"key\":\"Time spent\",\"value\":\"1h00\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-06 15:28:20'),(99,'proj-00000000026','task-00000000027','Application Daily Check','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Time spent\",\"value\":\"4h00\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-06 15:29:19'),(100,'proj-00000000026','task-00000000027','Application Daily Check','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"7\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-06 15:29:32'),(101,'proj-00000000023','task-00000000041','Hỗ trợ khảo sát môi trường dự án','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-06 15:30:32'),(102,'proj-00000000023','task-00000000042','Xây dựng luồng mẫu xuất song ngữ Font-end','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"3h35\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-06 15:30:49'),(103,'proj-00000000026','task-00000000026','Ultilities Daily Checking','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"11\"},{\"key\":\"Time spent\",\"value\":\"4h00\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-06 15:31:30'),(104,'proj-00000000026','task-00000000027','Application Daily Check','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Estimated effort\",\"value\":\"12h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-06 15:36:27'),(105,'proj-00000000023','task-00000000036','Set up enviroment for develop','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Description\",\"value\":\"-Tạo  mới tên project \\\"/vinhsang-full-web-stanalone-v1\\\"\\n-Thiết lập link svn \\\"http://10.0.10.15/svn2/repo/vinhsangvn.com/vinhsang-full-web-stanalone-v1\\\"\\n-Thiết lập môi trường eclipse\\n-Dựng Flow teamplate\"},{\"key\":\"Title\",\"value\":\"Set up enviroment for develop\"},{\"key\":\"Estimated effort\",\"value\":\"8h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-08 08:46:23'),(106,'proj-00000000023','task-00000000037','Design Database','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Description\",\"value\":\"-Tạo database \\\"vinhsang\\\" 10.0.10.41\\n-Tạo table ,thiết  lập quan hệ giữa các table\\n\\n   \"},{\"key\":\"Title\",\"value\":\"Design Database\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-08 08:47:06'),(107,'proj-00000000023','task-00000000038','Desgin layout for admin page','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Description\",\"value\":\"-Dựng layout mẫu:\\n    -Menu:About,Service,Contact,Event,Slide\\n    -Form đăng nhạp,đăng xuất\\n    -Lựa chọn đa ngôn ngữ.\\n    \"},{\"key\":\"Title\",\"value\":\"Desgin layout for admin page\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-08 08:47:52'),(108,'proj-00000000023','task-00000000039','Develop \"About\" page','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Description\",\"value\":\"-Dựng layout cho chức năng.\\n-Dựng data flow\"},{\"key\":\"Title\",\"value\":\"Develop \\\"About\\\" page\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-08 08:49:44'),(109,'proj-00000000027','task-00000000054','Design backdrop for signing ceremony version 1','chau.hm@vinhsangvn.com',1,'','2017-06-08 08:58:22'),(110,'proj-00000000027','task-00000000055','Design backdrop for signing ceremony version 2','chau.hm@vinhsangvn.com',1,'','2017-06-08 08:58:48'),(111,'proj-00000000023','task-00000000056','Design backdrop for signing ceremony version 3','chau.hm@vinhsangvn.com',1,'','2017-06-08 08:59:16'),(112,'proj-00000000023','task-00000000040','Develop \"Service\"  function','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Description\",\"value\":\"-Phân tích nghiệp vụ.\\n-Tính năng đa ngôn ngữ\\n-Tạo From thêm ,xóa, sửa,Upload hình ảnh\\n-Tạo Grid quản lý  phân trang,cập nhật trạng thái \\n-Test chức năng.\"},{\"key\":\"Title\",\"value\":\"Develop \\\"Service\\\"  function\"},{\"key\":\"Estimated effort\",\"value\":\"5h25\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-08 09:01:16'),(113,'proj-00000000027','task-00000000054','Design backdrop for signing ceremony version 1','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"95\"},{\"key\":\"Time spent\",\"value\":\"2h30\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-08 09:35:31'),(114,'proj-00000000027','task-00000000055','Design backdrop for signing ceremony version 2','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"95\"},{\"key\":\"Time spent\",\"value\":\"2h30\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-08 09:35:49'),(115,'proj-00000000027','task-00000000056','Design backdrop for signing ceremony version 3','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"95\"},{\"key\":\"Time spent\",\"value\":\"2h30\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-08 09:36:02'),(116,'proj-00000000027','task-00000000056','Design backdrop for signing ceremony version 3','hy.t@vinhsangvn.com',2,'[{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-08 09:36:14'),(117,'proj-00000000027','task-00000000054','Design backdrop for signing ceremony version 1','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"2h40\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-08 10:16:54'),(118,'proj-00000000027','task-00000000055','Design backdrop for signing ceremony version 2','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"2h40\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-08 10:17:07'),(119,'proj-00000000027','task-00000000056','Design backdrop for signing ceremony version 3','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"7h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-08 16:15:47'),(120,'proj-00000000023','task-00000000043','Xây dựng chức năng quản trị \"Slide\"','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"6h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-08 16:57:58'),(121,'proj-00000000023','task-00000000044','Xây dựng chức năng quản trị \"Events\"','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"6h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-08 16:58:36'),(122,'proj-00000000024','task-00000000033','Set up enviroment to develop','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"2h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-13 15:33:31'),(123,'proj-00000000026','task-00000000027','Application Daily Check','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"34\"},{\"key\":\"Time spent\",\"value\":\"6h00\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-13 15:34:07'),(124,'proj-00000000023','task-00000000057','Xây dựng layout interface  đa ngôn ngữ','chau.hm@vinhsangvn.com',1,'','2017-06-13 16:47:55'),(125,'proj-00000000023','task-00000000058','Upload dữ liệu ','chau.hm@vinhsangvn.com',1,'','2017-06-13 16:49:13'),(126,'proj-00000000023','task-00000000058','Upload dữ liệu ','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Assigned\",\"value\":\"thoi.bv@vinhsangvn.com\"},{\"key\":\"Description\",\"value\":\"-Dữ liệu trang index,slide\\n-Dữ liệu trang About\\n-Dữ liệu trang Service\\n-Dữ liệu trang Event\\n\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-13 16:49:32'),(127,'proj-00000000023','task-00000000059','Fix lỗi font,màu sắc','chau.hm@vinhsangvn.com',1,'','2017-06-13 16:51:13'),(128,'proj-00000000023','task-00000000048','Xây dựng template HTML trang Index','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-13 16:52:11'),(129,'proj-00000000023','task-00000000049','Xây dựng template HTML trang About','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"4h30\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-13 16:52:24'),(130,'proj-00000000023','task-00000000050','Xây dựng template HTML biểu diễn slide','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-13 16:52:35'),(131,'proj-00000000023','task-00000000052','Xây dựng template biểu diễn Events','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"3h40\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-13 16:52:48'),(132,'proj-00000000023','task-00000000059','Fix lỗi font,màu sắc','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"6h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-13 16:52:55'),(133,'proj-00000000026','task-00000000024','Website Daily Checking ','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"26\"},{\"key\":\"Time spent\",\"value\":\"5h00\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-06-13 16:53:23'),(134,'proj-00000000023','task-00000000045','Biểu diễn dữ liệu chức năng About,Slide trên Font end','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-13 16:54:02'),(135,'proj-00000000023','task-00000000057','Xây dựng layout interface  đa ngôn ngữ','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"6h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-13 16:54:16'),(136,'proj-00000000023','task-00000000058','Upload dữ liệu ','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"2h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-15 08:05:22'),(137,'proj-00000000023','task-00000000060','Xây dựng chức năng quản lý user','chau.hm@vinhsangvn.com',1,'','2017-06-15 16:21:17'),(138,'proj-00000000023','task-00000000061','Xây dựng chức năng contact','chau.hm@vinhsangvn.com',1,'','2017-06-15 16:21:50'),(139,'proj-00000000023','task-00000000060','Xây dựng chức năng quản lý user','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-16 08:26:36'),(140,'proj-00000000023','task-00000000061','Xây dựng chức năng contact','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-06-16 08:27:26'),(141,'proj-00000000023','task-00000000062','fix lại giao diện  website vinhsangvn.com(v2)','chau.hm@vinhsangvn.com',1,'','2017-06-26 11:54:56'),(142,'proj-00000000023','task-00000000063','Fix render data vinhsang(v2)','chau.hm@vinhsangvn.com',1,'','2017-06-26 11:55:34'),(143,'proj-00000000030','task-00000000064','Design index page (graphic design)','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:21:53'),(144,'proj-00000000030','task-00000000065','Design  sign up and sign in page (graphic design)','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:23:45'),(145,'proj-00000000030','task-00000000066','Design Product list page (graphic design)','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:25:13'),(146,'proj-00000000029','task-00000000067','Desgin product detail (graphic design)','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:26:09'),(147,'proj-00000000030','task-00000000068','Analyze and desgin databse','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:27:37'),(148,'proj-00000000029','task-00000000069','Add Product code','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:29:55'),(149,'proj-00000000030','task-00000000064','Design index page (graphic design)','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-08-04 10:35:03'),(150,'proj-00000000030','task-00000000065','Design  sign up and sign in page (graphic design)','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-08-04 10:35:30'),(151,'proj-00000000030','task-00000000066','Design Product list page (graphic design)','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-08-04 10:35:53'),(152,'proj-00000000031','task-00000000070','Solve mailserver issue','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:39:15'),(153,'proj-00000000031','task-00000000071','Install firewall','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:41:17'),(154,'proj-00000000031','task-00000000071','Install firewall','duy.vl@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"16h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-08-04 10:42:05'),(155,'proj-00000000031','task-00000000070','Solve mailserver issue','duy.vl@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-08-04 10:42:32'),(156,'proj-00000000030','task-00000000072','Research Node.js technology','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:49:01'),(157,'proj-00000000030','task-00000000073','Design index page (html design)','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:49:41'),(158,'proj-00000000030','task-00000000074','Design sign up and sign in (html Design)','chau.hm@vinhsangvn.com',1,'','2017-08-04 10:50:39'),(159,'proj-00000000030','task-00000000072','Research Node.js technology','long.nh@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-08-04 10:52:23'),(160,'proj-00000000030','task-00000000073','Design index page (html design)','long.nh@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-08-04 10:52:43'),(161,'proj-00000000030','task-00000000074','Design sign up and sign in (html Design)','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Time spent\",\"value\":\"10h0\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-08-04 10:55:28'),(162,'proj-00000000031','task-00000000075','Build mail policies','chau.hm@vinhsangvn.com',1,'','2017-08-07 10:36:49'),(163,'proj-00000000029','task-00000000076','Analyze and create database for Inventory','chau.hm@vinhsangvn.com',1,'','2017-08-07 10:40:18'),(164,'proj-00000000029','task-00000000077','Coding inventory function by average calculation method','chau.hm@vinhsangvn.com',1,'','2017-08-07 10:41:59'),(165,'proj-00000000029','task-00000000078','Report inventory by quantity','chau.hm@vinhsangvn.com',1,'','2017-08-07 10:42:50'),(166,'proj-00000000032','task-00000000079','Install Ubuntu 16.04','chau.hm@vinhsangvn.com',1,'','2017-08-10 10:03:56'),(167,'proj-00000000032','task-00000000080','Install prequisites for Hyperledger','chau.hm@vinhsangvn.com',1,'','2017-08-10 10:06:20'),(168,'proj-00000000040','task-00000000081','Design Autumn Standee','chau.hm@vinhsangvn.com',1,'','2017-09-26 10:02:53'),(169,'proj-00000000040','task-00000000082','Design banner Middle-Autumn','chau.hm@vinhsangvn.com',1,'','2017-09-26 10:03:43'),(170,'proj-00000000040','task-00000000082','Design banner Middle-Autumn','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-26 10:05:02'),(171,'proj-00000000040','task-00000000081','Design Autumn Standee','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-26 10:05:24'),(172,'proj-00000000038','task-00000000083','Take and design product images','chau.hm@vinhsangvn.com',1,'','2017-09-26 10:08:55'),(173,'proj-00000000042','task-00000000084','Fix and upload content Glorious web (client UI)','chau.hm@vinhsangvn.com',1,'','2017-09-26 10:14:03'),(174,'proj-00000000042','task-00000000085','Fix and upload content Glorious (Admin UI)','chau.hm@vinhsangvn.com',1,'','2017-09-26 10:14:43'),(175,'proj-00000000042','task-00000000084','Fix and upload content Glorious web (client UI)','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-26 10:15:31'),(176,'proj-00000000034','task-00000000086','Design promotion leaflet','chau.hm@vinhsangvn.com',1,'','2017-09-26 10:19:01'),(177,'proj-00000000037','task-00000000087','Training and support Ms Hiền','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:21:42'),(178,'proj-00000000040','task-00000000088','Design Standee and Banner','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:30:08'),(179,'proj-00000000041','task-00000000089','Build Application with Hyperledge Composer','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:31:25'),(180,'proj-00000000041','task-00000000090','Research network for Blockchain','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:33:43'),(181,'proj-00000000041','task-00000000091','Write document','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:34:30'),(182,'proj-00000000042','task-00000000092','Fix and upload content','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:35:48'),(183,'proj-00000000042','task-00000000093','UI for Our Activities function','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:36:43'),(184,'proj-00000000042','task-00000000094','Our Activities function (Admin)','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:37:22'),(185,'proj-00000000042','task-00000000095','Our Activities function (Client)','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:38:31'),(186,'proj-00000000042','task-00000000096','Upload the content of \"our people\" function','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:41:07'),(187,'proj-00000000043','task-00000000097','Trainning and support Business team','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:42:03'),(188,'proj-00000000043','task-00000000098','Support test new products','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:43:14'),(189,'proj-00000000043','task-00000000099','Desgin leaflet','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:44:04'),(190,'proj-00000000030','task-00000000100','Take and design new products','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:45:25'),(191,'proj-00000000043','task-00000000101','Add QR code function','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:45:59'),(192,'proj-00000000044','task-00000000102','Check system and network','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:48:56'),(193,'proj-00000000045','task-00000000103','Check Software and website status','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:50:11'),(194,'proj-00000000045','task-00000000104','Check Software and website status','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:50:33'),(195,'proj-00000000046','task-00000000105','Check Ultilities and mobile application','chau.hm@vinhsangvn.com',1,'','2017-09-27 14:51:18'),(196,'proj-00000000041','task-00000000091','Write document','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"15h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 14:52:34'),(197,'proj-00000000042','task-00000000096','Upload the content of \"our people\" function','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 14:53:06'),(198,'proj-00000000042','task-00000000095','Our Activities function (Client)','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Status\",\"value\":\"Open\"}]','2017-09-27 14:53:36'),(199,'proj-00000000042','task-00000000092','Fix and upload content','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 14:54:14'),(200,'proj-00000000043','task-00000000097','Trainning and support Business team','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"12h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 14:54:42'),(201,'proj-00000000045','task-00000000103','Check Software and website status','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 14:55:07'),(202,'proj-00000000030','task-00000000100','Take and design new products','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 14:56:03'),(203,'proj-00000000030','task-00000000067','Desgin product detail (graphic design)','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 14:56:41'),(204,'proj-00000000040','task-00000000088','Design Standee and Banner','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 14:57:23'),(205,'proj-00000000043','task-00000000099','Desgin leaflet','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 14:58:08'),(206,'proj-00000000037','task-00000000087','Training and support Ms Hiền','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Status\",\"value\":\"Open\"}]','2017-09-27 14:58:59'),(207,'proj-00000000041','task-00000000089','Build Application with Hyperledge Composer','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 14:59:32'),(208,'proj-00000000042','task-00000000094','Our Activities function (Admin)','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Status\",\"value\":\"Open\"}]','2017-09-27 15:00:05'),(209,'proj-00000000042','task-00000000094','Our Activities function (Admin)','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 15:00:25'),(210,'proj-00000000042','task-00000000085','Fix and upload content Glorious (Admin UI)','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 15:00:51'),(211,'proj-00000000046','task-00000000105','Check Ultilities and mobile application','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Status\",\"value\":\"Open\"}]','2017-09-27 15:01:18'),(212,'proj-00000000041','task-00000000090','Research network for Blockchain','duy.vl@vinhsangvn.com',2,'[{\"key\":\"Status\",\"value\":\"Open\"}]','2017-09-27 15:02:05'),(213,'proj-00000000044','task-00000000102','Check system and network','duy.vl@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 15:02:31'),(214,'proj-00000000042','task-00000000093','UI for Our Activities function','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 15:04:18'),(215,'proj-00000000043','task-00000000098','Support test new products','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 15:04:52'),(216,'proj-00000000030','task-00000000074','Design sign up and sign in (html Design)','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"7h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 15:05:23'),(217,'proj-00000000041','task-00000000106','Research Docker, Golang and concept','chau.hm@vinhsangvn.com',1,'','2017-09-27 15:11:44'),(218,'proj-00000000041','task-00000000106','Research Docker, Golang and concept','qui.nt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-09-27 15:13:24'),(219,'proj-00000000047','task-00000000107','Design namecared Glorious Vietnam','chau.hm@vinhsangvn.com',1,'','2017-10-02 10:39:12'),(220,'proj-00000000052','task-00000000108','Set  up mail server','chau.hm@vinhsangvn.com',1,'','2017-10-02 11:56:34'),(221,'proj-00000000047','task-00000000109','Design backdrop in Damsen Office','chau.hm@vinhsangvn.com',1,'','2017-10-02 16:09:55'),(222,'proj-00000000047','task-00000000107','Design namecared Glorious Vietnam','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"0h30\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-02 16:11:33'),(223,'proj-00000000047','task-00000000109','Design backdrop in Damsen Office','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"0h30\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-02 16:11:47'),(224,'proj-00000000052','task-00000000108','Set  up mail server','duy.vl@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"16h30\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-02 16:17:37'),(225,'proj-00000000047','task-00000000107','Design namecared Glorious Vietnam','hy.t@vinhsangvn.com',2,'[{\"key\":\"Time spent\",\"value\":\"6h30\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-02 16:18:05'),(226,'proj-00000000047','task-00000000109','Design backdrop in Damsen Office','hy.t@vinhsangvn.com',2,'[{\"key\":\"Time spent\",\"value\":\"6h30\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-02 16:18:30'),(227,'proj-00000000048','task-00000000110','Connect 2 Dockers','chau.hm@vinhsangvn.com',1,'','2017-10-02 16:24:39'),(228,'proj-00000000053','task-00000000111','Vivmall.vn document','chau.hm@vinhsangvn.com',1,'','2017-10-03 11:48:50'),(229,'proj-00000000055','task-00000000112','Cargo Warehouse  migration','chau.hm@vinhsangvn.com',1,'','2017-10-05 10:06:06'),(230,'proj-00000000054','task-00000000113','Create database ','chau.hm@vinhsangvn.com',1,'','2017-10-05 10:09:04'),(231,'proj-00000000054','task-00000000114','List products','chau.hm@vinhsangvn.com',1,'','2017-10-05 10:09:43'),(232,'proj-00000000054','task-00000000115','Design new user interface','chau.hm@vinhsangvn.com',1,'','2017-10-05 10:10:28'),(233,'proj-00000000054','task-00000000116','List product detail','chau.hm@vinhsangvn.com',1,'','2017-10-05 10:11:06'),(234,'proj-00000000054','task-00000000117','cart function','chau.hm@vinhsangvn.com',1,'','2017-10-05 10:11:44'),(235,'proj-00000000052','task-00000000118','Design Mid-Autumn banner','chau.hm@vinhsangvn.com',1,'','2017-10-10 09:01:02'),(236,'proj-00000000054','task-00000000119','Payment function','chau.hm@vinhsangvn.com',1,'','2017-10-10 09:02:54'),(237,'proj-00000000054','task-00000000120','Intergrate QR code','chau.hm@vinhsangvn.com',1,'','2017-10-10 09:03:24'),(238,'proj-00000000049','task-00000000121','Fix server HongKong','chau.hm@vinhsangvn.com',1,'','2017-10-10 09:03:57'),(239,'proj-00000000047','task-00000000122','Design banner advertisement in university','chau.hm@vinhsangvn.com',1,'','2017-10-12 08:51:28'),(240,'proj-00000000054','task-00000000123','Payment function','chau.hm@vinhsangvn.com',1,'','2017-10-12 08:52:28'),(241,'proj-00000000054','task-00000000123','Deploy on server','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Description\",\"value\":\"Upload website on server and testing\"},{\"key\":\"Title\",\"value\":\"Deploy on server\"},{\"key\":\"Estimated effort\",\"value\":\"7h0\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-10-12 08:54:02'),(242,'proj-00000000047','task-00000000122','Design banner advertisement in university','hy.t@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-12 08:55:42'),(243,'proj-00000000056','task-00000000124','Mid-Autumn VinhLoc Charity','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:05:36'),(244,'proj-00000000056','task-00000000125','Mid-Autumn VinhLoc Charity','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:05:53'),(245,'proj-00000000047','task-00000000126','Mid-Autumn VinhLoc Charity','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:06:09'),(246,'proj-00000000047','task-00000000127','Mid-Autumn VinhLoc Charity','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:06:27'),(247,'proj-00000000056','task-00000000128','Mid-Autumn VinhLoc Charity','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:06:43'),(248,'proj-00000000056','task-00000000129','Mid-Autumn for orphanage','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:07:55'),(249,'proj-00000000056','task-00000000130','Mid-Autumn for orphanage','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:08:15'),(250,'proj-00000000054','task-00000000113','Create database ','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-12 09:22:29'),(251,'proj-00000000054','task-00000000114','List products','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-12 09:22:53'),(252,'proj-00000000054','task-00000000116','List product detail','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"10h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-12 09:23:10'),(253,'proj-00000000054','task-00000000117','cart function','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"10h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-12 09:23:31'),(254,'proj-00000000054','task-00000000119','Payment function','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"10h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-12 09:24:05'),(255,'proj-00000000052','task-00000000118','Design Mid-Autumn banner','chau.hm@vinhsangvn.com',2,'[{\"key\":\"Estimated effort\",\"value\":\"14h0\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-10-12 09:25:34'),(256,'proj-00000000056','task-00000000131','Find Pin Quotation for Ms Quan\'s Laptop','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:27:15'),(257,'proj-00000000054','task-00000000132','Design index page (front end)','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:31:10'),(258,'proj-00000000054','task-00000000133','Design product page (front end)','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:31:43'),(259,'proj-00000000054','task-00000000134','Design product detail page (front end)','chau.hm@vinhsangvn.com',1,'','2017-10-12 09:32:26'),(260,'proj-00000000054','task-00000000113','Create database ','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Time spent\",\"value\":\"4h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-13 08:14:09'),(261,'proj-00000000054','task-00000000113','Create database ','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Time spent\",\"value\":\"10h0\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-13 08:15:36'),(262,'proj-00000000054','task-00000000134','Design product detail page (front end)','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-16 16:50:42'),(263,'proj-00000000054','task-00000000133','Design product page (front end)','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Status\",\"value\":\"Open\"}]','2017-10-16 16:51:00'),(264,'proj-00000000054','task-00000000133','Design product page (front end)','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-16 16:51:24'),(265,'proj-00000000054','task-00000000132','Design index page (front end)','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-16 16:51:57'),(266,'proj-00000000054','task-00000000115','Design new user interface','tung.pt@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-16 16:52:25'),(267,'proj-00000000049','task-00000000121','Fix server HongKong','duy.vl@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"4h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-17 09:29:24'),(268,'proj-00000000048','task-00000000110','Connect 2 Dockers','duy.vl@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"10\"},{\"key\":\"Time spent\",\"value\":\"8h00\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-10-17 09:30:29'),(269,'proj-00000000054','task-00000000120','Intergrate QR code','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Time spent\",\"value\":\"10h00\"},{\"key\":\"Status\",\"value\":\"Open\"}]','2017-10-17 14:44:18'),(270,'proj-00000000054','task-00000000120','Intergrate QR code','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-17 14:44:39'),(271,'proj-00000000054','task-00000000123','Deploy on server','thoi.bv@vinhsangvn.com',2,'[{\"key\":\"Progress\",\"value\":\"100\"},{\"key\":\"Time spent\",\"value\":\"6h00\"},{\"key\":\"Status\",\"value\":\"Close\"}]','2017-10-17 14:45:07');
/*!40000 ALTER TABLE `tb_recent_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role`
--

DROP TABLE IF EXISTS `tb_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_role` (
  `id` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role`
--

LOCK TABLES `tb_role` WRITE;
/*!40000 ALTER TABLE `tb_role` DISABLE KEYS */;
INSERT INTO `tb_role` VALUES ('ROLE_ADMIN','admin',NULL),('ROLE_EMPLOYEE','employee',NULL),('ROLE_LEAD','lead',NULL),('ROLE_MANAGER','manager department',NULL),('ROLE_REVIEW','review',NULL);
/*!40000 ALTER TABLE `tb_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_task`
--

DROP TABLE IF EXISTS `tb_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_task` (
  `id` varchar(30) NOT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `first_visited_date` date DEFAULT NULL,
  `expect_time` int(9) DEFAULT NULL,
  `spent_time` int(9) DEFAULT NULL,
  `progress` int(3) DEFAULT NULL,
  `task_status` tinyint(1) DEFAULT NULL,
  `project_id` varchar(30) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `modify_user` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `count_visisted` int(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_task`
--

LOCK TABLES `tb_task` WRITE;
/*!40000 ALTER TABLE `tb_task` DISABLE KEYS */;
INSERT INTO `tb_task` VALUES ('task-00000000003','Our People Page ( graphic design)','Our People Page ( graphic design)','hy.t@vinhsangvn.com',NULL,0,0,0,1,'pro-001','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-04-28 11:24:33','2017-04-28 11:42:50',0,0),('task-00000000004','Home Page Layout ( graphic design)','Home Page Layout ( graphic design)','hy.t@vinhsangvn.com',NULL,0,480,100,2,'pro-001','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-04-28 11:25:22','2017-04-28 11:41:33',0,0),('task-00000000005','Contact Us Page (graphic design)','Contact Us Page (graphic design)','hy.t@vinhsangvn.com',NULL,480,488,0,1,'pro-001','chau.hm@vinhsangvn.com',NULL,'2017-04-28 11:44:03',NULL,0,0),('task-00000000006','Home page layout  (html)','Home page layout  (html)','long.nh@vinhsangvn.com',NULL,480,480,100,2,'pro-001','chau.hm@vinhsangvn.com','long.nh@vinhsangvn.com','2017-04-28 11:45:34','2017-04-28 11:49:31',0,0),('task-00000000007','Our People page (html)','Our People page (html)','long.nh@vinhsangvn.com',NULL,480,480,0,1,'pro-001','chau.hm@vinhsangvn.com',NULL,'2017-04-28 11:46:38',NULL,0,0),('task-00000000008','Contact us page (html)','Contact us page (html)','long.nh@vinhsangvn.com',NULL,480,480,0,1,'pro-001','chau.hm@vinhsangvn.com',NULL,'2017-04-28 11:47:40',NULL,0,0),('task-00000000009','Analysize  requirements','Analysize  requirements ','qui.nt@vinhsangvn.com',NULL,900,900,0,1,'proj-00000000016','chau.hm@vinhsangvn.com',NULL,'2017-04-28 11:57:03',NULL,0,0),('task-00000000010','Design database','Design database','qui.nt@vinhsangvn.com',NULL,900,900,0,1,'proj-00000000016','chau.hm@vinhsangvn.com',NULL,'2017-04-28 12:01:35',NULL,0,0),('task-00000000011','Develop  home page','Insert and update information of Home Page','thoi.bv@vinhsangvn.com',NULL,420,420,0,1,'pro-001','chau.hm@vinhsangvn.com',NULL,'2017-04-28 13:59:34',NULL,0,0),('task-00000000012','Develop Our People','Insert and update information of BOD','thoi.bv@vinhsangvn.com',NULL,840,840,0,1,'pro-001','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-04-28 14:00:44','2017-04-28 14:04:31',0,0),('task-00000000013','Develop Contact Us page','Save the information which partner and customer send to system','thoi.bv@vinhsangvn.com',NULL,840,840,100,2,'pro-001','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-04-28 14:02:02','2017-04-28 14:13:59',0,0),('task-00000000014','Surveillance network, email, camera','Checking network\r\nChecking email system\r\nChecking Camera system','duy.vl@vinhsangvn.com',NULL,1200,1200,100,2,'proj-000003','chau.hm@vinhsangvn.com','duy.vl@vinhsangvn.com','2017-04-28 14:08:07','2017-04-28 14:11:41',0,0),('task-00000000015','Design Employee UI','Design Employee UI','long.nh@vinhsangvn.com',NULL,420,420,100,1,'proj-00000000016','chau.hm@vinhsangvn.com',NULL,'2017-04-28 14:28:30',NULL,0,0),('task-00000000016','Design Project UI','Design Project UI','long.nh@vinhsangvn.com',NULL,840,840,0,1,'proj-00000000016','chau.hm@vinhsangvn.com',NULL,'2017-04-28 14:29:03',NULL,0,0),('task-00000000017','Design GC homepage (html)','Design html file for homepage','long.nh@vinhsangvn.com',NULL,360,360,0,1,'proj-00000000020','chau.hm@vinhsangvn.com',NULL,'2017-05-10 16:31:28',NULL,0,0),('task-00000000018','Design Business Operations page','Design Business Operations page','long.nh@vinhsangvn.com',NULL,240,240,0,1,'proj-00000000020','chau.hm@vinhsangvn.com',NULL,'2017-05-10 16:35:02',NULL,0,0),('task-00000000019','345','123213','long.nh@vinhsangvn.com',NULL,270,250,91,1,'proj-00000000021','qui.nt@vinhsangvn.com','qui.nt@vinhsangvn.com','2017-05-30 11:50:13','2017-05-30 11:52:35',0,0),('task-00000000020','Desgin Sale Kit (English Version)','Receive images and content from Ms Truc, Ms Quân and Ms Linh\r\nGet ideal\r\nDesgin Sale Kit (English Version)','hy.t@vinhsangvn.com',NULL,420,430,100,2,'proj-00000000022','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-06-02 10:48:16','2017-06-02 10:52:56',0,0),('task-00000000021','Design Glorious Sale Kit (China Version)','Design Glorious Sale Kit (China Version)','hy.t@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000022','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-06-02 10:54:54','2017-06-06 14:48:47',0,0),('task-00000000022','Move source code in Physical Server1 to physical server 2','Move source code in Physical Server1 to physical server 2','duy.vl@vinhsangvn.com',NULL,300,300,0,1,'proj-00000000025','chau.hm@vinhsangvn.com',NULL,'2017-06-02 11:00:29',NULL,0,0),('task-00000000024','Website Daily Checking ','Daily check these website:\r\nvinhsangvn.com, fas22.vn, tab156.vn, vivmall.vn, vivmall.hk,vivmall.cn, greenbuildingplus.com, gloriouscreationgroup.com, lukselectron.com','tung.pt@vinhsangvn.com',NULL,900,300,26,1,'proj-00000000026','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-06-02 11:31:33','2017-06-13 16:53:23',0,0),('task-00000000025','Android App Daily Checking','Daily check these Android App:\r\nVivmall App\r\nFengshui App','long.nh@vinhsangvn.com',NULL,900,900,0,1,'proj-00000000026','chau.hm@vinhsangvn.com',NULL,'2017-06-02 11:33:08',NULL,0,0),('task-00000000026','Ultilities Daily Checking','Daily check these Ultilities\r\nVinhsangvn.com/fengshui\r\nadv.tab156.vn\r\ntv.tab.156.vn\r\nproduct.tab.156.vn\r\nvalentine.tab156.vn\r\ntab156.vn/event.html\r\nanalytic.tab156.vn','thoi.bv@vinhsangvn.com',NULL,1800,240,11,1,'proj-00000000026','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-06-02 11:36:10','2017-06-06 15:31:30',0,0),('task-00000000027','Application Daily Check','Daily check these application:\r\ncustomer.fas22.vn\r\nIT project Management\r\nLogistic\r\nLogisticCloud\r\nCargo Warehouse Managemtn','qui.nt@vinhsangvn.com',NULL,720,360,34,1,'proj-00000000026','chau.hm@vinhsangvn.com','qui.nt@vinhsangvn.com','2017-06-02 11:38:12','2017-06-13 15:34:07',0,0),('task-00000000028','Netword and Service Daily Checking','Daily check these services:\r\nCamer.tab156.vn\r\nWifilog.tab156.vn\r\nNetwork status\r\nEmail status include  vinsangvn.com and vivmall.vn\r\nMoniroting system Zabbix\r\n','duy.vl@vinhsangvn.com',NULL,1800,1800,0,1,'proj-00000000026','chau.hm@vinhsangvn.com',NULL,'2017-06-02 11:42:23',NULL,0,0),('task-00000000029','Analyze User management','Analyze some functions\r\nUser\r\nUserGroup\r\nRole\r\nPermission','chau.hm@vinhsangvn.com',NULL,240,240,100,2,'proj-00000000024','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-06-02 13:54:58','2017-06-02 14:57:08',0,0),('task-00000000030','Analyze Industry, Category Management','Analyze Industry, Category Management','chau.hm@vinhsangvn.com',NULL,120,120,0,1,'proj-00000000024','chau.hm@vinhsangvn.com',NULL,'2017-06-02 13:58:30',NULL,0,0),('task-00000000031','User Management Database','Create some tables\r\ntb_User\r\ntb_GroupUser\r\ntb_Role\r\ntb_Permission\r\ntb_PhysicalWarehouse','long.nh@vinhsangvn.com',NULL,240,240,0,1,'proj-00000000024','chau.hm@vinhsangvn.com',NULL,'2017-06-02 14:00:48',NULL,0,0),('task-00000000032','Industry and Category Database','Create 2 tables\r\ntb_Industry\r\ntb_Category','long.nh@vinhsangvn.com',NULL,60,60,0,1,'proj-00000000024','chau.hm@vinhsangvn.com',NULL,'2017-06-02 14:04:54',NULL,0,0),('task-00000000033','Set up enviroment to develop','Set up Java, Eclipse, SVN and architecture of CWM','qui.nt@vinhsangvn.com',NULL,180,120,100,2,'proj-00000000024','chau.hm@vinhsangvn.com','qui.nt@vinhsangvn.com','2017-06-02 14:11:37','2017-06-13 15:33:31',0,0),('task-00000000034','Design User Management UI','Form Create new User, Update User Information, Lock','long.nh@vinhsangvn.com',NULL,180,180,0,1,'proj-00000000024','chau.hm@vinhsangvn.com',NULL,'2017-06-02 14:19:29',NULL,0,0),('task-00000000035','Design Industry Management UI','Design form Industry management: Create new Industry, Update industry information, lock industry','long.nh@vinhsangvn.com',NULL,180,180,0,1,'proj-00000000024','chau.hm@vinhsangvn.com',NULL,'2017-06-02 14:22:04',NULL,0,0),('task-00000000036','Set up enviroment for develop','-Tạo  mới tên project \"/vinhsang-full-web-stanalone-v1\"\n-Thiết lập link svn \"http://10.0.10.15/svn2/repo/vinhsangvn.com/vinhsang-full-web-stanalone-v1\"\n-Thiết lập môi trường eclipse\n-Dựng Flow teamplate','qui.nt@vinhsangvn.com',NULL,480,480,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-06-06 10:03:16','2017-06-08 08:46:23',0,0),('task-00000000037','Design Database','-Tạo database \"vinhsang\" 10.0.10.41\n-Tạo table ,thiết  lập quan hệ giữa các table\n\n   ','qui.nt@vinhsangvn.com',NULL,120,120,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-06-06 10:05:53','2017-06-08 08:47:06',0,0),('task-00000000038','Desgin layout for admin page','-Dựng layout mẫu:\n    -Menu:About,Service,Contact,Event,Slide\n    -Form đăng nhạp,đăng xuất\n    -Lựa chọn đa ngôn ngữ.\n    ','qui.nt@vinhsangvn.com',NULL,240,220,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-06-06 10:08:09','2017-06-08 08:47:52',0,0),('task-00000000039','Develop \"About\" page','-Dựng layout cho chức năng.\n-Dựng data flow','qui.nt@vinhsangvn.com',NULL,120,140,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-06-06 10:09:42','2017-06-08 08:49:44',0,0),('task-00000000040','Develop \"Service\"  function','-Phân tích nghiệp vụ.\n-Tính năng đa ngôn ngữ\n-Tạo From thêm ,xóa, sửa,Upload hình ảnh\n-Tạo Grid quản lý  phân trang,cập nhật trạng thái \n-Test chức năng.','qui.nt@vinhsangvn.com',NULL,325,325,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-06-06 10:12:12','2017-06-08 09:01:16',0,0),('task-00000000041','Hỗ trợ khảo sát môi trường dự án','-Phân tích ,Vẽ model data.\r\n-Nghiên cứu tính năng công nghệ JPA,thymleaf\r\n','thoi.bv@vinhsangvn.com',NULL,480,480,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-06-06 10:14:36','2017-06-06 15:30:32',0,0),('task-00000000042','Xây dựng luồng mẫu xuất song ngữ Font-end','-Xây dựng file properties đa ngữ\r\n-Tạo select box lựa chọn ngôn ngữ.\r\n','thoi.bv@vinhsangvn.com',NULL,240,215,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-06-06 10:17:54','2017-06-06 15:30:49',0,0),('task-00000000043','Xây dựng chức năng quản trị \"Slide\"','-Dựng layout chức năng.\r\n-Dựng from thêm ,xóa ,sửa,Upload hình ảnh.\r\n-Dụng Grip quản lý ,cập nhật trạng thái.\r\n-Kiểm tra,test chức năng.','thoi.bv@vinhsangvn.com',NULL,480,360,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-06-06 10:22:14','2017-06-08 16:57:58',0,0),('task-00000000044','Xây dựng chức năng quản trị \"Events\"','-Dựng layout chức năng.\r\n-Dựng From thêm ,xóa ,sửa ,Upload hình ảnh\r\n-Dựng Grid quản lý ,cập nhật trạng thái.\r\n-Kiểm tra và test  lại chức năng.','thoi.bv@vinhsangvn.com',NULL,480,360,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-06-06 10:25:31','2017-06-08 16:58:36',0,0),('task-00000000045','Biểu diễn dữ liệu chức năng About,Slide trên Font end','-Biểu diễn dữ liệu chức năng About,Slide trên Font end','thoi.bv@vinhsangvn.com',NULL,120,120,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-06-06 10:27:30','2017-06-13 16:54:02',0,0),('task-00000000046','Test lại toàn bộ chức năng dự án ','-Kiểm tra cấu trúc Layout.\r\n-Kiểm tra luồng dữ liệu hiển thị.\r\n-Kiểm tra sự kiện nhập xuất thông tin.\r\n-Kiểm tra nghiệp vụ dự án.\r\n-Kiểm tra dữ liệu database .','qui.nt@vinhsangvn.com',NULL,240,240,0,1,'proj-00000000022','chau.hm@vinhsangvn.com',NULL,'2017-06-06 10:31:39',NULL,0,0),('task-00000000047','Deploy dự án','-Xây dựng phương án triển khai.\r\n-Cấu hình dự án.\r\n-Cấu hình Server.\r\n','qui.nt@vinhsangvn.com',NULL,120,120,0,1,'proj-00000000023','chau.hm@vinhsangvn.com',NULL,'2017-06-06 10:32:32',NULL,0,0),('task-00000000048','Xây dựng template HTML trang Index','-Dựng cấu trúc layout\r\n-Dựng header,footer.\r\n-Dựng mẫu body.','tung.pt@vinhsangvn.com',NULL,480,480,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-06-06 10:36:08','2017-06-13 16:52:11',0,0),('task-00000000049','Xây dựng template HTML trang About','-Dựng cấu  trúc trình bày.\r\n-Tinh chỉnh màu sắc,font chữ.','tung.pt@vinhsangvn.com',NULL,120,270,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-06-06 10:38:09','2017-06-13 16:52:24',0,0),('task-00000000050','Xây dựng template HTML biểu diễn slide','-Xây dựng template HTML biểu diễn slide','tung.pt@vinhsangvn.com',NULL,240,240,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-06-06 10:39:26','2017-06-13 16:52:35',0,0),('task-00000000051','Xây dựng template HTML biểu diễn Service','-Trang hiển thị danh sách service có phân trang\r\n-Trang hiển thị chi tiết service \\','chau.hm@vinhsangvn.com',NULL,480,480,0,1,'proj-00000000022','chau.hm@vinhsangvn.com',NULL,'2017-06-06 10:40:47',NULL,0,0),('task-00000000052','Xây dựng template biểu diễn Events','-Trang hiển thị danh sách Event có phân trang\r\n\r\n-Trang hiển thị chi tiết Event .','tung.pt@vinhsangvn.com',NULL,240,220,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-06-06 10:41:48','2017-06-13 16:52:48',0,0),('task-00000000053','Xây dựng template From contact','-Thiết kế trang Contact','tung.pt@vinhsangvn.com',NULL,240,240,0,1,'proj-00000000022','chau.hm@vinhsangvn.com',NULL,'2017-06-06 10:42:29',NULL,0,0),('task-00000000054','Design backdrop for signing ceremony version 1','Design backdrop for signing ceremony version 1','hy.t@vinhsangvn.com',NULL,420,160,100,2,'proj-00000000027','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-06-08 08:58:22','2017-06-08 10:16:54',0,0),('task-00000000055','Design backdrop for signing ceremony version 2','Design backdrop for signing ceremony version 2','hy.t@vinhsangvn.com',NULL,420,160,100,2,'proj-00000000027','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-06-08 08:58:48','2017-06-08 10:17:07',0,0),('task-00000000056','Design backdrop for signing ceremony version 3','Design backdrop for signing ceremony version 3','hy.t@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000027','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-06-08 08:59:16','2017-06-08 16:15:47',0,0),('task-00000000057','Xây dựng layout interface  đa ngôn ngữ','Xây dựng layout interface  đa ngôn ngữ','thoi.bv@vinhsangvn.com',NULL,480,360,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-06-13 16:47:55','2017-06-13 16:54:16',0,0),('task-00000000058','Upload dữ liệu ','-Dữ liệu trang index,slide\n-Dữ liệu trang About\n-Dữ liệu trang Service\n-Dữ liệu trang Event\n','thoi.bv@vinhsangvn.com',NULL,480,120,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-06-13 16:49:13','2017-06-15 08:05:22',0,0),('task-00000000059','Fix lỗi font,màu sắc','Fix lỗi font,màu sắc','tung.pt@vinhsangvn.com',NULL,240,360,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-06-13 16:51:13','2017-06-13 16:52:55',0,0),('task-00000000060','Xây dựng chức năng quản lý user','-Dựng layout grid,Form quản lý\r\n-Thực hiện chức năng thêm xóa sửa','thoi.bv@vinhsangvn.com',NULL,240,240,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-06-15 16:21:17','2017-06-16 08:26:36',0,0),('task-00000000061','Xây dựng chức năng contact','-Xây dựng View LAYOUT\r\n-Xây dựng chức năng send mail.','thoi.bv@vinhsangvn.com',NULL,240,240,100,2,'proj-00000000023','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-06-15 16:21:50','2017-06-16 08:27:26',0,0),('task-00000000062','fix lại giao diện  website vinhsangvn.com(v2)','trang chủ và trang about','tung.pt@vinhsangvn.com',NULL,480,480,100,1,'proj-00000000023','chau.hm@vinhsangvn.com',NULL,'2017-06-26 11:54:56',NULL,0,0),('task-00000000063','Fix render data vinhsang(v2)','trang chủ và trang about','thoi.bv@vinhsangvn.com',NULL,480,480,100,1,'proj-00000000023','chau.hm@vinhsangvn.com',NULL,'2017-06-26 11:55:34',NULL,0,0),('task-00000000064','Design index page (graphic design)','Design index page (graphic design)','hy.t@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000030','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-08-04 10:21:53','2017-08-04 10:35:03',0,0),('task-00000000065','Design  sign up and sign in page (graphic design)','Design  sign up and sign in page (graphic design)','hy.t@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000030','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-08-04 10:23:45','2017-08-04 10:35:30',0,0),('task-00000000066','Design Product list page (graphic design)','Design Product list page (graphic design)','hy.t@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000030','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-08-04 10:25:13','2017-08-04 10:35:53',0,0),('task-00000000067','Desgin product detail (graphic design)','Desgin product detail (graphic design)','hy.t@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000030','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-08-04 10:26:09','2017-09-27 14:56:41',0,0),('task-00000000068','Analyze and desgin databse','','qui.nt@vinhsangvn.com',NULL,1260,1260,0,1,'proj-00000000030','chau.hm@vinhsangvn.com',NULL,'2017-08-04 10:27:37',NULL,0,0),('task-00000000069','Add Product code','Add Product code which help to connect with Accountant Software\'s Ms Phuong','qui.nt@vinhsangvn.com',NULL,240,240,0,1,'proj-00000000029','chau.hm@vinhsangvn.com',NULL,'2017-08-04 10:29:55',NULL,0,0),('task-00000000070','Solve mailserver issue','lock and fix mailbox of Ms Hien\r\nlock and fix mailbox of Ms Hien','duy.vl@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000031','chau.hm@vinhsangvn.com','duy.vl@vinhsangvn.com','2017-08-04 10:39:15','2017-08-04 10:42:32',0,0),('task-00000000071','Install firewall','Install firewall','duy.vl@vinhsangvn.com',NULL,840,960,100,2,'proj-00000000031','chau.hm@vinhsangvn.com','duy.vl@vinhsangvn.com','2017-08-04 10:41:17','2017-08-04 10:42:05',0,0),('task-00000000072','Research Node.js technology','Research Node.js technology','long.nh@vinhsangvn.com',NULL,1200,1200,100,2,'proj-00000000030','chau.hm@vinhsangvn.com','long.nh@vinhsangvn.com','2017-08-04 10:49:01','2017-08-04 10:52:23',0,0),('task-00000000073','Design index page (html design)','Research Node.js technology','long.nh@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000030','chau.hm@vinhsangvn.com','long.nh@vinhsangvn.com','2017-08-04 10:49:41','2017-08-04 10:52:43',0,0),('task-00000000074','Design sign up and sign in (html Design)','Design sign up and sign in (html Design)','tung.pt@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000030','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-08-04 10:50:39','2017-09-27 15:05:23',0,0),('task-00000000075','Build mail policies','Build mail policies','duy.vl@vinhsangvn.com',NULL,600,600,0,1,'proj-00000000031','chau.hm@vinhsangvn.com',NULL,'2017-08-07 10:36:49',NULL,0,0),('task-00000000076','Analyze and create database for Inventory','Create database for Inventory','qui.nt@vinhsangvn.com',NULL,420,420,0,1,'proj-00000000029','chau.hm@vinhsangvn.com',NULL,'2017-08-07 10:40:18',NULL,0,0),('task-00000000077','Coding inventory function by average calculation method','Coding inventory function by average calculation method','qui.nt@vinhsangvn.com',NULL,840,840,0,1,'proj-00000000029','chau.hm@vinhsangvn.com',NULL,'2017-08-07 10:41:59',NULL,0,0),('task-00000000078','Report inventory by quantity','Report inventory by quantity','qui.nt@vinhsangvn.com',NULL,420,420,0,1,'proj-00000000029','chau.hm@vinhsangvn.com',NULL,'2017-08-07 10:42:50',NULL,0,0),('task-00000000079','Install Ubuntu 16.04','Install Ubuntu 16.04 (2 server)','duy.vl@vinhsangvn.com',NULL,420,420,0,1,'proj-00000000032','chau.hm@vinhsangvn.com',NULL,'2017-08-10 10:03:56',NULL,0,0),('task-00000000080','Install prequisites for Hyperledger','Include 4 elements:\r\ncUrl\r\nDocker and Docker Compose\r\nGo Programming Language\r\nNode.js Runtime and NPM','duy.vl@vinhsangvn.com',NULL,420,420,0,1,'proj-00000000032','chau.hm@vinhsangvn.com',NULL,'2017-08-10 10:06:20',NULL,0,0),('task-00000000081','Design Autumn Standee','Design Autumn Standee','hy.t@vinhsangvn.com',NULL,600,600,100,2,'proj-00000000040','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-09-26 10:02:53','2017-09-26 10:05:24',0,0),('task-00000000082','Design banner Middle-Autumn','Design banner Middle-Autumn','hy.t@vinhsangvn.com',NULL,600,600,100,2,'proj-00000000040','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-09-26 10:03:43','2017-09-26 10:05:02',0,0),('task-00000000083','Take and design product images','Take and design product images (new products)','hy.t@vinhsangvn.com',NULL,600,600,0,1,'proj-00000000038','chau.hm@vinhsangvn.com',NULL,'2017-09-26 10:08:55',NULL,0,0),('task-00000000084','Fix and upload content Glorious web (client UI)','Fix and upload content Glorious web (client UI)','thoi.bv@vinhsangvn.com',NULL,720,720,100,2,'proj-00000000042','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-09-26 10:14:03','2017-09-26 10:15:31',0,0),('task-00000000085','Fix and upload content Glorious (Admin UI)','Fix and upload content Glorious (Admin UI)','qui.nt@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000042','chau.hm@vinhsangvn.com','qui.nt@vinhsangvn.com','2017-09-26 10:14:43','2017-09-27 15:00:51',0,0),('task-00000000086','Design promotion leaflet','Design promotion leaflet for new products and products which serve for pet','hy.t@vinhsangvn.com',NULL,840,840,0,1,'proj-00000000034','chau.hm@vinhsangvn.com',NULL,'2017-09-26 10:19:01',NULL,0,0),('task-00000000087','Training and support Ms Hiền','Support Ms Hien modify data, add warehouse and export inventory report','qui.nt@vinhsangvn.com',NULL,600,600,0,1,'proj-00000000037','chau.hm@vinhsangvn.com','qui.nt@vinhsangvn.com','2017-09-27 14:21:42','2017-09-27 14:58:59',0,0),('task-00000000088','Design Standee and Banner','Design Standee and Banner','hy.t@vinhsangvn.com',NULL,840,840,100,2,'proj-00000000040','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-09-27 14:30:08','2017-09-27 14:57:23',0,0),('task-00000000089','Build Application with Hyperledge Composer','Build Application with Hyperledge Composer','qui.nt@vinhsangvn.com',NULL,1260,1260,100,2,'proj-00000000041','chau.hm@vinhsangvn.com','qui.nt@vinhsangvn.com','2017-09-27 14:31:25','2017-09-27 14:59:32',0,0),('task-00000000090','Research network for Blockchain','Research network for Blockchain','duy.vl@vinhsangvn.com',NULL,840,840,0,1,'proj-00000000041','chau.hm@vinhsangvn.com','duy.vl@vinhsangvn.com','2017-09-27 14:33:43','2017-09-27 15:02:05',0,0),('task-00000000091','Write document','Write document','thoi.bv@vinhsangvn.com',NULL,1260,900,100,2,'proj-00000000041','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-09-27 14:34:30','2017-09-27 14:52:34',0,0),('task-00000000092','Fix and upload content','Fix and upload content: slide, contact...','thoi.bv@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000042','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-09-27 14:35:48','2017-09-27 14:54:14',0,0),('task-00000000093','UI for Our Activities function','UI for Our Activities function','tung.pt@vinhsangvn.com',NULL,840,840,100,2,'proj-00000000042','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-09-27 14:36:43','2017-09-27 15:04:18',0,0),('task-00000000094','Our Activities function (Admin)','Our Activities function (Admin)','qui.nt@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000042','chau.hm@vinhsangvn.com','qui.nt@vinhsangvn.com','2017-09-27 14:37:22','2017-09-27 15:00:25',0,0),('task-00000000095','Our Activities function (Client)','Our Activities function (Client)','thoi.bv@vinhsangvn.com',NULL,420,420,0,1,'proj-00000000042','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-09-27 14:38:31','2017-09-27 14:53:36',0,0),('task-00000000096','Upload the content of \"our people\" function','Upload the content of \"our people\" function','thoi.bv@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000042','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-09-27 14:41:07','2017-09-27 14:53:06',0,0),('task-00000000097','Trainning and support Business team','Trainning and support Business team upload new products','thoi.bv@vinhsangvn.com',NULL,840,720,100,2,'proj-00000000043','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-09-27 14:42:03','2017-09-27 14:54:42',0,0),('task-00000000098','Support test new products','Support Business team test new products (12 products)','tung.pt@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000043','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-09-27 14:43:14','2017-09-27 15:04:52',0,0),('task-00000000099','Desgin leaflet','Desgin leaflet','hy.t@vinhsangvn.com',NULL,840,840,100,2,'proj-00000000043','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-09-27 14:44:04','2017-09-27 14:58:08',0,0),('task-00000000100','Take and design new products','Take and desig  new product photos','hy.t@vinhsangvn.com',NULL,840,840,100,2,'proj-00000000030','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-09-27 14:45:25','2017-09-27 14:56:03',0,0),('task-00000000101','Add QR code function','Add QR code function','qui.nt@vinhsangvn.com',NULL,840,840,0,1,'proj-00000000043','chau.hm@vinhsangvn.com',NULL,'2017-09-27 14:45:59',NULL,0,0),('task-00000000102','Check system and network','Check Camera, service, network','duy.vl@vinhsangvn.com',NULL,1800,1800,100,2,'proj-00000000044','chau.hm@vinhsangvn.com','duy.vl@vinhsangvn.com','2017-09-27 14:48:56','2017-09-27 15:02:31',0,0),('task-00000000103','Check Software and website status','Check Software and website status','thoi.bv@vinhsangvn.com',NULL,900,900,100,2,'proj-00000000045','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-09-27 14:50:11','2017-09-27 14:55:07',0,0),('task-00000000104','Check Software and website status','Check Software and website status','tung.pt@vinhsangvn.com',NULL,900,900,0,1,'proj-00000000045','chau.hm@vinhsangvn.com',NULL,'2017-09-27 14:50:33',NULL,0,0),('task-00000000105','Check Ultilities and mobile application','Check Ultilities and mobile application','qui.nt@vinhsangvn.com',NULL,1200,1200,0,1,'proj-00000000046','chau.hm@vinhsangvn.com','qui.nt@vinhsangvn.com','2017-09-27 14:51:18','2017-09-27 15:01:18',0,0),('task-00000000106','Research Docker, Golang and concept','Research Docker, Golang and concept about Blockchai','qui.nt@vinhsangvn.com',NULL,2100,2100,100,2,'proj-00000000041','chau.hm@vinhsangvn.com','qui.nt@vinhsangvn.com','2017-09-27 15:11:44','2017-09-27 15:13:24',0,0),('task-00000000107','Design namecared Glorious Vietnam','Design namecared Glorious Vietnam 2 version','hy.t@vinhsangvn.com',NULL,840,390,100,2,'proj-00000000047','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-10-02 10:39:12','2017-10-02 16:18:05',0,0),('task-00000000108','Set  up mail server','Setup  gloriouscreationgroup.com mail server','duy.vl@vinhsangvn.com',NULL,840,990,100,2,'proj-00000000052','chau.hm@vinhsangvn.com','duy.vl@vinhsangvn.com','2017-10-02 11:56:34','2017-10-02 16:17:37',0,0),('task-00000000109','Design backdrop in Damsen Office','Design backdrop in Damsen Office','hy.t@vinhsangvn.com',NULL,420,390,100,2,'proj-00000000047','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-10-02 16:09:55','2017-10-02 16:18:30',0,0),('task-00000000110','Connect 2 Dockers','Connect 2 Dockers','duy.vl@vinhsangvn.com',NULL,1260,480,10,1,'proj-00000000048','chau.hm@vinhsangvn.com','duy.vl@vinhsangvn.com','2017-10-02 16:24:39','2017-10-17 09:30:29',0,0),('task-00000000111','Vivmall.vn document','list functions\r\nWorkflow','thoi.bv@vinhsangvn.com',NULL,420,420,0,1,'proj-00000000053','chau.hm@vinhsangvn.com',NULL,'2017-10-03 11:48:50',NULL,0,0),('task-00000000112','Cargo Warehouse  migration','migate  cargo from Warehouse A to Warehouse B','qui.nt@vinhsangvn.com',NULL,840,840,0,1,'proj-00000000055','chau.hm@vinhsangvn.com',NULL,'2017-10-05 10:06:06',NULL,0,0),('task-00000000113','Create database ','Create database ','thoi.bv@vinhsangvn.com',NULL,600,600,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-10-05 10:09:04','2017-10-13 08:15:36',0,0),('task-00000000114','List products','List products','thoi.bv@vinhsangvn.com',NULL,600,600,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-10-05 10:09:43','2017-10-12 09:22:53',0,0),('task-00000000115','Design new user interface','Design new user interface','tung.pt@vinhsangvn.com',NULL,1800,1800,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-10-05 10:10:28','2017-10-16 16:52:25',0,0),('task-00000000116','List product detail','List product detail','thoi.bv@vinhsangvn.com',NULL,420,600,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-10-05 10:11:06','2017-10-12 09:23:10',0,0),('task-00000000117','cart function','cart function','thoi.bv@vinhsangvn.com',NULL,840,600,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-10-05 10:11:44','2017-10-12 09:23:31',0,0),('task-00000000118','Design Mid-Autumn banner','Mid-Autum for employee\r\nMid-Autumn for children\r\nMid-Autumn for elder people','hy.t@vinhsangvn.com',NULL,840,420,0,1,'proj-00000000052','chau.hm@vinhsangvn.com','chau.hm@vinhsangvn.com','2017-10-10 09:01:02','2017-10-12 09:25:34',0,0),('task-00000000119','Payment function','Payment function','thoi.bv@vinhsangvn.com',NULL,1260,600,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-10-10 09:02:54','2017-10-12 09:24:05',0,0),('task-00000000120','Intergrate QR code','Intergrate QR code','thoi.bv@vinhsangvn.com',NULL,840,600,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-10-10 09:03:24','2017-10-17 14:44:39',0,0),('task-00000000121','Fix server HongKong','','duy.vl@vinhsangvn.com',NULL,840,240,100,2,'proj-00000000049','chau.hm@vinhsangvn.com','duy.vl@vinhsangvn.com','2017-10-10 09:03:57','2017-10-17 09:29:24',0,0),('task-00000000122','Design banner advertisement in university','Design banner advertisement in university','hy.t@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000047','chau.hm@vinhsangvn.com','hy.t@vinhsangvn.com','2017-10-12 08:51:28','2017-10-12 08:55:42',0,0),('task-00000000123','Deploy on server','Upload website on server and testing','thoi.bv@vinhsangvn.com',NULL,420,360,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','thoi.bv@vinhsangvn.com','2017-10-12 08:52:28','2017-10-17 14:45:07',0,0),('task-00000000124','Mid-Autumn VinhLoc Charity','Mid-Autumn VinhLoc Charity','duy.vl@vinhsangvn.com',NULL,240,240,0,1,'proj-00000000056','chau.hm@vinhsangvn.com',NULL,'2017-10-12 09:05:36',NULL,0,0),('task-00000000125','Mid-Autumn VinhLoc Charity','Mid-Autumn VinhLoc Charity','hy.t@vinhsangvn.com',NULL,240,240,0,1,'proj-00000000056','chau.hm@vinhsangvn.com',NULL,'2017-10-12 09:05:53',NULL,0,0),('task-00000000126','Mid-Autumn VinhLoc Charity','Mid-Autumn VinhLoc Charity','qui.nt@vinhsangvn.com',NULL,240,240,0,1,'proj-00000000047','chau.hm@vinhsangvn.com',NULL,'2017-10-12 09:06:09',NULL,0,0),('task-00000000127','Mid-Autumn VinhLoc Charity','Mid-Autumn VinhLoc Charity','thoi.bv@vinhsangvn.com',NULL,240,240,0,1,'proj-00000000047','chau.hm@vinhsangvn.com',NULL,'2017-10-12 09:06:27',NULL,0,0),('task-00000000128','Mid-Autumn VinhLoc Charity','Mid-Autumn VinhLoc Charity','tung.pt@vinhsangvn.com',NULL,240,240,0,1,'proj-00000000056','chau.hm@vinhsangvn.com',NULL,'2017-10-12 09:06:43',NULL,0,0),('task-00000000129','Mid-Autumn for orphanage','Mid-Autumn for orphanage','thoi.bv@vinhsangvn.com',NULL,180,180,0,1,'proj-00000000056','chau.hm@vinhsangvn.com',NULL,'2017-10-12 09:07:55',NULL,0,0),('task-00000000130','Mid-Autumn for orphanage','Mid-Autumn for orphanage','tung.pt@vinhsangvn.com',NULL,180,180,0,1,'proj-00000000056','chau.hm@vinhsangvn.com',NULL,'2017-10-12 09:08:15',NULL,0,0),('task-00000000131','Find Pin Quotation for Ms Quan\'s Laptop','Find Pin Quotation for Ms Quan\'s Laptop','tung.pt@vinhsangvn.com',NULL,120,120,0,1,'proj-00000000056','chau.hm@vinhsangvn.com',NULL,'2017-10-12 09:27:15',NULL,0,0),('task-00000000132','Design index page (front end)','Design index page (front end)','tung.pt@vinhsangvn.com',NULL,1200,1200,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-10-12 09:31:10','2017-10-16 16:51:57',0,0),('task-00000000133','Design product page (front end)','Design product page (front end)','tung.pt@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-10-12 09:31:43','2017-10-16 16:51:24',0,0),('task-00000000134','Design product detail page (front end)','Design product detail page (front end)','tung.pt@vinhsangvn.com',NULL,420,420,100,2,'proj-00000000054','chau.hm@vinhsangvn.com','tung.pt@vinhsangvn.com','2017-10-12 09:32:26','2017-10-16 16:50:42',0,0);
/*!40000 ALTER TABLE `tb_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_task_status`
--

DROP TABLE IF EXISTS `tb_task_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_task_status` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `html_display` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_task_status`
--

LOCK TABLES `tb_task_status` WRITE;
/*!40000 ALTER TABLE `tb_task_status` DISABLE KEYS */;
INSERT INTO `tb_task_status` VALUES (1,'Open','Open','Open'),(2,'Close','Close','Close');
/*!40000 ALTER TABLE `tb_task_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `positon` varchar(45) DEFAULT NULL,
  `user_role` varchar(15) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES ('chau.hm@vinhsangvn.com','123456','Huynh Minh Chau','0916772477','dept-001','manager','ROLE_MANAGER',1,'2015-04-18 00:00:00','u1@gmail.com'),('duy.vl@vinhsangvn.com','123456','Voong Ly Duy',NULL,'dept-001','leader','ROLE_EMPLOYEE',1,'2015-04-18 00:00:00','u1@gmail.com'),('hy.t@vinhsangvn.com','123456','Tran Hy',NULL,'dept-001','employee','ROLE_EMPLOYEE',1,'2015-04-18 00:00:00','u1@gmail.com'),('long.nh@vinhsangvn.com','123456','Ngo Hoang Long',NULL,'dept-001','employee','ROLE_EMPLOYEE',0,'2015-04-18 00:00:00','u1@gmail.com'),('qui.nt@vinhsangvn.com','123456','Nguyen Thanh Qui',NULL,'dept-001','leader','ROLE_EMPLOYEE',1,'2015-04-18 00:00:00','u1@gmail.com'),('review@gmail.com','123456','gg',NULL,'dept-00000000008','review','ROLE_REVIEW',1,'2015-04-18 00:00:00','u1@gmail.com'),('thoi.bv@vinhsangvn.com','123456','Bong Van Thoi',NULL,'dept-001','employee','ROLE_EMPLOYEE',1,'2015-04-18 00:00:00','u1@gmail.com'),('tung.pt@vinhsangvn.com','123456','Phan Thanh Tung',NULL,'dept-001','employee','ROLE_EMPLOYEE',1,'2017-06-01 00:00:00','u1@gmail.com'),('u1@gmail.com','123456','u1','0120120','dept-001','admin','ROLE_ADMIN',1,'2015-04-18 00:00:00','u1@gmail.com');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'itjobdb'
--
/*!50003 DROP FUNCTION IF EXISTS `getNextCustomSeq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` FUNCTION `getNextCustomSeq`(
    sSeqName VARCHAR(50),
    sSeqGroup VARCHAR(10)
) RETURNS varchar(20) CHARSET utf8
BEGIN
    DECLARE nLast_val INT; 
 
    SET nLast_val =  (SELECT seq_val
                          FROM _sequence
                          WHERE seq_name = sSeqName
                                AND seq_group = sSeqGroup);
    IF nLast_val IS NULL THEN
        SET nLast_val = 1;
        INSERT INTO _sequence (seq_name,seq_group,seq_val)
        VALUES (sSeqName,sSeqGroup,nLast_Val);
    ELSE
        SET nLast_val = nLast_val + 1;
        UPDATE _sequence SET seq_val = nLast_val
        WHERE seq_name = sSeqName AND seq_group = sSeqGroup;
    END IF; 
 
    SET @ret = (SELECT concat(sSeqGroup,'-',lpad(nLast_val,11,'0')));
    RETURN @ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SPLIT_STR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` FUNCTION `SPLIT_STR`(
  x VARCHAR(255),
  delim VARCHAR(12),
  pos INT
) RETURNS varchar(255) CHARSET utf8
RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
       LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
       delim, '') ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getMax_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_getMax_order`(
in _tbName VARCHAR(50),
out v int
)
BEGIN
	DECLARE max_val INT;
  declare p_query varchar(2000);
  	set p_query= concat(' SELECT  MAX(`order`) into @newVal  FROM ', _tbName );
	set @s = p_query;
	  PREPARE stmt2  FROM @s;
      execute stmt2 ;
      DEALLOCATE PREPARE stmt2;
      set max_val =  @newVal;
 IF max_val IS NULL THEN
        SET max_val = 1;
    ELSE
        SET max_val = max_val + 1;
    END IF; 
 
    SET v =max_val;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_task_by_empl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_get_task_by_empl`(
	in p_dept_id varchar(10),
    in p_empl_id varchar(10),
    in p_task_from varchar(10),
    in p_taks_to varchar(10)
)
BEGIN
if p_empl_id='all' then
	SELECT task_date,t.empl_id, e.empl_firstname,e.empl_lastname, p.proj_id,p.proj_name,task_start_time,task_end_time, sum(total_hour) as totalhours 
	FROM itprojectdb.tb_task as t,tb_project as p,tb_employee as e
	where t.proj_id=p.proj_id  and task_date>p_task_from and task_date <p_taks_to and t.empl_id=e.empl_id  and t.empl_id in
    (select empl_id from tb_employee where dept_id =p_dept_id)
	group by t.empl_id,proj_id,task_date;

	
 
    else
    SELECT task_date,t.empl_id, e.empl_firstname,e.empl_lastname, p.proj_id,p.proj_name,task_start_time,task_end_time, sum(total_hour) as totalhours 
	FROM itprojectdb.tb_task as t,tb_project as p,tb_employee as e
	where t.proj_id=p.proj_id and t.empl_id =p_empl_id and task_date>p_task_from and task_date <p_taks_to and t.empl_id=e.empl_id
	group by proj_id,task_date;
    
  end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_department` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_insert_department`(
	out f int,
    in p_order varchar(3),
    in p_dept_id varchar(10),
    in p_dept_name varchar(50),
    in p_dept_des  varchar(200),
    in p_dept_manager  varchar(100),
	in p_dept_visible  bit(1)
    
)
L_return:
BEGIN
   /*f= 0 khong lam gi het*/
   /*f=1 thuc thi thanh cong*/
	declare _rollback bool default false;
    declare continue handler  for sqlexception set _rollback  = true ;
    set f = 0;
    start transaction;
	INSERT INTO `tb_department`
	(`order`,
	`dept_id`,
	`dept_name`,
	`dept_des`,
	`dept_manager`,
    `dept_visible`)
	VALUES
	(p_order,
	p_dept_id,
    p_dept_name,
    p_dept_des,
    p_dept_manager,
    p_dept_visible    
    );
    if (_rollback)
	then 
		rollback ;
		set f = 0;
	else 
		commit;
		set f = 1;  
    
	end if; 	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_project` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_insert_project`(
	out f int,
    in p_order varchar(3),
    in p_proj_id varchar(10),
    in p_proj_name varchar(100),
    in p_proj_des  varchar(200),
    in p_proj_start_date  varchar(10),
    in p_proj_expect_date  varchar(10),
    in p_proj_end_date  varchar(10),
     in p_proj_manager  varchar(100),
     in p_proj_visible bit(1)
)
L_return:
BEGIN
   /*f= 0 khong lam gi het*/
   /*f=1 thuc thi thanh cong*/
	declare _rollback bool default false;
    declare continue handler  for sqlexception set _rollback  = true ;
    set f = 0;
    start transaction;
	INSERT INTO `tb_project`
	(`order`,
	`proj_id`,
	`proj_name`,
	`proj_des`,
	`proj_start_date`,
	`proj_expect_date`,
	`proj_end_date`,
    `proj_manager`,
    `proj_visible`
    )
	VALUES
	(p_order,
	p_proj_id,
    p_proj_name,
    p_proj_des,
    p_proj_start_date,
    p_proj_expect_date,
    p_proj_end_date,
    p_proj_manager,
    p_proj_visible
    );
    if (_rollback)
	then 
		rollback ;
		set f = 0;
	else 
		commit;
		set f = 1;  
    
	end if; 	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_task` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_insert_task`(
	out f int,
    in p_order varchar(3),
    in p_task_name varchar(100),
   	in p_task_des varchar(100),
    in p_task_date varchar(100),
    in p_proj_id  varchar(10),
    in p_empl_id  varchar(10),
    in p_task_start_time  varchar(10),
    in p_task_expect_time  varchar(10),
	in p_task_end_time  varchar(10),
    in p_total_hour float
)
L_return:
BEGIN
   /*f= 0 khong lam gi het*/
   /*f=1 thuc thi thanh cong*/
	declare _rollback bool default false;
    declare continue handler  for sqlexception set _rollback  = true ;
    set f = 0;
    start transaction;
	INSERT INTO `tb_task`
	(`order`,
	 `task_name`,
	`task_des`,
    `task_date`,
	`proj_id`,
	`empl_id`,
	`task_start_time`,
    `task_expect_time`,
	`task_end_time`,
    `total_hour`
    )
	VALUES
	(p_order,
    p_task_name,
    p_task_des,
    p_task_date,
    p_proj_id,
    p_empl_id,
    p_task_start_time,
    p_task_expect_time,
	p_task_end_time,
    p_total_hour
    );
    if (_rollback)
	then 
		rollback ;
		set f = 0;
	else 
		commit;
		set f = 1;  
    
	end if; 	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_update_member_project` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_insert_update_member_project`(
 in p_str_member VARCHAR(255),
 in p_project_id varchar(30),
 in p_create_user varchar(50),
 in p_sqltype varchar(2)
)
BEGIN
      DECLARE a INT Default 0 ;
      DECLARE str VARCHAR(255);
      if(p_sqltype='A')
		then
					  simple_loop: LOOP
						 SET a=a+1;
						 SET str=SPLIT_STR(p_str_member,"_",a);
						 IF str='' THEN
							LEAVE simple_loop;
						 END IF;
						 #Do Inserts into temp table here with str going into the row
						 INSERT INTO `tb_employees_project`
										(`project_id`,
										`user_id`,
										`create_date`,
										`create_user`)
										VALUES
										(p_project_id,
										str,
										now(),
										p_create_user);
				   END LOOP simple_loop;
		end if;
        
		if(p_sqltype='E')
		then
        
				Delete from tb_employees_project where project_id=p_project_id;
					  simple_loop: LOOP
						 SET a=a+1;
						 SET str=SPLIT_STR(p_str_member,"_",a);
						 IF str='' THEN
							LEAVE simple_loop;
						 END IF;
						 #Do Inserts into temp table here with str going into the row
						 INSERT INTO `tb_employees_project`
										(`project_id`,
										`user_id`,
										`create_date`,
										`create_user`)
										VALUES
										(p_project_id,
										str,
										now(),
										p_create_user);
				   END LOOP simple_loop;
		end if;
      
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_project_statstics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_project_statstics`(
in p_project_id varchar(50)
)
BEGIN
		set @contributors=0;
        set @itemcompletion=0;
		select id,name,description,	date_format(start_date,'%Y-%m-%d') as start_date, date_format(end_date,'%Y-%m-%d') as end_date 
        into @id ,@name,@description,@start_date,@end_date
        from tb_project where id= p_project_id;
        
        select count(*) into @contributors
        from tb_employees_project where project_id=p_project_id;
        
        
        select sum(expect_time) into @total_expect
        from tb_task where project_id=p_project_id;
        
         select sum(expect_time),sum(spent_time)
         into @complete_expect,@total_spent
        from tb_task where project_id=p_project_id and task_status=2;
        
        set @itemcompletion=CEIL((@complete_expect/@total_expect)*100);
        
        if @contributors IS NULL then set @projects=0; set @contributors=0;  end if;
           if @itemcompletion IS NULL then set @tasks=0;set @itemcompletion=0; end if ;
              if @total_spent IS NULL then set @opened_tasks=0; set @total_spent=0 ; end if;
            
            
         select @id as id,@name as name,@description as description,@start_date as start_date,
				@end_date as end_date ,@contributors as contributors,@itemcompletion as itemcompletion,
                @total_spent as total_spent;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_report_from1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_report_from1`(
in p_fromdate datetime,
in p_todate datetime,
in p_dept_id varchar(30),
in p_employee varchar(50)
)
BEGIN

SELECT t1.project_id,t2.name as project_name ,t1.employee_id,
t1.id as task_id,t1.title as task_title,t1.employee_id ,
t1.spent_time,t1.create_date,t1.modify_date
FROM tb_task t1,tb_project t2
 where t1.task_status=2 and t1.project_id=t2.id  and t2.dept_id=p_dept_id and t1.employee_id= p_employee
and t1.create_date >=p_fromdate and t1.create_date <=p_todate
and t1.modify_date >=p_fromdate  and t1.modify_date <=p_todate
 order by t1.project_id asc
 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_report_from2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_report_from2`(
in p_fromdate datetime,
in p_todate datetime,
in p_projectid varchar(50)
)
BEGIN
SELECT t1.project_id,t2.name as project_name ,
t1.id as task_id,t1.title as task_title,t1.employee_id ,
t1.spent_time,t1.create_date,t1.modify_date
FROM tb_task t1,tb_project t2
 where task_status=2 and t1.project_id=t2.id and t1.project_id=p_projectid
and t1.create_date >=p_fromdate and t1.create_date <=p_todate
and t1.modify_date >=p_fromdate  and t1.modify_date <=p_todate
 order by t1.employee_id asc
 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_report_from3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_report_from3`(
in p_fromdate datetime,
in p_todate datetime,
in p_dept_id varchar(30)
)
BEGIN

SELECT t1.project_id,t2.name as project_name ,
t1.id as task_id,t1.title as task_title,t1.employee_id ,
t1.spent_time,t1.create_date,t1.modify_date
FROM tb_task t1,tb_project t2
 where task_status=2 and t1.project_id=t2.id  and t2.dept_id=p_dept_id 
and t1.create_date >=p_fromdate and t1.create_date <=p_todate
and t1.modify_date >=p_fromdate  and t1.modify_date <=p_todate
 order by t1.project_id asc
 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_setCustomVal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_setCustomVal`(sSeqName VARCHAR(50),  
              sSeqGroup VARCHAR(10), nVal INT UNSIGNED)
BEGIN
    IF (SELECT COUNT(*) FROM _sequence  
            WHERE seq_name = sSeqName  
                AND seq_group = sSeqGroup) = 0 THEN
        INSERT INTO _sequence (seq_name,seq_group,seq_val)
        VALUES (sSeqName,sSeqGroup,nVal);
    ELSE
        UPDATE _sequence SET seq_val = nVal
        WHERE seq_name = sSeqName AND seq_group = sSeqGroup;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_department_add_edit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_department_add_edit`(
in p_sqltype varchar(10),
in p_dept_id varchar(20),
in p_dept_name varchar(50),
in p_dept_des varchar(200),
in p_dept_manager varchar(50),
	out p_return_code int,
	OUT p_return_message varchar(100),
	OUT p_fullerror varchar(255)
)
L_return:
BEGIN
DECLARE exit handler for sqlexception 
	  BEGIN
	  GET DIAGNOSTICS CONDITION 1 @sqlstate1 = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text1 = MESSAGE_TEXT; 
		SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate1, "): ", @text1); 
		-- ERROR
		set p_return_code = @errno;
		set p_return_message='System exception!';
		set p_fullerror=@full_error ;
		rollback;
	  END;

	  DECLARE exit handler for sqlwarning
	  BEGIN
		-- WARNING
		set p_return_code =  2;
	    set p_return_message='SQL warning';
		set p_fullerror='MYSQL warning' ;
		rollback;
	  END;
    
    start transaction;
		if(p_sqltype='A')
        then
			 SET @id=getNextCustomSeq('dept_id','dept');
			 set @v = 0;
			 call sp_getMax_order('tb_department', @v);
				
                INSERT INTO `tb_department`
				(`order`,
				`dept_id`,
				`dept_name`,
				`dept_des`,
				`dept_manager_user`,
				`dept_visible`)
				VALUES
				(@v,
				@id,
				p_dept_name,
				p_dept_des,
				p_dept_manager,
				1);
				set p_return_code =0;
				set p_return_message='Thêm mới thành công !';
				set p_fullerror='none' ;
                
		ELSEIF(p_sqltype='E')
        then
			UPDATE `tb_department`
				SET
				`dept_name` = p_dept_name,
				`dept_des` = p_dept_des,
				`dept_manager_user` = p_dept_manager
				WHERE `dept_id` = p_dept_id;

            	set p_return_code =0;
				set p_return_message=concat('Cập nhật thành công  `',p_dept_id,'`');
				set p_fullerror='none' ;
         ELSE
				set p_return_code =3;
				set p_return_message='Thực thi không hợp lệ! ';
				set p_fullerror=concat('Thực thi không hợp lệ! `',p_sqltype,'`'); 
		end if;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_employee_add_edit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_employee_add_edit`(
	out p_return_code int,
	OUT p_return_message varchar(100),
	OUT p_fullerror varchar(255),
    in p_sqltype varchar(10),
    in p_empl_id varchar(20),
    in p_empl_firstname varchar(50),
    in p_empl_lastname  varchar(100),
    in p_empl_position  varchar(100),
    in p_empl_birthday  varchar(10),
    in p_dept_id  varchar(10)
)
L_return:
BEGIN
   /*f= 0 khong lam gi het*/
   /*f=1 thuc thi thanh cong*/
	declare _rollback bool default 0;
  
	DECLARE exit handler for sqlexception 
	  BEGIN
	  GET DIAGNOSTICS CONDITION 1 @sqlstate1 = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text1 = MESSAGE_TEXT; 
		SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate1, "): ", @text1); 
		-- ERROR
		set p_return_code = @errno;
		set p_return_message='System exception!';
		set p_fullerror=@full_error ;
		rollback;
	  END;

	  DECLARE exit handler for sqlwarning
	  BEGIN
		-- WARNING
		set p_return_code =  2;
	    set p_return_message='SQL warning';
		set p_fullerror='MYSQL warning' ;
		rollback;
	  END;
    
    start transaction;
		if(p_sqltype='A')
        then
			 SET @id=getNextCustomSeq('empl_id','empl');
			 set @v = 0;
			 call sp_getMax_order('tb_employee', @v);
				INSERT INTO `tb_employee`
				(`order`,
				`empl_id`,
				`empl_firstname`,
				`empl_lastname`,
				`empl_position`,
				`empl_birthday`,
				`dept_id`,
			   `empl_visible`)
				VALUES
				(@v,
				@id,
				p_empl_firstname,
				p_empl_lastname,
				p_empl_position,
				p_empl_birthday,
				p_dept_id,
				1    
				);
				set p_return_code =0;
				set p_return_message='Thêm mới thành công nhân viên!';
				set p_fullerror='none' ;
		ELSEIF(p_sqltype='E')
        then
			UPDATE `tb_employee`
			SET
			`empl_firstname` = p_empl_firstname,
			`empl_lastname` = p_empl_lastname,
			`empl_position` = p_empl_position,
			`empl_birthday` = p_empl_birthday,
			`dept_id` = p_dept_id
		
			WHERE `empl_id` = p_empl_id;
            	set p_return_code =0;
				set p_return_message=concat('Cập nhật thành công nhân viên `',p_empl_id,'`');
				set p_fullerror='none' ;
         ELSE
				set p_return_code =3;
				set p_return_message='Thực thi không hợp lệ! ';
				set p_fullerror=concat('Thực thi không hợp lệ! `',p_sqltype,'`'); 
		end if;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_project_add_edit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_project_add_edit`(
in p_sqltype varchar(10),
in p_id varchar(25),
in p_name varchar(75),
in p_description varchar(250),
in p_start_date varchar(15),
in p_end_date varchar(15),
in p_manager_user varchar(50),
in p_department varchar(50),
	out p_return_code int,
	OUT p_return_message varchar(100),
	OUT p_fullerror varchar(255)
)
L_return:
BEGIN
DECLARE exit handler for sqlexception 
	  BEGIN
	  GET DIAGNOSTICS CONDITION 1 @sqlstate1 = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text1 = MESSAGE_TEXT; 
		SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate1, "): ", @text1); 
		-- ERROR
		set p_return_code = @errno;
		set p_return_message='System exception!';
		set p_fullerror=@full_error ;
		rollback;
	  END;

	  DECLARE exit handler for sqlwarning
	  BEGIN
		-- WARNING
		set p_return_code =  2;
	    set p_return_message='SQL warning';
		set p_fullerror='MYSQL warning' ;
		rollback;
	  END;
    
    set @fdate=STR_TO_DATE(p_start_date,'%Y-%m-%d');
    set @tdate=STR_TO_DATE(p_end_date,'%Y-%m-%d');
    
    if  TIMESTAMPDIFF(HOur,p_start_date,p_end_date) <0 or TIMESTAMPDIFF(HOur,p_start_date,p_end_date) =0
    then
				-- WARNING
		set p_return_code =  3;
	    set p_return_message='End date must be lager start date';
		set p_fullerror='End date must be lager start date' ;
		rollback;
        leave L_return;
    end if;
    set @default_status=1;
    
    if @fdate >now()
    then
		set @default_status=2; /*uncomming*/
    ELSEIF @tdate < now()
    then 
		set @default_status=3;
    end if;
    
    start transaction;
		if(p_sqltype='A')
        then
					SET @id=getNextCustomSeq('proj_id','proj');
					INSERT INTO `tb_project`
									(`id`,
									`name`,
									`description`,
									`start_date`,
									`end_date`,
									`manager_user`,
									`project_status`,
                                    `expect_time`,
                                    `create_date`,
                                    `create_user`,
                                    `dept_id`)
									VALUES
									(@id,
										p_name,
										p_description,
										p_start_date,
										p_end_date,
										p_manager_user,
										@default_status,/*enew*/
                                        0,
                                        now(),
                                        p_manager_user,
                                        p_department
										);
				set p_return_code =0;
				set p_return_message='Thêm mới thành công !';
				set p_fullerror='none' ;
                
		ELSEIF(p_sqltype='E')
        then
			if not exists (select id from tb_project where id=p_id )
			then
				set p_return_code =  -2;
				set p_return_message='project bạn muốn chỉnh sửa không tồn tại';
				set p_fullerror='' ;
                	rollback;
                leave L_return;
            end if;
				UPDATE `tb_project`
				SET
				`name` = p_name,
				`description` = p_description,
				`start_date` = p_start_date,
				`end_date` = p_end_date,
				`manager_user` = p_manager_user,
				`modify_date` = now(),
				`modify_user` = p_manager_user,
                `project_status`=@default_status
				WHERE `id` = p_id;	
				
            	set p_return_code =0;
				set p_return_message=concat('Cập nhật thành công  `',p_id,'`');
				set p_fullerror='none' ;
         ELSE
				set p_return_code =4;
				set p_return_message='Thực thi không hợp lệ! ';
				set p_fullerror=concat('Thực thi không hợp lệ! `',p_sqltype,'`'); 
		end if;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_project_add_em` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_project_add_em`(
in p_employee varchar(50),
in p_project varchar(50),
in p_description varchar(250),
	out p_return_code int,
	OUT p_return_message varchar(100),
	OUT p_fullerror varchar(255)
)
L_return:
BEGIN
DECLARE exit handler for sqlexception 
	  BEGIN
	  GET DIAGNOSTICS CONDITION 1 @sqlstate1 = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text1 = MESSAGE_TEXT; 
		SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate1, "): ", @text1); 
		-- ERROR
		set p_return_code = @errno;
		set p_return_message='System exception!';
		set p_fullerror=@full_error ;
		rollback;
	  END;

	  DECLARE exit handler for sqlwarning
	  BEGIN
		-- WARNING
		set p_return_code =  2;
	    set p_return_message='SQL warning';
		set p_fullerror='MYSQL warning' ;
		rollback;
	  END;
       if  not exists (select username from tb_user where username=p_employee)
    then
				-- WARNING
		set p_return_code =  4;
	    set p_return_message='Employee user is not exists';
		set p_fullerror='Employee user is not exists' ;
		rollback;
        leave L_return;
    end if;
    
     if  not exists (select id from tb_project where id=p_project and project_status=1)
    then
				-- WARNING
		set p_return_code =  5;
	    set p_return_message='Project is not exists';
		set p_fullerror='Project is not exists' ;
		rollback;
        leave L_return;
    end if;
    
    start transaction;
		INSERT INTO `tb_employees_project`
						(`project_id`,
						`user_id`,
						`create_date`,
						`description`)
						VALUES
						(p_project,
						p_employee,
						now(),
						p_description);
		
				set p_return_code =0;
				set p_return_message='Thêm mới thành công !';
				set p_fullerror='none' ;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_project_daily_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_project_daily_update`()
BEGIN
						declare c_projectid varchar(50);
						declare c_startdate date;
						declare c_enddate date;
                        -- this flag will be set to true when cursor reaches end of table
				   DECLARE exit_loop BOOLEAN;         
				   -- Declare the cursor
				   DECLARE project_cursor CURSOR FOR SELECT id, start_date,end_date FROM tb_project where project_status<>3;/*get project active*/
				   -- set exit_loop flag to true if there are no more rows
				   DECLARE CONTINUE HANDLER FOR NOT FOUND SET exit_loop = TRUE;
DECLARE exit handler for sqlexception 
	 BEGIN
     	rollback;
     end;

DECLARE exit handler for sqlwarning
	  BEGIN
		-- WARNING
		rollback;
	  END;
  start transaction;
				   -- open the cursor
				   OPEN project_cursor;
				   -- start looping
				   project_loop: LOOP
					 -- read the name from next row into the variables 
					 FETCH  project_cursor INTO c_projectid,c_startdate,c_enddate;
							 set @default_status=1;
							  if c_startdate >now()
								then
									set @default_status=2; /*uncomming*/
								ELSEIF c_enddate < now()
								then 
									set @default_status=3;
							end if;
							update tb_project set project_status=@default_status where id=c_projectid;
					 -- check if the exit_loop flag has been set by mysql, 
					 -- close the cursor and exit the loop if it has.
					 IF exit_loop THEN
						 CLOSE project_cursor;
						 LEAVE project_loop;
					 END IF;
				   END LOOP project_loop; 
  COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_recent_activity_handle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_recent_activity_handle`(
in p_project_id varchar(30),
in p_task_id  varchar(30),
in p_task_title varchar(75),
in p_ower  varchar(45),
in p_action tinyint(1),
in p_activity_detail text
)
BEGIN

			INSERT INTO `tb_recent_activity`
			(
			`project_id`,
			`task_id`,
			`task_title`,
			`ower`,
			`action`,
			`activity_detail`,
			`create_date`)
			VALUES
			(
			p_project_id,
			p_task_id,
			p_task_title,
			p_ower,
			p_action,
			p_activity_detail,
			now());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_task_add_edit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_task_add_edit`(
in p_sqltype varchar(10),
in p_id int,
in p_title varchar(75),
in p_description varchar(245),
in p_employee_id varchar(45),
in p_expect_time int(9),
in p_spent_time int(9),
in p_progress int(3),
in p_task_status tinyint(1),
in p_project_id varchar(30),
in p_username varchar(30),
	out p_return_code int,
	OUT p_return_message varchar(100),
	OUT p_fullerror varchar(255)
)
L_return:
BEGIN
DECLARE exit handler for sqlexception 
	  BEGIN
	  GET DIAGNOSTICS CONDITION 1 @sqlstate1 = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text1 = MESSAGE_TEXT; 
		SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate1, "): ", @text1); 
		-- ERROR
		set p_return_code = @errno;
		set p_return_message='System exception!';
		set p_fullerror=@full_error ;
		rollback;
	  END;

	  DECLARE exit handler for sqlwarning
	  BEGIN
		-- WARNING
		set p_return_code =  2;
	    set p_return_message='SQL warning';
		set p_fullerror='MYSQL warning' ;
		rollback;
	  END;
    
    if  not exists (select username from tb_user where username=p_username)
    then
				-- WARNING
		set p_return_code =  3;
	    set p_return_message='Management user is not exists';
		set p_fullerror='Management user is not exists' ;
		rollback;
        leave L_return;
    end if;
    
     if  not exists (select username from tb_user where username=p_employee_id)
    then
				-- WARNING
		set p_return_code =  4;
	    set p_return_message='Employee user is not exists';
		set p_fullerror='Employee user is not exists' ;
		rollback;
        leave L_return;
    end if;
    
     if  not exists (select id from tb_project where id=p_project_id and project_status=1)
    then
				-- WARNING
		set p_return_code =  5;
	    set p_return_message='Project is not exists';
		set p_fullerror='Project is not exists' ;
		rollback;
        leave L_return;
    end if;
    
    
    start transaction;
		if(p_sqltype='A')
        then
				SET @id=getNextCustomSeq('task_id','task');
				INSERT INTO `tb_task`
						(`id`,
						`title`,
						`description`,
						`employee_id`,
						`expect_time`,
						`spent_time`,
						`progress`,
						`task_status`,
						`project_id`,
						`create_user`,
						`create_date`,
						`isdelete`,
						`count_visisted`)
						VALUES
						(@id,
						p_title,
						p_description,
						p_employee_id,
						p_expect_time,
						p_spent_time,
						p_progress,
						1,/*open*/
						p_project_id,
						p_username,	
						now(),
						0,
						0);
				call sp_tb_recent_activity_handle(p_project_id,@id,p_title,p_username,1,'');/*create item*/
				set p_return_code =0;
				set p_return_message='Thêm mới thành công !';
				set p_fullerror='none' ;
                
		ELSEIF(p_sqltype='E')
        then
			if not exists (select id from tb_task where id=p_id )
			then
				set p_return_code =  -2;
				set p_return_message='Task bạn muốn chỉnh sửa không tồn tại';
				set p_fullerror='' ;
                	rollback;
                leave L_return;
            end if;
				/*update*/
				
            	set p_return_code =0;
				set p_return_message=concat('Cập nhật thành công  `',p_id,'`');
				set p_fullerror='none' ;
         ELSE
				set p_return_code =4;
				set p_return_message='Thực thi không hợp lệ! ';
				set p_fullerror=concat('Thực thi không hợp lệ! `',p_sqltype,'`'); 
		end if;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_task_getbyid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_task_getbyid`(
in p_id varchar(50)
)
BEGIN
		select tb1.id, tb1.title, tb1.description, tb1.employee_id, tb1.first_visited_date, tb1.expect_time, tb1.spent_time, 
		tb1.progress, tb1.task_status, tb1.project_id, tb1.create_user, tb1.modify_user, tb1.create_date,
		 tb1.modify_date, tb1.count_visisted,tb2.html_display as task_status_html,tb3.name as project_name,
         FLOOR(tb1.expect_time/60) as Estimated_h,
		 FLOOR(tb1.spent_time/60) as Spent_h,MOD(tb1.expect_time,60) as Estimated_m, MOD(tb1.spent_time,60) as Spent_m
		 from tb_task tb1 ,tb_task_status tb2,tb_project tb3
		 where tb1.id=p_id and tb2.id=tb1.task_status and tb1.project_id=tb3.id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_task_search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_task_search`(
 in p_project varchar(30),
 in p_taskstatus tinyint(1),
 in p_tasktitle varchar(75),
 in p_start int(9),
 in p_limit int(9)

)
BEGIN
   declare p_query text;
   set p_query =concat('select * from(SELECT *
											FROM tb_task  tb1 )A where ''%''=''%''');		

	if p_taskstatus=0
    then
			set p_query = concat(p_query ,' and task_status <>',p_taskstatus);
    else
			set p_query = concat(p_query ,' and task_status =',p_taskstatus);
    end if;
    
	set p_query = concat(p_query ,' and project_id=''',p_project,'''');
   	set p_query = concat(p_query ,' and  title like ','''%',p_tasktitle,'%''');
    set p_query = concat(p_query ,' order by create_date desc ');
     set p_query =concat(p_query,' limit ',p_start,',',p_limit);
     /*select p_query;*/
     set @s = p_query;
    
		PREPARE p_exec_query FROM @s;
		execute p_exec_query;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_task_searchbyemployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_task_searchbyemployee`(
 in p_project varchar(30),
 in p_taskstatus tinyint(1),
 in p_tasktitle varchar(75),
 in p_employee varchar(50),
 in p_start int(9),
 in p_limit int(9)

)
BEGIN
   declare p_query text;
   set p_query =concat('select * from(SELECT *
											FROM tb_task  tb1 )A where ''%''=''%''');		

	if p_taskstatus=0
    then
			set p_query = concat(p_query ,' and task_status <>',p_taskstatus);
    else
			set p_query = concat(p_query ,' and task_status =',p_taskstatus);
    end if;
    
	set p_query = concat(p_query ,' and project_id=''',p_project,'''');
   	set p_query = concat(p_query ,' and  title like ','''%',p_tasktitle,'%''');
    	set p_query = concat(p_query ,' and employee_id=''',p_employee,'''');
    set p_query = concat(p_query ,' order by create_date desc ');
     set p_query =concat(p_query,' limit ',p_start,',',p_limit);
     /*select p_query;*/
     set @s = p_query;
    
		PREPARE p_exec_query FROM @s;
		execute p_exec_query;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_task_search_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_task_search_count`(
in p_project varchar(30),
 in p_taskstatus tinyint(1),
 in p_tasktitle varchar(75)
)
BEGIN
declare p_query text;
   set p_query =concat('select Count(*) as p_count from(SELECT *
											FROM tb_task  tb1 )A where ''%''=''%''');		

	if p_taskstatus=0
    then
			set p_query = concat(p_query ,' and task_status <>',p_taskstatus);
    else
			set p_query = concat(p_query ,' and task_status =',p_taskstatus);
    end if;
    
	set p_query = concat(p_query ,' and project_id=''',p_project,'''');
   	set p_query = concat(p_query ,' and  title like ','''%',p_tasktitle,'%''');
    set p_query = concat(p_query ,' order by create_date desc ');
     /*select p_query;*/
		set @s = p_query;
		PREPARE p_exec_query FROM @s;
		execute p_exec_query;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_task_search_countbyemployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_task_search_countbyemployee`(
in p_project varchar(30),
 in p_taskstatus tinyint(1),
 in p_tasktitle varchar(75),
  in p_employee varchar(75)
)
BEGIN
declare p_query text;
   set p_query =concat('select Count(*) as p_count from(SELECT *
											FROM tb_task  tb1 )A where ''%''=''%''');		

	if p_taskstatus=0
    then
			set p_query = concat(p_query ,' and task_status <>',p_taskstatus);
    else
			set p_query = concat(p_query ,' and task_status =',p_taskstatus);
    end if;
    
	set p_query = concat(p_query ,' and project_id=''',p_project,'''');
   	set p_query = concat(p_query ,' and  title like ','''%',p_tasktitle,'%''');
    	set p_query = concat(p_query ,' and employee_id=''',p_employee,'''');
    set p_query = concat(p_query ,' order by create_date desc ');
     /*select p_query;*/
		set @s = p_query;
		PREPARE p_exec_query FROM @s;
		execute p_exec_query;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_task_update1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_task_update1`(
in p_task_id varchar(50),
in p_task_progress int (3),
in p_task_expect_time int ,
in p_log text,
in p_project_id varchar(30),
in p_title varchar(75),
in p_ower varchar(50),
out p_return_code int,
	OUT p_return_message varchar(100),
	OUT p_fullerror varchar(255)
)
L_return:
BEGIN
DECLARE exit handler for sqlexception 
	  BEGIN
	  GET DIAGNOSTICS CONDITION 1 @sqlstate1 = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text1 = MESSAGE_TEXT; 
		SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate1, "): ", @text1); 
		-- ERROR
		set p_return_code = @errno;
		set p_return_message='System exception!';
		set p_fullerror=@full_error ;
		rollback;
	  END;

	  DECLARE exit handler for sqlwarning
	  BEGIN
		-- WARNING
		set p_return_code =  2;
	    set p_return_message='SQL warning';
		set p_fullerror='MYSQL warning' ;
		rollback;
	  END;
      if  not exists (select username from tb_user where username=p_ower)
    then
				-- WARNING
		set p_return_code =  3;
	    set p_return_message=' user is not exists';
		set p_fullerror=' user is not exists' ;
		rollback;
        leave L_return;
    end if;
     
     if  not exists (select id from tb_project where id=p_project_id and project_status=1)
    then
				-- WARNING
		set p_return_code =  5;
	    set p_return_message='Project is not exists';
		set p_fullerror='Project is not exists' ;
		rollback;
        leave L_return;
    end if;
	if not exists (select id from tb_task where id=p_task_id )
			then
				set p_return_code =  -2;
				set p_return_message='Task bạn muốn chỉnh sửa không tồn tại';
				set p_fullerror='' ;
                	rollback;
                leave L_return;
            end if;
    set @default_status=1;
    if p_task_progress =100
    then
		set @default_status=2; /*CLose*/
	else
        set @default_status=1;/*open*/
    end if;
    
    start transaction;
				update tb_task
                set progress=p_task_progress,
					expect_time	=	p_task_expect_time,
                    task_status= @default_status,
                    modify_user=p_ower,
                    modify_date=now()
					where id=p_task_id;
			call sp_tb_recent_activity_handle(p_project_id,p_task_id,p_title,p_ower,2,p_log);/*create item*/   
				set p_return_code =0;
				set p_return_message='Update mới thành công !';
				set p_fullerror='none' ;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_task_update2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_task_update2`(
in p_task_id varchar(50),
in p_task_progress int (3),
in p_task_expect_time int ,
in p_log text,
in p_project_id varchar(30),
in p_title varchar(75),
in p_description varchar(255),
in p_employee varchar(75),
in p_ower varchar(50),
out p_return_code int,
	OUT p_return_message varchar(100),
	OUT p_fullerror varchar(255)
)
L_return:
BEGIN
DECLARE exit handler for sqlexception 
	  BEGIN
	  GET DIAGNOSTICS CONDITION 1 @sqlstate1 = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text1 = MESSAGE_TEXT; 
		SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate1, "): ", @text1); 
		-- ERROR
		set p_return_code = @errno;
		set p_return_message='System exception!';
		set p_fullerror=@full_error ;
		rollback;
	  END;

	  DECLARE exit handler for sqlwarning
	  BEGIN
		-- WARNING
		set p_return_code =  2;
	    set p_return_message='SQL warning';
		set p_fullerror='MYSQL warning' ;
		rollback;
	  END;
      if  not exists (select username from tb_user where username=p_ower)
    then
				-- WARNING
		set p_return_code =  3;
	    set p_return_message=' user is not exists';
		set p_fullerror=' user is not exists' ;
		rollback;
        leave L_return;
    end if;
     
       if  not exists (select username from tb_user where username=p_employee)
    then
				-- WARNING
		set p_return_code =  3;
	    set p_return_message=' employee is not exists';
		set p_fullerror=' employee is not exists' ;
		rollback;
        leave L_return;
    end if;
     
     if  not exists (select id from tb_project where id=p_project_id and project_status=1)
    then
				-- WARNING
		set p_return_code =  5;
	    set p_return_message='Project is not exists';
		set p_fullerror='Project is not exists' ;
		rollback;
        leave L_return;
    end if;
	if not exists (select id from tb_task where id=p_task_id )
			then
				set p_return_code =  -2;
				set p_return_message='Task bạn muốn chỉnh sửa không tồn tại';
				set p_fullerror='' ;
                	rollback;
                leave L_return;
            end if;
    set @default_status=1;
    if p_task_progress =100
    then
		set @default_status=2; /*CLose*/
	else
        set @default_status=1;/*open*/
    end if;
    
    start transaction;
				update tb_task
                set progress=p_task_progress,
					expect_time	=	p_task_expect_time,
                    task_status= @default_status,
                    title=p_title,
                    description=p_description,
                    employee_id=p_employee,
                    modify_user=p_ower,
                    modify_date=now()
					where id=p_task_id;
			call sp_tb_recent_activity_handle(p_project_id,p_task_id,p_title,p_ower,2,p_log);/*create item*/   
				set p_return_code =0;
				set p_return_message='Update mới thành công !';
				set p_fullerror='none' ;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_task_update3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_task_update3`(
in p_task_id varchar(50),
in p_task_progress int (3),
in p_spent_time int ,
in p_log text,
in p_project_id varchar(30),
in p_title varchar(75),
in p_ower varchar(50),
out p_return_code int,
	OUT p_return_message varchar(100),
	OUT p_fullerror varchar(255)
)
L_return:
BEGIN
DECLARE exit handler for sqlexception 
	  BEGIN
	  GET DIAGNOSTICS CONDITION 1 @sqlstate1 = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text1 = MESSAGE_TEXT; 
		SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate1, "): ", @text1); 
		-- ERROR
		set p_return_code = @errno;
		set p_return_message='System exception!';
		set p_fullerror=@full_error ;
		rollback;
	  END;

	  DECLARE exit handler for sqlwarning
	  BEGIN
		-- WARNING
		set p_return_code =  2;
	    set p_return_message='SQL warning';
		set p_fullerror='MYSQL warning' ;
		rollback;
	  END;
      if  not exists (select username from tb_user where username=p_ower)
    then
				-- WARNING
		set p_return_code =  3;
	    set p_return_message=' user is not exists';
		set p_fullerror=' user is not exists' ;
		rollback;
        leave L_return;
    end if;
     
     if  not exists (select id from tb_project where id=p_project_id and project_status=1)
    then
				-- WARNING
		set p_return_code =  5;
	    set p_return_message='Project is not exists';
		set p_fullerror='Project is not exists' ;
		rollback;
        leave L_return;
    end if;
	if not exists (select id from tb_task where id=p_task_id )
			then
				set p_return_code =  -2;
				set p_return_message='Task bạn muốn chỉnh sửa không tồn tại';
				set p_fullerror='' ;
                	rollback;
                leave L_return;
            end if;
    set @default_status=1;
    if p_task_progress =100
    then
		set @default_status=2; /*CLose*/
	else
        set @default_status=1;/*open*/
    end if;
    
    start transaction;
				update tb_task
                set progress=p_task_progress,
					spent_time	=	p_spent_time,
                    task_status= @default_status,
                    modify_user=p_ower,
                    modify_date=now()
					where id=p_task_id;
			call sp_tb_recent_activity_handle(p_project_id,p_task_id,p_title,p_ower,2,p_log);/*create item*/   
				set p_return_code =0;
				set p_return_message='Update mới thành công !';
				set p_fullerror='none' ;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tb_user_add_edit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_tb_user_add_edit`(
in p_sqltype varchar(10),
in p_user_name varchar(50),
in p_password varchar(20),
in p_name varchar(70),
in p_phone varchar(15),
in p_department varchar(20),
in p_positon varchar(45),
in p_user_role varchar(15),
in p_enabled tinyint(1),
in p_create_user varchar(40),
	out p_return_code int,
	OUT p_return_message varchar(100),
	OUT p_fullerror varchar(255)
)
L_return:
BEGIN
DECLARE exit handler for sqlexception 
	  BEGIN
	  GET DIAGNOSTICS CONDITION 1 @sqlstate1 = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text1 = MESSAGE_TEXT; 
		SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate1, "): ", @text1); 
		-- ERROR
		set p_return_code = @errno;
		set p_return_message='System exception!';
		set p_fullerror=@full_error ;
		rollback;
	  END;

	  DECLARE exit handler for sqlwarning
	  BEGIN
		-- WARNING
		set p_return_code =  2;
	    set p_return_message='SQL warning';
		set p_fullerror='MYSQL warning' ;
		rollback;
	  END;
    
    start transaction;
		if(p_sqltype='A')
        then
			if exists (select username from tb_user where username=p_user_name )
			then
            
				set p_return_code =  -2;
				set p_return_message='User name đã có người sử dụng!';
				set p_fullerror='User name đã có người sử dụng!' ;
                rollback;
                leave L_return;
            end if;
               INSERT INTO `tb_user`
					(`username`,
					`password`,
					`name`,
					`phone`,
					`department`,
					`positon`,
					`user_role`,
					`enabled`,
					`create_date`,
					`create_user`)
					VALUES
					(p_user_name,
					p_password,
					p_name,
					p_phone,
					p_department,
					p_positon,
					p_user_role,
					p_enabled,
					now(),
					p_create_user);

				set p_return_code =0;
				set p_return_message='Thêm mới thành công !';
				set p_fullerror='none' ;
                
		ELSEIF(p_sqltype='E')
        then
			if not exists (select username from tb_user where username=p_user_name )
			then
				set p_return_code =  -2;
				set p_return_message='User name bạn muốn chỉnh sửa không tồn tại';
				set p_fullerror='' ;
                rollback;
                leave L_return;
            end if;
        
					UPDATE `tb_user`
					SET	
				
					`name` = p_name,
					`phone` = p_phone,
					`department` = p_department,
					`positon` = p_positon,
					`user_role` = p_user_role,
					`enabled` = p_enabled
					WHERE `username` =p_user_name;


            	set p_return_code =0;
				set p_return_message=concat('Cập nhật User thành công  `',p_user_name,'`');
				set p_fullerror='none' ;
         ELSE
				set p_return_code =3;
				set p_return_message='Thực thi không hợp lệ! ';
				set p_fullerror=concat('Thực thi không hợp lệ! `',p_sqltype,'`'); 
		end if;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_test_jasper` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_test_jasper`(
in anything varchar(30)
)
BEGIN
	
SELECT *
FROM tb_project
 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_user_statistics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_user_statistics`(
in p_username varchar(45)
)
BEGIN

		set @projects=0;
        set @tasks=0;
        set @opened_tasks=0;
        set @closed_tasks=0;
        set @comments=0;
		set @total_time_spent=0;
        set @username='';
		select 	 username ,name,phone,department,positon ,user_role 
			INTO @username,@name,@phone,@department,@positon,@user_role
        from tb_user where username=p_username;
        
        select count(*) into @projects
		from tb_employees_project
		where  user_id=p_username;
        
        
		select count(*) into @opened_tasks
		from tb_task tb1,tb_employees_project tb2
		where  tb2.user_id=p_username and tb2.project_id=tb1.project_id and task_status=1;
        
        	select count(*) into @closed_tasks
		from tb_task tb1,tb_employees_project tb2
		where  tb2.user_id=p_username and tb2.project_id=tb1.project_id and task_status=2;
        
		select SUM(tb1.spent_time) into @total_time_spent
		from tb_task tb1,tb_employees_project tb2
		where  tb2.user_id=p_username and tb2.project_id=tb1.project_id and task_status=2;
        
        set @tasks=@closed_tasks+@opened_tasks;
        
        if @projects IS NULL then set @projects=0; end if;
           if @tasks IS NULL then set @tasks=0; end if;
              if @opened_tasks IS NULL then set @opened_tasks=0; end if;
                 if @comments IS NULL then set @comments=0; end if;
                    if @total_time_spent IS NULL then set @total_time_spent=0; end if;
		
				
                select 	@username as username,@name as name,@phone as  phone,@department as department,
						@positon as positon,@user_role as user_role,
						@projects as projects,@tasks as tasks, @opened_tasks as opened_tasks,
						@closed_tasks as closed_tasks,@comments as comments,
                         @total_time_spent as  total_time_spent;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-03 10:42:01
