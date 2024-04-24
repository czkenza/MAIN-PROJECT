/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - know_it_right
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`know_it_right` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `know_it_right`;

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

/*Data for the table `comments` */

insert  into `comments`(`comment_id`,`user_post_id`,`user_id`,`comments`,`date`) values 
(1,1,1,'bsabj','2023-11-12'),
(2,2,1,'com2','2023-11-21'),
(3,1,1,'cc','2023-11-19'),
(4,1,1,'gg','2023-11-18'),
(5,1,1,'ggb','2023-11-20'),
(6,1,1,'jhjjh','2023-11-17'),
(7,1,1,'hhjk jjm1','2023-11-16'),
(8,1,2,'hi','2023-11-21'),
(9,1,2,'helloo','2023-11-21'),
(10,2,2,'hiii','2023-11-21'),
(11,1,2,'hii','2023-11-21'),
(12,1,2,'hellooo','2023-11-21'),
(13,1,2,'wow','2023-11-21'),
(14,2,2,'great','2023-11-21'),
(15,2,2,'helloo','2023-12-01'),
(16,2,2,'wow','2023-12-01'),
(17,2,2,'shh','2023-12-01'),
(18,2,2,'jvksfj','2023-12-01'),
(19,2,2,'sfs','2023-12-01'),
(20,2,2,'qqq','2023-12-01'),
(21,2,2,'pppp','2023-12-01'),
(22,3,2,'gg','2023-12-02'),
(23,1,6,'hii','2023-12-08'),
(24,1,6,'ok fine ','2023-12-08'),
(25,1,6,'lll','2023-12-08'),
(26,2,2,'okk','2024-04-09');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `license_num` varchar(50) NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `about_company` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `company` */

insert  into `company`(`company_id`,`login_id`,`company_name`,`license_num`,`place`,`phone`,`email`,`about_company`) values 
(1,2,'gg','536','ekm tcr','6667','ggg@dv.jn','bbbb'),
(2,3,'cmp1','e6546476','ekm','9087654321','cmp1@gmail.com','best'),
(3,4,'cmp2','6476787','tcr','09087654321','cmp1@gmail.com','good'),
(4,9,'Digital Dynamics Pvt. Ltd.','gffty56789g','ekm','+919871234567','shinghve@gmail.com','987fggfcxv');

/*Table structure for table `complaints` */

DROP TABLE IF EXISTS `complaints`;

CREATE TABLE `complaints` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `complaint_title` varchar(1000) NOT NULL,
  `complaint_des` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `complaints` */

insert  into `complaints`(`complaint_id`,`user_id`,`complaint_title`,`complaint_des`,`reply`,`date`) values 
(1,2,'','vvd','ok fine','2023-11-21'),
(2,2,'','vsd','Pending','2023-11-21'),
(3,2,'','fsf','Pending','2023-12-01'),
(4,2,'','fs','hhr','2023-12-01'),
(5,3,'bubu','vgcgc','jyyjt','2023-12-08'),
(6,1,'gh','hg','Pending','2024-04-09');

/*Table structure for table `internship` */

DROP TABLE IF EXISTS `internship`;

CREATE TABLE `internship` (
  `internship_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `fees` varchar(255) DEFAULT NULL,
  `syllabus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`internship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `internship` */

insert  into `internship`(`internship_id`,`company_id`,`title`,`duration`,`fees`,`syllabus`) values 
(1,1,'few','fewf','dqw','sa'),
(2,1,'few','fewf','dqw','sa');

/*Table structure for table `job_application` */

DROP TABLE IF EXISTS `job_application`;

CREATE TABLE `job_application` (
  `job_application_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_vacancy_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `job_application` */

insert  into `job_application`(`job_application_id`,`job_vacancy_id`,`user_id`,`date`,`status`) values 
(1,1,1,'21-11-2023','Accepted'),
(2,2,1,'21-11-2023','Rejected'),
(3,1,1,'21-11-2023','Accepted'),
(4,2,1,'20-11-2023','Accepted'),
(5,1,1,'01-12-2023','Accepted'),
(6,1,3,'2023-12-08','Pending'),
(7,1,1,'2024-04-09','Pending'),
(8,1,1,'2024-04-09','Pending');

/*Table structure for table `job_category` */

DROP TABLE IF EXISTS `job_category`;

CREATE TABLE `job_category` (
  `job_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `job_category` */

insert  into `job_category`(`job_category_id`,`job_category_name`) values 
(1,'fsd'),
(2,'ref'),
(3,'f'),
(4,'ss'),
(5,'rsger'),
(6,'sgrd'),
(7,'hhhj'),
(8,'hjj'),
(9,'afegf'),
(10,'grgre'),
(11,'ewfgr');

/*Table structure for table `job_vacancy` */

DROP TABLE IF EXISTS `job_vacancy`;

CREATE TABLE `job_vacancy` (
  `job_vacancy_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_category_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `job_description` varchar(10000) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `employment_type` varchar(200) DEFAULT NULL,
  `experience` varchar(200) DEFAULT NULL,
  `qualification` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`job_vacancy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `job_vacancy` */

insert  into `job_vacancy`(`job_vacancy_id`,`job_category_id`,`company_id`,`job_title`,`job_description`,`skills`,`location`,`salary`,`employment_type`,`experience`,`qualification`,`industry`) values 
(1,1,1,'Marketing Intern','We\'re Food52, and we\'ve created a groundbreaking and award-winning cooking site. We support, connect, and celebrate home cooks, and give them everything they need in one place.We have a top editorial, business, and engineering team. We\'re focused on using technology to find new and better ways to connect people around their specific food interests, and to offer them superb, highly curated information about food and cooking. We attract the most talented home cooks and contributors in the country; we also publish well-known professionals like Mario Batali, Gwyneth Paltrow, and Danny Meyer. And we have partnerships with Whole Foods Market and Random House.Food52 has been named the best food website by the James Beard Foundation and IACP, and has been featured in the New York Times, NPR, Pando Daily, TechCrunch, and on the Today Show.We\'re located in Chelsea, in New York City.','python, java,php,js','New York','30000','internship','5 year','graduate','Marketing'),
(2,1,1,'hvghvg','evhvvvvgffg','python, java,php,js',NULL,NULL,NULL,NULL,NULL,NULL),
(3,1,1,'sdhs','bdfhj','speaking,writing',NULL,NULL,NULL,NULL,NULL,NULL),
(4,1,3,'qq','qq','qq','qq','qq','qq','qq','qq','qq'),
(5,1,3,'qq','ss','sds','ss','dd','dd','dd','ddd','ff'),
(6,1,3,'aa','pp','pp','pp','pp','pp','pp','pp','pp');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`usertype`) values 
(1,'admin','admin','admin'),
(2,'cc','cc','Company'),
(3,'u','u','User'),
(4,'cmp2','cmp2','Company'),
(5,'ttkk','ttkk','Pending'),
(6,'pp','pp','User'),
(7,'abc','abc','Pending'),
(8,'abcd','abc','Pending'),
(9,'digi','digi','Pending');

/*Table structure for table `resume` */

DROP TABLE IF EXISTS `resume`;

CREATE TABLE `resume` (
  `resume_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `resume_skills` text NOT NULL,
  PRIMARY KEY (`resume_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `resume` */

insert  into `resume`(`resume_id`,`user_id`,`file`,`resume_skills`) values 
(1,3,'static/resume/69f95640-d3fa-443b-9a59-0f5b873eed89abc.pdf','ABOUT ME\nDECLARATION\nKerala\nhttps://www.linkedin.com\n/in/vijay-r04\nvjsparrow04gmail.com\n7736253394\nCONTACT ME\nSTRENGTH\nTeam Work\nAdaptability\nGood Analytical Skills\nProblem Sloving Skills \nFast Learner\nFamiliarities in modern\ntechnologies.\nSKILLS\nDedicated and Passionate BCA graduate with a strong foundation in\nSoftware Development. Strong analytical and problem solving skills     \nand ability to learn new technologies quickly. Self- motivated and\npassionate about Software Development, eager to start my career in\nthis field and make an impact.\n2023\nLuminar Technolab | Internship\n2019 - 2022\n2016- 2017\nECOMMERCE\nPython\nDjango \nMysql\nGithub\nBootstrap\nJava Script\nHTML & CSS\nB A C H E L O R  O F  C O M P U T E R\nA P P L I C A T I O N S\nVIJAY R\nEDUCATION BACKGROUND\nPython-Django fullstack Development\nDeveloped Projects using HTML, CSS, JavaScript as Front-end\ntools and Python-Django-backend\nSree Narayana Guru College of Arts & Science | Bachelor\nDegree\nBiology Science\nOverall score/Grade - 68%\nP.G.P.H.S.S | 12th Grade\n2017 - 2019\nCertified in Bachelor of computer application from SNGC college\nOverall score/Grade - 75%\n      of arts and science,Coimbatore(Affiliated by Bharathiar University\nKarnaki Amman Higher Secondary School \nOverall score/Grade - 65%\nPROJECTS\nEcommerce is often used to refer to the sale of physical products online,\nbut it can also describe any kind of commercial transaction that is\nfacilitated through the internet.\nUsed are Python,Django framework,CSS,Bootstrap and Html\nI hereby declare that the above furnished information is true and \ncorrect to the best of my knowledge\n'),
(2,1,'static/resume/be9cfeef-f363-44b3-8cda-cf8f9caab7ebabc.pdf','python, java,php,js');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`user_id`,`login_id`,`fname`,`lname`,`place`,`phone`,`email`) values 
(1,3,'uu','ss','ee','123456789','uu@gmail.com'),
(2,5,'tt','kk','ekm','9087654321','tt@gmail.com'),
(3,6,'hahzh','jzhzhz','hzhhz','626272727','hahaj@hjs.jsj');

/*Table structure for table `user_post` */

DROP TABLE IF EXISTS `user_post`;

CREATE TABLE `user_post` (
  `user_post_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `post` varchar(15000) DEFAULT NULL,
  `post_type` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_post` */

insert  into `user_post`(`user_post_id`,`user_id`,`title`,`post`,`post_type`,`date`) values 
(1,1,'dd','cc',NULL,NULL),
(2,1,'sample','post 1',NULL,NULL),
(3,2,'sample','testing data',NULL,NULL),
(4,3,'gcg','cgct',NULL,NULL),
(5,1,'asd','static/user_post/bbc301cd-e5e2-4a1a-b3ad-c048a8e2602cfile.jpg','jpg','2024-04-09'),
(6,1,'hhf','gdhv','text','2024-04-09'),
(7,1,'ghg','thfhf','text','2024-04-09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
