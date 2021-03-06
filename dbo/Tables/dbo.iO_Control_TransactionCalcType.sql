CREATE TABLE [dbo].[iO_Control_TransactionCalcType]
(
[XTRC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRC_IDUser] [int] NULL,
[XTRC_B2PKeyword] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRC_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TransactionCalcType] ADD CONSTRAINT [PK_iO_Control_TransactionCalcType] PRIMARY KEY CLUSTERED  ([XTRC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionCalcType', 'COLUMN', N'XTRC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionCalcType', 'COLUMN', N'XTRC_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionCalcType', 'COLUMN', N'XTRC_Ownership'
GO
