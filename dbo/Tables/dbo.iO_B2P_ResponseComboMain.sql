CREATE TABLE [dbo].[iO_B2P_ResponseComboMain]
(
[PErc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PErc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErc_IDLink_PErm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PErc_ActualGuarantorFeeAmt] [float] NULL,
[PErc_ApplicationFeeAmt] [float] NULL,
[PErc_ApplicationNDI] [float] NULL,
[PErc_ContractBuilderAdminFeeAmt] [float] NULL,
[PErc_DecisionEnumLoanCombo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErc_IncomeMin] [float] NULL,
[PErc_LegalFeeAmt] [float] NULL,
[PErc_LMIAmt] [float] NULL,
[PErc_LMICompany] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErc_LMIDUAInd] [bit] NULL,
[PErc_LMILoanAmt] [float] NULL,
[PErc_LMILVR] [float] NULL,
[PErc_LMIPayerEnum] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErc_LMIProduct] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErc_LMIRequired] [bit] NULL,
[PErc_LMIStampDutyAmt] [float] NULL,
[PErc_LoanAmtMax] [float] NULL,
[PErc_LoanComboAdverseLevel] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErc_LoanComboID] [int] NULL,
[PErc_LVR] [float] NULL,
[PErc_LVRTotalBorrowings] [float] NULL,
[PErc_LVRApplicationTypeEnum] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PErc_MortgageStampDutyAmt] [float] NULL,
[PErc_NetDisposableIncome] [float] NULL,
[PErc_NetSurplusRatio] [float] NULL,
[PErc_OwnerBuilderAdminFeeAmt] [float] NULL,
[PErc_ProcessingFeeAmt] [float] NULL,
[PErc_RequestedProductInd] [bit] NULL,
[PErc_RiskFeeAmt] [float] NULL,
[PErc_RiskIndex] [int] NULL,
[PErc_ServiceabilityMonthlyPaymentAmt] [float] NULL,
[PErc_SettlementFeeAmt] [float] NULL,
[PErc_SplittingFeeAmt] [float] NULL,
[PErc_TotalBorrowings] [float] NULL,
[PErc_ValuationFeeAmt] [float] NULL,
[PErc_LMIPremiumTotal] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_ResponseComboMain] ADD CONSTRAINT [PK_iO_B2P_ResponseComboMain] PRIMARY KEY CLUSTERED  ([PErc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseComboMain', 'COLUMN', N'PErc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseComboMain', 'COLUMN', N'PErc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_ResponseComboMain', 'COLUMN', N'PErc_Ownership'
GO
