CREATE TABLE [dbo].[iO_Control_TransactionGL]
(
[XTRMgl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRMgl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRMgl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMgl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMgl_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMgl_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMgl_Type] [int] NULL,
[XTRMgl_IDUser] [int] NULL,
[XTRMgl_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMgl_CRAccount] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMgl_DBAccount] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRMgl_SecurityValue] [int] NULL,
[XTRMgl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TransactionGL] ADD CONSTRAINT [PK_iO_Control_TransactionGL] PRIMARY KEY CLUSTERED  ([XTRMgl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_TransactionGL] ON [dbo].[iO_Control_TransactionGL] ([XTRMgl_IDLink_XTRM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionGL', 'COLUMN', N'XTRMgl_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionGL', 'COLUMN', N'XTRMgl_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionGL', 'COLUMN', N'XTRMgl_Ownership'
GO
