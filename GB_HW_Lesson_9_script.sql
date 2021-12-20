# В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
# Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id=1;
DELETE FROM shop.users WHERE id=1;
COMMIT;

# Создайте представление, которое выводит название name товарной позиции из таблицы products 
# и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW names AS SELECT 
p.name as product,
c.name as catalog
FROM products p, catalogs c 
WHERE p.catalog_id = c.id ;


SELECT * FROM names;

# Пусть имеется таблица с календарным полем created_at. 
# В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
# Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.


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
 
# Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
# С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
# с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".





DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello ()
RETURNS TINYTEXT NO SQL
BEGIN
  DECLARE time INT UNSIGNED;
  
  SET time = HOUR(NOW());

  IF (time>=0 AND time<6) THEN
    RETURN 'Доброй ночи';
  ELSEIF (time>=6 AND time<12) THEN
    RETURN 'Доброе утро';
  ELSEIF (time>=12 AND time<18) THEN
    RETURN 'Добрый день';
  ELSE
    RETURN 'Добрый вечер';
  END IF;
END//
SELECT * hello ()//
DELIMITER ;

# В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
# Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
# Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //

DROP TRIGGER IF EXISTS notnull//
CREATE TRIGGER notnull BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.desription IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Одно из значений не может иметь значение - NULL'; 
  END IF;
END//

DROP TRIGGER IF EXISTS notnullup//
CREATE TRIGGER notnull BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.desription IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Одно из значений не может иметь значение - NULL'; 
  END IF;
END//
DELIMITER ;
