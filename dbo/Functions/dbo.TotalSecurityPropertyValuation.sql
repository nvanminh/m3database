SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


-- =============================================
-- Author:		Axcess Consulting
-- Create date: 21/02/2008
-- Description:	Returns total security property valuation for a facility
--
-- PARAMETERS:
-- @FacilityID = varchar containing facility id
--
-- RETURNS:
-- money containing total security property value
-- =============================================
CREATE FUNCTION [dbo].[TotalSecurityPropertyValuation] 
(
	-- Add the parameters for the function here
	@FacilityID varchar(40),
	@Date datetime
	
)
RETURNS money
AS
BEGIN
	

DECLARE @Purchase money
DECLARE @Estimated money
DECLARE @ValAmt money
DECLARE @SecID varchar(40)
DECLARE @TotalSecValue money
DECLARE @AmountToUse money
DECLARE @DateDischarged datetime

DECLARE mCur CURSOR FOR
SELECT ISNULL(RSP_PurchasePrice,0), ISNULL(RSP_EstimatedValue,0), RSP_ID, RSP_DateDischarged 
FROM iO_Product_SecurityPTY WHERE RSP_IDLink_RMR = @FacilityID and isnull(rsp_inactivesecurity,0) = 0 and (rsp_datedischarged is null or rsp_datedischarged = '' or RSP_DateDischarged >= @Date)
SET @Purchase = 0
SET @Estimated = 0
SET @ValAmt = 0
SET @TotalSecValue= 0

OPEN mCur
FETCH NEXT FROM mCur INTO @Purchase, @Estimated, @SecID, @DateDischarged
WHILE @@FETCH_STATUS = 0
BEGIN
	SET @AmountToUse = 0
	IF @DateDischarged IS NOT NULL 
		SET @AmountToUse = 0
	
	IF @DateDischarged IS NULL or @DateDischarged > @Date
		BEGIN
			SET @ValAmt = (
							SELECT TOP 1(RSPv_CMV_MaxAmount) 
							FROM iO_Product_SecurityPTYValuation 
							WHERE RSPv_IDLink_RSP = @SecID 
							ORDER BY RSPv_Date DESC, RSPv_SeqNumber DESC
						  )
			IF @ValAmt IS NULL
				SET @AmountToUse = 0
			else
				set @AmountToUse = @ValAmt
			
			IF @AmountToUse = 0
				BEGIN
					SET @AmountToUse = @Purchase
			
					IF @AmountToUse  = 0 
						SET @AmountToUse = @Estimated
				END
		END
		
		IF @AmountToUse > 0 
			SET @TotalSecValue = @TotalSecValue + @AmountToUse
			
	FETCH NEXT FROM mCur INTO @Purchase, @Estimated, @SecID, @DateDischarged
END
CLOSE mCur
DEALLOCATE mCur


	-- Return the result of the function
	RETURN @TotalSecValue

END


GO
