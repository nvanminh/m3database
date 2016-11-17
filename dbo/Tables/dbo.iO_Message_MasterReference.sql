CREATE TABLE [dbo].[iO_Message_MasterReference]
(
[MMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_Type] [int] NULL,
[MMR_IDUser] [int] NULL,
[MMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[MMR_DateEnter] [datetime] NULL,
[MMR_DateLeave] [datetime] NULL,
[MMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_IDLink_XMU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_Date] [datetime] NULL,
[MMR_EmailBody] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_From] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MMR_Subject] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Message_MasterReference', 'COLUMN', N'MMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Message_MasterReference', 'COLUMN', N'MMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Message_MasterReference', 'COLUMN', N'MMR_Ownership'
GO
