-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: python1icx6
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `python1icx6`
--

/*!40000 DROP DATABASE IF EXISTS `python1icx6`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `python1icx6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `python1icx6`;

--
-- Table structure for table `cangkuxinxi`
--

DROP TABLE IF EXISTS `cangkuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cangkuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinbianhao` varchar(200) DEFAULT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `cunfangweizhi` varchar(200) DEFAULT NULL COMMENT '存放位置',
  `chanpinxiangqing` longtext COMMENT '产品详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanpinbianhao` (`chanpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834232648 DEFAULT CHARSET=utf8 COMMENT='仓库信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cangkuxinxi`
--

LOCK TABLES `cangkuxinxi` WRITE;
/*!40000 ALTER TABLE `cangkuxinxi` DISABLE KEYS */;
INSERT INTO `cangkuxinxi` VALUES (31,'2023-03-03 09:01:00','1111111111','产品名称1','产品分类1',1,1,'存放位置1','产品详情1'),(32,'2023-03-03 09:01:00','2222222222','产品名称2','产品分类2',2,2,'存放位置2','产品详情2'),(33,'2023-03-03 09:01:00','3333333333','产品名称3','产品分类3',3,3,'存放位置3','产品详情3'),(34,'2023-03-03 09:01:00','4444444444','产品名称4','产品分类4',4,4,'存放位置4','产品详情4'),(35,'2023-03-03 09:01:00','5555555555','产品名称5','产品分类5',5,5,'存放位置5','产品详情5'),(36,'2023-03-03 09:01:00','6666666666','产品名称6','产品分类6',6,6,'存放位置6','产品详情6'),(37,'2023-03-03 09:01:00','7777777777','产品名称7','产品分类7',7,7,'存放位置7','产品详情7'),(38,'2023-03-03 09:01:00','8888888888','产品名称8','产品分类8',8,8,'存放位置8','产品详情8'),(1677834232647,'2023-03-03 09:03:52','1677833850167','产品','小型产品',34,26,'位置','让我给你列书单，你还问我哪里有那么多时间看书;你说自让我给你列书单，你还问我哪里有那么多时间看书;你说自让我给你列书单');
/*!40000 ALTER TABLE `cangkuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanpinfenlei`
--

DROP TABLE IF EXISTS `chanpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinfenlei` varchar(200) NOT NULL COMMENT '产品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834196934 DEFAULT CHARSET=utf8 COMMENT='产品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpinfenlei`
--

LOCK TABLES `chanpinfenlei` WRITE;
/*!40000 ALTER TABLE `chanpinfenlei` DISABLE KEYS */;
INSERT INTO `chanpinfenlei` VALUES (21,'2023-03-03 09:01:00','产品分类1'),(22,'2023-03-03 09:01:00','产品分类2'),(23,'2023-03-03 09:01:00','产品分类3'),(24,'2023-03-03 09:01:00','产品分类4'),(25,'2023-03-03 09:01:00','产品分类5'),(26,'2023-03-03 09:01:00','产品分类6'),(27,'2023-03-03 09:01:00','产品分类7'),(28,'2023-03-03 09:01:00','产品分类8'),(1677834196933,'2023-03-03 09:03:16','小型产品');
/*!40000 ALTER TABLE `chanpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuhuoxinxi`
--

DROP TABLE IF EXISTS `chuhuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuhuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chuhuobianhao` varchar(200) DEFAULT NULL COMMENT '出货编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `chuhuoshuliang` int(11) DEFAULT NULL COMMENT '出货数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `chuhuoshijian` date DEFAULT NULL COMMENT '出货时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chuhuobianhao` (`chuhuobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834258566 DEFAULT CHARSET=utf8 COMMENT='出货信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuhuoxinxi`
--

LOCK TABLES `chuhuoxinxi` WRITE;
/*!40000 ALTER TABLE `chuhuoxinxi` DISABLE KEYS */;
INSERT INTO `chuhuoxinxi` VALUES (51,'2023-03-03 09:01:00','1111111111','产品名称1','产品分类1',1,1,1,'2023-03-03'),(52,'2023-03-03 09:01:00','2222222222','产品名称2','产品分类2',2,2,2,'2023-03-03'),(53,'2023-03-03 09:01:00','3333333333','产品名称3','产品分类3',3,3,3,'2023-03-03'),(54,'2023-03-03 09:01:00','4444444444','产品名称4','产品分类4',4,4,4,'2023-03-03'),(55,'2023-03-03 09:01:00','5555555555','产品名称5','产品分类5',5,5,5,'2023-03-03'),(56,'2023-03-03 09:01:00','6666666666','产品名称6','产品分类6',6,6,6,'2023-03-03'),(57,'2023-03-03 09:01:00','7777777777','产品名称7','产品分类7',7,7,7,'2023-03-03'),(58,'2023-03-03 09:01:00','8888888888','产品名称8','产品分类8',8,8,8,'2023-03-03'),(1677834258565,'2023-03-03 09:04:18','1677833906239','产品','小型产品',10,26,260,'2023-03-03');
/*!40000 ALTER TABLE `chuhuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chukuxinxi`
--

DROP TABLE IF EXISTS `chukuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `chukushijian` date DEFAULT NULL COMMENT '出库时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834301930 DEFAULT CHARSET=utf8 COMMENT='出库信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chukuxinxi`
--

LOCK TABLES `chukuxinxi` WRITE;
/*!40000 ALTER TABLE `chukuxinxi` DISABLE KEYS */;
INSERT INTO `chukuxinxi` VALUES (71,'2023-03-03 09:01:00','1111111111','产品名称1','产品分类1',1,'2023-03-03','员工工号1','员工姓名1'),(72,'2023-03-03 09:01:00','2222222222','产品名称2','产品分类2',2,'2023-03-03','员工工号2','员工姓名2'),(73,'2023-03-03 09:01:00','3333333333','产品名称3','产品分类3',3,'2023-03-03','员工工号3','员工姓名3'),(74,'2023-03-03 09:01:00','4444444444','产品名称4','产品分类4',4,'2023-03-03','员工工号4','员工姓名4'),(75,'2023-03-03 09:01:00','5555555555','产品名称5','产品分类5',5,'2023-03-03','员工工号5','员工姓名5'),(76,'2023-03-03 09:01:00','6666666666','产品名称6','产品分类6',6,'2023-03-03','员工工号6','员工姓名6'),(77,'2023-03-03 09:01:00','7777777777','产品名称7','产品分类7',7,'2023-03-03','员工工号7','员工姓名7'),(78,'2023-03-03 09:01:00','8888888888','产品名称8','产品分类8',8,'2023-03-03','员工工号8','员工姓名8'),(1677834301929,'2023-03-03 09:05:01','1677833949502','产品','小型产品',11,'2023-03-03','111','111');
/*!40000 ALTER TABLE `chukuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guihaixinxi`
--

DROP TABLE IF EXISTS `guihaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guihaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyongbianhao` varchar(200) DEFAULT NULL COMMENT '借用编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `chanpinzhuangtai` varchar(200) DEFAULT NULL COMMENT '产品状态',
  `guihaishijian` date DEFAULT NULL COMMENT '归还时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jieyongbianhao` (`jieyongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834355318 DEFAULT CHARSET=utf8 COMMENT='归还信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guihaixinxi`
--

LOCK TABLES `guihaixinxi` WRITE;
/*!40000 ALTER TABLE `guihaixinxi` DISABLE KEYS */;
INSERT INTO `guihaixinxi` VALUES (91,'2023-03-03 09:01:00','1111111111','产品名称1','产品分类1','已归还','2023-03-03','员工工号1','员工姓名1'),(92,'2023-03-03 09:01:00','2222222222','产品名称2','产品分类2','已归还','2023-03-03','员工工号2','员工姓名2'),(93,'2023-03-03 09:01:00','3333333333','产品名称3','产品分类3','已归还','2023-03-03','员工工号3','员工姓名3'),(94,'2023-03-03 09:01:00','4444444444','产品名称4','产品分类4','已归还','2023-03-03','员工工号4','员工姓名4'),(95,'2023-03-03 09:01:00','5555555555','产品名称5','产品分类5','已归还','2023-03-03','员工工号5','员工姓名5'),(96,'2023-03-03 09:01:00','6666666666','产品名称6','产品分类6','已归还','2023-03-03','员工工号6','员工姓名6'),(97,'2023-03-03 09:01:00','7777777777','产品名称7','产品分类7','已归还','2023-03-03','员工工号7','员工姓名7'),(98,'2023-03-03 09:01:00','8888888888','产品名称8','产品分类8','已归还','2023-03-03','员工工号8','员工姓名8'),(1677834355317,'2023-03-03 09:05:55','1677833955806','产品','小型产品','已归还','2023-03-03','111','111');
/*!40000 ALTER TABLE `guihaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jieyongxinxi`
--

DROP TABLE IF EXISTS `jieyongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jieyongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyongbianhao` varchar(200) DEFAULT NULL COMMENT '借用编号',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `jieyongyongtu` longtext COMMENT '借用用途',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jieyongbianhao` (`jieyongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834308476 DEFAULT CHARSET=utf8 COMMENT='借用信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jieyongxinxi`
--

LOCK TABLES `jieyongxinxi` WRITE;
/*!40000 ALTER TABLE `jieyongxinxi` DISABLE KEYS */;
INSERT INTO `jieyongxinxi` VALUES (81,'2023-03-03 09:01:00','1111111111','产品分类1','产品名称1','借用用途1','2023-03-03','员工工号1','员工姓名1','是',''),(82,'2023-03-03 09:01:00','2222222222','产品分类2','产品名称2','借用用途2','2023-03-03','员工工号2','员工姓名2','是',''),(83,'2023-03-03 09:01:00','3333333333','产品分类3','产品名称3','借用用途3','2023-03-03','员工工号3','员工姓名3','是',''),(84,'2023-03-03 09:01:00','4444444444','产品分类4','产品名称4','借用用途4','2023-03-03','员工工号4','员工姓名4','是',''),(85,'2023-03-03 09:01:00','5555555555','产品分类5','产品名称5','借用用途5','2023-03-03','员工工号5','员工姓名5','是',''),(86,'2023-03-03 09:01:00','6666666666','产品分类6','产品名称6','借用用途6','2023-03-03','员工工号6','员工姓名6','是',''),(87,'2023-03-03 09:01:00','7777777777','产品分类7','产品名称7','借用用途7','2023-03-03','员工工号7','员工姓名7','是',''),(88,'2023-03-03 09:01:00','8888888888','产品分类8','产品名称8','借用用途8','2023-03-03','员工工号8','员工姓名8','是',''),(1677834308475,'2023-03-03 09:05:08','1677833955806','小型产品','产品','让我给你列书单，你还问我哪里有那么多时间看书;你说自','2023-03-03','111','111','是','管理员审核员工借用信息，批准');
/*!40000 ALTER TABLE `jieyongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jinhuoxinxi`
--

DROP TABLE IF EXISTS `jinhuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jinhuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinhuobianhao` varchar(200) DEFAULT NULL COMMENT '进货编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `jinhuoshuliang` int(11) DEFAULT NULL COMMENT '进货数量',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `jinhuoshijian` date DEFAULT NULL COMMENT '进货时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jinhuobianhao` (`jinhuobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834242549 DEFAULT CHARSET=utf8 COMMENT='进货信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jinhuoxinxi`
--

LOCK TABLES `jinhuoxinxi` WRITE;
/*!40000 ALTER TABLE `jinhuoxinxi` DISABLE KEYS */;
INSERT INTO `jinhuoxinxi` VALUES (41,'2023-03-03 09:01:00','1111111111','产品名称1','产品分类1',1,1,1,'2023-03-03'),(42,'2023-03-03 09:01:00','2222222222','产品名称2','产品分类2',2,2,2,'2023-03-03'),(43,'2023-03-03 09:01:00','3333333333','产品名称3','产品分类3',3,3,3,'2023-03-03'),(44,'2023-03-03 09:01:00','4444444444','产品名称4','产品分类4',4,4,4,'2023-03-03'),(45,'2023-03-03 09:01:00','5555555555','产品名称5','产品分类5',5,5,5,'2023-03-03'),(46,'2023-03-03 09:01:00','6666666666','产品名称6','产品分类6',6,6,6,'2023-03-03'),(47,'2023-03-03 09:01:00','7777777777','产品名称7','产品分类7',7,7,7,'2023-03-03'),(48,'2023-03-03 09:01:00','8888888888','产品名称8','产品分类8',8,8,8,'2023-03-03'),(1677834242548,'2023-03-03 09:04:02','1677833889129','产品','小型产品',20,26,520,'2023-03-03');
/*!40000 ALTER TABLE `jinhuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rukuxinxi`
--

DROP TABLE IF EXISTS `rukuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `rukushijian` date DEFAULT NULL COMMENT '入库时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834296337 DEFAULT CHARSET=utf8 COMMENT='入库信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rukuxinxi`
--

LOCK TABLES `rukuxinxi` WRITE;
/*!40000 ALTER TABLE `rukuxinxi` DISABLE KEYS */;
INSERT INTO `rukuxinxi` VALUES (61,'2023-03-03 09:01:00','1111111111','产品名称1','产品分类1',1,'2023-03-03','员工工号1','员工姓名1'),(62,'2023-03-03 09:01:00','2222222222','产品名称2','产品分类2',2,'2023-03-03','员工工号2','员工姓名2'),(63,'2023-03-03 09:01:00','3333333333','产品名称3','产品分类3',3,'2023-03-03','员工工号3','员工姓名3'),(64,'2023-03-03 09:01:00','4444444444','产品名称4','产品分类4',4,'2023-03-03','员工工号4','员工姓名4'),(65,'2023-03-03 09:01:00','5555555555','产品名称5','产品分类5',5,'2023-03-03','员工工号5','员工姓名5'),(66,'2023-03-03 09:01:00','6666666666','产品名称6','产品分类6',6,'2023-03-03','员工工号6','员工姓名6'),(67,'2023-03-03 09:01:00','7777777777','产品名称7','产品分类7',7,'2023-03-03','员工工号7','员工姓名7'),(68,'2023-03-03 09:01:00','8888888888','产品名称8','产品分类8',8,'2023-03-03','员工工号8','员工姓名8'),(1677834296336,'2023-03-03 09:04:56','1677833943760','产品','小型产品',25,'2023-03-03','111','111');
/*!40000 ALTER TABLE `rukuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shijianfenlei`
--

DROP TABLE IF EXISTS `shijianfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shijianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijianfenlei` varchar(200) NOT NULL COMMENT '事件分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834285712 DEFAULT CHARSET=utf8 COMMENT='事件分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shijianfenlei`
--

LOCK TABLES `shijianfenlei` WRITE;
/*!40000 ALTER TABLE `shijianfenlei` DISABLE KEYS */;
INSERT INTO `shijianfenlei` VALUES (101,'2023-03-03 09:01:00','事件分类1'),(102,'2023-03-03 09:01:00','事件分类2'),(103,'2023-03-03 09:01:00','事件分类3'),(104,'2023-03-03 09:01:00','事件分类4'),(105,'2023-03-03 09:01:00','事件分类5'),(106,'2023-03-03 09:01:00','事件分类6'),(107,'2023-03-03 09:01:00','事件分类7'),(108,'2023-03-03 09:01:00','事件分类8'),(1677834285711,'2023-03-03 09:04:45','工作事件');
/*!40000 ALTER TABLE `shijianfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shijianjilu`
--

DROP TABLE IF EXISTS `shijianjilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shijianjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jilubianhao` varchar(200) DEFAULT NULL COMMENT '记录编号',
  `shijianmingcheng` varchar(200) DEFAULT NULL COMMENT '事件名称',
  `shijianfenlei` varchar(200) DEFAULT NULL COMMENT '事件分类',
  `shijianneirong` longtext COMMENT '事件内容',
  `jilushijian` date DEFAULT NULL COMMENT '记录时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jilubianhao` (`jilubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834324221 DEFAULT CHARSET=utf8 COMMENT='事件记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shijianjilu`
--

LOCK TABLES `shijianjilu` WRITE;
/*!40000 ALTER TABLE `shijianjilu` DISABLE KEYS */;
INSERT INTO `shijianjilu` VALUES (111,'2023-03-03 09:01:00','1111111111','事件名称1','事件分类1','事件内容1','2023-03-03','员工工号1','员工姓名1'),(112,'2023-03-03 09:01:00','2222222222','事件名称2','事件分类2','事件内容2','2023-03-03','员工工号2','员工姓名2'),(113,'2023-03-03 09:01:00','3333333333','事件名称3','事件分类3','事件内容3','2023-03-03','员工工号3','员工姓名3'),(114,'2023-03-03 09:01:00','4444444444','事件名称4','事件分类4','事件内容4','2023-03-03','员工工号4','员工姓名4'),(115,'2023-03-03 09:01:00','5555555555','事件名称5','事件分类5','事件内容5','2023-03-03','员工工号5','员工姓名5'),(116,'2023-03-03 09:01:00','6666666666','事件名称6','事件分类6','事件内容6','2023-03-03','员工工号6','员工姓名6'),(117,'2023-03-03 09:01:00','7777777777','事件名称7','事件分类7','事件内容7','2023-03-03','员工工号7','员工姓名7'),(118,'2023-03-03 09:01:00','8888888888','事件名称8','事件分类8','事件内容8','2023-03-03','员工工号8','员工姓名8'),(1677834324220,'2023-03-03 09:05:24','1677833966664','事件','工作事件','让我给你列书单，你还问我哪里有那么多时间看书;你说自','2023-03-03','111','111');
/*!40000 ALTER TABLE `shijianjilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-03 09:01:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1677834177694 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2023-03-03 09:01:00','员工工号1','员工姓名1','123456','男','upload/yuangong_touxiang1.jpg',1,'13823888881'),(12,'2023-03-03 09:01:00','员工工号2','员工姓名2','123456','男','upload/yuangong_touxiang2.jpg',2,'13823888882'),(13,'2023-03-03 09:01:00','员工工号3','员工姓名3','123456','男','upload/yuangong_touxiang3.jpg',3,'13823888883'),(14,'2023-03-03 09:01:00','员工工号4','员工姓名4','123456','男','upload/yuangong_touxiang4.jpg',4,'13823888884'),(15,'2023-03-03 09:01:00','员工工号5','员工姓名5','123456','男','upload/yuangong_touxiang5.jpg',5,'13823888885'),(16,'2023-03-03 09:01:00','员工工号6','员工姓名6','123456','男','upload/yuangong_touxiang6.jpg',6,'13823888886'),(17,'2023-03-03 09:01:00','员工工号7','员工姓名7','123456','男','upload/yuangong_touxiang7.jpg',7,'13823888887'),(18,'2023-03-03 09:01:00','员工工号8','员工姓名8','123456','男','upload/yuangong_touxiang8.jpg',8,'13823888888'),(1677834177693,'2023-03-03 09:02:57','111','111','111','男','upload/1677834172619.jpg',26,'13613613666');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10 10:59:34
