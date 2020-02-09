-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id_cart` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordered` bit(1) NOT NULL,
  `id_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `FKd7fhinotgwm2xa9gq7rx9hl41` (`id_user`),
  CONSTRAINT `FKd7fhinotgwm2xa9gq7rx9hl41` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,_binary '\0',1),(2,_binary '\0',4),(3,_binary '\0',7),(4,_binary '',8),(5,_binary '',8),(6,_binary '',8),(7,_binary '\0',8),(8,_binary '\0',14),(9,_binary '\0',15),(10,_binary '\0',16),(11,_binary '\0',17),(12,_binary '\0',18),(13,_binary '\0',19);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id_product` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Yamaha MT07',NULL,7100),(2,'BMW S1000R',NULL,12600),(3,'Triumph Speed Triple RS',NULL,15400),(4,'Ruroc',NULL,550),(5,'Roof',NULL,400),(6,'AGV',NULL,1200),(7,'Gants été',NULL,30),(8,'Gants hiver',NULL,50),(9,'Chaussures',NULL,250),(10,'Manteau',NULL,200),(11,'pantalon de pluie',NULL,20),(12,'Support de telephone',NULL,80),(13,'Pneus',NULL,250);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `id_purchase` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `id_cart` bigint(20) DEFAULT NULL,
  `id_product` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_purchase`),
  KEY `FKry76r7l1c29ynxe2yy7ai73qh` (`id_cart`),
  KEY `FKkbbu5177f7arkx9yub9b094is` (`id_product`),
  CONSTRAINT `FKkbbu5177f7arkx9yub9b094is` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`),
  CONSTRAINT `FKry76r7l1c29ynxe2yy7ai73qh` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,1,1,1),(2,0,1,1),(3,1,1,1),(4,1,3,3),(7,1,4,1),(8,1,4,4),(9,1,4,6),(10,1,4,8),(11,1,4,9),(12,1,4,10),(13,1,4,11),(14,1,4,12),(15,1,4,13),(26,1,5,1);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_user` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'6 rue kruger, Batiment A, etage 3, appt A22','cardin.alexandre@gmail.com','Alexandre','PRIEUR','qwerty','0769521518',NULL),(4,NULL,'replay_76230@hotmail.fr',NULL,NULL,'asdf',NULL,NULL),(6,NULL,'a@a.fr',NULL,NULL,'qwerty',NULL,NULL),(7,'6 rue kruger, Batiment A, etage 3, appt A22','a@b.fr','Alexandre','PRIEUR','c4588c244df662b99346cded43c8b5a0b945d705498476d0bafe93b17b20ea5b','0769521518',NULL),(8,'6 rue kruger, Batiment A, etage 3, appt A22','q@q.fr','Alexandre','PRIEUR','a48b73b171baee6b8f5c00717e08031b9f884fd8315129f9ff2500dd74af9197','0769521518','/var/www/wildmotorstore/8-26111906_10213572017068530_765461139285709449_n.jpg'),(14,NULL,'rouslaurent@gmail.com',NULL,NULL,'d49fd2060620c189ebba44cedd6072b4ff722a6c8ba54c7bed03405def4730f7',NULL,NULL),(15,NULL,'asd@asd.fr',NULL,NULL,'d7e87d5a60caa284dfbc14b86a53bc60a22aeefc3823ce50cda4137873cc33cf',NULL,NULL),(16,NULL,'zxc@zxc.fr',NULL,NULL,'39107fc6425275b2ab23e3259bd889715a7d04b78c5e60e29f131a036fd4579a',NULL,NULL),(17,NULL,'',NULL,NULL,'a7277a772b6165c7f9fd395091be2da2e7c95a6ad6be68291e0bb75cf7c72e95',NULL,NULL),(18,NULL,'qwert@qwert.fr',NULL,NULL,'c541b9d436b0d5793fe68dcc43e0ab2f7dfa033281ec76c4212a8adab82a9182',NULL,'/private/var/folders/zv/gjt3dnsj25s7800jztf6pf640000gn/T/tomcat-docbase.9845253374415425087.8080/upload/26111906_10213572017068530_765461139285709449_n.jpg'),(19,NULL,'qaz@qaz.fr',NULL,NULL,'b991b1f22a5305c985733c3352c19dcb7ed90a6944b3818b22c36ceae07437ec',NULL,'/private/var/folders/zv/gjt3dnsj25s7800jztf6pf640000gn/T/tomcat-docbase.1852239976565340901.8080/upload/20200124_204256 copie.png');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-09 21:48:14
