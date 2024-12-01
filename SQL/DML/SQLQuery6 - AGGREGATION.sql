USE AcademySQL;

SELECT 
	--COUNT(direction_id) 
	--FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL(middle_name, N'')) AS N'Ф.И.О.',
	--group_name		AS N'Группа',
	direction_name	AS N'Направление обучения',
	COUNT(group_id) AS N'Количество групп'
	--COUNT(student_id) AS N'Количество студентов'
FROM Groups, Directions--, Students
WHERE direction = direction_id
--AND	  [group] = group_id
GROUP BY direction_name 
;