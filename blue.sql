-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: blue
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.20.04.1

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `goods_id` bigint NOT NULL,
  `comment_text` varchar(300) NOT NULL,
  `create_date` varchar(100) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `follow_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `follow_userid` bigint NOT NULL,
  PRIMARY KEY (`follow_id`),
  KEY `follow_user_id` (`follow_userid`,`user_id`),
  KEY `follow_follower_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1725127009689931777 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (1725127009689931776,1724666359654125568,1724657327212072960);
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `goods_id` bigint NOT NULL AUTO_INCREMENT,
  `picture_url` varchar(2048) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `idx_goods_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=1725169301117210625 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1724687301004496896,'https://blue-project.oss-cn-hangzhou.aliyuncs.com/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-11-15%20140238.png,https://blue-project.oss-cn-hangzhou.aliyuncs.com/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-11-15%20140310.png','出一辆大电驴，成色较新，刚买一个月，有意者联系企鹅1145141919','出大电驴',1724657327212072960,'2023-11-15 15:14:30.358'),(1724690277353918464,'https://blue-project.oss-cn-hangzhou.aliyuncs.com/1724690277353918464chat_right.png,https://blue-project.oss-cn-hangzhou.aliyuncs.com/1724690277353918464chat_left.png','adw','123',1724652506878840832,'2023-11-15 15:26:20.311'),(1724707359139303424,'https://blue-project.oss-cn-hangzhou.aliyuncs.com/17247073591393034249cc2aea7-9ef0-43e0-b49d-30157b8b3f23temp.jpg','$5.99','Slime',1724666359654125568,'2023-11-15 16:34:12.783'),(1725144253727772672,'https://blue-project.oss-cn-hangzhou.aliyuncs.com/1725144253727772672c7707d65-4b82-48df-8630-8bc66cb36ee3temp.jpg,https://blue-project.oss-cn-hangzhou.aliyuncs.com/17251442537277726721fd93227-73a3-42bd-82bc-e33d580ea3a8temp.jpg','rmb：30','华科中秋月饼礼盒',1725138284293656576,'2023-11-16 21:30:36.064'),(1725144770759626752,'https://blue-project.oss-cn-hangzhou.aliyuncs.com/1725144770759626752e3a2adff-c1f9-4b29-894e-f94e3c2e159atemp.jpg','不要钱','牛奶',1725138284293656576,'2023-11-16 21:32:28.603'),(1725149501544468480,'','','T',1724666359654125568,'2023-11-16 21:51:07.554'),(1725169301117210624,'','','t',1724666359654125568,'2023-11-16 23:09:48.139');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `like_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `goods_id` bigint NOT NULL,
  PRIMARY KEY (`like_id`),
  KEY `like_user_id` (`user_id`,`goods_id`),
  KEY `like_goods_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `signature` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1725138284293656577 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1724652506878840832,'gsh','123','','',''),(1724655785679523840,'gsh1','1231','','',''),(1724657327212072960,'aka','123','','',''),(1724658564162654208,'qwe','123','','',''),(1724666359654125568,'zhangsan','123456','','',''),(1724692481024462848,'lisi','123456','','',''),(1724694019298037760,'wangwu','123456','','',''),(1725138284293656576,'lxy','123456','','','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 23:05:03
