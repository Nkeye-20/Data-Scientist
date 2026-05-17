-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cadastro
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `gafanhoto`
--

DROP TABLE IF EXISTS `gafanhoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafanhoto` (
  `IdPessoa` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) NOT NULL,
  `cursopreferido` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPessoa`),
  KEY `cursopreferido` (`cursopreferido`),
  CONSTRAINT `gafanhoto_ibfk_1` FOREIGN KEY (`cursopreferido`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafanhoto`
--

LOCK TABLES `gafanhoto` WRITE;
/*!40000 ALTER TABLE `gafanhoto` DISABLE KEYS */;
INSERT INTO `gafanhoto` VALUES (1,'Carlos Mendes','1995-03-12',72.50,'M','Engenheiro Civil',1.78,'Portugal',6),(2,'Ana Silva','2001-07-08',58.30,'F','Enfermeira',1.65,'Brasil',22),(3,'João Pereira','1988-11-23',80.20,'M','Professor',1.82,'Angola',3),(4,'Maria Oliveira','1999-02-15',62.10,'F','Designer Gráfica',1.70,'Moçambique',16),(5,'Ricardo Gomes','1992-09-30',85.70,'M','Programador',1.85,'Cabo Verde',45),(6,'Luísa Fernandes','2000-12-05',55.90,'F','Contabilista',1.60,'Portugal',42),(7,'Paulo Costa','1985-06-18',90.40,'M','Mecânico',1.88,'Brasil',32),(8,'Sara Lopes','1997-04-27',63.20,'F','Advogada',1.68,'Angola',1),(9,'Miguel Rocha','1993-01-09',78.60,'M','Fotógrafo',1.80,'Portugal',5),(10,'Beatriz Sousa','2002-10-19',59.80,'F','Arquiteta',1.67,'Guiné-Bissau',6),(11,'Bruno Almeida','1990-04-10',84.20,'M','Analista de Sistemas',1.83,'Portugal',18),(12,'Patrícia Ramos','1996-09-25',60.40,'F','Jornalista',1.64,'Brasil',16),(13,'Eduardo Tavares','1987-11-02',76.10,'M','Técnico Eletrônico',1.75,'Angola',14),(14,'Raquel Santos','1998-06-17',65.30,'F','Psicóloga',1.70,'Moçambique',17),(15,'Hugo Carvalho','1991-02-28',82.00,'M','Administrador',1.77,'Cabo Verde',6),(16,'Tatiana Figueiredo','2000-08-22',57.60,'F','Secretária Executiva',1.63,'Portugal',23),(17,'Daniel Monteiro','1989-12-14',88.50,'M','Engenheiro Mecânico',1.86,'Brasil',16),(18,'Sofia Andrade','1997-03-05',61.20,'F','Farmacêutica',1.66,'Angola',9),(19,'Marcos Silva','1994-10-30',79.80,'M','Eletricista',1.81,'Portugal',10),(20,'Carla Pinto','1999-05-09',56.90,'F','Assistente Administr',1.62,'Moçambique',19),(21,'Vítor Matos','1986-07-21',83.40,'M','Gestor Financeiro',1.84,'Cabo Verde',8),(22,'Helena Costa','2003-02-26',59.10,'F','Nutricionista',1.65,'Brasil',30),(23,'Rafael Duarte','1992-06-03',77.70,'M','Técnico de Informáti',1.79,'Portugal',12),(24,'Isabel Correia','1995-11-10',63.90,'F','Professora',1.68,'Angola',36),(25,'Fábio Santos','1990-01-19',81.00,'M','Analista de Dados',1.82,'Portugal',31),(26,'Cristina Melo','2001-09-27',57.50,'F','Fotógrafa',1.64,'Brasil',44),(27,'Pedro Reis','1988-03-13',86.30,'M','Motorista',1.85,'Cabo Verde',47),(28,'Andreia Nunes','1994-12-22',60.70,'F','Advogada',1.66,'Moçambique',11),(29,'Tiago Moreira','1987-05-15',88.20,'M','Policial',1.83,'Angola',29),(30,'Vanessa Ribeiro','1998-10-01',58.90,'F','Enfermeira',1.64,'Portugal',36),(31,'Rui Neves','1993-07-28',76.80,'M','Programador',1.79,'Brasil',30),(32,'Joana Rocha','2000-04-11',61.40,'F','Arquiteta',1.67,'Portugal',40),(33,'Leandro Carvalho','1991-08-09',83.60,'M','Mecânico',1.80,'Angola',33),(34,'Patrícia Gomes','1997-01-20',59.30,'F','Assistente Social',1.65,'Moçambique',47),(35,'Rodrigo Pinto','1989-02-16',85.50,'M','Engenheiro Informáti',1.84,'Cabo Verde',35),(36,'Fernanda Cruz','1999-09-05',63.00,'F','Designer',1.69,'Portugal',48),(37,'Carlos Almeida','1985-06-23',91.10,'M','Gestor de Projetos',1.87,'Brasil',16),(38,'Tatiane Sousa','2002-12-12',56.80,'F','Estudante',1.62,'Guiné-Bissau',13),(39,'Bruno Ferreira','1990-10-08',79.50,'M','Empresário',1.80,'Portugal',41),(40,'Marta Freitas','1998-11-04',62.20,'F','Psicóloga',1.68,'Angola',7),(41,'Gustavo Teixeira','1993-03-17',84.70,'M','Engenheiro de Softwa',1.82,'Brasil',2),(42,'Patrícia Martins','1996-05-24',58.00,'F','Jornalista',1.64,'Moçambique',50),(43,'Leonardo Ribeiro','1988-09-29',87.20,'M','Analista Financeiro',1.85,'Portugal',43),(44,'Sandra Lima','2001-01-14',55.90,'F','Farmacêutica',1.61,'Cabo Verde',46),(45,'André Lopes','1992-07-30',81.60,'M','Professor',1.78,'Brasil',19),(46,'Helena Duarte','1999-03-19',60.20,'F','Contabilista',1.65,'Angola',24),(47,'Pedro Fernandes','1986-12-09',89.00,'M','Motorista',1.86,'Portugal',14),(48,'Rita Moreira','1998-02-27',57.70,'F','Assistente de RH',1.63,'Moçambique',20),(49,'Gabriel Santos','1995-08-16',82.30,'M','Programador',1.80,'Brasil',25),(50,'Cláudia Costa','2000-05-29',61.80,'F','Designer Gráfica',1.67,'Portugal',35);
/*!40000 ALTER TABLE `gafanhoto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-17 20:10:26
