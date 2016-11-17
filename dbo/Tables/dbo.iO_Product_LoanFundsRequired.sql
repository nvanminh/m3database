CREATE TABLE [dbo].[iO_Product_LoanFundsRequired]
(
[RLFr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLFr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLFr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFr_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLFr_Purchase] [float] NULL,
[RLFr_Land] [float] NULL,
[RLFr_DischargeDebt] [float] NULL,
[RLFr_Legals] [float] NULL,
[RLFr_StampDutyPurchase] [float] NULL,
[RLFr_StampDutyMortgage] [float] NULL,
[RLFr_ApplicationFee] [float] NULL,
[RLFr_LMI] [float] NULL,
[RLFr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLFr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RLFr_Type] [int] NULL,
[RLFr_IDUser] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanFundsRequired] ADD CONSTRAINT [PK_iO_Product_LoanFundsRequired] PRIMARY KEY CLUSTERED  ([RLFr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFundsRequired', 'COLUMN', N'RLFr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFundsRequired', 'COLUMN', N'RLFr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_LoanFundsRequired', 'COLUMN', N'RLFr_Ownership'
GO
