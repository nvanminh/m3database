CREATE FUNCTION [dbo].[GetArrearsFee]
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
and rtm_idlink_xtrm in ('{bf8c8181-dc96-4e7e-8f2d-c1034c07822c}'))

return isnull(@result,0)
END





GO
