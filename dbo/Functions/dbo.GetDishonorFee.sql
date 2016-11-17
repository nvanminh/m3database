CREATE FUNCTION [dbo].[GetDishonorFee]
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
and rtm_idlink_xtrm in ('{798f3a7c-3d4c-4aeb-8b3c-1e295b5b9b55}','{8e18b754-8b9d-4142-a018-cfca7b4082cf}'))

return isnull(@result,0)
END





GO
