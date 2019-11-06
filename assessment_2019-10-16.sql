# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.01 (MySQL 5.7.27)
# Database: assessment
# Generation Time: 2019-10-16 15:33:38 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table assessment_appraiser
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assessment_appraiser`;

CREATE TABLE `assessment_appraiser` (
  `assessment_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `appraiser_id` int(4) NOT NULL,
  `category_id` int(4) NOT NULL,
  `rating_id` int(4) NOT NULL,
  `skill_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`assessment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `assessment_appraiser` WRITE;
/*!40000 ALTER TABLE `assessment_appraiser` DISABLE KEYS */;

INSERT INTO `assessment_appraiser` (`assessment_id`, `appraiser_id`, `category_id`, `rating_id`, `skill_id`)
VALUES
	(1,2,1,2,1),
	(2,2,1,3,2),
	(3,2,1,3,3),
	(4,2,1,4,4),
	(5,2,2,3,5),
	(6,2,2,4,6),
	(7,2,2,3,7),
	(8,2,3,4,8),
	(9,2,3,3,9),
	(10,2,3,3,10),
	(11,2,3,4,11),
	(12,2,4,4,12),
	(13,2,4,3,13),
	(14,2,5,3,14),
	(15,2,5,4,15),
	(16,2,5,3,16),
	(17,2,5,4,17),
	(18,2,5,3,18),
	(19,2,5,3,19),
	(20,2,6,4,20),
	(21,2,6,2,21),
	(22,2,6,2,22),
	(23,2,6,4,23);

/*!40000 ALTER TABLE `assessment_appraiser` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table assessment_staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assessment_staff`;

CREATE TABLE `assessment_staff` (
  `assessment_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` int(4) NOT NULL,
  `category_id` int(4) NOT NULL,
  `rating_id` int(4) NOT NULL,
  `skill_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`assessment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `assessment_staff` WRITE;
/*!40000 ALTER TABLE `assessment_staff` DISABLE KEYS */;

INSERT INTO `assessment_staff` (`assessment_id`, `staff_id`, `category_id`, `rating_id`, `skill_id`)
VALUES
	(1,1,1,3,1),
	(2,1,1,4,2),
	(3,1,1,3,3),
	(4,1,1,2,4),
	(5,1,2,3,5),
	(6,1,2,4,6),
	(7,1,2,3,7),
	(8,1,3,3,8),
	(9,1,3,3,9),
	(10,1,3,4,10),
	(11,1,3,5,11),
	(12,1,4,3,12),
	(13,1,4,4,13),
	(19,1,6,5,20),
	(20,1,6,4,21),
	(21,1,6,3,22),
	(22,1,6,3,23),
	(23,1,6,4,24),
	(24,23,1,2,1),
	(25,23,1,4,2),
	(26,23,1,3,3),
	(27,23,1,5,4),
	(28,23,2,2,5),
	(29,23,2,3,6),
	(30,23,2,2,7),
	(31,23,3,1,8),
	(32,23,3,4,9),
	(33,23,3,3,10),
	(34,23,3,2,11),
	(35,23,4,1,12),
	(36,23,4,3,13),
	(37,23,6,2,20),
	(38,23,6,3,21),
	(39,23,6,4,22),
	(40,23,6,2,23),
	(41,23,6,5,24);

/*!40000 ALTER TABLE `assessment_staff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table specifies the groupings for each skill set.';

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;

INSERT INTO `category` (`category_id`, `category_name`)
VALUES
	(1,'Technical Skills'),
	(2,'Quality Of Work'),
	(3,'Interpersonal Skills'),
	(4,'Communication Skills'),
	(5,'Leadership Skills'),
	(6,'Approach To Work');

/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `rating_id` int(4) unsigned NOT NULL,
  `rating_desc` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;

INSERT INTO `rating` (`rating_id`, `rating_desc`)
VALUES
	(1,'Does not meet the minimun requirements'),
	(2,'Sometimes acceptable, but not consistent'),
	(3,'Consistently meets the requirement of the job\n\n\n'),
	(4,'Clearly and consistently above what is required'),
	(5,'Unique and outstanding accomplishments');

/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table skills
# ------------------------------------------------------------

DROP TABLE IF EXISTS `skills`;

CREATE TABLE `skills` (
  `skill_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(90) NOT NULL DEFAULT '',
  `skill_description` text,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;

INSERT INTO `skills` (`skill_id`, `skill_name`, `skill_description`)
VALUES
	(1,'Knowledge Of The Job','Extent to which the employee possesses and applies the knowledge to perform the job.'),
	(2,'Problem Solving','The capacity to analyze situations, identify the key issues, establish and evaluate alternative courses of action and produce a practical and acceptable solution'),
	(3,'Employs Tools Of The Job Competently','Extent to which the employee effectively utilizes job related tools, e.g. P10, Microsoft products, etc.'),
	(4,'Provides Suggestions For Work improvement','The quality of suggestions or recommendations offered by the employee to improve his/her work or the work of the unit'),
	(5,'Accuracy Or Precision','Extent to which work is free from errors\n'),
	(6,'Reliability','Extent to which the employee can be depended upon to produce a consistent work output'),
	(7,'Work Completed On Schedule','Extent to which the employee meets deadlines and manages multiple tasks with accuracy an efficiency'),
	(8,'Customer Focus','The exercise of increasing care in looking after the interests of external and internsl customers to ensure that their wants, needs and expectations are met or exceeded'),
	(9,'With Co-Workers','Working relationship established with other employees within or outside employee\'s department'),
	(10,'With Supervisors','Working relationship established with members of departmental supervision and management team\n'),
	(11,'Commitment To Team Success','The ability to work co-operatively and successfully with other members of the team. A full understanding of the role to be playted as a team member.'),
	(12,'Written Expression','Ability of the employee to express his/her thoughts in writing in a logical manner and sequence, using appropriate language, grammar, punctuation and sentence structure'),
	(13,'Oral Expression','Ability of the employee to verbally express ideas clearly, concisely, and effective'),
	(14,'Commitment to team success','Ability of the employee to verbally express ideas clearly, concisely, and effective'),
	(15,'Properly Aligns Authority To Responsibilty','Extent to which the employee delegates to lowest competent level, while monitoring an coaching performance and ensuring appropriate commitment of resources to accomplish the work'),
	(16,'Faces Performance Problems Squarely','Degree to which employee establishes clear work standards and ensures that such work standards are met, taking corrective action if appropriate'),
	(17,'Controls Cost And Maximizes Resources','Extent to which the employee makes sound, responsible budget decisions,using resources effectively'),
	(18,'Sets High Standards fro self, As Well As Others','Demonstrate commitment to high standards of performance through own behavior and expectations as conveyed to employees'),
	(19,'Developing Others','The capacity to foster the development of members of his/her team, providing the feedback, support, encouraging and coaching'),
	(20,'Open to Ideas And Approaches','Extent to which the employee is receptive to new ideas and willing to try new and different approaches with a positive attitude and commitment to sucess of the approach'),
	(21,'Initiative','Takes a proactive approach to job by initiating and following through with work projects not initially assigned by the supervisor but considered necessary to department objectives'),
	(22,'Achievement/Results Oriented','The extent to which employee gets things done well and the ability to set and meet challenging goals, create own measures of excellence and constantlyy seek ways of improving performance'),
	(23,'Follows Instruction','Performs according to written or verbal instructions'),
	(24,'Time Management','Degree to which employee complies with company\'s policies and procedures governing use of his/her time');

/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_appraiser
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_appraiser`;

CREATE TABLE `user_appraiser` (
  `appraiser_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appraiser_email` varchar(70) NOT NULL DEFAULT '',
  `appraiser_password` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`appraiser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_appraiser` WRITE;
/*!40000 ALTER TABLE `user_appraiser` DISABLE KEYS */;

INSERT INTO `user_appraiser` (`appraiser_id`, `appraiser_email`, `appraiser_password`)
VALUES
	(1,'boy@itconsortiumgh.com','1223345'),
	(2,'girl@itconsortiumgh.com','54321');

/*!40000 ALTER TABLE `user_appraiser` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_staff`;

CREATE TABLE `user_staff` (
  `staff_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `staff_email` varchar(50) NOT NULL DEFAULT '',
  `staff_password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_staff` WRITE;
/*!40000 ALTER TABLE `user_staff` DISABLE KEYS */;

INSERT INTO `user_staff` (`staff_id`, `staff_email`, `staff_password`)
VALUES
	(1,'marvie@itconsortiumgh.com','23456nui'),
	(23,'will@itconsortiumgh.com','qwertyuui');

/*!40000 ALTER TABLE `user_staff` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
