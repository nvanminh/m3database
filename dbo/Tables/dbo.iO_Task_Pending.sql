CREATE TABLE [dbo].[iO_Task_Pending]
(
[KPD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KPD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KPD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDLink_Key] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDLink_XTKM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[KPD_IDUser] [int] NULL,
[KPD_Type] [int] NULL,
[KPD_ProcessOrder] [int] NULL,
[KPD_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_DateStart] [datetime] NULL,
[KPD_DateEnd] [datetime] NULL,
[KPD_DateNext] [datetime] NULL,
[KPD_DatePrev] [datetime] NULL,
[KPD_DayStart] [int] NULL,
[KPD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_SeqNo] [int] NULL,
[KPD_IDLink_CBD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_Data] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KPD_IDlink_Class] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Task_Pending] ADD CONSTRAINT [PK_iO_Task_Pending] PRIMARY KEY CLUSTERED  ([KPD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-182145_Date_End] ON [dbo].[iO_Task_Pending] ([KPD_DateEnd]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iO_Task_Pending_NexDay] ON [dbo].[iO_Task_Pending] ([KPD_DateNext]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Task_Pending] ON [dbo].[iO_Task_Pending] ([KPD_IDLink_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-182117_XTKM] ON [dbo].[iO_Task_Pending] ([KPD_IDLink_XTKM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_Pending', 'COLUMN', N'KPD_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Task_Pending', 'COLUMN', N'KPD_Ownership'
GO
