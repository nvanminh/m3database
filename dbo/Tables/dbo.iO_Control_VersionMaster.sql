CREATE TABLE [dbo].[iO_Control_VersionMaster]
(
[XVM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XVM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_Type] [int] NULL,
[XVM_IDUser] [int] NULL,
[XVM_VersionLocked] [bit] NULL,
[XVM_ReleaseNotes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XVM_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_VersionMaster] ADD CONSTRAINT [PK_iO_Control_VersionMaster] PRIMARY KEY CLUSTERED  ([XVM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_VersionMaster', 'COLUMN', N'XVM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_VersionMaster', 'COLUMN', N'XVM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_VersionMaster', 'COLUMN', N'XVM_Ownership'
GO
