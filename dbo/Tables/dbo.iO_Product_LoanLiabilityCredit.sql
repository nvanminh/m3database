CREATE TABLE [dbo].[iO_Product_LoanLiabilityCredit]
(
[RLLc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLLc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLLc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_IDLink_XLBc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_CreditProvider] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_BalanceOwning] [float] NULL,
[RLLc_MonthlyRepayment] [float] NULL,
[RLLc_Limit] [float] NULL,
[RLLc_DebtToContinue] [bit] NULL,
[RLLc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_Type] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_PayoutOption] [int] NULL,
[RLLc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLLc_IDUser] [int] NULL,
[RLLc_BSBNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_AccountNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_BalanceOwing] [float] NULL,
[RLLc_City] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_PropertyValue] [float] NULL,
[RLLc_ExpiryDate] [datetime] NULL,
[RLLc_IncludeGDS] [int] NULL,
[RLLc_InternalFlag] [int] NULL,
[RLLc_IncludeTDS] [int] NULL,
[RLLc_PayoffAmount] [float] NULL,
[RLLc_Include] [int] NULL,
[RLLc_IsBureau] [int] NULL,
[RLLc_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLLc_CurrentForClient] [bit] NULL,
[RLLc_InterestRate] [float] NULL,
[RLLc_Refinance] [bit] NULL,
[RLLc_IDLink_Expenses] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[rllc_monthlyrepaymentminimun] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanLiabilityCredit] ADD CONSTRAINT [PK_iO_Product_LoanLiabilityCredit] PRIMARY KEY CLUSTERED  ([RLLc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_LoanLiabilityCredit_10] ON [dbo].[iO_Product_LoanLiabilityCredit] ([RLLc_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanLiabilityCredit', 'COLUMN', N'RLLc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanLiabilityCredit', 'COLUMN', N'RLLc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanLiabilityCredit', 'COLUMN', N'RLLc_Ownership'
GO
