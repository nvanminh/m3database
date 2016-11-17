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
CREATE FUNCTION [dbo].[GetLastNoteOfTransaction] 
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
select top 1 rtm_note from io_product_transaction with (nolock) where RTM_IDLink_RMR = (select rmr_id from iO_Product_MasterReference with (nolock) where RMR_SeqNumber = @accountID) and len(cast(rtm_note as varchar(50)))> 1 and rtm_typeghost = 0  order by RTM_DateC desc
	)

	RETURN @Result

END










GO
