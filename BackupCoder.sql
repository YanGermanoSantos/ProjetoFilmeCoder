/*

O Backup foi feito das seguintes tabelas 

audio
audio_filme
cliente
endereco
filme
genero
legenda
legenda_filme
locacao
locacao_filme
log_cliente
log_filme

*/

-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: locadora
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Dumping data for table `audio`
--

LOCK TABLES `audio` WRITE;
/*!40000 ALTER TABLE `audio` DISABLE KEYS */;
INSERT INTO `audio` VALUES (1,'CHN'),(2,'ESP'),(3,'ENG'),(4,'PT'),(5,'JP'),(6,'FR');
/*!40000 ALTER TABLE `audio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `audio_filme`
--

LOCK TABLES `audio_filme` WRITE;
/*!40000 ALTER TABLE `audio_filme` DISABLE KEYS */;
INSERT INTO `audio_filme` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,5),(5,3,1),(6,3,5),(7,4,2),(8,4,5),(9,5,1),(10,5,3),(11,5,5),(12,6,1),(13,6,3),(14,6,5),(15,7,3),(16,7,4),(17,8,3),(18,8,5),(19,9,3),(20,9,5),(21,10,3),(22,10,4),(23,11,1),(24,11,2),(25,11,4),(26,12,1),(27,12,2),(28,13,1),(29,13,2),(30,13,4),(31,14,1),(32,14,3),(33,14,4),(34,14,5),(35,15,1),(36,15,2),(37,15,1),(38,16,5),(39,17,1),(40,18,5),(41,19,2),(42,20,5),(43,21,1),(44,22,3),(45,23,5),(46,24,1),(47,24,3),(48,25,5),(49,25,3),(50,26,4),(51,26,3),(52,27,5),(53,27,3),(54,28,5),(55,28,3),(56,29,4),(57,29,1),(58,29,2),(59,29,4),(60,30,1),(61,31,2),(62,32,1),(63,33,2),(64,34,4),(65,35,1),(66,36,3),(67,37,4),(68,38,5),(69,39,1),(70,40,2),(71,41,1),(72,42,5),(73,43,1),(74,44,5),(75,45,2),(76,46,5),(77,47,1),(78,48,3),(79,49,5),(80,50,1),(81,51,3),(82,52,5),(83,53,3),(84,53,4),(85,54,3),(86,55,5),(87,56,3),(88,56,5),(89,57,3),(90,57,4),(91,57,1),(92,58,2),(93,58,4),(94,59,1),(95,60,2);
/*!40000 ALTER TABLE `audio_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Jose otavio',1,'58947513','a_vanessinha_1990@hotmail.com','283033842','Jose otavio','xdsrtrefd12s5d'),(2,'Yan Germano',2,'49654132','a3sign@pandora.be','8386352866','Yan Germano','xfe45f4dsg8sd4'),(3,'Olaf ',3,'54965132','aaanika2@hotmail.com','4484771904','Olaf ','thyt8h4tgf5dfd'),(4,'Ricardo oliveira',4,'78961231','aaron2003s@bol.com.br','7058140035','Ricardo oliveira','dsgr87g985'),(5,'Rafael Ramos',5,'73456312','aaron--21@hotmail.com','106556486','Rafael Ramos','ds54gfr9gh8r74987'),(6,'Victo santos',6,'19875251','abidoral@hotmail.com','8604526264','Victo santos','f54er69f5e45c1'),(7,'Santos Santana ',7,'94652128','abk_333@hotmail.com','7165712203','Santos Santana ','fe45e65cf1d2'),(8,'Isac vitor',8,'89412311','abner_bim@hotmail.com','6572822859','Isac vitor','5f4685ds46'),(9,'Nicholas olaf',9,'87653132','abner_bim@hotmail.com','3806575226','Nicholas olaf','3v21r6541e984'),(10,'Victor leandro',10,'58465213','acacio_divix@hotmail.com','6488569361','Victor leandro','dsa5dw4a5'),(11,'Maria Silva',11,'21162501235','teste1@gmailcom','95841262','Maria Silva','3v21r6541e984'),(12,'JoÃ£o Santos',12,'21162501236','teste2@gmail.com','95841263','JoÃ£o Santos','xdsrtrefd12s5d'),(13,'Tiago Pereira',13,'21162501237','teste3@gmail.com','95841264','Tiago Pereira','xfe45f4dsg8sd5'),(14,'CÃ©sar Anchieta',14,'21162501238','teste4@gmail.com','95841265','CÃ©sar Anchieta','thyt8h4tgf5dfd'),(15,'Cleison Vieira',15,'21162501239','teste5@gmail.com','95841266','Cleison Vieira','dsgr87g986'),(16,'JÃ©ssica Moreira',16,'21162501240','teste6@gmail.com','95841267','JÃ©ssica Moreira','ds54gfr9gh8r74988'),(17,'Adriana de Jesus',17,'21162501241','teste7@gmail.com','95841268','Adriana de Jesus','f54er69f5e45c2'),(18,'Arthur Calmon',18,'21162501242','teste8@gmail.com','95841269','Arthur Calmon','fe45e65cf1d3'),(19,'Augusto Martins',19,'21162501243','teste9@gmail.com','95841270','Augusto Martins','5f4685ds47'),(20,'Renato Pizza',20,'21162501244','teste10@gmail.com','95841271','Renato Pizza','3v21r6541e985'),(21,'AntÃ´nio Breda',21,'21162501245','teste11@gmail.com','95841272','AntÃ´nio Breda','dsa5dw4a6'),(22,'Joana Ferreira',22,'21162501246','teste12@gmail.com','95841273','Joana Ferreira','3v21r6541e985'),(23,'Renata Alves',23,'21162501247','teste13@gmail.com','95841274','Renata Alves','xdsrtrefd12s5d'),(24,'Juscelino Braga',24,'21162501248','teste14@gmail.com','95841275','Juscelino Braga','xfe45f4dsg8sd6'),(25,'Pedro Almeida',25,'21162501249','teste15@gmail.com','95841276','Pedro Almeida','thyt8h4tgf5dfd'),(26,'Felipe da Costa',26,'21162501250','teste16@gmail.com','95841277','Felipe da Costa','dsgr87g987'),(27,'CauÃ£ de Souza',27,'21162501251','teste17@gmail.com','95841278','CauÃ£ de Souza','ds54gfr9gh8r74989'),(28,'Vitor',28,'21162501252','teste18@gmail.com','95841279','Vitor','f54er69f5e45c3'),(29,'Eduardo',29,'21162501253','teste19@gmail.com','95841280','Eduardo','fe45e65cf1d4'),(30,'Henrique GonÃ§alves',30,'21162501254','teste20@gmail.com','95841281','Henrique GonÃ§alves','5f4685ds48'),(31,'Murilo',31,'21162501255','teste21@gmail.com','95841282','Murilo','3v21r6541e986'),(32,'Pietro',32,'21162501256','teste22@gmail.com','95841283','Pietro','dsa5dw4a7'),(33,'Gabriel',33,'21162501257','teste23@gmail.com','95841284','Gabriel','3v21r6541e986'),(34,'David',34,'21162501258','teste24@gmail.com','95841285','David','xdsrtrefd12s5d'),(35,'Miguel',35,'21162501259','teste25@gmail.com','95841286','Miguel','xfe45f4dsg8sd7'),(36,'Gustavo',36,'21162501260','teste26@gmail.com','95841287','Gustavo','thyt8h4tgf5dfd'),(37,'Bianca',37,'21162501261','teste27@gmail.com','95841288','Bianca','dsgr87g988'),(38,'Vera',38,'21162501262','teste28@gmail.com','95841289','Vera','ds54gfr9gh8r74990'),(39,'VictÃ³ria',39,'21162501263','teste29@gmail.com','95841290','VictÃ³ria','f54er69f5e45c4'),(40,'Renan',40,'21162501264','teste30@gmail.com','95841291','Renan','fe45e65cf1d5'),(41,'Thales',41,'21162501265','teste31@gmail.com','95841292','Thales','5f4685ds49'),(42,'Henry',42,'21162501266','teste32@gmail.com','95841293','Henry','3v21r6541e987'),(43,'Kevin',43,'21162501267','teste33@gmail.com','95841294','Kevin','dsa5dw4a8'),(44,'Enrico',44,'21162501268','teste34@gmail.com','95841295','Enrico','3v21r6541e987'),(45,'Ana',45,'21162501269','teste35@gmail.com','95841296','Ana','xdsrtrefd12s5d'),(46,'Amanda',46,'21162501270','teste36@gmail.com','95841297','Amanda','xfe45f4dsg8sd8'),(47,'Clarice',47,'21162501271','teste37@gmail.com','95841298','Clarice','thyt8h4tgf5dfd'),(48,'Larissa',48,'21162501272','teste38@gmail.com','95841299','Larissa','dsgr87g989'),(49,'LaÃ­s',49,'21162501273','teste39@gmail.com','95841300','LaÃ­s','ds54gfr9gh8r74991'),(50,'Antonela',50,'21162501274','teste40@gmail.com','95841301','Antonela','f54er69f5e45c5'),(51,'Helena',51,'21162501275','teste41@gmail.com','95841302','Helena','fe45e65cf1d6'),(52,'Valentina',52,'21162501276','teste42@gmail.com','95841303','Valentina','5f4685ds50'),(53,'Matheus',53,'21162501277','teste43@gmail.com','95841304','Matheus','3v21r6541e988'),(54,'Bernardo',54,'21162501278','teste44@gmail.com','95841305','Bernardo','dsa5dw4a9'),(55,'Sophia',55,'21162501279','teste45@gmail.com','95841306','Sophia','3v21r6541e988'),(56,'JÃºlia',56,'21162501280','teste46@gmail.com','95841307','JÃºlia','xdsrtrefd12s5d'),(57,'Theo',57,'21162501281','teste47@gmail.com','95841308','Theo','xfe45f4dsg8sd9'),(58,'Manuela',58,'21162501282','teste48@gmail.com','95841309','Manuela','thyt8h4tgf5dfd'),(59,'Gael',59,'21162501283','teste49@gmail.com','95841310','Gael','dsgr87g990'),(60,'Isabela',60,'21162501284','teste50@gmail.com','95841311','Isabela','dsgr87g991');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua Jose Bonifacio lado impar','Se','15','casa 2',1003001,'Sao Paulo'),(2,'Viaduto do Cha','Centro','20','',1002020,'Sao Paulo'),(3,'Viaduto do Cha','Centro','250','CASA 5',1002900,'Sao Paulo'),(4,'Rua Direita','Se','130','',1002901,'Sao Paulo'),(5,'Rua Direita','Se','2500','APT2',1002902,'Sao Paulo'),(6,'Rua Direita','Centro','80','apt 1',1002903,'Sao Paulo'),(7,'Rua dos Geranios','Araras','12','',25725120,'Petropolis'),(8,'Rodovia BR 040 do km 58001 ao km 62999','Itaipava','23','casa 8',25740325,'Petropolis'),(9,'Rua Cruz de Malta','Afonso Pena','584','',75513490,'Itumbiara'),(10,'Avenida Rio Branco','Afonso Pena','235','',75513489,'Itumbiara'),(11,'Estrada de Portugal','Km 18','35','',6524010,'Osasco'),(12,'Rua SÃ£o Vicente de Paula','Centro','656','Casa 1',6524011,'Guarulhos'),(13,'Viela Petrolina','Fazendinha','56','',6524012,'ArujÃ¡'),(14,'Rua Elias Assaf','Morrinho','45','',6524013,'TatuÃ­'),(15,'Travessa Destino','Pamonha','58','',6524014,'Piracicaba'),(16,'Via Anthero Villares','Pipa','6545','',6524015,'MairiporÃ£'),(17,'Rua Maria JosÃ© de Jesus Bonilha','Longe','54','',6524016,'Atibaia'),(18,'Rua SÃ©rgio Pompeo','Altura','265','Apto 2',6524017,'Peruibe'),(19,'Rua Geraldo JosÃ© de Almeida','Destino','6','',6524018,'Praia Grande'),(20,'Rua TibiriÃ§Ã¡','Graminha','65','',6524019,'AltinÃ³polis'),(21,'Rua Doutor Alberto Schweitzer','Capanado','2','Casa Fundos',6524020,'Campinas'),(22,'Rua Doutor Fortunato AntiÃ³rio','De Carro','56','',6524021,'JundiaÃ­'),(23,'Rua Fonte','Fazendinha','2','',6524022,'Embu'),(24,'Rua Carlos Rossetti','SÃ­tio 11','1','',6524023,'Itapecerica'),(25,'Rua Cleide Imaculada Bueno','Centro','84','',6524024,'SÃ£o Paulo'),(26,'Rua Luiz Gama','Vila Yara','75','',6524025,'Osasco'),(27,'Rua Edmundo Amaral','Tenda','8','',6524026,'Guarulhos'),(28,'Rua Tenente AntÃ´nio Correa Santa Rita','Km 18','62','Lote 2',6524027,'ArujÃ¡'),(29,'Viela da EsperanÃ§a','Centro','96','',6524028,'TatuÃ­'),(30,'Rua Josias Baptista','Fazendinha','4','',6524029,'Piracicaba'),(31,'Rua Ana Zozi Toni','Morrinho','757','',6524030,'MairiporÃ£'),(32,'Rua Manoel Rodrigues','Pamonha','48','',6524031,'Atibaia'),(33,'Rua AnÃ­Â­sio Berniz','Pipa','8','',6524032,'Peruibe'),(34,'Rua SÃ£o Pedro','Longe','10','',6524033,'Praia Grande'),(35,'Rua Pedro Furlan','Altura','204','',6524034,'AltinÃ³polis'),(36,'Rua Maria C. Mattias Santos','Destino','543','',6524035,'Campinas'),(37,'PraÃ§a Vinte e Um de Dezembro','Graminha','222','Quadra 1 Lote 4',6524036,'JundiaÃ­'),(38,'Rua Doutor JosÃ© Norberto da Fonseca','Capanado','2','',6524037,'Embu'),(39,'Rua JosÃ© Parreira','Km 18','56','',6524038,'Itapecerica'),(40,'Rua Campina Grande','Centro','2','',6524039,'SÃ£o Paulo'),(41,'Rua Ema','Fazendinha','1','Casa 3',6524040,'Osasco'),(42,'Rua Danilo de Oliveira','Morrinho','84','',6524041,'Guarulhos'),(43,'Rua AtÃ­lio Fabri','Pamonha','75','',6524042,'ArujÃ¡'),(44,'Rua Raimundo JosÃ© Nunes','Pipa','8','',6524043,'TatuÃ­'),(45,'Viela Conquista','Longe','62','',6524044,'Piracicaba'),(46,'Rua Maria Joana Rosa','Altura','96','',6524045,'MairiporÃ£'),(47,'Rua Osvaldo Soares de Castro','Destino','4','',6524046,'Atibaia'),(48,'Rua do Campo','Graminha','757','Casa 2',6524047,'Peruibe'),(49,'Rua JosÃ© JordÃ£o Morales','Capanado','2','',6524048,'Praia Grande'),(50,'Rua AntÃ´nio Donini','Canto','56','',6524049,'AltinÃ³polis'),(51,'Rua Bom Conselho','Ponta','2','',6524050,'Campinas'),(52,'Rua Garcia Flores','Alto do Morro','1','',6524051,'JundiaÃ­'),(53,'Viela Elizete Cardoso','Centro','84','',6524052,'Embu'),(54,'Viela Vereda Tropical','Lama','75','',6524053,'Itapecerica'),(55,'PraÃ§a Pedro de Andrade','Subida','8','',6524054,'SÃ£o Paulo'),(56,'Viela Maria Barcera Gamera','TatuapÃ©','62','',6524055,'SÃ£o Paulo'),(57,'Rua Augusto Chacon Teruel','Penha','96','',6524056,'SÃ£o Paulo'),(58,'Viela Hebreus','Centro','4','',6524057,'SÃ£o Paulo'),(59,'Rua Hailton de Oliveira','Vila Madalena','757','',6524058,'SÃ£o Paulo'),(60,'Rua JosÃ© Henrique de Lima','SÃ¡ude','48','',6524059,'SÃ£o Paulo');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'VINGADORES ULTIMATO','Em Vingadores Ultimato, apos Thanos eliminar metade das criaturas vivas em Vingadores Guerra Infinita',1,1,8),(2,'O ESPETACULAR HOMEM ARANHA','Em O Espetacular Homem Aranha, Peter Parker Andrew Garfield e um rapaz timido e estudioso',2,2,1),(3,'O PODEROSO CHEFAO','Francis Ford Coppola transforma O Poderoso Chefao,em um marco na historia do cinema,e principalmente de sua carreira',3,3,3),(4,'SORRIA','Em Sorria, tudo na vida da Dra Rose Cotter (Sosie Bacon) muda, apos uma paciente morrer de forma brutal em sua frente',4,4,7),(5,'MINIONS 2 A ORIGEM DE GRU','Minions 2  Origem de Gru e a continuaÃ§Ã£o das aventuras dos Minions, e desta vez, eles ajudam um Gru ainda crianca, descobrindo como ser vilao',5,5,2),(6,'O TELEFONE PRETO','Em O Telefone Preto, em 1978, uma serie de sequestros estao acontecendo na cidade de Denver',2,2,7),(7,'NAO NAO OLHE','Entre Corra, Nos e agora, Nao Nao Olhe, Peele esta explorando suas capacidades como cineasta, e quanto mais experimental e grandioso ele fica',1,1,6),(8,'A ESPERA DE UM MILAGRE','Tom Hanks e O ATOR Filme brilhante de um livro brilhantemente escrito por Stephen King',3,3,3),(9,'De Volta para o Futuro','Um jovem aciona acidentalmente uma maquina do tempo construida por um cientista',4,4,8),(10,'Homens de Honra','Carl Brashear veio de uma humilde familia negra, que vivia em uma area rural em Sonora, Kentucky',3,3,3),(11,'Enter the Anime','Carl Brashear veio de uma humilde familia negra, que vivia em uma area rural em Sonora, Kentucky',5,5,7),(12,'Dark Forces','is simply dummy text of the printing and',4,1,3),(13,'The App','he leap into electronic typesetting, remaining essential',3,4,8),(14,'The Open House',' making it look like readable English. Many desktop publishing packages and ',5,3,6),(15,'Kaali Khuhi','sometimes on purpose (injected humour and the like).',4,2,2),(16,'Drive','is simply dummy text of the printing and',4,1,5),(17,'Leyla Everlasting','he leap into electronic typesetting, remaining essential',3,1,3),(18,'The Last Days of American Crime',' making it look like readable English. Many desktop publishing packages and ',1,2,1),(19,'Paradox','sometimes on purpose (injected humour and the like).',5,4,7),(20,'Sardar Ka Grandson','is simply dummy text of the printing and',5,2,2),(21,'Searching for Sheela','he leap into electronic typesetting, remaining essential',5,1,2),(22,'The Call',' making it look like readable English. Many desktop publishing packages and ',1,1,4),(23,'Whipped','sometimes on purpose (injected humour and the like).',5,2,7),(24,'All Because of You','is simply dummy text of the printing and',1,2,3),(25,'Mercy','he leap into electronic typesetting, remaining essential',4,4,2),(26,'After the Raid',' making it look like readable English. Many desktop publishing packages and ',4,1,4),(27,'Ghost Stories','sometimes on purpose (injected humour and the like).',2,4,6),(28,'The Last Thing He Wanted','is simply dummy text of the printing and',5,5,5),(29,'What Happened to Mr. Cha?','he leap into electronic typesetting, remaining essential',5,2,8),(30,'Death Note',' making it look like readable English. Many desktop publishing packages and ',5,3,1),(31,'Hello Privilege. It\'s Me, Chelsea','sometimes on purpose (injected humour and the like).',5,3,4),(32,'Secret Obsession','is simply dummy text of the printing and',2,1,3),(33,'Sextuplets','he leap into electronic typesetting, remaining essential',4,5,8),(34,'The Girl on the Train',' making it look like readable English. Many desktop publishing packages and ',1,4,7),(35,'Thunder Force','sometimes on purpose (injected humour and the like).',4,3,3),(36,'Fatal Affair','is simply dummy text of the printing and',5,3,6),(37,'Just Say Yes','he leap into electronic typesetting, remaining essential',4,1,5),(38,'Seriously Single',' making it look like readable English. Many desktop publishing packages and ',5,3,3),(39,'The Misadventures of Hedi and Cokeman','sometimes on purpose (injected humour and the like).',1,4,2),(40,'5 Star Christmas','is simply dummy text of the printing and',4,1,4),(41,'After Maria','he leap into electronic typesetting, remaining essential',1,2,6),(42,'I Am the Pretty Thing That Lives in the House',' making it look like readable English. Many desktop publishing packages and ',4,2,6),(43,'Paris Is Us','sometimes on purpose (injected humour and the like).',5,5,1),(44,'Porta dos Fundos: The First Temptation of Christ','is simply dummy text of the printing and',5,1,5),(45,'Rattlesnake','he leap into electronic typesetting, remaining essential',2,2,4),(46,'The Players',' making it look like readable English. Many desktop publishing packages and ',3,2,7),(47,'We Are One','sometimes on purpose (injected humour and the like).',1,3,6),(48,'Finding Agnes','is simply dummy text of the printing and',4,5,6),(49,'IO','he leap into electronic typesetting, remaining essential',5,5,6),(50,'Sentinelle',' making it look like readable English. Many desktop publishing packages and ',1,3,1),(51,'Sol Levante','sometimes on purpose (injected humour and the like).',3,3,3),(52,'The Binding','is simply dummy text of the printing and',4,1,3),(53,'We Can Be Heroes','he leap into electronic typesetting, remaining essential',5,5,1),(54,'Christmas Crossfire',' making it look like readable English. Many desktop publishing packages and ',3,3,2),(55,'Coin Heist','sometimes on purpose (injected humour and the like).',5,3,1),(56,'Mrs. Serial Killer','is simply dummy text of the printing and',1,4,1),(57,'Nobody Sleeps in the Woods Tonight','he leap into electronic typesetting, remaining essential',2,2,7),(58,'Take the 10',' making it look like readable English. Many desktop publishing packages and ',4,3,5),(59,'The Main Event','sometimes on purpose (injected humour and the like).',2,5,2),(60,'The Ridiculous 6','is simply dummy text of the printing and',5,4,8),(61,'A volta','Filmes',1,1,8);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'AÃ§Ã£o'),(2,'Comedia'),(3,'Drama'),(4,'Romance'),(5,'Documentario '),(6,'Suspense'),(7,'Terror'),(8,'FicÃ§Ã£o cientifica');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `legenda`
--

LOCK TABLES `legenda` WRITE;
/*!40000 ALTER TABLE `legenda` DISABLE KEYS */;
INSERT INTO `legenda` VALUES (1,'CHN'),(2,'ESP'),(3,'ENG'),(4,'PT'),(5,'JP'),(6,'FR'),(7,'RUSS'),(8,'A');
/*!40000 ALTER TABLE `legenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `legenda_filme`
--

LOCK TABLES `legenda_filme` WRITE;
/*!40000 ALTER TABLE `legenda_filme` DISABLE KEYS */;
INSERT INTO `legenda_filme` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,4),(6,2,5),(7,3,1),(8,3,3),(9,3,5),(10,4,2),(11,4,3),(12,4,4),(13,4,5),(14,5,1),(15,5,2),(16,5,3),(17,5,4),(18,5,5),(19,6,1),(20,6,3),(21,6,5),(22,7,2),(23,7,3),(24,7,4),(25,8,3),(26,8,4),(27,8,5),(28,9,2),(29,9,3),(30,9,4),(31,9,5),(32,10,1),(33,10,3),(34,10,4),(35,11,1),(36,11,2),(37,11,4),(38,12,1),(39,12,2),(40,13,1),(41,13,2),(42,13,4),(43,14,1),(44,14,3),(45,14,4),(46,14,5),(47,15,1),(48,15,2),(49,15,1),(50,16,5),(51,17,1),(52,18,5),(53,19,2),(54,20,5),(55,21,1),(56,22,3),(57,23,5),(58,24,1),(59,24,3),(60,25,5),(61,25,3),(62,26,4),(63,26,3),(64,27,5),(65,27,3),(66,28,5),(67,28,3),(68,29,4),(69,29,1),(70,29,2),(71,29,4),(72,30,1),(73,31,2),(74,32,1),(75,33,2),(76,34,4),(77,35,1),(78,36,3),(79,37,4),(80,38,5),(81,39,1),(82,40,2),(83,41,1),(84,42,5),(85,43,1),(86,44,5),(87,45,2),(88,46,5),(89,47,1),(90,48,3),(91,49,5),(92,50,1),(93,51,3),(94,52,5),(95,53,3),(96,53,4),(97,54,3),(98,55,5),(99,56,3),(100,56,5),(101,57,3),(102,57,4),(103,57,1),(104,58,2),(105,58,4),(106,59,1),(107,60,2);
/*!40000 ALTER TABLE `legenda_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
INSERT INTO `locacao` VALUES (1,27,16,13.75,'2022-03-03 19:47:58','2022-03-07 21:45:00','debito'),(2,59,34,21.67,'2022-08-29 19:40:54','2022-09-02 21:00:00','credito'),(3,10,18,16.32,'2022-03-03 21:52:11','2022-03-07 21:36:00','credito'),(4,19,28,16.9,'2022-03-03 23:54:08','2022-03-07 21:16:00','credito'),(5,19,58,24.02,'2022-01-26 16:34:08','2022-01-28 02:59:00','debito'),(6,31,50,25.71,'2022-01-26 19:11:19','2022-01-28 02:59:00','credito'),(7,9,28,25.23,'2022-01-26 19:11:20','2022-01-28 02:59:00','debito'),(8,31,57,10.08,'2022-04-05 01:38:09','2022-04-07 18:32:00','credito'),(9,39,58,4.39,'2022-05-20 22:35:20','2022-05-23 16:44:00','debito'),(10,19,34,15.93,'2022-05-20 17:35:48','2022-05-23 16:46:00','credito'),(11,46,52,16.74,'2022-03-03 19:00:11','2022-03-08 00:43:00','credito'),(12,1,12,1.72,'2022-03-03 03:16:19','2022-03-08 00:52:00','credito'),(13,44,50,8.85,'2022-03-02 23:17:04','2022-03-07 13:39:00','debito'),(14,18,45,8.58,'2022-03-03 03:16:19','2022-03-08 00:38:00','credito'),(15,31,49,13.83,'2022-03-03 17:06:13','2022-03-08 00:51:00','credito'),(16,27,9,12.37,'2022-10-17 21:01:26','2022-10-18 12:23:00','debito'),(17,29,31,16.16,'2022-10-17 15:48:24','2022-10-18 13:26:00','credito'),(18,59,3,22.28,'2022-10-17 20:46:23','2022-10-18 12:21:00','credito'),(19,9,53,17.58,'2022-10-10 16:30:58','2022-10-11 12:40:00','debito'),(20,35,24,1.95,'2022-03-03 23:54:09','2022-03-07 16:20:00','credito'),(21,18,41,26.88,'2022-03-03 23:54:10','2022-03-07 16:08:00','credito'),(22,28,12,14.67,'2022-03-03 19:47:58','2022-03-07 16:17:00','debito'),(23,56,42,11.36,'2022-03-03 19:47:58','2022-03-07 16:21:00','credito'),(24,35,20,29.04,'2022-10-10 16:30:58','2022-10-11 12:12:00','credito'),(25,24,24,6.04,'2022-07-07 23:11:00','2022-07-08 17:21:00','debito'),(26,12,15,14.07,'2022-03-03 21:52:11','2022-03-07 22:50:00','credito'),(27,9,3,17.07,'2022-03-03 17:06:13','2022-03-07 21:12:00','credito'),(28,49,42,5.32,'2022-03-03 22:37:35','2022-03-07 22:49:00','debito'),(29,56,18,21.68,'2022-03-03 03:16:19','2022-03-07 21:30:00','credito'),(30,59,30,16.33,'2022-03-03 19:47:58','2022-03-07 21:45:00','credito'),(31,44,44,4.8,'2022-08-29 19:40:54','2022-09-02 21:00:00','debito'),(32,38,56,12.01,'2022-03-03 21:52:11','2022-03-07 21:36:00','credito'),(33,31,25,25.25,'2022-03-03 23:54:08','2022-03-07 21:16:00','debito'),(34,24,58,25.73,'2022-01-26 16:34:08','2022-01-28 02:59:00','credito'),(35,33,35,11.08,'2022-01-26 19:11:19','2022-01-28 02:59:00','debito'),(36,46,49,4.4,'2022-01-26 19:11:20','2022-01-28 02:59:00','credito'),(37,12,28,15.94,'2022-04-05 01:38:09','2022-04-07 18:32:00','credito'),(38,4,50,16.75,'2022-05-20 22:35:20','2022-05-23 16:44:00','debito'),(39,16,4,1.73,'2022-05-20 17:35:48','2022-05-23 16:46:00','credito'),(40,32,13,8.31,'2022-03-03 19:00:11','2022-03-08 00:43:00','debito'),(41,29,44,8.04,'2022-03-03 03:16:19','2022-03-08 00:52:00','debito'),(42,25,42,13.84,'2022-03-02 23:17:04','2022-03-07 13:39:00','credito'),(43,12,36,12.38,'2022-03-03 03:16:19','2022-03-08 00:38:00','credito'),(44,24,23,16.17,'2022-03-03 17:06:13','2022-03-08 00:51:00','debito'),(45,6,17,22.29,'2022-10-17 21:01:26','2022-10-18 12:23:00','credito'),(46,11,1,17.59,'2022-10-17 15:48:24','2022-10-18 13:26:00','debito'),(47,37,36,1.96,'2022-10-17 20:46:23','2022-10-18 12:21:00','credito'),(48,29,59,26.89,'2022-10-10 16:30:58','2022-10-11 12:40:00','debito'),(49,26,59,14.68,'2022-03-03 23:54:09','2022-03-07 16:20:00','credito'),(50,6,33,11.37,'2022-03-03 23:54:10','2022-03-07 16:08:00','credito'),(51,57,44,29.04,'2022-03-03 19:47:58','2022-03-07 16:17:00','debito'),(52,52,30,6.04,'2022-03-03 19:47:58','2022-03-07 16:21:00','credito'),(53,18,52,14.07,'2022-10-10 16:30:58','2022-10-11 12:12:00','debito'),(54,59,23,17.07,'2022-07-07 23:11:00','2022-07-08 17:21:00','debito'),(55,43,16,5.33,'2022-03-03 21:52:11','2022-03-07 22:50:00','credito'),(56,41,50,21.69,'2022-03-03 17:06:13','2022-03-07 21:12:00','credito'),(57,49,35,16.34,'2022-03-03 22:37:35','2022-03-07 22:49:00','debito'),(58,26,19,22.6,'2022-03-03 03:16:19','2022-03-07 21:30:00','credito'),(59,15,40,1.12,'2022-03-03 19:47:58','2022-03-07 21:45:00','debito'),(60,21,34,25.121,'2022-08-29 19:40:54','2022-09-02 21:00:00','credito'),(61,30,51,25.169,'2022-03-03 21:52:11','2022-03-07 21:36:00','debito'),(62,38,36,12.08,'2022-03-03 23:54:08','2022-03-07 21:16:00','credito'),(63,3,56,4.41,'2022-01-26 16:34:08','2022-01-28 02:59:00','credito'),(64,32,1,15.95,'2022-01-26 19:11:19','2022-01-28 02:59:00','debito'),(65,34,2,16.76,'2022-01-26 19:11:20','2022-01-28 02:59:00','credito'),(66,7,49,1.74,'2022-04-05 01:38:09','2022-04-07 18:32:00','debito'),(67,50,6,8.23,'2022-05-20 22:35:20','2022-05-23 16:44:00','debito'),(68,36,16,8.5,'2022-05-20 17:35:48','2022-05-23 16:46:00','credito'),(69,46,39,13.85,'2022-03-03 19:00:11','2022-03-08 00:43:00','credito'),(70,34,26,12.39,'2022-03-03 03:16:19','2022-03-08 00:52:00','debito'),(71,24,45,16.18,'2022-03-02 23:17:04','2022-03-07 13:39:00','credito'),(72,1,37,22.3,'2022-03-03 03:16:19','2022-03-08 00:38:00','debito'),(73,3,5,17.6,'2022-03-03 17:06:13','2022-03-08 00:51:00','credito'),(74,19,14,1.97,'2022-10-17 21:01:26','2022-10-18 12:23:00','debito'),(75,1,22,26.9,'2022-10-17 15:48:24','2022-10-18 13:26:00','credito'),(76,57,48,14.69,'2022-10-17 20:46:23','2022-10-18 12:21:00','credito'),(77,57,11,11.38,'2022-10-10 16:30:58','2022-10-11 12:40:00','debito'),(78,19,25,29.04,'2022-03-03 23:54:09','2022-03-07 16:20:00','credito'),(79,24,11,6.04,'2022-03-03 23:54:10','2022-03-07 16:08:00','debito');
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `locacao_filme`
--

LOCK TABLES `locacao_filme` WRITE;
/*!40000 ALTER TABLE `locacao_filme` DISABLE KEYS */;
INSERT INTO `locacao_filme` VALUES (1,1,16),(2,2,34),(3,3,18),(4,4,28),(5,5,58),(6,6,50),(7,7,28),(8,8,57),(9,9,58),(10,10,34),(11,11,52),(12,12,12),(13,13,50),(14,14,45),(15,15,49),(16,16,9),(17,17,31),(18,18,3),(19,19,53),(20,20,24),(21,21,41),(22,22,12),(23,23,42),(24,24,20),(25,25,24),(26,26,15),(27,27,3),(28,28,42),(29,29,18),(30,30,30),(31,31,44),(32,32,56),(33,33,25),(34,34,58),(35,35,35),(36,36,49),(37,37,28),(38,38,50),(39,39,4),(40,40,13),(41,41,44),(42,42,42),(43,43,36),(44,44,23),(45,45,17),(46,46,1),(47,47,36),(48,48,59),(49,49,59),(50,50,33),(51,51,44),(52,52,30),(53,53,52),(54,54,23),(55,55,16),(56,56,50),(57,57,35),(58,58,19),(59,59,40),(60,60,34),(61,61,51),(62,62,36),(63,63,56),(64,64,1),(65,65,2),(66,66,49),(67,67,6),(68,68,16),(69,69,39),(70,70,26),(71,71,45),(72,72,37),(73,73,5),(74,74,14),(75,75,22),(76,76,48),(77,77,11),(78,78,25),(79,79,11);
/*!40000 ALTER TABLE `locacao_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_cliente`
--

LOCK TABLES `log_cliente` WRITE;
/*!40000 ALTER TABLE `log_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_filme`
--

LOCK TABLES `log_filme` WRITE;
/*!40000 ALTER TABLE `log_filme` DISABLE KEYS */;
INSERT INTO `log_filme` VALUES ('root@localhost','2022-11-07','A volta');
/*!40000 ALTER TABLE `log_filme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-21 21:05:08
