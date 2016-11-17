CREATE TABLE [dbo].[iO_System_ValidationSet]
(
[SYSvs_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSvs_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvs_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvs_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvs_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSvs_Type] [int] NULL,
[SYSvs_IDUser] [int] NULL,
[SYSvs_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvs_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_ValidationSet] ADD CONSTRAINT [PK_iO_System_ValidationSet] PRIMARY KEY CLUSTERED  ([SYSvs_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_ValidationSet', 'COLUMN', N'SYSvs_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_ValidationSet', 'COLUMN', N'SYSvs_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_ValidationSet', 'COLUMN', N'SYSvs_Ownership'
GO
