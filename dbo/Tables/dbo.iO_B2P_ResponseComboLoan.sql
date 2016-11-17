CREATE TABLE [dbo].[iO_B2P_ResponseComboLoan]
(
[PErl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PErl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErl_IDLink_PErc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErl_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PErl_ProductCode] [bigint] NULL,
[PErl_LoanCapitalisedApplicationFeeAmt] [float] NULL,
[PErl_LoanCapitalisedContractBuilderAdminFeeAmt] [float] NULL,
[PErl_LoanCapitalisedGuarantorFeeAmt] [float] NULL,
[PErl_LoanCapitalisedLegalFeeAmt] [float] NULL,
[PErl_LoanCapitalisedLMIAmt] [float] NULL,
[PErl_LoanCapitalisedMortgageStampDutyAmt] [float] NULL,
[PErl_LoanCapitalisedOwnerBuilderAdminFeeAmt] [float] NULL,
[PErl_LoanCapitalisedProcessingFeeAmt] [float] NULL,
[PErl_LoanCapitalisedPurchaseStampDutyAmt] [float] NULL,
[PErl_LoanCapitalisedRiskFeeAmt] [float] NULL,
[PErl_LoanCapitalisedSettlementFeeAmt] [float] NULL,
[PErl_LoanCapitalisedSplittingFeeAmt] [float] NULL,
[PErl_LoanCapitalisedValuationFeeAmt] [float] NULL,
[PErl_LoanID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErl_LoanServiceabilityMonthlyPaymentAmt] [float] NULL,
[PErl_LoanTotalBorrowingsAmt] [float] NULL,
[PErl_PegaLoanID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErl_StatusEnumLoan] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErl_StatusEnumProduct] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_ResponseComboLoan] ADD CONSTRAINT [PK_iO_B2P_ResponseComboLoan] PRIMARY KEY CLUSTERED  ([PErl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseComboLoan', 'COLUMN', N'PErl_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseComboLoan', 'COLUMN', N'PErl_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseComboLoan', 'COLUMN', N'PErl_Ownership'
GO
