CREATE TABLE `diyetisyen` (
  `dyid` bigint NOT NULL AUTO_INCREMENT,
  `tckimlik` bigint NOT NULL UNIQUE,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45)  DEFAULT NULL,
  `email` varchar(45)  DEFAULT NULL,
  `phone` varchar(45)  DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `cv` varchar(100)  DEFAULT NULL,
  `uniname` varchar(45) DEFAULT NULL,
  `graduateyear` int DEFAULT NULL,
  `sesfee` int DEFAULT NULL,
  PRIMARY KEY (`dyid`)
);
CREATE TABLE `uyeler` (
  `uid` bigint NOT NULL AUTO_INCREMENT,
  `tckimlik` bigint NOT NULL UNIQUE,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45)  DEFAULT NULL,
  `email` varchar(45)  DEFAULT NULL,
  `phone` varchar(45)  DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`uid`)
);
CREATE TABLE `diyetlist` (
  `dlistid` bigint NOT NULL AUTO_INCREMENT,
  `uyid` bigint NOT NULL,
  `dytid` bigint NOT NULL,
  `info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dlistid`)
);
CREATE TABLE `randevular` (
  `ranid` bigint NOT NULL AUTO_INCREMENT,
  `uyid` bigint NOT NULL,
  `dytid` bigint NOT NULL,
  `date` varchar(45) NOT NULL,
  `case` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ranid`)
);