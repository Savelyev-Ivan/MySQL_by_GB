-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: kinopoisk
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `actors_and_others_persons`
--

DROP TABLE IF EXISTS `actors_and_others_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors_and_others_persons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` bigint unsigned NOT NULL,
  `persons_name` varchar(255) NOT NULL,
  `persons_type_id` bigint unsigned NOT NULL,
  `persons_description` text,
  PRIMARY KEY (`id`),
  KEY `photo_id` (`photo_id`),
  KEY `persons_type_id` (`persons_type_id`),
  CONSTRAINT `actors_and_others_persons_ibfk_1` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`),
  CONSTRAINT `actors_and_others_persons_ibfk_2` FOREIGN KEY (`persons_type_id`) REFERENCES `persons_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors_and_others_persons`
--

LOCK TABLES `actors_and_others_persons` WRITE;
/*!40000 ALTER TABLE `actors_and_others_persons` DISABLE KEYS */;
INSERT INTO `actors_and_others_persons` VALUES (1,1,'Dallin McLaughlin III',1,'Officia et sit ipsa sunt quas. Voluptas quidem omnis quis ratione earum sit commodi. Accusamus aut aliquam aspernatur ex. Quia recusandae qui facilis laboriosam vel et qui et. Suscipit ipsam numquam tenetur ut deserunt.'),(2,2,'Gabriel Kohler',2,'Consequatur asperiores quisquam autem molestiae et eum. Praesentium odio vel porro reiciendis corporis vel velit. Ab autem ducimus accusamus unde dicta. Et enim beatae iure officiis.'),(3,3,'Dr. Makayla Muller',3,'Voluptates sed ducimus facere non reiciendis. Odit omnis similique veritatis distinctio repellendus aliquam. Qui neque autem iste nemo velit dolores nobis. Libero et corrupti unde mollitia hic.'),(4,4,'Prince Williamson',4,'Iste ad neque nesciunt aliquam. At illo et modi minima eaque error. Iusto nihil fugiat vitae iure illum ipsum sint autem.'),(5,5,'Maybelle Kuvalis',5,'Et ipsa fuga a quis maiores quaerat praesentium. Explicabo dolore quae impedit. Sunt at nihil et est nam.'),(6,6,'Cielo Harvey I',6,'Molestiae voluptas aut culpa ea laudantium delectus possimus. Ex dolores labore tempore. Reiciendis vero itaque dolor. Architecto ut autem dolor omnis corrupti.'),(7,7,'Mr. Kristian Stokes',7,'Et facere facere optio ex quibusdam non dolores. Mollitia corporis quo maiores incidunt perferendis quis.'),(8,8,'Torrey Kessler',8,'Et optio explicabo voluptatem soluta ut mollitia. Autem ut inventore nihil aliquam qui est. Voluptatem non non est ex vitae.'),(9,9,'Royal Schuppe',9,'Ut nemo sed iste aut repellendus. Voluptas tempore qui nulla quod fugiat qui et. Amet fugit delectus eum temporibus suscipit.'),(10,10,'Haylie Schuster',10,'Eos ex quas in est iusto. Accusamus porro expedita est possimus. Atque veniam maiores quod exercitationem dignissimos reprehenderit eum.'),(11,11,'Keshaun Ondricka',11,'Ut voluptatem occaecati ea quia porro. Maiores voluptate quia dolorum eligendi praesentium. Tempore excepturi eum dicta.'),(12,12,'Prof. Newell Ondricka',12,'Consequuntur consequatur qui soluta possimus ullam quos deleniti. Et eligendi assumenda est eos. Nihil iure eos non architecto corporis explicabo excepturi ullam.'),(13,13,'Dr. Furman Berge III',13,'Exercitationem in id aperiam ab. Quis et saepe inventore ex.'),(14,14,'Hank Bechtelar',14,'Ut et rerum neque ratione. Odit aut magnam quis ut dolores. Molestiae mollitia beatae ex quos maxime.'),(15,15,'Mr. Salvador McGlynn',15,'Quia qui aliquam quia iste qui. Voluptas veniam sit accusamus inventore culpa. Quidem ad similique qui. Sequi voluptas aspernatur quaerat doloremque.'),(16,16,'Miss Aaliyah Bauch MD',16,'Distinctio culpa repellendus molestias autem. Adipisci saepe est id illo iure ut.'),(17,17,'Prof. Donald Will Sr.',17,'Nihil omnis molestias quaerat. Minus nisi quasi magni voluptatibus officiis. Sit accusantium et sequi eos voluptate.'),(18,18,'Marlen White',18,'Aut voluptates optio inventore saepe harum. Quos ipsam asperiores doloremque qui adipisci rerum vitae. Omnis minima eligendi a ipsum temporibus. Aspernatur et eligendi libero accusamus. Nihil officiis neque commodi.'),(19,19,'Miss Bessie Waelchi',19,'Rerum dolor fugiat ab necessitatibus aut doloremque ducimus doloremque. Natus sequi quisquam molestiae ipsum fugit aut. Et hic est voluptatum et est ad.'),(20,20,'Lesley Ward',20,'Corporis ut delectus sint consequuntur est praesentium. Cumque iusto in provident quia. Ea nam sunt tempore suscipit alias sapiente laborum. Recusandae et ab eius neque quisquam in.');
/*!40000 ALTER TABLE `actors_and_others_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `all_values`
--

DROP TABLE IF EXISTS `all_values`;
/*!50001 DROP VIEW IF EXISTS `all_values`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_values` AS SELECT 
 1 AS `id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `email`,
 1 AS `password_hash`,
 1 AS `phone`,
 1 AS `user_id`,
 1 AS `gender`,
 1 AS `birthday`,
 1 AS `photo_id`,
 1 AS `created_at`,
 1 AS `subscription_type_id`,
 1 AS `subscription_type`,
 1 AS `price_subscription`,
 1 AS `rate`,
 1 AS `required_subscription_type`,
 1 AS `actors_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `film_command`
--

DROP TABLE IF EXISTS `film_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_command` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `actors_id` bigint unsigned NOT NULL,
  `media_id` bigint unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `film_command_ibfk_1` (`actors_id`),
  KEY `media_id_ibfk_2` (`media_id`),
  CONSTRAINT `film_command_ibfk_1` FOREIGN KEY (`actors_id`) REFERENCES `actors_and_others_persons` (`id`),
  CONSTRAINT `media_id_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_command`
--

LOCK TABLES `film_command` WRITE;
/*!40000 ALTER TABLE `film_command` DISABLE KEYS */;
INSERT INTO `film_command` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20);
/*!40000 ALTER TABLE `film_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL,
  `description` text,
  `media_type_id` bigint unsigned NOT NULL,
  `rating` bigint unsigned DEFAULT NULL,
  `size` int DEFAULT NULL,
  `metadata` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `required_subscription_type` bigint unsigned DEFAULT NULL,
  `only_for_adults` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`),
  KEY `media_type_id` (`media_type_id`),
  KEY `subscriptions_type_ibfk_2` (`required_subscription_type`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `subscriptions_type_ibfk_2` FOREIGN KEY (`required_subscription_type`) REFERENCES `subscription_type` (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'ipsum','Perferendis aut adipisci quam natus velit possimus. Velit et temporibus sit neque. Facere ipsam sapiente harum at exercitationem ut. Sit aspernatur tempora animi nobis.',1,25,229064626,NULL,'2021-07-05 13:25:56','1983-01-12 19:06:09',NULL,_binary '\0'),(2,'quibusdam','Aut iste odio voluptatum molestiae. Et non assumenda nulla harum deleniti est repudiandae. Minus ea culpa aut qui debitis.',2,3547,9234,NULL,'1996-06-08 13:48:41','2022-01-11 12:28:02',NULL,_binary ''),(3,'provident','Iusto odit sunt quisquam accusantium consequatur reiciendis. Maiores nam expedita voluptatem voluptas omnis et velit. Maxime architecto quo modi aut. Ea quos alias sed atque ducimus voluptatem incidunt ut.',3,24964,14365104,NULL,'1977-12-29 02:02:34','2000-04-15 02:05:59',NULL,_binary '\0'),(4,'quisquam','Quidem eligendi in quae est. Fuga id excepturi accusamus quidem esse vel quia. Ipsam aut quae fuga vitae nihil adipisci.',4,101022,790603160,NULL,'1986-12-05 04:47:31','2022-01-11 12:28:02',NULL,_binary ''),(5,'et','Dolore eius totam dolores qui. Tenetur earum molestiae placeat temporibus aspernatur beatae. Voluptates blanditiis velit asperiores aliquam beatae. Est repellat earum quo vel placeat qui quaerat et.',5,503,8,NULL,'1992-11-09 16:02:01','1979-12-05 03:08:15',NULL,_binary '\0'),(6,'minus','Fugiat ullam est qui facilis. Quas nostrum amet voluptatum alias itaque nobis. Sed atque et provident aut natus dolorem.',6,3010558,64356,NULL,'1978-10-20 23:55:10','1972-07-07 09:31:52',NULL,_binary '\0'),(7,'eligendi','Modi exercitationem eum consequatur aut assumenda autem beatae. Totam quisquam dolor aspernatur dolores quis ut dicta sint.',7,76657,0,NULL,'2006-01-04 09:28:28','1991-02-24 04:51:12',NULL,_binary '\0'),(8,'cum','Ullam accusamus repellendus nobis deserunt repudiandae molestiae aut. Dolore consequatur illum ipsum itaque et enim repellat aut. Sit sed pariatur reiciendis tempore voluptatum quaerat.',8,443706,95,NULL,'1981-11-10 22:18:48','2019-06-30 08:36:40',NULL,_binary '\0'),(9,'culpa','Non et velit vel repellendus dignissimos enim modi. Itaque autem porro voluptatem quis consequatur. Pariatur repudiandae cumque magnam ab qui. Nulla aut voluptate odit illo debitis.',9,4743578,0,NULL,'1988-09-07 01:51:27','1998-06-24 09:16:44',NULL,_binary '\0'),(10,'dolorem','Sit mollitia dolores cupiditate doloremque sunt. Et ut deleniti cumque quaerat omnis iusto. Neque voluptatem et sequi quos ea quia.',10,3,95456643,NULL,'1978-12-06 08:23:10','1981-07-20 06:02:39',NULL,_binary '\0'),(11,'nemo','Cum provident sit unde ipsam. Odit fuga autem qui qui ipsam culpa error. Magnam voluptatem iure nemo voluptas enim quidem delectus. Perferendis non dignissimos qui sit aut iste omnis et.',11,2283,321,NULL,'1973-06-12 15:52:00','1970-06-25 09:49:46',NULL,_binary '\0'),(12,'ex','Voluptatem quo quas sed et optio. Dolorem rem corporis quia ea aut consequatur non. At consequatur provident ut et maxime. Illo voluptatem ad quae perspiciatis adipisci quam ut.',12,44,339055578,NULL,'2012-01-26 14:01:57','2019-01-26 12:50:57',NULL,_binary '\0'),(13,'labore','Ut quo a aspernatur vel aut qui. Repellendus et et voluptates eos explicabo est. Omnis sapiente ducimus sit velit aut ab numquam. Repellat sapiente ut nostrum culpa.',13,100721,0,NULL,'2012-03-06 00:50:19','1982-05-12 09:03:24',NULL,_binary '\0'),(14,'nam','Eaque eveniet corrupti minus iste illum nostrum deleniti. Deserunt delectus nostrum est ut voluptatem et occaecati. Dolor laudantium voluptas necessitatibus quia sit rerum. Voluptate et est et velit dolore.',14,40075,96546456,NULL,'1979-02-18 02:59:27','2002-02-11 12:02:06',NULL,_binary '\0'),(15,'eaque','Repudiandae inventore ut eaque consequatur ea. Molestias ut sit excepturi modi ea aut. Excepturi aliquam quia quas voluptates.',15,423973,0,NULL,'2016-10-23 09:37:18','1990-11-29 02:42:23',NULL,_binary '\0'),(16,'atque','Quam omnis quae blanditiis veritatis. Amet cumque consequatur tenetur nam officiis voluptatem. Modi ea voluptatem suscipit enim officia aut omnis est. Porro saepe maxime rem voluptas.',16,798195957,4897712,NULL,'1993-02-28 18:50:57','2007-10-27 23:19:02',NULL,_binary '\0'),(17,'adipisci','Nobis nihil ex voluptas nam est. Ducimus similique totam ut cum dolor consequatur. Suscipit magni ipsa eius facilis.',17,62854833,3051,NULL,'1972-06-01 12:38:24','2012-04-13 10:43:52',NULL,_binary '\0'),(18,'dignissimos','Nihil et optio consequatur quia amet nisi. Libero omnis aut deleniti fuga dolor rerum maiores. Aliquam maxime et rerum.',18,20,2,NULL,'2020-06-19 14:57:57','2004-10-01 06:26:01',NULL,_binary '\0'),(19,'enim','Qui provident voluptas laudantium molestias. Quasi id corporis sed quidem aut esse amet. Enim et quam ex dolor consequatur iure voluptatem. Commodi excepturi commodi saepe nemo consequuntur sed.',19,29855377,3,NULL,'2006-12-14 05:05:56','2003-03-20 11:26:51',NULL,_binary '\0'),(20,'quas','Velit reprehenderit consequatur culpa velit. Et laboriosam ut qui similique laudantium ut veritatis. Accusantium magni ad fuga esse doloribus.',20,170,15960,NULL,'2016-04-29 02:12:08','1977-11-23 03:16:47',NULL,_binary '\0');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'film','2012-01-18 09:29:07','1996-03-30 01:59:15'),(2,'cartoon','2012-07-14 08:12:16','1989-01-31 21:35:53'),(3,'television series','1973-10-10 15:27:51','2003-05-10 18:34:47'),(4,'film','1976-10-03 12:14:00','2013-03-24 03:47:38'),(5,'movies','2004-12-16 17:37:41','1979-11-15 18:34:38'),(6,'movies','2003-06-24 21:01:10','1972-06-13 12:02:49'),(7,'television series','2015-07-20 19:10:38','2005-06-12 00:18:43'),(8,'movies','1989-07-07 00:55:25','1991-09-07 01:07:41'),(9,'film','1996-03-24 08:55:36','1983-02-25 07:44:52'),(10,'television series','2015-02-05 05:28:08','2012-06-18 06:10:16'),(11,'television series','1998-12-11 12:38:43','2000-05-15 09:33:11'),(12,'television series','2018-08-12 09:07:48','1974-04-13 00:21:05'),(13,'television series','2020-04-23 14:32:10','2013-08-27 15:04:32'),(14,'cartoon','2012-11-16 02:54:26','2008-10-26 20:15:43'),(15,'television series','1971-09-27 08:54:28','2003-05-19 14:37:30'),(16,'film','1973-11-15 13:57:13','2003-05-31 13:51:21'),(17,'film','1982-12-29 19:09:38','1987-03-22 03:30:34'),(18,'movies','1988-06-14 13:01:56','2014-09-26 03:36:54'),(19,'cartoon','1993-06-01 01:53:33','2014-12-30 09:35:01'),(20,'television series','1988-09-04 13:03:08','1973-06-30 00:47:50');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `name_info`
--

DROP TABLE IF EXISTS `name_info`;
/*!50001 DROP VIEW IF EXISTS `name_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `name_info` AS SELECT 
 1 AS `Name`,
 1 AS `Year`,
 1 AS `Type`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `persons_type`
--

DROP TABLE IF EXISTS `persons_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `persons_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons_type`
--

LOCK TABLES `persons_type` WRITE;
/*!40000 ALTER TABLE `persons_type` DISABLE KEYS */;
INSERT INTO `persons_type` VALUES (1,'cameraman'),(2,'producer'),(3,'cameraman'),(4,'scenarist'),(5,'composer'),(6,'scenarist'),(7,'producer'),(8,'producer'),(9,'actor'),(10,'producer'),(11,'composer'),(12,'cameraman'),(13,'cameraman'),(14,'actor'),(15,'composer'),(16,'producer'),(17,'scenarist'),(18,'producer'),(19,'producer'),(20,'scenarist');
/*!40000 ALTER TABLE `persons_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `size` int DEFAULT NULL,
  `metadata` longtext,
  PRIMARY KEY (`id`),
  CONSTRAINT `photos_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,33,NULL),(2,2021569,NULL),(3,2,NULL),(4,88562769,NULL),(5,160282212,NULL),(6,5229,NULL),(7,25195,NULL),(8,3617787,NULL),(9,2101,NULL),(10,0,NULL),(11,0,NULL),(12,94335,NULL),(13,169141,NULL),(14,704,NULL),(15,4,NULL),(16,66822,NULL),(17,757,NULL),(18,551274001,NULL),(19,954,NULL),(20,749556586,NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` bigint unsigned NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `photo_id` (`photo_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','1978-06-09',1,'2005-09-26 11:44:50'),(2,'m','1989-08-09',2,'1989-07-15 00:18:17'),(3,'m','2000-11-07',3,'2020-07-08 05:45:06'),(4,'f','1999-12-16',4,'1975-03-17 04:45:21'),(5,'m','1970-09-08',5,'1972-05-25 06:39:18'),(6,'f','2001-07-31',6,'1991-03-12 23:19:30'),(7,'m','2017-08-03',7,'2009-11-05 17:44:58'),(8,'m','1982-06-30',8,'1997-01-10 14:51:14'),(9,'m','1999-01-01',9,'1993-02-05 18:23:09'),(10,'f','2005-09-12',10,'1982-12-02 05:58:11'),(11,'m','2011-07-08',11,'2005-02-02 15:14:15'),(12,'f','1972-11-06',12,'1989-10-21 16:36:18'),(13,'f','2004-03-28',13,'1975-05-02 10:43:39'),(14,'f','1973-06-30',14,'1990-03-10 15:57:33'),(15,'m','2010-05-14',15,'2006-05-26 03:03:36'),(16,'f','2002-07-09',16,'2018-12-16 01:29:55'),(17,'f','1997-07-14',17,'1976-11-08 06:38:47'),(18,'m','2012-03-15',18,'1997-01-18 09:55:36'),(19,'m','2019-05-19',19,'2019-07-24 21:54:09'),(20,'f','2015-09-19',20,'1977-07-14 01:02:25');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `media_id` bigint unsigned NOT NULL,
  `rate` enum('0','1','2','3','4','5') NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,1,1,'3','1987-09-10 05:37:26'),(2,2,2,'5','2016-08-10 05:54:23'),(3,3,3,'4','1999-02-07 21:12:04'),(4,4,4,'5','1992-05-14 08:56:22'),(5,5,5,'5','2010-11-24 01:52:49'),(6,6,6,'0','1989-06-13 21:07:22'),(7,7,7,'5','1979-08-21 05:07:59'),(8,8,8,'0','1990-10-15 07:36:22'),(9,9,9,'0','2021-07-08 22:17:46'),(10,10,10,'4','2021-05-06 19:49:24'),(11,11,11,'3','2018-12-27 16:07:11'),(12,12,12,'2','2002-03-17 14:47:19'),(13,13,13,'4','2020-08-05 17:40:51'),(14,14,14,'0','1984-08-21 08:21:07'),(15,15,15,'5','2013-10-28 22:49:53'),(16,16,16,'3','1983-07-10 22:48:34'),(17,17,17,'3','2007-07-14 23:30:49'),(18,18,18,'0','1982-04-25 01:20:57'),(19,19,19,'2','2014-01-18 17:40:16'),(20,20,20,'0','2019-07-22 01:08:03');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_type`
--

DROP TABLE IF EXISTS `subscription_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subscription_type` varchar(255) NOT NULL,
  `price_subscription` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_type`
--

LOCK TABLES `subscription_type` WRITE;
/*!40000 ALTER TABLE `subscription_type` DISABLE KEYS */;
INSERT INTO `subscription_type` VALUES (1,' free',0),(2,'trial',1000),(3,' full',3228),(4,' free',0),(5,'trial',1000),(6,' full',3228),(7,' kids',4000),(8,' kids',4000),(9,' free',0),(10,' full',3228),(11,' kids',4000),(12,' full',3228),(13,' kids',4000),(14,'trial',1000),(15,' free',0),(16,' full',3228),(17,' kids',4000),(18,' kids',4000),(19,' kids',4000),(20,' free',0);
/*!40000 ALTER TABLE `subscription_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `subscription_type_id` bigint unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `subscriptions_ibfk_2` (`subscription_type_id`),
  CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`subscription_type_id`) REFERENCES `subscription_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password_hash` varchar(100) DEFAULT NULL,
  `phone` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Leon','Mosciski','bnolan@exampl.net','9cb210b5a4c2b33098c28ed9e1dd7d987a26c18e',89562758747),(2,'Sydney','Upton','jordan.jacobi@example.org','6cadb8240dfd28df9db7df0a1caf394d8a380ea5',89655295480),(3,'Jasen','Yundt','peggie.bode@example.org','87b055449d950ed8bf1ee2d11cc5e478391d9b52',89120981015),(4,'Mya','Koepp','pouros.maia@example.net','f1a0354ab74db1bb925f5130a83e831336ef60ec',89452243519),(5,'Wilfredo','Hegmann','allan29@example.com','c7b3a0ec9db1f1c1f6e4e05bdea142a8b180e6cb',89891519492),(6,'Katlyn','Auer','mina53@example.net','9b89e45d3660d560f7c80dd36c5bbccd70c5933d',89964777511),(7,'Leonie','Kuhic','marjory29@example.com','6dd1000b8c4233e20e048bd182e9c41674b3056e',89693882288),(8,'Duncan','Stroman','nkuhlman@example.net','dffaf7ea9b9587b9ef24c9e05629f165e4556b28',89246411288),(9,'Lenny','Lueilwitz','dillon31@example.org','4de895a34b0576c802d546c7f5781ae76917d4a7',89142999468),(10,'Libbie','Leannon','zetta.deckow@example.org','4393ec798bfd8737594a955e4ba86977fe5bcfd3',89742000757),(11,'Dante','Kerluke','lruecker@example.com','7062573c159aee0ec9173626fe3ebe6e5c39df06',89313514614),(12,'Cindy','VonRueden','delpha.hills@example.com','34f83bc75668e63e86286d27e35d56c493b9d0d1',89528834082),(13,'Lourdes','Lebsack','madge.hessel@example.net','d19920f91e42445cb52dde627224b1669a63847d',89039115346),(14,'Jayne','McLaughlin','egottlieb@example.net','1c37e9c30055a6dba93c1b65ec2aa6b82923c9d8',89274104128),(15,'Drake','Tillman','sigurd51@example.org','24171da158e900217a5c31a18792e7915f6a901f',89008135974),(16,'Cierra','Kuhn','fritz32@example.com','ade2e1b26da02cd8be890d75b488df6e0f9c913b',89584191658),(17,'Loraine','Miller','marcelina18@example.net','d147c1860189685f696022adbe801dbfd92c21e9',89669945193),(18,'Bart','Murazik','dare.larry@example.com','99675bfe6450cb58d15a6be296908baa7f468718',89477702724),(19,'Clay','Thiel','briana.swift@example.org','6582552a8481f819899729a8b3cc07078766f09c',89168521855),(20,'Karli','Williamson','schmidt.loren@example.com','79dc935d72efda61f9df4ba613c878a06274857c',89386181892);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `all_values`
--

/*!50001 DROP VIEW IF EXISTS `all_values`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_values` AS select `u`.`id` AS `id`,`u`.`firstname` AS `firstname`,`u`.`lastname` AS `lastname`,`u`.`email` AS `email`,`u`.`password_hash` AS `password_hash`,`u`.`phone` AS `phone`,`p`.`user_id` AS `user_id`,`p`.`gender` AS `gender`,`p`.`birthday` AS `birthday`,`p`.`photo_id` AS `photo_id`,`p`.`created_at` AS `created_at`,`pd`.`subscription_type_id` AS `subscription_type_id`,`tp`.`subscription_type` AS `subscription_type`,`tp`.`price_subscription` AS `price_subscription`,`mr`.`rate` AS `rate`,`md`.`required_subscription_type` AS `required_subscription_type`,`cf`.`actors_id` AS `actors_id` from ((((((`users` `u` join `profiles` `p` on((`u`.`id` = `p`.`user_id`))) join `subscriptions` `pd` on((`pd`.`user_id` = `u`.`id`))) join `subscription_type` `tp` on((`tp`.`id` = `pd`.`subscription_type_id`))) join `ratings` `mr` on((`mr`.`user_id` = `u`.`id`))) join `media` `md` on((`md`.`id` = `mr`.`media_id`))) left join `film_command` `cf` on((`cf`.`media_id` = `md`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `name_info`
--

/*!50001 DROP VIEW IF EXISTS `name_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `name_info` AS select concat(`u`.`firstname`,' ',`u`.`lastname`) AS `Name`,(year(curdate()) - year(`p`.`birthday`)) AS `Year`,`tp`.`subscription_type` AS `Type`,`tp`.`price_subscription` AS `Price` from (((`users` `u` join `profiles` `p` on((`u`.`id` = `p`.`user_id`))) join `subscriptions` `pd` on((`pd`.`user_id` = `u`.`id`))) join `subscription_type` `tp` on((`tp`.`id` = `pd`.`subscription_type_id`))) order by (year(curdate()) - year(`p`.`birthday`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-12 15:43:36
