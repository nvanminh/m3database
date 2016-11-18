SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


-- =============================================
-- Author:		Nikola Malezanoski
-- Create date: 26/10/2015
-- Description:	Decript String 
-- =============================================
CREATE FUNCTION [WebPortal].[Decrypt] (@str nvarchar(max))
RETURNS nvarchar(max)
AS
BEGIN
	DECLARE @encrypted_string varbinary (4000);
	DECLARE @decrypted_string nvarchar(max);

	SET @encrypted_string = CONVERT(varbinary(4000), @str, 1) 
	

	SET @decrypted_string = DECRYPTBYPASSPHRASE  ('This Must be 100% secret',  @encrypted_string);

	-- Return the result of the function
	RETURN @decrypted_string;

END



GO
