CREATE TABLE [dbo].[iO_Control_ProductTask]
(
[XRTk_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTk_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTk_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTk_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTk_IDLink_XSCc] [int] NULL,
[XRTk_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTk_IDLink_XTKM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTk_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTk_IDUser] [int] NULL,
[XRTk_Type] [int] NULL,
[XRTk_SecurityValue] [int] NULL,
[XRTk_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTk_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductTask] ADD CONSTRAINT [PK_iO_Control_FeatureTask] PRIMARY KEY CLUSTERED  ([XRTk_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductTask', 'COLUMN', N'XRTk_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductTask', 'COLUMN', N'XRTk_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductTask', 'COLUMN', N'XRTk_Ownership'
GO
