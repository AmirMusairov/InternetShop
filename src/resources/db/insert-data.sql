use shop;

INSERT INTO shop.customers (id, login, password) VALUES (1, 'Amir', '$2a$10$3/EBD2KnR2m5hF3pNTehBe1bRhF/jnhIG.GDR0ErjRKVdZ2ov4RBq');

INSERT INTO shop.countries (id, name) VALUES (1, 'UAH');
INSERT INTO shop.countries (id, name) VALUES (2, 'USA');

INSERT INTO shop.products (id, name, price, group, country_id) VALUES (1, 'milk', 123, 'MILK', 1);
INSERT INTO shop.products (id, name, price, group, country_id) VALUES (2, 'fork', 250, 'NOT_FOOD', 2);
INSERT INTO shop.products (id, name, price, group, country_id) VALUES (3, 'notebook', 1200, 'NOT_FOOD', 2);
INSERT INTO shop.products (id, name, price, group, country_id) VALUES (4, 'mango', 5, 'FOOD', 2);
INSERT INTO shop.products (id, name, price, group, country_id) VALUES (5, 'apple', 10, 'FOOD', 1);
INSERT INTO shop.products (id, name, price, group, country_id) VALUES (6, 'bread', 4, 'FOOD', 1);
INSERT INTO shop.products (id, name, price, group, country_id) VALUES (7, 'cheese', 40, 'MILK', 1);
INSERT INTO shop.products (id, name, price, group, country_id) VALUES (8, 'oil', 30, 'MILK', 2);
INSERT INTO shop.products (id, name, price, group, country_id) VALUES (9, 'butter', 20, 'MILK', 1);
INSERT INTO shop.products (id, name, price, group, country_id) VALUES (10, 'tea', 25, 'FOOD', 2);