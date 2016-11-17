CREATE TABLE [dbo].[iO_Control_SystemLanguage]
(
[XSYSlt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSlt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlt_Type] [int] NULL,
[XSYSlt_IDUser] [int] NULL,
[XSYSlt_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlt_Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSlt_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemLanguage] ADD CONSTRAINT [PK_iO_Control_SystemLanguage] PRIMARY KEY CLUSTERED  ([XSYSlt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemLanguage', 'COLUMN', N'XSYSlt_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemLanguage', 'COLUMN', N'XSYSlt_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemLanguage', 'COLUMN', N'XSYSlt_Ownership'
GO
