SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE FUNCTION [dbo].[GetRepaymentDishonour]
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
and rtm_idlink_xtrm in ('{e832ac26-3c19-41aa-871c-a08f9b698d69}'))

return isnull(@result,0)
END




GO
