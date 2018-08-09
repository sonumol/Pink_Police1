/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.1.32-community : Database - pink_police
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`pink_police` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pink_police`;

/*Table structure for table `assign` */

DROP TABLE IF EXISTS `assign`;

CREATE TABLE `assign` (
  `asid` int(11) NOT NULL AUTO_INCREMENT,
  `vid` varchar(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `device_imei` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`asid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `assign` */

insert  into `assign`(`asid`,`vid`,`pid`,`device_imei`) values (3,'934',11,'43'),(5,'345678',7,'2'),(6,'345678',5,'43'),(7,'934',7,'223e455'),(8,'344',12,'345678'),(9,'345678',14,'3445');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `cmid` int(11) NOT NULL AUTO_INCREMENT,
  `complaint` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`cmid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`cmid`,`complaint`,`uid`,`date`) values (0,'dfghj',1,'2018-08-04'),(2,'erewf',2,'2018-08-06'),(3,'ert',3,'2018-08-06');

/*Table structure for table `dangerous_spot` */

DROP TABLE IF EXISTS `dangerous_spot`;

CREATE TABLE `dangerous_spot` (
  `dsid` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(20) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dangerous_spot` */

/*Table structure for table `emergency` */

DROP TABLE IF EXISTS `emergency`;

CREATE TABLE `emergency` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `request` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emergency` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` varchar(30) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `loid` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` varchar(30) DEFAULT NULL,
  `longitude` varchar(30) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`loid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `location` */

insert  into `location`(`loid`,`latitude`,`longitude`,`pid`) values (1,'11.2537','75.567',3),(2,'11.2537','75.567',5),(3,'11.2537','75.567',7);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) DEFAULT NULL,
  `pswd` varchar(20) DEFAULT NULL,
  `utype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`lid`,`uname`,`pswd`,`utype`) values (1,'admin','admin','admin');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `messaage` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`nid`,`uid`,`messaage`,`date`) values (1,NULL,NULL,NULL);

/*Table structure for table `pink_visuals` */

DROP TABLE IF EXISTS `pink_visuals`;

CREATE TABLE `pink_visuals` (
  `vis_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehno` varchar(50) DEFAULT NULL,
  `visuals` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`vis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `pink_visuals` */

insert  into `pink_visuals`(`vis_id`,`vehno`,`visuals`,`date`) values (1,'934','B1876.jpg','2018-04-02');

/*Table structure for table `pinknumber` */

DROP TABLE IF EXISTS `pinknumber`;

CREATE TABLE `pinknumber` (
  `pnid` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(11) DEFAULT NULL,
  `phno` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pnid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pinknumber` */

insert  into `pinknumber`(`pnid`,`place`,`phno`) values (2,'palakkad',1234567890),(3,'calicut',1234567890),(4,'mnhgtds',8899898989);

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `post` varchar(20) DEFAULT NULL,
  `pin` int(20) DEFAULT NULL,
  `contact` bigint(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`pid`,`fname`,`lname`,`gender`,`place`,`post`,`pin`,`contact`,`email`) values (3,'unni  ','vargheese  ','female','kannur','jascl',457098,123456789,'VASHvxj'),(5,'akku','ndhmhfjds','male','ghjkl','zhgvc',457098,2234567899,'ghjfkl'),(7,'akku ','ndhmhfjds ','male','male','ghjkl',123456,1234567899,'a@g.c'),(11,'Xdsd','aee','male','qewrty','jasc',457098,2234567899,'sdfghj');

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `reply` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `reply` */

insert  into `reply`(`rid`,`cid`,`reply`) values (1,1,'dfgh'),(2,2,'sertyui');

/*Table structure for table `safe_spot` */

DROP TABLE IF EXISTS `safe_spot`;

CREATE TABLE `safe_spot` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(30) DEFAULT NULL,
  `reason` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `safe_spot` */

/*Table structure for table `user_reg` */

DROP TABLE IF EXISTS `user_reg`;

CREATE TABLE `user_reg` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `adarnumber` varchar(50) DEFAULT NULL,
  `phoneno` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_reg` */

insert  into `user_reg`(`uid`,`name`,`district`,`city`,`place`,`email`,`adarnumber`,`phoneno`) values (1,'sonu','kannur','kannur','kannur','ss','56yt6',8987876),(2,'asdfgh','sadfg','dfg','dfg','df','456',123456);

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `number` varchar(30) NOT NULL,
  `photo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`vid`,`number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

insert  into `vehicle`(`vid`,`name`,`number`,`photo`) values (2,'hsaajdgh','345678','IMG-20171107-WA0032.jpg');

/*Table structure for table `visuals` */

DROP TABLE IF EXISTS `visuals`;

CREATE TABLE `visuals` (
  `visual_id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `place` varchar(40) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`visual_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `visuals` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
