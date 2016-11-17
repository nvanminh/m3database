CREATE TABLE [dbo].[iO_Product_LoanInsurance]
(
[RLMi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLMi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_IDLink_Insurer] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_IDLink_Payableby] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLMi_Type] [int] NULL,
[RLMi_IDUser] [int] NULL,
[RLMi_LVR] [int] NULL,
[RLMi_PayableBy] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_PolicyID] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_PolicyID_Existing] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_PolicyID_PreQual] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_PolicyID_Tracker] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_Amount] [float] NULL,
[RLMi_PremiumAmount] [float] NULL,
[RLMi_PremiumTax] [float] NULL,
[RLMi_PremiumTotal] [float] NULL,
[RLMi_DateApproval] [datetime] NULL,
[RLMi_DateQuote] [datetime] NULL,
[RLMi_LMIType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_LMIProduct] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_LMIFlag_Upfront] [bit] NULL,
[RLMi_LMIFlag_RUInterventation] [bit] NULL,
[RLMi_LOC_Repayment] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_LOC_MonthAM] [int] NULL,
[RLMi_LOC_DateMaturity] [datetime] NULL,
[RLMi_SelfDirect_RRSPFlag] [bit] NULL,
[RLMi_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_LMIPayor] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_Status] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLMi_LMIPayorOverrideFlag] [bit] NULL,
[RLMi_IsManualOverride] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanInsurance] ADD CONSTRAINT [PK_iO_Product_LoanInsurance] PRIMARY KEY CLUSTERED  ([RLMi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_LoanInsurance] ON [dbo].[iO_Product_LoanInsurance] ([RLMi_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_iO_Product_LoanInsurance_25_932250426__K3_K1_15_24_25_32_33_34] ON [dbo].[iO_Product_LoanInsurance] ([RLMi_IDLink_RMR], [RLMi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanInsurance', 'COLUMN', N'RLMi_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanInsurance', 'COLUMN', N'RLMi_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanInsurance', 'COLUMN', N'RLMi_Ownership'
GO
