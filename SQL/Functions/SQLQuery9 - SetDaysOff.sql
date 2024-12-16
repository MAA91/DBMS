USE PD_318_DML;
GO

ALTER PROCEDURE sp_SetDaysOffFor	@year	AS INT
AS
BEGIN
	EXEC sp_NewYearDaysFor		@year;

	IF NOT EXISTS (SELECT day_off_id FROM DaysOff WHERE [date]=DATEFROMPARTS(@year, 02, 23))
	BEGIN
		INSERT DaysOff	([date], holiday)
		VALUES			(DATEFROMPARTS(@year, 02, 23), (SELECT holiday_id FROM Holidays WHERE holiday_name LIKE N'23%'));
		PRINT(DATEFROMPARTS(@year, 02, 23))
	END

	IF NOT EXISTS (SELECT day_off_id FROM DaysOff WHERE [date]=DATEFROMPARTS(@year, 03, 08))
	BEGIN
		INSERT DaysOff	([date], holiday)
		VALUES			(DATEFROMPARTS(@year, 03, 08), (SELECT holiday_id FROM Holidays WHERE holiday_name LIKE N'8%'));
		PRINT(DATEFROMPARTS(@year, 03, 08))
	END

	EXEC sp_MayHoliDaysFor		@year;
	EXEC sp_SummerHolidaysFor	@year;
END
