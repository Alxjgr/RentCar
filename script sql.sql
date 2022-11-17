DROP TABLE IF EXISTS model;
DROP TABLE IF EXISTS fuel;
DROP TABLE IF EXISTS category ;
DROP TABLE IF EXISTS reservation;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS licence;
DROP TABLE IF EXISTS car;


CREATE TABLE car (matriculation VARCHAR(150) NOT NULL PRIMARY KEY, 
year INT(4), 
color VARCHAR(150),
 idres BIGINT(50), 
 idcategory BIGINT(50) , 
 idmodel BIGINT(50) );

CREATE TABLE client (idclient BIGINT(50) AUTO_INCREMENT NOT NULL PRIMARY KEY, 
name VARCHAR(150), 
firstname VARCHAR(150),
 birth DATE,
 adress VARCHAR(150), 
 city VARCHAR(150),
 idres BIGINT(50),
 idlicence VARCHAR(150));

CREATE TABLE reservation (idres BIGINT(50) AUTO_INCREMENT NOT NULL PRIMARY KEY,
 date_start DATE,
 date_end DATE,
 km_start INT, 
 km_end INT,
 matriculation VARCHAR(150));

CREATE TABLE category (idcategory BIGINT(50) AUTO_INCREMENT NOT NULL PRIMARY KEY,
 category_name VARCHAR(150));

CREATE TABLE licence (idlicence VARCHAR(150) NOT NULL PRIMARY KEY, 
date_licence DATE,
 young_driver BOOLEAN, 
 idclient BIGINT(50));

CREATE TABLE fuel (idfuel BIGINT(50) AUTO_INCREMENT NOT NULL PRIMARY KEY, 
fuel_name VARCHAR(150));

CREATE TABLE model (idmodel BIGINT(50) AUTO_INCREMENT NOT NULL PRIMARY KEY,
 power INT,
 transmission VARCHAR(150),
 seats INT,
 brand VARCHAR(150), 
 model_name VARCHAR(150));


ALTER TABLE car ADD CONSTRAINT FK_car_idres FOREIGN KEY (idres) REFERENCES reservation (idres);

ALTER TABLE car ADD CONSTRAINT FK_car_Idcategory FOREIGN KEY (Idcategory) REFERENCES category (Idcategory);

ALTER TABLE car ADD CONSTRAINT FK_car_Idmodel FOREIGN KEY (Idmodel) REFERENCES modele (Idmodel);

ALTER TABLE client ADD CONSTRAINT FK_client_idres FOREIGN KEY (idres) REFERENCES reservation (idres);

ALTER TABLE client ADD CONSTRAINT FK_client_idlicence FOREIGN KEY (idlicence) REFERENCES licence (idlicence);

ALTER TABLE reservation ADD CONSTRAINT FK_reservation_Matriculation FOREIGN KEY (Matriculation) REFERENCES car (Matriculation);

ALTER TABLE licence ADD CONSTRAINT FK_licence_idclient FOREIGN KEY (idclient) REFERENCES client (idclient);

