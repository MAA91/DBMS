USE PD_318_DML;

SELECT 
	direction_name	AS N'����������� ��������',
	COUNT(group_id) AS N'���������� �����'
FROM Groups, Directions
WHERE direction = direction_id
GROUP BY direction_name 
HAVING	  COUNT(group_id) > 3
;