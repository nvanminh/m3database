CREATE TABLE [dbo].[iO_Control_ClassProject]
(
[XPJ_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPJ_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPJ_IDLink_EODSQL] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPJ_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPJ_Type] [int] NULL,
[XPJ_IDUser] [int] NULL,
[XPJ_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPJ_SecurityValue] [int] NULL,
[XPJ_ControlBar_Name] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPJ_ControlBar_Add] [int] NULL,
[XPJ_Image] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPJ_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPJ_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClassProject] ADD CONSTRAINT [PK_iO_Control_ClassProject] PRIMARY KEY CLUSTERED  ([XPJ_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassProject', 'COLUMN', N'XPJ_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassProject', 'COLUMN', N'XPJ_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassProject', 'COLUMN', N'XPJ_Ownership'
GO
