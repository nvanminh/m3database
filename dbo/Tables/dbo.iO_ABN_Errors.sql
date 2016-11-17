CREATE TABLE [dbo].[iO_ABN_Errors]
(
[ABme_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABme_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABme_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABme_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABme_IDLink_ABmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABme_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABme_TimeOfError] [datetime] NULL,
[ABme_TypeOfError] [int] NULL,
[ABme_ErrorCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABme_ErrorDesc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABme_ErrorStageCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABme_ErrorStageDesc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_Errors] ADD CONSTRAINT [PK_iO_ABN_Errors] PRIMARY KEY CLUSTERED  ([ABme_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_Errors', 'COLUMN', N'ABme_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_Errors', 'COLUMN', N'ABme_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_Errors', 'COLUMN', N'ABme_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_Errors', 'COLUMN', N'ABme_Ownership'
GO
