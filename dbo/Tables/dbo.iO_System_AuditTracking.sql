CREATE TABLE [dbo].[iO_System_AuditTracking]
(
[SYSau_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSau_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSau_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSau_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSau_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSau_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSau_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSau_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSau_Type] [int] NULL,
[SYSau_IDUser] [int] NULL,
[SYSau_Action] [int] NULL,
[SYSau_Date] [datetime] NULL,
[SYSau_DataOld] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSau_DataNew] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSau_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSau_IDLink_SYSad] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSau_IDLink_NMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_AuditTracking] ADD CONSTRAINT [PK_iO_System_AuditTracking] PRIMARY KEY CLUSTERED  ([SYSau_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_AuditTracking', 'COLUMN', N'SYSau_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_AuditTracking', 'COLUMN', N'SYSau_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_AuditTracking', 'COLUMN', N'SYSau_Ownership'
GO
