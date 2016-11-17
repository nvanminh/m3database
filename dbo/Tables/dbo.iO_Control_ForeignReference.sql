CREATE TABLE [dbo].[iO_Control_ForeignReference]
(
[XFK_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFK_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XFK_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFK_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFK_IDLink_XSCc] [int] NULL,
[XFK_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFK_Type] [int] NULL,
[XFK_IDUser] [int] NULL,
[XFK_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFK_SecurityValue] [int] NULL,
[XFK_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XFK_idarmclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ForeignReference] ADD CONSTRAINT [PK_iO_Control_ForeignReference] PRIMARY KEY CLUSTERED  ([XFK_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ForeignReference] ON [dbo].[iO_Control_ForeignReference] ([XFK_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ForeignReference', 'COLUMN', N'XFK_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ForeignReference', 'COLUMN', N'XFK_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ForeignReference', 'COLUMN', N'XFK_Ownership'
GO
