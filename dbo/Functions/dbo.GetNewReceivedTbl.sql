SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE FUNCTION [dbo].[GetNewReceivedTbl]
    (
      @loanid INT 
    )
RETURNS table
as
return 
select (
(select isnull(sum(rtm_value),0)
from io_product_transaction 
where rtm_idlink_rmr = (select rmr_id from iO_Product_MasterReference where RMR_SeqNumber = @loanid)
and rtm_idlink_xtrm in ('{3b78e2bc-412d-4e78-927a-e255975efbfd}','{5d21b3ef-7739-4427-85a6-70a1677786f1}','{b426962b-3748-4bbf-9232-92ba164dc785}', 
'{77d7215b-a0ad-495a-86f5-e791f035f335}','{da9c356c-51b7-46e7-b637-22f2c2897a44}','{a8136ec2-6d41-4df2-97e2-a92baa39f139}', 
'{95df5a7c-ba97-45cd-a732-cf9eb4cf4fd0}','{2f97e453-ddcd-49b7-958d-e85460e5c3cf}','{9a77a79c-c8f7-494f-8e9f-48e304dfd652}', 
'{f03763e2-eb24-4ca9-bef2-e525ade90ce8}','{468824e4-f92e-428c-8000-de9d68619d23}','{d685de8f-4009-4968-9fe6-bd63de507376}', 
'{d90943f6-a537-4e04-adc0-7a880260a940}','{369d0352-6702-44dc-86a5-aa1e63d43a28}','{c1b0f505-72bd-4f1d-ac11-f45d77e4bf7d}','{8b80a451-3d1a-4097-81ea-959dd2f0d8f6}', 
'{857a90f4-efa8-4c9f-abbf-19b7057a7b79}','{88d368ae-d2e3-4db4-9880-3de434f3b542}','{dc2c3e2a-1594-4058-b10f-73627855f28a}', 
'{9251d213-46b3-4ffe-a59e-675bc7ed8258}','{9d57bb56-d2b6-4aef-9165-dcbdfa354997}','{0d09ef16-c8c6-4fd7-aa07-4d40ce7a3d60}','{e1365ab7-7216-4d36-9127-8a46e6d7cb02}'))-
(select isnull(sum(rtm_value),0)
from io_product_transaction 
where rtm_idlink_rmr = (select rmr_id from iO_Product_MasterReference where RMR_SeqNumber = @loanid)
and rtm_idlink_xtrm in ('{d96fdc0b-ea82-46c3-9982-0bc4f155935c}','{ef859b47-2820-4459-b033-4bd4d321251a}','{1fa76f6c-3a20-415d-a8e5-3a71efeef433}', 
'{8ae7a940-e7de-47ba-a98e-6227241c4698}','{914d2104-748b-47fe-b580-3e9939c39d2a}','{2b59edef-b7fa-4033-a477-033ae9da122d}')
)-(select isnull(sum(rtm_value),0)
from io_product_transaction 
where rtm_idlink_rmr = (select rmr_id from iO_Product_MasterReference where RMR_SeqNumber = @loanid)
and rtm_idlink_xtrm in ('{1d80d541-cd59-4e75-90d5-6c48e9c326ca}','{1711bd64-942a-456a-b723-e65d3c877a89}','{e832ac26-3c19-41aa-871c-a08f9b698d69}', 
'{244d60d7-2cef-4e24-8a7d-02c9cab998d1}','{f63e5521-cbef-414c-89ed-d6aa29644687}','{bfad6a88-cb2f-49ca-9b88-c1f962b81111}','{64a336b6-6562-4abe-809d-ddb951f4c24a}','{0e71d163-0bf4-4185-8b48-9e7db7b471fe}')) 

) as NewReceived


GO
