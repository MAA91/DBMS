USE PD_318_DML;
GO

CREATE PROCEDURE sp_MayHoliDaysFor 
	@year AS INT
AS
BEGIN
	DECLARE	@start_date	AS	DATE		= dbo.GetLastMonOfApril(@year);
	DECLARE @date		AS	DATE		= @start_date;
	DECLARE @holiday	AS	SMALLINT	= (SELECT holiday_id FROM Holidays WHERE holiday_name LIKE N'%Май%');

	WHILE (DATEDIFF(DAY, @start_date, @date) <= 14)
	BEGIN
		IF NOT EXISTS (SELECT day_off_id FROM DaysOFF WHERE [date]=@date)
		BEGIN
				INSERT DaysOFF	([date], holiday)
				VALUES			(@date, @holiday)
		END
		SET @date = DATEADD(DAY, 1, @date);
	END
END