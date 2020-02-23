CREATE DATABASE  IF NOT EXISTS `travellink` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `travellink`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: travellink
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `contact_info`
--

DROP TABLE IF EXISTS `contact_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_info` (
  `ID` varchar(18) NOT NULL,
  `NAME` varchar(64) DEFAULT NULL COMMENT '名',
  `SURNAME` varchar(64) DEFAULT NULL COMMENT '姓',
  `EMAIL` varchar(64) DEFAULT NULL COMMENT '邮件',
  `SUBJECT` varchar(200) DEFAULT NULL COMMENT '主题',
  `MESSAGE` varchar(200) DEFAULT NULL COMMENT '详细信息',
  `CREATE_TIME` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '提交时间',
  `STATUS` int NOT NULL DEFAULT '0' COMMENT '状态，0提交，1已处理',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='联系人提交的信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_info`
--

LOCK TABLES `contact_info` WRITE;
/*!40000 ALTER TABLE `contact_info` DISABLE KEYS */;
INSERT INTO `contact_info` VALUES ('202002220929211001','san','zhang','abc@123.com','hello','world','2020-02-22 09:33:48.956',0),('202002221051441004','json','J','json@gmail.com','test1','message1','2020-02-22 10:51:44.276',0),('202002230923561005','qqq','www','aaa@123.com','aaaaa','ssssss','2020-02-23 09:23:56.235',0),('202002230924531006','qqq','www','aaa@123.com','aaaaa','ssssss','2020-02-23 09:24:53.865',0),('202002230925331007','qqq','www','aaa@123.com','aaaaa','ssssss','2020-02-23 09:25:33.864',0),('202002230933461008','qqq','eee','ttt@qq.com','sssss','嘎嘎嘎嘎嘎嘎嘎','2020-02-23 09:33:46.909',0),('202002231032181009','qqq','eee','ttt@qq.com','sssss','嘎嘎嘎嘎嘎嘎嘎','2020-02-23 10:32:18.998',0),('202002231035451010','qqq','www','eeee@aaa.com','出现超线程相处','从出现超线程相处','2020-02-23 10:35:45.841',0),('202002231038541011','aaa','qqq','www@111.com','asdasdasda','asdsadasdas','2020-02-23 10:38:54.349',0),('202002231039151012','aaa','qqq','www@111.com','asdasdasda','asdsadasdas','2020-02-23 10:39:15.240',0),('202002231043161013','aaa','qqq','www@qqq.com','asdasdasda','asdsadasdas','2020-02-23 10:43:16.451',0);
/*!40000 ALTER TABLE `contact_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence` (
  `NAME` varchar(32) NOT NULL COMMENT '序列名称',
  `VALUE` int NOT NULL COMMENT '当前值',
  `NEXT` int NOT NULL COMMENT '增加的值',
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('contact_info_seq',1013,1),('user_seq',1006,1);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `USER_ID` varchar(18) NOT NULL COMMENT '用户id',
  `USER_ACCOUNT` varchar(50) NOT NULL COMMENT '登录账号',
  `PASSWORD` varchar(45) NOT NULL COMMENT '登录密码',
  `USER_NAME` varchar(45) DEFAULT NULL COMMENT '用户名字',
  `PHONE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `CREATE_TIME` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `LAST_MODIFY_TIME` datetime(3) DEFAULT CURRENT_TIMESTAMP(3) COMMENT '最后修改时间',
  `LAST_MODIFY_USER` varchar(50) DEFAULT NULL COMMENT '最后修改用户',
  `STATUS` int NOT NULL DEFAULT '0' COMMENT '用户状态0正常启用，1系统禁用',
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `userid_UNIQUE` (`USER_ID`),
  UNIQUE KEY `useraccount_UNIQUE` (`USER_ACCOUNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'travellink'
--
/*!50003 DROP FUNCTION IF EXISTS `NEXT_SEQ_NUM` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `NEXT_SEQ_NUM`(SEQ_NAME VARCHAR(32)) RETURNS varchar(18) CHARSET utf8
BEGIN
    DECLARE SEQNUM VARCHAR(18); 
    DECLARE NEXTNUM INT;
UPDATE sequence 
SET 
    VALUE = IF(LAST_INSERT_ID(VALUE + NEXT) >= 9998,
        1000,
        LAST_INSERT_ID(VALUE + NEXT))
WHERE
    NAME = SEQ_NAME;
   SET NEXTNUM = (SELECT LAST_INSERT_ID());
   SET SEQNUM = (SELECT CONCAT(DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'),  NEXTNUM));
    
RETURN SEQNUM;
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

-- Dump completed on 2020-02-23 15:41:59
