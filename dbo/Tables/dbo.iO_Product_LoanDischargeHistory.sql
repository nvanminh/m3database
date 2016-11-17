CREATE TABLE [dbo].[iO_Product_LoanDischargeHistory]
(
[RLDh_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLDh_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDh_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDh_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDh_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDh_IDLink_RSP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDh_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLDh_Type] [int] NULL,
[RLDh_IDUser] [int] NULL,
[RLDh_DischargeDate] [datetime] NULL,
[RLDh_AnticipatedDischargeDate] [datetime] NULL,
[RLDh_FullAmount] [float] NULL,
[RLDh_PrincipalAmount] [float] NULL,
[RLDh_InterestAcc] [float] NULL,
[RLDh_Fees] [float] NULL,
[RLDh_DefferedEstabFee] [float] NULL,
[RLDh_QuoteType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLDh_UnclearedFunds] [float] NULL,
[RLDh_BreakCost] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanDischargeHistory] ADD CONSTRAINT [PK_iO_Product_LoanDischargeHistory] PRIMARY KEY CLUSTERED  ([RLDh_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDischargeHistory', 'COLUMN', N'RLDh_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDischargeHistory', 'COLUMN', N'RLDh_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanDischargeHistory', 'COLUMN', N'RLDh_Ownership'
GO
