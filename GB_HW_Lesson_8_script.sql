# ����� ����� ��������� ������������. �� ���� ������������� ���. ���� ������� ��������, 
# ������� ������ ���� ������� � ��������� ������������� (������� ��� ���������).

-- ����� ������������ � id = 21

SELECT 
	from_user_id AS 'id �����������'
	, concat(u.firstname, ' ', u.lastname) as '��� �����������'
	, count(*) AS '���������� ���������'
FROM messages m
JOIN users u ON u.id = m.from_user_id
WHERE to_user_id = 21
GROUP BY from_user_id
ORDER BY count(*) DESC 
LIMIT 1;

# ���������� ����� ���������� ������, ������� �������� ������������ ������ 10 ���..

SELECT 
	count(*)
FROM likes AS l
JOIN media AS m ON l.media_id = m.id
JOIN profile AS p ON p.user_id = m.user_id
WHERE  YEAR(CURDATE()) - YEAR(birthday) < 10;

# ���������� ��� ������ �������� ������ (�����): ������� ��� �������.

SELECT  
	gender AS '���', 
	COUNT(*) AS '�����'
FROM likes
JOIN profile on likes.user_id = profile.user_id 
GROUP BY gender;