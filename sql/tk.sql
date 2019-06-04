-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: tk
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `chapter_title`
--

DROP TABLE IF EXISTS `chapter_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapter_title` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter_title`
--

LOCK TABLES `chapter_title` WRITE;
/*!40000 ALTER TABLE `chapter_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapter_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fill_in_the_blank`
--

DROP TABLE IF EXISTS `fill_in_the_blank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fill_in_the_blank` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_subject` int(11) DEFAULT NULL,
  `fb_point` varchar(255) DEFAULT NULL,
  `fb_stem` varchar(255) DEFAULT NULL,
  `fb_answer` varchar(255) DEFAULT NULL,
  `fb_analysis` varchar(255) DEFAULT NULL,
  `fb_name` varchar(50) DEFAULT NULL,
  `fb_tb_id` int(11) DEFAULT NULL,
  `fb_ct_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fb_id`),
  KEY `fb_name` (`fb_name`),
  KEY `fb_tb_id` (`fb_tb_id`),
  KEY `fb_ct_id` (`fb_ct_id`),
  CONSTRAINT `fill_in_the_blank_ibfk_1` FOREIGN KEY (`fb_name`) REFERENCES `teacher` (`t_name`),
  CONSTRAINT `fill_in_the_blank_ibfk_2` FOREIGN KEY (`fb_tb_id`) REFERENCES `textbook` (`tb_id`),
  CONSTRAINT `fill_in_the_blank_ibfk_3` FOREIGN KEY (`fb_ct_id`) REFERENCES `teacher` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fill_in_the_blank`
--

LOCK TABLES `fill_in_the_blank` WRITE;
/*!40000 ALTER TABLE `fill_in_the_blank` DISABLE KEYS */;
/*!40000 ALTER TABLE `fill_in_the_blank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiple_choice`
--

DROP TABLE IF EXISTS `multiple_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multiple_choice` (
  `mc_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_subject` int(11) DEFAULT NULL,
  `mc_point` varchar(255) DEFAULT NULL,
  `mc_stem` varchar(255) DEFAULT NULL,
  `mc_option` varchar(255) DEFAULT NULL,
  `mc_answer` varchar(40) DEFAULT NULL,
  `mc_analysis` varchar(255) DEFAULT NULL,
  `mc_t_name` varchar(50) DEFAULT NULL,
  `mc_tb_id` int(11) DEFAULT NULL,
  `mc_ct_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mc_id`),
  KEY `mc_t_name` (`mc_t_name`),
  KEY `mc_tb_id` (`mc_tb_id`),
  KEY `mc_ct_id` (`mc_ct_id`),
  CONSTRAINT `multiple_choice_ibfk_1` FOREIGN KEY (`mc_t_name`) REFERENCES `teacher` (`t_name`),
  CONSTRAINT `multiple_choice_ibfk_2` FOREIGN KEY (`mc_tb_id`) REFERENCES `textbook` (`tb_id`),
  CONSTRAINT `multiple_choice_ibfk_3` FOREIGN KEY (`mc_ct_id`) REFERENCES `teacher` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiple_choice`
--

LOCK TABLES `multiple_choice` WRITE;
/*!40000 ALTER TABLE `multiple_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `multiple_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_and_answer`
--

DROP TABLE IF EXISTS `question_and_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_and_answer` (
  `qa_id` int(11) NOT NULL AUTO_INCREMENT,
  `qa_subject` int(11) DEFAULT NULL,
  `qa_point` varchar(255) DEFAULT NULL,
  `qa_stem` varchar(255) DEFAULT NULL,
  `qa_answer` varchar(255) DEFAULT NULL,
  `qa_analysis` varchar(255) DEFAULT NULL,
  `qa_name` varchar(50) DEFAULT NULL,
  `qa_tb_id` int(11) DEFAULT NULL,
  `qa_ct_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`qa_id`),
  KEY `qa_name` (`qa_name`),
  KEY `qa_tb_id` (`qa_tb_id`),
  KEY `qa_ct_id` (`qa_ct_id`),
  CONSTRAINT `question_and_answer_ibfk_1` FOREIGN KEY (`qa_name`) REFERENCES `teacher` (`t_name`),
  CONSTRAINT `question_and_answer_ibfk_2` FOREIGN KEY (`qa_tb_id`) REFERENCES `textbook` (`tb_id`),
  CONSTRAINT `question_and_answer_ibfk_3` FOREIGN KEY (`qa_ct_id`) REFERENCES `teacher` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_and_answer`
--

LOCK TABLES `question_and_answer` WRITE;
/*!40000 ALTER TABLE `question_and_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_and_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `root`
--

DROP TABLE IF EXISTS `root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `root` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(50) DEFAULT NULL,
  `r_pass` varchar(50) DEFAULT NULL,
  `r_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`r_id`),
  UNIQUE KEY `r_name` (`r_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `root`
--

LOCK TABLES `root` WRITE;
/*!40000 ALTER TABLE `root` DISABLE KEYS */;
/*!40000 ALTER TABLE `root` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `single_choice`
--

DROP TABLE IF EXISTS `single_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `single_choice` (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_subject` int(11) DEFAULT NULL,
  `sc_point` varchar(255) DEFAULT NULL,
  `sc_stem` varchar(255) DEFAULT NULL,
  `sc_option` varchar(255) DEFAULT NULL,
  `sc_answer` varchar(8) DEFAULT NULL,
  `sc_analysis` varchar(255) DEFAULT NULL,
  `sc_t_name` varchar(50) DEFAULT NULL,
  `sc_tb_id` int(11) DEFAULT NULL,
  `sc_ct_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sc_id`),
  KEY `sc_t_name` (`sc_t_name`),
  KEY `sc_tb_id` (`sc_tb_id`),
  KEY `sc_ct_id` (`sc_ct_id`),
  CONSTRAINT `single_choice_ibfk_1` FOREIGN KEY (`sc_t_name`) REFERENCES `teacher` (`t_name`),
  CONSTRAINT `single_choice_ibfk_2` FOREIGN KEY (`sc_tb_id`) REFERENCES `textbook` (`tb_id`),
  CONSTRAINT `single_choice_ibfk_3` FOREIGN KEY (`sc_ct_id`) REFERENCES `teacher` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `single_choice`
--

LOCK TABLES `single_choice` WRITE;
/*!40000 ALTER TABLE `single_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `single_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(50) DEFAULT NULL,
  `s_tb_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  UNIQUE KEY `s_name` (`s_name`),
  KEY `s_tb_id` (`s_tb_id`),
  CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`s_tb_id`) REFERENCES `textbook` (`tb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(50) NOT NULL,
  `t_pass` varchar(50) DEFAULT NULL,
  `t_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  UNIQUE KEY `t_name` (`t_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_paper`
--

DROP TABLE IF EXISTS `test_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_paper` (
  `tp_id` int(11) NOT NULL AUTO_INCREMENT,
  `tp_name` varchar(50) DEFAULT NULL,
  `tp_t_name` varchar(50) DEFAULT NULL,
  `tp_question_id` varchar(200) DEFAULT NULL,
  `tp_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tp_status` tinyint(1) DEFAULT NULL,
  `tp_info` varchar(200) DEFAULT NULL,
  `tp_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`tp_id`),
  KEY `tp_t_name` (`tp_t_name`),
  CONSTRAINT `test_paper_ibfk_1` FOREIGN KEY (`tp_t_name`) REFERENCES `teacher` (`t_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_paper`
--

LOCK TABLES `test_paper` WRITE;
/*!40000 ALTER TABLE `test_paper` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textbook`
--

DROP TABLE IF EXISTS `textbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `textbook` (
  `tb_id` int(11) NOT NULL AUTO_INCREMENT,
  `tb_name` varchar(50) DEFAULT NULL,
  `tb_chapter_num` int(11) DEFAULT NULL,
  `tb_ct_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textbook`
--

LOCK TABLES `textbook` WRITE;
/*!40000 ALTER TABLE `textbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `textbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `true_or_false`
--

DROP TABLE IF EXISTS `true_or_false`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `true_or_false` (
  `tf_id` int(11) NOT NULL AUTO_INCREMENT,
  `tf_subject` int(11) DEFAULT NULL,
  `tf_point` varchar(255) DEFAULT NULL,
  `tf_stem` varchar(255) DEFAULT NULL,
  `tf_answer` varchar(255) DEFAULT NULL,
  `tf_analysis` varchar(255) DEFAULT NULL,
  `tf_name` varchar(50) DEFAULT NULL,
  `tf_tb_id` int(11) DEFAULT NULL,
  `tf_ct_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tf_id`),
  KEY `tf_name` (`tf_name`),
  KEY `tf_tb_id` (`tf_tb_id`),
  KEY `tf_ct_id` (`tf_ct_id`),
  CONSTRAINT `true_or_false_ibfk_1` FOREIGN KEY (`tf_name`) REFERENCES `teacher` (`t_name`),
  CONSTRAINT `true_or_false_ibfk_2` FOREIGN KEY (`tf_tb_id`) REFERENCES `textbook` (`tb_id`),
  CONSTRAINT `true_or_false_ibfk_3` FOREIGN KEY (`tf_ct_id`) REFERENCES `teacher` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `true_or_false`
--

LOCK TABLES `true_or_false` WRITE;
/*!40000 ALTER TABLE `true_or_false` DISABLE KEYS */;
/*!40000 ALTER TABLE `true_or_false` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04 16:26:47
