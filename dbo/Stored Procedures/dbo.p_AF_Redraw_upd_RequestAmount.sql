SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_AF_Redraw_upd_RequestAmount]
    @RedrawGUID				varchar(40),
    @RedrawRequestedAmount	float
AS
BEGIN
    --// Update Varaible
    DECLARE @RMR_ID							varchar(40);
    DECLARE @Create							datetime;
    DECLARE @Expire							datetime;
    DECLARE @MaximumAllowedAmount			float;
    DECLARE @RequestedAmount				float;
    DECLARE @Source							varchar(40);
    DECLARE @Template						varchar(40);
    DECLARE @LastEmailToPrincipalDate		datetime;
    DECLARE @Status							varchar(40);
    DECLARE @LastChangeStatusDate			datetime;
    DECLARE @PrincipalNetPay				float;
    DECLARE @PrincipalNetPayFrequency		varchar(40);
    DECLARE @SecondBorrowerNetPay			float;
    DECLARE @SecondBorrowerNetPayFrequency	varchar(40);



    SELECT
        @RMR_ID							= RD.RDW_LinkID_RMR
        ,@Create						= RD.RDW_Create
        ,@Expire						= RD.RDW_Expire
        ,@MaximumAllowedAmount			= RD.RDW_MaximumAllowedAmount
        ,@RequestedAmount				= @RedrawRequestedAmount  --// Update
        ,@Source						= RD.RDW_Source
        ,@Template						= RD.RDW_Template
        ,@LastEmailToPrincipalDate		= RD.RDW_LastEmailToPrincipalDate
        ,@Status						= RD.RDW_Status
        ,@LastChangeStatusDate			= RD.RDW_LastChangeStatusDate
        ,@PrincipalNetPay				= RD.RDW_PrincipalNetPay
        ,@PrincipalNetPayFrequency		= RD.RDW_PrincipalNetPayFrequency
        ,@SecondBorrowerNetPay			= RD.RDW_SecondBorrowerNetPay
        ,@SecondBorrowerNetPayFrequency = RD.RDW_SecondBorrowerNetPayFrequency
    FROM
        [WebPortal].[Redraw] RD
    WHERE
        RD.RDW_ID = @RedrawGUID

    EXEC
        [dbo].[p_Redraw_upd]
            @RedrawGUID
            ,@RMR_ID
            ,@Create
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
            ,@SecondBorrowerNetPayFrequency

    IF (@@ERROR <> 0)
        SELECT 0 AS 'RETVAL'
    ELSE
        SELECT 1 AS 'RETVAL'
END
GO
