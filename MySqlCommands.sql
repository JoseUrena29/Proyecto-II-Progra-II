show databases

drop database website

create database website

use website

show tables

CREATE TABlE user (id int, firstName varchar(30), lastName varchar(30), email varchar(30))

INSERT INTO user VALUES (1, "Juan", "Perez", "juan.perez@gmail.com")
INSERT INTO user VALUES (2, "Maria", "Salas", "maria.salas@gmail.com")
INSERT INTO user VALUES (3, "David", "Jimenez", "david.jimenez@gmail.com")

UPDATE user SET firstName = 'Mario' WHERE id = 3

SELECT * FROM user

truncate table user