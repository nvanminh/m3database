CREATE TABLE [dbo].[iO_FDI_OmniMaster]
(
[FOm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FOm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOm_Type] [int] NULL,
[FOm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[FOm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOm_IDLink_Batch] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOm_DateRun] [datetime] NULL,
[FOm_FileType] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOm_RecFormat] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOm_InstitShortName] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOm_InstitPrefixNo] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOm_FileFormat] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOm_ExtractDate] [datetime] NULL,
[FOm_FileDate] [datetime] NULL,
[FOm_Comments] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOm_TrailerRecCount] [int] NULL,
[FOm_TrailerTotalAmt] [float] NULL,
[FOm_ErrorCode] [int] NULL,
[FOm_ErrorDesc] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_FDI_OmniMaster] ADD CONSTRAINT [PK_iO_FDI_OmniMaster] PRIMARY KEY CLUSTERED  ([FOm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_FDI_OmniMaster', 'COLUMN', N'FOm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_FDI_OmniMaster', 'COLUMN', N'FOm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_FDI_OmniMaster', 'COLUMN', N'FOm_Ownership'
GO
