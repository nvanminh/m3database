SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE FUNCTION [dbo].[GetPaymentFrequency]
    (
      @loanid INT 
    )
RETURNS varchar(40)
as
BEGIN
declare @result varchar(50) 
set @result = 0 
declare @LFrequency as varchar(40)
set @LFrequency = (select
	rpsm_idlink_frequency
from
	io_product_paymentschedulemaster
where
	rpsm_idlink_rmr = (select rmr_id from iO_Product_MasterReference where RMR_SeqNumber = @loanid))
select @result = 
(
SELECT  
Case
when @LFrequency = '{FC99A346-78A0-44fd-9E4F-A4DC9E926EFB}' then 'Weekly'
when @LFrequency = '{529F0DF2-3394-4e32-B336-895699D75488}' then 'Fortnightly'
when @LFrequency = '{52A3A7A8-AF07-4327-B5AA-B66FB4288206}' then 'Monthly'
else 'Not Specified'
end
)

return @result
END




GO
