# � ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������. 
# ����������� ������ id = 1 �� ������� shop.users � ������� sample.users. ����������� ����������.

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id=1;
DELETE FROM shop.users WHERE id=1;
COMMIT;

# �������� �������������, ������� ������� �������� name �������� ������� �� ������� products 
# � ��������������� �������� �������� name �� ������� catalogs.

CREATE VIEW names AS SELECT 
p.name as product,
c.name as catalog
FROM products p, catalogs c 
WHERE p.catalog_id = c.id ;


SELECT * FROM names;

# ����� ������� ������� � ����������� ����� created_at. 
# � ��� ��������� ���������� ����������� ������ �� ������ 2018 ���� '2018-08-01', '2016-08-04', '2018-08-16' � 2018-08-17. 
# ��������� ������, ������� ������� ������ ������ ��� �� ������, ��������� � �������� ���� �������� 1, ���� ���� ������������ � �������� ������� � 0, ���� ��� �����������.


DROP TABLE IF EXISTS table_aug;
CREATE TABLE table_aug (
		created_at DATE
		);
INSERT INTO table_aug VALUES 
('2018-08-01'), 
('2018-08-04'), 
('2018-08-16'), 
('2018-08-17')
;

DROP TABLE IF EXISTS aug_month;
CREATE TEMPORARY TABLE aug_month (created_at DATE);
INSERT INTO aug_month VALUES
('2018-08-01'), 
('2018-08-02'), 
('2018-08-03'), 
('2018-08-04'), 
('2018-08-05'),
('2018-08-06'), 
('2018-08-07'),
('2018-08-08'),
('2018-08-09'),
('2018-08-10'),
('2018-08-11'),
('2018-08-12'),
('2018-08-13'),
('2018-08-14'),
('2018-08-15'),
('2018-08-16'),
('2018-08-17'),
('2018-08-18'), 
('2018-08-19'), 
('2018-08-20'),
('2018-08-21'),
('2018-08-22'), 
('2018-08-23'), 
('2018-08-24'), 
('2018-08-25'),
('2018-08-26'),
('2018-08-27'),
('2018-08-28'),
('2018-08-29'), 
('2018-08-30'), 
('2018-08-31')
;

SELECT 
    m.created_at AS created_at, 
    COUNT(a.created_at) AS `column`
  FROM aug_month AS m 
  LEFT JOIN table_aug AS a 
    ON m.created_at = a.created_at 
 GROUP BY created_at 
 ORDER BY created_at;
 
# �������� �������� ������� hello(), ������� ����� ���������� �����������, � ����������� �� �������� ������� �����. 
# � 6:00 �� 12:00 ������� ������ ���������� ����� "������ ����", � 12:00 �� 18:00 ������� ������ ���������� ����� "������ ����", 
# � 18:00 �� 00:00 � "������ �����", � 00:00 �� 6:00 � "������ ����".





DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello ()
RETURNS TINYTEXT NO SQL
BEGIN
  DECLARE time INT UNSIGNED;
  
  SET time = HOUR(NOW());

  IF (time>=0 AND time<6) THEN
    RETURN '������ ����';
  ELSEIF (time>=6 AND time<12) THEN
    RETURN '������ ����';
  ELSEIF (time>=12 AND time<18) THEN
    RETURN '������ ����';
  ELSE
    RETURN '������ �����';
  END IF;
END//
SELECT * hello ()//
DELIMITER ;

# � ������� products ���� ��� ��������� ����: name � ��������� ������ � description � ��� ���������. 
# ��������� ����������� ����� ����� ��� ���� �� ���. ��������, ����� ��� ���� ��������� �������������� �������� NULL �����������. 
# ��������� ��������, ��������� ����, ����� ���� �� ���� ����� ��� ��� ���� ���� ���������. ��� ������� ��������� ����� NULL-�������� ���������� �������� ��������.

DELIMITER //

DROP TRIGGER IF EXISTS notnull//
CREATE TRIGGER notnull BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.desription IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '���� �� �������� �� ����� ����� �������� - NULL'; 
  END IF;
END//

DROP TRIGGER IF EXISTS notnullup//
CREATE TRIGGER notnull BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.desription IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '���� �� �������� �� ����� ����� �������� - NULL'; 
  END IF;
END//
DELIMITER ;
