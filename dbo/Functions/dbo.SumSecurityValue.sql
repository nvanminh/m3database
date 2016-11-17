SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


-- =============================================
-- Author:		Axcess Consulting
-- Create date: 19/02/2008
-- Description:	Get the sum of a loans security values
--
-- PARAMETERS:
-- @AccountID = varchar containing loan ID
--
-- RETURNS:
-- Money containing sum of estimated security value for given loan
-- =============================================
CREATE FUNCTION [dbo].[SumSecurityValue] 
(
	-- Add the parameters for the function here
	@AccountID varchar(40)
)
RETURNS money
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result money
	Set @Result = (Select Sum(RSP_EstimatedValue) From iO_Product_SecurityPTY Where RSP_IDLink_RMR = @AccountID)

	-- Return the result of the function
	RETURN @Result

END


GO
