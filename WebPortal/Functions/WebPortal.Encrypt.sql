SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Nikola Malezanoski
-- Create date: 26/10/2015
-- Description:	Encript String 
-- =============================================
CREATE FUNCTION [WebPortal].[Encrypt] (@str nvarchar(4000))
RETURNS nvarchar(max)
AS
BEGIN
	DECLARE @encrypted_string varbinary (4000)
	
	SET @encrypted_string = ENCRYPTBYPASSPHRASE ('This Must be 100% secret', @str);
	
	-- Return the result of the function
	RETURN CONVERT(NVARCHAR(max), @encrypted_string,1) 

END


GO
