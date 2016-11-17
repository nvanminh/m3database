SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_AF_Redraw_OtherLoan_ins]
    @ClientGUID				varchar(40),
    @RedrawGUID				varchar(40),
    @CompanyName			varchar(500),
    @RepaymentAmount		float,
    @RepaymentFrequencyID	varchar(40),
    @NumberOfRepayment		varchar(500)
AS
BEGIN
    --DECLARE @RetvalCode int;
    DECLARE @New_ROL_ID varchar(40);
    --DECLARE @CMR_ID varchar(40);

    --SELECT @CMR_ID = CMR_ID FROM [dbo].[iO_Client_MasterReference] WHERE CMR_SeqNumber = @CustomerNo;

    EXEC [dbo].[p_RedrawOtherLoans_ins]
        @RedrawGUID,
        @ClientGUID,
        @CompanyName,
        @RepaymentAmount,
        @RepaymentFrequencyID,
        @NumberOfRepayment,
        @New_ROL_ID OUTPUT;

    IF (@@ERROR <> 0)
        SELECT 0 AS 'RETVAL'
    ELSE
        SELECT 1 AS 'RETVAL'
END
GO
