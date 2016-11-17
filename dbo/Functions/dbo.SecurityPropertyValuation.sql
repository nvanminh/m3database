SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


-- =============================================
-- Author:		Axcess Consulting
-- Create date: 21/02/2008
-- Description:	Returns security property valuation for an individual security property
--
-- PARAMETERS:
-- @SecurityID = varchar containing security id
--
-- RETURNS:
-- money containing security property value
-- =============================================
CREATE FUNCTION [dbo].[SecurityPropertyValuation] 
(
	-- Add the parameters for the function here
	@SecurityID varchar(40)
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
FROM iO_Product_SecurityPTY WHERE RSP_ID = @SecurityID and isnull(rsp_inactivesecurity,0) = 0 and (rsp_datedischarged is null or rsp_datedischarged = '')
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
	
	IF @DateDischarged IS NULL
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
