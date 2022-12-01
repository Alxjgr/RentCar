CREATE DATABASE IF NOT EXISTS rentcar;
USE rentcar;

DROP TABLE IF EXISTS reservation;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS model;
DROP TABLE IF EXISTS fuel;
DROP TABLE IF EXISTS category ;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS licence;

CREATE TABLE fuel (
 idfuel INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
fuel_name VARCHAR(150))ENGINE=INNODB;

CREATE TABLE model (
 idmodel BIGINT(50) AUTO_INCREMENT NOT NULL PRIMARY KEY,
 power INT,
 transmission VARCHAR(150),
 seats INT,
 brand VARCHAR(150), 
 model_name VARCHAR(150),
 idfuel int,
 doors int,
FOREIGN KEY (idfuel) REFERENCES fuel (idfuel))ENGINE=INNODB;
 
 CREATE TABLE category (
 idcategory BIGINT(50) AUTO_INCREMENT NOT NULL PRIMARY KEY,
 category_name VARCHAR(150))ENGINE=INNODB;

CREATE TABLE licence (
 idlicence VARCHAR(150) NOT NULL PRIMARY KEY, 
date_licence DATE,
 young_driver BOOLEAN, 
 idclient BIGINT(50))ENGINE=INNODB;

CREATE TABLE client (
 idclient BIGINT(50) AUTO_INCREMENT NOT NULL PRIMARY KEY, 
name VARCHAR(150), 
firstname VARCHAR(150),
 birth DATE,
 adress VARCHAR(150), 
 city VARCHAR(150),
 idres BIGINT(50),
 idlicence VARCHAR(150),
FOREIGN KEY (idlicence) REFERENCES licence (idlicence)
)ENGINE=INNODB;

CREATE TABLE car (
 matriculation VARCHAR(150) NOT NULL PRIMARY KEY, 
year INT(4), 
color VARCHAR(150),
 idcategory BIGINT(50) , 
 idmodel BIGINT(50),
 FOREIGN KEY (Idcategory) REFERENCES category (Idcategory),
 FOREIGN KEY (Idmodel) REFERENCES model (Idmodel)
)ENGINE=INNODB;

CREATE TABLE reservation (
 idres BIGINT(50) AUTO_INCREMENT NOT NULL PRIMARY KEY,
 date_start DATE,
 date_end DATE,
 km_start INT, 
 km_end INT,
 matriculation VARCHAR(150),
  idclient BIGINT(50),
FOREIGN KEY (idclient) REFERENCES client (idclient),
FOREIGN KEY (matriculation) REFERENCES car (matriculation))ENGINE=INNODB;




