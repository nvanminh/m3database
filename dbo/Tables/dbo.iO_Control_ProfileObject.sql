CREATE TABLE [dbo].[iO_Control_ProfileObject]
(
[XPFo_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPFo_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPFo_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFo_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFo_IDLink_XPF] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFo_IDLink_Object] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFo_IDUser] [int] NULL,
[XPFo_Type] [int] NULL,
[XPFo_Name] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFo_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFo_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XPFo_PermissionLevel] [int] NULL,
[XPFo_PermissionOverRide] [int] NULL,
[XPFo_DisplayName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProfileObject] ADD CONSTRAINT [PK_iO_Control_ProfileObject] PRIMARY KEY CLUSTERED  ([XPFo_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ProfileObject_01] ON [dbo].[iO_Control_ProfileObject] ([XPFo_IDLink_XPF], [XPFo_IDLink_Code], [XPFo_Type]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProfileObject', 'COLUMN', N'XPFo_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProfileObject', 'COLUMN', N'XPFo_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProfileObject', 'COLUMN', N'XPFo_Ownership'
GO
