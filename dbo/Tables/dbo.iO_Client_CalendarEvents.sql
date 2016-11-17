CREATE TABLE [dbo].[iO_Client_CalendarEvents]
(
[CCE_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCE_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCE_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_IDUser] [int] NULL,
[CCE_Type] [int] NULL,
[CCE_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CCE_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_IDLink_Client] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_IDLink_URL] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_IDLink_CAD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_Status] [int] NULL,
[CCE_Title] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_Location] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_AllDay] [bit] NULL,
[CCE_DateStart] [datetime] NULL,
[CCE_DateEnd] [datetime] NULL,
[CCE_ClassName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_Editable] [bit] NULL,
[CCE_SourceEvent] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_Color] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_BackgroundColor] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_BorderColor] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_TextColor] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_IDLink_KMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_IDLink_KPD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_IDLink_Key] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_Name] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_Organizer] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_AttendeesRequired] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_AttendeesOptional] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CCE_Resources] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_CalendarEvents] ADD CONSTRAINT [PK_iO_Client_CalendarEvents] PRIMARY KEY CLUSTERED  ([CCE_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CalendarEvents', 'COLUMN', N'CCE_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CalendarEvents', 'COLUMN', N'CCE_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_CalendarEvents', 'COLUMN', N'CCE_Ownership'
GO
