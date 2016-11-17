CREATE TABLE [dbo].[iO_Control_SystemDocument]
(
[XSYSdoc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSdoc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSdoc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSdoc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSdoc_Type] [int] NULL,
[XSYSdoc_IDUser] [int] NULL,
[XSYSdoc_Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSdoc_DB_Master] [bit] NULL,
[XSYSdoc_DB_Online] [bit] NULL,
[XSYSdoc_DB_DateStart] [datetime] NULL,
[XSYSdoc_DB_DateEnd] [datetime] NULL,
[XSYSdoc_SecurityValue] [int] NULL,
[XSYSdoc_Properties] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSdoc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemDocument] ADD CONSTRAINT [PK_iO_Control_SystemDocument] PRIMARY KEY CLUSTERED  ([XSYSdoc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemDocument', 'COLUMN', N'XSYSdoc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemDocument', 'COLUMN', N'XSYSdoc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemDocument', 'COLUMN', N'XSYSdoc_Ownership'
GO
