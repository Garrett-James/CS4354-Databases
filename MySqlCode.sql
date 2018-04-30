CREATE SCHEMA IF NOT EXISTS `FruitDatabase` DEFAULT CHARACTER SET utf8 ;
USE `FruitDatabase` ;

CREATE TABLE `consumer_info` (
  `year` int(11) NOT NULL,
  `consumption` double NOT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `priceinfo` (
  `year` int(11) NOT NULL,
  `price_info` double NOT NULL,
  `price_grower` double NOT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `stateproduction` (
  `year` int(11) NOT NULL,
  `state` varchar(45) NOT NULL,
  `yield` double NOT NULL,
  `bearingAcre` double NOT NULL,
  PRIMARY KEY (`year`,`state`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;