CREATE FUNCTION [dbo].[GetInstalmentArrears]
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
and rtm_idlink_xtrm in ('{0f755257-d34d-4a45-b5f0-285c63f0c963}'))

return isnull(@result,0)
END





GO
