
SELECT CONCAT(u.firstname, ' ', u.lastname) as Name, 
YEAR(CURRENT_DATE) - YEAR(p.birthday) AS `Year`, 
tp.subscription_type AS `Type`,
tp.price_subscription AS Price
FROM users AS u
JOIN profiles AS p on u.id = p.user_id
JOIN subscriptions AS pd on pd.user_id = u.id
JOIN subscription_type AS tp on tp.id = pd.subscription_type_id;

ORDER BY Price DESC;

SELECT COUNT(media.filename) Count_films, 
GROUP_CONCAT(media.filename SEPARATOR ', ') 
Films, mt.`type`
FROM media
JOIN media_types mt ON mt.id = media.media_type_id
WHERE `type` = 'television series'
GROUP BY `type`;
