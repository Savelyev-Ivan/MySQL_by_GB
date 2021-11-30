# Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, 
# который больше всех общался с выбранным пользователем (написал ему сообщений).

-- Берем Пользователя с id = 21

SELECT 
	from_user_id AS 'id отправителя'
	, concat(u.firstname, ' ', u.lastname) as 'Имя отправителя'
	, count(*) AS 'Количество сообщений'
FROM messages m
JOIN users u ON u.id = m.from_user_id
WHERE to_user_id = 21
GROUP BY from_user_id
ORDER BY count(*) DESC 
LIMIT 1;

# Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..

SELECT 
	count(*)
FROM likes AS l
JOIN media AS m ON l.media_id = m.id
JOIN profile AS p ON p.user_id = m.user_id
WHERE  YEAR(CURDATE()) - YEAR(birthday) < 10;

# Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT  
	gender AS 'Пол', 
	COUNT(*) AS 'Лайки'
FROM likes
JOIN profile on likes.user_id = profile.user_id 
GROUP BY gender;