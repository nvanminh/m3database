CREATE TABLE [dbo].[iO_Client_CalendarResources]
(
[CCR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_IDLink_CCE] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_IDLink_XCR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CCR_Type] [int] NULL,
[CCR_IDUser] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CalendarResources] ADD CONSTRAINT [PK_iO_Client_CalendarResources] PRIMARY KEY CLUSTERED  ([CCR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CalendarResources', 'COLUMN', N'CCR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CalendarResources', 'COLUMN', N'CCR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CalendarResources', 'COLUMN', N'CCR_Ownership'
GO
