CREATE TABLE [dbo].[iO_Product_SelectionMDT]
(
[RCPlst_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPlst_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_IDLink_Aggregator] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_IDLink_Broker] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_IDLink_LVRBand] [float] NULL,
[RCPlst_IDLink_ImpairmentLevel] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCPlst_Type] [int] NULL,
[RCPlst_IDUser] [int] NULL,
[RCPlst_MissedPayments] [int] NULL,
[RCPlst_LoanAmount] [float] NULL,
[RCPlst_LoanTerm] [int] NULL,
[RCPlst_InterestType] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_InterestTerm] [int] NULL,
[RCPlst_TotalSecurity] [float] NULL,
[RCPlst_LMI] [int] NULL,
[RCPlst_Purchase] [int] NULL,
[RCPlst_Mortgage] [int] NULL,
[RCPlst_GMACFees] [int] NULL,
[RCPlst_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_IDBroker] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_IDAggregator] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCPlst_FeeCapitalised_1] [float] NULL,
[RCPlst_FeeCapitalised_2] [float] NULL,
[RCPlst_FeeCapitalised_3] [float] NULL,
[RCPlst_FeeCapitalised_4] [float] NULL,
[RCPlst_PurposeOfFunds] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SelectionMDT] ADD CONSTRAINT [PK_iO_Product_SelectionMDT] PRIMARY KEY CLUSTERED  ([RCPlst_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SelectionMDT', 'COLUMN', N'RCPlst_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SelectionMDT', 'COLUMN', N'RCPlst_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SelectionMDT', 'COLUMN', N'RCPlst_Ownership'
GO
