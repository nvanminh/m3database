CREATE TABLE [dbo].[iO_Product_TransactionMDT]
(
[RTM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_XTrT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_XTYp] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_RSE] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RTM_Visible] [bit] NULL,
[RTM_Status] [int] NULL,
[RTM_DateC] [datetime] NULL,
[RTM_DateE] [datetime] NULL,
[RTM_Value] [float] NULL,
[RTM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_TransactionMDT] ADD CONSTRAINT [PK_iO_Product_TransactionMain] PRIMARY KEY CLUSTERED  ([RTM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionMDT', 'COLUMN', N'RTM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionMDT', 'COLUMN', N'RTM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionMDT', 'COLUMN', N'RTM_Ownership'
GO
