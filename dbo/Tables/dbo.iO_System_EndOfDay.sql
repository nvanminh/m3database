CREATE TABLE [dbo].[iO_System_EndOfDay]
(
[SYSeod_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSeod_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSeod_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSeod_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSeod_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSeod_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSeod_IDUser] [int] NULL,
[SYSeod_Type] [int] NULL,
[SYSeod_Action] [int] NULL,
[SYSeod_RunDate_Last] [datetime] NULL,
[SYSeod_RunDate_Next] [datetime] NULL,
[SYSeod_ProcessDate_Last] [datetime] NULL,
[SYSeod_ProcessDate_Next] [datetime] NULL,
[SYSeod_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSeod_Period_Start] [datetime] NULL,
[SYSeod_Period_End] [datetime] NULL,
[SYSeod_DDDate] [datetime] NULL,
[Syseod_DCDate] [datetime] NULL,
[SYSeod_IDLink_Key] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_EndOfDay] ADD CONSTRAINT [PK_iO_System_EndOfDay] PRIMARY KEY CLUSTERED  ([SYSeod_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_EndOfDay', 'COLUMN', N'SYSeod_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_EndOfDay', 'COLUMN', N'SYSeod_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_EndOfDay', 'COLUMN', N'SYSeod_Ownership'
GO
