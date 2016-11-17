CREATE FUNCTION [dbo].[GetBPayCode]
(
	-- Add the parameters for the function here
@input bigint
)
RETURNS bigint
AS
BEGIN

	DECLARE @TestID BIGINT = @input
    declare @TestIDLength TINYINT = 1 
    declare @returnedVal int = 0 
    declare @inputVal varchar(50) = REVERSE(@TestID) 
    declare @odd bit = 0 
    declare @sum int 
    declare @numberLeft int 
	declare @result bigint
 
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
     
    set @result =  cast (CAST(CAST(@TestID AS VARCHAR(13)) + CAST(@numberLeft AS CHAR(1)) AS BIGINT)  as bigint)


	-- Return the result of the function
	RETURN @result

END




GO
