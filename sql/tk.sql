/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : tk

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-06-16 16:29:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chapter_title`
-- ----------------------------
DROP TABLE IF EXISTS `chapter_title`;
CREATE TABLE `chapter_title` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chapter_title
-- ----------------------------
INSERT INTO `chapter_title` VALUES ('1', 'Oracle12c数据库应用与开发');
INSERT INTO `chapter_title` VALUES ('2', 'JavaEE企业级应用开发教程');

-- ----------------------------
-- Table structure for `fill_in_the_blank`
-- ----------------------------
DROP TABLE IF EXISTS `fill_in_the_blank`;
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

-- ----------------------------
-- Records of fill_in_the_blank
-- ----------------------------

-- ----------------------------
-- Table structure for `multiple_choice`
-- ----------------------------
DROP TABLE IF EXISTS `multiple_choice`;
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

-- ----------------------------
-- Records of multiple_choice
-- ----------------------------

-- ----------------------------
-- Table structure for `question_and_answer`
-- ----------------------------
DROP TABLE IF EXISTS `question_and_answer`;
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

-- ----------------------------
-- Records of question_and_answer
-- ----------------------------

-- ----------------------------
-- Table structure for `root`
-- ----------------------------
DROP TABLE IF EXISTS `root`;
CREATE TABLE `root` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(50) DEFAULT NULL,
  `r_pass` varchar(50) DEFAULT NULL,
  `r_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`r_id`),
  UNIQUE KEY `r_name` (`r_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of root
-- ----------------------------

-- ----------------------------
-- Table structure for `single_choice`
-- ----------------------------
DROP TABLE IF EXISTS `single_choice`;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of single_choice
-- ----------------------------
INSERT INTO `single_choice` VALUES ('1', '1', '回溯法', '归并排序采用的算法设计方法属于（）。', 'A.归纳法', 'B', '暂无解析', '余雨萍', '1', '1');
INSERT INTO `single_choice` VALUES ('2', '2', '回溯法', '归并排序采用的算法设计方法属于（）。', 'A.归纳法', 'B', '暂无解析', '余雨萍', '1', '1');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(50) DEFAULT NULL,
  `s_tb_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  UNIQUE KEY `s_name` (`s_name`),
  KEY `s_tb_id` (`s_tb_id`),
  CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`s_tb_id`) REFERENCES `textbook` (`tb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(50) NOT NULL,
  `t_pass` varchar(50) DEFAULT NULL,
  `t_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`t_id`),
  UNIQUE KEY `t_name` (`t_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '余雨萍', 'admin', null);

-- ----------------------------
-- Table structure for `test_paper`
-- ----------------------------
DROP TABLE IF EXISTS `test_paper`;
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

-- ----------------------------
-- Records of test_paper
-- ----------------------------

-- ----------------------------
-- Table structure for `textbook`
-- ----------------------------
DROP TABLE IF EXISTS `textbook`;
CREATE TABLE `textbook` (
  `tb_id` int(11) NOT NULL AUTO_INCREMENT,
  `tb_name` varchar(50) DEFAULT NULL,
  `tb_chapter_num` int(11) DEFAULT NULL,
  `tb_ct_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textbook
-- ----------------------------
INSERT INTO `textbook` VALUES ('1', 'Oracle12c数据库应用与开发', '1', '1');
INSERT INTO `textbook` VALUES ('2', 'JavaEE企业级应用开发教程', '1', '1');

-- ----------------------------
-- Table structure for `true_or_false`
-- ----------------------------
DROP TABLE IF EXISTS `true_or_false`;
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

-- ----------------------------
-- Records of true_or_false
-- ----------------------------
