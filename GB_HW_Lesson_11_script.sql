/* �������� ������� logs ���� Archive. ����� ��� ������ �������� ������ � �������� users, catalogs � products � ������� 
logs ���������� ����� � ���� �������� ������, �������� �������, 
������������� ���������� ����� � ���������� ���� name */

-- ������� ������� ��� �������� ����� ���� Archive
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  id serial,
  created_at DATETIME COMMENT '����� � ���� �������� ������' DEFAULT CURRENT_TIMESTAMP,
  table_name VARCHAR(255) COMMENT '�������� �������',
  id_record VARCHAR(255) COMMENT '������������� ������ �������',
  name VARCHAR(255) COMMENT '�������� ������'
) COMMENT = '������� �����' ENGINE=Archive;

-- �������� ��������� � �������� ����� �������� ������� � ���

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

/* (�� �������) �������� SQL-������, ������� �������� � ������� users ������� �������. */
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
