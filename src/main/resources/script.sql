CREATE DATABASE IF NOT EXISTS `app` ;

USE `app`;


CREATE TABLE IF NOT EXISTS `articles` (
  `article_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `articles` (`article_id`, `title`, `category`) VALUES
	(1, 'Java Concurrency', 'Java'),
	(2, 'Hibernate HQL ', 'Hibernate'),
	(3, 'Spring MVC with Hibernate', 'Spring');

	
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--password = 123
INSERT INTO `users` (`username`, `password`, `full_name`, `role`, `country`, `enabled`) VALUES
	('admin', '$2a$10$SBdb5xkSLFEf7XNrHPcZV.x7xXGPmpxtWqsyTrD1b9cXgT4MrJQuS', 'Paulo Admin', 'ROLE_ADMIN', 'Brasil', 1),
	('user', '$2a$10$SBdb5xkSLFEf7XNrHPcZV.x7xXGPmpxtWqsyTrD1b9cXgT4MrJQuS', 'Ricardo Usuario', 'ROLE_USER', 'Brasil', 1); 