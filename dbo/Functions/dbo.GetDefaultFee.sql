CREATE FUNCTION [dbo].[GetDefaultFee]
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
and rtm_idlink_xtrm in ('{f37874ea-230b-4795-b6bb-fff27bda2b2f}'))

return isnull(@result,0)
END





GO
