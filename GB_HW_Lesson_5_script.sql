# ѕусть в таблице users пол€ created_at и updated_at оказались незаполненными. 
# «аполните их текущими датой и временем.
USE shop;
UPDATE users 
SET created_at = NOW(),
	updated_at = NOW()
;

# “аблица users была неудачно спроектирована. 
# «аписи created_at и updated_at были заданы типом VARCHAR и в них долгое врем€ помещались значени€ в формате "20.10.2017 8:10".
# Ќеобходимо преобразовать пол€ к типу DATETIME, сохранив введеные ранее значени€.

ALTER TABLE users ADD created_at_dt DATETIME; 
ALTER TABLE users ADD updated_at_dt DATETIME;
UPDATE users
SET created_at_dt = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'), 
	updated_at_dt = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i'); 
ALTER TABLE users 
	DROP created_at, DROP updated_at, 
	RENAME COLUMN created_at_dt TO created_at, RENAME COLUMN updated_at_dt TO updated_at; 

# ¬ таблице складских запасов storehouses_products в поле value могут встречатьс€ самые разные цифры: 
# 0, если товар закончилс€ и выше нул€, если на складе имеютс€ запасы. 
# Ќеобходимо отсортировать записи таким образом, чтобы они выводились в пор€дке увеличени€ значени€ value. 
# ќднако, нулевые запасы должны выводитьс€ в конце, после всех записей.
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

#  »з таблицы users необходимо извлечь пользователей, родившихс€ в августе и мае. 
# ћес€цы заданы в виде списка английских названий ('may', 'august')



SELECT * FROM users WHERE LOWER(DATE_FORMAT(birthday_at, '%M')) IN ('may', 'august');


# ѕодсчитайте средний возраст пользователей в таблице users

SELECT AVG(YEAR(NOW())-YEAR(birthday_at)) FROM users;

# ѕодсчитайте количество дней рождени€, которые приход€тс€ на каждый из дней недели. 
# —ледует учесть, что необходимы дни недели текущего года, а не года рождени€.

SELECT DATE_FORMAT(DATE_ADD(birthday_at, INTERVAL YEAR(NOW()) - YEAR(birthday_at) YEAR), '%W') as WEEKDAY,
		COUNT(*)
FROM users
GROUP BY WEEKDAY;
