-- =============================================
-- Author:		Axcess Consulting
-- Create date: 15/02/2008
-- Description:	Gets the effective rate of a loan of a certain type at the specifed date, eg trailer
--
-- PARAMETERS:
-- @accountID = account id (GUID)
-- @asAtDate = date to retreive rate for
-- @interestType = interest type to retrieve
--
-- RETURNS:
-- Specified rate of loan at specified date
-- =============================================
CREATE FUNCTION [dbo].[GetEffectiveSpecificRate] 
(
	-- Add the parameters for the function here
	@accountID varchar(40),
	@asAtDate datetime,
	@interestType as int
)
RETURNS money
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result money

	/* =========================================== */
	/* Calculates the current rate for an account. */
	/* =========================================== */
	declare @BreakFromClass bit
	declare @ManualRate numeric(12, 4)
	declare @Rate numeric(12, 4)
	declare @CurrentRate numeric(12, 4)

	declare rate_cursor cursor local fast_forward for
		select
			cast(isnull(rcr.rcr_breakfromclass, 0) as bit) as [Break From Class],
			cast(isnull(rcr.rcr_rate,0) as numeric(12,4)) as [Manual Rate],
			cast(
				isnull((select top 1 xrrd_rate from io_control_productratedetail where (xrrd_idlink_xrrm = xrrm.xrrm_id) and (xrrd_dateeffectivefrom <= @asAtDate) order by xrrd_dateeffectivefrom desc), 0) 
			as numeric(12,4)) as [Rate]
		from
			io_product_Controlrate rcr
				left join io_control_productratemaster xrrm
					on xrrm.xrrm_id = rcr.rcr_idlink_xrrm
		where
			(rcr.rcr_idlink_rmr = @accountID) 
		and	(rcr.rcr_type = @interestType)
		order by
			rcr.rcr_type

	open rate_cursor

	set @CurrentRate = 0
	fetch next from	rate_cursor into @BreakFromClass, @ManualRate, @Rate
	while @@fetch_status = 0 begin

		if (@BreakFromClass = 1)
		begin
			set @CurrentRate = @ManualRate
		end else begin
			set @CurrentRate = @Rate
		end

		fetch next from	rate_cursor into @BreakFromClass, @ManualRate, @Rate
	end

	close rate_cursor
	deallocate rate_cursor

	set @Result = @CurrentRate


	return @Result

END

GO
