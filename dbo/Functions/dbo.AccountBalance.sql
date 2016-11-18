SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



-- =============================================
-- Author:		Axcess Consulting
-- Create date: 18/02/2008
-- Description:	Gets the specified balance for account, at the specified date using either effictive date, or process date
--
-- PARAMETERS:
-- @accountID = account id (GUID)
-- @balanceID = Balance ID (GUID)
-- @asAtDate = date to retrieve balance for
-- @dateType = use effective or process date (set to sql keyword 'default' to use effective date)
--		0 = Effective Date
--		1 = Process Date
--
-- RETURNS
-- Specified balance of account at specified date using effective or process date
-- No balance for these criteria will return null
-- =============================================
CREATE FUNCTION [dbo].[AccountBalance] 
(
	-- Add the parameters for the function here
	@accountID varchar(40),
	@balanceID varchar(40),
	@asAtDate datetime,
	@dateType bit = 0
)
RETURNS money
AS
BEGIN

	-- Declare the return variable here
	DECLARE @Result money

	/* =========================================== */
	/* Calculates the current balance for an account. */
	/* =========================================== */
	set @Result = (select cast(isnull(SUM(rtb_Value),0) as money)
	From io_product_transactionbalance 
		INNER JOIN io_product_transaction ON rtb_idlink_rtm = rtm_id
	Where rtb_IDLink_RMR = @accountID
	And rtb_IDLink_XRBl = @balanceID
	and 
	(
		( @dateType = 0 AND rtm_DateE < dateadd( d,1,@asAtDate) )
	OR
		( @dateType = 1 AND rtm_DateC < dateadd( d,1,@asAtDate) )
	))

	return @Result

END

GO
