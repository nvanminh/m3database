CREATE TABLE [dbo].[iO_Task_TimeSheet]
(
[KTS_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KTS_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KTS_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KTS_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KTS_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KTS_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KTS_IDLink_KMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KTS_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[KTS_IDUser] [int] NULL,
[KTS_Type] [int] NULL,
[KTS_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KTS_Date] [datetime] NULL,
[KTS_Value] [float] NULL,
[KTS_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Task_TimeSheet] ON [dbo].[iO_Task_TimeSheet] ([KTS_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Task_TimeSheet_1] ON [dbo].[iO_Task_TimeSheet] ([KTS_IDLink_KMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_TimeSheet', 'COLUMN', N'KTS_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_TimeSheet', 'COLUMN', N'KTS_Ownership'
GO
