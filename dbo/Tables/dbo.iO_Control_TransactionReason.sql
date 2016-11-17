CREATE TABLE [dbo].[iO_Control_TransactionReason]
(
[XTRR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRR_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRR_IDUser] [int] NULL,
[XTRR_IDLink_XSCc] [int] NULL,
[XTRR_SecurityValue] [int] NULL,
[XTRR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TransactionReason] ADD CONSTRAINT [PK_iO_Control_TransactionReason] PRIMARY KEY CLUSTERED  ([XTRR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionReason', 'COLUMN', N'XTRR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionReason', 'COLUMN', N'XTRR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransactionReason', 'COLUMN', N'XTRR_Ownership'
GO
