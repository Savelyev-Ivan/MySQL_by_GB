# ����� � ������� users ���� created_at � updated_at ��������� ��������������. 
# ��������� �� �������� ����� � ��������.
USE shop;
UPDATE users 
SET created_at = NOW(),
	updated_at = NOW()
;

# ������� users ���� �������� ��������������. 
# ������ created_at � updated_at ���� ������ ����� VARCHAR � � ��� ������ ����� ���������� �������� � ������� "20.10.2017 8:10".
# ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.

ALTER TABLE users ADD created_at_dt DATETIME; 
ALTER TABLE users ADD updated_at_dt DATETIME;
UPDATE users
SET created_at_dt = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'), 
	updated_at_dt = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i'); 
ALTER TABLE users 
	DROP created_at, DROP updated_at, 
	RENAME COLUMN created_at_dt TO created_at, RENAME COLUMN updated_at_dt TO updated_at; 

# � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 
# 0, ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������. 
# ���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� �������� value. 
# ������, ������� ������ ������ ���������� � �����, ����� ���� �������.
/*
INSERT INTO `storehouses_products` (`value`)
VALUES ('1'),
('30'),
('0'),
('500'),
('0'),
('2500'),
('0'); */

SELECT * FROM storehouses_products ORDER BY value = 0, value;

#  �� ������� users ���������� ������� �������������, ���������� � ������� � ���. 
# ������ ������ � ���� ������ ���������� �������� ('may', 'august')



SELECT * FROM users WHERE LOWER(DATE_FORMAT(birthday_at, '%M')) IN ('may', 'august');


# ����������� ������� ������� ������������� � ������� users

SELECT AVG(YEAR(NOW())-YEAR(birthday_at)) FROM users;

# ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. 
# ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.

SELECT DATE_FORMAT(DATE_ADD(birthday_at, INTERVAL YEAR(NOW()) - YEAR(birthday_at) YEAR), '%W') as WEEKDAY,
		COUNT(*)
FROM users
GROUP BY WEEKDAY;
