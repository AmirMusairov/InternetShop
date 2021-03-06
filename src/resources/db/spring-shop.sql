create database if not exists spring-shop;
use spring-shop;

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
-- Dumping data for table `FoodProduct`
--

LOCK TABLES `FoodProduct` WRITE;
/*!40000 ALTER TABLE `FoodProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `FoodProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ShelfLifeProduct`
--

LOCK TABLES `ShelfLifeProduct` WRITE;
/*!40000 ALTER TABLE `LimitedShelfLifeProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `LimitedShelfLifeProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `MilkProduct`
--

LOCK TABLES `MilkProduct` WRITE;
/*!40000 ALTER TABLE `MilkProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `MilkProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Naming`
--

LOCK TABLES `Naming` WRITE;
/*!40000 ALTER TABLE `Naming` DISABLE KEYS */;
/*!40000 ALTER TABLE `Naming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `NotFoodProduct`
--

LOCK TABLES `NotFoodProduct` WRITE;
/*!40000 ALTER TABLE `NotFoodProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `NotFoodProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bucket`
--

LOCK TABLES `bucket` WRITE;
/*!40000 ALTER TABLE `bucket` DISABLE KEYS */;
INSERT INTO `bucket` VALUES (23,1),(24,2),(25,3);
/*!40000 ALTER TABLE `bucket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `bucket_product`
--

LOCK TABLES `bucket_product` WRITE;
/*!40000 ALTER TABLE `bucket_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `bucket_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Ukraine'),(2,'USA');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'dad','$2a$10$3/EBD2KnR2m5hF3pNTehBe1bRhF/jnhIG.GDR0ErjRKVdZ2ov4RBq'),(2,'sas','$2a$10$okc8.Q9UO/CLrjuiFEqtFuBgFEEn49k4U6L20QwWY.BGWvVOyoy16'),(3,'wew','$2a$10$cfqjlpzKYAtA9.8VGuZLvOB8ijh4SgHvIx3aEkDZsBdTS6.B1rdEW');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,_binary '','2021-01-19',345180.00,1),(2,_binary '','2021-01-19',123.00,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` VALUES (1,'2021-01-04 00:00:00','2021-01-04 17:42:47',32160,1,7),(2,'2021-01-04 00:00:00','2021-01-04 18:39:32',2460,1,8),(3,'2021-01-04 00:00:00','2021-01-04 18:40:04',541200,0,9),(4,'2021-01-05 00:00:00','2021-01-05 10:05:28',2560,1,10),(5,'2021-01-05 00:00:00','2021-01-05 10:14:15',14500,1,11),(6,'2021-01-04 00:00:00','2021-01-05 10:31:57',638000,0,2),(7,'2021-01-04 00:00:00','2021-01-05 10:34:18',3730,0,5),(8,'2021-01-04 00:00:00','2021-01-05 10:36:34',541200,1,9),(9,'2021-01-05 00:00:00','2021-01-05 13:11:40',17615,1,12),(10,'2021-01-05 00:00:00','2021-01-05 13:15:41',0,0,13),(11,'2021-01-05 00:00:00','2021-01-05 13:15:57',0,1,13),(12,'2021-01-05 00:00:00','2021-01-05 13:17:07',1200,0,14),(13,'2021-01-05 00:00:00','2021-01-05 13:17:20',1200,1,14),(14,'2021-01-05 00:00:00','2021-01-05 13:19:06',100,1,15),(15,'2021-01-05 00:00:00','2021-01-05 13:24:51',12000,0,16),(16,'2021-01-05 00:00:00','2021-01-05 13:25:06',12000,1,16),(17,'2021-01-05 00:00:00','2021-01-05 13:26:43',1107,0,17),(18,'2021-01-05 00:00:00','2021-01-05 13:27:00',1107,1,17),(19,'2021-01-05 00:00:00','2021-01-05 13:59:33',10,0,18),(20,'2021-01-05 00:00:00','2021-01-05 13:59:47',10,1,18),(21,'2021-01-06 00:00:00','2021-01-06 16:51:58',0,0,19),(22,'2021-01-06 00:00:00','2021-01-06 16:53:03',1353,0,20),(23,'2021-01-06 00:00:00','2021-01-06 17:09:13',0,1,19),(24,'2021-01-06 00:00:00','2021-01-06 18:18:42',0,0,21),(25,'2021-01-06 00:00:00','2021-01-06 18:18:42',0,0,22),(26,'2021-01-06 00:00:00','2021-01-06 18:18:43',0,0,23),(27,'2021-01-06 00:00:00','2021-01-06 18:18:43',0,0,24),(28,'2021-01-06 00:00:00','2021-01-06 18:18:43',0,0,25),(29,'2021-01-06 00:00:00','2021-01-06 18:18:43',0,0,26),(30,'2021-01-06 00:00:00','2021-01-06 18:18:43',0,0,27),(31,'2021-01-06 00:00:00','2021-01-06 18:18:43',0,0,28),(32,'2021-01-06 00:00:00','2021-01-06 18:18:44',0,0,29),(33,'2021-01-06 00:00:00','2021-01-06 18:18:44',0,0,30),(34,'2021-01-06 00:00:00','2021-01-06 18:18:44',0,0,31),(35,'2021-01-06 00:00:00','2021-01-06 18:18:44',0,0,32),(36,'2021-01-06 00:00:00','2021-01-06 18:18:44',0,0,33),(37,'2021-01-06 00:00:00','2021-01-06 18:18:44',0,0,34),(38,'2021-01-06 00:00:00','2021-01-06 18:18:44',0,0,35),(39,'2021-01-06 00:00:00','2021-01-06 18:18:45',0,0,36),(40,'2021-01-06 00:00:00','2021-01-06 18:18:45',0,0,37),(41,'2021-01-06 00:00:00','2021-01-06 18:18:45',0,0,38),(42,'2021-01-06 00:00:00','2021-01-06 18:18:45',0,0,39),(43,'2021-01-06 00:00:00','2021-01-06 18:18:45',0,0,40),(44,'2021-01-06 00:00:00','2021-01-06 18:18:46',0,0,41),(45,'2021-01-06 00:00:00','2021-01-06 18:18:46',0,0,42),(46,'2021-01-06 00:00:00','2021-01-06 18:18:46',0,0,43),(47,'2021-01-06 00:00:00','2021-01-06 18:18:46',0,0,44),(48,'2021-01-06 00:00:00','2021-01-06 18:18:46',0,0,45),(49,'2021-01-06 00:00:00','2021-01-06 18:18:46',0,0,46),(50,'2021-01-06 00:00:00','2021-01-06 18:18:46',0,0,47),(51,'2021-01-06 00:00:00','2021-01-06 18:18:47',0,0,48),(52,'2021-01-06 00:00:00','2021-01-06 18:18:47',0,0,49),(53,'2021-01-06 00:00:00','2021-01-06 18:18:47',0,0,50),(54,'2021-01-06 00:00:00','2021-01-06 18:18:47',0,0,51),(55,'2021-01-06 00:00:00','2021-01-06 18:18:47',0,0,52),(56,'2021-01-06 00:00:00','2021-01-06 18:18:47',0,0,53),(57,'2021-01-06 00:00:00','2021-01-06 18:18:47',0,0,54),(58,'2021-01-06 00:00:00','2021-01-06 18:18:48',0,0,55),(59,'2021-01-06 00:00:00','2021-01-06 18:18:48',0,0,56),(60,'2021-01-06 00:00:00','2021-01-06 18:18:48',0,0,57),(61,'2021-01-06 00:00:00','2021-01-06 18:18:48',0,0,58),(62,'2021-01-06 00:00:00','2021-01-06 18:18:48',0,0,59),(63,'2021-01-06 00:00:00','2021-01-06 18:18:48',0,0,60),(64,'2021-01-06 00:00:00','2021-01-06 18:23:03',0,0,61),(65,'2021-01-06 00:00:00','2021-01-06 18:25:25',0,0,62),(66,'2021-01-06 00:00:00','2021-01-06 18:28:13',0,0,63),(67,'2021-01-06 00:00:00','2021-01-06 18:30:06',0,0,64),(68,'2021-01-06 00:00:00','2021-01-06 19:23:49',429,0,65),(69,'2021-01-06 00:00:00','2021-01-06 19:24:36',429,1,65),(70,'2021-01-06 00:00:00','2021-01-06 19:27:35',4428,0,66),(71,'2021-01-06 00:00:00','2021-01-06 19:27:49',4428,1,66),(72,'2021-01-06 00:00:00','2021-01-06 20:05:42',2523,0,67),(73,'2021-01-06 00:00:00','2021-01-06 20:05:55',2523,1,67),(74,'2021-01-06 00:00:00','2021-01-06 20:06:54',360,0,68),(75,'2021-01-06 00:00:00','2021-01-06 20:07:05',360,1,68),(76,'2021-01-06 00:00:00','2021-01-10 22:26:54',1353,1,20),(77,'2021-01-10 00:00:00','2021-01-10 22:27:50',23,0,69),(78,'2021-01-10 00:00:00','2021-01-10 22:27:57',23,1,69),(79,'2021-01-10 00:00:00','2021-01-10 22:39:25',1476,0,70),(80,'2021-01-10 00:00:00','2021-01-10 22:39:29',1476,1,70),(81,'2021-01-06 00:00:00','2021-01-11 01:49:02',0,1,21),(82,'2021-01-06 00:00:00','2021-01-11 01:51:30',0,1,22),(83,'2021-01-06 00:00:00','2021-01-11 01:56:25',0,1,23),(84,'2021-01-11 00:00:00','2021-01-11 02:08:51',246,0,71),(85,'2021-01-11 00:00:00','2021-01-11 02:09:04',246,1,71),(86,'2021-01-11 00:00:00','2021-01-11 02:15:50',15876,0,72),(87,'2021-01-11 00:00:00','2021-01-11 02:15:56',15876,1,72),(88,'2021-01-11 00:00:00','2021-01-11 02:16:44',123,0,73),(89,'2021-01-11 00:00:00','2021-01-11 02:16:52',123,1,73),(90,'2021-01-11 00:00:00','2021-01-11 02:40:03',27060,0,74),(91,'2021-01-11 00:00:00','2021-01-11 02:40:09',27060,1,74),(92,'2021-01-11 00:00:00','2021-01-11 02:54:20',2952,0,75),(93,'2021-01-11 00:00:00','2021-01-11 02:54:30',2952,1,75),(94,'2021-01-11 00:00:00','2021-01-11 02:57:47',30,0,76),(95,'2021-01-11 00:00:00','2021-01-11 02:57:57',30,1,76),(96,'2021-01-11 00:00:00','2021-01-11 03:21:47',360,0,77),(97,'2021-01-11 00:00:00','2021-01-11 03:21:57',360,1,77),(98,'2021-01-11 00:00:00','2021-01-11 04:18:59',4428,0,78),(99,'2021-01-11 00:00:00','2021-01-11 04:19:06',4428,1,78),(100,'2021-01-11 00:00:00','2021-01-11 04:24:19',100,0,79),(101,'2021-01-11 00:00:00','2021-01-11 04:24:26',100,1,79),(102,'2021-01-11 00:00:00','2021-01-11 10:16:00',27060,0,80),(103,'2021-01-11 00:00:00','2021-01-11 10:16:06',27060,1,80),(104,'2021-01-11 00:00:00','2021-01-11 10:57:52',27060,0,81),(105,'2021-01-11 00:00:00','2021-01-11 10:57:54',27060,1,81),(106,'2021-01-11 00:00:00','2021-01-11 11:04:50',1476,0,82),(107,'2021-01-11 00:00:00','2021-01-11 11:04:52',1476,1,82),(108,'2021-01-11 00:00:00','2021-01-11 11:40:56',1476,0,83),(109,'2021-01-11 00:00:00','2021-01-11 11:40:58',1476,1,83),(110,'2021-01-11 00:00:00','2021-01-11 11:55:18',27060,0,84),(111,'2021-01-11 00:00:00','2021-01-11 11:55:21',27060,1,84),(112,'2021-01-11 00:00:00','2021-01-11 12:17:51',246,0,85),(113,'2021-01-11 00:00:00','2021-01-11 12:18:03',246,1,85),(114,'2021-01-11 00:00:00','2021-01-11 12:27:51',2952,0,86),(115,'2021-01-11 00:00:00','2021-01-11 12:27:57',2952,1,86),(116,'2021-01-11 00:00:00','2021-01-11 12:31:07',291060,0,87),(117,'2021-01-11 00:00:00','2021-01-11 12:31:12',291060,1,87),(118,'2021-01-11 00:00:00','2021-01-11 13:21:17',1476,0,88),(119,'2021-01-11 00:00:00','2021-01-11 13:21:19',1476,1,88),(120,'2021-01-11 00:00:00','2021-01-11 13:25:21',2952,0,89),(121,'2021-01-11 00:00:00','2021-01-11 13:25:35',2952,1,89),(122,'2021-01-11 00:00:00','2021-01-11 13:57:18',123,0,90),(123,'2021-01-11 00:00:00','2021-01-11 13:57:31',123,1,90),(124,'2021-01-11 00:00:00','2021-01-11 13:57:49',4400,0,91),(125,'2021-01-11 00:00:00','2021-01-11 13:57:53',4400,1,91),(126,'2021-01-11 00:00:00','2021-01-11 14:11:05',295460,0,92),(127,'2021-01-11 00:00:00','2021-01-11 14:11:10',295460,1,92),(128,'2021-01-11 00:00:00','2021-01-11 14:19:40',3300,0,93),(129,'2021-01-11 00:00:00','2021-01-11 14:19:47',3300,1,93),(130,'2021-01-11 00:00:00','2021-01-11 14:24:09',720,0,94),(131,'2021-01-11 00:00:00','2021-01-11 14:24:17',720,1,94),(132,'2021-01-11 00:00:00','2021-01-11 14:25:05',264000,0,95),(133,'2021-01-11 00:00:00','2021-01-11 14:25:11',264000,1,95),(134,'2021-01-11 00:00:00','2021-01-11 14:41:24',28160,0,96),(135,'2021-01-11 00:00:00','2021-01-11 14:41:27',28160,1,96),(136,'2021-01-11 00:00:00','2021-01-11 17:05:37',2640,0,97),(137,'2021-01-11 00:00:00','2021-01-11 17:05:46',2640,1,97),(138,'2021-01-11 00:00:00','2021-01-11 17:06:28',1476,0,98),(139,'2021-01-11 00:00:00','2021-01-11 17:06:31',1476,1,98),(140,'2021-01-12 00:00:00','2021-01-12 16:39:33',2952,0,99),(141,'2021-01-12 00:00:00','2021-01-12 16:39:41',2952,1,99),(142,'2021-01-12 00:00:00','2021-01-12 18:51:15',1476,0,100),(143,'2021-01-12 00:00:00','2021-01-12 18:51:21',1476,1,100),(144,'2021-01-14 00:00:00','2021-01-14 14:58:11',6600,0,101),(145,'2021-01-14 00:00:00','2021-01-14 14:58:17',6600,1,101),(146,'2021-01-14 00:00:00','2021-01-14 14:59:11',1476,0,102),(147,'2021-01-14 00:00:00','2021-01-14 14:59:16',1476,1,102),(148,'2021-01-14 00:00:00','2021-01-14 15:15:51',2952,0,103),(149,'2021-01-14 00:00:00','2021-01-14 15:15:56',2952,1,103),(150,'2021-01-14 00:00:00','2021-01-14 15:27:26',720,0,104),(151,'2021-01-14 00:00:00','2021-01-14 15:27:31',720,1,104),(152,'2021-01-14 00:00:00','2021-01-14 22:47:42',1476,0,105),(153,'2021-01-14 00:00:00','2021-01-14 22:47:51',1476,1,105),(154,'2021-01-15 00:00:00','2021-01-15 13:28:23',2952,0,106),(155,'2021-01-15 00:00:00','2021-01-15 13:28:30',2952,1,106),(156,'2021-01-15 00:00:00','2021-01-15 14:10:31',4428,0,107),(157,'2021-01-15 00:00:00','2021-01-15 14:10:36',4428,1,107),(158,'2021-01-15 00:00:00','2021-01-15 14:16:32',264000,0,108),(159,'2021-01-15 00:00:00','2021-01-15 14:16:39',264000,1,108),(160,'2021-01-15 00:00:00','2021-01-15 14:31:31',1476,0,109),(161,'2021-01-15 00:00:00','2021-01-15 14:31:34',1476,1,109),(162,'2021-01-15 00:00:00','2021-01-15 14:34:34',480,0,110),(163,'2021-01-15 00:00:00','2021-01-15 14:34:37',480,1,110),(164,'2021-01-18 00:00:00','2021-01-18 14:58:44',2952,0,111),(165,'2021-01-18 00:00:00','2021-01-18 14:58:54',2952,1,111),(166,'2021-01-18 00:00:00','2021-01-18 15:32:22',1476,0,112),(167,'2021-01-18 00:00:00','2021-01-18 15:32:28',1476,1,112),(168,'2021-01-18 00:00:00','2021-01-18 15:54:44',96,0,113),(169,'2021-01-18 00:00:00','2021-01-18 15:54:50',96,1,113),(170,'2021-01-18 00:00:00','2021-01-18 16:40:31',54120,0,114),(171,'2021-01-18 00:00:00','2021-01-18 16:40:39',54120,1,114),(172,'2021-01-19 00:00:00','2021-01-19 14:21:32',1476,0,115),(173,'2021-01-19 00:00:00','2021-01-19 14:22:03',1476,1,115),(174,'2021-01-19 00:00:00','2021-01-19 14:23:34',20,0,116),(175,'2021-01-19 00:00:00','2021-01-19 14:23:37',20,1,116),(176,'2021-01-19 00:00:00','2021-01-19 14:47:32',60,0,117),(177,'2021-01-19 00:00:00','2021-01-19 14:47:38',60,1,117);
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'milk',123,'MILK',1),(2,'table',250,'NOT_FOOD',1),(3,'notebook',1200,'NOT_FOOD',2),(4,'water',5,'FOOD',2),(5,'apple',10,'FOOD',1),(6,'bread',4,'FOOD',2),(7,'cheese',40,'MILK',1),(8,'oil',30,'MILK',2),(9,'yogurt',20,'MILK',1),(11,'kitkat',15,'FOOD',2),(12,'tea',25,'FOOD',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (2,0),(3,0),(4,42),(5,53),(6,42),(7,55),(8,92),(9,45),(11,108),(1,47);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'spring-shop'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_orders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user`@`localhost` PROCEDURE `get_orders`(IN id VARCHAR(255))
SELECT * FROM orders WHERE user_id = id ;;
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

-- Dump completed on 2021-04-09 20:38:50