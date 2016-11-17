-- =============================================
-- Author:		Axcess Consulting
-- Create date: 15/02/2008
-- Description:	Gets the effective interest rate of a loan at the specifed date
--
-- PARAMETERS:
-- @accountID = account id (GUID)
-- @asAtDate = date to retreive interest rate for
--
-- RETURNS:
-- Effective interest rate of loan at specified date
-- =============================================
CREATE FUNCTION [dbo].[GetEffectiveInterestRate] 
(
	-- Add the parameters for the function here
	@accountID varchar(40),
	@asAtDate datetime
)
RETURNS money
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result money

	/* =========================================== */
	/* Calculates the current rate for an account. */
	/* =========================================== */
	declare @Type integer
	declare @AddToBase bit
	declare @BreakFromClass bit
	declare @Rate numeric(12, 4)
	declare @Option integer
	declare @CurrentRate numeric(12, 4)
	declare @BaseRateIsManual bit
	declare @BaseRateClass integer

	declare rate_cursor cursor local fast_forward for
		select
			isnull(rcr.rcr_type, 0) as [Type],
			cast(isnull(rcr.rcr_addtobase, 0) as bit) as [Add To Base],
			cast(isnull(rcr.rcr_breakfromclass, 0) as bit) as [Break From Class],
			cast(case
				when isnull(rcr.rcr_breakfromclass, 0) = 0
				then isnull((select top 1 xrrd_rate from io_control_productratedetail where (xrrd_idlink_xrrm = xrrm.xrrm_id) and (xrrd_dateeffectivefrom <= @asAtDate) order by xrrd_dateeffectivefrom desc), 0)
				else rcr.rcr_rate
			end as numeric(12,4)) as [Rate],
			isnull(rcr_option, 0) as [Option]
		from
			io_product_Controlrate rcr
				left join io_control_productratemaster xrrm
					on xrrm.xrrm_id = rcr.rcr_idlink_xrrm
		where
			(rcr.rcr_idlink_rmr = @accountID) 
		order by
			rcr.rcr_type

	open rate_cursor

	set @CurrentRate = 0
	set @BaseRateIsManual = 0
	set @BaseRateClass = 0
	fetch next from	rate_cursor into @Type, @AddToBase, @BreakFromClass, @Rate, @Option
	while @@fetch_status = 0 begin

		if (@Type = 1)
		begin
			/* This is the base rate. */
			if (@BreakFromClass = 1)
			begin
				/* Using a manual rate. */
				set @CurrentRate = @Rate
				set @BaseRateIsManual = 1
			end else begin
				/* Rate will be in one of the subsequent classes. */
				set @CurrentRate = 0
				if (@Option = 1)
				begin
					set @BaseRateClass = 3
				end
				else if (@Option = 2)
				begin
					set @BaseRateClass = 2
				end
			end
		end
		else if (@Type = @BaseRateClass)
		begin
			if (@BaseRateIsManual <> 1)
			begin
				/* This is the base rate's class. */
				set @CurrentRate = @CurrentRate + @Rate
			end
		end
		else
		begin
			if (@Type > 3)
			begin
				if (@AddToBase = 1)
				begin
					set @CurrentRate = @CurrentRate + @Rate
				end
			end
		end

		fetch next from	rate_cursor into @Type, @AddToBase, @BreakFromClass, @Rate, @Option
	end

	close rate_cursor
	deallocate rate_cursor
	--select @CurrentRate as [Current Rate]

	set @Result = @CurrentRate

	-- Return the result of the function
	RETURN @Result

END

GO
