CREATE TABLE [dbo].[iO_Client_IndividualLiabilityCredit]
(
[CLLc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLLc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLLc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLc_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLc_IDLink_XLBc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLc_IDUser] [int] NULL,
[CLLc_Type] [int] NULL,
[CLLc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CLLc_CreditProvider] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLc_BalanceOwning] [float] NULL,
[CLLc_MonthlyRepayment] [float] NULL,
[CLLc_Limit] [float] NULL,
[CLLc_DebtToContinue] [bit] NULL,
[CLLc_PayoutOption] [int] NULL,
[CLLc_IncludeGDS] [int] NULL,
[CLLc_IncludeTDS] [int] NULL,
[CLLc_InternalFlag] [int] NULL,
[CLLc_IsBureau] [int] NULL,
[CLLc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLc_AccountNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLLc_PayoffAmount] [float] NULL,
[CLLc_Rate] [float] NULL,
[CLLc_BalanceOwing] [float] NULL,
[CLLc_TermRemainingM] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_IndividualLiabilityCredit] ADD CONSTRAINT [PK_iO_Client_IndividualLiabilityCredit] PRIMARY KEY CLUSTERED  ([CLLc_ID]) WITH (FILLFACTOR=80) ON [PRIMARY]
GO
