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
CREATE FUNCTION [dbo].[GetLastUsernameOfStatus] 
(
	-- Add the parameters for the function here
	@accountID int 
)
RETURNS  varchar(max)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result varchar(max)

	SET @Result = 
	(
select top 1 cmr_name  from iO_Status_MasterReference  smr  with (nolock) inner join io_client_masterreference with (nolock) on smr_idlink_cmr = cmr_id where smr_idlink_code = (select rmr_id from io_product_masterreference with (nolock) where rmr_seqnumber = @accountID) order by smr_dateenter desc
	)

	RETURN @Result

END









GO
