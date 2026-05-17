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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCurso` varchar(30) DEFAULT NULL,
  `descrição` text DEFAULT NULL,
  `carga` int(10) unsigned DEFAULT NULL,
  `totaulas` int(10) unsigned DEFAULT NULL,
  `ano` year(4) DEFAULT 2016,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nomeCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Introdução à Programação','Curso básico de lógica e fundamentos de programação',40,20,2021),(2,'Banco de Dados MySQL','Aprenda a criar, gerenciar e consultar bancos de dados MySQL',60,25,2022),(3,'HTML e CSS','Fundamentos de criação de páginas web com HTML5 e CSS3',45,22,2023),(4,'JavaScript Intermediário','Manipulação do DOM e conceitos modernos de JavaScript',55,24,2023),(5,'Python para Iniciantes','Introdução à programação com Python e suas principais bibliotecas',50,20,2022),(6,'Desenvolvimento Web Full Stack','Curso completo de front-end e back-end com Node.js e React',120,40,2024),(7,'Redes de Computadores','Conceitos de redes, protocolos TCP/IP e configuração de dispositivos',80,35,2021),(8,'Cibersegurança','Fundamentos de segurança digital e práticas de defesa cibernética',70,28,2024),(9,'Engenharia de Software','Ciclo de vida do software, metodologias ágeis e UML',90,36,2023),(10,'Análise de Dados com Excel','Análise e visualização de dados utilizando o Microsoft Excel',40,18,2021),(11,'Power BI Avançado','Criação de dashboards interativos e análise de dados empresariais',50,20,2024),(12,'Inteligência Artificial','Fundamentos de IA e aprendizado de máquina com Python',100,38,2024),(13,'Machine Learning','Técnicas supervisionadas e não supervisionadas de aprendizado de máquina',90,34,2023),(14,'Big Data','Manipulação e análise de grandes volumes de dados com Hadoop e Spark',110,40,2023),(15,'Administração de Sistemas Linu','Gerenciamento de servidores e comandos Linux essenciais',70,26,2022),(16,'DevOps e Integração Contínua','Automação de pipelines e integração de sistemas com Docker e Jenkins',85,32,2024),(17,'Gestão de Projetos','Conceitos de PMBOK e metodologias ágeis aplicadas à gestão de projetos',60,25,2022),(18,'Marketing Digital','Planejamento de campanhas online e estratégias de redes sociais',45,20,2023),(19,'Edição de Vídeo','Edição profissional de vídeos com Adobe Premiere e DaVinci Resolve',50,22,2022),(20,'Design Gráfico','Criação de peças gráficas com Photoshop e Illustrator',60,25,2023),(21,'Arquitetura de Computadores','Estudo dos componentes internos e funcionamento do hardware',75,30,2021),(22,'Matemática para Computação','Conceitos matemáticos aplicados à ciência da computação',80,32,2022),(23,'Lógica de Programação Avançada','Algoritmos, estruturas de repetição e recursividade',50,21,2021),(24,'C++ Essencial','Introdução à linguagem C++ e programação orientada a objetos',65,28,2023),(25,'Java Avançado','Programação orientada a objetos e uso de frameworks Java',85,34,2024),(26,'Node.js e Express','Criação de APIs RESTful com Node.js e Express',70,27,2023),(27,'React.js do Zero ao Avançado','Desenvolvimento de interfaces modernas com React e Hooks',80,30,2024),(28,'Angular Framework','Criação de aplicações SPA com Angular e TypeScript',75,29,2024),(29,'PHP com MySQL','Criação de sistemas dinâmicos usando PHP e banco de dados MySQL',65,26,2022),(30,'Cybersecurity Avançado','Análise de vulnerabilidades e testes de penetração',95,38,2024),(31,'Administração de Redes','Gerenciamento de redes locais e cabeamento estruturado',70,27,2023),(32,'Docker e Kubernetes','Criação e orquestração de containers em ambientes modernos',90,35,2024),(33,'Cloud Computing com AWS','Implantação de sistemas em nuvem usando Amazon Web Services',100,36,2023),(34,'Microsoft Azure Fundamentals','Infraestrutura e serviços em nuvem na plataforma Azure',85,30,2023),(35,'Google Cloud Platform','Serviços de computação e armazenamento na GCP',85,32,2023),(36,'Ética Profissional em TI','Comportamento ético e responsabilidade profissional na área tecnológica',30,12,2022),(37,'Finanças para Empreendedores','Gestão financeira, fluxo de caixa e análise de custos',45,18,2023),(38,'Gestão de Pessoas','Liderança, motivação e desenvolvimento de equipes',50,20,2022),(39,'Empreendedorismo Digital','Criação e gestão de negócios online de forma prática',60,25,2023),(40,'Introdução à Robótica','Fundamentos de robótica e automação com Arduino',70,28,2024),(41,'Internet das Coisas (IoT)','Conceitos e aplicações práticas da IoT',80,30,2024),(42,'Realidade Aumentada e Virtual','Criação de experiências imersivas com Unity e C#',85,33,2023),(43,'Segurança em Redes','Proteção de sistemas e mitigação de ataques em redes locais',75,29,2023),(44,'Gestão de TI','Planejamento estratégico e governança em tecnologia da informação',65,26,2023),(45,'Sistemas Operacionais','Funcionamento e gerenciamento de sistemas operacionais',70,28,2022),(46,'Programação Mobile com Kotlin','Desenvolvimento de apps Android com Kotlin',80,32,2024),(47,'Swift para iOS','Criação de aplicações móveis para iPhone e iPad',85,34,2024),(48,'Análise de Sistemas','Modelagem e levantamento de requisitos de software',75,28,2022),(49,'Testes de Software','Testes manuais, automatizados e controle de qualidade',60,24,2023),(50,'Administração de Servidores','Configuração e monitoramento de servidores locais e em nuvem',95,36,2024);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
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
