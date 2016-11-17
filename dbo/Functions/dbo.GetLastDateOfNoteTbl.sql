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
CREATE FUNCTION [dbo].[GetLastDateOfNoteTbl] 
(
	-- Add the parameters for the function here
	@accountID int 
)
RETURNS table
as 
return
select
	(
select top 1 cast(nmr_date as varchar(max)) from iO_Note_MasterReference with (nolock) where nmr_idlink_code = (select rmr_id from iO_Product_MasterReference with (nolock) where rmr_seqnumber = @accountID) order by nmr_date desc
	) as [LastDateOfNote]


GO
