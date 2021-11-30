# ��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.
# ��������� ������� �������
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


# �������� ������ ������� products � �������� catalogs, ������� ������������� ������.

SELECT
	name AS '�������� ������', 
	(SELECT name FROM catalogs WHERE catalog_id = catalogs.id) AS '�������'
FROM products
;

# ����� ������� ������� ������ flights (id, from, to) � ������� ������� cities (label, name). ���� from, to � label �������� ���������� �������� �������, ���� name � �������. �������� ������ ������ flights � �������� ���������� �������.
-- ������� ����
DROP DATABASE IF EXISTS airlines;
CREATE DATABASE airlines;
USE airlines;
-- ������� �������, ��� ����������������� ���� ��������� �������������
DROP TABLE IF EXISTS flights;
CREATE TABLE flights(
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(50),
  `to` VARCHAR(50)
) 
;
-- ��������� ������� �������
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
-- ������� 2-� �������
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(50),
  name VARCHAR(50)
)
;
-- ��������� 2-� ������� �������
INSERT INTO cities
VALUES
('moscow','������'),
('barcelona','���������'),
('stambul','�������'),
('london','������'),
('praga','�����')
;
-- ��� SELECT ������
SELECT flights.id
  ,(SELECT name FROM cities WHERE flights.`from` = cities.label) AS 'from (�� �������)'
  ,(SELECT name FROM cities WHERE flights.`to` = cities.label) AS 'to (�� �������)'
FROM flights
GROUP BY flights.id
;