CREATE TABLE [dbo].[iO_DataStorage_SalesReport]
(
[DSS_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSS_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSS_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[DSS_LoanNumber] [bigint] NULL,
[DSS_IDLink_PrinBorr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_IDLink_Broker] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_ClientNumber] [bigint] NULL,
[DSS_ClientName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_StateInAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_ApprovalDate] [datetime] NULL,
[DSS_SettlementDate] [datetime] NULL,
[DSS_Status] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_LoanPurpose] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_BrokerName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_RepaymentTotal] [float] NULL,
[DSS_CashOut] [float] NULL,
[DSS_Insurance] [float] NULL,
[DSS_ApplicationFees] [float] NULL,
[DSS_Brokerage] [float] NULL,
[DSS_TotalInterest] [float] NULL,
[DSS_MonthlyServiceFee] [float] NULL,
[DSS_Security] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_Type] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSS_SecuredLoan] [bit] NULL,
[DSS_ProductType] [int] NULL,
[DSS_SettlementOfficer] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DataStorage_SalesReport] ADD CONSTRAINT [PK_iO_DataStorage_SalesReport] PRIMARY KEY CLUSTERED  ([DSS_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-110721_RMR] ON [dbo].[iO_DataStorage_SalesReport] ([DSS_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DataStorage_SalesReport', 'COLUMN', N'DSS_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DataStorage_SalesReport', 'COLUMN', N'DSS_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DataStorage_SalesReport', 'COLUMN', N'DSS_Ownership'
GO
