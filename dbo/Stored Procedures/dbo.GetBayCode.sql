SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetBayCode]
	-- Add the parameters for the stored procedure here
@input bigint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @TestID BIGINT = @input
    declare @TestIDLength TINYINT = 1 
    declare @returnedVal int = 0 
    declare @inputVal varchar(50) = REVERSE(@TestID) 
    declare @odd bit = 0 
    declare @sum int 
    declare @numberLeft int 
 
    WHILE @TestIDLength <= LEN(@inputVal) 
        Begin 
            if @odd = 1 
                BEGIN 
                    set @sum =  CAST(SUBSTRING(@inputval,@TestIDLength,1) AS TINYINT) * 1 
                    set @odd = 0 
                END 
            else 
                BEGIN 
                    set @sum = CAST(SUBSTRING(@inputval,@TestIDLength,1) AS TINYINT) * 2 
                    set @odd = 1 
                END 
             
            IF LEN(CAST(@sum as varchar(10))) > 1 
                SET @sum = CAST(SUBSTRING(CAST(@sum AS VARCHAR(13)),1,1) AS TINYINT) + CAST(SUBSTRING(CAST(@sum AS VARCHAR(13)),2,1) AS TINYINT) 
             
            SET @returnedVal = @returnedVal + @sum 
            set @TestIDLength = @TestIDLength + 1 
        End 
 
        IF @returnedVal % 10 = 0 
            set @numberLeft = 0 
        else 
            set @numberLeft = 10 - (@returnedVal % 10) 
     
    SELECT CAST(CAST(@TestID AS VARCHAR(13)) + CAST(@numberLeft AS CHAR(1)) AS BIGINT) AS BPayRefNumber 

END


GO
