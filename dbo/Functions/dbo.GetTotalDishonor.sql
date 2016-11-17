SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO













-- =============================================
-- Author:		Axcess Consulting
-- Create date: 18/02/2008
-- Description:	Returns loan status as at specified date
--
-- PARAMETERS:
-- @accountID = account id (GUID)
-- @asAtDate = date to retrieve status for
--
-- RETURNS:
-- Status text for most recent status change on the specified date
-- =============================================
CREATE FUNCTION [dbo].[GetTotalDishonor] 
(
	-- Add the parameters for the function here
	@accountID int 
)
RETURNS decimal(10,2) 
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result decimal(10,2) 

	SET @Result = 0.00
	(
select  @result = sum(cast(RTM_Value as decimal(10,2))) from iO_Product_Transaction where rtm_idlink_rmr = (select rmr_id from iO_Product_MasterReference where rmr_seqnumber = @accountID) and rtm_idlink_xtrm in 
(
'{0e71d163-0bf4-4185-8b48-9e7db7b471fe}',
'{1711bd64-942a-456a-b723-e65d3c877a89}',
'{1d80d541-cd59-4e75-90d5-6c48e9c326ca}',
'{244d60d7-2cef-4e24-8a7d-02c9cab998d1}',
'{64a336b6-6562-4abe-809d-ddb951f4c24a}',
'{bfad6a88-cb2f-49ca-9b88-c1f962b81111}',
'{cde651a4-8f90-4baf-adc5-83e8499eaa3c}',
'{e832ac26-3c19-41aa-871c-a08f9b698d69}'
)
)
	RETURN cast(isnull(@Result,0) as decimal(10,2))

END













GO
