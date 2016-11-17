CREATE TABLE [dbo].[iO_Control_MessageMaster]
(
[XMU_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XMU_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_IDLink_XSCc] [int] NULL,
[XMU_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_Type] [int] NULL,
[XMU_IDUser] [int] NULL,
[XMU_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_SecurityValue] [int] NULL,
[XMU_KPIDays] [int] NULL,
[XMU_StatTrack] [bit] NULL,
[XMU_StatAve] [float] NULL,
[XMU_StatMin] [float] NULL,
[XMU_StatMax] [float] NULL,
[XMU_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_BodyType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_Images] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_IDLink_CMR_From] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_Subject] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_IDLink_Associations] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_IDLink_Documents] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XMU_SendType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_MessageMaster] ADD CONSTRAINT [io_control_messagemaster_PrimaryKey] PRIMARY KEY CLUSTERED  ([XMU_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_MessageMaster', 'COLUMN', N'XMU_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_MessageMaster', 'COLUMN', N'XMU_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_MessageMaster', 'COLUMN', N'XMU_Ownership'
GO
