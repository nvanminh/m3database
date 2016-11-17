CREATE TABLE [dbo].[iO_System_MessageTransfer]
(
[SYStm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYStm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYStm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYStm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYStm_IDLink_Batch] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYStm_IDLink_XTRF] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYStm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYStm_Type] [int] NULL,
[SYStm_IDUser] [int] NULL,
[SYStm_Timestamp] [datetime] NULL,
[SYStm_BeginState] [varchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYStm_EndState] [varchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYStm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_MessageTransfer] ADD CONSTRAINT [PK_iO_System_TransferMessage] PRIMARY KEY CLUSTERED  ([SYStm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_MessageTransfer', 'COLUMN', N'SYStm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_MessageTransfer', 'COLUMN', N'SYStm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_MessageTransfer', 'COLUMN', N'SYStm_Ownership'
GO
