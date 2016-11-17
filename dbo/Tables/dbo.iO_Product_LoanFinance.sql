CREATE TABLE [dbo].[iO_Product_LoanFinance]
(
[RLFi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLFi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLFi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFi_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFi_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLFi_IDUser] [int] NULL,
[RLFi_Type] [int] NULL,
[RLFi_Purchase] [float] NULL,
[RLFi_Deposit] [float] NULL,
[RLFi_TotalRounded] [float] NULL,
[RLFi_FeeEstablishment] [float] NULL,
[RLFi_FeeMaintenance] [float] NULL,
[RLFi_FeePPSR] [float] NULL,
[RLFi_AusNZ] [int] NULL,
[RLFi_Insurance1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFi_InsuranceValue1] [float] NULL,
[RLFi_Insurance2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFi_InsuranceValue2] [float] NULL,
[RLFi_TotalRepayment] [float] NULL,
[RLFi_TotalAmount] [float] NULL,
[RLFi_TotalFees] [float] NULL,
[RLFi_TotalInterest] [float] NULL,
[RLFi_StampDuty] [float] NULL,
[RLFi_PreInsurance] [float] NULL,
[RLFi_TotalGrand] [float] NULL,
[RLFi_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFi_RepNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFi_CEMFromYear] [int] NULL,
[RLFi_CEMToYear] [int] NULL,
[RLFi_BonusPoints] [decimal] (18, 0) NULL,
[RLFi_PurchasedPoints] [decimal] (18, 0) NULL,
[RLFi_FeeAnnual] [decimal] (18, 0) NULL,
[RLFi_IssuedDuration] [decimal] (18, 0) NULL,
[RLFi_TotalPointsAllocated] [decimal] (18, 0) NULL,
[RLFi_CRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFi_SalesManager] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFi_FromLT] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFi_ToLT] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanFinance] ADD CONSTRAINT [PK_iO_Product_LoanFinance] PRIMARY KEY CLUSTERED  ([RLFi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_LoanFinance] ON [dbo].[iO_Product_LoanFinance] ([RLFi_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFinance', 'COLUMN', N'RLFi_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFinance', 'COLUMN', N'RLFi_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFinance', 'COLUMN', N'RLFi_Ownership'
GO
