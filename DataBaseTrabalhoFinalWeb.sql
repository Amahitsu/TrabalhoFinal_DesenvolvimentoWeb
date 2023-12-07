-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: trabalhofinalweb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Dumping data for table `imagens`
--

LOCK TABLES `imagens` WRITE;
/*!40000 ALTER TABLE `imagens` DISABLE KEYS */;
INSERT INTO `imagens` VALUES (1,'My Hero Academia - Vol. 1','https://m.media-amazon.com/images/I/71bELfIWTDL._SL1000_.jpg'),(2,'My Hero Academia - Vol. 25','https://m.media-amazon.com/images/I/616bO6EOHJL._SL1000_.jpg'),(3,'Sangatsu no Lion: O Leão de Março - Vol. 01','https://m.media-amazon.com/images/I/61L7dU3avFL._SL1000_.jpg'),(4,'Zom 100 - Coisas para fazer antes de virar zumbi Vol. 01','https://m.media-amazon.com/images/I/71ci0bin3oL._SL1000_.jpg'),(5,'Suicide Club','https://m.media-amazon.com/images/I/71LS7PJiMDL._SL1386_.jpg');
/*!40000 ALTER TABLE `imagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (6,1,26.47,1),(7,1,28.82,2),(8,1,26.47,1);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Em um mundo onde quase toda a população possui algum poder sobre-humano, Izuku Midoriya é um dos poucos casos de pessoas comuns. Mas esse não é o maior de seus problemas. Exatamente por ser desprovido de qualquer poder, Izuku sofre constantemente nas mãos de seus colegas de classe. Nesse mundo fictício, desde o primeiro caso constatado de um recém-nascido com algum tipo de poder, o índice de criminalidade cresceu proporcional ao surgimento de heróis com as mais variadas capacidades. E, como não poderia deixar de ser, o sonho de Izuku é se tornar um super-herói. Isso parecia impossível até o dia que ele ajuda o poderoso All Might na captura de um vilão gosmento. Ao demonstrar grande coragem e um forte senso de justiça, com a ajuda do famoso herói de cabelos louros, o garoto, enfim, terá a chance de se tornar quem sempre sonhou! AUTOR: Kohei Horikoshi No. PÁGINAS: 200',26.47,'My Hero Academia - Vol. 1 ',1),(2,'A terrível origem de Shigaraki é finalmente revelada. Junto dela, o líder da Liga dos Vilôes recupera a sua memória e isso terá sérias consequências em seus objetivos. Enquanto isso, Hawks realiza uma difícil missão ao mesmo tempo que os alunos da U.A. começam seus estágios nas agências de heróis. O universo de My Hero Academia está prestes a entrar em ebulição!!',28.82,'My Hero Academia - Vol. 25',2),(3,'Zom 100 - Coisas para fazer antes de virar zumbi Vol. 01',36.27,'Zom 100 -  Vol. 01',4),(4,'Esta é a macabra história do suicídio coletivo de 54 garotas, todas estudantes. Elas se atiram na frente do metrô, causando enorme comoção pública. Uma série de outras mortes de grupos espalhados por todo o país deixa a equipe do detetive Kuroda em pânico. Eles correm contra o tempo e as pistas mais atrapalham do que ajudam. Neste suspense de alto teor psicológico nada é tão simples como parece.',26.9,'Suicide Club',5);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07 18:48:42
