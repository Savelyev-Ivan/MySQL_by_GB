# Пусть задан некоторый пользователь. 
# Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).
/* Для задачи выбираем пользователя с user_id = 21 */
USE vk;
SELECT COUNT(*), FROM_USER_ID, TO_USER_ID FROM MESSAGES
	WHERE TO_USER_ID = 21
	GROUP BY from_user_id
	ORDER BY COUNT(*) DESC
	LIMIT 1;


# Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.
/* Взял юзеров у которых Возраст меньше 18, в моей базе только один младше 10 лет */
SELECT count(*)
FROM likes
WHERE user_id IN (
	SELECT id FROM users 
	WHERE id IN (
		SELECT user_id FROM profile 
		WHERE (TIMESTAMPDIFF(YEAR, birthday, NOW())) < 18
		)
	);

# Определить кто больше поставил лайков (всего): мужчины или женщины.
SELECT
	CASE
  		WHEN `profile`.`gender` = 'm' THEN 'Муж.'
  		WHEN `profile`.`gender` = 'f' THEN 'Жен.'
	END AS 'Пол',
COUNT(*) AS 'like'
FROM `profile`,`likes`
	WHERE `profile`.`user_id` = `likes`.`user_id`
	GROUP BY `пол`
	ORDER BY 2 DESC
	LIMIT 1
;