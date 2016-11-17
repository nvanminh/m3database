CREATE TABLE [dbo].[iO_System_Audit]
(
[SYSad_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSad_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSad_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSad_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSad_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSad_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSad_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSad_IDLink_NMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSad_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSad_Type] [int] NULL,
[SYSad_IDUser] [int] NULL,
[SYSad_Action] [int] NULL,
[SYSad_Date] [datetime] NULL,
[SYSad_DataOld] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSad_DataNew] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSad_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_Audit] ADD CONSTRAINT [PK_iO_System_Audit] PRIMARY KEY CLUSTERED  ([SYSad_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_System_Audit] ON [dbo].[iO_System_Audit] ([SYSad_IDLink_Code], [SYSad_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_Audit', 'COLUMN', N'SYSad_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_Audit', 'COLUMN', N'SYSad_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_Audit', 'COLUMN', N'SYSad_Ownership'
GO
