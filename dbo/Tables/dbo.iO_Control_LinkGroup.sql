CREATE TABLE [dbo].[iO_Control_LinkGroup]
(
[XLG_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XLG_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLG_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLG_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLG_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLG_IDLink_Account] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLG_IDLink_Client] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLG_Type] [int] NULL,
[XLG_IDUser] [int] NULL,
[XLG_SecurityValue] [int] NULL,
[XLG_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLG_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_LinkGroup] ADD CONSTRAINT [PK_iO_Control_LinkGroup] PRIMARY KEY CLUSTERED  ([XLG_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_LinkGroup] ON [dbo].[iO_Control_LinkGroup] ([XLG_IDLink_XLK]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LinkGroup', 'COLUMN', N'XLG_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LinkGroup', 'COLUMN', N'XLG_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LinkGroup', 'COLUMN', N'XLG_Ownership'
GO
