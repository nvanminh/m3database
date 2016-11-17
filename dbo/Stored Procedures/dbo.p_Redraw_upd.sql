SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_Redraw_upd]
	@RDW_ID							varchar(40),
	@RMR_ID							varchar(40),
	@Create							datetime,
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
	UPDATE
		RD
	SET
		RDW_LinkID_RMR = @RMR_ID
		,RDW_Create = @Create
		,RDW_Expire = @Expire
		,RDW_MaximumAllowedAmount = @MaximumAllowedAmount
		,RDW_RequestedAmount = @RequestedAmount
		,RDW_Source = @Source
		,RDW_Template = @Template
		,RDW_LastEmailToPrincipalDate = @LastEmailToPrincipalDate
		,RDW_Status = @Status
		,RDW_LastChangeStatusDate = @LastChangeStatusDate
		,RDW_PrincipalNetPay = @PrincipalNetPay
		,RDW_PrincipalNetPayFrequency = @PrincipalNetPayFrequency
		,RDW_SecondBorrowerNetPay = @SecondBorrowerNetPay
		,RDW_SecondBorrowerNetPayFrequency = @SecondBorrowerNetPayFrequency
	FROM
		[WebPortal].[Redraw] RD
	WHERE
		RD.RDW_ID = @RDW_ID

END
GO
