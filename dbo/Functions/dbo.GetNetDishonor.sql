SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE FUNCTION [dbo].[GetNetDishonor]
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
and rtm_idlink_xtrm in ('{1d80d541-cd59-4e75-90d5-6c48e9c326ca}','{1711bd64-942a-456a-b723-e65d3c877a89}','{e832ac26-3c19-41aa-871c-a08f9b698d69}', 
'{244d60d7-2cef-4e24-8a7d-02c9cab998d1}','{f63e5521-cbef-414c-89ed-d6aa29644687}','{bfad6a88-cb2f-49ca-9b88-c1f962b81111}','{64a336b6-6562-4abe-809d-ddb951f4c24a}','{0e71d163-0bf4-4185-8b48-9e7db7b471fe}'))

return isnull(@result,0)
END



GO
