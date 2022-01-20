CREATE DATABASE demo;
CREATE USER 'demo'@'%' IDENTIFIED BY 'demo';
GRANT EXECUTE ON demo.* TO 'demo'@'%';
GRANT ALTER ON demo.* TO  'demo'@'%';
GRANT CREATE ON demo.* TO  'demo'@'%';
GRANT DROP ON demo.* TO  'demo'@'%';
GRANT SELECT ON demo.* TO  'demo'@'%';
GRANT INSERT ON demo.* TO  'demo'@'%';
GRANT UPDATE ON demo.* TO  'demo'@'%';
GRANT DELETE ON demo.* TO  'demo'@'%';
GRANT LOCK TABLES ON demo.* TO  'demo'@'%';
GRANT REPLICATION CLIENT ON *.* TO  'demo'@'%';
GRANT REPLICATION SLAVE ON *.* TO  'demo'@'%';
GRANT RELOAD ON *.* TO  'demo'@'%';
GRANT FLUSH_TABLES ON *.* TO  'demo'@'%';


CREATE TABLE `demo`.`users` (
	`user_id` int NOT NULL AUTO_INCREMENT,
	`user_name` varchar(100) NOT NULL,
	`user_first_name` varchar(255) NOT NULL,
	`user_last_name` varchar(255) NOT NULL,
	`created_by` varchar(100) NOT NULL,
	`created_time` datetime NOT NULL,
	`modified_by` varchar(100) DEFAULT NULL,
	`modified_time` datetime DEFAULT NULL,
	PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `demo`.`debezium_signal` (
	id VARCHAR(42) PRIMARY KEY,
	type VARCHAR(32) NOT NULL,
	data VARCHAR(2048) NULL
);

