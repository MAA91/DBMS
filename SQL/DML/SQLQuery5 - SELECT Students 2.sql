USE PD_318_DML;

SELECT
		--last_name + ' ' + first_name + ' ' + middle_name	AS N'�.�.�.',
		--[�.�.�.] = FORMATMESSAGE(IIF( middle_name IS NULL, N'%s %s', N'%s %s %s'), last_name, first_name, middle_name),
		[�.�.�.] = FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL(middle_name, N'')),
		--birth_date								AS N'���� ��������',
		[�������]								= DATEDIFF(DAY, birth_date, GETDATE())/ 365,
		[group_name]							AS N'������',
		direction_name							AS N'����������� ��������'		
FROM	Students, Groups, Directions
WHERE	[group] = group_id
		AND direction = direction_id
		--AND group_name = N'PD_321';
		--AND direction_name = N'������������ ������� � ������'
		--AND direction_name LIKE N'%�������%'
ORDER BY group_name;
--ORDER BY [�������] DESC
;