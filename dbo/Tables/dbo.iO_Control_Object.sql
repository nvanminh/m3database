CREATE TABLE [dbo].[iO_Control_Object]
(
[XOB_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XOB_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XOB_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XOB_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XOB_IDLink_Object] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XOB_IDLink_Code] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XOB_IDLink_Link] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XOB_IDLink_Association] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XOB_When] [int] NULL,
[XOB_SeqNo] [int] NULL,
[XOB_Type] [int] NULL,
[XOB_AfterEnter] [int] NULL,
[XOB_ProcessType] [int] NULL,
[XOB_ProcessStopOverRide] [int] NULL,
[XOB_ControlName] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XOB_CommandLine] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XOB_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_Object] ADD CONSTRAINT [PK_iO_Control_Object] PRIMARY KEY CLUSTERED  ([XOB_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_Object] ON [dbo].[iO_Control_Object] ([XOB_IDLink_Object]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Object', 'COLUMN', N'XOB_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Object', 'COLUMN', N'XOB_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Object', 'COLUMN', N'XOB_Ownership'
GO
