CREATE TABLE [dbo].[iO_DataStorage_CLBReport]
(
[DSC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSC_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSC_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[DSC_LoanNumber] [bigint] NULL,
[DSC_IDLink_PrinBorr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSC_ClientNumber] [bigint] NULL,
[DSC_ClientName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSC_Status] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSC_SettlementDate] [datetime] NULL,
[DSC_Period] [int] NULL,
[DSC_CreditAmount] [float] NULL,
[DSC_ReceivedPayment] [float] NULL,
[DSC_SchedulePrincipal] [float] NULL,
[DSC_PrincipalBalance] [float] NULL,
[DSC_Arrears] [float] NULL,
[DSC_DateOfReport] [datetime] NULL,
[DSC_BatchID] [int] NULL,
[DSC_BatchDate] [datetime] NULL,
[DSC_StatusDateEnter] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DataStorage_CLBReport] ADD CONSTRAINT [PK_iO_DataStorage_CLBReport] PRIMARY KEY CLUSTERED  ([DSC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DataStorage_CLBReport', 'COLUMN', N'DSC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DataStorage_CLBReport', 'COLUMN', N'DSC_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DataStorage_CLBReport', 'COLUMN', N'DSC_Ownership'
GO
