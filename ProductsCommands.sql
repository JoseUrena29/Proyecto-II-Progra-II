show databases

drop database website

create database website

use website

show tables

CREATE TABlE products (id int, name varchar(50), price int, user varchar(50))
SELECT * FROM products

INSERT INTO products VALUES (2, 'Pepsi', '1000', 'bsandi')
UPDATE products SET name = 'Big-Cola' WHERE id = 3

truncate table products

select MAX(id)+1 from products