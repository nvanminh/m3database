CREATE TABLE [dbo].[iO_Security_Feature]
(
[SMRfa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SMRfa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMRfa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMRfa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMRfa_IDLink_SMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMRfa_IDLink_XFA] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMRfa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SMRfa_Type] [int] NULL,
[SMRfa_IDUser] [int] NULL,
[SMRfa_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMRfa_SecurityValue] [int] NULL,
[SMRfa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Security_Feature] ADD CONSTRAINT [PK_iO_Security_Feature] PRIMARY KEY CLUSTERED  ([SMRfa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Security_Feature] ON [dbo].[iO_Security_Feature] ([SMRfa_IDLink_SMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_Feature', 'COLUMN', N'SMRfa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_Feature', 'COLUMN', N'SMRfa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_Feature', 'COLUMN', N'SMRfa_Ownership'
GO
