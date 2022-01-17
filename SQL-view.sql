
CREATE OR REPLACE VIEW name_info AS
SELECT CONCAT(u.firstname, ' ', u.lastname) as Name, 
YEAR(CURRENT_DATE) - YEAR(p.birthday) AS `Year`, 
tp.subscription_type AS `Type`,
tp.price_subscription AS Price
FROM users AS u
JOIN profiles AS p on u.id = p.user_id
JOIN subscriptions AS pd on pd.user_id = u.id
JOIN subscription_type AS tp on tp.id = pd.subscription_type_id
ORDER BY `Year` DESC;

SELECT * FROM name_info;

SELECT COUNT(name), `type` 
FROM name_info
GROUP BY `type`;


DROP VIEW IF EXISTS all_values;
CREATE OR REPLACE VIEW all_values AS
SELECT u.*, 
p.*, 
pd.subscription_type_id, 
tp.subscription_type, 
tp.price_subscription, 
mr.rate, 
md.required_subscription_type, 
cf.actors_id
FROM users AS u
JOIN profiles AS p on u.id = p.user_id
JOIN subscriptions AS pd on pd.user_id = u.id
JOIN subscription_type AS tp on tp.id = pd.subscription_type_id
JOIN ratings AS mr on mr.user_id = u.id
JOIN media AS md on md.id = mr.media_id
LEFT JOIN film_command AS cf on cf.media_id = md.id;

SELECT * FROM all_values;