-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: all4sport
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `appartient`
--

DROP TABLE IF EXISTS `appartient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartient` (
  `FK_reference` varchar(255) NOT NULL,
  `FK_GE` int NOT NULL,
  PRIMARY KEY (`FK_reference`,`FK_GE`),
  KEY `FK_reference` (`FK_reference`) /*!80000 INVISIBLE */,
  KEY `FK_GE` (`FK_GE`),
  CONSTRAINT `FK_GE` FOREIGN KEY (`FK_GE`) REFERENCES `genre` (`GE_ID`),
  CONSTRAINT `FK_reference` FOREIGN KEY (`FK_reference`) REFERENCES `produit` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartient`
--

LOCK TABLES `appartient` WRITE;
/*!40000 ALTER TABLE `appartient` DISABLE KEYS */;
INSERT INTO `appartient` VALUES ('122334',1),('123456',1),('133446',1),('133447',1),('133448',1),('133444',2),('133445',2),('133449',2);
/*!40000 ALTER TABLE `appartient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avoir`
--

DROP TABLE IF EXISTS `avoir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avoir` (
  `FK_reference` varchar(255) NOT NULL,
  `FK_FN` int NOT NULL,
  PRIMARY KEY (`FK_reference`,`FK_FN`),
  KEY `FK_reference` (`FK_reference`) /*!80000 INVISIBLE */,
  KEY `FK_FN` (`FK_FN`),
  CONSTRAINT `FK_FN` FOREIGN KEY (`FK_FN`) REFERENCES `fournisseur` (`FN_ID`),
  CONSTRAINT `FK_refrence` FOREIGN KEY (`FK_reference`) REFERENCES `produit` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avoir`
--

LOCK TABLES `avoir` WRITE;
/*!40000 ALTER TABLE `avoir` DISABLE KEYS */;
INSERT INTO `avoir` VALUES ('123456',1),('133447',1),('122334',2),('133446',2),('133444',3),('133448',3),('133445',4),('133449',4);
/*!40000 ALTER TABLE `avoir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `CA_ID` int NOT NULL AUTO_INCREMENT,
  `CA_libelle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'Pantalon'),(2,'Veste'),(3,'Chaussure'),(4,'Short');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrepot`
--

DROP TABLE IF EXISTS `entrepot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrepot` (
  `ID_Entre` int NOT NULL AUTO_INCREMENT,
  `Nom_Entre` varchar(75) DEFAULT NULL,
  `Adresse_Entre` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`ID_Entre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrepot`
--

LOCK TABLES `entrepot` WRITE;
/*!40000 ALTER TABLE `entrepot` DISABLE KEYS */;
INSERT INTO `entrepot` VALUES (1,'Havres','1 rue du Havres'),(2,'Marseille','45 rue de Marseille'),(3,'Lyon','21 rue de Lyon');
/*!40000 ALTER TABLE `entrepot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fournisseur` (
  `FN_ID` int NOT NULL AUTO_INCREMENT,
  `FN_libelle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (1,'Thibaut'),(2,'Simon'),(3,'Benjamin'),(4,'Lucas');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `GE_ID` int NOT NULL AUTO_INCREMENT,
  `GE_libelle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Masculin'),(2,'feminin');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magasin`
--

DROP TABLE IF EXISTS `magasin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magasin` (
  `MAG_ID` int NOT NULL AUTO_INCREMENT,
  `adress_MAG` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`MAG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magasin`
--

LOCK TABLES `magasin` WRITE;
/*!40000 ALTER TABLE `magasin` DISABLE KEYS */;
INSERT INTO `magasin` VALUES (1,'12 rue de Lille'),(2,'5 rue de Tour'),(3,'32 rue de Bordeaux');
/*!40000 ALTER TABLE `magasin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marque`
--

DROP TABLE IF EXISTS `marque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marque` (
  `MA_ID` int NOT NULL AUTO_INCREMENT,
  `MA_libelle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marque`
--

LOCK TABLES `marque` WRITE;
/*!40000 ALTER TABLE `marque` DISABLE KEYS */;
INSERT INTO `marque` VALUES (1,'Nike'),(2,'adidas'),(3,'puma');
/*!40000 ALTER TABLE `marque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `possede`
--

DROP TABLE IF EXISTS `possede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `possede` (
  `fk_reference` varchar(255) NOT NULL,
  `fk_entre` int NOT NULL,
  `Quantité_entre` int DEFAULT NULL,
  PRIMARY KEY (`fk_reference`,`fk_entre`),
  KEY `index1` (`fk_reference`),
  KEY `index2` (`fk_entre`),
  CONSTRAINT `fk_entre_` FOREIGN KEY (`fk_entre`) REFERENCES `entrepot` (`ID_Entre`),
  CONSTRAINT `fk_reference_` FOREIGN KEY (`fk_reference`) REFERENCES `produit` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `possede`
--

LOCK TABLES `possede` WRITE;
/*!40000 ALTER TABLE `possede` DISABLE KEYS */;
INSERT INTO `possede` VALUES ('122334',2,54),('123456',1,64),('133444',2,12),('133445',3,32),('133447',3,12),('133448',1,98),('133449',2,6);
/*!40000 ALTER TABLE `possede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `reference` varchar(255) NOT NULL,
  `Nom_produit` varchar(55) DEFAULT NULL,
  `Prix_TTC` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `FK_CA` int NOT NULL,
  `FK_MA` int NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reference`),
  KEY `FK_MA` (`FK_MA`) /*!80000 INVISIBLE */,
  KEY `FK_CA` (`FK_CA`),
  CONSTRAINT `FK_CA` FOREIGN KEY (`FK_CA`) REFERENCES `categorie` (`CA_ID`),
  CONSTRAINT `FK_MA` FOREIGN KEY (`FK_MA`) REFERENCES `marque` (`MA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES ('122334','veste',90,'Pour ne pas avoir froid',2,2,'https://img01.ztat.net/article/spp-media-p1/517b5e501c2a3510bda36d45883d8d23/b3ff73f9279c4165b93085d4b9ae6820.jpg?imwidth=762&filter=packshot','https://cdn.discordapp.com/attachments/885502016401596507/895637029092720700/veste-adulte-squadra-2021-noir.png','https://cdn.discordapp.com/attachments/885502016401596507/895637055441350696/veste-adulte-squadra-2021-noir.png','https://cdn.discordapp.com/attachments/885502016401596507/895637082456870952/veste-adulte-squadra-2021-noir.png'),('123456','pantalon',110,'faire du sport dans de bonne conditions',1,3,'https://media.wuerth.com/stmedia/modyf/shop/900px/1370911.jpg','https://media.wuerth.com/stmedia/modyf/shop/900px/1593677.jpg','https://media.wuerth.com/stmedia/modyf/shop/900px/2415846.jpg','https://media.wuerth.com/stmedia/modyf/shop/900px/2415848.jpg'),('133444','veste',67,'faire du sport dans de bonne conditions',2,2,'https://contents.mediadecathlon.com/m838393/k$4c68f9e9eda376081c28150bc9b9d1fc/sq/veste-dhiver-femme-erima-squad.jpg?format=auto&f=646x646','https://contents.mediadecathlon.com/m838379/k$18e2c882fa7d2e7a76af656837306c65/sq/veste-dhiver-femme-erima-squad.jpg?format=auto&f=646x646','https://contents.mediadecathlon.com/m838384/k$643642a90d33f304fd85fad97e6cc528/sq/veste-dhiver-femme-erima-squad.jpg?format=auto&f=646x646','https://contents.mediadecathlon.com/m838389/k$059b887df31af316444cce2df7dd98e1/sq/veste-dhiver-femme-erima-squad.jpg?format=auto&f=646x646'),('133445','shortM',43,'faire du sport dans de bonne conditions',4,1,'https://cdn.shopify.com/s/files/1/0267/4049/0349/products/eng_pl_Mens-sweatshorts-W292-light-grey-19775_4_1024x1024.jpg?v=1624814170','https://cdn.shopify.com/s/files/1/0267/4049/0349/products/eng_pl_Mens-sweatshorts-W292-light-grey-19775_1-2_1024x1024.jpg?v=1624814170','https://cdn.shopify.com/s/files/1/0267/4049/0349/products/eng_pl_Mens-sweatshorts-W292-light-grey-19775_2_1024x1024.jpg?v=1624814170','https://cdn.shopify.com/s/files/1/0267/4049/0349/products/eng_pl_Mens-sweatshorts-W292-light-grey-19775_3_1024x1024.jpg?v=1624814155'),('133446','shortF',67,'faire du sport dans de bonne conditions',4,1,'https://www.ladroguerie.com/wp-content/uploads/2019/04/short-place-malesherbes-cote.jpg','https://www.ladroguerie.com/wp-content/uploads/2019/04/short-place-malesherbes-cote.jpg','https://www.ladroguerie.com/wp-content/uploads/2017/10/short-malesherbes-kit-couture-zoom.jpg','https://www.ladroguerie.com/wp-content/uploads/2017/10/short-malesherbes-kit-couture-dos.jpg'),('133447','chaussure',200,'faire du sport dans de bonne conditions',3,2,'https://www.chaussuresduchateau.com/CDUC_WEB/photos/Webzoom/6320702_1.jpg','https://cdn.discordapp.com/attachments/885502016401596507/895637409398673428/da319ae1586c47d4a4cf6917df3c0a46.png','https://cdn.discordapp.com/attachments/885502016401596507/895637437253029958/3b209ea423c14e1187be272b530b9c0d.png','https://cdn.discordapp.com/attachments/885502016401596507/895637453669548072/684d0bff67604dc09ce66cde3929cd92.png'),('133448','chaussure',243,'faire du sport dans de bonne conditions',3,2,'https://www.otago-rugby.com/1112-large_default/melody-suede-chaussure-bleu-marine.jpg','https://www.otago-rugby.com/1112-large_default/melody-suede-chaussure-bleu-marine.jpg','https://www.otago-rugby.com/1111-large_default/melody-suede-chaussure-bleu-marine.jpg','https://www.otago-rugby.com/1114-large_default/melody-suede-chaussure-bleu-marine.jpg'),('133449','pantalon',48,'faire du sport dans de bonne conditions',1,3,'https://www.3suisses.fr/media/produits/iconic/img/pantalon-jogging-ample_3200492-2_1200x1200.jpg','https://www.3suisses.fr/media/produits/iconic/img/pantalon-jogging-ample_3200492_1200x1200.jpg','https://www.3suisses.fr/media/produits/iconic/img/pantalon-jogging-ample_3200492_1200x1200.jpg','https://www.3suisses.fr/media/produits/iconic/img/pantalon-jogging-ample_3200492-3_1200x1200.jpg');
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `FK_reference` varchar(255) NOT NULL,
  `FK_MAG` int NOT NULL,
  `Quantité_mag` int DEFAULT NULL,
  PRIMARY KEY (`FK_reference`,`FK_MAG`),
  KEY `FK_reference` (`FK_reference`) /*!80000 INVISIBLE */,
  KEY `FK_MAG` (`FK_MAG`),
  CONSTRAINT `FK_MAG_` FOREIGN KEY (`FK_MAG`) REFERENCES `magasin` (`MAG_ID`),
  CONSTRAINT `FK_reference_1` FOREIGN KEY (`FK_reference`) REFERENCES `produit` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES ('122334',2,34),('123456',1,43),('133444',1,12),('133445',3,34),('133447',3,65),('133448',2,21),('133449',3,13);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-31  9:54:32
