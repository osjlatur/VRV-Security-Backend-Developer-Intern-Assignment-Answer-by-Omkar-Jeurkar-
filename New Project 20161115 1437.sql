-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema multi_user
--

CREATE DATABASE IF NOT EXISTS multi_user;
USE multi_user;

--
-- Definition of table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
CREATE TABLE `downloads` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `filename` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;


--
-- Definition of table `file_storage`
--

DROP TABLE IF EXISTS `file_storage`;
CREATE TABLE `file_storage` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `filename` varchar(45) NOT NULL,
  `file` longblob NOT NULL,
  `block1` longblob NOT NULL,
  `block2` longblob NOT NULL,
  `block3` longblob NOT NULL,
  `username` varchar(45) NOT NULL,
  `up_time` varchar(45) NOT NULL,
  `mac1` varchar(45) NOT NULL,
  `mac2` varchar(45) NOT NULL,
  `mac3` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_storage`
--

/*!40000 ALTER TABLE `file_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_storage` ENABLE KEYS */;


--
-- Definition of table `file_view`
--

DROP TABLE IF EXISTS `file_view`;
CREATE TABLE `file_view` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `file_name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `mac1` varchar(45) NOT NULL,
  `mac2` varchar(45) NOT NULL,
  `mac3` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `file` longblob NOT NULL,
  `status` varchar(45) NOT NULL,
  `file_status` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_view`
--

/*!40000 ALTER TABLE `file_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_view` ENABLE KEYS */;


--
-- Definition of table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gen` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `status` varchar(45) default NULL,
  `skey` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
/*!40000 ALTER TABLE `register` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
