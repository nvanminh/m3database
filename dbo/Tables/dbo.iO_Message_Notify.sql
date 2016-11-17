CREATE TABLE [dbo].[iO_Message_Notify]
(
[MNF_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MNF_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNF_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNF_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNF_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNF_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNF_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[MNF_Type] [int] NULL,
[MNF_IDUser] [int] NULL,
[MNF_Date] [datetime] NULL,
[MNF_Title] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNF_Message] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MNF_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Message_Notify] ADD CONSTRAINT [PK_iO_Message_Notify] PRIMARY KEY CLUSTERED  ([MNF_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Message_Notify] ON [dbo].[iO_Message_Notify] ([MNF_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Message_Notify', 'COLUMN', N'MNF_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Message_Notify', 'COLUMN', N'MNF_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Message_Notify', 'COLUMN', N'MNF_Ownership'
GO
