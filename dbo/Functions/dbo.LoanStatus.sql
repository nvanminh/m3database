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
CREATE FUNCTION [dbo].[LoanStatus] 
(
	-- Add the parameters for the function here
	@accountID varchar(40), 
	@asAtDate datetime
)
RETURNS varchar(max)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result varchar(max)

	SET @Result = 
	(
		select xsu_detail
		from io_control_Statusmaster
		where xsu_id =
		(
			select top 1 SMR_IDLink_XSU
			from iO_Status_MasterReference
			where
			SMR_IDLink_Code = @accountID
			and
			(	
				(smr_dateenter < dateadd(day,1,@asAtDate)
				 and smr_dateleave >= @asAtDate)
			or
				(smr_dateenter <= dateadd(day,1,@asAtDate)
				and smr_dateleave is null)
			)
			order by smr_dateenter desc
		)
	)

	RETURN @Result

END


GO
