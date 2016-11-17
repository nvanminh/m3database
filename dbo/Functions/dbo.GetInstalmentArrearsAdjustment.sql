CREATE FUNCTION [dbo].[GetInstalmentArrearsAdjustment]
    (
      @loanid float 
    )
RETURNS float
as
BEGIN
declare @result float 
set @result = 0 
select @result = 
(select sum(isnull(rtm_value,0)) 
from io_product_transaction 
where rtm_idlink_rmr = (select rmr_id from iO_Product_MasterReference where RMR_SeqNumber =  @loanid)
and rtm_idlink_xtrm in ('{f1021eac-09d7-4fa8-bd1c-97f21c408414}'))

return isnull(@result,0)
END





GO
