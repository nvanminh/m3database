SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[customers_asof_04_11_2013]
as
SELECT [CTI_IDLINK_CMR]
      ,[CTI_FIRSTNAME]
      ,[CTI_SURNAME]
      ,[cmr_seqnumber]
      ,[cmr_datetime]
      ,[CTI_DOB]
  FROM io_client_masterreference
  left join io_client_typeindividual
on cmr_id = cti_idlink_cmr
where cti_dob is not null






GO
