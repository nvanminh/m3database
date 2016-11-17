SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[p_Redraw_ins]
	@RMR_ID							varchar(40),
	@Expire							datetime,
	@MaximumAllowedAmount			float,
	@RequestedAmount				float,
	@Source							varchar(40),
	@Template						varchar(40),
	@LastEmailToPrincipalDate		datetime,
	@Status							varchar(40),
	@LastChangeStatusDate			datetime,
	@PrincipalNetPay				float,
	@PrincipalNetPayFrequency		varchar(40),
	@SecondBorrowerNetPay			float,
	@SecondBorrowerNetPayFrequency	varchar(40)
AS
BEGIN
	DECLARE @New_ID varchar(40) = '{' + LOWER(NEWID()) + '}';

	INSERT INTO [WebPortal].[Redraw]
           ([RDW_ID]
           ,[RDW_LinkID_RMR]
           ,[RDW_Create]
           ,[RDW_Expire]
           ,[RDW_MaximumAllowedAmount]
           ,[RDW_RequestedAmount]
           ,[RDW_Source]
           ,[RDW_Template]
           ,[RDW_LastEmailToPrincipalDate]
           ,[RDW_Status]
           ,[RDW_LastChangeStatusDate]
           ,[RDW_PrincipalNetPay]
           ,[RDW_PrincipalNetPayFrequency]
           ,[RDW_SecondBorrowerNetPay]
           ,[RDW_SecondBorrowerNetPayFrequency])
     VALUES
           (@New_ID
           ,@RMR_ID
           ,GETDATE()
           ,@Expire
           ,@MaximumAllowedAmount
           ,@RequestedAmount
           ,@Source
           ,@Template
           ,@LastEmailToPrincipalDate
           ,@Status
           ,@LastChangeStatusDate
           ,@PrincipalNetPay
           ,@PrincipalNetPayFrequency
           ,@SecondBorrowerNetPay
           ,@SecondBorrowerNetPayFrequency)

END
GO
