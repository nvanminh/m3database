CREATE TABLE [dbo].[iO_Control_CalendarReference]
(
[XCA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCA_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCA_IDLink_XSCc] [int] NULL,
[XCA_IDLink_Type] [int] NULL,
[XCA_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCA_Type] [int] NULL,
[XCA_IDUser] [int] NULL,
[XCA_DateType] [int] NULL,
[XCA_Date] [datetime] NULL,
[XCA_Day] [int] NULL,
[XCA_Month] [int] NULL,
[XCA_WeekDay_Monday] [bit] NULL,
[XCA_WeekDay_Tuesday] [bit] NULL,
[XCA_WeekDay_Wednesday] [bit] NULL,
[XCA_WeekDay_Thursday] [bit] NULL,
[XCA_WeekDay_Friday] [bit] NULL,
[XCA_WeekDay_Saturday] [bit] NULL,
[XCA_WeekDay_Sunday] [bit] NULL,
[XCA_SecurityValue] [int] NULL,
[XCA_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_CalendarReference] ADD CONSTRAINT [PK_iO_Control_CalendarReference] PRIMARY KEY CLUSTERED  ([XCA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_CalendarReference', 'COLUMN', N'XCA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_CalendarReference', 'COLUMN', N'XCA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_CalendarReference', 'COLUMN', N'XCA_Ownership'
GO
