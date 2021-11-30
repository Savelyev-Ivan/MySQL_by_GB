# ����� ����� ��������� ������������. 
# �� ���� ������������� ���. ���� ������� ��������, ������� ������ ���� ������� � ��������� ������������� (������� ��� ���������).
/* ��� ������ �������� ������������ � user_id = 21 */
USE vk;
SELECT COUNT(*), FROM_USER_ID, TO_USER_ID FROM MESSAGES
	WHERE TO_USER_ID = 21
	GROUP BY from_user_id
	ORDER BY COUNT(*) DESC
	LIMIT 1;


# ���������� ����� ���������� ������, ������� �������� ������������ ������ 10 ���.
/* ���� ������ � ������� ������� ������ 18, � ���� ���� ������ ���� ������ 10 ��� */
SELECT count(*)
FROM likes
WHERE user_id IN (
	SELECT id FROM users 
	WHERE id IN (
		SELECT user_id FROM profile 
		WHERE (TIMESTAMPDIFF(YEAR, birthday, NOW())) < 18
		)
	);

# ���������� ��� ������ �������� ������ (�����): ������� ��� �������.
SELECT
	CASE
  		WHEN `profile`.`gender` = 'm' THEN '���.'
  		WHEN `profile`.`gender` = 'f' THEN '���.'
	END AS '���',
COUNT(*) AS 'like'
FROM `profile`,`likes`
	WHERE `profile`.`user_id` = `likes`.`user_id`
	GROUP BY `���`
	ORDER BY 2 DESC
	LIMIT 1
;