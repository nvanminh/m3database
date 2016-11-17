CREATE FUNCTION [dbo].[GetArrearsLetterFee]
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
and rtm_idlink_xtrm in ('{5d85970a-fcd2-4e44-8367-8e7c85f90f30}'))

return isnull(@result,0)
END





GO
