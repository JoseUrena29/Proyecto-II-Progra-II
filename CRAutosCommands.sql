show databases

drop database website

create database website

use website

show tables

CREATE TABlE users (id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,firstName varchar(30) NOT NULL, email varchar(30) NOT NULL, telefono int NOT NULL)

INSERT INTO users (firstName, email,telefono) values ('leandro','leandro9700@gmail.com', 62166673)

INSERT INTO users (firstName, email,telefono) values ('jose','jose23@gmail.com', 63178567)

SELECT * FROM users

truncate table users

CREATE TABLE autos(id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,marca varchar(30) NOT NULL, modelo varchar(30) NOT NULL,anio int NOT NULL,estilo varchar(30) NOT NULL)

SELECT * FROM autos

truncate table autos

UPDATE products SET name = 'Big-Cola' WHERE id = 3

truncate table products

select MAX(id)+1 from products