SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE FUNCTION [dbo].[udf_PresentValue]
(
	@InterestRate	numeric(18, 8), --// Rate is the interest rate per period.
	@Nper			int,            --// Nper is the total number of payment periods in an annuity.
	@Pmt			numeric(18, 4), --// Pmt is the payment made each period; it cannot change over the life of the annuity.PaymentValue must be entered as a negative number.
	@Fv				numeric(18, 4), --// Fv is the future value, or the lump-sum amount that a series of future payments is worth right now. If Fv is omitted, it is assumed to be 0 (zero). FV must be entered as a negative number.
	@Type			bit             --// Type is the number 0 or 1 and indicates when payments are due. If type is omitted, it is assumed to be 0 which represents at the end of the period. If payments are due at the beginning of the period, type should be 1.
)
RETURNS decimal(18, 2)
AS
BEGIN
	DECLARE @Value decimal(18, 2);

	SELECT
		@Value = CASE
					WHEN @Type = 0 THEN @Pmt * (POWER(CONVERT(float, (1 + @InterestRate / 100)), @Nper) - 1) / (((@InterestRate / 100)) * POWER((CONVERT(float, 1 + @InterestRate / 100)), @Nper)) + @Fv * POWER(CONVERT(float, (1 + @InterestRate / 100)), @Nper)
					WHEN @Type = 1 THEN @Pmt * (POWER(CONVERT(float, (1 + @InterestRate / 100)), @Nper) - 1) / (((@InterestRate / 100)) * POWER((CONVERT(float, 1 + @InterestRate / 100)), @Nper)) * (1 + @InterestRate / 100) + @Fv * POWER(CONVERT(float, (1 + @InterestRate / 100)), @Nper)
    END

    RETURN @Value * -1

/*
--Syntax
--dbo.UDF_PresentValue(@InterestRate,@Nper,@Pmt,@Fv ,@Type)
--You can find the same syntax in excel.
--PV(Rate,Nper,Pmt,Fv ,Type)
 
SELECT dbo.UDF_PresentValue(0.625,24,250,0,0)
---5555.61                      --SQL OUTPUT
--=PV(7.5%/12, 2*12, 250,0, 0)  --EXCEL FORMULA
--($5,555.61)                   --EXCEL OUTPUT
GO
 
SELECT dbo.UDF_PresentValue(0.1153846,208,50,0,1)
---9252.07                      --SQL OUTPUT
--==PV(6%/52, 4*52, 50, , 1)    --EXCEL FORMULA
--($9,252.07)                   --EXCEL OUTPUT
GO
SELECT dbo.UDF_PresentValue(5.25,10,100,0,0)
---762.88                       --SQL OUTPUT
--=PV(5.25%/1, 10*1, 100, , 0)  --EXCEL FORMULA
--($762.88)                     --EXCEL OUTPUT
GO
*/
END


GO
