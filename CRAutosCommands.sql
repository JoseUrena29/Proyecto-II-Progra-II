show databases

drop database website

create database website

use website

show tables

CREATE TABlE users (id int,firstName varchar(30), email varchar(30), telefono int)
INSERT INTO users VALUES (1,'leandro', 'leandro9700@gmail.com', '62166673')
SELECT * FROM users

truncate table users

CREATE TABlE products (id int, name varchar(50), price int, user varchar(50))
SELECT * FROM products

INSERT INTO products VALUES (1, 'Pepsi', '1000', 'bsandi')
UPDATE products SET name = 'Big-Cola' WHERE id = 3

truncate table products

select MAX(id)+1 from products