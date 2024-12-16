USE PD_318_DML;
GO

SET DATEFIRST 1;
--DELETE FROM DaysOFF;

--EXEC sp_NewYearDaysFor		2024;
--EXEC sp_MayHoliDaysFor		2024;
--EXEC sp_SummerHolidaysFor	2024;

EXEC sp_SetDaysOffFor 2025;
PRINT(dbo.GetEasterDate(2025));
PRINT(DATENAME(WEEKDAY, dbo.GetEasterDate(2025)));

SELECT 
	[date],
	DATENAME(WEEKDAY, [date]),
	holiday_name
FROM	DaysOff JOIN Holidays ON(holiday=holiday_id)
;