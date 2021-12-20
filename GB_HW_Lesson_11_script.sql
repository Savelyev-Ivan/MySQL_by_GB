/* Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу 
logs помещается время и дата создания записи, название таблицы, 
идентификатор первичного ключа и содержимое поля name */

-- Создаем таблицу для хранения логов типа Archive
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  id serial,
  created_at DATETIME COMMENT 'Время и дата создания записи' DEFAULT CURRENT_TIMESTAMP,
  table_name VARCHAR(255) COMMENT 'Название таблицы',
  id_record VARCHAR(255) COMMENT 'Идентификатор записи таблицы',
  name VARCHAR(255) COMMENT 'Название записи'
) COMMENT = 'Таблица логов' ENGINE=Archive;

-- Создание триггеров в таблицах после создания записей в них

DELIMITER //
DROP TRIGGER IF EXISTS log_for_users//
CREATE TRIGGER log_for_users AFTER INSERT ON users
FOR EACH ROW 
	BEGIN  
	INSERT INTO logs(table_name, id_record, name)
	VALUES ('users', new.id, new.name);
END //

DELIMITER //
DROP TRIGGER IF EXISTS log_for_catalogs//
CREATE TRIGGER log_for_catalogs AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN  
	INSERT INTO logs(table_name, id_record, name)
	VALUES ('catalogs', new.id, new.name);
END //


DELIMITER //
DROP TRIGGER IF EXISTS log_for_products//
CREATE TRIGGER log_for_products AFTER INSERT ON products
FOR EACH ROW 
	BEGIN  
	INSERT INTO logs(table_name, id_record, name)
	VALUES ('products', new.id, new.name);
END //

/* (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей. */
DELIMITER //
DROP PROCEDURE IF EXISTS create_users//
CREATE PROCEDURE create_users( IN rec_nums INT )
BEGIN 
	DECLARE i INT DEFAULT 0;
		
	WHILE i <= rec_nums do
		INSERT INTO users ( name, birthday_at ) VALUES ( 'TEST USER', now() );
		set i = i + 1;
	END WHILE;
END //

CALL create_users( 1000000 );
DELIMITER ;
