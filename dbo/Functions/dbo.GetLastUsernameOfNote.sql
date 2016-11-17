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
CREATE FUNCTION [dbo].[GetLastUsernameOfNote] 
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
 select top 1 cmr_name  from iO_Note_MasterReference  smr  with (nolock) inner join io_client_masterreference with (nolock) on NMR_IDLink_CMR_From = cmr_id where NMR_IDLink_Code = (select rmr_id from io_product_masterreference with (nolock) where rmr_seqnumber = @accountID) order by NMR_Date desc
	)

	RETURN @Result

END









GO
