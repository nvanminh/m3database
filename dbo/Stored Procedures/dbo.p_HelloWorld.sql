SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[p_HelloWorld]
AS
BEGIN
	SET NOCOUNT ON;

	WAITFOR DELAY '000:00:10';

    --// Temp table to hold the data from CSV
    IF OBJECT_ID('tempdb..#TempMyTest') IS NOT NULL
        DROP TABLE #TempMyTest;

    CREATE TABLE #TempMyTest
    (
        CustomerID bigint
		,Amount decimal(18, 2)
    );


	--// Change
	--//jklkjlkasdfjl

	--/asdfsdf
    --// Copy CSV data into the temp table
    BULK INSERT
        #TempMyTest
    FROM
        '\\money3.local\shared\M3Shared\MACC Offering\MACC1.csv'
		--'\\M3Accounting\IT\MACC\MACC.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',  --// CSV field delimiter
        ROWTERMINATOR = '\n'   --// Use to shift the control to next row
        --ERRORFILE = '\\M3Accounting\IT\Logs\MACC1_Error.csv',
    )

	SELECT * FROM
	#TempMyTest
END
GO
