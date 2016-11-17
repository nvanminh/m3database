CREATE TABLE [dbo].[iO_Task_Object]
(
[KOB_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KOB_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KOB_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KOB_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KOB_IDLink_Object] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KOB_IDLink_Code] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KOB_IDLink_Link] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KOB_IDLink_Association] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KOB_When] [int] NULL,
[KOB_SeqNo] [int] NULL,
[KOB_Type] [int] NULL,
[KOB_AfterEnter] [int] NULL,
[KOB_ProcessType] [int] NULL,
[KOB_ProcessStopOverRide] [int] NULL,
[KOB_ControlName] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KOB_CommandLine] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KOB_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Task_Object] ADD CONSTRAINT [PK_iO_Task_Object] PRIMARY KEY CLUSTERED  ([KOB_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Task_Object] ON [dbo].[iO_Task_Object] ([KOB_IDLink_Object]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_Object', 'COLUMN', N'KOB_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_Object', 'COLUMN', N'KOB_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_Object', 'COLUMN', N'KOB_Ownership'
GO
