-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: python1icx6
-- ------------------------------------------------------
-- Server version	5.7.31

--
-- Current Database: `python1icx6`
--
SET TIME_ZONE ='+00:00';
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

