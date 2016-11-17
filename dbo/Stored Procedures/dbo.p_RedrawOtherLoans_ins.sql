SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_RedrawOtherLoans_ins]
    @Redraw_ID				varchar(40),
    @CMR_ID					varchar(40),
    @CompanyName			varchar(500),
    @RepaymentAmount		float,
    @RepaymentFrequencyID	varchar(40),
    @NumberOfRepayment		varchar(500),
    @New_ROL_ID				varchar(40) = NULL OUTPUT
AS
BEGIN
    DECLARE @New_ID varchar(40) = '{' + LOWER(NEWID()) + '}';

    INSERT INTO [WebPortal].[RedrawOtherLoans]
        ([ROL_ID]
        ,[ROL_LinkID_RDW]
        ,[ROL_LinkID_CMR]
        ,[ROL_CompanyName]
        ,[ROL_RepaymentAmount]
        ,[ROL_RepaymentFrequency]
        ,[ROL_NumberOfRepayment])
    --OUTPUT
    --    inserted.ROL_ID
    VALUES
        (@New_ID
        ,@Redraw_ID
        ,@CMR_ID
        ,@CompanyName
        ,@RepaymentAmount
        ,@RepaymentFrequencyID
        ,@NumberOfRepayment)

    SET @New_ROL_ID = @New_ID;
END

GO
