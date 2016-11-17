CREATE TABLE [dbo].[iO_Control_SystemStreetTypes]
(
[XSYSst_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSst_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSst_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSst_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSst_Type] [int] NULL,
[XSYSst_IDUser] [int] NULL,
[XSYSst_Code] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSst_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSst_IDARMclassic] [int] NULL,
[XSYSst_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSst_VEDA] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemStreetTypes] ADD CONSTRAINT [PK_iO_Control_SystemStreetTypes] PRIMARY KEY CLUSTERED  ([XSYSst_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemStreetTypes', 'COLUMN', N'XSYSst_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemStreetTypes', 'COLUMN', N'XSYSst_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemStreetTypes', 'COLUMN', N'XSYSst_Ownership'
GO
