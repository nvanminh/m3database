CREATE TABLE [dbo].[iO_B2P_Errors]
(
[PEme_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PEme_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEme_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEme_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEme_IDLink_PEmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEme_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[PEme_TimeOfError] [datetime] NULL,
[PEme_TypeOfError] [int] NULL,
[PEme_ErrorCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEme_ErrorDesc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEme_ErrorStageCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEme_ErrorStageDesc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEme_ContextID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEme_ContextTable] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PEme_ContextColumn] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2P_Errors] ADD CONSTRAINT [PK_iO_B2P_Errors] PRIMARY KEY CLUSTERED  ([PEme_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_Errors', 'COLUMN', N'PEme_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_Errors', 'COLUMN', N'PEme_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2P_Errors', 'COLUMN', N'PEme_Ownership'
GO
