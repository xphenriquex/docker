CREATE DATABASE flaskdocker;
USE flaskdocker;

CREATE TABLE `flaskdocker`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255)
)  ENGINE=INNODB;