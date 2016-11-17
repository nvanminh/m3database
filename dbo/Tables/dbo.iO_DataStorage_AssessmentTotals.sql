CREATE TABLE [dbo].[iO_DataStorage_AssessmentTotals]
(
[DSA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSA_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSA_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[DSA_PBNetSalary] [float] NULL,
[DSA_PBOtherIncome] [float] NULL,
[DSA_PBMortgageRentBoard] [float] NULL,
[DSA_PBLivingAllowance] [float] NULL,
[DSA_PBRates] [float] NULL,
[DSA_PBCarLoan] [float] NULL,
[DSA_PBCreditCards] [float] NULL,
[DSA_PBOtherExpenses] [float] NULL,
[DSA_PBInsurances] [float] NULL,
[DSA_PBTotalExpenses] [float] NULL,
[DSA_PBWeeklySurplus] [float] NULL,
[DSA_SBNetSalary] [float] NULL,
[DSA_SBOtherIncome] [float] NULL,
[DSA_SBMortgageRentBoard] [float] NULL,
[DSA_SBLivingAllowance] [float] NULL,
[DSA_SBRates] [float] NULL,
[DSA_SBCarLoan] [float] NULL,
[DSA_SBCreditCards] [float] NULL,
[DSA_SBOtherExpenses] [float] NULL,
[DSA_SBInsurances] [float] NULL,
[DSA_SBTotalExpenses] [float] NULL,
[DSA_SBWeeklySurplus] [float] NULL,
[DSA_TNetSalary] [float] NULL,
[DSA_TOtherIncome] [float] NULL,
[DSA_TMortgageRentBoard] [float] NULL,
[DSA_TLivingAllowance] [float] NULL,
[DSA_TRates] [float] NULL,
[DSA_TCarLoan] [float] NULL,
[DSA_TCreditCards] [float] NULL,
[DSA_TOtherExpenses] [float] NULL,
[DSA_TInsurances] [float] NULL,
[DSA_TTotalExpenses] [float] NULL,
[DSA_TWeeklySurplus] [float] NULL,
[DSA_RepaymentWeekly] [float] NULL,
[DSA_RepaymentFortnightly] [float] NULL,
[DSA_RepaymentMonthly] [float] NULL,
[DSA_PBHE_Child] [float] NULL,
[DSA_PBHE_GeneralLiving] [float] NULL,
[DSA_PBHE_Travel] [float] NULL,
[DSA_PBHE_Utilities] [float] NULL,
[DSA_SBHE_Child] [float] NULL,
[DSA_SBHE_GeneralLiving] [float] NULL,
[DSA_SBHE_Travel] [float] NULL,
[DSA_SBHE_Utilities] [float] NULL,
[DSA_THE_Child] [float] NULL,
[DSA_THE_GeneralLiving] [float] NULL,
[DSA_THE_Travel] [float] NULL,
[DSA_THE_Utilities] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DataStorage_AssessmentTotals] ADD CONSTRAINT [PK_iO_DataStorage_AssessmentTotals] PRIMARY KEY CLUSTERED  ([DSA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-110642_RMR] ON [dbo].[iO_DataStorage_AssessmentTotals] ([DSA_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DataStorage_AssessmentTotals', 'COLUMN', N'DSA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DataStorage_AssessmentTotals', 'COLUMN', N'DSA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DataStorage_AssessmentTotals', 'COLUMN', N'DSA_Ownership'
GO
