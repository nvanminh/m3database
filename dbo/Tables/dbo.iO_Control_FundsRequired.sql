CREATE TABLE [dbo].[iO_Control_FundsRequired]
(
[XFUr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFUr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFUr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFUr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFUr_IDLink_XSCc] [int] NULL,
[XFUr_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFUr_Type] [int] NULL,
[XFUr_IDUser] [int] NULL,
[XFUr_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFUr_SecurityValue] [int] NULL,
[XFUr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFUr_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_FundsRequired] ADD CONSTRAINT [PK_iO_Control_FundsRequired] PRIMARY KEY CLUSTERED  ([XFUr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FundsRequired', 'COLUMN', N'XFUr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FundsRequired', 'COLUMN', N'XFUr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_FundsRequired', 'COLUMN', N'XFUr_Ownership'
GO
