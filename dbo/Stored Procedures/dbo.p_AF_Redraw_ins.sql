SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[p_AF_Redraw_ins]
	@LoanGUID							varchar(40),
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

	EXEC [dbo].[p_Redraw_ins]
		@LoanGUID,
		@Expire,
		@MaximumAllowedAmount,
		@RequestedAmount,
		@Source,
		@Template,
		@LastEmailToPrincipalDate,
		@Status,
		@LastChangeStatusDate,
		@PrincipalNetPay,
		@PrincipalNetPayFrequency,
		@SecondBorrowerNetPay,
		@SecondBorrowerNetPayFrequency

END


GO
