SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


-- =============================================
-- Author:		Axcess Consulting
-- Create date: 14/02/2008
-- Description:	Replace XML reserved words
--
-- PARAMETERS:
-- @encoded_string = varchar containing string that has been encoded with XML reserved words
--
-- RETURNS:
-- Varchar containing unencoded text
-- =============================================
CREATE FUNCTION [dbo].[XMLWordReplace] 
(
	-- Add the parameters for the function here
	@encoded_string varchar(max)
)
RETURNS varchar(max)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result varchar(max)

	SET @Result = REPLACE(@encoded_string,'&amp;','&')

	SET @Result = REPLACE(@Result,'&apos;','''')

	SET @Result = REPLACE(@Result,'&gt;','>')

	SET @Result = REPLACE(@Result,'&lt;','<')

	SET @Result = REPLACE(@Result,'&quot;','"')

	

--SELECT @Result = @encoded_string

	-- Return the result of the function
	RETURN @Result

END


GO
