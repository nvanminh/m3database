CREATE TABLE [dbo].[iO_System_DatabaseProperties]
(
[SYSsp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSsp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSsp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSsp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSsp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSsp_IDUser] [int] NULL,
[SYSsp_Type] [int] NULL,
[SYSsp_IDLink_SYSdb] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSsp_PropertyName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSsp_PropertyValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSsp_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_DatabaseProperties] ADD CONSTRAINT [PK_iO_System_DatabaseProperties] PRIMARY KEY CLUSTERED  ([SYSsp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_DatabaseProperties', 'COLUMN', N'SYSsp_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_DatabaseProperties', 'COLUMN', N'SYSsp_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_DatabaseProperties', 'COLUMN', N'SYSsp_Ownership'
GO
