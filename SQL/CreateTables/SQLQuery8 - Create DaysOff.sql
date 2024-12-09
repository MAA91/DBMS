USE PD_318_DML;
GO

CREATE TABLE DaysOff
(
	day_off_id		INT PRIMARY KEY IDENTITY(1,1),
	[date]			DATE NOT NULL,
	holiday			SMALLINT CONSTRAINT FK_DaysOff_Holiday FOREIGN KEY REFERENCES Holidays(holiday_id)
);