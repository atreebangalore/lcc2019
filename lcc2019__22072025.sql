-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: lcc2019
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `lcc_products`
--

DROP TABLE IF EXISTS `lcc_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lcc_products` (
  `lccp_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lccp_cat` varchar(500) NOT NULL,
  `lccp_name` varchar(500) NOT NULL,
  `lccp_dimdesc` text NOT NULL,
  `lccp_pic` text NOT NULL,
  `lccp_curr` varchar(500) NOT NULL,
  `lccp_price` double NOT NULL,
  PRIMARY KEY (`lccp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lcc_products`
--

LOCK TABLES `lcc_products` WRITE;
/*!40000 ALTER TABLE `lcc_products` DISABLE KEYS */;
INSERT INTO `lcc_products` VALUES (32,'Sofa','Sofa set (3+2+1)','3 seated sofa (1 no)\r\nH: 17\'x L: 60\'x W: 20\'\r\n\r\nChairs (2 no)\r\nH: 17\'x L: 20\'x W: 20\'\r\n\r\nTepai (1 no)\r\nh: 17\'x L: 30\'x W: 18\'\r\n','sofa_set_321_1.png','INR',13200),(33,'Sofa','3 seated sofa Single','H:17 x L:60 x W:20','3_seated_sofa_single.png','INR',5500),(34,'Sofa','Single Sofa Chair','H:17 x L:20 x W:20','single_sofa_chair.png','INR',2750),(35,'Tepai','Tepai','H:17 x L:30 x W:18','tepai_1.png','INR',2200),(36,'Cot','Single bed cot(Old model)','H:17 x L:78 X W:36','single_bed_cot_old_model.png','INR',6050),(37,'Shelf','Book shelf(6 racks)','H:72 x L:30 x w:12','book_shelf_6_racks.png','INR',6050),(38,'shelf','Book Shelf(4 Racks)','H:49 x L:30 x W:12','book_shelf_4_racks.png','INR',4400),(39,'Shelf','Book Shelf (3 Racks)','H:36 x L:30 x W:12','book_shelf_3_racks.png','INR',3300),(40,'Chair','Baby Chair Set(4+1)','H:12 x L:27 x W:12','baby_chair_set_41.png','INR',6600),(41,'Dining Set','Dining Set (4+1)','Dining table\r\nH:30 x L:36 x W:48\r\n\r\nDining chairs\r\nH:17 x L:15 x W:15','dining_set_41.png','INR',12100),(42,'Box','Cloth Box','H:18 x	L:15 x W:15','cloth_box_1.png','INR',2200),(43,'Stand','Corner Stand','H:17 x L:12 x W:12','corner_stand_1.png','INR',1100),(44,'Shelf','Corner Shelf (4 Rack)','H:44 x L:15 x W:15','corner_shelf_4_rack.png','INR',3850),(45,'Basket','Butterfly Basket','H:12 x L:15 x W:10','butterfly_basket.png','INR',550),(46,'Chair','Single Chair Without Armrest','H:17 x L:15 x W:15','single_chair_wo_armrest.png','INR',1500),(47,'Table','Study Table Set (1+1)','Table		\r\nH:30 x L:30 x W:18\r\nChair\r\nH:17 x L:15 W:15','study_table_set_11.png','INR',5500),(48,'Stand','TV Stand','H:18 x L:78 x W:18','tv_stand_1.png','INR',4400),(49,'Stand','Pen Stand','H:15cm x L:10cm x W:10cm','pen_stand_1.png','INR',275),(50,'Bin','Dust Bin','H:12 x L:9 x W:9','dustbin_1.png','INR',825),(51,'Cot','Double Bed Cot (Old Model)','H:17 x L:78 x W:60','double_bet_cot_old_model.png','INR',11000),(52,'Tepai','Oval Shaped Tepai','H:17 x L:30 x W:15','oval_shaped_tepai.png','INR',2200),(53,'Tepai','Round shaped tepai','H:17 x L:30 x W:15','round_shaped_tepai.png','INR',2200),(54,'Tepai','Pentagon shaped tepai','H:17 x L:30 x W:15','pentagon_shaped_tepai.png','INR',2200),(55,'Stand','Key Holder Stand','H:12 x L:12 x W:12','key_holder_stand.png','INR',440),(56,'Sofa','Sofa Set 3+2+1 (New Model)','Sofa (1 no)\r\nH:17 x L:60 x W:20\r\n\r\nChairs (2 no)\r\nH:17 x L:20 x W:20\r\n\r\nTepai (1 no)\r\nH:17 x L:30 diameters	 \r\n','sofa_set_321_new_model.png','INR',24200),(57,'Box','Gift Box','H:4 x L:5 x W:5','gift_box.png','INR',825),(58,'Dining Set','Dining table set 6+1 (new modal)','Dining table\r\nH:30 x L:30 x W:72\r\nChairs (6 no)\r\nH:17 x L:15 x W:15\r\n','dining_table_set_61_new_model.png','INR',22000),(59,'Basket','Gift Basket','H:12 x L:7 x W:7','gift_basket.png','INR',385),(60,'Basket','Gift Basket','H:6 x L:5 x W:5','gift_basket_1.png','INR',275),(61,'Cot','Single bed cot (new model)','H:17 x L:78 x W:36','single_bed_cot_new_model.png','INR',11000),(62,'Cot','Double Bed Cot (New Model)','H:17 x L:78 x W:60','double_bed_cot_new_model.png','INR',19800),(63,'Flower Vase','Flower Vase Set','H:17','flower_vase_set.png','INR',1200),(64,'Moda','Moda Round Type','H:17 x L:15','moda_round_type.png','INR',1650),(65,'Table','Tea Table Set (4+1)','Chairs (4 no)\r\nH:17 x L:15 diameters\r\nTable\r\nH:17 x L:20 diameters\r\n','tea_table_set_41.png','INR',8800),(66,'Chair','Baby Chair Set(2+1)','H:12 x L:27 x W:12','baby_chair_set_41.png','INR',3300),(67,'Holder','Laptop holder','','na.png','INR',550),(68,'Utility product','Plant holder','Dimensions: 9\' X 15\' X 15\'','plant_holder.png','INR',825),(69,'Utility product','Pineapple','Dimensions: 5\' X 12\'','pineapple.png','INR',825),(70,'Utility product','Tray','Dimensions: 15\' X 9\'','tray.png','INR',1100),(71,'Sofa','2 seater sofa','Dimensions: 40\' X 15\' X 32\'','2_seater_sofa.png','INR',4400);
/*!40000 ALTER TABLE `lcc_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lcc_products_18022020`
--

DROP TABLE IF EXISTS `lcc_products_18022020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lcc_products_18022020` (
  `lccp_id` bigint(20) NOT NULL DEFAULT '0',
  `lccp_cat` varchar(500) NOT NULL,
  `lccp_name` varchar(500) NOT NULL,
  `lccp_dimdesc` text NOT NULL,
  `lccp_pic` text NOT NULL,
  `lccp_curr` varchar(500) NOT NULL,
  `lccp_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lcc_products_18022020`
--

LOCK TABLES `lcc_products_18022020` WRITE;
/*!40000 ALTER TABLE `lcc_products_18022020` DISABLE KEYS */;
INSERT INTO `lcc_products_18022020` VALUES (1,'Sofa','Single Sofa (3 seater)','H x L x W = 17in x 60in x 20in','3_seater_single_sofa.jpg','INR',3000),(2,'Sofa','Sofa 3+2+1','# Three seater\nl x w x h = 5ft x 1ft 9inx 2ft 7in\n\n# Chair\nl x w x h = 1ft 9in x 1ft 9in x 2ft 7in\n\n# Coffee table\nl x w x h = 2ft 7in x 1ft 7inx 1ft 5in','3_seater_sofa_set.jpg','INR',8000),(3,'Sofa','Sofa','','lcc_sofa_new.gif','INR',3000),(4,'Sofa','Two Seater Sofa','l x w x h = 3ft 4in x 1ft 8in x 2ft 7in','2_seater_sofa_set.jpg','INR',6000),(5,'Cot','Double Bed Cot','4.5in x 6.5in','lcc_cot65.gif','INR',6000),(6,'Cot','Single Bed Cot','l x w x h = 3ft x 6ft x 17in','single_bed_cot.jpg','INR',3500),(7,'Chair','Single Chair with arm','h x l x w = 17in x 20in x 20\"','na.png','INR',1500),(8,'Chair','Baby Chair Set(4+1)','h x l x w = 12in x 15in x 12in','lcc_smallchairs_0.gif','INR',4000),(9,'Chair','Small Chair Set 2+1','Small Chair Set 2+1','lcc_smallchairset_21.gif','INR',1800),(10,'Chair','Small Chairs','l x w = 15in x 15in','lcc_smallchairs.gif','INR',1000),(11,'Chair','Chairs (without arm rest)','l x w x h =1ft 9in x 1ft 9in x 2ft 7in','armless_single_chair.jpg','INR',1200),(12,'Chair','Sofa chair','l x w x h =1ft 9in x 1ft 9in x 2ft 7in','Sofa_chair.jpg','INR',1500),(13,'Shelf','Corner Shelf (3 racks)','h x l x w = 32in x 15in x 15in','na.png','INR',1250),(14,'Shelf','Corner shelf(4 racks)','h x l x w = 44in x 15in x 15in','na.png','INR',1500),(15,'Shelf','Book Shelf (Standard)','w x h = 2ft 7in x 4ft 6in','lcc_bookshelf_std.gif','INR',2500),(16,'Shelf','Book Shelf (Arch Type)','# w x h = 2ft 7in x 5ft\n# Depth = 1ft','lcc_bookshelf_at.gif','INR',3500),(17,'Shelf','Corner Shelf','h x l x w = 44in x 15in x 15in','lcc_cornershelf.gif','INR',2000),(18,'Shelf','Small Shelf','H x L x W = 36in x 30in x 12in','lcc_smallshelf.gif','INR',2000),(19,'Shelf','Book Shelf','# w x h = 2ft 7in x 6ft\n# Depth = 1ft','lcc_bookshelf_1.gif','INR',4000),(20,'Table','Dining Set 4 + 1','h x l x w = 17in x 15in x 15in\n4 + 1','dinning_set_without_glass.jpg','INR',5500),(21,'Table','Coffee Table','h x w x l = 18in x 18in x 30in','lcc_coffeetable_1.gif','INR',500),(22,'Table','Study Table','# w x h = 3ft x 3ft\n# Depth =1ft 6in','lcc_studytable_1.gif','INR',3000),(23,'Swing','Swing','# w x h = 1ft 6in x 3ft\n# Depth =1ft 3in','lcc_swing_1.gif','INR',750),(24,'Stand','Pen stand','','na.png','INR',100),(25,'Stand','TV stand\n','h x l x w = 18in x 78in x 18in','na.png','INR',3000),(26,'Stand','Corner stand','h x l x w = 17in x 12in x 12in','corner_stand.jpg','INR',500),(27,'Stand','Helmet Stand','h = 3ft 6in','lcc_helmetstand_1.gif','INR',500),(28,'Box','Dust bin','h x l x w = 12in x 9in x 9in','dustbin.jpg','INR',400),(29,'Box','Clothes Box','l x w x h = 18in x 15in x 15in','lcc_clothesbox_new.gif','INR',1000),(30,'Teapai','Teapai','H x L x W = 17in x 30in x 18in','lcc_teapai_big.gif','INR',1000),(31,'Teapai','2 Chair 1 Teapai','','lcc_2chair1_teapai.gif','INR',3200);
/*!40000 ALTER TABLE `lcc_products_18022020` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lcc_products_18042022`
--

DROP TABLE IF EXISTS `lcc_products_18042022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lcc_products_18042022` (
  `lccp_id` bigint(20) NOT NULL DEFAULT '0',
  `lccp_cat` varchar(500) NOT NULL,
  `lccp_name` varchar(500) NOT NULL,
  `lccp_dimdesc` text NOT NULL,
  `lccp_pic` text NOT NULL,
  `lccp_curr` varchar(500) NOT NULL,
  `lccp_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lcc_products_18042022`
--

LOCK TABLES `lcc_products_18042022` WRITE;
/*!40000 ALTER TABLE `lcc_products_18042022` DISABLE KEYS */;
INSERT INTO `lcc_products_18042022` VALUES (32,'Sofa','Sofa set (3+2+1)','3 seated sofa (1 no)\r\nH: 17\'x L: 60\'x W: 20\'\r\n\r\nChairs (2 no)\r\nH: 17\'x L: 20\'x W: 20\'\r\n\r\nTepai (1 no)\r\nh: 17\'x L: 30\'x W: 18\'\r\n','sofa_set_321_1.png','INR',12000),(33,'Sofa','3 seated sofa Single','H:17 x L:60 x W:20','3_seated_sofa_single.png','INR',5000),(34,'Sofa','Single Sofa Chair','H:17 x L:20 x W:20','single_sofa_chair.png','INR',2500),(35,'Tepai','Tepai','H:17 x L:30 x W:18','tepai_1.png','INR',2000),(36,'Cot','Single bed cot(Old model)','H:17 x L:78 X W:36','single_bed_cot_old_model.png','INR',5500),(37,'Shelf','Book shelf(6 racks)','H:72 x L:30 x w:12','book_shelf_6_racks.png','INR',5500),(38,'shelf','Book Shelf(4 Racks)','H:49 x L:30 x W:12','book_shelf_4_racks.png','INR',4000),(39,'Shelf','Book Shelf (3 Racks)','H:36 x L:30 x W:12','book_shelf_3_racks.png','INR',3000),(40,'Chair','Baby Chair Set(4+1)','H:12 x L:27 x W:12','baby_chair_set_41.png','INR',6000),(41,'Dining Set','Dining Set (4+1)','Dining table\r\nH:30 x L:36 x W:48\r\n\r\nDining chairs\r\nH:17 x L:15 x W:15','dining_set_41.png','INR',11000),(42,'Box','Cloth Box','H:18 x	L:15 x W:15','cloth_box_1.png','INR',2000),(43,'Stand','Corner Stand','H:17 x L:12 x W:12','corner_stand_1.png','INR',1000),(44,'Shelf','Corner Shelf (4 Rack)','H:44 x L:15 x W:15','corner_shelf_4_rack.png','INR',3500),(45,'Basket','Butterfly Basket','H:12 x L:15 x W:10','butterfly_basket.png','INR',500),(46,'Chair','Single Chair Without Armrest','H:17 x L:15 x W:15','single_chair_wo_armrest.png','INR',1500),(47,'Table','Study Table Set (1+1)','Table		\r\nH:30 x L:30 x W:18\r\nChair\r\nH:17 x L:15 W:15','study_table_set_11.png','INR',5000),(48,'Stand','TV Stand','H:18 x L:78 x W:18','tv_stand_1.png','INR',4000),(49,'Stand','Pen Stand','H:15cm x L:10cm x W:10cm','pen_stand_1.png','INR',250),(50,'Bin','Dust Bin','H:12 x L:9 x W:9','dustbin_1.png','INR',750),(51,'Cot','Double Bed Cot (Old Model)','H:17 x L:78 x W:60','double_bet_cot_old_model.png','INR',10000),(52,'Tepai','Oval Shaped Tepai','H:17 x L:30 x W:15','oval_shaped_tepai.png','INR',1500),(53,'Tepai','Round shaped tepai','H:17 x L:30 x W:15','round_shaped_tepai.png','INR',1500),(54,'Tepai','Pentagon shaped tepai','H:17 x L:30 x W:15','pentagon_shaped_tepai.png','INR',1500),(55,'Stand','Key Holder Stand','H:12 x L:12 x W:12','key_holder_stand.png','INR',400),(56,'Sofa','Sofa Set 3+2+1 (New Model)','Sofa (1 no)\r\nH:17 x L:60 x W:20\r\n\r\nChairs (2 no)\r\nH:17 x L:20 x W:20\r\n\r\nTepai (1 no)\r\nH:17 x L:30 diameters	 \r\n','sofa_set_321_new_model.png','INR',22000),(57,'Box','Gift Box','H:4 x L:5 x W:5','gift_box.png','INR',750),(58,'Dining Set','Dining table set 6+1 (new modal)','Dining table\r\nH:30 x L:30 x W:72\r\nChairs (6 no)\r\nH:17 x L:15 x W:15\r\n','dining_table_set_61_new_model.png','INR',20000),(59,'Basket','Gift Basket','H:12 x L:7 x W:7','gift_basket.png','INR',350),(60,'Basket','Gift Basket','H:6 x L:5 x W:5','gift_basket_1.png','INR',250),(61,'Cot','Single bed cot (new model)','H:17 x L:78 x W:36','single_bed_cot_new_model.png','INR',10000),(62,'Cot','Double Bed Cot (New Model)','H:17 x L:78 x W:60','double_bed_cot_new_model.png','INR',18000),(63,'Flower Vase','Flower Vase Set','H:17','flower_vase_set.png','INR',1200),(64,'Moda','Moda Round Type','H:17 x L:15','moda_round_type.png','INR',1500),(65,'Table','Tea Table Set (4+1)','Chairs (4 no)\r\nH:17 x L:15 diameters\r\nTable\r\nH:17 x L:20 diameters\r\n','tea_table_set_41.png','INR',8000),(66,'Chair','Baby Chair Set(2+1)','H:12 x L:27 x W:12','baby_chair_set_41.png','INR',3000),(67,'Holder','Laptop holder','','na.png','INR',500),(68,'Utility product','Plant holder','Dimensions: 9\' X 15\' X 15\'','plant_holder.png','INR',750),(69,'Utility product','Pineapple','Dimensions: 5\' X 12\'','pineapple.png','INR',750),(70,'Utility product','Tray','Dimensions: 15\' X 9\'','tray.png','INR',1000),(71,'Sofa','2 seater sofa','Dimensions: 40\' X 15\' X 32\'','2_seater_sofa.png','INR',4000);
/*!40000 ALTER TABLE `lcc_products_18042022` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lcc_products_18112021`
--

DROP TABLE IF EXISTS `lcc_products_18112021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lcc_products_18112021` (
  `lccp_id` bigint(20) NOT NULL DEFAULT '0',
  `lccp_cat` varchar(500) NOT NULL,
  `lccp_name` varchar(500) NOT NULL,
  `lccp_dimdesc` text NOT NULL,
  `lccp_pic` text NOT NULL,
  `lccp_curr` varchar(500) NOT NULL,
  `lccp_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lcc_products_18112021`
--

LOCK TABLES `lcc_products_18112021` WRITE;
/*!40000 ALTER TABLE `lcc_products_18112021` DISABLE KEYS */;
INSERT INTO `lcc_products_18112021` VALUES (32,'Sofa','Sofa set (3+2+1)','3 seated sofa (1 no)\r\nH: 17\'x L: 60\'x W: 20\'\r\n\r\nChairs (2 no)\r\nH: 17\'x L: 20\'x W: 20\'\r\n\r\nTepai (1 no)\r\nh: 17\'x L: 30\'x W: 18\'\r\n','sofa_set_321_1.png','INR',10000),(33,'Sofa','3 seated sofa Single','H:17 x L:60 x W:20','3_seated_sofa_single.png','INR',4500),(34,'Sofa','Single Sofa Chair','H:17 x L:20 x W:20','single_sofa_chair.png','INR',2000),(35,'Tepai','Tepai','H:17 x L:30 x W:18','tepai_1.png','INR',1500),(36,'Cot','Single bed cot(Old model)','H:17 x L:78 X W:36','single_bed_cot_old_model.png','INR',4500),(37,'Shelf','Book shelf(6 racks)','H:72 x L:30 x w:12','book_shelf_6_racks.png','INR',4500),(38,'shelf','Book Shelf(4 Racks)','H:49 x L:30 x W:12','book_shelf_4_racks.png','INR',3000),(39,'Shelf','Book Shelf (3 Racks)','H:36 x L:30 x W:12','book_shelf_3_racks.png','INR',2000),(40,'Chair','Baby Chair Set(4+1)','H:12 x L:27 x W:12','baby_chair_set_41.png','INR',4500),(41,'Dining Set','Dining Set (4+1)','Dining table\r\nH:30 x L:36 x W:48\r\n\r\nDining chairs\r\nH:17 x L:15 x W:15','dining_set_41.png','INR',4500),(42,'Box','Cloth Box','H:18 x	L:15 x W:15','cloth_box_1.png','INR',1500),(43,'Stand','Corner Stand','H:17 x L:12 x W:12','corner_stand_1.png','INR',750),(44,'Shelf','Corner Shelf (4 Rack)','H:44 x L:15 x W:15','corner_shelf_4_rack.png','INR',2500),(45,'Basket','Butterfly Basket','H:12 x L:15 x W:10','butterfly_basket.png','INR',300),(46,'Chair','Single Chair Without Armrest','H:17 x L:15 x W:15','single_chair_wo_armrest.png','INR',1500),(47,'Table','Study Table Set (1+1)','Table		\r\nH:30 x L:30 x W:18\r\nChair\r\nH:17 x L:15 W:15','study_table_set_11.png','INR',4000),(48,'Stand','TV Stand','H:18 x L:78 x W:18','tv_stand_1.png','INR',3000),(49,'Stand','Pen Stand','H:15cm x L:10cm x W:10cm','pen_stand_1.png','INR',150),(50,'Bin','Dust Bin','H:12 x L:9 x W:9','dustbin_1.png','INR',750),(51,'Cot','Double Bed Cot (Old Model)','H:17 x L:78 x W:60','double_bet_cot_old_model.png','INR',7000),(52,'Tepai','Oval Shaped Tepai','H:17 x L:30 x W:15','oval_shaped_tepai.png','INR',1500),(53,'Tepai','Round shaped tepai','H:17 x L:30 x W:15','round_shaped_tepai.png','INR',1500),(54,'Tepai','Pentagon shaped tepai','H:17 x L:30 x W:15','pentagon_shaped_tepai.png','INR',1500),(55,'Stand','Key Holder Stand','H:12 x L:12 x W:12','key_holder_stand.png','INR',300),(56,'Sofa','Sofa Set 3+2+1 (New Model)','Sofa (1 no)\r\nH:17 x L:60 x W:20\r\n\r\nChairs (2 no)\r\nH:17 x L:20 x W:20\r\n\r\nTepai (1 no)\r\nH:17 x L:30 diameters	 \r\n','sofa_set_321_new_model.png','INR',20000),(57,'Box','Gift Box','H:4 x L:5 x W:5','gift_box.png','INR',500),(58,'Dining Set','Dining table set 6+1 (new modal)','Dining table\r\nH:30 x L:30 x W:72\r\nChairs (6 no)\r\nH:17 x L:15 x W:15\r\n','dining_table_set_61_new_model.png','INR',18000),(59,'Basket','Gift Basket','H:12 x L:7 x W:7','gift_basket.png','INR',250),(60,'Basket','Gift Basket','H:6 x L:5 x W:5','gift_basket_1.png','INR',175),(61,'Cot','Single bed cot (new model)','H:17 x L:78 x W:36','single_bed_cot_new_model.png','INR',9000),(62,'Cot','Double Bed Cot (New Model)','H:17 x L:78 x W:60','double_bed_cot_new_model.png','INR',18000),(63,'Flower Vase','Flower Vase Set','H:17','flower_vase_set.png','INR',1200),(64,'Moda','Moda Round Type','H:17 x L:15','moda_round_type.png','INR',1200),(65,'Table','Tea Table Set (4+1)','Chairs (4 no)\r\nH:17 x L:15 diameters\r\nTable\r\nH:17 x L:20 diameters\r\n','tea_table_set_41.png','INR',7500);
/*!40000 ALTER TABLE `lcc_products_18112021` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-22 10:01:06
