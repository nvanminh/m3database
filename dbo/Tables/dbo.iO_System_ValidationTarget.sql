CREATE TABLE [dbo].[iO_System_ValidationTarget]
(
[SYSvt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSvt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvt_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSvt_Type] [int] NULL,
[SYSvt_IDUser] [int] NULL,
[SYSvt_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvt_IDLink_SYSvs] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvt_IDLink_XFDM_Condition] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvt_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvt_IDLink_DataShare] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSvt_IDLink_XFDM_Loop] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_ValidationTarget] ADD CONSTRAINT [PK_iO_System_ValidationTarget] PRIMARY KEY CLUSTERED  ([SYSvt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_ValidationTarget', 'COLUMN', N'SYSvt_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_ValidationTarget', 'COLUMN', N'SYSvt_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_ValidationTarget', 'COLUMN', N'SYSvt_Ownership'
GO
