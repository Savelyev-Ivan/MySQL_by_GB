# Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
# Заполняем данными таблицы
-- INSERT INTO orders (id, user_id) 
-- VALUES
--  ('1', '3'),
--  ('2', '4'),
--  ('3', '5');

-- INSERT INTO orders_products (id, order_id, product_id) 
-- VALUES
--  ('1', '1', '1'),
--  ('2', '2', '2'),
--  ('3', '3', '3');
 
SELECT name FROM users WHERE id IN (SELECT user_id FROM orders);


# Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT
	name AS 'Название товара', 
	(SELECT name FROM catalogs WHERE catalog_id = catalogs.id) AS 'Каталог'
FROM products
;

# Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.
-- Создаем базу
DROP DATABASE IF EXISTS airlines;
CREATE DATABASE airlines;
USE airlines;
-- Создаем таблицу, для зарезервированных имен использум экранирование
DROP TABLE IF EXISTS flights;
CREATE TABLE flights(
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(50),
  `to` VARCHAR(50)
) 
;
-- Заполняем таблицу пакетом
INSERT INTO flights (
  `from`,`to`
)
VALUES
('moscow','london'),
('barcelona','praga'),
('stambul','moscow'),
('london','stambul'),
('moscow','praga')
;
-- Создаем 2-ю таблицу
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(50),
  name VARCHAR(50)
)
;
-- Заполняем 2-ю таблицу пакетом
INSERT INTO cities
VALUES
('moscow','Москва'),
('barcelona','Барселона'),
('stambul','Стамбул'),
('london','Лондон'),
('praga','Прага')
;
-- Сам SELECT запрос
SELECT flights.id
  ,(SELECT name FROM cities WHERE flights.`from` = cities.label) AS 'from (на русском)'
  ,(SELECT name FROM cities WHERE flights.`to` = cities.label) AS 'to (на русском)'
FROM flights
GROUP BY flights.id
;