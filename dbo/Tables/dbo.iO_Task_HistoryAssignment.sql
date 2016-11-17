CREATE TABLE [dbo].[iO_Task_HistoryAssignment]
(
[KMH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KMH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KMH_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMH_IDLink_KMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMH_AssignmentTypeName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMH_AssignedToName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KMH_Date] [datetime] NULL,
[KMH_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Task_HistoryAssignment] ADD CONSTRAINT [PK_iO_Task_HistoryAssignment] PRIMARY KEY CLUSTERED  ([KMH_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_HistoryAssignment', 'COLUMN', N'KMH_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_HistoryAssignment', 'COLUMN', N'KMH_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_HistoryAssignment', 'COLUMN', N'KMH_Ownership'
GO
