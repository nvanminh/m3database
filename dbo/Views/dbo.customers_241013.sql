SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[customers_241013]
as 
select  [CTI_IDLINK_CMR]
      ,[CTI_FIRSTNAME]
      ,[CTI_SURNAME]
      ,[cmr_seqnumber]
      ,[cmr_datetime]
	  from 
	  io_client_masterreference left join
	  io_client_typeindividual 
	  on CTI_IDLink_CMR = cmr_id
GO
