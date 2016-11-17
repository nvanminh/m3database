CREATE TABLE [dbo].[iO_Control_TransactionClassification]
(
[XTRMcl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRMcl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRMcl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMcl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMcl_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMcl_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMcl_Type] [int] NULL,
[XTRMcl_IDUser] [int] NULL,
[XTRMcl_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMcl_SecurityValue] [int] NULL,
[XTRMcl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TransactionClassification] ADD CONSTRAINT [PK_iO_Control_TransactionClassification] PRIMARY KEY CLUSTERED  ([XTRMcl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_TransactionClassification_1] ON [dbo].[iO_Control_TransactionClassification] ([XTRMcl_IDLink_XLK]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_TransactionClassification] ON [dbo].[iO_Control_TransactionClassification] ([XTRMcl_IDLink_XTRM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionClassification', 'COLUMN', N'XTRMcl_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionClassification', 'COLUMN', N'XTRMcl_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionClassification', 'COLUMN', N'XTRMcl_Ownership'
GO
