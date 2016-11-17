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
CREATE FUNCTION [dbo].[GetLastDateOfNote] 
(
	-- Add the parameters for the function here
	@accountID int 
)
RETURNS varchar(max)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result varchar(max)

	SET @Result = 
	(
select top 1 cast(nmr_date as varchar(max)) from iO_Note_MasterReference with (nolock) where nmr_idlink_code = (select rmr_id from iO_Product_MasterReference with (nolock) where rmr_seqnumber = @accountID) order by nmr_date desc
	)

	RETURN @Result

END












GO
