USE PD_318_DML;
GO

EXEC sp_SetScheduleForStacionar N'PV_318', N'%Системное%', N'Ковтун', N'2024-12-30';
EXEC sp_ScheduleForGroup		N'PV_318', '%Системное%';

--DELETE
--FROM
--	Schedule	
--WHERE	[group]		= (SELECT group_id		FROM Groups			WHERE group_name	=	N'PV_318')	
--AND		discipline	= (SELECT discipline_id	FROM Disciplines	WHERE discipline_name = N'%Системное%')

--EXEC PrintScheduleForFroup N'PV_318'