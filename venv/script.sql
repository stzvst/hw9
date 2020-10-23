SELECT id, name, birthday_at FROM users;


INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Иван';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 2 FROM products
WHERE name = 'Intel Core i5-7400';

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Сергей';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 1 FROM products
WHERE name IN  ('Intel Core i5-7400', 'Gigabyte H310 S2H');

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Наталья';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 1 FROM products
WHERE name IN  ('AMD FX-8320', 'Gigabyte H310 S2H');

SELECT DISTINCT user_id FROM orders;

SELECT
id, name , birthday_at
FROM
users
WHERE 
id IN (SELECT DISTINCT user_id FROM orders);



SELECT * FROM catalogs;

SELECT 
id,
name,
price,
(SELECT name FROM catalogs WHERE id = products.catalog_id) AS catalog
FROM
products;





